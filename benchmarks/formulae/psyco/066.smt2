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
(declare-fun R_E1_V4 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun R_E1_V5 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun W_S2_V5 () Bool)
(declare-fun W_S2_V2 () Bool)
(declare-fun W_S2_V3 () Bool)
(declare-fun W_S2_V1 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_S2_V4 () Bool)
(declare-fun R_S2_V5 () Bool)
(declare-fun R_S2_V2 () Bool)
(declare-fun R_S2_V3 () Bool)
(declare-fun R_S2_V1 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun R_E1_V2 () Bool)
(declare-fun DISJ_W_S2_R_E1 () Bool)
(declare-fun DISJ_W_S2_R_S2 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun DISJ_W_S2_R_S1 () Bool)
(declare-fun DISJ_W_S1_W_S2 () Bool)
(declare-fun R_E1_V3 () Bool)
(declare-fun DISJ_W_S1_R_S2 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun W_S2_V4 () Bool)
(declare-fun W_S1_V3 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun R_E1_V1 () Bool)
(declare-fun DISJ_W_S1_R_E1 () Bool)
(assert
 (let (($x51 (and W_S1_V4 R_E1_V4)))
 (let (($x2725 (not $x51)))
 (let (($x49 (and W_S1_V5 R_E1_V5)))
 (let (($x3198 (not $x49)))
 (let
 (($x2697
   (forall
    ((V3_0 Int) (V2_0 Int) 
     (V5_0 Int) (V4_0 Int) 
     (MW_S1_V1 Bool) (MW_S1_V3 Bool) 
     (MW_S1_V2 Bool) (MW_S1_V5 Bool) 
     (MW_S1_V4 Bool) (MW_S2_V1 Bool) 
     (MW_S2_V3 Bool) (MW_S2_V2 Bool) 
     (MW_S2_V5 Bool) (MW_S2_V4 Bool) 
     (S1_V1_!1338 Int) (S1_V1_!1350 Int) 
     (S2_V5_!1347 Int) (S2_V5_!1358 Int) 
     (S1_V3_!1339 Int) (S1_V3_!1351 Int) 
     (S1_V2_!1340 Int) (S1_V2_!1352 Int) 
     (E1_!1337 Int) (E1_!1343 Int) 
     (E1_!1349 Int) (S2_V4_!1348 Int) 
     (S2_V4_!1359 Int) (S1_V5_!1341 Int) 
     (S1_V5_!1353 Int) (S2_V1_!1344 Int) 
     (S2_V1_!1355 Int) (S1_V4_!1342 Int) 
     (S1_V4_!1354 Int) (S2_V2_!1346 Int) 
     (S2_V2_!1357 Int) (S2_V3_!1345 Int) 
     (S2_V3_!1356 Int))
    (let ((?x2777 (ite MW_S1_V4 S1_V4_!1354 V4_0)))
    (let ((?x2663 (ite MW_S2_V4 S2_V4_!1359 ?x2777)))
    (let ((?x2661 (ite MW_S1_V4 S1_V4_!1342 V4_0)))
    (let ((?x2797 (ite MW_S2_V4 S2_V4_!1348 ?x2661)))
    (let (($x2534 (= ?x2797 ?x2663)))
    (let ((?x2650 (ite MW_S1_V5 S1_V5_!1353 V5_0)))
    (let ((?x2289 (ite MW_S2_V5 S2_V5_!1358 ?x2650)))
    (let ((?x2780 (ite MW_S1_V5 S1_V5_!1341 V5_0)))
    (let ((?x2887 (ite MW_S2_V5 S2_V5_!1347 ?x2780)))
    (let (($x2921 (= ?x2887 ?x2289)))
    (let ((?x2735 (ite MW_S1_V2 S1_V2_!1352 V2_0)))
    (let ((?x2708 (ite MW_S2_V2 S2_V2_!1357 ?x2735)))
    (let ((?x2660 (ite MW_S1_V2 S1_V2_!1340 V2_0)))
    (let ((?x2544 (ite MW_S2_V2 S2_V2_!1346 ?x2660)))
    (let (($x2793 (= ?x2544 ?x2708)))
    (let ((?x2448 (ite MW_S1_V3 S1_V3_!1351 V3_0)))
    (let ((?x2642 (ite MW_S2_V3 S2_V3_!1356 ?x2448)))
    (let ((?x2651 (ite MW_S1_V3 S1_V3_!1339 V3_0)))
    (let ((?x2877 (ite MW_S2_V3 S2_V3_!1345 ?x2651)))
    (let (($x2892 (= ?x2877 ?x2642)))
    (let ((?x2295 (ite MW_S1_V1 S1_V1_!1350 E1_!1349)))
    (let ((?x2662 (ite MW_S2_V1 S2_V1_!1355 ?x2295)))
    (let ((?x2498 (ite MW_S2_V1 S2_V1_!1344 E1_!1343)))
    (let (($x2749 (= ?x2498 ?x2662)))
    (let (($x2693 (and $x2749 $x2892 $x2793 $x2921 $x2534)))
    (let ((?x2754 (+ (- 1) ?x2708)))
    (let (($x2765 (>= ?x2662 ?x2754)))
    (let (($x2653 (<= V2_0 E1_!1349)))
    (let (($x2655 (not $x2653)))
    (let ((?x2922 (+ (- 1) ?x2544)))
    (let (($x2664 (>= ?x2498 ?x2922)))
    (let (($x2623 (<= ?x2660 E1_!1343)))
    (let (($x2470 (not $x2623)))
    (let ((?x2648 (+ (- 1) ?x2660)))
    (let ((?x2709 (ite MW_S1_V1 S1_V1_!1338 E1_!1337)))
    (let (($x2868 (>= ?x2709 ?x2648)))
    (let (($x2779 (<= V2_0 E1_!1337)))
    (let (($x2469 (not $x2779)))
    (let (($x2859 (and $x2469 $x2868 $x2470 $x2664 $x2655 $x2765)))
    (let (($x2703 (not $x2859)))
    (let (($x2834 (not MW_S2_V5)))
    (let (($x2869 (or $x2834 W_S2_V5)))
    (let (($x2486 (not MW_S2_V2)))
    (let (($x2723 (or $x2486 W_S2_V2)))
    (let (($x2872 (not MW_S2_V3)))
    (let (($x2907 (or $x2872 W_S2_V3)))
    (let (($x2853 (not MW_S2_V1)))
    (let (($x2865 (or $x2853 W_S2_V1)))
    (let (($x2881 (not MW_S1_V4)))
    (let (($x2863 (or $x2881 W_S1_V4)))
    (let (($x2856 (not MW_S1_V5)))
    (let (($x2855 (or $x2856 W_S1_V5)))
    (let (($x2854 (not MW_S1_V2)))
    (let (($x2499 (not MW_S1_V1)))
    (let (($x2741 (or $x2499 W_S1_V1)))
    (let (($x2748 (= S2_V3_!1356 S2_V3_!1345)))
    (let (($x2522 (= ?x2777 ?x2661)))
    (let (($x407 (not R_S2_V4)))
    (let (($x2494 (or $x407 $x2522)))
    (let (($x2914 (= ?x2650 ?x2780)))
    (let (($x405 (not R_S2_V5)))
    (let (($x2603 (or $x405 $x2914)))
    (let (($x2909 (= ?x2735 ?x2660)))
    (let (($x403 (not R_S2_V2)))
    (let (($x2880 (or $x403 $x2909)))
    (let (($x2616 (= ?x2448 ?x2651)))
    (let (($x401 (not R_S2_V3)))
    (let (($x2617 (or $x401 $x2616)))
    (let (($x2835 (= ?x2295 E1_!1343)))
    (let (($x398 (not R_S2_V1)))
    (let (($x2836 (or $x398 $x2835)))
    (let (($x2900 (and $x2836 $x2617 $x2880 $x2603 $x2494)))
    (let (($x2598 (not $x2900)))
    (let (($x2904 (or $x2598 $x2748)))
    (let (($x2575 (= S2_V2_!1357 S2_V2_!1346)))
    (let (($x2903 (or $x2598 $x2575)))
    (let (($x2586 (= S1_V4_!1342 S1_V4_!1354)))
    (let (($x2584 (= E1_!1337 E1_!1349)))
    (let (($x198 (not R_S1_V1)))
    (let (($x2918 (or $x198 $x2584)))
    (let (($x2724 (not $x2918)))
    (let (($x2497 (or $x2724 $x2586)))
    (let (($x2431 (= S2_V1_!1344 S2_V1_!1355)))
    (let (($x2476 (= ?x2661 ?x2777)))
    (let (($x2505 (or $x407 $x2476)))
    (let (($x2458 (= ?x2780 ?x2650)))
    (let (($x2585 (or $x405 $x2458)))
    (let (($x2595 (= ?x2660 ?x2735)))
    (let (($x2563 (or $x403 $x2595)))
    (let (($x2901 (= ?x2651 ?x2448)))
    (let (($x2478 (or $x401 $x2901)))
    (let (($x2527 (= E1_!1343 ?x2295)))
    (let (($x2453 (or $x398 $x2527)))
    (let (($x2495 (and $x2453 $x2478 $x2563 $x2585 $x2505)))
    (let (($x2530 (not $x2495)))
    (let (($x2542 (or $x2530 $x2431)))
    (let (($x2473 (= S1_V5_!1353 S1_V5_!1341)))
    (let (($x2905 (= E1_!1349 E1_!1337)))
    (let (($x2484 (or $x198 $x2905)))
    (let (($x2457 (not $x2484)))
    (let (($x2460 (or $x2457 $x2473)))
    (let (($x2876 (= S2_V4_!1348 S2_V4_!1359)))
    (let (($x2532 (or $x2530 $x2876)))
    (let (($x2297 (= E1_!1343 E1_!1349)))
    (let (($x2462 (= ?x2661 V4_0)))
    (let (($x161 (not R_E1_V4)))
    (let (($x2449 (or $x161 $x2462)))
    (let (($x2597 (= ?x2780 V5_0)))
    (let (($x159 (not R_E1_V5)))
    (let (($x2822 (or $x159 $x2597)))
    (let (($x2824 (= ?x2660 V2_0)))
    (let (($x157 (not R_E1_V2)))
    (let (($x2919 (or $x157 $x2824)))
    (let (($x2515 (and $x2919 $x2822 $x2449)))
    (let (($x3183 (not $x2515)))
    (let (($x3011 (or $x3183 $x2297)))
    (let (($x2758 (= E1_!1343 E1_!1337)))
    (let (($x3176 (or $x3183 $x2758)))
    (let (($x2543 (= S1_V2_!1352 S1_V2_!1340)))
    (let (($x2912 (or $x2457 $x2543)))
    (let (($x2474 (= S1_V3_!1339 S1_V3_!1351)))
    (let (($x2883 (or $x2724 $x2474)))
    (let (($x2885 (= S2_V5_!1358 S2_V5_!1347)))
    (let (($x2645 (or $x2598 $x2885)))
    (let (($x3189 (= S1_V1_!1350 S1_V1_!1338)))
    (let (($x3003 (or $x2457 $x3189)))
    (let
    (($x2475
      (and $x3003 $x2645 $x2883 $x2912 $x2584 $x3176 $x3011 $x2532 $x2460
      $x2542 $x2497 $x2903 $x2904 $x2741 $x2854 $x2855 $x2863 $x2865 $x2907
      $x2723 $x2869)))
    (let (($x2665 (not $x2475))) (or $x2665 $x2703 $x2693))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let (($x90 (and W_S2_V5 R_E1_V5)))
 (let (($x89 (and W_S2_V2 R_E1_V2)))
 (let (($x3097 (or $x89 $x90 R_E1_V4)))
 (let (($x2955 (not $x3097)))
 (let (($x3179 (= DISJ_W_S2_R_E1 $x2955)))
 (let (($x81 (and W_S2_V5 R_S2_V5)))
 (let (($x80 (and W_S2_V2 R_S2_V2)))
 (let (($x79 (and W_S2_V3 R_S2_V3)))
 (let (($x78 (and W_S2_V1 R_S2_V1)))
 (let (($x113 (or $x78 $x79 $x80 $x81 R_S2_V4)))
 (let (($x114 (not $x113)))
 (let (($x115 (= DISJ_W_S2_R_S2 $x114)))
 (let (($x72 (and W_S2_V5 R_S1_V5)))
 (let (($x71 (and W_S2_V2 R_S1_V2)))
 (let (($x70 (and W_S2_V3 R_S1_V3)))
 (let (($x69 (and W_S2_V1 R_S1_V1)))
 (let (($x110 (or $x69 $x70 $x71 $x72 R_S1_V4)))
 (let (($x111 (not $x110)))
 (let (($x112 (= DISJ_W_S2_R_S1 $x111)))
 (let (($x63 (and W_S1_V5 W_S2_V5)))
 (let (($x57 (and W_S1_V1 W_S2_V1)))
 (let (($x2687 (or $x57 W_S2_V3 $x63 W_S1_V4)))
 (let (($x3034 (not $x2687)))
 (let (($x2938 (= DISJ_W_S1_W_S2 $x3034)))
 (let (($x155 (not R_E1_V3)))
 (let (($x37 (and W_S1_V4 R_S2_V4)))
 (let (($x35 (and W_S1_V5 R_S2_V5)))
 (let (($x29 (and W_S1_V1 R_S2_V1)))
 (let (($x3253 (or $x29 R_S2_V3 $x35 $x37)))
 (let (($x3101 (not $x3253)))
 (let (($x3123 (= DISJ_W_S1_R_S2 $x3101)))
 (let (($x23 (and W_S1_V4 R_S1_V4)))
 (let (($x20 (and W_S1_V5 R_S1_V5)))
 (let (($x12 (and W_S1_V1 R_S1_V1)))
 (let (($x3090 (or $x12 R_S1_V3 $x20 $x23)))
 (let (($x2930 (not $x3090)))
 (let (($x3321 (= DISJ_W_S1_R_S1 $x2930)))
 (let (($x2350 (not W_S1_V2)))
 (let (($x153 (not R_E1_V1)))
 (and DISJ_W_S1_R_E1 $x153 $x2350 W_S1_V3 W_S2_V4 $x3321 $x3123 $x155 $x2938
 $x112 $x115 $x3179 $x2697 $x3198 $x2725))))))))))))))))))))))))))))))))))))))))))))))
(assert W_S1_V1)
(check-sat)
(exit)

