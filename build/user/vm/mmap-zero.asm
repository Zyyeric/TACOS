
build/user/vm/mmap-zero:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	60200593          	li	a1,1538
    100a:	00002537          	lui	a0,0x2
    100e:	c9050513          	addi	a0,a0,-880 # 1c90 <mkdir+0xc>
    1012:	00001097          	auipc	ra,0x1
    1016:	c22080e7          	jalr	-990(ra) # 1c34 <open>
    101a:	842a                	mv	s0,a0
    101c:	4789                	li	a5,2
    101e:	04a7de63          	bge	a5,a0,107a <main+0x7a>
    1022:	00002537          	lui	a0,0x2
    1026:	d2050513          	addi	a0,a0,-736 # 1d20 <mkdir+0x9c>
    102a:	00000097          	auipc	ra,0x0
    102e:	328080e7          	jalr	808(ra) # 1352 <printf>
    1032:	7f0005b7          	lui	a1,0x7f000
    1036:	8522                	mv	a0,s0
    1038:	00001097          	auipc	ra,0x1
    103c:	c34080e7          	jalr	-972(ra) # 1c6c <mmap>
    1040:	4751                	li	a4,20
    1042:	000026b7          	lui	a3,0x2
    1046:	c9868693          	addi	a3,a3,-872 # 1c98 <mkdir+0x14>
    104a:	7f0007b7          	lui	a5,0x7f000
    104e:	0007c603          	lbu	a2,0(a5) # 7f000000 <s+0x7effcff0>
    1052:	000025b7          	lui	a1,0x2
    1056:	d3058593          	addi	a1,a1,-720 # 1d30 <mkdir+0xac>
    105a:	4509                	li	a0,2
    105c:	00000097          	auipc	ra,0x0
    1060:	2d4080e7          	jalr	724(ra) # 1330 <fprintf>
    1064:	650d                	lui	a0,0x3
    1066:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    106a:	00001097          	auipc	ra,0x1
    106e:	baa080e7          	jalr	-1110(ra) # 1c14 <exit>
    1072:	60a2                	ld	ra,8(sp)
    1074:	6402                	ld	s0,0(sp)
    1076:	0141                	addi	sp,sp,16
    1078:	8082                	ret
    107a:	46b1                	li	a3,12
    107c:	00002637          	lui	a2,0x2
    1080:	c9860613          	addi	a2,a2,-872 # 1c98 <mkdir+0x14>
    1084:	000025b7          	lui	a1,0x2
    1088:	cb058593          	addi	a1,a1,-848 # 1cb0 <mkdir+0x2c>
    108c:	4509                	li	a0,2
    108e:	00000097          	auipc	ra,0x0
    1092:	2a2080e7          	jalr	674(ra) # 1330 <fprintf>
    1096:	650d                	lui	a0,0x3
    1098:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    109c:	00001097          	auipc	ra,0x1
    10a0:	b78080e7          	jalr	-1160(ra) # 1c14 <exit>
    10a4:	bfbd                	j	1022 <main+0x22>

00000000000010a6 <putc>:
    10a6:	1101                	addi	sp,sp,-32
    10a8:	ec06                	sd	ra,24(sp)
    10aa:	00b107a3          	sb	a1,15(sp)
    10ae:	4605                	li	a2,1
    10b0:	00f10593          	addi	a1,sp,15
    10b4:	00001097          	auipc	ra,0x1
    10b8:	b90080e7          	jalr	-1136(ra) # 1c44 <write>
    10bc:	60e2                	ld	ra,24(sp)
    10be:	6105                	addi	sp,sp,32
    10c0:	8082                	ret

00000000000010c2 <printint>:
    10c2:	7179                	addi	sp,sp,-48
    10c4:	f406                	sd	ra,40(sp)
    10c6:	f022                	sd	s0,32(sp)
    10c8:	ec26                	sd	s1,24(sp)
    10ca:	e84a                	sd	s2,16(sp)
    10cc:	84aa                	mv	s1,a0
    10ce:	c299                	beqz	a3,10d4 <printint+0x12>
    10d0:	0805c363          	bltz	a1,1156 <printint+0x94>
    10d4:	2581                	sext.w	a1,a1
    10d6:	4881                	li	a7,0
    10d8:	868a                	mv	a3,sp
    10da:	4701                	li	a4,0
    10dc:	2601                	sext.w	a2,a2
    10de:	00002537          	lui	a0,0x2
    10e2:	d7050513          	addi	a0,a0,-656 # 1d70 <digits>
    10e6:	883a                	mv	a6,a4
    10e8:	2705                	addiw	a4,a4,1
    10ea:	02c5f7bb          	remuw	a5,a1,a2
    10ee:	1782                	slli	a5,a5,0x20
    10f0:	9381                	srli	a5,a5,0x20
    10f2:	97aa                	add	a5,a5,a0
    10f4:	0007c783          	lbu	a5,0(a5)
    10f8:	00f68023          	sb	a5,0(a3)
    10fc:	0005879b          	sext.w	a5,a1
    1100:	02c5d5bb          	divuw	a1,a1,a2
    1104:	0685                	addi	a3,a3,1
    1106:	fec7f0e3          	bgeu	a5,a2,10e6 <printint+0x24>
    110a:	00088a63          	beqz	a7,111e <printint+0x5c>
    110e:	081c                	addi	a5,sp,16
    1110:	973e                	add	a4,a4,a5
    1112:	02d00793          	li	a5,45
    1116:	fef70823          	sb	a5,-16(a4)
    111a:	0028071b          	addiw	a4,a6,2
    111e:	02e05663          	blez	a4,114a <printint+0x88>
    1122:	00e10433          	add	s0,sp,a4
    1126:	fff10913          	addi	s2,sp,-1
    112a:	993a                	add	s2,s2,a4
    112c:	377d                	addiw	a4,a4,-1
    112e:	1702                	slli	a4,a4,0x20
    1130:	9301                	srli	a4,a4,0x20
    1132:	40e90933          	sub	s2,s2,a4
    1136:	fff44583          	lbu	a1,-1(s0)
    113a:	8526                	mv	a0,s1
    113c:	00000097          	auipc	ra,0x0
    1140:	f6a080e7          	jalr	-150(ra) # 10a6 <putc>
    1144:	147d                	addi	s0,s0,-1
    1146:	ff2418e3          	bne	s0,s2,1136 <printint+0x74>
    114a:	70a2                	ld	ra,40(sp)
    114c:	7402                	ld	s0,32(sp)
    114e:	64e2                	ld	s1,24(sp)
    1150:	6942                	ld	s2,16(sp)
    1152:	6145                	addi	sp,sp,48
    1154:	8082                	ret
    1156:	40b005bb          	negw	a1,a1
    115a:	4885                	li	a7,1
    115c:	bfb5                	j	10d8 <printint+0x16>

000000000000115e <vprintf>:
    115e:	7159                	addi	sp,sp,-112
    1160:	f486                	sd	ra,104(sp)
    1162:	f0a2                	sd	s0,96(sp)
    1164:	eca6                	sd	s1,88(sp)
    1166:	e8ca                	sd	s2,80(sp)
    1168:	e4ce                	sd	s3,72(sp)
    116a:	e0d2                	sd	s4,64(sp)
    116c:	fc56                	sd	s5,56(sp)
    116e:	f85a                	sd	s6,48(sp)
    1170:	f45e                	sd	s7,40(sp)
    1172:	f062                	sd	s8,32(sp)
    1174:	ec66                	sd	s9,24(sp)
    1176:	e86a                	sd	s10,16(sp)
    1178:	e46e                	sd	s11,8(sp)
    117a:	0005c483          	lbu	s1,0(a1)
    117e:	18048a63          	beqz	s1,1312 <vprintf+0x1b4>
    1182:	8a2a                	mv	s4,a0
    1184:	8ab2                	mv	s5,a2
    1186:	00158413          	addi	s0,a1,1
    118a:	4901                	li	s2,0
    118c:	02500993          	li	s3,37
    1190:	06400b93          	li	s7,100
    1194:	06c00c13          	li	s8,108
    1198:	07800c93          	li	s9,120
    119c:	07000d13          	li	s10,112
    11a0:	00002db7          	lui	s11,0x2
    11a4:	00002b37          	lui	s6,0x2
    11a8:	d70b0b13          	addi	s6,s6,-656 # 1d70 <digits>
    11ac:	a839                	j	11ca <vprintf+0x6c>
    11ae:	85a6                	mv	a1,s1
    11b0:	8552                	mv	a0,s4
    11b2:	00000097          	auipc	ra,0x0
    11b6:	ef4080e7          	jalr	-268(ra) # 10a6 <putc>
    11ba:	a019                	j	11c0 <vprintf+0x62>
    11bc:	01390f63          	beq	s2,s3,11da <vprintf+0x7c>
    11c0:	0405                	addi	s0,s0,1
    11c2:	fff44483          	lbu	s1,-1(s0)
    11c6:	14048663          	beqz	s1,1312 <vprintf+0x1b4>
    11ca:	0004879b          	sext.w	a5,s1
    11ce:	fe0917e3          	bnez	s2,11bc <vprintf+0x5e>
    11d2:	fd379ee3          	bne	a5,s3,11ae <vprintf+0x50>
    11d6:	893e                	mv	s2,a5
    11d8:	b7e5                	j	11c0 <vprintf+0x62>
    11da:	05778063          	beq	a5,s7,121a <vprintf+0xbc>
    11de:	05878c63          	beq	a5,s8,1236 <vprintf+0xd8>
    11e2:	07978863          	beq	a5,s9,1252 <vprintf+0xf4>
    11e6:	09a78463          	beq	a5,s10,126e <vprintf+0x110>
    11ea:	07300713          	li	a4,115
    11ee:	0ce78263          	beq	a5,a4,12b2 <vprintf+0x154>
    11f2:	06300713          	li	a4,99
    11f6:	0ee78763          	beq	a5,a4,12e4 <vprintf+0x186>
    11fa:	11378163          	beq	a5,s3,12fc <vprintf+0x19e>
    11fe:	85ce                	mv	a1,s3
    1200:	8552                	mv	a0,s4
    1202:	00000097          	auipc	ra,0x0
    1206:	ea4080e7          	jalr	-348(ra) # 10a6 <putc>
    120a:	85a6                	mv	a1,s1
    120c:	8552                	mv	a0,s4
    120e:	00000097          	auipc	ra,0x0
    1212:	e98080e7          	jalr	-360(ra) # 10a6 <putc>
    1216:	4901                	li	s2,0
    1218:	b765                	j	11c0 <vprintf+0x62>
    121a:	008a8493          	addi	s1,s5,8
    121e:	4685                	li	a3,1
    1220:	4629                	li	a2,10
    1222:	000aa583          	lw	a1,0(s5)
    1226:	8552                	mv	a0,s4
    1228:	00000097          	auipc	ra,0x0
    122c:	e9a080e7          	jalr	-358(ra) # 10c2 <printint>
    1230:	8aa6                	mv	s5,s1
    1232:	4901                	li	s2,0
    1234:	b771                	j	11c0 <vprintf+0x62>
    1236:	008a8493          	addi	s1,s5,8
    123a:	4681                	li	a3,0
    123c:	4629                	li	a2,10
    123e:	000aa583          	lw	a1,0(s5)
    1242:	8552                	mv	a0,s4
    1244:	00000097          	auipc	ra,0x0
    1248:	e7e080e7          	jalr	-386(ra) # 10c2 <printint>
    124c:	8aa6                	mv	s5,s1
    124e:	4901                	li	s2,0
    1250:	bf85                	j	11c0 <vprintf+0x62>
    1252:	008a8493          	addi	s1,s5,8
    1256:	4681                	li	a3,0
    1258:	4641                	li	a2,16
    125a:	000aa583          	lw	a1,0(s5)
    125e:	8552                	mv	a0,s4
    1260:	00000097          	auipc	ra,0x0
    1264:	e62080e7          	jalr	-414(ra) # 10c2 <printint>
    1268:	8aa6                	mv	s5,s1
    126a:	4901                	li	s2,0
    126c:	bf91                	j	11c0 <vprintf+0x62>
    126e:	008a8913          	addi	s2,s5,8
    1272:	000aba83          	ld	s5,0(s5)
    1276:	03000593          	li	a1,48
    127a:	8552                	mv	a0,s4
    127c:	00000097          	auipc	ra,0x0
    1280:	e2a080e7          	jalr	-470(ra) # 10a6 <putc>
    1284:	85e6                	mv	a1,s9
    1286:	8552                	mv	a0,s4
    1288:	00000097          	auipc	ra,0x0
    128c:	e1e080e7          	jalr	-482(ra) # 10a6 <putc>
    1290:	44c1                	li	s1,16
    1292:	03cad793          	srli	a5,s5,0x3c
    1296:	97da                	add	a5,a5,s6
    1298:	0007c583          	lbu	a1,0(a5)
    129c:	8552                	mv	a0,s4
    129e:	00000097          	auipc	ra,0x0
    12a2:	e08080e7          	jalr	-504(ra) # 10a6 <putc>
    12a6:	0a92                	slli	s5,s5,0x4
    12a8:	34fd                	addiw	s1,s1,-1
    12aa:	f4e5                	bnez	s1,1292 <vprintf+0x134>
    12ac:	8aca                	mv	s5,s2
    12ae:	4901                	li	s2,0
    12b0:	bf01                	j	11c0 <vprintf+0x62>
    12b2:	008a8913          	addi	s2,s5,8
    12b6:	000ab483          	ld	s1,0(s5)
    12ba:	c085                	beqz	s1,12da <vprintf+0x17c>
    12bc:	0004c583          	lbu	a1,0(s1)
    12c0:	c5b1                	beqz	a1,130c <vprintf+0x1ae>
    12c2:	8552                	mv	a0,s4
    12c4:	00000097          	auipc	ra,0x0
    12c8:	de2080e7          	jalr	-542(ra) # 10a6 <putc>
    12cc:	0485                	addi	s1,s1,1
    12ce:	0004c583          	lbu	a1,0(s1)
    12d2:	f9e5                	bnez	a1,12c2 <vprintf+0x164>
    12d4:	8aca                	mv	s5,s2
    12d6:	4901                	li	s2,0
    12d8:	b5e5                	j	11c0 <vprintf+0x62>
    12da:	d68d8493          	addi	s1,s11,-664 # 1d68 <mkdir+0xe4>
    12de:	02800593          	li	a1,40
    12e2:	b7c5                	j	12c2 <vprintf+0x164>
    12e4:	008a8493          	addi	s1,s5,8
    12e8:	000ac583          	lbu	a1,0(s5)
    12ec:	8552                	mv	a0,s4
    12ee:	00000097          	auipc	ra,0x0
    12f2:	db8080e7          	jalr	-584(ra) # 10a6 <putc>
    12f6:	8aa6                	mv	s5,s1
    12f8:	4901                	li	s2,0
    12fa:	b5d9                	j	11c0 <vprintf+0x62>
    12fc:	85ce                	mv	a1,s3
    12fe:	8552                	mv	a0,s4
    1300:	00000097          	auipc	ra,0x0
    1304:	da6080e7          	jalr	-602(ra) # 10a6 <putc>
    1308:	4901                	li	s2,0
    130a:	bd5d                	j	11c0 <vprintf+0x62>
    130c:	8aca                	mv	s5,s2
    130e:	4901                	li	s2,0
    1310:	bd45                	j	11c0 <vprintf+0x62>
    1312:	70a6                	ld	ra,104(sp)
    1314:	7406                	ld	s0,96(sp)
    1316:	64e6                	ld	s1,88(sp)
    1318:	6946                	ld	s2,80(sp)
    131a:	69a6                	ld	s3,72(sp)
    131c:	6a06                	ld	s4,64(sp)
    131e:	7ae2                	ld	s5,56(sp)
    1320:	7b42                	ld	s6,48(sp)
    1322:	7ba2                	ld	s7,40(sp)
    1324:	7c02                	ld	s8,32(sp)
    1326:	6ce2                	ld	s9,24(sp)
    1328:	6d42                	ld	s10,16(sp)
    132a:	6da2                	ld	s11,8(sp)
    132c:	6165                	addi	sp,sp,112
    132e:	8082                	ret

0000000000001330 <fprintf>:
    1330:	715d                	addi	sp,sp,-80
    1332:	ec06                	sd	ra,24(sp)
    1334:	f032                	sd	a2,32(sp)
    1336:	f436                	sd	a3,40(sp)
    1338:	f83a                	sd	a4,48(sp)
    133a:	fc3e                	sd	a5,56(sp)
    133c:	e0c2                	sd	a6,64(sp)
    133e:	e4c6                	sd	a7,72(sp)
    1340:	1010                	addi	a2,sp,32
    1342:	e432                	sd	a2,8(sp)
    1344:	00000097          	auipc	ra,0x0
    1348:	e1a080e7          	jalr	-486(ra) # 115e <vprintf>
    134c:	60e2                	ld	ra,24(sp)
    134e:	6161                	addi	sp,sp,80
    1350:	8082                	ret

0000000000001352 <printf>:
    1352:	711d                	addi	sp,sp,-96
    1354:	ec06                	sd	ra,24(sp)
    1356:	f42e                	sd	a1,40(sp)
    1358:	f832                	sd	a2,48(sp)
    135a:	fc36                	sd	a3,56(sp)
    135c:	e0ba                	sd	a4,64(sp)
    135e:	e4be                	sd	a5,72(sp)
    1360:	e8c2                	sd	a6,80(sp)
    1362:	ecc6                	sd	a7,88(sp)
    1364:	1030                	addi	a2,sp,40
    1366:	e432                	sd	a2,8(sp)
    1368:	85aa                	mv	a1,a0
    136a:	4505                	li	a0,1
    136c:	00000097          	auipc	ra,0x0
    1370:	df2080e7          	jalr	-526(ra) # 115e <vprintf>
    1374:	60e2                	ld	ra,24(sp)
    1376:	6125                	addi	sp,sp,96
    1378:	8082                	ret

000000000000137a <cksum>:
    137a:	cdb1                	beqz	a1,13d6 <cksum+0x5c>
    137c:	00b50833          	add	a6,a0,a1
    1380:	4781                	li	a5,0
    1382:	00002637          	lui	a2,0x2
    1386:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    138a:	0505                	addi	a0,a0,1
    138c:	0087969b          	slliw	a3,a5,0x8
    1390:	0187d71b          	srliw	a4,a5,0x18
    1394:	fff54783          	lbu	a5,-1(a0)
    1398:	8f3d                	xor	a4,a4,a5
    139a:	1702                	slli	a4,a4,0x20
    139c:	9301                	srli	a4,a4,0x20
    139e:	070a                	slli	a4,a4,0x2
    13a0:	9732                	add	a4,a4,a2
    13a2:	431c                	lw	a5,0(a4)
    13a4:	8fb5                	xor	a5,a5,a3
    13a6:	2781                	sext.w	a5,a5
    13a8:	fea811e3          	bne	a6,a0,138a <cksum+0x10>
    13ac:	00002637          	lui	a2,0x2
    13b0:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    13b4:	0ff5f693          	andi	a3,a1,255
    13b8:	81a1                	srli	a1,a1,0x8
    13ba:	0087951b          	slliw	a0,a5,0x8
    13be:	0187d71b          	srliw	a4,a5,0x18
    13c2:	8f35                	xor	a4,a4,a3
    13c4:	070a                	slli	a4,a4,0x2
    13c6:	9732                	add	a4,a4,a2
    13c8:	431c                	lw	a5,0(a4)
    13ca:	8fa9                	xor	a5,a5,a0
    13cc:	2781                	sext.w	a5,a5
    13ce:	f1fd                	bnez	a1,13b4 <cksum+0x3a>
    13d0:	fff7c513          	not	a0,a5
    13d4:	8082                	ret
    13d6:	4781                	li	a5,0
    13d8:	bfe5                	j	13d0 <cksum+0x56>

00000000000013da <swap_bytes>:
    13da:	ce19                	beqz	a2,13f8 <swap_bytes+0x1e>
    13dc:	87aa                	mv	a5,a0
    13de:	962a                	add	a2,a2,a0
    13e0:	0007c703          	lbu	a4,0(a5)
    13e4:	0005c683          	lbu	a3,0(a1)
    13e8:	00d78023          	sb	a3,0(a5)
    13ec:	00e58023          	sb	a4,0(a1)
    13f0:	0785                	addi	a5,a5,1
    13f2:	0585                	addi	a1,a1,1
    13f4:	fec796e3          	bne	a5,a2,13e0 <swap_bytes+0x6>
    13f8:	8082                	ret

00000000000013fa <random_init>:
    13fa:	7139                	addi	sp,sp,-64
    13fc:	fc06                	sd	ra,56(sp)
    13fe:	f822                	sd	s0,48(sp)
    1400:	f426                	sd	s1,40(sp)
    1402:	f04a                	sd	s2,32(sp)
    1404:	ec4e                	sd	s3,24(sp)
    1406:	e852                	sd	s4,16(sp)
    1408:	c62a                	sw	a0,12(sp)
    140a:	000037b7          	lui	a5,0x3
    140e:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1412:	eca5                	bnez	s1,148a <random_init+0x90>
    1414:	00003737          	lui	a4,0x3
    1418:	01070913          	addi	s2,a4,16 # 3010 <s>
    141c:	01070713          	addi	a4,a4,16
    1420:	87a6                	mv	a5,s1
    1422:	10000693          	li	a3,256
    1426:	00f70023          	sb	a5,0(a4)
    142a:	2785                	addiw	a5,a5,1
    142c:	0705                	addi	a4,a4,1
    142e:	fed79ce3          	bne	a5,a3,1426 <random_init+0x2c>
    1432:	4401                	li	s0,0
    1434:	000039b7          	lui	s3,0x3
    1438:	01098993          	addi	s3,s3,16 # 3010 <s>
    143c:	10000a13          	li	s4,256
    1440:	0034f793          	andi	a5,s1,3
    1444:	0818                	addi	a4,sp,16
    1446:	97ba                	add	a5,a5,a4
    1448:	ffc7c783          	lbu	a5,-4(a5)
    144c:	00094703          	lbu	a4,0(s2)
    1450:	9fb9                	addw	a5,a5,a4
    1452:	9c3d                	addw	s0,s0,a5
    1454:	0ff47413          	andi	s0,s0,255
    1458:	4605                	li	a2,1
    145a:	008985b3          	add	a1,s3,s0
    145e:	854a                	mv	a0,s2
    1460:	00000097          	auipc	ra,0x0
    1464:	f7a080e7          	jalr	-134(ra) # 13da <swap_bytes>
    1468:	2485                	addiw	s1,s1,1
    146a:	0905                	addi	s2,s2,1
    146c:	fd449ae3          	bne	s1,s4,1440 <random_init+0x46>
    1470:	000037b7          	lui	a5,0x3
    1474:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1478:	000037b7          	lui	a5,0x3
    147c:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1480:	000037b7          	lui	a5,0x3
    1484:	4705                	li	a4,1
    1486:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    148a:	70e2                	ld	ra,56(sp)
    148c:	7442                	ld	s0,48(sp)
    148e:	74a2                	ld	s1,40(sp)
    1490:	7902                	ld	s2,32(sp)
    1492:	69e2                	ld	s3,24(sp)
    1494:	6a42                	ld	s4,16(sp)
    1496:	6121                	addi	sp,sp,64
    1498:	8082                	ret

000000000000149a <random_bytes>:
    149a:	7139                	addi	sp,sp,-64
    149c:	fc06                	sd	ra,56(sp)
    149e:	f822                	sd	s0,48(sp)
    14a0:	f426                	sd	s1,40(sp)
    14a2:	f04a                	sd	s2,32(sp)
    14a4:	ec4e                	sd	s3,24(sp)
    14a6:	e852                	sd	s4,16(sp)
    14a8:	e456                	sd	s5,8(sp)
    14aa:	e05a                	sd	s6,0(sp)
    14ac:	892a                	mv	s2,a0
    14ae:	8aae                	mv	s5,a1
    14b0:	000037b7          	lui	a5,0x3
    14b4:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14b8:	c3c1                	beqz	a5,1538 <random_bytes+0x9e>
    14ba:	060a8563          	beqz	s5,1524 <random_bytes+0x8a>
    14be:	9aca                	add	s5,s5,s2
    14c0:	00003a37          	lui	s4,0x3
    14c4:	000034b7          	lui	s1,0x3
    14c8:	01048493          	addi	s1,s1,16 # 3010 <s>
    14cc:	000039b7          	lui	s3,0x3
    14d0:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14d4:	2505                	addiw	a0,a0,1
    14d6:	0ff57513          	andi	a0,a0,255
    14da:	00aa02a3          	sb	a0,5(s4)
    14de:	00a48b33          	add	s6,s1,a0
    14e2:	000b4403          	lbu	s0,0(s6)
    14e6:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14ea:	9c3d                	addw	s0,s0,a5
    14ec:	0ff47413          	andi	s0,s0,255
    14f0:	00898223          	sb	s0,4(s3)
    14f4:	4605                	li	a2,1
    14f6:	008485b3          	add	a1,s1,s0
    14fa:	855a                	mv	a0,s6
    14fc:	00000097          	auipc	ra,0x0
    1500:	ede080e7          	jalr	-290(ra) # 13da <swap_bytes>
    1504:	9426                	add	s0,s0,s1
    1506:	000b4783          	lbu	a5,0(s6)
    150a:	00044703          	lbu	a4,0(s0)
    150e:	9fb9                	addw	a5,a5,a4
    1510:	0ff7f793          	andi	a5,a5,255
    1514:	97a6                	add	a5,a5,s1
    1516:	0007c783          	lbu	a5,0(a5)
    151a:	00f90023          	sb	a5,0(s2)
    151e:	0905                	addi	s2,s2,1
    1520:	fb2a98e3          	bne	s5,s2,14d0 <random_bytes+0x36>
    1524:	70e2                	ld	ra,56(sp)
    1526:	7442                	ld	s0,48(sp)
    1528:	74a2                	ld	s1,40(sp)
    152a:	7902                	ld	s2,32(sp)
    152c:	69e2                	ld	s3,24(sp)
    152e:	6a42                	ld	s4,16(sp)
    1530:	6aa2                	ld	s5,8(sp)
    1532:	6b02                	ld	s6,0(sp)
    1534:	6121                	addi	sp,sp,64
    1536:	8082                	ret
    1538:	4501                	li	a0,0
    153a:	00000097          	auipc	ra,0x0
    153e:	ec0080e7          	jalr	-320(ra) # 13fa <random_init>
    1542:	bfa5                	j	14ba <random_bytes+0x20>

0000000000001544 <random_ulong>:
    1544:	1101                	addi	sp,sp,-32
    1546:	ec06                	sd	ra,24(sp)
    1548:	45a1                	li	a1,8
    154a:	0028                	addi	a0,sp,8
    154c:	00000097          	auipc	ra,0x0
    1550:	f4e080e7          	jalr	-178(ra) # 149a <random_bytes>
    1554:	6522                	ld	a0,8(sp)
    1556:	60e2                	ld	ra,24(sp)
    1558:	6105                	addi	sp,sp,32
    155a:	8082                	ret

000000000000155c <shuffle>:
    155c:	c9b9                	beqz	a1,15b2 <shuffle+0x56>
    155e:	7179                	addi	sp,sp,-48
    1560:	f406                	sd	ra,40(sp)
    1562:	f022                	sd	s0,32(sp)
    1564:	ec26                	sd	s1,24(sp)
    1566:	e84a                	sd	s2,16(sp)
    1568:	e44e                	sd	s3,8(sp)
    156a:	e052                	sd	s4,0(sp)
    156c:	8a2a                	mv	s4,a0
    156e:	89ae                	mv	s3,a1
    1570:	84b2                	mv	s1,a2
    1572:	892a                	mv	s2,a0
    1574:	4401                	li	s0,0
    1576:	00000097          	auipc	ra,0x0
    157a:	fce080e7          	jalr	-50(ra) # 1544 <random_ulong>
    157e:	408985b3          	sub	a1,s3,s0
    1582:	02b575b3          	remu	a1,a0,a1
    1586:	95a2                	add	a1,a1,s0
    1588:	029585b3          	mul	a1,a1,s1
    158c:	8626                	mv	a2,s1
    158e:	95d2                	add	a1,a1,s4
    1590:	854a                	mv	a0,s2
    1592:	00000097          	auipc	ra,0x0
    1596:	e48080e7          	jalr	-440(ra) # 13da <swap_bytes>
    159a:	0405                	addi	s0,s0,1
    159c:	9926                	add	s2,s2,s1
    159e:	fc899ce3          	bne	s3,s0,1576 <shuffle+0x1a>
    15a2:	70a2                	ld	ra,40(sp)
    15a4:	7402                	ld	s0,32(sp)
    15a6:	64e2                	ld	s1,24(sp)
    15a8:	6942                	ld	s2,16(sp)
    15aa:	69a2                	ld	s3,8(sp)
    15ac:	6a02                	ld	s4,0(sp)
    15ae:	6145                	addi	sp,sp,48
    15b0:	8082                	ret
    15b2:	8082                	ret

00000000000015b4 <arc4_init>:
    15b4:	100500a3          	sb	zero,257(a0)
    15b8:	10050023          	sb	zero,256(a0)
    15bc:	4781                	li	a5,0
    15be:	10000693          	li	a3,256
    15c2:	00f50733          	add	a4,a0,a5
    15c6:	00f70023          	sb	a5,0(a4)
    15ca:	0785                	addi	a5,a5,1
    15cc:	fed79be3          	bne	a5,a3,15c2 <arc4_init+0xe>
    15d0:	86aa                	mv	a3,a0
    15d2:	10050e13          	addi	t3,a0,256
    15d6:	4701                	li	a4,0
    15d8:	4781                	li	a5,0
    15da:	0006c883          	lbu	a7,0(a3)
    15de:	00f58833          	add	a6,a1,a5
    15e2:	00084803          	lbu	a6,0(a6)
    15e6:	00e8873b          	addw	a4,a7,a4
    15ea:	00e8073b          	addw	a4,a6,a4
    15ee:	0ff77713          	andi	a4,a4,255
    15f2:	00e50833          	add	a6,a0,a4
    15f6:	00084303          	lbu	t1,0(a6)
    15fa:	00668023          	sb	t1,0(a3)
    15fe:	01180023          	sb	a7,0(a6)
    1602:	0785                	addi	a5,a5,1
    1604:	00c7b833          	sltu	a6,a5,a2
    1608:	41000833          	neg	a6,a6
    160c:	0107f7b3          	and	a5,a5,a6
    1610:	0685                	addi	a3,a3,1
    1612:	fdc694e3          	bne	a3,t3,15da <arc4_init+0x26>
    1616:	8082                	ret

0000000000001618 <arc4_crypt>:
    1618:	10054e03          	lbu	t3,256(a0)
    161c:	10154803          	lbu	a6,257(a0)
    1620:	fff60e93          	addi	t4,a2,-1
    1624:	c225                	beqz	a2,1684 <arc4_crypt+0x6c>
    1626:	00c588b3          	add	a7,a1,a2
    162a:	86ae                	mv	a3,a1
    162c:	001e031b          	addiw	t1,t3,1
    1630:	40b3033b          	subw	t1,t1,a1
    1634:	00d3073b          	addw	a4,t1,a3
    1638:	0ff77713          	andi	a4,a4,255
    163c:	972a                	add	a4,a4,a0
    163e:	00074603          	lbu	a2,0(a4)
    1642:	0106083b          	addw	a6,a2,a6
    1646:	0ff87813          	andi	a6,a6,255
    164a:	010507b3          	add	a5,a0,a6
    164e:	0007c583          	lbu	a1,0(a5)
    1652:	00b70023          	sb	a1,0(a4)
    1656:	00c78023          	sb	a2,0(a5)
    165a:	0685                	addi	a3,a3,1
    165c:	00074783          	lbu	a5,0(a4)
    1660:	9fb1                	addw	a5,a5,a2
    1662:	0ff7f793          	andi	a5,a5,255
    1666:	97aa                	add	a5,a5,a0
    1668:	0007c783          	lbu	a5,0(a5)
    166c:	fff6c703          	lbu	a4,-1(a3)
    1670:	8fb9                	xor	a5,a5,a4
    1672:	fef68fa3          	sb	a5,-1(a3)
    1676:	fb169fe3          	bne	a3,a7,1634 <arc4_crypt+0x1c>
    167a:	2e85                	addiw	t4,t4,1
    167c:	01ce8e3b          	addw	t3,t4,t3
    1680:	0ffe7e13          	andi	t3,t3,255
    1684:	11c50023          	sb	t3,256(a0)
    1688:	110500a3          	sb	a6,257(a0)
    168c:	8082                	ret

000000000000168e <_main>:
    168e:	1141                	addi	sp,sp,-16
    1690:	e406                	sd	ra,8(sp)
    1692:	00000097          	auipc	ra,0x0
    1696:	96e080e7          	jalr	-1682(ra) # 1000 <main>
    169a:	4501                	li	a0,0
    169c:	00000097          	auipc	ra,0x0
    16a0:	578080e7          	jalr	1400(ra) # 1c14 <exit>
    16a4:	60a2                	ld	ra,8(sp)
    16a6:	0141                	addi	sp,sp,16
    16a8:	8082                	ret

00000000000016aa <strcmp>:
    16aa:	00054783          	lbu	a5,0(a0)
    16ae:	cb91                	beqz	a5,16c2 <strcmp+0x18>
    16b0:	0005c703          	lbu	a4,0(a1)
    16b4:	00f71763          	bne	a4,a5,16c2 <strcmp+0x18>
    16b8:	0505                	addi	a0,a0,1
    16ba:	0585                	addi	a1,a1,1
    16bc:	00054783          	lbu	a5,0(a0)
    16c0:	fbe5                	bnez	a5,16b0 <strcmp+0x6>
    16c2:	0005c503          	lbu	a0,0(a1)
    16c6:	40a7853b          	subw	a0,a5,a0
    16ca:	8082                	ret

00000000000016cc <strcpy>:
    16cc:	87aa                	mv	a5,a0
    16ce:	0585                	addi	a1,a1,1
    16d0:	0785                	addi	a5,a5,1
    16d2:	fff5c703          	lbu	a4,-1(a1)
    16d6:	fee78fa3          	sb	a4,-1(a5)
    16da:	fb75                	bnez	a4,16ce <strcpy+0x2>
    16dc:	8082                	ret

00000000000016de <strlen>:
    16de:	00054783          	lbu	a5,0(a0)
    16e2:	cf81                	beqz	a5,16fa <strlen+0x1c>
    16e4:	0505                	addi	a0,a0,1
    16e6:	87aa                	mv	a5,a0
    16e8:	4685                	li	a3,1
    16ea:	9e89                	subw	a3,a3,a0
    16ec:	00f6853b          	addw	a0,a3,a5
    16f0:	0785                	addi	a5,a5,1
    16f2:	fff7c703          	lbu	a4,-1(a5)
    16f6:	fb7d                	bnez	a4,16ec <strlen+0xe>
    16f8:	8082                	ret
    16fa:	4501                	li	a0,0
    16fc:	8082                	ret

00000000000016fe <memset>:
    16fe:	ca19                	beqz	a2,1714 <memset+0x16>
    1700:	87aa                	mv	a5,a0
    1702:	1602                	slli	a2,a2,0x20
    1704:	9201                	srli	a2,a2,0x20
    1706:	00a60733          	add	a4,a2,a0
    170a:	00b78023          	sb	a1,0(a5)
    170e:	0785                	addi	a5,a5,1
    1710:	fee79de3          	bne	a5,a4,170a <memset+0xc>
    1714:	8082                	ret

0000000000001716 <memcmp>:
    1716:	1101                	addi	sp,sp,-32
    1718:	ec06                	sd	ra,24(sp)
    171a:	e822                	sd	s0,16(sp)
    171c:	e426                	sd	s1,8(sp)
    171e:	e04a                	sd	s2,0(sp)
    1720:	892a                	mv	s2,a0
    1722:	842e                	mv	s0,a1
    1724:	84b2                	mv	s1,a2
    1726:	c915                	beqz	a0,175a <memcmp+0x44>
    1728:	c5ad                	beqz	a1,1792 <memcmp+0x7c>
    172a:	fff60713          	addi	a4,a2,-1
    172e:	c645                	beqz	a2,17d6 <memcmp+0xc0>
    1730:	87ca                	mv	a5,s2
    1732:	00190613          	addi	a2,s2,1
    1736:	963a                	add	a2,a2,a4
    1738:	0007c683          	lbu	a3,0(a5)
    173c:	00044703          	lbu	a4,0(s0)
    1740:	08e69463          	bne	a3,a4,17c8 <memcmp+0xb2>
    1744:	0785                	addi	a5,a5,1
    1746:	0405                	addi	s0,s0,1
    1748:	fec798e3          	bne	a5,a2,1738 <memcmp+0x22>
    174c:	4501                	li	a0,0
    174e:	60e2                	ld	ra,24(sp)
    1750:	6442                	ld	s0,16(sp)
    1752:	64a2                	ld	s1,8(sp)
    1754:	6902                	ld	s2,0(sp)
    1756:	6105                	addi	sp,sp,32
    1758:	8082                	ret
    175a:	4501                	li	a0,0
    175c:	da6d                	beqz	a2,174e <memcmp+0x38>
    175e:	03200693          	li	a3,50
    1762:	00002637          	lui	a2,0x2
    1766:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    176a:	000025b7          	lui	a1,0x2
    176e:	19858593          	addi	a1,a1,408 # 2198 <crctab+0x410>
    1772:	4509                	li	a0,2
    1774:	00000097          	auipc	ra,0x0
    1778:	bbc080e7          	jalr	-1092(ra) # 1330 <fprintf>
    177c:	650d                	lui	a0,0x3
    177e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1782:	00000097          	auipc	ra,0x0
    1786:	492080e7          	jalr	1170(ra) # 1c14 <exit>
    178a:	fff48713          	addi	a4,s1,-1
    178e:	f04d                	bnez	s0,1730 <memcmp+0x1a>
    1790:	a011                	j	1794 <memcmp+0x7e>
    1792:	c221                	beqz	a2,17d2 <memcmp+0xbc>
    1794:	03300693          	li	a3,51
    1798:	00002637          	lui	a2,0x2
    179c:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    17a0:	000025b7          	lui	a1,0x2
    17a4:	1e058593          	addi	a1,a1,480 # 21e0 <crctab+0x458>
    17a8:	4509                	li	a0,2
    17aa:	00000097          	auipc	ra,0x0
    17ae:	b86080e7          	jalr	-1146(ra) # 1330 <fprintf>
    17b2:	650d                	lui	a0,0x3
    17b4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17b8:	00000097          	auipc	ra,0x0
    17bc:	45c080e7          	jalr	1116(ra) # 1c14 <exit>
    17c0:	fff48713          	addi	a4,s1,-1
    17c4:	4401                	li	s0,0
    17c6:	b7ad                	j	1730 <memcmp+0x1a>
    17c8:	4505                	li	a0,1
    17ca:	f8d762e3          	bltu	a4,a3,174e <memcmp+0x38>
    17ce:	557d                	li	a0,-1
    17d0:	bfbd                	j	174e <memcmp+0x38>
    17d2:	4501                	li	a0,0
    17d4:	bfad                	j	174e <memcmp+0x38>
    17d6:	4501                	li	a0,0
    17d8:	bf9d                	j	174e <memcmp+0x38>

00000000000017da <memcpy>:
    17da:	1101                	addi	sp,sp,-32
    17dc:	ec06                	sd	ra,24(sp)
    17de:	e822                	sd	s0,16(sp)
    17e0:	e426                	sd	s1,8(sp)
    17e2:	e04a                	sd	s2,0(sp)
    17e4:	84aa                	mv	s1,a0
    17e6:	842e                	mv	s0,a1
    17e8:	8932                	mv	s2,a2
    17ea:	c51d                	beqz	a0,1818 <memcpy+0x3e>
    17ec:	c1ad                	beqz	a1,184e <memcpy+0x74>
    17ee:	fff60693          	addi	a3,a2,-1
    17f2:	ce01                	beqz	a2,180a <memcpy+0x30>
    17f4:	0685                	addi	a3,a3,1
    17f6:	96a6                	add	a3,a3,s1
    17f8:	87a6                	mv	a5,s1
    17fa:	0405                	addi	s0,s0,1
    17fc:	0785                	addi	a5,a5,1
    17fe:	fff44703          	lbu	a4,-1(s0)
    1802:	fee78fa3          	sb	a4,-1(a5)
    1806:	fed79ae3          	bne	a5,a3,17fa <memcpy+0x20>
    180a:	8526                	mv	a0,s1
    180c:	60e2                	ld	ra,24(sp)
    180e:	6442                	ld	s0,16(sp)
    1810:	64a2                	ld	s1,8(sp)
    1812:	6902                	ld	s2,0(sp)
    1814:	6105                	addi	sp,sp,32
    1816:	8082                	ret
    1818:	da6d                	beqz	a2,180a <memcpy+0x30>
    181a:	04000693          	li	a3,64
    181e:	00002637          	lui	a2,0x2
    1822:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    1826:	000025b7          	lui	a1,0x2
    182a:	22858593          	addi	a1,a1,552 # 2228 <crctab+0x4a0>
    182e:	4509                	li	a0,2
    1830:	00000097          	auipc	ra,0x0
    1834:	b00080e7          	jalr	-1280(ra) # 1330 <fprintf>
    1838:	650d                	lui	a0,0x3
    183a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    183e:	00000097          	auipc	ra,0x0
    1842:	3d6080e7          	jalr	982(ra) # 1c14 <exit>
    1846:	fff90693          	addi	a3,s2,-1
    184a:	f44d                	bnez	s0,17f4 <memcpy+0x1a>
    184c:	a011                	j	1850 <memcpy+0x76>
    184e:	de55                	beqz	a2,180a <memcpy+0x30>
    1850:	04100693          	li	a3,65
    1854:	00002637          	lui	a2,0x2
    1858:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    185c:	000025b7          	lui	a1,0x2
    1860:	27058593          	addi	a1,a1,624 # 2270 <crctab+0x4e8>
    1864:	4509                	li	a0,2
    1866:	00000097          	auipc	ra,0x0
    186a:	aca080e7          	jalr	-1334(ra) # 1330 <fprintf>
    186e:	650d                	lui	a0,0x3
    1870:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1874:	00000097          	auipc	ra,0x0
    1878:	3a0080e7          	jalr	928(ra) # 1c14 <exit>
    187c:	fff90693          	addi	a3,s2,-1
    1880:	4401                	li	s0,0
    1882:	bf8d                	j	17f4 <memcpy+0x1a>

0000000000001884 <itoa>:
    1884:	1101                	addi	sp,sp,-32
    1886:	ec06                	sd	ra,24(sp)
    1888:	e822                	sd	s0,16(sp)
    188a:	e426                	sd	s1,8(sp)
    188c:	842a                	mv	s0,a0
    188e:	41f5d71b          	sraiw	a4,a1,0x1f
    1892:	00e5c7b3          	xor	a5,a1,a4
    1896:	9f99                	subw	a5,a5,a4
    1898:	84aa                	mv	s1,a0
    189a:	862a                	mv	a2,a0
    189c:	4681                	li	a3,0
    189e:	4529                	li	a0,10
    18a0:	4825                	li	a6,9
    18a2:	88b6                	mv	a7,a3
    18a4:	2685                	addiw	a3,a3,1
    18a6:	02a7e73b          	remw	a4,a5,a0
    18aa:	0307071b          	addiw	a4,a4,48
    18ae:	00e60023          	sb	a4,0(a2)
    18b2:	873e                	mv	a4,a5
    18b4:	02a7c7bb          	divw	a5,a5,a0
    18b8:	0605                	addi	a2,a2,1
    18ba:	fee844e3          	blt	a6,a4,18a2 <itoa+0x1e>
    18be:	0405c863          	bltz	a1,190e <itoa+0x8a>
    18c2:	96a2                	add	a3,a3,s0
    18c4:	00068023          	sb	zero,0(a3)
    18c8:	8522                	mv	a0,s0
    18ca:	00000097          	auipc	ra,0x0
    18ce:	e14080e7          	jalr	-492(ra) # 16de <strlen>
    18d2:	fff5071b          	addiw	a4,a0,-1
    18d6:	02e05763          	blez	a4,1904 <itoa+0x80>
    18da:	9722                	add	a4,a4,s0
    18dc:	4681                	li	a3,0
    18de:	0004c783          	lbu	a5,0(s1)
    18e2:	00074603          	lbu	a2,0(a4)
    18e6:	00c48023          	sb	a2,0(s1)
    18ea:	00f70023          	sb	a5,0(a4)
    18ee:	0016879b          	addiw	a5,a3,1
    18f2:	0007869b          	sext.w	a3,a5
    18f6:	0485                	addi	s1,s1,1
    18f8:	177d                	addi	a4,a4,-1
    18fa:	fff7c793          	not	a5,a5
    18fe:	9fa9                	addw	a5,a5,a0
    1900:	fcf6cfe3          	blt	a3,a5,18de <itoa+0x5a>
    1904:	60e2                	ld	ra,24(sp)
    1906:	6442                	ld	s0,16(sp)
    1908:	64a2                	ld	s1,8(sp)
    190a:	6105                	addi	sp,sp,32
    190c:	8082                	ret
    190e:	96a2                	add	a3,a3,s0
    1910:	02d00793          	li	a5,45
    1914:	00f68023          	sb	a5,0(a3)
    1918:	0028869b          	addiw	a3,a7,2
    191c:	b75d                	j	18c2 <itoa+0x3e>

000000000000191e <atoi>:
    191e:	00054783          	lbu	a5,0(a0)
    1922:	02000713          	li	a4,32
    1926:	00e79763          	bne	a5,a4,1934 <atoi+0x16>
    192a:	0505                	addi	a0,a0,1
    192c:	00054783          	lbu	a5,0(a0)
    1930:	fee78de3          	beq	a5,a4,192a <atoi+0xc>
    1934:	02b00713          	li	a4,43
    1938:	04e78663          	beq	a5,a4,1984 <atoi+0x66>
    193c:	02d00713          	li	a4,45
    1940:	4805                	li	a6,1
    1942:	04e78463          	beq	a5,a4,198a <atoi+0x6c>
    1946:	00054683          	lbu	a3,0(a0)
    194a:	fd06879b          	addiw	a5,a3,-48
    194e:	0ff7f793          	andi	a5,a5,255
    1952:	4725                	li	a4,9
    1954:	02f76e63          	bltu	a4,a5,1990 <atoi+0x72>
    1958:	4601                	li	a2,0
    195a:	45a5                	li	a1,9
    195c:	0505                	addi	a0,a0,1
    195e:	0026179b          	slliw	a5,a2,0x2
    1962:	9fb1                	addw	a5,a5,a2
    1964:	0017979b          	slliw	a5,a5,0x1
    1968:	9fb5                	addw	a5,a5,a3
    196a:	fd07861b          	addiw	a2,a5,-48
    196e:	00054683          	lbu	a3,0(a0)
    1972:	fd06871b          	addiw	a4,a3,-48
    1976:	0ff77713          	andi	a4,a4,255
    197a:	fee5f1e3          	bgeu	a1,a4,195c <atoi+0x3e>
    197e:	02c8053b          	mulw	a0,a6,a2
    1982:	8082                	ret
    1984:	0505                	addi	a0,a0,1
    1986:	4805                	li	a6,1
    1988:	bf7d                	j	1946 <atoi+0x28>
    198a:	0505                	addi	a0,a0,1
    198c:	587d                	li	a6,-1
    198e:	bf65                	j	1946 <atoi+0x28>
    1990:	4601                	li	a2,0
    1992:	b7f5                	j	197e <atoi+0x60>

0000000000001994 <check_file_handle>:
    1994:	d8010113          	addi	sp,sp,-640
    1998:	26113c23          	sd	ra,632(sp)
    199c:	26813823          	sd	s0,624(sp)
    19a0:	26913423          	sd	s1,616(sp)
    19a4:	27213023          	sd	s2,608(sp)
    19a8:	25313c23          	sd	s3,600(sp)
    19ac:	25413823          	sd	s4,592(sp)
    19b0:	25513423          	sd	s5,584(sp)
    19b4:	25613023          	sd	s6,576(sp)
    19b8:	23713c23          	sd	s7,568(sp)
    19bc:	23813823          	sd	s8,560(sp)
    19c0:	23913423          	sd	s9,552(sp)
    19c4:	23a13023          	sd	s10,544(sp)
    19c8:	21b13c23          	sd	s11,536(sp)
    19cc:	8baa                	mv	s7,a0
    19ce:	8a2e                	mv	s4,a1
    19d0:	8c32                	mv	s8,a2
    19d2:	89b6                	mv	s3,a3
    19d4:	040c                	addi	a1,sp,512
    19d6:	00000097          	auipc	ra,0x0
    19da:	28e080e7          	jalr	654(ra) # 1c64 <fstat>
    19de:	20813603          	ld	a2,520(sp)
    19e2:	03361163          	bne	a2,s3,1a04 <check_file_handle+0x70>
    19e6:	06098763          	beqz	s3,1a54 <check_file_handle+0xc0>
    19ea:	4901                	li	s2,0
    19ec:	20000a93          	li	s5,512
    19f0:	00002cb7          	lui	s9,0x2
    19f4:	00002db7          	lui	s11,0x2
    19f8:	6b0d                	lui	s6,0x3
    19fa:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19fe:	00002d37          	lui	s10,0x2
    1a02:	aa39                	j	1b20 <check_file_handle+0x18c>
    1a04:	86ce                	mv	a3,s3
    1a06:	85d2                	mv	a1,s4
    1a08:	00002537          	lui	a0,0x2
    1a0c:	2b850513          	addi	a0,a0,696 # 22b8 <crctab+0x530>
    1a10:	00000097          	auipc	ra,0x0
    1a14:	942080e7          	jalr	-1726(ra) # 1352 <printf>
    1a18:	fc0999e3          	bnez	s3,19ea <check_file_handle+0x56>
    1a1c:	20813683          	ld	a3,520(sp)
    1a20:	03368a63          	beq	a3,s3,1a54 <check_file_handle+0xc0>
    1a24:	0a600813          	li	a6,166
    1a28:	000027b7          	lui	a5,0x2
    1a2c:	18878793          	addi	a5,a5,392 # 2188 <crctab+0x400>
    1a30:	874e                	mv	a4,s3
    1a32:	8652                	mv	a2,s4
    1a34:	000025b7          	lui	a1,0x2
    1a38:	38858593          	addi	a1,a1,904 # 2388 <crctab+0x600>
    1a3c:	4509                	li	a0,2
    1a3e:	00000097          	auipc	ra,0x0
    1a42:	8f2080e7          	jalr	-1806(ra) # 1330 <fprintf>
    1a46:	650d                	lui	a0,0x3
    1a48:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a4c:	00000097          	auipc	ra,0x0
    1a50:	1c8080e7          	jalr	456(ra) # 1c14 <exit>
    1a54:	85d2                	mv	a1,s4
    1a56:	00002537          	lui	a0,0x2
    1a5a:	3d050513          	addi	a0,a0,976 # 23d0 <crctab+0x648>
    1a5e:	00000097          	auipc	ra,0x0
    1a62:	8f4080e7          	jalr	-1804(ra) # 1352 <printf>
    1a66:	27813083          	ld	ra,632(sp)
    1a6a:	27013403          	ld	s0,624(sp)
    1a6e:	26813483          	ld	s1,616(sp)
    1a72:	26013903          	ld	s2,608(sp)
    1a76:	25813983          	ld	s3,600(sp)
    1a7a:	25013a03          	ld	s4,592(sp)
    1a7e:	24813a83          	ld	s5,584(sp)
    1a82:	24013b03          	ld	s6,576(sp)
    1a86:	23813b83          	ld	s7,568(sp)
    1a8a:	23013c03          	ld	s8,560(sp)
    1a8e:	22813c83          	ld	s9,552(sp)
    1a92:	22013d03          	ld	s10,544(sp)
    1a96:	21813d83          	ld	s11,536(sp)
    1a9a:	28010113          	addi	sp,sp,640
    1a9e:	8082                	ret
    1aa0:	09d00893          	li	a7,157
    1aa4:	188c8813          	addi	a6,s9,392 # 2188 <crctab+0x400>
    1aa8:	87aa                	mv	a5,a0
    1aaa:	8752                	mv	a4,s4
    1aac:	86ca                	mv	a3,s2
    1aae:	8622                	mv	a2,s0
    1ab0:	2e8d8593          	addi	a1,s11,744 # 22e8 <crctab+0x560>
    1ab4:	4509                	li	a0,2
    1ab6:	00000097          	auipc	ra,0x0
    1aba:	87a080e7          	jalr	-1926(ra) # 1330 <fprintf>
    1abe:	855a                	mv	a0,s6
    1ac0:	00000097          	auipc	ra,0x0
    1ac4:	154080e7          	jalr	340(ra) # 1c14 <exit>
    1ac8:	a89d                	j	1b3e <check_file_handle+0x1aa>
    1aca:	00160593          	addi	a1,a2,1
    1ace:	0285f163          	bgeu	a1,s0,1af0 <check_file_handle+0x15c>
    1ad2:	00c10733          	add	a4,sp,a2
    1ad6:	00b487b3          	add	a5,s1,a1
    1ada:	00174683          	lbu	a3,1(a4)
    1ade:	0007c783          	lbu	a5,0(a5)
    1ae2:	00f68763          	beq	a3,a5,1af0 <check_file_handle+0x15c>
    1ae6:	0585                	addi	a1,a1,1
    1ae8:	0705                	addi	a4,a4,1
    1aea:	feb416e3          	bne	s0,a1,1ad6 <check_file_handle+0x142>
    1aee:	85a2                	mv	a1,s0
    1af0:	08100813          	li	a6,129
    1af4:	188c8793          	addi	a5,s9,392
    1af8:	8752                	mv	a4,s4
    1afa:	012606b3          	add	a3,a2,s2
    1afe:	40c58633          	sub	a2,a1,a2
    1b02:	330d0593          	addi	a1,s10,816 # 2330 <crctab+0x5a8>
    1b06:	4509                	li	a0,2
    1b08:	00000097          	auipc	ra,0x0
    1b0c:	828080e7          	jalr	-2008(ra) # 1330 <fprintf>
    1b10:	855a                	mv	a0,s6
    1b12:	00000097          	auipc	ra,0x0
    1b16:	102080e7          	jalr	258(ra) # 1c14 <exit>
    1b1a:	9922                	add	s2,s2,s0
    1b1c:	f13970e3          	bgeu	s2,s3,1a1c <check_file_handle+0x88>
    1b20:	41298433          	sub	s0,s3,s2
    1b24:	008af363          	bgeu	s5,s0,1b2a <check_file_handle+0x196>
    1b28:	8456                	mv	s0,s5
    1b2a:	0004061b          	sext.w	a2,s0
    1b2e:	858a                	mv	a1,sp
    1b30:	855e                	mv	a0,s7
    1b32:	00000097          	auipc	ra,0x0
    1b36:	10a080e7          	jalr	266(ra) # 1c3c <read>
    1b3a:	f68513e3          	bne	a0,s0,1aa0 <check_file_handle+0x10c>
    1b3e:	012c04b3          	add	s1,s8,s2
    1b42:	8622                	mv	a2,s0
    1b44:	85a6                	mv	a1,s1
    1b46:	850a                	mv	a0,sp
    1b48:	00000097          	auipc	ra,0x0
    1b4c:	bce080e7          	jalr	-1074(ra) # 1716 <memcmp>
    1b50:	d569                	beqz	a0,1b1a <check_file_handle+0x186>
    1b52:	03298163          	beq	s3,s2,1b74 <check_file_handle+0x1e0>
    1b56:	870a                	mv	a4,sp
    1b58:	4601                	li	a2,0
    1b5a:	00c487b3          	add	a5,s1,a2
    1b5e:	00074683          	lbu	a3,0(a4)
    1b62:	0007c783          	lbu	a5,0(a5)
    1b66:	f6f692e3          	bne	a3,a5,1aca <check_file_handle+0x136>
    1b6a:	0605                	addi	a2,a2,1
    1b6c:	0705                	addi	a4,a4,1
    1b6e:	fe8666e3          	bltu	a2,s0,1b5a <check_file_handle+0x1c6>
    1b72:	bfa1                	j	1aca <check_file_handle+0x136>
    1b74:	4601                	li	a2,0
    1b76:	4585                	li	a1,1
    1b78:	bfa5                	j	1af0 <check_file_handle+0x15c>

0000000000001b7a <check_file>:
    1b7a:	7179                	addi	sp,sp,-48
    1b7c:	f406                	sd	ra,40(sp)
    1b7e:	f022                	sd	s0,32(sp)
    1b80:	ec26                	sd	s1,24(sp)
    1b82:	e84a                	sd	s2,16(sp)
    1b84:	e44e                	sd	s3,8(sp)
    1b86:	84aa                	mv	s1,a0
    1b88:	892e                	mv	s2,a1
    1b8a:	89b2                	mv	s3,a2
    1b8c:	4581                	li	a1,0
    1b8e:	00000097          	auipc	ra,0x0
    1b92:	0a6080e7          	jalr	166(ra) # 1c34 <open>
    1b96:	842a                	mv	s0,a0
    1b98:	4789                	li	a5,2
    1b9a:	02a7df63          	bge	a5,a0,1bd8 <check_file+0x5e>
    1b9e:	86ce                	mv	a3,s3
    1ba0:	864a                	mv	a2,s2
    1ba2:	85a6                	mv	a1,s1
    1ba4:	8522                	mv	a0,s0
    1ba6:	00000097          	auipc	ra,0x0
    1baa:	dee080e7          	jalr	-530(ra) # 1994 <check_file_handle>
    1bae:	85a6                	mv	a1,s1
    1bb0:	00002537          	lui	a0,0x2
    1bb4:	45850513          	addi	a0,a0,1112 # 2458 <crctab+0x6d0>
    1bb8:	fffff097          	auipc	ra,0xfffff
    1bbc:	79a080e7          	jalr	1946(ra) # 1352 <printf>
    1bc0:	8522                	mv	a0,s0
    1bc2:	00000097          	auipc	ra,0x0
    1bc6:	09a080e7          	jalr	154(ra) # 1c5c <close>
    1bca:	70a2                	ld	ra,40(sp)
    1bcc:	7402                	ld	s0,32(sp)
    1bce:	64e2                	ld	s1,24(sp)
    1bd0:	6942                	ld	s2,16(sp)
    1bd2:	69a2                	ld	s3,8(sp)
    1bd4:	6145                	addi	sp,sp,48
    1bd6:	8082                	ret
    1bd8:	0ae00713          	li	a4,174
    1bdc:	000026b7          	lui	a3,0x2
    1be0:	18868693          	addi	a3,a3,392 # 2188 <crctab+0x400>
    1be4:	8626                	mv	a2,s1
    1be6:	000025b7          	lui	a1,0x2
    1bea:	3f058593          	addi	a1,a1,1008 # 23f0 <crctab+0x668>
    1bee:	4509                	li	a0,2
    1bf0:	fffff097          	auipc	ra,0xfffff
    1bf4:	740080e7          	jalr	1856(ra) # 1330 <fprintf>
    1bf8:	650d                	lui	a0,0x3
    1bfa:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bfe:	00000097          	auipc	ra,0x0
    1c02:	016080e7          	jalr	22(ra) # 1c14 <exit>
    1c06:	bf61                	j	1b9e <check_file+0x24>

0000000000001c08 <r_sp>:
    1c08:	850a                	mv	a0,sp
    1c0a:	8082                	ret

0000000000001c0c <halt>:
    1c0c:	4885                	li	a7,1
    1c0e:	00000073          	ecall
    1c12:	8082                	ret

0000000000001c14 <exit>:
    1c14:	4889                	li	a7,2
    1c16:	00000073          	ecall
    1c1a:	8082                	ret

0000000000001c1c <exec>:
    1c1c:	488d                	li	a7,3
    1c1e:	00000073          	ecall
    1c22:	8082                	ret

0000000000001c24 <wait>:
    1c24:	4891                	li	a7,4
    1c26:	00000073          	ecall
    1c2a:	8082                	ret

0000000000001c2c <remove>:
    1c2c:	4895                	li	a7,5
    1c2e:	00000073          	ecall
    1c32:	8082                	ret

0000000000001c34 <open>:
    1c34:	4899                	li	a7,6
    1c36:	00000073          	ecall
    1c3a:	8082                	ret

0000000000001c3c <read>:
    1c3c:	489d                	li	a7,7
    1c3e:	00000073          	ecall
    1c42:	8082                	ret

0000000000001c44 <write>:
    1c44:	48a1                	li	a7,8
    1c46:	00000073          	ecall
    1c4a:	8082                	ret

0000000000001c4c <seek>:
    1c4c:	48a5                	li	a7,9
    1c4e:	00000073          	ecall
    1c52:	8082                	ret

0000000000001c54 <tell>:
    1c54:	48a9                	li	a7,10
    1c56:	00000073          	ecall
    1c5a:	8082                	ret

0000000000001c5c <close>:
    1c5c:	48ad                	li	a7,11
    1c5e:	00000073          	ecall
    1c62:	8082                	ret

0000000000001c64 <fstat>:
    1c64:	48b1                	li	a7,12
    1c66:	00000073          	ecall
    1c6a:	8082                	ret

0000000000001c6c <mmap>:
    1c6c:	48b5                	li	a7,13
    1c6e:	00000073          	ecall
    1c72:	8082                	ret

0000000000001c74 <munmap>:
    1c74:	48b9                	li	a7,14
    1c76:	00000073          	ecall
    1c7a:	8082                	ret

0000000000001c7c <chdir>:
    1c7c:	48bd                	li	a7,15
    1c7e:	00000073          	ecall
    1c82:	8082                	ret

0000000000001c84 <mkdir>:
    1c84:	48c1                	li	a7,16
    1c86:	00000073          	ecall
    1c8a:	8082                	ret
