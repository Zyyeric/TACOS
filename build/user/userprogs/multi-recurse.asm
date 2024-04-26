
build/user/userprogs/multi-recurse:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	715d                	addi	sp,sp,-80
    1002:	e486                	sd	ra,72(sp)
    1004:	e0a2                	sd	s0,64(sp)
    1006:	fc26                	sd	s1,56(sp)
    1008:	842e                	mv	s0,a1
    100a:	4785                	li	a5,1
    100c:	06a7d063          	bge	a5,a0,106c <main+0x6c>
    1010:	6408                	ld	a0,8(s0)
    1012:	00001097          	auipc	ra,0x1
    1016:	982080e7          	jalr	-1662(ra) # 1994 <atoi>
    101a:	842a                	mv	s0,a0
    101c:	06a05e63          	blez	a0,1098 <main+0x98>
    1020:	347d                	addiw	s0,s0,-1
    1022:	1004                	addi	s1,sp,32
    1024:	85a2                	mv	a1,s0
    1026:	8526                	mv	a0,s1
    1028:	00001097          	auipc	ra,0x1
    102c:	8d2080e7          	jalr	-1838(ra) # 18fa <itoa>
    1030:	00002537          	lui	a0,0x2
    1034:	d9850793          	addi	a5,a0,-616 # 1d98 <mkdir+0x9e>
    1038:	e43e                	sd	a5,8(sp)
    103a:	e826                	sd	s1,16(sp)
    103c:	ec02                	sd	zero,24(sp)
    103e:	002c                	addi	a1,sp,8
    1040:	d9850513          	addi	a0,a0,-616
    1044:	00001097          	auipc	ra,0x1
    1048:	c4e080e7          	jalr	-946(ra) # 1c92 <exec>
    104c:	84aa                	mv	s1,a0
    104e:	57fd                	li	a5,-1
    1050:	06f50a63          	beq	a0,a5,10c4 <main+0xc4>
    1054:	8526                	mv	a0,s1
    1056:	00001097          	auipc	ra,0x1
    105a:	c44080e7          	jalr	-956(ra) # 1c9a <wait>
    105e:	08a41963          	bne	s0,a0,10f0 <main+0xf0>
    1062:	60a6                	ld	ra,72(sp)
    1064:	6406                	ld	s0,64(sp)
    1066:	74e2                	ld	s1,56(sp)
    1068:	6161                	addi	sp,sp,80
    106a:	8082                	ret
    106c:	469d                	li	a3,7
    106e:	00002637          	lui	a2,0x2
    1072:	d1060613          	addi	a2,a2,-752 # 1d10 <mkdir+0x16>
    1076:	000025b7          	lui	a1,0x2
    107a:	d3058593          	addi	a1,a1,-720 # 1d30 <mkdir+0x36>
    107e:	4509                	li	a0,2
    1080:	00000097          	auipc	ra,0x0
    1084:	326080e7          	jalr	806(ra) # 13a6 <fprintf>
    1088:	650d                	lui	a0,0x3
    108a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    108e:	00001097          	auipc	ra,0x1
    1092:	bfc080e7          	jalr	-1028(ra) # 1c8a <exit>
    1096:	bfad                	j	1010 <main+0x10>
    1098:	46a5                	li	a3,9
    109a:	00002637          	lui	a2,0x2
    109e:	d1060613          	addi	a2,a2,-752 # 1d10 <mkdir+0x16>
    10a2:	000025b7          	lui	a1,0x2
    10a6:	d6858593          	addi	a1,a1,-664 # 1d68 <mkdir+0x6e>
    10aa:	4509                	li	a0,2
    10ac:	00000097          	auipc	ra,0x0
    10b0:	2fa080e7          	jalr	762(ra) # 13a6 <fprintf>
    10b4:	650d                	lui	a0,0x3
    10b6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10ba:	00001097          	auipc	ra,0x1
    10be:	bd0080e7          	jalr	-1072(ra) # 1c8a <exit>
    10c2:	bfb9                	j	1020 <main+0x20>
    10c4:	46c5                	li	a3,17
    10c6:	00002637          	lui	a2,0x2
    10ca:	d1060613          	addi	a2,a2,-752 # 1d10 <mkdir+0x16>
    10ce:	000025b7          	lui	a1,0x2
    10d2:	da058593          	addi	a1,a1,-608 # 1da0 <mkdir+0xa6>
    10d6:	4509                	li	a0,2
    10d8:	00000097          	auipc	ra,0x0
    10dc:	2ce080e7          	jalr	718(ra) # 13a6 <fprintf>
    10e0:	650d                	lui	a0,0x3
    10e2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10e6:	00001097          	auipc	ra,0x1
    10ea:	ba4080e7          	jalr	-1116(ra) # 1c8a <exit>
    10ee:	b79d                	j	1054 <main+0x54>
    10f0:	46c9                	li	a3,18
    10f2:	00002637          	lui	a2,0x2
    10f6:	d1060613          	addi	a2,a2,-752 # 1d10 <mkdir+0x16>
    10fa:	000025b7          	lui	a1,0x2
    10fe:	e0058593          	addi	a1,a1,-512 # 1e00 <mkdir+0x106>
    1102:	4509                	li	a0,2
    1104:	00000097          	auipc	ra,0x0
    1108:	2a2080e7          	jalr	674(ra) # 13a6 <fprintf>
    110c:	650d                	lui	a0,0x3
    110e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1112:	00001097          	auipc	ra,0x1
    1116:	b78080e7          	jalr	-1160(ra) # 1c8a <exit>
    111a:	b7a1                	j	1062 <main+0x62>

000000000000111c <putc>:
    111c:	1101                	addi	sp,sp,-32
    111e:	ec06                	sd	ra,24(sp)
    1120:	00b107a3          	sb	a1,15(sp)
    1124:	4605                	li	a2,1
    1126:	00f10593          	addi	a1,sp,15
    112a:	00001097          	auipc	ra,0x1
    112e:	b90080e7          	jalr	-1136(ra) # 1cba <write>
    1132:	60e2                	ld	ra,24(sp)
    1134:	6105                	addi	sp,sp,32
    1136:	8082                	ret

0000000000001138 <printint>:
    1138:	7179                	addi	sp,sp,-48
    113a:	f406                	sd	ra,40(sp)
    113c:	f022                	sd	s0,32(sp)
    113e:	ec26                	sd	s1,24(sp)
    1140:	e84a                	sd	s2,16(sp)
    1142:	84aa                	mv	s1,a0
    1144:	c299                	beqz	a3,114a <printint+0x12>
    1146:	0805c363          	bltz	a1,11cc <printint+0x94>
    114a:	2581                	sext.w	a1,a1
    114c:	4881                	li	a7,0
    114e:	868a                	mv	a3,sp
    1150:	4701                	li	a4,0
    1152:	2601                	sext.w	a2,a2
    1154:	00002537          	lui	a0,0x2
    1158:	e4850513          	addi	a0,a0,-440 # 1e48 <digits>
    115c:	883a                	mv	a6,a4
    115e:	2705                	addiw	a4,a4,1
    1160:	02c5f7bb          	remuw	a5,a1,a2
    1164:	1782                	slli	a5,a5,0x20
    1166:	9381                	srli	a5,a5,0x20
    1168:	97aa                	add	a5,a5,a0
    116a:	0007c783          	lbu	a5,0(a5)
    116e:	00f68023          	sb	a5,0(a3)
    1172:	0005879b          	sext.w	a5,a1
    1176:	02c5d5bb          	divuw	a1,a1,a2
    117a:	0685                	addi	a3,a3,1
    117c:	fec7f0e3          	bgeu	a5,a2,115c <printint+0x24>
    1180:	00088a63          	beqz	a7,1194 <printint+0x5c>
    1184:	081c                	addi	a5,sp,16
    1186:	973e                	add	a4,a4,a5
    1188:	02d00793          	li	a5,45
    118c:	fef70823          	sb	a5,-16(a4)
    1190:	0028071b          	addiw	a4,a6,2
    1194:	02e05663          	blez	a4,11c0 <printint+0x88>
    1198:	00e10433          	add	s0,sp,a4
    119c:	fff10913          	addi	s2,sp,-1
    11a0:	993a                	add	s2,s2,a4
    11a2:	377d                	addiw	a4,a4,-1
    11a4:	1702                	slli	a4,a4,0x20
    11a6:	9301                	srli	a4,a4,0x20
    11a8:	40e90933          	sub	s2,s2,a4
    11ac:	fff44583          	lbu	a1,-1(s0)
    11b0:	8526                	mv	a0,s1
    11b2:	00000097          	auipc	ra,0x0
    11b6:	f6a080e7          	jalr	-150(ra) # 111c <putc>
    11ba:	147d                	addi	s0,s0,-1
    11bc:	ff2418e3          	bne	s0,s2,11ac <printint+0x74>
    11c0:	70a2                	ld	ra,40(sp)
    11c2:	7402                	ld	s0,32(sp)
    11c4:	64e2                	ld	s1,24(sp)
    11c6:	6942                	ld	s2,16(sp)
    11c8:	6145                	addi	sp,sp,48
    11ca:	8082                	ret
    11cc:	40b005bb          	negw	a1,a1
    11d0:	4885                	li	a7,1
    11d2:	bfb5                	j	114e <printint+0x16>

00000000000011d4 <vprintf>:
    11d4:	7159                	addi	sp,sp,-112
    11d6:	f486                	sd	ra,104(sp)
    11d8:	f0a2                	sd	s0,96(sp)
    11da:	eca6                	sd	s1,88(sp)
    11dc:	e8ca                	sd	s2,80(sp)
    11de:	e4ce                	sd	s3,72(sp)
    11e0:	e0d2                	sd	s4,64(sp)
    11e2:	fc56                	sd	s5,56(sp)
    11e4:	f85a                	sd	s6,48(sp)
    11e6:	f45e                	sd	s7,40(sp)
    11e8:	f062                	sd	s8,32(sp)
    11ea:	ec66                	sd	s9,24(sp)
    11ec:	e86a                	sd	s10,16(sp)
    11ee:	e46e                	sd	s11,8(sp)
    11f0:	0005c483          	lbu	s1,0(a1)
    11f4:	18048a63          	beqz	s1,1388 <vprintf+0x1b4>
    11f8:	8a2a                	mv	s4,a0
    11fa:	8ab2                	mv	s5,a2
    11fc:	00158413          	addi	s0,a1,1
    1200:	4901                	li	s2,0
    1202:	02500993          	li	s3,37
    1206:	06400b93          	li	s7,100
    120a:	06c00c13          	li	s8,108
    120e:	07800c93          	li	s9,120
    1212:	07000d13          	li	s10,112
    1216:	00002db7          	lui	s11,0x2
    121a:	00002b37          	lui	s6,0x2
    121e:	e48b0b13          	addi	s6,s6,-440 # 1e48 <digits>
    1222:	a839                	j	1240 <vprintf+0x6c>
    1224:	85a6                	mv	a1,s1
    1226:	8552                	mv	a0,s4
    1228:	00000097          	auipc	ra,0x0
    122c:	ef4080e7          	jalr	-268(ra) # 111c <putc>
    1230:	a019                	j	1236 <vprintf+0x62>
    1232:	01390f63          	beq	s2,s3,1250 <vprintf+0x7c>
    1236:	0405                	addi	s0,s0,1
    1238:	fff44483          	lbu	s1,-1(s0)
    123c:	14048663          	beqz	s1,1388 <vprintf+0x1b4>
    1240:	0004879b          	sext.w	a5,s1
    1244:	fe0917e3          	bnez	s2,1232 <vprintf+0x5e>
    1248:	fd379ee3          	bne	a5,s3,1224 <vprintf+0x50>
    124c:	893e                	mv	s2,a5
    124e:	b7e5                	j	1236 <vprintf+0x62>
    1250:	05778063          	beq	a5,s7,1290 <vprintf+0xbc>
    1254:	05878c63          	beq	a5,s8,12ac <vprintf+0xd8>
    1258:	07978863          	beq	a5,s9,12c8 <vprintf+0xf4>
    125c:	09a78463          	beq	a5,s10,12e4 <vprintf+0x110>
    1260:	07300713          	li	a4,115
    1264:	0ce78263          	beq	a5,a4,1328 <vprintf+0x154>
    1268:	06300713          	li	a4,99
    126c:	0ee78763          	beq	a5,a4,135a <vprintf+0x186>
    1270:	11378163          	beq	a5,s3,1372 <vprintf+0x19e>
    1274:	85ce                	mv	a1,s3
    1276:	8552                	mv	a0,s4
    1278:	00000097          	auipc	ra,0x0
    127c:	ea4080e7          	jalr	-348(ra) # 111c <putc>
    1280:	85a6                	mv	a1,s1
    1282:	8552                	mv	a0,s4
    1284:	00000097          	auipc	ra,0x0
    1288:	e98080e7          	jalr	-360(ra) # 111c <putc>
    128c:	4901                	li	s2,0
    128e:	b765                	j	1236 <vprintf+0x62>
    1290:	008a8493          	addi	s1,s5,8
    1294:	4685                	li	a3,1
    1296:	4629                	li	a2,10
    1298:	000aa583          	lw	a1,0(s5)
    129c:	8552                	mv	a0,s4
    129e:	00000097          	auipc	ra,0x0
    12a2:	e9a080e7          	jalr	-358(ra) # 1138 <printint>
    12a6:	8aa6                	mv	s5,s1
    12a8:	4901                	li	s2,0
    12aa:	b771                	j	1236 <vprintf+0x62>
    12ac:	008a8493          	addi	s1,s5,8
    12b0:	4681                	li	a3,0
    12b2:	4629                	li	a2,10
    12b4:	000aa583          	lw	a1,0(s5)
    12b8:	8552                	mv	a0,s4
    12ba:	00000097          	auipc	ra,0x0
    12be:	e7e080e7          	jalr	-386(ra) # 1138 <printint>
    12c2:	8aa6                	mv	s5,s1
    12c4:	4901                	li	s2,0
    12c6:	bf85                	j	1236 <vprintf+0x62>
    12c8:	008a8493          	addi	s1,s5,8
    12cc:	4681                	li	a3,0
    12ce:	4641                	li	a2,16
    12d0:	000aa583          	lw	a1,0(s5)
    12d4:	8552                	mv	a0,s4
    12d6:	00000097          	auipc	ra,0x0
    12da:	e62080e7          	jalr	-414(ra) # 1138 <printint>
    12de:	8aa6                	mv	s5,s1
    12e0:	4901                	li	s2,0
    12e2:	bf91                	j	1236 <vprintf+0x62>
    12e4:	008a8913          	addi	s2,s5,8
    12e8:	000aba83          	ld	s5,0(s5)
    12ec:	03000593          	li	a1,48
    12f0:	8552                	mv	a0,s4
    12f2:	00000097          	auipc	ra,0x0
    12f6:	e2a080e7          	jalr	-470(ra) # 111c <putc>
    12fa:	85e6                	mv	a1,s9
    12fc:	8552                	mv	a0,s4
    12fe:	00000097          	auipc	ra,0x0
    1302:	e1e080e7          	jalr	-482(ra) # 111c <putc>
    1306:	44c1                	li	s1,16
    1308:	03cad793          	srli	a5,s5,0x3c
    130c:	97da                	add	a5,a5,s6
    130e:	0007c583          	lbu	a1,0(a5)
    1312:	8552                	mv	a0,s4
    1314:	00000097          	auipc	ra,0x0
    1318:	e08080e7          	jalr	-504(ra) # 111c <putc>
    131c:	0a92                	slli	s5,s5,0x4
    131e:	34fd                	addiw	s1,s1,-1
    1320:	f4e5                	bnez	s1,1308 <vprintf+0x134>
    1322:	8aca                	mv	s5,s2
    1324:	4901                	li	s2,0
    1326:	bf01                	j	1236 <vprintf+0x62>
    1328:	008a8913          	addi	s2,s5,8
    132c:	000ab483          	ld	s1,0(s5)
    1330:	c085                	beqz	s1,1350 <vprintf+0x17c>
    1332:	0004c583          	lbu	a1,0(s1)
    1336:	c5b1                	beqz	a1,1382 <vprintf+0x1ae>
    1338:	8552                	mv	a0,s4
    133a:	00000097          	auipc	ra,0x0
    133e:	de2080e7          	jalr	-542(ra) # 111c <putc>
    1342:	0485                	addi	s1,s1,1
    1344:	0004c583          	lbu	a1,0(s1)
    1348:	f9e5                	bnez	a1,1338 <vprintf+0x164>
    134a:	8aca                	mv	s5,s2
    134c:	4901                	li	s2,0
    134e:	b5e5                	j	1236 <vprintf+0x62>
    1350:	e40d8493          	addi	s1,s11,-448 # 1e40 <mkdir+0x146>
    1354:	02800593          	li	a1,40
    1358:	b7c5                	j	1338 <vprintf+0x164>
    135a:	008a8493          	addi	s1,s5,8
    135e:	000ac583          	lbu	a1,0(s5)
    1362:	8552                	mv	a0,s4
    1364:	00000097          	auipc	ra,0x0
    1368:	db8080e7          	jalr	-584(ra) # 111c <putc>
    136c:	8aa6                	mv	s5,s1
    136e:	4901                	li	s2,0
    1370:	b5d9                	j	1236 <vprintf+0x62>
    1372:	85ce                	mv	a1,s3
    1374:	8552                	mv	a0,s4
    1376:	00000097          	auipc	ra,0x0
    137a:	da6080e7          	jalr	-602(ra) # 111c <putc>
    137e:	4901                	li	s2,0
    1380:	bd5d                	j	1236 <vprintf+0x62>
    1382:	8aca                	mv	s5,s2
    1384:	4901                	li	s2,0
    1386:	bd45                	j	1236 <vprintf+0x62>
    1388:	70a6                	ld	ra,104(sp)
    138a:	7406                	ld	s0,96(sp)
    138c:	64e6                	ld	s1,88(sp)
    138e:	6946                	ld	s2,80(sp)
    1390:	69a6                	ld	s3,72(sp)
    1392:	6a06                	ld	s4,64(sp)
    1394:	7ae2                	ld	s5,56(sp)
    1396:	7b42                	ld	s6,48(sp)
    1398:	7ba2                	ld	s7,40(sp)
    139a:	7c02                	ld	s8,32(sp)
    139c:	6ce2                	ld	s9,24(sp)
    139e:	6d42                	ld	s10,16(sp)
    13a0:	6da2                	ld	s11,8(sp)
    13a2:	6165                	addi	sp,sp,112
    13a4:	8082                	ret

00000000000013a6 <fprintf>:
    13a6:	715d                	addi	sp,sp,-80
    13a8:	ec06                	sd	ra,24(sp)
    13aa:	f032                	sd	a2,32(sp)
    13ac:	f436                	sd	a3,40(sp)
    13ae:	f83a                	sd	a4,48(sp)
    13b0:	fc3e                	sd	a5,56(sp)
    13b2:	e0c2                	sd	a6,64(sp)
    13b4:	e4c6                	sd	a7,72(sp)
    13b6:	1010                	addi	a2,sp,32
    13b8:	e432                	sd	a2,8(sp)
    13ba:	00000097          	auipc	ra,0x0
    13be:	e1a080e7          	jalr	-486(ra) # 11d4 <vprintf>
    13c2:	60e2                	ld	ra,24(sp)
    13c4:	6161                	addi	sp,sp,80
    13c6:	8082                	ret

00000000000013c8 <printf>:
    13c8:	711d                	addi	sp,sp,-96
    13ca:	ec06                	sd	ra,24(sp)
    13cc:	f42e                	sd	a1,40(sp)
    13ce:	f832                	sd	a2,48(sp)
    13d0:	fc36                	sd	a3,56(sp)
    13d2:	e0ba                	sd	a4,64(sp)
    13d4:	e4be                	sd	a5,72(sp)
    13d6:	e8c2                	sd	a6,80(sp)
    13d8:	ecc6                	sd	a7,88(sp)
    13da:	1030                	addi	a2,sp,40
    13dc:	e432                	sd	a2,8(sp)
    13de:	85aa                	mv	a1,a0
    13e0:	4505                	li	a0,1
    13e2:	00000097          	auipc	ra,0x0
    13e6:	df2080e7          	jalr	-526(ra) # 11d4 <vprintf>
    13ea:	60e2                	ld	ra,24(sp)
    13ec:	6125                	addi	sp,sp,96
    13ee:	8082                	ret

00000000000013f0 <cksum>:
    13f0:	cdb1                	beqz	a1,144c <cksum+0x5c>
    13f2:	00b50833          	add	a6,a0,a1
    13f6:	4781                	li	a5,0
    13f8:	00002637          	lui	a2,0x2
    13fc:	e6060613          	addi	a2,a2,-416 # 1e60 <crctab>
    1400:	0505                	addi	a0,a0,1
    1402:	0087969b          	slliw	a3,a5,0x8
    1406:	0187d71b          	srliw	a4,a5,0x18
    140a:	fff54783          	lbu	a5,-1(a0)
    140e:	8f3d                	xor	a4,a4,a5
    1410:	1702                	slli	a4,a4,0x20
    1412:	9301                	srli	a4,a4,0x20
    1414:	070a                	slli	a4,a4,0x2
    1416:	9732                	add	a4,a4,a2
    1418:	431c                	lw	a5,0(a4)
    141a:	8fb5                	xor	a5,a5,a3
    141c:	2781                	sext.w	a5,a5
    141e:	fea811e3          	bne	a6,a0,1400 <cksum+0x10>
    1422:	00002637          	lui	a2,0x2
    1426:	e6060613          	addi	a2,a2,-416 # 1e60 <crctab>
    142a:	0ff5f693          	andi	a3,a1,255
    142e:	81a1                	srli	a1,a1,0x8
    1430:	0087951b          	slliw	a0,a5,0x8
    1434:	0187d71b          	srliw	a4,a5,0x18
    1438:	8f35                	xor	a4,a4,a3
    143a:	070a                	slli	a4,a4,0x2
    143c:	9732                	add	a4,a4,a2
    143e:	431c                	lw	a5,0(a4)
    1440:	8fa9                	xor	a5,a5,a0
    1442:	2781                	sext.w	a5,a5
    1444:	f1fd                	bnez	a1,142a <cksum+0x3a>
    1446:	fff7c513          	not	a0,a5
    144a:	8082                	ret
    144c:	4781                	li	a5,0
    144e:	bfe5                	j	1446 <cksum+0x56>

0000000000001450 <swap_bytes>:
    1450:	ce19                	beqz	a2,146e <swap_bytes+0x1e>
    1452:	87aa                	mv	a5,a0
    1454:	962a                	add	a2,a2,a0
    1456:	0007c703          	lbu	a4,0(a5)
    145a:	0005c683          	lbu	a3,0(a1)
    145e:	00d78023          	sb	a3,0(a5)
    1462:	00e58023          	sb	a4,0(a1)
    1466:	0785                	addi	a5,a5,1
    1468:	0585                	addi	a1,a1,1
    146a:	fec796e3          	bne	a5,a2,1456 <swap_bytes+0x6>
    146e:	8082                	ret

0000000000001470 <random_init>:
    1470:	7139                	addi	sp,sp,-64
    1472:	fc06                	sd	ra,56(sp)
    1474:	f822                	sd	s0,48(sp)
    1476:	f426                	sd	s1,40(sp)
    1478:	f04a                	sd	s2,32(sp)
    147a:	ec4e                	sd	s3,24(sp)
    147c:	e852                	sd	s4,16(sp)
    147e:	c62a                	sw	a0,12(sp)
    1480:	000037b7          	lui	a5,0x3
    1484:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1488:	eca5                	bnez	s1,1500 <random_init+0x90>
    148a:	00003737          	lui	a4,0x3
    148e:	01070913          	addi	s2,a4,16 # 3010 <s>
    1492:	01070713          	addi	a4,a4,16
    1496:	87a6                	mv	a5,s1
    1498:	10000693          	li	a3,256
    149c:	00f70023          	sb	a5,0(a4)
    14a0:	2785                	addiw	a5,a5,1
    14a2:	0705                	addi	a4,a4,1
    14a4:	fed79ce3          	bne	a5,a3,149c <random_init+0x2c>
    14a8:	4401                	li	s0,0
    14aa:	000039b7          	lui	s3,0x3
    14ae:	01098993          	addi	s3,s3,16 # 3010 <s>
    14b2:	10000a13          	li	s4,256
    14b6:	0034f793          	andi	a5,s1,3
    14ba:	0818                	addi	a4,sp,16
    14bc:	97ba                	add	a5,a5,a4
    14be:	ffc7c783          	lbu	a5,-4(a5)
    14c2:	00094703          	lbu	a4,0(s2)
    14c6:	9fb9                	addw	a5,a5,a4
    14c8:	9c3d                	addw	s0,s0,a5
    14ca:	0ff47413          	andi	s0,s0,255
    14ce:	4605                	li	a2,1
    14d0:	008985b3          	add	a1,s3,s0
    14d4:	854a                	mv	a0,s2
    14d6:	00000097          	auipc	ra,0x0
    14da:	f7a080e7          	jalr	-134(ra) # 1450 <swap_bytes>
    14de:	2485                	addiw	s1,s1,1
    14e0:	0905                	addi	s2,s2,1
    14e2:	fd449ae3          	bne	s1,s4,14b6 <random_init+0x46>
    14e6:	000037b7          	lui	a5,0x3
    14ea:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14ee:	000037b7          	lui	a5,0x3
    14f2:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14f6:	000037b7          	lui	a5,0x3
    14fa:	4705                	li	a4,1
    14fc:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1500:	70e2                	ld	ra,56(sp)
    1502:	7442                	ld	s0,48(sp)
    1504:	74a2                	ld	s1,40(sp)
    1506:	7902                	ld	s2,32(sp)
    1508:	69e2                	ld	s3,24(sp)
    150a:	6a42                	ld	s4,16(sp)
    150c:	6121                	addi	sp,sp,64
    150e:	8082                	ret

0000000000001510 <random_bytes>:
    1510:	7139                	addi	sp,sp,-64
    1512:	fc06                	sd	ra,56(sp)
    1514:	f822                	sd	s0,48(sp)
    1516:	f426                	sd	s1,40(sp)
    1518:	f04a                	sd	s2,32(sp)
    151a:	ec4e                	sd	s3,24(sp)
    151c:	e852                	sd	s4,16(sp)
    151e:	e456                	sd	s5,8(sp)
    1520:	e05a                	sd	s6,0(sp)
    1522:	892a                	mv	s2,a0
    1524:	8aae                	mv	s5,a1
    1526:	000037b7          	lui	a5,0x3
    152a:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    152e:	c3c1                	beqz	a5,15ae <random_bytes+0x9e>
    1530:	060a8563          	beqz	s5,159a <random_bytes+0x8a>
    1534:	9aca                	add	s5,s5,s2
    1536:	00003a37          	lui	s4,0x3
    153a:	000034b7          	lui	s1,0x3
    153e:	01048493          	addi	s1,s1,16 # 3010 <s>
    1542:	000039b7          	lui	s3,0x3
    1546:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    154a:	2505                	addiw	a0,a0,1
    154c:	0ff57513          	andi	a0,a0,255
    1550:	00aa02a3          	sb	a0,5(s4)
    1554:	00a48b33          	add	s6,s1,a0
    1558:	000b4403          	lbu	s0,0(s6)
    155c:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1560:	9c3d                	addw	s0,s0,a5
    1562:	0ff47413          	andi	s0,s0,255
    1566:	00898223          	sb	s0,4(s3)
    156a:	4605                	li	a2,1
    156c:	008485b3          	add	a1,s1,s0
    1570:	855a                	mv	a0,s6
    1572:	00000097          	auipc	ra,0x0
    1576:	ede080e7          	jalr	-290(ra) # 1450 <swap_bytes>
    157a:	9426                	add	s0,s0,s1
    157c:	000b4783          	lbu	a5,0(s6)
    1580:	00044703          	lbu	a4,0(s0)
    1584:	9fb9                	addw	a5,a5,a4
    1586:	0ff7f793          	andi	a5,a5,255
    158a:	97a6                	add	a5,a5,s1
    158c:	0007c783          	lbu	a5,0(a5)
    1590:	00f90023          	sb	a5,0(s2)
    1594:	0905                	addi	s2,s2,1
    1596:	fb2a98e3          	bne	s5,s2,1546 <random_bytes+0x36>
    159a:	70e2                	ld	ra,56(sp)
    159c:	7442                	ld	s0,48(sp)
    159e:	74a2                	ld	s1,40(sp)
    15a0:	7902                	ld	s2,32(sp)
    15a2:	69e2                	ld	s3,24(sp)
    15a4:	6a42                	ld	s4,16(sp)
    15a6:	6aa2                	ld	s5,8(sp)
    15a8:	6b02                	ld	s6,0(sp)
    15aa:	6121                	addi	sp,sp,64
    15ac:	8082                	ret
    15ae:	4501                	li	a0,0
    15b0:	00000097          	auipc	ra,0x0
    15b4:	ec0080e7          	jalr	-320(ra) # 1470 <random_init>
    15b8:	bfa5                	j	1530 <random_bytes+0x20>

00000000000015ba <random_ulong>:
    15ba:	1101                	addi	sp,sp,-32
    15bc:	ec06                	sd	ra,24(sp)
    15be:	45a1                	li	a1,8
    15c0:	0028                	addi	a0,sp,8
    15c2:	00000097          	auipc	ra,0x0
    15c6:	f4e080e7          	jalr	-178(ra) # 1510 <random_bytes>
    15ca:	6522                	ld	a0,8(sp)
    15cc:	60e2                	ld	ra,24(sp)
    15ce:	6105                	addi	sp,sp,32
    15d0:	8082                	ret

00000000000015d2 <shuffle>:
    15d2:	c9b9                	beqz	a1,1628 <shuffle+0x56>
    15d4:	7179                	addi	sp,sp,-48
    15d6:	f406                	sd	ra,40(sp)
    15d8:	f022                	sd	s0,32(sp)
    15da:	ec26                	sd	s1,24(sp)
    15dc:	e84a                	sd	s2,16(sp)
    15de:	e44e                	sd	s3,8(sp)
    15e0:	e052                	sd	s4,0(sp)
    15e2:	8a2a                	mv	s4,a0
    15e4:	89ae                	mv	s3,a1
    15e6:	84b2                	mv	s1,a2
    15e8:	892a                	mv	s2,a0
    15ea:	4401                	li	s0,0
    15ec:	00000097          	auipc	ra,0x0
    15f0:	fce080e7          	jalr	-50(ra) # 15ba <random_ulong>
    15f4:	408985b3          	sub	a1,s3,s0
    15f8:	02b575b3          	remu	a1,a0,a1
    15fc:	95a2                	add	a1,a1,s0
    15fe:	029585b3          	mul	a1,a1,s1
    1602:	8626                	mv	a2,s1
    1604:	95d2                	add	a1,a1,s4
    1606:	854a                	mv	a0,s2
    1608:	00000097          	auipc	ra,0x0
    160c:	e48080e7          	jalr	-440(ra) # 1450 <swap_bytes>
    1610:	0405                	addi	s0,s0,1
    1612:	9926                	add	s2,s2,s1
    1614:	fc899ce3          	bne	s3,s0,15ec <shuffle+0x1a>
    1618:	70a2                	ld	ra,40(sp)
    161a:	7402                	ld	s0,32(sp)
    161c:	64e2                	ld	s1,24(sp)
    161e:	6942                	ld	s2,16(sp)
    1620:	69a2                	ld	s3,8(sp)
    1622:	6a02                	ld	s4,0(sp)
    1624:	6145                	addi	sp,sp,48
    1626:	8082                	ret
    1628:	8082                	ret

000000000000162a <arc4_init>:
    162a:	100500a3          	sb	zero,257(a0)
    162e:	10050023          	sb	zero,256(a0)
    1632:	4781                	li	a5,0
    1634:	10000693          	li	a3,256
    1638:	00f50733          	add	a4,a0,a5
    163c:	00f70023          	sb	a5,0(a4)
    1640:	0785                	addi	a5,a5,1
    1642:	fed79be3          	bne	a5,a3,1638 <arc4_init+0xe>
    1646:	86aa                	mv	a3,a0
    1648:	10050e13          	addi	t3,a0,256
    164c:	4701                	li	a4,0
    164e:	4781                	li	a5,0
    1650:	0006c883          	lbu	a7,0(a3)
    1654:	00f58833          	add	a6,a1,a5
    1658:	00084803          	lbu	a6,0(a6)
    165c:	00e8873b          	addw	a4,a7,a4
    1660:	00e8073b          	addw	a4,a6,a4
    1664:	0ff77713          	andi	a4,a4,255
    1668:	00e50833          	add	a6,a0,a4
    166c:	00084303          	lbu	t1,0(a6)
    1670:	00668023          	sb	t1,0(a3)
    1674:	01180023          	sb	a7,0(a6)
    1678:	0785                	addi	a5,a5,1
    167a:	00c7b833          	sltu	a6,a5,a2
    167e:	41000833          	neg	a6,a6
    1682:	0107f7b3          	and	a5,a5,a6
    1686:	0685                	addi	a3,a3,1
    1688:	fdc694e3          	bne	a3,t3,1650 <arc4_init+0x26>
    168c:	8082                	ret

000000000000168e <arc4_crypt>:
    168e:	10054e03          	lbu	t3,256(a0)
    1692:	10154803          	lbu	a6,257(a0)
    1696:	fff60e93          	addi	t4,a2,-1
    169a:	c225                	beqz	a2,16fa <arc4_crypt+0x6c>
    169c:	00c588b3          	add	a7,a1,a2
    16a0:	86ae                	mv	a3,a1
    16a2:	001e031b          	addiw	t1,t3,1
    16a6:	40b3033b          	subw	t1,t1,a1
    16aa:	00d3073b          	addw	a4,t1,a3
    16ae:	0ff77713          	andi	a4,a4,255
    16b2:	972a                	add	a4,a4,a0
    16b4:	00074603          	lbu	a2,0(a4)
    16b8:	0106083b          	addw	a6,a2,a6
    16bc:	0ff87813          	andi	a6,a6,255
    16c0:	010507b3          	add	a5,a0,a6
    16c4:	0007c583          	lbu	a1,0(a5)
    16c8:	00b70023          	sb	a1,0(a4)
    16cc:	00c78023          	sb	a2,0(a5)
    16d0:	0685                	addi	a3,a3,1
    16d2:	00074783          	lbu	a5,0(a4)
    16d6:	9fb1                	addw	a5,a5,a2
    16d8:	0ff7f793          	andi	a5,a5,255
    16dc:	97aa                	add	a5,a5,a0
    16de:	0007c783          	lbu	a5,0(a5)
    16e2:	fff6c703          	lbu	a4,-1(a3)
    16e6:	8fb9                	xor	a5,a5,a4
    16e8:	fef68fa3          	sb	a5,-1(a3)
    16ec:	fb169fe3          	bne	a3,a7,16aa <arc4_crypt+0x1c>
    16f0:	2e85                	addiw	t4,t4,1
    16f2:	01ce8e3b          	addw	t3,t4,t3
    16f6:	0ffe7e13          	andi	t3,t3,255
    16fa:	11c50023          	sb	t3,256(a0)
    16fe:	110500a3          	sb	a6,257(a0)
    1702:	8082                	ret

0000000000001704 <_main>:
    1704:	1141                	addi	sp,sp,-16
    1706:	e406                	sd	ra,8(sp)
    1708:	00000097          	auipc	ra,0x0
    170c:	8f8080e7          	jalr	-1800(ra) # 1000 <main>
    1710:	4501                	li	a0,0
    1712:	00000097          	auipc	ra,0x0
    1716:	578080e7          	jalr	1400(ra) # 1c8a <exit>
    171a:	60a2                	ld	ra,8(sp)
    171c:	0141                	addi	sp,sp,16
    171e:	8082                	ret

0000000000001720 <strcmp>:
    1720:	00054783          	lbu	a5,0(a0)
    1724:	cb91                	beqz	a5,1738 <strcmp+0x18>
    1726:	0005c703          	lbu	a4,0(a1)
    172a:	00f71763          	bne	a4,a5,1738 <strcmp+0x18>
    172e:	0505                	addi	a0,a0,1
    1730:	0585                	addi	a1,a1,1
    1732:	00054783          	lbu	a5,0(a0)
    1736:	fbe5                	bnez	a5,1726 <strcmp+0x6>
    1738:	0005c503          	lbu	a0,0(a1)
    173c:	40a7853b          	subw	a0,a5,a0
    1740:	8082                	ret

0000000000001742 <strcpy>:
    1742:	87aa                	mv	a5,a0
    1744:	0585                	addi	a1,a1,1
    1746:	0785                	addi	a5,a5,1
    1748:	fff5c703          	lbu	a4,-1(a1)
    174c:	fee78fa3          	sb	a4,-1(a5)
    1750:	fb75                	bnez	a4,1744 <strcpy+0x2>
    1752:	8082                	ret

0000000000001754 <strlen>:
    1754:	00054783          	lbu	a5,0(a0)
    1758:	cf81                	beqz	a5,1770 <strlen+0x1c>
    175a:	0505                	addi	a0,a0,1
    175c:	87aa                	mv	a5,a0
    175e:	4685                	li	a3,1
    1760:	9e89                	subw	a3,a3,a0
    1762:	00f6853b          	addw	a0,a3,a5
    1766:	0785                	addi	a5,a5,1
    1768:	fff7c703          	lbu	a4,-1(a5)
    176c:	fb7d                	bnez	a4,1762 <strlen+0xe>
    176e:	8082                	ret
    1770:	4501                	li	a0,0
    1772:	8082                	ret

0000000000001774 <memset>:
    1774:	ca19                	beqz	a2,178a <memset+0x16>
    1776:	87aa                	mv	a5,a0
    1778:	1602                	slli	a2,a2,0x20
    177a:	9201                	srli	a2,a2,0x20
    177c:	00a60733          	add	a4,a2,a0
    1780:	00b78023          	sb	a1,0(a5)
    1784:	0785                	addi	a5,a5,1
    1786:	fee79de3          	bne	a5,a4,1780 <memset+0xc>
    178a:	8082                	ret

000000000000178c <memcmp>:
    178c:	1101                	addi	sp,sp,-32
    178e:	ec06                	sd	ra,24(sp)
    1790:	e822                	sd	s0,16(sp)
    1792:	e426                	sd	s1,8(sp)
    1794:	e04a                	sd	s2,0(sp)
    1796:	892a                	mv	s2,a0
    1798:	842e                	mv	s0,a1
    179a:	84b2                	mv	s1,a2
    179c:	c915                	beqz	a0,17d0 <memcmp+0x44>
    179e:	c5ad                	beqz	a1,1808 <memcmp+0x7c>
    17a0:	fff60713          	addi	a4,a2,-1
    17a4:	c645                	beqz	a2,184c <memcmp+0xc0>
    17a6:	87ca                	mv	a5,s2
    17a8:	00190613          	addi	a2,s2,1
    17ac:	963a                	add	a2,a2,a4
    17ae:	0007c683          	lbu	a3,0(a5)
    17b2:	00044703          	lbu	a4,0(s0)
    17b6:	08e69463          	bne	a3,a4,183e <memcmp+0xb2>
    17ba:	0785                	addi	a5,a5,1
    17bc:	0405                	addi	s0,s0,1
    17be:	fec798e3          	bne	a5,a2,17ae <memcmp+0x22>
    17c2:	4501                	li	a0,0
    17c4:	60e2                	ld	ra,24(sp)
    17c6:	6442                	ld	s0,16(sp)
    17c8:	64a2                	ld	s1,8(sp)
    17ca:	6902                	ld	s2,0(sp)
    17cc:	6105                	addi	sp,sp,32
    17ce:	8082                	ret
    17d0:	4501                	li	a0,0
    17d2:	da6d                	beqz	a2,17c4 <memcmp+0x38>
    17d4:	03200693          	li	a3,50
    17d8:	00002637          	lui	a2,0x2
    17dc:	26060613          	addi	a2,a2,608 # 2260 <crctab+0x400>
    17e0:	000025b7          	lui	a1,0x2
    17e4:	27058593          	addi	a1,a1,624 # 2270 <crctab+0x410>
    17e8:	4509                	li	a0,2
    17ea:	00000097          	auipc	ra,0x0
    17ee:	bbc080e7          	jalr	-1092(ra) # 13a6 <fprintf>
    17f2:	650d                	lui	a0,0x3
    17f4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17f8:	00000097          	auipc	ra,0x0
    17fc:	492080e7          	jalr	1170(ra) # 1c8a <exit>
    1800:	fff48713          	addi	a4,s1,-1
    1804:	f04d                	bnez	s0,17a6 <memcmp+0x1a>
    1806:	a011                	j	180a <memcmp+0x7e>
    1808:	c221                	beqz	a2,1848 <memcmp+0xbc>
    180a:	03300693          	li	a3,51
    180e:	00002637          	lui	a2,0x2
    1812:	26060613          	addi	a2,a2,608 # 2260 <crctab+0x400>
    1816:	000025b7          	lui	a1,0x2
    181a:	2b858593          	addi	a1,a1,696 # 22b8 <crctab+0x458>
    181e:	4509                	li	a0,2
    1820:	00000097          	auipc	ra,0x0
    1824:	b86080e7          	jalr	-1146(ra) # 13a6 <fprintf>
    1828:	650d                	lui	a0,0x3
    182a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    182e:	00000097          	auipc	ra,0x0
    1832:	45c080e7          	jalr	1116(ra) # 1c8a <exit>
    1836:	fff48713          	addi	a4,s1,-1
    183a:	4401                	li	s0,0
    183c:	b7ad                	j	17a6 <memcmp+0x1a>
    183e:	4505                	li	a0,1
    1840:	f8d762e3          	bltu	a4,a3,17c4 <memcmp+0x38>
    1844:	557d                	li	a0,-1
    1846:	bfbd                	j	17c4 <memcmp+0x38>
    1848:	4501                	li	a0,0
    184a:	bfad                	j	17c4 <memcmp+0x38>
    184c:	4501                	li	a0,0
    184e:	bf9d                	j	17c4 <memcmp+0x38>

0000000000001850 <memcpy>:
    1850:	1101                	addi	sp,sp,-32
    1852:	ec06                	sd	ra,24(sp)
    1854:	e822                	sd	s0,16(sp)
    1856:	e426                	sd	s1,8(sp)
    1858:	e04a                	sd	s2,0(sp)
    185a:	84aa                	mv	s1,a0
    185c:	842e                	mv	s0,a1
    185e:	8932                	mv	s2,a2
    1860:	c51d                	beqz	a0,188e <memcpy+0x3e>
    1862:	c1ad                	beqz	a1,18c4 <memcpy+0x74>
    1864:	fff60693          	addi	a3,a2,-1
    1868:	ce01                	beqz	a2,1880 <memcpy+0x30>
    186a:	0685                	addi	a3,a3,1
    186c:	96a6                	add	a3,a3,s1
    186e:	87a6                	mv	a5,s1
    1870:	0405                	addi	s0,s0,1
    1872:	0785                	addi	a5,a5,1
    1874:	fff44703          	lbu	a4,-1(s0)
    1878:	fee78fa3          	sb	a4,-1(a5)
    187c:	fed79ae3          	bne	a5,a3,1870 <memcpy+0x20>
    1880:	8526                	mv	a0,s1
    1882:	60e2                	ld	ra,24(sp)
    1884:	6442                	ld	s0,16(sp)
    1886:	64a2                	ld	s1,8(sp)
    1888:	6902                	ld	s2,0(sp)
    188a:	6105                	addi	sp,sp,32
    188c:	8082                	ret
    188e:	da6d                	beqz	a2,1880 <memcpy+0x30>
    1890:	04000693          	li	a3,64
    1894:	00002637          	lui	a2,0x2
    1898:	26060613          	addi	a2,a2,608 # 2260 <crctab+0x400>
    189c:	000025b7          	lui	a1,0x2
    18a0:	30058593          	addi	a1,a1,768 # 2300 <crctab+0x4a0>
    18a4:	4509                	li	a0,2
    18a6:	00000097          	auipc	ra,0x0
    18aa:	b00080e7          	jalr	-1280(ra) # 13a6 <fprintf>
    18ae:	650d                	lui	a0,0x3
    18b0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18b4:	00000097          	auipc	ra,0x0
    18b8:	3d6080e7          	jalr	982(ra) # 1c8a <exit>
    18bc:	fff90693          	addi	a3,s2,-1
    18c0:	f44d                	bnez	s0,186a <memcpy+0x1a>
    18c2:	a011                	j	18c6 <memcpy+0x76>
    18c4:	de55                	beqz	a2,1880 <memcpy+0x30>
    18c6:	04100693          	li	a3,65
    18ca:	00002637          	lui	a2,0x2
    18ce:	26060613          	addi	a2,a2,608 # 2260 <crctab+0x400>
    18d2:	000025b7          	lui	a1,0x2
    18d6:	34858593          	addi	a1,a1,840 # 2348 <crctab+0x4e8>
    18da:	4509                	li	a0,2
    18dc:	00000097          	auipc	ra,0x0
    18e0:	aca080e7          	jalr	-1334(ra) # 13a6 <fprintf>
    18e4:	650d                	lui	a0,0x3
    18e6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18ea:	00000097          	auipc	ra,0x0
    18ee:	3a0080e7          	jalr	928(ra) # 1c8a <exit>
    18f2:	fff90693          	addi	a3,s2,-1
    18f6:	4401                	li	s0,0
    18f8:	bf8d                	j	186a <memcpy+0x1a>

00000000000018fa <itoa>:
    18fa:	1101                	addi	sp,sp,-32
    18fc:	ec06                	sd	ra,24(sp)
    18fe:	e822                	sd	s0,16(sp)
    1900:	e426                	sd	s1,8(sp)
    1902:	842a                	mv	s0,a0
    1904:	41f5d71b          	sraiw	a4,a1,0x1f
    1908:	00e5c7b3          	xor	a5,a1,a4
    190c:	9f99                	subw	a5,a5,a4
    190e:	84aa                	mv	s1,a0
    1910:	862a                	mv	a2,a0
    1912:	4681                	li	a3,0
    1914:	4529                	li	a0,10
    1916:	4825                	li	a6,9
    1918:	88b6                	mv	a7,a3
    191a:	2685                	addiw	a3,a3,1
    191c:	02a7e73b          	remw	a4,a5,a0
    1920:	0307071b          	addiw	a4,a4,48
    1924:	00e60023          	sb	a4,0(a2)
    1928:	873e                	mv	a4,a5
    192a:	02a7c7bb          	divw	a5,a5,a0
    192e:	0605                	addi	a2,a2,1
    1930:	fee844e3          	blt	a6,a4,1918 <itoa+0x1e>
    1934:	0405c863          	bltz	a1,1984 <itoa+0x8a>
    1938:	96a2                	add	a3,a3,s0
    193a:	00068023          	sb	zero,0(a3)
    193e:	8522                	mv	a0,s0
    1940:	00000097          	auipc	ra,0x0
    1944:	e14080e7          	jalr	-492(ra) # 1754 <strlen>
    1948:	fff5071b          	addiw	a4,a0,-1
    194c:	02e05763          	blez	a4,197a <itoa+0x80>
    1950:	9722                	add	a4,a4,s0
    1952:	4681                	li	a3,0
    1954:	0004c783          	lbu	a5,0(s1)
    1958:	00074603          	lbu	a2,0(a4)
    195c:	00c48023          	sb	a2,0(s1)
    1960:	00f70023          	sb	a5,0(a4)
    1964:	0016879b          	addiw	a5,a3,1
    1968:	0007869b          	sext.w	a3,a5
    196c:	0485                	addi	s1,s1,1
    196e:	177d                	addi	a4,a4,-1
    1970:	fff7c793          	not	a5,a5
    1974:	9fa9                	addw	a5,a5,a0
    1976:	fcf6cfe3          	blt	a3,a5,1954 <itoa+0x5a>
    197a:	60e2                	ld	ra,24(sp)
    197c:	6442                	ld	s0,16(sp)
    197e:	64a2                	ld	s1,8(sp)
    1980:	6105                	addi	sp,sp,32
    1982:	8082                	ret
    1984:	96a2                	add	a3,a3,s0
    1986:	02d00793          	li	a5,45
    198a:	00f68023          	sb	a5,0(a3)
    198e:	0028869b          	addiw	a3,a7,2
    1992:	b75d                	j	1938 <itoa+0x3e>

0000000000001994 <atoi>:
    1994:	00054783          	lbu	a5,0(a0)
    1998:	02000713          	li	a4,32
    199c:	00e79763          	bne	a5,a4,19aa <atoi+0x16>
    19a0:	0505                	addi	a0,a0,1
    19a2:	00054783          	lbu	a5,0(a0)
    19a6:	fee78de3          	beq	a5,a4,19a0 <atoi+0xc>
    19aa:	02b00713          	li	a4,43
    19ae:	04e78663          	beq	a5,a4,19fa <atoi+0x66>
    19b2:	02d00713          	li	a4,45
    19b6:	4805                	li	a6,1
    19b8:	04e78463          	beq	a5,a4,1a00 <atoi+0x6c>
    19bc:	00054683          	lbu	a3,0(a0)
    19c0:	fd06879b          	addiw	a5,a3,-48
    19c4:	0ff7f793          	andi	a5,a5,255
    19c8:	4725                	li	a4,9
    19ca:	02f76e63          	bltu	a4,a5,1a06 <atoi+0x72>
    19ce:	4601                	li	a2,0
    19d0:	45a5                	li	a1,9
    19d2:	0505                	addi	a0,a0,1
    19d4:	0026179b          	slliw	a5,a2,0x2
    19d8:	9fb1                	addw	a5,a5,a2
    19da:	0017979b          	slliw	a5,a5,0x1
    19de:	9fb5                	addw	a5,a5,a3
    19e0:	fd07861b          	addiw	a2,a5,-48
    19e4:	00054683          	lbu	a3,0(a0)
    19e8:	fd06871b          	addiw	a4,a3,-48
    19ec:	0ff77713          	andi	a4,a4,255
    19f0:	fee5f1e3          	bgeu	a1,a4,19d2 <atoi+0x3e>
    19f4:	02c8053b          	mulw	a0,a6,a2
    19f8:	8082                	ret
    19fa:	0505                	addi	a0,a0,1
    19fc:	4805                	li	a6,1
    19fe:	bf7d                	j	19bc <atoi+0x28>
    1a00:	0505                	addi	a0,a0,1
    1a02:	587d                	li	a6,-1
    1a04:	bf65                	j	19bc <atoi+0x28>
    1a06:	4601                	li	a2,0
    1a08:	b7f5                	j	19f4 <atoi+0x60>

0000000000001a0a <check_file_handle>:
    1a0a:	d8010113          	addi	sp,sp,-640
    1a0e:	26113c23          	sd	ra,632(sp)
    1a12:	26813823          	sd	s0,624(sp)
    1a16:	26913423          	sd	s1,616(sp)
    1a1a:	27213023          	sd	s2,608(sp)
    1a1e:	25313c23          	sd	s3,600(sp)
    1a22:	25413823          	sd	s4,592(sp)
    1a26:	25513423          	sd	s5,584(sp)
    1a2a:	25613023          	sd	s6,576(sp)
    1a2e:	23713c23          	sd	s7,568(sp)
    1a32:	23813823          	sd	s8,560(sp)
    1a36:	23913423          	sd	s9,552(sp)
    1a3a:	23a13023          	sd	s10,544(sp)
    1a3e:	21b13c23          	sd	s11,536(sp)
    1a42:	8baa                	mv	s7,a0
    1a44:	8a2e                	mv	s4,a1
    1a46:	8c32                	mv	s8,a2
    1a48:	89b6                	mv	s3,a3
    1a4a:	040c                	addi	a1,sp,512
    1a4c:	00000097          	auipc	ra,0x0
    1a50:	28e080e7          	jalr	654(ra) # 1cda <fstat>
    1a54:	20813603          	ld	a2,520(sp)
    1a58:	03361163          	bne	a2,s3,1a7a <check_file_handle+0x70>
    1a5c:	06098763          	beqz	s3,1aca <check_file_handle+0xc0>
    1a60:	4901                	li	s2,0
    1a62:	20000a93          	li	s5,512
    1a66:	00002cb7          	lui	s9,0x2
    1a6a:	00002db7          	lui	s11,0x2
    1a6e:	6b0d                	lui	s6,0x3
    1a70:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a74:	00002d37          	lui	s10,0x2
    1a78:	aa39                	j	1b96 <check_file_handle+0x18c>
    1a7a:	86ce                	mv	a3,s3
    1a7c:	85d2                	mv	a1,s4
    1a7e:	00002537          	lui	a0,0x2
    1a82:	39050513          	addi	a0,a0,912 # 2390 <crctab+0x530>
    1a86:	00000097          	auipc	ra,0x0
    1a8a:	942080e7          	jalr	-1726(ra) # 13c8 <printf>
    1a8e:	fc0999e3          	bnez	s3,1a60 <check_file_handle+0x56>
    1a92:	20813683          	ld	a3,520(sp)
    1a96:	03368a63          	beq	a3,s3,1aca <check_file_handle+0xc0>
    1a9a:	0a600813          	li	a6,166
    1a9e:	000027b7          	lui	a5,0x2
    1aa2:	26078793          	addi	a5,a5,608 # 2260 <crctab+0x400>
    1aa6:	874e                	mv	a4,s3
    1aa8:	8652                	mv	a2,s4
    1aaa:	000025b7          	lui	a1,0x2
    1aae:	46058593          	addi	a1,a1,1120 # 2460 <crctab+0x600>
    1ab2:	4509                	li	a0,2
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	8f2080e7          	jalr	-1806(ra) # 13a6 <fprintf>
    1abc:	650d                	lui	a0,0x3
    1abe:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1ac2:	00000097          	auipc	ra,0x0
    1ac6:	1c8080e7          	jalr	456(ra) # 1c8a <exit>
    1aca:	85d2                	mv	a1,s4
    1acc:	00002537          	lui	a0,0x2
    1ad0:	4a850513          	addi	a0,a0,1192 # 24a8 <crctab+0x648>
    1ad4:	00000097          	auipc	ra,0x0
    1ad8:	8f4080e7          	jalr	-1804(ra) # 13c8 <printf>
    1adc:	27813083          	ld	ra,632(sp)
    1ae0:	27013403          	ld	s0,624(sp)
    1ae4:	26813483          	ld	s1,616(sp)
    1ae8:	26013903          	ld	s2,608(sp)
    1aec:	25813983          	ld	s3,600(sp)
    1af0:	25013a03          	ld	s4,592(sp)
    1af4:	24813a83          	ld	s5,584(sp)
    1af8:	24013b03          	ld	s6,576(sp)
    1afc:	23813b83          	ld	s7,568(sp)
    1b00:	23013c03          	ld	s8,560(sp)
    1b04:	22813c83          	ld	s9,552(sp)
    1b08:	22013d03          	ld	s10,544(sp)
    1b0c:	21813d83          	ld	s11,536(sp)
    1b10:	28010113          	addi	sp,sp,640
    1b14:	8082                	ret
    1b16:	09d00893          	li	a7,157
    1b1a:	260c8813          	addi	a6,s9,608 # 2260 <crctab+0x400>
    1b1e:	87aa                	mv	a5,a0
    1b20:	8752                	mv	a4,s4
    1b22:	86ca                	mv	a3,s2
    1b24:	8622                	mv	a2,s0
    1b26:	3c0d8593          	addi	a1,s11,960 # 23c0 <crctab+0x560>
    1b2a:	4509                	li	a0,2
    1b2c:	00000097          	auipc	ra,0x0
    1b30:	87a080e7          	jalr	-1926(ra) # 13a6 <fprintf>
    1b34:	855a                	mv	a0,s6
    1b36:	00000097          	auipc	ra,0x0
    1b3a:	154080e7          	jalr	340(ra) # 1c8a <exit>
    1b3e:	a89d                	j	1bb4 <check_file_handle+0x1aa>
    1b40:	00160593          	addi	a1,a2,1
    1b44:	0285f163          	bgeu	a1,s0,1b66 <check_file_handle+0x15c>
    1b48:	00c10733          	add	a4,sp,a2
    1b4c:	00b487b3          	add	a5,s1,a1
    1b50:	00174683          	lbu	a3,1(a4)
    1b54:	0007c783          	lbu	a5,0(a5)
    1b58:	00f68763          	beq	a3,a5,1b66 <check_file_handle+0x15c>
    1b5c:	0585                	addi	a1,a1,1
    1b5e:	0705                	addi	a4,a4,1
    1b60:	feb416e3          	bne	s0,a1,1b4c <check_file_handle+0x142>
    1b64:	85a2                	mv	a1,s0
    1b66:	08100813          	li	a6,129
    1b6a:	260c8793          	addi	a5,s9,608
    1b6e:	8752                	mv	a4,s4
    1b70:	012606b3          	add	a3,a2,s2
    1b74:	40c58633          	sub	a2,a1,a2
    1b78:	408d0593          	addi	a1,s10,1032 # 2408 <crctab+0x5a8>
    1b7c:	4509                	li	a0,2
    1b7e:	00000097          	auipc	ra,0x0
    1b82:	828080e7          	jalr	-2008(ra) # 13a6 <fprintf>
    1b86:	855a                	mv	a0,s6
    1b88:	00000097          	auipc	ra,0x0
    1b8c:	102080e7          	jalr	258(ra) # 1c8a <exit>
    1b90:	9922                	add	s2,s2,s0
    1b92:	f13970e3          	bgeu	s2,s3,1a92 <check_file_handle+0x88>
    1b96:	41298433          	sub	s0,s3,s2
    1b9a:	008af363          	bgeu	s5,s0,1ba0 <check_file_handle+0x196>
    1b9e:	8456                	mv	s0,s5
    1ba0:	0004061b          	sext.w	a2,s0
    1ba4:	858a                	mv	a1,sp
    1ba6:	855e                	mv	a0,s7
    1ba8:	00000097          	auipc	ra,0x0
    1bac:	10a080e7          	jalr	266(ra) # 1cb2 <read>
    1bb0:	f68513e3          	bne	a0,s0,1b16 <check_file_handle+0x10c>
    1bb4:	012c04b3          	add	s1,s8,s2
    1bb8:	8622                	mv	a2,s0
    1bba:	85a6                	mv	a1,s1
    1bbc:	850a                	mv	a0,sp
    1bbe:	00000097          	auipc	ra,0x0
    1bc2:	bce080e7          	jalr	-1074(ra) # 178c <memcmp>
    1bc6:	d569                	beqz	a0,1b90 <check_file_handle+0x186>
    1bc8:	03298163          	beq	s3,s2,1bea <check_file_handle+0x1e0>
    1bcc:	870a                	mv	a4,sp
    1bce:	4601                	li	a2,0
    1bd0:	00c487b3          	add	a5,s1,a2
    1bd4:	00074683          	lbu	a3,0(a4)
    1bd8:	0007c783          	lbu	a5,0(a5)
    1bdc:	f6f692e3          	bne	a3,a5,1b40 <check_file_handle+0x136>
    1be0:	0605                	addi	a2,a2,1
    1be2:	0705                	addi	a4,a4,1
    1be4:	fe8666e3          	bltu	a2,s0,1bd0 <check_file_handle+0x1c6>
    1be8:	bfa1                	j	1b40 <check_file_handle+0x136>
    1bea:	4601                	li	a2,0
    1bec:	4585                	li	a1,1
    1bee:	bfa5                	j	1b66 <check_file_handle+0x15c>

0000000000001bf0 <check_file>:
    1bf0:	7179                	addi	sp,sp,-48
    1bf2:	f406                	sd	ra,40(sp)
    1bf4:	f022                	sd	s0,32(sp)
    1bf6:	ec26                	sd	s1,24(sp)
    1bf8:	e84a                	sd	s2,16(sp)
    1bfa:	e44e                	sd	s3,8(sp)
    1bfc:	84aa                	mv	s1,a0
    1bfe:	892e                	mv	s2,a1
    1c00:	89b2                	mv	s3,a2
    1c02:	4581                	li	a1,0
    1c04:	00000097          	auipc	ra,0x0
    1c08:	0a6080e7          	jalr	166(ra) # 1caa <open>
    1c0c:	842a                	mv	s0,a0
    1c0e:	4789                	li	a5,2
    1c10:	02a7df63          	bge	a5,a0,1c4e <check_file+0x5e>
    1c14:	86ce                	mv	a3,s3
    1c16:	864a                	mv	a2,s2
    1c18:	85a6                	mv	a1,s1
    1c1a:	8522                	mv	a0,s0
    1c1c:	00000097          	auipc	ra,0x0
    1c20:	dee080e7          	jalr	-530(ra) # 1a0a <check_file_handle>
    1c24:	85a6                	mv	a1,s1
    1c26:	00002537          	lui	a0,0x2
    1c2a:	53050513          	addi	a0,a0,1328 # 2530 <crctab+0x6d0>
    1c2e:	fffff097          	auipc	ra,0xfffff
    1c32:	79a080e7          	jalr	1946(ra) # 13c8 <printf>
    1c36:	8522                	mv	a0,s0
    1c38:	00000097          	auipc	ra,0x0
    1c3c:	09a080e7          	jalr	154(ra) # 1cd2 <close>
    1c40:	70a2                	ld	ra,40(sp)
    1c42:	7402                	ld	s0,32(sp)
    1c44:	64e2                	ld	s1,24(sp)
    1c46:	6942                	ld	s2,16(sp)
    1c48:	69a2                	ld	s3,8(sp)
    1c4a:	6145                	addi	sp,sp,48
    1c4c:	8082                	ret
    1c4e:	0ae00713          	li	a4,174
    1c52:	000026b7          	lui	a3,0x2
    1c56:	26068693          	addi	a3,a3,608 # 2260 <crctab+0x400>
    1c5a:	8626                	mv	a2,s1
    1c5c:	000025b7          	lui	a1,0x2
    1c60:	4c858593          	addi	a1,a1,1224 # 24c8 <crctab+0x668>
    1c64:	4509                	li	a0,2
    1c66:	fffff097          	auipc	ra,0xfffff
    1c6a:	740080e7          	jalr	1856(ra) # 13a6 <fprintf>
    1c6e:	650d                	lui	a0,0x3
    1c70:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c74:	00000097          	auipc	ra,0x0
    1c78:	016080e7          	jalr	22(ra) # 1c8a <exit>
    1c7c:	bf61                	j	1c14 <check_file+0x24>

0000000000001c7e <r_sp>:
    1c7e:	850a                	mv	a0,sp
    1c80:	8082                	ret

0000000000001c82 <halt>:
    1c82:	4885                	li	a7,1
    1c84:	00000073          	ecall
    1c88:	8082                	ret

0000000000001c8a <exit>:
    1c8a:	4889                	li	a7,2
    1c8c:	00000073          	ecall
    1c90:	8082                	ret

0000000000001c92 <exec>:
    1c92:	488d                	li	a7,3
    1c94:	00000073          	ecall
    1c98:	8082                	ret

0000000000001c9a <wait>:
    1c9a:	4891                	li	a7,4
    1c9c:	00000073          	ecall
    1ca0:	8082                	ret

0000000000001ca2 <remove>:
    1ca2:	4895                	li	a7,5
    1ca4:	00000073          	ecall
    1ca8:	8082                	ret

0000000000001caa <open>:
    1caa:	4899                	li	a7,6
    1cac:	00000073          	ecall
    1cb0:	8082                	ret

0000000000001cb2 <read>:
    1cb2:	489d                	li	a7,7
    1cb4:	00000073          	ecall
    1cb8:	8082                	ret

0000000000001cba <write>:
    1cba:	48a1                	li	a7,8
    1cbc:	00000073          	ecall
    1cc0:	8082                	ret

0000000000001cc2 <seek>:
    1cc2:	48a5                	li	a7,9
    1cc4:	00000073          	ecall
    1cc8:	8082                	ret

0000000000001cca <tell>:
    1cca:	48a9                	li	a7,10
    1ccc:	00000073          	ecall
    1cd0:	8082                	ret

0000000000001cd2 <close>:
    1cd2:	48ad                	li	a7,11
    1cd4:	00000073          	ecall
    1cd8:	8082                	ret

0000000000001cda <fstat>:
    1cda:	48b1                	li	a7,12
    1cdc:	00000073          	ecall
    1ce0:	8082                	ret

0000000000001ce2 <mmap>:
    1ce2:	48b5                	li	a7,13
    1ce4:	00000073          	ecall
    1ce8:	8082                	ret

0000000000001cea <munmap>:
    1cea:	48b9                	li	a7,14
    1cec:	00000073          	ecall
    1cf0:	8082                	ret

0000000000001cf2 <chdir>:
    1cf2:	48bd                	li	a7,15
    1cf4:	00000073          	ecall
    1cf8:	8082                	ret

0000000000001cfa <mkdir>:
    1cfa:	48c1                	li	a7,16
    1cfc:	00000073          	ecall
    1d00:	8082                	ret
