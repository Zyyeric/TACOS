
build/user/userprogs/open-create:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	4581                	li	a1,0
    1008:	00002537          	lui	a0,0x2
    100c:	c9050513          	addi	a0,a0,-880 # 1c90 <mkdir+0xe>
    1010:	00001097          	auipc	ra,0x1
    1014:	c22080e7          	jalr	-990(ra) # 1c32 <open>
    1018:	57fd                	li	a5,-1
    101a:	02f51963          	bne	a0,a5,104c <main+0x4c>
    101e:	20000593          	li	a1,512
    1022:	00002537          	lui	a0,0x2
    1026:	c9050513          	addi	a0,a0,-880 # 1c90 <mkdir+0xe>
    102a:	00001097          	auipc	ra,0x1
    102e:	c08080e7          	jalr	-1016(ra) # 1c32 <open>
    1032:	842a                	mv	s0,a0
    1034:	4789                	li	a5,2
    1036:	04a7d163          	bge	a5,a0,1078 <main+0x78>
    103a:	8522                	mv	a0,s0
    103c:	00001097          	auipc	ra,0x1
    1040:	c1e080e7          	jalr	-994(ra) # 1c5a <close>
    1044:	60a2                	ld	ra,8(sp)
    1046:	6402                	ld	s0,0(sp)
    1048:	0141                	addi	sp,sp,16
    104a:	8082                	ret
    104c:	46a1                	li	a3,8
    104e:	00002637          	lui	a2,0x2
    1052:	ca060613          	addi	a2,a2,-864 # 1ca0 <mkdir+0x1e>
    1056:	000025b7          	lui	a1,0x2
    105a:	cc058593          	addi	a1,a1,-832 # 1cc0 <mkdir+0x3e>
    105e:	4509                	li	a0,2
    1060:	00000097          	auipc	ra,0x0
    1064:	2ce080e7          	jalr	718(ra) # 132e <fprintf>
    1068:	650d                	lui	a0,0x3
    106a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    106e:	00001097          	auipc	ra,0x1
    1072:	ba4080e7          	jalr	-1116(ra) # 1c12 <exit>
    1076:	b765                	j	101e <main+0x1e>
    1078:	46a5                	li	a3,9
    107a:	00002637          	lui	a2,0x2
    107e:	ca060613          	addi	a2,a2,-864 # 1ca0 <mkdir+0x1e>
    1082:	000025b7          	lui	a1,0x2
    1086:	d1858593          	addi	a1,a1,-744 # 1d18 <mkdir+0x96>
    108a:	4509                	li	a0,2
    108c:	00000097          	auipc	ra,0x0
    1090:	2a2080e7          	jalr	674(ra) # 132e <fprintf>
    1094:	650d                	lui	a0,0x3
    1096:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    109a:	00001097          	auipc	ra,0x1
    109e:	b78080e7          	jalr	-1160(ra) # 1c12 <exit>
    10a2:	bf61                	j	103a <main+0x3a>

00000000000010a4 <putc>:
    10a4:	1101                	addi	sp,sp,-32
    10a6:	ec06                	sd	ra,24(sp)
    10a8:	00b107a3          	sb	a1,15(sp)
    10ac:	4605                	li	a2,1
    10ae:	00f10593          	addi	a1,sp,15
    10b2:	00001097          	auipc	ra,0x1
    10b6:	b90080e7          	jalr	-1136(ra) # 1c42 <write>
    10ba:	60e2                	ld	ra,24(sp)
    10bc:	6105                	addi	sp,sp,32
    10be:	8082                	ret

00000000000010c0 <printint>:
    10c0:	7179                	addi	sp,sp,-48
    10c2:	f406                	sd	ra,40(sp)
    10c4:	f022                	sd	s0,32(sp)
    10c6:	ec26                	sd	s1,24(sp)
    10c8:	e84a                	sd	s2,16(sp)
    10ca:	84aa                	mv	s1,a0
    10cc:	c299                	beqz	a3,10d2 <printint+0x12>
    10ce:	0805c363          	bltz	a1,1154 <printint+0x94>
    10d2:	2581                	sext.w	a1,a1
    10d4:	4881                	li	a7,0
    10d6:	868a                	mv	a3,sp
    10d8:	4701                	li	a4,0
    10da:	2601                	sext.w	a2,a2
    10dc:	00002537          	lui	a0,0x2
    10e0:	d9850513          	addi	a0,a0,-616 # 1d98 <digits>
    10e4:	883a                	mv	a6,a4
    10e6:	2705                	addiw	a4,a4,1
    10e8:	02c5f7bb          	remuw	a5,a1,a2
    10ec:	1782                	slli	a5,a5,0x20
    10ee:	9381                	srli	a5,a5,0x20
    10f0:	97aa                	add	a5,a5,a0
    10f2:	0007c783          	lbu	a5,0(a5)
    10f6:	00f68023          	sb	a5,0(a3)
    10fa:	0005879b          	sext.w	a5,a1
    10fe:	02c5d5bb          	divuw	a1,a1,a2
    1102:	0685                	addi	a3,a3,1
    1104:	fec7f0e3          	bgeu	a5,a2,10e4 <printint+0x24>
    1108:	00088a63          	beqz	a7,111c <printint+0x5c>
    110c:	081c                	addi	a5,sp,16
    110e:	973e                	add	a4,a4,a5
    1110:	02d00793          	li	a5,45
    1114:	fef70823          	sb	a5,-16(a4)
    1118:	0028071b          	addiw	a4,a6,2
    111c:	02e05663          	blez	a4,1148 <printint+0x88>
    1120:	00e10433          	add	s0,sp,a4
    1124:	fff10913          	addi	s2,sp,-1
    1128:	993a                	add	s2,s2,a4
    112a:	377d                	addiw	a4,a4,-1
    112c:	1702                	slli	a4,a4,0x20
    112e:	9301                	srli	a4,a4,0x20
    1130:	40e90933          	sub	s2,s2,a4
    1134:	fff44583          	lbu	a1,-1(s0)
    1138:	8526                	mv	a0,s1
    113a:	00000097          	auipc	ra,0x0
    113e:	f6a080e7          	jalr	-150(ra) # 10a4 <putc>
    1142:	147d                	addi	s0,s0,-1
    1144:	ff2418e3          	bne	s0,s2,1134 <printint+0x74>
    1148:	70a2                	ld	ra,40(sp)
    114a:	7402                	ld	s0,32(sp)
    114c:	64e2                	ld	s1,24(sp)
    114e:	6942                	ld	s2,16(sp)
    1150:	6145                	addi	sp,sp,48
    1152:	8082                	ret
    1154:	40b005bb          	negw	a1,a1
    1158:	4885                	li	a7,1
    115a:	bfb5                	j	10d6 <printint+0x16>

000000000000115c <vprintf>:
    115c:	7159                	addi	sp,sp,-112
    115e:	f486                	sd	ra,104(sp)
    1160:	f0a2                	sd	s0,96(sp)
    1162:	eca6                	sd	s1,88(sp)
    1164:	e8ca                	sd	s2,80(sp)
    1166:	e4ce                	sd	s3,72(sp)
    1168:	e0d2                	sd	s4,64(sp)
    116a:	fc56                	sd	s5,56(sp)
    116c:	f85a                	sd	s6,48(sp)
    116e:	f45e                	sd	s7,40(sp)
    1170:	f062                	sd	s8,32(sp)
    1172:	ec66                	sd	s9,24(sp)
    1174:	e86a                	sd	s10,16(sp)
    1176:	e46e                	sd	s11,8(sp)
    1178:	0005c483          	lbu	s1,0(a1)
    117c:	18048a63          	beqz	s1,1310 <vprintf+0x1b4>
    1180:	8a2a                	mv	s4,a0
    1182:	8ab2                	mv	s5,a2
    1184:	00158413          	addi	s0,a1,1
    1188:	4901                	li	s2,0
    118a:	02500993          	li	s3,37
    118e:	06400b93          	li	s7,100
    1192:	06c00c13          	li	s8,108
    1196:	07800c93          	li	s9,120
    119a:	07000d13          	li	s10,112
    119e:	00002db7          	lui	s11,0x2
    11a2:	00002b37          	lui	s6,0x2
    11a6:	d98b0b13          	addi	s6,s6,-616 # 1d98 <digits>
    11aa:	a839                	j	11c8 <vprintf+0x6c>
    11ac:	85a6                	mv	a1,s1
    11ae:	8552                	mv	a0,s4
    11b0:	00000097          	auipc	ra,0x0
    11b4:	ef4080e7          	jalr	-268(ra) # 10a4 <putc>
    11b8:	a019                	j	11be <vprintf+0x62>
    11ba:	01390f63          	beq	s2,s3,11d8 <vprintf+0x7c>
    11be:	0405                	addi	s0,s0,1
    11c0:	fff44483          	lbu	s1,-1(s0)
    11c4:	14048663          	beqz	s1,1310 <vprintf+0x1b4>
    11c8:	0004879b          	sext.w	a5,s1
    11cc:	fe0917e3          	bnez	s2,11ba <vprintf+0x5e>
    11d0:	fd379ee3          	bne	a5,s3,11ac <vprintf+0x50>
    11d4:	893e                	mv	s2,a5
    11d6:	b7e5                	j	11be <vprintf+0x62>
    11d8:	05778063          	beq	a5,s7,1218 <vprintf+0xbc>
    11dc:	05878c63          	beq	a5,s8,1234 <vprintf+0xd8>
    11e0:	07978863          	beq	a5,s9,1250 <vprintf+0xf4>
    11e4:	09a78463          	beq	a5,s10,126c <vprintf+0x110>
    11e8:	07300713          	li	a4,115
    11ec:	0ce78263          	beq	a5,a4,12b0 <vprintf+0x154>
    11f0:	06300713          	li	a4,99
    11f4:	0ee78763          	beq	a5,a4,12e2 <vprintf+0x186>
    11f8:	11378163          	beq	a5,s3,12fa <vprintf+0x19e>
    11fc:	85ce                	mv	a1,s3
    11fe:	8552                	mv	a0,s4
    1200:	00000097          	auipc	ra,0x0
    1204:	ea4080e7          	jalr	-348(ra) # 10a4 <putc>
    1208:	85a6                	mv	a1,s1
    120a:	8552                	mv	a0,s4
    120c:	00000097          	auipc	ra,0x0
    1210:	e98080e7          	jalr	-360(ra) # 10a4 <putc>
    1214:	4901                	li	s2,0
    1216:	b765                	j	11be <vprintf+0x62>
    1218:	008a8493          	addi	s1,s5,8
    121c:	4685                	li	a3,1
    121e:	4629                	li	a2,10
    1220:	000aa583          	lw	a1,0(s5)
    1224:	8552                	mv	a0,s4
    1226:	00000097          	auipc	ra,0x0
    122a:	e9a080e7          	jalr	-358(ra) # 10c0 <printint>
    122e:	8aa6                	mv	s5,s1
    1230:	4901                	li	s2,0
    1232:	b771                	j	11be <vprintf+0x62>
    1234:	008a8493          	addi	s1,s5,8
    1238:	4681                	li	a3,0
    123a:	4629                	li	a2,10
    123c:	000aa583          	lw	a1,0(s5)
    1240:	8552                	mv	a0,s4
    1242:	00000097          	auipc	ra,0x0
    1246:	e7e080e7          	jalr	-386(ra) # 10c0 <printint>
    124a:	8aa6                	mv	s5,s1
    124c:	4901                	li	s2,0
    124e:	bf85                	j	11be <vprintf+0x62>
    1250:	008a8493          	addi	s1,s5,8
    1254:	4681                	li	a3,0
    1256:	4641                	li	a2,16
    1258:	000aa583          	lw	a1,0(s5)
    125c:	8552                	mv	a0,s4
    125e:	00000097          	auipc	ra,0x0
    1262:	e62080e7          	jalr	-414(ra) # 10c0 <printint>
    1266:	8aa6                	mv	s5,s1
    1268:	4901                	li	s2,0
    126a:	bf91                	j	11be <vprintf+0x62>
    126c:	008a8913          	addi	s2,s5,8
    1270:	000aba83          	ld	s5,0(s5)
    1274:	03000593          	li	a1,48
    1278:	8552                	mv	a0,s4
    127a:	00000097          	auipc	ra,0x0
    127e:	e2a080e7          	jalr	-470(ra) # 10a4 <putc>
    1282:	85e6                	mv	a1,s9
    1284:	8552                	mv	a0,s4
    1286:	00000097          	auipc	ra,0x0
    128a:	e1e080e7          	jalr	-482(ra) # 10a4 <putc>
    128e:	44c1                	li	s1,16
    1290:	03cad793          	srli	a5,s5,0x3c
    1294:	97da                	add	a5,a5,s6
    1296:	0007c583          	lbu	a1,0(a5)
    129a:	8552                	mv	a0,s4
    129c:	00000097          	auipc	ra,0x0
    12a0:	e08080e7          	jalr	-504(ra) # 10a4 <putc>
    12a4:	0a92                	slli	s5,s5,0x4
    12a6:	34fd                	addiw	s1,s1,-1
    12a8:	f4e5                	bnez	s1,1290 <vprintf+0x134>
    12aa:	8aca                	mv	s5,s2
    12ac:	4901                	li	s2,0
    12ae:	bf01                	j	11be <vprintf+0x62>
    12b0:	008a8913          	addi	s2,s5,8
    12b4:	000ab483          	ld	s1,0(s5)
    12b8:	c085                	beqz	s1,12d8 <vprintf+0x17c>
    12ba:	0004c583          	lbu	a1,0(s1)
    12be:	c5b1                	beqz	a1,130a <vprintf+0x1ae>
    12c0:	8552                	mv	a0,s4
    12c2:	00000097          	auipc	ra,0x0
    12c6:	de2080e7          	jalr	-542(ra) # 10a4 <putc>
    12ca:	0485                	addi	s1,s1,1
    12cc:	0004c583          	lbu	a1,0(s1)
    12d0:	f9e5                	bnez	a1,12c0 <vprintf+0x164>
    12d2:	8aca                	mv	s5,s2
    12d4:	4901                	li	s2,0
    12d6:	b5e5                	j	11be <vprintf+0x62>
    12d8:	d90d8493          	addi	s1,s11,-624 # 1d90 <mkdir+0x10e>
    12dc:	02800593          	li	a1,40
    12e0:	b7c5                	j	12c0 <vprintf+0x164>
    12e2:	008a8493          	addi	s1,s5,8
    12e6:	000ac583          	lbu	a1,0(s5)
    12ea:	8552                	mv	a0,s4
    12ec:	00000097          	auipc	ra,0x0
    12f0:	db8080e7          	jalr	-584(ra) # 10a4 <putc>
    12f4:	8aa6                	mv	s5,s1
    12f6:	4901                	li	s2,0
    12f8:	b5d9                	j	11be <vprintf+0x62>
    12fa:	85ce                	mv	a1,s3
    12fc:	8552                	mv	a0,s4
    12fe:	00000097          	auipc	ra,0x0
    1302:	da6080e7          	jalr	-602(ra) # 10a4 <putc>
    1306:	4901                	li	s2,0
    1308:	bd5d                	j	11be <vprintf+0x62>
    130a:	8aca                	mv	s5,s2
    130c:	4901                	li	s2,0
    130e:	bd45                	j	11be <vprintf+0x62>
    1310:	70a6                	ld	ra,104(sp)
    1312:	7406                	ld	s0,96(sp)
    1314:	64e6                	ld	s1,88(sp)
    1316:	6946                	ld	s2,80(sp)
    1318:	69a6                	ld	s3,72(sp)
    131a:	6a06                	ld	s4,64(sp)
    131c:	7ae2                	ld	s5,56(sp)
    131e:	7b42                	ld	s6,48(sp)
    1320:	7ba2                	ld	s7,40(sp)
    1322:	7c02                	ld	s8,32(sp)
    1324:	6ce2                	ld	s9,24(sp)
    1326:	6d42                	ld	s10,16(sp)
    1328:	6da2                	ld	s11,8(sp)
    132a:	6165                	addi	sp,sp,112
    132c:	8082                	ret

000000000000132e <fprintf>:
    132e:	715d                	addi	sp,sp,-80
    1330:	ec06                	sd	ra,24(sp)
    1332:	f032                	sd	a2,32(sp)
    1334:	f436                	sd	a3,40(sp)
    1336:	f83a                	sd	a4,48(sp)
    1338:	fc3e                	sd	a5,56(sp)
    133a:	e0c2                	sd	a6,64(sp)
    133c:	e4c6                	sd	a7,72(sp)
    133e:	1010                	addi	a2,sp,32
    1340:	e432                	sd	a2,8(sp)
    1342:	00000097          	auipc	ra,0x0
    1346:	e1a080e7          	jalr	-486(ra) # 115c <vprintf>
    134a:	60e2                	ld	ra,24(sp)
    134c:	6161                	addi	sp,sp,80
    134e:	8082                	ret

0000000000001350 <printf>:
    1350:	711d                	addi	sp,sp,-96
    1352:	ec06                	sd	ra,24(sp)
    1354:	f42e                	sd	a1,40(sp)
    1356:	f832                	sd	a2,48(sp)
    1358:	fc36                	sd	a3,56(sp)
    135a:	e0ba                	sd	a4,64(sp)
    135c:	e4be                	sd	a5,72(sp)
    135e:	e8c2                	sd	a6,80(sp)
    1360:	ecc6                	sd	a7,88(sp)
    1362:	1030                	addi	a2,sp,40
    1364:	e432                	sd	a2,8(sp)
    1366:	85aa                	mv	a1,a0
    1368:	4505                	li	a0,1
    136a:	00000097          	auipc	ra,0x0
    136e:	df2080e7          	jalr	-526(ra) # 115c <vprintf>
    1372:	60e2                	ld	ra,24(sp)
    1374:	6125                	addi	sp,sp,96
    1376:	8082                	ret

0000000000001378 <cksum>:
    1378:	cdb1                	beqz	a1,13d4 <cksum+0x5c>
    137a:	00b50833          	add	a6,a0,a1
    137e:	4781                	li	a5,0
    1380:	00002637          	lui	a2,0x2
    1384:	db060613          	addi	a2,a2,-592 # 1db0 <crctab>
    1388:	0505                	addi	a0,a0,1
    138a:	0087969b          	slliw	a3,a5,0x8
    138e:	0187d71b          	srliw	a4,a5,0x18
    1392:	fff54783          	lbu	a5,-1(a0)
    1396:	8f3d                	xor	a4,a4,a5
    1398:	1702                	slli	a4,a4,0x20
    139a:	9301                	srli	a4,a4,0x20
    139c:	070a                	slli	a4,a4,0x2
    139e:	9732                	add	a4,a4,a2
    13a0:	431c                	lw	a5,0(a4)
    13a2:	8fb5                	xor	a5,a5,a3
    13a4:	2781                	sext.w	a5,a5
    13a6:	fea811e3          	bne	a6,a0,1388 <cksum+0x10>
    13aa:	00002637          	lui	a2,0x2
    13ae:	db060613          	addi	a2,a2,-592 # 1db0 <crctab>
    13b2:	0ff5f693          	andi	a3,a1,255
    13b6:	81a1                	srli	a1,a1,0x8
    13b8:	0087951b          	slliw	a0,a5,0x8
    13bc:	0187d71b          	srliw	a4,a5,0x18
    13c0:	8f35                	xor	a4,a4,a3
    13c2:	070a                	slli	a4,a4,0x2
    13c4:	9732                	add	a4,a4,a2
    13c6:	431c                	lw	a5,0(a4)
    13c8:	8fa9                	xor	a5,a5,a0
    13ca:	2781                	sext.w	a5,a5
    13cc:	f1fd                	bnez	a1,13b2 <cksum+0x3a>
    13ce:	fff7c513          	not	a0,a5
    13d2:	8082                	ret
    13d4:	4781                	li	a5,0
    13d6:	bfe5                	j	13ce <cksum+0x56>

00000000000013d8 <swap_bytes>:
    13d8:	ce19                	beqz	a2,13f6 <swap_bytes+0x1e>
    13da:	87aa                	mv	a5,a0
    13dc:	962a                	add	a2,a2,a0
    13de:	0007c703          	lbu	a4,0(a5)
    13e2:	0005c683          	lbu	a3,0(a1)
    13e6:	00d78023          	sb	a3,0(a5)
    13ea:	00e58023          	sb	a4,0(a1)
    13ee:	0785                	addi	a5,a5,1
    13f0:	0585                	addi	a1,a1,1
    13f2:	fec796e3          	bne	a5,a2,13de <swap_bytes+0x6>
    13f6:	8082                	ret

00000000000013f8 <random_init>:
    13f8:	7139                	addi	sp,sp,-64
    13fa:	fc06                	sd	ra,56(sp)
    13fc:	f822                	sd	s0,48(sp)
    13fe:	f426                	sd	s1,40(sp)
    1400:	f04a                	sd	s2,32(sp)
    1402:	ec4e                	sd	s3,24(sp)
    1404:	e852                	sd	s4,16(sp)
    1406:	c62a                	sw	a0,12(sp)
    1408:	000037b7          	lui	a5,0x3
    140c:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1410:	eca5                	bnez	s1,1488 <random_init+0x90>
    1412:	00003737          	lui	a4,0x3
    1416:	01070913          	addi	s2,a4,16 # 3010 <s>
    141a:	01070713          	addi	a4,a4,16
    141e:	87a6                	mv	a5,s1
    1420:	10000693          	li	a3,256
    1424:	00f70023          	sb	a5,0(a4)
    1428:	2785                	addiw	a5,a5,1
    142a:	0705                	addi	a4,a4,1
    142c:	fed79ce3          	bne	a5,a3,1424 <random_init+0x2c>
    1430:	4401                	li	s0,0
    1432:	000039b7          	lui	s3,0x3
    1436:	01098993          	addi	s3,s3,16 # 3010 <s>
    143a:	10000a13          	li	s4,256
    143e:	0034f793          	andi	a5,s1,3
    1442:	0818                	addi	a4,sp,16
    1444:	97ba                	add	a5,a5,a4
    1446:	ffc7c783          	lbu	a5,-4(a5)
    144a:	00094703          	lbu	a4,0(s2)
    144e:	9fb9                	addw	a5,a5,a4
    1450:	9c3d                	addw	s0,s0,a5
    1452:	0ff47413          	andi	s0,s0,255
    1456:	4605                	li	a2,1
    1458:	008985b3          	add	a1,s3,s0
    145c:	854a                	mv	a0,s2
    145e:	00000097          	auipc	ra,0x0
    1462:	f7a080e7          	jalr	-134(ra) # 13d8 <swap_bytes>
    1466:	2485                	addiw	s1,s1,1
    1468:	0905                	addi	s2,s2,1
    146a:	fd449ae3          	bne	s1,s4,143e <random_init+0x46>
    146e:	000037b7          	lui	a5,0x3
    1472:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1476:	000037b7          	lui	a5,0x3
    147a:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    147e:	000037b7          	lui	a5,0x3
    1482:	4705                	li	a4,1
    1484:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1488:	70e2                	ld	ra,56(sp)
    148a:	7442                	ld	s0,48(sp)
    148c:	74a2                	ld	s1,40(sp)
    148e:	7902                	ld	s2,32(sp)
    1490:	69e2                	ld	s3,24(sp)
    1492:	6a42                	ld	s4,16(sp)
    1494:	6121                	addi	sp,sp,64
    1496:	8082                	ret

0000000000001498 <random_bytes>:
    1498:	7139                	addi	sp,sp,-64
    149a:	fc06                	sd	ra,56(sp)
    149c:	f822                	sd	s0,48(sp)
    149e:	f426                	sd	s1,40(sp)
    14a0:	f04a                	sd	s2,32(sp)
    14a2:	ec4e                	sd	s3,24(sp)
    14a4:	e852                	sd	s4,16(sp)
    14a6:	e456                	sd	s5,8(sp)
    14a8:	e05a                	sd	s6,0(sp)
    14aa:	892a                	mv	s2,a0
    14ac:	8aae                	mv	s5,a1
    14ae:	000037b7          	lui	a5,0x3
    14b2:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14b6:	c3c1                	beqz	a5,1536 <random_bytes+0x9e>
    14b8:	060a8563          	beqz	s5,1522 <random_bytes+0x8a>
    14bc:	9aca                	add	s5,s5,s2
    14be:	00003a37          	lui	s4,0x3
    14c2:	000034b7          	lui	s1,0x3
    14c6:	01048493          	addi	s1,s1,16 # 3010 <s>
    14ca:	000039b7          	lui	s3,0x3
    14ce:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14d2:	2505                	addiw	a0,a0,1
    14d4:	0ff57513          	andi	a0,a0,255
    14d8:	00aa02a3          	sb	a0,5(s4)
    14dc:	00a48b33          	add	s6,s1,a0
    14e0:	000b4403          	lbu	s0,0(s6)
    14e4:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14e8:	9c3d                	addw	s0,s0,a5
    14ea:	0ff47413          	andi	s0,s0,255
    14ee:	00898223          	sb	s0,4(s3)
    14f2:	4605                	li	a2,1
    14f4:	008485b3          	add	a1,s1,s0
    14f8:	855a                	mv	a0,s6
    14fa:	00000097          	auipc	ra,0x0
    14fe:	ede080e7          	jalr	-290(ra) # 13d8 <swap_bytes>
    1502:	9426                	add	s0,s0,s1
    1504:	000b4783          	lbu	a5,0(s6)
    1508:	00044703          	lbu	a4,0(s0)
    150c:	9fb9                	addw	a5,a5,a4
    150e:	0ff7f793          	andi	a5,a5,255
    1512:	97a6                	add	a5,a5,s1
    1514:	0007c783          	lbu	a5,0(a5)
    1518:	00f90023          	sb	a5,0(s2)
    151c:	0905                	addi	s2,s2,1
    151e:	fb2a98e3          	bne	s5,s2,14ce <random_bytes+0x36>
    1522:	70e2                	ld	ra,56(sp)
    1524:	7442                	ld	s0,48(sp)
    1526:	74a2                	ld	s1,40(sp)
    1528:	7902                	ld	s2,32(sp)
    152a:	69e2                	ld	s3,24(sp)
    152c:	6a42                	ld	s4,16(sp)
    152e:	6aa2                	ld	s5,8(sp)
    1530:	6b02                	ld	s6,0(sp)
    1532:	6121                	addi	sp,sp,64
    1534:	8082                	ret
    1536:	4501                	li	a0,0
    1538:	00000097          	auipc	ra,0x0
    153c:	ec0080e7          	jalr	-320(ra) # 13f8 <random_init>
    1540:	bfa5                	j	14b8 <random_bytes+0x20>

0000000000001542 <random_ulong>:
    1542:	1101                	addi	sp,sp,-32
    1544:	ec06                	sd	ra,24(sp)
    1546:	45a1                	li	a1,8
    1548:	0028                	addi	a0,sp,8
    154a:	00000097          	auipc	ra,0x0
    154e:	f4e080e7          	jalr	-178(ra) # 1498 <random_bytes>
    1552:	6522                	ld	a0,8(sp)
    1554:	60e2                	ld	ra,24(sp)
    1556:	6105                	addi	sp,sp,32
    1558:	8082                	ret

000000000000155a <shuffle>:
    155a:	c9b9                	beqz	a1,15b0 <shuffle+0x56>
    155c:	7179                	addi	sp,sp,-48
    155e:	f406                	sd	ra,40(sp)
    1560:	f022                	sd	s0,32(sp)
    1562:	ec26                	sd	s1,24(sp)
    1564:	e84a                	sd	s2,16(sp)
    1566:	e44e                	sd	s3,8(sp)
    1568:	e052                	sd	s4,0(sp)
    156a:	8a2a                	mv	s4,a0
    156c:	89ae                	mv	s3,a1
    156e:	84b2                	mv	s1,a2
    1570:	892a                	mv	s2,a0
    1572:	4401                	li	s0,0
    1574:	00000097          	auipc	ra,0x0
    1578:	fce080e7          	jalr	-50(ra) # 1542 <random_ulong>
    157c:	408985b3          	sub	a1,s3,s0
    1580:	02b575b3          	remu	a1,a0,a1
    1584:	95a2                	add	a1,a1,s0
    1586:	029585b3          	mul	a1,a1,s1
    158a:	8626                	mv	a2,s1
    158c:	95d2                	add	a1,a1,s4
    158e:	854a                	mv	a0,s2
    1590:	00000097          	auipc	ra,0x0
    1594:	e48080e7          	jalr	-440(ra) # 13d8 <swap_bytes>
    1598:	0405                	addi	s0,s0,1
    159a:	9926                	add	s2,s2,s1
    159c:	fc899ce3          	bne	s3,s0,1574 <shuffle+0x1a>
    15a0:	70a2                	ld	ra,40(sp)
    15a2:	7402                	ld	s0,32(sp)
    15a4:	64e2                	ld	s1,24(sp)
    15a6:	6942                	ld	s2,16(sp)
    15a8:	69a2                	ld	s3,8(sp)
    15aa:	6a02                	ld	s4,0(sp)
    15ac:	6145                	addi	sp,sp,48
    15ae:	8082                	ret
    15b0:	8082                	ret

00000000000015b2 <arc4_init>:
    15b2:	100500a3          	sb	zero,257(a0)
    15b6:	10050023          	sb	zero,256(a0)
    15ba:	4781                	li	a5,0
    15bc:	10000693          	li	a3,256
    15c0:	00f50733          	add	a4,a0,a5
    15c4:	00f70023          	sb	a5,0(a4)
    15c8:	0785                	addi	a5,a5,1
    15ca:	fed79be3          	bne	a5,a3,15c0 <arc4_init+0xe>
    15ce:	86aa                	mv	a3,a0
    15d0:	10050e13          	addi	t3,a0,256
    15d4:	4701                	li	a4,0
    15d6:	4781                	li	a5,0
    15d8:	0006c883          	lbu	a7,0(a3)
    15dc:	00f58833          	add	a6,a1,a5
    15e0:	00084803          	lbu	a6,0(a6)
    15e4:	00e8873b          	addw	a4,a7,a4
    15e8:	00e8073b          	addw	a4,a6,a4
    15ec:	0ff77713          	andi	a4,a4,255
    15f0:	00e50833          	add	a6,a0,a4
    15f4:	00084303          	lbu	t1,0(a6)
    15f8:	00668023          	sb	t1,0(a3)
    15fc:	01180023          	sb	a7,0(a6)
    1600:	0785                	addi	a5,a5,1
    1602:	00c7b833          	sltu	a6,a5,a2
    1606:	41000833          	neg	a6,a6
    160a:	0107f7b3          	and	a5,a5,a6
    160e:	0685                	addi	a3,a3,1
    1610:	fdc694e3          	bne	a3,t3,15d8 <arc4_init+0x26>
    1614:	8082                	ret

0000000000001616 <arc4_crypt>:
    1616:	10054e03          	lbu	t3,256(a0)
    161a:	10154803          	lbu	a6,257(a0)
    161e:	fff60e93          	addi	t4,a2,-1
    1622:	c225                	beqz	a2,1682 <arc4_crypt+0x6c>
    1624:	00c588b3          	add	a7,a1,a2
    1628:	86ae                	mv	a3,a1
    162a:	001e031b          	addiw	t1,t3,1
    162e:	40b3033b          	subw	t1,t1,a1
    1632:	00d3073b          	addw	a4,t1,a3
    1636:	0ff77713          	andi	a4,a4,255
    163a:	972a                	add	a4,a4,a0
    163c:	00074603          	lbu	a2,0(a4)
    1640:	0106083b          	addw	a6,a2,a6
    1644:	0ff87813          	andi	a6,a6,255
    1648:	010507b3          	add	a5,a0,a6
    164c:	0007c583          	lbu	a1,0(a5)
    1650:	00b70023          	sb	a1,0(a4)
    1654:	00c78023          	sb	a2,0(a5)
    1658:	0685                	addi	a3,a3,1
    165a:	00074783          	lbu	a5,0(a4)
    165e:	9fb1                	addw	a5,a5,a2
    1660:	0ff7f793          	andi	a5,a5,255
    1664:	97aa                	add	a5,a5,a0
    1666:	0007c783          	lbu	a5,0(a5)
    166a:	fff6c703          	lbu	a4,-1(a3)
    166e:	8fb9                	xor	a5,a5,a4
    1670:	fef68fa3          	sb	a5,-1(a3)
    1674:	fb169fe3          	bne	a3,a7,1632 <arc4_crypt+0x1c>
    1678:	2e85                	addiw	t4,t4,1
    167a:	01ce8e3b          	addw	t3,t4,t3
    167e:	0ffe7e13          	andi	t3,t3,255
    1682:	11c50023          	sb	t3,256(a0)
    1686:	110500a3          	sb	a6,257(a0)
    168a:	8082                	ret

000000000000168c <_main>:
    168c:	1141                	addi	sp,sp,-16
    168e:	e406                	sd	ra,8(sp)
    1690:	00000097          	auipc	ra,0x0
    1694:	970080e7          	jalr	-1680(ra) # 1000 <main>
    1698:	4501                	li	a0,0
    169a:	00000097          	auipc	ra,0x0
    169e:	578080e7          	jalr	1400(ra) # 1c12 <exit>
    16a2:	60a2                	ld	ra,8(sp)
    16a4:	0141                	addi	sp,sp,16
    16a6:	8082                	ret

00000000000016a8 <strcmp>:
    16a8:	00054783          	lbu	a5,0(a0)
    16ac:	cb91                	beqz	a5,16c0 <strcmp+0x18>
    16ae:	0005c703          	lbu	a4,0(a1)
    16b2:	00f71763          	bne	a4,a5,16c0 <strcmp+0x18>
    16b6:	0505                	addi	a0,a0,1
    16b8:	0585                	addi	a1,a1,1
    16ba:	00054783          	lbu	a5,0(a0)
    16be:	fbe5                	bnez	a5,16ae <strcmp+0x6>
    16c0:	0005c503          	lbu	a0,0(a1)
    16c4:	40a7853b          	subw	a0,a5,a0
    16c8:	8082                	ret

00000000000016ca <strcpy>:
    16ca:	87aa                	mv	a5,a0
    16cc:	0585                	addi	a1,a1,1
    16ce:	0785                	addi	a5,a5,1
    16d0:	fff5c703          	lbu	a4,-1(a1)
    16d4:	fee78fa3          	sb	a4,-1(a5)
    16d8:	fb75                	bnez	a4,16cc <strcpy+0x2>
    16da:	8082                	ret

00000000000016dc <strlen>:
    16dc:	00054783          	lbu	a5,0(a0)
    16e0:	cf81                	beqz	a5,16f8 <strlen+0x1c>
    16e2:	0505                	addi	a0,a0,1
    16e4:	87aa                	mv	a5,a0
    16e6:	4685                	li	a3,1
    16e8:	9e89                	subw	a3,a3,a0
    16ea:	00f6853b          	addw	a0,a3,a5
    16ee:	0785                	addi	a5,a5,1
    16f0:	fff7c703          	lbu	a4,-1(a5)
    16f4:	fb7d                	bnez	a4,16ea <strlen+0xe>
    16f6:	8082                	ret
    16f8:	4501                	li	a0,0
    16fa:	8082                	ret

00000000000016fc <memset>:
    16fc:	ca19                	beqz	a2,1712 <memset+0x16>
    16fe:	87aa                	mv	a5,a0
    1700:	1602                	slli	a2,a2,0x20
    1702:	9201                	srli	a2,a2,0x20
    1704:	00a60733          	add	a4,a2,a0
    1708:	00b78023          	sb	a1,0(a5)
    170c:	0785                	addi	a5,a5,1
    170e:	fee79de3          	bne	a5,a4,1708 <memset+0xc>
    1712:	8082                	ret

0000000000001714 <memcmp>:
    1714:	1101                	addi	sp,sp,-32
    1716:	ec06                	sd	ra,24(sp)
    1718:	e822                	sd	s0,16(sp)
    171a:	e426                	sd	s1,8(sp)
    171c:	e04a                	sd	s2,0(sp)
    171e:	892a                	mv	s2,a0
    1720:	842e                	mv	s0,a1
    1722:	84b2                	mv	s1,a2
    1724:	c915                	beqz	a0,1758 <memcmp+0x44>
    1726:	c5ad                	beqz	a1,1790 <memcmp+0x7c>
    1728:	fff60713          	addi	a4,a2,-1
    172c:	c645                	beqz	a2,17d4 <memcmp+0xc0>
    172e:	87ca                	mv	a5,s2
    1730:	00190613          	addi	a2,s2,1
    1734:	963a                	add	a2,a2,a4
    1736:	0007c683          	lbu	a3,0(a5)
    173a:	00044703          	lbu	a4,0(s0)
    173e:	08e69463          	bne	a3,a4,17c6 <memcmp+0xb2>
    1742:	0785                	addi	a5,a5,1
    1744:	0405                	addi	s0,s0,1
    1746:	fec798e3          	bne	a5,a2,1736 <memcmp+0x22>
    174a:	4501                	li	a0,0
    174c:	60e2                	ld	ra,24(sp)
    174e:	6442                	ld	s0,16(sp)
    1750:	64a2                	ld	s1,8(sp)
    1752:	6902                	ld	s2,0(sp)
    1754:	6105                	addi	sp,sp,32
    1756:	8082                	ret
    1758:	4501                	li	a0,0
    175a:	da6d                	beqz	a2,174c <memcmp+0x38>
    175c:	03200693          	li	a3,50
    1760:	00002637          	lui	a2,0x2
    1764:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    1768:	000025b7          	lui	a1,0x2
    176c:	1c058593          	addi	a1,a1,448 # 21c0 <crctab+0x410>
    1770:	4509                	li	a0,2
    1772:	00000097          	auipc	ra,0x0
    1776:	bbc080e7          	jalr	-1092(ra) # 132e <fprintf>
    177a:	650d                	lui	a0,0x3
    177c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1780:	00000097          	auipc	ra,0x0
    1784:	492080e7          	jalr	1170(ra) # 1c12 <exit>
    1788:	fff48713          	addi	a4,s1,-1
    178c:	f04d                	bnez	s0,172e <memcmp+0x1a>
    178e:	a011                	j	1792 <memcmp+0x7e>
    1790:	c221                	beqz	a2,17d0 <memcmp+0xbc>
    1792:	03300693          	li	a3,51
    1796:	00002637          	lui	a2,0x2
    179a:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    179e:	000025b7          	lui	a1,0x2
    17a2:	20858593          	addi	a1,a1,520 # 2208 <crctab+0x458>
    17a6:	4509                	li	a0,2
    17a8:	00000097          	auipc	ra,0x0
    17ac:	b86080e7          	jalr	-1146(ra) # 132e <fprintf>
    17b0:	650d                	lui	a0,0x3
    17b2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17b6:	00000097          	auipc	ra,0x0
    17ba:	45c080e7          	jalr	1116(ra) # 1c12 <exit>
    17be:	fff48713          	addi	a4,s1,-1
    17c2:	4401                	li	s0,0
    17c4:	b7ad                	j	172e <memcmp+0x1a>
    17c6:	4505                	li	a0,1
    17c8:	f8d762e3          	bltu	a4,a3,174c <memcmp+0x38>
    17cc:	557d                	li	a0,-1
    17ce:	bfbd                	j	174c <memcmp+0x38>
    17d0:	4501                	li	a0,0
    17d2:	bfad                	j	174c <memcmp+0x38>
    17d4:	4501                	li	a0,0
    17d6:	bf9d                	j	174c <memcmp+0x38>

00000000000017d8 <memcpy>:
    17d8:	1101                	addi	sp,sp,-32
    17da:	ec06                	sd	ra,24(sp)
    17dc:	e822                	sd	s0,16(sp)
    17de:	e426                	sd	s1,8(sp)
    17e0:	e04a                	sd	s2,0(sp)
    17e2:	84aa                	mv	s1,a0
    17e4:	842e                	mv	s0,a1
    17e6:	8932                	mv	s2,a2
    17e8:	c51d                	beqz	a0,1816 <memcpy+0x3e>
    17ea:	c1ad                	beqz	a1,184c <memcpy+0x74>
    17ec:	fff60693          	addi	a3,a2,-1
    17f0:	ce01                	beqz	a2,1808 <memcpy+0x30>
    17f2:	0685                	addi	a3,a3,1
    17f4:	96a6                	add	a3,a3,s1
    17f6:	87a6                	mv	a5,s1
    17f8:	0405                	addi	s0,s0,1
    17fa:	0785                	addi	a5,a5,1
    17fc:	fff44703          	lbu	a4,-1(s0)
    1800:	fee78fa3          	sb	a4,-1(a5)
    1804:	fed79ae3          	bne	a5,a3,17f8 <memcpy+0x20>
    1808:	8526                	mv	a0,s1
    180a:	60e2                	ld	ra,24(sp)
    180c:	6442                	ld	s0,16(sp)
    180e:	64a2                	ld	s1,8(sp)
    1810:	6902                	ld	s2,0(sp)
    1812:	6105                	addi	sp,sp,32
    1814:	8082                	ret
    1816:	da6d                	beqz	a2,1808 <memcpy+0x30>
    1818:	04000693          	li	a3,64
    181c:	00002637          	lui	a2,0x2
    1820:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    1824:	000025b7          	lui	a1,0x2
    1828:	25058593          	addi	a1,a1,592 # 2250 <crctab+0x4a0>
    182c:	4509                	li	a0,2
    182e:	00000097          	auipc	ra,0x0
    1832:	b00080e7          	jalr	-1280(ra) # 132e <fprintf>
    1836:	650d                	lui	a0,0x3
    1838:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    183c:	00000097          	auipc	ra,0x0
    1840:	3d6080e7          	jalr	982(ra) # 1c12 <exit>
    1844:	fff90693          	addi	a3,s2,-1
    1848:	f44d                	bnez	s0,17f2 <memcpy+0x1a>
    184a:	a011                	j	184e <memcpy+0x76>
    184c:	de55                	beqz	a2,1808 <memcpy+0x30>
    184e:	04100693          	li	a3,65
    1852:	00002637          	lui	a2,0x2
    1856:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    185a:	000025b7          	lui	a1,0x2
    185e:	29858593          	addi	a1,a1,664 # 2298 <crctab+0x4e8>
    1862:	4509                	li	a0,2
    1864:	00000097          	auipc	ra,0x0
    1868:	aca080e7          	jalr	-1334(ra) # 132e <fprintf>
    186c:	650d                	lui	a0,0x3
    186e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1872:	00000097          	auipc	ra,0x0
    1876:	3a0080e7          	jalr	928(ra) # 1c12 <exit>
    187a:	fff90693          	addi	a3,s2,-1
    187e:	4401                	li	s0,0
    1880:	bf8d                	j	17f2 <memcpy+0x1a>

0000000000001882 <itoa>:
    1882:	1101                	addi	sp,sp,-32
    1884:	ec06                	sd	ra,24(sp)
    1886:	e822                	sd	s0,16(sp)
    1888:	e426                	sd	s1,8(sp)
    188a:	842a                	mv	s0,a0
    188c:	41f5d71b          	sraiw	a4,a1,0x1f
    1890:	00e5c7b3          	xor	a5,a1,a4
    1894:	9f99                	subw	a5,a5,a4
    1896:	84aa                	mv	s1,a0
    1898:	862a                	mv	a2,a0
    189a:	4681                	li	a3,0
    189c:	4529                	li	a0,10
    189e:	4825                	li	a6,9
    18a0:	88b6                	mv	a7,a3
    18a2:	2685                	addiw	a3,a3,1
    18a4:	02a7e73b          	remw	a4,a5,a0
    18a8:	0307071b          	addiw	a4,a4,48
    18ac:	00e60023          	sb	a4,0(a2)
    18b0:	873e                	mv	a4,a5
    18b2:	02a7c7bb          	divw	a5,a5,a0
    18b6:	0605                	addi	a2,a2,1
    18b8:	fee844e3          	blt	a6,a4,18a0 <itoa+0x1e>
    18bc:	0405c863          	bltz	a1,190c <itoa+0x8a>
    18c0:	96a2                	add	a3,a3,s0
    18c2:	00068023          	sb	zero,0(a3)
    18c6:	8522                	mv	a0,s0
    18c8:	00000097          	auipc	ra,0x0
    18cc:	e14080e7          	jalr	-492(ra) # 16dc <strlen>
    18d0:	fff5071b          	addiw	a4,a0,-1
    18d4:	02e05763          	blez	a4,1902 <itoa+0x80>
    18d8:	9722                	add	a4,a4,s0
    18da:	4681                	li	a3,0
    18dc:	0004c783          	lbu	a5,0(s1)
    18e0:	00074603          	lbu	a2,0(a4)
    18e4:	00c48023          	sb	a2,0(s1)
    18e8:	00f70023          	sb	a5,0(a4)
    18ec:	0016879b          	addiw	a5,a3,1
    18f0:	0007869b          	sext.w	a3,a5
    18f4:	0485                	addi	s1,s1,1
    18f6:	177d                	addi	a4,a4,-1
    18f8:	fff7c793          	not	a5,a5
    18fc:	9fa9                	addw	a5,a5,a0
    18fe:	fcf6cfe3          	blt	a3,a5,18dc <itoa+0x5a>
    1902:	60e2                	ld	ra,24(sp)
    1904:	6442                	ld	s0,16(sp)
    1906:	64a2                	ld	s1,8(sp)
    1908:	6105                	addi	sp,sp,32
    190a:	8082                	ret
    190c:	96a2                	add	a3,a3,s0
    190e:	02d00793          	li	a5,45
    1912:	00f68023          	sb	a5,0(a3)
    1916:	0028869b          	addiw	a3,a7,2
    191a:	b75d                	j	18c0 <itoa+0x3e>

000000000000191c <atoi>:
    191c:	00054783          	lbu	a5,0(a0)
    1920:	02000713          	li	a4,32
    1924:	00e79763          	bne	a5,a4,1932 <atoi+0x16>
    1928:	0505                	addi	a0,a0,1
    192a:	00054783          	lbu	a5,0(a0)
    192e:	fee78de3          	beq	a5,a4,1928 <atoi+0xc>
    1932:	02b00713          	li	a4,43
    1936:	04e78663          	beq	a5,a4,1982 <atoi+0x66>
    193a:	02d00713          	li	a4,45
    193e:	4805                	li	a6,1
    1940:	04e78463          	beq	a5,a4,1988 <atoi+0x6c>
    1944:	00054683          	lbu	a3,0(a0)
    1948:	fd06879b          	addiw	a5,a3,-48
    194c:	0ff7f793          	andi	a5,a5,255
    1950:	4725                	li	a4,9
    1952:	02f76e63          	bltu	a4,a5,198e <atoi+0x72>
    1956:	4601                	li	a2,0
    1958:	45a5                	li	a1,9
    195a:	0505                	addi	a0,a0,1
    195c:	0026179b          	slliw	a5,a2,0x2
    1960:	9fb1                	addw	a5,a5,a2
    1962:	0017979b          	slliw	a5,a5,0x1
    1966:	9fb5                	addw	a5,a5,a3
    1968:	fd07861b          	addiw	a2,a5,-48
    196c:	00054683          	lbu	a3,0(a0)
    1970:	fd06871b          	addiw	a4,a3,-48
    1974:	0ff77713          	andi	a4,a4,255
    1978:	fee5f1e3          	bgeu	a1,a4,195a <atoi+0x3e>
    197c:	02c8053b          	mulw	a0,a6,a2
    1980:	8082                	ret
    1982:	0505                	addi	a0,a0,1
    1984:	4805                	li	a6,1
    1986:	bf7d                	j	1944 <atoi+0x28>
    1988:	0505                	addi	a0,a0,1
    198a:	587d                	li	a6,-1
    198c:	bf65                	j	1944 <atoi+0x28>
    198e:	4601                	li	a2,0
    1990:	b7f5                	j	197c <atoi+0x60>

0000000000001992 <check_file_handle>:
    1992:	d8010113          	addi	sp,sp,-640
    1996:	26113c23          	sd	ra,632(sp)
    199a:	26813823          	sd	s0,624(sp)
    199e:	26913423          	sd	s1,616(sp)
    19a2:	27213023          	sd	s2,608(sp)
    19a6:	25313c23          	sd	s3,600(sp)
    19aa:	25413823          	sd	s4,592(sp)
    19ae:	25513423          	sd	s5,584(sp)
    19b2:	25613023          	sd	s6,576(sp)
    19b6:	23713c23          	sd	s7,568(sp)
    19ba:	23813823          	sd	s8,560(sp)
    19be:	23913423          	sd	s9,552(sp)
    19c2:	23a13023          	sd	s10,544(sp)
    19c6:	21b13c23          	sd	s11,536(sp)
    19ca:	8baa                	mv	s7,a0
    19cc:	8a2e                	mv	s4,a1
    19ce:	8c32                	mv	s8,a2
    19d0:	89b6                	mv	s3,a3
    19d2:	040c                	addi	a1,sp,512
    19d4:	00000097          	auipc	ra,0x0
    19d8:	28e080e7          	jalr	654(ra) # 1c62 <fstat>
    19dc:	20813603          	ld	a2,520(sp)
    19e0:	03361163          	bne	a2,s3,1a02 <check_file_handle+0x70>
    19e4:	06098763          	beqz	s3,1a52 <check_file_handle+0xc0>
    19e8:	4901                	li	s2,0
    19ea:	20000a93          	li	s5,512
    19ee:	00002cb7          	lui	s9,0x2
    19f2:	00002db7          	lui	s11,0x2
    19f6:	6b0d                	lui	s6,0x3
    19f8:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19fc:	00002d37          	lui	s10,0x2
    1a00:	aa39                	j	1b1e <check_file_handle+0x18c>
    1a02:	86ce                	mv	a3,s3
    1a04:	85d2                	mv	a1,s4
    1a06:	00002537          	lui	a0,0x2
    1a0a:	2e050513          	addi	a0,a0,736 # 22e0 <crctab+0x530>
    1a0e:	00000097          	auipc	ra,0x0
    1a12:	942080e7          	jalr	-1726(ra) # 1350 <printf>
    1a16:	fc0999e3          	bnez	s3,19e8 <check_file_handle+0x56>
    1a1a:	20813683          	ld	a3,520(sp)
    1a1e:	03368a63          	beq	a3,s3,1a52 <check_file_handle+0xc0>
    1a22:	0a600813          	li	a6,166
    1a26:	000027b7          	lui	a5,0x2
    1a2a:	1b078793          	addi	a5,a5,432 # 21b0 <crctab+0x400>
    1a2e:	874e                	mv	a4,s3
    1a30:	8652                	mv	a2,s4
    1a32:	000025b7          	lui	a1,0x2
    1a36:	3b058593          	addi	a1,a1,944 # 23b0 <crctab+0x600>
    1a3a:	4509                	li	a0,2
    1a3c:	00000097          	auipc	ra,0x0
    1a40:	8f2080e7          	jalr	-1806(ra) # 132e <fprintf>
    1a44:	650d                	lui	a0,0x3
    1a46:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a4a:	00000097          	auipc	ra,0x0
    1a4e:	1c8080e7          	jalr	456(ra) # 1c12 <exit>
    1a52:	85d2                	mv	a1,s4
    1a54:	00002537          	lui	a0,0x2
    1a58:	3f850513          	addi	a0,a0,1016 # 23f8 <crctab+0x648>
    1a5c:	00000097          	auipc	ra,0x0
    1a60:	8f4080e7          	jalr	-1804(ra) # 1350 <printf>
    1a64:	27813083          	ld	ra,632(sp)
    1a68:	27013403          	ld	s0,624(sp)
    1a6c:	26813483          	ld	s1,616(sp)
    1a70:	26013903          	ld	s2,608(sp)
    1a74:	25813983          	ld	s3,600(sp)
    1a78:	25013a03          	ld	s4,592(sp)
    1a7c:	24813a83          	ld	s5,584(sp)
    1a80:	24013b03          	ld	s6,576(sp)
    1a84:	23813b83          	ld	s7,568(sp)
    1a88:	23013c03          	ld	s8,560(sp)
    1a8c:	22813c83          	ld	s9,552(sp)
    1a90:	22013d03          	ld	s10,544(sp)
    1a94:	21813d83          	ld	s11,536(sp)
    1a98:	28010113          	addi	sp,sp,640
    1a9c:	8082                	ret
    1a9e:	09d00893          	li	a7,157
    1aa2:	1b0c8813          	addi	a6,s9,432 # 21b0 <crctab+0x400>
    1aa6:	87aa                	mv	a5,a0
    1aa8:	8752                	mv	a4,s4
    1aaa:	86ca                	mv	a3,s2
    1aac:	8622                	mv	a2,s0
    1aae:	310d8593          	addi	a1,s11,784 # 2310 <crctab+0x560>
    1ab2:	4509                	li	a0,2
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	87a080e7          	jalr	-1926(ra) # 132e <fprintf>
    1abc:	855a                	mv	a0,s6
    1abe:	00000097          	auipc	ra,0x0
    1ac2:	154080e7          	jalr	340(ra) # 1c12 <exit>
    1ac6:	a89d                	j	1b3c <check_file_handle+0x1aa>
    1ac8:	00160593          	addi	a1,a2,1
    1acc:	0285f163          	bgeu	a1,s0,1aee <check_file_handle+0x15c>
    1ad0:	00c10733          	add	a4,sp,a2
    1ad4:	00b487b3          	add	a5,s1,a1
    1ad8:	00174683          	lbu	a3,1(a4)
    1adc:	0007c783          	lbu	a5,0(a5)
    1ae0:	00f68763          	beq	a3,a5,1aee <check_file_handle+0x15c>
    1ae4:	0585                	addi	a1,a1,1
    1ae6:	0705                	addi	a4,a4,1
    1ae8:	feb416e3          	bne	s0,a1,1ad4 <check_file_handle+0x142>
    1aec:	85a2                	mv	a1,s0
    1aee:	08100813          	li	a6,129
    1af2:	1b0c8793          	addi	a5,s9,432
    1af6:	8752                	mv	a4,s4
    1af8:	012606b3          	add	a3,a2,s2
    1afc:	40c58633          	sub	a2,a1,a2
    1b00:	358d0593          	addi	a1,s10,856 # 2358 <crctab+0x5a8>
    1b04:	4509                	li	a0,2
    1b06:	00000097          	auipc	ra,0x0
    1b0a:	828080e7          	jalr	-2008(ra) # 132e <fprintf>
    1b0e:	855a                	mv	a0,s6
    1b10:	00000097          	auipc	ra,0x0
    1b14:	102080e7          	jalr	258(ra) # 1c12 <exit>
    1b18:	9922                	add	s2,s2,s0
    1b1a:	f13970e3          	bgeu	s2,s3,1a1a <check_file_handle+0x88>
    1b1e:	41298433          	sub	s0,s3,s2
    1b22:	008af363          	bgeu	s5,s0,1b28 <check_file_handle+0x196>
    1b26:	8456                	mv	s0,s5
    1b28:	0004061b          	sext.w	a2,s0
    1b2c:	858a                	mv	a1,sp
    1b2e:	855e                	mv	a0,s7
    1b30:	00000097          	auipc	ra,0x0
    1b34:	10a080e7          	jalr	266(ra) # 1c3a <read>
    1b38:	f68513e3          	bne	a0,s0,1a9e <check_file_handle+0x10c>
    1b3c:	012c04b3          	add	s1,s8,s2
    1b40:	8622                	mv	a2,s0
    1b42:	85a6                	mv	a1,s1
    1b44:	850a                	mv	a0,sp
    1b46:	00000097          	auipc	ra,0x0
    1b4a:	bce080e7          	jalr	-1074(ra) # 1714 <memcmp>
    1b4e:	d569                	beqz	a0,1b18 <check_file_handle+0x186>
    1b50:	03298163          	beq	s3,s2,1b72 <check_file_handle+0x1e0>
    1b54:	870a                	mv	a4,sp
    1b56:	4601                	li	a2,0
    1b58:	00c487b3          	add	a5,s1,a2
    1b5c:	00074683          	lbu	a3,0(a4)
    1b60:	0007c783          	lbu	a5,0(a5)
    1b64:	f6f692e3          	bne	a3,a5,1ac8 <check_file_handle+0x136>
    1b68:	0605                	addi	a2,a2,1
    1b6a:	0705                	addi	a4,a4,1
    1b6c:	fe8666e3          	bltu	a2,s0,1b58 <check_file_handle+0x1c6>
    1b70:	bfa1                	j	1ac8 <check_file_handle+0x136>
    1b72:	4601                	li	a2,0
    1b74:	4585                	li	a1,1
    1b76:	bfa5                	j	1aee <check_file_handle+0x15c>

0000000000001b78 <check_file>:
    1b78:	7179                	addi	sp,sp,-48
    1b7a:	f406                	sd	ra,40(sp)
    1b7c:	f022                	sd	s0,32(sp)
    1b7e:	ec26                	sd	s1,24(sp)
    1b80:	e84a                	sd	s2,16(sp)
    1b82:	e44e                	sd	s3,8(sp)
    1b84:	84aa                	mv	s1,a0
    1b86:	892e                	mv	s2,a1
    1b88:	89b2                	mv	s3,a2
    1b8a:	4581                	li	a1,0
    1b8c:	00000097          	auipc	ra,0x0
    1b90:	0a6080e7          	jalr	166(ra) # 1c32 <open>
    1b94:	842a                	mv	s0,a0
    1b96:	4789                	li	a5,2
    1b98:	02a7df63          	bge	a5,a0,1bd6 <check_file+0x5e>
    1b9c:	86ce                	mv	a3,s3
    1b9e:	864a                	mv	a2,s2
    1ba0:	85a6                	mv	a1,s1
    1ba2:	8522                	mv	a0,s0
    1ba4:	00000097          	auipc	ra,0x0
    1ba8:	dee080e7          	jalr	-530(ra) # 1992 <check_file_handle>
    1bac:	85a6                	mv	a1,s1
    1bae:	00002537          	lui	a0,0x2
    1bb2:	48050513          	addi	a0,a0,1152 # 2480 <crctab+0x6d0>
    1bb6:	fffff097          	auipc	ra,0xfffff
    1bba:	79a080e7          	jalr	1946(ra) # 1350 <printf>
    1bbe:	8522                	mv	a0,s0
    1bc0:	00000097          	auipc	ra,0x0
    1bc4:	09a080e7          	jalr	154(ra) # 1c5a <close>
    1bc8:	70a2                	ld	ra,40(sp)
    1bca:	7402                	ld	s0,32(sp)
    1bcc:	64e2                	ld	s1,24(sp)
    1bce:	6942                	ld	s2,16(sp)
    1bd0:	69a2                	ld	s3,8(sp)
    1bd2:	6145                	addi	sp,sp,48
    1bd4:	8082                	ret
    1bd6:	0ae00713          	li	a4,174
    1bda:	000026b7          	lui	a3,0x2
    1bde:	1b068693          	addi	a3,a3,432 # 21b0 <crctab+0x400>
    1be2:	8626                	mv	a2,s1
    1be4:	000025b7          	lui	a1,0x2
    1be8:	41858593          	addi	a1,a1,1048 # 2418 <crctab+0x668>
    1bec:	4509                	li	a0,2
    1bee:	fffff097          	auipc	ra,0xfffff
    1bf2:	740080e7          	jalr	1856(ra) # 132e <fprintf>
    1bf6:	650d                	lui	a0,0x3
    1bf8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bfc:	00000097          	auipc	ra,0x0
    1c00:	016080e7          	jalr	22(ra) # 1c12 <exit>
    1c04:	bf61                	j	1b9c <check_file+0x24>

0000000000001c06 <r_sp>:
    1c06:	850a                	mv	a0,sp
    1c08:	8082                	ret

0000000000001c0a <halt>:
    1c0a:	4885                	li	a7,1
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <exit>:
    1c12:	4889                	li	a7,2
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <exec>:
    1c1a:	488d                	li	a7,3
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <wait>:
    1c22:	4891                	li	a7,4
    1c24:	00000073          	ecall
    1c28:	8082                	ret

0000000000001c2a <remove>:
    1c2a:	4895                	li	a7,5
    1c2c:	00000073          	ecall
    1c30:	8082                	ret

0000000000001c32 <open>:
    1c32:	4899                	li	a7,6
    1c34:	00000073          	ecall
    1c38:	8082                	ret

0000000000001c3a <read>:
    1c3a:	489d                	li	a7,7
    1c3c:	00000073          	ecall
    1c40:	8082                	ret

0000000000001c42 <write>:
    1c42:	48a1                	li	a7,8
    1c44:	00000073          	ecall
    1c48:	8082                	ret

0000000000001c4a <seek>:
    1c4a:	48a5                	li	a7,9
    1c4c:	00000073          	ecall
    1c50:	8082                	ret

0000000000001c52 <tell>:
    1c52:	48a9                	li	a7,10
    1c54:	00000073          	ecall
    1c58:	8082                	ret

0000000000001c5a <close>:
    1c5a:	48ad                	li	a7,11
    1c5c:	00000073          	ecall
    1c60:	8082                	ret

0000000000001c62 <fstat>:
    1c62:	48b1                	li	a7,12
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <mmap>:
    1c6a:	48b5                	li	a7,13
    1c6c:	00000073          	ecall
    1c70:	8082                	ret

0000000000001c72 <munmap>:
    1c72:	48b9                	li	a7,14
    1c74:	00000073          	ecall
    1c78:	8082                	ret

0000000000001c7a <chdir>:
    1c7a:	48bd                	li	a7,15
    1c7c:	00000073          	ecall
    1c80:	8082                	ret

0000000000001c82 <mkdir>:
    1c82:	48c1                	li	a7,16
    1c84:	00000073          	ecall
    1c88:	8082                	ret
