(set-info :smt-lib-version 2.6)
(set-logic LIA)
(set-info :source "|
Generated by the tool Ultimate Automizer [1,2] which implements
an automata theoretic approach [3] to software verification.

This SMT script belongs to a set of SMT scripts that was generated by
applying Ultimate Automizer to benchmarks [4] from the SV-COMP 2019 [5,6].
This script might _not_ contain all SMT commands that are used by
Ultimate Automizer. In order to satisfy the restrictions of
the SMT-COMP we have to drop e.g., the commands for getting
values (resp. models), unsatisfiable cores and interpolants.

2019-04-27, Matthias Heizmann (heizmann@informatik.uni-freiburg.de)

[1] https://ultimate.informatik.uni-freiburg.de/automizer/
[2] Matthias Heizmann, Yu-Fang Chen, Daniel Dietsch, Marius Greitschus,
     Jochen Hoenicke, Yong Li, Alexander Nutz, Betim Musa, Christian
     Schilling, Tanja Schindler, Andreas Podelski: Ultimate Automizer
     and the Search for Perfect Interpolants - (Competition Contribution).
     TACAS (2) 2018: 447-451
[3] Matthias Heizmann, Jochen Hoenicke, Andreas Podelski: Software Model
     Checking for People Who Love Automata. CAV 2013:36-52
[4] https://github.com/sosy-lab/sv-benchmarks
[5] Dirk Beyer: Automatic Verification of C and Java Programs: SV-COMP 2019.
     TACAS (3) 2019: 133-155
[6] https://sv-comp.sosy-lab.org/2019/
|")
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun |c_main_#t~nondet0| () Int)
(declare-fun |c_main_#t~nondet1| () Int)
(declare-fun |c_main_#t~nondet2| () Int)
(declare-fun c_main_~x~0 () Int)
(declare-fun c_main_~x~0_primed () Int)
(declare-fun c_main_~y~0 () Int)
(declare-fun c_main_~y~0_primed () Int)
(declare-fun c_main_~z~0 () Int)
(declare-fun c_main_~z~0_primed () Int)
(assert (and (= c_main_~y~0_primed (+ (* 4 |c_main_#t~nondet1|) c_main_~y~0)) (= c_main_~z~0_primed (+ (* 8 |c_main_#t~nondet2|) c_main_~z~0)) (= c_main_~x~0_primed (+ (* 2 |c_main_#t~nondet0|) c_main_~x~0))))
(assert (and (exists ((|v_main_#t~nondet2_5| Int) (|v_main_#t~nondet2_6| Int)) (= c_main_~z~0 (+ (* 8 |v_main_#t~nondet2_5|) (* 8 |v_main_#t~nondet2_6|)))) (exists ((|v_main_#t~nondet1_6| Int) (|v_main_#t~nondet1_5| Int)) (= (+ (* 4 |v_main_#t~nondet1_6|) (* 4 |v_main_#t~nondet1_5|)) c_main_~y~0)) (exists ((|v_main_#t~nondet0_5| Int) (|v_main_#t~nondet0_6| Int)) (= (+ (* 2 |v_main_#t~nondet0_5|) (* 2 |v_main_#t~nondet0_6|)) c_main_~x~0))))
(assert (not (and (exists ((|v_main_#t~nondet1_5| Int)) (= (* 4 |v_main_#t~nondet1_5|) c_main_~y~0_primed)) (exists ((|v_main_#t~nondet0_5| Int)) (= (* 2 |v_main_#t~nondet0_5|) c_main_~x~0_primed)) (exists ((|v_main_#t~nondet2_5| Int)) (= (* 8 |v_main_#t~nondet2_5|) c_main_~z~0_primed)))))
(check-sat)
(exit)
