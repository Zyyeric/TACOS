
build/user/userprogs/read-zero:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	4581                	li	a1,0
    1008:	00002537          	lui	a0,0x2
    100c:	cc050513          	addi	a0,a0,-832 # 1cc0 <mkdir+0x8>
    1010:	00001097          	auipc	ra,0x1
    1014:	c58080e7          	jalr	-936(ra) # 1c68 <open>
    1018:	842a                	mv	s0,a0
    101a:	cd0d                	beqz	a0,1054 <main+0x54>
    101c:	07b00793          	li	a5,123
    1020:	00f107a3          	sb	a5,15(sp)
    1024:	4601                	li	a2,0
    1026:	00f10593          	addi	a1,sp,15
    102a:	8522                	mv	a0,s0
    102c:	00001097          	auipc	ra,0x1
    1030:	c44080e7          	jalr	-956(ra) # 1c70 <read>
    1034:	e531                	bnez	a0,1080 <main+0x80>
    1036:	00f14703          	lbu	a4,15(sp)
    103a:	07b00793          	li	a5,123
    103e:	06f71863          	bne	a4,a5,10ae <main+0xae>
    1042:	8522                	mv	a0,s0
    1044:	00001097          	auipc	ra,0x1
    1048:	c4c080e7          	jalr	-948(ra) # 1c90 <close>
    104c:	60e2                	ld	ra,24(sp)
    104e:	6442                	ld	s0,16(sp)
    1050:	6105                	addi	sp,sp,32
    1052:	8082                	ret
    1054:	46a9                	li	a3,10
    1056:	00002637          	lui	a2,0x2
    105a:	cd060613          	addi	a2,a2,-816 # 1cd0 <mkdir+0x18>
    105e:	000025b7          	lui	a1,0x2
    1062:	cf058593          	addi	a1,a1,-784 # 1cf0 <mkdir+0x38>
    1066:	4509                	li	a0,2
    1068:	00000097          	auipc	ra,0x0
    106c:	2fc080e7          	jalr	764(ra) # 1364 <fprintf>
    1070:	650d                	lui	a0,0x3
    1072:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1076:	00001097          	auipc	ra,0x1
    107a:	bd2080e7          	jalr	-1070(ra) # 1c48 <exit>
    107e:	bf79                	j	101c <main+0x1c>
    1080:	4739                	li	a4,14
    1082:	000026b7          	lui	a3,0x2
    1086:	cd068693          	addi	a3,a3,-816 # 1cd0 <mkdir+0x18>
    108a:	862a                	mv	a2,a0
    108c:	000025b7          	lui	a1,0x2
    1090:	d4058593          	addi	a1,a1,-704 # 1d40 <mkdir+0x88>
    1094:	4509                	li	a0,2
    1096:	00000097          	auipc	ra,0x0
    109a:	2ce080e7          	jalr	718(ra) # 1364 <fprintf>
    109e:	650d                	lui	a0,0x3
    10a0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10a4:	00001097          	auipc	ra,0x1
    10a8:	ba4080e7          	jalr	-1116(ra) # 1c48 <exit>
    10ac:	b769                	j	1036 <main+0x36>
    10ae:	46bd                	li	a3,15
    10b0:	00002637          	lui	a2,0x2
    10b4:	cd060613          	addi	a2,a2,-816 # 1cd0 <mkdir+0x18>
    10b8:	000025b7          	lui	a1,0x2
    10bc:	d9858593          	addi	a1,a1,-616 # 1d98 <mkdir+0xe0>
    10c0:	4509                	li	a0,2
    10c2:	00000097          	auipc	ra,0x0
    10c6:	2a2080e7          	jalr	674(ra) # 1364 <fprintf>
    10ca:	650d                	lui	a0,0x3
    10cc:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10d0:	00001097          	auipc	ra,0x1
    10d4:	b78080e7          	jalr	-1160(ra) # 1c48 <exit>
    10d8:	b7ad                	j	1042 <main+0x42>

00000000000010da <putc>:
    10da:	1101                	addi	sp,sp,-32
    10dc:	ec06                	sd	ra,24(sp)
    10de:	00b107a3          	sb	a1,15(sp)
    10e2:	4605                	li	a2,1
    10e4:	00f10593          	addi	a1,sp,15
    10e8:	00001097          	auipc	ra,0x1
    10ec:	b90080e7          	jalr	-1136(ra) # 1c78 <write>
    10f0:	60e2                	ld	ra,24(sp)
    10f2:	6105                	addi	sp,sp,32
    10f4:	8082                	ret

00000000000010f6 <printint>:
    10f6:	7179                	addi	sp,sp,-48
    10f8:	f406                	sd	ra,40(sp)
    10fa:	f022                	sd	s0,32(sp)
    10fc:	ec26                	sd	s1,24(sp)
    10fe:	e84a                	sd	s2,16(sp)
    1100:	84aa                	mv	s1,a0
    1102:	c299                	beqz	a3,1108 <printint+0x12>
    1104:	0805c363          	bltz	a1,118a <printint+0x94>
    1108:	2581                	sext.w	a1,a1
    110a:	4881                	li	a7,0
    110c:	868a                	mv	a3,sp
    110e:	4701                	li	a4,0
    1110:	2601                	sext.w	a2,a2
    1112:	00002537          	lui	a0,0x2
    1116:	df850513          	addi	a0,a0,-520 # 1df8 <digits>
    111a:	883a                	mv	a6,a4
    111c:	2705                	addiw	a4,a4,1
    111e:	02c5f7bb          	remuw	a5,a1,a2
    1122:	1782                	slli	a5,a5,0x20
    1124:	9381                	srli	a5,a5,0x20
    1126:	97aa                	add	a5,a5,a0
    1128:	0007c783          	lbu	a5,0(a5)
    112c:	00f68023          	sb	a5,0(a3)
    1130:	0005879b          	sext.w	a5,a1
    1134:	02c5d5bb          	divuw	a1,a1,a2
    1138:	0685                	addi	a3,a3,1
    113a:	fec7f0e3          	bgeu	a5,a2,111a <printint+0x24>
    113e:	00088a63          	beqz	a7,1152 <printint+0x5c>
    1142:	081c                	addi	a5,sp,16
    1144:	973e                	add	a4,a4,a5
    1146:	02d00793          	li	a5,45
    114a:	fef70823          	sb	a5,-16(a4)
    114e:	0028071b          	addiw	a4,a6,2
    1152:	02e05663          	blez	a4,117e <printint+0x88>
    1156:	00e10433          	add	s0,sp,a4
    115a:	fff10913          	addi	s2,sp,-1
    115e:	993a                	add	s2,s2,a4
    1160:	377d                	addiw	a4,a4,-1
    1162:	1702                	slli	a4,a4,0x20
    1164:	9301                	srli	a4,a4,0x20
    1166:	40e90933          	sub	s2,s2,a4
    116a:	fff44583          	lbu	a1,-1(s0)
    116e:	8526                	mv	a0,s1
    1170:	00000097          	auipc	ra,0x0
    1174:	f6a080e7          	jalr	-150(ra) # 10da <putc>
    1178:	147d                	addi	s0,s0,-1
    117a:	ff2418e3          	bne	s0,s2,116a <printint+0x74>
    117e:	70a2                	ld	ra,40(sp)
    1180:	7402                	ld	s0,32(sp)
    1182:	64e2                	ld	s1,24(sp)
    1184:	6942                	ld	s2,16(sp)
    1186:	6145                	addi	sp,sp,48
    1188:	8082                	ret
    118a:	40b005bb          	negw	a1,a1
    118e:	4885                	li	a7,1
    1190:	bfb5                	j	110c <printint+0x16>

0000000000001192 <vprintf>:
    1192:	7159                	addi	sp,sp,-112
    1194:	f486                	sd	ra,104(sp)
    1196:	f0a2                	sd	s0,96(sp)
    1198:	eca6                	sd	s1,88(sp)
    119a:	e8ca                	sd	s2,80(sp)
    119c:	e4ce                	sd	s3,72(sp)
    119e:	e0d2                	sd	s4,64(sp)
    11a0:	fc56                	sd	s5,56(sp)
    11a2:	f85a                	sd	s6,48(sp)
    11a4:	f45e                	sd	s7,40(sp)
    11a6:	f062                	sd	s8,32(sp)
    11a8:	ec66                	sd	s9,24(sp)
    11aa:	e86a                	sd	s10,16(sp)
    11ac:	e46e                	sd	s11,8(sp)
    11ae:	0005c483          	lbu	s1,0(a1)
    11b2:	18048a63          	beqz	s1,1346 <vprintf+0x1b4>
    11b6:	8a2a                	mv	s4,a0
    11b8:	8ab2                	mv	s5,a2
    11ba:	00158413          	addi	s0,a1,1
    11be:	4901                	li	s2,0
    11c0:	02500993          	li	s3,37
    11c4:	06400b93          	li	s7,100
    11c8:	06c00c13          	li	s8,108
    11cc:	07800c93          	li	s9,120
    11d0:	07000d13          	li	s10,112
    11d4:	00002db7          	lui	s11,0x2
    11d8:	00002b37          	lui	s6,0x2
    11dc:	df8b0b13          	addi	s6,s6,-520 # 1df8 <digits>
    11e0:	a839                	j	11fe <vprintf+0x6c>
    11e2:	85a6                	mv	a1,s1
    11e4:	8552                	mv	a0,s4
    11e6:	00000097          	auipc	ra,0x0
    11ea:	ef4080e7          	jalr	-268(ra) # 10da <putc>
    11ee:	a019                	j	11f4 <vprintf+0x62>
    11f0:	01390f63          	beq	s2,s3,120e <vprintf+0x7c>
    11f4:	0405                	addi	s0,s0,1
    11f6:	fff44483          	lbu	s1,-1(s0)
    11fa:	14048663          	beqz	s1,1346 <vprintf+0x1b4>
    11fe:	0004879b          	sext.w	a5,s1
    1202:	fe0917e3          	bnez	s2,11f0 <vprintf+0x5e>
    1206:	fd379ee3          	bne	a5,s3,11e2 <vprintf+0x50>
    120a:	893e                	mv	s2,a5
    120c:	b7e5                	j	11f4 <vprintf+0x62>
    120e:	05778063          	beq	a5,s7,124e <vprintf+0xbc>
    1212:	05878c63          	beq	a5,s8,126a <vprintf+0xd8>
    1216:	07978863          	beq	a5,s9,1286 <vprintf+0xf4>
    121a:	09a78463          	beq	a5,s10,12a2 <vprintf+0x110>
    121e:	07300713          	li	a4,115
    1222:	0ce78263          	beq	a5,a4,12e6 <vprintf+0x154>
    1226:	06300713          	li	a4,99
    122a:	0ee78763          	beq	a5,a4,1318 <vprintf+0x186>
    122e:	11378163          	beq	a5,s3,1330 <vprintf+0x19e>
    1232:	85ce                	mv	a1,s3
    1234:	8552                	mv	a0,s4
    1236:	00000097          	auipc	ra,0x0
    123a:	ea4080e7          	jalr	-348(ra) # 10da <putc>
    123e:	85a6                	mv	a1,s1
    1240:	8552                	mv	a0,s4
    1242:	00000097          	auipc	ra,0x0
    1246:	e98080e7          	jalr	-360(ra) # 10da <putc>
    124a:	4901                	li	s2,0
    124c:	b765                	j	11f4 <vprintf+0x62>
    124e:	008a8493          	addi	s1,s5,8
    1252:	4685                	li	a3,1
    1254:	4629                	li	a2,10
    1256:	000aa583          	lw	a1,0(s5)
    125a:	8552                	mv	a0,s4
    125c:	00000097          	auipc	ra,0x0
    1260:	e9a080e7          	jalr	-358(ra) # 10f6 <printint>
    1264:	8aa6                	mv	s5,s1
    1266:	4901                	li	s2,0
    1268:	b771                	j	11f4 <vprintf+0x62>
    126a:	008a8493          	addi	s1,s5,8
    126e:	4681                	li	a3,0
    1270:	4629                	li	a2,10
    1272:	000aa583          	lw	a1,0(s5)
    1276:	8552                	mv	a0,s4
    1278:	00000097          	auipc	ra,0x0
    127c:	e7e080e7          	jalr	-386(ra) # 10f6 <printint>
    1280:	8aa6                	mv	s5,s1
    1282:	4901                	li	s2,0
    1284:	bf85                	j	11f4 <vprintf+0x62>
    1286:	008a8493          	addi	s1,s5,8
    128a:	4681                	li	a3,0
    128c:	4641                	li	a2,16
    128e:	000aa583          	lw	a1,0(s5)
    1292:	8552                	mv	a0,s4
    1294:	00000097          	auipc	ra,0x0
    1298:	e62080e7          	jalr	-414(ra) # 10f6 <printint>
    129c:	8aa6                	mv	s5,s1
    129e:	4901                	li	s2,0
    12a0:	bf91                	j	11f4 <vprintf+0x62>
    12a2:	008a8913          	addi	s2,s5,8
    12a6:	000aba83          	ld	s5,0(s5)
    12aa:	03000593          	li	a1,48
    12ae:	8552                	mv	a0,s4
    12b0:	00000097          	auipc	ra,0x0
    12b4:	e2a080e7          	jalr	-470(ra) # 10da <putc>
    12b8:	85e6                	mv	a1,s9
    12ba:	8552                	mv	a0,s4
    12bc:	00000097          	auipc	ra,0x0
    12c0:	e1e080e7          	jalr	-482(ra) # 10da <putc>
    12c4:	44c1                	li	s1,16
    12c6:	03cad793          	srli	a5,s5,0x3c
    12ca:	97da                	add	a5,a5,s6
    12cc:	0007c583          	lbu	a1,0(a5)
    12d0:	8552                	mv	a0,s4
    12d2:	00000097          	auipc	ra,0x0
    12d6:	e08080e7          	jalr	-504(ra) # 10da <putc>
    12da:	0a92                	slli	s5,s5,0x4
    12dc:	34fd                	addiw	s1,s1,-1
    12de:	f4e5                	bnez	s1,12c6 <vprintf+0x134>
    12e0:	8aca                	mv	s5,s2
    12e2:	4901                	li	s2,0
    12e4:	bf01                	j	11f4 <vprintf+0x62>
    12e6:	008a8913          	addi	s2,s5,8
    12ea:	000ab483          	ld	s1,0(s5)
    12ee:	c085                	beqz	s1,130e <vprintf+0x17c>
    12f0:	0004c583          	lbu	a1,0(s1)
    12f4:	c5b1                	beqz	a1,1340 <vprintf+0x1ae>
    12f6:	8552                	mv	a0,s4
    12f8:	00000097          	auipc	ra,0x0
    12fc:	de2080e7          	jalr	-542(ra) # 10da <putc>
    1300:	0485                	addi	s1,s1,1
    1302:	0004c583          	lbu	a1,0(s1)
    1306:	f9e5                	bnez	a1,12f6 <vprintf+0x164>
    1308:	8aca                	mv	s5,s2
    130a:	4901                	li	s2,0
    130c:	b5e5                	j	11f4 <vprintf+0x62>
    130e:	df0d8493          	addi	s1,s11,-528 # 1df0 <mkdir+0x138>
    1312:	02800593          	li	a1,40
    1316:	b7c5                	j	12f6 <vprintf+0x164>
    1318:	008a8493          	addi	s1,s5,8
    131c:	000ac583          	lbu	a1,0(s5)
    1320:	8552                	mv	a0,s4
    1322:	00000097          	auipc	ra,0x0
    1326:	db8080e7          	jalr	-584(ra) # 10da <putc>
    132a:	8aa6                	mv	s5,s1
    132c:	4901                	li	s2,0
    132e:	b5d9                	j	11f4 <vprintf+0x62>
    1330:	85ce                	mv	a1,s3
    1332:	8552                	mv	a0,s4
    1334:	00000097          	auipc	ra,0x0
    1338:	da6080e7          	jalr	-602(ra) # 10da <putc>
    133c:	4901                	li	s2,0
    133e:	bd5d                	j	11f4 <vprintf+0x62>
    1340:	8aca                	mv	s5,s2
    1342:	4901                	li	s2,0
    1344:	bd45                	j	11f4 <vprintf+0x62>
    1346:	70a6                	ld	ra,104(sp)
    1348:	7406                	ld	s0,96(sp)
    134a:	64e6                	ld	s1,88(sp)
    134c:	6946                	ld	s2,80(sp)
    134e:	69a6                	ld	s3,72(sp)
    1350:	6a06                	ld	s4,64(sp)
    1352:	7ae2                	ld	s5,56(sp)
    1354:	7b42                	ld	s6,48(sp)
    1356:	7ba2                	ld	s7,40(sp)
    1358:	7c02                	ld	s8,32(sp)
    135a:	6ce2                	ld	s9,24(sp)
    135c:	6d42                	ld	s10,16(sp)
    135e:	6da2                	ld	s11,8(sp)
    1360:	6165                	addi	sp,sp,112
    1362:	8082                	ret

0000000000001364 <fprintf>:
    1364:	715d                	addi	sp,sp,-80
    1366:	ec06                	sd	ra,24(sp)
    1368:	f032                	sd	a2,32(sp)
    136a:	f436                	sd	a3,40(sp)
    136c:	f83a                	sd	a4,48(sp)
    136e:	fc3e                	sd	a5,56(sp)
    1370:	e0c2                	sd	a6,64(sp)
    1372:	e4c6                	sd	a7,72(sp)
    1374:	1010                	addi	a2,sp,32
    1376:	e432                	sd	a2,8(sp)
    1378:	00000097          	auipc	ra,0x0
    137c:	e1a080e7          	jalr	-486(ra) # 1192 <vprintf>
    1380:	60e2                	ld	ra,24(sp)
    1382:	6161                	addi	sp,sp,80
    1384:	8082                	ret

0000000000001386 <printf>:
    1386:	711d                	addi	sp,sp,-96
    1388:	ec06                	sd	ra,24(sp)
    138a:	f42e                	sd	a1,40(sp)
    138c:	f832                	sd	a2,48(sp)
    138e:	fc36                	sd	a3,56(sp)
    1390:	e0ba                	sd	a4,64(sp)
    1392:	e4be                	sd	a5,72(sp)
    1394:	e8c2                	sd	a6,80(sp)
    1396:	ecc6                	sd	a7,88(sp)
    1398:	1030                	addi	a2,sp,40
    139a:	e432                	sd	a2,8(sp)
    139c:	85aa                	mv	a1,a0
    139e:	4505                	li	a0,1
    13a0:	00000097          	auipc	ra,0x0
    13a4:	df2080e7          	jalr	-526(ra) # 1192 <vprintf>
    13a8:	60e2                	ld	ra,24(sp)
    13aa:	6125                	addi	sp,sp,96
    13ac:	8082                	ret

00000000000013ae <cksum>:
    13ae:	cdb1                	beqz	a1,140a <cksum+0x5c>
    13b0:	00b50833          	add	a6,a0,a1
    13b4:	4781                	li	a5,0
    13b6:	00002637          	lui	a2,0x2
    13ba:	e1060613          	addi	a2,a2,-496 # 1e10 <crctab>
    13be:	0505                	addi	a0,a0,1
    13c0:	0087969b          	slliw	a3,a5,0x8
    13c4:	0187d71b          	srliw	a4,a5,0x18
    13c8:	fff54783          	lbu	a5,-1(a0)
    13cc:	8f3d                	xor	a4,a4,a5
    13ce:	1702                	slli	a4,a4,0x20
    13d0:	9301                	srli	a4,a4,0x20
    13d2:	070a                	slli	a4,a4,0x2
    13d4:	9732                	add	a4,a4,a2
    13d6:	431c                	lw	a5,0(a4)
    13d8:	8fb5                	xor	a5,a5,a3
    13da:	2781                	sext.w	a5,a5
    13dc:	fea811e3          	bne	a6,a0,13be <cksum+0x10>
    13e0:	00002637          	lui	a2,0x2
    13e4:	e1060613          	addi	a2,a2,-496 # 1e10 <crctab>
    13e8:	0ff5f693          	andi	a3,a1,255
    13ec:	81a1                	srli	a1,a1,0x8
    13ee:	0087951b          	slliw	a0,a5,0x8
    13f2:	0187d71b          	srliw	a4,a5,0x18
    13f6:	8f35                	xor	a4,a4,a3
    13f8:	070a                	slli	a4,a4,0x2
    13fa:	9732                	add	a4,a4,a2
    13fc:	431c                	lw	a5,0(a4)
    13fe:	8fa9                	xor	a5,a5,a0
    1400:	2781                	sext.w	a5,a5
    1402:	f1fd                	bnez	a1,13e8 <cksum+0x3a>
    1404:	fff7c513          	not	a0,a5
    1408:	8082                	ret
    140a:	4781                	li	a5,0
    140c:	bfe5                	j	1404 <cksum+0x56>

000000000000140e <swap_bytes>:
    140e:	ce19                	beqz	a2,142c <swap_bytes+0x1e>
    1410:	87aa                	mv	a5,a0
    1412:	962a                	add	a2,a2,a0
    1414:	0007c703          	lbu	a4,0(a5)
    1418:	0005c683          	lbu	a3,0(a1)
    141c:	00d78023          	sb	a3,0(a5)
    1420:	00e58023          	sb	a4,0(a1)
    1424:	0785                	addi	a5,a5,1
    1426:	0585                	addi	a1,a1,1
    1428:	fec796e3          	bne	a5,a2,1414 <swap_bytes+0x6>
    142c:	8082                	ret

000000000000142e <random_init>:
    142e:	7139                	addi	sp,sp,-64
    1430:	fc06                	sd	ra,56(sp)
    1432:	f822                	sd	s0,48(sp)
    1434:	f426                	sd	s1,40(sp)
    1436:	f04a                	sd	s2,32(sp)
    1438:	ec4e                	sd	s3,24(sp)
    143a:	e852                	sd	s4,16(sp)
    143c:	c62a                	sw	a0,12(sp)
    143e:	000037b7          	lui	a5,0x3
    1442:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1446:	eca5                	bnez	s1,14be <random_init+0x90>
    1448:	00003737          	lui	a4,0x3
    144c:	01070913          	addi	s2,a4,16 # 3010 <s>
    1450:	01070713          	addi	a4,a4,16
    1454:	87a6                	mv	a5,s1
    1456:	10000693          	li	a3,256
    145a:	00f70023          	sb	a5,0(a4)
    145e:	2785                	addiw	a5,a5,1
    1460:	0705                	addi	a4,a4,1
    1462:	fed79ce3          	bne	a5,a3,145a <random_init+0x2c>
    1466:	4401                	li	s0,0
    1468:	000039b7          	lui	s3,0x3
    146c:	01098993          	addi	s3,s3,16 # 3010 <s>
    1470:	10000a13          	li	s4,256
    1474:	0034f793          	andi	a5,s1,3
    1478:	0818                	addi	a4,sp,16
    147a:	97ba                	add	a5,a5,a4
    147c:	ffc7c783          	lbu	a5,-4(a5)
    1480:	00094703          	lbu	a4,0(s2)
    1484:	9fb9                	addw	a5,a5,a4
    1486:	9c3d                	addw	s0,s0,a5
    1488:	0ff47413          	andi	s0,s0,255
    148c:	4605                	li	a2,1
    148e:	008985b3          	add	a1,s3,s0
    1492:	854a                	mv	a0,s2
    1494:	00000097          	auipc	ra,0x0
    1498:	f7a080e7          	jalr	-134(ra) # 140e <swap_bytes>
    149c:	2485                	addiw	s1,s1,1
    149e:	0905                	addi	s2,s2,1
    14a0:	fd449ae3          	bne	s1,s4,1474 <random_init+0x46>
    14a4:	000037b7          	lui	a5,0x3
    14a8:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14ac:	000037b7          	lui	a5,0x3
    14b0:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14b4:	000037b7          	lui	a5,0x3
    14b8:	4705                	li	a4,1
    14ba:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14be:	70e2                	ld	ra,56(sp)
    14c0:	7442                	ld	s0,48(sp)
    14c2:	74a2                	ld	s1,40(sp)
    14c4:	7902                	ld	s2,32(sp)
    14c6:	69e2                	ld	s3,24(sp)
    14c8:	6a42                	ld	s4,16(sp)
    14ca:	6121                	addi	sp,sp,64
    14cc:	8082                	ret

00000000000014ce <random_bytes>:
    14ce:	7139                	addi	sp,sp,-64
    14d0:	fc06                	sd	ra,56(sp)
    14d2:	f822                	sd	s0,48(sp)
    14d4:	f426                	sd	s1,40(sp)
    14d6:	f04a                	sd	s2,32(sp)
    14d8:	ec4e                	sd	s3,24(sp)
    14da:	e852                	sd	s4,16(sp)
    14dc:	e456                	sd	s5,8(sp)
    14de:	e05a                	sd	s6,0(sp)
    14e0:	892a                	mv	s2,a0
    14e2:	8aae                	mv	s5,a1
    14e4:	000037b7          	lui	a5,0x3
    14e8:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14ec:	c3c1                	beqz	a5,156c <random_bytes+0x9e>
    14ee:	060a8563          	beqz	s5,1558 <random_bytes+0x8a>
    14f2:	9aca                	add	s5,s5,s2
    14f4:	00003a37          	lui	s4,0x3
    14f8:	000034b7          	lui	s1,0x3
    14fc:	01048493          	addi	s1,s1,16 # 3010 <s>
    1500:	000039b7          	lui	s3,0x3
    1504:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1508:	2505                	addiw	a0,a0,1
    150a:	0ff57513          	andi	a0,a0,255
    150e:	00aa02a3          	sb	a0,5(s4)
    1512:	00a48b33          	add	s6,s1,a0
    1516:	000b4403          	lbu	s0,0(s6)
    151a:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    151e:	9c3d                	addw	s0,s0,a5
    1520:	0ff47413          	andi	s0,s0,255
    1524:	00898223          	sb	s0,4(s3)
    1528:	4605                	li	a2,1
    152a:	008485b3          	add	a1,s1,s0
    152e:	855a                	mv	a0,s6
    1530:	00000097          	auipc	ra,0x0
    1534:	ede080e7          	jalr	-290(ra) # 140e <swap_bytes>
    1538:	9426                	add	s0,s0,s1
    153a:	000b4783          	lbu	a5,0(s6)
    153e:	00044703          	lbu	a4,0(s0)
    1542:	9fb9                	addw	a5,a5,a4
    1544:	0ff7f793          	andi	a5,a5,255
    1548:	97a6                	add	a5,a5,s1
    154a:	0007c783          	lbu	a5,0(a5)
    154e:	00f90023          	sb	a5,0(s2)
    1552:	0905                	addi	s2,s2,1
    1554:	fb2a98e3          	bne	s5,s2,1504 <random_bytes+0x36>
    1558:	70e2                	ld	ra,56(sp)
    155a:	7442                	ld	s0,48(sp)
    155c:	74a2                	ld	s1,40(sp)
    155e:	7902                	ld	s2,32(sp)
    1560:	69e2                	ld	s3,24(sp)
    1562:	6a42                	ld	s4,16(sp)
    1564:	6aa2                	ld	s5,8(sp)
    1566:	6b02                	ld	s6,0(sp)
    1568:	6121                	addi	sp,sp,64
    156a:	8082                	ret
    156c:	4501                	li	a0,0
    156e:	00000097          	auipc	ra,0x0
    1572:	ec0080e7          	jalr	-320(ra) # 142e <random_init>
    1576:	bfa5                	j	14ee <random_bytes+0x20>

0000000000001578 <random_ulong>:
    1578:	1101                	addi	sp,sp,-32
    157a:	ec06                	sd	ra,24(sp)
    157c:	45a1                	li	a1,8
    157e:	0028                	addi	a0,sp,8
    1580:	00000097          	auipc	ra,0x0
    1584:	f4e080e7          	jalr	-178(ra) # 14ce <random_bytes>
    1588:	6522                	ld	a0,8(sp)
    158a:	60e2                	ld	ra,24(sp)
    158c:	6105                	addi	sp,sp,32
    158e:	8082                	ret

0000000000001590 <shuffle>:
    1590:	c9b9                	beqz	a1,15e6 <shuffle+0x56>
    1592:	7179                	addi	sp,sp,-48
    1594:	f406                	sd	ra,40(sp)
    1596:	f022                	sd	s0,32(sp)
    1598:	ec26                	sd	s1,24(sp)
    159a:	e84a                	sd	s2,16(sp)
    159c:	e44e                	sd	s3,8(sp)
    159e:	e052                	sd	s4,0(sp)
    15a0:	8a2a                	mv	s4,a0
    15a2:	89ae                	mv	s3,a1
    15a4:	84b2                	mv	s1,a2
    15a6:	892a                	mv	s2,a0
    15a8:	4401                	li	s0,0
    15aa:	00000097          	auipc	ra,0x0
    15ae:	fce080e7          	jalr	-50(ra) # 1578 <random_ulong>
    15b2:	408985b3          	sub	a1,s3,s0
    15b6:	02b575b3          	remu	a1,a0,a1
    15ba:	95a2                	add	a1,a1,s0
    15bc:	029585b3          	mul	a1,a1,s1
    15c0:	8626                	mv	a2,s1
    15c2:	95d2                	add	a1,a1,s4
    15c4:	854a                	mv	a0,s2
    15c6:	00000097          	auipc	ra,0x0
    15ca:	e48080e7          	jalr	-440(ra) # 140e <swap_bytes>
    15ce:	0405                	addi	s0,s0,1
    15d0:	9926                	add	s2,s2,s1
    15d2:	fc899ce3          	bne	s3,s0,15aa <shuffle+0x1a>
    15d6:	70a2                	ld	ra,40(sp)
    15d8:	7402                	ld	s0,32(sp)
    15da:	64e2                	ld	s1,24(sp)
    15dc:	6942                	ld	s2,16(sp)
    15de:	69a2                	ld	s3,8(sp)
    15e0:	6a02                	ld	s4,0(sp)
    15e2:	6145                	addi	sp,sp,48
    15e4:	8082                	ret
    15e6:	8082                	ret

00000000000015e8 <arc4_init>:
    15e8:	100500a3          	sb	zero,257(a0)
    15ec:	10050023          	sb	zero,256(a0)
    15f0:	4781                	li	a5,0
    15f2:	10000693          	li	a3,256
    15f6:	00f50733          	add	a4,a0,a5
    15fa:	00f70023          	sb	a5,0(a4)
    15fe:	0785                	addi	a5,a5,1
    1600:	fed79be3          	bne	a5,a3,15f6 <arc4_init+0xe>
    1604:	86aa                	mv	a3,a0
    1606:	10050e13          	addi	t3,a0,256
    160a:	4701                	li	a4,0
    160c:	4781                	li	a5,0
    160e:	0006c883          	lbu	a7,0(a3)
    1612:	00f58833          	add	a6,a1,a5
    1616:	00084803          	lbu	a6,0(a6)
    161a:	00e8873b          	addw	a4,a7,a4
    161e:	00e8073b          	addw	a4,a6,a4
    1622:	0ff77713          	andi	a4,a4,255
    1626:	00e50833          	add	a6,a0,a4
    162a:	00084303          	lbu	t1,0(a6)
    162e:	00668023          	sb	t1,0(a3)
    1632:	01180023          	sb	a7,0(a6)
    1636:	0785                	addi	a5,a5,1
    1638:	00c7b833          	sltu	a6,a5,a2
    163c:	41000833          	neg	a6,a6
    1640:	0107f7b3          	and	a5,a5,a6
    1644:	0685                	addi	a3,a3,1
    1646:	fdc694e3          	bne	a3,t3,160e <arc4_init+0x26>
    164a:	8082                	ret

000000000000164c <arc4_crypt>:
    164c:	10054e03          	lbu	t3,256(a0)
    1650:	10154803          	lbu	a6,257(a0)
    1654:	fff60e93          	addi	t4,a2,-1
    1658:	c225                	beqz	a2,16b8 <arc4_crypt+0x6c>
    165a:	00c588b3          	add	a7,a1,a2
    165e:	86ae                	mv	a3,a1
    1660:	001e031b          	addiw	t1,t3,1
    1664:	40b3033b          	subw	t1,t1,a1
    1668:	00d3073b          	addw	a4,t1,a3
    166c:	0ff77713          	andi	a4,a4,255
    1670:	972a                	add	a4,a4,a0
    1672:	00074603          	lbu	a2,0(a4)
    1676:	0106083b          	addw	a6,a2,a6
    167a:	0ff87813          	andi	a6,a6,255
    167e:	010507b3          	add	a5,a0,a6
    1682:	0007c583          	lbu	a1,0(a5)
    1686:	00b70023          	sb	a1,0(a4)
    168a:	00c78023          	sb	a2,0(a5)
    168e:	0685                	addi	a3,a3,1
    1690:	00074783          	lbu	a5,0(a4)
    1694:	9fb1                	addw	a5,a5,a2
    1696:	0ff7f793          	andi	a5,a5,255
    169a:	97aa                	add	a5,a5,a0
    169c:	0007c783          	lbu	a5,0(a5)
    16a0:	fff6c703          	lbu	a4,-1(a3)
    16a4:	8fb9                	xor	a5,a5,a4
    16a6:	fef68fa3          	sb	a5,-1(a3)
    16aa:	fb169fe3          	bne	a3,a7,1668 <arc4_crypt+0x1c>
    16ae:	2e85                	addiw	t4,t4,1
    16b0:	01ce8e3b          	addw	t3,t4,t3
    16b4:	0ffe7e13          	andi	t3,t3,255
    16b8:	11c50023          	sb	t3,256(a0)
    16bc:	110500a3          	sb	a6,257(a0)
    16c0:	8082                	ret

00000000000016c2 <_main>:
    16c2:	1141                	addi	sp,sp,-16
    16c4:	e406                	sd	ra,8(sp)
    16c6:	00000097          	auipc	ra,0x0
    16ca:	93a080e7          	jalr	-1734(ra) # 1000 <main>
    16ce:	4501                	li	a0,0
    16d0:	00000097          	auipc	ra,0x0
    16d4:	578080e7          	jalr	1400(ra) # 1c48 <exit>
    16d8:	60a2                	ld	ra,8(sp)
    16da:	0141                	addi	sp,sp,16
    16dc:	8082                	ret

00000000000016de <strcmp>:
    16de:	00054783          	lbu	a5,0(a0)
    16e2:	cb91                	beqz	a5,16f6 <strcmp+0x18>
    16e4:	0005c703          	lbu	a4,0(a1)
    16e8:	00f71763          	bne	a4,a5,16f6 <strcmp+0x18>
    16ec:	0505                	addi	a0,a0,1
    16ee:	0585                	addi	a1,a1,1
    16f0:	00054783          	lbu	a5,0(a0)
    16f4:	fbe5                	bnez	a5,16e4 <strcmp+0x6>
    16f6:	0005c503          	lbu	a0,0(a1)
    16fa:	40a7853b          	subw	a0,a5,a0
    16fe:	8082                	ret

0000000000001700 <strcpy>:
    1700:	87aa                	mv	a5,a0
    1702:	0585                	addi	a1,a1,1
    1704:	0785                	addi	a5,a5,1
    1706:	fff5c703          	lbu	a4,-1(a1)
    170a:	fee78fa3          	sb	a4,-1(a5)
    170e:	fb75                	bnez	a4,1702 <strcpy+0x2>
    1710:	8082                	ret

0000000000001712 <strlen>:
    1712:	00054783          	lbu	a5,0(a0)
    1716:	cf81                	beqz	a5,172e <strlen+0x1c>
    1718:	0505                	addi	a0,a0,1
    171a:	87aa                	mv	a5,a0
    171c:	4685                	li	a3,1
    171e:	9e89                	subw	a3,a3,a0
    1720:	00f6853b          	addw	a0,a3,a5
    1724:	0785                	addi	a5,a5,1
    1726:	fff7c703          	lbu	a4,-1(a5)
    172a:	fb7d                	bnez	a4,1720 <strlen+0xe>
    172c:	8082                	ret
    172e:	4501                	li	a0,0
    1730:	8082                	ret

0000000000001732 <memset>:
    1732:	ca19                	beqz	a2,1748 <memset+0x16>
    1734:	87aa                	mv	a5,a0
    1736:	1602                	slli	a2,a2,0x20
    1738:	9201                	srli	a2,a2,0x20
    173a:	00a60733          	add	a4,a2,a0
    173e:	00b78023          	sb	a1,0(a5)
    1742:	0785                	addi	a5,a5,1
    1744:	fee79de3          	bne	a5,a4,173e <memset+0xc>
    1748:	8082                	ret

000000000000174a <memcmp>:
    174a:	1101                	addi	sp,sp,-32
    174c:	ec06                	sd	ra,24(sp)
    174e:	e822                	sd	s0,16(sp)
    1750:	e426                	sd	s1,8(sp)
    1752:	e04a                	sd	s2,0(sp)
    1754:	892a                	mv	s2,a0
    1756:	842e                	mv	s0,a1
    1758:	84b2                	mv	s1,a2
    175a:	c915                	beqz	a0,178e <memcmp+0x44>
    175c:	c5ad                	beqz	a1,17c6 <memcmp+0x7c>
    175e:	fff60713          	addi	a4,a2,-1
    1762:	c645                	beqz	a2,180a <memcmp+0xc0>
    1764:	87ca                	mv	a5,s2
    1766:	00190613          	addi	a2,s2,1
    176a:	963a                	add	a2,a2,a4
    176c:	0007c683          	lbu	a3,0(a5)
    1770:	00044703          	lbu	a4,0(s0)
    1774:	08e69463          	bne	a3,a4,17fc <memcmp+0xb2>
    1778:	0785                	addi	a5,a5,1
    177a:	0405                	addi	s0,s0,1
    177c:	fec798e3          	bne	a5,a2,176c <memcmp+0x22>
    1780:	4501                	li	a0,0
    1782:	60e2                	ld	ra,24(sp)
    1784:	6442                	ld	s0,16(sp)
    1786:	64a2                	ld	s1,8(sp)
    1788:	6902                	ld	s2,0(sp)
    178a:	6105                	addi	sp,sp,32
    178c:	8082                	ret
    178e:	4501                	li	a0,0
    1790:	da6d                	beqz	a2,1782 <memcmp+0x38>
    1792:	03200693          	li	a3,50
    1796:	00002637          	lui	a2,0x2
    179a:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    179e:	000025b7          	lui	a1,0x2
    17a2:	22058593          	addi	a1,a1,544 # 2220 <crctab+0x410>
    17a6:	4509                	li	a0,2
    17a8:	00000097          	auipc	ra,0x0
    17ac:	bbc080e7          	jalr	-1092(ra) # 1364 <fprintf>
    17b0:	650d                	lui	a0,0x3
    17b2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17b6:	00000097          	auipc	ra,0x0
    17ba:	492080e7          	jalr	1170(ra) # 1c48 <exit>
    17be:	fff48713          	addi	a4,s1,-1
    17c2:	f04d                	bnez	s0,1764 <memcmp+0x1a>
    17c4:	a011                	j	17c8 <memcmp+0x7e>
    17c6:	c221                	beqz	a2,1806 <memcmp+0xbc>
    17c8:	03300693          	li	a3,51
    17cc:	00002637          	lui	a2,0x2
    17d0:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    17d4:	000025b7          	lui	a1,0x2
    17d8:	26858593          	addi	a1,a1,616 # 2268 <crctab+0x458>
    17dc:	4509                	li	a0,2
    17de:	00000097          	auipc	ra,0x0
    17e2:	b86080e7          	jalr	-1146(ra) # 1364 <fprintf>
    17e6:	650d                	lui	a0,0x3
    17e8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17ec:	00000097          	auipc	ra,0x0
    17f0:	45c080e7          	jalr	1116(ra) # 1c48 <exit>
    17f4:	fff48713          	addi	a4,s1,-1
    17f8:	4401                	li	s0,0
    17fa:	b7ad                	j	1764 <memcmp+0x1a>
    17fc:	4505                	li	a0,1
    17fe:	f8d762e3          	bltu	a4,a3,1782 <memcmp+0x38>
    1802:	557d                	li	a0,-1
    1804:	bfbd                	j	1782 <memcmp+0x38>
    1806:	4501                	li	a0,0
    1808:	bfad                	j	1782 <memcmp+0x38>
    180a:	4501                	li	a0,0
    180c:	bf9d                	j	1782 <memcmp+0x38>

000000000000180e <memcpy>:
    180e:	1101                	addi	sp,sp,-32
    1810:	ec06                	sd	ra,24(sp)
    1812:	e822                	sd	s0,16(sp)
    1814:	e426                	sd	s1,8(sp)
    1816:	e04a                	sd	s2,0(sp)
    1818:	84aa                	mv	s1,a0
    181a:	842e                	mv	s0,a1
    181c:	8932                	mv	s2,a2
    181e:	c51d                	beqz	a0,184c <memcpy+0x3e>
    1820:	c1ad                	beqz	a1,1882 <memcpy+0x74>
    1822:	fff60693          	addi	a3,a2,-1
    1826:	ce01                	beqz	a2,183e <memcpy+0x30>
    1828:	0685                	addi	a3,a3,1
    182a:	96a6                	add	a3,a3,s1
    182c:	87a6                	mv	a5,s1
    182e:	0405                	addi	s0,s0,1
    1830:	0785                	addi	a5,a5,1
    1832:	fff44703          	lbu	a4,-1(s0)
    1836:	fee78fa3          	sb	a4,-1(a5)
    183a:	fed79ae3          	bne	a5,a3,182e <memcpy+0x20>
    183e:	8526                	mv	a0,s1
    1840:	60e2                	ld	ra,24(sp)
    1842:	6442                	ld	s0,16(sp)
    1844:	64a2                	ld	s1,8(sp)
    1846:	6902                	ld	s2,0(sp)
    1848:	6105                	addi	sp,sp,32
    184a:	8082                	ret
    184c:	da6d                	beqz	a2,183e <memcpy+0x30>
    184e:	04000693          	li	a3,64
    1852:	00002637          	lui	a2,0x2
    1856:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    185a:	000025b7          	lui	a1,0x2
    185e:	2b058593          	addi	a1,a1,688 # 22b0 <crctab+0x4a0>
    1862:	4509                	li	a0,2
    1864:	00000097          	auipc	ra,0x0
    1868:	b00080e7          	jalr	-1280(ra) # 1364 <fprintf>
    186c:	650d                	lui	a0,0x3
    186e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1872:	00000097          	auipc	ra,0x0
    1876:	3d6080e7          	jalr	982(ra) # 1c48 <exit>
    187a:	fff90693          	addi	a3,s2,-1
    187e:	f44d                	bnez	s0,1828 <memcpy+0x1a>
    1880:	a011                	j	1884 <memcpy+0x76>
    1882:	de55                	beqz	a2,183e <memcpy+0x30>
    1884:	04100693          	li	a3,65
    1888:	00002637          	lui	a2,0x2
    188c:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    1890:	000025b7          	lui	a1,0x2
    1894:	2f858593          	addi	a1,a1,760 # 22f8 <crctab+0x4e8>
    1898:	4509                	li	a0,2
    189a:	00000097          	auipc	ra,0x0
    189e:	aca080e7          	jalr	-1334(ra) # 1364 <fprintf>
    18a2:	650d                	lui	a0,0x3
    18a4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18a8:	00000097          	auipc	ra,0x0
    18ac:	3a0080e7          	jalr	928(ra) # 1c48 <exit>
    18b0:	fff90693          	addi	a3,s2,-1
    18b4:	4401                	li	s0,0
    18b6:	bf8d                	j	1828 <memcpy+0x1a>

00000000000018b8 <itoa>:
    18b8:	1101                	addi	sp,sp,-32
    18ba:	ec06                	sd	ra,24(sp)
    18bc:	e822                	sd	s0,16(sp)
    18be:	e426                	sd	s1,8(sp)
    18c0:	842a                	mv	s0,a0
    18c2:	41f5d71b          	sraiw	a4,a1,0x1f
    18c6:	00e5c7b3          	xor	a5,a1,a4
    18ca:	9f99                	subw	a5,a5,a4
    18cc:	84aa                	mv	s1,a0
    18ce:	862a                	mv	a2,a0
    18d0:	4681                	li	a3,0
    18d2:	4529                	li	a0,10
    18d4:	4825                	li	a6,9
    18d6:	88b6                	mv	a7,a3
    18d8:	2685                	addiw	a3,a3,1
    18da:	02a7e73b          	remw	a4,a5,a0
    18de:	0307071b          	addiw	a4,a4,48
    18e2:	00e60023          	sb	a4,0(a2)
    18e6:	873e                	mv	a4,a5
    18e8:	02a7c7bb          	divw	a5,a5,a0
    18ec:	0605                	addi	a2,a2,1
    18ee:	fee844e3          	blt	a6,a4,18d6 <itoa+0x1e>
    18f2:	0405c863          	bltz	a1,1942 <itoa+0x8a>
    18f6:	96a2                	add	a3,a3,s0
    18f8:	00068023          	sb	zero,0(a3)
    18fc:	8522                	mv	a0,s0
    18fe:	00000097          	auipc	ra,0x0
    1902:	e14080e7          	jalr	-492(ra) # 1712 <strlen>
    1906:	fff5071b          	addiw	a4,a0,-1
    190a:	02e05763          	blez	a4,1938 <itoa+0x80>
    190e:	9722                	add	a4,a4,s0
    1910:	4681                	li	a3,0
    1912:	0004c783          	lbu	a5,0(s1)
    1916:	00074603          	lbu	a2,0(a4)
    191a:	00c48023          	sb	a2,0(s1)
    191e:	00f70023          	sb	a5,0(a4)
    1922:	0016879b          	addiw	a5,a3,1
    1926:	0007869b          	sext.w	a3,a5
    192a:	0485                	addi	s1,s1,1
    192c:	177d                	addi	a4,a4,-1
    192e:	fff7c793          	not	a5,a5
    1932:	9fa9                	addw	a5,a5,a0
    1934:	fcf6cfe3          	blt	a3,a5,1912 <itoa+0x5a>
    1938:	60e2                	ld	ra,24(sp)
    193a:	6442                	ld	s0,16(sp)
    193c:	64a2                	ld	s1,8(sp)
    193e:	6105                	addi	sp,sp,32
    1940:	8082                	ret
    1942:	96a2                	add	a3,a3,s0
    1944:	02d00793          	li	a5,45
    1948:	00f68023          	sb	a5,0(a3)
    194c:	0028869b          	addiw	a3,a7,2
    1950:	b75d                	j	18f6 <itoa+0x3e>

0000000000001952 <atoi>:
    1952:	00054783          	lbu	a5,0(a0)
    1956:	02000713          	li	a4,32
    195a:	00e79763          	bne	a5,a4,1968 <atoi+0x16>
    195e:	0505                	addi	a0,a0,1
    1960:	00054783          	lbu	a5,0(a0)
    1964:	fee78de3          	beq	a5,a4,195e <atoi+0xc>
    1968:	02b00713          	li	a4,43
    196c:	04e78663          	beq	a5,a4,19b8 <atoi+0x66>
    1970:	02d00713          	li	a4,45
    1974:	4805                	li	a6,1
    1976:	04e78463          	beq	a5,a4,19be <atoi+0x6c>
    197a:	00054683          	lbu	a3,0(a0)
    197e:	fd06879b          	addiw	a5,a3,-48
    1982:	0ff7f793          	andi	a5,a5,255
    1986:	4725                	li	a4,9
    1988:	02f76e63          	bltu	a4,a5,19c4 <atoi+0x72>
    198c:	4601                	li	a2,0
    198e:	45a5                	li	a1,9
    1990:	0505                	addi	a0,a0,1
    1992:	0026179b          	slliw	a5,a2,0x2
    1996:	9fb1                	addw	a5,a5,a2
    1998:	0017979b          	slliw	a5,a5,0x1
    199c:	9fb5                	addw	a5,a5,a3
    199e:	fd07861b          	addiw	a2,a5,-48
    19a2:	00054683          	lbu	a3,0(a0)
    19a6:	fd06871b          	addiw	a4,a3,-48
    19aa:	0ff77713          	andi	a4,a4,255
    19ae:	fee5f1e3          	bgeu	a1,a4,1990 <atoi+0x3e>
    19b2:	02c8053b          	mulw	a0,a6,a2
    19b6:	8082                	ret
    19b8:	0505                	addi	a0,a0,1
    19ba:	4805                	li	a6,1
    19bc:	bf7d                	j	197a <atoi+0x28>
    19be:	0505                	addi	a0,a0,1
    19c0:	587d                	li	a6,-1
    19c2:	bf65                	j	197a <atoi+0x28>
    19c4:	4601                	li	a2,0
    19c6:	b7f5                	j	19b2 <atoi+0x60>

00000000000019c8 <check_file_handle>:
    19c8:	d8010113          	addi	sp,sp,-640
    19cc:	26113c23          	sd	ra,632(sp)
    19d0:	26813823          	sd	s0,624(sp)
    19d4:	26913423          	sd	s1,616(sp)
    19d8:	27213023          	sd	s2,608(sp)
    19dc:	25313c23          	sd	s3,600(sp)
    19e0:	25413823          	sd	s4,592(sp)
    19e4:	25513423          	sd	s5,584(sp)
    19e8:	25613023          	sd	s6,576(sp)
    19ec:	23713c23          	sd	s7,568(sp)
    19f0:	23813823          	sd	s8,560(sp)
    19f4:	23913423          	sd	s9,552(sp)
    19f8:	23a13023          	sd	s10,544(sp)
    19fc:	21b13c23          	sd	s11,536(sp)
    1a00:	8baa                	mv	s7,a0
    1a02:	8a2e                	mv	s4,a1
    1a04:	8c32                	mv	s8,a2
    1a06:	89b6                	mv	s3,a3
    1a08:	040c                	addi	a1,sp,512
    1a0a:	00000097          	auipc	ra,0x0
    1a0e:	28e080e7          	jalr	654(ra) # 1c98 <fstat>
    1a12:	20813603          	ld	a2,520(sp)
    1a16:	03361163          	bne	a2,s3,1a38 <check_file_handle+0x70>
    1a1a:	06098763          	beqz	s3,1a88 <check_file_handle+0xc0>
    1a1e:	4901                	li	s2,0
    1a20:	20000a93          	li	s5,512
    1a24:	00002cb7          	lui	s9,0x2
    1a28:	00002db7          	lui	s11,0x2
    1a2c:	6b0d                	lui	s6,0x3
    1a2e:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a32:	00002d37          	lui	s10,0x2
    1a36:	aa39                	j	1b54 <check_file_handle+0x18c>
    1a38:	86ce                	mv	a3,s3
    1a3a:	85d2                	mv	a1,s4
    1a3c:	00002537          	lui	a0,0x2
    1a40:	34050513          	addi	a0,a0,832 # 2340 <crctab+0x530>
    1a44:	00000097          	auipc	ra,0x0
    1a48:	942080e7          	jalr	-1726(ra) # 1386 <printf>
    1a4c:	fc0999e3          	bnez	s3,1a1e <check_file_handle+0x56>
    1a50:	20813683          	ld	a3,520(sp)
    1a54:	03368a63          	beq	a3,s3,1a88 <check_file_handle+0xc0>
    1a58:	0a600813          	li	a6,166
    1a5c:	000027b7          	lui	a5,0x2
    1a60:	21078793          	addi	a5,a5,528 # 2210 <crctab+0x400>
    1a64:	874e                	mv	a4,s3
    1a66:	8652                	mv	a2,s4
    1a68:	000025b7          	lui	a1,0x2
    1a6c:	41058593          	addi	a1,a1,1040 # 2410 <crctab+0x600>
    1a70:	4509                	li	a0,2
    1a72:	00000097          	auipc	ra,0x0
    1a76:	8f2080e7          	jalr	-1806(ra) # 1364 <fprintf>
    1a7a:	650d                	lui	a0,0x3
    1a7c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a80:	00000097          	auipc	ra,0x0
    1a84:	1c8080e7          	jalr	456(ra) # 1c48 <exit>
    1a88:	85d2                	mv	a1,s4
    1a8a:	00002537          	lui	a0,0x2
    1a8e:	45850513          	addi	a0,a0,1112 # 2458 <crctab+0x648>
    1a92:	00000097          	auipc	ra,0x0
    1a96:	8f4080e7          	jalr	-1804(ra) # 1386 <printf>
    1a9a:	27813083          	ld	ra,632(sp)
    1a9e:	27013403          	ld	s0,624(sp)
    1aa2:	26813483          	ld	s1,616(sp)
    1aa6:	26013903          	ld	s2,608(sp)
    1aaa:	25813983          	ld	s3,600(sp)
    1aae:	25013a03          	ld	s4,592(sp)
    1ab2:	24813a83          	ld	s5,584(sp)
    1ab6:	24013b03          	ld	s6,576(sp)
    1aba:	23813b83          	ld	s7,568(sp)
    1abe:	23013c03          	ld	s8,560(sp)
    1ac2:	22813c83          	ld	s9,552(sp)
    1ac6:	22013d03          	ld	s10,544(sp)
    1aca:	21813d83          	ld	s11,536(sp)
    1ace:	28010113          	addi	sp,sp,640
    1ad2:	8082                	ret
    1ad4:	09d00893          	li	a7,157
    1ad8:	210c8813          	addi	a6,s9,528 # 2210 <crctab+0x400>
    1adc:	87aa                	mv	a5,a0
    1ade:	8752                	mv	a4,s4
    1ae0:	86ca                	mv	a3,s2
    1ae2:	8622                	mv	a2,s0
    1ae4:	370d8593          	addi	a1,s11,880 # 2370 <crctab+0x560>
    1ae8:	4509                	li	a0,2
    1aea:	00000097          	auipc	ra,0x0
    1aee:	87a080e7          	jalr	-1926(ra) # 1364 <fprintf>
    1af2:	855a                	mv	a0,s6
    1af4:	00000097          	auipc	ra,0x0
    1af8:	154080e7          	jalr	340(ra) # 1c48 <exit>
    1afc:	a89d                	j	1b72 <check_file_handle+0x1aa>
    1afe:	00160593          	addi	a1,a2,1
    1b02:	0285f163          	bgeu	a1,s0,1b24 <check_file_handle+0x15c>
    1b06:	00c10733          	add	a4,sp,a2
    1b0a:	00b487b3          	add	a5,s1,a1
    1b0e:	00174683          	lbu	a3,1(a4)
    1b12:	0007c783          	lbu	a5,0(a5)
    1b16:	00f68763          	beq	a3,a5,1b24 <check_file_handle+0x15c>
    1b1a:	0585                	addi	a1,a1,1
    1b1c:	0705                	addi	a4,a4,1
    1b1e:	feb416e3          	bne	s0,a1,1b0a <check_file_handle+0x142>
    1b22:	85a2                	mv	a1,s0
    1b24:	08100813          	li	a6,129
    1b28:	210c8793          	addi	a5,s9,528
    1b2c:	8752                	mv	a4,s4
    1b2e:	012606b3          	add	a3,a2,s2
    1b32:	40c58633          	sub	a2,a1,a2
    1b36:	3b8d0593          	addi	a1,s10,952 # 23b8 <crctab+0x5a8>
    1b3a:	4509                	li	a0,2
    1b3c:	00000097          	auipc	ra,0x0
    1b40:	828080e7          	jalr	-2008(ra) # 1364 <fprintf>
    1b44:	855a                	mv	a0,s6
    1b46:	00000097          	auipc	ra,0x0
    1b4a:	102080e7          	jalr	258(ra) # 1c48 <exit>
    1b4e:	9922                	add	s2,s2,s0
    1b50:	f13970e3          	bgeu	s2,s3,1a50 <check_file_handle+0x88>
    1b54:	41298433          	sub	s0,s3,s2
    1b58:	008af363          	bgeu	s5,s0,1b5e <check_file_handle+0x196>
    1b5c:	8456                	mv	s0,s5
    1b5e:	0004061b          	sext.w	a2,s0
    1b62:	858a                	mv	a1,sp
    1b64:	855e                	mv	a0,s7
    1b66:	00000097          	auipc	ra,0x0
    1b6a:	10a080e7          	jalr	266(ra) # 1c70 <read>
    1b6e:	f68513e3          	bne	a0,s0,1ad4 <check_file_handle+0x10c>
    1b72:	012c04b3          	add	s1,s8,s2
    1b76:	8622                	mv	a2,s0
    1b78:	85a6                	mv	a1,s1
    1b7a:	850a                	mv	a0,sp
    1b7c:	00000097          	auipc	ra,0x0
    1b80:	bce080e7          	jalr	-1074(ra) # 174a <memcmp>
    1b84:	d569                	beqz	a0,1b4e <check_file_handle+0x186>
    1b86:	03298163          	beq	s3,s2,1ba8 <check_file_handle+0x1e0>
    1b8a:	870a                	mv	a4,sp
    1b8c:	4601                	li	a2,0
    1b8e:	00c487b3          	add	a5,s1,a2
    1b92:	00074683          	lbu	a3,0(a4)
    1b96:	0007c783          	lbu	a5,0(a5)
    1b9a:	f6f692e3          	bne	a3,a5,1afe <check_file_handle+0x136>
    1b9e:	0605                	addi	a2,a2,1
    1ba0:	0705                	addi	a4,a4,1
    1ba2:	fe8666e3          	bltu	a2,s0,1b8e <check_file_handle+0x1c6>
    1ba6:	bfa1                	j	1afe <check_file_handle+0x136>
    1ba8:	4601                	li	a2,0
    1baa:	4585                	li	a1,1
    1bac:	bfa5                	j	1b24 <check_file_handle+0x15c>

0000000000001bae <check_file>:
    1bae:	7179                	addi	sp,sp,-48
    1bb0:	f406                	sd	ra,40(sp)
    1bb2:	f022                	sd	s0,32(sp)
    1bb4:	ec26                	sd	s1,24(sp)
    1bb6:	e84a                	sd	s2,16(sp)
    1bb8:	e44e                	sd	s3,8(sp)
    1bba:	84aa                	mv	s1,a0
    1bbc:	892e                	mv	s2,a1
    1bbe:	89b2                	mv	s3,a2
    1bc0:	4581                	li	a1,0
    1bc2:	00000097          	auipc	ra,0x0
    1bc6:	0a6080e7          	jalr	166(ra) # 1c68 <open>
    1bca:	842a                	mv	s0,a0
    1bcc:	4789                	li	a5,2
    1bce:	02a7df63          	bge	a5,a0,1c0c <check_file+0x5e>
    1bd2:	86ce                	mv	a3,s3
    1bd4:	864a                	mv	a2,s2
    1bd6:	85a6                	mv	a1,s1
    1bd8:	8522                	mv	a0,s0
    1bda:	00000097          	auipc	ra,0x0
    1bde:	dee080e7          	jalr	-530(ra) # 19c8 <check_file_handle>
    1be2:	85a6                	mv	a1,s1
    1be4:	00002537          	lui	a0,0x2
    1be8:	4e050513          	addi	a0,a0,1248 # 24e0 <crctab+0x6d0>
    1bec:	fffff097          	auipc	ra,0xfffff
    1bf0:	79a080e7          	jalr	1946(ra) # 1386 <printf>
    1bf4:	8522                	mv	a0,s0
    1bf6:	00000097          	auipc	ra,0x0
    1bfa:	09a080e7          	jalr	154(ra) # 1c90 <close>
    1bfe:	70a2                	ld	ra,40(sp)
    1c00:	7402                	ld	s0,32(sp)
    1c02:	64e2                	ld	s1,24(sp)
    1c04:	6942                	ld	s2,16(sp)
    1c06:	69a2                	ld	s3,8(sp)
    1c08:	6145                	addi	sp,sp,48
    1c0a:	8082                	ret
    1c0c:	0ae00713          	li	a4,174
    1c10:	000026b7          	lui	a3,0x2
    1c14:	21068693          	addi	a3,a3,528 # 2210 <crctab+0x400>
    1c18:	8626                	mv	a2,s1
    1c1a:	000025b7          	lui	a1,0x2
    1c1e:	47858593          	addi	a1,a1,1144 # 2478 <crctab+0x668>
    1c22:	4509                	li	a0,2
    1c24:	fffff097          	auipc	ra,0xfffff
    1c28:	740080e7          	jalr	1856(ra) # 1364 <fprintf>
    1c2c:	650d                	lui	a0,0x3
    1c2e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c32:	00000097          	auipc	ra,0x0
    1c36:	016080e7          	jalr	22(ra) # 1c48 <exit>
    1c3a:	bf61                	j	1bd2 <check_file+0x24>

0000000000001c3c <r_sp>:
    1c3c:	850a                	mv	a0,sp
    1c3e:	8082                	ret

0000000000001c40 <halt>:
    1c40:	4885                	li	a7,1
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <exit>:
    1c48:	4889                	li	a7,2
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret

0000000000001c50 <exec>:
    1c50:	488d                	li	a7,3
    1c52:	00000073          	ecall
    1c56:	8082                	ret

0000000000001c58 <wait>:
    1c58:	4891                	li	a7,4
    1c5a:	00000073          	ecall
    1c5e:	8082                	ret

0000000000001c60 <remove>:
    1c60:	4895                	li	a7,5
    1c62:	00000073          	ecall
    1c66:	8082                	ret

0000000000001c68 <open>:
    1c68:	4899                	li	a7,6
    1c6a:	00000073          	ecall
    1c6e:	8082                	ret

0000000000001c70 <read>:
    1c70:	489d                	li	a7,7
    1c72:	00000073          	ecall
    1c76:	8082                	ret

0000000000001c78 <write>:
    1c78:	48a1                	li	a7,8
    1c7a:	00000073          	ecall
    1c7e:	8082                	ret

0000000000001c80 <seek>:
    1c80:	48a5                	li	a7,9
    1c82:	00000073          	ecall
    1c86:	8082                	ret

0000000000001c88 <tell>:
    1c88:	48a9                	li	a7,10
    1c8a:	00000073          	ecall
    1c8e:	8082                	ret

0000000000001c90 <close>:
    1c90:	48ad                	li	a7,11
    1c92:	00000073          	ecall
    1c96:	8082                	ret

0000000000001c98 <fstat>:
    1c98:	48b1                	li	a7,12
    1c9a:	00000073          	ecall
    1c9e:	8082                	ret

0000000000001ca0 <mmap>:
    1ca0:	48b5                	li	a7,13
    1ca2:	00000073          	ecall
    1ca6:	8082                	ret

0000000000001ca8 <munmap>:
    1ca8:	48b9                	li	a7,14
    1caa:	00000073          	ecall
    1cae:	8082                	ret

0000000000001cb0 <chdir>:
    1cb0:	48bd                	li	a7,15
    1cb2:	00000073          	ecall
    1cb6:	8082                	ret

0000000000001cb8 <mkdir>:
    1cb8:	48c1                	li	a7,16
    1cba:	00000073          	ecall
    1cbe:	8082                	ret
