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
(declare-fun R_E1_V6 () Bool)
(declare-fun W_S1_V6 () Bool)
(declare-fun R_E1_V4 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun W_S1_V3 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_S1_V6 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun R_E2_V1 () Bool)
(declare-fun R_E1_V2 () Bool)
(declare-fun R_E1_V5 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun R_E2_V6 () Bool)
(declare-fun R_E2_V4 () Bool)
(declare-fun R_E2_V5 () Bool)
(declare-fun DISJ_W_S1_R_E2 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun R_E1_V3 () Bool)
(declare-fun R_E1_V1 () Bool)
(declare-fun R_E2_V3 () Bool)
(declare-fun DISJ_W_S1_R_E1 () Bool)
(assert
 (let
 (($x64904
   (forall
    ((V2_0 Int) (V5_0 Int) 
     (V4_0 Int) (V6_0 Int) 
     (MW_S1_V1 Bool) (MW_S1_V3 Bool) 
     (MW_S1_V2 Bool) (MW_S1_V5 Bool) 
     (MW_S1_V4 Bool) (MW_S1_V6 Bool) 
     (S1_V1_!7478 Int) (S1_V1_!7484 Int) 
     (S1_V1_!7493 Int) (S1_V1_!7499 Int) 
     (S1_V1_!7506 Int) (S1_V3_!7479 Int) 
     (S1_V3_!7485 Int) (S1_V3_!7494 Int) 
     (S1_V3_!7500 Int) (S1_V3_!7507 Int) 
     (S1_V2_!7480 Int) (S1_V2_!7486 Int) 
     (S1_V2_!7495 Int) (S1_V2_!7501 Int) 
     (S1_V2_!7508 Int) (E1_!7475 Int) 
     (E1_!7490 Int) (E1_!7492 Int) 
     (E1_!7505 Int) (S1_V5_!7481 Int) 
     (S1_V5_!7487 Int) (S1_V5_!7496 Int) 
     (S1_V5_!7502 Int) (S1_V5_!7509 Int) 
     (E2_!7476 Int) (E2_!7477 Int) 
     (E2_!7491 Int) (S1_V4_!7482 Int) 
     (S1_V4_!7488 Int) (S1_V4_!7497 Int) 
     (S1_V4_!7503 Int) (S1_V4_!7510 Int) 
     (S1_V6_!7483 Int) (S1_V6_!7489 Int) 
     (S1_V6_!7498 Int) (S1_V6_!7504 Int) 
     (S1_V6_!7511 Int))
    (let ((?x61023 (ite MW_S1_V3 S1_V3_!7500 E2_!7491)))
    (let ((?x62777 (+ 1 ?x61023)))
    (let ((?x65112 (ite MW_S1_V3 S1_V3_!7507 ?x62777)))
    (let ((?x63371 (ite MW_S1_V3 S1_V3_!7479 E2_!7477)))
    (let ((?x64962 (+ 1 ?x63371)))
    (let ((?x61313 (ite MW_S1_V3 S1_V3_!7485 ?x64962)))
    (let
    (($x64833
      (and
      (= (ite MW_S1_V1 S1_V1_!7484 E1_!7475)
      (ite MW_S1_V1 S1_V1_!7506 E1_!7505)) 
      (= ?x61313 ?x65112)
      (= (ite MW_S1_V2 S1_V2_!7486 V2_0) (ite MW_S1_V2 S1_V2_!7508 V2_0))
      (= (ite MW_S1_V5 S1_V5_!7487 V5_0) (ite MW_S1_V5 S1_V5_!7509 V5_0))
      (= (ite MW_S1_V4 S1_V4_!7488 V4_0) (ite MW_S1_V4 S1_V4_!7510 V4_0))
      (= (ite MW_S1_V6 S1_V6_!7489 V6_0) (ite MW_S1_V6 S1_V6_!7511 V6_0)))))
    (let
    (($x60215
      (>=
      (ite MW_S1_V1 S1_V1_!7499 (+ 1 (ite MW_S1_V1 S1_V1_!7493 E1_!7492)))
      (+ (- 1) (ite MW_S1_V2 S1_V2_!7501 V2_0)))))
    (let
    (($x63108
      (and (not (<= V4_0 E2_!7476)) 
      (not (<= V2_0 E1_!7475)) 
      (not (<= V4_0 E2_!7477))
      (not (<= (ite MW_S1_V4 S1_V4_!7482 V4_0) ?x64962))
      (>= ?x61313 (+ (- 1) (ite MW_S1_V4 S1_V4_!7488 V4_0)))
      (>= (ite MW_S1_V1 S1_V1_!7484 E1_!7475)
      (+ (- 1) (ite MW_S1_V2 S1_V2_!7486 V2_0))) 
      (not (<= V2_0 E1_!7490)) 
      (not (<= V4_0 E2_!7491)) 
      (not (<= V2_0 E1_!7492))
      (not
      (<= (ite MW_S1_V2 S1_V2_!7495 V2_0)
      (+ 1 (ite MW_S1_V1 S1_V1_!7493 E1_!7492)))) $x60215
      (not (<= (ite MW_S1_V4 S1_V4_!7503 V4_0) ?x62777))
      (not (<= (ite MW_S1_V2 S1_V2_!7501 V2_0) E1_!7505))
      (>= (ite MW_S1_V1 S1_V1_!7506 E1_!7505)
      (+ (- 1) (ite MW_S1_V2 S1_V2_!7508 V2_0)))
      (>= ?x65112 (+ (- 1) (ite MW_S1_V4 S1_V4_!7510 V4_0))))))
    (let
    (($x64341
      (and
      (or (not R_S1_V1)
      (= E1_!7505 (+ 1 (ite MW_S1_V1 S1_V1_!7493 E1_!7492))))
      (or (not R_S1_V3)
      (= ?x61023 (+ (- 1) (ite MW_S1_V3 S1_V3_!7494 E2_!7491))))
      (or (not R_S1_V2)
      (= (ite MW_S1_V2 S1_V2_!7501 V2_0) (ite MW_S1_V2 S1_V2_!7495 V2_0)))
      (or (not R_S1_V5)
      (= (ite MW_S1_V5 S1_V5_!7502 V5_0) (ite MW_S1_V5 S1_V5_!7496 V5_0)))
      (or (not R_S1_V4)
      (= (ite MW_S1_V4 S1_V4_!7503 V4_0) (ite MW_S1_V4 S1_V4_!7497 V4_0)))
      (or (not R_S1_V6)
      (= (ite MW_S1_V6 S1_V6_!7504 V6_0) (ite MW_S1_V6 S1_V6_!7498 V6_0))))))
    (let (($x62912 (not $x64341)))
    (let
    (($x62798
      (and
      (or (not R_S1_V1) (= E1_!7505 (ite MW_S1_V1 S1_V1_!7478 E1_!7475)))
      (or (not R_S1_V3) (= ?x61023 ?x63371))
      (or (not R_S1_V2)
      (= (ite MW_S1_V2 S1_V2_!7501 V2_0) (ite MW_S1_V2 S1_V2_!7480 V2_0)))
      (or (not R_S1_V5)
      (= (ite MW_S1_V5 S1_V5_!7502 V5_0) (ite MW_S1_V5 S1_V5_!7481 V5_0)))
      (or (not R_S1_V4)
      (= (ite MW_S1_V4 S1_V4_!7503 V4_0) (ite MW_S1_V4 S1_V4_!7482 V4_0)))
      (or (not R_S1_V6)
      (= (ite MW_S1_V6 S1_V6_!7504 V6_0) (ite MW_S1_V6 S1_V6_!7483 V6_0))))))
    (let (($x64487 (not $x62798)))
    (let (($x207 (not R_S1_V6)))
    (let (($x62616 (or $x207 (= (ite MW_S1_V6 S1_V6_!7504 V6_0) V6_0))))
    (let (($x205 (not R_S1_V4)))
    (let (($x62910 (or $x205 (= (ite MW_S1_V4 S1_V4_!7503 V4_0) V4_0))))
    (let (($x203 (not R_S1_V5)))
    (let (($x60231 (or $x203 (= (ite MW_S1_V5 S1_V5_!7502 V5_0) V5_0))))
    (let (($x201 (not R_S1_V2)))
    (let (($x62817 (or $x201 (= (ite MW_S1_V2 S1_V2_!7501 V2_0) V2_0))))
    (let
    (($x62522
      (and (or (not R_S1_V1) (= E1_!7505 E1_!7475))
      (or (not R_S1_V3) (= ?x61023 (+ (- 1) E2_!7477))) $x62817 $x60231
      $x62910 $x62616)))
    (let (($x63196 (not $x62522)))
    (let (($x197 (not R_S1_V1)))
    (let
    (($x60079
      (and
      (or $x197
      (= (ite MW_S1_V1 S1_V1_!7493 E1_!7492)
      (+ (- 1) (ite MW_S1_V1 S1_V1_!7478 E1_!7475))))
      (or (not R_S1_V3) (= (ite MW_S1_V3 S1_V3_!7494 E2_!7491) ?x64962))
      (or $x201
      (= (ite MW_S1_V2 S1_V2_!7495 V2_0) (ite MW_S1_V2 S1_V2_!7480 V2_0)))
      (or $x203
      (= (ite MW_S1_V5 S1_V5_!7496 V5_0) (ite MW_S1_V5 S1_V5_!7481 V5_0)))
      (or $x205
      (= (ite MW_S1_V4 S1_V4_!7497 V4_0) (ite MW_S1_V4 S1_V4_!7482 V4_0)))
      (or $x207
      (= (ite MW_S1_V6 S1_V6_!7498 V6_0) (ite MW_S1_V6 S1_V6_!7483 V6_0))))))
    (let (($x62727 (not $x60079)))
    (let (($x61026 (or $x207 (= (ite MW_S1_V6 S1_V6_!7498 V6_0) V6_0))))
    (let (($x60281 (or $x205 (= (ite MW_S1_V4 S1_V4_!7497 V4_0) V4_0))))
    (let (($x63027 (or $x203 (= (ite MW_S1_V5 S1_V5_!7496 V5_0) V5_0))))
    (let (($x59863 (or $x201 (= (ite MW_S1_V2 S1_V2_!7495 V2_0) V2_0))))
    (let
    (($x62996
      (and
      (or $x197 (= (ite MW_S1_V1 S1_V1_!7493 E1_!7492) (+ (- 1) E1_!7475)))
      (or (not R_S1_V3) (= (ite MW_S1_V3 S1_V3_!7494 E2_!7491) E2_!7477))
      $x59863 $x63027 $x60281 $x61026)))
    (let (($x62800 (not $x62996)))
    (let (($x60921 (or $x207 (= V6_0 (ite MW_S1_V6 S1_V6_!7504 V6_0)))))
    (let (($x63333 (or $x205 (= V4_0 (ite MW_S1_V4 S1_V4_!7503 V4_0)))))
    (let (($x63387 (or $x203 (= V5_0 (ite MW_S1_V5 S1_V5_!7502 V5_0)))))
    (let (($x64919 (or $x201 (= V2_0 (ite MW_S1_V2 S1_V2_!7501 V2_0)))))
    (let
    (($x64781
      (and (or $x197 (= E1_!7492 E1_!7505))
      (or (not R_S1_V3) (= E2_!7491 ?x62777)) $x64919 $x63387 $x63333
      $x60921)))
    (let (($x63073 (or $x207 (= V6_0 (ite MW_S1_V6 S1_V6_!7498 V6_0)))))
    (let (($x59856 (or $x205 (= V4_0 (ite MW_S1_V4 S1_V4_!7497 V4_0)))))
    (let (($x62429 (or $x203 (= V5_0 (ite MW_S1_V5 S1_V5_!7496 V5_0)))))
    (let (($x61148 (or $x201 (= V2_0 (ite MW_S1_V2 S1_V2_!7495 V2_0)))))
    (let
    (($x62984
      (and (or $x197 (= E1_!7492 (+ 1 (ite MW_S1_V1 S1_V1_!7493 E1_!7492))))
      (or (not R_S1_V3) (= E2_!7491 (ite MW_S1_V3 S1_V3_!7494 E2_!7491)))
      $x61148 $x62429 $x59856 $x63073)))
    (let (($x62904 (not $x62984)))
    (let (($x62758 (or $x207 (= V6_0 (ite MW_S1_V6 S1_V6_!7483 V6_0)))))
    (let (($x62700 (or $x205 (= V4_0 (ite MW_S1_V4 S1_V4_!7482 V4_0)))))
    (let (($x62534 (or $x203 (= V5_0 (ite MW_S1_V5 S1_V5_!7481 V5_0)))))
    (let (($x60912 (or $x201 (= V2_0 (ite MW_S1_V2 S1_V2_!7480 V2_0)))))
    (let
    (($x62345
      (and (or $x197 (= E1_!7492 (ite MW_S1_V1 S1_V1_!7478 E1_!7475)))
      (or (not R_S1_V3) (= E2_!7491 ?x64962)) $x60912 $x62534 $x62700
      $x62758)))
    (let (($x62691 (not $x62345)))
    (let
    (($x62895
      (not
      (and (or $x197 (= E1_!7492 E1_!7475))
      (or (not R_S1_V3) (= E2_!7491 E2_!7477))))))
    (let
    (($x62504
      (and (or $x197 (= E1_!7475 (ite MW_S1_V1 S1_V1_!7478 E1_!7475)))
      (or (not R_S1_V3) (= E2_!7477 ?x64962)) $x60912 $x62534 $x62700
      $x62758)))
    (let (($x61447 (not $x62504)))
    (let
    (($x64886
      (and (or $x197 (= E1_!7505 E1_!7492))
      (or (not R_S1_V3) (= ?x61023 (+ (- 1) E2_!7491))) $x62817 $x60231
      $x62910 $x62616)))
    (let (($x63379 (not $x64886)))
    (let
    (($x65128
      (and
      (or $x197 (= (ite MW_S1_V1 S1_V1_!7493 E1_!7492) (+ (- 1) E1_!7505)))
      (or (not R_S1_V3) (= (ite MW_S1_V3 S1_V3_!7494 E2_!7491) ?x62777))
      (or $x201
      (= (ite MW_S1_V2 S1_V2_!7495 V2_0) (ite MW_S1_V2 S1_V2_!7501 V2_0)))
      (or $x203
      (= (ite MW_S1_V5 S1_V5_!7496 V5_0) (ite MW_S1_V5 S1_V5_!7502 V5_0)))
      (or $x205
      (= (ite MW_S1_V4 S1_V4_!7497 V4_0) (ite MW_S1_V4 S1_V4_!7503 V4_0)))
      (or $x207
      (= (ite MW_S1_V6 S1_V6_!7498 V6_0) (ite MW_S1_V6 S1_V6_!7504 V6_0))))))
    (let (($x62762 (not $x65128)))
    (let
    (($x59882
      (and
      (or $x197 (= (ite MW_S1_V1 S1_V1_!7493 E1_!7492) (+ (- 1) E1_!7492)))
      (or (not R_S1_V3) (= (ite MW_S1_V3 S1_V3_!7494 E2_!7491) E2_!7491))
      $x59863 $x63027 $x60281 $x61026)))
    (let (($x62663 (not $x59882)))
    (let
    (($x60261
      (and (or $x197 (= E1_!7475 E1_!7505))
      (or (not R_S1_V3) (= E2_!7477 ?x62777)) $x64919 $x63387 $x63333
      $x60921)))
    (let
    (($x62947
      (not
      (and (or $x197 (= E1_!7475 E1_!7492))
      (or (not R_S1_V3) (= E2_!7477 E2_!7491))))))
    (let
    (($x59943
      (and (or $x197 (= E1_!7475 (+ 1 (ite MW_S1_V1 S1_V1_!7493 E1_!7492))))
      (or (not R_S1_V3) (= E2_!7477 (ite MW_S1_V3 S1_V3_!7494 E2_!7491)))
      $x61148 $x62429 $x59856 $x63073)))
    (let (($x63162 (= E1_!7492 E1_!7505)))
    (let
    (($x64689
      (and (or (not R_E1_V2) (= V2_0 (ite MW_S1_V2 S1_V2_!7501 V2_0)))
      (or (not R_E1_V4) (= V4_0 (ite MW_S1_V4 S1_V4_!7503 V4_0)))
      (or (not R_E1_V6) (= V6_0 (ite MW_S1_V6 S1_V6_!7504 V6_0))))))
    (let (($x65118 (not $x64689)))
    (let (($x61329 (= E1_!7492 E1_!7475)))
    (let (($x62577 (= E1_!7490 E1_!7475)))
    (let
    (($x64312
      (and (or $x197 (= (ite MW_S1_V1 S1_V1_!7478 E1_!7475) E1_!7505))
      (or (not R_S1_V3) (= ?x63371 ?x61023))
      (or $x201
      (= (ite MW_S1_V2 S1_V2_!7480 V2_0) (ite MW_S1_V2 S1_V2_!7501 V2_0)))
      (or $x203
      (= (ite MW_S1_V5 S1_V5_!7481 V5_0) (ite MW_S1_V5 S1_V5_!7502 V5_0)))
      (or $x205
      (= (ite MW_S1_V4 S1_V4_!7482 V4_0) (ite MW_S1_V4 S1_V4_!7503 V4_0)))
      (or $x207
      (= (ite MW_S1_V6 S1_V6_!7483 V6_0) (ite MW_S1_V6 S1_V6_!7504 V6_0))))))
    (let
    (($x63156
      (and
      (or $x197
      (= (ite MW_S1_V1 S1_V1_!7478 E1_!7475)
      (+ 1 (ite MW_S1_V1 S1_V1_!7493 E1_!7492))))
      (or (not R_S1_V3)
      (= ?x63371 (+ (- 1) (ite MW_S1_V3 S1_V3_!7494 E2_!7491))))
      (or $x201
      (= (ite MW_S1_V2 S1_V2_!7480 V2_0) (ite MW_S1_V2 S1_V2_!7495 V2_0)))
      (or $x203
      (= (ite MW_S1_V5 S1_V5_!7481 V5_0) (ite MW_S1_V5 S1_V5_!7496 V5_0)))
      (or $x205
      (= (ite MW_S1_V4 S1_V4_!7482 V4_0) (ite MW_S1_V4 S1_V4_!7497 V4_0)))
      (or $x207
      (= (ite MW_S1_V6 S1_V6_!7483 V6_0) (ite MW_S1_V6 S1_V6_!7498 V6_0))))))
    (let (($x62938 (or $x207 (= (ite MW_S1_V6 S1_V6_!7483 V6_0) V6_0))))
    (let (($x62318 (or $x205 (= (ite MW_S1_V4 S1_V4_!7482 V4_0) V4_0))))
    (let (($x62433 (or $x203 (= (ite MW_S1_V5 S1_V5_!7481 V5_0) V5_0))))
    (let (($x62807 (or $x201 (= (ite MW_S1_V2 S1_V2_!7480 V2_0) V2_0))))
    (let
    (($x62297
      (and (or $x197 (= (ite MW_S1_V1 S1_V1_!7478 E1_!7475) E1_!7492))
      (or (not R_S1_V3) (= ?x63371 (+ (- 1) E2_!7491))) $x62807 $x62433
      $x62318 $x62938)))
    (let (($x62325 (not $x62297)))
    (let
    (($x61096
      (and (or $x197 (= (ite MW_S1_V1 S1_V1_!7478 E1_!7475) E1_!7475))
      (or (not R_S1_V3) (= ?x63371 (+ (- 1) E2_!7477))) $x62807 $x62433
      $x62318 $x62938)))
    (let
    (($x64853
      (and (or $x61447 (= S1_V1_!7478 S1_V1_!7484))
      (or $x62947 (= S1_V1_!7478 S1_V1_!7493))
      (or $x62325 (= S1_V1_!7484 S1_V1_!7493))
      (or $x62800 (= S1_V1_!7499 S1_V1_!7478))
      (or $x62727 (= S1_V1_!7499 S1_V1_!7484))
      (or $x62663 (= S1_V1_!7499 S1_V1_!7493))
      (or $x62762 (= S1_V1_!7499 S1_V1_!7506))
      (or $x63196 (= S1_V1_!7506 S1_V1_!7478))
      (or $x64487 (= S1_V1_!7506 S1_V1_!7484))
      (or $x63379 (= S1_V1_!7506 S1_V1_!7493))
      (or (not $x61096) (= S1_V3_!7485 S1_V3_!7479))
      (or $x62325 (= S1_V3_!7485 S1_V3_!7494))
      (or (not $x63156) (= S1_V3_!7485 S1_V3_!7500))
      (or (not $x64312) (= S1_V3_!7485 S1_V3_!7507))
      (or $x62895 (= S1_V3_!7494 S1_V3_!7479))
      (or $x62904 (= S1_V3_!7494 S1_V3_!7500))
      (or (not $x64781) (= S1_V3_!7494 S1_V3_!7507))
      (or $x62800 (= S1_V3_!7500 S1_V3_!7479))
      (or $x62762 (= S1_V3_!7500 S1_V3_!7507))
      (or $x63196 (= S1_V3_!7507 S1_V3_!7479))
      (or $x62947 (= S1_V2_!7480 S1_V2_!7495))
      (or (not $x61096) (= S1_V2_!7486 S1_V2_!7480))
      (or $x62325 (= S1_V2_!7486 S1_V2_!7495))
      (or (not $x63156) (= S1_V2_!7486 S1_V2_!7501))
      (or (not $x64312) (= S1_V2_!7486 S1_V2_!7508))
      (or $x62800 (= S1_V2_!7501 S1_V2_!7480))
      (or $x62663 (= S1_V2_!7501 S1_V2_!7495))
      (or $x63196 (= S1_V2_!7508 S1_V2_!7480))
      (or $x63379 (= S1_V2_!7508 S1_V2_!7495))
      (or $x62912 (= S1_V2_!7508 S1_V2_!7501))
      (or $x65118 (= E1_!7475 E1_!7505)) $x62577 
      (= E1_!7490 E1_!7492) 
      (or $x65118 (= E1_!7490 E1_!7505)) $x61329 
      (or $x65118 $x63162) 
      (or $x61447 (= S1_V5_!7481 S1_V5_!7487))
      (or $x62947 (= S1_V5_!7481 S1_V5_!7496))
      (or (not $x59943) (= S1_V5_!7481 S1_V5_!7502))
      (or $x62691 (= S1_V5_!7496 S1_V5_!7487))
      (or $x62904 (= S1_V5_!7496 S1_V5_!7502))
      (or $x62727 (= S1_V5_!7502 S1_V5_!7487))
      (or $x63196 (= S1_V5_!7509 S1_V5_!7481))
      (or $x64487 (= S1_V5_!7509 S1_V5_!7487))
      (or $x63379 (= S1_V5_!7509 S1_V5_!7496))
      (or $x62912 (= S1_V5_!7509 S1_V5_!7502)) 
      (= E2_!7476 E2_!7477)
      (or (not (or (not R_E2_V1) $x62577)) (= E2_!7491 E2_!7476))
      (or (not (or (not R_E2_V1) $x62577)) (= E2_!7491 E2_!7477))
      (or $x61447 (= S1_V4_!7482 S1_V4_!7488))
      (or $x62947 (= S1_V4_!7482 S1_V4_!7497))
      (or (not $x60261) (= S1_V4_!7482 S1_V4_!7510))
      (or $x62691 (= S1_V4_!7497 S1_V4_!7488))
      (or $x62800 (= S1_V4_!7503 S1_V4_!7482))
      (or $x62727 (= S1_V4_!7503 S1_V4_!7488))
      (or $x62663 (= S1_V4_!7503 S1_V4_!7497))
      (or $x62762 (= S1_V4_!7503 S1_V4_!7510))
      (or $x64487 (= S1_V4_!7510 S1_V4_!7488))
      (or $x63379 (= S1_V4_!7510 S1_V4_!7497))
      (or $x61447 (= S1_V6_!7483 S1_V6_!7489))
      (or $x62895 (= S1_V6_!7498 S1_V6_!7483))
      (or $x62691 (= S1_V6_!7498 S1_V6_!7489))
      (or $x62904 (= S1_V6_!7498 S1_V6_!7504))
      (or (not $x64781) (= S1_V6_!7498 S1_V6_!7511))
      (or $x62800 (= S1_V6_!7504 S1_V6_!7483))
      (or $x62727 (= S1_V6_!7504 S1_V6_!7489))
      (or $x63196 (= S1_V6_!7511 S1_V6_!7483))
      (or $x64487 (= S1_V6_!7511 S1_V6_!7489))
      (or $x62912 (= S1_V6_!7511 S1_V6_!7504)) 
      (or (not MW_S1_V1) W_S1_V1) 
      (or (not MW_S1_V3) W_S1_V3) 
      (not MW_S1_V2) (or (not MW_S1_V4) W_S1_V4) 
      (or (not MW_S1_V6) W_S1_V6))))
    (or (not $x64853) (not $x63108) $x64833))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let (($x119 (not R_E1_V5)))
 (let (($x40 (and W_S1_V6 R_S1_V6)))
 (let (($x38 (and W_S1_V4 R_S1_V4)))
 (let (($x32 (and W_S1_V3 R_S1_V3)))
 (let (($x30 (and W_S1_V1 R_S1_V1)))
 (let (($x24 (and W_S1_V6 R_E2_V6)))
 (let (($x21 (and W_S1_V4 R_E2_V4)))
 (let (($x10 (and W_S1_V1 R_E2_V1)))
 (let (($x197 (not R_S1_V1)))
 (let (($x59788 (not W_S1_V1)))
 (let (($x61243 (or DISJ_W_S1_R_S1 $x59788 $x197)))
 (let (($x59799 (not W_S1_V4)))
 (let (($x59792 (not W_S1_V3)))
 (let (($x62952 (and $x59792 $x59799)))
 (let
 (($x64964 (or DISJ_W_S1_R_S1 $x59788 $x62952 (and (not R_S1_V3) $x59799))))
 (let (($x59796 (not W_S1_V2)))
 (let (($x115 (not R_E1_V3)))
 (let (($x113 (not R_E1_V1)))
 (let (($x130 (not R_E2_V3)))
 (and DISJ_W_S1_R_E1 $x130 $x113 $x115 $x59796 $x64964 $x61243 W_S1_V5
 (= DISJ_W_S1_R_E2 (not (or $x10 R_E2_V5 $x21 $x24)))
 (= DISJ_W_S1_R_S1 (not (or $x30 $x32 R_S1_V5 $x38 $x40))) $x119 $x64904
 (not (and W_S1_V4 R_E1_V4)) 
 (not (and W_S1_V6 R_E1_V6))))))))))))))))))))))))
(assert (not DISJ_W_S1_R_S1))
(assert  W_S1_V1)
(check-sat)
(exit)

