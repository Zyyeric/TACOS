
build/user/userprogs/open-rdwr:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	716d                	addi	sp,sp,-272
    1002:	e606                	sd	ra,264(sp)
    1004:	e222                	sd	s0,256(sp)
    1006:	10000613          	li	a2,256
    100a:	4581                	li	a1,0
    100c:	850a                	mv	a0,sp
    100e:	00001097          	auipc	ra,0x1
    1012:	9ce080e7          	jalr	-1586(ra) # 19dc <memset>
    1016:	4581                	li	a1,0
    1018:	00002537          	lui	a0,0x2
    101c:	f7050513          	addi	a0,a0,-144 # 1f70 <mkdir+0xe>
    1020:	00001097          	auipc	ra,0x1
    1024:	ef2080e7          	jalr	-270(ra) # 1f12 <open>
    1028:	842a                	mv	s0,a0
    102a:	4789                	li	a5,2
    102c:	14a7d463          	bge	a5,a0,1174 <main+0x174>
    1030:	10000613          	li	a2,256
    1034:	858a                	mv	a1,sp
    1036:	8522                	mv	a0,s0
    1038:	00001097          	auipc	ra,0x1
    103c:	ee2080e7          	jalr	-286(ra) # 1f1a <read>
    1040:	0ef00793          	li	a5,239
    1044:	14f51e63          	bne	a0,a5,11a0 <main+0x1a0>
    1048:	4605                	li	a2,1
    104a:	858a                	mv	a1,sp
    104c:	8522                	mv	a0,s0
    104e:	00001097          	auipc	ra,0x1
    1052:	ed4080e7          	jalr	-300(ra) # 1f22 <write>
    1056:	57fd                	li	a5,-1
    1058:	16f51a63          	bne	a0,a5,11cc <main+0x1cc>
    105c:	000035b7          	lui	a1,0x3
    1060:	00058593          	mv	a1,a1
    1064:	850a                	mv	a0,sp
    1066:	00001097          	auipc	ra,0x1
    106a:	922080e7          	jalr	-1758(ra) # 1988 <strcmp>
    106e:	18051563          	bnez	a0,11f8 <main+0x1f8>
    1072:	8522                	mv	a0,s0
    1074:	00001097          	auipc	ra,0x1
    1078:	ec6080e7          	jalr	-314(ra) # 1f3a <close>
    107c:	20100593          	li	a1,513
    1080:	00002537          	lui	a0,0x2
    1084:	11050513          	addi	a0,a0,272 # 2110 <mkdir+0x1ae>
    1088:	00001097          	auipc	ra,0x1
    108c:	e8a080e7          	jalr	-374(ra) # 1f12 <open>
    1090:	842a                	mv	s0,a0
    1092:	4789                	li	a5,2
    1094:	18a7d863          	bge	a5,a0,1224 <main+0x224>
    1098:	461d                	li	a2,7
    109a:	000025b7          	lui	a1,0x2
    109e:	17858593          	addi	a1,a1,376 # 2178 <mkdir+0x216>
    10a2:	8522                	mv	a0,s0
    10a4:	00001097          	auipc	ra,0x1
    10a8:	e7e080e7          	jalr	-386(ra) # 1f22 <write>
    10ac:	479d                	li	a5,7
    10ae:	1af51163          	bne	a0,a5,1250 <main+0x250>
    10b2:	10000613          	li	a2,256
    10b6:	858a                	mv	a1,sp
    10b8:	8522                	mv	a0,s0
    10ba:	00001097          	auipc	ra,0x1
    10be:	e60080e7          	jalr	-416(ra) # 1f1a <read>
    10c2:	57fd                	li	a5,-1
    10c4:	1af51c63          	bne	a0,a5,127c <main+0x27c>
    10c8:	8522                	mv	a0,s0
    10ca:	00001097          	auipc	ra,0x1
    10ce:	e70080e7          	jalr	-400(ra) # 1f3a <close>
    10d2:	4589                	li	a1,2
    10d4:	00002537          	lui	a0,0x2
    10d8:	f7050513          	addi	a0,a0,-144 # 1f70 <mkdir+0xe>
    10dc:	00001097          	auipc	ra,0x1
    10e0:	e36080e7          	jalr	-458(ra) # 1f12 <open>
    10e4:	842a                	mv	s0,a0
    10e6:	4789                	li	a5,2
    10e8:	1ca7d063          	bge	a5,a0,12a8 <main+0x2a8>
    10ec:	10000613          	li	a2,256
    10f0:	858a                	mv	a1,sp
    10f2:	8522                	mv	a0,s0
    10f4:	00001097          	auipc	ra,0x1
    10f8:	e26080e7          	jalr	-474(ra) # 1f1a <read>
    10fc:	0ef00793          	li	a5,239
    1100:	1cf51a63          	bne	a0,a5,12d4 <main+0x2d4>
    1104:	4581                	li	a1,0
    1106:	8522                	mv	a0,s0
    1108:	00001097          	auipc	ra,0x1
    110c:	e22080e7          	jalr	-478(ra) # 1f2a <seek>
    1110:	0ef00613          	li	a2,239
    1114:	858a                	mv	a1,sp
    1116:	8522                	mv	a0,s0
    1118:	00001097          	auipc	ra,0x1
    111c:	e0a080e7          	jalr	-502(ra) # 1f22 <write>
    1120:	0ef00793          	li	a5,239
    1124:	1cf51e63          	bne	a0,a5,1300 <main+0x300>
    1128:	4581                	li	a1,0
    112a:	8522                	mv	a0,s0
    112c:	00001097          	auipc	ra,0x1
    1130:	dfe080e7          	jalr	-514(ra) # 1f2a <seek>
    1134:	10000613          	li	a2,256
    1138:	858a                	mv	a1,sp
    113a:	8522                	mv	a0,s0
    113c:	00001097          	auipc	ra,0x1
    1140:	dde080e7          	jalr	-546(ra) # 1f1a <read>
    1144:	0ef00793          	li	a5,239
    1148:	1ef51263          	bne	a0,a5,132c <main+0x32c>
    114c:	000035b7          	lui	a1,0x3
    1150:	00058593          	mv	a1,a1
    1154:	850a                	mv	a0,sp
    1156:	00001097          	auipc	ra,0x1
    115a:	832080e7          	jalr	-1998(ra) # 1988 <strcmp>
    115e:	1e051d63          	bnez	a0,1358 <main+0x358>
    1162:	8522                	mv	a0,s0
    1164:	00001097          	auipc	ra,0x1
    1168:	dd6080e7          	jalr	-554(ra) # 1f3a <close>
    116c:	60b2                	ld	ra,264(sp)
    116e:	6412                	ld	s0,256(sp)
    1170:	6151                	addi	sp,sp,272
    1172:	8082                	ret
    1174:	46b1                	li	a3,12
    1176:	00002637          	lui	a2,0x2
    117a:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    117e:	000025b7          	lui	a1,0x2
    1182:	fa058593          	addi	a1,a1,-96 # 1fa0 <mkdir+0x3e>
    1186:	4509                	li	a0,2
    1188:	00000097          	auipc	ra,0x0
    118c:	486080e7          	jalr	1158(ra) # 160e <fprintf>
    1190:	650d                	lui	a0,0x3
    1192:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1196:	00001097          	auipc	ra,0x1
    119a:	d5c080e7          	jalr	-676(ra) # 1ef2 <exit>
    119e:	bd49                	j	1030 <main+0x30>
    11a0:	46b5                	li	a3,13
    11a2:	00002637          	lui	a2,0x2
    11a6:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    11aa:	000025b7          	lui	a1,0x2
    11ae:	ff858593          	addi	a1,a1,-8 # 1ff8 <mkdir+0x96>
    11b2:	4509                	li	a0,2
    11b4:	00000097          	auipc	ra,0x0
    11b8:	45a080e7          	jalr	1114(ra) # 160e <fprintf>
    11bc:	650d                	lui	a0,0x3
    11be:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11c2:	00001097          	auipc	ra,0x1
    11c6:	d30080e7          	jalr	-720(ra) # 1ef2 <exit>
    11ca:	bdbd                	j	1048 <main+0x48>
    11cc:	46b9                	li	a3,14
    11ce:	00002637          	lui	a2,0x2
    11d2:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    11d6:	000025b7          	lui	a1,0x2
    11da:	05858593          	addi	a1,a1,88 # 2058 <mkdir+0xf6>
    11de:	4509                	li	a0,2
    11e0:	00000097          	auipc	ra,0x0
    11e4:	42e080e7          	jalr	1070(ra) # 160e <fprintf>
    11e8:	650d                	lui	a0,0x3
    11ea:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11ee:	00001097          	auipc	ra,0x1
    11f2:	d04080e7          	jalr	-764(ra) # 1ef2 <exit>
    11f6:	b59d                	j	105c <main+0x5c>
    11f8:	46bd                	li	a3,15
    11fa:	00002637          	lui	a2,0x2
    11fe:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    1202:	000025b7          	lui	a1,0x2
    1206:	0c858593          	addi	a1,a1,200 # 20c8 <mkdir+0x166>
    120a:	4509                	li	a0,2
    120c:	00000097          	auipc	ra,0x0
    1210:	402080e7          	jalr	1026(ra) # 160e <fprintf>
    1214:	650d                	lui	a0,0x3
    1216:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    121a:	00001097          	auipc	ra,0x1
    121e:	cd8080e7          	jalr	-808(ra) # 1ef2 <exit>
    1222:	bd81                	j	1072 <main+0x72>
    1224:	46cd                	li	a3,19
    1226:	00002637          	lui	a2,0x2
    122a:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    122e:	000025b7          	lui	a1,0x2
    1232:	11858593          	addi	a1,a1,280 # 2118 <mkdir+0x1b6>
    1236:	4509                	li	a0,2
    1238:	00000097          	auipc	ra,0x0
    123c:	3d6080e7          	jalr	982(ra) # 160e <fprintf>
    1240:	650d                	lui	a0,0x3
    1242:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1246:	00001097          	auipc	ra,0x1
    124a:	cac080e7          	jalr	-852(ra) # 1ef2 <exit>
    124e:	b5a9                	j	1098 <main+0x98>
    1250:	46d1                	li	a3,20
    1252:	00002637          	lui	a2,0x2
    1256:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    125a:	000025b7          	lui	a1,0x2
    125e:	18058593          	addi	a1,a1,384 # 2180 <mkdir+0x21e>
    1262:	4509                	li	a0,2
    1264:	00000097          	auipc	ra,0x0
    1268:	3aa080e7          	jalr	938(ra) # 160e <fprintf>
    126c:	650d                	lui	a0,0x3
    126e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1272:	00001097          	auipc	ra,0x1
    1276:	c80080e7          	jalr	-896(ra) # 1ef2 <exit>
    127a:	bd25                	j	10b2 <main+0xb2>
    127c:	46d5                	li	a3,21
    127e:	00002637          	lui	a2,0x2
    1282:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    1286:	000025b7          	lui	a1,0x2
    128a:	1c858593          	addi	a1,a1,456 # 21c8 <mkdir+0x266>
    128e:	4509                	li	a0,2
    1290:	00000097          	auipc	ra,0x0
    1294:	37e080e7          	jalr	894(ra) # 160e <fprintf>
    1298:	650d                	lui	a0,0x3
    129a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    129e:	00001097          	auipc	ra,0x1
    12a2:	c54080e7          	jalr	-940(ra) # 1ef2 <exit>
    12a6:	b50d                	j	10c8 <main+0xc8>
    12a8:	46e5                	li	a3,25
    12aa:	00002637          	lui	a2,0x2
    12ae:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    12b2:	000025b7          	lui	a1,0x2
    12b6:	21858593          	addi	a1,a1,536 # 2218 <mkdir+0x2b6>
    12ba:	4509                	li	a0,2
    12bc:	00000097          	auipc	ra,0x0
    12c0:	352080e7          	jalr	850(ra) # 160e <fprintf>
    12c4:	650d                	lui	a0,0x3
    12c6:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    12ca:	00001097          	auipc	ra,0x1
    12ce:	c28080e7          	jalr	-984(ra) # 1ef2 <exit>
    12d2:	bd29                	j	10ec <main+0xec>
    12d4:	46e9                	li	a3,26
    12d6:	00002637          	lui	a2,0x2
    12da:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    12de:	000025b7          	lui	a1,0x2
    12e2:	ff858593          	addi	a1,a1,-8 # 1ff8 <mkdir+0x96>
    12e6:	4509                	li	a0,2
    12e8:	00000097          	auipc	ra,0x0
    12ec:	326080e7          	jalr	806(ra) # 160e <fprintf>
    12f0:	650d                	lui	a0,0x3
    12f2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    12f6:	00001097          	auipc	ra,0x1
    12fa:	bfc080e7          	jalr	-1028(ra) # 1ef2 <exit>
    12fe:	b519                	j	1104 <main+0x104>
    1300:	46f1                	li	a3,28
    1302:	00002637          	lui	a2,0x2
    1306:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    130a:	000025b7          	lui	a1,0x2
    130e:	26858593          	addi	a1,a1,616 # 2268 <mkdir+0x306>
    1312:	4509                	li	a0,2
    1314:	00000097          	auipc	ra,0x0
    1318:	2fa080e7          	jalr	762(ra) # 160e <fprintf>
    131c:	650d                	lui	a0,0x3
    131e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1322:	00001097          	auipc	ra,0x1
    1326:	bd0080e7          	jalr	-1072(ra) # 1ef2 <exit>
    132a:	bbfd                	j	1128 <main+0x128>
    132c:	46f9                	li	a3,30
    132e:	00002637          	lui	a2,0x2
    1332:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    1336:	000025b7          	lui	a1,0x2
    133a:	ff858593          	addi	a1,a1,-8 # 1ff8 <mkdir+0x96>
    133e:	4509                	li	a0,2
    1340:	00000097          	auipc	ra,0x0
    1344:	2ce080e7          	jalr	718(ra) # 160e <fprintf>
    1348:	650d                	lui	a0,0x3
    134a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    134e:	00001097          	auipc	ra,0x1
    1352:	ba4080e7          	jalr	-1116(ra) # 1ef2 <exit>
    1356:	bbdd                	j	114c <main+0x14c>
    1358:	46fd                	li	a3,31
    135a:	00002637          	lui	a2,0x2
    135e:	f8060613          	addi	a2,a2,-128 # 1f80 <mkdir+0x1e>
    1362:	000025b7          	lui	a1,0x2
    1366:	0c858593          	addi	a1,a1,200 # 20c8 <mkdir+0x166>
    136a:	4509                	li	a0,2
    136c:	00000097          	auipc	ra,0x0
    1370:	2a2080e7          	jalr	674(ra) # 160e <fprintf>
    1374:	650d                	lui	a0,0x3
    1376:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    137a:	00001097          	auipc	ra,0x1
    137e:	b78080e7          	jalr	-1160(ra) # 1ef2 <exit>
    1382:	b3c5                	j	1162 <main+0x162>

0000000000001384 <putc>:
    1384:	1101                	addi	sp,sp,-32
    1386:	ec06                	sd	ra,24(sp)
    1388:	00b107a3          	sb	a1,15(sp)
    138c:	4605                	li	a2,1
    138e:	00f10593          	addi	a1,sp,15
    1392:	00001097          	auipc	ra,0x1
    1396:	b90080e7          	jalr	-1136(ra) # 1f22 <write>
    139a:	60e2                	ld	ra,24(sp)
    139c:	6105                	addi	sp,sp,32
    139e:	8082                	ret

00000000000013a0 <printint>:
    13a0:	7179                	addi	sp,sp,-48
    13a2:	f406                	sd	ra,40(sp)
    13a4:	f022                	sd	s0,32(sp)
    13a6:	ec26                	sd	s1,24(sp)
    13a8:	e84a                	sd	s2,16(sp)
    13aa:	84aa                	mv	s1,a0
    13ac:	c299                	beqz	a3,13b2 <printint+0x12>
    13ae:	0805c363          	bltz	a1,1434 <printint+0x94>
    13b2:	2581                	sext.w	a1,a1
    13b4:	4881                	li	a7,0
    13b6:	868a                	mv	a3,sp
    13b8:	4701                	li	a4,0
    13ba:	2601                	sext.w	a2,a2
    13bc:	00002537          	lui	a0,0x2
    13c0:	2d850513          	addi	a0,a0,728 # 22d8 <digits>
    13c4:	883a                	mv	a6,a4
    13c6:	2705                	addiw	a4,a4,1
    13c8:	02c5f7bb          	remuw	a5,a1,a2
    13cc:	1782                	slli	a5,a5,0x20
    13ce:	9381                	srli	a5,a5,0x20
    13d0:	97aa                	add	a5,a5,a0
    13d2:	0007c783          	lbu	a5,0(a5)
    13d6:	00f68023          	sb	a5,0(a3)
    13da:	0005879b          	sext.w	a5,a1
    13de:	02c5d5bb          	divuw	a1,a1,a2
    13e2:	0685                	addi	a3,a3,1
    13e4:	fec7f0e3          	bgeu	a5,a2,13c4 <printint+0x24>
    13e8:	00088a63          	beqz	a7,13fc <printint+0x5c>
    13ec:	081c                	addi	a5,sp,16
    13ee:	973e                	add	a4,a4,a5
    13f0:	02d00793          	li	a5,45
    13f4:	fef70823          	sb	a5,-16(a4)
    13f8:	0028071b          	addiw	a4,a6,2
    13fc:	02e05663          	blez	a4,1428 <printint+0x88>
    1400:	00e10433          	add	s0,sp,a4
    1404:	fff10913          	addi	s2,sp,-1
    1408:	993a                	add	s2,s2,a4
    140a:	377d                	addiw	a4,a4,-1
    140c:	1702                	slli	a4,a4,0x20
    140e:	9301                	srli	a4,a4,0x20
    1410:	40e90933          	sub	s2,s2,a4
    1414:	fff44583          	lbu	a1,-1(s0)
    1418:	8526                	mv	a0,s1
    141a:	00000097          	auipc	ra,0x0
    141e:	f6a080e7          	jalr	-150(ra) # 1384 <putc>
    1422:	147d                	addi	s0,s0,-1
    1424:	ff2418e3          	bne	s0,s2,1414 <printint+0x74>
    1428:	70a2                	ld	ra,40(sp)
    142a:	7402                	ld	s0,32(sp)
    142c:	64e2                	ld	s1,24(sp)
    142e:	6942                	ld	s2,16(sp)
    1430:	6145                	addi	sp,sp,48
    1432:	8082                	ret
    1434:	40b005bb          	negw	a1,a1
    1438:	4885                	li	a7,1
    143a:	bfb5                	j	13b6 <printint+0x16>

000000000000143c <vprintf>:
    143c:	7159                	addi	sp,sp,-112
    143e:	f486                	sd	ra,104(sp)
    1440:	f0a2                	sd	s0,96(sp)
    1442:	eca6                	sd	s1,88(sp)
    1444:	e8ca                	sd	s2,80(sp)
    1446:	e4ce                	sd	s3,72(sp)
    1448:	e0d2                	sd	s4,64(sp)
    144a:	fc56                	sd	s5,56(sp)
    144c:	f85a                	sd	s6,48(sp)
    144e:	f45e                	sd	s7,40(sp)
    1450:	f062                	sd	s8,32(sp)
    1452:	ec66                	sd	s9,24(sp)
    1454:	e86a                	sd	s10,16(sp)
    1456:	e46e                	sd	s11,8(sp)
    1458:	0005c483          	lbu	s1,0(a1)
    145c:	18048a63          	beqz	s1,15f0 <vprintf+0x1b4>
    1460:	8a2a                	mv	s4,a0
    1462:	8ab2                	mv	s5,a2
    1464:	00158413          	addi	s0,a1,1
    1468:	4901                	li	s2,0
    146a:	02500993          	li	s3,37
    146e:	06400b93          	li	s7,100
    1472:	06c00c13          	li	s8,108
    1476:	07800c93          	li	s9,120
    147a:	07000d13          	li	s10,112
    147e:	00002db7          	lui	s11,0x2
    1482:	00002b37          	lui	s6,0x2
    1486:	2d8b0b13          	addi	s6,s6,728 # 22d8 <digits>
    148a:	a839                	j	14a8 <vprintf+0x6c>
    148c:	85a6                	mv	a1,s1
    148e:	8552                	mv	a0,s4
    1490:	00000097          	auipc	ra,0x0
    1494:	ef4080e7          	jalr	-268(ra) # 1384 <putc>
    1498:	a019                	j	149e <vprintf+0x62>
    149a:	01390f63          	beq	s2,s3,14b8 <vprintf+0x7c>
    149e:	0405                	addi	s0,s0,1
    14a0:	fff44483          	lbu	s1,-1(s0)
    14a4:	14048663          	beqz	s1,15f0 <vprintf+0x1b4>
    14a8:	0004879b          	sext.w	a5,s1
    14ac:	fe0917e3          	bnez	s2,149a <vprintf+0x5e>
    14b0:	fd379ee3          	bne	a5,s3,148c <vprintf+0x50>
    14b4:	893e                	mv	s2,a5
    14b6:	b7e5                	j	149e <vprintf+0x62>
    14b8:	05778063          	beq	a5,s7,14f8 <vprintf+0xbc>
    14bc:	05878c63          	beq	a5,s8,1514 <vprintf+0xd8>
    14c0:	07978863          	beq	a5,s9,1530 <vprintf+0xf4>
    14c4:	09a78463          	beq	a5,s10,154c <vprintf+0x110>
    14c8:	07300713          	li	a4,115
    14cc:	0ce78263          	beq	a5,a4,1590 <vprintf+0x154>
    14d0:	06300713          	li	a4,99
    14d4:	0ee78763          	beq	a5,a4,15c2 <vprintf+0x186>
    14d8:	11378163          	beq	a5,s3,15da <vprintf+0x19e>
    14dc:	85ce                	mv	a1,s3
    14de:	8552                	mv	a0,s4
    14e0:	00000097          	auipc	ra,0x0
    14e4:	ea4080e7          	jalr	-348(ra) # 1384 <putc>
    14e8:	85a6                	mv	a1,s1
    14ea:	8552                	mv	a0,s4
    14ec:	00000097          	auipc	ra,0x0
    14f0:	e98080e7          	jalr	-360(ra) # 1384 <putc>
    14f4:	4901                	li	s2,0
    14f6:	b765                	j	149e <vprintf+0x62>
    14f8:	008a8493          	addi	s1,s5,8
    14fc:	4685                	li	a3,1
    14fe:	4629                	li	a2,10
    1500:	000aa583          	lw	a1,0(s5)
    1504:	8552                	mv	a0,s4
    1506:	00000097          	auipc	ra,0x0
    150a:	e9a080e7          	jalr	-358(ra) # 13a0 <printint>
    150e:	8aa6                	mv	s5,s1
    1510:	4901                	li	s2,0
    1512:	b771                	j	149e <vprintf+0x62>
    1514:	008a8493          	addi	s1,s5,8
    1518:	4681                	li	a3,0
    151a:	4629                	li	a2,10
    151c:	000aa583          	lw	a1,0(s5)
    1520:	8552                	mv	a0,s4
    1522:	00000097          	auipc	ra,0x0
    1526:	e7e080e7          	jalr	-386(ra) # 13a0 <printint>
    152a:	8aa6                	mv	s5,s1
    152c:	4901                	li	s2,0
    152e:	bf85                	j	149e <vprintf+0x62>
    1530:	008a8493          	addi	s1,s5,8
    1534:	4681                	li	a3,0
    1536:	4641                	li	a2,16
    1538:	000aa583          	lw	a1,0(s5)
    153c:	8552                	mv	a0,s4
    153e:	00000097          	auipc	ra,0x0
    1542:	e62080e7          	jalr	-414(ra) # 13a0 <printint>
    1546:	8aa6                	mv	s5,s1
    1548:	4901                	li	s2,0
    154a:	bf91                	j	149e <vprintf+0x62>
    154c:	008a8913          	addi	s2,s5,8
    1550:	000aba83          	ld	s5,0(s5)
    1554:	03000593          	li	a1,48
    1558:	8552                	mv	a0,s4
    155a:	00000097          	auipc	ra,0x0
    155e:	e2a080e7          	jalr	-470(ra) # 1384 <putc>
    1562:	85e6                	mv	a1,s9
    1564:	8552                	mv	a0,s4
    1566:	00000097          	auipc	ra,0x0
    156a:	e1e080e7          	jalr	-482(ra) # 1384 <putc>
    156e:	44c1                	li	s1,16
    1570:	03cad793          	srli	a5,s5,0x3c
    1574:	97da                	add	a5,a5,s6
    1576:	0007c583          	lbu	a1,0(a5)
    157a:	8552                	mv	a0,s4
    157c:	00000097          	auipc	ra,0x0
    1580:	e08080e7          	jalr	-504(ra) # 1384 <putc>
    1584:	0a92                	slli	s5,s5,0x4
    1586:	34fd                	addiw	s1,s1,-1
    1588:	f4e5                	bnez	s1,1570 <vprintf+0x134>
    158a:	8aca                	mv	s5,s2
    158c:	4901                	li	s2,0
    158e:	bf01                	j	149e <vprintf+0x62>
    1590:	008a8913          	addi	s2,s5,8
    1594:	000ab483          	ld	s1,0(s5)
    1598:	c085                	beqz	s1,15b8 <vprintf+0x17c>
    159a:	0004c583          	lbu	a1,0(s1)
    159e:	c5b1                	beqz	a1,15ea <vprintf+0x1ae>
    15a0:	8552                	mv	a0,s4
    15a2:	00000097          	auipc	ra,0x0
    15a6:	de2080e7          	jalr	-542(ra) # 1384 <putc>
    15aa:	0485                	addi	s1,s1,1
    15ac:	0004c583          	lbu	a1,0(s1)
    15b0:	f9e5                	bnez	a1,15a0 <vprintf+0x164>
    15b2:	8aca                	mv	s5,s2
    15b4:	4901                	li	s2,0
    15b6:	b5e5                	j	149e <vprintf+0x62>
    15b8:	2d0d8493          	addi	s1,s11,720 # 22d0 <mkdir+0x36e>
    15bc:	02800593          	li	a1,40
    15c0:	b7c5                	j	15a0 <vprintf+0x164>
    15c2:	008a8493          	addi	s1,s5,8
    15c6:	000ac583          	lbu	a1,0(s5)
    15ca:	8552                	mv	a0,s4
    15cc:	00000097          	auipc	ra,0x0
    15d0:	db8080e7          	jalr	-584(ra) # 1384 <putc>
    15d4:	8aa6                	mv	s5,s1
    15d6:	4901                	li	s2,0
    15d8:	b5d9                	j	149e <vprintf+0x62>
    15da:	85ce                	mv	a1,s3
    15dc:	8552                	mv	a0,s4
    15de:	00000097          	auipc	ra,0x0
    15e2:	da6080e7          	jalr	-602(ra) # 1384 <putc>
    15e6:	4901                	li	s2,0
    15e8:	bd5d                	j	149e <vprintf+0x62>
    15ea:	8aca                	mv	s5,s2
    15ec:	4901                	li	s2,0
    15ee:	bd45                	j	149e <vprintf+0x62>
    15f0:	70a6                	ld	ra,104(sp)
    15f2:	7406                	ld	s0,96(sp)
    15f4:	64e6                	ld	s1,88(sp)
    15f6:	6946                	ld	s2,80(sp)
    15f8:	69a6                	ld	s3,72(sp)
    15fa:	6a06                	ld	s4,64(sp)
    15fc:	7ae2                	ld	s5,56(sp)
    15fe:	7b42                	ld	s6,48(sp)
    1600:	7ba2                	ld	s7,40(sp)
    1602:	7c02                	ld	s8,32(sp)
    1604:	6ce2                	ld	s9,24(sp)
    1606:	6d42                	ld	s10,16(sp)
    1608:	6da2                	ld	s11,8(sp)
    160a:	6165                	addi	sp,sp,112
    160c:	8082                	ret

000000000000160e <fprintf>:
    160e:	715d                	addi	sp,sp,-80
    1610:	ec06                	sd	ra,24(sp)
    1612:	f032                	sd	a2,32(sp)
    1614:	f436                	sd	a3,40(sp)
    1616:	f83a                	sd	a4,48(sp)
    1618:	fc3e                	sd	a5,56(sp)
    161a:	e0c2                	sd	a6,64(sp)
    161c:	e4c6                	sd	a7,72(sp)
    161e:	1010                	addi	a2,sp,32
    1620:	e432                	sd	a2,8(sp)
    1622:	00000097          	auipc	ra,0x0
    1626:	e1a080e7          	jalr	-486(ra) # 143c <vprintf>
    162a:	60e2                	ld	ra,24(sp)
    162c:	6161                	addi	sp,sp,80
    162e:	8082                	ret

0000000000001630 <printf>:
    1630:	711d                	addi	sp,sp,-96
    1632:	ec06                	sd	ra,24(sp)
    1634:	f42e                	sd	a1,40(sp)
    1636:	f832                	sd	a2,48(sp)
    1638:	fc36                	sd	a3,56(sp)
    163a:	e0ba                	sd	a4,64(sp)
    163c:	e4be                	sd	a5,72(sp)
    163e:	e8c2                	sd	a6,80(sp)
    1640:	ecc6                	sd	a7,88(sp)
    1642:	1030                	addi	a2,sp,40
    1644:	e432                	sd	a2,8(sp)
    1646:	85aa                	mv	a1,a0
    1648:	4505                	li	a0,1
    164a:	00000097          	auipc	ra,0x0
    164e:	df2080e7          	jalr	-526(ra) # 143c <vprintf>
    1652:	60e2                	ld	ra,24(sp)
    1654:	6125                	addi	sp,sp,96
    1656:	8082                	ret

0000000000001658 <cksum>:
    1658:	cdb1                	beqz	a1,16b4 <cksum+0x5c>
    165a:	00b50833          	add	a6,a0,a1
    165e:	4781                	li	a5,0
    1660:	00002637          	lui	a2,0x2
    1664:	2f060613          	addi	a2,a2,752 # 22f0 <crctab>
    1668:	0505                	addi	a0,a0,1
    166a:	0087969b          	slliw	a3,a5,0x8
    166e:	0187d71b          	srliw	a4,a5,0x18
    1672:	fff54783          	lbu	a5,-1(a0)
    1676:	8f3d                	xor	a4,a4,a5
    1678:	1702                	slli	a4,a4,0x20
    167a:	9301                	srli	a4,a4,0x20
    167c:	070a                	slli	a4,a4,0x2
    167e:	9732                	add	a4,a4,a2
    1680:	431c                	lw	a5,0(a4)
    1682:	8fb5                	xor	a5,a5,a3
    1684:	2781                	sext.w	a5,a5
    1686:	fea811e3          	bne	a6,a0,1668 <cksum+0x10>
    168a:	00002637          	lui	a2,0x2
    168e:	2f060613          	addi	a2,a2,752 # 22f0 <crctab>
    1692:	0ff5f693          	andi	a3,a1,255
    1696:	81a1                	srli	a1,a1,0x8
    1698:	0087951b          	slliw	a0,a5,0x8
    169c:	0187d71b          	srliw	a4,a5,0x18
    16a0:	8f35                	xor	a4,a4,a3
    16a2:	070a                	slli	a4,a4,0x2
    16a4:	9732                	add	a4,a4,a2
    16a6:	431c                	lw	a5,0(a4)
    16a8:	8fa9                	xor	a5,a5,a0
    16aa:	2781                	sext.w	a5,a5
    16ac:	f1fd                	bnez	a1,1692 <cksum+0x3a>
    16ae:	fff7c513          	not	a0,a5
    16b2:	8082                	ret
    16b4:	4781                	li	a5,0
    16b6:	bfe5                	j	16ae <cksum+0x56>

00000000000016b8 <swap_bytes>:
    16b8:	ce19                	beqz	a2,16d6 <swap_bytes+0x1e>
    16ba:	87aa                	mv	a5,a0
    16bc:	962a                	add	a2,a2,a0
    16be:	0007c703          	lbu	a4,0(a5)
    16c2:	0005c683          	lbu	a3,0(a1)
    16c6:	00d78023          	sb	a3,0(a5)
    16ca:	00e58023          	sb	a4,0(a1)
    16ce:	0785                	addi	a5,a5,1
    16d0:	0585                	addi	a1,a1,1
    16d2:	fec796e3          	bne	a5,a2,16be <swap_bytes+0x6>
    16d6:	8082                	ret

00000000000016d8 <random_init>:
    16d8:	7139                	addi	sp,sp,-64
    16da:	fc06                	sd	ra,56(sp)
    16dc:	f822                	sd	s0,48(sp)
    16de:	f426                	sd	s1,40(sp)
    16e0:	f04a                	sd	s2,32(sp)
    16e2:	ec4e                	sd	s3,24(sp)
    16e4:	e852                	sd	s4,16(sp)
    16e6:	c62a                	sw	a0,12(sp)
    16e8:	000037b7          	lui	a5,0x3
    16ec:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    16f0:	eca5                	bnez	s1,1768 <random_init+0x90>
    16f2:	00003737          	lui	a4,0x3
    16f6:	10070913          	addi	s2,a4,256 # 3100 <s>
    16fa:	10070713          	addi	a4,a4,256
    16fe:	87a6                	mv	a5,s1
    1700:	10000693          	li	a3,256
    1704:	00f70023          	sb	a5,0(a4)
    1708:	2785                	addiw	a5,a5,1
    170a:	0705                	addi	a4,a4,1
    170c:	fed79ce3          	bne	a5,a3,1704 <random_init+0x2c>
    1710:	4401                	li	s0,0
    1712:	000039b7          	lui	s3,0x3
    1716:	10098993          	addi	s3,s3,256 # 3100 <s>
    171a:	10000a13          	li	s4,256
    171e:	0034f793          	andi	a5,s1,3
    1722:	0818                	addi	a4,sp,16
    1724:	97ba                	add	a5,a5,a4
    1726:	ffc7c783          	lbu	a5,-4(a5)
    172a:	00094703          	lbu	a4,0(s2)
    172e:	9fb9                	addw	a5,a5,a4
    1730:	9c3d                	addw	s0,s0,a5
    1732:	0ff47413          	andi	s0,s0,255
    1736:	4605                	li	a2,1
    1738:	008985b3          	add	a1,s3,s0
    173c:	854a                	mv	a0,s2
    173e:	00000097          	auipc	ra,0x0
    1742:	f7a080e7          	jalr	-134(ra) # 16b8 <swap_bytes>
    1746:	2485                	addiw	s1,s1,1
    1748:	0905                	addi	s2,s2,1
    174a:	fd449ae3          	bne	s1,s4,171e <random_init+0x46>
    174e:	000037b7          	lui	a5,0x3
    1752:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1756:	000037b7          	lui	a5,0x3
    175a:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    175e:	000037b7          	lui	a5,0x3
    1762:	4705                	li	a4,1
    1764:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1768:	70e2                	ld	ra,56(sp)
    176a:	7442                	ld	s0,48(sp)
    176c:	74a2                	ld	s1,40(sp)
    176e:	7902                	ld	s2,32(sp)
    1770:	69e2                	ld	s3,24(sp)
    1772:	6a42                	ld	s4,16(sp)
    1774:	6121                	addi	sp,sp,64
    1776:	8082                	ret

0000000000001778 <random_bytes>:
    1778:	7139                	addi	sp,sp,-64
    177a:	fc06                	sd	ra,56(sp)
    177c:	f822                	sd	s0,48(sp)
    177e:	f426                	sd	s1,40(sp)
    1780:	f04a                	sd	s2,32(sp)
    1782:	ec4e                	sd	s3,24(sp)
    1784:	e852                	sd	s4,16(sp)
    1786:	e456                	sd	s5,8(sp)
    1788:	e05a                	sd	s6,0(sp)
    178a:	892a                	mv	s2,a0
    178c:	8aae                	mv	s5,a1
    178e:	000037b7          	lui	a5,0x3
    1792:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1796:	c3c1                	beqz	a5,1816 <random_bytes+0x9e>
    1798:	060a8563          	beqz	s5,1802 <random_bytes+0x8a>
    179c:	9aca                	add	s5,s5,s2
    179e:	00003a37          	lui	s4,0x3
    17a2:	000034b7          	lui	s1,0x3
    17a6:	10048493          	addi	s1,s1,256 # 3100 <s>
    17aa:	000039b7          	lui	s3,0x3
    17ae:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    17b2:	2505                	addiw	a0,a0,1
    17b4:	0ff57513          	andi	a0,a0,255
    17b8:	0eaa0aa3          	sb	a0,245(s4)
    17bc:	00a48b33          	add	s6,s1,a0
    17c0:	000b4403          	lbu	s0,0(s6)
    17c4:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    17c8:	9c3d                	addw	s0,s0,a5
    17ca:	0ff47413          	andi	s0,s0,255
    17ce:	0e898a23          	sb	s0,244(s3)
    17d2:	4605                	li	a2,1
    17d4:	008485b3          	add	a1,s1,s0
    17d8:	855a                	mv	a0,s6
    17da:	00000097          	auipc	ra,0x0
    17de:	ede080e7          	jalr	-290(ra) # 16b8 <swap_bytes>
    17e2:	9426                	add	s0,s0,s1
    17e4:	000b4783          	lbu	a5,0(s6)
    17e8:	00044703          	lbu	a4,0(s0)
    17ec:	9fb9                	addw	a5,a5,a4
    17ee:	0ff7f793          	andi	a5,a5,255
    17f2:	97a6                	add	a5,a5,s1
    17f4:	0007c783          	lbu	a5,0(a5)
    17f8:	00f90023          	sb	a5,0(s2)
    17fc:	0905                	addi	s2,s2,1
    17fe:	fb2a98e3          	bne	s5,s2,17ae <random_bytes+0x36>
    1802:	70e2                	ld	ra,56(sp)
    1804:	7442                	ld	s0,48(sp)
    1806:	74a2                	ld	s1,40(sp)
    1808:	7902                	ld	s2,32(sp)
    180a:	69e2                	ld	s3,24(sp)
    180c:	6a42                	ld	s4,16(sp)
    180e:	6aa2                	ld	s5,8(sp)
    1810:	6b02                	ld	s6,0(sp)
    1812:	6121                	addi	sp,sp,64
    1814:	8082                	ret
    1816:	4501                	li	a0,0
    1818:	00000097          	auipc	ra,0x0
    181c:	ec0080e7          	jalr	-320(ra) # 16d8 <random_init>
    1820:	bfa5                	j	1798 <random_bytes+0x20>

0000000000001822 <random_ulong>:
    1822:	1101                	addi	sp,sp,-32
    1824:	ec06                	sd	ra,24(sp)
    1826:	45a1                	li	a1,8
    1828:	0028                	addi	a0,sp,8
    182a:	00000097          	auipc	ra,0x0
    182e:	f4e080e7          	jalr	-178(ra) # 1778 <random_bytes>
    1832:	6522                	ld	a0,8(sp)
    1834:	60e2                	ld	ra,24(sp)
    1836:	6105                	addi	sp,sp,32
    1838:	8082                	ret

000000000000183a <shuffle>:
    183a:	c9b9                	beqz	a1,1890 <shuffle+0x56>
    183c:	7179                	addi	sp,sp,-48
    183e:	f406                	sd	ra,40(sp)
    1840:	f022                	sd	s0,32(sp)
    1842:	ec26                	sd	s1,24(sp)
    1844:	e84a                	sd	s2,16(sp)
    1846:	e44e                	sd	s3,8(sp)
    1848:	e052                	sd	s4,0(sp)
    184a:	8a2a                	mv	s4,a0
    184c:	89ae                	mv	s3,a1
    184e:	84b2                	mv	s1,a2
    1850:	892a                	mv	s2,a0
    1852:	4401                	li	s0,0
    1854:	00000097          	auipc	ra,0x0
    1858:	fce080e7          	jalr	-50(ra) # 1822 <random_ulong>
    185c:	408985b3          	sub	a1,s3,s0
    1860:	02b575b3          	remu	a1,a0,a1
    1864:	95a2                	add	a1,a1,s0
    1866:	029585b3          	mul	a1,a1,s1
    186a:	8626                	mv	a2,s1
    186c:	95d2                	add	a1,a1,s4
    186e:	854a                	mv	a0,s2
    1870:	00000097          	auipc	ra,0x0
    1874:	e48080e7          	jalr	-440(ra) # 16b8 <swap_bytes>
    1878:	0405                	addi	s0,s0,1
    187a:	9926                	add	s2,s2,s1
    187c:	fc899ce3          	bne	s3,s0,1854 <shuffle+0x1a>
    1880:	70a2                	ld	ra,40(sp)
    1882:	7402                	ld	s0,32(sp)
    1884:	64e2                	ld	s1,24(sp)
    1886:	6942                	ld	s2,16(sp)
    1888:	69a2                	ld	s3,8(sp)
    188a:	6a02                	ld	s4,0(sp)
    188c:	6145                	addi	sp,sp,48
    188e:	8082                	ret
    1890:	8082                	ret

0000000000001892 <arc4_init>:
    1892:	100500a3          	sb	zero,257(a0)
    1896:	10050023          	sb	zero,256(a0)
    189a:	4781                	li	a5,0
    189c:	10000693          	li	a3,256
    18a0:	00f50733          	add	a4,a0,a5
    18a4:	00f70023          	sb	a5,0(a4)
    18a8:	0785                	addi	a5,a5,1
    18aa:	fed79be3          	bne	a5,a3,18a0 <arc4_init+0xe>
    18ae:	86aa                	mv	a3,a0
    18b0:	10050e13          	addi	t3,a0,256
    18b4:	4701                	li	a4,0
    18b6:	4781                	li	a5,0
    18b8:	0006c883          	lbu	a7,0(a3)
    18bc:	00f58833          	add	a6,a1,a5
    18c0:	00084803          	lbu	a6,0(a6)
    18c4:	00e8873b          	addw	a4,a7,a4
    18c8:	00e8073b          	addw	a4,a6,a4
    18cc:	0ff77713          	andi	a4,a4,255
    18d0:	00e50833          	add	a6,a0,a4
    18d4:	00084303          	lbu	t1,0(a6)
    18d8:	00668023          	sb	t1,0(a3)
    18dc:	01180023          	sb	a7,0(a6)
    18e0:	0785                	addi	a5,a5,1
    18e2:	00c7b833          	sltu	a6,a5,a2
    18e6:	41000833          	neg	a6,a6
    18ea:	0107f7b3          	and	a5,a5,a6
    18ee:	0685                	addi	a3,a3,1
    18f0:	fdc694e3          	bne	a3,t3,18b8 <arc4_init+0x26>
    18f4:	8082                	ret

00000000000018f6 <arc4_crypt>:
    18f6:	10054e03          	lbu	t3,256(a0)
    18fa:	10154803          	lbu	a6,257(a0)
    18fe:	fff60e93          	addi	t4,a2,-1
    1902:	c225                	beqz	a2,1962 <arc4_crypt+0x6c>
    1904:	00c588b3          	add	a7,a1,a2
    1908:	86ae                	mv	a3,a1
    190a:	001e031b          	addiw	t1,t3,1
    190e:	40b3033b          	subw	t1,t1,a1
    1912:	00d3073b          	addw	a4,t1,a3
    1916:	0ff77713          	andi	a4,a4,255
    191a:	972a                	add	a4,a4,a0
    191c:	00074603          	lbu	a2,0(a4)
    1920:	0106083b          	addw	a6,a2,a6
    1924:	0ff87813          	andi	a6,a6,255
    1928:	010507b3          	add	a5,a0,a6
    192c:	0007c583          	lbu	a1,0(a5)
    1930:	00b70023          	sb	a1,0(a4)
    1934:	00c78023          	sb	a2,0(a5)
    1938:	0685                	addi	a3,a3,1
    193a:	00074783          	lbu	a5,0(a4)
    193e:	9fb1                	addw	a5,a5,a2
    1940:	0ff7f793          	andi	a5,a5,255
    1944:	97aa                	add	a5,a5,a0
    1946:	0007c783          	lbu	a5,0(a5)
    194a:	fff6c703          	lbu	a4,-1(a3)
    194e:	8fb9                	xor	a5,a5,a4
    1950:	fef68fa3          	sb	a5,-1(a3)
    1954:	fb169fe3          	bne	a3,a7,1912 <arc4_crypt+0x1c>
    1958:	2e85                	addiw	t4,t4,1
    195a:	01ce8e3b          	addw	t3,t4,t3
    195e:	0ffe7e13          	andi	t3,t3,255
    1962:	11c50023          	sb	t3,256(a0)
    1966:	110500a3          	sb	a6,257(a0)
    196a:	8082                	ret

000000000000196c <_main>:
    196c:	1141                	addi	sp,sp,-16
    196e:	e406                	sd	ra,8(sp)
    1970:	fffff097          	auipc	ra,0xfffff
    1974:	690080e7          	jalr	1680(ra) # 1000 <main>
    1978:	4501                	li	a0,0
    197a:	00000097          	auipc	ra,0x0
    197e:	578080e7          	jalr	1400(ra) # 1ef2 <exit>
    1982:	60a2                	ld	ra,8(sp)
    1984:	0141                	addi	sp,sp,16
    1986:	8082                	ret

0000000000001988 <strcmp>:
    1988:	00054783          	lbu	a5,0(a0)
    198c:	cb91                	beqz	a5,19a0 <strcmp+0x18>
    198e:	0005c703          	lbu	a4,0(a1)
    1992:	00f71763          	bne	a4,a5,19a0 <strcmp+0x18>
    1996:	0505                	addi	a0,a0,1
    1998:	0585                	addi	a1,a1,1
    199a:	00054783          	lbu	a5,0(a0)
    199e:	fbe5                	bnez	a5,198e <strcmp+0x6>
    19a0:	0005c503          	lbu	a0,0(a1)
    19a4:	40a7853b          	subw	a0,a5,a0
    19a8:	8082                	ret

00000000000019aa <strcpy>:
    19aa:	87aa                	mv	a5,a0
    19ac:	0585                	addi	a1,a1,1
    19ae:	0785                	addi	a5,a5,1
    19b0:	fff5c703          	lbu	a4,-1(a1)
    19b4:	fee78fa3          	sb	a4,-1(a5)
    19b8:	fb75                	bnez	a4,19ac <strcpy+0x2>
    19ba:	8082                	ret

00000000000019bc <strlen>:
    19bc:	00054783          	lbu	a5,0(a0)
    19c0:	cf81                	beqz	a5,19d8 <strlen+0x1c>
    19c2:	0505                	addi	a0,a0,1
    19c4:	87aa                	mv	a5,a0
    19c6:	4685                	li	a3,1
    19c8:	9e89                	subw	a3,a3,a0
    19ca:	00f6853b          	addw	a0,a3,a5
    19ce:	0785                	addi	a5,a5,1
    19d0:	fff7c703          	lbu	a4,-1(a5)
    19d4:	fb7d                	bnez	a4,19ca <strlen+0xe>
    19d6:	8082                	ret
    19d8:	4501                	li	a0,0
    19da:	8082                	ret

00000000000019dc <memset>:
    19dc:	ca19                	beqz	a2,19f2 <memset+0x16>
    19de:	87aa                	mv	a5,a0
    19e0:	1602                	slli	a2,a2,0x20
    19e2:	9201                	srli	a2,a2,0x20
    19e4:	00a60733          	add	a4,a2,a0
    19e8:	00b78023          	sb	a1,0(a5)
    19ec:	0785                	addi	a5,a5,1
    19ee:	fee79de3          	bne	a5,a4,19e8 <memset+0xc>
    19f2:	8082                	ret

00000000000019f4 <memcmp>:
    19f4:	1101                	addi	sp,sp,-32
    19f6:	ec06                	sd	ra,24(sp)
    19f8:	e822                	sd	s0,16(sp)
    19fa:	e426                	sd	s1,8(sp)
    19fc:	e04a                	sd	s2,0(sp)
    19fe:	892a                	mv	s2,a0
    1a00:	842e                	mv	s0,a1
    1a02:	84b2                	mv	s1,a2
    1a04:	c915                	beqz	a0,1a38 <memcmp+0x44>
    1a06:	c5ad                	beqz	a1,1a70 <memcmp+0x7c>
    1a08:	fff60713          	addi	a4,a2,-1
    1a0c:	c645                	beqz	a2,1ab4 <memcmp+0xc0>
    1a0e:	87ca                	mv	a5,s2
    1a10:	00190613          	addi	a2,s2,1
    1a14:	963a                	add	a2,a2,a4
    1a16:	0007c683          	lbu	a3,0(a5)
    1a1a:	00044703          	lbu	a4,0(s0)
    1a1e:	08e69463          	bne	a3,a4,1aa6 <memcmp+0xb2>
    1a22:	0785                	addi	a5,a5,1
    1a24:	0405                	addi	s0,s0,1
    1a26:	fec798e3          	bne	a5,a2,1a16 <memcmp+0x22>
    1a2a:	4501                	li	a0,0
    1a2c:	60e2                	ld	ra,24(sp)
    1a2e:	6442                	ld	s0,16(sp)
    1a30:	64a2                	ld	s1,8(sp)
    1a32:	6902                	ld	s2,0(sp)
    1a34:	6105                	addi	sp,sp,32
    1a36:	8082                	ret
    1a38:	4501                	li	a0,0
    1a3a:	da6d                	beqz	a2,1a2c <memcmp+0x38>
    1a3c:	03200693          	li	a3,50
    1a40:	00002637          	lui	a2,0x2
    1a44:	6f060613          	addi	a2,a2,1776 # 26f0 <crctab+0x400>
    1a48:	000025b7          	lui	a1,0x2
    1a4c:	70058593          	addi	a1,a1,1792 # 2700 <crctab+0x410>
    1a50:	4509                	li	a0,2
    1a52:	00000097          	auipc	ra,0x0
    1a56:	bbc080e7          	jalr	-1092(ra) # 160e <fprintf>
    1a5a:	650d                	lui	a0,0x3
    1a5c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a60:	00000097          	auipc	ra,0x0
    1a64:	492080e7          	jalr	1170(ra) # 1ef2 <exit>
    1a68:	fff48713          	addi	a4,s1,-1
    1a6c:	f04d                	bnez	s0,1a0e <memcmp+0x1a>
    1a6e:	a011                	j	1a72 <memcmp+0x7e>
    1a70:	c221                	beqz	a2,1ab0 <memcmp+0xbc>
    1a72:	03300693          	li	a3,51
    1a76:	00002637          	lui	a2,0x2
    1a7a:	6f060613          	addi	a2,a2,1776 # 26f0 <crctab+0x400>
    1a7e:	000025b7          	lui	a1,0x2
    1a82:	74858593          	addi	a1,a1,1864 # 2748 <crctab+0x458>
    1a86:	4509                	li	a0,2
    1a88:	00000097          	auipc	ra,0x0
    1a8c:	b86080e7          	jalr	-1146(ra) # 160e <fprintf>
    1a90:	650d                	lui	a0,0x3
    1a92:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a96:	00000097          	auipc	ra,0x0
    1a9a:	45c080e7          	jalr	1116(ra) # 1ef2 <exit>
    1a9e:	fff48713          	addi	a4,s1,-1
    1aa2:	4401                	li	s0,0
    1aa4:	b7ad                	j	1a0e <memcmp+0x1a>
    1aa6:	4505                	li	a0,1
    1aa8:	f8d762e3          	bltu	a4,a3,1a2c <memcmp+0x38>
    1aac:	557d                	li	a0,-1
    1aae:	bfbd                	j	1a2c <memcmp+0x38>
    1ab0:	4501                	li	a0,0
    1ab2:	bfad                	j	1a2c <memcmp+0x38>
    1ab4:	4501                	li	a0,0
    1ab6:	bf9d                	j	1a2c <memcmp+0x38>

0000000000001ab8 <memcpy>:
    1ab8:	1101                	addi	sp,sp,-32
    1aba:	ec06                	sd	ra,24(sp)
    1abc:	e822                	sd	s0,16(sp)
    1abe:	e426                	sd	s1,8(sp)
    1ac0:	e04a                	sd	s2,0(sp)
    1ac2:	84aa                	mv	s1,a0
    1ac4:	842e                	mv	s0,a1
    1ac6:	8932                	mv	s2,a2
    1ac8:	c51d                	beqz	a0,1af6 <memcpy+0x3e>
    1aca:	c1ad                	beqz	a1,1b2c <memcpy+0x74>
    1acc:	fff60693          	addi	a3,a2,-1
    1ad0:	ce01                	beqz	a2,1ae8 <memcpy+0x30>
    1ad2:	0685                	addi	a3,a3,1
    1ad4:	96a6                	add	a3,a3,s1
    1ad6:	87a6                	mv	a5,s1
    1ad8:	0405                	addi	s0,s0,1
    1ada:	0785                	addi	a5,a5,1
    1adc:	fff44703          	lbu	a4,-1(s0)
    1ae0:	fee78fa3          	sb	a4,-1(a5)
    1ae4:	fed79ae3          	bne	a5,a3,1ad8 <memcpy+0x20>
    1ae8:	8526                	mv	a0,s1
    1aea:	60e2                	ld	ra,24(sp)
    1aec:	6442                	ld	s0,16(sp)
    1aee:	64a2                	ld	s1,8(sp)
    1af0:	6902                	ld	s2,0(sp)
    1af2:	6105                	addi	sp,sp,32
    1af4:	8082                	ret
    1af6:	da6d                	beqz	a2,1ae8 <memcpy+0x30>
    1af8:	04000693          	li	a3,64
    1afc:	00002637          	lui	a2,0x2
    1b00:	6f060613          	addi	a2,a2,1776 # 26f0 <crctab+0x400>
    1b04:	000025b7          	lui	a1,0x2
    1b08:	79058593          	addi	a1,a1,1936 # 2790 <crctab+0x4a0>
    1b0c:	4509                	li	a0,2
    1b0e:	00000097          	auipc	ra,0x0
    1b12:	b00080e7          	jalr	-1280(ra) # 160e <fprintf>
    1b16:	650d                	lui	a0,0x3
    1b18:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b1c:	00000097          	auipc	ra,0x0
    1b20:	3d6080e7          	jalr	982(ra) # 1ef2 <exit>
    1b24:	fff90693          	addi	a3,s2,-1
    1b28:	f44d                	bnez	s0,1ad2 <memcpy+0x1a>
    1b2a:	a011                	j	1b2e <memcpy+0x76>
    1b2c:	de55                	beqz	a2,1ae8 <memcpy+0x30>
    1b2e:	04100693          	li	a3,65
    1b32:	00002637          	lui	a2,0x2
    1b36:	6f060613          	addi	a2,a2,1776 # 26f0 <crctab+0x400>
    1b3a:	000025b7          	lui	a1,0x2
    1b3e:	7d858593          	addi	a1,a1,2008 # 27d8 <crctab+0x4e8>
    1b42:	4509                	li	a0,2
    1b44:	00000097          	auipc	ra,0x0
    1b48:	aca080e7          	jalr	-1334(ra) # 160e <fprintf>
    1b4c:	650d                	lui	a0,0x3
    1b4e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b52:	00000097          	auipc	ra,0x0
    1b56:	3a0080e7          	jalr	928(ra) # 1ef2 <exit>
    1b5a:	fff90693          	addi	a3,s2,-1
    1b5e:	4401                	li	s0,0
    1b60:	bf8d                	j	1ad2 <memcpy+0x1a>

0000000000001b62 <itoa>:
    1b62:	1101                	addi	sp,sp,-32
    1b64:	ec06                	sd	ra,24(sp)
    1b66:	e822                	sd	s0,16(sp)
    1b68:	e426                	sd	s1,8(sp)
    1b6a:	842a                	mv	s0,a0
    1b6c:	41f5d71b          	sraiw	a4,a1,0x1f
    1b70:	00e5c7b3          	xor	a5,a1,a4
    1b74:	9f99                	subw	a5,a5,a4
    1b76:	84aa                	mv	s1,a0
    1b78:	862a                	mv	a2,a0
    1b7a:	4681                	li	a3,0
    1b7c:	4529                	li	a0,10
    1b7e:	4825                	li	a6,9
    1b80:	88b6                	mv	a7,a3
    1b82:	2685                	addiw	a3,a3,1
    1b84:	02a7e73b          	remw	a4,a5,a0
    1b88:	0307071b          	addiw	a4,a4,48
    1b8c:	00e60023          	sb	a4,0(a2)
    1b90:	873e                	mv	a4,a5
    1b92:	02a7c7bb          	divw	a5,a5,a0
    1b96:	0605                	addi	a2,a2,1
    1b98:	fee844e3          	blt	a6,a4,1b80 <itoa+0x1e>
    1b9c:	0405c863          	bltz	a1,1bec <itoa+0x8a>
    1ba0:	96a2                	add	a3,a3,s0
    1ba2:	00068023          	sb	zero,0(a3)
    1ba6:	8522                	mv	a0,s0
    1ba8:	00000097          	auipc	ra,0x0
    1bac:	e14080e7          	jalr	-492(ra) # 19bc <strlen>
    1bb0:	fff5071b          	addiw	a4,a0,-1
    1bb4:	02e05763          	blez	a4,1be2 <itoa+0x80>
    1bb8:	9722                	add	a4,a4,s0
    1bba:	4681                	li	a3,0
    1bbc:	0004c783          	lbu	a5,0(s1)
    1bc0:	00074603          	lbu	a2,0(a4)
    1bc4:	00c48023          	sb	a2,0(s1)
    1bc8:	00f70023          	sb	a5,0(a4)
    1bcc:	0016879b          	addiw	a5,a3,1
    1bd0:	0007869b          	sext.w	a3,a5
    1bd4:	0485                	addi	s1,s1,1
    1bd6:	177d                	addi	a4,a4,-1
    1bd8:	fff7c793          	not	a5,a5
    1bdc:	9fa9                	addw	a5,a5,a0
    1bde:	fcf6cfe3          	blt	a3,a5,1bbc <itoa+0x5a>
    1be2:	60e2                	ld	ra,24(sp)
    1be4:	6442                	ld	s0,16(sp)
    1be6:	64a2                	ld	s1,8(sp)
    1be8:	6105                	addi	sp,sp,32
    1bea:	8082                	ret
    1bec:	96a2                	add	a3,a3,s0
    1bee:	02d00793          	li	a5,45
    1bf2:	00f68023          	sb	a5,0(a3)
    1bf6:	0028869b          	addiw	a3,a7,2
    1bfa:	b75d                	j	1ba0 <itoa+0x3e>

0000000000001bfc <atoi>:
    1bfc:	00054783          	lbu	a5,0(a0)
    1c00:	02000713          	li	a4,32
    1c04:	00e79763          	bne	a5,a4,1c12 <atoi+0x16>
    1c08:	0505                	addi	a0,a0,1
    1c0a:	00054783          	lbu	a5,0(a0)
    1c0e:	fee78de3          	beq	a5,a4,1c08 <atoi+0xc>
    1c12:	02b00713          	li	a4,43
    1c16:	04e78663          	beq	a5,a4,1c62 <atoi+0x66>
    1c1a:	02d00713          	li	a4,45
    1c1e:	4805                	li	a6,1
    1c20:	04e78463          	beq	a5,a4,1c68 <atoi+0x6c>
    1c24:	00054683          	lbu	a3,0(a0)
    1c28:	fd06879b          	addiw	a5,a3,-48
    1c2c:	0ff7f793          	andi	a5,a5,255
    1c30:	4725                	li	a4,9
    1c32:	02f76e63          	bltu	a4,a5,1c6e <atoi+0x72>
    1c36:	4601                	li	a2,0
    1c38:	45a5                	li	a1,9
    1c3a:	0505                	addi	a0,a0,1
    1c3c:	0026179b          	slliw	a5,a2,0x2
    1c40:	9fb1                	addw	a5,a5,a2
    1c42:	0017979b          	slliw	a5,a5,0x1
    1c46:	9fb5                	addw	a5,a5,a3
    1c48:	fd07861b          	addiw	a2,a5,-48
    1c4c:	00054683          	lbu	a3,0(a0)
    1c50:	fd06871b          	addiw	a4,a3,-48
    1c54:	0ff77713          	andi	a4,a4,255
    1c58:	fee5f1e3          	bgeu	a1,a4,1c3a <atoi+0x3e>
    1c5c:	02c8053b          	mulw	a0,a6,a2
    1c60:	8082                	ret
    1c62:	0505                	addi	a0,a0,1
    1c64:	4805                	li	a6,1
    1c66:	bf7d                	j	1c24 <atoi+0x28>
    1c68:	0505                	addi	a0,a0,1
    1c6a:	587d                	li	a6,-1
    1c6c:	bf65                	j	1c24 <atoi+0x28>
    1c6e:	4601                	li	a2,0
    1c70:	b7f5                	j	1c5c <atoi+0x60>

0000000000001c72 <check_file_handle>:
    1c72:	d8010113          	addi	sp,sp,-640
    1c76:	26113c23          	sd	ra,632(sp)
    1c7a:	26813823          	sd	s0,624(sp)
    1c7e:	26913423          	sd	s1,616(sp)
    1c82:	27213023          	sd	s2,608(sp)
    1c86:	25313c23          	sd	s3,600(sp)
    1c8a:	25413823          	sd	s4,592(sp)
    1c8e:	25513423          	sd	s5,584(sp)
    1c92:	25613023          	sd	s6,576(sp)
    1c96:	23713c23          	sd	s7,568(sp)
    1c9a:	23813823          	sd	s8,560(sp)
    1c9e:	23913423          	sd	s9,552(sp)
    1ca2:	23a13023          	sd	s10,544(sp)
    1ca6:	21b13c23          	sd	s11,536(sp)
    1caa:	8baa                	mv	s7,a0
    1cac:	8a2e                	mv	s4,a1
    1cae:	8c32                	mv	s8,a2
    1cb0:	89b6                	mv	s3,a3
    1cb2:	040c                	addi	a1,sp,512
    1cb4:	00000097          	auipc	ra,0x0
    1cb8:	28e080e7          	jalr	654(ra) # 1f42 <fstat>
    1cbc:	20813603          	ld	a2,520(sp)
    1cc0:	03361163          	bne	a2,s3,1ce2 <check_file_handle+0x70>
    1cc4:	06098763          	beqz	s3,1d32 <check_file_handle+0xc0>
    1cc8:	4901                	li	s2,0
    1cca:	20000a93          	li	s5,512
    1cce:	00002cb7          	lui	s9,0x2
    1cd2:	00003db7          	lui	s11,0x3
    1cd6:	6b0d                	lui	s6,0x3
    1cd8:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1cdc:	00003d37          	lui	s10,0x3
    1ce0:	aa39                	j	1dfe <check_file_handle+0x18c>
    1ce2:	86ce                	mv	a3,s3
    1ce4:	85d2                	mv	a1,s4
    1ce6:	00003537          	lui	a0,0x3
    1cea:	82050513          	addi	a0,a0,-2016 # 2820 <crctab+0x530>
    1cee:	00000097          	auipc	ra,0x0
    1cf2:	942080e7          	jalr	-1726(ra) # 1630 <printf>
    1cf6:	fc0999e3          	bnez	s3,1cc8 <check_file_handle+0x56>
    1cfa:	20813683          	ld	a3,520(sp)
    1cfe:	03368a63          	beq	a3,s3,1d32 <check_file_handle+0xc0>
    1d02:	0a600813          	li	a6,166
    1d06:	000027b7          	lui	a5,0x2
    1d0a:	6f078793          	addi	a5,a5,1776 # 26f0 <crctab+0x400>
    1d0e:	874e                	mv	a4,s3
    1d10:	8652                	mv	a2,s4
    1d12:	000035b7          	lui	a1,0x3
    1d16:	8f058593          	addi	a1,a1,-1808 # 28f0 <crctab+0x600>
    1d1a:	4509                	li	a0,2
    1d1c:	00000097          	auipc	ra,0x0
    1d20:	8f2080e7          	jalr	-1806(ra) # 160e <fprintf>
    1d24:	650d                	lui	a0,0x3
    1d26:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1d2a:	00000097          	auipc	ra,0x0
    1d2e:	1c8080e7          	jalr	456(ra) # 1ef2 <exit>
    1d32:	85d2                	mv	a1,s4
    1d34:	00003537          	lui	a0,0x3
    1d38:	93850513          	addi	a0,a0,-1736 # 2938 <crctab+0x648>
    1d3c:	00000097          	auipc	ra,0x0
    1d40:	8f4080e7          	jalr	-1804(ra) # 1630 <printf>
    1d44:	27813083          	ld	ra,632(sp)
    1d48:	27013403          	ld	s0,624(sp)
    1d4c:	26813483          	ld	s1,616(sp)
    1d50:	26013903          	ld	s2,608(sp)
    1d54:	25813983          	ld	s3,600(sp)
    1d58:	25013a03          	ld	s4,592(sp)
    1d5c:	24813a83          	ld	s5,584(sp)
    1d60:	24013b03          	ld	s6,576(sp)
    1d64:	23813b83          	ld	s7,568(sp)
    1d68:	23013c03          	ld	s8,560(sp)
    1d6c:	22813c83          	ld	s9,552(sp)
    1d70:	22013d03          	ld	s10,544(sp)
    1d74:	21813d83          	ld	s11,536(sp)
    1d78:	28010113          	addi	sp,sp,640
    1d7c:	8082                	ret
    1d7e:	09d00893          	li	a7,157
    1d82:	6f0c8813          	addi	a6,s9,1776 # 26f0 <crctab+0x400>
    1d86:	87aa                	mv	a5,a0
    1d88:	8752                	mv	a4,s4
    1d8a:	86ca                	mv	a3,s2
    1d8c:	8622                	mv	a2,s0
    1d8e:	850d8593          	addi	a1,s11,-1968 # 2850 <crctab+0x560>
    1d92:	4509                	li	a0,2
    1d94:	00000097          	auipc	ra,0x0
    1d98:	87a080e7          	jalr	-1926(ra) # 160e <fprintf>
    1d9c:	855a                	mv	a0,s6
    1d9e:	00000097          	auipc	ra,0x0
    1da2:	154080e7          	jalr	340(ra) # 1ef2 <exit>
    1da6:	a89d                	j	1e1c <check_file_handle+0x1aa>
    1da8:	00160593          	addi	a1,a2,1
    1dac:	0285f163          	bgeu	a1,s0,1dce <check_file_handle+0x15c>
    1db0:	00c10733          	add	a4,sp,a2
    1db4:	00b487b3          	add	a5,s1,a1
    1db8:	00174683          	lbu	a3,1(a4)
    1dbc:	0007c783          	lbu	a5,0(a5)
    1dc0:	00f68763          	beq	a3,a5,1dce <check_file_handle+0x15c>
    1dc4:	0585                	addi	a1,a1,1
    1dc6:	0705                	addi	a4,a4,1
    1dc8:	feb416e3          	bne	s0,a1,1db4 <check_file_handle+0x142>
    1dcc:	85a2                	mv	a1,s0
    1dce:	08100813          	li	a6,129
    1dd2:	6f0c8793          	addi	a5,s9,1776
    1dd6:	8752                	mv	a4,s4
    1dd8:	012606b3          	add	a3,a2,s2
    1ddc:	40c58633          	sub	a2,a1,a2
    1de0:	898d0593          	addi	a1,s10,-1896 # 2898 <crctab+0x5a8>
    1de4:	4509                	li	a0,2
    1de6:	00000097          	auipc	ra,0x0
    1dea:	828080e7          	jalr	-2008(ra) # 160e <fprintf>
    1dee:	855a                	mv	a0,s6
    1df0:	00000097          	auipc	ra,0x0
    1df4:	102080e7          	jalr	258(ra) # 1ef2 <exit>
    1df8:	9922                	add	s2,s2,s0
    1dfa:	f13970e3          	bgeu	s2,s3,1cfa <check_file_handle+0x88>
    1dfe:	41298433          	sub	s0,s3,s2
    1e02:	008af363          	bgeu	s5,s0,1e08 <check_file_handle+0x196>
    1e06:	8456                	mv	s0,s5
    1e08:	0004061b          	sext.w	a2,s0
    1e0c:	858a                	mv	a1,sp
    1e0e:	855e                	mv	a0,s7
    1e10:	00000097          	auipc	ra,0x0
    1e14:	10a080e7          	jalr	266(ra) # 1f1a <read>
    1e18:	f68513e3          	bne	a0,s0,1d7e <check_file_handle+0x10c>
    1e1c:	012c04b3          	add	s1,s8,s2
    1e20:	8622                	mv	a2,s0
    1e22:	85a6                	mv	a1,s1
    1e24:	850a                	mv	a0,sp
    1e26:	00000097          	auipc	ra,0x0
    1e2a:	bce080e7          	jalr	-1074(ra) # 19f4 <memcmp>
    1e2e:	d569                	beqz	a0,1df8 <check_file_handle+0x186>
    1e30:	03298163          	beq	s3,s2,1e52 <check_file_handle+0x1e0>
    1e34:	870a                	mv	a4,sp
    1e36:	4601                	li	a2,0
    1e38:	00c487b3          	add	a5,s1,a2
    1e3c:	00074683          	lbu	a3,0(a4)
    1e40:	0007c783          	lbu	a5,0(a5)
    1e44:	f6f692e3          	bne	a3,a5,1da8 <check_file_handle+0x136>
    1e48:	0605                	addi	a2,a2,1
    1e4a:	0705                	addi	a4,a4,1
    1e4c:	fe8666e3          	bltu	a2,s0,1e38 <check_file_handle+0x1c6>
    1e50:	bfa1                	j	1da8 <check_file_handle+0x136>
    1e52:	4601                	li	a2,0
    1e54:	4585                	li	a1,1
    1e56:	bfa5                	j	1dce <check_file_handle+0x15c>

0000000000001e58 <check_file>:
    1e58:	7179                	addi	sp,sp,-48
    1e5a:	f406                	sd	ra,40(sp)
    1e5c:	f022                	sd	s0,32(sp)
    1e5e:	ec26                	sd	s1,24(sp)
    1e60:	e84a                	sd	s2,16(sp)
    1e62:	e44e                	sd	s3,8(sp)
    1e64:	84aa                	mv	s1,a0
    1e66:	892e                	mv	s2,a1
    1e68:	89b2                	mv	s3,a2
    1e6a:	4581                	li	a1,0
    1e6c:	00000097          	auipc	ra,0x0
    1e70:	0a6080e7          	jalr	166(ra) # 1f12 <open>
    1e74:	842a                	mv	s0,a0
    1e76:	4789                	li	a5,2
    1e78:	02a7df63          	bge	a5,a0,1eb6 <check_file+0x5e>
    1e7c:	86ce                	mv	a3,s3
    1e7e:	864a                	mv	a2,s2
    1e80:	85a6                	mv	a1,s1
    1e82:	8522                	mv	a0,s0
    1e84:	00000097          	auipc	ra,0x0
    1e88:	dee080e7          	jalr	-530(ra) # 1c72 <check_file_handle>
    1e8c:	85a6                	mv	a1,s1
    1e8e:	00003537          	lui	a0,0x3
    1e92:	9c050513          	addi	a0,a0,-1600 # 29c0 <crctab+0x6d0>
    1e96:	fffff097          	auipc	ra,0xfffff
    1e9a:	79a080e7          	jalr	1946(ra) # 1630 <printf>
    1e9e:	8522                	mv	a0,s0
    1ea0:	00000097          	auipc	ra,0x0
    1ea4:	09a080e7          	jalr	154(ra) # 1f3a <close>
    1ea8:	70a2                	ld	ra,40(sp)
    1eaa:	7402                	ld	s0,32(sp)
    1eac:	64e2                	ld	s1,24(sp)
    1eae:	6942                	ld	s2,16(sp)
    1eb0:	69a2                	ld	s3,8(sp)
    1eb2:	6145                	addi	sp,sp,48
    1eb4:	8082                	ret
    1eb6:	0ae00713          	li	a4,174
    1eba:	000026b7          	lui	a3,0x2
    1ebe:	6f068693          	addi	a3,a3,1776 # 26f0 <crctab+0x400>
    1ec2:	8626                	mv	a2,s1
    1ec4:	000035b7          	lui	a1,0x3
    1ec8:	95858593          	addi	a1,a1,-1704 # 2958 <crctab+0x668>
    1ecc:	4509                	li	a0,2
    1ece:	fffff097          	auipc	ra,0xfffff
    1ed2:	740080e7          	jalr	1856(ra) # 160e <fprintf>
    1ed6:	650d                	lui	a0,0x3
    1ed8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1edc:	00000097          	auipc	ra,0x0
    1ee0:	016080e7          	jalr	22(ra) # 1ef2 <exit>
    1ee4:	bf61                	j	1e7c <check_file+0x24>

0000000000001ee6 <r_sp>:
    1ee6:	850a                	mv	a0,sp
    1ee8:	8082                	ret

0000000000001eea <halt>:
    1eea:	4885                	li	a7,1
    1eec:	00000073          	ecall
    1ef0:	8082                	ret

0000000000001ef2 <exit>:
    1ef2:	4889                	li	a7,2
    1ef4:	00000073          	ecall
    1ef8:	8082                	ret

0000000000001efa <exec>:
    1efa:	488d                	li	a7,3
    1efc:	00000073          	ecall
    1f00:	8082                	ret

0000000000001f02 <wait>:
    1f02:	4891                	li	a7,4
    1f04:	00000073          	ecall
    1f08:	8082                	ret

0000000000001f0a <remove>:
    1f0a:	4895                	li	a7,5
    1f0c:	00000073          	ecall
    1f10:	8082                	ret

0000000000001f12 <open>:
    1f12:	4899                	li	a7,6
    1f14:	00000073          	ecall
    1f18:	8082                	ret

0000000000001f1a <read>:
    1f1a:	489d                	li	a7,7
    1f1c:	00000073          	ecall
    1f20:	8082                	ret

0000000000001f22 <write>:
    1f22:	48a1                	li	a7,8
    1f24:	00000073          	ecall
    1f28:	8082                	ret

0000000000001f2a <seek>:
    1f2a:	48a5                	li	a7,9
    1f2c:	00000073          	ecall
    1f30:	8082                	ret

0000000000001f32 <tell>:
    1f32:	48a9                	li	a7,10
    1f34:	00000073          	ecall
    1f38:	8082                	ret

0000000000001f3a <close>:
    1f3a:	48ad                	li	a7,11
    1f3c:	00000073          	ecall
    1f40:	8082                	ret

0000000000001f42 <fstat>:
    1f42:	48b1                	li	a7,12
    1f44:	00000073          	ecall
    1f48:	8082                	ret

0000000000001f4a <mmap>:
    1f4a:	48b5                	li	a7,13
    1f4c:	00000073          	ecall
    1f50:	8082                	ret

0000000000001f52 <munmap>:
    1f52:	48b9                	li	a7,14
    1f54:	00000073          	ecall
    1f58:	8082                	ret

0000000000001f5a <chdir>:
    1f5a:	48bd                	li	a7,15
    1f5c:	00000073          	ecall
    1f60:	8082                	ret

0000000000001f62 <mkdir>:
    1f62:	48c1                	li	a7,16
    1f64:	00000073          	ecall
    1f68:	8082                	ret
