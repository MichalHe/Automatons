(set-info :smt-lib-version 2.6)
(set-logic LIA)
(set-info
  :source |
 Generated by PSyCO 0.1
 More info in N. P. Lopes and J. Monteiro. Weakest Precondition Synthesis for
 Compiler Optimizations, VMCAI'14.
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun W_S1_V6 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun W_S1_V3 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_E2_V1 () Bool)
(declare-fun R_E1_V3 () Bool)
(declare-fun R_E1_V1 () Bool)
(declare-fun R_E1_V6 () Bool)
(declare-fun R_E1_V4 () Bool)
(declare-fun R_E1_V5 () Bool)
(declare-fun R_E1_V2 () Bool)
(declare-fun DISJ_W_S1_R_E1 () Bool)
(declare-fun R_S1_V6 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun R_E2_V6 () Bool)
(declare-fun R_E2_V4 () Bool)
(declare-fun R_E2_V5 () Bool)
(declare-fun R_E2_V2 () Bool)
(declare-fun DISJ_W_S1_R_E2 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun R_E2_V3 () Bool)
(assert
 (let
 (($x60903
   (forall
    ((V1_0 Int) (V3_0 Int) 
     (V2_0 Int) (V5_0 Int) 
     (V4_0 Int) (V6_0 Int) 
     (MW_S1_V1 Bool) (MW_S1_V3 Bool) 
     (MW_S1_V2 Bool) (MW_S1_V5 Bool) 
     (MW_S1_V4 Bool) (MW_S1_V6 Bool) 
     (S1_V1_!5123 Int) (S1_V3_!5124 Int) 
     (S1_V2_!5125 Int) (E1_!5120 Int) 
     (E1_!5129 Int) (E1_!5131 Int) 
     (S1_V5_!5126 Int) (E2_!5121 Int) 
     (E2_!5122 Int) (E2_!5130 Int) 
     (S1_V4_!5127 Int) (S1_V6_!5128 Int))
    (let ((?x61269 (ite MW_S1_V6 S1_V6_!5128 V6_0)))
    (let (($x59911 (= ?x61269 V6_0)))
    (let ((?x61184 (ite MW_S1_V4 S1_V4_!5127 V4_0)))
    (let (($x61172 (= ?x61184 V4_0)))
    (let ((?x62698 (ite MW_S1_V5 S1_V5_!5126 V5_0)))
    (let (($x60281 (= ?x62698 V5_0)))
    (let ((?x62577 (ite MW_S1_V2 S1_V2_!5125 V2_0)))
    (let (($x62571 (= ?x62577 V2_0)))
    (let ((?x61419 (ite MW_S1_V3 S1_V3_!5124 E2_!5122)))
    (let (($x60257 (= ?x61419 E2_!5130)))
    (let ((?x62550 (+ (- 1) E1_!5131)))
    (let ((?x60993 (ite MW_S1_V1 S1_V1_!5123 E1_!5120)))
    (let (($x61001 (= ?x60993 ?x62550)))
    (let (($x61267 (and $x61001 $x60257 $x62571 $x60281 $x61172 $x59911)))
    (let ((?x61287 (+ (- 1) V4_0)))
    (let (($x62410 (>= E2_!5130 ?x61287)))
    (let (($x61435 (>= E1_!5131 V2_0)))
    (let (($x61202 (<= V4_0 E2_!5130)))
    (let (($x62658 (not $x61202)))
    (let (($x61032 (<= V2_0 E1_!5129)))
    (let (($x59974 (not $x61032)))
    (let ((?x62467 (+ (- 1) ?x62577)))
    (let (($x62720 (>= ?x60993 ?x62467)))
    (let ((?x62623 (+ (- 1) ?x61184)))
    (let (($x60259 (>= ?x61419 ?x62623)))
    (let (($x62653 (<= V4_0 E2_!5122)))
    (let (($x62575 (not $x62653)))
    (let (($x61224 (<= V2_0 E1_!5120)))
    (let (($x59938 (not $x61224)))
    (let (($x62256 (<= V4_0 E2_!5121)))
    (let (($x60941 (not $x62256)))
    (let
    (($x62544
      (and $x60941 $x59938 $x62575 $x60259 $x62720 $x59974 $x62658 $x61435
      $x62410)))
    (let (($x60253 (not $x62544)))
    (let (($x62312 (not MW_S1_V6)))
    (let (($x61078 (or $x62312 W_S1_V6)))
    (let (($x61046 (not MW_S1_V4)))
    (let (($x60955 (or $x61046 W_S1_V4)))
    (let (($x61297 (not MW_S1_V2)))
    (let (($x61263 (or $x61297 W_S1_V2)))
    (let (($x60069 (not MW_S1_V3)))
    (let (($x62508 (or $x60069 W_S1_V3)))
    (let (($x59872 (not MW_S1_V1)))
    (let (($x61040 (or $x59872 W_S1_V1)))
    (let (($x59847 (= E2_!5130 E2_!5122)))
    (let (($x62416 (= E1_!5129 E1_!5120)))
    (let (($x128 (not R_E2_V1)))
    (let (($x59873 (or $x128 $x62416)))
    (let (($x61246 (not $x59873)))
    (let (($x61244 (or $x61246 $x59847)))
    (let (($x61238 (= E2_!5121 E2_!5130)))
    (let (($x60086 (= E1_!5120 E1_!5129)))
    (let (($x62468 (or $x128 $x60086)))
    (let (($x62445 (not $x62468)))
    (let (($x60108 (or $x62445 $x61238)))
    (let (($x61449 (= E2_!5121 E2_!5122)))
    (let (($x61148 (= E1_!5131 E1_!5129)))
    (let (($x61011 (= E2_!5130 V3_0)))
    (let (($x115 (not R_E1_V3)))
    (let (($x60197 (or $x115 $x61011)))
    (let (($x62296 (= E1_!5129 V1_0)))
    (let (($x113 (not R_E1_V1)))
    (let (($x62263 (or $x113 $x62296)))
    (let (($x60161 (and $x62263 $x60197)))
    (let (($x61425 (not $x60161)))
    (let (($x60137 (or $x61425 $x61148)))
    (let (($x61389 (= E1_!5131 E1_!5120)))
    (let (($x62415 (or $x61425 $x61389)))
    (let
    (($x61321
      (and $x62416 $x62415 $x60137 $x61449 $x60108 $x61244 $x61040 $x62508
      $x61263 $x60955 $x61078)))
    (let (($x61315 (not $x61321))) (or $x61315 $x60253 $x61267)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let (($x56 (and W_S1_V6 R_E1_V6)))
 (let (($x54 (and W_S1_V4 R_E1_V4)))
 (let (($x50 (and W_S1_V2 R_E1_V2)))
 (let (($x48 (and W_S1_V3 R_E1_V3)))
 (let (($x46 (and W_S1_V1 R_E1_V1)))
 (let (($x69 (or $x46 $x48 $x50 R_E1_V5 $x54 $x56)))
 (let (($x70 (not $x69)))
 (let (($x71 (= DISJ_W_S1_R_E1 $x70)))
 (let (($x40 (and W_S1_V6 R_S1_V6)))
 (let (($x38 (and W_S1_V4 R_S1_V4)))
 (let (($x34 (and W_S1_V2 R_S1_V2)))
 (let (($x32 (and W_S1_V3 R_S1_V3)))
 (let (($x30 (and W_S1_V1 R_S1_V1)))
 (let (($x66 (or $x30 $x32 $x34 R_S1_V5 $x38 $x40)))
 (let (($x67 (not $x66)))
 (let (($x68 (= DISJ_W_S1_R_S1 $x67)))
 (let (($x24 (and W_S1_V6 R_E2_V6)))
 (let (($x21 (and W_S1_V4 R_E2_V4)))
 (let (($x16 (and W_S1_V2 R_E2_V2)))
 (let (($x10 (and W_S1_V1 R_E2_V1)))
 (let (($x59868 (or $x10 $x16 R_E2_V5 $x21 $x24)))
 (let (($x60087 (not $x59868)))
 (let (($x60962 (= DISJ_W_S1_R_E2 $x60087)))
 (let (($x130 (not R_E2_V3))) (and $x130 W_S1_V5 $x60962 $x68 $x71 $x60903)))))))))))))))))))))))))))
(assert
 (let (($x115 (not R_E1_V3)))
 (let (($x113 (not R_E1_V1)))
 (let (($x60916 (and $x113 $x115))) (not $x60916)))))
(check-sat)
(exit)

