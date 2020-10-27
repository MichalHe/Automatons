from __future__ import annotations
from enum import Enum
from typing import (
    Set,
    Dict,
    Tuple,
    List,
    TypeVar,
    Generic,
    Optional,
    Callable,
    Union
)

from utils import (
    number_to_bit_tuple,
    carthesian_product,
    create_enumeration_state_translation_map,
)

from dataclasses import (
    dataclass,
    field
)

from inequations_data import (
    Inequality
)

from transitions import (
    Transitions,
    insert_into_transition_fn,
    get_transition_target,
    unite_transitions,
    translate_transition_fn_states,
    do_projection,
    calculate_variable_bit_position,
    make_transitions_copy,
    unite_alphabets,
    extend_transitions_to_new_alphabet_symbols
)
import functools


AutomatonState = TypeVar('AutomatonState')
S = TypeVar('S')

LSBF_AlphabetSymbol = Tuple[Union[int, str], ...]

TransitionFn = Dict[AutomatonState,
                    Dict[
                        LSBF_AlphabetSymbol,
                        Set[AutomatonState]
                    ]]


AutomatonType = Enum('AutomatonType', 'DFA NFA')


@dataclass
class LSBF_Alphabet():
    symbols: Tuple[LSBF_AlphabetSymbol, ...]
    variable_names: Tuple[str, ...]

    @staticmethod
    def from_inequation(ineq: Inequality) -> LSBF_Alphabet:
        return LSBF_Alphabet.from_variable_names(tuple(ineq.variable_names))

    @staticmethod
    def from_variable_names(variable_names: Tuple[str, ...]) -> LSBF_Alphabet:
        letter_size = len(variable_names)
        symbols = tuple(map(
            lambda i: number_to_bit_tuple(i, tuple_size=letter_size, pad=0),
            range(2**letter_size)
        ))

        return LSBF_Alphabet(
            symbols=symbols,
            variable_names=variable_names
        )

    def new_with_variable_removed(self, removed_var: str) -> Optional[LSBF_Alphabet]:

        new_variable_names = tuple(
            filter(
                lambda variable_name: removed_var != variable_name, self.variable_names))

        if len(new_variable_names) == len(self.variable_names):
            return None  # The variable name to be removed was not present in current variable list

        new_symbols = tuple(
            map(
                number_to_bit_tuple, range(2**len(new_variable_names))))

        return LSBF_Alphabet(symbols=new_symbols, variable_names=new_variable_names)

    def get_downcaster_from_higher_dim(self, higher_alphabet: LSBF_Alphabet) -> Callable[[LSBF_AlphabetSymbol], LSBF_AlphabetSymbol]:
        # 1) compute indices for where the current variables lie within the old
        # symbols
        variable_indices = []

        processed_self_variables = 0
        for i, variable_name in enumerate(higher_alphabet.variable_names):
            if variable_name == self.variable_names[processed_self_variables]:
                variable_indices.append(i)
                processed_self_variables += 1

            if processed_self_variables == len(self.variable_names):
                break

        # 2) generate function accepts a bigger symbol, loops over it, and just
        # selects the needed variables

        def downcaster(higher_symbol: LSBF_AlphabetSymbol) -> LSBF_AlphabetSymbol:
            downcasted_letter = []
            for i in variable_indices:
                downcasted_letter.append(higher_symbol[i])
            return tuple(downcasted_letter)
        return downcaster


@dataclass
class NFA(Generic[AutomatonState]):
    alphabet:       LSBF_Alphabet
    automaton_type: AutomatonType = AutomatonType.NFA
    initial_states: Set[AutomatonState] = field(default_factory=set)
    final_states:   Set[AutomatonState] = field(default_factory=set)
    states:         Set[AutomatonState] = field(default_factory=set)
    transition_fn:  Transitions[AutomatonState] = field(default_factory=dict)

    # Debug handle to listen to any state renaming happening during
    # intersecion/union; takes (automaton_id, old_state(int, str),
    # new_state(int))
    _debug_state_rename: Optional[Callable[[int, AutomatonState, int], None]] = None

    def update_transition_fn(self,
                             from_state: AutomatonState,
                             via_symbol: LSBF_AlphabetSymbol,
                             to_state: AutomatonState
                             ):
        insert_into_transition_fn(self.transition_fn, from_state, via_symbol, to_state)

    def add_state(self, state: AutomatonState):
        self.states.add(state)

    def add_final_state(self, state: AutomatonState):
        self.final_states.add(state)

    def add_initial_state(self, state: AutomatonState):
        self.initial_states.add(state)

    def has_state_with_value(self, state: AutomatonState) -> bool:
        return state in self.states

    def has_final_state_with_value(self, value: AutomatonState) -> bool:
        return value in self.final_states

    def get_transition_target(self,
                              origin: AutomatonState,
                              via_symbol: LSBF_AlphabetSymbol
                              ) -> Tuple[AutomatonState, ...]:
        return get_transition_target(self.transition_fn, origin, via_symbol)

    def intersection(self, other: NFA[S]):
        if self.alphabet != other.alphabet:
            self.extend_to_common_alphabet(other)

        self_renamed_highest_state, self_renamed = self.rename_states()
        _, other_renamed = other.rename_states(start_from=self_renamed_highest_state)

        resulting_nfa: NFA[Tuple[int, int]] = NFA(
            alphabet=self.alphabet,
            automaton_type=AutomatonType.NFA
        )

        # Add all the initial states to the to-be-processed queue
        work_queue = carthesian_product(self_renamed.initial_states,
                                        other_renamed.initial_states)
        for initial_state in work_queue:
            resulting_nfa.add_initial_state(initial_state)

        while work_queue:
            current_state: Tuple[int, int] = work_queue.pop(0)
            resulting_nfa.add_state(current_state)

            # States in work_queue are boxed
            self_state, others_state = current_state

            # Check whether intersecti n state should be made final
            if (self_state in self_renamed.final_states and others_state in other_renamed.final_states):
                resulting_nfa.add_final_state((self_state, others_state))

            for symbol in self_renamed.alphabet.symbols:
                self_targets = self_renamed.get_transition_target(self_state, symbol)
                other_targets = other_renamed.get_transition_target(others_state, symbol)

                if self_targets is None or other_targets is None:
                    continue

                for new_intersect_state in carthesian_product(self_targets, other_targets):
                    if new_intersect_state not in resulting_nfa.states:
                        if new_intersect_state not in work_queue:
                            work_queue.append(new_intersect_state)

                    resulting_nfa.update_transition_fn(current_state, symbol, new_intersect_state)

        return resulting_nfa

    def union(self, other: NFA[S]) -> NFA[int]:
        if self.alphabet != other.alphabet:
            self.extend_to_common_alphabet(other)

        latest_state_value, self_renamed = self.rename_states()
        _, other_renamed = other.rename_states(start_from=latest_state_value)

        states = self_renamed.states.union(other_renamed.states)
        transitions = unite_transitions(self_renamed.transition_fn, other_renamed.transition_fn)
        initial_states = self_renamed.initial_states.union(other_renamed.initial_states)
        final_states = self_renamed.final_states.union(other_renamed.final_states)

        return NFA(
            alphabet=self.alphabet,
            automaton_type=AutomatonType.NFA,
            initial_states=initial_states,
            final_states=final_states,
            states=states,
            transition_fn=transitions
        )

    def extend_to_common_alphabet(self, other: NFA[S]):
        unified_variable_names = unite_alphabets(self.alphabet.variable_names, other.alphabet.variable_names)
        self.transition_fn = extend_transitions_to_new_alphabet_symbols(self.alphabet.variable_names, unified_variable_names, self.transition_fn)
        other.transition_fn = extend_transitions_to_new_alphabet_symbols(other.alphabet.variable_names, unified_variable_names, other.transition_fn)

        self.alphabet = LSBF_Alphabet.from_variable_names(unified_variable_names)
        other.alphabet = self.alphabet

    def determinize(self):
        '''Performs NFA -> DFA using the powerset construction'''
        self._rename_own_states()

        working_queue: List[Tuple[AutomatonState, ...]] = [tuple(self.initial_states)]
        _final_states_raw = self.final_states

        DFA_AutomatonState = Tuple[AutomatonState, ...]  # Alias type
        determinized_automaton: DFA[DFA_AutomatonState] = DFA(
            alphabet=self.alphabet,
            automaton_type=AutomatonType.DFA)
        determinized_automaton.add_initial_state(working_queue[0])

        while working_queue:
            unexplored_dfa_state: DFA_AutomatonState = working_queue.pop(0)

            determinized_automaton.add_state(unexplored_dfa_state)

            intersect = set(unexplored_dfa_state).intersection(_final_states_raw)
            if intersect:
                determinized_automaton.add_final_state(unexplored_dfa_state)

            for symbol in self.alphabet.symbols:
                reachable_states: List[AutomatonState] = list()
                for state in unexplored_dfa_state:
                    # Get all states reacheble from current state via symbol
                    out_states = self.get_transition_target(state, symbol)
                    if out_states:
                        reachable_states += list(out_states)

                dfa_state: DFA_AutomatonState = tuple(set(sorted(reachable_states)))

                if dfa_state and not determinized_automaton.has_state_with_value(dfa_state):
                    if dfa_state not in working_queue:
                        working_queue.append(dfa_state)

                determinized_automaton.update_transition_fn(unexplored_dfa_state, symbol, dfa_state)

        return determinized_automaton

    def _rename_own_states(self):
        debug_fn: Optional[functools.partial[None]]
        if self._debug_state_rename is not None:
            debug_fn = functools.partial(self._debug_state_rename, id(self))
        else:
            debug_fn = None

        hightest_state, state_name_translation = create_enumeration_state_translation_map(self.states, debug_fn, start_from=0)

        def translate(state: AutomatonState) -> int:
            return state_name_translation[state]

        self.states = set(map(translate, self.states))
        self.initial_states = set(map(translate, self.initial_states))
        self.final_states = set(map(translate, self.final_states))
        self.transition_fn = translate_transition_fn_states(self.transition_fn, state_name_translation)

    def do_projection(self, variable_name: str) -> Optional[NFA]:
        new_alphabet = self.alphabet.new_with_variable_removed(variable_name)
        if new_alphabet is None:
            return None

        new_nfa: NFA[AutomatonState] = NFA(
            alphabet=new_alphabet,
            automaton_type=AutomatonType.NFA,
        )

        new_nfa.states = set(self.states)
        new_nfa.initial_states = set(self.initial_states)
        new_nfa.final_states = set(self.final_states)

        bit_pos = calculate_variable_bit_position(self.alphabet.variable_names, variable_name)
        if bit_pos is None:
            raise ValueError(f'Could not find variable_name "{variable_name}" in current alphabet {self.alphabet}')
        new_nfa.transition_fn = do_projection(self.transition_fn, bit_pos)

        return new_nfa

    def rename_states(self, start_from: int = 0) -> Tuple[int, NFA[int]]:
        nfa: NFA[int] = NFA(alphabet=self.alphabet, automaton_type=self.automaton_type)

        debug_fn: Optional[functools.partial[None]]
        if self._debug_state_rename is not None:
            debug_fn = functools.partial(self._debug_state_rename, id(self))
        else:
            debug_fn = None

        hightest_state, state_name_translation = create_enumeration_state_translation_map(self.states, debug_fn, start_from=start_from)

        def translate(state: AutomatonState) -> int:
            return state_name_translation[state]

        nfa.states.update(map(translate, self.states))
        nfa.initial_states.update(map(translate, self.initial_states))
        nfa.final_states.update(map(translate, self.final_states))
        nfa.transition_fn = translate_transition_fn_states(self.transition_fn, state_name_translation)

        return (hightest_state, nfa)

    def complement(self) -> NFA:
        result: NFA[AutomatonState] = NFA(
            alphabet=self.alphabet,
            automaton_type=self.automaton_type
        )
        result.states = set(self.states)
        result.final_states = self.states.difference(self.final_states)
        result.initial_states = set(self.states)
        result.transition_fn = make_transitions_copy(self.transition_fn)

        return result


DFA = NFA
