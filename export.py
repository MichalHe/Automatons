import argparse
from dataclasses import dataclass
from automatons import NFA
from parse import (
    eval_assert_tree,
    lex,
    build_syntax_tree,
    get_asserts_from_ast
)
from typing import List
from export_transformations import (
    convert_automaton_to_vtf,
    convert_automaton_to_rabbit,
    QuoteStates
)
import os
import functools


@dataclass
class TracePoint:
    operation: str
    result_automaton: NFA


def convert_automaton_to_dot(automaton: NFA):
    raise NotImplementedError('Dot format is not supported currently')


def get_automaton_trace(assert_tree):
    trace = []

    def automaton_emitted(nfa, parse_operation):
        trace.append(
            TracePoint(
                parse_operation.value,
                nfa
            ))

    _ = eval_assert_tree(
        assert_tree,
        emit_introspect=automaton_emitted)

    return trace


def get_atomic_evaluations(trace):
    atomic: List[TracePoint] = []
    for tracepoint in trace:
        if tracepoint.operation.startswith('build'):
            atomic.append(tracepoint)
        else:
            break  # Further are no atomic formulas
    return atomic


def export_tracepoints(output_dir: str,
                       output_format: str,
                       trace: List[TracePoint],
                       filename: str = None,
                       quote_states: QuoteStates = None
                       ):

    converters = {
        'vtf': convert_automaton_to_vtf,
        'rabbit': convert_automaton_to_rabbit,
        'dot': convert_automaton_to_dot
    }

    converter = converters[output_format]
    if output_format == 'vtf':
        print(f'DEBUG: Partial application of quote mode `{quote_states.name}` to vtf converter')
        converter = functools.partial(converter, quote_states=quote_states)

    for i, tracepoint in enumerate(trace):
        output_repr = converter(tracepoint.result_automaton)

        if filename is not None:
            output_filename = filename
        else:
            output_filename = f'{i}_{tracepoint.operation}.{output_format}'
        output_path = os.path.join(output_dir, output_filename)

        with open(output_path, 'w') as output_file:
            output_file.write(output_repr)


arg_parser = argparse.ArgumentParser()
arg_parser.add_argument(
    'smt2_file',
    type=str
)

arg_parser.add_argument(
    '-t',
    '--trace-mode',
    choices=['result', 'full', 'atomic'],
    default='full',
    dest='trace_mode'
)

arg_parser.add_argument(
    '-d',
    '--dest',
    help='Destination directory',
    dest='destination_dir',
    default='/tmp/'
)

arg_parser.add_argument(
    '-O',
    '--output-format',
    choices=['vtf', 'rabbit', 'dot'],
    default='vtf',
    dest='output_format'
)

arg_parser.add_argument(
    '--vtf-quote-states',
    choices=['always', 'if-complex', 'never'],
    default='never',
    dest='vtf_quote_states'
)

args = arg_parser.parse_args()

# What is the output format?

with open(args.smt2_file) as input_file:
    source = input_file.read()
    tokens = lex(source)
    ast = build_syntax_tree(tokens)
    asserts = get_asserts_from_ast(ast)

    assert_tree = asserts[0]

    trace = get_automaton_trace(assert_tree)
    print(f'Extracted {len(trace)} trace points.')

    output_filename = None
    trace_to_export = trace

    quote_options = {
        'if-complex':   QuoteStates.IfComplex,
        'never':        QuoteStates.Never,
        'always':       QuoteStates.Always,
    }

    quote_states = quote_options[args.vtf_quote_states] if args.output_format == 'vtf' else None
    print(f'Quote states setting: {quote_states.value}')

    if args.trace_mode == 'full':
        trace_to_export = trace

    elif args.trace_mode == 'atomic':
        atomic_trace_points = get_atomic_evaluations(trace)
        trace_to_export = atomic_trace_points

    else:
        output_filename = os.path.basename(args.smt2_file)
        output_filename = output_filename.replace('smt2', args.output_format)
        trace_to_export = [trace[-1]]

    export_tracepoints(
        args.destination_dir,
        args.output_format,
        trace_to_export,
        filename=output_filename,
        quote_states=quote_states
    )
