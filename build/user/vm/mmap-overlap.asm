
build/user/vm/mmap-overlap:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	e426                	sd	s1,8(sp)
    1008:	4581                	li	a1,0
    100a:	00002537          	lui	a0,0x2
    100e:	d1050513          	addi	a0,a0,-752 # 1d10 <mkdir+0x12>
    1012:	00001097          	auipc	ra,0x1
    1016:	c9c080e7          	jalr	-868(ra) # 1cae <open>
    101a:	84aa                	mv	s1,a0
    101c:	4789                	li	a5,2
    101e:	06a7df63          	bge	a5,a0,109c <main+0x9c>
    1022:	100005b7          	lui	a1,0x10000
    1026:	8526                	mv	a0,s1
    1028:	00001097          	auipc	ra,0x1
    102c:	cbe080e7          	jalr	-834(ra) # 1ce6 <mmap>
    1030:	57fd                	li	a5,-1
    1032:	08f50b63          	beq	a0,a5,10c8 <main+0xc8>
    1036:	4581                	li	a1,0
    1038:	00002537          	lui	a0,0x2
    103c:	d1050513          	addi	a0,a0,-752 # 1d10 <mkdir+0x12>
    1040:	00001097          	auipc	ra,0x1
    1044:	c6e080e7          	jalr	-914(ra) # 1cae <open>
    1048:	842a                	mv	s0,a0
    104a:	4789                	li	a5,2
    104c:	00a7d463          	bge	a5,a0,1054 <main+0x54>
    1050:	02a49763          	bne	s1,a0,107e <main+0x7e>
    1054:	46b1                	li	a3,12
    1056:	00002637          	lui	a2,0x2
    105a:	d1860613          	addi	a2,a2,-744 # 1d18 <mkdir+0x1a>
    105e:	000025b7          	lui	a1,0x2
    1062:	de858593          	addi	a1,a1,-536 # 1de8 <mkdir+0xea>
    1066:	4509                	li	a0,2
    1068:	00000097          	auipc	ra,0x0
    106c:	342080e7          	jalr	834(ra) # 13aa <fprintf>
    1070:	650d                	lui	a0,0x3
    1072:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1076:	00001097          	auipc	ra,0x1
    107a:	c18080e7          	jalr	-1000(ra) # 1c8e <exit>
    107e:	100015b7          	lui	a1,0x10001
    1082:	8522                	mv	a0,s0
    1084:	00001097          	auipc	ra,0x1
    1088:	c62080e7          	jalr	-926(ra) # 1ce6 <mmap>
    108c:	57fd                	li	a5,-1
    108e:	06f51363          	bne	a0,a5,10f4 <main+0xf4>
    1092:	60e2                	ld	ra,24(sp)
    1094:	6442                	ld	s0,16(sp)
    1096:	64a2                	ld	s1,8(sp)
    1098:	6105                	addi	sp,sp,32
    109a:	8082                	ret
    109c:	46a9                	li	a3,10
    109e:	00002637          	lui	a2,0x2
    10a2:	d1860613          	addi	a2,a2,-744 # 1d18 <mkdir+0x1a>
    10a6:	000025b7          	lui	a1,0x2
    10aa:	d3058593          	addi	a1,a1,-720 # 1d30 <mkdir+0x32>
    10ae:	4509                	li	a0,2
    10b0:	00000097          	auipc	ra,0x0
    10b4:	2fa080e7          	jalr	762(ra) # 13aa <fprintf>
    10b8:	650d                	lui	a0,0x3
    10ba:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10be:	00001097          	auipc	ra,0x1
    10c2:	bd0080e7          	jalr	-1072(ra) # 1c8e <exit>
    10c6:	bfb1                	j	1022 <main+0x22>
    10c8:	46ad                	li	a3,11
    10ca:	00002637          	lui	a2,0x2
    10ce:	d1860613          	addi	a2,a2,-744 # 1d18 <mkdir+0x1a>
    10d2:	000025b7          	lui	a1,0x2
    10d6:	d9058593          	addi	a1,a1,-624 # 1d90 <mkdir+0x92>
    10da:	4509                	li	a0,2
    10dc:	00000097          	auipc	ra,0x0
    10e0:	2ce080e7          	jalr	718(ra) # 13aa <fprintf>
    10e4:	650d                	lui	a0,0x3
    10e6:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10ea:	00001097          	auipc	ra,0x1
    10ee:	ba4080e7          	jalr	-1116(ra) # 1c8e <exit>
    10f2:	b791                	j	1036 <main+0x36>
    10f4:	46b5                	li	a3,13
    10f6:	00002637          	lui	a2,0x2
    10fa:	d1860613          	addi	a2,a2,-744 # 1d18 <mkdir+0x1a>
    10fe:	000025b7          	lui	a1,0x2
    1102:	e5858593          	addi	a1,a1,-424 # 1e58 <mkdir+0x15a>
    1106:	4509                	li	a0,2
    1108:	00000097          	auipc	ra,0x0
    110c:	2a2080e7          	jalr	674(ra) # 13aa <fprintf>
    1110:	650d                	lui	a0,0x3
    1112:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1116:	00001097          	auipc	ra,0x1
    111a:	b78080e7          	jalr	-1160(ra) # 1c8e <exit>
    111e:	bf95                	j	1092 <main+0x92>

0000000000001120 <putc>:
    1120:	1101                	addi	sp,sp,-32
    1122:	ec06                	sd	ra,24(sp)
    1124:	00b107a3          	sb	a1,15(sp)
    1128:	4605                	li	a2,1
    112a:	00f10593          	addi	a1,sp,15
    112e:	00001097          	auipc	ra,0x1
    1132:	b90080e7          	jalr	-1136(ra) # 1cbe <write>
    1136:	60e2                	ld	ra,24(sp)
    1138:	6105                	addi	sp,sp,32
    113a:	8082                	ret

000000000000113c <printint>:
    113c:	7179                	addi	sp,sp,-48
    113e:	f406                	sd	ra,40(sp)
    1140:	f022                	sd	s0,32(sp)
    1142:	ec26                	sd	s1,24(sp)
    1144:	e84a                	sd	s2,16(sp)
    1146:	84aa                	mv	s1,a0
    1148:	c299                	beqz	a3,114e <printint+0x12>
    114a:	0805c363          	bltz	a1,11d0 <printint+0x94>
    114e:	2581                	sext.w	a1,a1
    1150:	4881                	li	a7,0
    1152:	868a                	mv	a3,sp
    1154:	4701                	li	a4,0
    1156:	2601                	sext.w	a2,a2
    1158:	00002537          	lui	a0,0x2
    115c:	ed050513          	addi	a0,a0,-304 # 1ed0 <digits>
    1160:	883a                	mv	a6,a4
    1162:	2705                	addiw	a4,a4,1
    1164:	02c5f7bb          	remuw	a5,a1,a2
    1168:	1782                	slli	a5,a5,0x20
    116a:	9381                	srli	a5,a5,0x20
    116c:	97aa                	add	a5,a5,a0
    116e:	0007c783          	lbu	a5,0(a5)
    1172:	00f68023          	sb	a5,0(a3)
    1176:	0005879b          	sext.w	a5,a1
    117a:	02c5d5bb          	divuw	a1,a1,a2
    117e:	0685                	addi	a3,a3,1
    1180:	fec7f0e3          	bgeu	a5,a2,1160 <printint+0x24>
    1184:	00088a63          	beqz	a7,1198 <printint+0x5c>
    1188:	081c                	addi	a5,sp,16
    118a:	973e                	add	a4,a4,a5
    118c:	02d00793          	li	a5,45
    1190:	fef70823          	sb	a5,-16(a4)
    1194:	0028071b          	addiw	a4,a6,2
    1198:	02e05663          	blez	a4,11c4 <printint+0x88>
    119c:	00e10433          	add	s0,sp,a4
    11a0:	fff10913          	addi	s2,sp,-1
    11a4:	993a                	add	s2,s2,a4
    11a6:	377d                	addiw	a4,a4,-1
    11a8:	1702                	slli	a4,a4,0x20
    11aa:	9301                	srli	a4,a4,0x20
    11ac:	40e90933          	sub	s2,s2,a4
    11b0:	fff44583          	lbu	a1,-1(s0)
    11b4:	8526                	mv	a0,s1
    11b6:	00000097          	auipc	ra,0x0
    11ba:	f6a080e7          	jalr	-150(ra) # 1120 <putc>
    11be:	147d                	addi	s0,s0,-1
    11c0:	ff2418e3          	bne	s0,s2,11b0 <printint+0x74>
    11c4:	70a2                	ld	ra,40(sp)
    11c6:	7402                	ld	s0,32(sp)
    11c8:	64e2                	ld	s1,24(sp)
    11ca:	6942                	ld	s2,16(sp)
    11cc:	6145                	addi	sp,sp,48
    11ce:	8082                	ret
    11d0:	40b005bb          	negw	a1,a1
    11d4:	4885                	li	a7,1
    11d6:	bfb5                	j	1152 <printint+0x16>

00000000000011d8 <vprintf>:
    11d8:	7159                	addi	sp,sp,-112
    11da:	f486                	sd	ra,104(sp)
    11dc:	f0a2                	sd	s0,96(sp)
    11de:	eca6                	sd	s1,88(sp)
    11e0:	e8ca                	sd	s2,80(sp)
    11e2:	e4ce                	sd	s3,72(sp)
    11e4:	e0d2                	sd	s4,64(sp)
    11e6:	fc56                	sd	s5,56(sp)
    11e8:	f85a                	sd	s6,48(sp)
    11ea:	f45e                	sd	s7,40(sp)
    11ec:	f062                	sd	s8,32(sp)
    11ee:	ec66                	sd	s9,24(sp)
    11f0:	e86a                	sd	s10,16(sp)
    11f2:	e46e                	sd	s11,8(sp)
    11f4:	0005c483          	lbu	s1,0(a1)
    11f8:	18048a63          	beqz	s1,138c <vprintf+0x1b4>
    11fc:	8a2a                	mv	s4,a0
    11fe:	8ab2                	mv	s5,a2
    1200:	00158413          	addi	s0,a1,1
    1204:	4901                	li	s2,0
    1206:	02500993          	li	s3,37
    120a:	06400b93          	li	s7,100
    120e:	06c00c13          	li	s8,108
    1212:	07800c93          	li	s9,120
    1216:	07000d13          	li	s10,112
    121a:	00002db7          	lui	s11,0x2
    121e:	00002b37          	lui	s6,0x2
    1222:	ed0b0b13          	addi	s6,s6,-304 # 1ed0 <digits>
    1226:	a839                	j	1244 <vprintf+0x6c>
    1228:	85a6                	mv	a1,s1
    122a:	8552                	mv	a0,s4
    122c:	00000097          	auipc	ra,0x0
    1230:	ef4080e7          	jalr	-268(ra) # 1120 <putc>
    1234:	a019                	j	123a <vprintf+0x62>
    1236:	01390f63          	beq	s2,s3,1254 <vprintf+0x7c>
    123a:	0405                	addi	s0,s0,1
    123c:	fff44483          	lbu	s1,-1(s0)
    1240:	14048663          	beqz	s1,138c <vprintf+0x1b4>
    1244:	0004879b          	sext.w	a5,s1
    1248:	fe0917e3          	bnez	s2,1236 <vprintf+0x5e>
    124c:	fd379ee3          	bne	a5,s3,1228 <vprintf+0x50>
    1250:	893e                	mv	s2,a5
    1252:	b7e5                	j	123a <vprintf+0x62>
    1254:	05778063          	beq	a5,s7,1294 <vprintf+0xbc>
    1258:	05878c63          	beq	a5,s8,12b0 <vprintf+0xd8>
    125c:	07978863          	beq	a5,s9,12cc <vprintf+0xf4>
    1260:	09a78463          	beq	a5,s10,12e8 <vprintf+0x110>
    1264:	07300713          	li	a4,115
    1268:	0ce78263          	beq	a5,a4,132c <vprintf+0x154>
    126c:	06300713          	li	a4,99
    1270:	0ee78763          	beq	a5,a4,135e <vprintf+0x186>
    1274:	11378163          	beq	a5,s3,1376 <vprintf+0x19e>
    1278:	85ce                	mv	a1,s3
    127a:	8552                	mv	a0,s4
    127c:	00000097          	auipc	ra,0x0
    1280:	ea4080e7          	jalr	-348(ra) # 1120 <putc>
    1284:	85a6                	mv	a1,s1
    1286:	8552                	mv	a0,s4
    1288:	00000097          	auipc	ra,0x0
    128c:	e98080e7          	jalr	-360(ra) # 1120 <putc>
    1290:	4901                	li	s2,0
    1292:	b765                	j	123a <vprintf+0x62>
    1294:	008a8493          	addi	s1,s5,8
    1298:	4685                	li	a3,1
    129a:	4629                	li	a2,10
    129c:	000aa583          	lw	a1,0(s5)
    12a0:	8552                	mv	a0,s4
    12a2:	00000097          	auipc	ra,0x0
    12a6:	e9a080e7          	jalr	-358(ra) # 113c <printint>
    12aa:	8aa6                	mv	s5,s1
    12ac:	4901                	li	s2,0
    12ae:	b771                	j	123a <vprintf+0x62>
    12b0:	008a8493          	addi	s1,s5,8
    12b4:	4681                	li	a3,0
    12b6:	4629                	li	a2,10
    12b8:	000aa583          	lw	a1,0(s5)
    12bc:	8552                	mv	a0,s4
    12be:	00000097          	auipc	ra,0x0
    12c2:	e7e080e7          	jalr	-386(ra) # 113c <printint>
    12c6:	8aa6                	mv	s5,s1
    12c8:	4901                	li	s2,0
    12ca:	bf85                	j	123a <vprintf+0x62>
    12cc:	008a8493          	addi	s1,s5,8
    12d0:	4681                	li	a3,0
    12d2:	4641                	li	a2,16
    12d4:	000aa583          	lw	a1,0(s5)
    12d8:	8552                	mv	a0,s4
    12da:	00000097          	auipc	ra,0x0
    12de:	e62080e7          	jalr	-414(ra) # 113c <printint>
    12e2:	8aa6                	mv	s5,s1
    12e4:	4901                	li	s2,0
    12e6:	bf91                	j	123a <vprintf+0x62>
    12e8:	008a8913          	addi	s2,s5,8
    12ec:	000aba83          	ld	s5,0(s5)
    12f0:	03000593          	li	a1,48
    12f4:	8552                	mv	a0,s4
    12f6:	00000097          	auipc	ra,0x0
    12fa:	e2a080e7          	jalr	-470(ra) # 1120 <putc>
    12fe:	85e6                	mv	a1,s9
    1300:	8552                	mv	a0,s4
    1302:	00000097          	auipc	ra,0x0
    1306:	e1e080e7          	jalr	-482(ra) # 1120 <putc>
    130a:	44c1                	li	s1,16
    130c:	03cad793          	srli	a5,s5,0x3c
    1310:	97da                	add	a5,a5,s6
    1312:	0007c583          	lbu	a1,0(a5)
    1316:	8552                	mv	a0,s4
    1318:	00000097          	auipc	ra,0x0
    131c:	e08080e7          	jalr	-504(ra) # 1120 <putc>
    1320:	0a92                	slli	s5,s5,0x4
    1322:	34fd                	addiw	s1,s1,-1
    1324:	f4e5                	bnez	s1,130c <vprintf+0x134>
    1326:	8aca                	mv	s5,s2
    1328:	4901                	li	s2,0
    132a:	bf01                	j	123a <vprintf+0x62>
    132c:	008a8913          	addi	s2,s5,8
    1330:	000ab483          	ld	s1,0(s5)
    1334:	c085                	beqz	s1,1354 <vprintf+0x17c>
    1336:	0004c583          	lbu	a1,0(s1)
    133a:	c5b1                	beqz	a1,1386 <vprintf+0x1ae>
    133c:	8552                	mv	a0,s4
    133e:	00000097          	auipc	ra,0x0
    1342:	de2080e7          	jalr	-542(ra) # 1120 <putc>
    1346:	0485                	addi	s1,s1,1
    1348:	0004c583          	lbu	a1,0(s1)
    134c:	f9e5                	bnez	a1,133c <vprintf+0x164>
    134e:	8aca                	mv	s5,s2
    1350:	4901                	li	s2,0
    1352:	b5e5                	j	123a <vprintf+0x62>
    1354:	ec8d8493          	addi	s1,s11,-312 # 1ec8 <mkdir+0x1ca>
    1358:	02800593          	li	a1,40
    135c:	b7c5                	j	133c <vprintf+0x164>
    135e:	008a8493          	addi	s1,s5,8
    1362:	000ac583          	lbu	a1,0(s5)
    1366:	8552                	mv	a0,s4
    1368:	00000097          	auipc	ra,0x0
    136c:	db8080e7          	jalr	-584(ra) # 1120 <putc>
    1370:	8aa6                	mv	s5,s1
    1372:	4901                	li	s2,0
    1374:	b5d9                	j	123a <vprintf+0x62>
    1376:	85ce                	mv	a1,s3
    1378:	8552                	mv	a0,s4
    137a:	00000097          	auipc	ra,0x0
    137e:	da6080e7          	jalr	-602(ra) # 1120 <putc>
    1382:	4901                	li	s2,0
    1384:	bd5d                	j	123a <vprintf+0x62>
    1386:	8aca                	mv	s5,s2
    1388:	4901                	li	s2,0
    138a:	bd45                	j	123a <vprintf+0x62>
    138c:	70a6                	ld	ra,104(sp)
    138e:	7406                	ld	s0,96(sp)
    1390:	64e6                	ld	s1,88(sp)
    1392:	6946                	ld	s2,80(sp)
    1394:	69a6                	ld	s3,72(sp)
    1396:	6a06                	ld	s4,64(sp)
    1398:	7ae2                	ld	s5,56(sp)
    139a:	7b42                	ld	s6,48(sp)
    139c:	7ba2                	ld	s7,40(sp)
    139e:	7c02                	ld	s8,32(sp)
    13a0:	6ce2                	ld	s9,24(sp)
    13a2:	6d42                	ld	s10,16(sp)
    13a4:	6da2                	ld	s11,8(sp)
    13a6:	6165                	addi	sp,sp,112
    13a8:	8082                	ret

00000000000013aa <fprintf>:
    13aa:	715d                	addi	sp,sp,-80
    13ac:	ec06                	sd	ra,24(sp)
    13ae:	f032                	sd	a2,32(sp)
    13b0:	f436                	sd	a3,40(sp)
    13b2:	f83a                	sd	a4,48(sp)
    13b4:	fc3e                	sd	a5,56(sp)
    13b6:	e0c2                	sd	a6,64(sp)
    13b8:	e4c6                	sd	a7,72(sp)
    13ba:	1010                	addi	a2,sp,32
    13bc:	e432                	sd	a2,8(sp)
    13be:	00000097          	auipc	ra,0x0
    13c2:	e1a080e7          	jalr	-486(ra) # 11d8 <vprintf>
    13c6:	60e2                	ld	ra,24(sp)
    13c8:	6161                	addi	sp,sp,80
    13ca:	8082                	ret

00000000000013cc <printf>:
    13cc:	711d                	addi	sp,sp,-96
    13ce:	ec06                	sd	ra,24(sp)
    13d0:	f42e                	sd	a1,40(sp)
    13d2:	f832                	sd	a2,48(sp)
    13d4:	fc36                	sd	a3,56(sp)
    13d6:	e0ba                	sd	a4,64(sp)
    13d8:	e4be                	sd	a5,72(sp)
    13da:	e8c2                	sd	a6,80(sp)
    13dc:	ecc6                	sd	a7,88(sp)
    13de:	1030                	addi	a2,sp,40
    13e0:	e432                	sd	a2,8(sp)
    13e2:	85aa                	mv	a1,a0
    13e4:	4505                	li	a0,1
    13e6:	00000097          	auipc	ra,0x0
    13ea:	df2080e7          	jalr	-526(ra) # 11d8 <vprintf>
    13ee:	60e2                	ld	ra,24(sp)
    13f0:	6125                	addi	sp,sp,96
    13f2:	8082                	ret

00000000000013f4 <cksum>:
    13f4:	cdb1                	beqz	a1,1450 <cksum+0x5c>
    13f6:	00b50833          	add	a6,a0,a1
    13fa:	4781                	li	a5,0
    13fc:	00002637          	lui	a2,0x2
    1400:	ee860613          	addi	a2,a2,-280 # 1ee8 <crctab>
    1404:	0505                	addi	a0,a0,1
    1406:	0087969b          	slliw	a3,a5,0x8
    140a:	0187d71b          	srliw	a4,a5,0x18
    140e:	fff54783          	lbu	a5,-1(a0)
    1412:	8f3d                	xor	a4,a4,a5
    1414:	1702                	slli	a4,a4,0x20
    1416:	9301                	srli	a4,a4,0x20
    1418:	070a                	slli	a4,a4,0x2
    141a:	9732                	add	a4,a4,a2
    141c:	431c                	lw	a5,0(a4)
    141e:	8fb5                	xor	a5,a5,a3
    1420:	2781                	sext.w	a5,a5
    1422:	fea811e3          	bne	a6,a0,1404 <cksum+0x10>
    1426:	00002637          	lui	a2,0x2
    142a:	ee860613          	addi	a2,a2,-280 # 1ee8 <crctab>
    142e:	0ff5f693          	andi	a3,a1,255
    1432:	81a1                	srli	a1,a1,0x8
    1434:	0087951b          	slliw	a0,a5,0x8
    1438:	0187d71b          	srliw	a4,a5,0x18
    143c:	8f35                	xor	a4,a4,a3
    143e:	070a                	slli	a4,a4,0x2
    1440:	9732                	add	a4,a4,a2
    1442:	431c                	lw	a5,0(a4)
    1444:	8fa9                	xor	a5,a5,a0
    1446:	2781                	sext.w	a5,a5
    1448:	f1fd                	bnez	a1,142e <cksum+0x3a>
    144a:	fff7c513          	not	a0,a5
    144e:	8082                	ret
    1450:	4781                	li	a5,0
    1452:	bfe5                	j	144a <cksum+0x56>

0000000000001454 <swap_bytes>:
    1454:	ce19                	beqz	a2,1472 <swap_bytes+0x1e>
    1456:	87aa                	mv	a5,a0
    1458:	962a                	add	a2,a2,a0
    145a:	0007c703          	lbu	a4,0(a5)
    145e:	0005c683          	lbu	a3,0(a1)
    1462:	00d78023          	sb	a3,0(a5)
    1466:	00e58023          	sb	a4,0(a1)
    146a:	0785                	addi	a5,a5,1
    146c:	0585                	addi	a1,a1,1
    146e:	fec796e3          	bne	a5,a2,145a <swap_bytes+0x6>
    1472:	8082                	ret

0000000000001474 <random_init>:
    1474:	7139                	addi	sp,sp,-64
    1476:	fc06                	sd	ra,56(sp)
    1478:	f822                	sd	s0,48(sp)
    147a:	f426                	sd	s1,40(sp)
    147c:	f04a                	sd	s2,32(sp)
    147e:	ec4e                	sd	s3,24(sp)
    1480:	e852                	sd	s4,16(sp)
    1482:	c62a                	sw	a0,12(sp)
    1484:	000037b7          	lui	a5,0x3
    1488:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    148c:	eca5                	bnez	s1,1504 <random_init+0x90>
    148e:	00003737          	lui	a4,0x3
    1492:	10070913          	addi	s2,a4,256 # 3100 <s>
    1496:	10070713          	addi	a4,a4,256
    149a:	87a6                	mv	a5,s1
    149c:	10000693          	li	a3,256
    14a0:	00f70023          	sb	a5,0(a4)
    14a4:	2785                	addiw	a5,a5,1
    14a6:	0705                	addi	a4,a4,1
    14a8:	fed79ce3          	bne	a5,a3,14a0 <random_init+0x2c>
    14ac:	4401                	li	s0,0
    14ae:	000039b7          	lui	s3,0x3
    14b2:	10098993          	addi	s3,s3,256 # 3100 <s>
    14b6:	10000a13          	li	s4,256
    14ba:	0034f793          	andi	a5,s1,3
    14be:	0818                	addi	a4,sp,16
    14c0:	97ba                	add	a5,a5,a4
    14c2:	ffc7c783          	lbu	a5,-4(a5)
    14c6:	00094703          	lbu	a4,0(s2)
    14ca:	9fb9                	addw	a5,a5,a4
    14cc:	9c3d                	addw	s0,s0,a5
    14ce:	0ff47413          	andi	s0,s0,255
    14d2:	4605                	li	a2,1
    14d4:	008985b3          	add	a1,s3,s0
    14d8:	854a                	mv	a0,s2
    14da:	00000097          	auipc	ra,0x0
    14de:	f7a080e7          	jalr	-134(ra) # 1454 <swap_bytes>
    14e2:	2485                	addiw	s1,s1,1
    14e4:	0905                	addi	s2,s2,1
    14e6:	fd449ae3          	bne	s1,s4,14ba <random_init+0x46>
    14ea:	000037b7          	lui	a5,0x3
    14ee:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    14f2:	000037b7          	lui	a5,0x3
    14f6:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    14fa:	000037b7          	lui	a5,0x3
    14fe:	4705                	li	a4,1
    1500:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1504:	70e2                	ld	ra,56(sp)
    1506:	7442                	ld	s0,48(sp)
    1508:	74a2                	ld	s1,40(sp)
    150a:	7902                	ld	s2,32(sp)
    150c:	69e2                	ld	s3,24(sp)
    150e:	6a42                	ld	s4,16(sp)
    1510:	6121                	addi	sp,sp,64
    1512:	8082                	ret

0000000000001514 <random_bytes>:
    1514:	7139                	addi	sp,sp,-64
    1516:	fc06                	sd	ra,56(sp)
    1518:	f822                	sd	s0,48(sp)
    151a:	f426                	sd	s1,40(sp)
    151c:	f04a                	sd	s2,32(sp)
    151e:	ec4e                	sd	s3,24(sp)
    1520:	e852                	sd	s4,16(sp)
    1522:	e456                	sd	s5,8(sp)
    1524:	e05a                	sd	s6,0(sp)
    1526:	892a                	mv	s2,a0
    1528:	8aae                	mv	s5,a1
    152a:	000037b7          	lui	a5,0x3
    152e:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1532:	c3c1                	beqz	a5,15b2 <random_bytes+0x9e>
    1534:	060a8563          	beqz	s5,159e <random_bytes+0x8a>
    1538:	9aca                	add	s5,s5,s2
    153a:	00003a37          	lui	s4,0x3
    153e:	000034b7          	lui	s1,0x3
    1542:	10048493          	addi	s1,s1,256 # 3100 <s>
    1546:	000039b7          	lui	s3,0x3
    154a:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    154e:	2505                	addiw	a0,a0,1
    1550:	0ff57513          	andi	a0,a0,255
    1554:	0eaa0aa3          	sb	a0,245(s4)
    1558:	00a48b33          	add	s6,s1,a0
    155c:	000b4403          	lbu	s0,0(s6)
    1560:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1564:	9c3d                	addw	s0,s0,a5
    1566:	0ff47413          	andi	s0,s0,255
    156a:	0e898a23          	sb	s0,244(s3)
    156e:	4605                	li	a2,1
    1570:	008485b3          	add	a1,s1,s0
    1574:	855a                	mv	a0,s6
    1576:	00000097          	auipc	ra,0x0
    157a:	ede080e7          	jalr	-290(ra) # 1454 <swap_bytes>
    157e:	9426                	add	s0,s0,s1
    1580:	000b4783          	lbu	a5,0(s6)
    1584:	00044703          	lbu	a4,0(s0)
    1588:	9fb9                	addw	a5,a5,a4
    158a:	0ff7f793          	andi	a5,a5,255
    158e:	97a6                	add	a5,a5,s1
    1590:	0007c783          	lbu	a5,0(a5)
    1594:	00f90023          	sb	a5,0(s2)
    1598:	0905                	addi	s2,s2,1
    159a:	fb2a98e3          	bne	s5,s2,154a <random_bytes+0x36>
    159e:	70e2                	ld	ra,56(sp)
    15a0:	7442                	ld	s0,48(sp)
    15a2:	74a2                	ld	s1,40(sp)
    15a4:	7902                	ld	s2,32(sp)
    15a6:	69e2                	ld	s3,24(sp)
    15a8:	6a42                	ld	s4,16(sp)
    15aa:	6aa2                	ld	s5,8(sp)
    15ac:	6b02                	ld	s6,0(sp)
    15ae:	6121                	addi	sp,sp,64
    15b0:	8082                	ret
    15b2:	4501                	li	a0,0
    15b4:	00000097          	auipc	ra,0x0
    15b8:	ec0080e7          	jalr	-320(ra) # 1474 <random_init>
    15bc:	bfa5                	j	1534 <random_bytes+0x20>

00000000000015be <random_ulong>:
    15be:	1101                	addi	sp,sp,-32
    15c0:	ec06                	sd	ra,24(sp)
    15c2:	45a1                	li	a1,8
    15c4:	0028                	addi	a0,sp,8
    15c6:	00000097          	auipc	ra,0x0
    15ca:	f4e080e7          	jalr	-178(ra) # 1514 <random_bytes>
    15ce:	6522                	ld	a0,8(sp)
    15d0:	60e2                	ld	ra,24(sp)
    15d2:	6105                	addi	sp,sp,32
    15d4:	8082                	ret

00000000000015d6 <shuffle>:
    15d6:	c9b9                	beqz	a1,162c <shuffle+0x56>
    15d8:	7179                	addi	sp,sp,-48
    15da:	f406                	sd	ra,40(sp)
    15dc:	f022                	sd	s0,32(sp)
    15de:	ec26                	sd	s1,24(sp)
    15e0:	e84a                	sd	s2,16(sp)
    15e2:	e44e                	sd	s3,8(sp)
    15e4:	e052                	sd	s4,0(sp)
    15e6:	8a2a                	mv	s4,a0
    15e8:	89ae                	mv	s3,a1
    15ea:	84b2                	mv	s1,a2
    15ec:	892a                	mv	s2,a0
    15ee:	4401                	li	s0,0
    15f0:	00000097          	auipc	ra,0x0
    15f4:	fce080e7          	jalr	-50(ra) # 15be <random_ulong>
    15f8:	408985b3          	sub	a1,s3,s0
    15fc:	02b575b3          	remu	a1,a0,a1
    1600:	95a2                	add	a1,a1,s0
    1602:	029585b3          	mul	a1,a1,s1
    1606:	8626                	mv	a2,s1
    1608:	95d2                	add	a1,a1,s4
    160a:	854a                	mv	a0,s2
    160c:	00000097          	auipc	ra,0x0
    1610:	e48080e7          	jalr	-440(ra) # 1454 <swap_bytes>
    1614:	0405                	addi	s0,s0,1
    1616:	9926                	add	s2,s2,s1
    1618:	fc899ce3          	bne	s3,s0,15f0 <shuffle+0x1a>
    161c:	70a2                	ld	ra,40(sp)
    161e:	7402                	ld	s0,32(sp)
    1620:	64e2                	ld	s1,24(sp)
    1622:	6942                	ld	s2,16(sp)
    1624:	69a2                	ld	s3,8(sp)
    1626:	6a02                	ld	s4,0(sp)
    1628:	6145                	addi	sp,sp,48
    162a:	8082                	ret
    162c:	8082                	ret

000000000000162e <arc4_init>:
    162e:	100500a3          	sb	zero,257(a0)
    1632:	10050023          	sb	zero,256(a0)
    1636:	4781                	li	a5,0
    1638:	10000693          	li	a3,256
    163c:	00f50733          	add	a4,a0,a5
    1640:	00f70023          	sb	a5,0(a4)
    1644:	0785                	addi	a5,a5,1
    1646:	fed79be3          	bne	a5,a3,163c <arc4_init+0xe>
    164a:	86aa                	mv	a3,a0
    164c:	10050e13          	addi	t3,a0,256
    1650:	4701                	li	a4,0
    1652:	4781                	li	a5,0
    1654:	0006c883          	lbu	a7,0(a3)
    1658:	00f58833          	add	a6,a1,a5
    165c:	00084803          	lbu	a6,0(a6)
    1660:	00e8873b          	addw	a4,a7,a4
    1664:	00e8073b          	addw	a4,a6,a4
    1668:	0ff77713          	andi	a4,a4,255
    166c:	00e50833          	add	a6,a0,a4
    1670:	00084303          	lbu	t1,0(a6)
    1674:	00668023          	sb	t1,0(a3)
    1678:	01180023          	sb	a7,0(a6)
    167c:	0785                	addi	a5,a5,1
    167e:	00c7b833          	sltu	a6,a5,a2
    1682:	41000833          	neg	a6,a6
    1686:	0107f7b3          	and	a5,a5,a6
    168a:	0685                	addi	a3,a3,1
    168c:	fdc694e3          	bne	a3,t3,1654 <arc4_init+0x26>
    1690:	8082                	ret

0000000000001692 <arc4_crypt>:
    1692:	10054e03          	lbu	t3,256(a0)
    1696:	10154803          	lbu	a6,257(a0)
    169a:	fff60e93          	addi	t4,a2,-1
    169e:	c225                	beqz	a2,16fe <arc4_crypt+0x6c>
    16a0:	00c588b3          	add	a7,a1,a2
    16a4:	86ae                	mv	a3,a1
    16a6:	001e031b          	addiw	t1,t3,1
    16aa:	40b3033b          	subw	t1,t1,a1
    16ae:	00d3073b          	addw	a4,t1,a3
    16b2:	0ff77713          	andi	a4,a4,255
    16b6:	972a                	add	a4,a4,a0
    16b8:	00074603          	lbu	a2,0(a4)
    16bc:	0106083b          	addw	a6,a2,a6
    16c0:	0ff87813          	andi	a6,a6,255
    16c4:	010507b3          	add	a5,a0,a6
    16c8:	0007c583          	lbu	a1,0(a5)
    16cc:	00b70023          	sb	a1,0(a4)
    16d0:	00c78023          	sb	a2,0(a5)
    16d4:	0685                	addi	a3,a3,1
    16d6:	00074783          	lbu	a5,0(a4)
    16da:	9fb1                	addw	a5,a5,a2
    16dc:	0ff7f793          	andi	a5,a5,255
    16e0:	97aa                	add	a5,a5,a0
    16e2:	0007c783          	lbu	a5,0(a5)
    16e6:	fff6c703          	lbu	a4,-1(a3)
    16ea:	8fb9                	xor	a5,a5,a4
    16ec:	fef68fa3          	sb	a5,-1(a3)
    16f0:	fb169fe3          	bne	a3,a7,16ae <arc4_crypt+0x1c>
    16f4:	2e85                	addiw	t4,t4,1
    16f6:	01ce8e3b          	addw	t3,t4,t3
    16fa:	0ffe7e13          	andi	t3,t3,255
    16fe:	11c50023          	sb	t3,256(a0)
    1702:	110500a3          	sb	a6,257(a0)
    1706:	8082                	ret

0000000000001708 <_main>:
    1708:	1141                	addi	sp,sp,-16
    170a:	e406                	sd	ra,8(sp)
    170c:	00000097          	auipc	ra,0x0
    1710:	8f4080e7          	jalr	-1804(ra) # 1000 <main>
    1714:	4501                	li	a0,0
    1716:	00000097          	auipc	ra,0x0
    171a:	578080e7          	jalr	1400(ra) # 1c8e <exit>
    171e:	60a2                	ld	ra,8(sp)
    1720:	0141                	addi	sp,sp,16
    1722:	8082                	ret

0000000000001724 <strcmp>:
    1724:	00054783          	lbu	a5,0(a0)
    1728:	cb91                	beqz	a5,173c <strcmp+0x18>
    172a:	0005c703          	lbu	a4,0(a1)
    172e:	00f71763          	bne	a4,a5,173c <strcmp+0x18>
    1732:	0505                	addi	a0,a0,1
    1734:	0585                	addi	a1,a1,1
    1736:	00054783          	lbu	a5,0(a0)
    173a:	fbe5                	bnez	a5,172a <strcmp+0x6>
    173c:	0005c503          	lbu	a0,0(a1)
    1740:	40a7853b          	subw	a0,a5,a0
    1744:	8082                	ret

0000000000001746 <strcpy>:
    1746:	87aa                	mv	a5,a0
    1748:	0585                	addi	a1,a1,1
    174a:	0785                	addi	a5,a5,1
    174c:	fff5c703          	lbu	a4,-1(a1)
    1750:	fee78fa3          	sb	a4,-1(a5)
    1754:	fb75                	bnez	a4,1748 <strcpy+0x2>
    1756:	8082                	ret

0000000000001758 <strlen>:
    1758:	00054783          	lbu	a5,0(a0)
    175c:	cf81                	beqz	a5,1774 <strlen+0x1c>
    175e:	0505                	addi	a0,a0,1
    1760:	87aa                	mv	a5,a0
    1762:	4685                	li	a3,1
    1764:	9e89                	subw	a3,a3,a0
    1766:	00f6853b          	addw	a0,a3,a5
    176a:	0785                	addi	a5,a5,1
    176c:	fff7c703          	lbu	a4,-1(a5)
    1770:	fb7d                	bnez	a4,1766 <strlen+0xe>
    1772:	8082                	ret
    1774:	4501                	li	a0,0
    1776:	8082                	ret

0000000000001778 <memset>:
    1778:	ca19                	beqz	a2,178e <memset+0x16>
    177a:	87aa                	mv	a5,a0
    177c:	1602                	slli	a2,a2,0x20
    177e:	9201                	srli	a2,a2,0x20
    1780:	00a60733          	add	a4,a2,a0
    1784:	00b78023          	sb	a1,0(a5)
    1788:	0785                	addi	a5,a5,1
    178a:	fee79de3          	bne	a5,a4,1784 <memset+0xc>
    178e:	8082                	ret

0000000000001790 <memcmp>:
    1790:	1101                	addi	sp,sp,-32
    1792:	ec06                	sd	ra,24(sp)
    1794:	e822                	sd	s0,16(sp)
    1796:	e426                	sd	s1,8(sp)
    1798:	e04a                	sd	s2,0(sp)
    179a:	892a                	mv	s2,a0
    179c:	842e                	mv	s0,a1
    179e:	84b2                	mv	s1,a2
    17a0:	c915                	beqz	a0,17d4 <memcmp+0x44>
    17a2:	c5ad                	beqz	a1,180c <memcmp+0x7c>
    17a4:	fff60713          	addi	a4,a2,-1
    17a8:	c645                	beqz	a2,1850 <memcmp+0xc0>
    17aa:	87ca                	mv	a5,s2
    17ac:	00190613          	addi	a2,s2,1
    17b0:	963a                	add	a2,a2,a4
    17b2:	0007c683          	lbu	a3,0(a5)
    17b6:	00044703          	lbu	a4,0(s0)
    17ba:	08e69463          	bne	a3,a4,1842 <memcmp+0xb2>
    17be:	0785                	addi	a5,a5,1
    17c0:	0405                	addi	s0,s0,1
    17c2:	fec798e3          	bne	a5,a2,17b2 <memcmp+0x22>
    17c6:	4501                	li	a0,0
    17c8:	60e2                	ld	ra,24(sp)
    17ca:	6442                	ld	s0,16(sp)
    17cc:	64a2                	ld	s1,8(sp)
    17ce:	6902                	ld	s2,0(sp)
    17d0:	6105                	addi	sp,sp,32
    17d2:	8082                	ret
    17d4:	4501                	li	a0,0
    17d6:	da6d                	beqz	a2,17c8 <memcmp+0x38>
    17d8:	03200693          	li	a3,50
    17dc:	00002637          	lui	a2,0x2
    17e0:	2e860613          	addi	a2,a2,744 # 22e8 <crctab+0x400>
    17e4:	000025b7          	lui	a1,0x2
    17e8:	2f858593          	addi	a1,a1,760 # 22f8 <crctab+0x410>
    17ec:	4509                	li	a0,2
    17ee:	00000097          	auipc	ra,0x0
    17f2:	bbc080e7          	jalr	-1092(ra) # 13aa <fprintf>
    17f6:	650d                	lui	a0,0x3
    17f8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17fc:	00000097          	auipc	ra,0x0
    1800:	492080e7          	jalr	1170(ra) # 1c8e <exit>
    1804:	fff48713          	addi	a4,s1,-1
    1808:	f04d                	bnez	s0,17aa <memcmp+0x1a>
    180a:	a011                	j	180e <memcmp+0x7e>
    180c:	c221                	beqz	a2,184c <memcmp+0xbc>
    180e:	03300693          	li	a3,51
    1812:	00002637          	lui	a2,0x2
    1816:	2e860613          	addi	a2,a2,744 # 22e8 <crctab+0x400>
    181a:	000025b7          	lui	a1,0x2
    181e:	34058593          	addi	a1,a1,832 # 2340 <crctab+0x458>
    1822:	4509                	li	a0,2
    1824:	00000097          	auipc	ra,0x0
    1828:	b86080e7          	jalr	-1146(ra) # 13aa <fprintf>
    182c:	650d                	lui	a0,0x3
    182e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1832:	00000097          	auipc	ra,0x0
    1836:	45c080e7          	jalr	1116(ra) # 1c8e <exit>
    183a:	fff48713          	addi	a4,s1,-1
    183e:	4401                	li	s0,0
    1840:	b7ad                	j	17aa <memcmp+0x1a>
    1842:	4505                	li	a0,1
    1844:	f8d762e3          	bltu	a4,a3,17c8 <memcmp+0x38>
    1848:	557d                	li	a0,-1
    184a:	bfbd                	j	17c8 <memcmp+0x38>
    184c:	4501                	li	a0,0
    184e:	bfad                	j	17c8 <memcmp+0x38>
    1850:	4501                	li	a0,0
    1852:	bf9d                	j	17c8 <memcmp+0x38>

0000000000001854 <memcpy>:
    1854:	1101                	addi	sp,sp,-32
    1856:	ec06                	sd	ra,24(sp)
    1858:	e822                	sd	s0,16(sp)
    185a:	e426                	sd	s1,8(sp)
    185c:	e04a                	sd	s2,0(sp)
    185e:	84aa                	mv	s1,a0
    1860:	842e                	mv	s0,a1
    1862:	8932                	mv	s2,a2
    1864:	c51d                	beqz	a0,1892 <memcpy+0x3e>
    1866:	c1ad                	beqz	a1,18c8 <memcpy+0x74>
    1868:	fff60693          	addi	a3,a2,-1
    186c:	ce01                	beqz	a2,1884 <memcpy+0x30>
    186e:	0685                	addi	a3,a3,1
    1870:	96a6                	add	a3,a3,s1
    1872:	87a6                	mv	a5,s1
    1874:	0405                	addi	s0,s0,1
    1876:	0785                	addi	a5,a5,1
    1878:	fff44703          	lbu	a4,-1(s0)
    187c:	fee78fa3          	sb	a4,-1(a5)
    1880:	fed79ae3          	bne	a5,a3,1874 <memcpy+0x20>
    1884:	8526                	mv	a0,s1
    1886:	60e2                	ld	ra,24(sp)
    1888:	6442                	ld	s0,16(sp)
    188a:	64a2                	ld	s1,8(sp)
    188c:	6902                	ld	s2,0(sp)
    188e:	6105                	addi	sp,sp,32
    1890:	8082                	ret
    1892:	da6d                	beqz	a2,1884 <memcpy+0x30>
    1894:	04000693          	li	a3,64
    1898:	00002637          	lui	a2,0x2
    189c:	2e860613          	addi	a2,a2,744 # 22e8 <crctab+0x400>
    18a0:	000025b7          	lui	a1,0x2
    18a4:	38858593          	addi	a1,a1,904 # 2388 <crctab+0x4a0>
    18a8:	4509                	li	a0,2
    18aa:	00000097          	auipc	ra,0x0
    18ae:	b00080e7          	jalr	-1280(ra) # 13aa <fprintf>
    18b2:	650d                	lui	a0,0x3
    18b4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18b8:	00000097          	auipc	ra,0x0
    18bc:	3d6080e7          	jalr	982(ra) # 1c8e <exit>
    18c0:	fff90693          	addi	a3,s2,-1
    18c4:	f44d                	bnez	s0,186e <memcpy+0x1a>
    18c6:	a011                	j	18ca <memcpy+0x76>
    18c8:	de55                	beqz	a2,1884 <memcpy+0x30>
    18ca:	04100693          	li	a3,65
    18ce:	00002637          	lui	a2,0x2
    18d2:	2e860613          	addi	a2,a2,744 # 22e8 <crctab+0x400>
    18d6:	000025b7          	lui	a1,0x2
    18da:	3d058593          	addi	a1,a1,976 # 23d0 <crctab+0x4e8>
    18de:	4509                	li	a0,2
    18e0:	00000097          	auipc	ra,0x0
    18e4:	aca080e7          	jalr	-1334(ra) # 13aa <fprintf>
    18e8:	650d                	lui	a0,0x3
    18ea:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18ee:	00000097          	auipc	ra,0x0
    18f2:	3a0080e7          	jalr	928(ra) # 1c8e <exit>
    18f6:	fff90693          	addi	a3,s2,-1
    18fa:	4401                	li	s0,0
    18fc:	bf8d                	j	186e <memcpy+0x1a>

00000000000018fe <itoa>:
    18fe:	1101                	addi	sp,sp,-32
    1900:	ec06                	sd	ra,24(sp)
    1902:	e822                	sd	s0,16(sp)
    1904:	e426                	sd	s1,8(sp)
    1906:	842a                	mv	s0,a0
    1908:	41f5d71b          	sraiw	a4,a1,0x1f
    190c:	00e5c7b3          	xor	a5,a1,a4
    1910:	9f99                	subw	a5,a5,a4
    1912:	84aa                	mv	s1,a0
    1914:	862a                	mv	a2,a0
    1916:	4681                	li	a3,0
    1918:	4529                	li	a0,10
    191a:	4825                	li	a6,9
    191c:	88b6                	mv	a7,a3
    191e:	2685                	addiw	a3,a3,1
    1920:	02a7e73b          	remw	a4,a5,a0
    1924:	0307071b          	addiw	a4,a4,48
    1928:	00e60023          	sb	a4,0(a2)
    192c:	873e                	mv	a4,a5
    192e:	02a7c7bb          	divw	a5,a5,a0
    1932:	0605                	addi	a2,a2,1
    1934:	fee844e3          	blt	a6,a4,191c <itoa+0x1e>
    1938:	0405c863          	bltz	a1,1988 <itoa+0x8a>
    193c:	96a2                	add	a3,a3,s0
    193e:	00068023          	sb	zero,0(a3)
    1942:	8522                	mv	a0,s0
    1944:	00000097          	auipc	ra,0x0
    1948:	e14080e7          	jalr	-492(ra) # 1758 <strlen>
    194c:	fff5071b          	addiw	a4,a0,-1
    1950:	02e05763          	blez	a4,197e <itoa+0x80>
    1954:	9722                	add	a4,a4,s0
    1956:	4681                	li	a3,0
    1958:	0004c783          	lbu	a5,0(s1)
    195c:	00074603          	lbu	a2,0(a4)
    1960:	00c48023          	sb	a2,0(s1)
    1964:	00f70023          	sb	a5,0(a4)
    1968:	0016879b          	addiw	a5,a3,1
    196c:	0007869b          	sext.w	a3,a5
    1970:	0485                	addi	s1,s1,1
    1972:	177d                	addi	a4,a4,-1
    1974:	fff7c793          	not	a5,a5
    1978:	9fa9                	addw	a5,a5,a0
    197a:	fcf6cfe3          	blt	a3,a5,1958 <itoa+0x5a>
    197e:	60e2                	ld	ra,24(sp)
    1980:	6442                	ld	s0,16(sp)
    1982:	64a2                	ld	s1,8(sp)
    1984:	6105                	addi	sp,sp,32
    1986:	8082                	ret
    1988:	96a2                	add	a3,a3,s0
    198a:	02d00793          	li	a5,45
    198e:	00f68023          	sb	a5,0(a3)
    1992:	0028869b          	addiw	a3,a7,2
    1996:	b75d                	j	193c <itoa+0x3e>

0000000000001998 <atoi>:
    1998:	00054783          	lbu	a5,0(a0)
    199c:	02000713          	li	a4,32
    19a0:	00e79763          	bne	a5,a4,19ae <atoi+0x16>
    19a4:	0505                	addi	a0,a0,1
    19a6:	00054783          	lbu	a5,0(a0)
    19aa:	fee78de3          	beq	a5,a4,19a4 <atoi+0xc>
    19ae:	02b00713          	li	a4,43
    19b2:	04e78663          	beq	a5,a4,19fe <atoi+0x66>
    19b6:	02d00713          	li	a4,45
    19ba:	4805                	li	a6,1
    19bc:	04e78463          	beq	a5,a4,1a04 <atoi+0x6c>
    19c0:	00054683          	lbu	a3,0(a0)
    19c4:	fd06879b          	addiw	a5,a3,-48
    19c8:	0ff7f793          	andi	a5,a5,255
    19cc:	4725                	li	a4,9
    19ce:	02f76e63          	bltu	a4,a5,1a0a <atoi+0x72>
    19d2:	4601                	li	a2,0
    19d4:	45a5                	li	a1,9
    19d6:	0505                	addi	a0,a0,1
    19d8:	0026179b          	slliw	a5,a2,0x2
    19dc:	9fb1                	addw	a5,a5,a2
    19de:	0017979b          	slliw	a5,a5,0x1
    19e2:	9fb5                	addw	a5,a5,a3
    19e4:	fd07861b          	addiw	a2,a5,-48
    19e8:	00054683          	lbu	a3,0(a0)
    19ec:	fd06871b          	addiw	a4,a3,-48
    19f0:	0ff77713          	andi	a4,a4,255
    19f4:	fee5f1e3          	bgeu	a1,a4,19d6 <atoi+0x3e>
    19f8:	02c8053b          	mulw	a0,a6,a2
    19fc:	8082                	ret
    19fe:	0505                	addi	a0,a0,1
    1a00:	4805                	li	a6,1
    1a02:	bf7d                	j	19c0 <atoi+0x28>
    1a04:	0505                	addi	a0,a0,1
    1a06:	587d                	li	a6,-1
    1a08:	bf65                	j	19c0 <atoi+0x28>
    1a0a:	4601                	li	a2,0
    1a0c:	b7f5                	j	19f8 <atoi+0x60>

0000000000001a0e <check_file_handle>:
    1a0e:	d8010113          	addi	sp,sp,-640
    1a12:	26113c23          	sd	ra,632(sp)
    1a16:	26813823          	sd	s0,624(sp)
    1a1a:	26913423          	sd	s1,616(sp)
    1a1e:	27213023          	sd	s2,608(sp)
    1a22:	25313c23          	sd	s3,600(sp)
    1a26:	25413823          	sd	s4,592(sp)
    1a2a:	25513423          	sd	s5,584(sp)
    1a2e:	25613023          	sd	s6,576(sp)
    1a32:	23713c23          	sd	s7,568(sp)
    1a36:	23813823          	sd	s8,560(sp)
    1a3a:	23913423          	sd	s9,552(sp)
    1a3e:	23a13023          	sd	s10,544(sp)
    1a42:	21b13c23          	sd	s11,536(sp)
    1a46:	8baa                	mv	s7,a0
    1a48:	8a2e                	mv	s4,a1
    1a4a:	8c32                	mv	s8,a2
    1a4c:	89b6                	mv	s3,a3
    1a4e:	040c                	addi	a1,sp,512
    1a50:	00000097          	auipc	ra,0x0
    1a54:	28e080e7          	jalr	654(ra) # 1cde <fstat>
    1a58:	20813603          	ld	a2,520(sp)
    1a5c:	03361163          	bne	a2,s3,1a7e <check_file_handle+0x70>
    1a60:	06098763          	beqz	s3,1ace <check_file_handle+0xc0>
    1a64:	4901                	li	s2,0
    1a66:	20000a93          	li	s5,512
    1a6a:	00002cb7          	lui	s9,0x2
    1a6e:	00002db7          	lui	s11,0x2
    1a72:	6b0d                	lui	s6,0x3
    1a74:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a78:	00002d37          	lui	s10,0x2
    1a7c:	aa39                	j	1b9a <check_file_handle+0x18c>
    1a7e:	86ce                	mv	a3,s3
    1a80:	85d2                	mv	a1,s4
    1a82:	00002537          	lui	a0,0x2
    1a86:	41850513          	addi	a0,a0,1048 # 2418 <crctab+0x530>
    1a8a:	00000097          	auipc	ra,0x0
    1a8e:	942080e7          	jalr	-1726(ra) # 13cc <printf>
    1a92:	fc0999e3          	bnez	s3,1a64 <check_file_handle+0x56>
    1a96:	20813683          	ld	a3,520(sp)
    1a9a:	03368a63          	beq	a3,s3,1ace <check_file_handle+0xc0>
    1a9e:	0a600813          	li	a6,166
    1aa2:	000027b7          	lui	a5,0x2
    1aa6:	2e878793          	addi	a5,a5,744 # 22e8 <crctab+0x400>
    1aaa:	874e                	mv	a4,s3
    1aac:	8652                	mv	a2,s4
    1aae:	000025b7          	lui	a1,0x2
    1ab2:	4e858593          	addi	a1,a1,1256 # 24e8 <crctab+0x600>
    1ab6:	4509                	li	a0,2
    1ab8:	00000097          	auipc	ra,0x0
    1abc:	8f2080e7          	jalr	-1806(ra) # 13aa <fprintf>
    1ac0:	650d                	lui	a0,0x3
    1ac2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1ac6:	00000097          	auipc	ra,0x0
    1aca:	1c8080e7          	jalr	456(ra) # 1c8e <exit>
    1ace:	85d2                	mv	a1,s4
    1ad0:	00002537          	lui	a0,0x2
    1ad4:	53050513          	addi	a0,a0,1328 # 2530 <crctab+0x648>
    1ad8:	00000097          	auipc	ra,0x0
    1adc:	8f4080e7          	jalr	-1804(ra) # 13cc <printf>
    1ae0:	27813083          	ld	ra,632(sp)
    1ae4:	27013403          	ld	s0,624(sp)
    1ae8:	26813483          	ld	s1,616(sp)
    1aec:	26013903          	ld	s2,608(sp)
    1af0:	25813983          	ld	s3,600(sp)
    1af4:	25013a03          	ld	s4,592(sp)
    1af8:	24813a83          	ld	s5,584(sp)
    1afc:	24013b03          	ld	s6,576(sp)
    1b00:	23813b83          	ld	s7,568(sp)
    1b04:	23013c03          	ld	s8,560(sp)
    1b08:	22813c83          	ld	s9,552(sp)
    1b0c:	22013d03          	ld	s10,544(sp)
    1b10:	21813d83          	ld	s11,536(sp)
    1b14:	28010113          	addi	sp,sp,640
    1b18:	8082                	ret
    1b1a:	09d00893          	li	a7,157
    1b1e:	2e8c8813          	addi	a6,s9,744 # 22e8 <crctab+0x400>
    1b22:	87aa                	mv	a5,a0
    1b24:	8752                	mv	a4,s4
    1b26:	86ca                	mv	a3,s2
    1b28:	8622                	mv	a2,s0
    1b2a:	448d8593          	addi	a1,s11,1096 # 2448 <crctab+0x560>
    1b2e:	4509                	li	a0,2
    1b30:	00000097          	auipc	ra,0x0
    1b34:	87a080e7          	jalr	-1926(ra) # 13aa <fprintf>
    1b38:	855a                	mv	a0,s6
    1b3a:	00000097          	auipc	ra,0x0
    1b3e:	154080e7          	jalr	340(ra) # 1c8e <exit>
    1b42:	a89d                	j	1bb8 <check_file_handle+0x1aa>
    1b44:	00160593          	addi	a1,a2,1
    1b48:	0285f163          	bgeu	a1,s0,1b6a <check_file_handle+0x15c>
    1b4c:	00c10733          	add	a4,sp,a2
    1b50:	00b487b3          	add	a5,s1,a1
    1b54:	00174683          	lbu	a3,1(a4)
    1b58:	0007c783          	lbu	a5,0(a5)
    1b5c:	00f68763          	beq	a3,a5,1b6a <check_file_handle+0x15c>
    1b60:	0585                	addi	a1,a1,1
    1b62:	0705                	addi	a4,a4,1
    1b64:	feb416e3          	bne	s0,a1,1b50 <check_file_handle+0x142>
    1b68:	85a2                	mv	a1,s0
    1b6a:	08100813          	li	a6,129
    1b6e:	2e8c8793          	addi	a5,s9,744
    1b72:	8752                	mv	a4,s4
    1b74:	012606b3          	add	a3,a2,s2
    1b78:	40c58633          	sub	a2,a1,a2
    1b7c:	490d0593          	addi	a1,s10,1168 # 2490 <crctab+0x5a8>
    1b80:	4509                	li	a0,2
    1b82:	00000097          	auipc	ra,0x0
    1b86:	828080e7          	jalr	-2008(ra) # 13aa <fprintf>
    1b8a:	855a                	mv	a0,s6
    1b8c:	00000097          	auipc	ra,0x0
    1b90:	102080e7          	jalr	258(ra) # 1c8e <exit>
    1b94:	9922                	add	s2,s2,s0
    1b96:	f13970e3          	bgeu	s2,s3,1a96 <check_file_handle+0x88>
    1b9a:	41298433          	sub	s0,s3,s2
    1b9e:	008af363          	bgeu	s5,s0,1ba4 <check_file_handle+0x196>
    1ba2:	8456                	mv	s0,s5
    1ba4:	0004061b          	sext.w	a2,s0
    1ba8:	858a                	mv	a1,sp
    1baa:	855e                	mv	a0,s7
    1bac:	00000097          	auipc	ra,0x0
    1bb0:	10a080e7          	jalr	266(ra) # 1cb6 <read>
    1bb4:	f68513e3          	bne	a0,s0,1b1a <check_file_handle+0x10c>
    1bb8:	012c04b3          	add	s1,s8,s2
    1bbc:	8622                	mv	a2,s0
    1bbe:	85a6                	mv	a1,s1
    1bc0:	850a                	mv	a0,sp
    1bc2:	00000097          	auipc	ra,0x0
    1bc6:	bce080e7          	jalr	-1074(ra) # 1790 <memcmp>
    1bca:	d569                	beqz	a0,1b94 <check_file_handle+0x186>
    1bcc:	03298163          	beq	s3,s2,1bee <check_file_handle+0x1e0>
    1bd0:	870a                	mv	a4,sp
    1bd2:	4601                	li	a2,0
    1bd4:	00c487b3          	add	a5,s1,a2
    1bd8:	00074683          	lbu	a3,0(a4)
    1bdc:	0007c783          	lbu	a5,0(a5)
    1be0:	f6f692e3          	bne	a3,a5,1b44 <check_file_handle+0x136>
    1be4:	0605                	addi	a2,a2,1
    1be6:	0705                	addi	a4,a4,1
    1be8:	fe8666e3          	bltu	a2,s0,1bd4 <check_file_handle+0x1c6>
    1bec:	bfa1                	j	1b44 <check_file_handle+0x136>
    1bee:	4601                	li	a2,0
    1bf0:	4585                	li	a1,1
    1bf2:	bfa5                	j	1b6a <check_file_handle+0x15c>

0000000000001bf4 <check_file>:
    1bf4:	7179                	addi	sp,sp,-48
    1bf6:	f406                	sd	ra,40(sp)
    1bf8:	f022                	sd	s0,32(sp)
    1bfa:	ec26                	sd	s1,24(sp)
    1bfc:	e84a                	sd	s2,16(sp)
    1bfe:	e44e                	sd	s3,8(sp)
    1c00:	84aa                	mv	s1,a0
    1c02:	892e                	mv	s2,a1
    1c04:	89b2                	mv	s3,a2
    1c06:	4581                	li	a1,0
    1c08:	00000097          	auipc	ra,0x0
    1c0c:	0a6080e7          	jalr	166(ra) # 1cae <open>
    1c10:	842a                	mv	s0,a0
    1c12:	4789                	li	a5,2
    1c14:	02a7df63          	bge	a5,a0,1c52 <check_file+0x5e>
    1c18:	86ce                	mv	a3,s3
    1c1a:	864a                	mv	a2,s2
    1c1c:	85a6                	mv	a1,s1
    1c1e:	8522                	mv	a0,s0
    1c20:	00000097          	auipc	ra,0x0
    1c24:	dee080e7          	jalr	-530(ra) # 1a0e <check_file_handle>
    1c28:	85a6                	mv	a1,s1
    1c2a:	00002537          	lui	a0,0x2
    1c2e:	5b850513          	addi	a0,a0,1464 # 25b8 <crctab+0x6d0>
    1c32:	fffff097          	auipc	ra,0xfffff
    1c36:	79a080e7          	jalr	1946(ra) # 13cc <printf>
    1c3a:	8522                	mv	a0,s0
    1c3c:	00000097          	auipc	ra,0x0
    1c40:	09a080e7          	jalr	154(ra) # 1cd6 <close>
    1c44:	70a2                	ld	ra,40(sp)
    1c46:	7402                	ld	s0,32(sp)
    1c48:	64e2                	ld	s1,24(sp)
    1c4a:	6942                	ld	s2,16(sp)
    1c4c:	69a2                	ld	s3,8(sp)
    1c4e:	6145                	addi	sp,sp,48
    1c50:	8082                	ret
    1c52:	0ae00713          	li	a4,174
    1c56:	000026b7          	lui	a3,0x2
    1c5a:	2e868693          	addi	a3,a3,744 # 22e8 <crctab+0x400>
    1c5e:	8626                	mv	a2,s1
    1c60:	000025b7          	lui	a1,0x2
    1c64:	55058593          	addi	a1,a1,1360 # 2550 <crctab+0x668>
    1c68:	4509                	li	a0,2
    1c6a:	fffff097          	auipc	ra,0xfffff
    1c6e:	740080e7          	jalr	1856(ra) # 13aa <fprintf>
    1c72:	650d                	lui	a0,0x3
    1c74:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c78:	00000097          	auipc	ra,0x0
    1c7c:	016080e7          	jalr	22(ra) # 1c8e <exit>
    1c80:	bf61                	j	1c18 <check_file+0x24>

0000000000001c82 <r_sp>:
    1c82:	850a                	mv	a0,sp
    1c84:	8082                	ret

0000000000001c86 <halt>:
    1c86:	4885                	li	a7,1
    1c88:	00000073          	ecall
    1c8c:	8082                	ret

0000000000001c8e <exit>:
    1c8e:	4889                	li	a7,2
    1c90:	00000073          	ecall
    1c94:	8082                	ret

0000000000001c96 <exec>:
    1c96:	488d                	li	a7,3
    1c98:	00000073          	ecall
    1c9c:	8082                	ret

0000000000001c9e <wait>:
    1c9e:	4891                	li	a7,4
    1ca0:	00000073          	ecall
    1ca4:	8082                	ret

0000000000001ca6 <remove>:
    1ca6:	4895                	li	a7,5
    1ca8:	00000073          	ecall
    1cac:	8082                	ret

0000000000001cae <open>:
    1cae:	4899                	li	a7,6
    1cb0:	00000073          	ecall
    1cb4:	8082                	ret

0000000000001cb6 <read>:
    1cb6:	489d                	li	a7,7
    1cb8:	00000073          	ecall
    1cbc:	8082                	ret

0000000000001cbe <write>:
    1cbe:	48a1                	li	a7,8
    1cc0:	00000073          	ecall
    1cc4:	8082                	ret

0000000000001cc6 <seek>:
    1cc6:	48a5                	li	a7,9
    1cc8:	00000073          	ecall
    1ccc:	8082                	ret

0000000000001cce <tell>:
    1cce:	48a9                	li	a7,10
    1cd0:	00000073          	ecall
    1cd4:	8082                	ret

0000000000001cd6 <close>:
    1cd6:	48ad                	li	a7,11
    1cd8:	00000073          	ecall
    1cdc:	8082                	ret

0000000000001cde <fstat>:
    1cde:	48b1                	li	a7,12
    1ce0:	00000073          	ecall
    1ce4:	8082                	ret

0000000000001ce6 <mmap>:
    1ce6:	48b5                	li	a7,13
    1ce8:	00000073          	ecall
    1cec:	8082                	ret

0000000000001cee <munmap>:
    1cee:	48b9                	li	a7,14
    1cf0:	00000073          	ecall
    1cf4:	8082                	ret

0000000000001cf6 <chdir>:
    1cf6:	48bd                	li	a7,15
    1cf8:	00000073          	ecall
    1cfc:	8082                	ret

0000000000001cfe <mkdir>:
    1cfe:	48c1                	li	a7,16
    1d00:	00000073          	ecall
    1d04:	8082                	ret
