
build/user/vm/page-merge-seq:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <init>:
    1000:	712d                	addi	sp,sp,-288
    1002:	ee06                	sd	ra,280(sp)
    1004:	ea22                	sd	s0,272(sp)
    1006:	4619                	li	a2,6
    1008:	000025b7          	lui	a1,0x2
    100c:	f3058593          	addi	a1,a1,-208 # 1f30 <mkdir+0xc>
    1010:	0028                	addi	a0,sp,8
    1012:	00001097          	auipc	ra,0x1
    1016:	842080e7          	jalr	-1982(ra) # 1854 <arc4_init>
    101a:	000fc637          	lui	a2,0xfc
    101e:	00100437          	lui	s0,0x100
    1022:	81040593          	addi	a1,s0,-2032 # ff810 <buf1>
    1026:	0028                	addi	a0,sp,8
    1028:	00001097          	auipc	ra,0x1
    102c:	890080e7          	jalr	-1904(ra) # 18b8 <arc4_crypt>
    1030:	81040713          	addi	a4,s0,-2032
    1034:	000fc5b7          	lui	a1,0xfc
    1038:	95ba                	add	a1,a1,a4
    103a:	00003637          	lui	a2,0x3
    103e:	01060613          	addi	a2,a2,16 # 3010 <histogram>
    1042:	00074783          	lbu	a5,0(a4)
    1046:	078e                	slli	a5,a5,0x3
    1048:	97b2                	add	a5,a5,a2
    104a:	6394                	ld	a3,0(a5)
    104c:	0685                	addi	a3,a3,1
    104e:	e394                	sd	a3,0(a5)
    1050:	0705                	addi	a4,a4,1
    1052:	feb718e3          	bne	a4,a1,1042 <init+0x42>
    1056:	60f2                	ld	ra,280(sp)
    1058:	6452                	ld	s0,272(sp)
    105a:	6115                	addi	sp,sp,288
    105c:	8082                	ret

000000000000105e <main>:
    105e:	7151                	addi	sp,sp,-240
    1060:	f586                	sd	ra,232(sp)
    1062:	f1a2                	sd	s0,224(sp)
    1064:	eda6                	sd	s1,216(sp)
    1066:	e9ca                	sd	s2,208(sp)
    1068:	e5ce                	sd	s3,200(sp)
    106a:	e1d2                	sd	s4,192(sp)
    106c:	fd56                	sd	s5,184(sp)
    106e:	f95a                	sd	s6,176(sp)
    1070:	f55e                	sd	s7,168(sp)
    1072:	f162                	sd	s8,160(sp)
    1074:	ed66                	sd	s9,152(sp)
    1076:	e96a                	sd	s10,144(sp)
    1078:	e56e                	sd	s11,136(sp)
    107a:	00000097          	auipc	ra,0x0
    107e:	f86080e7          	jalr	-122(ra) # 1000 <init>
    1082:	001004b7          	lui	s1,0x100
    1086:	81048913          	addi	s2,s1,-2032 # ff810 <buf1>
    108a:	000fcab7          	lui	s5,0xfc
    108e:	9aca                	add	s5,s5,s2
    1090:	81048493          	addi	s1,s1,-2032
    1094:	00002a37          	lui	s4,0x2
    1098:	00002c37          	lui	s8,0x2
    109c:	00002d37          	lui	s10,0x2
    10a0:	69c1                	lui	s3,0x10
    10a2:	c0098993          	addi	s3,s3,-1024 # fc00 <buf2+0xc3f0>
    10a6:	00002b37          	lui	s6,0x2
    10aa:	fc0b0b13          	addi	s6,s6,-64 # 1fc0 <mkdir+0x9c>
    10ae:	00002db7          	lui	s11,0x2
    10b2:	00002cb7          	lui	s9,0x2
    10b6:	a05d                	j	115c <main+0xfe>
    10b8:	02700693          	li	a3,39
    10bc:	f40c0613          	addi	a2,s8,-192 # 1f40 <mkdir+0x1c>
    10c0:	f60d0593          	addi	a1,s10,-160 # 1f60 <mkdir+0x3c>
    10c4:	4509                	li	a0,2
    10c6:	00000097          	auipc	ra,0x0
    10ca:	50a080e7          	jalr	1290(ra) # 15d0 <fprintf>
    10ce:	650d                	lui	a0,0x3
    10d0:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    10d4:	00001097          	auipc	ra,0x1
    10d8:	de0080e7          	jalr	-544(ra) # 1eb4 <exit>
    10dc:	a861                	j	1174 <main+0x116>
    10de:	02d00693          	li	a3,45
    10e2:	f40c0613          	addi	a2,s8,-192
    10e6:	fd0d8593          	addi	a1,s11,-48 # 1fd0 <mkdir+0xac>
    10ea:	4509                	li	a0,2
    10ec:	00000097          	auipc	ra,0x0
    10f0:	4e4080e7          	jalr	1252(ra) # 15d0 <fprintf>
    10f4:	650d                	lui	a0,0x3
    10f6:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    10fa:	00001097          	auipc	ra,0x1
    10fe:	dba080e7          	jalr	-582(ra) # 1eb4 <exit>
    1102:	a06d                	j	11ac <main+0x14e>
    1104:	02e00693          	li	a3,46
    1108:	f40c0613          	addi	a2,s8,-192
    110c:	020c8593          	addi	a1,s9,32 # 2020 <mkdir+0xfc>
    1110:	4509                	li	a0,2
    1112:	00000097          	auipc	ra,0x0
    1116:	4be080e7          	jalr	1214(ra) # 15d0 <fprintf>
    111a:	650d                	lui	a0,0x3
    111c:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1120:	00001097          	auipc	ra,0x1
    1124:	d94080e7          	jalr	-620(ra) # 1eb4 <exit>
    1128:	4581                	li	a1,0
    112a:	f38a0513          	addi	a0,s4,-200 # 1f38 <mkdir+0x14>
    112e:	00001097          	auipc	ra,0x1
    1132:	da6080e7          	jalr	-602(ra) # 1ed4 <open>
    1136:	842a                	mv	s0,a0
    1138:	4789                	li	a5,2
    113a:	08a7d363          	bge	a5,a0,11c0 <main+0x162>
    113e:	864e                	mv	a2,s3
    1140:	85de                	mv	a1,s7
    1142:	8522                	mv	a0,s0
    1144:	00001097          	auipc	ra,0x1
    1148:	d98080e7          	jalr	-616(ra) # 1edc <read>
    114c:	8522                	mv	a0,s0
    114e:	00001097          	auipc	ra,0x1
    1152:	dae080e7          	jalr	-594(ra) # 1efc <close>
    1156:	94ce                	add	s1,s1,s3
    1158:	09548963          	beq	s1,s5,11ea <main+0x18c>
    115c:	20100593          	li	a1,513
    1160:	f38a0513          	addi	a0,s4,-200
    1164:	00001097          	auipc	ra,0x1
    1168:	d70080e7          	jalr	-656(ra) # 1ed4 <open>
    116c:	842a                	mv	s0,a0
    116e:	4789                	li	a5,2
    1170:	f4a7d4e3          	bge	a5,a0,10b8 <main+0x5a>
    1174:	8ba6                	mv	s7,s1
    1176:	864e                	mv	a2,s3
    1178:	85a6                	mv	a1,s1
    117a:	8522                	mv	a0,s0
    117c:	00001097          	auipc	ra,0x1
    1180:	d68080e7          	jalr	-664(ra) # 1ee4 <write>
    1184:	8522                	mv	a0,s0
    1186:	00001097          	auipc	ra,0x1
    118a:	d76080e7          	jalr	-650(ra) # 1efc <close>
    118e:	e05a                	sd	s6,0(sp)
    1190:	f38a0793          	addi	a5,s4,-200
    1194:	e43e                	sd	a5,8(sp)
    1196:	e802                	sd	zero,16(sp)
    1198:	858a                	mv	a1,sp
    119a:	855a                	mv	a0,s6
    119c:	00001097          	auipc	ra,0x1
    11a0:	d20080e7          	jalr	-736(ra) # 1ebc <exec>
    11a4:	842a                	mv	s0,a0
    11a6:	57fd                	li	a5,-1
    11a8:	f2f50be3          	beq	a0,a5,10de <main+0x80>
    11ac:	8522                	mv	a0,s0
    11ae:	00001097          	auipc	ra,0x1
    11b2:	d16080e7          	jalr	-746(ra) # 1ec4 <wait>
    11b6:	07b00793          	li	a5,123
    11ba:	f6f507e3          	beq	a0,a5,1128 <main+0xca>
    11be:	b799                	j	1104 <main+0xa6>
    11c0:	03100693          	li	a3,49
    11c4:	f40c0613          	addi	a2,s8,-192
    11c8:	000025b7          	lui	a1,0x2
    11cc:	07058593          	addi	a1,a1,112 # 2070 <mkdir+0x14c>
    11d0:	4509                	li	a0,2
    11d2:	00000097          	auipc	ra,0x0
    11d6:	3fe080e7          	jalr	1022(ra) # 15d0 <fprintf>
    11da:	650d                	lui	a0,0x3
    11dc:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    11e0:	00001097          	auipc	ra,0x1
    11e4:	cd4080e7          	jalr	-812(ra) # 1eb4 <exit>
    11e8:	bf99                	j	113e <main+0xe0>
    11ea:	878a                	mv	a5,sp
    11ec:	6741                	lui	a4,0x10
    11ee:	c0070713          	addi	a4,a4,-1024 # fc00 <buf2+0xc3f0>
    11f2:	0127b023          	sd	s2,0(a5)
    11f6:	993a                	add	s2,s2,a4
    11f8:	07a1                	addi	a5,a5,8
    11fa:	ff591ce3          	bne	s2,s5,11f2 <main+0x194>
    11fe:	00004537          	lui	a0,0x4
    1202:	81150513          	addi	a0,a0,-2031 # 3811 <buf2+0x1>
    1206:	44c1                	li	s1,16
    1208:	4e05                	li	t3,1
    120a:	4301                	li	t1,0
    120c:	001008b7          	lui	a7,0x100
    1210:	81088893          	addi	a7,a7,-2032 # ff810 <buf1>
    1214:	6841                	lui	a6,0x10
    1216:	c0080813          	addi	a6,a6,-1024 # fc00 <buf2+0xc3f0>
    121a:	a0e5                	j	1302 <main+0x2a4>
    121c:	0705                	addi	a4,a4,1
    121e:	06a1                	addi	a3,a3,8
    1220:	0a970063          	beq	a4,s1,12c0 <main+0x262>
    1224:	628c                	ld	a1,0(a3)
    1226:	00361793          	slli	a5,a2,0x3
    122a:	0100                	addi	s0,sp,128
    122c:	97a2                	add	a5,a5,s0
    122e:	f807b783          	ld	a5,-128(a5)
    1232:	0005c583          	lbu	a1,0(a1)
    1236:	0007c783          	lbu	a5,0(a5)
    123a:	fef5f1e3          	bgeu	a1,a5,121c <main+0x1be>
    123e:	863a                	mv	a2,a4
    1240:	bff1                	j	121c <main+0x1be>
    1242:	00003437          	lui	s0,0x3
    1246:	01040413          	addi	s0,s0,16 # 3010 <histogram>
    124a:	89a6                	mv	s3,s1
    124c:	00004ab7          	lui	s5,0x4
    1250:	810a8a93          	addi	s5,s5,-2032 # 3810 <buf2>
    1254:	00002c37          	lui	s8,0x2
    1258:	00002bb7          	lui	s7,0x2
    125c:	6b0d                	lui	s6,0x3
    125e:	039b0b13          	addi	s6,s6,57 # 3039 <histogram+0x29>
    1262:	a0b1                	j	12ae <main+0x250>
    1264:	0985                	addi	s3,s3,1
    1266:	000a3783          	ld	a5,0(s4)
    126a:	fff78713          	addi	a4,a5,-1
    126e:	00ea3023          	sd	a4,0(s4)
    1272:	0905                	addi	s2,s2,1
    1274:	c79d                	beqz	a5,12a2 <main+0x244>
    1276:	00094603          	lbu	a2,0(s2)
    127a:	fe9605e3          	beq	a2,s1,1264 <main+0x206>
    127e:	05b00793          	li	a5,91
    1282:	f40c0713          	addi	a4,s8,-192 # 1f40 <mkdir+0x1c>
    1286:	86ce                	mv	a3,s3
    1288:	0b8b8593          	addi	a1,s7,184 # 20b8 <mkdir+0x194>
    128c:	4509                	li	a0,2
    128e:	00000097          	auipc	ra,0x0
    1292:	342080e7          	jalr	834(ra) # 15d0 <fprintf>
    1296:	855a                	mv	a0,s6
    1298:	00001097          	auipc	ra,0x1
    129c:	c1c080e7          	jalr	-996(ra) # 1eb4 <exit>
    12a0:	b7d1                	j	1264 <main+0x206>
    12a2:	0485                	addi	s1,s1,1
    12a4:	0421                	addi	s0,s0,8
    12a6:	10000793          	li	a5,256
    12aa:	06f48f63          	beq	s1,a5,1328 <main+0x2ca>
    12ae:	8a22                	mv	s4,s0
    12b0:	601c                	ld	a5,0(s0)
    12b2:	fff78713          	addi	a4,a5,-1
    12b6:	e018                	sd	a4,0(s0)
    12b8:	01598933          	add	s2,s3,s5
    12bc:	ffcd                	bnez	a5,1276 <main+0x218>
    12be:	b7d5                	j	12a2 <main+0x244>
    12c0:	00361713          	slli	a4,a2,0x3
    12c4:	011c                	addi	a5,sp,128
    12c6:	973e                	add	a4,a4,a5
    12c8:	f8073783          	ld	a5,-128(a4)
    12cc:	0007c683          	lbu	a3,0(a5)
    12d0:	fed50fa3          	sb	a3,-1(a0)
    12d4:	0785                	addi	a5,a5,1
    12d6:	f8f73023          	sd	a5,-128(a4)
    12da:	411787b3          	sub	a5,a5,a7
    12de:	0307e7b3          	rem	a5,a5,a6
    12e2:	ef99                	bnez	a5,1300 <main+0x2a2>
    12e4:	14fd                	addi	s1,s1,-1
    12e6:	00349793          	slli	a5,s1,0x3
    12ea:	0118                	addi	a4,sp,128
    12ec:	97ba                	add	a5,a5,a4
    12ee:	f807b703          	ld	a4,-128(a5)
    12f2:	00361793          	slli	a5,a2,0x3
    12f6:	0114                	addi	a3,sp,128
    12f8:	97b6                	add	a5,a5,a3
    12fa:	f8e7b023          	sd	a4,-128(a5)
    12fe:	d0b1                	beqz	s1,1242 <main+0x1e4>
    1300:	0505                	addi	a0,a0,1
    1302:	0034                	addi	a3,sp,8
    1304:	861a                	mv	a2,t1
    1306:	4705                	li	a4,1
    1308:	f09e6ee3          	bltu	t3,s1,1224 <main+0x1c6>
    130c:	6782                	ld	a5,0(sp)
    130e:	0007c703          	lbu	a4,0(a5)
    1312:	fee50fa3          	sb	a4,-1(a0)
    1316:	0785                	addi	a5,a5,1
    1318:	e03e                	sd	a5,0(sp)
    131a:	411787b3          	sub	a5,a5,a7
    131e:	0307e7b3          	rem	a5,a5,a6
    1322:	fff1                	bnez	a5,12fe <main+0x2a0>
    1324:	861a                	mv	a2,t1
    1326:	bf7d                	j	12e4 <main+0x286>
    1328:	70ae                	ld	ra,232(sp)
    132a:	740e                	ld	s0,224(sp)
    132c:	64ee                	ld	s1,216(sp)
    132e:	694e                	ld	s2,208(sp)
    1330:	69ae                	ld	s3,200(sp)
    1332:	6a0e                	ld	s4,192(sp)
    1334:	7aea                	ld	s5,184(sp)
    1336:	7b4a                	ld	s6,176(sp)
    1338:	7baa                	ld	s7,168(sp)
    133a:	7c0a                	ld	s8,160(sp)
    133c:	6cea                	ld	s9,152(sp)
    133e:	6d4a                	ld	s10,144(sp)
    1340:	6daa                	ld	s11,136(sp)
    1342:	616d                	addi	sp,sp,240
    1344:	8082                	ret

0000000000001346 <putc>:
    1346:	1101                	addi	sp,sp,-32
    1348:	ec06                	sd	ra,24(sp)
    134a:	00b107a3          	sb	a1,15(sp)
    134e:	4605                	li	a2,1
    1350:	00f10593          	addi	a1,sp,15
    1354:	00001097          	auipc	ra,0x1
    1358:	b90080e7          	jalr	-1136(ra) # 1ee4 <write>
    135c:	60e2                	ld	ra,24(sp)
    135e:	6105                	addi	sp,sp,32
    1360:	8082                	ret

0000000000001362 <printint>:
    1362:	7179                	addi	sp,sp,-48
    1364:	f406                	sd	ra,40(sp)
    1366:	f022                	sd	s0,32(sp)
    1368:	ec26                	sd	s1,24(sp)
    136a:	e84a                	sd	s2,16(sp)
    136c:	84aa                	mv	s1,a0
    136e:	c299                	beqz	a3,1374 <printint+0x12>
    1370:	0805c363          	bltz	a1,13f6 <printint+0x94>
    1374:	2581                	sext.w	a1,a1
    1376:	4881                	li	a7,0
    1378:	868a                	mv	a3,sp
    137a:	4701                	li	a4,0
    137c:	2601                	sext.w	a2,a2
    137e:	00002537          	lui	a0,0x2
    1382:	0f050513          	addi	a0,a0,240 # 20f0 <digits>
    1386:	883a                	mv	a6,a4
    1388:	2705                	addiw	a4,a4,1
    138a:	02c5f7bb          	remuw	a5,a1,a2
    138e:	1782                	slli	a5,a5,0x20
    1390:	9381                	srli	a5,a5,0x20
    1392:	97aa                	add	a5,a5,a0
    1394:	0007c783          	lbu	a5,0(a5)
    1398:	00f68023          	sb	a5,0(a3)
    139c:	0005879b          	sext.w	a5,a1
    13a0:	02c5d5bb          	divuw	a1,a1,a2
    13a4:	0685                	addi	a3,a3,1
    13a6:	fec7f0e3          	bgeu	a5,a2,1386 <printint+0x24>
    13aa:	00088a63          	beqz	a7,13be <printint+0x5c>
    13ae:	081c                	addi	a5,sp,16
    13b0:	973e                	add	a4,a4,a5
    13b2:	02d00793          	li	a5,45
    13b6:	fef70823          	sb	a5,-16(a4)
    13ba:	0028071b          	addiw	a4,a6,2
    13be:	02e05663          	blez	a4,13ea <printint+0x88>
    13c2:	00e10433          	add	s0,sp,a4
    13c6:	fff10913          	addi	s2,sp,-1
    13ca:	993a                	add	s2,s2,a4
    13cc:	377d                	addiw	a4,a4,-1
    13ce:	1702                	slli	a4,a4,0x20
    13d0:	9301                	srli	a4,a4,0x20
    13d2:	40e90933          	sub	s2,s2,a4
    13d6:	fff44583          	lbu	a1,-1(s0)
    13da:	8526                	mv	a0,s1
    13dc:	00000097          	auipc	ra,0x0
    13e0:	f6a080e7          	jalr	-150(ra) # 1346 <putc>
    13e4:	147d                	addi	s0,s0,-1
    13e6:	ff2418e3          	bne	s0,s2,13d6 <printint+0x74>
    13ea:	70a2                	ld	ra,40(sp)
    13ec:	7402                	ld	s0,32(sp)
    13ee:	64e2                	ld	s1,24(sp)
    13f0:	6942                	ld	s2,16(sp)
    13f2:	6145                	addi	sp,sp,48
    13f4:	8082                	ret
    13f6:	40b005bb          	negw	a1,a1
    13fa:	4885                	li	a7,1
    13fc:	bfb5                	j	1378 <printint+0x16>

00000000000013fe <vprintf>:
    13fe:	7159                	addi	sp,sp,-112
    1400:	f486                	sd	ra,104(sp)
    1402:	f0a2                	sd	s0,96(sp)
    1404:	eca6                	sd	s1,88(sp)
    1406:	e8ca                	sd	s2,80(sp)
    1408:	e4ce                	sd	s3,72(sp)
    140a:	e0d2                	sd	s4,64(sp)
    140c:	fc56                	sd	s5,56(sp)
    140e:	f85a                	sd	s6,48(sp)
    1410:	f45e                	sd	s7,40(sp)
    1412:	f062                	sd	s8,32(sp)
    1414:	ec66                	sd	s9,24(sp)
    1416:	e86a                	sd	s10,16(sp)
    1418:	e46e                	sd	s11,8(sp)
    141a:	0005c483          	lbu	s1,0(a1)
    141e:	18048a63          	beqz	s1,15b2 <vprintf+0x1b4>
    1422:	8a2a                	mv	s4,a0
    1424:	8ab2                	mv	s5,a2
    1426:	00158413          	addi	s0,a1,1
    142a:	4901                	li	s2,0
    142c:	02500993          	li	s3,37
    1430:	06400b93          	li	s7,100
    1434:	06c00c13          	li	s8,108
    1438:	07800c93          	li	s9,120
    143c:	07000d13          	li	s10,112
    1440:	00002db7          	lui	s11,0x2
    1444:	00002b37          	lui	s6,0x2
    1448:	0f0b0b13          	addi	s6,s6,240 # 20f0 <digits>
    144c:	a839                	j	146a <vprintf+0x6c>
    144e:	85a6                	mv	a1,s1
    1450:	8552                	mv	a0,s4
    1452:	00000097          	auipc	ra,0x0
    1456:	ef4080e7          	jalr	-268(ra) # 1346 <putc>
    145a:	a019                	j	1460 <vprintf+0x62>
    145c:	01390f63          	beq	s2,s3,147a <vprintf+0x7c>
    1460:	0405                	addi	s0,s0,1
    1462:	fff44483          	lbu	s1,-1(s0)
    1466:	14048663          	beqz	s1,15b2 <vprintf+0x1b4>
    146a:	0004879b          	sext.w	a5,s1
    146e:	fe0917e3          	bnez	s2,145c <vprintf+0x5e>
    1472:	fd379ee3          	bne	a5,s3,144e <vprintf+0x50>
    1476:	893e                	mv	s2,a5
    1478:	b7e5                	j	1460 <vprintf+0x62>
    147a:	05778063          	beq	a5,s7,14ba <vprintf+0xbc>
    147e:	05878c63          	beq	a5,s8,14d6 <vprintf+0xd8>
    1482:	07978863          	beq	a5,s9,14f2 <vprintf+0xf4>
    1486:	09a78463          	beq	a5,s10,150e <vprintf+0x110>
    148a:	07300713          	li	a4,115
    148e:	0ce78263          	beq	a5,a4,1552 <vprintf+0x154>
    1492:	06300713          	li	a4,99
    1496:	0ee78763          	beq	a5,a4,1584 <vprintf+0x186>
    149a:	11378163          	beq	a5,s3,159c <vprintf+0x19e>
    149e:	85ce                	mv	a1,s3
    14a0:	8552                	mv	a0,s4
    14a2:	00000097          	auipc	ra,0x0
    14a6:	ea4080e7          	jalr	-348(ra) # 1346 <putc>
    14aa:	85a6                	mv	a1,s1
    14ac:	8552                	mv	a0,s4
    14ae:	00000097          	auipc	ra,0x0
    14b2:	e98080e7          	jalr	-360(ra) # 1346 <putc>
    14b6:	4901                	li	s2,0
    14b8:	b765                	j	1460 <vprintf+0x62>
    14ba:	008a8493          	addi	s1,s5,8
    14be:	4685                	li	a3,1
    14c0:	4629                	li	a2,10
    14c2:	000aa583          	lw	a1,0(s5)
    14c6:	8552                	mv	a0,s4
    14c8:	00000097          	auipc	ra,0x0
    14cc:	e9a080e7          	jalr	-358(ra) # 1362 <printint>
    14d0:	8aa6                	mv	s5,s1
    14d2:	4901                	li	s2,0
    14d4:	b771                	j	1460 <vprintf+0x62>
    14d6:	008a8493          	addi	s1,s5,8
    14da:	4681                	li	a3,0
    14dc:	4629                	li	a2,10
    14de:	000aa583          	lw	a1,0(s5)
    14e2:	8552                	mv	a0,s4
    14e4:	00000097          	auipc	ra,0x0
    14e8:	e7e080e7          	jalr	-386(ra) # 1362 <printint>
    14ec:	8aa6                	mv	s5,s1
    14ee:	4901                	li	s2,0
    14f0:	bf85                	j	1460 <vprintf+0x62>
    14f2:	008a8493          	addi	s1,s5,8
    14f6:	4681                	li	a3,0
    14f8:	4641                	li	a2,16
    14fa:	000aa583          	lw	a1,0(s5)
    14fe:	8552                	mv	a0,s4
    1500:	00000097          	auipc	ra,0x0
    1504:	e62080e7          	jalr	-414(ra) # 1362 <printint>
    1508:	8aa6                	mv	s5,s1
    150a:	4901                	li	s2,0
    150c:	bf91                	j	1460 <vprintf+0x62>
    150e:	008a8913          	addi	s2,s5,8
    1512:	000aba83          	ld	s5,0(s5)
    1516:	03000593          	li	a1,48
    151a:	8552                	mv	a0,s4
    151c:	00000097          	auipc	ra,0x0
    1520:	e2a080e7          	jalr	-470(ra) # 1346 <putc>
    1524:	85e6                	mv	a1,s9
    1526:	8552                	mv	a0,s4
    1528:	00000097          	auipc	ra,0x0
    152c:	e1e080e7          	jalr	-482(ra) # 1346 <putc>
    1530:	44c1                	li	s1,16
    1532:	03cad793          	srli	a5,s5,0x3c
    1536:	97da                	add	a5,a5,s6
    1538:	0007c583          	lbu	a1,0(a5)
    153c:	8552                	mv	a0,s4
    153e:	00000097          	auipc	ra,0x0
    1542:	e08080e7          	jalr	-504(ra) # 1346 <putc>
    1546:	0a92                	slli	s5,s5,0x4
    1548:	34fd                	addiw	s1,s1,-1
    154a:	f4e5                	bnez	s1,1532 <vprintf+0x134>
    154c:	8aca                	mv	s5,s2
    154e:	4901                	li	s2,0
    1550:	bf01                	j	1460 <vprintf+0x62>
    1552:	008a8913          	addi	s2,s5,8
    1556:	000ab483          	ld	s1,0(s5)
    155a:	c085                	beqz	s1,157a <vprintf+0x17c>
    155c:	0004c583          	lbu	a1,0(s1)
    1560:	c5b1                	beqz	a1,15ac <vprintf+0x1ae>
    1562:	8552                	mv	a0,s4
    1564:	00000097          	auipc	ra,0x0
    1568:	de2080e7          	jalr	-542(ra) # 1346 <putc>
    156c:	0485                	addi	s1,s1,1
    156e:	0004c583          	lbu	a1,0(s1)
    1572:	f9e5                	bnez	a1,1562 <vprintf+0x164>
    1574:	8aca                	mv	s5,s2
    1576:	4901                	li	s2,0
    1578:	b5e5                	j	1460 <vprintf+0x62>
    157a:	0e8d8493          	addi	s1,s11,232 # 20e8 <mkdir+0x1c4>
    157e:	02800593          	li	a1,40
    1582:	b7c5                	j	1562 <vprintf+0x164>
    1584:	008a8493          	addi	s1,s5,8
    1588:	000ac583          	lbu	a1,0(s5)
    158c:	8552                	mv	a0,s4
    158e:	00000097          	auipc	ra,0x0
    1592:	db8080e7          	jalr	-584(ra) # 1346 <putc>
    1596:	8aa6                	mv	s5,s1
    1598:	4901                	li	s2,0
    159a:	b5d9                	j	1460 <vprintf+0x62>
    159c:	85ce                	mv	a1,s3
    159e:	8552                	mv	a0,s4
    15a0:	00000097          	auipc	ra,0x0
    15a4:	da6080e7          	jalr	-602(ra) # 1346 <putc>
    15a8:	4901                	li	s2,0
    15aa:	bd5d                	j	1460 <vprintf+0x62>
    15ac:	8aca                	mv	s5,s2
    15ae:	4901                	li	s2,0
    15b0:	bd45                	j	1460 <vprintf+0x62>
    15b2:	70a6                	ld	ra,104(sp)
    15b4:	7406                	ld	s0,96(sp)
    15b6:	64e6                	ld	s1,88(sp)
    15b8:	6946                	ld	s2,80(sp)
    15ba:	69a6                	ld	s3,72(sp)
    15bc:	6a06                	ld	s4,64(sp)
    15be:	7ae2                	ld	s5,56(sp)
    15c0:	7b42                	ld	s6,48(sp)
    15c2:	7ba2                	ld	s7,40(sp)
    15c4:	7c02                	ld	s8,32(sp)
    15c6:	6ce2                	ld	s9,24(sp)
    15c8:	6d42                	ld	s10,16(sp)
    15ca:	6da2                	ld	s11,8(sp)
    15cc:	6165                	addi	sp,sp,112
    15ce:	8082                	ret

00000000000015d0 <fprintf>:
    15d0:	715d                	addi	sp,sp,-80
    15d2:	ec06                	sd	ra,24(sp)
    15d4:	f032                	sd	a2,32(sp)
    15d6:	f436                	sd	a3,40(sp)
    15d8:	f83a                	sd	a4,48(sp)
    15da:	fc3e                	sd	a5,56(sp)
    15dc:	e0c2                	sd	a6,64(sp)
    15de:	e4c6                	sd	a7,72(sp)
    15e0:	1010                	addi	a2,sp,32
    15e2:	e432                	sd	a2,8(sp)
    15e4:	00000097          	auipc	ra,0x0
    15e8:	e1a080e7          	jalr	-486(ra) # 13fe <vprintf>
    15ec:	60e2                	ld	ra,24(sp)
    15ee:	6161                	addi	sp,sp,80
    15f0:	8082                	ret

00000000000015f2 <printf>:
    15f2:	711d                	addi	sp,sp,-96
    15f4:	ec06                	sd	ra,24(sp)
    15f6:	f42e                	sd	a1,40(sp)
    15f8:	f832                	sd	a2,48(sp)
    15fa:	fc36                	sd	a3,56(sp)
    15fc:	e0ba                	sd	a4,64(sp)
    15fe:	e4be                	sd	a5,72(sp)
    1600:	e8c2                	sd	a6,80(sp)
    1602:	ecc6                	sd	a7,88(sp)
    1604:	1030                	addi	a2,sp,40
    1606:	e432                	sd	a2,8(sp)
    1608:	85aa                	mv	a1,a0
    160a:	4505                	li	a0,1
    160c:	00000097          	auipc	ra,0x0
    1610:	df2080e7          	jalr	-526(ra) # 13fe <vprintf>
    1614:	60e2                	ld	ra,24(sp)
    1616:	6125                	addi	sp,sp,96
    1618:	8082                	ret

000000000000161a <cksum>:
    161a:	cdb1                	beqz	a1,1676 <cksum+0x5c>
    161c:	00b50833          	add	a6,a0,a1
    1620:	4781                	li	a5,0
    1622:	00002637          	lui	a2,0x2
    1626:	10860613          	addi	a2,a2,264 # 2108 <crctab>
    162a:	0505                	addi	a0,a0,1
    162c:	0087969b          	slliw	a3,a5,0x8
    1630:	0187d71b          	srliw	a4,a5,0x18
    1634:	fff54783          	lbu	a5,-1(a0)
    1638:	8f3d                	xor	a4,a4,a5
    163a:	1702                	slli	a4,a4,0x20
    163c:	9301                	srli	a4,a4,0x20
    163e:	070a                	slli	a4,a4,0x2
    1640:	9732                	add	a4,a4,a2
    1642:	431c                	lw	a5,0(a4)
    1644:	8fb5                	xor	a5,a5,a3
    1646:	2781                	sext.w	a5,a5
    1648:	fea811e3          	bne	a6,a0,162a <cksum+0x10>
    164c:	00002637          	lui	a2,0x2
    1650:	10860613          	addi	a2,a2,264 # 2108 <crctab>
    1654:	0ff5f693          	andi	a3,a1,255
    1658:	81a1                	srli	a1,a1,0x8
    165a:	0087951b          	slliw	a0,a5,0x8
    165e:	0187d71b          	srliw	a4,a5,0x18
    1662:	8f35                	xor	a4,a4,a3
    1664:	070a                	slli	a4,a4,0x2
    1666:	9732                	add	a4,a4,a2
    1668:	431c                	lw	a5,0(a4)
    166a:	8fa9                	xor	a5,a5,a0
    166c:	2781                	sext.w	a5,a5
    166e:	f1fd                	bnez	a1,1654 <cksum+0x3a>
    1670:	fff7c513          	not	a0,a5
    1674:	8082                	ret
    1676:	4781                	li	a5,0
    1678:	bfe5                	j	1670 <cksum+0x56>

000000000000167a <swap_bytes>:
    167a:	ce19                	beqz	a2,1698 <swap_bytes+0x1e>
    167c:	87aa                	mv	a5,a0
    167e:	962a                	add	a2,a2,a0
    1680:	0007c703          	lbu	a4,0(a5)
    1684:	0005c683          	lbu	a3,0(a1)
    1688:	00d78023          	sb	a3,0(a5)
    168c:	00e58023          	sb	a4,0(a1)
    1690:	0785                	addi	a5,a5,1
    1692:	0585                	addi	a1,a1,1
    1694:	fec796e3          	bne	a5,a2,1680 <swap_bytes+0x6>
    1698:	8082                	ret

000000000000169a <random_init>:
    169a:	7139                	addi	sp,sp,-64
    169c:	fc06                	sd	ra,56(sp)
    169e:	f822                	sd	s0,48(sp)
    16a0:	f426                	sd	s1,40(sp)
    16a2:	f04a                	sd	s2,32(sp)
    16a4:	ec4e                	sd	s3,24(sp)
    16a6:	e852                	sd	s4,16(sp)
    16a8:	c62a                	sw	a0,12(sp)
    16aa:	000037b7          	lui	a5,0x3
    16ae:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    16b2:	eca5                	bnez	s1,172a <random_init+0x90>
    16b4:	001fc737          	lui	a4,0x1fc
    16b8:	81070913          	addi	s2,a4,-2032 # 1fb810 <s>
    16bc:	81070713          	addi	a4,a4,-2032
    16c0:	87a6                	mv	a5,s1
    16c2:	10000693          	li	a3,256
    16c6:	00f70023          	sb	a5,0(a4)
    16ca:	2785                	addiw	a5,a5,1
    16cc:	0705                	addi	a4,a4,1
    16ce:	fed79ce3          	bne	a5,a3,16c6 <random_init+0x2c>
    16d2:	4401                	li	s0,0
    16d4:	001fc9b7          	lui	s3,0x1fc
    16d8:	81098993          	addi	s3,s3,-2032 # 1fb810 <s>
    16dc:	10000a13          	li	s4,256
    16e0:	0034f793          	andi	a5,s1,3
    16e4:	0818                	addi	a4,sp,16
    16e6:	97ba                	add	a5,a5,a4
    16e8:	ffc7c783          	lbu	a5,-4(a5)
    16ec:	00094703          	lbu	a4,0(s2)
    16f0:	9fb9                	addw	a5,a5,a4
    16f2:	9c3d                	addw	s0,s0,a5
    16f4:	0ff47413          	andi	s0,s0,255
    16f8:	4605                	li	a2,1
    16fa:	008985b3          	add	a1,s3,s0
    16fe:	854a                	mv	a0,s2
    1700:	00000097          	auipc	ra,0x0
    1704:	f7a080e7          	jalr	-134(ra) # 167a <swap_bytes>
    1708:	2485                	addiw	s1,s1,1
    170a:	0905                	addi	s2,s2,1
    170c:	fd449ae3          	bne	s1,s4,16e0 <random_init+0x46>
    1710:	000037b7          	lui	a5,0x3
    1714:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1718:	000037b7          	lui	a5,0x3
    171c:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1720:	000037b7          	lui	a5,0x3
    1724:	4705                	li	a4,1
    1726:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    172a:	70e2                	ld	ra,56(sp)
    172c:	7442                	ld	s0,48(sp)
    172e:	74a2                	ld	s1,40(sp)
    1730:	7902                	ld	s2,32(sp)
    1732:	69e2                	ld	s3,24(sp)
    1734:	6a42                	ld	s4,16(sp)
    1736:	6121                	addi	sp,sp,64
    1738:	8082                	ret

000000000000173a <random_bytes>:
    173a:	7139                	addi	sp,sp,-64
    173c:	fc06                	sd	ra,56(sp)
    173e:	f822                	sd	s0,48(sp)
    1740:	f426                	sd	s1,40(sp)
    1742:	f04a                	sd	s2,32(sp)
    1744:	ec4e                	sd	s3,24(sp)
    1746:	e852                	sd	s4,16(sp)
    1748:	e456                	sd	s5,8(sp)
    174a:	e05a                	sd	s6,0(sp)
    174c:	892a                	mv	s2,a0
    174e:	8aae                	mv	s5,a1
    1750:	000037b7          	lui	a5,0x3
    1754:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1758:	c3c1                	beqz	a5,17d8 <random_bytes+0x9e>
    175a:	060a8563          	beqz	s5,17c4 <random_bytes+0x8a>
    175e:	9aca                	add	s5,s5,s2
    1760:	00003a37          	lui	s4,0x3
    1764:	001fc4b7          	lui	s1,0x1fc
    1768:	81048493          	addi	s1,s1,-2032 # 1fb810 <s>
    176c:	000039b7          	lui	s3,0x3
    1770:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1774:	2505                	addiw	a0,a0,1
    1776:	0ff57513          	andi	a0,a0,255
    177a:	00aa02a3          	sb	a0,5(s4)
    177e:	00a48b33          	add	s6,s1,a0
    1782:	000b4403          	lbu	s0,0(s6)
    1786:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    178a:	9c3d                	addw	s0,s0,a5
    178c:	0ff47413          	andi	s0,s0,255
    1790:	00898223          	sb	s0,4(s3)
    1794:	4605                	li	a2,1
    1796:	008485b3          	add	a1,s1,s0
    179a:	855a                	mv	a0,s6
    179c:	00000097          	auipc	ra,0x0
    17a0:	ede080e7          	jalr	-290(ra) # 167a <swap_bytes>
    17a4:	9426                	add	s0,s0,s1
    17a6:	000b4783          	lbu	a5,0(s6)
    17aa:	00044703          	lbu	a4,0(s0)
    17ae:	9fb9                	addw	a5,a5,a4
    17b0:	0ff7f793          	andi	a5,a5,255
    17b4:	97a6                	add	a5,a5,s1
    17b6:	0007c783          	lbu	a5,0(a5)
    17ba:	00f90023          	sb	a5,0(s2)
    17be:	0905                	addi	s2,s2,1
    17c0:	fb2a98e3          	bne	s5,s2,1770 <random_bytes+0x36>
    17c4:	70e2                	ld	ra,56(sp)
    17c6:	7442                	ld	s0,48(sp)
    17c8:	74a2                	ld	s1,40(sp)
    17ca:	7902                	ld	s2,32(sp)
    17cc:	69e2                	ld	s3,24(sp)
    17ce:	6a42                	ld	s4,16(sp)
    17d0:	6aa2                	ld	s5,8(sp)
    17d2:	6b02                	ld	s6,0(sp)
    17d4:	6121                	addi	sp,sp,64
    17d6:	8082                	ret
    17d8:	4501                	li	a0,0
    17da:	00000097          	auipc	ra,0x0
    17de:	ec0080e7          	jalr	-320(ra) # 169a <random_init>
    17e2:	bfa5                	j	175a <random_bytes+0x20>

00000000000017e4 <random_ulong>:
    17e4:	1101                	addi	sp,sp,-32
    17e6:	ec06                	sd	ra,24(sp)
    17e8:	45a1                	li	a1,8
    17ea:	0028                	addi	a0,sp,8
    17ec:	00000097          	auipc	ra,0x0
    17f0:	f4e080e7          	jalr	-178(ra) # 173a <random_bytes>
    17f4:	6522                	ld	a0,8(sp)
    17f6:	60e2                	ld	ra,24(sp)
    17f8:	6105                	addi	sp,sp,32
    17fa:	8082                	ret

00000000000017fc <shuffle>:
    17fc:	c9b9                	beqz	a1,1852 <shuffle+0x56>
    17fe:	7179                	addi	sp,sp,-48
    1800:	f406                	sd	ra,40(sp)
    1802:	f022                	sd	s0,32(sp)
    1804:	ec26                	sd	s1,24(sp)
    1806:	e84a                	sd	s2,16(sp)
    1808:	e44e                	sd	s3,8(sp)
    180a:	e052                	sd	s4,0(sp)
    180c:	8a2a                	mv	s4,a0
    180e:	89ae                	mv	s3,a1
    1810:	84b2                	mv	s1,a2
    1812:	892a                	mv	s2,a0
    1814:	4401                	li	s0,0
    1816:	00000097          	auipc	ra,0x0
    181a:	fce080e7          	jalr	-50(ra) # 17e4 <random_ulong>
    181e:	408985b3          	sub	a1,s3,s0
    1822:	02b575b3          	remu	a1,a0,a1
    1826:	95a2                	add	a1,a1,s0
    1828:	029585b3          	mul	a1,a1,s1
    182c:	8626                	mv	a2,s1
    182e:	95d2                	add	a1,a1,s4
    1830:	854a                	mv	a0,s2
    1832:	00000097          	auipc	ra,0x0
    1836:	e48080e7          	jalr	-440(ra) # 167a <swap_bytes>
    183a:	0405                	addi	s0,s0,1
    183c:	9926                	add	s2,s2,s1
    183e:	fc899ce3          	bne	s3,s0,1816 <shuffle+0x1a>
    1842:	70a2                	ld	ra,40(sp)
    1844:	7402                	ld	s0,32(sp)
    1846:	64e2                	ld	s1,24(sp)
    1848:	6942                	ld	s2,16(sp)
    184a:	69a2                	ld	s3,8(sp)
    184c:	6a02                	ld	s4,0(sp)
    184e:	6145                	addi	sp,sp,48
    1850:	8082                	ret
    1852:	8082                	ret

0000000000001854 <arc4_init>:
    1854:	100500a3          	sb	zero,257(a0)
    1858:	10050023          	sb	zero,256(a0)
    185c:	4781                	li	a5,0
    185e:	10000693          	li	a3,256
    1862:	00f50733          	add	a4,a0,a5
    1866:	00f70023          	sb	a5,0(a4)
    186a:	0785                	addi	a5,a5,1
    186c:	fed79be3          	bne	a5,a3,1862 <arc4_init+0xe>
    1870:	86aa                	mv	a3,a0
    1872:	10050e13          	addi	t3,a0,256
    1876:	4701                	li	a4,0
    1878:	4781                	li	a5,0
    187a:	0006c883          	lbu	a7,0(a3)
    187e:	00f58833          	add	a6,a1,a5
    1882:	00084803          	lbu	a6,0(a6)
    1886:	00e8873b          	addw	a4,a7,a4
    188a:	00e8073b          	addw	a4,a6,a4
    188e:	0ff77713          	andi	a4,a4,255
    1892:	00e50833          	add	a6,a0,a4
    1896:	00084303          	lbu	t1,0(a6)
    189a:	00668023          	sb	t1,0(a3)
    189e:	01180023          	sb	a7,0(a6)
    18a2:	0785                	addi	a5,a5,1
    18a4:	00c7b833          	sltu	a6,a5,a2
    18a8:	41000833          	neg	a6,a6
    18ac:	0107f7b3          	and	a5,a5,a6
    18b0:	0685                	addi	a3,a3,1
    18b2:	fdc694e3          	bne	a3,t3,187a <arc4_init+0x26>
    18b6:	8082                	ret

00000000000018b8 <arc4_crypt>:
    18b8:	10054e03          	lbu	t3,256(a0)
    18bc:	10154803          	lbu	a6,257(a0)
    18c0:	fff60e93          	addi	t4,a2,-1
    18c4:	c225                	beqz	a2,1924 <arc4_crypt+0x6c>
    18c6:	00c588b3          	add	a7,a1,a2
    18ca:	86ae                	mv	a3,a1
    18cc:	001e031b          	addiw	t1,t3,1
    18d0:	40b3033b          	subw	t1,t1,a1
    18d4:	00d3073b          	addw	a4,t1,a3
    18d8:	0ff77713          	andi	a4,a4,255
    18dc:	972a                	add	a4,a4,a0
    18de:	00074603          	lbu	a2,0(a4)
    18e2:	0106083b          	addw	a6,a2,a6
    18e6:	0ff87813          	andi	a6,a6,255
    18ea:	010507b3          	add	a5,a0,a6
    18ee:	0007c583          	lbu	a1,0(a5)
    18f2:	00b70023          	sb	a1,0(a4)
    18f6:	00c78023          	sb	a2,0(a5)
    18fa:	0685                	addi	a3,a3,1
    18fc:	00074783          	lbu	a5,0(a4)
    1900:	9fb1                	addw	a5,a5,a2
    1902:	0ff7f793          	andi	a5,a5,255
    1906:	97aa                	add	a5,a5,a0
    1908:	0007c783          	lbu	a5,0(a5)
    190c:	fff6c703          	lbu	a4,-1(a3)
    1910:	8fb9                	xor	a5,a5,a4
    1912:	fef68fa3          	sb	a5,-1(a3)
    1916:	fb169fe3          	bne	a3,a7,18d4 <arc4_crypt+0x1c>
    191a:	2e85                	addiw	t4,t4,1
    191c:	01ce8e3b          	addw	t3,t4,t3
    1920:	0ffe7e13          	andi	t3,t3,255
    1924:	11c50023          	sb	t3,256(a0)
    1928:	110500a3          	sb	a6,257(a0)
    192c:	8082                	ret

000000000000192e <_main>:
    192e:	1141                	addi	sp,sp,-16
    1930:	e406                	sd	ra,8(sp)
    1932:	fffff097          	auipc	ra,0xfffff
    1936:	72c080e7          	jalr	1836(ra) # 105e <main>
    193a:	4501                	li	a0,0
    193c:	00000097          	auipc	ra,0x0
    1940:	578080e7          	jalr	1400(ra) # 1eb4 <exit>
    1944:	60a2                	ld	ra,8(sp)
    1946:	0141                	addi	sp,sp,16
    1948:	8082                	ret

000000000000194a <strcmp>:
    194a:	00054783          	lbu	a5,0(a0)
    194e:	cb91                	beqz	a5,1962 <strcmp+0x18>
    1950:	0005c703          	lbu	a4,0(a1)
    1954:	00f71763          	bne	a4,a5,1962 <strcmp+0x18>
    1958:	0505                	addi	a0,a0,1
    195a:	0585                	addi	a1,a1,1
    195c:	00054783          	lbu	a5,0(a0)
    1960:	fbe5                	bnez	a5,1950 <strcmp+0x6>
    1962:	0005c503          	lbu	a0,0(a1)
    1966:	40a7853b          	subw	a0,a5,a0
    196a:	8082                	ret

000000000000196c <strcpy>:
    196c:	87aa                	mv	a5,a0
    196e:	0585                	addi	a1,a1,1
    1970:	0785                	addi	a5,a5,1
    1972:	fff5c703          	lbu	a4,-1(a1)
    1976:	fee78fa3          	sb	a4,-1(a5)
    197a:	fb75                	bnez	a4,196e <strcpy+0x2>
    197c:	8082                	ret

000000000000197e <strlen>:
    197e:	00054783          	lbu	a5,0(a0)
    1982:	cf81                	beqz	a5,199a <strlen+0x1c>
    1984:	0505                	addi	a0,a0,1
    1986:	87aa                	mv	a5,a0
    1988:	4685                	li	a3,1
    198a:	9e89                	subw	a3,a3,a0
    198c:	00f6853b          	addw	a0,a3,a5
    1990:	0785                	addi	a5,a5,1
    1992:	fff7c703          	lbu	a4,-1(a5)
    1996:	fb7d                	bnez	a4,198c <strlen+0xe>
    1998:	8082                	ret
    199a:	4501                	li	a0,0
    199c:	8082                	ret

000000000000199e <memset>:
    199e:	ca19                	beqz	a2,19b4 <memset+0x16>
    19a0:	87aa                	mv	a5,a0
    19a2:	1602                	slli	a2,a2,0x20
    19a4:	9201                	srli	a2,a2,0x20
    19a6:	00a60733          	add	a4,a2,a0
    19aa:	00b78023          	sb	a1,0(a5)
    19ae:	0785                	addi	a5,a5,1
    19b0:	fee79de3          	bne	a5,a4,19aa <memset+0xc>
    19b4:	8082                	ret

00000000000019b6 <memcmp>:
    19b6:	1101                	addi	sp,sp,-32
    19b8:	ec06                	sd	ra,24(sp)
    19ba:	e822                	sd	s0,16(sp)
    19bc:	e426                	sd	s1,8(sp)
    19be:	e04a                	sd	s2,0(sp)
    19c0:	892a                	mv	s2,a0
    19c2:	842e                	mv	s0,a1
    19c4:	84b2                	mv	s1,a2
    19c6:	c915                	beqz	a0,19fa <memcmp+0x44>
    19c8:	c5ad                	beqz	a1,1a32 <memcmp+0x7c>
    19ca:	fff60713          	addi	a4,a2,-1
    19ce:	c645                	beqz	a2,1a76 <memcmp+0xc0>
    19d0:	87ca                	mv	a5,s2
    19d2:	00190613          	addi	a2,s2,1
    19d6:	963a                	add	a2,a2,a4
    19d8:	0007c683          	lbu	a3,0(a5)
    19dc:	00044703          	lbu	a4,0(s0)
    19e0:	08e69463          	bne	a3,a4,1a68 <memcmp+0xb2>
    19e4:	0785                	addi	a5,a5,1
    19e6:	0405                	addi	s0,s0,1
    19e8:	fec798e3          	bne	a5,a2,19d8 <memcmp+0x22>
    19ec:	4501                	li	a0,0
    19ee:	60e2                	ld	ra,24(sp)
    19f0:	6442                	ld	s0,16(sp)
    19f2:	64a2                	ld	s1,8(sp)
    19f4:	6902                	ld	s2,0(sp)
    19f6:	6105                	addi	sp,sp,32
    19f8:	8082                	ret
    19fa:	4501                	li	a0,0
    19fc:	da6d                	beqz	a2,19ee <memcmp+0x38>
    19fe:	03200693          	li	a3,50
    1a02:	00002637          	lui	a2,0x2
    1a06:	50860613          	addi	a2,a2,1288 # 2508 <crctab+0x400>
    1a0a:	000025b7          	lui	a1,0x2
    1a0e:	51858593          	addi	a1,a1,1304 # 2518 <crctab+0x410>
    1a12:	4509                	li	a0,2
    1a14:	00000097          	auipc	ra,0x0
    1a18:	bbc080e7          	jalr	-1092(ra) # 15d0 <fprintf>
    1a1c:	650d                	lui	a0,0x3
    1a1e:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1a22:	00000097          	auipc	ra,0x0
    1a26:	492080e7          	jalr	1170(ra) # 1eb4 <exit>
    1a2a:	fff48713          	addi	a4,s1,-1
    1a2e:	f04d                	bnez	s0,19d0 <memcmp+0x1a>
    1a30:	a011                	j	1a34 <memcmp+0x7e>
    1a32:	c221                	beqz	a2,1a72 <memcmp+0xbc>
    1a34:	03300693          	li	a3,51
    1a38:	00002637          	lui	a2,0x2
    1a3c:	50860613          	addi	a2,a2,1288 # 2508 <crctab+0x400>
    1a40:	000025b7          	lui	a1,0x2
    1a44:	56058593          	addi	a1,a1,1376 # 2560 <crctab+0x458>
    1a48:	4509                	li	a0,2
    1a4a:	00000097          	auipc	ra,0x0
    1a4e:	b86080e7          	jalr	-1146(ra) # 15d0 <fprintf>
    1a52:	650d                	lui	a0,0x3
    1a54:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1a58:	00000097          	auipc	ra,0x0
    1a5c:	45c080e7          	jalr	1116(ra) # 1eb4 <exit>
    1a60:	fff48713          	addi	a4,s1,-1
    1a64:	4401                	li	s0,0
    1a66:	b7ad                	j	19d0 <memcmp+0x1a>
    1a68:	4505                	li	a0,1
    1a6a:	f8d762e3          	bltu	a4,a3,19ee <memcmp+0x38>
    1a6e:	557d                	li	a0,-1
    1a70:	bfbd                	j	19ee <memcmp+0x38>
    1a72:	4501                	li	a0,0
    1a74:	bfad                	j	19ee <memcmp+0x38>
    1a76:	4501                	li	a0,0
    1a78:	bf9d                	j	19ee <memcmp+0x38>

0000000000001a7a <memcpy>:
    1a7a:	1101                	addi	sp,sp,-32
    1a7c:	ec06                	sd	ra,24(sp)
    1a7e:	e822                	sd	s0,16(sp)
    1a80:	e426                	sd	s1,8(sp)
    1a82:	e04a                	sd	s2,0(sp)
    1a84:	84aa                	mv	s1,a0
    1a86:	842e                	mv	s0,a1
    1a88:	8932                	mv	s2,a2
    1a8a:	c51d                	beqz	a0,1ab8 <memcpy+0x3e>
    1a8c:	c1ad                	beqz	a1,1aee <memcpy+0x74>
    1a8e:	fff60693          	addi	a3,a2,-1
    1a92:	ce01                	beqz	a2,1aaa <memcpy+0x30>
    1a94:	0685                	addi	a3,a3,1
    1a96:	96a6                	add	a3,a3,s1
    1a98:	87a6                	mv	a5,s1
    1a9a:	0405                	addi	s0,s0,1
    1a9c:	0785                	addi	a5,a5,1
    1a9e:	fff44703          	lbu	a4,-1(s0)
    1aa2:	fee78fa3          	sb	a4,-1(a5)
    1aa6:	fed79ae3          	bne	a5,a3,1a9a <memcpy+0x20>
    1aaa:	8526                	mv	a0,s1
    1aac:	60e2                	ld	ra,24(sp)
    1aae:	6442                	ld	s0,16(sp)
    1ab0:	64a2                	ld	s1,8(sp)
    1ab2:	6902                	ld	s2,0(sp)
    1ab4:	6105                	addi	sp,sp,32
    1ab6:	8082                	ret
    1ab8:	da6d                	beqz	a2,1aaa <memcpy+0x30>
    1aba:	04000693          	li	a3,64
    1abe:	00002637          	lui	a2,0x2
    1ac2:	50860613          	addi	a2,a2,1288 # 2508 <crctab+0x400>
    1ac6:	000025b7          	lui	a1,0x2
    1aca:	5a858593          	addi	a1,a1,1448 # 25a8 <crctab+0x4a0>
    1ace:	4509                	li	a0,2
    1ad0:	00000097          	auipc	ra,0x0
    1ad4:	b00080e7          	jalr	-1280(ra) # 15d0 <fprintf>
    1ad8:	650d                	lui	a0,0x3
    1ada:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1ade:	00000097          	auipc	ra,0x0
    1ae2:	3d6080e7          	jalr	982(ra) # 1eb4 <exit>
    1ae6:	fff90693          	addi	a3,s2,-1
    1aea:	f44d                	bnez	s0,1a94 <memcpy+0x1a>
    1aec:	a011                	j	1af0 <memcpy+0x76>
    1aee:	de55                	beqz	a2,1aaa <memcpy+0x30>
    1af0:	04100693          	li	a3,65
    1af4:	00002637          	lui	a2,0x2
    1af8:	50860613          	addi	a2,a2,1288 # 2508 <crctab+0x400>
    1afc:	000025b7          	lui	a1,0x2
    1b00:	5f058593          	addi	a1,a1,1520 # 25f0 <crctab+0x4e8>
    1b04:	4509                	li	a0,2
    1b06:	00000097          	auipc	ra,0x0
    1b0a:	aca080e7          	jalr	-1334(ra) # 15d0 <fprintf>
    1b0e:	650d                	lui	a0,0x3
    1b10:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1b14:	00000097          	auipc	ra,0x0
    1b18:	3a0080e7          	jalr	928(ra) # 1eb4 <exit>
    1b1c:	fff90693          	addi	a3,s2,-1
    1b20:	4401                	li	s0,0
    1b22:	bf8d                	j	1a94 <memcpy+0x1a>

0000000000001b24 <itoa>:
    1b24:	1101                	addi	sp,sp,-32
    1b26:	ec06                	sd	ra,24(sp)
    1b28:	e822                	sd	s0,16(sp)
    1b2a:	e426                	sd	s1,8(sp)
    1b2c:	842a                	mv	s0,a0
    1b2e:	41f5d71b          	sraiw	a4,a1,0x1f
    1b32:	00e5c7b3          	xor	a5,a1,a4
    1b36:	9f99                	subw	a5,a5,a4
    1b38:	84aa                	mv	s1,a0
    1b3a:	862a                	mv	a2,a0
    1b3c:	4681                	li	a3,0
    1b3e:	4529                	li	a0,10
    1b40:	4825                	li	a6,9
    1b42:	88b6                	mv	a7,a3
    1b44:	2685                	addiw	a3,a3,1
    1b46:	02a7e73b          	remw	a4,a5,a0
    1b4a:	0307071b          	addiw	a4,a4,48
    1b4e:	00e60023          	sb	a4,0(a2)
    1b52:	873e                	mv	a4,a5
    1b54:	02a7c7bb          	divw	a5,a5,a0
    1b58:	0605                	addi	a2,a2,1
    1b5a:	fee844e3          	blt	a6,a4,1b42 <itoa+0x1e>
    1b5e:	0405c863          	bltz	a1,1bae <itoa+0x8a>
    1b62:	96a2                	add	a3,a3,s0
    1b64:	00068023          	sb	zero,0(a3)
    1b68:	8522                	mv	a0,s0
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	e14080e7          	jalr	-492(ra) # 197e <strlen>
    1b72:	fff5071b          	addiw	a4,a0,-1
    1b76:	02e05763          	blez	a4,1ba4 <itoa+0x80>
    1b7a:	9722                	add	a4,a4,s0
    1b7c:	4681                	li	a3,0
    1b7e:	0004c783          	lbu	a5,0(s1)
    1b82:	00074603          	lbu	a2,0(a4)
    1b86:	00c48023          	sb	a2,0(s1)
    1b8a:	00f70023          	sb	a5,0(a4)
    1b8e:	0016879b          	addiw	a5,a3,1
    1b92:	0007869b          	sext.w	a3,a5
    1b96:	0485                	addi	s1,s1,1
    1b98:	177d                	addi	a4,a4,-1
    1b9a:	fff7c793          	not	a5,a5
    1b9e:	9fa9                	addw	a5,a5,a0
    1ba0:	fcf6cfe3          	blt	a3,a5,1b7e <itoa+0x5a>
    1ba4:	60e2                	ld	ra,24(sp)
    1ba6:	6442                	ld	s0,16(sp)
    1ba8:	64a2                	ld	s1,8(sp)
    1baa:	6105                	addi	sp,sp,32
    1bac:	8082                	ret
    1bae:	96a2                	add	a3,a3,s0
    1bb0:	02d00793          	li	a5,45
    1bb4:	00f68023          	sb	a5,0(a3)
    1bb8:	0028869b          	addiw	a3,a7,2
    1bbc:	b75d                	j	1b62 <itoa+0x3e>

0000000000001bbe <atoi>:
    1bbe:	00054783          	lbu	a5,0(a0)
    1bc2:	02000713          	li	a4,32
    1bc6:	00e79763          	bne	a5,a4,1bd4 <atoi+0x16>
    1bca:	0505                	addi	a0,a0,1
    1bcc:	00054783          	lbu	a5,0(a0)
    1bd0:	fee78de3          	beq	a5,a4,1bca <atoi+0xc>
    1bd4:	02b00713          	li	a4,43
    1bd8:	04e78663          	beq	a5,a4,1c24 <atoi+0x66>
    1bdc:	02d00713          	li	a4,45
    1be0:	4805                	li	a6,1
    1be2:	04e78463          	beq	a5,a4,1c2a <atoi+0x6c>
    1be6:	00054683          	lbu	a3,0(a0)
    1bea:	fd06879b          	addiw	a5,a3,-48
    1bee:	0ff7f793          	andi	a5,a5,255
    1bf2:	4725                	li	a4,9
    1bf4:	02f76e63          	bltu	a4,a5,1c30 <atoi+0x72>
    1bf8:	4601                	li	a2,0
    1bfa:	45a5                	li	a1,9
    1bfc:	0505                	addi	a0,a0,1
    1bfe:	0026179b          	slliw	a5,a2,0x2
    1c02:	9fb1                	addw	a5,a5,a2
    1c04:	0017979b          	slliw	a5,a5,0x1
    1c08:	9fb5                	addw	a5,a5,a3
    1c0a:	fd07861b          	addiw	a2,a5,-48
    1c0e:	00054683          	lbu	a3,0(a0)
    1c12:	fd06871b          	addiw	a4,a3,-48
    1c16:	0ff77713          	andi	a4,a4,255
    1c1a:	fee5f1e3          	bgeu	a1,a4,1bfc <atoi+0x3e>
    1c1e:	02c8053b          	mulw	a0,a6,a2
    1c22:	8082                	ret
    1c24:	0505                	addi	a0,a0,1
    1c26:	4805                	li	a6,1
    1c28:	bf7d                	j	1be6 <atoi+0x28>
    1c2a:	0505                	addi	a0,a0,1
    1c2c:	587d                	li	a6,-1
    1c2e:	bf65                	j	1be6 <atoi+0x28>
    1c30:	4601                	li	a2,0
    1c32:	b7f5                	j	1c1e <atoi+0x60>

0000000000001c34 <check_file_handle>:
    1c34:	d8010113          	addi	sp,sp,-640
    1c38:	26113c23          	sd	ra,632(sp)
    1c3c:	26813823          	sd	s0,624(sp)
    1c40:	26913423          	sd	s1,616(sp)
    1c44:	27213023          	sd	s2,608(sp)
    1c48:	25313c23          	sd	s3,600(sp)
    1c4c:	25413823          	sd	s4,592(sp)
    1c50:	25513423          	sd	s5,584(sp)
    1c54:	25613023          	sd	s6,576(sp)
    1c58:	23713c23          	sd	s7,568(sp)
    1c5c:	23813823          	sd	s8,560(sp)
    1c60:	23913423          	sd	s9,552(sp)
    1c64:	23a13023          	sd	s10,544(sp)
    1c68:	21b13c23          	sd	s11,536(sp)
    1c6c:	8baa                	mv	s7,a0
    1c6e:	8a2e                	mv	s4,a1
    1c70:	8c32                	mv	s8,a2
    1c72:	89b6                	mv	s3,a3
    1c74:	040c                	addi	a1,sp,512
    1c76:	00000097          	auipc	ra,0x0
    1c7a:	28e080e7          	jalr	654(ra) # 1f04 <fstat>
    1c7e:	20813603          	ld	a2,520(sp)
    1c82:	03361163          	bne	a2,s3,1ca4 <check_file_handle+0x70>
    1c86:	06098763          	beqz	s3,1cf4 <check_file_handle+0xc0>
    1c8a:	4901                	li	s2,0
    1c8c:	20000a93          	li	s5,512
    1c90:	00002cb7          	lui	s9,0x2
    1c94:	00002db7          	lui	s11,0x2
    1c98:	6b0d                	lui	s6,0x3
    1c9a:	039b0b13          	addi	s6,s6,57 # 3039 <histogram+0x29>
    1c9e:	00002d37          	lui	s10,0x2
    1ca2:	aa39                	j	1dc0 <check_file_handle+0x18c>
    1ca4:	86ce                	mv	a3,s3
    1ca6:	85d2                	mv	a1,s4
    1ca8:	00002537          	lui	a0,0x2
    1cac:	63850513          	addi	a0,a0,1592 # 2638 <crctab+0x530>
    1cb0:	00000097          	auipc	ra,0x0
    1cb4:	942080e7          	jalr	-1726(ra) # 15f2 <printf>
    1cb8:	fc0999e3          	bnez	s3,1c8a <check_file_handle+0x56>
    1cbc:	20813683          	ld	a3,520(sp)
    1cc0:	03368a63          	beq	a3,s3,1cf4 <check_file_handle+0xc0>
    1cc4:	0a600813          	li	a6,166
    1cc8:	000027b7          	lui	a5,0x2
    1ccc:	50878793          	addi	a5,a5,1288 # 2508 <crctab+0x400>
    1cd0:	874e                	mv	a4,s3
    1cd2:	8652                	mv	a2,s4
    1cd4:	000025b7          	lui	a1,0x2
    1cd8:	70858593          	addi	a1,a1,1800 # 2708 <crctab+0x600>
    1cdc:	4509                	li	a0,2
    1cde:	00000097          	auipc	ra,0x0
    1ce2:	8f2080e7          	jalr	-1806(ra) # 15d0 <fprintf>
    1ce6:	650d                	lui	a0,0x3
    1ce8:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1cec:	00000097          	auipc	ra,0x0
    1cf0:	1c8080e7          	jalr	456(ra) # 1eb4 <exit>
    1cf4:	85d2                	mv	a1,s4
    1cf6:	00002537          	lui	a0,0x2
    1cfa:	75050513          	addi	a0,a0,1872 # 2750 <crctab+0x648>
    1cfe:	00000097          	auipc	ra,0x0
    1d02:	8f4080e7          	jalr	-1804(ra) # 15f2 <printf>
    1d06:	27813083          	ld	ra,632(sp)
    1d0a:	27013403          	ld	s0,624(sp)
    1d0e:	26813483          	ld	s1,616(sp)
    1d12:	26013903          	ld	s2,608(sp)
    1d16:	25813983          	ld	s3,600(sp)
    1d1a:	25013a03          	ld	s4,592(sp)
    1d1e:	24813a83          	ld	s5,584(sp)
    1d22:	24013b03          	ld	s6,576(sp)
    1d26:	23813b83          	ld	s7,568(sp)
    1d2a:	23013c03          	ld	s8,560(sp)
    1d2e:	22813c83          	ld	s9,552(sp)
    1d32:	22013d03          	ld	s10,544(sp)
    1d36:	21813d83          	ld	s11,536(sp)
    1d3a:	28010113          	addi	sp,sp,640
    1d3e:	8082                	ret
    1d40:	09d00893          	li	a7,157
    1d44:	508c8813          	addi	a6,s9,1288 # 2508 <crctab+0x400>
    1d48:	87aa                	mv	a5,a0
    1d4a:	8752                	mv	a4,s4
    1d4c:	86ca                	mv	a3,s2
    1d4e:	8622                	mv	a2,s0
    1d50:	668d8593          	addi	a1,s11,1640 # 2668 <crctab+0x560>
    1d54:	4509                	li	a0,2
    1d56:	00000097          	auipc	ra,0x0
    1d5a:	87a080e7          	jalr	-1926(ra) # 15d0 <fprintf>
    1d5e:	855a                	mv	a0,s6
    1d60:	00000097          	auipc	ra,0x0
    1d64:	154080e7          	jalr	340(ra) # 1eb4 <exit>
    1d68:	a89d                	j	1dde <check_file_handle+0x1aa>
    1d6a:	00160593          	addi	a1,a2,1
    1d6e:	0285f163          	bgeu	a1,s0,1d90 <check_file_handle+0x15c>
    1d72:	00c10733          	add	a4,sp,a2
    1d76:	00b487b3          	add	a5,s1,a1
    1d7a:	00174683          	lbu	a3,1(a4)
    1d7e:	0007c783          	lbu	a5,0(a5)
    1d82:	00f68763          	beq	a3,a5,1d90 <check_file_handle+0x15c>
    1d86:	0585                	addi	a1,a1,1
    1d88:	0705                	addi	a4,a4,1
    1d8a:	feb416e3          	bne	s0,a1,1d76 <check_file_handle+0x142>
    1d8e:	85a2                	mv	a1,s0
    1d90:	08100813          	li	a6,129
    1d94:	508c8793          	addi	a5,s9,1288
    1d98:	8752                	mv	a4,s4
    1d9a:	012606b3          	add	a3,a2,s2
    1d9e:	40c58633          	sub	a2,a1,a2
    1da2:	6b0d0593          	addi	a1,s10,1712 # 26b0 <crctab+0x5a8>
    1da6:	4509                	li	a0,2
    1da8:	00000097          	auipc	ra,0x0
    1dac:	828080e7          	jalr	-2008(ra) # 15d0 <fprintf>
    1db0:	855a                	mv	a0,s6
    1db2:	00000097          	auipc	ra,0x0
    1db6:	102080e7          	jalr	258(ra) # 1eb4 <exit>
    1dba:	9922                	add	s2,s2,s0
    1dbc:	f13970e3          	bgeu	s2,s3,1cbc <check_file_handle+0x88>
    1dc0:	41298433          	sub	s0,s3,s2
    1dc4:	008af363          	bgeu	s5,s0,1dca <check_file_handle+0x196>
    1dc8:	8456                	mv	s0,s5
    1dca:	0004061b          	sext.w	a2,s0
    1dce:	858a                	mv	a1,sp
    1dd0:	855e                	mv	a0,s7
    1dd2:	00000097          	auipc	ra,0x0
    1dd6:	10a080e7          	jalr	266(ra) # 1edc <read>
    1dda:	f68513e3          	bne	a0,s0,1d40 <check_file_handle+0x10c>
    1dde:	012c04b3          	add	s1,s8,s2
    1de2:	8622                	mv	a2,s0
    1de4:	85a6                	mv	a1,s1
    1de6:	850a                	mv	a0,sp
    1de8:	00000097          	auipc	ra,0x0
    1dec:	bce080e7          	jalr	-1074(ra) # 19b6 <memcmp>
    1df0:	d569                	beqz	a0,1dba <check_file_handle+0x186>
    1df2:	03298163          	beq	s3,s2,1e14 <check_file_handle+0x1e0>
    1df6:	870a                	mv	a4,sp
    1df8:	4601                	li	a2,0
    1dfa:	00c487b3          	add	a5,s1,a2
    1dfe:	00074683          	lbu	a3,0(a4)
    1e02:	0007c783          	lbu	a5,0(a5)
    1e06:	f6f692e3          	bne	a3,a5,1d6a <check_file_handle+0x136>
    1e0a:	0605                	addi	a2,a2,1
    1e0c:	0705                	addi	a4,a4,1
    1e0e:	fe8666e3          	bltu	a2,s0,1dfa <check_file_handle+0x1c6>
    1e12:	bfa1                	j	1d6a <check_file_handle+0x136>
    1e14:	4601                	li	a2,0
    1e16:	4585                	li	a1,1
    1e18:	bfa5                	j	1d90 <check_file_handle+0x15c>

0000000000001e1a <check_file>:
    1e1a:	7179                	addi	sp,sp,-48
    1e1c:	f406                	sd	ra,40(sp)
    1e1e:	f022                	sd	s0,32(sp)
    1e20:	ec26                	sd	s1,24(sp)
    1e22:	e84a                	sd	s2,16(sp)
    1e24:	e44e                	sd	s3,8(sp)
    1e26:	84aa                	mv	s1,a0
    1e28:	892e                	mv	s2,a1
    1e2a:	89b2                	mv	s3,a2
    1e2c:	4581                	li	a1,0
    1e2e:	00000097          	auipc	ra,0x0
    1e32:	0a6080e7          	jalr	166(ra) # 1ed4 <open>
    1e36:	842a                	mv	s0,a0
    1e38:	4789                	li	a5,2
    1e3a:	02a7df63          	bge	a5,a0,1e78 <check_file+0x5e>
    1e3e:	86ce                	mv	a3,s3
    1e40:	864a                	mv	a2,s2
    1e42:	85a6                	mv	a1,s1
    1e44:	8522                	mv	a0,s0
    1e46:	00000097          	auipc	ra,0x0
    1e4a:	dee080e7          	jalr	-530(ra) # 1c34 <check_file_handle>
    1e4e:	85a6                	mv	a1,s1
    1e50:	00002537          	lui	a0,0x2
    1e54:	7d850513          	addi	a0,a0,2008 # 27d8 <crctab+0x6d0>
    1e58:	fffff097          	auipc	ra,0xfffff
    1e5c:	79a080e7          	jalr	1946(ra) # 15f2 <printf>
    1e60:	8522                	mv	a0,s0
    1e62:	00000097          	auipc	ra,0x0
    1e66:	09a080e7          	jalr	154(ra) # 1efc <close>
    1e6a:	70a2                	ld	ra,40(sp)
    1e6c:	7402                	ld	s0,32(sp)
    1e6e:	64e2                	ld	s1,24(sp)
    1e70:	6942                	ld	s2,16(sp)
    1e72:	69a2                	ld	s3,8(sp)
    1e74:	6145                	addi	sp,sp,48
    1e76:	8082                	ret
    1e78:	0ae00713          	li	a4,174
    1e7c:	000026b7          	lui	a3,0x2
    1e80:	50868693          	addi	a3,a3,1288 # 2508 <crctab+0x400>
    1e84:	8626                	mv	a2,s1
    1e86:	000025b7          	lui	a1,0x2
    1e8a:	77058593          	addi	a1,a1,1904 # 2770 <crctab+0x668>
    1e8e:	4509                	li	a0,2
    1e90:	fffff097          	auipc	ra,0xfffff
    1e94:	740080e7          	jalr	1856(ra) # 15d0 <fprintf>
    1e98:	650d                	lui	a0,0x3
    1e9a:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1e9e:	00000097          	auipc	ra,0x0
    1ea2:	016080e7          	jalr	22(ra) # 1eb4 <exit>
    1ea6:	bf61                	j	1e3e <check_file+0x24>

0000000000001ea8 <r_sp>:
    1ea8:	850a                	mv	a0,sp
    1eaa:	8082                	ret

0000000000001eac <halt>:
    1eac:	4885                	li	a7,1
    1eae:	00000073          	ecall
    1eb2:	8082                	ret

0000000000001eb4 <exit>:
    1eb4:	4889                	li	a7,2
    1eb6:	00000073          	ecall
    1eba:	8082                	ret

0000000000001ebc <exec>:
    1ebc:	488d                	li	a7,3
    1ebe:	00000073          	ecall
    1ec2:	8082                	ret

0000000000001ec4 <wait>:
    1ec4:	4891                	li	a7,4
    1ec6:	00000073          	ecall
    1eca:	8082                	ret

0000000000001ecc <remove>:
    1ecc:	4895                	li	a7,5
    1ece:	00000073          	ecall
    1ed2:	8082                	ret

0000000000001ed4 <open>:
    1ed4:	4899                	li	a7,6
    1ed6:	00000073          	ecall
    1eda:	8082                	ret

0000000000001edc <read>:
    1edc:	489d                	li	a7,7
    1ede:	00000073          	ecall
    1ee2:	8082                	ret

0000000000001ee4 <write>:
    1ee4:	48a1                	li	a7,8
    1ee6:	00000073          	ecall
    1eea:	8082                	ret

0000000000001eec <seek>:
    1eec:	48a5                	li	a7,9
    1eee:	00000073          	ecall
    1ef2:	8082                	ret

0000000000001ef4 <tell>:
    1ef4:	48a9                	li	a7,10
    1ef6:	00000073          	ecall
    1efa:	8082                	ret

0000000000001efc <close>:
    1efc:	48ad                	li	a7,11
    1efe:	00000073          	ecall
    1f02:	8082                	ret

0000000000001f04 <fstat>:
    1f04:	48b1                	li	a7,12
    1f06:	00000073          	ecall
    1f0a:	8082                	ret

0000000000001f0c <mmap>:
    1f0c:	48b5                	li	a7,13
    1f0e:	00000073          	ecall
    1f12:	8082                	ret

0000000000001f14 <munmap>:
    1f14:	48b9                	li	a7,14
    1f16:	00000073          	ecall
    1f1a:	8082                	ret

0000000000001f1c <chdir>:
    1f1c:	48bd                	li	a7,15
    1f1e:	00000073          	ecall
    1f22:	8082                	ret

0000000000001f24 <mkdir>:
    1f24:	48c1                	li	a7,16
    1f26:	00000073          	ecall
    1f2a:	8082                	ret
