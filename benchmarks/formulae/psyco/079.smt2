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
 (($x3432
   (forall
    ((V3_0 Int) (V2_0 Int) 
     (V5_0 Int) (V4_0 Int) 
     (MW_S1_V1 Bool) (MW_S1_V3 Bool) 
     (MW_S1_V2 Bool) (MW_S1_V5 Bool) 
     (MW_S1_V4 Bool) (MW_S2_V1 Bool) 
     (MW_S2_V3 Bool) (MW_S2_V2 Bool) 
     (MW_S2_V5 Bool) (MW_S2_V4 Bool) 
     (S1_V1_!2447 Int) (S1_V1_!2464 Int) 
     (S1_V1_!2474 Int) (S2_V5_!2456 Int) 
     (S2_V5_!2461 Int) (S2_V5_!2472 Int) 
     (S2_V5_!2482 Int) (S1_V3_!2448 Int) 
     (S1_V3_!2465 Int) (S1_V3_!2475 Int) 
     (S1_V2_!2449 Int) (S1_V2_!2466 Int) 
     (S1_V2_!2476 Int) (E1_!2446 Int) 
     (E1_!2452 Int) (E1_!2463 Int) 
     (S2_V4_!2457 Int) (S2_V4_!2462 Int) 
     (S2_V4_!2473 Int) (S2_V4_!2483 Int) 
     (S1_V5_!2450 Int) (S1_V5_!2467 Int) 
     (S1_V5_!2477 Int) (S2_V1_!2453 Int) 
     (S2_V1_!2458 Int) (S2_V1_!2469 Int) 
     (S2_V1_!2479 Int) (S1_V4_!2451 Int) 
     (S1_V4_!2468 Int) (S1_V4_!2478 Int) 
     (S2_V2_!2455 Int) (S2_V2_!2460 Int) 
     (S2_V2_!2471 Int) (S2_V2_!2481 Int) 
     (S2_V3_!2454 Int) (S2_V3_!2459 Int) 
     (S2_V3_!2470 Int) (S2_V3_!2480 Int))
    (let
    (($x3002
      (= (ite MW_S2_V4 S2_V4_!2462 (ite MW_S1_V4 S1_V4_!2451 V4_0))
      (ite MW_S2_V4 S2_V4_!2483
      (ite MW_S1_V4 S1_V4_!2478
      (ite MW_S2_V4 S2_V4_!2473 (ite MW_S1_V4 S1_V4_!2468 V4_0)))))))
    (let
    (($x2713
      (= (ite MW_S2_V5 S2_V5_!2461 (ite MW_S1_V5 S1_V5_!2450 V5_0))
      (ite MW_S2_V5 S2_V5_!2482
      (ite MW_S1_V5 S1_V5_!2477
      (ite MW_S2_V5 S2_V5_!2472 (ite MW_S1_V5 S1_V5_!2467 V5_0)))))))
    (let ((?x2948 (ite MW_S1_V2 S1_V2_!2466 V2_0)))
    (let ((?x3388 (ite MW_S2_V2 S2_V2_!2471 ?x2948)))
    (let ((?x3300 (ite MW_S1_V2 S1_V2_!2476 ?x3388)))
    (let ((?x2704 (ite MW_S2_V2 S2_V2_!2481 ?x3300)))
    (let ((?x2857 (ite MW_S1_V2 S1_V2_!2449 V2_0)))
    (let ((?x2553 (ite MW_S2_V2 S2_V2_!2460 ?x2857)))
    (let (($x2527 (= ?x2553 ?x2704)))
    (let
    (($x2880
      (= (ite MW_S2_V3 S2_V3_!2459 (ite MW_S1_V3 S1_V3_!2448 V3_0))
      (ite MW_S2_V3 S2_V3_!2480
      (ite MW_S1_V3 S1_V3_!2475
      (ite MW_S2_V3 S2_V3_!2470 (ite MW_S1_V3 S1_V3_!2465 V3_0)))))))
    (let ((?x3143 (ite MW_S1_V1 S1_V1_!2464 E1_!2463)))
    (let ((?x2728 (ite MW_S2_V1 S2_V1_!2469 ?x3143)))
    (let ((?x3112 (+ 1 ?x2728)))
    (let ((?x2839 (ite MW_S1_V1 S1_V1_!2474 ?x3112)))
    (let ((?x3336 (ite MW_S2_V1 S2_V1_!2479 ?x2839)))
    (let ((?x3089 (ite MW_S2_V1 S2_V1_!2453 E1_!2452)))
    (let ((?x2757 (+ 1 ?x3089)))
    (let ((?x2638 (ite MW_S2_V1 S2_V1_!2458 ?x2757)))
    (let (($x3407 (= ?x2638 ?x3336)))
    (let
    (($x2689
      (and (not (<= V2_0 E1_!2446))
      (>= (ite MW_S1_V1 S1_V1_!2447 E1_!2446) (+ (- 1) ?x2857))
      (not (<= ?x2857 E1_!2452))
      (not (<= (ite MW_S2_V2 S2_V2_!2455 ?x2857) ?x2757))
      (>= ?x2638 (+ (- 1) ?x2553)) 
      (not (<= V2_0 E1_!2463)) 
      (not (<= ?x3388 ?x3112)) 
      (>= ?x3336 (+ (- 1) ?x2704)))))
    (let (($x2516 (or (not MW_S2_V5) W_S2_V5)))
    (let (($x2925 (or (not MW_S2_V2) W_S2_V2)))
    (let (($x3085 (or (not MW_S2_V3) W_S2_V3)))
    (let (($x2447 (or (not MW_S2_V1) W_S2_V1)))
    (let (($x3315 (or (not MW_S1_V4) W_S1_V4)))
    (let (($x2299 (or (not MW_S1_V5) W_S1_V5)))
    (let (($x2673 (= S2_V3_!2480 S2_V3_!2470)))
    (let ((?x2872 (ite MW_S1_V4 S1_V4_!2468 V4_0)))
    (let ((?x2588 (ite MW_S2_V4 S2_V4_!2473 ?x2872)))
    (let ((?x2488 (ite MW_S1_V4 S1_V4_!2478 ?x2588)))
    (let (($x407 (not R_S2_V4)))
    (let (($x2670 (or $x407 (= ?x2488 ?x2872))))
    (let ((?x2789 (ite MW_S1_V5 S1_V5_!2467 V5_0)))
    (let ((?x2967 (ite MW_S2_V5 S2_V5_!2472 ?x2789)))
    (let ((?x3086 (ite MW_S1_V5 S1_V5_!2477 ?x2967)))
    (let (($x405 (not R_S2_V5)))
    (let (($x3240 (or $x405 (= ?x3086 ?x2789))))
    (let (($x403 (not R_S2_V2)))
    (let (($x2533 (or $x403 (= ?x3300 ?x2948))))
    (let ((?x2700 (ite MW_S1_V3 S1_V3_!2465 V3_0)))
    (let ((?x2989 (ite MW_S2_V3 S2_V3_!2470 ?x2700)))
    (let ((?x2722 (ite MW_S1_V3 S1_V3_!2475 ?x2989)))
    (let (($x401 (not R_S2_V3)))
    (let (($x2844 (or $x401 (= ?x2722 ?x2700))))
    (let (($x398 (not R_S2_V1)))
    (let (($x3823 (or $x398 (= ?x2839 ?x3143))))
    (let (($x3851 (not (and $x3823 $x2844 $x2533 $x3240 $x2670))))
    (let (($x2815 (= S2_V3_!2480 S2_V3_!2459)))
    (let
    (($x3097
      (or $x407
      (= ?x2488 (ite MW_S2_V4 S2_V4_!2457 (ite MW_S1_V4 S1_V4_!2451 V4_0))))))
    (let
    (($x3372
      (or $x405
      (= ?x3086 (ite MW_S2_V5 S2_V5_!2456 (ite MW_S1_V5 S1_V5_!2450 V5_0))))))
    (let (($x3449 (or $x403 (= ?x3300 (ite MW_S2_V2 S2_V2_!2455 ?x2857)))))
    (let
    (($x3339
      (or $x401
      (= ?x2722 (ite MW_S2_V3 S2_V3_!2454 (ite MW_S1_V3 S1_V3_!2448 V3_0))))))
    (let
    (($x3721
      (not (and (or $x398 (= ?x2839 ?x2757)) $x3339 $x3449 $x3372 $x3097))))
    (let (($x2775 (= S2_V3_!2470 S2_V3_!2459)))
    (let
    (($x2639
      (or $x407
      (= ?x2872 (ite MW_S2_V4 S2_V4_!2457 (ite MW_S1_V4 S1_V4_!2451 V4_0))))))
    (let
    (($x2289
      (or $x405
      (= ?x2789 (ite MW_S2_V5 S2_V5_!2456 (ite MW_S1_V5 S1_V5_!2450 V5_0))))))
    (let (($x2643 (or $x403 (= ?x2948 (ite MW_S2_V2 S2_V2_!2455 ?x2857)))))
    (let
    (($x2814
      (or $x401
      (= ?x2700 (ite MW_S2_V3 S2_V3_!2454 (ite MW_S1_V3 S1_V3_!2448 V3_0))))))
    (let
    (($x3268
      (not (and (or $x398 (= ?x3143 ?x2757)) $x2814 $x2643 $x2289 $x2639))))
    (let (($x3295 (= S2_V3_!2454 S2_V3_!2480)))
    (let (($x2824 (or $x407 (= (ite MW_S1_V4 S1_V4_!2451 V4_0) ?x2488))))
    (let (($x2586 (or $x405 (= (ite MW_S1_V5 S1_V5_!2450 V5_0) ?x3086))))
    (let (($x2563 (or $x403 (= ?x2857 ?x3300))))
    (let (($x4011 (or $x401 (= (ite MW_S1_V3 S1_V3_!2448 V3_0) ?x2722))))
    (let (($x3168 (or $x398 (= E1_!2452 ?x2839))))
    (let (($x3191 (not (and $x3168 $x4011 $x2563 $x2586 $x2824))))
    (let (($x3040 (= S2_V3_!2454 S2_V3_!2470)))
    (let (($x3224 (or $x407 (= (ite MW_S1_V4 S1_V4_!2451 V4_0) ?x2872))))
    (let (($x2610 (or $x405 (= (ite MW_S1_V5 S1_V5_!2450 V5_0) ?x2789))))
    (let (($x3033 (or $x403 (= ?x2857 ?x2948))))
    (let (($x3000 (or $x401 (= (ite MW_S1_V3 S1_V3_!2448 V3_0) ?x2700))))
    (let (($x3553 (or $x398 (= E1_!2452 ?x3143))))
    (let (($x3678 (not (and $x3553 $x3000 $x3033 $x2610 $x3224))))
    (let (($x3478 (= S2_V3_!2454 S2_V3_!2459)))
    (let
    (($x3705
      (or $x407
      (= (ite MW_S1_V4 S1_V4_!2451 V4_0)
      (ite MW_S2_V4 S2_V4_!2457 (ite MW_S1_V4 S1_V4_!2451 V4_0))))))
    (let
    (($x3221
      (or $x405
      (= (ite MW_S1_V5 S1_V5_!2450 V5_0)
      (ite MW_S2_V5 S2_V5_!2456 (ite MW_S1_V5 S1_V5_!2450 V5_0))))))
    (let (($x3906 (or $x403 (= ?x2857 (ite MW_S2_V2 S2_V2_!2455 ?x2857)))))
    (let
    (($x3557
      (or $x401
      (= (ite MW_S1_V3 S1_V3_!2448 V3_0)
      (ite MW_S2_V3 S2_V3_!2454 (ite MW_S1_V3 S1_V3_!2448 V3_0))))))
    (let
    (($x2507
      (not (and (or $x398 (= E1_!2452 ?x2757)) $x3557 $x3906 $x3221 $x3705))))
    (let (($x4101 (= S2_V2_!2481 S2_V2_!2455)))
    (let (($x2640 (or $x407 (= ?x2488 (ite MW_S1_V4 S1_V4_!2451 V4_0)))))
    (let (($x3802 (or $x405 (= ?x3086 (ite MW_S1_V5 S1_V5_!2450 V5_0)))))
    (let (($x3331 (or $x403 (= ?x3300 ?x2857))))
    (let (($x4146 (or $x401 (= ?x2722 (ite MW_S1_V3 S1_V3_!2448 V3_0)))))
    (let (($x2767 (or $x398 (= ?x2839 E1_!2452))))
    (let (($x3798 (= S2_V2_!2471 S2_V2_!2481)))
    (let (($x3573 (or $x407 (= ?x2872 ?x2488))))
    (let (($x3713 (or $x405 (= ?x2789 ?x3086))))
    (let (($x3474 (or $x403 (= ?x2948 ?x3300))))
    (let (($x3356 (or $x401 (= ?x2700 ?x2722))))
    (let (($x3218 (or $x398 (= ?x3143 ?x2839))))
    (let (($x2971 (= S2_V2_!2471 S2_V2_!2455)))
    (let (($x3137 (or $x407 (= ?x2872 (ite MW_S1_V4 S1_V4_!2451 V4_0)))))
    (let (($x2714 (or $x405 (= ?x2789 (ite MW_S1_V5 S1_V5_!2450 V5_0)))))
    (let (($x2758 (or $x403 (= ?x2948 ?x2857))))
    (let (($x2865 (or $x401 (= ?x2700 (ite MW_S1_V3 S1_V3_!2448 V3_0)))))
    (let (($x3176 (or $x398 (= ?x3143 E1_!2452))))
    (let (($x2430 (= S1_V4_!2478 S1_V4_!2451)))
    (let (($x206 (not R_S1_V4)))
    (let (($x3378 (or $x206 (= ?x2588 V4_0))))
    (let (($x204 (not R_S1_V5)))
    (let (($x2631 (or $x204 (= ?x2967 V5_0))))
    (let (($x202 (not R_S1_V2)))
    (let (($x2444 (or $x202 (= ?x3388 V2_0))))
    (let (($x200 (not R_S1_V3)))
    (let (($x3512 (or $x200 (= ?x2989 V3_0))))
    (let
    (($x3054
      (and (or (not R_S1_V1) (= ?x2728 (+ (- 1) E1_!2446))) $x3512 $x2444
      $x2631 $x3378)))
    (let (($x2831 (not $x3054)))
    (let (($x3301 (= S1_V4_!2468 S1_V4_!2478)))
    (let (($x2697 (or $x206 (= V4_0 ?x2588))))
    (let (($x2836 (or $x204 (= V5_0 ?x2967))))
    (let (($x2532 (or $x202 (= V2_0 ?x3388))))
    (let (($x2649 (or $x200 (= V3_0 ?x2989))))
    (let
    (($x2923
      (not
      (and (or (not R_S1_V1) (= E1_!2463 ?x3112)) $x2649 $x2532 $x2836
      $x2697))))
    (let (($x2732 (not (or (not R_S1_V1) (= E1_!2463 E1_!2446)))))
    (let (($x3409 (or $x2732 (= S1_V4_!2468 S1_V4_!2451))))
    (let (($x3507 (= S2_V1_!2458 S2_V1_!2479)))
    (let
    (($x3891
      (or $x407
      (= (ite MW_S2_V4 S2_V4_!2457 (ite MW_S1_V4 S1_V4_!2451 V4_0)) ?x2488))))
    (let
    (($x2691
      (or $x405
      (= (ite MW_S2_V5 S2_V5_!2456 (ite MW_S1_V5 S1_V5_!2450 V5_0)) ?x3086))))
    (let (($x2617 (or $x403 (= (ite MW_S2_V2 S2_V2_!2455 ?x2857) ?x3300))))
    (let
    (($x2468
      (or $x401
      (= (ite MW_S2_V3 S2_V3_!2454 (ite MW_S1_V3 S1_V3_!2448 V3_0)) ?x2722))))
    (let
    (($x2679
      (or
      (not
      (and (or $x398 (= ?x3089 (+ (- 1) ?x2839))) $x2468 $x2617 $x2691
      $x3891)) $x3507)))
    (let (($x3342 (= S1_V5_!2477 S1_V5_!2467)))
    (let
    (($x2800
      (and (or (not R_S1_V1) (= ?x2728 (+ (- 1) E1_!2463))) $x3512 $x2444
      $x2631 $x3378)))
    (let (($x3090 (or $x2732 (= S1_V5_!2467 S1_V5_!2450))))
    (let (($x2768 (= S2_V4_!2462 S2_V4_!2483)))
    (let
    (($x2630
      (or
      (not
      (and (or $x398 (= ?x3089 (+ (- 1) ?x2839))) $x2468 $x2617 $x2691
      $x3891)) $x2768)))
    (let (($x2892 (= S2_V4_!2462 S2_V4_!2473)))
    (let
    (($x3166
      (or $x407
      (= (ite MW_S2_V4 S2_V4_!2457 (ite MW_S1_V4 S1_V4_!2451 V4_0)) ?x2872))))
    (let
    (($x3178
      (or $x405
      (= (ite MW_S2_V5 S2_V5_!2456 (ite MW_S1_V5 S1_V5_!2450 V5_0)) ?x2789))))
    (let (($x2580 (or $x403 (= (ite MW_S2_V2 S2_V2_!2455 ?x2857) ?x2948))))
    (let
    (($x2472
      (or $x401
      (= (ite MW_S2_V3 S2_V3_!2454 (ite MW_S1_V3 S1_V3_!2448 V3_0)) ?x2700))))
    (let
    (($x3396
      (or
      (not
      (and (or $x398 (= ?x3089 (+ (- 1) ?x3143))) $x2472 $x2580 $x3178
      $x3166)) $x2892)))
    (let (($x2792 (= E1_!2463 E1_!2446)))
    (let (($x2671 (= E1_!2452 E1_!2463)))
    (let (($x161 (not R_E1_V4)))
    (let (($x3163 (or $x161 (= (ite MW_S1_V4 S1_V4_!2451 V4_0) V4_0))))
    (let (($x159 (not R_E1_V5)))
    (let (($x2848 (or $x159 (= (ite MW_S1_V5 S1_V5_!2450 V5_0) V5_0))))
    (let (($x157 (not R_E1_V2)))
    (let (($x3059 (or $x157 (= ?x2857 V2_0))))
    (let (($x2913 (or $x2732 (= S1_V2_!2466 S1_V2_!2449))))
    (let (($x2709 (or $x2732 (= S1_V3_!2465 S1_V3_!2448))))
    (let (($x2295 (= S2_V5_!2461 S2_V5_!2472)))
    (let
    (($x2477
      (or
      (not
      (and (or $x398 (= ?x3089 (+ (- 1) ?x3143))) $x2472 $x2580 $x3178
      $x3166)) $x2295)))
    (let (($x2663 (= S2_V5_!2461 S2_V5_!2456)))
    (let
    (($x3393
      (or $x407
      (= (ite MW_S2_V4 S2_V4_!2457 (ite MW_S1_V4 S1_V4_!2451 V4_0))
      (ite MW_S1_V4 S1_V4_!2451 V4_0)))))
    (let
    (($x2451
      (or $x405
      (= (ite MW_S2_V5 S2_V5_!2456 (ite MW_S1_V5 S1_V5_!2450 V5_0))
      (ite MW_S1_V5 S1_V5_!2450 V5_0)))))
    (let (($x3375 (or $x403 (= (ite MW_S2_V2 S2_V2_!2455 ?x2857) ?x2857))))
    (let
    (($x2899
      (or $x401
      (= (ite MW_S2_V3 S2_V3_!2454 (ite MW_S1_V3 S1_V3_!2448 V3_0))
      (ite MW_S1_V3 S1_V3_!2448 V3_0)))))
    (let
    (($x2819
      (or
      (not
      (and (or $x398 (= ?x3089 (+ (- 1) E1_!2452))) $x2899 $x3375 $x2451
      $x3393)) $x2663)))
    (let (($x3882 (or $x2732 (= S1_V1_!2464 S1_V1_!2447))))
    (let (($x4095 (= S1_V1_!2447 S1_V1_!2474)))
    (let
    (($x3354
      (or
      (not
      (and (or (not R_S1_V1) (= E1_!2446 ?x3112)) $x2649 $x2532 $x2836
      $x2697)) $x4095)))
    (let
    (($x3050
      (and $x3354 $x3882 (or $x2923 (= S1_V1_!2464 S1_V1_!2474))
      (or $x3678 (= S2_V5_!2456 S2_V5_!2472)) $x2819 $x2477
      (or (not (and $x2767 $x4146 $x3331 $x3802 $x2640))
      (= S2_V5_!2482 S2_V5_!2456)) 
      (or $x3721 (= S2_V5_!2482 S2_V5_!2461))
      (or $x3851 (= S2_V5_!2482 S2_V5_!2472)) $x2709
      (or $x2923 (= S1_V3_!2465 S1_V3_!2475))
      (or $x2831 (= S1_V3_!2475 S1_V3_!2448)) $x2913
      (or $x2831 (= S1_V2_!2476 S1_V2_!2449))
      (or (not $x2800) (= S1_V2_!2476 S1_V2_!2466))
      (or (not (and $x3059 $x2848 $x3163)) (= E1_!2452 E1_!2446))
      (or (not (and $x3059 $x2848 $x3163)) $x2671) $x2792
      (or $x2507 (= S2_V4_!2457 S2_V4_!2462))
      (or $x3678 (= S2_V4_!2457 S2_V4_!2473))
      (or $x3191 (= S2_V4_!2457 S2_V4_!2483)) $x3396 $x2630
      (or $x3851 (= S2_V4_!2483 S2_V4_!2473)) $x3090
      (or $x2831 (= S1_V5_!2477 S1_V5_!2450)) 
      (or (not $x2800) $x3342) 
      (or $x2507 (= S2_V1_!2453 S2_V1_!2458))
      (or $x3191 (= S2_V1_!2453 S2_V1_!2479)) $x2679
      (or (not (and $x3176 $x2865 $x2758 $x2714 $x3137))
      (= S2_V1_!2469 S2_V1_!2453)) 
      (or $x3268 (= S2_V1_!2469 S2_V1_!2458))
      (or (not (and $x3218 $x3356 $x3474 $x3713 $x3573))
      (= S2_V1_!2469 S2_V1_!2479)) $x3409 
      (or $x2923 $x3301) (or $x2831 $x2430)
      (or $x2507 (= S2_V2_!2455 S2_V2_!2460))
      (or (not (and $x3176 $x2865 $x2758 $x2714 $x3137)) $x2971)
      (or $x3268 (= S2_V2_!2471 S2_V2_!2460))
      (or (not (and $x3218 $x3356 $x3474 $x3713 $x3573)) $x3798)
      (or (not (and $x2767 $x4146 $x3331 $x3802 $x2640)) $x4101)
      (or $x3721 (= S2_V2_!2481 S2_V2_!2460)) 
      (or $x2507 $x3478) (or $x3678 $x3040) 
      (or $x3191 $x3295) (or $x3268 $x2775) 
      (or $x3721 $x2815) (or $x3851 $x2673) 
      (not MW_S1_V1) (not MW_S1_V2) $x2299 $x3315 $x2447 $x3085 $x2925
      $x2516)))
    (or (not $x3050) (not $x2689) (and $x3407 $x2880 $x2527 $x2713 $x3002))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let
 (($x3362 (not (or (and W_S2_V2 R_E1_V2) (and W_S2_V5 R_E1_V5) R_E1_V4))))
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
 (($x3360
   (= DISJ_W_S1_W_S2 (not (or W_S2_V3 (and W_S1_V5 W_S2_V5) W_S1_V4)))))
 (let (($x155 (not R_E1_V3)))
 (let
 (($x3008 (not (or R_S2_V3 (and W_S1_V5 R_S2_V5) (and W_S1_V4 R_S2_V4)))))
 (let
 (($x3307 (not (or R_S1_V3 (and W_S1_V5 R_S1_V5) (and W_S1_V4 R_S1_V4)))))
 (let (($x2387 (not W_S2_V2)))
 (let (($x2384 (not W_S2_V1)))
 (let (($x3644 (and $x2384 $x2387)))
 (let
 (($x3290
   (or (and $x2387 DISJ_W_S2_R_S1 DISJ_W_S1_R_S1) $x3644
   (and (not R_S1_V1) DISJ_W_S1_R_S1))))
 (let (($x2350 (not W_S1_V2)))
 (let (($x2301 (not W_S1_V1)))
 (let (($x153 (not R_E1_V1)))
 (and DISJ_W_S1_R_E1 $x153 $x2301 $x2350 $x3290 W_S1_V3 W_S2_V4
 (= DISJ_W_S1_R_S1 $x3307) 
 (= DISJ_W_S1_R_S2 $x3008) $x155 $x3360 $x112 $x115 
 (= DISJ_W_S2_R_E1 $x3362) $x3432 
 (not (and W_S1_V5 R_E1_V5)) 
 (not (and W_S1_V4 R_E1_V4)))))))))))))))))))))
(assert (not (and DISJ_W_S2_R_S1 DISJ_W_S2_R_S2)))
(assert (not (and (not W_S2_V2) DISJ_W_S2_R_S2)))
(assert (not (and DISJ_W_S1_R_S2 DISJ_W_S2_R_S1)))
(assert (not (and (not R_S2_V3) (not W_S1_V4) (not W_S2_V5) DISJ_W_S2_R_S1)))
(assert (not (and (not R_S2_V4) (not W_S2_V5) (not W_S2_V3) DISJ_W_S2_R_S1)))
(assert (not (and (not R_S2_V3) (not R_S2_V4) (not W_S2_V5) DISJ_W_S2_R_S1)))
(assert
 (let (($x2387 (not W_S2_V2)))
 (let (($x2384 (not W_S2_V1)))
 (let (($x3644 (and $x2384 $x2387))) (not $x3644)))))
(assert
 (let (($x2390 (not W_S2_V5)))
 (let (($x2387 (not W_S2_V2)))
 (let (($x401 (not R_S2_V3)))
 (let (($x398 (not R_S2_V1)))
 (let (($x4273 (and $x398 $x401 $x2387 $x2390 DISJ_W_S2_R_S1))) (not $x4273)))))))
(check-sat)
(exit)

