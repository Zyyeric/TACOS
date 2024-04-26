
build/user/vm/child-sort:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	e426                	sd	s1,8(sp)
    1008:	87ae                	mv	a5,a1
    100a:	4589                	li	a1,2
    100c:	6788                	ld	a0,8(a5)
    100e:	00001097          	auipc	ra,0x1
    1012:	c82080e7          	jalr	-894(ra) # 1c90 <open>
    1016:	842a                	mv	s0,a0
    1018:	4789                	li	a5,2
    101a:	04a7df63          	bge	a5,a0,1078 <main+0x78>
    101e:	00020637          	lui	a2,0x20
    1022:	000045b7          	lui	a1,0x4
    1026:	81058593          	addi	a1,a1,-2032 # 3810 <buf>
    102a:	8522                	mv	a0,s0
    102c:	00001097          	auipc	ra,0x1
    1030:	c6c080e7          	jalr	-916(ra) # 1c98 <read>
    1034:	84aa                	mv	s1,a0
    1036:	c50d                	beqz	a0,1060 <main+0x60>
    1038:	00004737          	lui	a4,0x4
    103c:	81070713          	addi	a4,a4,-2032 # 3810 <buf>
    1040:	00a705b3          	add	a1,a4,a0
    1044:	00003637          	lui	a2,0x3
    1048:	01060613          	addi	a2,a2,16 # 3010 <histogram>
    104c:	00074783          	lbu	a5,0(a4)
    1050:	078e                	slli	a5,a5,0x3
    1052:	97b2                	add	a5,a5,a2
    1054:	6394                	ld	a3,0(a5)
    1056:	0685                	addi	a3,a3,1
    1058:	e394                	sd	a3,0(a5)
    105a:	0705                	addi	a4,a4,1
    105c:	fee598e3          	bne	a1,a4,104c <main+0x4c>
    1060:	00003637          	lui	a2,0x3
    1064:	01060613          	addi	a2,a2,16 # 3010 <histogram>
    1068:	4681                	li	a3,0
    106a:	000047b7          	lui	a5,0x4
    106e:	81078793          	addi	a5,a5,-2032 # 3810 <buf>
    1072:	10000593          	li	a1,256
    1076:	a81d                	j	10ac <main+0xac>
    1078:	46c1                	li	a3,16
    107a:	00002637          	lui	a2,0x2
    107e:	cf060613          	addi	a2,a2,-784 # 1cf0 <mkdir+0x10>
    1082:	000025b7          	lui	a1,0x2
    1086:	d0858593          	addi	a1,a1,-760 # 1d08 <mkdir+0x28>
    108a:	4509                	li	a0,2
    108c:	00000097          	auipc	ra,0x0
    1090:	300080e7          	jalr	768(ra) # 138c <fprintf>
    1094:	650d                	lui	a0,0x3
    1096:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    109a:	00001097          	auipc	ra,0x1
    109e:	bd6080e7          	jalr	-1066(ra) # 1c70 <exit>
    10a2:	bfb5                	j	101e <main+0x1e>
    10a4:	0685                	addi	a3,a3,1
    10a6:	0621                	addi	a2,a2,8
    10a8:	00b68c63          	beq	a3,a1,10c0 <main+0xc0>
    10ac:	6218                	ld	a4,0(a2)
    10ae:	db7d                	beqz	a4,10a4 <main+0xa4>
    10b0:	973e                	add	a4,a4,a5
    10b2:	0785                	addi	a5,a5,1
    10b4:	fed78fa3          	sb	a3,-1(a5)
    10b8:	fef71de3          	bne	a4,a5,10b2 <main+0xb2>
    10bc:	87ba                	mv	a5,a4
    10be:	b7dd                	j	10a4 <main+0xa4>
    10c0:	4581                	li	a1,0
    10c2:	8522                	mv	a0,s0
    10c4:	00001097          	auipc	ra,0x1
    10c8:	be4080e7          	jalr	-1052(ra) # 1ca8 <seek>
    10cc:	0004861b          	sext.w	a2,s1
    10d0:	000045b7          	lui	a1,0x4
    10d4:	81058593          	addi	a1,a1,-2032 # 3810 <buf>
    10d8:	8522                	mv	a0,s0
    10da:	00001097          	auipc	ra,0x1
    10de:	bc6080e7          	jalr	-1082(ra) # 1ca0 <write>
    10e2:	8522                	mv	a0,s0
    10e4:	00001097          	auipc	ra,0x1
    10e8:	bd4080e7          	jalr	-1068(ra) # 1cb8 <close>
    10ec:	07b00513          	li	a0,123
    10f0:	00001097          	auipc	ra,0x1
    10f4:	b80080e7          	jalr	-1152(ra) # 1c70 <exit>
    10f8:	60e2                	ld	ra,24(sp)
    10fa:	6442                	ld	s0,16(sp)
    10fc:	64a2                	ld	s1,8(sp)
    10fe:	6105                	addi	sp,sp,32
    1100:	8082                	ret

0000000000001102 <putc>:
    1102:	1101                	addi	sp,sp,-32
    1104:	ec06                	sd	ra,24(sp)
    1106:	00b107a3          	sb	a1,15(sp)
    110a:	4605                	li	a2,1
    110c:	00f10593          	addi	a1,sp,15
    1110:	00001097          	auipc	ra,0x1
    1114:	b90080e7          	jalr	-1136(ra) # 1ca0 <write>
    1118:	60e2                	ld	ra,24(sp)
    111a:	6105                	addi	sp,sp,32
    111c:	8082                	ret

000000000000111e <printint>:
    111e:	7179                	addi	sp,sp,-48
    1120:	f406                	sd	ra,40(sp)
    1122:	f022                	sd	s0,32(sp)
    1124:	ec26                	sd	s1,24(sp)
    1126:	e84a                	sd	s2,16(sp)
    1128:	84aa                	mv	s1,a0
    112a:	c299                	beqz	a3,1130 <printint+0x12>
    112c:	0805c363          	bltz	a1,11b2 <printint+0x94>
    1130:	2581                	sext.w	a1,a1
    1132:	4881                	li	a7,0
    1134:	868a                	mv	a3,sp
    1136:	4701                	li	a4,0
    1138:	2601                	sext.w	a2,a2
    113a:	00002537          	lui	a0,0x2
    113e:	d6050513          	addi	a0,a0,-672 # 1d60 <digits>
    1142:	883a                	mv	a6,a4
    1144:	2705                	addiw	a4,a4,1
    1146:	02c5f7bb          	remuw	a5,a1,a2
    114a:	1782                	slli	a5,a5,0x20
    114c:	9381                	srli	a5,a5,0x20
    114e:	97aa                	add	a5,a5,a0
    1150:	0007c783          	lbu	a5,0(a5)
    1154:	00f68023          	sb	a5,0(a3)
    1158:	0005879b          	sext.w	a5,a1
    115c:	02c5d5bb          	divuw	a1,a1,a2
    1160:	0685                	addi	a3,a3,1
    1162:	fec7f0e3          	bgeu	a5,a2,1142 <printint+0x24>
    1166:	00088a63          	beqz	a7,117a <printint+0x5c>
    116a:	081c                	addi	a5,sp,16
    116c:	973e                	add	a4,a4,a5
    116e:	02d00793          	li	a5,45
    1172:	fef70823          	sb	a5,-16(a4)
    1176:	0028071b          	addiw	a4,a6,2
    117a:	02e05663          	blez	a4,11a6 <printint+0x88>
    117e:	00e10433          	add	s0,sp,a4
    1182:	fff10913          	addi	s2,sp,-1
    1186:	993a                	add	s2,s2,a4
    1188:	377d                	addiw	a4,a4,-1
    118a:	1702                	slli	a4,a4,0x20
    118c:	9301                	srli	a4,a4,0x20
    118e:	40e90933          	sub	s2,s2,a4
    1192:	fff44583          	lbu	a1,-1(s0)
    1196:	8526                	mv	a0,s1
    1198:	00000097          	auipc	ra,0x0
    119c:	f6a080e7          	jalr	-150(ra) # 1102 <putc>
    11a0:	147d                	addi	s0,s0,-1
    11a2:	ff2418e3          	bne	s0,s2,1192 <printint+0x74>
    11a6:	70a2                	ld	ra,40(sp)
    11a8:	7402                	ld	s0,32(sp)
    11aa:	64e2                	ld	s1,24(sp)
    11ac:	6942                	ld	s2,16(sp)
    11ae:	6145                	addi	sp,sp,48
    11b0:	8082                	ret
    11b2:	40b005bb          	negw	a1,a1
    11b6:	4885                	li	a7,1
    11b8:	bfb5                	j	1134 <printint+0x16>

00000000000011ba <vprintf>:
    11ba:	7159                	addi	sp,sp,-112
    11bc:	f486                	sd	ra,104(sp)
    11be:	f0a2                	sd	s0,96(sp)
    11c0:	eca6                	sd	s1,88(sp)
    11c2:	e8ca                	sd	s2,80(sp)
    11c4:	e4ce                	sd	s3,72(sp)
    11c6:	e0d2                	sd	s4,64(sp)
    11c8:	fc56                	sd	s5,56(sp)
    11ca:	f85a                	sd	s6,48(sp)
    11cc:	f45e                	sd	s7,40(sp)
    11ce:	f062                	sd	s8,32(sp)
    11d0:	ec66                	sd	s9,24(sp)
    11d2:	e86a                	sd	s10,16(sp)
    11d4:	e46e                	sd	s11,8(sp)
    11d6:	0005c483          	lbu	s1,0(a1)
    11da:	18048a63          	beqz	s1,136e <vprintf+0x1b4>
    11de:	8a2a                	mv	s4,a0
    11e0:	8ab2                	mv	s5,a2
    11e2:	00158413          	addi	s0,a1,1
    11e6:	4901                	li	s2,0
    11e8:	02500993          	li	s3,37
    11ec:	06400b93          	li	s7,100
    11f0:	06c00c13          	li	s8,108
    11f4:	07800c93          	li	s9,120
    11f8:	07000d13          	li	s10,112
    11fc:	00002db7          	lui	s11,0x2
    1200:	00002b37          	lui	s6,0x2
    1204:	d60b0b13          	addi	s6,s6,-672 # 1d60 <digits>
    1208:	a839                	j	1226 <vprintf+0x6c>
    120a:	85a6                	mv	a1,s1
    120c:	8552                	mv	a0,s4
    120e:	00000097          	auipc	ra,0x0
    1212:	ef4080e7          	jalr	-268(ra) # 1102 <putc>
    1216:	a019                	j	121c <vprintf+0x62>
    1218:	01390f63          	beq	s2,s3,1236 <vprintf+0x7c>
    121c:	0405                	addi	s0,s0,1
    121e:	fff44483          	lbu	s1,-1(s0)
    1222:	14048663          	beqz	s1,136e <vprintf+0x1b4>
    1226:	0004879b          	sext.w	a5,s1
    122a:	fe0917e3          	bnez	s2,1218 <vprintf+0x5e>
    122e:	fd379ee3          	bne	a5,s3,120a <vprintf+0x50>
    1232:	893e                	mv	s2,a5
    1234:	b7e5                	j	121c <vprintf+0x62>
    1236:	05778063          	beq	a5,s7,1276 <vprintf+0xbc>
    123a:	05878c63          	beq	a5,s8,1292 <vprintf+0xd8>
    123e:	07978863          	beq	a5,s9,12ae <vprintf+0xf4>
    1242:	09a78463          	beq	a5,s10,12ca <vprintf+0x110>
    1246:	07300713          	li	a4,115
    124a:	0ce78263          	beq	a5,a4,130e <vprintf+0x154>
    124e:	06300713          	li	a4,99
    1252:	0ee78763          	beq	a5,a4,1340 <vprintf+0x186>
    1256:	11378163          	beq	a5,s3,1358 <vprintf+0x19e>
    125a:	85ce                	mv	a1,s3
    125c:	8552                	mv	a0,s4
    125e:	00000097          	auipc	ra,0x0
    1262:	ea4080e7          	jalr	-348(ra) # 1102 <putc>
    1266:	85a6                	mv	a1,s1
    1268:	8552                	mv	a0,s4
    126a:	00000097          	auipc	ra,0x0
    126e:	e98080e7          	jalr	-360(ra) # 1102 <putc>
    1272:	4901                	li	s2,0
    1274:	b765                	j	121c <vprintf+0x62>
    1276:	008a8493          	addi	s1,s5,8
    127a:	4685                	li	a3,1
    127c:	4629                	li	a2,10
    127e:	000aa583          	lw	a1,0(s5)
    1282:	8552                	mv	a0,s4
    1284:	00000097          	auipc	ra,0x0
    1288:	e9a080e7          	jalr	-358(ra) # 111e <printint>
    128c:	8aa6                	mv	s5,s1
    128e:	4901                	li	s2,0
    1290:	b771                	j	121c <vprintf+0x62>
    1292:	008a8493          	addi	s1,s5,8
    1296:	4681                	li	a3,0
    1298:	4629                	li	a2,10
    129a:	000aa583          	lw	a1,0(s5)
    129e:	8552                	mv	a0,s4
    12a0:	00000097          	auipc	ra,0x0
    12a4:	e7e080e7          	jalr	-386(ra) # 111e <printint>
    12a8:	8aa6                	mv	s5,s1
    12aa:	4901                	li	s2,0
    12ac:	bf85                	j	121c <vprintf+0x62>
    12ae:	008a8493          	addi	s1,s5,8
    12b2:	4681                	li	a3,0
    12b4:	4641                	li	a2,16
    12b6:	000aa583          	lw	a1,0(s5)
    12ba:	8552                	mv	a0,s4
    12bc:	00000097          	auipc	ra,0x0
    12c0:	e62080e7          	jalr	-414(ra) # 111e <printint>
    12c4:	8aa6                	mv	s5,s1
    12c6:	4901                	li	s2,0
    12c8:	bf91                	j	121c <vprintf+0x62>
    12ca:	008a8913          	addi	s2,s5,8
    12ce:	000aba83          	ld	s5,0(s5)
    12d2:	03000593          	li	a1,48
    12d6:	8552                	mv	a0,s4
    12d8:	00000097          	auipc	ra,0x0
    12dc:	e2a080e7          	jalr	-470(ra) # 1102 <putc>
    12e0:	85e6                	mv	a1,s9
    12e2:	8552                	mv	a0,s4
    12e4:	00000097          	auipc	ra,0x0
    12e8:	e1e080e7          	jalr	-482(ra) # 1102 <putc>
    12ec:	44c1                	li	s1,16
    12ee:	03cad793          	srli	a5,s5,0x3c
    12f2:	97da                	add	a5,a5,s6
    12f4:	0007c583          	lbu	a1,0(a5)
    12f8:	8552                	mv	a0,s4
    12fa:	00000097          	auipc	ra,0x0
    12fe:	e08080e7          	jalr	-504(ra) # 1102 <putc>
    1302:	0a92                	slli	s5,s5,0x4
    1304:	34fd                	addiw	s1,s1,-1
    1306:	f4e5                	bnez	s1,12ee <vprintf+0x134>
    1308:	8aca                	mv	s5,s2
    130a:	4901                	li	s2,0
    130c:	bf01                	j	121c <vprintf+0x62>
    130e:	008a8913          	addi	s2,s5,8
    1312:	000ab483          	ld	s1,0(s5)
    1316:	c085                	beqz	s1,1336 <vprintf+0x17c>
    1318:	0004c583          	lbu	a1,0(s1)
    131c:	c5b1                	beqz	a1,1368 <vprintf+0x1ae>
    131e:	8552                	mv	a0,s4
    1320:	00000097          	auipc	ra,0x0
    1324:	de2080e7          	jalr	-542(ra) # 1102 <putc>
    1328:	0485                	addi	s1,s1,1
    132a:	0004c583          	lbu	a1,0(s1)
    132e:	f9e5                	bnez	a1,131e <vprintf+0x164>
    1330:	8aca                	mv	s5,s2
    1332:	4901                	li	s2,0
    1334:	b5e5                	j	121c <vprintf+0x62>
    1336:	d58d8493          	addi	s1,s11,-680 # 1d58 <mkdir+0x78>
    133a:	02800593          	li	a1,40
    133e:	b7c5                	j	131e <vprintf+0x164>
    1340:	008a8493          	addi	s1,s5,8
    1344:	000ac583          	lbu	a1,0(s5)
    1348:	8552                	mv	a0,s4
    134a:	00000097          	auipc	ra,0x0
    134e:	db8080e7          	jalr	-584(ra) # 1102 <putc>
    1352:	8aa6                	mv	s5,s1
    1354:	4901                	li	s2,0
    1356:	b5d9                	j	121c <vprintf+0x62>
    1358:	85ce                	mv	a1,s3
    135a:	8552                	mv	a0,s4
    135c:	00000097          	auipc	ra,0x0
    1360:	da6080e7          	jalr	-602(ra) # 1102 <putc>
    1364:	4901                	li	s2,0
    1366:	bd5d                	j	121c <vprintf+0x62>
    1368:	8aca                	mv	s5,s2
    136a:	4901                	li	s2,0
    136c:	bd45                	j	121c <vprintf+0x62>
    136e:	70a6                	ld	ra,104(sp)
    1370:	7406                	ld	s0,96(sp)
    1372:	64e6                	ld	s1,88(sp)
    1374:	6946                	ld	s2,80(sp)
    1376:	69a6                	ld	s3,72(sp)
    1378:	6a06                	ld	s4,64(sp)
    137a:	7ae2                	ld	s5,56(sp)
    137c:	7b42                	ld	s6,48(sp)
    137e:	7ba2                	ld	s7,40(sp)
    1380:	7c02                	ld	s8,32(sp)
    1382:	6ce2                	ld	s9,24(sp)
    1384:	6d42                	ld	s10,16(sp)
    1386:	6da2                	ld	s11,8(sp)
    1388:	6165                	addi	sp,sp,112
    138a:	8082                	ret

000000000000138c <fprintf>:
    138c:	715d                	addi	sp,sp,-80
    138e:	ec06                	sd	ra,24(sp)
    1390:	f032                	sd	a2,32(sp)
    1392:	f436                	sd	a3,40(sp)
    1394:	f83a                	sd	a4,48(sp)
    1396:	fc3e                	sd	a5,56(sp)
    1398:	e0c2                	sd	a6,64(sp)
    139a:	e4c6                	sd	a7,72(sp)
    139c:	1010                	addi	a2,sp,32
    139e:	e432                	sd	a2,8(sp)
    13a0:	00000097          	auipc	ra,0x0
    13a4:	e1a080e7          	jalr	-486(ra) # 11ba <vprintf>
    13a8:	60e2                	ld	ra,24(sp)
    13aa:	6161                	addi	sp,sp,80
    13ac:	8082                	ret

00000000000013ae <printf>:
    13ae:	711d                	addi	sp,sp,-96
    13b0:	ec06                	sd	ra,24(sp)
    13b2:	f42e                	sd	a1,40(sp)
    13b4:	f832                	sd	a2,48(sp)
    13b6:	fc36                	sd	a3,56(sp)
    13b8:	e0ba                	sd	a4,64(sp)
    13ba:	e4be                	sd	a5,72(sp)
    13bc:	e8c2                	sd	a6,80(sp)
    13be:	ecc6                	sd	a7,88(sp)
    13c0:	1030                	addi	a2,sp,40
    13c2:	e432                	sd	a2,8(sp)
    13c4:	85aa                	mv	a1,a0
    13c6:	4505                	li	a0,1
    13c8:	00000097          	auipc	ra,0x0
    13cc:	df2080e7          	jalr	-526(ra) # 11ba <vprintf>
    13d0:	60e2                	ld	ra,24(sp)
    13d2:	6125                	addi	sp,sp,96
    13d4:	8082                	ret

00000000000013d6 <cksum>:
    13d6:	cdb1                	beqz	a1,1432 <cksum+0x5c>
    13d8:	00b50833          	add	a6,a0,a1
    13dc:	4781                	li	a5,0
    13de:	00002637          	lui	a2,0x2
    13e2:	d7860613          	addi	a2,a2,-648 # 1d78 <crctab>
    13e6:	0505                	addi	a0,a0,1
    13e8:	0087969b          	slliw	a3,a5,0x8
    13ec:	0187d71b          	srliw	a4,a5,0x18
    13f0:	fff54783          	lbu	a5,-1(a0)
    13f4:	8f3d                	xor	a4,a4,a5
    13f6:	1702                	slli	a4,a4,0x20
    13f8:	9301                	srli	a4,a4,0x20
    13fa:	070a                	slli	a4,a4,0x2
    13fc:	9732                	add	a4,a4,a2
    13fe:	431c                	lw	a5,0(a4)
    1400:	8fb5                	xor	a5,a5,a3
    1402:	2781                	sext.w	a5,a5
    1404:	fea811e3          	bne	a6,a0,13e6 <cksum+0x10>
    1408:	00002637          	lui	a2,0x2
    140c:	d7860613          	addi	a2,a2,-648 # 1d78 <crctab>
    1410:	0ff5f693          	andi	a3,a1,255
    1414:	81a1                	srli	a1,a1,0x8
    1416:	0087951b          	slliw	a0,a5,0x8
    141a:	0187d71b          	srliw	a4,a5,0x18
    141e:	8f35                	xor	a4,a4,a3
    1420:	070a                	slli	a4,a4,0x2
    1422:	9732                	add	a4,a4,a2
    1424:	431c                	lw	a5,0(a4)
    1426:	8fa9                	xor	a5,a5,a0
    1428:	2781                	sext.w	a5,a5
    142a:	f1fd                	bnez	a1,1410 <cksum+0x3a>
    142c:	fff7c513          	not	a0,a5
    1430:	8082                	ret
    1432:	4781                	li	a5,0
    1434:	bfe5                	j	142c <cksum+0x56>

0000000000001436 <swap_bytes>:
    1436:	ce19                	beqz	a2,1454 <swap_bytes+0x1e>
    1438:	87aa                	mv	a5,a0
    143a:	962a                	add	a2,a2,a0
    143c:	0007c703          	lbu	a4,0(a5)
    1440:	0005c683          	lbu	a3,0(a1)
    1444:	00d78023          	sb	a3,0(a5)
    1448:	00e58023          	sb	a4,0(a1)
    144c:	0785                	addi	a5,a5,1
    144e:	0585                	addi	a1,a1,1
    1450:	fec796e3          	bne	a5,a2,143c <swap_bytes+0x6>
    1454:	8082                	ret

0000000000001456 <random_init>:
    1456:	7139                	addi	sp,sp,-64
    1458:	fc06                	sd	ra,56(sp)
    145a:	f822                	sd	s0,48(sp)
    145c:	f426                	sd	s1,40(sp)
    145e:	f04a                	sd	s2,32(sp)
    1460:	ec4e                	sd	s3,24(sp)
    1462:	e852                	sd	s4,16(sp)
    1464:	c62a                	sw	a0,12(sp)
    1466:	000037b7          	lui	a5,0x3
    146a:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    146e:	eca5                	bnez	s1,14e6 <random_init+0x90>
    1470:	00024737          	lui	a4,0x24
    1474:	81070913          	addi	s2,a4,-2032 # 23810 <s>
    1478:	81070713          	addi	a4,a4,-2032
    147c:	87a6                	mv	a5,s1
    147e:	10000693          	li	a3,256
    1482:	00f70023          	sb	a5,0(a4)
    1486:	2785                	addiw	a5,a5,1
    1488:	0705                	addi	a4,a4,1
    148a:	fed79ce3          	bne	a5,a3,1482 <random_init+0x2c>
    148e:	4401                	li	s0,0
    1490:	000249b7          	lui	s3,0x24
    1494:	81098993          	addi	s3,s3,-2032 # 23810 <s>
    1498:	10000a13          	li	s4,256
    149c:	0034f793          	andi	a5,s1,3
    14a0:	0818                	addi	a4,sp,16
    14a2:	97ba                	add	a5,a5,a4
    14a4:	ffc7c783          	lbu	a5,-4(a5)
    14a8:	00094703          	lbu	a4,0(s2)
    14ac:	9fb9                	addw	a5,a5,a4
    14ae:	9c3d                	addw	s0,s0,a5
    14b0:	0ff47413          	andi	s0,s0,255
    14b4:	4605                	li	a2,1
    14b6:	008985b3          	add	a1,s3,s0
    14ba:	854a                	mv	a0,s2
    14bc:	00000097          	auipc	ra,0x0
    14c0:	f7a080e7          	jalr	-134(ra) # 1436 <swap_bytes>
    14c4:	2485                	addiw	s1,s1,1
    14c6:	0905                	addi	s2,s2,1
    14c8:	fd449ae3          	bne	s1,s4,149c <random_init+0x46>
    14cc:	000037b7          	lui	a5,0x3
    14d0:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14d4:	000037b7          	lui	a5,0x3
    14d8:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14dc:	000037b7          	lui	a5,0x3
    14e0:	4705                	li	a4,1
    14e2:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14e6:	70e2                	ld	ra,56(sp)
    14e8:	7442                	ld	s0,48(sp)
    14ea:	74a2                	ld	s1,40(sp)
    14ec:	7902                	ld	s2,32(sp)
    14ee:	69e2                	ld	s3,24(sp)
    14f0:	6a42                	ld	s4,16(sp)
    14f2:	6121                	addi	sp,sp,64
    14f4:	8082                	ret

00000000000014f6 <random_bytes>:
    14f6:	7139                	addi	sp,sp,-64
    14f8:	fc06                	sd	ra,56(sp)
    14fa:	f822                	sd	s0,48(sp)
    14fc:	f426                	sd	s1,40(sp)
    14fe:	f04a                	sd	s2,32(sp)
    1500:	ec4e                	sd	s3,24(sp)
    1502:	e852                	sd	s4,16(sp)
    1504:	e456                	sd	s5,8(sp)
    1506:	e05a                	sd	s6,0(sp)
    1508:	892a                	mv	s2,a0
    150a:	8aae                	mv	s5,a1
    150c:	000037b7          	lui	a5,0x3
    1510:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1514:	c3c1                	beqz	a5,1594 <random_bytes+0x9e>
    1516:	060a8563          	beqz	s5,1580 <random_bytes+0x8a>
    151a:	9aca                	add	s5,s5,s2
    151c:	00003a37          	lui	s4,0x3
    1520:	000244b7          	lui	s1,0x24
    1524:	81048493          	addi	s1,s1,-2032 # 23810 <s>
    1528:	000039b7          	lui	s3,0x3
    152c:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1530:	2505                	addiw	a0,a0,1
    1532:	0ff57513          	andi	a0,a0,255
    1536:	00aa02a3          	sb	a0,5(s4)
    153a:	00a48b33          	add	s6,s1,a0
    153e:	000b4403          	lbu	s0,0(s6)
    1542:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1546:	9c3d                	addw	s0,s0,a5
    1548:	0ff47413          	andi	s0,s0,255
    154c:	00898223          	sb	s0,4(s3)
    1550:	4605                	li	a2,1
    1552:	008485b3          	add	a1,s1,s0
    1556:	855a                	mv	a0,s6
    1558:	00000097          	auipc	ra,0x0
    155c:	ede080e7          	jalr	-290(ra) # 1436 <swap_bytes>
    1560:	9426                	add	s0,s0,s1
    1562:	000b4783          	lbu	a5,0(s6)
    1566:	00044703          	lbu	a4,0(s0)
    156a:	9fb9                	addw	a5,a5,a4
    156c:	0ff7f793          	andi	a5,a5,255
    1570:	97a6                	add	a5,a5,s1
    1572:	0007c783          	lbu	a5,0(a5)
    1576:	00f90023          	sb	a5,0(s2)
    157a:	0905                	addi	s2,s2,1
    157c:	fb2a98e3          	bne	s5,s2,152c <random_bytes+0x36>
    1580:	70e2                	ld	ra,56(sp)
    1582:	7442                	ld	s0,48(sp)
    1584:	74a2                	ld	s1,40(sp)
    1586:	7902                	ld	s2,32(sp)
    1588:	69e2                	ld	s3,24(sp)
    158a:	6a42                	ld	s4,16(sp)
    158c:	6aa2                	ld	s5,8(sp)
    158e:	6b02                	ld	s6,0(sp)
    1590:	6121                	addi	sp,sp,64
    1592:	8082                	ret
    1594:	4501                	li	a0,0
    1596:	00000097          	auipc	ra,0x0
    159a:	ec0080e7          	jalr	-320(ra) # 1456 <random_init>
    159e:	bfa5                	j	1516 <random_bytes+0x20>

00000000000015a0 <random_ulong>:
    15a0:	1101                	addi	sp,sp,-32
    15a2:	ec06                	sd	ra,24(sp)
    15a4:	45a1                	li	a1,8
    15a6:	0028                	addi	a0,sp,8
    15a8:	00000097          	auipc	ra,0x0
    15ac:	f4e080e7          	jalr	-178(ra) # 14f6 <random_bytes>
    15b0:	6522                	ld	a0,8(sp)
    15b2:	60e2                	ld	ra,24(sp)
    15b4:	6105                	addi	sp,sp,32
    15b6:	8082                	ret

00000000000015b8 <shuffle>:
    15b8:	c9b9                	beqz	a1,160e <shuffle+0x56>
    15ba:	7179                	addi	sp,sp,-48
    15bc:	f406                	sd	ra,40(sp)
    15be:	f022                	sd	s0,32(sp)
    15c0:	ec26                	sd	s1,24(sp)
    15c2:	e84a                	sd	s2,16(sp)
    15c4:	e44e                	sd	s3,8(sp)
    15c6:	e052                	sd	s4,0(sp)
    15c8:	8a2a                	mv	s4,a0
    15ca:	89ae                	mv	s3,a1
    15cc:	84b2                	mv	s1,a2
    15ce:	892a                	mv	s2,a0
    15d0:	4401                	li	s0,0
    15d2:	00000097          	auipc	ra,0x0
    15d6:	fce080e7          	jalr	-50(ra) # 15a0 <random_ulong>
    15da:	408985b3          	sub	a1,s3,s0
    15de:	02b575b3          	remu	a1,a0,a1
    15e2:	95a2                	add	a1,a1,s0
    15e4:	029585b3          	mul	a1,a1,s1
    15e8:	8626                	mv	a2,s1
    15ea:	95d2                	add	a1,a1,s4
    15ec:	854a                	mv	a0,s2
    15ee:	00000097          	auipc	ra,0x0
    15f2:	e48080e7          	jalr	-440(ra) # 1436 <swap_bytes>
    15f6:	0405                	addi	s0,s0,1
    15f8:	9926                	add	s2,s2,s1
    15fa:	fc899ce3          	bne	s3,s0,15d2 <shuffle+0x1a>
    15fe:	70a2                	ld	ra,40(sp)
    1600:	7402                	ld	s0,32(sp)
    1602:	64e2                	ld	s1,24(sp)
    1604:	6942                	ld	s2,16(sp)
    1606:	69a2                	ld	s3,8(sp)
    1608:	6a02                	ld	s4,0(sp)
    160a:	6145                	addi	sp,sp,48
    160c:	8082                	ret
    160e:	8082                	ret

0000000000001610 <arc4_init>:
    1610:	100500a3          	sb	zero,257(a0)
    1614:	10050023          	sb	zero,256(a0)
    1618:	4781                	li	a5,0
    161a:	10000693          	li	a3,256
    161e:	00f50733          	add	a4,a0,a5
    1622:	00f70023          	sb	a5,0(a4)
    1626:	0785                	addi	a5,a5,1
    1628:	fed79be3          	bne	a5,a3,161e <arc4_init+0xe>
    162c:	86aa                	mv	a3,a0
    162e:	10050e13          	addi	t3,a0,256
    1632:	4701                	li	a4,0
    1634:	4781                	li	a5,0
    1636:	0006c883          	lbu	a7,0(a3)
    163a:	00f58833          	add	a6,a1,a5
    163e:	00084803          	lbu	a6,0(a6)
    1642:	00e8873b          	addw	a4,a7,a4
    1646:	00e8073b          	addw	a4,a6,a4
    164a:	0ff77713          	andi	a4,a4,255
    164e:	00e50833          	add	a6,a0,a4
    1652:	00084303          	lbu	t1,0(a6)
    1656:	00668023          	sb	t1,0(a3)
    165a:	01180023          	sb	a7,0(a6)
    165e:	0785                	addi	a5,a5,1
    1660:	00c7b833          	sltu	a6,a5,a2
    1664:	41000833          	neg	a6,a6
    1668:	0107f7b3          	and	a5,a5,a6
    166c:	0685                	addi	a3,a3,1
    166e:	fdc694e3          	bne	a3,t3,1636 <arc4_init+0x26>
    1672:	8082                	ret

0000000000001674 <arc4_crypt>:
    1674:	10054e03          	lbu	t3,256(a0)
    1678:	10154803          	lbu	a6,257(a0)
    167c:	fff60e93          	addi	t4,a2,-1
    1680:	c225                	beqz	a2,16e0 <arc4_crypt+0x6c>
    1682:	00c588b3          	add	a7,a1,a2
    1686:	86ae                	mv	a3,a1
    1688:	001e031b          	addiw	t1,t3,1
    168c:	40b3033b          	subw	t1,t1,a1
    1690:	00d3073b          	addw	a4,t1,a3
    1694:	0ff77713          	andi	a4,a4,255
    1698:	972a                	add	a4,a4,a0
    169a:	00074603          	lbu	a2,0(a4)
    169e:	0106083b          	addw	a6,a2,a6
    16a2:	0ff87813          	andi	a6,a6,255
    16a6:	010507b3          	add	a5,a0,a6
    16aa:	0007c583          	lbu	a1,0(a5)
    16ae:	00b70023          	sb	a1,0(a4)
    16b2:	00c78023          	sb	a2,0(a5)
    16b6:	0685                	addi	a3,a3,1
    16b8:	00074783          	lbu	a5,0(a4)
    16bc:	9fb1                	addw	a5,a5,a2
    16be:	0ff7f793          	andi	a5,a5,255
    16c2:	97aa                	add	a5,a5,a0
    16c4:	0007c783          	lbu	a5,0(a5)
    16c8:	fff6c703          	lbu	a4,-1(a3)
    16cc:	8fb9                	xor	a5,a5,a4
    16ce:	fef68fa3          	sb	a5,-1(a3)
    16d2:	fb169fe3          	bne	a3,a7,1690 <arc4_crypt+0x1c>
    16d6:	2e85                	addiw	t4,t4,1
    16d8:	01ce8e3b          	addw	t3,t4,t3
    16dc:	0ffe7e13          	andi	t3,t3,255
    16e0:	11c50023          	sb	t3,256(a0)
    16e4:	110500a3          	sb	a6,257(a0)
    16e8:	8082                	ret

00000000000016ea <_main>:
    16ea:	1141                	addi	sp,sp,-16
    16ec:	e406                	sd	ra,8(sp)
    16ee:	00000097          	auipc	ra,0x0
    16f2:	912080e7          	jalr	-1774(ra) # 1000 <main>
    16f6:	4501                	li	a0,0
    16f8:	00000097          	auipc	ra,0x0
    16fc:	578080e7          	jalr	1400(ra) # 1c70 <exit>
    1700:	60a2                	ld	ra,8(sp)
    1702:	0141                	addi	sp,sp,16
    1704:	8082                	ret

0000000000001706 <strcmp>:
    1706:	00054783          	lbu	a5,0(a0)
    170a:	cb91                	beqz	a5,171e <strcmp+0x18>
    170c:	0005c703          	lbu	a4,0(a1)
    1710:	00f71763          	bne	a4,a5,171e <strcmp+0x18>
    1714:	0505                	addi	a0,a0,1
    1716:	0585                	addi	a1,a1,1
    1718:	00054783          	lbu	a5,0(a0)
    171c:	fbe5                	bnez	a5,170c <strcmp+0x6>
    171e:	0005c503          	lbu	a0,0(a1)
    1722:	40a7853b          	subw	a0,a5,a0
    1726:	8082                	ret

0000000000001728 <strcpy>:
    1728:	87aa                	mv	a5,a0
    172a:	0585                	addi	a1,a1,1
    172c:	0785                	addi	a5,a5,1
    172e:	fff5c703          	lbu	a4,-1(a1)
    1732:	fee78fa3          	sb	a4,-1(a5)
    1736:	fb75                	bnez	a4,172a <strcpy+0x2>
    1738:	8082                	ret

000000000000173a <strlen>:
    173a:	00054783          	lbu	a5,0(a0)
    173e:	cf81                	beqz	a5,1756 <strlen+0x1c>
    1740:	0505                	addi	a0,a0,1
    1742:	87aa                	mv	a5,a0
    1744:	4685                	li	a3,1
    1746:	9e89                	subw	a3,a3,a0
    1748:	00f6853b          	addw	a0,a3,a5
    174c:	0785                	addi	a5,a5,1
    174e:	fff7c703          	lbu	a4,-1(a5)
    1752:	fb7d                	bnez	a4,1748 <strlen+0xe>
    1754:	8082                	ret
    1756:	4501                	li	a0,0
    1758:	8082                	ret

000000000000175a <memset>:
    175a:	ca19                	beqz	a2,1770 <memset+0x16>
    175c:	87aa                	mv	a5,a0
    175e:	1602                	slli	a2,a2,0x20
    1760:	9201                	srli	a2,a2,0x20
    1762:	00a60733          	add	a4,a2,a0
    1766:	00b78023          	sb	a1,0(a5)
    176a:	0785                	addi	a5,a5,1
    176c:	fee79de3          	bne	a5,a4,1766 <memset+0xc>
    1770:	8082                	ret

0000000000001772 <memcmp>:
    1772:	1101                	addi	sp,sp,-32
    1774:	ec06                	sd	ra,24(sp)
    1776:	e822                	sd	s0,16(sp)
    1778:	e426                	sd	s1,8(sp)
    177a:	e04a                	sd	s2,0(sp)
    177c:	892a                	mv	s2,a0
    177e:	842e                	mv	s0,a1
    1780:	84b2                	mv	s1,a2
    1782:	c915                	beqz	a0,17b6 <memcmp+0x44>
    1784:	c5ad                	beqz	a1,17ee <memcmp+0x7c>
    1786:	fff60713          	addi	a4,a2,-1
    178a:	c645                	beqz	a2,1832 <memcmp+0xc0>
    178c:	87ca                	mv	a5,s2
    178e:	00190613          	addi	a2,s2,1
    1792:	963a                	add	a2,a2,a4
    1794:	0007c683          	lbu	a3,0(a5)
    1798:	00044703          	lbu	a4,0(s0)
    179c:	08e69463          	bne	a3,a4,1824 <memcmp+0xb2>
    17a0:	0785                	addi	a5,a5,1
    17a2:	0405                	addi	s0,s0,1
    17a4:	fec798e3          	bne	a5,a2,1794 <memcmp+0x22>
    17a8:	4501                	li	a0,0
    17aa:	60e2                	ld	ra,24(sp)
    17ac:	6442                	ld	s0,16(sp)
    17ae:	64a2                	ld	s1,8(sp)
    17b0:	6902                	ld	s2,0(sp)
    17b2:	6105                	addi	sp,sp,32
    17b4:	8082                	ret
    17b6:	4501                	li	a0,0
    17b8:	da6d                	beqz	a2,17aa <memcmp+0x38>
    17ba:	03200693          	li	a3,50
    17be:	00002637          	lui	a2,0x2
    17c2:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    17c6:	000025b7          	lui	a1,0x2
    17ca:	18858593          	addi	a1,a1,392 # 2188 <crctab+0x410>
    17ce:	4509                	li	a0,2
    17d0:	00000097          	auipc	ra,0x0
    17d4:	bbc080e7          	jalr	-1092(ra) # 138c <fprintf>
    17d8:	650d                	lui	a0,0x3
    17da:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    17de:	00000097          	auipc	ra,0x0
    17e2:	492080e7          	jalr	1170(ra) # 1c70 <exit>
    17e6:	fff48713          	addi	a4,s1,-1
    17ea:	f04d                	bnez	s0,178c <memcmp+0x1a>
    17ec:	a011                	j	17f0 <memcmp+0x7e>
    17ee:	c221                	beqz	a2,182e <memcmp+0xbc>
    17f0:	03300693          	li	a3,51
    17f4:	00002637          	lui	a2,0x2
    17f8:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    17fc:	000025b7          	lui	a1,0x2
    1800:	1d058593          	addi	a1,a1,464 # 21d0 <crctab+0x458>
    1804:	4509                	li	a0,2
    1806:	00000097          	auipc	ra,0x0
    180a:	b86080e7          	jalr	-1146(ra) # 138c <fprintf>
    180e:	650d                	lui	a0,0x3
    1810:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1814:	00000097          	auipc	ra,0x0
    1818:	45c080e7          	jalr	1116(ra) # 1c70 <exit>
    181c:	fff48713          	addi	a4,s1,-1
    1820:	4401                	li	s0,0
    1822:	b7ad                	j	178c <memcmp+0x1a>
    1824:	4505                	li	a0,1
    1826:	f8d762e3          	bltu	a4,a3,17aa <memcmp+0x38>
    182a:	557d                	li	a0,-1
    182c:	bfbd                	j	17aa <memcmp+0x38>
    182e:	4501                	li	a0,0
    1830:	bfad                	j	17aa <memcmp+0x38>
    1832:	4501                	li	a0,0
    1834:	bf9d                	j	17aa <memcmp+0x38>

0000000000001836 <memcpy>:
    1836:	1101                	addi	sp,sp,-32
    1838:	ec06                	sd	ra,24(sp)
    183a:	e822                	sd	s0,16(sp)
    183c:	e426                	sd	s1,8(sp)
    183e:	e04a                	sd	s2,0(sp)
    1840:	84aa                	mv	s1,a0
    1842:	842e                	mv	s0,a1
    1844:	8932                	mv	s2,a2
    1846:	c51d                	beqz	a0,1874 <memcpy+0x3e>
    1848:	c1ad                	beqz	a1,18aa <memcpy+0x74>
    184a:	fff60693          	addi	a3,a2,-1
    184e:	ce01                	beqz	a2,1866 <memcpy+0x30>
    1850:	0685                	addi	a3,a3,1
    1852:	96a6                	add	a3,a3,s1
    1854:	87a6                	mv	a5,s1
    1856:	0405                	addi	s0,s0,1
    1858:	0785                	addi	a5,a5,1
    185a:	fff44703          	lbu	a4,-1(s0)
    185e:	fee78fa3          	sb	a4,-1(a5)
    1862:	fed79ae3          	bne	a5,a3,1856 <memcpy+0x20>
    1866:	8526                	mv	a0,s1
    1868:	60e2                	ld	ra,24(sp)
    186a:	6442                	ld	s0,16(sp)
    186c:	64a2                	ld	s1,8(sp)
    186e:	6902                	ld	s2,0(sp)
    1870:	6105                	addi	sp,sp,32
    1872:	8082                	ret
    1874:	da6d                	beqz	a2,1866 <memcpy+0x30>
    1876:	04000693          	li	a3,64
    187a:	00002637          	lui	a2,0x2
    187e:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    1882:	000025b7          	lui	a1,0x2
    1886:	21858593          	addi	a1,a1,536 # 2218 <crctab+0x4a0>
    188a:	4509                	li	a0,2
    188c:	00000097          	auipc	ra,0x0
    1890:	b00080e7          	jalr	-1280(ra) # 138c <fprintf>
    1894:	650d                	lui	a0,0x3
    1896:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    189a:	00000097          	auipc	ra,0x0
    189e:	3d6080e7          	jalr	982(ra) # 1c70 <exit>
    18a2:	fff90693          	addi	a3,s2,-1
    18a6:	f44d                	bnez	s0,1850 <memcpy+0x1a>
    18a8:	a011                	j	18ac <memcpy+0x76>
    18aa:	de55                	beqz	a2,1866 <memcpy+0x30>
    18ac:	04100693          	li	a3,65
    18b0:	00002637          	lui	a2,0x2
    18b4:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    18b8:	000025b7          	lui	a1,0x2
    18bc:	26058593          	addi	a1,a1,608 # 2260 <crctab+0x4e8>
    18c0:	4509                	li	a0,2
    18c2:	00000097          	auipc	ra,0x0
    18c6:	aca080e7          	jalr	-1334(ra) # 138c <fprintf>
    18ca:	650d                	lui	a0,0x3
    18cc:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    18d0:	00000097          	auipc	ra,0x0
    18d4:	3a0080e7          	jalr	928(ra) # 1c70 <exit>
    18d8:	fff90693          	addi	a3,s2,-1
    18dc:	4401                	li	s0,0
    18de:	bf8d                	j	1850 <memcpy+0x1a>

00000000000018e0 <itoa>:
    18e0:	1101                	addi	sp,sp,-32
    18e2:	ec06                	sd	ra,24(sp)
    18e4:	e822                	sd	s0,16(sp)
    18e6:	e426                	sd	s1,8(sp)
    18e8:	842a                	mv	s0,a0
    18ea:	41f5d71b          	sraiw	a4,a1,0x1f
    18ee:	00e5c7b3          	xor	a5,a1,a4
    18f2:	9f99                	subw	a5,a5,a4
    18f4:	84aa                	mv	s1,a0
    18f6:	862a                	mv	a2,a0
    18f8:	4681                	li	a3,0
    18fa:	4529                	li	a0,10
    18fc:	4825                	li	a6,9
    18fe:	88b6                	mv	a7,a3
    1900:	2685                	addiw	a3,a3,1
    1902:	02a7e73b          	remw	a4,a5,a0
    1906:	0307071b          	addiw	a4,a4,48
    190a:	00e60023          	sb	a4,0(a2)
    190e:	873e                	mv	a4,a5
    1910:	02a7c7bb          	divw	a5,a5,a0
    1914:	0605                	addi	a2,a2,1
    1916:	fee844e3          	blt	a6,a4,18fe <itoa+0x1e>
    191a:	0405c863          	bltz	a1,196a <itoa+0x8a>
    191e:	96a2                	add	a3,a3,s0
    1920:	00068023          	sb	zero,0(a3)
    1924:	8522                	mv	a0,s0
    1926:	00000097          	auipc	ra,0x0
    192a:	e14080e7          	jalr	-492(ra) # 173a <strlen>
    192e:	fff5071b          	addiw	a4,a0,-1
    1932:	02e05763          	blez	a4,1960 <itoa+0x80>
    1936:	9722                	add	a4,a4,s0
    1938:	4681                	li	a3,0
    193a:	0004c783          	lbu	a5,0(s1)
    193e:	00074603          	lbu	a2,0(a4)
    1942:	00c48023          	sb	a2,0(s1)
    1946:	00f70023          	sb	a5,0(a4)
    194a:	0016879b          	addiw	a5,a3,1
    194e:	0007869b          	sext.w	a3,a5
    1952:	0485                	addi	s1,s1,1
    1954:	177d                	addi	a4,a4,-1
    1956:	fff7c793          	not	a5,a5
    195a:	9fa9                	addw	a5,a5,a0
    195c:	fcf6cfe3          	blt	a3,a5,193a <itoa+0x5a>
    1960:	60e2                	ld	ra,24(sp)
    1962:	6442                	ld	s0,16(sp)
    1964:	64a2                	ld	s1,8(sp)
    1966:	6105                	addi	sp,sp,32
    1968:	8082                	ret
    196a:	96a2                	add	a3,a3,s0
    196c:	02d00793          	li	a5,45
    1970:	00f68023          	sb	a5,0(a3)
    1974:	0028869b          	addiw	a3,a7,2
    1978:	b75d                	j	191e <itoa+0x3e>

000000000000197a <atoi>:
    197a:	00054783          	lbu	a5,0(a0)
    197e:	02000713          	li	a4,32
    1982:	00e79763          	bne	a5,a4,1990 <atoi+0x16>
    1986:	0505                	addi	a0,a0,1
    1988:	00054783          	lbu	a5,0(a0)
    198c:	fee78de3          	beq	a5,a4,1986 <atoi+0xc>
    1990:	02b00713          	li	a4,43
    1994:	04e78663          	beq	a5,a4,19e0 <atoi+0x66>
    1998:	02d00713          	li	a4,45
    199c:	4805                	li	a6,1
    199e:	04e78463          	beq	a5,a4,19e6 <atoi+0x6c>
    19a2:	00054683          	lbu	a3,0(a0)
    19a6:	fd06879b          	addiw	a5,a3,-48
    19aa:	0ff7f793          	andi	a5,a5,255
    19ae:	4725                	li	a4,9
    19b0:	02f76e63          	bltu	a4,a5,19ec <atoi+0x72>
    19b4:	4601                	li	a2,0
    19b6:	45a5                	li	a1,9
    19b8:	0505                	addi	a0,a0,1
    19ba:	0026179b          	slliw	a5,a2,0x2
    19be:	9fb1                	addw	a5,a5,a2
    19c0:	0017979b          	slliw	a5,a5,0x1
    19c4:	9fb5                	addw	a5,a5,a3
    19c6:	fd07861b          	addiw	a2,a5,-48
    19ca:	00054683          	lbu	a3,0(a0)
    19ce:	fd06871b          	addiw	a4,a3,-48
    19d2:	0ff77713          	andi	a4,a4,255
    19d6:	fee5f1e3          	bgeu	a1,a4,19b8 <atoi+0x3e>
    19da:	02c8053b          	mulw	a0,a6,a2
    19de:	8082                	ret
    19e0:	0505                	addi	a0,a0,1
    19e2:	4805                	li	a6,1
    19e4:	bf7d                	j	19a2 <atoi+0x28>
    19e6:	0505                	addi	a0,a0,1
    19e8:	587d                	li	a6,-1
    19ea:	bf65                	j	19a2 <atoi+0x28>
    19ec:	4601                	li	a2,0
    19ee:	b7f5                	j	19da <atoi+0x60>

00000000000019f0 <check_file_handle>:
    19f0:	d8010113          	addi	sp,sp,-640
    19f4:	26113c23          	sd	ra,632(sp)
    19f8:	26813823          	sd	s0,624(sp)
    19fc:	26913423          	sd	s1,616(sp)
    1a00:	27213023          	sd	s2,608(sp)
    1a04:	25313c23          	sd	s3,600(sp)
    1a08:	25413823          	sd	s4,592(sp)
    1a0c:	25513423          	sd	s5,584(sp)
    1a10:	25613023          	sd	s6,576(sp)
    1a14:	23713c23          	sd	s7,568(sp)
    1a18:	23813823          	sd	s8,560(sp)
    1a1c:	23913423          	sd	s9,552(sp)
    1a20:	23a13023          	sd	s10,544(sp)
    1a24:	21b13c23          	sd	s11,536(sp)
    1a28:	8baa                	mv	s7,a0
    1a2a:	8a2e                	mv	s4,a1
    1a2c:	8c32                	mv	s8,a2
    1a2e:	89b6                	mv	s3,a3
    1a30:	040c                	addi	a1,sp,512
    1a32:	00000097          	auipc	ra,0x0
    1a36:	28e080e7          	jalr	654(ra) # 1cc0 <fstat>
    1a3a:	20813603          	ld	a2,520(sp)
    1a3e:	03361163          	bne	a2,s3,1a60 <check_file_handle+0x70>
    1a42:	06098763          	beqz	s3,1ab0 <check_file_handle+0xc0>
    1a46:	4901                	li	s2,0
    1a48:	20000a93          	li	s5,512
    1a4c:	00002cb7          	lui	s9,0x2
    1a50:	00002db7          	lui	s11,0x2
    1a54:	6b0d                	lui	s6,0x3
    1a56:	039b0b13          	addi	s6,s6,57 # 3039 <histogram+0x29>
    1a5a:	00002d37          	lui	s10,0x2
    1a5e:	aa39                	j	1b7c <check_file_handle+0x18c>
    1a60:	86ce                	mv	a3,s3
    1a62:	85d2                	mv	a1,s4
    1a64:	00002537          	lui	a0,0x2
    1a68:	2a850513          	addi	a0,a0,680 # 22a8 <crctab+0x530>
    1a6c:	00000097          	auipc	ra,0x0
    1a70:	942080e7          	jalr	-1726(ra) # 13ae <printf>
    1a74:	fc0999e3          	bnez	s3,1a46 <check_file_handle+0x56>
    1a78:	20813683          	ld	a3,520(sp)
    1a7c:	03368a63          	beq	a3,s3,1ab0 <check_file_handle+0xc0>
    1a80:	0a600813          	li	a6,166
    1a84:	000027b7          	lui	a5,0x2
    1a88:	17878793          	addi	a5,a5,376 # 2178 <crctab+0x400>
    1a8c:	874e                	mv	a4,s3
    1a8e:	8652                	mv	a2,s4
    1a90:	000025b7          	lui	a1,0x2
    1a94:	37858593          	addi	a1,a1,888 # 2378 <crctab+0x600>
    1a98:	4509                	li	a0,2
    1a9a:	00000097          	auipc	ra,0x0
    1a9e:	8f2080e7          	jalr	-1806(ra) # 138c <fprintf>
    1aa2:	650d                	lui	a0,0x3
    1aa4:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1aa8:	00000097          	auipc	ra,0x0
    1aac:	1c8080e7          	jalr	456(ra) # 1c70 <exit>
    1ab0:	85d2                	mv	a1,s4
    1ab2:	00002537          	lui	a0,0x2
    1ab6:	3c050513          	addi	a0,a0,960 # 23c0 <crctab+0x648>
    1aba:	00000097          	auipc	ra,0x0
    1abe:	8f4080e7          	jalr	-1804(ra) # 13ae <printf>
    1ac2:	27813083          	ld	ra,632(sp)
    1ac6:	27013403          	ld	s0,624(sp)
    1aca:	26813483          	ld	s1,616(sp)
    1ace:	26013903          	ld	s2,608(sp)
    1ad2:	25813983          	ld	s3,600(sp)
    1ad6:	25013a03          	ld	s4,592(sp)
    1ada:	24813a83          	ld	s5,584(sp)
    1ade:	24013b03          	ld	s6,576(sp)
    1ae2:	23813b83          	ld	s7,568(sp)
    1ae6:	23013c03          	ld	s8,560(sp)
    1aea:	22813c83          	ld	s9,552(sp)
    1aee:	22013d03          	ld	s10,544(sp)
    1af2:	21813d83          	ld	s11,536(sp)
    1af6:	28010113          	addi	sp,sp,640
    1afa:	8082                	ret
    1afc:	09d00893          	li	a7,157
    1b00:	178c8813          	addi	a6,s9,376 # 2178 <crctab+0x400>
    1b04:	87aa                	mv	a5,a0
    1b06:	8752                	mv	a4,s4
    1b08:	86ca                	mv	a3,s2
    1b0a:	8622                	mv	a2,s0
    1b0c:	2d8d8593          	addi	a1,s11,728 # 22d8 <crctab+0x560>
    1b10:	4509                	li	a0,2
    1b12:	00000097          	auipc	ra,0x0
    1b16:	87a080e7          	jalr	-1926(ra) # 138c <fprintf>
    1b1a:	855a                	mv	a0,s6
    1b1c:	00000097          	auipc	ra,0x0
    1b20:	154080e7          	jalr	340(ra) # 1c70 <exit>
    1b24:	a89d                	j	1b9a <check_file_handle+0x1aa>
    1b26:	00160593          	addi	a1,a2,1
    1b2a:	0285f163          	bgeu	a1,s0,1b4c <check_file_handle+0x15c>
    1b2e:	00c10733          	add	a4,sp,a2
    1b32:	00b487b3          	add	a5,s1,a1
    1b36:	00174683          	lbu	a3,1(a4)
    1b3a:	0007c783          	lbu	a5,0(a5)
    1b3e:	00f68763          	beq	a3,a5,1b4c <check_file_handle+0x15c>
    1b42:	0585                	addi	a1,a1,1
    1b44:	0705                	addi	a4,a4,1
    1b46:	feb416e3          	bne	s0,a1,1b32 <check_file_handle+0x142>
    1b4a:	85a2                	mv	a1,s0
    1b4c:	08100813          	li	a6,129
    1b50:	178c8793          	addi	a5,s9,376
    1b54:	8752                	mv	a4,s4
    1b56:	012606b3          	add	a3,a2,s2
    1b5a:	40c58633          	sub	a2,a1,a2
    1b5e:	320d0593          	addi	a1,s10,800 # 2320 <crctab+0x5a8>
    1b62:	4509                	li	a0,2
    1b64:	00000097          	auipc	ra,0x0
    1b68:	828080e7          	jalr	-2008(ra) # 138c <fprintf>
    1b6c:	855a                	mv	a0,s6
    1b6e:	00000097          	auipc	ra,0x0
    1b72:	102080e7          	jalr	258(ra) # 1c70 <exit>
    1b76:	9922                	add	s2,s2,s0
    1b78:	f13970e3          	bgeu	s2,s3,1a78 <check_file_handle+0x88>
    1b7c:	41298433          	sub	s0,s3,s2
    1b80:	008af363          	bgeu	s5,s0,1b86 <check_file_handle+0x196>
    1b84:	8456                	mv	s0,s5
    1b86:	0004061b          	sext.w	a2,s0
    1b8a:	858a                	mv	a1,sp
    1b8c:	855e                	mv	a0,s7
    1b8e:	00000097          	auipc	ra,0x0
    1b92:	10a080e7          	jalr	266(ra) # 1c98 <read>
    1b96:	f68513e3          	bne	a0,s0,1afc <check_file_handle+0x10c>
    1b9a:	012c04b3          	add	s1,s8,s2
    1b9e:	8622                	mv	a2,s0
    1ba0:	85a6                	mv	a1,s1
    1ba2:	850a                	mv	a0,sp
    1ba4:	00000097          	auipc	ra,0x0
    1ba8:	bce080e7          	jalr	-1074(ra) # 1772 <memcmp>
    1bac:	d569                	beqz	a0,1b76 <check_file_handle+0x186>
    1bae:	03298163          	beq	s3,s2,1bd0 <check_file_handle+0x1e0>
    1bb2:	870a                	mv	a4,sp
    1bb4:	4601                	li	a2,0
    1bb6:	00c487b3          	add	a5,s1,a2
    1bba:	00074683          	lbu	a3,0(a4)
    1bbe:	0007c783          	lbu	a5,0(a5)
    1bc2:	f6f692e3          	bne	a3,a5,1b26 <check_file_handle+0x136>
    1bc6:	0605                	addi	a2,a2,1
    1bc8:	0705                	addi	a4,a4,1
    1bca:	fe8666e3          	bltu	a2,s0,1bb6 <check_file_handle+0x1c6>
    1bce:	bfa1                	j	1b26 <check_file_handle+0x136>
    1bd0:	4601                	li	a2,0
    1bd2:	4585                	li	a1,1
    1bd4:	bfa5                	j	1b4c <check_file_handle+0x15c>

0000000000001bd6 <check_file>:
    1bd6:	7179                	addi	sp,sp,-48
    1bd8:	f406                	sd	ra,40(sp)
    1bda:	f022                	sd	s0,32(sp)
    1bdc:	ec26                	sd	s1,24(sp)
    1bde:	e84a                	sd	s2,16(sp)
    1be0:	e44e                	sd	s3,8(sp)
    1be2:	84aa                	mv	s1,a0
    1be4:	892e                	mv	s2,a1
    1be6:	89b2                	mv	s3,a2
    1be8:	4581                	li	a1,0
    1bea:	00000097          	auipc	ra,0x0
    1bee:	0a6080e7          	jalr	166(ra) # 1c90 <open>
    1bf2:	842a                	mv	s0,a0
    1bf4:	4789                	li	a5,2
    1bf6:	02a7df63          	bge	a5,a0,1c34 <check_file+0x5e>
    1bfa:	86ce                	mv	a3,s3
    1bfc:	864a                	mv	a2,s2
    1bfe:	85a6                	mv	a1,s1
    1c00:	8522                	mv	a0,s0
    1c02:	00000097          	auipc	ra,0x0
    1c06:	dee080e7          	jalr	-530(ra) # 19f0 <check_file_handle>
    1c0a:	85a6                	mv	a1,s1
    1c0c:	00002537          	lui	a0,0x2
    1c10:	44850513          	addi	a0,a0,1096 # 2448 <crctab+0x6d0>
    1c14:	fffff097          	auipc	ra,0xfffff
    1c18:	79a080e7          	jalr	1946(ra) # 13ae <printf>
    1c1c:	8522                	mv	a0,s0
    1c1e:	00000097          	auipc	ra,0x0
    1c22:	09a080e7          	jalr	154(ra) # 1cb8 <close>
    1c26:	70a2                	ld	ra,40(sp)
    1c28:	7402                	ld	s0,32(sp)
    1c2a:	64e2                	ld	s1,24(sp)
    1c2c:	6942                	ld	s2,16(sp)
    1c2e:	69a2                	ld	s3,8(sp)
    1c30:	6145                	addi	sp,sp,48
    1c32:	8082                	ret
    1c34:	0ae00713          	li	a4,174
    1c38:	000026b7          	lui	a3,0x2
    1c3c:	17868693          	addi	a3,a3,376 # 2178 <crctab+0x400>
    1c40:	8626                	mv	a2,s1
    1c42:	000025b7          	lui	a1,0x2
    1c46:	3e058593          	addi	a1,a1,992 # 23e0 <crctab+0x668>
    1c4a:	4509                	li	a0,2
    1c4c:	fffff097          	auipc	ra,0xfffff
    1c50:	740080e7          	jalr	1856(ra) # 138c <fprintf>
    1c54:	650d                	lui	a0,0x3
    1c56:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1c5a:	00000097          	auipc	ra,0x0
    1c5e:	016080e7          	jalr	22(ra) # 1c70 <exit>
    1c62:	bf61                	j	1bfa <check_file+0x24>

0000000000001c64 <r_sp>:
    1c64:	850a                	mv	a0,sp
    1c66:	8082                	ret

0000000000001c68 <halt>:
    1c68:	4885                	li	a7,1
    1c6a:	00000073          	ecall
    1c6e:	8082                	ret

0000000000001c70 <exit>:
    1c70:	4889                	li	a7,2
    1c72:	00000073          	ecall
    1c76:	8082                	ret

0000000000001c78 <exec>:
    1c78:	488d                	li	a7,3
    1c7a:	00000073          	ecall
    1c7e:	8082                	ret

0000000000001c80 <wait>:
    1c80:	4891                	li	a7,4
    1c82:	00000073          	ecall
    1c86:	8082                	ret

0000000000001c88 <remove>:
    1c88:	4895                	li	a7,5
    1c8a:	00000073          	ecall
    1c8e:	8082                	ret

0000000000001c90 <open>:
    1c90:	4899                	li	a7,6
    1c92:	00000073          	ecall
    1c96:	8082                	ret

0000000000001c98 <read>:
    1c98:	489d                	li	a7,7
    1c9a:	00000073          	ecall
    1c9e:	8082                	ret

0000000000001ca0 <write>:
    1ca0:	48a1                	li	a7,8
    1ca2:	00000073          	ecall
    1ca6:	8082                	ret

0000000000001ca8 <seek>:
    1ca8:	48a5                	li	a7,9
    1caa:	00000073          	ecall
    1cae:	8082                	ret

0000000000001cb0 <tell>:
    1cb0:	48a9                	li	a7,10
    1cb2:	00000073          	ecall
    1cb6:	8082                	ret

0000000000001cb8 <close>:
    1cb8:	48ad                	li	a7,11
    1cba:	00000073          	ecall
    1cbe:	8082                	ret

0000000000001cc0 <fstat>:
    1cc0:	48b1                	li	a7,12
    1cc2:	00000073          	ecall
    1cc6:	8082                	ret

0000000000001cc8 <mmap>:
    1cc8:	48b5                	li	a7,13
    1cca:	00000073          	ecall
    1cce:	8082                	ret

0000000000001cd0 <munmap>:
    1cd0:	48b9                	li	a7,14
    1cd2:	00000073          	ecall
    1cd6:	8082                	ret

0000000000001cd8 <chdir>:
    1cd8:	48bd                	li	a7,15
    1cda:	00000073          	ecall
    1cde:	8082                	ret

0000000000001ce0 <mkdir>:
    1ce0:	48c1                	li	a7,16
    1ce2:	00000073          	ecall
    1ce6:	8082                	ret
