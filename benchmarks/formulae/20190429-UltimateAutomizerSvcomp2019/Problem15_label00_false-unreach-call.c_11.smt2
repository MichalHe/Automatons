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
(set-info :status sat)
(declare-fun |c_old(~a29~0)| () Int)
(declare-fun c_~a29~0 () Int)
(assert (or (exists ((v_~a29~0_1040 Int)) (let ((.cse0 (div v_~a29~0_1040 5))) (and (<= c_~a29~0 (div (+ .cse0 (- 403018)) 5)) (<= 403018 .cse0) (< v_~a29~0_1040 0) (<= v_~a29~0_1040 |c_old(~a29~0)|) (not (= (mod v_~a29~0_1040 5) 0))))) (exists ((v_~a29~0_1040 Int)) (let ((.cse1 (div v_~a29~0_1040 5))) (and (<= v_~a29~0_1040 |c_old(~a29~0)|) (<= c_~a29~0 (div (+ .cse1 (- 403019)) 5)) (<= 403019 .cse1) (= (mod v_~a29~0_1040 5) 0)))) (exists ((v_~a29~0_1040 Int)) (let ((.cse2 (div v_~a29~0_1040 5))) (and (< .cse2 403019) (<= v_~a29~0_1040 |c_old(~a29~0)|) (= (mod v_~a29~0_1040 5) 0) (<= c_~a29~0 (+ (div (+ .cse2 (- 403019)) 5) 1)) (not (= 0 (mod (+ .cse2 1) 5)))))) (exists ((v_~a29~0_1040 Int)) (let ((.cse3 (div v_~a29~0_1040 5))) (and (<= 0 v_~a29~0_1040) (<= v_~a29~0_1040 |c_old(~a29~0)|) (= 0 (mod (+ .cse3 1) 5)) (<= c_~a29~0 (div (+ .cse3 (- 403019)) 5))))) (exists ((v_~a29~0_1040 Int)) (let ((.cse4 (div v_~a29~0_1040 5))) (and (<= v_~a29~0_1040 |c_old(~a29~0)|) (= 0 (mod (+ .cse4 1) 5)) (<= c_~a29~0 (div (+ .cse4 (- 403019)) 5)) (= (mod v_~a29~0_1040 5) 0)))) (exists ((v_~a29~0_1040 Int)) (let ((.cse5 (div v_~a29~0_1040 5))) (and (<= c_~a29~0 (+ (div (+ .cse5 (- 403018)) 5) 1)) (< v_~a29~0_1040 0) (<= v_~a29~0_1040 |c_old(~a29~0)|) (< .cse5 403018) (not (= (mod (+ .cse5 2) 5) 0)) (not (= (mod v_~a29~0_1040 5) 0))))) (exists ((v_~a29~0_1040 Int)) (let ((.cse6 (div v_~a29~0_1040 5))) (and (<= 0 v_~a29~0_1040) (< .cse6 403019) (<= v_~a29~0_1040 |c_old(~a29~0)|) (<= c_~a29~0 (+ (div (+ .cse6 (- 403019)) 5) 1)) (not (= 0 (mod (+ .cse6 1) 5)))))) (exists ((v_~a29~0_1040 Int)) (let ((.cse7 (div v_~a29~0_1040 5))) (and (= (mod (+ .cse7 2) 5) 0) (<= c_~a29~0 (div (+ .cse7 (- 403018)) 5)) (< v_~a29~0_1040 0) (<= v_~a29~0_1040 |c_old(~a29~0)|) (not (= (mod v_~a29~0_1040 5) 0))))) (exists ((v_~a29~0_1040 Int)) (let ((.cse8 (div v_~a29~0_1040 5))) (and (<= 0 v_~a29~0_1040) (<= v_~a29~0_1040 |c_old(~a29~0)|) (<= c_~a29~0 (div (+ .cse8 (- 403019)) 5)) (<= 403019 .cse8))))))
(assert (not (exists ((v_prenex_81 Int)) (let ((.cse0 (* 4 (div v_prenex_81 5)))) (and (<= 0 (+ .cse0 4)) (<= 0 v_prenex_81) (<= 0 .cse0) (<= c_~a29~0 (+ (mod .cse0 299978) 300021)))))))
(check-sat)
(exit)
