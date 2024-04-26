
build/user/userprogs/write-badfd:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	07b00793          	li	a5,123
    1008:	00f107a3          	sb	a5,15(sp)
    100c:	4605                	li	a2,1
    100e:	00f10593          	addi	a1,sp,15
    1012:	20231537          	lui	a0,0x20231
    1016:	82350513          	addi	a0,a0,-2013 # 20230823 <s+0x2022d813>
    101a:	00001097          	auipc	ra,0x1
    101e:	d7a080e7          	jalr	-646(ra) # 1d94 <write>
    1022:	57fd                	li	a5,-1
    1024:	08f51f63          	bne	a0,a5,10c2 <main+0xc2>
    1028:	4605                	li	a2,1
    102a:	00f10593          	addi	a1,sp,15
    102e:	451d                	li	a0,7
    1030:	00001097          	auipc	ra,0x1
    1034:	d64080e7          	jalr	-668(ra) # 1d94 <write>
    1038:	57fd                	li	a5,-1
    103a:	0af51a63          	bne	a0,a5,10ee <main+0xee>
    103e:	4605                	li	a2,1
    1040:	00f10593          	addi	a1,sp,15
    1044:	6505                	lui	a0,0x1
    1046:	9b950513          	addi	a0,a0,-1607 # 9b9 <main-0x647>
    104a:	00001097          	auipc	ra,0x1
    104e:	d4a080e7          	jalr	-694(ra) # 1d94 <write>
    1052:	57fd                	li	a5,-1
    1054:	0cf51363          	bne	a0,a5,111a <main+0x11a>
    1058:	4605                	li	a2,1
    105a:	00f10593          	addi	a1,sp,15
    105e:	5555                	li	a0,-11
    1060:	00001097          	auipc	ra,0x1
    1064:	d34080e7          	jalr	-716(ra) # 1d94 <write>
    1068:	57fd                	li	a5,-1
    106a:	0cf51e63          	bne	a0,a5,1146 <main+0x146>
    106e:	4605                	li	a2,1
    1070:	00f10593          	addi	a1,sp,15
    1074:	fa700513          	li	a0,-89
    1078:	00001097          	auipc	ra,0x1
    107c:	d1c080e7          	jalr	-740(ra) # 1d94 <write>
    1080:	57fd                	li	a5,-1
    1082:	0ef51863          	bne	a0,a5,1172 <main+0x172>
    1086:	4605                	li	a2,1
    1088:	00f10593          	addi	a1,sp,15
    108c:	80000537          	lui	a0,0x80000
    1090:	0505                	addi	a0,a0,1
    1092:	00001097          	auipc	ra,0x1
    1096:	d02080e7          	jalr	-766(ra) # 1d94 <write>
    109a:	57fd                	li	a5,-1
    109c:	10f51163          	bne	a0,a5,119e <main+0x19e>
    10a0:	4605                	li	a2,1
    10a2:	00f10593          	addi	a1,sp,15
    10a6:	80000537          	lui	a0,0x80000
    10aa:	ffe54513          	xori	a0,a0,-2
    10ae:	00001097          	auipc	ra,0x1
    10b2:	ce6080e7          	jalr	-794(ra) # 1d94 <write>
    10b6:	57fd                	li	a5,-1
    10b8:	10f51963          	bne	a0,a5,11ca <main+0x1ca>
    10bc:	60e2                	ld	ra,24(sp)
    10be:	6105                	addi	sp,sp,32
    10c0:	8082                	ret
    10c2:	46a5                	li	a3,9
    10c4:	00002637          	lui	a2,0x2
    10c8:	de060613          	addi	a2,a2,-544 # 1de0 <mkdir+0xc>
    10cc:	000025b7          	lui	a1,0x2
    10d0:	e0058593          	addi	a1,a1,-512 # 1e00 <mkdir+0x2c>
    10d4:	4509                	li	a0,2
    10d6:	00000097          	auipc	ra,0x0
    10da:	3aa080e7          	jalr	938(ra) # 1480 <fprintf>
    10de:	650d                	lui	a0,0x3
    10e0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10e4:	00001097          	auipc	ra,0x1
    10e8:	c80080e7          	jalr	-896(ra) # 1d64 <exit>
    10ec:	bf35                	j	1028 <main+0x28>
    10ee:	46a9                	li	a3,10
    10f0:	00002637          	lui	a2,0x2
    10f4:	de060613          	addi	a2,a2,-544 # 1de0 <mkdir+0xc>
    10f8:	000025b7          	lui	a1,0x2
    10fc:	e5058593          	addi	a1,a1,-432 # 1e50 <mkdir+0x7c>
    1100:	4509                	li	a0,2
    1102:	00000097          	auipc	ra,0x0
    1106:	37e080e7          	jalr	894(ra) # 1480 <fprintf>
    110a:	650d                	lui	a0,0x3
    110c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1110:	00001097          	auipc	ra,0x1
    1114:	c54080e7          	jalr	-940(ra) # 1d64 <exit>
    1118:	b71d                	j	103e <main+0x3e>
    111a:	46ad                	li	a3,11
    111c:	00002637          	lui	a2,0x2
    1120:	de060613          	addi	a2,a2,-544 # 1de0 <mkdir+0xc>
    1124:	000025b7          	lui	a1,0x2
    1128:	e9858593          	addi	a1,a1,-360 # 1e98 <mkdir+0xc4>
    112c:	4509                	li	a0,2
    112e:	00000097          	auipc	ra,0x0
    1132:	352080e7          	jalr	850(ra) # 1480 <fprintf>
    1136:	650d                	lui	a0,0x3
    1138:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    113c:	00001097          	auipc	ra,0x1
    1140:	c28080e7          	jalr	-984(ra) # 1d64 <exit>
    1144:	bf11                	j	1058 <main+0x58>
    1146:	46b1                	li	a3,12
    1148:	00002637          	lui	a2,0x2
    114c:	de060613          	addi	a2,a2,-544 # 1de0 <mkdir+0xc>
    1150:	000025b7          	lui	a1,0x2
    1154:	ee058593          	addi	a1,a1,-288 # 1ee0 <mkdir+0x10c>
    1158:	4509                	li	a0,2
    115a:	00000097          	auipc	ra,0x0
    115e:	326080e7          	jalr	806(ra) # 1480 <fprintf>
    1162:	650d                	lui	a0,0x3
    1164:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1168:	00001097          	auipc	ra,0x1
    116c:	bfc080e7          	jalr	-1028(ra) # 1d64 <exit>
    1170:	bdfd                	j	106e <main+0x6e>
    1172:	46b5                	li	a3,13
    1174:	00002637          	lui	a2,0x2
    1178:	de060613          	addi	a2,a2,-544 # 1de0 <mkdir+0xc>
    117c:	000025b7          	lui	a1,0x2
    1180:	f2858593          	addi	a1,a1,-216 # 1f28 <mkdir+0x154>
    1184:	4509                	li	a0,2
    1186:	00000097          	auipc	ra,0x0
    118a:	2fa080e7          	jalr	762(ra) # 1480 <fprintf>
    118e:	650d                	lui	a0,0x3
    1190:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1194:	00001097          	auipc	ra,0x1
    1198:	bd0080e7          	jalr	-1072(ra) # 1d64 <exit>
    119c:	b5ed                	j	1086 <main+0x86>
    119e:	46b9                	li	a3,14
    11a0:	00002637          	lui	a2,0x2
    11a4:	de060613          	addi	a2,a2,-544 # 1de0 <mkdir+0xc>
    11a8:	000025b7          	lui	a1,0x2
    11ac:	f7058593          	addi	a1,a1,-144 # 1f70 <mkdir+0x19c>
    11b0:	4509                	li	a0,2
    11b2:	00000097          	auipc	ra,0x0
    11b6:	2ce080e7          	jalr	718(ra) # 1480 <fprintf>
    11ba:	650d                	lui	a0,0x3
    11bc:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    11c0:	00001097          	auipc	ra,0x1
    11c4:	ba4080e7          	jalr	-1116(ra) # 1d64 <exit>
    11c8:	bde1                	j	10a0 <main+0xa0>
    11ca:	46bd                	li	a3,15
    11cc:	00002637          	lui	a2,0x2
    11d0:	de060613          	addi	a2,a2,-544 # 1de0 <mkdir+0xc>
    11d4:	000025b7          	lui	a1,0x2
    11d8:	fc058593          	addi	a1,a1,-64 # 1fc0 <mkdir+0x1ec>
    11dc:	4509                	li	a0,2
    11de:	00000097          	auipc	ra,0x0
    11e2:	2a2080e7          	jalr	674(ra) # 1480 <fprintf>
    11e6:	650d                	lui	a0,0x3
    11e8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    11ec:	00001097          	auipc	ra,0x1
    11f0:	b78080e7          	jalr	-1160(ra) # 1d64 <exit>
    11f4:	b5e1                	j	10bc <main+0xbc>

00000000000011f6 <putc>:
    11f6:	1101                	addi	sp,sp,-32
    11f8:	ec06                	sd	ra,24(sp)
    11fa:	00b107a3          	sb	a1,15(sp)
    11fe:	4605                	li	a2,1
    1200:	00f10593          	addi	a1,sp,15
    1204:	00001097          	auipc	ra,0x1
    1208:	b90080e7          	jalr	-1136(ra) # 1d94 <write>
    120c:	60e2                	ld	ra,24(sp)
    120e:	6105                	addi	sp,sp,32
    1210:	8082                	ret

0000000000001212 <printint>:
    1212:	7179                	addi	sp,sp,-48
    1214:	f406                	sd	ra,40(sp)
    1216:	f022                	sd	s0,32(sp)
    1218:	ec26                	sd	s1,24(sp)
    121a:	e84a                	sd	s2,16(sp)
    121c:	84aa                	mv	s1,a0
    121e:	c299                	beqz	a3,1224 <printint+0x12>
    1220:	0805c363          	bltz	a1,12a6 <printint+0x94>
    1224:	2581                	sext.w	a1,a1
    1226:	4881                	li	a7,0
    1228:	868a                	mv	a3,sp
    122a:	4701                	li	a4,0
    122c:	2601                	sext.w	a2,a2
    122e:	00002537          	lui	a0,0x2
    1232:	01850513          	addi	a0,a0,24 # 2018 <digits>
    1236:	883a                	mv	a6,a4
    1238:	2705                	addiw	a4,a4,1
    123a:	02c5f7bb          	remuw	a5,a1,a2
    123e:	1782                	slli	a5,a5,0x20
    1240:	9381                	srli	a5,a5,0x20
    1242:	97aa                	add	a5,a5,a0
    1244:	0007c783          	lbu	a5,0(a5)
    1248:	00f68023          	sb	a5,0(a3)
    124c:	0005879b          	sext.w	a5,a1
    1250:	02c5d5bb          	divuw	a1,a1,a2
    1254:	0685                	addi	a3,a3,1
    1256:	fec7f0e3          	bgeu	a5,a2,1236 <printint+0x24>
    125a:	00088a63          	beqz	a7,126e <printint+0x5c>
    125e:	081c                	addi	a5,sp,16
    1260:	973e                	add	a4,a4,a5
    1262:	02d00793          	li	a5,45
    1266:	fef70823          	sb	a5,-16(a4)
    126a:	0028071b          	addiw	a4,a6,2
    126e:	02e05663          	blez	a4,129a <printint+0x88>
    1272:	00e10433          	add	s0,sp,a4
    1276:	fff10913          	addi	s2,sp,-1
    127a:	993a                	add	s2,s2,a4
    127c:	377d                	addiw	a4,a4,-1
    127e:	1702                	slli	a4,a4,0x20
    1280:	9301                	srli	a4,a4,0x20
    1282:	40e90933          	sub	s2,s2,a4
    1286:	fff44583          	lbu	a1,-1(s0)
    128a:	8526                	mv	a0,s1
    128c:	00000097          	auipc	ra,0x0
    1290:	f6a080e7          	jalr	-150(ra) # 11f6 <putc>
    1294:	147d                	addi	s0,s0,-1
    1296:	ff2418e3          	bne	s0,s2,1286 <printint+0x74>
    129a:	70a2                	ld	ra,40(sp)
    129c:	7402                	ld	s0,32(sp)
    129e:	64e2                	ld	s1,24(sp)
    12a0:	6942                	ld	s2,16(sp)
    12a2:	6145                	addi	sp,sp,48
    12a4:	8082                	ret
    12a6:	40b005bb          	negw	a1,a1
    12aa:	4885                	li	a7,1
    12ac:	bfb5                	j	1228 <printint+0x16>

00000000000012ae <vprintf>:
    12ae:	7159                	addi	sp,sp,-112
    12b0:	f486                	sd	ra,104(sp)
    12b2:	f0a2                	sd	s0,96(sp)
    12b4:	eca6                	sd	s1,88(sp)
    12b6:	e8ca                	sd	s2,80(sp)
    12b8:	e4ce                	sd	s3,72(sp)
    12ba:	e0d2                	sd	s4,64(sp)
    12bc:	fc56                	sd	s5,56(sp)
    12be:	f85a                	sd	s6,48(sp)
    12c0:	f45e                	sd	s7,40(sp)
    12c2:	f062                	sd	s8,32(sp)
    12c4:	ec66                	sd	s9,24(sp)
    12c6:	e86a                	sd	s10,16(sp)
    12c8:	e46e                	sd	s11,8(sp)
    12ca:	0005c483          	lbu	s1,0(a1)
    12ce:	18048a63          	beqz	s1,1462 <vprintf+0x1b4>
    12d2:	8a2a                	mv	s4,a0
    12d4:	8ab2                	mv	s5,a2
    12d6:	00158413          	addi	s0,a1,1
    12da:	4901                	li	s2,0
    12dc:	02500993          	li	s3,37
    12e0:	06400b93          	li	s7,100
    12e4:	06c00c13          	li	s8,108
    12e8:	07800c93          	li	s9,120
    12ec:	07000d13          	li	s10,112
    12f0:	00002db7          	lui	s11,0x2
    12f4:	00002b37          	lui	s6,0x2
    12f8:	018b0b13          	addi	s6,s6,24 # 2018 <digits>
    12fc:	a839                	j	131a <vprintf+0x6c>
    12fe:	85a6                	mv	a1,s1
    1300:	8552                	mv	a0,s4
    1302:	00000097          	auipc	ra,0x0
    1306:	ef4080e7          	jalr	-268(ra) # 11f6 <putc>
    130a:	a019                	j	1310 <vprintf+0x62>
    130c:	01390f63          	beq	s2,s3,132a <vprintf+0x7c>
    1310:	0405                	addi	s0,s0,1
    1312:	fff44483          	lbu	s1,-1(s0)
    1316:	14048663          	beqz	s1,1462 <vprintf+0x1b4>
    131a:	0004879b          	sext.w	a5,s1
    131e:	fe0917e3          	bnez	s2,130c <vprintf+0x5e>
    1322:	fd379ee3          	bne	a5,s3,12fe <vprintf+0x50>
    1326:	893e                	mv	s2,a5
    1328:	b7e5                	j	1310 <vprintf+0x62>
    132a:	05778063          	beq	a5,s7,136a <vprintf+0xbc>
    132e:	05878c63          	beq	a5,s8,1386 <vprintf+0xd8>
    1332:	07978863          	beq	a5,s9,13a2 <vprintf+0xf4>
    1336:	09a78463          	beq	a5,s10,13be <vprintf+0x110>
    133a:	07300713          	li	a4,115
    133e:	0ce78263          	beq	a5,a4,1402 <vprintf+0x154>
    1342:	06300713          	li	a4,99
    1346:	0ee78763          	beq	a5,a4,1434 <vprintf+0x186>
    134a:	11378163          	beq	a5,s3,144c <vprintf+0x19e>
    134e:	85ce                	mv	a1,s3
    1350:	8552                	mv	a0,s4
    1352:	00000097          	auipc	ra,0x0
    1356:	ea4080e7          	jalr	-348(ra) # 11f6 <putc>
    135a:	85a6                	mv	a1,s1
    135c:	8552                	mv	a0,s4
    135e:	00000097          	auipc	ra,0x0
    1362:	e98080e7          	jalr	-360(ra) # 11f6 <putc>
    1366:	4901                	li	s2,0
    1368:	b765                	j	1310 <vprintf+0x62>
    136a:	008a8493          	addi	s1,s5,8
    136e:	4685                	li	a3,1
    1370:	4629                	li	a2,10
    1372:	000aa583          	lw	a1,0(s5)
    1376:	8552                	mv	a0,s4
    1378:	00000097          	auipc	ra,0x0
    137c:	e9a080e7          	jalr	-358(ra) # 1212 <printint>
    1380:	8aa6                	mv	s5,s1
    1382:	4901                	li	s2,0
    1384:	b771                	j	1310 <vprintf+0x62>
    1386:	008a8493          	addi	s1,s5,8
    138a:	4681                	li	a3,0
    138c:	4629                	li	a2,10
    138e:	000aa583          	lw	a1,0(s5)
    1392:	8552                	mv	a0,s4
    1394:	00000097          	auipc	ra,0x0
    1398:	e7e080e7          	jalr	-386(ra) # 1212 <printint>
    139c:	8aa6                	mv	s5,s1
    139e:	4901                	li	s2,0
    13a0:	bf85                	j	1310 <vprintf+0x62>
    13a2:	008a8493          	addi	s1,s5,8
    13a6:	4681                	li	a3,0
    13a8:	4641                	li	a2,16
    13aa:	000aa583          	lw	a1,0(s5)
    13ae:	8552                	mv	a0,s4
    13b0:	00000097          	auipc	ra,0x0
    13b4:	e62080e7          	jalr	-414(ra) # 1212 <printint>
    13b8:	8aa6                	mv	s5,s1
    13ba:	4901                	li	s2,0
    13bc:	bf91                	j	1310 <vprintf+0x62>
    13be:	008a8913          	addi	s2,s5,8
    13c2:	000aba83          	ld	s5,0(s5)
    13c6:	03000593          	li	a1,48
    13ca:	8552                	mv	a0,s4
    13cc:	00000097          	auipc	ra,0x0
    13d0:	e2a080e7          	jalr	-470(ra) # 11f6 <putc>
    13d4:	85e6                	mv	a1,s9
    13d6:	8552                	mv	a0,s4
    13d8:	00000097          	auipc	ra,0x0
    13dc:	e1e080e7          	jalr	-482(ra) # 11f6 <putc>
    13e0:	44c1                	li	s1,16
    13e2:	03cad793          	srli	a5,s5,0x3c
    13e6:	97da                	add	a5,a5,s6
    13e8:	0007c583          	lbu	a1,0(a5)
    13ec:	8552                	mv	a0,s4
    13ee:	00000097          	auipc	ra,0x0
    13f2:	e08080e7          	jalr	-504(ra) # 11f6 <putc>
    13f6:	0a92                	slli	s5,s5,0x4
    13f8:	34fd                	addiw	s1,s1,-1
    13fa:	f4e5                	bnez	s1,13e2 <vprintf+0x134>
    13fc:	8aca                	mv	s5,s2
    13fe:	4901                	li	s2,0
    1400:	bf01                	j	1310 <vprintf+0x62>
    1402:	008a8913          	addi	s2,s5,8
    1406:	000ab483          	ld	s1,0(s5)
    140a:	c085                	beqz	s1,142a <vprintf+0x17c>
    140c:	0004c583          	lbu	a1,0(s1)
    1410:	c5b1                	beqz	a1,145c <vprintf+0x1ae>
    1412:	8552                	mv	a0,s4
    1414:	00000097          	auipc	ra,0x0
    1418:	de2080e7          	jalr	-542(ra) # 11f6 <putc>
    141c:	0485                	addi	s1,s1,1
    141e:	0004c583          	lbu	a1,0(s1)
    1422:	f9e5                	bnez	a1,1412 <vprintf+0x164>
    1424:	8aca                	mv	s5,s2
    1426:	4901                	li	s2,0
    1428:	b5e5                	j	1310 <vprintf+0x62>
    142a:	010d8493          	addi	s1,s11,16 # 2010 <mkdir+0x23c>
    142e:	02800593          	li	a1,40
    1432:	b7c5                	j	1412 <vprintf+0x164>
    1434:	008a8493          	addi	s1,s5,8
    1438:	000ac583          	lbu	a1,0(s5)
    143c:	8552                	mv	a0,s4
    143e:	00000097          	auipc	ra,0x0
    1442:	db8080e7          	jalr	-584(ra) # 11f6 <putc>
    1446:	8aa6                	mv	s5,s1
    1448:	4901                	li	s2,0
    144a:	b5d9                	j	1310 <vprintf+0x62>
    144c:	85ce                	mv	a1,s3
    144e:	8552                	mv	a0,s4
    1450:	00000097          	auipc	ra,0x0
    1454:	da6080e7          	jalr	-602(ra) # 11f6 <putc>
    1458:	4901                	li	s2,0
    145a:	bd5d                	j	1310 <vprintf+0x62>
    145c:	8aca                	mv	s5,s2
    145e:	4901                	li	s2,0
    1460:	bd45                	j	1310 <vprintf+0x62>
    1462:	70a6                	ld	ra,104(sp)
    1464:	7406                	ld	s0,96(sp)
    1466:	64e6                	ld	s1,88(sp)
    1468:	6946                	ld	s2,80(sp)
    146a:	69a6                	ld	s3,72(sp)
    146c:	6a06                	ld	s4,64(sp)
    146e:	7ae2                	ld	s5,56(sp)
    1470:	7b42                	ld	s6,48(sp)
    1472:	7ba2                	ld	s7,40(sp)
    1474:	7c02                	ld	s8,32(sp)
    1476:	6ce2                	ld	s9,24(sp)
    1478:	6d42                	ld	s10,16(sp)
    147a:	6da2                	ld	s11,8(sp)
    147c:	6165                	addi	sp,sp,112
    147e:	8082                	ret

0000000000001480 <fprintf>:
    1480:	715d                	addi	sp,sp,-80
    1482:	ec06                	sd	ra,24(sp)
    1484:	f032                	sd	a2,32(sp)
    1486:	f436                	sd	a3,40(sp)
    1488:	f83a                	sd	a4,48(sp)
    148a:	fc3e                	sd	a5,56(sp)
    148c:	e0c2                	sd	a6,64(sp)
    148e:	e4c6                	sd	a7,72(sp)
    1490:	1010                	addi	a2,sp,32
    1492:	e432                	sd	a2,8(sp)
    1494:	00000097          	auipc	ra,0x0
    1498:	e1a080e7          	jalr	-486(ra) # 12ae <vprintf>
    149c:	60e2                	ld	ra,24(sp)
    149e:	6161                	addi	sp,sp,80
    14a0:	8082                	ret

00000000000014a2 <printf>:
    14a2:	711d                	addi	sp,sp,-96
    14a4:	ec06                	sd	ra,24(sp)
    14a6:	f42e                	sd	a1,40(sp)
    14a8:	f832                	sd	a2,48(sp)
    14aa:	fc36                	sd	a3,56(sp)
    14ac:	e0ba                	sd	a4,64(sp)
    14ae:	e4be                	sd	a5,72(sp)
    14b0:	e8c2                	sd	a6,80(sp)
    14b2:	ecc6                	sd	a7,88(sp)
    14b4:	1030                	addi	a2,sp,40
    14b6:	e432                	sd	a2,8(sp)
    14b8:	85aa                	mv	a1,a0
    14ba:	4505                	li	a0,1
    14bc:	00000097          	auipc	ra,0x0
    14c0:	df2080e7          	jalr	-526(ra) # 12ae <vprintf>
    14c4:	60e2                	ld	ra,24(sp)
    14c6:	6125                	addi	sp,sp,96
    14c8:	8082                	ret

00000000000014ca <cksum>:
    14ca:	cdb1                	beqz	a1,1526 <cksum+0x5c>
    14cc:	00b50833          	add	a6,a0,a1
    14d0:	4781                	li	a5,0
    14d2:	00002637          	lui	a2,0x2
    14d6:	03060613          	addi	a2,a2,48 # 2030 <crctab>
    14da:	0505                	addi	a0,a0,1
    14dc:	0087969b          	slliw	a3,a5,0x8
    14e0:	0187d71b          	srliw	a4,a5,0x18
    14e4:	fff54783          	lbu	a5,-1(a0)
    14e8:	8f3d                	xor	a4,a4,a5
    14ea:	1702                	slli	a4,a4,0x20
    14ec:	9301                	srli	a4,a4,0x20
    14ee:	070a                	slli	a4,a4,0x2
    14f0:	9732                	add	a4,a4,a2
    14f2:	431c                	lw	a5,0(a4)
    14f4:	8fb5                	xor	a5,a5,a3
    14f6:	2781                	sext.w	a5,a5
    14f8:	fea811e3          	bne	a6,a0,14da <cksum+0x10>
    14fc:	00002637          	lui	a2,0x2
    1500:	03060613          	addi	a2,a2,48 # 2030 <crctab>
    1504:	0ff5f693          	andi	a3,a1,255
    1508:	81a1                	srli	a1,a1,0x8
    150a:	0087951b          	slliw	a0,a5,0x8
    150e:	0187d71b          	srliw	a4,a5,0x18
    1512:	8f35                	xor	a4,a4,a3
    1514:	070a                	slli	a4,a4,0x2
    1516:	9732                	add	a4,a4,a2
    1518:	431c                	lw	a5,0(a4)
    151a:	8fa9                	xor	a5,a5,a0
    151c:	2781                	sext.w	a5,a5
    151e:	f1fd                	bnez	a1,1504 <cksum+0x3a>
    1520:	fff7c513          	not	a0,a5
    1524:	8082                	ret
    1526:	4781                	li	a5,0
    1528:	bfe5                	j	1520 <cksum+0x56>

000000000000152a <swap_bytes>:
    152a:	ce19                	beqz	a2,1548 <swap_bytes+0x1e>
    152c:	87aa                	mv	a5,a0
    152e:	962a                	add	a2,a2,a0
    1530:	0007c703          	lbu	a4,0(a5)
    1534:	0005c683          	lbu	a3,0(a1)
    1538:	00d78023          	sb	a3,0(a5)
    153c:	00e58023          	sb	a4,0(a1)
    1540:	0785                	addi	a5,a5,1
    1542:	0585                	addi	a1,a1,1
    1544:	fec796e3          	bne	a5,a2,1530 <swap_bytes+0x6>
    1548:	8082                	ret

000000000000154a <random_init>:
    154a:	7139                	addi	sp,sp,-64
    154c:	fc06                	sd	ra,56(sp)
    154e:	f822                	sd	s0,48(sp)
    1550:	f426                	sd	s1,40(sp)
    1552:	f04a                	sd	s2,32(sp)
    1554:	ec4e                	sd	s3,24(sp)
    1556:	e852                	sd	s4,16(sp)
    1558:	c62a                	sw	a0,12(sp)
    155a:	000037b7          	lui	a5,0x3
    155e:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1562:	eca5                	bnez	s1,15da <random_init+0x90>
    1564:	00003737          	lui	a4,0x3
    1568:	01070913          	addi	s2,a4,16 # 3010 <s>
    156c:	01070713          	addi	a4,a4,16
    1570:	87a6                	mv	a5,s1
    1572:	10000693          	li	a3,256
    1576:	00f70023          	sb	a5,0(a4)
    157a:	2785                	addiw	a5,a5,1
    157c:	0705                	addi	a4,a4,1
    157e:	fed79ce3          	bne	a5,a3,1576 <random_init+0x2c>
    1582:	4401                	li	s0,0
    1584:	000039b7          	lui	s3,0x3
    1588:	01098993          	addi	s3,s3,16 # 3010 <s>
    158c:	10000a13          	li	s4,256
    1590:	0034f793          	andi	a5,s1,3
    1594:	0818                	addi	a4,sp,16
    1596:	97ba                	add	a5,a5,a4
    1598:	ffc7c783          	lbu	a5,-4(a5)
    159c:	00094703          	lbu	a4,0(s2)
    15a0:	9fb9                	addw	a5,a5,a4
    15a2:	9c3d                	addw	s0,s0,a5
    15a4:	0ff47413          	andi	s0,s0,255
    15a8:	4605                	li	a2,1
    15aa:	008985b3          	add	a1,s3,s0
    15ae:	854a                	mv	a0,s2
    15b0:	00000097          	auipc	ra,0x0
    15b4:	f7a080e7          	jalr	-134(ra) # 152a <swap_bytes>
    15b8:	2485                	addiw	s1,s1,1
    15ba:	0905                	addi	s2,s2,1
    15bc:	fd449ae3          	bne	s1,s4,1590 <random_init+0x46>
    15c0:	000037b7          	lui	a5,0x3
    15c4:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    15c8:	000037b7          	lui	a5,0x3
    15cc:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    15d0:	000037b7          	lui	a5,0x3
    15d4:	4705                	li	a4,1
    15d6:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    15da:	70e2                	ld	ra,56(sp)
    15dc:	7442                	ld	s0,48(sp)
    15de:	74a2                	ld	s1,40(sp)
    15e0:	7902                	ld	s2,32(sp)
    15e2:	69e2                	ld	s3,24(sp)
    15e4:	6a42                	ld	s4,16(sp)
    15e6:	6121                	addi	sp,sp,64
    15e8:	8082                	ret

00000000000015ea <random_bytes>:
    15ea:	7139                	addi	sp,sp,-64
    15ec:	fc06                	sd	ra,56(sp)
    15ee:	f822                	sd	s0,48(sp)
    15f0:	f426                	sd	s1,40(sp)
    15f2:	f04a                	sd	s2,32(sp)
    15f4:	ec4e                	sd	s3,24(sp)
    15f6:	e852                	sd	s4,16(sp)
    15f8:	e456                	sd	s5,8(sp)
    15fa:	e05a                	sd	s6,0(sp)
    15fc:	892a                	mv	s2,a0
    15fe:	8aae                	mv	s5,a1
    1600:	000037b7          	lui	a5,0x3
    1604:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1608:	c3c1                	beqz	a5,1688 <random_bytes+0x9e>
    160a:	060a8563          	beqz	s5,1674 <random_bytes+0x8a>
    160e:	9aca                	add	s5,s5,s2
    1610:	00003a37          	lui	s4,0x3
    1614:	000034b7          	lui	s1,0x3
    1618:	01048493          	addi	s1,s1,16 # 3010 <s>
    161c:	000039b7          	lui	s3,0x3
    1620:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1624:	2505                	addiw	a0,a0,1
    1626:	0ff57513          	andi	a0,a0,255
    162a:	00aa02a3          	sb	a0,5(s4)
    162e:	00a48b33          	add	s6,s1,a0
    1632:	000b4403          	lbu	s0,0(s6)
    1636:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    163a:	9c3d                	addw	s0,s0,a5
    163c:	0ff47413          	andi	s0,s0,255
    1640:	00898223          	sb	s0,4(s3)
    1644:	4605                	li	a2,1
    1646:	008485b3          	add	a1,s1,s0
    164a:	855a                	mv	a0,s6
    164c:	00000097          	auipc	ra,0x0
    1650:	ede080e7          	jalr	-290(ra) # 152a <swap_bytes>
    1654:	9426                	add	s0,s0,s1
    1656:	000b4783          	lbu	a5,0(s6)
    165a:	00044703          	lbu	a4,0(s0)
    165e:	9fb9                	addw	a5,a5,a4
    1660:	0ff7f793          	andi	a5,a5,255
    1664:	97a6                	add	a5,a5,s1
    1666:	0007c783          	lbu	a5,0(a5)
    166a:	00f90023          	sb	a5,0(s2)
    166e:	0905                	addi	s2,s2,1
    1670:	fb2a98e3          	bne	s5,s2,1620 <random_bytes+0x36>
    1674:	70e2                	ld	ra,56(sp)
    1676:	7442                	ld	s0,48(sp)
    1678:	74a2                	ld	s1,40(sp)
    167a:	7902                	ld	s2,32(sp)
    167c:	69e2                	ld	s3,24(sp)
    167e:	6a42                	ld	s4,16(sp)
    1680:	6aa2                	ld	s5,8(sp)
    1682:	6b02                	ld	s6,0(sp)
    1684:	6121                	addi	sp,sp,64
    1686:	8082                	ret
    1688:	4501                	li	a0,0
    168a:	00000097          	auipc	ra,0x0
    168e:	ec0080e7          	jalr	-320(ra) # 154a <random_init>
    1692:	bfa5                	j	160a <random_bytes+0x20>

0000000000001694 <random_ulong>:
    1694:	1101                	addi	sp,sp,-32
    1696:	ec06                	sd	ra,24(sp)
    1698:	45a1                	li	a1,8
    169a:	0028                	addi	a0,sp,8
    169c:	00000097          	auipc	ra,0x0
    16a0:	f4e080e7          	jalr	-178(ra) # 15ea <random_bytes>
    16a4:	6522                	ld	a0,8(sp)
    16a6:	60e2                	ld	ra,24(sp)
    16a8:	6105                	addi	sp,sp,32
    16aa:	8082                	ret

00000000000016ac <shuffle>:
    16ac:	c9b9                	beqz	a1,1702 <shuffle+0x56>
    16ae:	7179                	addi	sp,sp,-48
    16b0:	f406                	sd	ra,40(sp)
    16b2:	f022                	sd	s0,32(sp)
    16b4:	ec26                	sd	s1,24(sp)
    16b6:	e84a                	sd	s2,16(sp)
    16b8:	e44e                	sd	s3,8(sp)
    16ba:	e052                	sd	s4,0(sp)
    16bc:	8a2a                	mv	s4,a0
    16be:	89ae                	mv	s3,a1
    16c0:	84b2                	mv	s1,a2
    16c2:	892a                	mv	s2,a0
    16c4:	4401                	li	s0,0
    16c6:	00000097          	auipc	ra,0x0
    16ca:	fce080e7          	jalr	-50(ra) # 1694 <random_ulong>
    16ce:	408985b3          	sub	a1,s3,s0
    16d2:	02b575b3          	remu	a1,a0,a1
    16d6:	95a2                	add	a1,a1,s0
    16d8:	029585b3          	mul	a1,a1,s1
    16dc:	8626                	mv	a2,s1
    16de:	95d2                	add	a1,a1,s4
    16e0:	854a                	mv	a0,s2
    16e2:	00000097          	auipc	ra,0x0
    16e6:	e48080e7          	jalr	-440(ra) # 152a <swap_bytes>
    16ea:	0405                	addi	s0,s0,1
    16ec:	9926                	add	s2,s2,s1
    16ee:	fc899ce3          	bne	s3,s0,16c6 <shuffle+0x1a>
    16f2:	70a2                	ld	ra,40(sp)
    16f4:	7402                	ld	s0,32(sp)
    16f6:	64e2                	ld	s1,24(sp)
    16f8:	6942                	ld	s2,16(sp)
    16fa:	69a2                	ld	s3,8(sp)
    16fc:	6a02                	ld	s4,0(sp)
    16fe:	6145                	addi	sp,sp,48
    1700:	8082                	ret
    1702:	8082                	ret

0000000000001704 <arc4_init>:
    1704:	100500a3          	sb	zero,257(a0)
    1708:	10050023          	sb	zero,256(a0)
    170c:	4781                	li	a5,0
    170e:	10000693          	li	a3,256
    1712:	00f50733          	add	a4,a0,a5
    1716:	00f70023          	sb	a5,0(a4)
    171a:	0785                	addi	a5,a5,1
    171c:	fed79be3          	bne	a5,a3,1712 <arc4_init+0xe>
    1720:	86aa                	mv	a3,a0
    1722:	10050e13          	addi	t3,a0,256
    1726:	4701                	li	a4,0
    1728:	4781                	li	a5,0
    172a:	0006c883          	lbu	a7,0(a3)
    172e:	00f58833          	add	a6,a1,a5
    1732:	00084803          	lbu	a6,0(a6)
    1736:	00e8873b          	addw	a4,a7,a4
    173a:	00e8073b          	addw	a4,a6,a4
    173e:	0ff77713          	andi	a4,a4,255
    1742:	00e50833          	add	a6,a0,a4
    1746:	00084303          	lbu	t1,0(a6)
    174a:	00668023          	sb	t1,0(a3)
    174e:	01180023          	sb	a7,0(a6)
    1752:	0785                	addi	a5,a5,1
    1754:	00c7b833          	sltu	a6,a5,a2
    1758:	41000833          	neg	a6,a6
    175c:	0107f7b3          	and	a5,a5,a6
    1760:	0685                	addi	a3,a3,1
    1762:	fdc694e3          	bne	a3,t3,172a <arc4_init+0x26>
    1766:	8082                	ret

0000000000001768 <arc4_crypt>:
    1768:	10054e03          	lbu	t3,256(a0)
    176c:	10154803          	lbu	a6,257(a0)
    1770:	fff60e93          	addi	t4,a2,-1
    1774:	c225                	beqz	a2,17d4 <arc4_crypt+0x6c>
    1776:	00c588b3          	add	a7,a1,a2
    177a:	86ae                	mv	a3,a1
    177c:	001e031b          	addiw	t1,t3,1
    1780:	40b3033b          	subw	t1,t1,a1
    1784:	00d3073b          	addw	a4,t1,a3
    1788:	0ff77713          	andi	a4,a4,255
    178c:	972a                	add	a4,a4,a0
    178e:	00074603          	lbu	a2,0(a4)
    1792:	0106083b          	addw	a6,a2,a6
    1796:	0ff87813          	andi	a6,a6,255
    179a:	010507b3          	add	a5,a0,a6
    179e:	0007c583          	lbu	a1,0(a5)
    17a2:	00b70023          	sb	a1,0(a4)
    17a6:	00c78023          	sb	a2,0(a5)
    17aa:	0685                	addi	a3,a3,1
    17ac:	00074783          	lbu	a5,0(a4)
    17b0:	9fb1                	addw	a5,a5,a2
    17b2:	0ff7f793          	andi	a5,a5,255
    17b6:	97aa                	add	a5,a5,a0
    17b8:	0007c783          	lbu	a5,0(a5)
    17bc:	fff6c703          	lbu	a4,-1(a3)
    17c0:	8fb9                	xor	a5,a5,a4
    17c2:	fef68fa3          	sb	a5,-1(a3)
    17c6:	fb169fe3          	bne	a3,a7,1784 <arc4_crypt+0x1c>
    17ca:	2e85                	addiw	t4,t4,1
    17cc:	01ce8e3b          	addw	t3,t4,t3
    17d0:	0ffe7e13          	andi	t3,t3,255
    17d4:	11c50023          	sb	t3,256(a0)
    17d8:	110500a3          	sb	a6,257(a0)
    17dc:	8082                	ret

00000000000017de <_main>:
    17de:	1141                	addi	sp,sp,-16
    17e0:	e406                	sd	ra,8(sp)
    17e2:	00000097          	auipc	ra,0x0
    17e6:	81e080e7          	jalr	-2018(ra) # 1000 <main>
    17ea:	4501                	li	a0,0
    17ec:	00000097          	auipc	ra,0x0
    17f0:	578080e7          	jalr	1400(ra) # 1d64 <exit>
    17f4:	60a2                	ld	ra,8(sp)
    17f6:	0141                	addi	sp,sp,16
    17f8:	8082                	ret

00000000000017fa <strcmp>:
    17fa:	00054783          	lbu	a5,0(a0)
    17fe:	cb91                	beqz	a5,1812 <strcmp+0x18>
    1800:	0005c703          	lbu	a4,0(a1)
    1804:	00f71763          	bne	a4,a5,1812 <strcmp+0x18>
    1808:	0505                	addi	a0,a0,1
    180a:	0585                	addi	a1,a1,1
    180c:	00054783          	lbu	a5,0(a0)
    1810:	fbe5                	bnez	a5,1800 <strcmp+0x6>
    1812:	0005c503          	lbu	a0,0(a1)
    1816:	40a7853b          	subw	a0,a5,a0
    181a:	8082                	ret

000000000000181c <strcpy>:
    181c:	87aa                	mv	a5,a0
    181e:	0585                	addi	a1,a1,1
    1820:	0785                	addi	a5,a5,1
    1822:	fff5c703          	lbu	a4,-1(a1)
    1826:	fee78fa3          	sb	a4,-1(a5)
    182a:	fb75                	bnez	a4,181e <strcpy+0x2>
    182c:	8082                	ret

000000000000182e <strlen>:
    182e:	00054783          	lbu	a5,0(a0)
    1832:	cf81                	beqz	a5,184a <strlen+0x1c>
    1834:	0505                	addi	a0,a0,1
    1836:	87aa                	mv	a5,a0
    1838:	4685                	li	a3,1
    183a:	9e89                	subw	a3,a3,a0
    183c:	00f6853b          	addw	a0,a3,a5
    1840:	0785                	addi	a5,a5,1
    1842:	fff7c703          	lbu	a4,-1(a5)
    1846:	fb7d                	bnez	a4,183c <strlen+0xe>
    1848:	8082                	ret
    184a:	4501                	li	a0,0
    184c:	8082                	ret

000000000000184e <memset>:
    184e:	ca19                	beqz	a2,1864 <memset+0x16>
    1850:	87aa                	mv	a5,a0
    1852:	1602                	slli	a2,a2,0x20
    1854:	9201                	srli	a2,a2,0x20
    1856:	00a60733          	add	a4,a2,a0
    185a:	00b78023          	sb	a1,0(a5)
    185e:	0785                	addi	a5,a5,1
    1860:	fee79de3          	bne	a5,a4,185a <memset+0xc>
    1864:	8082                	ret

0000000000001866 <memcmp>:
    1866:	1101                	addi	sp,sp,-32
    1868:	ec06                	sd	ra,24(sp)
    186a:	e822                	sd	s0,16(sp)
    186c:	e426                	sd	s1,8(sp)
    186e:	e04a                	sd	s2,0(sp)
    1870:	892a                	mv	s2,a0
    1872:	842e                	mv	s0,a1
    1874:	84b2                	mv	s1,a2
    1876:	c915                	beqz	a0,18aa <memcmp+0x44>
    1878:	c5ad                	beqz	a1,18e2 <memcmp+0x7c>
    187a:	fff60713          	addi	a4,a2,-1
    187e:	c645                	beqz	a2,1926 <memcmp+0xc0>
    1880:	87ca                	mv	a5,s2
    1882:	00190613          	addi	a2,s2,1
    1886:	963a                	add	a2,a2,a4
    1888:	0007c683          	lbu	a3,0(a5)
    188c:	00044703          	lbu	a4,0(s0)
    1890:	08e69463          	bne	a3,a4,1918 <memcmp+0xb2>
    1894:	0785                	addi	a5,a5,1
    1896:	0405                	addi	s0,s0,1
    1898:	fec798e3          	bne	a5,a2,1888 <memcmp+0x22>
    189c:	4501                	li	a0,0
    189e:	60e2                	ld	ra,24(sp)
    18a0:	6442                	ld	s0,16(sp)
    18a2:	64a2                	ld	s1,8(sp)
    18a4:	6902                	ld	s2,0(sp)
    18a6:	6105                	addi	sp,sp,32
    18a8:	8082                	ret
    18aa:	4501                	li	a0,0
    18ac:	da6d                	beqz	a2,189e <memcmp+0x38>
    18ae:	03200693          	li	a3,50
    18b2:	00002637          	lui	a2,0x2
    18b6:	43060613          	addi	a2,a2,1072 # 2430 <crctab+0x400>
    18ba:	000025b7          	lui	a1,0x2
    18be:	44058593          	addi	a1,a1,1088 # 2440 <crctab+0x410>
    18c2:	4509                	li	a0,2
    18c4:	00000097          	auipc	ra,0x0
    18c8:	bbc080e7          	jalr	-1092(ra) # 1480 <fprintf>
    18cc:	650d                	lui	a0,0x3
    18ce:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18d2:	00000097          	auipc	ra,0x0
    18d6:	492080e7          	jalr	1170(ra) # 1d64 <exit>
    18da:	fff48713          	addi	a4,s1,-1
    18de:	f04d                	bnez	s0,1880 <memcmp+0x1a>
    18e0:	a011                	j	18e4 <memcmp+0x7e>
    18e2:	c221                	beqz	a2,1922 <memcmp+0xbc>
    18e4:	03300693          	li	a3,51
    18e8:	00002637          	lui	a2,0x2
    18ec:	43060613          	addi	a2,a2,1072 # 2430 <crctab+0x400>
    18f0:	000025b7          	lui	a1,0x2
    18f4:	48858593          	addi	a1,a1,1160 # 2488 <crctab+0x458>
    18f8:	4509                	li	a0,2
    18fa:	00000097          	auipc	ra,0x0
    18fe:	b86080e7          	jalr	-1146(ra) # 1480 <fprintf>
    1902:	650d                	lui	a0,0x3
    1904:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1908:	00000097          	auipc	ra,0x0
    190c:	45c080e7          	jalr	1116(ra) # 1d64 <exit>
    1910:	fff48713          	addi	a4,s1,-1
    1914:	4401                	li	s0,0
    1916:	b7ad                	j	1880 <memcmp+0x1a>
    1918:	4505                	li	a0,1
    191a:	f8d762e3          	bltu	a4,a3,189e <memcmp+0x38>
    191e:	557d                	li	a0,-1
    1920:	bfbd                	j	189e <memcmp+0x38>
    1922:	4501                	li	a0,0
    1924:	bfad                	j	189e <memcmp+0x38>
    1926:	4501                	li	a0,0
    1928:	bf9d                	j	189e <memcmp+0x38>

000000000000192a <memcpy>:
    192a:	1101                	addi	sp,sp,-32
    192c:	ec06                	sd	ra,24(sp)
    192e:	e822                	sd	s0,16(sp)
    1930:	e426                	sd	s1,8(sp)
    1932:	e04a                	sd	s2,0(sp)
    1934:	84aa                	mv	s1,a0
    1936:	842e                	mv	s0,a1
    1938:	8932                	mv	s2,a2
    193a:	c51d                	beqz	a0,1968 <memcpy+0x3e>
    193c:	c1ad                	beqz	a1,199e <memcpy+0x74>
    193e:	fff60693          	addi	a3,a2,-1
    1942:	ce01                	beqz	a2,195a <memcpy+0x30>
    1944:	0685                	addi	a3,a3,1
    1946:	96a6                	add	a3,a3,s1
    1948:	87a6                	mv	a5,s1
    194a:	0405                	addi	s0,s0,1
    194c:	0785                	addi	a5,a5,1
    194e:	fff44703          	lbu	a4,-1(s0)
    1952:	fee78fa3          	sb	a4,-1(a5)
    1956:	fed79ae3          	bne	a5,a3,194a <memcpy+0x20>
    195a:	8526                	mv	a0,s1
    195c:	60e2                	ld	ra,24(sp)
    195e:	6442                	ld	s0,16(sp)
    1960:	64a2                	ld	s1,8(sp)
    1962:	6902                	ld	s2,0(sp)
    1964:	6105                	addi	sp,sp,32
    1966:	8082                	ret
    1968:	da6d                	beqz	a2,195a <memcpy+0x30>
    196a:	04000693          	li	a3,64
    196e:	00002637          	lui	a2,0x2
    1972:	43060613          	addi	a2,a2,1072 # 2430 <crctab+0x400>
    1976:	000025b7          	lui	a1,0x2
    197a:	4d058593          	addi	a1,a1,1232 # 24d0 <crctab+0x4a0>
    197e:	4509                	li	a0,2
    1980:	00000097          	auipc	ra,0x0
    1984:	b00080e7          	jalr	-1280(ra) # 1480 <fprintf>
    1988:	650d                	lui	a0,0x3
    198a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    198e:	00000097          	auipc	ra,0x0
    1992:	3d6080e7          	jalr	982(ra) # 1d64 <exit>
    1996:	fff90693          	addi	a3,s2,-1
    199a:	f44d                	bnez	s0,1944 <memcpy+0x1a>
    199c:	a011                	j	19a0 <memcpy+0x76>
    199e:	de55                	beqz	a2,195a <memcpy+0x30>
    19a0:	04100693          	li	a3,65
    19a4:	00002637          	lui	a2,0x2
    19a8:	43060613          	addi	a2,a2,1072 # 2430 <crctab+0x400>
    19ac:	000025b7          	lui	a1,0x2
    19b0:	51858593          	addi	a1,a1,1304 # 2518 <crctab+0x4e8>
    19b4:	4509                	li	a0,2
    19b6:	00000097          	auipc	ra,0x0
    19ba:	aca080e7          	jalr	-1334(ra) # 1480 <fprintf>
    19be:	650d                	lui	a0,0x3
    19c0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19c4:	00000097          	auipc	ra,0x0
    19c8:	3a0080e7          	jalr	928(ra) # 1d64 <exit>
    19cc:	fff90693          	addi	a3,s2,-1
    19d0:	4401                	li	s0,0
    19d2:	bf8d                	j	1944 <memcpy+0x1a>

00000000000019d4 <itoa>:
    19d4:	1101                	addi	sp,sp,-32
    19d6:	ec06                	sd	ra,24(sp)
    19d8:	e822                	sd	s0,16(sp)
    19da:	e426                	sd	s1,8(sp)
    19dc:	842a                	mv	s0,a0
    19de:	41f5d71b          	sraiw	a4,a1,0x1f
    19e2:	00e5c7b3          	xor	a5,a1,a4
    19e6:	9f99                	subw	a5,a5,a4
    19e8:	84aa                	mv	s1,a0
    19ea:	862a                	mv	a2,a0
    19ec:	4681                	li	a3,0
    19ee:	4529                	li	a0,10
    19f0:	4825                	li	a6,9
    19f2:	88b6                	mv	a7,a3
    19f4:	2685                	addiw	a3,a3,1
    19f6:	02a7e73b          	remw	a4,a5,a0
    19fa:	0307071b          	addiw	a4,a4,48
    19fe:	00e60023          	sb	a4,0(a2)
    1a02:	873e                	mv	a4,a5
    1a04:	02a7c7bb          	divw	a5,a5,a0
    1a08:	0605                	addi	a2,a2,1
    1a0a:	fee844e3          	blt	a6,a4,19f2 <itoa+0x1e>
    1a0e:	0405c863          	bltz	a1,1a5e <itoa+0x8a>
    1a12:	96a2                	add	a3,a3,s0
    1a14:	00068023          	sb	zero,0(a3)
    1a18:	8522                	mv	a0,s0
    1a1a:	00000097          	auipc	ra,0x0
    1a1e:	e14080e7          	jalr	-492(ra) # 182e <strlen>
    1a22:	fff5071b          	addiw	a4,a0,-1
    1a26:	02e05763          	blez	a4,1a54 <itoa+0x80>
    1a2a:	9722                	add	a4,a4,s0
    1a2c:	4681                	li	a3,0
    1a2e:	0004c783          	lbu	a5,0(s1)
    1a32:	00074603          	lbu	a2,0(a4)
    1a36:	00c48023          	sb	a2,0(s1)
    1a3a:	00f70023          	sb	a5,0(a4)
    1a3e:	0016879b          	addiw	a5,a3,1
    1a42:	0007869b          	sext.w	a3,a5
    1a46:	0485                	addi	s1,s1,1
    1a48:	177d                	addi	a4,a4,-1
    1a4a:	fff7c793          	not	a5,a5
    1a4e:	9fa9                	addw	a5,a5,a0
    1a50:	fcf6cfe3          	blt	a3,a5,1a2e <itoa+0x5a>
    1a54:	60e2                	ld	ra,24(sp)
    1a56:	6442                	ld	s0,16(sp)
    1a58:	64a2                	ld	s1,8(sp)
    1a5a:	6105                	addi	sp,sp,32
    1a5c:	8082                	ret
    1a5e:	96a2                	add	a3,a3,s0
    1a60:	02d00793          	li	a5,45
    1a64:	00f68023          	sb	a5,0(a3)
    1a68:	0028869b          	addiw	a3,a7,2
    1a6c:	b75d                	j	1a12 <itoa+0x3e>

0000000000001a6e <atoi>:
    1a6e:	00054783          	lbu	a5,0(a0)
    1a72:	02000713          	li	a4,32
    1a76:	00e79763          	bne	a5,a4,1a84 <atoi+0x16>
    1a7a:	0505                	addi	a0,a0,1
    1a7c:	00054783          	lbu	a5,0(a0)
    1a80:	fee78de3          	beq	a5,a4,1a7a <atoi+0xc>
    1a84:	02b00713          	li	a4,43
    1a88:	04e78663          	beq	a5,a4,1ad4 <atoi+0x66>
    1a8c:	02d00713          	li	a4,45
    1a90:	4805                	li	a6,1
    1a92:	04e78463          	beq	a5,a4,1ada <atoi+0x6c>
    1a96:	00054683          	lbu	a3,0(a0)
    1a9a:	fd06879b          	addiw	a5,a3,-48
    1a9e:	0ff7f793          	andi	a5,a5,255
    1aa2:	4725                	li	a4,9
    1aa4:	02f76e63          	bltu	a4,a5,1ae0 <atoi+0x72>
    1aa8:	4601                	li	a2,0
    1aaa:	45a5                	li	a1,9
    1aac:	0505                	addi	a0,a0,1
    1aae:	0026179b          	slliw	a5,a2,0x2
    1ab2:	9fb1                	addw	a5,a5,a2
    1ab4:	0017979b          	slliw	a5,a5,0x1
    1ab8:	9fb5                	addw	a5,a5,a3
    1aba:	fd07861b          	addiw	a2,a5,-48
    1abe:	00054683          	lbu	a3,0(a0)
    1ac2:	fd06871b          	addiw	a4,a3,-48
    1ac6:	0ff77713          	andi	a4,a4,255
    1aca:	fee5f1e3          	bgeu	a1,a4,1aac <atoi+0x3e>
    1ace:	02c8053b          	mulw	a0,a6,a2
    1ad2:	8082                	ret
    1ad4:	0505                	addi	a0,a0,1
    1ad6:	4805                	li	a6,1
    1ad8:	bf7d                	j	1a96 <atoi+0x28>
    1ada:	0505                	addi	a0,a0,1
    1adc:	587d                	li	a6,-1
    1ade:	bf65                	j	1a96 <atoi+0x28>
    1ae0:	4601                	li	a2,0
    1ae2:	b7f5                	j	1ace <atoi+0x60>

0000000000001ae4 <check_file_handle>:
    1ae4:	d8010113          	addi	sp,sp,-640
    1ae8:	26113c23          	sd	ra,632(sp)
    1aec:	26813823          	sd	s0,624(sp)
    1af0:	26913423          	sd	s1,616(sp)
    1af4:	27213023          	sd	s2,608(sp)
    1af8:	25313c23          	sd	s3,600(sp)
    1afc:	25413823          	sd	s4,592(sp)
    1b00:	25513423          	sd	s5,584(sp)
    1b04:	25613023          	sd	s6,576(sp)
    1b08:	23713c23          	sd	s7,568(sp)
    1b0c:	23813823          	sd	s8,560(sp)
    1b10:	23913423          	sd	s9,552(sp)
    1b14:	23a13023          	sd	s10,544(sp)
    1b18:	21b13c23          	sd	s11,536(sp)
    1b1c:	8baa                	mv	s7,a0
    1b1e:	8a2e                	mv	s4,a1
    1b20:	8c32                	mv	s8,a2
    1b22:	89b6                	mv	s3,a3
    1b24:	040c                	addi	a1,sp,512
    1b26:	00000097          	auipc	ra,0x0
    1b2a:	28e080e7          	jalr	654(ra) # 1db4 <fstat>
    1b2e:	20813603          	ld	a2,520(sp)
    1b32:	03361163          	bne	a2,s3,1b54 <check_file_handle+0x70>
    1b36:	06098763          	beqz	s3,1ba4 <check_file_handle+0xc0>
    1b3a:	4901                	li	s2,0
    1b3c:	20000a93          	li	s5,512
    1b40:	00002cb7          	lui	s9,0x2
    1b44:	00002db7          	lui	s11,0x2
    1b48:	6b0d                	lui	s6,0x3
    1b4a:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1b4e:	00002d37          	lui	s10,0x2
    1b52:	aa39                	j	1c70 <check_file_handle+0x18c>
    1b54:	86ce                	mv	a3,s3
    1b56:	85d2                	mv	a1,s4
    1b58:	00002537          	lui	a0,0x2
    1b5c:	56050513          	addi	a0,a0,1376 # 2560 <crctab+0x530>
    1b60:	00000097          	auipc	ra,0x0
    1b64:	942080e7          	jalr	-1726(ra) # 14a2 <printf>
    1b68:	fc0999e3          	bnez	s3,1b3a <check_file_handle+0x56>
    1b6c:	20813683          	ld	a3,520(sp)
    1b70:	03368a63          	beq	a3,s3,1ba4 <check_file_handle+0xc0>
    1b74:	0a600813          	li	a6,166
    1b78:	000027b7          	lui	a5,0x2
    1b7c:	43078793          	addi	a5,a5,1072 # 2430 <crctab+0x400>
    1b80:	874e                	mv	a4,s3
    1b82:	8652                	mv	a2,s4
    1b84:	000025b7          	lui	a1,0x2
    1b88:	63058593          	addi	a1,a1,1584 # 2630 <crctab+0x600>
    1b8c:	4509                	li	a0,2
    1b8e:	00000097          	auipc	ra,0x0
    1b92:	8f2080e7          	jalr	-1806(ra) # 1480 <fprintf>
    1b96:	650d                	lui	a0,0x3
    1b98:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b9c:	00000097          	auipc	ra,0x0
    1ba0:	1c8080e7          	jalr	456(ra) # 1d64 <exit>
    1ba4:	85d2                	mv	a1,s4
    1ba6:	00002537          	lui	a0,0x2
    1baa:	67850513          	addi	a0,a0,1656 # 2678 <crctab+0x648>
    1bae:	00000097          	auipc	ra,0x0
    1bb2:	8f4080e7          	jalr	-1804(ra) # 14a2 <printf>
    1bb6:	27813083          	ld	ra,632(sp)
    1bba:	27013403          	ld	s0,624(sp)
    1bbe:	26813483          	ld	s1,616(sp)
    1bc2:	26013903          	ld	s2,608(sp)
    1bc6:	25813983          	ld	s3,600(sp)
    1bca:	25013a03          	ld	s4,592(sp)
    1bce:	24813a83          	ld	s5,584(sp)
    1bd2:	24013b03          	ld	s6,576(sp)
    1bd6:	23813b83          	ld	s7,568(sp)
    1bda:	23013c03          	ld	s8,560(sp)
    1bde:	22813c83          	ld	s9,552(sp)
    1be2:	22013d03          	ld	s10,544(sp)
    1be6:	21813d83          	ld	s11,536(sp)
    1bea:	28010113          	addi	sp,sp,640
    1bee:	8082                	ret
    1bf0:	09d00893          	li	a7,157
    1bf4:	430c8813          	addi	a6,s9,1072 # 2430 <crctab+0x400>
    1bf8:	87aa                	mv	a5,a0
    1bfa:	8752                	mv	a4,s4
    1bfc:	86ca                	mv	a3,s2
    1bfe:	8622                	mv	a2,s0
    1c00:	590d8593          	addi	a1,s11,1424 # 2590 <crctab+0x560>
    1c04:	4509                	li	a0,2
    1c06:	00000097          	auipc	ra,0x0
    1c0a:	87a080e7          	jalr	-1926(ra) # 1480 <fprintf>
    1c0e:	855a                	mv	a0,s6
    1c10:	00000097          	auipc	ra,0x0
    1c14:	154080e7          	jalr	340(ra) # 1d64 <exit>
    1c18:	a89d                	j	1c8e <check_file_handle+0x1aa>
    1c1a:	00160593          	addi	a1,a2,1
    1c1e:	0285f163          	bgeu	a1,s0,1c40 <check_file_handle+0x15c>
    1c22:	00c10733          	add	a4,sp,a2
    1c26:	00b487b3          	add	a5,s1,a1
    1c2a:	00174683          	lbu	a3,1(a4)
    1c2e:	0007c783          	lbu	a5,0(a5)
    1c32:	00f68763          	beq	a3,a5,1c40 <check_file_handle+0x15c>
    1c36:	0585                	addi	a1,a1,1
    1c38:	0705                	addi	a4,a4,1
    1c3a:	feb416e3          	bne	s0,a1,1c26 <check_file_handle+0x142>
    1c3e:	85a2                	mv	a1,s0
    1c40:	08100813          	li	a6,129
    1c44:	430c8793          	addi	a5,s9,1072
    1c48:	8752                	mv	a4,s4
    1c4a:	012606b3          	add	a3,a2,s2
    1c4e:	40c58633          	sub	a2,a1,a2
    1c52:	5d8d0593          	addi	a1,s10,1496 # 25d8 <crctab+0x5a8>
    1c56:	4509                	li	a0,2
    1c58:	00000097          	auipc	ra,0x0
    1c5c:	828080e7          	jalr	-2008(ra) # 1480 <fprintf>
    1c60:	855a                	mv	a0,s6
    1c62:	00000097          	auipc	ra,0x0
    1c66:	102080e7          	jalr	258(ra) # 1d64 <exit>
    1c6a:	9922                	add	s2,s2,s0
    1c6c:	f13970e3          	bgeu	s2,s3,1b6c <check_file_handle+0x88>
    1c70:	41298433          	sub	s0,s3,s2
    1c74:	008af363          	bgeu	s5,s0,1c7a <check_file_handle+0x196>
    1c78:	8456                	mv	s0,s5
    1c7a:	0004061b          	sext.w	a2,s0
    1c7e:	858a                	mv	a1,sp
    1c80:	855e                	mv	a0,s7
    1c82:	00000097          	auipc	ra,0x0
    1c86:	10a080e7          	jalr	266(ra) # 1d8c <read>
    1c8a:	f68513e3          	bne	a0,s0,1bf0 <check_file_handle+0x10c>
    1c8e:	012c04b3          	add	s1,s8,s2
    1c92:	8622                	mv	a2,s0
    1c94:	85a6                	mv	a1,s1
    1c96:	850a                	mv	a0,sp
    1c98:	00000097          	auipc	ra,0x0
    1c9c:	bce080e7          	jalr	-1074(ra) # 1866 <memcmp>
    1ca0:	d569                	beqz	a0,1c6a <check_file_handle+0x186>
    1ca2:	03298163          	beq	s3,s2,1cc4 <check_file_handle+0x1e0>
    1ca6:	870a                	mv	a4,sp
    1ca8:	4601                	li	a2,0
    1caa:	00c487b3          	add	a5,s1,a2
    1cae:	00074683          	lbu	a3,0(a4)
    1cb2:	0007c783          	lbu	a5,0(a5)
    1cb6:	f6f692e3          	bne	a3,a5,1c1a <check_file_handle+0x136>
    1cba:	0605                	addi	a2,a2,1
    1cbc:	0705                	addi	a4,a4,1
    1cbe:	fe8666e3          	bltu	a2,s0,1caa <check_file_handle+0x1c6>
    1cc2:	bfa1                	j	1c1a <check_file_handle+0x136>
    1cc4:	4601                	li	a2,0
    1cc6:	4585                	li	a1,1
    1cc8:	bfa5                	j	1c40 <check_file_handle+0x15c>

0000000000001cca <check_file>:
    1cca:	7179                	addi	sp,sp,-48
    1ccc:	f406                	sd	ra,40(sp)
    1cce:	f022                	sd	s0,32(sp)
    1cd0:	ec26                	sd	s1,24(sp)
    1cd2:	e84a                	sd	s2,16(sp)
    1cd4:	e44e                	sd	s3,8(sp)
    1cd6:	84aa                	mv	s1,a0
    1cd8:	892e                	mv	s2,a1
    1cda:	89b2                	mv	s3,a2
    1cdc:	4581                	li	a1,0
    1cde:	00000097          	auipc	ra,0x0
    1ce2:	0a6080e7          	jalr	166(ra) # 1d84 <open>
    1ce6:	842a                	mv	s0,a0
    1ce8:	4789                	li	a5,2
    1cea:	02a7df63          	bge	a5,a0,1d28 <check_file+0x5e>
    1cee:	86ce                	mv	a3,s3
    1cf0:	864a                	mv	a2,s2
    1cf2:	85a6                	mv	a1,s1
    1cf4:	8522                	mv	a0,s0
    1cf6:	00000097          	auipc	ra,0x0
    1cfa:	dee080e7          	jalr	-530(ra) # 1ae4 <check_file_handle>
    1cfe:	85a6                	mv	a1,s1
    1d00:	00002537          	lui	a0,0x2
    1d04:	70050513          	addi	a0,a0,1792 # 2700 <crctab+0x6d0>
    1d08:	fffff097          	auipc	ra,0xfffff
    1d0c:	79a080e7          	jalr	1946(ra) # 14a2 <printf>
    1d10:	8522                	mv	a0,s0
    1d12:	00000097          	auipc	ra,0x0
    1d16:	09a080e7          	jalr	154(ra) # 1dac <close>
    1d1a:	70a2                	ld	ra,40(sp)
    1d1c:	7402                	ld	s0,32(sp)
    1d1e:	64e2                	ld	s1,24(sp)
    1d20:	6942                	ld	s2,16(sp)
    1d22:	69a2                	ld	s3,8(sp)
    1d24:	6145                	addi	sp,sp,48
    1d26:	8082                	ret
    1d28:	0ae00713          	li	a4,174
    1d2c:	000026b7          	lui	a3,0x2
    1d30:	43068693          	addi	a3,a3,1072 # 2430 <crctab+0x400>
    1d34:	8626                	mv	a2,s1
    1d36:	000025b7          	lui	a1,0x2
    1d3a:	69858593          	addi	a1,a1,1688 # 2698 <crctab+0x668>
    1d3e:	4509                	li	a0,2
    1d40:	fffff097          	auipc	ra,0xfffff
    1d44:	740080e7          	jalr	1856(ra) # 1480 <fprintf>
    1d48:	650d                	lui	a0,0x3
    1d4a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1d4e:	00000097          	auipc	ra,0x0
    1d52:	016080e7          	jalr	22(ra) # 1d64 <exit>
    1d56:	bf61                	j	1cee <check_file+0x24>

0000000000001d58 <r_sp>:
    1d58:	850a                	mv	a0,sp
    1d5a:	8082                	ret

0000000000001d5c <halt>:
    1d5c:	4885                	li	a7,1
    1d5e:	00000073          	ecall
    1d62:	8082                	ret

0000000000001d64 <exit>:
    1d64:	4889                	li	a7,2
    1d66:	00000073          	ecall
    1d6a:	8082                	ret

0000000000001d6c <exec>:
    1d6c:	488d                	li	a7,3
    1d6e:	00000073          	ecall
    1d72:	8082                	ret

0000000000001d74 <wait>:
    1d74:	4891                	li	a7,4
    1d76:	00000073          	ecall
    1d7a:	8082                	ret

0000000000001d7c <remove>:
    1d7c:	4895                	li	a7,5
    1d7e:	00000073          	ecall
    1d82:	8082                	ret

0000000000001d84 <open>:
    1d84:	4899                	li	a7,6
    1d86:	00000073          	ecall
    1d8a:	8082                	ret

0000000000001d8c <read>:
    1d8c:	489d                	li	a7,7
    1d8e:	00000073          	ecall
    1d92:	8082                	ret

0000000000001d94 <write>:
    1d94:	48a1                	li	a7,8
    1d96:	00000073          	ecall
    1d9a:	8082                	ret

0000000000001d9c <seek>:
    1d9c:	48a5                	li	a7,9
    1d9e:	00000073          	ecall
    1da2:	8082                	ret

0000000000001da4 <tell>:
    1da4:	48a9                	li	a7,10
    1da6:	00000073          	ecall
    1daa:	8082                	ret

0000000000001dac <close>:
    1dac:	48ad                	li	a7,11
    1dae:	00000073          	ecall
    1db2:	8082                	ret

0000000000001db4 <fstat>:
    1db4:	48b1                	li	a7,12
    1db6:	00000073          	ecall
    1dba:	8082                	ret

0000000000001dbc <mmap>:
    1dbc:	48b5                	li	a7,13
    1dbe:	00000073          	ecall
    1dc2:	8082                	ret

0000000000001dc4 <munmap>:
    1dc4:	48b9                	li	a7,14
    1dc6:	00000073          	ecall
    1dca:	8082                	ret

0000000000001dcc <chdir>:
    1dcc:	48bd                	li	a7,15
    1dce:	00000073          	ecall
    1dd2:	8082                	ret

0000000000001dd4 <mkdir>:
    1dd4:	48c1                	li	a7,16
    1dd6:	00000073          	ecall
    1dda:	8082                	ret
