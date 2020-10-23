import pytest
from mtbdd import MTBDDTree
from utils import number_to_bit_tuple


@pytest.fixture
def mtbdd():
    return MTBDDTree(('a', 'b', 'c'))


def test_mtbdd(mtbdd: MTBDDTree[str]):
    transitions = [
        ((1, 0, 1), 'value1'),
        ((1, 1, 1), 'value2'),
        ((1, 0, 0), 'value3'),
    ]

    for s, d in transitions:
        mtbdd.insert_into_fn(s, d)

    for s, d in transitions:
        assert mtbdd.get_transition_value(s) == d

    transitions_collected = tuple(mtbdd.iter_transitions())
    for t in transitions:
        assert t in transitions_collected


def test_mtbdd_sparse(mtbdd: MTBDDTree[str]):
    mtbdd.insert_into_fn((1, 0, '*'), 'value')

    transitions = tuple(mtbdd.iter_transitions())
    symbols = tuple(map(lambda t: t[0], transitions))
    expected_transition_syms = ((1, 0, 0), (1, 0, 1))

    assert len(symbols) == len(expected_transition_syms)
    for e in expected_transition_syms:
        assert e in symbols


def test_mtbdd_full_wildcard(mtbdd: MTBDDTree[str]):
    mtbdd.insert_into_fn(('*', '*', '*'), 'value')

    transitions = tuple(mtbdd.iter_transitions())
    symbols = tuple(map(lambda t: t[0], transitions))

    for i in range(2**3):
        sym = number_to_bit_tuple(i, tuple_size=3)
        assert sym in symbols


def test_get_nodes_at_level(mtbdd: MTBDDTree[str]):
    mtbdd.insert_into_fn(('*', '*', '*'), 'value')

    assert len(tuple(mtbdd.get_nodes_at_level(3))) == 1
    assert len(tuple(mtbdd.get_nodes_at_level(2))) == 1
    assert len(tuple(mtbdd.get_nodes_at_level(1))) == 1
    assert len(tuple(mtbdd.get_nodes_at_level(0))) == 1


def test_tree_extend_simple(mtbdd: MTBDDTree[str]):
    mtbdd.insert_into_fn((1, 0, 0,), 'value')
    mtbdd.extend_to_new_variables('a x b c'.split())

    expected_transitions_symbols = [
        (1, 1, 0, 0),
        (1, 0, 0, 0)
    ]

    act_syms = tuple(map(lambda t: t[0], mtbdd.iter_transitions()))
    assert len(act_syms) == len(expected_transitions_symbols)
    assert set(expected_transitions_symbols) == set(act_syms)


def test_tree_extend_before_root(mtbdd: MTBDDTree[str]):
    mtbdd.insert_into_fn((1, 0, 0,), 'value')
    mtbdd.extend_to_new_variables('x a b c'.split())

    expected_transitions_symbols = [
        (0, 1, 0, 0),
        (1, 1, 0, 0)
    ]

    act_syms = tuple(map(lambda t: t[0], mtbdd.iter_transitions()))
    assert len(act_syms) == len(expected_transitions_symbols)
    assert set(expected_transitions_symbols) == set(act_syms)


def test_tree_extend_after_tail(mtbdd: MTBDDTree[str]):
    mtbdd.insert_into_fn((1, 0, 0,), 'value')
    mtbdd.extend_to_new_variables('a b c x'.split())

    expected_transitions_symbols = [
        (1, 0, 0, 0),
        (1, 0, 0, 1)
    ]

    act_syms = tuple(map(lambda t: t[0], mtbdd.iter_transitions()))
    assert len(act_syms) == len(expected_transitions_symbols)
    assert set(expected_transitions_symbols) == set(act_syms)
