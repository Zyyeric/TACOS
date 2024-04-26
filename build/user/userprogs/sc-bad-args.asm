
build/user/userprogs/sc-bad-args:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	716d                	addi	sp,sp,-272
    1002:	e606                	sd	ra,264(sp)
    1004:	e222                	sd	s0,256(sp)
    1006:	4589                	li	a1,2
    1008:	00002537          	lui	a0,0x2
    100c:	04050513          	addi	a0,a0,64 # 2040 <mkdir+0x16>
    1010:	00001097          	auipc	ra,0x1
    1014:	fca080e7          	jalr	-54(ra) # 1fda <open>
    1018:	842a                	mv	s0,a0
    101a:	4789                	li	a5,2
    101c:	16a7d563          	bge	a5,a0,1186 <main+0x186>
    1020:	47800593          	li	a1,1144
    1024:	6505                	lui	a0,0x1
    1026:	bad50513          	addi	a0,a0,-1107 # bad <main-0x453>
    102a:	00001097          	auipc	ra,0x1
    102e:	f98080e7          	jalr	-104(ra) # 1fc2 <exec>
    1032:	57fd                	li	a5,-1
    1034:	16f51f63          	bne	a0,a5,11b2 <main+0x1b2>
    1038:	4581                	li	a1,0
    103a:	4501                	li	a0,0
    103c:	00001097          	auipc	ra,0x1
    1040:	f9e080e7          	jalr	-98(ra) # 1fda <open>
    1044:	57fd                	li	a5,-1
    1046:	18f51c63          	bne	a0,a5,11de <main+0x1de>
    104a:	10000613          	li	a2,256
    104e:	4581                	li	a1,0
    1050:	8522                	mv	a0,s0
    1052:	00001097          	auipc	ra,0x1
    1056:	f90080e7          	jalr	-112(ra) # 1fe2 <read>
    105a:	1a050863          	beqz	a0,120a <main+0x20a>
    105e:	4629                	li	a2,10
    1060:	4581                	li	a1,0
    1062:	4505                	li	a0,1
    1064:	00001097          	auipc	ra,0x1
    1068:	f86080e7          	jalr	-122(ra) # 1fea <write>
    106c:	57fd                	li	a5,-1
    106e:	1cf51463          	bne	a0,a5,1236 <main+0x236>
    1072:	6585                	lui	a1,0x1
    1074:	bad58593          	addi	a1,a1,-1107 # bad <main-0x453>
    1078:	00002537          	lui	a0,0x2
    107c:	20050513          	addi	a0,a0,512 # 2200 <mkdir+0x1d6>
    1080:	00001097          	auipc	ra,0x1
    1084:	f42080e7          	jalr	-190(ra) # 1fc2 <exec>
    1088:	57fd                	li	a5,-1
    108a:	1cf51c63          	bne	a0,a5,1262 <main+0x262>
    108e:	20000593          	li	a1,512
    1092:	37ab7537          	lui	a0,0x37ab7
    1096:	050a                	slli	a0,a0,0x2
    1098:	eaf50513          	addi	a0,a0,-337 # 37ab6eaf <s+0x37ab3daf>
    109c:	00001097          	auipc	ra,0x1
    10a0:	f3e080e7          	jalr	-194(ra) # 1fda <open>
    10a4:	57fd                	li	a5,-1
    10a6:	1ef51463          	bne	a0,a5,128e <main+0x28e>
    10aa:	10000613          	li	a2,256
    10ae:	37ab75b7          	lui	a1,0x37ab7
    10b2:	058a                	slli	a1,a1,0x2
    10b4:	eaf58593          	addi	a1,a1,-337 # 37ab6eaf <s+0x37ab3daf>
    10b8:	8522                	mv	a0,s0
    10ba:	00001097          	auipc	ra,0x1
    10be:	f28080e7          	jalr	-216(ra) # 1fe2 <read>
    10c2:	1e050c63          	beqz	a0,12ba <main+0x2ba>
    10c6:	07b00613          	li	a2,123
    10ca:	6585                	lui	a1,0x1
    10cc:	bad58593          	addi	a1,a1,-1107 # bad <main-0x453>
    10d0:	4505                	li	a0,1
    10d2:	00001097          	auipc	ra,0x1
    10d6:	f18080e7          	jalr	-232(ra) # 1fea <write>
    10da:	57fd                	li	a5,-1
    10dc:	20f51563          	bne	a0,a5,12e6 <main+0x2e6>
    10e0:	f0100593          	li	a1,-255
    10e4:	05fa                	slli	a1,a1,0x1e
    10e6:	c0300513          	li	a0,-1021
    10ea:	0572                	slli	a0,a0,0x1c
    10ec:	00001097          	auipc	ra,0x1
    10f0:	ed6080e7          	jalr	-298(ra) # 1fc2 <exec>
    10f4:	57fd                	li	a5,-1
    10f6:	20f51e63          	bne	a0,a5,1312 <main+0x312>
    10fa:	60000593          	li	a1,1536
    10fe:	c0300513          	li	a0,-1021
    1102:	0572                	slli	a0,a0,0x1c
    1104:	00001097          	auipc	ra,0x1
    1108:	ed6080e7          	jalr	-298(ra) # 1fda <open>
    110c:	57fd                	li	a5,-1
    110e:	22f51863          	bne	a0,a5,133e <main+0x33e>
    1112:	10000613          	li	a2,256
    1116:	55fd                	li	a1,-1
    1118:	159a                	slli	a1,a1,0x26
    111a:	8522                	mv	a0,s0
    111c:	00001097          	auipc	ra,0x1
    1120:	ec6080e7          	jalr	-314(ra) # 1fe2 <read>
    1124:	24050363          	beqz	a0,136a <main+0x36a>
    1128:	4d200613          	li	a2,1234
    112c:	c0300593          	li	a1,-1021
    1130:	05f2                	slli	a1,a1,0x1c
    1132:	4505                	li	a0,1
    1134:	00001097          	auipc	ra,0x1
    1138:	eb6080e7          	jalr	-330(ra) # 1fea <write>
    113c:	57fd                	li	a5,-1
    113e:	24f51c63          	bne	a0,a5,1396 <main+0x396>
    1142:	10000613          	li	a2,256
    1146:	858a                	mv	a1,sp
    1148:	8522                	mv	a0,s0
    114a:	00001097          	auipc	ra,0x1
    114e:	e98080e7          	jalr	-360(ra) # 1fe2 <read>
    1152:	0ef00793          	li	a5,239
    1156:	26f51663          	bne	a0,a5,13c2 <main+0x3c2>
    115a:	000035b7          	lui	a1,0x3
    115e:	00058593          	mv	a1,a1
    1162:	850a                	mv	a0,sp
    1164:	00001097          	auipc	ra,0x1
    1168:	8ec080e7          	jalr	-1812(ra) # 1a50 <strcmp>
    116c:	28051263          	bnez	a0,13f0 <main+0x3f0>
    1170:	8522                	mv	a0,s0
    1172:	00001097          	auipc	ra,0x1
    1176:	e90080e7          	jalr	-368(ra) # 2002 <close>
    117a:	2a051263          	bnez	a0,141e <main+0x41e>
    117e:	60b2                	ld	ra,264(sp)
    1180:	6412                	ld	s0,256(sp)
    1182:	6151                	addi	sp,sp,272
    1184:	8082                	ret
    1186:	46ad                	li	a3,11
    1188:	00002637          	lui	a2,0x2
    118c:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    1190:	000025b7          	lui	a1,0x2
    1194:	07058593          	addi	a1,a1,112 # 2070 <mkdir+0x46>
    1198:	4509                	li	a0,2
    119a:	00000097          	auipc	ra,0x0
    119e:	53c080e7          	jalr	1340(ra) # 16d6 <fprintf>
    11a2:	650d                	lui	a0,0x3
    11a4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11a8:	00001097          	auipc	ra,0x1
    11ac:	e12080e7          	jalr	-494(ra) # 1fba <exit>
    11b0:	bd85                	j	1020 <main+0x20>
    11b2:	46b9                	li	a3,14
    11b4:	00002637          	lui	a2,0x2
    11b8:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    11bc:	000025b7          	lui	a1,0x2
    11c0:	0d858593          	addi	a1,a1,216 # 20d8 <mkdir+0xae>
    11c4:	4509                	li	a0,2
    11c6:	00000097          	auipc	ra,0x0
    11ca:	510080e7          	jalr	1296(ra) # 16d6 <fprintf>
    11ce:	650d                	lui	a0,0x3
    11d0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11d4:	00001097          	auipc	ra,0x1
    11d8:	de6080e7          	jalr	-538(ra) # 1fba <exit>
    11dc:	bdb1                	j	1038 <main+0x38>
    11de:	46bd                	li	a3,15
    11e0:	00002637          	lui	a2,0x2
    11e4:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    11e8:	000025b7          	lui	a1,0x2
    11ec:	13058593          	addi	a1,a1,304 # 2130 <mkdir+0x106>
    11f0:	4509                	li	a0,2
    11f2:	00000097          	auipc	ra,0x0
    11f6:	4e4080e7          	jalr	1252(ra) # 16d6 <fprintf>
    11fa:	650d                	lui	a0,0x3
    11fc:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1200:	00001097          	auipc	ra,0x1
    1204:	dba080e7          	jalr	-582(ra) # 1fba <exit>
    1208:	b589                	j	104a <main+0x4a>
    120a:	46c1                	li	a3,16
    120c:	00002637          	lui	a2,0x2
    1210:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    1214:	000025b7          	lui	a1,0x2
    1218:	17058593          	addi	a1,a1,368 # 2170 <mkdir+0x146>
    121c:	4509                	li	a0,2
    121e:	00000097          	auipc	ra,0x0
    1222:	4b8080e7          	jalr	1208(ra) # 16d6 <fprintf>
    1226:	650d                	lui	a0,0x3
    1228:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    122c:	00001097          	auipc	ra,0x1
    1230:	d8e080e7          	jalr	-626(ra) # 1fba <exit>
    1234:	b52d                	j	105e <main+0x5e>
    1236:	46c5                	li	a3,17
    1238:	00002637          	lui	a2,0x2
    123c:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    1240:	000025b7          	lui	a1,0x2
    1244:	1b858593          	addi	a1,a1,440 # 21b8 <mkdir+0x18e>
    1248:	4509                	li	a0,2
    124a:	00000097          	auipc	ra,0x0
    124e:	48c080e7          	jalr	1164(ra) # 16d6 <fprintf>
    1252:	650d                	lui	a0,0x3
    1254:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1258:	00001097          	auipc	ra,0x1
    125c:	d62080e7          	jalr	-670(ra) # 1fba <exit>
    1260:	bd09                	j	1072 <main+0x72>
    1262:	46d1                	li	a3,20
    1264:	00002637          	lui	a2,0x2
    1268:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    126c:	000025b7          	lui	a1,0x2
    1270:	21058593          	addi	a1,a1,528 # 2210 <mkdir+0x1e6>
    1274:	4509                	li	a0,2
    1276:	00000097          	auipc	ra,0x0
    127a:	460080e7          	jalr	1120(ra) # 16d6 <fprintf>
    127e:	650d                	lui	a0,0x3
    1280:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1284:	00001097          	auipc	ra,0x1
    1288:	d36080e7          	jalr	-714(ra) # 1fba <exit>
    128c:	b509                	j	108e <main+0x8e>
    128e:	46d5                	li	a3,21
    1290:	00002637          	lui	a2,0x2
    1294:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    1298:	000025b7          	lui	a1,0x2
    129c:	26858593          	addi	a1,a1,616 # 2268 <mkdir+0x23e>
    12a0:	4509                	li	a0,2
    12a2:	00000097          	auipc	ra,0x0
    12a6:	434080e7          	jalr	1076(ra) # 16d6 <fprintf>
    12aa:	650d                	lui	a0,0x3
    12ac:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    12b0:	00001097          	auipc	ra,0x1
    12b4:	d0a080e7          	jalr	-758(ra) # 1fba <exit>
    12b8:	bbcd                	j	10aa <main+0xaa>
    12ba:	46d9                	li	a3,22
    12bc:	00002637          	lui	a2,0x2
    12c0:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    12c4:	000025b7          	lui	a1,0x2
    12c8:	2c058593          	addi	a1,a1,704 # 22c0 <mkdir+0x296>
    12cc:	4509                	li	a0,2
    12ce:	00000097          	auipc	ra,0x0
    12d2:	408080e7          	jalr	1032(ra) # 16d6 <fprintf>
    12d6:	650d                	lui	a0,0x3
    12d8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    12dc:	00001097          	auipc	ra,0x1
    12e0:	cde080e7          	jalr	-802(ra) # 1fba <exit>
    12e4:	b3cd                	j	10c6 <main+0xc6>
    12e6:	46dd                	li	a3,23
    12e8:	00002637          	lui	a2,0x2
    12ec:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    12f0:	000025b7          	lui	a1,0x2
    12f4:	31858593          	addi	a1,a1,792 # 2318 <mkdir+0x2ee>
    12f8:	4509                	li	a0,2
    12fa:	00000097          	auipc	ra,0x0
    12fe:	3dc080e7          	jalr	988(ra) # 16d6 <fprintf>
    1302:	650d                	lui	a0,0x3
    1304:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1308:	00001097          	auipc	ra,0x1
    130c:	cb2080e7          	jalr	-846(ra) # 1fba <exit>
    1310:	bbc1                	j	10e0 <main+0xe0>
    1312:	46e9                	li	a3,26
    1314:	00002637          	lui	a2,0x2
    1318:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    131c:	000025b7          	lui	a1,0x2
    1320:	36858593          	addi	a1,a1,872 # 2368 <mkdir+0x33e>
    1324:	4509                	li	a0,2
    1326:	00000097          	auipc	ra,0x0
    132a:	3b0080e7          	jalr	944(ra) # 16d6 <fprintf>
    132e:	650d                	lui	a0,0x3
    1330:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1334:	00001097          	auipc	ra,0x1
    1338:	c86080e7          	jalr	-890(ra) # 1fba <exit>
    133c:	bb7d                	j	10fa <main+0xfa>
    133e:	46ed                	li	a3,27
    1340:	00002637          	lui	a2,0x2
    1344:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    1348:	000025b7          	lui	a1,0x2
    134c:	3d858593          	addi	a1,a1,984 # 23d8 <mkdir+0x3ae>
    1350:	4509                	li	a0,2
    1352:	00000097          	auipc	ra,0x0
    1356:	384080e7          	jalr	900(ra) # 16d6 <fprintf>
    135a:	650d                	lui	a0,0x3
    135c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1360:	00001097          	auipc	ra,0x1
    1364:	c5a080e7          	jalr	-934(ra) # 1fba <exit>
    1368:	b36d                	j	1112 <main+0x112>
    136a:	46f1                	li	a3,28
    136c:	00002637          	lui	a2,0x2
    1370:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    1374:	000025b7          	lui	a1,0x2
    1378:	44058593          	addi	a1,a1,1088 # 2440 <mkdir+0x416>
    137c:	4509                	li	a0,2
    137e:	00000097          	auipc	ra,0x0
    1382:	358080e7          	jalr	856(ra) # 16d6 <fprintf>
    1386:	650d                	lui	a0,0x3
    1388:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    138c:	00001097          	auipc	ra,0x1
    1390:	c2e080e7          	jalr	-978(ra) # 1fba <exit>
    1394:	bb51                	j	1128 <main+0x128>
    1396:	46f5                	li	a3,29
    1398:	00002637          	lui	a2,0x2
    139c:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    13a0:	000025b7          	lui	a1,0x2
    13a4:	4a058593          	addi	a1,a1,1184 # 24a0 <mkdir+0x476>
    13a8:	4509                	li	a0,2
    13aa:	00000097          	auipc	ra,0x0
    13ae:	32c080e7          	jalr	812(ra) # 16d6 <fprintf>
    13b2:	650d                	lui	a0,0x3
    13b4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    13b8:	00001097          	auipc	ra,0x1
    13bc:	c02080e7          	jalr	-1022(ra) # 1fba <exit>
    13c0:	b349                	j	1142 <main+0x142>
    13c2:	02000693          	li	a3,32
    13c6:	00002637          	lui	a2,0x2
    13ca:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    13ce:	000025b7          	lui	a1,0x2
    13d2:	50058593          	addi	a1,a1,1280 # 2500 <mkdir+0x4d6>
    13d6:	4509                	li	a0,2
    13d8:	00000097          	auipc	ra,0x0
    13dc:	2fe080e7          	jalr	766(ra) # 16d6 <fprintf>
    13e0:	650d                	lui	a0,0x3
    13e2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    13e6:	00001097          	auipc	ra,0x1
    13ea:	bd4080e7          	jalr	-1068(ra) # 1fba <exit>
    13ee:	b3b5                	j	115a <main+0x15a>
    13f0:	02100693          	li	a3,33
    13f4:	00002637          	lui	a2,0x2
    13f8:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    13fc:	000025b7          	lui	a1,0x2
    1400:	56058593          	addi	a1,a1,1376 # 2560 <mkdir+0x536>
    1404:	4509                	li	a0,2
    1406:	00000097          	auipc	ra,0x0
    140a:	2d0080e7          	jalr	720(ra) # 16d6 <fprintf>
    140e:	650d                	lui	a0,0x3
    1410:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1414:	00001097          	auipc	ra,0x1
    1418:	ba6080e7          	jalr	-1114(ra) # 1fba <exit>
    141c:	bb91                	j	1170 <main+0x170>
    141e:	02200693          	li	a3,34
    1422:	00002637          	lui	a2,0x2
    1426:	05060613          	addi	a2,a2,80 # 2050 <mkdir+0x26>
    142a:	000025b7          	lui	a1,0x2
    142e:	5a858593          	addi	a1,a1,1448 # 25a8 <mkdir+0x57e>
    1432:	4509                	li	a0,2
    1434:	00000097          	auipc	ra,0x0
    1438:	2a2080e7          	jalr	674(ra) # 16d6 <fprintf>
    143c:	650d                	lui	a0,0x3
    143e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1442:	00001097          	auipc	ra,0x1
    1446:	b78080e7          	jalr	-1160(ra) # 1fba <exit>
    144a:	bb15                	j	117e <main+0x17e>

000000000000144c <putc>:
    144c:	1101                	addi	sp,sp,-32
    144e:	ec06                	sd	ra,24(sp)
    1450:	00b107a3          	sb	a1,15(sp)
    1454:	4605                	li	a2,1
    1456:	00f10593          	addi	a1,sp,15
    145a:	00001097          	auipc	ra,0x1
    145e:	b90080e7          	jalr	-1136(ra) # 1fea <write>
    1462:	60e2                	ld	ra,24(sp)
    1464:	6105                	addi	sp,sp,32
    1466:	8082                	ret

0000000000001468 <printint>:
    1468:	7179                	addi	sp,sp,-48
    146a:	f406                	sd	ra,40(sp)
    146c:	f022                	sd	s0,32(sp)
    146e:	ec26                	sd	s1,24(sp)
    1470:	e84a                	sd	s2,16(sp)
    1472:	84aa                	mv	s1,a0
    1474:	c299                	beqz	a3,147a <printint+0x12>
    1476:	0805c363          	bltz	a1,14fc <printint+0x94>
    147a:	2581                	sext.w	a1,a1
    147c:	4881                	li	a7,0
    147e:	868a                	mv	a3,sp
    1480:	4701                	li	a4,0
    1482:	2601                	sext.w	a2,a2
    1484:	00002537          	lui	a0,0x2
    1488:	5f050513          	addi	a0,a0,1520 # 25f0 <digits>
    148c:	883a                	mv	a6,a4
    148e:	2705                	addiw	a4,a4,1
    1490:	02c5f7bb          	remuw	a5,a1,a2
    1494:	1782                	slli	a5,a5,0x20
    1496:	9381                	srli	a5,a5,0x20
    1498:	97aa                	add	a5,a5,a0
    149a:	0007c783          	lbu	a5,0(a5)
    149e:	00f68023          	sb	a5,0(a3)
    14a2:	0005879b          	sext.w	a5,a1
    14a6:	02c5d5bb          	divuw	a1,a1,a2
    14aa:	0685                	addi	a3,a3,1
    14ac:	fec7f0e3          	bgeu	a5,a2,148c <printint+0x24>
    14b0:	00088a63          	beqz	a7,14c4 <printint+0x5c>
    14b4:	081c                	addi	a5,sp,16
    14b6:	973e                	add	a4,a4,a5
    14b8:	02d00793          	li	a5,45
    14bc:	fef70823          	sb	a5,-16(a4)
    14c0:	0028071b          	addiw	a4,a6,2
    14c4:	02e05663          	blez	a4,14f0 <printint+0x88>
    14c8:	00e10433          	add	s0,sp,a4
    14cc:	fff10913          	addi	s2,sp,-1
    14d0:	993a                	add	s2,s2,a4
    14d2:	377d                	addiw	a4,a4,-1
    14d4:	1702                	slli	a4,a4,0x20
    14d6:	9301                	srli	a4,a4,0x20
    14d8:	40e90933          	sub	s2,s2,a4
    14dc:	fff44583          	lbu	a1,-1(s0)
    14e0:	8526                	mv	a0,s1
    14e2:	00000097          	auipc	ra,0x0
    14e6:	f6a080e7          	jalr	-150(ra) # 144c <putc>
    14ea:	147d                	addi	s0,s0,-1
    14ec:	ff2418e3          	bne	s0,s2,14dc <printint+0x74>
    14f0:	70a2                	ld	ra,40(sp)
    14f2:	7402                	ld	s0,32(sp)
    14f4:	64e2                	ld	s1,24(sp)
    14f6:	6942                	ld	s2,16(sp)
    14f8:	6145                	addi	sp,sp,48
    14fa:	8082                	ret
    14fc:	40b005bb          	negw	a1,a1
    1500:	4885                	li	a7,1
    1502:	bfb5                	j	147e <printint+0x16>

0000000000001504 <vprintf>:
    1504:	7159                	addi	sp,sp,-112
    1506:	f486                	sd	ra,104(sp)
    1508:	f0a2                	sd	s0,96(sp)
    150a:	eca6                	sd	s1,88(sp)
    150c:	e8ca                	sd	s2,80(sp)
    150e:	e4ce                	sd	s3,72(sp)
    1510:	e0d2                	sd	s4,64(sp)
    1512:	fc56                	sd	s5,56(sp)
    1514:	f85a                	sd	s6,48(sp)
    1516:	f45e                	sd	s7,40(sp)
    1518:	f062                	sd	s8,32(sp)
    151a:	ec66                	sd	s9,24(sp)
    151c:	e86a                	sd	s10,16(sp)
    151e:	e46e                	sd	s11,8(sp)
    1520:	0005c483          	lbu	s1,0(a1)
    1524:	18048a63          	beqz	s1,16b8 <vprintf+0x1b4>
    1528:	8a2a                	mv	s4,a0
    152a:	8ab2                	mv	s5,a2
    152c:	00158413          	addi	s0,a1,1
    1530:	4901                	li	s2,0
    1532:	02500993          	li	s3,37
    1536:	06400b93          	li	s7,100
    153a:	06c00c13          	li	s8,108
    153e:	07800c93          	li	s9,120
    1542:	07000d13          	li	s10,112
    1546:	00002db7          	lui	s11,0x2
    154a:	00002b37          	lui	s6,0x2
    154e:	5f0b0b13          	addi	s6,s6,1520 # 25f0 <digits>
    1552:	a839                	j	1570 <vprintf+0x6c>
    1554:	85a6                	mv	a1,s1
    1556:	8552                	mv	a0,s4
    1558:	00000097          	auipc	ra,0x0
    155c:	ef4080e7          	jalr	-268(ra) # 144c <putc>
    1560:	a019                	j	1566 <vprintf+0x62>
    1562:	01390f63          	beq	s2,s3,1580 <vprintf+0x7c>
    1566:	0405                	addi	s0,s0,1
    1568:	fff44483          	lbu	s1,-1(s0)
    156c:	14048663          	beqz	s1,16b8 <vprintf+0x1b4>
    1570:	0004879b          	sext.w	a5,s1
    1574:	fe0917e3          	bnez	s2,1562 <vprintf+0x5e>
    1578:	fd379ee3          	bne	a5,s3,1554 <vprintf+0x50>
    157c:	893e                	mv	s2,a5
    157e:	b7e5                	j	1566 <vprintf+0x62>
    1580:	05778063          	beq	a5,s7,15c0 <vprintf+0xbc>
    1584:	05878c63          	beq	a5,s8,15dc <vprintf+0xd8>
    1588:	07978863          	beq	a5,s9,15f8 <vprintf+0xf4>
    158c:	09a78463          	beq	a5,s10,1614 <vprintf+0x110>
    1590:	07300713          	li	a4,115
    1594:	0ce78263          	beq	a5,a4,1658 <vprintf+0x154>
    1598:	06300713          	li	a4,99
    159c:	0ee78763          	beq	a5,a4,168a <vprintf+0x186>
    15a0:	11378163          	beq	a5,s3,16a2 <vprintf+0x19e>
    15a4:	85ce                	mv	a1,s3
    15a6:	8552                	mv	a0,s4
    15a8:	00000097          	auipc	ra,0x0
    15ac:	ea4080e7          	jalr	-348(ra) # 144c <putc>
    15b0:	85a6                	mv	a1,s1
    15b2:	8552                	mv	a0,s4
    15b4:	00000097          	auipc	ra,0x0
    15b8:	e98080e7          	jalr	-360(ra) # 144c <putc>
    15bc:	4901                	li	s2,0
    15be:	b765                	j	1566 <vprintf+0x62>
    15c0:	008a8493          	addi	s1,s5,8
    15c4:	4685                	li	a3,1
    15c6:	4629                	li	a2,10
    15c8:	000aa583          	lw	a1,0(s5)
    15cc:	8552                	mv	a0,s4
    15ce:	00000097          	auipc	ra,0x0
    15d2:	e9a080e7          	jalr	-358(ra) # 1468 <printint>
    15d6:	8aa6                	mv	s5,s1
    15d8:	4901                	li	s2,0
    15da:	b771                	j	1566 <vprintf+0x62>
    15dc:	008a8493          	addi	s1,s5,8
    15e0:	4681                	li	a3,0
    15e2:	4629                	li	a2,10
    15e4:	000aa583          	lw	a1,0(s5)
    15e8:	8552                	mv	a0,s4
    15ea:	00000097          	auipc	ra,0x0
    15ee:	e7e080e7          	jalr	-386(ra) # 1468 <printint>
    15f2:	8aa6                	mv	s5,s1
    15f4:	4901                	li	s2,0
    15f6:	bf85                	j	1566 <vprintf+0x62>
    15f8:	008a8493          	addi	s1,s5,8
    15fc:	4681                	li	a3,0
    15fe:	4641                	li	a2,16
    1600:	000aa583          	lw	a1,0(s5)
    1604:	8552                	mv	a0,s4
    1606:	00000097          	auipc	ra,0x0
    160a:	e62080e7          	jalr	-414(ra) # 1468 <printint>
    160e:	8aa6                	mv	s5,s1
    1610:	4901                	li	s2,0
    1612:	bf91                	j	1566 <vprintf+0x62>
    1614:	008a8913          	addi	s2,s5,8
    1618:	000aba83          	ld	s5,0(s5)
    161c:	03000593          	li	a1,48
    1620:	8552                	mv	a0,s4
    1622:	00000097          	auipc	ra,0x0
    1626:	e2a080e7          	jalr	-470(ra) # 144c <putc>
    162a:	85e6                	mv	a1,s9
    162c:	8552                	mv	a0,s4
    162e:	00000097          	auipc	ra,0x0
    1632:	e1e080e7          	jalr	-482(ra) # 144c <putc>
    1636:	44c1                	li	s1,16
    1638:	03cad793          	srli	a5,s5,0x3c
    163c:	97da                	add	a5,a5,s6
    163e:	0007c583          	lbu	a1,0(a5)
    1642:	8552                	mv	a0,s4
    1644:	00000097          	auipc	ra,0x0
    1648:	e08080e7          	jalr	-504(ra) # 144c <putc>
    164c:	0a92                	slli	s5,s5,0x4
    164e:	34fd                	addiw	s1,s1,-1
    1650:	f4e5                	bnez	s1,1638 <vprintf+0x134>
    1652:	8aca                	mv	s5,s2
    1654:	4901                	li	s2,0
    1656:	bf01                	j	1566 <vprintf+0x62>
    1658:	008a8913          	addi	s2,s5,8
    165c:	000ab483          	ld	s1,0(s5)
    1660:	c085                	beqz	s1,1680 <vprintf+0x17c>
    1662:	0004c583          	lbu	a1,0(s1)
    1666:	c5b1                	beqz	a1,16b2 <vprintf+0x1ae>
    1668:	8552                	mv	a0,s4
    166a:	00000097          	auipc	ra,0x0
    166e:	de2080e7          	jalr	-542(ra) # 144c <putc>
    1672:	0485                	addi	s1,s1,1
    1674:	0004c583          	lbu	a1,0(s1)
    1678:	f9e5                	bnez	a1,1668 <vprintf+0x164>
    167a:	8aca                	mv	s5,s2
    167c:	4901                	li	s2,0
    167e:	b5e5                	j	1566 <vprintf+0x62>
    1680:	5e8d8493          	addi	s1,s11,1512 # 25e8 <mkdir+0x5be>
    1684:	02800593          	li	a1,40
    1688:	b7c5                	j	1668 <vprintf+0x164>
    168a:	008a8493          	addi	s1,s5,8
    168e:	000ac583          	lbu	a1,0(s5)
    1692:	8552                	mv	a0,s4
    1694:	00000097          	auipc	ra,0x0
    1698:	db8080e7          	jalr	-584(ra) # 144c <putc>
    169c:	8aa6                	mv	s5,s1
    169e:	4901                	li	s2,0
    16a0:	b5d9                	j	1566 <vprintf+0x62>
    16a2:	85ce                	mv	a1,s3
    16a4:	8552                	mv	a0,s4
    16a6:	00000097          	auipc	ra,0x0
    16aa:	da6080e7          	jalr	-602(ra) # 144c <putc>
    16ae:	4901                	li	s2,0
    16b0:	bd5d                	j	1566 <vprintf+0x62>
    16b2:	8aca                	mv	s5,s2
    16b4:	4901                	li	s2,0
    16b6:	bd45                	j	1566 <vprintf+0x62>
    16b8:	70a6                	ld	ra,104(sp)
    16ba:	7406                	ld	s0,96(sp)
    16bc:	64e6                	ld	s1,88(sp)
    16be:	6946                	ld	s2,80(sp)
    16c0:	69a6                	ld	s3,72(sp)
    16c2:	6a06                	ld	s4,64(sp)
    16c4:	7ae2                	ld	s5,56(sp)
    16c6:	7b42                	ld	s6,48(sp)
    16c8:	7ba2                	ld	s7,40(sp)
    16ca:	7c02                	ld	s8,32(sp)
    16cc:	6ce2                	ld	s9,24(sp)
    16ce:	6d42                	ld	s10,16(sp)
    16d0:	6da2                	ld	s11,8(sp)
    16d2:	6165                	addi	sp,sp,112
    16d4:	8082                	ret

00000000000016d6 <fprintf>:
    16d6:	715d                	addi	sp,sp,-80
    16d8:	ec06                	sd	ra,24(sp)
    16da:	f032                	sd	a2,32(sp)
    16dc:	f436                	sd	a3,40(sp)
    16de:	f83a                	sd	a4,48(sp)
    16e0:	fc3e                	sd	a5,56(sp)
    16e2:	e0c2                	sd	a6,64(sp)
    16e4:	e4c6                	sd	a7,72(sp)
    16e6:	1010                	addi	a2,sp,32
    16e8:	e432                	sd	a2,8(sp)
    16ea:	00000097          	auipc	ra,0x0
    16ee:	e1a080e7          	jalr	-486(ra) # 1504 <vprintf>
    16f2:	60e2                	ld	ra,24(sp)
    16f4:	6161                	addi	sp,sp,80
    16f6:	8082                	ret

00000000000016f8 <printf>:
    16f8:	711d                	addi	sp,sp,-96
    16fa:	ec06                	sd	ra,24(sp)
    16fc:	f42e                	sd	a1,40(sp)
    16fe:	f832                	sd	a2,48(sp)
    1700:	fc36                	sd	a3,56(sp)
    1702:	e0ba                	sd	a4,64(sp)
    1704:	e4be                	sd	a5,72(sp)
    1706:	e8c2                	sd	a6,80(sp)
    1708:	ecc6                	sd	a7,88(sp)
    170a:	1030                	addi	a2,sp,40
    170c:	e432                	sd	a2,8(sp)
    170e:	85aa                	mv	a1,a0
    1710:	4505                	li	a0,1
    1712:	00000097          	auipc	ra,0x0
    1716:	df2080e7          	jalr	-526(ra) # 1504 <vprintf>
    171a:	60e2                	ld	ra,24(sp)
    171c:	6125                	addi	sp,sp,96
    171e:	8082                	ret

0000000000001720 <cksum>:
    1720:	cdb1                	beqz	a1,177c <cksum+0x5c>
    1722:	00b50833          	add	a6,a0,a1
    1726:	4781                	li	a5,0
    1728:	00002637          	lui	a2,0x2
    172c:	60860613          	addi	a2,a2,1544 # 2608 <crctab>
    1730:	0505                	addi	a0,a0,1
    1732:	0087969b          	slliw	a3,a5,0x8
    1736:	0187d71b          	srliw	a4,a5,0x18
    173a:	fff54783          	lbu	a5,-1(a0)
    173e:	8f3d                	xor	a4,a4,a5
    1740:	1702                	slli	a4,a4,0x20
    1742:	9301                	srli	a4,a4,0x20
    1744:	070a                	slli	a4,a4,0x2
    1746:	9732                	add	a4,a4,a2
    1748:	431c                	lw	a5,0(a4)
    174a:	8fb5                	xor	a5,a5,a3
    174c:	2781                	sext.w	a5,a5
    174e:	fea811e3          	bne	a6,a0,1730 <cksum+0x10>
    1752:	00002637          	lui	a2,0x2
    1756:	60860613          	addi	a2,a2,1544 # 2608 <crctab>
    175a:	0ff5f693          	andi	a3,a1,255
    175e:	81a1                	srli	a1,a1,0x8
    1760:	0087951b          	slliw	a0,a5,0x8
    1764:	0187d71b          	srliw	a4,a5,0x18
    1768:	8f35                	xor	a4,a4,a3
    176a:	070a                	slli	a4,a4,0x2
    176c:	9732                	add	a4,a4,a2
    176e:	431c                	lw	a5,0(a4)
    1770:	8fa9                	xor	a5,a5,a0
    1772:	2781                	sext.w	a5,a5
    1774:	f1fd                	bnez	a1,175a <cksum+0x3a>
    1776:	fff7c513          	not	a0,a5
    177a:	8082                	ret
    177c:	4781                	li	a5,0
    177e:	bfe5                	j	1776 <cksum+0x56>

0000000000001780 <swap_bytes>:
    1780:	ce19                	beqz	a2,179e <swap_bytes+0x1e>
    1782:	87aa                	mv	a5,a0
    1784:	962a                	add	a2,a2,a0
    1786:	0007c703          	lbu	a4,0(a5)
    178a:	0005c683          	lbu	a3,0(a1)
    178e:	00d78023          	sb	a3,0(a5)
    1792:	00e58023          	sb	a4,0(a1)
    1796:	0785                	addi	a5,a5,1
    1798:	0585                	addi	a1,a1,1
    179a:	fec796e3          	bne	a5,a2,1786 <swap_bytes+0x6>
    179e:	8082                	ret

00000000000017a0 <random_init>:
    17a0:	7139                	addi	sp,sp,-64
    17a2:	fc06                	sd	ra,56(sp)
    17a4:	f822                	sd	s0,48(sp)
    17a6:	f426                	sd	s1,40(sp)
    17a8:	f04a                	sd	s2,32(sp)
    17aa:	ec4e                	sd	s3,24(sp)
    17ac:	e852                	sd	s4,16(sp)
    17ae:	c62a                	sw	a0,12(sp)
    17b0:	000037b7          	lui	a5,0x3
    17b4:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    17b8:	eca5                	bnez	s1,1830 <random_init+0x90>
    17ba:	00003737          	lui	a4,0x3
    17be:	10070913          	addi	s2,a4,256 # 3100 <s>
    17c2:	10070713          	addi	a4,a4,256
    17c6:	87a6                	mv	a5,s1
    17c8:	10000693          	li	a3,256
    17cc:	00f70023          	sb	a5,0(a4)
    17d0:	2785                	addiw	a5,a5,1
    17d2:	0705                	addi	a4,a4,1
    17d4:	fed79ce3          	bne	a5,a3,17cc <random_init+0x2c>
    17d8:	4401                	li	s0,0
    17da:	000039b7          	lui	s3,0x3
    17de:	10098993          	addi	s3,s3,256 # 3100 <s>
    17e2:	10000a13          	li	s4,256
    17e6:	0034f793          	andi	a5,s1,3
    17ea:	0818                	addi	a4,sp,16
    17ec:	97ba                	add	a5,a5,a4
    17ee:	ffc7c783          	lbu	a5,-4(a5)
    17f2:	00094703          	lbu	a4,0(s2)
    17f6:	9fb9                	addw	a5,a5,a4
    17f8:	9c3d                	addw	s0,s0,a5
    17fa:	0ff47413          	andi	s0,s0,255
    17fe:	4605                	li	a2,1
    1800:	008985b3          	add	a1,s3,s0
    1804:	854a                	mv	a0,s2
    1806:	00000097          	auipc	ra,0x0
    180a:	f7a080e7          	jalr	-134(ra) # 1780 <swap_bytes>
    180e:	2485                	addiw	s1,s1,1
    1810:	0905                	addi	s2,s2,1
    1812:	fd449ae3          	bne	s1,s4,17e6 <random_init+0x46>
    1816:	000037b7          	lui	a5,0x3
    181a:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    181e:	000037b7          	lui	a5,0x3
    1822:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1826:	000037b7          	lui	a5,0x3
    182a:	4705                	li	a4,1
    182c:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1830:	70e2                	ld	ra,56(sp)
    1832:	7442                	ld	s0,48(sp)
    1834:	74a2                	ld	s1,40(sp)
    1836:	7902                	ld	s2,32(sp)
    1838:	69e2                	ld	s3,24(sp)
    183a:	6a42                	ld	s4,16(sp)
    183c:	6121                	addi	sp,sp,64
    183e:	8082                	ret

0000000000001840 <random_bytes>:
    1840:	7139                	addi	sp,sp,-64
    1842:	fc06                	sd	ra,56(sp)
    1844:	f822                	sd	s0,48(sp)
    1846:	f426                	sd	s1,40(sp)
    1848:	f04a                	sd	s2,32(sp)
    184a:	ec4e                	sd	s3,24(sp)
    184c:	e852                	sd	s4,16(sp)
    184e:	e456                	sd	s5,8(sp)
    1850:	e05a                	sd	s6,0(sp)
    1852:	892a                	mv	s2,a0
    1854:	8aae                	mv	s5,a1
    1856:	000037b7          	lui	a5,0x3
    185a:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    185e:	c3c1                	beqz	a5,18de <random_bytes+0x9e>
    1860:	060a8563          	beqz	s5,18ca <random_bytes+0x8a>
    1864:	9aca                	add	s5,s5,s2
    1866:	00003a37          	lui	s4,0x3
    186a:	000034b7          	lui	s1,0x3
    186e:	10048493          	addi	s1,s1,256 # 3100 <s>
    1872:	000039b7          	lui	s3,0x3
    1876:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    187a:	2505                	addiw	a0,a0,1
    187c:	0ff57513          	andi	a0,a0,255
    1880:	0eaa0aa3          	sb	a0,245(s4)
    1884:	00a48b33          	add	s6,s1,a0
    1888:	000b4403          	lbu	s0,0(s6)
    188c:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1890:	9c3d                	addw	s0,s0,a5
    1892:	0ff47413          	andi	s0,s0,255
    1896:	0e898a23          	sb	s0,244(s3)
    189a:	4605                	li	a2,1
    189c:	008485b3          	add	a1,s1,s0
    18a0:	855a                	mv	a0,s6
    18a2:	00000097          	auipc	ra,0x0
    18a6:	ede080e7          	jalr	-290(ra) # 1780 <swap_bytes>
    18aa:	9426                	add	s0,s0,s1
    18ac:	000b4783          	lbu	a5,0(s6)
    18b0:	00044703          	lbu	a4,0(s0)
    18b4:	9fb9                	addw	a5,a5,a4
    18b6:	0ff7f793          	andi	a5,a5,255
    18ba:	97a6                	add	a5,a5,s1
    18bc:	0007c783          	lbu	a5,0(a5)
    18c0:	00f90023          	sb	a5,0(s2)
    18c4:	0905                	addi	s2,s2,1
    18c6:	fb2a98e3          	bne	s5,s2,1876 <random_bytes+0x36>
    18ca:	70e2                	ld	ra,56(sp)
    18cc:	7442                	ld	s0,48(sp)
    18ce:	74a2                	ld	s1,40(sp)
    18d0:	7902                	ld	s2,32(sp)
    18d2:	69e2                	ld	s3,24(sp)
    18d4:	6a42                	ld	s4,16(sp)
    18d6:	6aa2                	ld	s5,8(sp)
    18d8:	6b02                	ld	s6,0(sp)
    18da:	6121                	addi	sp,sp,64
    18dc:	8082                	ret
    18de:	4501                	li	a0,0
    18e0:	00000097          	auipc	ra,0x0
    18e4:	ec0080e7          	jalr	-320(ra) # 17a0 <random_init>
    18e8:	bfa5                	j	1860 <random_bytes+0x20>

00000000000018ea <random_ulong>:
    18ea:	1101                	addi	sp,sp,-32
    18ec:	ec06                	sd	ra,24(sp)
    18ee:	45a1                	li	a1,8
    18f0:	0028                	addi	a0,sp,8
    18f2:	00000097          	auipc	ra,0x0
    18f6:	f4e080e7          	jalr	-178(ra) # 1840 <random_bytes>
    18fa:	6522                	ld	a0,8(sp)
    18fc:	60e2                	ld	ra,24(sp)
    18fe:	6105                	addi	sp,sp,32
    1900:	8082                	ret

0000000000001902 <shuffle>:
    1902:	c9b9                	beqz	a1,1958 <shuffle+0x56>
    1904:	7179                	addi	sp,sp,-48
    1906:	f406                	sd	ra,40(sp)
    1908:	f022                	sd	s0,32(sp)
    190a:	ec26                	sd	s1,24(sp)
    190c:	e84a                	sd	s2,16(sp)
    190e:	e44e                	sd	s3,8(sp)
    1910:	e052                	sd	s4,0(sp)
    1912:	8a2a                	mv	s4,a0
    1914:	89ae                	mv	s3,a1
    1916:	84b2                	mv	s1,a2
    1918:	892a                	mv	s2,a0
    191a:	4401                	li	s0,0
    191c:	00000097          	auipc	ra,0x0
    1920:	fce080e7          	jalr	-50(ra) # 18ea <random_ulong>
    1924:	408985b3          	sub	a1,s3,s0
    1928:	02b575b3          	remu	a1,a0,a1
    192c:	95a2                	add	a1,a1,s0
    192e:	029585b3          	mul	a1,a1,s1
    1932:	8626                	mv	a2,s1
    1934:	95d2                	add	a1,a1,s4
    1936:	854a                	mv	a0,s2
    1938:	00000097          	auipc	ra,0x0
    193c:	e48080e7          	jalr	-440(ra) # 1780 <swap_bytes>
    1940:	0405                	addi	s0,s0,1
    1942:	9926                	add	s2,s2,s1
    1944:	fc899ce3          	bne	s3,s0,191c <shuffle+0x1a>
    1948:	70a2                	ld	ra,40(sp)
    194a:	7402                	ld	s0,32(sp)
    194c:	64e2                	ld	s1,24(sp)
    194e:	6942                	ld	s2,16(sp)
    1950:	69a2                	ld	s3,8(sp)
    1952:	6a02                	ld	s4,0(sp)
    1954:	6145                	addi	sp,sp,48
    1956:	8082                	ret
    1958:	8082                	ret

000000000000195a <arc4_init>:
    195a:	100500a3          	sb	zero,257(a0)
    195e:	10050023          	sb	zero,256(a0)
    1962:	4781                	li	a5,0
    1964:	10000693          	li	a3,256
    1968:	00f50733          	add	a4,a0,a5
    196c:	00f70023          	sb	a5,0(a4)
    1970:	0785                	addi	a5,a5,1
    1972:	fed79be3          	bne	a5,a3,1968 <arc4_init+0xe>
    1976:	86aa                	mv	a3,a0
    1978:	10050e13          	addi	t3,a0,256
    197c:	4701                	li	a4,0
    197e:	4781                	li	a5,0
    1980:	0006c883          	lbu	a7,0(a3)
    1984:	00f58833          	add	a6,a1,a5
    1988:	00084803          	lbu	a6,0(a6)
    198c:	00e8873b          	addw	a4,a7,a4
    1990:	00e8073b          	addw	a4,a6,a4
    1994:	0ff77713          	andi	a4,a4,255
    1998:	00e50833          	add	a6,a0,a4
    199c:	00084303          	lbu	t1,0(a6)
    19a0:	00668023          	sb	t1,0(a3)
    19a4:	01180023          	sb	a7,0(a6)
    19a8:	0785                	addi	a5,a5,1
    19aa:	00c7b833          	sltu	a6,a5,a2
    19ae:	41000833          	neg	a6,a6
    19b2:	0107f7b3          	and	a5,a5,a6
    19b6:	0685                	addi	a3,a3,1
    19b8:	fdc694e3          	bne	a3,t3,1980 <arc4_init+0x26>
    19bc:	8082                	ret

00000000000019be <arc4_crypt>:
    19be:	10054e03          	lbu	t3,256(a0)
    19c2:	10154803          	lbu	a6,257(a0)
    19c6:	fff60e93          	addi	t4,a2,-1
    19ca:	c225                	beqz	a2,1a2a <arc4_crypt+0x6c>
    19cc:	00c588b3          	add	a7,a1,a2
    19d0:	86ae                	mv	a3,a1
    19d2:	001e031b          	addiw	t1,t3,1
    19d6:	40b3033b          	subw	t1,t1,a1
    19da:	00d3073b          	addw	a4,t1,a3
    19de:	0ff77713          	andi	a4,a4,255
    19e2:	972a                	add	a4,a4,a0
    19e4:	00074603          	lbu	a2,0(a4)
    19e8:	0106083b          	addw	a6,a2,a6
    19ec:	0ff87813          	andi	a6,a6,255
    19f0:	010507b3          	add	a5,a0,a6
    19f4:	0007c583          	lbu	a1,0(a5)
    19f8:	00b70023          	sb	a1,0(a4)
    19fc:	00c78023          	sb	a2,0(a5)
    1a00:	0685                	addi	a3,a3,1
    1a02:	00074783          	lbu	a5,0(a4)
    1a06:	9fb1                	addw	a5,a5,a2
    1a08:	0ff7f793          	andi	a5,a5,255
    1a0c:	97aa                	add	a5,a5,a0
    1a0e:	0007c783          	lbu	a5,0(a5)
    1a12:	fff6c703          	lbu	a4,-1(a3)
    1a16:	8fb9                	xor	a5,a5,a4
    1a18:	fef68fa3          	sb	a5,-1(a3)
    1a1c:	fb169fe3          	bne	a3,a7,19da <arc4_crypt+0x1c>
    1a20:	2e85                	addiw	t4,t4,1
    1a22:	01ce8e3b          	addw	t3,t4,t3
    1a26:	0ffe7e13          	andi	t3,t3,255
    1a2a:	11c50023          	sb	t3,256(a0)
    1a2e:	110500a3          	sb	a6,257(a0)
    1a32:	8082                	ret

0000000000001a34 <_main>:
    1a34:	1141                	addi	sp,sp,-16
    1a36:	e406                	sd	ra,8(sp)
    1a38:	fffff097          	auipc	ra,0xfffff
    1a3c:	5c8080e7          	jalr	1480(ra) # 1000 <main>
    1a40:	4501                	li	a0,0
    1a42:	00000097          	auipc	ra,0x0
    1a46:	578080e7          	jalr	1400(ra) # 1fba <exit>
    1a4a:	60a2                	ld	ra,8(sp)
    1a4c:	0141                	addi	sp,sp,16
    1a4e:	8082                	ret

0000000000001a50 <strcmp>:
    1a50:	00054783          	lbu	a5,0(a0)
    1a54:	cb91                	beqz	a5,1a68 <strcmp+0x18>
    1a56:	0005c703          	lbu	a4,0(a1)
    1a5a:	00f71763          	bne	a4,a5,1a68 <strcmp+0x18>
    1a5e:	0505                	addi	a0,a0,1
    1a60:	0585                	addi	a1,a1,1
    1a62:	00054783          	lbu	a5,0(a0)
    1a66:	fbe5                	bnez	a5,1a56 <strcmp+0x6>
    1a68:	0005c503          	lbu	a0,0(a1)
    1a6c:	40a7853b          	subw	a0,a5,a0
    1a70:	8082                	ret

0000000000001a72 <strcpy>:
    1a72:	87aa                	mv	a5,a0
    1a74:	0585                	addi	a1,a1,1
    1a76:	0785                	addi	a5,a5,1
    1a78:	fff5c703          	lbu	a4,-1(a1)
    1a7c:	fee78fa3          	sb	a4,-1(a5)
    1a80:	fb75                	bnez	a4,1a74 <strcpy+0x2>
    1a82:	8082                	ret

0000000000001a84 <strlen>:
    1a84:	00054783          	lbu	a5,0(a0)
    1a88:	cf81                	beqz	a5,1aa0 <strlen+0x1c>
    1a8a:	0505                	addi	a0,a0,1
    1a8c:	87aa                	mv	a5,a0
    1a8e:	4685                	li	a3,1
    1a90:	9e89                	subw	a3,a3,a0
    1a92:	00f6853b          	addw	a0,a3,a5
    1a96:	0785                	addi	a5,a5,1
    1a98:	fff7c703          	lbu	a4,-1(a5)
    1a9c:	fb7d                	bnez	a4,1a92 <strlen+0xe>
    1a9e:	8082                	ret
    1aa0:	4501                	li	a0,0
    1aa2:	8082                	ret

0000000000001aa4 <memset>:
    1aa4:	ca19                	beqz	a2,1aba <memset+0x16>
    1aa6:	87aa                	mv	a5,a0
    1aa8:	1602                	slli	a2,a2,0x20
    1aaa:	9201                	srli	a2,a2,0x20
    1aac:	00a60733          	add	a4,a2,a0
    1ab0:	00b78023          	sb	a1,0(a5)
    1ab4:	0785                	addi	a5,a5,1
    1ab6:	fee79de3          	bne	a5,a4,1ab0 <memset+0xc>
    1aba:	8082                	ret

0000000000001abc <memcmp>:
    1abc:	1101                	addi	sp,sp,-32
    1abe:	ec06                	sd	ra,24(sp)
    1ac0:	e822                	sd	s0,16(sp)
    1ac2:	e426                	sd	s1,8(sp)
    1ac4:	e04a                	sd	s2,0(sp)
    1ac6:	892a                	mv	s2,a0
    1ac8:	842e                	mv	s0,a1
    1aca:	84b2                	mv	s1,a2
    1acc:	c915                	beqz	a0,1b00 <memcmp+0x44>
    1ace:	c5ad                	beqz	a1,1b38 <memcmp+0x7c>
    1ad0:	fff60713          	addi	a4,a2,-1
    1ad4:	c645                	beqz	a2,1b7c <memcmp+0xc0>
    1ad6:	87ca                	mv	a5,s2
    1ad8:	00190613          	addi	a2,s2,1
    1adc:	963a                	add	a2,a2,a4
    1ade:	0007c683          	lbu	a3,0(a5)
    1ae2:	00044703          	lbu	a4,0(s0)
    1ae6:	08e69463          	bne	a3,a4,1b6e <memcmp+0xb2>
    1aea:	0785                	addi	a5,a5,1
    1aec:	0405                	addi	s0,s0,1
    1aee:	fec798e3          	bne	a5,a2,1ade <memcmp+0x22>
    1af2:	4501                	li	a0,0
    1af4:	60e2                	ld	ra,24(sp)
    1af6:	6442                	ld	s0,16(sp)
    1af8:	64a2                	ld	s1,8(sp)
    1afa:	6902                	ld	s2,0(sp)
    1afc:	6105                	addi	sp,sp,32
    1afe:	8082                	ret
    1b00:	4501                	li	a0,0
    1b02:	da6d                	beqz	a2,1af4 <memcmp+0x38>
    1b04:	03200693          	li	a3,50
    1b08:	00003637          	lui	a2,0x3
    1b0c:	a0860613          	addi	a2,a2,-1528 # 2a08 <crctab+0x400>
    1b10:	000035b7          	lui	a1,0x3
    1b14:	a1858593          	addi	a1,a1,-1512 # 2a18 <crctab+0x410>
    1b18:	4509                	li	a0,2
    1b1a:	00000097          	auipc	ra,0x0
    1b1e:	bbc080e7          	jalr	-1092(ra) # 16d6 <fprintf>
    1b22:	650d                	lui	a0,0x3
    1b24:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b28:	00000097          	auipc	ra,0x0
    1b2c:	492080e7          	jalr	1170(ra) # 1fba <exit>
    1b30:	fff48713          	addi	a4,s1,-1
    1b34:	f04d                	bnez	s0,1ad6 <memcmp+0x1a>
    1b36:	a011                	j	1b3a <memcmp+0x7e>
    1b38:	c221                	beqz	a2,1b78 <memcmp+0xbc>
    1b3a:	03300693          	li	a3,51
    1b3e:	00003637          	lui	a2,0x3
    1b42:	a0860613          	addi	a2,a2,-1528 # 2a08 <crctab+0x400>
    1b46:	000035b7          	lui	a1,0x3
    1b4a:	a6058593          	addi	a1,a1,-1440 # 2a60 <crctab+0x458>
    1b4e:	4509                	li	a0,2
    1b50:	00000097          	auipc	ra,0x0
    1b54:	b86080e7          	jalr	-1146(ra) # 16d6 <fprintf>
    1b58:	650d                	lui	a0,0x3
    1b5a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b5e:	00000097          	auipc	ra,0x0
    1b62:	45c080e7          	jalr	1116(ra) # 1fba <exit>
    1b66:	fff48713          	addi	a4,s1,-1
    1b6a:	4401                	li	s0,0
    1b6c:	b7ad                	j	1ad6 <memcmp+0x1a>
    1b6e:	4505                	li	a0,1
    1b70:	f8d762e3          	bltu	a4,a3,1af4 <memcmp+0x38>
    1b74:	557d                	li	a0,-1
    1b76:	bfbd                	j	1af4 <memcmp+0x38>
    1b78:	4501                	li	a0,0
    1b7a:	bfad                	j	1af4 <memcmp+0x38>
    1b7c:	4501                	li	a0,0
    1b7e:	bf9d                	j	1af4 <memcmp+0x38>

0000000000001b80 <memcpy>:
    1b80:	1101                	addi	sp,sp,-32
    1b82:	ec06                	sd	ra,24(sp)
    1b84:	e822                	sd	s0,16(sp)
    1b86:	e426                	sd	s1,8(sp)
    1b88:	e04a                	sd	s2,0(sp)
    1b8a:	84aa                	mv	s1,a0
    1b8c:	842e                	mv	s0,a1
    1b8e:	8932                	mv	s2,a2
    1b90:	c51d                	beqz	a0,1bbe <memcpy+0x3e>
    1b92:	c1ad                	beqz	a1,1bf4 <memcpy+0x74>
    1b94:	fff60693          	addi	a3,a2,-1
    1b98:	ce01                	beqz	a2,1bb0 <memcpy+0x30>
    1b9a:	0685                	addi	a3,a3,1
    1b9c:	96a6                	add	a3,a3,s1
    1b9e:	87a6                	mv	a5,s1
    1ba0:	0405                	addi	s0,s0,1
    1ba2:	0785                	addi	a5,a5,1
    1ba4:	fff44703          	lbu	a4,-1(s0)
    1ba8:	fee78fa3          	sb	a4,-1(a5)
    1bac:	fed79ae3          	bne	a5,a3,1ba0 <memcpy+0x20>
    1bb0:	8526                	mv	a0,s1
    1bb2:	60e2                	ld	ra,24(sp)
    1bb4:	6442                	ld	s0,16(sp)
    1bb6:	64a2                	ld	s1,8(sp)
    1bb8:	6902                	ld	s2,0(sp)
    1bba:	6105                	addi	sp,sp,32
    1bbc:	8082                	ret
    1bbe:	da6d                	beqz	a2,1bb0 <memcpy+0x30>
    1bc0:	04000693          	li	a3,64
    1bc4:	00003637          	lui	a2,0x3
    1bc8:	a0860613          	addi	a2,a2,-1528 # 2a08 <crctab+0x400>
    1bcc:	000035b7          	lui	a1,0x3
    1bd0:	aa858593          	addi	a1,a1,-1368 # 2aa8 <crctab+0x4a0>
    1bd4:	4509                	li	a0,2
    1bd6:	00000097          	auipc	ra,0x0
    1bda:	b00080e7          	jalr	-1280(ra) # 16d6 <fprintf>
    1bde:	650d                	lui	a0,0x3
    1be0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1be4:	00000097          	auipc	ra,0x0
    1be8:	3d6080e7          	jalr	982(ra) # 1fba <exit>
    1bec:	fff90693          	addi	a3,s2,-1
    1bf0:	f44d                	bnez	s0,1b9a <memcpy+0x1a>
    1bf2:	a011                	j	1bf6 <memcpy+0x76>
    1bf4:	de55                	beqz	a2,1bb0 <memcpy+0x30>
    1bf6:	04100693          	li	a3,65
    1bfa:	00003637          	lui	a2,0x3
    1bfe:	a0860613          	addi	a2,a2,-1528 # 2a08 <crctab+0x400>
    1c02:	000035b7          	lui	a1,0x3
    1c06:	af058593          	addi	a1,a1,-1296 # 2af0 <crctab+0x4e8>
    1c0a:	4509                	li	a0,2
    1c0c:	00000097          	auipc	ra,0x0
    1c10:	aca080e7          	jalr	-1334(ra) # 16d6 <fprintf>
    1c14:	650d                	lui	a0,0x3
    1c16:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c1a:	00000097          	auipc	ra,0x0
    1c1e:	3a0080e7          	jalr	928(ra) # 1fba <exit>
    1c22:	fff90693          	addi	a3,s2,-1
    1c26:	4401                	li	s0,0
    1c28:	bf8d                	j	1b9a <memcpy+0x1a>

0000000000001c2a <itoa>:
    1c2a:	1101                	addi	sp,sp,-32
    1c2c:	ec06                	sd	ra,24(sp)
    1c2e:	e822                	sd	s0,16(sp)
    1c30:	e426                	sd	s1,8(sp)
    1c32:	842a                	mv	s0,a0
    1c34:	41f5d71b          	sraiw	a4,a1,0x1f
    1c38:	00e5c7b3          	xor	a5,a1,a4
    1c3c:	9f99                	subw	a5,a5,a4
    1c3e:	84aa                	mv	s1,a0
    1c40:	862a                	mv	a2,a0
    1c42:	4681                	li	a3,0
    1c44:	4529                	li	a0,10
    1c46:	4825                	li	a6,9
    1c48:	88b6                	mv	a7,a3
    1c4a:	2685                	addiw	a3,a3,1
    1c4c:	02a7e73b          	remw	a4,a5,a0
    1c50:	0307071b          	addiw	a4,a4,48
    1c54:	00e60023          	sb	a4,0(a2)
    1c58:	873e                	mv	a4,a5
    1c5a:	02a7c7bb          	divw	a5,a5,a0
    1c5e:	0605                	addi	a2,a2,1
    1c60:	fee844e3          	blt	a6,a4,1c48 <itoa+0x1e>
    1c64:	0405c863          	bltz	a1,1cb4 <itoa+0x8a>
    1c68:	96a2                	add	a3,a3,s0
    1c6a:	00068023          	sb	zero,0(a3)
    1c6e:	8522                	mv	a0,s0
    1c70:	00000097          	auipc	ra,0x0
    1c74:	e14080e7          	jalr	-492(ra) # 1a84 <strlen>
    1c78:	fff5071b          	addiw	a4,a0,-1
    1c7c:	02e05763          	blez	a4,1caa <itoa+0x80>
    1c80:	9722                	add	a4,a4,s0
    1c82:	4681                	li	a3,0
    1c84:	0004c783          	lbu	a5,0(s1)
    1c88:	00074603          	lbu	a2,0(a4)
    1c8c:	00c48023          	sb	a2,0(s1)
    1c90:	00f70023          	sb	a5,0(a4)
    1c94:	0016879b          	addiw	a5,a3,1
    1c98:	0007869b          	sext.w	a3,a5
    1c9c:	0485                	addi	s1,s1,1
    1c9e:	177d                	addi	a4,a4,-1
    1ca0:	fff7c793          	not	a5,a5
    1ca4:	9fa9                	addw	a5,a5,a0
    1ca6:	fcf6cfe3          	blt	a3,a5,1c84 <itoa+0x5a>
    1caa:	60e2                	ld	ra,24(sp)
    1cac:	6442                	ld	s0,16(sp)
    1cae:	64a2                	ld	s1,8(sp)
    1cb0:	6105                	addi	sp,sp,32
    1cb2:	8082                	ret
    1cb4:	96a2                	add	a3,a3,s0
    1cb6:	02d00793          	li	a5,45
    1cba:	00f68023          	sb	a5,0(a3)
    1cbe:	0028869b          	addiw	a3,a7,2
    1cc2:	b75d                	j	1c68 <itoa+0x3e>

0000000000001cc4 <atoi>:
    1cc4:	00054783          	lbu	a5,0(a0)
    1cc8:	02000713          	li	a4,32
    1ccc:	00e79763          	bne	a5,a4,1cda <atoi+0x16>
    1cd0:	0505                	addi	a0,a0,1
    1cd2:	00054783          	lbu	a5,0(a0)
    1cd6:	fee78de3          	beq	a5,a4,1cd0 <atoi+0xc>
    1cda:	02b00713          	li	a4,43
    1cde:	04e78663          	beq	a5,a4,1d2a <atoi+0x66>
    1ce2:	02d00713          	li	a4,45
    1ce6:	4805                	li	a6,1
    1ce8:	04e78463          	beq	a5,a4,1d30 <atoi+0x6c>
    1cec:	00054683          	lbu	a3,0(a0)
    1cf0:	fd06879b          	addiw	a5,a3,-48
    1cf4:	0ff7f793          	andi	a5,a5,255
    1cf8:	4725                	li	a4,9
    1cfa:	02f76e63          	bltu	a4,a5,1d36 <atoi+0x72>
    1cfe:	4601                	li	a2,0
    1d00:	45a5                	li	a1,9
    1d02:	0505                	addi	a0,a0,1
    1d04:	0026179b          	slliw	a5,a2,0x2
    1d08:	9fb1                	addw	a5,a5,a2
    1d0a:	0017979b          	slliw	a5,a5,0x1
    1d0e:	9fb5                	addw	a5,a5,a3
    1d10:	fd07861b          	addiw	a2,a5,-48
    1d14:	00054683          	lbu	a3,0(a0)
    1d18:	fd06871b          	addiw	a4,a3,-48
    1d1c:	0ff77713          	andi	a4,a4,255
    1d20:	fee5f1e3          	bgeu	a1,a4,1d02 <atoi+0x3e>
    1d24:	02c8053b          	mulw	a0,a6,a2
    1d28:	8082                	ret
    1d2a:	0505                	addi	a0,a0,1
    1d2c:	4805                	li	a6,1
    1d2e:	bf7d                	j	1cec <atoi+0x28>
    1d30:	0505                	addi	a0,a0,1
    1d32:	587d                	li	a6,-1
    1d34:	bf65                	j	1cec <atoi+0x28>
    1d36:	4601                	li	a2,0
    1d38:	b7f5                	j	1d24 <atoi+0x60>

0000000000001d3a <check_file_handle>:
    1d3a:	d8010113          	addi	sp,sp,-640
    1d3e:	26113c23          	sd	ra,632(sp)
    1d42:	26813823          	sd	s0,624(sp)
    1d46:	26913423          	sd	s1,616(sp)
    1d4a:	27213023          	sd	s2,608(sp)
    1d4e:	25313c23          	sd	s3,600(sp)
    1d52:	25413823          	sd	s4,592(sp)
    1d56:	25513423          	sd	s5,584(sp)
    1d5a:	25613023          	sd	s6,576(sp)
    1d5e:	23713c23          	sd	s7,568(sp)
    1d62:	23813823          	sd	s8,560(sp)
    1d66:	23913423          	sd	s9,552(sp)
    1d6a:	23a13023          	sd	s10,544(sp)
    1d6e:	21b13c23          	sd	s11,536(sp)
    1d72:	8baa                	mv	s7,a0
    1d74:	8a2e                	mv	s4,a1
    1d76:	8c32                	mv	s8,a2
    1d78:	89b6                	mv	s3,a3
    1d7a:	040c                	addi	a1,sp,512
    1d7c:	00000097          	auipc	ra,0x0
    1d80:	28e080e7          	jalr	654(ra) # 200a <fstat>
    1d84:	20813603          	ld	a2,520(sp)
    1d88:	03361163          	bne	a2,s3,1daa <check_file_handle+0x70>
    1d8c:	06098763          	beqz	s3,1dfa <check_file_handle+0xc0>
    1d90:	4901                	li	s2,0
    1d92:	20000a93          	li	s5,512
    1d96:	00003cb7          	lui	s9,0x3
    1d9a:	00003db7          	lui	s11,0x3
    1d9e:	6b0d                	lui	s6,0x3
    1da0:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1da4:	00003d37          	lui	s10,0x3
    1da8:	aa39                	j	1ec6 <check_file_handle+0x18c>
    1daa:	86ce                	mv	a3,s3
    1dac:	85d2                	mv	a1,s4
    1dae:	00003537          	lui	a0,0x3
    1db2:	b3850513          	addi	a0,a0,-1224 # 2b38 <crctab+0x530>
    1db6:	00000097          	auipc	ra,0x0
    1dba:	942080e7          	jalr	-1726(ra) # 16f8 <printf>
    1dbe:	fc0999e3          	bnez	s3,1d90 <check_file_handle+0x56>
    1dc2:	20813683          	ld	a3,520(sp)
    1dc6:	03368a63          	beq	a3,s3,1dfa <check_file_handle+0xc0>
    1dca:	0a600813          	li	a6,166
    1dce:	000037b7          	lui	a5,0x3
    1dd2:	a0878793          	addi	a5,a5,-1528 # 2a08 <crctab+0x400>
    1dd6:	874e                	mv	a4,s3
    1dd8:	8652                	mv	a2,s4
    1dda:	000035b7          	lui	a1,0x3
    1dde:	c0858593          	addi	a1,a1,-1016 # 2c08 <crctab+0x600>
    1de2:	4509                	li	a0,2
    1de4:	00000097          	auipc	ra,0x0
    1de8:	8f2080e7          	jalr	-1806(ra) # 16d6 <fprintf>
    1dec:	650d                	lui	a0,0x3
    1dee:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1df2:	00000097          	auipc	ra,0x0
    1df6:	1c8080e7          	jalr	456(ra) # 1fba <exit>
    1dfa:	85d2                	mv	a1,s4
    1dfc:	00003537          	lui	a0,0x3
    1e00:	c5050513          	addi	a0,a0,-944 # 2c50 <crctab+0x648>
    1e04:	00000097          	auipc	ra,0x0
    1e08:	8f4080e7          	jalr	-1804(ra) # 16f8 <printf>
    1e0c:	27813083          	ld	ra,632(sp)
    1e10:	27013403          	ld	s0,624(sp)
    1e14:	26813483          	ld	s1,616(sp)
    1e18:	26013903          	ld	s2,608(sp)
    1e1c:	25813983          	ld	s3,600(sp)
    1e20:	25013a03          	ld	s4,592(sp)
    1e24:	24813a83          	ld	s5,584(sp)
    1e28:	24013b03          	ld	s6,576(sp)
    1e2c:	23813b83          	ld	s7,568(sp)
    1e30:	23013c03          	ld	s8,560(sp)
    1e34:	22813c83          	ld	s9,552(sp)
    1e38:	22013d03          	ld	s10,544(sp)
    1e3c:	21813d83          	ld	s11,536(sp)
    1e40:	28010113          	addi	sp,sp,640
    1e44:	8082                	ret
    1e46:	09d00893          	li	a7,157
    1e4a:	a08c8813          	addi	a6,s9,-1528 # 2a08 <crctab+0x400>
    1e4e:	87aa                	mv	a5,a0
    1e50:	8752                	mv	a4,s4
    1e52:	86ca                	mv	a3,s2
    1e54:	8622                	mv	a2,s0
    1e56:	b68d8593          	addi	a1,s11,-1176 # 2b68 <crctab+0x560>
    1e5a:	4509                	li	a0,2
    1e5c:	00000097          	auipc	ra,0x0
    1e60:	87a080e7          	jalr	-1926(ra) # 16d6 <fprintf>
    1e64:	855a                	mv	a0,s6
    1e66:	00000097          	auipc	ra,0x0
    1e6a:	154080e7          	jalr	340(ra) # 1fba <exit>
    1e6e:	a89d                	j	1ee4 <check_file_handle+0x1aa>
    1e70:	00160593          	addi	a1,a2,1
    1e74:	0285f163          	bgeu	a1,s0,1e96 <check_file_handle+0x15c>
    1e78:	00c10733          	add	a4,sp,a2
    1e7c:	00b487b3          	add	a5,s1,a1
    1e80:	00174683          	lbu	a3,1(a4)
    1e84:	0007c783          	lbu	a5,0(a5)
    1e88:	00f68763          	beq	a3,a5,1e96 <check_file_handle+0x15c>
    1e8c:	0585                	addi	a1,a1,1
    1e8e:	0705                	addi	a4,a4,1
    1e90:	feb416e3          	bne	s0,a1,1e7c <check_file_handle+0x142>
    1e94:	85a2                	mv	a1,s0
    1e96:	08100813          	li	a6,129
    1e9a:	a08c8793          	addi	a5,s9,-1528
    1e9e:	8752                	mv	a4,s4
    1ea0:	012606b3          	add	a3,a2,s2
    1ea4:	40c58633          	sub	a2,a1,a2
    1ea8:	bb0d0593          	addi	a1,s10,-1104 # 2bb0 <crctab+0x5a8>
    1eac:	4509                	li	a0,2
    1eae:	00000097          	auipc	ra,0x0
    1eb2:	828080e7          	jalr	-2008(ra) # 16d6 <fprintf>
    1eb6:	855a                	mv	a0,s6
    1eb8:	00000097          	auipc	ra,0x0
    1ebc:	102080e7          	jalr	258(ra) # 1fba <exit>
    1ec0:	9922                	add	s2,s2,s0
    1ec2:	f13970e3          	bgeu	s2,s3,1dc2 <check_file_handle+0x88>
    1ec6:	41298433          	sub	s0,s3,s2
    1eca:	008af363          	bgeu	s5,s0,1ed0 <check_file_handle+0x196>
    1ece:	8456                	mv	s0,s5
    1ed0:	0004061b          	sext.w	a2,s0
    1ed4:	858a                	mv	a1,sp
    1ed6:	855e                	mv	a0,s7
    1ed8:	00000097          	auipc	ra,0x0
    1edc:	10a080e7          	jalr	266(ra) # 1fe2 <read>
    1ee0:	f68513e3          	bne	a0,s0,1e46 <check_file_handle+0x10c>
    1ee4:	012c04b3          	add	s1,s8,s2
    1ee8:	8622                	mv	a2,s0
    1eea:	85a6                	mv	a1,s1
    1eec:	850a                	mv	a0,sp
    1eee:	00000097          	auipc	ra,0x0
    1ef2:	bce080e7          	jalr	-1074(ra) # 1abc <memcmp>
    1ef6:	d569                	beqz	a0,1ec0 <check_file_handle+0x186>
    1ef8:	03298163          	beq	s3,s2,1f1a <check_file_handle+0x1e0>
    1efc:	870a                	mv	a4,sp
    1efe:	4601                	li	a2,0
    1f00:	00c487b3          	add	a5,s1,a2
    1f04:	00074683          	lbu	a3,0(a4)
    1f08:	0007c783          	lbu	a5,0(a5)
    1f0c:	f6f692e3          	bne	a3,a5,1e70 <check_file_handle+0x136>
    1f10:	0605                	addi	a2,a2,1
    1f12:	0705                	addi	a4,a4,1
    1f14:	fe8666e3          	bltu	a2,s0,1f00 <check_file_handle+0x1c6>
    1f18:	bfa1                	j	1e70 <check_file_handle+0x136>
    1f1a:	4601                	li	a2,0
    1f1c:	4585                	li	a1,1
    1f1e:	bfa5                	j	1e96 <check_file_handle+0x15c>

0000000000001f20 <check_file>:
    1f20:	7179                	addi	sp,sp,-48
    1f22:	f406                	sd	ra,40(sp)
    1f24:	f022                	sd	s0,32(sp)
    1f26:	ec26                	sd	s1,24(sp)
    1f28:	e84a                	sd	s2,16(sp)
    1f2a:	e44e                	sd	s3,8(sp)
    1f2c:	84aa                	mv	s1,a0
    1f2e:	892e                	mv	s2,a1
    1f30:	89b2                	mv	s3,a2
    1f32:	4581                	li	a1,0
    1f34:	00000097          	auipc	ra,0x0
    1f38:	0a6080e7          	jalr	166(ra) # 1fda <open>
    1f3c:	842a                	mv	s0,a0
    1f3e:	4789                	li	a5,2
    1f40:	02a7df63          	bge	a5,a0,1f7e <check_file+0x5e>
    1f44:	86ce                	mv	a3,s3
    1f46:	864a                	mv	a2,s2
    1f48:	85a6                	mv	a1,s1
    1f4a:	8522                	mv	a0,s0
    1f4c:	00000097          	auipc	ra,0x0
    1f50:	dee080e7          	jalr	-530(ra) # 1d3a <check_file_handle>
    1f54:	85a6                	mv	a1,s1
    1f56:	00003537          	lui	a0,0x3
    1f5a:	cd850513          	addi	a0,a0,-808 # 2cd8 <crctab+0x6d0>
    1f5e:	fffff097          	auipc	ra,0xfffff
    1f62:	79a080e7          	jalr	1946(ra) # 16f8 <printf>
    1f66:	8522                	mv	a0,s0
    1f68:	00000097          	auipc	ra,0x0
    1f6c:	09a080e7          	jalr	154(ra) # 2002 <close>
    1f70:	70a2                	ld	ra,40(sp)
    1f72:	7402                	ld	s0,32(sp)
    1f74:	64e2                	ld	s1,24(sp)
    1f76:	6942                	ld	s2,16(sp)
    1f78:	69a2                	ld	s3,8(sp)
    1f7a:	6145                	addi	sp,sp,48
    1f7c:	8082                	ret
    1f7e:	0ae00713          	li	a4,174
    1f82:	000036b7          	lui	a3,0x3
    1f86:	a0868693          	addi	a3,a3,-1528 # 2a08 <crctab+0x400>
    1f8a:	8626                	mv	a2,s1
    1f8c:	000035b7          	lui	a1,0x3
    1f90:	c7058593          	addi	a1,a1,-912 # 2c70 <crctab+0x668>
    1f94:	4509                	li	a0,2
    1f96:	fffff097          	auipc	ra,0xfffff
    1f9a:	740080e7          	jalr	1856(ra) # 16d6 <fprintf>
    1f9e:	650d                	lui	a0,0x3
    1fa0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1fa4:	00000097          	auipc	ra,0x0
    1fa8:	016080e7          	jalr	22(ra) # 1fba <exit>
    1fac:	bf61                	j	1f44 <check_file+0x24>

0000000000001fae <r_sp>:
    1fae:	850a                	mv	a0,sp
    1fb0:	8082                	ret

0000000000001fb2 <halt>:
    1fb2:	4885                	li	a7,1
    1fb4:	00000073          	ecall
    1fb8:	8082                	ret

0000000000001fba <exit>:
    1fba:	4889                	li	a7,2
    1fbc:	00000073          	ecall
    1fc0:	8082                	ret

0000000000001fc2 <exec>:
    1fc2:	488d                	li	a7,3
    1fc4:	00000073          	ecall
    1fc8:	8082                	ret

0000000000001fca <wait>:
    1fca:	4891                	li	a7,4
    1fcc:	00000073          	ecall
    1fd0:	8082                	ret

0000000000001fd2 <remove>:
    1fd2:	4895                	li	a7,5
    1fd4:	00000073          	ecall
    1fd8:	8082                	ret

0000000000001fda <open>:
    1fda:	4899                	li	a7,6
    1fdc:	00000073          	ecall
    1fe0:	8082                	ret

0000000000001fe2 <read>:
    1fe2:	489d                	li	a7,7
    1fe4:	00000073          	ecall
    1fe8:	8082                	ret

0000000000001fea <write>:
    1fea:	48a1                	li	a7,8
    1fec:	00000073          	ecall
    1ff0:	8082                	ret

0000000000001ff2 <seek>:
    1ff2:	48a5                	li	a7,9
    1ff4:	00000073          	ecall
    1ff8:	8082                	ret

0000000000001ffa <tell>:
    1ffa:	48a9                	li	a7,10
    1ffc:	00000073          	ecall
    2000:	8082                	ret

0000000000002002 <close>:
    2002:	48ad                	li	a7,11
    2004:	00000073          	ecall
    2008:	8082                	ret

000000000000200a <fstat>:
    200a:	48b1                	li	a7,12
    200c:	00000073          	ecall
    2010:	8082                	ret

0000000000002012 <mmap>:
    2012:	48b5                	li	a7,13
    2014:	00000073          	ecall
    2018:	8082                	ret

000000000000201a <munmap>:
    201a:	48b9                	li	a7,14
    201c:	00000073          	ecall
    2020:	8082                	ret

0000000000002022 <chdir>:
    2022:	48bd                	li	a7,15
    2024:	00000073          	ecall
    2028:	8082                	ret

000000000000202a <mkdir>:
    202a:	48c1                	li	a7,16
    202c:	00000073          	ecall
    2030:	8082                	ret
