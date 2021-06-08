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
 (let (($x2445 (not $x51)))
 (let (($x49 (and W_S1_V5 R_E1_V5)))
 (let (($x2879 (not $x49)))
 (let
 (($x3108
   (forall
    ((V3_0 Int) (V2_0 Int) 
     (V5_0 Int) (V4_0 Int) 
     (MW_S1_V1 Bool) (MW_S1_V3 Bool) 
     (MW_S1_V2 Bool) (MW_S1_V5 Bool) 
     (MW_S1_V4 Bool) (MW_S2_V1 Bool) 
     (MW_S2_V3 Bool) (MW_S2_V2 Bool) 
     (MW_S2_V5 Bool) (MW_S2_V4 Bool) 
     (S1_V1_!1338 Int) (S1_V1_!1349 Int) 
     (S2_V5_!1346 Int) (S2_V5_!1358 Int) 
     (S1_V3_!1339 Int) (S1_V3_!1350 Int) 
     (S1_V2_!1340 Int) (S1_V2_!1351 Int) 
     (E1_!1337 Int) (E1_!1348 Int) 
     (E1_!1354 Int) (S2_V4_!1347 Int) 
     (S2_V4_!1359 Int) (S1_V5_!1341 Int) 
     (S1_V5_!1352 Int) (S2_V1_!1343 Int) 
     (S2_V1_!1355 Int) (S1_V4_!1342 Int) 
     (S1_V4_!1353 Int) (S2_V2_!1345 Int) 
     (S2_V2_!1357 Int) (S2_V3_!1344 Int) 
     (S2_V3_!1356 Int))
    (let ((?x2634 (ite MW_S1_V4 S1_V4_!1353 V4_0)))
    (let ((?x2635 (ite MW_S2_V4 S2_V4_!1359 ?x2634)))
    (let ((?x2628 (ite MW_S1_V4 S1_V4_!1342 V4_0)))
    (let ((?x2637 (ite MW_S2_V4 S2_V4_!1347 ?x2628)))
    (let (($x2629 (= ?x2637 ?x2635)))
    (let ((?x2630 (ite MW_S1_V5 S1_V5_!1352 V5_0)))
    (let ((?x2631 (ite MW_S2_V5 S2_V5_!1358 ?x2630)))
    (let ((?x2609 (ite MW_S1_V5 S1_V5_!1341 V5_0)))
    (let ((?x2610 (ite MW_S2_V5 S2_V5_!1346 ?x2609)))
    (let (($x2703 (= ?x2610 ?x2631)))
    (let ((?x2876 (ite MW_S1_V2 S1_V2_!1351 V2_0)))
    (let ((?x2709 (ite MW_S2_V2 S2_V2_!1357 ?x2876)))
    (let ((?x2464 (ite MW_S1_V2 S1_V2_!1340 V2_0)))
    (let ((?x2486 (ite MW_S2_V2 S2_V2_!1345 ?x2464)))
    (let (($x2200 (= ?x2486 ?x2709)))
    (let ((?x2726 (ite MW_S1_V3 S1_V3_!1350 V3_0)))
    (let ((?x2612 (ite MW_S2_V3 S2_V3_!1356 ?x2726)))
    (let ((?x2469 (ite MW_S1_V3 S1_V3_!1339 V3_0)))
    (let ((?x2202 (ite MW_S2_V3 S2_V3_!1344 ?x2469)))
    (let (($x2625 (= ?x2202 ?x2612)))
    (let ((?x2818 (ite MW_S2_V1 S2_V1_!1355 E1_!1354)))
    (let ((?x2887 (ite MW_S1_V1 S1_V1_!1338 E1_!1337)))
    (let ((?x2470 (ite MW_S2_V1 S2_V1_!1343 ?x2887)))
    (let (($x2652 (= ?x2470 ?x2818)))
    (let (($x2684 (and $x2652 $x2625 $x2200 $x2703 $x2629)))
    (let ((?x2815 (+ (- 1) ?x2709)))
    (let (($x2524 (>= ?x2818 ?x2815)))
    (let (($x2600 (<= ?x2876 E1_!1354)))
    (let (($x2882 (not $x2600)))
    (let ((?x2765 (+ (- 1) ?x2876)))
    (let ((?x2842 (ite MW_S1_V1 S1_V1_!1349 E1_!1348)))
    (let (($x2204 (>= ?x2842 ?x2765)))
    (let (($x2506 (<= V2_0 E1_!1348)))
    (let (($x2475 (not $x2506)))
    (let ((?x2895 (+ (- 1) ?x2486)))
    (let (($x2830 (>= ?x2470 ?x2895)))
    (let (($x2918 (<= V2_0 E1_!1337)))
    (let (($x2203 (not $x2918)))
    (let (($x2902 (and $x2203 $x2830 $x2475 $x2204 $x2882 $x2524)))
    (let (($x2602 (not $x2902)))
    (let (($x2484 (not MW_S2_V5)))
    (let (($x2499 (or $x2484 W_S2_V5)))
    (let (($x2877 (not MW_S2_V2)))
    (let (($x2843 (or $x2877 W_S2_V2)))
    (let (($x2872 (not MW_S2_V3)))
    (let (($x2819 (or $x2872 W_S2_V3)))
    (let (($x2820 (not MW_S2_V1)))
    (let (($x2480 (or $x2820 W_S2_V1)))
    (let (($x2854 (not MW_S1_V4)))
    (let (($x2821 (or $x2854 W_S1_V4)))
    (let (($x2884 (not MW_S1_V5)))
    (let (($x2565 (or $x2884 W_S1_V5)))
    (let (($x2706 (not MW_S1_V2)))
    (let (($x2704 (not MW_S1_V1)))
    (let (($x2586 (or $x2704 W_S1_V1)))
    (let (($x2823 (= S2_V3_!1356 S2_V3_!1344)))
    (let (($x2444 (= ?x2634 ?x2628)))
    (let (($x223 (not R_S2_V4)))
    (let (($x2801 (or $x223 $x2444)))
    (let (($x2604 (= ?x2630 ?x2609)))
    (let (($x221 (not R_S2_V5)))
    (let (($x2621 (or $x221 $x2604)))
    (let (($x2869 (= ?x2876 ?x2464)))
    (let (($x219 (not R_S2_V2)))
    (let (($x2607 (or $x219 $x2869)))
    (let (($x2907 (= ?x2726 ?x2469)))
    (let (($x217 (not R_S2_V3)))
    (let (($x2912 (or $x217 $x2907)))
    (let (($x2433 (= E1_!1354 ?x2887)))
    (let (($x215 (not R_S2_V1)))
    (let (($x2574 (or $x215 $x2433)))
    (let (($x2442 (and $x2574 $x2912 $x2607 $x2621 $x2801)))
    (let (($x2453 (not $x2442)))
    (let (($x2199 (or $x2453 $x2823)))
    (let (($x2478 (= S2_V2_!1345 S2_V2_!1357)))
    (let (($x2855 (= ?x2628 ?x2634)))
    (let (($x2598 (or $x223 $x2855)))
    (let (($x2431 (= ?x2609 ?x2630)))
    (let (($x2865 (or $x221 $x2431)))
    (let (($x2468 (= ?x2464 ?x2876)))
    (let (($x2883 (or $x219 $x2468)))
    (let (($x2923 (= ?x2469 ?x2726)))
    (let (($x2892 (or $x217 $x2923)))
    (let (($x2921 (= ?x2887 E1_!1354)))
    (let (($x2870 (or $x215 $x2921)))
    (let (($x2477 (and $x2870 $x2892 $x2883 $x2865 $x2598)))
    (let (($x2608 (not $x2477)))
    (let (($x2562 (or $x2608 $x2478)))
    (let (($x2862 (= S1_V4_!1353 S1_V4_!1342)))
    (let (($x2916 (= E1_!1348 E1_!1337)))
    (let (($x202 (not R_S1_V1)))
    (let (($x2802 (or $x202 $x2916)))
    (let (($x2803 (not $x2802)))
    (let (($x2201 (or $x2803 $x2862)))
    (let (($x2540 (= S2_V1_!1355 S2_V1_!1343)))
    (let (($x2903 (or $x2453 $x2540)))
    (let (($x2913 (= S1_V5_!1341 S1_V5_!1352)))
    (let (($x2866 (= E1_!1337 E1_!1348)))
    (let (($x2587 (or $x202 $x2866)))
    (let (($x2758 (not $x2587)))
    (let (($x2606 (or $x2758 $x2913)))
    (let (($x2439 (= S2_V4_!1347 S2_V4_!1359)))
    (let (($x2910 (or $x2608 $x2439)))
    (let (($x2890 (= E1_!1348 E1_!1354)))
    (let (($x2462 (= V4_0 ?x2634)))
    (let (($x158 (not R_E1_V4)))
    (let (($x2563 (or $x158 $x2462)))
    (let (($x2873 (= V5_0 ?x2630)))
    (let (($x156 (not R_E1_V5)))
    (let (($x2498 (or $x156 $x2873)))
    (let (($x2532 (= V2_0 ?x2876)))
    (let (($x154 (not R_E1_V2)))
    (let (($x2479 (or $x154 $x2532)))
    (let (($x2858 (and $x2479 $x2498 $x2563)))
    (let (($x2611 (not $x2858)))
    (let (($x3136 (or $x2611 $x2890)))
    (let (($x2461 (= E1_!1337 E1_!1354)))
    (let (($x3134 (or $x2611 $x2461)))
    (let (($x2599 (= S1_V2_!1340 S1_V2_!1351)))
    (let (($x2760 (or $x2758 $x2599)))
    (let (($x2917 (= S1_V3_!1339 S1_V3_!1350)))
    (let (($x2904 (or $x2758 $x2917)))
    (let (($x2896 (= S2_V5_!1358 S2_V5_!1346)))
    (let (($x2550 (or $x2453 $x2896)))
    (let (($x2580 (= S1_V1_!1338 S1_V1_!1349)))
    (let (($x2909 (or $x2758 $x2580)))
    (let
    (($x2615
      (and $x2909 $x2550 $x2904 $x2760 $x2866 $x3134 $x3136 $x2910 $x2606
      $x2903 $x2201 $x2562 $x2199 $x2586 $x2706 $x2565 $x2821 $x2480 $x2819
      $x2843 $x2499)))
    (let (($x2789 (not $x2615))) (or $x2789 $x2602 $x2684))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let (($x90 (and W_S2_V5 R_E1_V5)))
 (let (($x89 (and W_S2_V2 R_E1_V2)))
 (let (($x2504 (or $x89 $x90 R_E1_V4)))
 (let (($x3012 (not $x2504)))
 (let (($x2613 (= DISJ_W_S2_R_E1 $x3012)))
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
 (let (($x2472 (or $x57 W_S2_V3 $x63 W_S1_V4)))
 (let (($x2597 (not $x2472)))
 (let (($x2831 (= DISJ_W_S1_W_S2 $x2597)))
 (let (($x152 (not R_E1_V3)))
 (let (($x37 (and W_S1_V4 R_S2_V4)))
 (let (($x35 (and W_S1_V5 R_S2_V5)))
 (let (($x29 (and W_S1_V1 R_S2_V1)))
 (let (($x2430 (or $x29 R_S2_V3 $x35 $x37)))
 (let (($x2471 (not $x2430)))
 (let (($x2588 (= DISJ_W_S1_R_S2 $x2471)))
 (let (($x23 (and W_S1_V4 R_S1_V4)))
 (let (($x20 (and W_S1_V5 R_S1_V5)))
 (let (($x12 (and W_S1_V1 R_S1_V1)))
 (let (($x2541 (or $x12 R_S1_V3 $x20 $x23)))
 (let (($x2543 (not $x2541)))
 (let (($x2529 (= DISJ_W_S1_R_S1 $x2543)))
 (let (($x2209 (not W_S1_V2)))
 (let (($x150 (not R_E1_V1)))
 (and DISJ_W_S1_R_E1 $x150 $x2209 W_S1_V3 W_S2_V4 $x2529 $x2588 $x152 $x2831
 $x112 $x115 $x2613 $x3108 $x2879 $x2445))))))))))))))))))))))))))))))))))))))))))))))
(assert W_S1_V1)
(check-sat)
(exit)
