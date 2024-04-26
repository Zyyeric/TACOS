
build/user/userprogs/child-simple:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	842e                	mv	s0,a1
    1008:	050e                	slli	a0,a0,0x3
    100a:	952e                	add	a0,a0,a1
    100c:	611c                	ld	a5,0(a0)
    100e:	c795                	beqz	a5,103a <main+0x3a>
    1010:	46a1                	li	a3,8
    1012:	00002637          	lui	a2,0x2
    1016:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x14>
    101a:	000025b7          	lui	a1,0x2
    101e:	cb058593          	addi	a1,a1,-848 # 1cb0 <mkdir+0x34>
    1022:	4509                	li	a0,2
    1024:	00000097          	auipc	ra,0x0
    1028:	304080e7          	jalr	772(ra) # 1328 <fprintf>
    102c:	650d                	lui	a0,0x3
    102e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1032:	00001097          	auipc	ra,0x1
    1036:	bda080e7          	jalr	-1062(ra) # 1c0c <exit>
    103a:	600c                	ld	a1,0(s0)
    103c:	00002537          	lui	a0,0x2
    1040:	cf050513          	addi	a0,a0,-784 # 1cf0 <mkdir+0x74>
    1044:	00000097          	auipc	ra,0x0
    1048:	65e080e7          	jalr	1630(ra) # 16a2 <strcmp>
    104c:	e11d                	bnez	a0,1072 <main+0x72>
    104e:	00002537          	lui	a0,0x2
    1052:	d5050513          	addi	a0,a0,-688 # 1d50 <mkdir+0xd4>
    1056:	00000097          	auipc	ra,0x0
    105a:	2f4080e7          	jalr	756(ra) # 134a <printf>
    105e:	05100513          	li	a0,81
    1062:	00001097          	auipc	ra,0x1
    1066:	baa080e7          	jalr	-1110(ra) # 1c0c <exit>
    106a:	60a2                	ld	ra,8(sp)
    106c:	6402                	ld	s0,0(sp)
    106e:	0141                	addi	sp,sp,16
    1070:	8082                	ret
    1072:	46a5                	li	a3,9
    1074:	00002637          	lui	a2,0x2
    1078:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x14>
    107c:	000025b7          	lui	a1,0x2
    1080:	d0058593          	addi	a1,a1,-768 # 1d00 <mkdir+0x84>
    1084:	4509                	li	a0,2
    1086:	00000097          	auipc	ra,0x0
    108a:	2a2080e7          	jalr	674(ra) # 1328 <fprintf>
    108e:	650d                	lui	a0,0x3
    1090:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1094:	00001097          	auipc	ra,0x1
    1098:	b78080e7          	jalr	-1160(ra) # 1c0c <exit>
    109c:	bf4d                	j	104e <main+0x4e>

000000000000109e <putc>:
    109e:	1101                	addi	sp,sp,-32
    10a0:	ec06                	sd	ra,24(sp)
    10a2:	00b107a3          	sb	a1,15(sp)
    10a6:	4605                	li	a2,1
    10a8:	00f10593          	addi	a1,sp,15
    10ac:	00001097          	auipc	ra,0x1
    10b0:	b90080e7          	jalr	-1136(ra) # 1c3c <write>
    10b4:	60e2                	ld	ra,24(sp)
    10b6:	6105                	addi	sp,sp,32
    10b8:	8082                	ret

00000000000010ba <printint>:
    10ba:	7179                	addi	sp,sp,-48
    10bc:	f406                	sd	ra,40(sp)
    10be:	f022                	sd	s0,32(sp)
    10c0:	ec26                	sd	s1,24(sp)
    10c2:	e84a                	sd	s2,16(sp)
    10c4:	84aa                	mv	s1,a0
    10c6:	c299                	beqz	a3,10cc <printint+0x12>
    10c8:	0805c363          	bltz	a1,114e <printint+0x94>
    10cc:	2581                	sext.w	a1,a1
    10ce:	4881                	li	a7,0
    10d0:	868a                	mv	a3,sp
    10d2:	4701                	li	a4,0
    10d4:	2601                	sext.w	a2,a2
    10d6:	00002537          	lui	a0,0x2
    10da:	d6050513          	addi	a0,a0,-672 # 1d60 <digits>
    10de:	883a                	mv	a6,a4
    10e0:	2705                	addiw	a4,a4,1
    10e2:	02c5f7bb          	remuw	a5,a1,a2
    10e6:	1782                	slli	a5,a5,0x20
    10e8:	9381                	srli	a5,a5,0x20
    10ea:	97aa                	add	a5,a5,a0
    10ec:	0007c783          	lbu	a5,0(a5)
    10f0:	00f68023          	sb	a5,0(a3)
    10f4:	0005879b          	sext.w	a5,a1
    10f8:	02c5d5bb          	divuw	a1,a1,a2
    10fc:	0685                	addi	a3,a3,1
    10fe:	fec7f0e3          	bgeu	a5,a2,10de <printint+0x24>
    1102:	00088a63          	beqz	a7,1116 <printint+0x5c>
    1106:	081c                	addi	a5,sp,16
    1108:	973e                	add	a4,a4,a5
    110a:	02d00793          	li	a5,45
    110e:	fef70823          	sb	a5,-16(a4)
    1112:	0028071b          	addiw	a4,a6,2
    1116:	02e05663          	blez	a4,1142 <printint+0x88>
    111a:	00e10433          	add	s0,sp,a4
    111e:	fff10913          	addi	s2,sp,-1
    1122:	993a                	add	s2,s2,a4
    1124:	377d                	addiw	a4,a4,-1
    1126:	1702                	slli	a4,a4,0x20
    1128:	9301                	srli	a4,a4,0x20
    112a:	40e90933          	sub	s2,s2,a4
    112e:	fff44583          	lbu	a1,-1(s0)
    1132:	8526                	mv	a0,s1
    1134:	00000097          	auipc	ra,0x0
    1138:	f6a080e7          	jalr	-150(ra) # 109e <putc>
    113c:	147d                	addi	s0,s0,-1
    113e:	ff2418e3          	bne	s0,s2,112e <printint+0x74>
    1142:	70a2                	ld	ra,40(sp)
    1144:	7402                	ld	s0,32(sp)
    1146:	64e2                	ld	s1,24(sp)
    1148:	6942                	ld	s2,16(sp)
    114a:	6145                	addi	sp,sp,48
    114c:	8082                	ret
    114e:	40b005bb          	negw	a1,a1
    1152:	4885                	li	a7,1
    1154:	bfb5                	j	10d0 <printint+0x16>

0000000000001156 <vprintf>:
    1156:	7159                	addi	sp,sp,-112
    1158:	f486                	sd	ra,104(sp)
    115a:	f0a2                	sd	s0,96(sp)
    115c:	eca6                	sd	s1,88(sp)
    115e:	e8ca                	sd	s2,80(sp)
    1160:	e4ce                	sd	s3,72(sp)
    1162:	e0d2                	sd	s4,64(sp)
    1164:	fc56                	sd	s5,56(sp)
    1166:	f85a                	sd	s6,48(sp)
    1168:	f45e                	sd	s7,40(sp)
    116a:	f062                	sd	s8,32(sp)
    116c:	ec66                	sd	s9,24(sp)
    116e:	e86a                	sd	s10,16(sp)
    1170:	e46e                	sd	s11,8(sp)
    1172:	0005c483          	lbu	s1,0(a1)
    1176:	18048a63          	beqz	s1,130a <vprintf+0x1b4>
    117a:	8a2a                	mv	s4,a0
    117c:	8ab2                	mv	s5,a2
    117e:	00158413          	addi	s0,a1,1
    1182:	4901                	li	s2,0
    1184:	02500993          	li	s3,37
    1188:	06400b93          	li	s7,100
    118c:	06c00c13          	li	s8,108
    1190:	07800c93          	li	s9,120
    1194:	07000d13          	li	s10,112
    1198:	00002db7          	lui	s11,0x2
    119c:	00002b37          	lui	s6,0x2
    11a0:	d60b0b13          	addi	s6,s6,-672 # 1d60 <digits>
    11a4:	a839                	j	11c2 <vprintf+0x6c>
    11a6:	85a6                	mv	a1,s1
    11a8:	8552                	mv	a0,s4
    11aa:	00000097          	auipc	ra,0x0
    11ae:	ef4080e7          	jalr	-268(ra) # 109e <putc>
    11b2:	a019                	j	11b8 <vprintf+0x62>
    11b4:	01390f63          	beq	s2,s3,11d2 <vprintf+0x7c>
    11b8:	0405                	addi	s0,s0,1
    11ba:	fff44483          	lbu	s1,-1(s0)
    11be:	14048663          	beqz	s1,130a <vprintf+0x1b4>
    11c2:	0004879b          	sext.w	a5,s1
    11c6:	fe0917e3          	bnez	s2,11b4 <vprintf+0x5e>
    11ca:	fd379ee3          	bne	a5,s3,11a6 <vprintf+0x50>
    11ce:	893e                	mv	s2,a5
    11d0:	b7e5                	j	11b8 <vprintf+0x62>
    11d2:	05778063          	beq	a5,s7,1212 <vprintf+0xbc>
    11d6:	05878c63          	beq	a5,s8,122e <vprintf+0xd8>
    11da:	07978863          	beq	a5,s9,124a <vprintf+0xf4>
    11de:	09a78463          	beq	a5,s10,1266 <vprintf+0x110>
    11e2:	07300713          	li	a4,115
    11e6:	0ce78263          	beq	a5,a4,12aa <vprintf+0x154>
    11ea:	06300713          	li	a4,99
    11ee:	0ee78763          	beq	a5,a4,12dc <vprintf+0x186>
    11f2:	11378163          	beq	a5,s3,12f4 <vprintf+0x19e>
    11f6:	85ce                	mv	a1,s3
    11f8:	8552                	mv	a0,s4
    11fa:	00000097          	auipc	ra,0x0
    11fe:	ea4080e7          	jalr	-348(ra) # 109e <putc>
    1202:	85a6                	mv	a1,s1
    1204:	8552                	mv	a0,s4
    1206:	00000097          	auipc	ra,0x0
    120a:	e98080e7          	jalr	-360(ra) # 109e <putc>
    120e:	4901                	li	s2,0
    1210:	b765                	j	11b8 <vprintf+0x62>
    1212:	008a8493          	addi	s1,s5,8
    1216:	4685                	li	a3,1
    1218:	4629                	li	a2,10
    121a:	000aa583          	lw	a1,0(s5)
    121e:	8552                	mv	a0,s4
    1220:	00000097          	auipc	ra,0x0
    1224:	e9a080e7          	jalr	-358(ra) # 10ba <printint>
    1228:	8aa6                	mv	s5,s1
    122a:	4901                	li	s2,0
    122c:	b771                	j	11b8 <vprintf+0x62>
    122e:	008a8493          	addi	s1,s5,8
    1232:	4681                	li	a3,0
    1234:	4629                	li	a2,10
    1236:	000aa583          	lw	a1,0(s5)
    123a:	8552                	mv	a0,s4
    123c:	00000097          	auipc	ra,0x0
    1240:	e7e080e7          	jalr	-386(ra) # 10ba <printint>
    1244:	8aa6                	mv	s5,s1
    1246:	4901                	li	s2,0
    1248:	bf85                	j	11b8 <vprintf+0x62>
    124a:	008a8493          	addi	s1,s5,8
    124e:	4681                	li	a3,0
    1250:	4641                	li	a2,16
    1252:	000aa583          	lw	a1,0(s5)
    1256:	8552                	mv	a0,s4
    1258:	00000097          	auipc	ra,0x0
    125c:	e62080e7          	jalr	-414(ra) # 10ba <printint>
    1260:	8aa6                	mv	s5,s1
    1262:	4901                	li	s2,0
    1264:	bf91                	j	11b8 <vprintf+0x62>
    1266:	008a8913          	addi	s2,s5,8
    126a:	000aba83          	ld	s5,0(s5)
    126e:	03000593          	li	a1,48
    1272:	8552                	mv	a0,s4
    1274:	00000097          	auipc	ra,0x0
    1278:	e2a080e7          	jalr	-470(ra) # 109e <putc>
    127c:	85e6                	mv	a1,s9
    127e:	8552                	mv	a0,s4
    1280:	00000097          	auipc	ra,0x0
    1284:	e1e080e7          	jalr	-482(ra) # 109e <putc>
    1288:	44c1                	li	s1,16
    128a:	03cad793          	srli	a5,s5,0x3c
    128e:	97da                	add	a5,a5,s6
    1290:	0007c583          	lbu	a1,0(a5)
    1294:	8552                	mv	a0,s4
    1296:	00000097          	auipc	ra,0x0
    129a:	e08080e7          	jalr	-504(ra) # 109e <putc>
    129e:	0a92                	slli	s5,s5,0x4
    12a0:	34fd                	addiw	s1,s1,-1
    12a2:	f4e5                	bnez	s1,128a <vprintf+0x134>
    12a4:	8aca                	mv	s5,s2
    12a6:	4901                	li	s2,0
    12a8:	bf01                	j	11b8 <vprintf+0x62>
    12aa:	008a8913          	addi	s2,s5,8
    12ae:	000ab483          	ld	s1,0(s5)
    12b2:	c085                	beqz	s1,12d2 <vprintf+0x17c>
    12b4:	0004c583          	lbu	a1,0(s1)
    12b8:	c5b1                	beqz	a1,1304 <vprintf+0x1ae>
    12ba:	8552                	mv	a0,s4
    12bc:	00000097          	auipc	ra,0x0
    12c0:	de2080e7          	jalr	-542(ra) # 109e <putc>
    12c4:	0485                	addi	s1,s1,1
    12c6:	0004c583          	lbu	a1,0(s1)
    12ca:	f9e5                	bnez	a1,12ba <vprintf+0x164>
    12cc:	8aca                	mv	s5,s2
    12ce:	4901                	li	s2,0
    12d0:	b5e5                	j	11b8 <vprintf+0x62>
    12d2:	d58d8493          	addi	s1,s11,-680 # 1d58 <mkdir+0xdc>
    12d6:	02800593          	li	a1,40
    12da:	b7c5                	j	12ba <vprintf+0x164>
    12dc:	008a8493          	addi	s1,s5,8
    12e0:	000ac583          	lbu	a1,0(s5)
    12e4:	8552                	mv	a0,s4
    12e6:	00000097          	auipc	ra,0x0
    12ea:	db8080e7          	jalr	-584(ra) # 109e <putc>
    12ee:	8aa6                	mv	s5,s1
    12f0:	4901                	li	s2,0
    12f2:	b5d9                	j	11b8 <vprintf+0x62>
    12f4:	85ce                	mv	a1,s3
    12f6:	8552                	mv	a0,s4
    12f8:	00000097          	auipc	ra,0x0
    12fc:	da6080e7          	jalr	-602(ra) # 109e <putc>
    1300:	4901                	li	s2,0
    1302:	bd5d                	j	11b8 <vprintf+0x62>
    1304:	8aca                	mv	s5,s2
    1306:	4901                	li	s2,0
    1308:	bd45                	j	11b8 <vprintf+0x62>
    130a:	70a6                	ld	ra,104(sp)
    130c:	7406                	ld	s0,96(sp)
    130e:	64e6                	ld	s1,88(sp)
    1310:	6946                	ld	s2,80(sp)
    1312:	69a6                	ld	s3,72(sp)
    1314:	6a06                	ld	s4,64(sp)
    1316:	7ae2                	ld	s5,56(sp)
    1318:	7b42                	ld	s6,48(sp)
    131a:	7ba2                	ld	s7,40(sp)
    131c:	7c02                	ld	s8,32(sp)
    131e:	6ce2                	ld	s9,24(sp)
    1320:	6d42                	ld	s10,16(sp)
    1322:	6da2                	ld	s11,8(sp)
    1324:	6165                	addi	sp,sp,112
    1326:	8082                	ret

0000000000001328 <fprintf>:
    1328:	715d                	addi	sp,sp,-80
    132a:	ec06                	sd	ra,24(sp)
    132c:	f032                	sd	a2,32(sp)
    132e:	f436                	sd	a3,40(sp)
    1330:	f83a                	sd	a4,48(sp)
    1332:	fc3e                	sd	a5,56(sp)
    1334:	e0c2                	sd	a6,64(sp)
    1336:	e4c6                	sd	a7,72(sp)
    1338:	1010                	addi	a2,sp,32
    133a:	e432                	sd	a2,8(sp)
    133c:	00000097          	auipc	ra,0x0
    1340:	e1a080e7          	jalr	-486(ra) # 1156 <vprintf>
    1344:	60e2                	ld	ra,24(sp)
    1346:	6161                	addi	sp,sp,80
    1348:	8082                	ret

000000000000134a <printf>:
    134a:	711d                	addi	sp,sp,-96
    134c:	ec06                	sd	ra,24(sp)
    134e:	f42e                	sd	a1,40(sp)
    1350:	f832                	sd	a2,48(sp)
    1352:	fc36                	sd	a3,56(sp)
    1354:	e0ba                	sd	a4,64(sp)
    1356:	e4be                	sd	a5,72(sp)
    1358:	e8c2                	sd	a6,80(sp)
    135a:	ecc6                	sd	a7,88(sp)
    135c:	1030                	addi	a2,sp,40
    135e:	e432                	sd	a2,8(sp)
    1360:	85aa                	mv	a1,a0
    1362:	4505                	li	a0,1
    1364:	00000097          	auipc	ra,0x0
    1368:	df2080e7          	jalr	-526(ra) # 1156 <vprintf>
    136c:	60e2                	ld	ra,24(sp)
    136e:	6125                	addi	sp,sp,96
    1370:	8082                	ret

0000000000001372 <cksum>:
    1372:	cdb1                	beqz	a1,13ce <cksum+0x5c>
    1374:	00b50833          	add	a6,a0,a1
    1378:	4781                	li	a5,0
    137a:	00002637          	lui	a2,0x2
    137e:	d7860613          	addi	a2,a2,-648 # 1d78 <crctab>
    1382:	0505                	addi	a0,a0,1
    1384:	0087969b          	slliw	a3,a5,0x8
    1388:	0187d71b          	srliw	a4,a5,0x18
    138c:	fff54783          	lbu	a5,-1(a0)
    1390:	8f3d                	xor	a4,a4,a5
    1392:	1702                	slli	a4,a4,0x20
    1394:	9301                	srli	a4,a4,0x20
    1396:	070a                	slli	a4,a4,0x2
    1398:	9732                	add	a4,a4,a2
    139a:	431c                	lw	a5,0(a4)
    139c:	8fb5                	xor	a5,a5,a3
    139e:	2781                	sext.w	a5,a5
    13a0:	fea811e3          	bne	a6,a0,1382 <cksum+0x10>
    13a4:	00002637          	lui	a2,0x2
    13a8:	d7860613          	addi	a2,a2,-648 # 1d78 <crctab>
    13ac:	0ff5f693          	andi	a3,a1,255
    13b0:	81a1                	srli	a1,a1,0x8
    13b2:	0087951b          	slliw	a0,a5,0x8
    13b6:	0187d71b          	srliw	a4,a5,0x18
    13ba:	8f35                	xor	a4,a4,a3
    13bc:	070a                	slli	a4,a4,0x2
    13be:	9732                	add	a4,a4,a2
    13c0:	431c                	lw	a5,0(a4)
    13c2:	8fa9                	xor	a5,a5,a0
    13c4:	2781                	sext.w	a5,a5
    13c6:	f1fd                	bnez	a1,13ac <cksum+0x3a>
    13c8:	fff7c513          	not	a0,a5
    13cc:	8082                	ret
    13ce:	4781                	li	a5,0
    13d0:	bfe5                	j	13c8 <cksum+0x56>

00000000000013d2 <swap_bytes>:
    13d2:	ce19                	beqz	a2,13f0 <swap_bytes+0x1e>
    13d4:	87aa                	mv	a5,a0
    13d6:	962a                	add	a2,a2,a0
    13d8:	0007c703          	lbu	a4,0(a5)
    13dc:	0005c683          	lbu	a3,0(a1)
    13e0:	00d78023          	sb	a3,0(a5)
    13e4:	00e58023          	sb	a4,0(a1)
    13e8:	0785                	addi	a5,a5,1
    13ea:	0585                	addi	a1,a1,1
    13ec:	fec796e3          	bne	a5,a2,13d8 <swap_bytes+0x6>
    13f0:	8082                	ret

00000000000013f2 <random_init>:
    13f2:	7139                	addi	sp,sp,-64
    13f4:	fc06                	sd	ra,56(sp)
    13f6:	f822                	sd	s0,48(sp)
    13f8:	f426                	sd	s1,40(sp)
    13fa:	f04a                	sd	s2,32(sp)
    13fc:	ec4e                	sd	s3,24(sp)
    13fe:	e852                	sd	s4,16(sp)
    1400:	c62a                	sw	a0,12(sp)
    1402:	000037b7          	lui	a5,0x3
    1406:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    140a:	eca5                	bnez	s1,1482 <random_init+0x90>
    140c:	00003737          	lui	a4,0x3
    1410:	01070913          	addi	s2,a4,16 # 3010 <s>
    1414:	01070713          	addi	a4,a4,16
    1418:	87a6                	mv	a5,s1
    141a:	10000693          	li	a3,256
    141e:	00f70023          	sb	a5,0(a4)
    1422:	2785                	addiw	a5,a5,1
    1424:	0705                	addi	a4,a4,1
    1426:	fed79ce3          	bne	a5,a3,141e <random_init+0x2c>
    142a:	4401                	li	s0,0
    142c:	000039b7          	lui	s3,0x3
    1430:	01098993          	addi	s3,s3,16 # 3010 <s>
    1434:	10000a13          	li	s4,256
    1438:	0034f793          	andi	a5,s1,3
    143c:	0818                	addi	a4,sp,16
    143e:	97ba                	add	a5,a5,a4
    1440:	ffc7c783          	lbu	a5,-4(a5)
    1444:	00094703          	lbu	a4,0(s2)
    1448:	9fb9                	addw	a5,a5,a4
    144a:	9c3d                	addw	s0,s0,a5
    144c:	0ff47413          	andi	s0,s0,255
    1450:	4605                	li	a2,1
    1452:	008985b3          	add	a1,s3,s0
    1456:	854a                	mv	a0,s2
    1458:	00000097          	auipc	ra,0x0
    145c:	f7a080e7          	jalr	-134(ra) # 13d2 <swap_bytes>
    1460:	2485                	addiw	s1,s1,1
    1462:	0905                	addi	s2,s2,1
    1464:	fd449ae3          	bne	s1,s4,1438 <random_init+0x46>
    1468:	000037b7          	lui	a5,0x3
    146c:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1470:	000037b7          	lui	a5,0x3
    1474:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1478:	000037b7          	lui	a5,0x3
    147c:	4705                	li	a4,1
    147e:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1482:	70e2                	ld	ra,56(sp)
    1484:	7442                	ld	s0,48(sp)
    1486:	74a2                	ld	s1,40(sp)
    1488:	7902                	ld	s2,32(sp)
    148a:	69e2                	ld	s3,24(sp)
    148c:	6a42                	ld	s4,16(sp)
    148e:	6121                	addi	sp,sp,64
    1490:	8082                	ret

0000000000001492 <random_bytes>:
    1492:	7139                	addi	sp,sp,-64
    1494:	fc06                	sd	ra,56(sp)
    1496:	f822                	sd	s0,48(sp)
    1498:	f426                	sd	s1,40(sp)
    149a:	f04a                	sd	s2,32(sp)
    149c:	ec4e                	sd	s3,24(sp)
    149e:	e852                	sd	s4,16(sp)
    14a0:	e456                	sd	s5,8(sp)
    14a2:	e05a                	sd	s6,0(sp)
    14a4:	892a                	mv	s2,a0
    14a6:	8aae                	mv	s5,a1
    14a8:	000037b7          	lui	a5,0x3
    14ac:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14b0:	c3c1                	beqz	a5,1530 <random_bytes+0x9e>
    14b2:	060a8563          	beqz	s5,151c <random_bytes+0x8a>
    14b6:	9aca                	add	s5,s5,s2
    14b8:	00003a37          	lui	s4,0x3
    14bc:	000034b7          	lui	s1,0x3
    14c0:	01048493          	addi	s1,s1,16 # 3010 <s>
    14c4:	000039b7          	lui	s3,0x3
    14c8:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14cc:	2505                	addiw	a0,a0,1
    14ce:	0ff57513          	andi	a0,a0,255
    14d2:	00aa02a3          	sb	a0,5(s4)
    14d6:	00a48b33          	add	s6,s1,a0
    14da:	000b4403          	lbu	s0,0(s6)
    14de:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14e2:	9c3d                	addw	s0,s0,a5
    14e4:	0ff47413          	andi	s0,s0,255
    14e8:	00898223          	sb	s0,4(s3)
    14ec:	4605                	li	a2,1
    14ee:	008485b3          	add	a1,s1,s0
    14f2:	855a                	mv	a0,s6
    14f4:	00000097          	auipc	ra,0x0
    14f8:	ede080e7          	jalr	-290(ra) # 13d2 <swap_bytes>
    14fc:	9426                	add	s0,s0,s1
    14fe:	000b4783          	lbu	a5,0(s6)
    1502:	00044703          	lbu	a4,0(s0)
    1506:	9fb9                	addw	a5,a5,a4
    1508:	0ff7f793          	andi	a5,a5,255
    150c:	97a6                	add	a5,a5,s1
    150e:	0007c783          	lbu	a5,0(a5)
    1512:	00f90023          	sb	a5,0(s2)
    1516:	0905                	addi	s2,s2,1
    1518:	fb2a98e3          	bne	s5,s2,14c8 <random_bytes+0x36>
    151c:	70e2                	ld	ra,56(sp)
    151e:	7442                	ld	s0,48(sp)
    1520:	74a2                	ld	s1,40(sp)
    1522:	7902                	ld	s2,32(sp)
    1524:	69e2                	ld	s3,24(sp)
    1526:	6a42                	ld	s4,16(sp)
    1528:	6aa2                	ld	s5,8(sp)
    152a:	6b02                	ld	s6,0(sp)
    152c:	6121                	addi	sp,sp,64
    152e:	8082                	ret
    1530:	4501                	li	a0,0
    1532:	00000097          	auipc	ra,0x0
    1536:	ec0080e7          	jalr	-320(ra) # 13f2 <random_init>
    153a:	bfa5                	j	14b2 <random_bytes+0x20>

000000000000153c <random_ulong>:
    153c:	1101                	addi	sp,sp,-32
    153e:	ec06                	sd	ra,24(sp)
    1540:	45a1                	li	a1,8
    1542:	0028                	addi	a0,sp,8
    1544:	00000097          	auipc	ra,0x0
    1548:	f4e080e7          	jalr	-178(ra) # 1492 <random_bytes>
    154c:	6522                	ld	a0,8(sp)
    154e:	60e2                	ld	ra,24(sp)
    1550:	6105                	addi	sp,sp,32
    1552:	8082                	ret

0000000000001554 <shuffle>:
    1554:	c9b9                	beqz	a1,15aa <shuffle+0x56>
    1556:	7179                	addi	sp,sp,-48
    1558:	f406                	sd	ra,40(sp)
    155a:	f022                	sd	s0,32(sp)
    155c:	ec26                	sd	s1,24(sp)
    155e:	e84a                	sd	s2,16(sp)
    1560:	e44e                	sd	s3,8(sp)
    1562:	e052                	sd	s4,0(sp)
    1564:	8a2a                	mv	s4,a0
    1566:	89ae                	mv	s3,a1
    1568:	84b2                	mv	s1,a2
    156a:	892a                	mv	s2,a0
    156c:	4401                	li	s0,0
    156e:	00000097          	auipc	ra,0x0
    1572:	fce080e7          	jalr	-50(ra) # 153c <random_ulong>
    1576:	408985b3          	sub	a1,s3,s0
    157a:	02b575b3          	remu	a1,a0,a1
    157e:	95a2                	add	a1,a1,s0
    1580:	029585b3          	mul	a1,a1,s1
    1584:	8626                	mv	a2,s1
    1586:	95d2                	add	a1,a1,s4
    1588:	854a                	mv	a0,s2
    158a:	00000097          	auipc	ra,0x0
    158e:	e48080e7          	jalr	-440(ra) # 13d2 <swap_bytes>
    1592:	0405                	addi	s0,s0,1
    1594:	9926                	add	s2,s2,s1
    1596:	fc899ce3          	bne	s3,s0,156e <shuffle+0x1a>
    159a:	70a2                	ld	ra,40(sp)
    159c:	7402                	ld	s0,32(sp)
    159e:	64e2                	ld	s1,24(sp)
    15a0:	6942                	ld	s2,16(sp)
    15a2:	69a2                	ld	s3,8(sp)
    15a4:	6a02                	ld	s4,0(sp)
    15a6:	6145                	addi	sp,sp,48
    15a8:	8082                	ret
    15aa:	8082                	ret

00000000000015ac <arc4_init>:
    15ac:	100500a3          	sb	zero,257(a0)
    15b0:	10050023          	sb	zero,256(a0)
    15b4:	4781                	li	a5,0
    15b6:	10000693          	li	a3,256
    15ba:	00f50733          	add	a4,a0,a5
    15be:	00f70023          	sb	a5,0(a4)
    15c2:	0785                	addi	a5,a5,1
    15c4:	fed79be3          	bne	a5,a3,15ba <arc4_init+0xe>
    15c8:	86aa                	mv	a3,a0
    15ca:	10050e13          	addi	t3,a0,256
    15ce:	4701                	li	a4,0
    15d0:	4781                	li	a5,0
    15d2:	0006c883          	lbu	a7,0(a3)
    15d6:	00f58833          	add	a6,a1,a5
    15da:	00084803          	lbu	a6,0(a6)
    15de:	00e8873b          	addw	a4,a7,a4
    15e2:	00e8073b          	addw	a4,a6,a4
    15e6:	0ff77713          	andi	a4,a4,255
    15ea:	00e50833          	add	a6,a0,a4
    15ee:	00084303          	lbu	t1,0(a6)
    15f2:	00668023          	sb	t1,0(a3)
    15f6:	01180023          	sb	a7,0(a6)
    15fa:	0785                	addi	a5,a5,1
    15fc:	00c7b833          	sltu	a6,a5,a2
    1600:	41000833          	neg	a6,a6
    1604:	0107f7b3          	and	a5,a5,a6
    1608:	0685                	addi	a3,a3,1
    160a:	fdc694e3          	bne	a3,t3,15d2 <arc4_init+0x26>
    160e:	8082                	ret

0000000000001610 <arc4_crypt>:
    1610:	10054e03          	lbu	t3,256(a0)
    1614:	10154803          	lbu	a6,257(a0)
    1618:	fff60e93          	addi	t4,a2,-1
    161c:	c225                	beqz	a2,167c <arc4_crypt+0x6c>
    161e:	00c588b3          	add	a7,a1,a2
    1622:	86ae                	mv	a3,a1
    1624:	001e031b          	addiw	t1,t3,1
    1628:	40b3033b          	subw	t1,t1,a1
    162c:	00d3073b          	addw	a4,t1,a3
    1630:	0ff77713          	andi	a4,a4,255
    1634:	972a                	add	a4,a4,a0
    1636:	00074603          	lbu	a2,0(a4)
    163a:	0106083b          	addw	a6,a2,a6
    163e:	0ff87813          	andi	a6,a6,255
    1642:	010507b3          	add	a5,a0,a6
    1646:	0007c583          	lbu	a1,0(a5)
    164a:	00b70023          	sb	a1,0(a4)
    164e:	00c78023          	sb	a2,0(a5)
    1652:	0685                	addi	a3,a3,1
    1654:	00074783          	lbu	a5,0(a4)
    1658:	9fb1                	addw	a5,a5,a2
    165a:	0ff7f793          	andi	a5,a5,255
    165e:	97aa                	add	a5,a5,a0
    1660:	0007c783          	lbu	a5,0(a5)
    1664:	fff6c703          	lbu	a4,-1(a3)
    1668:	8fb9                	xor	a5,a5,a4
    166a:	fef68fa3          	sb	a5,-1(a3)
    166e:	fb169fe3          	bne	a3,a7,162c <arc4_crypt+0x1c>
    1672:	2e85                	addiw	t4,t4,1
    1674:	01ce8e3b          	addw	t3,t4,t3
    1678:	0ffe7e13          	andi	t3,t3,255
    167c:	11c50023          	sb	t3,256(a0)
    1680:	110500a3          	sb	a6,257(a0)
    1684:	8082                	ret

0000000000001686 <_main>:
    1686:	1141                	addi	sp,sp,-16
    1688:	e406                	sd	ra,8(sp)
    168a:	00000097          	auipc	ra,0x0
    168e:	976080e7          	jalr	-1674(ra) # 1000 <main>
    1692:	4501                	li	a0,0
    1694:	00000097          	auipc	ra,0x0
    1698:	578080e7          	jalr	1400(ra) # 1c0c <exit>
    169c:	60a2                	ld	ra,8(sp)
    169e:	0141                	addi	sp,sp,16
    16a0:	8082                	ret

00000000000016a2 <strcmp>:
    16a2:	00054783          	lbu	a5,0(a0)
    16a6:	cb91                	beqz	a5,16ba <strcmp+0x18>
    16a8:	0005c703          	lbu	a4,0(a1)
    16ac:	00f71763          	bne	a4,a5,16ba <strcmp+0x18>
    16b0:	0505                	addi	a0,a0,1
    16b2:	0585                	addi	a1,a1,1
    16b4:	00054783          	lbu	a5,0(a0)
    16b8:	fbe5                	bnez	a5,16a8 <strcmp+0x6>
    16ba:	0005c503          	lbu	a0,0(a1)
    16be:	40a7853b          	subw	a0,a5,a0
    16c2:	8082                	ret

00000000000016c4 <strcpy>:
    16c4:	87aa                	mv	a5,a0
    16c6:	0585                	addi	a1,a1,1
    16c8:	0785                	addi	a5,a5,1
    16ca:	fff5c703          	lbu	a4,-1(a1)
    16ce:	fee78fa3          	sb	a4,-1(a5)
    16d2:	fb75                	bnez	a4,16c6 <strcpy+0x2>
    16d4:	8082                	ret

00000000000016d6 <strlen>:
    16d6:	00054783          	lbu	a5,0(a0)
    16da:	cf81                	beqz	a5,16f2 <strlen+0x1c>
    16dc:	0505                	addi	a0,a0,1
    16de:	87aa                	mv	a5,a0
    16e0:	4685                	li	a3,1
    16e2:	9e89                	subw	a3,a3,a0
    16e4:	00f6853b          	addw	a0,a3,a5
    16e8:	0785                	addi	a5,a5,1
    16ea:	fff7c703          	lbu	a4,-1(a5)
    16ee:	fb7d                	bnez	a4,16e4 <strlen+0xe>
    16f0:	8082                	ret
    16f2:	4501                	li	a0,0
    16f4:	8082                	ret

00000000000016f6 <memset>:
    16f6:	ca19                	beqz	a2,170c <memset+0x16>
    16f8:	87aa                	mv	a5,a0
    16fa:	1602                	slli	a2,a2,0x20
    16fc:	9201                	srli	a2,a2,0x20
    16fe:	00a60733          	add	a4,a2,a0
    1702:	00b78023          	sb	a1,0(a5)
    1706:	0785                	addi	a5,a5,1
    1708:	fee79de3          	bne	a5,a4,1702 <memset+0xc>
    170c:	8082                	ret

000000000000170e <memcmp>:
    170e:	1101                	addi	sp,sp,-32
    1710:	ec06                	sd	ra,24(sp)
    1712:	e822                	sd	s0,16(sp)
    1714:	e426                	sd	s1,8(sp)
    1716:	e04a                	sd	s2,0(sp)
    1718:	892a                	mv	s2,a0
    171a:	842e                	mv	s0,a1
    171c:	84b2                	mv	s1,a2
    171e:	c915                	beqz	a0,1752 <memcmp+0x44>
    1720:	c5ad                	beqz	a1,178a <memcmp+0x7c>
    1722:	fff60713          	addi	a4,a2,-1
    1726:	c645                	beqz	a2,17ce <memcmp+0xc0>
    1728:	87ca                	mv	a5,s2
    172a:	00190613          	addi	a2,s2,1
    172e:	963a                	add	a2,a2,a4
    1730:	0007c683          	lbu	a3,0(a5)
    1734:	00044703          	lbu	a4,0(s0)
    1738:	08e69463          	bne	a3,a4,17c0 <memcmp+0xb2>
    173c:	0785                	addi	a5,a5,1
    173e:	0405                	addi	s0,s0,1
    1740:	fec798e3          	bne	a5,a2,1730 <memcmp+0x22>
    1744:	4501                	li	a0,0
    1746:	60e2                	ld	ra,24(sp)
    1748:	6442                	ld	s0,16(sp)
    174a:	64a2                	ld	s1,8(sp)
    174c:	6902                	ld	s2,0(sp)
    174e:	6105                	addi	sp,sp,32
    1750:	8082                	ret
    1752:	4501                	li	a0,0
    1754:	da6d                	beqz	a2,1746 <memcmp+0x38>
    1756:	03200693          	li	a3,50
    175a:	00002637          	lui	a2,0x2
    175e:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    1762:	000025b7          	lui	a1,0x2
    1766:	18858593          	addi	a1,a1,392 # 2188 <crctab+0x410>
    176a:	4509                	li	a0,2
    176c:	00000097          	auipc	ra,0x0
    1770:	bbc080e7          	jalr	-1092(ra) # 1328 <fprintf>
    1774:	650d                	lui	a0,0x3
    1776:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    177a:	00000097          	auipc	ra,0x0
    177e:	492080e7          	jalr	1170(ra) # 1c0c <exit>
    1782:	fff48713          	addi	a4,s1,-1
    1786:	f04d                	bnez	s0,1728 <memcmp+0x1a>
    1788:	a011                	j	178c <memcmp+0x7e>
    178a:	c221                	beqz	a2,17ca <memcmp+0xbc>
    178c:	03300693          	li	a3,51
    1790:	00002637          	lui	a2,0x2
    1794:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    1798:	000025b7          	lui	a1,0x2
    179c:	1d058593          	addi	a1,a1,464 # 21d0 <crctab+0x458>
    17a0:	4509                	li	a0,2
    17a2:	00000097          	auipc	ra,0x0
    17a6:	b86080e7          	jalr	-1146(ra) # 1328 <fprintf>
    17aa:	650d                	lui	a0,0x3
    17ac:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17b0:	00000097          	auipc	ra,0x0
    17b4:	45c080e7          	jalr	1116(ra) # 1c0c <exit>
    17b8:	fff48713          	addi	a4,s1,-1
    17bc:	4401                	li	s0,0
    17be:	b7ad                	j	1728 <memcmp+0x1a>
    17c0:	4505                	li	a0,1
    17c2:	f8d762e3          	bltu	a4,a3,1746 <memcmp+0x38>
    17c6:	557d                	li	a0,-1
    17c8:	bfbd                	j	1746 <memcmp+0x38>
    17ca:	4501                	li	a0,0
    17cc:	bfad                	j	1746 <memcmp+0x38>
    17ce:	4501                	li	a0,0
    17d0:	bf9d                	j	1746 <memcmp+0x38>

00000000000017d2 <memcpy>:
    17d2:	1101                	addi	sp,sp,-32
    17d4:	ec06                	sd	ra,24(sp)
    17d6:	e822                	sd	s0,16(sp)
    17d8:	e426                	sd	s1,8(sp)
    17da:	e04a                	sd	s2,0(sp)
    17dc:	84aa                	mv	s1,a0
    17de:	842e                	mv	s0,a1
    17e0:	8932                	mv	s2,a2
    17e2:	c51d                	beqz	a0,1810 <memcpy+0x3e>
    17e4:	c1ad                	beqz	a1,1846 <memcpy+0x74>
    17e6:	fff60693          	addi	a3,a2,-1
    17ea:	ce01                	beqz	a2,1802 <memcpy+0x30>
    17ec:	0685                	addi	a3,a3,1
    17ee:	96a6                	add	a3,a3,s1
    17f0:	87a6                	mv	a5,s1
    17f2:	0405                	addi	s0,s0,1
    17f4:	0785                	addi	a5,a5,1
    17f6:	fff44703          	lbu	a4,-1(s0)
    17fa:	fee78fa3          	sb	a4,-1(a5)
    17fe:	fed79ae3          	bne	a5,a3,17f2 <memcpy+0x20>
    1802:	8526                	mv	a0,s1
    1804:	60e2                	ld	ra,24(sp)
    1806:	6442                	ld	s0,16(sp)
    1808:	64a2                	ld	s1,8(sp)
    180a:	6902                	ld	s2,0(sp)
    180c:	6105                	addi	sp,sp,32
    180e:	8082                	ret
    1810:	da6d                	beqz	a2,1802 <memcpy+0x30>
    1812:	04000693          	li	a3,64
    1816:	00002637          	lui	a2,0x2
    181a:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    181e:	000025b7          	lui	a1,0x2
    1822:	21858593          	addi	a1,a1,536 # 2218 <crctab+0x4a0>
    1826:	4509                	li	a0,2
    1828:	00000097          	auipc	ra,0x0
    182c:	b00080e7          	jalr	-1280(ra) # 1328 <fprintf>
    1830:	650d                	lui	a0,0x3
    1832:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1836:	00000097          	auipc	ra,0x0
    183a:	3d6080e7          	jalr	982(ra) # 1c0c <exit>
    183e:	fff90693          	addi	a3,s2,-1
    1842:	f44d                	bnez	s0,17ec <memcpy+0x1a>
    1844:	a011                	j	1848 <memcpy+0x76>
    1846:	de55                	beqz	a2,1802 <memcpy+0x30>
    1848:	04100693          	li	a3,65
    184c:	00002637          	lui	a2,0x2
    1850:	17860613          	addi	a2,a2,376 # 2178 <crctab+0x400>
    1854:	000025b7          	lui	a1,0x2
    1858:	26058593          	addi	a1,a1,608 # 2260 <crctab+0x4e8>
    185c:	4509                	li	a0,2
    185e:	00000097          	auipc	ra,0x0
    1862:	aca080e7          	jalr	-1334(ra) # 1328 <fprintf>
    1866:	650d                	lui	a0,0x3
    1868:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    186c:	00000097          	auipc	ra,0x0
    1870:	3a0080e7          	jalr	928(ra) # 1c0c <exit>
    1874:	fff90693          	addi	a3,s2,-1
    1878:	4401                	li	s0,0
    187a:	bf8d                	j	17ec <memcpy+0x1a>

000000000000187c <itoa>:
    187c:	1101                	addi	sp,sp,-32
    187e:	ec06                	sd	ra,24(sp)
    1880:	e822                	sd	s0,16(sp)
    1882:	e426                	sd	s1,8(sp)
    1884:	842a                	mv	s0,a0
    1886:	41f5d71b          	sraiw	a4,a1,0x1f
    188a:	00e5c7b3          	xor	a5,a1,a4
    188e:	9f99                	subw	a5,a5,a4
    1890:	84aa                	mv	s1,a0
    1892:	862a                	mv	a2,a0
    1894:	4681                	li	a3,0
    1896:	4529                	li	a0,10
    1898:	4825                	li	a6,9
    189a:	88b6                	mv	a7,a3
    189c:	2685                	addiw	a3,a3,1
    189e:	02a7e73b          	remw	a4,a5,a0
    18a2:	0307071b          	addiw	a4,a4,48
    18a6:	00e60023          	sb	a4,0(a2)
    18aa:	873e                	mv	a4,a5
    18ac:	02a7c7bb          	divw	a5,a5,a0
    18b0:	0605                	addi	a2,a2,1
    18b2:	fee844e3          	blt	a6,a4,189a <itoa+0x1e>
    18b6:	0405c863          	bltz	a1,1906 <itoa+0x8a>
    18ba:	96a2                	add	a3,a3,s0
    18bc:	00068023          	sb	zero,0(a3)
    18c0:	8522                	mv	a0,s0
    18c2:	00000097          	auipc	ra,0x0
    18c6:	e14080e7          	jalr	-492(ra) # 16d6 <strlen>
    18ca:	fff5071b          	addiw	a4,a0,-1
    18ce:	02e05763          	blez	a4,18fc <itoa+0x80>
    18d2:	9722                	add	a4,a4,s0
    18d4:	4681                	li	a3,0
    18d6:	0004c783          	lbu	a5,0(s1)
    18da:	00074603          	lbu	a2,0(a4)
    18de:	00c48023          	sb	a2,0(s1)
    18e2:	00f70023          	sb	a5,0(a4)
    18e6:	0016879b          	addiw	a5,a3,1
    18ea:	0007869b          	sext.w	a3,a5
    18ee:	0485                	addi	s1,s1,1
    18f0:	177d                	addi	a4,a4,-1
    18f2:	fff7c793          	not	a5,a5
    18f6:	9fa9                	addw	a5,a5,a0
    18f8:	fcf6cfe3          	blt	a3,a5,18d6 <itoa+0x5a>
    18fc:	60e2                	ld	ra,24(sp)
    18fe:	6442                	ld	s0,16(sp)
    1900:	64a2                	ld	s1,8(sp)
    1902:	6105                	addi	sp,sp,32
    1904:	8082                	ret
    1906:	96a2                	add	a3,a3,s0
    1908:	02d00793          	li	a5,45
    190c:	00f68023          	sb	a5,0(a3)
    1910:	0028869b          	addiw	a3,a7,2
    1914:	b75d                	j	18ba <itoa+0x3e>

0000000000001916 <atoi>:
    1916:	00054783          	lbu	a5,0(a0)
    191a:	02000713          	li	a4,32
    191e:	00e79763          	bne	a5,a4,192c <atoi+0x16>
    1922:	0505                	addi	a0,a0,1
    1924:	00054783          	lbu	a5,0(a0)
    1928:	fee78de3          	beq	a5,a4,1922 <atoi+0xc>
    192c:	02b00713          	li	a4,43
    1930:	04e78663          	beq	a5,a4,197c <atoi+0x66>
    1934:	02d00713          	li	a4,45
    1938:	4805                	li	a6,1
    193a:	04e78463          	beq	a5,a4,1982 <atoi+0x6c>
    193e:	00054683          	lbu	a3,0(a0)
    1942:	fd06879b          	addiw	a5,a3,-48
    1946:	0ff7f793          	andi	a5,a5,255
    194a:	4725                	li	a4,9
    194c:	02f76e63          	bltu	a4,a5,1988 <atoi+0x72>
    1950:	4601                	li	a2,0
    1952:	45a5                	li	a1,9
    1954:	0505                	addi	a0,a0,1
    1956:	0026179b          	slliw	a5,a2,0x2
    195a:	9fb1                	addw	a5,a5,a2
    195c:	0017979b          	slliw	a5,a5,0x1
    1960:	9fb5                	addw	a5,a5,a3
    1962:	fd07861b          	addiw	a2,a5,-48
    1966:	00054683          	lbu	a3,0(a0)
    196a:	fd06871b          	addiw	a4,a3,-48
    196e:	0ff77713          	andi	a4,a4,255
    1972:	fee5f1e3          	bgeu	a1,a4,1954 <atoi+0x3e>
    1976:	02c8053b          	mulw	a0,a6,a2
    197a:	8082                	ret
    197c:	0505                	addi	a0,a0,1
    197e:	4805                	li	a6,1
    1980:	bf7d                	j	193e <atoi+0x28>
    1982:	0505                	addi	a0,a0,1
    1984:	587d                	li	a6,-1
    1986:	bf65                	j	193e <atoi+0x28>
    1988:	4601                	li	a2,0
    198a:	b7f5                	j	1976 <atoi+0x60>

000000000000198c <check_file_handle>:
    198c:	d8010113          	addi	sp,sp,-640
    1990:	26113c23          	sd	ra,632(sp)
    1994:	26813823          	sd	s0,624(sp)
    1998:	26913423          	sd	s1,616(sp)
    199c:	27213023          	sd	s2,608(sp)
    19a0:	25313c23          	sd	s3,600(sp)
    19a4:	25413823          	sd	s4,592(sp)
    19a8:	25513423          	sd	s5,584(sp)
    19ac:	25613023          	sd	s6,576(sp)
    19b0:	23713c23          	sd	s7,568(sp)
    19b4:	23813823          	sd	s8,560(sp)
    19b8:	23913423          	sd	s9,552(sp)
    19bc:	23a13023          	sd	s10,544(sp)
    19c0:	21b13c23          	sd	s11,536(sp)
    19c4:	8baa                	mv	s7,a0
    19c6:	8a2e                	mv	s4,a1
    19c8:	8c32                	mv	s8,a2
    19ca:	89b6                	mv	s3,a3
    19cc:	040c                	addi	a1,sp,512
    19ce:	00000097          	auipc	ra,0x0
    19d2:	28e080e7          	jalr	654(ra) # 1c5c <fstat>
    19d6:	20813603          	ld	a2,520(sp)
    19da:	03361163          	bne	a2,s3,19fc <check_file_handle+0x70>
    19de:	06098763          	beqz	s3,1a4c <check_file_handle+0xc0>
    19e2:	4901                	li	s2,0
    19e4:	20000a93          	li	s5,512
    19e8:	00002cb7          	lui	s9,0x2
    19ec:	00002db7          	lui	s11,0x2
    19f0:	6b0d                	lui	s6,0x3
    19f2:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19f6:	00002d37          	lui	s10,0x2
    19fa:	aa39                	j	1b18 <check_file_handle+0x18c>
    19fc:	86ce                	mv	a3,s3
    19fe:	85d2                	mv	a1,s4
    1a00:	00002537          	lui	a0,0x2
    1a04:	2a850513          	addi	a0,a0,680 # 22a8 <crctab+0x530>
    1a08:	00000097          	auipc	ra,0x0
    1a0c:	942080e7          	jalr	-1726(ra) # 134a <printf>
    1a10:	fc0999e3          	bnez	s3,19e2 <check_file_handle+0x56>
    1a14:	20813683          	ld	a3,520(sp)
    1a18:	03368a63          	beq	a3,s3,1a4c <check_file_handle+0xc0>
    1a1c:	0a600813          	li	a6,166
    1a20:	000027b7          	lui	a5,0x2
    1a24:	17878793          	addi	a5,a5,376 # 2178 <crctab+0x400>
    1a28:	874e                	mv	a4,s3
    1a2a:	8652                	mv	a2,s4
    1a2c:	000025b7          	lui	a1,0x2
    1a30:	37858593          	addi	a1,a1,888 # 2378 <crctab+0x600>
    1a34:	4509                	li	a0,2
    1a36:	00000097          	auipc	ra,0x0
    1a3a:	8f2080e7          	jalr	-1806(ra) # 1328 <fprintf>
    1a3e:	650d                	lui	a0,0x3
    1a40:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a44:	00000097          	auipc	ra,0x0
    1a48:	1c8080e7          	jalr	456(ra) # 1c0c <exit>
    1a4c:	85d2                	mv	a1,s4
    1a4e:	00002537          	lui	a0,0x2
    1a52:	3c050513          	addi	a0,a0,960 # 23c0 <crctab+0x648>
    1a56:	00000097          	auipc	ra,0x0
    1a5a:	8f4080e7          	jalr	-1804(ra) # 134a <printf>
    1a5e:	27813083          	ld	ra,632(sp)
    1a62:	27013403          	ld	s0,624(sp)
    1a66:	26813483          	ld	s1,616(sp)
    1a6a:	26013903          	ld	s2,608(sp)
    1a6e:	25813983          	ld	s3,600(sp)
    1a72:	25013a03          	ld	s4,592(sp)
    1a76:	24813a83          	ld	s5,584(sp)
    1a7a:	24013b03          	ld	s6,576(sp)
    1a7e:	23813b83          	ld	s7,568(sp)
    1a82:	23013c03          	ld	s8,560(sp)
    1a86:	22813c83          	ld	s9,552(sp)
    1a8a:	22013d03          	ld	s10,544(sp)
    1a8e:	21813d83          	ld	s11,536(sp)
    1a92:	28010113          	addi	sp,sp,640
    1a96:	8082                	ret
    1a98:	09d00893          	li	a7,157
    1a9c:	178c8813          	addi	a6,s9,376 # 2178 <crctab+0x400>
    1aa0:	87aa                	mv	a5,a0
    1aa2:	8752                	mv	a4,s4
    1aa4:	86ca                	mv	a3,s2
    1aa6:	8622                	mv	a2,s0
    1aa8:	2d8d8593          	addi	a1,s11,728 # 22d8 <crctab+0x560>
    1aac:	4509                	li	a0,2
    1aae:	00000097          	auipc	ra,0x0
    1ab2:	87a080e7          	jalr	-1926(ra) # 1328 <fprintf>
    1ab6:	855a                	mv	a0,s6
    1ab8:	00000097          	auipc	ra,0x0
    1abc:	154080e7          	jalr	340(ra) # 1c0c <exit>
    1ac0:	a89d                	j	1b36 <check_file_handle+0x1aa>
    1ac2:	00160593          	addi	a1,a2,1
    1ac6:	0285f163          	bgeu	a1,s0,1ae8 <check_file_handle+0x15c>
    1aca:	00c10733          	add	a4,sp,a2
    1ace:	00b487b3          	add	a5,s1,a1
    1ad2:	00174683          	lbu	a3,1(a4)
    1ad6:	0007c783          	lbu	a5,0(a5)
    1ada:	00f68763          	beq	a3,a5,1ae8 <check_file_handle+0x15c>
    1ade:	0585                	addi	a1,a1,1
    1ae0:	0705                	addi	a4,a4,1
    1ae2:	feb416e3          	bne	s0,a1,1ace <check_file_handle+0x142>
    1ae6:	85a2                	mv	a1,s0
    1ae8:	08100813          	li	a6,129
    1aec:	178c8793          	addi	a5,s9,376
    1af0:	8752                	mv	a4,s4
    1af2:	012606b3          	add	a3,a2,s2
    1af6:	40c58633          	sub	a2,a1,a2
    1afa:	320d0593          	addi	a1,s10,800 # 2320 <crctab+0x5a8>
    1afe:	4509                	li	a0,2
    1b00:	00000097          	auipc	ra,0x0
    1b04:	828080e7          	jalr	-2008(ra) # 1328 <fprintf>
    1b08:	855a                	mv	a0,s6
    1b0a:	00000097          	auipc	ra,0x0
    1b0e:	102080e7          	jalr	258(ra) # 1c0c <exit>
    1b12:	9922                	add	s2,s2,s0
    1b14:	f13970e3          	bgeu	s2,s3,1a14 <check_file_handle+0x88>
    1b18:	41298433          	sub	s0,s3,s2
    1b1c:	008af363          	bgeu	s5,s0,1b22 <check_file_handle+0x196>
    1b20:	8456                	mv	s0,s5
    1b22:	0004061b          	sext.w	a2,s0
    1b26:	858a                	mv	a1,sp
    1b28:	855e                	mv	a0,s7
    1b2a:	00000097          	auipc	ra,0x0
    1b2e:	10a080e7          	jalr	266(ra) # 1c34 <read>
    1b32:	f68513e3          	bne	a0,s0,1a98 <check_file_handle+0x10c>
    1b36:	012c04b3          	add	s1,s8,s2
    1b3a:	8622                	mv	a2,s0
    1b3c:	85a6                	mv	a1,s1
    1b3e:	850a                	mv	a0,sp
    1b40:	00000097          	auipc	ra,0x0
    1b44:	bce080e7          	jalr	-1074(ra) # 170e <memcmp>
    1b48:	d569                	beqz	a0,1b12 <check_file_handle+0x186>
    1b4a:	03298163          	beq	s3,s2,1b6c <check_file_handle+0x1e0>
    1b4e:	870a                	mv	a4,sp
    1b50:	4601                	li	a2,0
    1b52:	00c487b3          	add	a5,s1,a2
    1b56:	00074683          	lbu	a3,0(a4)
    1b5a:	0007c783          	lbu	a5,0(a5)
    1b5e:	f6f692e3          	bne	a3,a5,1ac2 <check_file_handle+0x136>
    1b62:	0605                	addi	a2,a2,1
    1b64:	0705                	addi	a4,a4,1
    1b66:	fe8666e3          	bltu	a2,s0,1b52 <check_file_handle+0x1c6>
    1b6a:	bfa1                	j	1ac2 <check_file_handle+0x136>
    1b6c:	4601                	li	a2,0
    1b6e:	4585                	li	a1,1
    1b70:	bfa5                	j	1ae8 <check_file_handle+0x15c>

0000000000001b72 <check_file>:
    1b72:	7179                	addi	sp,sp,-48
    1b74:	f406                	sd	ra,40(sp)
    1b76:	f022                	sd	s0,32(sp)
    1b78:	ec26                	sd	s1,24(sp)
    1b7a:	e84a                	sd	s2,16(sp)
    1b7c:	e44e                	sd	s3,8(sp)
    1b7e:	84aa                	mv	s1,a0
    1b80:	892e                	mv	s2,a1
    1b82:	89b2                	mv	s3,a2
    1b84:	4581                	li	a1,0
    1b86:	00000097          	auipc	ra,0x0
    1b8a:	0a6080e7          	jalr	166(ra) # 1c2c <open>
    1b8e:	842a                	mv	s0,a0
    1b90:	4789                	li	a5,2
    1b92:	02a7df63          	bge	a5,a0,1bd0 <check_file+0x5e>
    1b96:	86ce                	mv	a3,s3
    1b98:	864a                	mv	a2,s2
    1b9a:	85a6                	mv	a1,s1
    1b9c:	8522                	mv	a0,s0
    1b9e:	00000097          	auipc	ra,0x0
    1ba2:	dee080e7          	jalr	-530(ra) # 198c <check_file_handle>
    1ba6:	85a6                	mv	a1,s1
    1ba8:	00002537          	lui	a0,0x2
    1bac:	44850513          	addi	a0,a0,1096 # 2448 <crctab+0x6d0>
    1bb0:	fffff097          	auipc	ra,0xfffff
    1bb4:	79a080e7          	jalr	1946(ra) # 134a <printf>
    1bb8:	8522                	mv	a0,s0
    1bba:	00000097          	auipc	ra,0x0
    1bbe:	09a080e7          	jalr	154(ra) # 1c54 <close>
    1bc2:	70a2                	ld	ra,40(sp)
    1bc4:	7402                	ld	s0,32(sp)
    1bc6:	64e2                	ld	s1,24(sp)
    1bc8:	6942                	ld	s2,16(sp)
    1bca:	69a2                	ld	s3,8(sp)
    1bcc:	6145                	addi	sp,sp,48
    1bce:	8082                	ret
    1bd0:	0ae00713          	li	a4,174
    1bd4:	000026b7          	lui	a3,0x2
    1bd8:	17868693          	addi	a3,a3,376 # 2178 <crctab+0x400>
    1bdc:	8626                	mv	a2,s1
    1bde:	000025b7          	lui	a1,0x2
    1be2:	3e058593          	addi	a1,a1,992 # 23e0 <crctab+0x668>
    1be6:	4509                	li	a0,2
    1be8:	fffff097          	auipc	ra,0xfffff
    1bec:	740080e7          	jalr	1856(ra) # 1328 <fprintf>
    1bf0:	650d                	lui	a0,0x3
    1bf2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bf6:	00000097          	auipc	ra,0x0
    1bfa:	016080e7          	jalr	22(ra) # 1c0c <exit>
    1bfe:	bf61                	j	1b96 <check_file+0x24>

0000000000001c00 <r_sp>:
    1c00:	850a                	mv	a0,sp
    1c02:	8082                	ret

0000000000001c04 <halt>:
    1c04:	4885                	li	a7,1
    1c06:	00000073          	ecall
    1c0a:	8082                	ret

0000000000001c0c <exit>:
    1c0c:	4889                	li	a7,2
    1c0e:	00000073          	ecall
    1c12:	8082                	ret

0000000000001c14 <exec>:
    1c14:	488d                	li	a7,3
    1c16:	00000073          	ecall
    1c1a:	8082                	ret

0000000000001c1c <wait>:
    1c1c:	4891                	li	a7,4
    1c1e:	00000073          	ecall
    1c22:	8082                	ret

0000000000001c24 <remove>:
    1c24:	4895                	li	a7,5
    1c26:	00000073          	ecall
    1c2a:	8082                	ret

0000000000001c2c <open>:
    1c2c:	4899                	li	a7,6
    1c2e:	00000073          	ecall
    1c32:	8082                	ret

0000000000001c34 <read>:
    1c34:	489d                	li	a7,7
    1c36:	00000073          	ecall
    1c3a:	8082                	ret

0000000000001c3c <write>:
    1c3c:	48a1                	li	a7,8
    1c3e:	00000073          	ecall
    1c42:	8082                	ret

0000000000001c44 <seek>:
    1c44:	48a5                	li	a7,9
    1c46:	00000073          	ecall
    1c4a:	8082                	ret

0000000000001c4c <tell>:
    1c4c:	48a9                	li	a7,10
    1c4e:	00000073          	ecall
    1c52:	8082                	ret

0000000000001c54 <close>:
    1c54:	48ad                	li	a7,11
    1c56:	00000073          	ecall
    1c5a:	8082                	ret

0000000000001c5c <fstat>:
    1c5c:	48b1                	li	a7,12
    1c5e:	00000073          	ecall
    1c62:	8082                	ret

0000000000001c64 <mmap>:
    1c64:	48b5                	li	a7,13
    1c66:	00000073          	ecall
    1c6a:	8082                	ret

0000000000001c6c <munmap>:
    1c6c:	48b9                	li	a7,14
    1c6e:	00000073          	ecall
    1c72:	8082                	ret

0000000000001c74 <chdir>:
    1c74:	48bd                	li	a7,15
    1c76:	00000073          	ecall
    1c7a:	8082                	ret

0000000000001c7c <mkdir>:
    1c7c:	48c1                	li	a7,16
    1c7e:	00000073          	ecall
    1c82:	8082                	ret
