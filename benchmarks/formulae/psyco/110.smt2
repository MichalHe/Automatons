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
(declare-fun W_S1_V6 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun W_S1_V3 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_S1_V6 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun R_E2_V1 () Bool)
(declare-fun R_E1_V6 () Bool)
(declare-fun R_E1_V4 () Bool)
(declare-fun R_E1_V5 () Bool)
(declare-fun R_E1_V2 () Bool)
(declare-fun DISJ_W_S1_R_E1 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun R_E2_V6 () Bool)
(declare-fun R_E2_V4 () Bool)
(declare-fun R_E2_V5 () Bool)
(declare-fun R_E2_V2 () Bool)
(declare-fun DISJ_W_S1_R_E2 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun R_E1_V3 () Bool)
(declare-fun R_E1_V1 () Bool)
(declare-fun R_E2_V3 () Bool)
(assert
 (let
 (($x62538
   (forall
    ((V2_0 Int) (V5_0 Int) 
     (V4_0 Int) (V6_0 Int) 
     (MW_S1_V1 Bool) (MW_S1_V3 Bool) 
     (MW_S1_V2 Bool) (MW_S1_V5 Bool) 
     (MW_S1_V4 Bool) (MW_S1_V6 Bool) 
     (S1_V1_!5249 Int) (S1_V1_!5255 Int) 
     (S1_V1_!5264 Int) (S1_V1_!5270 Int) 
     (S1_V3_!5250 Int) (S1_V3_!5256 Int) 
     (S1_V3_!5265 Int) (S1_V3_!5271 Int) 
     (S1_V2_!5251 Int) (S1_V2_!5257 Int) 
     (S1_V2_!5266 Int) (S1_V2_!5272 Int) 
     (E1_!5246 Int) (E1_!5261 Int) 
     (E1_!5263 Int) (S1_V5_!5252 Int) 
     (S1_V5_!5258 Int) (S1_V5_!5267 Int) 
     (S1_V5_!5273 Int) (E2_!5247 Int) 
     (E2_!5248 Int) (E2_!5262 Int) 
     (S1_V4_!5253 Int) (S1_V4_!5259 Int) 
     (S1_V4_!5268 Int) (S1_V4_!5274 Int) 
     (S1_V6_!5254 Int) (S1_V6_!5260 Int) 
     (S1_V6_!5269 Int) (S1_V6_!5275 Int))
    (let
    (($x61237
      (= (ite MW_S1_V3 S1_V3_!5256 (+ 1 (ite MW_S1_V3 S1_V3_!5250 E2_!5248)))
      (ite MW_S1_V3 S1_V3_!5271 E2_!5262))))
    (let
    (($x62389
      (= (ite MW_S1_V1 S1_V1_!5255 E1_!5246)
      (ite MW_S1_V1 S1_V1_!5270 (+ 1 (ite MW_S1_V1 S1_V1_!5264 E1_!5263))))))
    (let
    (($x61198
      (and $x62389 $x61237
      (= (ite MW_S1_V2 S1_V2_!5257 V2_0) (ite MW_S1_V2 S1_V2_!5272 V2_0))
      (= (ite MW_S1_V5 S1_V5_!5258 V5_0) (ite MW_S1_V5 S1_V5_!5273 V5_0))
      (= (ite MW_S1_V4 S1_V4_!5259 V4_0) (ite MW_S1_V4 S1_V4_!5274 V4_0))
      (= (ite MW_S1_V6 S1_V6_!5260 V6_0) (ite MW_S1_V6 S1_V6_!5275 V6_0)))))
    (let
    (($x62945
      (>=
      (ite MW_S1_V1 S1_V1_!5270 (+ 1 (ite MW_S1_V1 S1_V1_!5264 E1_!5263)))
      (+ (- 1) (ite MW_S1_V2 S1_V2_!5272 V2_0)))))
    (let
    (($x61222
      (>=
      (ite MW_S1_V3 S1_V3_!5256 (+ 1 (ite MW_S1_V3 S1_V3_!5250 E2_!5248)))
      (+ (- 1) (ite MW_S1_V4 S1_V4_!5259 V4_0)))))
    (let
    (($x62332
      (and (not (<= V4_0 E2_!5247)) 
      (not (<= V2_0 E1_!5246)) 
      (not (<= V4_0 E2_!5248))
      (not
      (<= (ite MW_S1_V4 S1_V4_!5253 V4_0)
      (+ 1 (ite MW_S1_V3 S1_V3_!5250 E2_!5248)))) $x61222
      (>= (ite MW_S1_V1 S1_V1_!5255 E1_!5246)
      (+ (- 1) (ite MW_S1_V2 S1_V2_!5257 V2_0))) 
      (not (<= V2_0 E1_!5261)) 
      (not (<= V4_0 E2_!5262)) 
      (not (<= V2_0 E1_!5263))
      (not
      (<= (ite MW_S1_V2 S1_V2_!5266 V2_0)
      (+ 1 (ite MW_S1_V1 S1_V1_!5264 E1_!5263)))) $x62945
      (>= (ite MW_S1_V3 S1_V3_!5271 E2_!5262)
      (+ (- 1) (ite MW_S1_V4 S1_V4_!5274 V4_0))))))
    (let
    (($x60131
      (and
      (or (not R_S1_V1)
      (= E1_!5263 (+ 1 (ite MW_S1_V1 S1_V1_!5264 E1_!5263))))
      (or (not R_S1_V3) (= E2_!5262 (ite MW_S1_V3 S1_V3_!5265 E2_!5262)))
      (or (not R_S1_V2) (= V2_0 (ite MW_S1_V2 S1_V2_!5266 V2_0)))
      (or (not R_S1_V5) (= V5_0 (ite MW_S1_V5 S1_V5_!5267 V5_0)))
      (or (not R_S1_V4) (= V4_0 (ite MW_S1_V4 S1_V4_!5268 V4_0)))
      (or (not R_S1_V6) (= V6_0 (ite MW_S1_V6 S1_V6_!5269 V6_0))))))
    (let (($x61075 (not $x60131)))
    (let (($x199 (not R_S1_V3)))
    (let (($x197 (not R_S1_V1)))
    (let
    (($x60943
      (and
      (or $x197
      (= (ite MW_S1_V1 S1_V1_!5249 E1_!5246)
      (+ 1 (ite MW_S1_V1 S1_V1_!5264 E1_!5263))))
      (or $x199
      (= (ite MW_S1_V3 S1_V3_!5250 E2_!5248)
      (+ (- 1) (ite MW_S1_V3 S1_V3_!5265 E2_!5262))))
      (or (not R_S1_V2)
      (= (ite MW_S1_V2 S1_V2_!5251 V2_0) (ite MW_S1_V2 S1_V2_!5266 V2_0)))
      (or (not R_S1_V5)
      (= (ite MW_S1_V5 S1_V5_!5252 V5_0) (ite MW_S1_V5 S1_V5_!5267 V5_0)))
      (or (not R_S1_V4)
      (= (ite MW_S1_V4 S1_V4_!5253 V4_0) (ite MW_S1_V4 S1_V4_!5268 V4_0)))
      (or (not R_S1_V6)
      (= (ite MW_S1_V6 S1_V6_!5254 V6_0) (ite MW_S1_V6 S1_V6_!5269 V6_0))))))
    (let (($x62686 (not $x60943)))
    (let
    (($x62667
      (and (or $x197 (= (ite MW_S1_V1 S1_V1_!5249 E1_!5246) E1_!5263))
      (or $x199 (= (ite MW_S1_V3 S1_V3_!5250 E2_!5248) (+ (- 1) E2_!5262)))
      (or (not R_S1_V2) (= (ite MW_S1_V2 S1_V2_!5251 V2_0) V2_0))
      (or (not R_S1_V5) (= (ite MW_S1_V5 S1_V5_!5252 V5_0) V5_0))
      (or (not R_S1_V4) (= (ite MW_S1_V4 S1_V4_!5253 V4_0) V4_0))
      (or (not R_S1_V6) (= (ite MW_S1_V6 S1_V6_!5254 V6_0) V6_0)))))
    (let (($x62901 (not $x62667)))
    (let
    (($x62336
      (and (or $x197 (= (ite MW_S1_V1 S1_V1_!5249 E1_!5246) E1_!5246))
      (or $x199 (= (ite MW_S1_V3 S1_V3_!5250 E2_!5248) (+ (- 1) E2_!5248)))
      (or (not R_S1_V2) (= (ite MW_S1_V2 S1_V2_!5251 V2_0) V2_0))
      (or (not R_S1_V5) (= (ite MW_S1_V5 S1_V5_!5252 V5_0) V5_0))
      (or (not R_S1_V4) (= (ite MW_S1_V4 S1_V4_!5253 V4_0) V4_0))
      (or (not R_S1_V6) (= (ite MW_S1_V6 S1_V6_!5254 V6_0) V6_0)))))
    (let (($x62833 (not $x62336)))
    (let
    (($x62589
      (and (or $x197 (= E1_!5246 (+ 1 (ite MW_S1_V1 S1_V1_!5264 E1_!5263))))
      (or $x199 (= E2_!5248 (ite MW_S1_V3 S1_V3_!5265 E2_!5262)))
      (or (not R_S1_V2) (= V2_0 (ite MW_S1_V2 S1_V2_!5266 V2_0)))
      (or (not R_S1_V5) (= V5_0 (ite MW_S1_V5 S1_V5_!5267 V5_0)))
      (or (not R_S1_V4) (= V4_0 (ite MW_S1_V4 S1_V4_!5268 V4_0)))
      (or (not R_S1_V6) (= V6_0 (ite MW_S1_V6 S1_V6_!5269 V6_0))))))
    (let (($x61423 (not $x62589)))
    (let
    (($x62923
      (not
      (and (or $x197 (= E1_!5246 E1_!5263)) (or $x199 (= E2_!5248 E2_!5262))))))
    (let
    (($x62398
      (and
      (or $x197 (= (ite MW_S1_V1 S1_V1_!5264 E1_!5263) (+ (- 1) E1_!5263)))
      (or $x199 (= (ite MW_S1_V3 S1_V3_!5265 E2_!5262) E2_!5262))
      (or (not R_S1_V2) (= (ite MW_S1_V2 S1_V2_!5266 V2_0) V2_0))
      (or (not R_S1_V5) (= (ite MW_S1_V5 S1_V5_!5267 V5_0) V5_0))
      (or (not R_S1_V4) (= (ite MW_S1_V4 S1_V4_!5268 V4_0) V4_0))
      (or (not R_S1_V6) (= (ite MW_S1_V6 S1_V6_!5269 V6_0) V6_0)))))
    (let (($x61407 (not $x62398)))
    (let
    (($x61313
      (and
      (or $x197
      (= (ite MW_S1_V1 S1_V1_!5264 E1_!5263)
      (+ (- 1) (ite MW_S1_V1 S1_V1_!5249 E1_!5246))))
      (or $x199
      (= (ite MW_S1_V3 S1_V3_!5265 E2_!5262)
      (+ 1 (ite MW_S1_V3 S1_V3_!5250 E2_!5248))))
      (or (not R_S1_V2)
      (= (ite MW_S1_V2 S1_V2_!5266 V2_0) (ite MW_S1_V2 S1_V2_!5251 V2_0)))
      (or (not R_S1_V5)
      (= (ite MW_S1_V5 S1_V5_!5267 V5_0) (ite MW_S1_V5 S1_V5_!5252 V5_0)))
      (or (not R_S1_V4)
      (= (ite MW_S1_V4 S1_V4_!5268 V4_0) (ite MW_S1_V4 S1_V4_!5253 V4_0)))
      (or (not R_S1_V6)
      (= (ite MW_S1_V6 S1_V6_!5269 V6_0) (ite MW_S1_V6 S1_V6_!5254 V6_0))))))
    (let (($x61055 (not $x61313)))
    (let
    (($x62505
      (and
      (or $x197 (= (ite MW_S1_V1 S1_V1_!5264 E1_!5263) (+ (- 1) E1_!5246)))
      (or $x199 (= (ite MW_S1_V3 S1_V3_!5265 E2_!5262) E2_!5248))
      (or (not R_S1_V2) (= (ite MW_S1_V2 S1_V2_!5266 V2_0) V2_0))
      (or (not R_S1_V5) (= (ite MW_S1_V5 S1_V5_!5267 V5_0) V5_0))
      (or (not R_S1_V4) (= (ite MW_S1_V4 S1_V4_!5268 V4_0) V4_0))
      (or (not R_S1_V6) (= (ite MW_S1_V6 S1_V6_!5269 V6_0) V6_0)))))
    (let
    (($x60167
      (and (or $x197 (= E1_!5246 (ite MW_S1_V1 S1_V1_!5249 E1_!5246)))
      (or $x199 (= E2_!5248 (+ 1 (ite MW_S1_V3 S1_V3_!5250 E2_!5248))))
      (or (not R_S1_V2) (= V2_0 (ite MW_S1_V2 S1_V2_!5251 V2_0)))
      (or (not R_S1_V5) (= V5_0 (ite MW_S1_V5 S1_V5_!5252 V5_0)))
      (or (not R_S1_V4) (= V4_0 (ite MW_S1_V4 S1_V4_!5253 V4_0)))
      (or (not R_S1_V6) (= V6_0 (ite MW_S1_V6 S1_V6_!5254 V6_0))))))
    (let (($x62293 (not $x60167)))
    (let
    (($x62477
      (or
      (not
      (and (or $x197 (= E1_!5263 E1_!5246)) (or $x199 (= E2_!5262 E2_!5248))))
      (= S1_V5_!5267 S1_V5_!5252))))
    (let
    (($x61208
      (and (or $x62293 (= S1_V1_!5249 S1_V1_!5255))
      (or $x62923 (= S1_V1_!5249 S1_V1_!5264))
      (or $x61423 (= S1_V1_!5249 S1_V1_!5270))
      (or $x62901 (= S1_V1_!5255 S1_V1_!5264))
      (or $x61055 (= S1_V1_!5270 S1_V1_!5255))
      (or $x61407 (= S1_V1_!5270 S1_V1_!5264))
      (or $x62293 (= S1_V3_!5250 S1_V3_!5256))
      (or $x62923 (= S1_V3_!5250 S1_V3_!5265))
      (or $x61423 (= S1_V3_!5250 S1_V3_!5271))
      (or $x62901 (= S1_V3_!5256 S1_V3_!5265))
      (or $x62686 (= S1_V3_!5256 S1_V3_!5271))
      (or $x61075 (= S1_V3_!5265 S1_V3_!5271))
      (or $x62923 (= S1_V2_!5251 S1_V2_!5266))
      (or $x61423 (= S1_V2_!5251 S1_V2_!5272))
      (or $x62833 (= S1_V2_!5257 S1_V2_!5251))
      (or $x62901 (= S1_V2_!5257 S1_V2_!5266))
      (or $x62686 (= S1_V2_!5257 S1_V2_!5272))
      (or $x61075 (= S1_V2_!5266 S1_V2_!5272)) 
      (= E1_!5246 E1_!5261) 
      (= E1_!5263 E1_!5246) 
      (= E1_!5263 E1_!5261) 
      (or $x62833 (= S1_V5_!5258 S1_V5_!5252))
      (or $x62901 (= S1_V5_!5258 S1_V5_!5267)) $x62477
      (or (not $x62505) (= S1_V5_!5273 S1_V5_!5252))
      (or $x61055 (= S1_V5_!5273 S1_V5_!5258))
      (or $x61407 (= S1_V5_!5273 S1_V5_!5267)) 
      (= E2_!5248 E2_!5247)
      (or (not (or (not R_E2_V1) (= E1_!5246 E1_!5261)))
      (= E2_!5248 E2_!5262))
      (or (not (or (not R_E2_V1) (= E1_!5261 E1_!5246)))
      (= E2_!5262 E2_!5247)) 
      (or $x62293 (= S1_V4_!5253 S1_V4_!5259))
      (or $x62923 (= S1_V4_!5253 S1_V4_!5268))
      (or $x62901 (= S1_V4_!5259 S1_V4_!5268))
      (or (not $x62505) (= S1_V4_!5274 S1_V4_!5253))
      (or $x61055 (= S1_V4_!5274 S1_V4_!5259))
      (or $x61407 (= S1_V4_!5274 S1_V4_!5268))
      (or $x62923 (= S1_V6_!5254 S1_V6_!5269))
      (or $x61423 (= S1_V6_!5254 S1_V6_!5275))
      (or $x62833 (= S1_V6_!5260 S1_V6_!5254))
      (or $x62901 (= S1_V6_!5260 S1_V6_!5269))
      (or $x62686 (= S1_V6_!5260 S1_V6_!5275))
      (or $x61075 (= S1_V6_!5269 S1_V6_!5275)) 
      (or (not MW_S1_V1) W_S1_V1) 
      (or (not MW_S1_V3) W_S1_V3) 
      (or (not MW_S1_V2) W_S1_V2) 
      (or (not MW_S1_V4) W_S1_V4) 
      (or (not MW_S1_V6) W_S1_V6))))
    (or (not $x61208) (not $x62332) $x61198))))))))))))))))))))))))))))))))
 (let (($x56 (and W_S1_V6 R_E1_V6)))
 (let (($x54 (and W_S1_V4 R_E1_V4)))
 (let (($x50 (and W_S1_V2 R_E1_V2)))
 (let
 (($x66
   (or (and W_S1_V1 R_S1_V1) 
   (and W_S1_V3 R_S1_V3) (and W_S1_V2 R_S1_V2) R_S1_V5 
   (and W_S1_V4 R_S1_V4) (and W_S1_V6 R_S1_V6))))
 (let (($x68 (= DISJ_W_S1_R_S1 (not $x66))))
 (let (($x24 (and W_S1_V6 R_E2_V6)))
 (let (($x21 (and W_S1_V4 R_E2_V4)))
 (let (($x16 (and W_S1_V2 R_E2_V2)))
 (let (($x10 (and W_S1_V1 R_E2_V1)))
 (let (($x115 (not R_E1_V3)))
 (let (($x113 (not R_E1_V1)))
 (let (($x130 (not R_E2_V3)))
 (and $x130 $x113 $x115 W_S1_V5
 (= DISJ_W_S1_R_E2 (not (or $x10 $x16 R_E2_V5 $x21 $x24))) $x68
 (= DISJ_W_S1_R_E1 (not (or $x50 R_E1_V5 $x54 $x56))) $x62538)))))))))))))))
(check-sat)
(exit)

