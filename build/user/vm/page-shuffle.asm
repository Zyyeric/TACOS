
build/user/vm/page-shuffle:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7139                	addi	sp,sp,-64
    1002:	fc06                	sd	ra,56(sp)
    1004:	f822                	sd	s0,48(sp)
    1006:	f426                	sd	s1,40(sp)
    1008:	f04a                	sd	s2,32(sp)
    100a:	ec4e                	sd	s3,24(sp)
    100c:	e852                	sd	s4,16(sp)
    100e:	e456                	sd	s5,8(sp)
    1010:	00003737          	lui	a4,0x3
    1014:	05070713          	addi	a4,a4,80 # 3050 <buf>
    1018:	4781                	li	a5,0
    101a:	000206b7          	lui	a3,0x20
    101e:	00f70023          	sb	a5,0(a4)
    1022:	0785                	addi	a5,a5,1
    1024:	0705                	addi	a4,a4,1
    1026:	fed79ce3          	bne	a5,a3,101e <main+0x1e>
    102a:	000205b7          	lui	a1,0x20
    102e:	00003537          	lui	a0,0x3
    1032:	05050513          	addi	a0,a0,80 # 3050 <buf>
    1036:	00000097          	auipc	ra,0x0
    103a:	39a080e7          	jalr	922(ra) # 13d0 <cksum>
    103e:	0005079b          	sext.w	a5,a0
    1042:	00003737          	lui	a4,0x3
    1046:	00072703          	lw	a4,0(a4) # 3000 <_init>
    104a:	02f71263          	bne	a4,a5,106e <main+0x6e>
    104e:	00003437          	lui	s0,0x3
    1052:	01040413          	addi	s0,s0,16 # 3010 <_shuffle>
    1056:	02840913          	addi	s2,s0,40
    105a:	000034b7          	lui	s1,0x3
    105e:	00002ab7          	lui	s5,0x2
    1062:	00002a37          	lui	s4,0x2
    1066:	698d                	lui	s3,0x3
    1068:	03998993          	addi	s3,s3,57 # 3039 <_shuffle+0x29>
    106c:	a815                	j	10a0 <main+0xa0>
    106e:	46d5                	li	a3,21
    1070:	00002637          	lui	a2,0x2
    1074:	cf060613          	addi	a2,a2,-784 # 1cf0 <mkdir+0x16>
    1078:	000025b7          	lui	a1,0x2
    107c:	d0858593          	addi	a1,a1,-760 # 1d08 <mkdir+0x2e>
    1080:	4509                	li	a0,2
    1082:	00000097          	auipc	ra,0x0
    1086:	304080e7          	jalr	772(ra) # 1386 <fprintf>
    108a:	650d                	lui	a0,0x3
    108c:	03950513          	addi	a0,a0,57 # 3039 <_shuffle+0x29>
    1090:	00001097          	auipc	ra,0x1
    1094:	bda080e7          	jalr	-1062(ra) # 1c6a <exit>
    1098:	bf5d                	j	104e <main+0x4e>
    109a:	0411                	addi	s0,s0,4
    109c:	05240763          	beq	s0,s2,10ea <main+0xea>
    10a0:	4605                	li	a2,1
    10a2:	000205b7          	lui	a1,0x20
    10a6:	05048513          	addi	a0,s1,80 # 3050 <buf>
    10aa:	00000097          	auipc	ra,0x0
    10ae:	508080e7          	jalr	1288(ra) # 15b2 <shuffle>
    10b2:	000205b7          	lui	a1,0x20
    10b6:	05048513          	addi	a0,s1,80
    10ba:	00000097          	auipc	ra,0x0
    10be:	316080e7          	jalr	790(ra) # 13d0 <cksum>
    10c2:	2501                	sext.w	a0,a0
    10c4:	401c                	lw	a5,0(s0)
    10c6:	fca78ae3          	beq	a5,a0,109a <main+0x9a>
    10ca:	46e9                	li	a3,26
    10cc:	cf0a8613          	addi	a2,s5,-784 # 1cf0 <mkdir+0x16>
    10d0:	d58a0593          	addi	a1,s4,-680 # 1d58 <mkdir+0x7e>
    10d4:	4509                	li	a0,2
    10d6:	00000097          	auipc	ra,0x0
    10da:	2b0080e7          	jalr	688(ra) # 1386 <fprintf>
    10de:	854e                	mv	a0,s3
    10e0:	00001097          	auipc	ra,0x1
    10e4:	b8a080e7          	jalr	-1142(ra) # 1c6a <exit>
    10e8:	bf4d                	j	109a <main+0x9a>
    10ea:	70e2                	ld	ra,56(sp)
    10ec:	7442                	ld	s0,48(sp)
    10ee:	74a2                	ld	s1,40(sp)
    10f0:	7902                	ld	s2,32(sp)
    10f2:	69e2                	ld	s3,24(sp)
    10f4:	6a42                	ld	s4,16(sp)
    10f6:	6aa2                	ld	s5,8(sp)
    10f8:	6121                	addi	sp,sp,64
    10fa:	8082                	ret

00000000000010fc <putc>:
    10fc:	1101                	addi	sp,sp,-32
    10fe:	ec06                	sd	ra,24(sp)
    1100:	00b107a3          	sb	a1,15(sp)
    1104:	4605                	li	a2,1
    1106:	00f10593          	addi	a1,sp,15
    110a:	00001097          	auipc	ra,0x1
    110e:	b90080e7          	jalr	-1136(ra) # 1c9a <write>
    1112:	60e2                	ld	ra,24(sp)
    1114:	6105                	addi	sp,sp,32
    1116:	8082                	ret

0000000000001118 <printint>:
    1118:	7179                	addi	sp,sp,-48
    111a:	f406                	sd	ra,40(sp)
    111c:	f022                	sd	s0,32(sp)
    111e:	ec26                	sd	s1,24(sp)
    1120:	e84a                	sd	s2,16(sp)
    1122:	84aa                	mv	s1,a0
    1124:	c299                	beqz	a3,112a <printint+0x12>
    1126:	0805c363          	bltz	a1,11ac <printint+0x94>
    112a:	2581                	sext.w	a1,a1
    112c:	4881                	li	a7,0
    112e:	868a                	mv	a3,sp
    1130:	4701                	li	a4,0
    1132:	2601                	sext.w	a2,a2
    1134:	00002537          	lui	a0,0x2
    1138:	db050513          	addi	a0,a0,-592 # 1db0 <digits>
    113c:	883a                	mv	a6,a4
    113e:	2705                	addiw	a4,a4,1
    1140:	02c5f7bb          	remuw	a5,a1,a2
    1144:	1782                	slli	a5,a5,0x20
    1146:	9381                	srli	a5,a5,0x20
    1148:	97aa                	add	a5,a5,a0
    114a:	0007c783          	lbu	a5,0(a5)
    114e:	00f68023          	sb	a5,0(a3) # 20000 <buf+0x1cfb0>
    1152:	0005879b          	sext.w	a5,a1
    1156:	02c5d5bb          	divuw	a1,a1,a2
    115a:	0685                	addi	a3,a3,1
    115c:	fec7f0e3          	bgeu	a5,a2,113c <printint+0x24>
    1160:	00088a63          	beqz	a7,1174 <printint+0x5c>
    1164:	081c                	addi	a5,sp,16
    1166:	973e                	add	a4,a4,a5
    1168:	02d00793          	li	a5,45
    116c:	fef70823          	sb	a5,-16(a4)
    1170:	0028071b          	addiw	a4,a6,2
    1174:	02e05663          	blez	a4,11a0 <printint+0x88>
    1178:	00e10433          	add	s0,sp,a4
    117c:	fff10913          	addi	s2,sp,-1
    1180:	993a                	add	s2,s2,a4
    1182:	377d                	addiw	a4,a4,-1
    1184:	1702                	slli	a4,a4,0x20
    1186:	9301                	srli	a4,a4,0x20
    1188:	40e90933          	sub	s2,s2,a4
    118c:	fff44583          	lbu	a1,-1(s0)
    1190:	8526                	mv	a0,s1
    1192:	00000097          	auipc	ra,0x0
    1196:	f6a080e7          	jalr	-150(ra) # 10fc <putc>
    119a:	147d                	addi	s0,s0,-1
    119c:	ff2418e3          	bne	s0,s2,118c <printint+0x74>
    11a0:	70a2                	ld	ra,40(sp)
    11a2:	7402                	ld	s0,32(sp)
    11a4:	64e2                	ld	s1,24(sp)
    11a6:	6942                	ld	s2,16(sp)
    11a8:	6145                	addi	sp,sp,48
    11aa:	8082                	ret
    11ac:	40b005bb          	negw	a1,a1
    11b0:	4885                	li	a7,1
    11b2:	bfb5                	j	112e <printint+0x16>

00000000000011b4 <vprintf>:
    11b4:	7159                	addi	sp,sp,-112
    11b6:	f486                	sd	ra,104(sp)
    11b8:	f0a2                	sd	s0,96(sp)
    11ba:	eca6                	sd	s1,88(sp)
    11bc:	e8ca                	sd	s2,80(sp)
    11be:	e4ce                	sd	s3,72(sp)
    11c0:	e0d2                	sd	s4,64(sp)
    11c2:	fc56                	sd	s5,56(sp)
    11c4:	f85a                	sd	s6,48(sp)
    11c6:	f45e                	sd	s7,40(sp)
    11c8:	f062                	sd	s8,32(sp)
    11ca:	ec66                	sd	s9,24(sp)
    11cc:	e86a                	sd	s10,16(sp)
    11ce:	e46e                	sd	s11,8(sp)
    11d0:	0005c483          	lbu	s1,0(a1) # 20000 <buf+0x1cfb0>
    11d4:	18048a63          	beqz	s1,1368 <vprintf+0x1b4>
    11d8:	8a2a                	mv	s4,a0
    11da:	8ab2                	mv	s5,a2
    11dc:	00158413          	addi	s0,a1,1
    11e0:	4901                	li	s2,0
    11e2:	02500993          	li	s3,37
    11e6:	06400b93          	li	s7,100
    11ea:	06c00c13          	li	s8,108
    11ee:	07800c93          	li	s9,120
    11f2:	07000d13          	li	s10,112
    11f6:	00002db7          	lui	s11,0x2
    11fa:	00002b37          	lui	s6,0x2
    11fe:	db0b0b13          	addi	s6,s6,-592 # 1db0 <digits>
    1202:	a839                	j	1220 <vprintf+0x6c>
    1204:	85a6                	mv	a1,s1
    1206:	8552                	mv	a0,s4
    1208:	00000097          	auipc	ra,0x0
    120c:	ef4080e7          	jalr	-268(ra) # 10fc <putc>
    1210:	a019                	j	1216 <vprintf+0x62>
    1212:	01390f63          	beq	s2,s3,1230 <vprintf+0x7c>
    1216:	0405                	addi	s0,s0,1
    1218:	fff44483          	lbu	s1,-1(s0)
    121c:	14048663          	beqz	s1,1368 <vprintf+0x1b4>
    1220:	0004879b          	sext.w	a5,s1
    1224:	fe0917e3          	bnez	s2,1212 <vprintf+0x5e>
    1228:	fd379ee3          	bne	a5,s3,1204 <vprintf+0x50>
    122c:	893e                	mv	s2,a5
    122e:	b7e5                	j	1216 <vprintf+0x62>
    1230:	05778063          	beq	a5,s7,1270 <vprintf+0xbc>
    1234:	05878c63          	beq	a5,s8,128c <vprintf+0xd8>
    1238:	07978863          	beq	a5,s9,12a8 <vprintf+0xf4>
    123c:	09a78463          	beq	a5,s10,12c4 <vprintf+0x110>
    1240:	07300713          	li	a4,115
    1244:	0ce78263          	beq	a5,a4,1308 <vprintf+0x154>
    1248:	06300713          	li	a4,99
    124c:	0ee78763          	beq	a5,a4,133a <vprintf+0x186>
    1250:	11378163          	beq	a5,s3,1352 <vprintf+0x19e>
    1254:	85ce                	mv	a1,s3
    1256:	8552                	mv	a0,s4
    1258:	00000097          	auipc	ra,0x0
    125c:	ea4080e7          	jalr	-348(ra) # 10fc <putc>
    1260:	85a6                	mv	a1,s1
    1262:	8552                	mv	a0,s4
    1264:	00000097          	auipc	ra,0x0
    1268:	e98080e7          	jalr	-360(ra) # 10fc <putc>
    126c:	4901                	li	s2,0
    126e:	b765                	j	1216 <vprintf+0x62>
    1270:	008a8493          	addi	s1,s5,8
    1274:	4685                	li	a3,1
    1276:	4629                	li	a2,10
    1278:	000aa583          	lw	a1,0(s5)
    127c:	8552                	mv	a0,s4
    127e:	00000097          	auipc	ra,0x0
    1282:	e9a080e7          	jalr	-358(ra) # 1118 <printint>
    1286:	8aa6                	mv	s5,s1
    1288:	4901                	li	s2,0
    128a:	b771                	j	1216 <vprintf+0x62>
    128c:	008a8493          	addi	s1,s5,8
    1290:	4681                	li	a3,0
    1292:	4629                	li	a2,10
    1294:	000aa583          	lw	a1,0(s5)
    1298:	8552                	mv	a0,s4
    129a:	00000097          	auipc	ra,0x0
    129e:	e7e080e7          	jalr	-386(ra) # 1118 <printint>
    12a2:	8aa6                	mv	s5,s1
    12a4:	4901                	li	s2,0
    12a6:	bf85                	j	1216 <vprintf+0x62>
    12a8:	008a8493          	addi	s1,s5,8
    12ac:	4681                	li	a3,0
    12ae:	4641                	li	a2,16
    12b0:	000aa583          	lw	a1,0(s5)
    12b4:	8552                	mv	a0,s4
    12b6:	00000097          	auipc	ra,0x0
    12ba:	e62080e7          	jalr	-414(ra) # 1118 <printint>
    12be:	8aa6                	mv	s5,s1
    12c0:	4901                	li	s2,0
    12c2:	bf91                	j	1216 <vprintf+0x62>
    12c4:	008a8913          	addi	s2,s5,8
    12c8:	000aba83          	ld	s5,0(s5)
    12cc:	03000593          	li	a1,48
    12d0:	8552                	mv	a0,s4
    12d2:	00000097          	auipc	ra,0x0
    12d6:	e2a080e7          	jalr	-470(ra) # 10fc <putc>
    12da:	85e6                	mv	a1,s9
    12dc:	8552                	mv	a0,s4
    12de:	00000097          	auipc	ra,0x0
    12e2:	e1e080e7          	jalr	-482(ra) # 10fc <putc>
    12e6:	44c1                	li	s1,16
    12e8:	03cad793          	srli	a5,s5,0x3c
    12ec:	97da                	add	a5,a5,s6
    12ee:	0007c583          	lbu	a1,0(a5)
    12f2:	8552                	mv	a0,s4
    12f4:	00000097          	auipc	ra,0x0
    12f8:	e08080e7          	jalr	-504(ra) # 10fc <putc>
    12fc:	0a92                	slli	s5,s5,0x4
    12fe:	34fd                	addiw	s1,s1,-1
    1300:	f4e5                	bnez	s1,12e8 <vprintf+0x134>
    1302:	8aca                	mv	s5,s2
    1304:	4901                	li	s2,0
    1306:	bf01                	j	1216 <vprintf+0x62>
    1308:	008a8913          	addi	s2,s5,8
    130c:	000ab483          	ld	s1,0(s5)
    1310:	c085                	beqz	s1,1330 <vprintf+0x17c>
    1312:	0004c583          	lbu	a1,0(s1)
    1316:	c5b1                	beqz	a1,1362 <vprintf+0x1ae>
    1318:	8552                	mv	a0,s4
    131a:	00000097          	auipc	ra,0x0
    131e:	de2080e7          	jalr	-542(ra) # 10fc <putc>
    1322:	0485                	addi	s1,s1,1
    1324:	0004c583          	lbu	a1,0(s1)
    1328:	f9e5                	bnez	a1,1318 <vprintf+0x164>
    132a:	8aca                	mv	s5,s2
    132c:	4901                	li	s2,0
    132e:	b5e5                	j	1216 <vprintf+0x62>
    1330:	da8d8493          	addi	s1,s11,-600 # 1da8 <mkdir+0xce>
    1334:	02800593          	li	a1,40
    1338:	b7c5                	j	1318 <vprintf+0x164>
    133a:	008a8493          	addi	s1,s5,8
    133e:	000ac583          	lbu	a1,0(s5)
    1342:	8552                	mv	a0,s4
    1344:	00000097          	auipc	ra,0x0
    1348:	db8080e7          	jalr	-584(ra) # 10fc <putc>
    134c:	8aa6                	mv	s5,s1
    134e:	4901                	li	s2,0
    1350:	b5d9                	j	1216 <vprintf+0x62>
    1352:	85ce                	mv	a1,s3
    1354:	8552                	mv	a0,s4
    1356:	00000097          	auipc	ra,0x0
    135a:	da6080e7          	jalr	-602(ra) # 10fc <putc>
    135e:	4901                	li	s2,0
    1360:	bd5d                	j	1216 <vprintf+0x62>
    1362:	8aca                	mv	s5,s2
    1364:	4901                	li	s2,0
    1366:	bd45                	j	1216 <vprintf+0x62>
    1368:	70a6                	ld	ra,104(sp)
    136a:	7406                	ld	s0,96(sp)
    136c:	64e6                	ld	s1,88(sp)
    136e:	6946                	ld	s2,80(sp)
    1370:	69a6                	ld	s3,72(sp)
    1372:	6a06                	ld	s4,64(sp)
    1374:	7ae2                	ld	s5,56(sp)
    1376:	7b42                	ld	s6,48(sp)
    1378:	7ba2                	ld	s7,40(sp)
    137a:	7c02                	ld	s8,32(sp)
    137c:	6ce2                	ld	s9,24(sp)
    137e:	6d42                	ld	s10,16(sp)
    1380:	6da2                	ld	s11,8(sp)
    1382:	6165                	addi	sp,sp,112
    1384:	8082                	ret

0000000000001386 <fprintf>:
    1386:	715d                	addi	sp,sp,-80
    1388:	ec06                	sd	ra,24(sp)
    138a:	f032                	sd	a2,32(sp)
    138c:	f436                	sd	a3,40(sp)
    138e:	f83a                	sd	a4,48(sp)
    1390:	fc3e                	sd	a5,56(sp)
    1392:	e0c2                	sd	a6,64(sp)
    1394:	e4c6                	sd	a7,72(sp)
    1396:	1010                	addi	a2,sp,32
    1398:	e432                	sd	a2,8(sp)
    139a:	00000097          	auipc	ra,0x0
    139e:	e1a080e7          	jalr	-486(ra) # 11b4 <vprintf>
    13a2:	60e2                	ld	ra,24(sp)
    13a4:	6161                	addi	sp,sp,80
    13a6:	8082                	ret

00000000000013a8 <printf>:
    13a8:	711d                	addi	sp,sp,-96
    13aa:	ec06                	sd	ra,24(sp)
    13ac:	f42e                	sd	a1,40(sp)
    13ae:	f832                	sd	a2,48(sp)
    13b0:	fc36                	sd	a3,56(sp)
    13b2:	e0ba                	sd	a4,64(sp)
    13b4:	e4be                	sd	a5,72(sp)
    13b6:	e8c2                	sd	a6,80(sp)
    13b8:	ecc6                	sd	a7,88(sp)
    13ba:	1030                	addi	a2,sp,40
    13bc:	e432                	sd	a2,8(sp)
    13be:	85aa                	mv	a1,a0
    13c0:	4505                	li	a0,1
    13c2:	00000097          	auipc	ra,0x0
    13c6:	df2080e7          	jalr	-526(ra) # 11b4 <vprintf>
    13ca:	60e2                	ld	ra,24(sp)
    13cc:	6125                	addi	sp,sp,96
    13ce:	8082                	ret

00000000000013d0 <cksum>:
    13d0:	cdb1                	beqz	a1,142c <cksum+0x5c>
    13d2:	00b50833          	add	a6,a0,a1
    13d6:	4781                	li	a5,0
    13d8:	00002637          	lui	a2,0x2
    13dc:	dc860613          	addi	a2,a2,-568 # 1dc8 <crctab>
    13e0:	0505                	addi	a0,a0,1
    13e2:	0087969b          	slliw	a3,a5,0x8
    13e6:	0187d71b          	srliw	a4,a5,0x18
    13ea:	fff54783          	lbu	a5,-1(a0)
    13ee:	8f3d                	xor	a4,a4,a5
    13f0:	1702                	slli	a4,a4,0x20
    13f2:	9301                	srli	a4,a4,0x20
    13f4:	070a                	slli	a4,a4,0x2
    13f6:	9732                	add	a4,a4,a2
    13f8:	431c                	lw	a5,0(a4)
    13fa:	8fb5                	xor	a5,a5,a3
    13fc:	2781                	sext.w	a5,a5
    13fe:	fea811e3          	bne	a6,a0,13e0 <cksum+0x10>
    1402:	00002637          	lui	a2,0x2
    1406:	dc860613          	addi	a2,a2,-568 # 1dc8 <crctab>
    140a:	0ff5f693          	andi	a3,a1,255
    140e:	81a1                	srli	a1,a1,0x8
    1410:	0087951b          	slliw	a0,a5,0x8
    1414:	0187d71b          	srliw	a4,a5,0x18
    1418:	8f35                	xor	a4,a4,a3
    141a:	070a                	slli	a4,a4,0x2
    141c:	9732                	add	a4,a4,a2
    141e:	431c                	lw	a5,0(a4)
    1420:	8fa9                	xor	a5,a5,a0
    1422:	2781                	sext.w	a5,a5
    1424:	f1fd                	bnez	a1,140a <cksum+0x3a>
    1426:	fff7c513          	not	a0,a5
    142a:	8082                	ret
    142c:	4781                	li	a5,0
    142e:	bfe5                	j	1426 <cksum+0x56>

0000000000001430 <swap_bytes>:
    1430:	ce19                	beqz	a2,144e <swap_bytes+0x1e>
    1432:	87aa                	mv	a5,a0
    1434:	962a                	add	a2,a2,a0
    1436:	0007c703          	lbu	a4,0(a5)
    143a:	0005c683          	lbu	a3,0(a1)
    143e:	00d78023          	sb	a3,0(a5)
    1442:	00e58023          	sb	a4,0(a1)
    1446:	0785                	addi	a5,a5,1
    1448:	0585                	addi	a1,a1,1
    144a:	fec796e3          	bne	a5,a2,1436 <swap_bytes+0x6>
    144e:	8082                	ret

0000000000001450 <random_init>:
    1450:	7139                	addi	sp,sp,-64
    1452:	fc06                	sd	ra,56(sp)
    1454:	f822                	sd	s0,48(sp)
    1456:	f426                	sd	s1,40(sp)
    1458:	f04a                	sd	s2,32(sp)
    145a:	ec4e                	sd	s3,24(sp)
    145c:	e852                	sd	s4,16(sp)
    145e:	c62a                	sw	a0,12(sp)
    1460:	000037b7          	lui	a5,0x3
    1464:	0407a483          	lw	s1,64(a5) # 3040 <inited>
    1468:	eca5                	bnez	s1,14e0 <random_init+0x90>
    146a:	00023737          	lui	a4,0x23
    146e:	05070913          	addi	s2,a4,80 # 23050 <s>
    1472:	05070713          	addi	a4,a4,80
    1476:	87a6                	mv	a5,s1
    1478:	10000693          	li	a3,256
    147c:	00f70023          	sb	a5,0(a4)
    1480:	2785                	addiw	a5,a5,1
    1482:	0705                	addi	a4,a4,1
    1484:	fed79ce3          	bne	a5,a3,147c <random_init+0x2c>
    1488:	4401                	li	s0,0
    148a:	000239b7          	lui	s3,0x23
    148e:	05098993          	addi	s3,s3,80 # 23050 <s>
    1492:	10000a13          	li	s4,256
    1496:	0034f793          	andi	a5,s1,3
    149a:	0818                	addi	a4,sp,16
    149c:	97ba                	add	a5,a5,a4
    149e:	ffc7c783          	lbu	a5,-4(a5)
    14a2:	00094703          	lbu	a4,0(s2)
    14a6:	9fb9                	addw	a5,a5,a4
    14a8:	9c3d                	addw	s0,s0,a5
    14aa:	0ff47413          	andi	s0,s0,255
    14ae:	4605                	li	a2,1
    14b0:	008985b3          	add	a1,s3,s0
    14b4:	854a                	mv	a0,s2
    14b6:	00000097          	auipc	ra,0x0
    14ba:	f7a080e7          	jalr	-134(ra) # 1430 <swap_bytes>
    14be:	2485                	addiw	s1,s1,1
    14c0:	0905                	addi	s2,s2,1
    14c2:	fd449ae3          	bne	s1,s4,1496 <random_init+0x46>
    14c6:	000037b7          	lui	a5,0x3
    14ca:	04078223          	sb	zero,68(a5) # 3044 <s_j>
    14ce:	000037b7          	lui	a5,0x3
    14d2:	040782a3          	sb	zero,69(a5) # 3045 <s_i>
    14d6:	000037b7          	lui	a5,0x3
    14da:	4705                	li	a4,1
    14dc:	04e7a023          	sw	a4,64(a5) # 3040 <inited>
    14e0:	70e2                	ld	ra,56(sp)
    14e2:	7442                	ld	s0,48(sp)
    14e4:	74a2                	ld	s1,40(sp)
    14e6:	7902                	ld	s2,32(sp)
    14e8:	69e2                	ld	s3,24(sp)
    14ea:	6a42                	ld	s4,16(sp)
    14ec:	6121                	addi	sp,sp,64
    14ee:	8082                	ret

00000000000014f0 <random_bytes>:
    14f0:	7139                	addi	sp,sp,-64
    14f2:	fc06                	sd	ra,56(sp)
    14f4:	f822                	sd	s0,48(sp)
    14f6:	f426                	sd	s1,40(sp)
    14f8:	f04a                	sd	s2,32(sp)
    14fa:	ec4e                	sd	s3,24(sp)
    14fc:	e852                	sd	s4,16(sp)
    14fe:	e456                	sd	s5,8(sp)
    1500:	e05a                	sd	s6,0(sp)
    1502:	892a                	mv	s2,a0
    1504:	8aae                	mv	s5,a1
    1506:	000037b7          	lui	a5,0x3
    150a:	0407a783          	lw	a5,64(a5) # 3040 <inited>
    150e:	c3c1                	beqz	a5,158e <random_bytes+0x9e>
    1510:	060a8563          	beqz	s5,157a <random_bytes+0x8a>
    1514:	9aca                	add	s5,s5,s2
    1516:	00003a37          	lui	s4,0x3
    151a:	000234b7          	lui	s1,0x23
    151e:	05048493          	addi	s1,s1,80 # 23050 <s>
    1522:	000039b7          	lui	s3,0x3
    1526:	045a4503          	lbu	a0,69(s4) # 3045 <s_i>
    152a:	2505                	addiw	a0,a0,1
    152c:	0ff57513          	andi	a0,a0,255
    1530:	04aa02a3          	sb	a0,69(s4)
    1534:	00a48b33          	add	s6,s1,a0
    1538:	000b4403          	lbu	s0,0(s6)
    153c:	0449c783          	lbu	a5,68(s3) # 3044 <s_j>
    1540:	9c3d                	addw	s0,s0,a5
    1542:	0ff47413          	andi	s0,s0,255
    1546:	04898223          	sb	s0,68(s3)
    154a:	4605                	li	a2,1
    154c:	008485b3          	add	a1,s1,s0
    1550:	855a                	mv	a0,s6
    1552:	00000097          	auipc	ra,0x0
    1556:	ede080e7          	jalr	-290(ra) # 1430 <swap_bytes>
    155a:	9426                	add	s0,s0,s1
    155c:	000b4783          	lbu	a5,0(s6)
    1560:	00044703          	lbu	a4,0(s0)
    1564:	9fb9                	addw	a5,a5,a4
    1566:	0ff7f793          	andi	a5,a5,255
    156a:	97a6                	add	a5,a5,s1
    156c:	0007c783          	lbu	a5,0(a5)
    1570:	00f90023          	sb	a5,0(s2)
    1574:	0905                	addi	s2,s2,1
    1576:	fb2a98e3          	bne	s5,s2,1526 <random_bytes+0x36>
    157a:	70e2                	ld	ra,56(sp)
    157c:	7442                	ld	s0,48(sp)
    157e:	74a2                	ld	s1,40(sp)
    1580:	7902                	ld	s2,32(sp)
    1582:	69e2                	ld	s3,24(sp)
    1584:	6a42                	ld	s4,16(sp)
    1586:	6aa2                	ld	s5,8(sp)
    1588:	6b02                	ld	s6,0(sp)
    158a:	6121                	addi	sp,sp,64
    158c:	8082                	ret
    158e:	4501                	li	a0,0
    1590:	00000097          	auipc	ra,0x0
    1594:	ec0080e7          	jalr	-320(ra) # 1450 <random_init>
    1598:	bfa5                	j	1510 <random_bytes+0x20>

000000000000159a <random_ulong>:
    159a:	1101                	addi	sp,sp,-32
    159c:	ec06                	sd	ra,24(sp)
    159e:	45a1                	li	a1,8
    15a0:	0028                	addi	a0,sp,8
    15a2:	00000097          	auipc	ra,0x0
    15a6:	f4e080e7          	jalr	-178(ra) # 14f0 <random_bytes>
    15aa:	6522                	ld	a0,8(sp)
    15ac:	60e2                	ld	ra,24(sp)
    15ae:	6105                	addi	sp,sp,32
    15b0:	8082                	ret

00000000000015b2 <shuffle>:
    15b2:	c9b9                	beqz	a1,1608 <shuffle+0x56>
    15b4:	7179                	addi	sp,sp,-48
    15b6:	f406                	sd	ra,40(sp)
    15b8:	f022                	sd	s0,32(sp)
    15ba:	ec26                	sd	s1,24(sp)
    15bc:	e84a                	sd	s2,16(sp)
    15be:	e44e                	sd	s3,8(sp)
    15c0:	e052                	sd	s4,0(sp)
    15c2:	8a2a                	mv	s4,a0
    15c4:	89ae                	mv	s3,a1
    15c6:	84b2                	mv	s1,a2
    15c8:	892a                	mv	s2,a0
    15ca:	4401                	li	s0,0
    15cc:	00000097          	auipc	ra,0x0
    15d0:	fce080e7          	jalr	-50(ra) # 159a <random_ulong>
    15d4:	408985b3          	sub	a1,s3,s0
    15d8:	02b575b3          	remu	a1,a0,a1
    15dc:	95a2                	add	a1,a1,s0
    15de:	029585b3          	mul	a1,a1,s1
    15e2:	8626                	mv	a2,s1
    15e4:	95d2                	add	a1,a1,s4
    15e6:	854a                	mv	a0,s2
    15e8:	00000097          	auipc	ra,0x0
    15ec:	e48080e7          	jalr	-440(ra) # 1430 <swap_bytes>
    15f0:	0405                	addi	s0,s0,1
    15f2:	9926                	add	s2,s2,s1
    15f4:	fc899ce3          	bne	s3,s0,15cc <shuffle+0x1a>
    15f8:	70a2                	ld	ra,40(sp)
    15fa:	7402                	ld	s0,32(sp)
    15fc:	64e2                	ld	s1,24(sp)
    15fe:	6942                	ld	s2,16(sp)
    1600:	69a2                	ld	s3,8(sp)
    1602:	6a02                	ld	s4,0(sp)
    1604:	6145                	addi	sp,sp,48
    1606:	8082                	ret
    1608:	8082                	ret

000000000000160a <arc4_init>:
    160a:	100500a3          	sb	zero,257(a0)
    160e:	10050023          	sb	zero,256(a0)
    1612:	4781                	li	a5,0
    1614:	10000693          	li	a3,256
    1618:	00f50733          	add	a4,a0,a5
    161c:	00f70023          	sb	a5,0(a4)
    1620:	0785                	addi	a5,a5,1
    1622:	fed79be3          	bne	a5,a3,1618 <arc4_init+0xe>
    1626:	86aa                	mv	a3,a0
    1628:	10050e13          	addi	t3,a0,256
    162c:	4701                	li	a4,0
    162e:	4781                	li	a5,0
    1630:	0006c883          	lbu	a7,0(a3)
    1634:	00f58833          	add	a6,a1,a5
    1638:	00084803          	lbu	a6,0(a6)
    163c:	00e8873b          	addw	a4,a7,a4
    1640:	00e8073b          	addw	a4,a6,a4
    1644:	0ff77713          	andi	a4,a4,255
    1648:	00e50833          	add	a6,a0,a4
    164c:	00084303          	lbu	t1,0(a6)
    1650:	00668023          	sb	t1,0(a3)
    1654:	01180023          	sb	a7,0(a6)
    1658:	0785                	addi	a5,a5,1
    165a:	00c7b833          	sltu	a6,a5,a2
    165e:	41000833          	neg	a6,a6
    1662:	0107f7b3          	and	a5,a5,a6
    1666:	0685                	addi	a3,a3,1
    1668:	fdc694e3          	bne	a3,t3,1630 <arc4_init+0x26>
    166c:	8082                	ret

000000000000166e <arc4_crypt>:
    166e:	10054e03          	lbu	t3,256(a0)
    1672:	10154803          	lbu	a6,257(a0)
    1676:	fff60e93          	addi	t4,a2,-1
    167a:	c225                	beqz	a2,16da <arc4_crypt+0x6c>
    167c:	00c588b3          	add	a7,a1,a2
    1680:	86ae                	mv	a3,a1
    1682:	001e031b          	addiw	t1,t3,1
    1686:	40b3033b          	subw	t1,t1,a1
    168a:	00d3073b          	addw	a4,t1,a3
    168e:	0ff77713          	andi	a4,a4,255
    1692:	972a                	add	a4,a4,a0
    1694:	00074603          	lbu	a2,0(a4)
    1698:	0106083b          	addw	a6,a2,a6
    169c:	0ff87813          	andi	a6,a6,255
    16a0:	010507b3          	add	a5,a0,a6
    16a4:	0007c583          	lbu	a1,0(a5)
    16a8:	00b70023          	sb	a1,0(a4)
    16ac:	00c78023          	sb	a2,0(a5)
    16b0:	0685                	addi	a3,a3,1
    16b2:	00074783          	lbu	a5,0(a4)
    16b6:	9fb1                	addw	a5,a5,a2
    16b8:	0ff7f793          	andi	a5,a5,255
    16bc:	97aa                	add	a5,a5,a0
    16be:	0007c783          	lbu	a5,0(a5)
    16c2:	fff6c703          	lbu	a4,-1(a3)
    16c6:	8fb9                	xor	a5,a5,a4
    16c8:	fef68fa3          	sb	a5,-1(a3)
    16cc:	fb169fe3          	bne	a3,a7,168a <arc4_crypt+0x1c>
    16d0:	2e85                	addiw	t4,t4,1
    16d2:	01ce8e3b          	addw	t3,t4,t3
    16d6:	0ffe7e13          	andi	t3,t3,255
    16da:	11c50023          	sb	t3,256(a0)
    16de:	110500a3          	sb	a6,257(a0)
    16e2:	8082                	ret

00000000000016e4 <_main>:
    16e4:	1141                	addi	sp,sp,-16
    16e6:	e406                	sd	ra,8(sp)
    16e8:	00000097          	auipc	ra,0x0
    16ec:	918080e7          	jalr	-1768(ra) # 1000 <main>
    16f0:	4501                	li	a0,0
    16f2:	00000097          	auipc	ra,0x0
    16f6:	578080e7          	jalr	1400(ra) # 1c6a <exit>
    16fa:	60a2                	ld	ra,8(sp)
    16fc:	0141                	addi	sp,sp,16
    16fe:	8082                	ret

0000000000001700 <strcmp>:
    1700:	00054783          	lbu	a5,0(a0)
    1704:	cb91                	beqz	a5,1718 <strcmp+0x18>
    1706:	0005c703          	lbu	a4,0(a1)
    170a:	00f71763          	bne	a4,a5,1718 <strcmp+0x18>
    170e:	0505                	addi	a0,a0,1
    1710:	0585                	addi	a1,a1,1
    1712:	00054783          	lbu	a5,0(a0)
    1716:	fbe5                	bnez	a5,1706 <strcmp+0x6>
    1718:	0005c503          	lbu	a0,0(a1)
    171c:	40a7853b          	subw	a0,a5,a0
    1720:	8082                	ret

0000000000001722 <strcpy>:
    1722:	87aa                	mv	a5,a0
    1724:	0585                	addi	a1,a1,1
    1726:	0785                	addi	a5,a5,1
    1728:	fff5c703          	lbu	a4,-1(a1)
    172c:	fee78fa3          	sb	a4,-1(a5)
    1730:	fb75                	bnez	a4,1724 <strcpy+0x2>
    1732:	8082                	ret

0000000000001734 <strlen>:
    1734:	00054783          	lbu	a5,0(a0)
    1738:	cf81                	beqz	a5,1750 <strlen+0x1c>
    173a:	0505                	addi	a0,a0,1
    173c:	87aa                	mv	a5,a0
    173e:	4685                	li	a3,1
    1740:	9e89                	subw	a3,a3,a0
    1742:	00f6853b          	addw	a0,a3,a5
    1746:	0785                	addi	a5,a5,1
    1748:	fff7c703          	lbu	a4,-1(a5)
    174c:	fb7d                	bnez	a4,1742 <strlen+0xe>
    174e:	8082                	ret
    1750:	4501                	li	a0,0
    1752:	8082                	ret

0000000000001754 <memset>:
    1754:	ca19                	beqz	a2,176a <memset+0x16>
    1756:	87aa                	mv	a5,a0
    1758:	1602                	slli	a2,a2,0x20
    175a:	9201                	srli	a2,a2,0x20
    175c:	00a60733          	add	a4,a2,a0
    1760:	00b78023          	sb	a1,0(a5)
    1764:	0785                	addi	a5,a5,1
    1766:	fee79de3          	bne	a5,a4,1760 <memset+0xc>
    176a:	8082                	ret

000000000000176c <memcmp>:
    176c:	1101                	addi	sp,sp,-32
    176e:	ec06                	sd	ra,24(sp)
    1770:	e822                	sd	s0,16(sp)
    1772:	e426                	sd	s1,8(sp)
    1774:	e04a                	sd	s2,0(sp)
    1776:	892a                	mv	s2,a0
    1778:	842e                	mv	s0,a1
    177a:	84b2                	mv	s1,a2
    177c:	c915                	beqz	a0,17b0 <memcmp+0x44>
    177e:	c5ad                	beqz	a1,17e8 <memcmp+0x7c>
    1780:	fff60713          	addi	a4,a2,-1
    1784:	c645                	beqz	a2,182c <memcmp+0xc0>
    1786:	87ca                	mv	a5,s2
    1788:	00190613          	addi	a2,s2,1
    178c:	963a                	add	a2,a2,a4
    178e:	0007c683          	lbu	a3,0(a5)
    1792:	00044703          	lbu	a4,0(s0)
    1796:	08e69463          	bne	a3,a4,181e <memcmp+0xb2>
    179a:	0785                	addi	a5,a5,1
    179c:	0405                	addi	s0,s0,1
    179e:	fec798e3          	bne	a5,a2,178e <memcmp+0x22>
    17a2:	4501                	li	a0,0
    17a4:	60e2                	ld	ra,24(sp)
    17a6:	6442                	ld	s0,16(sp)
    17a8:	64a2                	ld	s1,8(sp)
    17aa:	6902                	ld	s2,0(sp)
    17ac:	6105                	addi	sp,sp,32
    17ae:	8082                	ret
    17b0:	4501                	li	a0,0
    17b2:	da6d                	beqz	a2,17a4 <memcmp+0x38>
    17b4:	03200693          	li	a3,50
    17b8:	00002637          	lui	a2,0x2
    17bc:	1c860613          	addi	a2,a2,456 # 21c8 <crctab+0x400>
    17c0:	000025b7          	lui	a1,0x2
    17c4:	1d858593          	addi	a1,a1,472 # 21d8 <crctab+0x410>
    17c8:	4509                	li	a0,2
    17ca:	00000097          	auipc	ra,0x0
    17ce:	bbc080e7          	jalr	-1092(ra) # 1386 <fprintf>
    17d2:	650d                	lui	a0,0x3
    17d4:	03950513          	addi	a0,a0,57 # 3039 <_shuffle+0x29>
    17d8:	00000097          	auipc	ra,0x0
    17dc:	492080e7          	jalr	1170(ra) # 1c6a <exit>
    17e0:	fff48713          	addi	a4,s1,-1
    17e4:	f04d                	bnez	s0,1786 <memcmp+0x1a>
    17e6:	a011                	j	17ea <memcmp+0x7e>
    17e8:	c221                	beqz	a2,1828 <memcmp+0xbc>
    17ea:	03300693          	li	a3,51
    17ee:	00002637          	lui	a2,0x2
    17f2:	1c860613          	addi	a2,a2,456 # 21c8 <crctab+0x400>
    17f6:	000025b7          	lui	a1,0x2
    17fa:	22058593          	addi	a1,a1,544 # 2220 <crctab+0x458>
    17fe:	4509                	li	a0,2
    1800:	00000097          	auipc	ra,0x0
    1804:	b86080e7          	jalr	-1146(ra) # 1386 <fprintf>
    1808:	650d                	lui	a0,0x3
    180a:	03950513          	addi	a0,a0,57 # 3039 <_shuffle+0x29>
    180e:	00000097          	auipc	ra,0x0
    1812:	45c080e7          	jalr	1116(ra) # 1c6a <exit>
    1816:	fff48713          	addi	a4,s1,-1
    181a:	4401                	li	s0,0
    181c:	b7ad                	j	1786 <memcmp+0x1a>
    181e:	4505                	li	a0,1
    1820:	f8d762e3          	bltu	a4,a3,17a4 <memcmp+0x38>
    1824:	557d                	li	a0,-1
    1826:	bfbd                	j	17a4 <memcmp+0x38>
    1828:	4501                	li	a0,0
    182a:	bfad                	j	17a4 <memcmp+0x38>
    182c:	4501                	li	a0,0
    182e:	bf9d                	j	17a4 <memcmp+0x38>

0000000000001830 <memcpy>:
    1830:	1101                	addi	sp,sp,-32
    1832:	ec06                	sd	ra,24(sp)
    1834:	e822                	sd	s0,16(sp)
    1836:	e426                	sd	s1,8(sp)
    1838:	e04a                	sd	s2,0(sp)
    183a:	84aa                	mv	s1,a0
    183c:	842e                	mv	s0,a1
    183e:	8932                	mv	s2,a2
    1840:	c51d                	beqz	a0,186e <memcpy+0x3e>
    1842:	c1ad                	beqz	a1,18a4 <memcpy+0x74>
    1844:	fff60693          	addi	a3,a2,-1
    1848:	ce01                	beqz	a2,1860 <memcpy+0x30>
    184a:	0685                	addi	a3,a3,1
    184c:	96a6                	add	a3,a3,s1
    184e:	87a6                	mv	a5,s1
    1850:	0405                	addi	s0,s0,1
    1852:	0785                	addi	a5,a5,1
    1854:	fff44703          	lbu	a4,-1(s0)
    1858:	fee78fa3          	sb	a4,-1(a5)
    185c:	fed79ae3          	bne	a5,a3,1850 <memcpy+0x20>
    1860:	8526                	mv	a0,s1
    1862:	60e2                	ld	ra,24(sp)
    1864:	6442                	ld	s0,16(sp)
    1866:	64a2                	ld	s1,8(sp)
    1868:	6902                	ld	s2,0(sp)
    186a:	6105                	addi	sp,sp,32
    186c:	8082                	ret
    186e:	da6d                	beqz	a2,1860 <memcpy+0x30>
    1870:	04000693          	li	a3,64
    1874:	00002637          	lui	a2,0x2
    1878:	1c860613          	addi	a2,a2,456 # 21c8 <crctab+0x400>
    187c:	000025b7          	lui	a1,0x2
    1880:	26858593          	addi	a1,a1,616 # 2268 <crctab+0x4a0>
    1884:	4509                	li	a0,2
    1886:	00000097          	auipc	ra,0x0
    188a:	b00080e7          	jalr	-1280(ra) # 1386 <fprintf>
    188e:	650d                	lui	a0,0x3
    1890:	03950513          	addi	a0,a0,57 # 3039 <_shuffle+0x29>
    1894:	00000097          	auipc	ra,0x0
    1898:	3d6080e7          	jalr	982(ra) # 1c6a <exit>
    189c:	fff90693          	addi	a3,s2,-1
    18a0:	f44d                	bnez	s0,184a <memcpy+0x1a>
    18a2:	a011                	j	18a6 <memcpy+0x76>
    18a4:	de55                	beqz	a2,1860 <memcpy+0x30>
    18a6:	04100693          	li	a3,65
    18aa:	00002637          	lui	a2,0x2
    18ae:	1c860613          	addi	a2,a2,456 # 21c8 <crctab+0x400>
    18b2:	000025b7          	lui	a1,0x2
    18b6:	2b058593          	addi	a1,a1,688 # 22b0 <crctab+0x4e8>
    18ba:	4509                	li	a0,2
    18bc:	00000097          	auipc	ra,0x0
    18c0:	aca080e7          	jalr	-1334(ra) # 1386 <fprintf>
    18c4:	650d                	lui	a0,0x3
    18c6:	03950513          	addi	a0,a0,57 # 3039 <_shuffle+0x29>
    18ca:	00000097          	auipc	ra,0x0
    18ce:	3a0080e7          	jalr	928(ra) # 1c6a <exit>
    18d2:	fff90693          	addi	a3,s2,-1
    18d6:	4401                	li	s0,0
    18d8:	bf8d                	j	184a <memcpy+0x1a>

00000000000018da <itoa>:
    18da:	1101                	addi	sp,sp,-32
    18dc:	ec06                	sd	ra,24(sp)
    18de:	e822                	sd	s0,16(sp)
    18e0:	e426                	sd	s1,8(sp)
    18e2:	842a                	mv	s0,a0
    18e4:	41f5d71b          	sraiw	a4,a1,0x1f
    18e8:	00e5c7b3          	xor	a5,a1,a4
    18ec:	9f99                	subw	a5,a5,a4
    18ee:	84aa                	mv	s1,a0
    18f0:	862a                	mv	a2,a0
    18f2:	4681                	li	a3,0
    18f4:	4529                	li	a0,10
    18f6:	4825                	li	a6,9
    18f8:	88b6                	mv	a7,a3
    18fa:	2685                	addiw	a3,a3,1
    18fc:	02a7e73b          	remw	a4,a5,a0
    1900:	0307071b          	addiw	a4,a4,48
    1904:	00e60023          	sb	a4,0(a2)
    1908:	873e                	mv	a4,a5
    190a:	02a7c7bb          	divw	a5,a5,a0
    190e:	0605                	addi	a2,a2,1
    1910:	fee844e3          	blt	a6,a4,18f8 <itoa+0x1e>
    1914:	0405c863          	bltz	a1,1964 <itoa+0x8a>
    1918:	96a2                	add	a3,a3,s0
    191a:	00068023          	sb	zero,0(a3)
    191e:	8522                	mv	a0,s0
    1920:	00000097          	auipc	ra,0x0
    1924:	e14080e7          	jalr	-492(ra) # 1734 <strlen>
    1928:	fff5071b          	addiw	a4,a0,-1
    192c:	02e05763          	blez	a4,195a <itoa+0x80>
    1930:	9722                	add	a4,a4,s0
    1932:	4681                	li	a3,0
    1934:	0004c783          	lbu	a5,0(s1)
    1938:	00074603          	lbu	a2,0(a4)
    193c:	00c48023          	sb	a2,0(s1)
    1940:	00f70023          	sb	a5,0(a4)
    1944:	0016879b          	addiw	a5,a3,1
    1948:	0007869b          	sext.w	a3,a5
    194c:	0485                	addi	s1,s1,1
    194e:	177d                	addi	a4,a4,-1
    1950:	fff7c793          	not	a5,a5
    1954:	9fa9                	addw	a5,a5,a0
    1956:	fcf6cfe3          	blt	a3,a5,1934 <itoa+0x5a>
    195a:	60e2                	ld	ra,24(sp)
    195c:	6442                	ld	s0,16(sp)
    195e:	64a2                	ld	s1,8(sp)
    1960:	6105                	addi	sp,sp,32
    1962:	8082                	ret
    1964:	96a2                	add	a3,a3,s0
    1966:	02d00793          	li	a5,45
    196a:	00f68023          	sb	a5,0(a3)
    196e:	0028869b          	addiw	a3,a7,2
    1972:	b75d                	j	1918 <itoa+0x3e>

0000000000001974 <atoi>:
    1974:	00054783          	lbu	a5,0(a0)
    1978:	02000713          	li	a4,32
    197c:	00e79763          	bne	a5,a4,198a <atoi+0x16>
    1980:	0505                	addi	a0,a0,1
    1982:	00054783          	lbu	a5,0(a0)
    1986:	fee78de3          	beq	a5,a4,1980 <atoi+0xc>
    198a:	02b00713          	li	a4,43
    198e:	04e78663          	beq	a5,a4,19da <atoi+0x66>
    1992:	02d00713          	li	a4,45
    1996:	4805                	li	a6,1
    1998:	04e78463          	beq	a5,a4,19e0 <atoi+0x6c>
    199c:	00054683          	lbu	a3,0(a0)
    19a0:	fd06879b          	addiw	a5,a3,-48
    19a4:	0ff7f793          	andi	a5,a5,255
    19a8:	4725                	li	a4,9
    19aa:	02f76e63          	bltu	a4,a5,19e6 <atoi+0x72>
    19ae:	4601                	li	a2,0
    19b0:	45a5                	li	a1,9
    19b2:	0505                	addi	a0,a0,1
    19b4:	0026179b          	slliw	a5,a2,0x2
    19b8:	9fb1                	addw	a5,a5,a2
    19ba:	0017979b          	slliw	a5,a5,0x1
    19be:	9fb5                	addw	a5,a5,a3
    19c0:	fd07861b          	addiw	a2,a5,-48
    19c4:	00054683          	lbu	a3,0(a0)
    19c8:	fd06871b          	addiw	a4,a3,-48
    19cc:	0ff77713          	andi	a4,a4,255
    19d0:	fee5f1e3          	bgeu	a1,a4,19b2 <atoi+0x3e>
    19d4:	02c8053b          	mulw	a0,a6,a2
    19d8:	8082                	ret
    19da:	0505                	addi	a0,a0,1
    19dc:	4805                	li	a6,1
    19de:	bf7d                	j	199c <atoi+0x28>
    19e0:	0505                	addi	a0,a0,1
    19e2:	587d                	li	a6,-1
    19e4:	bf65                	j	199c <atoi+0x28>
    19e6:	4601                	li	a2,0
    19e8:	b7f5                	j	19d4 <atoi+0x60>

00000000000019ea <check_file_handle>:
    19ea:	d8010113          	addi	sp,sp,-640
    19ee:	26113c23          	sd	ra,632(sp)
    19f2:	26813823          	sd	s0,624(sp)
    19f6:	26913423          	sd	s1,616(sp)
    19fa:	27213023          	sd	s2,608(sp)
    19fe:	25313c23          	sd	s3,600(sp)
    1a02:	25413823          	sd	s4,592(sp)
    1a06:	25513423          	sd	s5,584(sp)
    1a0a:	25613023          	sd	s6,576(sp)
    1a0e:	23713c23          	sd	s7,568(sp)
    1a12:	23813823          	sd	s8,560(sp)
    1a16:	23913423          	sd	s9,552(sp)
    1a1a:	23a13023          	sd	s10,544(sp)
    1a1e:	21b13c23          	sd	s11,536(sp)
    1a22:	8baa                	mv	s7,a0
    1a24:	8a2e                	mv	s4,a1
    1a26:	8c32                	mv	s8,a2
    1a28:	89b6                	mv	s3,a3
    1a2a:	040c                	addi	a1,sp,512
    1a2c:	00000097          	auipc	ra,0x0
    1a30:	28e080e7          	jalr	654(ra) # 1cba <fstat>
    1a34:	20813603          	ld	a2,520(sp)
    1a38:	03361163          	bne	a2,s3,1a5a <check_file_handle+0x70>
    1a3c:	06098763          	beqz	s3,1aaa <check_file_handle+0xc0>
    1a40:	4901                	li	s2,0
    1a42:	20000a93          	li	s5,512
    1a46:	00002cb7          	lui	s9,0x2
    1a4a:	00002db7          	lui	s11,0x2
    1a4e:	6b0d                	lui	s6,0x3
    1a50:	039b0b13          	addi	s6,s6,57 # 3039 <_shuffle+0x29>
    1a54:	00002d37          	lui	s10,0x2
    1a58:	aa39                	j	1b76 <check_file_handle+0x18c>
    1a5a:	86ce                	mv	a3,s3
    1a5c:	85d2                	mv	a1,s4
    1a5e:	00002537          	lui	a0,0x2
    1a62:	2f850513          	addi	a0,a0,760 # 22f8 <crctab+0x530>
    1a66:	00000097          	auipc	ra,0x0
    1a6a:	942080e7          	jalr	-1726(ra) # 13a8 <printf>
    1a6e:	fc0999e3          	bnez	s3,1a40 <check_file_handle+0x56>
    1a72:	20813683          	ld	a3,520(sp)
    1a76:	03368a63          	beq	a3,s3,1aaa <check_file_handle+0xc0>
    1a7a:	0a600813          	li	a6,166
    1a7e:	000027b7          	lui	a5,0x2
    1a82:	1c878793          	addi	a5,a5,456 # 21c8 <crctab+0x400>
    1a86:	874e                	mv	a4,s3
    1a88:	8652                	mv	a2,s4
    1a8a:	000025b7          	lui	a1,0x2
    1a8e:	3c858593          	addi	a1,a1,968 # 23c8 <crctab+0x600>
    1a92:	4509                	li	a0,2
    1a94:	00000097          	auipc	ra,0x0
    1a98:	8f2080e7          	jalr	-1806(ra) # 1386 <fprintf>
    1a9c:	650d                	lui	a0,0x3
    1a9e:	03950513          	addi	a0,a0,57 # 3039 <_shuffle+0x29>
    1aa2:	00000097          	auipc	ra,0x0
    1aa6:	1c8080e7          	jalr	456(ra) # 1c6a <exit>
    1aaa:	85d2                	mv	a1,s4
    1aac:	00002537          	lui	a0,0x2
    1ab0:	41050513          	addi	a0,a0,1040 # 2410 <crctab+0x648>
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	8f4080e7          	jalr	-1804(ra) # 13a8 <printf>
    1abc:	27813083          	ld	ra,632(sp)
    1ac0:	27013403          	ld	s0,624(sp)
    1ac4:	26813483          	ld	s1,616(sp)
    1ac8:	26013903          	ld	s2,608(sp)
    1acc:	25813983          	ld	s3,600(sp)
    1ad0:	25013a03          	ld	s4,592(sp)
    1ad4:	24813a83          	ld	s5,584(sp)
    1ad8:	24013b03          	ld	s6,576(sp)
    1adc:	23813b83          	ld	s7,568(sp)
    1ae0:	23013c03          	ld	s8,560(sp)
    1ae4:	22813c83          	ld	s9,552(sp)
    1ae8:	22013d03          	ld	s10,544(sp)
    1aec:	21813d83          	ld	s11,536(sp)
    1af0:	28010113          	addi	sp,sp,640
    1af4:	8082                	ret
    1af6:	09d00893          	li	a7,157
    1afa:	1c8c8813          	addi	a6,s9,456 # 21c8 <crctab+0x400>
    1afe:	87aa                	mv	a5,a0
    1b00:	8752                	mv	a4,s4
    1b02:	86ca                	mv	a3,s2
    1b04:	8622                	mv	a2,s0
    1b06:	328d8593          	addi	a1,s11,808 # 2328 <crctab+0x560>
    1b0a:	4509                	li	a0,2
    1b0c:	00000097          	auipc	ra,0x0
    1b10:	87a080e7          	jalr	-1926(ra) # 1386 <fprintf>
    1b14:	855a                	mv	a0,s6
    1b16:	00000097          	auipc	ra,0x0
    1b1a:	154080e7          	jalr	340(ra) # 1c6a <exit>
    1b1e:	a89d                	j	1b94 <check_file_handle+0x1aa>
    1b20:	00160593          	addi	a1,a2,1
    1b24:	0285f163          	bgeu	a1,s0,1b46 <check_file_handle+0x15c>
    1b28:	00c10733          	add	a4,sp,a2
    1b2c:	00b487b3          	add	a5,s1,a1
    1b30:	00174683          	lbu	a3,1(a4)
    1b34:	0007c783          	lbu	a5,0(a5)
    1b38:	00f68763          	beq	a3,a5,1b46 <check_file_handle+0x15c>
    1b3c:	0585                	addi	a1,a1,1
    1b3e:	0705                	addi	a4,a4,1
    1b40:	feb416e3          	bne	s0,a1,1b2c <check_file_handle+0x142>
    1b44:	85a2                	mv	a1,s0
    1b46:	08100813          	li	a6,129
    1b4a:	1c8c8793          	addi	a5,s9,456
    1b4e:	8752                	mv	a4,s4
    1b50:	012606b3          	add	a3,a2,s2
    1b54:	40c58633          	sub	a2,a1,a2
    1b58:	370d0593          	addi	a1,s10,880 # 2370 <crctab+0x5a8>
    1b5c:	4509                	li	a0,2
    1b5e:	00000097          	auipc	ra,0x0
    1b62:	828080e7          	jalr	-2008(ra) # 1386 <fprintf>
    1b66:	855a                	mv	a0,s6
    1b68:	00000097          	auipc	ra,0x0
    1b6c:	102080e7          	jalr	258(ra) # 1c6a <exit>
    1b70:	9922                	add	s2,s2,s0
    1b72:	f13970e3          	bgeu	s2,s3,1a72 <check_file_handle+0x88>
    1b76:	41298433          	sub	s0,s3,s2
    1b7a:	008af363          	bgeu	s5,s0,1b80 <check_file_handle+0x196>
    1b7e:	8456                	mv	s0,s5
    1b80:	0004061b          	sext.w	a2,s0
    1b84:	858a                	mv	a1,sp
    1b86:	855e                	mv	a0,s7
    1b88:	00000097          	auipc	ra,0x0
    1b8c:	10a080e7          	jalr	266(ra) # 1c92 <read>
    1b90:	f68513e3          	bne	a0,s0,1af6 <check_file_handle+0x10c>
    1b94:	012c04b3          	add	s1,s8,s2
    1b98:	8622                	mv	a2,s0
    1b9a:	85a6                	mv	a1,s1
    1b9c:	850a                	mv	a0,sp
    1b9e:	00000097          	auipc	ra,0x0
    1ba2:	bce080e7          	jalr	-1074(ra) # 176c <memcmp>
    1ba6:	d569                	beqz	a0,1b70 <check_file_handle+0x186>
    1ba8:	03298163          	beq	s3,s2,1bca <check_file_handle+0x1e0>
    1bac:	870a                	mv	a4,sp
    1bae:	4601                	li	a2,0
    1bb0:	00c487b3          	add	a5,s1,a2
    1bb4:	00074683          	lbu	a3,0(a4)
    1bb8:	0007c783          	lbu	a5,0(a5)
    1bbc:	f6f692e3          	bne	a3,a5,1b20 <check_file_handle+0x136>
    1bc0:	0605                	addi	a2,a2,1
    1bc2:	0705                	addi	a4,a4,1
    1bc4:	fe8666e3          	bltu	a2,s0,1bb0 <check_file_handle+0x1c6>
    1bc8:	bfa1                	j	1b20 <check_file_handle+0x136>
    1bca:	4601                	li	a2,0
    1bcc:	4585                	li	a1,1
    1bce:	bfa5                	j	1b46 <check_file_handle+0x15c>

0000000000001bd0 <check_file>:
    1bd0:	7179                	addi	sp,sp,-48
    1bd2:	f406                	sd	ra,40(sp)
    1bd4:	f022                	sd	s0,32(sp)
    1bd6:	ec26                	sd	s1,24(sp)
    1bd8:	e84a                	sd	s2,16(sp)
    1bda:	e44e                	sd	s3,8(sp)
    1bdc:	84aa                	mv	s1,a0
    1bde:	892e                	mv	s2,a1
    1be0:	89b2                	mv	s3,a2
    1be2:	4581                	li	a1,0
    1be4:	00000097          	auipc	ra,0x0
    1be8:	0a6080e7          	jalr	166(ra) # 1c8a <open>
    1bec:	842a                	mv	s0,a0
    1bee:	4789                	li	a5,2
    1bf0:	02a7df63          	bge	a5,a0,1c2e <check_file+0x5e>
    1bf4:	86ce                	mv	a3,s3
    1bf6:	864a                	mv	a2,s2
    1bf8:	85a6                	mv	a1,s1
    1bfa:	8522                	mv	a0,s0
    1bfc:	00000097          	auipc	ra,0x0
    1c00:	dee080e7          	jalr	-530(ra) # 19ea <check_file_handle>
    1c04:	85a6                	mv	a1,s1
    1c06:	00002537          	lui	a0,0x2
    1c0a:	49850513          	addi	a0,a0,1176 # 2498 <crctab+0x6d0>
    1c0e:	fffff097          	auipc	ra,0xfffff
    1c12:	79a080e7          	jalr	1946(ra) # 13a8 <printf>
    1c16:	8522                	mv	a0,s0
    1c18:	00000097          	auipc	ra,0x0
    1c1c:	09a080e7          	jalr	154(ra) # 1cb2 <close>
    1c20:	70a2                	ld	ra,40(sp)
    1c22:	7402                	ld	s0,32(sp)
    1c24:	64e2                	ld	s1,24(sp)
    1c26:	6942                	ld	s2,16(sp)
    1c28:	69a2                	ld	s3,8(sp)
    1c2a:	6145                	addi	sp,sp,48
    1c2c:	8082                	ret
    1c2e:	0ae00713          	li	a4,174
    1c32:	000026b7          	lui	a3,0x2
    1c36:	1c868693          	addi	a3,a3,456 # 21c8 <crctab+0x400>
    1c3a:	8626                	mv	a2,s1
    1c3c:	000025b7          	lui	a1,0x2
    1c40:	43058593          	addi	a1,a1,1072 # 2430 <crctab+0x668>
    1c44:	4509                	li	a0,2
    1c46:	fffff097          	auipc	ra,0xfffff
    1c4a:	740080e7          	jalr	1856(ra) # 1386 <fprintf>
    1c4e:	650d                	lui	a0,0x3
    1c50:	03950513          	addi	a0,a0,57 # 3039 <_shuffle+0x29>
    1c54:	00000097          	auipc	ra,0x0
    1c58:	016080e7          	jalr	22(ra) # 1c6a <exit>
    1c5c:	bf61                	j	1bf4 <check_file+0x24>

0000000000001c5e <r_sp>:
    1c5e:	850a                	mv	a0,sp
    1c60:	8082                	ret

0000000000001c62 <halt>:
    1c62:	4885                	li	a7,1
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <exit>:
    1c6a:	4889                	li	a7,2
    1c6c:	00000073          	ecall
    1c70:	8082                	ret

0000000000001c72 <exec>:
    1c72:	488d                	li	a7,3
    1c74:	00000073          	ecall
    1c78:	8082                	ret

0000000000001c7a <wait>:
    1c7a:	4891                	li	a7,4
    1c7c:	00000073          	ecall
    1c80:	8082                	ret

0000000000001c82 <remove>:
    1c82:	4895                	li	a7,5
    1c84:	00000073          	ecall
    1c88:	8082                	ret

0000000000001c8a <open>:
    1c8a:	4899                	li	a7,6
    1c8c:	00000073          	ecall
    1c90:	8082                	ret

0000000000001c92 <read>:
    1c92:	489d                	li	a7,7
    1c94:	00000073          	ecall
    1c98:	8082                	ret

0000000000001c9a <write>:
    1c9a:	48a1                	li	a7,8
    1c9c:	00000073          	ecall
    1ca0:	8082                	ret

0000000000001ca2 <seek>:
    1ca2:	48a5                	li	a7,9
    1ca4:	00000073          	ecall
    1ca8:	8082                	ret

0000000000001caa <tell>:
    1caa:	48a9                	li	a7,10
    1cac:	00000073          	ecall
    1cb0:	8082                	ret

0000000000001cb2 <close>:
    1cb2:	48ad                	li	a7,11
    1cb4:	00000073          	ecall
    1cb8:	8082                	ret

0000000000001cba <fstat>:
    1cba:	48b1                	li	a7,12
    1cbc:	00000073          	ecall
    1cc0:	8082                	ret

0000000000001cc2 <mmap>:
    1cc2:	48b5                	li	a7,13
    1cc4:	00000073          	ecall
    1cc8:	8082                	ret

0000000000001cca <munmap>:
    1cca:	48b9                	li	a7,14
    1ccc:	00000073          	ecall
    1cd0:	8082                	ret

0000000000001cd2 <chdir>:
    1cd2:	48bd                	li	a7,15
    1cd4:	00000073          	ecall
    1cd8:	8082                	ret

0000000000001cda <mkdir>:
    1cda:	48c1                	li	a7,16
    1cdc:	00000073          	ecall
    1ce0:	8082                	ret
