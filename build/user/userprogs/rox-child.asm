
build/user/userprogs/rox-child:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7139                	addi	sp,sp,-64
    1002:	fc06                	sd	ra,56(sp)
    1004:	f822                	sd	s0,48(sp)
    1006:	f426                	sd	s1,40(sp)
    1008:	00002537          	lui	a0,0x2
    100c:	db050793          	addi	a5,a0,-592 # 1db0 <mkdir+0xe>
    1010:	e83e                	sd	a5,16(sp)
    1012:	000027b7          	lui	a5,0x2
    1016:	dc078793          	addi	a5,a5,-576 # 1dc0 <mkdir+0x1e>
    101a:	ec3e                	sd	a5,24(sp)
    101c:	4589                	li	a1,2
    101e:	db050513          	addi	a0,a0,-592
    1022:	00001097          	auipc	ra,0x1
    1026:	d30080e7          	jalr	-720(ra) # 1d52 <open>
    102a:	842a                	mv	s0,a0
    102c:	4789                	li	a5,2
    102e:	08a7d763          	bge	a5,a0,10bc <main+0xbc>
    1032:	4641                	li	a2,16
    1034:	858a                	mv	a1,sp
    1036:	8522                	mv	a0,s0
    1038:	00001097          	auipc	ra,0x1
    103c:	d22080e7          	jalr	-734(ra) # 1d5a <read>
    1040:	47c1                	li	a5,16
    1042:	0af51363          	bne	a0,a5,10e8 <main+0xe8>
    1046:	4581                	li	a1,0
    1048:	8522                	mv	a0,s0
    104a:	00001097          	auipc	ra,0x1
    104e:	d20080e7          	jalr	-736(ra) # 1d6a <seek>
    1052:	4641                	li	a2,16
    1054:	858a                	mv	a1,sp
    1056:	8522                	mv	a0,s0
    1058:	00001097          	auipc	ra,0x1
    105c:	d0a080e7          	jalr	-758(ra) # 1d62 <write>
    1060:	47c1                	li	a5,16
    1062:	0af51963          	bne	a0,a5,1114 <main+0x114>
    1066:	080c                	addi	a1,sp,16
    1068:	6542                	ld	a0,16(sp)
    106a:	00001097          	auipc	ra,0x1
    106e:	cd0080e7          	jalr	-816(ra) # 1d3a <exec>
    1072:	84aa                	mv	s1,a0
    1074:	0c054663          	bltz	a0,1140 <main+0x140>
    1078:	8526                	mv	a0,s1
    107a:	00001097          	auipc	ra,0x1
    107e:	cc8080e7          	jalr	-824(ra) # 1d42 <wait>
    1082:	47b1                	li	a5,12
    1084:	0ef51463          	bne	a0,a5,116c <main+0x16c>
    1088:	4581                	li	a1,0
    108a:	8522                	mv	a0,s0
    108c:	00001097          	auipc	ra,0x1
    1090:	cde080e7          	jalr	-802(ra) # 1d6a <seek>
    1094:	4641                	li	a2,16
    1096:	858a                	mv	a1,sp
    1098:	8522                	mv	a0,s0
    109a:	00001097          	auipc	ra,0x1
    109e:	cc8080e7          	jalr	-824(ra) # 1d62 <write>
    10a2:	47c1                	li	a5,16
    10a4:	0ef51a63          	bne	a0,a5,1198 <main+0x198>
    10a8:	8522                	mv	a0,s0
    10aa:	00001097          	auipc	ra,0x1
    10ae:	cd0080e7          	jalr	-816(ra) # 1d7a <close>
    10b2:	70e2                	ld	ra,56(sp)
    10b4:	7442                	ld	s0,48(sp)
    10b6:	74a2                	ld	s1,40(sp)
    10b8:	6121                	addi	sp,sp,64
    10ba:	8082                	ret
    10bc:	46b1                	li	a3,12
    10be:	00002637          	lui	a2,0x2
    10c2:	dc860613          	addi	a2,a2,-568 # 1dc8 <mkdir+0x26>
    10c6:	000025b7          	lui	a1,0x2
    10ca:	de858593          	addi	a1,a1,-536 # 1de8 <mkdir+0x46>
    10ce:	4509                	li	a0,2
    10d0:	00000097          	auipc	ra,0x0
    10d4:	37e080e7          	jalr	894(ra) # 144e <fprintf>
    10d8:	650d                	lui	a0,0x3
    10da:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10de:	00001097          	auipc	ra,0x1
    10e2:	c54080e7          	jalr	-940(ra) # 1d32 <exit>
    10e6:	b7b1                	j	1032 <main+0x32>
    10e8:	46bd                	li	a3,15
    10ea:	00002637          	lui	a2,0x2
    10ee:	dc860613          	addi	a2,a2,-568 # 1dc8 <mkdir+0x26>
    10f2:	000025b7          	lui	a1,0x2
    10f6:	e3858593          	addi	a1,a1,-456 # 1e38 <mkdir+0x96>
    10fa:	4509                	li	a0,2
    10fc:	00000097          	auipc	ra,0x0
    1100:	352080e7          	jalr	850(ra) # 144e <fprintf>
    1104:	650d                	lui	a0,0x3
    1106:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    110a:	00001097          	auipc	ra,0x1
    110e:	c28080e7          	jalr	-984(ra) # 1d32 <exit>
    1112:	bf15                	j	1046 <main+0x46>
    1114:	46d1                	li	a3,20
    1116:	00002637          	lui	a2,0x2
    111a:	dc860613          	addi	a2,a2,-568 # 1dc8 <mkdir+0x26>
    111e:	000025b7          	lui	a1,0x2
    1122:	e3858593          	addi	a1,a1,-456 # 1e38 <mkdir+0x96>
    1126:	4509                	li	a0,2
    1128:	00000097          	auipc	ra,0x0
    112c:	326080e7          	jalr	806(ra) # 144e <fprintf>
    1130:	650d                	lui	a0,0x3
    1132:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1136:	00001097          	auipc	ra,0x1
    113a:	bfc080e7          	jalr	-1028(ra) # 1d32 <exit>
    113e:	b725                	j	1066 <main+0x66>
    1140:	46dd                	li	a3,23
    1142:	00002637          	lui	a2,0x2
    1146:	dc860613          	addi	a2,a2,-568 # 1dc8 <mkdir+0x26>
    114a:	000025b7          	lui	a1,0x2
    114e:	e8058593          	addi	a1,a1,-384 # 1e80 <mkdir+0xde>
    1152:	4509                	li	a0,2
    1154:	00000097          	auipc	ra,0x0
    1158:	2fa080e7          	jalr	762(ra) # 144e <fprintf>
    115c:	650d                	lui	a0,0x3
    115e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1162:	00001097          	auipc	ra,0x1
    1166:	bd0080e7          	jalr	-1072(ra) # 1d32 <exit>
    116a:	b739                	j	1078 <main+0x78>
    116c:	46e1                	li	a3,24
    116e:	00002637          	lui	a2,0x2
    1172:	dc860613          	addi	a2,a2,-568 # 1dc8 <mkdir+0x26>
    1176:	000025b7          	lui	a1,0x2
    117a:	ed058593          	addi	a1,a1,-304 # 1ed0 <mkdir+0x12e>
    117e:	4509                	li	a0,2
    1180:	00000097          	auipc	ra,0x0
    1184:	2ce080e7          	jalr	718(ra) # 144e <fprintf>
    1188:	650d                	lui	a0,0x3
    118a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    118e:	00001097          	auipc	ra,0x1
    1192:	ba4080e7          	jalr	-1116(ra) # 1d32 <exit>
    1196:	bdcd                	j	1088 <main+0x88>
    1198:	46f5                	li	a3,29
    119a:	00002637          	lui	a2,0x2
    119e:	dc860613          	addi	a2,a2,-568 # 1dc8 <mkdir+0x26>
    11a2:	000025b7          	lui	a1,0x2
    11a6:	e3858593          	addi	a1,a1,-456 # 1e38 <mkdir+0x96>
    11aa:	4509                	li	a0,2
    11ac:	00000097          	auipc	ra,0x0
    11b0:	2a2080e7          	jalr	674(ra) # 144e <fprintf>
    11b4:	650d                	lui	a0,0x3
    11b6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    11ba:	00001097          	auipc	ra,0x1
    11be:	b78080e7          	jalr	-1160(ra) # 1d32 <exit>
    11c2:	b5dd                	j	10a8 <main+0xa8>

00000000000011c4 <putc>:
    11c4:	1101                	addi	sp,sp,-32
    11c6:	ec06                	sd	ra,24(sp)
    11c8:	00b107a3          	sb	a1,15(sp)
    11cc:	4605                	li	a2,1
    11ce:	00f10593          	addi	a1,sp,15
    11d2:	00001097          	auipc	ra,0x1
    11d6:	b90080e7          	jalr	-1136(ra) # 1d62 <write>
    11da:	60e2                	ld	ra,24(sp)
    11dc:	6105                	addi	sp,sp,32
    11de:	8082                	ret

00000000000011e0 <printint>:
    11e0:	7179                	addi	sp,sp,-48
    11e2:	f406                	sd	ra,40(sp)
    11e4:	f022                	sd	s0,32(sp)
    11e6:	ec26                	sd	s1,24(sp)
    11e8:	e84a                	sd	s2,16(sp)
    11ea:	84aa                	mv	s1,a0
    11ec:	c299                	beqz	a3,11f2 <printint+0x12>
    11ee:	0805c363          	bltz	a1,1274 <printint+0x94>
    11f2:	2581                	sext.w	a1,a1
    11f4:	4881                	li	a7,0
    11f6:	868a                	mv	a3,sp
    11f8:	4701                	li	a4,0
    11fa:	2601                	sext.w	a2,a2
    11fc:	00002537          	lui	a0,0x2
    1200:	f1850513          	addi	a0,a0,-232 # 1f18 <digits>
    1204:	883a                	mv	a6,a4
    1206:	2705                	addiw	a4,a4,1
    1208:	02c5f7bb          	remuw	a5,a1,a2
    120c:	1782                	slli	a5,a5,0x20
    120e:	9381                	srli	a5,a5,0x20
    1210:	97aa                	add	a5,a5,a0
    1212:	0007c783          	lbu	a5,0(a5)
    1216:	00f68023          	sb	a5,0(a3)
    121a:	0005879b          	sext.w	a5,a1
    121e:	02c5d5bb          	divuw	a1,a1,a2
    1222:	0685                	addi	a3,a3,1
    1224:	fec7f0e3          	bgeu	a5,a2,1204 <printint+0x24>
    1228:	00088a63          	beqz	a7,123c <printint+0x5c>
    122c:	081c                	addi	a5,sp,16
    122e:	973e                	add	a4,a4,a5
    1230:	02d00793          	li	a5,45
    1234:	fef70823          	sb	a5,-16(a4)
    1238:	0028071b          	addiw	a4,a6,2
    123c:	02e05663          	blez	a4,1268 <printint+0x88>
    1240:	00e10433          	add	s0,sp,a4
    1244:	fff10913          	addi	s2,sp,-1
    1248:	993a                	add	s2,s2,a4
    124a:	377d                	addiw	a4,a4,-1
    124c:	1702                	slli	a4,a4,0x20
    124e:	9301                	srli	a4,a4,0x20
    1250:	40e90933          	sub	s2,s2,a4
    1254:	fff44583          	lbu	a1,-1(s0)
    1258:	8526                	mv	a0,s1
    125a:	00000097          	auipc	ra,0x0
    125e:	f6a080e7          	jalr	-150(ra) # 11c4 <putc>
    1262:	147d                	addi	s0,s0,-1
    1264:	ff2418e3          	bne	s0,s2,1254 <printint+0x74>
    1268:	70a2                	ld	ra,40(sp)
    126a:	7402                	ld	s0,32(sp)
    126c:	64e2                	ld	s1,24(sp)
    126e:	6942                	ld	s2,16(sp)
    1270:	6145                	addi	sp,sp,48
    1272:	8082                	ret
    1274:	40b005bb          	negw	a1,a1
    1278:	4885                	li	a7,1
    127a:	bfb5                	j	11f6 <printint+0x16>

000000000000127c <vprintf>:
    127c:	7159                	addi	sp,sp,-112
    127e:	f486                	sd	ra,104(sp)
    1280:	f0a2                	sd	s0,96(sp)
    1282:	eca6                	sd	s1,88(sp)
    1284:	e8ca                	sd	s2,80(sp)
    1286:	e4ce                	sd	s3,72(sp)
    1288:	e0d2                	sd	s4,64(sp)
    128a:	fc56                	sd	s5,56(sp)
    128c:	f85a                	sd	s6,48(sp)
    128e:	f45e                	sd	s7,40(sp)
    1290:	f062                	sd	s8,32(sp)
    1292:	ec66                	sd	s9,24(sp)
    1294:	e86a                	sd	s10,16(sp)
    1296:	e46e                	sd	s11,8(sp)
    1298:	0005c483          	lbu	s1,0(a1)
    129c:	18048a63          	beqz	s1,1430 <vprintf+0x1b4>
    12a0:	8a2a                	mv	s4,a0
    12a2:	8ab2                	mv	s5,a2
    12a4:	00158413          	addi	s0,a1,1
    12a8:	4901                	li	s2,0
    12aa:	02500993          	li	s3,37
    12ae:	06400b93          	li	s7,100
    12b2:	06c00c13          	li	s8,108
    12b6:	07800c93          	li	s9,120
    12ba:	07000d13          	li	s10,112
    12be:	00002db7          	lui	s11,0x2
    12c2:	00002b37          	lui	s6,0x2
    12c6:	f18b0b13          	addi	s6,s6,-232 # 1f18 <digits>
    12ca:	a839                	j	12e8 <vprintf+0x6c>
    12cc:	85a6                	mv	a1,s1
    12ce:	8552                	mv	a0,s4
    12d0:	00000097          	auipc	ra,0x0
    12d4:	ef4080e7          	jalr	-268(ra) # 11c4 <putc>
    12d8:	a019                	j	12de <vprintf+0x62>
    12da:	01390f63          	beq	s2,s3,12f8 <vprintf+0x7c>
    12de:	0405                	addi	s0,s0,1
    12e0:	fff44483          	lbu	s1,-1(s0)
    12e4:	14048663          	beqz	s1,1430 <vprintf+0x1b4>
    12e8:	0004879b          	sext.w	a5,s1
    12ec:	fe0917e3          	bnez	s2,12da <vprintf+0x5e>
    12f0:	fd379ee3          	bne	a5,s3,12cc <vprintf+0x50>
    12f4:	893e                	mv	s2,a5
    12f6:	b7e5                	j	12de <vprintf+0x62>
    12f8:	05778063          	beq	a5,s7,1338 <vprintf+0xbc>
    12fc:	05878c63          	beq	a5,s8,1354 <vprintf+0xd8>
    1300:	07978863          	beq	a5,s9,1370 <vprintf+0xf4>
    1304:	09a78463          	beq	a5,s10,138c <vprintf+0x110>
    1308:	07300713          	li	a4,115
    130c:	0ce78263          	beq	a5,a4,13d0 <vprintf+0x154>
    1310:	06300713          	li	a4,99
    1314:	0ee78763          	beq	a5,a4,1402 <vprintf+0x186>
    1318:	11378163          	beq	a5,s3,141a <vprintf+0x19e>
    131c:	85ce                	mv	a1,s3
    131e:	8552                	mv	a0,s4
    1320:	00000097          	auipc	ra,0x0
    1324:	ea4080e7          	jalr	-348(ra) # 11c4 <putc>
    1328:	85a6                	mv	a1,s1
    132a:	8552                	mv	a0,s4
    132c:	00000097          	auipc	ra,0x0
    1330:	e98080e7          	jalr	-360(ra) # 11c4 <putc>
    1334:	4901                	li	s2,0
    1336:	b765                	j	12de <vprintf+0x62>
    1338:	008a8493          	addi	s1,s5,8
    133c:	4685                	li	a3,1
    133e:	4629                	li	a2,10
    1340:	000aa583          	lw	a1,0(s5)
    1344:	8552                	mv	a0,s4
    1346:	00000097          	auipc	ra,0x0
    134a:	e9a080e7          	jalr	-358(ra) # 11e0 <printint>
    134e:	8aa6                	mv	s5,s1
    1350:	4901                	li	s2,0
    1352:	b771                	j	12de <vprintf+0x62>
    1354:	008a8493          	addi	s1,s5,8
    1358:	4681                	li	a3,0
    135a:	4629                	li	a2,10
    135c:	000aa583          	lw	a1,0(s5)
    1360:	8552                	mv	a0,s4
    1362:	00000097          	auipc	ra,0x0
    1366:	e7e080e7          	jalr	-386(ra) # 11e0 <printint>
    136a:	8aa6                	mv	s5,s1
    136c:	4901                	li	s2,0
    136e:	bf85                	j	12de <vprintf+0x62>
    1370:	008a8493          	addi	s1,s5,8
    1374:	4681                	li	a3,0
    1376:	4641                	li	a2,16
    1378:	000aa583          	lw	a1,0(s5)
    137c:	8552                	mv	a0,s4
    137e:	00000097          	auipc	ra,0x0
    1382:	e62080e7          	jalr	-414(ra) # 11e0 <printint>
    1386:	8aa6                	mv	s5,s1
    1388:	4901                	li	s2,0
    138a:	bf91                	j	12de <vprintf+0x62>
    138c:	008a8913          	addi	s2,s5,8
    1390:	000aba83          	ld	s5,0(s5)
    1394:	03000593          	li	a1,48
    1398:	8552                	mv	a0,s4
    139a:	00000097          	auipc	ra,0x0
    139e:	e2a080e7          	jalr	-470(ra) # 11c4 <putc>
    13a2:	85e6                	mv	a1,s9
    13a4:	8552                	mv	a0,s4
    13a6:	00000097          	auipc	ra,0x0
    13aa:	e1e080e7          	jalr	-482(ra) # 11c4 <putc>
    13ae:	44c1                	li	s1,16
    13b0:	03cad793          	srli	a5,s5,0x3c
    13b4:	97da                	add	a5,a5,s6
    13b6:	0007c583          	lbu	a1,0(a5)
    13ba:	8552                	mv	a0,s4
    13bc:	00000097          	auipc	ra,0x0
    13c0:	e08080e7          	jalr	-504(ra) # 11c4 <putc>
    13c4:	0a92                	slli	s5,s5,0x4
    13c6:	34fd                	addiw	s1,s1,-1
    13c8:	f4e5                	bnez	s1,13b0 <vprintf+0x134>
    13ca:	8aca                	mv	s5,s2
    13cc:	4901                	li	s2,0
    13ce:	bf01                	j	12de <vprintf+0x62>
    13d0:	008a8913          	addi	s2,s5,8
    13d4:	000ab483          	ld	s1,0(s5)
    13d8:	c085                	beqz	s1,13f8 <vprintf+0x17c>
    13da:	0004c583          	lbu	a1,0(s1)
    13de:	c5b1                	beqz	a1,142a <vprintf+0x1ae>
    13e0:	8552                	mv	a0,s4
    13e2:	00000097          	auipc	ra,0x0
    13e6:	de2080e7          	jalr	-542(ra) # 11c4 <putc>
    13ea:	0485                	addi	s1,s1,1
    13ec:	0004c583          	lbu	a1,0(s1)
    13f0:	f9e5                	bnez	a1,13e0 <vprintf+0x164>
    13f2:	8aca                	mv	s5,s2
    13f4:	4901                	li	s2,0
    13f6:	b5e5                	j	12de <vprintf+0x62>
    13f8:	f10d8493          	addi	s1,s11,-240 # 1f10 <mkdir+0x16e>
    13fc:	02800593          	li	a1,40
    1400:	b7c5                	j	13e0 <vprintf+0x164>
    1402:	008a8493          	addi	s1,s5,8
    1406:	000ac583          	lbu	a1,0(s5)
    140a:	8552                	mv	a0,s4
    140c:	00000097          	auipc	ra,0x0
    1410:	db8080e7          	jalr	-584(ra) # 11c4 <putc>
    1414:	8aa6                	mv	s5,s1
    1416:	4901                	li	s2,0
    1418:	b5d9                	j	12de <vprintf+0x62>
    141a:	85ce                	mv	a1,s3
    141c:	8552                	mv	a0,s4
    141e:	00000097          	auipc	ra,0x0
    1422:	da6080e7          	jalr	-602(ra) # 11c4 <putc>
    1426:	4901                	li	s2,0
    1428:	bd5d                	j	12de <vprintf+0x62>
    142a:	8aca                	mv	s5,s2
    142c:	4901                	li	s2,0
    142e:	bd45                	j	12de <vprintf+0x62>
    1430:	70a6                	ld	ra,104(sp)
    1432:	7406                	ld	s0,96(sp)
    1434:	64e6                	ld	s1,88(sp)
    1436:	6946                	ld	s2,80(sp)
    1438:	69a6                	ld	s3,72(sp)
    143a:	6a06                	ld	s4,64(sp)
    143c:	7ae2                	ld	s5,56(sp)
    143e:	7b42                	ld	s6,48(sp)
    1440:	7ba2                	ld	s7,40(sp)
    1442:	7c02                	ld	s8,32(sp)
    1444:	6ce2                	ld	s9,24(sp)
    1446:	6d42                	ld	s10,16(sp)
    1448:	6da2                	ld	s11,8(sp)
    144a:	6165                	addi	sp,sp,112
    144c:	8082                	ret

000000000000144e <fprintf>:
    144e:	715d                	addi	sp,sp,-80
    1450:	ec06                	sd	ra,24(sp)
    1452:	f032                	sd	a2,32(sp)
    1454:	f436                	sd	a3,40(sp)
    1456:	f83a                	sd	a4,48(sp)
    1458:	fc3e                	sd	a5,56(sp)
    145a:	e0c2                	sd	a6,64(sp)
    145c:	e4c6                	sd	a7,72(sp)
    145e:	1010                	addi	a2,sp,32
    1460:	e432                	sd	a2,8(sp)
    1462:	00000097          	auipc	ra,0x0
    1466:	e1a080e7          	jalr	-486(ra) # 127c <vprintf>
    146a:	60e2                	ld	ra,24(sp)
    146c:	6161                	addi	sp,sp,80
    146e:	8082                	ret

0000000000001470 <printf>:
    1470:	711d                	addi	sp,sp,-96
    1472:	ec06                	sd	ra,24(sp)
    1474:	f42e                	sd	a1,40(sp)
    1476:	f832                	sd	a2,48(sp)
    1478:	fc36                	sd	a3,56(sp)
    147a:	e0ba                	sd	a4,64(sp)
    147c:	e4be                	sd	a5,72(sp)
    147e:	e8c2                	sd	a6,80(sp)
    1480:	ecc6                	sd	a7,88(sp)
    1482:	1030                	addi	a2,sp,40
    1484:	e432                	sd	a2,8(sp)
    1486:	85aa                	mv	a1,a0
    1488:	4505                	li	a0,1
    148a:	00000097          	auipc	ra,0x0
    148e:	df2080e7          	jalr	-526(ra) # 127c <vprintf>
    1492:	60e2                	ld	ra,24(sp)
    1494:	6125                	addi	sp,sp,96
    1496:	8082                	ret

0000000000001498 <cksum>:
    1498:	cdb1                	beqz	a1,14f4 <cksum+0x5c>
    149a:	00b50833          	add	a6,a0,a1
    149e:	4781                	li	a5,0
    14a0:	00002637          	lui	a2,0x2
    14a4:	f3060613          	addi	a2,a2,-208 # 1f30 <crctab>
    14a8:	0505                	addi	a0,a0,1
    14aa:	0087969b          	slliw	a3,a5,0x8
    14ae:	0187d71b          	srliw	a4,a5,0x18
    14b2:	fff54783          	lbu	a5,-1(a0)
    14b6:	8f3d                	xor	a4,a4,a5
    14b8:	1702                	slli	a4,a4,0x20
    14ba:	9301                	srli	a4,a4,0x20
    14bc:	070a                	slli	a4,a4,0x2
    14be:	9732                	add	a4,a4,a2
    14c0:	431c                	lw	a5,0(a4)
    14c2:	8fb5                	xor	a5,a5,a3
    14c4:	2781                	sext.w	a5,a5
    14c6:	fea811e3          	bne	a6,a0,14a8 <cksum+0x10>
    14ca:	00002637          	lui	a2,0x2
    14ce:	f3060613          	addi	a2,a2,-208 # 1f30 <crctab>
    14d2:	0ff5f693          	andi	a3,a1,255
    14d6:	81a1                	srli	a1,a1,0x8
    14d8:	0087951b          	slliw	a0,a5,0x8
    14dc:	0187d71b          	srliw	a4,a5,0x18
    14e0:	8f35                	xor	a4,a4,a3
    14e2:	070a                	slli	a4,a4,0x2
    14e4:	9732                	add	a4,a4,a2
    14e6:	431c                	lw	a5,0(a4)
    14e8:	8fa9                	xor	a5,a5,a0
    14ea:	2781                	sext.w	a5,a5
    14ec:	f1fd                	bnez	a1,14d2 <cksum+0x3a>
    14ee:	fff7c513          	not	a0,a5
    14f2:	8082                	ret
    14f4:	4781                	li	a5,0
    14f6:	bfe5                	j	14ee <cksum+0x56>

00000000000014f8 <swap_bytes>:
    14f8:	ce19                	beqz	a2,1516 <swap_bytes+0x1e>
    14fa:	87aa                	mv	a5,a0
    14fc:	962a                	add	a2,a2,a0
    14fe:	0007c703          	lbu	a4,0(a5)
    1502:	0005c683          	lbu	a3,0(a1)
    1506:	00d78023          	sb	a3,0(a5)
    150a:	00e58023          	sb	a4,0(a1)
    150e:	0785                	addi	a5,a5,1
    1510:	0585                	addi	a1,a1,1
    1512:	fec796e3          	bne	a5,a2,14fe <swap_bytes+0x6>
    1516:	8082                	ret

0000000000001518 <random_init>:
    1518:	7139                	addi	sp,sp,-64
    151a:	fc06                	sd	ra,56(sp)
    151c:	f822                	sd	s0,48(sp)
    151e:	f426                	sd	s1,40(sp)
    1520:	f04a                	sd	s2,32(sp)
    1522:	ec4e                	sd	s3,24(sp)
    1524:	e852                	sd	s4,16(sp)
    1526:	c62a                	sw	a0,12(sp)
    1528:	000037b7          	lui	a5,0x3
    152c:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1530:	eca5                	bnez	s1,15a8 <random_init+0x90>
    1532:	00003737          	lui	a4,0x3
    1536:	01070913          	addi	s2,a4,16 # 3010 <s>
    153a:	01070713          	addi	a4,a4,16
    153e:	87a6                	mv	a5,s1
    1540:	10000693          	li	a3,256
    1544:	00f70023          	sb	a5,0(a4)
    1548:	2785                	addiw	a5,a5,1
    154a:	0705                	addi	a4,a4,1
    154c:	fed79ce3          	bne	a5,a3,1544 <random_init+0x2c>
    1550:	4401                	li	s0,0
    1552:	000039b7          	lui	s3,0x3
    1556:	01098993          	addi	s3,s3,16 # 3010 <s>
    155a:	10000a13          	li	s4,256
    155e:	0034f793          	andi	a5,s1,3
    1562:	0818                	addi	a4,sp,16
    1564:	97ba                	add	a5,a5,a4
    1566:	ffc7c783          	lbu	a5,-4(a5)
    156a:	00094703          	lbu	a4,0(s2)
    156e:	9fb9                	addw	a5,a5,a4
    1570:	9c3d                	addw	s0,s0,a5
    1572:	0ff47413          	andi	s0,s0,255
    1576:	4605                	li	a2,1
    1578:	008985b3          	add	a1,s3,s0
    157c:	854a                	mv	a0,s2
    157e:	00000097          	auipc	ra,0x0
    1582:	f7a080e7          	jalr	-134(ra) # 14f8 <swap_bytes>
    1586:	2485                	addiw	s1,s1,1
    1588:	0905                	addi	s2,s2,1
    158a:	fd449ae3          	bne	s1,s4,155e <random_init+0x46>
    158e:	000037b7          	lui	a5,0x3
    1592:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1596:	000037b7          	lui	a5,0x3
    159a:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    159e:	000037b7          	lui	a5,0x3
    15a2:	4705                	li	a4,1
    15a4:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    15a8:	70e2                	ld	ra,56(sp)
    15aa:	7442                	ld	s0,48(sp)
    15ac:	74a2                	ld	s1,40(sp)
    15ae:	7902                	ld	s2,32(sp)
    15b0:	69e2                	ld	s3,24(sp)
    15b2:	6a42                	ld	s4,16(sp)
    15b4:	6121                	addi	sp,sp,64
    15b6:	8082                	ret

00000000000015b8 <random_bytes>:
    15b8:	7139                	addi	sp,sp,-64
    15ba:	fc06                	sd	ra,56(sp)
    15bc:	f822                	sd	s0,48(sp)
    15be:	f426                	sd	s1,40(sp)
    15c0:	f04a                	sd	s2,32(sp)
    15c2:	ec4e                	sd	s3,24(sp)
    15c4:	e852                	sd	s4,16(sp)
    15c6:	e456                	sd	s5,8(sp)
    15c8:	e05a                	sd	s6,0(sp)
    15ca:	892a                	mv	s2,a0
    15cc:	8aae                	mv	s5,a1
    15ce:	000037b7          	lui	a5,0x3
    15d2:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    15d6:	c3c1                	beqz	a5,1656 <random_bytes+0x9e>
    15d8:	060a8563          	beqz	s5,1642 <random_bytes+0x8a>
    15dc:	9aca                	add	s5,s5,s2
    15de:	00003a37          	lui	s4,0x3
    15e2:	000034b7          	lui	s1,0x3
    15e6:	01048493          	addi	s1,s1,16 # 3010 <s>
    15ea:	000039b7          	lui	s3,0x3
    15ee:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    15f2:	2505                	addiw	a0,a0,1
    15f4:	0ff57513          	andi	a0,a0,255
    15f8:	00aa02a3          	sb	a0,5(s4)
    15fc:	00a48b33          	add	s6,s1,a0
    1600:	000b4403          	lbu	s0,0(s6)
    1604:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1608:	9c3d                	addw	s0,s0,a5
    160a:	0ff47413          	andi	s0,s0,255
    160e:	00898223          	sb	s0,4(s3)
    1612:	4605                	li	a2,1
    1614:	008485b3          	add	a1,s1,s0
    1618:	855a                	mv	a0,s6
    161a:	00000097          	auipc	ra,0x0
    161e:	ede080e7          	jalr	-290(ra) # 14f8 <swap_bytes>
    1622:	9426                	add	s0,s0,s1
    1624:	000b4783          	lbu	a5,0(s6)
    1628:	00044703          	lbu	a4,0(s0)
    162c:	9fb9                	addw	a5,a5,a4
    162e:	0ff7f793          	andi	a5,a5,255
    1632:	97a6                	add	a5,a5,s1
    1634:	0007c783          	lbu	a5,0(a5)
    1638:	00f90023          	sb	a5,0(s2)
    163c:	0905                	addi	s2,s2,1
    163e:	fb2a98e3          	bne	s5,s2,15ee <random_bytes+0x36>
    1642:	70e2                	ld	ra,56(sp)
    1644:	7442                	ld	s0,48(sp)
    1646:	74a2                	ld	s1,40(sp)
    1648:	7902                	ld	s2,32(sp)
    164a:	69e2                	ld	s3,24(sp)
    164c:	6a42                	ld	s4,16(sp)
    164e:	6aa2                	ld	s5,8(sp)
    1650:	6b02                	ld	s6,0(sp)
    1652:	6121                	addi	sp,sp,64
    1654:	8082                	ret
    1656:	4501                	li	a0,0
    1658:	00000097          	auipc	ra,0x0
    165c:	ec0080e7          	jalr	-320(ra) # 1518 <random_init>
    1660:	bfa5                	j	15d8 <random_bytes+0x20>

0000000000001662 <random_ulong>:
    1662:	1101                	addi	sp,sp,-32
    1664:	ec06                	sd	ra,24(sp)
    1666:	45a1                	li	a1,8
    1668:	0028                	addi	a0,sp,8
    166a:	00000097          	auipc	ra,0x0
    166e:	f4e080e7          	jalr	-178(ra) # 15b8 <random_bytes>
    1672:	6522                	ld	a0,8(sp)
    1674:	60e2                	ld	ra,24(sp)
    1676:	6105                	addi	sp,sp,32
    1678:	8082                	ret

000000000000167a <shuffle>:
    167a:	c9b9                	beqz	a1,16d0 <shuffle+0x56>
    167c:	7179                	addi	sp,sp,-48
    167e:	f406                	sd	ra,40(sp)
    1680:	f022                	sd	s0,32(sp)
    1682:	ec26                	sd	s1,24(sp)
    1684:	e84a                	sd	s2,16(sp)
    1686:	e44e                	sd	s3,8(sp)
    1688:	e052                	sd	s4,0(sp)
    168a:	8a2a                	mv	s4,a0
    168c:	89ae                	mv	s3,a1
    168e:	84b2                	mv	s1,a2
    1690:	892a                	mv	s2,a0
    1692:	4401                	li	s0,0
    1694:	00000097          	auipc	ra,0x0
    1698:	fce080e7          	jalr	-50(ra) # 1662 <random_ulong>
    169c:	408985b3          	sub	a1,s3,s0
    16a0:	02b575b3          	remu	a1,a0,a1
    16a4:	95a2                	add	a1,a1,s0
    16a6:	029585b3          	mul	a1,a1,s1
    16aa:	8626                	mv	a2,s1
    16ac:	95d2                	add	a1,a1,s4
    16ae:	854a                	mv	a0,s2
    16b0:	00000097          	auipc	ra,0x0
    16b4:	e48080e7          	jalr	-440(ra) # 14f8 <swap_bytes>
    16b8:	0405                	addi	s0,s0,1
    16ba:	9926                	add	s2,s2,s1
    16bc:	fc899ce3          	bne	s3,s0,1694 <shuffle+0x1a>
    16c0:	70a2                	ld	ra,40(sp)
    16c2:	7402                	ld	s0,32(sp)
    16c4:	64e2                	ld	s1,24(sp)
    16c6:	6942                	ld	s2,16(sp)
    16c8:	69a2                	ld	s3,8(sp)
    16ca:	6a02                	ld	s4,0(sp)
    16cc:	6145                	addi	sp,sp,48
    16ce:	8082                	ret
    16d0:	8082                	ret

00000000000016d2 <arc4_init>:
    16d2:	100500a3          	sb	zero,257(a0)
    16d6:	10050023          	sb	zero,256(a0)
    16da:	4781                	li	a5,0
    16dc:	10000693          	li	a3,256
    16e0:	00f50733          	add	a4,a0,a5
    16e4:	00f70023          	sb	a5,0(a4)
    16e8:	0785                	addi	a5,a5,1
    16ea:	fed79be3          	bne	a5,a3,16e0 <arc4_init+0xe>
    16ee:	86aa                	mv	a3,a0
    16f0:	10050e13          	addi	t3,a0,256
    16f4:	4701                	li	a4,0
    16f6:	4781                	li	a5,0
    16f8:	0006c883          	lbu	a7,0(a3)
    16fc:	00f58833          	add	a6,a1,a5
    1700:	00084803          	lbu	a6,0(a6)
    1704:	00e8873b          	addw	a4,a7,a4
    1708:	00e8073b          	addw	a4,a6,a4
    170c:	0ff77713          	andi	a4,a4,255
    1710:	00e50833          	add	a6,a0,a4
    1714:	00084303          	lbu	t1,0(a6)
    1718:	00668023          	sb	t1,0(a3)
    171c:	01180023          	sb	a7,0(a6)
    1720:	0785                	addi	a5,a5,1
    1722:	00c7b833          	sltu	a6,a5,a2
    1726:	41000833          	neg	a6,a6
    172a:	0107f7b3          	and	a5,a5,a6
    172e:	0685                	addi	a3,a3,1
    1730:	fdc694e3          	bne	a3,t3,16f8 <arc4_init+0x26>
    1734:	8082                	ret

0000000000001736 <arc4_crypt>:
    1736:	10054e03          	lbu	t3,256(a0)
    173a:	10154803          	lbu	a6,257(a0)
    173e:	fff60e93          	addi	t4,a2,-1
    1742:	c225                	beqz	a2,17a2 <arc4_crypt+0x6c>
    1744:	00c588b3          	add	a7,a1,a2
    1748:	86ae                	mv	a3,a1
    174a:	001e031b          	addiw	t1,t3,1
    174e:	40b3033b          	subw	t1,t1,a1
    1752:	00d3073b          	addw	a4,t1,a3
    1756:	0ff77713          	andi	a4,a4,255
    175a:	972a                	add	a4,a4,a0
    175c:	00074603          	lbu	a2,0(a4)
    1760:	0106083b          	addw	a6,a2,a6
    1764:	0ff87813          	andi	a6,a6,255
    1768:	010507b3          	add	a5,a0,a6
    176c:	0007c583          	lbu	a1,0(a5)
    1770:	00b70023          	sb	a1,0(a4)
    1774:	00c78023          	sb	a2,0(a5)
    1778:	0685                	addi	a3,a3,1
    177a:	00074783          	lbu	a5,0(a4)
    177e:	9fb1                	addw	a5,a5,a2
    1780:	0ff7f793          	andi	a5,a5,255
    1784:	97aa                	add	a5,a5,a0
    1786:	0007c783          	lbu	a5,0(a5)
    178a:	fff6c703          	lbu	a4,-1(a3)
    178e:	8fb9                	xor	a5,a5,a4
    1790:	fef68fa3          	sb	a5,-1(a3)
    1794:	fb169fe3          	bne	a3,a7,1752 <arc4_crypt+0x1c>
    1798:	2e85                	addiw	t4,t4,1
    179a:	01ce8e3b          	addw	t3,t4,t3
    179e:	0ffe7e13          	andi	t3,t3,255
    17a2:	11c50023          	sb	t3,256(a0)
    17a6:	110500a3          	sb	a6,257(a0)
    17aa:	8082                	ret

00000000000017ac <_main>:
    17ac:	1141                	addi	sp,sp,-16
    17ae:	e406                	sd	ra,8(sp)
    17b0:	00000097          	auipc	ra,0x0
    17b4:	850080e7          	jalr	-1968(ra) # 1000 <main>
    17b8:	4501                	li	a0,0
    17ba:	00000097          	auipc	ra,0x0
    17be:	578080e7          	jalr	1400(ra) # 1d32 <exit>
    17c2:	60a2                	ld	ra,8(sp)
    17c4:	0141                	addi	sp,sp,16
    17c6:	8082                	ret

00000000000017c8 <strcmp>:
    17c8:	00054783          	lbu	a5,0(a0)
    17cc:	cb91                	beqz	a5,17e0 <strcmp+0x18>
    17ce:	0005c703          	lbu	a4,0(a1)
    17d2:	00f71763          	bne	a4,a5,17e0 <strcmp+0x18>
    17d6:	0505                	addi	a0,a0,1
    17d8:	0585                	addi	a1,a1,1
    17da:	00054783          	lbu	a5,0(a0)
    17de:	fbe5                	bnez	a5,17ce <strcmp+0x6>
    17e0:	0005c503          	lbu	a0,0(a1)
    17e4:	40a7853b          	subw	a0,a5,a0
    17e8:	8082                	ret

00000000000017ea <strcpy>:
    17ea:	87aa                	mv	a5,a0
    17ec:	0585                	addi	a1,a1,1
    17ee:	0785                	addi	a5,a5,1
    17f0:	fff5c703          	lbu	a4,-1(a1)
    17f4:	fee78fa3          	sb	a4,-1(a5)
    17f8:	fb75                	bnez	a4,17ec <strcpy+0x2>
    17fa:	8082                	ret

00000000000017fc <strlen>:
    17fc:	00054783          	lbu	a5,0(a0)
    1800:	cf81                	beqz	a5,1818 <strlen+0x1c>
    1802:	0505                	addi	a0,a0,1
    1804:	87aa                	mv	a5,a0
    1806:	4685                	li	a3,1
    1808:	9e89                	subw	a3,a3,a0
    180a:	00f6853b          	addw	a0,a3,a5
    180e:	0785                	addi	a5,a5,1
    1810:	fff7c703          	lbu	a4,-1(a5)
    1814:	fb7d                	bnez	a4,180a <strlen+0xe>
    1816:	8082                	ret
    1818:	4501                	li	a0,0
    181a:	8082                	ret

000000000000181c <memset>:
    181c:	ca19                	beqz	a2,1832 <memset+0x16>
    181e:	87aa                	mv	a5,a0
    1820:	1602                	slli	a2,a2,0x20
    1822:	9201                	srli	a2,a2,0x20
    1824:	00a60733          	add	a4,a2,a0
    1828:	00b78023          	sb	a1,0(a5)
    182c:	0785                	addi	a5,a5,1
    182e:	fee79de3          	bne	a5,a4,1828 <memset+0xc>
    1832:	8082                	ret

0000000000001834 <memcmp>:
    1834:	1101                	addi	sp,sp,-32
    1836:	ec06                	sd	ra,24(sp)
    1838:	e822                	sd	s0,16(sp)
    183a:	e426                	sd	s1,8(sp)
    183c:	e04a                	sd	s2,0(sp)
    183e:	892a                	mv	s2,a0
    1840:	842e                	mv	s0,a1
    1842:	84b2                	mv	s1,a2
    1844:	c915                	beqz	a0,1878 <memcmp+0x44>
    1846:	c5ad                	beqz	a1,18b0 <memcmp+0x7c>
    1848:	fff60713          	addi	a4,a2,-1
    184c:	c645                	beqz	a2,18f4 <memcmp+0xc0>
    184e:	87ca                	mv	a5,s2
    1850:	00190613          	addi	a2,s2,1
    1854:	963a                	add	a2,a2,a4
    1856:	0007c683          	lbu	a3,0(a5)
    185a:	00044703          	lbu	a4,0(s0)
    185e:	08e69463          	bne	a3,a4,18e6 <memcmp+0xb2>
    1862:	0785                	addi	a5,a5,1
    1864:	0405                	addi	s0,s0,1
    1866:	fec798e3          	bne	a5,a2,1856 <memcmp+0x22>
    186a:	4501                	li	a0,0
    186c:	60e2                	ld	ra,24(sp)
    186e:	6442                	ld	s0,16(sp)
    1870:	64a2                	ld	s1,8(sp)
    1872:	6902                	ld	s2,0(sp)
    1874:	6105                	addi	sp,sp,32
    1876:	8082                	ret
    1878:	4501                	li	a0,0
    187a:	da6d                	beqz	a2,186c <memcmp+0x38>
    187c:	03200693          	li	a3,50
    1880:	00002637          	lui	a2,0x2
    1884:	33060613          	addi	a2,a2,816 # 2330 <crctab+0x400>
    1888:	000025b7          	lui	a1,0x2
    188c:	34058593          	addi	a1,a1,832 # 2340 <crctab+0x410>
    1890:	4509                	li	a0,2
    1892:	00000097          	auipc	ra,0x0
    1896:	bbc080e7          	jalr	-1092(ra) # 144e <fprintf>
    189a:	650d                	lui	a0,0x3
    189c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18a0:	00000097          	auipc	ra,0x0
    18a4:	492080e7          	jalr	1170(ra) # 1d32 <exit>
    18a8:	fff48713          	addi	a4,s1,-1
    18ac:	f04d                	bnez	s0,184e <memcmp+0x1a>
    18ae:	a011                	j	18b2 <memcmp+0x7e>
    18b0:	c221                	beqz	a2,18f0 <memcmp+0xbc>
    18b2:	03300693          	li	a3,51
    18b6:	00002637          	lui	a2,0x2
    18ba:	33060613          	addi	a2,a2,816 # 2330 <crctab+0x400>
    18be:	000025b7          	lui	a1,0x2
    18c2:	38858593          	addi	a1,a1,904 # 2388 <crctab+0x458>
    18c6:	4509                	li	a0,2
    18c8:	00000097          	auipc	ra,0x0
    18cc:	b86080e7          	jalr	-1146(ra) # 144e <fprintf>
    18d0:	650d                	lui	a0,0x3
    18d2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18d6:	00000097          	auipc	ra,0x0
    18da:	45c080e7          	jalr	1116(ra) # 1d32 <exit>
    18de:	fff48713          	addi	a4,s1,-1
    18e2:	4401                	li	s0,0
    18e4:	b7ad                	j	184e <memcmp+0x1a>
    18e6:	4505                	li	a0,1
    18e8:	f8d762e3          	bltu	a4,a3,186c <memcmp+0x38>
    18ec:	557d                	li	a0,-1
    18ee:	bfbd                	j	186c <memcmp+0x38>
    18f0:	4501                	li	a0,0
    18f2:	bfad                	j	186c <memcmp+0x38>
    18f4:	4501                	li	a0,0
    18f6:	bf9d                	j	186c <memcmp+0x38>

00000000000018f8 <memcpy>:
    18f8:	1101                	addi	sp,sp,-32
    18fa:	ec06                	sd	ra,24(sp)
    18fc:	e822                	sd	s0,16(sp)
    18fe:	e426                	sd	s1,8(sp)
    1900:	e04a                	sd	s2,0(sp)
    1902:	84aa                	mv	s1,a0
    1904:	842e                	mv	s0,a1
    1906:	8932                	mv	s2,a2
    1908:	c51d                	beqz	a0,1936 <memcpy+0x3e>
    190a:	c1ad                	beqz	a1,196c <memcpy+0x74>
    190c:	fff60693          	addi	a3,a2,-1
    1910:	ce01                	beqz	a2,1928 <memcpy+0x30>
    1912:	0685                	addi	a3,a3,1
    1914:	96a6                	add	a3,a3,s1
    1916:	87a6                	mv	a5,s1
    1918:	0405                	addi	s0,s0,1
    191a:	0785                	addi	a5,a5,1
    191c:	fff44703          	lbu	a4,-1(s0)
    1920:	fee78fa3          	sb	a4,-1(a5)
    1924:	fed79ae3          	bne	a5,a3,1918 <memcpy+0x20>
    1928:	8526                	mv	a0,s1
    192a:	60e2                	ld	ra,24(sp)
    192c:	6442                	ld	s0,16(sp)
    192e:	64a2                	ld	s1,8(sp)
    1930:	6902                	ld	s2,0(sp)
    1932:	6105                	addi	sp,sp,32
    1934:	8082                	ret
    1936:	da6d                	beqz	a2,1928 <memcpy+0x30>
    1938:	04000693          	li	a3,64
    193c:	00002637          	lui	a2,0x2
    1940:	33060613          	addi	a2,a2,816 # 2330 <crctab+0x400>
    1944:	000025b7          	lui	a1,0x2
    1948:	3d058593          	addi	a1,a1,976 # 23d0 <crctab+0x4a0>
    194c:	4509                	li	a0,2
    194e:	00000097          	auipc	ra,0x0
    1952:	b00080e7          	jalr	-1280(ra) # 144e <fprintf>
    1956:	650d                	lui	a0,0x3
    1958:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    195c:	00000097          	auipc	ra,0x0
    1960:	3d6080e7          	jalr	982(ra) # 1d32 <exit>
    1964:	fff90693          	addi	a3,s2,-1
    1968:	f44d                	bnez	s0,1912 <memcpy+0x1a>
    196a:	a011                	j	196e <memcpy+0x76>
    196c:	de55                	beqz	a2,1928 <memcpy+0x30>
    196e:	04100693          	li	a3,65
    1972:	00002637          	lui	a2,0x2
    1976:	33060613          	addi	a2,a2,816 # 2330 <crctab+0x400>
    197a:	000025b7          	lui	a1,0x2
    197e:	41858593          	addi	a1,a1,1048 # 2418 <crctab+0x4e8>
    1982:	4509                	li	a0,2
    1984:	00000097          	auipc	ra,0x0
    1988:	aca080e7          	jalr	-1334(ra) # 144e <fprintf>
    198c:	650d                	lui	a0,0x3
    198e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1992:	00000097          	auipc	ra,0x0
    1996:	3a0080e7          	jalr	928(ra) # 1d32 <exit>
    199a:	fff90693          	addi	a3,s2,-1
    199e:	4401                	li	s0,0
    19a0:	bf8d                	j	1912 <memcpy+0x1a>

00000000000019a2 <itoa>:
    19a2:	1101                	addi	sp,sp,-32
    19a4:	ec06                	sd	ra,24(sp)
    19a6:	e822                	sd	s0,16(sp)
    19a8:	e426                	sd	s1,8(sp)
    19aa:	842a                	mv	s0,a0
    19ac:	41f5d71b          	sraiw	a4,a1,0x1f
    19b0:	00e5c7b3          	xor	a5,a1,a4
    19b4:	9f99                	subw	a5,a5,a4
    19b6:	84aa                	mv	s1,a0
    19b8:	862a                	mv	a2,a0
    19ba:	4681                	li	a3,0
    19bc:	4529                	li	a0,10
    19be:	4825                	li	a6,9
    19c0:	88b6                	mv	a7,a3
    19c2:	2685                	addiw	a3,a3,1
    19c4:	02a7e73b          	remw	a4,a5,a0
    19c8:	0307071b          	addiw	a4,a4,48
    19cc:	00e60023          	sb	a4,0(a2)
    19d0:	873e                	mv	a4,a5
    19d2:	02a7c7bb          	divw	a5,a5,a0
    19d6:	0605                	addi	a2,a2,1
    19d8:	fee844e3          	blt	a6,a4,19c0 <itoa+0x1e>
    19dc:	0405c863          	bltz	a1,1a2c <itoa+0x8a>
    19e0:	96a2                	add	a3,a3,s0
    19e2:	00068023          	sb	zero,0(a3)
    19e6:	8522                	mv	a0,s0
    19e8:	00000097          	auipc	ra,0x0
    19ec:	e14080e7          	jalr	-492(ra) # 17fc <strlen>
    19f0:	fff5071b          	addiw	a4,a0,-1
    19f4:	02e05763          	blez	a4,1a22 <itoa+0x80>
    19f8:	9722                	add	a4,a4,s0
    19fa:	4681                	li	a3,0
    19fc:	0004c783          	lbu	a5,0(s1)
    1a00:	00074603          	lbu	a2,0(a4)
    1a04:	00c48023          	sb	a2,0(s1)
    1a08:	00f70023          	sb	a5,0(a4)
    1a0c:	0016879b          	addiw	a5,a3,1
    1a10:	0007869b          	sext.w	a3,a5
    1a14:	0485                	addi	s1,s1,1
    1a16:	177d                	addi	a4,a4,-1
    1a18:	fff7c793          	not	a5,a5
    1a1c:	9fa9                	addw	a5,a5,a0
    1a1e:	fcf6cfe3          	blt	a3,a5,19fc <itoa+0x5a>
    1a22:	60e2                	ld	ra,24(sp)
    1a24:	6442                	ld	s0,16(sp)
    1a26:	64a2                	ld	s1,8(sp)
    1a28:	6105                	addi	sp,sp,32
    1a2a:	8082                	ret
    1a2c:	96a2                	add	a3,a3,s0
    1a2e:	02d00793          	li	a5,45
    1a32:	00f68023          	sb	a5,0(a3)
    1a36:	0028869b          	addiw	a3,a7,2
    1a3a:	b75d                	j	19e0 <itoa+0x3e>

0000000000001a3c <atoi>:
    1a3c:	00054783          	lbu	a5,0(a0)
    1a40:	02000713          	li	a4,32
    1a44:	00e79763          	bne	a5,a4,1a52 <atoi+0x16>
    1a48:	0505                	addi	a0,a0,1
    1a4a:	00054783          	lbu	a5,0(a0)
    1a4e:	fee78de3          	beq	a5,a4,1a48 <atoi+0xc>
    1a52:	02b00713          	li	a4,43
    1a56:	04e78663          	beq	a5,a4,1aa2 <atoi+0x66>
    1a5a:	02d00713          	li	a4,45
    1a5e:	4805                	li	a6,1
    1a60:	04e78463          	beq	a5,a4,1aa8 <atoi+0x6c>
    1a64:	00054683          	lbu	a3,0(a0)
    1a68:	fd06879b          	addiw	a5,a3,-48
    1a6c:	0ff7f793          	andi	a5,a5,255
    1a70:	4725                	li	a4,9
    1a72:	02f76e63          	bltu	a4,a5,1aae <atoi+0x72>
    1a76:	4601                	li	a2,0
    1a78:	45a5                	li	a1,9
    1a7a:	0505                	addi	a0,a0,1
    1a7c:	0026179b          	slliw	a5,a2,0x2
    1a80:	9fb1                	addw	a5,a5,a2
    1a82:	0017979b          	slliw	a5,a5,0x1
    1a86:	9fb5                	addw	a5,a5,a3
    1a88:	fd07861b          	addiw	a2,a5,-48
    1a8c:	00054683          	lbu	a3,0(a0)
    1a90:	fd06871b          	addiw	a4,a3,-48
    1a94:	0ff77713          	andi	a4,a4,255
    1a98:	fee5f1e3          	bgeu	a1,a4,1a7a <atoi+0x3e>
    1a9c:	02c8053b          	mulw	a0,a6,a2
    1aa0:	8082                	ret
    1aa2:	0505                	addi	a0,a0,1
    1aa4:	4805                	li	a6,1
    1aa6:	bf7d                	j	1a64 <atoi+0x28>
    1aa8:	0505                	addi	a0,a0,1
    1aaa:	587d                	li	a6,-1
    1aac:	bf65                	j	1a64 <atoi+0x28>
    1aae:	4601                	li	a2,0
    1ab0:	b7f5                	j	1a9c <atoi+0x60>

0000000000001ab2 <check_file_handle>:
    1ab2:	d8010113          	addi	sp,sp,-640
    1ab6:	26113c23          	sd	ra,632(sp)
    1aba:	26813823          	sd	s0,624(sp)
    1abe:	26913423          	sd	s1,616(sp)
    1ac2:	27213023          	sd	s2,608(sp)
    1ac6:	25313c23          	sd	s3,600(sp)
    1aca:	25413823          	sd	s4,592(sp)
    1ace:	25513423          	sd	s5,584(sp)
    1ad2:	25613023          	sd	s6,576(sp)
    1ad6:	23713c23          	sd	s7,568(sp)
    1ada:	23813823          	sd	s8,560(sp)
    1ade:	23913423          	sd	s9,552(sp)
    1ae2:	23a13023          	sd	s10,544(sp)
    1ae6:	21b13c23          	sd	s11,536(sp)
    1aea:	8baa                	mv	s7,a0
    1aec:	8a2e                	mv	s4,a1
    1aee:	8c32                	mv	s8,a2
    1af0:	89b6                	mv	s3,a3
    1af2:	040c                	addi	a1,sp,512
    1af4:	00000097          	auipc	ra,0x0
    1af8:	28e080e7          	jalr	654(ra) # 1d82 <fstat>
    1afc:	20813603          	ld	a2,520(sp)
    1b00:	03361163          	bne	a2,s3,1b22 <check_file_handle+0x70>
    1b04:	06098763          	beqz	s3,1b72 <check_file_handle+0xc0>
    1b08:	4901                	li	s2,0
    1b0a:	20000a93          	li	s5,512
    1b0e:	00002cb7          	lui	s9,0x2
    1b12:	00002db7          	lui	s11,0x2
    1b16:	6b0d                	lui	s6,0x3
    1b18:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1b1c:	00002d37          	lui	s10,0x2
    1b20:	aa39                	j	1c3e <check_file_handle+0x18c>
    1b22:	86ce                	mv	a3,s3
    1b24:	85d2                	mv	a1,s4
    1b26:	00002537          	lui	a0,0x2
    1b2a:	46050513          	addi	a0,a0,1120 # 2460 <crctab+0x530>
    1b2e:	00000097          	auipc	ra,0x0
    1b32:	942080e7          	jalr	-1726(ra) # 1470 <printf>
    1b36:	fc0999e3          	bnez	s3,1b08 <check_file_handle+0x56>
    1b3a:	20813683          	ld	a3,520(sp)
    1b3e:	03368a63          	beq	a3,s3,1b72 <check_file_handle+0xc0>
    1b42:	0a600813          	li	a6,166
    1b46:	000027b7          	lui	a5,0x2
    1b4a:	33078793          	addi	a5,a5,816 # 2330 <crctab+0x400>
    1b4e:	874e                	mv	a4,s3
    1b50:	8652                	mv	a2,s4
    1b52:	000025b7          	lui	a1,0x2
    1b56:	53058593          	addi	a1,a1,1328 # 2530 <crctab+0x600>
    1b5a:	4509                	li	a0,2
    1b5c:	00000097          	auipc	ra,0x0
    1b60:	8f2080e7          	jalr	-1806(ra) # 144e <fprintf>
    1b64:	650d                	lui	a0,0x3
    1b66:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	1c8080e7          	jalr	456(ra) # 1d32 <exit>
    1b72:	85d2                	mv	a1,s4
    1b74:	00002537          	lui	a0,0x2
    1b78:	57850513          	addi	a0,a0,1400 # 2578 <crctab+0x648>
    1b7c:	00000097          	auipc	ra,0x0
    1b80:	8f4080e7          	jalr	-1804(ra) # 1470 <printf>
    1b84:	27813083          	ld	ra,632(sp)
    1b88:	27013403          	ld	s0,624(sp)
    1b8c:	26813483          	ld	s1,616(sp)
    1b90:	26013903          	ld	s2,608(sp)
    1b94:	25813983          	ld	s3,600(sp)
    1b98:	25013a03          	ld	s4,592(sp)
    1b9c:	24813a83          	ld	s5,584(sp)
    1ba0:	24013b03          	ld	s6,576(sp)
    1ba4:	23813b83          	ld	s7,568(sp)
    1ba8:	23013c03          	ld	s8,560(sp)
    1bac:	22813c83          	ld	s9,552(sp)
    1bb0:	22013d03          	ld	s10,544(sp)
    1bb4:	21813d83          	ld	s11,536(sp)
    1bb8:	28010113          	addi	sp,sp,640
    1bbc:	8082                	ret
    1bbe:	09d00893          	li	a7,157
    1bc2:	330c8813          	addi	a6,s9,816 # 2330 <crctab+0x400>
    1bc6:	87aa                	mv	a5,a0
    1bc8:	8752                	mv	a4,s4
    1bca:	86ca                	mv	a3,s2
    1bcc:	8622                	mv	a2,s0
    1bce:	490d8593          	addi	a1,s11,1168 # 2490 <crctab+0x560>
    1bd2:	4509                	li	a0,2
    1bd4:	00000097          	auipc	ra,0x0
    1bd8:	87a080e7          	jalr	-1926(ra) # 144e <fprintf>
    1bdc:	855a                	mv	a0,s6
    1bde:	00000097          	auipc	ra,0x0
    1be2:	154080e7          	jalr	340(ra) # 1d32 <exit>
    1be6:	a89d                	j	1c5c <check_file_handle+0x1aa>
    1be8:	00160593          	addi	a1,a2,1
    1bec:	0285f163          	bgeu	a1,s0,1c0e <check_file_handle+0x15c>
    1bf0:	00c10733          	add	a4,sp,a2
    1bf4:	00b487b3          	add	a5,s1,a1
    1bf8:	00174683          	lbu	a3,1(a4)
    1bfc:	0007c783          	lbu	a5,0(a5)
    1c00:	00f68763          	beq	a3,a5,1c0e <check_file_handle+0x15c>
    1c04:	0585                	addi	a1,a1,1
    1c06:	0705                	addi	a4,a4,1
    1c08:	feb416e3          	bne	s0,a1,1bf4 <check_file_handle+0x142>
    1c0c:	85a2                	mv	a1,s0
    1c0e:	08100813          	li	a6,129
    1c12:	330c8793          	addi	a5,s9,816
    1c16:	8752                	mv	a4,s4
    1c18:	012606b3          	add	a3,a2,s2
    1c1c:	40c58633          	sub	a2,a1,a2
    1c20:	4d8d0593          	addi	a1,s10,1240 # 24d8 <crctab+0x5a8>
    1c24:	4509                	li	a0,2
    1c26:	00000097          	auipc	ra,0x0
    1c2a:	828080e7          	jalr	-2008(ra) # 144e <fprintf>
    1c2e:	855a                	mv	a0,s6
    1c30:	00000097          	auipc	ra,0x0
    1c34:	102080e7          	jalr	258(ra) # 1d32 <exit>
    1c38:	9922                	add	s2,s2,s0
    1c3a:	f13970e3          	bgeu	s2,s3,1b3a <check_file_handle+0x88>
    1c3e:	41298433          	sub	s0,s3,s2
    1c42:	008af363          	bgeu	s5,s0,1c48 <check_file_handle+0x196>
    1c46:	8456                	mv	s0,s5
    1c48:	0004061b          	sext.w	a2,s0
    1c4c:	858a                	mv	a1,sp
    1c4e:	855e                	mv	a0,s7
    1c50:	00000097          	auipc	ra,0x0
    1c54:	10a080e7          	jalr	266(ra) # 1d5a <read>
    1c58:	f68513e3          	bne	a0,s0,1bbe <check_file_handle+0x10c>
    1c5c:	012c04b3          	add	s1,s8,s2
    1c60:	8622                	mv	a2,s0
    1c62:	85a6                	mv	a1,s1
    1c64:	850a                	mv	a0,sp
    1c66:	00000097          	auipc	ra,0x0
    1c6a:	bce080e7          	jalr	-1074(ra) # 1834 <memcmp>
    1c6e:	d569                	beqz	a0,1c38 <check_file_handle+0x186>
    1c70:	03298163          	beq	s3,s2,1c92 <check_file_handle+0x1e0>
    1c74:	870a                	mv	a4,sp
    1c76:	4601                	li	a2,0
    1c78:	00c487b3          	add	a5,s1,a2
    1c7c:	00074683          	lbu	a3,0(a4)
    1c80:	0007c783          	lbu	a5,0(a5)
    1c84:	f6f692e3          	bne	a3,a5,1be8 <check_file_handle+0x136>
    1c88:	0605                	addi	a2,a2,1
    1c8a:	0705                	addi	a4,a4,1
    1c8c:	fe8666e3          	bltu	a2,s0,1c78 <check_file_handle+0x1c6>
    1c90:	bfa1                	j	1be8 <check_file_handle+0x136>
    1c92:	4601                	li	a2,0
    1c94:	4585                	li	a1,1
    1c96:	bfa5                	j	1c0e <check_file_handle+0x15c>

0000000000001c98 <check_file>:
    1c98:	7179                	addi	sp,sp,-48
    1c9a:	f406                	sd	ra,40(sp)
    1c9c:	f022                	sd	s0,32(sp)
    1c9e:	ec26                	sd	s1,24(sp)
    1ca0:	e84a                	sd	s2,16(sp)
    1ca2:	e44e                	sd	s3,8(sp)
    1ca4:	84aa                	mv	s1,a0
    1ca6:	892e                	mv	s2,a1
    1ca8:	89b2                	mv	s3,a2
    1caa:	4581                	li	a1,0
    1cac:	00000097          	auipc	ra,0x0
    1cb0:	0a6080e7          	jalr	166(ra) # 1d52 <open>
    1cb4:	842a                	mv	s0,a0
    1cb6:	4789                	li	a5,2
    1cb8:	02a7df63          	bge	a5,a0,1cf6 <check_file+0x5e>
    1cbc:	86ce                	mv	a3,s3
    1cbe:	864a                	mv	a2,s2
    1cc0:	85a6                	mv	a1,s1
    1cc2:	8522                	mv	a0,s0
    1cc4:	00000097          	auipc	ra,0x0
    1cc8:	dee080e7          	jalr	-530(ra) # 1ab2 <check_file_handle>
    1ccc:	85a6                	mv	a1,s1
    1cce:	00002537          	lui	a0,0x2
    1cd2:	60050513          	addi	a0,a0,1536 # 2600 <crctab+0x6d0>
    1cd6:	fffff097          	auipc	ra,0xfffff
    1cda:	79a080e7          	jalr	1946(ra) # 1470 <printf>
    1cde:	8522                	mv	a0,s0
    1ce0:	00000097          	auipc	ra,0x0
    1ce4:	09a080e7          	jalr	154(ra) # 1d7a <close>
    1ce8:	70a2                	ld	ra,40(sp)
    1cea:	7402                	ld	s0,32(sp)
    1cec:	64e2                	ld	s1,24(sp)
    1cee:	6942                	ld	s2,16(sp)
    1cf0:	69a2                	ld	s3,8(sp)
    1cf2:	6145                	addi	sp,sp,48
    1cf4:	8082                	ret
    1cf6:	0ae00713          	li	a4,174
    1cfa:	000026b7          	lui	a3,0x2
    1cfe:	33068693          	addi	a3,a3,816 # 2330 <crctab+0x400>
    1d02:	8626                	mv	a2,s1
    1d04:	000025b7          	lui	a1,0x2
    1d08:	59858593          	addi	a1,a1,1432 # 2598 <crctab+0x668>
    1d0c:	4509                	li	a0,2
    1d0e:	fffff097          	auipc	ra,0xfffff
    1d12:	740080e7          	jalr	1856(ra) # 144e <fprintf>
    1d16:	650d                	lui	a0,0x3
    1d18:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1d1c:	00000097          	auipc	ra,0x0
    1d20:	016080e7          	jalr	22(ra) # 1d32 <exit>
    1d24:	bf61                	j	1cbc <check_file+0x24>

0000000000001d26 <r_sp>:
    1d26:	850a                	mv	a0,sp
    1d28:	8082                	ret

0000000000001d2a <halt>:
    1d2a:	4885                	li	a7,1
    1d2c:	00000073          	ecall
    1d30:	8082                	ret

0000000000001d32 <exit>:
    1d32:	4889                	li	a7,2
    1d34:	00000073          	ecall
    1d38:	8082                	ret

0000000000001d3a <exec>:
    1d3a:	488d                	li	a7,3
    1d3c:	00000073          	ecall
    1d40:	8082                	ret

0000000000001d42 <wait>:
    1d42:	4891                	li	a7,4
    1d44:	00000073          	ecall
    1d48:	8082                	ret

0000000000001d4a <remove>:
    1d4a:	4895                	li	a7,5
    1d4c:	00000073          	ecall
    1d50:	8082                	ret

0000000000001d52 <open>:
    1d52:	4899                	li	a7,6
    1d54:	00000073          	ecall
    1d58:	8082                	ret

0000000000001d5a <read>:
    1d5a:	489d                	li	a7,7
    1d5c:	00000073          	ecall
    1d60:	8082                	ret

0000000000001d62 <write>:
    1d62:	48a1                	li	a7,8
    1d64:	00000073          	ecall
    1d68:	8082                	ret

0000000000001d6a <seek>:
    1d6a:	48a5                	li	a7,9
    1d6c:	00000073          	ecall
    1d70:	8082                	ret

0000000000001d72 <tell>:
    1d72:	48a9                	li	a7,10
    1d74:	00000073          	ecall
    1d78:	8082                	ret

0000000000001d7a <close>:
    1d7a:	48ad                	li	a7,11
    1d7c:	00000073          	ecall
    1d80:	8082                	ret

0000000000001d82 <fstat>:
    1d82:	48b1                	li	a7,12
    1d84:	00000073          	ecall
    1d88:	8082                	ret

0000000000001d8a <mmap>:
    1d8a:	48b5                	li	a7,13
    1d8c:	00000073          	ecall
    1d90:	8082                	ret

0000000000001d92 <munmap>:
    1d92:	48b9                	li	a7,14
    1d94:	00000073          	ecall
    1d98:	8082                	ret

0000000000001d9a <chdir>:
    1d9a:	48bd                	li	a7,15
    1d9c:	00000073          	ecall
    1da0:	8082                	ret

0000000000001da2 <mkdir>:
    1da2:	48c1                	li	a7,16
    1da4:	00000073          	ecall
    1da8:	8082                	ret
