
build/user/vm/mmap-clean:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7179                	addi	sp,sp,-48
    1002:	f406                	sd	ra,40(sp)
    1004:	f022                	sd	s0,32(sp)
    1006:	ec26                	sd	s1,24(sp)
    1008:	e84a                	sd	s2,16(sp)
    100a:	e44e                	sd	s3,8(sp)
    100c:	e052                	sd	s4,0(sp)
    100e:	4589                	li	a1,2
    1010:	00002537          	lui	a0,0x2
    1014:	ee050513          	addi	a0,a0,-288 # 1ee0 <mkdir+0xe>
    1018:	00001097          	auipc	ra,0x1
    101c:	e6a080e7          	jalr	-406(ra) # 1e82 <open>
    1020:	842a                	mv	s0,a0
    1022:	4789                	li	a5,2
    1024:	1aa7da63          	bge	a5,a0,11d8 <main+0x1d8>
    1028:	543215b7          	lui	a1,0x54321
    102c:	8522                	mv	a0,s0
    102e:	00001097          	auipc	ra,0x1
    1032:	e8c080e7          	jalr	-372(ra) # 1eba <mmap>
    1036:	84aa                	mv	s1,a0
    1038:	57fd                	li	a5,-1
    103a:	1cf50563          	beq	a0,a5,1204 <main+0x204>
    103e:	00003937          	lui	s2,0x3
    1042:	00090513          	mv	a0,s2
    1046:	00001097          	auipc	ra,0x1
    104a:	8e6080e7          	jalr	-1818(ra) # 192c <strlen>
    104e:	862a                	mv	a2,a0
    1050:	00090593          	mv	a1,s2
    1054:	54321537          	lui	a0,0x54321
    1058:	00001097          	auipc	ra,0x1
    105c:	90c080e7          	jalr	-1780(ra) # 1964 <memcmp>
    1060:	1c051863          	bnez	a0,1230 <main+0x230>
    1064:	000029b7          	lui	s3,0x2
    1068:	1d898513          	addi	a0,s3,472 # 21d8 <overwrite.1>
    106c:	00001097          	auipc	ra,0x1
    1070:	8c0080e7          	jalr	-1856(ra) # 192c <strlen>
    1074:	0005061b          	sext.w	a2,a0
    1078:	1d898593          	addi	a1,s3,472
    107c:	8522                	mv	a0,s0
    107e:	00001097          	auipc	ra,0x1
    1082:	e14080e7          	jalr	-492(ra) # 1e92 <write>
    1086:	892a                	mv	s2,a0
    1088:	1d898513          	addi	a0,s3,472
    108c:	00001097          	auipc	ra,0x1
    1090:	8a0080e7          	jalr	-1888(ra) # 192c <strlen>
    1094:	1ca91463          	bne	s2,a0,125c <main+0x25c>
    1098:	00002537          	lui	a0,0x2
    109c:	0a050513          	addi	a0,a0,160 # 20a0 <mkdir+0x1ce>
    10a0:	00000097          	auipc	ra,0x0
    10a4:	500080e7          	jalr	1280(ra) # 15a0 <printf>
    10a8:	8526                	mv	a0,s1
    10aa:	00001097          	auipc	ra,0x1
    10ae:	e18080e7          	jalr	-488(ra) # 1ec2 <munmap>
    10b2:	00002537          	lui	a0,0x2
    10b6:	0b850513          	addi	a0,a0,184 # 20b8 <mkdir+0x1e6>
    10ba:	00000097          	auipc	ra,0x0
    10be:	4e6080e7          	jalr	1254(ra) # 15a0 <printf>
    10c2:	4581                	li	a1,0
    10c4:	8522                	mv	a0,s0
    10c6:	00001097          	auipc	ra,0x1
    10ca:	dd4080e7          	jalr	-556(ra) # 1e9a <seek>
    10ce:	0ef00613          	li	a2,239
    10d2:	000035b7          	lui	a1,0x3
    10d6:	10058593          	addi	a1,a1,256 # 3100 <buffer.0>
    10da:	8522                	mv	a0,s0
    10dc:	00001097          	auipc	ra,0x1
    10e0:	dae080e7          	jalr	-594(ra) # 1e8a <read>
    10e4:	0ef00793          	li	a5,239
    10e8:	1af51063          	bne	a0,a5,1288 <main+0x288>
    10ec:	00002437          	lui	s0,0x2
    10f0:	1d840513          	addi	a0,s0,472 # 21d8 <overwrite.1>
    10f4:	00001097          	auipc	ra,0x1
    10f8:	838080e7          	jalr	-1992(ra) # 192c <strlen>
    10fc:	862a                	mv	a2,a0
    10fe:	1d840593          	addi	a1,s0,472
    1102:	00003537          	lui	a0,0x3
    1106:	10050513          	addi	a0,a0,256 # 3100 <buffer.0>
    110a:	00001097          	auipc	ra,0x1
    110e:	85a080e7          	jalr	-1958(ra) # 1964 <memcmp>
    1112:	e125                	bnez	a0,1172 <main+0x172>
    1114:	89a2                	mv	s3,s0
    1116:	1d840513          	addi	a0,s0,472
    111a:	00001097          	auipc	ra,0x1
    111e:	812080e7          	jalr	-2030(ra) # 192c <strlen>
    1122:	842a                	mv	s0,a0
    1124:	1d898513          	addi	a0,s3,472
    1128:	00001097          	auipc	ra,0x1
    112c:	804080e7          	jalr	-2044(ra) # 192c <strlen>
    1130:	84aa                	mv	s1,a0
    1132:	00003537          	lui	a0,0x3
    1136:	00050a13          	mv	s4,a0
    113a:	00050513          	mv	a0,a0
    113e:	00000097          	auipc	ra,0x0
    1142:	7ee080e7          	jalr	2030(ra) # 192c <strlen>
    1146:	892a                	mv	s2,a0
    1148:	1d898513          	addi	a0,s3,472
    114c:	00000097          	auipc	ra,0x0
    1150:	7e0080e7          	jalr	2016(ra) # 192c <strlen>
    1154:	40a9063b          	subw	a2,s2,a0
    1158:	009a05b3          	add	a1,s4,s1
    115c:	00003537          	lui	a0,0x3
    1160:	10050513          	addi	a0,a0,256 # 3100 <buffer.0>
    1164:	9522                	add	a0,a0,s0
    1166:	00000097          	auipc	ra,0x0
    116a:	7fe080e7          	jalr	2046(ra) # 1964 <memcmp>
    116e:	16050a63          	beqz	a0,12e2 <main+0x2e2>
    1172:	00003437          	lui	s0,0x3
    1176:	00040513          	mv	a0,s0
    117a:	00000097          	auipc	ra,0x0
    117e:	7b2080e7          	jalr	1970(ra) # 192c <strlen>
    1182:	862a                	mv	a2,a0
    1184:	00040593          	mv	a1,s0
    1188:	00003537          	lui	a0,0x3
    118c:	10050513          	addi	a0,a0,256 # 3100 <buffer.0>
    1190:	00000097          	auipc	ra,0x0
    1194:	7d4080e7          	jalr	2004(ra) # 1964 <memcmp>
    1198:	10051e63          	bnez	a0,12b4 <main+0x2b4>
    119c:	02600693          	li	a3,38
    11a0:	00002637          	lui	a2,0x2
    11a4:	ef060613          	addi	a2,a2,-272 # 1ef0 <mkdir+0x1e>
    11a8:	000025b7          	lui	a1,0x2
    11ac:	14058593          	addi	a1,a1,320 # 2140 <mkdir+0x26e>
    11b0:	4509                	li	a0,2
    11b2:	00000097          	auipc	ra,0x0
    11b6:	3cc080e7          	jalr	972(ra) # 157e <fprintf>
    11ba:	650d                	lui	a0,0x3
    11bc:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11c0:	00001097          	auipc	ra,0x1
    11c4:	ca2080e7          	jalr	-862(ra) # 1e62 <exit>
    11c8:	70a2                	ld	ra,40(sp)
    11ca:	7402                	ld	s0,32(sp)
    11cc:	64e2                	ld	s1,24(sp)
    11ce:	6942                	ld	s2,16(sp)
    11d0:	69a2                	ld	s3,8(sp)
    11d2:	6a02                	ld	s4,0(sp)
    11d4:	6145                	addi	sp,sp,48
    11d6:	8082                	ret
    11d8:	46bd                	li	a3,15
    11da:	00002637          	lui	a2,0x2
    11de:	ef060613          	addi	a2,a2,-272 # 1ef0 <mkdir+0x1e>
    11e2:	000025b7          	lui	a1,0x2
    11e6:	f0858593          	addi	a1,a1,-248 # 1f08 <mkdir+0x36>
    11ea:	4509                	li	a0,2
    11ec:	00000097          	auipc	ra,0x0
    11f0:	392080e7          	jalr	914(ra) # 157e <fprintf>
    11f4:	650d                	lui	a0,0x3
    11f6:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11fa:	00001097          	auipc	ra,0x1
    11fe:	c68080e7          	jalr	-920(ra) # 1e62 <exit>
    1202:	b51d                	j	1028 <main+0x28>
    1204:	46c1                	li	a3,16
    1206:	00002637          	lui	a2,0x2
    120a:	ef060613          	addi	a2,a2,-272 # 1ef0 <mkdir+0x1e>
    120e:	000025b7          	lui	a1,0x2
    1212:	f7058593          	addi	a1,a1,-144 # 1f70 <mkdir+0x9e>
    1216:	4509                	li	a0,2
    1218:	00000097          	auipc	ra,0x0
    121c:	366080e7          	jalr	870(ra) # 157e <fprintf>
    1220:	650d                	lui	a0,0x3
    1222:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1226:	00001097          	auipc	ra,0x1
    122a:	c3c080e7          	jalr	-964(ra) # 1e62 <exit>
    122e:	bd01                	j	103e <main+0x3e>
    1230:	46c5                	li	a3,17
    1232:	00002637          	lui	a2,0x2
    1236:	ef060613          	addi	a2,a2,-272 # 1ef0 <mkdir+0x1e>
    123a:	000025b7          	lui	a1,0x2
    123e:	fd858593          	addi	a1,a1,-40 # 1fd8 <mkdir+0x106>
    1242:	4509                	li	a0,2
    1244:	00000097          	auipc	ra,0x0
    1248:	33a080e7          	jalr	826(ra) # 157e <fprintf>
    124c:	650d                	lui	a0,0x3
    124e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1252:	00001097          	auipc	ra,0x1
    1256:	c10080e7          	jalr	-1008(ra) # 1e62 <exit>
    125a:	b529                	j	1064 <main+0x64>
    125c:	46d1                	li	a3,20
    125e:	00002637          	lui	a2,0x2
    1262:	ef060613          	addi	a2,a2,-272 # 1ef0 <mkdir+0x1e>
    1266:	000025b7          	lui	a1,0x2
    126a:	01858593          	addi	a1,a1,24 # 2018 <mkdir+0x146>
    126e:	4509                	li	a0,2
    1270:	00000097          	auipc	ra,0x0
    1274:	30e080e7          	jalr	782(ra) # 157e <fprintf>
    1278:	650d                	lui	a0,0x3
    127a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    127e:	00001097          	auipc	ra,0x1
    1282:	be4080e7          	jalr	-1052(ra) # 1e62 <exit>
    1286:	bd09                	j	1098 <main+0x98>
    1288:	46fd                	li	a3,31
    128a:	00002637          	lui	a2,0x2
    128e:	ef060613          	addi	a2,a2,-272 # 1ef0 <mkdir+0x1e>
    1292:	000025b7          	lui	a1,0x2
    1296:	0d058593          	addi	a1,a1,208 # 20d0 <mkdir+0x1fe>
    129a:	4509                	li	a0,2
    129c:	00000097          	auipc	ra,0x0
    12a0:	2e2080e7          	jalr	738(ra) # 157e <fprintf>
    12a4:	650d                	lui	a0,0x3
    12a6:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    12aa:	00001097          	auipc	ra,0x1
    12ae:	bb8080e7          	jalr	-1096(ra) # 1e62 <exit>
    12b2:	bd2d                	j	10ec <main+0xec>
    12b4:	02800693          	li	a3,40
    12b8:	00002637          	lui	a2,0x2
    12bc:	ef060613          	addi	a2,a2,-272 # 1ef0 <mkdir+0x1e>
    12c0:	000025b7          	lui	a1,0x2
    12c4:	17858593          	addi	a1,a1,376 # 2178 <mkdir+0x2a6>
    12c8:	4509                	li	a0,2
    12ca:	00000097          	auipc	ra,0x0
    12ce:	2b4080e7          	jalr	692(ra) # 157e <fprintf>
    12d2:	650d                	lui	a0,0x3
    12d4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    12d8:	00001097          	auipc	ra,0x1
    12dc:	b8a080e7          	jalr	-1142(ra) # 1e62 <exit>
    12e0:	b5e5                	j	11c8 <main+0x1c8>
    12e2:	00002537          	lui	a0,0x2
    12e6:	1b050513          	addi	a0,a0,432 # 21b0 <mkdir+0x2de>
    12ea:	00000097          	auipc	ra,0x0
    12ee:	2b6080e7          	jalr	694(ra) # 15a0 <printf>
    12f2:	bdd9                	j	11c8 <main+0x1c8>

00000000000012f4 <putc>:
    12f4:	1101                	addi	sp,sp,-32
    12f6:	ec06                	sd	ra,24(sp)
    12f8:	00b107a3          	sb	a1,15(sp)
    12fc:	4605                	li	a2,1
    12fe:	00f10593          	addi	a1,sp,15
    1302:	00001097          	auipc	ra,0x1
    1306:	b90080e7          	jalr	-1136(ra) # 1e92 <write>
    130a:	60e2                	ld	ra,24(sp)
    130c:	6105                	addi	sp,sp,32
    130e:	8082                	ret

0000000000001310 <printint>:
    1310:	7179                	addi	sp,sp,-48
    1312:	f406                	sd	ra,40(sp)
    1314:	f022                	sd	s0,32(sp)
    1316:	ec26                	sd	s1,24(sp)
    1318:	e84a                	sd	s2,16(sp)
    131a:	84aa                	mv	s1,a0
    131c:	c299                	beqz	a3,1322 <printint+0x12>
    131e:	0805c363          	bltz	a1,13a4 <printint+0x94>
    1322:	2581                	sext.w	a1,a1
    1324:	4881                	li	a7,0
    1326:	868a                	mv	a3,sp
    1328:	4701                	li	a4,0
    132a:	2601                	sext.w	a2,a2
    132c:	00002537          	lui	a0,0x2
    1330:	20050513          	addi	a0,a0,512 # 2200 <digits>
    1334:	883a                	mv	a6,a4
    1336:	2705                	addiw	a4,a4,1
    1338:	02c5f7bb          	remuw	a5,a1,a2
    133c:	1782                	slli	a5,a5,0x20
    133e:	9381                	srli	a5,a5,0x20
    1340:	97aa                	add	a5,a5,a0
    1342:	0007c783          	lbu	a5,0(a5)
    1346:	00f68023          	sb	a5,0(a3)
    134a:	0005879b          	sext.w	a5,a1
    134e:	02c5d5bb          	divuw	a1,a1,a2
    1352:	0685                	addi	a3,a3,1
    1354:	fec7f0e3          	bgeu	a5,a2,1334 <printint+0x24>
    1358:	00088a63          	beqz	a7,136c <printint+0x5c>
    135c:	081c                	addi	a5,sp,16
    135e:	973e                	add	a4,a4,a5
    1360:	02d00793          	li	a5,45
    1364:	fef70823          	sb	a5,-16(a4)
    1368:	0028071b          	addiw	a4,a6,2
    136c:	02e05663          	blez	a4,1398 <printint+0x88>
    1370:	00e10433          	add	s0,sp,a4
    1374:	fff10913          	addi	s2,sp,-1
    1378:	993a                	add	s2,s2,a4
    137a:	377d                	addiw	a4,a4,-1
    137c:	1702                	slli	a4,a4,0x20
    137e:	9301                	srli	a4,a4,0x20
    1380:	40e90933          	sub	s2,s2,a4
    1384:	fff44583          	lbu	a1,-1(s0) # 2fff <crctab+0xde7>
    1388:	8526                	mv	a0,s1
    138a:	00000097          	auipc	ra,0x0
    138e:	f6a080e7          	jalr	-150(ra) # 12f4 <putc>
    1392:	147d                	addi	s0,s0,-1
    1394:	ff2418e3          	bne	s0,s2,1384 <printint+0x74>
    1398:	70a2                	ld	ra,40(sp)
    139a:	7402                	ld	s0,32(sp)
    139c:	64e2                	ld	s1,24(sp)
    139e:	6942                	ld	s2,16(sp)
    13a0:	6145                	addi	sp,sp,48
    13a2:	8082                	ret
    13a4:	40b005bb          	negw	a1,a1
    13a8:	4885                	li	a7,1
    13aa:	bfb5                	j	1326 <printint+0x16>

00000000000013ac <vprintf>:
    13ac:	7159                	addi	sp,sp,-112
    13ae:	f486                	sd	ra,104(sp)
    13b0:	f0a2                	sd	s0,96(sp)
    13b2:	eca6                	sd	s1,88(sp)
    13b4:	e8ca                	sd	s2,80(sp)
    13b6:	e4ce                	sd	s3,72(sp)
    13b8:	e0d2                	sd	s4,64(sp)
    13ba:	fc56                	sd	s5,56(sp)
    13bc:	f85a                	sd	s6,48(sp)
    13be:	f45e                	sd	s7,40(sp)
    13c0:	f062                	sd	s8,32(sp)
    13c2:	ec66                	sd	s9,24(sp)
    13c4:	e86a                	sd	s10,16(sp)
    13c6:	e46e                	sd	s11,8(sp)
    13c8:	0005c483          	lbu	s1,0(a1)
    13cc:	18048a63          	beqz	s1,1560 <vprintf+0x1b4>
    13d0:	8a2a                	mv	s4,a0
    13d2:	8ab2                	mv	s5,a2
    13d4:	00158413          	addi	s0,a1,1
    13d8:	4901                	li	s2,0
    13da:	02500993          	li	s3,37
    13de:	06400b93          	li	s7,100
    13e2:	06c00c13          	li	s8,108
    13e6:	07800c93          	li	s9,120
    13ea:	07000d13          	li	s10,112
    13ee:	00002db7          	lui	s11,0x2
    13f2:	00002b37          	lui	s6,0x2
    13f6:	200b0b13          	addi	s6,s6,512 # 2200 <digits>
    13fa:	a839                	j	1418 <vprintf+0x6c>
    13fc:	85a6                	mv	a1,s1
    13fe:	8552                	mv	a0,s4
    1400:	00000097          	auipc	ra,0x0
    1404:	ef4080e7          	jalr	-268(ra) # 12f4 <putc>
    1408:	a019                	j	140e <vprintf+0x62>
    140a:	01390f63          	beq	s2,s3,1428 <vprintf+0x7c>
    140e:	0405                	addi	s0,s0,1
    1410:	fff44483          	lbu	s1,-1(s0)
    1414:	14048663          	beqz	s1,1560 <vprintf+0x1b4>
    1418:	0004879b          	sext.w	a5,s1
    141c:	fe0917e3          	bnez	s2,140a <vprintf+0x5e>
    1420:	fd379ee3          	bne	a5,s3,13fc <vprintf+0x50>
    1424:	893e                	mv	s2,a5
    1426:	b7e5                	j	140e <vprintf+0x62>
    1428:	05778063          	beq	a5,s7,1468 <vprintf+0xbc>
    142c:	05878c63          	beq	a5,s8,1484 <vprintf+0xd8>
    1430:	07978863          	beq	a5,s9,14a0 <vprintf+0xf4>
    1434:	09a78463          	beq	a5,s10,14bc <vprintf+0x110>
    1438:	07300713          	li	a4,115
    143c:	0ce78263          	beq	a5,a4,1500 <vprintf+0x154>
    1440:	06300713          	li	a4,99
    1444:	0ee78763          	beq	a5,a4,1532 <vprintf+0x186>
    1448:	11378163          	beq	a5,s3,154a <vprintf+0x19e>
    144c:	85ce                	mv	a1,s3
    144e:	8552                	mv	a0,s4
    1450:	00000097          	auipc	ra,0x0
    1454:	ea4080e7          	jalr	-348(ra) # 12f4 <putc>
    1458:	85a6                	mv	a1,s1
    145a:	8552                	mv	a0,s4
    145c:	00000097          	auipc	ra,0x0
    1460:	e98080e7          	jalr	-360(ra) # 12f4 <putc>
    1464:	4901                	li	s2,0
    1466:	b765                	j	140e <vprintf+0x62>
    1468:	008a8493          	addi	s1,s5,8
    146c:	4685                	li	a3,1
    146e:	4629                	li	a2,10
    1470:	000aa583          	lw	a1,0(s5)
    1474:	8552                	mv	a0,s4
    1476:	00000097          	auipc	ra,0x0
    147a:	e9a080e7          	jalr	-358(ra) # 1310 <printint>
    147e:	8aa6                	mv	s5,s1
    1480:	4901                	li	s2,0
    1482:	b771                	j	140e <vprintf+0x62>
    1484:	008a8493          	addi	s1,s5,8
    1488:	4681                	li	a3,0
    148a:	4629                	li	a2,10
    148c:	000aa583          	lw	a1,0(s5)
    1490:	8552                	mv	a0,s4
    1492:	00000097          	auipc	ra,0x0
    1496:	e7e080e7          	jalr	-386(ra) # 1310 <printint>
    149a:	8aa6                	mv	s5,s1
    149c:	4901                	li	s2,0
    149e:	bf85                	j	140e <vprintf+0x62>
    14a0:	008a8493          	addi	s1,s5,8
    14a4:	4681                	li	a3,0
    14a6:	4641                	li	a2,16
    14a8:	000aa583          	lw	a1,0(s5)
    14ac:	8552                	mv	a0,s4
    14ae:	00000097          	auipc	ra,0x0
    14b2:	e62080e7          	jalr	-414(ra) # 1310 <printint>
    14b6:	8aa6                	mv	s5,s1
    14b8:	4901                	li	s2,0
    14ba:	bf91                	j	140e <vprintf+0x62>
    14bc:	008a8913          	addi	s2,s5,8
    14c0:	000aba83          	ld	s5,0(s5)
    14c4:	03000593          	li	a1,48
    14c8:	8552                	mv	a0,s4
    14ca:	00000097          	auipc	ra,0x0
    14ce:	e2a080e7          	jalr	-470(ra) # 12f4 <putc>
    14d2:	85e6                	mv	a1,s9
    14d4:	8552                	mv	a0,s4
    14d6:	00000097          	auipc	ra,0x0
    14da:	e1e080e7          	jalr	-482(ra) # 12f4 <putc>
    14de:	44c1                	li	s1,16
    14e0:	03cad793          	srli	a5,s5,0x3c
    14e4:	97da                	add	a5,a5,s6
    14e6:	0007c583          	lbu	a1,0(a5)
    14ea:	8552                	mv	a0,s4
    14ec:	00000097          	auipc	ra,0x0
    14f0:	e08080e7          	jalr	-504(ra) # 12f4 <putc>
    14f4:	0a92                	slli	s5,s5,0x4
    14f6:	34fd                	addiw	s1,s1,-1
    14f8:	f4e5                	bnez	s1,14e0 <vprintf+0x134>
    14fa:	8aca                	mv	s5,s2
    14fc:	4901                	li	s2,0
    14fe:	bf01                	j	140e <vprintf+0x62>
    1500:	008a8913          	addi	s2,s5,8
    1504:	000ab483          	ld	s1,0(s5)
    1508:	c085                	beqz	s1,1528 <vprintf+0x17c>
    150a:	0004c583          	lbu	a1,0(s1)
    150e:	c5b1                	beqz	a1,155a <vprintf+0x1ae>
    1510:	8552                	mv	a0,s4
    1512:	00000097          	auipc	ra,0x0
    1516:	de2080e7          	jalr	-542(ra) # 12f4 <putc>
    151a:	0485                	addi	s1,s1,1
    151c:	0004c583          	lbu	a1,0(s1)
    1520:	f9e5                	bnez	a1,1510 <vprintf+0x164>
    1522:	8aca                	mv	s5,s2
    1524:	4901                	li	s2,0
    1526:	b5e5                	j	140e <vprintf+0x62>
    1528:	1f8d8493          	addi	s1,s11,504 # 21f8 <overwrite.1+0x20>
    152c:	02800593          	li	a1,40
    1530:	b7c5                	j	1510 <vprintf+0x164>
    1532:	008a8493          	addi	s1,s5,8
    1536:	000ac583          	lbu	a1,0(s5)
    153a:	8552                	mv	a0,s4
    153c:	00000097          	auipc	ra,0x0
    1540:	db8080e7          	jalr	-584(ra) # 12f4 <putc>
    1544:	8aa6                	mv	s5,s1
    1546:	4901                	li	s2,0
    1548:	b5d9                	j	140e <vprintf+0x62>
    154a:	85ce                	mv	a1,s3
    154c:	8552                	mv	a0,s4
    154e:	00000097          	auipc	ra,0x0
    1552:	da6080e7          	jalr	-602(ra) # 12f4 <putc>
    1556:	4901                	li	s2,0
    1558:	bd5d                	j	140e <vprintf+0x62>
    155a:	8aca                	mv	s5,s2
    155c:	4901                	li	s2,0
    155e:	bd45                	j	140e <vprintf+0x62>
    1560:	70a6                	ld	ra,104(sp)
    1562:	7406                	ld	s0,96(sp)
    1564:	64e6                	ld	s1,88(sp)
    1566:	6946                	ld	s2,80(sp)
    1568:	69a6                	ld	s3,72(sp)
    156a:	6a06                	ld	s4,64(sp)
    156c:	7ae2                	ld	s5,56(sp)
    156e:	7b42                	ld	s6,48(sp)
    1570:	7ba2                	ld	s7,40(sp)
    1572:	7c02                	ld	s8,32(sp)
    1574:	6ce2                	ld	s9,24(sp)
    1576:	6d42                	ld	s10,16(sp)
    1578:	6da2                	ld	s11,8(sp)
    157a:	6165                	addi	sp,sp,112
    157c:	8082                	ret

000000000000157e <fprintf>:
    157e:	715d                	addi	sp,sp,-80
    1580:	ec06                	sd	ra,24(sp)
    1582:	f032                	sd	a2,32(sp)
    1584:	f436                	sd	a3,40(sp)
    1586:	f83a                	sd	a4,48(sp)
    1588:	fc3e                	sd	a5,56(sp)
    158a:	e0c2                	sd	a6,64(sp)
    158c:	e4c6                	sd	a7,72(sp)
    158e:	1010                	addi	a2,sp,32
    1590:	e432                	sd	a2,8(sp)
    1592:	00000097          	auipc	ra,0x0
    1596:	e1a080e7          	jalr	-486(ra) # 13ac <vprintf>
    159a:	60e2                	ld	ra,24(sp)
    159c:	6161                	addi	sp,sp,80
    159e:	8082                	ret

00000000000015a0 <printf>:
    15a0:	711d                	addi	sp,sp,-96
    15a2:	ec06                	sd	ra,24(sp)
    15a4:	f42e                	sd	a1,40(sp)
    15a6:	f832                	sd	a2,48(sp)
    15a8:	fc36                	sd	a3,56(sp)
    15aa:	e0ba                	sd	a4,64(sp)
    15ac:	e4be                	sd	a5,72(sp)
    15ae:	e8c2                	sd	a6,80(sp)
    15b0:	ecc6                	sd	a7,88(sp)
    15b2:	1030                	addi	a2,sp,40
    15b4:	e432                	sd	a2,8(sp)
    15b6:	85aa                	mv	a1,a0
    15b8:	4505                	li	a0,1
    15ba:	00000097          	auipc	ra,0x0
    15be:	df2080e7          	jalr	-526(ra) # 13ac <vprintf>
    15c2:	60e2                	ld	ra,24(sp)
    15c4:	6125                	addi	sp,sp,96
    15c6:	8082                	ret

00000000000015c8 <cksum>:
    15c8:	cdb1                	beqz	a1,1624 <cksum+0x5c>
    15ca:	00b50833          	add	a6,a0,a1
    15ce:	4781                	li	a5,0
    15d0:	00002637          	lui	a2,0x2
    15d4:	21860613          	addi	a2,a2,536 # 2218 <crctab>
    15d8:	0505                	addi	a0,a0,1
    15da:	0087969b          	slliw	a3,a5,0x8
    15de:	0187d71b          	srliw	a4,a5,0x18
    15e2:	fff54783          	lbu	a5,-1(a0)
    15e6:	8f3d                	xor	a4,a4,a5
    15e8:	1702                	slli	a4,a4,0x20
    15ea:	9301                	srli	a4,a4,0x20
    15ec:	070a                	slli	a4,a4,0x2
    15ee:	9732                	add	a4,a4,a2
    15f0:	431c                	lw	a5,0(a4)
    15f2:	8fb5                	xor	a5,a5,a3
    15f4:	2781                	sext.w	a5,a5
    15f6:	fea811e3          	bne	a6,a0,15d8 <cksum+0x10>
    15fa:	00002637          	lui	a2,0x2
    15fe:	21860613          	addi	a2,a2,536 # 2218 <crctab>
    1602:	0ff5f693          	andi	a3,a1,255
    1606:	81a1                	srli	a1,a1,0x8
    1608:	0087951b          	slliw	a0,a5,0x8
    160c:	0187d71b          	srliw	a4,a5,0x18
    1610:	8f35                	xor	a4,a4,a3
    1612:	070a                	slli	a4,a4,0x2
    1614:	9732                	add	a4,a4,a2
    1616:	431c                	lw	a5,0(a4)
    1618:	8fa9                	xor	a5,a5,a0
    161a:	2781                	sext.w	a5,a5
    161c:	f1fd                	bnez	a1,1602 <cksum+0x3a>
    161e:	fff7c513          	not	a0,a5
    1622:	8082                	ret
    1624:	4781                	li	a5,0
    1626:	bfe5                	j	161e <cksum+0x56>

0000000000001628 <swap_bytes>:
    1628:	ce19                	beqz	a2,1646 <swap_bytes+0x1e>
    162a:	87aa                	mv	a5,a0
    162c:	962a                	add	a2,a2,a0
    162e:	0007c703          	lbu	a4,0(a5)
    1632:	0005c683          	lbu	a3,0(a1)
    1636:	00d78023          	sb	a3,0(a5)
    163a:	00e58023          	sb	a4,0(a1)
    163e:	0785                	addi	a5,a5,1
    1640:	0585                	addi	a1,a1,1
    1642:	fec796e3          	bne	a5,a2,162e <swap_bytes+0x6>
    1646:	8082                	ret

0000000000001648 <random_init>:
    1648:	7139                	addi	sp,sp,-64
    164a:	fc06                	sd	ra,56(sp)
    164c:	f822                	sd	s0,48(sp)
    164e:	f426                	sd	s1,40(sp)
    1650:	f04a                	sd	s2,32(sp)
    1652:	ec4e                	sd	s3,24(sp)
    1654:	e852                	sd	s4,16(sp)
    1656:	c62a                	sw	a0,12(sp)
    1658:	000037b7          	lui	a5,0x3
    165c:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    1660:	eca5                	bnez	s1,16d8 <random_init+0x90>
    1662:	00003737          	lui	a4,0x3
    1666:	1f070913          	addi	s2,a4,496 # 31f0 <s>
    166a:	1f070713          	addi	a4,a4,496
    166e:	87a6                	mv	a5,s1
    1670:	10000693          	li	a3,256
    1674:	00f70023          	sb	a5,0(a4)
    1678:	2785                	addiw	a5,a5,1
    167a:	0705                	addi	a4,a4,1
    167c:	fed79ce3          	bne	a5,a3,1674 <random_init+0x2c>
    1680:	4401                	li	s0,0
    1682:	000039b7          	lui	s3,0x3
    1686:	1f098993          	addi	s3,s3,496 # 31f0 <s>
    168a:	10000a13          	li	s4,256
    168e:	0034f793          	andi	a5,s1,3
    1692:	0818                	addi	a4,sp,16
    1694:	97ba                	add	a5,a5,a4
    1696:	ffc7c783          	lbu	a5,-4(a5)
    169a:	00094703          	lbu	a4,0(s2) # 3000 <sample>
    169e:	9fb9                	addw	a5,a5,a4
    16a0:	9c3d                	addw	s0,s0,a5
    16a2:	0ff47413          	andi	s0,s0,255
    16a6:	4605                	li	a2,1
    16a8:	008985b3          	add	a1,s3,s0
    16ac:	854a                	mv	a0,s2
    16ae:	00000097          	auipc	ra,0x0
    16b2:	f7a080e7          	jalr	-134(ra) # 1628 <swap_bytes>
    16b6:	2485                	addiw	s1,s1,1
    16b8:	0905                	addi	s2,s2,1
    16ba:	fd449ae3          	bne	s1,s4,168e <random_init+0x46>
    16be:	000037b7          	lui	a5,0x3
    16c2:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    16c6:	000037b7          	lui	a5,0x3
    16ca:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    16ce:	000037b7          	lui	a5,0x3
    16d2:	4705                	li	a4,1
    16d4:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    16d8:	70e2                	ld	ra,56(sp)
    16da:	7442                	ld	s0,48(sp)
    16dc:	74a2                	ld	s1,40(sp)
    16de:	7902                	ld	s2,32(sp)
    16e0:	69e2                	ld	s3,24(sp)
    16e2:	6a42                	ld	s4,16(sp)
    16e4:	6121                	addi	sp,sp,64
    16e6:	8082                	ret

00000000000016e8 <random_bytes>:
    16e8:	7139                	addi	sp,sp,-64
    16ea:	fc06                	sd	ra,56(sp)
    16ec:	f822                	sd	s0,48(sp)
    16ee:	f426                	sd	s1,40(sp)
    16f0:	f04a                	sd	s2,32(sp)
    16f2:	ec4e                	sd	s3,24(sp)
    16f4:	e852                	sd	s4,16(sp)
    16f6:	e456                	sd	s5,8(sp)
    16f8:	e05a                	sd	s6,0(sp)
    16fa:	892a                	mv	s2,a0
    16fc:	8aae                	mv	s5,a1
    16fe:	000037b7          	lui	a5,0x3
    1702:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1706:	c3c1                	beqz	a5,1786 <random_bytes+0x9e>
    1708:	060a8563          	beqz	s5,1772 <random_bytes+0x8a>
    170c:	9aca                	add	s5,s5,s2
    170e:	00003a37          	lui	s4,0x3
    1712:	000034b7          	lui	s1,0x3
    1716:	1f048493          	addi	s1,s1,496 # 31f0 <s>
    171a:	000039b7          	lui	s3,0x3
    171e:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    1722:	2505                	addiw	a0,a0,1
    1724:	0ff57513          	andi	a0,a0,255
    1728:	0eaa0aa3          	sb	a0,245(s4)
    172c:	00a48b33          	add	s6,s1,a0
    1730:	000b4403          	lbu	s0,0(s6)
    1734:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1738:	9c3d                	addw	s0,s0,a5
    173a:	0ff47413          	andi	s0,s0,255
    173e:	0e898a23          	sb	s0,244(s3)
    1742:	4605                	li	a2,1
    1744:	008485b3          	add	a1,s1,s0
    1748:	855a                	mv	a0,s6
    174a:	00000097          	auipc	ra,0x0
    174e:	ede080e7          	jalr	-290(ra) # 1628 <swap_bytes>
    1752:	9426                	add	s0,s0,s1
    1754:	000b4783          	lbu	a5,0(s6)
    1758:	00044703          	lbu	a4,0(s0)
    175c:	9fb9                	addw	a5,a5,a4
    175e:	0ff7f793          	andi	a5,a5,255
    1762:	97a6                	add	a5,a5,s1
    1764:	0007c783          	lbu	a5,0(a5)
    1768:	00f90023          	sb	a5,0(s2)
    176c:	0905                	addi	s2,s2,1
    176e:	fb2a98e3          	bne	s5,s2,171e <random_bytes+0x36>
    1772:	70e2                	ld	ra,56(sp)
    1774:	7442                	ld	s0,48(sp)
    1776:	74a2                	ld	s1,40(sp)
    1778:	7902                	ld	s2,32(sp)
    177a:	69e2                	ld	s3,24(sp)
    177c:	6a42                	ld	s4,16(sp)
    177e:	6aa2                	ld	s5,8(sp)
    1780:	6b02                	ld	s6,0(sp)
    1782:	6121                	addi	sp,sp,64
    1784:	8082                	ret
    1786:	4501                	li	a0,0
    1788:	00000097          	auipc	ra,0x0
    178c:	ec0080e7          	jalr	-320(ra) # 1648 <random_init>
    1790:	bfa5                	j	1708 <random_bytes+0x20>

0000000000001792 <random_ulong>:
    1792:	1101                	addi	sp,sp,-32
    1794:	ec06                	sd	ra,24(sp)
    1796:	45a1                	li	a1,8
    1798:	0028                	addi	a0,sp,8
    179a:	00000097          	auipc	ra,0x0
    179e:	f4e080e7          	jalr	-178(ra) # 16e8 <random_bytes>
    17a2:	6522                	ld	a0,8(sp)
    17a4:	60e2                	ld	ra,24(sp)
    17a6:	6105                	addi	sp,sp,32
    17a8:	8082                	ret

00000000000017aa <shuffle>:
    17aa:	c9b9                	beqz	a1,1800 <shuffle+0x56>
    17ac:	7179                	addi	sp,sp,-48
    17ae:	f406                	sd	ra,40(sp)
    17b0:	f022                	sd	s0,32(sp)
    17b2:	ec26                	sd	s1,24(sp)
    17b4:	e84a                	sd	s2,16(sp)
    17b6:	e44e                	sd	s3,8(sp)
    17b8:	e052                	sd	s4,0(sp)
    17ba:	8a2a                	mv	s4,a0
    17bc:	89ae                	mv	s3,a1
    17be:	84b2                	mv	s1,a2
    17c0:	892a                	mv	s2,a0
    17c2:	4401                	li	s0,0
    17c4:	00000097          	auipc	ra,0x0
    17c8:	fce080e7          	jalr	-50(ra) # 1792 <random_ulong>
    17cc:	408985b3          	sub	a1,s3,s0
    17d0:	02b575b3          	remu	a1,a0,a1
    17d4:	95a2                	add	a1,a1,s0
    17d6:	029585b3          	mul	a1,a1,s1
    17da:	8626                	mv	a2,s1
    17dc:	95d2                	add	a1,a1,s4
    17de:	854a                	mv	a0,s2
    17e0:	00000097          	auipc	ra,0x0
    17e4:	e48080e7          	jalr	-440(ra) # 1628 <swap_bytes>
    17e8:	0405                	addi	s0,s0,1
    17ea:	9926                	add	s2,s2,s1
    17ec:	fc899ce3          	bne	s3,s0,17c4 <shuffle+0x1a>
    17f0:	70a2                	ld	ra,40(sp)
    17f2:	7402                	ld	s0,32(sp)
    17f4:	64e2                	ld	s1,24(sp)
    17f6:	6942                	ld	s2,16(sp)
    17f8:	69a2                	ld	s3,8(sp)
    17fa:	6a02                	ld	s4,0(sp)
    17fc:	6145                	addi	sp,sp,48
    17fe:	8082                	ret
    1800:	8082                	ret

0000000000001802 <arc4_init>:
    1802:	100500a3          	sb	zero,257(a0)
    1806:	10050023          	sb	zero,256(a0)
    180a:	4781                	li	a5,0
    180c:	10000693          	li	a3,256
    1810:	00f50733          	add	a4,a0,a5
    1814:	00f70023          	sb	a5,0(a4)
    1818:	0785                	addi	a5,a5,1
    181a:	fed79be3          	bne	a5,a3,1810 <arc4_init+0xe>
    181e:	86aa                	mv	a3,a0
    1820:	10050e13          	addi	t3,a0,256
    1824:	4701                	li	a4,0
    1826:	4781                	li	a5,0
    1828:	0006c883          	lbu	a7,0(a3)
    182c:	00f58833          	add	a6,a1,a5
    1830:	00084803          	lbu	a6,0(a6)
    1834:	00e8873b          	addw	a4,a7,a4
    1838:	00e8073b          	addw	a4,a6,a4
    183c:	0ff77713          	andi	a4,a4,255
    1840:	00e50833          	add	a6,a0,a4
    1844:	00084303          	lbu	t1,0(a6)
    1848:	00668023          	sb	t1,0(a3)
    184c:	01180023          	sb	a7,0(a6)
    1850:	0785                	addi	a5,a5,1
    1852:	00c7b833          	sltu	a6,a5,a2
    1856:	41000833          	neg	a6,a6
    185a:	0107f7b3          	and	a5,a5,a6
    185e:	0685                	addi	a3,a3,1
    1860:	fdc694e3          	bne	a3,t3,1828 <arc4_init+0x26>
    1864:	8082                	ret

0000000000001866 <arc4_crypt>:
    1866:	10054e03          	lbu	t3,256(a0)
    186a:	10154803          	lbu	a6,257(a0)
    186e:	fff60e93          	addi	t4,a2,-1
    1872:	c225                	beqz	a2,18d2 <arc4_crypt+0x6c>
    1874:	00c588b3          	add	a7,a1,a2
    1878:	86ae                	mv	a3,a1
    187a:	001e031b          	addiw	t1,t3,1
    187e:	40b3033b          	subw	t1,t1,a1
    1882:	00d3073b          	addw	a4,t1,a3
    1886:	0ff77713          	andi	a4,a4,255
    188a:	972a                	add	a4,a4,a0
    188c:	00074603          	lbu	a2,0(a4)
    1890:	0106083b          	addw	a6,a2,a6
    1894:	0ff87813          	andi	a6,a6,255
    1898:	010507b3          	add	a5,a0,a6
    189c:	0007c583          	lbu	a1,0(a5)
    18a0:	00b70023          	sb	a1,0(a4)
    18a4:	00c78023          	sb	a2,0(a5)
    18a8:	0685                	addi	a3,a3,1
    18aa:	00074783          	lbu	a5,0(a4)
    18ae:	9fb1                	addw	a5,a5,a2
    18b0:	0ff7f793          	andi	a5,a5,255
    18b4:	97aa                	add	a5,a5,a0
    18b6:	0007c783          	lbu	a5,0(a5)
    18ba:	fff6c703          	lbu	a4,-1(a3)
    18be:	8fb9                	xor	a5,a5,a4
    18c0:	fef68fa3          	sb	a5,-1(a3)
    18c4:	fb169fe3          	bne	a3,a7,1882 <arc4_crypt+0x1c>
    18c8:	2e85                	addiw	t4,t4,1
    18ca:	01ce8e3b          	addw	t3,t4,t3
    18ce:	0ffe7e13          	andi	t3,t3,255
    18d2:	11c50023          	sb	t3,256(a0)
    18d6:	110500a3          	sb	a6,257(a0)
    18da:	8082                	ret

00000000000018dc <_main>:
    18dc:	1141                	addi	sp,sp,-16
    18de:	e406                	sd	ra,8(sp)
    18e0:	fffff097          	auipc	ra,0xfffff
    18e4:	720080e7          	jalr	1824(ra) # 1000 <main>
    18e8:	4501                	li	a0,0
    18ea:	00000097          	auipc	ra,0x0
    18ee:	578080e7          	jalr	1400(ra) # 1e62 <exit>
    18f2:	60a2                	ld	ra,8(sp)
    18f4:	0141                	addi	sp,sp,16
    18f6:	8082                	ret

00000000000018f8 <strcmp>:
    18f8:	00054783          	lbu	a5,0(a0)
    18fc:	cb91                	beqz	a5,1910 <strcmp+0x18>
    18fe:	0005c703          	lbu	a4,0(a1)
    1902:	00f71763          	bne	a4,a5,1910 <strcmp+0x18>
    1906:	0505                	addi	a0,a0,1
    1908:	0585                	addi	a1,a1,1
    190a:	00054783          	lbu	a5,0(a0)
    190e:	fbe5                	bnez	a5,18fe <strcmp+0x6>
    1910:	0005c503          	lbu	a0,0(a1)
    1914:	40a7853b          	subw	a0,a5,a0
    1918:	8082                	ret

000000000000191a <strcpy>:
    191a:	87aa                	mv	a5,a0
    191c:	0585                	addi	a1,a1,1
    191e:	0785                	addi	a5,a5,1
    1920:	fff5c703          	lbu	a4,-1(a1)
    1924:	fee78fa3          	sb	a4,-1(a5)
    1928:	fb75                	bnez	a4,191c <strcpy+0x2>
    192a:	8082                	ret

000000000000192c <strlen>:
    192c:	00054783          	lbu	a5,0(a0)
    1930:	cf81                	beqz	a5,1948 <strlen+0x1c>
    1932:	0505                	addi	a0,a0,1
    1934:	87aa                	mv	a5,a0
    1936:	4685                	li	a3,1
    1938:	9e89                	subw	a3,a3,a0
    193a:	00f6853b          	addw	a0,a3,a5
    193e:	0785                	addi	a5,a5,1
    1940:	fff7c703          	lbu	a4,-1(a5)
    1944:	fb7d                	bnez	a4,193a <strlen+0xe>
    1946:	8082                	ret
    1948:	4501                	li	a0,0
    194a:	8082                	ret

000000000000194c <memset>:
    194c:	ca19                	beqz	a2,1962 <memset+0x16>
    194e:	87aa                	mv	a5,a0
    1950:	1602                	slli	a2,a2,0x20
    1952:	9201                	srli	a2,a2,0x20
    1954:	00a60733          	add	a4,a2,a0
    1958:	00b78023          	sb	a1,0(a5)
    195c:	0785                	addi	a5,a5,1
    195e:	fee79de3          	bne	a5,a4,1958 <memset+0xc>
    1962:	8082                	ret

0000000000001964 <memcmp>:
    1964:	1101                	addi	sp,sp,-32
    1966:	ec06                	sd	ra,24(sp)
    1968:	e822                	sd	s0,16(sp)
    196a:	e426                	sd	s1,8(sp)
    196c:	e04a                	sd	s2,0(sp)
    196e:	892a                	mv	s2,a0
    1970:	842e                	mv	s0,a1
    1972:	84b2                	mv	s1,a2
    1974:	c915                	beqz	a0,19a8 <memcmp+0x44>
    1976:	c5ad                	beqz	a1,19e0 <memcmp+0x7c>
    1978:	fff60713          	addi	a4,a2,-1
    197c:	c645                	beqz	a2,1a24 <memcmp+0xc0>
    197e:	87ca                	mv	a5,s2
    1980:	00190613          	addi	a2,s2,1
    1984:	963a                	add	a2,a2,a4
    1986:	0007c683          	lbu	a3,0(a5)
    198a:	00044703          	lbu	a4,0(s0)
    198e:	08e69463          	bne	a3,a4,1a16 <memcmp+0xb2>
    1992:	0785                	addi	a5,a5,1
    1994:	0405                	addi	s0,s0,1
    1996:	fec798e3          	bne	a5,a2,1986 <memcmp+0x22>
    199a:	4501                	li	a0,0
    199c:	60e2                	ld	ra,24(sp)
    199e:	6442                	ld	s0,16(sp)
    19a0:	64a2                	ld	s1,8(sp)
    19a2:	6902                	ld	s2,0(sp)
    19a4:	6105                	addi	sp,sp,32
    19a6:	8082                	ret
    19a8:	4501                	li	a0,0
    19aa:	da6d                	beqz	a2,199c <memcmp+0x38>
    19ac:	03200693          	li	a3,50
    19b0:	00002637          	lui	a2,0x2
    19b4:	61860613          	addi	a2,a2,1560 # 2618 <crctab+0x400>
    19b8:	000025b7          	lui	a1,0x2
    19bc:	62858593          	addi	a1,a1,1576 # 2628 <crctab+0x410>
    19c0:	4509                	li	a0,2
    19c2:	00000097          	auipc	ra,0x0
    19c6:	bbc080e7          	jalr	-1092(ra) # 157e <fprintf>
    19ca:	650d                	lui	a0,0x3
    19cc:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    19d0:	00000097          	auipc	ra,0x0
    19d4:	492080e7          	jalr	1170(ra) # 1e62 <exit>
    19d8:	fff48713          	addi	a4,s1,-1
    19dc:	f04d                	bnez	s0,197e <memcmp+0x1a>
    19de:	a011                	j	19e2 <memcmp+0x7e>
    19e0:	c221                	beqz	a2,1a20 <memcmp+0xbc>
    19e2:	03300693          	li	a3,51
    19e6:	00002637          	lui	a2,0x2
    19ea:	61860613          	addi	a2,a2,1560 # 2618 <crctab+0x400>
    19ee:	000025b7          	lui	a1,0x2
    19f2:	67058593          	addi	a1,a1,1648 # 2670 <crctab+0x458>
    19f6:	4509                	li	a0,2
    19f8:	00000097          	auipc	ra,0x0
    19fc:	b86080e7          	jalr	-1146(ra) # 157e <fprintf>
    1a00:	650d                	lui	a0,0x3
    1a02:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a06:	00000097          	auipc	ra,0x0
    1a0a:	45c080e7          	jalr	1116(ra) # 1e62 <exit>
    1a0e:	fff48713          	addi	a4,s1,-1
    1a12:	4401                	li	s0,0
    1a14:	b7ad                	j	197e <memcmp+0x1a>
    1a16:	4505                	li	a0,1
    1a18:	f8d762e3          	bltu	a4,a3,199c <memcmp+0x38>
    1a1c:	557d                	li	a0,-1
    1a1e:	bfbd                	j	199c <memcmp+0x38>
    1a20:	4501                	li	a0,0
    1a22:	bfad                	j	199c <memcmp+0x38>
    1a24:	4501                	li	a0,0
    1a26:	bf9d                	j	199c <memcmp+0x38>

0000000000001a28 <memcpy>:
    1a28:	1101                	addi	sp,sp,-32
    1a2a:	ec06                	sd	ra,24(sp)
    1a2c:	e822                	sd	s0,16(sp)
    1a2e:	e426                	sd	s1,8(sp)
    1a30:	e04a                	sd	s2,0(sp)
    1a32:	84aa                	mv	s1,a0
    1a34:	842e                	mv	s0,a1
    1a36:	8932                	mv	s2,a2
    1a38:	c51d                	beqz	a0,1a66 <memcpy+0x3e>
    1a3a:	c1ad                	beqz	a1,1a9c <memcpy+0x74>
    1a3c:	fff60693          	addi	a3,a2,-1
    1a40:	ce01                	beqz	a2,1a58 <memcpy+0x30>
    1a42:	0685                	addi	a3,a3,1
    1a44:	96a6                	add	a3,a3,s1
    1a46:	87a6                	mv	a5,s1
    1a48:	0405                	addi	s0,s0,1
    1a4a:	0785                	addi	a5,a5,1
    1a4c:	fff44703          	lbu	a4,-1(s0)
    1a50:	fee78fa3          	sb	a4,-1(a5)
    1a54:	fed79ae3          	bne	a5,a3,1a48 <memcpy+0x20>
    1a58:	8526                	mv	a0,s1
    1a5a:	60e2                	ld	ra,24(sp)
    1a5c:	6442                	ld	s0,16(sp)
    1a5e:	64a2                	ld	s1,8(sp)
    1a60:	6902                	ld	s2,0(sp)
    1a62:	6105                	addi	sp,sp,32
    1a64:	8082                	ret
    1a66:	da6d                	beqz	a2,1a58 <memcpy+0x30>
    1a68:	04000693          	li	a3,64
    1a6c:	00002637          	lui	a2,0x2
    1a70:	61860613          	addi	a2,a2,1560 # 2618 <crctab+0x400>
    1a74:	000025b7          	lui	a1,0x2
    1a78:	6b858593          	addi	a1,a1,1720 # 26b8 <crctab+0x4a0>
    1a7c:	4509                	li	a0,2
    1a7e:	00000097          	auipc	ra,0x0
    1a82:	b00080e7          	jalr	-1280(ra) # 157e <fprintf>
    1a86:	650d                	lui	a0,0x3
    1a88:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a8c:	00000097          	auipc	ra,0x0
    1a90:	3d6080e7          	jalr	982(ra) # 1e62 <exit>
    1a94:	fff90693          	addi	a3,s2,-1
    1a98:	f44d                	bnez	s0,1a42 <memcpy+0x1a>
    1a9a:	a011                	j	1a9e <memcpy+0x76>
    1a9c:	de55                	beqz	a2,1a58 <memcpy+0x30>
    1a9e:	04100693          	li	a3,65
    1aa2:	00002637          	lui	a2,0x2
    1aa6:	61860613          	addi	a2,a2,1560 # 2618 <crctab+0x400>
    1aaa:	000025b7          	lui	a1,0x2
    1aae:	70058593          	addi	a1,a1,1792 # 2700 <crctab+0x4e8>
    1ab2:	4509                	li	a0,2
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	aca080e7          	jalr	-1334(ra) # 157e <fprintf>
    1abc:	650d                	lui	a0,0x3
    1abe:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1ac2:	00000097          	auipc	ra,0x0
    1ac6:	3a0080e7          	jalr	928(ra) # 1e62 <exit>
    1aca:	fff90693          	addi	a3,s2,-1
    1ace:	4401                	li	s0,0
    1ad0:	bf8d                	j	1a42 <memcpy+0x1a>

0000000000001ad2 <itoa>:
    1ad2:	1101                	addi	sp,sp,-32
    1ad4:	ec06                	sd	ra,24(sp)
    1ad6:	e822                	sd	s0,16(sp)
    1ad8:	e426                	sd	s1,8(sp)
    1ada:	842a                	mv	s0,a0
    1adc:	41f5d71b          	sraiw	a4,a1,0x1f
    1ae0:	00e5c7b3          	xor	a5,a1,a4
    1ae4:	9f99                	subw	a5,a5,a4
    1ae6:	84aa                	mv	s1,a0
    1ae8:	862a                	mv	a2,a0
    1aea:	4681                	li	a3,0
    1aec:	4529                	li	a0,10
    1aee:	4825                	li	a6,9
    1af0:	88b6                	mv	a7,a3
    1af2:	2685                	addiw	a3,a3,1
    1af4:	02a7e73b          	remw	a4,a5,a0
    1af8:	0307071b          	addiw	a4,a4,48
    1afc:	00e60023          	sb	a4,0(a2)
    1b00:	873e                	mv	a4,a5
    1b02:	02a7c7bb          	divw	a5,a5,a0
    1b06:	0605                	addi	a2,a2,1
    1b08:	fee844e3          	blt	a6,a4,1af0 <itoa+0x1e>
    1b0c:	0405c863          	bltz	a1,1b5c <itoa+0x8a>
    1b10:	96a2                	add	a3,a3,s0
    1b12:	00068023          	sb	zero,0(a3)
    1b16:	8522                	mv	a0,s0
    1b18:	00000097          	auipc	ra,0x0
    1b1c:	e14080e7          	jalr	-492(ra) # 192c <strlen>
    1b20:	fff5071b          	addiw	a4,a0,-1
    1b24:	02e05763          	blez	a4,1b52 <itoa+0x80>
    1b28:	9722                	add	a4,a4,s0
    1b2a:	4681                	li	a3,0
    1b2c:	0004c783          	lbu	a5,0(s1)
    1b30:	00074603          	lbu	a2,0(a4)
    1b34:	00c48023          	sb	a2,0(s1)
    1b38:	00f70023          	sb	a5,0(a4)
    1b3c:	0016879b          	addiw	a5,a3,1
    1b40:	0007869b          	sext.w	a3,a5
    1b44:	0485                	addi	s1,s1,1
    1b46:	177d                	addi	a4,a4,-1
    1b48:	fff7c793          	not	a5,a5
    1b4c:	9fa9                	addw	a5,a5,a0
    1b4e:	fcf6cfe3          	blt	a3,a5,1b2c <itoa+0x5a>
    1b52:	60e2                	ld	ra,24(sp)
    1b54:	6442                	ld	s0,16(sp)
    1b56:	64a2                	ld	s1,8(sp)
    1b58:	6105                	addi	sp,sp,32
    1b5a:	8082                	ret
    1b5c:	96a2                	add	a3,a3,s0
    1b5e:	02d00793          	li	a5,45
    1b62:	00f68023          	sb	a5,0(a3)
    1b66:	0028869b          	addiw	a3,a7,2
    1b6a:	b75d                	j	1b10 <itoa+0x3e>

0000000000001b6c <atoi>:
    1b6c:	00054783          	lbu	a5,0(a0)
    1b70:	02000713          	li	a4,32
    1b74:	00e79763          	bne	a5,a4,1b82 <atoi+0x16>
    1b78:	0505                	addi	a0,a0,1
    1b7a:	00054783          	lbu	a5,0(a0)
    1b7e:	fee78de3          	beq	a5,a4,1b78 <atoi+0xc>
    1b82:	02b00713          	li	a4,43
    1b86:	04e78663          	beq	a5,a4,1bd2 <atoi+0x66>
    1b8a:	02d00713          	li	a4,45
    1b8e:	4805                	li	a6,1
    1b90:	04e78463          	beq	a5,a4,1bd8 <atoi+0x6c>
    1b94:	00054683          	lbu	a3,0(a0)
    1b98:	fd06879b          	addiw	a5,a3,-48
    1b9c:	0ff7f793          	andi	a5,a5,255
    1ba0:	4725                	li	a4,9
    1ba2:	02f76e63          	bltu	a4,a5,1bde <atoi+0x72>
    1ba6:	4601                	li	a2,0
    1ba8:	45a5                	li	a1,9
    1baa:	0505                	addi	a0,a0,1
    1bac:	0026179b          	slliw	a5,a2,0x2
    1bb0:	9fb1                	addw	a5,a5,a2
    1bb2:	0017979b          	slliw	a5,a5,0x1
    1bb6:	9fb5                	addw	a5,a5,a3
    1bb8:	fd07861b          	addiw	a2,a5,-48
    1bbc:	00054683          	lbu	a3,0(a0)
    1bc0:	fd06871b          	addiw	a4,a3,-48
    1bc4:	0ff77713          	andi	a4,a4,255
    1bc8:	fee5f1e3          	bgeu	a1,a4,1baa <atoi+0x3e>
    1bcc:	02c8053b          	mulw	a0,a6,a2
    1bd0:	8082                	ret
    1bd2:	0505                	addi	a0,a0,1
    1bd4:	4805                	li	a6,1
    1bd6:	bf7d                	j	1b94 <atoi+0x28>
    1bd8:	0505                	addi	a0,a0,1
    1bda:	587d                	li	a6,-1
    1bdc:	bf65                	j	1b94 <atoi+0x28>
    1bde:	4601                	li	a2,0
    1be0:	b7f5                	j	1bcc <atoi+0x60>

0000000000001be2 <check_file_handle>:
    1be2:	d8010113          	addi	sp,sp,-640
    1be6:	26113c23          	sd	ra,632(sp)
    1bea:	26813823          	sd	s0,624(sp)
    1bee:	26913423          	sd	s1,616(sp)
    1bf2:	27213023          	sd	s2,608(sp)
    1bf6:	25313c23          	sd	s3,600(sp)
    1bfa:	25413823          	sd	s4,592(sp)
    1bfe:	25513423          	sd	s5,584(sp)
    1c02:	25613023          	sd	s6,576(sp)
    1c06:	23713c23          	sd	s7,568(sp)
    1c0a:	23813823          	sd	s8,560(sp)
    1c0e:	23913423          	sd	s9,552(sp)
    1c12:	23a13023          	sd	s10,544(sp)
    1c16:	21b13c23          	sd	s11,536(sp)
    1c1a:	8baa                	mv	s7,a0
    1c1c:	8a2e                	mv	s4,a1
    1c1e:	8c32                	mv	s8,a2
    1c20:	89b6                	mv	s3,a3
    1c22:	040c                	addi	a1,sp,512
    1c24:	00000097          	auipc	ra,0x0
    1c28:	28e080e7          	jalr	654(ra) # 1eb2 <fstat>
    1c2c:	20813603          	ld	a2,520(sp)
    1c30:	03361163          	bne	a2,s3,1c52 <check_file_handle+0x70>
    1c34:	06098763          	beqz	s3,1ca2 <check_file_handle+0xc0>
    1c38:	4901                	li	s2,0
    1c3a:	20000a93          	li	s5,512
    1c3e:	00002cb7          	lui	s9,0x2
    1c42:	00002db7          	lui	s11,0x2
    1c46:	6b0d                	lui	s6,0x3
    1c48:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1c4c:	00002d37          	lui	s10,0x2
    1c50:	aa39                	j	1d6e <check_file_handle+0x18c>
    1c52:	86ce                	mv	a3,s3
    1c54:	85d2                	mv	a1,s4
    1c56:	00002537          	lui	a0,0x2
    1c5a:	74850513          	addi	a0,a0,1864 # 2748 <crctab+0x530>
    1c5e:	00000097          	auipc	ra,0x0
    1c62:	942080e7          	jalr	-1726(ra) # 15a0 <printf>
    1c66:	fc0999e3          	bnez	s3,1c38 <check_file_handle+0x56>
    1c6a:	20813683          	ld	a3,520(sp)
    1c6e:	03368a63          	beq	a3,s3,1ca2 <check_file_handle+0xc0>
    1c72:	0a600813          	li	a6,166
    1c76:	000027b7          	lui	a5,0x2
    1c7a:	61878793          	addi	a5,a5,1560 # 2618 <crctab+0x400>
    1c7e:	874e                	mv	a4,s3
    1c80:	8652                	mv	a2,s4
    1c82:	000035b7          	lui	a1,0x3
    1c86:	81858593          	addi	a1,a1,-2024 # 2818 <crctab+0x600>
    1c8a:	4509                	li	a0,2
    1c8c:	00000097          	auipc	ra,0x0
    1c90:	8f2080e7          	jalr	-1806(ra) # 157e <fprintf>
    1c94:	650d                	lui	a0,0x3
    1c96:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c9a:	00000097          	auipc	ra,0x0
    1c9e:	1c8080e7          	jalr	456(ra) # 1e62 <exit>
    1ca2:	85d2                	mv	a1,s4
    1ca4:	00003537          	lui	a0,0x3
    1ca8:	86050513          	addi	a0,a0,-1952 # 2860 <crctab+0x648>
    1cac:	00000097          	auipc	ra,0x0
    1cb0:	8f4080e7          	jalr	-1804(ra) # 15a0 <printf>
    1cb4:	27813083          	ld	ra,632(sp)
    1cb8:	27013403          	ld	s0,624(sp)
    1cbc:	26813483          	ld	s1,616(sp)
    1cc0:	26013903          	ld	s2,608(sp)
    1cc4:	25813983          	ld	s3,600(sp)
    1cc8:	25013a03          	ld	s4,592(sp)
    1ccc:	24813a83          	ld	s5,584(sp)
    1cd0:	24013b03          	ld	s6,576(sp)
    1cd4:	23813b83          	ld	s7,568(sp)
    1cd8:	23013c03          	ld	s8,560(sp)
    1cdc:	22813c83          	ld	s9,552(sp)
    1ce0:	22013d03          	ld	s10,544(sp)
    1ce4:	21813d83          	ld	s11,536(sp)
    1ce8:	28010113          	addi	sp,sp,640
    1cec:	8082                	ret
    1cee:	09d00893          	li	a7,157
    1cf2:	618c8813          	addi	a6,s9,1560 # 2618 <crctab+0x400>
    1cf6:	87aa                	mv	a5,a0
    1cf8:	8752                	mv	a4,s4
    1cfa:	86ca                	mv	a3,s2
    1cfc:	8622                	mv	a2,s0
    1cfe:	778d8593          	addi	a1,s11,1912 # 2778 <crctab+0x560>
    1d02:	4509                	li	a0,2
    1d04:	00000097          	auipc	ra,0x0
    1d08:	87a080e7          	jalr	-1926(ra) # 157e <fprintf>
    1d0c:	855a                	mv	a0,s6
    1d0e:	00000097          	auipc	ra,0x0
    1d12:	154080e7          	jalr	340(ra) # 1e62 <exit>
    1d16:	a89d                	j	1d8c <check_file_handle+0x1aa>
    1d18:	00160593          	addi	a1,a2,1
    1d1c:	0285f163          	bgeu	a1,s0,1d3e <check_file_handle+0x15c>
    1d20:	00c10733          	add	a4,sp,a2
    1d24:	00b487b3          	add	a5,s1,a1
    1d28:	00174683          	lbu	a3,1(a4)
    1d2c:	0007c783          	lbu	a5,0(a5)
    1d30:	00f68763          	beq	a3,a5,1d3e <check_file_handle+0x15c>
    1d34:	0585                	addi	a1,a1,1
    1d36:	0705                	addi	a4,a4,1
    1d38:	feb416e3          	bne	s0,a1,1d24 <check_file_handle+0x142>
    1d3c:	85a2                	mv	a1,s0
    1d3e:	08100813          	li	a6,129
    1d42:	618c8793          	addi	a5,s9,1560
    1d46:	8752                	mv	a4,s4
    1d48:	012606b3          	add	a3,a2,s2
    1d4c:	40c58633          	sub	a2,a1,a2
    1d50:	7c0d0593          	addi	a1,s10,1984 # 27c0 <crctab+0x5a8>
    1d54:	4509                	li	a0,2
    1d56:	00000097          	auipc	ra,0x0
    1d5a:	828080e7          	jalr	-2008(ra) # 157e <fprintf>
    1d5e:	855a                	mv	a0,s6
    1d60:	00000097          	auipc	ra,0x0
    1d64:	102080e7          	jalr	258(ra) # 1e62 <exit>
    1d68:	9922                	add	s2,s2,s0
    1d6a:	f13970e3          	bgeu	s2,s3,1c6a <check_file_handle+0x88>
    1d6e:	41298433          	sub	s0,s3,s2
    1d72:	008af363          	bgeu	s5,s0,1d78 <check_file_handle+0x196>
    1d76:	8456                	mv	s0,s5
    1d78:	0004061b          	sext.w	a2,s0
    1d7c:	858a                	mv	a1,sp
    1d7e:	855e                	mv	a0,s7
    1d80:	00000097          	auipc	ra,0x0
    1d84:	10a080e7          	jalr	266(ra) # 1e8a <read>
    1d88:	f68513e3          	bne	a0,s0,1cee <check_file_handle+0x10c>
    1d8c:	012c04b3          	add	s1,s8,s2
    1d90:	8622                	mv	a2,s0
    1d92:	85a6                	mv	a1,s1
    1d94:	850a                	mv	a0,sp
    1d96:	00000097          	auipc	ra,0x0
    1d9a:	bce080e7          	jalr	-1074(ra) # 1964 <memcmp>
    1d9e:	d569                	beqz	a0,1d68 <check_file_handle+0x186>
    1da0:	03298163          	beq	s3,s2,1dc2 <check_file_handle+0x1e0>
    1da4:	870a                	mv	a4,sp
    1da6:	4601                	li	a2,0
    1da8:	00c487b3          	add	a5,s1,a2
    1dac:	00074683          	lbu	a3,0(a4)
    1db0:	0007c783          	lbu	a5,0(a5)
    1db4:	f6f692e3          	bne	a3,a5,1d18 <check_file_handle+0x136>
    1db8:	0605                	addi	a2,a2,1
    1dba:	0705                	addi	a4,a4,1
    1dbc:	fe8666e3          	bltu	a2,s0,1da8 <check_file_handle+0x1c6>
    1dc0:	bfa1                	j	1d18 <check_file_handle+0x136>
    1dc2:	4601                	li	a2,0
    1dc4:	4585                	li	a1,1
    1dc6:	bfa5                	j	1d3e <check_file_handle+0x15c>

0000000000001dc8 <check_file>:
    1dc8:	7179                	addi	sp,sp,-48
    1dca:	f406                	sd	ra,40(sp)
    1dcc:	f022                	sd	s0,32(sp)
    1dce:	ec26                	sd	s1,24(sp)
    1dd0:	e84a                	sd	s2,16(sp)
    1dd2:	e44e                	sd	s3,8(sp)
    1dd4:	84aa                	mv	s1,a0
    1dd6:	892e                	mv	s2,a1
    1dd8:	89b2                	mv	s3,a2
    1dda:	4581                	li	a1,0
    1ddc:	00000097          	auipc	ra,0x0
    1de0:	0a6080e7          	jalr	166(ra) # 1e82 <open>
    1de4:	842a                	mv	s0,a0
    1de6:	4789                	li	a5,2
    1de8:	02a7df63          	bge	a5,a0,1e26 <check_file+0x5e>
    1dec:	86ce                	mv	a3,s3
    1dee:	864a                	mv	a2,s2
    1df0:	85a6                	mv	a1,s1
    1df2:	8522                	mv	a0,s0
    1df4:	00000097          	auipc	ra,0x0
    1df8:	dee080e7          	jalr	-530(ra) # 1be2 <check_file_handle>
    1dfc:	85a6                	mv	a1,s1
    1dfe:	00003537          	lui	a0,0x3
    1e02:	8e850513          	addi	a0,a0,-1816 # 28e8 <crctab+0x6d0>
    1e06:	fffff097          	auipc	ra,0xfffff
    1e0a:	79a080e7          	jalr	1946(ra) # 15a0 <printf>
    1e0e:	8522                	mv	a0,s0
    1e10:	00000097          	auipc	ra,0x0
    1e14:	09a080e7          	jalr	154(ra) # 1eaa <close>
    1e18:	70a2                	ld	ra,40(sp)
    1e1a:	7402                	ld	s0,32(sp)
    1e1c:	64e2                	ld	s1,24(sp)
    1e1e:	6942                	ld	s2,16(sp)
    1e20:	69a2                	ld	s3,8(sp)
    1e22:	6145                	addi	sp,sp,48
    1e24:	8082                	ret
    1e26:	0ae00713          	li	a4,174
    1e2a:	000026b7          	lui	a3,0x2
    1e2e:	61868693          	addi	a3,a3,1560 # 2618 <crctab+0x400>
    1e32:	8626                	mv	a2,s1
    1e34:	000035b7          	lui	a1,0x3
    1e38:	88058593          	addi	a1,a1,-1920 # 2880 <crctab+0x668>
    1e3c:	4509                	li	a0,2
    1e3e:	fffff097          	auipc	ra,0xfffff
    1e42:	740080e7          	jalr	1856(ra) # 157e <fprintf>
    1e46:	650d                	lui	a0,0x3
    1e48:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1e4c:	00000097          	auipc	ra,0x0
    1e50:	016080e7          	jalr	22(ra) # 1e62 <exit>
    1e54:	bf61                	j	1dec <check_file+0x24>

0000000000001e56 <r_sp>:
    1e56:	850a                	mv	a0,sp
    1e58:	8082                	ret

0000000000001e5a <halt>:
    1e5a:	4885                	li	a7,1
    1e5c:	00000073          	ecall
    1e60:	8082                	ret

0000000000001e62 <exit>:
    1e62:	4889                	li	a7,2
    1e64:	00000073          	ecall
    1e68:	8082                	ret

0000000000001e6a <exec>:
    1e6a:	488d                	li	a7,3
    1e6c:	00000073          	ecall
    1e70:	8082                	ret

0000000000001e72 <wait>:
    1e72:	4891                	li	a7,4
    1e74:	00000073          	ecall
    1e78:	8082                	ret

0000000000001e7a <remove>:
    1e7a:	4895                	li	a7,5
    1e7c:	00000073          	ecall
    1e80:	8082                	ret

0000000000001e82 <open>:
    1e82:	4899                	li	a7,6
    1e84:	00000073          	ecall
    1e88:	8082                	ret

0000000000001e8a <read>:
    1e8a:	489d                	li	a7,7
    1e8c:	00000073          	ecall
    1e90:	8082                	ret

0000000000001e92 <write>:
    1e92:	48a1                	li	a7,8
    1e94:	00000073          	ecall
    1e98:	8082                	ret

0000000000001e9a <seek>:
    1e9a:	48a5                	li	a7,9
    1e9c:	00000073          	ecall
    1ea0:	8082                	ret

0000000000001ea2 <tell>:
    1ea2:	48a9                	li	a7,10
    1ea4:	00000073          	ecall
    1ea8:	8082                	ret

0000000000001eaa <close>:
    1eaa:	48ad                	li	a7,11
    1eac:	00000073          	ecall
    1eb0:	8082                	ret

0000000000001eb2 <fstat>:
    1eb2:	48b1                	li	a7,12
    1eb4:	00000073          	ecall
    1eb8:	8082                	ret

0000000000001eba <mmap>:
    1eba:	48b5                	li	a7,13
    1ebc:	00000073          	ecall
    1ec0:	8082                	ret

0000000000001ec2 <munmap>:
    1ec2:	48b9                	li	a7,14
    1ec4:	00000073          	ecall
    1ec8:	8082                	ret

0000000000001eca <chdir>:
    1eca:	48bd                	li	a7,15
    1ecc:	00000073          	ecall
    1ed0:	8082                	ret

0000000000001ed2 <mkdir>:
    1ed2:	48c1                	li	a7,16
    1ed4:	00000073          	ecall
    1ed8:	8082                	ret
