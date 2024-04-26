
build/user/userprogs/child-rox:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <try_write>:
    1000:	7179                	addi	sp,sp,-48
    1002:	f406                	sd	ra,40(sp)
    1004:	f022                	sd	s0,32(sp)
    1006:	4585                	li	a1,1
    1008:	00002537          	lui	a0,0x2
    100c:	da050513          	addi	a0,a0,-608 # 1da0 <mkdir+0x14>
    1010:	00001097          	auipc	ra,0x1
    1014:	d2c080e7          	jalr	-724(ra) # 1d3c <open>
    1018:	842a                	mv	s0,a0
    101a:	4789                	li	a5,2
    101c:	02a7d563          	bge	a5,a0,1046 <try_write+0x46>
    1020:	464d                	li	a2,19
    1022:	002c                	addi	a1,sp,8
    1024:	8522                	mv	a0,s0
    1026:	00001097          	auipc	ra,0x1
    102a:	d26080e7          	jalr	-730(ra) # 1d4c <write>
    102e:	57fd                	li	a5,-1
    1030:	04f51163          	bne	a0,a5,1072 <try_write+0x72>
    1034:	8522                	mv	a0,s0
    1036:	00001097          	auipc	ra,0x1
    103a:	d2e080e7          	jalr	-722(ra) # 1d64 <close>
    103e:	70a2                	ld	ra,40(sp)
    1040:	7402                	ld	s0,32(sp)
    1042:	6145                	addi	sp,sp,48
    1044:	8082                	ret
    1046:	46b5                	li	a3,13
    1048:	00002637          	lui	a2,0x2
    104c:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x24>
    1050:	000025b7          	lui	a1,0x2
    1054:	dd058593          	addi	a1,a1,-560 # 1dd0 <mkdir+0x44>
    1058:	4509                	li	a0,2
    105a:	00000097          	auipc	ra,0x0
    105e:	3de080e7          	jalr	990(ra) # 1438 <fprintf>
    1062:	650d                	lui	a0,0x3
    1064:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1068:	00001097          	auipc	ra,0x1
    106c:	cb4080e7          	jalr	-844(ra) # 1d1c <exit>
    1070:	bf45                	j	1020 <try_write+0x20>
    1072:	46b9                	li	a3,14
    1074:	00002637          	lui	a2,0x2
    1078:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x24>
    107c:	000025b7          	lui	a1,0x2
    1080:	e2858593          	addi	a1,a1,-472 # 1e28 <mkdir+0x9c>
    1084:	4509                	li	a0,2
    1086:	00000097          	auipc	ra,0x0
    108a:	3b2080e7          	jalr	946(ra) # 1438 <fprintf>
    108e:	650d                	lui	a0,0x3
    1090:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1094:	00001097          	auipc	ra,0x1
    1098:	c88080e7          	jalr	-888(ra) # 1d1c <exit>
    109c:	bf61                	j	1034 <try_write+0x34>

000000000000109e <main>:
    109e:	715d                	addi	sp,sp,-80
    10a0:	e486                	sd	ra,72(sp)
    10a2:	e0a2                	sd	s0,64(sp)
    10a4:	fc26                	sd	s1,56(sp)
    10a6:	84aa                	mv	s1,a0
    10a8:	842e                	mv	s0,a1
    10aa:	00000097          	auipc	ra,0x0
    10ae:	f56080e7          	jalr	-170(ra) # 1000 <try_write>
    10b2:	4785                	li	a5,1
    10b4:	0297d863          	bge	a5,s1,10e4 <main+0x46>
    10b8:	6408                	ld	a0,8(s0)
    10ba:	00001097          	auipc	ra,0x1
    10be:	96c080e7          	jalr	-1684(ra) # 1a26 <atoi>
    10c2:	4785                	li	a5,1
    10c4:	04a7c663          	blt	a5,a0,1110 <main+0x72>
    10c8:	00000097          	auipc	ra,0x0
    10cc:	f38080e7          	jalr	-200(ra) # 1000 <try_write>
    10d0:	4531                	li	a0,12
    10d2:	00001097          	auipc	ra,0x1
    10d6:	c4a080e7          	jalr	-950(ra) # 1d1c <exit>
    10da:	60a6                	ld	ra,72(sp)
    10dc:	6406                	ld	s0,64(sp)
    10de:	74e2                	ld	s1,56(sp)
    10e0:	6161                	addi	sp,sp,80
    10e2:	8082                	ret
    10e4:	46d9                	li	a3,22
    10e6:	00002637          	lui	a2,0x2
    10ea:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x24>
    10ee:	000025b7          	lui	a1,0x2
    10f2:	e9858593          	addi	a1,a1,-360 # 1e98 <mkdir+0x10c>
    10f6:	4509                	li	a0,2
    10f8:	00000097          	auipc	ra,0x0
    10fc:	340080e7          	jalr	832(ra) # 1438 <fprintf>
    1100:	650d                	lui	a0,0x3
    1102:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1106:	00001097          	auipc	ra,0x1
    110a:	c16080e7          	jalr	-1002(ra) # 1d1c <exit>
    110e:	b76d                	j	10b8 <main+0x1a>
    1110:	0020                	addi	s0,sp,8
    1112:	fff5059b          	addiw	a1,a0,-1
    1116:	8522                	mv	a0,s0
    1118:	00001097          	auipc	ra,0x1
    111c:	874080e7          	jalr	-1932(ra) # 198c <itoa>
    1120:	00002537          	lui	a0,0x2
    1124:	da050793          	addi	a5,a0,-608 # 1da0 <mkdir+0x14>
    1128:	ec3e                	sd	a5,24(sp)
    112a:	f022                	sd	s0,32(sp)
    112c:	f402                	sd	zero,40(sp)
    112e:	082c                	addi	a1,sp,24
    1130:	da050513          	addi	a0,a0,-608
    1134:	00001097          	auipc	ra,0x1
    1138:	bf0080e7          	jalr	-1040(ra) # 1d24 <exec>
    113c:	842a                	mv	s0,a0
    113e:	04054163          	bltz	a0,1180 <main+0xe2>
    1142:	8522                	mv	a0,s0
    1144:	00001097          	auipc	ra,0x1
    1148:	be8080e7          	jalr	-1048(ra) # 1d2c <wait>
    114c:	47b1                	li	a5,12
    114e:	f6f50de3          	beq	a0,a5,10c8 <main+0x2a>
    1152:	02100693          	li	a3,33
    1156:	00002637          	lui	a2,0x2
    115a:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x24>
    115e:	000025b7          	lui	a1,0x2
    1162:	f2058593          	addi	a1,a1,-224 # 1f20 <mkdir+0x194>
    1166:	4509                	li	a0,2
    1168:	00000097          	auipc	ra,0x0
    116c:	2d0080e7          	jalr	720(ra) # 1438 <fprintf>
    1170:	650d                	lui	a0,0x3
    1172:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1176:	00001097          	auipc	ra,0x1
    117a:	ba6080e7          	jalr	-1114(ra) # 1d1c <exit>
    117e:	b7a9                	j	10c8 <main+0x2a>
    1180:	02000693          	li	a3,32
    1184:	00002637          	lui	a2,0x2
    1188:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x24>
    118c:	000025b7          	lui	a1,0x2
    1190:	ed058593          	addi	a1,a1,-304 # 1ed0 <mkdir+0x144>
    1194:	4509                	li	a0,2
    1196:	00000097          	auipc	ra,0x0
    119a:	2a2080e7          	jalr	674(ra) # 1438 <fprintf>
    119e:	650d                	lui	a0,0x3
    11a0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    11a4:	00001097          	auipc	ra,0x1
    11a8:	b78080e7          	jalr	-1160(ra) # 1d1c <exit>
    11ac:	bf59                	j	1142 <main+0xa4>

00000000000011ae <putc>:
    11ae:	1101                	addi	sp,sp,-32
    11b0:	ec06                	sd	ra,24(sp)
    11b2:	00b107a3          	sb	a1,15(sp)
    11b6:	4605                	li	a2,1
    11b8:	00f10593          	addi	a1,sp,15
    11bc:	00001097          	auipc	ra,0x1
    11c0:	b90080e7          	jalr	-1136(ra) # 1d4c <write>
    11c4:	60e2                	ld	ra,24(sp)
    11c6:	6105                	addi	sp,sp,32
    11c8:	8082                	ret

00000000000011ca <printint>:
    11ca:	7179                	addi	sp,sp,-48
    11cc:	f406                	sd	ra,40(sp)
    11ce:	f022                	sd	s0,32(sp)
    11d0:	ec26                	sd	s1,24(sp)
    11d2:	e84a                	sd	s2,16(sp)
    11d4:	84aa                	mv	s1,a0
    11d6:	c299                	beqz	a3,11dc <printint+0x12>
    11d8:	0805c363          	bltz	a1,125e <printint+0x94>
    11dc:	2581                	sext.w	a1,a1
    11de:	4881                	li	a7,0
    11e0:	868a                	mv	a3,sp
    11e2:	4701                	li	a4,0
    11e4:	2601                	sext.w	a2,a2
    11e6:	00002537          	lui	a0,0x2
    11ea:	f6850513          	addi	a0,a0,-152 # 1f68 <digits>
    11ee:	883a                	mv	a6,a4
    11f0:	2705                	addiw	a4,a4,1
    11f2:	02c5f7bb          	remuw	a5,a1,a2
    11f6:	1782                	slli	a5,a5,0x20
    11f8:	9381                	srli	a5,a5,0x20
    11fa:	97aa                	add	a5,a5,a0
    11fc:	0007c783          	lbu	a5,0(a5)
    1200:	00f68023          	sb	a5,0(a3)
    1204:	0005879b          	sext.w	a5,a1
    1208:	02c5d5bb          	divuw	a1,a1,a2
    120c:	0685                	addi	a3,a3,1
    120e:	fec7f0e3          	bgeu	a5,a2,11ee <printint+0x24>
    1212:	00088a63          	beqz	a7,1226 <printint+0x5c>
    1216:	081c                	addi	a5,sp,16
    1218:	973e                	add	a4,a4,a5
    121a:	02d00793          	li	a5,45
    121e:	fef70823          	sb	a5,-16(a4)
    1222:	0028071b          	addiw	a4,a6,2
    1226:	02e05663          	blez	a4,1252 <printint+0x88>
    122a:	00e10433          	add	s0,sp,a4
    122e:	fff10913          	addi	s2,sp,-1
    1232:	993a                	add	s2,s2,a4
    1234:	377d                	addiw	a4,a4,-1
    1236:	1702                	slli	a4,a4,0x20
    1238:	9301                	srli	a4,a4,0x20
    123a:	40e90933          	sub	s2,s2,a4
    123e:	fff44583          	lbu	a1,-1(s0)
    1242:	8526                	mv	a0,s1
    1244:	00000097          	auipc	ra,0x0
    1248:	f6a080e7          	jalr	-150(ra) # 11ae <putc>
    124c:	147d                	addi	s0,s0,-1
    124e:	ff2418e3          	bne	s0,s2,123e <printint+0x74>
    1252:	70a2                	ld	ra,40(sp)
    1254:	7402                	ld	s0,32(sp)
    1256:	64e2                	ld	s1,24(sp)
    1258:	6942                	ld	s2,16(sp)
    125a:	6145                	addi	sp,sp,48
    125c:	8082                	ret
    125e:	40b005bb          	negw	a1,a1
    1262:	4885                	li	a7,1
    1264:	bfb5                	j	11e0 <printint+0x16>

0000000000001266 <vprintf>:
    1266:	7159                	addi	sp,sp,-112
    1268:	f486                	sd	ra,104(sp)
    126a:	f0a2                	sd	s0,96(sp)
    126c:	eca6                	sd	s1,88(sp)
    126e:	e8ca                	sd	s2,80(sp)
    1270:	e4ce                	sd	s3,72(sp)
    1272:	e0d2                	sd	s4,64(sp)
    1274:	fc56                	sd	s5,56(sp)
    1276:	f85a                	sd	s6,48(sp)
    1278:	f45e                	sd	s7,40(sp)
    127a:	f062                	sd	s8,32(sp)
    127c:	ec66                	sd	s9,24(sp)
    127e:	e86a                	sd	s10,16(sp)
    1280:	e46e                	sd	s11,8(sp)
    1282:	0005c483          	lbu	s1,0(a1)
    1286:	18048a63          	beqz	s1,141a <vprintf+0x1b4>
    128a:	8a2a                	mv	s4,a0
    128c:	8ab2                	mv	s5,a2
    128e:	00158413          	addi	s0,a1,1
    1292:	4901                	li	s2,0
    1294:	02500993          	li	s3,37
    1298:	06400b93          	li	s7,100
    129c:	06c00c13          	li	s8,108
    12a0:	07800c93          	li	s9,120
    12a4:	07000d13          	li	s10,112
    12a8:	00002db7          	lui	s11,0x2
    12ac:	00002b37          	lui	s6,0x2
    12b0:	f68b0b13          	addi	s6,s6,-152 # 1f68 <digits>
    12b4:	a839                	j	12d2 <vprintf+0x6c>
    12b6:	85a6                	mv	a1,s1
    12b8:	8552                	mv	a0,s4
    12ba:	00000097          	auipc	ra,0x0
    12be:	ef4080e7          	jalr	-268(ra) # 11ae <putc>
    12c2:	a019                	j	12c8 <vprintf+0x62>
    12c4:	01390f63          	beq	s2,s3,12e2 <vprintf+0x7c>
    12c8:	0405                	addi	s0,s0,1
    12ca:	fff44483          	lbu	s1,-1(s0)
    12ce:	14048663          	beqz	s1,141a <vprintf+0x1b4>
    12d2:	0004879b          	sext.w	a5,s1
    12d6:	fe0917e3          	bnez	s2,12c4 <vprintf+0x5e>
    12da:	fd379ee3          	bne	a5,s3,12b6 <vprintf+0x50>
    12de:	893e                	mv	s2,a5
    12e0:	b7e5                	j	12c8 <vprintf+0x62>
    12e2:	05778063          	beq	a5,s7,1322 <vprintf+0xbc>
    12e6:	05878c63          	beq	a5,s8,133e <vprintf+0xd8>
    12ea:	07978863          	beq	a5,s9,135a <vprintf+0xf4>
    12ee:	09a78463          	beq	a5,s10,1376 <vprintf+0x110>
    12f2:	07300713          	li	a4,115
    12f6:	0ce78263          	beq	a5,a4,13ba <vprintf+0x154>
    12fa:	06300713          	li	a4,99
    12fe:	0ee78763          	beq	a5,a4,13ec <vprintf+0x186>
    1302:	11378163          	beq	a5,s3,1404 <vprintf+0x19e>
    1306:	85ce                	mv	a1,s3
    1308:	8552                	mv	a0,s4
    130a:	00000097          	auipc	ra,0x0
    130e:	ea4080e7          	jalr	-348(ra) # 11ae <putc>
    1312:	85a6                	mv	a1,s1
    1314:	8552                	mv	a0,s4
    1316:	00000097          	auipc	ra,0x0
    131a:	e98080e7          	jalr	-360(ra) # 11ae <putc>
    131e:	4901                	li	s2,0
    1320:	b765                	j	12c8 <vprintf+0x62>
    1322:	008a8493          	addi	s1,s5,8
    1326:	4685                	li	a3,1
    1328:	4629                	li	a2,10
    132a:	000aa583          	lw	a1,0(s5)
    132e:	8552                	mv	a0,s4
    1330:	00000097          	auipc	ra,0x0
    1334:	e9a080e7          	jalr	-358(ra) # 11ca <printint>
    1338:	8aa6                	mv	s5,s1
    133a:	4901                	li	s2,0
    133c:	b771                	j	12c8 <vprintf+0x62>
    133e:	008a8493          	addi	s1,s5,8
    1342:	4681                	li	a3,0
    1344:	4629                	li	a2,10
    1346:	000aa583          	lw	a1,0(s5)
    134a:	8552                	mv	a0,s4
    134c:	00000097          	auipc	ra,0x0
    1350:	e7e080e7          	jalr	-386(ra) # 11ca <printint>
    1354:	8aa6                	mv	s5,s1
    1356:	4901                	li	s2,0
    1358:	bf85                	j	12c8 <vprintf+0x62>
    135a:	008a8493          	addi	s1,s5,8
    135e:	4681                	li	a3,0
    1360:	4641                	li	a2,16
    1362:	000aa583          	lw	a1,0(s5)
    1366:	8552                	mv	a0,s4
    1368:	00000097          	auipc	ra,0x0
    136c:	e62080e7          	jalr	-414(ra) # 11ca <printint>
    1370:	8aa6                	mv	s5,s1
    1372:	4901                	li	s2,0
    1374:	bf91                	j	12c8 <vprintf+0x62>
    1376:	008a8913          	addi	s2,s5,8
    137a:	000aba83          	ld	s5,0(s5)
    137e:	03000593          	li	a1,48
    1382:	8552                	mv	a0,s4
    1384:	00000097          	auipc	ra,0x0
    1388:	e2a080e7          	jalr	-470(ra) # 11ae <putc>
    138c:	85e6                	mv	a1,s9
    138e:	8552                	mv	a0,s4
    1390:	00000097          	auipc	ra,0x0
    1394:	e1e080e7          	jalr	-482(ra) # 11ae <putc>
    1398:	44c1                	li	s1,16
    139a:	03cad793          	srli	a5,s5,0x3c
    139e:	97da                	add	a5,a5,s6
    13a0:	0007c583          	lbu	a1,0(a5)
    13a4:	8552                	mv	a0,s4
    13a6:	00000097          	auipc	ra,0x0
    13aa:	e08080e7          	jalr	-504(ra) # 11ae <putc>
    13ae:	0a92                	slli	s5,s5,0x4
    13b0:	34fd                	addiw	s1,s1,-1
    13b2:	f4e5                	bnez	s1,139a <vprintf+0x134>
    13b4:	8aca                	mv	s5,s2
    13b6:	4901                	li	s2,0
    13b8:	bf01                	j	12c8 <vprintf+0x62>
    13ba:	008a8913          	addi	s2,s5,8
    13be:	000ab483          	ld	s1,0(s5)
    13c2:	c085                	beqz	s1,13e2 <vprintf+0x17c>
    13c4:	0004c583          	lbu	a1,0(s1)
    13c8:	c5b1                	beqz	a1,1414 <vprintf+0x1ae>
    13ca:	8552                	mv	a0,s4
    13cc:	00000097          	auipc	ra,0x0
    13d0:	de2080e7          	jalr	-542(ra) # 11ae <putc>
    13d4:	0485                	addi	s1,s1,1
    13d6:	0004c583          	lbu	a1,0(s1)
    13da:	f9e5                	bnez	a1,13ca <vprintf+0x164>
    13dc:	8aca                	mv	s5,s2
    13de:	4901                	li	s2,0
    13e0:	b5e5                	j	12c8 <vprintf+0x62>
    13e2:	f60d8493          	addi	s1,s11,-160 # 1f60 <mkdir+0x1d4>
    13e6:	02800593          	li	a1,40
    13ea:	b7c5                	j	13ca <vprintf+0x164>
    13ec:	008a8493          	addi	s1,s5,8
    13f0:	000ac583          	lbu	a1,0(s5)
    13f4:	8552                	mv	a0,s4
    13f6:	00000097          	auipc	ra,0x0
    13fa:	db8080e7          	jalr	-584(ra) # 11ae <putc>
    13fe:	8aa6                	mv	s5,s1
    1400:	4901                	li	s2,0
    1402:	b5d9                	j	12c8 <vprintf+0x62>
    1404:	85ce                	mv	a1,s3
    1406:	8552                	mv	a0,s4
    1408:	00000097          	auipc	ra,0x0
    140c:	da6080e7          	jalr	-602(ra) # 11ae <putc>
    1410:	4901                	li	s2,0
    1412:	bd5d                	j	12c8 <vprintf+0x62>
    1414:	8aca                	mv	s5,s2
    1416:	4901                	li	s2,0
    1418:	bd45                	j	12c8 <vprintf+0x62>
    141a:	70a6                	ld	ra,104(sp)
    141c:	7406                	ld	s0,96(sp)
    141e:	64e6                	ld	s1,88(sp)
    1420:	6946                	ld	s2,80(sp)
    1422:	69a6                	ld	s3,72(sp)
    1424:	6a06                	ld	s4,64(sp)
    1426:	7ae2                	ld	s5,56(sp)
    1428:	7b42                	ld	s6,48(sp)
    142a:	7ba2                	ld	s7,40(sp)
    142c:	7c02                	ld	s8,32(sp)
    142e:	6ce2                	ld	s9,24(sp)
    1430:	6d42                	ld	s10,16(sp)
    1432:	6da2                	ld	s11,8(sp)
    1434:	6165                	addi	sp,sp,112
    1436:	8082                	ret

0000000000001438 <fprintf>:
    1438:	715d                	addi	sp,sp,-80
    143a:	ec06                	sd	ra,24(sp)
    143c:	f032                	sd	a2,32(sp)
    143e:	f436                	sd	a3,40(sp)
    1440:	f83a                	sd	a4,48(sp)
    1442:	fc3e                	sd	a5,56(sp)
    1444:	e0c2                	sd	a6,64(sp)
    1446:	e4c6                	sd	a7,72(sp)
    1448:	1010                	addi	a2,sp,32
    144a:	e432                	sd	a2,8(sp)
    144c:	00000097          	auipc	ra,0x0
    1450:	e1a080e7          	jalr	-486(ra) # 1266 <vprintf>
    1454:	60e2                	ld	ra,24(sp)
    1456:	6161                	addi	sp,sp,80
    1458:	8082                	ret

000000000000145a <printf>:
    145a:	711d                	addi	sp,sp,-96
    145c:	ec06                	sd	ra,24(sp)
    145e:	f42e                	sd	a1,40(sp)
    1460:	f832                	sd	a2,48(sp)
    1462:	fc36                	sd	a3,56(sp)
    1464:	e0ba                	sd	a4,64(sp)
    1466:	e4be                	sd	a5,72(sp)
    1468:	e8c2                	sd	a6,80(sp)
    146a:	ecc6                	sd	a7,88(sp)
    146c:	1030                	addi	a2,sp,40
    146e:	e432                	sd	a2,8(sp)
    1470:	85aa                	mv	a1,a0
    1472:	4505                	li	a0,1
    1474:	00000097          	auipc	ra,0x0
    1478:	df2080e7          	jalr	-526(ra) # 1266 <vprintf>
    147c:	60e2                	ld	ra,24(sp)
    147e:	6125                	addi	sp,sp,96
    1480:	8082                	ret

0000000000001482 <cksum>:
    1482:	cdb1                	beqz	a1,14de <cksum+0x5c>
    1484:	00b50833          	add	a6,a0,a1
    1488:	4781                	li	a5,0
    148a:	00002637          	lui	a2,0x2
    148e:	f8060613          	addi	a2,a2,-128 # 1f80 <crctab>
    1492:	0505                	addi	a0,a0,1
    1494:	0087969b          	slliw	a3,a5,0x8
    1498:	0187d71b          	srliw	a4,a5,0x18
    149c:	fff54783          	lbu	a5,-1(a0)
    14a0:	8f3d                	xor	a4,a4,a5
    14a2:	1702                	slli	a4,a4,0x20
    14a4:	9301                	srli	a4,a4,0x20
    14a6:	070a                	slli	a4,a4,0x2
    14a8:	9732                	add	a4,a4,a2
    14aa:	431c                	lw	a5,0(a4)
    14ac:	8fb5                	xor	a5,a5,a3
    14ae:	2781                	sext.w	a5,a5
    14b0:	fea811e3          	bne	a6,a0,1492 <cksum+0x10>
    14b4:	00002637          	lui	a2,0x2
    14b8:	f8060613          	addi	a2,a2,-128 # 1f80 <crctab>
    14bc:	0ff5f693          	andi	a3,a1,255
    14c0:	81a1                	srli	a1,a1,0x8
    14c2:	0087951b          	slliw	a0,a5,0x8
    14c6:	0187d71b          	srliw	a4,a5,0x18
    14ca:	8f35                	xor	a4,a4,a3
    14cc:	070a                	slli	a4,a4,0x2
    14ce:	9732                	add	a4,a4,a2
    14d0:	431c                	lw	a5,0(a4)
    14d2:	8fa9                	xor	a5,a5,a0
    14d4:	2781                	sext.w	a5,a5
    14d6:	f1fd                	bnez	a1,14bc <cksum+0x3a>
    14d8:	fff7c513          	not	a0,a5
    14dc:	8082                	ret
    14de:	4781                	li	a5,0
    14e0:	bfe5                	j	14d8 <cksum+0x56>

00000000000014e2 <swap_bytes>:
    14e2:	ce19                	beqz	a2,1500 <swap_bytes+0x1e>
    14e4:	87aa                	mv	a5,a0
    14e6:	962a                	add	a2,a2,a0
    14e8:	0007c703          	lbu	a4,0(a5)
    14ec:	0005c683          	lbu	a3,0(a1)
    14f0:	00d78023          	sb	a3,0(a5)
    14f4:	00e58023          	sb	a4,0(a1)
    14f8:	0785                	addi	a5,a5,1
    14fa:	0585                	addi	a1,a1,1
    14fc:	fec796e3          	bne	a5,a2,14e8 <swap_bytes+0x6>
    1500:	8082                	ret

0000000000001502 <random_init>:
    1502:	7139                	addi	sp,sp,-64
    1504:	fc06                	sd	ra,56(sp)
    1506:	f822                	sd	s0,48(sp)
    1508:	f426                	sd	s1,40(sp)
    150a:	f04a                	sd	s2,32(sp)
    150c:	ec4e                	sd	s3,24(sp)
    150e:	e852                	sd	s4,16(sp)
    1510:	c62a                	sw	a0,12(sp)
    1512:	000037b7          	lui	a5,0x3
    1516:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    151a:	eca5                	bnez	s1,1592 <random_init+0x90>
    151c:	00003737          	lui	a4,0x3
    1520:	01070913          	addi	s2,a4,16 # 3010 <s>
    1524:	01070713          	addi	a4,a4,16
    1528:	87a6                	mv	a5,s1
    152a:	10000693          	li	a3,256
    152e:	00f70023          	sb	a5,0(a4)
    1532:	2785                	addiw	a5,a5,1
    1534:	0705                	addi	a4,a4,1
    1536:	fed79ce3          	bne	a5,a3,152e <random_init+0x2c>
    153a:	4401                	li	s0,0
    153c:	000039b7          	lui	s3,0x3
    1540:	01098993          	addi	s3,s3,16 # 3010 <s>
    1544:	10000a13          	li	s4,256
    1548:	0034f793          	andi	a5,s1,3
    154c:	0818                	addi	a4,sp,16
    154e:	97ba                	add	a5,a5,a4
    1550:	ffc7c783          	lbu	a5,-4(a5)
    1554:	00094703          	lbu	a4,0(s2)
    1558:	9fb9                	addw	a5,a5,a4
    155a:	9c3d                	addw	s0,s0,a5
    155c:	0ff47413          	andi	s0,s0,255
    1560:	4605                	li	a2,1
    1562:	008985b3          	add	a1,s3,s0
    1566:	854a                	mv	a0,s2
    1568:	00000097          	auipc	ra,0x0
    156c:	f7a080e7          	jalr	-134(ra) # 14e2 <swap_bytes>
    1570:	2485                	addiw	s1,s1,1
    1572:	0905                	addi	s2,s2,1
    1574:	fd449ae3          	bne	s1,s4,1548 <random_init+0x46>
    1578:	000037b7          	lui	a5,0x3
    157c:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1580:	000037b7          	lui	a5,0x3
    1584:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1588:	000037b7          	lui	a5,0x3
    158c:	4705                	li	a4,1
    158e:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1592:	70e2                	ld	ra,56(sp)
    1594:	7442                	ld	s0,48(sp)
    1596:	74a2                	ld	s1,40(sp)
    1598:	7902                	ld	s2,32(sp)
    159a:	69e2                	ld	s3,24(sp)
    159c:	6a42                	ld	s4,16(sp)
    159e:	6121                	addi	sp,sp,64
    15a0:	8082                	ret

00000000000015a2 <random_bytes>:
    15a2:	7139                	addi	sp,sp,-64
    15a4:	fc06                	sd	ra,56(sp)
    15a6:	f822                	sd	s0,48(sp)
    15a8:	f426                	sd	s1,40(sp)
    15aa:	f04a                	sd	s2,32(sp)
    15ac:	ec4e                	sd	s3,24(sp)
    15ae:	e852                	sd	s4,16(sp)
    15b0:	e456                	sd	s5,8(sp)
    15b2:	e05a                	sd	s6,0(sp)
    15b4:	892a                	mv	s2,a0
    15b6:	8aae                	mv	s5,a1
    15b8:	000037b7          	lui	a5,0x3
    15bc:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    15c0:	c3c1                	beqz	a5,1640 <random_bytes+0x9e>
    15c2:	060a8563          	beqz	s5,162c <random_bytes+0x8a>
    15c6:	9aca                	add	s5,s5,s2
    15c8:	00003a37          	lui	s4,0x3
    15cc:	000034b7          	lui	s1,0x3
    15d0:	01048493          	addi	s1,s1,16 # 3010 <s>
    15d4:	000039b7          	lui	s3,0x3
    15d8:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    15dc:	2505                	addiw	a0,a0,1
    15de:	0ff57513          	andi	a0,a0,255
    15e2:	00aa02a3          	sb	a0,5(s4)
    15e6:	00a48b33          	add	s6,s1,a0
    15ea:	000b4403          	lbu	s0,0(s6)
    15ee:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    15f2:	9c3d                	addw	s0,s0,a5
    15f4:	0ff47413          	andi	s0,s0,255
    15f8:	00898223          	sb	s0,4(s3)
    15fc:	4605                	li	a2,1
    15fe:	008485b3          	add	a1,s1,s0
    1602:	855a                	mv	a0,s6
    1604:	00000097          	auipc	ra,0x0
    1608:	ede080e7          	jalr	-290(ra) # 14e2 <swap_bytes>
    160c:	9426                	add	s0,s0,s1
    160e:	000b4783          	lbu	a5,0(s6)
    1612:	00044703          	lbu	a4,0(s0)
    1616:	9fb9                	addw	a5,a5,a4
    1618:	0ff7f793          	andi	a5,a5,255
    161c:	97a6                	add	a5,a5,s1
    161e:	0007c783          	lbu	a5,0(a5)
    1622:	00f90023          	sb	a5,0(s2)
    1626:	0905                	addi	s2,s2,1
    1628:	fb2a98e3          	bne	s5,s2,15d8 <random_bytes+0x36>
    162c:	70e2                	ld	ra,56(sp)
    162e:	7442                	ld	s0,48(sp)
    1630:	74a2                	ld	s1,40(sp)
    1632:	7902                	ld	s2,32(sp)
    1634:	69e2                	ld	s3,24(sp)
    1636:	6a42                	ld	s4,16(sp)
    1638:	6aa2                	ld	s5,8(sp)
    163a:	6b02                	ld	s6,0(sp)
    163c:	6121                	addi	sp,sp,64
    163e:	8082                	ret
    1640:	4501                	li	a0,0
    1642:	00000097          	auipc	ra,0x0
    1646:	ec0080e7          	jalr	-320(ra) # 1502 <random_init>
    164a:	bfa5                	j	15c2 <random_bytes+0x20>

000000000000164c <random_ulong>:
    164c:	1101                	addi	sp,sp,-32
    164e:	ec06                	sd	ra,24(sp)
    1650:	45a1                	li	a1,8
    1652:	0028                	addi	a0,sp,8
    1654:	00000097          	auipc	ra,0x0
    1658:	f4e080e7          	jalr	-178(ra) # 15a2 <random_bytes>
    165c:	6522                	ld	a0,8(sp)
    165e:	60e2                	ld	ra,24(sp)
    1660:	6105                	addi	sp,sp,32
    1662:	8082                	ret

0000000000001664 <shuffle>:
    1664:	c9b9                	beqz	a1,16ba <shuffle+0x56>
    1666:	7179                	addi	sp,sp,-48
    1668:	f406                	sd	ra,40(sp)
    166a:	f022                	sd	s0,32(sp)
    166c:	ec26                	sd	s1,24(sp)
    166e:	e84a                	sd	s2,16(sp)
    1670:	e44e                	sd	s3,8(sp)
    1672:	e052                	sd	s4,0(sp)
    1674:	8a2a                	mv	s4,a0
    1676:	89ae                	mv	s3,a1
    1678:	84b2                	mv	s1,a2
    167a:	892a                	mv	s2,a0
    167c:	4401                	li	s0,0
    167e:	00000097          	auipc	ra,0x0
    1682:	fce080e7          	jalr	-50(ra) # 164c <random_ulong>
    1686:	408985b3          	sub	a1,s3,s0
    168a:	02b575b3          	remu	a1,a0,a1
    168e:	95a2                	add	a1,a1,s0
    1690:	029585b3          	mul	a1,a1,s1
    1694:	8626                	mv	a2,s1
    1696:	95d2                	add	a1,a1,s4
    1698:	854a                	mv	a0,s2
    169a:	00000097          	auipc	ra,0x0
    169e:	e48080e7          	jalr	-440(ra) # 14e2 <swap_bytes>
    16a2:	0405                	addi	s0,s0,1
    16a4:	9926                	add	s2,s2,s1
    16a6:	fc899ce3          	bne	s3,s0,167e <shuffle+0x1a>
    16aa:	70a2                	ld	ra,40(sp)
    16ac:	7402                	ld	s0,32(sp)
    16ae:	64e2                	ld	s1,24(sp)
    16b0:	6942                	ld	s2,16(sp)
    16b2:	69a2                	ld	s3,8(sp)
    16b4:	6a02                	ld	s4,0(sp)
    16b6:	6145                	addi	sp,sp,48
    16b8:	8082                	ret
    16ba:	8082                	ret

00000000000016bc <arc4_init>:
    16bc:	100500a3          	sb	zero,257(a0)
    16c0:	10050023          	sb	zero,256(a0)
    16c4:	4781                	li	a5,0
    16c6:	10000693          	li	a3,256
    16ca:	00f50733          	add	a4,a0,a5
    16ce:	00f70023          	sb	a5,0(a4)
    16d2:	0785                	addi	a5,a5,1
    16d4:	fed79be3          	bne	a5,a3,16ca <arc4_init+0xe>
    16d8:	86aa                	mv	a3,a0
    16da:	10050e13          	addi	t3,a0,256
    16de:	4701                	li	a4,0
    16e0:	4781                	li	a5,0
    16e2:	0006c883          	lbu	a7,0(a3)
    16e6:	00f58833          	add	a6,a1,a5
    16ea:	00084803          	lbu	a6,0(a6)
    16ee:	00e8873b          	addw	a4,a7,a4
    16f2:	00e8073b          	addw	a4,a6,a4
    16f6:	0ff77713          	andi	a4,a4,255
    16fa:	00e50833          	add	a6,a0,a4
    16fe:	00084303          	lbu	t1,0(a6)
    1702:	00668023          	sb	t1,0(a3)
    1706:	01180023          	sb	a7,0(a6)
    170a:	0785                	addi	a5,a5,1
    170c:	00c7b833          	sltu	a6,a5,a2
    1710:	41000833          	neg	a6,a6
    1714:	0107f7b3          	and	a5,a5,a6
    1718:	0685                	addi	a3,a3,1
    171a:	fdc694e3          	bne	a3,t3,16e2 <arc4_init+0x26>
    171e:	8082                	ret

0000000000001720 <arc4_crypt>:
    1720:	10054e03          	lbu	t3,256(a0)
    1724:	10154803          	lbu	a6,257(a0)
    1728:	fff60e93          	addi	t4,a2,-1
    172c:	c225                	beqz	a2,178c <arc4_crypt+0x6c>
    172e:	00c588b3          	add	a7,a1,a2
    1732:	86ae                	mv	a3,a1
    1734:	001e031b          	addiw	t1,t3,1
    1738:	40b3033b          	subw	t1,t1,a1
    173c:	00d3073b          	addw	a4,t1,a3
    1740:	0ff77713          	andi	a4,a4,255
    1744:	972a                	add	a4,a4,a0
    1746:	00074603          	lbu	a2,0(a4)
    174a:	0106083b          	addw	a6,a2,a6
    174e:	0ff87813          	andi	a6,a6,255
    1752:	010507b3          	add	a5,a0,a6
    1756:	0007c583          	lbu	a1,0(a5)
    175a:	00b70023          	sb	a1,0(a4)
    175e:	00c78023          	sb	a2,0(a5)
    1762:	0685                	addi	a3,a3,1
    1764:	00074783          	lbu	a5,0(a4)
    1768:	9fb1                	addw	a5,a5,a2
    176a:	0ff7f793          	andi	a5,a5,255
    176e:	97aa                	add	a5,a5,a0
    1770:	0007c783          	lbu	a5,0(a5)
    1774:	fff6c703          	lbu	a4,-1(a3)
    1778:	8fb9                	xor	a5,a5,a4
    177a:	fef68fa3          	sb	a5,-1(a3)
    177e:	fb169fe3          	bne	a3,a7,173c <arc4_crypt+0x1c>
    1782:	2e85                	addiw	t4,t4,1
    1784:	01ce8e3b          	addw	t3,t4,t3
    1788:	0ffe7e13          	andi	t3,t3,255
    178c:	11c50023          	sb	t3,256(a0)
    1790:	110500a3          	sb	a6,257(a0)
    1794:	8082                	ret

0000000000001796 <_main>:
    1796:	1141                	addi	sp,sp,-16
    1798:	e406                	sd	ra,8(sp)
    179a:	00000097          	auipc	ra,0x0
    179e:	904080e7          	jalr	-1788(ra) # 109e <main>
    17a2:	4501                	li	a0,0
    17a4:	00000097          	auipc	ra,0x0
    17a8:	578080e7          	jalr	1400(ra) # 1d1c <exit>
    17ac:	60a2                	ld	ra,8(sp)
    17ae:	0141                	addi	sp,sp,16
    17b0:	8082                	ret

00000000000017b2 <strcmp>:
    17b2:	00054783          	lbu	a5,0(a0)
    17b6:	cb91                	beqz	a5,17ca <strcmp+0x18>
    17b8:	0005c703          	lbu	a4,0(a1)
    17bc:	00f71763          	bne	a4,a5,17ca <strcmp+0x18>
    17c0:	0505                	addi	a0,a0,1
    17c2:	0585                	addi	a1,a1,1
    17c4:	00054783          	lbu	a5,0(a0)
    17c8:	fbe5                	bnez	a5,17b8 <strcmp+0x6>
    17ca:	0005c503          	lbu	a0,0(a1)
    17ce:	40a7853b          	subw	a0,a5,a0
    17d2:	8082                	ret

00000000000017d4 <strcpy>:
    17d4:	87aa                	mv	a5,a0
    17d6:	0585                	addi	a1,a1,1
    17d8:	0785                	addi	a5,a5,1
    17da:	fff5c703          	lbu	a4,-1(a1)
    17de:	fee78fa3          	sb	a4,-1(a5)
    17e2:	fb75                	bnez	a4,17d6 <strcpy+0x2>
    17e4:	8082                	ret

00000000000017e6 <strlen>:
    17e6:	00054783          	lbu	a5,0(a0)
    17ea:	cf81                	beqz	a5,1802 <strlen+0x1c>
    17ec:	0505                	addi	a0,a0,1
    17ee:	87aa                	mv	a5,a0
    17f0:	4685                	li	a3,1
    17f2:	9e89                	subw	a3,a3,a0
    17f4:	00f6853b          	addw	a0,a3,a5
    17f8:	0785                	addi	a5,a5,1
    17fa:	fff7c703          	lbu	a4,-1(a5)
    17fe:	fb7d                	bnez	a4,17f4 <strlen+0xe>
    1800:	8082                	ret
    1802:	4501                	li	a0,0
    1804:	8082                	ret

0000000000001806 <memset>:
    1806:	ca19                	beqz	a2,181c <memset+0x16>
    1808:	87aa                	mv	a5,a0
    180a:	1602                	slli	a2,a2,0x20
    180c:	9201                	srli	a2,a2,0x20
    180e:	00a60733          	add	a4,a2,a0
    1812:	00b78023          	sb	a1,0(a5)
    1816:	0785                	addi	a5,a5,1
    1818:	fee79de3          	bne	a5,a4,1812 <memset+0xc>
    181c:	8082                	ret

000000000000181e <memcmp>:
    181e:	1101                	addi	sp,sp,-32
    1820:	ec06                	sd	ra,24(sp)
    1822:	e822                	sd	s0,16(sp)
    1824:	e426                	sd	s1,8(sp)
    1826:	e04a                	sd	s2,0(sp)
    1828:	892a                	mv	s2,a0
    182a:	842e                	mv	s0,a1
    182c:	84b2                	mv	s1,a2
    182e:	c915                	beqz	a0,1862 <memcmp+0x44>
    1830:	c5ad                	beqz	a1,189a <memcmp+0x7c>
    1832:	fff60713          	addi	a4,a2,-1
    1836:	c645                	beqz	a2,18de <memcmp+0xc0>
    1838:	87ca                	mv	a5,s2
    183a:	00190613          	addi	a2,s2,1
    183e:	963a                	add	a2,a2,a4
    1840:	0007c683          	lbu	a3,0(a5)
    1844:	00044703          	lbu	a4,0(s0)
    1848:	08e69463          	bne	a3,a4,18d0 <memcmp+0xb2>
    184c:	0785                	addi	a5,a5,1
    184e:	0405                	addi	s0,s0,1
    1850:	fec798e3          	bne	a5,a2,1840 <memcmp+0x22>
    1854:	4501                	li	a0,0
    1856:	60e2                	ld	ra,24(sp)
    1858:	6442                	ld	s0,16(sp)
    185a:	64a2                	ld	s1,8(sp)
    185c:	6902                	ld	s2,0(sp)
    185e:	6105                	addi	sp,sp,32
    1860:	8082                	ret
    1862:	4501                	li	a0,0
    1864:	da6d                	beqz	a2,1856 <memcmp+0x38>
    1866:	03200693          	li	a3,50
    186a:	00002637          	lui	a2,0x2
    186e:	38060613          	addi	a2,a2,896 # 2380 <crctab+0x400>
    1872:	000025b7          	lui	a1,0x2
    1876:	39058593          	addi	a1,a1,912 # 2390 <crctab+0x410>
    187a:	4509                	li	a0,2
    187c:	00000097          	auipc	ra,0x0
    1880:	bbc080e7          	jalr	-1092(ra) # 1438 <fprintf>
    1884:	650d                	lui	a0,0x3
    1886:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    188a:	00000097          	auipc	ra,0x0
    188e:	492080e7          	jalr	1170(ra) # 1d1c <exit>
    1892:	fff48713          	addi	a4,s1,-1
    1896:	f04d                	bnez	s0,1838 <memcmp+0x1a>
    1898:	a011                	j	189c <memcmp+0x7e>
    189a:	c221                	beqz	a2,18da <memcmp+0xbc>
    189c:	03300693          	li	a3,51
    18a0:	00002637          	lui	a2,0x2
    18a4:	38060613          	addi	a2,a2,896 # 2380 <crctab+0x400>
    18a8:	000025b7          	lui	a1,0x2
    18ac:	3d858593          	addi	a1,a1,984 # 23d8 <crctab+0x458>
    18b0:	4509                	li	a0,2
    18b2:	00000097          	auipc	ra,0x0
    18b6:	b86080e7          	jalr	-1146(ra) # 1438 <fprintf>
    18ba:	650d                	lui	a0,0x3
    18bc:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18c0:	00000097          	auipc	ra,0x0
    18c4:	45c080e7          	jalr	1116(ra) # 1d1c <exit>
    18c8:	fff48713          	addi	a4,s1,-1
    18cc:	4401                	li	s0,0
    18ce:	b7ad                	j	1838 <memcmp+0x1a>
    18d0:	4505                	li	a0,1
    18d2:	f8d762e3          	bltu	a4,a3,1856 <memcmp+0x38>
    18d6:	557d                	li	a0,-1
    18d8:	bfbd                	j	1856 <memcmp+0x38>
    18da:	4501                	li	a0,0
    18dc:	bfad                	j	1856 <memcmp+0x38>
    18de:	4501                	li	a0,0
    18e0:	bf9d                	j	1856 <memcmp+0x38>

00000000000018e2 <memcpy>:
    18e2:	1101                	addi	sp,sp,-32
    18e4:	ec06                	sd	ra,24(sp)
    18e6:	e822                	sd	s0,16(sp)
    18e8:	e426                	sd	s1,8(sp)
    18ea:	e04a                	sd	s2,0(sp)
    18ec:	84aa                	mv	s1,a0
    18ee:	842e                	mv	s0,a1
    18f0:	8932                	mv	s2,a2
    18f2:	c51d                	beqz	a0,1920 <memcpy+0x3e>
    18f4:	c1ad                	beqz	a1,1956 <memcpy+0x74>
    18f6:	fff60693          	addi	a3,a2,-1
    18fa:	ce01                	beqz	a2,1912 <memcpy+0x30>
    18fc:	0685                	addi	a3,a3,1
    18fe:	96a6                	add	a3,a3,s1
    1900:	87a6                	mv	a5,s1
    1902:	0405                	addi	s0,s0,1
    1904:	0785                	addi	a5,a5,1
    1906:	fff44703          	lbu	a4,-1(s0)
    190a:	fee78fa3          	sb	a4,-1(a5)
    190e:	fed79ae3          	bne	a5,a3,1902 <memcpy+0x20>
    1912:	8526                	mv	a0,s1
    1914:	60e2                	ld	ra,24(sp)
    1916:	6442                	ld	s0,16(sp)
    1918:	64a2                	ld	s1,8(sp)
    191a:	6902                	ld	s2,0(sp)
    191c:	6105                	addi	sp,sp,32
    191e:	8082                	ret
    1920:	da6d                	beqz	a2,1912 <memcpy+0x30>
    1922:	04000693          	li	a3,64
    1926:	00002637          	lui	a2,0x2
    192a:	38060613          	addi	a2,a2,896 # 2380 <crctab+0x400>
    192e:	000025b7          	lui	a1,0x2
    1932:	42058593          	addi	a1,a1,1056 # 2420 <crctab+0x4a0>
    1936:	4509                	li	a0,2
    1938:	00000097          	auipc	ra,0x0
    193c:	b00080e7          	jalr	-1280(ra) # 1438 <fprintf>
    1940:	650d                	lui	a0,0x3
    1942:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1946:	00000097          	auipc	ra,0x0
    194a:	3d6080e7          	jalr	982(ra) # 1d1c <exit>
    194e:	fff90693          	addi	a3,s2,-1
    1952:	f44d                	bnez	s0,18fc <memcpy+0x1a>
    1954:	a011                	j	1958 <memcpy+0x76>
    1956:	de55                	beqz	a2,1912 <memcpy+0x30>
    1958:	04100693          	li	a3,65
    195c:	00002637          	lui	a2,0x2
    1960:	38060613          	addi	a2,a2,896 # 2380 <crctab+0x400>
    1964:	000025b7          	lui	a1,0x2
    1968:	46858593          	addi	a1,a1,1128 # 2468 <crctab+0x4e8>
    196c:	4509                	li	a0,2
    196e:	00000097          	auipc	ra,0x0
    1972:	aca080e7          	jalr	-1334(ra) # 1438 <fprintf>
    1976:	650d                	lui	a0,0x3
    1978:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    197c:	00000097          	auipc	ra,0x0
    1980:	3a0080e7          	jalr	928(ra) # 1d1c <exit>
    1984:	fff90693          	addi	a3,s2,-1
    1988:	4401                	li	s0,0
    198a:	bf8d                	j	18fc <memcpy+0x1a>

000000000000198c <itoa>:
    198c:	1101                	addi	sp,sp,-32
    198e:	ec06                	sd	ra,24(sp)
    1990:	e822                	sd	s0,16(sp)
    1992:	e426                	sd	s1,8(sp)
    1994:	842a                	mv	s0,a0
    1996:	41f5d71b          	sraiw	a4,a1,0x1f
    199a:	00e5c7b3          	xor	a5,a1,a4
    199e:	9f99                	subw	a5,a5,a4
    19a0:	84aa                	mv	s1,a0
    19a2:	862a                	mv	a2,a0
    19a4:	4681                	li	a3,0
    19a6:	4529                	li	a0,10
    19a8:	4825                	li	a6,9
    19aa:	88b6                	mv	a7,a3
    19ac:	2685                	addiw	a3,a3,1
    19ae:	02a7e73b          	remw	a4,a5,a0
    19b2:	0307071b          	addiw	a4,a4,48
    19b6:	00e60023          	sb	a4,0(a2)
    19ba:	873e                	mv	a4,a5
    19bc:	02a7c7bb          	divw	a5,a5,a0
    19c0:	0605                	addi	a2,a2,1
    19c2:	fee844e3          	blt	a6,a4,19aa <itoa+0x1e>
    19c6:	0405c863          	bltz	a1,1a16 <itoa+0x8a>
    19ca:	96a2                	add	a3,a3,s0
    19cc:	00068023          	sb	zero,0(a3)
    19d0:	8522                	mv	a0,s0
    19d2:	00000097          	auipc	ra,0x0
    19d6:	e14080e7          	jalr	-492(ra) # 17e6 <strlen>
    19da:	fff5071b          	addiw	a4,a0,-1
    19de:	02e05763          	blez	a4,1a0c <itoa+0x80>
    19e2:	9722                	add	a4,a4,s0
    19e4:	4681                	li	a3,0
    19e6:	0004c783          	lbu	a5,0(s1)
    19ea:	00074603          	lbu	a2,0(a4)
    19ee:	00c48023          	sb	a2,0(s1)
    19f2:	00f70023          	sb	a5,0(a4)
    19f6:	0016879b          	addiw	a5,a3,1
    19fa:	0007869b          	sext.w	a3,a5
    19fe:	0485                	addi	s1,s1,1
    1a00:	177d                	addi	a4,a4,-1
    1a02:	fff7c793          	not	a5,a5
    1a06:	9fa9                	addw	a5,a5,a0
    1a08:	fcf6cfe3          	blt	a3,a5,19e6 <itoa+0x5a>
    1a0c:	60e2                	ld	ra,24(sp)
    1a0e:	6442                	ld	s0,16(sp)
    1a10:	64a2                	ld	s1,8(sp)
    1a12:	6105                	addi	sp,sp,32
    1a14:	8082                	ret
    1a16:	96a2                	add	a3,a3,s0
    1a18:	02d00793          	li	a5,45
    1a1c:	00f68023          	sb	a5,0(a3)
    1a20:	0028869b          	addiw	a3,a7,2
    1a24:	b75d                	j	19ca <itoa+0x3e>

0000000000001a26 <atoi>:
    1a26:	00054783          	lbu	a5,0(a0)
    1a2a:	02000713          	li	a4,32
    1a2e:	00e79763          	bne	a5,a4,1a3c <atoi+0x16>
    1a32:	0505                	addi	a0,a0,1
    1a34:	00054783          	lbu	a5,0(a0)
    1a38:	fee78de3          	beq	a5,a4,1a32 <atoi+0xc>
    1a3c:	02b00713          	li	a4,43
    1a40:	04e78663          	beq	a5,a4,1a8c <atoi+0x66>
    1a44:	02d00713          	li	a4,45
    1a48:	4805                	li	a6,1
    1a4a:	04e78463          	beq	a5,a4,1a92 <atoi+0x6c>
    1a4e:	00054683          	lbu	a3,0(a0)
    1a52:	fd06879b          	addiw	a5,a3,-48
    1a56:	0ff7f793          	andi	a5,a5,255
    1a5a:	4725                	li	a4,9
    1a5c:	02f76e63          	bltu	a4,a5,1a98 <atoi+0x72>
    1a60:	4601                	li	a2,0
    1a62:	45a5                	li	a1,9
    1a64:	0505                	addi	a0,a0,1
    1a66:	0026179b          	slliw	a5,a2,0x2
    1a6a:	9fb1                	addw	a5,a5,a2
    1a6c:	0017979b          	slliw	a5,a5,0x1
    1a70:	9fb5                	addw	a5,a5,a3
    1a72:	fd07861b          	addiw	a2,a5,-48
    1a76:	00054683          	lbu	a3,0(a0)
    1a7a:	fd06871b          	addiw	a4,a3,-48
    1a7e:	0ff77713          	andi	a4,a4,255
    1a82:	fee5f1e3          	bgeu	a1,a4,1a64 <atoi+0x3e>
    1a86:	02c8053b          	mulw	a0,a6,a2
    1a8a:	8082                	ret
    1a8c:	0505                	addi	a0,a0,1
    1a8e:	4805                	li	a6,1
    1a90:	bf7d                	j	1a4e <atoi+0x28>
    1a92:	0505                	addi	a0,a0,1
    1a94:	587d                	li	a6,-1
    1a96:	bf65                	j	1a4e <atoi+0x28>
    1a98:	4601                	li	a2,0
    1a9a:	b7f5                	j	1a86 <atoi+0x60>

0000000000001a9c <check_file_handle>:
    1a9c:	d8010113          	addi	sp,sp,-640
    1aa0:	26113c23          	sd	ra,632(sp)
    1aa4:	26813823          	sd	s0,624(sp)
    1aa8:	26913423          	sd	s1,616(sp)
    1aac:	27213023          	sd	s2,608(sp)
    1ab0:	25313c23          	sd	s3,600(sp)
    1ab4:	25413823          	sd	s4,592(sp)
    1ab8:	25513423          	sd	s5,584(sp)
    1abc:	25613023          	sd	s6,576(sp)
    1ac0:	23713c23          	sd	s7,568(sp)
    1ac4:	23813823          	sd	s8,560(sp)
    1ac8:	23913423          	sd	s9,552(sp)
    1acc:	23a13023          	sd	s10,544(sp)
    1ad0:	21b13c23          	sd	s11,536(sp)
    1ad4:	8baa                	mv	s7,a0
    1ad6:	8a2e                	mv	s4,a1
    1ad8:	8c32                	mv	s8,a2
    1ada:	89b6                	mv	s3,a3
    1adc:	040c                	addi	a1,sp,512
    1ade:	00000097          	auipc	ra,0x0
    1ae2:	28e080e7          	jalr	654(ra) # 1d6c <fstat>
    1ae6:	20813603          	ld	a2,520(sp)
    1aea:	03361163          	bne	a2,s3,1b0c <check_file_handle+0x70>
    1aee:	06098763          	beqz	s3,1b5c <check_file_handle+0xc0>
    1af2:	4901                	li	s2,0
    1af4:	20000a93          	li	s5,512
    1af8:	00002cb7          	lui	s9,0x2
    1afc:	00002db7          	lui	s11,0x2
    1b00:	6b0d                	lui	s6,0x3
    1b02:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1b06:	00002d37          	lui	s10,0x2
    1b0a:	aa39                	j	1c28 <check_file_handle+0x18c>
    1b0c:	86ce                	mv	a3,s3
    1b0e:	85d2                	mv	a1,s4
    1b10:	00002537          	lui	a0,0x2
    1b14:	4b050513          	addi	a0,a0,1200 # 24b0 <crctab+0x530>
    1b18:	00000097          	auipc	ra,0x0
    1b1c:	942080e7          	jalr	-1726(ra) # 145a <printf>
    1b20:	fc0999e3          	bnez	s3,1af2 <check_file_handle+0x56>
    1b24:	20813683          	ld	a3,520(sp)
    1b28:	03368a63          	beq	a3,s3,1b5c <check_file_handle+0xc0>
    1b2c:	0a600813          	li	a6,166
    1b30:	000027b7          	lui	a5,0x2
    1b34:	38078793          	addi	a5,a5,896 # 2380 <crctab+0x400>
    1b38:	874e                	mv	a4,s3
    1b3a:	8652                	mv	a2,s4
    1b3c:	000025b7          	lui	a1,0x2
    1b40:	58058593          	addi	a1,a1,1408 # 2580 <crctab+0x600>
    1b44:	4509                	li	a0,2
    1b46:	00000097          	auipc	ra,0x0
    1b4a:	8f2080e7          	jalr	-1806(ra) # 1438 <fprintf>
    1b4e:	650d                	lui	a0,0x3
    1b50:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b54:	00000097          	auipc	ra,0x0
    1b58:	1c8080e7          	jalr	456(ra) # 1d1c <exit>
    1b5c:	85d2                	mv	a1,s4
    1b5e:	00002537          	lui	a0,0x2
    1b62:	5c850513          	addi	a0,a0,1480 # 25c8 <crctab+0x648>
    1b66:	00000097          	auipc	ra,0x0
    1b6a:	8f4080e7          	jalr	-1804(ra) # 145a <printf>
    1b6e:	27813083          	ld	ra,632(sp)
    1b72:	27013403          	ld	s0,624(sp)
    1b76:	26813483          	ld	s1,616(sp)
    1b7a:	26013903          	ld	s2,608(sp)
    1b7e:	25813983          	ld	s3,600(sp)
    1b82:	25013a03          	ld	s4,592(sp)
    1b86:	24813a83          	ld	s5,584(sp)
    1b8a:	24013b03          	ld	s6,576(sp)
    1b8e:	23813b83          	ld	s7,568(sp)
    1b92:	23013c03          	ld	s8,560(sp)
    1b96:	22813c83          	ld	s9,552(sp)
    1b9a:	22013d03          	ld	s10,544(sp)
    1b9e:	21813d83          	ld	s11,536(sp)
    1ba2:	28010113          	addi	sp,sp,640
    1ba6:	8082                	ret
    1ba8:	09d00893          	li	a7,157
    1bac:	380c8813          	addi	a6,s9,896 # 2380 <crctab+0x400>
    1bb0:	87aa                	mv	a5,a0
    1bb2:	8752                	mv	a4,s4
    1bb4:	86ca                	mv	a3,s2
    1bb6:	8622                	mv	a2,s0
    1bb8:	4e0d8593          	addi	a1,s11,1248 # 24e0 <crctab+0x560>
    1bbc:	4509                	li	a0,2
    1bbe:	00000097          	auipc	ra,0x0
    1bc2:	87a080e7          	jalr	-1926(ra) # 1438 <fprintf>
    1bc6:	855a                	mv	a0,s6
    1bc8:	00000097          	auipc	ra,0x0
    1bcc:	154080e7          	jalr	340(ra) # 1d1c <exit>
    1bd0:	a89d                	j	1c46 <check_file_handle+0x1aa>
    1bd2:	00160593          	addi	a1,a2,1
    1bd6:	0285f163          	bgeu	a1,s0,1bf8 <check_file_handle+0x15c>
    1bda:	00c10733          	add	a4,sp,a2
    1bde:	00b487b3          	add	a5,s1,a1
    1be2:	00174683          	lbu	a3,1(a4)
    1be6:	0007c783          	lbu	a5,0(a5)
    1bea:	00f68763          	beq	a3,a5,1bf8 <check_file_handle+0x15c>
    1bee:	0585                	addi	a1,a1,1
    1bf0:	0705                	addi	a4,a4,1
    1bf2:	feb416e3          	bne	s0,a1,1bde <check_file_handle+0x142>
    1bf6:	85a2                	mv	a1,s0
    1bf8:	08100813          	li	a6,129
    1bfc:	380c8793          	addi	a5,s9,896
    1c00:	8752                	mv	a4,s4
    1c02:	012606b3          	add	a3,a2,s2
    1c06:	40c58633          	sub	a2,a1,a2
    1c0a:	528d0593          	addi	a1,s10,1320 # 2528 <crctab+0x5a8>
    1c0e:	4509                	li	a0,2
    1c10:	00000097          	auipc	ra,0x0
    1c14:	828080e7          	jalr	-2008(ra) # 1438 <fprintf>
    1c18:	855a                	mv	a0,s6
    1c1a:	00000097          	auipc	ra,0x0
    1c1e:	102080e7          	jalr	258(ra) # 1d1c <exit>
    1c22:	9922                	add	s2,s2,s0
    1c24:	f13970e3          	bgeu	s2,s3,1b24 <check_file_handle+0x88>
    1c28:	41298433          	sub	s0,s3,s2
    1c2c:	008af363          	bgeu	s5,s0,1c32 <check_file_handle+0x196>
    1c30:	8456                	mv	s0,s5
    1c32:	0004061b          	sext.w	a2,s0
    1c36:	858a                	mv	a1,sp
    1c38:	855e                	mv	a0,s7
    1c3a:	00000097          	auipc	ra,0x0
    1c3e:	10a080e7          	jalr	266(ra) # 1d44 <read>
    1c42:	f68513e3          	bne	a0,s0,1ba8 <check_file_handle+0x10c>
    1c46:	012c04b3          	add	s1,s8,s2
    1c4a:	8622                	mv	a2,s0
    1c4c:	85a6                	mv	a1,s1
    1c4e:	850a                	mv	a0,sp
    1c50:	00000097          	auipc	ra,0x0
    1c54:	bce080e7          	jalr	-1074(ra) # 181e <memcmp>
    1c58:	d569                	beqz	a0,1c22 <check_file_handle+0x186>
    1c5a:	03298163          	beq	s3,s2,1c7c <check_file_handle+0x1e0>
    1c5e:	870a                	mv	a4,sp
    1c60:	4601                	li	a2,0
    1c62:	00c487b3          	add	a5,s1,a2
    1c66:	00074683          	lbu	a3,0(a4)
    1c6a:	0007c783          	lbu	a5,0(a5)
    1c6e:	f6f692e3          	bne	a3,a5,1bd2 <check_file_handle+0x136>
    1c72:	0605                	addi	a2,a2,1
    1c74:	0705                	addi	a4,a4,1
    1c76:	fe8666e3          	bltu	a2,s0,1c62 <check_file_handle+0x1c6>
    1c7a:	bfa1                	j	1bd2 <check_file_handle+0x136>
    1c7c:	4601                	li	a2,0
    1c7e:	4585                	li	a1,1
    1c80:	bfa5                	j	1bf8 <check_file_handle+0x15c>

0000000000001c82 <check_file>:
    1c82:	7179                	addi	sp,sp,-48
    1c84:	f406                	sd	ra,40(sp)
    1c86:	f022                	sd	s0,32(sp)
    1c88:	ec26                	sd	s1,24(sp)
    1c8a:	e84a                	sd	s2,16(sp)
    1c8c:	e44e                	sd	s3,8(sp)
    1c8e:	84aa                	mv	s1,a0
    1c90:	892e                	mv	s2,a1
    1c92:	89b2                	mv	s3,a2
    1c94:	4581                	li	a1,0
    1c96:	00000097          	auipc	ra,0x0
    1c9a:	0a6080e7          	jalr	166(ra) # 1d3c <open>
    1c9e:	842a                	mv	s0,a0
    1ca0:	4789                	li	a5,2
    1ca2:	02a7df63          	bge	a5,a0,1ce0 <check_file+0x5e>
    1ca6:	86ce                	mv	a3,s3
    1ca8:	864a                	mv	a2,s2
    1caa:	85a6                	mv	a1,s1
    1cac:	8522                	mv	a0,s0
    1cae:	00000097          	auipc	ra,0x0
    1cb2:	dee080e7          	jalr	-530(ra) # 1a9c <check_file_handle>
    1cb6:	85a6                	mv	a1,s1
    1cb8:	00002537          	lui	a0,0x2
    1cbc:	65050513          	addi	a0,a0,1616 # 2650 <crctab+0x6d0>
    1cc0:	fffff097          	auipc	ra,0xfffff
    1cc4:	79a080e7          	jalr	1946(ra) # 145a <printf>
    1cc8:	8522                	mv	a0,s0
    1cca:	00000097          	auipc	ra,0x0
    1cce:	09a080e7          	jalr	154(ra) # 1d64 <close>
    1cd2:	70a2                	ld	ra,40(sp)
    1cd4:	7402                	ld	s0,32(sp)
    1cd6:	64e2                	ld	s1,24(sp)
    1cd8:	6942                	ld	s2,16(sp)
    1cda:	69a2                	ld	s3,8(sp)
    1cdc:	6145                	addi	sp,sp,48
    1cde:	8082                	ret
    1ce0:	0ae00713          	li	a4,174
    1ce4:	000026b7          	lui	a3,0x2
    1ce8:	38068693          	addi	a3,a3,896 # 2380 <crctab+0x400>
    1cec:	8626                	mv	a2,s1
    1cee:	000025b7          	lui	a1,0x2
    1cf2:	5e858593          	addi	a1,a1,1512 # 25e8 <crctab+0x668>
    1cf6:	4509                	li	a0,2
    1cf8:	fffff097          	auipc	ra,0xfffff
    1cfc:	740080e7          	jalr	1856(ra) # 1438 <fprintf>
    1d00:	650d                	lui	a0,0x3
    1d02:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1d06:	00000097          	auipc	ra,0x0
    1d0a:	016080e7          	jalr	22(ra) # 1d1c <exit>
    1d0e:	bf61                	j	1ca6 <check_file+0x24>

0000000000001d10 <r_sp>:
    1d10:	850a                	mv	a0,sp
    1d12:	8082                	ret

0000000000001d14 <halt>:
    1d14:	4885                	li	a7,1
    1d16:	00000073          	ecall
    1d1a:	8082                	ret

0000000000001d1c <exit>:
    1d1c:	4889                	li	a7,2
    1d1e:	00000073          	ecall
    1d22:	8082                	ret

0000000000001d24 <exec>:
    1d24:	488d                	li	a7,3
    1d26:	00000073          	ecall
    1d2a:	8082                	ret

0000000000001d2c <wait>:
    1d2c:	4891                	li	a7,4
    1d2e:	00000073          	ecall
    1d32:	8082                	ret

0000000000001d34 <remove>:
    1d34:	4895                	li	a7,5
    1d36:	00000073          	ecall
    1d3a:	8082                	ret

0000000000001d3c <open>:
    1d3c:	4899                	li	a7,6
    1d3e:	00000073          	ecall
    1d42:	8082                	ret

0000000000001d44 <read>:
    1d44:	489d                	li	a7,7
    1d46:	00000073          	ecall
    1d4a:	8082                	ret

0000000000001d4c <write>:
    1d4c:	48a1                	li	a7,8
    1d4e:	00000073          	ecall
    1d52:	8082                	ret

0000000000001d54 <seek>:
    1d54:	48a5                	li	a7,9
    1d56:	00000073          	ecall
    1d5a:	8082                	ret

0000000000001d5c <tell>:
    1d5c:	48a9                	li	a7,10
    1d5e:	00000073          	ecall
    1d62:	8082                	ret

0000000000001d64 <close>:
    1d64:	48ad                	li	a7,11
    1d66:	00000073          	ecall
    1d6a:	8082                	ret

0000000000001d6c <fstat>:
    1d6c:	48b1                	li	a7,12
    1d6e:	00000073          	ecall
    1d72:	8082                	ret

0000000000001d74 <mmap>:
    1d74:	48b5                	li	a7,13
    1d76:	00000073          	ecall
    1d7a:	8082                	ret

0000000000001d7c <munmap>:
    1d7c:	48b9                	li	a7,14
    1d7e:	00000073          	ecall
    1d82:	8082                	ret

0000000000001d84 <chdir>:
    1d84:	48bd                	li	a7,15
    1d86:	00000073          	ecall
    1d8a:	8082                	ret

0000000000001d8c <mkdir>:
    1d8c:	48c1                	li	a7,16
    1d8e:	00000073          	ecall
    1d92:	8082                	ret
