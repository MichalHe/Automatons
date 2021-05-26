(set-info :smt-lib-version 2.6)
(set-logic LIA)
(set-info
  :source |
 Generated by PSyCO 0.1
 More info in N. P. Lopes and J. Monteiro. Weakest Precondition Synthesis for
 Compiler Optimizations, VMCAI'14.
|)
(set-info :category "industrial")
(set-info :status sat)
(declare-fun W_S2_V5 () Bool)
(declare-fun W_S2_V2 () Bool)
(declare-fun W_S2_V3 () Bool)
(declare-fun W_S2_V1 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_S2_V4 () Bool)
(declare-fun R_S2_V5 () Bool)
(declare-fun R_S2_V2 () Bool)
(declare-fun R_S2_V3 () Bool)
(declare-fun R_S2_V1 () Bool)
(declare-fun R_B1_V4 () Bool)
(declare-fun R_B1_V5 () Bool)
(declare-fun R_B1_V2 () Bool)
(declare-fun R_B1_V3 () Bool)
(declare-fun R_B1_V1 () Bool)
(declare-fun DISJ_W_S2_R_B1 () Bool)
(declare-fun DISJ_W_S2_R_S2 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun DISJ_W_S2_R_S1 () Bool)
(declare-fun DISJ_W_S1_W_S2 () Bool)
(declare-fun DISJ_W_S1_R_B1 () Bool)
(declare-fun DISJ_W_S1_R_S2 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun W_S2_V4 () Bool)
(declare-fun W_S1_V3 () Bool)
(assert
 (let
 (($x2106
   (forall
    ((V1_0 Int) (V3_0 Int) 
     (V2_0 Int) (V5_0 Int) 
     (V4_0 Int) (MW_S1_V1 Bool) 
     (MW_S1_V3 Bool) (MW_S1_V2 Bool) 
     (MW_S1_V5 Bool) (MW_S1_V4 Bool) 
     (MW_S2_V1 Bool) (MW_S2_V3 Bool) 
     (MW_S2_V2 Bool) (MW_S2_V5 Bool) 
     (MW_S2_V4 Bool) (S2_V4_!277 Int) 
     (S2_V4_!289 Int) (S2_V4_!294 Int) 
     (B1_!272 Bool) (B1_!278 Bool) 
     (B1_!284 Bool) (S2_V5_!276 Int) 
     (S2_V5_!288 Int) (S2_V5_!293 Int) 
     (S1_V3_!280 Int) (S1_V2_!281 Int) 
     (S1_V1_!279 Int) (S1_V5_!282 Int) 
     (S1_V4_!283 Int) (S2_V1_!273 Int) 
     (S2_V1_!285 Int) (S2_V1_!290 Int) 
     (S2_V2_!275 Int) (S2_V2_!287 Int) 
     (S2_V2_!292 Int) (S2_V3_!274 Int) 
     (S2_V3_!286 Int) (S2_V3_!291 Int))
    (let
    (($x2075
      (= (ite MW_S1_V1 S1_V1_!279 (+ 1 (ite MW_S2_V1 S2_V1_!273 V1_0)))
      (ite MW_S2_V1 S2_V1_!290 (+ 1 (ite MW_S2_V1 S2_V1_!285 V1_0))))))
    (let
    (($x2236
      (and $x2075
      (= (ite MW_S1_V3 S1_V3_!280 (ite MW_S2_V3 S2_V3_!274 V3_0))
      (ite MW_S2_V3 S2_V3_!291 V3_0))
      (= (ite MW_S1_V2 S1_V2_!281 (ite MW_S2_V2 S2_V2_!275 V2_0))
      (ite MW_S2_V2 S2_V2_!292 V2_0))
      (= (ite MW_S1_V5 S1_V5_!282 (ite MW_S2_V5 S2_V5_!276 V5_0))
      (ite MW_S2_V5 S2_V5_!293 V5_0))
      (= (ite MW_S1_V4 S1_V4_!283 (ite MW_S2_V4 S2_V4_!277 V4_0))
      (ite MW_S2_V4 S2_V4_!294 V4_0)))))
    (let
    (($x2178
      (>= (ite MW_S2_V1 S2_V1_!290 (+ 1 (ite MW_S2_V1 S2_V1_!285 V1_0)))
      (+ (- 1) (ite MW_S2_V2 S2_V2_!292 V2_0)))))
    (let
    (($x2230
      (>= (ite MW_S1_V1 S1_V1_!279 (+ 1 (ite MW_S2_V1 S2_V1_!273 V1_0)))
      (+ (- 1) (ite MW_S1_V2 S1_V2_!281 (ite MW_S2_V2 S2_V2_!275 V2_0))))))
    (let
    (($x2036
      (and (not (<= V2_0 V1_0)) 
      (not B1_!272)
      (not
      (<= (ite MW_S2_V2 S2_V2_!275 V2_0)
      (+ 1 (ite MW_S2_V1 S2_V1_!273 V1_0)))) B1_!278 $x2230 
      (not B1_!284)
      (not
      (<= (ite MW_S2_V2 S2_V2_!287 V2_0)
      (+ 1 (ite MW_S2_V1 S2_V1_!285 V1_0)))) $x2178)))
    (let
    (($x2130
      (and
      (or (not R_S2_V1) (= (ite MW_S2_V1 S2_V1_!285 V1_0) (+ (- 1) V1_0)))
      (or (not R_S2_V3) (= (ite MW_S2_V3 S2_V3_!286 V3_0) V3_0))
      (or (not R_S2_V2) (= (ite MW_S2_V2 S2_V2_!287 V2_0) V2_0))
      (or (not R_S2_V5) (= (ite MW_S2_V5 S2_V5_!288 V5_0) V5_0))
      (or (not R_S2_V4) (= (ite MW_S2_V4 S2_V4_!289 V4_0) V4_0)))))
    (let (($x2064 (not $x2130)))
    (let
    (($x2115
      (and (or (not R_S2_V1) (= V1_0 (+ 1 (ite MW_S2_V1 S2_V1_!285 V1_0))))
      (or (not R_S2_V3) (= V3_0 (ite MW_S2_V3 S2_V3_!286 V3_0)))
      (or (not R_S2_V2) (= V2_0 (ite MW_S2_V2 S2_V2_!287 V2_0)))
      (or (not R_S2_V5) (= V5_0 (ite MW_S2_V5 S2_V5_!288 V5_0)))
      (or (not R_S2_V4) (= V4_0 (ite MW_S2_V4 S2_V4_!289 V4_0))))))
    (let (($x1994 (not $x2115)))
    (let
    (($x2128
      (and
      (or (not R_B1_V1) (= (ite MW_S2_V1 S2_V1_!273 V1_0) (+ (- 1) V1_0)))
      (or (not R_B1_V3) (= (ite MW_S2_V3 S2_V3_!274 V3_0) V3_0))
      (or (not R_B1_V2) (= (ite MW_S2_V2 S2_V2_!275 V2_0) V2_0))
      (or (not R_B1_V5) (= (ite MW_S2_V5 S2_V5_!276 V5_0) V5_0))
      (or (not R_B1_V4) (= (ite MW_S2_V4 S2_V4_!277 V4_0) V4_0)))))
    (let
    (($x2103
      (and (= S2_V4_!289 S2_V4_!277) 
      (or $x1994 (= S2_V4_!289 S2_V4_!294))
      (or $x2064 (= S2_V4_!294 S2_V4_!277)) 
      (= B1_!272 B1_!284) 
      (or (not $x2128) (= B1_!278 B1_!272))
      (or (not $x2128) (= B1_!278 B1_!284)) 
      (= S2_V5_!276 S2_V5_!288) 
      (or $x2064 (= S2_V5_!293 S2_V5_!276))
      (or $x2064 (= S2_V5_!293 S2_V5_!288)) 
      (= S2_V1_!285 S2_V1_!273) 
      (or $x1994 (= S2_V1_!285 S2_V1_!290))
      (or $x2064 (= S2_V1_!290 S2_V1_!273)) 
      (= S2_V2_!287 S2_V2_!275) 
      (or $x1994 (= S2_V2_!287 S2_V2_!292))
      (or $x2064 (= S2_V2_!292 S2_V2_!275)) 
      (= S2_V3_!286 S2_V3_!274) 
      (or $x1994 (= S2_V3_!286 S2_V3_!291))
      (or $x2064 (= S2_V3_!291 S2_V3_!274)) 
      (or (not MW_S1_V1) W_S1_V1) 
      (or (not MW_S1_V2) W_S1_V2) 
      (or (not MW_S1_V5) W_S1_V5) 
      (or (not MW_S1_V4) W_S1_V4) 
      (or (not MW_S2_V1) W_S2_V1) 
      (or (not MW_S2_V3) W_S2_V3) 
      (or (not MW_S2_V2) W_S2_V2) 
      (or (not MW_S2_V5) W_S2_V5)))) 
    (or (not $x2103) (not $x2036) $x2236)))))))))))))))
 (let
 (($x116
   (or (and W_S2_V1 R_B1_V1) 
   (and W_S2_V3 R_B1_V3) (and W_S2_V2 R_B1_V2) 
   (and W_S2_V5 R_B1_V5) R_B1_V4)))
 (let (($x118 (= DISJ_W_S2_R_B1 (not $x116))))
 (let
 (($x113
   (or (and W_S2_V1 R_S2_V1) 
   (and W_S2_V3 R_S2_V3) (and W_S2_V2 R_S2_V2) 
   (and W_S2_V5 R_S2_V5) R_S2_V4)))
 (let (($x115 (= DISJ_W_S2_R_S2 (not $x113))))
 (let
 (($x110
   (or (and W_S2_V1 R_S1_V1) 
   (and W_S2_V3 R_S1_V3) (and W_S2_V2 R_S1_V2) 
   (and W_S2_V5 R_S1_V5) R_S1_V4)))
 (let (($x112 (= DISJ_W_S2_R_S1 (not $x110))))
 (let
 (($x107
   (or (and W_S1_V1 W_S2_V1) W_S2_V3 
   (and W_S1_V2 W_S2_V2) (and W_S1_V5 W_S2_V5) W_S1_V4)))
 (let (($x109 (= DISJ_W_S1_W_S2 (not $x107))))
 (let
 (($x104
   (or (and W_S1_V1 R_B1_V1) R_B1_V3 
   (and W_S1_V2 R_B1_V2) (and W_S1_V5 R_B1_V5) 
   (and W_S1_V4 R_B1_V4))))
 (let (($x106 (= DISJ_W_S1_R_B1 (not $x104))))
 (let
 (($x101
   (or (and W_S1_V1 R_S2_V1) R_S2_V3 
   (and W_S1_V2 R_S2_V2) (and W_S1_V5 R_S2_V5) 
   (and W_S1_V4 R_S2_V4))))
 (let (($x103 (= DISJ_W_S1_R_S2 (not $x101))))
 (let
 (($x98
   (or (and W_S1_V1 R_S1_V1) R_S1_V3 
   (and W_S1_V2 R_S1_V2) (and W_S1_V5 R_S1_V5) 
   (and W_S1_V4 R_S1_V4))))
 (let (($x100 (= DISJ_W_S1_R_S1 (not $x98))))
 (and W_S1_V3 W_S2_V4 $x100 $x103 $x106 $x109 $x112 $x115 $x118 $x2106)))))))))))))))))
(check-sat)
(exit)

