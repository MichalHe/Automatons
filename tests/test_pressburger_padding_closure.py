import pytest
import automatons as fsms
import transitions as trans
import relations_structures as rs
import pressburger_algorithms as p_algos


@pytest.fixture()
def simple_pa() -> fsms.PressburgerAutomaton:
    states = [
        0, 1, 2, 'F'
    ]

    alphabet = fsms.LSBF_Alphabet.from_variable_names(['x'])

    pa = fsms.PressburgerAutomaton(alphabet=alphabet, automaton_type=fsms.AutomatonType.NFA)
    pa.states = set(states)
    pa.add_final_state('F')
    pa.add_initial_state(0)

    sigma = (0,)
    transitions = [
        (0, sigma, 1),
        (1, sigma, 2),
        (2, sigma, 'F'),
    ]

    for t in transitions:
        pa.update_transition_fn(*t)

    return pa


@pytest.fixture()
def multipath_pa() -> fsms.PressburgerAutomaton:
    states = [0, 1, 2, 3, 'F']
    alphabet = fsms.LSBF_Alphabet.from_variable_names(['x', 'y'])
    multipath_pa = fsms.PressburgerAutomaton(alphabet=alphabet, automaton_type=fsms.AutomatonType.NFA)

    multipath_pa.states = set(states)
    multipath_pa.add_initial_state(0)
    multipath_pa.add_final_state('F')

    sigma_1 = (0, 0)
    sigma_2 = (1, 1)

    transitions = [
        (0, sigma_1, 1),

        (1, sigma_1, 2),
        (2, sigma_1, 'F'),

        (1, sigma_2, 3),
        (3, sigma_2, 'F')
    ]

    for t in transitions:
        multipath_pa.update_transition_fn(*t)

    return multipath_pa


@pytest.fixture()
def advanced_pa() -> fsms.PressburgerAutomaton:
    states = [-1, 0, 1, 2, 3, 4, 5]
    alphabet = fsms.LSBF_Alphabet.from_variable_names(['x', 'y'])
    advanced_pa = fsms.PressburgerAutomaton(alphabet=alphabet, automaton_type=fsms.AutomatonType.NFA)

    advanced_pa.states = set(states)
    advanced_pa.add_initial_state(-1)
    advanced_pa.add_final_state('F')

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
        (3, sigma_0, 'F'),

        (0, sigma_1, 4),
        (4, sigma_1, 'F'),

        (0, sigma_2, 5),
        (5, sigma_2, 'F'),
    ]

    for t in T:
        advanced_pa.update_transition_fn(*t)

    return advanced_pa


@pytest.fixture()
def real_pa() -> fsms.PressburgerAutomaton:
    equality = rs.Relation(['x', 'y'], [2, -1], 2, operation='=')
    return p_algos.build_nfa_from_equality(equality)


def test_simple_finality_propagation(simple_pa: fsms.PressburgerAutomaton):
    # Expect finallity propagation via sigma to every state
    simple_pa.do_padding_closure()

    sigma = (0,)
    expected_transitions = [
        (0, sigma, 'F'),
        (1, sigma, 'F'),
        (2, sigma, 'F'),
    ]

    for expected_transition in expected_transitions:
        origin, symbol, destination = expected_transition
        assert 'F' in simple_pa.get_transition_target(origin, symbol)


def test_multipath_propagation(multipath_pa: fsms.PressburgerAutomaton):
    multipath_pa.do_padding_closure()

    sigma_1 = (0, 0)
    sigma_2 = (1, 1)
    expected_trans = [
        (1, sigma_1, 'F'),
        (1, sigma_2, 'F'),
        (0, sigma_1, 'F'),

        # Original transitions
        (0, sigma_1, 1),
        (1, sigma_1, 2),
        (2, sigma_1, 'F'),
        (1, sigma_2, 3),
        (3, sigma_2, 'F')
    ]

    transition_size = 0
    for transition in trans.iter_transition_fn(multipath_pa.transition_fn):
        assert transition in expected_trans
        transition_size += 1

    assert transition_size == len(expected_trans)


def test_advanced_propagation(advanced_pa: fsms.PressburgerAutomaton):
    transitions_before_padding = list(trans.iter_transition_fn(advanced_pa.transition_fn))
    advanced_pa.do_padding_closure()

    sigma_0 = (0, 0)
    sigma_1 = (0, 1)
    sigma_2 = (1, 0)
    # Expected_transitions
    expected_transitions = [
        (2, sigma_0, 'F'),
        (2, sigma_1, 'F'),
        (1, sigma_0, 'F'),
        (0, sigma_0, 'F'),
        (-1, sigma_0, 'F'),
        (0, sigma_1, 'F'),
        (0, sigma_2, 'F'),
    ]

    all_transitions = expected_transitions + transitions_before_padding

    tc = 0
    for t in trans.iter_transition_fn(advanced_pa.transition_fn):
        assert t in all_transitions
        tc += 1
    assert tc == len(all_transitions)


def test_real_pressburger_automaton_after_projection(real_pa: fsms.PressburgerAutomaton):
    final_state = list(real_pa.final_states)[0]
    sigma_0 = (0, '*')  # NOQA
    sigma_1 = (1, '*')  # NOQA

    expected_new_transition = (2, sigma_0, final_state)
    origin, symbol, dest = expected_new_transition

    assert dest not in real_pa.get_transition_target(origin, symbol)

    real_pa = real_pa.do_projection('y')
    real_pa.do_padding_closure()

    assert dest in real_pa.get_transition_target(origin, symbol)

    # In fact every ending state (so except TRAP) should lead to final via every symbol
    all_symbols = set([sigma_0, sigma_1])
    for state in real_pa.states - real_pa.final_states:
        if state == 'TRAP':
            continue
        assert real_pa.get_symbols_leading_from_state_to_state(state, 'FINAL') == all_symbols

    real_pa.complement()
    for state in real_pa.states - real_pa.final_states:
        if state == 'TRAP':
            continue
        assert real_pa.get_symbols_leading_from_state_to_state(state, 'FINAL') == set()