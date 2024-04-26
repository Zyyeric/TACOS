
build/user/vm/child-qsort:     file format elf64-littleriscv


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
    110e:	e6060613          	addi	a2,a2,-416 # 1e60 <mkdir+0x14>
    1112:	000025b7          	lui	a1,0x2
    1116:	e7058593          	addi	a1,a1,-400 # 1e70 <mkdir+0x24>
    111a:	4509                	li	a0,2
    111c:	00000097          	auipc	ra,0x0
    1120:	3dc080e7          	jalr	988(ra) # 14f8 <fprintf>
    1124:	650d                	lui	a0,0x3
    1126:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    112a:	00001097          	auipc	ra,0x1
    112e:	cb2080e7          	jalr	-846(ra) # 1ddc <exit>
    1132:	a03d                	j	1160 <qsort_bytes+0x160>
    1134:	04100693          	li	a3,65
    1138:	00002637          	lui	a2,0x2
    113c:	e6060613          	addi	a2,a2,-416 # 1e60 <mkdir+0x14>
    1140:	000025b7          	lui	a1,0x2
    1144:	e7058593          	addi	a1,a1,-400 # 1e70 <mkdir+0x24>
    1148:	4509                	li	a0,2
    114a:	00000097          	auipc	ra,0x0
    114e:	3ae080e7          	jalr	942(ra) # 14f8 <fprintf>
    1152:	650d                	lui	a0,0x3
    1154:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1158:	00001097          	auipc	ra,0x1
    115c:	c84080e7          	jalr	-892(ra) # 1ddc <exit>
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
    118a:	586080e7          	jalr	1414(ra) # 170c <random_ulong>
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
    11b0:	7179                	addi	sp,sp,-48
    11b2:	f406                	sd	ra,40(sp)
    11b4:	f022                	sd	s0,32(sp)
    11b6:	ec26                	sd	s1,24(sp)
    11b8:	7301                	lui	t1,0xfffe0
    11ba:	911a                	add	sp,sp,t1
    11bc:	87ae                	mv	a5,a1
    11be:	4589                	li	a1,2
    11c0:	6788                	ld	a0,8(a5)
    11c2:	00001097          	auipc	ra,0x1
    11c6:	c3a080e7          	jalr	-966(ra) # 1dfc <open>
    11ca:	842a                	mv	s0,a0
    11cc:	4789                	li	a5,2
    11ce:	06a7da63          	bge	a5,a0,1242 <main+0x92>
    11d2:	7781                	lui	a5,0xfffe0
    11d4:	00020737          	lui	a4,0x20
    11d8:	0814                	addi	a3,sp,16
    11da:	9736                	add	a4,a4,a3
    11dc:	97ba                	add	a5,a5,a4
    11de:	e43e                	sd	a5,8(sp)
    11e0:	00020637          	lui	a2,0x20
    11e4:	85be                	mv	a1,a5
    11e6:	8522                	mv	a0,s0
    11e8:	00001097          	auipc	ra,0x1
    11ec:	c1c080e7          	jalr	-996(ra) # 1e04 <read>
    11f0:	84aa                	mv	s1,a0
    11f2:	000205b7          	lui	a1,0x20
    11f6:	6522                	ld	a0,8(sp)
    11f8:	00000097          	auipc	ra,0x0
    11fc:	e08080e7          	jalr	-504(ra) # 1000 <qsort_bytes>
    1200:	4581                	li	a1,0
    1202:	8522                	mv	a0,s0
    1204:	00001097          	auipc	ra,0x1
    1208:	c10080e7          	jalr	-1008(ra) # 1e14 <seek>
    120c:	0004861b          	sext.w	a2,s1
    1210:	65a2                	ld	a1,8(sp)
    1212:	8522                	mv	a0,s0
    1214:	00001097          	auipc	ra,0x1
    1218:	bf8080e7          	jalr	-1032(ra) # 1e0c <write>
    121c:	8522                	mv	a0,s0
    121e:	00001097          	auipc	ra,0x1
    1222:	c06080e7          	jalr	-1018(ra) # 1e24 <close>
    1226:	04800513          	li	a0,72
    122a:	00001097          	auipc	ra,0x1
    122e:	bb2080e7          	jalr	-1102(ra) # 1ddc <exit>
    1232:	00020337          	lui	t1,0x20
    1236:	911a                	add	sp,sp,t1
    1238:	70a2                	ld	ra,40(sp)
    123a:	7402                	ld	s0,32(sp)
    123c:	64e2                	ld	s1,24(sp)
    123e:	6145                	addi	sp,sp,48
    1240:	8082                	ret
    1242:	46b9                	li	a3,14
    1244:	00002637          	lui	a2,0x2
    1248:	ec860613          	addi	a2,a2,-312 # 1ec8 <mkdir+0x7c>
    124c:	000025b7          	lui	a1,0x2
    1250:	ee058593          	addi	a1,a1,-288 # 1ee0 <mkdir+0x94>
    1254:	4509                	li	a0,2
    1256:	00000097          	auipc	ra,0x0
    125a:	2a2080e7          	jalr	674(ra) # 14f8 <fprintf>
    125e:	650d                	lui	a0,0x3
    1260:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1264:	00001097          	auipc	ra,0x1
    1268:	b78080e7          	jalr	-1160(ra) # 1ddc <exit>
    126c:	b79d                	j	11d2 <main+0x22>

000000000000126e <putc>:
    126e:	1101                	addi	sp,sp,-32
    1270:	ec06                	sd	ra,24(sp)
    1272:	00b107a3          	sb	a1,15(sp)
    1276:	4605                	li	a2,1
    1278:	00f10593          	addi	a1,sp,15
    127c:	00001097          	auipc	ra,0x1
    1280:	b90080e7          	jalr	-1136(ra) # 1e0c <write>
    1284:	60e2                	ld	ra,24(sp)
    1286:	6105                	addi	sp,sp,32
    1288:	8082                	ret

000000000000128a <printint>:
    128a:	7179                	addi	sp,sp,-48
    128c:	f406                	sd	ra,40(sp)
    128e:	f022                	sd	s0,32(sp)
    1290:	ec26                	sd	s1,24(sp)
    1292:	e84a                	sd	s2,16(sp)
    1294:	84aa                	mv	s1,a0
    1296:	c299                	beqz	a3,129c <printint+0x12>
    1298:	0805c363          	bltz	a1,131e <printint+0x94>
    129c:	2581                	sext.w	a1,a1
    129e:	4881                	li	a7,0
    12a0:	868a                	mv	a3,sp
    12a2:	4701                	li	a4,0
    12a4:	2601                	sext.w	a2,a2
    12a6:	00002537          	lui	a0,0x2
    12aa:	f3850513          	addi	a0,a0,-200 # 1f38 <digits>
    12ae:	883a                	mv	a6,a4
    12b0:	2705                	addiw	a4,a4,1
    12b2:	02c5f7bb          	remuw	a5,a1,a2
    12b6:	1782                	slli	a5,a5,0x20
    12b8:	9381                	srli	a5,a5,0x20
    12ba:	97aa                	add	a5,a5,a0
    12bc:	0007c783          	lbu	a5,0(a5) # fffffffffffe0000 <s+0xfffffffffffdcff0>
    12c0:	00f68023          	sb	a5,0(a3)
    12c4:	0005879b          	sext.w	a5,a1
    12c8:	02c5d5bb          	divuw	a1,a1,a2
    12cc:	0685                	addi	a3,a3,1
    12ce:	fec7f0e3          	bgeu	a5,a2,12ae <printint+0x24>
    12d2:	00088a63          	beqz	a7,12e6 <printint+0x5c>
    12d6:	081c                	addi	a5,sp,16
    12d8:	973e                	add	a4,a4,a5
    12da:	02d00793          	li	a5,45
    12de:	fef70823          	sb	a5,-16(a4) # 1fff0 <s+0x1cfe0>
    12e2:	0028071b          	addiw	a4,a6,2
    12e6:	02e05663          	blez	a4,1312 <printint+0x88>
    12ea:	00e10433          	add	s0,sp,a4
    12ee:	fff10913          	addi	s2,sp,-1
    12f2:	993a                	add	s2,s2,a4
    12f4:	377d                	addiw	a4,a4,-1
    12f6:	1702                	slli	a4,a4,0x20
    12f8:	9301                	srli	a4,a4,0x20
    12fa:	40e90933          	sub	s2,s2,a4
    12fe:	fff44583          	lbu	a1,-1(s0)
    1302:	8526                	mv	a0,s1
    1304:	00000097          	auipc	ra,0x0
    1308:	f6a080e7          	jalr	-150(ra) # 126e <putc>
    130c:	147d                	addi	s0,s0,-1
    130e:	ff2418e3          	bne	s0,s2,12fe <printint+0x74>
    1312:	70a2                	ld	ra,40(sp)
    1314:	7402                	ld	s0,32(sp)
    1316:	64e2                	ld	s1,24(sp)
    1318:	6942                	ld	s2,16(sp)
    131a:	6145                	addi	sp,sp,48
    131c:	8082                	ret
    131e:	40b005bb          	negw	a1,a1
    1322:	4885                	li	a7,1
    1324:	bfb5                	j	12a0 <printint+0x16>

0000000000001326 <vprintf>:
    1326:	7159                	addi	sp,sp,-112
    1328:	f486                	sd	ra,104(sp)
    132a:	f0a2                	sd	s0,96(sp)
    132c:	eca6                	sd	s1,88(sp)
    132e:	e8ca                	sd	s2,80(sp)
    1330:	e4ce                	sd	s3,72(sp)
    1332:	e0d2                	sd	s4,64(sp)
    1334:	fc56                	sd	s5,56(sp)
    1336:	f85a                	sd	s6,48(sp)
    1338:	f45e                	sd	s7,40(sp)
    133a:	f062                	sd	s8,32(sp)
    133c:	ec66                	sd	s9,24(sp)
    133e:	e86a                	sd	s10,16(sp)
    1340:	e46e                	sd	s11,8(sp)
    1342:	0005c483          	lbu	s1,0(a1)
    1346:	18048a63          	beqz	s1,14da <vprintf+0x1b4>
    134a:	8a2a                	mv	s4,a0
    134c:	8ab2                	mv	s5,a2
    134e:	00158413          	addi	s0,a1,1
    1352:	4901                	li	s2,0
    1354:	02500993          	li	s3,37
    1358:	06400b93          	li	s7,100
    135c:	06c00c13          	li	s8,108
    1360:	07800c93          	li	s9,120
    1364:	07000d13          	li	s10,112
    1368:	00002db7          	lui	s11,0x2
    136c:	00002b37          	lui	s6,0x2
    1370:	f38b0b13          	addi	s6,s6,-200 # 1f38 <digits>
    1374:	a839                	j	1392 <vprintf+0x6c>
    1376:	85a6                	mv	a1,s1
    1378:	8552                	mv	a0,s4
    137a:	00000097          	auipc	ra,0x0
    137e:	ef4080e7          	jalr	-268(ra) # 126e <putc>
    1382:	a019                	j	1388 <vprintf+0x62>
    1384:	01390f63          	beq	s2,s3,13a2 <vprintf+0x7c>
    1388:	0405                	addi	s0,s0,1
    138a:	fff44483          	lbu	s1,-1(s0)
    138e:	14048663          	beqz	s1,14da <vprintf+0x1b4>
    1392:	0004879b          	sext.w	a5,s1
    1396:	fe0917e3          	bnez	s2,1384 <vprintf+0x5e>
    139a:	fd379ee3          	bne	a5,s3,1376 <vprintf+0x50>
    139e:	893e                	mv	s2,a5
    13a0:	b7e5                	j	1388 <vprintf+0x62>
    13a2:	05778063          	beq	a5,s7,13e2 <vprintf+0xbc>
    13a6:	05878c63          	beq	a5,s8,13fe <vprintf+0xd8>
    13aa:	07978863          	beq	a5,s9,141a <vprintf+0xf4>
    13ae:	09a78463          	beq	a5,s10,1436 <vprintf+0x110>
    13b2:	07300713          	li	a4,115
    13b6:	0ce78263          	beq	a5,a4,147a <vprintf+0x154>
    13ba:	06300713          	li	a4,99
    13be:	0ee78763          	beq	a5,a4,14ac <vprintf+0x186>
    13c2:	11378163          	beq	a5,s3,14c4 <vprintf+0x19e>
    13c6:	85ce                	mv	a1,s3
    13c8:	8552                	mv	a0,s4
    13ca:	00000097          	auipc	ra,0x0
    13ce:	ea4080e7          	jalr	-348(ra) # 126e <putc>
    13d2:	85a6                	mv	a1,s1
    13d4:	8552                	mv	a0,s4
    13d6:	00000097          	auipc	ra,0x0
    13da:	e98080e7          	jalr	-360(ra) # 126e <putc>
    13de:	4901                	li	s2,0
    13e0:	b765                	j	1388 <vprintf+0x62>
    13e2:	008a8493          	addi	s1,s5,8
    13e6:	4685                	li	a3,1
    13e8:	4629                	li	a2,10
    13ea:	000aa583          	lw	a1,0(s5)
    13ee:	8552                	mv	a0,s4
    13f0:	00000097          	auipc	ra,0x0
    13f4:	e9a080e7          	jalr	-358(ra) # 128a <printint>
    13f8:	8aa6                	mv	s5,s1
    13fa:	4901                	li	s2,0
    13fc:	b771                	j	1388 <vprintf+0x62>
    13fe:	008a8493          	addi	s1,s5,8
    1402:	4681                	li	a3,0
    1404:	4629                	li	a2,10
    1406:	000aa583          	lw	a1,0(s5)
    140a:	8552                	mv	a0,s4
    140c:	00000097          	auipc	ra,0x0
    1410:	e7e080e7          	jalr	-386(ra) # 128a <printint>
    1414:	8aa6                	mv	s5,s1
    1416:	4901                	li	s2,0
    1418:	bf85                	j	1388 <vprintf+0x62>
    141a:	008a8493          	addi	s1,s5,8
    141e:	4681                	li	a3,0
    1420:	4641                	li	a2,16
    1422:	000aa583          	lw	a1,0(s5)
    1426:	8552                	mv	a0,s4
    1428:	00000097          	auipc	ra,0x0
    142c:	e62080e7          	jalr	-414(ra) # 128a <printint>
    1430:	8aa6                	mv	s5,s1
    1432:	4901                	li	s2,0
    1434:	bf91                	j	1388 <vprintf+0x62>
    1436:	008a8913          	addi	s2,s5,8
    143a:	000aba83          	ld	s5,0(s5)
    143e:	03000593          	li	a1,48
    1442:	8552                	mv	a0,s4
    1444:	00000097          	auipc	ra,0x0
    1448:	e2a080e7          	jalr	-470(ra) # 126e <putc>
    144c:	85e6                	mv	a1,s9
    144e:	8552                	mv	a0,s4
    1450:	00000097          	auipc	ra,0x0
    1454:	e1e080e7          	jalr	-482(ra) # 126e <putc>
    1458:	44c1                	li	s1,16
    145a:	03cad793          	srli	a5,s5,0x3c
    145e:	97da                	add	a5,a5,s6
    1460:	0007c583          	lbu	a1,0(a5)
    1464:	8552                	mv	a0,s4
    1466:	00000097          	auipc	ra,0x0
    146a:	e08080e7          	jalr	-504(ra) # 126e <putc>
    146e:	0a92                	slli	s5,s5,0x4
    1470:	34fd                	addiw	s1,s1,-1
    1472:	f4e5                	bnez	s1,145a <vprintf+0x134>
    1474:	8aca                	mv	s5,s2
    1476:	4901                	li	s2,0
    1478:	bf01                	j	1388 <vprintf+0x62>
    147a:	008a8913          	addi	s2,s5,8
    147e:	000ab483          	ld	s1,0(s5)
    1482:	c085                	beqz	s1,14a2 <vprintf+0x17c>
    1484:	0004c583          	lbu	a1,0(s1)
    1488:	c5b1                	beqz	a1,14d4 <vprintf+0x1ae>
    148a:	8552                	mv	a0,s4
    148c:	00000097          	auipc	ra,0x0
    1490:	de2080e7          	jalr	-542(ra) # 126e <putc>
    1494:	0485                	addi	s1,s1,1
    1496:	0004c583          	lbu	a1,0(s1)
    149a:	f9e5                	bnez	a1,148a <vprintf+0x164>
    149c:	8aca                	mv	s5,s2
    149e:	4901                	li	s2,0
    14a0:	b5e5                	j	1388 <vprintf+0x62>
    14a2:	f30d8493          	addi	s1,s11,-208 # 1f30 <mkdir+0xe4>
    14a6:	02800593          	li	a1,40
    14aa:	b7c5                	j	148a <vprintf+0x164>
    14ac:	008a8493          	addi	s1,s5,8
    14b0:	000ac583          	lbu	a1,0(s5)
    14b4:	8552                	mv	a0,s4
    14b6:	00000097          	auipc	ra,0x0
    14ba:	db8080e7          	jalr	-584(ra) # 126e <putc>
    14be:	8aa6                	mv	s5,s1
    14c0:	4901                	li	s2,0
    14c2:	b5d9                	j	1388 <vprintf+0x62>
    14c4:	85ce                	mv	a1,s3
    14c6:	8552                	mv	a0,s4
    14c8:	00000097          	auipc	ra,0x0
    14cc:	da6080e7          	jalr	-602(ra) # 126e <putc>
    14d0:	4901                	li	s2,0
    14d2:	bd5d                	j	1388 <vprintf+0x62>
    14d4:	8aca                	mv	s5,s2
    14d6:	4901                	li	s2,0
    14d8:	bd45                	j	1388 <vprintf+0x62>
    14da:	70a6                	ld	ra,104(sp)
    14dc:	7406                	ld	s0,96(sp)
    14de:	64e6                	ld	s1,88(sp)
    14e0:	6946                	ld	s2,80(sp)
    14e2:	69a6                	ld	s3,72(sp)
    14e4:	6a06                	ld	s4,64(sp)
    14e6:	7ae2                	ld	s5,56(sp)
    14e8:	7b42                	ld	s6,48(sp)
    14ea:	7ba2                	ld	s7,40(sp)
    14ec:	7c02                	ld	s8,32(sp)
    14ee:	6ce2                	ld	s9,24(sp)
    14f0:	6d42                	ld	s10,16(sp)
    14f2:	6da2                	ld	s11,8(sp)
    14f4:	6165                	addi	sp,sp,112
    14f6:	8082                	ret

00000000000014f8 <fprintf>:
    14f8:	715d                	addi	sp,sp,-80
    14fa:	ec06                	sd	ra,24(sp)
    14fc:	f032                	sd	a2,32(sp)
    14fe:	f436                	sd	a3,40(sp)
    1500:	f83a                	sd	a4,48(sp)
    1502:	fc3e                	sd	a5,56(sp)
    1504:	e0c2                	sd	a6,64(sp)
    1506:	e4c6                	sd	a7,72(sp)
    1508:	1010                	addi	a2,sp,32
    150a:	e432                	sd	a2,8(sp)
    150c:	00000097          	auipc	ra,0x0
    1510:	e1a080e7          	jalr	-486(ra) # 1326 <vprintf>
    1514:	60e2                	ld	ra,24(sp)
    1516:	6161                	addi	sp,sp,80
    1518:	8082                	ret

000000000000151a <printf>:
    151a:	711d                	addi	sp,sp,-96
    151c:	ec06                	sd	ra,24(sp)
    151e:	f42e                	sd	a1,40(sp)
    1520:	f832                	sd	a2,48(sp)
    1522:	fc36                	sd	a3,56(sp)
    1524:	e0ba                	sd	a4,64(sp)
    1526:	e4be                	sd	a5,72(sp)
    1528:	e8c2                	sd	a6,80(sp)
    152a:	ecc6                	sd	a7,88(sp)
    152c:	1030                	addi	a2,sp,40
    152e:	e432                	sd	a2,8(sp)
    1530:	85aa                	mv	a1,a0
    1532:	4505                	li	a0,1
    1534:	00000097          	auipc	ra,0x0
    1538:	df2080e7          	jalr	-526(ra) # 1326 <vprintf>
    153c:	60e2                	ld	ra,24(sp)
    153e:	6125                	addi	sp,sp,96
    1540:	8082                	ret

0000000000001542 <cksum>:
    1542:	cdb1                	beqz	a1,159e <cksum+0x5c>
    1544:	00b50833          	add	a6,a0,a1
    1548:	4781                	li	a5,0
    154a:	00002637          	lui	a2,0x2
    154e:	f5060613          	addi	a2,a2,-176 # 1f50 <crctab>
    1552:	0505                	addi	a0,a0,1
    1554:	0087969b          	slliw	a3,a5,0x8
    1558:	0187d71b          	srliw	a4,a5,0x18
    155c:	fff54783          	lbu	a5,-1(a0)
    1560:	8f3d                	xor	a4,a4,a5
    1562:	1702                	slli	a4,a4,0x20
    1564:	9301                	srli	a4,a4,0x20
    1566:	070a                	slli	a4,a4,0x2
    1568:	9732                	add	a4,a4,a2
    156a:	431c                	lw	a5,0(a4)
    156c:	8fb5                	xor	a5,a5,a3
    156e:	2781                	sext.w	a5,a5
    1570:	fea811e3          	bne	a6,a0,1552 <cksum+0x10>
    1574:	00002637          	lui	a2,0x2
    1578:	f5060613          	addi	a2,a2,-176 # 1f50 <crctab>
    157c:	0ff5f693          	andi	a3,a1,255
    1580:	81a1                	srli	a1,a1,0x8
    1582:	0087951b          	slliw	a0,a5,0x8
    1586:	0187d71b          	srliw	a4,a5,0x18
    158a:	8f35                	xor	a4,a4,a3
    158c:	070a                	slli	a4,a4,0x2
    158e:	9732                	add	a4,a4,a2
    1590:	431c                	lw	a5,0(a4)
    1592:	8fa9                	xor	a5,a5,a0
    1594:	2781                	sext.w	a5,a5
    1596:	f1fd                	bnez	a1,157c <cksum+0x3a>
    1598:	fff7c513          	not	a0,a5
    159c:	8082                	ret
    159e:	4781                	li	a5,0
    15a0:	bfe5                	j	1598 <cksum+0x56>

00000000000015a2 <swap_bytes>:
    15a2:	ce19                	beqz	a2,15c0 <swap_bytes+0x1e>
    15a4:	87aa                	mv	a5,a0
    15a6:	962a                	add	a2,a2,a0
    15a8:	0007c703          	lbu	a4,0(a5)
    15ac:	0005c683          	lbu	a3,0(a1)
    15b0:	00d78023          	sb	a3,0(a5)
    15b4:	00e58023          	sb	a4,0(a1)
    15b8:	0785                	addi	a5,a5,1
    15ba:	0585                	addi	a1,a1,1
    15bc:	fec796e3          	bne	a5,a2,15a8 <swap_bytes+0x6>
    15c0:	8082                	ret

00000000000015c2 <random_init>:
    15c2:	7139                	addi	sp,sp,-64
    15c4:	fc06                	sd	ra,56(sp)
    15c6:	f822                	sd	s0,48(sp)
    15c8:	f426                	sd	s1,40(sp)
    15ca:	f04a                	sd	s2,32(sp)
    15cc:	ec4e                	sd	s3,24(sp)
    15ce:	e852                	sd	s4,16(sp)
    15d0:	c62a                	sw	a0,12(sp)
    15d2:	000037b7          	lui	a5,0x3
    15d6:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    15da:	eca5                	bnez	s1,1652 <random_init+0x90>
    15dc:	00003737          	lui	a4,0x3
    15e0:	01070913          	addi	s2,a4,16 # 3010 <s>
    15e4:	01070713          	addi	a4,a4,16
    15e8:	87a6                	mv	a5,s1
    15ea:	10000693          	li	a3,256
    15ee:	00f70023          	sb	a5,0(a4)
    15f2:	2785                	addiw	a5,a5,1
    15f4:	0705                	addi	a4,a4,1
    15f6:	fed79ce3          	bne	a5,a3,15ee <random_init+0x2c>
    15fa:	4401                	li	s0,0
    15fc:	000039b7          	lui	s3,0x3
    1600:	01098993          	addi	s3,s3,16 # 3010 <s>
    1604:	10000a13          	li	s4,256
    1608:	0034f793          	andi	a5,s1,3
    160c:	0818                	addi	a4,sp,16
    160e:	97ba                	add	a5,a5,a4
    1610:	ffc7c783          	lbu	a5,-4(a5)
    1614:	00094703          	lbu	a4,0(s2)
    1618:	9fb9                	addw	a5,a5,a4
    161a:	9c3d                	addw	s0,s0,a5
    161c:	0ff47413          	andi	s0,s0,255
    1620:	4605                	li	a2,1
    1622:	008985b3          	add	a1,s3,s0
    1626:	854a                	mv	a0,s2
    1628:	00000097          	auipc	ra,0x0
    162c:	f7a080e7          	jalr	-134(ra) # 15a2 <swap_bytes>
    1630:	2485                	addiw	s1,s1,1
    1632:	0905                	addi	s2,s2,1
    1634:	fd449ae3          	bne	s1,s4,1608 <random_init+0x46>
    1638:	000037b7          	lui	a5,0x3
    163c:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1640:	000037b7          	lui	a5,0x3
    1644:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1648:	000037b7          	lui	a5,0x3
    164c:	4705                	li	a4,1
    164e:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1652:	70e2                	ld	ra,56(sp)
    1654:	7442                	ld	s0,48(sp)
    1656:	74a2                	ld	s1,40(sp)
    1658:	7902                	ld	s2,32(sp)
    165a:	69e2                	ld	s3,24(sp)
    165c:	6a42                	ld	s4,16(sp)
    165e:	6121                	addi	sp,sp,64
    1660:	8082                	ret

0000000000001662 <random_bytes>:
    1662:	7139                	addi	sp,sp,-64
    1664:	fc06                	sd	ra,56(sp)
    1666:	f822                	sd	s0,48(sp)
    1668:	f426                	sd	s1,40(sp)
    166a:	f04a                	sd	s2,32(sp)
    166c:	ec4e                	sd	s3,24(sp)
    166e:	e852                	sd	s4,16(sp)
    1670:	e456                	sd	s5,8(sp)
    1672:	e05a                	sd	s6,0(sp)
    1674:	892a                	mv	s2,a0
    1676:	8aae                	mv	s5,a1
    1678:	000037b7          	lui	a5,0x3
    167c:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1680:	c3c1                	beqz	a5,1700 <random_bytes+0x9e>
    1682:	060a8563          	beqz	s5,16ec <random_bytes+0x8a>
    1686:	9aca                	add	s5,s5,s2
    1688:	00003a37          	lui	s4,0x3
    168c:	000034b7          	lui	s1,0x3
    1690:	01048493          	addi	s1,s1,16 # 3010 <s>
    1694:	000039b7          	lui	s3,0x3
    1698:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    169c:	2505                	addiw	a0,a0,1
    169e:	0ff57513          	andi	a0,a0,255
    16a2:	00aa02a3          	sb	a0,5(s4)
    16a6:	00a48b33          	add	s6,s1,a0
    16aa:	000b4403          	lbu	s0,0(s6)
    16ae:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    16b2:	9c3d                	addw	s0,s0,a5
    16b4:	0ff47413          	andi	s0,s0,255
    16b8:	00898223          	sb	s0,4(s3)
    16bc:	4605                	li	a2,1
    16be:	008485b3          	add	a1,s1,s0
    16c2:	855a                	mv	a0,s6
    16c4:	00000097          	auipc	ra,0x0
    16c8:	ede080e7          	jalr	-290(ra) # 15a2 <swap_bytes>
    16cc:	9426                	add	s0,s0,s1
    16ce:	000b4783          	lbu	a5,0(s6)
    16d2:	00044703          	lbu	a4,0(s0)
    16d6:	9fb9                	addw	a5,a5,a4
    16d8:	0ff7f793          	andi	a5,a5,255
    16dc:	97a6                	add	a5,a5,s1
    16de:	0007c783          	lbu	a5,0(a5)
    16e2:	00f90023          	sb	a5,0(s2)
    16e6:	0905                	addi	s2,s2,1
    16e8:	fb2a98e3          	bne	s5,s2,1698 <random_bytes+0x36>
    16ec:	70e2                	ld	ra,56(sp)
    16ee:	7442                	ld	s0,48(sp)
    16f0:	74a2                	ld	s1,40(sp)
    16f2:	7902                	ld	s2,32(sp)
    16f4:	69e2                	ld	s3,24(sp)
    16f6:	6a42                	ld	s4,16(sp)
    16f8:	6aa2                	ld	s5,8(sp)
    16fa:	6b02                	ld	s6,0(sp)
    16fc:	6121                	addi	sp,sp,64
    16fe:	8082                	ret
    1700:	4501                	li	a0,0
    1702:	00000097          	auipc	ra,0x0
    1706:	ec0080e7          	jalr	-320(ra) # 15c2 <random_init>
    170a:	bfa5                	j	1682 <random_bytes+0x20>

000000000000170c <random_ulong>:
    170c:	1101                	addi	sp,sp,-32
    170e:	ec06                	sd	ra,24(sp)
    1710:	45a1                	li	a1,8
    1712:	0028                	addi	a0,sp,8
    1714:	00000097          	auipc	ra,0x0
    1718:	f4e080e7          	jalr	-178(ra) # 1662 <random_bytes>
    171c:	6522                	ld	a0,8(sp)
    171e:	60e2                	ld	ra,24(sp)
    1720:	6105                	addi	sp,sp,32
    1722:	8082                	ret

0000000000001724 <shuffle>:
    1724:	c9b9                	beqz	a1,177a <shuffle+0x56>
    1726:	7179                	addi	sp,sp,-48
    1728:	f406                	sd	ra,40(sp)
    172a:	f022                	sd	s0,32(sp)
    172c:	ec26                	sd	s1,24(sp)
    172e:	e84a                	sd	s2,16(sp)
    1730:	e44e                	sd	s3,8(sp)
    1732:	e052                	sd	s4,0(sp)
    1734:	8a2a                	mv	s4,a0
    1736:	89ae                	mv	s3,a1
    1738:	84b2                	mv	s1,a2
    173a:	892a                	mv	s2,a0
    173c:	4401                	li	s0,0
    173e:	00000097          	auipc	ra,0x0
    1742:	fce080e7          	jalr	-50(ra) # 170c <random_ulong>
    1746:	408985b3          	sub	a1,s3,s0
    174a:	02b575b3          	remu	a1,a0,a1
    174e:	95a2                	add	a1,a1,s0
    1750:	029585b3          	mul	a1,a1,s1
    1754:	8626                	mv	a2,s1
    1756:	95d2                	add	a1,a1,s4
    1758:	854a                	mv	a0,s2
    175a:	00000097          	auipc	ra,0x0
    175e:	e48080e7          	jalr	-440(ra) # 15a2 <swap_bytes>
    1762:	0405                	addi	s0,s0,1
    1764:	9926                	add	s2,s2,s1
    1766:	fc899ce3          	bne	s3,s0,173e <shuffle+0x1a>
    176a:	70a2                	ld	ra,40(sp)
    176c:	7402                	ld	s0,32(sp)
    176e:	64e2                	ld	s1,24(sp)
    1770:	6942                	ld	s2,16(sp)
    1772:	69a2                	ld	s3,8(sp)
    1774:	6a02                	ld	s4,0(sp)
    1776:	6145                	addi	sp,sp,48
    1778:	8082                	ret
    177a:	8082                	ret

000000000000177c <arc4_init>:
    177c:	100500a3          	sb	zero,257(a0)
    1780:	10050023          	sb	zero,256(a0)
    1784:	4781                	li	a5,0
    1786:	10000693          	li	a3,256
    178a:	00f50733          	add	a4,a0,a5
    178e:	00f70023          	sb	a5,0(a4)
    1792:	0785                	addi	a5,a5,1
    1794:	fed79be3          	bne	a5,a3,178a <arc4_init+0xe>
    1798:	86aa                	mv	a3,a0
    179a:	10050e13          	addi	t3,a0,256
    179e:	4701                	li	a4,0
    17a0:	4781                	li	a5,0
    17a2:	0006c883          	lbu	a7,0(a3)
    17a6:	00f58833          	add	a6,a1,a5
    17aa:	00084803          	lbu	a6,0(a6)
    17ae:	00e8873b          	addw	a4,a7,a4
    17b2:	00e8073b          	addw	a4,a6,a4
    17b6:	0ff77713          	andi	a4,a4,255
    17ba:	00e50833          	add	a6,a0,a4
    17be:	00084303          	lbu	t1,0(a6)
    17c2:	00668023          	sb	t1,0(a3)
    17c6:	01180023          	sb	a7,0(a6)
    17ca:	0785                	addi	a5,a5,1
    17cc:	00c7b833          	sltu	a6,a5,a2
    17d0:	41000833          	neg	a6,a6
    17d4:	0107f7b3          	and	a5,a5,a6
    17d8:	0685                	addi	a3,a3,1
    17da:	fdc694e3          	bne	a3,t3,17a2 <arc4_init+0x26>
    17de:	8082                	ret

00000000000017e0 <arc4_crypt>:
    17e0:	10054e03          	lbu	t3,256(a0)
    17e4:	10154803          	lbu	a6,257(a0)
    17e8:	fff60e93          	addi	t4,a2,-1
    17ec:	c225                	beqz	a2,184c <arc4_crypt+0x6c>
    17ee:	00c588b3          	add	a7,a1,a2
    17f2:	86ae                	mv	a3,a1
    17f4:	001e031b          	addiw	t1,t3,1
    17f8:	40b3033b          	subw	t1,t1,a1
    17fc:	00d3073b          	addw	a4,t1,a3
    1800:	0ff77713          	andi	a4,a4,255
    1804:	972a                	add	a4,a4,a0
    1806:	00074603          	lbu	a2,0(a4)
    180a:	0106083b          	addw	a6,a2,a6
    180e:	0ff87813          	andi	a6,a6,255
    1812:	010507b3          	add	a5,a0,a6
    1816:	0007c583          	lbu	a1,0(a5)
    181a:	00b70023          	sb	a1,0(a4)
    181e:	00c78023          	sb	a2,0(a5)
    1822:	0685                	addi	a3,a3,1
    1824:	00074783          	lbu	a5,0(a4)
    1828:	9fb1                	addw	a5,a5,a2
    182a:	0ff7f793          	andi	a5,a5,255
    182e:	97aa                	add	a5,a5,a0
    1830:	0007c783          	lbu	a5,0(a5)
    1834:	fff6c703          	lbu	a4,-1(a3)
    1838:	8fb9                	xor	a5,a5,a4
    183a:	fef68fa3          	sb	a5,-1(a3)
    183e:	fb169fe3          	bne	a3,a7,17fc <arc4_crypt+0x1c>
    1842:	2e85                	addiw	t4,t4,1
    1844:	01ce8e3b          	addw	t3,t4,t3
    1848:	0ffe7e13          	andi	t3,t3,255
    184c:	11c50023          	sb	t3,256(a0)
    1850:	110500a3          	sb	a6,257(a0)
    1854:	8082                	ret

0000000000001856 <_main>:
    1856:	1141                	addi	sp,sp,-16
    1858:	e406                	sd	ra,8(sp)
    185a:	00000097          	auipc	ra,0x0
    185e:	956080e7          	jalr	-1706(ra) # 11b0 <main>
    1862:	4501                	li	a0,0
    1864:	00000097          	auipc	ra,0x0
    1868:	578080e7          	jalr	1400(ra) # 1ddc <exit>
    186c:	60a2                	ld	ra,8(sp)
    186e:	0141                	addi	sp,sp,16
    1870:	8082                	ret

0000000000001872 <strcmp>:
    1872:	00054783          	lbu	a5,0(a0)
    1876:	cb91                	beqz	a5,188a <strcmp+0x18>
    1878:	0005c703          	lbu	a4,0(a1)
    187c:	00f71763          	bne	a4,a5,188a <strcmp+0x18>
    1880:	0505                	addi	a0,a0,1
    1882:	0585                	addi	a1,a1,1
    1884:	00054783          	lbu	a5,0(a0)
    1888:	fbe5                	bnez	a5,1878 <strcmp+0x6>
    188a:	0005c503          	lbu	a0,0(a1)
    188e:	40a7853b          	subw	a0,a5,a0
    1892:	8082                	ret

0000000000001894 <strcpy>:
    1894:	87aa                	mv	a5,a0
    1896:	0585                	addi	a1,a1,1
    1898:	0785                	addi	a5,a5,1
    189a:	fff5c703          	lbu	a4,-1(a1)
    189e:	fee78fa3          	sb	a4,-1(a5)
    18a2:	fb75                	bnez	a4,1896 <strcpy+0x2>
    18a4:	8082                	ret

00000000000018a6 <strlen>:
    18a6:	00054783          	lbu	a5,0(a0)
    18aa:	cf81                	beqz	a5,18c2 <strlen+0x1c>
    18ac:	0505                	addi	a0,a0,1
    18ae:	87aa                	mv	a5,a0
    18b0:	4685                	li	a3,1
    18b2:	9e89                	subw	a3,a3,a0
    18b4:	00f6853b          	addw	a0,a3,a5
    18b8:	0785                	addi	a5,a5,1
    18ba:	fff7c703          	lbu	a4,-1(a5)
    18be:	fb7d                	bnez	a4,18b4 <strlen+0xe>
    18c0:	8082                	ret
    18c2:	4501                	li	a0,0
    18c4:	8082                	ret

00000000000018c6 <memset>:
    18c6:	ca19                	beqz	a2,18dc <memset+0x16>
    18c8:	87aa                	mv	a5,a0
    18ca:	1602                	slli	a2,a2,0x20
    18cc:	9201                	srli	a2,a2,0x20
    18ce:	00a60733          	add	a4,a2,a0
    18d2:	00b78023          	sb	a1,0(a5)
    18d6:	0785                	addi	a5,a5,1
    18d8:	fee79de3          	bne	a5,a4,18d2 <memset+0xc>
    18dc:	8082                	ret

00000000000018de <memcmp>:
    18de:	1101                	addi	sp,sp,-32
    18e0:	ec06                	sd	ra,24(sp)
    18e2:	e822                	sd	s0,16(sp)
    18e4:	e426                	sd	s1,8(sp)
    18e6:	e04a                	sd	s2,0(sp)
    18e8:	892a                	mv	s2,a0
    18ea:	842e                	mv	s0,a1
    18ec:	84b2                	mv	s1,a2
    18ee:	c915                	beqz	a0,1922 <memcmp+0x44>
    18f0:	c5ad                	beqz	a1,195a <memcmp+0x7c>
    18f2:	fff60713          	addi	a4,a2,-1
    18f6:	c645                	beqz	a2,199e <memcmp+0xc0>
    18f8:	87ca                	mv	a5,s2
    18fa:	00190613          	addi	a2,s2,1
    18fe:	963a                	add	a2,a2,a4
    1900:	0007c683          	lbu	a3,0(a5)
    1904:	00044703          	lbu	a4,0(s0)
    1908:	08e69463          	bne	a3,a4,1990 <memcmp+0xb2>
    190c:	0785                	addi	a5,a5,1
    190e:	0405                	addi	s0,s0,1
    1910:	fec798e3          	bne	a5,a2,1900 <memcmp+0x22>
    1914:	4501                	li	a0,0
    1916:	60e2                	ld	ra,24(sp)
    1918:	6442                	ld	s0,16(sp)
    191a:	64a2                	ld	s1,8(sp)
    191c:	6902                	ld	s2,0(sp)
    191e:	6105                	addi	sp,sp,32
    1920:	8082                	ret
    1922:	4501                	li	a0,0
    1924:	da6d                	beqz	a2,1916 <memcmp+0x38>
    1926:	03200693          	li	a3,50
    192a:	00002637          	lui	a2,0x2
    192e:	35060613          	addi	a2,a2,848 # 2350 <crctab+0x400>
    1932:	000025b7          	lui	a1,0x2
    1936:	36058593          	addi	a1,a1,864 # 2360 <crctab+0x410>
    193a:	4509                	li	a0,2
    193c:	00000097          	auipc	ra,0x0
    1940:	bbc080e7          	jalr	-1092(ra) # 14f8 <fprintf>
    1944:	650d                	lui	a0,0x3
    1946:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    194a:	00000097          	auipc	ra,0x0
    194e:	492080e7          	jalr	1170(ra) # 1ddc <exit>
    1952:	fff48713          	addi	a4,s1,-1
    1956:	f04d                	bnez	s0,18f8 <memcmp+0x1a>
    1958:	a011                	j	195c <memcmp+0x7e>
    195a:	c221                	beqz	a2,199a <memcmp+0xbc>
    195c:	03300693          	li	a3,51
    1960:	00002637          	lui	a2,0x2
    1964:	35060613          	addi	a2,a2,848 # 2350 <crctab+0x400>
    1968:	000025b7          	lui	a1,0x2
    196c:	3a858593          	addi	a1,a1,936 # 23a8 <crctab+0x458>
    1970:	4509                	li	a0,2
    1972:	00000097          	auipc	ra,0x0
    1976:	b86080e7          	jalr	-1146(ra) # 14f8 <fprintf>
    197a:	650d                	lui	a0,0x3
    197c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1980:	00000097          	auipc	ra,0x0
    1984:	45c080e7          	jalr	1116(ra) # 1ddc <exit>
    1988:	fff48713          	addi	a4,s1,-1
    198c:	4401                	li	s0,0
    198e:	b7ad                	j	18f8 <memcmp+0x1a>
    1990:	4505                	li	a0,1
    1992:	f8d762e3          	bltu	a4,a3,1916 <memcmp+0x38>
    1996:	557d                	li	a0,-1
    1998:	bfbd                	j	1916 <memcmp+0x38>
    199a:	4501                	li	a0,0
    199c:	bfad                	j	1916 <memcmp+0x38>
    199e:	4501                	li	a0,0
    19a0:	bf9d                	j	1916 <memcmp+0x38>

00000000000019a2 <memcpy>:
    19a2:	1101                	addi	sp,sp,-32
    19a4:	ec06                	sd	ra,24(sp)
    19a6:	e822                	sd	s0,16(sp)
    19a8:	e426                	sd	s1,8(sp)
    19aa:	e04a                	sd	s2,0(sp)
    19ac:	84aa                	mv	s1,a0
    19ae:	842e                	mv	s0,a1
    19b0:	8932                	mv	s2,a2
    19b2:	c51d                	beqz	a0,19e0 <memcpy+0x3e>
    19b4:	c1ad                	beqz	a1,1a16 <memcpy+0x74>
    19b6:	fff60693          	addi	a3,a2,-1
    19ba:	ce01                	beqz	a2,19d2 <memcpy+0x30>
    19bc:	0685                	addi	a3,a3,1
    19be:	96a6                	add	a3,a3,s1
    19c0:	87a6                	mv	a5,s1
    19c2:	0405                	addi	s0,s0,1
    19c4:	0785                	addi	a5,a5,1
    19c6:	fff44703          	lbu	a4,-1(s0)
    19ca:	fee78fa3          	sb	a4,-1(a5)
    19ce:	fed79ae3          	bne	a5,a3,19c2 <memcpy+0x20>
    19d2:	8526                	mv	a0,s1
    19d4:	60e2                	ld	ra,24(sp)
    19d6:	6442                	ld	s0,16(sp)
    19d8:	64a2                	ld	s1,8(sp)
    19da:	6902                	ld	s2,0(sp)
    19dc:	6105                	addi	sp,sp,32
    19de:	8082                	ret
    19e0:	da6d                	beqz	a2,19d2 <memcpy+0x30>
    19e2:	04000693          	li	a3,64
    19e6:	00002637          	lui	a2,0x2
    19ea:	35060613          	addi	a2,a2,848 # 2350 <crctab+0x400>
    19ee:	000025b7          	lui	a1,0x2
    19f2:	3f058593          	addi	a1,a1,1008 # 23f0 <crctab+0x4a0>
    19f6:	4509                	li	a0,2
    19f8:	00000097          	auipc	ra,0x0
    19fc:	b00080e7          	jalr	-1280(ra) # 14f8 <fprintf>
    1a00:	650d                	lui	a0,0x3
    1a02:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a06:	00000097          	auipc	ra,0x0
    1a0a:	3d6080e7          	jalr	982(ra) # 1ddc <exit>
    1a0e:	fff90693          	addi	a3,s2,-1
    1a12:	f44d                	bnez	s0,19bc <memcpy+0x1a>
    1a14:	a011                	j	1a18 <memcpy+0x76>
    1a16:	de55                	beqz	a2,19d2 <memcpy+0x30>
    1a18:	04100693          	li	a3,65
    1a1c:	00002637          	lui	a2,0x2
    1a20:	35060613          	addi	a2,a2,848 # 2350 <crctab+0x400>
    1a24:	000025b7          	lui	a1,0x2
    1a28:	43858593          	addi	a1,a1,1080 # 2438 <crctab+0x4e8>
    1a2c:	4509                	li	a0,2
    1a2e:	00000097          	auipc	ra,0x0
    1a32:	aca080e7          	jalr	-1334(ra) # 14f8 <fprintf>
    1a36:	650d                	lui	a0,0x3
    1a38:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a3c:	00000097          	auipc	ra,0x0
    1a40:	3a0080e7          	jalr	928(ra) # 1ddc <exit>
    1a44:	fff90693          	addi	a3,s2,-1
    1a48:	4401                	li	s0,0
    1a4a:	bf8d                	j	19bc <memcpy+0x1a>

0000000000001a4c <itoa>:
    1a4c:	1101                	addi	sp,sp,-32
    1a4e:	ec06                	sd	ra,24(sp)
    1a50:	e822                	sd	s0,16(sp)
    1a52:	e426                	sd	s1,8(sp)
    1a54:	842a                	mv	s0,a0
    1a56:	41f5d71b          	sraiw	a4,a1,0x1f
    1a5a:	00e5c7b3          	xor	a5,a1,a4
    1a5e:	9f99                	subw	a5,a5,a4
    1a60:	84aa                	mv	s1,a0
    1a62:	862a                	mv	a2,a0
    1a64:	4681                	li	a3,0
    1a66:	4529                	li	a0,10
    1a68:	4825                	li	a6,9
    1a6a:	88b6                	mv	a7,a3
    1a6c:	2685                	addiw	a3,a3,1
    1a6e:	02a7e73b          	remw	a4,a5,a0
    1a72:	0307071b          	addiw	a4,a4,48
    1a76:	00e60023          	sb	a4,0(a2)
    1a7a:	873e                	mv	a4,a5
    1a7c:	02a7c7bb          	divw	a5,a5,a0
    1a80:	0605                	addi	a2,a2,1
    1a82:	fee844e3          	blt	a6,a4,1a6a <itoa+0x1e>
    1a86:	0405c863          	bltz	a1,1ad6 <itoa+0x8a>
    1a8a:	96a2                	add	a3,a3,s0
    1a8c:	00068023          	sb	zero,0(a3)
    1a90:	8522                	mv	a0,s0
    1a92:	00000097          	auipc	ra,0x0
    1a96:	e14080e7          	jalr	-492(ra) # 18a6 <strlen>
    1a9a:	fff5071b          	addiw	a4,a0,-1
    1a9e:	02e05763          	blez	a4,1acc <itoa+0x80>
    1aa2:	9722                	add	a4,a4,s0
    1aa4:	4681                	li	a3,0
    1aa6:	0004c783          	lbu	a5,0(s1)
    1aaa:	00074603          	lbu	a2,0(a4)
    1aae:	00c48023          	sb	a2,0(s1)
    1ab2:	00f70023          	sb	a5,0(a4)
    1ab6:	0016879b          	addiw	a5,a3,1
    1aba:	0007869b          	sext.w	a3,a5
    1abe:	0485                	addi	s1,s1,1
    1ac0:	177d                	addi	a4,a4,-1
    1ac2:	fff7c793          	not	a5,a5
    1ac6:	9fa9                	addw	a5,a5,a0
    1ac8:	fcf6cfe3          	blt	a3,a5,1aa6 <itoa+0x5a>
    1acc:	60e2                	ld	ra,24(sp)
    1ace:	6442                	ld	s0,16(sp)
    1ad0:	64a2                	ld	s1,8(sp)
    1ad2:	6105                	addi	sp,sp,32
    1ad4:	8082                	ret
    1ad6:	96a2                	add	a3,a3,s0
    1ad8:	02d00793          	li	a5,45
    1adc:	00f68023          	sb	a5,0(a3)
    1ae0:	0028869b          	addiw	a3,a7,2
    1ae4:	b75d                	j	1a8a <itoa+0x3e>

0000000000001ae6 <atoi>:
    1ae6:	00054783          	lbu	a5,0(a0)
    1aea:	02000713          	li	a4,32
    1aee:	00e79763          	bne	a5,a4,1afc <atoi+0x16>
    1af2:	0505                	addi	a0,a0,1
    1af4:	00054783          	lbu	a5,0(a0)
    1af8:	fee78de3          	beq	a5,a4,1af2 <atoi+0xc>
    1afc:	02b00713          	li	a4,43
    1b00:	04e78663          	beq	a5,a4,1b4c <atoi+0x66>
    1b04:	02d00713          	li	a4,45
    1b08:	4805                	li	a6,1
    1b0a:	04e78463          	beq	a5,a4,1b52 <atoi+0x6c>
    1b0e:	00054683          	lbu	a3,0(a0)
    1b12:	fd06879b          	addiw	a5,a3,-48
    1b16:	0ff7f793          	andi	a5,a5,255
    1b1a:	4725                	li	a4,9
    1b1c:	02f76e63          	bltu	a4,a5,1b58 <atoi+0x72>
    1b20:	4601                	li	a2,0
    1b22:	45a5                	li	a1,9
    1b24:	0505                	addi	a0,a0,1
    1b26:	0026179b          	slliw	a5,a2,0x2
    1b2a:	9fb1                	addw	a5,a5,a2
    1b2c:	0017979b          	slliw	a5,a5,0x1
    1b30:	9fb5                	addw	a5,a5,a3
    1b32:	fd07861b          	addiw	a2,a5,-48
    1b36:	00054683          	lbu	a3,0(a0)
    1b3a:	fd06871b          	addiw	a4,a3,-48
    1b3e:	0ff77713          	andi	a4,a4,255
    1b42:	fee5f1e3          	bgeu	a1,a4,1b24 <atoi+0x3e>
    1b46:	02c8053b          	mulw	a0,a6,a2
    1b4a:	8082                	ret
    1b4c:	0505                	addi	a0,a0,1
    1b4e:	4805                	li	a6,1
    1b50:	bf7d                	j	1b0e <atoi+0x28>
    1b52:	0505                	addi	a0,a0,1
    1b54:	587d                	li	a6,-1
    1b56:	bf65                	j	1b0e <atoi+0x28>
    1b58:	4601                	li	a2,0
    1b5a:	b7f5                	j	1b46 <atoi+0x60>

0000000000001b5c <check_file_handle>:
    1b5c:	d8010113          	addi	sp,sp,-640
    1b60:	26113c23          	sd	ra,632(sp)
    1b64:	26813823          	sd	s0,624(sp)
    1b68:	26913423          	sd	s1,616(sp)
    1b6c:	27213023          	sd	s2,608(sp)
    1b70:	25313c23          	sd	s3,600(sp)
    1b74:	25413823          	sd	s4,592(sp)
    1b78:	25513423          	sd	s5,584(sp)
    1b7c:	25613023          	sd	s6,576(sp)
    1b80:	23713c23          	sd	s7,568(sp)
    1b84:	23813823          	sd	s8,560(sp)
    1b88:	23913423          	sd	s9,552(sp)
    1b8c:	23a13023          	sd	s10,544(sp)
    1b90:	21b13c23          	sd	s11,536(sp)
    1b94:	8baa                	mv	s7,a0
    1b96:	8a2e                	mv	s4,a1
    1b98:	8c32                	mv	s8,a2
    1b9a:	89b6                	mv	s3,a3
    1b9c:	040c                	addi	a1,sp,512
    1b9e:	00000097          	auipc	ra,0x0
    1ba2:	28e080e7          	jalr	654(ra) # 1e2c <fstat>
    1ba6:	20813603          	ld	a2,520(sp)
    1baa:	03361163          	bne	a2,s3,1bcc <check_file_handle+0x70>
    1bae:	06098763          	beqz	s3,1c1c <check_file_handle+0xc0>
    1bb2:	4901                	li	s2,0
    1bb4:	20000a93          	li	s5,512
    1bb8:	00002cb7          	lui	s9,0x2
    1bbc:	00002db7          	lui	s11,0x2
    1bc0:	6b0d                	lui	s6,0x3
    1bc2:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1bc6:	00002d37          	lui	s10,0x2
    1bca:	aa39                	j	1ce8 <check_file_handle+0x18c>
    1bcc:	86ce                	mv	a3,s3
    1bce:	85d2                	mv	a1,s4
    1bd0:	00002537          	lui	a0,0x2
    1bd4:	48050513          	addi	a0,a0,1152 # 2480 <crctab+0x530>
    1bd8:	00000097          	auipc	ra,0x0
    1bdc:	942080e7          	jalr	-1726(ra) # 151a <printf>
    1be0:	fc0999e3          	bnez	s3,1bb2 <check_file_handle+0x56>
    1be4:	20813683          	ld	a3,520(sp)
    1be8:	03368a63          	beq	a3,s3,1c1c <check_file_handle+0xc0>
    1bec:	0a600813          	li	a6,166
    1bf0:	000027b7          	lui	a5,0x2
    1bf4:	35078793          	addi	a5,a5,848 # 2350 <crctab+0x400>
    1bf8:	874e                	mv	a4,s3
    1bfa:	8652                	mv	a2,s4
    1bfc:	000025b7          	lui	a1,0x2
    1c00:	55058593          	addi	a1,a1,1360 # 2550 <crctab+0x600>
    1c04:	4509                	li	a0,2
    1c06:	00000097          	auipc	ra,0x0
    1c0a:	8f2080e7          	jalr	-1806(ra) # 14f8 <fprintf>
    1c0e:	650d                	lui	a0,0x3
    1c10:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c14:	00000097          	auipc	ra,0x0
    1c18:	1c8080e7          	jalr	456(ra) # 1ddc <exit>
    1c1c:	85d2                	mv	a1,s4
    1c1e:	00002537          	lui	a0,0x2
    1c22:	59850513          	addi	a0,a0,1432 # 2598 <crctab+0x648>
    1c26:	00000097          	auipc	ra,0x0
    1c2a:	8f4080e7          	jalr	-1804(ra) # 151a <printf>
    1c2e:	27813083          	ld	ra,632(sp)
    1c32:	27013403          	ld	s0,624(sp)
    1c36:	26813483          	ld	s1,616(sp)
    1c3a:	26013903          	ld	s2,608(sp)
    1c3e:	25813983          	ld	s3,600(sp)
    1c42:	25013a03          	ld	s4,592(sp)
    1c46:	24813a83          	ld	s5,584(sp)
    1c4a:	24013b03          	ld	s6,576(sp)
    1c4e:	23813b83          	ld	s7,568(sp)
    1c52:	23013c03          	ld	s8,560(sp)
    1c56:	22813c83          	ld	s9,552(sp)
    1c5a:	22013d03          	ld	s10,544(sp)
    1c5e:	21813d83          	ld	s11,536(sp)
    1c62:	28010113          	addi	sp,sp,640
    1c66:	8082                	ret
    1c68:	09d00893          	li	a7,157
    1c6c:	350c8813          	addi	a6,s9,848 # 2350 <crctab+0x400>
    1c70:	87aa                	mv	a5,a0
    1c72:	8752                	mv	a4,s4
    1c74:	86ca                	mv	a3,s2
    1c76:	8622                	mv	a2,s0
    1c78:	4b0d8593          	addi	a1,s11,1200 # 24b0 <crctab+0x560>
    1c7c:	4509                	li	a0,2
    1c7e:	00000097          	auipc	ra,0x0
    1c82:	87a080e7          	jalr	-1926(ra) # 14f8 <fprintf>
    1c86:	855a                	mv	a0,s6
    1c88:	00000097          	auipc	ra,0x0
    1c8c:	154080e7          	jalr	340(ra) # 1ddc <exit>
    1c90:	a89d                	j	1d06 <check_file_handle+0x1aa>
    1c92:	00160593          	addi	a1,a2,1
    1c96:	0285f163          	bgeu	a1,s0,1cb8 <check_file_handle+0x15c>
    1c9a:	00c10733          	add	a4,sp,a2
    1c9e:	00b487b3          	add	a5,s1,a1
    1ca2:	00174683          	lbu	a3,1(a4)
    1ca6:	0007c783          	lbu	a5,0(a5)
    1caa:	00f68763          	beq	a3,a5,1cb8 <check_file_handle+0x15c>
    1cae:	0585                	addi	a1,a1,1
    1cb0:	0705                	addi	a4,a4,1
    1cb2:	feb416e3          	bne	s0,a1,1c9e <check_file_handle+0x142>
    1cb6:	85a2                	mv	a1,s0
    1cb8:	08100813          	li	a6,129
    1cbc:	350c8793          	addi	a5,s9,848
    1cc0:	8752                	mv	a4,s4
    1cc2:	012606b3          	add	a3,a2,s2
    1cc6:	40c58633          	sub	a2,a1,a2
    1cca:	4f8d0593          	addi	a1,s10,1272 # 24f8 <crctab+0x5a8>
    1cce:	4509                	li	a0,2
    1cd0:	00000097          	auipc	ra,0x0
    1cd4:	828080e7          	jalr	-2008(ra) # 14f8 <fprintf>
    1cd8:	855a                	mv	a0,s6
    1cda:	00000097          	auipc	ra,0x0
    1cde:	102080e7          	jalr	258(ra) # 1ddc <exit>
    1ce2:	9922                	add	s2,s2,s0
    1ce4:	f13970e3          	bgeu	s2,s3,1be4 <check_file_handle+0x88>
    1ce8:	41298433          	sub	s0,s3,s2
    1cec:	008af363          	bgeu	s5,s0,1cf2 <check_file_handle+0x196>
    1cf0:	8456                	mv	s0,s5
    1cf2:	0004061b          	sext.w	a2,s0
    1cf6:	858a                	mv	a1,sp
    1cf8:	855e                	mv	a0,s7
    1cfa:	00000097          	auipc	ra,0x0
    1cfe:	10a080e7          	jalr	266(ra) # 1e04 <read>
    1d02:	f68513e3          	bne	a0,s0,1c68 <check_file_handle+0x10c>
    1d06:	012c04b3          	add	s1,s8,s2
    1d0a:	8622                	mv	a2,s0
    1d0c:	85a6                	mv	a1,s1
    1d0e:	850a                	mv	a0,sp
    1d10:	00000097          	auipc	ra,0x0
    1d14:	bce080e7          	jalr	-1074(ra) # 18de <memcmp>
    1d18:	d569                	beqz	a0,1ce2 <check_file_handle+0x186>
    1d1a:	03298163          	beq	s3,s2,1d3c <check_file_handle+0x1e0>
    1d1e:	870a                	mv	a4,sp
    1d20:	4601                	li	a2,0
    1d22:	00c487b3          	add	a5,s1,a2
    1d26:	00074683          	lbu	a3,0(a4)
    1d2a:	0007c783          	lbu	a5,0(a5)
    1d2e:	f6f692e3          	bne	a3,a5,1c92 <check_file_handle+0x136>
    1d32:	0605                	addi	a2,a2,1
    1d34:	0705                	addi	a4,a4,1
    1d36:	fe8666e3          	bltu	a2,s0,1d22 <check_file_handle+0x1c6>
    1d3a:	bfa1                	j	1c92 <check_file_handle+0x136>
    1d3c:	4601                	li	a2,0
    1d3e:	4585                	li	a1,1
    1d40:	bfa5                	j	1cb8 <check_file_handle+0x15c>

0000000000001d42 <check_file>:
    1d42:	7179                	addi	sp,sp,-48
    1d44:	f406                	sd	ra,40(sp)
    1d46:	f022                	sd	s0,32(sp)
    1d48:	ec26                	sd	s1,24(sp)
    1d4a:	e84a                	sd	s2,16(sp)
    1d4c:	e44e                	sd	s3,8(sp)
    1d4e:	84aa                	mv	s1,a0
    1d50:	892e                	mv	s2,a1
    1d52:	89b2                	mv	s3,a2
    1d54:	4581                	li	a1,0
    1d56:	00000097          	auipc	ra,0x0
    1d5a:	0a6080e7          	jalr	166(ra) # 1dfc <open>
    1d5e:	842a                	mv	s0,a0
    1d60:	4789                	li	a5,2
    1d62:	02a7df63          	bge	a5,a0,1da0 <check_file+0x5e>
    1d66:	86ce                	mv	a3,s3
    1d68:	864a                	mv	a2,s2
    1d6a:	85a6                	mv	a1,s1
    1d6c:	8522                	mv	a0,s0
    1d6e:	00000097          	auipc	ra,0x0
    1d72:	dee080e7          	jalr	-530(ra) # 1b5c <check_file_handle>
    1d76:	85a6                	mv	a1,s1
    1d78:	00002537          	lui	a0,0x2
    1d7c:	62050513          	addi	a0,a0,1568 # 2620 <crctab+0x6d0>
    1d80:	fffff097          	auipc	ra,0xfffff
    1d84:	79a080e7          	jalr	1946(ra) # 151a <printf>
    1d88:	8522                	mv	a0,s0
    1d8a:	00000097          	auipc	ra,0x0
    1d8e:	09a080e7          	jalr	154(ra) # 1e24 <close>
    1d92:	70a2                	ld	ra,40(sp)
    1d94:	7402                	ld	s0,32(sp)
    1d96:	64e2                	ld	s1,24(sp)
    1d98:	6942                	ld	s2,16(sp)
    1d9a:	69a2                	ld	s3,8(sp)
    1d9c:	6145                	addi	sp,sp,48
    1d9e:	8082                	ret
    1da0:	0ae00713          	li	a4,174
    1da4:	000026b7          	lui	a3,0x2
    1da8:	35068693          	addi	a3,a3,848 # 2350 <crctab+0x400>
    1dac:	8626                	mv	a2,s1
    1dae:	000025b7          	lui	a1,0x2
    1db2:	5b858593          	addi	a1,a1,1464 # 25b8 <crctab+0x668>
    1db6:	4509                	li	a0,2
    1db8:	fffff097          	auipc	ra,0xfffff
    1dbc:	740080e7          	jalr	1856(ra) # 14f8 <fprintf>
    1dc0:	650d                	lui	a0,0x3
    1dc2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1dc6:	00000097          	auipc	ra,0x0
    1dca:	016080e7          	jalr	22(ra) # 1ddc <exit>
    1dce:	bf61                	j	1d66 <check_file+0x24>

0000000000001dd0 <r_sp>:
    1dd0:	850a                	mv	a0,sp
    1dd2:	8082                	ret

0000000000001dd4 <halt>:
    1dd4:	4885                	li	a7,1
    1dd6:	00000073          	ecall
    1dda:	8082                	ret

0000000000001ddc <exit>:
    1ddc:	4889                	li	a7,2
    1dde:	00000073          	ecall
    1de2:	8082                	ret

0000000000001de4 <exec>:
    1de4:	488d                	li	a7,3
    1de6:	00000073          	ecall
    1dea:	8082                	ret

0000000000001dec <wait>:
    1dec:	4891                	li	a7,4
    1dee:	00000073          	ecall
    1df2:	8082                	ret

0000000000001df4 <remove>:
    1df4:	4895                	li	a7,5
    1df6:	00000073          	ecall
    1dfa:	8082                	ret

0000000000001dfc <open>:
    1dfc:	4899                	li	a7,6
    1dfe:	00000073          	ecall
    1e02:	8082                	ret

0000000000001e04 <read>:
    1e04:	489d                	li	a7,7
    1e06:	00000073          	ecall
    1e0a:	8082                	ret

0000000000001e0c <write>:
    1e0c:	48a1                	li	a7,8
    1e0e:	00000073          	ecall
    1e12:	8082                	ret

0000000000001e14 <seek>:
    1e14:	48a5                	li	a7,9
    1e16:	00000073          	ecall
    1e1a:	8082                	ret

0000000000001e1c <tell>:
    1e1c:	48a9                	li	a7,10
    1e1e:	00000073          	ecall
    1e22:	8082                	ret

0000000000001e24 <close>:
    1e24:	48ad                	li	a7,11
    1e26:	00000073          	ecall
    1e2a:	8082                	ret

0000000000001e2c <fstat>:
    1e2c:	48b1                	li	a7,12
    1e2e:	00000073          	ecall
    1e32:	8082                	ret

0000000000001e34 <mmap>:
    1e34:	48b5                	li	a7,13
    1e36:	00000073          	ecall
    1e3a:	8082                	ret

0000000000001e3c <munmap>:
    1e3c:	48b9                	li	a7,14
    1e3e:	00000073          	ecall
    1e42:	8082                	ret

0000000000001e44 <chdir>:
    1e44:	48bd                	li	a7,15
    1e46:	00000073          	ecall
    1e4a:	8082                	ret

0000000000001e4c <mkdir>:
    1e4c:	48c1                	li	a7,16
    1e4e:	00000073          	ecall
    1e52:	8082                	ret
