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
(declare-fun W_S1_V4 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_E1_V4 () Bool)
(declare-fun R_E1_V2 () Bool)
(declare-fun R_E1_V3 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun DISJ_W_S1_R_E1 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun W_S1_V3 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun R_E1_V1 () Bool)
(assert
 (let
 (($x1610
   (forall
    ((V3_0 Int) (V2_0 Int) 
     (V4_0 Int) (MW_S1_V1 Bool) 
     (MW_S1_V3 Bool) (MW_S1_V2 Bool) 
     (MW_S1_V4 Bool) (S1_V3_!764 Int) 
     (S1_V3_!768 Int) (S1_V3_!774 Int) 
     (S1_V3_!779 Int) (S1_V4_!766 Int) 
     (S1_V4_!770 Int) (S1_V4_!776 Int) 
     (S1_V4_!781 Int) (S1_V1_!763 Int) 
     (S1_V1_!767 Int) (S1_V1_!773 Int) 
     (S1_V1_!778 Int) (S1_V2_!765 Int) 
     (S1_V2_!769 Int) (S1_V2_!775 Int) 
     (S1_V2_!780 Int) (E1_!762 Int) 
     (E1_!771 Int) (E1_!772 Int) 
     (E1_!777 Int) (E1_!782 Int))
    (let ((?x1059 (ite MW_S1_V4 S1_V4_!781 V4_0)))
    (let ((?x1329 (ite MW_S1_V4 S1_V4_!770 V4_0)))
    (let (($x724 (= ?x1329 ?x1059)))
    (let ((?x1167 (ite MW_S1_V2 S1_V2_!780 V2_0)))
    (let ((?x755 (ite MW_S1_V2 S1_V2_!769 V2_0)))
    (let (($x1178 (= ?x755 ?x1167)))
    (let ((?x1331 (ite MW_S1_V3 S1_V3_!779 V3_0)))
    (let ((?x1060 (ite MW_S1_V3 S1_V3_!768 V3_0)))
    (let (($x563 (= ?x1060 ?x1331)))
    (let ((?x1374 (+ (- 1) ?x1167)))
    (let ((?x1213 (ite MW_S1_V1 S1_V1_!763 E1_!762)))
    (let ((?x1369 (+ 1 ?x1213)))
    (let ((?x1121 (ite MW_S1_V1 S1_V1_!767 ?x1369)))
    (let (($x604 (= ?x1121 ?x1374)))
    (let (($x1290 (and $x604 $x563 $x1178 $x724)))
    (let ((?x1111 (+ (- 1) V2_0)))
    (let ((?x924 (ite MW_S1_V1 S1_V1_!773 ?x1111)))
    (let ((?x1165 (+ (- 1) ?x924)))
    (let ((?x815 (ite MW_S1_V1 S1_V1_!778 ?x1165)))
    (let ((?x1033 (+ (- 1) ?x815)))
    (let (($x1066 (<= E1_!782 ?x1033)))
    (let (($x1326 (not $x1066)))
    (let ((?x929 (+ 1 E1_!777)))
    (let (($x1137 (>= ?x924 ?x929)))
    (let ((?x1179 (+ 1 E1_!772)))
    (let (($x1170 (>= V2_0 ?x1179)))
    (let (($x1194 (<= V2_0 E1_!771)))
    (let (($x558 (not $x1194)))
    (let ((?x1123 (+ (- 1) ?x755)))
    (let (($x1192 (>= ?x1121 ?x1123)))
    (let ((?x1095 (ite MW_S1_V2 S1_V2_!765 V2_0)))
    (let (($x882 (<= ?x1095 ?x1369)))
    (let (($x983 (not $x882)))
    (let (($x988 (<= V2_0 E1_!762)))
    (let (($x998 (not $x988)))
    (let (($x971 (and $x998 $x983 $x1192 $x558 $x1170 $x1137 $x1326)))
    (let (($x979 (not $x971)))
    (let (($x1155 (not MW_S1_V4)))
    (let (($x1044 (or $x1155 W_S1_V4)))
    (let (($x798 (not MW_S1_V2)))
    (let (($x1077 (not MW_S1_V1)))
    (let (($x981 (or $x1077 W_S1_V1)))
    (let (($x1051 (= E1_!782 E1_!777)))
    (let ((?x813 (ite MW_S1_V4 S1_V4_!776 V4_0)))
    (let (($x1745 (= ?x1059 ?x813)))
    (let (($x76 (not R_E1_V4)))
    (let (($x1700 (or $x76 $x1745)))
    (let ((?x1233 (ite MW_S1_V2 S1_V2_!775 V2_0)))
    (let (($x1750 (= ?x1167 ?x1233)))
    (let (($x74 (not R_E1_V2)))
    (let (($x1751 (or $x74 $x1750)))
    (let ((?x1346 (ite MW_S1_V3 S1_V3_!774 V3_0)))
    (let (($x1870 (= ?x1331 ?x1346)))
    (let (($x72 (not R_E1_V3)))
    (let (($x1405 (or $x72 $x1870)))
    (let (($x1871 (and $x1405 $x1751 $x1700)))
    (let (($x591 (not $x1871)))
    (let (($x1686 (or $x591 $x1051)))
    (let (($x1041 (= E1_!782 E1_!772)))
    (let (($x1758 (= ?x1059 V4_0)))
    (let (($x1755 (or $x76 $x1758)))
    (let (($x1772 (= ?x1167 V2_0)))
    (let (($x1774 (or $x74 $x1772)))
    (let (($x1250 (= ?x1331 V3_0)))
    (let (($x1288 (or $x72 $x1250)))
    (let (($x1287 (and $x1288 $x1774 $x1755)))
    (let (($x1714 (not $x1287)))
    (let (($x1619 (or $x1714 $x1041)))
    (let (($x1020 (= E1_!782 E1_!771)))
    (let (($x1299 (or $x1714 $x1020)))
    (let (($x1242 (= E1_!782 E1_!762)))
    (let (($x1737 (or $x1714 $x1242)))
    (let (($x603 (= E1_!777 E1_!772)))
    (let (($x863 (= ?x813 V4_0)))
    (let (($x1039 (or $x76 $x863)))
    (let (($x1285 (= ?x1233 V2_0)))
    (let (($x782 (or $x74 $x1285)))
    (let (($x799 (= ?x1346 V3_0)))
    (let (($x586 (or $x72 $x799)))
    (let (($x1532 (and $x586 $x782 $x1039)))
    (let (($x1798 (not $x1532)))
    (let (($x1731 (or $x1798 $x603)))
    (let (($x796 (= E1_!777 E1_!771)))
    (let (($x1869 (or $x1798 $x796)))
    (let (($x864 (= E1_!777 E1_!762)))
    (let (($x1799 (or $x1798 $x864)))
    (let (($x747 (= E1_!772 E1_!771)))
    (let (($x1120 (= E1_!772 E1_!762)))
    (let (($x1104 (= E1_!771 E1_!762)))
    (let (($x1117 (= S1_V2_!780 S1_V2_!775)))
    (let (($x108 (not R_S1_V4)))
    (let (($x1107 (or $x108 $x863)))
    (let (($x106 (not R_S1_V2)))
    (let (($x1081 (or $x106 $x1285)))
    (let (($x104 (not R_S1_V3)))
    (let (($x1105 (or $x104 $x799)))
    (let (($x1800 (= ?x924 V2_0)))
    (let (($x102 (not R_S1_V1)))
    (let (($x1801 (or $x102 $x1800)))
    (let (($x1775 (and $x1801 $x1105 $x1081 $x1107)))
    (let (($x1803 (not $x1775)))
    (let (($x975 (or $x1803 $x1117)))
    (let (($x592 (= S1_V2_!780 S1_V2_!769)))
    (let ((?x1359 (ite MW_S1_V4 S1_V4_!766 V4_0)))
    (let (($x812 (= ?x813 ?x1359)))
    (let (($x795 (or $x108 $x812)))
    (let (($x872 (= ?x1233 ?x1095)))
    (let (($x873 (or $x106 $x872)))
    (let ((?x1226 (ite MW_S1_V3 S1_V3_!764 V3_0)))
    (let (($x839 (= ?x1346 ?x1226)))
    (let (($x1112 (or $x104 $x839)))
    (let ((?x1423 (+ 2 ?x1213)))
    (let (($x1802 (= ?x924 ?x1423)))
    (let (($x1078 (or $x102 $x1802)))
    (let (($x1531 (and $x1078 $x1112 $x873 $x795)))
    (let (($x1504 (not $x1531)))
    (let (($x1172 (or $x1504 $x592)))
    (let (($x1159 (= S1_V2_!769 S1_V2_!775)))
    (let (($x826 (= ?x1359 V4_0)))
    (let (($x877 (or $x108 $x826)))
    (let (($x887 (= ?x1095 V2_0)))
    (let (($x855 (or $x106 $x887)))
    (let (($x770 (= ?x1226 V3_0)))
    (let (($x846 (or $x104 $x770)))
    (let ((?x943 (+ (- 2) V2_0)))
    (let (($x1452 (= ?x1213 ?x943)))
    (let (($x1784 (or $x102 $x1452)))
    (let (($x1499 (and $x1784 $x846 $x855 $x877)))
    (let (($x1771 (not $x1499)))
    (let (($x900 (or $x1771 $x1159)))
    (let (($x1204 (= S1_V2_!765 S1_V2_!780)))
    (let (($x914 (= V4_0 ?x813)))
    (let (($x1106 (or $x108 $x914)))
    (let (($x1124 (= V2_0 ?x1233)))
    (let (($x819 (or $x106 $x1124)))
    (let (($x919 (= V3_0 ?x1346)))
    (let (($x1118 (or $x104 $x919)))
    (let (($x1457 (= E1_!762 ?x1165)))
    (let (($x1477 (or $x102 $x1457)))
    (let (($x1626 (and $x1477 $x1118 $x819 $x1106)))
    (let (($x1042 (not $x1626)))
    (let (($x1377 (or $x1042 $x1204)))
    (let (($x913 (= S1_V2_!765 S1_V2_!775)))
    (let (($x1813 (= E1_!762 ?x1111)))
    (let (($x1814 (or $x102 $x1813)))
    (let (($x1815 (not $x1814)))
    (let (($x1406 (or $x1815 $x913)))
    (let (($x1220 (= S1_V2_!765 S1_V2_!769)))
    (let (($x917 (= V4_0 ?x1359)))
    (let (($x1190 (or $x108 $x917)))
    (let (($x1061 (= V2_0 ?x1095)))
    (let (($x1163 (or $x106 $x1061)))
    (let (($x922 (= V3_0 ?x1226)))
    (let (($x1160 (or $x104 $x922)))
    (let (($x516 (= E1_!762 ?x1369)))
    (let (($x1215 (or $x102 $x516)))
    (let (($x1145 (and $x1215 $x1160 $x1163 $x1190)))
    (let (($x1184 (not $x1145)))
    (let (($x599 (or $x1184 $x1220)))
    (let (($x800 (= S1_V1_!778 S1_V1_!773)))
    (let (($x1557 (or $x1803 $x800)))
    (let (($x927 (= S1_V1_!778 S1_V1_!767)))
    (let (($x1718 (or $x1504 $x927)))
    (let (($x902 (= S1_V1_!778 S1_V1_!763)))
    (let ((?x1855 (+ 1 E1_!762)))
    (let (($x1810 (= ?x924 ?x1855)))
    (let (($x1811 (or $x102 $x1810)))
    (let (($x874 (and $x1811 $x1105 $x1081 $x1107)))
    (let (($x1333 (not $x874)))
    (let (($x1872 (or $x1333 $x902)))
    (let (($x549 (= S1_V1_!773 S1_V1_!767)))
    (let (($x1649 (= V2_0 ?x1423)))
    (let (($x1635 (or $x102 $x1649)))
    (let (($x1749 (and $x1635 $x1160 $x1163 $x1190)))
    (let (($x1757 (not $x1749)))
    (let (($x1782 (or $x1757 $x549)))
    (let (($x749 (= S1_V1_!773 S1_V1_!763)))
    (let (($x1856 (= V2_0 ?x1855)))
    (let (($x1873 (or $x102 $x1856)))
    (let (($x1785 (not $x1873)))
    (let (($x1243 (or $x1785 $x749)))
    (let (($x565 (= S1_V1_!767 S1_V1_!763)))
    (let ((?x1076 (+ (- 1) E1_!762)))
    (let (($x601 (= ?x1213 ?x1076)))
    (let (($x1164 (or $x102 $x601)))
    (let (($x561 (and $x1164 $x846 $x855 $x877)))
    (let (($x1069 (not $x561)))
    (let (($x845 (or $x1069 $x565)))
    (let (($x892 (= S1_V4_!781 S1_V4_!776)))
    (let (($x1861 (or $x1803 $x892)))
    (let (($x1153 (= S1_V4_!770 S1_V4_!781)))
    (let (($x1055 (= ?x1359 ?x813)))
    (let (($x1074 (or $x108 $x1055)))
    (let (($x847 (= ?x1095 ?x1233)))
    (let (($x1071 (or $x106 $x847)))
    (let (($x791 (= ?x1226 ?x1346)))
    (let (($x568 (or $x104 $x791)))
    (let ((?x1796 (+ (- 2) ?x924)))
    (let (($x1857 (= ?x1213 ?x1796)))
    (let (($x1858 (or $x102 $x1857)))
    (let (($x1564 (and $x1858 $x568 $x1071 $x1074)))
    (let (($x1859 (not $x1564)))
    (let (($x912 (or $x1859 $x1153)))
    (let (($x1147 (= S1_V4_!770 S1_V4_!776)))
    (let (($x1542 (or $x1771 $x1147)))
    (let (($x1197 (= S1_V4_!766 S1_V4_!781)))
    (let (($x1279 (or $x1042 $x1197)))
    (let (($x1139 (= S1_V4_!766 S1_V4_!776)))
    (let (($x1469 (or $x1815 $x1139)))
    (let (($x760 (= S1_V4_!766 S1_V4_!770)))
    (let (($x1225 (or $x1184 $x760)))
    (let (($x921 (= S1_V3_!779 S1_V3_!764)))
    (let (($x1812 (or $x1333 $x921)))
    (let (($x1186 (= S1_V3_!774 S1_V3_!779)))
    (let (($x1778 (= V2_0 ?x924)))
    (let (($x1779 (or $x102 $x1778)))
    (let (($x1766 (and $x1779 $x1118 $x819 $x1106)))
    (let (($x1587 (not $x1766)))
    (let (($x1515 (or $x1587 $x1186)))
    (let (($x1108 (= S1_V3_!774 S1_V3_!764)))
    (let (($x1786 (or $x1785 $x1108)))
    (let (($x790 (= S1_V3_!768 S1_V3_!779)))
    (let (($x1854 (or $x1859 $x790)))
    (let (($x1644 (= S1_V3_!768 S1_V3_!774)))
    (let (($x1730 (or $x1771 $x1644)))
    (let (($x1487 (= S1_V3_!768 S1_V3_!764)))
    (let (($x1471 (or $x1069 $x1487)))
    (let
    (($x1530
      (and $x1471 $x1730 $x1854 $x1786 $x1515 $x1812 $x1225 $x1469 $x1279
      $x1542 $x912 $x1861 $x845 $x1243 $x1782 $x1872 $x1718 $x1557 $x599
      $x1406 $x1377 $x900 $x1172 $x975 $x1104 $x1120 $x747 $x1799 $x1869
      $x1731 $x1737 $x1299 $x1619 $x1686 $x981 $x798 $x1044)))
    (let (($x1677 (not $x1530))) (or $x1677 $x979 $x1290)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let (($x30 (and W_S1_V4 R_E1_V4)))
 (let (($x1365 (or R_E1_V3 $x30)))
 (let (($x1747 (not $x1365)))
 (let (($x1777 (= DISJ_W_S1_R_E1 $x1747)))
 (let (($x18 (and W_S1_V4 R_S1_V4)))
 (let (($x10 (and W_S1_V1 R_S1_V1)))
 (let (($x1284 (or $x10 R_S1_V3 $x18)))
 (let (($x1795 (not $x1284)))
 (let (($x1372 (= DISJ_W_S1_R_S1 $x1795)))
 (let (($x102 (not R_S1_V1)))
 (let (($x1388 (and $x102 DISJ_W_S1_R_S1)))
 (let (($x518 (not W_S1_V1)))
 (let (($x1679 (and $x518 DISJ_W_S1_R_E1)))
 (let (($x923 (and DISJ_W_S1_R_S1 DISJ_W_S1_R_E1)))
 (let (($x1524 (or $x923 $x1679 $x1388)))
 (let (($x1770 (or DISJ_W_S1_R_E1 $x518)))
 (let (($x522 (not W_S1_V2)))
 (let (($x70 (not R_E1_V1)))
 (and $x70 $x522 $x1770 $x1524 W_S1_V3 $x1372 $x1777 $x1610)))))))))))))))))))))
(assert R_S1_V1)
(check-sat)
(exit)

