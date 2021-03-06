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
(declare-fun R_E1_V4 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun R_E1_V5 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun W_S2_V5 () Bool)
(declare-fun W_S2_V2 () Bool)
(declare-fun W_S2_V3 () Bool)
(declare-fun W_S2_V1 () Bool)
(declare-fun R_S2_V4 () Bool)
(declare-fun R_S2_V5 () Bool)
(declare-fun R_S2_V2 () Bool)
(declare-fun R_S2_V3 () Bool)
(declare-fun R_S2_V1 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun R_E1_V2 () Bool)
(declare-fun DISJ_W_S2_R_E1 () Bool)
(declare-fun DISJ_W_S2_R_S2 () Bool)
(declare-fun DISJ_W_S2_R_S1 () Bool)
(declare-fun DISJ_W_S1_W_S2 () Bool)
(declare-fun R_E1_V3 () Bool)
(declare-fun DISJ_W_S1_R_S2 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun W_S2_V4 () Bool)
(declare-fun W_S1_V3 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_E1_V1 () Bool)
(declare-fun DISJ_W_S1_R_E1 () Bool)
(assert
 (let
 (($x6721
   (forall
    ((V3_0 Int) (V2_0 Int) 
     (V5_0 Int) (V4_0 Int) 
     (MW_S1_V1 Bool) (MW_S1_V3 Bool) 
     (MW_S1_V2 Bool) (MW_S1_V5 Bool) 
     (MW_S1_V4 Bool) (MW_S2_V1 Bool) 
     (MW_S2_V3 Bool) (MW_S2_V2 Bool) 
     (MW_S2_V5 Bool) (MW_S2_V4 Bool) 
     (S1_V1_!6074 Int) (S1_V1_!6084 Int) 
     (S1_V1_!6095 Int) (S1_V1_!6100 Int) 
     (S2_V5_!6082 Int) (S2_V5_!6092 Int) 
     (S2_V5_!6109 Int) (S2_V5_!6114 Int) 
     (S1_V3_!6075 Int) (S1_V3_!6085 Int) 
     (S1_V3_!6096 Int) (S1_V3_!6101 Int) 
     (S1_V2_!6076 Int) (S1_V2_!6086 Int) 
     (S1_V2_!6097 Int) (S1_V2_!6102 Int) 
     (E1_!6073 Int) (E1_!6094 Int) 
     (E1_!6105 Int) (S2_V4_!6083 Int) 
     (S2_V4_!6093 Int) (S2_V4_!6110 Int) 
     (S2_V4_!6115 Int) (S1_V5_!6077 Int) 
     (S1_V5_!6087 Int) (S1_V5_!6098 Int) 
     (S1_V5_!6103 Int) (S2_V1_!6079 Int) 
     (S2_V1_!6089 Int) (S2_V1_!6106 Int) 
     (S2_V1_!6111 Int) (S1_V4_!6078 Int) 
     (S1_V4_!6088 Int) (S1_V4_!6099 Int) 
     (S1_V4_!6104 Int) (S2_V2_!6081 Int) 
     (S2_V2_!6091 Int) (S2_V2_!6108 Int) 
     (S2_V2_!6113 Int) (S2_V3_!6080 Int) 
     (S2_V3_!6090 Int) (S2_V3_!6107 Int) 
     (S2_V3_!6112 Int))
    (let
    (($x3661
      (=
      (ite MW_S2_V4 S2_V4_!6093
      (ite MW_S1_V4 S1_V4_!6088
      (ite MW_S2_V4 S2_V4_!6083 (ite MW_S1_V4 S1_V4_!6078 V4_0))))
      (ite MW_S2_V4 S2_V4_!6115 (ite MW_S1_V4 S1_V4_!6104 V4_0)))))
    (let
    (($x3415
      (=
      (ite MW_S2_V5 S2_V5_!6092
      (ite MW_S1_V5 S1_V5_!6087
      (ite MW_S2_V5 S2_V5_!6082 (ite MW_S1_V5 S1_V5_!6077 V5_0))))
      (ite MW_S2_V5 S2_V5_!6114 (ite MW_S1_V5 S1_V5_!6103 V5_0)))))
    (let ((?x3992 (ite MW_S1_V2 S1_V2_!6102 V2_0)))
    (let ((?x3223 (ite MW_S2_V2 S2_V2_!6113 ?x3992)))
    (let ((?x3569 (ite MW_S1_V2 S1_V2_!6076 V2_0)))
    (let ((?x4085 (ite MW_S2_V2 S2_V2_!6081 ?x3569)))
    (let ((?x3902 (ite MW_S1_V2 S1_V2_!6086 ?x4085)))
    (let ((?x4260 (ite MW_S2_V2 S2_V2_!6091 ?x3902)))
    (let (($x4301 (= ?x4260 ?x3223)))
    (let
    (($x4295
      (=
      (ite MW_S2_V3 S2_V3_!6090
      (ite MW_S1_V3 S1_V3_!6085
      (ite MW_S2_V3 S2_V3_!6080 (ite MW_S1_V3 S1_V3_!6075 V3_0))))
      (ite MW_S2_V3 S2_V3_!6112 (ite MW_S1_V3 S1_V3_!6101 V3_0)))))
    (let ((?x4285 (ite MW_S2_V1 S2_V1_!6106 E1_!6105)))
    (let ((?x4286 (+ 1 ?x4285)))
    (let ((?x4252 (ite MW_S2_V1 S2_V1_!6111 ?x4286)))
    (let ((?x4318 (ite MW_S1_V1 S1_V1_!6074 E1_!6073)))
    (let ((?x4344 (ite MW_S2_V1 S2_V1_!6079 ?x4318)))
    (let ((?x4361 (+ 1 ?x4344)))
    (let ((?x4363 (ite MW_S1_V1 S1_V1_!6084 ?x4361)))
    (let ((?x4343 (ite MW_S2_V1 S2_V1_!6089 ?x4363)))
    (let (($x3605 (= ?x4343 ?x4252)))
    (let
    (($x2771
      (and (not (<= V2_0 E1_!6073)) 
      (not (<= ?x4085 ?x4361)) 
      (>= ?x4343 (+ (- 1) ?x4260)) 
      (not (<= V2_0 E1_!6094))
      (not
      (<= (ite MW_S1_V2 S1_V2_!6097 V2_0)
      (+ 1 (ite MW_S1_V1 S1_V1_!6095 E1_!6094))))
      (>=
      (ite MW_S1_V1 S1_V1_!6100 (+ 1 (ite MW_S1_V1 S1_V1_!6095 E1_!6094)))
      (+ (- 1) ?x3992)) (not (<= ?x3992 E1_!6105))
      (not (<= (ite MW_S2_V2 S2_V2_!6108 ?x3992) ?x4286))
      (>= ?x4252 (+ (- 1) ?x3223)))))
    (let (($x3375 (or (not MW_S2_V5) W_S2_V5)))
    (let (($x2939 (or (not MW_S2_V2) W_S2_V2)))
    (let (($x2870 (or (not MW_S2_V3) W_S2_V3)))
    (let (($x3831 (or (not MW_S2_V1) W_S2_V1)))
    (let (($x2921 (or (not MW_S1_V4) W_S1_V4)))
    (let (($x2705 (or (not MW_S1_V5) W_S1_V5)))
    (let (($x2447 (= S2_V3_!6112 S2_V3_!6090)))
    (let ((?x3445 (ite MW_S1_V4 S1_V4_!6078 V4_0)))
    (let ((?x2992 (ite MW_S2_V4 S2_V4_!6083 ?x3445)))
    (let ((?x3630 (ite MW_S1_V4 S1_V4_!6088 ?x2992)))
    (let ((?x3611 (ite MW_S1_V4 S1_V4_!6104 V4_0)))
    (let ((?x2909 (ite MW_S2_V4 S2_V4_!6110 ?x3611)))
    (let (($x223 (not R_S2_V4)))
    (let (($x2915 (or $x223 (= ?x2909 ?x3630))))
    (let ((?x3253 (ite MW_S1_V5 S1_V5_!6077 V5_0)))
    (let ((?x2971 (ite MW_S2_V5 S2_V5_!6082 ?x3253)))
    (let ((?x3663 (ite MW_S1_V5 S1_V5_!6087 ?x2971)))
    (let ((?x3703 (ite MW_S1_V5 S1_V5_!6103 V5_0)))
    (let ((?x3584 (ite MW_S2_V5 S2_V5_!6109 ?x3703)))
    (let (($x221 (not R_S2_V5)))
    (let (($x3309 (or $x221 (= ?x3584 ?x3663))))
    (let (($x219 (not R_S2_V2)))
    (let (($x2686 (or $x219 (= (ite MW_S2_V2 S2_V2_!6108 ?x3992) ?x3902))))
    (let ((?x4224 (ite MW_S1_V3 S1_V3_!6075 V3_0)))
    (let ((?x2662 (ite MW_S2_V3 S2_V3_!6080 ?x4224)))
    (let ((?x3676 (ite MW_S1_V3 S1_V3_!6085 ?x2662)))
    (let ((?x4246 (ite MW_S1_V3 S1_V3_!6101 V3_0)))
    (let ((?x2838 (ite MW_S2_V3 S2_V3_!6107 ?x4246)))
    (let (($x217 (not R_S2_V3)))
    (let (($x2656 (or $x217 (= ?x2838 ?x3676))))
    (let
    (($x3278
      (and (or (not R_S2_V1) (= ?x4285 (+ (- 1) ?x4363))) $x2656 $x2686
      $x3309 $x2915)))
    (let (($x2872 (not $x3278)))
    (let (($x2861 (= S2_V3_!6112 S2_V3_!6080)))
    (let (($x3186 (or $x223 (= ?x2909 ?x3445))))
    (let (($x2780 (or $x221 (= ?x3584 ?x3253))))
    (let (($x2769 (or $x219 (= (ite MW_S2_V2 S2_V2_!6108 ?x3992) ?x3569))))
    (let (($x2889 (or $x217 (= ?x2838 ?x4224))))
    (let
    (($x3491
      (and (or (not R_S2_V1) (= ?x4285 (+ (- 1) ?x4318))) $x2889 $x2769
      $x2780 $x3186)))
    (let (($x3185 (= S2_V3_!6107 S2_V3_!6112)))
    (let (($x2655 (or $x223 (= ?x3611 ?x2909))))
    (let (($x3159 (or $x221 (= ?x3703 ?x3584))))
    (let (($x2498 (or $x219 (= ?x3992 (ite MW_S2_V2 S2_V2_!6108 ?x3992)))))
    (let (($x2532 (or $x217 (= ?x4246 ?x2838))))
    (let
    (($x2524
      (or
      (not
      (and (or (not R_S2_V1) (= E1_!6105 ?x4286)) $x2532 $x2498 $x3159
      $x2655)) $x3185)))
    (let (($x3179 (= S2_V3_!6107 S2_V3_!6090)))
    (let (($x3292 (or $x223 (= ?x3611 ?x3630))))
    (let (($x2508 (or $x221 (= ?x3703 ?x3663))))
    (let (($x2466 (or $x219 (= ?x3992 ?x3902))))
    (let (($x3112 (or $x217 (= ?x4246 ?x3676))))
    (let (($x215 (not R_S2_V1)))
    (let (($x3481 (or $x215 (= E1_!6105 ?x4363))))
    (let (($x2679 (= S2_V3_!6107 S2_V3_!6080)))
    (let (($x3576 (or $x223 (= ?x3611 ?x3445))))
    (let (($x2837 (or $x221 (= ?x3703 ?x3253))))
    (let (($x2951 (or $x219 (= ?x3992 ?x3569))))
    (let (($x3146 (or $x217 (= ?x4246 ?x4224))))
    (let (($x2944 (or $x215 (= E1_!6105 ?x4318))))
    (let (($x4110 (= S2_V3_!6090 S2_V3_!6080)))
    (let (($x3847 (or $x223 (= ?x3630 ?x3445))))
    (let (($x3526 (or $x221 (= ?x3663 ?x3253))))
    (let (($x2778 (or $x219 (= ?x3902 ?x3569))))
    (let (($x3074 (or $x217 (= ?x3676 ?x4224))))
    (let (($x2646 (or $x215 (= ?x4363 ?x4318))))
    (let (($x4130 (= S2_V2_!6113 S2_V2_!6108)))
    (let (($x3214 (or $x223 (= ?x2909 ?x3611))))
    (let (($x3171 (or $x221 (= ?x3584 ?x3703))))
    (let (($x2594 (or $x219 (= (ite MW_S2_V2 S2_V2_!6108 ?x3992) ?x3992))))
    (let (($x2618 (or $x217 (= ?x2838 ?x4246))))
    (let
    (($x2881
      (not
      (and (or $x215 (= ?x4285 (+ (- 1) E1_!6105))) $x2618 $x2594 $x3171
      $x3214))))
    (let (($x2491 (= S2_V2_!6091 S2_V2_!6108)))
    (let (($x3013 (or $x223 (= ?x3630 ?x3611))))
    (let (($x2476 (or $x221 (= ?x3663 ?x3703))))
    (let (($x2968 (or $x219 (= ?x3902 ?x3992))))
    (let (($x3131 (or $x217 (= ?x3676 ?x4246))))
    (let (($x2681 (or $x215 (= ?x4363 E1_!6105))))
    (let (($x2916 (not (and $x2681 $x3131 $x2968 $x2476 $x3013))))
    (let (($x3228 (= S2_V2_!6081 S2_V2_!6113)))
    (let (($x2454 (or $x223 (= ?x3445 ?x2909))))
    (let (($x2842 (or $x221 (= ?x3253 ?x3584))))
    (let (($x2430 (or $x219 (= ?x3569 (ite MW_S2_V2 S2_V2_!6108 ?x3992)))))
    (let (($x2718 (or $x217 (= ?x4224 ?x2838))))
    (let
    (($x2699
      (not (and (or $x215 (= ?x4318 ?x4286)) $x2718 $x2430 $x2842 $x2454))))
    (let (($x2864 (= S2_V2_!6081 S2_V2_!6108)))
    (let (($x2907 (or $x223 (= ?x3445 ?x3611))))
    (let (($x2696 (or $x221 (= ?x3253 ?x3703))))
    (let (($x3441 (or $x219 (= ?x3569 ?x3992))))
    (let (($x2603 (or $x217 (= ?x4224 ?x4246))))
    (let (($x3743 (or $x215 (= ?x4318 E1_!6105))))
    (let (($x2684 (not (and $x3743 $x2603 $x3441 $x2696 $x2907))))
    (let (($x3064 (= S2_V2_!6081 S2_V2_!6091)))
    (let (($x2862 (or $x223 (= ?x3445 ?x3630))))
    (let (($x4068 (or $x221 (= ?x3253 ?x3663))))
    (let (($x4166 (or $x219 (= ?x3569 ?x3902))))
    (let (($x3549 (or $x217 (= ?x4224 ?x3676))))
    (let (($x2882 (or $x215 (= ?x4318 ?x4363))))
    (let (($x2200 (not (and $x2882 $x3549 $x4166 $x4068 $x2862))))
    (let (($x3800 (= S1_V4_!6104 S1_V4_!6088)))
    (let (($x210 (not R_S1_V4)))
    (let (($x3329 (or $x210 (= (ite MW_S1_V4 S1_V4_!6099 V4_0) ?x2992))))
    (let (($x208 (not R_S1_V5)))
    (let (($x3815 (or $x208 (= (ite MW_S1_V5 S1_V5_!6098 V5_0) ?x2971))))
    (let (($x206 (not R_S1_V2)))
    (let (($x3238 (or $x206 (= (ite MW_S1_V2 S1_V2_!6097 V2_0) ?x4085))))
    (let (($x204 (not R_S1_V3)))
    (let (($x4039 (or $x204 (= (ite MW_S1_V3 S1_V3_!6096 V3_0) ?x2662))))
    (let (($x202 (not R_S1_V1)))
    (let (($x2884 (or $x202 (= (ite MW_S1_V1 S1_V1_!6095 E1_!6094) ?x4344))))
    (let (($x3400 (= S1_V4_!6104 S1_V4_!6078)))
    (let (($x3107 (or $x210 (= (ite MW_S1_V4 S1_V4_!6099 V4_0) V4_0))))
    (let (($x2777 (or $x208 (= (ite MW_S1_V5 S1_V5_!6098 V5_0) V5_0))))
    (let (($x2856 (or $x206 (= (ite MW_S1_V2 S1_V2_!6097 V2_0) V2_0))))
    (let (($x3524 (or $x204 (= (ite MW_S1_V3 S1_V3_!6096 V3_0) V3_0))))
    (let
    (($x3562
      (and
      (or $x202 (= (ite MW_S1_V1 S1_V1_!6095 E1_!6094) (+ (- 1) E1_!6073)))
      $x3524 $x2856 $x2777 $x3107)))
    (let (($x3148 (not $x3562)))
    (let (($x3124 (= S1_V4_!6099 S1_V4_!6104)))
    (let (($x3342 (or $x210 (= V4_0 (ite MW_S1_V4 S1_V4_!6099 V4_0)))))
    (let (($x4101 (or $x208 (= V5_0 (ite MW_S1_V5 S1_V5_!6098 V5_0)))))
    (let (($x3451 (or $x206 (= V2_0 (ite MW_S1_V2 S1_V2_!6097 V2_0)))))
    (let (($x2757 (or $x204 (= V3_0 (ite MW_S1_V3 S1_V3_!6096 V3_0)))))
    (let
    (($x2891
      (and (or $x202 (= E1_!6094 (+ 1 (ite MW_S1_V1 S1_V1_!6095 E1_!6094))))
      $x2757 $x3451 $x4101 $x3342)))
    (let (($x2440 (not $x2891)))
    (let (($x2651 (= S1_V4_!6099 S1_V4_!6088)))
    (let (($x3206 (or $x210 (= V4_0 ?x2992))))
    (let (($x4099 (or $x208 (= V5_0 ?x2971))))
    (let (($x3155 (or $x206 (= V2_0 ?x4085))))
    (let (($x2989 (or $x204 (= V3_0 ?x2662))))
    (let (($x2987 (not (or $x202 (= E1_!6094 E1_!6073)))))
    (let (($x4115 (or $x2987 (= S1_V4_!6099 S1_V4_!6078))))
    (let (($x4103 (= S1_V4_!6088 S1_V4_!6078)))
    (let (($x3346 (or $x210 (= ?x2992 V4_0))))
    (let (($x3898 (or $x208 (= ?x2971 V5_0))))
    (let (($x3757 (or $x206 (= ?x4085 V2_0))))
    (let (($x3885 (or $x204 (= ?x2662 V3_0))))
    (let
    (($x3974
      (not
      (and (or $x202 (= ?x4344 (+ (- 1) E1_!6073))) $x3885 $x3757 $x3898
      $x3346))))
    (let (($x4305 (= S2_V1_!6089 S2_V1_!6111)))
    (let (($x2650 (or $x223 (= ?x3630 ?x2909))))
    (let (($x2431 (or $x221 (= ?x3663 ?x3584))))
    (let (($x3026 (or $x219 (= ?x3902 (ite MW_S2_V2 S2_V2_!6108 ?x3992)))))
    (let (($x2853 (or $x217 (= ?x3676 ?x2838))))
    (let (($x2841 (= S1_V5_!6103 S1_V5_!6098)))
    (let
    (($x2969
      (and
      (or $x202 (= (ite MW_S1_V1 S1_V1_!6095 E1_!6094) (+ (- 1) E1_!6094)))
      $x3524 $x2856 $x2777 $x3107)))
    (let (($x3105 (= S1_V5_!6098 S1_V5_!6087)))
    (let (($x4273 (not (or $x202 (= E1_!6073 E1_!6094)))))
    (let (($x3840 (or $x4273 (= S1_V5_!6077 S1_V5_!6098))))
    (let (($x2507 (= S1_V5_!6077 S1_V5_!6087)))
    (let (($x3548 (= E1_!6105 E1_!6094)))
    (let (($x158 (not R_E1_V4)))
    (let (($x2598 (or $x158 (= ?x3611 V4_0))))
    (let (($x156 (not R_E1_V5)))
    (let (($x2659 (or $x156 (= ?x3703 V5_0))))
    (let (($x154 (not R_E1_V2)))
    (let (($x2910 (or $x154 (= ?x3992 V2_0))))
    (let (($x2432 (= E1_!6073 E1_!6105)))
    (let (($x2765 (or $x158 (= V4_0 ?x3611))))
    (let (($x2574 (or $x156 (= V5_0 ?x3703))))
    (let (($x2762 (or $x154 (= V2_0 ?x3992))))
    (let (($x4117 (= E1_!6073 E1_!6094)))
    (let (($x2661 (or $x2987 (= S1_V2_!6097 S1_V2_!6076))))
    (let (($x3025 (= S1_V2_!6086 S1_V2_!6102)))
    (let (($x2682 (or $x210 (= ?x2992 (ite MW_S1_V4 S1_V4_!6099 V4_0)))))
    (let (($x2871 (or $x208 (= ?x2971 (ite MW_S1_V5 S1_V5_!6098 V5_0)))))
    (let (($x2690 (or $x206 (= ?x4085 (ite MW_S1_V2 S1_V2_!6097 V2_0)))))
    (let (($x2685 (or $x204 (= ?x2662 (ite MW_S1_V3 S1_V3_!6096 V3_0)))))
    (let (($x3382 (or $x202 (= ?x4344 (ite MW_S1_V1 S1_V1_!6095 E1_!6094)))))
    (let (($x3213 (not (and $x3382 $x2685 $x2690 $x2871 $x2682))))
    (let (($x3350 (= S1_V2_!6086 S1_V2_!6097)))
    (let
    (($x2610
      (not
      (and (or $x202 (= ?x4344 (+ (- 1) E1_!6094))) $x3885 $x3757 $x3898
      $x3346))))
    (let (($x2607 (= S1_V2_!6076 S1_V2_!6102)))
    (let
    (($x3368
      (and (or $x202 (= E1_!6073 (+ 1 (ite MW_S1_V1 S1_V1_!6095 E1_!6094))))
      $x2757 $x3451 $x4101 $x3342)))
    (let (($x2922 (or $x4273 (= S1_V3_!6075 S1_V3_!6096))))
    (let (($x3608 (= S2_V5_!6092 S2_V5_!6114)))
    (let (($x2878 (or $x2987 (= S1_V1_!6095 S1_V1_!6074))))
    (let
    (($x4376
      (and (or (not $x3368) (= S1_V1_!6074 S1_V1_!6100))
      (or $x3974 (= S1_V1_!6084 S1_V1_!6074))
      (or $x2610 (= S1_V1_!6084 S1_V1_!6095))
      (or $x3213 (= S1_V1_!6084 S1_V1_!6100)) $x2878
      (or $x2440 (= S1_V1_!6095 S1_V1_!6100))
      (or $x2684 (= S2_V5_!6082 S2_V5_!6109))
      (or $x2699 (= S2_V5_!6082 S2_V5_!6114))
      (or (not (and $x2646 $x3074 $x2778 $x3526 $x3847))
      (= S2_V5_!6092 S2_V5_!6082)) 
      (or $x2916 (= S2_V5_!6092 S2_V5_!6109))
      (or
      (not (and (or $x215 (= ?x4363 ?x4286)) $x2853 $x3026 $x2431 $x2650))
      $x3608) (or $x2881 (= S2_V5_!6114 S2_V5_!6109)) $x2922
      (or $x3974 (= S1_V3_!6085 S1_V3_!6075))
      (or $x2610 (= S1_V3_!6085 S1_V3_!6096))
      (or $x3213 (= S1_V3_!6085 S1_V3_!6101))
      (or $x3148 (= S1_V3_!6101 S1_V3_!6075))
      (or (not $x2969) (= S1_V3_!6101 S1_V3_!6096)) 
      (or (not $x3368) $x2607) 
      (or $x3974 (= S1_V2_!6086 S1_V2_!6076)) 
      (or $x2610 $x3350) (or $x3213 $x3025) $x2661
      (or $x2440 (= S1_V2_!6097 S1_V2_!6102)) $x4117
      (or (not (and $x2762 $x2574 $x2765)) $x2432)
      (or (not (and $x2910 $x2659 $x2598)) $x3548)
      (or $x2200 (= S2_V4_!6083 S2_V4_!6093))
      (or $x2684 (= S2_V4_!6083 S2_V4_!6110))
      (or (not (and $x3481 $x3112 $x2466 $x2508 $x3292))
      (= S2_V4_!6110 S2_V4_!6093))
      (or (not $x3491) (= S2_V4_!6115 S2_V4_!6083))
      (or $x2872 (= S2_V4_!6115 S2_V4_!6093))
      (or $x2881 (= S2_V4_!6115 S2_V4_!6110))
      (or
      (not (and (or $x202 (= E1_!6073 ?x4361)) $x2989 $x3155 $x4099 $x3206))
      $x2507) $x3840
      (or
      (not (and (or $x202 (= E1_!6094 ?x4361)) $x2989 $x3155 $x4099 $x3206))
      $x3105) (or $x3148 (= S1_V5_!6103 S1_V5_!6077))
      (or (not (and $x2884 $x4039 $x3238 $x3815 $x3329))
      (= S1_V5_!6103 S1_V5_!6087)) 
      (or (not $x2969) $x2841) 
      (or $x2200 (= S2_V1_!6079 S2_V1_!6089))
      (or $x2684 (= S2_V1_!6079 S2_V1_!6106))
      (or $x2699 (= S2_V1_!6079 S2_V1_!6111))
      (or $x2916 (= S2_V1_!6089 S2_V1_!6106))
      (or
      (not (and (or $x215 (= ?x4363 ?x4286)) $x2853 $x3026 $x2431 $x2650))
      $x4305) (or $x2881 (= S2_V1_!6111 S2_V1_!6106)) 
      (or $x3974 $x4103) $x4115
      (or
      (not (and (or $x202 (= E1_!6094 ?x4361)) $x2989 $x3155 $x4099 $x3206))
      $x2651) (or $x2440 $x3124) 
      (or $x3148 $x3400)
      (or (not (and $x2884 $x4039 $x3238 $x3815 $x3329)) $x3800)
      (or $x2200 $x3064) (or $x2684 $x2864) 
      (or $x2699 $x3228) (or $x2916 $x2491)
      (or $x2872 (= S2_V2_!6113 S2_V2_!6091)) 
      (or $x2881 $x4130)
      (or (not (and $x2646 $x3074 $x2778 $x3526 $x3847)) $x4110)
      (or (not (and $x2944 $x3146 $x2951 $x2837 $x3576)) $x2679)
      (or (not (and $x3481 $x3112 $x2466 $x2508 $x3292)) $x3179) $x2524
      (or (not $x3491) $x2861) 
      (or $x2872 $x2447) (not MW_S1_V1) 
      (not MW_S1_V2) $x2705 $x2921 $x3831 $x2870 $x2939 $x3375)))
    (or (not $x4376) (not $x2771) (and $x3605 $x4295 $x4301 $x3415 $x3661))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let
 (($x6571 (not (or (and W_S2_V2 R_E1_V2) (and W_S2_V5 R_E1_V5) R_E1_V4))))
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
 (($x2462
   (= DISJ_W_S1_W_S2 (not (or W_S2_V3 (and W_S1_V5 W_S2_V5) W_S1_V4)))))
 (let (($x152 (not R_E1_V3)))
 (let
 (($x2885 (not (or R_S2_V3 (and W_S1_V5 R_S2_V5) (and W_S1_V4 R_S2_V4)))))
 (let
 (($x2970 (not (or R_S1_V3 (and W_S1_V5 R_S1_V5) (and W_S1_V4 R_S1_V4)))))
 (let (($x2267 (not W_S2_V5)))
 (let (($x2259 (not W_S2_V2)))
 (let (($x217 (not R_S2_V3)))
 (let (($x215 (not R_S2_V1)))
 (let (($x2285 (not W_S2_V3)))
 (let (($x223 (not R_S2_V4)))
 (let (($x6525 (and $x223 $x2267 $x2285 DISJ_W_S2_R_S1)))
 (let (($x4352 (and $x217 $x223 $x2267 DISJ_W_S2_R_S1)))
 (let (($x4901 (and DISJ_W_S1_R_S2 DISJ_W_S2_R_S1)))
 (let (($x3035 (and DISJ_W_S2_R_S1 DISJ_W_S2_R_S2)))
 (let
 (($x6609
   (or $x3035 (and $x2259 DISJ_W_S2_R_S2) $x4901 $x4352
   (and (not W_S2_V1) $x2259) 
   (and $x217 (not W_S1_V4) $x2267 DISJ_W_S2_R_S1)
   (and DISJ_W_S1_W_S2 DISJ_W_S2_R_S1) $x6525
   (and $x223 (not W_S1_V5) $x2285 DISJ_W_S2_R_S1)
   (and (not R_S2_V5) $x223 $x2285 DISJ_W_S2_R_S1)
   (and (not R_S2_V5) (not W_S1_V4) $x2285 DISJ_W_S2_R_S1)
   (and $x215 $x217 $x223 $x2259 DISJ_W_S2_R_S1)
   (and $x215 $x223 $x2259 $x2285 DISJ_W_S2_R_S1)
   (and $x215 (not R_S2_V5) $x223 $x2259 DISJ_W_S2_R_S1)
   (and $x215 $x223 $x2259 $x2267 DISJ_W_S2_R_S1)
   (and $x215 $x217 (not R_S2_V5) $x2259 DISJ_W_S2_R_S1)
   (and $x215 $x2259 $x2267 $x2285 DISJ_W_S2_R_S1)
   (and $x215 (not R_S2_V5) $x2259 $x2285 DISJ_W_S2_R_S1)
   (and $x215 $x217 $x2259 $x2267 DISJ_W_S2_R_S1))))
 (let
 (($x3621
   (or (and $x2259 DISJ_W_S2_R_S1 DISJ_W_S1_R_S1) 
   (and (not W_S2_V1) $x2259) 
   (and (not R_S1_V1) DISJ_W_S1_R_S1))))
 (let (($x2209 (not W_S1_V2)))
 (let (($x2206 (not W_S1_V1)))
 (let (($x150 (not R_E1_V1)))
 (and DISJ_W_S1_R_E1 $x150 $x2206 $x2209 $x3621 $x6609 W_S1_V3 W_S2_V4
 (= DISJ_W_S1_R_S1 $x2970) 
 (= DISJ_W_S1_R_S2 $x2885) $x152 $x2462 $x112 $x115 
 (= DISJ_W_S2_R_E1 $x6571) $x6721 
 (not (and W_S1_V5 R_E1_V5)) 
 (not (and W_S1_V4 R_E1_V4)))))))))))))))))))))))))))))
(assert (let (($x3035 (and DISJ_W_S2_R_S1 DISJ_W_S2_R_S2))) (not $x3035)))
(assert
 (not (and (not R_S1_V1) DISJ_W_S2_R_S1 DISJ_W_S1_W_S2 DISJ_W_S1_R_S1)))
(assert (let (($x4901 (and DISJ_W_S1_R_S2 DISJ_W_S2_R_S1))) (not $x4901)))
(assert
 (let (($x2267 (not W_S2_V5)))
 (let (($x223 (not R_S2_V4)))
 (let (($x217 (not R_S2_V3)))
 (let (($x4352 (and $x217 $x223 $x2267 DISJ_W_S2_R_S1))) (not $x4352))))))
(assert
 (let (($x2267 (not W_S2_V5)))
 (let (($x2216 (not W_S1_V4)))
 (let (($x217 (not R_S2_V3)))
 (let (($x202 (not R_S1_V1)))
 (not (and $x202 $x217 $x2216 $x2267 DISJ_W_S2_R_S1 DISJ_W_S1_R_S1)))))))
(assert
 (let (($x2267 (not W_S2_V5)))
 (let (($x2216 (not W_S1_V4)))
 (let (($x2213 (not W_S1_V5)))
 (let (($x210 (not R_S1_V4)))
 (not (and $x210 $x2213 $x2216 $x2267 DISJ_W_S1_R_S2)))))))
(assert
 (let (($x2216 (not W_S1_V4)))
 (let (($x2213 (not W_S1_V5)))
 (let (($x210 (not R_S1_V4)))
 (let (($x208 (not R_S1_V5)))
 (not (and $x208 $x210 $x2213 $x2216 DISJ_W_S1_R_S2)))))))
(assert
 (let (($x2285 (not W_S2_V3)))
 (let (($x2267 (not W_S2_V5)))
 (let (($x223 (not R_S2_V4)))
 (let (($x6525 (and $x223 $x2267 $x2285 DISJ_W_S2_R_S1))) (not $x6525))))))
(check-sat)
(exit)

