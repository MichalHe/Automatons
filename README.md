This is an work-in-progress implementation of algorithms working with pressburger arithmetics using finite automatons.

## How to render graphs from SMT Library language into graphviz(dot)
First of all make sure that you have installed all packages from `requirements.txt` file. It is recommended to use virtual env 
to manage python app dependencies. Afterwards run following command (replace `<your_input_file>` with the path to the file containing inequality):
```sh
python3 ./make_digraph.py -i <your_input_file>
```

By default the script reads from stdin, but by passing `-i` flag, provided file is read instead. The output is to stdout.
For more information run: 
```sh
python3 ./make_digraph.py --help
```

To get an export of the automatons created during the engine execution you can use `export.py`. 
```sh
python3 export.py -t full -d /tmp -O vtf --vtf-quote-states=if-complex  smt-files/tptp/ARI004\=1.smt2
```  
Options used:
- `-t` type of automaton collection, `full` collects every automaton produced during execution
- `-d` destination directory
- `-O` output format 
- `--vtf-quote-states=<mode>` if the output format is vtf, sets the quoting of states in the output format.
   The `if-complex` option quotes only if the states produced are compound (e.g. resulting directly from intersection).

Note, that when the `-t` option produces more than one automaton, the output is stored in a directory with same basename as the given smt2 file.