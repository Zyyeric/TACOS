
build/user/vm/mmap-inherit:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	4581                	li	a1,0
    1008:	00002537          	lui	a0,0x2
    100c:	db050513          	addi	a0,a0,-592 # 1db0 <mkdir+0x14>
    1010:	00001097          	auipc	ra,0x1
    1014:	d3c080e7          	jalr	-708(ra) # 1d4c <open>
    1018:	842a                	mv	s0,a0
    101a:	4789                	li	a5,2
    101c:	08a7dd63          	bge	a5,a0,10b6 <main+0xb6>
    1020:	543215b7          	lui	a1,0x54321
    1024:	8522                	mv	a0,s0
    1026:	00001097          	auipc	ra,0x1
    102a:	d5e080e7          	jalr	-674(ra) # 1d84 <mmap>
    102e:	57fd                	li	a5,-1
    1030:	0af50963          	beq	a0,a5,10e2 <main+0xe2>
    1034:	00003437          	lui	s0,0x3
    1038:	00040513          	mv	a0,s0
    103c:	00000097          	auipc	ra,0x0
    1040:	7ba080e7          	jalr	1978(ra) # 17f6 <strlen>
    1044:	862a                	mv	a2,a0
    1046:	00040593          	mv	a1,s0
    104a:	54321537          	lui	a0,0x54321
    104e:	00000097          	auipc	ra,0x0
    1052:	7e0080e7          	jalr	2016(ra) # 182e <memcmp>
    1056:	ed45                	bnez	a0,110e <main+0x10e>
    1058:	00002537          	lui	a0,0x2
    105c:	ee050793          	addi	a5,a0,-288 # 1ee0 <mkdir+0x144>
    1060:	e03e                	sd	a5,0(sp)
    1062:	e402                	sd	zero,8(sp)
    1064:	858a                	mv	a1,sp
    1066:	ee050513          	addi	a0,a0,-288
    106a:	00001097          	auipc	ra,0x1
    106e:	cca080e7          	jalr	-822(ra) # 1d34 <exec>
    1072:	842a                	mv	s0,a0
    1074:	57fd                	li	a5,-1
    1076:	0cf50263          	beq	a0,a5,113a <main+0x13a>
    107a:	8522                	mv	a0,s0
    107c:	00001097          	auipc	ra,0x1
    1080:	cc0080e7          	jalr	-832(ra) # 1d3c <wait>
    1084:	57fd                	li	a5,-1
    1086:	0ef51063          	bne	a0,a5,1166 <main+0x166>
    108a:	00003437          	lui	s0,0x3
    108e:	00040513          	mv	a0,s0
    1092:	00000097          	auipc	ra,0x0
    1096:	764080e7          	jalr	1892(ra) # 17f6 <strlen>
    109a:	862a                	mv	a2,a0
    109c:	00040593          	mv	a1,s0
    10a0:	54321537          	lui	a0,0x54321
    10a4:	00000097          	auipc	ra,0x0
    10a8:	78a080e7          	jalr	1930(ra) # 182e <memcmp>
    10ac:	e17d                	bnez	a0,1192 <main+0x192>
    10ae:	60e2                	ld	ra,24(sp)
    10b0:	6442                	ld	s0,16(sp)
    10b2:	6105                	addi	sp,sp,32
    10b4:	8082                	ret
    10b6:	46b5                	li	a3,13
    10b8:	00002637          	lui	a2,0x2
    10bc:	dc060613          	addi	a2,a2,-576 # 1dc0 <mkdir+0x24>
    10c0:	000025b7          	lui	a1,0x2
    10c4:	dd858593          	addi	a1,a1,-552 # 1dd8 <mkdir+0x3c>
    10c8:	4509                	li	a0,2
    10ca:	00000097          	auipc	ra,0x0
    10ce:	37e080e7          	jalr	894(ra) # 1448 <fprintf>
    10d2:	650d                	lui	a0,0x3
    10d4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10d8:	00001097          	auipc	ra,0x1
    10dc:	c54080e7          	jalr	-940(ra) # 1d2c <exit>
    10e0:	b781                	j	1020 <main+0x20>
    10e2:	46b9                	li	a3,14
    10e4:	00002637          	lui	a2,0x2
    10e8:	dc060613          	addi	a2,a2,-576 # 1dc0 <mkdir+0x24>
    10ec:	000025b7          	lui	a1,0x2
    10f0:	e4058593          	addi	a1,a1,-448 # 1e40 <mkdir+0xa4>
    10f4:	4509                	li	a0,2
    10f6:	00000097          	auipc	ra,0x0
    10fa:	352080e7          	jalr	850(ra) # 1448 <fprintf>
    10fe:	650d                	lui	a0,0x3
    1100:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1104:	00001097          	auipc	ra,0x1
    1108:	c28080e7          	jalr	-984(ra) # 1d2c <exit>
    110c:	b725                	j	1034 <main+0x34>
    110e:	46bd                	li	a3,15
    1110:	00002637          	lui	a2,0x2
    1114:	dc060613          	addi	a2,a2,-576 # 1dc0 <mkdir+0x24>
    1118:	000025b7          	lui	a1,0x2
    111c:	ea058593          	addi	a1,a1,-352 # 1ea0 <mkdir+0x104>
    1120:	4509                	li	a0,2
    1122:	00000097          	auipc	ra,0x0
    1126:	326080e7          	jalr	806(ra) # 1448 <fprintf>
    112a:	650d                	lui	a0,0x3
    112c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1130:	00001097          	auipc	ra,0x1
    1134:	bfc080e7          	jalr	-1028(ra) # 1d2c <exit>
    1138:	b705                	j	1058 <main+0x58>
    113a:	46cd                	li	a3,19
    113c:	00002637          	lui	a2,0x2
    1140:	dc060613          	addi	a2,a2,-576 # 1dc0 <mkdir+0x24>
    1144:	000025b7          	lui	a1,0x2
    1148:	ef058593          	addi	a1,a1,-272 # 1ef0 <mkdir+0x154>
    114c:	4509                	li	a0,2
    114e:	00000097          	auipc	ra,0x0
    1152:	2fa080e7          	jalr	762(ra) # 1448 <fprintf>
    1156:	650d                	lui	a0,0x3
    1158:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    115c:	00001097          	auipc	ra,0x1
    1160:	bd0080e7          	jalr	-1072(ra) # 1d2c <exit>
    1164:	bf19                	j	107a <main+0x7a>
    1166:	46d1                	li	a3,20
    1168:	00002637          	lui	a2,0x2
    116c:	dc060613          	addi	a2,a2,-576 # 1dc0 <mkdir+0x24>
    1170:	000025b7          	lui	a1,0x2
    1174:	f5858593          	addi	a1,a1,-168 # 1f58 <mkdir+0x1bc>
    1178:	4509                	li	a0,2
    117a:	00000097          	auipc	ra,0x0
    117e:	2ce080e7          	jalr	718(ra) # 1448 <fprintf>
    1182:	650d                	lui	a0,0x3
    1184:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1188:	00001097          	auipc	ra,0x1
    118c:	ba4080e7          	jalr	-1116(ra) # 1d2c <exit>
    1190:	bded                	j	108a <main+0x8a>
    1192:	46dd                	li	a3,23
    1194:	00002637          	lui	a2,0x2
    1198:	dc060613          	addi	a2,a2,-576 # 1dc0 <mkdir+0x24>
    119c:	000025b7          	lui	a1,0x2
    11a0:	fb858593          	addi	a1,a1,-72 # 1fb8 <mkdir+0x21c>
    11a4:	4509                	li	a0,2
    11a6:	00000097          	auipc	ra,0x0
    11aa:	2a2080e7          	jalr	674(ra) # 1448 <fprintf>
    11ae:	650d                	lui	a0,0x3
    11b0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11b4:	00001097          	auipc	ra,0x1
    11b8:	b78080e7          	jalr	-1160(ra) # 1d2c <exit>
    11bc:	bdcd                	j	10ae <main+0xae>

00000000000011be <putc>:
    11be:	1101                	addi	sp,sp,-32
    11c0:	ec06                	sd	ra,24(sp)
    11c2:	00b107a3          	sb	a1,15(sp)
    11c6:	4605                	li	a2,1
    11c8:	00f10593          	addi	a1,sp,15
    11cc:	00001097          	auipc	ra,0x1
    11d0:	b90080e7          	jalr	-1136(ra) # 1d5c <write>
    11d4:	60e2                	ld	ra,24(sp)
    11d6:	6105                	addi	sp,sp,32
    11d8:	8082                	ret

00000000000011da <printint>:
    11da:	7179                	addi	sp,sp,-48
    11dc:	f406                	sd	ra,40(sp)
    11de:	f022                	sd	s0,32(sp)
    11e0:	ec26                	sd	s1,24(sp)
    11e2:	e84a                	sd	s2,16(sp)
    11e4:	84aa                	mv	s1,a0
    11e6:	c299                	beqz	a3,11ec <printint+0x12>
    11e8:	0805c363          	bltz	a1,126e <printint+0x94>
    11ec:	2581                	sext.w	a1,a1
    11ee:	4881                	li	a7,0
    11f0:	868a                	mv	a3,sp
    11f2:	4701                	li	a4,0
    11f4:	2601                	sext.w	a2,a2
    11f6:	00002537          	lui	a0,0x2
    11fa:	04050513          	addi	a0,a0,64 # 2040 <digits>
    11fe:	883a                	mv	a6,a4
    1200:	2705                	addiw	a4,a4,1
    1202:	02c5f7bb          	remuw	a5,a1,a2
    1206:	1782                	slli	a5,a5,0x20
    1208:	9381                	srli	a5,a5,0x20
    120a:	97aa                	add	a5,a5,a0
    120c:	0007c783          	lbu	a5,0(a5)
    1210:	00f68023          	sb	a5,0(a3)
    1214:	0005879b          	sext.w	a5,a1
    1218:	02c5d5bb          	divuw	a1,a1,a2
    121c:	0685                	addi	a3,a3,1
    121e:	fec7f0e3          	bgeu	a5,a2,11fe <printint+0x24>
    1222:	00088a63          	beqz	a7,1236 <printint+0x5c>
    1226:	081c                	addi	a5,sp,16
    1228:	973e                	add	a4,a4,a5
    122a:	02d00793          	li	a5,45
    122e:	fef70823          	sb	a5,-16(a4)
    1232:	0028071b          	addiw	a4,a6,2
    1236:	02e05663          	blez	a4,1262 <printint+0x88>
    123a:	00e10433          	add	s0,sp,a4
    123e:	fff10913          	addi	s2,sp,-1
    1242:	993a                	add	s2,s2,a4
    1244:	377d                	addiw	a4,a4,-1
    1246:	1702                	slli	a4,a4,0x20
    1248:	9301                	srli	a4,a4,0x20
    124a:	40e90933          	sub	s2,s2,a4
    124e:	fff44583          	lbu	a1,-1(s0) # 2fff <crctab+0xfa7>
    1252:	8526                	mv	a0,s1
    1254:	00000097          	auipc	ra,0x0
    1258:	f6a080e7          	jalr	-150(ra) # 11be <putc>
    125c:	147d                	addi	s0,s0,-1
    125e:	ff2418e3          	bne	s0,s2,124e <printint+0x74>
    1262:	70a2                	ld	ra,40(sp)
    1264:	7402                	ld	s0,32(sp)
    1266:	64e2                	ld	s1,24(sp)
    1268:	6942                	ld	s2,16(sp)
    126a:	6145                	addi	sp,sp,48
    126c:	8082                	ret
    126e:	40b005bb          	negw	a1,a1
    1272:	4885                	li	a7,1
    1274:	bfb5                	j	11f0 <printint+0x16>

0000000000001276 <vprintf>:
    1276:	7159                	addi	sp,sp,-112
    1278:	f486                	sd	ra,104(sp)
    127a:	f0a2                	sd	s0,96(sp)
    127c:	eca6                	sd	s1,88(sp)
    127e:	e8ca                	sd	s2,80(sp)
    1280:	e4ce                	sd	s3,72(sp)
    1282:	e0d2                	sd	s4,64(sp)
    1284:	fc56                	sd	s5,56(sp)
    1286:	f85a                	sd	s6,48(sp)
    1288:	f45e                	sd	s7,40(sp)
    128a:	f062                	sd	s8,32(sp)
    128c:	ec66                	sd	s9,24(sp)
    128e:	e86a                	sd	s10,16(sp)
    1290:	e46e                	sd	s11,8(sp)
    1292:	0005c483          	lbu	s1,0(a1)
    1296:	18048a63          	beqz	s1,142a <vprintf+0x1b4>
    129a:	8a2a                	mv	s4,a0
    129c:	8ab2                	mv	s5,a2
    129e:	00158413          	addi	s0,a1,1
    12a2:	4901                	li	s2,0
    12a4:	02500993          	li	s3,37
    12a8:	06400b93          	li	s7,100
    12ac:	06c00c13          	li	s8,108
    12b0:	07800c93          	li	s9,120
    12b4:	07000d13          	li	s10,112
    12b8:	00002db7          	lui	s11,0x2
    12bc:	00002b37          	lui	s6,0x2
    12c0:	040b0b13          	addi	s6,s6,64 # 2040 <digits>
    12c4:	a839                	j	12e2 <vprintf+0x6c>
    12c6:	85a6                	mv	a1,s1
    12c8:	8552                	mv	a0,s4
    12ca:	00000097          	auipc	ra,0x0
    12ce:	ef4080e7          	jalr	-268(ra) # 11be <putc>
    12d2:	a019                	j	12d8 <vprintf+0x62>
    12d4:	01390f63          	beq	s2,s3,12f2 <vprintf+0x7c>
    12d8:	0405                	addi	s0,s0,1
    12da:	fff44483          	lbu	s1,-1(s0)
    12de:	14048663          	beqz	s1,142a <vprintf+0x1b4>
    12e2:	0004879b          	sext.w	a5,s1
    12e6:	fe0917e3          	bnez	s2,12d4 <vprintf+0x5e>
    12ea:	fd379ee3          	bne	a5,s3,12c6 <vprintf+0x50>
    12ee:	893e                	mv	s2,a5
    12f0:	b7e5                	j	12d8 <vprintf+0x62>
    12f2:	05778063          	beq	a5,s7,1332 <vprintf+0xbc>
    12f6:	05878c63          	beq	a5,s8,134e <vprintf+0xd8>
    12fa:	07978863          	beq	a5,s9,136a <vprintf+0xf4>
    12fe:	09a78463          	beq	a5,s10,1386 <vprintf+0x110>
    1302:	07300713          	li	a4,115
    1306:	0ce78263          	beq	a5,a4,13ca <vprintf+0x154>
    130a:	06300713          	li	a4,99
    130e:	0ee78763          	beq	a5,a4,13fc <vprintf+0x186>
    1312:	11378163          	beq	a5,s3,1414 <vprintf+0x19e>
    1316:	85ce                	mv	a1,s3
    1318:	8552                	mv	a0,s4
    131a:	00000097          	auipc	ra,0x0
    131e:	ea4080e7          	jalr	-348(ra) # 11be <putc>
    1322:	85a6                	mv	a1,s1
    1324:	8552                	mv	a0,s4
    1326:	00000097          	auipc	ra,0x0
    132a:	e98080e7          	jalr	-360(ra) # 11be <putc>
    132e:	4901                	li	s2,0
    1330:	b765                	j	12d8 <vprintf+0x62>
    1332:	008a8493          	addi	s1,s5,8
    1336:	4685                	li	a3,1
    1338:	4629                	li	a2,10
    133a:	000aa583          	lw	a1,0(s5)
    133e:	8552                	mv	a0,s4
    1340:	00000097          	auipc	ra,0x0
    1344:	e9a080e7          	jalr	-358(ra) # 11da <printint>
    1348:	8aa6                	mv	s5,s1
    134a:	4901                	li	s2,0
    134c:	b771                	j	12d8 <vprintf+0x62>
    134e:	008a8493          	addi	s1,s5,8
    1352:	4681                	li	a3,0
    1354:	4629                	li	a2,10
    1356:	000aa583          	lw	a1,0(s5)
    135a:	8552                	mv	a0,s4
    135c:	00000097          	auipc	ra,0x0
    1360:	e7e080e7          	jalr	-386(ra) # 11da <printint>
    1364:	8aa6                	mv	s5,s1
    1366:	4901                	li	s2,0
    1368:	bf85                	j	12d8 <vprintf+0x62>
    136a:	008a8493          	addi	s1,s5,8
    136e:	4681                	li	a3,0
    1370:	4641                	li	a2,16
    1372:	000aa583          	lw	a1,0(s5)
    1376:	8552                	mv	a0,s4
    1378:	00000097          	auipc	ra,0x0
    137c:	e62080e7          	jalr	-414(ra) # 11da <printint>
    1380:	8aa6                	mv	s5,s1
    1382:	4901                	li	s2,0
    1384:	bf91                	j	12d8 <vprintf+0x62>
    1386:	008a8913          	addi	s2,s5,8
    138a:	000aba83          	ld	s5,0(s5)
    138e:	03000593          	li	a1,48
    1392:	8552                	mv	a0,s4
    1394:	00000097          	auipc	ra,0x0
    1398:	e2a080e7          	jalr	-470(ra) # 11be <putc>
    139c:	85e6                	mv	a1,s9
    139e:	8552                	mv	a0,s4
    13a0:	00000097          	auipc	ra,0x0
    13a4:	e1e080e7          	jalr	-482(ra) # 11be <putc>
    13a8:	44c1                	li	s1,16
    13aa:	03cad793          	srli	a5,s5,0x3c
    13ae:	97da                	add	a5,a5,s6
    13b0:	0007c583          	lbu	a1,0(a5)
    13b4:	8552                	mv	a0,s4
    13b6:	00000097          	auipc	ra,0x0
    13ba:	e08080e7          	jalr	-504(ra) # 11be <putc>
    13be:	0a92                	slli	s5,s5,0x4
    13c0:	34fd                	addiw	s1,s1,-1
    13c2:	f4e5                	bnez	s1,13aa <vprintf+0x134>
    13c4:	8aca                	mv	s5,s2
    13c6:	4901                	li	s2,0
    13c8:	bf01                	j	12d8 <vprintf+0x62>
    13ca:	008a8913          	addi	s2,s5,8
    13ce:	000ab483          	ld	s1,0(s5)
    13d2:	c085                	beqz	s1,13f2 <vprintf+0x17c>
    13d4:	0004c583          	lbu	a1,0(s1)
    13d8:	c5b1                	beqz	a1,1424 <vprintf+0x1ae>
    13da:	8552                	mv	a0,s4
    13dc:	00000097          	auipc	ra,0x0
    13e0:	de2080e7          	jalr	-542(ra) # 11be <putc>
    13e4:	0485                	addi	s1,s1,1
    13e6:	0004c583          	lbu	a1,0(s1)
    13ea:	f9e5                	bnez	a1,13da <vprintf+0x164>
    13ec:	8aca                	mv	s5,s2
    13ee:	4901                	li	s2,0
    13f0:	b5e5                	j	12d8 <vprintf+0x62>
    13f2:	038d8493          	addi	s1,s11,56 # 2038 <mkdir+0x29c>
    13f6:	02800593          	li	a1,40
    13fa:	b7c5                	j	13da <vprintf+0x164>
    13fc:	008a8493          	addi	s1,s5,8
    1400:	000ac583          	lbu	a1,0(s5)
    1404:	8552                	mv	a0,s4
    1406:	00000097          	auipc	ra,0x0
    140a:	db8080e7          	jalr	-584(ra) # 11be <putc>
    140e:	8aa6                	mv	s5,s1
    1410:	4901                	li	s2,0
    1412:	b5d9                	j	12d8 <vprintf+0x62>
    1414:	85ce                	mv	a1,s3
    1416:	8552                	mv	a0,s4
    1418:	00000097          	auipc	ra,0x0
    141c:	da6080e7          	jalr	-602(ra) # 11be <putc>
    1420:	4901                	li	s2,0
    1422:	bd5d                	j	12d8 <vprintf+0x62>
    1424:	8aca                	mv	s5,s2
    1426:	4901                	li	s2,0
    1428:	bd45                	j	12d8 <vprintf+0x62>
    142a:	70a6                	ld	ra,104(sp)
    142c:	7406                	ld	s0,96(sp)
    142e:	64e6                	ld	s1,88(sp)
    1430:	6946                	ld	s2,80(sp)
    1432:	69a6                	ld	s3,72(sp)
    1434:	6a06                	ld	s4,64(sp)
    1436:	7ae2                	ld	s5,56(sp)
    1438:	7b42                	ld	s6,48(sp)
    143a:	7ba2                	ld	s7,40(sp)
    143c:	7c02                	ld	s8,32(sp)
    143e:	6ce2                	ld	s9,24(sp)
    1440:	6d42                	ld	s10,16(sp)
    1442:	6da2                	ld	s11,8(sp)
    1444:	6165                	addi	sp,sp,112
    1446:	8082                	ret

0000000000001448 <fprintf>:
    1448:	715d                	addi	sp,sp,-80
    144a:	ec06                	sd	ra,24(sp)
    144c:	f032                	sd	a2,32(sp)
    144e:	f436                	sd	a3,40(sp)
    1450:	f83a                	sd	a4,48(sp)
    1452:	fc3e                	sd	a5,56(sp)
    1454:	e0c2                	sd	a6,64(sp)
    1456:	e4c6                	sd	a7,72(sp)
    1458:	1010                	addi	a2,sp,32
    145a:	e432                	sd	a2,8(sp)
    145c:	00000097          	auipc	ra,0x0
    1460:	e1a080e7          	jalr	-486(ra) # 1276 <vprintf>
    1464:	60e2                	ld	ra,24(sp)
    1466:	6161                	addi	sp,sp,80
    1468:	8082                	ret

000000000000146a <printf>:
    146a:	711d                	addi	sp,sp,-96
    146c:	ec06                	sd	ra,24(sp)
    146e:	f42e                	sd	a1,40(sp)
    1470:	f832                	sd	a2,48(sp)
    1472:	fc36                	sd	a3,56(sp)
    1474:	e0ba                	sd	a4,64(sp)
    1476:	e4be                	sd	a5,72(sp)
    1478:	e8c2                	sd	a6,80(sp)
    147a:	ecc6                	sd	a7,88(sp)
    147c:	1030                	addi	a2,sp,40
    147e:	e432                	sd	a2,8(sp)
    1480:	85aa                	mv	a1,a0
    1482:	4505                	li	a0,1
    1484:	00000097          	auipc	ra,0x0
    1488:	df2080e7          	jalr	-526(ra) # 1276 <vprintf>
    148c:	60e2                	ld	ra,24(sp)
    148e:	6125                	addi	sp,sp,96
    1490:	8082                	ret

0000000000001492 <cksum>:
    1492:	cdb1                	beqz	a1,14ee <cksum+0x5c>
    1494:	00b50833          	add	a6,a0,a1
    1498:	4781                	li	a5,0
    149a:	00002637          	lui	a2,0x2
    149e:	05860613          	addi	a2,a2,88 # 2058 <crctab>
    14a2:	0505                	addi	a0,a0,1
    14a4:	0087969b          	slliw	a3,a5,0x8
    14a8:	0187d71b          	srliw	a4,a5,0x18
    14ac:	fff54783          	lbu	a5,-1(a0)
    14b0:	8f3d                	xor	a4,a4,a5
    14b2:	1702                	slli	a4,a4,0x20
    14b4:	9301                	srli	a4,a4,0x20
    14b6:	070a                	slli	a4,a4,0x2
    14b8:	9732                	add	a4,a4,a2
    14ba:	431c                	lw	a5,0(a4)
    14bc:	8fb5                	xor	a5,a5,a3
    14be:	2781                	sext.w	a5,a5
    14c0:	fea811e3          	bne	a6,a0,14a2 <cksum+0x10>
    14c4:	00002637          	lui	a2,0x2
    14c8:	05860613          	addi	a2,a2,88 # 2058 <crctab>
    14cc:	0ff5f693          	andi	a3,a1,255
    14d0:	81a1                	srli	a1,a1,0x8
    14d2:	0087951b          	slliw	a0,a5,0x8
    14d6:	0187d71b          	srliw	a4,a5,0x18
    14da:	8f35                	xor	a4,a4,a3
    14dc:	070a                	slli	a4,a4,0x2
    14de:	9732                	add	a4,a4,a2
    14e0:	431c                	lw	a5,0(a4)
    14e2:	8fa9                	xor	a5,a5,a0
    14e4:	2781                	sext.w	a5,a5
    14e6:	f1fd                	bnez	a1,14cc <cksum+0x3a>
    14e8:	fff7c513          	not	a0,a5
    14ec:	8082                	ret
    14ee:	4781                	li	a5,0
    14f0:	bfe5                	j	14e8 <cksum+0x56>

00000000000014f2 <swap_bytes>:
    14f2:	ce19                	beqz	a2,1510 <swap_bytes+0x1e>
    14f4:	87aa                	mv	a5,a0
    14f6:	962a                	add	a2,a2,a0
    14f8:	0007c703          	lbu	a4,0(a5)
    14fc:	0005c683          	lbu	a3,0(a1)
    1500:	00d78023          	sb	a3,0(a5)
    1504:	00e58023          	sb	a4,0(a1)
    1508:	0785                	addi	a5,a5,1
    150a:	0585                	addi	a1,a1,1
    150c:	fec796e3          	bne	a5,a2,14f8 <swap_bytes+0x6>
    1510:	8082                	ret

0000000000001512 <random_init>:
    1512:	7139                	addi	sp,sp,-64
    1514:	fc06                	sd	ra,56(sp)
    1516:	f822                	sd	s0,48(sp)
    1518:	f426                	sd	s1,40(sp)
    151a:	f04a                	sd	s2,32(sp)
    151c:	ec4e                	sd	s3,24(sp)
    151e:	e852                	sd	s4,16(sp)
    1520:	c62a                	sw	a0,12(sp)
    1522:	000037b7          	lui	a5,0x3
    1526:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    152a:	eca5                	bnez	s1,15a2 <random_init+0x90>
    152c:	00003737          	lui	a4,0x3
    1530:	10070913          	addi	s2,a4,256 # 3100 <s>
    1534:	10070713          	addi	a4,a4,256
    1538:	87a6                	mv	a5,s1
    153a:	10000693          	li	a3,256
    153e:	00f70023          	sb	a5,0(a4)
    1542:	2785                	addiw	a5,a5,1
    1544:	0705                	addi	a4,a4,1
    1546:	fed79ce3          	bne	a5,a3,153e <random_init+0x2c>
    154a:	4401                	li	s0,0
    154c:	000039b7          	lui	s3,0x3
    1550:	10098993          	addi	s3,s3,256 # 3100 <s>
    1554:	10000a13          	li	s4,256
    1558:	0034f793          	andi	a5,s1,3
    155c:	0818                	addi	a4,sp,16
    155e:	97ba                	add	a5,a5,a4
    1560:	ffc7c783          	lbu	a5,-4(a5)
    1564:	00094703          	lbu	a4,0(s2)
    1568:	9fb9                	addw	a5,a5,a4
    156a:	9c3d                	addw	s0,s0,a5
    156c:	0ff47413          	andi	s0,s0,255
    1570:	4605                	li	a2,1
    1572:	008985b3          	add	a1,s3,s0
    1576:	854a                	mv	a0,s2
    1578:	00000097          	auipc	ra,0x0
    157c:	f7a080e7          	jalr	-134(ra) # 14f2 <swap_bytes>
    1580:	2485                	addiw	s1,s1,1
    1582:	0905                	addi	s2,s2,1
    1584:	fd449ae3          	bne	s1,s4,1558 <random_init+0x46>
    1588:	000037b7          	lui	a5,0x3
    158c:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1590:	000037b7          	lui	a5,0x3
    1594:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1598:	000037b7          	lui	a5,0x3
    159c:	4705                	li	a4,1
    159e:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    15a2:	70e2                	ld	ra,56(sp)
    15a4:	7442                	ld	s0,48(sp)
    15a6:	74a2                	ld	s1,40(sp)
    15a8:	7902                	ld	s2,32(sp)
    15aa:	69e2                	ld	s3,24(sp)
    15ac:	6a42                	ld	s4,16(sp)
    15ae:	6121                	addi	sp,sp,64
    15b0:	8082                	ret

00000000000015b2 <random_bytes>:
    15b2:	7139                	addi	sp,sp,-64
    15b4:	fc06                	sd	ra,56(sp)
    15b6:	f822                	sd	s0,48(sp)
    15b8:	f426                	sd	s1,40(sp)
    15ba:	f04a                	sd	s2,32(sp)
    15bc:	ec4e                	sd	s3,24(sp)
    15be:	e852                	sd	s4,16(sp)
    15c0:	e456                	sd	s5,8(sp)
    15c2:	e05a                	sd	s6,0(sp)
    15c4:	892a                	mv	s2,a0
    15c6:	8aae                	mv	s5,a1
    15c8:	000037b7          	lui	a5,0x3
    15cc:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    15d0:	c3c1                	beqz	a5,1650 <random_bytes+0x9e>
    15d2:	060a8563          	beqz	s5,163c <random_bytes+0x8a>
    15d6:	9aca                	add	s5,s5,s2
    15d8:	00003a37          	lui	s4,0x3
    15dc:	000034b7          	lui	s1,0x3
    15e0:	10048493          	addi	s1,s1,256 # 3100 <s>
    15e4:	000039b7          	lui	s3,0x3
    15e8:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    15ec:	2505                	addiw	a0,a0,1
    15ee:	0ff57513          	andi	a0,a0,255
    15f2:	0eaa0aa3          	sb	a0,245(s4)
    15f6:	00a48b33          	add	s6,s1,a0
    15fa:	000b4403          	lbu	s0,0(s6)
    15fe:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1602:	9c3d                	addw	s0,s0,a5
    1604:	0ff47413          	andi	s0,s0,255
    1608:	0e898a23          	sb	s0,244(s3)
    160c:	4605                	li	a2,1
    160e:	008485b3          	add	a1,s1,s0
    1612:	855a                	mv	a0,s6
    1614:	00000097          	auipc	ra,0x0
    1618:	ede080e7          	jalr	-290(ra) # 14f2 <swap_bytes>
    161c:	9426                	add	s0,s0,s1
    161e:	000b4783          	lbu	a5,0(s6)
    1622:	00044703          	lbu	a4,0(s0)
    1626:	9fb9                	addw	a5,a5,a4
    1628:	0ff7f793          	andi	a5,a5,255
    162c:	97a6                	add	a5,a5,s1
    162e:	0007c783          	lbu	a5,0(a5)
    1632:	00f90023          	sb	a5,0(s2)
    1636:	0905                	addi	s2,s2,1
    1638:	fb2a98e3          	bne	s5,s2,15e8 <random_bytes+0x36>
    163c:	70e2                	ld	ra,56(sp)
    163e:	7442                	ld	s0,48(sp)
    1640:	74a2                	ld	s1,40(sp)
    1642:	7902                	ld	s2,32(sp)
    1644:	69e2                	ld	s3,24(sp)
    1646:	6a42                	ld	s4,16(sp)
    1648:	6aa2                	ld	s5,8(sp)
    164a:	6b02                	ld	s6,0(sp)
    164c:	6121                	addi	sp,sp,64
    164e:	8082                	ret
    1650:	4501                	li	a0,0
    1652:	00000097          	auipc	ra,0x0
    1656:	ec0080e7          	jalr	-320(ra) # 1512 <random_init>
    165a:	bfa5                	j	15d2 <random_bytes+0x20>

000000000000165c <random_ulong>:
    165c:	1101                	addi	sp,sp,-32
    165e:	ec06                	sd	ra,24(sp)
    1660:	45a1                	li	a1,8
    1662:	0028                	addi	a0,sp,8
    1664:	00000097          	auipc	ra,0x0
    1668:	f4e080e7          	jalr	-178(ra) # 15b2 <random_bytes>
    166c:	6522                	ld	a0,8(sp)
    166e:	60e2                	ld	ra,24(sp)
    1670:	6105                	addi	sp,sp,32
    1672:	8082                	ret

0000000000001674 <shuffle>:
    1674:	c9b9                	beqz	a1,16ca <shuffle+0x56>
    1676:	7179                	addi	sp,sp,-48
    1678:	f406                	sd	ra,40(sp)
    167a:	f022                	sd	s0,32(sp)
    167c:	ec26                	sd	s1,24(sp)
    167e:	e84a                	sd	s2,16(sp)
    1680:	e44e                	sd	s3,8(sp)
    1682:	e052                	sd	s4,0(sp)
    1684:	8a2a                	mv	s4,a0
    1686:	89ae                	mv	s3,a1
    1688:	84b2                	mv	s1,a2
    168a:	892a                	mv	s2,a0
    168c:	4401                	li	s0,0
    168e:	00000097          	auipc	ra,0x0
    1692:	fce080e7          	jalr	-50(ra) # 165c <random_ulong>
    1696:	408985b3          	sub	a1,s3,s0
    169a:	02b575b3          	remu	a1,a0,a1
    169e:	95a2                	add	a1,a1,s0
    16a0:	029585b3          	mul	a1,a1,s1
    16a4:	8626                	mv	a2,s1
    16a6:	95d2                	add	a1,a1,s4
    16a8:	854a                	mv	a0,s2
    16aa:	00000097          	auipc	ra,0x0
    16ae:	e48080e7          	jalr	-440(ra) # 14f2 <swap_bytes>
    16b2:	0405                	addi	s0,s0,1
    16b4:	9926                	add	s2,s2,s1
    16b6:	fc899ce3          	bne	s3,s0,168e <shuffle+0x1a>
    16ba:	70a2                	ld	ra,40(sp)
    16bc:	7402                	ld	s0,32(sp)
    16be:	64e2                	ld	s1,24(sp)
    16c0:	6942                	ld	s2,16(sp)
    16c2:	69a2                	ld	s3,8(sp)
    16c4:	6a02                	ld	s4,0(sp)
    16c6:	6145                	addi	sp,sp,48
    16c8:	8082                	ret
    16ca:	8082                	ret

00000000000016cc <arc4_init>:
    16cc:	100500a3          	sb	zero,257(a0)
    16d0:	10050023          	sb	zero,256(a0)
    16d4:	4781                	li	a5,0
    16d6:	10000693          	li	a3,256
    16da:	00f50733          	add	a4,a0,a5
    16de:	00f70023          	sb	a5,0(a4)
    16e2:	0785                	addi	a5,a5,1
    16e4:	fed79be3          	bne	a5,a3,16da <arc4_init+0xe>
    16e8:	86aa                	mv	a3,a0
    16ea:	10050e13          	addi	t3,a0,256
    16ee:	4701                	li	a4,0
    16f0:	4781                	li	a5,0
    16f2:	0006c883          	lbu	a7,0(a3)
    16f6:	00f58833          	add	a6,a1,a5
    16fa:	00084803          	lbu	a6,0(a6)
    16fe:	00e8873b          	addw	a4,a7,a4
    1702:	00e8073b          	addw	a4,a6,a4
    1706:	0ff77713          	andi	a4,a4,255
    170a:	00e50833          	add	a6,a0,a4
    170e:	00084303          	lbu	t1,0(a6)
    1712:	00668023          	sb	t1,0(a3)
    1716:	01180023          	sb	a7,0(a6)
    171a:	0785                	addi	a5,a5,1
    171c:	00c7b833          	sltu	a6,a5,a2
    1720:	41000833          	neg	a6,a6
    1724:	0107f7b3          	and	a5,a5,a6
    1728:	0685                	addi	a3,a3,1
    172a:	fdc694e3          	bne	a3,t3,16f2 <arc4_init+0x26>
    172e:	8082                	ret

0000000000001730 <arc4_crypt>:
    1730:	10054e03          	lbu	t3,256(a0)
    1734:	10154803          	lbu	a6,257(a0)
    1738:	fff60e93          	addi	t4,a2,-1
    173c:	c225                	beqz	a2,179c <arc4_crypt+0x6c>
    173e:	00c588b3          	add	a7,a1,a2
    1742:	86ae                	mv	a3,a1
    1744:	001e031b          	addiw	t1,t3,1
    1748:	40b3033b          	subw	t1,t1,a1
    174c:	00d3073b          	addw	a4,t1,a3
    1750:	0ff77713          	andi	a4,a4,255
    1754:	972a                	add	a4,a4,a0
    1756:	00074603          	lbu	a2,0(a4)
    175a:	0106083b          	addw	a6,a2,a6
    175e:	0ff87813          	andi	a6,a6,255
    1762:	010507b3          	add	a5,a0,a6
    1766:	0007c583          	lbu	a1,0(a5)
    176a:	00b70023          	sb	a1,0(a4)
    176e:	00c78023          	sb	a2,0(a5)
    1772:	0685                	addi	a3,a3,1
    1774:	00074783          	lbu	a5,0(a4)
    1778:	9fb1                	addw	a5,a5,a2
    177a:	0ff7f793          	andi	a5,a5,255
    177e:	97aa                	add	a5,a5,a0
    1780:	0007c783          	lbu	a5,0(a5)
    1784:	fff6c703          	lbu	a4,-1(a3)
    1788:	8fb9                	xor	a5,a5,a4
    178a:	fef68fa3          	sb	a5,-1(a3)
    178e:	fb169fe3          	bne	a3,a7,174c <arc4_crypt+0x1c>
    1792:	2e85                	addiw	t4,t4,1
    1794:	01ce8e3b          	addw	t3,t4,t3
    1798:	0ffe7e13          	andi	t3,t3,255
    179c:	11c50023          	sb	t3,256(a0)
    17a0:	110500a3          	sb	a6,257(a0)
    17a4:	8082                	ret

00000000000017a6 <_main>:
    17a6:	1141                	addi	sp,sp,-16
    17a8:	e406                	sd	ra,8(sp)
    17aa:	00000097          	auipc	ra,0x0
    17ae:	856080e7          	jalr	-1962(ra) # 1000 <main>
    17b2:	4501                	li	a0,0
    17b4:	00000097          	auipc	ra,0x0
    17b8:	578080e7          	jalr	1400(ra) # 1d2c <exit>
    17bc:	60a2                	ld	ra,8(sp)
    17be:	0141                	addi	sp,sp,16
    17c0:	8082                	ret

00000000000017c2 <strcmp>:
    17c2:	00054783          	lbu	a5,0(a0)
    17c6:	cb91                	beqz	a5,17da <strcmp+0x18>
    17c8:	0005c703          	lbu	a4,0(a1)
    17cc:	00f71763          	bne	a4,a5,17da <strcmp+0x18>
    17d0:	0505                	addi	a0,a0,1
    17d2:	0585                	addi	a1,a1,1
    17d4:	00054783          	lbu	a5,0(a0)
    17d8:	fbe5                	bnez	a5,17c8 <strcmp+0x6>
    17da:	0005c503          	lbu	a0,0(a1)
    17de:	40a7853b          	subw	a0,a5,a0
    17e2:	8082                	ret

00000000000017e4 <strcpy>:
    17e4:	87aa                	mv	a5,a0
    17e6:	0585                	addi	a1,a1,1
    17e8:	0785                	addi	a5,a5,1
    17ea:	fff5c703          	lbu	a4,-1(a1)
    17ee:	fee78fa3          	sb	a4,-1(a5)
    17f2:	fb75                	bnez	a4,17e6 <strcpy+0x2>
    17f4:	8082                	ret

00000000000017f6 <strlen>:
    17f6:	00054783          	lbu	a5,0(a0)
    17fa:	cf81                	beqz	a5,1812 <strlen+0x1c>
    17fc:	0505                	addi	a0,a0,1
    17fe:	87aa                	mv	a5,a0
    1800:	4685                	li	a3,1
    1802:	9e89                	subw	a3,a3,a0
    1804:	00f6853b          	addw	a0,a3,a5
    1808:	0785                	addi	a5,a5,1
    180a:	fff7c703          	lbu	a4,-1(a5)
    180e:	fb7d                	bnez	a4,1804 <strlen+0xe>
    1810:	8082                	ret
    1812:	4501                	li	a0,0
    1814:	8082                	ret

0000000000001816 <memset>:
    1816:	ca19                	beqz	a2,182c <memset+0x16>
    1818:	87aa                	mv	a5,a0
    181a:	1602                	slli	a2,a2,0x20
    181c:	9201                	srli	a2,a2,0x20
    181e:	00a60733          	add	a4,a2,a0
    1822:	00b78023          	sb	a1,0(a5)
    1826:	0785                	addi	a5,a5,1
    1828:	fee79de3          	bne	a5,a4,1822 <memset+0xc>
    182c:	8082                	ret

000000000000182e <memcmp>:
    182e:	1101                	addi	sp,sp,-32
    1830:	ec06                	sd	ra,24(sp)
    1832:	e822                	sd	s0,16(sp)
    1834:	e426                	sd	s1,8(sp)
    1836:	e04a                	sd	s2,0(sp)
    1838:	892a                	mv	s2,a0
    183a:	842e                	mv	s0,a1
    183c:	84b2                	mv	s1,a2
    183e:	c915                	beqz	a0,1872 <memcmp+0x44>
    1840:	c5ad                	beqz	a1,18aa <memcmp+0x7c>
    1842:	fff60713          	addi	a4,a2,-1
    1846:	c645                	beqz	a2,18ee <memcmp+0xc0>
    1848:	87ca                	mv	a5,s2
    184a:	00190613          	addi	a2,s2,1
    184e:	963a                	add	a2,a2,a4
    1850:	0007c683          	lbu	a3,0(a5)
    1854:	00044703          	lbu	a4,0(s0)
    1858:	08e69463          	bne	a3,a4,18e0 <memcmp+0xb2>
    185c:	0785                	addi	a5,a5,1
    185e:	0405                	addi	s0,s0,1
    1860:	fec798e3          	bne	a5,a2,1850 <memcmp+0x22>
    1864:	4501                	li	a0,0
    1866:	60e2                	ld	ra,24(sp)
    1868:	6442                	ld	s0,16(sp)
    186a:	64a2                	ld	s1,8(sp)
    186c:	6902                	ld	s2,0(sp)
    186e:	6105                	addi	sp,sp,32
    1870:	8082                	ret
    1872:	4501                	li	a0,0
    1874:	da6d                	beqz	a2,1866 <memcmp+0x38>
    1876:	03200693          	li	a3,50
    187a:	00002637          	lui	a2,0x2
    187e:	45860613          	addi	a2,a2,1112 # 2458 <crctab+0x400>
    1882:	000025b7          	lui	a1,0x2
    1886:	46858593          	addi	a1,a1,1128 # 2468 <crctab+0x410>
    188a:	4509                	li	a0,2
    188c:	00000097          	auipc	ra,0x0
    1890:	bbc080e7          	jalr	-1092(ra) # 1448 <fprintf>
    1894:	650d                	lui	a0,0x3
    1896:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    189a:	00000097          	auipc	ra,0x0
    189e:	492080e7          	jalr	1170(ra) # 1d2c <exit>
    18a2:	fff48713          	addi	a4,s1,-1
    18a6:	f04d                	bnez	s0,1848 <memcmp+0x1a>
    18a8:	a011                	j	18ac <memcmp+0x7e>
    18aa:	c221                	beqz	a2,18ea <memcmp+0xbc>
    18ac:	03300693          	li	a3,51
    18b0:	00002637          	lui	a2,0x2
    18b4:	45860613          	addi	a2,a2,1112 # 2458 <crctab+0x400>
    18b8:	000025b7          	lui	a1,0x2
    18bc:	4b058593          	addi	a1,a1,1200 # 24b0 <crctab+0x458>
    18c0:	4509                	li	a0,2
    18c2:	00000097          	auipc	ra,0x0
    18c6:	b86080e7          	jalr	-1146(ra) # 1448 <fprintf>
    18ca:	650d                	lui	a0,0x3
    18cc:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18d0:	00000097          	auipc	ra,0x0
    18d4:	45c080e7          	jalr	1116(ra) # 1d2c <exit>
    18d8:	fff48713          	addi	a4,s1,-1
    18dc:	4401                	li	s0,0
    18de:	b7ad                	j	1848 <memcmp+0x1a>
    18e0:	4505                	li	a0,1
    18e2:	f8d762e3          	bltu	a4,a3,1866 <memcmp+0x38>
    18e6:	557d                	li	a0,-1
    18e8:	bfbd                	j	1866 <memcmp+0x38>
    18ea:	4501                	li	a0,0
    18ec:	bfad                	j	1866 <memcmp+0x38>
    18ee:	4501                	li	a0,0
    18f0:	bf9d                	j	1866 <memcmp+0x38>

00000000000018f2 <memcpy>:
    18f2:	1101                	addi	sp,sp,-32
    18f4:	ec06                	sd	ra,24(sp)
    18f6:	e822                	sd	s0,16(sp)
    18f8:	e426                	sd	s1,8(sp)
    18fa:	e04a                	sd	s2,0(sp)
    18fc:	84aa                	mv	s1,a0
    18fe:	842e                	mv	s0,a1
    1900:	8932                	mv	s2,a2
    1902:	c51d                	beqz	a0,1930 <memcpy+0x3e>
    1904:	c1ad                	beqz	a1,1966 <memcpy+0x74>
    1906:	fff60693          	addi	a3,a2,-1
    190a:	ce01                	beqz	a2,1922 <memcpy+0x30>
    190c:	0685                	addi	a3,a3,1
    190e:	96a6                	add	a3,a3,s1
    1910:	87a6                	mv	a5,s1
    1912:	0405                	addi	s0,s0,1
    1914:	0785                	addi	a5,a5,1
    1916:	fff44703          	lbu	a4,-1(s0)
    191a:	fee78fa3          	sb	a4,-1(a5)
    191e:	fed79ae3          	bne	a5,a3,1912 <memcpy+0x20>
    1922:	8526                	mv	a0,s1
    1924:	60e2                	ld	ra,24(sp)
    1926:	6442                	ld	s0,16(sp)
    1928:	64a2                	ld	s1,8(sp)
    192a:	6902                	ld	s2,0(sp)
    192c:	6105                	addi	sp,sp,32
    192e:	8082                	ret
    1930:	da6d                	beqz	a2,1922 <memcpy+0x30>
    1932:	04000693          	li	a3,64
    1936:	00002637          	lui	a2,0x2
    193a:	45860613          	addi	a2,a2,1112 # 2458 <crctab+0x400>
    193e:	000025b7          	lui	a1,0x2
    1942:	4f858593          	addi	a1,a1,1272 # 24f8 <crctab+0x4a0>
    1946:	4509                	li	a0,2
    1948:	00000097          	auipc	ra,0x0
    194c:	b00080e7          	jalr	-1280(ra) # 1448 <fprintf>
    1950:	650d                	lui	a0,0x3
    1952:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1956:	00000097          	auipc	ra,0x0
    195a:	3d6080e7          	jalr	982(ra) # 1d2c <exit>
    195e:	fff90693          	addi	a3,s2,-1
    1962:	f44d                	bnez	s0,190c <memcpy+0x1a>
    1964:	a011                	j	1968 <memcpy+0x76>
    1966:	de55                	beqz	a2,1922 <memcpy+0x30>
    1968:	04100693          	li	a3,65
    196c:	00002637          	lui	a2,0x2
    1970:	45860613          	addi	a2,a2,1112 # 2458 <crctab+0x400>
    1974:	000025b7          	lui	a1,0x2
    1978:	54058593          	addi	a1,a1,1344 # 2540 <crctab+0x4e8>
    197c:	4509                	li	a0,2
    197e:	00000097          	auipc	ra,0x0
    1982:	aca080e7          	jalr	-1334(ra) # 1448 <fprintf>
    1986:	650d                	lui	a0,0x3
    1988:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    198c:	00000097          	auipc	ra,0x0
    1990:	3a0080e7          	jalr	928(ra) # 1d2c <exit>
    1994:	fff90693          	addi	a3,s2,-1
    1998:	4401                	li	s0,0
    199a:	bf8d                	j	190c <memcpy+0x1a>

000000000000199c <itoa>:
    199c:	1101                	addi	sp,sp,-32
    199e:	ec06                	sd	ra,24(sp)
    19a0:	e822                	sd	s0,16(sp)
    19a2:	e426                	sd	s1,8(sp)
    19a4:	842a                	mv	s0,a0
    19a6:	41f5d71b          	sraiw	a4,a1,0x1f
    19aa:	00e5c7b3          	xor	a5,a1,a4
    19ae:	9f99                	subw	a5,a5,a4
    19b0:	84aa                	mv	s1,a0
    19b2:	862a                	mv	a2,a0
    19b4:	4681                	li	a3,0
    19b6:	4529                	li	a0,10
    19b8:	4825                	li	a6,9
    19ba:	88b6                	mv	a7,a3
    19bc:	2685                	addiw	a3,a3,1
    19be:	02a7e73b          	remw	a4,a5,a0
    19c2:	0307071b          	addiw	a4,a4,48
    19c6:	00e60023          	sb	a4,0(a2)
    19ca:	873e                	mv	a4,a5
    19cc:	02a7c7bb          	divw	a5,a5,a0
    19d0:	0605                	addi	a2,a2,1
    19d2:	fee844e3          	blt	a6,a4,19ba <itoa+0x1e>
    19d6:	0405c863          	bltz	a1,1a26 <itoa+0x8a>
    19da:	96a2                	add	a3,a3,s0
    19dc:	00068023          	sb	zero,0(a3)
    19e0:	8522                	mv	a0,s0
    19e2:	00000097          	auipc	ra,0x0
    19e6:	e14080e7          	jalr	-492(ra) # 17f6 <strlen>
    19ea:	fff5071b          	addiw	a4,a0,-1
    19ee:	02e05763          	blez	a4,1a1c <itoa+0x80>
    19f2:	9722                	add	a4,a4,s0
    19f4:	4681                	li	a3,0
    19f6:	0004c783          	lbu	a5,0(s1)
    19fa:	00074603          	lbu	a2,0(a4)
    19fe:	00c48023          	sb	a2,0(s1)
    1a02:	00f70023          	sb	a5,0(a4)
    1a06:	0016879b          	addiw	a5,a3,1
    1a0a:	0007869b          	sext.w	a3,a5
    1a0e:	0485                	addi	s1,s1,1
    1a10:	177d                	addi	a4,a4,-1
    1a12:	fff7c793          	not	a5,a5
    1a16:	9fa9                	addw	a5,a5,a0
    1a18:	fcf6cfe3          	blt	a3,a5,19f6 <itoa+0x5a>
    1a1c:	60e2                	ld	ra,24(sp)
    1a1e:	6442                	ld	s0,16(sp)
    1a20:	64a2                	ld	s1,8(sp)
    1a22:	6105                	addi	sp,sp,32
    1a24:	8082                	ret
    1a26:	96a2                	add	a3,a3,s0
    1a28:	02d00793          	li	a5,45
    1a2c:	00f68023          	sb	a5,0(a3)
    1a30:	0028869b          	addiw	a3,a7,2
    1a34:	b75d                	j	19da <itoa+0x3e>

0000000000001a36 <atoi>:
    1a36:	00054783          	lbu	a5,0(a0)
    1a3a:	02000713          	li	a4,32
    1a3e:	00e79763          	bne	a5,a4,1a4c <atoi+0x16>
    1a42:	0505                	addi	a0,a0,1
    1a44:	00054783          	lbu	a5,0(a0)
    1a48:	fee78de3          	beq	a5,a4,1a42 <atoi+0xc>
    1a4c:	02b00713          	li	a4,43
    1a50:	04e78663          	beq	a5,a4,1a9c <atoi+0x66>
    1a54:	02d00713          	li	a4,45
    1a58:	4805                	li	a6,1
    1a5a:	04e78463          	beq	a5,a4,1aa2 <atoi+0x6c>
    1a5e:	00054683          	lbu	a3,0(a0)
    1a62:	fd06879b          	addiw	a5,a3,-48
    1a66:	0ff7f793          	andi	a5,a5,255
    1a6a:	4725                	li	a4,9
    1a6c:	02f76e63          	bltu	a4,a5,1aa8 <atoi+0x72>
    1a70:	4601                	li	a2,0
    1a72:	45a5                	li	a1,9
    1a74:	0505                	addi	a0,a0,1
    1a76:	0026179b          	slliw	a5,a2,0x2
    1a7a:	9fb1                	addw	a5,a5,a2
    1a7c:	0017979b          	slliw	a5,a5,0x1
    1a80:	9fb5                	addw	a5,a5,a3
    1a82:	fd07861b          	addiw	a2,a5,-48
    1a86:	00054683          	lbu	a3,0(a0)
    1a8a:	fd06871b          	addiw	a4,a3,-48
    1a8e:	0ff77713          	andi	a4,a4,255
    1a92:	fee5f1e3          	bgeu	a1,a4,1a74 <atoi+0x3e>
    1a96:	02c8053b          	mulw	a0,a6,a2
    1a9a:	8082                	ret
    1a9c:	0505                	addi	a0,a0,1
    1a9e:	4805                	li	a6,1
    1aa0:	bf7d                	j	1a5e <atoi+0x28>
    1aa2:	0505                	addi	a0,a0,1
    1aa4:	587d                	li	a6,-1
    1aa6:	bf65                	j	1a5e <atoi+0x28>
    1aa8:	4601                	li	a2,0
    1aaa:	b7f5                	j	1a96 <atoi+0x60>

0000000000001aac <check_file_handle>:
    1aac:	d8010113          	addi	sp,sp,-640
    1ab0:	26113c23          	sd	ra,632(sp)
    1ab4:	26813823          	sd	s0,624(sp)
    1ab8:	26913423          	sd	s1,616(sp)
    1abc:	27213023          	sd	s2,608(sp)
    1ac0:	25313c23          	sd	s3,600(sp)
    1ac4:	25413823          	sd	s4,592(sp)
    1ac8:	25513423          	sd	s5,584(sp)
    1acc:	25613023          	sd	s6,576(sp)
    1ad0:	23713c23          	sd	s7,568(sp)
    1ad4:	23813823          	sd	s8,560(sp)
    1ad8:	23913423          	sd	s9,552(sp)
    1adc:	23a13023          	sd	s10,544(sp)
    1ae0:	21b13c23          	sd	s11,536(sp)
    1ae4:	8baa                	mv	s7,a0
    1ae6:	8a2e                	mv	s4,a1
    1ae8:	8c32                	mv	s8,a2
    1aea:	89b6                	mv	s3,a3
    1aec:	040c                	addi	a1,sp,512
    1aee:	00000097          	auipc	ra,0x0
    1af2:	28e080e7          	jalr	654(ra) # 1d7c <fstat>
    1af6:	20813603          	ld	a2,520(sp)
    1afa:	03361163          	bne	a2,s3,1b1c <check_file_handle+0x70>
    1afe:	06098763          	beqz	s3,1b6c <check_file_handle+0xc0>
    1b02:	4901                	li	s2,0
    1b04:	20000a93          	li	s5,512
    1b08:	00002cb7          	lui	s9,0x2
    1b0c:	00002db7          	lui	s11,0x2
    1b10:	6b0d                	lui	s6,0x3
    1b12:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1b16:	00002d37          	lui	s10,0x2
    1b1a:	aa39                	j	1c38 <check_file_handle+0x18c>
    1b1c:	86ce                	mv	a3,s3
    1b1e:	85d2                	mv	a1,s4
    1b20:	00002537          	lui	a0,0x2
    1b24:	58850513          	addi	a0,a0,1416 # 2588 <crctab+0x530>
    1b28:	00000097          	auipc	ra,0x0
    1b2c:	942080e7          	jalr	-1726(ra) # 146a <printf>
    1b30:	fc0999e3          	bnez	s3,1b02 <check_file_handle+0x56>
    1b34:	20813683          	ld	a3,520(sp)
    1b38:	03368a63          	beq	a3,s3,1b6c <check_file_handle+0xc0>
    1b3c:	0a600813          	li	a6,166
    1b40:	000027b7          	lui	a5,0x2
    1b44:	45878793          	addi	a5,a5,1112 # 2458 <crctab+0x400>
    1b48:	874e                	mv	a4,s3
    1b4a:	8652                	mv	a2,s4
    1b4c:	000025b7          	lui	a1,0x2
    1b50:	65858593          	addi	a1,a1,1624 # 2658 <crctab+0x600>
    1b54:	4509                	li	a0,2
    1b56:	00000097          	auipc	ra,0x0
    1b5a:	8f2080e7          	jalr	-1806(ra) # 1448 <fprintf>
    1b5e:	650d                	lui	a0,0x3
    1b60:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b64:	00000097          	auipc	ra,0x0
    1b68:	1c8080e7          	jalr	456(ra) # 1d2c <exit>
    1b6c:	85d2                	mv	a1,s4
    1b6e:	00002537          	lui	a0,0x2
    1b72:	6a050513          	addi	a0,a0,1696 # 26a0 <crctab+0x648>
    1b76:	00000097          	auipc	ra,0x0
    1b7a:	8f4080e7          	jalr	-1804(ra) # 146a <printf>
    1b7e:	27813083          	ld	ra,632(sp)
    1b82:	27013403          	ld	s0,624(sp)
    1b86:	26813483          	ld	s1,616(sp)
    1b8a:	26013903          	ld	s2,608(sp)
    1b8e:	25813983          	ld	s3,600(sp)
    1b92:	25013a03          	ld	s4,592(sp)
    1b96:	24813a83          	ld	s5,584(sp)
    1b9a:	24013b03          	ld	s6,576(sp)
    1b9e:	23813b83          	ld	s7,568(sp)
    1ba2:	23013c03          	ld	s8,560(sp)
    1ba6:	22813c83          	ld	s9,552(sp)
    1baa:	22013d03          	ld	s10,544(sp)
    1bae:	21813d83          	ld	s11,536(sp)
    1bb2:	28010113          	addi	sp,sp,640
    1bb6:	8082                	ret
    1bb8:	09d00893          	li	a7,157
    1bbc:	458c8813          	addi	a6,s9,1112 # 2458 <crctab+0x400>
    1bc0:	87aa                	mv	a5,a0
    1bc2:	8752                	mv	a4,s4
    1bc4:	86ca                	mv	a3,s2
    1bc6:	8622                	mv	a2,s0
    1bc8:	5b8d8593          	addi	a1,s11,1464 # 25b8 <crctab+0x560>
    1bcc:	4509                	li	a0,2
    1bce:	00000097          	auipc	ra,0x0
    1bd2:	87a080e7          	jalr	-1926(ra) # 1448 <fprintf>
    1bd6:	855a                	mv	a0,s6
    1bd8:	00000097          	auipc	ra,0x0
    1bdc:	154080e7          	jalr	340(ra) # 1d2c <exit>
    1be0:	a89d                	j	1c56 <check_file_handle+0x1aa>
    1be2:	00160593          	addi	a1,a2,1
    1be6:	0285f163          	bgeu	a1,s0,1c08 <check_file_handle+0x15c>
    1bea:	00c10733          	add	a4,sp,a2
    1bee:	00b487b3          	add	a5,s1,a1
    1bf2:	00174683          	lbu	a3,1(a4)
    1bf6:	0007c783          	lbu	a5,0(a5)
    1bfa:	00f68763          	beq	a3,a5,1c08 <check_file_handle+0x15c>
    1bfe:	0585                	addi	a1,a1,1
    1c00:	0705                	addi	a4,a4,1
    1c02:	feb416e3          	bne	s0,a1,1bee <check_file_handle+0x142>
    1c06:	85a2                	mv	a1,s0
    1c08:	08100813          	li	a6,129
    1c0c:	458c8793          	addi	a5,s9,1112
    1c10:	8752                	mv	a4,s4
    1c12:	012606b3          	add	a3,a2,s2
    1c16:	40c58633          	sub	a2,a1,a2
    1c1a:	600d0593          	addi	a1,s10,1536 # 2600 <crctab+0x5a8>
    1c1e:	4509                	li	a0,2
    1c20:	00000097          	auipc	ra,0x0
    1c24:	828080e7          	jalr	-2008(ra) # 1448 <fprintf>
    1c28:	855a                	mv	a0,s6
    1c2a:	00000097          	auipc	ra,0x0
    1c2e:	102080e7          	jalr	258(ra) # 1d2c <exit>
    1c32:	9922                	add	s2,s2,s0
    1c34:	f13970e3          	bgeu	s2,s3,1b34 <check_file_handle+0x88>
    1c38:	41298433          	sub	s0,s3,s2
    1c3c:	008af363          	bgeu	s5,s0,1c42 <check_file_handle+0x196>
    1c40:	8456                	mv	s0,s5
    1c42:	0004061b          	sext.w	a2,s0
    1c46:	858a                	mv	a1,sp
    1c48:	855e                	mv	a0,s7
    1c4a:	00000097          	auipc	ra,0x0
    1c4e:	10a080e7          	jalr	266(ra) # 1d54 <read>
    1c52:	f68513e3          	bne	a0,s0,1bb8 <check_file_handle+0x10c>
    1c56:	012c04b3          	add	s1,s8,s2
    1c5a:	8622                	mv	a2,s0
    1c5c:	85a6                	mv	a1,s1
    1c5e:	850a                	mv	a0,sp
    1c60:	00000097          	auipc	ra,0x0
    1c64:	bce080e7          	jalr	-1074(ra) # 182e <memcmp>
    1c68:	d569                	beqz	a0,1c32 <check_file_handle+0x186>
    1c6a:	03298163          	beq	s3,s2,1c8c <check_file_handle+0x1e0>
    1c6e:	870a                	mv	a4,sp
    1c70:	4601                	li	a2,0
    1c72:	00c487b3          	add	a5,s1,a2
    1c76:	00074683          	lbu	a3,0(a4)
    1c7a:	0007c783          	lbu	a5,0(a5)
    1c7e:	f6f692e3          	bne	a3,a5,1be2 <check_file_handle+0x136>
    1c82:	0605                	addi	a2,a2,1
    1c84:	0705                	addi	a4,a4,1
    1c86:	fe8666e3          	bltu	a2,s0,1c72 <check_file_handle+0x1c6>
    1c8a:	bfa1                	j	1be2 <check_file_handle+0x136>
    1c8c:	4601                	li	a2,0
    1c8e:	4585                	li	a1,1
    1c90:	bfa5                	j	1c08 <check_file_handle+0x15c>

0000000000001c92 <check_file>:
    1c92:	7179                	addi	sp,sp,-48
    1c94:	f406                	sd	ra,40(sp)
    1c96:	f022                	sd	s0,32(sp)
    1c98:	ec26                	sd	s1,24(sp)
    1c9a:	e84a                	sd	s2,16(sp)
    1c9c:	e44e                	sd	s3,8(sp)
    1c9e:	84aa                	mv	s1,a0
    1ca0:	892e                	mv	s2,a1
    1ca2:	89b2                	mv	s3,a2
    1ca4:	4581                	li	a1,0
    1ca6:	00000097          	auipc	ra,0x0
    1caa:	0a6080e7          	jalr	166(ra) # 1d4c <open>
    1cae:	842a                	mv	s0,a0
    1cb0:	4789                	li	a5,2
    1cb2:	02a7df63          	bge	a5,a0,1cf0 <check_file+0x5e>
    1cb6:	86ce                	mv	a3,s3
    1cb8:	864a                	mv	a2,s2
    1cba:	85a6                	mv	a1,s1
    1cbc:	8522                	mv	a0,s0
    1cbe:	00000097          	auipc	ra,0x0
    1cc2:	dee080e7          	jalr	-530(ra) # 1aac <check_file_handle>
    1cc6:	85a6                	mv	a1,s1
    1cc8:	00002537          	lui	a0,0x2
    1ccc:	72850513          	addi	a0,a0,1832 # 2728 <crctab+0x6d0>
    1cd0:	fffff097          	auipc	ra,0xfffff
    1cd4:	79a080e7          	jalr	1946(ra) # 146a <printf>
    1cd8:	8522                	mv	a0,s0
    1cda:	00000097          	auipc	ra,0x0
    1cde:	09a080e7          	jalr	154(ra) # 1d74 <close>
    1ce2:	70a2                	ld	ra,40(sp)
    1ce4:	7402                	ld	s0,32(sp)
    1ce6:	64e2                	ld	s1,24(sp)
    1ce8:	6942                	ld	s2,16(sp)
    1cea:	69a2                	ld	s3,8(sp)
    1cec:	6145                	addi	sp,sp,48
    1cee:	8082                	ret
    1cf0:	0ae00713          	li	a4,174
    1cf4:	000026b7          	lui	a3,0x2
    1cf8:	45868693          	addi	a3,a3,1112 # 2458 <crctab+0x400>
    1cfc:	8626                	mv	a2,s1
    1cfe:	000025b7          	lui	a1,0x2
    1d02:	6c058593          	addi	a1,a1,1728 # 26c0 <crctab+0x668>
    1d06:	4509                	li	a0,2
    1d08:	fffff097          	auipc	ra,0xfffff
    1d0c:	740080e7          	jalr	1856(ra) # 1448 <fprintf>
    1d10:	650d                	lui	a0,0x3
    1d12:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1d16:	00000097          	auipc	ra,0x0
    1d1a:	016080e7          	jalr	22(ra) # 1d2c <exit>
    1d1e:	bf61                	j	1cb6 <check_file+0x24>

0000000000001d20 <r_sp>:
    1d20:	850a                	mv	a0,sp
    1d22:	8082                	ret

0000000000001d24 <halt>:
    1d24:	4885                	li	a7,1
    1d26:	00000073          	ecall
    1d2a:	8082                	ret

0000000000001d2c <exit>:
    1d2c:	4889                	li	a7,2
    1d2e:	00000073          	ecall
    1d32:	8082                	ret

0000000000001d34 <exec>:
    1d34:	488d                	li	a7,3
    1d36:	00000073          	ecall
    1d3a:	8082                	ret

0000000000001d3c <wait>:
    1d3c:	4891                	li	a7,4
    1d3e:	00000073          	ecall
    1d42:	8082                	ret

0000000000001d44 <remove>:
    1d44:	4895                	li	a7,5
    1d46:	00000073          	ecall
    1d4a:	8082                	ret

0000000000001d4c <open>:
    1d4c:	4899                	li	a7,6
    1d4e:	00000073          	ecall
    1d52:	8082                	ret

0000000000001d54 <read>:
    1d54:	489d                	li	a7,7
    1d56:	00000073          	ecall
    1d5a:	8082                	ret

0000000000001d5c <write>:
    1d5c:	48a1                	li	a7,8
    1d5e:	00000073          	ecall
    1d62:	8082                	ret

0000000000001d64 <seek>:
    1d64:	48a5                	li	a7,9
    1d66:	00000073          	ecall
    1d6a:	8082                	ret

0000000000001d6c <tell>:
    1d6c:	48a9                	li	a7,10
    1d6e:	00000073          	ecall
    1d72:	8082                	ret

0000000000001d74 <close>:
    1d74:	48ad                	li	a7,11
    1d76:	00000073          	ecall
    1d7a:	8082                	ret

0000000000001d7c <fstat>:
    1d7c:	48b1                	li	a7,12
    1d7e:	00000073          	ecall
    1d82:	8082                	ret

0000000000001d84 <mmap>:
    1d84:	48b5                	li	a7,13
    1d86:	00000073          	ecall
    1d8a:	8082                	ret

0000000000001d8c <munmap>:
    1d8c:	48b9                	li	a7,14
    1d8e:	00000073          	ecall
    1d92:	8082                	ret

0000000000001d94 <chdir>:
    1d94:	48bd                	li	a7,15
    1d96:	00000073          	ecall
    1d9a:	8082                	ret

0000000000001d9c <mkdir>:
    1d9c:	48c1                	li	a7,16
    1d9e:	00000073          	ecall
    1da2:	8082                	ret
