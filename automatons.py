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

from relations_structures import Relation

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
    extend_transitions_to_new_alphabet_symbols,
    get_word_from_dfs_results,
    iterate_over_active_variables,
    make_rotate_transition_function,
    remove_all_transitions_that_contain_states,
)
import functools
import collections


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
    active_variables: Set[str]

    @staticmethod
    def from_inequation(ineq: Relation) -> LSBF_Alphabet:
        return LSBF_Alphabet.from_variable_names(tuple(ineq.variable_names))

    @staticmethod
    def from_variable_names(variable_names: Tuple[str, ...]) -> LSBF_Alphabet:
        letter_size = len(variable_names)
        symbols = tuple(map(
            lambda i: number_to_bit_tuple(i, tuple_size=letter_size, pad=0),
            range(2**letter_size)
        ))

        return LSBF_Alphabet(
            active_variables=set(variable_names),
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

            for symbol in iterate_over_active_variables(self.alphabet.variable_names, self.alphabet.active_variables):
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

                if dfa_state:
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

    def do_projection(self, variable_name: str):
        resulting_alphabet_var_count = len(self.alphabet.active_variables) - 1

        if resulting_alphabet_var_count == 0:
            # TODO: Fix this -- instead of building new automatons, reduce self
            is_sat, _ = self.is_sat()  # Check whether the language is nonempty
            self.morph_into_trivial(is_sat)

        else:
            # Cross out the projected variable
            bit_pos = calculate_variable_bit_position(self.alphabet.variable_names, variable_name)
            if bit_pos is None:
                raise ValueError(f'Could not find variable_name "{variable_name}" in current alphabet {self.alphabet}')

            self.transition_fn = do_projection(self.transition_fn, bit_pos)
            self.alphabet.active_variables -= set((variable_name, ))

    def morph_into_trivial(self, is_accepting: bool):
        if is_accepting:
            self.states = set(('final',)) 
            self.final_states = set(self.states)
            self.initial_states = set(self.states)
            state_name = 'final'
        else:
            self.states = set(('initial',)) 
            self.final_states = set()
            self.initial_states = set(self.states)
            state_name = 'initial'
        
        self_loop_symbol = ['*' for v in self.alphabet.variable_names]
        self.update_transition_fn(state_name, self_loop_symbol, state_name)
        self.alphabet.active_variables = set()

    def perform_pad_closure(self):
        work_queue = list(self.final_states)

        padding_final_states = set()

        while work_queue:
            current_final_state = work_queue.pop(0)
            padding_final_states.add(current_final_state)

            for origin_state in self.get_states_with_transition_destination(current_final_state):
                padding_symbols = self.get_padding_symbols_for_state_leading_to_final_state(
                    origin_state,
                    current_final_state)
                if padding_symbols:
                    if origin_state not in work_queue and origin_state not in padding_final_states:
                        work_queue.append(origin_state)

        self.final_states = padding_final_states

    def get_states_with_transition_destination(self, destination: AutomatonState) -> Set[AutomatonState]:
        states = set()
        for origin in self.transition_fn:
            for dest in self.transition_fn[origin]:
                if dest == destination:
                    states.add(origin)
        return states

    def get_padding_symbols_for_state_leading_to_final_state(self,
                                                             from_state: AutomatonState,
                                                             final_state: AutomatonState) -> Set[LSBF_AlphabetSymbol]:
        self_loop_symbols = self.get_self_loop_symbols_state(from_state)
        final_symbols = self.get_symbols_leading_from_state_to_state(from_state, final_state)
        return self_loop_symbols.intersection(final_symbols)

    def get_self_loop_symbols_state(self, state) -> Set[LSBF_AlphabetSymbol]:
        if state in self.transition_fn:
            if state in self.transition_fn[state]:
                return set(self.transition_fn[state][state])
            else:
                return set()
        else:
            return set()

    def get_symbols_leading_from_state_to_state(self,
                                                from_state: AutomatonState,
                                                to_state: AutomatonState) -> Set[LSBF_AlphabetSymbol]:
        if from_state in self.transition_fn:
            if to_state in self.transition_fn[from_state]:
                return set(self.transition_fn[from_state][to_state])
        return set()

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
        result.initial_states = set(self.initial_states)
        result.transition_fn = make_transitions_copy(self.transition_fn)

        return result

    def is_sat(self) -> Tuple[bool, List[LSBF_AlphabetSymbol]]:
        if not self.alphabet.active_variables:
            if self.final_states:
                return (True, [])
            else:
                return (False, [])

        # Implementation of DFS
        # Implementation for determinized automaton
        state_stack: List[AutomatonState] = list(self.initial_states)
        traversal_history: Dict[AutomatonState, AutomatonState] = dict()

        explored_states: Set[AutomatonState] = set()
        used_word: List[LSBF_AlphabetSymbol] = list()

        while state_stack:
            current_state = state_stack.pop(-1)

            explored_states.add(current_state)

            if current_state in self.final_states:
                used_word = get_word_from_dfs_results(self.transition_fn,
                                                      traversal_history,
                                                      current_state,
                                                      self.initial_states)

                # The NFA cannot accept empty words - that happens when after
                # determinization and complement some of the initial states
                # becomes accepting
                if used_word:
                    return (True, used_word)

            if current_state not in self.transition_fn:
                if used_word:
                    used_word.pop(-1)
            else:

                transitions = self.transition_fn[current_state]
                for destination, symbols in transitions.items():
                    if destination not in explored_states:
                        traversal_history[destination] = current_state
                        state_stack.append(destination)
        return (False, [])

    def remove_nonfinishing_states(self):
        '''BFS on rotated transitions'''
        rotated_transitions = make_rotate_transition_function(self.transition_fn)

        queue = collections.deque(self.final_states)
        reachable_states = set()

        while queue:
            current_state = queue.popleft()
            reachable_states.add(current_state)

            # We might be processing a state that is terminal
            if current_state not in rotated_transitions:
                continue

            for reachable_state in rotated_transitions[current_state]:
                if reachable_state not in reachable_states:
                    queue.append(reachable_state)

        unreachable_states = self.states - reachable_states
        if unreachable_states:
            self.transition_fn = remove_all_transitions_that_contain_states(self.transition_fn, unreachable_states)
            self.states = reachable_states

    @staticmethod
    def trivial_accepting(alphabet: LSBF_Alphabet) -> NFA[AutomatonState]:
        nfa = NFA(alphabet, AutomatonType.DFA)

        final_state = 'FINAL'
        nfa.add_state(final_state)
        nfa.add_initial_state(final_state)
        nfa.add_final_state(final_state)

        self_loop_symbol = tuple(['*'] * len(alphabet.variable_names))
        nfa.update_transition_fn(final_state, self_loop_symbol, final_state)
        nfa.alphabet.active_variables = set()

        return nfa

    @staticmethod
    def trivial_nonaccepting(alphabet: LSBF_Alphabet) -> NFA[AutomatonState]:
        nfa = NFA(alphabet, AutomatonType.DFA)

        initial_state = 'INITIAL'
        nfa.add_state(initial_state)
        nfa.add_initial_state(initial_state)

        self_loop_symbol = tuple(['*'] * len(alphabet.variable_names))
        nfa.update_transition_fn(initial_state, self_loop_symbol, initial_state)
        nfa.alphabet.active_variables = set()

        return nfa


class PressburgerAutomaton(NFA[AutomatonState]):
    def __init__(self, alphabet: LSBF_Alphabet):
        super().__init__(alphabet=alphabet, automaton_type=AutomatonType.NFA)

    def complement(self):
        alphabet_set = set([('*', 0), ('*', 1)])
        full_transition_to_final = set((tuple(['*' for v in self.alphabet.variable_names]), ))
        complement_transition_fn: Transitions = collections.defaultdict(dict)
        contain_transition_to_final = collections.defaultdict(lambda: False)
        final_state = list(self.final_states)[0]

        for origin in self.transition_fn:
            for destination in self.transition_fn[origin]:
                if destination in self.final_states:
                    complement_set = alphabet_set - self.transition_fn[origin][destination]
                    contain_transition_to_final[origin] = True
                    if complement_set:
                        complement_transition_fn[origin][destination] = complement_set
                else:
                    complement_transition_fn[origin][destination] = self.transition_fn[origin][destination]
            if not contain_transition_to_final[origin]:
                complement_transition_fn[origin][final_state] = full_transition_to_final

        self.transition_fn = complement_transition_fn

    def fixup_after_union(self):
        new_final_state = 'q_f'
        fixed_up_transition_fn: Transitions = collections.defaultdict(lambda: collections.defaultdict(set))

        # Redirect all transitions going to final state to only one final state
        for origin in self.transition_fn:
            for destination, symbol_set in self.transition_fn[origin].items():
                if destination in self.final_states:
                    fixed_up_transition_fn[origin][new_final_state].update(symbol_set)

        self.states = self.states - self.final_states
        self.final_states = set(new_final_state)
        self.transition_fn = fixed_up_transition_fn

    def do_padding_closure(self):
        final_state = list(self.final_states)[0]
        work_queue: List[AutomatonState] = list(self.get_states_with_transition_destination(final_state))
        while work_queue:
            # Current state has transition to final for sure
            current_state = work_queue.pop()

            potential_states = self.get_states_with_transition_destination(current_state)
            for potential_state in potential_states:
                symbols_from_potential_to_current = self.get_symbols_leading_from_state_to_state(potential_state, current_state)
                symbols_from_current_to_final = self.get_symbols_leading_from_state_to_state(current_state, final_state)

                intersect = symbols_from_potential_to_current.intersection(symbols_from_current_to_final)

                # Lookup symbols leading from potential state to final to see whether something changed
                symbols_from_potential_to_final = self.get_symbols_leading_from_state_to_state(potential_state, final_state)

                # (intersect - symbols_from_potential_to_final)  ===> check whether intersect brings any new symbols to transitions P->F
                if intersect and (intersect - symbols_from_potential_to_final):
                    # Propagate the finishing ability
                    if final_state in self.transition_fn[potential_state]:
                        self.transition_fn[potential_state][final_state].update(intersect)
                    else:
                        self.transition_fn[potential_state][final_state] = intersect
                    # We need to check all states reachable from
                    # potential_state which became finishing

                    if potential_state not in work_queue and potential_state != current_state:
                        work_queue.append(potential_state)

    def do_projection(self, variable_name: str):
        super().do_projection(variable_name)
        self.do_padding_closure()

DFA = NFA