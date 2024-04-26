
build/user/vm/mmap-shuffle:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	e426                	sd	s1,8(sp)
    1008:	e04a                	sd	s2,0(sp)
    100a:	20200593          	li	a1,514
    100e:	00002537          	lui	a0,0x2
    1012:	d5050513          	addi	a0,a0,-688 # 1d50 <mkdir+0x12>
    1016:	00001097          	auipc	ra,0x1
    101a:	cd8080e7          	jalr	-808(ra) # 1cee <open>
    101e:	842a                	mv	s0,a0
    1020:	4789                	li	a5,2
    1022:	0aa7dd63          	bge	a5,a0,10dc <main+0xdc>
    1026:	00020637          	lui	a2,0x20
    102a:	000035b7          	lui	a1,0x3
    102e:	01058593          	addi	a1,a1,16 # 3010 <zeros>
    1032:	8522                	mv	a0,s0
    1034:	00001097          	auipc	ra,0x1
    1038:	cca080e7          	jalr	-822(ra) # 1cfe <write>
    103c:	000207b7          	lui	a5,0x20
    1040:	0cf51463          	bne	a0,a5,1108 <main+0x108>
    1044:	100005b7          	lui	a1,0x10000
    1048:	8522                	mv	a0,s0
    104a:	00001097          	auipc	ra,0x1
    104e:	cdc080e7          	jalr	-804(ra) # 1d26 <mmap>
    1052:	57fd                	li	a5,-1
    1054:	0ef50063          	beq	a0,a5,1134 <main+0x134>
    1058:	100007b7          	lui	a5,0x10000
    105c:	10020737          	lui	a4,0x10020
    1060:	00f78023          	sb	a5,0(a5) # 10000000 <s+0xffdcff0>
    1064:	0785                	addi	a5,a5,1
    1066:	fee79de3          	bne	a5,a4,1060 <main+0x60>
    106a:	000205b7          	lui	a1,0x20
    106e:	10000537          	lui	a0,0x10000
    1072:	00000097          	auipc	ra,0x0
    1076:	3c2080e7          	jalr	962(ra) # 1434 <cksum>
    107a:	0005059b          	sext.w	a1,a0
    107e:	00002537          	lui	a0,0x2
    1082:	e7850513          	addi	a0,a0,-392 # 1e78 <mkdir+0x13a>
    1086:	00000097          	auipc	ra,0x0
    108a:	386080e7          	jalr	902(ra) # 140c <printf>
    108e:	4401                	li	s0,0
    1090:	00002937          	lui	s2,0x2
    1094:	44a9                	li	s1,10
    1096:	4605                	li	a2,1
    1098:	000205b7          	lui	a1,0x20
    109c:	10000537          	lui	a0,0x10000
    10a0:	00000097          	auipc	ra,0x0
    10a4:	576080e7          	jalr	1398(ra) # 1616 <shuffle>
    10a8:	000205b7          	lui	a1,0x20
    10ac:	10000537          	lui	a0,0x10000
    10b0:	00000097          	auipc	ra,0x0
    10b4:	384080e7          	jalr	900(ra) # 1434 <cksum>
    10b8:	0005061b          	sext.w	a2,a0
    10bc:	85a2                	mv	a1,s0
    10be:	e8890513          	addi	a0,s2,-376 # 1e88 <mkdir+0x14a>
    10c2:	00000097          	auipc	ra,0x0
    10c6:	34a080e7          	jalr	842(ra) # 140c <printf>
    10ca:	0405                	addi	s0,s0,1
    10cc:	fc9415e3          	bne	s0,s1,1096 <main+0x96>
    10d0:	60e2                	ld	ra,24(sp)
    10d2:	6442                	ld	s0,16(sp)
    10d4:	64a2                	ld	s1,8(sp)
    10d6:	6902                	ld	s2,0(sp)
    10d8:	6105                	addi	sp,sp,32
    10da:	8082                	ret
    10dc:	46c9                	li	a3,18
    10de:	00002637          	lui	a2,0x2
    10e2:	d5860613          	addi	a2,a2,-680 # 1d58 <mkdir+0x1a>
    10e6:	000025b7          	lui	a1,0x2
    10ea:	d7058593          	addi	a1,a1,-656 # 1d70 <mkdir+0x32>
    10ee:	4509                	li	a0,2
    10f0:	00000097          	auipc	ra,0x0
    10f4:	2fa080e7          	jalr	762(ra) # 13ea <fprintf>
    10f8:	650d                	lui	a0,0x3
    10fa:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    10fe:	00001097          	auipc	ra,0x1
    1102:	bd0080e7          	jalr	-1072(ra) # 1cce <exit>
    1106:	b705                	j	1026 <main+0x26>
    1108:	46cd                	li	a3,19
    110a:	00002637          	lui	a2,0x2
    110e:	d5860613          	addi	a2,a2,-680 # 1d58 <mkdir+0x1a>
    1112:	000025b7          	lui	a1,0x2
    1116:	dc858593          	addi	a1,a1,-568 # 1dc8 <mkdir+0x8a>
    111a:	4509                	li	a0,2
    111c:	00000097          	auipc	ra,0x0
    1120:	2ce080e7          	jalr	718(ra) # 13ea <fprintf>
    1124:	650d                	lui	a0,0x3
    1126:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    112a:	00001097          	auipc	ra,0x1
    112e:	ba4080e7          	jalr	-1116(ra) # 1cce <exit>
    1132:	bf09                	j	1044 <main+0x44>
    1134:	46d1                	li	a3,20
    1136:	00002637          	lui	a2,0x2
    113a:	d5860613          	addi	a2,a2,-680 # 1d58 <mkdir+0x1a>
    113e:	000025b7          	lui	a1,0x2
    1142:	e2058593          	addi	a1,a1,-480 # 1e20 <mkdir+0xe2>
    1146:	4509                	li	a0,2
    1148:	00000097          	auipc	ra,0x0
    114c:	2a2080e7          	jalr	674(ra) # 13ea <fprintf>
    1150:	650d                	lui	a0,0x3
    1152:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    1156:	00001097          	auipc	ra,0x1
    115a:	b78080e7          	jalr	-1160(ra) # 1cce <exit>
    115e:	bded                	j	1058 <main+0x58>

0000000000001160 <putc>:
    1160:	1101                	addi	sp,sp,-32
    1162:	ec06                	sd	ra,24(sp)
    1164:	00b107a3          	sb	a1,15(sp)
    1168:	4605                	li	a2,1
    116a:	00f10593          	addi	a1,sp,15
    116e:	00001097          	auipc	ra,0x1
    1172:	b90080e7          	jalr	-1136(ra) # 1cfe <write>
    1176:	60e2                	ld	ra,24(sp)
    1178:	6105                	addi	sp,sp,32
    117a:	8082                	ret

000000000000117c <printint>:
    117c:	7179                	addi	sp,sp,-48
    117e:	f406                	sd	ra,40(sp)
    1180:	f022                	sd	s0,32(sp)
    1182:	ec26                	sd	s1,24(sp)
    1184:	e84a                	sd	s2,16(sp)
    1186:	84aa                	mv	s1,a0
    1188:	c299                	beqz	a3,118e <printint+0x12>
    118a:	0805c363          	bltz	a1,1210 <printint+0x94>
    118e:	2581                	sext.w	a1,a1
    1190:	4881                	li	a7,0
    1192:	868a                	mv	a3,sp
    1194:	4701                	li	a4,0
    1196:	2601                	sext.w	a2,a2
    1198:	00002537          	lui	a0,0x2
    119c:	ea850513          	addi	a0,a0,-344 # 1ea8 <digits>
    11a0:	883a                	mv	a6,a4
    11a2:	2705                	addiw	a4,a4,1
    11a4:	02c5f7bb          	remuw	a5,a1,a2
    11a8:	1782                	slli	a5,a5,0x20
    11aa:	9381                	srli	a5,a5,0x20
    11ac:	97aa                	add	a5,a5,a0
    11ae:	0007c783          	lbu	a5,0(a5)
    11b2:	00f68023          	sb	a5,0(a3)
    11b6:	0005879b          	sext.w	a5,a1
    11ba:	02c5d5bb          	divuw	a1,a1,a2
    11be:	0685                	addi	a3,a3,1
    11c0:	fec7f0e3          	bgeu	a5,a2,11a0 <printint+0x24>
    11c4:	00088a63          	beqz	a7,11d8 <printint+0x5c>
    11c8:	081c                	addi	a5,sp,16
    11ca:	973e                	add	a4,a4,a5
    11cc:	02d00793          	li	a5,45
    11d0:	fef70823          	sb	a5,-16(a4) # 1001fff0 <s+0xfffcfe0>
    11d4:	0028071b          	addiw	a4,a6,2
    11d8:	02e05663          	blez	a4,1204 <printint+0x88>
    11dc:	00e10433          	add	s0,sp,a4
    11e0:	fff10913          	addi	s2,sp,-1
    11e4:	993a                	add	s2,s2,a4
    11e6:	377d                	addiw	a4,a4,-1
    11e8:	1702                	slli	a4,a4,0x20
    11ea:	9301                	srli	a4,a4,0x20
    11ec:	40e90933          	sub	s2,s2,a4
    11f0:	fff44583          	lbu	a1,-1(s0)
    11f4:	8526                	mv	a0,s1
    11f6:	00000097          	auipc	ra,0x0
    11fa:	f6a080e7          	jalr	-150(ra) # 1160 <putc>
    11fe:	147d                	addi	s0,s0,-1
    1200:	ff2418e3          	bne	s0,s2,11f0 <printint+0x74>
    1204:	70a2                	ld	ra,40(sp)
    1206:	7402                	ld	s0,32(sp)
    1208:	64e2                	ld	s1,24(sp)
    120a:	6942                	ld	s2,16(sp)
    120c:	6145                	addi	sp,sp,48
    120e:	8082                	ret
    1210:	40b005bb          	negw	a1,a1
    1214:	4885                	li	a7,1
    1216:	bfb5                	j	1192 <printint+0x16>

0000000000001218 <vprintf>:
    1218:	7159                	addi	sp,sp,-112
    121a:	f486                	sd	ra,104(sp)
    121c:	f0a2                	sd	s0,96(sp)
    121e:	eca6                	sd	s1,88(sp)
    1220:	e8ca                	sd	s2,80(sp)
    1222:	e4ce                	sd	s3,72(sp)
    1224:	e0d2                	sd	s4,64(sp)
    1226:	fc56                	sd	s5,56(sp)
    1228:	f85a                	sd	s6,48(sp)
    122a:	f45e                	sd	s7,40(sp)
    122c:	f062                	sd	s8,32(sp)
    122e:	ec66                	sd	s9,24(sp)
    1230:	e86a                	sd	s10,16(sp)
    1232:	e46e                	sd	s11,8(sp)
    1234:	0005c483          	lbu	s1,0(a1)
    1238:	18048a63          	beqz	s1,13cc <vprintf+0x1b4>
    123c:	8a2a                	mv	s4,a0
    123e:	8ab2                	mv	s5,a2
    1240:	00158413          	addi	s0,a1,1
    1244:	4901                	li	s2,0
    1246:	02500993          	li	s3,37
    124a:	06400b93          	li	s7,100
    124e:	06c00c13          	li	s8,108
    1252:	07800c93          	li	s9,120
    1256:	07000d13          	li	s10,112
    125a:	00002db7          	lui	s11,0x2
    125e:	00002b37          	lui	s6,0x2
    1262:	ea8b0b13          	addi	s6,s6,-344 # 1ea8 <digits>
    1266:	a839                	j	1284 <vprintf+0x6c>
    1268:	85a6                	mv	a1,s1
    126a:	8552                	mv	a0,s4
    126c:	00000097          	auipc	ra,0x0
    1270:	ef4080e7          	jalr	-268(ra) # 1160 <putc>
    1274:	a019                	j	127a <vprintf+0x62>
    1276:	01390f63          	beq	s2,s3,1294 <vprintf+0x7c>
    127a:	0405                	addi	s0,s0,1
    127c:	fff44483          	lbu	s1,-1(s0)
    1280:	14048663          	beqz	s1,13cc <vprintf+0x1b4>
    1284:	0004879b          	sext.w	a5,s1
    1288:	fe0917e3          	bnez	s2,1276 <vprintf+0x5e>
    128c:	fd379ee3          	bne	a5,s3,1268 <vprintf+0x50>
    1290:	893e                	mv	s2,a5
    1292:	b7e5                	j	127a <vprintf+0x62>
    1294:	05778063          	beq	a5,s7,12d4 <vprintf+0xbc>
    1298:	05878c63          	beq	a5,s8,12f0 <vprintf+0xd8>
    129c:	07978863          	beq	a5,s9,130c <vprintf+0xf4>
    12a0:	09a78463          	beq	a5,s10,1328 <vprintf+0x110>
    12a4:	07300713          	li	a4,115
    12a8:	0ce78263          	beq	a5,a4,136c <vprintf+0x154>
    12ac:	06300713          	li	a4,99
    12b0:	0ee78763          	beq	a5,a4,139e <vprintf+0x186>
    12b4:	11378163          	beq	a5,s3,13b6 <vprintf+0x19e>
    12b8:	85ce                	mv	a1,s3
    12ba:	8552                	mv	a0,s4
    12bc:	00000097          	auipc	ra,0x0
    12c0:	ea4080e7          	jalr	-348(ra) # 1160 <putc>
    12c4:	85a6                	mv	a1,s1
    12c6:	8552                	mv	a0,s4
    12c8:	00000097          	auipc	ra,0x0
    12cc:	e98080e7          	jalr	-360(ra) # 1160 <putc>
    12d0:	4901                	li	s2,0
    12d2:	b765                	j	127a <vprintf+0x62>
    12d4:	008a8493          	addi	s1,s5,8
    12d8:	4685                	li	a3,1
    12da:	4629                	li	a2,10
    12dc:	000aa583          	lw	a1,0(s5)
    12e0:	8552                	mv	a0,s4
    12e2:	00000097          	auipc	ra,0x0
    12e6:	e9a080e7          	jalr	-358(ra) # 117c <printint>
    12ea:	8aa6                	mv	s5,s1
    12ec:	4901                	li	s2,0
    12ee:	b771                	j	127a <vprintf+0x62>
    12f0:	008a8493          	addi	s1,s5,8
    12f4:	4681                	li	a3,0
    12f6:	4629                	li	a2,10
    12f8:	000aa583          	lw	a1,0(s5)
    12fc:	8552                	mv	a0,s4
    12fe:	00000097          	auipc	ra,0x0
    1302:	e7e080e7          	jalr	-386(ra) # 117c <printint>
    1306:	8aa6                	mv	s5,s1
    1308:	4901                	li	s2,0
    130a:	bf85                	j	127a <vprintf+0x62>
    130c:	008a8493          	addi	s1,s5,8
    1310:	4681                	li	a3,0
    1312:	4641                	li	a2,16
    1314:	000aa583          	lw	a1,0(s5)
    1318:	8552                	mv	a0,s4
    131a:	00000097          	auipc	ra,0x0
    131e:	e62080e7          	jalr	-414(ra) # 117c <printint>
    1322:	8aa6                	mv	s5,s1
    1324:	4901                	li	s2,0
    1326:	bf91                	j	127a <vprintf+0x62>
    1328:	008a8913          	addi	s2,s5,8
    132c:	000aba83          	ld	s5,0(s5)
    1330:	03000593          	li	a1,48
    1334:	8552                	mv	a0,s4
    1336:	00000097          	auipc	ra,0x0
    133a:	e2a080e7          	jalr	-470(ra) # 1160 <putc>
    133e:	85e6                	mv	a1,s9
    1340:	8552                	mv	a0,s4
    1342:	00000097          	auipc	ra,0x0
    1346:	e1e080e7          	jalr	-482(ra) # 1160 <putc>
    134a:	44c1                	li	s1,16
    134c:	03cad793          	srli	a5,s5,0x3c
    1350:	97da                	add	a5,a5,s6
    1352:	0007c583          	lbu	a1,0(a5)
    1356:	8552                	mv	a0,s4
    1358:	00000097          	auipc	ra,0x0
    135c:	e08080e7          	jalr	-504(ra) # 1160 <putc>
    1360:	0a92                	slli	s5,s5,0x4
    1362:	34fd                	addiw	s1,s1,-1
    1364:	f4e5                	bnez	s1,134c <vprintf+0x134>
    1366:	8aca                	mv	s5,s2
    1368:	4901                	li	s2,0
    136a:	bf01                	j	127a <vprintf+0x62>
    136c:	008a8913          	addi	s2,s5,8
    1370:	000ab483          	ld	s1,0(s5)
    1374:	c085                	beqz	s1,1394 <vprintf+0x17c>
    1376:	0004c583          	lbu	a1,0(s1)
    137a:	c5b1                	beqz	a1,13c6 <vprintf+0x1ae>
    137c:	8552                	mv	a0,s4
    137e:	00000097          	auipc	ra,0x0
    1382:	de2080e7          	jalr	-542(ra) # 1160 <putc>
    1386:	0485                	addi	s1,s1,1
    1388:	0004c583          	lbu	a1,0(s1)
    138c:	f9e5                	bnez	a1,137c <vprintf+0x164>
    138e:	8aca                	mv	s5,s2
    1390:	4901                	li	s2,0
    1392:	b5e5                	j	127a <vprintf+0x62>
    1394:	ea0d8493          	addi	s1,s11,-352 # 1ea0 <mkdir+0x162>
    1398:	02800593          	li	a1,40
    139c:	b7c5                	j	137c <vprintf+0x164>
    139e:	008a8493          	addi	s1,s5,8
    13a2:	000ac583          	lbu	a1,0(s5)
    13a6:	8552                	mv	a0,s4
    13a8:	00000097          	auipc	ra,0x0
    13ac:	db8080e7          	jalr	-584(ra) # 1160 <putc>
    13b0:	8aa6                	mv	s5,s1
    13b2:	4901                	li	s2,0
    13b4:	b5d9                	j	127a <vprintf+0x62>
    13b6:	85ce                	mv	a1,s3
    13b8:	8552                	mv	a0,s4
    13ba:	00000097          	auipc	ra,0x0
    13be:	da6080e7          	jalr	-602(ra) # 1160 <putc>
    13c2:	4901                	li	s2,0
    13c4:	bd5d                	j	127a <vprintf+0x62>
    13c6:	8aca                	mv	s5,s2
    13c8:	4901                	li	s2,0
    13ca:	bd45                	j	127a <vprintf+0x62>
    13cc:	70a6                	ld	ra,104(sp)
    13ce:	7406                	ld	s0,96(sp)
    13d0:	64e6                	ld	s1,88(sp)
    13d2:	6946                	ld	s2,80(sp)
    13d4:	69a6                	ld	s3,72(sp)
    13d6:	6a06                	ld	s4,64(sp)
    13d8:	7ae2                	ld	s5,56(sp)
    13da:	7b42                	ld	s6,48(sp)
    13dc:	7ba2                	ld	s7,40(sp)
    13de:	7c02                	ld	s8,32(sp)
    13e0:	6ce2                	ld	s9,24(sp)
    13e2:	6d42                	ld	s10,16(sp)
    13e4:	6da2                	ld	s11,8(sp)
    13e6:	6165                	addi	sp,sp,112
    13e8:	8082                	ret

00000000000013ea <fprintf>:
    13ea:	715d                	addi	sp,sp,-80
    13ec:	ec06                	sd	ra,24(sp)
    13ee:	f032                	sd	a2,32(sp)
    13f0:	f436                	sd	a3,40(sp)
    13f2:	f83a                	sd	a4,48(sp)
    13f4:	fc3e                	sd	a5,56(sp)
    13f6:	e0c2                	sd	a6,64(sp)
    13f8:	e4c6                	sd	a7,72(sp)
    13fa:	1010                	addi	a2,sp,32
    13fc:	e432                	sd	a2,8(sp)
    13fe:	00000097          	auipc	ra,0x0
    1402:	e1a080e7          	jalr	-486(ra) # 1218 <vprintf>
    1406:	60e2                	ld	ra,24(sp)
    1408:	6161                	addi	sp,sp,80
    140a:	8082                	ret

000000000000140c <printf>:
    140c:	711d                	addi	sp,sp,-96
    140e:	ec06                	sd	ra,24(sp)
    1410:	f42e                	sd	a1,40(sp)
    1412:	f832                	sd	a2,48(sp)
    1414:	fc36                	sd	a3,56(sp)
    1416:	e0ba                	sd	a4,64(sp)
    1418:	e4be                	sd	a5,72(sp)
    141a:	e8c2                	sd	a6,80(sp)
    141c:	ecc6                	sd	a7,88(sp)
    141e:	1030                	addi	a2,sp,40
    1420:	e432                	sd	a2,8(sp)
    1422:	85aa                	mv	a1,a0
    1424:	4505                	li	a0,1
    1426:	00000097          	auipc	ra,0x0
    142a:	df2080e7          	jalr	-526(ra) # 1218 <vprintf>
    142e:	60e2                	ld	ra,24(sp)
    1430:	6125                	addi	sp,sp,96
    1432:	8082                	ret

0000000000001434 <cksum>:
    1434:	cdb1                	beqz	a1,1490 <cksum+0x5c>
    1436:	00b50833          	add	a6,a0,a1
    143a:	4781                	li	a5,0
    143c:	00002637          	lui	a2,0x2
    1440:	ec060613          	addi	a2,a2,-320 # 1ec0 <crctab>
    1444:	0505                	addi	a0,a0,1
    1446:	0087969b          	slliw	a3,a5,0x8
    144a:	0187d71b          	srliw	a4,a5,0x18
    144e:	fff54783          	lbu	a5,-1(a0)
    1452:	8f3d                	xor	a4,a4,a5
    1454:	1702                	slli	a4,a4,0x20
    1456:	9301                	srli	a4,a4,0x20
    1458:	070a                	slli	a4,a4,0x2
    145a:	9732                	add	a4,a4,a2
    145c:	431c                	lw	a5,0(a4)
    145e:	8fb5                	xor	a5,a5,a3
    1460:	2781                	sext.w	a5,a5
    1462:	fea811e3          	bne	a6,a0,1444 <cksum+0x10>
    1466:	00002637          	lui	a2,0x2
    146a:	ec060613          	addi	a2,a2,-320 # 1ec0 <crctab>
    146e:	0ff5f693          	andi	a3,a1,255
    1472:	81a1                	srli	a1,a1,0x8
    1474:	0087951b          	slliw	a0,a5,0x8
    1478:	0187d71b          	srliw	a4,a5,0x18
    147c:	8f35                	xor	a4,a4,a3
    147e:	070a                	slli	a4,a4,0x2
    1480:	9732                	add	a4,a4,a2
    1482:	431c                	lw	a5,0(a4)
    1484:	8fa9                	xor	a5,a5,a0
    1486:	2781                	sext.w	a5,a5
    1488:	f1fd                	bnez	a1,146e <cksum+0x3a>
    148a:	fff7c513          	not	a0,a5
    148e:	8082                	ret
    1490:	4781                	li	a5,0
    1492:	bfe5                	j	148a <cksum+0x56>

0000000000001494 <swap_bytes>:
    1494:	ce19                	beqz	a2,14b2 <swap_bytes+0x1e>
    1496:	87aa                	mv	a5,a0
    1498:	962a                	add	a2,a2,a0
    149a:	0007c703          	lbu	a4,0(a5)
    149e:	0005c683          	lbu	a3,0(a1)
    14a2:	00d78023          	sb	a3,0(a5)
    14a6:	00e58023          	sb	a4,0(a1)
    14aa:	0785                	addi	a5,a5,1
    14ac:	0585                	addi	a1,a1,1
    14ae:	fec796e3          	bne	a5,a2,149a <swap_bytes+0x6>
    14b2:	8082                	ret

00000000000014b4 <random_init>:
    14b4:	7139                	addi	sp,sp,-64
    14b6:	fc06                	sd	ra,56(sp)
    14b8:	f822                	sd	s0,48(sp)
    14ba:	f426                	sd	s1,40(sp)
    14bc:	f04a                	sd	s2,32(sp)
    14be:	ec4e                	sd	s3,24(sp)
    14c0:	e852                	sd	s4,16(sp)
    14c2:	c62a                	sw	a0,12(sp)
    14c4:	000037b7          	lui	a5,0x3
    14c8:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    14cc:	eca5                	bnez	s1,1544 <random_init+0x90>
    14ce:	00023737          	lui	a4,0x23
    14d2:	01070913          	addi	s2,a4,16 # 23010 <s>
    14d6:	01070713          	addi	a4,a4,16
    14da:	87a6                	mv	a5,s1
    14dc:	10000693          	li	a3,256
    14e0:	00f70023          	sb	a5,0(a4)
    14e4:	2785                	addiw	a5,a5,1
    14e6:	0705                	addi	a4,a4,1
    14e8:	fed79ce3          	bne	a5,a3,14e0 <random_init+0x2c>
    14ec:	4401                	li	s0,0
    14ee:	000239b7          	lui	s3,0x23
    14f2:	01098993          	addi	s3,s3,16 # 23010 <s>
    14f6:	10000a13          	li	s4,256
    14fa:	0034f793          	andi	a5,s1,3
    14fe:	0818                	addi	a4,sp,16
    1500:	97ba                	add	a5,a5,a4
    1502:	ffc7c783          	lbu	a5,-4(a5)
    1506:	00094703          	lbu	a4,0(s2)
    150a:	9fb9                	addw	a5,a5,a4
    150c:	9c3d                	addw	s0,s0,a5
    150e:	0ff47413          	andi	s0,s0,255
    1512:	4605                	li	a2,1
    1514:	008985b3          	add	a1,s3,s0
    1518:	854a                	mv	a0,s2
    151a:	00000097          	auipc	ra,0x0
    151e:	f7a080e7          	jalr	-134(ra) # 1494 <swap_bytes>
    1522:	2485                	addiw	s1,s1,1
    1524:	0905                	addi	s2,s2,1
    1526:	fd449ae3          	bne	s1,s4,14fa <random_init+0x46>
    152a:	000037b7          	lui	a5,0x3
    152e:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1532:	000037b7          	lui	a5,0x3
    1536:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    153a:	000037b7          	lui	a5,0x3
    153e:	4705                	li	a4,1
    1540:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1544:	70e2                	ld	ra,56(sp)
    1546:	7442                	ld	s0,48(sp)
    1548:	74a2                	ld	s1,40(sp)
    154a:	7902                	ld	s2,32(sp)
    154c:	69e2                	ld	s3,24(sp)
    154e:	6a42                	ld	s4,16(sp)
    1550:	6121                	addi	sp,sp,64
    1552:	8082                	ret

0000000000001554 <random_bytes>:
    1554:	7139                	addi	sp,sp,-64
    1556:	fc06                	sd	ra,56(sp)
    1558:	f822                	sd	s0,48(sp)
    155a:	f426                	sd	s1,40(sp)
    155c:	f04a                	sd	s2,32(sp)
    155e:	ec4e                	sd	s3,24(sp)
    1560:	e852                	sd	s4,16(sp)
    1562:	e456                	sd	s5,8(sp)
    1564:	e05a                	sd	s6,0(sp)
    1566:	892a                	mv	s2,a0
    1568:	8aae                	mv	s5,a1
    156a:	000037b7          	lui	a5,0x3
    156e:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1572:	c3c1                	beqz	a5,15f2 <random_bytes+0x9e>
    1574:	060a8563          	beqz	s5,15de <random_bytes+0x8a>
    1578:	9aca                	add	s5,s5,s2
    157a:	00003a37          	lui	s4,0x3
    157e:	000234b7          	lui	s1,0x23
    1582:	01048493          	addi	s1,s1,16 # 23010 <s>
    1586:	000039b7          	lui	s3,0x3
    158a:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    158e:	2505                	addiw	a0,a0,1
    1590:	0ff57513          	andi	a0,a0,255
    1594:	00aa02a3          	sb	a0,5(s4)
    1598:	00a48b33          	add	s6,s1,a0
    159c:	000b4403          	lbu	s0,0(s6)
    15a0:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    15a4:	9c3d                	addw	s0,s0,a5
    15a6:	0ff47413          	andi	s0,s0,255
    15aa:	00898223          	sb	s0,4(s3)
    15ae:	4605                	li	a2,1
    15b0:	008485b3          	add	a1,s1,s0
    15b4:	855a                	mv	a0,s6
    15b6:	00000097          	auipc	ra,0x0
    15ba:	ede080e7          	jalr	-290(ra) # 1494 <swap_bytes>
    15be:	9426                	add	s0,s0,s1
    15c0:	000b4783          	lbu	a5,0(s6)
    15c4:	00044703          	lbu	a4,0(s0)
    15c8:	9fb9                	addw	a5,a5,a4
    15ca:	0ff7f793          	andi	a5,a5,255
    15ce:	97a6                	add	a5,a5,s1
    15d0:	0007c783          	lbu	a5,0(a5)
    15d4:	00f90023          	sb	a5,0(s2)
    15d8:	0905                	addi	s2,s2,1
    15da:	fb2a98e3          	bne	s5,s2,158a <random_bytes+0x36>
    15de:	70e2                	ld	ra,56(sp)
    15e0:	7442                	ld	s0,48(sp)
    15e2:	74a2                	ld	s1,40(sp)
    15e4:	7902                	ld	s2,32(sp)
    15e6:	69e2                	ld	s3,24(sp)
    15e8:	6a42                	ld	s4,16(sp)
    15ea:	6aa2                	ld	s5,8(sp)
    15ec:	6b02                	ld	s6,0(sp)
    15ee:	6121                	addi	sp,sp,64
    15f0:	8082                	ret
    15f2:	4501                	li	a0,0
    15f4:	00000097          	auipc	ra,0x0
    15f8:	ec0080e7          	jalr	-320(ra) # 14b4 <random_init>
    15fc:	bfa5                	j	1574 <random_bytes+0x20>

00000000000015fe <random_ulong>:
    15fe:	1101                	addi	sp,sp,-32
    1600:	ec06                	sd	ra,24(sp)
    1602:	45a1                	li	a1,8
    1604:	0028                	addi	a0,sp,8
    1606:	00000097          	auipc	ra,0x0
    160a:	f4e080e7          	jalr	-178(ra) # 1554 <random_bytes>
    160e:	6522                	ld	a0,8(sp)
    1610:	60e2                	ld	ra,24(sp)
    1612:	6105                	addi	sp,sp,32
    1614:	8082                	ret

0000000000001616 <shuffle>:
    1616:	c9b9                	beqz	a1,166c <shuffle+0x56>
    1618:	7179                	addi	sp,sp,-48
    161a:	f406                	sd	ra,40(sp)
    161c:	f022                	sd	s0,32(sp)
    161e:	ec26                	sd	s1,24(sp)
    1620:	e84a                	sd	s2,16(sp)
    1622:	e44e                	sd	s3,8(sp)
    1624:	e052                	sd	s4,0(sp)
    1626:	8a2a                	mv	s4,a0
    1628:	89ae                	mv	s3,a1
    162a:	84b2                	mv	s1,a2
    162c:	892a                	mv	s2,a0
    162e:	4401                	li	s0,0
    1630:	00000097          	auipc	ra,0x0
    1634:	fce080e7          	jalr	-50(ra) # 15fe <random_ulong>
    1638:	408985b3          	sub	a1,s3,s0
    163c:	02b575b3          	remu	a1,a0,a1
    1640:	95a2                	add	a1,a1,s0
    1642:	029585b3          	mul	a1,a1,s1
    1646:	8626                	mv	a2,s1
    1648:	95d2                	add	a1,a1,s4
    164a:	854a                	mv	a0,s2
    164c:	00000097          	auipc	ra,0x0
    1650:	e48080e7          	jalr	-440(ra) # 1494 <swap_bytes>
    1654:	0405                	addi	s0,s0,1
    1656:	9926                	add	s2,s2,s1
    1658:	fc899ce3          	bne	s3,s0,1630 <shuffle+0x1a>
    165c:	70a2                	ld	ra,40(sp)
    165e:	7402                	ld	s0,32(sp)
    1660:	64e2                	ld	s1,24(sp)
    1662:	6942                	ld	s2,16(sp)
    1664:	69a2                	ld	s3,8(sp)
    1666:	6a02                	ld	s4,0(sp)
    1668:	6145                	addi	sp,sp,48
    166a:	8082                	ret
    166c:	8082                	ret

000000000000166e <arc4_init>:
    166e:	100500a3          	sb	zero,257(a0)
    1672:	10050023          	sb	zero,256(a0)
    1676:	4781                	li	a5,0
    1678:	10000693          	li	a3,256
    167c:	00f50733          	add	a4,a0,a5
    1680:	00f70023          	sb	a5,0(a4)
    1684:	0785                	addi	a5,a5,1
    1686:	fed79be3          	bne	a5,a3,167c <arc4_init+0xe>
    168a:	86aa                	mv	a3,a0
    168c:	10050e13          	addi	t3,a0,256
    1690:	4701                	li	a4,0
    1692:	4781                	li	a5,0
    1694:	0006c883          	lbu	a7,0(a3)
    1698:	00f58833          	add	a6,a1,a5
    169c:	00084803          	lbu	a6,0(a6)
    16a0:	00e8873b          	addw	a4,a7,a4
    16a4:	00e8073b          	addw	a4,a6,a4
    16a8:	0ff77713          	andi	a4,a4,255
    16ac:	00e50833          	add	a6,a0,a4
    16b0:	00084303          	lbu	t1,0(a6)
    16b4:	00668023          	sb	t1,0(a3)
    16b8:	01180023          	sb	a7,0(a6)
    16bc:	0785                	addi	a5,a5,1
    16be:	00c7b833          	sltu	a6,a5,a2
    16c2:	41000833          	neg	a6,a6
    16c6:	0107f7b3          	and	a5,a5,a6
    16ca:	0685                	addi	a3,a3,1
    16cc:	fdc694e3          	bne	a3,t3,1694 <arc4_init+0x26>
    16d0:	8082                	ret

00000000000016d2 <arc4_crypt>:
    16d2:	10054e03          	lbu	t3,256(a0)
    16d6:	10154803          	lbu	a6,257(a0)
    16da:	fff60e93          	addi	t4,a2,-1
    16de:	c225                	beqz	a2,173e <arc4_crypt+0x6c>
    16e0:	00c588b3          	add	a7,a1,a2
    16e4:	86ae                	mv	a3,a1
    16e6:	001e031b          	addiw	t1,t3,1
    16ea:	40b3033b          	subw	t1,t1,a1
    16ee:	00d3073b          	addw	a4,t1,a3
    16f2:	0ff77713          	andi	a4,a4,255
    16f6:	972a                	add	a4,a4,a0
    16f8:	00074603          	lbu	a2,0(a4)
    16fc:	0106083b          	addw	a6,a2,a6
    1700:	0ff87813          	andi	a6,a6,255
    1704:	010507b3          	add	a5,a0,a6
    1708:	0007c583          	lbu	a1,0(a5)
    170c:	00b70023          	sb	a1,0(a4)
    1710:	00c78023          	sb	a2,0(a5)
    1714:	0685                	addi	a3,a3,1
    1716:	00074783          	lbu	a5,0(a4)
    171a:	9fb1                	addw	a5,a5,a2
    171c:	0ff7f793          	andi	a5,a5,255
    1720:	97aa                	add	a5,a5,a0
    1722:	0007c783          	lbu	a5,0(a5)
    1726:	fff6c703          	lbu	a4,-1(a3)
    172a:	8fb9                	xor	a5,a5,a4
    172c:	fef68fa3          	sb	a5,-1(a3)
    1730:	fb169fe3          	bne	a3,a7,16ee <arc4_crypt+0x1c>
    1734:	2e85                	addiw	t4,t4,1
    1736:	01ce8e3b          	addw	t3,t4,t3
    173a:	0ffe7e13          	andi	t3,t3,255
    173e:	11c50023          	sb	t3,256(a0)
    1742:	110500a3          	sb	a6,257(a0)
    1746:	8082                	ret

0000000000001748 <_main>:
    1748:	1141                	addi	sp,sp,-16
    174a:	e406                	sd	ra,8(sp)
    174c:	00000097          	auipc	ra,0x0
    1750:	8b4080e7          	jalr	-1868(ra) # 1000 <main>
    1754:	4501                	li	a0,0
    1756:	00000097          	auipc	ra,0x0
    175a:	578080e7          	jalr	1400(ra) # 1cce <exit>
    175e:	60a2                	ld	ra,8(sp)
    1760:	0141                	addi	sp,sp,16
    1762:	8082                	ret

0000000000001764 <strcmp>:
    1764:	00054783          	lbu	a5,0(a0)
    1768:	cb91                	beqz	a5,177c <strcmp+0x18>
    176a:	0005c703          	lbu	a4,0(a1)
    176e:	00f71763          	bne	a4,a5,177c <strcmp+0x18>
    1772:	0505                	addi	a0,a0,1
    1774:	0585                	addi	a1,a1,1
    1776:	00054783          	lbu	a5,0(a0)
    177a:	fbe5                	bnez	a5,176a <strcmp+0x6>
    177c:	0005c503          	lbu	a0,0(a1)
    1780:	40a7853b          	subw	a0,a5,a0
    1784:	8082                	ret

0000000000001786 <strcpy>:
    1786:	87aa                	mv	a5,a0
    1788:	0585                	addi	a1,a1,1
    178a:	0785                	addi	a5,a5,1
    178c:	fff5c703          	lbu	a4,-1(a1)
    1790:	fee78fa3          	sb	a4,-1(a5)
    1794:	fb75                	bnez	a4,1788 <strcpy+0x2>
    1796:	8082                	ret

0000000000001798 <strlen>:
    1798:	00054783          	lbu	a5,0(a0)
    179c:	cf81                	beqz	a5,17b4 <strlen+0x1c>
    179e:	0505                	addi	a0,a0,1
    17a0:	87aa                	mv	a5,a0
    17a2:	4685                	li	a3,1
    17a4:	9e89                	subw	a3,a3,a0
    17a6:	00f6853b          	addw	a0,a3,a5
    17aa:	0785                	addi	a5,a5,1
    17ac:	fff7c703          	lbu	a4,-1(a5)
    17b0:	fb7d                	bnez	a4,17a6 <strlen+0xe>
    17b2:	8082                	ret
    17b4:	4501                	li	a0,0
    17b6:	8082                	ret

00000000000017b8 <memset>:
    17b8:	ca19                	beqz	a2,17ce <memset+0x16>
    17ba:	87aa                	mv	a5,a0
    17bc:	1602                	slli	a2,a2,0x20
    17be:	9201                	srli	a2,a2,0x20
    17c0:	00a60733          	add	a4,a2,a0
    17c4:	00b78023          	sb	a1,0(a5)
    17c8:	0785                	addi	a5,a5,1
    17ca:	fee79de3          	bne	a5,a4,17c4 <memset+0xc>
    17ce:	8082                	ret

00000000000017d0 <memcmp>:
    17d0:	1101                	addi	sp,sp,-32
    17d2:	ec06                	sd	ra,24(sp)
    17d4:	e822                	sd	s0,16(sp)
    17d6:	e426                	sd	s1,8(sp)
    17d8:	e04a                	sd	s2,0(sp)
    17da:	892a                	mv	s2,a0
    17dc:	842e                	mv	s0,a1
    17de:	84b2                	mv	s1,a2
    17e0:	c915                	beqz	a0,1814 <memcmp+0x44>
    17e2:	c5ad                	beqz	a1,184c <memcmp+0x7c>
    17e4:	fff60713          	addi	a4,a2,-1
    17e8:	c645                	beqz	a2,1890 <memcmp+0xc0>
    17ea:	87ca                	mv	a5,s2
    17ec:	00190613          	addi	a2,s2,1
    17f0:	963a                	add	a2,a2,a4
    17f2:	0007c683          	lbu	a3,0(a5)
    17f6:	00044703          	lbu	a4,0(s0)
    17fa:	08e69463          	bne	a3,a4,1882 <memcmp+0xb2>
    17fe:	0785                	addi	a5,a5,1
    1800:	0405                	addi	s0,s0,1
    1802:	fec798e3          	bne	a5,a2,17f2 <memcmp+0x22>
    1806:	4501                	li	a0,0
    1808:	60e2                	ld	ra,24(sp)
    180a:	6442                	ld	s0,16(sp)
    180c:	64a2                	ld	s1,8(sp)
    180e:	6902                	ld	s2,0(sp)
    1810:	6105                	addi	sp,sp,32
    1812:	8082                	ret
    1814:	4501                	li	a0,0
    1816:	da6d                	beqz	a2,1808 <memcmp+0x38>
    1818:	03200693          	li	a3,50
    181c:	00002637          	lui	a2,0x2
    1820:	2c060613          	addi	a2,a2,704 # 22c0 <crctab+0x400>
    1824:	000025b7          	lui	a1,0x2
    1828:	2d058593          	addi	a1,a1,720 # 22d0 <crctab+0x410>
    182c:	4509                	li	a0,2
    182e:	00000097          	auipc	ra,0x0
    1832:	bbc080e7          	jalr	-1092(ra) # 13ea <fprintf>
    1836:	650d                	lui	a0,0x3
    1838:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    183c:	00000097          	auipc	ra,0x0
    1840:	492080e7          	jalr	1170(ra) # 1cce <exit>
    1844:	fff48713          	addi	a4,s1,-1
    1848:	f04d                	bnez	s0,17ea <memcmp+0x1a>
    184a:	a011                	j	184e <memcmp+0x7e>
    184c:	c221                	beqz	a2,188c <memcmp+0xbc>
    184e:	03300693          	li	a3,51
    1852:	00002637          	lui	a2,0x2
    1856:	2c060613          	addi	a2,a2,704 # 22c0 <crctab+0x400>
    185a:	000025b7          	lui	a1,0x2
    185e:	31858593          	addi	a1,a1,792 # 2318 <crctab+0x458>
    1862:	4509                	li	a0,2
    1864:	00000097          	auipc	ra,0x0
    1868:	b86080e7          	jalr	-1146(ra) # 13ea <fprintf>
    186c:	650d                	lui	a0,0x3
    186e:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    1872:	00000097          	auipc	ra,0x0
    1876:	45c080e7          	jalr	1116(ra) # 1cce <exit>
    187a:	fff48713          	addi	a4,s1,-1
    187e:	4401                	li	s0,0
    1880:	b7ad                	j	17ea <memcmp+0x1a>
    1882:	4505                	li	a0,1
    1884:	f8d762e3          	bltu	a4,a3,1808 <memcmp+0x38>
    1888:	557d                	li	a0,-1
    188a:	bfbd                	j	1808 <memcmp+0x38>
    188c:	4501                	li	a0,0
    188e:	bfad                	j	1808 <memcmp+0x38>
    1890:	4501                	li	a0,0
    1892:	bf9d                	j	1808 <memcmp+0x38>

0000000000001894 <memcpy>:
    1894:	1101                	addi	sp,sp,-32
    1896:	ec06                	sd	ra,24(sp)
    1898:	e822                	sd	s0,16(sp)
    189a:	e426                	sd	s1,8(sp)
    189c:	e04a                	sd	s2,0(sp)
    189e:	84aa                	mv	s1,a0
    18a0:	842e                	mv	s0,a1
    18a2:	8932                	mv	s2,a2
    18a4:	c51d                	beqz	a0,18d2 <memcpy+0x3e>
    18a6:	c1ad                	beqz	a1,1908 <memcpy+0x74>
    18a8:	fff60693          	addi	a3,a2,-1
    18ac:	ce01                	beqz	a2,18c4 <memcpy+0x30>
    18ae:	0685                	addi	a3,a3,1
    18b0:	96a6                	add	a3,a3,s1
    18b2:	87a6                	mv	a5,s1
    18b4:	0405                	addi	s0,s0,1
    18b6:	0785                	addi	a5,a5,1
    18b8:	fff44703          	lbu	a4,-1(s0)
    18bc:	fee78fa3          	sb	a4,-1(a5)
    18c0:	fed79ae3          	bne	a5,a3,18b4 <memcpy+0x20>
    18c4:	8526                	mv	a0,s1
    18c6:	60e2                	ld	ra,24(sp)
    18c8:	6442                	ld	s0,16(sp)
    18ca:	64a2                	ld	s1,8(sp)
    18cc:	6902                	ld	s2,0(sp)
    18ce:	6105                	addi	sp,sp,32
    18d0:	8082                	ret
    18d2:	da6d                	beqz	a2,18c4 <memcpy+0x30>
    18d4:	04000693          	li	a3,64
    18d8:	00002637          	lui	a2,0x2
    18dc:	2c060613          	addi	a2,a2,704 # 22c0 <crctab+0x400>
    18e0:	000025b7          	lui	a1,0x2
    18e4:	36058593          	addi	a1,a1,864 # 2360 <crctab+0x4a0>
    18e8:	4509                	li	a0,2
    18ea:	00000097          	auipc	ra,0x0
    18ee:	b00080e7          	jalr	-1280(ra) # 13ea <fprintf>
    18f2:	650d                	lui	a0,0x3
    18f4:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    18f8:	00000097          	auipc	ra,0x0
    18fc:	3d6080e7          	jalr	982(ra) # 1cce <exit>
    1900:	fff90693          	addi	a3,s2,-1
    1904:	f44d                	bnez	s0,18ae <memcpy+0x1a>
    1906:	a011                	j	190a <memcpy+0x76>
    1908:	de55                	beqz	a2,18c4 <memcpy+0x30>
    190a:	04100693          	li	a3,65
    190e:	00002637          	lui	a2,0x2
    1912:	2c060613          	addi	a2,a2,704 # 22c0 <crctab+0x400>
    1916:	000025b7          	lui	a1,0x2
    191a:	3a858593          	addi	a1,a1,936 # 23a8 <crctab+0x4e8>
    191e:	4509                	li	a0,2
    1920:	00000097          	auipc	ra,0x0
    1924:	aca080e7          	jalr	-1334(ra) # 13ea <fprintf>
    1928:	650d                	lui	a0,0x3
    192a:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    192e:	00000097          	auipc	ra,0x0
    1932:	3a0080e7          	jalr	928(ra) # 1cce <exit>
    1936:	fff90693          	addi	a3,s2,-1
    193a:	4401                	li	s0,0
    193c:	bf8d                	j	18ae <memcpy+0x1a>

000000000000193e <itoa>:
    193e:	1101                	addi	sp,sp,-32
    1940:	ec06                	sd	ra,24(sp)
    1942:	e822                	sd	s0,16(sp)
    1944:	e426                	sd	s1,8(sp)
    1946:	842a                	mv	s0,a0
    1948:	41f5d71b          	sraiw	a4,a1,0x1f
    194c:	00e5c7b3          	xor	a5,a1,a4
    1950:	9f99                	subw	a5,a5,a4
    1952:	84aa                	mv	s1,a0
    1954:	862a                	mv	a2,a0
    1956:	4681                	li	a3,0
    1958:	4529                	li	a0,10
    195a:	4825                	li	a6,9
    195c:	88b6                	mv	a7,a3
    195e:	2685                	addiw	a3,a3,1
    1960:	02a7e73b          	remw	a4,a5,a0
    1964:	0307071b          	addiw	a4,a4,48
    1968:	00e60023          	sb	a4,0(a2)
    196c:	873e                	mv	a4,a5
    196e:	02a7c7bb          	divw	a5,a5,a0
    1972:	0605                	addi	a2,a2,1
    1974:	fee844e3          	blt	a6,a4,195c <itoa+0x1e>
    1978:	0405c863          	bltz	a1,19c8 <itoa+0x8a>
    197c:	96a2                	add	a3,a3,s0
    197e:	00068023          	sb	zero,0(a3)
    1982:	8522                	mv	a0,s0
    1984:	00000097          	auipc	ra,0x0
    1988:	e14080e7          	jalr	-492(ra) # 1798 <strlen>
    198c:	fff5071b          	addiw	a4,a0,-1
    1990:	02e05763          	blez	a4,19be <itoa+0x80>
    1994:	9722                	add	a4,a4,s0
    1996:	4681                	li	a3,0
    1998:	0004c783          	lbu	a5,0(s1)
    199c:	00074603          	lbu	a2,0(a4)
    19a0:	00c48023          	sb	a2,0(s1)
    19a4:	00f70023          	sb	a5,0(a4)
    19a8:	0016879b          	addiw	a5,a3,1
    19ac:	0007869b          	sext.w	a3,a5
    19b0:	0485                	addi	s1,s1,1
    19b2:	177d                	addi	a4,a4,-1
    19b4:	fff7c793          	not	a5,a5
    19b8:	9fa9                	addw	a5,a5,a0
    19ba:	fcf6cfe3          	blt	a3,a5,1998 <itoa+0x5a>
    19be:	60e2                	ld	ra,24(sp)
    19c0:	6442                	ld	s0,16(sp)
    19c2:	64a2                	ld	s1,8(sp)
    19c4:	6105                	addi	sp,sp,32
    19c6:	8082                	ret
    19c8:	96a2                	add	a3,a3,s0
    19ca:	02d00793          	li	a5,45
    19ce:	00f68023          	sb	a5,0(a3)
    19d2:	0028869b          	addiw	a3,a7,2
    19d6:	b75d                	j	197c <itoa+0x3e>

00000000000019d8 <atoi>:
    19d8:	00054783          	lbu	a5,0(a0)
    19dc:	02000713          	li	a4,32
    19e0:	00e79763          	bne	a5,a4,19ee <atoi+0x16>
    19e4:	0505                	addi	a0,a0,1
    19e6:	00054783          	lbu	a5,0(a0)
    19ea:	fee78de3          	beq	a5,a4,19e4 <atoi+0xc>
    19ee:	02b00713          	li	a4,43
    19f2:	04e78663          	beq	a5,a4,1a3e <atoi+0x66>
    19f6:	02d00713          	li	a4,45
    19fa:	4805                	li	a6,1
    19fc:	04e78463          	beq	a5,a4,1a44 <atoi+0x6c>
    1a00:	00054683          	lbu	a3,0(a0)
    1a04:	fd06879b          	addiw	a5,a3,-48
    1a08:	0ff7f793          	andi	a5,a5,255
    1a0c:	4725                	li	a4,9
    1a0e:	02f76e63          	bltu	a4,a5,1a4a <atoi+0x72>
    1a12:	4601                	li	a2,0
    1a14:	45a5                	li	a1,9
    1a16:	0505                	addi	a0,a0,1
    1a18:	0026179b          	slliw	a5,a2,0x2
    1a1c:	9fb1                	addw	a5,a5,a2
    1a1e:	0017979b          	slliw	a5,a5,0x1
    1a22:	9fb5                	addw	a5,a5,a3
    1a24:	fd07861b          	addiw	a2,a5,-48
    1a28:	00054683          	lbu	a3,0(a0)
    1a2c:	fd06871b          	addiw	a4,a3,-48
    1a30:	0ff77713          	andi	a4,a4,255
    1a34:	fee5f1e3          	bgeu	a1,a4,1a16 <atoi+0x3e>
    1a38:	02c8053b          	mulw	a0,a6,a2
    1a3c:	8082                	ret
    1a3e:	0505                	addi	a0,a0,1
    1a40:	4805                	li	a6,1
    1a42:	bf7d                	j	1a00 <atoi+0x28>
    1a44:	0505                	addi	a0,a0,1
    1a46:	587d                	li	a6,-1
    1a48:	bf65                	j	1a00 <atoi+0x28>
    1a4a:	4601                	li	a2,0
    1a4c:	b7f5                	j	1a38 <atoi+0x60>

0000000000001a4e <check_file_handle>:
    1a4e:	d8010113          	addi	sp,sp,-640
    1a52:	26113c23          	sd	ra,632(sp)
    1a56:	26813823          	sd	s0,624(sp)
    1a5a:	26913423          	sd	s1,616(sp)
    1a5e:	27213023          	sd	s2,608(sp)
    1a62:	25313c23          	sd	s3,600(sp)
    1a66:	25413823          	sd	s4,592(sp)
    1a6a:	25513423          	sd	s5,584(sp)
    1a6e:	25613023          	sd	s6,576(sp)
    1a72:	23713c23          	sd	s7,568(sp)
    1a76:	23813823          	sd	s8,560(sp)
    1a7a:	23913423          	sd	s9,552(sp)
    1a7e:	23a13023          	sd	s10,544(sp)
    1a82:	21b13c23          	sd	s11,536(sp)
    1a86:	8baa                	mv	s7,a0
    1a88:	8a2e                	mv	s4,a1
    1a8a:	8c32                	mv	s8,a2
    1a8c:	89b6                	mv	s3,a3
    1a8e:	040c                	addi	a1,sp,512
    1a90:	00000097          	auipc	ra,0x0
    1a94:	28e080e7          	jalr	654(ra) # 1d1e <fstat>
    1a98:	20813603          	ld	a2,520(sp)
    1a9c:	03361163          	bne	a2,s3,1abe <check_file_handle+0x70>
    1aa0:	06098763          	beqz	s3,1b0e <check_file_handle+0xc0>
    1aa4:	4901                	li	s2,0
    1aa6:	20000a93          	li	s5,512
    1aaa:	00002cb7          	lui	s9,0x2
    1aae:	00002db7          	lui	s11,0x2
    1ab2:	6b0d                	lui	s6,0x3
    1ab4:	039b0b13          	addi	s6,s6,57 # 3039 <zeros+0x29>
    1ab8:	00002d37          	lui	s10,0x2
    1abc:	aa39                	j	1bda <check_file_handle+0x18c>
    1abe:	86ce                	mv	a3,s3
    1ac0:	85d2                	mv	a1,s4
    1ac2:	00002537          	lui	a0,0x2
    1ac6:	3f050513          	addi	a0,a0,1008 # 23f0 <crctab+0x530>
    1aca:	00000097          	auipc	ra,0x0
    1ace:	942080e7          	jalr	-1726(ra) # 140c <printf>
    1ad2:	fc0999e3          	bnez	s3,1aa4 <check_file_handle+0x56>
    1ad6:	20813683          	ld	a3,520(sp)
    1ada:	03368a63          	beq	a3,s3,1b0e <check_file_handle+0xc0>
    1ade:	0a600813          	li	a6,166
    1ae2:	000027b7          	lui	a5,0x2
    1ae6:	2c078793          	addi	a5,a5,704 # 22c0 <crctab+0x400>
    1aea:	874e                	mv	a4,s3
    1aec:	8652                	mv	a2,s4
    1aee:	000025b7          	lui	a1,0x2
    1af2:	4c058593          	addi	a1,a1,1216 # 24c0 <crctab+0x600>
    1af6:	4509                	li	a0,2
    1af8:	00000097          	auipc	ra,0x0
    1afc:	8f2080e7          	jalr	-1806(ra) # 13ea <fprintf>
    1b00:	650d                	lui	a0,0x3
    1b02:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    1b06:	00000097          	auipc	ra,0x0
    1b0a:	1c8080e7          	jalr	456(ra) # 1cce <exit>
    1b0e:	85d2                	mv	a1,s4
    1b10:	00002537          	lui	a0,0x2
    1b14:	50850513          	addi	a0,a0,1288 # 2508 <crctab+0x648>
    1b18:	00000097          	auipc	ra,0x0
    1b1c:	8f4080e7          	jalr	-1804(ra) # 140c <printf>
    1b20:	27813083          	ld	ra,632(sp)
    1b24:	27013403          	ld	s0,624(sp)
    1b28:	26813483          	ld	s1,616(sp)
    1b2c:	26013903          	ld	s2,608(sp)
    1b30:	25813983          	ld	s3,600(sp)
    1b34:	25013a03          	ld	s4,592(sp)
    1b38:	24813a83          	ld	s5,584(sp)
    1b3c:	24013b03          	ld	s6,576(sp)
    1b40:	23813b83          	ld	s7,568(sp)
    1b44:	23013c03          	ld	s8,560(sp)
    1b48:	22813c83          	ld	s9,552(sp)
    1b4c:	22013d03          	ld	s10,544(sp)
    1b50:	21813d83          	ld	s11,536(sp)
    1b54:	28010113          	addi	sp,sp,640
    1b58:	8082                	ret
    1b5a:	09d00893          	li	a7,157
    1b5e:	2c0c8813          	addi	a6,s9,704 # 22c0 <crctab+0x400>
    1b62:	87aa                	mv	a5,a0
    1b64:	8752                	mv	a4,s4
    1b66:	86ca                	mv	a3,s2
    1b68:	8622                	mv	a2,s0
    1b6a:	420d8593          	addi	a1,s11,1056 # 2420 <crctab+0x560>
    1b6e:	4509                	li	a0,2
    1b70:	00000097          	auipc	ra,0x0
    1b74:	87a080e7          	jalr	-1926(ra) # 13ea <fprintf>
    1b78:	855a                	mv	a0,s6
    1b7a:	00000097          	auipc	ra,0x0
    1b7e:	154080e7          	jalr	340(ra) # 1cce <exit>
    1b82:	a89d                	j	1bf8 <check_file_handle+0x1aa>
    1b84:	00160593          	addi	a1,a2,1
    1b88:	0285f163          	bgeu	a1,s0,1baa <check_file_handle+0x15c>
    1b8c:	00c10733          	add	a4,sp,a2
    1b90:	00b487b3          	add	a5,s1,a1
    1b94:	00174683          	lbu	a3,1(a4)
    1b98:	0007c783          	lbu	a5,0(a5)
    1b9c:	00f68763          	beq	a3,a5,1baa <check_file_handle+0x15c>
    1ba0:	0585                	addi	a1,a1,1
    1ba2:	0705                	addi	a4,a4,1
    1ba4:	feb416e3          	bne	s0,a1,1b90 <check_file_handle+0x142>
    1ba8:	85a2                	mv	a1,s0
    1baa:	08100813          	li	a6,129
    1bae:	2c0c8793          	addi	a5,s9,704
    1bb2:	8752                	mv	a4,s4
    1bb4:	012606b3          	add	a3,a2,s2
    1bb8:	40c58633          	sub	a2,a1,a2
    1bbc:	468d0593          	addi	a1,s10,1128 # 2468 <crctab+0x5a8>
    1bc0:	4509                	li	a0,2
    1bc2:	00000097          	auipc	ra,0x0
    1bc6:	828080e7          	jalr	-2008(ra) # 13ea <fprintf>
    1bca:	855a                	mv	a0,s6
    1bcc:	00000097          	auipc	ra,0x0
    1bd0:	102080e7          	jalr	258(ra) # 1cce <exit>
    1bd4:	9922                	add	s2,s2,s0
    1bd6:	f13970e3          	bgeu	s2,s3,1ad6 <check_file_handle+0x88>
    1bda:	41298433          	sub	s0,s3,s2
    1bde:	008af363          	bgeu	s5,s0,1be4 <check_file_handle+0x196>
    1be2:	8456                	mv	s0,s5
    1be4:	0004061b          	sext.w	a2,s0
    1be8:	858a                	mv	a1,sp
    1bea:	855e                	mv	a0,s7
    1bec:	00000097          	auipc	ra,0x0
    1bf0:	10a080e7          	jalr	266(ra) # 1cf6 <read>
    1bf4:	f68513e3          	bne	a0,s0,1b5a <check_file_handle+0x10c>
    1bf8:	012c04b3          	add	s1,s8,s2
    1bfc:	8622                	mv	a2,s0
    1bfe:	85a6                	mv	a1,s1
    1c00:	850a                	mv	a0,sp
    1c02:	00000097          	auipc	ra,0x0
    1c06:	bce080e7          	jalr	-1074(ra) # 17d0 <memcmp>
    1c0a:	d569                	beqz	a0,1bd4 <check_file_handle+0x186>
    1c0c:	03298163          	beq	s3,s2,1c2e <check_file_handle+0x1e0>
    1c10:	870a                	mv	a4,sp
    1c12:	4601                	li	a2,0
    1c14:	00c487b3          	add	a5,s1,a2
    1c18:	00074683          	lbu	a3,0(a4)
    1c1c:	0007c783          	lbu	a5,0(a5)
    1c20:	f6f692e3          	bne	a3,a5,1b84 <check_file_handle+0x136>
    1c24:	0605                	addi	a2,a2,1
    1c26:	0705                	addi	a4,a4,1
    1c28:	fe8666e3          	bltu	a2,s0,1c14 <check_file_handle+0x1c6>
    1c2c:	bfa1                	j	1b84 <check_file_handle+0x136>
    1c2e:	4601                	li	a2,0
    1c30:	4585                	li	a1,1
    1c32:	bfa5                	j	1baa <check_file_handle+0x15c>

0000000000001c34 <check_file>:
    1c34:	7179                	addi	sp,sp,-48
    1c36:	f406                	sd	ra,40(sp)
    1c38:	f022                	sd	s0,32(sp)
    1c3a:	ec26                	sd	s1,24(sp)
    1c3c:	e84a                	sd	s2,16(sp)
    1c3e:	e44e                	sd	s3,8(sp)
    1c40:	84aa                	mv	s1,a0
    1c42:	892e                	mv	s2,a1
    1c44:	89b2                	mv	s3,a2
    1c46:	4581                	li	a1,0
    1c48:	00000097          	auipc	ra,0x0
    1c4c:	0a6080e7          	jalr	166(ra) # 1cee <open>
    1c50:	842a                	mv	s0,a0
    1c52:	4789                	li	a5,2
    1c54:	02a7df63          	bge	a5,a0,1c92 <check_file+0x5e>
    1c58:	86ce                	mv	a3,s3
    1c5a:	864a                	mv	a2,s2
    1c5c:	85a6                	mv	a1,s1
    1c5e:	8522                	mv	a0,s0
    1c60:	00000097          	auipc	ra,0x0
    1c64:	dee080e7          	jalr	-530(ra) # 1a4e <check_file_handle>
    1c68:	85a6                	mv	a1,s1
    1c6a:	00002537          	lui	a0,0x2
    1c6e:	59050513          	addi	a0,a0,1424 # 2590 <crctab+0x6d0>
    1c72:	fffff097          	auipc	ra,0xfffff
    1c76:	79a080e7          	jalr	1946(ra) # 140c <printf>
    1c7a:	8522                	mv	a0,s0
    1c7c:	00000097          	auipc	ra,0x0
    1c80:	09a080e7          	jalr	154(ra) # 1d16 <close>
    1c84:	70a2                	ld	ra,40(sp)
    1c86:	7402                	ld	s0,32(sp)
    1c88:	64e2                	ld	s1,24(sp)
    1c8a:	6942                	ld	s2,16(sp)
    1c8c:	69a2                	ld	s3,8(sp)
    1c8e:	6145                	addi	sp,sp,48
    1c90:	8082                	ret
    1c92:	0ae00713          	li	a4,174
    1c96:	000026b7          	lui	a3,0x2
    1c9a:	2c068693          	addi	a3,a3,704 # 22c0 <crctab+0x400>
    1c9e:	8626                	mv	a2,s1
    1ca0:	000025b7          	lui	a1,0x2
    1ca4:	52858593          	addi	a1,a1,1320 # 2528 <crctab+0x668>
    1ca8:	4509                	li	a0,2
    1caa:	fffff097          	auipc	ra,0xfffff
    1cae:	740080e7          	jalr	1856(ra) # 13ea <fprintf>
    1cb2:	650d                	lui	a0,0x3
    1cb4:	03950513          	addi	a0,a0,57 # 3039 <zeros+0x29>
    1cb8:	00000097          	auipc	ra,0x0
    1cbc:	016080e7          	jalr	22(ra) # 1cce <exit>
    1cc0:	bf61                	j	1c58 <check_file+0x24>

0000000000001cc2 <r_sp>:
    1cc2:	850a                	mv	a0,sp
    1cc4:	8082                	ret

0000000000001cc6 <halt>:
    1cc6:	4885                	li	a7,1
    1cc8:	00000073          	ecall
    1ccc:	8082                	ret

0000000000001cce <exit>:
    1cce:	4889                	li	a7,2
    1cd0:	00000073          	ecall
    1cd4:	8082                	ret

0000000000001cd6 <exec>:
    1cd6:	488d                	li	a7,3
    1cd8:	00000073          	ecall
    1cdc:	8082                	ret

0000000000001cde <wait>:
    1cde:	4891                	li	a7,4
    1ce0:	00000073          	ecall
    1ce4:	8082                	ret

0000000000001ce6 <remove>:
    1ce6:	4895                	li	a7,5
    1ce8:	00000073          	ecall
    1cec:	8082                	ret

0000000000001cee <open>:
    1cee:	4899                	li	a7,6
    1cf0:	00000073          	ecall
    1cf4:	8082                	ret

0000000000001cf6 <read>:
    1cf6:	489d                	li	a7,7
    1cf8:	00000073          	ecall
    1cfc:	8082                	ret

0000000000001cfe <write>:
    1cfe:	48a1                	li	a7,8
    1d00:	00000073          	ecall
    1d04:	8082                	ret

0000000000001d06 <seek>:
    1d06:	48a5                	li	a7,9
    1d08:	00000073          	ecall
    1d0c:	8082                	ret

0000000000001d0e <tell>:
    1d0e:	48a9                	li	a7,10
    1d10:	00000073          	ecall
    1d14:	8082                	ret

0000000000001d16 <close>:
    1d16:	48ad                	li	a7,11
    1d18:	00000073          	ecall
    1d1c:	8082                	ret

0000000000001d1e <fstat>:
    1d1e:	48b1                	li	a7,12
    1d20:	00000073          	ecall
    1d24:	8082                	ret

0000000000001d26 <mmap>:
    1d26:	48b5                	li	a7,13
    1d28:	00000073          	ecall
    1d2c:	8082                	ret

0000000000001d2e <munmap>:
    1d2e:	48b9                	li	a7,14
    1d30:	00000073          	ecall
    1d34:	8082                	ret

0000000000001d36 <chdir>:
    1d36:	48bd                	li	a7,15
    1d38:	00000073          	ecall
    1d3c:	8082                	ret

0000000000001d3e <mkdir>:
    1d3e:	48c1                	li	a7,16
    1d40:	00000073          	ecall
    1d44:	8082                	ret
