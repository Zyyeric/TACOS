
build/user/vm/child-qsort-mm:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <qsort_bytes>:
    1000:	4785                	li	a5,1
    1002:	1ab7f663          	bgeu	a5,a1,11ae <qsort_bytes+0x1ae>
    1006:	7179                	addi	sp,sp,-48
    1008:	f406                	sd	ra,40(sp)
    100a:	f022                	sd	s0,32(sp)
    100c:	ec26                	sd	s1,24(sp)
    100e:	e84a                	sd	s2,16(sp)
    1010:	e44e                	sd	s3,8(sp)
    1012:	84aa                	mv	s1,a0
    1014:	892e                	mv	s2,a1
    1016:	fff58613          	addi	a2,a1,-1
    101a:	962a                	add	a2,a2,a0
    101c:	87aa                	mv	a5,a0
    101e:	0007c683          	lbu	a3,0(a5)
    1022:	0017c703          	lbu	a4,1(a5)
    1026:	16d76063          	bltu	a4,a3,1186 <qsort_bytes+0x186>
    102a:	0785                	addi	a5,a5,1
    102c:	fec799e3          	bne	a5,a2,101e <qsort_bytes+0x1e>
    1030:	70a2                	ld	ra,40(sp)
    1032:	7402                	ld	s0,32(sp)
    1034:	64e2                	ld	s1,24(sp)
    1036:	6942                	ld	s2,16(sp)
    1038:	69a2                	ld	s3,8(sp)
    103a:	6145                	addi	sp,sp,48
    103c:	8082                	ret
    103e:	c815                	beqz	s0,1072 <qsort_bytes+0x72>
    1040:	4781                	li	a5,0
    1042:	00f48733          	add	a4,s1,a5
    1046:	00074703          	lbu	a4,0(a4)
    104a:	0b077e63          	bgeu	a4,a6,1106 <qsort_bytes+0x106>
    104e:	0785                	addi	a5,a5,1
    1050:	fef419e3          	bne	s0,a5,1042 <qsort_bytes+0x42>
    1054:	1127f663          	bgeu	a5,s2,1160 <qsort_bytes+0x160>
    1058:	97a6                	add	a5,a5,s1
    105a:	012486b3          	add	a3,s1,s2
    105e:	0007c703          	lbu	a4,0(a5)
    1062:	0b076263          	bltu	a4,a6,1106 <qsort_bytes+0x106>
    1066:	0785                	addi	a5,a5,1
    1068:	fef69be3          	bne	a3,a5,105e <qsort_bytes+0x5e>
    106c:	a8d5                	j	1160 <qsort_bytes+0x160>
    106e:	844a                	mv	s0,s2
    1070:	bfc1                	j	1040 <qsort_bytes+0x40>
    1072:	87a2                	mv	a5,s0
    1074:	b7d5                	j	1058 <qsort_bytes+0x58>
    1076:	8746                	mv	a4,a7
    1078:	0605                	addi	a2,a2,1
    107a:	0885                	addi	a7,a7,1
    107c:	fcf701e3          	beq	a4,a5,103e <qsort_bytes+0x3e>
    1080:	85b2                	mv	a1,a2
    1082:	00064303          	lbu	t1,0(a2)
    1086:	0003071b          	sext.w	a4,t1
    108a:	fea746e3          	blt	a4,a0,1076 <qsort_bytes+0x76>
    108e:	147d                	addi	s0,s0,-1
    1090:	17fd                	addi	a5,a5,-1
    1092:	00c78c63          	beq	a5,a2,10aa <qsort_bytes+0xaa>
    1096:	0007c703          	lbu	a4,0(a5)
    109a:	0007069b          	sext.w	a3,a4
    109e:	04a6c163          	blt	a3,a0,10e0 <qsort_bytes+0xe0>
    10a2:	147d                	addi	s0,s0,-1
    10a4:	17fd                	addi	a5,a5,-1
    10a6:	feb798e3          	bne	a5,a1,1096 <qsort_bytes+0x96>
    10aa:	c80d                	beqz	s0,10dc <qsort_bytes+0xdc>
    10ac:	4781                	li	a5,0
    10ae:	00f48733          	add	a4,s1,a5
    10b2:	00074703          	lbu	a4,0(a4)
    10b6:	07077f63          	bgeu	a4,a6,1134 <qsort_bytes+0x134>
    10ba:	0785                	addi	a5,a5,1
    10bc:	fe8799e3          	bne	a5,s0,10ae <qsort_bytes+0xae>
    10c0:	0b247063          	bgeu	s0,s2,1160 <qsort_bytes+0x160>
    10c4:	87a2                	mv	a5,s0
    10c6:	97a6                	add	a5,a5,s1
    10c8:	012486b3          	add	a3,s1,s2
    10cc:	0007c703          	lbu	a4,0(a5)
    10d0:	07076263          	bltu	a4,a6,1134 <qsort_bytes+0x134>
    10d4:	0785                	addi	a5,a5,1
    10d6:	fef69be3          	bne	a3,a5,10cc <qsort_bytes+0xcc>
    10da:	a059                	j	1160 <qsort_bytes+0x160>
    10dc:	87a2                	mv	a5,s0
    10de:	b7e5                	j	10c6 <qsort_bytes+0xc6>
    10e0:	00e58023          	sb	a4,0(a1)
    10e4:	00678023          	sb	t1,0(a5)
    10e8:	8746                	mv	a4,a7
    10ea:	b779                	j	1078 <qsort_bytes+0x78>
    10ec:	85ca                	mv	a1,s2
    10ee:	854e                	mv	a0,s3
    10f0:	00000097          	auipc	ra,0x0
    10f4:	f10080e7          	jalr	-240(ra) # 1000 <qsort_bytes>
    10f8:	85a2                	mv	a1,s0
    10fa:	8526                	mv	a0,s1
    10fc:	00000097          	auipc	ra,0x0
    1100:	f04080e7          	jalr	-252(ra) # 1000 <qsort_bytes>
    1104:	b735                	j	1030 <qsort_bytes+0x30>
    1106:	03200693          	li	a3,50
    110a:	00002637          	lui	a2,0x2
    110e:	e5060613          	addi	a2,a2,-432 # 1e50 <mkdir+0x16>
    1112:	000025b7          	lui	a1,0x2
    1116:	e6058593          	addi	a1,a1,-416 # 1e60 <mkdir+0x26>
    111a:	4509                	li	a0,2
    111c:	00000097          	auipc	ra,0x0
    1120:	3ca080e7          	jalr	970(ra) # 14e6 <fprintf>
    1124:	650d                	lui	a0,0x3
    1126:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    112a:	00001097          	auipc	ra,0x1
    112e:	ca0080e7          	jalr	-864(ra) # 1dca <exit>
    1132:	a03d                	j	1160 <qsort_bytes+0x160>
    1134:	04100693          	li	a3,65
    1138:	00002637          	lui	a2,0x2
    113c:	e5060613          	addi	a2,a2,-432 # 1e50 <mkdir+0x16>
    1140:	000025b7          	lui	a1,0x2
    1144:	e6058593          	addi	a1,a1,-416 # 1e60 <mkdir+0x26>
    1148:	4509                	li	a0,2
    114a:	00000097          	auipc	ra,0x0
    114e:	39c080e7          	jalr	924(ra) # 14e6 <fprintf>
    1152:	650d                	lui	a0,0x3
    1154:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1158:	00001097          	auipc	ra,0x1
    115c:	c72080e7          	jalr	-910(ra) # 1dca <exit>
    1160:	008489b3          	add	s3,s1,s0
    1164:	40890933          	sub	s2,s2,s0
    1168:	f88962e3          	bltu	s2,s0,10ec <qsort_bytes+0xec>
    116c:	85a2                	mv	a1,s0
    116e:	8526                	mv	a0,s1
    1170:	00000097          	auipc	ra,0x0
    1174:	e90080e7          	jalr	-368(ra) # 1000 <qsort_bytes>
    1178:	85ca                	mv	a1,s2
    117a:	854e                	mv	a0,s3
    117c:	00000097          	auipc	ra,0x0
    1180:	e84080e7          	jalr	-380(ra) # 1000 <qsort_bytes>
    1184:	b575                	j	1030 <qsort_bytes+0x30>
    1186:	00000097          	auipc	ra,0x0
    118a:	574080e7          	jalr	1396(ra) # 16fa <random_ulong>
    118e:	032577b3          	remu	a5,a0,s2
    1192:	97a6                	add	a5,a5,s1
    1194:	0007c803          	lbu	a6,0(a5)
    1198:	0008051b          	sext.w	a0,a6
    119c:	012487b3          	add	a5,s1,s2
    11a0:	ecf487e3          	beq	s1,a5,106e <qsort_bytes+0x6e>
    11a4:	00148893          	addi	a7,s1,1
    11a8:	8626                	mv	a2,s1
    11aa:	844a                	mv	s0,s2
    11ac:	bdd1                	j	1080 <qsort_bytes+0x80>
    11ae:	8082                	ret

00000000000011b0 <main>:
    11b0:	1141                	addi	sp,sp,-16
    11b2:	e406                	sd	ra,8(sp)
    11b4:	e022                	sd	s0,0(sp)
    11b6:	87ae                	mv	a5,a1
    11b8:	4589                	li	a1,2
    11ba:	6788                	ld	a0,8(a5)
    11bc:	00001097          	auipc	ra,0x1
    11c0:	c2e080e7          	jalr	-978(ra) # 1dea <open>
    11c4:	842a                	mv	s0,a0
    11c6:	4789                	li	a5,2
    11c8:	02a7de63          	bge	a5,a0,1204 <main+0x54>
    11cc:	100005b7          	lui	a1,0x10000
    11d0:	8522                	mv	a0,s0
    11d2:	00001097          	auipc	ra,0x1
    11d6:	c50080e7          	jalr	-944(ra) # 1e22 <mmap>
    11da:	57fd                	li	a5,-1
    11dc:	04f50a63          	beq	a0,a5,1230 <main+0x80>
    11e0:	000205b7          	lui	a1,0x20
    11e4:	10000537          	lui	a0,0x10000
    11e8:	00000097          	auipc	ra,0x0
    11ec:	e18080e7          	jalr	-488(ra) # 1000 <qsort_bytes>
    11f0:	05000513          	li	a0,80
    11f4:	00001097          	auipc	ra,0x1
    11f8:	bd6080e7          	jalr	-1066(ra) # 1dca <exit>
    11fc:	60a2                	ld	ra,8(sp)
    11fe:	6402                	ld	s0,0(sp)
    1200:	0141                	addi	sp,sp,16
    1202:	8082                	ret
    1204:	46ad                	li	a3,11
    1206:	00002637          	lui	a2,0x2
    120a:	eb860613          	addi	a2,a2,-328 # 1eb8 <mkdir+0x7e>
    120e:	000025b7          	lui	a1,0x2
    1212:	ed858593          	addi	a1,a1,-296 # 1ed8 <mkdir+0x9e>
    1216:	4509                	li	a0,2
    1218:	00000097          	auipc	ra,0x0
    121c:	2ce080e7          	jalr	718(ra) # 14e6 <fprintf>
    1220:	650d                	lui	a0,0x3
    1222:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1226:	00001097          	auipc	ra,0x1
    122a:	ba4080e7          	jalr	-1116(ra) # 1dca <exit>
    122e:	bf79                	j	11cc <main+0x1c>
    1230:	46b1                	li	a3,12
    1232:	00002637          	lui	a2,0x2
    1236:	eb860613          	addi	a2,a2,-328 # 1eb8 <mkdir+0x7e>
    123a:	000025b7          	lui	a1,0x2
    123e:	f2858593          	addi	a1,a1,-216 # 1f28 <mkdir+0xee>
    1242:	4509                	li	a0,2
    1244:	00000097          	auipc	ra,0x0
    1248:	2a2080e7          	jalr	674(ra) # 14e6 <fprintf>
    124c:	650d                	lui	a0,0x3
    124e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1252:	00001097          	auipc	ra,0x1
    1256:	b78080e7          	jalr	-1160(ra) # 1dca <exit>
    125a:	b759                	j	11e0 <main+0x30>

000000000000125c <putc>:
    125c:	1101                	addi	sp,sp,-32
    125e:	ec06                	sd	ra,24(sp)
    1260:	00b107a3          	sb	a1,15(sp)
    1264:	4605                	li	a2,1
    1266:	00f10593          	addi	a1,sp,15
    126a:	00001097          	auipc	ra,0x1
    126e:	b90080e7          	jalr	-1136(ra) # 1dfa <write>
    1272:	60e2                	ld	ra,24(sp)
    1274:	6105                	addi	sp,sp,32
    1276:	8082                	ret

0000000000001278 <printint>:
    1278:	7179                	addi	sp,sp,-48
    127a:	f406                	sd	ra,40(sp)
    127c:	f022                	sd	s0,32(sp)
    127e:	ec26                	sd	s1,24(sp)
    1280:	e84a                	sd	s2,16(sp)
    1282:	84aa                	mv	s1,a0
    1284:	c299                	beqz	a3,128a <printint+0x12>
    1286:	0805c363          	bltz	a1,130c <printint+0x94>
    128a:	2581                	sext.w	a1,a1
    128c:	4881                	li	a7,0
    128e:	868a                	mv	a3,sp
    1290:	4701                	li	a4,0
    1292:	2601                	sext.w	a2,a2
    1294:	00002537          	lui	a0,0x2
    1298:	f7850513          	addi	a0,a0,-136 # 1f78 <digits>
    129c:	883a                	mv	a6,a4
    129e:	2705                	addiw	a4,a4,1
    12a0:	02c5f7bb          	remuw	a5,a1,a2
    12a4:	1782                	slli	a5,a5,0x20
    12a6:	9381                	srli	a5,a5,0x20
    12a8:	97aa                	add	a5,a5,a0
    12aa:	0007c783          	lbu	a5,0(a5)
    12ae:	00f68023          	sb	a5,0(a3)
    12b2:	0005879b          	sext.w	a5,a1
    12b6:	02c5d5bb          	divuw	a1,a1,a2
    12ba:	0685                	addi	a3,a3,1
    12bc:	fec7f0e3          	bgeu	a5,a2,129c <printint+0x24>
    12c0:	00088a63          	beqz	a7,12d4 <printint+0x5c>
    12c4:	081c                	addi	a5,sp,16
    12c6:	973e                	add	a4,a4,a5
    12c8:	02d00793          	li	a5,45
    12cc:	fef70823          	sb	a5,-16(a4)
    12d0:	0028071b          	addiw	a4,a6,2
    12d4:	02e05663          	blez	a4,1300 <printint+0x88>
    12d8:	00e10433          	add	s0,sp,a4
    12dc:	fff10913          	addi	s2,sp,-1
    12e0:	993a                	add	s2,s2,a4
    12e2:	377d                	addiw	a4,a4,-1
    12e4:	1702                	slli	a4,a4,0x20
    12e6:	9301                	srli	a4,a4,0x20
    12e8:	40e90933          	sub	s2,s2,a4
    12ec:	fff44583          	lbu	a1,-1(s0)
    12f0:	8526                	mv	a0,s1
    12f2:	00000097          	auipc	ra,0x0
    12f6:	f6a080e7          	jalr	-150(ra) # 125c <putc>
    12fa:	147d                	addi	s0,s0,-1
    12fc:	ff2418e3          	bne	s0,s2,12ec <printint+0x74>
    1300:	70a2                	ld	ra,40(sp)
    1302:	7402                	ld	s0,32(sp)
    1304:	64e2                	ld	s1,24(sp)
    1306:	6942                	ld	s2,16(sp)
    1308:	6145                	addi	sp,sp,48
    130a:	8082                	ret
    130c:	40b005bb          	negw	a1,a1
    1310:	4885                	li	a7,1
    1312:	bfb5                	j	128e <printint+0x16>

0000000000001314 <vprintf>:
    1314:	7159                	addi	sp,sp,-112
    1316:	f486                	sd	ra,104(sp)
    1318:	f0a2                	sd	s0,96(sp)
    131a:	eca6                	sd	s1,88(sp)
    131c:	e8ca                	sd	s2,80(sp)
    131e:	e4ce                	sd	s3,72(sp)
    1320:	e0d2                	sd	s4,64(sp)
    1322:	fc56                	sd	s5,56(sp)
    1324:	f85a                	sd	s6,48(sp)
    1326:	f45e                	sd	s7,40(sp)
    1328:	f062                	sd	s8,32(sp)
    132a:	ec66                	sd	s9,24(sp)
    132c:	e86a                	sd	s10,16(sp)
    132e:	e46e                	sd	s11,8(sp)
    1330:	0005c483          	lbu	s1,0(a1)
    1334:	18048a63          	beqz	s1,14c8 <vprintf+0x1b4>
    1338:	8a2a                	mv	s4,a0
    133a:	8ab2                	mv	s5,a2
    133c:	00158413          	addi	s0,a1,1
    1340:	4901                	li	s2,0
    1342:	02500993          	li	s3,37
    1346:	06400b93          	li	s7,100
    134a:	06c00c13          	li	s8,108
    134e:	07800c93          	li	s9,120
    1352:	07000d13          	li	s10,112
    1356:	00002db7          	lui	s11,0x2
    135a:	00002b37          	lui	s6,0x2
    135e:	f78b0b13          	addi	s6,s6,-136 # 1f78 <digits>
    1362:	a839                	j	1380 <vprintf+0x6c>
    1364:	85a6                	mv	a1,s1
    1366:	8552                	mv	a0,s4
    1368:	00000097          	auipc	ra,0x0
    136c:	ef4080e7          	jalr	-268(ra) # 125c <putc>
    1370:	a019                	j	1376 <vprintf+0x62>
    1372:	01390f63          	beq	s2,s3,1390 <vprintf+0x7c>
    1376:	0405                	addi	s0,s0,1
    1378:	fff44483          	lbu	s1,-1(s0)
    137c:	14048663          	beqz	s1,14c8 <vprintf+0x1b4>
    1380:	0004879b          	sext.w	a5,s1
    1384:	fe0917e3          	bnez	s2,1372 <vprintf+0x5e>
    1388:	fd379ee3          	bne	a5,s3,1364 <vprintf+0x50>
    138c:	893e                	mv	s2,a5
    138e:	b7e5                	j	1376 <vprintf+0x62>
    1390:	05778063          	beq	a5,s7,13d0 <vprintf+0xbc>
    1394:	05878c63          	beq	a5,s8,13ec <vprintf+0xd8>
    1398:	07978863          	beq	a5,s9,1408 <vprintf+0xf4>
    139c:	09a78463          	beq	a5,s10,1424 <vprintf+0x110>
    13a0:	07300713          	li	a4,115
    13a4:	0ce78263          	beq	a5,a4,1468 <vprintf+0x154>
    13a8:	06300713          	li	a4,99
    13ac:	0ee78763          	beq	a5,a4,149a <vprintf+0x186>
    13b0:	11378163          	beq	a5,s3,14b2 <vprintf+0x19e>
    13b4:	85ce                	mv	a1,s3
    13b6:	8552                	mv	a0,s4
    13b8:	00000097          	auipc	ra,0x0
    13bc:	ea4080e7          	jalr	-348(ra) # 125c <putc>
    13c0:	85a6                	mv	a1,s1
    13c2:	8552                	mv	a0,s4
    13c4:	00000097          	auipc	ra,0x0
    13c8:	e98080e7          	jalr	-360(ra) # 125c <putc>
    13cc:	4901                	li	s2,0
    13ce:	b765                	j	1376 <vprintf+0x62>
    13d0:	008a8493          	addi	s1,s5,8
    13d4:	4685                	li	a3,1
    13d6:	4629                	li	a2,10
    13d8:	000aa583          	lw	a1,0(s5)
    13dc:	8552                	mv	a0,s4
    13de:	00000097          	auipc	ra,0x0
    13e2:	e9a080e7          	jalr	-358(ra) # 1278 <printint>
    13e6:	8aa6                	mv	s5,s1
    13e8:	4901                	li	s2,0
    13ea:	b771                	j	1376 <vprintf+0x62>
    13ec:	008a8493          	addi	s1,s5,8
    13f0:	4681                	li	a3,0
    13f2:	4629                	li	a2,10
    13f4:	000aa583          	lw	a1,0(s5)
    13f8:	8552                	mv	a0,s4
    13fa:	00000097          	auipc	ra,0x0
    13fe:	e7e080e7          	jalr	-386(ra) # 1278 <printint>
    1402:	8aa6                	mv	s5,s1
    1404:	4901                	li	s2,0
    1406:	bf85                	j	1376 <vprintf+0x62>
    1408:	008a8493          	addi	s1,s5,8
    140c:	4681                	li	a3,0
    140e:	4641                	li	a2,16
    1410:	000aa583          	lw	a1,0(s5)
    1414:	8552                	mv	a0,s4
    1416:	00000097          	auipc	ra,0x0
    141a:	e62080e7          	jalr	-414(ra) # 1278 <printint>
    141e:	8aa6                	mv	s5,s1
    1420:	4901                	li	s2,0
    1422:	bf91                	j	1376 <vprintf+0x62>
    1424:	008a8913          	addi	s2,s5,8
    1428:	000aba83          	ld	s5,0(s5)
    142c:	03000593          	li	a1,48
    1430:	8552                	mv	a0,s4
    1432:	00000097          	auipc	ra,0x0
    1436:	e2a080e7          	jalr	-470(ra) # 125c <putc>
    143a:	85e6                	mv	a1,s9
    143c:	8552                	mv	a0,s4
    143e:	00000097          	auipc	ra,0x0
    1442:	e1e080e7          	jalr	-482(ra) # 125c <putc>
    1446:	44c1                	li	s1,16
    1448:	03cad793          	srli	a5,s5,0x3c
    144c:	97da                	add	a5,a5,s6
    144e:	0007c583          	lbu	a1,0(a5)
    1452:	8552                	mv	a0,s4
    1454:	00000097          	auipc	ra,0x0
    1458:	e08080e7          	jalr	-504(ra) # 125c <putc>
    145c:	0a92                	slli	s5,s5,0x4
    145e:	34fd                	addiw	s1,s1,-1
    1460:	f4e5                	bnez	s1,1448 <vprintf+0x134>
    1462:	8aca                	mv	s5,s2
    1464:	4901                	li	s2,0
    1466:	bf01                	j	1376 <vprintf+0x62>
    1468:	008a8913          	addi	s2,s5,8
    146c:	000ab483          	ld	s1,0(s5)
    1470:	c085                	beqz	s1,1490 <vprintf+0x17c>
    1472:	0004c583          	lbu	a1,0(s1)
    1476:	c5b1                	beqz	a1,14c2 <vprintf+0x1ae>
    1478:	8552                	mv	a0,s4
    147a:	00000097          	auipc	ra,0x0
    147e:	de2080e7          	jalr	-542(ra) # 125c <putc>
    1482:	0485                	addi	s1,s1,1
    1484:	0004c583          	lbu	a1,0(s1)
    1488:	f9e5                	bnez	a1,1478 <vprintf+0x164>
    148a:	8aca                	mv	s5,s2
    148c:	4901                	li	s2,0
    148e:	b5e5                	j	1376 <vprintf+0x62>
    1490:	f70d8493          	addi	s1,s11,-144 # 1f70 <mkdir+0x136>
    1494:	02800593          	li	a1,40
    1498:	b7c5                	j	1478 <vprintf+0x164>
    149a:	008a8493          	addi	s1,s5,8
    149e:	000ac583          	lbu	a1,0(s5)
    14a2:	8552                	mv	a0,s4
    14a4:	00000097          	auipc	ra,0x0
    14a8:	db8080e7          	jalr	-584(ra) # 125c <putc>
    14ac:	8aa6                	mv	s5,s1
    14ae:	4901                	li	s2,0
    14b0:	b5d9                	j	1376 <vprintf+0x62>
    14b2:	85ce                	mv	a1,s3
    14b4:	8552                	mv	a0,s4
    14b6:	00000097          	auipc	ra,0x0
    14ba:	da6080e7          	jalr	-602(ra) # 125c <putc>
    14be:	4901                	li	s2,0
    14c0:	bd5d                	j	1376 <vprintf+0x62>
    14c2:	8aca                	mv	s5,s2
    14c4:	4901                	li	s2,0
    14c6:	bd45                	j	1376 <vprintf+0x62>
    14c8:	70a6                	ld	ra,104(sp)
    14ca:	7406                	ld	s0,96(sp)
    14cc:	64e6                	ld	s1,88(sp)
    14ce:	6946                	ld	s2,80(sp)
    14d0:	69a6                	ld	s3,72(sp)
    14d2:	6a06                	ld	s4,64(sp)
    14d4:	7ae2                	ld	s5,56(sp)
    14d6:	7b42                	ld	s6,48(sp)
    14d8:	7ba2                	ld	s7,40(sp)
    14da:	7c02                	ld	s8,32(sp)
    14dc:	6ce2                	ld	s9,24(sp)
    14de:	6d42                	ld	s10,16(sp)
    14e0:	6da2                	ld	s11,8(sp)
    14e2:	6165                	addi	sp,sp,112
    14e4:	8082                	ret

00000000000014e6 <fprintf>:
    14e6:	715d                	addi	sp,sp,-80
    14e8:	ec06                	sd	ra,24(sp)
    14ea:	f032                	sd	a2,32(sp)
    14ec:	f436                	sd	a3,40(sp)
    14ee:	f83a                	sd	a4,48(sp)
    14f0:	fc3e                	sd	a5,56(sp)
    14f2:	e0c2                	sd	a6,64(sp)
    14f4:	e4c6                	sd	a7,72(sp)
    14f6:	1010                	addi	a2,sp,32
    14f8:	e432                	sd	a2,8(sp)
    14fa:	00000097          	auipc	ra,0x0
    14fe:	e1a080e7          	jalr	-486(ra) # 1314 <vprintf>
    1502:	60e2                	ld	ra,24(sp)
    1504:	6161                	addi	sp,sp,80
    1506:	8082                	ret

0000000000001508 <printf>:
    1508:	711d                	addi	sp,sp,-96
    150a:	ec06                	sd	ra,24(sp)
    150c:	f42e                	sd	a1,40(sp)
    150e:	f832                	sd	a2,48(sp)
    1510:	fc36                	sd	a3,56(sp)
    1512:	e0ba                	sd	a4,64(sp)
    1514:	e4be                	sd	a5,72(sp)
    1516:	e8c2                	sd	a6,80(sp)
    1518:	ecc6                	sd	a7,88(sp)
    151a:	1030                	addi	a2,sp,40
    151c:	e432                	sd	a2,8(sp)
    151e:	85aa                	mv	a1,a0
    1520:	4505                	li	a0,1
    1522:	00000097          	auipc	ra,0x0
    1526:	df2080e7          	jalr	-526(ra) # 1314 <vprintf>
    152a:	60e2                	ld	ra,24(sp)
    152c:	6125                	addi	sp,sp,96
    152e:	8082                	ret

0000000000001530 <cksum>:
    1530:	cdb1                	beqz	a1,158c <cksum+0x5c>
    1532:	00b50833          	add	a6,a0,a1
    1536:	4781                	li	a5,0
    1538:	00002637          	lui	a2,0x2
    153c:	f9060613          	addi	a2,a2,-112 # 1f90 <crctab>
    1540:	0505                	addi	a0,a0,1
    1542:	0087969b          	slliw	a3,a5,0x8
    1546:	0187d71b          	srliw	a4,a5,0x18
    154a:	fff54783          	lbu	a5,-1(a0)
    154e:	8f3d                	xor	a4,a4,a5
    1550:	1702                	slli	a4,a4,0x20
    1552:	9301                	srli	a4,a4,0x20
    1554:	070a                	slli	a4,a4,0x2
    1556:	9732                	add	a4,a4,a2
    1558:	431c                	lw	a5,0(a4)
    155a:	8fb5                	xor	a5,a5,a3
    155c:	2781                	sext.w	a5,a5
    155e:	fea811e3          	bne	a6,a0,1540 <cksum+0x10>
    1562:	00002637          	lui	a2,0x2
    1566:	f9060613          	addi	a2,a2,-112 # 1f90 <crctab>
    156a:	0ff5f693          	andi	a3,a1,255
    156e:	81a1                	srli	a1,a1,0x8
    1570:	0087951b          	slliw	a0,a5,0x8
    1574:	0187d71b          	srliw	a4,a5,0x18
    1578:	8f35                	xor	a4,a4,a3
    157a:	070a                	slli	a4,a4,0x2
    157c:	9732                	add	a4,a4,a2
    157e:	431c                	lw	a5,0(a4)
    1580:	8fa9                	xor	a5,a5,a0
    1582:	2781                	sext.w	a5,a5
    1584:	f1fd                	bnez	a1,156a <cksum+0x3a>
    1586:	fff7c513          	not	a0,a5
    158a:	8082                	ret
    158c:	4781                	li	a5,0
    158e:	bfe5                	j	1586 <cksum+0x56>

0000000000001590 <swap_bytes>:
    1590:	ce19                	beqz	a2,15ae <swap_bytes+0x1e>
    1592:	87aa                	mv	a5,a0
    1594:	962a                	add	a2,a2,a0
    1596:	0007c703          	lbu	a4,0(a5)
    159a:	0005c683          	lbu	a3,0(a1)
    159e:	00d78023          	sb	a3,0(a5)
    15a2:	00e58023          	sb	a4,0(a1)
    15a6:	0785                	addi	a5,a5,1
    15a8:	0585                	addi	a1,a1,1
    15aa:	fec796e3          	bne	a5,a2,1596 <swap_bytes+0x6>
    15ae:	8082                	ret

00000000000015b0 <random_init>:
    15b0:	7139                	addi	sp,sp,-64
    15b2:	fc06                	sd	ra,56(sp)
    15b4:	f822                	sd	s0,48(sp)
    15b6:	f426                	sd	s1,40(sp)
    15b8:	f04a                	sd	s2,32(sp)
    15ba:	ec4e                	sd	s3,24(sp)
    15bc:	e852                	sd	s4,16(sp)
    15be:	c62a                	sw	a0,12(sp)
    15c0:	000037b7          	lui	a5,0x3
    15c4:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    15c8:	eca5                	bnez	s1,1640 <random_init+0x90>
    15ca:	00003737          	lui	a4,0x3
    15ce:	01070913          	addi	s2,a4,16 # 3010 <s>
    15d2:	01070713          	addi	a4,a4,16
    15d6:	87a6                	mv	a5,s1
    15d8:	10000693          	li	a3,256
    15dc:	00f70023          	sb	a5,0(a4)
    15e0:	2785                	addiw	a5,a5,1
    15e2:	0705                	addi	a4,a4,1
    15e4:	fed79ce3          	bne	a5,a3,15dc <random_init+0x2c>
    15e8:	4401                	li	s0,0
    15ea:	000039b7          	lui	s3,0x3
    15ee:	01098993          	addi	s3,s3,16 # 3010 <s>
    15f2:	10000a13          	li	s4,256
    15f6:	0034f793          	andi	a5,s1,3
    15fa:	0818                	addi	a4,sp,16
    15fc:	97ba                	add	a5,a5,a4
    15fe:	ffc7c783          	lbu	a5,-4(a5)
    1602:	00094703          	lbu	a4,0(s2)
    1606:	9fb9                	addw	a5,a5,a4
    1608:	9c3d                	addw	s0,s0,a5
    160a:	0ff47413          	andi	s0,s0,255
    160e:	4605                	li	a2,1
    1610:	008985b3          	add	a1,s3,s0
    1614:	854a                	mv	a0,s2
    1616:	00000097          	auipc	ra,0x0
    161a:	f7a080e7          	jalr	-134(ra) # 1590 <swap_bytes>
    161e:	2485                	addiw	s1,s1,1
    1620:	0905                	addi	s2,s2,1
    1622:	fd449ae3          	bne	s1,s4,15f6 <random_init+0x46>
    1626:	000037b7          	lui	a5,0x3
    162a:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    162e:	000037b7          	lui	a5,0x3
    1632:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1636:	000037b7          	lui	a5,0x3
    163a:	4705                	li	a4,1
    163c:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1640:	70e2                	ld	ra,56(sp)
    1642:	7442                	ld	s0,48(sp)
    1644:	74a2                	ld	s1,40(sp)
    1646:	7902                	ld	s2,32(sp)
    1648:	69e2                	ld	s3,24(sp)
    164a:	6a42                	ld	s4,16(sp)
    164c:	6121                	addi	sp,sp,64
    164e:	8082                	ret

0000000000001650 <random_bytes>:
    1650:	7139                	addi	sp,sp,-64
    1652:	fc06                	sd	ra,56(sp)
    1654:	f822                	sd	s0,48(sp)
    1656:	f426                	sd	s1,40(sp)
    1658:	f04a                	sd	s2,32(sp)
    165a:	ec4e                	sd	s3,24(sp)
    165c:	e852                	sd	s4,16(sp)
    165e:	e456                	sd	s5,8(sp)
    1660:	e05a                	sd	s6,0(sp)
    1662:	892a                	mv	s2,a0
    1664:	8aae                	mv	s5,a1
    1666:	000037b7          	lui	a5,0x3
    166a:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    166e:	c3c1                	beqz	a5,16ee <random_bytes+0x9e>
    1670:	060a8563          	beqz	s5,16da <random_bytes+0x8a>
    1674:	9aca                	add	s5,s5,s2
    1676:	00003a37          	lui	s4,0x3
    167a:	000034b7          	lui	s1,0x3
    167e:	01048493          	addi	s1,s1,16 # 3010 <s>
    1682:	000039b7          	lui	s3,0x3
    1686:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    168a:	2505                	addiw	a0,a0,1
    168c:	0ff57513          	andi	a0,a0,255
    1690:	00aa02a3          	sb	a0,5(s4)
    1694:	00a48b33          	add	s6,s1,a0
    1698:	000b4403          	lbu	s0,0(s6)
    169c:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    16a0:	9c3d                	addw	s0,s0,a5
    16a2:	0ff47413          	andi	s0,s0,255
    16a6:	00898223          	sb	s0,4(s3)
    16aa:	4605                	li	a2,1
    16ac:	008485b3          	add	a1,s1,s0
    16b0:	855a                	mv	a0,s6
    16b2:	00000097          	auipc	ra,0x0
    16b6:	ede080e7          	jalr	-290(ra) # 1590 <swap_bytes>
    16ba:	9426                	add	s0,s0,s1
    16bc:	000b4783          	lbu	a5,0(s6)
    16c0:	00044703          	lbu	a4,0(s0)
    16c4:	9fb9                	addw	a5,a5,a4
    16c6:	0ff7f793          	andi	a5,a5,255
    16ca:	97a6                	add	a5,a5,s1
    16cc:	0007c783          	lbu	a5,0(a5)
    16d0:	00f90023          	sb	a5,0(s2)
    16d4:	0905                	addi	s2,s2,1
    16d6:	fb2a98e3          	bne	s5,s2,1686 <random_bytes+0x36>
    16da:	70e2                	ld	ra,56(sp)
    16dc:	7442                	ld	s0,48(sp)
    16de:	74a2                	ld	s1,40(sp)
    16e0:	7902                	ld	s2,32(sp)
    16e2:	69e2                	ld	s3,24(sp)
    16e4:	6a42                	ld	s4,16(sp)
    16e6:	6aa2                	ld	s5,8(sp)
    16e8:	6b02                	ld	s6,0(sp)
    16ea:	6121                	addi	sp,sp,64
    16ec:	8082                	ret
    16ee:	4501                	li	a0,0
    16f0:	00000097          	auipc	ra,0x0
    16f4:	ec0080e7          	jalr	-320(ra) # 15b0 <random_init>
    16f8:	bfa5                	j	1670 <random_bytes+0x20>

00000000000016fa <random_ulong>:
    16fa:	1101                	addi	sp,sp,-32
    16fc:	ec06                	sd	ra,24(sp)
    16fe:	45a1                	li	a1,8
    1700:	0028                	addi	a0,sp,8
    1702:	00000097          	auipc	ra,0x0
    1706:	f4e080e7          	jalr	-178(ra) # 1650 <random_bytes>
    170a:	6522                	ld	a0,8(sp)
    170c:	60e2                	ld	ra,24(sp)
    170e:	6105                	addi	sp,sp,32
    1710:	8082                	ret

0000000000001712 <shuffle>:
    1712:	c9b9                	beqz	a1,1768 <shuffle+0x56>
    1714:	7179                	addi	sp,sp,-48
    1716:	f406                	sd	ra,40(sp)
    1718:	f022                	sd	s0,32(sp)
    171a:	ec26                	sd	s1,24(sp)
    171c:	e84a                	sd	s2,16(sp)
    171e:	e44e                	sd	s3,8(sp)
    1720:	e052                	sd	s4,0(sp)
    1722:	8a2a                	mv	s4,a0
    1724:	89ae                	mv	s3,a1
    1726:	84b2                	mv	s1,a2
    1728:	892a                	mv	s2,a0
    172a:	4401                	li	s0,0
    172c:	00000097          	auipc	ra,0x0
    1730:	fce080e7          	jalr	-50(ra) # 16fa <random_ulong>
    1734:	408985b3          	sub	a1,s3,s0
    1738:	02b575b3          	remu	a1,a0,a1
    173c:	95a2                	add	a1,a1,s0
    173e:	029585b3          	mul	a1,a1,s1
    1742:	8626                	mv	a2,s1
    1744:	95d2                	add	a1,a1,s4
    1746:	854a                	mv	a0,s2
    1748:	00000097          	auipc	ra,0x0
    174c:	e48080e7          	jalr	-440(ra) # 1590 <swap_bytes>
    1750:	0405                	addi	s0,s0,1
    1752:	9926                	add	s2,s2,s1
    1754:	fc899ce3          	bne	s3,s0,172c <shuffle+0x1a>
    1758:	70a2                	ld	ra,40(sp)
    175a:	7402                	ld	s0,32(sp)
    175c:	64e2                	ld	s1,24(sp)
    175e:	6942                	ld	s2,16(sp)
    1760:	69a2                	ld	s3,8(sp)
    1762:	6a02                	ld	s4,0(sp)
    1764:	6145                	addi	sp,sp,48
    1766:	8082                	ret
    1768:	8082                	ret

000000000000176a <arc4_init>:
    176a:	100500a3          	sb	zero,257(a0)
    176e:	10050023          	sb	zero,256(a0)
    1772:	4781                	li	a5,0
    1774:	10000693          	li	a3,256
    1778:	00f50733          	add	a4,a0,a5
    177c:	00f70023          	sb	a5,0(a4)
    1780:	0785                	addi	a5,a5,1
    1782:	fed79be3          	bne	a5,a3,1778 <arc4_init+0xe>
    1786:	86aa                	mv	a3,a0
    1788:	10050e13          	addi	t3,a0,256
    178c:	4701                	li	a4,0
    178e:	4781                	li	a5,0
    1790:	0006c883          	lbu	a7,0(a3)
    1794:	00f58833          	add	a6,a1,a5
    1798:	00084803          	lbu	a6,0(a6)
    179c:	00e8873b          	addw	a4,a7,a4
    17a0:	00e8073b          	addw	a4,a6,a4
    17a4:	0ff77713          	andi	a4,a4,255
    17a8:	00e50833          	add	a6,a0,a4
    17ac:	00084303          	lbu	t1,0(a6)
    17b0:	00668023          	sb	t1,0(a3)
    17b4:	01180023          	sb	a7,0(a6)
    17b8:	0785                	addi	a5,a5,1
    17ba:	00c7b833          	sltu	a6,a5,a2
    17be:	41000833          	neg	a6,a6
    17c2:	0107f7b3          	and	a5,a5,a6
    17c6:	0685                	addi	a3,a3,1
    17c8:	fdc694e3          	bne	a3,t3,1790 <arc4_init+0x26>
    17cc:	8082                	ret

00000000000017ce <arc4_crypt>:
    17ce:	10054e03          	lbu	t3,256(a0)
    17d2:	10154803          	lbu	a6,257(a0)
    17d6:	fff60e93          	addi	t4,a2,-1
    17da:	c225                	beqz	a2,183a <arc4_crypt+0x6c>
    17dc:	00c588b3          	add	a7,a1,a2
    17e0:	86ae                	mv	a3,a1
    17e2:	001e031b          	addiw	t1,t3,1
    17e6:	40b3033b          	subw	t1,t1,a1
    17ea:	00d3073b          	addw	a4,t1,a3
    17ee:	0ff77713          	andi	a4,a4,255
    17f2:	972a                	add	a4,a4,a0
    17f4:	00074603          	lbu	a2,0(a4)
    17f8:	0106083b          	addw	a6,a2,a6
    17fc:	0ff87813          	andi	a6,a6,255
    1800:	010507b3          	add	a5,a0,a6
    1804:	0007c583          	lbu	a1,0(a5)
    1808:	00b70023          	sb	a1,0(a4)
    180c:	00c78023          	sb	a2,0(a5)
    1810:	0685                	addi	a3,a3,1
    1812:	00074783          	lbu	a5,0(a4)
    1816:	9fb1                	addw	a5,a5,a2
    1818:	0ff7f793          	andi	a5,a5,255
    181c:	97aa                	add	a5,a5,a0
    181e:	0007c783          	lbu	a5,0(a5)
    1822:	fff6c703          	lbu	a4,-1(a3)
    1826:	8fb9                	xor	a5,a5,a4
    1828:	fef68fa3          	sb	a5,-1(a3)
    182c:	fb169fe3          	bne	a3,a7,17ea <arc4_crypt+0x1c>
    1830:	2e85                	addiw	t4,t4,1
    1832:	01ce8e3b          	addw	t3,t4,t3
    1836:	0ffe7e13          	andi	t3,t3,255
    183a:	11c50023          	sb	t3,256(a0)
    183e:	110500a3          	sb	a6,257(a0)
    1842:	8082                	ret

0000000000001844 <_main>:
    1844:	1141                	addi	sp,sp,-16
    1846:	e406                	sd	ra,8(sp)
    1848:	00000097          	auipc	ra,0x0
    184c:	968080e7          	jalr	-1688(ra) # 11b0 <main>
    1850:	4501                	li	a0,0
    1852:	00000097          	auipc	ra,0x0
    1856:	578080e7          	jalr	1400(ra) # 1dca <exit>
    185a:	60a2                	ld	ra,8(sp)
    185c:	0141                	addi	sp,sp,16
    185e:	8082                	ret

0000000000001860 <strcmp>:
    1860:	00054783          	lbu	a5,0(a0)
    1864:	cb91                	beqz	a5,1878 <strcmp+0x18>
    1866:	0005c703          	lbu	a4,0(a1)
    186a:	00f71763          	bne	a4,a5,1878 <strcmp+0x18>
    186e:	0505                	addi	a0,a0,1
    1870:	0585                	addi	a1,a1,1
    1872:	00054783          	lbu	a5,0(a0)
    1876:	fbe5                	bnez	a5,1866 <strcmp+0x6>
    1878:	0005c503          	lbu	a0,0(a1)
    187c:	40a7853b          	subw	a0,a5,a0
    1880:	8082                	ret

0000000000001882 <strcpy>:
    1882:	87aa                	mv	a5,a0
    1884:	0585                	addi	a1,a1,1
    1886:	0785                	addi	a5,a5,1
    1888:	fff5c703          	lbu	a4,-1(a1)
    188c:	fee78fa3          	sb	a4,-1(a5)
    1890:	fb75                	bnez	a4,1884 <strcpy+0x2>
    1892:	8082                	ret

0000000000001894 <strlen>:
    1894:	00054783          	lbu	a5,0(a0)
    1898:	cf81                	beqz	a5,18b0 <strlen+0x1c>
    189a:	0505                	addi	a0,a0,1
    189c:	87aa                	mv	a5,a0
    189e:	4685                	li	a3,1
    18a0:	9e89                	subw	a3,a3,a0
    18a2:	00f6853b          	addw	a0,a3,a5
    18a6:	0785                	addi	a5,a5,1
    18a8:	fff7c703          	lbu	a4,-1(a5)
    18ac:	fb7d                	bnez	a4,18a2 <strlen+0xe>
    18ae:	8082                	ret
    18b0:	4501                	li	a0,0
    18b2:	8082                	ret

00000000000018b4 <memset>:
    18b4:	ca19                	beqz	a2,18ca <memset+0x16>
    18b6:	87aa                	mv	a5,a0
    18b8:	1602                	slli	a2,a2,0x20
    18ba:	9201                	srli	a2,a2,0x20
    18bc:	00a60733          	add	a4,a2,a0
    18c0:	00b78023          	sb	a1,0(a5)
    18c4:	0785                	addi	a5,a5,1
    18c6:	fee79de3          	bne	a5,a4,18c0 <memset+0xc>
    18ca:	8082                	ret

00000000000018cc <memcmp>:
    18cc:	1101                	addi	sp,sp,-32
    18ce:	ec06                	sd	ra,24(sp)
    18d0:	e822                	sd	s0,16(sp)
    18d2:	e426                	sd	s1,8(sp)
    18d4:	e04a                	sd	s2,0(sp)
    18d6:	892a                	mv	s2,a0
    18d8:	842e                	mv	s0,a1
    18da:	84b2                	mv	s1,a2
    18dc:	c915                	beqz	a0,1910 <memcmp+0x44>
    18de:	c5ad                	beqz	a1,1948 <memcmp+0x7c>
    18e0:	fff60713          	addi	a4,a2,-1
    18e4:	c645                	beqz	a2,198c <memcmp+0xc0>
    18e6:	87ca                	mv	a5,s2
    18e8:	00190613          	addi	a2,s2,1
    18ec:	963a                	add	a2,a2,a4
    18ee:	0007c683          	lbu	a3,0(a5)
    18f2:	00044703          	lbu	a4,0(s0)
    18f6:	08e69463          	bne	a3,a4,197e <memcmp+0xb2>
    18fa:	0785                	addi	a5,a5,1
    18fc:	0405                	addi	s0,s0,1
    18fe:	fec798e3          	bne	a5,a2,18ee <memcmp+0x22>
    1902:	4501                	li	a0,0
    1904:	60e2                	ld	ra,24(sp)
    1906:	6442                	ld	s0,16(sp)
    1908:	64a2                	ld	s1,8(sp)
    190a:	6902                	ld	s2,0(sp)
    190c:	6105                	addi	sp,sp,32
    190e:	8082                	ret
    1910:	4501                	li	a0,0
    1912:	da6d                	beqz	a2,1904 <memcmp+0x38>
    1914:	03200693          	li	a3,50
    1918:	00002637          	lui	a2,0x2
    191c:	39060613          	addi	a2,a2,912 # 2390 <crctab+0x400>
    1920:	000025b7          	lui	a1,0x2
    1924:	3a058593          	addi	a1,a1,928 # 23a0 <crctab+0x410>
    1928:	4509                	li	a0,2
    192a:	00000097          	auipc	ra,0x0
    192e:	bbc080e7          	jalr	-1092(ra) # 14e6 <fprintf>
    1932:	650d                	lui	a0,0x3
    1934:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1938:	00000097          	auipc	ra,0x0
    193c:	492080e7          	jalr	1170(ra) # 1dca <exit>
    1940:	fff48713          	addi	a4,s1,-1
    1944:	f04d                	bnez	s0,18e6 <memcmp+0x1a>
    1946:	a011                	j	194a <memcmp+0x7e>
    1948:	c221                	beqz	a2,1988 <memcmp+0xbc>
    194a:	03300693          	li	a3,51
    194e:	00002637          	lui	a2,0x2
    1952:	39060613          	addi	a2,a2,912 # 2390 <crctab+0x400>
    1956:	000025b7          	lui	a1,0x2
    195a:	3e858593          	addi	a1,a1,1000 # 23e8 <crctab+0x458>
    195e:	4509                	li	a0,2
    1960:	00000097          	auipc	ra,0x0
    1964:	b86080e7          	jalr	-1146(ra) # 14e6 <fprintf>
    1968:	650d                	lui	a0,0x3
    196a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    196e:	00000097          	auipc	ra,0x0
    1972:	45c080e7          	jalr	1116(ra) # 1dca <exit>
    1976:	fff48713          	addi	a4,s1,-1
    197a:	4401                	li	s0,0
    197c:	b7ad                	j	18e6 <memcmp+0x1a>
    197e:	4505                	li	a0,1
    1980:	f8d762e3          	bltu	a4,a3,1904 <memcmp+0x38>
    1984:	557d                	li	a0,-1
    1986:	bfbd                	j	1904 <memcmp+0x38>
    1988:	4501                	li	a0,0
    198a:	bfad                	j	1904 <memcmp+0x38>
    198c:	4501                	li	a0,0
    198e:	bf9d                	j	1904 <memcmp+0x38>

0000000000001990 <memcpy>:
    1990:	1101                	addi	sp,sp,-32
    1992:	ec06                	sd	ra,24(sp)
    1994:	e822                	sd	s0,16(sp)
    1996:	e426                	sd	s1,8(sp)
    1998:	e04a                	sd	s2,0(sp)
    199a:	84aa                	mv	s1,a0
    199c:	842e                	mv	s0,a1
    199e:	8932                	mv	s2,a2
    19a0:	c51d                	beqz	a0,19ce <memcpy+0x3e>
    19a2:	c1ad                	beqz	a1,1a04 <memcpy+0x74>
    19a4:	fff60693          	addi	a3,a2,-1
    19a8:	ce01                	beqz	a2,19c0 <memcpy+0x30>
    19aa:	0685                	addi	a3,a3,1
    19ac:	96a6                	add	a3,a3,s1
    19ae:	87a6                	mv	a5,s1
    19b0:	0405                	addi	s0,s0,1
    19b2:	0785                	addi	a5,a5,1
    19b4:	fff44703          	lbu	a4,-1(s0)
    19b8:	fee78fa3          	sb	a4,-1(a5)
    19bc:	fed79ae3          	bne	a5,a3,19b0 <memcpy+0x20>
    19c0:	8526                	mv	a0,s1
    19c2:	60e2                	ld	ra,24(sp)
    19c4:	6442                	ld	s0,16(sp)
    19c6:	64a2                	ld	s1,8(sp)
    19c8:	6902                	ld	s2,0(sp)
    19ca:	6105                	addi	sp,sp,32
    19cc:	8082                	ret
    19ce:	da6d                	beqz	a2,19c0 <memcpy+0x30>
    19d0:	04000693          	li	a3,64
    19d4:	00002637          	lui	a2,0x2
    19d8:	39060613          	addi	a2,a2,912 # 2390 <crctab+0x400>
    19dc:	000025b7          	lui	a1,0x2
    19e0:	43058593          	addi	a1,a1,1072 # 2430 <crctab+0x4a0>
    19e4:	4509                	li	a0,2
    19e6:	00000097          	auipc	ra,0x0
    19ea:	b00080e7          	jalr	-1280(ra) # 14e6 <fprintf>
    19ee:	650d                	lui	a0,0x3
    19f0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19f4:	00000097          	auipc	ra,0x0
    19f8:	3d6080e7          	jalr	982(ra) # 1dca <exit>
    19fc:	fff90693          	addi	a3,s2,-1
    1a00:	f44d                	bnez	s0,19aa <memcpy+0x1a>
    1a02:	a011                	j	1a06 <memcpy+0x76>
    1a04:	de55                	beqz	a2,19c0 <memcpy+0x30>
    1a06:	04100693          	li	a3,65
    1a0a:	00002637          	lui	a2,0x2
    1a0e:	39060613          	addi	a2,a2,912 # 2390 <crctab+0x400>
    1a12:	000025b7          	lui	a1,0x2
    1a16:	47858593          	addi	a1,a1,1144 # 2478 <crctab+0x4e8>
    1a1a:	4509                	li	a0,2
    1a1c:	00000097          	auipc	ra,0x0
    1a20:	aca080e7          	jalr	-1334(ra) # 14e6 <fprintf>
    1a24:	650d                	lui	a0,0x3
    1a26:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a2a:	00000097          	auipc	ra,0x0
    1a2e:	3a0080e7          	jalr	928(ra) # 1dca <exit>
    1a32:	fff90693          	addi	a3,s2,-1
    1a36:	4401                	li	s0,0
    1a38:	bf8d                	j	19aa <memcpy+0x1a>

0000000000001a3a <itoa>:
    1a3a:	1101                	addi	sp,sp,-32
    1a3c:	ec06                	sd	ra,24(sp)
    1a3e:	e822                	sd	s0,16(sp)
    1a40:	e426                	sd	s1,8(sp)
    1a42:	842a                	mv	s0,a0
    1a44:	41f5d71b          	sraiw	a4,a1,0x1f
    1a48:	00e5c7b3          	xor	a5,a1,a4
    1a4c:	9f99                	subw	a5,a5,a4
    1a4e:	84aa                	mv	s1,a0
    1a50:	862a                	mv	a2,a0
    1a52:	4681                	li	a3,0
    1a54:	4529                	li	a0,10
    1a56:	4825                	li	a6,9
    1a58:	88b6                	mv	a7,a3
    1a5a:	2685                	addiw	a3,a3,1
    1a5c:	02a7e73b          	remw	a4,a5,a0
    1a60:	0307071b          	addiw	a4,a4,48
    1a64:	00e60023          	sb	a4,0(a2)
    1a68:	873e                	mv	a4,a5
    1a6a:	02a7c7bb          	divw	a5,a5,a0
    1a6e:	0605                	addi	a2,a2,1
    1a70:	fee844e3          	blt	a6,a4,1a58 <itoa+0x1e>
    1a74:	0405c863          	bltz	a1,1ac4 <itoa+0x8a>
    1a78:	96a2                	add	a3,a3,s0
    1a7a:	00068023          	sb	zero,0(a3)
    1a7e:	8522                	mv	a0,s0
    1a80:	00000097          	auipc	ra,0x0
    1a84:	e14080e7          	jalr	-492(ra) # 1894 <strlen>
    1a88:	fff5071b          	addiw	a4,a0,-1
    1a8c:	02e05763          	blez	a4,1aba <itoa+0x80>
    1a90:	9722                	add	a4,a4,s0
    1a92:	4681                	li	a3,0
    1a94:	0004c783          	lbu	a5,0(s1)
    1a98:	00074603          	lbu	a2,0(a4)
    1a9c:	00c48023          	sb	a2,0(s1)
    1aa0:	00f70023          	sb	a5,0(a4)
    1aa4:	0016879b          	addiw	a5,a3,1
    1aa8:	0007869b          	sext.w	a3,a5
    1aac:	0485                	addi	s1,s1,1
    1aae:	177d                	addi	a4,a4,-1
    1ab0:	fff7c793          	not	a5,a5
    1ab4:	9fa9                	addw	a5,a5,a0
    1ab6:	fcf6cfe3          	blt	a3,a5,1a94 <itoa+0x5a>
    1aba:	60e2                	ld	ra,24(sp)
    1abc:	6442                	ld	s0,16(sp)
    1abe:	64a2                	ld	s1,8(sp)
    1ac0:	6105                	addi	sp,sp,32
    1ac2:	8082                	ret
    1ac4:	96a2                	add	a3,a3,s0
    1ac6:	02d00793          	li	a5,45
    1aca:	00f68023          	sb	a5,0(a3)
    1ace:	0028869b          	addiw	a3,a7,2
    1ad2:	b75d                	j	1a78 <itoa+0x3e>

0000000000001ad4 <atoi>:
    1ad4:	00054783          	lbu	a5,0(a0)
    1ad8:	02000713          	li	a4,32
    1adc:	00e79763          	bne	a5,a4,1aea <atoi+0x16>
    1ae0:	0505                	addi	a0,a0,1
    1ae2:	00054783          	lbu	a5,0(a0)
    1ae6:	fee78de3          	beq	a5,a4,1ae0 <atoi+0xc>
    1aea:	02b00713          	li	a4,43
    1aee:	04e78663          	beq	a5,a4,1b3a <atoi+0x66>
    1af2:	02d00713          	li	a4,45
    1af6:	4805                	li	a6,1
    1af8:	04e78463          	beq	a5,a4,1b40 <atoi+0x6c>
    1afc:	00054683          	lbu	a3,0(a0)
    1b00:	fd06879b          	addiw	a5,a3,-48
    1b04:	0ff7f793          	andi	a5,a5,255
    1b08:	4725                	li	a4,9
    1b0a:	02f76e63          	bltu	a4,a5,1b46 <atoi+0x72>
    1b0e:	4601                	li	a2,0
    1b10:	45a5                	li	a1,9
    1b12:	0505                	addi	a0,a0,1
    1b14:	0026179b          	slliw	a5,a2,0x2
    1b18:	9fb1                	addw	a5,a5,a2
    1b1a:	0017979b          	slliw	a5,a5,0x1
    1b1e:	9fb5                	addw	a5,a5,a3
    1b20:	fd07861b          	addiw	a2,a5,-48
    1b24:	00054683          	lbu	a3,0(a0)
    1b28:	fd06871b          	addiw	a4,a3,-48
    1b2c:	0ff77713          	andi	a4,a4,255
    1b30:	fee5f1e3          	bgeu	a1,a4,1b12 <atoi+0x3e>
    1b34:	02c8053b          	mulw	a0,a6,a2
    1b38:	8082                	ret
    1b3a:	0505                	addi	a0,a0,1
    1b3c:	4805                	li	a6,1
    1b3e:	bf7d                	j	1afc <atoi+0x28>
    1b40:	0505                	addi	a0,a0,1
    1b42:	587d                	li	a6,-1
    1b44:	bf65                	j	1afc <atoi+0x28>
    1b46:	4601                	li	a2,0
    1b48:	b7f5                	j	1b34 <atoi+0x60>

0000000000001b4a <check_file_handle>:
    1b4a:	d8010113          	addi	sp,sp,-640
    1b4e:	26113c23          	sd	ra,632(sp)
    1b52:	26813823          	sd	s0,624(sp)
    1b56:	26913423          	sd	s1,616(sp)
    1b5a:	27213023          	sd	s2,608(sp)
    1b5e:	25313c23          	sd	s3,600(sp)
    1b62:	25413823          	sd	s4,592(sp)
    1b66:	25513423          	sd	s5,584(sp)
    1b6a:	25613023          	sd	s6,576(sp)
    1b6e:	23713c23          	sd	s7,568(sp)
    1b72:	23813823          	sd	s8,560(sp)
    1b76:	23913423          	sd	s9,552(sp)
    1b7a:	23a13023          	sd	s10,544(sp)
    1b7e:	21b13c23          	sd	s11,536(sp)
    1b82:	8baa                	mv	s7,a0
    1b84:	8a2e                	mv	s4,a1
    1b86:	8c32                	mv	s8,a2
    1b88:	89b6                	mv	s3,a3
    1b8a:	040c                	addi	a1,sp,512
    1b8c:	00000097          	auipc	ra,0x0
    1b90:	28e080e7          	jalr	654(ra) # 1e1a <fstat>
    1b94:	20813603          	ld	a2,520(sp)
    1b98:	03361163          	bne	a2,s3,1bba <check_file_handle+0x70>
    1b9c:	06098763          	beqz	s3,1c0a <check_file_handle+0xc0>
    1ba0:	4901                	li	s2,0
    1ba2:	20000a93          	li	s5,512
    1ba6:	00002cb7          	lui	s9,0x2
    1baa:	00002db7          	lui	s11,0x2
    1bae:	6b0d                	lui	s6,0x3
    1bb0:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1bb4:	00002d37          	lui	s10,0x2
    1bb8:	aa39                	j	1cd6 <check_file_handle+0x18c>
    1bba:	86ce                	mv	a3,s3
    1bbc:	85d2                	mv	a1,s4
    1bbe:	00002537          	lui	a0,0x2
    1bc2:	4c050513          	addi	a0,a0,1216 # 24c0 <crctab+0x530>
    1bc6:	00000097          	auipc	ra,0x0
    1bca:	942080e7          	jalr	-1726(ra) # 1508 <printf>
    1bce:	fc0999e3          	bnez	s3,1ba0 <check_file_handle+0x56>
    1bd2:	20813683          	ld	a3,520(sp)
    1bd6:	03368a63          	beq	a3,s3,1c0a <check_file_handle+0xc0>
    1bda:	0a600813          	li	a6,166
    1bde:	000027b7          	lui	a5,0x2
    1be2:	39078793          	addi	a5,a5,912 # 2390 <crctab+0x400>
    1be6:	874e                	mv	a4,s3
    1be8:	8652                	mv	a2,s4
    1bea:	000025b7          	lui	a1,0x2
    1bee:	59058593          	addi	a1,a1,1424 # 2590 <crctab+0x600>
    1bf2:	4509                	li	a0,2
    1bf4:	00000097          	auipc	ra,0x0
    1bf8:	8f2080e7          	jalr	-1806(ra) # 14e6 <fprintf>
    1bfc:	650d                	lui	a0,0x3
    1bfe:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c02:	00000097          	auipc	ra,0x0
    1c06:	1c8080e7          	jalr	456(ra) # 1dca <exit>
    1c0a:	85d2                	mv	a1,s4
    1c0c:	00002537          	lui	a0,0x2
    1c10:	5d850513          	addi	a0,a0,1496 # 25d8 <crctab+0x648>
    1c14:	00000097          	auipc	ra,0x0
    1c18:	8f4080e7          	jalr	-1804(ra) # 1508 <printf>
    1c1c:	27813083          	ld	ra,632(sp)
    1c20:	27013403          	ld	s0,624(sp)
    1c24:	26813483          	ld	s1,616(sp)
    1c28:	26013903          	ld	s2,608(sp)
    1c2c:	25813983          	ld	s3,600(sp)
    1c30:	25013a03          	ld	s4,592(sp)
    1c34:	24813a83          	ld	s5,584(sp)
    1c38:	24013b03          	ld	s6,576(sp)
    1c3c:	23813b83          	ld	s7,568(sp)
    1c40:	23013c03          	ld	s8,560(sp)
    1c44:	22813c83          	ld	s9,552(sp)
    1c48:	22013d03          	ld	s10,544(sp)
    1c4c:	21813d83          	ld	s11,536(sp)
    1c50:	28010113          	addi	sp,sp,640
    1c54:	8082                	ret
    1c56:	09d00893          	li	a7,157
    1c5a:	390c8813          	addi	a6,s9,912 # 2390 <crctab+0x400>
    1c5e:	87aa                	mv	a5,a0
    1c60:	8752                	mv	a4,s4
    1c62:	86ca                	mv	a3,s2
    1c64:	8622                	mv	a2,s0
    1c66:	4f0d8593          	addi	a1,s11,1264 # 24f0 <crctab+0x560>
    1c6a:	4509                	li	a0,2
    1c6c:	00000097          	auipc	ra,0x0
    1c70:	87a080e7          	jalr	-1926(ra) # 14e6 <fprintf>
    1c74:	855a                	mv	a0,s6
    1c76:	00000097          	auipc	ra,0x0
    1c7a:	154080e7          	jalr	340(ra) # 1dca <exit>
    1c7e:	a89d                	j	1cf4 <check_file_handle+0x1aa>
    1c80:	00160593          	addi	a1,a2,1
    1c84:	0285f163          	bgeu	a1,s0,1ca6 <check_file_handle+0x15c>
    1c88:	00c10733          	add	a4,sp,a2
    1c8c:	00b487b3          	add	a5,s1,a1
    1c90:	00174683          	lbu	a3,1(a4)
    1c94:	0007c783          	lbu	a5,0(a5)
    1c98:	00f68763          	beq	a3,a5,1ca6 <check_file_handle+0x15c>
    1c9c:	0585                	addi	a1,a1,1
    1c9e:	0705                	addi	a4,a4,1
    1ca0:	feb416e3          	bne	s0,a1,1c8c <check_file_handle+0x142>
    1ca4:	85a2                	mv	a1,s0
    1ca6:	08100813          	li	a6,129
    1caa:	390c8793          	addi	a5,s9,912
    1cae:	8752                	mv	a4,s4
    1cb0:	012606b3          	add	a3,a2,s2
    1cb4:	40c58633          	sub	a2,a1,a2
    1cb8:	538d0593          	addi	a1,s10,1336 # 2538 <crctab+0x5a8>
    1cbc:	4509                	li	a0,2
    1cbe:	00000097          	auipc	ra,0x0
    1cc2:	828080e7          	jalr	-2008(ra) # 14e6 <fprintf>
    1cc6:	855a                	mv	a0,s6
    1cc8:	00000097          	auipc	ra,0x0
    1ccc:	102080e7          	jalr	258(ra) # 1dca <exit>
    1cd0:	9922                	add	s2,s2,s0
    1cd2:	f13970e3          	bgeu	s2,s3,1bd2 <check_file_handle+0x88>
    1cd6:	41298433          	sub	s0,s3,s2
    1cda:	008af363          	bgeu	s5,s0,1ce0 <check_file_handle+0x196>
    1cde:	8456                	mv	s0,s5
    1ce0:	0004061b          	sext.w	a2,s0
    1ce4:	858a                	mv	a1,sp
    1ce6:	855e                	mv	a0,s7
    1ce8:	00000097          	auipc	ra,0x0
    1cec:	10a080e7          	jalr	266(ra) # 1df2 <read>
    1cf0:	f68513e3          	bne	a0,s0,1c56 <check_file_handle+0x10c>
    1cf4:	012c04b3          	add	s1,s8,s2
    1cf8:	8622                	mv	a2,s0
    1cfa:	85a6                	mv	a1,s1
    1cfc:	850a                	mv	a0,sp
    1cfe:	00000097          	auipc	ra,0x0
    1d02:	bce080e7          	jalr	-1074(ra) # 18cc <memcmp>
    1d06:	d569                	beqz	a0,1cd0 <check_file_handle+0x186>
    1d08:	03298163          	beq	s3,s2,1d2a <check_file_handle+0x1e0>
    1d0c:	870a                	mv	a4,sp
    1d0e:	4601                	li	a2,0
    1d10:	00c487b3          	add	a5,s1,a2
    1d14:	00074683          	lbu	a3,0(a4)
    1d18:	0007c783          	lbu	a5,0(a5)
    1d1c:	f6f692e3          	bne	a3,a5,1c80 <check_file_handle+0x136>
    1d20:	0605                	addi	a2,a2,1
    1d22:	0705                	addi	a4,a4,1
    1d24:	fe8666e3          	bltu	a2,s0,1d10 <check_file_handle+0x1c6>
    1d28:	bfa1                	j	1c80 <check_file_handle+0x136>
    1d2a:	4601                	li	a2,0
    1d2c:	4585                	li	a1,1
    1d2e:	bfa5                	j	1ca6 <check_file_handle+0x15c>

0000000000001d30 <check_file>:
    1d30:	7179                	addi	sp,sp,-48
    1d32:	f406                	sd	ra,40(sp)
    1d34:	f022                	sd	s0,32(sp)
    1d36:	ec26                	sd	s1,24(sp)
    1d38:	e84a                	sd	s2,16(sp)
    1d3a:	e44e                	sd	s3,8(sp)
    1d3c:	84aa                	mv	s1,a0
    1d3e:	892e                	mv	s2,a1
    1d40:	89b2                	mv	s3,a2
    1d42:	4581                	li	a1,0
    1d44:	00000097          	auipc	ra,0x0
    1d48:	0a6080e7          	jalr	166(ra) # 1dea <open>
    1d4c:	842a                	mv	s0,a0
    1d4e:	4789                	li	a5,2
    1d50:	02a7df63          	bge	a5,a0,1d8e <check_file+0x5e>
    1d54:	86ce                	mv	a3,s3
    1d56:	864a                	mv	a2,s2
    1d58:	85a6                	mv	a1,s1
    1d5a:	8522                	mv	a0,s0
    1d5c:	00000097          	auipc	ra,0x0
    1d60:	dee080e7          	jalr	-530(ra) # 1b4a <check_file_handle>
    1d64:	85a6                	mv	a1,s1
    1d66:	00002537          	lui	a0,0x2
    1d6a:	66050513          	addi	a0,a0,1632 # 2660 <crctab+0x6d0>
    1d6e:	fffff097          	auipc	ra,0xfffff
    1d72:	79a080e7          	jalr	1946(ra) # 1508 <printf>
    1d76:	8522                	mv	a0,s0
    1d78:	00000097          	auipc	ra,0x0
    1d7c:	09a080e7          	jalr	154(ra) # 1e12 <close>
    1d80:	70a2                	ld	ra,40(sp)
    1d82:	7402                	ld	s0,32(sp)
    1d84:	64e2                	ld	s1,24(sp)
    1d86:	6942                	ld	s2,16(sp)
    1d88:	69a2                	ld	s3,8(sp)
    1d8a:	6145                	addi	sp,sp,48
    1d8c:	8082                	ret
    1d8e:	0ae00713          	li	a4,174
    1d92:	000026b7          	lui	a3,0x2
    1d96:	39068693          	addi	a3,a3,912 # 2390 <crctab+0x400>
    1d9a:	8626                	mv	a2,s1
    1d9c:	000025b7          	lui	a1,0x2
    1da0:	5f858593          	addi	a1,a1,1528 # 25f8 <crctab+0x668>
    1da4:	4509                	li	a0,2
    1da6:	fffff097          	auipc	ra,0xfffff
    1daa:	740080e7          	jalr	1856(ra) # 14e6 <fprintf>
    1dae:	650d                	lui	a0,0x3
    1db0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1db4:	00000097          	auipc	ra,0x0
    1db8:	016080e7          	jalr	22(ra) # 1dca <exit>
    1dbc:	bf61                	j	1d54 <check_file+0x24>

0000000000001dbe <r_sp>:
    1dbe:	850a                	mv	a0,sp
    1dc0:	8082                	ret

0000000000001dc2 <halt>:
    1dc2:	4885                	li	a7,1
    1dc4:	00000073          	ecall
    1dc8:	8082                	ret

0000000000001dca <exit>:
    1dca:	4889                	li	a7,2
    1dcc:	00000073          	ecall
    1dd0:	8082                	ret

0000000000001dd2 <exec>:
    1dd2:	488d                	li	a7,3
    1dd4:	00000073          	ecall
    1dd8:	8082                	ret

0000000000001dda <wait>:
    1dda:	4891                	li	a7,4
    1ddc:	00000073          	ecall
    1de0:	8082                	ret

0000000000001de2 <remove>:
    1de2:	4895                	li	a7,5
    1de4:	00000073          	ecall
    1de8:	8082                	ret

0000000000001dea <open>:
    1dea:	4899                	li	a7,6
    1dec:	00000073          	ecall
    1df0:	8082                	ret

0000000000001df2 <read>:
    1df2:	489d                	li	a7,7
    1df4:	00000073          	ecall
    1df8:	8082                	ret

0000000000001dfa <write>:
    1dfa:	48a1                	li	a7,8
    1dfc:	00000073          	ecall
    1e00:	8082                	ret

0000000000001e02 <seek>:
    1e02:	48a5                	li	a7,9
    1e04:	00000073          	ecall
    1e08:	8082                	ret

0000000000001e0a <tell>:
    1e0a:	48a9                	li	a7,10
    1e0c:	00000073          	ecall
    1e10:	8082                	ret

0000000000001e12 <close>:
    1e12:	48ad                	li	a7,11
    1e14:	00000073          	ecall
    1e18:	8082                	ret

0000000000001e1a <fstat>:
    1e1a:	48b1                	li	a7,12
    1e1c:	00000073          	ecall
    1e20:	8082                	ret

0000000000001e22 <mmap>:
    1e22:	48b5                	li	a7,13
    1e24:	00000073          	ecall
    1e28:	8082                	ret

0000000000001e2a <munmap>:
    1e2a:	48b9                	li	a7,14
    1e2c:	00000073          	ecall
    1e30:	8082                	ret

0000000000001e32 <chdir>:
    1e32:	48bd                	li	a7,15
    1e34:	00000073          	ecall
    1e38:	8082                	ret

0000000000001e3a <mkdir>:
    1e3a:	48c1                	li	a7,16
    1e3c:	00000073          	ecall
    1e40:	8082                	ret
