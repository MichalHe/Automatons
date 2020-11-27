from pressburger_algorithms import (
    build_nfa_from_inequality,
    build_nfa_from_equality,
    build_nfa_from_sharp_inequality,
)

from ast_relations import extract_relation
from automatons import NFA, AutomatonType
from log import logger
from logging import INFO
from typing import (
    List,
    Tuple,
    Any,
    Dict
)
from enum import IntEnum

PRETTY_PRINT_INDENT = ' ' * 2

logger.setLevel(INFO)


class ParsingOperation(IntEnum):
    BUILD_NFA_FROM_INEQ = 0x01
    BUILD_NFA_FROM_SHARP_INEQ = 0x02
    BUILD_NFA_FROM_EQ = 0x04
    NFA_UNION = 0x08
    NFA_PROJECTION = 0x10
    NFA_COMPLEMENT = 0x20
    NFA_DETERMINIZE = 0x20
    NFA_INTERSECT = 0x40


def _eval_info(msg, depth):
    logger.info('  ' * depth + msg)


def pretty_print_smt_tree(tree, printer=None, depth=0):
    if printer is None:
        printer = print

    if tree is None:
        return

    node_name = tree[0]

    if node_name in ['exists', 'forall']:
        binders = tree[1]
        printer(PRETTY_PRINT_INDENT * depth + f'{node_name} (binding: {binders})')
        pretty_print_smt_tree(tree[2], printer=printer, depth=depth+1)
    # assert, not, and, or
    elif node_name in ['and', 'or']:
        printer(PRETTY_PRINT_INDENT * depth + f'{node_name}')
        pretty_print_smt_tree(tree[1], printer=printer, depth=depth+1)
        pretty_print_smt_tree(tree[2], printer=printer, depth=depth+1)
    elif node_name in ['assert', 'not']:
        printer(PRETTY_PRINT_INDENT * depth + f'{node_name}')
        pretty_print_smt_tree(tree[1], printer=printer, depth=depth+1)
    else:
        printer(PRETTY_PRINT_INDENT * depth + f'{tree}')


def get_variable_names_from_bindings(bindings: List[Tuple[str, str]]) -> List[str]:
    return list(map(lambda binding: binding[0], bindings))


def lex(source: str) -> List[str]:
    source = source.replace('(', ' ( ').replace(')', ' ) ')
    tokens = source.split()
    return tokens


def build_syntax_tree(tokens: List[str]):
    stack: List[Any] = []
    depth = -1
    for token in tokens:
        if token == '(':
            depth += 1
            stack.append([])
        elif token == ')':
            depth -= 1
            if depth >= 0:
                list_finished = stack.pop()
                stack[-1].append(list_finished)
        else:
            stack[-1].append(token)
    return stack


def get_asserts_from_ast(ast):
    # TODO: Remove this
    _asserts = []
    for top_level_expr in ast:
        if top_level_expr[0] == 'assert':
            _asserts.append(top_level_expr)
    return _asserts


def check_result_matches(source_text: str, emit_introspect=None) -> bool:
    tokens = lex(source_text)
    ast = build_syntax_tree(tokens)

    smt_info = get_smt_info(ast)
    asserts = get_asserts_from_ast(ast)
    logger.info(f'Extracted smt-info: {smt_info}')
    logger.info(f'Extracted {len(asserts)} from source text.')

    nfa = eval_assert_tree(asserts[0], emit_introspect=emit_introspect)

    should_be_sat = True  # Assume true, in case there is no info in the smt source
    if ':status' in smt_info:
        if smt_info[':status'] == 'unsat':
            should_be_sat = False

    is_sat, example_word = nfa.is_sat()
    sat_matches = is_sat == should_be_sat

    if sat_matches:
        if is_sat:
            logger.debug(f'The automaton\'s SAT is as expected: {is_sat}, example: {example_word}')
        else:
            logger.debug(f'The automaton\'s SAT is as expected: {is_sat}')
    else:
        logger.warn(f'The automaton\'s SAT didn\'t match expected: actual={is_sat}, given word: {example_word}, expected={should_be_sat}')

    return sat_matches


def eval_smt_tree(root,
                  _debug_recursion_depth=0,
                  emit_introspect=lambda nfa,
                  operation: None) -> NFA:
    '''
    Params:
        emit_introspect:  Callable[[NFA], None] If set, it will get called whenever an operation
                          is applied to one of the NFAs the parser build along the way.
    '''

    node_name = root[0]
    if node_name in ['<', '>', '<=', '>=', '=']:
        # We have found node which need to be translated into NFA

        relation = extract_relation(root)
        _eval_info(f'Building core nfa from relation: {relation}', _debug_recursion_depth)

        if relation.operation == '<':
            build_func = 'build_nfa_from_sharp_inequality'
            parse_op = ParsingOperation.BUILD_NFA_FROM_SHARP_INEQ
            nfa = build_nfa_from_sharp_inequality(relation)
        elif relation.operation == '<=':
            build_func = 'build_nfa_from_inequality'
            parse_op = ParsingOperation.BUILD_NFA_FROM_INEQ
            nfa = build_nfa_from_inequality(relation)
        elif relation.operation == '=':
            build_func = 'build_nfa_from_equality'
            parse_op = ParsingOperation.BUILD_NFA_FROM_EQ
            nfa = build_nfa_from_equality(relation)

        _eval_info(f' >> {build_func}({root}) (result size: {len(nfa.states)})', _debug_recursion_depth)

        emit_introspect(nfa, parse_op)
        return nfa
    else:
        _eval_info(f'eval_smt_tree({root})', _debug_recursion_depth)
        # Current node is NFA operation
        if node_name == 'and':
            assert len(root) >= 3
            lhs_term = root[1]
            lhs = eval_smt_tree(lhs_term, _debug_recursion_depth+1, emit_introspect=emit_introspect)

            for term_i in range(2, len(root)):
                rhs_term = root[term_i]
                rhs = eval_smt_tree(rhs_term, _debug_recursion_depth+1, emit_introspect=emit_introspect)
                assert type(rhs) == NFA
                lhs = lhs.intersection(rhs)
                _eval_info(f' >> intersection(lhs, rhs) (result size: {len(lhs.states)})', _debug_recursion_depth)
                emit_introspect(lhs, ParsingOperation.NFA_INTERSECT)
            return lhs
        elif node_name == 'or':
            assert len(root) >= 3
            lhs_term = root[1]
            lhs = eval_smt_tree(lhs_term, _debug_recursion_depth+1, emit_introspect=emit_introspect)

            for term_i in range(2, len(root)):
                rhs_term = root[2]
                rhs = eval_smt_tree(rhs_term, _debug_recursion_depth+1, emit_introspect=emit_introspect)
                assert type(rhs) == NFA

                _eval_info(' >> union(lhs, rhs)', _debug_recursion_depth)
                lhs = lhs.union(rhs)
                emit_introspect(lhs, ParsingOperation.NFA_UNION)
            return lhs
        elif node_name == 'not':
            assert len(root) == 2
            operand = eval_smt_tree(root[1], _debug_recursion_depth+1, emit_introspect=emit_introspect)

            assert type(operand) == NFA

            if operand.automaton_type == AutomatonType.NFA:
                operand = operand.determinize()
                _eval_info(f' >> determinize into DFA (result size: {len(operand.states)})', _debug_recursion_depth)
                emit_introspect(operand, ParsingOperation.NFA_DETERMINIZE)

            operand = operand.complement()
            _eval_info(f' >> complement(operand) - (result size: {len(operand.states)})', _debug_recursion_depth)
            emit_introspect(operand, ParsingOperation.NFA_COMPLEMENT)
            return operand
        elif node_name == 'exists':
            assert len(root) == 3
            variable_names = get_variable_names_from_bindings(root[1])
            nfa = eval_smt_tree(root[2], _debug_recursion_depth+1, emit_introspect=emit_introspect)

            # TODO: Check whether variables are in fact present in alphabet
            for var in variable_names:
                nfa = nfa.do_projection(var)
                nfa = nfa.determinize()
                emit_introspect(nfa, ParsingOperation.NFA_DETERMINIZE)

            _eval_info(f' >> projection({variable_names}) (result_size: {len(nfa.states)})', _debug_recursion_depth)
            emit_introspect(nfa, ParsingOperation.NFA_PROJECTION)
            return nfa

        else:
            raise NotImplementedError(f'Error while evaluating tree, unknown operation: {node_name}, assert_tree')


def eval_assert_tree(assert_tree, emit_introspect=None):
    assert assert_tree[0] == 'assert'
    forall_cnt = replace_forall_with_exists(assert_tree)
    logger.info(f'Replaced {forall_cnt} forall nodes in the AST.')
    implications_cnt = expand_implications(assert_tree)
    logger.info(f'Performed {implications_cnt} implications expansions in the AST.')
    if emit_introspect is not None:
        return eval_smt_tree(assert_tree[1], emit_introspect=emit_introspect)
    else:
        return eval_smt_tree(assert_tree[1])


def expand_multivariable_bindings(assertion_tree):
    if assertion_tree[0] in ['exists', 'forall']:
        binding_type, bindings, term = assertion_tree
        assert len(bindings) > 0

        if len(bindings) >= 2:
            # We are dealing with multivariable exits
            # ["exists" [x Type, y Type, ...] TERM]]
            leftmost_binding = bindings[0]
            tail = bindings[1:]

            # Prepare substatement
            substmt = [binding_type, tail, term]

            # Update tree
            assertion_tree[1] = [leftmost_binding]
            assertion_tree[2] = substmt

    if assertion_tree[0] in ['exists', 'not', 'forall', 'assert']:
        expand_multivariable_bindings(assertion_tree[-1])


def replace_forall_with_exists(assertion_tree):
    '''
    The forall quantifiers (nodes) are replaced by not-exists-not inplace,
    mutating assertion tree.
    Params:
        assertion_tree @mutable
    Returns:
        The count of how many forall expansions occured.
    '''
    node_replaced_const = 0
    if assertion_tree[0] == 'forall':
        forall_kw, binders, stmt = assertion_tree

        not_stmt = ['not', stmt]
        exists = ['exists', binders, not_stmt]

        assertion_tree[0] = 'not'
        assertion_tree[1] = exists
        assertion_tree.pop(-1)  # Remove the original stmt from [forall, binders, stmt] -> [not, [exists, [not, stmt]]]
        node_replaced_const = 1

    if assertion_tree[0] in ['exists', 'not', 'forall', 'assert']:
        return node_replaced_const + replace_forall_with_exists(assertion_tree[-1])
    else:
        return node_replaced_const  # Bottom of the recursion


def expand_implications(assertion_tree) -> int:
    root_node_name = assertion_tree[0]
    if root_node_name == '=>':
        left_statement = assertion_tree[1]
        right_statement = assertion_tree[2]

        left_negated = ['not', left_statement]
        assertion_tree[0] = 'or'
        assertion_tree[1] = left_negated
        assertion_tree[2] = right_statement

        implications_expanded = 1
        # Implications might be used somewhere down the tree
        implications_expanded += expand_implications(assertion_tree[1])
        implications_expanded += expand_implications(assertion_tree[2])

        return implications_expanded
    else:
        if root_node_name in ['and', 'or', '=']:
            # Since and,or,= are n-ary, we need to descend into all of their
            # subterms
            implications_expanded = 0
            for term_i in range(1, len(assertion_tree)):
                implications_expanded += expand_implications(assertion_tree[term_i])
            return implications_expanded
        elif root_node_name in ['forall', 'exists', 'not', 'assert']:
            # Those contain only one formula - descend into it
            return expand_implications(assertion_tree[-1])
        else:
            return 0


def remove_multiple_negations(assertion_tree):
    pass


def get_formula(_assert):
    return _assert[1]


def get_smt_info(ast) -> Dict[str, Any]:
    smt_info: Dict[str, Any] = dict()
    for top_level_statement in ast:
        statement_fn = top_level_statement[0]
        if statement_fn == 'set-info':
            info_category = top_level_statement[1]
            info_value = top_level_statement[2]

            smt_info[info_category] = info_value

    return smt_info
