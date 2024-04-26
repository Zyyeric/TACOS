
build/user/vm/mmap-write:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	be010113          	addi	sp,sp,-1056
    1004:	40113c23          	sd	ra,1048(sp)
    1008:	40813823          	sd	s0,1040(sp)
    100c:	40913423          	sd	s1,1032(sp)
    1010:	41213023          	sd	s2,1024(sp)
    1014:	40200593          	li	a1,1026
    1018:	00002537          	lui	a0,0x2
    101c:	d4050513          	addi	a0,a0,-704 # 1d40 <mkdir+0x12>
    1020:	00001097          	auipc	ra,0x1
    1024:	cbe080e7          	jalr	-834(ra) # 1cde <open>
    1028:	842a                	mv	s0,a0
    102a:	4789                	li	a5,2
    102c:	0aa7d063          	bge	a5,a0,10cc <main+0xcc>
    1030:	100005b7          	lui	a1,0x10000
    1034:	8522                	mv	a0,s0
    1036:	00001097          	auipc	ra,0x1
    103a:	ce0080e7          	jalr	-800(ra) # 1d16 <mmap>
    103e:	892a                	mv	s2,a0
    1040:	57fd                	li	a5,-1
    1042:	0af50b63          	beq	a0,a5,10f8 <main+0xf8>
    1046:	000034b7          	lui	s1,0x3
    104a:	00048513          	mv	a0,s1
    104e:	00000097          	auipc	ra,0x0
    1052:	73a080e7          	jalr	1850(ra) # 1788 <strlen>
    1056:	862a                	mv	a2,a0
    1058:	00048593          	mv	a1,s1
    105c:	10000537          	lui	a0,0x10000
    1060:	00001097          	auipc	ra,0x1
    1064:	824080e7          	jalr	-2012(ra) # 1884 <memcpy>
    1068:	854a                	mv	a0,s2
    106a:	00001097          	auipc	ra,0x1
    106e:	cb4080e7          	jalr	-844(ra) # 1d1e <munmap>
    1072:	00048513          	mv	a0,s1
    1076:	00000097          	auipc	ra,0x0
    107a:	712080e7          	jalr	1810(ra) # 1788 <strlen>
    107e:	0005061b          	sext.w	a2,a0
    1082:	858a                	mv	a1,sp
    1084:	8522                	mv	a0,s0
    1086:	00001097          	auipc	ra,0x1
    108a:	c60080e7          	jalr	-928(ra) # 1ce6 <read>
    108e:	00048513          	mv	a0,s1
    1092:	00000097          	auipc	ra,0x0
    1096:	6f6080e7          	jalr	1782(ra) # 1788 <strlen>
    109a:	862a                	mv	a2,a0
    109c:	00048593          	mv	a1,s1
    10a0:	850a                	mv	a0,sp
    10a2:	00000097          	auipc	ra,0x0
    10a6:	71e080e7          	jalr	1822(ra) # 17c0 <memcmp>
    10aa:	ed2d                	bnez	a0,1124 <main+0x124>
    10ac:	8522                	mv	a0,s0
    10ae:	00001097          	auipc	ra,0x1
    10b2:	c58080e7          	jalr	-936(ra) # 1d06 <close>
    10b6:	41813083          	ld	ra,1048(sp)
    10ba:	41013403          	ld	s0,1040(sp)
    10be:	40813483          	ld	s1,1032(sp)
    10c2:	40013903          	ld	s2,1024(sp)
    10c6:	42010113          	addi	sp,sp,1056
    10ca:	8082                	ret
    10cc:	46c1                	li	a3,16
    10ce:	00002637          	lui	a2,0x2
    10d2:	d5060613          	addi	a2,a2,-688 # 1d50 <mkdir+0x22>
    10d6:	000025b7          	lui	a1,0x2
    10da:	d6858593          	addi	a1,a1,-664 # 1d68 <mkdir+0x3a>
    10de:	4509                	li	a0,2
    10e0:	00000097          	auipc	ra,0x0
    10e4:	2fa080e7          	jalr	762(ra) # 13da <fprintf>
    10e8:	650d                	lui	a0,0x3
    10ea:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10ee:	00001097          	auipc	ra,0x1
    10f2:	bd0080e7          	jalr	-1072(ra) # 1cbe <exit>
    10f6:	bf2d                	j	1030 <main+0x30>
    10f8:	46c5                	li	a3,17
    10fa:	00002637          	lui	a2,0x2
    10fe:	d5060613          	addi	a2,a2,-688 # 1d50 <mkdir+0x22>
    1102:	000025b7          	lui	a1,0x2
    1106:	dc858593          	addi	a1,a1,-568 # 1dc8 <mkdir+0x9a>
    110a:	4509                	li	a0,2
    110c:	00000097          	auipc	ra,0x0
    1110:	2ce080e7          	jalr	718(ra) # 13da <fprintf>
    1114:	650d                	lui	a0,0x3
    1116:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    111a:	00001097          	auipc	ra,0x1
    111e:	ba4080e7          	jalr	-1116(ra) # 1cbe <exit>
    1122:	b715                	j	1046 <main+0x46>
    1124:	46dd                	li	a3,23
    1126:	00002637          	lui	a2,0x2
    112a:	d5060613          	addi	a2,a2,-688 # 1d50 <mkdir+0x22>
    112e:	000025b7          	lui	a1,0x2
    1132:	e2058593          	addi	a1,a1,-480 # 1e20 <mkdir+0xf2>
    1136:	4509                	li	a0,2
    1138:	00000097          	auipc	ra,0x0
    113c:	2a2080e7          	jalr	674(ra) # 13da <fprintf>
    1140:	650d                	lui	a0,0x3
    1142:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1146:	00001097          	auipc	ra,0x1
    114a:	b78080e7          	jalr	-1160(ra) # 1cbe <exit>
    114e:	bfb9                	j	10ac <main+0xac>

0000000000001150 <putc>:
    1150:	1101                	addi	sp,sp,-32
    1152:	ec06                	sd	ra,24(sp)
    1154:	00b107a3          	sb	a1,15(sp)
    1158:	4605                	li	a2,1
    115a:	00f10593          	addi	a1,sp,15
    115e:	00001097          	auipc	ra,0x1
    1162:	b90080e7          	jalr	-1136(ra) # 1cee <write>
    1166:	60e2                	ld	ra,24(sp)
    1168:	6105                	addi	sp,sp,32
    116a:	8082                	ret

000000000000116c <printint>:
    116c:	7179                	addi	sp,sp,-48
    116e:	f406                	sd	ra,40(sp)
    1170:	f022                	sd	s0,32(sp)
    1172:	ec26                	sd	s1,24(sp)
    1174:	e84a                	sd	s2,16(sp)
    1176:	84aa                	mv	s1,a0
    1178:	c299                	beqz	a3,117e <printint+0x12>
    117a:	0805c363          	bltz	a1,1200 <printint+0x94>
    117e:	2581                	sext.w	a1,a1
    1180:	4881                	li	a7,0
    1182:	868a                	mv	a3,sp
    1184:	4701                	li	a4,0
    1186:	2601                	sext.w	a2,a2
    1188:	00002537          	lui	a0,0x2
    118c:	ea050513          	addi	a0,a0,-352 # 1ea0 <digits>
    1190:	883a                	mv	a6,a4
    1192:	2705                	addiw	a4,a4,1
    1194:	02c5f7bb          	remuw	a5,a1,a2
    1198:	1782                	slli	a5,a5,0x20
    119a:	9381                	srli	a5,a5,0x20
    119c:	97aa                	add	a5,a5,a0
    119e:	0007c783          	lbu	a5,0(a5)
    11a2:	00f68023          	sb	a5,0(a3)
    11a6:	0005879b          	sext.w	a5,a1
    11aa:	02c5d5bb          	divuw	a1,a1,a2
    11ae:	0685                	addi	a3,a3,1
    11b0:	fec7f0e3          	bgeu	a5,a2,1190 <printint+0x24>
    11b4:	00088a63          	beqz	a7,11c8 <printint+0x5c>
    11b8:	081c                	addi	a5,sp,16
    11ba:	973e                	add	a4,a4,a5
    11bc:	02d00793          	li	a5,45
    11c0:	fef70823          	sb	a5,-16(a4)
    11c4:	0028071b          	addiw	a4,a6,2
    11c8:	02e05663          	blez	a4,11f4 <printint+0x88>
    11cc:	00e10433          	add	s0,sp,a4
    11d0:	fff10913          	addi	s2,sp,-1
    11d4:	993a                	add	s2,s2,a4
    11d6:	377d                	addiw	a4,a4,-1
    11d8:	1702                	slli	a4,a4,0x20
    11da:	9301                	srli	a4,a4,0x20
    11dc:	40e90933          	sub	s2,s2,a4
    11e0:	fff44583          	lbu	a1,-1(s0)
    11e4:	8526                	mv	a0,s1
    11e6:	00000097          	auipc	ra,0x0
    11ea:	f6a080e7          	jalr	-150(ra) # 1150 <putc>
    11ee:	147d                	addi	s0,s0,-1
    11f0:	ff2418e3          	bne	s0,s2,11e0 <printint+0x74>
    11f4:	70a2                	ld	ra,40(sp)
    11f6:	7402                	ld	s0,32(sp)
    11f8:	64e2                	ld	s1,24(sp)
    11fa:	6942                	ld	s2,16(sp)
    11fc:	6145                	addi	sp,sp,48
    11fe:	8082                	ret
    1200:	40b005bb          	negw	a1,a1
    1204:	4885                	li	a7,1
    1206:	bfb5                	j	1182 <printint+0x16>

0000000000001208 <vprintf>:
    1208:	7159                	addi	sp,sp,-112
    120a:	f486                	sd	ra,104(sp)
    120c:	f0a2                	sd	s0,96(sp)
    120e:	eca6                	sd	s1,88(sp)
    1210:	e8ca                	sd	s2,80(sp)
    1212:	e4ce                	sd	s3,72(sp)
    1214:	e0d2                	sd	s4,64(sp)
    1216:	fc56                	sd	s5,56(sp)
    1218:	f85a                	sd	s6,48(sp)
    121a:	f45e                	sd	s7,40(sp)
    121c:	f062                	sd	s8,32(sp)
    121e:	ec66                	sd	s9,24(sp)
    1220:	e86a                	sd	s10,16(sp)
    1222:	e46e                	sd	s11,8(sp)
    1224:	0005c483          	lbu	s1,0(a1)
    1228:	18048a63          	beqz	s1,13bc <vprintf+0x1b4>
    122c:	8a2a                	mv	s4,a0
    122e:	8ab2                	mv	s5,a2
    1230:	00158413          	addi	s0,a1,1
    1234:	4901                	li	s2,0
    1236:	02500993          	li	s3,37
    123a:	06400b93          	li	s7,100
    123e:	06c00c13          	li	s8,108
    1242:	07800c93          	li	s9,120
    1246:	07000d13          	li	s10,112
    124a:	00002db7          	lui	s11,0x2
    124e:	00002b37          	lui	s6,0x2
    1252:	ea0b0b13          	addi	s6,s6,-352 # 1ea0 <digits>
    1256:	a839                	j	1274 <vprintf+0x6c>
    1258:	85a6                	mv	a1,s1
    125a:	8552                	mv	a0,s4
    125c:	00000097          	auipc	ra,0x0
    1260:	ef4080e7          	jalr	-268(ra) # 1150 <putc>
    1264:	a019                	j	126a <vprintf+0x62>
    1266:	01390f63          	beq	s2,s3,1284 <vprintf+0x7c>
    126a:	0405                	addi	s0,s0,1
    126c:	fff44483          	lbu	s1,-1(s0)
    1270:	14048663          	beqz	s1,13bc <vprintf+0x1b4>
    1274:	0004879b          	sext.w	a5,s1
    1278:	fe0917e3          	bnez	s2,1266 <vprintf+0x5e>
    127c:	fd379ee3          	bne	a5,s3,1258 <vprintf+0x50>
    1280:	893e                	mv	s2,a5
    1282:	b7e5                	j	126a <vprintf+0x62>
    1284:	05778063          	beq	a5,s7,12c4 <vprintf+0xbc>
    1288:	05878c63          	beq	a5,s8,12e0 <vprintf+0xd8>
    128c:	07978863          	beq	a5,s9,12fc <vprintf+0xf4>
    1290:	09a78463          	beq	a5,s10,1318 <vprintf+0x110>
    1294:	07300713          	li	a4,115
    1298:	0ce78263          	beq	a5,a4,135c <vprintf+0x154>
    129c:	06300713          	li	a4,99
    12a0:	0ee78763          	beq	a5,a4,138e <vprintf+0x186>
    12a4:	11378163          	beq	a5,s3,13a6 <vprintf+0x19e>
    12a8:	85ce                	mv	a1,s3
    12aa:	8552                	mv	a0,s4
    12ac:	00000097          	auipc	ra,0x0
    12b0:	ea4080e7          	jalr	-348(ra) # 1150 <putc>
    12b4:	85a6                	mv	a1,s1
    12b6:	8552                	mv	a0,s4
    12b8:	00000097          	auipc	ra,0x0
    12bc:	e98080e7          	jalr	-360(ra) # 1150 <putc>
    12c0:	4901                	li	s2,0
    12c2:	b765                	j	126a <vprintf+0x62>
    12c4:	008a8493          	addi	s1,s5,8
    12c8:	4685                	li	a3,1
    12ca:	4629                	li	a2,10
    12cc:	000aa583          	lw	a1,0(s5)
    12d0:	8552                	mv	a0,s4
    12d2:	00000097          	auipc	ra,0x0
    12d6:	e9a080e7          	jalr	-358(ra) # 116c <printint>
    12da:	8aa6                	mv	s5,s1
    12dc:	4901                	li	s2,0
    12de:	b771                	j	126a <vprintf+0x62>
    12e0:	008a8493          	addi	s1,s5,8
    12e4:	4681                	li	a3,0
    12e6:	4629                	li	a2,10
    12e8:	000aa583          	lw	a1,0(s5)
    12ec:	8552                	mv	a0,s4
    12ee:	00000097          	auipc	ra,0x0
    12f2:	e7e080e7          	jalr	-386(ra) # 116c <printint>
    12f6:	8aa6                	mv	s5,s1
    12f8:	4901                	li	s2,0
    12fa:	bf85                	j	126a <vprintf+0x62>
    12fc:	008a8493          	addi	s1,s5,8
    1300:	4681                	li	a3,0
    1302:	4641                	li	a2,16
    1304:	000aa583          	lw	a1,0(s5)
    1308:	8552                	mv	a0,s4
    130a:	00000097          	auipc	ra,0x0
    130e:	e62080e7          	jalr	-414(ra) # 116c <printint>
    1312:	8aa6                	mv	s5,s1
    1314:	4901                	li	s2,0
    1316:	bf91                	j	126a <vprintf+0x62>
    1318:	008a8913          	addi	s2,s5,8
    131c:	000aba83          	ld	s5,0(s5)
    1320:	03000593          	li	a1,48
    1324:	8552                	mv	a0,s4
    1326:	00000097          	auipc	ra,0x0
    132a:	e2a080e7          	jalr	-470(ra) # 1150 <putc>
    132e:	85e6                	mv	a1,s9
    1330:	8552                	mv	a0,s4
    1332:	00000097          	auipc	ra,0x0
    1336:	e1e080e7          	jalr	-482(ra) # 1150 <putc>
    133a:	44c1                	li	s1,16
    133c:	03cad793          	srli	a5,s5,0x3c
    1340:	97da                	add	a5,a5,s6
    1342:	0007c583          	lbu	a1,0(a5)
    1346:	8552                	mv	a0,s4
    1348:	00000097          	auipc	ra,0x0
    134c:	e08080e7          	jalr	-504(ra) # 1150 <putc>
    1350:	0a92                	slli	s5,s5,0x4
    1352:	34fd                	addiw	s1,s1,-1
    1354:	f4e5                	bnez	s1,133c <vprintf+0x134>
    1356:	8aca                	mv	s5,s2
    1358:	4901                	li	s2,0
    135a:	bf01                	j	126a <vprintf+0x62>
    135c:	008a8913          	addi	s2,s5,8
    1360:	000ab483          	ld	s1,0(s5)
    1364:	c085                	beqz	s1,1384 <vprintf+0x17c>
    1366:	0004c583          	lbu	a1,0(s1) # 3000 <sample>
    136a:	c5b1                	beqz	a1,13b6 <vprintf+0x1ae>
    136c:	8552                	mv	a0,s4
    136e:	00000097          	auipc	ra,0x0
    1372:	de2080e7          	jalr	-542(ra) # 1150 <putc>
    1376:	0485                	addi	s1,s1,1
    1378:	0004c583          	lbu	a1,0(s1)
    137c:	f9e5                	bnez	a1,136c <vprintf+0x164>
    137e:	8aca                	mv	s5,s2
    1380:	4901                	li	s2,0
    1382:	b5e5                	j	126a <vprintf+0x62>
    1384:	e98d8493          	addi	s1,s11,-360 # 1e98 <mkdir+0x16a>
    1388:	02800593          	li	a1,40
    138c:	b7c5                	j	136c <vprintf+0x164>
    138e:	008a8493          	addi	s1,s5,8
    1392:	000ac583          	lbu	a1,0(s5)
    1396:	8552                	mv	a0,s4
    1398:	00000097          	auipc	ra,0x0
    139c:	db8080e7          	jalr	-584(ra) # 1150 <putc>
    13a0:	8aa6                	mv	s5,s1
    13a2:	4901                	li	s2,0
    13a4:	b5d9                	j	126a <vprintf+0x62>
    13a6:	85ce                	mv	a1,s3
    13a8:	8552                	mv	a0,s4
    13aa:	00000097          	auipc	ra,0x0
    13ae:	da6080e7          	jalr	-602(ra) # 1150 <putc>
    13b2:	4901                	li	s2,0
    13b4:	bd5d                	j	126a <vprintf+0x62>
    13b6:	8aca                	mv	s5,s2
    13b8:	4901                	li	s2,0
    13ba:	bd45                	j	126a <vprintf+0x62>
    13bc:	70a6                	ld	ra,104(sp)
    13be:	7406                	ld	s0,96(sp)
    13c0:	64e6                	ld	s1,88(sp)
    13c2:	6946                	ld	s2,80(sp)
    13c4:	69a6                	ld	s3,72(sp)
    13c6:	6a06                	ld	s4,64(sp)
    13c8:	7ae2                	ld	s5,56(sp)
    13ca:	7b42                	ld	s6,48(sp)
    13cc:	7ba2                	ld	s7,40(sp)
    13ce:	7c02                	ld	s8,32(sp)
    13d0:	6ce2                	ld	s9,24(sp)
    13d2:	6d42                	ld	s10,16(sp)
    13d4:	6da2                	ld	s11,8(sp)
    13d6:	6165                	addi	sp,sp,112
    13d8:	8082                	ret

00000000000013da <fprintf>:
    13da:	715d                	addi	sp,sp,-80
    13dc:	ec06                	sd	ra,24(sp)
    13de:	f032                	sd	a2,32(sp)
    13e0:	f436                	sd	a3,40(sp)
    13e2:	f83a                	sd	a4,48(sp)
    13e4:	fc3e                	sd	a5,56(sp)
    13e6:	e0c2                	sd	a6,64(sp)
    13e8:	e4c6                	sd	a7,72(sp)
    13ea:	1010                	addi	a2,sp,32
    13ec:	e432                	sd	a2,8(sp)
    13ee:	00000097          	auipc	ra,0x0
    13f2:	e1a080e7          	jalr	-486(ra) # 1208 <vprintf>
    13f6:	60e2                	ld	ra,24(sp)
    13f8:	6161                	addi	sp,sp,80
    13fa:	8082                	ret

00000000000013fc <printf>:
    13fc:	711d                	addi	sp,sp,-96
    13fe:	ec06                	sd	ra,24(sp)
    1400:	f42e                	sd	a1,40(sp)
    1402:	f832                	sd	a2,48(sp)
    1404:	fc36                	sd	a3,56(sp)
    1406:	e0ba                	sd	a4,64(sp)
    1408:	e4be                	sd	a5,72(sp)
    140a:	e8c2                	sd	a6,80(sp)
    140c:	ecc6                	sd	a7,88(sp)
    140e:	1030                	addi	a2,sp,40
    1410:	e432                	sd	a2,8(sp)
    1412:	85aa                	mv	a1,a0
    1414:	4505                	li	a0,1
    1416:	00000097          	auipc	ra,0x0
    141a:	df2080e7          	jalr	-526(ra) # 1208 <vprintf>
    141e:	60e2                	ld	ra,24(sp)
    1420:	6125                	addi	sp,sp,96
    1422:	8082                	ret

0000000000001424 <cksum>:
    1424:	cdb1                	beqz	a1,1480 <cksum+0x5c>
    1426:	00b50833          	add	a6,a0,a1
    142a:	4781                	li	a5,0
    142c:	00002637          	lui	a2,0x2
    1430:	eb860613          	addi	a2,a2,-328 # 1eb8 <crctab>
    1434:	0505                	addi	a0,a0,1
    1436:	0087969b          	slliw	a3,a5,0x8
    143a:	0187d71b          	srliw	a4,a5,0x18
    143e:	fff54783          	lbu	a5,-1(a0)
    1442:	8f3d                	xor	a4,a4,a5
    1444:	1702                	slli	a4,a4,0x20
    1446:	9301                	srli	a4,a4,0x20
    1448:	070a                	slli	a4,a4,0x2
    144a:	9732                	add	a4,a4,a2
    144c:	431c                	lw	a5,0(a4)
    144e:	8fb5                	xor	a5,a5,a3
    1450:	2781                	sext.w	a5,a5
    1452:	fea811e3          	bne	a6,a0,1434 <cksum+0x10>
    1456:	00002637          	lui	a2,0x2
    145a:	eb860613          	addi	a2,a2,-328 # 1eb8 <crctab>
    145e:	0ff5f693          	andi	a3,a1,255
    1462:	81a1                	srli	a1,a1,0x8
    1464:	0087951b          	slliw	a0,a5,0x8
    1468:	0187d71b          	srliw	a4,a5,0x18
    146c:	8f35                	xor	a4,a4,a3
    146e:	070a                	slli	a4,a4,0x2
    1470:	9732                	add	a4,a4,a2
    1472:	431c                	lw	a5,0(a4)
    1474:	8fa9                	xor	a5,a5,a0
    1476:	2781                	sext.w	a5,a5
    1478:	f1fd                	bnez	a1,145e <cksum+0x3a>
    147a:	fff7c513          	not	a0,a5
    147e:	8082                	ret
    1480:	4781                	li	a5,0
    1482:	bfe5                	j	147a <cksum+0x56>

0000000000001484 <swap_bytes>:
    1484:	ce19                	beqz	a2,14a2 <swap_bytes+0x1e>
    1486:	87aa                	mv	a5,a0
    1488:	962a                	add	a2,a2,a0
    148a:	0007c703          	lbu	a4,0(a5)
    148e:	0005c683          	lbu	a3,0(a1)
    1492:	00d78023          	sb	a3,0(a5)
    1496:	00e58023          	sb	a4,0(a1)
    149a:	0785                	addi	a5,a5,1
    149c:	0585                	addi	a1,a1,1
    149e:	fec796e3          	bne	a5,a2,148a <swap_bytes+0x6>
    14a2:	8082                	ret

00000000000014a4 <random_init>:
    14a4:	7139                	addi	sp,sp,-64
    14a6:	fc06                	sd	ra,56(sp)
    14a8:	f822                	sd	s0,48(sp)
    14aa:	f426                	sd	s1,40(sp)
    14ac:	f04a                	sd	s2,32(sp)
    14ae:	ec4e                	sd	s3,24(sp)
    14b0:	e852                	sd	s4,16(sp)
    14b2:	c62a                	sw	a0,12(sp)
    14b4:	000037b7          	lui	a5,0x3
    14b8:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    14bc:	eca5                	bnez	s1,1534 <random_init+0x90>
    14be:	00003737          	lui	a4,0x3
    14c2:	10070913          	addi	s2,a4,256 # 3100 <s>
    14c6:	10070713          	addi	a4,a4,256
    14ca:	87a6                	mv	a5,s1
    14cc:	10000693          	li	a3,256
    14d0:	00f70023          	sb	a5,0(a4)
    14d4:	2785                	addiw	a5,a5,1
    14d6:	0705                	addi	a4,a4,1
    14d8:	fed79ce3          	bne	a5,a3,14d0 <random_init+0x2c>
    14dc:	4401                	li	s0,0
    14de:	000039b7          	lui	s3,0x3
    14e2:	10098993          	addi	s3,s3,256 # 3100 <s>
    14e6:	10000a13          	li	s4,256
    14ea:	0034f793          	andi	a5,s1,3
    14ee:	0818                	addi	a4,sp,16
    14f0:	97ba                	add	a5,a5,a4
    14f2:	ffc7c783          	lbu	a5,-4(a5)
    14f6:	00094703          	lbu	a4,0(s2)
    14fa:	9fb9                	addw	a5,a5,a4
    14fc:	9c3d                	addw	s0,s0,a5
    14fe:	0ff47413          	andi	s0,s0,255
    1502:	4605                	li	a2,1
    1504:	008985b3          	add	a1,s3,s0
    1508:	854a                	mv	a0,s2
    150a:	00000097          	auipc	ra,0x0
    150e:	f7a080e7          	jalr	-134(ra) # 1484 <swap_bytes>
    1512:	2485                	addiw	s1,s1,1
    1514:	0905                	addi	s2,s2,1
    1516:	fd449ae3          	bne	s1,s4,14ea <random_init+0x46>
    151a:	000037b7          	lui	a5,0x3
    151e:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1522:	000037b7          	lui	a5,0x3
    1526:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    152a:	000037b7          	lui	a5,0x3
    152e:	4705                	li	a4,1
    1530:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1534:	70e2                	ld	ra,56(sp)
    1536:	7442                	ld	s0,48(sp)
    1538:	74a2                	ld	s1,40(sp)
    153a:	7902                	ld	s2,32(sp)
    153c:	69e2                	ld	s3,24(sp)
    153e:	6a42                	ld	s4,16(sp)
    1540:	6121                	addi	sp,sp,64
    1542:	8082                	ret

0000000000001544 <random_bytes>:
    1544:	7139                	addi	sp,sp,-64
    1546:	fc06                	sd	ra,56(sp)
    1548:	f822                	sd	s0,48(sp)
    154a:	f426                	sd	s1,40(sp)
    154c:	f04a                	sd	s2,32(sp)
    154e:	ec4e                	sd	s3,24(sp)
    1550:	e852                	sd	s4,16(sp)
    1552:	e456                	sd	s5,8(sp)
    1554:	e05a                	sd	s6,0(sp)
    1556:	892a                	mv	s2,a0
    1558:	8aae                	mv	s5,a1
    155a:	000037b7          	lui	a5,0x3
    155e:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1562:	c3c1                	beqz	a5,15e2 <random_bytes+0x9e>
    1564:	060a8563          	beqz	s5,15ce <random_bytes+0x8a>
    1568:	9aca                	add	s5,s5,s2
    156a:	00003a37          	lui	s4,0x3
    156e:	000034b7          	lui	s1,0x3
    1572:	10048493          	addi	s1,s1,256 # 3100 <s>
    1576:	000039b7          	lui	s3,0x3
    157a:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    157e:	2505                	addiw	a0,a0,1
    1580:	0ff57513          	andi	a0,a0,255
    1584:	0eaa0aa3          	sb	a0,245(s4)
    1588:	00a48b33          	add	s6,s1,a0
    158c:	000b4403          	lbu	s0,0(s6)
    1590:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1594:	9c3d                	addw	s0,s0,a5
    1596:	0ff47413          	andi	s0,s0,255
    159a:	0e898a23          	sb	s0,244(s3)
    159e:	4605                	li	a2,1
    15a0:	008485b3          	add	a1,s1,s0
    15a4:	855a                	mv	a0,s6
    15a6:	00000097          	auipc	ra,0x0
    15aa:	ede080e7          	jalr	-290(ra) # 1484 <swap_bytes>
    15ae:	9426                	add	s0,s0,s1
    15b0:	000b4783          	lbu	a5,0(s6)
    15b4:	00044703          	lbu	a4,0(s0)
    15b8:	9fb9                	addw	a5,a5,a4
    15ba:	0ff7f793          	andi	a5,a5,255
    15be:	97a6                	add	a5,a5,s1
    15c0:	0007c783          	lbu	a5,0(a5)
    15c4:	00f90023          	sb	a5,0(s2)
    15c8:	0905                	addi	s2,s2,1
    15ca:	fb2a98e3          	bne	s5,s2,157a <random_bytes+0x36>
    15ce:	70e2                	ld	ra,56(sp)
    15d0:	7442                	ld	s0,48(sp)
    15d2:	74a2                	ld	s1,40(sp)
    15d4:	7902                	ld	s2,32(sp)
    15d6:	69e2                	ld	s3,24(sp)
    15d8:	6a42                	ld	s4,16(sp)
    15da:	6aa2                	ld	s5,8(sp)
    15dc:	6b02                	ld	s6,0(sp)
    15de:	6121                	addi	sp,sp,64
    15e0:	8082                	ret
    15e2:	4501                	li	a0,0
    15e4:	00000097          	auipc	ra,0x0
    15e8:	ec0080e7          	jalr	-320(ra) # 14a4 <random_init>
    15ec:	bfa5                	j	1564 <random_bytes+0x20>

00000000000015ee <random_ulong>:
    15ee:	1101                	addi	sp,sp,-32
    15f0:	ec06                	sd	ra,24(sp)
    15f2:	45a1                	li	a1,8
    15f4:	0028                	addi	a0,sp,8
    15f6:	00000097          	auipc	ra,0x0
    15fa:	f4e080e7          	jalr	-178(ra) # 1544 <random_bytes>
    15fe:	6522                	ld	a0,8(sp)
    1600:	60e2                	ld	ra,24(sp)
    1602:	6105                	addi	sp,sp,32
    1604:	8082                	ret

0000000000001606 <shuffle>:
    1606:	c9b9                	beqz	a1,165c <shuffle+0x56>
    1608:	7179                	addi	sp,sp,-48
    160a:	f406                	sd	ra,40(sp)
    160c:	f022                	sd	s0,32(sp)
    160e:	ec26                	sd	s1,24(sp)
    1610:	e84a                	sd	s2,16(sp)
    1612:	e44e                	sd	s3,8(sp)
    1614:	e052                	sd	s4,0(sp)
    1616:	8a2a                	mv	s4,a0
    1618:	89ae                	mv	s3,a1
    161a:	84b2                	mv	s1,a2
    161c:	892a                	mv	s2,a0
    161e:	4401                	li	s0,0
    1620:	00000097          	auipc	ra,0x0
    1624:	fce080e7          	jalr	-50(ra) # 15ee <random_ulong>
    1628:	408985b3          	sub	a1,s3,s0
    162c:	02b575b3          	remu	a1,a0,a1
    1630:	95a2                	add	a1,a1,s0
    1632:	029585b3          	mul	a1,a1,s1
    1636:	8626                	mv	a2,s1
    1638:	95d2                	add	a1,a1,s4
    163a:	854a                	mv	a0,s2
    163c:	00000097          	auipc	ra,0x0
    1640:	e48080e7          	jalr	-440(ra) # 1484 <swap_bytes>
    1644:	0405                	addi	s0,s0,1
    1646:	9926                	add	s2,s2,s1
    1648:	fc899ce3          	bne	s3,s0,1620 <shuffle+0x1a>
    164c:	70a2                	ld	ra,40(sp)
    164e:	7402                	ld	s0,32(sp)
    1650:	64e2                	ld	s1,24(sp)
    1652:	6942                	ld	s2,16(sp)
    1654:	69a2                	ld	s3,8(sp)
    1656:	6a02                	ld	s4,0(sp)
    1658:	6145                	addi	sp,sp,48
    165a:	8082                	ret
    165c:	8082                	ret

000000000000165e <arc4_init>:
    165e:	100500a3          	sb	zero,257(a0)
    1662:	10050023          	sb	zero,256(a0)
    1666:	4781                	li	a5,0
    1668:	10000693          	li	a3,256
    166c:	00f50733          	add	a4,a0,a5
    1670:	00f70023          	sb	a5,0(a4)
    1674:	0785                	addi	a5,a5,1
    1676:	fed79be3          	bne	a5,a3,166c <arc4_init+0xe>
    167a:	86aa                	mv	a3,a0
    167c:	10050e13          	addi	t3,a0,256
    1680:	4701                	li	a4,0
    1682:	4781                	li	a5,0
    1684:	0006c883          	lbu	a7,0(a3)
    1688:	00f58833          	add	a6,a1,a5
    168c:	00084803          	lbu	a6,0(a6)
    1690:	00e8873b          	addw	a4,a7,a4
    1694:	00e8073b          	addw	a4,a6,a4
    1698:	0ff77713          	andi	a4,a4,255
    169c:	00e50833          	add	a6,a0,a4
    16a0:	00084303          	lbu	t1,0(a6)
    16a4:	00668023          	sb	t1,0(a3)
    16a8:	01180023          	sb	a7,0(a6)
    16ac:	0785                	addi	a5,a5,1
    16ae:	00c7b833          	sltu	a6,a5,a2
    16b2:	41000833          	neg	a6,a6
    16b6:	0107f7b3          	and	a5,a5,a6
    16ba:	0685                	addi	a3,a3,1
    16bc:	fdc694e3          	bne	a3,t3,1684 <arc4_init+0x26>
    16c0:	8082                	ret

00000000000016c2 <arc4_crypt>:
    16c2:	10054e03          	lbu	t3,256(a0)
    16c6:	10154803          	lbu	a6,257(a0)
    16ca:	fff60e93          	addi	t4,a2,-1
    16ce:	c225                	beqz	a2,172e <arc4_crypt+0x6c>
    16d0:	00c588b3          	add	a7,a1,a2
    16d4:	86ae                	mv	a3,a1
    16d6:	001e031b          	addiw	t1,t3,1
    16da:	40b3033b          	subw	t1,t1,a1
    16de:	00d3073b          	addw	a4,t1,a3
    16e2:	0ff77713          	andi	a4,a4,255
    16e6:	972a                	add	a4,a4,a0
    16e8:	00074603          	lbu	a2,0(a4)
    16ec:	0106083b          	addw	a6,a2,a6
    16f0:	0ff87813          	andi	a6,a6,255
    16f4:	010507b3          	add	a5,a0,a6
    16f8:	0007c583          	lbu	a1,0(a5)
    16fc:	00b70023          	sb	a1,0(a4)
    1700:	00c78023          	sb	a2,0(a5)
    1704:	0685                	addi	a3,a3,1
    1706:	00074783          	lbu	a5,0(a4)
    170a:	9fb1                	addw	a5,a5,a2
    170c:	0ff7f793          	andi	a5,a5,255
    1710:	97aa                	add	a5,a5,a0
    1712:	0007c783          	lbu	a5,0(a5)
    1716:	fff6c703          	lbu	a4,-1(a3)
    171a:	8fb9                	xor	a5,a5,a4
    171c:	fef68fa3          	sb	a5,-1(a3)
    1720:	fb169fe3          	bne	a3,a7,16de <arc4_crypt+0x1c>
    1724:	2e85                	addiw	t4,t4,1
    1726:	01ce8e3b          	addw	t3,t4,t3
    172a:	0ffe7e13          	andi	t3,t3,255
    172e:	11c50023          	sb	t3,256(a0)
    1732:	110500a3          	sb	a6,257(a0)
    1736:	8082                	ret

0000000000001738 <_main>:
    1738:	1141                	addi	sp,sp,-16
    173a:	e406                	sd	ra,8(sp)
    173c:	00000097          	auipc	ra,0x0
    1740:	8c4080e7          	jalr	-1852(ra) # 1000 <main>
    1744:	4501                	li	a0,0
    1746:	00000097          	auipc	ra,0x0
    174a:	578080e7          	jalr	1400(ra) # 1cbe <exit>
    174e:	60a2                	ld	ra,8(sp)
    1750:	0141                	addi	sp,sp,16
    1752:	8082                	ret

0000000000001754 <strcmp>:
    1754:	00054783          	lbu	a5,0(a0)
    1758:	cb91                	beqz	a5,176c <strcmp+0x18>
    175a:	0005c703          	lbu	a4,0(a1)
    175e:	00f71763          	bne	a4,a5,176c <strcmp+0x18>
    1762:	0505                	addi	a0,a0,1
    1764:	0585                	addi	a1,a1,1
    1766:	00054783          	lbu	a5,0(a0)
    176a:	fbe5                	bnez	a5,175a <strcmp+0x6>
    176c:	0005c503          	lbu	a0,0(a1)
    1770:	40a7853b          	subw	a0,a5,a0
    1774:	8082                	ret

0000000000001776 <strcpy>:
    1776:	87aa                	mv	a5,a0
    1778:	0585                	addi	a1,a1,1
    177a:	0785                	addi	a5,a5,1
    177c:	fff5c703          	lbu	a4,-1(a1)
    1780:	fee78fa3          	sb	a4,-1(a5)
    1784:	fb75                	bnez	a4,1778 <strcpy+0x2>
    1786:	8082                	ret

0000000000001788 <strlen>:
    1788:	00054783          	lbu	a5,0(a0)
    178c:	cf81                	beqz	a5,17a4 <strlen+0x1c>
    178e:	0505                	addi	a0,a0,1
    1790:	87aa                	mv	a5,a0
    1792:	4685                	li	a3,1
    1794:	9e89                	subw	a3,a3,a0
    1796:	00f6853b          	addw	a0,a3,a5
    179a:	0785                	addi	a5,a5,1
    179c:	fff7c703          	lbu	a4,-1(a5)
    17a0:	fb7d                	bnez	a4,1796 <strlen+0xe>
    17a2:	8082                	ret
    17a4:	4501                	li	a0,0
    17a6:	8082                	ret

00000000000017a8 <memset>:
    17a8:	ca19                	beqz	a2,17be <memset+0x16>
    17aa:	87aa                	mv	a5,a0
    17ac:	1602                	slli	a2,a2,0x20
    17ae:	9201                	srli	a2,a2,0x20
    17b0:	00a60733          	add	a4,a2,a0
    17b4:	00b78023          	sb	a1,0(a5)
    17b8:	0785                	addi	a5,a5,1
    17ba:	fee79de3          	bne	a5,a4,17b4 <memset+0xc>
    17be:	8082                	ret

00000000000017c0 <memcmp>:
    17c0:	1101                	addi	sp,sp,-32
    17c2:	ec06                	sd	ra,24(sp)
    17c4:	e822                	sd	s0,16(sp)
    17c6:	e426                	sd	s1,8(sp)
    17c8:	e04a                	sd	s2,0(sp)
    17ca:	892a                	mv	s2,a0
    17cc:	842e                	mv	s0,a1
    17ce:	84b2                	mv	s1,a2
    17d0:	c915                	beqz	a0,1804 <memcmp+0x44>
    17d2:	c5ad                	beqz	a1,183c <memcmp+0x7c>
    17d4:	fff60713          	addi	a4,a2,-1
    17d8:	c645                	beqz	a2,1880 <memcmp+0xc0>
    17da:	87ca                	mv	a5,s2
    17dc:	00190613          	addi	a2,s2,1
    17e0:	963a                	add	a2,a2,a4
    17e2:	0007c683          	lbu	a3,0(a5)
    17e6:	00044703          	lbu	a4,0(s0)
    17ea:	08e69463          	bne	a3,a4,1872 <memcmp+0xb2>
    17ee:	0785                	addi	a5,a5,1
    17f0:	0405                	addi	s0,s0,1
    17f2:	fec798e3          	bne	a5,a2,17e2 <memcmp+0x22>
    17f6:	4501                	li	a0,0
    17f8:	60e2                	ld	ra,24(sp)
    17fa:	6442                	ld	s0,16(sp)
    17fc:	64a2                	ld	s1,8(sp)
    17fe:	6902                	ld	s2,0(sp)
    1800:	6105                	addi	sp,sp,32
    1802:	8082                	ret
    1804:	4501                	li	a0,0
    1806:	da6d                	beqz	a2,17f8 <memcmp+0x38>
    1808:	03200693          	li	a3,50
    180c:	00002637          	lui	a2,0x2
    1810:	2b860613          	addi	a2,a2,696 # 22b8 <crctab+0x400>
    1814:	000025b7          	lui	a1,0x2
    1818:	2c858593          	addi	a1,a1,712 # 22c8 <crctab+0x410>
    181c:	4509                	li	a0,2
    181e:	00000097          	auipc	ra,0x0
    1822:	bbc080e7          	jalr	-1092(ra) # 13da <fprintf>
    1826:	650d                	lui	a0,0x3
    1828:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    182c:	00000097          	auipc	ra,0x0
    1830:	492080e7          	jalr	1170(ra) # 1cbe <exit>
    1834:	fff48713          	addi	a4,s1,-1
    1838:	f04d                	bnez	s0,17da <memcmp+0x1a>
    183a:	a011                	j	183e <memcmp+0x7e>
    183c:	c221                	beqz	a2,187c <memcmp+0xbc>
    183e:	03300693          	li	a3,51
    1842:	00002637          	lui	a2,0x2
    1846:	2b860613          	addi	a2,a2,696 # 22b8 <crctab+0x400>
    184a:	000025b7          	lui	a1,0x2
    184e:	31058593          	addi	a1,a1,784 # 2310 <crctab+0x458>
    1852:	4509                	li	a0,2
    1854:	00000097          	auipc	ra,0x0
    1858:	b86080e7          	jalr	-1146(ra) # 13da <fprintf>
    185c:	650d                	lui	a0,0x3
    185e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1862:	00000097          	auipc	ra,0x0
    1866:	45c080e7          	jalr	1116(ra) # 1cbe <exit>
    186a:	fff48713          	addi	a4,s1,-1
    186e:	4401                	li	s0,0
    1870:	b7ad                	j	17da <memcmp+0x1a>
    1872:	4505                	li	a0,1
    1874:	f8d762e3          	bltu	a4,a3,17f8 <memcmp+0x38>
    1878:	557d                	li	a0,-1
    187a:	bfbd                	j	17f8 <memcmp+0x38>
    187c:	4501                	li	a0,0
    187e:	bfad                	j	17f8 <memcmp+0x38>
    1880:	4501                	li	a0,0
    1882:	bf9d                	j	17f8 <memcmp+0x38>

0000000000001884 <memcpy>:
    1884:	1101                	addi	sp,sp,-32
    1886:	ec06                	sd	ra,24(sp)
    1888:	e822                	sd	s0,16(sp)
    188a:	e426                	sd	s1,8(sp)
    188c:	e04a                	sd	s2,0(sp)
    188e:	84aa                	mv	s1,a0
    1890:	842e                	mv	s0,a1
    1892:	8932                	mv	s2,a2
    1894:	c51d                	beqz	a0,18c2 <memcpy+0x3e>
    1896:	c1ad                	beqz	a1,18f8 <memcpy+0x74>
    1898:	fff60693          	addi	a3,a2,-1
    189c:	ce01                	beqz	a2,18b4 <memcpy+0x30>
    189e:	0685                	addi	a3,a3,1
    18a0:	96a6                	add	a3,a3,s1
    18a2:	87a6                	mv	a5,s1
    18a4:	0405                	addi	s0,s0,1
    18a6:	0785                	addi	a5,a5,1
    18a8:	fff44703          	lbu	a4,-1(s0)
    18ac:	fee78fa3          	sb	a4,-1(a5)
    18b0:	fed79ae3          	bne	a5,a3,18a4 <memcpy+0x20>
    18b4:	8526                	mv	a0,s1
    18b6:	60e2                	ld	ra,24(sp)
    18b8:	6442                	ld	s0,16(sp)
    18ba:	64a2                	ld	s1,8(sp)
    18bc:	6902                	ld	s2,0(sp)
    18be:	6105                	addi	sp,sp,32
    18c0:	8082                	ret
    18c2:	da6d                	beqz	a2,18b4 <memcpy+0x30>
    18c4:	04000693          	li	a3,64
    18c8:	00002637          	lui	a2,0x2
    18cc:	2b860613          	addi	a2,a2,696 # 22b8 <crctab+0x400>
    18d0:	000025b7          	lui	a1,0x2
    18d4:	35858593          	addi	a1,a1,856 # 2358 <crctab+0x4a0>
    18d8:	4509                	li	a0,2
    18da:	00000097          	auipc	ra,0x0
    18de:	b00080e7          	jalr	-1280(ra) # 13da <fprintf>
    18e2:	650d                	lui	a0,0x3
    18e4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18e8:	00000097          	auipc	ra,0x0
    18ec:	3d6080e7          	jalr	982(ra) # 1cbe <exit>
    18f0:	fff90693          	addi	a3,s2,-1
    18f4:	f44d                	bnez	s0,189e <memcpy+0x1a>
    18f6:	a011                	j	18fa <memcpy+0x76>
    18f8:	de55                	beqz	a2,18b4 <memcpy+0x30>
    18fa:	04100693          	li	a3,65
    18fe:	00002637          	lui	a2,0x2
    1902:	2b860613          	addi	a2,a2,696 # 22b8 <crctab+0x400>
    1906:	000025b7          	lui	a1,0x2
    190a:	3a058593          	addi	a1,a1,928 # 23a0 <crctab+0x4e8>
    190e:	4509                	li	a0,2
    1910:	00000097          	auipc	ra,0x0
    1914:	aca080e7          	jalr	-1334(ra) # 13da <fprintf>
    1918:	650d                	lui	a0,0x3
    191a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    191e:	00000097          	auipc	ra,0x0
    1922:	3a0080e7          	jalr	928(ra) # 1cbe <exit>
    1926:	fff90693          	addi	a3,s2,-1
    192a:	4401                	li	s0,0
    192c:	bf8d                	j	189e <memcpy+0x1a>

000000000000192e <itoa>:
    192e:	1101                	addi	sp,sp,-32
    1930:	ec06                	sd	ra,24(sp)
    1932:	e822                	sd	s0,16(sp)
    1934:	e426                	sd	s1,8(sp)
    1936:	842a                	mv	s0,a0
    1938:	41f5d71b          	sraiw	a4,a1,0x1f
    193c:	00e5c7b3          	xor	a5,a1,a4
    1940:	9f99                	subw	a5,a5,a4
    1942:	84aa                	mv	s1,a0
    1944:	862a                	mv	a2,a0
    1946:	4681                	li	a3,0
    1948:	4529                	li	a0,10
    194a:	4825                	li	a6,9
    194c:	88b6                	mv	a7,a3
    194e:	2685                	addiw	a3,a3,1
    1950:	02a7e73b          	remw	a4,a5,a0
    1954:	0307071b          	addiw	a4,a4,48
    1958:	00e60023          	sb	a4,0(a2)
    195c:	873e                	mv	a4,a5
    195e:	02a7c7bb          	divw	a5,a5,a0
    1962:	0605                	addi	a2,a2,1
    1964:	fee844e3          	blt	a6,a4,194c <itoa+0x1e>
    1968:	0405c863          	bltz	a1,19b8 <itoa+0x8a>
    196c:	96a2                	add	a3,a3,s0
    196e:	00068023          	sb	zero,0(a3)
    1972:	8522                	mv	a0,s0
    1974:	00000097          	auipc	ra,0x0
    1978:	e14080e7          	jalr	-492(ra) # 1788 <strlen>
    197c:	fff5071b          	addiw	a4,a0,-1
    1980:	02e05763          	blez	a4,19ae <itoa+0x80>
    1984:	9722                	add	a4,a4,s0
    1986:	4681                	li	a3,0
    1988:	0004c783          	lbu	a5,0(s1)
    198c:	00074603          	lbu	a2,0(a4)
    1990:	00c48023          	sb	a2,0(s1)
    1994:	00f70023          	sb	a5,0(a4)
    1998:	0016879b          	addiw	a5,a3,1
    199c:	0007869b          	sext.w	a3,a5
    19a0:	0485                	addi	s1,s1,1
    19a2:	177d                	addi	a4,a4,-1
    19a4:	fff7c793          	not	a5,a5
    19a8:	9fa9                	addw	a5,a5,a0
    19aa:	fcf6cfe3          	blt	a3,a5,1988 <itoa+0x5a>
    19ae:	60e2                	ld	ra,24(sp)
    19b0:	6442                	ld	s0,16(sp)
    19b2:	64a2                	ld	s1,8(sp)
    19b4:	6105                	addi	sp,sp,32
    19b6:	8082                	ret
    19b8:	96a2                	add	a3,a3,s0
    19ba:	02d00793          	li	a5,45
    19be:	00f68023          	sb	a5,0(a3)
    19c2:	0028869b          	addiw	a3,a7,2
    19c6:	b75d                	j	196c <itoa+0x3e>

00000000000019c8 <atoi>:
    19c8:	00054783          	lbu	a5,0(a0)
    19cc:	02000713          	li	a4,32
    19d0:	00e79763          	bne	a5,a4,19de <atoi+0x16>
    19d4:	0505                	addi	a0,a0,1
    19d6:	00054783          	lbu	a5,0(a0)
    19da:	fee78de3          	beq	a5,a4,19d4 <atoi+0xc>
    19de:	02b00713          	li	a4,43
    19e2:	04e78663          	beq	a5,a4,1a2e <atoi+0x66>
    19e6:	02d00713          	li	a4,45
    19ea:	4805                	li	a6,1
    19ec:	04e78463          	beq	a5,a4,1a34 <atoi+0x6c>
    19f0:	00054683          	lbu	a3,0(a0)
    19f4:	fd06879b          	addiw	a5,a3,-48
    19f8:	0ff7f793          	andi	a5,a5,255
    19fc:	4725                	li	a4,9
    19fe:	02f76e63          	bltu	a4,a5,1a3a <atoi+0x72>
    1a02:	4601                	li	a2,0
    1a04:	45a5                	li	a1,9
    1a06:	0505                	addi	a0,a0,1
    1a08:	0026179b          	slliw	a5,a2,0x2
    1a0c:	9fb1                	addw	a5,a5,a2
    1a0e:	0017979b          	slliw	a5,a5,0x1
    1a12:	9fb5                	addw	a5,a5,a3
    1a14:	fd07861b          	addiw	a2,a5,-48
    1a18:	00054683          	lbu	a3,0(a0)
    1a1c:	fd06871b          	addiw	a4,a3,-48
    1a20:	0ff77713          	andi	a4,a4,255
    1a24:	fee5f1e3          	bgeu	a1,a4,1a06 <atoi+0x3e>
    1a28:	02c8053b          	mulw	a0,a6,a2
    1a2c:	8082                	ret
    1a2e:	0505                	addi	a0,a0,1
    1a30:	4805                	li	a6,1
    1a32:	bf7d                	j	19f0 <atoi+0x28>
    1a34:	0505                	addi	a0,a0,1
    1a36:	587d                	li	a6,-1
    1a38:	bf65                	j	19f0 <atoi+0x28>
    1a3a:	4601                	li	a2,0
    1a3c:	b7f5                	j	1a28 <atoi+0x60>

0000000000001a3e <check_file_handle>:
    1a3e:	d8010113          	addi	sp,sp,-640
    1a42:	26113c23          	sd	ra,632(sp)
    1a46:	26813823          	sd	s0,624(sp)
    1a4a:	26913423          	sd	s1,616(sp)
    1a4e:	27213023          	sd	s2,608(sp)
    1a52:	25313c23          	sd	s3,600(sp)
    1a56:	25413823          	sd	s4,592(sp)
    1a5a:	25513423          	sd	s5,584(sp)
    1a5e:	25613023          	sd	s6,576(sp)
    1a62:	23713c23          	sd	s7,568(sp)
    1a66:	23813823          	sd	s8,560(sp)
    1a6a:	23913423          	sd	s9,552(sp)
    1a6e:	23a13023          	sd	s10,544(sp)
    1a72:	21b13c23          	sd	s11,536(sp)
    1a76:	8baa                	mv	s7,a0
    1a78:	8a2e                	mv	s4,a1
    1a7a:	8c32                	mv	s8,a2
    1a7c:	89b6                	mv	s3,a3
    1a7e:	040c                	addi	a1,sp,512
    1a80:	00000097          	auipc	ra,0x0
    1a84:	28e080e7          	jalr	654(ra) # 1d0e <fstat>
    1a88:	20813603          	ld	a2,520(sp)
    1a8c:	03361163          	bne	a2,s3,1aae <check_file_handle+0x70>
    1a90:	06098763          	beqz	s3,1afe <check_file_handle+0xc0>
    1a94:	4901                	li	s2,0
    1a96:	20000a93          	li	s5,512
    1a9a:	00002cb7          	lui	s9,0x2
    1a9e:	00002db7          	lui	s11,0x2
    1aa2:	6b0d                	lui	s6,0x3
    1aa4:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1aa8:	00002d37          	lui	s10,0x2
    1aac:	aa39                	j	1bca <check_file_handle+0x18c>
    1aae:	86ce                	mv	a3,s3
    1ab0:	85d2                	mv	a1,s4
    1ab2:	00002537          	lui	a0,0x2
    1ab6:	3e850513          	addi	a0,a0,1000 # 23e8 <crctab+0x530>
    1aba:	00000097          	auipc	ra,0x0
    1abe:	942080e7          	jalr	-1726(ra) # 13fc <printf>
    1ac2:	fc0999e3          	bnez	s3,1a94 <check_file_handle+0x56>
    1ac6:	20813683          	ld	a3,520(sp)
    1aca:	03368a63          	beq	a3,s3,1afe <check_file_handle+0xc0>
    1ace:	0a600813          	li	a6,166
    1ad2:	000027b7          	lui	a5,0x2
    1ad6:	2b878793          	addi	a5,a5,696 # 22b8 <crctab+0x400>
    1ada:	874e                	mv	a4,s3
    1adc:	8652                	mv	a2,s4
    1ade:	000025b7          	lui	a1,0x2
    1ae2:	4b858593          	addi	a1,a1,1208 # 24b8 <crctab+0x600>
    1ae6:	4509                	li	a0,2
    1ae8:	00000097          	auipc	ra,0x0
    1aec:	8f2080e7          	jalr	-1806(ra) # 13da <fprintf>
    1af0:	650d                	lui	a0,0x3
    1af2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1af6:	00000097          	auipc	ra,0x0
    1afa:	1c8080e7          	jalr	456(ra) # 1cbe <exit>
    1afe:	85d2                	mv	a1,s4
    1b00:	00002537          	lui	a0,0x2
    1b04:	50050513          	addi	a0,a0,1280 # 2500 <crctab+0x648>
    1b08:	00000097          	auipc	ra,0x0
    1b0c:	8f4080e7          	jalr	-1804(ra) # 13fc <printf>
    1b10:	27813083          	ld	ra,632(sp)
    1b14:	27013403          	ld	s0,624(sp)
    1b18:	26813483          	ld	s1,616(sp)
    1b1c:	26013903          	ld	s2,608(sp)
    1b20:	25813983          	ld	s3,600(sp)
    1b24:	25013a03          	ld	s4,592(sp)
    1b28:	24813a83          	ld	s5,584(sp)
    1b2c:	24013b03          	ld	s6,576(sp)
    1b30:	23813b83          	ld	s7,568(sp)
    1b34:	23013c03          	ld	s8,560(sp)
    1b38:	22813c83          	ld	s9,552(sp)
    1b3c:	22013d03          	ld	s10,544(sp)
    1b40:	21813d83          	ld	s11,536(sp)
    1b44:	28010113          	addi	sp,sp,640
    1b48:	8082                	ret
    1b4a:	09d00893          	li	a7,157
    1b4e:	2b8c8813          	addi	a6,s9,696 # 22b8 <crctab+0x400>
    1b52:	87aa                	mv	a5,a0
    1b54:	8752                	mv	a4,s4
    1b56:	86ca                	mv	a3,s2
    1b58:	8622                	mv	a2,s0
    1b5a:	418d8593          	addi	a1,s11,1048 # 2418 <crctab+0x560>
    1b5e:	4509                	li	a0,2
    1b60:	00000097          	auipc	ra,0x0
    1b64:	87a080e7          	jalr	-1926(ra) # 13da <fprintf>
    1b68:	855a                	mv	a0,s6
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	154080e7          	jalr	340(ra) # 1cbe <exit>
    1b72:	a89d                	j	1be8 <check_file_handle+0x1aa>
    1b74:	00160593          	addi	a1,a2,1
    1b78:	0285f163          	bgeu	a1,s0,1b9a <check_file_handle+0x15c>
    1b7c:	00c10733          	add	a4,sp,a2
    1b80:	00b487b3          	add	a5,s1,a1
    1b84:	00174683          	lbu	a3,1(a4)
    1b88:	0007c783          	lbu	a5,0(a5)
    1b8c:	00f68763          	beq	a3,a5,1b9a <check_file_handle+0x15c>
    1b90:	0585                	addi	a1,a1,1
    1b92:	0705                	addi	a4,a4,1
    1b94:	feb416e3          	bne	s0,a1,1b80 <check_file_handle+0x142>
    1b98:	85a2                	mv	a1,s0
    1b9a:	08100813          	li	a6,129
    1b9e:	2b8c8793          	addi	a5,s9,696
    1ba2:	8752                	mv	a4,s4
    1ba4:	012606b3          	add	a3,a2,s2
    1ba8:	40c58633          	sub	a2,a1,a2
    1bac:	460d0593          	addi	a1,s10,1120 # 2460 <crctab+0x5a8>
    1bb0:	4509                	li	a0,2
    1bb2:	00000097          	auipc	ra,0x0
    1bb6:	828080e7          	jalr	-2008(ra) # 13da <fprintf>
    1bba:	855a                	mv	a0,s6
    1bbc:	00000097          	auipc	ra,0x0
    1bc0:	102080e7          	jalr	258(ra) # 1cbe <exit>
    1bc4:	9922                	add	s2,s2,s0
    1bc6:	f13970e3          	bgeu	s2,s3,1ac6 <check_file_handle+0x88>
    1bca:	41298433          	sub	s0,s3,s2
    1bce:	008af363          	bgeu	s5,s0,1bd4 <check_file_handle+0x196>
    1bd2:	8456                	mv	s0,s5
    1bd4:	0004061b          	sext.w	a2,s0
    1bd8:	858a                	mv	a1,sp
    1bda:	855e                	mv	a0,s7
    1bdc:	00000097          	auipc	ra,0x0
    1be0:	10a080e7          	jalr	266(ra) # 1ce6 <read>
    1be4:	f68513e3          	bne	a0,s0,1b4a <check_file_handle+0x10c>
    1be8:	012c04b3          	add	s1,s8,s2
    1bec:	8622                	mv	a2,s0
    1bee:	85a6                	mv	a1,s1
    1bf0:	850a                	mv	a0,sp
    1bf2:	00000097          	auipc	ra,0x0
    1bf6:	bce080e7          	jalr	-1074(ra) # 17c0 <memcmp>
    1bfa:	d569                	beqz	a0,1bc4 <check_file_handle+0x186>
    1bfc:	03298163          	beq	s3,s2,1c1e <check_file_handle+0x1e0>
    1c00:	870a                	mv	a4,sp
    1c02:	4601                	li	a2,0
    1c04:	00c487b3          	add	a5,s1,a2
    1c08:	00074683          	lbu	a3,0(a4)
    1c0c:	0007c783          	lbu	a5,0(a5)
    1c10:	f6f692e3          	bne	a3,a5,1b74 <check_file_handle+0x136>
    1c14:	0605                	addi	a2,a2,1
    1c16:	0705                	addi	a4,a4,1
    1c18:	fe8666e3          	bltu	a2,s0,1c04 <check_file_handle+0x1c6>
    1c1c:	bfa1                	j	1b74 <check_file_handle+0x136>
    1c1e:	4601                	li	a2,0
    1c20:	4585                	li	a1,1
    1c22:	bfa5                	j	1b9a <check_file_handle+0x15c>

0000000000001c24 <check_file>:
    1c24:	7179                	addi	sp,sp,-48
    1c26:	f406                	sd	ra,40(sp)
    1c28:	f022                	sd	s0,32(sp)
    1c2a:	ec26                	sd	s1,24(sp)
    1c2c:	e84a                	sd	s2,16(sp)
    1c2e:	e44e                	sd	s3,8(sp)
    1c30:	84aa                	mv	s1,a0
    1c32:	892e                	mv	s2,a1
    1c34:	89b2                	mv	s3,a2
    1c36:	4581                	li	a1,0
    1c38:	00000097          	auipc	ra,0x0
    1c3c:	0a6080e7          	jalr	166(ra) # 1cde <open>
    1c40:	842a                	mv	s0,a0
    1c42:	4789                	li	a5,2
    1c44:	02a7df63          	bge	a5,a0,1c82 <check_file+0x5e>
    1c48:	86ce                	mv	a3,s3
    1c4a:	864a                	mv	a2,s2
    1c4c:	85a6                	mv	a1,s1
    1c4e:	8522                	mv	a0,s0
    1c50:	00000097          	auipc	ra,0x0
    1c54:	dee080e7          	jalr	-530(ra) # 1a3e <check_file_handle>
    1c58:	85a6                	mv	a1,s1
    1c5a:	00002537          	lui	a0,0x2
    1c5e:	58850513          	addi	a0,a0,1416 # 2588 <crctab+0x6d0>
    1c62:	fffff097          	auipc	ra,0xfffff
    1c66:	79a080e7          	jalr	1946(ra) # 13fc <printf>
    1c6a:	8522                	mv	a0,s0
    1c6c:	00000097          	auipc	ra,0x0
    1c70:	09a080e7          	jalr	154(ra) # 1d06 <close>
    1c74:	70a2                	ld	ra,40(sp)
    1c76:	7402                	ld	s0,32(sp)
    1c78:	64e2                	ld	s1,24(sp)
    1c7a:	6942                	ld	s2,16(sp)
    1c7c:	69a2                	ld	s3,8(sp)
    1c7e:	6145                	addi	sp,sp,48
    1c80:	8082                	ret
    1c82:	0ae00713          	li	a4,174
    1c86:	000026b7          	lui	a3,0x2
    1c8a:	2b868693          	addi	a3,a3,696 # 22b8 <crctab+0x400>
    1c8e:	8626                	mv	a2,s1
    1c90:	000025b7          	lui	a1,0x2
    1c94:	52058593          	addi	a1,a1,1312 # 2520 <crctab+0x668>
    1c98:	4509                	li	a0,2
    1c9a:	fffff097          	auipc	ra,0xfffff
    1c9e:	740080e7          	jalr	1856(ra) # 13da <fprintf>
    1ca2:	650d                	lui	a0,0x3
    1ca4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1ca8:	00000097          	auipc	ra,0x0
    1cac:	016080e7          	jalr	22(ra) # 1cbe <exit>
    1cb0:	bf61                	j	1c48 <check_file+0x24>

0000000000001cb2 <r_sp>:
    1cb2:	850a                	mv	a0,sp
    1cb4:	8082                	ret

0000000000001cb6 <halt>:
    1cb6:	4885                	li	a7,1
    1cb8:	00000073          	ecall
    1cbc:	8082                	ret

0000000000001cbe <exit>:
    1cbe:	4889                	li	a7,2
    1cc0:	00000073          	ecall
    1cc4:	8082                	ret

0000000000001cc6 <exec>:
    1cc6:	488d                	li	a7,3
    1cc8:	00000073          	ecall
    1ccc:	8082                	ret

0000000000001cce <wait>:
    1cce:	4891                	li	a7,4
    1cd0:	00000073          	ecall
    1cd4:	8082                	ret

0000000000001cd6 <remove>:
    1cd6:	4895                	li	a7,5
    1cd8:	00000073          	ecall
    1cdc:	8082                	ret

0000000000001cde <open>:
    1cde:	4899                	li	a7,6
    1ce0:	00000073          	ecall
    1ce4:	8082                	ret

0000000000001ce6 <read>:
    1ce6:	489d                	li	a7,7
    1ce8:	00000073          	ecall
    1cec:	8082                	ret

0000000000001cee <write>:
    1cee:	48a1                	li	a7,8
    1cf0:	00000073          	ecall
    1cf4:	8082                	ret

0000000000001cf6 <seek>:
    1cf6:	48a5                	li	a7,9
    1cf8:	00000073          	ecall
    1cfc:	8082                	ret

0000000000001cfe <tell>:
    1cfe:	48a9                	li	a7,10
    1d00:	00000073          	ecall
    1d04:	8082                	ret

0000000000001d06 <close>:
    1d06:	48ad                	li	a7,11
    1d08:	00000073          	ecall
    1d0c:	8082                	ret

0000000000001d0e <fstat>:
    1d0e:	48b1                	li	a7,12
    1d10:	00000073          	ecall
    1d14:	8082                	ret

0000000000001d16 <mmap>:
    1d16:	48b5                	li	a7,13
    1d18:	00000073          	ecall
    1d1c:	8082                	ret

0000000000001d1e <munmap>:
    1d1e:	48b9                	li	a7,14
    1d20:	00000073          	ecall
    1d24:	8082                	ret

0000000000001d26 <chdir>:
    1d26:	48bd                	li	a7,15
    1d28:	00000073          	ecall
    1d2c:	8082                	ret

0000000000001d2e <mkdir>:
    1d2e:	48c1                	li	a7,16
    1d30:	00000073          	ecall
    1d34:	8082                	ret
