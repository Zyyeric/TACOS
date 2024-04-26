
build/user/vm/pt-write-code:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	000017b7          	lui	a5,0x1
    1008:	00079023          	sh	zero,0(a5) # 1000 <main>
    100c:	00079123          	sh	zero,2(a5)
    1010:	46a1                	li	a3,8
    1012:	00002637          	lui	a2,0x2
    1016:	c3060613          	addi	a2,a2,-976 # 1c30 <mkdir+0x12>
    101a:	000025b7          	lui	a1,0x2
    101e:	c4858593          	addi	a1,a1,-952 # 1c48 <mkdir+0x2a>
    1022:	4509                	li	a0,2
    1024:	00000097          	auipc	ra,0x0
    1028:	2a6080e7          	jalr	678(ra) # 12ca <fprintf>
    102c:	650d                	lui	a0,0x3
    102e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1032:	00001097          	auipc	ra,0x1
    1036:	b7c080e7          	jalr	-1156(ra) # 1bae <exit>
    103a:	60a2                	ld	ra,8(sp)
    103c:	0141                	addi	sp,sp,16
    103e:	8082                	ret

0000000000001040 <putc>:
    1040:	1101                	addi	sp,sp,-32
    1042:	ec06                	sd	ra,24(sp)
    1044:	00b107a3          	sb	a1,15(sp)
    1048:	4605                	li	a2,1
    104a:	00f10593          	addi	a1,sp,15
    104e:	00001097          	auipc	ra,0x1
    1052:	b90080e7          	jalr	-1136(ra) # 1bde <write>
    1056:	60e2                	ld	ra,24(sp)
    1058:	6105                	addi	sp,sp,32
    105a:	8082                	ret

000000000000105c <printint>:
    105c:	7179                	addi	sp,sp,-48
    105e:	f406                	sd	ra,40(sp)
    1060:	f022                	sd	s0,32(sp)
    1062:	ec26                	sd	s1,24(sp)
    1064:	e84a                	sd	s2,16(sp)
    1066:	84aa                	mv	s1,a0
    1068:	c299                	beqz	a3,106e <printint+0x12>
    106a:	0805c363          	bltz	a1,10f0 <printint+0x94>
    106e:	2581                	sext.w	a1,a1
    1070:	4881                	li	a7,0
    1072:	868a                	mv	a3,sp
    1074:	4701                	li	a4,0
    1076:	2601                	sext.w	a2,a2
    1078:	00002537          	lui	a0,0x2
    107c:	c9050513          	addi	a0,a0,-880 # 1c90 <digits>
    1080:	883a                	mv	a6,a4
    1082:	2705                	addiw	a4,a4,1
    1084:	02c5f7bb          	remuw	a5,a1,a2
    1088:	1782                	slli	a5,a5,0x20
    108a:	9381                	srli	a5,a5,0x20
    108c:	97aa                	add	a5,a5,a0
    108e:	0007c783          	lbu	a5,0(a5)
    1092:	00f68023          	sb	a5,0(a3)
    1096:	0005879b          	sext.w	a5,a1
    109a:	02c5d5bb          	divuw	a1,a1,a2
    109e:	0685                	addi	a3,a3,1
    10a0:	fec7f0e3          	bgeu	a5,a2,1080 <printint+0x24>
    10a4:	00088a63          	beqz	a7,10b8 <printint+0x5c>
    10a8:	081c                	addi	a5,sp,16
    10aa:	973e                	add	a4,a4,a5
    10ac:	02d00793          	li	a5,45
    10b0:	fef70823          	sb	a5,-16(a4)
    10b4:	0028071b          	addiw	a4,a6,2
    10b8:	02e05663          	blez	a4,10e4 <printint+0x88>
    10bc:	00e10433          	add	s0,sp,a4
    10c0:	fff10913          	addi	s2,sp,-1
    10c4:	993a                	add	s2,s2,a4
    10c6:	377d                	addiw	a4,a4,-1
    10c8:	1702                	slli	a4,a4,0x20
    10ca:	9301                	srli	a4,a4,0x20
    10cc:	40e90933          	sub	s2,s2,a4
    10d0:	fff44583          	lbu	a1,-1(s0)
    10d4:	8526                	mv	a0,s1
    10d6:	00000097          	auipc	ra,0x0
    10da:	f6a080e7          	jalr	-150(ra) # 1040 <putc>
    10de:	147d                	addi	s0,s0,-1
    10e0:	ff2418e3          	bne	s0,s2,10d0 <printint+0x74>
    10e4:	70a2                	ld	ra,40(sp)
    10e6:	7402                	ld	s0,32(sp)
    10e8:	64e2                	ld	s1,24(sp)
    10ea:	6942                	ld	s2,16(sp)
    10ec:	6145                	addi	sp,sp,48
    10ee:	8082                	ret
    10f0:	40b005bb          	negw	a1,a1
    10f4:	4885                	li	a7,1
    10f6:	bfb5                	j	1072 <printint+0x16>

00000000000010f8 <vprintf>:
    10f8:	7159                	addi	sp,sp,-112
    10fa:	f486                	sd	ra,104(sp)
    10fc:	f0a2                	sd	s0,96(sp)
    10fe:	eca6                	sd	s1,88(sp)
    1100:	e8ca                	sd	s2,80(sp)
    1102:	e4ce                	sd	s3,72(sp)
    1104:	e0d2                	sd	s4,64(sp)
    1106:	fc56                	sd	s5,56(sp)
    1108:	f85a                	sd	s6,48(sp)
    110a:	f45e                	sd	s7,40(sp)
    110c:	f062                	sd	s8,32(sp)
    110e:	ec66                	sd	s9,24(sp)
    1110:	e86a                	sd	s10,16(sp)
    1112:	e46e                	sd	s11,8(sp)
    1114:	0005c483          	lbu	s1,0(a1)
    1118:	18048a63          	beqz	s1,12ac <vprintf+0x1b4>
    111c:	8a2a                	mv	s4,a0
    111e:	8ab2                	mv	s5,a2
    1120:	00158413          	addi	s0,a1,1
    1124:	4901                	li	s2,0
    1126:	02500993          	li	s3,37
    112a:	06400b93          	li	s7,100
    112e:	06c00c13          	li	s8,108
    1132:	07800c93          	li	s9,120
    1136:	07000d13          	li	s10,112
    113a:	00002db7          	lui	s11,0x2
    113e:	00002b37          	lui	s6,0x2
    1142:	c90b0b13          	addi	s6,s6,-880 # 1c90 <digits>
    1146:	a839                	j	1164 <vprintf+0x6c>
    1148:	85a6                	mv	a1,s1
    114a:	8552                	mv	a0,s4
    114c:	00000097          	auipc	ra,0x0
    1150:	ef4080e7          	jalr	-268(ra) # 1040 <putc>
    1154:	a019                	j	115a <vprintf+0x62>
    1156:	01390f63          	beq	s2,s3,1174 <vprintf+0x7c>
    115a:	0405                	addi	s0,s0,1
    115c:	fff44483          	lbu	s1,-1(s0)
    1160:	14048663          	beqz	s1,12ac <vprintf+0x1b4>
    1164:	0004879b          	sext.w	a5,s1
    1168:	fe0917e3          	bnez	s2,1156 <vprintf+0x5e>
    116c:	fd379ee3          	bne	a5,s3,1148 <vprintf+0x50>
    1170:	893e                	mv	s2,a5
    1172:	b7e5                	j	115a <vprintf+0x62>
    1174:	05778063          	beq	a5,s7,11b4 <vprintf+0xbc>
    1178:	05878c63          	beq	a5,s8,11d0 <vprintf+0xd8>
    117c:	07978863          	beq	a5,s9,11ec <vprintf+0xf4>
    1180:	09a78463          	beq	a5,s10,1208 <vprintf+0x110>
    1184:	07300713          	li	a4,115
    1188:	0ce78263          	beq	a5,a4,124c <vprintf+0x154>
    118c:	06300713          	li	a4,99
    1190:	0ee78763          	beq	a5,a4,127e <vprintf+0x186>
    1194:	11378163          	beq	a5,s3,1296 <vprintf+0x19e>
    1198:	85ce                	mv	a1,s3
    119a:	8552                	mv	a0,s4
    119c:	00000097          	auipc	ra,0x0
    11a0:	ea4080e7          	jalr	-348(ra) # 1040 <putc>
    11a4:	85a6                	mv	a1,s1
    11a6:	8552                	mv	a0,s4
    11a8:	00000097          	auipc	ra,0x0
    11ac:	e98080e7          	jalr	-360(ra) # 1040 <putc>
    11b0:	4901                	li	s2,0
    11b2:	b765                	j	115a <vprintf+0x62>
    11b4:	008a8493          	addi	s1,s5,8
    11b8:	4685                	li	a3,1
    11ba:	4629                	li	a2,10
    11bc:	000aa583          	lw	a1,0(s5)
    11c0:	8552                	mv	a0,s4
    11c2:	00000097          	auipc	ra,0x0
    11c6:	e9a080e7          	jalr	-358(ra) # 105c <printint>
    11ca:	8aa6                	mv	s5,s1
    11cc:	4901                	li	s2,0
    11ce:	b771                	j	115a <vprintf+0x62>
    11d0:	008a8493          	addi	s1,s5,8
    11d4:	4681                	li	a3,0
    11d6:	4629                	li	a2,10
    11d8:	000aa583          	lw	a1,0(s5)
    11dc:	8552                	mv	a0,s4
    11de:	00000097          	auipc	ra,0x0
    11e2:	e7e080e7          	jalr	-386(ra) # 105c <printint>
    11e6:	8aa6                	mv	s5,s1
    11e8:	4901                	li	s2,0
    11ea:	bf85                	j	115a <vprintf+0x62>
    11ec:	008a8493          	addi	s1,s5,8
    11f0:	4681                	li	a3,0
    11f2:	4641                	li	a2,16
    11f4:	000aa583          	lw	a1,0(s5)
    11f8:	8552                	mv	a0,s4
    11fa:	00000097          	auipc	ra,0x0
    11fe:	e62080e7          	jalr	-414(ra) # 105c <printint>
    1202:	8aa6                	mv	s5,s1
    1204:	4901                	li	s2,0
    1206:	bf91                	j	115a <vprintf+0x62>
    1208:	008a8913          	addi	s2,s5,8
    120c:	000aba83          	ld	s5,0(s5)
    1210:	03000593          	li	a1,48
    1214:	8552                	mv	a0,s4
    1216:	00000097          	auipc	ra,0x0
    121a:	e2a080e7          	jalr	-470(ra) # 1040 <putc>
    121e:	85e6                	mv	a1,s9
    1220:	8552                	mv	a0,s4
    1222:	00000097          	auipc	ra,0x0
    1226:	e1e080e7          	jalr	-482(ra) # 1040 <putc>
    122a:	44c1                	li	s1,16
    122c:	03cad793          	srli	a5,s5,0x3c
    1230:	97da                	add	a5,a5,s6
    1232:	0007c583          	lbu	a1,0(a5)
    1236:	8552                	mv	a0,s4
    1238:	00000097          	auipc	ra,0x0
    123c:	e08080e7          	jalr	-504(ra) # 1040 <putc>
    1240:	0a92                	slli	s5,s5,0x4
    1242:	34fd                	addiw	s1,s1,-1
    1244:	f4e5                	bnez	s1,122c <vprintf+0x134>
    1246:	8aca                	mv	s5,s2
    1248:	4901                	li	s2,0
    124a:	bf01                	j	115a <vprintf+0x62>
    124c:	008a8913          	addi	s2,s5,8
    1250:	000ab483          	ld	s1,0(s5)
    1254:	c085                	beqz	s1,1274 <vprintf+0x17c>
    1256:	0004c583          	lbu	a1,0(s1)
    125a:	c5b1                	beqz	a1,12a6 <vprintf+0x1ae>
    125c:	8552                	mv	a0,s4
    125e:	00000097          	auipc	ra,0x0
    1262:	de2080e7          	jalr	-542(ra) # 1040 <putc>
    1266:	0485                	addi	s1,s1,1
    1268:	0004c583          	lbu	a1,0(s1)
    126c:	f9e5                	bnez	a1,125c <vprintf+0x164>
    126e:	8aca                	mv	s5,s2
    1270:	4901                	li	s2,0
    1272:	b5e5                	j	115a <vprintf+0x62>
    1274:	c88d8493          	addi	s1,s11,-888 # 1c88 <mkdir+0x6a>
    1278:	02800593          	li	a1,40
    127c:	b7c5                	j	125c <vprintf+0x164>
    127e:	008a8493          	addi	s1,s5,8
    1282:	000ac583          	lbu	a1,0(s5)
    1286:	8552                	mv	a0,s4
    1288:	00000097          	auipc	ra,0x0
    128c:	db8080e7          	jalr	-584(ra) # 1040 <putc>
    1290:	8aa6                	mv	s5,s1
    1292:	4901                	li	s2,0
    1294:	b5d9                	j	115a <vprintf+0x62>
    1296:	85ce                	mv	a1,s3
    1298:	8552                	mv	a0,s4
    129a:	00000097          	auipc	ra,0x0
    129e:	da6080e7          	jalr	-602(ra) # 1040 <putc>
    12a2:	4901                	li	s2,0
    12a4:	bd5d                	j	115a <vprintf+0x62>
    12a6:	8aca                	mv	s5,s2
    12a8:	4901                	li	s2,0
    12aa:	bd45                	j	115a <vprintf+0x62>
    12ac:	70a6                	ld	ra,104(sp)
    12ae:	7406                	ld	s0,96(sp)
    12b0:	64e6                	ld	s1,88(sp)
    12b2:	6946                	ld	s2,80(sp)
    12b4:	69a6                	ld	s3,72(sp)
    12b6:	6a06                	ld	s4,64(sp)
    12b8:	7ae2                	ld	s5,56(sp)
    12ba:	7b42                	ld	s6,48(sp)
    12bc:	7ba2                	ld	s7,40(sp)
    12be:	7c02                	ld	s8,32(sp)
    12c0:	6ce2                	ld	s9,24(sp)
    12c2:	6d42                	ld	s10,16(sp)
    12c4:	6da2                	ld	s11,8(sp)
    12c6:	6165                	addi	sp,sp,112
    12c8:	8082                	ret

00000000000012ca <fprintf>:
    12ca:	715d                	addi	sp,sp,-80
    12cc:	ec06                	sd	ra,24(sp)
    12ce:	f032                	sd	a2,32(sp)
    12d0:	f436                	sd	a3,40(sp)
    12d2:	f83a                	sd	a4,48(sp)
    12d4:	fc3e                	sd	a5,56(sp)
    12d6:	e0c2                	sd	a6,64(sp)
    12d8:	e4c6                	sd	a7,72(sp)
    12da:	1010                	addi	a2,sp,32
    12dc:	e432                	sd	a2,8(sp)
    12de:	00000097          	auipc	ra,0x0
    12e2:	e1a080e7          	jalr	-486(ra) # 10f8 <vprintf>
    12e6:	60e2                	ld	ra,24(sp)
    12e8:	6161                	addi	sp,sp,80
    12ea:	8082                	ret

00000000000012ec <printf>:
    12ec:	711d                	addi	sp,sp,-96
    12ee:	ec06                	sd	ra,24(sp)
    12f0:	f42e                	sd	a1,40(sp)
    12f2:	f832                	sd	a2,48(sp)
    12f4:	fc36                	sd	a3,56(sp)
    12f6:	e0ba                	sd	a4,64(sp)
    12f8:	e4be                	sd	a5,72(sp)
    12fa:	e8c2                	sd	a6,80(sp)
    12fc:	ecc6                	sd	a7,88(sp)
    12fe:	1030                	addi	a2,sp,40
    1300:	e432                	sd	a2,8(sp)
    1302:	85aa                	mv	a1,a0
    1304:	4505                	li	a0,1
    1306:	00000097          	auipc	ra,0x0
    130a:	df2080e7          	jalr	-526(ra) # 10f8 <vprintf>
    130e:	60e2                	ld	ra,24(sp)
    1310:	6125                	addi	sp,sp,96
    1312:	8082                	ret

0000000000001314 <cksum>:
    1314:	cdb1                	beqz	a1,1370 <cksum+0x5c>
    1316:	00b50833          	add	a6,a0,a1
    131a:	4781                	li	a5,0
    131c:	00002637          	lui	a2,0x2
    1320:	ca860613          	addi	a2,a2,-856 # 1ca8 <crctab>
    1324:	0505                	addi	a0,a0,1
    1326:	0087969b          	slliw	a3,a5,0x8
    132a:	0187d71b          	srliw	a4,a5,0x18
    132e:	fff54783          	lbu	a5,-1(a0)
    1332:	8f3d                	xor	a4,a4,a5
    1334:	1702                	slli	a4,a4,0x20
    1336:	9301                	srli	a4,a4,0x20
    1338:	070a                	slli	a4,a4,0x2
    133a:	9732                	add	a4,a4,a2
    133c:	431c                	lw	a5,0(a4)
    133e:	8fb5                	xor	a5,a5,a3
    1340:	2781                	sext.w	a5,a5
    1342:	fea811e3          	bne	a6,a0,1324 <cksum+0x10>
    1346:	00002637          	lui	a2,0x2
    134a:	ca860613          	addi	a2,a2,-856 # 1ca8 <crctab>
    134e:	0ff5f693          	andi	a3,a1,255
    1352:	81a1                	srli	a1,a1,0x8
    1354:	0087951b          	slliw	a0,a5,0x8
    1358:	0187d71b          	srliw	a4,a5,0x18
    135c:	8f35                	xor	a4,a4,a3
    135e:	070a                	slli	a4,a4,0x2
    1360:	9732                	add	a4,a4,a2
    1362:	431c                	lw	a5,0(a4)
    1364:	8fa9                	xor	a5,a5,a0
    1366:	2781                	sext.w	a5,a5
    1368:	f1fd                	bnez	a1,134e <cksum+0x3a>
    136a:	fff7c513          	not	a0,a5
    136e:	8082                	ret
    1370:	4781                	li	a5,0
    1372:	bfe5                	j	136a <cksum+0x56>

0000000000001374 <swap_bytes>:
    1374:	ce19                	beqz	a2,1392 <swap_bytes+0x1e>
    1376:	87aa                	mv	a5,a0
    1378:	962a                	add	a2,a2,a0
    137a:	0007c703          	lbu	a4,0(a5)
    137e:	0005c683          	lbu	a3,0(a1)
    1382:	00d78023          	sb	a3,0(a5)
    1386:	00e58023          	sb	a4,0(a1)
    138a:	0785                	addi	a5,a5,1
    138c:	0585                	addi	a1,a1,1
    138e:	fec796e3          	bne	a5,a2,137a <swap_bytes+0x6>
    1392:	8082                	ret

0000000000001394 <random_init>:
    1394:	7139                	addi	sp,sp,-64
    1396:	fc06                	sd	ra,56(sp)
    1398:	f822                	sd	s0,48(sp)
    139a:	f426                	sd	s1,40(sp)
    139c:	f04a                	sd	s2,32(sp)
    139e:	ec4e                	sd	s3,24(sp)
    13a0:	e852                	sd	s4,16(sp)
    13a2:	c62a                	sw	a0,12(sp)
    13a4:	000037b7          	lui	a5,0x3
    13a8:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13ac:	eca5                	bnez	s1,1424 <random_init+0x90>
    13ae:	00003737          	lui	a4,0x3
    13b2:	01070913          	addi	s2,a4,16 # 3010 <s>
    13b6:	01070713          	addi	a4,a4,16
    13ba:	87a6                	mv	a5,s1
    13bc:	10000693          	li	a3,256
    13c0:	00f70023          	sb	a5,0(a4)
    13c4:	2785                	addiw	a5,a5,1
    13c6:	0705                	addi	a4,a4,1
    13c8:	fed79ce3          	bne	a5,a3,13c0 <random_init+0x2c>
    13cc:	4401                	li	s0,0
    13ce:	000039b7          	lui	s3,0x3
    13d2:	01098993          	addi	s3,s3,16 # 3010 <s>
    13d6:	10000a13          	li	s4,256
    13da:	0034f793          	andi	a5,s1,3
    13de:	0818                	addi	a4,sp,16
    13e0:	97ba                	add	a5,a5,a4
    13e2:	ffc7c783          	lbu	a5,-4(a5)
    13e6:	00094703          	lbu	a4,0(s2)
    13ea:	9fb9                	addw	a5,a5,a4
    13ec:	9c3d                	addw	s0,s0,a5
    13ee:	0ff47413          	andi	s0,s0,255
    13f2:	4605                	li	a2,1
    13f4:	008985b3          	add	a1,s3,s0
    13f8:	854a                	mv	a0,s2
    13fa:	00000097          	auipc	ra,0x0
    13fe:	f7a080e7          	jalr	-134(ra) # 1374 <swap_bytes>
    1402:	2485                	addiw	s1,s1,1
    1404:	0905                	addi	s2,s2,1
    1406:	fd449ae3          	bne	s1,s4,13da <random_init+0x46>
    140a:	000037b7          	lui	a5,0x3
    140e:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1412:	000037b7          	lui	a5,0x3
    1416:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    141a:	000037b7          	lui	a5,0x3
    141e:	4705                	li	a4,1
    1420:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1424:	70e2                	ld	ra,56(sp)
    1426:	7442                	ld	s0,48(sp)
    1428:	74a2                	ld	s1,40(sp)
    142a:	7902                	ld	s2,32(sp)
    142c:	69e2                	ld	s3,24(sp)
    142e:	6a42                	ld	s4,16(sp)
    1430:	6121                	addi	sp,sp,64
    1432:	8082                	ret

0000000000001434 <random_bytes>:
    1434:	7139                	addi	sp,sp,-64
    1436:	fc06                	sd	ra,56(sp)
    1438:	f822                	sd	s0,48(sp)
    143a:	f426                	sd	s1,40(sp)
    143c:	f04a                	sd	s2,32(sp)
    143e:	ec4e                	sd	s3,24(sp)
    1440:	e852                	sd	s4,16(sp)
    1442:	e456                	sd	s5,8(sp)
    1444:	e05a                	sd	s6,0(sp)
    1446:	892a                	mv	s2,a0
    1448:	8aae                	mv	s5,a1
    144a:	000037b7          	lui	a5,0x3
    144e:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1452:	c3c1                	beqz	a5,14d2 <random_bytes+0x9e>
    1454:	060a8563          	beqz	s5,14be <random_bytes+0x8a>
    1458:	9aca                	add	s5,s5,s2
    145a:	00003a37          	lui	s4,0x3
    145e:	000034b7          	lui	s1,0x3
    1462:	01048493          	addi	s1,s1,16 # 3010 <s>
    1466:	000039b7          	lui	s3,0x3
    146a:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    146e:	2505                	addiw	a0,a0,1
    1470:	0ff57513          	andi	a0,a0,255
    1474:	00aa02a3          	sb	a0,5(s4)
    1478:	00a48b33          	add	s6,s1,a0
    147c:	000b4403          	lbu	s0,0(s6)
    1480:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1484:	9c3d                	addw	s0,s0,a5
    1486:	0ff47413          	andi	s0,s0,255
    148a:	00898223          	sb	s0,4(s3)
    148e:	4605                	li	a2,1
    1490:	008485b3          	add	a1,s1,s0
    1494:	855a                	mv	a0,s6
    1496:	00000097          	auipc	ra,0x0
    149a:	ede080e7          	jalr	-290(ra) # 1374 <swap_bytes>
    149e:	9426                	add	s0,s0,s1
    14a0:	000b4783          	lbu	a5,0(s6)
    14a4:	00044703          	lbu	a4,0(s0)
    14a8:	9fb9                	addw	a5,a5,a4
    14aa:	0ff7f793          	andi	a5,a5,255
    14ae:	97a6                	add	a5,a5,s1
    14b0:	0007c783          	lbu	a5,0(a5)
    14b4:	00f90023          	sb	a5,0(s2)
    14b8:	0905                	addi	s2,s2,1
    14ba:	fb2a98e3          	bne	s5,s2,146a <random_bytes+0x36>
    14be:	70e2                	ld	ra,56(sp)
    14c0:	7442                	ld	s0,48(sp)
    14c2:	74a2                	ld	s1,40(sp)
    14c4:	7902                	ld	s2,32(sp)
    14c6:	69e2                	ld	s3,24(sp)
    14c8:	6a42                	ld	s4,16(sp)
    14ca:	6aa2                	ld	s5,8(sp)
    14cc:	6b02                	ld	s6,0(sp)
    14ce:	6121                	addi	sp,sp,64
    14d0:	8082                	ret
    14d2:	4501                	li	a0,0
    14d4:	00000097          	auipc	ra,0x0
    14d8:	ec0080e7          	jalr	-320(ra) # 1394 <random_init>
    14dc:	bfa5                	j	1454 <random_bytes+0x20>

00000000000014de <random_ulong>:
    14de:	1101                	addi	sp,sp,-32
    14e0:	ec06                	sd	ra,24(sp)
    14e2:	45a1                	li	a1,8
    14e4:	0028                	addi	a0,sp,8
    14e6:	00000097          	auipc	ra,0x0
    14ea:	f4e080e7          	jalr	-178(ra) # 1434 <random_bytes>
    14ee:	6522                	ld	a0,8(sp)
    14f0:	60e2                	ld	ra,24(sp)
    14f2:	6105                	addi	sp,sp,32
    14f4:	8082                	ret

00000000000014f6 <shuffle>:
    14f6:	c9b9                	beqz	a1,154c <shuffle+0x56>
    14f8:	7179                	addi	sp,sp,-48
    14fa:	f406                	sd	ra,40(sp)
    14fc:	f022                	sd	s0,32(sp)
    14fe:	ec26                	sd	s1,24(sp)
    1500:	e84a                	sd	s2,16(sp)
    1502:	e44e                	sd	s3,8(sp)
    1504:	e052                	sd	s4,0(sp)
    1506:	8a2a                	mv	s4,a0
    1508:	89ae                	mv	s3,a1
    150a:	84b2                	mv	s1,a2
    150c:	892a                	mv	s2,a0
    150e:	4401                	li	s0,0
    1510:	00000097          	auipc	ra,0x0
    1514:	fce080e7          	jalr	-50(ra) # 14de <random_ulong>
    1518:	408985b3          	sub	a1,s3,s0
    151c:	02b575b3          	remu	a1,a0,a1
    1520:	95a2                	add	a1,a1,s0
    1522:	029585b3          	mul	a1,a1,s1
    1526:	8626                	mv	a2,s1
    1528:	95d2                	add	a1,a1,s4
    152a:	854a                	mv	a0,s2
    152c:	00000097          	auipc	ra,0x0
    1530:	e48080e7          	jalr	-440(ra) # 1374 <swap_bytes>
    1534:	0405                	addi	s0,s0,1
    1536:	9926                	add	s2,s2,s1
    1538:	fc899ce3          	bne	s3,s0,1510 <shuffle+0x1a>
    153c:	70a2                	ld	ra,40(sp)
    153e:	7402                	ld	s0,32(sp)
    1540:	64e2                	ld	s1,24(sp)
    1542:	6942                	ld	s2,16(sp)
    1544:	69a2                	ld	s3,8(sp)
    1546:	6a02                	ld	s4,0(sp)
    1548:	6145                	addi	sp,sp,48
    154a:	8082                	ret
    154c:	8082                	ret

000000000000154e <arc4_init>:
    154e:	100500a3          	sb	zero,257(a0)
    1552:	10050023          	sb	zero,256(a0)
    1556:	4781                	li	a5,0
    1558:	10000693          	li	a3,256
    155c:	00f50733          	add	a4,a0,a5
    1560:	00f70023          	sb	a5,0(a4)
    1564:	0785                	addi	a5,a5,1
    1566:	fed79be3          	bne	a5,a3,155c <arc4_init+0xe>
    156a:	86aa                	mv	a3,a0
    156c:	10050e13          	addi	t3,a0,256
    1570:	4701                	li	a4,0
    1572:	4781                	li	a5,0
    1574:	0006c883          	lbu	a7,0(a3)
    1578:	00f58833          	add	a6,a1,a5
    157c:	00084803          	lbu	a6,0(a6)
    1580:	00e8873b          	addw	a4,a7,a4
    1584:	00e8073b          	addw	a4,a6,a4
    1588:	0ff77713          	andi	a4,a4,255
    158c:	00e50833          	add	a6,a0,a4
    1590:	00084303          	lbu	t1,0(a6)
    1594:	00668023          	sb	t1,0(a3)
    1598:	01180023          	sb	a7,0(a6)
    159c:	0785                	addi	a5,a5,1
    159e:	00c7b833          	sltu	a6,a5,a2
    15a2:	41000833          	neg	a6,a6
    15a6:	0107f7b3          	and	a5,a5,a6
    15aa:	0685                	addi	a3,a3,1
    15ac:	fdc694e3          	bne	a3,t3,1574 <arc4_init+0x26>
    15b0:	8082                	ret

00000000000015b2 <arc4_crypt>:
    15b2:	10054e03          	lbu	t3,256(a0)
    15b6:	10154803          	lbu	a6,257(a0)
    15ba:	fff60e93          	addi	t4,a2,-1
    15be:	c225                	beqz	a2,161e <arc4_crypt+0x6c>
    15c0:	00c588b3          	add	a7,a1,a2
    15c4:	86ae                	mv	a3,a1
    15c6:	001e031b          	addiw	t1,t3,1
    15ca:	40b3033b          	subw	t1,t1,a1
    15ce:	00d3073b          	addw	a4,t1,a3
    15d2:	0ff77713          	andi	a4,a4,255
    15d6:	972a                	add	a4,a4,a0
    15d8:	00074603          	lbu	a2,0(a4)
    15dc:	0106083b          	addw	a6,a2,a6
    15e0:	0ff87813          	andi	a6,a6,255
    15e4:	010507b3          	add	a5,a0,a6
    15e8:	0007c583          	lbu	a1,0(a5)
    15ec:	00b70023          	sb	a1,0(a4)
    15f0:	00c78023          	sb	a2,0(a5)
    15f4:	0685                	addi	a3,a3,1
    15f6:	00074783          	lbu	a5,0(a4)
    15fa:	9fb1                	addw	a5,a5,a2
    15fc:	0ff7f793          	andi	a5,a5,255
    1600:	97aa                	add	a5,a5,a0
    1602:	0007c783          	lbu	a5,0(a5)
    1606:	fff6c703          	lbu	a4,-1(a3)
    160a:	8fb9                	xor	a5,a5,a4
    160c:	fef68fa3          	sb	a5,-1(a3)
    1610:	fb169fe3          	bne	a3,a7,15ce <arc4_crypt+0x1c>
    1614:	2e85                	addiw	t4,t4,1
    1616:	01ce8e3b          	addw	t3,t4,t3
    161a:	0ffe7e13          	andi	t3,t3,255
    161e:	11c50023          	sb	t3,256(a0)
    1622:	110500a3          	sb	a6,257(a0)
    1626:	8082                	ret

0000000000001628 <_main>:
    1628:	1141                	addi	sp,sp,-16
    162a:	e406                	sd	ra,8(sp)
    162c:	00000097          	auipc	ra,0x0
    1630:	9d4080e7          	jalr	-1580(ra) # 1000 <main>
    1634:	4501                	li	a0,0
    1636:	00000097          	auipc	ra,0x0
    163a:	578080e7          	jalr	1400(ra) # 1bae <exit>
    163e:	60a2                	ld	ra,8(sp)
    1640:	0141                	addi	sp,sp,16
    1642:	8082                	ret

0000000000001644 <strcmp>:
    1644:	00054783          	lbu	a5,0(a0)
    1648:	cb91                	beqz	a5,165c <strcmp+0x18>
    164a:	0005c703          	lbu	a4,0(a1)
    164e:	00f71763          	bne	a4,a5,165c <strcmp+0x18>
    1652:	0505                	addi	a0,a0,1
    1654:	0585                	addi	a1,a1,1
    1656:	00054783          	lbu	a5,0(a0)
    165a:	fbe5                	bnez	a5,164a <strcmp+0x6>
    165c:	0005c503          	lbu	a0,0(a1)
    1660:	40a7853b          	subw	a0,a5,a0
    1664:	8082                	ret

0000000000001666 <strcpy>:
    1666:	87aa                	mv	a5,a0
    1668:	0585                	addi	a1,a1,1
    166a:	0785                	addi	a5,a5,1
    166c:	fff5c703          	lbu	a4,-1(a1)
    1670:	fee78fa3          	sb	a4,-1(a5)
    1674:	fb75                	bnez	a4,1668 <strcpy+0x2>
    1676:	8082                	ret

0000000000001678 <strlen>:
    1678:	00054783          	lbu	a5,0(a0)
    167c:	cf81                	beqz	a5,1694 <strlen+0x1c>
    167e:	0505                	addi	a0,a0,1
    1680:	87aa                	mv	a5,a0
    1682:	4685                	li	a3,1
    1684:	9e89                	subw	a3,a3,a0
    1686:	00f6853b          	addw	a0,a3,a5
    168a:	0785                	addi	a5,a5,1
    168c:	fff7c703          	lbu	a4,-1(a5)
    1690:	fb7d                	bnez	a4,1686 <strlen+0xe>
    1692:	8082                	ret
    1694:	4501                	li	a0,0
    1696:	8082                	ret

0000000000001698 <memset>:
    1698:	ca19                	beqz	a2,16ae <memset+0x16>
    169a:	87aa                	mv	a5,a0
    169c:	1602                	slli	a2,a2,0x20
    169e:	9201                	srli	a2,a2,0x20
    16a0:	00a60733          	add	a4,a2,a0
    16a4:	00b78023          	sb	a1,0(a5)
    16a8:	0785                	addi	a5,a5,1
    16aa:	fee79de3          	bne	a5,a4,16a4 <memset+0xc>
    16ae:	8082                	ret

00000000000016b0 <memcmp>:
    16b0:	1101                	addi	sp,sp,-32
    16b2:	ec06                	sd	ra,24(sp)
    16b4:	e822                	sd	s0,16(sp)
    16b6:	e426                	sd	s1,8(sp)
    16b8:	e04a                	sd	s2,0(sp)
    16ba:	892a                	mv	s2,a0
    16bc:	842e                	mv	s0,a1
    16be:	84b2                	mv	s1,a2
    16c0:	c915                	beqz	a0,16f4 <memcmp+0x44>
    16c2:	c5ad                	beqz	a1,172c <memcmp+0x7c>
    16c4:	fff60713          	addi	a4,a2,-1
    16c8:	c645                	beqz	a2,1770 <memcmp+0xc0>
    16ca:	87ca                	mv	a5,s2
    16cc:	00190613          	addi	a2,s2,1
    16d0:	963a                	add	a2,a2,a4
    16d2:	0007c683          	lbu	a3,0(a5)
    16d6:	00044703          	lbu	a4,0(s0)
    16da:	08e69463          	bne	a3,a4,1762 <memcmp+0xb2>
    16de:	0785                	addi	a5,a5,1
    16e0:	0405                	addi	s0,s0,1
    16e2:	fec798e3          	bne	a5,a2,16d2 <memcmp+0x22>
    16e6:	4501                	li	a0,0
    16e8:	60e2                	ld	ra,24(sp)
    16ea:	6442                	ld	s0,16(sp)
    16ec:	64a2                	ld	s1,8(sp)
    16ee:	6902                	ld	s2,0(sp)
    16f0:	6105                	addi	sp,sp,32
    16f2:	8082                	ret
    16f4:	4501                	li	a0,0
    16f6:	da6d                	beqz	a2,16e8 <memcmp+0x38>
    16f8:	03200693          	li	a3,50
    16fc:	00002637          	lui	a2,0x2
    1700:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    1704:	000025b7          	lui	a1,0x2
    1708:	0b858593          	addi	a1,a1,184 # 20b8 <crctab+0x410>
    170c:	4509                	li	a0,2
    170e:	00000097          	auipc	ra,0x0
    1712:	bbc080e7          	jalr	-1092(ra) # 12ca <fprintf>
    1716:	650d                	lui	a0,0x3
    1718:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    171c:	00000097          	auipc	ra,0x0
    1720:	492080e7          	jalr	1170(ra) # 1bae <exit>
    1724:	fff48713          	addi	a4,s1,-1
    1728:	f04d                	bnez	s0,16ca <memcmp+0x1a>
    172a:	a011                	j	172e <memcmp+0x7e>
    172c:	c221                	beqz	a2,176c <memcmp+0xbc>
    172e:	03300693          	li	a3,51
    1732:	00002637          	lui	a2,0x2
    1736:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    173a:	000025b7          	lui	a1,0x2
    173e:	10058593          	addi	a1,a1,256 # 2100 <crctab+0x458>
    1742:	4509                	li	a0,2
    1744:	00000097          	auipc	ra,0x0
    1748:	b86080e7          	jalr	-1146(ra) # 12ca <fprintf>
    174c:	650d                	lui	a0,0x3
    174e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1752:	00000097          	auipc	ra,0x0
    1756:	45c080e7          	jalr	1116(ra) # 1bae <exit>
    175a:	fff48713          	addi	a4,s1,-1
    175e:	4401                	li	s0,0
    1760:	b7ad                	j	16ca <memcmp+0x1a>
    1762:	4505                	li	a0,1
    1764:	f8d762e3          	bltu	a4,a3,16e8 <memcmp+0x38>
    1768:	557d                	li	a0,-1
    176a:	bfbd                	j	16e8 <memcmp+0x38>
    176c:	4501                	li	a0,0
    176e:	bfad                	j	16e8 <memcmp+0x38>
    1770:	4501                	li	a0,0
    1772:	bf9d                	j	16e8 <memcmp+0x38>

0000000000001774 <memcpy>:
    1774:	1101                	addi	sp,sp,-32
    1776:	ec06                	sd	ra,24(sp)
    1778:	e822                	sd	s0,16(sp)
    177a:	e426                	sd	s1,8(sp)
    177c:	e04a                	sd	s2,0(sp)
    177e:	84aa                	mv	s1,a0
    1780:	842e                	mv	s0,a1
    1782:	8932                	mv	s2,a2
    1784:	c51d                	beqz	a0,17b2 <memcpy+0x3e>
    1786:	c1ad                	beqz	a1,17e8 <memcpy+0x74>
    1788:	fff60693          	addi	a3,a2,-1
    178c:	ce01                	beqz	a2,17a4 <memcpy+0x30>
    178e:	0685                	addi	a3,a3,1
    1790:	96a6                	add	a3,a3,s1
    1792:	87a6                	mv	a5,s1
    1794:	0405                	addi	s0,s0,1
    1796:	0785                	addi	a5,a5,1
    1798:	fff44703          	lbu	a4,-1(s0)
    179c:	fee78fa3          	sb	a4,-1(a5)
    17a0:	fed79ae3          	bne	a5,a3,1794 <memcpy+0x20>
    17a4:	8526                	mv	a0,s1
    17a6:	60e2                	ld	ra,24(sp)
    17a8:	6442                	ld	s0,16(sp)
    17aa:	64a2                	ld	s1,8(sp)
    17ac:	6902                	ld	s2,0(sp)
    17ae:	6105                	addi	sp,sp,32
    17b0:	8082                	ret
    17b2:	da6d                	beqz	a2,17a4 <memcpy+0x30>
    17b4:	04000693          	li	a3,64
    17b8:	00002637          	lui	a2,0x2
    17bc:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    17c0:	000025b7          	lui	a1,0x2
    17c4:	14858593          	addi	a1,a1,328 # 2148 <crctab+0x4a0>
    17c8:	4509                	li	a0,2
    17ca:	00000097          	auipc	ra,0x0
    17ce:	b00080e7          	jalr	-1280(ra) # 12ca <fprintf>
    17d2:	650d                	lui	a0,0x3
    17d4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17d8:	00000097          	auipc	ra,0x0
    17dc:	3d6080e7          	jalr	982(ra) # 1bae <exit>
    17e0:	fff90693          	addi	a3,s2,-1
    17e4:	f44d                	bnez	s0,178e <memcpy+0x1a>
    17e6:	a011                	j	17ea <memcpy+0x76>
    17e8:	de55                	beqz	a2,17a4 <memcpy+0x30>
    17ea:	04100693          	li	a3,65
    17ee:	00002637          	lui	a2,0x2
    17f2:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    17f6:	000025b7          	lui	a1,0x2
    17fa:	19058593          	addi	a1,a1,400 # 2190 <crctab+0x4e8>
    17fe:	4509                	li	a0,2
    1800:	00000097          	auipc	ra,0x0
    1804:	aca080e7          	jalr	-1334(ra) # 12ca <fprintf>
    1808:	650d                	lui	a0,0x3
    180a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    180e:	00000097          	auipc	ra,0x0
    1812:	3a0080e7          	jalr	928(ra) # 1bae <exit>
    1816:	fff90693          	addi	a3,s2,-1
    181a:	4401                	li	s0,0
    181c:	bf8d                	j	178e <memcpy+0x1a>

000000000000181e <itoa>:
    181e:	1101                	addi	sp,sp,-32
    1820:	ec06                	sd	ra,24(sp)
    1822:	e822                	sd	s0,16(sp)
    1824:	e426                	sd	s1,8(sp)
    1826:	842a                	mv	s0,a0
    1828:	41f5d71b          	sraiw	a4,a1,0x1f
    182c:	00e5c7b3          	xor	a5,a1,a4
    1830:	9f99                	subw	a5,a5,a4
    1832:	84aa                	mv	s1,a0
    1834:	862a                	mv	a2,a0
    1836:	4681                	li	a3,0
    1838:	4529                	li	a0,10
    183a:	4825                	li	a6,9
    183c:	88b6                	mv	a7,a3
    183e:	2685                	addiw	a3,a3,1
    1840:	02a7e73b          	remw	a4,a5,a0
    1844:	0307071b          	addiw	a4,a4,48
    1848:	00e60023          	sb	a4,0(a2)
    184c:	873e                	mv	a4,a5
    184e:	02a7c7bb          	divw	a5,a5,a0
    1852:	0605                	addi	a2,a2,1
    1854:	fee844e3          	blt	a6,a4,183c <itoa+0x1e>
    1858:	0405c863          	bltz	a1,18a8 <itoa+0x8a>
    185c:	96a2                	add	a3,a3,s0
    185e:	00068023          	sb	zero,0(a3)
    1862:	8522                	mv	a0,s0
    1864:	00000097          	auipc	ra,0x0
    1868:	e14080e7          	jalr	-492(ra) # 1678 <strlen>
    186c:	fff5071b          	addiw	a4,a0,-1
    1870:	02e05763          	blez	a4,189e <itoa+0x80>
    1874:	9722                	add	a4,a4,s0
    1876:	4681                	li	a3,0
    1878:	0004c783          	lbu	a5,0(s1)
    187c:	00074603          	lbu	a2,0(a4)
    1880:	00c48023          	sb	a2,0(s1)
    1884:	00f70023          	sb	a5,0(a4)
    1888:	0016879b          	addiw	a5,a3,1
    188c:	0007869b          	sext.w	a3,a5
    1890:	0485                	addi	s1,s1,1
    1892:	177d                	addi	a4,a4,-1
    1894:	fff7c793          	not	a5,a5
    1898:	9fa9                	addw	a5,a5,a0
    189a:	fcf6cfe3          	blt	a3,a5,1878 <itoa+0x5a>
    189e:	60e2                	ld	ra,24(sp)
    18a0:	6442                	ld	s0,16(sp)
    18a2:	64a2                	ld	s1,8(sp)
    18a4:	6105                	addi	sp,sp,32
    18a6:	8082                	ret
    18a8:	96a2                	add	a3,a3,s0
    18aa:	02d00793          	li	a5,45
    18ae:	00f68023          	sb	a5,0(a3)
    18b2:	0028869b          	addiw	a3,a7,2
    18b6:	b75d                	j	185c <itoa+0x3e>

00000000000018b8 <atoi>:
    18b8:	00054783          	lbu	a5,0(a0)
    18bc:	02000713          	li	a4,32
    18c0:	00e79763          	bne	a5,a4,18ce <atoi+0x16>
    18c4:	0505                	addi	a0,a0,1
    18c6:	00054783          	lbu	a5,0(a0)
    18ca:	fee78de3          	beq	a5,a4,18c4 <atoi+0xc>
    18ce:	02b00713          	li	a4,43
    18d2:	04e78663          	beq	a5,a4,191e <atoi+0x66>
    18d6:	02d00713          	li	a4,45
    18da:	4805                	li	a6,1
    18dc:	04e78463          	beq	a5,a4,1924 <atoi+0x6c>
    18e0:	00054683          	lbu	a3,0(a0)
    18e4:	fd06879b          	addiw	a5,a3,-48
    18e8:	0ff7f793          	andi	a5,a5,255
    18ec:	4725                	li	a4,9
    18ee:	02f76e63          	bltu	a4,a5,192a <atoi+0x72>
    18f2:	4601                	li	a2,0
    18f4:	45a5                	li	a1,9
    18f6:	0505                	addi	a0,a0,1
    18f8:	0026179b          	slliw	a5,a2,0x2
    18fc:	9fb1                	addw	a5,a5,a2
    18fe:	0017979b          	slliw	a5,a5,0x1
    1902:	9fb5                	addw	a5,a5,a3
    1904:	fd07861b          	addiw	a2,a5,-48
    1908:	00054683          	lbu	a3,0(a0)
    190c:	fd06871b          	addiw	a4,a3,-48
    1910:	0ff77713          	andi	a4,a4,255
    1914:	fee5f1e3          	bgeu	a1,a4,18f6 <atoi+0x3e>
    1918:	02c8053b          	mulw	a0,a6,a2
    191c:	8082                	ret
    191e:	0505                	addi	a0,a0,1
    1920:	4805                	li	a6,1
    1922:	bf7d                	j	18e0 <atoi+0x28>
    1924:	0505                	addi	a0,a0,1
    1926:	587d                	li	a6,-1
    1928:	bf65                	j	18e0 <atoi+0x28>
    192a:	4601                	li	a2,0
    192c:	b7f5                	j	1918 <atoi+0x60>

000000000000192e <check_file_handle>:
    192e:	d8010113          	addi	sp,sp,-640
    1932:	26113c23          	sd	ra,632(sp)
    1936:	26813823          	sd	s0,624(sp)
    193a:	26913423          	sd	s1,616(sp)
    193e:	27213023          	sd	s2,608(sp)
    1942:	25313c23          	sd	s3,600(sp)
    1946:	25413823          	sd	s4,592(sp)
    194a:	25513423          	sd	s5,584(sp)
    194e:	25613023          	sd	s6,576(sp)
    1952:	23713c23          	sd	s7,568(sp)
    1956:	23813823          	sd	s8,560(sp)
    195a:	23913423          	sd	s9,552(sp)
    195e:	23a13023          	sd	s10,544(sp)
    1962:	21b13c23          	sd	s11,536(sp)
    1966:	8baa                	mv	s7,a0
    1968:	8a2e                	mv	s4,a1
    196a:	8c32                	mv	s8,a2
    196c:	89b6                	mv	s3,a3
    196e:	040c                	addi	a1,sp,512
    1970:	00000097          	auipc	ra,0x0
    1974:	28e080e7          	jalr	654(ra) # 1bfe <fstat>
    1978:	20813603          	ld	a2,520(sp)
    197c:	03361163          	bne	a2,s3,199e <check_file_handle+0x70>
    1980:	06098763          	beqz	s3,19ee <check_file_handle+0xc0>
    1984:	4901                	li	s2,0
    1986:	20000a93          	li	s5,512
    198a:	00002cb7          	lui	s9,0x2
    198e:	00002db7          	lui	s11,0x2
    1992:	6b0d                	lui	s6,0x3
    1994:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1998:	00002d37          	lui	s10,0x2
    199c:	aa39                	j	1aba <check_file_handle+0x18c>
    199e:	86ce                	mv	a3,s3
    19a0:	85d2                	mv	a1,s4
    19a2:	00002537          	lui	a0,0x2
    19a6:	1d850513          	addi	a0,a0,472 # 21d8 <crctab+0x530>
    19aa:	00000097          	auipc	ra,0x0
    19ae:	942080e7          	jalr	-1726(ra) # 12ec <printf>
    19b2:	fc0999e3          	bnez	s3,1984 <check_file_handle+0x56>
    19b6:	20813683          	ld	a3,520(sp)
    19ba:	03368a63          	beq	a3,s3,19ee <check_file_handle+0xc0>
    19be:	0a600813          	li	a6,166
    19c2:	000027b7          	lui	a5,0x2
    19c6:	0a878793          	addi	a5,a5,168 # 20a8 <crctab+0x400>
    19ca:	874e                	mv	a4,s3
    19cc:	8652                	mv	a2,s4
    19ce:	000025b7          	lui	a1,0x2
    19d2:	2a858593          	addi	a1,a1,680 # 22a8 <crctab+0x600>
    19d6:	4509                	li	a0,2
    19d8:	00000097          	auipc	ra,0x0
    19dc:	8f2080e7          	jalr	-1806(ra) # 12ca <fprintf>
    19e0:	650d                	lui	a0,0x3
    19e2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19e6:	00000097          	auipc	ra,0x0
    19ea:	1c8080e7          	jalr	456(ra) # 1bae <exit>
    19ee:	85d2                	mv	a1,s4
    19f0:	00002537          	lui	a0,0x2
    19f4:	2f050513          	addi	a0,a0,752 # 22f0 <crctab+0x648>
    19f8:	00000097          	auipc	ra,0x0
    19fc:	8f4080e7          	jalr	-1804(ra) # 12ec <printf>
    1a00:	27813083          	ld	ra,632(sp)
    1a04:	27013403          	ld	s0,624(sp)
    1a08:	26813483          	ld	s1,616(sp)
    1a0c:	26013903          	ld	s2,608(sp)
    1a10:	25813983          	ld	s3,600(sp)
    1a14:	25013a03          	ld	s4,592(sp)
    1a18:	24813a83          	ld	s5,584(sp)
    1a1c:	24013b03          	ld	s6,576(sp)
    1a20:	23813b83          	ld	s7,568(sp)
    1a24:	23013c03          	ld	s8,560(sp)
    1a28:	22813c83          	ld	s9,552(sp)
    1a2c:	22013d03          	ld	s10,544(sp)
    1a30:	21813d83          	ld	s11,536(sp)
    1a34:	28010113          	addi	sp,sp,640
    1a38:	8082                	ret
    1a3a:	09d00893          	li	a7,157
    1a3e:	0a8c8813          	addi	a6,s9,168 # 20a8 <crctab+0x400>
    1a42:	87aa                	mv	a5,a0
    1a44:	8752                	mv	a4,s4
    1a46:	86ca                	mv	a3,s2
    1a48:	8622                	mv	a2,s0
    1a4a:	208d8593          	addi	a1,s11,520 # 2208 <crctab+0x560>
    1a4e:	4509                	li	a0,2
    1a50:	00000097          	auipc	ra,0x0
    1a54:	87a080e7          	jalr	-1926(ra) # 12ca <fprintf>
    1a58:	855a                	mv	a0,s6
    1a5a:	00000097          	auipc	ra,0x0
    1a5e:	154080e7          	jalr	340(ra) # 1bae <exit>
    1a62:	a89d                	j	1ad8 <check_file_handle+0x1aa>
    1a64:	00160593          	addi	a1,a2,1
    1a68:	0285f163          	bgeu	a1,s0,1a8a <check_file_handle+0x15c>
    1a6c:	00c10733          	add	a4,sp,a2
    1a70:	00b487b3          	add	a5,s1,a1
    1a74:	00174683          	lbu	a3,1(a4)
    1a78:	0007c783          	lbu	a5,0(a5)
    1a7c:	00f68763          	beq	a3,a5,1a8a <check_file_handle+0x15c>
    1a80:	0585                	addi	a1,a1,1
    1a82:	0705                	addi	a4,a4,1
    1a84:	feb416e3          	bne	s0,a1,1a70 <check_file_handle+0x142>
    1a88:	85a2                	mv	a1,s0
    1a8a:	08100813          	li	a6,129
    1a8e:	0a8c8793          	addi	a5,s9,168
    1a92:	8752                	mv	a4,s4
    1a94:	012606b3          	add	a3,a2,s2
    1a98:	40c58633          	sub	a2,a1,a2
    1a9c:	250d0593          	addi	a1,s10,592 # 2250 <crctab+0x5a8>
    1aa0:	4509                	li	a0,2
    1aa2:	00000097          	auipc	ra,0x0
    1aa6:	828080e7          	jalr	-2008(ra) # 12ca <fprintf>
    1aaa:	855a                	mv	a0,s6
    1aac:	00000097          	auipc	ra,0x0
    1ab0:	102080e7          	jalr	258(ra) # 1bae <exit>
    1ab4:	9922                	add	s2,s2,s0
    1ab6:	f13970e3          	bgeu	s2,s3,19b6 <check_file_handle+0x88>
    1aba:	41298433          	sub	s0,s3,s2
    1abe:	008af363          	bgeu	s5,s0,1ac4 <check_file_handle+0x196>
    1ac2:	8456                	mv	s0,s5
    1ac4:	0004061b          	sext.w	a2,s0
    1ac8:	858a                	mv	a1,sp
    1aca:	855e                	mv	a0,s7
    1acc:	00000097          	auipc	ra,0x0
    1ad0:	10a080e7          	jalr	266(ra) # 1bd6 <read>
    1ad4:	f68513e3          	bne	a0,s0,1a3a <check_file_handle+0x10c>
    1ad8:	012c04b3          	add	s1,s8,s2
    1adc:	8622                	mv	a2,s0
    1ade:	85a6                	mv	a1,s1
    1ae0:	850a                	mv	a0,sp
    1ae2:	00000097          	auipc	ra,0x0
    1ae6:	bce080e7          	jalr	-1074(ra) # 16b0 <memcmp>
    1aea:	d569                	beqz	a0,1ab4 <check_file_handle+0x186>
    1aec:	03298163          	beq	s3,s2,1b0e <check_file_handle+0x1e0>
    1af0:	870a                	mv	a4,sp
    1af2:	4601                	li	a2,0
    1af4:	00c487b3          	add	a5,s1,a2
    1af8:	00074683          	lbu	a3,0(a4)
    1afc:	0007c783          	lbu	a5,0(a5)
    1b00:	f6f692e3          	bne	a3,a5,1a64 <check_file_handle+0x136>
    1b04:	0605                	addi	a2,a2,1
    1b06:	0705                	addi	a4,a4,1
    1b08:	fe8666e3          	bltu	a2,s0,1af4 <check_file_handle+0x1c6>
    1b0c:	bfa1                	j	1a64 <check_file_handle+0x136>
    1b0e:	4601                	li	a2,0
    1b10:	4585                	li	a1,1
    1b12:	bfa5                	j	1a8a <check_file_handle+0x15c>

0000000000001b14 <check_file>:
    1b14:	7179                	addi	sp,sp,-48
    1b16:	f406                	sd	ra,40(sp)
    1b18:	f022                	sd	s0,32(sp)
    1b1a:	ec26                	sd	s1,24(sp)
    1b1c:	e84a                	sd	s2,16(sp)
    1b1e:	e44e                	sd	s3,8(sp)
    1b20:	84aa                	mv	s1,a0
    1b22:	892e                	mv	s2,a1
    1b24:	89b2                	mv	s3,a2
    1b26:	4581                	li	a1,0
    1b28:	00000097          	auipc	ra,0x0
    1b2c:	0a6080e7          	jalr	166(ra) # 1bce <open>
    1b30:	842a                	mv	s0,a0
    1b32:	4789                	li	a5,2
    1b34:	02a7df63          	bge	a5,a0,1b72 <check_file+0x5e>
    1b38:	86ce                	mv	a3,s3
    1b3a:	864a                	mv	a2,s2
    1b3c:	85a6                	mv	a1,s1
    1b3e:	8522                	mv	a0,s0
    1b40:	00000097          	auipc	ra,0x0
    1b44:	dee080e7          	jalr	-530(ra) # 192e <check_file_handle>
    1b48:	85a6                	mv	a1,s1
    1b4a:	00002537          	lui	a0,0x2
    1b4e:	37850513          	addi	a0,a0,888 # 2378 <crctab+0x6d0>
    1b52:	fffff097          	auipc	ra,0xfffff
    1b56:	79a080e7          	jalr	1946(ra) # 12ec <printf>
    1b5a:	8522                	mv	a0,s0
    1b5c:	00000097          	auipc	ra,0x0
    1b60:	09a080e7          	jalr	154(ra) # 1bf6 <close>
    1b64:	70a2                	ld	ra,40(sp)
    1b66:	7402                	ld	s0,32(sp)
    1b68:	64e2                	ld	s1,24(sp)
    1b6a:	6942                	ld	s2,16(sp)
    1b6c:	69a2                	ld	s3,8(sp)
    1b6e:	6145                	addi	sp,sp,48
    1b70:	8082                	ret
    1b72:	0ae00713          	li	a4,174
    1b76:	000026b7          	lui	a3,0x2
    1b7a:	0a868693          	addi	a3,a3,168 # 20a8 <crctab+0x400>
    1b7e:	8626                	mv	a2,s1
    1b80:	000025b7          	lui	a1,0x2
    1b84:	31058593          	addi	a1,a1,784 # 2310 <crctab+0x668>
    1b88:	4509                	li	a0,2
    1b8a:	fffff097          	auipc	ra,0xfffff
    1b8e:	740080e7          	jalr	1856(ra) # 12ca <fprintf>
    1b92:	650d                	lui	a0,0x3
    1b94:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b98:	00000097          	auipc	ra,0x0
    1b9c:	016080e7          	jalr	22(ra) # 1bae <exit>
    1ba0:	bf61                	j	1b38 <check_file+0x24>

0000000000001ba2 <r_sp>:
    1ba2:	850a                	mv	a0,sp
    1ba4:	8082                	ret

0000000000001ba6 <halt>:
    1ba6:	4885                	li	a7,1
    1ba8:	00000073          	ecall
    1bac:	8082                	ret

0000000000001bae <exit>:
    1bae:	4889                	li	a7,2
    1bb0:	00000073          	ecall
    1bb4:	8082                	ret

0000000000001bb6 <exec>:
    1bb6:	488d                	li	a7,3
    1bb8:	00000073          	ecall
    1bbc:	8082                	ret

0000000000001bbe <wait>:
    1bbe:	4891                	li	a7,4
    1bc0:	00000073          	ecall
    1bc4:	8082                	ret

0000000000001bc6 <remove>:
    1bc6:	4895                	li	a7,5
    1bc8:	00000073          	ecall
    1bcc:	8082                	ret

0000000000001bce <open>:
    1bce:	4899                	li	a7,6
    1bd0:	00000073          	ecall
    1bd4:	8082                	ret

0000000000001bd6 <read>:
    1bd6:	489d                	li	a7,7
    1bd8:	00000073          	ecall
    1bdc:	8082                	ret

0000000000001bde <write>:
    1bde:	48a1                	li	a7,8
    1be0:	00000073          	ecall
    1be4:	8082                	ret

0000000000001be6 <seek>:
    1be6:	48a5                	li	a7,9
    1be8:	00000073          	ecall
    1bec:	8082                	ret

0000000000001bee <tell>:
    1bee:	48a9                	li	a7,10
    1bf0:	00000073          	ecall
    1bf4:	8082                	ret

0000000000001bf6 <close>:
    1bf6:	48ad                	li	a7,11
    1bf8:	00000073          	ecall
    1bfc:	8082                	ret

0000000000001bfe <fstat>:
    1bfe:	48b1                	li	a7,12
    1c00:	00000073          	ecall
    1c04:	8082                	ret

0000000000001c06 <mmap>:
    1c06:	48b5                	li	a7,13
    1c08:	00000073          	ecall
    1c0c:	8082                	ret

0000000000001c0e <munmap>:
    1c0e:	48b9                	li	a7,14
    1c10:	00000073          	ecall
    1c14:	8082                	ret

0000000000001c16 <chdir>:
    1c16:	48bd                	li	a7,15
    1c18:	00000073          	ecall
    1c1c:	8082                	ret

0000000000001c1e <mkdir>:
    1c1e:	48c1                	li	a7,16
    1c20:	00000073          	ecall
    1c24:	8082                	ret
