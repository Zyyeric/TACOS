
build/user/userprogs/write-normal:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	20100593          	li	a1,513
    100a:	00002537          	lui	a0,0x2
    100e:	c9050513          	addi	a0,a0,-880 # 1c90 <mkdir+0x8>
    1012:	00001097          	auipc	ra,0x1
    1016:	c26080e7          	jalr	-986(ra) # 1c38 <open>
    101a:	842a                	mv	s0,a0
    101c:	4789                	li	a5,2
    101e:	02a7da63          	bge	a5,a0,1052 <main+0x52>
    1022:	0ef00613          	li	a2,239
    1026:	000035b7          	lui	a1,0x3
    102a:	00058593          	mv	a1,a1
    102e:	8522                	mv	a0,s0
    1030:	00001097          	auipc	ra,0x1
    1034:	c18080e7          	jalr	-1000(ra) # 1c48 <write>
    1038:	0ef00793          	li	a5,239
    103c:	04f51163          	bne	a0,a5,107e <main+0x7e>
    1040:	8522                	mv	a0,s0
    1042:	00001097          	auipc	ra,0x1
    1046:	c1e080e7          	jalr	-994(ra) # 1c60 <close>
    104a:	60a2                	ld	ra,8(sp)
    104c:	6402                	ld	s0,0(sp)
    104e:	0141                	addi	sp,sp,16
    1050:	8082                	ret
    1052:	46a5                	li	a3,9
    1054:	00002637          	lui	a2,0x2
    1058:	ca060613          	addi	a2,a2,-864 # 1ca0 <mkdir+0x18>
    105c:	000025b7          	lui	a1,0x2
    1060:	cc058593          	addi	a1,a1,-832 # 1cc0 <mkdir+0x38>
    1064:	4509                	li	a0,2
    1066:	00000097          	auipc	ra,0x0
    106a:	2ce080e7          	jalr	718(ra) # 1334 <fprintf>
    106e:	650d                	lui	a0,0x3
    1070:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1074:	00001097          	auipc	ra,0x1
    1078:	ba4080e7          	jalr	-1116(ra) # 1c18 <exit>
    107c:	b75d                	j	1022 <main+0x22>
    107e:	46a9                	li	a3,10
    1080:	00002637          	lui	a2,0x2
    1084:	ca060613          	addi	a2,a2,-864 # 1ca0 <mkdir+0x18>
    1088:	000025b7          	lui	a1,0x2
    108c:	d2058593          	addi	a1,a1,-736 # 1d20 <mkdir+0x98>
    1090:	4509                	li	a0,2
    1092:	00000097          	auipc	ra,0x0
    1096:	2a2080e7          	jalr	674(ra) # 1334 <fprintf>
    109a:	650d                	lui	a0,0x3
    109c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10a0:	00001097          	auipc	ra,0x1
    10a4:	b78080e7          	jalr	-1160(ra) # 1c18 <exit>
    10a8:	bf61                	j	1040 <main+0x40>

00000000000010aa <putc>:
    10aa:	1101                	addi	sp,sp,-32
    10ac:	ec06                	sd	ra,24(sp)
    10ae:	00b107a3          	sb	a1,15(sp)
    10b2:	4605                	li	a2,1
    10b4:	00f10593          	addi	a1,sp,15
    10b8:	00001097          	auipc	ra,0x1
    10bc:	b90080e7          	jalr	-1136(ra) # 1c48 <write>
    10c0:	60e2                	ld	ra,24(sp)
    10c2:	6105                	addi	sp,sp,32
    10c4:	8082                	ret

00000000000010c6 <printint>:
    10c6:	7179                	addi	sp,sp,-48
    10c8:	f406                	sd	ra,40(sp)
    10ca:	f022                	sd	s0,32(sp)
    10cc:	ec26                	sd	s1,24(sp)
    10ce:	e84a                	sd	s2,16(sp)
    10d0:	84aa                	mv	s1,a0
    10d2:	c299                	beqz	a3,10d8 <printint+0x12>
    10d4:	0805c363          	bltz	a1,115a <printint+0x94>
    10d8:	2581                	sext.w	a1,a1
    10da:	4881                	li	a7,0
    10dc:	868a                	mv	a3,sp
    10de:	4701                	li	a4,0
    10e0:	2601                	sext.w	a2,a2
    10e2:	00002537          	lui	a0,0x2
    10e6:	d9050513          	addi	a0,a0,-624 # 1d90 <digits>
    10ea:	883a                	mv	a6,a4
    10ec:	2705                	addiw	a4,a4,1
    10ee:	02c5f7bb          	remuw	a5,a1,a2
    10f2:	1782                	slli	a5,a5,0x20
    10f4:	9381                	srli	a5,a5,0x20
    10f6:	97aa                	add	a5,a5,a0
    10f8:	0007c783          	lbu	a5,0(a5)
    10fc:	00f68023          	sb	a5,0(a3)
    1100:	0005879b          	sext.w	a5,a1
    1104:	02c5d5bb          	divuw	a1,a1,a2
    1108:	0685                	addi	a3,a3,1
    110a:	fec7f0e3          	bgeu	a5,a2,10ea <printint+0x24>
    110e:	00088a63          	beqz	a7,1122 <printint+0x5c>
    1112:	081c                	addi	a5,sp,16
    1114:	973e                	add	a4,a4,a5
    1116:	02d00793          	li	a5,45
    111a:	fef70823          	sb	a5,-16(a4)
    111e:	0028071b          	addiw	a4,a6,2
    1122:	02e05663          	blez	a4,114e <printint+0x88>
    1126:	00e10433          	add	s0,sp,a4
    112a:	fff10913          	addi	s2,sp,-1
    112e:	993a                	add	s2,s2,a4
    1130:	377d                	addiw	a4,a4,-1
    1132:	1702                	slli	a4,a4,0x20
    1134:	9301                	srli	a4,a4,0x20
    1136:	40e90933          	sub	s2,s2,a4
    113a:	fff44583          	lbu	a1,-1(s0)
    113e:	8526                	mv	a0,s1
    1140:	00000097          	auipc	ra,0x0
    1144:	f6a080e7          	jalr	-150(ra) # 10aa <putc>
    1148:	147d                	addi	s0,s0,-1
    114a:	ff2418e3          	bne	s0,s2,113a <printint+0x74>
    114e:	70a2                	ld	ra,40(sp)
    1150:	7402                	ld	s0,32(sp)
    1152:	64e2                	ld	s1,24(sp)
    1154:	6942                	ld	s2,16(sp)
    1156:	6145                	addi	sp,sp,48
    1158:	8082                	ret
    115a:	40b005bb          	negw	a1,a1
    115e:	4885                	li	a7,1
    1160:	bfb5                	j	10dc <printint+0x16>

0000000000001162 <vprintf>:
    1162:	7159                	addi	sp,sp,-112
    1164:	f486                	sd	ra,104(sp)
    1166:	f0a2                	sd	s0,96(sp)
    1168:	eca6                	sd	s1,88(sp)
    116a:	e8ca                	sd	s2,80(sp)
    116c:	e4ce                	sd	s3,72(sp)
    116e:	e0d2                	sd	s4,64(sp)
    1170:	fc56                	sd	s5,56(sp)
    1172:	f85a                	sd	s6,48(sp)
    1174:	f45e                	sd	s7,40(sp)
    1176:	f062                	sd	s8,32(sp)
    1178:	ec66                	sd	s9,24(sp)
    117a:	e86a                	sd	s10,16(sp)
    117c:	e46e                	sd	s11,8(sp)
    117e:	0005c483          	lbu	s1,0(a1)
    1182:	18048a63          	beqz	s1,1316 <vprintf+0x1b4>
    1186:	8a2a                	mv	s4,a0
    1188:	8ab2                	mv	s5,a2
    118a:	00158413          	addi	s0,a1,1
    118e:	4901                	li	s2,0
    1190:	02500993          	li	s3,37
    1194:	06400b93          	li	s7,100
    1198:	06c00c13          	li	s8,108
    119c:	07800c93          	li	s9,120
    11a0:	07000d13          	li	s10,112
    11a4:	00002db7          	lui	s11,0x2
    11a8:	00002b37          	lui	s6,0x2
    11ac:	d90b0b13          	addi	s6,s6,-624 # 1d90 <digits>
    11b0:	a839                	j	11ce <vprintf+0x6c>
    11b2:	85a6                	mv	a1,s1
    11b4:	8552                	mv	a0,s4
    11b6:	00000097          	auipc	ra,0x0
    11ba:	ef4080e7          	jalr	-268(ra) # 10aa <putc>
    11be:	a019                	j	11c4 <vprintf+0x62>
    11c0:	01390f63          	beq	s2,s3,11de <vprintf+0x7c>
    11c4:	0405                	addi	s0,s0,1
    11c6:	fff44483          	lbu	s1,-1(s0)
    11ca:	14048663          	beqz	s1,1316 <vprintf+0x1b4>
    11ce:	0004879b          	sext.w	a5,s1
    11d2:	fe0917e3          	bnez	s2,11c0 <vprintf+0x5e>
    11d6:	fd379ee3          	bne	a5,s3,11b2 <vprintf+0x50>
    11da:	893e                	mv	s2,a5
    11dc:	b7e5                	j	11c4 <vprintf+0x62>
    11de:	05778063          	beq	a5,s7,121e <vprintf+0xbc>
    11e2:	05878c63          	beq	a5,s8,123a <vprintf+0xd8>
    11e6:	07978863          	beq	a5,s9,1256 <vprintf+0xf4>
    11ea:	09a78463          	beq	a5,s10,1272 <vprintf+0x110>
    11ee:	07300713          	li	a4,115
    11f2:	0ce78263          	beq	a5,a4,12b6 <vprintf+0x154>
    11f6:	06300713          	li	a4,99
    11fa:	0ee78763          	beq	a5,a4,12e8 <vprintf+0x186>
    11fe:	11378163          	beq	a5,s3,1300 <vprintf+0x19e>
    1202:	85ce                	mv	a1,s3
    1204:	8552                	mv	a0,s4
    1206:	00000097          	auipc	ra,0x0
    120a:	ea4080e7          	jalr	-348(ra) # 10aa <putc>
    120e:	85a6                	mv	a1,s1
    1210:	8552                	mv	a0,s4
    1212:	00000097          	auipc	ra,0x0
    1216:	e98080e7          	jalr	-360(ra) # 10aa <putc>
    121a:	4901                	li	s2,0
    121c:	b765                	j	11c4 <vprintf+0x62>
    121e:	008a8493          	addi	s1,s5,8
    1222:	4685                	li	a3,1
    1224:	4629                	li	a2,10
    1226:	000aa583          	lw	a1,0(s5)
    122a:	8552                	mv	a0,s4
    122c:	00000097          	auipc	ra,0x0
    1230:	e9a080e7          	jalr	-358(ra) # 10c6 <printint>
    1234:	8aa6                	mv	s5,s1
    1236:	4901                	li	s2,0
    1238:	b771                	j	11c4 <vprintf+0x62>
    123a:	008a8493          	addi	s1,s5,8
    123e:	4681                	li	a3,0
    1240:	4629                	li	a2,10
    1242:	000aa583          	lw	a1,0(s5)
    1246:	8552                	mv	a0,s4
    1248:	00000097          	auipc	ra,0x0
    124c:	e7e080e7          	jalr	-386(ra) # 10c6 <printint>
    1250:	8aa6                	mv	s5,s1
    1252:	4901                	li	s2,0
    1254:	bf85                	j	11c4 <vprintf+0x62>
    1256:	008a8493          	addi	s1,s5,8
    125a:	4681                	li	a3,0
    125c:	4641                	li	a2,16
    125e:	000aa583          	lw	a1,0(s5)
    1262:	8552                	mv	a0,s4
    1264:	00000097          	auipc	ra,0x0
    1268:	e62080e7          	jalr	-414(ra) # 10c6 <printint>
    126c:	8aa6                	mv	s5,s1
    126e:	4901                	li	s2,0
    1270:	bf91                	j	11c4 <vprintf+0x62>
    1272:	008a8913          	addi	s2,s5,8
    1276:	000aba83          	ld	s5,0(s5)
    127a:	03000593          	li	a1,48
    127e:	8552                	mv	a0,s4
    1280:	00000097          	auipc	ra,0x0
    1284:	e2a080e7          	jalr	-470(ra) # 10aa <putc>
    1288:	85e6                	mv	a1,s9
    128a:	8552                	mv	a0,s4
    128c:	00000097          	auipc	ra,0x0
    1290:	e1e080e7          	jalr	-482(ra) # 10aa <putc>
    1294:	44c1                	li	s1,16
    1296:	03cad793          	srli	a5,s5,0x3c
    129a:	97da                	add	a5,a5,s6
    129c:	0007c583          	lbu	a1,0(a5)
    12a0:	8552                	mv	a0,s4
    12a2:	00000097          	auipc	ra,0x0
    12a6:	e08080e7          	jalr	-504(ra) # 10aa <putc>
    12aa:	0a92                	slli	s5,s5,0x4
    12ac:	34fd                	addiw	s1,s1,-1
    12ae:	f4e5                	bnez	s1,1296 <vprintf+0x134>
    12b0:	8aca                	mv	s5,s2
    12b2:	4901                	li	s2,0
    12b4:	bf01                	j	11c4 <vprintf+0x62>
    12b6:	008a8913          	addi	s2,s5,8
    12ba:	000ab483          	ld	s1,0(s5)
    12be:	c085                	beqz	s1,12de <vprintf+0x17c>
    12c0:	0004c583          	lbu	a1,0(s1)
    12c4:	c5b1                	beqz	a1,1310 <vprintf+0x1ae>
    12c6:	8552                	mv	a0,s4
    12c8:	00000097          	auipc	ra,0x0
    12cc:	de2080e7          	jalr	-542(ra) # 10aa <putc>
    12d0:	0485                	addi	s1,s1,1
    12d2:	0004c583          	lbu	a1,0(s1)
    12d6:	f9e5                	bnez	a1,12c6 <vprintf+0x164>
    12d8:	8aca                	mv	s5,s2
    12da:	4901                	li	s2,0
    12dc:	b5e5                	j	11c4 <vprintf+0x62>
    12de:	d88d8493          	addi	s1,s11,-632 # 1d88 <mkdir+0x100>
    12e2:	02800593          	li	a1,40
    12e6:	b7c5                	j	12c6 <vprintf+0x164>
    12e8:	008a8493          	addi	s1,s5,8
    12ec:	000ac583          	lbu	a1,0(s5)
    12f0:	8552                	mv	a0,s4
    12f2:	00000097          	auipc	ra,0x0
    12f6:	db8080e7          	jalr	-584(ra) # 10aa <putc>
    12fa:	8aa6                	mv	s5,s1
    12fc:	4901                	li	s2,0
    12fe:	b5d9                	j	11c4 <vprintf+0x62>
    1300:	85ce                	mv	a1,s3
    1302:	8552                	mv	a0,s4
    1304:	00000097          	auipc	ra,0x0
    1308:	da6080e7          	jalr	-602(ra) # 10aa <putc>
    130c:	4901                	li	s2,0
    130e:	bd5d                	j	11c4 <vprintf+0x62>
    1310:	8aca                	mv	s5,s2
    1312:	4901                	li	s2,0
    1314:	bd45                	j	11c4 <vprintf+0x62>
    1316:	70a6                	ld	ra,104(sp)
    1318:	7406                	ld	s0,96(sp)
    131a:	64e6                	ld	s1,88(sp)
    131c:	6946                	ld	s2,80(sp)
    131e:	69a6                	ld	s3,72(sp)
    1320:	6a06                	ld	s4,64(sp)
    1322:	7ae2                	ld	s5,56(sp)
    1324:	7b42                	ld	s6,48(sp)
    1326:	7ba2                	ld	s7,40(sp)
    1328:	7c02                	ld	s8,32(sp)
    132a:	6ce2                	ld	s9,24(sp)
    132c:	6d42                	ld	s10,16(sp)
    132e:	6da2                	ld	s11,8(sp)
    1330:	6165                	addi	sp,sp,112
    1332:	8082                	ret

0000000000001334 <fprintf>:
    1334:	715d                	addi	sp,sp,-80
    1336:	ec06                	sd	ra,24(sp)
    1338:	f032                	sd	a2,32(sp)
    133a:	f436                	sd	a3,40(sp)
    133c:	f83a                	sd	a4,48(sp)
    133e:	fc3e                	sd	a5,56(sp)
    1340:	e0c2                	sd	a6,64(sp)
    1342:	e4c6                	sd	a7,72(sp)
    1344:	1010                	addi	a2,sp,32
    1346:	e432                	sd	a2,8(sp)
    1348:	00000097          	auipc	ra,0x0
    134c:	e1a080e7          	jalr	-486(ra) # 1162 <vprintf>
    1350:	60e2                	ld	ra,24(sp)
    1352:	6161                	addi	sp,sp,80
    1354:	8082                	ret

0000000000001356 <printf>:
    1356:	711d                	addi	sp,sp,-96
    1358:	ec06                	sd	ra,24(sp)
    135a:	f42e                	sd	a1,40(sp)
    135c:	f832                	sd	a2,48(sp)
    135e:	fc36                	sd	a3,56(sp)
    1360:	e0ba                	sd	a4,64(sp)
    1362:	e4be                	sd	a5,72(sp)
    1364:	e8c2                	sd	a6,80(sp)
    1366:	ecc6                	sd	a7,88(sp)
    1368:	1030                	addi	a2,sp,40
    136a:	e432                	sd	a2,8(sp)
    136c:	85aa                	mv	a1,a0
    136e:	4505                	li	a0,1
    1370:	00000097          	auipc	ra,0x0
    1374:	df2080e7          	jalr	-526(ra) # 1162 <vprintf>
    1378:	60e2                	ld	ra,24(sp)
    137a:	6125                	addi	sp,sp,96
    137c:	8082                	ret

000000000000137e <cksum>:
    137e:	cdb1                	beqz	a1,13da <cksum+0x5c>
    1380:	00b50833          	add	a6,a0,a1
    1384:	4781                	li	a5,0
    1386:	00002637          	lui	a2,0x2
    138a:	da860613          	addi	a2,a2,-600 # 1da8 <crctab>
    138e:	0505                	addi	a0,a0,1
    1390:	0087969b          	slliw	a3,a5,0x8
    1394:	0187d71b          	srliw	a4,a5,0x18
    1398:	fff54783          	lbu	a5,-1(a0)
    139c:	8f3d                	xor	a4,a4,a5
    139e:	1702                	slli	a4,a4,0x20
    13a0:	9301                	srli	a4,a4,0x20
    13a2:	070a                	slli	a4,a4,0x2
    13a4:	9732                	add	a4,a4,a2
    13a6:	431c                	lw	a5,0(a4)
    13a8:	8fb5                	xor	a5,a5,a3
    13aa:	2781                	sext.w	a5,a5
    13ac:	fea811e3          	bne	a6,a0,138e <cksum+0x10>
    13b0:	00002637          	lui	a2,0x2
    13b4:	da860613          	addi	a2,a2,-600 # 1da8 <crctab>
    13b8:	0ff5f693          	andi	a3,a1,255
    13bc:	81a1                	srli	a1,a1,0x8
    13be:	0087951b          	slliw	a0,a5,0x8
    13c2:	0187d71b          	srliw	a4,a5,0x18
    13c6:	8f35                	xor	a4,a4,a3
    13c8:	070a                	slli	a4,a4,0x2
    13ca:	9732                	add	a4,a4,a2
    13cc:	431c                	lw	a5,0(a4)
    13ce:	8fa9                	xor	a5,a5,a0
    13d0:	2781                	sext.w	a5,a5
    13d2:	f1fd                	bnez	a1,13b8 <cksum+0x3a>
    13d4:	fff7c513          	not	a0,a5
    13d8:	8082                	ret
    13da:	4781                	li	a5,0
    13dc:	bfe5                	j	13d4 <cksum+0x56>

00000000000013de <swap_bytes>:
    13de:	ce19                	beqz	a2,13fc <swap_bytes+0x1e>
    13e0:	87aa                	mv	a5,a0
    13e2:	962a                	add	a2,a2,a0
    13e4:	0007c703          	lbu	a4,0(a5)
    13e8:	0005c683          	lbu	a3,0(a1)
    13ec:	00d78023          	sb	a3,0(a5)
    13f0:	00e58023          	sb	a4,0(a1)
    13f4:	0785                	addi	a5,a5,1
    13f6:	0585                	addi	a1,a1,1
    13f8:	fec796e3          	bne	a5,a2,13e4 <swap_bytes+0x6>
    13fc:	8082                	ret

00000000000013fe <random_init>:
    13fe:	7139                	addi	sp,sp,-64
    1400:	fc06                	sd	ra,56(sp)
    1402:	f822                	sd	s0,48(sp)
    1404:	f426                	sd	s1,40(sp)
    1406:	f04a                	sd	s2,32(sp)
    1408:	ec4e                	sd	s3,24(sp)
    140a:	e852                	sd	s4,16(sp)
    140c:	c62a                	sw	a0,12(sp)
    140e:	000037b7          	lui	a5,0x3
    1412:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    1416:	eca5                	bnez	s1,148e <random_init+0x90>
    1418:	00003737          	lui	a4,0x3
    141c:	10070913          	addi	s2,a4,256 # 3100 <s>
    1420:	10070713          	addi	a4,a4,256
    1424:	87a6                	mv	a5,s1
    1426:	10000693          	li	a3,256
    142a:	00f70023          	sb	a5,0(a4)
    142e:	2785                	addiw	a5,a5,1
    1430:	0705                	addi	a4,a4,1
    1432:	fed79ce3          	bne	a5,a3,142a <random_init+0x2c>
    1436:	4401                	li	s0,0
    1438:	000039b7          	lui	s3,0x3
    143c:	10098993          	addi	s3,s3,256 # 3100 <s>
    1440:	10000a13          	li	s4,256
    1444:	0034f793          	andi	a5,s1,3
    1448:	0818                	addi	a4,sp,16
    144a:	97ba                	add	a5,a5,a4
    144c:	ffc7c783          	lbu	a5,-4(a5)
    1450:	00094703          	lbu	a4,0(s2)
    1454:	9fb9                	addw	a5,a5,a4
    1456:	9c3d                	addw	s0,s0,a5
    1458:	0ff47413          	andi	s0,s0,255
    145c:	4605                	li	a2,1
    145e:	008985b3          	add	a1,s3,s0
    1462:	854a                	mv	a0,s2
    1464:	00000097          	auipc	ra,0x0
    1468:	f7a080e7          	jalr	-134(ra) # 13de <swap_bytes>
    146c:	2485                	addiw	s1,s1,1
    146e:	0905                	addi	s2,s2,1
    1470:	fd449ae3          	bne	s1,s4,1444 <random_init+0x46>
    1474:	000037b7          	lui	a5,0x3
    1478:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    147c:	000037b7          	lui	a5,0x3
    1480:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1484:	000037b7          	lui	a5,0x3
    1488:	4705                	li	a4,1
    148a:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    148e:	70e2                	ld	ra,56(sp)
    1490:	7442                	ld	s0,48(sp)
    1492:	74a2                	ld	s1,40(sp)
    1494:	7902                	ld	s2,32(sp)
    1496:	69e2                	ld	s3,24(sp)
    1498:	6a42                	ld	s4,16(sp)
    149a:	6121                	addi	sp,sp,64
    149c:	8082                	ret

000000000000149e <random_bytes>:
    149e:	7139                	addi	sp,sp,-64
    14a0:	fc06                	sd	ra,56(sp)
    14a2:	f822                	sd	s0,48(sp)
    14a4:	f426                	sd	s1,40(sp)
    14a6:	f04a                	sd	s2,32(sp)
    14a8:	ec4e                	sd	s3,24(sp)
    14aa:	e852                	sd	s4,16(sp)
    14ac:	e456                	sd	s5,8(sp)
    14ae:	e05a                	sd	s6,0(sp)
    14b0:	892a                	mv	s2,a0
    14b2:	8aae                	mv	s5,a1
    14b4:	000037b7          	lui	a5,0x3
    14b8:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    14bc:	c3c1                	beqz	a5,153c <random_bytes+0x9e>
    14be:	060a8563          	beqz	s5,1528 <random_bytes+0x8a>
    14c2:	9aca                	add	s5,s5,s2
    14c4:	00003a37          	lui	s4,0x3
    14c8:	000034b7          	lui	s1,0x3
    14cc:	10048493          	addi	s1,s1,256 # 3100 <s>
    14d0:	000039b7          	lui	s3,0x3
    14d4:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    14d8:	2505                	addiw	a0,a0,1
    14da:	0ff57513          	andi	a0,a0,255
    14de:	0eaa0aa3          	sb	a0,245(s4)
    14e2:	00a48b33          	add	s6,s1,a0
    14e6:	000b4403          	lbu	s0,0(s6)
    14ea:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    14ee:	9c3d                	addw	s0,s0,a5
    14f0:	0ff47413          	andi	s0,s0,255
    14f4:	0e898a23          	sb	s0,244(s3)
    14f8:	4605                	li	a2,1
    14fa:	008485b3          	add	a1,s1,s0
    14fe:	855a                	mv	a0,s6
    1500:	00000097          	auipc	ra,0x0
    1504:	ede080e7          	jalr	-290(ra) # 13de <swap_bytes>
    1508:	9426                	add	s0,s0,s1
    150a:	000b4783          	lbu	a5,0(s6)
    150e:	00044703          	lbu	a4,0(s0)
    1512:	9fb9                	addw	a5,a5,a4
    1514:	0ff7f793          	andi	a5,a5,255
    1518:	97a6                	add	a5,a5,s1
    151a:	0007c783          	lbu	a5,0(a5)
    151e:	00f90023          	sb	a5,0(s2)
    1522:	0905                	addi	s2,s2,1
    1524:	fb2a98e3          	bne	s5,s2,14d4 <random_bytes+0x36>
    1528:	70e2                	ld	ra,56(sp)
    152a:	7442                	ld	s0,48(sp)
    152c:	74a2                	ld	s1,40(sp)
    152e:	7902                	ld	s2,32(sp)
    1530:	69e2                	ld	s3,24(sp)
    1532:	6a42                	ld	s4,16(sp)
    1534:	6aa2                	ld	s5,8(sp)
    1536:	6b02                	ld	s6,0(sp)
    1538:	6121                	addi	sp,sp,64
    153a:	8082                	ret
    153c:	4501                	li	a0,0
    153e:	00000097          	auipc	ra,0x0
    1542:	ec0080e7          	jalr	-320(ra) # 13fe <random_init>
    1546:	bfa5                	j	14be <random_bytes+0x20>

0000000000001548 <random_ulong>:
    1548:	1101                	addi	sp,sp,-32
    154a:	ec06                	sd	ra,24(sp)
    154c:	45a1                	li	a1,8
    154e:	0028                	addi	a0,sp,8
    1550:	00000097          	auipc	ra,0x0
    1554:	f4e080e7          	jalr	-178(ra) # 149e <random_bytes>
    1558:	6522                	ld	a0,8(sp)
    155a:	60e2                	ld	ra,24(sp)
    155c:	6105                	addi	sp,sp,32
    155e:	8082                	ret

0000000000001560 <shuffle>:
    1560:	c9b9                	beqz	a1,15b6 <shuffle+0x56>
    1562:	7179                	addi	sp,sp,-48
    1564:	f406                	sd	ra,40(sp)
    1566:	f022                	sd	s0,32(sp)
    1568:	ec26                	sd	s1,24(sp)
    156a:	e84a                	sd	s2,16(sp)
    156c:	e44e                	sd	s3,8(sp)
    156e:	e052                	sd	s4,0(sp)
    1570:	8a2a                	mv	s4,a0
    1572:	89ae                	mv	s3,a1
    1574:	84b2                	mv	s1,a2
    1576:	892a                	mv	s2,a0
    1578:	4401                	li	s0,0
    157a:	00000097          	auipc	ra,0x0
    157e:	fce080e7          	jalr	-50(ra) # 1548 <random_ulong>
    1582:	408985b3          	sub	a1,s3,s0
    1586:	02b575b3          	remu	a1,a0,a1
    158a:	95a2                	add	a1,a1,s0
    158c:	029585b3          	mul	a1,a1,s1
    1590:	8626                	mv	a2,s1
    1592:	95d2                	add	a1,a1,s4
    1594:	854a                	mv	a0,s2
    1596:	00000097          	auipc	ra,0x0
    159a:	e48080e7          	jalr	-440(ra) # 13de <swap_bytes>
    159e:	0405                	addi	s0,s0,1
    15a0:	9926                	add	s2,s2,s1
    15a2:	fc899ce3          	bne	s3,s0,157a <shuffle+0x1a>
    15a6:	70a2                	ld	ra,40(sp)
    15a8:	7402                	ld	s0,32(sp)
    15aa:	64e2                	ld	s1,24(sp)
    15ac:	6942                	ld	s2,16(sp)
    15ae:	69a2                	ld	s3,8(sp)
    15b0:	6a02                	ld	s4,0(sp)
    15b2:	6145                	addi	sp,sp,48
    15b4:	8082                	ret
    15b6:	8082                	ret

00000000000015b8 <arc4_init>:
    15b8:	100500a3          	sb	zero,257(a0)
    15bc:	10050023          	sb	zero,256(a0)
    15c0:	4781                	li	a5,0
    15c2:	10000693          	li	a3,256
    15c6:	00f50733          	add	a4,a0,a5
    15ca:	00f70023          	sb	a5,0(a4)
    15ce:	0785                	addi	a5,a5,1
    15d0:	fed79be3          	bne	a5,a3,15c6 <arc4_init+0xe>
    15d4:	86aa                	mv	a3,a0
    15d6:	10050e13          	addi	t3,a0,256
    15da:	4701                	li	a4,0
    15dc:	4781                	li	a5,0
    15de:	0006c883          	lbu	a7,0(a3)
    15e2:	00f58833          	add	a6,a1,a5
    15e6:	00084803          	lbu	a6,0(a6)
    15ea:	00e8873b          	addw	a4,a7,a4
    15ee:	00e8073b          	addw	a4,a6,a4
    15f2:	0ff77713          	andi	a4,a4,255
    15f6:	00e50833          	add	a6,a0,a4
    15fa:	00084303          	lbu	t1,0(a6)
    15fe:	00668023          	sb	t1,0(a3)
    1602:	01180023          	sb	a7,0(a6)
    1606:	0785                	addi	a5,a5,1
    1608:	00c7b833          	sltu	a6,a5,a2
    160c:	41000833          	neg	a6,a6
    1610:	0107f7b3          	and	a5,a5,a6
    1614:	0685                	addi	a3,a3,1
    1616:	fdc694e3          	bne	a3,t3,15de <arc4_init+0x26>
    161a:	8082                	ret

000000000000161c <arc4_crypt>:
    161c:	10054e03          	lbu	t3,256(a0)
    1620:	10154803          	lbu	a6,257(a0)
    1624:	fff60e93          	addi	t4,a2,-1
    1628:	c225                	beqz	a2,1688 <arc4_crypt+0x6c>
    162a:	00c588b3          	add	a7,a1,a2
    162e:	86ae                	mv	a3,a1
    1630:	001e031b          	addiw	t1,t3,1
    1634:	40b3033b          	subw	t1,t1,a1
    1638:	00d3073b          	addw	a4,t1,a3
    163c:	0ff77713          	andi	a4,a4,255
    1640:	972a                	add	a4,a4,a0
    1642:	00074603          	lbu	a2,0(a4)
    1646:	0106083b          	addw	a6,a2,a6
    164a:	0ff87813          	andi	a6,a6,255
    164e:	010507b3          	add	a5,a0,a6
    1652:	0007c583          	lbu	a1,0(a5)
    1656:	00b70023          	sb	a1,0(a4)
    165a:	00c78023          	sb	a2,0(a5)
    165e:	0685                	addi	a3,a3,1
    1660:	00074783          	lbu	a5,0(a4)
    1664:	9fb1                	addw	a5,a5,a2
    1666:	0ff7f793          	andi	a5,a5,255
    166a:	97aa                	add	a5,a5,a0
    166c:	0007c783          	lbu	a5,0(a5)
    1670:	fff6c703          	lbu	a4,-1(a3)
    1674:	8fb9                	xor	a5,a5,a4
    1676:	fef68fa3          	sb	a5,-1(a3)
    167a:	fb169fe3          	bne	a3,a7,1638 <arc4_crypt+0x1c>
    167e:	2e85                	addiw	t4,t4,1
    1680:	01ce8e3b          	addw	t3,t4,t3
    1684:	0ffe7e13          	andi	t3,t3,255
    1688:	11c50023          	sb	t3,256(a0)
    168c:	110500a3          	sb	a6,257(a0)
    1690:	8082                	ret

0000000000001692 <_main>:
    1692:	1141                	addi	sp,sp,-16
    1694:	e406                	sd	ra,8(sp)
    1696:	00000097          	auipc	ra,0x0
    169a:	96a080e7          	jalr	-1686(ra) # 1000 <main>
    169e:	4501                	li	a0,0
    16a0:	00000097          	auipc	ra,0x0
    16a4:	578080e7          	jalr	1400(ra) # 1c18 <exit>
    16a8:	60a2                	ld	ra,8(sp)
    16aa:	0141                	addi	sp,sp,16
    16ac:	8082                	ret

00000000000016ae <strcmp>:
    16ae:	00054783          	lbu	a5,0(a0)
    16b2:	cb91                	beqz	a5,16c6 <strcmp+0x18>
    16b4:	0005c703          	lbu	a4,0(a1)
    16b8:	00f71763          	bne	a4,a5,16c6 <strcmp+0x18>
    16bc:	0505                	addi	a0,a0,1
    16be:	0585                	addi	a1,a1,1
    16c0:	00054783          	lbu	a5,0(a0)
    16c4:	fbe5                	bnez	a5,16b4 <strcmp+0x6>
    16c6:	0005c503          	lbu	a0,0(a1)
    16ca:	40a7853b          	subw	a0,a5,a0
    16ce:	8082                	ret

00000000000016d0 <strcpy>:
    16d0:	87aa                	mv	a5,a0
    16d2:	0585                	addi	a1,a1,1
    16d4:	0785                	addi	a5,a5,1
    16d6:	fff5c703          	lbu	a4,-1(a1)
    16da:	fee78fa3          	sb	a4,-1(a5)
    16de:	fb75                	bnez	a4,16d2 <strcpy+0x2>
    16e0:	8082                	ret

00000000000016e2 <strlen>:
    16e2:	00054783          	lbu	a5,0(a0)
    16e6:	cf81                	beqz	a5,16fe <strlen+0x1c>
    16e8:	0505                	addi	a0,a0,1
    16ea:	87aa                	mv	a5,a0
    16ec:	4685                	li	a3,1
    16ee:	9e89                	subw	a3,a3,a0
    16f0:	00f6853b          	addw	a0,a3,a5
    16f4:	0785                	addi	a5,a5,1
    16f6:	fff7c703          	lbu	a4,-1(a5)
    16fa:	fb7d                	bnez	a4,16f0 <strlen+0xe>
    16fc:	8082                	ret
    16fe:	4501                	li	a0,0
    1700:	8082                	ret

0000000000001702 <memset>:
    1702:	ca19                	beqz	a2,1718 <memset+0x16>
    1704:	87aa                	mv	a5,a0
    1706:	1602                	slli	a2,a2,0x20
    1708:	9201                	srli	a2,a2,0x20
    170a:	00a60733          	add	a4,a2,a0
    170e:	00b78023          	sb	a1,0(a5)
    1712:	0785                	addi	a5,a5,1
    1714:	fee79de3          	bne	a5,a4,170e <memset+0xc>
    1718:	8082                	ret

000000000000171a <memcmp>:
    171a:	1101                	addi	sp,sp,-32
    171c:	ec06                	sd	ra,24(sp)
    171e:	e822                	sd	s0,16(sp)
    1720:	e426                	sd	s1,8(sp)
    1722:	e04a                	sd	s2,0(sp)
    1724:	892a                	mv	s2,a0
    1726:	842e                	mv	s0,a1
    1728:	84b2                	mv	s1,a2
    172a:	c915                	beqz	a0,175e <memcmp+0x44>
    172c:	c5ad                	beqz	a1,1796 <memcmp+0x7c>
    172e:	fff60713          	addi	a4,a2,-1
    1732:	c645                	beqz	a2,17da <memcmp+0xc0>
    1734:	87ca                	mv	a5,s2
    1736:	00190613          	addi	a2,s2,1
    173a:	963a                	add	a2,a2,a4
    173c:	0007c683          	lbu	a3,0(a5)
    1740:	00044703          	lbu	a4,0(s0)
    1744:	08e69463          	bne	a3,a4,17cc <memcmp+0xb2>
    1748:	0785                	addi	a5,a5,1
    174a:	0405                	addi	s0,s0,1
    174c:	fec798e3          	bne	a5,a2,173c <memcmp+0x22>
    1750:	4501                	li	a0,0
    1752:	60e2                	ld	ra,24(sp)
    1754:	6442                	ld	s0,16(sp)
    1756:	64a2                	ld	s1,8(sp)
    1758:	6902                	ld	s2,0(sp)
    175a:	6105                	addi	sp,sp,32
    175c:	8082                	ret
    175e:	4501                	li	a0,0
    1760:	da6d                	beqz	a2,1752 <memcmp+0x38>
    1762:	03200693          	li	a3,50
    1766:	00002637          	lui	a2,0x2
    176a:	1a860613          	addi	a2,a2,424 # 21a8 <crctab+0x400>
    176e:	000025b7          	lui	a1,0x2
    1772:	1b858593          	addi	a1,a1,440 # 21b8 <crctab+0x410>
    1776:	4509                	li	a0,2
    1778:	00000097          	auipc	ra,0x0
    177c:	bbc080e7          	jalr	-1092(ra) # 1334 <fprintf>
    1780:	650d                	lui	a0,0x3
    1782:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1786:	00000097          	auipc	ra,0x0
    178a:	492080e7          	jalr	1170(ra) # 1c18 <exit>
    178e:	fff48713          	addi	a4,s1,-1
    1792:	f04d                	bnez	s0,1734 <memcmp+0x1a>
    1794:	a011                	j	1798 <memcmp+0x7e>
    1796:	c221                	beqz	a2,17d6 <memcmp+0xbc>
    1798:	03300693          	li	a3,51
    179c:	00002637          	lui	a2,0x2
    17a0:	1a860613          	addi	a2,a2,424 # 21a8 <crctab+0x400>
    17a4:	000025b7          	lui	a1,0x2
    17a8:	20058593          	addi	a1,a1,512 # 2200 <crctab+0x458>
    17ac:	4509                	li	a0,2
    17ae:	00000097          	auipc	ra,0x0
    17b2:	b86080e7          	jalr	-1146(ra) # 1334 <fprintf>
    17b6:	650d                	lui	a0,0x3
    17b8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17bc:	00000097          	auipc	ra,0x0
    17c0:	45c080e7          	jalr	1116(ra) # 1c18 <exit>
    17c4:	fff48713          	addi	a4,s1,-1
    17c8:	4401                	li	s0,0
    17ca:	b7ad                	j	1734 <memcmp+0x1a>
    17cc:	4505                	li	a0,1
    17ce:	f8d762e3          	bltu	a4,a3,1752 <memcmp+0x38>
    17d2:	557d                	li	a0,-1
    17d4:	bfbd                	j	1752 <memcmp+0x38>
    17d6:	4501                	li	a0,0
    17d8:	bfad                	j	1752 <memcmp+0x38>
    17da:	4501                	li	a0,0
    17dc:	bf9d                	j	1752 <memcmp+0x38>

00000000000017de <memcpy>:
    17de:	1101                	addi	sp,sp,-32
    17e0:	ec06                	sd	ra,24(sp)
    17e2:	e822                	sd	s0,16(sp)
    17e4:	e426                	sd	s1,8(sp)
    17e6:	e04a                	sd	s2,0(sp)
    17e8:	84aa                	mv	s1,a0
    17ea:	842e                	mv	s0,a1
    17ec:	8932                	mv	s2,a2
    17ee:	c51d                	beqz	a0,181c <memcpy+0x3e>
    17f0:	c1ad                	beqz	a1,1852 <memcpy+0x74>
    17f2:	fff60693          	addi	a3,a2,-1
    17f6:	ce01                	beqz	a2,180e <memcpy+0x30>
    17f8:	0685                	addi	a3,a3,1
    17fa:	96a6                	add	a3,a3,s1
    17fc:	87a6                	mv	a5,s1
    17fe:	0405                	addi	s0,s0,1
    1800:	0785                	addi	a5,a5,1
    1802:	fff44703          	lbu	a4,-1(s0)
    1806:	fee78fa3          	sb	a4,-1(a5)
    180a:	fed79ae3          	bne	a5,a3,17fe <memcpy+0x20>
    180e:	8526                	mv	a0,s1
    1810:	60e2                	ld	ra,24(sp)
    1812:	6442                	ld	s0,16(sp)
    1814:	64a2                	ld	s1,8(sp)
    1816:	6902                	ld	s2,0(sp)
    1818:	6105                	addi	sp,sp,32
    181a:	8082                	ret
    181c:	da6d                	beqz	a2,180e <memcpy+0x30>
    181e:	04000693          	li	a3,64
    1822:	00002637          	lui	a2,0x2
    1826:	1a860613          	addi	a2,a2,424 # 21a8 <crctab+0x400>
    182a:	000025b7          	lui	a1,0x2
    182e:	24858593          	addi	a1,a1,584 # 2248 <crctab+0x4a0>
    1832:	4509                	li	a0,2
    1834:	00000097          	auipc	ra,0x0
    1838:	b00080e7          	jalr	-1280(ra) # 1334 <fprintf>
    183c:	650d                	lui	a0,0x3
    183e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1842:	00000097          	auipc	ra,0x0
    1846:	3d6080e7          	jalr	982(ra) # 1c18 <exit>
    184a:	fff90693          	addi	a3,s2,-1
    184e:	f44d                	bnez	s0,17f8 <memcpy+0x1a>
    1850:	a011                	j	1854 <memcpy+0x76>
    1852:	de55                	beqz	a2,180e <memcpy+0x30>
    1854:	04100693          	li	a3,65
    1858:	00002637          	lui	a2,0x2
    185c:	1a860613          	addi	a2,a2,424 # 21a8 <crctab+0x400>
    1860:	000025b7          	lui	a1,0x2
    1864:	29058593          	addi	a1,a1,656 # 2290 <crctab+0x4e8>
    1868:	4509                	li	a0,2
    186a:	00000097          	auipc	ra,0x0
    186e:	aca080e7          	jalr	-1334(ra) # 1334 <fprintf>
    1872:	650d                	lui	a0,0x3
    1874:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1878:	00000097          	auipc	ra,0x0
    187c:	3a0080e7          	jalr	928(ra) # 1c18 <exit>
    1880:	fff90693          	addi	a3,s2,-1
    1884:	4401                	li	s0,0
    1886:	bf8d                	j	17f8 <memcpy+0x1a>

0000000000001888 <itoa>:
    1888:	1101                	addi	sp,sp,-32
    188a:	ec06                	sd	ra,24(sp)
    188c:	e822                	sd	s0,16(sp)
    188e:	e426                	sd	s1,8(sp)
    1890:	842a                	mv	s0,a0
    1892:	41f5d71b          	sraiw	a4,a1,0x1f
    1896:	00e5c7b3          	xor	a5,a1,a4
    189a:	9f99                	subw	a5,a5,a4
    189c:	84aa                	mv	s1,a0
    189e:	862a                	mv	a2,a0
    18a0:	4681                	li	a3,0
    18a2:	4529                	li	a0,10
    18a4:	4825                	li	a6,9
    18a6:	88b6                	mv	a7,a3
    18a8:	2685                	addiw	a3,a3,1
    18aa:	02a7e73b          	remw	a4,a5,a0
    18ae:	0307071b          	addiw	a4,a4,48
    18b2:	00e60023          	sb	a4,0(a2)
    18b6:	873e                	mv	a4,a5
    18b8:	02a7c7bb          	divw	a5,a5,a0
    18bc:	0605                	addi	a2,a2,1
    18be:	fee844e3          	blt	a6,a4,18a6 <itoa+0x1e>
    18c2:	0405c863          	bltz	a1,1912 <itoa+0x8a>
    18c6:	96a2                	add	a3,a3,s0
    18c8:	00068023          	sb	zero,0(a3)
    18cc:	8522                	mv	a0,s0
    18ce:	00000097          	auipc	ra,0x0
    18d2:	e14080e7          	jalr	-492(ra) # 16e2 <strlen>
    18d6:	fff5071b          	addiw	a4,a0,-1
    18da:	02e05763          	blez	a4,1908 <itoa+0x80>
    18de:	9722                	add	a4,a4,s0
    18e0:	4681                	li	a3,0
    18e2:	0004c783          	lbu	a5,0(s1)
    18e6:	00074603          	lbu	a2,0(a4)
    18ea:	00c48023          	sb	a2,0(s1)
    18ee:	00f70023          	sb	a5,0(a4)
    18f2:	0016879b          	addiw	a5,a3,1
    18f6:	0007869b          	sext.w	a3,a5
    18fa:	0485                	addi	s1,s1,1
    18fc:	177d                	addi	a4,a4,-1
    18fe:	fff7c793          	not	a5,a5
    1902:	9fa9                	addw	a5,a5,a0
    1904:	fcf6cfe3          	blt	a3,a5,18e2 <itoa+0x5a>
    1908:	60e2                	ld	ra,24(sp)
    190a:	6442                	ld	s0,16(sp)
    190c:	64a2                	ld	s1,8(sp)
    190e:	6105                	addi	sp,sp,32
    1910:	8082                	ret
    1912:	96a2                	add	a3,a3,s0
    1914:	02d00793          	li	a5,45
    1918:	00f68023          	sb	a5,0(a3)
    191c:	0028869b          	addiw	a3,a7,2
    1920:	b75d                	j	18c6 <itoa+0x3e>

0000000000001922 <atoi>:
    1922:	00054783          	lbu	a5,0(a0)
    1926:	02000713          	li	a4,32
    192a:	00e79763          	bne	a5,a4,1938 <atoi+0x16>
    192e:	0505                	addi	a0,a0,1
    1930:	00054783          	lbu	a5,0(a0)
    1934:	fee78de3          	beq	a5,a4,192e <atoi+0xc>
    1938:	02b00713          	li	a4,43
    193c:	04e78663          	beq	a5,a4,1988 <atoi+0x66>
    1940:	02d00713          	li	a4,45
    1944:	4805                	li	a6,1
    1946:	04e78463          	beq	a5,a4,198e <atoi+0x6c>
    194a:	00054683          	lbu	a3,0(a0)
    194e:	fd06879b          	addiw	a5,a3,-48
    1952:	0ff7f793          	andi	a5,a5,255
    1956:	4725                	li	a4,9
    1958:	02f76e63          	bltu	a4,a5,1994 <atoi+0x72>
    195c:	4601                	li	a2,0
    195e:	45a5                	li	a1,9
    1960:	0505                	addi	a0,a0,1
    1962:	0026179b          	slliw	a5,a2,0x2
    1966:	9fb1                	addw	a5,a5,a2
    1968:	0017979b          	slliw	a5,a5,0x1
    196c:	9fb5                	addw	a5,a5,a3
    196e:	fd07861b          	addiw	a2,a5,-48
    1972:	00054683          	lbu	a3,0(a0)
    1976:	fd06871b          	addiw	a4,a3,-48
    197a:	0ff77713          	andi	a4,a4,255
    197e:	fee5f1e3          	bgeu	a1,a4,1960 <atoi+0x3e>
    1982:	02c8053b          	mulw	a0,a6,a2
    1986:	8082                	ret
    1988:	0505                	addi	a0,a0,1
    198a:	4805                	li	a6,1
    198c:	bf7d                	j	194a <atoi+0x28>
    198e:	0505                	addi	a0,a0,1
    1990:	587d                	li	a6,-1
    1992:	bf65                	j	194a <atoi+0x28>
    1994:	4601                	li	a2,0
    1996:	b7f5                	j	1982 <atoi+0x60>

0000000000001998 <check_file_handle>:
    1998:	d8010113          	addi	sp,sp,-640
    199c:	26113c23          	sd	ra,632(sp)
    19a0:	26813823          	sd	s0,624(sp)
    19a4:	26913423          	sd	s1,616(sp)
    19a8:	27213023          	sd	s2,608(sp)
    19ac:	25313c23          	sd	s3,600(sp)
    19b0:	25413823          	sd	s4,592(sp)
    19b4:	25513423          	sd	s5,584(sp)
    19b8:	25613023          	sd	s6,576(sp)
    19bc:	23713c23          	sd	s7,568(sp)
    19c0:	23813823          	sd	s8,560(sp)
    19c4:	23913423          	sd	s9,552(sp)
    19c8:	23a13023          	sd	s10,544(sp)
    19cc:	21b13c23          	sd	s11,536(sp)
    19d0:	8baa                	mv	s7,a0
    19d2:	8a2e                	mv	s4,a1
    19d4:	8c32                	mv	s8,a2
    19d6:	89b6                	mv	s3,a3
    19d8:	040c                	addi	a1,sp,512
    19da:	00000097          	auipc	ra,0x0
    19de:	28e080e7          	jalr	654(ra) # 1c68 <fstat>
    19e2:	20813603          	ld	a2,520(sp)
    19e6:	03361163          	bne	a2,s3,1a08 <check_file_handle+0x70>
    19ea:	06098763          	beqz	s3,1a58 <check_file_handle+0xc0>
    19ee:	4901                	li	s2,0
    19f0:	20000a93          	li	s5,512
    19f4:	00002cb7          	lui	s9,0x2
    19f8:	00002db7          	lui	s11,0x2
    19fc:	6b0d                	lui	s6,0x3
    19fe:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a02:	00002d37          	lui	s10,0x2
    1a06:	aa39                	j	1b24 <check_file_handle+0x18c>
    1a08:	86ce                	mv	a3,s3
    1a0a:	85d2                	mv	a1,s4
    1a0c:	00002537          	lui	a0,0x2
    1a10:	2d850513          	addi	a0,a0,728 # 22d8 <crctab+0x530>
    1a14:	00000097          	auipc	ra,0x0
    1a18:	942080e7          	jalr	-1726(ra) # 1356 <printf>
    1a1c:	fc0999e3          	bnez	s3,19ee <check_file_handle+0x56>
    1a20:	20813683          	ld	a3,520(sp)
    1a24:	03368a63          	beq	a3,s3,1a58 <check_file_handle+0xc0>
    1a28:	0a600813          	li	a6,166
    1a2c:	000027b7          	lui	a5,0x2
    1a30:	1a878793          	addi	a5,a5,424 # 21a8 <crctab+0x400>
    1a34:	874e                	mv	a4,s3
    1a36:	8652                	mv	a2,s4
    1a38:	000025b7          	lui	a1,0x2
    1a3c:	3a858593          	addi	a1,a1,936 # 23a8 <crctab+0x600>
    1a40:	4509                	li	a0,2
    1a42:	00000097          	auipc	ra,0x0
    1a46:	8f2080e7          	jalr	-1806(ra) # 1334 <fprintf>
    1a4a:	650d                	lui	a0,0x3
    1a4c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a50:	00000097          	auipc	ra,0x0
    1a54:	1c8080e7          	jalr	456(ra) # 1c18 <exit>
    1a58:	85d2                	mv	a1,s4
    1a5a:	00002537          	lui	a0,0x2
    1a5e:	3f050513          	addi	a0,a0,1008 # 23f0 <crctab+0x648>
    1a62:	00000097          	auipc	ra,0x0
    1a66:	8f4080e7          	jalr	-1804(ra) # 1356 <printf>
    1a6a:	27813083          	ld	ra,632(sp)
    1a6e:	27013403          	ld	s0,624(sp)
    1a72:	26813483          	ld	s1,616(sp)
    1a76:	26013903          	ld	s2,608(sp)
    1a7a:	25813983          	ld	s3,600(sp)
    1a7e:	25013a03          	ld	s4,592(sp)
    1a82:	24813a83          	ld	s5,584(sp)
    1a86:	24013b03          	ld	s6,576(sp)
    1a8a:	23813b83          	ld	s7,568(sp)
    1a8e:	23013c03          	ld	s8,560(sp)
    1a92:	22813c83          	ld	s9,552(sp)
    1a96:	22013d03          	ld	s10,544(sp)
    1a9a:	21813d83          	ld	s11,536(sp)
    1a9e:	28010113          	addi	sp,sp,640
    1aa2:	8082                	ret
    1aa4:	09d00893          	li	a7,157
    1aa8:	1a8c8813          	addi	a6,s9,424 # 21a8 <crctab+0x400>
    1aac:	87aa                	mv	a5,a0
    1aae:	8752                	mv	a4,s4
    1ab0:	86ca                	mv	a3,s2
    1ab2:	8622                	mv	a2,s0
    1ab4:	308d8593          	addi	a1,s11,776 # 2308 <crctab+0x560>
    1ab8:	4509                	li	a0,2
    1aba:	00000097          	auipc	ra,0x0
    1abe:	87a080e7          	jalr	-1926(ra) # 1334 <fprintf>
    1ac2:	855a                	mv	a0,s6
    1ac4:	00000097          	auipc	ra,0x0
    1ac8:	154080e7          	jalr	340(ra) # 1c18 <exit>
    1acc:	a89d                	j	1b42 <check_file_handle+0x1aa>
    1ace:	00160593          	addi	a1,a2,1
    1ad2:	0285f163          	bgeu	a1,s0,1af4 <check_file_handle+0x15c>
    1ad6:	00c10733          	add	a4,sp,a2
    1ada:	00b487b3          	add	a5,s1,a1
    1ade:	00174683          	lbu	a3,1(a4)
    1ae2:	0007c783          	lbu	a5,0(a5)
    1ae6:	00f68763          	beq	a3,a5,1af4 <check_file_handle+0x15c>
    1aea:	0585                	addi	a1,a1,1
    1aec:	0705                	addi	a4,a4,1
    1aee:	feb416e3          	bne	s0,a1,1ada <check_file_handle+0x142>
    1af2:	85a2                	mv	a1,s0
    1af4:	08100813          	li	a6,129
    1af8:	1a8c8793          	addi	a5,s9,424
    1afc:	8752                	mv	a4,s4
    1afe:	012606b3          	add	a3,a2,s2
    1b02:	40c58633          	sub	a2,a1,a2
    1b06:	350d0593          	addi	a1,s10,848 # 2350 <crctab+0x5a8>
    1b0a:	4509                	li	a0,2
    1b0c:	00000097          	auipc	ra,0x0
    1b10:	828080e7          	jalr	-2008(ra) # 1334 <fprintf>
    1b14:	855a                	mv	a0,s6
    1b16:	00000097          	auipc	ra,0x0
    1b1a:	102080e7          	jalr	258(ra) # 1c18 <exit>
    1b1e:	9922                	add	s2,s2,s0
    1b20:	f13970e3          	bgeu	s2,s3,1a20 <check_file_handle+0x88>
    1b24:	41298433          	sub	s0,s3,s2
    1b28:	008af363          	bgeu	s5,s0,1b2e <check_file_handle+0x196>
    1b2c:	8456                	mv	s0,s5
    1b2e:	0004061b          	sext.w	a2,s0
    1b32:	858a                	mv	a1,sp
    1b34:	855e                	mv	a0,s7
    1b36:	00000097          	auipc	ra,0x0
    1b3a:	10a080e7          	jalr	266(ra) # 1c40 <read>
    1b3e:	f68513e3          	bne	a0,s0,1aa4 <check_file_handle+0x10c>
    1b42:	012c04b3          	add	s1,s8,s2
    1b46:	8622                	mv	a2,s0
    1b48:	85a6                	mv	a1,s1
    1b4a:	850a                	mv	a0,sp
    1b4c:	00000097          	auipc	ra,0x0
    1b50:	bce080e7          	jalr	-1074(ra) # 171a <memcmp>
    1b54:	d569                	beqz	a0,1b1e <check_file_handle+0x186>
    1b56:	03298163          	beq	s3,s2,1b78 <check_file_handle+0x1e0>
    1b5a:	870a                	mv	a4,sp
    1b5c:	4601                	li	a2,0
    1b5e:	00c487b3          	add	a5,s1,a2
    1b62:	00074683          	lbu	a3,0(a4)
    1b66:	0007c783          	lbu	a5,0(a5)
    1b6a:	f6f692e3          	bne	a3,a5,1ace <check_file_handle+0x136>
    1b6e:	0605                	addi	a2,a2,1
    1b70:	0705                	addi	a4,a4,1
    1b72:	fe8666e3          	bltu	a2,s0,1b5e <check_file_handle+0x1c6>
    1b76:	bfa1                	j	1ace <check_file_handle+0x136>
    1b78:	4601                	li	a2,0
    1b7a:	4585                	li	a1,1
    1b7c:	bfa5                	j	1af4 <check_file_handle+0x15c>

0000000000001b7e <check_file>:
    1b7e:	7179                	addi	sp,sp,-48
    1b80:	f406                	sd	ra,40(sp)
    1b82:	f022                	sd	s0,32(sp)
    1b84:	ec26                	sd	s1,24(sp)
    1b86:	e84a                	sd	s2,16(sp)
    1b88:	e44e                	sd	s3,8(sp)
    1b8a:	84aa                	mv	s1,a0
    1b8c:	892e                	mv	s2,a1
    1b8e:	89b2                	mv	s3,a2
    1b90:	4581                	li	a1,0
    1b92:	00000097          	auipc	ra,0x0
    1b96:	0a6080e7          	jalr	166(ra) # 1c38 <open>
    1b9a:	842a                	mv	s0,a0
    1b9c:	4789                	li	a5,2
    1b9e:	02a7df63          	bge	a5,a0,1bdc <check_file+0x5e>
    1ba2:	86ce                	mv	a3,s3
    1ba4:	864a                	mv	a2,s2
    1ba6:	85a6                	mv	a1,s1
    1ba8:	8522                	mv	a0,s0
    1baa:	00000097          	auipc	ra,0x0
    1bae:	dee080e7          	jalr	-530(ra) # 1998 <check_file_handle>
    1bb2:	85a6                	mv	a1,s1
    1bb4:	00002537          	lui	a0,0x2
    1bb8:	47850513          	addi	a0,a0,1144 # 2478 <crctab+0x6d0>
    1bbc:	fffff097          	auipc	ra,0xfffff
    1bc0:	79a080e7          	jalr	1946(ra) # 1356 <printf>
    1bc4:	8522                	mv	a0,s0
    1bc6:	00000097          	auipc	ra,0x0
    1bca:	09a080e7          	jalr	154(ra) # 1c60 <close>
    1bce:	70a2                	ld	ra,40(sp)
    1bd0:	7402                	ld	s0,32(sp)
    1bd2:	64e2                	ld	s1,24(sp)
    1bd4:	6942                	ld	s2,16(sp)
    1bd6:	69a2                	ld	s3,8(sp)
    1bd8:	6145                	addi	sp,sp,48
    1bda:	8082                	ret
    1bdc:	0ae00713          	li	a4,174
    1be0:	000026b7          	lui	a3,0x2
    1be4:	1a868693          	addi	a3,a3,424 # 21a8 <crctab+0x400>
    1be8:	8626                	mv	a2,s1
    1bea:	000025b7          	lui	a1,0x2
    1bee:	41058593          	addi	a1,a1,1040 # 2410 <crctab+0x668>
    1bf2:	4509                	li	a0,2
    1bf4:	fffff097          	auipc	ra,0xfffff
    1bf8:	740080e7          	jalr	1856(ra) # 1334 <fprintf>
    1bfc:	650d                	lui	a0,0x3
    1bfe:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c02:	00000097          	auipc	ra,0x0
    1c06:	016080e7          	jalr	22(ra) # 1c18 <exit>
    1c0a:	bf61                	j	1ba2 <check_file+0x24>

0000000000001c0c <r_sp>:
    1c0c:	850a                	mv	a0,sp
    1c0e:	8082                	ret

0000000000001c10 <halt>:
    1c10:	4885                	li	a7,1
    1c12:	00000073          	ecall
    1c16:	8082                	ret

0000000000001c18 <exit>:
    1c18:	4889                	li	a7,2
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret

0000000000001c20 <exec>:
    1c20:	488d                	li	a7,3
    1c22:	00000073          	ecall
    1c26:	8082                	ret

0000000000001c28 <wait>:
    1c28:	4891                	li	a7,4
    1c2a:	00000073          	ecall
    1c2e:	8082                	ret

0000000000001c30 <remove>:
    1c30:	4895                	li	a7,5
    1c32:	00000073          	ecall
    1c36:	8082                	ret

0000000000001c38 <open>:
    1c38:	4899                	li	a7,6
    1c3a:	00000073          	ecall
    1c3e:	8082                	ret

0000000000001c40 <read>:
    1c40:	489d                	li	a7,7
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <write>:
    1c48:	48a1                	li	a7,8
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret

0000000000001c50 <seek>:
    1c50:	48a5                	li	a7,9
    1c52:	00000073          	ecall
    1c56:	8082                	ret

0000000000001c58 <tell>:
    1c58:	48a9                	li	a7,10
    1c5a:	00000073          	ecall
    1c5e:	8082                	ret

0000000000001c60 <close>:
    1c60:	48ad                	li	a7,11
    1c62:	00000073          	ecall
    1c66:	8082                	ret

0000000000001c68 <fstat>:
    1c68:	48b1                	li	a7,12
    1c6a:	00000073          	ecall
    1c6e:	8082                	ret

0000000000001c70 <mmap>:
    1c70:	48b5                	li	a7,13
    1c72:	00000073          	ecall
    1c76:	8082                	ret

0000000000001c78 <munmap>:
    1c78:	48b9                	li	a7,14
    1c7a:	00000073          	ecall
    1c7e:	8082                	ret

0000000000001c80 <chdir>:
    1c80:	48bd                	li	a7,15
    1c82:	00000073          	ecall
    1c86:	8082                	ret

0000000000001c88 <mkdir>:
    1c88:	48c1                	li	a7,16
    1c8a:	00000073          	ecall
    1c8e:	8082                	ret
