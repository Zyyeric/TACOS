
build/user/vm/mmap-remove:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	715d                	addi	sp,sp,-80
    1002:	e486                	sd	ra,72(sp)
    1004:	e0a2                	sd	s0,64(sp)
    1006:	fc26                	sd	s1,56(sp)
    1008:	f84a                	sd	s2,48(sp)
    100a:	f44e                	sd	s3,40(sp)
    100c:	f052                	sd	s4,32(sp)
    100e:	ec56                	sd	s5,24(sp)
    1010:	e85a                	sd	s6,16(sp)
    1012:	7361                	lui	t1,0xffff8
    1014:	0341                	addi	t1,t1,16
    1016:	911a                	add	sp,sp,t1
    1018:	4589                	li	a1,2
    101a:	00002537          	lui	a0,0x2
    101e:	e8050513          	addi	a0,a0,-384 # 1e80 <mkdir+0x12>
    1022:	00001097          	auipc	ra,0x1
    1026:	dfc080e7          	jalr	-516(ra) # 1e1e <open>
    102a:	842a                	mv	s0,a0
    102c:	4789                	li	a5,2
    102e:	0ca7db63          	bge	a5,a0,1104 <main+0x104>
    1032:	100005b7          	lui	a1,0x10000
    1036:	8522                	mv	a0,s0
    1038:	00001097          	auipc	ra,0x1
    103c:	e1e080e7          	jalr	-482(ra) # 1e56 <mmap>
    1040:	8a2a                	mv	s4,a0
    1042:	57fd                	li	a5,-1
    1044:	0ef50663          	beq	a0,a5,1130 <main+0x130>
    1048:	8522                	mv	a0,s0
    104a:	00001097          	auipc	ra,0x1
    104e:	dfc080e7          	jalr	-516(ra) # 1e46 <close>
    1052:	00002537          	lui	a0,0x2
    1056:	e8050513          	addi	a0,a0,-384 # 1e80 <mkdir+0x12>
    105a:	00001097          	auipc	ra,0x1
    105e:	dbc080e7          	jalr	-580(ra) # 1e16 <remove>
    1062:	ed6d                	bnez	a0,115c <main+0x15c>
    1064:	4581                	li	a1,0
    1066:	00002537          	lui	a0,0x2
    106a:	e8050513          	addi	a0,a0,-384 # 1e80 <mkdir+0x12>
    106e:	00001097          	auipc	ra,0x1
    1072:	db0080e7          	jalr	-592(ra) # 1e1e <open>
    1076:	57fd                	li	a5,-1
    1078:	10f51863          	bne	a0,a5,1188 <main+0x188>
    107c:	60100593          	li	a1,1537
    1080:	00002537          	lui	a0,0x2
    1084:	01850513          	addi	a0,a0,24 # 2018 <mkdir+0x1aa>
    1088:	00001097          	auipc	ra,0x1
    108c:	d96080e7          	jalr	-618(ra) # 1e1e <open>
    1090:	842a                	mv	s0,a0
    1092:	12050163          	beqz	a0,11b4 <main+0x1b4>
    1096:	6621                	lui	a2,0x8
    1098:	75e1                	lui	a1,0xffff8
    109a:	67a1                	lui	a5,0x8
    109c:	978a                	add	a5,a5,sp
    109e:	95be                	add	a1,a1,a5
    10a0:	8522                	mv	a0,s0
    10a2:	00001097          	auipc	ra,0x1
    10a6:	d8c080e7          	jalr	-628(ra) # 1e2e <write>
    10aa:	67a1                	lui	a5,0x8
    10ac:	12f51a63          	bne	a0,a5,11e0 <main+0x1e0>
    10b0:	00003437          	lui	s0,0x3
    10b4:	00040513          	mv	a0,s0
    10b8:	00001097          	auipc	ra,0x1
    10bc:	810080e7          	jalr	-2032(ra) # 18c8 <strlen>
    10c0:	862a                	mv	a2,a0
    10c2:	00040593          	mv	a1,s0
    10c6:	10000537          	lui	a0,0x10000
    10ca:	00001097          	auipc	ra,0x1
    10ce:	836080e7          	jalr	-1994(ra) # 1900 <memcmp>
    10d2:	12051d63          	bnez	a0,120c <main+0x20c>
    10d6:	00003537          	lui	a0,0x3
    10da:	00050513          	mv	a0,a0
    10de:	00000097          	auipc	ra,0x0
    10e2:	7ea080e7          	jalr	2026(ra) # 18c8 <strlen>
    10e6:	842a                	mv	s0,a0
    10e8:	6785                	lui	a5,0x1
    10ea:	18f57163          	bgeu	a0,a5,126c <main+0x26c>
    10ee:	10000937          	lui	s2,0x10000
    10f2:	00002b37          	lui	s6,0x2
    10f6:	00002ab7          	lui	s5,0x2
    10fa:	698d                	lui	s3,0x3
    10fc:	03998993          	addi	s3,s3,57 # 3039 <sample+0x39>
    1100:	6485                	lui	s1,0x1
    1102:	aa35                	j	123e <main+0x23e>
    1104:	46b9                	li	a3,14
    1106:	00002637          	lui	a2,0x2
    110a:	e9060613          	addi	a2,a2,-368 # 1e90 <mkdir+0x22>
    110e:	000025b7          	lui	a1,0x2
    1112:	ea858593          	addi	a1,a1,-344 # 1ea8 <mkdir+0x3a>
    1116:	4509                	li	a0,2
    1118:	00000097          	auipc	ra,0x0
    111c:	402080e7          	jalr	1026(ra) # 151a <fprintf>
    1120:	650d                	lui	a0,0x3
    1122:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1126:	00001097          	auipc	ra,0x1
    112a:	cd8080e7          	jalr	-808(ra) # 1dfe <exit>
    112e:	b711                	j	1032 <main+0x32>
    1130:	46bd                	li	a3,15
    1132:	00002637          	lui	a2,0x2
    1136:	e9060613          	addi	a2,a2,-368 # 1e90 <mkdir+0x22>
    113a:	000025b7          	lui	a1,0x2
    113e:	ef858593          	addi	a1,a1,-264 # 1ef8 <mkdir+0x8a>
    1142:	4509                	li	a0,2
    1144:	00000097          	auipc	ra,0x0
    1148:	3d6080e7          	jalr	982(ra) # 151a <fprintf>
    114c:	650d                	lui	a0,0x3
    114e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1152:	00001097          	auipc	ra,0x1
    1156:	cac080e7          	jalr	-852(ra) # 1dfe <exit>
    115a:	b5fd                	j	1048 <main+0x48>
    115c:	46cd                	li	a3,19
    115e:	00002637          	lui	a2,0x2
    1162:	e9060613          	addi	a2,a2,-368 # 1e90 <mkdir+0x22>
    1166:	000025b7          	lui	a1,0x2
    116a:	f6058593          	addi	a1,a1,-160 # 1f60 <mkdir+0xf2>
    116e:	4509                	li	a0,2
    1170:	00000097          	auipc	ra,0x0
    1174:	3aa080e7          	jalr	938(ra) # 151a <fprintf>
    1178:	650d                	lui	a0,0x3
    117a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    117e:	00001097          	auipc	ra,0x1
    1182:	c80080e7          	jalr	-896(ra) # 1dfe <exit>
    1186:	bdf9                	j	1064 <main+0x64>
    1188:	46d1                	li	a3,20
    118a:	00002637          	lui	a2,0x2
    118e:	e9060613          	addi	a2,a2,-368 # 1e90 <mkdir+0x22>
    1192:	000025b7          	lui	a1,0x2
    1196:	fb858593          	addi	a1,a1,-72 # 1fb8 <mkdir+0x14a>
    119a:	4509                	li	a0,2
    119c:	00000097          	auipc	ra,0x0
    11a0:	37e080e7          	jalr	894(ra) # 151a <fprintf>
    11a4:	650d                	lui	a0,0x3
    11a6:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11aa:	00001097          	auipc	ra,0x1
    11ae:	c54080e7          	jalr	-940(ra) # 1dfe <exit>
    11b2:	b5e9                	j	107c <main+0x7c>
    11b4:	46ed                	li	a3,27
    11b6:	00002637          	lui	a2,0x2
    11ba:	e9060613          	addi	a2,a2,-368 # 1e90 <mkdir+0x22>
    11be:	000025b7          	lui	a1,0x2
    11c2:	02058593          	addi	a1,a1,32 # 2020 <mkdir+0x1b2>
    11c6:	4509                	li	a0,2
    11c8:	00000097          	auipc	ra,0x0
    11cc:	352080e7          	jalr	850(ra) # 151a <fprintf>
    11d0:	650d                	lui	a0,0x3
    11d2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11d6:	00001097          	auipc	ra,0x1
    11da:	c28080e7          	jalr	-984(ra) # 1dfe <exit>
    11de:	bd65                	j	1096 <main+0x96>
    11e0:	46f1                	li	a3,28
    11e2:	00002637          	lui	a2,0x2
    11e6:	e9060613          	addi	a2,a2,-368 # 1e90 <mkdir+0x22>
    11ea:	000025b7          	lui	a1,0x2
    11ee:	08858593          	addi	a1,a1,136 # 2088 <mkdir+0x21a>
    11f2:	4509                	li	a0,2
    11f4:	00000097          	auipc	ra,0x0
    11f8:	326080e7          	jalr	806(ra) # 151a <fprintf>
    11fc:	650d                	lui	a0,0x3
    11fe:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1202:	00001097          	auipc	ra,0x1
    1206:	bfc080e7          	jalr	-1028(ra) # 1dfe <exit>
    120a:	b55d                	j	10b0 <main+0xb0>
    120c:	46fd                	li	a3,31
    120e:	00002637          	lui	a2,0x2
    1212:	e9060613          	addi	a2,a2,-368 # 1e90 <mkdir+0x22>
    1216:	000025b7          	lui	a1,0x2
    121a:	0d858593          	addi	a1,a1,216 # 20d8 <mkdir+0x26a>
    121e:	4509                	li	a0,2
    1220:	00000097          	auipc	ra,0x0
    1224:	2fa080e7          	jalr	762(ra) # 151a <fprintf>
    1228:	650d                	lui	a0,0x3
    122a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    122e:	00001097          	auipc	ra,0x1
    1232:	bd0080e7          	jalr	-1072(ra) # 1dfe <exit>
    1236:	b545                	j	10d6 <main+0xd6>
    1238:	0405                	addi	s0,s0,1
    123a:	02940963          	beq	s0,s1,126c <main+0x26c>
    123e:	008907b3          	add	a5,s2,s0
    1242:	0007c683          	lbu	a3,0(a5) # 1000 <main>
    1246:	daed                	beqz	a3,1238 <main+0x238>
    1248:	02400793          	li	a5,36
    124c:	e90b0713          	addi	a4,s6,-368 # 1e90 <mkdir+0x22>
    1250:	8622                	mv	a2,s0
    1252:	118a8593          	addi	a1,s5,280 # 2118 <mkdir+0x2aa>
    1256:	4509                	li	a0,2
    1258:	00000097          	auipc	ra,0x0
    125c:	2c2080e7          	jalr	706(ra) # 151a <fprintf>
    1260:	854e                	mv	a0,s3
    1262:	00001097          	auipc	ra,0x1
    1266:	b9c080e7          	jalr	-1124(ra) # 1dfe <exit>
    126a:	b7f9                	j	1238 <main+0x238>
    126c:	8552                	mv	a0,s4
    126e:	00001097          	auipc	ra,0x1
    1272:	bf0080e7          	jalr	-1040(ra) # 1e5e <munmap>
    1276:	6321                	lui	t1,0x8
    1278:	1341                	addi	t1,t1,-16
    127a:	911a                	add	sp,sp,t1
    127c:	60a6                	ld	ra,72(sp)
    127e:	6406                	ld	s0,64(sp)
    1280:	74e2                	ld	s1,56(sp)
    1282:	7942                	ld	s2,48(sp)
    1284:	79a2                	ld	s3,40(sp)
    1286:	7a02                	ld	s4,32(sp)
    1288:	6ae2                	ld	s5,24(sp)
    128a:	6b42                	ld	s6,16(sp)
    128c:	6161                	addi	sp,sp,80
    128e:	8082                	ret

0000000000001290 <putc>:
    1290:	1101                	addi	sp,sp,-32
    1292:	ec06                	sd	ra,24(sp)
    1294:	00b107a3          	sb	a1,15(sp)
    1298:	4605                	li	a2,1
    129a:	00f10593          	addi	a1,sp,15
    129e:	00001097          	auipc	ra,0x1
    12a2:	b90080e7          	jalr	-1136(ra) # 1e2e <write>
    12a6:	60e2                	ld	ra,24(sp)
    12a8:	6105                	addi	sp,sp,32
    12aa:	8082                	ret

00000000000012ac <printint>:
    12ac:	7179                	addi	sp,sp,-48
    12ae:	f406                	sd	ra,40(sp)
    12b0:	f022                	sd	s0,32(sp)
    12b2:	ec26                	sd	s1,24(sp)
    12b4:	e84a                	sd	s2,16(sp)
    12b6:	84aa                	mv	s1,a0
    12b8:	c299                	beqz	a3,12be <printint+0x12>
    12ba:	0805c363          	bltz	a1,1340 <printint+0x94>
    12be:	2581                	sext.w	a1,a1
    12c0:	4881                	li	a7,0
    12c2:	868a                	mv	a3,sp
    12c4:	4701                	li	a4,0
    12c6:	2601                	sext.w	a2,a2
    12c8:	00002537          	lui	a0,0x2
    12cc:	17050513          	addi	a0,a0,368 # 2170 <digits>
    12d0:	883a                	mv	a6,a4
    12d2:	2705                	addiw	a4,a4,1
    12d4:	02c5f7bb          	remuw	a5,a1,a2
    12d8:	1782                	slli	a5,a5,0x20
    12da:	9381                	srli	a5,a5,0x20
    12dc:	97aa                	add	a5,a5,a0
    12de:	0007c783          	lbu	a5,0(a5)
    12e2:	00f68023          	sb	a5,0(a3)
    12e6:	0005879b          	sext.w	a5,a1
    12ea:	02c5d5bb          	divuw	a1,a1,a2
    12ee:	0685                	addi	a3,a3,1
    12f0:	fec7f0e3          	bgeu	a5,a2,12d0 <printint+0x24>
    12f4:	00088a63          	beqz	a7,1308 <printint+0x5c>
    12f8:	081c                	addi	a5,sp,16
    12fa:	973e                	add	a4,a4,a5
    12fc:	02d00793          	li	a5,45
    1300:	fef70823          	sb	a5,-16(a4)
    1304:	0028071b          	addiw	a4,a6,2
    1308:	02e05663          	blez	a4,1334 <printint+0x88>
    130c:	00e10433          	add	s0,sp,a4
    1310:	fff10913          	addi	s2,sp,-1
    1314:	993a                	add	s2,s2,a4
    1316:	377d                	addiw	a4,a4,-1
    1318:	1702                	slli	a4,a4,0x20
    131a:	9301                	srli	a4,a4,0x20
    131c:	40e90933          	sub	s2,s2,a4
    1320:	fff44583          	lbu	a1,-1(s0) # 2fff <crctab+0xe77>
    1324:	8526                	mv	a0,s1
    1326:	00000097          	auipc	ra,0x0
    132a:	f6a080e7          	jalr	-150(ra) # 1290 <putc>
    132e:	147d                	addi	s0,s0,-1
    1330:	ff2418e3          	bne	s0,s2,1320 <printint+0x74>
    1334:	70a2                	ld	ra,40(sp)
    1336:	7402                	ld	s0,32(sp)
    1338:	64e2                	ld	s1,24(sp)
    133a:	6942                	ld	s2,16(sp)
    133c:	6145                	addi	sp,sp,48
    133e:	8082                	ret
    1340:	40b005bb          	negw	a1,a1
    1344:	4885                	li	a7,1
    1346:	bfb5                	j	12c2 <printint+0x16>

0000000000001348 <vprintf>:
    1348:	7159                	addi	sp,sp,-112
    134a:	f486                	sd	ra,104(sp)
    134c:	f0a2                	sd	s0,96(sp)
    134e:	eca6                	sd	s1,88(sp)
    1350:	e8ca                	sd	s2,80(sp)
    1352:	e4ce                	sd	s3,72(sp)
    1354:	e0d2                	sd	s4,64(sp)
    1356:	fc56                	sd	s5,56(sp)
    1358:	f85a                	sd	s6,48(sp)
    135a:	f45e                	sd	s7,40(sp)
    135c:	f062                	sd	s8,32(sp)
    135e:	ec66                	sd	s9,24(sp)
    1360:	e86a                	sd	s10,16(sp)
    1362:	e46e                	sd	s11,8(sp)
    1364:	0005c483          	lbu	s1,0(a1)
    1368:	18048a63          	beqz	s1,14fc <vprintf+0x1b4>
    136c:	8a2a                	mv	s4,a0
    136e:	8ab2                	mv	s5,a2
    1370:	00158413          	addi	s0,a1,1
    1374:	4901                	li	s2,0
    1376:	02500993          	li	s3,37
    137a:	06400b93          	li	s7,100
    137e:	06c00c13          	li	s8,108
    1382:	07800c93          	li	s9,120
    1386:	07000d13          	li	s10,112
    138a:	00002db7          	lui	s11,0x2
    138e:	00002b37          	lui	s6,0x2
    1392:	170b0b13          	addi	s6,s6,368 # 2170 <digits>
    1396:	a839                	j	13b4 <vprintf+0x6c>
    1398:	85a6                	mv	a1,s1
    139a:	8552                	mv	a0,s4
    139c:	00000097          	auipc	ra,0x0
    13a0:	ef4080e7          	jalr	-268(ra) # 1290 <putc>
    13a4:	a019                	j	13aa <vprintf+0x62>
    13a6:	01390f63          	beq	s2,s3,13c4 <vprintf+0x7c>
    13aa:	0405                	addi	s0,s0,1
    13ac:	fff44483          	lbu	s1,-1(s0)
    13b0:	14048663          	beqz	s1,14fc <vprintf+0x1b4>
    13b4:	0004879b          	sext.w	a5,s1
    13b8:	fe0917e3          	bnez	s2,13a6 <vprintf+0x5e>
    13bc:	fd379ee3          	bne	a5,s3,1398 <vprintf+0x50>
    13c0:	893e                	mv	s2,a5
    13c2:	b7e5                	j	13aa <vprintf+0x62>
    13c4:	05778063          	beq	a5,s7,1404 <vprintf+0xbc>
    13c8:	05878c63          	beq	a5,s8,1420 <vprintf+0xd8>
    13cc:	07978863          	beq	a5,s9,143c <vprintf+0xf4>
    13d0:	09a78463          	beq	a5,s10,1458 <vprintf+0x110>
    13d4:	07300713          	li	a4,115
    13d8:	0ce78263          	beq	a5,a4,149c <vprintf+0x154>
    13dc:	06300713          	li	a4,99
    13e0:	0ee78763          	beq	a5,a4,14ce <vprintf+0x186>
    13e4:	11378163          	beq	a5,s3,14e6 <vprintf+0x19e>
    13e8:	85ce                	mv	a1,s3
    13ea:	8552                	mv	a0,s4
    13ec:	00000097          	auipc	ra,0x0
    13f0:	ea4080e7          	jalr	-348(ra) # 1290 <putc>
    13f4:	85a6                	mv	a1,s1
    13f6:	8552                	mv	a0,s4
    13f8:	00000097          	auipc	ra,0x0
    13fc:	e98080e7          	jalr	-360(ra) # 1290 <putc>
    1400:	4901                	li	s2,0
    1402:	b765                	j	13aa <vprintf+0x62>
    1404:	008a8493          	addi	s1,s5,8
    1408:	4685                	li	a3,1
    140a:	4629                	li	a2,10
    140c:	000aa583          	lw	a1,0(s5)
    1410:	8552                	mv	a0,s4
    1412:	00000097          	auipc	ra,0x0
    1416:	e9a080e7          	jalr	-358(ra) # 12ac <printint>
    141a:	8aa6                	mv	s5,s1
    141c:	4901                	li	s2,0
    141e:	b771                	j	13aa <vprintf+0x62>
    1420:	008a8493          	addi	s1,s5,8
    1424:	4681                	li	a3,0
    1426:	4629                	li	a2,10
    1428:	000aa583          	lw	a1,0(s5)
    142c:	8552                	mv	a0,s4
    142e:	00000097          	auipc	ra,0x0
    1432:	e7e080e7          	jalr	-386(ra) # 12ac <printint>
    1436:	8aa6                	mv	s5,s1
    1438:	4901                	li	s2,0
    143a:	bf85                	j	13aa <vprintf+0x62>
    143c:	008a8493          	addi	s1,s5,8
    1440:	4681                	li	a3,0
    1442:	4641                	li	a2,16
    1444:	000aa583          	lw	a1,0(s5)
    1448:	8552                	mv	a0,s4
    144a:	00000097          	auipc	ra,0x0
    144e:	e62080e7          	jalr	-414(ra) # 12ac <printint>
    1452:	8aa6                	mv	s5,s1
    1454:	4901                	li	s2,0
    1456:	bf91                	j	13aa <vprintf+0x62>
    1458:	008a8913          	addi	s2,s5,8
    145c:	000aba83          	ld	s5,0(s5)
    1460:	03000593          	li	a1,48
    1464:	8552                	mv	a0,s4
    1466:	00000097          	auipc	ra,0x0
    146a:	e2a080e7          	jalr	-470(ra) # 1290 <putc>
    146e:	85e6                	mv	a1,s9
    1470:	8552                	mv	a0,s4
    1472:	00000097          	auipc	ra,0x0
    1476:	e1e080e7          	jalr	-482(ra) # 1290 <putc>
    147a:	44c1                	li	s1,16
    147c:	03cad793          	srli	a5,s5,0x3c
    1480:	97da                	add	a5,a5,s6
    1482:	0007c583          	lbu	a1,0(a5)
    1486:	8552                	mv	a0,s4
    1488:	00000097          	auipc	ra,0x0
    148c:	e08080e7          	jalr	-504(ra) # 1290 <putc>
    1490:	0a92                	slli	s5,s5,0x4
    1492:	34fd                	addiw	s1,s1,-1
    1494:	f4e5                	bnez	s1,147c <vprintf+0x134>
    1496:	8aca                	mv	s5,s2
    1498:	4901                	li	s2,0
    149a:	bf01                	j	13aa <vprintf+0x62>
    149c:	008a8913          	addi	s2,s5,8
    14a0:	000ab483          	ld	s1,0(s5)
    14a4:	c085                	beqz	s1,14c4 <vprintf+0x17c>
    14a6:	0004c583          	lbu	a1,0(s1) # 1000 <main>
    14aa:	c5b1                	beqz	a1,14f6 <vprintf+0x1ae>
    14ac:	8552                	mv	a0,s4
    14ae:	00000097          	auipc	ra,0x0
    14b2:	de2080e7          	jalr	-542(ra) # 1290 <putc>
    14b6:	0485                	addi	s1,s1,1
    14b8:	0004c583          	lbu	a1,0(s1)
    14bc:	f9e5                	bnez	a1,14ac <vprintf+0x164>
    14be:	8aca                	mv	s5,s2
    14c0:	4901                	li	s2,0
    14c2:	b5e5                	j	13aa <vprintf+0x62>
    14c4:	168d8493          	addi	s1,s11,360 # 2168 <mkdir+0x2fa>
    14c8:	02800593          	li	a1,40
    14cc:	b7c5                	j	14ac <vprintf+0x164>
    14ce:	008a8493          	addi	s1,s5,8
    14d2:	000ac583          	lbu	a1,0(s5)
    14d6:	8552                	mv	a0,s4
    14d8:	00000097          	auipc	ra,0x0
    14dc:	db8080e7          	jalr	-584(ra) # 1290 <putc>
    14e0:	8aa6                	mv	s5,s1
    14e2:	4901                	li	s2,0
    14e4:	b5d9                	j	13aa <vprintf+0x62>
    14e6:	85ce                	mv	a1,s3
    14e8:	8552                	mv	a0,s4
    14ea:	00000097          	auipc	ra,0x0
    14ee:	da6080e7          	jalr	-602(ra) # 1290 <putc>
    14f2:	4901                	li	s2,0
    14f4:	bd5d                	j	13aa <vprintf+0x62>
    14f6:	8aca                	mv	s5,s2
    14f8:	4901                	li	s2,0
    14fa:	bd45                	j	13aa <vprintf+0x62>
    14fc:	70a6                	ld	ra,104(sp)
    14fe:	7406                	ld	s0,96(sp)
    1500:	64e6                	ld	s1,88(sp)
    1502:	6946                	ld	s2,80(sp)
    1504:	69a6                	ld	s3,72(sp)
    1506:	6a06                	ld	s4,64(sp)
    1508:	7ae2                	ld	s5,56(sp)
    150a:	7b42                	ld	s6,48(sp)
    150c:	7ba2                	ld	s7,40(sp)
    150e:	7c02                	ld	s8,32(sp)
    1510:	6ce2                	ld	s9,24(sp)
    1512:	6d42                	ld	s10,16(sp)
    1514:	6da2                	ld	s11,8(sp)
    1516:	6165                	addi	sp,sp,112
    1518:	8082                	ret

000000000000151a <fprintf>:
    151a:	715d                	addi	sp,sp,-80
    151c:	ec06                	sd	ra,24(sp)
    151e:	f032                	sd	a2,32(sp)
    1520:	f436                	sd	a3,40(sp)
    1522:	f83a                	sd	a4,48(sp)
    1524:	fc3e                	sd	a5,56(sp)
    1526:	e0c2                	sd	a6,64(sp)
    1528:	e4c6                	sd	a7,72(sp)
    152a:	1010                	addi	a2,sp,32
    152c:	e432                	sd	a2,8(sp)
    152e:	00000097          	auipc	ra,0x0
    1532:	e1a080e7          	jalr	-486(ra) # 1348 <vprintf>
    1536:	60e2                	ld	ra,24(sp)
    1538:	6161                	addi	sp,sp,80
    153a:	8082                	ret

000000000000153c <printf>:
    153c:	711d                	addi	sp,sp,-96
    153e:	ec06                	sd	ra,24(sp)
    1540:	f42e                	sd	a1,40(sp)
    1542:	f832                	sd	a2,48(sp)
    1544:	fc36                	sd	a3,56(sp)
    1546:	e0ba                	sd	a4,64(sp)
    1548:	e4be                	sd	a5,72(sp)
    154a:	e8c2                	sd	a6,80(sp)
    154c:	ecc6                	sd	a7,88(sp)
    154e:	1030                	addi	a2,sp,40
    1550:	e432                	sd	a2,8(sp)
    1552:	85aa                	mv	a1,a0
    1554:	4505                	li	a0,1
    1556:	00000097          	auipc	ra,0x0
    155a:	df2080e7          	jalr	-526(ra) # 1348 <vprintf>
    155e:	60e2                	ld	ra,24(sp)
    1560:	6125                	addi	sp,sp,96
    1562:	8082                	ret

0000000000001564 <cksum>:
    1564:	cdb1                	beqz	a1,15c0 <cksum+0x5c>
    1566:	00b50833          	add	a6,a0,a1
    156a:	4781                	li	a5,0
    156c:	00002637          	lui	a2,0x2
    1570:	18860613          	addi	a2,a2,392 # 2188 <crctab>
    1574:	0505                	addi	a0,a0,1
    1576:	0087969b          	slliw	a3,a5,0x8
    157a:	0187d71b          	srliw	a4,a5,0x18
    157e:	fff54783          	lbu	a5,-1(a0)
    1582:	8f3d                	xor	a4,a4,a5
    1584:	1702                	slli	a4,a4,0x20
    1586:	9301                	srli	a4,a4,0x20
    1588:	070a                	slli	a4,a4,0x2
    158a:	9732                	add	a4,a4,a2
    158c:	431c                	lw	a5,0(a4)
    158e:	8fb5                	xor	a5,a5,a3
    1590:	2781                	sext.w	a5,a5
    1592:	fea811e3          	bne	a6,a0,1574 <cksum+0x10>
    1596:	00002637          	lui	a2,0x2
    159a:	18860613          	addi	a2,a2,392 # 2188 <crctab>
    159e:	0ff5f693          	andi	a3,a1,255
    15a2:	81a1                	srli	a1,a1,0x8
    15a4:	0087951b          	slliw	a0,a5,0x8
    15a8:	0187d71b          	srliw	a4,a5,0x18
    15ac:	8f35                	xor	a4,a4,a3
    15ae:	070a                	slli	a4,a4,0x2
    15b0:	9732                	add	a4,a4,a2
    15b2:	431c                	lw	a5,0(a4)
    15b4:	8fa9                	xor	a5,a5,a0
    15b6:	2781                	sext.w	a5,a5
    15b8:	f1fd                	bnez	a1,159e <cksum+0x3a>
    15ba:	fff7c513          	not	a0,a5
    15be:	8082                	ret
    15c0:	4781                	li	a5,0
    15c2:	bfe5                	j	15ba <cksum+0x56>

00000000000015c4 <swap_bytes>:
    15c4:	ce19                	beqz	a2,15e2 <swap_bytes+0x1e>
    15c6:	87aa                	mv	a5,a0
    15c8:	962a                	add	a2,a2,a0
    15ca:	0007c703          	lbu	a4,0(a5)
    15ce:	0005c683          	lbu	a3,0(a1)
    15d2:	00d78023          	sb	a3,0(a5)
    15d6:	00e58023          	sb	a4,0(a1)
    15da:	0785                	addi	a5,a5,1
    15dc:	0585                	addi	a1,a1,1
    15de:	fec796e3          	bne	a5,a2,15ca <swap_bytes+0x6>
    15e2:	8082                	ret

00000000000015e4 <random_init>:
    15e4:	7139                	addi	sp,sp,-64
    15e6:	fc06                	sd	ra,56(sp)
    15e8:	f822                	sd	s0,48(sp)
    15ea:	f426                	sd	s1,40(sp)
    15ec:	f04a                	sd	s2,32(sp)
    15ee:	ec4e                	sd	s3,24(sp)
    15f0:	e852                	sd	s4,16(sp)
    15f2:	c62a                	sw	a0,12(sp)
    15f4:	000037b7          	lui	a5,0x3
    15f8:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    15fc:	eca5                	bnez	s1,1674 <random_init+0x90>
    15fe:	00003737          	lui	a4,0x3
    1602:	10070913          	addi	s2,a4,256 # 3100 <s>
    1606:	10070713          	addi	a4,a4,256
    160a:	87a6                	mv	a5,s1
    160c:	10000693          	li	a3,256
    1610:	00f70023          	sb	a5,0(a4)
    1614:	2785                	addiw	a5,a5,1
    1616:	0705                	addi	a4,a4,1
    1618:	fed79ce3          	bne	a5,a3,1610 <random_init+0x2c>
    161c:	4401                	li	s0,0
    161e:	000039b7          	lui	s3,0x3
    1622:	10098993          	addi	s3,s3,256 # 3100 <s>
    1626:	10000a13          	li	s4,256
    162a:	0034f793          	andi	a5,s1,3
    162e:	0818                	addi	a4,sp,16
    1630:	97ba                	add	a5,a5,a4
    1632:	ffc7c783          	lbu	a5,-4(a5)
    1636:	00094703          	lbu	a4,0(s2) # 10000000 <s+0xfffcf00>
    163a:	9fb9                	addw	a5,a5,a4
    163c:	9c3d                	addw	s0,s0,a5
    163e:	0ff47413          	andi	s0,s0,255
    1642:	4605                	li	a2,1
    1644:	008985b3          	add	a1,s3,s0
    1648:	854a                	mv	a0,s2
    164a:	00000097          	auipc	ra,0x0
    164e:	f7a080e7          	jalr	-134(ra) # 15c4 <swap_bytes>
    1652:	2485                	addiw	s1,s1,1
    1654:	0905                	addi	s2,s2,1
    1656:	fd449ae3          	bne	s1,s4,162a <random_init+0x46>
    165a:	000037b7          	lui	a5,0x3
    165e:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1662:	000037b7          	lui	a5,0x3
    1666:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    166a:	000037b7          	lui	a5,0x3
    166e:	4705                	li	a4,1
    1670:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1674:	70e2                	ld	ra,56(sp)
    1676:	7442                	ld	s0,48(sp)
    1678:	74a2                	ld	s1,40(sp)
    167a:	7902                	ld	s2,32(sp)
    167c:	69e2                	ld	s3,24(sp)
    167e:	6a42                	ld	s4,16(sp)
    1680:	6121                	addi	sp,sp,64
    1682:	8082                	ret

0000000000001684 <random_bytes>:
    1684:	7139                	addi	sp,sp,-64
    1686:	fc06                	sd	ra,56(sp)
    1688:	f822                	sd	s0,48(sp)
    168a:	f426                	sd	s1,40(sp)
    168c:	f04a                	sd	s2,32(sp)
    168e:	ec4e                	sd	s3,24(sp)
    1690:	e852                	sd	s4,16(sp)
    1692:	e456                	sd	s5,8(sp)
    1694:	e05a                	sd	s6,0(sp)
    1696:	892a                	mv	s2,a0
    1698:	8aae                	mv	s5,a1
    169a:	000037b7          	lui	a5,0x3
    169e:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    16a2:	c3c1                	beqz	a5,1722 <random_bytes+0x9e>
    16a4:	060a8563          	beqz	s5,170e <random_bytes+0x8a>
    16a8:	9aca                	add	s5,s5,s2
    16aa:	00003a37          	lui	s4,0x3
    16ae:	000034b7          	lui	s1,0x3
    16b2:	10048493          	addi	s1,s1,256 # 3100 <s>
    16b6:	000039b7          	lui	s3,0x3
    16ba:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    16be:	2505                	addiw	a0,a0,1
    16c0:	0ff57513          	andi	a0,a0,255
    16c4:	0eaa0aa3          	sb	a0,245(s4)
    16c8:	00a48b33          	add	s6,s1,a0
    16cc:	000b4403          	lbu	s0,0(s6)
    16d0:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    16d4:	9c3d                	addw	s0,s0,a5
    16d6:	0ff47413          	andi	s0,s0,255
    16da:	0e898a23          	sb	s0,244(s3)
    16de:	4605                	li	a2,1
    16e0:	008485b3          	add	a1,s1,s0
    16e4:	855a                	mv	a0,s6
    16e6:	00000097          	auipc	ra,0x0
    16ea:	ede080e7          	jalr	-290(ra) # 15c4 <swap_bytes>
    16ee:	9426                	add	s0,s0,s1
    16f0:	000b4783          	lbu	a5,0(s6)
    16f4:	00044703          	lbu	a4,0(s0)
    16f8:	9fb9                	addw	a5,a5,a4
    16fa:	0ff7f793          	andi	a5,a5,255
    16fe:	97a6                	add	a5,a5,s1
    1700:	0007c783          	lbu	a5,0(a5)
    1704:	00f90023          	sb	a5,0(s2)
    1708:	0905                	addi	s2,s2,1
    170a:	fb2a98e3          	bne	s5,s2,16ba <random_bytes+0x36>
    170e:	70e2                	ld	ra,56(sp)
    1710:	7442                	ld	s0,48(sp)
    1712:	74a2                	ld	s1,40(sp)
    1714:	7902                	ld	s2,32(sp)
    1716:	69e2                	ld	s3,24(sp)
    1718:	6a42                	ld	s4,16(sp)
    171a:	6aa2                	ld	s5,8(sp)
    171c:	6b02                	ld	s6,0(sp)
    171e:	6121                	addi	sp,sp,64
    1720:	8082                	ret
    1722:	4501                	li	a0,0
    1724:	00000097          	auipc	ra,0x0
    1728:	ec0080e7          	jalr	-320(ra) # 15e4 <random_init>
    172c:	bfa5                	j	16a4 <random_bytes+0x20>

000000000000172e <random_ulong>:
    172e:	1101                	addi	sp,sp,-32
    1730:	ec06                	sd	ra,24(sp)
    1732:	45a1                	li	a1,8
    1734:	0028                	addi	a0,sp,8
    1736:	00000097          	auipc	ra,0x0
    173a:	f4e080e7          	jalr	-178(ra) # 1684 <random_bytes>
    173e:	6522                	ld	a0,8(sp)
    1740:	60e2                	ld	ra,24(sp)
    1742:	6105                	addi	sp,sp,32
    1744:	8082                	ret

0000000000001746 <shuffle>:
    1746:	c9b9                	beqz	a1,179c <shuffle+0x56>
    1748:	7179                	addi	sp,sp,-48
    174a:	f406                	sd	ra,40(sp)
    174c:	f022                	sd	s0,32(sp)
    174e:	ec26                	sd	s1,24(sp)
    1750:	e84a                	sd	s2,16(sp)
    1752:	e44e                	sd	s3,8(sp)
    1754:	e052                	sd	s4,0(sp)
    1756:	8a2a                	mv	s4,a0
    1758:	89ae                	mv	s3,a1
    175a:	84b2                	mv	s1,a2
    175c:	892a                	mv	s2,a0
    175e:	4401                	li	s0,0
    1760:	00000097          	auipc	ra,0x0
    1764:	fce080e7          	jalr	-50(ra) # 172e <random_ulong>
    1768:	408985b3          	sub	a1,s3,s0
    176c:	02b575b3          	remu	a1,a0,a1
    1770:	95a2                	add	a1,a1,s0
    1772:	029585b3          	mul	a1,a1,s1
    1776:	8626                	mv	a2,s1
    1778:	95d2                	add	a1,a1,s4
    177a:	854a                	mv	a0,s2
    177c:	00000097          	auipc	ra,0x0
    1780:	e48080e7          	jalr	-440(ra) # 15c4 <swap_bytes>
    1784:	0405                	addi	s0,s0,1
    1786:	9926                	add	s2,s2,s1
    1788:	fc899ce3          	bne	s3,s0,1760 <shuffle+0x1a>
    178c:	70a2                	ld	ra,40(sp)
    178e:	7402                	ld	s0,32(sp)
    1790:	64e2                	ld	s1,24(sp)
    1792:	6942                	ld	s2,16(sp)
    1794:	69a2                	ld	s3,8(sp)
    1796:	6a02                	ld	s4,0(sp)
    1798:	6145                	addi	sp,sp,48
    179a:	8082                	ret
    179c:	8082                	ret

000000000000179e <arc4_init>:
    179e:	100500a3          	sb	zero,257(a0)
    17a2:	10050023          	sb	zero,256(a0)
    17a6:	4781                	li	a5,0
    17a8:	10000693          	li	a3,256
    17ac:	00f50733          	add	a4,a0,a5
    17b0:	00f70023          	sb	a5,0(a4)
    17b4:	0785                	addi	a5,a5,1
    17b6:	fed79be3          	bne	a5,a3,17ac <arc4_init+0xe>
    17ba:	86aa                	mv	a3,a0
    17bc:	10050e13          	addi	t3,a0,256
    17c0:	4701                	li	a4,0
    17c2:	4781                	li	a5,0
    17c4:	0006c883          	lbu	a7,0(a3)
    17c8:	00f58833          	add	a6,a1,a5
    17cc:	00084803          	lbu	a6,0(a6)
    17d0:	00e8873b          	addw	a4,a7,a4
    17d4:	00e8073b          	addw	a4,a6,a4
    17d8:	0ff77713          	andi	a4,a4,255
    17dc:	00e50833          	add	a6,a0,a4
    17e0:	00084303          	lbu	t1,0(a6)
    17e4:	00668023          	sb	t1,0(a3)
    17e8:	01180023          	sb	a7,0(a6)
    17ec:	0785                	addi	a5,a5,1
    17ee:	00c7b833          	sltu	a6,a5,a2
    17f2:	41000833          	neg	a6,a6
    17f6:	0107f7b3          	and	a5,a5,a6
    17fa:	0685                	addi	a3,a3,1
    17fc:	fdc694e3          	bne	a3,t3,17c4 <arc4_init+0x26>
    1800:	8082                	ret

0000000000001802 <arc4_crypt>:
    1802:	10054e03          	lbu	t3,256(a0)
    1806:	10154803          	lbu	a6,257(a0)
    180a:	fff60e93          	addi	t4,a2,-1
    180e:	c225                	beqz	a2,186e <arc4_crypt+0x6c>
    1810:	00c588b3          	add	a7,a1,a2
    1814:	86ae                	mv	a3,a1
    1816:	001e031b          	addiw	t1,t3,1
    181a:	40b3033b          	subw	t1,t1,a1
    181e:	00d3073b          	addw	a4,t1,a3
    1822:	0ff77713          	andi	a4,a4,255
    1826:	972a                	add	a4,a4,a0
    1828:	00074603          	lbu	a2,0(a4)
    182c:	0106083b          	addw	a6,a2,a6
    1830:	0ff87813          	andi	a6,a6,255
    1834:	010507b3          	add	a5,a0,a6
    1838:	0007c583          	lbu	a1,0(a5)
    183c:	00b70023          	sb	a1,0(a4)
    1840:	00c78023          	sb	a2,0(a5)
    1844:	0685                	addi	a3,a3,1
    1846:	00074783          	lbu	a5,0(a4)
    184a:	9fb1                	addw	a5,a5,a2
    184c:	0ff7f793          	andi	a5,a5,255
    1850:	97aa                	add	a5,a5,a0
    1852:	0007c783          	lbu	a5,0(a5)
    1856:	fff6c703          	lbu	a4,-1(a3)
    185a:	8fb9                	xor	a5,a5,a4
    185c:	fef68fa3          	sb	a5,-1(a3)
    1860:	fb169fe3          	bne	a3,a7,181e <arc4_crypt+0x1c>
    1864:	2e85                	addiw	t4,t4,1
    1866:	01ce8e3b          	addw	t3,t4,t3
    186a:	0ffe7e13          	andi	t3,t3,255
    186e:	11c50023          	sb	t3,256(a0)
    1872:	110500a3          	sb	a6,257(a0)
    1876:	8082                	ret

0000000000001878 <_main>:
    1878:	1141                	addi	sp,sp,-16
    187a:	e406                	sd	ra,8(sp)
    187c:	fffff097          	auipc	ra,0xfffff
    1880:	784080e7          	jalr	1924(ra) # 1000 <main>
    1884:	4501                	li	a0,0
    1886:	00000097          	auipc	ra,0x0
    188a:	578080e7          	jalr	1400(ra) # 1dfe <exit>
    188e:	60a2                	ld	ra,8(sp)
    1890:	0141                	addi	sp,sp,16
    1892:	8082                	ret

0000000000001894 <strcmp>:
    1894:	00054783          	lbu	a5,0(a0)
    1898:	cb91                	beqz	a5,18ac <strcmp+0x18>
    189a:	0005c703          	lbu	a4,0(a1)
    189e:	00f71763          	bne	a4,a5,18ac <strcmp+0x18>
    18a2:	0505                	addi	a0,a0,1
    18a4:	0585                	addi	a1,a1,1
    18a6:	00054783          	lbu	a5,0(a0)
    18aa:	fbe5                	bnez	a5,189a <strcmp+0x6>
    18ac:	0005c503          	lbu	a0,0(a1)
    18b0:	40a7853b          	subw	a0,a5,a0
    18b4:	8082                	ret

00000000000018b6 <strcpy>:
    18b6:	87aa                	mv	a5,a0
    18b8:	0585                	addi	a1,a1,1
    18ba:	0785                	addi	a5,a5,1
    18bc:	fff5c703          	lbu	a4,-1(a1)
    18c0:	fee78fa3          	sb	a4,-1(a5)
    18c4:	fb75                	bnez	a4,18b8 <strcpy+0x2>
    18c6:	8082                	ret

00000000000018c8 <strlen>:
    18c8:	00054783          	lbu	a5,0(a0)
    18cc:	cf81                	beqz	a5,18e4 <strlen+0x1c>
    18ce:	0505                	addi	a0,a0,1
    18d0:	87aa                	mv	a5,a0
    18d2:	4685                	li	a3,1
    18d4:	9e89                	subw	a3,a3,a0
    18d6:	00f6853b          	addw	a0,a3,a5
    18da:	0785                	addi	a5,a5,1
    18dc:	fff7c703          	lbu	a4,-1(a5)
    18e0:	fb7d                	bnez	a4,18d6 <strlen+0xe>
    18e2:	8082                	ret
    18e4:	4501                	li	a0,0
    18e6:	8082                	ret

00000000000018e8 <memset>:
    18e8:	ca19                	beqz	a2,18fe <memset+0x16>
    18ea:	87aa                	mv	a5,a0
    18ec:	1602                	slli	a2,a2,0x20
    18ee:	9201                	srli	a2,a2,0x20
    18f0:	00a60733          	add	a4,a2,a0
    18f4:	00b78023          	sb	a1,0(a5)
    18f8:	0785                	addi	a5,a5,1
    18fa:	fee79de3          	bne	a5,a4,18f4 <memset+0xc>
    18fe:	8082                	ret

0000000000001900 <memcmp>:
    1900:	1101                	addi	sp,sp,-32
    1902:	ec06                	sd	ra,24(sp)
    1904:	e822                	sd	s0,16(sp)
    1906:	e426                	sd	s1,8(sp)
    1908:	e04a                	sd	s2,0(sp)
    190a:	892a                	mv	s2,a0
    190c:	842e                	mv	s0,a1
    190e:	84b2                	mv	s1,a2
    1910:	c915                	beqz	a0,1944 <memcmp+0x44>
    1912:	c5ad                	beqz	a1,197c <memcmp+0x7c>
    1914:	fff60713          	addi	a4,a2,-1
    1918:	c645                	beqz	a2,19c0 <memcmp+0xc0>
    191a:	87ca                	mv	a5,s2
    191c:	00190613          	addi	a2,s2,1
    1920:	963a                	add	a2,a2,a4
    1922:	0007c683          	lbu	a3,0(a5)
    1926:	00044703          	lbu	a4,0(s0)
    192a:	08e69463          	bne	a3,a4,19b2 <memcmp+0xb2>
    192e:	0785                	addi	a5,a5,1
    1930:	0405                	addi	s0,s0,1
    1932:	fec798e3          	bne	a5,a2,1922 <memcmp+0x22>
    1936:	4501                	li	a0,0
    1938:	60e2                	ld	ra,24(sp)
    193a:	6442                	ld	s0,16(sp)
    193c:	64a2                	ld	s1,8(sp)
    193e:	6902                	ld	s2,0(sp)
    1940:	6105                	addi	sp,sp,32
    1942:	8082                	ret
    1944:	4501                	li	a0,0
    1946:	da6d                	beqz	a2,1938 <memcmp+0x38>
    1948:	03200693          	li	a3,50
    194c:	00002637          	lui	a2,0x2
    1950:	58860613          	addi	a2,a2,1416 # 2588 <crctab+0x400>
    1954:	000025b7          	lui	a1,0x2
    1958:	59858593          	addi	a1,a1,1432 # 2598 <crctab+0x410>
    195c:	4509                	li	a0,2
    195e:	00000097          	auipc	ra,0x0
    1962:	bbc080e7          	jalr	-1092(ra) # 151a <fprintf>
    1966:	650d                	lui	a0,0x3
    1968:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    196c:	00000097          	auipc	ra,0x0
    1970:	492080e7          	jalr	1170(ra) # 1dfe <exit>
    1974:	fff48713          	addi	a4,s1,-1
    1978:	f04d                	bnez	s0,191a <memcmp+0x1a>
    197a:	a011                	j	197e <memcmp+0x7e>
    197c:	c221                	beqz	a2,19bc <memcmp+0xbc>
    197e:	03300693          	li	a3,51
    1982:	00002637          	lui	a2,0x2
    1986:	58860613          	addi	a2,a2,1416 # 2588 <crctab+0x400>
    198a:	000025b7          	lui	a1,0x2
    198e:	5e058593          	addi	a1,a1,1504 # 25e0 <crctab+0x458>
    1992:	4509                	li	a0,2
    1994:	00000097          	auipc	ra,0x0
    1998:	b86080e7          	jalr	-1146(ra) # 151a <fprintf>
    199c:	650d                	lui	a0,0x3
    199e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    19a2:	00000097          	auipc	ra,0x0
    19a6:	45c080e7          	jalr	1116(ra) # 1dfe <exit>
    19aa:	fff48713          	addi	a4,s1,-1
    19ae:	4401                	li	s0,0
    19b0:	b7ad                	j	191a <memcmp+0x1a>
    19b2:	4505                	li	a0,1
    19b4:	f8d762e3          	bltu	a4,a3,1938 <memcmp+0x38>
    19b8:	557d                	li	a0,-1
    19ba:	bfbd                	j	1938 <memcmp+0x38>
    19bc:	4501                	li	a0,0
    19be:	bfad                	j	1938 <memcmp+0x38>
    19c0:	4501                	li	a0,0
    19c2:	bf9d                	j	1938 <memcmp+0x38>

00000000000019c4 <memcpy>:
    19c4:	1101                	addi	sp,sp,-32
    19c6:	ec06                	sd	ra,24(sp)
    19c8:	e822                	sd	s0,16(sp)
    19ca:	e426                	sd	s1,8(sp)
    19cc:	e04a                	sd	s2,0(sp)
    19ce:	84aa                	mv	s1,a0
    19d0:	842e                	mv	s0,a1
    19d2:	8932                	mv	s2,a2
    19d4:	c51d                	beqz	a0,1a02 <memcpy+0x3e>
    19d6:	c1ad                	beqz	a1,1a38 <memcpy+0x74>
    19d8:	fff60693          	addi	a3,a2,-1
    19dc:	ce01                	beqz	a2,19f4 <memcpy+0x30>
    19de:	0685                	addi	a3,a3,1
    19e0:	96a6                	add	a3,a3,s1
    19e2:	87a6                	mv	a5,s1
    19e4:	0405                	addi	s0,s0,1
    19e6:	0785                	addi	a5,a5,1
    19e8:	fff44703          	lbu	a4,-1(s0)
    19ec:	fee78fa3          	sb	a4,-1(a5)
    19f0:	fed79ae3          	bne	a5,a3,19e4 <memcpy+0x20>
    19f4:	8526                	mv	a0,s1
    19f6:	60e2                	ld	ra,24(sp)
    19f8:	6442                	ld	s0,16(sp)
    19fa:	64a2                	ld	s1,8(sp)
    19fc:	6902                	ld	s2,0(sp)
    19fe:	6105                	addi	sp,sp,32
    1a00:	8082                	ret
    1a02:	da6d                	beqz	a2,19f4 <memcpy+0x30>
    1a04:	04000693          	li	a3,64
    1a08:	00002637          	lui	a2,0x2
    1a0c:	58860613          	addi	a2,a2,1416 # 2588 <crctab+0x400>
    1a10:	000025b7          	lui	a1,0x2
    1a14:	62858593          	addi	a1,a1,1576 # 2628 <crctab+0x4a0>
    1a18:	4509                	li	a0,2
    1a1a:	00000097          	auipc	ra,0x0
    1a1e:	b00080e7          	jalr	-1280(ra) # 151a <fprintf>
    1a22:	650d                	lui	a0,0x3
    1a24:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a28:	00000097          	auipc	ra,0x0
    1a2c:	3d6080e7          	jalr	982(ra) # 1dfe <exit>
    1a30:	fff90693          	addi	a3,s2,-1
    1a34:	f44d                	bnez	s0,19de <memcpy+0x1a>
    1a36:	a011                	j	1a3a <memcpy+0x76>
    1a38:	de55                	beqz	a2,19f4 <memcpy+0x30>
    1a3a:	04100693          	li	a3,65
    1a3e:	00002637          	lui	a2,0x2
    1a42:	58860613          	addi	a2,a2,1416 # 2588 <crctab+0x400>
    1a46:	000025b7          	lui	a1,0x2
    1a4a:	67058593          	addi	a1,a1,1648 # 2670 <crctab+0x4e8>
    1a4e:	4509                	li	a0,2
    1a50:	00000097          	auipc	ra,0x0
    1a54:	aca080e7          	jalr	-1334(ra) # 151a <fprintf>
    1a58:	650d                	lui	a0,0x3
    1a5a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a5e:	00000097          	auipc	ra,0x0
    1a62:	3a0080e7          	jalr	928(ra) # 1dfe <exit>
    1a66:	fff90693          	addi	a3,s2,-1
    1a6a:	4401                	li	s0,0
    1a6c:	bf8d                	j	19de <memcpy+0x1a>

0000000000001a6e <itoa>:
    1a6e:	1101                	addi	sp,sp,-32
    1a70:	ec06                	sd	ra,24(sp)
    1a72:	e822                	sd	s0,16(sp)
    1a74:	e426                	sd	s1,8(sp)
    1a76:	842a                	mv	s0,a0
    1a78:	41f5d71b          	sraiw	a4,a1,0x1f
    1a7c:	00e5c7b3          	xor	a5,a1,a4
    1a80:	9f99                	subw	a5,a5,a4
    1a82:	84aa                	mv	s1,a0
    1a84:	862a                	mv	a2,a0
    1a86:	4681                	li	a3,0
    1a88:	4529                	li	a0,10
    1a8a:	4825                	li	a6,9
    1a8c:	88b6                	mv	a7,a3
    1a8e:	2685                	addiw	a3,a3,1
    1a90:	02a7e73b          	remw	a4,a5,a0
    1a94:	0307071b          	addiw	a4,a4,48
    1a98:	00e60023          	sb	a4,0(a2)
    1a9c:	873e                	mv	a4,a5
    1a9e:	02a7c7bb          	divw	a5,a5,a0
    1aa2:	0605                	addi	a2,a2,1
    1aa4:	fee844e3          	blt	a6,a4,1a8c <itoa+0x1e>
    1aa8:	0405c863          	bltz	a1,1af8 <itoa+0x8a>
    1aac:	96a2                	add	a3,a3,s0
    1aae:	00068023          	sb	zero,0(a3)
    1ab2:	8522                	mv	a0,s0
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	e14080e7          	jalr	-492(ra) # 18c8 <strlen>
    1abc:	fff5071b          	addiw	a4,a0,-1
    1ac0:	02e05763          	blez	a4,1aee <itoa+0x80>
    1ac4:	9722                	add	a4,a4,s0
    1ac6:	4681                	li	a3,0
    1ac8:	0004c783          	lbu	a5,0(s1)
    1acc:	00074603          	lbu	a2,0(a4)
    1ad0:	00c48023          	sb	a2,0(s1)
    1ad4:	00f70023          	sb	a5,0(a4)
    1ad8:	0016879b          	addiw	a5,a3,1
    1adc:	0007869b          	sext.w	a3,a5
    1ae0:	0485                	addi	s1,s1,1
    1ae2:	177d                	addi	a4,a4,-1
    1ae4:	fff7c793          	not	a5,a5
    1ae8:	9fa9                	addw	a5,a5,a0
    1aea:	fcf6cfe3          	blt	a3,a5,1ac8 <itoa+0x5a>
    1aee:	60e2                	ld	ra,24(sp)
    1af0:	6442                	ld	s0,16(sp)
    1af2:	64a2                	ld	s1,8(sp)
    1af4:	6105                	addi	sp,sp,32
    1af6:	8082                	ret
    1af8:	96a2                	add	a3,a3,s0
    1afa:	02d00793          	li	a5,45
    1afe:	00f68023          	sb	a5,0(a3)
    1b02:	0028869b          	addiw	a3,a7,2
    1b06:	b75d                	j	1aac <itoa+0x3e>

0000000000001b08 <atoi>:
    1b08:	00054783          	lbu	a5,0(a0)
    1b0c:	02000713          	li	a4,32
    1b10:	00e79763          	bne	a5,a4,1b1e <atoi+0x16>
    1b14:	0505                	addi	a0,a0,1
    1b16:	00054783          	lbu	a5,0(a0)
    1b1a:	fee78de3          	beq	a5,a4,1b14 <atoi+0xc>
    1b1e:	02b00713          	li	a4,43
    1b22:	04e78663          	beq	a5,a4,1b6e <atoi+0x66>
    1b26:	02d00713          	li	a4,45
    1b2a:	4805                	li	a6,1
    1b2c:	04e78463          	beq	a5,a4,1b74 <atoi+0x6c>
    1b30:	00054683          	lbu	a3,0(a0)
    1b34:	fd06879b          	addiw	a5,a3,-48
    1b38:	0ff7f793          	andi	a5,a5,255
    1b3c:	4725                	li	a4,9
    1b3e:	02f76e63          	bltu	a4,a5,1b7a <atoi+0x72>
    1b42:	4601                	li	a2,0
    1b44:	45a5                	li	a1,9
    1b46:	0505                	addi	a0,a0,1
    1b48:	0026179b          	slliw	a5,a2,0x2
    1b4c:	9fb1                	addw	a5,a5,a2
    1b4e:	0017979b          	slliw	a5,a5,0x1
    1b52:	9fb5                	addw	a5,a5,a3
    1b54:	fd07861b          	addiw	a2,a5,-48
    1b58:	00054683          	lbu	a3,0(a0)
    1b5c:	fd06871b          	addiw	a4,a3,-48
    1b60:	0ff77713          	andi	a4,a4,255
    1b64:	fee5f1e3          	bgeu	a1,a4,1b46 <atoi+0x3e>
    1b68:	02c8053b          	mulw	a0,a6,a2
    1b6c:	8082                	ret
    1b6e:	0505                	addi	a0,a0,1
    1b70:	4805                	li	a6,1
    1b72:	bf7d                	j	1b30 <atoi+0x28>
    1b74:	0505                	addi	a0,a0,1
    1b76:	587d                	li	a6,-1
    1b78:	bf65                	j	1b30 <atoi+0x28>
    1b7a:	4601                	li	a2,0
    1b7c:	b7f5                	j	1b68 <atoi+0x60>

0000000000001b7e <check_file_handle>:
    1b7e:	d8010113          	addi	sp,sp,-640
    1b82:	26113c23          	sd	ra,632(sp)
    1b86:	26813823          	sd	s0,624(sp)
    1b8a:	26913423          	sd	s1,616(sp)
    1b8e:	27213023          	sd	s2,608(sp)
    1b92:	25313c23          	sd	s3,600(sp)
    1b96:	25413823          	sd	s4,592(sp)
    1b9a:	25513423          	sd	s5,584(sp)
    1b9e:	25613023          	sd	s6,576(sp)
    1ba2:	23713c23          	sd	s7,568(sp)
    1ba6:	23813823          	sd	s8,560(sp)
    1baa:	23913423          	sd	s9,552(sp)
    1bae:	23a13023          	sd	s10,544(sp)
    1bb2:	21b13c23          	sd	s11,536(sp)
    1bb6:	8baa                	mv	s7,a0
    1bb8:	8a2e                	mv	s4,a1
    1bba:	8c32                	mv	s8,a2
    1bbc:	89b6                	mv	s3,a3
    1bbe:	040c                	addi	a1,sp,512
    1bc0:	00000097          	auipc	ra,0x0
    1bc4:	28e080e7          	jalr	654(ra) # 1e4e <fstat>
    1bc8:	20813603          	ld	a2,520(sp)
    1bcc:	03361163          	bne	a2,s3,1bee <check_file_handle+0x70>
    1bd0:	06098763          	beqz	s3,1c3e <check_file_handle+0xc0>
    1bd4:	4901                	li	s2,0
    1bd6:	20000a93          	li	s5,512
    1bda:	00002cb7          	lui	s9,0x2
    1bde:	00002db7          	lui	s11,0x2
    1be2:	6b0d                	lui	s6,0x3
    1be4:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1be8:	00002d37          	lui	s10,0x2
    1bec:	aa39                	j	1d0a <check_file_handle+0x18c>
    1bee:	86ce                	mv	a3,s3
    1bf0:	85d2                	mv	a1,s4
    1bf2:	00002537          	lui	a0,0x2
    1bf6:	6b850513          	addi	a0,a0,1720 # 26b8 <crctab+0x530>
    1bfa:	00000097          	auipc	ra,0x0
    1bfe:	942080e7          	jalr	-1726(ra) # 153c <printf>
    1c02:	fc0999e3          	bnez	s3,1bd4 <check_file_handle+0x56>
    1c06:	20813683          	ld	a3,520(sp)
    1c0a:	03368a63          	beq	a3,s3,1c3e <check_file_handle+0xc0>
    1c0e:	0a600813          	li	a6,166
    1c12:	000027b7          	lui	a5,0x2
    1c16:	58878793          	addi	a5,a5,1416 # 2588 <crctab+0x400>
    1c1a:	874e                	mv	a4,s3
    1c1c:	8652                	mv	a2,s4
    1c1e:	000025b7          	lui	a1,0x2
    1c22:	78858593          	addi	a1,a1,1928 # 2788 <crctab+0x600>
    1c26:	4509                	li	a0,2
    1c28:	00000097          	auipc	ra,0x0
    1c2c:	8f2080e7          	jalr	-1806(ra) # 151a <fprintf>
    1c30:	650d                	lui	a0,0x3
    1c32:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c36:	00000097          	auipc	ra,0x0
    1c3a:	1c8080e7          	jalr	456(ra) # 1dfe <exit>
    1c3e:	85d2                	mv	a1,s4
    1c40:	00002537          	lui	a0,0x2
    1c44:	7d050513          	addi	a0,a0,2000 # 27d0 <crctab+0x648>
    1c48:	00000097          	auipc	ra,0x0
    1c4c:	8f4080e7          	jalr	-1804(ra) # 153c <printf>
    1c50:	27813083          	ld	ra,632(sp)
    1c54:	27013403          	ld	s0,624(sp)
    1c58:	26813483          	ld	s1,616(sp)
    1c5c:	26013903          	ld	s2,608(sp)
    1c60:	25813983          	ld	s3,600(sp)
    1c64:	25013a03          	ld	s4,592(sp)
    1c68:	24813a83          	ld	s5,584(sp)
    1c6c:	24013b03          	ld	s6,576(sp)
    1c70:	23813b83          	ld	s7,568(sp)
    1c74:	23013c03          	ld	s8,560(sp)
    1c78:	22813c83          	ld	s9,552(sp)
    1c7c:	22013d03          	ld	s10,544(sp)
    1c80:	21813d83          	ld	s11,536(sp)
    1c84:	28010113          	addi	sp,sp,640
    1c88:	8082                	ret
    1c8a:	09d00893          	li	a7,157
    1c8e:	588c8813          	addi	a6,s9,1416 # 2588 <crctab+0x400>
    1c92:	87aa                	mv	a5,a0
    1c94:	8752                	mv	a4,s4
    1c96:	86ca                	mv	a3,s2
    1c98:	8622                	mv	a2,s0
    1c9a:	6e8d8593          	addi	a1,s11,1768 # 26e8 <crctab+0x560>
    1c9e:	4509                	li	a0,2
    1ca0:	00000097          	auipc	ra,0x0
    1ca4:	87a080e7          	jalr	-1926(ra) # 151a <fprintf>
    1ca8:	855a                	mv	a0,s6
    1caa:	00000097          	auipc	ra,0x0
    1cae:	154080e7          	jalr	340(ra) # 1dfe <exit>
    1cb2:	a89d                	j	1d28 <check_file_handle+0x1aa>
    1cb4:	00160593          	addi	a1,a2,1
    1cb8:	0285f163          	bgeu	a1,s0,1cda <check_file_handle+0x15c>
    1cbc:	00c10733          	add	a4,sp,a2
    1cc0:	00b487b3          	add	a5,s1,a1
    1cc4:	00174683          	lbu	a3,1(a4)
    1cc8:	0007c783          	lbu	a5,0(a5)
    1ccc:	00f68763          	beq	a3,a5,1cda <check_file_handle+0x15c>
    1cd0:	0585                	addi	a1,a1,1
    1cd2:	0705                	addi	a4,a4,1
    1cd4:	feb416e3          	bne	s0,a1,1cc0 <check_file_handle+0x142>
    1cd8:	85a2                	mv	a1,s0
    1cda:	08100813          	li	a6,129
    1cde:	588c8793          	addi	a5,s9,1416
    1ce2:	8752                	mv	a4,s4
    1ce4:	012606b3          	add	a3,a2,s2
    1ce8:	40c58633          	sub	a2,a1,a2
    1cec:	730d0593          	addi	a1,s10,1840 # 2730 <crctab+0x5a8>
    1cf0:	4509                	li	a0,2
    1cf2:	00000097          	auipc	ra,0x0
    1cf6:	828080e7          	jalr	-2008(ra) # 151a <fprintf>
    1cfa:	855a                	mv	a0,s6
    1cfc:	00000097          	auipc	ra,0x0
    1d00:	102080e7          	jalr	258(ra) # 1dfe <exit>
    1d04:	9922                	add	s2,s2,s0
    1d06:	f13970e3          	bgeu	s2,s3,1c06 <check_file_handle+0x88>
    1d0a:	41298433          	sub	s0,s3,s2
    1d0e:	008af363          	bgeu	s5,s0,1d14 <check_file_handle+0x196>
    1d12:	8456                	mv	s0,s5
    1d14:	0004061b          	sext.w	a2,s0
    1d18:	858a                	mv	a1,sp
    1d1a:	855e                	mv	a0,s7
    1d1c:	00000097          	auipc	ra,0x0
    1d20:	10a080e7          	jalr	266(ra) # 1e26 <read>
    1d24:	f68513e3          	bne	a0,s0,1c8a <check_file_handle+0x10c>
    1d28:	012c04b3          	add	s1,s8,s2
    1d2c:	8622                	mv	a2,s0
    1d2e:	85a6                	mv	a1,s1
    1d30:	850a                	mv	a0,sp
    1d32:	00000097          	auipc	ra,0x0
    1d36:	bce080e7          	jalr	-1074(ra) # 1900 <memcmp>
    1d3a:	d569                	beqz	a0,1d04 <check_file_handle+0x186>
    1d3c:	03298163          	beq	s3,s2,1d5e <check_file_handle+0x1e0>
    1d40:	870a                	mv	a4,sp
    1d42:	4601                	li	a2,0
    1d44:	00c487b3          	add	a5,s1,a2
    1d48:	00074683          	lbu	a3,0(a4)
    1d4c:	0007c783          	lbu	a5,0(a5)
    1d50:	f6f692e3          	bne	a3,a5,1cb4 <check_file_handle+0x136>
    1d54:	0605                	addi	a2,a2,1
    1d56:	0705                	addi	a4,a4,1
    1d58:	fe8666e3          	bltu	a2,s0,1d44 <check_file_handle+0x1c6>
    1d5c:	bfa1                	j	1cb4 <check_file_handle+0x136>
    1d5e:	4601                	li	a2,0
    1d60:	4585                	li	a1,1
    1d62:	bfa5                	j	1cda <check_file_handle+0x15c>

0000000000001d64 <check_file>:
    1d64:	7179                	addi	sp,sp,-48
    1d66:	f406                	sd	ra,40(sp)
    1d68:	f022                	sd	s0,32(sp)
    1d6a:	ec26                	sd	s1,24(sp)
    1d6c:	e84a                	sd	s2,16(sp)
    1d6e:	e44e                	sd	s3,8(sp)
    1d70:	84aa                	mv	s1,a0
    1d72:	892e                	mv	s2,a1
    1d74:	89b2                	mv	s3,a2
    1d76:	4581                	li	a1,0
    1d78:	00000097          	auipc	ra,0x0
    1d7c:	0a6080e7          	jalr	166(ra) # 1e1e <open>
    1d80:	842a                	mv	s0,a0
    1d82:	4789                	li	a5,2
    1d84:	02a7df63          	bge	a5,a0,1dc2 <check_file+0x5e>
    1d88:	86ce                	mv	a3,s3
    1d8a:	864a                	mv	a2,s2
    1d8c:	85a6                	mv	a1,s1
    1d8e:	8522                	mv	a0,s0
    1d90:	00000097          	auipc	ra,0x0
    1d94:	dee080e7          	jalr	-530(ra) # 1b7e <check_file_handle>
    1d98:	85a6                	mv	a1,s1
    1d9a:	00003537          	lui	a0,0x3
    1d9e:	85850513          	addi	a0,a0,-1960 # 2858 <crctab+0x6d0>
    1da2:	fffff097          	auipc	ra,0xfffff
    1da6:	79a080e7          	jalr	1946(ra) # 153c <printf>
    1daa:	8522                	mv	a0,s0
    1dac:	00000097          	auipc	ra,0x0
    1db0:	09a080e7          	jalr	154(ra) # 1e46 <close>
    1db4:	70a2                	ld	ra,40(sp)
    1db6:	7402                	ld	s0,32(sp)
    1db8:	64e2                	ld	s1,24(sp)
    1dba:	6942                	ld	s2,16(sp)
    1dbc:	69a2                	ld	s3,8(sp)
    1dbe:	6145                	addi	sp,sp,48
    1dc0:	8082                	ret
    1dc2:	0ae00713          	li	a4,174
    1dc6:	000026b7          	lui	a3,0x2
    1dca:	58868693          	addi	a3,a3,1416 # 2588 <crctab+0x400>
    1dce:	8626                	mv	a2,s1
    1dd0:	000025b7          	lui	a1,0x2
    1dd4:	7f058593          	addi	a1,a1,2032 # 27f0 <crctab+0x668>
    1dd8:	4509                	li	a0,2
    1dda:	fffff097          	auipc	ra,0xfffff
    1dde:	740080e7          	jalr	1856(ra) # 151a <fprintf>
    1de2:	650d                	lui	a0,0x3
    1de4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1de8:	00000097          	auipc	ra,0x0
    1dec:	016080e7          	jalr	22(ra) # 1dfe <exit>
    1df0:	bf61                	j	1d88 <check_file+0x24>

0000000000001df2 <r_sp>:
    1df2:	850a                	mv	a0,sp
    1df4:	8082                	ret

0000000000001df6 <halt>:
    1df6:	4885                	li	a7,1
    1df8:	00000073          	ecall
    1dfc:	8082                	ret

0000000000001dfe <exit>:
    1dfe:	4889                	li	a7,2
    1e00:	00000073          	ecall
    1e04:	8082                	ret

0000000000001e06 <exec>:
    1e06:	488d                	li	a7,3
    1e08:	00000073          	ecall
    1e0c:	8082                	ret

0000000000001e0e <wait>:
    1e0e:	4891                	li	a7,4
    1e10:	00000073          	ecall
    1e14:	8082                	ret

0000000000001e16 <remove>:
    1e16:	4895                	li	a7,5
    1e18:	00000073          	ecall
    1e1c:	8082                	ret

0000000000001e1e <open>:
    1e1e:	4899                	li	a7,6
    1e20:	00000073          	ecall
    1e24:	8082                	ret

0000000000001e26 <read>:
    1e26:	489d                	li	a7,7
    1e28:	00000073          	ecall
    1e2c:	8082                	ret

0000000000001e2e <write>:
    1e2e:	48a1                	li	a7,8
    1e30:	00000073          	ecall
    1e34:	8082                	ret

0000000000001e36 <seek>:
    1e36:	48a5                	li	a7,9
    1e38:	00000073          	ecall
    1e3c:	8082                	ret

0000000000001e3e <tell>:
    1e3e:	48a9                	li	a7,10
    1e40:	00000073          	ecall
    1e44:	8082                	ret

0000000000001e46 <close>:
    1e46:	48ad                	li	a7,11
    1e48:	00000073          	ecall
    1e4c:	8082                	ret

0000000000001e4e <fstat>:
    1e4e:	48b1                	li	a7,12
    1e50:	00000073          	ecall
    1e54:	8082                	ret

0000000000001e56 <mmap>:
    1e56:	48b5                	li	a7,13
    1e58:	00000073          	ecall
    1e5c:	8082                	ret

0000000000001e5e <munmap>:
    1e5e:	48b9                	li	a7,14
    1e60:	00000073          	ecall
    1e64:	8082                	ret

0000000000001e66 <chdir>:
    1e66:	48bd                	li	a7,15
    1e68:	00000073          	ecall
    1e6c:	8082                	ret

0000000000001e6e <mkdir>:
    1e6e:	48c1                	li	a7,16
    1e70:	00000073          	ecall
    1e74:	8082                	ret
