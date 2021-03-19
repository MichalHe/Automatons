from automatons import NFA, LSBF_Alphabet
from transitions import iter_transition_fn
from utils import number_to_bit_tuple
from enum import Enum
from typing import Any, List, Set
import re


class QuoteStates(Enum):
    Always = 'Always'
    IfComplex = 'IfComplex'
    Never = 'Never'


def is_state_complex(state: Any):
    if type(state) == list or type(state) == tuple:
        return True
    else:
        return False


# VTF format example:
# @NFA-BDD          # NFAs with transitions in BDD
# %Symbol-Vars 8    # number of Boolean variables in the alphabet (required)
# %Initial q1 q2
# %Final q2

# q1 000x11x1 q2    # the format is <source> <symbol> <target>
# q1 01101111 q3    # 'x' in the binary vector denote don't care values
# q3 xxxxxxxx q1    # the length needs to match the value in '%Symbol-Vars'


def iter_alphabet_symbol(symbol):
    # Input: Symbol (*, 0, 1, *)
    if len(symbol) == 0:
        return

    # Collect the positions of the dont-care bits
    dont_care_indices = []
    for i, bit in enumerate(symbol):
        if bit == '*':
            dont_care_indices.append(i)

    if len(dont_care_indices) == 0:
        yield tuple(symbol)
        return

    g_symbol = list(symbol)

    for k in range(2**len(dont_care_indices)):
        # evaluate the dont-care bits
        dont_care_indices_values = number_to_bit_tuple(k, tuple_size=len(dont_care_indices))

        # Shuffle the don't care bits values into the generated symbol
        for i, dc_bit_value in enumerate(dont_care_indices_values):
            dc_bit_index = dont_care_indices[i]
            g_symbol[dc_bit_index] = dc_bit_value

        yield tuple(g_symbol)


def convert_automaton_to_vtf(automaton: NFA,
                             quote_states=QuoteStates.IfComplex) -> str:
    alphabet_size = len(automaton.alphabet.variable_names)
    initial_state = tuple(automaton.initial_states)[0]  # There is only 1 state

    # State quoting
    states_complex = is_state_complex(initial_state)
    add_quote = False
    if quote_states == QuoteStates.IfComplex:
        add_quote = True if states_complex else False
    elif quote_states == QuoteStates.Always:
        add_quote = True

    final_states = map(str, automaton.final_states)
    states = map(str, automaton.states)
    if add_quote:
        def quote(state_name: str):
            return f'"{state_name}"'

        final_states = map(quote, final_states)
        states = map(quote, states)
        initial_state = quote(str(initial_state))

    final_states = ' '.join(final_states)
    states = ' '.join(states)

    vtf = ''
    vtf += '@NFA\n'
    vtf += f'%States {states}\n'
    vtf += f'%Initial {initial_state}\n'
    vtf += f'%Final {final_states}\n'

    # Just to be sure, include metadata
    vtf += f'%Symbol-Vars {alphabet_size}\n'
    vtf += '\n'

    # Add automaton transition function
    for transition in iter_transition_fn(automaton.transition_fn):
        source, symbol, destination = transition

        # Expand the symbol transition
        for ex_symbol in iter_alphabet_symbol(symbol):
            ex_symbol_str = ''.join(map(str, ex_symbol))
            if add_quote:
                vtf += f'"{source}" {ex_symbol_str} "{destination}"\n'
            else:
                vtf += f'{source} {ex_symbol_str} {destination}\n'

    return vtf


def convert_automaton_to_rabit(nfa: NFA) -> str:
    # Rabbit does not support '-' in the BA format, rename states
    _, renamed_nfa = nfa.rename_states()

    initial_state = tuple(renamed_nfa.initial_states)[0]

    rabbit_fmt = ''
    rabbit_fmt += f'[{initial_state}]\n'

    for transition in iter_transition_fn(renamed_nfa.transition_fn):
        src, symbol, dest = transition
        # We need to expand the symbol because it might be a symbolic one
        for expanded_sym in iter_alphabet_symbol(symbol):
            symbol_str = ''.join(map(str, expanded_sym))
            rabbit_fmt += f'{symbol_str},[{src}]->[{dest}]\n'

    for i, fstate in enumerate(renamed_nfa.final_states):
        # This is not necessary, but the empty line at the end is not pretty
        if i < len(nfa.final_states) - 1:
            rabbit_fmt += f'[{fstate}]\n'
        else:
            rabbit_fmt += f'[{fstate}]'

    return rabbit_fmt


def read_nfa_from_rabit(filepath: str) -> str:  # NOQA
    '''Reads the NFA from a file in the rabbit format'''
    # Rabit (BA) file example:
    # [1]
    # a,[1]->[2]
    # b,[2]->[1]
    # c,[1]->[3]
    # [2]
    # [3]
    initial_states: List[str] = list()
    transitions: List[List[Any]] = list()
    final_states: List[str] = list()
    state = 0
    state_re = re.compile(r'\[(.+)\]')
    transition_re = re.compile(r'(.+),\[(.+)\]->\[(.+)\]')
    with open(filepath, 'r') as input_file:
        for line in input_file:
            if state == 0 and '->' in line:
                state = 1

            if state == 1 and '->' not in line:
                state = 2

            if state == 0:
                match = state_re.match(line)
                if match is None:
                    raise ValueError('Cannot parse BA line: {line}')
                initial_states.append(match.group(1))
            elif state == 1:
                match = transition_re.match(line)
                if match is None:
                    raise ValueError('Cannot parse BA line: {line}')
                symbol = match.group(1)
                origin = match.group(2)
                dest = match.group(3)
                transitions.append([origin, symbol, dest])
            else:
                match = state_re.match(line)
                if match is None:
                    raise ValueError('Cannot parse BA line: {line}')
                final_states.append(match.group(1))

    # Check the lsbf alphabet
    purged_transitions: List[List[Any]] = []
    states: Set = set()
    alphabet_length = None
    for origin, symbol, dest in transitions:
        symbol = symbol.strip()
        assert symbol[0] == '(', f'Symbol should be a LSBF bit tuple: {symbol}'
        assert symbol[-1] == ')', f'Symbol should be a LSBF bit tuple: {symbol}'

        symbol_body = symbol[1:-1]
        symbol_body = symbol_body.replace(' ', '')
        bits = symbol_body.split(',')
        assert bits, 'LSBF Symbol cannot have no bits'

        processed_symbol: List = []
        for bit in bits:
            assert bit in ['0', '1', '*'], f'LSBF bit can be only one of: 0/1/*, current `{bit}`'
            if bit == '0' or bit == '1':
                processed_symbol.append(int(bit))
            else:
                processed_symbol.append(bit)

        if alphabet_length is None:
            alphabet_length = len(processed_symbol)

        if alphabet_length is not None:
            assert len(processed_symbol) == alphabet_length, 'All LSBF symbols must have same length'

        purged_transitions.append((origin, iter_transition_fn, dest))
        states.add(origin)
        states.add(dest)

    states.update(initial_states)
    states.update(final_states)
    var_names = tuple(map(chr, range(ord('a'), ord('a') + alphabet_length)))
    alphabet = LSBF_Alphabet.from_variable_names(var_names)
    nfa = NFA(alphabet, initial_states=set(initial_states), states=states, final_states=set(final_states))

    for t in purged_transitions:
        nfa.update_transition_fn(t[0], t[1], t[2])
    return nfa
