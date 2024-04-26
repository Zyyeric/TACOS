
build/user/vm/page-parallel:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	711d                	addi	sp,sp,-96
    1002:	ec86                	sd	ra,88(sp)
    1004:	e8a2                	sd	s0,80(sp)
    1006:	e4a6                	sd	s1,72(sp)
    1008:	e0ca                	sd	s2,64(sp)
    100a:	fc4e                	sd	s3,56(sp)
    100c:	f852                	sd	s4,48(sp)
    100e:	f456                	sd	s5,40(sp)
    1010:	f05a                	sd	s6,32(sp)
    1012:	000027b7          	lui	a5,0x2
    1016:	cc078793          	addi	a5,a5,-832 # 1cc0 <mkdir+0x14>
    101a:	e03e                	sd	a5,0(sp)
    101c:	e402                	sd	zero,8(sp)
    101e:	0804                	addi	s1,sp,16
    1020:	02010993          	addi	s3,sp,32
    1024:	8426                	mv	s0,s1
    1026:	597d                	li	s2,-1
    1028:	00002b37          	lui	s6,0x2
    102c:	00002ab7          	lui	s5,0x2
    1030:	650d                	lui	a0,0x3
    1032:	03950a13          	addi	s4,a0,57 # 3039 <s+0x29>
    1036:	a021                	j	103e <main+0x3e>
    1038:	0411                	addi	s0,s0,4
    103a:	03340b63          	beq	s0,s3,1070 <main+0x70>
    103e:	858a                	mv	a1,sp
    1040:	6502                	ld	a0,0(sp)
    1042:	00001097          	auipc	ra,0x1
    1046:	c02080e7          	jalr	-1022(ra) # 1c44 <exec>
    104a:	c008                	sw	a0,0(s0)
    104c:	ff2516e3          	bne	a0,s2,1038 <main+0x38>
    1050:	46b1                	li	a3,12
    1052:	cd0b0613          	addi	a2,s6,-816 # 1cd0 <mkdir+0x24>
    1056:	ce8a8593          	addi	a1,s5,-792 # 1ce8 <mkdir+0x3c>
    105a:	4509                	li	a0,2
    105c:	00000097          	auipc	ra,0x0
    1060:	2fc080e7          	jalr	764(ra) # 1358 <fprintf>
    1064:	8552                	mv	a0,s4
    1066:	00001097          	auipc	ra,0x1
    106a:	bd6080e7          	jalr	-1066(ra) # 1c3c <exit>
    106e:	b7e9                	j	1038 <main+0x38>
    1070:	4401                	li	s0,0
    1072:	00002ab7          	lui	s5,0x2
    1076:	00002a37          	lui	s4,0x2
    107a:	698d                	lui	s3,0x3
    107c:	03998993          	addi	s3,s3,57 # 3039 <s+0x29>
    1080:	4911                	li	s2,4
    1082:	a029                	j	108c <main+0x8c>
    1084:	2405                	addiw	s0,s0,1
    1086:	0491                	addi	s1,s1,4
    1088:	03240963          	beq	s0,s2,10ba <main+0xba>
    108c:	4088                	lw	a0,0(s1)
    108e:	00001097          	auipc	ra,0x1
    1092:	bbe080e7          	jalr	-1090(ra) # 1c4c <wait>
    1096:	d57d                	beqz	a0,1084 <main+0x84>
    1098:	4735                	li	a4,13
    109a:	cd0a8693          	addi	a3,s5,-816 # 1cd0 <mkdir+0x24>
    109e:	8622                	mv	a2,s0
    10a0:	d40a0593          	addi	a1,s4,-704 # 1d40 <mkdir+0x94>
    10a4:	4509                	li	a0,2
    10a6:	00000097          	auipc	ra,0x0
    10aa:	2b2080e7          	jalr	690(ra) # 1358 <fprintf>
    10ae:	854e                	mv	a0,s3
    10b0:	00001097          	auipc	ra,0x1
    10b4:	b8c080e7          	jalr	-1140(ra) # 1c3c <exit>
    10b8:	b7f1                	j	1084 <main+0x84>
    10ba:	60e6                	ld	ra,88(sp)
    10bc:	6446                	ld	s0,80(sp)
    10be:	64a6                	ld	s1,72(sp)
    10c0:	6906                	ld	s2,64(sp)
    10c2:	79e2                	ld	s3,56(sp)
    10c4:	7a42                	ld	s4,48(sp)
    10c6:	7aa2                	ld	s5,40(sp)
    10c8:	7b02                	ld	s6,32(sp)
    10ca:	6125                	addi	sp,sp,96
    10cc:	8082                	ret

00000000000010ce <putc>:
    10ce:	1101                	addi	sp,sp,-32
    10d0:	ec06                	sd	ra,24(sp)
    10d2:	00b107a3          	sb	a1,15(sp)
    10d6:	4605                	li	a2,1
    10d8:	00f10593          	addi	a1,sp,15
    10dc:	00001097          	auipc	ra,0x1
    10e0:	b90080e7          	jalr	-1136(ra) # 1c6c <write>
    10e4:	60e2                	ld	ra,24(sp)
    10e6:	6105                	addi	sp,sp,32
    10e8:	8082                	ret

00000000000010ea <printint>:
    10ea:	7179                	addi	sp,sp,-48
    10ec:	f406                	sd	ra,40(sp)
    10ee:	f022                	sd	s0,32(sp)
    10f0:	ec26                	sd	s1,24(sp)
    10f2:	e84a                	sd	s2,16(sp)
    10f4:	84aa                	mv	s1,a0
    10f6:	c299                	beqz	a3,10fc <printint+0x12>
    10f8:	0805c363          	bltz	a1,117e <printint+0x94>
    10fc:	2581                	sext.w	a1,a1
    10fe:	4881                	li	a7,0
    1100:	868a                	mv	a3,sp
    1102:	4701                	li	a4,0
    1104:	2601                	sext.w	a2,a2
    1106:	00002537          	lui	a0,0x2
    110a:	da050513          	addi	a0,a0,-608 # 1da0 <digits>
    110e:	883a                	mv	a6,a4
    1110:	2705                	addiw	a4,a4,1
    1112:	02c5f7bb          	remuw	a5,a1,a2
    1116:	1782                	slli	a5,a5,0x20
    1118:	9381                	srli	a5,a5,0x20
    111a:	97aa                	add	a5,a5,a0
    111c:	0007c783          	lbu	a5,0(a5)
    1120:	00f68023          	sb	a5,0(a3)
    1124:	0005879b          	sext.w	a5,a1
    1128:	02c5d5bb          	divuw	a1,a1,a2
    112c:	0685                	addi	a3,a3,1
    112e:	fec7f0e3          	bgeu	a5,a2,110e <printint+0x24>
    1132:	00088a63          	beqz	a7,1146 <printint+0x5c>
    1136:	081c                	addi	a5,sp,16
    1138:	973e                	add	a4,a4,a5
    113a:	02d00793          	li	a5,45
    113e:	fef70823          	sb	a5,-16(a4)
    1142:	0028071b          	addiw	a4,a6,2
    1146:	02e05663          	blez	a4,1172 <printint+0x88>
    114a:	00e10433          	add	s0,sp,a4
    114e:	fff10913          	addi	s2,sp,-1
    1152:	993a                	add	s2,s2,a4
    1154:	377d                	addiw	a4,a4,-1
    1156:	1702                	slli	a4,a4,0x20
    1158:	9301                	srli	a4,a4,0x20
    115a:	40e90933          	sub	s2,s2,a4
    115e:	fff44583          	lbu	a1,-1(s0)
    1162:	8526                	mv	a0,s1
    1164:	00000097          	auipc	ra,0x0
    1168:	f6a080e7          	jalr	-150(ra) # 10ce <putc>
    116c:	147d                	addi	s0,s0,-1
    116e:	ff2418e3          	bne	s0,s2,115e <printint+0x74>
    1172:	70a2                	ld	ra,40(sp)
    1174:	7402                	ld	s0,32(sp)
    1176:	64e2                	ld	s1,24(sp)
    1178:	6942                	ld	s2,16(sp)
    117a:	6145                	addi	sp,sp,48
    117c:	8082                	ret
    117e:	40b005bb          	negw	a1,a1
    1182:	4885                	li	a7,1
    1184:	bfb5                	j	1100 <printint+0x16>

0000000000001186 <vprintf>:
    1186:	7159                	addi	sp,sp,-112
    1188:	f486                	sd	ra,104(sp)
    118a:	f0a2                	sd	s0,96(sp)
    118c:	eca6                	sd	s1,88(sp)
    118e:	e8ca                	sd	s2,80(sp)
    1190:	e4ce                	sd	s3,72(sp)
    1192:	e0d2                	sd	s4,64(sp)
    1194:	fc56                	sd	s5,56(sp)
    1196:	f85a                	sd	s6,48(sp)
    1198:	f45e                	sd	s7,40(sp)
    119a:	f062                	sd	s8,32(sp)
    119c:	ec66                	sd	s9,24(sp)
    119e:	e86a                	sd	s10,16(sp)
    11a0:	e46e                	sd	s11,8(sp)
    11a2:	0005c483          	lbu	s1,0(a1)
    11a6:	18048a63          	beqz	s1,133a <vprintf+0x1b4>
    11aa:	8a2a                	mv	s4,a0
    11ac:	8ab2                	mv	s5,a2
    11ae:	00158413          	addi	s0,a1,1
    11b2:	4901                	li	s2,0
    11b4:	02500993          	li	s3,37
    11b8:	06400b93          	li	s7,100
    11bc:	06c00c13          	li	s8,108
    11c0:	07800c93          	li	s9,120
    11c4:	07000d13          	li	s10,112
    11c8:	00002db7          	lui	s11,0x2
    11cc:	00002b37          	lui	s6,0x2
    11d0:	da0b0b13          	addi	s6,s6,-608 # 1da0 <digits>
    11d4:	a839                	j	11f2 <vprintf+0x6c>
    11d6:	85a6                	mv	a1,s1
    11d8:	8552                	mv	a0,s4
    11da:	00000097          	auipc	ra,0x0
    11de:	ef4080e7          	jalr	-268(ra) # 10ce <putc>
    11e2:	a019                	j	11e8 <vprintf+0x62>
    11e4:	01390f63          	beq	s2,s3,1202 <vprintf+0x7c>
    11e8:	0405                	addi	s0,s0,1
    11ea:	fff44483          	lbu	s1,-1(s0)
    11ee:	14048663          	beqz	s1,133a <vprintf+0x1b4>
    11f2:	0004879b          	sext.w	a5,s1
    11f6:	fe0917e3          	bnez	s2,11e4 <vprintf+0x5e>
    11fa:	fd379ee3          	bne	a5,s3,11d6 <vprintf+0x50>
    11fe:	893e                	mv	s2,a5
    1200:	b7e5                	j	11e8 <vprintf+0x62>
    1202:	05778063          	beq	a5,s7,1242 <vprintf+0xbc>
    1206:	05878c63          	beq	a5,s8,125e <vprintf+0xd8>
    120a:	07978863          	beq	a5,s9,127a <vprintf+0xf4>
    120e:	09a78463          	beq	a5,s10,1296 <vprintf+0x110>
    1212:	07300713          	li	a4,115
    1216:	0ce78263          	beq	a5,a4,12da <vprintf+0x154>
    121a:	06300713          	li	a4,99
    121e:	0ee78763          	beq	a5,a4,130c <vprintf+0x186>
    1222:	11378163          	beq	a5,s3,1324 <vprintf+0x19e>
    1226:	85ce                	mv	a1,s3
    1228:	8552                	mv	a0,s4
    122a:	00000097          	auipc	ra,0x0
    122e:	ea4080e7          	jalr	-348(ra) # 10ce <putc>
    1232:	85a6                	mv	a1,s1
    1234:	8552                	mv	a0,s4
    1236:	00000097          	auipc	ra,0x0
    123a:	e98080e7          	jalr	-360(ra) # 10ce <putc>
    123e:	4901                	li	s2,0
    1240:	b765                	j	11e8 <vprintf+0x62>
    1242:	008a8493          	addi	s1,s5,8
    1246:	4685                	li	a3,1
    1248:	4629                	li	a2,10
    124a:	000aa583          	lw	a1,0(s5)
    124e:	8552                	mv	a0,s4
    1250:	00000097          	auipc	ra,0x0
    1254:	e9a080e7          	jalr	-358(ra) # 10ea <printint>
    1258:	8aa6                	mv	s5,s1
    125a:	4901                	li	s2,0
    125c:	b771                	j	11e8 <vprintf+0x62>
    125e:	008a8493          	addi	s1,s5,8
    1262:	4681                	li	a3,0
    1264:	4629                	li	a2,10
    1266:	000aa583          	lw	a1,0(s5)
    126a:	8552                	mv	a0,s4
    126c:	00000097          	auipc	ra,0x0
    1270:	e7e080e7          	jalr	-386(ra) # 10ea <printint>
    1274:	8aa6                	mv	s5,s1
    1276:	4901                	li	s2,0
    1278:	bf85                	j	11e8 <vprintf+0x62>
    127a:	008a8493          	addi	s1,s5,8
    127e:	4681                	li	a3,0
    1280:	4641                	li	a2,16
    1282:	000aa583          	lw	a1,0(s5)
    1286:	8552                	mv	a0,s4
    1288:	00000097          	auipc	ra,0x0
    128c:	e62080e7          	jalr	-414(ra) # 10ea <printint>
    1290:	8aa6                	mv	s5,s1
    1292:	4901                	li	s2,0
    1294:	bf91                	j	11e8 <vprintf+0x62>
    1296:	008a8913          	addi	s2,s5,8
    129a:	000aba83          	ld	s5,0(s5)
    129e:	03000593          	li	a1,48
    12a2:	8552                	mv	a0,s4
    12a4:	00000097          	auipc	ra,0x0
    12a8:	e2a080e7          	jalr	-470(ra) # 10ce <putc>
    12ac:	85e6                	mv	a1,s9
    12ae:	8552                	mv	a0,s4
    12b0:	00000097          	auipc	ra,0x0
    12b4:	e1e080e7          	jalr	-482(ra) # 10ce <putc>
    12b8:	44c1                	li	s1,16
    12ba:	03cad793          	srli	a5,s5,0x3c
    12be:	97da                	add	a5,a5,s6
    12c0:	0007c583          	lbu	a1,0(a5)
    12c4:	8552                	mv	a0,s4
    12c6:	00000097          	auipc	ra,0x0
    12ca:	e08080e7          	jalr	-504(ra) # 10ce <putc>
    12ce:	0a92                	slli	s5,s5,0x4
    12d0:	34fd                	addiw	s1,s1,-1
    12d2:	f4e5                	bnez	s1,12ba <vprintf+0x134>
    12d4:	8aca                	mv	s5,s2
    12d6:	4901                	li	s2,0
    12d8:	bf01                	j	11e8 <vprintf+0x62>
    12da:	008a8913          	addi	s2,s5,8
    12de:	000ab483          	ld	s1,0(s5)
    12e2:	c085                	beqz	s1,1302 <vprintf+0x17c>
    12e4:	0004c583          	lbu	a1,0(s1)
    12e8:	c5b1                	beqz	a1,1334 <vprintf+0x1ae>
    12ea:	8552                	mv	a0,s4
    12ec:	00000097          	auipc	ra,0x0
    12f0:	de2080e7          	jalr	-542(ra) # 10ce <putc>
    12f4:	0485                	addi	s1,s1,1
    12f6:	0004c583          	lbu	a1,0(s1)
    12fa:	f9e5                	bnez	a1,12ea <vprintf+0x164>
    12fc:	8aca                	mv	s5,s2
    12fe:	4901                	li	s2,0
    1300:	b5e5                	j	11e8 <vprintf+0x62>
    1302:	d98d8493          	addi	s1,s11,-616 # 1d98 <mkdir+0xec>
    1306:	02800593          	li	a1,40
    130a:	b7c5                	j	12ea <vprintf+0x164>
    130c:	008a8493          	addi	s1,s5,8
    1310:	000ac583          	lbu	a1,0(s5)
    1314:	8552                	mv	a0,s4
    1316:	00000097          	auipc	ra,0x0
    131a:	db8080e7          	jalr	-584(ra) # 10ce <putc>
    131e:	8aa6                	mv	s5,s1
    1320:	4901                	li	s2,0
    1322:	b5d9                	j	11e8 <vprintf+0x62>
    1324:	85ce                	mv	a1,s3
    1326:	8552                	mv	a0,s4
    1328:	00000097          	auipc	ra,0x0
    132c:	da6080e7          	jalr	-602(ra) # 10ce <putc>
    1330:	4901                	li	s2,0
    1332:	bd5d                	j	11e8 <vprintf+0x62>
    1334:	8aca                	mv	s5,s2
    1336:	4901                	li	s2,0
    1338:	bd45                	j	11e8 <vprintf+0x62>
    133a:	70a6                	ld	ra,104(sp)
    133c:	7406                	ld	s0,96(sp)
    133e:	64e6                	ld	s1,88(sp)
    1340:	6946                	ld	s2,80(sp)
    1342:	69a6                	ld	s3,72(sp)
    1344:	6a06                	ld	s4,64(sp)
    1346:	7ae2                	ld	s5,56(sp)
    1348:	7b42                	ld	s6,48(sp)
    134a:	7ba2                	ld	s7,40(sp)
    134c:	7c02                	ld	s8,32(sp)
    134e:	6ce2                	ld	s9,24(sp)
    1350:	6d42                	ld	s10,16(sp)
    1352:	6da2                	ld	s11,8(sp)
    1354:	6165                	addi	sp,sp,112
    1356:	8082                	ret

0000000000001358 <fprintf>:
    1358:	715d                	addi	sp,sp,-80
    135a:	ec06                	sd	ra,24(sp)
    135c:	f032                	sd	a2,32(sp)
    135e:	f436                	sd	a3,40(sp)
    1360:	f83a                	sd	a4,48(sp)
    1362:	fc3e                	sd	a5,56(sp)
    1364:	e0c2                	sd	a6,64(sp)
    1366:	e4c6                	sd	a7,72(sp)
    1368:	1010                	addi	a2,sp,32
    136a:	e432                	sd	a2,8(sp)
    136c:	00000097          	auipc	ra,0x0
    1370:	e1a080e7          	jalr	-486(ra) # 1186 <vprintf>
    1374:	60e2                	ld	ra,24(sp)
    1376:	6161                	addi	sp,sp,80
    1378:	8082                	ret

000000000000137a <printf>:
    137a:	711d                	addi	sp,sp,-96
    137c:	ec06                	sd	ra,24(sp)
    137e:	f42e                	sd	a1,40(sp)
    1380:	f832                	sd	a2,48(sp)
    1382:	fc36                	sd	a3,56(sp)
    1384:	e0ba                	sd	a4,64(sp)
    1386:	e4be                	sd	a5,72(sp)
    1388:	e8c2                	sd	a6,80(sp)
    138a:	ecc6                	sd	a7,88(sp)
    138c:	1030                	addi	a2,sp,40
    138e:	e432                	sd	a2,8(sp)
    1390:	85aa                	mv	a1,a0
    1392:	4505                	li	a0,1
    1394:	00000097          	auipc	ra,0x0
    1398:	df2080e7          	jalr	-526(ra) # 1186 <vprintf>
    139c:	60e2                	ld	ra,24(sp)
    139e:	6125                	addi	sp,sp,96
    13a0:	8082                	ret

00000000000013a2 <cksum>:
    13a2:	cdb1                	beqz	a1,13fe <cksum+0x5c>
    13a4:	00b50833          	add	a6,a0,a1
    13a8:	4781                	li	a5,0
    13aa:	00002637          	lui	a2,0x2
    13ae:	db860613          	addi	a2,a2,-584 # 1db8 <crctab>
    13b2:	0505                	addi	a0,a0,1
    13b4:	0087969b          	slliw	a3,a5,0x8
    13b8:	0187d71b          	srliw	a4,a5,0x18
    13bc:	fff54783          	lbu	a5,-1(a0)
    13c0:	8f3d                	xor	a4,a4,a5
    13c2:	1702                	slli	a4,a4,0x20
    13c4:	9301                	srli	a4,a4,0x20
    13c6:	070a                	slli	a4,a4,0x2
    13c8:	9732                	add	a4,a4,a2
    13ca:	431c                	lw	a5,0(a4)
    13cc:	8fb5                	xor	a5,a5,a3
    13ce:	2781                	sext.w	a5,a5
    13d0:	fea811e3          	bne	a6,a0,13b2 <cksum+0x10>
    13d4:	00002637          	lui	a2,0x2
    13d8:	db860613          	addi	a2,a2,-584 # 1db8 <crctab>
    13dc:	0ff5f693          	andi	a3,a1,255
    13e0:	81a1                	srli	a1,a1,0x8
    13e2:	0087951b          	slliw	a0,a5,0x8
    13e6:	0187d71b          	srliw	a4,a5,0x18
    13ea:	8f35                	xor	a4,a4,a3
    13ec:	070a                	slli	a4,a4,0x2
    13ee:	9732                	add	a4,a4,a2
    13f0:	431c                	lw	a5,0(a4)
    13f2:	8fa9                	xor	a5,a5,a0
    13f4:	2781                	sext.w	a5,a5
    13f6:	f1fd                	bnez	a1,13dc <cksum+0x3a>
    13f8:	fff7c513          	not	a0,a5
    13fc:	8082                	ret
    13fe:	4781                	li	a5,0
    1400:	bfe5                	j	13f8 <cksum+0x56>

0000000000001402 <swap_bytes>:
    1402:	ce19                	beqz	a2,1420 <swap_bytes+0x1e>
    1404:	87aa                	mv	a5,a0
    1406:	962a                	add	a2,a2,a0
    1408:	0007c703          	lbu	a4,0(a5)
    140c:	0005c683          	lbu	a3,0(a1)
    1410:	00d78023          	sb	a3,0(a5)
    1414:	00e58023          	sb	a4,0(a1)
    1418:	0785                	addi	a5,a5,1
    141a:	0585                	addi	a1,a1,1
    141c:	fec796e3          	bne	a5,a2,1408 <swap_bytes+0x6>
    1420:	8082                	ret

0000000000001422 <random_init>:
    1422:	7139                	addi	sp,sp,-64
    1424:	fc06                	sd	ra,56(sp)
    1426:	f822                	sd	s0,48(sp)
    1428:	f426                	sd	s1,40(sp)
    142a:	f04a                	sd	s2,32(sp)
    142c:	ec4e                	sd	s3,24(sp)
    142e:	e852                	sd	s4,16(sp)
    1430:	c62a                	sw	a0,12(sp)
    1432:	000037b7          	lui	a5,0x3
    1436:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    143a:	eca5                	bnez	s1,14b2 <random_init+0x90>
    143c:	00003737          	lui	a4,0x3
    1440:	01070913          	addi	s2,a4,16 # 3010 <s>
    1444:	01070713          	addi	a4,a4,16
    1448:	87a6                	mv	a5,s1
    144a:	10000693          	li	a3,256
    144e:	00f70023          	sb	a5,0(a4)
    1452:	2785                	addiw	a5,a5,1
    1454:	0705                	addi	a4,a4,1
    1456:	fed79ce3          	bne	a5,a3,144e <random_init+0x2c>
    145a:	4401                	li	s0,0
    145c:	000039b7          	lui	s3,0x3
    1460:	01098993          	addi	s3,s3,16 # 3010 <s>
    1464:	10000a13          	li	s4,256
    1468:	0034f793          	andi	a5,s1,3
    146c:	0818                	addi	a4,sp,16
    146e:	97ba                	add	a5,a5,a4
    1470:	ffc7c783          	lbu	a5,-4(a5)
    1474:	00094703          	lbu	a4,0(s2)
    1478:	9fb9                	addw	a5,a5,a4
    147a:	9c3d                	addw	s0,s0,a5
    147c:	0ff47413          	andi	s0,s0,255
    1480:	4605                	li	a2,1
    1482:	008985b3          	add	a1,s3,s0
    1486:	854a                	mv	a0,s2
    1488:	00000097          	auipc	ra,0x0
    148c:	f7a080e7          	jalr	-134(ra) # 1402 <swap_bytes>
    1490:	2485                	addiw	s1,s1,1
    1492:	0905                	addi	s2,s2,1
    1494:	fd449ae3          	bne	s1,s4,1468 <random_init+0x46>
    1498:	000037b7          	lui	a5,0x3
    149c:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14a0:	000037b7          	lui	a5,0x3
    14a4:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14a8:	000037b7          	lui	a5,0x3
    14ac:	4705                	li	a4,1
    14ae:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14b2:	70e2                	ld	ra,56(sp)
    14b4:	7442                	ld	s0,48(sp)
    14b6:	74a2                	ld	s1,40(sp)
    14b8:	7902                	ld	s2,32(sp)
    14ba:	69e2                	ld	s3,24(sp)
    14bc:	6a42                	ld	s4,16(sp)
    14be:	6121                	addi	sp,sp,64
    14c0:	8082                	ret

00000000000014c2 <random_bytes>:
    14c2:	7139                	addi	sp,sp,-64
    14c4:	fc06                	sd	ra,56(sp)
    14c6:	f822                	sd	s0,48(sp)
    14c8:	f426                	sd	s1,40(sp)
    14ca:	f04a                	sd	s2,32(sp)
    14cc:	ec4e                	sd	s3,24(sp)
    14ce:	e852                	sd	s4,16(sp)
    14d0:	e456                	sd	s5,8(sp)
    14d2:	e05a                	sd	s6,0(sp)
    14d4:	892a                	mv	s2,a0
    14d6:	8aae                	mv	s5,a1
    14d8:	000037b7          	lui	a5,0x3
    14dc:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14e0:	c3c1                	beqz	a5,1560 <random_bytes+0x9e>
    14e2:	060a8563          	beqz	s5,154c <random_bytes+0x8a>
    14e6:	9aca                	add	s5,s5,s2
    14e8:	00003a37          	lui	s4,0x3
    14ec:	000034b7          	lui	s1,0x3
    14f0:	01048493          	addi	s1,s1,16 # 3010 <s>
    14f4:	000039b7          	lui	s3,0x3
    14f8:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14fc:	2505                	addiw	a0,a0,1
    14fe:	0ff57513          	andi	a0,a0,255
    1502:	00aa02a3          	sb	a0,5(s4)
    1506:	00a48b33          	add	s6,s1,a0
    150a:	000b4403          	lbu	s0,0(s6)
    150e:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1512:	9c3d                	addw	s0,s0,a5
    1514:	0ff47413          	andi	s0,s0,255
    1518:	00898223          	sb	s0,4(s3)
    151c:	4605                	li	a2,1
    151e:	008485b3          	add	a1,s1,s0
    1522:	855a                	mv	a0,s6
    1524:	00000097          	auipc	ra,0x0
    1528:	ede080e7          	jalr	-290(ra) # 1402 <swap_bytes>
    152c:	9426                	add	s0,s0,s1
    152e:	000b4783          	lbu	a5,0(s6)
    1532:	00044703          	lbu	a4,0(s0)
    1536:	9fb9                	addw	a5,a5,a4
    1538:	0ff7f793          	andi	a5,a5,255
    153c:	97a6                	add	a5,a5,s1
    153e:	0007c783          	lbu	a5,0(a5)
    1542:	00f90023          	sb	a5,0(s2)
    1546:	0905                	addi	s2,s2,1
    1548:	fb2a98e3          	bne	s5,s2,14f8 <random_bytes+0x36>
    154c:	70e2                	ld	ra,56(sp)
    154e:	7442                	ld	s0,48(sp)
    1550:	74a2                	ld	s1,40(sp)
    1552:	7902                	ld	s2,32(sp)
    1554:	69e2                	ld	s3,24(sp)
    1556:	6a42                	ld	s4,16(sp)
    1558:	6aa2                	ld	s5,8(sp)
    155a:	6b02                	ld	s6,0(sp)
    155c:	6121                	addi	sp,sp,64
    155e:	8082                	ret
    1560:	4501                	li	a0,0
    1562:	00000097          	auipc	ra,0x0
    1566:	ec0080e7          	jalr	-320(ra) # 1422 <random_init>
    156a:	bfa5                	j	14e2 <random_bytes+0x20>

000000000000156c <random_ulong>:
    156c:	1101                	addi	sp,sp,-32
    156e:	ec06                	sd	ra,24(sp)
    1570:	45a1                	li	a1,8
    1572:	0028                	addi	a0,sp,8
    1574:	00000097          	auipc	ra,0x0
    1578:	f4e080e7          	jalr	-178(ra) # 14c2 <random_bytes>
    157c:	6522                	ld	a0,8(sp)
    157e:	60e2                	ld	ra,24(sp)
    1580:	6105                	addi	sp,sp,32
    1582:	8082                	ret

0000000000001584 <shuffle>:
    1584:	c9b9                	beqz	a1,15da <shuffle+0x56>
    1586:	7179                	addi	sp,sp,-48
    1588:	f406                	sd	ra,40(sp)
    158a:	f022                	sd	s0,32(sp)
    158c:	ec26                	sd	s1,24(sp)
    158e:	e84a                	sd	s2,16(sp)
    1590:	e44e                	sd	s3,8(sp)
    1592:	e052                	sd	s4,0(sp)
    1594:	8a2a                	mv	s4,a0
    1596:	89ae                	mv	s3,a1
    1598:	84b2                	mv	s1,a2
    159a:	892a                	mv	s2,a0
    159c:	4401                	li	s0,0
    159e:	00000097          	auipc	ra,0x0
    15a2:	fce080e7          	jalr	-50(ra) # 156c <random_ulong>
    15a6:	408985b3          	sub	a1,s3,s0
    15aa:	02b575b3          	remu	a1,a0,a1
    15ae:	95a2                	add	a1,a1,s0
    15b0:	029585b3          	mul	a1,a1,s1
    15b4:	8626                	mv	a2,s1
    15b6:	95d2                	add	a1,a1,s4
    15b8:	854a                	mv	a0,s2
    15ba:	00000097          	auipc	ra,0x0
    15be:	e48080e7          	jalr	-440(ra) # 1402 <swap_bytes>
    15c2:	0405                	addi	s0,s0,1
    15c4:	9926                	add	s2,s2,s1
    15c6:	fc899ce3          	bne	s3,s0,159e <shuffle+0x1a>
    15ca:	70a2                	ld	ra,40(sp)
    15cc:	7402                	ld	s0,32(sp)
    15ce:	64e2                	ld	s1,24(sp)
    15d0:	6942                	ld	s2,16(sp)
    15d2:	69a2                	ld	s3,8(sp)
    15d4:	6a02                	ld	s4,0(sp)
    15d6:	6145                	addi	sp,sp,48
    15d8:	8082                	ret
    15da:	8082                	ret

00000000000015dc <arc4_init>:
    15dc:	100500a3          	sb	zero,257(a0)
    15e0:	10050023          	sb	zero,256(a0)
    15e4:	4781                	li	a5,0
    15e6:	10000693          	li	a3,256
    15ea:	00f50733          	add	a4,a0,a5
    15ee:	00f70023          	sb	a5,0(a4)
    15f2:	0785                	addi	a5,a5,1
    15f4:	fed79be3          	bne	a5,a3,15ea <arc4_init+0xe>
    15f8:	86aa                	mv	a3,a0
    15fa:	10050e13          	addi	t3,a0,256
    15fe:	4701                	li	a4,0
    1600:	4781                	li	a5,0
    1602:	0006c883          	lbu	a7,0(a3)
    1606:	00f58833          	add	a6,a1,a5
    160a:	00084803          	lbu	a6,0(a6)
    160e:	00e8873b          	addw	a4,a7,a4
    1612:	00e8073b          	addw	a4,a6,a4
    1616:	0ff77713          	andi	a4,a4,255
    161a:	00e50833          	add	a6,a0,a4
    161e:	00084303          	lbu	t1,0(a6)
    1622:	00668023          	sb	t1,0(a3)
    1626:	01180023          	sb	a7,0(a6)
    162a:	0785                	addi	a5,a5,1
    162c:	00c7b833          	sltu	a6,a5,a2
    1630:	41000833          	neg	a6,a6
    1634:	0107f7b3          	and	a5,a5,a6
    1638:	0685                	addi	a3,a3,1
    163a:	fdc694e3          	bne	a3,t3,1602 <arc4_init+0x26>
    163e:	8082                	ret

0000000000001640 <arc4_crypt>:
    1640:	10054e03          	lbu	t3,256(a0)
    1644:	10154803          	lbu	a6,257(a0)
    1648:	fff60e93          	addi	t4,a2,-1
    164c:	c225                	beqz	a2,16ac <arc4_crypt+0x6c>
    164e:	00c588b3          	add	a7,a1,a2
    1652:	86ae                	mv	a3,a1
    1654:	001e031b          	addiw	t1,t3,1
    1658:	40b3033b          	subw	t1,t1,a1
    165c:	00d3073b          	addw	a4,t1,a3
    1660:	0ff77713          	andi	a4,a4,255
    1664:	972a                	add	a4,a4,a0
    1666:	00074603          	lbu	a2,0(a4)
    166a:	0106083b          	addw	a6,a2,a6
    166e:	0ff87813          	andi	a6,a6,255
    1672:	010507b3          	add	a5,a0,a6
    1676:	0007c583          	lbu	a1,0(a5)
    167a:	00b70023          	sb	a1,0(a4)
    167e:	00c78023          	sb	a2,0(a5)
    1682:	0685                	addi	a3,a3,1
    1684:	00074783          	lbu	a5,0(a4)
    1688:	9fb1                	addw	a5,a5,a2
    168a:	0ff7f793          	andi	a5,a5,255
    168e:	97aa                	add	a5,a5,a0
    1690:	0007c783          	lbu	a5,0(a5)
    1694:	fff6c703          	lbu	a4,-1(a3)
    1698:	8fb9                	xor	a5,a5,a4
    169a:	fef68fa3          	sb	a5,-1(a3)
    169e:	fb169fe3          	bne	a3,a7,165c <arc4_crypt+0x1c>
    16a2:	2e85                	addiw	t4,t4,1
    16a4:	01ce8e3b          	addw	t3,t4,t3
    16a8:	0ffe7e13          	andi	t3,t3,255
    16ac:	11c50023          	sb	t3,256(a0)
    16b0:	110500a3          	sb	a6,257(a0)
    16b4:	8082                	ret

00000000000016b6 <_main>:
    16b6:	1141                	addi	sp,sp,-16
    16b8:	e406                	sd	ra,8(sp)
    16ba:	00000097          	auipc	ra,0x0
    16be:	946080e7          	jalr	-1722(ra) # 1000 <main>
    16c2:	4501                	li	a0,0
    16c4:	00000097          	auipc	ra,0x0
    16c8:	578080e7          	jalr	1400(ra) # 1c3c <exit>
    16cc:	60a2                	ld	ra,8(sp)
    16ce:	0141                	addi	sp,sp,16
    16d0:	8082                	ret

00000000000016d2 <strcmp>:
    16d2:	00054783          	lbu	a5,0(a0)
    16d6:	cb91                	beqz	a5,16ea <strcmp+0x18>
    16d8:	0005c703          	lbu	a4,0(a1)
    16dc:	00f71763          	bne	a4,a5,16ea <strcmp+0x18>
    16e0:	0505                	addi	a0,a0,1
    16e2:	0585                	addi	a1,a1,1
    16e4:	00054783          	lbu	a5,0(a0)
    16e8:	fbe5                	bnez	a5,16d8 <strcmp+0x6>
    16ea:	0005c503          	lbu	a0,0(a1)
    16ee:	40a7853b          	subw	a0,a5,a0
    16f2:	8082                	ret

00000000000016f4 <strcpy>:
    16f4:	87aa                	mv	a5,a0
    16f6:	0585                	addi	a1,a1,1
    16f8:	0785                	addi	a5,a5,1
    16fa:	fff5c703          	lbu	a4,-1(a1)
    16fe:	fee78fa3          	sb	a4,-1(a5)
    1702:	fb75                	bnez	a4,16f6 <strcpy+0x2>
    1704:	8082                	ret

0000000000001706 <strlen>:
    1706:	00054783          	lbu	a5,0(a0)
    170a:	cf81                	beqz	a5,1722 <strlen+0x1c>
    170c:	0505                	addi	a0,a0,1
    170e:	87aa                	mv	a5,a0
    1710:	4685                	li	a3,1
    1712:	9e89                	subw	a3,a3,a0
    1714:	00f6853b          	addw	a0,a3,a5
    1718:	0785                	addi	a5,a5,1
    171a:	fff7c703          	lbu	a4,-1(a5)
    171e:	fb7d                	bnez	a4,1714 <strlen+0xe>
    1720:	8082                	ret
    1722:	4501                	li	a0,0
    1724:	8082                	ret

0000000000001726 <memset>:
    1726:	ca19                	beqz	a2,173c <memset+0x16>
    1728:	87aa                	mv	a5,a0
    172a:	1602                	slli	a2,a2,0x20
    172c:	9201                	srli	a2,a2,0x20
    172e:	00a60733          	add	a4,a2,a0
    1732:	00b78023          	sb	a1,0(a5)
    1736:	0785                	addi	a5,a5,1
    1738:	fee79de3          	bne	a5,a4,1732 <memset+0xc>
    173c:	8082                	ret

000000000000173e <memcmp>:
    173e:	1101                	addi	sp,sp,-32
    1740:	ec06                	sd	ra,24(sp)
    1742:	e822                	sd	s0,16(sp)
    1744:	e426                	sd	s1,8(sp)
    1746:	e04a                	sd	s2,0(sp)
    1748:	892a                	mv	s2,a0
    174a:	842e                	mv	s0,a1
    174c:	84b2                	mv	s1,a2
    174e:	c915                	beqz	a0,1782 <memcmp+0x44>
    1750:	c5ad                	beqz	a1,17ba <memcmp+0x7c>
    1752:	fff60713          	addi	a4,a2,-1
    1756:	c645                	beqz	a2,17fe <memcmp+0xc0>
    1758:	87ca                	mv	a5,s2
    175a:	00190613          	addi	a2,s2,1
    175e:	963a                	add	a2,a2,a4
    1760:	0007c683          	lbu	a3,0(a5)
    1764:	00044703          	lbu	a4,0(s0)
    1768:	08e69463          	bne	a3,a4,17f0 <memcmp+0xb2>
    176c:	0785                	addi	a5,a5,1
    176e:	0405                	addi	s0,s0,1
    1770:	fec798e3          	bne	a5,a2,1760 <memcmp+0x22>
    1774:	4501                	li	a0,0
    1776:	60e2                	ld	ra,24(sp)
    1778:	6442                	ld	s0,16(sp)
    177a:	64a2                	ld	s1,8(sp)
    177c:	6902                	ld	s2,0(sp)
    177e:	6105                	addi	sp,sp,32
    1780:	8082                	ret
    1782:	4501                	li	a0,0
    1784:	da6d                	beqz	a2,1776 <memcmp+0x38>
    1786:	03200693          	li	a3,50
    178a:	00002637          	lui	a2,0x2
    178e:	1b860613          	addi	a2,a2,440 # 21b8 <crctab+0x400>
    1792:	000025b7          	lui	a1,0x2
    1796:	1c858593          	addi	a1,a1,456 # 21c8 <crctab+0x410>
    179a:	4509                	li	a0,2
    179c:	00000097          	auipc	ra,0x0
    17a0:	bbc080e7          	jalr	-1092(ra) # 1358 <fprintf>
    17a4:	650d                	lui	a0,0x3
    17a6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17aa:	00000097          	auipc	ra,0x0
    17ae:	492080e7          	jalr	1170(ra) # 1c3c <exit>
    17b2:	fff48713          	addi	a4,s1,-1
    17b6:	f04d                	bnez	s0,1758 <memcmp+0x1a>
    17b8:	a011                	j	17bc <memcmp+0x7e>
    17ba:	c221                	beqz	a2,17fa <memcmp+0xbc>
    17bc:	03300693          	li	a3,51
    17c0:	00002637          	lui	a2,0x2
    17c4:	1b860613          	addi	a2,a2,440 # 21b8 <crctab+0x400>
    17c8:	000025b7          	lui	a1,0x2
    17cc:	21058593          	addi	a1,a1,528 # 2210 <crctab+0x458>
    17d0:	4509                	li	a0,2
    17d2:	00000097          	auipc	ra,0x0
    17d6:	b86080e7          	jalr	-1146(ra) # 1358 <fprintf>
    17da:	650d                	lui	a0,0x3
    17dc:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17e0:	00000097          	auipc	ra,0x0
    17e4:	45c080e7          	jalr	1116(ra) # 1c3c <exit>
    17e8:	fff48713          	addi	a4,s1,-1
    17ec:	4401                	li	s0,0
    17ee:	b7ad                	j	1758 <memcmp+0x1a>
    17f0:	4505                	li	a0,1
    17f2:	f8d762e3          	bltu	a4,a3,1776 <memcmp+0x38>
    17f6:	557d                	li	a0,-1
    17f8:	bfbd                	j	1776 <memcmp+0x38>
    17fa:	4501                	li	a0,0
    17fc:	bfad                	j	1776 <memcmp+0x38>
    17fe:	4501                	li	a0,0
    1800:	bf9d                	j	1776 <memcmp+0x38>

0000000000001802 <memcpy>:
    1802:	1101                	addi	sp,sp,-32
    1804:	ec06                	sd	ra,24(sp)
    1806:	e822                	sd	s0,16(sp)
    1808:	e426                	sd	s1,8(sp)
    180a:	e04a                	sd	s2,0(sp)
    180c:	84aa                	mv	s1,a0
    180e:	842e                	mv	s0,a1
    1810:	8932                	mv	s2,a2
    1812:	c51d                	beqz	a0,1840 <memcpy+0x3e>
    1814:	c1ad                	beqz	a1,1876 <memcpy+0x74>
    1816:	fff60693          	addi	a3,a2,-1
    181a:	ce01                	beqz	a2,1832 <memcpy+0x30>
    181c:	0685                	addi	a3,a3,1
    181e:	96a6                	add	a3,a3,s1
    1820:	87a6                	mv	a5,s1
    1822:	0405                	addi	s0,s0,1
    1824:	0785                	addi	a5,a5,1
    1826:	fff44703          	lbu	a4,-1(s0)
    182a:	fee78fa3          	sb	a4,-1(a5)
    182e:	fed79ae3          	bne	a5,a3,1822 <memcpy+0x20>
    1832:	8526                	mv	a0,s1
    1834:	60e2                	ld	ra,24(sp)
    1836:	6442                	ld	s0,16(sp)
    1838:	64a2                	ld	s1,8(sp)
    183a:	6902                	ld	s2,0(sp)
    183c:	6105                	addi	sp,sp,32
    183e:	8082                	ret
    1840:	da6d                	beqz	a2,1832 <memcpy+0x30>
    1842:	04000693          	li	a3,64
    1846:	00002637          	lui	a2,0x2
    184a:	1b860613          	addi	a2,a2,440 # 21b8 <crctab+0x400>
    184e:	000025b7          	lui	a1,0x2
    1852:	25858593          	addi	a1,a1,600 # 2258 <crctab+0x4a0>
    1856:	4509                	li	a0,2
    1858:	00000097          	auipc	ra,0x0
    185c:	b00080e7          	jalr	-1280(ra) # 1358 <fprintf>
    1860:	650d                	lui	a0,0x3
    1862:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1866:	00000097          	auipc	ra,0x0
    186a:	3d6080e7          	jalr	982(ra) # 1c3c <exit>
    186e:	fff90693          	addi	a3,s2,-1
    1872:	f44d                	bnez	s0,181c <memcpy+0x1a>
    1874:	a011                	j	1878 <memcpy+0x76>
    1876:	de55                	beqz	a2,1832 <memcpy+0x30>
    1878:	04100693          	li	a3,65
    187c:	00002637          	lui	a2,0x2
    1880:	1b860613          	addi	a2,a2,440 # 21b8 <crctab+0x400>
    1884:	000025b7          	lui	a1,0x2
    1888:	2a058593          	addi	a1,a1,672 # 22a0 <crctab+0x4e8>
    188c:	4509                	li	a0,2
    188e:	00000097          	auipc	ra,0x0
    1892:	aca080e7          	jalr	-1334(ra) # 1358 <fprintf>
    1896:	650d                	lui	a0,0x3
    1898:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    189c:	00000097          	auipc	ra,0x0
    18a0:	3a0080e7          	jalr	928(ra) # 1c3c <exit>
    18a4:	fff90693          	addi	a3,s2,-1
    18a8:	4401                	li	s0,0
    18aa:	bf8d                	j	181c <memcpy+0x1a>

00000000000018ac <itoa>:
    18ac:	1101                	addi	sp,sp,-32
    18ae:	ec06                	sd	ra,24(sp)
    18b0:	e822                	sd	s0,16(sp)
    18b2:	e426                	sd	s1,8(sp)
    18b4:	842a                	mv	s0,a0
    18b6:	41f5d71b          	sraiw	a4,a1,0x1f
    18ba:	00e5c7b3          	xor	a5,a1,a4
    18be:	9f99                	subw	a5,a5,a4
    18c0:	84aa                	mv	s1,a0
    18c2:	862a                	mv	a2,a0
    18c4:	4681                	li	a3,0
    18c6:	4529                	li	a0,10
    18c8:	4825                	li	a6,9
    18ca:	88b6                	mv	a7,a3
    18cc:	2685                	addiw	a3,a3,1
    18ce:	02a7e73b          	remw	a4,a5,a0
    18d2:	0307071b          	addiw	a4,a4,48
    18d6:	00e60023          	sb	a4,0(a2)
    18da:	873e                	mv	a4,a5
    18dc:	02a7c7bb          	divw	a5,a5,a0
    18e0:	0605                	addi	a2,a2,1
    18e2:	fee844e3          	blt	a6,a4,18ca <itoa+0x1e>
    18e6:	0405c863          	bltz	a1,1936 <itoa+0x8a>
    18ea:	96a2                	add	a3,a3,s0
    18ec:	00068023          	sb	zero,0(a3)
    18f0:	8522                	mv	a0,s0
    18f2:	00000097          	auipc	ra,0x0
    18f6:	e14080e7          	jalr	-492(ra) # 1706 <strlen>
    18fa:	fff5071b          	addiw	a4,a0,-1
    18fe:	02e05763          	blez	a4,192c <itoa+0x80>
    1902:	9722                	add	a4,a4,s0
    1904:	4681                	li	a3,0
    1906:	0004c783          	lbu	a5,0(s1)
    190a:	00074603          	lbu	a2,0(a4)
    190e:	00c48023          	sb	a2,0(s1)
    1912:	00f70023          	sb	a5,0(a4)
    1916:	0016879b          	addiw	a5,a3,1
    191a:	0007869b          	sext.w	a3,a5
    191e:	0485                	addi	s1,s1,1
    1920:	177d                	addi	a4,a4,-1
    1922:	fff7c793          	not	a5,a5
    1926:	9fa9                	addw	a5,a5,a0
    1928:	fcf6cfe3          	blt	a3,a5,1906 <itoa+0x5a>
    192c:	60e2                	ld	ra,24(sp)
    192e:	6442                	ld	s0,16(sp)
    1930:	64a2                	ld	s1,8(sp)
    1932:	6105                	addi	sp,sp,32
    1934:	8082                	ret
    1936:	96a2                	add	a3,a3,s0
    1938:	02d00793          	li	a5,45
    193c:	00f68023          	sb	a5,0(a3)
    1940:	0028869b          	addiw	a3,a7,2
    1944:	b75d                	j	18ea <itoa+0x3e>

0000000000001946 <atoi>:
    1946:	00054783          	lbu	a5,0(a0)
    194a:	02000713          	li	a4,32
    194e:	00e79763          	bne	a5,a4,195c <atoi+0x16>
    1952:	0505                	addi	a0,a0,1
    1954:	00054783          	lbu	a5,0(a0)
    1958:	fee78de3          	beq	a5,a4,1952 <atoi+0xc>
    195c:	02b00713          	li	a4,43
    1960:	04e78663          	beq	a5,a4,19ac <atoi+0x66>
    1964:	02d00713          	li	a4,45
    1968:	4805                	li	a6,1
    196a:	04e78463          	beq	a5,a4,19b2 <atoi+0x6c>
    196e:	00054683          	lbu	a3,0(a0)
    1972:	fd06879b          	addiw	a5,a3,-48
    1976:	0ff7f793          	andi	a5,a5,255
    197a:	4725                	li	a4,9
    197c:	02f76e63          	bltu	a4,a5,19b8 <atoi+0x72>
    1980:	4601                	li	a2,0
    1982:	45a5                	li	a1,9
    1984:	0505                	addi	a0,a0,1
    1986:	0026179b          	slliw	a5,a2,0x2
    198a:	9fb1                	addw	a5,a5,a2
    198c:	0017979b          	slliw	a5,a5,0x1
    1990:	9fb5                	addw	a5,a5,a3
    1992:	fd07861b          	addiw	a2,a5,-48
    1996:	00054683          	lbu	a3,0(a0)
    199a:	fd06871b          	addiw	a4,a3,-48
    199e:	0ff77713          	andi	a4,a4,255
    19a2:	fee5f1e3          	bgeu	a1,a4,1984 <atoi+0x3e>
    19a6:	02c8053b          	mulw	a0,a6,a2
    19aa:	8082                	ret
    19ac:	0505                	addi	a0,a0,1
    19ae:	4805                	li	a6,1
    19b0:	bf7d                	j	196e <atoi+0x28>
    19b2:	0505                	addi	a0,a0,1
    19b4:	587d                	li	a6,-1
    19b6:	bf65                	j	196e <atoi+0x28>
    19b8:	4601                	li	a2,0
    19ba:	b7f5                	j	19a6 <atoi+0x60>

00000000000019bc <check_file_handle>:
    19bc:	d8010113          	addi	sp,sp,-640
    19c0:	26113c23          	sd	ra,632(sp)
    19c4:	26813823          	sd	s0,624(sp)
    19c8:	26913423          	sd	s1,616(sp)
    19cc:	27213023          	sd	s2,608(sp)
    19d0:	25313c23          	sd	s3,600(sp)
    19d4:	25413823          	sd	s4,592(sp)
    19d8:	25513423          	sd	s5,584(sp)
    19dc:	25613023          	sd	s6,576(sp)
    19e0:	23713c23          	sd	s7,568(sp)
    19e4:	23813823          	sd	s8,560(sp)
    19e8:	23913423          	sd	s9,552(sp)
    19ec:	23a13023          	sd	s10,544(sp)
    19f0:	21b13c23          	sd	s11,536(sp)
    19f4:	8baa                	mv	s7,a0
    19f6:	8a2e                	mv	s4,a1
    19f8:	8c32                	mv	s8,a2
    19fa:	89b6                	mv	s3,a3
    19fc:	040c                	addi	a1,sp,512
    19fe:	00000097          	auipc	ra,0x0
    1a02:	28e080e7          	jalr	654(ra) # 1c8c <fstat>
    1a06:	20813603          	ld	a2,520(sp)
    1a0a:	03361163          	bne	a2,s3,1a2c <check_file_handle+0x70>
    1a0e:	06098763          	beqz	s3,1a7c <check_file_handle+0xc0>
    1a12:	4901                	li	s2,0
    1a14:	20000a93          	li	s5,512
    1a18:	00002cb7          	lui	s9,0x2
    1a1c:	00002db7          	lui	s11,0x2
    1a20:	6b0d                	lui	s6,0x3
    1a22:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a26:	00002d37          	lui	s10,0x2
    1a2a:	aa39                	j	1b48 <check_file_handle+0x18c>
    1a2c:	86ce                	mv	a3,s3
    1a2e:	85d2                	mv	a1,s4
    1a30:	00002537          	lui	a0,0x2
    1a34:	2e850513          	addi	a0,a0,744 # 22e8 <crctab+0x530>
    1a38:	00000097          	auipc	ra,0x0
    1a3c:	942080e7          	jalr	-1726(ra) # 137a <printf>
    1a40:	fc0999e3          	bnez	s3,1a12 <check_file_handle+0x56>
    1a44:	20813683          	ld	a3,520(sp)
    1a48:	03368a63          	beq	a3,s3,1a7c <check_file_handle+0xc0>
    1a4c:	0a600813          	li	a6,166
    1a50:	000027b7          	lui	a5,0x2
    1a54:	1b878793          	addi	a5,a5,440 # 21b8 <crctab+0x400>
    1a58:	874e                	mv	a4,s3
    1a5a:	8652                	mv	a2,s4
    1a5c:	000025b7          	lui	a1,0x2
    1a60:	3b858593          	addi	a1,a1,952 # 23b8 <crctab+0x600>
    1a64:	4509                	li	a0,2
    1a66:	00000097          	auipc	ra,0x0
    1a6a:	8f2080e7          	jalr	-1806(ra) # 1358 <fprintf>
    1a6e:	650d                	lui	a0,0x3
    1a70:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a74:	00000097          	auipc	ra,0x0
    1a78:	1c8080e7          	jalr	456(ra) # 1c3c <exit>
    1a7c:	85d2                	mv	a1,s4
    1a7e:	00002537          	lui	a0,0x2
    1a82:	40050513          	addi	a0,a0,1024 # 2400 <crctab+0x648>
    1a86:	00000097          	auipc	ra,0x0
    1a8a:	8f4080e7          	jalr	-1804(ra) # 137a <printf>
    1a8e:	27813083          	ld	ra,632(sp)
    1a92:	27013403          	ld	s0,624(sp)
    1a96:	26813483          	ld	s1,616(sp)
    1a9a:	26013903          	ld	s2,608(sp)
    1a9e:	25813983          	ld	s3,600(sp)
    1aa2:	25013a03          	ld	s4,592(sp)
    1aa6:	24813a83          	ld	s5,584(sp)
    1aaa:	24013b03          	ld	s6,576(sp)
    1aae:	23813b83          	ld	s7,568(sp)
    1ab2:	23013c03          	ld	s8,560(sp)
    1ab6:	22813c83          	ld	s9,552(sp)
    1aba:	22013d03          	ld	s10,544(sp)
    1abe:	21813d83          	ld	s11,536(sp)
    1ac2:	28010113          	addi	sp,sp,640
    1ac6:	8082                	ret
    1ac8:	09d00893          	li	a7,157
    1acc:	1b8c8813          	addi	a6,s9,440 # 21b8 <crctab+0x400>
    1ad0:	87aa                	mv	a5,a0
    1ad2:	8752                	mv	a4,s4
    1ad4:	86ca                	mv	a3,s2
    1ad6:	8622                	mv	a2,s0
    1ad8:	318d8593          	addi	a1,s11,792 # 2318 <crctab+0x560>
    1adc:	4509                	li	a0,2
    1ade:	00000097          	auipc	ra,0x0
    1ae2:	87a080e7          	jalr	-1926(ra) # 1358 <fprintf>
    1ae6:	855a                	mv	a0,s6
    1ae8:	00000097          	auipc	ra,0x0
    1aec:	154080e7          	jalr	340(ra) # 1c3c <exit>
    1af0:	a89d                	j	1b66 <check_file_handle+0x1aa>
    1af2:	00160593          	addi	a1,a2,1
    1af6:	0285f163          	bgeu	a1,s0,1b18 <check_file_handle+0x15c>
    1afa:	00c10733          	add	a4,sp,a2
    1afe:	00b487b3          	add	a5,s1,a1
    1b02:	00174683          	lbu	a3,1(a4)
    1b06:	0007c783          	lbu	a5,0(a5)
    1b0a:	00f68763          	beq	a3,a5,1b18 <check_file_handle+0x15c>
    1b0e:	0585                	addi	a1,a1,1
    1b10:	0705                	addi	a4,a4,1
    1b12:	feb416e3          	bne	s0,a1,1afe <check_file_handle+0x142>
    1b16:	85a2                	mv	a1,s0
    1b18:	08100813          	li	a6,129
    1b1c:	1b8c8793          	addi	a5,s9,440
    1b20:	8752                	mv	a4,s4
    1b22:	012606b3          	add	a3,a2,s2
    1b26:	40c58633          	sub	a2,a1,a2
    1b2a:	360d0593          	addi	a1,s10,864 # 2360 <crctab+0x5a8>
    1b2e:	4509                	li	a0,2
    1b30:	00000097          	auipc	ra,0x0
    1b34:	828080e7          	jalr	-2008(ra) # 1358 <fprintf>
    1b38:	855a                	mv	a0,s6
    1b3a:	00000097          	auipc	ra,0x0
    1b3e:	102080e7          	jalr	258(ra) # 1c3c <exit>
    1b42:	9922                	add	s2,s2,s0
    1b44:	f13970e3          	bgeu	s2,s3,1a44 <check_file_handle+0x88>
    1b48:	41298433          	sub	s0,s3,s2
    1b4c:	008af363          	bgeu	s5,s0,1b52 <check_file_handle+0x196>
    1b50:	8456                	mv	s0,s5
    1b52:	0004061b          	sext.w	a2,s0
    1b56:	858a                	mv	a1,sp
    1b58:	855e                	mv	a0,s7
    1b5a:	00000097          	auipc	ra,0x0
    1b5e:	10a080e7          	jalr	266(ra) # 1c64 <read>
    1b62:	f68513e3          	bne	a0,s0,1ac8 <check_file_handle+0x10c>
    1b66:	012c04b3          	add	s1,s8,s2
    1b6a:	8622                	mv	a2,s0
    1b6c:	85a6                	mv	a1,s1
    1b6e:	850a                	mv	a0,sp
    1b70:	00000097          	auipc	ra,0x0
    1b74:	bce080e7          	jalr	-1074(ra) # 173e <memcmp>
    1b78:	d569                	beqz	a0,1b42 <check_file_handle+0x186>
    1b7a:	03298163          	beq	s3,s2,1b9c <check_file_handle+0x1e0>
    1b7e:	870a                	mv	a4,sp
    1b80:	4601                	li	a2,0
    1b82:	00c487b3          	add	a5,s1,a2
    1b86:	00074683          	lbu	a3,0(a4)
    1b8a:	0007c783          	lbu	a5,0(a5)
    1b8e:	f6f692e3          	bne	a3,a5,1af2 <check_file_handle+0x136>
    1b92:	0605                	addi	a2,a2,1
    1b94:	0705                	addi	a4,a4,1
    1b96:	fe8666e3          	bltu	a2,s0,1b82 <check_file_handle+0x1c6>
    1b9a:	bfa1                	j	1af2 <check_file_handle+0x136>
    1b9c:	4601                	li	a2,0
    1b9e:	4585                	li	a1,1
    1ba0:	bfa5                	j	1b18 <check_file_handle+0x15c>

0000000000001ba2 <check_file>:
    1ba2:	7179                	addi	sp,sp,-48
    1ba4:	f406                	sd	ra,40(sp)
    1ba6:	f022                	sd	s0,32(sp)
    1ba8:	ec26                	sd	s1,24(sp)
    1baa:	e84a                	sd	s2,16(sp)
    1bac:	e44e                	sd	s3,8(sp)
    1bae:	84aa                	mv	s1,a0
    1bb0:	892e                	mv	s2,a1
    1bb2:	89b2                	mv	s3,a2
    1bb4:	4581                	li	a1,0
    1bb6:	00000097          	auipc	ra,0x0
    1bba:	0a6080e7          	jalr	166(ra) # 1c5c <open>
    1bbe:	842a                	mv	s0,a0
    1bc0:	4789                	li	a5,2
    1bc2:	02a7df63          	bge	a5,a0,1c00 <check_file+0x5e>
    1bc6:	86ce                	mv	a3,s3
    1bc8:	864a                	mv	a2,s2
    1bca:	85a6                	mv	a1,s1
    1bcc:	8522                	mv	a0,s0
    1bce:	00000097          	auipc	ra,0x0
    1bd2:	dee080e7          	jalr	-530(ra) # 19bc <check_file_handle>
    1bd6:	85a6                	mv	a1,s1
    1bd8:	00002537          	lui	a0,0x2
    1bdc:	48850513          	addi	a0,a0,1160 # 2488 <crctab+0x6d0>
    1be0:	fffff097          	auipc	ra,0xfffff
    1be4:	79a080e7          	jalr	1946(ra) # 137a <printf>
    1be8:	8522                	mv	a0,s0
    1bea:	00000097          	auipc	ra,0x0
    1bee:	09a080e7          	jalr	154(ra) # 1c84 <close>
    1bf2:	70a2                	ld	ra,40(sp)
    1bf4:	7402                	ld	s0,32(sp)
    1bf6:	64e2                	ld	s1,24(sp)
    1bf8:	6942                	ld	s2,16(sp)
    1bfa:	69a2                	ld	s3,8(sp)
    1bfc:	6145                	addi	sp,sp,48
    1bfe:	8082                	ret
    1c00:	0ae00713          	li	a4,174
    1c04:	000026b7          	lui	a3,0x2
    1c08:	1b868693          	addi	a3,a3,440 # 21b8 <crctab+0x400>
    1c0c:	8626                	mv	a2,s1
    1c0e:	000025b7          	lui	a1,0x2
    1c12:	42058593          	addi	a1,a1,1056 # 2420 <crctab+0x668>
    1c16:	4509                	li	a0,2
    1c18:	fffff097          	auipc	ra,0xfffff
    1c1c:	740080e7          	jalr	1856(ra) # 1358 <fprintf>
    1c20:	650d                	lui	a0,0x3
    1c22:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c26:	00000097          	auipc	ra,0x0
    1c2a:	016080e7          	jalr	22(ra) # 1c3c <exit>
    1c2e:	bf61                	j	1bc6 <check_file+0x24>

0000000000001c30 <r_sp>:
    1c30:	850a                	mv	a0,sp
    1c32:	8082                	ret

0000000000001c34 <halt>:
    1c34:	4885                	li	a7,1
    1c36:	00000073          	ecall
    1c3a:	8082                	ret

0000000000001c3c <exit>:
    1c3c:	4889                	li	a7,2
    1c3e:	00000073          	ecall
    1c42:	8082                	ret

0000000000001c44 <exec>:
    1c44:	488d                	li	a7,3
    1c46:	00000073          	ecall
    1c4a:	8082                	ret

0000000000001c4c <wait>:
    1c4c:	4891                	li	a7,4
    1c4e:	00000073          	ecall
    1c52:	8082                	ret

0000000000001c54 <remove>:
    1c54:	4895                	li	a7,5
    1c56:	00000073          	ecall
    1c5a:	8082                	ret

0000000000001c5c <open>:
    1c5c:	4899                	li	a7,6
    1c5e:	00000073          	ecall
    1c62:	8082                	ret

0000000000001c64 <read>:
    1c64:	489d                	li	a7,7
    1c66:	00000073          	ecall
    1c6a:	8082                	ret

0000000000001c6c <write>:
    1c6c:	48a1                	li	a7,8
    1c6e:	00000073          	ecall
    1c72:	8082                	ret

0000000000001c74 <seek>:
    1c74:	48a5                	li	a7,9
    1c76:	00000073          	ecall
    1c7a:	8082                	ret

0000000000001c7c <tell>:
    1c7c:	48a9                	li	a7,10
    1c7e:	00000073          	ecall
    1c82:	8082                	ret

0000000000001c84 <close>:
    1c84:	48ad                	li	a7,11
    1c86:	00000073          	ecall
    1c8a:	8082                	ret

0000000000001c8c <fstat>:
    1c8c:	48b1                	li	a7,12
    1c8e:	00000073          	ecall
    1c92:	8082                	ret

0000000000001c94 <mmap>:
    1c94:	48b5                	li	a7,13
    1c96:	00000073          	ecall
    1c9a:	8082                	ret

0000000000001c9c <munmap>:
    1c9c:	48b9                	li	a7,14
    1c9e:	00000073          	ecall
    1ca2:	8082                	ret

0000000000001ca4 <chdir>:
    1ca4:	48bd                	li	a7,15
    1ca6:	00000073          	ecall
    1caa:	8082                	ret

0000000000001cac <mkdir>:
    1cac:	48c1                	li	a7,16
    1cae:	00000073          	ecall
    1cb2:	8082                	ret
