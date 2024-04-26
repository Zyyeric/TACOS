
build/user/userprogs/args-none:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	842e                	mv	s0,a1
    1008:	4785                	li	a5,1
    100a:	02f51063          	bne	a0,a5,102a <main+0x2a>
    100e:	600c                	ld	a1,0(s0)
    1010:	00002537          	lui	a0,0x2
    1014:	cc850513          	addi	a0,a0,-824 # 1cc8 <mkdir+0x68>
    1018:	00000097          	auipc	ra,0x0
    101c:	66e080e7          	jalr	1646(ra) # 1686 <strcmp>
    1020:	e91d                	bnez	a0,1056 <main+0x56>
    1022:	60a2                	ld	ra,8(sp)
    1024:	6402                	ld	s0,0(sp)
    1026:	0141                	addi	sp,sp,16
    1028:	8082                	ret
    102a:	469d                	li	a3,7
    102c:	00002637          	lui	a2,0x2
    1030:	c7060613          	addi	a2,a2,-912 # 1c70 <mkdir+0x10>
    1034:	000025b7          	lui	a1,0x2
    1038:	c9058593          	addi	a1,a1,-880 # 1c90 <mkdir+0x30>
    103c:	4509                	li	a0,2
    103e:	00000097          	auipc	ra,0x0
    1042:	2ce080e7          	jalr	718(ra) # 130c <fprintf>
    1046:	650d                	lui	a0,0x3
    1048:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    104c:	00001097          	auipc	ra,0x1
    1050:	ba4080e7          	jalr	-1116(ra) # 1bf0 <exit>
    1054:	bf6d                	j	100e <main+0xe>
    1056:	46a1                	li	a3,8
    1058:	00002637          	lui	a2,0x2
    105c:	c7060613          	addi	a2,a2,-912 # 1c70 <mkdir+0x10>
    1060:	000025b7          	lui	a1,0x2
    1064:	cd858593          	addi	a1,a1,-808 # 1cd8 <mkdir+0x78>
    1068:	4509                	li	a0,2
    106a:	00000097          	auipc	ra,0x0
    106e:	2a2080e7          	jalr	674(ra) # 130c <fprintf>
    1072:	650d                	lui	a0,0x3
    1074:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1078:	00001097          	auipc	ra,0x1
    107c:	b78080e7          	jalr	-1160(ra) # 1bf0 <exit>
    1080:	b74d                	j	1022 <main+0x22>

0000000000001082 <putc>:
    1082:	1101                	addi	sp,sp,-32
    1084:	ec06                	sd	ra,24(sp)
    1086:	00b107a3          	sb	a1,15(sp)
    108a:	4605                	li	a2,1
    108c:	00f10593          	addi	a1,sp,15
    1090:	00001097          	auipc	ra,0x1
    1094:	b90080e7          	jalr	-1136(ra) # 1c20 <write>
    1098:	60e2                	ld	ra,24(sp)
    109a:	6105                	addi	sp,sp,32
    109c:	8082                	ret

000000000000109e <printint>:
    109e:	7179                	addi	sp,sp,-48
    10a0:	f406                	sd	ra,40(sp)
    10a2:	f022                	sd	s0,32(sp)
    10a4:	ec26                	sd	s1,24(sp)
    10a6:	e84a                	sd	s2,16(sp)
    10a8:	84aa                	mv	s1,a0
    10aa:	c299                	beqz	a3,10b0 <printint+0x12>
    10ac:	0805c363          	bltz	a1,1132 <printint+0x94>
    10b0:	2581                	sext.w	a1,a1
    10b2:	4881                	li	a7,0
    10b4:	868a                	mv	a3,sp
    10b6:	4701                	li	a4,0
    10b8:	2601                	sext.w	a2,a2
    10ba:	00002537          	lui	a0,0x2
    10be:	d3050513          	addi	a0,a0,-720 # 1d30 <digits>
    10c2:	883a                	mv	a6,a4
    10c4:	2705                	addiw	a4,a4,1
    10c6:	02c5f7bb          	remuw	a5,a1,a2
    10ca:	1782                	slli	a5,a5,0x20
    10cc:	9381                	srli	a5,a5,0x20
    10ce:	97aa                	add	a5,a5,a0
    10d0:	0007c783          	lbu	a5,0(a5)
    10d4:	00f68023          	sb	a5,0(a3)
    10d8:	0005879b          	sext.w	a5,a1
    10dc:	02c5d5bb          	divuw	a1,a1,a2
    10e0:	0685                	addi	a3,a3,1
    10e2:	fec7f0e3          	bgeu	a5,a2,10c2 <printint+0x24>
    10e6:	00088a63          	beqz	a7,10fa <printint+0x5c>
    10ea:	081c                	addi	a5,sp,16
    10ec:	973e                	add	a4,a4,a5
    10ee:	02d00793          	li	a5,45
    10f2:	fef70823          	sb	a5,-16(a4)
    10f6:	0028071b          	addiw	a4,a6,2
    10fa:	02e05663          	blez	a4,1126 <printint+0x88>
    10fe:	00e10433          	add	s0,sp,a4
    1102:	fff10913          	addi	s2,sp,-1
    1106:	993a                	add	s2,s2,a4
    1108:	377d                	addiw	a4,a4,-1
    110a:	1702                	slli	a4,a4,0x20
    110c:	9301                	srli	a4,a4,0x20
    110e:	40e90933          	sub	s2,s2,a4
    1112:	fff44583          	lbu	a1,-1(s0)
    1116:	8526                	mv	a0,s1
    1118:	00000097          	auipc	ra,0x0
    111c:	f6a080e7          	jalr	-150(ra) # 1082 <putc>
    1120:	147d                	addi	s0,s0,-1
    1122:	ff2418e3          	bne	s0,s2,1112 <printint+0x74>
    1126:	70a2                	ld	ra,40(sp)
    1128:	7402                	ld	s0,32(sp)
    112a:	64e2                	ld	s1,24(sp)
    112c:	6942                	ld	s2,16(sp)
    112e:	6145                	addi	sp,sp,48
    1130:	8082                	ret
    1132:	40b005bb          	negw	a1,a1
    1136:	4885                	li	a7,1
    1138:	bfb5                	j	10b4 <printint+0x16>

000000000000113a <vprintf>:
    113a:	7159                	addi	sp,sp,-112
    113c:	f486                	sd	ra,104(sp)
    113e:	f0a2                	sd	s0,96(sp)
    1140:	eca6                	sd	s1,88(sp)
    1142:	e8ca                	sd	s2,80(sp)
    1144:	e4ce                	sd	s3,72(sp)
    1146:	e0d2                	sd	s4,64(sp)
    1148:	fc56                	sd	s5,56(sp)
    114a:	f85a                	sd	s6,48(sp)
    114c:	f45e                	sd	s7,40(sp)
    114e:	f062                	sd	s8,32(sp)
    1150:	ec66                	sd	s9,24(sp)
    1152:	e86a                	sd	s10,16(sp)
    1154:	e46e                	sd	s11,8(sp)
    1156:	0005c483          	lbu	s1,0(a1)
    115a:	18048a63          	beqz	s1,12ee <vprintf+0x1b4>
    115e:	8a2a                	mv	s4,a0
    1160:	8ab2                	mv	s5,a2
    1162:	00158413          	addi	s0,a1,1
    1166:	4901                	li	s2,0
    1168:	02500993          	li	s3,37
    116c:	06400b93          	li	s7,100
    1170:	06c00c13          	li	s8,108
    1174:	07800c93          	li	s9,120
    1178:	07000d13          	li	s10,112
    117c:	00002db7          	lui	s11,0x2
    1180:	00002b37          	lui	s6,0x2
    1184:	d30b0b13          	addi	s6,s6,-720 # 1d30 <digits>
    1188:	a839                	j	11a6 <vprintf+0x6c>
    118a:	85a6                	mv	a1,s1
    118c:	8552                	mv	a0,s4
    118e:	00000097          	auipc	ra,0x0
    1192:	ef4080e7          	jalr	-268(ra) # 1082 <putc>
    1196:	a019                	j	119c <vprintf+0x62>
    1198:	01390f63          	beq	s2,s3,11b6 <vprintf+0x7c>
    119c:	0405                	addi	s0,s0,1
    119e:	fff44483          	lbu	s1,-1(s0)
    11a2:	14048663          	beqz	s1,12ee <vprintf+0x1b4>
    11a6:	0004879b          	sext.w	a5,s1
    11aa:	fe0917e3          	bnez	s2,1198 <vprintf+0x5e>
    11ae:	fd379ee3          	bne	a5,s3,118a <vprintf+0x50>
    11b2:	893e                	mv	s2,a5
    11b4:	b7e5                	j	119c <vprintf+0x62>
    11b6:	05778063          	beq	a5,s7,11f6 <vprintf+0xbc>
    11ba:	05878c63          	beq	a5,s8,1212 <vprintf+0xd8>
    11be:	07978863          	beq	a5,s9,122e <vprintf+0xf4>
    11c2:	09a78463          	beq	a5,s10,124a <vprintf+0x110>
    11c6:	07300713          	li	a4,115
    11ca:	0ce78263          	beq	a5,a4,128e <vprintf+0x154>
    11ce:	06300713          	li	a4,99
    11d2:	0ee78763          	beq	a5,a4,12c0 <vprintf+0x186>
    11d6:	11378163          	beq	a5,s3,12d8 <vprintf+0x19e>
    11da:	85ce                	mv	a1,s3
    11dc:	8552                	mv	a0,s4
    11de:	00000097          	auipc	ra,0x0
    11e2:	ea4080e7          	jalr	-348(ra) # 1082 <putc>
    11e6:	85a6                	mv	a1,s1
    11e8:	8552                	mv	a0,s4
    11ea:	00000097          	auipc	ra,0x0
    11ee:	e98080e7          	jalr	-360(ra) # 1082 <putc>
    11f2:	4901                	li	s2,0
    11f4:	b765                	j	119c <vprintf+0x62>
    11f6:	008a8493          	addi	s1,s5,8
    11fa:	4685                	li	a3,1
    11fc:	4629                	li	a2,10
    11fe:	000aa583          	lw	a1,0(s5)
    1202:	8552                	mv	a0,s4
    1204:	00000097          	auipc	ra,0x0
    1208:	e9a080e7          	jalr	-358(ra) # 109e <printint>
    120c:	8aa6                	mv	s5,s1
    120e:	4901                	li	s2,0
    1210:	b771                	j	119c <vprintf+0x62>
    1212:	008a8493          	addi	s1,s5,8
    1216:	4681                	li	a3,0
    1218:	4629                	li	a2,10
    121a:	000aa583          	lw	a1,0(s5)
    121e:	8552                	mv	a0,s4
    1220:	00000097          	auipc	ra,0x0
    1224:	e7e080e7          	jalr	-386(ra) # 109e <printint>
    1228:	8aa6                	mv	s5,s1
    122a:	4901                	li	s2,0
    122c:	bf85                	j	119c <vprintf+0x62>
    122e:	008a8493          	addi	s1,s5,8
    1232:	4681                	li	a3,0
    1234:	4641                	li	a2,16
    1236:	000aa583          	lw	a1,0(s5)
    123a:	8552                	mv	a0,s4
    123c:	00000097          	auipc	ra,0x0
    1240:	e62080e7          	jalr	-414(ra) # 109e <printint>
    1244:	8aa6                	mv	s5,s1
    1246:	4901                	li	s2,0
    1248:	bf91                	j	119c <vprintf+0x62>
    124a:	008a8913          	addi	s2,s5,8
    124e:	000aba83          	ld	s5,0(s5)
    1252:	03000593          	li	a1,48
    1256:	8552                	mv	a0,s4
    1258:	00000097          	auipc	ra,0x0
    125c:	e2a080e7          	jalr	-470(ra) # 1082 <putc>
    1260:	85e6                	mv	a1,s9
    1262:	8552                	mv	a0,s4
    1264:	00000097          	auipc	ra,0x0
    1268:	e1e080e7          	jalr	-482(ra) # 1082 <putc>
    126c:	44c1                	li	s1,16
    126e:	03cad793          	srli	a5,s5,0x3c
    1272:	97da                	add	a5,a5,s6
    1274:	0007c583          	lbu	a1,0(a5)
    1278:	8552                	mv	a0,s4
    127a:	00000097          	auipc	ra,0x0
    127e:	e08080e7          	jalr	-504(ra) # 1082 <putc>
    1282:	0a92                	slli	s5,s5,0x4
    1284:	34fd                	addiw	s1,s1,-1
    1286:	f4e5                	bnez	s1,126e <vprintf+0x134>
    1288:	8aca                	mv	s5,s2
    128a:	4901                	li	s2,0
    128c:	bf01                	j	119c <vprintf+0x62>
    128e:	008a8913          	addi	s2,s5,8
    1292:	000ab483          	ld	s1,0(s5)
    1296:	c085                	beqz	s1,12b6 <vprintf+0x17c>
    1298:	0004c583          	lbu	a1,0(s1)
    129c:	c5b1                	beqz	a1,12e8 <vprintf+0x1ae>
    129e:	8552                	mv	a0,s4
    12a0:	00000097          	auipc	ra,0x0
    12a4:	de2080e7          	jalr	-542(ra) # 1082 <putc>
    12a8:	0485                	addi	s1,s1,1
    12aa:	0004c583          	lbu	a1,0(s1)
    12ae:	f9e5                	bnez	a1,129e <vprintf+0x164>
    12b0:	8aca                	mv	s5,s2
    12b2:	4901                	li	s2,0
    12b4:	b5e5                	j	119c <vprintf+0x62>
    12b6:	d28d8493          	addi	s1,s11,-728 # 1d28 <mkdir+0xc8>
    12ba:	02800593          	li	a1,40
    12be:	b7c5                	j	129e <vprintf+0x164>
    12c0:	008a8493          	addi	s1,s5,8
    12c4:	000ac583          	lbu	a1,0(s5)
    12c8:	8552                	mv	a0,s4
    12ca:	00000097          	auipc	ra,0x0
    12ce:	db8080e7          	jalr	-584(ra) # 1082 <putc>
    12d2:	8aa6                	mv	s5,s1
    12d4:	4901                	li	s2,0
    12d6:	b5d9                	j	119c <vprintf+0x62>
    12d8:	85ce                	mv	a1,s3
    12da:	8552                	mv	a0,s4
    12dc:	00000097          	auipc	ra,0x0
    12e0:	da6080e7          	jalr	-602(ra) # 1082 <putc>
    12e4:	4901                	li	s2,0
    12e6:	bd5d                	j	119c <vprintf+0x62>
    12e8:	8aca                	mv	s5,s2
    12ea:	4901                	li	s2,0
    12ec:	bd45                	j	119c <vprintf+0x62>
    12ee:	70a6                	ld	ra,104(sp)
    12f0:	7406                	ld	s0,96(sp)
    12f2:	64e6                	ld	s1,88(sp)
    12f4:	6946                	ld	s2,80(sp)
    12f6:	69a6                	ld	s3,72(sp)
    12f8:	6a06                	ld	s4,64(sp)
    12fa:	7ae2                	ld	s5,56(sp)
    12fc:	7b42                	ld	s6,48(sp)
    12fe:	7ba2                	ld	s7,40(sp)
    1300:	7c02                	ld	s8,32(sp)
    1302:	6ce2                	ld	s9,24(sp)
    1304:	6d42                	ld	s10,16(sp)
    1306:	6da2                	ld	s11,8(sp)
    1308:	6165                	addi	sp,sp,112
    130a:	8082                	ret

000000000000130c <fprintf>:
    130c:	715d                	addi	sp,sp,-80
    130e:	ec06                	sd	ra,24(sp)
    1310:	f032                	sd	a2,32(sp)
    1312:	f436                	sd	a3,40(sp)
    1314:	f83a                	sd	a4,48(sp)
    1316:	fc3e                	sd	a5,56(sp)
    1318:	e0c2                	sd	a6,64(sp)
    131a:	e4c6                	sd	a7,72(sp)
    131c:	1010                	addi	a2,sp,32
    131e:	e432                	sd	a2,8(sp)
    1320:	00000097          	auipc	ra,0x0
    1324:	e1a080e7          	jalr	-486(ra) # 113a <vprintf>
    1328:	60e2                	ld	ra,24(sp)
    132a:	6161                	addi	sp,sp,80
    132c:	8082                	ret

000000000000132e <printf>:
    132e:	711d                	addi	sp,sp,-96
    1330:	ec06                	sd	ra,24(sp)
    1332:	f42e                	sd	a1,40(sp)
    1334:	f832                	sd	a2,48(sp)
    1336:	fc36                	sd	a3,56(sp)
    1338:	e0ba                	sd	a4,64(sp)
    133a:	e4be                	sd	a5,72(sp)
    133c:	e8c2                	sd	a6,80(sp)
    133e:	ecc6                	sd	a7,88(sp)
    1340:	1030                	addi	a2,sp,40
    1342:	e432                	sd	a2,8(sp)
    1344:	85aa                	mv	a1,a0
    1346:	4505                	li	a0,1
    1348:	00000097          	auipc	ra,0x0
    134c:	df2080e7          	jalr	-526(ra) # 113a <vprintf>
    1350:	60e2                	ld	ra,24(sp)
    1352:	6125                	addi	sp,sp,96
    1354:	8082                	ret

0000000000001356 <cksum>:
    1356:	cdb1                	beqz	a1,13b2 <cksum+0x5c>
    1358:	00b50833          	add	a6,a0,a1
    135c:	4781                	li	a5,0
    135e:	00002637          	lui	a2,0x2
    1362:	d4860613          	addi	a2,a2,-696 # 1d48 <crctab>
    1366:	0505                	addi	a0,a0,1
    1368:	0087969b          	slliw	a3,a5,0x8
    136c:	0187d71b          	srliw	a4,a5,0x18
    1370:	fff54783          	lbu	a5,-1(a0)
    1374:	8f3d                	xor	a4,a4,a5
    1376:	1702                	slli	a4,a4,0x20
    1378:	9301                	srli	a4,a4,0x20
    137a:	070a                	slli	a4,a4,0x2
    137c:	9732                	add	a4,a4,a2
    137e:	431c                	lw	a5,0(a4)
    1380:	8fb5                	xor	a5,a5,a3
    1382:	2781                	sext.w	a5,a5
    1384:	fea811e3          	bne	a6,a0,1366 <cksum+0x10>
    1388:	00002637          	lui	a2,0x2
    138c:	d4860613          	addi	a2,a2,-696 # 1d48 <crctab>
    1390:	0ff5f693          	andi	a3,a1,255
    1394:	81a1                	srli	a1,a1,0x8
    1396:	0087951b          	slliw	a0,a5,0x8
    139a:	0187d71b          	srliw	a4,a5,0x18
    139e:	8f35                	xor	a4,a4,a3
    13a0:	070a                	slli	a4,a4,0x2
    13a2:	9732                	add	a4,a4,a2
    13a4:	431c                	lw	a5,0(a4)
    13a6:	8fa9                	xor	a5,a5,a0
    13a8:	2781                	sext.w	a5,a5
    13aa:	f1fd                	bnez	a1,1390 <cksum+0x3a>
    13ac:	fff7c513          	not	a0,a5
    13b0:	8082                	ret
    13b2:	4781                	li	a5,0
    13b4:	bfe5                	j	13ac <cksum+0x56>

00000000000013b6 <swap_bytes>:
    13b6:	ce19                	beqz	a2,13d4 <swap_bytes+0x1e>
    13b8:	87aa                	mv	a5,a0
    13ba:	962a                	add	a2,a2,a0
    13bc:	0007c703          	lbu	a4,0(a5)
    13c0:	0005c683          	lbu	a3,0(a1)
    13c4:	00d78023          	sb	a3,0(a5)
    13c8:	00e58023          	sb	a4,0(a1)
    13cc:	0785                	addi	a5,a5,1
    13ce:	0585                	addi	a1,a1,1
    13d0:	fec796e3          	bne	a5,a2,13bc <swap_bytes+0x6>
    13d4:	8082                	ret

00000000000013d6 <random_init>:
    13d6:	7139                	addi	sp,sp,-64
    13d8:	fc06                	sd	ra,56(sp)
    13da:	f822                	sd	s0,48(sp)
    13dc:	f426                	sd	s1,40(sp)
    13de:	f04a                	sd	s2,32(sp)
    13e0:	ec4e                	sd	s3,24(sp)
    13e2:	e852                	sd	s4,16(sp)
    13e4:	c62a                	sw	a0,12(sp)
    13e6:	000037b7          	lui	a5,0x3
    13ea:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13ee:	eca5                	bnez	s1,1466 <random_init+0x90>
    13f0:	00003737          	lui	a4,0x3
    13f4:	01070913          	addi	s2,a4,16 # 3010 <s>
    13f8:	01070713          	addi	a4,a4,16
    13fc:	87a6                	mv	a5,s1
    13fe:	10000693          	li	a3,256
    1402:	00f70023          	sb	a5,0(a4)
    1406:	2785                	addiw	a5,a5,1
    1408:	0705                	addi	a4,a4,1
    140a:	fed79ce3          	bne	a5,a3,1402 <random_init+0x2c>
    140e:	4401                	li	s0,0
    1410:	000039b7          	lui	s3,0x3
    1414:	01098993          	addi	s3,s3,16 # 3010 <s>
    1418:	10000a13          	li	s4,256
    141c:	0034f793          	andi	a5,s1,3
    1420:	0818                	addi	a4,sp,16
    1422:	97ba                	add	a5,a5,a4
    1424:	ffc7c783          	lbu	a5,-4(a5)
    1428:	00094703          	lbu	a4,0(s2)
    142c:	9fb9                	addw	a5,a5,a4
    142e:	9c3d                	addw	s0,s0,a5
    1430:	0ff47413          	andi	s0,s0,255
    1434:	4605                	li	a2,1
    1436:	008985b3          	add	a1,s3,s0
    143a:	854a                	mv	a0,s2
    143c:	00000097          	auipc	ra,0x0
    1440:	f7a080e7          	jalr	-134(ra) # 13b6 <swap_bytes>
    1444:	2485                	addiw	s1,s1,1
    1446:	0905                	addi	s2,s2,1
    1448:	fd449ae3          	bne	s1,s4,141c <random_init+0x46>
    144c:	000037b7          	lui	a5,0x3
    1450:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1454:	000037b7          	lui	a5,0x3
    1458:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    145c:	000037b7          	lui	a5,0x3
    1460:	4705                	li	a4,1
    1462:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1466:	70e2                	ld	ra,56(sp)
    1468:	7442                	ld	s0,48(sp)
    146a:	74a2                	ld	s1,40(sp)
    146c:	7902                	ld	s2,32(sp)
    146e:	69e2                	ld	s3,24(sp)
    1470:	6a42                	ld	s4,16(sp)
    1472:	6121                	addi	sp,sp,64
    1474:	8082                	ret

0000000000001476 <random_bytes>:
    1476:	7139                	addi	sp,sp,-64
    1478:	fc06                	sd	ra,56(sp)
    147a:	f822                	sd	s0,48(sp)
    147c:	f426                	sd	s1,40(sp)
    147e:	f04a                	sd	s2,32(sp)
    1480:	ec4e                	sd	s3,24(sp)
    1482:	e852                	sd	s4,16(sp)
    1484:	e456                	sd	s5,8(sp)
    1486:	e05a                	sd	s6,0(sp)
    1488:	892a                	mv	s2,a0
    148a:	8aae                	mv	s5,a1
    148c:	000037b7          	lui	a5,0x3
    1490:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1494:	c3c1                	beqz	a5,1514 <random_bytes+0x9e>
    1496:	060a8563          	beqz	s5,1500 <random_bytes+0x8a>
    149a:	9aca                	add	s5,s5,s2
    149c:	00003a37          	lui	s4,0x3
    14a0:	000034b7          	lui	s1,0x3
    14a4:	01048493          	addi	s1,s1,16 # 3010 <s>
    14a8:	000039b7          	lui	s3,0x3
    14ac:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14b0:	2505                	addiw	a0,a0,1
    14b2:	0ff57513          	andi	a0,a0,255
    14b6:	00aa02a3          	sb	a0,5(s4)
    14ba:	00a48b33          	add	s6,s1,a0
    14be:	000b4403          	lbu	s0,0(s6)
    14c2:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14c6:	9c3d                	addw	s0,s0,a5
    14c8:	0ff47413          	andi	s0,s0,255
    14cc:	00898223          	sb	s0,4(s3)
    14d0:	4605                	li	a2,1
    14d2:	008485b3          	add	a1,s1,s0
    14d6:	855a                	mv	a0,s6
    14d8:	00000097          	auipc	ra,0x0
    14dc:	ede080e7          	jalr	-290(ra) # 13b6 <swap_bytes>
    14e0:	9426                	add	s0,s0,s1
    14e2:	000b4783          	lbu	a5,0(s6)
    14e6:	00044703          	lbu	a4,0(s0)
    14ea:	9fb9                	addw	a5,a5,a4
    14ec:	0ff7f793          	andi	a5,a5,255
    14f0:	97a6                	add	a5,a5,s1
    14f2:	0007c783          	lbu	a5,0(a5)
    14f6:	00f90023          	sb	a5,0(s2)
    14fa:	0905                	addi	s2,s2,1
    14fc:	fb2a98e3          	bne	s5,s2,14ac <random_bytes+0x36>
    1500:	70e2                	ld	ra,56(sp)
    1502:	7442                	ld	s0,48(sp)
    1504:	74a2                	ld	s1,40(sp)
    1506:	7902                	ld	s2,32(sp)
    1508:	69e2                	ld	s3,24(sp)
    150a:	6a42                	ld	s4,16(sp)
    150c:	6aa2                	ld	s5,8(sp)
    150e:	6b02                	ld	s6,0(sp)
    1510:	6121                	addi	sp,sp,64
    1512:	8082                	ret
    1514:	4501                	li	a0,0
    1516:	00000097          	auipc	ra,0x0
    151a:	ec0080e7          	jalr	-320(ra) # 13d6 <random_init>
    151e:	bfa5                	j	1496 <random_bytes+0x20>

0000000000001520 <random_ulong>:
    1520:	1101                	addi	sp,sp,-32
    1522:	ec06                	sd	ra,24(sp)
    1524:	45a1                	li	a1,8
    1526:	0028                	addi	a0,sp,8
    1528:	00000097          	auipc	ra,0x0
    152c:	f4e080e7          	jalr	-178(ra) # 1476 <random_bytes>
    1530:	6522                	ld	a0,8(sp)
    1532:	60e2                	ld	ra,24(sp)
    1534:	6105                	addi	sp,sp,32
    1536:	8082                	ret

0000000000001538 <shuffle>:
    1538:	c9b9                	beqz	a1,158e <shuffle+0x56>
    153a:	7179                	addi	sp,sp,-48
    153c:	f406                	sd	ra,40(sp)
    153e:	f022                	sd	s0,32(sp)
    1540:	ec26                	sd	s1,24(sp)
    1542:	e84a                	sd	s2,16(sp)
    1544:	e44e                	sd	s3,8(sp)
    1546:	e052                	sd	s4,0(sp)
    1548:	8a2a                	mv	s4,a0
    154a:	89ae                	mv	s3,a1
    154c:	84b2                	mv	s1,a2
    154e:	892a                	mv	s2,a0
    1550:	4401                	li	s0,0
    1552:	00000097          	auipc	ra,0x0
    1556:	fce080e7          	jalr	-50(ra) # 1520 <random_ulong>
    155a:	408985b3          	sub	a1,s3,s0
    155e:	02b575b3          	remu	a1,a0,a1
    1562:	95a2                	add	a1,a1,s0
    1564:	029585b3          	mul	a1,a1,s1
    1568:	8626                	mv	a2,s1
    156a:	95d2                	add	a1,a1,s4
    156c:	854a                	mv	a0,s2
    156e:	00000097          	auipc	ra,0x0
    1572:	e48080e7          	jalr	-440(ra) # 13b6 <swap_bytes>
    1576:	0405                	addi	s0,s0,1
    1578:	9926                	add	s2,s2,s1
    157a:	fc899ce3          	bne	s3,s0,1552 <shuffle+0x1a>
    157e:	70a2                	ld	ra,40(sp)
    1580:	7402                	ld	s0,32(sp)
    1582:	64e2                	ld	s1,24(sp)
    1584:	6942                	ld	s2,16(sp)
    1586:	69a2                	ld	s3,8(sp)
    1588:	6a02                	ld	s4,0(sp)
    158a:	6145                	addi	sp,sp,48
    158c:	8082                	ret
    158e:	8082                	ret

0000000000001590 <arc4_init>:
    1590:	100500a3          	sb	zero,257(a0)
    1594:	10050023          	sb	zero,256(a0)
    1598:	4781                	li	a5,0
    159a:	10000693          	li	a3,256
    159e:	00f50733          	add	a4,a0,a5
    15a2:	00f70023          	sb	a5,0(a4)
    15a6:	0785                	addi	a5,a5,1
    15a8:	fed79be3          	bne	a5,a3,159e <arc4_init+0xe>
    15ac:	86aa                	mv	a3,a0
    15ae:	10050e13          	addi	t3,a0,256
    15b2:	4701                	li	a4,0
    15b4:	4781                	li	a5,0
    15b6:	0006c883          	lbu	a7,0(a3)
    15ba:	00f58833          	add	a6,a1,a5
    15be:	00084803          	lbu	a6,0(a6)
    15c2:	00e8873b          	addw	a4,a7,a4
    15c6:	00e8073b          	addw	a4,a6,a4
    15ca:	0ff77713          	andi	a4,a4,255
    15ce:	00e50833          	add	a6,a0,a4
    15d2:	00084303          	lbu	t1,0(a6)
    15d6:	00668023          	sb	t1,0(a3)
    15da:	01180023          	sb	a7,0(a6)
    15de:	0785                	addi	a5,a5,1
    15e0:	00c7b833          	sltu	a6,a5,a2
    15e4:	41000833          	neg	a6,a6
    15e8:	0107f7b3          	and	a5,a5,a6
    15ec:	0685                	addi	a3,a3,1
    15ee:	fdc694e3          	bne	a3,t3,15b6 <arc4_init+0x26>
    15f2:	8082                	ret

00000000000015f4 <arc4_crypt>:
    15f4:	10054e03          	lbu	t3,256(a0)
    15f8:	10154803          	lbu	a6,257(a0)
    15fc:	fff60e93          	addi	t4,a2,-1
    1600:	c225                	beqz	a2,1660 <arc4_crypt+0x6c>
    1602:	00c588b3          	add	a7,a1,a2
    1606:	86ae                	mv	a3,a1
    1608:	001e031b          	addiw	t1,t3,1
    160c:	40b3033b          	subw	t1,t1,a1
    1610:	00d3073b          	addw	a4,t1,a3
    1614:	0ff77713          	andi	a4,a4,255
    1618:	972a                	add	a4,a4,a0
    161a:	00074603          	lbu	a2,0(a4)
    161e:	0106083b          	addw	a6,a2,a6
    1622:	0ff87813          	andi	a6,a6,255
    1626:	010507b3          	add	a5,a0,a6
    162a:	0007c583          	lbu	a1,0(a5)
    162e:	00b70023          	sb	a1,0(a4)
    1632:	00c78023          	sb	a2,0(a5)
    1636:	0685                	addi	a3,a3,1
    1638:	00074783          	lbu	a5,0(a4)
    163c:	9fb1                	addw	a5,a5,a2
    163e:	0ff7f793          	andi	a5,a5,255
    1642:	97aa                	add	a5,a5,a0
    1644:	0007c783          	lbu	a5,0(a5)
    1648:	fff6c703          	lbu	a4,-1(a3)
    164c:	8fb9                	xor	a5,a5,a4
    164e:	fef68fa3          	sb	a5,-1(a3)
    1652:	fb169fe3          	bne	a3,a7,1610 <arc4_crypt+0x1c>
    1656:	2e85                	addiw	t4,t4,1
    1658:	01ce8e3b          	addw	t3,t4,t3
    165c:	0ffe7e13          	andi	t3,t3,255
    1660:	11c50023          	sb	t3,256(a0)
    1664:	110500a3          	sb	a6,257(a0)
    1668:	8082                	ret

000000000000166a <_main>:
    166a:	1141                	addi	sp,sp,-16
    166c:	e406                	sd	ra,8(sp)
    166e:	00000097          	auipc	ra,0x0
    1672:	992080e7          	jalr	-1646(ra) # 1000 <main>
    1676:	4501                	li	a0,0
    1678:	00000097          	auipc	ra,0x0
    167c:	578080e7          	jalr	1400(ra) # 1bf0 <exit>
    1680:	60a2                	ld	ra,8(sp)
    1682:	0141                	addi	sp,sp,16
    1684:	8082                	ret

0000000000001686 <strcmp>:
    1686:	00054783          	lbu	a5,0(a0)
    168a:	cb91                	beqz	a5,169e <strcmp+0x18>
    168c:	0005c703          	lbu	a4,0(a1)
    1690:	00f71763          	bne	a4,a5,169e <strcmp+0x18>
    1694:	0505                	addi	a0,a0,1
    1696:	0585                	addi	a1,a1,1
    1698:	00054783          	lbu	a5,0(a0)
    169c:	fbe5                	bnez	a5,168c <strcmp+0x6>
    169e:	0005c503          	lbu	a0,0(a1)
    16a2:	40a7853b          	subw	a0,a5,a0
    16a6:	8082                	ret

00000000000016a8 <strcpy>:
    16a8:	87aa                	mv	a5,a0
    16aa:	0585                	addi	a1,a1,1
    16ac:	0785                	addi	a5,a5,1
    16ae:	fff5c703          	lbu	a4,-1(a1)
    16b2:	fee78fa3          	sb	a4,-1(a5)
    16b6:	fb75                	bnez	a4,16aa <strcpy+0x2>
    16b8:	8082                	ret

00000000000016ba <strlen>:
    16ba:	00054783          	lbu	a5,0(a0)
    16be:	cf81                	beqz	a5,16d6 <strlen+0x1c>
    16c0:	0505                	addi	a0,a0,1
    16c2:	87aa                	mv	a5,a0
    16c4:	4685                	li	a3,1
    16c6:	9e89                	subw	a3,a3,a0
    16c8:	00f6853b          	addw	a0,a3,a5
    16cc:	0785                	addi	a5,a5,1
    16ce:	fff7c703          	lbu	a4,-1(a5)
    16d2:	fb7d                	bnez	a4,16c8 <strlen+0xe>
    16d4:	8082                	ret
    16d6:	4501                	li	a0,0
    16d8:	8082                	ret

00000000000016da <memset>:
    16da:	ca19                	beqz	a2,16f0 <memset+0x16>
    16dc:	87aa                	mv	a5,a0
    16de:	1602                	slli	a2,a2,0x20
    16e0:	9201                	srli	a2,a2,0x20
    16e2:	00a60733          	add	a4,a2,a0
    16e6:	00b78023          	sb	a1,0(a5)
    16ea:	0785                	addi	a5,a5,1
    16ec:	fee79de3          	bne	a5,a4,16e6 <memset+0xc>
    16f0:	8082                	ret

00000000000016f2 <memcmp>:
    16f2:	1101                	addi	sp,sp,-32
    16f4:	ec06                	sd	ra,24(sp)
    16f6:	e822                	sd	s0,16(sp)
    16f8:	e426                	sd	s1,8(sp)
    16fa:	e04a                	sd	s2,0(sp)
    16fc:	892a                	mv	s2,a0
    16fe:	842e                	mv	s0,a1
    1700:	84b2                	mv	s1,a2
    1702:	c915                	beqz	a0,1736 <memcmp+0x44>
    1704:	c5ad                	beqz	a1,176e <memcmp+0x7c>
    1706:	fff60713          	addi	a4,a2,-1
    170a:	c645                	beqz	a2,17b2 <memcmp+0xc0>
    170c:	87ca                	mv	a5,s2
    170e:	00190613          	addi	a2,s2,1
    1712:	963a                	add	a2,a2,a4
    1714:	0007c683          	lbu	a3,0(a5)
    1718:	00044703          	lbu	a4,0(s0)
    171c:	08e69463          	bne	a3,a4,17a4 <memcmp+0xb2>
    1720:	0785                	addi	a5,a5,1
    1722:	0405                	addi	s0,s0,1
    1724:	fec798e3          	bne	a5,a2,1714 <memcmp+0x22>
    1728:	4501                	li	a0,0
    172a:	60e2                	ld	ra,24(sp)
    172c:	6442                	ld	s0,16(sp)
    172e:	64a2                	ld	s1,8(sp)
    1730:	6902                	ld	s2,0(sp)
    1732:	6105                	addi	sp,sp,32
    1734:	8082                	ret
    1736:	4501                	li	a0,0
    1738:	da6d                	beqz	a2,172a <memcmp+0x38>
    173a:	03200693          	li	a3,50
    173e:	00002637          	lui	a2,0x2
    1742:	14860613          	addi	a2,a2,328 # 2148 <crctab+0x400>
    1746:	000025b7          	lui	a1,0x2
    174a:	15858593          	addi	a1,a1,344 # 2158 <crctab+0x410>
    174e:	4509                	li	a0,2
    1750:	00000097          	auipc	ra,0x0
    1754:	bbc080e7          	jalr	-1092(ra) # 130c <fprintf>
    1758:	650d                	lui	a0,0x3
    175a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    175e:	00000097          	auipc	ra,0x0
    1762:	492080e7          	jalr	1170(ra) # 1bf0 <exit>
    1766:	fff48713          	addi	a4,s1,-1
    176a:	f04d                	bnez	s0,170c <memcmp+0x1a>
    176c:	a011                	j	1770 <memcmp+0x7e>
    176e:	c221                	beqz	a2,17ae <memcmp+0xbc>
    1770:	03300693          	li	a3,51
    1774:	00002637          	lui	a2,0x2
    1778:	14860613          	addi	a2,a2,328 # 2148 <crctab+0x400>
    177c:	000025b7          	lui	a1,0x2
    1780:	1a058593          	addi	a1,a1,416 # 21a0 <crctab+0x458>
    1784:	4509                	li	a0,2
    1786:	00000097          	auipc	ra,0x0
    178a:	b86080e7          	jalr	-1146(ra) # 130c <fprintf>
    178e:	650d                	lui	a0,0x3
    1790:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1794:	00000097          	auipc	ra,0x0
    1798:	45c080e7          	jalr	1116(ra) # 1bf0 <exit>
    179c:	fff48713          	addi	a4,s1,-1
    17a0:	4401                	li	s0,0
    17a2:	b7ad                	j	170c <memcmp+0x1a>
    17a4:	4505                	li	a0,1
    17a6:	f8d762e3          	bltu	a4,a3,172a <memcmp+0x38>
    17aa:	557d                	li	a0,-1
    17ac:	bfbd                	j	172a <memcmp+0x38>
    17ae:	4501                	li	a0,0
    17b0:	bfad                	j	172a <memcmp+0x38>
    17b2:	4501                	li	a0,0
    17b4:	bf9d                	j	172a <memcmp+0x38>

00000000000017b6 <memcpy>:
    17b6:	1101                	addi	sp,sp,-32
    17b8:	ec06                	sd	ra,24(sp)
    17ba:	e822                	sd	s0,16(sp)
    17bc:	e426                	sd	s1,8(sp)
    17be:	e04a                	sd	s2,0(sp)
    17c0:	84aa                	mv	s1,a0
    17c2:	842e                	mv	s0,a1
    17c4:	8932                	mv	s2,a2
    17c6:	c51d                	beqz	a0,17f4 <memcpy+0x3e>
    17c8:	c1ad                	beqz	a1,182a <memcpy+0x74>
    17ca:	fff60693          	addi	a3,a2,-1
    17ce:	ce01                	beqz	a2,17e6 <memcpy+0x30>
    17d0:	0685                	addi	a3,a3,1
    17d2:	96a6                	add	a3,a3,s1
    17d4:	87a6                	mv	a5,s1
    17d6:	0405                	addi	s0,s0,1
    17d8:	0785                	addi	a5,a5,1
    17da:	fff44703          	lbu	a4,-1(s0)
    17de:	fee78fa3          	sb	a4,-1(a5)
    17e2:	fed79ae3          	bne	a5,a3,17d6 <memcpy+0x20>
    17e6:	8526                	mv	a0,s1
    17e8:	60e2                	ld	ra,24(sp)
    17ea:	6442                	ld	s0,16(sp)
    17ec:	64a2                	ld	s1,8(sp)
    17ee:	6902                	ld	s2,0(sp)
    17f0:	6105                	addi	sp,sp,32
    17f2:	8082                	ret
    17f4:	da6d                	beqz	a2,17e6 <memcpy+0x30>
    17f6:	04000693          	li	a3,64
    17fa:	00002637          	lui	a2,0x2
    17fe:	14860613          	addi	a2,a2,328 # 2148 <crctab+0x400>
    1802:	000025b7          	lui	a1,0x2
    1806:	1e858593          	addi	a1,a1,488 # 21e8 <crctab+0x4a0>
    180a:	4509                	li	a0,2
    180c:	00000097          	auipc	ra,0x0
    1810:	b00080e7          	jalr	-1280(ra) # 130c <fprintf>
    1814:	650d                	lui	a0,0x3
    1816:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    181a:	00000097          	auipc	ra,0x0
    181e:	3d6080e7          	jalr	982(ra) # 1bf0 <exit>
    1822:	fff90693          	addi	a3,s2,-1
    1826:	f44d                	bnez	s0,17d0 <memcpy+0x1a>
    1828:	a011                	j	182c <memcpy+0x76>
    182a:	de55                	beqz	a2,17e6 <memcpy+0x30>
    182c:	04100693          	li	a3,65
    1830:	00002637          	lui	a2,0x2
    1834:	14860613          	addi	a2,a2,328 # 2148 <crctab+0x400>
    1838:	000025b7          	lui	a1,0x2
    183c:	23058593          	addi	a1,a1,560 # 2230 <crctab+0x4e8>
    1840:	4509                	li	a0,2
    1842:	00000097          	auipc	ra,0x0
    1846:	aca080e7          	jalr	-1334(ra) # 130c <fprintf>
    184a:	650d                	lui	a0,0x3
    184c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1850:	00000097          	auipc	ra,0x0
    1854:	3a0080e7          	jalr	928(ra) # 1bf0 <exit>
    1858:	fff90693          	addi	a3,s2,-1
    185c:	4401                	li	s0,0
    185e:	bf8d                	j	17d0 <memcpy+0x1a>

0000000000001860 <itoa>:
    1860:	1101                	addi	sp,sp,-32
    1862:	ec06                	sd	ra,24(sp)
    1864:	e822                	sd	s0,16(sp)
    1866:	e426                	sd	s1,8(sp)
    1868:	842a                	mv	s0,a0
    186a:	41f5d71b          	sraiw	a4,a1,0x1f
    186e:	00e5c7b3          	xor	a5,a1,a4
    1872:	9f99                	subw	a5,a5,a4
    1874:	84aa                	mv	s1,a0
    1876:	862a                	mv	a2,a0
    1878:	4681                	li	a3,0
    187a:	4529                	li	a0,10
    187c:	4825                	li	a6,9
    187e:	88b6                	mv	a7,a3
    1880:	2685                	addiw	a3,a3,1
    1882:	02a7e73b          	remw	a4,a5,a0
    1886:	0307071b          	addiw	a4,a4,48
    188a:	00e60023          	sb	a4,0(a2)
    188e:	873e                	mv	a4,a5
    1890:	02a7c7bb          	divw	a5,a5,a0
    1894:	0605                	addi	a2,a2,1
    1896:	fee844e3          	blt	a6,a4,187e <itoa+0x1e>
    189a:	0405c863          	bltz	a1,18ea <itoa+0x8a>
    189e:	96a2                	add	a3,a3,s0
    18a0:	00068023          	sb	zero,0(a3)
    18a4:	8522                	mv	a0,s0
    18a6:	00000097          	auipc	ra,0x0
    18aa:	e14080e7          	jalr	-492(ra) # 16ba <strlen>
    18ae:	fff5071b          	addiw	a4,a0,-1
    18b2:	02e05763          	blez	a4,18e0 <itoa+0x80>
    18b6:	9722                	add	a4,a4,s0
    18b8:	4681                	li	a3,0
    18ba:	0004c783          	lbu	a5,0(s1)
    18be:	00074603          	lbu	a2,0(a4)
    18c2:	00c48023          	sb	a2,0(s1)
    18c6:	00f70023          	sb	a5,0(a4)
    18ca:	0016879b          	addiw	a5,a3,1
    18ce:	0007869b          	sext.w	a3,a5
    18d2:	0485                	addi	s1,s1,1
    18d4:	177d                	addi	a4,a4,-1
    18d6:	fff7c793          	not	a5,a5
    18da:	9fa9                	addw	a5,a5,a0
    18dc:	fcf6cfe3          	blt	a3,a5,18ba <itoa+0x5a>
    18e0:	60e2                	ld	ra,24(sp)
    18e2:	6442                	ld	s0,16(sp)
    18e4:	64a2                	ld	s1,8(sp)
    18e6:	6105                	addi	sp,sp,32
    18e8:	8082                	ret
    18ea:	96a2                	add	a3,a3,s0
    18ec:	02d00793          	li	a5,45
    18f0:	00f68023          	sb	a5,0(a3)
    18f4:	0028869b          	addiw	a3,a7,2
    18f8:	b75d                	j	189e <itoa+0x3e>

00000000000018fa <atoi>:
    18fa:	00054783          	lbu	a5,0(a0)
    18fe:	02000713          	li	a4,32
    1902:	00e79763          	bne	a5,a4,1910 <atoi+0x16>
    1906:	0505                	addi	a0,a0,1
    1908:	00054783          	lbu	a5,0(a0)
    190c:	fee78de3          	beq	a5,a4,1906 <atoi+0xc>
    1910:	02b00713          	li	a4,43
    1914:	04e78663          	beq	a5,a4,1960 <atoi+0x66>
    1918:	02d00713          	li	a4,45
    191c:	4805                	li	a6,1
    191e:	04e78463          	beq	a5,a4,1966 <atoi+0x6c>
    1922:	00054683          	lbu	a3,0(a0)
    1926:	fd06879b          	addiw	a5,a3,-48
    192a:	0ff7f793          	andi	a5,a5,255
    192e:	4725                	li	a4,9
    1930:	02f76e63          	bltu	a4,a5,196c <atoi+0x72>
    1934:	4601                	li	a2,0
    1936:	45a5                	li	a1,9
    1938:	0505                	addi	a0,a0,1
    193a:	0026179b          	slliw	a5,a2,0x2
    193e:	9fb1                	addw	a5,a5,a2
    1940:	0017979b          	slliw	a5,a5,0x1
    1944:	9fb5                	addw	a5,a5,a3
    1946:	fd07861b          	addiw	a2,a5,-48
    194a:	00054683          	lbu	a3,0(a0)
    194e:	fd06871b          	addiw	a4,a3,-48
    1952:	0ff77713          	andi	a4,a4,255
    1956:	fee5f1e3          	bgeu	a1,a4,1938 <atoi+0x3e>
    195a:	02c8053b          	mulw	a0,a6,a2
    195e:	8082                	ret
    1960:	0505                	addi	a0,a0,1
    1962:	4805                	li	a6,1
    1964:	bf7d                	j	1922 <atoi+0x28>
    1966:	0505                	addi	a0,a0,1
    1968:	587d                	li	a6,-1
    196a:	bf65                	j	1922 <atoi+0x28>
    196c:	4601                	li	a2,0
    196e:	b7f5                	j	195a <atoi+0x60>

0000000000001970 <check_file_handle>:
    1970:	d8010113          	addi	sp,sp,-640
    1974:	26113c23          	sd	ra,632(sp)
    1978:	26813823          	sd	s0,624(sp)
    197c:	26913423          	sd	s1,616(sp)
    1980:	27213023          	sd	s2,608(sp)
    1984:	25313c23          	sd	s3,600(sp)
    1988:	25413823          	sd	s4,592(sp)
    198c:	25513423          	sd	s5,584(sp)
    1990:	25613023          	sd	s6,576(sp)
    1994:	23713c23          	sd	s7,568(sp)
    1998:	23813823          	sd	s8,560(sp)
    199c:	23913423          	sd	s9,552(sp)
    19a0:	23a13023          	sd	s10,544(sp)
    19a4:	21b13c23          	sd	s11,536(sp)
    19a8:	8baa                	mv	s7,a0
    19aa:	8a2e                	mv	s4,a1
    19ac:	8c32                	mv	s8,a2
    19ae:	89b6                	mv	s3,a3
    19b0:	040c                	addi	a1,sp,512
    19b2:	00000097          	auipc	ra,0x0
    19b6:	28e080e7          	jalr	654(ra) # 1c40 <fstat>
    19ba:	20813603          	ld	a2,520(sp)
    19be:	03361163          	bne	a2,s3,19e0 <check_file_handle+0x70>
    19c2:	06098763          	beqz	s3,1a30 <check_file_handle+0xc0>
    19c6:	4901                	li	s2,0
    19c8:	20000a93          	li	s5,512
    19cc:	00002cb7          	lui	s9,0x2
    19d0:	00002db7          	lui	s11,0x2
    19d4:	6b0d                	lui	s6,0x3
    19d6:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19da:	00002d37          	lui	s10,0x2
    19de:	aa39                	j	1afc <check_file_handle+0x18c>
    19e0:	86ce                	mv	a3,s3
    19e2:	85d2                	mv	a1,s4
    19e4:	00002537          	lui	a0,0x2
    19e8:	27850513          	addi	a0,a0,632 # 2278 <crctab+0x530>
    19ec:	00000097          	auipc	ra,0x0
    19f0:	942080e7          	jalr	-1726(ra) # 132e <printf>
    19f4:	fc0999e3          	bnez	s3,19c6 <check_file_handle+0x56>
    19f8:	20813683          	ld	a3,520(sp)
    19fc:	03368a63          	beq	a3,s3,1a30 <check_file_handle+0xc0>
    1a00:	0a600813          	li	a6,166
    1a04:	000027b7          	lui	a5,0x2
    1a08:	14878793          	addi	a5,a5,328 # 2148 <crctab+0x400>
    1a0c:	874e                	mv	a4,s3
    1a0e:	8652                	mv	a2,s4
    1a10:	000025b7          	lui	a1,0x2
    1a14:	34858593          	addi	a1,a1,840 # 2348 <crctab+0x600>
    1a18:	4509                	li	a0,2
    1a1a:	00000097          	auipc	ra,0x0
    1a1e:	8f2080e7          	jalr	-1806(ra) # 130c <fprintf>
    1a22:	650d                	lui	a0,0x3
    1a24:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a28:	00000097          	auipc	ra,0x0
    1a2c:	1c8080e7          	jalr	456(ra) # 1bf0 <exit>
    1a30:	85d2                	mv	a1,s4
    1a32:	00002537          	lui	a0,0x2
    1a36:	39050513          	addi	a0,a0,912 # 2390 <crctab+0x648>
    1a3a:	00000097          	auipc	ra,0x0
    1a3e:	8f4080e7          	jalr	-1804(ra) # 132e <printf>
    1a42:	27813083          	ld	ra,632(sp)
    1a46:	27013403          	ld	s0,624(sp)
    1a4a:	26813483          	ld	s1,616(sp)
    1a4e:	26013903          	ld	s2,608(sp)
    1a52:	25813983          	ld	s3,600(sp)
    1a56:	25013a03          	ld	s4,592(sp)
    1a5a:	24813a83          	ld	s5,584(sp)
    1a5e:	24013b03          	ld	s6,576(sp)
    1a62:	23813b83          	ld	s7,568(sp)
    1a66:	23013c03          	ld	s8,560(sp)
    1a6a:	22813c83          	ld	s9,552(sp)
    1a6e:	22013d03          	ld	s10,544(sp)
    1a72:	21813d83          	ld	s11,536(sp)
    1a76:	28010113          	addi	sp,sp,640
    1a7a:	8082                	ret
    1a7c:	09d00893          	li	a7,157
    1a80:	148c8813          	addi	a6,s9,328 # 2148 <crctab+0x400>
    1a84:	87aa                	mv	a5,a0
    1a86:	8752                	mv	a4,s4
    1a88:	86ca                	mv	a3,s2
    1a8a:	8622                	mv	a2,s0
    1a8c:	2a8d8593          	addi	a1,s11,680 # 22a8 <crctab+0x560>
    1a90:	4509                	li	a0,2
    1a92:	00000097          	auipc	ra,0x0
    1a96:	87a080e7          	jalr	-1926(ra) # 130c <fprintf>
    1a9a:	855a                	mv	a0,s6
    1a9c:	00000097          	auipc	ra,0x0
    1aa0:	154080e7          	jalr	340(ra) # 1bf0 <exit>
    1aa4:	a89d                	j	1b1a <check_file_handle+0x1aa>
    1aa6:	00160593          	addi	a1,a2,1
    1aaa:	0285f163          	bgeu	a1,s0,1acc <check_file_handle+0x15c>
    1aae:	00c10733          	add	a4,sp,a2
    1ab2:	00b487b3          	add	a5,s1,a1
    1ab6:	00174683          	lbu	a3,1(a4)
    1aba:	0007c783          	lbu	a5,0(a5)
    1abe:	00f68763          	beq	a3,a5,1acc <check_file_handle+0x15c>
    1ac2:	0585                	addi	a1,a1,1
    1ac4:	0705                	addi	a4,a4,1
    1ac6:	feb416e3          	bne	s0,a1,1ab2 <check_file_handle+0x142>
    1aca:	85a2                	mv	a1,s0
    1acc:	08100813          	li	a6,129
    1ad0:	148c8793          	addi	a5,s9,328
    1ad4:	8752                	mv	a4,s4
    1ad6:	012606b3          	add	a3,a2,s2
    1ada:	40c58633          	sub	a2,a1,a2
    1ade:	2f0d0593          	addi	a1,s10,752 # 22f0 <crctab+0x5a8>
    1ae2:	4509                	li	a0,2
    1ae4:	00000097          	auipc	ra,0x0
    1ae8:	828080e7          	jalr	-2008(ra) # 130c <fprintf>
    1aec:	855a                	mv	a0,s6
    1aee:	00000097          	auipc	ra,0x0
    1af2:	102080e7          	jalr	258(ra) # 1bf0 <exit>
    1af6:	9922                	add	s2,s2,s0
    1af8:	f13970e3          	bgeu	s2,s3,19f8 <check_file_handle+0x88>
    1afc:	41298433          	sub	s0,s3,s2
    1b00:	008af363          	bgeu	s5,s0,1b06 <check_file_handle+0x196>
    1b04:	8456                	mv	s0,s5
    1b06:	0004061b          	sext.w	a2,s0
    1b0a:	858a                	mv	a1,sp
    1b0c:	855e                	mv	a0,s7
    1b0e:	00000097          	auipc	ra,0x0
    1b12:	10a080e7          	jalr	266(ra) # 1c18 <read>
    1b16:	f68513e3          	bne	a0,s0,1a7c <check_file_handle+0x10c>
    1b1a:	012c04b3          	add	s1,s8,s2
    1b1e:	8622                	mv	a2,s0
    1b20:	85a6                	mv	a1,s1
    1b22:	850a                	mv	a0,sp
    1b24:	00000097          	auipc	ra,0x0
    1b28:	bce080e7          	jalr	-1074(ra) # 16f2 <memcmp>
    1b2c:	d569                	beqz	a0,1af6 <check_file_handle+0x186>
    1b2e:	03298163          	beq	s3,s2,1b50 <check_file_handle+0x1e0>
    1b32:	870a                	mv	a4,sp
    1b34:	4601                	li	a2,0
    1b36:	00c487b3          	add	a5,s1,a2
    1b3a:	00074683          	lbu	a3,0(a4)
    1b3e:	0007c783          	lbu	a5,0(a5)
    1b42:	f6f692e3          	bne	a3,a5,1aa6 <check_file_handle+0x136>
    1b46:	0605                	addi	a2,a2,1
    1b48:	0705                	addi	a4,a4,1
    1b4a:	fe8666e3          	bltu	a2,s0,1b36 <check_file_handle+0x1c6>
    1b4e:	bfa1                	j	1aa6 <check_file_handle+0x136>
    1b50:	4601                	li	a2,0
    1b52:	4585                	li	a1,1
    1b54:	bfa5                	j	1acc <check_file_handle+0x15c>

0000000000001b56 <check_file>:
    1b56:	7179                	addi	sp,sp,-48
    1b58:	f406                	sd	ra,40(sp)
    1b5a:	f022                	sd	s0,32(sp)
    1b5c:	ec26                	sd	s1,24(sp)
    1b5e:	e84a                	sd	s2,16(sp)
    1b60:	e44e                	sd	s3,8(sp)
    1b62:	84aa                	mv	s1,a0
    1b64:	892e                	mv	s2,a1
    1b66:	89b2                	mv	s3,a2
    1b68:	4581                	li	a1,0
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	0a6080e7          	jalr	166(ra) # 1c10 <open>
    1b72:	842a                	mv	s0,a0
    1b74:	4789                	li	a5,2
    1b76:	02a7df63          	bge	a5,a0,1bb4 <check_file+0x5e>
    1b7a:	86ce                	mv	a3,s3
    1b7c:	864a                	mv	a2,s2
    1b7e:	85a6                	mv	a1,s1
    1b80:	8522                	mv	a0,s0
    1b82:	00000097          	auipc	ra,0x0
    1b86:	dee080e7          	jalr	-530(ra) # 1970 <check_file_handle>
    1b8a:	85a6                	mv	a1,s1
    1b8c:	00002537          	lui	a0,0x2
    1b90:	41850513          	addi	a0,a0,1048 # 2418 <crctab+0x6d0>
    1b94:	fffff097          	auipc	ra,0xfffff
    1b98:	79a080e7          	jalr	1946(ra) # 132e <printf>
    1b9c:	8522                	mv	a0,s0
    1b9e:	00000097          	auipc	ra,0x0
    1ba2:	09a080e7          	jalr	154(ra) # 1c38 <close>
    1ba6:	70a2                	ld	ra,40(sp)
    1ba8:	7402                	ld	s0,32(sp)
    1baa:	64e2                	ld	s1,24(sp)
    1bac:	6942                	ld	s2,16(sp)
    1bae:	69a2                	ld	s3,8(sp)
    1bb0:	6145                	addi	sp,sp,48
    1bb2:	8082                	ret
    1bb4:	0ae00713          	li	a4,174
    1bb8:	000026b7          	lui	a3,0x2
    1bbc:	14868693          	addi	a3,a3,328 # 2148 <crctab+0x400>
    1bc0:	8626                	mv	a2,s1
    1bc2:	000025b7          	lui	a1,0x2
    1bc6:	3b058593          	addi	a1,a1,944 # 23b0 <crctab+0x668>
    1bca:	4509                	li	a0,2
    1bcc:	fffff097          	auipc	ra,0xfffff
    1bd0:	740080e7          	jalr	1856(ra) # 130c <fprintf>
    1bd4:	650d                	lui	a0,0x3
    1bd6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bda:	00000097          	auipc	ra,0x0
    1bde:	016080e7          	jalr	22(ra) # 1bf0 <exit>
    1be2:	bf61                	j	1b7a <check_file+0x24>

0000000000001be4 <r_sp>:
    1be4:	850a                	mv	a0,sp
    1be6:	8082                	ret

0000000000001be8 <halt>:
    1be8:	4885                	li	a7,1
    1bea:	00000073          	ecall
    1bee:	8082                	ret

0000000000001bf0 <exit>:
    1bf0:	4889                	li	a7,2
    1bf2:	00000073          	ecall
    1bf6:	8082                	ret

0000000000001bf8 <exec>:
    1bf8:	488d                	li	a7,3
    1bfa:	00000073          	ecall
    1bfe:	8082                	ret

0000000000001c00 <wait>:
    1c00:	4891                	li	a7,4
    1c02:	00000073          	ecall
    1c06:	8082                	ret

0000000000001c08 <remove>:
    1c08:	4895                	li	a7,5
    1c0a:	00000073          	ecall
    1c0e:	8082                	ret

0000000000001c10 <open>:
    1c10:	4899                	li	a7,6
    1c12:	00000073          	ecall
    1c16:	8082                	ret

0000000000001c18 <read>:
    1c18:	489d                	li	a7,7
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret

0000000000001c20 <write>:
    1c20:	48a1                	li	a7,8
    1c22:	00000073          	ecall
    1c26:	8082                	ret

0000000000001c28 <seek>:
    1c28:	48a5                	li	a7,9
    1c2a:	00000073          	ecall
    1c2e:	8082                	ret

0000000000001c30 <tell>:
    1c30:	48a9                	li	a7,10
    1c32:	00000073          	ecall
    1c36:	8082                	ret

0000000000001c38 <close>:
    1c38:	48ad                	li	a7,11
    1c3a:	00000073          	ecall
    1c3e:	8082                	ret

0000000000001c40 <fstat>:
    1c40:	48b1                	li	a7,12
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <mmap>:
    1c48:	48b5                	li	a7,13
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret

0000000000001c50 <munmap>:
    1c50:	48b9                	li	a7,14
    1c52:	00000073          	ecall
    1c56:	8082                	ret

0000000000001c58 <chdir>:
    1c58:	48bd                	li	a7,15
    1c5a:	00000073          	ecall
    1c5e:	8082                	ret

0000000000001c60 <mkdir>:
    1c60:	48c1                	li	a7,16
    1c62:	00000073          	ecall
    1c66:	8082                	ret
