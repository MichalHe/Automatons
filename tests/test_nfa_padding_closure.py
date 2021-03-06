import pytest
import automatons as fsms
import relations_structures as rs
import presburger_algorithms as p_algos
from typing import Callable


AutomatonFactory = Callable[[fsms.LSBF_Alphabet, fsms.AutomatonType], fsms.NFA]


def mk_simple_nfa(factory: AutomatonFactory) -> fsms.NFA:
    final_state = 3
    states = [
        0, 1, 2, final_state
    ]

    alphabet = fsms.LSBF_Alphabet.from_variable_names([1])

    nfa: fsms.NFA = factory(alphabet, fsms.AutomatonType.NFA)
    nfa.states = set(states)
    nfa.add_final_state(final_state)
    nfa.add_initial_state(0)

    sigma = (0,)
    transitions = [
        (0, sigma, 1),
        (1, sigma, 2),
        (2, sigma, final_state),
    ]

    for t in transitions:
        nfa.update_transition_fn(*t)

    return nfa


def mk_multipath_nfa(factory: AutomatonFactory) -> fsms.NFA:
    final_state = 4
    states = [0, 1, 2, 3, final_state]
    alphabet = fsms.LSBF_Alphabet.from_variable_names([1, 2])
    multipath_nfa = factory(alphabet, fsms.AutomatonType.NFA)

    multipath_nfa.states = set(states)
    multipath_nfa.add_initial_state(0)
    multipath_nfa.add_final_state(final_state)

    sigma_1 = (0, 0)
    sigma_2 = (1, 1)

    transitions = [
        (0, sigma_1, 1),

        (1, sigma_1, 2),
        (2, sigma_1, final_state),

        (1, sigma_2, 3),
        (3, sigma_2, final_state)
    ]

    for t in transitions:
        multipath_nfa.update_transition_fn(*t)

    return multipath_nfa


def mk_advanced_nfa(factory: AutomatonFactory) -> fsms.NFA:
    states = [-1, 0, 1, 2, 3, 4, 5, 6]
    alphabet = fsms.LSBF_Alphabet.from_variable_names(['x', 'y'])
    advanced_nfa = fsms.NFA(alphabet=alphabet, automaton_type=fsms.AutomatonType.NFA)

    final_state = 6

    advanced_nfa.states = set(states)
    advanced_nfa.add_initial_state(-1)
    advanced_nfa.add_final_state(final_state)

    sigma_0 = (0, 0)
    sigma_1 = (0, 1)
    sigma_2 = (1, 0)
    # Transitions
    T = [
        (-1, sigma_0, 0),
        (0, sigma_0, 1),
        (1, sigma_0, 2),
        (2, sigma_0, 3),
        (2, sigma_1, 4),
        (3, sigma_0, final_state),

        (0, sigma_1, 4),
        (4, sigma_1, final_state),

        (0, sigma_2, 5),
        (5, sigma_2, final_state),
    ]

    for t in T:
        advanced_nfa.update_transition_fn(*t)

    return advanced_nfa


@pytest.fixture()
def real_nfa() -> fsms.NFA:
    equality = rs.Relation(['x', 'y'], [2, -1], 2, operation='=')
    return p_algos.build_nfa_from_equality(equality)


def do_simple_padding_closure_tests(nfa: fsms.NFA):
    nfa.perform_pad_closure()

    sigma = (0,)
    final_state = 3
    expected_transitions = [
        (0, sigma, final_state),
        (1, sigma, final_state),
        (2, sigma, final_state),
    ]

    for expected_transition in expected_transitions:
        origin, symbol, _ = expected_transition
        assert final_state in nfa.get_transition_target(origin, symbol)


def test_mdbdd_simple_finality_propagation():
    simple_nfa = mk_simple_nfa(fsms.MTBDD_NFA)
    # Expect finallity propagation via sigma to every state

    do_simple_padding_closure_tests(simple_nfa)


def test_simple_finality_propagation():
    simple_nfa = mk_simple_nfa(fsms.NFA)
    do_simple_padding_closure_tests(simple_nfa)


def do_multipath_propagation_tests(multipath_nfa: fsms.NFA):
    multipath_nfa.perform_pad_closure()

    final_state = 4
    sigma_1 = (0, 0)
    sigma_2 = (1, 1)
    expected_trans = [
        (1, sigma_1, final_state),
        (1, sigma_2, final_state),
        (0, sigma_1, final_state),

        # Original transitions
        (0, sigma_1, 1),
        (1, sigma_1, 2),
        (2, sigma_1, final_state),
        (1, sigma_2, 3),
        (3, sigma_2, final_state)
    ]

    transition_size = 0
    present_transitions = []
    for transition in multipath_nfa.transition_fn.iter():
        assert transition in expected_trans
        transition_size += 1
        present_transitions.append(transition)

    assert transition_size == len(expected_trans)


def test_multipath_propagation_tests():
    nfa = mk_multipath_nfa(fsms.NFA)
    do_multipath_propagation_tests(nfa)


def test_mtbdd_multipath_propagation_tests():
    nfa = mk_multipath_nfa(fsms.MTBDD_NFA)
    do_multipath_propagation_tests(nfa)


def do_advanced_propagation_tests(nfa: fsms.NFA):
    transitions_before_padding = list(nfa.transition_fn.iter())
    nfa.perform_pad_closure()

    sigma_0 = (0, 0)
    sigma_1 = (0, 1)
    sigma_2 = (1, 0)
    # Expected_transitions
    final_state = 6
    expected_transitions = [
        (2, sigma_0, final_state),
        (2, sigma_1, final_state),
        (1, sigma_0, final_state),
        (0, sigma_0, final_state),
        (-1, sigma_0, final_state),
        (0, sigma_1, final_state),
        (0, sigma_2, final_state),
    ]

    all_transitions = expected_transitions + transitions_before_padding

    tc = 0
    for t in nfa.transition_fn.iter():
        assert t in all_transitions
        tc += 1
    assert tc == len(all_transitions)


def test_advanced_propagation():
    nfa = mk_advanced_nfa(fsms.NFA)
    do_advanced_propagation_tests(nfa)


def test_mtbdd_advanced_propagation():
    nfa = mk_advanced_nfa(fsms.MTBDD_NFA)
    do_advanced_propagation_tests(nfa)


def x_test_real_pressburger_automaton_after_projection(real_nfa: fsms.NFA):
    '''*Not performed currently* - the MTBDD NFAs do not fully support variable projection.'''
    final_state = list(real_nfa.final_states)[0]
    sigma_0 = (0, '*')  # NOQA
    sigma_1 = (1, '*')  # NOQA

    expected_new_transition = (2, sigma_0, final_state)
    origin, symbol, dest = expected_new_transition

    assert dest not in real_nfa.get_transition_target(origin, symbol)

    real_nfa = real_nfa.do_projection('y')  # Pad closure is done inside projection

    assert dest in real_nfa.get_transition_target(origin, symbol)

    # In fact every ending state (so except TRAP) should lead to final via every symbol
    all_symbols = set([sigma_0, sigma_1])
    for state in real_nfa.states - real_nfa.final_states:
        if state == 'TRAP':
            continue
        assert real_nfa.get_symbols_leading_from_state_to_state(state, 'FINAL') == all_symbols

    dfa = real_nfa.determinize()
    dfa = dfa.complement()
    for state in real_nfa.states - real_nfa.final_states:
        assert not real_nfa.get_symbols_leading_from_state_to_state(state, 'FINAL')
