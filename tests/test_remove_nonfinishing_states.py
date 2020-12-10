import pytest
from typing import Union
from automatons import NFA, AutomatonType, LSBF_Alphabet
from transitions import iter_transition_fn


@pytest.fixture()
def simple_nfa_with_trap_state() -> NFA[Union[str, int]]:

    shape = [
        (0, (1, 1), 1),
        (0, (0, 0), 'TRAP'),
        (1, (1, 1), 2),
        (2, (0, 0), 'FINAL'),

        ('TRAP', (0, 0), 'TRAP'),
        ('TRAP', (0, 1), 'TRAP'),
        ('TRAP', (1, 0), 'TRAP'),
        ('TRAP', (1, 1), 'TRAP'),
    ]

    nfa = NFA(
        LSBF_Alphabet.from_variable_names(['x', 'y']),
        AutomatonType.NFA
    )

    nfa.states = set([0, 1, 2, 'TRAP', 'FINAL'])
    for transition in shape:
        origin, symbol, destination = transition
        nfa.update_transition_fn(origin, symbol, destination)

    nfa.add_initial_state(0)
    nfa.add_final_state('FINAL')

    return nfa


def test_remove_nonfinishing_states_simple(simple_nfa_with_trap_state: NFA[Union[str, int]]):
    assert simple_nfa_with_trap_state

    simple_nfa_with_trap_state.remove_nonfinishing_states()

    assert 'TRAP' not in simple_nfa_with_trap_state.states

    missing_transitions = [
        (0, (0, 0), 'TRAP'),
        ('TRAP', (0, 0), 'TRAP'),
        ('TRAP', (0, 1), 'TRAP'),
        ('TRAP', (1, 0), 'TRAP'),
        ('TRAP', (1, 1), 'TRAP'),
    ]

    present_transitions = [
        (0, (1, 1), 1),
        (1, (1, 1), 2),
        (2, (0, 0), 'FINAL'),
    ]

    for transition in iter_transition_fn(simple_nfa_with_trap_state.transition_fn):
        assert transition not in missing_transitions
        assert transition in present_transitions
