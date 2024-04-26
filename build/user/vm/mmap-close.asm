
build/user/vm/mmap-close:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	e426                	sd	s1,8(sp)
    1008:	4581                	li	a1,0
    100a:	00002537          	lui	a0,0x2
    100e:	cf050513          	addi	a0,a0,-784 # 1cf0 <mkdir+0x14>
    1012:	00001097          	auipc	ra,0x1
    1016:	c7a080e7          	jalr	-902(ra) # 1c8c <open>
    101a:	842a                	mv	s0,a0
    101c:	4785                	li	a5,1
    101e:	04a7de63          	bge	a5,a0,107a <main+0x7a>
    1022:	100005b7          	lui	a1,0x10000
    1026:	8522                	mv	a0,s0
    1028:	00001097          	auipc	ra,0x1
    102c:	c9c080e7          	jalr	-868(ra) # 1cc4 <mmap>
    1030:	84aa                	mv	s1,a0
    1032:	57fd                	li	a5,-1
    1034:	06f50963          	beq	a0,a5,10a6 <main+0xa6>
    1038:	8522                	mv	a0,s0
    103a:	00001097          	auipc	ra,0x1
    103e:	c7a080e7          	jalr	-902(ra) # 1cb4 <close>
    1042:	00003437          	lui	s0,0x3
    1046:	00040513          	mv	a0,s0
    104a:	00000097          	auipc	ra,0x0
    104e:	6ec080e7          	jalr	1772(ra) # 1736 <strlen>
    1052:	862a                	mv	a2,a0
    1054:	00040593          	mv	a1,s0
    1058:	10000537          	lui	a0,0x10000
    105c:	00000097          	auipc	ra,0x0
    1060:	712080e7          	jalr	1810(ra) # 176e <memcmp>
    1064:	e53d                	bnez	a0,10d2 <main+0xd2>
    1066:	8526                	mv	a0,s1
    1068:	00001097          	auipc	ra,0x1
    106c:	c64080e7          	jalr	-924(ra) # 1ccc <munmap>
    1070:	60e2                	ld	ra,24(sp)
    1072:	6442                	ld	s0,16(sp)
    1074:	64a2                	ld	s1,8(sp)
    1076:	6105                	addi	sp,sp,32
    1078:	8082                	ret
    107a:	46b5                	li	a3,13
    107c:	00002637          	lui	a2,0x2
    1080:	d0060613          	addi	a2,a2,-768 # 1d00 <mkdir+0x24>
    1084:	000025b7          	lui	a1,0x2
    1088:	d1858593          	addi	a1,a1,-744 # 1d18 <mkdir+0x3c>
    108c:	4509                	li	a0,2
    108e:	00000097          	auipc	ra,0x0
    1092:	2fa080e7          	jalr	762(ra) # 1388 <fprintf>
    1096:	650d                	lui	a0,0x3
    1098:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    109c:	00001097          	auipc	ra,0x1
    10a0:	bd0080e7          	jalr	-1072(ra) # 1c6c <exit>
    10a4:	bfbd                	j	1022 <main+0x22>
    10a6:	46b9                	li	a3,14
    10a8:	00002637          	lui	a2,0x2
    10ac:	d0060613          	addi	a2,a2,-768 # 1d00 <mkdir+0x24>
    10b0:	000025b7          	lui	a1,0x2
    10b4:	d7858593          	addi	a1,a1,-648 # 1d78 <mkdir+0x9c>
    10b8:	4509                	li	a0,2
    10ba:	00000097          	auipc	ra,0x0
    10be:	2ce080e7          	jalr	718(ra) # 1388 <fprintf>
    10c2:	650d                	lui	a0,0x3
    10c4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10c8:	00001097          	auipc	ra,0x1
    10cc:	ba4080e7          	jalr	-1116(ra) # 1c6c <exit>
    10d0:	b7a5                	j	1038 <main+0x38>
    10d2:	46c9                	li	a3,18
    10d4:	00002637          	lui	a2,0x2
    10d8:	d0060613          	addi	a2,a2,-768 # 1d00 <mkdir+0x24>
    10dc:	000025b7          	lui	a1,0x2
    10e0:	de058593          	addi	a1,a1,-544 # 1de0 <mkdir+0x104>
    10e4:	4509                	li	a0,2
    10e6:	00000097          	auipc	ra,0x0
    10ea:	2a2080e7          	jalr	674(ra) # 1388 <fprintf>
    10ee:	650d                	lui	a0,0x3
    10f0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10f4:	00001097          	auipc	ra,0x1
    10f8:	b78080e7          	jalr	-1160(ra) # 1c6c <exit>
    10fc:	b7ad                	j	1066 <main+0x66>

00000000000010fe <putc>:
    10fe:	1101                	addi	sp,sp,-32
    1100:	ec06                	sd	ra,24(sp)
    1102:	00b107a3          	sb	a1,15(sp)
    1106:	4605                	li	a2,1
    1108:	00f10593          	addi	a1,sp,15
    110c:	00001097          	auipc	ra,0x1
    1110:	b90080e7          	jalr	-1136(ra) # 1c9c <write>
    1114:	60e2                	ld	ra,24(sp)
    1116:	6105                	addi	sp,sp,32
    1118:	8082                	ret

000000000000111a <printint>:
    111a:	7179                	addi	sp,sp,-48
    111c:	f406                	sd	ra,40(sp)
    111e:	f022                	sd	s0,32(sp)
    1120:	ec26                	sd	s1,24(sp)
    1122:	e84a                	sd	s2,16(sp)
    1124:	84aa                	mv	s1,a0
    1126:	c299                	beqz	a3,112c <printint+0x12>
    1128:	0805c363          	bltz	a1,11ae <printint+0x94>
    112c:	2581                	sext.w	a1,a1
    112e:	4881                	li	a7,0
    1130:	868a                	mv	a3,sp
    1132:	4701                	li	a4,0
    1134:	2601                	sext.w	a2,a2
    1136:	00002537          	lui	a0,0x2
    113a:	e2850513          	addi	a0,a0,-472 # 1e28 <digits>
    113e:	883a                	mv	a6,a4
    1140:	2705                	addiw	a4,a4,1
    1142:	02c5f7bb          	remuw	a5,a1,a2
    1146:	1782                	slli	a5,a5,0x20
    1148:	9381                	srli	a5,a5,0x20
    114a:	97aa                	add	a5,a5,a0
    114c:	0007c783          	lbu	a5,0(a5)
    1150:	00f68023          	sb	a5,0(a3)
    1154:	0005879b          	sext.w	a5,a1
    1158:	02c5d5bb          	divuw	a1,a1,a2
    115c:	0685                	addi	a3,a3,1
    115e:	fec7f0e3          	bgeu	a5,a2,113e <printint+0x24>
    1162:	00088a63          	beqz	a7,1176 <printint+0x5c>
    1166:	081c                	addi	a5,sp,16
    1168:	973e                	add	a4,a4,a5
    116a:	02d00793          	li	a5,45
    116e:	fef70823          	sb	a5,-16(a4)
    1172:	0028071b          	addiw	a4,a6,2
    1176:	02e05663          	blez	a4,11a2 <printint+0x88>
    117a:	00e10433          	add	s0,sp,a4
    117e:	fff10913          	addi	s2,sp,-1
    1182:	993a                	add	s2,s2,a4
    1184:	377d                	addiw	a4,a4,-1
    1186:	1702                	slli	a4,a4,0x20
    1188:	9301                	srli	a4,a4,0x20
    118a:	40e90933          	sub	s2,s2,a4
    118e:	fff44583          	lbu	a1,-1(s0) # 2fff <crctab+0x11bf>
    1192:	8526                	mv	a0,s1
    1194:	00000097          	auipc	ra,0x0
    1198:	f6a080e7          	jalr	-150(ra) # 10fe <putc>
    119c:	147d                	addi	s0,s0,-1
    119e:	ff2418e3          	bne	s0,s2,118e <printint+0x74>
    11a2:	70a2                	ld	ra,40(sp)
    11a4:	7402                	ld	s0,32(sp)
    11a6:	64e2                	ld	s1,24(sp)
    11a8:	6942                	ld	s2,16(sp)
    11aa:	6145                	addi	sp,sp,48
    11ac:	8082                	ret
    11ae:	40b005bb          	negw	a1,a1
    11b2:	4885                	li	a7,1
    11b4:	bfb5                	j	1130 <printint+0x16>

00000000000011b6 <vprintf>:
    11b6:	7159                	addi	sp,sp,-112
    11b8:	f486                	sd	ra,104(sp)
    11ba:	f0a2                	sd	s0,96(sp)
    11bc:	eca6                	sd	s1,88(sp)
    11be:	e8ca                	sd	s2,80(sp)
    11c0:	e4ce                	sd	s3,72(sp)
    11c2:	e0d2                	sd	s4,64(sp)
    11c4:	fc56                	sd	s5,56(sp)
    11c6:	f85a                	sd	s6,48(sp)
    11c8:	f45e                	sd	s7,40(sp)
    11ca:	f062                	sd	s8,32(sp)
    11cc:	ec66                	sd	s9,24(sp)
    11ce:	e86a                	sd	s10,16(sp)
    11d0:	e46e                	sd	s11,8(sp)
    11d2:	0005c483          	lbu	s1,0(a1)
    11d6:	18048a63          	beqz	s1,136a <vprintf+0x1b4>
    11da:	8a2a                	mv	s4,a0
    11dc:	8ab2                	mv	s5,a2
    11de:	00158413          	addi	s0,a1,1
    11e2:	4901                	li	s2,0
    11e4:	02500993          	li	s3,37
    11e8:	06400b93          	li	s7,100
    11ec:	06c00c13          	li	s8,108
    11f0:	07800c93          	li	s9,120
    11f4:	07000d13          	li	s10,112
    11f8:	00002db7          	lui	s11,0x2
    11fc:	00002b37          	lui	s6,0x2
    1200:	e28b0b13          	addi	s6,s6,-472 # 1e28 <digits>
    1204:	a839                	j	1222 <vprintf+0x6c>
    1206:	85a6                	mv	a1,s1
    1208:	8552                	mv	a0,s4
    120a:	00000097          	auipc	ra,0x0
    120e:	ef4080e7          	jalr	-268(ra) # 10fe <putc>
    1212:	a019                	j	1218 <vprintf+0x62>
    1214:	01390f63          	beq	s2,s3,1232 <vprintf+0x7c>
    1218:	0405                	addi	s0,s0,1
    121a:	fff44483          	lbu	s1,-1(s0)
    121e:	14048663          	beqz	s1,136a <vprintf+0x1b4>
    1222:	0004879b          	sext.w	a5,s1
    1226:	fe0917e3          	bnez	s2,1214 <vprintf+0x5e>
    122a:	fd379ee3          	bne	a5,s3,1206 <vprintf+0x50>
    122e:	893e                	mv	s2,a5
    1230:	b7e5                	j	1218 <vprintf+0x62>
    1232:	05778063          	beq	a5,s7,1272 <vprintf+0xbc>
    1236:	05878c63          	beq	a5,s8,128e <vprintf+0xd8>
    123a:	07978863          	beq	a5,s9,12aa <vprintf+0xf4>
    123e:	09a78463          	beq	a5,s10,12c6 <vprintf+0x110>
    1242:	07300713          	li	a4,115
    1246:	0ce78263          	beq	a5,a4,130a <vprintf+0x154>
    124a:	06300713          	li	a4,99
    124e:	0ee78763          	beq	a5,a4,133c <vprintf+0x186>
    1252:	11378163          	beq	a5,s3,1354 <vprintf+0x19e>
    1256:	85ce                	mv	a1,s3
    1258:	8552                	mv	a0,s4
    125a:	00000097          	auipc	ra,0x0
    125e:	ea4080e7          	jalr	-348(ra) # 10fe <putc>
    1262:	85a6                	mv	a1,s1
    1264:	8552                	mv	a0,s4
    1266:	00000097          	auipc	ra,0x0
    126a:	e98080e7          	jalr	-360(ra) # 10fe <putc>
    126e:	4901                	li	s2,0
    1270:	b765                	j	1218 <vprintf+0x62>
    1272:	008a8493          	addi	s1,s5,8
    1276:	4685                	li	a3,1
    1278:	4629                	li	a2,10
    127a:	000aa583          	lw	a1,0(s5)
    127e:	8552                	mv	a0,s4
    1280:	00000097          	auipc	ra,0x0
    1284:	e9a080e7          	jalr	-358(ra) # 111a <printint>
    1288:	8aa6                	mv	s5,s1
    128a:	4901                	li	s2,0
    128c:	b771                	j	1218 <vprintf+0x62>
    128e:	008a8493          	addi	s1,s5,8
    1292:	4681                	li	a3,0
    1294:	4629                	li	a2,10
    1296:	000aa583          	lw	a1,0(s5)
    129a:	8552                	mv	a0,s4
    129c:	00000097          	auipc	ra,0x0
    12a0:	e7e080e7          	jalr	-386(ra) # 111a <printint>
    12a4:	8aa6                	mv	s5,s1
    12a6:	4901                	li	s2,0
    12a8:	bf85                	j	1218 <vprintf+0x62>
    12aa:	008a8493          	addi	s1,s5,8
    12ae:	4681                	li	a3,0
    12b0:	4641                	li	a2,16
    12b2:	000aa583          	lw	a1,0(s5)
    12b6:	8552                	mv	a0,s4
    12b8:	00000097          	auipc	ra,0x0
    12bc:	e62080e7          	jalr	-414(ra) # 111a <printint>
    12c0:	8aa6                	mv	s5,s1
    12c2:	4901                	li	s2,0
    12c4:	bf91                	j	1218 <vprintf+0x62>
    12c6:	008a8913          	addi	s2,s5,8
    12ca:	000aba83          	ld	s5,0(s5)
    12ce:	03000593          	li	a1,48
    12d2:	8552                	mv	a0,s4
    12d4:	00000097          	auipc	ra,0x0
    12d8:	e2a080e7          	jalr	-470(ra) # 10fe <putc>
    12dc:	85e6                	mv	a1,s9
    12de:	8552                	mv	a0,s4
    12e0:	00000097          	auipc	ra,0x0
    12e4:	e1e080e7          	jalr	-482(ra) # 10fe <putc>
    12e8:	44c1                	li	s1,16
    12ea:	03cad793          	srli	a5,s5,0x3c
    12ee:	97da                	add	a5,a5,s6
    12f0:	0007c583          	lbu	a1,0(a5)
    12f4:	8552                	mv	a0,s4
    12f6:	00000097          	auipc	ra,0x0
    12fa:	e08080e7          	jalr	-504(ra) # 10fe <putc>
    12fe:	0a92                	slli	s5,s5,0x4
    1300:	34fd                	addiw	s1,s1,-1
    1302:	f4e5                	bnez	s1,12ea <vprintf+0x134>
    1304:	8aca                	mv	s5,s2
    1306:	4901                	li	s2,0
    1308:	bf01                	j	1218 <vprintf+0x62>
    130a:	008a8913          	addi	s2,s5,8
    130e:	000ab483          	ld	s1,0(s5)
    1312:	c085                	beqz	s1,1332 <vprintf+0x17c>
    1314:	0004c583          	lbu	a1,0(s1)
    1318:	c5b1                	beqz	a1,1364 <vprintf+0x1ae>
    131a:	8552                	mv	a0,s4
    131c:	00000097          	auipc	ra,0x0
    1320:	de2080e7          	jalr	-542(ra) # 10fe <putc>
    1324:	0485                	addi	s1,s1,1
    1326:	0004c583          	lbu	a1,0(s1)
    132a:	f9e5                	bnez	a1,131a <vprintf+0x164>
    132c:	8aca                	mv	s5,s2
    132e:	4901                	li	s2,0
    1330:	b5e5                	j	1218 <vprintf+0x62>
    1332:	e20d8493          	addi	s1,s11,-480 # 1e20 <mkdir+0x144>
    1336:	02800593          	li	a1,40
    133a:	b7c5                	j	131a <vprintf+0x164>
    133c:	008a8493          	addi	s1,s5,8
    1340:	000ac583          	lbu	a1,0(s5)
    1344:	8552                	mv	a0,s4
    1346:	00000097          	auipc	ra,0x0
    134a:	db8080e7          	jalr	-584(ra) # 10fe <putc>
    134e:	8aa6                	mv	s5,s1
    1350:	4901                	li	s2,0
    1352:	b5d9                	j	1218 <vprintf+0x62>
    1354:	85ce                	mv	a1,s3
    1356:	8552                	mv	a0,s4
    1358:	00000097          	auipc	ra,0x0
    135c:	da6080e7          	jalr	-602(ra) # 10fe <putc>
    1360:	4901                	li	s2,0
    1362:	bd5d                	j	1218 <vprintf+0x62>
    1364:	8aca                	mv	s5,s2
    1366:	4901                	li	s2,0
    1368:	bd45                	j	1218 <vprintf+0x62>
    136a:	70a6                	ld	ra,104(sp)
    136c:	7406                	ld	s0,96(sp)
    136e:	64e6                	ld	s1,88(sp)
    1370:	6946                	ld	s2,80(sp)
    1372:	69a6                	ld	s3,72(sp)
    1374:	6a06                	ld	s4,64(sp)
    1376:	7ae2                	ld	s5,56(sp)
    1378:	7b42                	ld	s6,48(sp)
    137a:	7ba2                	ld	s7,40(sp)
    137c:	7c02                	ld	s8,32(sp)
    137e:	6ce2                	ld	s9,24(sp)
    1380:	6d42                	ld	s10,16(sp)
    1382:	6da2                	ld	s11,8(sp)
    1384:	6165                	addi	sp,sp,112
    1386:	8082                	ret

0000000000001388 <fprintf>:
    1388:	715d                	addi	sp,sp,-80
    138a:	ec06                	sd	ra,24(sp)
    138c:	f032                	sd	a2,32(sp)
    138e:	f436                	sd	a3,40(sp)
    1390:	f83a                	sd	a4,48(sp)
    1392:	fc3e                	sd	a5,56(sp)
    1394:	e0c2                	sd	a6,64(sp)
    1396:	e4c6                	sd	a7,72(sp)
    1398:	1010                	addi	a2,sp,32
    139a:	e432                	sd	a2,8(sp)
    139c:	00000097          	auipc	ra,0x0
    13a0:	e1a080e7          	jalr	-486(ra) # 11b6 <vprintf>
    13a4:	60e2                	ld	ra,24(sp)
    13a6:	6161                	addi	sp,sp,80
    13a8:	8082                	ret

00000000000013aa <printf>:
    13aa:	711d                	addi	sp,sp,-96
    13ac:	ec06                	sd	ra,24(sp)
    13ae:	f42e                	sd	a1,40(sp)
    13b0:	f832                	sd	a2,48(sp)
    13b2:	fc36                	sd	a3,56(sp)
    13b4:	e0ba                	sd	a4,64(sp)
    13b6:	e4be                	sd	a5,72(sp)
    13b8:	e8c2                	sd	a6,80(sp)
    13ba:	ecc6                	sd	a7,88(sp)
    13bc:	1030                	addi	a2,sp,40
    13be:	e432                	sd	a2,8(sp)
    13c0:	85aa                	mv	a1,a0
    13c2:	4505                	li	a0,1
    13c4:	00000097          	auipc	ra,0x0
    13c8:	df2080e7          	jalr	-526(ra) # 11b6 <vprintf>
    13cc:	60e2                	ld	ra,24(sp)
    13ce:	6125                	addi	sp,sp,96
    13d0:	8082                	ret

00000000000013d2 <cksum>:
    13d2:	cdb1                	beqz	a1,142e <cksum+0x5c>
    13d4:	00b50833          	add	a6,a0,a1
    13d8:	4781                	li	a5,0
    13da:	00002637          	lui	a2,0x2
    13de:	e4060613          	addi	a2,a2,-448 # 1e40 <crctab>
    13e2:	0505                	addi	a0,a0,1
    13e4:	0087969b          	slliw	a3,a5,0x8
    13e8:	0187d71b          	srliw	a4,a5,0x18
    13ec:	fff54783          	lbu	a5,-1(a0)
    13f0:	8f3d                	xor	a4,a4,a5
    13f2:	1702                	slli	a4,a4,0x20
    13f4:	9301                	srli	a4,a4,0x20
    13f6:	070a                	slli	a4,a4,0x2
    13f8:	9732                	add	a4,a4,a2
    13fa:	431c                	lw	a5,0(a4)
    13fc:	8fb5                	xor	a5,a5,a3
    13fe:	2781                	sext.w	a5,a5
    1400:	fea811e3          	bne	a6,a0,13e2 <cksum+0x10>
    1404:	00002637          	lui	a2,0x2
    1408:	e4060613          	addi	a2,a2,-448 # 1e40 <crctab>
    140c:	0ff5f693          	andi	a3,a1,255
    1410:	81a1                	srli	a1,a1,0x8
    1412:	0087951b          	slliw	a0,a5,0x8
    1416:	0187d71b          	srliw	a4,a5,0x18
    141a:	8f35                	xor	a4,a4,a3
    141c:	070a                	slli	a4,a4,0x2
    141e:	9732                	add	a4,a4,a2
    1420:	431c                	lw	a5,0(a4)
    1422:	8fa9                	xor	a5,a5,a0
    1424:	2781                	sext.w	a5,a5
    1426:	f1fd                	bnez	a1,140c <cksum+0x3a>
    1428:	fff7c513          	not	a0,a5
    142c:	8082                	ret
    142e:	4781                	li	a5,0
    1430:	bfe5                	j	1428 <cksum+0x56>

0000000000001432 <swap_bytes>:
    1432:	ce19                	beqz	a2,1450 <swap_bytes+0x1e>
    1434:	87aa                	mv	a5,a0
    1436:	962a                	add	a2,a2,a0
    1438:	0007c703          	lbu	a4,0(a5)
    143c:	0005c683          	lbu	a3,0(a1)
    1440:	00d78023          	sb	a3,0(a5)
    1444:	00e58023          	sb	a4,0(a1)
    1448:	0785                	addi	a5,a5,1
    144a:	0585                	addi	a1,a1,1
    144c:	fec796e3          	bne	a5,a2,1438 <swap_bytes+0x6>
    1450:	8082                	ret

0000000000001452 <random_init>:
    1452:	7139                	addi	sp,sp,-64
    1454:	fc06                	sd	ra,56(sp)
    1456:	f822                	sd	s0,48(sp)
    1458:	f426                	sd	s1,40(sp)
    145a:	f04a                	sd	s2,32(sp)
    145c:	ec4e                	sd	s3,24(sp)
    145e:	e852                	sd	s4,16(sp)
    1460:	c62a                	sw	a0,12(sp)
    1462:	000037b7          	lui	a5,0x3
    1466:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    146a:	eca5                	bnez	s1,14e2 <random_init+0x90>
    146c:	00003737          	lui	a4,0x3
    1470:	10070913          	addi	s2,a4,256 # 3100 <s>
    1474:	10070713          	addi	a4,a4,256
    1478:	87a6                	mv	a5,s1
    147a:	10000693          	li	a3,256
    147e:	00f70023          	sb	a5,0(a4)
    1482:	2785                	addiw	a5,a5,1
    1484:	0705                	addi	a4,a4,1
    1486:	fed79ce3          	bne	a5,a3,147e <random_init+0x2c>
    148a:	4401                	li	s0,0
    148c:	000039b7          	lui	s3,0x3
    1490:	10098993          	addi	s3,s3,256 # 3100 <s>
    1494:	10000a13          	li	s4,256
    1498:	0034f793          	andi	a5,s1,3
    149c:	0818                	addi	a4,sp,16
    149e:	97ba                	add	a5,a5,a4
    14a0:	ffc7c783          	lbu	a5,-4(a5)
    14a4:	00094703          	lbu	a4,0(s2)
    14a8:	9fb9                	addw	a5,a5,a4
    14aa:	9c3d                	addw	s0,s0,a5
    14ac:	0ff47413          	andi	s0,s0,255
    14b0:	4605                	li	a2,1
    14b2:	008985b3          	add	a1,s3,s0
    14b6:	854a                	mv	a0,s2
    14b8:	00000097          	auipc	ra,0x0
    14bc:	f7a080e7          	jalr	-134(ra) # 1432 <swap_bytes>
    14c0:	2485                	addiw	s1,s1,1
    14c2:	0905                	addi	s2,s2,1
    14c4:	fd449ae3          	bne	s1,s4,1498 <random_init+0x46>
    14c8:	000037b7          	lui	a5,0x3
    14cc:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    14d0:	000037b7          	lui	a5,0x3
    14d4:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    14d8:	000037b7          	lui	a5,0x3
    14dc:	4705                	li	a4,1
    14de:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    14e2:	70e2                	ld	ra,56(sp)
    14e4:	7442                	ld	s0,48(sp)
    14e6:	74a2                	ld	s1,40(sp)
    14e8:	7902                	ld	s2,32(sp)
    14ea:	69e2                	ld	s3,24(sp)
    14ec:	6a42                	ld	s4,16(sp)
    14ee:	6121                	addi	sp,sp,64
    14f0:	8082                	ret

00000000000014f2 <random_bytes>:
    14f2:	7139                	addi	sp,sp,-64
    14f4:	fc06                	sd	ra,56(sp)
    14f6:	f822                	sd	s0,48(sp)
    14f8:	f426                	sd	s1,40(sp)
    14fa:	f04a                	sd	s2,32(sp)
    14fc:	ec4e                	sd	s3,24(sp)
    14fe:	e852                	sd	s4,16(sp)
    1500:	e456                	sd	s5,8(sp)
    1502:	e05a                	sd	s6,0(sp)
    1504:	892a                	mv	s2,a0
    1506:	8aae                	mv	s5,a1
    1508:	000037b7          	lui	a5,0x3
    150c:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1510:	c3c1                	beqz	a5,1590 <random_bytes+0x9e>
    1512:	060a8563          	beqz	s5,157c <random_bytes+0x8a>
    1516:	9aca                	add	s5,s5,s2
    1518:	00003a37          	lui	s4,0x3
    151c:	000034b7          	lui	s1,0x3
    1520:	10048493          	addi	s1,s1,256 # 3100 <s>
    1524:	000039b7          	lui	s3,0x3
    1528:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    152c:	2505                	addiw	a0,a0,1
    152e:	0ff57513          	andi	a0,a0,255
    1532:	0eaa0aa3          	sb	a0,245(s4)
    1536:	00a48b33          	add	s6,s1,a0
    153a:	000b4403          	lbu	s0,0(s6)
    153e:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1542:	9c3d                	addw	s0,s0,a5
    1544:	0ff47413          	andi	s0,s0,255
    1548:	0e898a23          	sb	s0,244(s3)
    154c:	4605                	li	a2,1
    154e:	008485b3          	add	a1,s1,s0
    1552:	855a                	mv	a0,s6
    1554:	00000097          	auipc	ra,0x0
    1558:	ede080e7          	jalr	-290(ra) # 1432 <swap_bytes>
    155c:	9426                	add	s0,s0,s1
    155e:	000b4783          	lbu	a5,0(s6)
    1562:	00044703          	lbu	a4,0(s0)
    1566:	9fb9                	addw	a5,a5,a4
    1568:	0ff7f793          	andi	a5,a5,255
    156c:	97a6                	add	a5,a5,s1
    156e:	0007c783          	lbu	a5,0(a5)
    1572:	00f90023          	sb	a5,0(s2)
    1576:	0905                	addi	s2,s2,1
    1578:	fb2a98e3          	bne	s5,s2,1528 <random_bytes+0x36>
    157c:	70e2                	ld	ra,56(sp)
    157e:	7442                	ld	s0,48(sp)
    1580:	74a2                	ld	s1,40(sp)
    1582:	7902                	ld	s2,32(sp)
    1584:	69e2                	ld	s3,24(sp)
    1586:	6a42                	ld	s4,16(sp)
    1588:	6aa2                	ld	s5,8(sp)
    158a:	6b02                	ld	s6,0(sp)
    158c:	6121                	addi	sp,sp,64
    158e:	8082                	ret
    1590:	4501                	li	a0,0
    1592:	00000097          	auipc	ra,0x0
    1596:	ec0080e7          	jalr	-320(ra) # 1452 <random_init>
    159a:	bfa5                	j	1512 <random_bytes+0x20>

000000000000159c <random_ulong>:
    159c:	1101                	addi	sp,sp,-32
    159e:	ec06                	sd	ra,24(sp)
    15a0:	45a1                	li	a1,8
    15a2:	0028                	addi	a0,sp,8
    15a4:	00000097          	auipc	ra,0x0
    15a8:	f4e080e7          	jalr	-178(ra) # 14f2 <random_bytes>
    15ac:	6522                	ld	a0,8(sp)
    15ae:	60e2                	ld	ra,24(sp)
    15b0:	6105                	addi	sp,sp,32
    15b2:	8082                	ret

00000000000015b4 <shuffle>:
    15b4:	c9b9                	beqz	a1,160a <shuffle+0x56>
    15b6:	7179                	addi	sp,sp,-48
    15b8:	f406                	sd	ra,40(sp)
    15ba:	f022                	sd	s0,32(sp)
    15bc:	ec26                	sd	s1,24(sp)
    15be:	e84a                	sd	s2,16(sp)
    15c0:	e44e                	sd	s3,8(sp)
    15c2:	e052                	sd	s4,0(sp)
    15c4:	8a2a                	mv	s4,a0
    15c6:	89ae                	mv	s3,a1
    15c8:	84b2                	mv	s1,a2
    15ca:	892a                	mv	s2,a0
    15cc:	4401                	li	s0,0
    15ce:	00000097          	auipc	ra,0x0
    15d2:	fce080e7          	jalr	-50(ra) # 159c <random_ulong>
    15d6:	408985b3          	sub	a1,s3,s0
    15da:	02b575b3          	remu	a1,a0,a1
    15de:	95a2                	add	a1,a1,s0
    15e0:	029585b3          	mul	a1,a1,s1
    15e4:	8626                	mv	a2,s1
    15e6:	95d2                	add	a1,a1,s4
    15e8:	854a                	mv	a0,s2
    15ea:	00000097          	auipc	ra,0x0
    15ee:	e48080e7          	jalr	-440(ra) # 1432 <swap_bytes>
    15f2:	0405                	addi	s0,s0,1
    15f4:	9926                	add	s2,s2,s1
    15f6:	fc899ce3          	bne	s3,s0,15ce <shuffle+0x1a>
    15fa:	70a2                	ld	ra,40(sp)
    15fc:	7402                	ld	s0,32(sp)
    15fe:	64e2                	ld	s1,24(sp)
    1600:	6942                	ld	s2,16(sp)
    1602:	69a2                	ld	s3,8(sp)
    1604:	6a02                	ld	s4,0(sp)
    1606:	6145                	addi	sp,sp,48
    1608:	8082                	ret
    160a:	8082                	ret

000000000000160c <arc4_init>:
    160c:	100500a3          	sb	zero,257(a0)
    1610:	10050023          	sb	zero,256(a0)
    1614:	4781                	li	a5,0
    1616:	10000693          	li	a3,256
    161a:	00f50733          	add	a4,a0,a5
    161e:	00f70023          	sb	a5,0(a4)
    1622:	0785                	addi	a5,a5,1
    1624:	fed79be3          	bne	a5,a3,161a <arc4_init+0xe>
    1628:	86aa                	mv	a3,a0
    162a:	10050e13          	addi	t3,a0,256
    162e:	4701                	li	a4,0
    1630:	4781                	li	a5,0
    1632:	0006c883          	lbu	a7,0(a3)
    1636:	00f58833          	add	a6,a1,a5
    163a:	00084803          	lbu	a6,0(a6)
    163e:	00e8873b          	addw	a4,a7,a4
    1642:	00e8073b          	addw	a4,a6,a4
    1646:	0ff77713          	andi	a4,a4,255
    164a:	00e50833          	add	a6,a0,a4
    164e:	00084303          	lbu	t1,0(a6)
    1652:	00668023          	sb	t1,0(a3)
    1656:	01180023          	sb	a7,0(a6)
    165a:	0785                	addi	a5,a5,1
    165c:	00c7b833          	sltu	a6,a5,a2
    1660:	41000833          	neg	a6,a6
    1664:	0107f7b3          	and	a5,a5,a6
    1668:	0685                	addi	a3,a3,1
    166a:	fdc694e3          	bne	a3,t3,1632 <arc4_init+0x26>
    166e:	8082                	ret

0000000000001670 <arc4_crypt>:
    1670:	10054e03          	lbu	t3,256(a0)
    1674:	10154803          	lbu	a6,257(a0)
    1678:	fff60e93          	addi	t4,a2,-1
    167c:	c225                	beqz	a2,16dc <arc4_crypt+0x6c>
    167e:	00c588b3          	add	a7,a1,a2
    1682:	86ae                	mv	a3,a1
    1684:	001e031b          	addiw	t1,t3,1
    1688:	40b3033b          	subw	t1,t1,a1
    168c:	00d3073b          	addw	a4,t1,a3
    1690:	0ff77713          	andi	a4,a4,255
    1694:	972a                	add	a4,a4,a0
    1696:	00074603          	lbu	a2,0(a4)
    169a:	0106083b          	addw	a6,a2,a6
    169e:	0ff87813          	andi	a6,a6,255
    16a2:	010507b3          	add	a5,a0,a6
    16a6:	0007c583          	lbu	a1,0(a5)
    16aa:	00b70023          	sb	a1,0(a4)
    16ae:	00c78023          	sb	a2,0(a5)
    16b2:	0685                	addi	a3,a3,1
    16b4:	00074783          	lbu	a5,0(a4)
    16b8:	9fb1                	addw	a5,a5,a2
    16ba:	0ff7f793          	andi	a5,a5,255
    16be:	97aa                	add	a5,a5,a0
    16c0:	0007c783          	lbu	a5,0(a5)
    16c4:	fff6c703          	lbu	a4,-1(a3)
    16c8:	8fb9                	xor	a5,a5,a4
    16ca:	fef68fa3          	sb	a5,-1(a3)
    16ce:	fb169fe3          	bne	a3,a7,168c <arc4_crypt+0x1c>
    16d2:	2e85                	addiw	t4,t4,1
    16d4:	01ce8e3b          	addw	t3,t4,t3
    16d8:	0ffe7e13          	andi	t3,t3,255
    16dc:	11c50023          	sb	t3,256(a0)
    16e0:	110500a3          	sb	a6,257(a0)
    16e4:	8082                	ret

00000000000016e6 <_main>:
    16e6:	1141                	addi	sp,sp,-16
    16e8:	e406                	sd	ra,8(sp)
    16ea:	00000097          	auipc	ra,0x0
    16ee:	916080e7          	jalr	-1770(ra) # 1000 <main>
    16f2:	4501                	li	a0,0
    16f4:	00000097          	auipc	ra,0x0
    16f8:	578080e7          	jalr	1400(ra) # 1c6c <exit>
    16fc:	60a2                	ld	ra,8(sp)
    16fe:	0141                	addi	sp,sp,16
    1700:	8082                	ret

0000000000001702 <strcmp>:
    1702:	00054783          	lbu	a5,0(a0)
    1706:	cb91                	beqz	a5,171a <strcmp+0x18>
    1708:	0005c703          	lbu	a4,0(a1)
    170c:	00f71763          	bne	a4,a5,171a <strcmp+0x18>
    1710:	0505                	addi	a0,a0,1
    1712:	0585                	addi	a1,a1,1
    1714:	00054783          	lbu	a5,0(a0)
    1718:	fbe5                	bnez	a5,1708 <strcmp+0x6>
    171a:	0005c503          	lbu	a0,0(a1)
    171e:	40a7853b          	subw	a0,a5,a0
    1722:	8082                	ret

0000000000001724 <strcpy>:
    1724:	87aa                	mv	a5,a0
    1726:	0585                	addi	a1,a1,1
    1728:	0785                	addi	a5,a5,1
    172a:	fff5c703          	lbu	a4,-1(a1)
    172e:	fee78fa3          	sb	a4,-1(a5)
    1732:	fb75                	bnez	a4,1726 <strcpy+0x2>
    1734:	8082                	ret

0000000000001736 <strlen>:
    1736:	00054783          	lbu	a5,0(a0)
    173a:	cf81                	beqz	a5,1752 <strlen+0x1c>
    173c:	0505                	addi	a0,a0,1
    173e:	87aa                	mv	a5,a0
    1740:	4685                	li	a3,1
    1742:	9e89                	subw	a3,a3,a0
    1744:	00f6853b          	addw	a0,a3,a5
    1748:	0785                	addi	a5,a5,1
    174a:	fff7c703          	lbu	a4,-1(a5)
    174e:	fb7d                	bnez	a4,1744 <strlen+0xe>
    1750:	8082                	ret
    1752:	4501                	li	a0,0
    1754:	8082                	ret

0000000000001756 <memset>:
    1756:	ca19                	beqz	a2,176c <memset+0x16>
    1758:	87aa                	mv	a5,a0
    175a:	1602                	slli	a2,a2,0x20
    175c:	9201                	srli	a2,a2,0x20
    175e:	00a60733          	add	a4,a2,a0
    1762:	00b78023          	sb	a1,0(a5)
    1766:	0785                	addi	a5,a5,1
    1768:	fee79de3          	bne	a5,a4,1762 <memset+0xc>
    176c:	8082                	ret

000000000000176e <memcmp>:
    176e:	1101                	addi	sp,sp,-32
    1770:	ec06                	sd	ra,24(sp)
    1772:	e822                	sd	s0,16(sp)
    1774:	e426                	sd	s1,8(sp)
    1776:	e04a                	sd	s2,0(sp)
    1778:	892a                	mv	s2,a0
    177a:	842e                	mv	s0,a1
    177c:	84b2                	mv	s1,a2
    177e:	c915                	beqz	a0,17b2 <memcmp+0x44>
    1780:	c5ad                	beqz	a1,17ea <memcmp+0x7c>
    1782:	fff60713          	addi	a4,a2,-1
    1786:	c645                	beqz	a2,182e <memcmp+0xc0>
    1788:	87ca                	mv	a5,s2
    178a:	00190613          	addi	a2,s2,1
    178e:	963a                	add	a2,a2,a4
    1790:	0007c683          	lbu	a3,0(a5)
    1794:	00044703          	lbu	a4,0(s0)
    1798:	08e69463          	bne	a3,a4,1820 <memcmp+0xb2>
    179c:	0785                	addi	a5,a5,1
    179e:	0405                	addi	s0,s0,1
    17a0:	fec798e3          	bne	a5,a2,1790 <memcmp+0x22>
    17a4:	4501                	li	a0,0
    17a6:	60e2                	ld	ra,24(sp)
    17a8:	6442                	ld	s0,16(sp)
    17aa:	64a2                	ld	s1,8(sp)
    17ac:	6902                	ld	s2,0(sp)
    17ae:	6105                	addi	sp,sp,32
    17b0:	8082                	ret
    17b2:	4501                	li	a0,0
    17b4:	da6d                	beqz	a2,17a6 <memcmp+0x38>
    17b6:	03200693          	li	a3,50
    17ba:	00002637          	lui	a2,0x2
    17be:	24060613          	addi	a2,a2,576 # 2240 <crctab+0x400>
    17c2:	000025b7          	lui	a1,0x2
    17c6:	25058593          	addi	a1,a1,592 # 2250 <crctab+0x410>
    17ca:	4509                	li	a0,2
    17cc:	00000097          	auipc	ra,0x0
    17d0:	bbc080e7          	jalr	-1092(ra) # 1388 <fprintf>
    17d4:	650d                	lui	a0,0x3
    17d6:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17da:	00000097          	auipc	ra,0x0
    17de:	492080e7          	jalr	1170(ra) # 1c6c <exit>
    17e2:	fff48713          	addi	a4,s1,-1
    17e6:	f04d                	bnez	s0,1788 <memcmp+0x1a>
    17e8:	a011                	j	17ec <memcmp+0x7e>
    17ea:	c221                	beqz	a2,182a <memcmp+0xbc>
    17ec:	03300693          	li	a3,51
    17f0:	00002637          	lui	a2,0x2
    17f4:	24060613          	addi	a2,a2,576 # 2240 <crctab+0x400>
    17f8:	000025b7          	lui	a1,0x2
    17fc:	29858593          	addi	a1,a1,664 # 2298 <crctab+0x458>
    1800:	4509                	li	a0,2
    1802:	00000097          	auipc	ra,0x0
    1806:	b86080e7          	jalr	-1146(ra) # 1388 <fprintf>
    180a:	650d                	lui	a0,0x3
    180c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1810:	00000097          	auipc	ra,0x0
    1814:	45c080e7          	jalr	1116(ra) # 1c6c <exit>
    1818:	fff48713          	addi	a4,s1,-1
    181c:	4401                	li	s0,0
    181e:	b7ad                	j	1788 <memcmp+0x1a>
    1820:	4505                	li	a0,1
    1822:	f8d762e3          	bltu	a4,a3,17a6 <memcmp+0x38>
    1826:	557d                	li	a0,-1
    1828:	bfbd                	j	17a6 <memcmp+0x38>
    182a:	4501                	li	a0,0
    182c:	bfad                	j	17a6 <memcmp+0x38>
    182e:	4501                	li	a0,0
    1830:	bf9d                	j	17a6 <memcmp+0x38>

0000000000001832 <memcpy>:
    1832:	1101                	addi	sp,sp,-32
    1834:	ec06                	sd	ra,24(sp)
    1836:	e822                	sd	s0,16(sp)
    1838:	e426                	sd	s1,8(sp)
    183a:	e04a                	sd	s2,0(sp)
    183c:	84aa                	mv	s1,a0
    183e:	842e                	mv	s0,a1
    1840:	8932                	mv	s2,a2
    1842:	c51d                	beqz	a0,1870 <memcpy+0x3e>
    1844:	c1ad                	beqz	a1,18a6 <memcpy+0x74>
    1846:	fff60693          	addi	a3,a2,-1
    184a:	ce01                	beqz	a2,1862 <memcpy+0x30>
    184c:	0685                	addi	a3,a3,1
    184e:	96a6                	add	a3,a3,s1
    1850:	87a6                	mv	a5,s1
    1852:	0405                	addi	s0,s0,1
    1854:	0785                	addi	a5,a5,1
    1856:	fff44703          	lbu	a4,-1(s0)
    185a:	fee78fa3          	sb	a4,-1(a5)
    185e:	fed79ae3          	bne	a5,a3,1852 <memcpy+0x20>
    1862:	8526                	mv	a0,s1
    1864:	60e2                	ld	ra,24(sp)
    1866:	6442                	ld	s0,16(sp)
    1868:	64a2                	ld	s1,8(sp)
    186a:	6902                	ld	s2,0(sp)
    186c:	6105                	addi	sp,sp,32
    186e:	8082                	ret
    1870:	da6d                	beqz	a2,1862 <memcpy+0x30>
    1872:	04000693          	li	a3,64
    1876:	00002637          	lui	a2,0x2
    187a:	24060613          	addi	a2,a2,576 # 2240 <crctab+0x400>
    187e:	000025b7          	lui	a1,0x2
    1882:	2e058593          	addi	a1,a1,736 # 22e0 <crctab+0x4a0>
    1886:	4509                	li	a0,2
    1888:	00000097          	auipc	ra,0x0
    188c:	b00080e7          	jalr	-1280(ra) # 1388 <fprintf>
    1890:	650d                	lui	a0,0x3
    1892:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1896:	00000097          	auipc	ra,0x0
    189a:	3d6080e7          	jalr	982(ra) # 1c6c <exit>
    189e:	fff90693          	addi	a3,s2,-1
    18a2:	f44d                	bnez	s0,184c <memcpy+0x1a>
    18a4:	a011                	j	18a8 <memcpy+0x76>
    18a6:	de55                	beqz	a2,1862 <memcpy+0x30>
    18a8:	04100693          	li	a3,65
    18ac:	00002637          	lui	a2,0x2
    18b0:	24060613          	addi	a2,a2,576 # 2240 <crctab+0x400>
    18b4:	000025b7          	lui	a1,0x2
    18b8:	32858593          	addi	a1,a1,808 # 2328 <crctab+0x4e8>
    18bc:	4509                	li	a0,2
    18be:	00000097          	auipc	ra,0x0
    18c2:	aca080e7          	jalr	-1334(ra) # 1388 <fprintf>
    18c6:	650d                	lui	a0,0x3
    18c8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18cc:	00000097          	auipc	ra,0x0
    18d0:	3a0080e7          	jalr	928(ra) # 1c6c <exit>
    18d4:	fff90693          	addi	a3,s2,-1
    18d8:	4401                	li	s0,0
    18da:	bf8d                	j	184c <memcpy+0x1a>

00000000000018dc <itoa>:
    18dc:	1101                	addi	sp,sp,-32
    18de:	ec06                	sd	ra,24(sp)
    18e0:	e822                	sd	s0,16(sp)
    18e2:	e426                	sd	s1,8(sp)
    18e4:	842a                	mv	s0,a0
    18e6:	41f5d71b          	sraiw	a4,a1,0x1f
    18ea:	00e5c7b3          	xor	a5,a1,a4
    18ee:	9f99                	subw	a5,a5,a4
    18f0:	84aa                	mv	s1,a0
    18f2:	862a                	mv	a2,a0
    18f4:	4681                	li	a3,0
    18f6:	4529                	li	a0,10
    18f8:	4825                	li	a6,9
    18fa:	88b6                	mv	a7,a3
    18fc:	2685                	addiw	a3,a3,1
    18fe:	02a7e73b          	remw	a4,a5,a0
    1902:	0307071b          	addiw	a4,a4,48
    1906:	00e60023          	sb	a4,0(a2)
    190a:	873e                	mv	a4,a5
    190c:	02a7c7bb          	divw	a5,a5,a0
    1910:	0605                	addi	a2,a2,1
    1912:	fee844e3          	blt	a6,a4,18fa <itoa+0x1e>
    1916:	0405c863          	bltz	a1,1966 <itoa+0x8a>
    191a:	96a2                	add	a3,a3,s0
    191c:	00068023          	sb	zero,0(a3)
    1920:	8522                	mv	a0,s0
    1922:	00000097          	auipc	ra,0x0
    1926:	e14080e7          	jalr	-492(ra) # 1736 <strlen>
    192a:	fff5071b          	addiw	a4,a0,-1
    192e:	02e05763          	blez	a4,195c <itoa+0x80>
    1932:	9722                	add	a4,a4,s0
    1934:	4681                	li	a3,0
    1936:	0004c783          	lbu	a5,0(s1)
    193a:	00074603          	lbu	a2,0(a4)
    193e:	00c48023          	sb	a2,0(s1)
    1942:	00f70023          	sb	a5,0(a4)
    1946:	0016879b          	addiw	a5,a3,1
    194a:	0007869b          	sext.w	a3,a5
    194e:	0485                	addi	s1,s1,1
    1950:	177d                	addi	a4,a4,-1
    1952:	fff7c793          	not	a5,a5
    1956:	9fa9                	addw	a5,a5,a0
    1958:	fcf6cfe3          	blt	a3,a5,1936 <itoa+0x5a>
    195c:	60e2                	ld	ra,24(sp)
    195e:	6442                	ld	s0,16(sp)
    1960:	64a2                	ld	s1,8(sp)
    1962:	6105                	addi	sp,sp,32
    1964:	8082                	ret
    1966:	96a2                	add	a3,a3,s0
    1968:	02d00793          	li	a5,45
    196c:	00f68023          	sb	a5,0(a3)
    1970:	0028869b          	addiw	a3,a7,2
    1974:	b75d                	j	191a <itoa+0x3e>

0000000000001976 <atoi>:
    1976:	00054783          	lbu	a5,0(a0)
    197a:	02000713          	li	a4,32
    197e:	00e79763          	bne	a5,a4,198c <atoi+0x16>
    1982:	0505                	addi	a0,a0,1
    1984:	00054783          	lbu	a5,0(a0)
    1988:	fee78de3          	beq	a5,a4,1982 <atoi+0xc>
    198c:	02b00713          	li	a4,43
    1990:	04e78663          	beq	a5,a4,19dc <atoi+0x66>
    1994:	02d00713          	li	a4,45
    1998:	4805                	li	a6,1
    199a:	04e78463          	beq	a5,a4,19e2 <atoi+0x6c>
    199e:	00054683          	lbu	a3,0(a0)
    19a2:	fd06879b          	addiw	a5,a3,-48
    19a6:	0ff7f793          	andi	a5,a5,255
    19aa:	4725                	li	a4,9
    19ac:	02f76e63          	bltu	a4,a5,19e8 <atoi+0x72>
    19b0:	4601                	li	a2,0
    19b2:	45a5                	li	a1,9
    19b4:	0505                	addi	a0,a0,1
    19b6:	0026179b          	slliw	a5,a2,0x2
    19ba:	9fb1                	addw	a5,a5,a2
    19bc:	0017979b          	slliw	a5,a5,0x1
    19c0:	9fb5                	addw	a5,a5,a3
    19c2:	fd07861b          	addiw	a2,a5,-48
    19c6:	00054683          	lbu	a3,0(a0)
    19ca:	fd06871b          	addiw	a4,a3,-48
    19ce:	0ff77713          	andi	a4,a4,255
    19d2:	fee5f1e3          	bgeu	a1,a4,19b4 <atoi+0x3e>
    19d6:	02c8053b          	mulw	a0,a6,a2
    19da:	8082                	ret
    19dc:	0505                	addi	a0,a0,1
    19de:	4805                	li	a6,1
    19e0:	bf7d                	j	199e <atoi+0x28>
    19e2:	0505                	addi	a0,a0,1
    19e4:	587d                	li	a6,-1
    19e6:	bf65                	j	199e <atoi+0x28>
    19e8:	4601                	li	a2,0
    19ea:	b7f5                	j	19d6 <atoi+0x60>

00000000000019ec <check_file_handle>:
    19ec:	d8010113          	addi	sp,sp,-640
    19f0:	26113c23          	sd	ra,632(sp)
    19f4:	26813823          	sd	s0,624(sp)
    19f8:	26913423          	sd	s1,616(sp)
    19fc:	27213023          	sd	s2,608(sp)
    1a00:	25313c23          	sd	s3,600(sp)
    1a04:	25413823          	sd	s4,592(sp)
    1a08:	25513423          	sd	s5,584(sp)
    1a0c:	25613023          	sd	s6,576(sp)
    1a10:	23713c23          	sd	s7,568(sp)
    1a14:	23813823          	sd	s8,560(sp)
    1a18:	23913423          	sd	s9,552(sp)
    1a1c:	23a13023          	sd	s10,544(sp)
    1a20:	21b13c23          	sd	s11,536(sp)
    1a24:	8baa                	mv	s7,a0
    1a26:	8a2e                	mv	s4,a1
    1a28:	8c32                	mv	s8,a2
    1a2a:	89b6                	mv	s3,a3
    1a2c:	040c                	addi	a1,sp,512
    1a2e:	00000097          	auipc	ra,0x0
    1a32:	28e080e7          	jalr	654(ra) # 1cbc <fstat>
    1a36:	20813603          	ld	a2,520(sp)
    1a3a:	03361163          	bne	a2,s3,1a5c <check_file_handle+0x70>
    1a3e:	06098763          	beqz	s3,1aac <check_file_handle+0xc0>
    1a42:	4901                	li	s2,0
    1a44:	20000a93          	li	s5,512
    1a48:	00002cb7          	lui	s9,0x2
    1a4c:	00002db7          	lui	s11,0x2
    1a50:	6b0d                	lui	s6,0x3
    1a52:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a56:	00002d37          	lui	s10,0x2
    1a5a:	aa39                	j	1b78 <check_file_handle+0x18c>
    1a5c:	86ce                	mv	a3,s3
    1a5e:	85d2                	mv	a1,s4
    1a60:	00002537          	lui	a0,0x2
    1a64:	37050513          	addi	a0,a0,880 # 2370 <crctab+0x530>
    1a68:	00000097          	auipc	ra,0x0
    1a6c:	942080e7          	jalr	-1726(ra) # 13aa <printf>
    1a70:	fc0999e3          	bnez	s3,1a42 <check_file_handle+0x56>
    1a74:	20813683          	ld	a3,520(sp)
    1a78:	03368a63          	beq	a3,s3,1aac <check_file_handle+0xc0>
    1a7c:	0a600813          	li	a6,166
    1a80:	000027b7          	lui	a5,0x2
    1a84:	24078793          	addi	a5,a5,576 # 2240 <crctab+0x400>
    1a88:	874e                	mv	a4,s3
    1a8a:	8652                	mv	a2,s4
    1a8c:	000025b7          	lui	a1,0x2
    1a90:	44058593          	addi	a1,a1,1088 # 2440 <crctab+0x600>
    1a94:	4509                	li	a0,2
    1a96:	00000097          	auipc	ra,0x0
    1a9a:	8f2080e7          	jalr	-1806(ra) # 1388 <fprintf>
    1a9e:	650d                	lui	a0,0x3
    1aa0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1aa4:	00000097          	auipc	ra,0x0
    1aa8:	1c8080e7          	jalr	456(ra) # 1c6c <exit>
    1aac:	85d2                	mv	a1,s4
    1aae:	00002537          	lui	a0,0x2
    1ab2:	48850513          	addi	a0,a0,1160 # 2488 <crctab+0x648>
    1ab6:	00000097          	auipc	ra,0x0
    1aba:	8f4080e7          	jalr	-1804(ra) # 13aa <printf>
    1abe:	27813083          	ld	ra,632(sp)
    1ac2:	27013403          	ld	s0,624(sp)
    1ac6:	26813483          	ld	s1,616(sp)
    1aca:	26013903          	ld	s2,608(sp)
    1ace:	25813983          	ld	s3,600(sp)
    1ad2:	25013a03          	ld	s4,592(sp)
    1ad6:	24813a83          	ld	s5,584(sp)
    1ada:	24013b03          	ld	s6,576(sp)
    1ade:	23813b83          	ld	s7,568(sp)
    1ae2:	23013c03          	ld	s8,560(sp)
    1ae6:	22813c83          	ld	s9,552(sp)
    1aea:	22013d03          	ld	s10,544(sp)
    1aee:	21813d83          	ld	s11,536(sp)
    1af2:	28010113          	addi	sp,sp,640
    1af6:	8082                	ret
    1af8:	09d00893          	li	a7,157
    1afc:	240c8813          	addi	a6,s9,576 # 2240 <crctab+0x400>
    1b00:	87aa                	mv	a5,a0
    1b02:	8752                	mv	a4,s4
    1b04:	86ca                	mv	a3,s2
    1b06:	8622                	mv	a2,s0
    1b08:	3a0d8593          	addi	a1,s11,928 # 23a0 <crctab+0x560>
    1b0c:	4509                	li	a0,2
    1b0e:	00000097          	auipc	ra,0x0
    1b12:	87a080e7          	jalr	-1926(ra) # 1388 <fprintf>
    1b16:	855a                	mv	a0,s6
    1b18:	00000097          	auipc	ra,0x0
    1b1c:	154080e7          	jalr	340(ra) # 1c6c <exit>
    1b20:	a89d                	j	1b96 <check_file_handle+0x1aa>
    1b22:	00160593          	addi	a1,a2,1
    1b26:	0285f163          	bgeu	a1,s0,1b48 <check_file_handle+0x15c>
    1b2a:	00c10733          	add	a4,sp,a2
    1b2e:	00b487b3          	add	a5,s1,a1
    1b32:	00174683          	lbu	a3,1(a4)
    1b36:	0007c783          	lbu	a5,0(a5)
    1b3a:	00f68763          	beq	a3,a5,1b48 <check_file_handle+0x15c>
    1b3e:	0585                	addi	a1,a1,1
    1b40:	0705                	addi	a4,a4,1
    1b42:	feb416e3          	bne	s0,a1,1b2e <check_file_handle+0x142>
    1b46:	85a2                	mv	a1,s0
    1b48:	08100813          	li	a6,129
    1b4c:	240c8793          	addi	a5,s9,576
    1b50:	8752                	mv	a4,s4
    1b52:	012606b3          	add	a3,a2,s2
    1b56:	40c58633          	sub	a2,a1,a2
    1b5a:	3e8d0593          	addi	a1,s10,1000 # 23e8 <crctab+0x5a8>
    1b5e:	4509                	li	a0,2
    1b60:	00000097          	auipc	ra,0x0
    1b64:	828080e7          	jalr	-2008(ra) # 1388 <fprintf>
    1b68:	855a                	mv	a0,s6
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	102080e7          	jalr	258(ra) # 1c6c <exit>
    1b72:	9922                	add	s2,s2,s0
    1b74:	f13970e3          	bgeu	s2,s3,1a74 <check_file_handle+0x88>
    1b78:	41298433          	sub	s0,s3,s2
    1b7c:	008af363          	bgeu	s5,s0,1b82 <check_file_handle+0x196>
    1b80:	8456                	mv	s0,s5
    1b82:	0004061b          	sext.w	a2,s0
    1b86:	858a                	mv	a1,sp
    1b88:	855e                	mv	a0,s7
    1b8a:	00000097          	auipc	ra,0x0
    1b8e:	10a080e7          	jalr	266(ra) # 1c94 <read>
    1b92:	f68513e3          	bne	a0,s0,1af8 <check_file_handle+0x10c>
    1b96:	012c04b3          	add	s1,s8,s2
    1b9a:	8622                	mv	a2,s0
    1b9c:	85a6                	mv	a1,s1
    1b9e:	850a                	mv	a0,sp
    1ba0:	00000097          	auipc	ra,0x0
    1ba4:	bce080e7          	jalr	-1074(ra) # 176e <memcmp>
    1ba8:	d569                	beqz	a0,1b72 <check_file_handle+0x186>
    1baa:	03298163          	beq	s3,s2,1bcc <check_file_handle+0x1e0>
    1bae:	870a                	mv	a4,sp
    1bb0:	4601                	li	a2,0
    1bb2:	00c487b3          	add	a5,s1,a2
    1bb6:	00074683          	lbu	a3,0(a4)
    1bba:	0007c783          	lbu	a5,0(a5)
    1bbe:	f6f692e3          	bne	a3,a5,1b22 <check_file_handle+0x136>
    1bc2:	0605                	addi	a2,a2,1
    1bc4:	0705                	addi	a4,a4,1
    1bc6:	fe8666e3          	bltu	a2,s0,1bb2 <check_file_handle+0x1c6>
    1bca:	bfa1                	j	1b22 <check_file_handle+0x136>
    1bcc:	4601                	li	a2,0
    1bce:	4585                	li	a1,1
    1bd0:	bfa5                	j	1b48 <check_file_handle+0x15c>

0000000000001bd2 <check_file>:
    1bd2:	7179                	addi	sp,sp,-48
    1bd4:	f406                	sd	ra,40(sp)
    1bd6:	f022                	sd	s0,32(sp)
    1bd8:	ec26                	sd	s1,24(sp)
    1bda:	e84a                	sd	s2,16(sp)
    1bdc:	e44e                	sd	s3,8(sp)
    1bde:	84aa                	mv	s1,a0
    1be0:	892e                	mv	s2,a1
    1be2:	89b2                	mv	s3,a2
    1be4:	4581                	li	a1,0
    1be6:	00000097          	auipc	ra,0x0
    1bea:	0a6080e7          	jalr	166(ra) # 1c8c <open>
    1bee:	842a                	mv	s0,a0
    1bf0:	4789                	li	a5,2
    1bf2:	02a7df63          	bge	a5,a0,1c30 <check_file+0x5e>
    1bf6:	86ce                	mv	a3,s3
    1bf8:	864a                	mv	a2,s2
    1bfa:	85a6                	mv	a1,s1
    1bfc:	8522                	mv	a0,s0
    1bfe:	00000097          	auipc	ra,0x0
    1c02:	dee080e7          	jalr	-530(ra) # 19ec <check_file_handle>
    1c06:	85a6                	mv	a1,s1
    1c08:	00002537          	lui	a0,0x2
    1c0c:	51050513          	addi	a0,a0,1296 # 2510 <crctab+0x6d0>
    1c10:	fffff097          	auipc	ra,0xfffff
    1c14:	79a080e7          	jalr	1946(ra) # 13aa <printf>
    1c18:	8522                	mv	a0,s0
    1c1a:	00000097          	auipc	ra,0x0
    1c1e:	09a080e7          	jalr	154(ra) # 1cb4 <close>
    1c22:	70a2                	ld	ra,40(sp)
    1c24:	7402                	ld	s0,32(sp)
    1c26:	64e2                	ld	s1,24(sp)
    1c28:	6942                	ld	s2,16(sp)
    1c2a:	69a2                	ld	s3,8(sp)
    1c2c:	6145                	addi	sp,sp,48
    1c2e:	8082                	ret
    1c30:	0ae00713          	li	a4,174
    1c34:	000026b7          	lui	a3,0x2
    1c38:	24068693          	addi	a3,a3,576 # 2240 <crctab+0x400>
    1c3c:	8626                	mv	a2,s1
    1c3e:	000025b7          	lui	a1,0x2
    1c42:	4a858593          	addi	a1,a1,1192 # 24a8 <crctab+0x668>
    1c46:	4509                	li	a0,2
    1c48:	fffff097          	auipc	ra,0xfffff
    1c4c:	740080e7          	jalr	1856(ra) # 1388 <fprintf>
    1c50:	650d                	lui	a0,0x3
    1c52:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c56:	00000097          	auipc	ra,0x0
    1c5a:	016080e7          	jalr	22(ra) # 1c6c <exit>
    1c5e:	bf61                	j	1bf6 <check_file+0x24>

0000000000001c60 <r_sp>:
    1c60:	850a                	mv	a0,sp
    1c62:	8082                	ret

0000000000001c64 <halt>:
    1c64:	4885                	li	a7,1
    1c66:	00000073          	ecall
    1c6a:	8082                	ret

0000000000001c6c <exit>:
    1c6c:	4889                	li	a7,2
    1c6e:	00000073          	ecall
    1c72:	8082                	ret

0000000000001c74 <exec>:
    1c74:	488d                	li	a7,3
    1c76:	00000073          	ecall
    1c7a:	8082                	ret

0000000000001c7c <wait>:
    1c7c:	4891                	li	a7,4
    1c7e:	00000073          	ecall
    1c82:	8082                	ret

0000000000001c84 <remove>:
    1c84:	4895                	li	a7,5
    1c86:	00000073          	ecall
    1c8a:	8082                	ret

0000000000001c8c <open>:
    1c8c:	4899                	li	a7,6
    1c8e:	00000073          	ecall
    1c92:	8082                	ret

0000000000001c94 <read>:
    1c94:	489d                	li	a7,7
    1c96:	00000073          	ecall
    1c9a:	8082                	ret

0000000000001c9c <write>:
    1c9c:	48a1                	li	a7,8
    1c9e:	00000073          	ecall
    1ca2:	8082                	ret

0000000000001ca4 <seek>:
    1ca4:	48a5                	li	a7,9
    1ca6:	00000073          	ecall
    1caa:	8082                	ret

0000000000001cac <tell>:
    1cac:	48a9                	li	a7,10
    1cae:	00000073          	ecall
    1cb2:	8082                	ret

0000000000001cb4 <close>:
    1cb4:	48ad                	li	a7,11
    1cb6:	00000073          	ecall
    1cba:	8082                	ret

0000000000001cbc <fstat>:
    1cbc:	48b1                	li	a7,12
    1cbe:	00000073          	ecall
    1cc2:	8082                	ret

0000000000001cc4 <mmap>:
    1cc4:	48b5                	li	a7,13
    1cc6:	00000073          	ecall
    1cca:	8082                	ret

0000000000001ccc <munmap>:
    1ccc:	48b9                	li	a7,14
    1cce:	00000073          	ecall
    1cd2:	8082                	ret

0000000000001cd4 <chdir>:
    1cd4:	48bd                	li	a7,15
    1cd6:	00000073          	ecall
    1cda:	8082                	ret

0000000000001cdc <mkdir>:
    1cdc:	48c1                	li	a7,16
    1cde:	00000073          	ecall
    1ce2:	8082                	ret
