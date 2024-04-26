
build/user/userprogs/read-badfd:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	07b00793          	li	a5,123
    1008:	00f107a3          	sb	a5,15(sp)
    100c:	4605                	li	a2,1
    100e:	00f10593          	addi	a1,sp,15
    1012:	deadc537          	lui	a0,0xdeadc
    1016:	eaf50513          	addi	a0,a0,-337 # ffffffffdeadbeaf <s+0xffffffffdead8e9f>
    101a:	00001097          	auipc	ra,0x1
    101e:	da6080e7          	jalr	-602(ra) # 1dc0 <read>
    1022:	57fd                	li	a5,-1
    1024:	0af51363          	bne	a0,a5,10ca <main+0xca>
    1028:	4605                	li	a2,1
    102a:	00f10593          	addi	a1,sp,15
    102e:	4515                	li	a0,5
    1030:	00001097          	auipc	ra,0x1
    1034:	d90080e7          	jalr	-624(ra) # 1dc0 <read>
    1038:	57fd                	li	a5,-1
    103a:	0af51e63          	bne	a0,a5,10f6 <main+0xf6>
    103e:	4605                	li	a2,1
    1040:	00f10593          	addi	a1,sp,15
    1044:	4d200513          	li	a0,1234
    1048:	00001097          	auipc	ra,0x1
    104c:	d78080e7          	jalr	-648(ra) # 1dc0 <read>
    1050:	57fd                	li	a5,-1
    1052:	0cf51863          	bne	a0,a5,1122 <main+0x122>
    1056:	4605                	li	a2,1
    1058:	00f10593          	addi	a1,sp,15
    105c:	557d                	li	a0,-1
    105e:	00001097          	auipc	ra,0x1
    1062:	d62080e7          	jalr	-670(ra) # 1dc0 <read>
    1066:	57fd                	li	a5,-1
    1068:	0ef51363          	bne	a0,a5,114e <main+0x14e>
    106c:	4605                	li	a2,1
    106e:	00f10593          	addi	a1,sp,15
    1072:	c0000513          	li	a0,-1024
    1076:	00001097          	auipc	ra,0x1
    107a:	d4a080e7          	jalr	-694(ra) # 1dc0 <read>
    107e:	57fd                	li	a5,-1
    1080:	0ef51d63          	bne	a0,a5,117a <main+0x17a>
    1084:	4605                	li	a2,1
    1086:	00f10593          	addi	a1,sp,15
    108a:	80000537          	lui	a0,0x80000
    108e:	00001097          	auipc	ra,0x1
    1092:	d32080e7          	jalr	-718(ra) # 1dc0 <read>
    1096:	57fd                	li	a5,-1
    1098:	10f51763          	bne	a0,a5,11a6 <main+0x1a6>
    109c:	4605                	li	a2,1
    109e:	00f10593          	addi	a1,sp,15
    10a2:	80000537          	lui	a0,0x80000
    10a6:	fff54513          	not	a0,a0
    10aa:	00001097          	auipc	ra,0x1
    10ae:	d16080e7          	jalr	-746(ra) # 1dc0 <read>
    10b2:	57fd                	li	a5,-1
    10b4:	10f51f63          	bne	a0,a5,11d2 <main+0x1d2>
    10b8:	00f14703          	lbu	a4,15(sp)
    10bc:	07b00793          	li	a5,123
    10c0:	12f71f63          	bne	a4,a5,11fe <main+0x1fe>
    10c4:	60e2                	ld	ra,24(sp)
    10c6:	6105                	addi	sp,sp,32
    10c8:	8082                	ret
    10ca:	46a5                	li	a3,9
    10cc:	00002637          	lui	a2,0x2
    10d0:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    10d4:	000025b7          	lui	a1,0x2
    10d8:	e3058593          	addi	a1,a1,-464 # 1e30 <mkdir+0x28>
    10dc:	4509                	li	a0,2
    10de:	00000097          	auipc	ra,0x0
    10e2:	3d6080e7          	jalr	982(ra) # 14b4 <fprintf>
    10e6:	650d                	lui	a0,0x3
    10e8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10ec:	00001097          	auipc	ra,0x1
    10f0:	cac080e7          	jalr	-852(ra) # 1d98 <exit>
    10f4:	bf15                	j	1028 <main+0x28>
    10f6:	46a9                	li	a3,10
    10f8:	00002637          	lui	a2,0x2
    10fc:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    1100:	000025b7          	lui	a1,0x2
    1104:	e8058593          	addi	a1,a1,-384 # 1e80 <mkdir+0x78>
    1108:	4509                	li	a0,2
    110a:	00000097          	auipc	ra,0x0
    110e:	3aa080e7          	jalr	938(ra) # 14b4 <fprintf>
    1112:	650d                	lui	a0,0x3
    1114:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1118:	00001097          	auipc	ra,0x1
    111c:	c80080e7          	jalr	-896(ra) # 1d98 <exit>
    1120:	bf39                	j	103e <main+0x3e>
    1122:	46ad                	li	a3,11
    1124:	00002637          	lui	a2,0x2
    1128:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    112c:	000025b7          	lui	a1,0x2
    1130:	ec858593          	addi	a1,a1,-312 # 1ec8 <mkdir+0xc0>
    1134:	4509                	li	a0,2
    1136:	00000097          	auipc	ra,0x0
    113a:	37e080e7          	jalr	894(ra) # 14b4 <fprintf>
    113e:	650d                	lui	a0,0x3
    1140:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1144:	00001097          	auipc	ra,0x1
    1148:	c54080e7          	jalr	-940(ra) # 1d98 <exit>
    114c:	b729                	j	1056 <main+0x56>
    114e:	46b1                	li	a3,12
    1150:	00002637          	lui	a2,0x2
    1154:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    1158:	000025b7          	lui	a1,0x2
    115c:	f1058593          	addi	a1,a1,-240 # 1f10 <mkdir+0x108>
    1160:	4509                	li	a0,2
    1162:	00000097          	auipc	ra,0x0
    1166:	352080e7          	jalr	850(ra) # 14b4 <fprintf>
    116a:	650d                	lui	a0,0x3
    116c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1170:	00001097          	auipc	ra,0x1
    1174:	c28080e7          	jalr	-984(ra) # 1d98 <exit>
    1178:	bdd5                	j	106c <main+0x6c>
    117a:	46b5                	li	a3,13
    117c:	00002637          	lui	a2,0x2
    1180:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    1184:	000025b7          	lui	a1,0x2
    1188:	f5858593          	addi	a1,a1,-168 # 1f58 <mkdir+0x150>
    118c:	4509                	li	a0,2
    118e:	00000097          	auipc	ra,0x0
    1192:	326080e7          	jalr	806(ra) # 14b4 <fprintf>
    1196:	650d                	lui	a0,0x3
    1198:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    119c:	00001097          	auipc	ra,0x1
    11a0:	bfc080e7          	jalr	-1028(ra) # 1d98 <exit>
    11a4:	b5c5                	j	1084 <main+0x84>
    11a6:	46b9                	li	a3,14
    11a8:	00002637          	lui	a2,0x2
    11ac:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    11b0:	000025b7          	lui	a1,0x2
    11b4:	fa058593          	addi	a1,a1,-96 # 1fa0 <mkdir+0x198>
    11b8:	4509                	li	a0,2
    11ba:	00000097          	auipc	ra,0x0
    11be:	2fa080e7          	jalr	762(ra) # 14b4 <fprintf>
    11c2:	650d                	lui	a0,0x3
    11c4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    11c8:	00001097          	auipc	ra,0x1
    11cc:	bd0080e7          	jalr	-1072(ra) # 1d98 <exit>
    11d0:	b5f1                	j	109c <main+0x9c>
    11d2:	46bd                	li	a3,15
    11d4:	00002637          	lui	a2,0x2
    11d8:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    11dc:	000025b7          	lui	a1,0x2
    11e0:	fe858593          	addi	a1,a1,-24 # 1fe8 <mkdir+0x1e0>
    11e4:	4509                	li	a0,2
    11e6:	00000097          	auipc	ra,0x0
    11ea:	2ce080e7          	jalr	718(ra) # 14b4 <fprintf>
    11ee:	650d                	lui	a0,0x3
    11f0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    11f4:	00001097          	auipc	ra,0x1
    11f8:	ba4080e7          	jalr	-1116(ra) # 1d98 <exit>
    11fc:	bd75                	j	10b8 <main+0xb8>
    11fe:	46c1                	li	a3,16
    1200:	00002637          	lui	a2,0x2
    1204:	e1060613          	addi	a2,a2,-496 # 1e10 <mkdir+0x8>
    1208:	000025b7          	lui	a1,0x2
    120c:	03058593          	addi	a1,a1,48 # 2030 <mkdir+0x228>
    1210:	4509                	li	a0,2
    1212:	00000097          	auipc	ra,0x0
    1216:	2a2080e7          	jalr	674(ra) # 14b4 <fprintf>
    121a:	650d                	lui	a0,0x3
    121c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1220:	00001097          	auipc	ra,0x1
    1224:	b78080e7          	jalr	-1160(ra) # 1d98 <exit>
    1228:	bd71                	j	10c4 <main+0xc4>

000000000000122a <putc>:
    122a:	1101                	addi	sp,sp,-32
    122c:	ec06                	sd	ra,24(sp)
    122e:	00b107a3          	sb	a1,15(sp)
    1232:	4605                	li	a2,1
    1234:	00f10593          	addi	a1,sp,15
    1238:	00001097          	auipc	ra,0x1
    123c:	b90080e7          	jalr	-1136(ra) # 1dc8 <write>
    1240:	60e2                	ld	ra,24(sp)
    1242:	6105                	addi	sp,sp,32
    1244:	8082                	ret

0000000000001246 <printint>:
    1246:	7179                	addi	sp,sp,-48
    1248:	f406                	sd	ra,40(sp)
    124a:	f022                	sd	s0,32(sp)
    124c:	ec26                	sd	s1,24(sp)
    124e:	e84a                	sd	s2,16(sp)
    1250:	84aa                	mv	s1,a0
    1252:	c299                	beqz	a3,1258 <printint+0x12>
    1254:	0805c363          	bltz	a1,12da <printint+0x94>
    1258:	2581                	sext.w	a1,a1
    125a:	4881                	li	a7,0
    125c:	868a                	mv	a3,sp
    125e:	4701                	li	a4,0
    1260:	2601                	sext.w	a2,a2
    1262:	00002537          	lui	a0,0x2
    1266:	07050513          	addi	a0,a0,112 # 2070 <digits>
    126a:	883a                	mv	a6,a4
    126c:	2705                	addiw	a4,a4,1
    126e:	02c5f7bb          	remuw	a5,a1,a2
    1272:	1782                	slli	a5,a5,0x20
    1274:	9381                	srli	a5,a5,0x20
    1276:	97aa                	add	a5,a5,a0
    1278:	0007c783          	lbu	a5,0(a5)
    127c:	00f68023          	sb	a5,0(a3)
    1280:	0005879b          	sext.w	a5,a1
    1284:	02c5d5bb          	divuw	a1,a1,a2
    1288:	0685                	addi	a3,a3,1
    128a:	fec7f0e3          	bgeu	a5,a2,126a <printint+0x24>
    128e:	00088a63          	beqz	a7,12a2 <printint+0x5c>
    1292:	081c                	addi	a5,sp,16
    1294:	973e                	add	a4,a4,a5
    1296:	02d00793          	li	a5,45
    129a:	fef70823          	sb	a5,-16(a4)
    129e:	0028071b          	addiw	a4,a6,2
    12a2:	02e05663          	blez	a4,12ce <printint+0x88>
    12a6:	00e10433          	add	s0,sp,a4
    12aa:	fff10913          	addi	s2,sp,-1
    12ae:	993a                	add	s2,s2,a4
    12b0:	377d                	addiw	a4,a4,-1
    12b2:	1702                	slli	a4,a4,0x20
    12b4:	9301                	srli	a4,a4,0x20
    12b6:	40e90933          	sub	s2,s2,a4
    12ba:	fff44583          	lbu	a1,-1(s0)
    12be:	8526                	mv	a0,s1
    12c0:	00000097          	auipc	ra,0x0
    12c4:	f6a080e7          	jalr	-150(ra) # 122a <putc>
    12c8:	147d                	addi	s0,s0,-1
    12ca:	ff2418e3          	bne	s0,s2,12ba <printint+0x74>
    12ce:	70a2                	ld	ra,40(sp)
    12d0:	7402                	ld	s0,32(sp)
    12d2:	64e2                	ld	s1,24(sp)
    12d4:	6942                	ld	s2,16(sp)
    12d6:	6145                	addi	sp,sp,48
    12d8:	8082                	ret
    12da:	40b005bb          	negw	a1,a1
    12de:	4885                	li	a7,1
    12e0:	bfb5                	j	125c <printint+0x16>

00000000000012e2 <vprintf>:
    12e2:	7159                	addi	sp,sp,-112
    12e4:	f486                	sd	ra,104(sp)
    12e6:	f0a2                	sd	s0,96(sp)
    12e8:	eca6                	sd	s1,88(sp)
    12ea:	e8ca                	sd	s2,80(sp)
    12ec:	e4ce                	sd	s3,72(sp)
    12ee:	e0d2                	sd	s4,64(sp)
    12f0:	fc56                	sd	s5,56(sp)
    12f2:	f85a                	sd	s6,48(sp)
    12f4:	f45e                	sd	s7,40(sp)
    12f6:	f062                	sd	s8,32(sp)
    12f8:	ec66                	sd	s9,24(sp)
    12fa:	e86a                	sd	s10,16(sp)
    12fc:	e46e                	sd	s11,8(sp)
    12fe:	0005c483          	lbu	s1,0(a1)
    1302:	18048a63          	beqz	s1,1496 <vprintf+0x1b4>
    1306:	8a2a                	mv	s4,a0
    1308:	8ab2                	mv	s5,a2
    130a:	00158413          	addi	s0,a1,1
    130e:	4901                	li	s2,0
    1310:	02500993          	li	s3,37
    1314:	06400b93          	li	s7,100
    1318:	06c00c13          	li	s8,108
    131c:	07800c93          	li	s9,120
    1320:	07000d13          	li	s10,112
    1324:	00002db7          	lui	s11,0x2
    1328:	00002b37          	lui	s6,0x2
    132c:	070b0b13          	addi	s6,s6,112 # 2070 <digits>
    1330:	a839                	j	134e <vprintf+0x6c>
    1332:	85a6                	mv	a1,s1
    1334:	8552                	mv	a0,s4
    1336:	00000097          	auipc	ra,0x0
    133a:	ef4080e7          	jalr	-268(ra) # 122a <putc>
    133e:	a019                	j	1344 <vprintf+0x62>
    1340:	01390f63          	beq	s2,s3,135e <vprintf+0x7c>
    1344:	0405                	addi	s0,s0,1
    1346:	fff44483          	lbu	s1,-1(s0)
    134a:	14048663          	beqz	s1,1496 <vprintf+0x1b4>
    134e:	0004879b          	sext.w	a5,s1
    1352:	fe0917e3          	bnez	s2,1340 <vprintf+0x5e>
    1356:	fd379ee3          	bne	a5,s3,1332 <vprintf+0x50>
    135a:	893e                	mv	s2,a5
    135c:	b7e5                	j	1344 <vprintf+0x62>
    135e:	05778063          	beq	a5,s7,139e <vprintf+0xbc>
    1362:	05878c63          	beq	a5,s8,13ba <vprintf+0xd8>
    1366:	07978863          	beq	a5,s9,13d6 <vprintf+0xf4>
    136a:	09a78463          	beq	a5,s10,13f2 <vprintf+0x110>
    136e:	07300713          	li	a4,115
    1372:	0ce78263          	beq	a5,a4,1436 <vprintf+0x154>
    1376:	06300713          	li	a4,99
    137a:	0ee78763          	beq	a5,a4,1468 <vprintf+0x186>
    137e:	11378163          	beq	a5,s3,1480 <vprintf+0x19e>
    1382:	85ce                	mv	a1,s3
    1384:	8552                	mv	a0,s4
    1386:	00000097          	auipc	ra,0x0
    138a:	ea4080e7          	jalr	-348(ra) # 122a <putc>
    138e:	85a6                	mv	a1,s1
    1390:	8552                	mv	a0,s4
    1392:	00000097          	auipc	ra,0x0
    1396:	e98080e7          	jalr	-360(ra) # 122a <putc>
    139a:	4901                	li	s2,0
    139c:	b765                	j	1344 <vprintf+0x62>
    139e:	008a8493          	addi	s1,s5,8
    13a2:	4685                	li	a3,1
    13a4:	4629                	li	a2,10
    13a6:	000aa583          	lw	a1,0(s5)
    13aa:	8552                	mv	a0,s4
    13ac:	00000097          	auipc	ra,0x0
    13b0:	e9a080e7          	jalr	-358(ra) # 1246 <printint>
    13b4:	8aa6                	mv	s5,s1
    13b6:	4901                	li	s2,0
    13b8:	b771                	j	1344 <vprintf+0x62>
    13ba:	008a8493          	addi	s1,s5,8
    13be:	4681                	li	a3,0
    13c0:	4629                	li	a2,10
    13c2:	000aa583          	lw	a1,0(s5)
    13c6:	8552                	mv	a0,s4
    13c8:	00000097          	auipc	ra,0x0
    13cc:	e7e080e7          	jalr	-386(ra) # 1246 <printint>
    13d0:	8aa6                	mv	s5,s1
    13d2:	4901                	li	s2,0
    13d4:	bf85                	j	1344 <vprintf+0x62>
    13d6:	008a8493          	addi	s1,s5,8
    13da:	4681                	li	a3,0
    13dc:	4641                	li	a2,16
    13de:	000aa583          	lw	a1,0(s5)
    13e2:	8552                	mv	a0,s4
    13e4:	00000097          	auipc	ra,0x0
    13e8:	e62080e7          	jalr	-414(ra) # 1246 <printint>
    13ec:	8aa6                	mv	s5,s1
    13ee:	4901                	li	s2,0
    13f0:	bf91                	j	1344 <vprintf+0x62>
    13f2:	008a8913          	addi	s2,s5,8
    13f6:	000aba83          	ld	s5,0(s5)
    13fa:	03000593          	li	a1,48
    13fe:	8552                	mv	a0,s4
    1400:	00000097          	auipc	ra,0x0
    1404:	e2a080e7          	jalr	-470(ra) # 122a <putc>
    1408:	85e6                	mv	a1,s9
    140a:	8552                	mv	a0,s4
    140c:	00000097          	auipc	ra,0x0
    1410:	e1e080e7          	jalr	-482(ra) # 122a <putc>
    1414:	44c1                	li	s1,16
    1416:	03cad793          	srli	a5,s5,0x3c
    141a:	97da                	add	a5,a5,s6
    141c:	0007c583          	lbu	a1,0(a5)
    1420:	8552                	mv	a0,s4
    1422:	00000097          	auipc	ra,0x0
    1426:	e08080e7          	jalr	-504(ra) # 122a <putc>
    142a:	0a92                	slli	s5,s5,0x4
    142c:	34fd                	addiw	s1,s1,-1
    142e:	f4e5                	bnez	s1,1416 <vprintf+0x134>
    1430:	8aca                	mv	s5,s2
    1432:	4901                	li	s2,0
    1434:	bf01                	j	1344 <vprintf+0x62>
    1436:	008a8913          	addi	s2,s5,8
    143a:	000ab483          	ld	s1,0(s5)
    143e:	c085                	beqz	s1,145e <vprintf+0x17c>
    1440:	0004c583          	lbu	a1,0(s1)
    1444:	c5b1                	beqz	a1,1490 <vprintf+0x1ae>
    1446:	8552                	mv	a0,s4
    1448:	00000097          	auipc	ra,0x0
    144c:	de2080e7          	jalr	-542(ra) # 122a <putc>
    1450:	0485                	addi	s1,s1,1
    1452:	0004c583          	lbu	a1,0(s1)
    1456:	f9e5                	bnez	a1,1446 <vprintf+0x164>
    1458:	8aca                	mv	s5,s2
    145a:	4901                	li	s2,0
    145c:	b5e5                	j	1344 <vprintf+0x62>
    145e:	068d8493          	addi	s1,s11,104 # 2068 <mkdir+0x260>
    1462:	02800593          	li	a1,40
    1466:	b7c5                	j	1446 <vprintf+0x164>
    1468:	008a8493          	addi	s1,s5,8
    146c:	000ac583          	lbu	a1,0(s5)
    1470:	8552                	mv	a0,s4
    1472:	00000097          	auipc	ra,0x0
    1476:	db8080e7          	jalr	-584(ra) # 122a <putc>
    147a:	8aa6                	mv	s5,s1
    147c:	4901                	li	s2,0
    147e:	b5d9                	j	1344 <vprintf+0x62>
    1480:	85ce                	mv	a1,s3
    1482:	8552                	mv	a0,s4
    1484:	00000097          	auipc	ra,0x0
    1488:	da6080e7          	jalr	-602(ra) # 122a <putc>
    148c:	4901                	li	s2,0
    148e:	bd5d                	j	1344 <vprintf+0x62>
    1490:	8aca                	mv	s5,s2
    1492:	4901                	li	s2,0
    1494:	bd45                	j	1344 <vprintf+0x62>
    1496:	70a6                	ld	ra,104(sp)
    1498:	7406                	ld	s0,96(sp)
    149a:	64e6                	ld	s1,88(sp)
    149c:	6946                	ld	s2,80(sp)
    149e:	69a6                	ld	s3,72(sp)
    14a0:	6a06                	ld	s4,64(sp)
    14a2:	7ae2                	ld	s5,56(sp)
    14a4:	7b42                	ld	s6,48(sp)
    14a6:	7ba2                	ld	s7,40(sp)
    14a8:	7c02                	ld	s8,32(sp)
    14aa:	6ce2                	ld	s9,24(sp)
    14ac:	6d42                	ld	s10,16(sp)
    14ae:	6da2                	ld	s11,8(sp)
    14b0:	6165                	addi	sp,sp,112
    14b2:	8082                	ret

00000000000014b4 <fprintf>:
    14b4:	715d                	addi	sp,sp,-80
    14b6:	ec06                	sd	ra,24(sp)
    14b8:	f032                	sd	a2,32(sp)
    14ba:	f436                	sd	a3,40(sp)
    14bc:	f83a                	sd	a4,48(sp)
    14be:	fc3e                	sd	a5,56(sp)
    14c0:	e0c2                	sd	a6,64(sp)
    14c2:	e4c6                	sd	a7,72(sp)
    14c4:	1010                	addi	a2,sp,32
    14c6:	e432                	sd	a2,8(sp)
    14c8:	00000097          	auipc	ra,0x0
    14cc:	e1a080e7          	jalr	-486(ra) # 12e2 <vprintf>
    14d0:	60e2                	ld	ra,24(sp)
    14d2:	6161                	addi	sp,sp,80
    14d4:	8082                	ret

00000000000014d6 <printf>:
    14d6:	711d                	addi	sp,sp,-96
    14d8:	ec06                	sd	ra,24(sp)
    14da:	f42e                	sd	a1,40(sp)
    14dc:	f832                	sd	a2,48(sp)
    14de:	fc36                	sd	a3,56(sp)
    14e0:	e0ba                	sd	a4,64(sp)
    14e2:	e4be                	sd	a5,72(sp)
    14e4:	e8c2                	sd	a6,80(sp)
    14e6:	ecc6                	sd	a7,88(sp)
    14e8:	1030                	addi	a2,sp,40
    14ea:	e432                	sd	a2,8(sp)
    14ec:	85aa                	mv	a1,a0
    14ee:	4505                	li	a0,1
    14f0:	00000097          	auipc	ra,0x0
    14f4:	df2080e7          	jalr	-526(ra) # 12e2 <vprintf>
    14f8:	60e2                	ld	ra,24(sp)
    14fa:	6125                	addi	sp,sp,96
    14fc:	8082                	ret

00000000000014fe <cksum>:
    14fe:	cdb1                	beqz	a1,155a <cksum+0x5c>
    1500:	00b50833          	add	a6,a0,a1
    1504:	4781                	li	a5,0
    1506:	00002637          	lui	a2,0x2
    150a:	08860613          	addi	a2,a2,136 # 2088 <crctab>
    150e:	0505                	addi	a0,a0,1
    1510:	0087969b          	slliw	a3,a5,0x8
    1514:	0187d71b          	srliw	a4,a5,0x18
    1518:	fff54783          	lbu	a5,-1(a0)
    151c:	8f3d                	xor	a4,a4,a5
    151e:	1702                	slli	a4,a4,0x20
    1520:	9301                	srli	a4,a4,0x20
    1522:	070a                	slli	a4,a4,0x2
    1524:	9732                	add	a4,a4,a2
    1526:	431c                	lw	a5,0(a4)
    1528:	8fb5                	xor	a5,a5,a3
    152a:	2781                	sext.w	a5,a5
    152c:	fea811e3          	bne	a6,a0,150e <cksum+0x10>
    1530:	00002637          	lui	a2,0x2
    1534:	08860613          	addi	a2,a2,136 # 2088 <crctab>
    1538:	0ff5f693          	andi	a3,a1,255
    153c:	81a1                	srli	a1,a1,0x8
    153e:	0087951b          	slliw	a0,a5,0x8
    1542:	0187d71b          	srliw	a4,a5,0x18
    1546:	8f35                	xor	a4,a4,a3
    1548:	070a                	slli	a4,a4,0x2
    154a:	9732                	add	a4,a4,a2
    154c:	431c                	lw	a5,0(a4)
    154e:	8fa9                	xor	a5,a5,a0
    1550:	2781                	sext.w	a5,a5
    1552:	f1fd                	bnez	a1,1538 <cksum+0x3a>
    1554:	fff7c513          	not	a0,a5
    1558:	8082                	ret
    155a:	4781                	li	a5,0
    155c:	bfe5                	j	1554 <cksum+0x56>

000000000000155e <swap_bytes>:
    155e:	ce19                	beqz	a2,157c <swap_bytes+0x1e>
    1560:	87aa                	mv	a5,a0
    1562:	962a                	add	a2,a2,a0
    1564:	0007c703          	lbu	a4,0(a5)
    1568:	0005c683          	lbu	a3,0(a1)
    156c:	00d78023          	sb	a3,0(a5)
    1570:	00e58023          	sb	a4,0(a1)
    1574:	0785                	addi	a5,a5,1
    1576:	0585                	addi	a1,a1,1
    1578:	fec796e3          	bne	a5,a2,1564 <swap_bytes+0x6>
    157c:	8082                	ret

000000000000157e <random_init>:
    157e:	7139                	addi	sp,sp,-64
    1580:	fc06                	sd	ra,56(sp)
    1582:	f822                	sd	s0,48(sp)
    1584:	f426                	sd	s1,40(sp)
    1586:	f04a                	sd	s2,32(sp)
    1588:	ec4e                	sd	s3,24(sp)
    158a:	e852                	sd	s4,16(sp)
    158c:	c62a                	sw	a0,12(sp)
    158e:	000037b7          	lui	a5,0x3
    1592:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1596:	eca5                	bnez	s1,160e <random_init+0x90>
    1598:	00003737          	lui	a4,0x3
    159c:	01070913          	addi	s2,a4,16 # 3010 <s>
    15a0:	01070713          	addi	a4,a4,16
    15a4:	87a6                	mv	a5,s1
    15a6:	10000693          	li	a3,256
    15aa:	00f70023          	sb	a5,0(a4)
    15ae:	2785                	addiw	a5,a5,1
    15b0:	0705                	addi	a4,a4,1
    15b2:	fed79ce3          	bne	a5,a3,15aa <random_init+0x2c>
    15b6:	4401                	li	s0,0
    15b8:	000039b7          	lui	s3,0x3
    15bc:	01098993          	addi	s3,s3,16 # 3010 <s>
    15c0:	10000a13          	li	s4,256
    15c4:	0034f793          	andi	a5,s1,3
    15c8:	0818                	addi	a4,sp,16
    15ca:	97ba                	add	a5,a5,a4
    15cc:	ffc7c783          	lbu	a5,-4(a5)
    15d0:	00094703          	lbu	a4,0(s2)
    15d4:	9fb9                	addw	a5,a5,a4
    15d6:	9c3d                	addw	s0,s0,a5
    15d8:	0ff47413          	andi	s0,s0,255
    15dc:	4605                	li	a2,1
    15de:	008985b3          	add	a1,s3,s0
    15e2:	854a                	mv	a0,s2
    15e4:	00000097          	auipc	ra,0x0
    15e8:	f7a080e7          	jalr	-134(ra) # 155e <swap_bytes>
    15ec:	2485                	addiw	s1,s1,1
    15ee:	0905                	addi	s2,s2,1
    15f0:	fd449ae3          	bne	s1,s4,15c4 <random_init+0x46>
    15f4:	000037b7          	lui	a5,0x3
    15f8:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    15fc:	000037b7          	lui	a5,0x3
    1600:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1604:	000037b7          	lui	a5,0x3
    1608:	4705                	li	a4,1
    160a:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    160e:	70e2                	ld	ra,56(sp)
    1610:	7442                	ld	s0,48(sp)
    1612:	74a2                	ld	s1,40(sp)
    1614:	7902                	ld	s2,32(sp)
    1616:	69e2                	ld	s3,24(sp)
    1618:	6a42                	ld	s4,16(sp)
    161a:	6121                	addi	sp,sp,64
    161c:	8082                	ret

000000000000161e <random_bytes>:
    161e:	7139                	addi	sp,sp,-64
    1620:	fc06                	sd	ra,56(sp)
    1622:	f822                	sd	s0,48(sp)
    1624:	f426                	sd	s1,40(sp)
    1626:	f04a                	sd	s2,32(sp)
    1628:	ec4e                	sd	s3,24(sp)
    162a:	e852                	sd	s4,16(sp)
    162c:	e456                	sd	s5,8(sp)
    162e:	e05a                	sd	s6,0(sp)
    1630:	892a                	mv	s2,a0
    1632:	8aae                	mv	s5,a1
    1634:	000037b7          	lui	a5,0x3
    1638:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    163c:	c3c1                	beqz	a5,16bc <random_bytes+0x9e>
    163e:	060a8563          	beqz	s5,16a8 <random_bytes+0x8a>
    1642:	9aca                	add	s5,s5,s2
    1644:	00003a37          	lui	s4,0x3
    1648:	000034b7          	lui	s1,0x3
    164c:	01048493          	addi	s1,s1,16 # 3010 <s>
    1650:	000039b7          	lui	s3,0x3
    1654:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1658:	2505                	addiw	a0,a0,1
    165a:	0ff57513          	andi	a0,a0,255
    165e:	00aa02a3          	sb	a0,5(s4)
    1662:	00a48b33          	add	s6,s1,a0
    1666:	000b4403          	lbu	s0,0(s6)
    166a:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    166e:	9c3d                	addw	s0,s0,a5
    1670:	0ff47413          	andi	s0,s0,255
    1674:	00898223          	sb	s0,4(s3)
    1678:	4605                	li	a2,1
    167a:	008485b3          	add	a1,s1,s0
    167e:	855a                	mv	a0,s6
    1680:	00000097          	auipc	ra,0x0
    1684:	ede080e7          	jalr	-290(ra) # 155e <swap_bytes>
    1688:	9426                	add	s0,s0,s1
    168a:	000b4783          	lbu	a5,0(s6)
    168e:	00044703          	lbu	a4,0(s0)
    1692:	9fb9                	addw	a5,a5,a4
    1694:	0ff7f793          	andi	a5,a5,255
    1698:	97a6                	add	a5,a5,s1
    169a:	0007c783          	lbu	a5,0(a5)
    169e:	00f90023          	sb	a5,0(s2)
    16a2:	0905                	addi	s2,s2,1
    16a4:	fb2a98e3          	bne	s5,s2,1654 <random_bytes+0x36>
    16a8:	70e2                	ld	ra,56(sp)
    16aa:	7442                	ld	s0,48(sp)
    16ac:	74a2                	ld	s1,40(sp)
    16ae:	7902                	ld	s2,32(sp)
    16b0:	69e2                	ld	s3,24(sp)
    16b2:	6a42                	ld	s4,16(sp)
    16b4:	6aa2                	ld	s5,8(sp)
    16b6:	6b02                	ld	s6,0(sp)
    16b8:	6121                	addi	sp,sp,64
    16ba:	8082                	ret
    16bc:	4501                	li	a0,0
    16be:	00000097          	auipc	ra,0x0
    16c2:	ec0080e7          	jalr	-320(ra) # 157e <random_init>
    16c6:	bfa5                	j	163e <random_bytes+0x20>

00000000000016c8 <random_ulong>:
    16c8:	1101                	addi	sp,sp,-32
    16ca:	ec06                	sd	ra,24(sp)
    16cc:	45a1                	li	a1,8
    16ce:	0028                	addi	a0,sp,8
    16d0:	00000097          	auipc	ra,0x0
    16d4:	f4e080e7          	jalr	-178(ra) # 161e <random_bytes>
    16d8:	6522                	ld	a0,8(sp)
    16da:	60e2                	ld	ra,24(sp)
    16dc:	6105                	addi	sp,sp,32
    16de:	8082                	ret

00000000000016e0 <shuffle>:
    16e0:	c9b9                	beqz	a1,1736 <shuffle+0x56>
    16e2:	7179                	addi	sp,sp,-48
    16e4:	f406                	sd	ra,40(sp)
    16e6:	f022                	sd	s0,32(sp)
    16e8:	ec26                	sd	s1,24(sp)
    16ea:	e84a                	sd	s2,16(sp)
    16ec:	e44e                	sd	s3,8(sp)
    16ee:	e052                	sd	s4,0(sp)
    16f0:	8a2a                	mv	s4,a0
    16f2:	89ae                	mv	s3,a1
    16f4:	84b2                	mv	s1,a2
    16f6:	892a                	mv	s2,a0
    16f8:	4401                	li	s0,0
    16fa:	00000097          	auipc	ra,0x0
    16fe:	fce080e7          	jalr	-50(ra) # 16c8 <random_ulong>
    1702:	408985b3          	sub	a1,s3,s0
    1706:	02b575b3          	remu	a1,a0,a1
    170a:	95a2                	add	a1,a1,s0
    170c:	029585b3          	mul	a1,a1,s1
    1710:	8626                	mv	a2,s1
    1712:	95d2                	add	a1,a1,s4
    1714:	854a                	mv	a0,s2
    1716:	00000097          	auipc	ra,0x0
    171a:	e48080e7          	jalr	-440(ra) # 155e <swap_bytes>
    171e:	0405                	addi	s0,s0,1
    1720:	9926                	add	s2,s2,s1
    1722:	fc899ce3          	bne	s3,s0,16fa <shuffle+0x1a>
    1726:	70a2                	ld	ra,40(sp)
    1728:	7402                	ld	s0,32(sp)
    172a:	64e2                	ld	s1,24(sp)
    172c:	6942                	ld	s2,16(sp)
    172e:	69a2                	ld	s3,8(sp)
    1730:	6a02                	ld	s4,0(sp)
    1732:	6145                	addi	sp,sp,48
    1734:	8082                	ret
    1736:	8082                	ret

0000000000001738 <arc4_init>:
    1738:	100500a3          	sb	zero,257(a0)
    173c:	10050023          	sb	zero,256(a0)
    1740:	4781                	li	a5,0
    1742:	10000693          	li	a3,256
    1746:	00f50733          	add	a4,a0,a5
    174a:	00f70023          	sb	a5,0(a4)
    174e:	0785                	addi	a5,a5,1
    1750:	fed79be3          	bne	a5,a3,1746 <arc4_init+0xe>
    1754:	86aa                	mv	a3,a0
    1756:	10050e13          	addi	t3,a0,256
    175a:	4701                	li	a4,0
    175c:	4781                	li	a5,0
    175e:	0006c883          	lbu	a7,0(a3)
    1762:	00f58833          	add	a6,a1,a5
    1766:	00084803          	lbu	a6,0(a6)
    176a:	00e8873b          	addw	a4,a7,a4
    176e:	00e8073b          	addw	a4,a6,a4
    1772:	0ff77713          	andi	a4,a4,255
    1776:	00e50833          	add	a6,a0,a4
    177a:	00084303          	lbu	t1,0(a6)
    177e:	00668023          	sb	t1,0(a3)
    1782:	01180023          	sb	a7,0(a6)
    1786:	0785                	addi	a5,a5,1
    1788:	00c7b833          	sltu	a6,a5,a2
    178c:	41000833          	neg	a6,a6
    1790:	0107f7b3          	and	a5,a5,a6
    1794:	0685                	addi	a3,a3,1
    1796:	fdc694e3          	bne	a3,t3,175e <arc4_init+0x26>
    179a:	8082                	ret

000000000000179c <arc4_crypt>:
    179c:	10054e03          	lbu	t3,256(a0)
    17a0:	10154803          	lbu	a6,257(a0)
    17a4:	fff60e93          	addi	t4,a2,-1
    17a8:	c225                	beqz	a2,1808 <arc4_crypt+0x6c>
    17aa:	00c588b3          	add	a7,a1,a2
    17ae:	86ae                	mv	a3,a1
    17b0:	001e031b          	addiw	t1,t3,1
    17b4:	40b3033b          	subw	t1,t1,a1
    17b8:	00d3073b          	addw	a4,t1,a3
    17bc:	0ff77713          	andi	a4,a4,255
    17c0:	972a                	add	a4,a4,a0
    17c2:	00074603          	lbu	a2,0(a4)
    17c6:	0106083b          	addw	a6,a2,a6
    17ca:	0ff87813          	andi	a6,a6,255
    17ce:	010507b3          	add	a5,a0,a6
    17d2:	0007c583          	lbu	a1,0(a5)
    17d6:	00b70023          	sb	a1,0(a4)
    17da:	00c78023          	sb	a2,0(a5)
    17de:	0685                	addi	a3,a3,1
    17e0:	00074783          	lbu	a5,0(a4)
    17e4:	9fb1                	addw	a5,a5,a2
    17e6:	0ff7f793          	andi	a5,a5,255
    17ea:	97aa                	add	a5,a5,a0
    17ec:	0007c783          	lbu	a5,0(a5)
    17f0:	fff6c703          	lbu	a4,-1(a3)
    17f4:	8fb9                	xor	a5,a5,a4
    17f6:	fef68fa3          	sb	a5,-1(a3)
    17fa:	fb169fe3          	bne	a3,a7,17b8 <arc4_crypt+0x1c>
    17fe:	2e85                	addiw	t4,t4,1
    1800:	01ce8e3b          	addw	t3,t4,t3
    1804:	0ffe7e13          	andi	t3,t3,255
    1808:	11c50023          	sb	t3,256(a0)
    180c:	110500a3          	sb	a6,257(a0)
    1810:	8082                	ret

0000000000001812 <_main>:
    1812:	1141                	addi	sp,sp,-16
    1814:	e406                	sd	ra,8(sp)
    1816:	fffff097          	auipc	ra,0xfffff
    181a:	7ea080e7          	jalr	2026(ra) # 1000 <main>
    181e:	4501                	li	a0,0
    1820:	00000097          	auipc	ra,0x0
    1824:	578080e7          	jalr	1400(ra) # 1d98 <exit>
    1828:	60a2                	ld	ra,8(sp)
    182a:	0141                	addi	sp,sp,16
    182c:	8082                	ret

000000000000182e <strcmp>:
    182e:	00054783          	lbu	a5,0(a0)
    1832:	cb91                	beqz	a5,1846 <strcmp+0x18>
    1834:	0005c703          	lbu	a4,0(a1)
    1838:	00f71763          	bne	a4,a5,1846 <strcmp+0x18>
    183c:	0505                	addi	a0,a0,1
    183e:	0585                	addi	a1,a1,1
    1840:	00054783          	lbu	a5,0(a0)
    1844:	fbe5                	bnez	a5,1834 <strcmp+0x6>
    1846:	0005c503          	lbu	a0,0(a1)
    184a:	40a7853b          	subw	a0,a5,a0
    184e:	8082                	ret

0000000000001850 <strcpy>:
    1850:	87aa                	mv	a5,a0
    1852:	0585                	addi	a1,a1,1
    1854:	0785                	addi	a5,a5,1
    1856:	fff5c703          	lbu	a4,-1(a1)
    185a:	fee78fa3          	sb	a4,-1(a5)
    185e:	fb75                	bnez	a4,1852 <strcpy+0x2>
    1860:	8082                	ret

0000000000001862 <strlen>:
    1862:	00054783          	lbu	a5,0(a0)
    1866:	cf81                	beqz	a5,187e <strlen+0x1c>
    1868:	0505                	addi	a0,a0,1
    186a:	87aa                	mv	a5,a0
    186c:	4685                	li	a3,1
    186e:	9e89                	subw	a3,a3,a0
    1870:	00f6853b          	addw	a0,a3,a5
    1874:	0785                	addi	a5,a5,1
    1876:	fff7c703          	lbu	a4,-1(a5)
    187a:	fb7d                	bnez	a4,1870 <strlen+0xe>
    187c:	8082                	ret
    187e:	4501                	li	a0,0
    1880:	8082                	ret

0000000000001882 <memset>:
    1882:	ca19                	beqz	a2,1898 <memset+0x16>
    1884:	87aa                	mv	a5,a0
    1886:	1602                	slli	a2,a2,0x20
    1888:	9201                	srli	a2,a2,0x20
    188a:	00a60733          	add	a4,a2,a0
    188e:	00b78023          	sb	a1,0(a5)
    1892:	0785                	addi	a5,a5,1
    1894:	fee79de3          	bne	a5,a4,188e <memset+0xc>
    1898:	8082                	ret

000000000000189a <memcmp>:
    189a:	1101                	addi	sp,sp,-32
    189c:	ec06                	sd	ra,24(sp)
    189e:	e822                	sd	s0,16(sp)
    18a0:	e426                	sd	s1,8(sp)
    18a2:	e04a                	sd	s2,0(sp)
    18a4:	892a                	mv	s2,a0
    18a6:	842e                	mv	s0,a1
    18a8:	84b2                	mv	s1,a2
    18aa:	c915                	beqz	a0,18de <memcmp+0x44>
    18ac:	c5ad                	beqz	a1,1916 <memcmp+0x7c>
    18ae:	fff60713          	addi	a4,a2,-1
    18b2:	c645                	beqz	a2,195a <memcmp+0xc0>
    18b4:	87ca                	mv	a5,s2
    18b6:	00190613          	addi	a2,s2,1
    18ba:	963a                	add	a2,a2,a4
    18bc:	0007c683          	lbu	a3,0(a5)
    18c0:	00044703          	lbu	a4,0(s0)
    18c4:	08e69463          	bne	a3,a4,194c <memcmp+0xb2>
    18c8:	0785                	addi	a5,a5,1
    18ca:	0405                	addi	s0,s0,1
    18cc:	fec798e3          	bne	a5,a2,18bc <memcmp+0x22>
    18d0:	4501                	li	a0,0
    18d2:	60e2                	ld	ra,24(sp)
    18d4:	6442                	ld	s0,16(sp)
    18d6:	64a2                	ld	s1,8(sp)
    18d8:	6902                	ld	s2,0(sp)
    18da:	6105                	addi	sp,sp,32
    18dc:	8082                	ret
    18de:	4501                	li	a0,0
    18e0:	da6d                	beqz	a2,18d2 <memcmp+0x38>
    18e2:	03200693          	li	a3,50
    18e6:	00002637          	lui	a2,0x2
    18ea:	48860613          	addi	a2,a2,1160 # 2488 <crctab+0x400>
    18ee:	000025b7          	lui	a1,0x2
    18f2:	49858593          	addi	a1,a1,1176 # 2498 <crctab+0x410>
    18f6:	4509                	li	a0,2
    18f8:	00000097          	auipc	ra,0x0
    18fc:	bbc080e7          	jalr	-1092(ra) # 14b4 <fprintf>
    1900:	650d                	lui	a0,0x3
    1902:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1906:	00000097          	auipc	ra,0x0
    190a:	492080e7          	jalr	1170(ra) # 1d98 <exit>
    190e:	fff48713          	addi	a4,s1,-1
    1912:	f04d                	bnez	s0,18b4 <memcmp+0x1a>
    1914:	a011                	j	1918 <memcmp+0x7e>
    1916:	c221                	beqz	a2,1956 <memcmp+0xbc>
    1918:	03300693          	li	a3,51
    191c:	00002637          	lui	a2,0x2
    1920:	48860613          	addi	a2,a2,1160 # 2488 <crctab+0x400>
    1924:	000025b7          	lui	a1,0x2
    1928:	4e058593          	addi	a1,a1,1248 # 24e0 <crctab+0x458>
    192c:	4509                	li	a0,2
    192e:	00000097          	auipc	ra,0x0
    1932:	b86080e7          	jalr	-1146(ra) # 14b4 <fprintf>
    1936:	650d                	lui	a0,0x3
    1938:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    193c:	00000097          	auipc	ra,0x0
    1940:	45c080e7          	jalr	1116(ra) # 1d98 <exit>
    1944:	fff48713          	addi	a4,s1,-1
    1948:	4401                	li	s0,0
    194a:	b7ad                	j	18b4 <memcmp+0x1a>
    194c:	4505                	li	a0,1
    194e:	f8d762e3          	bltu	a4,a3,18d2 <memcmp+0x38>
    1952:	557d                	li	a0,-1
    1954:	bfbd                	j	18d2 <memcmp+0x38>
    1956:	4501                	li	a0,0
    1958:	bfad                	j	18d2 <memcmp+0x38>
    195a:	4501                	li	a0,0
    195c:	bf9d                	j	18d2 <memcmp+0x38>

000000000000195e <memcpy>:
    195e:	1101                	addi	sp,sp,-32
    1960:	ec06                	sd	ra,24(sp)
    1962:	e822                	sd	s0,16(sp)
    1964:	e426                	sd	s1,8(sp)
    1966:	e04a                	sd	s2,0(sp)
    1968:	84aa                	mv	s1,a0
    196a:	842e                	mv	s0,a1
    196c:	8932                	mv	s2,a2
    196e:	c51d                	beqz	a0,199c <memcpy+0x3e>
    1970:	c1ad                	beqz	a1,19d2 <memcpy+0x74>
    1972:	fff60693          	addi	a3,a2,-1
    1976:	ce01                	beqz	a2,198e <memcpy+0x30>
    1978:	0685                	addi	a3,a3,1
    197a:	96a6                	add	a3,a3,s1
    197c:	87a6                	mv	a5,s1
    197e:	0405                	addi	s0,s0,1
    1980:	0785                	addi	a5,a5,1
    1982:	fff44703          	lbu	a4,-1(s0)
    1986:	fee78fa3          	sb	a4,-1(a5)
    198a:	fed79ae3          	bne	a5,a3,197e <memcpy+0x20>
    198e:	8526                	mv	a0,s1
    1990:	60e2                	ld	ra,24(sp)
    1992:	6442                	ld	s0,16(sp)
    1994:	64a2                	ld	s1,8(sp)
    1996:	6902                	ld	s2,0(sp)
    1998:	6105                	addi	sp,sp,32
    199a:	8082                	ret
    199c:	da6d                	beqz	a2,198e <memcpy+0x30>
    199e:	04000693          	li	a3,64
    19a2:	00002637          	lui	a2,0x2
    19a6:	48860613          	addi	a2,a2,1160 # 2488 <crctab+0x400>
    19aa:	000025b7          	lui	a1,0x2
    19ae:	52858593          	addi	a1,a1,1320 # 2528 <crctab+0x4a0>
    19b2:	4509                	li	a0,2
    19b4:	00000097          	auipc	ra,0x0
    19b8:	b00080e7          	jalr	-1280(ra) # 14b4 <fprintf>
    19bc:	650d                	lui	a0,0x3
    19be:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19c2:	00000097          	auipc	ra,0x0
    19c6:	3d6080e7          	jalr	982(ra) # 1d98 <exit>
    19ca:	fff90693          	addi	a3,s2,-1
    19ce:	f44d                	bnez	s0,1978 <memcpy+0x1a>
    19d0:	a011                	j	19d4 <memcpy+0x76>
    19d2:	de55                	beqz	a2,198e <memcpy+0x30>
    19d4:	04100693          	li	a3,65
    19d8:	00002637          	lui	a2,0x2
    19dc:	48860613          	addi	a2,a2,1160 # 2488 <crctab+0x400>
    19e0:	000025b7          	lui	a1,0x2
    19e4:	57058593          	addi	a1,a1,1392 # 2570 <crctab+0x4e8>
    19e8:	4509                	li	a0,2
    19ea:	00000097          	auipc	ra,0x0
    19ee:	aca080e7          	jalr	-1334(ra) # 14b4 <fprintf>
    19f2:	650d                	lui	a0,0x3
    19f4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19f8:	00000097          	auipc	ra,0x0
    19fc:	3a0080e7          	jalr	928(ra) # 1d98 <exit>
    1a00:	fff90693          	addi	a3,s2,-1
    1a04:	4401                	li	s0,0
    1a06:	bf8d                	j	1978 <memcpy+0x1a>

0000000000001a08 <itoa>:
    1a08:	1101                	addi	sp,sp,-32
    1a0a:	ec06                	sd	ra,24(sp)
    1a0c:	e822                	sd	s0,16(sp)
    1a0e:	e426                	sd	s1,8(sp)
    1a10:	842a                	mv	s0,a0
    1a12:	41f5d71b          	sraiw	a4,a1,0x1f
    1a16:	00e5c7b3          	xor	a5,a1,a4
    1a1a:	9f99                	subw	a5,a5,a4
    1a1c:	84aa                	mv	s1,a0
    1a1e:	862a                	mv	a2,a0
    1a20:	4681                	li	a3,0
    1a22:	4529                	li	a0,10
    1a24:	4825                	li	a6,9
    1a26:	88b6                	mv	a7,a3
    1a28:	2685                	addiw	a3,a3,1
    1a2a:	02a7e73b          	remw	a4,a5,a0
    1a2e:	0307071b          	addiw	a4,a4,48
    1a32:	00e60023          	sb	a4,0(a2)
    1a36:	873e                	mv	a4,a5
    1a38:	02a7c7bb          	divw	a5,a5,a0
    1a3c:	0605                	addi	a2,a2,1
    1a3e:	fee844e3          	blt	a6,a4,1a26 <itoa+0x1e>
    1a42:	0405c863          	bltz	a1,1a92 <itoa+0x8a>
    1a46:	96a2                	add	a3,a3,s0
    1a48:	00068023          	sb	zero,0(a3)
    1a4c:	8522                	mv	a0,s0
    1a4e:	00000097          	auipc	ra,0x0
    1a52:	e14080e7          	jalr	-492(ra) # 1862 <strlen>
    1a56:	fff5071b          	addiw	a4,a0,-1
    1a5a:	02e05763          	blez	a4,1a88 <itoa+0x80>
    1a5e:	9722                	add	a4,a4,s0
    1a60:	4681                	li	a3,0
    1a62:	0004c783          	lbu	a5,0(s1)
    1a66:	00074603          	lbu	a2,0(a4)
    1a6a:	00c48023          	sb	a2,0(s1)
    1a6e:	00f70023          	sb	a5,0(a4)
    1a72:	0016879b          	addiw	a5,a3,1
    1a76:	0007869b          	sext.w	a3,a5
    1a7a:	0485                	addi	s1,s1,1
    1a7c:	177d                	addi	a4,a4,-1
    1a7e:	fff7c793          	not	a5,a5
    1a82:	9fa9                	addw	a5,a5,a0
    1a84:	fcf6cfe3          	blt	a3,a5,1a62 <itoa+0x5a>
    1a88:	60e2                	ld	ra,24(sp)
    1a8a:	6442                	ld	s0,16(sp)
    1a8c:	64a2                	ld	s1,8(sp)
    1a8e:	6105                	addi	sp,sp,32
    1a90:	8082                	ret
    1a92:	96a2                	add	a3,a3,s0
    1a94:	02d00793          	li	a5,45
    1a98:	00f68023          	sb	a5,0(a3)
    1a9c:	0028869b          	addiw	a3,a7,2
    1aa0:	b75d                	j	1a46 <itoa+0x3e>

0000000000001aa2 <atoi>:
    1aa2:	00054783          	lbu	a5,0(a0)
    1aa6:	02000713          	li	a4,32
    1aaa:	00e79763          	bne	a5,a4,1ab8 <atoi+0x16>
    1aae:	0505                	addi	a0,a0,1
    1ab0:	00054783          	lbu	a5,0(a0)
    1ab4:	fee78de3          	beq	a5,a4,1aae <atoi+0xc>
    1ab8:	02b00713          	li	a4,43
    1abc:	04e78663          	beq	a5,a4,1b08 <atoi+0x66>
    1ac0:	02d00713          	li	a4,45
    1ac4:	4805                	li	a6,1
    1ac6:	04e78463          	beq	a5,a4,1b0e <atoi+0x6c>
    1aca:	00054683          	lbu	a3,0(a0)
    1ace:	fd06879b          	addiw	a5,a3,-48
    1ad2:	0ff7f793          	andi	a5,a5,255
    1ad6:	4725                	li	a4,9
    1ad8:	02f76e63          	bltu	a4,a5,1b14 <atoi+0x72>
    1adc:	4601                	li	a2,0
    1ade:	45a5                	li	a1,9
    1ae0:	0505                	addi	a0,a0,1
    1ae2:	0026179b          	slliw	a5,a2,0x2
    1ae6:	9fb1                	addw	a5,a5,a2
    1ae8:	0017979b          	slliw	a5,a5,0x1
    1aec:	9fb5                	addw	a5,a5,a3
    1aee:	fd07861b          	addiw	a2,a5,-48
    1af2:	00054683          	lbu	a3,0(a0)
    1af6:	fd06871b          	addiw	a4,a3,-48
    1afa:	0ff77713          	andi	a4,a4,255
    1afe:	fee5f1e3          	bgeu	a1,a4,1ae0 <atoi+0x3e>
    1b02:	02c8053b          	mulw	a0,a6,a2
    1b06:	8082                	ret
    1b08:	0505                	addi	a0,a0,1
    1b0a:	4805                	li	a6,1
    1b0c:	bf7d                	j	1aca <atoi+0x28>
    1b0e:	0505                	addi	a0,a0,1
    1b10:	587d                	li	a6,-1
    1b12:	bf65                	j	1aca <atoi+0x28>
    1b14:	4601                	li	a2,0
    1b16:	b7f5                	j	1b02 <atoi+0x60>

0000000000001b18 <check_file_handle>:
    1b18:	d8010113          	addi	sp,sp,-640
    1b1c:	26113c23          	sd	ra,632(sp)
    1b20:	26813823          	sd	s0,624(sp)
    1b24:	26913423          	sd	s1,616(sp)
    1b28:	27213023          	sd	s2,608(sp)
    1b2c:	25313c23          	sd	s3,600(sp)
    1b30:	25413823          	sd	s4,592(sp)
    1b34:	25513423          	sd	s5,584(sp)
    1b38:	25613023          	sd	s6,576(sp)
    1b3c:	23713c23          	sd	s7,568(sp)
    1b40:	23813823          	sd	s8,560(sp)
    1b44:	23913423          	sd	s9,552(sp)
    1b48:	23a13023          	sd	s10,544(sp)
    1b4c:	21b13c23          	sd	s11,536(sp)
    1b50:	8baa                	mv	s7,a0
    1b52:	8a2e                	mv	s4,a1
    1b54:	8c32                	mv	s8,a2
    1b56:	89b6                	mv	s3,a3
    1b58:	040c                	addi	a1,sp,512
    1b5a:	00000097          	auipc	ra,0x0
    1b5e:	28e080e7          	jalr	654(ra) # 1de8 <fstat>
    1b62:	20813603          	ld	a2,520(sp)
    1b66:	03361163          	bne	a2,s3,1b88 <check_file_handle+0x70>
    1b6a:	06098763          	beqz	s3,1bd8 <check_file_handle+0xc0>
    1b6e:	4901                	li	s2,0
    1b70:	20000a93          	li	s5,512
    1b74:	00002cb7          	lui	s9,0x2
    1b78:	00002db7          	lui	s11,0x2
    1b7c:	6b0d                	lui	s6,0x3
    1b7e:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1b82:	00002d37          	lui	s10,0x2
    1b86:	aa39                	j	1ca4 <check_file_handle+0x18c>
    1b88:	86ce                	mv	a3,s3
    1b8a:	85d2                	mv	a1,s4
    1b8c:	00002537          	lui	a0,0x2
    1b90:	5b850513          	addi	a0,a0,1464 # 25b8 <crctab+0x530>
    1b94:	00000097          	auipc	ra,0x0
    1b98:	942080e7          	jalr	-1726(ra) # 14d6 <printf>
    1b9c:	fc0999e3          	bnez	s3,1b6e <check_file_handle+0x56>
    1ba0:	20813683          	ld	a3,520(sp)
    1ba4:	03368a63          	beq	a3,s3,1bd8 <check_file_handle+0xc0>
    1ba8:	0a600813          	li	a6,166
    1bac:	000027b7          	lui	a5,0x2
    1bb0:	48878793          	addi	a5,a5,1160 # 2488 <crctab+0x400>
    1bb4:	874e                	mv	a4,s3
    1bb6:	8652                	mv	a2,s4
    1bb8:	000025b7          	lui	a1,0x2
    1bbc:	68858593          	addi	a1,a1,1672 # 2688 <crctab+0x600>
    1bc0:	4509                	li	a0,2
    1bc2:	00000097          	auipc	ra,0x0
    1bc6:	8f2080e7          	jalr	-1806(ra) # 14b4 <fprintf>
    1bca:	650d                	lui	a0,0x3
    1bcc:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bd0:	00000097          	auipc	ra,0x0
    1bd4:	1c8080e7          	jalr	456(ra) # 1d98 <exit>
    1bd8:	85d2                	mv	a1,s4
    1bda:	00002537          	lui	a0,0x2
    1bde:	6d050513          	addi	a0,a0,1744 # 26d0 <crctab+0x648>
    1be2:	00000097          	auipc	ra,0x0
    1be6:	8f4080e7          	jalr	-1804(ra) # 14d6 <printf>
    1bea:	27813083          	ld	ra,632(sp)
    1bee:	27013403          	ld	s0,624(sp)
    1bf2:	26813483          	ld	s1,616(sp)
    1bf6:	26013903          	ld	s2,608(sp)
    1bfa:	25813983          	ld	s3,600(sp)
    1bfe:	25013a03          	ld	s4,592(sp)
    1c02:	24813a83          	ld	s5,584(sp)
    1c06:	24013b03          	ld	s6,576(sp)
    1c0a:	23813b83          	ld	s7,568(sp)
    1c0e:	23013c03          	ld	s8,560(sp)
    1c12:	22813c83          	ld	s9,552(sp)
    1c16:	22013d03          	ld	s10,544(sp)
    1c1a:	21813d83          	ld	s11,536(sp)
    1c1e:	28010113          	addi	sp,sp,640
    1c22:	8082                	ret
    1c24:	09d00893          	li	a7,157
    1c28:	488c8813          	addi	a6,s9,1160 # 2488 <crctab+0x400>
    1c2c:	87aa                	mv	a5,a0
    1c2e:	8752                	mv	a4,s4
    1c30:	86ca                	mv	a3,s2
    1c32:	8622                	mv	a2,s0
    1c34:	5e8d8593          	addi	a1,s11,1512 # 25e8 <crctab+0x560>
    1c38:	4509                	li	a0,2
    1c3a:	00000097          	auipc	ra,0x0
    1c3e:	87a080e7          	jalr	-1926(ra) # 14b4 <fprintf>
    1c42:	855a                	mv	a0,s6
    1c44:	00000097          	auipc	ra,0x0
    1c48:	154080e7          	jalr	340(ra) # 1d98 <exit>
    1c4c:	a89d                	j	1cc2 <check_file_handle+0x1aa>
    1c4e:	00160593          	addi	a1,a2,1
    1c52:	0285f163          	bgeu	a1,s0,1c74 <check_file_handle+0x15c>
    1c56:	00c10733          	add	a4,sp,a2
    1c5a:	00b487b3          	add	a5,s1,a1
    1c5e:	00174683          	lbu	a3,1(a4)
    1c62:	0007c783          	lbu	a5,0(a5)
    1c66:	00f68763          	beq	a3,a5,1c74 <check_file_handle+0x15c>
    1c6a:	0585                	addi	a1,a1,1
    1c6c:	0705                	addi	a4,a4,1
    1c6e:	feb416e3          	bne	s0,a1,1c5a <check_file_handle+0x142>
    1c72:	85a2                	mv	a1,s0
    1c74:	08100813          	li	a6,129
    1c78:	488c8793          	addi	a5,s9,1160
    1c7c:	8752                	mv	a4,s4
    1c7e:	012606b3          	add	a3,a2,s2
    1c82:	40c58633          	sub	a2,a1,a2
    1c86:	630d0593          	addi	a1,s10,1584 # 2630 <crctab+0x5a8>
    1c8a:	4509                	li	a0,2
    1c8c:	00000097          	auipc	ra,0x0
    1c90:	828080e7          	jalr	-2008(ra) # 14b4 <fprintf>
    1c94:	855a                	mv	a0,s6
    1c96:	00000097          	auipc	ra,0x0
    1c9a:	102080e7          	jalr	258(ra) # 1d98 <exit>
    1c9e:	9922                	add	s2,s2,s0
    1ca0:	f13970e3          	bgeu	s2,s3,1ba0 <check_file_handle+0x88>
    1ca4:	41298433          	sub	s0,s3,s2
    1ca8:	008af363          	bgeu	s5,s0,1cae <check_file_handle+0x196>
    1cac:	8456                	mv	s0,s5
    1cae:	0004061b          	sext.w	a2,s0
    1cb2:	858a                	mv	a1,sp
    1cb4:	855e                	mv	a0,s7
    1cb6:	00000097          	auipc	ra,0x0
    1cba:	10a080e7          	jalr	266(ra) # 1dc0 <read>
    1cbe:	f68513e3          	bne	a0,s0,1c24 <check_file_handle+0x10c>
    1cc2:	012c04b3          	add	s1,s8,s2
    1cc6:	8622                	mv	a2,s0
    1cc8:	85a6                	mv	a1,s1
    1cca:	850a                	mv	a0,sp
    1ccc:	00000097          	auipc	ra,0x0
    1cd0:	bce080e7          	jalr	-1074(ra) # 189a <memcmp>
    1cd4:	d569                	beqz	a0,1c9e <check_file_handle+0x186>
    1cd6:	03298163          	beq	s3,s2,1cf8 <check_file_handle+0x1e0>
    1cda:	870a                	mv	a4,sp
    1cdc:	4601                	li	a2,0
    1cde:	00c487b3          	add	a5,s1,a2
    1ce2:	00074683          	lbu	a3,0(a4)
    1ce6:	0007c783          	lbu	a5,0(a5)
    1cea:	f6f692e3          	bne	a3,a5,1c4e <check_file_handle+0x136>
    1cee:	0605                	addi	a2,a2,1
    1cf0:	0705                	addi	a4,a4,1
    1cf2:	fe8666e3          	bltu	a2,s0,1cde <check_file_handle+0x1c6>
    1cf6:	bfa1                	j	1c4e <check_file_handle+0x136>
    1cf8:	4601                	li	a2,0
    1cfa:	4585                	li	a1,1
    1cfc:	bfa5                	j	1c74 <check_file_handle+0x15c>

0000000000001cfe <check_file>:
    1cfe:	7179                	addi	sp,sp,-48
    1d00:	f406                	sd	ra,40(sp)
    1d02:	f022                	sd	s0,32(sp)
    1d04:	ec26                	sd	s1,24(sp)
    1d06:	e84a                	sd	s2,16(sp)
    1d08:	e44e                	sd	s3,8(sp)
    1d0a:	84aa                	mv	s1,a0
    1d0c:	892e                	mv	s2,a1
    1d0e:	89b2                	mv	s3,a2
    1d10:	4581                	li	a1,0
    1d12:	00000097          	auipc	ra,0x0
    1d16:	0a6080e7          	jalr	166(ra) # 1db8 <open>
    1d1a:	842a                	mv	s0,a0
    1d1c:	4789                	li	a5,2
    1d1e:	02a7df63          	bge	a5,a0,1d5c <check_file+0x5e>
    1d22:	86ce                	mv	a3,s3
    1d24:	864a                	mv	a2,s2
    1d26:	85a6                	mv	a1,s1
    1d28:	8522                	mv	a0,s0
    1d2a:	00000097          	auipc	ra,0x0
    1d2e:	dee080e7          	jalr	-530(ra) # 1b18 <check_file_handle>
    1d32:	85a6                	mv	a1,s1
    1d34:	00002537          	lui	a0,0x2
    1d38:	75850513          	addi	a0,a0,1880 # 2758 <crctab+0x6d0>
    1d3c:	fffff097          	auipc	ra,0xfffff
    1d40:	79a080e7          	jalr	1946(ra) # 14d6 <printf>
    1d44:	8522                	mv	a0,s0
    1d46:	00000097          	auipc	ra,0x0
    1d4a:	09a080e7          	jalr	154(ra) # 1de0 <close>
    1d4e:	70a2                	ld	ra,40(sp)
    1d50:	7402                	ld	s0,32(sp)
    1d52:	64e2                	ld	s1,24(sp)
    1d54:	6942                	ld	s2,16(sp)
    1d56:	69a2                	ld	s3,8(sp)
    1d58:	6145                	addi	sp,sp,48
    1d5a:	8082                	ret
    1d5c:	0ae00713          	li	a4,174
    1d60:	000026b7          	lui	a3,0x2
    1d64:	48868693          	addi	a3,a3,1160 # 2488 <crctab+0x400>
    1d68:	8626                	mv	a2,s1
    1d6a:	000025b7          	lui	a1,0x2
    1d6e:	6f058593          	addi	a1,a1,1776 # 26f0 <crctab+0x668>
    1d72:	4509                	li	a0,2
    1d74:	fffff097          	auipc	ra,0xfffff
    1d78:	740080e7          	jalr	1856(ra) # 14b4 <fprintf>
    1d7c:	650d                	lui	a0,0x3
    1d7e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1d82:	00000097          	auipc	ra,0x0
    1d86:	016080e7          	jalr	22(ra) # 1d98 <exit>
    1d8a:	bf61                	j	1d22 <check_file+0x24>

0000000000001d8c <r_sp>:
    1d8c:	850a                	mv	a0,sp
    1d8e:	8082                	ret

0000000000001d90 <halt>:
    1d90:	4885                	li	a7,1
    1d92:	00000073          	ecall
    1d96:	8082                	ret

0000000000001d98 <exit>:
    1d98:	4889                	li	a7,2
    1d9a:	00000073          	ecall
    1d9e:	8082                	ret

0000000000001da0 <exec>:
    1da0:	488d                	li	a7,3
    1da2:	00000073          	ecall
    1da6:	8082                	ret

0000000000001da8 <wait>:
    1da8:	4891                	li	a7,4
    1daa:	00000073          	ecall
    1dae:	8082                	ret

0000000000001db0 <remove>:
    1db0:	4895                	li	a7,5
    1db2:	00000073          	ecall
    1db6:	8082                	ret

0000000000001db8 <open>:
    1db8:	4899                	li	a7,6
    1dba:	00000073          	ecall
    1dbe:	8082                	ret

0000000000001dc0 <read>:
    1dc0:	489d                	li	a7,7
    1dc2:	00000073          	ecall
    1dc6:	8082                	ret

0000000000001dc8 <write>:
    1dc8:	48a1                	li	a7,8
    1dca:	00000073          	ecall
    1dce:	8082                	ret

0000000000001dd0 <seek>:
    1dd0:	48a5                	li	a7,9
    1dd2:	00000073          	ecall
    1dd6:	8082                	ret

0000000000001dd8 <tell>:
    1dd8:	48a9                	li	a7,10
    1dda:	00000073          	ecall
    1dde:	8082                	ret

0000000000001de0 <close>:
    1de0:	48ad                	li	a7,11
    1de2:	00000073          	ecall
    1de6:	8082                	ret

0000000000001de8 <fstat>:
    1de8:	48b1                	li	a7,12
    1dea:	00000073          	ecall
    1dee:	8082                	ret

0000000000001df0 <mmap>:
    1df0:	48b5                	li	a7,13
    1df2:	00000073          	ecall
    1df6:	8082                	ret

0000000000001df8 <munmap>:
    1df8:	48b9                	li	a7,14
    1dfa:	00000073          	ecall
    1dfe:	8082                	ret

0000000000001e00 <chdir>:
    1e00:	48bd                	li	a7,15
    1e02:	00000073          	ecall
    1e06:	8082                	ret

0000000000001e08 <mkdir>:
    1e08:	48c1                	li	a7,16
    1e0a:	00000073          	ecall
    1e0e:	8082                	ret
