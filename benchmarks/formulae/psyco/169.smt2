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
(declare-fun W_S2_V1 () Bool)
(declare-fun W_S2_V3 () Bool)
(declare-fun W_S2_V2 () Bool)
(declare-fun W_S2_V5 () Bool)
(declare-fun W_S2_V6 () Bool)
(declare-fun W_S3_V1 () Bool)
(declare-fun W_S3_V3 () Bool)
(declare-fun W_S3_V2 () Bool)
(declare-fun W_S3_V4 () Bool)
(declare-fun W_S3_V6 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun W_S1_V6 () Bool)
(declare-fun R_S2_V1 () Bool)
(declare-fun R_S2_V3 () Bool)
(declare-fun R_S2_V2 () Bool)
(declare-fun R_S2_V5 () Bool)
(declare-fun R_S2_V4 () Bool)
(declare-fun R_S2_V6 () Bool)
(declare-fun R_E1_V1 () Bool)
(declare-fun R_E1_V3 () Bool)
(declare-fun R_E1_V2 () Bool)
(declare-fun R_E1_V5 () Bool)
(declare-fun R_E1_V4 () Bool)
(declare-fun R_E1_V6 () Bool)
(declare-fun DISJ_W_S2_W_S3 () Bool)
(declare-fun DISJ_W_S2_R_S2 () Bool)
(declare-fun DISJ_W_S2_R_E1 () Bool)
(declare-fun R_S3_V1 () Bool)
(declare-fun R_S3_V3 () Bool)
(declare-fun R_S3_V2 () Bool)
(declare-fun R_S3_V5 () Bool)
(declare-fun R_S3_V4 () Bool)
(declare-fun R_S3_V6 () Bool)
(declare-fun DISJ_W_S2_R_S3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V6 () Bool)
(declare-fun DISJ_W_S2_R_S1 () Bool)
(declare-fun R_B1_V1 () Bool)
(declare-fun R_B1_V3 () Bool)
(declare-fun R_B1_V2 () Bool)
(declare-fun R_B1_V5 () Bool)
(declare-fun R_B1_V4 () Bool)
(declare-fun R_B1_V6 () Bool)
(declare-fun DISJ_W_S2_R_B1 () Bool)
(declare-fun DISJ_W_S3_R_S2 () Bool)
(declare-fun DISJ_W_S3_R_E1 () Bool)
(declare-fun DISJ_W_S3_R_S3 () Bool)
(declare-fun DISJ_W_S3_R_S1 () Bool)
(declare-fun DISJ_W_S3_R_B1 () Bool)
(declare-fun DISJ_W_S1_W_S2 () Bool)
(declare-fun DISJ_W_S1_W_S3 () Bool)
(declare-fun DISJ_W_S1_R_S2 () Bool)
(declare-fun DISJ_W_S1_R_E1 () Bool)
(declare-fun DISJ_W_S1_R_S3 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun DISJ_W_S1_R_B1 () Bool)
(declare-fun W_S2_V4 () Bool)
(declare-fun W_S3_V5 () Bool)
(declare-fun W_S1_V3 () Bool)
(assert
 (let
 (($x1310
   (forall
    ((V6_0 Int) (V4_0 Int) 
     (V5_0 Int) (V2_0 Int) 
     (V3_0 Int) (V1_0 Int) 
     (MW_S1_V6 Bool) (MW_S1_V4 Bool) 
     (MW_S1_V5 Bool) (MW_S1_V2 Bool) 
     (MW_S1_V3 Bool) (MW_S1_V1 Bool) 
     (MW_S3_V6 Bool) (MW_S3_V4 Bool) 
     (MW_S3_V2 Bool) (MW_S3_V3 Bool) 
     (MW_S3_V1 Bool) (MW_S2_V6 Bool) 
     (MW_S2_V4 Bool) (MW_S2_V5 Bool) 
     (MW_S2_V2 Bool) (MW_S2_V3 Bool) 
     (MW_S2_V1 Bool) (S1_V4_!47 Int) 
     (S1_V4_!62 Int) (S2_V4_!54 Int) 
     (S2_V4_!69 Int) (S1_V6_!46 Int) 
     (S1_V6_!61 Int) (E1_!52 Int) 
     (E1_!59 Int) (E1_!67 Int) 
     (S1_V1_!51 Int) (S1_V1_!66 Int) 
     (S2_V6_!53 Int) (S2_V6_!68 Int) 
     (S1_V3_!50 Int) (S1_V3_!65 Int) 
     (S1_V2_!49 Int) (S1_V2_!64 Int) 
     (B1_!45 Bool) (B1_!60 Bool) 
     (S2_V1_!58 Int) (S2_V1_!73 Int) 
     (S2_V5_!55 Int) (S2_V5_!70 Int) 
     (S2_V2_!56 Int) (S2_V2_!71 Int) 
     (S2_V3_!57 Int) (S2_V3_!72 Int) 
     (S1_V5_!48 Int) (S1_V5_!63 Int))
    (let ((?x1035 (ite MW_S2_V1 S2_V1_!73 E1_!67)))
    (let ((?x1036 (ite MW_S2_V1 S2_V1_!58 E1_!52)))
    (let (($x1037 (= ?x1036 ?x1035)))
    (let ((?x1221 (ite MW_S1_V3 S1_V3_!65 V3_0)))
    (let ((?x1306 (ite MW_S2_V3 S2_V3_!72 ?x1221)))
    (let ((?x1220 (ite MW_S1_V3 S1_V3_!50 V3_0)))
    (let ((?x1239 (ite MW_S2_V3 S2_V3_!57 ?x1220)))
    (let (($x1307 (= ?x1239 ?x1306)))
    (let (($x1043 (= E1_!59 ?x1035)))
    (let ((?x1213 (ite MW_S1_V5 S1_V5_!63 V5_0)))
    (let ((?x1304 (ite MW_S2_V5 S2_V5_!70 ?x1213)))
    (let ((?x1212 (ite MW_S1_V5 S1_V5_!48 V5_0)))
    (let ((?x1233 (ite MW_S2_V5 S2_V5_!55 ?x1212)))
    (let (($x1305 (= ?x1233 ?x1304)))
    (let ((?x1209 (ite MW_S1_V4 S1_V4_!62 V4_0)))
    (let ((?x1302 (ite MW_S2_V4 S2_V4_!69 ?x1209)))
    (let ((?x1208 (ite MW_S1_V4 S1_V4_!47 V4_0)))
    (let ((?x1230 (ite MW_S2_V4 S2_V4_!54 ?x1208)))
    (let (($x1303 (= ?x1230 ?x1302)))
    (let ((?x1205 (ite MW_S1_V6 S1_V6_!61 V6_0)))
    (let ((?x1300 (ite MW_S2_V6 S2_V6_!68 ?x1205)))
    (let ((?x1204 (ite MW_S1_V6 S1_V6_!46 V6_0)))
    (let ((?x1227 (ite MW_S2_V6 S2_V6_!53 ?x1204)))
    (let (($x1301 (= ?x1227 ?x1300)))
    (let (($x1308 (and $x1301 $x1303 $x1305 $x1043 $x1307 $x1037)))
    (let (($x1060 (and B1_!45 B1_!60)))
    (let (($x1061 (not $x1060)))
    (let (($x1063 (not MW_S2_V1)))
    (let (($x1064 (or $x1063 W_S2_V1)))
    (let (($x1065 (not MW_S2_V3)))
    (let (($x1066 (or $x1065 W_S2_V3)))
    (let (($x1067 (not MW_S2_V2)))
    (let (($x1068 (or $x1067 W_S2_V2)))
    (let (($x1069 (not MW_S2_V5)))
    (let (($x1070 (or $x1069 W_S2_V5)))
    (let (($x1073 (not MW_S2_V6)))
    (let (($x1074 (or $x1073 W_S2_V6)))
    (let (($x1075 (not MW_S3_V1)))
    (let (($x1076 (or $x1075 W_S3_V1)))
    (let (($x1077 (not MW_S3_V3)))
    (let (($x1078 (or $x1077 W_S3_V3)))
    (let (($x1079 (not MW_S3_V2)))
    (let (($x1080 (or $x1079 W_S3_V2)))
    (let (($x1081 (not MW_S3_V4)))
    (let (($x1297 (or $x1081 W_S3_V4)))
    (let (($x1083 (not MW_S3_V6)))
    (let (($x1296 (or $x1083 W_S3_V6)))
    (let (($x1085 (not MW_S1_V1)))
    (let (($x1295 (or $x1085 W_S1_V1)))
    (let (($x1089 (not MW_S1_V2)))
    (let (($x1294 (or $x1089 W_S1_V2)))
    (let (($x1091 (not MW_S1_V5)))
    (let (($x1293 (or $x1091 W_S1_V5)))
    (let (($x1093 (not MW_S1_V4)))
    (let (($x1292 (or $x1093 W_S1_V4)))
    (let (($x1095 (not MW_S1_V6)))
    (let (($x1291 (or $x1095 W_S1_V6)))
    (let (($x1100 (= S1_V5_!63 S1_V5_!48)))
    (let (($x1101 (= S2_V3_!57 S2_V3_!72)))
    (let (($x1102 (= E1_!52 E1_!67)))
    (let (($x390 (not R_S2_V1)))
    (let (($x1103 (or $x390 $x1102)))
    (let (($x1222 (= ?x1220 ?x1221)))
    (let (($x388 (not R_S2_V3)))
    (let (($x1223 (or $x388 $x1222)))
    (let ((?x1217 (ite MW_S1_V2 S1_V2_!64 V2_0)))
    (let ((?x1216 (ite MW_S1_V2 S1_V2_!49 V2_0)))
    (let (($x1218 (= ?x1216 ?x1217)))
    (let (($x386 (not R_S2_V2)))
    (let (($x1219 (or $x386 $x1218)))
    (let (($x1214 (= ?x1212 ?x1213)))
    (let (($x384 (not R_S2_V5)))
    (let (($x1215 (or $x384 $x1214)))
    (let (($x1210 (= ?x1208 ?x1209)))
    (let (($x382 (not R_S2_V4)))
    (let (($x1211 (or $x382 $x1210)))
    (let (($x1206 (= ?x1204 ?x1205)))
    (let (($x380 (not R_S2_V6)))
    (let (($x1207 (or $x380 $x1206)))
    (let (($x1224 (and $x1207 $x1211 $x1215 $x1219 $x1223 $x1103)))
    (let (($x1225 (not $x1224)))
    (let (($x1290 (or $x1225 $x1101)))
    (let (($x1119 (= S2_V2_!56 S2_V2_!71)))
    (let (($x1289 (or $x1225 $x1119)))
    (let (($x1121 (= S2_V5_!70 S2_V5_!55)))
    (let (($x1122 (= E1_!67 E1_!52)))
    (let (($x1123 (or $x390 $x1122)))
    (let (($x1272 (= ?x1221 ?x1220)))
    (let (($x1283 (or $x388 $x1272)))
    (let (($x1270 (= ?x1217 ?x1216)))
    (let (($x1282 (or $x386 $x1270)))
    (let (($x1268 (= ?x1213 ?x1212)))
    (let (($x1281 (or $x384 $x1268)))
    (let (($x1266 (= ?x1209 ?x1208)))
    (let (($x1280 (or $x382 $x1266)))
    (let (($x1264 (= ?x1205 ?x1204)))
    (let (($x1279 (or $x380 $x1264)))
    (let (($x1284 (and $x1279 $x1280 $x1281 $x1282 $x1283 $x1123)))
    (let (($x1285 (not $x1284)))
    (let (($x1288 (or $x1285 $x1121)))
    (let (($x1137 (= S2_V1_!73 S2_V1_!58)))
    (let (($x1287 (or $x1285 $x1137)))
    (let (($x1140 (= S1_V2_!64 S1_V2_!49)))
    (let (($x1141 (= S1_V3_!65 S1_V3_!50)))
    (let (($x1142 (= S2_V6_!68 S2_V6_!53)))
    (let (($x1286 (or $x1285 $x1142)))
    (let (($x1144 (= S1_V1_!66 S1_V1_!51)))
    (let ((?x1242 (ite MW_S1_V1 S1_V1_!51 V1_0)))
    (let ((?x1258 (ite MW_S1_V1 S1_V1_!66 V1_0)))
    (let (($x1274 (= ?x1258 ?x1242)))
    (let (($x405 (not R_E1_V1)))
    (let (($x1275 (or $x405 $x1274)))
    (let (($x403 (not R_E1_V3)))
    (let (($x1273 (or $x403 $x1272)))
    (let (($x401 (not R_E1_V2)))
    (let (($x1271 (or $x401 $x1270)))
    (let (($x399 (not R_E1_V5)))
    (let (($x1269 (or $x399 $x1268)))
    (let (($x397 (not R_E1_V4)))
    (let (($x1267 (or $x397 $x1266)))
    (let (($x395 (not R_E1_V6)))
    (let (($x1265 (or $x395 $x1264)))
    (let (($x1276 (and $x1265 $x1267 $x1269 $x1271 $x1273 $x1275)))
    (let (($x1277 (not $x1276)))
    (let (($x1278 (or $x1277 $x1122)))
    (let (($x1157 (= E1_!59 E1_!67)))
    (let (($x1259 (= ?x1036 ?x1258)))
    (let (($x1260 (or $x405 $x1259)))
    (let (($x1256 (= ?x1239 ?x1221)))
    (let (($x1257 (or $x403 $x1256)))
    (let ((?x1236 (ite MW_S2_V2 S2_V2_!56 ?x1216)))
    (let (($x1254 (= ?x1236 ?x1217)))
    (let (($x1255 (or $x401 $x1254)))
    (let (($x1252 (= ?x1233 ?x1213)))
    (let (($x1253 (or $x399 $x1252)))
    (let (($x1250 (= ?x1230 ?x1209)))
    (let (($x1251 (or $x397 $x1250)))
    (let (($x1248 (= ?x1227 ?x1205)))
    (let (($x1249 (or $x395 $x1248)))
    (let (($x1261 (and $x1249 $x1251 $x1253 $x1255 $x1257 $x1260)))
    (let (($x1262 (not $x1261)))
    (let (($x1263 (or $x1262 $x1157)))
    (let (($x1174 (= E1_!59 E1_!52)))
    (let (($x1243 (= ?x1036 ?x1242)))
    (let (($x1244 (or $x405 $x1243)))
    (let (($x1240 (= ?x1239 ?x1220)))
    (let (($x1241 (or $x403 $x1240)))
    (let (($x1237 (= ?x1236 ?x1216)))
    (let (($x1238 (or $x401 $x1237)))
    (let (($x1234 (= ?x1233 ?x1212)))
    (let (($x1235 (or $x399 $x1234)))
    (let (($x1231 (= ?x1230 ?x1208)))
    (let (($x1232 (or $x397 $x1231)))
    (let (($x1228 (= ?x1227 ?x1204)))
    (let (($x1229 (or $x395 $x1228)))
    (let (($x1245 (and $x1229 $x1232 $x1235 $x1238 $x1241 $x1244)))
    (let (($x1246 (not $x1245)))
    (let (($x1247 (or $x1246 $x1174)))
    (let (($x1190 (= S1_V6_!61 S1_V6_!46)))
    (let (($x1191 (= S2_V4_!54 S2_V4_!69)))
    (let (($x1226 (or $x1225 $x1191)))
    (let (($x1193 (= S1_V4_!47 S1_V4_!62)))
    (let
    (($x1298
      (and $x1193 $x1226 $x1190 $x1247 $x1263 $x1278 $x1144 $x1286 $x1141
      $x1140 (= B1_!60 B1_!45) $x1287 $x1288 $x1289 $x1290 $x1100 $x1291
      $x1292 $x1293 $x1294 $x1295 $x1296 $x1297 $x1080 $x1078 $x1076 $x1074
      $x1070 $x1068 $x1066 $x1064))) 
    (or (not $x1298) $x1061 $x1308)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let (($x231 (and W_S2_V1 W_S3_V1)))
 (let (($x230 (and W_S2_V3 W_S3_V3)))
 (let (($x229 (and W_S2_V2 W_S3_V2)))
 (let (($x226 (and W_S2_V6 W_S3_V6)))
 (let (($x289 (or $x226 W_S3_V4 W_S2_V5 $x229 $x230 $x231)))
 (let (($x290 (not $x289)))
 (let (($x291 (= DISJ_W_S2_W_S3 $x290)))
 (let (($x221 (and W_S2_V1 R_S2_V1)))
 (let (($x220 (and W_S2_V3 R_S2_V3)))
 (let (($x219 (and W_S2_V2 R_S2_V2)))
 (let (($x218 (and W_S2_V5 R_S2_V5)))
 (let (($x216 (and W_S2_V6 R_S2_V6)))
 (let (($x286 (or $x216 R_S2_V4 $x218 $x219 $x220 $x221)))
 (let (($x287 (not $x286)))
 (let (($x288 (= DISJ_W_S2_R_S2 $x287)))
 (let (($x211 (and W_S2_V1 R_E1_V1)))
 (let (($x210 (and W_S2_V3 R_E1_V3)))
 (let (($x209 (and W_S2_V2 R_E1_V2)))
 (let (($x208 (and W_S2_V5 R_E1_V5)))
 (let (($x206 (and W_S2_V6 R_E1_V6)))
 (let (($x283 (or $x206 R_E1_V4 $x208 $x209 $x210 $x211)))
 (let (($x284 (not $x283)))
 (let (($x285 (= DISJ_W_S2_R_E1 $x284)))
 (let (($x201 (and W_S2_V1 R_S3_V1)))
 (let (($x200 (and W_S2_V3 R_S3_V3)))
 (let (($x199 (and W_S2_V2 R_S3_V2)))
 (let (($x198 (and W_S2_V5 R_S3_V5)))
 (let (($x196 (and W_S2_V6 R_S3_V6)))
 (let (($x280 (or $x196 R_S3_V4 $x198 $x199 $x200 $x201)))
 (let (($x281 (not $x280)))
 (let (($x282 (= DISJ_W_S2_R_S3 $x281)))
 (let (($x191 (and W_S2_V1 R_S1_V1)))
 (let (($x190 (and W_S2_V3 R_S1_V3)))
 (let (($x189 (and W_S2_V2 R_S1_V2)))
 (let (($x188 (and W_S2_V5 R_S1_V5)))
 (let (($x186 (and W_S2_V6 R_S1_V6)))
 (let (($x277 (or $x186 R_S1_V4 $x188 $x189 $x190 $x191)))
 (let (($x278 (not $x277)))
 (let (($x279 (= DISJ_W_S2_R_S1 $x278)))
 (let (($x181 (and W_S2_V1 R_B1_V1)))
 (let (($x180 (and W_S2_V3 R_B1_V3)))
 (let (($x179 (and W_S2_V2 R_B1_V2)))
 (let (($x178 (and W_S2_V5 R_B1_V5)))
 (let (($x176 (and W_S2_V6 R_B1_V6)))
 (let (($x274 (or $x176 R_B1_V4 $x178 $x179 $x180 $x181)))
 (let (($x275 (not $x274)))
 (let (($x276 (= DISJ_W_S2_R_B1 $x275)))
 (let (($x171 (and W_S3_V1 R_S2_V1)))
 (let (($x170 (and W_S3_V3 R_S2_V3)))
 (let (($x169 (and W_S3_V2 R_S2_V2)))
 (let (($x167 (and W_S3_V4 R_S2_V4)))
 (let (($x166 (and W_S3_V6 R_S2_V6)))
 (let (($x271 (or $x166 $x167 R_S2_V5 $x169 $x170 $x171)))
 (let (($x272 (not $x271)))
 (let (($x273 (= DISJ_W_S3_R_S2 $x272)))
 (let (($x161 (and W_S3_V1 R_E1_V1)))
 (let (($x160 (and W_S3_V3 R_E1_V3)))
 (let (($x159 (and W_S3_V2 R_E1_V2)))
 (let (($x157 (and W_S3_V4 R_E1_V4)))
 (let (($x156 (and W_S3_V6 R_E1_V6)))
 (let (($x268 (or $x156 $x157 R_E1_V5 $x159 $x160 $x161)))
 (let (($x269 (not $x268)))
 (let (($x270 (= DISJ_W_S3_R_E1 $x269)))
 (let (($x151 (and W_S3_V1 R_S3_V1)))
 (let (($x150 (and W_S3_V3 R_S3_V3)))
 (let (($x149 (and W_S3_V2 R_S3_V2)))
 (let (($x147 (and W_S3_V4 R_S3_V4)))
 (let (($x146 (and W_S3_V6 R_S3_V6)))
 (let (($x265 (or $x146 $x147 R_S3_V5 $x149 $x150 $x151)))
 (let (($x266 (not $x265)))
 (let (($x267 (= DISJ_W_S3_R_S3 $x266)))
 (let (($x141 (and W_S3_V1 R_S1_V1)))
 (let (($x140 (and W_S3_V3 R_S1_V3)))
 (let (($x139 (and W_S3_V2 R_S1_V2)))
 (let (($x137 (and W_S3_V4 R_S1_V4)))
 (let (($x136 (and W_S3_V6 R_S1_V6)))
 (let (($x262 (or $x136 $x137 R_S1_V5 $x139 $x140 $x141)))
 (let (($x263 (not $x262)))
 (let (($x264 (= DISJ_W_S3_R_S1 $x263)))
 (let (($x131 (and W_S3_V1 R_B1_V1)))
 (let (($x130 (and W_S3_V3 R_B1_V3)))
 (let (($x129 (and W_S3_V2 R_B1_V2)))
 (let (($x127 (and W_S3_V4 R_B1_V4)))
 (let (($x126 (and W_S3_V6 R_B1_V6)))
 (let (($x259 (or $x126 $x127 R_B1_V5 $x129 $x130 $x131)))
 (let (($x260 (not $x259)))
 (let (($x261 (= DISJ_W_S3_R_B1 $x260)))
 (let (($x121 (and W_S1_V1 W_S2_V1)))
 (let (($x117 (and W_S1_V2 W_S2_V2)))
 (let (($x115 (and W_S1_V5 W_S2_V5)))
 (let (($x112 (and W_S1_V6 W_S2_V6)))
 (let (($x256 (or $x112 W_S1_V4 $x115 $x117 W_S2_V3 $x121)))
 (let (($x257 (not $x256)))
 (let (($x258 (= DISJ_W_S1_W_S2 $x257)))
 (let (($x106 (and W_S1_V1 W_S3_V1)))
 (let (($x102 (and W_S1_V2 W_S3_V2)))
 (let (($x99 (and W_S1_V4 W_S3_V4)))
 (let (($x97 (and W_S1_V6 W_S3_V6)))
 (let (($x253 (or $x97 $x99 W_S1_V5 $x102 W_S3_V3 $x106)))
 (let (($x254 (not $x253)))
 (let (($x255 (= DISJ_W_S1_W_S3 $x254)))
 (let (($x91 (and W_S1_V1 R_S2_V1)))
 (let (($x87 (and W_S1_V2 R_S2_V2)))
 (let (($x85 (and W_S1_V5 R_S2_V5)))
 (let (($x83 (and W_S1_V4 R_S2_V4)))
 (let (($x81 (and W_S1_V6 R_S2_V6)))
 (let (($x250 (or $x81 $x83 $x85 $x87 R_S2_V3 $x91)))
 (let (($x251 (not $x250)))
 (let (($x252 (= DISJ_W_S1_R_S2 $x251)))
 (let (($x75 (and W_S1_V1 R_E1_V1)))
 (let (($x71 (and W_S1_V2 R_E1_V2)))
 (let (($x69 (and W_S1_V5 R_E1_V5)))
 (let (($x67 (and W_S1_V4 R_E1_V4)))
 (let (($x65 (and W_S1_V6 R_E1_V6)))
 (let (($x247 (or $x65 $x67 $x69 $x71 R_E1_V3 $x75)))
 (let (($x248 (not $x247)))
 (let (($x249 (= DISJ_W_S1_R_E1 $x248)))
 (let (($x59 (and W_S1_V1 R_S3_V1)))
 (let (($x55 (and W_S1_V2 R_S3_V2)))
 (let (($x53 (and W_S1_V5 R_S3_V5)))
 (let (($x51 (and W_S1_V4 R_S3_V4)))
 (let (($x49 (and W_S1_V6 R_S3_V6)))
 (let (($x244 (or $x49 $x51 $x53 $x55 R_S3_V3 $x59)))
 (let (($x245 (not $x244)))
 (let (($x246 (= DISJ_W_S1_R_S3 $x245)))
 (let (($x43 (and W_S1_V1 R_S1_V1)))
 (let (($x39 (and W_S1_V2 R_S1_V2)))
 (let (($x37 (and W_S1_V5 R_S1_V5)))
 (let (($x35 (and W_S1_V4 R_S1_V4)))
 (let (($x33 (and W_S1_V6 R_S1_V6)))
 (let (($x241 (or $x33 $x35 $x37 $x39 R_S1_V3 $x43)))
 (let (($x242 (not $x241)))
 (let (($x243 (= DISJ_W_S1_R_S1 $x242)))
 (let (($x27 (and W_S1_V1 R_B1_V1)))
 (let (($x22 (and W_S1_V2 R_B1_V2)))
 (let (($x19 (and W_S1_V5 R_B1_V5)))
 (let (($x16 (and W_S1_V4 R_B1_V4)))
 (let (($x13 (and W_S1_V6 R_B1_V6)))
 (let (($x238 (or $x13 $x16 $x19 $x22 R_B1_V3 $x27)))
 (let (($x239 (not $x238)))
 (let (($x240 (= DISJ_W_S1_R_B1 $x239)))
 (and W_S1_V3 W_S3_V5 W_S2_V4 $x240 $x243 $x246 $x249 $x252 $x255 $x258 $x261
 $x264 $x267 $x270 $x273 $x276 $x279 $x282 $x285 $x288 $x291 $x1310))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x682 (not W_S2_V1)))
 (let (($x405 (not R_E1_V1)))
 (let (($x1392 (and $x405 $x682 DISJ_W_S2_R_E1))) (not $x1392)))))
(check-sat)
(exit)

