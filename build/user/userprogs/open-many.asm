
build/user/userprogs/open-many:     file format elf64-littleriscv


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
    1010:	e85a                	sd	s6,16(sp)
    1012:	e45e                	sd	s7,8(sp)
    1014:	e062                	sd	s8,0(sp)
    1016:	4581                	li	a1,0
    1018:	00002537          	lui	a0,0x2
    101c:	cb050513          	addi	a0,a0,-848 # 1cb0 <mkdir+0x12>
    1020:	00001097          	auipc	ra,0x1
    1024:	c2e080e7          	jalr	-978(ra) # 1c4e <open>
    1028:	84aa                	mv	s1,a0
    102a:	1ff00913          	li	s2,511
    102e:	4989                	li	s3,2
    1030:	00002b37          	lui	s6,0x2
    1034:	00002bb7          	lui	s7,0x2
    1038:	6a8d                	lui	s5,0x3
    103a:	039a8a93          	addi	s5,s5,57 # 3039 <s+0x29>
    103e:	00002a37          	lui	s4,0x2
    1042:	00002c37          	lui	s8,0x2
    1046:	a839                	j	1064 <main+0x64>
    1048:	4581                	li	a1,0
    104a:	cb0a0513          	addi	a0,s4,-848 # 1cb0 <mkdir+0x12>
    104e:	00001097          	auipc	ra,0x1
    1052:	c00080e7          	jalr	-1024(ra) # 1c4e <open>
    1056:	842a                	mv	s0,a0
    1058:	02950863          	beq	a0,s1,1088 <main+0x88>
    105c:	397d                	addiw	s2,s2,-1
    105e:	04090563          	beqz	s2,10a8 <main+0xa8>
    1062:	84a2                	mv	s1,s0
    1064:	fe99c2e3          	blt	s3,s1,1048 <main+0x48>
    1068:	46a9                	li	a3,10
    106a:	cc0b0613          	addi	a2,s6,-832 # 1cc0 <mkdir+0x22>
    106e:	ce0b8593          	addi	a1,s7,-800 # 1ce0 <mkdir+0x42>
    1072:	854e                	mv	a0,s3
    1074:	00000097          	auipc	ra,0x0
    1078:	2d6080e7          	jalr	726(ra) # 134a <fprintf>
    107c:	8556                	mv	a0,s5
    107e:	00001097          	auipc	ra,0x1
    1082:	bb0080e7          	jalr	-1104(ra) # 1c2e <exit>
    1086:	b7c9                	j	1048 <main+0x48>
    1088:	46b1                	li	a3,12
    108a:	cc0b0613          	addi	a2,s6,-832
    108e:	d18c0593          	addi	a1,s8,-744 # 1d18 <mkdir+0x7a>
    1092:	854e                	mv	a0,s3
    1094:	00000097          	auipc	ra,0x0
    1098:	2b6080e7          	jalr	694(ra) # 134a <fprintf>
    109c:	8556                	mv	a0,s5
    109e:	00001097          	auipc	ra,0x1
    10a2:	b90080e7          	jalr	-1136(ra) # 1c2e <exit>
    10a6:	bf5d                	j	105c <main+0x5c>
    10a8:	60a6                	ld	ra,72(sp)
    10aa:	6406                	ld	s0,64(sp)
    10ac:	74e2                	ld	s1,56(sp)
    10ae:	7942                	ld	s2,48(sp)
    10b0:	79a2                	ld	s3,40(sp)
    10b2:	7a02                	ld	s4,32(sp)
    10b4:	6ae2                	ld	s5,24(sp)
    10b6:	6b42                	ld	s6,16(sp)
    10b8:	6ba2                	ld	s7,8(sp)
    10ba:	6c02                	ld	s8,0(sp)
    10bc:	6161                	addi	sp,sp,80
    10be:	8082                	ret

00000000000010c0 <putc>:
    10c0:	1101                	addi	sp,sp,-32
    10c2:	ec06                	sd	ra,24(sp)
    10c4:	00b107a3          	sb	a1,15(sp)
    10c8:	4605                	li	a2,1
    10ca:	00f10593          	addi	a1,sp,15
    10ce:	00001097          	auipc	ra,0x1
    10d2:	b90080e7          	jalr	-1136(ra) # 1c5e <write>
    10d6:	60e2                	ld	ra,24(sp)
    10d8:	6105                	addi	sp,sp,32
    10da:	8082                	ret

00000000000010dc <printint>:
    10dc:	7179                	addi	sp,sp,-48
    10de:	f406                	sd	ra,40(sp)
    10e0:	f022                	sd	s0,32(sp)
    10e2:	ec26                	sd	s1,24(sp)
    10e4:	e84a                	sd	s2,16(sp)
    10e6:	84aa                	mv	s1,a0
    10e8:	c299                	beqz	a3,10ee <printint+0x12>
    10ea:	0805c363          	bltz	a1,1170 <printint+0x94>
    10ee:	2581                	sext.w	a1,a1
    10f0:	4881                	li	a7,0
    10f2:	868a                	mv	a3,sp
    10f4:	4701                	li	a4,0
    10f6:	2601                	sext.w	a2,a2
    10f8:	00002537          	lui	a0,0x2
    10fc:	d5850513          	addi	a0,a0,-680 # 1d58 <digits>
    1100:	883a                	mv	a6,a4
    1102:	2705                	addiw	a4,a4,1
    1104:	02c5f7bb          	remuw	a5,a1,a2
    1108:	1782                	slli	a5,a5,0x20
    110a:	9381                	srli	a5,a5,0x20
    110c:	97aa                	add	a5,a5,a0
    110e:	0007c783          	lbu	a5,0(a5)
    1112:	00f68023          	sb	a5,0(a3)
    1116:	0005879b          	sext.w	a5,a1
    111a:	02c5d5bb          	divuw	a1,a1,a2
    111e:	0685                	addi	a3,a3,1
    1120:	fec7f0e3          	bgeu	a5,a2,1100 <printint+0x24>
    1124:	00088a63          	beqz	a7,1138 <printint+0x5c>
    1128:	081c                	addi	a5,sp,16
    112a:	973e                	add	a4,a4,a5
    112c:	02d00793          	li	a5,45
    1130:	fef70823          	sb	a5,-16(a4)
    1134:	0028071b          	addiw	a4,a6,2
    1138:	02e05663          	blez	a4,1164 <printint+0x88>
    113c:	00e10433          	add	s0,sp,a4
    1140:	fff10913          	addi	s2,sp,-1
    1144:	993a                	add	s2,s2,a4
    1146:	377d                	addiw	a4,a4,-1
    1148:	1702                	slli	a4,a4,0x20
    114a:	9301                	srli	a4,a4,0x20
    114c:	40e90933          	sub	s2,s2,a4
    1150:	fff44583          	lbu	a1,-1(s0)
    1154:	8526                	mv	a0,s1
    1156:	00000097          	auipc	ra,0x0
    115a:	f6a080e7          	jalr	-150(ra) # 10c0 <putc>
    115e:	147d                	addi	s0,s0,-1
    1160:	ff2418e3          	bne	s0,s2,1150 <printint+0x74>
    1164:	70a2                	ld	ra,40(sp)
    1166:	7402                	ld	s0,32(sp)
    1168:	64e2                	ld	s1,24(sp)
    116a:	6942                	ld	s2,16(sp)
    116c:	6145                	addi	sp,sp,48
    116e:	8082                	ret
    1170:	40b005bb          	negw	a1,a1
    1174:	4885                	li	a7,1
    1176:	bfb5                	j	10f2 <printint+0x16>

0000000000001178 <vprintf>:
    1178:	7159                	addi	sp,sp,-112
    117a:	f486                	sd	ra,104(sp)
    117c:	f0a2                	sd	s0,96(sp)
    117e:	eca6                	sd	s1,88(sp)
    1180:	e8ca                	sd	s2,80(sp)
    1182:	e4ce                	sd	s3,72(sp)
    1184:	e0d2                	sd	s4,64(sp)
    1186:	fc56                	sd	s5,56(sp)
    1188:	f85a                	sd	s6,48(sp)
    118a:	f45e                	sd	s7,40(sp)
    118c:	f062                	sd	s8,32(sp)
    118e:	ec66                	sd	s9,24(sp)
    1190:	e86a                	sd	s10,16(sp)
    1192:	e46e                	sd	s11,8(sp)
    1194:	0005c483          	lbu	s1,0(a1)
    1198:	18048a63          	beqz	s1,132c <vprintf+0x1b4>
    119c:	8a2a                	mv	s4,a0
    119e:	8ab2                	mv	s5,a2
    11a0:	00158413          	addi	s0,a1,1
    11a4:	4901                	li	s2,0
    11a6:	02500993          	li	s3,37
    11aa:	06400b93          	li	s7,100
    11ae:	06c00c13          	li	s8,108
    11b2:	07800c93          	li	s9,120
    11b6:	07000d13          	li	s10,112
    11ba:	00002db7          	lui	s11,0x2
    11be:	00002b37          	lui	s6,0x2
    11c2:	d58b0b13          	addi	s6,s6,-680 # 1d58 <digits>
    11c6:	a839                	j	11e4 <vprintf+0x6c>
    11c8:	85a6                	mv	a1,s1
    11ca:	8552                	mv	a0,s4
    11cc:	00000097          	auipc	ra,0x0
    11d0:	ef4080e7          	jalr	-268(ra) # 10c0 <putc>
    11d4:	a019                	j	11da <vprintf+0x62>
    11d6:	01390f63          	beq	s2,s3,11f4 <vprintf+0x7c>
    11da:	0405                	addi	s0,s0,1
    11dc:	fff44483          	lbu	s1,-1(s0)
    11e0:	14048663          	beqz	s1,132c <vprintf+0x1b4>
    11e4:	0004879b          	sext.w	a5,s1
    11e8:	fe0917e3          	bnez	s2,11d6 <vprintf+0x5e>
    11ec:	fd379ee3          	bne	a5,s3,11c8 <vprintf+0x50>
    11f0:	893e                	mv	s2,a5
    11f2:	b7e5                	j	11da <vprintf+0x62>
    11f4:	05778063          	beq	a5,s7,1234 <vprintf+0xbc>
    11f8:	05878c63          	beq	a5,s8,1250 <vprintf+0xd8>
    11fc:	07978863          	beq	a5,s9,126c <vprintf+0xf4>
    1200:	09a78463          	beq	a5,s10,1288 <vprintf+0x110>
    1204:	07300713          	li	a4,115
    1208:	0ce78263          	beq	a5,a4,12cc <vprintf+0x154>
    120c:	06300713          	li	a4,99
    1210:	0ee78763          	beq	a5,a4,12fe <vprintf+0x186>
    1214:	11378163          	beq	a5,s3,1316 <vprintf+0x19e>
    1218:	85ce                	mv	a1,s3
    121a:	8552                	mv	a0,s4
    121c:	00000097          	auipc	ra,0x0
    1220:	ea4080e7          	jalr	-348(ra) # 10c0 <putc>
    1224:	85a6                	mv	a1,s1
    1226:	8552                	mv	a0,s4
    1228:	00000097          	auipc	ra,0x0
    122c:	e98080e7          	jalr	-360(ra) # 10c0 <putc>
    1230:	4901                	li	s2,0
    1232:	b765                	j	11da <vprintf+0x62>
    1234:	008a8493          	addi	s1,s5,8
    1238:	4685                	li	a3,1
    123a:	4629                	li	a2,10
    123c:	000aa583          	lw	a1,0(s5)
    1240:	8552                	mv	a0,s4
    1242:	00000097          	auipc	ra,0x0
    1246:	e9a080e7          	jalr	-358(ra) # 10dc <printint>
    124a:	8aa6                	mv	s5,s1
    124c:	4901                	li	s2,0
    124e:	b771                	j	11da <vprintf+0x62>
    1250:	008a8493          	addi	s1,s5,8
    1254:	4681                	li	a3,0
    1256:	4629                	li	a2,10
    1258:	000aa583          	lw	a1,0(s5)
    125c:	8552                	mv	a0,s4
    125e:	00000097          	auipc	ra,0x0
    1262:	e7e080e7          	jalr	-386(ra) # 10dc <printint>
    1266:	8aa6                	mv	s5,s1
    1268:	4901                	li	s2,0
    126a:	bf85                	j	11da <vprintf+0x62>
    126c:	008a8493          	addi	s1,s5,8
    1270:	4681                	li	a3,0
    1272:	4641                	li	a2,16
    1274:	000aa583          	lw	a1,0(s5)
    1278:	8552                	mv	a0,s4
    127a:	00000097          	auipc	ra,0x0
    127e:	e62080e7          	jalr	-414(ra) # 10dc <printint>
    1282:	8aa6                	mv	s5,s1
    1284:	4901                	li	s2,0
    1286:	bf91                	j	11da <vprintf+0x62>
    1288:	008a8913          	addi	s2,s5,8
    128c:	000aba83          	ld	s5,0(s5)
    1290:	03000593          	li	a1,48
    1294:	8552                	mv	a0,s4
    1296:	00000097          	auipc	ra,0x0
    129a:	e2a080e7          	jalr	-470(ra) # 10c0 <putc>
    129e:	85e6                	mv	a1,s9
    12a0:	8552                	mv	a0,s4
    12a2:	00000097          	auipc	ra,0x0
    12a6:	e1e080e7          	jalr	-482(ra) # 10c0 <putc>
    12aa:	44c1                	li	s1,16
    12ac:	03cad793          	srli	a5,s5,0x3c
    12b0:	97da                	add	a5,a5,s6
    12b2:	0007c583          	lbu	a1,0(a5)
    12b6:	8552                	mv	a0,s4
    12b8:	00000097          	auipc	ra,0x0
    12bc:	e08080e7          	jalr	-504(ra) # 10c0 <putc>
    12c0:	0a92                	slli	s5,s5,0x4
    12c2:	34fd                	addiw	s1,s1,-1
    12c4:	f4e5                	bnez	s1,12ac <vprintf+0x134>
    12c6:	8aca                	mv	s5,s2
    12c8:	4901                	li	s2,0
    12ca:	bf01                	j	11da <vprintf+0x62>
    12cc:	008a8913          	addi	s2,s5,8
    12d0:	000ab483          	ld	s1,0(s5)
    12d4:	c085                	beqz	s1,12f4 <vprintf+0x17c>
    12d6:	0004c583          	lbu	a1,0(s1)
    12da:	c5b1                	beqz	a1,1326 <vprintf+0x1ae>
    12dc:	8552                	mv	a0,s4
    12de:	00000097          	auipc	ra,0x0
    12e2:	de2080e7          	jalr	-542(ra) # 10c0 <putc>
    12e6:	0485                	addi	s1,s1,1
    12e8:	0004c583          	lbu	a1,0(s1)
    12ec:	f9e5                	bnez	a1,12dc <vprintf+0x164>
    12ee:	8aca                	mv	s5,s2
    12f0:	4901                	li	s2,0
    12f2:	b5e5                	j	11da <vprintf+0x62>
    12f4:	d50d8493          	addi	s1,s11,-688 # 1d50 <mkdir+0xb2>
    12f8:	02800593          	li	a1,40
    12fc:	b7c5                	j	12dc <vprintf+0x164>
    12fe:	008a8493          	addi	s1,s5,8
    1302:	000ac583          	lbu	a1,0(s5)
    1306:	8552                	mv	a0,s4
    1308:	00000097          	auipc	ra,0x0
    130c:	db8080e7          	jalr	-584(ra) # 10c0 <putc>
    1310:	8aa6                	mv	s5,s1
    1312:	4901                	li	s2,0
    1314:	b5d9                	j	11da <vprintf+0x62>
    1316:	85ce                	mv	a1,s3
    1318:	8552                	mv	a0,s4
    131a:	00000097          	auipc	ra,0x0
    131e:	da6080e7          	jalr	-602(ra) # 10c0 <putc>
    1322:	4901                	li	s2,0
    1324:	bd5d                	j	11da <vprintf+0x62>
    1326:	8aca                	mv	s5,s2
    1328:	4901                	li	s2,0
    132a:	bd45                	j	11da <vprintf+0x62>
    132c:	70a6                	ld	ra,104(sp)
    132e:	7406                	ld	s0,96(sp)
    1330:	64e6                	ld	s1,88(sp)
    1332:	6946                	ld	s2,80(sp)
    1334:	69a6                	ld	s3,72(sp)
    1336:	6a06                	ld	s4,64(sp)
    1338:	7ae2                	ld	s5,56(sp)
    133a:	7b42                	ld	s6,48(sp)
    133c:	7ba2                	ld	s7,40(sp)
    133e:	7c02                	ld	s8,32(sp)
    1340:	6ce2                	ld	s9,24(sp)
    1342:	6d42                	ld	s10,16(sp)
    1344:	6da2                	ld	s11,8(sp)
    1346:	6165                	addi	sp,sp,112
    1348:	8082                	ret

000000000000134a <fprintf>:
    134a:	715d                	addi	sp,sp,-80
    134c:	ec06                	sd	ra,24(sp)
    134e:	f032                	sd	a2,32(sp)
    1350:	f436                	sd	a3,40(sp)
    1352:	f83a                	sd	a4,48(sp)
    1354:	fc3e                	sd	a5,56(sp)
    1356:	e0c2                	sd	a6,64(sp)
    1358:	e4c6                	sd	a7,72(sp)
    135a:	1010                	addi	a2,sp,32
    135c:	e432                	sd	a2,8(sp)
    135e:	00000097          	auipc	ra,0x0
    1362:	e1a080e7          	jalr	-486(ra) # 1178 <vprintf>
    1366:	60e2                	ld	ra,24(sp)
    1368:	6161                	addi	sp,sp,80
    136a:	8082                	ret

000000000000136c <printf>:
    136c:	711d                	addi	sp,sp,-96
    136e:	ec06                	sd	ra,24(sp)
    1370:	f42e                	sd	a1,40(sp)
    1372:	f832                	sd	a2,48(sp)
    1374:	fc36                	sd	a3,56(sp)
    1376:	e0ba                	sd	a4,64(sp)
    1378:	e4be                	sd	a5,72(sp)
    137a:	e8c2                	sd	a6,80(sp)
    137c:	ecc6                	sd	a7,88(sp)
    137e:	1030                	addi	a2,sp,40
    1380:	e432                	sd	a2,8(sp)
    1382:	85aa                	mv	a1,a0
    1384:	4505                	li	a0,1
    1386:	00000097          	auipc	ra,0x0
    138a:	df2080e7          	jalr	-526(ra) # 1178 <vprintf>
    138e:	60e2                	ld	ra,24(sp)
    1390:	6125                	addi	sp,sp,96
    1392:	8082                	ret

0000000000001394 <cksum>:
    1394:	cdb1                	beqz	a1,13f0 <cksum+0x5c>
    1396:	00b50833          	add	a6,a0,a1
    139a:	4781                	li	a5,0
    139c:	00002637          	lui	a2,0x2
    13a0:	d7060613          	addi	a2,a2,-656 # 1d70 <crctab>
    13a4:	0505                	addi	a0,a0,1
    13a6:	0087969b          	slliw	a3,a5,0x8
    13aa:	0187d71b          	srliw	a4,a5,0x18
    13ae:	fff54783          	lbu	a5,-1(a0)
    13b2:	8f3d                	xor	a4,a4,a5
    13b4:	1702                	slli	a4,a4,0x20
    13b6:	9301                	srli	a4,a4,0x20
    13b8:	070a                	slli	a4,a4,0x2
    13ba:	9732                	add	a4,a4,a2
    13bc:	431c                	lw	a5,0(a4)
    13be:	8fb5                	xor	a5,a5,a3
    13c0:	2781                	sext.w	a5,a5
    13c2:	fea811e3          	bne	a6,a0,13a4 <cksum+0x10>
    13c6:	00002637          	lui	a2,0x2
    13ca:	d7060613          	addi	a2,a2,-656 # 1d70 <crctab>
    13ce:	0ff5f693          	andi	a3,a1,255
    13d2:	81a1                	srli	a1,a1,0x8
    13d4:	0087951b          	slliw	a0,a5,0x8
    13d8:	0187d71b          	srliw	a4,a5,0x18
    13dc:	8f35                	xor	a4,a4,a3
    13de:	070a                	slli	a4,a4,0x2
    13e0:	9732                	add	a4,a4,a2
    13e2:	431c                	lw	a5,0(a4)
    13e4:	8fa9                	xor	a5,a5,a0
    13e6:	2781                	sext.w	a5,a5
    13e8:	f1fd                	bnez	a1,13ce <cksum+0x3a>
    13ea:	fff7c513          	not	a0,a5
    13ee:	8082                	ret
    13f0:	4781                	li	a5,0
    13f2:	bfe5                	j	13ea <cksum+0x56>

00000000000013f4 <swap_bytes>:
    13f4:	ce19                	beqz	a2,1412 <swap_bytes+0x1e>
    13f6:	87aa                	mv	a5,a0
    13f8:	962a                	add	a2,a2,a0
    13fa:	0007c703          	lbu	a4,0(a5)
    13fe:	0005c683          	lbu	a3,0(a1)
    1402:	00d78023          	sb	a3,0(a5)
    1406:	00e58023          	sb	a4,0(a1)
    140a:	0785                	addi	a5,a5,1
    140c:	0585                	addi	a1,a1,1
    140e:	fec796e3          	bne	a5,a2,13fa <swap_bytes+0x6>
    1412:	8082                	ret

0000000000001414 <random_init>:
    1414:	7139                	addi	sp,sp,-64
    1416:	fc06                	sd	ra,56(sp)
    1418:	f822                	sd	s0,48(sp)
    141a:	f426                	sd	s1,40(sp)
    141c:	f04a                	sd	s2,32(sp)
    141e:	ec4e                	sd	s3,24(sp)
    1420:	e852                	sd	s4,16(sp)
    1422:	c62a                	sw	a0,12(sp)
    1424:	000037b7          	lui	a5,0x3
    1428:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    142c:	eca5                	bnez	s1,14a4 <random_init+0x90>
    142e:	00003737          	lui	a4,0x3
    1432:	01070913          	addi	s2,a4,16 # 3010 <s>
    1436:	01070713          	addi	a4,a4,16
    143a:	87a6                	mv	a5,s1
    143c:	10000693          	li	a3,256
    1440:	00f70023          	sb	a5,0(a4)
    1444:	2785                	addiw	a5,a5,1
    1446:	0705                	addi	a4,a4,1
    1448:	fed79ce3          	bne	a5,a3,1440 <random_init+0x2c>
    144c:	4401                	li	s0,0
    144e:	000039b7          	lui	s3,0x3
    1452:	01098993          	addi	s3,s3,16 # 3010 <s>
    1456:	10000a13          	li	s4,256
    145a:	0034f793          	andi	a5,s1,3
    145e:	0818                	addi	a4,sp,16
    1460:	97ba                	add	a5,a5,a4
    1462:	ffc7c783          	lbu	a5,-4(a5)
    1466:	00094703          	lbu	a4,0(s2)
    146a:	9fb9                	addw	a5,a5,a4
    146c:	9c3d                	addw	s0,s0,a5
    146e:	0ff47413          	andi	s0,s0,255
    1472:	4605                	li	a2,1
    1474:	008985b3          	add	a1,s3,s0
    1478:	854a                	mv	a0,s2
    147a:	00000097          	auipc	ra,0x0
    147e:	f7a080e7          	jalr	-134(ra) # 13f4 <swap_bytes>
    1482:	2485                	addiw	s1,s1,1
    1484:	0905                	addi	s2,s2,1
    1486:	fd449ae3          	bne	s1,s4,145a <random_init+0x46>
    148a:	000037b7          	lui	a5,0x3
    148e:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1492:	000037b7          	lui	a5,0x3
    1496:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    149a:	000037b7          	lui	a5,0x3
    149e:	4705                	li	a4,1
    14a0:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14a4:	70e2                	ld	ra,56(sp)
    14a6:	7442                	ld	s0,48(sp)
    14a8:	74a2                	ld	s1,40(sp)
    14aa:	7902                	ld	s2,32(sp)
    14ac:	69e2                	ld	s3,24(sp)
    14ae:	6a42                	ld	s4,16(sp)
    14b0:	6121                	addi	sp,sp,64
    14b2:	8082                	ret

00000000000014b4 <random_bytes>:
    14b4:	7139                	addi	sp,sp,-64
    14b6:	fc06                	sd	ra,56(sp)
    14b8:	f822                	sd	s0,48(sp)
    14ba:	f426                	sd	s1,40(sp)
    14bc:	f04a                	sd	s2,32(sp)
    14be:	ec4e                	sd	s3,24(sp)
    14c0:	e852                	sd	s4,16(sp)
    14c2:	e456                	sd	s5,8(sp)
    14c4:	e05a                	sd	s6,0(sp)
    14c6:	892a                	mv	s2,a0
    14c8:	8aae                	mv	s5,a1
    14ca:	000037b7          	lui	a5,0x3
    14ce:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14d2:	c3c1                	beqz	a5,1552 <random_bytes+0x9e>
    14d4:	060a8563          	beqz	s5,153e <random_bytes+0x8a>
    14d8:	9aca                	add	s5,s5,s2
    14da:	00003a37          	lui	s4,0x3
    14de:	000034b7          	lui	s1,0x3
    14e2:	01048493          	addi	s1,s1,16 # 3010 <s>
    14e6:	000039b7          	lui	s3,0x3
    14ea:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14ee:	2505                	addiw	a0,a0,1
    14f0:	0ff57513          	andi	a0,a0,255
    14f4:	00aa02a3          	sb	a0,5(s4)
    14f8:	00a48b33          	add	s6,s1,a0
    14fc:	000b4403          	lbu	s0,0(s6)
    1500:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1504:	9c3d                	addw	s0,s0,a5
    1506:	0ff47413          	andi	s0,s0,255
    150a:	00898223          	sb	s0,4(s3)
    150e:	4605                	li	a2,1
    1510:	008485b3          	add	a1,s1,s0
    1514:	855a                	mv	a0,s6
    1516:	00000097          	auipc	ra,0x0
    151a:	ede080e7          	jalr	-290(ra) # 13f4 <swap_bytes>
    151e:	9426                	add	s0,s0,s1
    1520:	000b4783          	lbu	a5,0(s6)
    1524:	00044703          	lbu	a4,0(s0)
    1528:	9fb9                	addw	a5,a5,a4
    152a:	0ff7f793          	andi	a5,a5,255
    152e:	97a6                	add	a5,a5,s1
    1530:	0007c783          	lbu	a5,0(a5)
    1534:	00f90023          	sb	a5,0(s2)
    1538:	0905                	addi	s2,s2,1
    153a:	fb2a98e3          	bne	s5,s2,14ea <random_bytes+0x36>
    153e:	70e2                	ld	ra,56(sp)
    1540:	7442                	ld	s0,48(sp)
    1542:	74a2                	ld	s1,40(sp)
    1544:	7902                	ld	s2,32(sp)
    1546:	69e2                	ld	s3,24(sp)
    1548:	6a42                	ld	s4,16(sp)
    154a:	6aa2                	ld	s5,8(sp)
    154c:	6b02                	ld	s6,0(sp)
    154e:	6121                	addi	sp,sp,64
    1550:	8082                	ret
    1552:	4501                	li	a0,0
    1554:	00000097          	auipc	ra,0x0
    1558:	ec0080e7          	jalr	-320(ra) # 1414 <random_init>
    155c:	bfa5                	j	14d4 <random_bytes+0x20>

000000000000155e <random_ulong>:
    155e:	1101                	addi	sp,sp,-32
    1560:	ec06                	sd	ra,24(sp)
    1562:	45a1                	li	a1,8
    1564:	0028                	addi	a0,sp,8
    1566:	00000097          	auipc	ra,0x0
    156a:	f4e080e7          	jalr	-178(ra) # 14b4 <random_bytes>
    156e:	6522                	ld	a0,8(sp)
    1570:	60e2                	ld	ra,24(sp)
    1572:	6105                	addi	sp,sp,32
    1574:	8082                	ret

0000000000001576 <shuffle>:
    1576:	c9b9                	beqz	a1,15cc <shuffle+0x56>
    1578:	7179                	addi	sp,sp,-48
    157a:	f406                	sd	ra,40(sp)
    157c:	f022                	sd	s0,32(sp)
    157e:	ec26                	sd	s1,24(sp)
    1580:	e84a                	sd	s2,16(sp)
    1582:	e44e                	sd	s3,8(sp)
    1584:	e052                	sd	s4,0(sp)
    1586:	8a2a                	mv	s4,a0
    1588:	89ae                	mv	s3,a1
    158a:	84b2                	mv	s1,a2
    158c:	892a                	mv	s2,a0
    158e:	4401                	li	s0,0
    1590:	00000097          	auipc	ra,0x0
    1594:	fce080e7          	jalr	-50(ra) # 155e <random_ulong>
    1598:	408985b3          	sub	a1,s3,s0
    159c:	02b575b3          	remu	a1,a0,a1
    15a0:	95a2                	add	a1,a1,s0
    15a2:	029585b3          	mul	a1,a1,s1
    15a6:	8626                	mv	a2,s1
    15a8:	95d2                	add	a1,a1,s4
    15aa:	854a                	mv	a0,s2
    15ac:	00000097          	auipc	ra,0x0
    15b0:	e48080e7          	jalr	-440(ra) # 13f4 <swap_bytes>
    15b4:	0405                	addi	s0,s0,1
    15b6:	9926                	add	s2,s2,s1
    15b8:	fc899ce3          	bne	s3,s0,1590 <shuffle+0x1a>
    15bc:	70a2                	ld	ra,40(sp)
    15be:	7402                	ld	s0,32(sp)
    15c0:	64e2                	ld	s1,24(sp)
    15c2:	6942                	ld	s2,16(sp)
    15c4:	69a2                	ld	s3,8(sp)
    15c6:	6a02                	ld	s4,0(sp)
    15c8:	6145                	addi	sp,sp,48
    15ca:	8082                	ret
    15cc:	8082                	ret

00000000000015ce <arc4_init>:
    15ce:	100500a3          	sb	zero,257(a0)
    15d2:	10050023          	sb	zero,256(a0)
    15d6:	4781                	li	a5,0
    15d8:	10000693          	li	a3,256
    15dc:	00f50733          	add	a4,a0,a5
    15e0:	00f70023          	sb	a5,0(a4)
    15e4:	0785                	addi	a5,a5,1
    15e6:	fed79be3          	bne	a5,a3,15dc <arc4_init+0xe>
    15ea:	86aa                	mv	a3,a0
    15ec:	10050e13          	addi	t3,a0,256
    15f0:	4701                	li	a4,0
    15f2:	4781                	li	a5,0
    15f4:	0006c883          	lbu	a7,0(a3)
    15f8:	00f58833          	add	a6,a1,a5
    15fc:	00084803          	lbu	a6,0(a6)
    1600:	00e8873b          	addw	a4,a7,a4
    1604:	00e8073b          	addw	a4,a6,a4
    1608:	0ff77713          	andi	a4,a4,255
    160c:	00e50833          	add	a6,a0,a4
    1610:	00084303          	lbu	t1,0(a6)
    1614:	00668023          	sb	t1,0(a3)
    1618:	01180023          	sb	a7,0(a6)
    161c:	0785                	addi	a5,a5,1
    161e:	00c7b833          	sltu	a6,a5,a2
    1622:	41000833          	neg	a6,a6
    1626:	0107f7b3          	and	a5,a5,a6
    162a:	0685                	addi	a3,a3,1
    162c:	fdc694e3          	bne	a3,t3,15f4 <arc4_init+0x26>
    1630:	8082                	ret

0000000000001632 <arc4_crypt>:
    1632:	10054e03          	lbu	t3,256(a0)
    1636:	10154803          	lbu	a6,257(a0)
    163a:	fff60e93          	addi	t4,a2,-1
    163e:	c225                	beqz	a2,169e <arc4_crypt+0x6c>
    1640:	00c588b3          	add	a7,a1,a2
    1644:	86ae                	mv	a3,a1
    1646:	001e031b          	addiw	t1,t3,1
    164a:	40b3033b          	subw	t1,t1,a1
    164e:	00d3073b          	addw	a4,t1,a3
    1652:	0ff77713          	andi	a4,a4,255
    1656:	972a                	add	a4,a4,a0
    1658:	00074603          	lbu	a2,0(a4)
    165c:	0106083b          	addw	a6,a2,a6
    1660:	0ff87813          	andi	a6,a6,255
    1664:	010507b3          	add	a5,a0,a6
    1668:	0007c583          	lbu	a1,0(a5)
    166c:	00b70023          	sb	a1,0(a4)
    1670:	00c78023          	sb	a2,0(a5)
    1674:	0685                	addi	a3,a3,1
    1676:	00074783          	lbu	a5,0(a4)
    167a:	9fb1                	addw	a5,a5,a2
    167c:	0ff7f793          	andi	a5,a5,255
    1680:	97aa                	add	a5,a5,a0
    1682:	0007c783          	lbu	a5,0(a5)
    1686:	fff6c703          	lbu	a4,-1(a3)
    168a:	8fb9                	xor	a5,a5,a4
    168c:	fef68fa3          	sb	a5,-1(a3)
    1690:	fb169fe3          	bne	a3,a7,164e <arc4_crypt+0x1c>
    1694:	2e85                	addiw	t4,t4,1
    1696:	01ce8e3b          	addw	t3,t4,t3
    169a:	0ffe7e13          	andi	t3,t3,255
    169e:	11c50023          	sb	t3,256(a0)
    16a2:	110500a3          	sb	a6,257(a0)
    16a6:	8082                	ret

00000000000016a8 <_main>:
    16a8:	1141                	addi	sp,sp,-16
    16aa:	e406                	sd	ra,8(sp)
    16ac:	00000097          	auipc	ra,0x0
    16b0:	954080e7          	jalr	-1708(ra) # 1000 <main>
    16b4:	4501                	li	a0,0
    16b6:	00000097          	auipc	ra,0x0
    16ba:	578080e7          	jalr	1400(ra) # 1c2e <exit>
    16be:	60a2                	ld	ra,8(sp)
    16c0:	0141                	addi	sp,sp,16
    16c2:	8082                	ret

00000000000016c4 <strcmp>:
    16c4:	00054783          	lbu	a5,0(a0)
    16c8:	cb91                	beqz	a5,16dc <strcmp+0x18>
    16ca:	0005c703          	lbu	a4,0(a1)
    16ce:	00f71763          	bne	a4,a5,16dc <strcmp+0x18>
    16d2:	0505                	addi	a0,a0,1
    16d4:	0585                	addi	a1,a1,1
    16d6:	00054783          	lbu	a5,0(a0)
    16da:	fbe5                	bnez	a5,16ca <strcmp+0x6>
    16dc:	0005c503          	lbu	a0,0(a1)
    16e0:	40a7853b          	subw	a0,a5,a0
    16e4:	8082                	ret

00000000000016e6 <strcpy>:
    16e6:	87aa                	mv	a5,a0
    16e8:	0585                	addi	a1,a1,1
    16ea:	0785                	addi	a5,a5,1
    16ec:	fff5c703          	lbu	a4,-1(a1)
    16f0:	fee78fa3          	sb	a4,-1(a5)
    16f4:	fb75                	bnez	a4,16e8 <strcpy+0x2>
    16f6:	8082                	ret

00000000000016f8 <strlen>:
    16f8:	00054783          	lbu	a5,0(a0)
    16fc:	cf81                	beqz	a5,1714 <strlen+0x1c>
    16fe:	0505                	addi	a0,a0,1
    1700:	87aa                	mv	a5,a0
    1702:	4685                	li	a3,1
    1704:	9e89                	subw	a3,a3,a0
    1706:	00f6853b          	addw	a0,a3,a5
    170a:	0785                	addi	a5,a5,1
    170c:	fff7c703          	lbu	a4,-1(a5)
    1710:	fb7d                	bnez	a4,1706 <strlen+0xe>
    1712:	8082                	ret
    1714:	4501                	li	a0,0
    1716:	8082                	ret

0000000000001718 <memset>:
    1718:	ca19                	beqz	a2,172e <memset+0x16>
    171a:	87aa                	mv	a5,a0
    171c:	1602                	slli	a2,a2,0x20
    171e:	9201                	srli	a2,a2,0x20
    1720:	00a60733          	add	a4,a2,a0
    1724:	00b78023          	sb	a1,0(a5)
    1728:	0785                	addi	a5,a5,1
    172a:	fee79de3          	bne	a5,a4,1724 <memset+0xc>
    172e:	8082                	ret

0000000000001730 <memcmp>:
    1730:	1101                	addi	sp,sp,-32
    1732:	ec06                	sd	ra,24(sp)
    1734:	e822                	sd	s0,16(sp)
    1736:	e426                	sd	s1,8(sp)
    1738:	e04a                	sd	s2,0(sp)
    173a:	892a                	mv	s2,a0
    173c:	842e                	mv	s0,a1
    173e:	84b2                	mv	s1,a2
    1740:	c915                	beqz	a0,1774 <memcmp+0x44>
    1742:	c5ad                	beqz	a1,17ac <memcmp+0x7c>
    1744:	fff60713          	addi	a4,a2,-1
    1748:	c645                	beqz	a2,17f0 <memcmp+0xc0>
    174a:	87ca                	mv	a5,s2
    174c:	00190613          	addi	a2,s2,1
    1750:	963a                	add	a2,a2,a4
    1752:	0007c683          	lbu	a3,0(a5)
    1756:	00044703          	lbu	a4,0(s0)
    175a:	08e69463          	bne	a3,a4,17e2 <memcmp+0xb2>
    175e:	0785                	addi	a5,a5,1
    1760:	0405                	addi	s0,s0,1
    1762:	fec798e3          	bne	a5,a2,1752 <memcmp+0x22>
    1766:	4501                	li	a0,0
    1768:	60e2                	ld	ra,24(sp)
    176a:	6442                	ld	s0,16(sp)
    176c:	64a2                	ld	s1,8(sp)
    176e:	6902                	ld	s2,0(sp)
    1770:	6105                	addi	sp,sp,32
    1772:	8082                	ret
    1774:	4501                	li	a0,0
    1776:	da6d                	beqz	a2,1768 <memcmp+0x38>
    1778:	03200693          	li	a3,50
    177c:	00002637          	lui	a2,0x2
    1780:	17060613          	addi	a2,a2,368 # 2170 <crctab+0x400>
    1784:	000025b7          	lui	a1,0x2
    1788:	18058593          	addi	a1,a1,384 # 2180 <crctab+0x410>
    178c:	4509                	li	a0,2
    178e:	00000097          	auipc	ra,0x0
    1792:	bbc080e7          	jalr	-1092(ra) # 134a <fprintf>
    1796:	650d                	lui	a0,0x3
    1798:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    179c:	00000097          	auipc	ra,0x0
    17a0:	492080e7          	jalr	1170(ra) # 1c2e <exit>
    17a4:	fff48713          	addi	a4,s1,-1
    17a8:	f04d                	bnez	s0,174a <memcmp+0x1a>
    17aa:	a011                	j	17ae <memcmp+0x7e>
    17ac:	c221                	beqz	a2,17ec <memcmp+0xbc>
    17ae:	03300693          	li	a3,51
    17b2:	00002637          	lui	a2,0x2
    17b6:	17060613          	addi	a2,a2,368 # 2170 <crctab+0x400>
    17ba:	000025b7          	lui	a1,0x2
    17be:	1c858593          	addi	a1,a1,456 # 21c8 <crctab+0x458>
    17c2:	4509                	li	a0,2
    17c4:	00000097          	auipc	ra,0x0
    17c8:	b86080e7          	jalr	-1146(ra) # 134a <fprintf>
    17cc:	650d                	lui	a0,0x3
    17ce:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17d2:	00000097          	auipc	ra,0x0
    17d6:	45c080e7          	jalr	1116(ra) # 1c2e <exit>
    17da:	fff48713          	addi	a4,s1,-1
    17de:	4401                	li	s0,0
    17e0:	b7ad                	j	174a <memcmp+0x1a>
    17e2:	4505                	li	a0,1
    17e4:	f8d762e3          	bltu	a4,a3,1768 <memcmp+0x38>
    17e8:	557d                	li	a0,-1
    17ea:	bfbd                	j	1768 <memcmp+0x38>
    17ec:	4501                	li	a0,0
    17ee:	bfad                	j	1768 <memcmp+0x38>
    17f0:	4501                	li	a0,0
    17f2:	bf9d                	j	1768 <memcmp+0x38>

00000000000017f4 <memcpy>:
    17f4:	1101                	addi	sp,sp,-32
    17f6:	ec06                	sd	ra,24(sp)
    17f8:	e822                	sd	s0,16(sp)
    17fa:	e426                	sd	s1,8(sp)
    17fc:	e04a                	sd	s2,0(sp)
    17fe:	84aa                	mv	s1,a0
    1800:	842e                	mv	s0,a1
    1802:	8932                	mv	s2,a2
    1804:	c51d                	beqz	a0,1832 <memcpy+0x3e>
    1806:	c1ad                	beqz	a1,1868 <memcpy+0x74>
    1808:	fff60693          	addi	a3,a2,-1
    180c:	ce01                	beqz	a2,1824 <memcpy+0x30>
    180e:	0685                	addi	a3,a3,1
    1810:	96a6                	add	a3,a3,s1
    1812:	87a6                	mv	a5,s1
    1814:	0405                	addi	s0,s0,1
    1816:	0785                	addi	a5,a5,1
    1818:	fff44703          	lbu	a4,-1(s0)
    181c:	fee78fa3          	sb	a4,-1(a5)
    1820:	fed79ae3          	bne	a5,a3,1814 <memcpy+0x20>
    1824:	8526                	mv	a0,s1
    1826:	60e2                	ld	ra,24(sp)
    1828:	6442                	ld	s0,16(sp)
    182a:	64a2                	ld	s1,8(sp)
    182c:	6902                	ld	s2,0(sp)
    182e:	6105                	addi	sp,sp,32
    1830:	8082                	ret
    1832:	da6d                	beqz	a2,1824 <memcpy+0x30>
    1834:	04000693          	li	a3,64
    1838:	00002637          	lui	a2,0x2
    183c:	17060613          	addi	a2,a2,368 # 2170 <crctab+0x400>
    1840:	000025b7          	lui	a1,0x2
    1844:	21058593          	addi	a1,a1,528 # 2210 <crctab+0x4a0>
    1848:	4509                	li	a0,2
    184a:	00000097          	auipc	ra,0x0
    184e:	b00080e7          	jalr	-1280(ra) # 134a <fprintf>
    1852:	650d                	lui	a0,0x3
    1854:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1858:	00000097          	auipc	ra,0x0
    185c:	3d6080e7          	jalr	982(ra) # 1c2e <exit>
    1860:	fff90693          	addi	a3,s2,-1
    1864:	f44d                	bnez	s0,180e <memcpy+0x1a>
    1866:	a011                	j	186a <memcpy+0x76>
    1868:	de55                	beqz	a2,1824 <memcpy+0x30>
    186a:	04100693          	li	a3,65
    186e:	00002637          	lui	a2,0x2
    1872:	17060613          	addi	a2,a2,368 # 2170 <crctab+0x400>
    1876:	000025b7          	lui	a1,0x2
    187a:	25858593          	addi	a1,a1,600 # 2258 <crctab+0x4e8>
    187e:	4509                	li	a0,2
    1880:	00000097          	auipc	ra,0x0
    1884:	aca080e7          	jalr	-1334(ra) # 134a <fprintf>
    1888:	650d                	lui	a0,0x3
    188a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    188e:	00000097          	auipc	ra,0x0
    1892:	3a0080e7          	jalr	928(ra) # 1c2e <exit>
    1896:	fff90693          	addi	a3,s2,-1
    189a:	4401                	li	s0,0
    189c:	bf8d                	j	180e <memcpy+0x1a>

000000000000189e <itoa>:
    189e:	1101                	addi	sp,sp,-32
    18a0:	ec06                	sd	ra,24(sp)
    18a2:	e822                	sd	s0,16(sp)
    18a4:	e426                	sd	s1,8(sp)
    18a6:	842a                	mv	s0,a0
    18a8:	41f5d71b          	sraiw	a4,a1,0x1f
    18ac:	00e5c7b3          	xor	a5,a1,a4
    18b0:	9f99                	subw	a5,a5,a4
    18b2:	84aa                	mv	s1,a0
    18b4:	862a                	mv	a2,a0
    18b6:	4681                	li	a3,0
    18b8:	4529                	li	a0,10
    18ba:	4825                	li	a6,9
    18bc:	88b6                	mv	a7,a3
    18be:	2685                	addiw	a3,a3,1
    18c0:	02a7e73b          	remw	a4,a5,a0
    18c4:	0307071b          	addiw	a4,a4,48
    18c8:	00e60023          	sb	a4,0(a2)
    18cc:	873e                	mv	a4,a5
    18ce:	02a7c7bb          	divw	a5,a5,a0
    18d2:	0605                	addi	a2,a2,1
    18d4:	fee844e3          	blt	a6,a4,18bc <itoa+0x1e>
    18d8:	0405c863          	bltz	a1,1928 <itoa+0x8a>
    18dc:	96a2                	add	a3,a3,s0
    18de:	00068023          	sb	zero,0(a3)
    18e2:	8522                	mv	a0,s0
    18e4:	00000097          	auipc	ra,0x0
    18e8:	e14080e7          	jalr	-492(ra) # 16f8 <strlen>
    18ec:	fff5071b          	addiw	a4,a0,-1
    18f0:	02e05763          	blez	a4,191e <itoa+0x80>
    18f4:	9722                	add	a4,a4,s0
    18f6:	4681                	li	a3,0
    18f8:	0004c783          	lbu	a5,0(s1)
    18fc:	00074603          	lbu	a2,0(a4)
    1900:	00c48023          	sb	a2,0(s1)
    1904:	00f70023          	sb	a5,0(a4)
    1908:	0016879b          	addiw	a5,a3,1
    190c:	0007869b          	sext.w	a3,a5
    1910:	0485                	addi	s1,s1,1
    1912:	177d                	addi	a4,a4,-1
    1914:	fff7c793          	not	a5,a5
    1918:	9fa9                	addw	a5,a5,a0
    191a:	fcf6cfe3          	blt	a3,a5,18f8 <itoa+0x5a>
    191e:	60e2                	ld	ra,24(sp)
    1920:	6442                	ld	s0,16(sp)
    1922:	64a2                	ld	s1,8(sp)
    1924:	6105                	addi	sp,sp,32
    1926:	8082                	ret
    1928:	96a2                	add	a3,a3,s0
    192a:	02d00793          	li	a5,45
    192e:	00f68023          	sb	a5,0(a3)
    1932:	0028869b          	addiw	a3,a7,2
    1936:	b75d                	j	18dc <itoa+0x3e>

0000000000001938 <atoi>:
    1938:	00054783          	lbu	a5,0(a0)
    193c:	02000713          	li	a4,32
    1940:	00e79763          	bne	a5,a4,194e <atoi+0x16>
    1944:	0505                	addi	a0,a0,1
    1946:	00054783          	lbu	a5,0(a0)
    194a:	fee78de3          	beq	a5,a4,1944 <atoi+0xc>
    194e:	02b00713          	li	a4,43
    1952:	04e78663          	beq	a5,a4,199e <atoi+0x66>
    1956:	02d00713          	li	a4,45
    195a:	4805                	li	a6,1
    195c:	04e78463          	beq	a5,a4,19a4 <atoi+0x6c>
    1960:	00054683          	lbu	a3,0(a0)
    1964:	fd06879b          	addiw	a5,a3,-48
    1968:	0ff7f793          	andi	a5,a5,255
    196c:	4725                	li	a4,9
    196e:	02f76e63          	bltu	a4,a5,19aa <atoi+0x72>
    1972:	4601                	li	a2,0
    1974:	45a5                	li	a1,9
    1976:	0505                	addi	a0,a0,1
    1978:	0026179b          	slliw	a5,a2,0x2
    197c:	9fb1                	addw	a5,a5,a2
    197e:	0017979b          	slliw	a5,a5,0x1
    1982:	9fb5                	addw	a5,a5,a3
    1984:	fd07861b          	addiw	a2,a5,-48
    1988:	00054683          	lbu	a3,0(a0)
    198c:	fd06871b          	addiw	a4,a3,-48
    1990:	0ff77713          	andi	a4,a4,255
    1994:	fee5f1e3          	bgeu	a1,a4,1976 <atoi+0x3e>
    1998:	02c8053b          	mulw	a0,a6,a2
    199c:	8082                	ret
    199e:	0505                	addi	a0,a0,1
    19a0:	4805                	li	a6,1
    19a2:	bf7d                	j	1960 <atoi+0x28>
    19a4:	0505                	addi	a0,a0,1
    19a6:	587d                	li	a6,-1
    19a8:	bf65                	j	1960 <atoi+0x28>
    19aa:	4601                	li	a2,0
    19ac:	b7f5                	j	1998 <atoi+0x60>

00000000000019ae <check_file_handle>:
    19ae:	d8010113          	addi	sp,sp,-640
    19b2:	26113c23          	sd	ra,632(sp)
    19b6:	26813823          	sd	s0,624(sp)
    19ba:	26913423          	sd	s1,616(sp)
    19be:	27213023          	sd	s2,608(sp)
    19c2:	25313c23          	sd	s3,600(sp)
    19c6:	25413823          	sd	s4,592(sp)
    19ca:	25513423          	sd	s5,584(sp)
    19ce:	25613023          	sd	s6,576(sp)
    19d2:	23713c23          	sd	s7,568(sp)
    19d6:	23813823          	sd	s8,560(sp)
    19da:	23913423          	sd	s9,552(sp)
    19de:	23a13023          	sd	s10,544(sp)
    19e2:	21b13c23          	sd	s11,536(sp)
    19e6:	8baa                	mv	s7,a0
    19e8:	8a2e                	mv	s4,a1
    19ea:	8c32                	mv	s8,a2
    19ec:	89b6                	mv	s3,a3
    19ee:	040c                	addi	a1,sp,512
    19f0:	00000097          	auipc	ra,0x0
    19f4:	28e080e7          	jalr	654(ra) # 1c7e <fstat>
    19f8:	20813603          	ld	a2,520(sp)
    19fc:	03361163          	bne	a2,s3,1a1e <check_file_handle+0x70>
    1a00:	06098763          	beqz	s3,1a6e <check_file_handle+0xc0>
    1a04:	4901                	li	s2,0
    1a06:	20000a93          	li	s5,512
    1a0a:	00002cb7          	lui	s9,0x2
    1a0e:	00002db7          	lui	s11,0x2
    1a12:	6b0d                	lui	s6,0x3
    1a14:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a18:	00002d37          	lui	s10,0x2
    1a1c:	aa39                	j	1b3a <check_file_handle+0x18c>
    1a1e:	86ce                	mv	a3,s3
    1a20:	85d2                	mv	a1,s4
    1a22:	00002537          	lui	a0,0x2
    1a26:	2a050513          	addi	a0,a0,672 # 22a0 <crctab+0x530>
    1a2a:	00000097          	auipc	ra,0x0
    1a2e:	942080e7          	jalr	-1726(ra) # 136c <printf>
    1a32:	fc0999e3          	bnez	s3,1a04 <check_file_handle+0x56>
    1a36:	20813683          	ld	a3,520(sp)
    1a3a:	03368a63          	beq	a3,s3,1a6e <check_file_handle+0xc0>
    1a3e:	0a600813          	li	a6,166
    1a42:	000027b7          	lui	a5,0x2
    1a46:	17078793          	addi	a5,a5,368 # 2170 <crctab+0x400>
    1a4a:	874e                	mv	a4,s3
    1a4c:	8652                	mv	a2,s4
    1a4e:	000025b7          	lui	a1,0x2
    1a52:	37058593          	addi	a1,a1,880 # 2370 <crctab+0x600>
    1a56:	4509                	li	a0,2
    1a58:	00000097          	auipc	ra,0x0
    1a5c:	8f2080e7          	jalr	-1806(ra) # 134a <fprintf>
    1a60:	650d                	lui	a0,0x3
    1a62:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a66:	00000097          	auipc	ra,0x0
    1a6a:	1c8080e7          	jalr	456(ra) # 1c2e <exit>
    1a6e:	85d2                	mv	a1,s4
    1a70:	00002537          	lui	a0,0x2
    1a74:	3b850513          	addi	a0,a0,952 # 23b8 <crctab+0x648>
    1a78:	00000097          	auipc	ra,0x0
    1a7c:	8f4080e7          	jalr	-1804(ra) # 136c <printf>
    1a80:	27813083          	ld	ra,632(sp)
    1a84:	27013403          	ld	s0,624(sp)
    1a88:	26813483          	ld	s1,616(sp)
    1a8c:	26013903          	ld	s2,608(sp)
    1a90:	25813983          	ld	s3,600(sp)
    1a94:	25013a03          	ld	s4,592(sp)
    1a98:	24813a83          	ld	s5,584(sp)
    1a9c:	24013b03          	ld	s6,576(sp)
    1aa0:	23813b83          	ld	s7,568(sp)
    1aa4:	23013c03          	ld	s8,560(sp)
    1aa8:	22813c83          	ld	s9,552(sp)
    1aac:	22013d03          	ld	s10,544(sp)
    1ab0:	21813d83          	ld	s11,536(sp)
    1ab4:	28010113          	addi	sp,sp,640
    1ab8:	8082                	ret
    1aba:	09d00893          	li	a7,157
    1abe:	170c8813          	addi	a6,s9,368 # 2170 <crctab+0x400>
    1ac2:	87aa                	mv	a5,a0
    1ac4:	8752                	mv	a4,s4
    1ac6:	86ca                	mv	a3,s2
    1ac8:	8622                	mv	a2,s0
    1aca:	2d0d8593          	addi	a1,s11,720 # 22d0 <crctab+0x560>
    1ace:	4509                	li	a0,2
    1ad0:	00000097          	auipc	ra,0x0
    1ad4:	87a080e7          	jalr	-1926(ra) # 134a <fprintf>
    1ad8:	855a                	mv	a0,s6
    1ada:	00000097          	auipc	ra,0x0
    1ade:	154080e7          	jalr	340(ra) # 1c2e <exit>
    1ae2:	a89d                	j	1b58 <check_file_handle+0x1aa>
    1ae4:	00160593          	addi	a1,a2,1
    1ae8:	0285f163          	bgeu	a1,s0,1b0a <check_file_handle+0x15c>
    1aec:	00c10733          	add	a4,sp,a2
    1af0:	00b487b3          	add	a5,s1,a1
    1af4:	00174683          	lbu	a3,1(a4)
    1af8:	0007c783          	lbu	a5,0(a5)
    1afc:	00f68763          	beq	a3,a5,1b0a <check_file_handle+0x15c>
    1b00:	0585                	addi	a1,a1,1
    1b02:	0705                	addi	a4,a4,1
    1b04:	feb416e3          	bne	s0,a1,1af0 <check_file_handle+0x142>
    1b08:	85a2                	mv	a1,s0
    1b0a:	08100813          	li	a6,129
    1b0e:	170c8793          	addi	a5,s9,368
    1b12:	8752                	mv	a4,s4
    1b14:	012606b3          	add	a3,a2,s2
    1b18:	40c58633          	sub	a2,a1,a2
    1b1c:	318d0593          	addi	a1,s10,792 # 2318 <crctab+0x5a8>
    1b20:	4509                	li	a0,2
    1b22:	00000097          	auipc	ra,0x0
    1b26:	828080e7          	jalr	-2008(ra) # 134a <fprintf>
    1b2a:	855a                	mv	a0,s6
    1b2c:	00000097          	auipc	ra,0x0
    1b30:	102080e7          	jalr	258(ra) # 1c2e <exit>
    1b34:	9922                	add	s2,s2,s0
    1b36:	f13970e3          	bgeu	s2,s3,1a36 <check_file_handle+0x88>
    1b3a:	41298433          	sub	s0,s3,s2
    1b3e:	008af363          	bgeu	s5,s0,1b44 <check_file_handle+0x196>
    1b42:	8456                	mv	s0,s5
    1b44:	0004061b          	sext.w	a2,s0
    1b48:	858a                	mv	a1,sp
    1b4a:	855e                	mv	a0,s7
    1b4c:	00000097          	auipc	ra,0x0
    1b50:	10a080e7          	jalr	266(ra) # 1c56 <read>
    1b54:	f68513e3          	bne	a0,s0,1aba <check_file_handle+0x10c>
    1b58:	012c04b3          	add	s1,s8,s2
    1b5c:	8622                	mv	a2,s0
    1b5e:	85a6                	mv	a1,s1
    1b60:	850a                	mv	a0,sp
    1b62:	00000097          	auipc	ra,0x0
    1b66:	bce080e7          	jalr	-1074(ra) # 1730 <memcmp>
    1b6a:	d569                	beqz	a0,1b34 <check_file_handle+0x186>
    1b6c:	03298163          	beq	s3,s2,1b8e <check_file_handle+0x1e0>
    1b70:	870a                	mv	a4,sp
    1b72:	4601                	li	a2,0
    1b74:	00c487b3          	add	a5,s1,a2
    1b78:	00074683          	lbu	a3,0(a4)
    1b7c:	0007c783          	lbu	a5,0(a5)
    1b80:	f6f692e3          	bne	a3,a5,1ae4 <check_file_handle+0x136>
    1b84:	0605                	addi	a2,a2,1
    1b86:	0705                	addi	a4,a4,1
    1b88:	fe8666e3          	bltu	a2,s0,1b74 <check_file_handle+0x1c6>
    1b8c:	bfa1                	j	1ae4 <check_file_handle+0x136>
    1b8e:	4601                	li	a2,0
    1b90:	4585                	li	a1,1
    1b92:	bfa5                	j	1b0a <check_file_handle+0x15c>

0000000000001b94 <check_file>:
    1b94:	7179                	addi	sp,sp,-48
    1b96:	f406                	sd	ra,40(sp)
    1b98:	f022                	sd	s0,32(sp)
    1b9a:	ec26                	sd	s1,24(sp)
    1b9c:	e84a                	sd	s2,16(sp)
    1b9e:	e44e                	sd	s3,8(sp)
    1ba0:	84aa                	mv	s1,a0
    1ba2:	892e                	mv	s2,a1
    1ba4:	89b2                	mv	s3,a2
    1ba6:	4581                	li	a1,0
    1ba8:	00000097          	auipc	ra,0x0
    1bac:	0a6080e7          	jalr	166(ra) # 1c4e <open>
    1bb0:	842a                	mv	s0,a0
    1bb2:	4789                	li	a5,2
    1bb4:	02a7df63          	bge	a5,a0,1bf2 <check_file+0x5e>
    1bb8:	86ce                	mv	a3,s3
    1bba:	864a                	mv	a2,s2
    1bbc:	85a6                	mv	a1,s1
    1bbe:	8522                	mv	a0,s0
    1bc0:	00000097          	auipc	ra,0x0
    1bc4:	dee080e7          	jalr	-530(ra) # 19ae <check_file_handle>
    1bc8:	85a6                	mv	a1,s1
    1bca:	00002537          	lui	a0,0x2
    1bce:	44050513          	addi	a0,a0,1088 # 2440 <crctab+0x6d0>
    1bd2:	fffff097          	auipc	ra,0xfffff
    1bd6:	79a080e7          	jalr	1946(ra) # 136c <printf>
    1bda:	8522                	mv	a0,s0
    1bdc:	00000097          	auipc	ra,0x0
    1be0:	09a080e7          	jalr	154(ra) # 1c76 <close>
    1be4:	70a2                	ld	ra,40(sp)
    1be6:	7402                	ld	s0,32(sp)
    1be8:	64e2                	ld	s1,24(sp)
    1bea:	6942                	ld	s2,16(sp)
    1bec:	69a2                	ld	s3,8(sp)
    1bee:	6145                	addi	sp,sp,48
    1bf0:	8082                	ret
    1bf2:	0ae00713          	li	a4,174
    1bf6:	000026b7          	lui	a3,0x2
    1bfa:	17068693          	addi	a3,a3,368 # 2170 <crctab+0x400>
    1bfe:	8626                	mv	a2,s1
    1c00:	000025b7          	lui	a1,0x2
    1c04:	3d858593          	addi	a1,a1,984 # 23d8 <crctab+0x668>
    1c08:	4509                	li	a0,2
    1c0a:	fffff097          	auipc	ra,0xfffff
    1c0e:	740080e7          	jalr	1856(ra) # 134a <fprintf>
    1c12:	650d                	lui	a0,0x3
    1c14:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c18:	00000097          	auipc	ra,0x0
    1c1c:	016080e7          	jalr	22(ra) # 1c2e <exit>
    1c20:	bf61                	j	1bb8 <check_file+0x24>

0000000000001c22 <r_sp>:
    1c22:	850a                	mv	a0,sp
    1c24:	8082                	ret

0000000000001c26 <halt>:
    1c26:	4885                	li	a7,1
    1c28:	00000073          	ecall
    1c2c:	8082                	ret

0000000000001c2e <exit>:
    1c2e:	4889                	li	a7,2
    1c30:	00000073          	ecall
    1c34:	8082                	ret

0000000000001c36 <exec>:
    1c36:	488d                	li	a7,3
    1c38:	00000073          	ecall
    1c3c:	8082                	ret

0000000000001c3e <wait>:
    1c3e:	4891                	li	a7,4
    1c40:	00000073          	ecall
    1c44:	8082                	ret

0000000000001c46 <remove>:
    1c46:	4895                	li	a7,5
    1c48:	00000073          	ecall
    1c4c:	8082                	ret

0000000000001c4e <open>:
    1c4e:	4899                	li	a7,6
    1c50:	00000073          	ecall
    1c54:	8082                	ret

0000000000001c56 <read>:
    1c56:	489d                	li	a7,7
    1c58:	00000073          	ecall
    1c5c:	8082                	ret

0000000000001c5e <write>:
    1c5e:	48a1                	li	a7,8
    1c60:	00000073          	ecall
    1c64:	8082                	ret

0000000000001c66 <seek>:
    1c66:	48a5                	li	a7,9
    1c68:	00000073          	ecall
    1c6c:	8082                	ret

0000000000001c6e <tell>:
    1c6e:	48a9                	li	a7,10
    1c70:	00000073          	ecall
    1c74:	8082                	ret

0000000000001c76 <close>:
    1c76:	48ad                	li	a7,11
    1c78:	00000073          	ecall
    1c7c:	8082                	ret

0000000000001c7e <fstat>:
    1c7e:	48b1                	li	a7,12
    1c80:	00000073          	ecall
    1c84:	8082                	ret

0000000000001c86 <mmap>:
    1c86:	48b5                	li	a7,13
    1c88:	00000073          	ecall
    1c8c:	8082                	ret

0000000000001c8e <munmap>:
    1c8e:	48b9                	li	a7,14
    1c90:	00000073          	ecall
    1c94:	8082                	ret

0000000000001c96 <chdir>:
    1c96:	48bd                	li	a7,15
    1c98:	00000073          	ecall
    1c9c:	8082                	ret

0000000000001c9e <mkdir>:
    1c9e:	48c1                	li	a7,16
    1ca0:	00000073          	ecall
    1ca4:	8082                	ret
