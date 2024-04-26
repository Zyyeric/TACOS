
build/user/userprogs/args-many:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	715d                	addi	sp,sp,-80
    1002:	e486                	sd	ra,72(sp)
    1004:	e0a2                	sd	s0,64(sp)
    1006:	fc26                	sd	s1,56(sp)
    1008:	f84a                	sd	s2,48(sp)
    100a:	f44e                	sd	s3,40(sp)
    100c:	f052                	sd	s4,32(sp)
    100e:	ec56                	sd	s5,24(sp)
    1010:	892a                	mv	s2,a0
    1012:	84ae                	mv	s1,a1
    1014:	47dd                	li	a5,23
    1016:	02f51163          	bne	a0,a5,1038 <main+0x38>
    101a:	618c                	ld	a1,0(a1)
    101c:	00002537          	lui	a0,0x2
    1020:	d5850513          	addi	a0,a0,-680 # 1d58 <mkdir+0x66>
    1024:	00000097          	auipc	ra,0x0
    1028:	6f4080e7          	jalr	1780(ra) # 1718 <strcmp>
    102c:	e529                	bnez	a0,1076 <main+0x76>
    102e:	06100793          	li	a5,97
    1032:	00f11423          	sh	a5,8(sp)
    1036:	a8a5                	j	10ae <main+0xae>
    1038:	4699                	li	a3,6
    103a:	00002637          	lui	a2,0x2
    103e:	d0060613          	addi	a2,a2,-768 # 1d00 <mkdir+0xe>
    1042:	000025b7          	lui	a1,0x2
    1046:	d2058593          	addi	a1,a1,-736 # 1d20 <mkdir+0x2e>
    104a:	4509                	li	a0,2
    104c:	00000097          	auipc	ra,0x0
    1050:	352080e7          	jalr	850(ra) # 139e <fprintf>
    1054:	650d                	lui	a0,0x3
    1056:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    105a:	00001097          	auipc	ra,0x1
    105e:	c28080e7          	jalr	-984(ra) # 1c82 <exit>
    1062:	608c                	ld	a1,0(s1)
    1064:	00002537          	lui	a0,0x2
    1068:	d5850513          	addi	a0,a0,-680 # 1d58 <mkdir+0x66>
    106c:	00000097          	auipc	ra,0x0
    1070:	6ac080e7          	jalr	1708(ra) # 1718 <strcmp>
    1074:	c515                	beqz	a0,10a0 <main+0xa0>
    1076:	469d                	li	a3,7
    1078:	00002637          	lui	a2,0x2
    107c:	d0060613          	addi	a2,a2,-768 # 1d00 <mkdir+0xe>
    1080:	000025b7          	lui	a1,0x2
    1084:	d6858593          	addi	a1,a1,-664 # 1d68 <mkdir+0x76>
    1088:	4509                	li	a0,2
    108a:	00000097          	auipc	ra,0x0
    108e:	314080e7          	jalr	788(ra) # 139e <fprintf>
    1092:	650d                	lui	a0,0x3
    1094:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1098:	00001097          	auipc	ra,0x1
    109c:	bea080e7          	jalr	-1046(ra) # 1c82 <exit>
    10a0:	06100793          	li	a5,97
    10a4:	00f11423          	sh	a5,8(sp)
    10a8:	4785                	li	a5,1
    10aa:	0527dc63          	bge	a5,s2,1102 <main+0x102>
    10ae:	04a1                	addi	s1,s1,8
    10b0:	4405                	li	s0,1
    10b2:	00002ab7          	lui	s5,0x2
    10b6:	00002a37          	lui	s4,0x2
    10ba:	698d                	lui	s3,0x3
    10bc:	03998993          	addi	s3,s3,57 # 3039 <s+0x29>
    10c0:	a811                	j	10d4 <main+0xd4>
    10c2:	00814783          	lbu	a5,8(sp)
    10c6:	2785                	addiw	a5,a5,1
    10c8:	00f10423          	sb	a5,8(sp)
    10cc:	2405                	addiw	s0,s0,1
    10ce:	04a1                	addi	s1,s1,8
    10d0:	03245963          	bge	s0,s2,1102 <main+0x102>
    10d4:	608c                	ld	a1,0(s1)
    10d6:	0028                	addi	a0,sp,8
    10d8:	00000097          	auipc	ra,0x0
    10dc:	640080e7          	jalr	1600(ra) # 1718 <strcmp>
    10e0:	d16d                	beqz	a0,10c2 <main+0xc2>
    10e2:	46ad                	li	a3,11
    10e4:	d00a8613          	addi	a2,s5,-768 # 1d00 <mkdir+0xe>
    10e8:	db8a0593          	addi	a1,s4,-584 # 1db8 <mkdir+0xc6>
    10ec:	4509                	li	a0,2
    10ee:	00000097          	auipc	ra,0x0
    10f2:	2b0080e7          	jalr	688(ra) # 139e <fprintf>
    10f6:	854e                	mv	a0,s3
    10f8:	00001097          	auipc	ra,0x1
    10fc:	b8a080e7          	jalr	-1142(ra) # 1c82 <exit>
    1100:	b7c9                	j	10c2 <main+0xc2>
    1102:	60a6                	ld	ra,72(sp)
    1104:	6406                	ld	s0,64(sp)
    1106:	74e2                	ld	s1,56(sp)
    1108:	7942                	ld	s2,48(sp)
    110a:	79a2                	ld	s3,40(sp)
    110c:	7a02                	ld	s4,32(sp)
    110e:	6ae2                	ld	s5,24(sp)
    1110:	6161                	addi	sp,sp,80
    1112:	8082                	ret

0000000000001114 <putc>:
    1114:	1101                	addi	sp,sp,-32
    1116:	ec06                	sd	ra,24(sp)
    1118:	00b107a3          	sb	a1,15(sp)
    111c:	4605                	li	a2,1
    111e:	00f10593          	addi	a1,sp,15
    1122:	00001097          	auipc	ra,0x1
    1126:	b90080e7          	jalr	-1136(ra) # 1cb2 <write>
    112a:	60e2                	ld	ra,24(sp)
    112c:	6105                	addi	sp,sp,32
    112e:	8082                	ret

0000000000001130 <printint>:
    1130:	7179                	addi	sp,sp,-48
    1132:	f406                	sd	ra,40(sp)
    1134:	f022                	sd	s0,32(sp)
    1136:	ec26                	sd	s1,24(sp)
    1138:	e84a                	sd	s2,16(sp)
    113a:	84aa                	mv	s1,a0
    113c:	c299                	beqz	a3,1142 <printint+0x12>
    113e:	0805c363          	bltz	a1,11c4 <printint+0x94>
    1142:	2581                	sext.w	a1,a1
    1144:	4881                	li	a7,0
    1146:	868a                	mv	a3,sp
    1148:	4701                	li	a4,0
    114a:	2601                	sext.w	a2,a2
    114c:	00002537          	lui	a0,0x2
    1150:	e0850513          	addi	a0,a0,-504 # 1e08 <digits>
    1154:	883a                	mv	a6,a4
    1156:	2705                	addiw	a4,a4,1
    1158:	02c5f7bb          	remuw	a5,a1,a2
    115c:	1782                	slli	a5,a5,0x20
    115e:	9381                	srli	a5,a5,0x20
    1160:	97aa                	add	a5,a5,a0
    1162:	0007c783          	lbu	a5,0(a5)
    1166:	00f68023          	sb	a5,0(a3)
    116a:	0005879b          	sext.w	a5,a1
    116e:	02c5d5bb          	divuw	a1,a1,a2
    1172:	0685                	addi	a3,a3,1
    1174:	fec7f0e3          	bgeu	a5,a2,1154 <printint+0x24>
    1178:	00088a63          	beqz	a7,118c <printint+0x5c>
    117c:	081c                	addi	a5,sp,16
    117e:	973e                	add	a4,a4,a5
    1180:	02d00793          	li	a5,45
    1184:	fef70823          	sb	a5,-16(a4)
    1188:	0028071b          	addiw	a4,a6,2
    118c:	02e05663          	blez	a4,11b8 <printint+0x88>
    1190:	00e10433          	add	s0,sp,a4
    1194:	fff10913          	addi	s2,sp,-1
    1198:	993a                	add	s2,s2,a4
    119a:	377d                	addiw	a4,a4,-1
    119c:	1702                	slli	a4,a4,0x20
    119e:	9301                	srli	a4,a4,0x20
    11a0:	40e90933          	sub	s2,s2,a4
    11a4:	fff44583          	lbu	a1,-1(s0)
    11a8:	8526                	mv	a0,s1
    11aa:	00000097          	auipc	ra,0x0
    11ae:	f6a080e7          	jalr	-150(ra) # 1114 <putc>
    11b2:	147d                	addi	s0,s0,-1
    11b4:	ff2418e3          	bne	s0,s2,11a4 <printint+0x74>
    11b8:	70a2                	ld	ra,40(sp)
    11ba:	7402                	ld	s0,32(sp)
    11bc:	64e2                	ld	s1,24(sp)
    11be:	6942                	ld	s2,16(sp)
    11c0:	6145                	addi	sp,sp,48
    11c2:	8082                	ret
    11c4:	40b005bb          	negw	a1,a1
    11c8:	4885                	li	a7,1
    11ca:	bfb5                	j	1146 <printint+0x16>

00000000000011cc <vprintf>:
    11cc:	7159                	addi	sp,sp,-112
    11ce:	f486                	sd	ra,104(sp)
    11d0:	f0a2                	sd	s0,96(sp)
    11d2:	eca6                	sd	s1,88(sp)
    11d4:	e8ca                	sd	s2,80(sp)
    11d6:	e4ce                	sd	s3,72(sp)
    11d8:	e0d2                	sd	s4,64(sp)
    11da:	fc56                	sd	s5,56(sp)
    11dc:	f85a                	sd	s6,48(sp)
    11de:	f45e                	sd	s7,40(sp)
    11e0:	f062                	sd	s8,32(sp)
    11e2:	ec66                	sd	s9,24(sp)
    11e4:	e86a                	sd	s10,16(sp)
    11e6:	e46e                	sd	s11,8(sp)
    11e8:	0005c483          	lbu	s1,0(a1)
    11ec:	18048a63          	beqz	s1,1380 <vprintf+0x1b4>
    11f0:	8a2a                	mv	s4,a0
    11f2:	8ab2                	mv	s5,a2
    11f4:	00158413          	addi	s0,a1,1
    11f8:	4901                	li	s2,0
    11fa:	02500993          	li	s3,37
    11fe:	06400b93          	li	s7,100
    1202:	06c00c13          	li	s8,108
    1206:	07800c93          	li	s9,120
    120a:	07000d13          	li	s10,112
    120e:	00002db7          	lui	s11,0x2
    1212:	00002b37          	lui	s6,0x2
    1216:	e08b0b13          	addi	s6,s6,-504 # 1e08 <digits>
    121a:	a839                	j	1238 <vprintf+0x6c>
    121c:	85a6                	mv	a1,s1
    121e:	8552                	mv	a0,s4
    1220:	00000097          	auipc	ra,0x0
    1224:	ef4080e7          	jalr	-268(ra) # 1114 <putc>
    1228:	a019                	j	122e <vprintf+0x62>
    122a:	01390f63          	beq	s2,s3,1248 <vprintf+0x7c>
    122e:	0405                	addi	s0,s0,1
    1230:	fff44483          	lbu	s1,-1(s0)
    1234:	14048663          	beqz	s1,1380 <vprintf+0x1b4>
    1238:	0004879b          	sext.w	a5,s1
    123c:	fe0917e3          	bnez	s2,122a <vprintf+0x5e>
    1240:	fd379ee3          	bne	a5,s3,121c <vprintf+0x50>
    1244:	893e                	mv	s2,a5
    1246:	b7e5                	j	122e <vprintf+0x62>
    1248:	05778063          	beq	a5,s7,1288 <vprintf+0xbc>
    124c:	05878c63          	beq	a5,s8,12a4 <vprintf+0xd8>
    1250:	07978863          	beq	a5,s9,12c0 <vprintf+0xf4>
    1254:	09a78463          	beq	a5,s10,12dc <vprintf+0x110>
    1258:	07300713          	li	a4,115
    125c:	0ce78263          	beq	a5,a4,1320 <vprintf+0x154>
    1260:	06300713          	li	a4,99
    1264:	0ee78763          	beq	a5,a4,1352 <vprintf+0x186>
    1268:	11378163          	beq	a5,s3,136a <vprintf+0x19e>
    126c:	85ce                	mv	a1,s3
    126e:	8552                	mv	a0,s4
    1270:	00000097          	auipc	ra,0x0
    1274:	ea4080e7          	jalr	-348(ra) # 1114 <putc>
    1278:	85a6                	mv	a1,s1
    127a:	8552                	mv	a0,s4
    127c:	00000097          	auipc	ra,0x0
    1280:	e98080e7          	jalr	-360(ra) # 1114 <putc>
    1284:	4901                	li	s2,0
    1286:	b765                	j	122e <vprintf+0x62>
    1288:	008a8493          	addi	s1,s5,8
    128c:	4685                	li	a3,1
    128e:	4629                	li	a2,10
    1290:	000aa583          	lw	a1,0(s5)
    1294:	8552                	mv	a0,s4
    1296:	00000097          	auipc	ra,0x0
    129a:	e9a080e7          	jalr	-358(ra) # 1130 <printint>
    129e:	8aa6                	mv	s5,s1
    12a0:	4901                	li	s2,0
    12a2:	b771                	j	122e <vprintf+0x62>
    12a4:	008a8493          	addi	s1,s5,8
    12a8:	4681                	li	a3,0
    12aa:	4629                	li	a2,10
    12ac:	000aa583          	lw	a1,0(s5)
    12b0:	8552                	mv	a0,s4
    12b2:	00000097          	auipc	ra,0x0
    12b6:	e7e080e7          	jalr	-386(ra) # 1130 <printint>
    12ba:	8aa6                	mv	s5,s1
    12bc:	4901                	li	s2,0
    12be:	bf85                	j	122e <vprintf+0x62>
    12c0:	008a8493          	addi	s1,s5,8
    12c4:	4681                	li	a3,0
    12c6:	4641                	li	a2,16
    12c8:	000aa583          	lw	a1,0(s5)
    12cc:	8552                	mv	a0,s4
    12ce:	00000097          	auipc	ra,0x0
    12d2:	e62080e7          	jalr	-414(ra) # 1130 <printint>
    12d6:	8aa6                	mv	s5,s1
    12d8:	4901                	li	s2,0
    12da:	bf91                	j	122e <vprintf+0x62>
    12dc:	008a8913          	addi	s2,s5,8
    12e0:	000aba83          	ld	s5,0(s5)
    12e4:	03000593          	li	a1,48
    12e8:	8552                	mv	a0,s4
    12ea:	00000097          	auipc	ra,0x0
    12ee:	e2a080e7          	jalr	-470(ra) # 1114 <putc>
    12f2:	85e6                	mv	a1,s9
    12f4:	8552                	mv	a0,s4
    12f6:	00000097          	auipc	ra,0x0
    12fa:	e1e080e7          	jalr	-482(ra) # 1114 <putc>
    12fe:	44c1                	li	s1,16
    1300:	03cad793          	srli	a5,s5,0x3c
    1304:	97da                	add	a5,a5,s6
    1306:	0007c583          	lbu	a1,0(a5)
    130a:	8552                	mv	a0,s4
    130c:	00000097          	auipc	ra,0x0
    1310:	e08080e7          	jalr	-504(ra) # 1114 <putc>
    1314:	0a92                	slli	s5,s5,0x4
    1316:	34fd                	addiw	s1,s1,-1
    1318:	f4e5                	bnez	s1,1300 <vprintf+0x134>
    131a:	8aca                	mv	s5,s2
    131c:	4901                	li	s2,0
    131e:	bf01                	j	122e <vprintf+0x62>
    1320:	008a8913          	addi	s2,s5,8
    1324:	000ab483          	ld	s1,0(s5)
    1328:	c085                	beqz	s1,1348 <vprintf+0x17c>
    132a:	0004c583          	lbu	a1,0(s1)
    132e:	c5b1                	beqz	a1,137a <vprintf+0x1ae>
    1330:	8552                	mv	a0,s4
    1332:	00000097          	auipc	ra,0x0
    1336:	de2080e7          	jalr	-542(ra) # 1114 <putc>
    133a:	0485                	addi	s1,s1,1
    133c:	0004c583          	lbu	a1,0(s1)
    1340:	f9e5                	bnez	a1,1330 <vprintf+0x164>
    1342:	8aca                	mv	s5,s2
    1344:	4901                	li	s2,0
    1346:	b5e5                	j	122e <vprintf+0x62>
    1348:	e00d8493          	addi	s1,s11,-512 # 1e00 <mkdir+0x10e>
    134c:	02800593          	li	a1,40
    1350:	b7c5                	j	1330 <vprintf+0x164>
    1352:	008a8493          	addi	s1,s5,8
    1356:	000ac583          	lbu	a1,0(s5)
    135a:	8552                	mv	a0,s4
    135c:	00000097          	auipc	ra,0x0
    1360:	db8080e7          	jalr	-584(ra) # 1114 <putc>
    1364:	8aa6                	mv	s5,s1
    1366:	4901                	li	s2,0
    1368:	b5d9                	j	122e <vprintf+0x62>
    136a:	85ce                	mv	a1,s3
    136c:	8552                	mv	a0,s4
    136e:	00000097          	auipc	ra,0x0
    1372:	da6080e7          	jalr	-602(ra) # 1114 <putc>
    1376:	4901                	li	s2,0
    1378:	bd5d                	j	122e <vprintf+0x62>
    137a:	8aca                	mv	s5,s2
    137c:	4901                	li	s2,0
    137e:	bd45                	j	122e <vprintf+0x62>
    1380:	70a6                	ld	ra,104(sp)
    1382:	7406                	ld	s0,96(sp)
    1384:	64e6                	ld	s1,88(sp)
    1386:	6946                	ld	s2,80(sp)
    1388:	69a6                	ld	s3,72(sp)
    138a:	6a06                	ld	s4,64(sp)
    138c:	7ae2                	ld	s5,56(sp)
    138e:	7b42                	ld	s6,48(sp)
    1390:	7ba2                	ld	s7,40(sp)
    1392:	7c02                	ld	s8,32(sp)
    1394:	6ce2                	ld	s9,24(sp)
    1396:	6d42                	ld	s10,16(sp)
    1398:	6da2                	ld	s11,8(sp)
    139a:	6165                	addi	sp,sp,112
    139c:	8082                	ret

000000000000139e <fprintf>:
    139e:	715d                	addi	sp,sp,-80
    13a0:	ec06                	sd	ra,24(sp)
    13a2:	f032                	sd	a2,32(sp)
    13a4:	f436                	sd	a3,40(sp)
    13a6:	f83a                	sd	a4,48(sp)
    13a8:	fc3e                	sd	a5,56(sp)
    13aa:	e0c2                	sd	a6,64(sp)
    13ac:	e4c6                	sd	a7,72(sp)
    13ae:	1010                	addi	a2,sp,32
    13b0:	e432                	sd	a2,8(sp)
    13b2:	00000097          	auipc	ra,0x0
    13b6:	e1a080e7          	jalr	-486(ra) # 11cc <vprintf>
    13ba:	60e2                	ld	ra,24(sp)
    13bc:	6161                	addi	sp,sp,80
    13be:	8082                	ret

00000000000013c0 <printf>:
    13c0:	711d                	addi	sp,sp,-96
    13c2:	ec06                	sd	ra,24(sp)
    13c4:	f42e                	sd	a1,40(sp)
    13c6:	f832                	sd	a2,48(sp)
    13c8:	fc36                	sd	a3,56(sp)
    13ca:	e0ba                	sd	a4,64(sp)
    13cc:	e4be                	sd	a5,72(sp)
    13ce:	e8c2                	sd	a6,80(sp)
    13d0:	ecc6                	sd	a7,88(sp)
    13d2:	1030                	addi	a2,sp,40
    13d4:	e432                	sd	a2,8(sp)
    13d6:	85aa                	mv	a1,a0
    13d8:	4505                	li	a0,1
    13da:	00000097          	auipc	ra,0x0
    13de:	df2080e7          	jalr	-526(ra) # 11cc <vprintf>
    13e2:	60e2                	ld	ra,24(sp)
    13e4:	6125                	addi	sp,sp,96
    13e6:	8082                	ret

00000000000013e8 <cksum>:
    13e8:	cdb1                	beqz	a1,1444 <cksum+0x5c>
    13ea:	00b50833          	add	a6,a0,a1
    13ee:	4781                	li	a5,0
    13f0:	00002637          	lui	a2,0x2
    13f4:	e2060613          	addi	a2,a2,-480 # 1e20 <crctab>
    13f8:	0505                	addi	a0,a0,1
    13fa:	0087969b          	slliw	a3,a5,0x8
    13fe:	0187d71b          	srliw	a4,a5,0x18
    1402:	fff54783          	lbu	a5,-1(a0)
    1406:	8f3d                	xor	a4,a4,a5
    1408:	1702                	slli	a4,a4,0x20
    140a:	9301                	srli	a4,a4,0x20
    140c:	070a                	slli	a4,a4,0x2
    140e:	9732                	add	a4,a4,a2
    1410:	431c                	lw	a5,0(a4)
    1412:	8fb5                	xor	a5,a5,a3
    1414:	2781                	sext.w	a5,a5
    1416:	fea811e3          	bne	a6,a0,13f8 <cksum+0x10>
    141a:	00002637          	lui	a2,0x2
    141e:	e2060613          	addi	a2,a2,-480 # 1e20 <crctab>
    1422:	0ff5f693          	andi	a3,a1,255
    1426:	81a1                	srli	a1,a1,0x8
    1428:	0087951b          	slliw	a0,a5,0x8
    142c:	0187d71b          	srliw	a4,a5,0x18
    1430:	8f35                	xor	a4,a4,a3
    1432:	070a                	slli	a4,a4,0x2
    1434:	9732                	add	a4,a4,a2
    1436:	431c                	lw	a5,0(a4)
    1438:	8fa9                	xor	a5,a5,a0
    143a:	2781                	sext.w	a5,a5
    143c:	f1fd                	bnez	a1,1422 <cksum+0x3a>
    143e:	fff7c513          	not	a0,a5
    1442:	8082                	ret
    1444:	4781                	li	a5,0
    1446:	bfe5                	j	143e <cksum+0x56>

0000000000001448 <swap_bytes>:
    1448:	ce19                	beqz	a2,1466 <swap_bytes+0x1e>
    144a:	87aa                	mv	a5,a0
    144c:	962a                	add	a2,a2,a0
    144e:	0007c703          	lbu	a4,0(a5)
    1452:	0005c683          	lbu	a3,0(a1)
    1456:	00d78023          	sb	a3,0(a5)
    145a:	00e58023          	sb	a4,0(a1)
    145e:	0785                	addi	a5,a5,1
    1460:	0585                	addi	a1,a1,1
    1462:	fec796e3          	bne	a5,a2,144e <swap_bytes+0x6>
    1466:	8082                	ret

0000000000001468 <random_init>:
    1468:	7139                	addi	sp,sp,-64
    146a:	fc06                	sd	ra,56(sp)
    146c:	f822                	sd	s0,48(sp)
    146e:	f426                	sd	s1,40(sp)
    1470:	f04a                	sd	s2,32(sp)
    1472:	ec4e                	sd	s3,24(sp)
    1474:	e852                	sd	s4,16(sp)
    1476:	c62a                	sw	a0,12(sp)
    1478:	000037b7          	lui	a5,0x3
    147c:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1480:	eca5                	bnez	s1,14f8 <random_init+0x90>
    1482:	00003737          	lui	a4,0x3
    1486:	01070913          	addi	s2,a4,16 # 3010 <s>
    148a:	01070713          	addi	a4,a4,16
    148e:	87a6                	mv	a5,s1
    1490:	10000693          	li	a3,256
    1494:	00f70023          	sb	a5,0(a4)
    1498:	2785                	addiw	a5,a5,1
    149a:	0705                	addi	a4,a4,1
    149c:	fed79ce3          	bne	a5,a3,1494 <random_init+0x2c>
    14a0:	4401                	li	s0,0
    14a2:	000039b7          	lui	s3,0x3
    14a6:	01098993          	addi	s3,s3,16 # 3010 <s>
    14aa:	10000a13          	li	s4,256
    14ae:	0034f793          	andi	a5,s1,3
    14b2:	0818                	addi	a4,sp,16
    14b4:	97ba                	add	a5,a5,a4
    14b6:	ffc7c783          	lbu	a5,-4(a5)
    14ba:	00094703          	lbu	a4,0(s2)
    14be:	9fb9                	addw	a5,a5,a4
    14c0:	9c3d                	addw	s0,s0,a5
    14c2:	0ff47413          	andi	s0,s0,255
    14c6:	4605                	li	a2,1
    14c8:	008985b3          	add	a1,s3,s0
    14cc:	854a                	mv	a0,s2
    14ce:	00000097          	auipc	ra,0x0
    14d2:	f7a080e7          	jalr	-134(ra) # 1448 <swap_bytes>
    14d6:	2485                	addiw	s1,s1,1
    14d8:	0905                	addi	s2,s2,1
    14da:	fd449ae3          	bne	s1,s4,14ae <random_init+0x46>
    14de:	000037b7          	lui	a5,0x3
    14e2:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14e6:	000037b7          	lui	a5,0x3
    14ea:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14ee:	000037b7          	lui	a5,0x3
    14f2:	4705                	li	a4,1
    14f4:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14f8:	70e2                	ld	ra,56(sp)
    14fa:	7442                	ld	s0,48(sp)
    14fc:	74a2                	ld	s1,40(sp)
    14fe:	7902                	ld	s2,32(sp)
    1500:	69e2                	ld	s3,24(sp)
    1502:	6a42                	ld	s4,16(sp)
    1504:	6121                	addi	sp,sp,64
    1506:	8082                	ret

0000000000001508 <random_bytes>:
    1508:	7139                	addi	sp,sp,-64
    150a:	fc06                	sd	ra,56(sp)
    150c:	f822                	sd	s0,48(sp)
    150e:	f426                	sd	s1,40(sp)
    1510:	f04a                	sd	s2,32(sp)
    1512:	ec4e                	sd	s3,24(sp)
    1514:	e852                	sd	s4,16(sp)
    1516:	e456                	sd	s5,8(sp)
    1518:	e05a                	sd	s6,0(sp)
    151a:	892a                	mv	s2,a0
    151c:	8aae                	mv	s5,a1
    151e:	000037b7          	lui	a5,0x3
    1522:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1526:	c3c1                	beqz	a5,15a6 <random_bytes+0x9e>
    1528:	060a8563          	beqz	s5,1592 <random_bytes+0x8a>
    152c:	9aca                	add	s5,s5,s2
    152e:	00003a37          	lui	s4,0x3
    1532:	000034b7          	lui	s1,0x3
    1536:	01048493          	addi	s1,s1,16 # 3010 <s>
    153a:	000039b7          	lui	s3,0x3
    153e:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1542:	2505                	addiw	a0,a0,1
    1544:	0ff57513          	andi	a0,a0,255
    1548:	00aa02a3          	sb	a0,5(s4)
    154c:	00a48b33          	add	s6,s1,a0
    1550:	000b4403          	lbu	s0,0(s6)
    1554:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1558:	9c3d                	addw	s0,s0,a5
    155a:	0ff47413          	andi	s0,s0,255
    155e:	00898223          	sb	s0,4(s3)
    1562:	4605                	li	a2,1
    1564:	008485b3          	add	a1,s1,s0
    1568:	855a                	mv	a0,s6
    156a:	00000097          	auipc	ra,0x0
    156e:	ede080e7          	jalr	-290(ra) # 1448 <swap_bytes>
    1572:	9426                	add	s0,s0,s1
    1574:	000b4783          	lbu	a5,0(s6)
    1578:	00044703          	lbu	a4,0(s0)
    157c:	9fb9                	addw	a5,a5,a4
    157e:	0ff7f793          	andi	a5,a5,255
    1582:	97a6                	add	a5,a5,s1
    1584:	0007c783          	lbu	a5,0(a5)
    1588:	00f90023          	sb	a5,0(s2)
    158c:	0905                	addi	s2,s2,1
    158e:	fb2a98e3          	bne	s5,s2,153e <random_bytes+0x36>
    1592:	70e2                	ld	ra,56(sp)
    1594:	7442                	ld	s0,48(sp)
    1596:	74a2                	ld	s1,40(sp)
    1598:	7902                	ld	s2,32(sp)
    159a:	69e2                	ld	s3,24(sp)
    159c:	6a42                	ld	s4,16(sp)
    159e:	6aa2                	ld	s5,8(sp)
    15a0:	6b02                	ld	s6,0(sp)
    15a2:	6121                	addi	sp,sp,64
    15a4:	8082                	ret
    15a6:	4501                	li	a0,0
    15a8:	00000097          	auipc	ra,0x0
    15ac:	ec0080e7          	jalr	-320(ra) # 1468 <random_init>
    15b0:	bfa5                	j	1528 <random_bytes+0x20>

00000000000015b2 <random_ulong>:
    15b2:	1101                	addi	sp,sp,-32
    15b4:	ec06                	sd	ra,24(sp)
    15b6:	45a1                	li	a1,8
    15b8:	0028                	addi	a0,sp,8
    15ba:	00000097          	auipc	ra,0x0
    15be:	f4e080e7          	jalr	-178(ra) # 1508 <random_bytes>
    15c2:	6522                	ld	a0,8(sp)
    15c4:	60e2                	ld	ra,24(sp)
    15c6:	6105                	addi	sp,sp,32
    15c8:	8082                	ret

00000000000015ca <shuffle>:
    15ca:	c9b9                	beqz	a1,1620 <shuffle+0x56>
    15cc:	7179                	addi	sp,sp,-48
    15ce:	f406                	sd	ra,40(sp)
    15d0:	f022                	sd	s0,32(sp)
    15d2:	ec26                	sd	s1,24(sp)
    15d4:	e84a                	sd	s2,16(sp)
    15d6:	e44e                	sd	s3,8(sp)
    15d8:	e052                	sd	s4,0(sp)
    15da:	8a2a                	mv	s4,a0
    15dc:	89ae                	mv	s3,a1
    15de:	84b2                	mv	s1,a2
    15e0:	892a                	mv	s2,a0
    15e2:	4401                	li	s0,0
    15e4:	00000097          	auipc	ra,0x0
    15e8:	fce080e7          	jalr	-50(ra) # 15b2 <random_ulong>
    15ec:	408985b3          	sub	a1,s3,s0
    15f0:	02b575b3          	remu	a1,a0,a1
    15f4:	95a2                	add	a1,a1,s0
    15f6:	029585b3          	mul	a1,a1,s1
    15fa:	8626                	mv	a2,s1
    15fc:	95d2                	add	a1,a1,s4
    15fe:	854a                	mv	a0,s2
    1600:	00000097          	auipc	ra,0x0
    1604:	e48080e7          	jalr	-440(ra) # 1448 <swap_bytes>
    1608:	0405                	addi	s0,s0,1
    160a:	9926                	add	s2,s2,s1
    160c:	fc899ce3          	bne	s3,s0,15e4 <shuffle+0x1a>
    1610:	70a2                	ld	ra,40(sp)
    1612:	7402                	ld	s0,32(sp)
    1614:	64e2                	ld	s1,24(sp)
    1616:	6942                	ld	s2,16(sp)
    1618:	69a2                	ld	s3,8(sp)
    161a:	6a02                	ld	s4,0(sp)
    161c:	6145                	addi	sp,sp,48
    161e:	8082                	ret
    1620:	8082                	ret

0000000000001622 <arc4_init>:
    1622:	100500a3          	sb	zero,257(a0)
    1626:	10050023          	sb	zero,256(a0)
    162a:	4781                	li	a5,0
    162c:	10000693          	li	a3,256
    1630:	00f50733          	add	a4,a0,a5
    1634:	00f70023          	sb	a5,0(a4)
    1638:	0785                	addi	a5,a5,1
    163a:	fed79be3          	bne	a5,a3,1630 <arc4_init+0xe>
    163e:	86aa                	mv	a3,a0
    1640:	10050e13          	addi	t3,a0,256
    1644:	4701                	li	a4,0
    1646:	4781                	li	a5,0
    1648:	0006c883          	lbu	a7,0(a3)
    164c:	00f58833          	add	a6,a1,a5
    1650:	00084803          	lbu	a6,0(a6)
    1654:	00e8873b          	addw	a4,a7,a4
    1658:	00e8073b          	addw	a4,a6,a4
    165c:	0ff77713          	andi	a4,a4,255
    1660:	00e50833          	add	a6,a0,a4
    1664:	00084303          	lbu	t1,0(a6)
    1668:	00668023          	sb	t1,0(a3)
    166c:	01180023          	sb	a7,0(a6)
    1670:	0785                	addi	a5,a5,1
    1672:	00c7b833          	sltu	a6,a5,a2
    1676:	41000833          	neg	a6,a6
    167a:	0107f7b3          	and	a5,a5,a6
    167e:	0685                	addi	a3,a3,1
    1680:	fdc694e3          	bne	a3,t3,1648 <arc4_init+0x26>
    1684:	8082                	ret

0000000000001686 <arc4_crypt>:
    1686:	10054e03          	lbu	t3,256(a0)
    168a:	10154803          	lbu	a6,257(a0)
    168e:	fff60e93          	addi	t4,a2,-1
    1692:	c225                	beqz	a2,16f2 <arc4_crypt+0x6c>
    1694:	00c588b3          	add	a7,a1,a2
    1698:	86ae                	mv	a3,a1
    169a:	001e031b          	addiw	t1,t3,1
    169e:	40b3033b          	subw	t1,t1,a1
    16a2:	00d3073b          	addw	a4,t1,a3
    16a6:	0ff77713          	andi	a4,a4,255
    16aa:	972a                	add	a4,a4,a0
    16ac:	00074603          	lbu	a2,0(a4)
    16b0:	0106083b          	addw	a6,a2,a6
    16b4:	0ff87813          	andi	a6,a6,255
    16b8:	010507b3          	add	a5,a0,a6
    16bc:	0007c583          	lbu	a1,0(a5)
    16c0:	00b70023          	sb	a1,0(a4)
    16c4:	00c78023          	sb	a2,0(a5)
    16c8:	0685                	addi	a3,a3,1
    16ca:	00074783          	lbu	a5,0(a4)
    16ce:	9fb1                	addw	a5,a5,a2
    16d0:	0ff7f793          	andi	a5,a5,255
    16d4:	97aa                	add	a5,a5,a0
    16d6:	0007c783          	lbu	a5,0(a5)
    16da:	fff6c703          	lbu	a4,-1(a3)
    16de:	8fb9                	xor	a5,a5,a4
    16e0:	fef68fa3          	sb	a5,-1(a3)
    16e4:	fb169fe3          	bne	a3,a7,16a2 <arc4_crypt+0x1c>
    16e8:	2e85                	addiw	t4,t4,1
    16ea:	01ce8e3b          	addw	t3,t4,t3
    16ee:	0ffe7e13          	andi	t3,t3,255
    16f2:	11c50023          	sb	t3,256(a0)
    16f6:	110500a3          	sb	a6,257(a0)
    16fa:	8082                	ret

00000000000016fc <_main>:
    16fc:	1141                	addi	sp,sp,-16
    16fe:	e406                	sd	ra,8(sp)
    1700:	00000097          	auipc	ra,0x0
    1704:	900080e7          	jalr	-1792(ra) # 1000 <main>
    1708:	4501                	li	a0,0
    170a:	00000097          	auipc	ra,0x0
    170e:	578080e7          	jalr	1400(ra) # 1c82 <exit>
    1712:	60a2                	ld	ra,8(sp)
    1714:	0141                	addi	sp,sp,16
    1716:	8082                	ret

0000000000001718 <strcmp>:
    1718:	00054783          	lbu	a5,0(a0)
    171c:	cb91                	beqz	a5,1730 <strcmp+0x18>
    171e:	0005c703          	lbu	a4,0(a1)
    1722:	00f71763          	bne	a4,a5,1730 <strcmp+0x18>
    1726:	0505                	addi	a0,a0,1
    1728:	0585                	addi	a1,a1,1
    172a:	00054783          	lbu	a5,0(a0)
    172e:	fbe5                	bnez	a5,171e <strcmp+0x6>
    1730:	0005c503          	lbu	a0,0(a1)
    1734:	40a7853b          	subw	a0,a5,a0
    1738:	8082                	ret

000000000000173a <strcpy>:
    173a:	87aa                	mv	a5,a0
    173c:	0585                	addi	a1,a1,1
    173e:	0785                	addi	a5,a5,1
    1740:	fff5c703          	lbu	a4,-1(a1)
    1744:	fee78fa3          	sb	a4,-1(a5)
    1748:	fb75                	bnez	a4,173c <strcpy+0x2>
    174a:	8082                	ret

000000000000174c <strlen>:
    174c:	00054783          	lbu	a5,0(a0)
    1750:	cf81                	beqz	a5,1768 <strlen+0x1c>
    1752:	0505                	addi	a0,a0,1
    1754:	87aa                	mv	a5,a0
    1756:	4685                	li	a3,1
    1758:	9e89                	subw	a3,a3,a0
    175a:	00f6853b          	addw	a0,a3,a5
    175e:	0785                	addi	a5,a5,1
    1760:	fff7c703          	lbu	a4,-1(a5)
    1764:	fb7d                	bnez	a4,175a <strlen+0xe>
    1766:	8082                	ret
    1768:	4501                	li	a0,0
    176a:	8082                	ret

000000000000176c <memset>:
    176c:	ca19                	beqz	a2,1782 <memset+0x16>
    176e:	87aa                	mv	a5,a0
    1770:	1602                	slli	a2,a2,0x20
    1772:	9201                	srli	a2,a2,0x20
    1774:	00a60733          	add	a4,a2,a0
    1778:	00b78023          	sb	a1,0(a5)
    177c:	0785                	addi	a5,a5,1
    177e:	fee79de3          	bne	a5,a4,1778 <memset+0xc>
    1782:	8082                	ret

0000000000001784 <memcmp>:
    1784:	1101                	addi	sp,sp,-32
    1786:	ec06                	sd	ra,24(sp)
    1788:	e822                	sd	s0,16(sp)
    178a:	e426                	sd	s1,8(sp)
    178c:	e04a                	sd	s2,0(sp)
    178e:	892a                	mv	s2,a0
    1790:	842e                	mv	s0,a1
    1792:	84b2                	mv	s1,a2
    1794:	c915                	beqz	a0,17c8 <memcmp+0x44>
    1796:	c5ad                	beqz	a1,1800 <memcmp+0x7c>
    1798:	fff60713          	addi	a4,a2,-1
    179c:	c645                	beqz	a2,1844 <memcmp+0xc0>
    179e:	87ca                	mv	a5,s2
    17a0:	00190613          	addi	a2,s2,1
    17a4:	963a                	add	a2,a2,a4
    17a6:	0007c683          	lbu	a3,0(a5)
    17aa:	00044703          	lbu	a4,0(s0)
    17ae:	08e69463          	bne	a3,a4,1836 <memcmp+0xb2>
    17b2:	0785                	addi	a5,a5,1
    17b4:	0405                	addi	s0,s0,1
    17b6:	fec798e3          	bne	a5,a2,17a6 <memcmp+0x22>
    17ba:	4501                	li	a0,0
    17bc:	60e2                	ld	ra,24(sp)
    17be:	6442                	ld	s0,16(sp)
    17c0:	64a2                	ld	s1,8(sp)
    17c2:	6902                	ld	s2,0(sp)
    17c4:	6105                	addi	sp,sp,32
    17c6:	8082                	ret
    17c8:	4501                	li	a0,0
    17ca:	da6d                	beqz	a2,17bc <memcmp+0x38>
    17cc:	03200693          	li	a3,50
    17d0:	00002637          	lui	a2,0x2
    17d4:	22060613          	addi	a2,a2,544 # 2220 <crctab+0x400>
    17d8:	000025b7          	lui	a1,0x2
    17dc:	23058593          	addi	a1,a1,560 # 2230 <crctab+0x410>
    17e0:	4509                	li	a0,2
    17e2:	00000097          	auipc	ra,0x0
    17e6:	bbc080e7          	jalr	-1092(ra) # 139e <fprintf>
    17ea:	650d                	lui	a0,0x3
    17ec:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17f0:	00000097          	auipc	ra,0x0
    17f4:	492080e7          	jalr	1170(ra) # 1c82 <exit>
    17f8:	fff48713          	addi	a4,s1,-1
    17fc:	f04d                	bnez	s0,179e <memcmp+0x1a>
    17fe:	a011                	j	1802 <memcmp+0x7e>
    1800:	c221                	beqz	a2,1840 <memcmp+0xbc>
    1802:	03300693          	li	a3,51
    1806:	00002637          	lui	a2,0x2
    180a:	22060613          	addi	a2,a2,544 # 2220 <crctab+0x400>
    180e:	000025b7          	lui	a1,0x2
    1812:	27858593          	addi	a1,a1,632 # 2278 <crctab+0x458>
    1816:	4509                	li	a0,2
    1818:	00000097          	auipc	ra,0x0
    181c:	b86080e7          	jalr	-1146(ra) # 139e <fprintf>
    1820:	650d                	lui	a0,0x3
    1822:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1826:	00000097          	auipc	ra,0x0
    182a:	45c080e7          	jalr	1116(ra) # 1c82 <exit>
    182e:	fff48713          	addi	a4,s1,-1
    1832:	4401                	li	s0,0
    1834:	b7ad                	j	179e <memcmp+0x1a>
    1836:	4505                	li	a0,1
    1838:	f8d762e3          	bltu	a4,a3,17bc <memcmp+0x38>
    183c:	557d                	li	a0,-1
    183e:	bfbd                	j	17bc <memcmp+0x38>
    1840:	4501                	li	a0,0
    1842:	bfad                	j	17bc <memcmp+0x38>
    1844:	4501                	li	a0,0
    1846:	bf9d                	j	17bc <memcmp+0x38>

0000000000001848 <memcpy>:
    1848:	1101                	addi	sp,sp,-32
    184a:	ec06                	sd	ra,24(sp)
    184c:	e822                	sd	s0,16(sp)
    184e:	e426                	sd	s1,8(sp)
    1850:	e04a                	sd	s2,0(sp)
    1852:	84aa                	mv	s1,a0
    1854:	842e                	mv	s0,a1
    1856:	8932                	mv	s2,a2
    1858:	c51d                	beqz	a0,1886 <memcpy+0x3e>
    185a:	c1ad                	beqz	a1,18bc <memcpy+0x74>
    185c:	fff60693          	addi	a3,a2,-1
    1860:	ce01                	beqz	a2,1878 <memcpy+0x30>
    1862:	0685                	addi	a3,a3,1
    1864:	96a6                	add	a3,a3,s1
    1866:	87a6                	mv	a5,s1
    1868:	0405                	addi	s0,s0,1
    186a:	0785                	addi	a5,a5,1
    186c:	fff44703          	lbu	a4,-1(s0)
    1870:	fee78fa3          	sb	a4,-1(a5)
    1874:	fed79ae3          	bne	a5,a3,1868 <memcpy+0x20>
    1878:	8526                	mv	a0,s1
    187a:	60e2                	ld	ra,24(sp)
    187c:	6442                	ld	s0,16(sp)
    187e:	64a2                	ld	s1,8(sp)
    1880:	6902                	ld	s2,0(sp)
    1882:	6105                	addi	sp,sp,32
    1884:	8082                	ret
    1886:	da6d                	beqz	a2,1878 <memcpy+0x30>
    1888:	04000693          	li	a3,64
    188c:	00002637          	lui	a2,0x2
    1890:	22060613          	addi	a2,a2,544 # 2220 <crctab+0x400>
    1894:	000025b7          	lui	a1,0x2
    1898:	2c058593          	addi	a1,a1,704 # 22c0 <crctab+0x4a0>
    189c:	4509                	li	a0,2
    189e:	00000097          	auipc	ra,0x0
    18a2:	b00080e7          	jalr	-1280(ra) # 139e <fprintf>
    18a6:	650d                	lui	a0,0x3
    18a8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18ac:	00000097          	auipc	ra,0x0
    18b0:	3d6080e7          	jalr	982(ra) # 1c82 <exit>
    18b4:	fff90693          	addi	a3,s2,-1
    18b8:	f44d                	bnez	s0,1862 <memcpy+0x1a>
    18ba:	a011                	j	18be <memcpy+0x76>
    18bc:	de55                	beqz	a2,1878 <memcpy+0x30>
    18be:	04100693          	li	a3,65
    18c2:	00002637          	lui	a2,0x2
    18c6:	22060613          	addi	a2,a2,544 # 2220 <crctab+0x400>
    18ca:	000025b7          	lui	a1,0x2
    18ce:	30858593          	addi	a1,a1,776 # 2308 <crctab+0x4e8>
    18d2:	4509                	li	a0,2
    18d4:	00000097          	auipc	ra,0x0
    18d8:	aca080e7          	jalr	-1334(ra) # 139e <fprintf>
    18dc:	650d                	lui	a0,0x3
    18de:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18e2:	00000097          	auipc	ra,0x0
    18e6:	3a0080e7          	jalr	928(ra) # 1c82 <exit>
    18ea:	fff90693          	addi	a3,s2,-1
    18ee:	4401                	li	s0,0
    18f0:	bf8d                	j	1862 <memcpy+0x1a>

00000000000018f2 <itoa>:
    18f2:	1101                	addi	sp,sp,-32
    18f4:	ec06                	sd	ra,24(sp)
    18f6:	e822                	sd	s0,16(sp)
    18f8:	e426                	sd	s1,8(sp)
    18fa:	842a                	mv	s0,a0
    18fc:	41f5d71b          	sraiw	a4,a1,0x1f
    1900:	00e5c7b3          	xor	a5,a1,a4
    1904:	9f99                	subw	a5,a5,a4
    1906:	84aa                	mv	s1,a0
    1908:	862a                	mv	a2,a0
    190a:	4681                	li	a3,0
    190c:	4529                	li	a0,10
    190e:	4825                	li	a6,9
    1910:	88b6                	mv	a7,a3
    1912:	2685                	addiw	a3,a3,1
    1914:	02a7e73b          	remw	a4,a5,a0
    1918:	0307071b          	addiw	a4,a4,48
    191c:	00e60023          	sb	a4,0(a2)
    1920:	873e                	mv	a4,a5
    1922:	02a7c7bb          	divw	a5,a5,a0
    1926:	0605                	addi	a2,a2,1
    1928:	fee844e3          	blt	a6,a4,1910 <itoa+0x1e>
    192c:	0405c863          	bltz	a1,197c <itoa+0x8a>
    1930:	96a2                	add	a3,a3,s0
    1932:	00068023          	sb	zero,0(a3)
    1936:	8522                	mv	a0,s0
    1938:	00000097          	auipc	ra,0x0
    193c:	e14080e7          	jalr	-492(ra) # 174c <strlen>
    1940:	fff5071b          	addiw	a4,a0,-1
    1944:	02e05763          	blez	a4,1972 <itoa+0x80>
    1948:	9722                	add	a4,a4,s0
    194a:	4681                	li	a3,0
    194c:	0004c783          	lbu	a5,0(s1)
    1950:	00074603          	lbu	a2,0(a4)
    1954:	00c48023          	sb	a2,0(s1)
    1958:	00f70023          	sb	a5,0(a4)
    195c:	0016879b          	addiw	a5,a3,1
    1960:	0007869b          	sext.w	a3,a5
    1964:	0485                	addi	s1,s1,1
    1966:	177d                	addi	a4,a4,-1
    1968:	fff7c793          	not	a5,a5
    196c:	9fa9                	addw	a5,a5,a0
    196e:	fcf6cfe3          	blt	a3,a5,194c <itoa+0x5a>
    1972:	60e2                	ld	ra,24(sp)
    1974:	6442                	ld	s0,16(sp)
    1976:	64a2                	ld	s1,8(sp)
    1978:	6105                	addi	sp,sp,32
    197a:	8082                	ret
    197c:	96a2                	add	a3,a3,s0
    197e:	02d00793          	li	a5,45
    1982:	00f68023          	sb	a5,0(a3)
    1986:	0028869b          	addiw	a3,a7,2
    198a:	b75d                	j	1930 <itoa+0x3e>

000000000000198c <atoi>:
    198c:	00054783          	lbu	a5,0(a0)
    1990:	02000713          	li	a4,32
    1994:	00e79763          	bne	a5,a4,19a2 <atoi+0x16>
    1998:	0505                	addi	a0,a0,1
    199a:	00054783          	lbu	a5,0(a0)
    199e:	fee78de3          	beq	a5,a4,1998 <atoi+0xc>
    19a2:	02b00713          	li	a4,43
    19a6:	04e78663          	beq	a5,a4,19f2 <atoi+0x66>
    19aa:	02d00713          	li	a4,45
    19ae:	4805                	li	a6,1
    19b0:	04e78463          	beq	a5,a4,19f8 <atoi+0x6c>
    19b4:	00054683          	lbu	a3,0(a0)
    19b8:	fd06879b          	addiw	a5,a3,-48
    19bc:	0ff7f793          	andi	a5,a5,255
    19c0:	4725                	li	a4,9
    19c2:	02f76e63          	bltu	a4,a5,19fe <atoi+0x72>
    19c6:	4601                	li	a2,0
    19c8:	45a5                	li	a1,9
    19ca:	0505                	addi	a0,a0,1
    19cc:	0026179b          	slliw	a5,a2,0x2
    19d0:	9fb1                	addw	a5,a5,a2
    19d2:	0017979b          	slliw	a5,a5,0x1
    19d6:	9fb5                	addw	a5,a5,a3
    19d8:	fd07861b          	addiw	a2,a5,-48
    19dc:	00054683          	lbu	a3,0(a0)
    19e0:	fd06871b          	addiw	a4,a3,-48
    19e4:	0ff77713          	andi	a4,a4,255
    19e8:	fee5f1e3          	bgeu	a1,a4,19ca <atoi+0x3e>
    19ec:	02c8053b          	mulw	a0,a6,a2
    19f0:	8082                	ret
    19f2:	0505                	addi	a0,a0,1
    19f4:	4805                	li	a6,1
    19f6:	bf7d                	j	19b4 <atoi+0x28>
    19f8:	0505                	addi	a0,a0,1
    19fa:	587d                	li	a6,-1
    19fc:	bf65                	j	19b4 <atoi+0x28>
    19fe:	4601                	li	a2,0
    1a00:	b7f5                	j	19ec <atoi+0x60>

0000000000001a02 <check_file_handle>:
    1a02:	d8010113          	addi	sp,sp,-640
    1a06:	26113c23          	sd	ra,632(sp)
    1a0a:	26813823          	sd	s0,624(sp)
    1a0e:	26913423          	sd	s1,616(sp)
    1a12:	27213023          	sd	s2,608(sp)
    1a16:	25313c23          	sd	s3,600(sp)
    1a1a:	25413823          	sd	s4,592(sp)
    1a1e:	25513423          	sd	s5,584(sp)
    1a22:	25613023          	sd	s6,576(sp)
    1a26:	23713c23          	sd	s7,568(sp)
    1a2a:	23813823          	sd	s8,560(sp)
    1a2e:	23913423          	sd	s9,552(sp)
    1a32:	23a13023          	sd	s10,544(sp)
    1a36:	21b13c23          	sd	s11,536(sp)
    1a3a:	8baa                	mv	s7,a0
    1a3c:	8a2e                	mv	s4,a1
    1a3e:	8c32                	mv	s8,a2
    1a40:	89b6                	mv	s3,a3
    1a42:	040c                	addi	a1,sp,512
    1a44:	00000097          	auipc	ra,0x0
    1a48:	28e080e7          	jalr	654(ra) # 1cd2 <fstat>
    1a4c:	20813603          	ld	a2,520(sp)
    1a50:	03361163          	bne	a2,s3,1a72 <check_file_handle+0x70>
    1a54:	06098763          	beqz	s3,1ac2 <check_file_handle+0xc0>
    1a58:	4901                	li	s2,0
    1a5a:	20000a93          	li	s5,512
    1a5e:	00002cb7          	lui	s9,0x2
    1a62:	00002db7          	lui	s11,0x2
    1a66:	6b0d                	lui	s6,0x3
    1a68:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a6c:	00002d37          	lui	s10,0x2
    1a70:	aa39                	j	1b8e <check_file_handle+0x18c>
    1a72:	86ce                	mv	a3,s3
    1a74:	85d2                	mv	a1,s4
    1a76:	00002537          	lui	a0,0x2
    1a7a:	35050513          	addi	a0,a0,848 # 2350 <crctab+0x530>
    1a7e:	00000097          	auipc	ra,0x0
    1a82:	942080e7          	jalr	-1726(ra) # 13c0 <printf>
    1a86:	fc0999e3          	bnez	s3,1a58 <check_file_handle+0x56>
    1a8a:	20813683          	ld	a3,520(sp)
    1a8e:	03368a63          	beq	a3,s3,1ac2 <check_file_handle+0xc0>
    1a92:	0a600813          	li	a6,166
    1a96:	000027b7          	lui	a5,0x2
    1a9a:	22078793          	addi	a5,a5,544 # 2220 <crctab+0x400>
    1a9e:	874e                	mv	a4,s3
    1aa0:	8652                	mv	a2,s4
    1aa2:	000025b7          	lui	a1,0x2
    1aa6:	42058593          	addi	a1,a1,1056 # 2420 <crctab+0x600>
    1aaa:	4509                	li	a0,2
    1aac:	00000097          	auipc	ra,0x0
    1ab0:	8f2080e7          	jalr	-1806(ra) # 139e <fprintf>
    1ab4:	650d                	lui	a0,0x3
    1ab6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1aba:	00000097          	auipc	ra,0x0
    1abe:	1c8080e7          	jalr	456(ra) # 1c82 <exit>
    1ac2:	85d2                	mv	a1,s4
    1ac4:	00002537          	lui	a0,0x2
    1ac8:	46850513          	addi	a0,a0,1128 # 2468 <crctab+0x648>
    1acc:	00000097          	auipc	ra,0x0
    1ad0:	8f4080e7          	jalr	-1804(ra) # 13c0 <printf>
    1ad4:	27813083          	ld	ra,632(sp)
    1ad8:	27013403          	ld	s0,624(sp)
    1adc:	26813483          	ld	s1,616(sp)
    1ae0:	26013903          	ld	s2,608(sp)
    1ae4:	25813983          	ld	s3,600(sp)
    1ae8:	25013a03          	ld	s4,592(sp)
    1aec:	24813a83          	ld	s5,584(sp)
    1af0:	24013b03          	ld	s6,576(sp)
    1af4:	23813b83          	ld	s7,568(sp)
    1af8:	23013c03          	ld	s8,560(sp)
    1afc:	22813c83          	ld	s9,552(sp)
    1b00:	22013d03          	ld	s10,544(sp)
    1b04:	21813d83          	ld	s11,536(sp)
    1b08:	28010113          	addi	sp,sp,640
    1b0c:	8082                	ret
    1b0e:	09d00893          	li	a7,157
    1b12:	220c8813          	addi	a6,s9,544 # 2220 <crctab+0x400>
    1b16:	87aa                	mv	a5,a0
    1b18:	8752                	mv	a4,s4
    1b1a:	86ca                	mv	a3,s2
    1b1c:	8622                	mv	a2,s0
    1b1e:	380d8593          	addi	a1,s11,896 # 2380 <crctab+0x560>
    1b22:	4509                	li	a0,2
    1b24:	00000097          	auipc	ra,0x0
    1b28:	87a080e7          	jalr	-1926(ra) # 139e <fprintf>
    1b2c:	855a                	mv	a0,s6
    1b2e:	00000097          	auipc	ra,0x0
    1b32:	154080e7          	jalr	340(ra) # 1c82 <exit>
    1b36:	a89d                	j	1bac <check_file_handle+0x1aa>
    1b38:	00160593          	addi	a1,a2,1
    1b3c:	0285f163          	bgeu	a1,s0,1b5e <check_file_handle+0x15c>
    1b40:	00c10733          	add	a4,sp,a2
    1b44:	00b487b3          	add	a5,s1,a1
    1b48:	00174683          	lbu	a3,1(a4)
    1b4c:	0007c783          	lbu	a5,0(a5)
    1b50:	00f68763          	beq	a3,a5,1b5e <check_file_handle+0x15c>
    1b54:	0585                	addi	a1,a1,1
    1b56:	0705                	addi	a4,a4,1
    1b58:	feb416e3          	bne	s0,a1,1b44 <check_file_handle+0x142>
    1b5c:	85a2                	mv	a1,s0
    1b5e:	08100813          	li	a6,129
    1b62:	220c8793          	addi	a5,s9,544
    1b66:	8752                	mv	a4,s4
    1b68:	012606b3          	add	a3,a2,s2
    1b6c:	40c58633          	sub	a2,a1,a2
    1b70:	3c8d0593          	addi	a1,s10,968 # 23c8 <crctab+0x5a8>
    1b74:	4509                	li	a0,2
    1b76:	00000097          	auipc	ra,0x0
    1b7a:	828080e7          	jalr	-2008(ra) # 139e <fprintf>
    1b7e:	855a                	mv	a0,s6
    1b80:	00000097          	auipc	ra,0x0
    1b84:	102080e7          	jalr	258(ra) # 1c82 <exit>
    1b88:	9922                	add	s2,s2,s0
    1b8a:	f13970e3          	bgeu	s2,s3,1a8a <check_file_handle+0x88>
    1b8e:	41298433          	sub	s0,s3,s2
    1b92:	008af363          	bgeu	s5,s0,1b98 <check_file_handle+0x196>
    1b96:	8456                	mv	s0,s5
    1b98:	0004061b          	sext.w	a2,s0
    1b9c:	858a                	mv	a1,sp
    1b9e:	855e                	mv	a0,s7
    1ba0:	00000097          	auipc	ra,0x0
    1ba4:	10a080e7          	jalr	266(ra) # 1caa <read>
    1ba8:	f68513e3          	bne	a0,s0,1b0e <check_file_handle+0x10c>
    1bac:	012c04b3          	add	s1,s8,s2
    1bb0:	8622                	mv	a2,s0
    1bb2:	85a6                	mv	a1,s1
    1bb4:	850a                	mv	a0,sp
    1bb6:	00000097          	auipc	ra,0x0
    1bba:	bce080e7          	jalr	-1074(ra) # 1784 <memcmp>
    1bbe:	d569                	beqz	a0,1b88 <check_file_handle+0x186>
    1bc0:	03298163          	beq	s3,s2,1be2 <check_file_handle+0x1e0>
    1bc4:	870a                	mv	a4,sp
    1bc6:	4601                	li	a2,0
    1bc8:	00c487b3          	add	a5,s1,a2
    1bcc:	00074683          	lbu	a3,0(a4)
    1bd0:	0007c783          	lbu	a5,0(a5)
    1bd4:	f6f692e3          	bne	a3,a5,1b38 <check_file_handle+0x136>
    1bd8:	0605                	addi	a2,a2,1
    1bda:	0705                	addi	a4,a4,1
    1bdc:	fe8666e3          	bltu	a2,s0,1bc8 <check_file_handle+0x1c6>
    1be0:	bfa1                	j	1b38 <check_file_handle+0x136>
    1be2:	4601                	li	a2,0
    1be4:	4585                	li	a1,1
    1be6:	bfa5                	j	1b5e <check_file_handle+0x15c>

0000000000001be8 <check_file>:
    1be8:	7179                	addi	sp,sp,-48
    1bea:	f406                	sd	ra,40(sp)
    1bec:	f022                	sd	s0,32(sp)
    1bee:	ec26                	sd	s1,24(sp)
    1bf0:	e84a                	sd	s2,16(sp)
    1bf2:	e44e                	sd	s3,8(sp)
    1bf4:	84aa                	mv	s1,a0
    1bf6:	892e                	mv	s2,a1
    1bf8:	89b2                	mv	s3,a2
    1bfa:	4581                	li	a1,0
    1bfc:	00000097          	auipc	ra,0x0
    1c00:	0a6080e7          	jalr	166(ra) # 1ca2 <open>
    1c04:	842a                	mv	s0,a0
    1c06:	4789                	li	a5,2
    1c08:	02a7df63          	bge	a5,a0,1c46 <check_file+0x5e>
    1c0c:	86ce                	mv	a3,s3
    1c0e:	864a                	mv	a2,s2
    1c10:	85a6                	mv	a1,s1
    1c12:	8522                	mv	a0,s0
    1c14:	00000097          	auipc	ra,0x0
    1c18:	dee080e7          	jalr	-530(ra) # 1a02 <check_file_handle>
    1c1c:	85a6                	mv	a1,s1
    1c1e:	00002537          	lui	a0,0x2
    1c22:	4f050513          	addi	a0,a0,1264 # 24f0 <crctab+0x6d0>
    1c26:	fffff097          	auipc	ra,0xfffff
    1c2a:	79a080e7          	jalr	1946(ra) # 13c0 <printf>
    1c2e:	8522                	mv	a0,s0
    1c30:	00000097          	auipc	ra,0x0
    1c34:	09a080e7          	jalr	154(ra) # 1cca <close>
    1c38:	70a2                	ld	ra,40(sp)
    1c3a:	7402                	ld	s0,32(sp)
    1c3c:	64e2                	ld	s1,24(sp)
    1c3e:	6942                	ld	s2,16(sp)
    1c40:	69a2                	ld	s3,8(sp)
    1c42:	6145                	addi	sp,sp,48
    1c44:	8082                	ret
    1c46:	0ae00713          	li	a4,174
    1c4a:	000026b7          	lui	a3,0x2
    1c4e:	22068693          	addi	a3,a3,544 # 2220 <crctab+0x400>
    1c52:	8626                	mv	a2,s1
    1c54:	000025b7          	lui	a1,0x2
    1c58:	48858593          	addi	a1,a1,1160 # 2488 <crctab+0x668>
    1c5c:	4509                	li	a0,2
    1c5e:	fffff097          	auipc	ra,0xfffff
    1c62:	740080e7          	jalr	1856(ra) # 139e <fprintf>
    1c66:	650d                	lui	a0,0x3
    1c68:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c6c:	00000097          	auipc	ra,0x0
    1c70:	016080e7          	jalr	22(ra) # 1c82 <exit>
    1c74:	bf61                	j	1c0c <check_file+0x24>

0000000000001c76 <r_sp>:
    1c76:	850a                	mv	a0,sp
    1c78:	8082                	ret

0000000000001c7a <halt>:
    1c7a:	4885                	li	a7,1
    1c7c:	00000073          	ecall
    1c80:	8082                	ret

0000000000001c82 <exit>:
    1c82:	4889                	li	a7,2
    1c84:	00000073          	ecall
    1c88:	8082                	ret

0000000000001c8a <exec>:
    1c8a:	488d                	li	a7,3
    1c8c:	00000073          	ecall
    1c90:	8082                	ret

0000000000001c92 <wait>:
    1c92:	4891                	li	a7,4
    1c94:	00000073          	ecall
    1c98:	8082                	ret

0000000000001c9a <remove>:
    1c9a:	4895                	li	a7,5
    1c9c:	00000073          	ecall
    1ca0:	8082                	ret

0000000000001ca2 <open>:
    1ca2:	4899                	li	a7,6
    1ca4:	00000073          	ecall
    1ca8:	8082                	ret

0000000000001caa <read>:
    1caa:	489d                	li	a7,7
    1cac:	00000073          	ecall
    1cb0:	8082                	ret

0000000000001cb2 <write>:
    1cb2:	48a1                	li	a7,8
    1cb4:	00000073          	ecall
    1cb8:	8082                	ret

0000000000001cba <seek>:
    1cba:	48a5                	li	a7,9
    1cbc:	00000073          	ecall
    1cc0:	8082                	ret

0000000000001cc2 <tell>:
    1cc2:	48a9                	li	a7,10
    1cc4:	00000073          	ecall
    1cc8:	8082                	ret

0000000000001cca <close>:
    1cca:	48ad                	li	a7,11
    1ccc:	00000073          	ecall
    1cd0:	8082                	ret

0000000000001cd2 <fstat>:
    1cd2:	48b1                	li	a7,12
    1cd4:	00000073          	ecall
    1cd8:	8082                	ret

0000000000001cda <mmap>:
    1cda:	48b5                	li	a7,13
    1cdc:	00000073          	ecall
    1ce0:	8082                	ret

0000000000001ce2 <munmap>:
    1ce2:	48b9                	li	a7,14
    1ce4:	00000073          	ecall
    1ce8:	8082                	ret

0000000000001cea <chdir>:
    1cea:	48bd                	li	a7,15
    1cec:	00000073          	ecall
    1cf0:	8082                	ret

0000000000001cf2 <mkdir>:
    1cf2:	48c1                	li	a7,16
    1cf4:	00000073          	ecall
    1cf8:	8082                	ret
