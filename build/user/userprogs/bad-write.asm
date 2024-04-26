
build/user/userprogs/bad-write:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	02a00793          	li	a5,42
    1008:	00f02023          	sw	a5,0(zero) # 0 <main-0x1000>
    100c:	46a1                	li	a3,8
    100e:	00002637          	lui	a2,0x2
    1012:	c3060613          	addi	a2,a2,-976 # 1c30 <mkdir+0x16>
    1016:	000025b7          	lui	a1,0x2
    101a:	c5058593          	addi	a1,a1,-944 # 1c50 <mkdir+0x36>
    101e:	4509                	li	a0,2
    1020:	00000097          	auipc	ra,0x0
    1024:	2a6080e7          	jalr	678(ra) # 12c6 <fprintf>
    1028:	650d                	lui	a0,0x3
    102a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    102e:	00001097          	auipc	ra,0x1
    1032:	b7c080e7          	jalr	-1156(ra) # 1baa <exit>
    1036:	60a2                	ld	ra,8(sp)
    1038:	0141                	addi	sp,sp,16
    103a:	8082                	ret

000000000000103c <putc>:
    103c:	1101                	addi	sp,sp,-32
    103e:	ec06                	sd	ra,24(sp)
    1040:	00b107a3          	sb	a1,15(sp)
    1044:	4605                	li	a2,1
    1046:	00f10593          	addi	a1,sp,15
    104a:	00001097          	auipc	ra,0x1
    104e:	b90080e7          	jalr	-1136(ra) # 1bda <write>
    1052:	60e2                	ld	ra,24(sp)
    1054:	6105                	addi	sp,sp,32
    1056:	8082                	ret

0000000000001058 <printint>:
    1058:	7179                	addi	sp,sp,-48
    105a:	f406                	sd	ra,40(sp)
    105c:	f022                	sd	s0,32(sp)
    105e:	ec26                	sd	s1,24(sp)
    1060:	e84a                	sd	s2,16(sp)
    1062:	84aa                	mv	s1,a0
    1064:	c299                	beqz	a3,106a <printint+0x12>
    1066:	0805c363          	bltz	a1,10ec <printint+0x94>
    106a:	2581                	sext.w	a1,a1
    106c:	4881                	li	a7,0
    106e:	868a                	mv	a3,sp
    1070:	4701                	li	a4,0
    1072:	2601                	sext.w	a2,a2
    1074:	00002537          	lui	a0,0x2
    1078:	c8850513          	addi	a0,a0,-888 # 1c88 <digits>
    107c:	883a                	mv	a6,a4
    107e:	2705                	addiw	a4,a4,1
    1080:	02c5f7bb          	remuw	a5,a1,a2
    1084:	1782                	slli	a5,a5,0x20
    1086:	9381                	srli	a5,a5,0x20
    1088:	97aa                	add	a5,a5,a0
    108a:	0007c783          	lbu	a5,0(a5)
    108e:	00f68023          	sb	a5,0(a3)
    1092:	0005879b          	sext.w	a5,a1
    1096:	02c5d5bb          	divuw	a1,a1,a2
    109a:	0685                	addi	a3,a3,1
    109c:	fec7f0e3          	bgeu	a5,a2,107c <printint+0x24>
    10a0:	00088a63          	beqz	a7,10b4 <printint+0x5c>
    10a4:	081c                	addi	a5,sp,16
    10a6:	973e                	add	a4,a4,a5
    10a8:	02d00793          	li	a5,45
    10ac:	fef70823          	sb	a5,-16(a4)
    10b0:	0028071b          	addiw	a4,a6,2
    10b4:	02e05663          	blez	a4,10e0 <printint+0x88>
    10b8:	00e10433          	add	s0,sp,a4
    10bc:	fff10913          	addi	s2,sp,-1
    10c0:	993a                	add	s2,s2,a4
    10c2:	377d                	addiw	a4,a4,-1
    10c4:	1702                	slli	a4,a4,0x20
    10c6:	9301                	srli	a4,a4,0x20
    10c8:	40e90933          	sub	s2,s2,a4
    10cc:	fff44583          	lbu	a1,-1(s0)
    10d0:	8526                	mv	a0,s1
    10d2:	00000097          	auipc	ra,0x0
    10d6:	f6a080e7          	jalr	-150(ra) # 103c <putc>
    10da:	147d                	addi	s0,s0,-1
    10dc:	ff2418e3          	bne	s0,s2,10cc <printint+0x74>
    10e0:	70a2                	ld	ra,40(sp)
    10e2:	7402                	ld	s0,32(sp)
    10e4:	64e2                	ld	s1,24(sp)
    10e6:	6942                	ld	s2,16(sp)
    10e8:	6145                	addi	sp,sp,48
    10ea:	8082                	ret
    10ec:	40b005bb          	negw	a1,a1
    10f0:	4885                	li	a7,1
    10f2:	bfb5                	j	106e <printint+0x16>

00000000000010f4 <vprintf>:
    10f4:	7159                	addi	sp,sp,-112
    10f6:	f486                	sd	ra,104(sp)
    10f8:	f0a2                	sd	s0,96(sp)
    10fa:	eca6                	sd	s1,88(sp)
    10fc:	e8ca                	sd	s2,80(sp)
    10fe:	e4ce                	sd	s3,72(sp)
    1100:	e0d2                	sd	s4,64(sp)
    1102:	fc56                	sd	s5,56(sp)
    1104:	f85a                	sd	s6,48(sp)
    1106:	f45e                	sd	s7,40(sp)
    1108:	f062                	sd	s8,32(sp)
    110a:	ec66                	sd	s9,24(sp)
    110c:	e86a                	sd	s10,16(sp)
    110e:	e46e                	sd	s11,8(sp)
    1110:	0005c483          	lbu	s1,0(a1)
    1114:	18048a63          	beqz	s1,12a8 <vprintf+0x1b4>
    1118:	8a2a                	mv	s4,a0
    111a:	8ab2                	mv	s5,a2
    111c:	00158413          	addi	s0,a1,1
    1120:	4901                	li	s2,0
    1122:	02500993          	li	s3,37
    1126:	06400b93          	li	s7,100
    112a:	06c00c13          	li	s8,108
    112e:	07800c93          	li	s9,120
    1132:	07000d13          	li	s10,112
    1136:	00002db7          	lui	s11,0x2
    113a:	00002b37          	lui	s6,0x2
    113e:	c88b0b13          	addi	s6,s6,-888 # 1c88 <digits>
    1142:	a839                	j	1160 <vprintf+0x6c>
    1144:	85a6                	mv	a1,s1
    1146:	8552                	mv	a0,s4
    1148:	00000097          	auipc	ra,0x0
    114c:	ef4080e7          	jalr	-268(ra) # 103c <putc>
    1150:	a019                	j	1156 <vprintf+0x62>
    1152:	01390f63          	beq	s2,s3,1170 <vprintf+0x7c>
    1156:	0405                	addi	s0,s0,1
    1158:	fff44483          	lbu	s1,-1(s0)
    115c:	14048663          	beqz	s1,12a8 <vprintf+0x1b4>
    1160:	0004879b          	sext.w	a5,s1
    1164:	fe0917e3          	bnez	s2,1152 <vprintf+0x5e>
    1168:	fd379ee3          	bne	a5,s3,1144 <vprintf+0x50>
    116c:	893e                	mv	s2,a5
    116e:	b7e5                	j	1156 <vprintf+0x62>
    1170:	05778063          	beq	a5,s7,11b0 <vprintf+0xbc>
    1174:	05878c63          	beq	a5,s8,11cc <vprintf+0xd8>
    1178:	07978863          	beq	a5,s9,11e8 <vprintf+0xf4>
    117c:	09a78463          	beq	a5,s10,1204 <vprintf+0x110>
    1180:	07300713          	li	a4,115
    1184:	0ce78263          	beq	a5,a4,1248 <vprintf+0x154>
    1188:	06300713          	li	a4,99
    118c:	0ee78763          	beq	a5,a4,127a <vprintf+0x186>
    1190:	11378163          	beq	a5,s3,1292 <vprintf+0x19e>
    1194:	85ce                	mv	a1,s3
    1196:	8552                	mv	a0,s4
    1198:	00000097          	auipc	ra,0x0
    119c:	ea4080e7          	jalr	-348(ra) # 103c <putc>
    11a0:	85a6                	mv	a1,s1
    11a2:	8552                	mv	a0,s4
    11a4:	00000097          	auipc	ra,0x0
    11a8:	e98080e7          	jalr	-360(ra) # 103c <putc>
    11ac:	4901                	li	s2,0
    11ae:	b765                	j	1156 <vprintf+0x62>
    11b0:	008a8493          	addi	s1,s5,8
    11b4:	4685                	li	a3,1
    11b6:	4629                	li	a2,10
    11b8:	000aa583          	lw	a1,0(s5)
    11bc:	8552                	mv	a0,s4
    11be:	00000097          	auipc	ra,0x0
    11c2:	e9a080e7          	jalr	-358(ra) # 1058 <printint>
    11c6:	8aa6                	mv	s5,s1
    11c8:	4901                	li	s2,0
    11ca:	b771                	j	1156 <vprintf+0x62>
    11cc:	008a8493          	addi	s1,s5,8
    11d0:	4681                	li	a3,0
    11d2:	4629                	li	a2,10
    11d4:	000aa583          	lw	a1,0(s5)
    11d8:	8552                	mv	a0,s4
    11da:	00000097          	auipc	ra,0x0
    11de:	e7e080e7          	jalr	-386(ra) # 1058 <printint>
    11e2:	8aa6                	mv	s5,s1
    11e4:	4901                	li	s2,0
    11e6:	bf85                	j	1156 <vprintf+0x62>
    11e8:	008a8493          	addi	s1,s5,8
    11ec:	4681                	li	a3,0
    11ee:	4641                	li	a2,16
    11f0:	000aa583          	lw	a1,0(s5)
    11f4:	8552                	mv	a0,s4
    11f6:	00000097          	auipc	ra,0x0
    11fa:	e62080e7          	jalr	-414(ra) # 1058 <printint>
    11fe:	8aa6                	mv	s5,s1
    1200:	4901                	li	s2,0
    1202:	bf91                	j	1156 <vprintf+0x62>
    1204:	008a8913          	addi	s2,s5,8
    1208:	000aba83          	ld	s5,0(s5)
    120c:	03000593          	li	a1,48
    1210:	8552                	mv	a0,s4
    1212:	00000097          	auipc	ra,0x0
    1216:	e2a080e7          	jalr	-470(ra) # 103c <putc>
    121a:	85e6                	mv	a1,s9
    121c:	8552                	mv	a0,s4
    121e:	00000097          	auipc	ra,0x0
    1222:	e1e080e7          	jalr	-482(ra) # 103c <putc>
    1226:	44c1                	li	s1,16
    1228:	03cad793          	srli	a5,s5,0x3c
    122c:	97da                	add	a5,a5,s6
    122e:	0007c583          	lbu	a1,0(a5)
    1232:	8552                	mv	a0,s4
    1234:	00000097          	auipc	ra,0x0
    1238:	e08080e7          	jalr	-504(ra) # 103c <putc>
    123c:	0a92                	slli	s5,s5,0x4
    123e:	34fd                	addiw	s1,s1,-1
    1240:	f4e5                	bnez	s1,1228 <vprintf+0x134>
    1242:	8aca                	mv	s5,s2
    1244:	4901                	li	s2,0
    1246:	bf01                	j	1156 <vprintf+0x62>
    1248:	008a8913          	addi	s2,s5,8
    124c:	000ab483          	ld	s1,0(s5)
    1250:	c085                	beqz	s1,1270 <vprintf+0x17c>
    1252:	0004c583          	lbu	a1,0(s1)
    1256:	c5b1                	beqz	a1,12a2 <vprintf+0x1ae>
    1258:	8552                	mv	a0,s4
    125a:	00000097          	auipc	ra,0x0
    125e:	de2080e7          	jalr	-542(ra) # 103c <putc>
    1262:	0485                	addi	s1,s1,1
    1264:	0004c583          	lbu	a1,0(s1)
    1268:	f9e5                	bnez	a1,1258 <vprintf+0x164>
    126a:	8aca                	mv	s5,s2
    126c:	4901                	li	s2,0
    126e:	b5e5                	j	1156 <vprintf+0x62>
    1270:	c80d8493          	addi	s1,s11,-896 # 1c80 <mkdir+0x66>
    1274:	02800593          	li	a1,40
    1278:	b7c5                	j	1258 <vprintf+0x164>
    127a:	008a8493          	addi	s1,s5,8
    127e:	000ac583          	lbu	a1,0(s5)
    1282:	8552                	mv	a0,s4
    1284:	00000097          	auipc	ra,0x0
    1288:	db8080e7          	jalr	-584(ra) # 103c <putc>
    128c:	8aa6                	mv	s5,s1
    128e:	4901                	li	s2,0
    1290:	b5d9                	j	1156 <vprintf+0x62>
    1292:	85ce                	mv	a1,s3
    1294:	8552                	mv	a0,s4
    1296:	00000097          	auipc	ra,0x0
    129a:	da6080e7          	jalr	-602(ra) # 103c <putc>
    129e:	4901                	li	s2,0
    12a0:	bd5d                	j	1156 <vprintf+0x62>
    12a2:	8aca                	mv	s5,s2
    12a4:	4901                	li	s2,0
    12a6:	bd45                	j	1156 <vprintf+0x62>
    12a8:	70a6                	ld	ra,104(sp)
    12aa:	7406                	ld	s0,96(sp)
    12ac:	64e6                	ld	s1,88(sp)
    12ae:	6946                	ld	s2,80(sp)
    12b0:	69a6                	ld	s3,72(sp)
    12b2:	6a06                	ld	s4,64(sp)
    12b4:	7ae2                	ld	s5,56(sp)
    12b6:	7b42                	ld	s6,48(sp)
    12b8:	7ba2                	ld	s7,40(sp)
    12ba:	7c02                	ld	s8,32(sp)
    12bc:	6ce2                	ld	s9,24(sp)
    12be:	6d42                	ld	s10,16(sp)
    12c0:	6da2                	ld	s11,8(sp)
    12c2:	6165                	addi	sp,sp,112
    12c4:	8082                	ret

00000000000012c6 <fprintf>:
    12c6:	715d                	addi	sp,sp,-80
    12c8:	ec06                	sd	ra,24(sp)
    12ca:	f032                	sd	a2,32(sp)
    12cc:	f436                	sd	a3,40(sp)
    12ce:	f83a                	sd	a4,48(sp)
    12d0:	fc3e                	sd	a5,56(sp)
    12d2:	e0c2                	sd	a6,64(sp)
    12d4:	e4c6                	sd	a7,72(sp)
    12d6:	1010                	addi	a2,sp,32
    12d8:	e432                	sd	a2,8(sp)
    12da:	00000097          	auipc	ra,0x0
    12de:	e1a080e7          	jalr	-486(ra) # 10f4 <vprintf>
    12e2:	60e2                	ld	ra,24(sp)
    12e4:	6161                	addi	sp,sp,80
    12e6:	8082                	ret

00000000000012e8 <printf>:
    12e8:	711d                	addi	sp,sp,-96
    12ea:	ec06                	sd	ra,24(sp)
    12ec:	f42e                	sd	a1,40(sp)
    12ee:	f832                	sd	a2,48(sp)
    12f0:	fc36                	sd	a3,56(sp)
    12f2:	e0ba                	sd	a4,64(sp)
    12f4:	e4be                	sd	a5,72(sp)
    12f6:	e8c2                	sd	a6,80(sp)
    12f8:	ecc6                	sd	a7,88(sp)
    12fa:	1030                	addi	a2,sp,40
    12fc:	e432                	sd	a2,8(sp)
    12fe:	85aa                	mv	a1,a0
    1300:	4505                	li	a0,1
    1302:	00000097          	auipc	ra,0x0
    1306:	df2080e7          	jalr	-526(ra) # 10f4 <vprintf>
    130a:	60e2                	ld	ra,24(sp)
    130c:	6125                	addi	sp,sp,96
    130e:	8082                	ret

0000000000001310 <cksum>:
    1310:	cdb1                	beqz	a1,136c <cksum+0x5c>
    1312:	00b50833          	add	a6,a0,a1
    1316:	4781                	li	a5,0
    1318:	00002637          	lui	a2,0x2
    131c:	ca060613          	addi	a2,a2,-864 # 1ca0 <crctab>
    1320:	0505                	addi	a0,a0,1
    1322:	0087969b          	slliw	a3,a5,0x8
    1326:	0187d71b          	srliw	a4,a5,0x18
    132a:	fff54783          	lbu	a5,-1(a0)
    132e:	8f3d                	xor	a4,a4,a5
    1330:	1702                	slli	a4,a4,0x20
    1332:	9301                	srli	a4,a4,0x20
    1334:	070a                	slli	a4,a4,0x2
    1336:	9732                	add	a4,a4,a2
    1338:	431c                	lw	a5,0(a4)
    133a:	8fb5                	xor	a5,a5,a3
    133c:	2781                	sext.w	a5,a5
    133e:	fea811e3          	bne	a6,a0,1320 <cksum+0x10>
    1342:	00002637          	lui	a2,0x2
    1346:	ca060613          	addi	a2,a2,-864 # 1ca0 <crctab>
    134a:	0ff5f693          	andi	a3,a1,255
    134e:	81a1                	srli	a1,a1,0x8
    1350:	0087951b          	slliw	a0,a5,0x8
    1354:	0187d71b          	srliw	a4,a5,0x18
    1358:	8f35                	xor	a4,a4,a3
    135a:	070a                	slli	a4,a4,0x2
    135c:	9732                	add	a4,a4,a2
    135e:	431c                	lw	a5,0(a4)
    1360:	8fa9                	xor	a5,a5,a0
    1362:	2781                	sext.w	a5,a5
    1364:	f1fd                	bnez	a1,134a <cksum+0x3a>
    1366:	fff7c513          	not	a0,a5
    136a:	8082                	ret
    136c:	4781                	li	a5,0
    136e:	bfe5                	j	1366 <cksum+0x56>

0000000000001370 <swap_bytes>:
    1370:	ce19                	beqz	a2,138e <swap_bytes+0x1e>
    1372:	87aa                	mv	a5,a0
    1374:	962a                	add	a2,a2,a0
    1376:	0007c703          	lbu	a4,0(a5)
    137a:	0005c683          	lbu	a3,0(a1)
    137e:	00d78023          	sb	a3,0(a5)
    1382:	00e58023          	sb	a4,0(a1)
    1386:	0785                	addi	a5,a5,1
    1388:	0585                	addi	a1,a1,1
    138a:	fec796e3          	bne	a5,a2,1376 <swap_bytes+0x6>
    138e:	8082                	ret

0000000000001390 <random_init>:
    1390:	7139                	addi	sp,sp,-64
    1392:	fc06                	sd	ra,56(sp)
    1394:	f822                	sd	s0,48(sp)
    1396:	f426                	sd	s1,40(sp)
    1398:	f04a                	sd	s2,32(sp)
    139a:	ec4e                	sd	s3,24(sp)
    139c:	e852                	sd	s4,16(sp)
    139e:	c62a                	sw	a0,12(sp)
    13a0:	000037b7          	lui	a5,0x3
    13a4:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13a8:	eca5                	bnez	s1,1420 <random_init+0x90>
    13aa:	00003737          	lui	a4,0x3
    13ae:	01070913          	addi	s2,a4,16 # 3010 <s>
    13b2:	01070713          	addi	a4,a4,16
    13b6:	87a6                	mv	a5,s1
    13b8:	10000693          	li	a3,256
    13bc:	00f70023          	sb	a5,0(a4)
    13c0:	2785                	addiw	a5,a5,1
    13c2:	0705                	addi	a4,a4,1
    13c4:	fed79ce3          	bne	a5,a3,13bc <random_init+0x2c>
    13c8:	4401                	li	s0,0
    13ca:	000039b7          	lui	s3,0x3
    13ce:	01098993          	addi	s3,s3,16 # 3010 <s>
    13d2:	10000a13          	li	s4,256
    13d6:	0034f793          	andi	a5,s1,3
    13da:	0818                	addi	a4,sp,16
    13dc:	97ba                	add	a5,a5,a4
    13de:	ffc7c783          	lbu	a5,-4(a5)
    13e2:	00094703          	lbu	a4,0(s2)
    13e6:	9fb9                	addw	a5,a5,a4
    13e8:	9c3d                	addw	s0,s0,a5
    13ea:	0ff47413          	andi	s0,s0,255
    13ee:	4605                	li	a2,1
    13f0:	008985b3          	add	a1,s3,s0
    13f4:	854a                	mv	a0,s2
    13f6:	00000097          	auipc	ra,0x0
    13fa:	f7a080e7          	jalr	-134(ra) # 1370 <swap_bytes>
    13fe:	2485                	addiw	s1,s1,1
    1400:	0905                	addi	s2,s2,1
    1402:	fd449ae3          	bne	s1,s4,13d6 <random_init+0x46>
    1406:	000037b7          	lui	a5,0x3
    140a:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    140e:	000037b7          	lui	a5,0x3
    1412:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1416:	000037b7          	lui	a5,0x3
    141a:	4705                	li	a4,1
    141c:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1420:	70e2                	ld	ra,56(sp)
    1422:	7442                	ld	s0,48(sp)
    1424:	74a2                	ld	s1,40(sp)
    1426:	7902                	ld	s2,32(sp)
    1428:	69e2                	ld	s3,24(sp)
    142a:	6a42                	ld	s4,16(sp)
    142c:	6121                	addi	sp,sp,64
    142e:	8082                	ret

0000000000001430 <random_bytes>:
    1430:	7139                	addi	sp,sp,-64
    1432:	fc06                	sd	ra,56(sp)
    1434:	f822                	sd	s0,48(sp)
    1436:	f426                	sd	s1,40(sp)
    1438:	f04a                	sd	s2,32(sp)
    143a:	ec4e                	sd	s3,24(sp)
    143c:	e852                	sd	s4,16(sp)
    143e:	e456                	sd	s5,8(sp)
    1440:	e05a                	sd	s6,0(sp)
    1442:	892a                	mv	s2,a0
    1444:	8aae                	mv	s5,a1
    1446:	000037b7          	lui	a5,0x3
    144a:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    144e:	c3c1                	beqz	a5,14ce <random_bytes+0x9e>
    1450:	060a8563          	beqz	s5,14ba <random_bytes+0x8a>
    1454:	9aca                	add	s5,s5,s2
    1456:	00003a37          	lui	s4,0x3
    145a:	000034b7          	lui	s1,0x3
    145e:	01048493          	addi	s1,s1,16 # 3010 <s>
    1462:	000039b7          	lui	s3,0x3
    1466:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    146a:	2505                	addiw	a0,a0,1
    146c:	0ff57513          	andi	a0,a0,255
    1470:	00aa02a3          	sb	a0,5(s4)
    1474:	00a48b33          	add	s6,s1,a0
    1478:	000b4403          	lbu	s0,0(s6)
    147c:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1480:	9c3d                	addw	s0,s0,a5
    1482:	0ff47413          	andi	s0,s0,255
    1486:	00898223          	sb	s0,4(s3)
    148a:	4605                	li	a2,1
    148c:	008485b3          	add	a1,s1,s0
    1490:	855a                	mv	a0,s6
    1492:	00000097          	auipc	ra,0x0
    1496:	ede080e7          	jalr	-290(ra) # 1370 <swap_bytes>
    149a:	9426                	add	s0,s0,s1
    149c:	000b4783          	lbu	a5,0(s6)
    14a0:	00044703          	lbu	a4,0(s0)
    14a4:	9fb9                	addw	a5,a5,a4
    14a6:	0ff7f793          	andi	a5,a5,255
    14aa:	97a6                	add	a5,a5,s1
    14ac:	0007c783          	lbu	a5,0(a5)
    14b0:	00f90023          	sb	a5,0(s2)
    14b4:	0905                	addi	s2,s2,1
    14b6:	fb2a98e3          	bne	s5,s2,1466 <random_bytes+0x36>
    14ba:	70e2                	ld	ra,56(sp)
    14bc:	7442                	ld	s0,48(sp)
    14be:	74a2                	ld	s1,40(sp)
    14c0:	7902                	ld	s2,32(sp)
    14c2:	69e2                	ld	s3,24(sp)
    14c4:	6a42                	ld	s4,16(sp)
    14c6:	6aa2                	ld	s5,8(sp)
    14c8:	6b02                	ld	s6,0(sp)
    14ca:	6121                	addi	sp,sp,64
    14cc:	8082                	ret
    14ce:	4501                	li	a0,0
    14d0:	00000097          	auipc	ra,0x0
    14d4:	ec0080e7          	jalr	-320(ra) # 1390 <random_init>
    14d8:	bfa5                	j	1450 <random_bytes+0x20>

00000000000014da <random_ulong>:
    14da:	1101                	addi	sp,sp,-32
    14dc:	ec06                	sd	ra,24(sp)
    14de:	45a1                	li	a1,8
    14e0:	0028                	addi	a0,sp,8
    14e2:	00000097          	auipc	ra,0x0
    14e6:	f4e080e7          	jalr	-178(ra) # 1430 <random_bytes>
    14ea:	6522                	ld	a0,8(sp)
    14ec:	60e2                	ld	ra,24(sp)
    14ee:	6105                	addi	sp,sp,32
    14f0:	8082                	ret

00000000000014f2 <shuffle>:
    14f2:	c9b9                	beqz	a1,1548 <shuffle+0x56>
    14f4:	7179                	addi	sp,sp,-48
    14f6:	f406                	sd	ra,40(sp)
    14f8:	f022                	sd	s0,32(sp)
    14fa:	ec26                	sd	s1,24(sp)
    14fc:	e84a                	sd	s2,16(sp)
    14fe:	e44e                	sd	s3,8(sp)
    1500:	e052                	sd	s4,0(sp)
    1502:	8a2a                	mv	s4,a0
    1504:	89ae                	mv	s3,a1
    1506:	84b2                	mv	s1,a2
    1508:	892a                	mv	s2,a0
    150a:	4401                	li	s0,0
    150c:	00000097          	auipc	ra,0x0
    1510:	fce080e7          	jalr	-50(ra) # 14da <random_ulong>
    1514:	408985b3          	sub	a1,s3,s0
    1518:	02b575b3          	remu	a1,a0,a1
    151c:	95a2                	add	a1,a1,s0
    151e:	029585b3          	mul	a1,a1,s1
    1522:	8626                	mv	a2,s1
    1524:	95d2                	add	a1,a1,s4
    1526:	854a                	mv	a0,s2
    1528:	00000097          	auipc	ra,0x0
    152c:	e48080e7          	jalr	-440(ra) # 1370 <swap_bytes>
    1530:	0405                	addi	s0,s0,1
    1532:	9926                	add	s2,s2,s1
    1534:	fc899ce3          	bne	s3,s0,150c <shuffle+0x1a>
    1538:	70a2                	ld	ra,40(sp)
    153a:	7402                	ld	s0,32(sp)
    153c:	64e2                	ld	s1,24(sp)
    153e:	6942                	ld	s2,16(sp)
    1540:	69a2                	ld	s3,8(sp)
    1542:	6a02                	ld	s4,0(sp)
    1544:	6145                	addi	sp,sp,48
    1546:	8082                	ret
    1548:	8082                	ret

000000000000154a <arc4_init>:
    154a:	100500a3          	sb	zero,257(a0)
    154e:	10050023          	sb	zero,256(a0)
    1552:	4781                	li	a5,0
    1554:	10000693          	li	a3,256
    1558:	00f50733          	add	a4,a0,a5
    155c:	00f70023          	sb	a5,0(a4)
    1560:	0785                	addi	a5,a5,1
    1562:	fed79be3          	bne	a5,a3,1558 <arc4_init+0xe>
    1566:	86aa                	mv	a3,a0
    1568:	10050e13          	addi	t3,a0,256
    156c:	4701                	li	a4,0
    156e:	4781                	li	a5,0
    1570:	0006c883          	lbu	a7,0(a3)
    1574:	00f58833          	add	a6,a1,a5
    1578:	00084803          	lbu	a6,0(a6)
    157c:	00e8873b          	addw	a4,a7,a4
    1580:	00e8073b          	addw	a4,a6,a4
    1584:	0ff77713          	andi	a4,a4,255
    1588:	00e50833          	add	a6,a0,a4
    158c:	00084303          	lbu	t1,0(a6)
    1590:	00668023          	sb	t1,0(a3)
    1594:	01180023          	sb	a7,0(a6)
    1598:	0785                	addi	a5,a5,1
    159a:	00c7b833          	sltu	a6,a5,a2
    159e:	41000833          	neg	a6,a6
    15a2:	0107f7b3          	and	a5,a5,a6
    15a6:	0685                	addi	a3,a3,1
    15a8:	fdc694e3          	bne	a3,t3,1570 <arc4_init+0x26>
    15ac:	8082                	ret

00000000000015ae <arc4_crypt>:
    15ae:	10054e03          	lbu	t3,256(a0)
    15b2:	10154803          	lbu	a6,257(a0)
    15b6:	fff60e93          	addi	t4,a2,-1
    15ba:	c225                	beqz	a2,161a <arc4_crypt+0x6c>
    15bc:	00c588b3          	add	a7,a1,a2
    15c0:	86ae                	mv	a3,a1
    15c2:	001e031b          	addiw	t1,t3,1
    15c6:	40b3033b          	subw	t1,t1,a1
    15ca:	00d3073b          	addw	a4,t1,a3
    15ce:	0ff77713          	andi	a4,a4,255
    15d2:	972a                	add	a4,a4,a0
    15d4:	00074603          	lbu	a2,0(a4)
    15d8:	0106083b          	addw	a6,a2,a6
    15dc:	0ff87813          	andi	a6,a6,255
    15e0:	010507b3          	add	a5,a0,a6
    15e4:	0007c583          	lbu	a1,0(a5)
    15e8:	00b70023          	sb	a1,0(a4)
    15ec:	00c78023          	sb	a2,0(a5)
    15f0:	0685                	addi	a3,a3,1
    15f2:	00074783          	lbu	a5,0(a4)
    15f6:	9fb1                	addw	a5,a5,a2
    15f8:	0ff7f793          	andi	a5,a5,255
    15fc:	97aa                	add	a5,a5,a0
    15fe:	0007c783          	lbu	a5,0(a5)
    1602:	fff6c703          	lbu	a4,-1(a3)
    1606:	8fb9                	xor	a5,a5,a4
    1608:	fef68fa3          	sb	a5,-1(a3)
    160c:	fb169fe3          	bne	a3,a7,15ca <arc4_crypt+0x1c>
    1610:	2e85                	addiw	t4,t4,1
    1612:	01ce8e3b          	addw	t3,t4,t3
    1616:	0ffe7e13          	andi	t3,t3,255
    161a:	11c50023          	sb	t3,256(a0)
    161e:	110500a3          	sb	a6,257(a0)
    1622:	8082                	ret

0000000000001624 <_main>:
    1624:	1141                	addi	sp,sp,-16
    1626:	e406                	sd	ra,8(sp)
    1628:	00000097          	auipc	ra,0x0
    162c:	9d8080e7          	jalr	-1576(ra) # 1000 <main>
    1630:	4501                	li	a0,0
    1632:	00000097          	auipc	ra,0x0
    1636:	578080e7          	jalr	1400(ra) # 1baa <exit>
    163a:	60a2                	ld	ra,8(sp)
    163c:	0141                	addi	sp,sp,16
    163e:	8082                	ret

0000000000001640 <strcmp>:
    1640:	00054783          	lbu	a5,0(a0)
    1644:	cb91                	beqz	a5,1658 <strcmp+0x18>
    1646:	0005c703          	lbu	a4,0(a1)
    164a:	00f71763          	bne	a4,a5,1658 <strcmp+0x18>
    164e:	0505                	addi	a0,a0,1
    1650:	0585                	addi	a1,a1,1
    1652:	00054783          	lbu	a5,0(a0)
    1656:	fbe5                	bnez	a5,1646 <strcmp+0x6>
    1658:	0005c503          	lbu	a0,0(a1)
    165c:	40a7853b          	subw	a0,a5,a0
    1660:	8082                	ret

0000000000001662 <strcpy>:
    1662:	87aa                	mv	a5,a0
    1664:	0585                	addi	a1,a1,1
    1666:	0785                	addi	a5,a5,1
    1668:	fff5c703          	lbu	a4,-1(a1)
    166c:	fee78fa3          	sb	a4,-1(a5)
    1670:	fb75                	bnez	a4,1664 <strcpy+0x2>
    1672:	8082                	ret

0000000000001674 <strlen>:
    1674:	00054783          	lbu	a5,0(a0)
    1678:	cf81                	beqz	a5,1690 <strlen+0x1c>
    167a:	0505                	addi	a0,a0,1
    167c:	87aa                	mv	a5,a0
    167e:	4685                	li	a3,1
    1680:	9e89                	subw	a3,a3,a0
    1682:	00f6853b          	addw	a0,a3,a5
    1686:	0785                	addi	a5,a5,1
    1688:	fff7c703          	lbu	a4,-1(a5)
    168c:	fb7d                	bnez	a4,1682 <strlen+0xe>
    168e:	8082                	ret
    1690:	4501                	li	a0,0
    1692:	8082                	ret

0000000000001694 <memset>:
    1694:	ca19                	beqz	a2,16aa <memset+0x16>
    1696:	87aa                	mv	a5,a0
    1698:	1602                	slli	a2,a2,0x20
    169a:	9201                	srli	a2,a2,0x20
    169c:	00a60733          	add	a4,a2,a0
    16a0:	00b78023          	sb	a1,0(a5)
    16a4:	0785                	addi	a5,a5,1
    16a6:	fee79de3          	bne	a5,a4,16a0 <memset+0xc>
    16aa:	8082                	ret

00000000000016ac <memcmp>:
    16ac:	1101                	addi	sp,sp,-32
    16ae:	ec06                	sd	ra,24(sp)
    16b0:	e822                	sd	s0,16(sp)
    16b2:	e426                	sd	s1,8(sp)
    16b4:	e04a                	sd	s2,0(sp)
    16b6:	892a                	mv	s2,a0
    16b8:	842e                	mv	s0,a1
    16ba:	84b2                	mv	s1,a2
    16bc:	c915                	beqz	a0,16f0 <memcmp+0x44>
    16be:	c5ad                	beqz	a1,1728 <memcmp+0x7c>
    16c0:	fff60713          	addi	a4,a2,-1
    16c4:	c645                	beqz	a2,176c <memcmp+0xc0>
    16c6:	87ca                	mv	a5,s2
    16c8:	00190613          	addi	a2,s2,1
    16cc:	963a                	add	a2,a2,a4
    16ce:	0007c683          	lbu	a3,0(a5)
    16d2:	00044703          	lbu	a4,0(s0)
    16d6:	08e69463          	bne	a3,a4,175e <memcmp+0xb2>
    16da:	0785                	addi	a5,a5,1
    16dc:	0405                	addi	s0,s0,1
    16de:	fec798e3          	bne	a5,a2,16ce <memcmp+0x22>
    16e2:	4501                	li	a0,0
    16e4:	60e2                	ld	ra,24(sp)
    16e6:	6442                	ld	s0,16(sp)
    16e8:	64a2                	ld	s1,8(sp)
    16ea:	6902                	ld	s2,0(sp)
    16ec:	6105                	addi	sp,sp,32
    16ee:	8082                	ret
    16f0:	4501                	li	a0,0
    16f2:	da6d                	beqz	a2,16e4 <memcmp+0x38>
    16f4:	03200693          	li	a3,50
    16f8:	00002637          	lui	a2,0x2
    16fc:	0a060613          	addi	a2,a2,160 # 20a0 <crctab+0x400>
    1700:	000025b7          	lui	a1,0x2
    1704:	0b058593          	addi	a1,a1,176 # 20b0 <crctab+0x410>
    1708:	4509                	li	a0,2
    170a:	00000097          	auipc	ra,0x0
    170e:	bbc080e7          	jalr	-1092(ra) # 12c6 <fprintf>
    1712:	650d                	lui	a0,0x3
    1714:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1718:	00000097          	auipc	ra,0x0
    171c:	492080e7          	jalr	1170(ra) # 1baa <exit>
    1720:	fff48713          	addi	a4,s1,-1
    1724:	f04d                	bnez	s0,16c6 <memcmp+0x1a>
    1726:	a011                	j	172a <memcmp+0x7e>
    1728:	c221                	beqz	a2,1768 <memcmp+0xbc>
    172a:	03300693          	li	a3,51
    172e:	00002637          	lui	a2,0x2
    1732:	0a060613          	addi	a2,a2,160 # 20a0 <crctab+0x400>
    1736:	000025b7          	lui	a1,0x2
    173a:	0f858593          	addi	a1,a1,248 # 20f8 <crctab+0x458>
    173e:	4509                	li	a0,2
    1740:	00000097          	auipc	ra,0x0
    1744:	b86080e7          	jalr	-1146(ra) # 12c6 <fprintf>
    1748:	650d                	lui	a0,0x3
    174a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    174e:	00000097          	auipc	ra,0x0
    1752:	45c080e7          	jalr	1116(ra) # 1baa <exit>
    1756:	fff48713          	addi	a4,s1,-1
    175a:	4401                	li	s0,0
    175c:	b7ad                	j	16c6 <memcmp+0x1a>
    175e:	4505                	li	a0,1
    1760:	f8d762e3          	bltu	a4,a3,16e4 <memcmp+0x38>
    1764:	557d                	li	a0,-1
    1766:	bfbd                	j	16e4 <memcmp+0x38>
    1768:	4501                	li	a0,0
    176a:	bfad                	j	16e4 <memcmp+0x38>
    176c:	4501                	li	a0,0
    176e:	bf9d                	j	16e4 <memcmp+0x38>

0000000000001770 <memcpy>:
    1770:	1101                	addi	sp,sp,-32
    1772:	ec06                	sd	ra,24(sp)
    1774:	e822                	sd	s0,16(sp)
    1776:	e426                	sd	s1,8(sp)
    1778:	e04a                	sd	s2,0(sp)
    177a:	84aa                	mv	s1,a0
    177c:	842e                	mv	s0,a1
    177e:	8932                	mv	s2,a2
    1780:	c51d                	beqz	a0,17ae <memcpy+0x3e>
    1782:	c1ad                	beqz	a1,17e4 <memcpy+0x74>
    1784:	fff60693          	addi	a3,a2,-1
    1788:	ce01                	beqz	a2,17a0 <memcpy+0x30>
    178a:	0685                	addi	a3,a3,1
    178c:	96a6                	add	a3,a3,s1
    178e:	87a6                	mv	a5,s1
    1790:	0405                	addi	s0,s0,1
    1792:	0785                	addi	a5,a5,1
    1794:	fff44703          	lbu	a4,-1(s0)
    1798:	fee78fa3          	sb	a4,-1(a5)
    179c:	fed79ae3          	bne	a5,a3,1790 <memcpy+0x20>
    17a0:	8526                	mv	a0,s1
    17a2:	60e2                	ld	ra,24(sp)
    17a4:	6442                	ld	s0,16(sp)
    17a6:	64a2                	ld	s1,8(sp)
    17a8:	6902                	ld	s2,0(sp)
    17aa:	6105                	addi	sp,sp,32
    17ac:	8082                	ret
    17ae:	da6d                	beqz	a2,17a0 <memcpy+0x30>
    17b0:	04000693          	li	a3,64
    17b4:	00002637          	lui	a2,0x2
    17b8:	0a060613          	addi	a2,a2,160 # 20a0 <crctab+0x400>
    17bc:	000025b7          	lui	a1,0x2
    17c0:	14058593          	addi	a1,a1,320 # 2140 <crctab+0x4a0>
    17c4:	4509                	li	a0,2
    17c6:	00000097          	auipc	ra,0x0
    17ca:	b00080e7          	jalr	-1280(ra) # 12c6 <fprintf>
    17ce:	650d                	lui	a0,0x3
    17d0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17d4:	00000097          	auipc	ra,0x0
    17d8:	3d6080e7          	jalr	982(ra) # 1baa <exit>
    17dc:	fff90693          	addi	a3,s2,-1
    17e0:	f44d                	bnez	s0,178a <memcpy+0x1a>
    17e2:	a011                	j	17e6 <memcpy+0x76>
    17e4:	de55                	beqz	a2,17a0 <memcpy+0x30>
    17e6:	04100693          	li	a3,65
    17ea:	00002637          	lui	a2,0x2
    17ee:	0a060613          	addi	a2,a2,160 # 20a0 <crctab+0x400>
    17f2:	000025b7          	lui	a1,0x2
    17f6:	18858593          	addi	a1,a1,392 # 2188 <crctab+0x4e8>
    17fa:	4509                	li	a0,2
    17fc:	00000097          	auipc	ra,0x0
    1800:	aca080e7          	jalr	-1334(ra) # 12c6 <fprintf>
    1804:	650d                	lui	a0,0x3
    1806:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    180a:	00000097          	auipc	ra,0x0
    180e:	3a0080e7          	jalr	928(ra) # 1baa <exit>
    1812:	fff90693          	addi	a3,s2,-1
    1816:	4401                	li	s0,0
    1818:	bf8d                	j	178a <memcpy+0x1a>

000000000000181a <itoa>:
    181a:	1101                	addi	sp,sp,-32
    181c:	ec06                	sd	ra,24(sp)
    181e:	e822                	sd	s0,16(sp)
    1820:	e426                	sd	s1,8(sp)
    1822:	842a                	mv	s0,a0
    1824:	41f5d71b          	sraiw	a4,a1,0x1f
    1828:	00e5c7b3          	xor	a5,a1,a4
    182c:	9f99                	subw	a5,a5,a4
    182e:	84aa                	mv	s1,a0
    1830:	862a                	mv	a2,a0
    1832:	4681                	li	a3,0
    1834:	4529                	li	a0,10
    1836:	4825                	li	a6,9
    1838:	88b6                	mv	a7,a3
    183a:	2685                	addiw	a3,a3,1
    183c:	02a7e73b          	remw	a4,a5,a0
    1840:	0307071b          	addiw	a4,a4,48
    1844:	00e60023          	sb	a4,0(a2)
    1848:	873e                	mv	a4,a5
    184a:	02a7c7bb          	divw	a5,a5,a0
    184e:	0605                	addi	a2,a2,1
    1850:	fee844e3          	blt	a6,a4,1838 <itoa+0x1e>
    1854:	0405c863          	bltz	a1,18a4 <itoa+0x8a>
    1858:	96a2                	add	a3,a3,s0
    185a:	00068023          	sb	zero,0(a3)
    185e:	8522                	mv	a0,s0
    1860:	00000097          	auipc	ra,0x0
    1864:	e14080e7          	jalr	-492(ra) # 1674 <strlen>
    1868:	fff5071b          	addiw	a4,a0,-1
    186c:	02e05763          	blez	a4,189a <itoa+0x80>
    1870:	9722                	add	a4,a4,s0
    1872:	4681                	li	a3,0
    1874:	0004c783          	lbu	a5,0(s1)
    1878:	00074603          	lbu	a2,0(a4)
    187c:	00c48023          	sb	a2,0(s1)
    1880:	00f70023          	sb	a5,0(a4)
    1884:	0016879b          	addiw	a5,a3,1
    1888:	0007869b          	sext.w	a3,a5
    188c:	0485                	addi	s1,s1,1
    188e:	177d                	addi	a4,a4,-1
    1890:	fff7c793          	not	a5,a5
    1894:	9fa9                	addw	a5,a5,a0
    1896:	fcf6cfe3          	blt	a3,a5,1874 <itoa+0x5a>
    189a:	60e2                	ld	ra,24(sp)
    189c:	6442                	ld	s0,16(sp)
    189e:	64a2                	ld	s1,8(sp)
    18a0:	6105                	addi	sp,sp,32
    18a2:	8082                	ret
    18a4:	96a2                	add	a3,a3,s0
    18a6:	02d00793          	li	a5,45
    18aa:	00f68023          	sb	a5,0(a3)
    18ae:	0028869b          	addiw	a3,a7,2
    18b2:	b75d                	j	1858 <itoa+0x3e>

00000000000018b4 <atoi>:
    18b4:	00054783          	lbu	a5,0(a0)
    18b8:	02000713          	li	a4,32
    18bc:	00e79763          	bne	a5,a4,18ca <atoi+0x16>
    18c0:	0505                	addi	a0,a0,1
    18c2:	00054783          	lbu	a5,0(a0)
    18c6:	fee78de3          	beq	a5,a4,18c0 <atoi+0xc>
    18ca:	02b00713          	li	a4,43
    18ce:	04e78663          	beq	a5,a4,191a <atoi+0x66>
    18d2:	02d00713          	li	a4,45
    18d6:	4805                	li	a6,1
    18d8:	04e78463          	beq	a5,a4,1920 <atoi+0x6c>
    18dc:	00054683          	lbu	a3,0(a0)
    18e0:	fd06879b          	addiw	a5,a3,-48
    18e4:	0ff7f793          	andi	a5,a5,255
    18e8:	4725                	li	a4,9
    18ea:	02f76e63          	bltu	a4,a5,1926 <atoi+0x72>
    18ee:	4601                	li	a2,0
    18f0:	45a5                	li	a1,9
    18f2:	0505                	addi	a0,a0,1
    18f4:	0026179b          	slliw	a5,a2,0x2
    18f8:	9fb1                	addw	a5,a5,a2
    18fa:	0017979b          	slliw	a5,a5,0x1
    18fe:	9fb5                	addw	a5,a5,a3
    1900:	fd07861b          	addiw	a2,a5,-48
    1904:	00054683          	lbu	a3,0(a0)
    1908:	fd06871b          	addiw	a4,a3,-48
    190c:	0ff77713          	andi	a4,a4,255
    1910:	fee5f1e3          	bgeu	a1,a4,18f2 <atoi+0x3e>
    1914:	02c8053b          	mulw	a0,a6,a2
    1918:	8082                	ret
    191a:	0505                	addi	a0,a0,1
    191c:	4805                	li	a6,1
    191e:	bf7d                	j	18dc <atoi+0x28>
    1920:	0505                	addi	a0,a0,1
    1922:	587d                	li	a6,-1
    1924:	bf65                	j	18dc <atoi+0x28>
    1926:	4601                	li	a2,0
    1928:	b7f5                	j	1914 <atoi+0x60>

000000000000192a <check_file_handle>:
    192a:	d8010113          	addi	sp,sp,-640
    192e:	26113c23          	sd	ra,632(sp)
    1932:	26813823          	sd	s0,624(sp)
    1936:	26913423          	sd	s1,616(sp)
    193a:	27213023          	sd	s2,608(sp)
    193e:	25313c23          	sd	s3,600(sp)
    1942:	25413823          	sd	s4,592(sp)
    1946:	25513423          	sd	s5,584(sp)
    194a:	25613023          	sd	s6,576(sp)
    194e:	23713c23          	sd	s7,568(sp)
    1952:	23813823          	sd	s8,560(sp)
    1956:	23913423          	sd	s9,552(sp)
    195a:	23a13023          	sd	s10,544(sp)
    195e:	21b13c23          	sd	s11,536(sp)
    1962:	8baa                	mv	s7,a0
    1964:	8a2e                	mv	s4,a1
    1966:	8c32                	mv	s8,a2
    1968:	89b6                	mv	s3,a3
    196a:	040c                	addi	a1,sp,512
    196c:	00000097          	auipc	ra,0x0
    1970:	28e080e7          	jalr	654(ra) # 1bfa <fstat>
    1974:	20813603          	ld	a2,520(sp)
    1978:	03361163          	bne	a2,s3,199a <check_file_handle+0x70>
    197c:	06098763          	beqz	s3,19ea <check_file_handle+0xc0>
    1980:	4901                	li	s2,0
    1982:	20000a93          	li	s5,512
    1986:	00002cb7          	lui	s9,0x2
    198a:	00002db7          	lui	s11,0x2
    198e:	6b0d                	lui	s6,0x3
    1990:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1994:	00002d37          	lui	s10,0x2
    1998:	aa39                	j	1ab6 <check_file_handle+0x18c>
    199a:	86ce                	mv	a3,s3
    199c:	85d2                	mv	a1,s4
    199e:	00002537          	lui	a0,0x2
    19a2:	1d050513          	addi	a0,a0,464 # 21d0 <crctab+0x530>
    19a6:	00000097          	auipc	ra,0x0
    19aa:	942080e7          	jalr	-1726(ra) # 12e8 <printf>
    19ae:	fc0999e3          	bnez	s3,1980 <check_file_handle+0x56>
    19b2:	20813683          	ld	a3,520(sp)
    19b6:	03368a63          	beq	a3,s3,19ea <check_file_handle+0xc0>
    19ba:	0a600813          	li	a6,166
    19be:	000027b7          	lui	a5,0x2
    19c2:	0a078793          	addi	a5,a5,160 # 20a0 <crctab+0x400>
    19c6:	874e                	mv	a4,s3
    19c8:	8652                	mv	a2,s4
    19ca:	000025b7          	lui	a1,0x2
    19ce:	2a058593          	addi	a1,a1,672 # 22a0 <crctab+0x600>
    19d2:	4509                	li	a0,2
    19d4:	00000097          	auipc	ra,0x0
    19d8:	8f2080e7          	jalr	-1806(ra) # 12c6 <fprintf>
    19dc:	650d                	lui	a0,0x3
    19de:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19e2:	00000097          	auipc	ra,0x0
    19e6:	1c8080e7          	jalr	456(ra) # 1baa <exit>
    19ea:	85d2                	mv	a1,s4
    19ec:	00002537          	lui	a0,0x2
    19f0:	2e850513          	addi	a0,a0,744 # 22e8 <crctab+0x648>
    19f4:	00000097          	auipc	ra,0x0
    19f8:	8f4080e7          	jalr	-1804(ra) # 12e8 <printf>
    19fc:	27813083          	ld	ra,632(sp)
    1a00:	27013403          	ld	s0,624(sp)
    1a04:	26813483          	ld	s1,616(sp)
    1a08:	26013903          	ld	s2,608(sp)
    1a0c:	25813983          	ld	s3,600(sp)
    1a10:	25013a03          	ld	s4,592(sp)
    1a14:	24813a83          	ld	s5,584(sp)
    1a18:	24013b03          	ld	s6,576(sp)
    1a1c:	23813b83          	ld	s7,568(sp)
    1a20:	23013c03          	ld	s8,560(sp)
    1a24:	22813c83          	ld	s9,552(sp)
    1a28:	22013d03          	ld	s10,544(sp)
    1a2c:	21813d83          	ld	s11,536(sp)
    1a30:	28010113          	addi	sp,sp,640
    1a34:	8082                	ret
    1a36:	09d00893          	li	a7,157
    1a3a:	0a0c8813          	addi	a6,s9,160 # 20a0 <crctab+0x400>
    1a3e:	87aa                	mv	a5,a0
    1a40:	8752                	mv	a4,s4
    1a42:	86ca                	mv	a3,s2
    1a44:	8622                	mv	a2,s0
    1a46:	200d8593          	addi	a1,s11,512 # 2200 <crctab+0x560>
    1a4a:	4509                	li	a0,2
    1a4c:	00000097          	auipc	ra,0x0
    1a50:	87a080e7          	jalr	-1926(ra) # 12c6 <fprintf>
    1a54:	855a                	mv	a0,s6
    1a56:	00000097          	auipc	ra,0x0
    1a5a:	154080e7          	jalr	340(ra) # 1baa <exit>
    1a5e:	a89d                	j	1ad4 <check_file_handle+0x1aa>
    1a60:	00160593          	addi	a1,a2,1
    1a64:	0285f163          	bgeu	a1,s0,1a86 <check_file_handle+0x15c>
    1a68:	00c10733          	add	a4,sp,a2
    1a6c:	00b487b3          	add	a5,s1,a1
    1a70:	00174683          	lbu	a3,1(a4)
    1a74:	0007c783          	lbu	a5,0(a5)
    1a78:	00f68763          	beq	a3,a5,1a86 <check_file_handle+0x15c>
    1a7c:	0585                	addi	a1,a1,1
    1a7e:	0705                	addi	a4,a4,1
    1a80:	feb416e3          	bne	s0,a1,1a6c <check_file_handle+0x142>
    1a84:	85a2                	mv	a1,s0
    1a86:	08100813          	li	a6,129
    1a8a:	0a0c8793          	addi	a5,s9,160
    1a8e:	8752                	mv	a4,s4
    1a90:	012606b3          	add	a3,a2,s2
    1a94:	40c58633          	sub	a2,a1,a2
    1a98:	248d0593          	addi	a1,s10,584 # 2248 <crctab+0x5a8>
    1a9c:	4509                	li	a0,2
    1a9e:	00000097          	auipc	ra,0x0
    1aa2:	828080e7          	jalr	-2008(ra) # 12c6 <fprintf>
    1aa6:	855a                	mv	a0,s6
    1aa8:	00000097          	auipc	ra,0x0
    1aac:	102080e7          	jalr	258(ra) # 1baa <exit>
    1ab0:	9922                	add	s2,s2,s0
    1ab2:	f13970e3          	bgeu	s2,s3,19b2 <check_file_handle+0x88>
    1ab6:	41298433          	sub	s0,s3,s2
    1aba:	008af363          	bgeu	s5,s0,1ac0 <check_file_handle+0x196>
    1abe:	8456                	mv	s0,s5
    1ac0:	0004061b          	sext.w	a2,s0
    1ac4:	858a                	mv	a1,sp
    1ac6:	855e                	mv	a0,s7
    1ac8:	00000097          	auipc	ra,0x0
    1acc:	10a080e7          	jalr	266(ra) # 1bd2 <read>
    1ad0:	f68513e3          	bne	a0,s0,1a36 <check_file_handle+0x10c>
    1ad4:	012c04b3          	add	s1,s8,s2
    1ad8:	8622                	mv	a2,s0
    1ada:	85a6                	mv	a1,s1
    1adc:	850a                	mv	a0,sp
    1ade:	00000097          	auipc	ra,0x0
    1ae2:	bce080e7          	jalr	-1074(ra) # 16ac <memcmp>
    1ae6:	d569                	beqz	a0,1ab0 <check_file_handle+0x186>
    1ae8:	03298163          	beq	s3,s2,1b0a <check_file_handle+0x1e0>
    1aec:	870a                	mv	a4,sp
    1aee:	4601                	li	a2,0
    1af0:	00c487b3          	add	a5,s1,a2
    1af4:	00074683          	lbu	a3,0(a4)
    1af8:	0007c783          	lbu	a5,0(a5)
    1afc:	f6f692e3          	bne	a3,a5,1a60 <check_file_handle+0x136>
    1b00:	0605                	addi	a2,a2,1
    1b02:	0705                	addi	a4,a4,1
    1b04:	fe8666e3          	bltu	a2,s0,1af0 <check_file_handle+0x1c6>
    1b08:	bfa1                	j	1a60 <check_file_handle+0x136>
    1b0a:	4601                	li	a2,0
    1b0c:	4585                	li	a1,1
    1b0e:	bfa5                	j	1a86 <check_file_handle+0x15c>

0000000000001b10 <check_file>:
    1b10:	7179                	addi	sp,sp,-48
    1b12:	f406                	sd	ra,40(sp)
    1b14:	f022                	sd	s0,32(sp)
    1b16:	ec26                	sd	s1,24(sp)
    1b18:	e84a                	sd	s2,16(sp)
    1b1a:	e44e                	sd	s3,8(sp)
    1b1c:	84aa                	mv	s1,a0
    1b1e:	892e                	mv	s2,a1
    1b20:	89b2                	mv	s3,a2
    1b22:	4581                	li	a1,0
    1b24:	00000097          	auipc	ra,0x0
    1b28:	0a6080e7          	jalr	166(ra) # 1bca <open>
    1b2c:	842a                	mv	s0,a0
    1b2e:	4789                	li	a5,2
    1b30:	02a7df63          	bge	a5,a0,1b6e <check_file+0x5e>
    1b34:	86ce                	mv	a3,s3
    1b36:	864a                	mv	a2,s2
    1b38:	85a6                	mv	a1,s1
    1b3a:	8522                	mv	a0,s0
    1b3c:	00000097          	auipc	ra,0x0
    1b40:	dee080e7          	jalr	-530(ra) # 192a <check_file_handle>
    1b44:	85a6                	mv	a1,s1
    1b46:	00002537          	lui	a0,0x2
    1b4a:	37050513          	addi	a0,a0,880 # 2370 <crctab+0x6d0>
    1b4e:	fffff097          	auipc	ra,0xfffff
    1b52:	79a080e7          	jalr	1946(ra) # 12e8 <printf>
    1b56:	8522                	mv	a0,s0
    1b58:	00000097          	auipc	ra,0x0
    1b5c:	09a080e7          	jalr	154(ra) # 1bf2 <close>
    1b60:	70a2                	ld	ra,40(sp)
    1b62:	7402                	ld	s0,32(sp)
    1b64:	64e2                	ld	s1,24(sp)
    1b66:	6942                	ld	s2,16(sp)
    1b68:	69a2                	ld	s3,8(sp)
    1b6a:	6145                	addi	sp,sp,48
    1b6c:	8082                	ret
    1b6e:	0ae00713          	li	a4,174
    1b72:	000026b7          	lui	a3,0x2
    1b76:	0a068693          	addi	a3,a3,160 # 20a0 <crctab+0x400>
    1b7a:	8626                	mv	a2,s1
    1b7c:	000025b7          	lui	a1,0x2
    1b80:	30858593          	addi	a1,a1,776 # 2308 <crctab+0x668>
    1b84:	4509                	li	a0,2
    1b86:	fffff097          	auipc	ra,0xfffff
    1b8a:	740080e7          	jalr	1856(ra) # 12c6 <fprintf>
    1b8e:	650d                	lui	a0,0x3
    1b90:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b94:	00000097          	auipc	ra,0x0
    1b98:	016080e7          	jalr	22(ra) # 1baa <exit>
    1b9c:	bf61                	j	1b34 <check_file+0x24>

0000000000001b9e <r_sp>:
    1b9e:	850a                	mv	a0,sp
    1ba0:	8082                	ret

0000000000001ba2 <halt>:
    1ba2:	4885                	li	a7,1
    1ba4:	00000073          	ecall
    1ba8:	8082                	ret

0000000000001baa <exit>:
    1baa:	4889                	li	a7,2
    1bac:	00000073          	ecall
    1bb0:	8082                	ret

0000000000001bb2 <exec>:
    1bb2:	488d                	li	a7,3
    1bb4:	00000073          	ecall
    1bb8:	8082                	ret

0000000000001bba <wait>:
    1bba:	4891                	li	a7,4
    1bbc:	00000073          	ecall
    1bc0:	8082                	ret

0000000000001bc2 <remove>:
    1bc2:	4895                	li	a7,5
    1bc4:	00000073          	ecall
    1bc8:	8082                	ret

0000000000001bca <open>:
    1bca:	4899                	li	a7,6
    1bcc:	00000073          	ecall
    1bd0:	8082                	ret

0000000000001bd2 <read>:
    1bd2:	489d                	li	a7,7
    1bd4:	00000073          	ecall
    1bd8:	8082                	ret

0000000000001bda <write>:
    1bda:	48a1                	li	a7,8
    1bdc:	00000073          	ecall
    1be0:	8082                	ret

0000000000001be2 <seek>:
    1be2:	48a5                	li	a7,9
    1be4:	00000073          	ecall
    1be8:	8082                	ret

0000000000001bea <tell>:
    1bea:	48a9                	li	a7,10
    1bec:	00000073          	ecall
    1bf0:	8082                	ret

0000000000001bf2 <close>:
    1bf2:	48ad                	li	a7,11
    1bf4:	00000073          	ecall
    1bf8:	8082                	ret

0000000000001bfa <fstat>:
    1bfa:	48b1                	li	a7,12
    1bfc:	00000073          	ecall
    1c00:	8082                	ret

0000000000001c02 <mmap>:
    1c02:	48b5                	li	a7,13
    1c04:	00000073          	ecall
    1c08:	8082                	ret

0000000000001c0a <munmap>:
    1c0a:	48b9                	li	a7,14
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <chdir>:
    1c12:	48bd                	li	a7,15
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <mkdir>:
    1c1a:	48c1                	li	a7,16
    1c1c:	00000073          	ecall
    1c20:	8082                	ret
