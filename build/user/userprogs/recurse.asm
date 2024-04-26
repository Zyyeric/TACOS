
build/user/userprogs/recurse:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	715d                	addi	sp,sp,-80
    1002:	e486                	sd	ra,72(sp)
    1004:	e0a2                	sd	s0,64(sp)
    1006:	fc26                	sd	s1,56(sp)
    1008:	f84a                	sd	s2,48(sp)
    100a:	842e                	mv	s0,a1
    100c:	4785                	li	a5,1
    100e:	02a7d563          	bge	a5,a0,1038 <main+0x38>
    1012:	6408                	ld	a0,8(s0)
    1014:	00001097          	auipc	ra,0x1
    1018:	964080e7          	jalr	-1692(ra) # 1978 <atoi>
    101c:	842a                	mv	s0,a0
    101e:	04a04363          	bgtz	a0,1064 <main+0x64>
    1022:	8522                	mv	a0,s0
    1024:	00001097          	auipc	ra,0x1
    1028:	c4a080e7          	jalr	-950(ra) # 1c6e <exit>
    102c:	60a6                	ld	ra,72(sp)
    102e:	6406                	ld	s0,64(sp)
    1030:	74e2                	ld	s1,56(sp)
    1032:	7942                	ld	s2,48(sp)
    1034:	6161                	addi	sp,sp,80
    1036:	8082                	ret
    1038:	469d                	li	a3,7
    103a:	00002637          	lui	a2,0x2
    103e:	cf060613          	addi	a2,a2,-784 # 1cf0 <mkdir+0x12>
    1042:	000025b7          	lui	a1,0x2
    1046:	d1058593          	addi	a1,a1,-752 # 1d10 <mkdir+0x32>
    104a:	4509                	li	a0,2
    104c:	00000097          	auipc	ra,0x0
    1050:	33e080e7          	jalr	830(ra) # 138a <fprintf>
    1054:	650d                	lui	a0,0x3
    1056:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    105a:	00001097          	auipc	ra,0x1
    105e:	c14080e7          	jalr	-1004(ra) # 1c6e <exit>
    1062:	bf45                	j	1012 <main+0x12>
    1064:	fff5091b          	addiw	s2,a0,-1
    1068:	0024                	addi	s1,sp,8
    106a:	85ca                	mv	a1,s2
    106c:	8526                	mv	a0,s1
    106e:	00001097          	auipc	ra,0x1
    1072:	870080e7          	jalr	-1936(ra) # 18de <itoa>
    1076:	00002537          	lui	a0,0x2
    107a:	d4850793          	addi	a5,a0,-696 # 1d48 <mkdir+0x6a>
    107e:	ec3e                	sd	a5,24(sp)
    1080:	f026                	sd	s1,32(sp)
    1082:	f402                	sd	zero,40(sp)
    1084:	082c                	addi	a1,sp,24
    1086:	d4850513          	addi	a0,a0,-696
    108a:	00001097          	auipc	ra,0x1
    108e:	bec080e7          	jalr	-1044(ra) # 1c76 <exec>
    1092:	84aa                	mv	s1,a0
    1094:	57fd                	li	a5,-1
    1096:	02f50f63          	beq	a0,a5,10d4 <main+0xd4>
    109a:	8526                	mv	a0,s1
    109c:	00001097          	auipc	ra,0x1
    10a0:	be2080e7          	jalr	-1054(ra) # 1c7e <wait>
    10a4:	f6a90fe3          	beq	s2,a0,1022 <main+0x22>
    10a8:	46c9                	li	a3,18
    10aa:	00002637          	lui	a2,0x2
    10ae:	cf060613          	addi	a2,a2,-784 # 1cf0 <mkdir+0x12>
    10b2:	000025b7          	lui	a1,0x2
    10b6:	da058593          	addi	a1,a1,-608 # 1da0 <mkdir+0xc2>
    10ba:	4509                	li	a0,2
    10bc:	00000097          	auipc	ra,0x0
    10c0:	2ce080e7          	jalr	718(ra) # 138a <fprintf>
    10c4:	650d                	lui	a0,0x3
    10c6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10ca:	00001097          	auipc	ra,0x1
    10ce:	ba4080e7          	jalr	-1116(ra) # 1c6e <exit>
    10d2:	bf81                	j	1022 <main+0x22>
    10d4:	46c5                	li	a3,17
    10d6:	00002637          	lui	a2,0x2
    10da:	cf060613          	addi	a2,a2,-784 # 1cf0 <mkdir+0x12>
    10de:	000025b7          	lui	a1,0x2
    10e2:	d5058593          	addi	a1,a1,-688 # 1d50 <mkdir+0x72>
    10e6:	4509                	li	a0,2
    10e8:	00000097          	auipc	ra,0x0
    10ec:	2a2080e7          	jalr	674(ra) # 138a <fprintf>
    10f0:	650d                	lui	a0,0x3
    10f2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10f6:	00001097          	auipc	ra,0x1
    10fa:	b78080e7          	jalr	-1160(ra) # 1c6e <exit>
    10fe:	bf71                	j	109a <main+0x9a>

0000000000001100 <putc>:
    1100:	1101                	addi	sp,sp,-32
    1102:	ec06                	sd	ra,24(sp)
    1104:	00b107a3          	sb	a1,15(sp)
    1108:	4605                	li	a2,1
    110a:	00f10593          	addi	a1,sp,15
    110e:	00001097          	auipc	ra,0x1
    1112:	b90080e7          	jalr	-1136(ra) # 1c9e <write>
    1116:	60e2                	ld	ra,24(sp)
    1118:	6105                	addi	sp,sp,32
    111a:	8082                	ret

000000000000111c <printint>:
    111c:	7179                	addi	sp,sp,-48
    111e:	f406                	sd	ra,40(sp)
    1120:	f022                	sd	s0,32(sp)
    1122:	ec26                	sd	s1,24(sp)
    1124:	e84a                	sd	s2,16(sp)
    1126:	84aa                	mv	s1,a0
    1128:	c299                	beqz	a3,112e <printint+0x12>
    112a:	0805c363          	bltz	a1,11b0 <printint+0x94>
    112e:	2581                	sext.w	a1,a1
    1130:	4881                	li	a7,0
    1132:	868a                	mv	a3,sp
    1134:	4701                	li	a4,0
    1136:	2601                	sext.w	a2,a2
    1138:	00002537          	lui	a0,0x2
    113c:	de850513          	addi	a0,a0,-536 # 1de8 <digits>
    1140:	883a                	mv	a6,a4
    1142:	2705                	addiw	a4,a4,1
    1144:	02c5f7bb          	remuw	a5,a1,a2
    1148:	1782                	slli	a5,a5,0x20
    114a:	9381                	srli	a5,a5,0x20
    114c:	97aa                	add	a5,a5,a0
    114e:	0007c783          	lbu	a5,0(a5)
    1152:	00f68023          	sb	a5,0(a3)
    1156:	0005879b          	sext.w	a5,a1
    115a:	02c5d5bb          	divuw	a1,a1,a2
    115e:	0685                	addi	a3,a3,1
    1160:	fec7f0e3          	bgeu	a5,a2,1140 <printint+0x24>
    1164:	00088a63          	beqz	a7,1178 <printint+0x5c>
    1168:	081c                	addi	a5,sp,16
    116a:	973e                	add	a4,a4,a5
    116c:	02d00793          	li	a5,45
    1170:	fef70823          	sb	a5,-16(a4)
    1174:	0028071b          	addiw	a4,a6,2
    1178:	02e05663          	blez	a4,11a4 <printint+0x88>
    117c:	00e10433          	add	s0,sp,a4
    1180:	fff10913          	addi	s2,sp,-1
    1184:	993a                	add	s2,s2,a4
    1186:	377d                	addiw	a4,a4,-1
    1188:	1702                	slli	a4,a4,0x20
    118a:	9301                	srli	a4,a4,0x20
    118c:	40e90933          	sub	s2,s2,a4
    1190:	fff44583          	lbu	a1,-1(s0)
    1194:	8526                	mv	a0,s1
    1196:	00000097          	auipc	ra,0x0
    119a:	f6a080e7          	jalr	-150(ra) # 1100 <putc>
    119e:	147d                	addi	s0,s0,-1
    11a0:	ff2418e3          	bne	s0,s2,1190 <printint+0x74>
    11a4:	70a2                	ld	ra,40(sp)
    11a6:	7402                	ld	s0,32(sp)
    11a8:	64e2                	ld	s1,24(sp)
    11aa:	6942                	ld	s2,16(sp)
    11ac:	6145                	addi	sp,sp,48
    11ae:	8082                	ret
    11b0:	40b005bb          	negw	a1,a1
    11b4:	4885                	li	a7,1
    11b6:	bfb5                	j	1132 <printint+0x16>

00000000000011b8 <vprintf>:
    11b8:	7159                	addi	sp,sp,-112
    11ba:	f486                	sd	ra,104(sp)
    11bc:	f0a2                	sd	s0,96(sp)
    11be:	eca6                	sd	s1,88(sp)
    11c0:	e8ca                	sd	s2,80(sp)
    11c2:	e4ce                	sd	s3,72(sp)
    11c4:	e0d2                	sd	s4,64(sp)
    11c6:	fc56                	sd	s5,56(sp)
    11c8:	f85a                	sd	s6,48(sp)
    11ca:	f45e                	sd	s7,40(sp)
    11cc:	f062                	sd	s8,32(sp)
    11ce:	ec66                	sd	s9,24(sp)
    11d0:	e86a                	sd	s10,16(sp)
    11d2:	e46e                	sd	s11,8(sp)
    11d4:	0005c483          	lbu	s1,0(a1)
    11d8:	18048a63          	beqz	s1,136c <vprintf+0x1b4>
    11dc:	8a2a                	mv	s4,a0
    11de:	8ab2                	mv	s5,a2
    11e0:	00158413          	addi	s0,a1,1
    11e4:	4901                	li	s2,0
    11e6:	02500993          	li	s3,37
    11ea:	06400b93          	li	s7,100
    11ee:	06c00c13          	li	s8,108
    11f2:	07800c93          	li	s9,120
    11f6:	07000d13          	li	s10,112
    11fa:	00002db7          	lui	s11,0x2
    11fe:	00002b37          	lui	s6,0x2
    1202:	de8b0b13          	addi	s6,s6,-536 # 1de8 <digits>
    1206:	a839                	j	1224 <vprintf+0x6c>
    1208:	85a6                	mv	a1,s1
    120a:	8552                	mv	a0,s4
    120c:	00000097          	auipc	ra,0x0
    1210:	ef4080e7          	jalr	-268(ra) # 1100 <putc>
    1214:	a019                	j	121a <vprintf+0x62>
    1216:	01390f63          	beq	s2,s3,1234 <vprintf+0x7c>
    121a:	0405                	addi	s0,s0,1
    121c:	fff44483          	lbu	s1,-1(s0)
    1220:	14048663          	beqz	s1,136c <vprintf+0x1b4>
    1224:	0004879b          	sext.w	a5,s1
    1228:	fe0917e3          	bnez	s2,1216 <vprintf+0x5e>
    122c:	fd379ee3          	bne	a5,s3,1208 <vprintf+0x50>
    1230:	893e                	mv	s2,a5
    1232:	b7e5                	j	121a <vprintf+0x62>
    1234:	05778063          	beq	a5,s7,1274 <vprintf+0xbc>
    1238:	05878c63          	beq	a5,s8,1290 <vprintf+0xd8>
    123c:	07978863          	beq	a5,s9,12ac <vprintf+0xf4>
    1240:	09a78463          	beq	a5,s10,12c8 <vprintf+0x110>
    1244:	07300713          	li	a4,115
    1248:	0ce78263          	beq	a5,a4,130c <vprintf+0x154>
    124c:	06300713          	li	a4,99
    1250:	0ee78763          	beq	a5,a4,133e <vprintf+0x186>
    1254:	11378163          	beq	a5,s3,1356 <vprintf+0x19e>
    1258:	85ce                	mv	a1,s3
    125a:	8552                	mv	a0,s4
    125c:	00000097          	auipc	ra,0x0
    1260:	ea4080e7          	jalr	-348(ra) # 1100 <putc>
    1264:	85a6                	mv	a1,s1
    1266:	8552                	mv	a0,s4
    1268:	00000097          	auipc	ra,0x0
    126c:	e98080e7          	jalr	-360(ra) # 1100 <putc>
    1270:	4901                	li	s2,0
    1272:	b765                	j	121a <vprintf+0x62>
    1274:	008a8493          	addi	s1,s5,8
    1278:	4685                	li	a3,1
    127a:	4629                	li	a2,10
    127c:	000aa583          	lw	a1,0(s5)
    1280:	8552                	mv	a0,s4
    1282:	00000097          	auipc	ra,0x0
    1286:	e9a080e7          	jalr	-358(ra) # 111c <printint>
    128a:	8aa6                	mv	s5,s1
    128c:	4901                	li	s2,0
    128e:	b771                	j	121a <vprintf+0x62>
    1290:	008a8493          	addi	s1,s5,8
    1294:	4681                	li	a3,0
    1296:	4629                	li	a2,10
    1298:	000aa583          	lw	a1,0(s5)
    129c:	8552                	mv	a0,s4
    129e:	00000097          	auipc	ra,0x0
    12a2:	e7e080e7          	jalr	-386(ra) # 111c <printint>
    12a6:	8aa6                	mv	s5,s1
    12a8:	4901                	li	s2,0
    12aa:	bf85                	j	121a <vprintf+0x62>
    12ac:	008a8493          	addi	s1,s5,8
    12b0:	4681                	li	a3,0
    12b2:	4641                	li	a2,16
    12b4:	000aa583          	lw	a1,0(s5)
    12b8:	8552                	mv	a0,s4
    12ba:	00000097          	auipc	ra,0x0
    12be:	e62080e7          	jalr	-414(ra) # 111c <printint>
    12c2:	8aa6                	mv	s5,s1
    12c4:	4901                	li	s2,0
    12c6:	bf91                	j	121a <vprintf+0x62>
    12c8:	008a8913          	addi	s2,s5,8
    12cc:	000aba83          	ld	s5,0(s5)
    12d0:	03000593          	li	a1,48
    12d4:	8552                	mv	a0,s4
    12d6:	00000097          	auipc	ra,0x0
    12da:	e2a080e7          	jalr	-470(ra) # 1100 <putc>
    12de:	85e6                	mv	a1,s9
    12e0:	8552                	mv	a0,s4
    12e2:	00000097          	auipc	ra,0x0
    12e6:	e1e080e7          	jalr	-482(ra) # 1100 <putc>
    12ea:	44c1                	li	s1,16
    12ec:	03cad793          	srli	a5,s5,0x3c
    12f0:	97da                	add	a5,a5,s6
    12f2:	0007c583          	lbu	a1,0(a5)
    12f6:	8552                	mv	a0,s4
    12f8:	00000097          	auipc	ra,0x0
    12fc:	e08080e7          	jalr	-504(ra) # 1100 <putc>
    1300:	0a92                	slli	s5,s5,0x4
    1302:	34fd                	addiw	s1,s1,-1
    1304:	f4e5                	bnez	s1,12ec <vprintf+0x134>
    1306:	8aca                	mv	s5,s2
    1308:	4901                	li	s2,0
    130a:	bf01                	j	121a <vprintf+0x62>
    130c:	008a8913          	addi	s2,s5,8
    1310:	000ab483          	ld	s1,0(s5)
    1314:	c085                	beqz	s1,1334 <vprintf+0x17c>
    1316:	0004c583          	lbu	a1,0(s1)
    131a:	c5b1                	beqz	a1,1366 <vprintf+0x1ae>
    131c:	8552                	mv	a0,s4
    131e:	00000097          	auipc	ra,0x0
    1322:	de2080e7          	jalr	-542(ra) # 1100 <putc>
    1326:	0485                	addi	s1,s1,1
    1328:	0004c583          	lbu	a1,0(s1)
    132c:	f9e5                	bnez	a1,131c <vprintf+0x164>
    132e:	8aca                	mv	s5,s2
    1330:	4901                	li	s2,0
    1332:	b5e5                	j	121a <vprintf+0x62>
    1334:	de0d8493          	addi	s1,s11,-544 # 1de0 <mkdir+0x102>
    1338:	02800593          	li	a1,40
    133c:	b7c5                	j	131c <vprintf+0x164>
    133e:	008a8493          	addi	s1,s5,8
    1342:	000ac583          	lbu	a1,0(s5)
    1346:	8552                	mv	a0,s4
    1348:	00000097          	auipc	ra,0x0
    134c:	db8080e7          	jalr	-584(ra) # 1100 <putc>
    1350:	8aa6                	mv	s5,s1
    1352:	4901                	li	s2,0
    1354:	b5d9                	j	121a <vprintf+0x62>
    1356:	85ce                	mv	a1,s3
    1358:	8552                	mv	a0,s4
    135a:	00000097          	auipc	ra,0x0
    135e:	da6080e7          	jalr	-602(ra) # 1100 <putc>
    1362:	4901                	li	s2,0
    1364:	bd5d                	j	121a <vprintf+0x62>
    1366:	8aca                	mv	s5,s2
    1368:	4901                	li	s2,0
    136a:	bd45                	j	121a <vprintf+0x62>
    136c:	70a6                	ld	ra,104(sp)
    136e:	7406                	ld	s0,96(sp)
    1370:	64e6                	ld	s1,88(sp)
    1372:	6946                	ld	s2,80(sp)
    1374:	69a6                	ld	s3,72(sp)
    1376:	6a06                	ld	s4,64(sp)
    1378:	7ae2                	ld	s5,56(sp)
    137a:	7b42                	ld	s6,48(sp)
    137c:	7ba2                	ld	s7,40(sp)
    137e:	7c02                	ld	s8,32(sp)
    1380:	6ce2                	ld	s9,24(sp)
    1382:	6d42                	ld	s10,16(sp)
    1384:	6da2                	ld	s11,8(sp)
    1386:	6165                	addi	sp,sp,112
    1388:	8082                	ret

000000000000138a <fprintf>:
    138a:	715d                	addi	sp,sp,-80
    138c:	ec06                	sd	ra,24(sp)
    138e:	f032                	sd	a2,32(sp)
    1390:	f436                	sd	a3,40(sp)
    1392:	f83a                	sd	a4,48(sp)
    1394:	fc3e                	sd	a5,56(sp)
    1396:	e0c2                	sd	a6,64(sp)
    1398:	e4c6                	sd	a7,72(sp)
    139a:	1010                	addi	a2,sp,32
    139c:	e432                	sd	a2,8(sp)
    139e:	00000097          	auipc	ra,0x0
    13a2:	e1a080e7          	jalr	-486(ra) # 11b8 <vprintf>
    13a6:	60e2                	ld	ra,24(sp)
    13a8:	6161                	addi	sp,sp,80
    13aa:	8082                	ret

00000000000013ac <printf>:
    13ac:	711d                	addi	sp,sp,-96
    13ae:	ec06                	sd	ra,24(sp)
    13b0:	f42e                	sd	a1,40(sp)
    13b2:	f832                	sd	a2,48(sp)
    13b4:	fc36                	sd	a3,56(sp)
    13b6:	e0ba                	sd	a4,64(sp)
    13b8:	e4be                	sd	a5,72(sp)
    13ba:	e8c2                	sd	a6,80(sp)
    13bc:	ecc6                	sd	a7,88(sp)
    13be:	1030                	addi	a2,sp,40
    13c0:	e432                	sd	a2,8(sp)
    13c2:	85aa                	mv	a1,a0
    13c4:	4505                	li	a0,1
    13c6:	00000097          	auipc	ra,0x0
    13ca:	df2080e7          	jalr	-526(ra) # 11b8 <vprintf>
    13ce:	60e2                	ld	ra,24(sp)
    13d0:	6125                	addi	sp,sp,96
    13d2:	8082                	ret

00000000000013d4 <cksum>:
    13d4:	cdb1                	beqz	a1,1430 <cksum+0x5c>
    13d6:	00b50833          	add	a6,a0,a1
    13da:	4781                	li	a5,0
    13dc:	00002637          	lui	a2,0x2
    13e0:	e0060613          	addi	a2,a2,-512 # 1e00 <crctab>
    13e4:	0505                	addi	a0,a0,1
    13e6:	0087969b          	slliw	a3,a5,0x8
    13ea:	0187d71b          	srliw	a4,a5,0x18
    13ee:	fff54783          	lbu	a5,-1(a0)
    13f2:	8f3d                	xor	a4,a4,a5
    13f4:	1702                	slli	a4,a4,0x20
    13f6:	9301                	srli	a4,a4,0x20
    13f8:	070a                	slli	a4,a4,0x2
    13fa:	9732                	add	a4,a4,a2
    13fc:	431c                	lw	a5,0(a4)
    13fe:	8fb5                	xor	a5,a5,a3
    1400:	2781                	sext.w	a5,a5
    1402:	fea811e3          	bne	a6,a0,13e4 <cksum+0x10>
    1406:	00002637          	lui	a2,0x2
    140a:	e0060613          	addi	a2,a2,-512 # 1e00 <crctab>
    140e:	0ff5f693          	andi	a3,a1,255
    1412:	81a1                	srli	a1,a1,0x8
    1414:	0087951b          	slliw	a0,a5,0x8
    1418:	0187d71b          	srliw	a4,a5,0x18
    141c:	8f35                	xor	a4,a4,a3
    141e:	070a                	slli	a4,a4,0x2
    1420:	9732                	add	a4,a4,a2
    1422:	431c                	lw	a5,0(a4)
    1424:	8fa9                	xor	a5,a5,a0
    1426:	2781                	sext.w	a5,a5
    1428:	f1fd                	bnez	a1,140e <cksum+0x3a>
    142a:	fff7c513          	not	a0,a5
    142e:	8082                	ret
    1430:	4781                	li	a5,0
    1432:	bfe5                	j	142a <cksum+0x56>

0000000000001434 <swap_bytes>:
    1434:	ce19                	beqz	a2,1452 <swap_bytes+0x1e>
    1436:	87aa                	mv	a5,a0
    1438:	962a                	add	a2,a2,a0
    143a:	0007c703          	lbu	a4,0(a5)
    143e:	0005c683          	lbu	a3,0(a1)
    1442:	00d78023          	sb	a3,0(a5)
    1446:	00e58023          	sb	a4,0(a1)
    144a:	0785                	addi	a5,a5,1
    144c:	0585                	addi	a1,a1,1
    144e:	fec796e3          	bne	a5,a2,143a <swap_bytes+0x6>
    1452:	8082                	ret

0000000000001454 <random_init>:
    1454:	7139                	addi	sp,sp,-64
    1456:	fc06                	sd	ra,56(sp)
    1458:	f822                	sd	s0,48(sp)
    145a:	f426                	sd	s1,40(sp)
    145c:	f04a                	sd	s2,32(sp)
    145e:	ec4e                	sd	s3,24(sp)
    1460:	e852                	sd	s4,16(sp)
    1462:	c62a                	sw	a0,12(sp)
    1464:	000037b7          	lui	a5,0x3
    1468:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    146c:	eca5                	bnez	s1,14e4 <random_init+0x90>
    146e:	00003737          	lui	a4,0x3
    1472:	01070913          	addi	s2,a4,16 # 3010 <s>
    1476:	01070713          	addi	a4,a4,16
    147a:	87a6                	mv	a5,s1
    147c:	10000693          	li	a3,256
    1480:	00f70023          	sb	a5,0(a4)
    1484:	2785                	addiw	a5,a5,1
    1486:	0705                	addi	a4,a4,1
    1488:	fed79ce3          	bne	a5,a3,1480 <random_init+0x2c>
    148c:	4401                	li	s0,0
    148e:	000039b7          	lui	s3,0x3
    1492:	01098993          	addi	s3,s3,16 # 3010 <s>
    1496:	10000a13          	li	s4,256
    149a:	0034f793          	andi	a5,s1,3
    149e:	0818                	addi	a4,sp,16
    14a0:	97ba                	add	a5,a5,a4
    14a2:	ffc7c783          	lbu	a5,-4(a5)
    14a6:	00094703          	lbu	a4,0(s2)
    14aa:	9fb9                	addw	a5,a5,a4
    14ac:	9c3d                	addw	s0,s0,a5
    14ae:	0ff47413          	andi	s0,s0,255
    14b2:	4605                	li	a2,1
    14b4:	008985b3          	add	a1,s3,s0
    14b8:	854a                	mv	a0,s2
    14ba:	00000097          	auipc	ra,0x0
    14be:	f7a080e7          	jalr	-134(ra) # 1434 <swap_bytes>
    14c2:	2485                	addiw	s1,s1,1
    14c4:	0905                	addi	s2,s2,1
    14c6:	fd449ae3          	bne	s1,s4,149a <random_init+0x46>
    14ca:	000037b7          	lui	a5,0x3
    14ce:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14d2:	000037b7          	lui	a5,0x3
    14d6:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14da:	000037b7          	lui	a5,0x3
    14de:	4705                	li	a4,1
    14e0:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14e4:	70e2                	ld	ra,56(sp)
    14e6:	7442                	ld	s0,48(sp)
    14e8:	74a2                	ld	s1,40(sp)
    14ea:	7902                	ld	s2,32(sp)
    14ec:	69e2                	ld	s3,24(sp)
    14ee:	6a42                	ld	s4,16(sp)
    14f0:	6121                	addi	sp,sp,64
    14f2:	8082                	ret

00000000000014f4 <random_bytes>:
    14f4:	7139                	addi	sp,sp,-64
    14f6:	fc06                	sd	ra,56(sp)
    14f8:	f822                	sd	s0,48(sp)
    14fa:	f426                	sd	s1,40(sp)
    14fc:	f04a                	sd	s2,32(sp)
    14fe:	ec4e                	sd	s3,24(sp)
    1500:	e852                	sd	s4,16(sp)
    1502:	e456                	sd	s5,8(sp)
    1504:	e05a                	sd	s6,0(sp)
    1506:	892a                	mv	s2,a0
    1508:	8aae                	mv	s5,a1
    150a:	000037b7          	lui	a5,0x3
    150e:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1512:	c3c1                	beqz	a5,1592 <random_bytes+0x9e>
    1514:	060a8563          	beqz	s5,157e <random_bytes+0x8a>
    1518:	9aca                	add	s5,s5,s2
    151a:	00003a37          	lui	s4,0x3
    151e:	000034b7          	lui	s1,0x3
    1522:	01048493          	addi	s1,s1,16 # 3010 <s>
    1526:	000039b7          	lui	s3,0x3
    152a:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    152e:	2505                	addiw	a0,a0,1
    1530:	0ff57513          	andi	a0,a0,255
    1534:	00aa02a3          	sb	a0,5(s4)
    1538:	00a48b33          	add	s6,s1,a0
    153c:	000b4403          	lbu	s0,0(s6)
    1540:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1544:	9c3d                	addw	s0,s0,a5
    1546:	0ff47413          	andi	s0,s0,255
    154a:	00898223          	sb	s0,4(s3)
    154e:	4605                	li	a2,1
    1550:	008485b3          	add	a1,s1,s0
    1554:	855a                	mv	a0,s6
    1556:	00000097          	auipc	ra,0x0
    155a:	ede080e7          	jalr	-290(ra) # 1434 <swap_bytes>
    155e:	9426                	add	s0,s0,s1
    1560:	000b4783          	lbu	a5,0(s6)
    1564:	00044703          	lbu	a4,0(s0)
    1568:	9fb9                	addw	a5,a5,a4
    156a:	0ff7f793          	andi	a5,a5,255
    156e:	97a6                	add	a5,a5,s1
    1570:	0007c783          	lbu	a5,0(a5)
    1574:	00f90023          	sb	a5,0(s2)
    1578:	0905                	addi	s2,s2,1
    157a:	fb2a98e3          	bne	s5,s2,152a <random_bytes+0x36>
    157e:	70e2                	ld	ra,56(sp)
    1580:	7442                	ld	s0,48(sp)
    1582:	74a2                	ld	s1,40(sp)
    1584:	7902                	ld	s2,32(sp)
    1586:	69e2                	ld	s3,24(sp)
    1588:	6a42                	ld	s4,16(sp)
    158a:	6aa2                	ld	s5,8(sp)
    158c:	6b02                	ld	s6,0(sp)
    158e:	6121                	addi	sp,sp,64
    1590:	8082                	ret
    1592:	4501                	li	a0,0
    1594:	00000097          	auipc	ra,0x0
    1598:	ec0080e7          	jalr	-320(ra) # 1454 <random_init>
    159c:	bfa5                	j	1514 <random_bytes+0x20>

000000000000159e <random_ulong>:
    159e:	1101                	addi	sp,sp,-32
    15a0:	ec06                	sd	ra,24(sp)
    15a2:	45a1                	li	a1,8
    15a4:	0028                	addi	a0,sp,8
    15a6:	00000097          	auipc	ra,0x0
    15aa:	f4e080e7          	jalr	-178(ra) # 14f4 <random_bytes>
    15ae:	6522                	ld	a0,8(sp)
    15b0:	60e2                	ld	ra,24(sp)
    15b2:	6105                	addi	sp,sp,32
    15b4:	8082                	ret

00000000000015b6 <shuffle>:
    15b6:	c9b9                	beqz	a1,160c <shuffle+0x56>
    15b8:	7179                	addi	sp,sp,-48
    15ba:	f406                	sd	ra,40(sp)
    15bc:	f022                	sd	s0,32(sp)
    15be:	ec26                	sd	s1,24(sp)
    15c0:	e84a                	sd	s2,16(sp)
    15c2:	e44e                	sd	s3,8(sp)
    15c4:	e052                	sd	s4,0(sp)
    15c6:	8a2a                	mv	s4,a0
    15c8:	89ae                	mv	s3,a1
    15ca:	84b2                	mv	s1,a2
    15cc:	892a                	mv	s2,a0
    15ce:	4401                	li	s0,0
    15d0:	00000097          	auipc	ra,0x0
    15d4:	fce080e7          	jalr	-50(ra) # 159e <random_ulong>
    15d8:	408985b3          	sub	a1,s3,s0
    15dc:	02b575b3          	remu	a1,a0,a1
    15e0:	95a2                	add	a1,a1,s0
    15e2:	029585b3          	mul	a1,a1,s1
    15e6:	8626                	mv	a2,s1
    15e8:	95d2                	add	a1,a1,s4
    15ea:	854a                	mv	a0,s2
    15ec:	00000097          	auipc	ra,0x0
    15f0:	e48080e7          	jalr	-440(ra) # 1434 <swap_bytes>
    15f4:	0405                	addi	s0,s0,1
    15f6:	9926                	add	s2,s2,s1
    15f8:	fc899ce3          	bne	s3,s0,15d0 <shuffle+0x1a>
    15fc:	70a2                	ld	ra,40(sp)
    15fe:	7402                	ld	s0,32(sp)
    1600:	64e2                	ld	s1,24(sp)
    1602:	6942                	ld	s2,16(sp)
    1604:	69a2                	ld	s3,8(sp)
    1606:	6a02                	ld	s4,0(sp)
    1608:	6145                	addi	sp,sp,48
    160a:	8082                	ret
    160c:	8082                	ret

000000000000160e <arc4_init>:
    160e:	100500a3          	sb	zero,257(a0)
    1612:	10050023          	sb	zero,256(a0)
    1616:	4781                	li	a5,0
    1618:	10000693          	li	a3,256
    161c:	00f50733          	add	a4,a0,a5
    1620:	00f70023          	sb	a5,0(a4)
    1624:	0785                	addi	a5,a5,1
    1626:	fed79be3          	bne	a5,a3,161c <arc4_init+0xe>
    162a:	86aa                	mv	a3,a0
    162c:	10050e13          	addi	t3,a0,256
    1630:	4701                	li	a4,0
    1632:	4781                	li	a5,0
    1634:	0006c883          	lbu	a7,0(a3)
    1638:	00f58833          	add	a6,a1,a5
    163c:	00084803          	lbu	a6,0(a6)
    1640:	00e8873b          	addw	a4,a7,a4
    1644:	00e8073b          	addw	a4,a6,a4
    1648:	0ff77713          	andi	a4,a4,255
    164c:	00e50833          	add	a6,a0,a4
    1650:	00084303          	lbu	t1,0(a6)
    1654:	00668023          	sb	t1,0(a3)
    1658:	01180023          	sb	a7,0(a6)
    165c:	0785                	addi	a5,a5,1
    165e:	00c7b833          	sltu	a6,a5,a2
    1662:	41000833          	neg	a6,a6
    1666:	0107f7b3          	and	a5,a5,a6
    166a:	0685                	addi	a3,a3,1
    166c:	fdc694e3          	bne	a3,t3,1634 <arc4_init+0x26>
    1670:	8082                	ret

0000000000001672 <arc4_crypt>:
    1672:	10054e03          	lbu	t3,256(a0)
    1676:	10154803          	lbu	a6,257(a0)
    167a:	fff60e93          	addi	t4,a2,-1
    167e:	c225                	beqz	a2,16de <arc4_crypt+0x6c>
    1680:	00c588b3          	add	a7,a1,a2
    1684:	86ae                	mv	a3,a1
    1686:	001e031b          	addiw	t1,t3,1
    168a:	40b3033b          	subw	t1,t1,a1
    168e:	00d3073b          	addw	a4,t1,a3
    1692:	0ff77713          	andi	a4,a4,255
    1696:	972a                	add	a4,a4,a0
    1698:	00074603          	lbu	a2,0(a4)
    169c:	0106083b          	addw	a6,a2,a6
    16a0:	0ff87813          	andi	a6,a6,255
    16a4:	010507b3          	add	a5,a0,a6
    16a8:	0007c583          	lbu	a1,0(a5)
    16ac:	00b70023          	sb	a1,0(a4)
    16b0:	00c78023          	sb	a2,0(a5)
    16b4:	0685                	addi	a3,a3,1
    16b6:	00074783          	lbu	a5,0(a4)
    16ba:	9fb1                	addw	a5,a5,a2
    16bc:	0ff7f793          	andi	a5,a5,255
    16c0:	97aa                	add	a5,a5,a0
    16c2:	0007c783          	lbu	a5,0(a5)
    16c6:	fff6c703          	lbu	a4,-1(a3)
    16ca:	8fb9                	xor	a5,a5,a4
    16cc:	fef68fa3          	sb	a5,-1(a3)
    16d0:	fb169fe3          	bne	a3,a7,168e <arc4_crypt+0x1c>
    16d4:	2e85                	addiw	t4,t4,1
    16d6:	01ce8e3b          	addw	t3,t4,t3
    16da:	0ffe7e13          	andi	t3,t3,255
    16de:	11c50023          	sb	t3,256(a0)
    16e2:	110500a3          	sb	a6,257(a0)
    16e6:	8082                	ret

00000000000016e8 <_main>:
    16e8:	1141                	addi	sp,sp,-16
    16ea:	e406                	sd	ra,8(sp)
    16ec:	00000097          	auipc	ra,0x0
    16f0:	914080e7          	jalr	-1772(ra) # 1000 <main>
    16f4:	4501                	li	a0,0
    16f6:	00000097          	auipc	ra,0x0
    16fa:	578080e7          	jalr	1400(ra) # 1c6e <exit>
    16fe:	60a2                	ld	ra,8(sp)
    1700:	0141                	addi	sp,sp,16
    1702:	8082                	ret

0000000000001704 <strcmp>:
    1704:	00054783          	lbu	a5,0(a0)
    1708:	cb91                	beqz	a5,171c <strcmp+0x18>
    170a:	0005c703          	lbu	a4,0(a1)
    170e:	00f71763          	bne	a4,a5,171c <strcmp+0x18>
    1712:	0505                	addi	a0,a0,1
    1714:	0585                	addi	a1,a1,1
    1716:	00054783          	lbu	a5,0(a0)
    171a:	fbe5                	bnez	a5,170a <strcmp+0x6>
    171c:	0005c503          	lbu	a0,0(a1)
    1720:	40a7853b          	subw	a0,a5,a0
    1724:	8082                	ret

0000000000001726 <strcpy>:
    1726:	87aa                	mv	a5,a0
    1728:	0585                	addi	a1,a1,1
    172a:	0785                	addi	a5,a5,1
    172c:	fff5c703          	lbu	a4,-1(a1)
    1730:	fee78fa3          	sb	a4,-1(a5)
    1734:	fb75                	bnez	a4,1728 <strcpy+0x2>
    1736:	8082                	ret

0000000000001738 <strlen>:
    1738:	00054783          	lbu	a5,0(a0)
    173c:	cf81                	beqz	a5,1754 <strlen+0x1c>
    173e:	0505                	addi	a0,a0,1
    1740:	87aa                	mv	a5,a0
    1742:	4685                	li	a3,1
    1744:	9e89                	subw	a3,a3,a0
    1746:	00f6853b          	addw	a0,a3,a5
    174a:	0785                	addi	a5,a5,1
    174c:	fff7c703          	lbu	a4,-1(a5)
    1750:	fb7d                	bnez	a4,1746 <strlen+0xe>
    1752:	8082                	ret
    1754:	4501                	li	a0,0
    1756:	8082                	ret

0000000000001758 <memset>:
    1758:	ca19                	beqz	a2,176e <memset+0x16>
    175a:	87aa                	mv	a5,a0
    175c:	1602                	slli	a2,a2,0x20
    175e:	9201                	srli	a2,a2,0x20
    1760:	00a60733          	add	a4,a2,a0
    1764:	00b78023          	sb	a1,0(a5)
    1768:	0785                	addi	a5,a5,1
    176a:	fee79de3          	bne	a5,a4,1764 <memset+0xc>
    176e:	8082                	ret

0000000000001770 <memcmp>:
    1770:	1101                	addi	sp,sp,-32
    1772:	ec06                	sd	ra,24(sp)
    1774:	e822                	sd	s0,16(sp)
    1776:	e426                	sd	s1,8(sp)
    1778:	e04a                	sd	s2,0(sp)
    177a:	892a                	mv	s2,a0
    177c:	842e                	mv	s0,a1
    177e:	84b2                	mv	s1,a2
    1780:	c915                	beqz	a0,17b4 <memcmp+0x44>
    1782:	c5ad                	beqz	a1,17ec <memcmp+0x7c>
    1784:	fff60713          	addi	a4,a2,-1
    1788:	c645                	beqz	a2,1830 <memcmp+0xc0>
    178a:	87ca                	mv	a5,s2
    178c:	00190613          	addi	a2,s2,1
    1790:	963a                	add	a2,a2,a4
    1792:	0007c683          	lbu	a3,0(a5)
    1796:	00044703          	lbu	a4,0(s0)
    179a:	08e69463          	bne	a3,a4,1822 <memcmp+0xb2>
    179e:	0785                	addi	a5,a5,1
    17a0:	0405                	addi	s0,s0,1
    17a2:	fec798e3          	bne	a5,a2,1792 <memcmp+0x22>
    17a6:	4501                	li	a0,0
    17a8:	60e2                	ld	ra,24(sp)
    17aa:	6442                	ld	s0,16(sp)
    17ac:	64a2                	ld	s1,8(sp)
    17ae:	6902                	ld	s2,0(sp)
    17b0:	6105                	addi	sp,sp,32
    17b2:	8082                	ret
    17b4:	4501                	li	a0,0
    17b6:	da6d                	beqz	a2,17a8 <memcmp+0x38>
    17b8:	03200693          	li	a3,50
    17bc:	00002637          	lui	a2,0x2
    17c0:	20060613          	addi	a2,a2,512 # 2200 <crctab+0x400>
    17c4:	000025b7          	lui	a1,0x2
    17c8:	21058593          	addi	a1,a1,528 # 2210 <crctab+0x410>
    17cc:	4509                	li	a0,2
    17ce:	00000097          	auipc	ra,0x0
    17d2:	bbc080e7          	jalr	-1092(ra) # 138a <fprintf>
    17d6:	650d                	lui	a0,0x3
    17d8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17dc:	00000097          	auipc	ra,0x0
    17e0:	492080e7          	jalr	1170(ra) # 1c6e <exit>
    17e4:	fff48713          	addi	a4,s1,-1
    17e8:	f04d                	bnez	s0,178a <memcmp+0x1a>
    17ea:	a011                	j	17ee <memcmp+0x7e>
    17ec:	c221                	beqz	a2,182c <memcmp+0xbc>
    17ee:	03300693          	li	a3,51
    17f2:	00002637          	lui	a2,0x2
    17f6:	20060613          	addi	a2,a2,512 # 2200 <crctab+0x400>
    17fa:	000025b7          	lui	a1,0x2
    17fe:	25858593          	addi	a1,a1,600 # 2258 <crctab+0x458>
    1802:	4509                	li	a0,2
    1804:	00000097          	auipc	ra,0x0
    1808:	b86080e7          	jalr	-1146(ra) # 138a <fprintf>
    180c:	650d                	lui	a0,0x3
    180e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1812:	00000097          	auipc	ra,0x0
    1816:	45c080e7          	jalr	1116(ra) # 1c6e <exit>
    181a:	fff48713          	addi	a4,s1,-1
    181e:	4401                	li	s0,0
    1820:	b7ad                	j	178a <memcmp+0x1a>
    1822:	4505                	li	a0,1
    1824:	f8d762e3          	bltu	a4,a3,17a8 <memcmp+0x38>
    1828:	557d                	li	a0,-1
    182a:	bfbd                	j	17a8 <memcmp+0x38>
    182c:	4501                	li	a0,0
    182e:	bfad                	j	17a8 <memcmp+0x38>
    1830:	4501                	li	a0,0
    1832:	bf9d                	j	17a8 <memcmp+0x38>

0000000000001834 <memcpy>:
    1834:	1101                	addi	sp,sp,-32
    1836:	ec06                	sd	ra,24(sp)
    1838:	e822                	sd	s0,16(sp)
    183a:	e426                	sd	s1,8(sp)
    183c:	e04a                	sd	s2,0(sp)
    183e:	84aa                	mv	s1,a0
    1840:	842e                	mv	s0,a1
    1842:	8932                	mv	s2,a2
    1844:	c51d                	beqz	a0,1872 <memcpy+0x3e>
    1846:	c1ad                	beqz	a1,18a8 <memcpy+0x74>
    1848:	fff60693          	addi	a3,a2,-1
    184c:	ce01                	beqz	a2,1864 <memcpy+0x30>
    184e:	0685                	addi	a3,a3,1
    1850:	96a6                	add	a3,a3,s1
    1852:	87a6                	mv	a5,s1
    1854:	0405                	addi	s0,s0,1
    1856:	0785                	addi	a5,a5,1
    1858:	fff44703          	lbu	a4,-1(s0)
    185c:	fee78fa3          	sb	a4,-1(a5)
    1860:	fed79ae3          	bne	a5,a3,1854 <memcpy+0x20>
    1864:	8526                	mv	a0,s1
    1866:	60e2                	ld	ra,24(sp)
    1868:	6442                	ld	s0,16(sp)
    186a:	64a2                	ld	s1,8(sp)
    186c:	6902                	ld	s2,0(sp)
    186e:	6105                	addi	sp,sp,32
    1870:	8082                	ret
    1872:	da6d                	beqz	a2,1864 <memcpy+0x30>
    1874:	04000693          	li	a3,64
    1878:	00002637          	lui	a2,0x2
    187c:	20060613          	addi	a2,a2,512 # 2200 <crctab+0x400>
    1880:	000025b7          	lui	a1,0x2
    1884:	2a058593          	addi	a1,a1,672 # 22a0 <crctab+0x4a0>
    1888:	4509                	li	a0,2
    188a:	00000097          	auipc	ra,0x0
    188e:	b00080e7          	jalr	-1280(ra) # 138a <fprintf>
    1892:	650d                	lui	a0,0x3
    1894:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1898:	00000097          	auipc	ra,0x0
    189c:	3d6080e7          	jalr	982(ra) # 1c6e <exit>
    18a0:	fff90693          	addi	a3,s2,-1
    18a4:	f44d                	bnez	s0,184e <memcpy+0x1a>
    18a6:	a011                	j	18aa <memcpy+0x76>
    18a8:	de55                	beqz	a2,1864 <memcpy+0x30>
    18aa:	04100693          	li	a3,65
    18ae:	00002637          	lui	a2,0x2
    18b2:	20060613          	addi	a2,a2,512 # 2200 <crctab+0x400>
    18b6:	000025b7          	lui	a1,0x2
    18ba:	2e858593          	addi	a1,a1,744 # 22e8 <crctab+0x4e8>
    18be:	4509                	li	a0,2
    18c0:	00000097          	auipc	ra,0x0
    18c4:	aca080e7          	jalr	-1334(ra) # 138a <fprintf>
    18c8:	650d                	lui	a0,0x3
    18ca:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18ce:	00000097          	auipc	ra,0x0
    18d2:	3a0080e7          	jalr	928(ra) # 1c6e <exit>
    18d6:	fff90693          	addi	a3,s2,-1
    18da:	4401                	li	s0,0
    18dc:	bf8d                	j	184e <memcpy+0x1a>

00000000000018de <itoa>:
    18de:	1101                	addi	sp,sp,-32
    18e0:	ec06                	sd	ra,24(sp)
    18e2:	e822                	sd	s0,16(sp)
    18e4:	e426                	sd	s1,8(sp)
    18e6:	842a                	mv	s0,a0
    18e8:	41f5d71b          	sraiw	a4,a1,0x1f
    18ec:	00e5c7b3          	xor	a5,a1,a4
    18f0:	9f99                	subw	a5,a5,a4
    18f2:	84aa                	mv	s1,a0
    18f4:	862a                	mv	a2,a0
    18f6:	4681                	li	a3,0
    18f8:	4529                	li	a0,10
    18fa:	4825                	li	a6,9
    18fc:	88b6                	mv	a7,a3
    18fe:	2685                	addiw	a3,a3,1
    1900:	02a7e73b          	remw	a4,a5,a0
    1904:	0307071b          	addiw	a4,a4,48
    1908:	00e60023          	sb	a4,0(a2)
    190c:	873e                	mv	a4,a5
    190e:	02a7c7bb          	divw	a5,a5,a0
    1912:	0605                	addi	a2,a2,1
    1914:	fee844e3          	blt	a6,a4,18fc <itoa+0x1e>
    1918:	0405c863          	bltz	a1,1968 <itoa+0x8a>
    191c:	96a2                	add	a3,a3,s0
    191e:	00068023          	sb	zero,0(a3)
    1922:	8522                	mv	a0,s0
    1924:	00000097          	auipc	ra,0x0
    1928:	e14080e7          	jalr	-492(ra) # 1738 <strlen>
    192c:	fff5071b          	addiw	a4,a0,-1
    1930:	02e05763          	blez	a4,195e <itoa+0x80>
    1934:	9722                	add	a4,a4,s0
    1936:	4681                	li	a3,0
    1938:	0004c783          	lbu	a5,0(s1)
    193c:	00074603          	lbu	a2,0(a4)
    1940:	00c48023          	sb	a2,0(s1)
    1944:	00f70023          	sb	a5,0(a4)
    1948:	0016879b          	addiw	a5,a3,1
    194c:	0007869b          	sext.w	a3,a5
    1950:	0485                	addi	s1,s1,1
    1952:	177d                	addi	a4,a4,-1
    1954:	fff7c793          	not	a5,a5
    1958:	9fa9                	addw	a5,a5,a0
    195a:	fcf6cfe3          	blt	a3,a5,1938 <itoa+0x5a>
    195e:	60e2                	ld	ra,24(sp)
    1960:	6442                	ld	s0,16(sp)
    1962:	64a2                	ld	s1,8(sp)
    1964:	6105                	addi	sp,sp,32
    1966:	8082                	ret
    1968:	96a2                	add	a3,a3,s0
    196a:	02d00793          	li	a5,45
    196e:	00f68023          	sb	a5,0(a3)
    1972:	0028869b          	addiw	a3,a7,2
    1976:	b75d                	j	191c <itoa+0x3e>

0000000000001978 <atoi>:
    1978:	00054783          	lbu	a5,0(a0)
    197c:	02000713          	li	a4,32
    1980:	00e79763          	bne	a5,a4,198e <atoi+0x16>
    1984:	0505                	addi	a0,a0,1
    1986:	00054783          	lbu	a5,0(a0)
    198a:	fee78de3          	beq	a5,a4,1984 <atoi+0xc>
    198e:	02b00713          	li	a4,43
    1992:	04e78663          	beq	a5,a4,19de <atoi+0x66>
    1996:	02d00713          	li	a4,45
    199a:	4805                	li	a6,1
    199c:	04e78463          	beq	a5,a4,19e4 <atoi+0x6c>
    19a0:	00054683          	lbu	a3,0(a0)
    19a4:	fd06879b          	addiw	a5,a3,-48
    19a8:	0ff7f793          	andi	a5,a5,255
    19ac:	4725                	li	a4,9
    19ae:	02f76e63          	bltu	a4,a5,19ea <atoi+0x72>
    19b2:	4601                	li	a2,0
    19b4:	45a5                	li	a1,9
    19b6:	0505                	addi	a0,a0,1
    19b8:	0026179b          	slliw	a5,a2,0x2
    19bc:	9fb1                	addw	a5,a5,a2
    19be:	0017979b          	slliw	a5,a5,0x1
    19c2:	9fb5                	addw	a5,a5,a3
    19c4:	fd07861b          	addiw	a2,a5,-48
    19c8:	00054683          	lbu	a3,0(a0)
    19cc:	fd06871b          	addiw	a4,a3,-48
    19d0:	0ff77713          	andi	a4,a4,255
    19d4:	fee5f1e3          	bgeu	a1,a4,19b6 <atoi+0x3e>
    19d8:	02c8053b          	mulw	a0,a6,a2
    19dc:	8082                	ret
    19de:	0505                	addi	a0,a0,1
    19e0:	4805                	li	a6,1
    19e2:	bf7d                	j	19a0 <atoi+0x28>
    19e4:	0505                	addi	a0,a0,1
    19e6:	587d                	li	a6,-1
    19e8:	bf65                	j	19a0 <atoi+0x28>
    19ea:	4601                	li	a2,0
    19ec:	b7f5                	j	19d8 <atoi+0x60>

00000000000019ee <check_file_handle>:
    19ee:	d8010113          	addi	sp,sp,-640
    19f2:	26113c23          	sd	ra,632(sp)
    19f6:	26813823          	sd	s0,624(sp)
    19fa:	26913423          	sd	s1,616(sp)
    19fe:	27213023          	sd	s2,608(sp)
    1a02:	25313c23          	sd	s3,600(sp)
    1a06:	25413823          	sd	s4,592(sp)
    1a0a:	25513423          	sd	s5,584(sp)
    1a0e:	25613023          	sd	s6,576(sp)
    1a12:	23713c23          	sd	s7,568(sp)
    1a16:	23813823          	sd	s8,560(sp)
    1a1a:	23913423          	sd	s9,552(sp)
    1a1e:	23a13023          	sd	s10,544(sp)
    1a22:	21b13c23          	sd	s11,536(sp)
    1a26:	8baa                	mv	s7,a0
    1a28:	8a2e                	mv	s4,a1
    1a2a:	8c32                	mv	s8,a2
    1a2c:	89b6                	mv	s3,a3
    1a2e:	040c                	addi	a1,sp,512
    1a30:	00000097          	auipc	ra,0x0
    1a34:	28e080e7          	jalr	654(ra) # 1cbe <fstat>
    1a38:	20813603          	ld	a2,520(sp)
    1a3c:	03361163          	bne	a2,s3,1a5e <check_file_handle+0x70>
    1a40:	06098763          	beqz	s3,1aae <check_file_handle+0xc0>
    1a44:	4901                	li	s2,0
    1a46:	20000a93          	li	s5,512
    1a4a:	00002cb7          	lui	s9,0x2
    1a4e:	00002db7          	lui	s11,0x2
    1a52:	6b0d                	lui	s6,0x3
    1a54:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a58:	00002d37          	lui	s10,0x2
    1a5c:	aa39                	j	1b7a <check_file_handle+0x18c>
    1a5e:	86ce                	mv	a3,s3
    1a60:	85d2                	mv	a1,s4
    1a62:	00002537          	lui	a0,0x2
    1a66:	33050513          	addi	a0,a0,816 # 2330 <crctab+0x530>
    1a6a:	00000097          	auipc	ra,0x0
    1a6e:	942080e7          	jalr	-1726(ra) # 13ac <printf>
    1a72:	fc0999e3          	bnez	s3,1a44 <check_file_handle+0x56>
    1a76:	20813683          	ld	a3,520(sp)
    1a7a:	03368a63          	beq	a3,s3,1aae <check_file_handle+0xc0>
    1a7e:	0a600813          	li	a6,166
    1a82:	000027b7          	lui	a5,0x2
    1a86:	20078793          	addi	a5,a5,512 # 2200 <crctab+0x400>
    1a8a:	874e                	mv	a4,s3
    1a8c:	8652                	mv	a2,s4
    1a8e:	000025b7          	lui	a1,0x2
    1a92:	40058593          	addi	a1,a1,1024 # 2400 <crctab+0x600>
    1a96:	4509                	li	a0,2
    1a98:	00000097          	auipc	ra,0x0
    1a9c:	8f2080e7          	jalr	-1806(ra) # 138a <fprintf>
    1aa0:	650d                	lui	a0,0x3
    1aa2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1aa6:	00000097          	auipc	ra,0x0
    1aaa:	1c8080e7          	jalr	456(ra) # 1c6e <exit>
    1aae:	85d2                	mv	a1,s4
    1ab0:	00002537          	lui	a0,0x2
    1ab4:	44850513          	addi	a0,a0,1096 # 2448 <crctab+0x648>
    1ab8:	00000097          	auipc	ra,0x0
    1abc:	8f4080e7          	jalr	-1804(ra) # 13ac <printf>
    1ac0:	27813083          	ld	ra,632(sp)
    1ac4:	27013403          	ld	s0,624(sp)
    1ac8:	26813483          	ld	s1,616(sp)
    1acc:	26013903          	ld	s2,608(sp)
    1ad0:	25813983          	ld	s3,600(sp)
    1ad4:	25013a03          	ld	s4,592(sp)
    1ad8:	24813a83          	ld	s5,584(sp)
    1adc:	24013b03          	ld	s6,576(sp)
    1ae0:	23813b83          	ld	s7,568(sp)
    1ae4:	23013c03          	ld	s8,560(sp)
    1ae8:	22813c83          	ld	s9,552(sp)
    1aec:	22013d03          	ld	s10,544(sp)
    1af0:	21813d83          	ld	s11,536(sp)
    1af4:	28010113          	addi	sp,sp,640
    1af8:	8082                	ret
    1afa:	09d00893          	li	a7,157
    1afe:	200c8813          	addi	a6,s9,512 # 2200 <crctab+0x400>
    1b02:	87aa                	mv	a5,a0
    1b04:	8752                	mv	a4,s4
    1b06:	86ca                	mv	a3,s2
    1b08:	8622                	mv	a2,s0
    1b0a:	360d8593          	addi	a1,s11,864 # 2360 <crctab+0x560>
    1b0e:	4509                	li	a0,2
    1b10:	00000097          	auipc	ra,0x0
    1b14:	87a080e7          	jalr	-1926(ra) # 138a <fprintf>
    1b18:	855a                	mv	a0,s6
    1b1a:	00000097          	auipc	ra,0x0
    1b1e:	154080e7          	jalr	340(ra) # 1c6e <exit>
    1b22:	a89d                	j	1b98 <check_file_handle+0x1aa>
    1b24:	00160593          	addi	a1,a2,1
    1b28:	0285f163          	bgeu	a1,s0,1b4a <check_file_handle+0x15c>
    1b2c:	00c10733          	add	a4,sp,a2
    1b30:	00b487b3          	add	a5,s1,a1
    1b34:	00174683          	lbu	a3,1(a4)
    1b38:	0007c783          	lbu	a5,0(a5)
    1b3c:	00f68763          	beq	a3,a5,1b4a <check_file_handle+0x15c>
    1b40:	0585                	addi	a1,a1,1
    1b42:	0705                	addi	a4,a4,1
    1b44:	feb416e3          	bne	s0,a1,1b30 <check_file_handle+0x142>
    1b48:	85a2                	mv	a1,s0
    1b4a:	08100813          	li	a6,129
    1b4e:	200c8793          	addi	a5,s9,512
    1b52:	8752                	mv	a4,s4
    1b54:	012606b3          	add	a3,a2,s2
    1b58:	40c58633          	sub	a2,a1,a2
    1b5c:	3a8d0593          	addi	a1,s10,936 # 23a8 <crctab+0x5a8>
    1b60:	4509                	li	a0,2
    1b62:	00000097          	auipc	ra,0x0
    1b66:	828080e7          	jalr	-2008(ra) # 138a <fprintf>
    1b6a:	855a                	mv	a0,s6
    1b6c:	00000097          	auipc	ra,0x0
    1b70:	102080e7          	jalr	258(ra) # 1c6e <exit>
    1b74:	9922                	add	s2,s2,s0
    1b76:	f13970e3          	bgeu	s2,s3,1a76 <check_file_handle+0x88>
    1b7a:	41298433          	sub	s0,s3,s2
    1b7e:	008af363          	bgeu	s5,s0,1b84 <check_file_handle+0x196>
    1b82:	8456                	mv	s0,s5
    1b84:	0004061b          	sext.w	a2,s0
    1b88:	858a                	mv	a1,sp
    1b8a:	855e                	mv	a0,s7
    1b8c:	00000097          	auipc	ra,0x0
    1b90:	10a080e7          	jalr	266(ra) # 1c96 <read>
    1b94:	f68513e3          	bne	a0,s0,1afa <check_file_handle+0x10c>
    1b98:	012c04b3          	add	s1,s8,s2
    1b9c:	8622                	mv	a2,s0
    1b9e:	85a6                	mv	a1,s1
    1ba0:	850a                	mv	a0,sp
    1ba2:	00000097          	auipc	ra,0x0
    1ba6:	bce080e7          	jalr	-1074(ra) # 1770 <memcmp>
    1baa:	d569                	beqz	a0,1b74 <check_file_handle+0x186>
    1bac:	03298163          	beq	s3,s2,1bce <check_file_handle+0x1e0>
    1bb0:	870a                	mv	a4,sp
    1bb2:	4601                	li	a2,0
    1bb4:	00c487b3          	add	a5,s1,a2
    1bb8:	00074683          	lbu	a3,0(a4)
    1bbc:	0007c783          	lbu	a5,0(a5)
    1bc0:	f6f692e3          	bne	a3,a5,1b24 <check_file_handle+0x136>
    1bc4:	0605                	addi	a2,a2,1
    1bc6:	0705                	addi	a4,a4,1
    1bc8:	fe8666e3          	bltu	a2,s0,1bb4 <check_file_handle+0x1c6>
    1bcc:	bfa1                	j	1b24 <check_file_handle+0x136>
    1bce:	4601                	li	a2,0
    1bd0:	4585                	li	a1,1
    1bd2:	bfa5                	j	1b4a <check_file_handle+0x15c>

0000000000001bd4 <check_file>:
    1bd4:	7179                	addi	sp,sp,-48
    1bd6:	f406                	sd	ra,40(sp)
    1bd8:	f022                	sd	s0,32(sp)
    1bda:	ec26                	sd	s1,24(sp)
    1bdc:	e84a                	sd	s2,16(sp)
    1bde:	e44e                	sd	s3,8(sp)
    1be0:	84aa                	mv	s1,a0
    1be2:	892e                	mv	s2,a1
    1be4:	89b2                	mv	s3,a2
    1be6:	4581                	li	a1,0
    1be8:	00000097          	auipc	ra,0x0
    1bec:	0a6080e7          	jalr	166(ra) # 1c8e <open>
    1bf0:	842a                	mv	s0,a0
    1bf2:	4789                	li	a5,2
    1bf4:	02a7df63          	bge	a5,a0,1c32 <check_file+0x5e>
    1bf8:	86ce                	mv	a3,s3
    1bfa:	864a                	mv	a2,s2
    1bfc:	85a6                	mv	a1,s1
    1bfe:	8522                	mv	a0,s0
    1c00:	00000097          	auipc	ra,0x0
    1c04:	dee080e7          	jalr	-530(ra) # 19ee <check_file_handle>
    1c08:	85a6                	mv	a1,s1
    1c0a:	00002537          	lui	a0,0x2
    1c0e:	4d050513          	addi	a0,a0,1232 # 24d0 <crctab+0x6d0>
    1c12:	fffff097          	auipc	ra,0xfffff
    1c16:	79a080e7          	jalr	1946(ra) # 13ac <printf>
    1c1a:	8522                	mv	a0,s0
    1c1c:	00000097          	auipc	ra,0x0
    1c20:	09a080e7          	jalr	154(ra) # 1cb6 <close>
    1c24:	70a2                	ld	ra,40(sp)
    1c26:	7402                	ld	s0,32(sp)
    1c28:	64e2                	ld	s1,24(sp)
    1c2a:	6942                	ld	s2,16(sp)
    1c2c:	69a2                	ld	s3,8(sp)
    1c2e:	6145                	addi	sp,sp,48
    1c30:	8082                	ret
    1c32:	0ae00713          	li	a4,174
    1c36:	000026b7          	lui	a3,0x2
    1c3a:	20068693          	addi	a3,a3,512 # 2200 <crctab+0x400>
    1c3e:	8626                	mv	a2,s1
    1c40:	000025b7          	lui	a1,0x2
    1c44:	46858593          	addi	a1,a1,1128 # 2468 <crctab+0x668>
    1c48:	4509                	li	a0,2
    1c4a:	fffff097          	auipc	ra,0xfffff
    1c4e:	740080e7          	jalr	1856(ra) # 138a <fprintf>
    1c52:	650d                	lui	a0,0x3
    1c54:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c58:	00000097          	auipc	ra,0x0
    1c5c:	016080e7          	jalr	22(ra) # 1c6e <exit>
    1c60:	bf61                	j	1bf8 <check_file+0x24>

0000000000001c62 <r_sp>:
    1c62:	850a                	mv	a0,sp
    1c64:	8082                	ret

0000000000001c66 <halt>:
    1c66:	4885                	li	a7,1
    1c68:	00000073          	ecall
    1c6c:	8082                	ret

0000000000001c6e <exit>:
    1c6e:	4889                	li	a7,2
    1c70:	00000073          	ecall
    1c74:	8082                	ret

0000000000001c76 <exec>:
    1c76:	488d                	li	a7,3
    1c78:	00000073          	ecall
    1c7c:	8082                	ret

0000000000001c7e <wait>:
    1c7e:	4891                	li	a7,4
    1c80:	00000073          	ecall
    1c84:	8082                	ret

0000000000001c86 <remove>:
    1c86:	4895                	li	a7,5
    1c88:	00000073          	ecall
    1c8c:	8082                	ret

0000000000001c8e <open>:
    1c8e:	4899                	li	a7,6
    1c90:	00000073          	ecall
    1c94:	8082                	ret

0000000000001c96 <read>:
    1c96:	489d                	li	a7,7
    1c98:	00000073          	ecall
    1c9c:	8082                	ret

0000000000001c9e <write>:
    1c9e:	48a1                	li	a7,8
    1ca0:	00000073          	ecall
    1ca4:	8082                	ret

0000000000001ca6 <seek>:
    1ca6:	48a5                	li	a7,9
    1ca8:	00000073          	ecall
    1cac:	8082                	ret

0000000000001cae <tell>:
    1cae:	48a9                	li	a7,10
    1cb0:	00000073          	ecall
    1cb4:	8082                	ret

0000000000001cb6 <close>:
    1cb6:	48ad                	li	a7,11
    1cb8:	00000073          	ecall
    1cbc:	8082                	ret

0000000000001cbe <fstat>:
    1cbe:	48b1                	li	a7,12
    1cc0:	00000073          	ecall
    1cc4:	8082                	ret

0000000000001cc6 <mmap>:
    1cc6:	48b5                	li	a7,13
    1cc8:	00000073          	ecall
    1ccc:	8082                	ret

0000000000001cce <munmap>:
    1cce:	48b9                	li	a7,14
    1cd0:	00000073          	ecall
    1cd4:	8082                	ret

0000000000001cd6 <chdir>:
    1cd6:	48bd                	li	a7,15
    1cd8:	00000073          	ecall
    1cdc:	8082                	ret

0000000000001cde <mkdir>:
    1cde:	48c1                	li	a7,16
    1ce0:	00000073          	ecall
    1ce4:	8082                	ret
