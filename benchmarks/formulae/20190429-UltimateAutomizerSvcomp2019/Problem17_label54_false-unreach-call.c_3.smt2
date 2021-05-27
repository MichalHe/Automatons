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
(declare-fun c_~a24~0 () Int)
(declare-fun c_~a21~0 () Int)
(declare-fun |c_old(~a26~0)| () Int)
(declare-fun c_~a26~0 () Int)
(declare-fun c_~a14~0 () Int)
(declare-fun c_~a14~0_primed () Int)
(declare-fun c_~a28~0 () Int)
(declare-fun c_~a28~0_primed () Int)
(declare-fun |c_calculate_output_#res_primed| () Int)
(declare-fun c_calculate_output_~input () Int)
(assert (and (= 2 c_~a24~0) (= c_calculate_output_~input 6) (= |c_calculate_output_#res_primed| 25) (= c_~a14~0_primed (+ (let ((.cse0 (let ((.cse2 (* 9 c_~a14~0))) (let ((.cse3 (div .cse2 10))) (ite (and (< .cse2 0) (not (= 0 (mod .cse2 10)))) (+ .cse3 1) .cse3))))) (let ((.cse1 (mod (+ .cse0 6) 14))) (ite (and (< .cse0 48560) (not (= 0 .cse1))) (+ .cse1 (- 14)) .cse1))) (- 98))) (= c_~a28~0_primed (+ (let ((.cse4 (mod c_~a28~0 82))) (ite (and (< c_~a28~0 0) (not (= .cse4 0))) (+ .cse4 (- 82)) .cse4)) 217)) (<= c_~a21~0 127) (<= (+ c_~a26~0 68) 0) (or (<= c_~a28~0 37) (and (<= c_~a28~0 134) (< 37 c_~a28~0))) (<= (+ c_~a14~0 182) 0)))
(assert (and (exists ((v_~a26~0_1267 Int)) (let ((.cse0 (* 9 v_~a26~0_1267))) (and (< 217 v_~a26~0_1267) (<= 0 .cse0) (<= (+ c_~a26~0 554854) (div .cse0 10)) (<= v_~a26~0_1267 222)))) (<= c_~a26~0 |c_old(~a26~0)|)))
(assert (not (exists ((v_~a26~0_1267 Int)) (let ((.cse0 (* 9 v_~a26~0_1267))) (and (< 217 v_~a26~0_1267) (<= 0 .cse0) (<= v_~a26~0_1267 |c_old(~a26~0)|) (<= (+ c_~a26~0 554854) (div .cse0 10)))))))
(check-sat)
(exit)
