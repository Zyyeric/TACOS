
build/user/vm/child-linear:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	714d                	addi	sp,sp,-336
    1002:	e686                	sd	ra,328(sp)
    1004:	e2a2                	sd	s0,320(sp)
    1006:	fe26                	sd	s1,312(sp)
    1008:	fa4a                	sd	s2,304(sp)
    100a:	f64e                	sd	s3,296(sp)
    100c:	f252                	sd	s4,288(sp)
    100e:	ee56                	sd	s5,280(sp)
    1010:	050e                	slli	a0,a0,0x3
    1012:	95aa                	add	a1,a1,a0
    1014:	ff85b403          	ld	s0,-8(a1)
    1018:	8522                	mv	a0,s0
    101a:	00000097          	auipc	ra,0x0
    101e:	6ea080e7          	jalr	1770(ra) # 1704 <strlen>
    1022:	862a                	mv	a2,a0
    1024:	85a2                	mv	a1,s0
    1026:	0028                	addi	a0,sp,8
    1028:	00000097          	auipc	ra,0x0
    102c:	5b2080e7          	jalr	1458(ra) # 15da <arc4_init>
    1030:	00100637          	lui	a2,0x100
    1034:	000034b7          	lui	s1,0x3
    1038:	01048593          	addi	a1,s1,16 # 3010 <buf>
    103c:	0028                	addi	a0,sp,8
    103e:	00000097          	auipc	ra,0x0
    1042:	600080e7          	jalr	1536(ra) # 163e <arc4_crypt>
    1046:	8522                	mv	a0,s0
    1048:	00000097          	auipc	ra,0x0
    104c:	6bc080e7          	jalr	1724(ra) # 1704 <strlen>
    1050:	862a                	mv	a2,a0
    1052:	85a2                	mv	a1,s0
    1054:	0028                	addi	a0,sp,8
    1056:	00000097          	auipc	ra,0x0
    105a:	584080e7          	jalr	1412(ra) # 15da <arc4_init>
    105e:	00100637          	lui	a2,0x100
    1062:	01048593          	addi	a1,s1,16
    1066:	0028                	addi	a0,sp,8
    1068:	00000097          	auipc	ra,0x0
    106c:	5d6080e7          	jalr	1494(ra) # 163e <arc4_crypt>
    1070:	01048493          	addi	s1,s1,16
    1074:	4401                	li	s0,0
    1076:	00002ab7          	lui	s5,0x2
    107a:	00002a37          	lui	s4,0x2
    107e:	698d                	lui	s3,0x3
    1080:	03998993          	addi	s3,s3,57 # 3039 <buf+0x29>
    1084:	00100937          	lui	s2,0x100
    1088:	a029                	j	1092 <main+0x92>
    108a:	0405                	addi	s0,s0,1
    108c:	0485                	addi	s1,s1,1
    108e:	03240663          	beq	s0,s2,10ba <main+0xba>
    1092:	0004c783          	lbu	a5,0(s1)
    1096:	dbf5                	beqz	a5,108a <main+0x8a>
    1098:	4769                	li	a4,26
    109a:	cc0a8693          	addi	a3,s5,-832 # 1cc0 <mkdir+0x16>
    109e:	8622                	mv	a2,s0
    10a0:	cd8a0593          	addi	a1,s4,-808 # 1cd8 <mkdir+0x2e>
    10a4:	4509                	li	a0,2
    10a6:	00000097          	auipc	ra,0x0
    10aa:	2b0080e7          	jalr	688(ra) # 1356 <fprintf>
    10ae:	854e                	mv	a0,s3
    10b0:	00001097          	auipc	ra,0x1
    10b4:	b8a080e7          	jalr	-1142(ra) # 1c3a <exit>
    10b8:	bfc9                	j	108a <main+0x8a>
    10ba:	60b6                	ld	ra,328(sp)
    10bc:	6416                	ld	s0,320(sp)
    10be:	74f2                	ld	s1,312(sp)
    10c0:	7952                	ld	s2,304(sp)
    10c2:	79b2                	ld	s3,296(sp)
    10c4:	7a12                	ld	s4,288(sp)
    10c6:	6af2                	ld	s5,280(sp)
    10c8:	6171                	addi	sp,sp,336
    10ca:	8082                	ret

00000000000010cc <putc>:
    10cc:	1101                	addi	sp,sp,-32
    10ce:	ec06                	sd	ra,24(sp)
    10d0:	00b107a3          	sb	a1,15(sp)
    10d4:	4605                	li	a2,1
    10d6:	00f10593          	addi	a1,sp,15
    10da:	00001097          	auipc	ra,0x1
    10de:	b90080e7          	jalr	-1136(ra) # 1c6a <write>
    10e2:	60e2                	ld	ra,24(sp)
    10e4:	6105                	addi	sp,sp,32
    10e6:	8082                	ret

00000000000010e8 <printint>:
    10e8:	7179                	addi	sp,sp,-48
    10ea:	f406                	sd	ra,40(sp)
    10ec:	f022                	sd	s0,32(sp)
    10ee:	ec26                	sd	s1,24(sp)
    10f0:	e84a                	sd	s2,16(sp)
    10f2:	84aa                	mv	s1,a0
    10f4:	c299                	beqz	a3,10fa <printint+0x12>
    10f6:	0805c363          	bltz	a1,117c <printint+0x94>
    10fa:	2581                	sext.w	a1,a1
    10fc:	4881                	li	a7,0
    10fe:	868a                	mv	a3,sp
    1100:	4701                	li	a4,0
    1102:	2601                	sext.w	a2,a2
    1104:	00002537          	lui	a0,0x2
    1108:	d0850513          	addi	a0,a0,-760 # 1d08 <digits>
    110c:	883a                	mv	a6,a4
    110e:	2705                	addiw	a4,a4,1
    1110:	02c5f7bb          	remuw	a5,a1,a2
    1114:	1782                	slli	a5,a5,0x20
    1116:	9381                	srli	a5,a5,0x20
    1118:	97aa                	add	a5,a5,a0
    111a:	0007c783          	lbu	a5,0(a5)
    111e:	00f68023          	sb	a5,0(a3)
    1122:	0005879b          	sext.w	a5,a1
    1126:	02c5d5bb          	divuw	a1,a1,a2
    112a:	0685                	addi	a3,a3,1
    112c:	fec7f0e3          	bgeu	a5,a2,110c <printint+0x24>
    1130:	00088a63          	beqz	a7,1144 <printint+0x5c>
    1134:	081c                	addi	a5,sp,16
    1136:	973e                	add	a4,a4,a5
    1138:	02d00793          	li	a5,45
    113c:	fef70823          	sb	a5,-16(a4)
    1140:	0028071b          	addiw	a4,a6,2
    1144:	02e05663          	blez	a4,1170 <printint+0x88>
    1148:	00e10433          	add	s0,sp,a4
    114c:	fff10913          	addi	s2,sp,-1
    1150:	993a                	add	s2,s2,a4
    1152:	377d                	addiw	a4,a4,-1
    1154:	1702                	slli	a4,a4,0x20
    1156:	9301                	srli	a4,a4,0x20
    1158:	40e90933          	sub	s2,s2,a4
    115c:	fff44583          	lbu	a1,-1(s0)
    1160:	8526                	mv	a0,s1
    1162:	00000097          	auipc	ra,0x0
    1166:	f6a080e7          	jalr	-150(ra) # 10cc <putc>
    116a:	147d                	addi	s0,s0,-1
    116c:	ff2418e3          	bne	s0,s2,115c <printint+0x74>
    1170:	70a2                	ld	ra,40(sp)
    1172:	7402                	ld	s0,32(sp)
    1174:	64e2                	ld	s1,24(sp)
    1176:	6942                	ld	s2,16(sp)
    1178:	6145                	addi	sp,sp,48
    117a:	8082                	ret
    117c:	40b005bb          	negw	a1,a1
    1180:	4885                	li	a7,1
    1182:	bfb5                	j	10fe <printint+0x16>

0000000000001184 <vprintf>:
    1184:	7159                	addi	sp,sp,-112
    1186:	f486                	sd	ra,104(sp)
    1188:	f0a2                	sd	s0,96(sp)
    118a:	eca6                	sd	s1,88(sp)
    118c:	e8ca                	sd	s2,80(sp)
    118e:	e4ce                	sd	s3,72(sp)
    1190:	e0d2                	sd	s4,64(sp)
    1192:	fc56                	sd	s5,56(sp)
    1194:	f85a                	sd	s6,48(sp)
    1196:	f45e                	sd	s7,40(sp)
    1198:	f062                	sd	s8,32(sp)
    119a:	ec66                	sd	s9,24(sp)
    119c:	e86a                	sd	s10,16(sp)
    119e:	e46e                	sd	s11,8(sp)
    11a0:	0005c483          	lbu	s1,0(a1)
    11a4:	18048a63          	beqz	s1,1338 <vprintf+0x1b4>
    11a8:	8a2a                	mv	s4,a0
    11aa:	8ab2                	mv	s5,a2
    11ac:	00158413          	addi	s0,a1,1
    11b0:	4901                	li	s2,0
    11b2:	02500993          	li	s3,37
    11b6:	06400b93          	li	s7,100
    11ba:	06c00c13          	li	s8,108
    11be:	07800c93          	li	s9,120
    11c2:	07000d13          	li	s10,112
    11c6:	00002db7          	lui	s11,0x2
    11ca:	00002b37          	lui	s6,0x2
    11ce:	d08b0b13          	addi	s6,s6,-760 # 1d08 <digits>
    11d2:	a839                	j	11f0 <vprintf+0x6c>
    11d4:	85a6                	mv	a1,s1
    11d6:	8552                	mv	a0,s4
    11d8:	00000097          	auipc	ra,0x0
    11dc:	ef4080e7          	jalr	-268(ra) # 10cc <putc>
    11e0:	a019                	j	11e6 <vprintf+0x62>
    11e2:	01390f63          	beq	s2,s3,1200 <vprintf+0x7c>
    11e6:	0405                	addi	s0,s0,1
    11e8:	fff44483          	lbu	s1,-1(s0)
    11ec:	14048663          	beqz	s1,1338 <vprintf+0x1b4>
    11f0:	0004879b          	sext.w	a5,s1
    11f4:	fe0917e3          	bnez	s2,11e2 <vprintf+0x5e>
    11f8:	fd379ee3          	bne	a5,s3,11d4 <vprintf+0x50>
    11fc:	893e                	mv	s2,a5
    11fe:	b7e5                	j	11e6 <vprintf+0x62>
    1200:	05778063          	beq	a5,s7,1240 <vprintf+0xbc>
    1204:	05878c63          	beq	a5,s8,125c <vprintf+0xd8>
    1208:	07978863          	beq	a5,s9,1278 <vprintf+0xf4>
    120c:	09a78463          	beq	a5,s10,1294 <vprintf+0x110>
    1210:	07300713          	li	a4,115
    1214:	0ce78263          	beq	a5,a4,12d8 <vprintf+0x154>
    1218:	06300713          	li	a4,99
    121c:	0ee78763          	beq	a5,a4,130a <vprintf+0x186>
    1220:	11378163          	beq	a5,s3,1322 <vprintf+0x19e>
    1224:	85ce                	mv	a1,s3
    1226:	8552                	mv	a0,s4
    1228:	00000097          	auipc	ra,0x0
    122c:	ea4080e7          	jalr	-348(ra) # 10cc <putc>
    1230:	85a6                	mv	a1,s1
    1232:	8552                	mv	a0,s4
    1234:	00000097          	auipc	ra,0x0
    1238:	e98080e7          	jalr	-360(ra) # 10cc <putc>
    123c:	4901                	li	s2,0
    123e:	b765                	j	11e6 <vprintf+0x62>
    1240:	008a8493          	addi	s1,s5,8
    1244:	4685                	li	a3,1
    1246:	4629                	li	a2,10
    1248:	000aa583          	lw	a1,0(s5)
    124c:	8552                	mv	a0,s4
    124e:	00000097          	auipc	ra,0x0
    1252:	e9a080e7          	jalr	-358(ra) # 10e8 <printint>
    1256:	8aa6                	mv	s5,s1
    1258:	4901                	li	s2,0
    125a:	b771                	j	11e6 <vprintf+0x62>
    125c:	008a8493          	addi	s1,s5,8
    1260:	4681                	li	a3,0
    1262:	4629                	li	a2,10
    1264:	000aa583          	lw	a1,0(s5)
    1268:	8552                	mv	a0,s4
    126a:	00000097          	auipc	ra,0x0
    126e:	e7e080e7          	jalr	-386(ra) # 10e8 <printint>
    1272:	8aa6                	mv	s5,s1
    1274:	4901                	li	s2,0
    1276:	bf85                	j	11e6 <vprintf+0x62>
    1278:	008a8493          	addi	s1,s5,8
    127c:	4681                	li	a3,0
    127e:	4641                	li	a2,16
    1280:	000aa583          	lw	a1,0(s5)
    1284:	8552                	mv	a0,s4
    1286:	00000097          	auipc	ra,0x0
    128a:	e62080e7          	jalr	-414(ra) # 10e8 <printint>
    128e:	8aa6                	mv	s5,s1
    1290:	4901                	li	s2,0
    1292:	bf91                	j	11e6 <vprintf+0x62>
    1294:	008a8913          	addi	s2,s5,8
    1298:	000aba83          	ld	s5,0(s5)
    129c:	03000593          	li	a1,48
    12a0:	8552                	mv	a0,s4
    12a2:	00000097          	auipc	ra,0x0
    12a6:	e2a080e7          	jalr	-470(ra) # 10cc <putc>
    12aa:	85e6                	mv	a1,s9
    12ac:	8552                	mv	a0,s4
    12ae:	00000097          	auipc	ra,0x0
    12b2:	e1e080e7          	jalr	-482(ra) # 10cc <putc>
    12b6:	44c1                	li	s1,16
    12b8:	03cad793          	srli	a5,s5,0x3c
    12bc:	97da                	add	a5,a5,s6
    12be:	0007c583          	lbu	a1,0(a5)
    12c2:	8552                	mv	a0,s4
    12c4:	00000097          	auipc	ra,0x0
    12c8:	e08080e7          	jalr	-504(ra) # 10cc <putc>
    12cc:	0a92                	slli	s5,s5,0x4
    12ce:	34fd                	addiw	s1,s1,-1
    12d0:	f4e5                	bnez	s1,12b8 <vprintf+0x134>
    12d2:	8aca                	mv	s5,s2
    12d4:	4901                	li	s2,0
    12d6:	bf01                	j	11e6 <vprintf+0x62>
    12d8:	008a8913          	addi	s2,s5,8
    12dc:	000ab483          	ld	s1,0(s5)
    12e0:	c085                	beqz	s1,1300 <vprintf+0x17c>
    12e2:	0004c583          	lbu	a1,0(s1)
    12e6:	c5b1                	beqz	a1,1332 <vprintf+0x1ae>
    12e8:	8552                	mv	a0,s4
    12ea:	00000097          	auipc	ra,0x0
    12ee:	de2080e7          	jalr	-542(ra) # 10cc <putc>
    12f2:	0485                	addi	s1,s1,1
    12f4:	0004c583          	lbu	a1,0(s1)
    12f8:	f9e5                	bnez	a1,12e8 <vprintf+0x164>
    12fa:	8aca                	mv	s5,s2
    12fc:	4901                	li	s2,0
    12fe:	b5e5                	j	11e6 <vprintf+0x62>
    1300:	d00d8493          	addi	s1,s11,-768 # 1d00 <mkdir+0x56>
    1304:	02800593          	li	a1,40
    1308:	b7c5                	j	12e8 <vprintf+0x164>
    130a:	008a8493          	addi	s1,s5,8
    130e:	000ac583          	lbu	a1,0(s5)
    1312:	8552                	mv	a0,s4
    1314:	00000097          	auipc	ra,0x0
    1318:	db8080e7          	jalr	-584(ra) # 10cc <putc>
    131c:	8aa6                	mv	s5,s1
    131e:	4901                	li	s2,0
    1320:	b5d9                	j	11e6 <vprintf+0x62>
    1322:	85ce                	mv	a1,s3
    1324:	8552                	mv	a0,s4
    1326:	00000097          	auipc	ra,0x0
    132a:	da6080e7          	jalr	-602(ra) # 10cc <putc>
    132e:	4901                	li	s2,0
    1330:	bd5d                	j	11e6 <vprintf+0x62>
    1332:	8aca                	mv	s5,s2
    1334:	4901                	li	s2,0
    1336:	bd45                	j	11e6 <vprintf+0x62>
    1338:	70a6                	ld	ra,104(sp)
    133a:	7406                	ld	s0,96(sp)
    133c:	64e6                	ld	s1,88(sp)
    133e:	6946                	ld	s2,80(sp)
    1340:	69a6                	ld	s3,72(sp)
    1342:	6a06                	ld	s4,64(sp)
    1344:	7ae2                	ld	s5,56(sp)
    1346:	7b42                	ld	s6,48(sp)
    1348:	7ba2                	ld	s7,40(sp)
    134a:	7c02                	ld	s8,32(sp)
    134c:	6ce2                	ld	s9,24(sp)
    134e:	6d42                	ld	s10,16(sp)
    1350:	6da2                	ld	s11,8(sp)
    1352:	6165                	addi	sp,sp,112
    1354:	8082                	ret

0000000000001356 <fprintf>:
    1356:	715d                	addi	sp,sp,-80
    1358:	ec06                	sd	ra,24(sp)
    135a:	f032                	sd	a2,32(sp)
    135c:	f436                	sd	a3,40(sp)
    135e:	f83a                	sd	a4,48(sp)
    1360:	fc3e                	sd	a5,56(sp)
    1362:	e0c2                	sd	a6,64(sp)
    1364:	e4c6                	sd	a7,72(sp)
    1366:	1010                	addi	a2,sp,32
    1368:	e432                	sd	a2,8(sp)
    136a:	00000097          	auipc	ra,0x0
    136e:	e1a080e7          	jalr	-486(ra) # 1184 <vprintf>
    1372:	60e2                	ld	ra,24(sp)
    1374:	6161                	addi	sp,sp,80
    1376:	8082                	ret

0000000000001378 <printf>:
    1378:	711d                	addi	sp,sp,-96
    137a:	ec06                	sd	ra,24(sp)
    137c:	f42e                	sd	a1,40(sp)
    137e:	f832                	sd	a2,48(sp)
    1380:	fc36                	sd	a3,56(sp)
    1382:	e0ba                	sd	a4,64(sp)
    1384:	e4be                	sd	a5,72(sp)
    1386:	e8c2                	sd	a6,80(sp)
    1388:	ecc6                	sd	a7,88(sp)
    138a:	1030                	addi	a2,sp,40
    138c:	e432                	sd	a2,8(sp)
    138e:	85aa                	mv	a1,a0
    1390:	4505                	li	a0,1
    1392:	00000097          	auipc	ra,0x0
    1396:	df2080e7          	jalr	-526(ra) # 1184 <vprintf>
    139a:	60e2                	ld	ra,24(sp)
    139c:	6125                	addi	sp,sp,96
    139e:	8082                	ret

00000000000013a0 <cksum>:
    13a0:	cdb1                	beqz	a1,13fc <cksum+0x5c>
    13a2:	00b50833          	add	a6,a0,a1
    13a6:	4781                	li	a5,0
    13a8:	00002637          	lui	a2,0x2
    13ac:	d2060613          	addi	a2,a2,-736 # 1d20 <crctab>
    13b0:	0505                	addi	a0,a0,1
    13b2:	0087969b          	slliw	a3,a5,0x8
    13b6:	0187d71b          	srliw	a4,a5,0x18
    13ba:	fff54783          	lbu	a5,-1(a0)
    13be:	8f3d                	xor	a4,a4,a5
    13c0:	1702                	slli	a4,a4,0x20
    13c2:	9301                	srli	a4,a4,0x20
    13c4:	070a                	slli	a4,a4,0x2
    13c6:	9732                	add	a4,a4,a2
    13c8:	431c                	lw	a5,0(a4)
    13ca:	8fb5                	xor	a5,a5,a3
    13cc:	2781                	sext.w	a5,a5
    13ce:	fea811e3          	bne	a6,a0,13b0 <cksum+0x10>
    13d2:	00002637          	lui	a2,0x2
    13d6:	d2060613          	addi	a2,a2,-736 # 1d20 <crctab>
    13da:	0ff5f693          	andi	a3,a1,255
    13de:	81a1                	srli	a1,a1,0x8
    13e0:	0087951b          	slliw	a0,a5,0x8
    13e4:	0187d71b          	srliw	a4,a5,0x18
    13e8:	8f35                	xor	a4,a4,a3
    13ea:	070a                	slli	a4,a4,0x2
    13ec:	9732                	add	a4,a4,a2
    13ee:	431c                	lw	a5,0(a4)
    13f0:	8fa9                	xor	a5,a5,a0
    13f2:	2781                	sext.w	a5,a5
    13f4:	f1fd                	bnez	a1,13da <cksum+0x3a>
    13f6:	fff7c513          	not	a0,a5
    13fa:	8082                	ret
    13fc:	4781                	li	a5,0
    13fe:	bfe5                	j	13f6 <cksum+0x56>

0000000000001400 <swap_bytes>:
    1400:	ce19                	beqz	a2,141e <swap_bytes+0x1e>
    1402:	87aa                	mv	a5,a0
    1404:	962a                	add	a2,a2,a0
    1406:	0007c703          	lbu	a4,0(a5)
    140a:	0005c683          	lbu	a3,0(a1)
    140e:	00d78023          	sb	a3,0(a5)
    1412:	00e58023          	sb	a4,0(a1)
    1416:	0785                	addi	a5,a5,1
    1418:	0585                	addi	a1,a1,1
    141a:	fec796e3          	bne	a5,a2,1406 <swap_bytes+0x6>
    141e:	8082                	ret

0000000000001420 <random_init>:
    1420:	7139                	addi	sp,sp,-64
    1422:	fc06                	sd	ra,56(sp)
    1424:	f822                	sd	s0,48(sp)
    1426:	f426                	sd	s1,40(sp)
    1428:	f04a                	sd	s2,32(sp)
    142a:	ec4e                	sd	s3,24(sp)
    142c:	e852                	sd	s4,16(sp)
    142e:	c62a                	sw	a0,12(sp)
    1430:	000037b7          	lui	a5,0x3
    1434:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1438:	eca5                	bnez	s1,14b0 <random_init+0x90>
    143a:	00103737          	lui	a4,0x103
    143e:	01070913          	addi	s2,a4,16 # 103010 <s>
    1442:	01070713          	addi	a4,a4,16
    1446:	87a6                	mv	a5,s1
    1448:	10000693          	li	a3,256
    144c:	00f70023          	sb	a5,0(a4)
    1450:	2785                	addiw	a5,a5,1
    1452:	0705                	addi	a4,a4,1
    1454:	fed79ce3          	bne	a5,a3,144c <random_init+0x2c>
    1458:	4401                	li	s0,0
    145a:	001039b7          	lui	s3,0x103
    145e:	01098993          	addi	s3,s3,16 # 103010 <s>
    1462:	10000a13          	li	s4,256
    1466:	0034f793          	andi	a5,s1,3
    146a:	0818                	addi	a4,sp,16
    146c:	97ba                	add	a5,a5,a4
    146e:	ffc7c783          	lbu	a5,-4(a5)
    1472:	00094703          	lbu	a4,0(s2) # 100000 <buf+0xfcff0>
    1476:	9fb9                	addw	a5,a5,a4
    1478:	9c3d                	addw	s0,s0,a5
    147a:	0ff47413          	andi	s0,s0,255
    147e:	4605                	li	a2,1
    1480:	008985b3          	add	a1,s3,s0
    1484:	854a                	mv	a0,s2
    1486:	00000097          	auipc	ra,0x0
    148a:	f7a080e7          	jalr	-134(ra) # 1400 <swap_bytes>
    148e:	2485                	addiw	s1,s1,1
    1490:	0905                	addi	s2,s2,1
    1492:	fd449ae3          	bne	s1,s4,1466 <random_init+0x46>
    1496:	000037b7          	lui	a5,0x3
    149a:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    149e:	000037b7          	lui	a5,0x3
    14a2:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14a6:	000037b7          	lui	a5,0x3
    14aa:	4705                	li	a4,1
    14ac:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14b0:	70e2                	ld	ra,56(sp)
    14b2:	7442                	ld	s0,48(sp)
    14b4:	74a2                	ld	s1,40(sp)
    14b6:	7902                	ld	s2,32(sp)
    14b8:	69e2                	ld	s3,24(sp)
    14ba:	6a42                	ld	s4,16(sp)
    14bc:	6121                	addi	sp,sp,64
    14be:	8082                	ret

00000000000014c0 <random_bytes>:
    14c0:	7139                	addi	sp,sp,-64
    14c2:	fc06                	sd	ra,56(sp)
    14c4:	f822                	sd	s0,48(sp)
    14c6:	f426                	sd	s1,40(sp)
    14c8:	f04a                	sd	s2,32(sp)
    14ca:	ec4e                	sd	s3,24(sp)
    14cc:	e852                	sd	s4,16(sp)
    14ce:	e456                	sd	s5,8(sp)
    14d0:	e05a                	sd	s6,0(sp)
    14d2:	892a                	mv	s2,a0
    14d4:	8aae                	mv	s5,a1
    14d6:	000037b7          	lui	a5,0x3
    14da:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14de:	c3c1                	beqz	a5,155e <random_bytes+0x9e>
    14e0:	060a8563          	beqz	s5,154a <random_bytes+0x8a>
    14e4:	9aca                	add	s5,s5,s2
    14e6:	00003a37          	lui	s4,0x3
    14ea:	001034b7          	lui	s1,0x103
    14ee:	01048493          	addi	s1,s1,16 # 103010 <s>
    14f2:	000039b7          	lui	s3,0x3
    14f6:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14fa:	2505                	addiw	a0,a0,1
    14fc:	0ff57513          	andi	a0,a0,255
    1500:	00aa02a3          	sb	a0,5(s4)
    1504:	00a48b33          	add	s6,s1,a0
    1508:	000b4403          	lbu	s0,0(s6)
    150c:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1510:	9c3d                	addw	s0,s0,a5
    1512:	0ff47413          	andi	s0,s0,255
    1516:	00898223          	sb	s0,4(s3)
    151a:	4605                	li	a2,1
    151c:	008485b3          	add	a1,s1,s0
    1520:	855a                	mv	a0,s6
    1522:	00000097          	auipc	ra,0x0
    1526:	ede080e7          	jalr	-290(ra) # 1400 <swap_bytes>
    152a:	9426                	add	s0,s0,s1
    152c:	000b4783          	lbu	a5,0(s6)
    1530:	00044703          	lbu	a4,0(s0)
    1534:	9fb9                	addw	a5,a5,a4
    1536:	0ff7f793          	andi	a5,a5,255
    153a:	97a6                	add	a5,a5,s1
    153c:	0007c783          	lbu	a5,0(a5)
    1540:	00f90023          	sb	a5,0(s2)
    1544:	0905                	addi	s2,s2,1
    1546:	fb2a98e3          	bne	s5,s2,14f6 <random_bytes+0x36>
    154a:	70e2                	ld	ra,56(sp)
    154c:	7442                	ld	s0,48(sp)
    154e:	74a2                	ld	s1,40(sp)
    1550:	7902                	ld	s2,32(sp)
    1552:	69e2                	ld	s3,24(sp)
    1554:	6a42                	ld	s4,16(sp)
    1556:	6aa2                	ld	s5,8(sp)
    1558:	6b02                	ld	s6,0(sp)
    155a:	6121                	addi	sp,sp,64
    155c:	8082                	ret
    155e:	4501                	li	a0,0
    1560:	00000097          	auipc	ra,0x0
    1564:	ec0080e7          	jalr	-320(ra) # 1420 <random_init>
    1568:	bfa5                	j	14e0 <random_bytes+0x20>

000000000000156a <random_ulong>:
    156a:	1101                	addi	sp,sp,-32
    156c:	ec06                	sd	ra,24(sp)
    156e:	45a1                	li	a1,8
    1570:	0028                	addi	a0,sp,8
    1572:	00000097          	auipc	ra,0x0
    1576:	f4e080e7          	jalr	-178(ra) # 14c0 <random_bytes>
    157a:	6522                	ld	a0,8(sp)
    157c:	60e2                	ld	ra,24(sp)
    157e:	6105                	addi	sp,sp,32
    1580:	8082                	ret

0000000000001582 <shuffle>:
    1582:	c9b9                	beqz	a1,15d8 <shuffle+0x56>
    1584:	7179                	addi	sp,sp,-48
    1586:	f406                	sd	ra,40(sp)
    1588:	f022                	sd	s0,32(sp)
    158a:	ec26                	sd	s1,24(sp)
    158c:	e84a                	sd	s2,16(sp)
    158e:	e44e                	sd	s3,8(sp)
    1590:	e052                	sd	s4,0(sp)
    1592:	8a2a                	mv	s4,a0
    1594:	89ae                	mv	s3,a1
    1596:	84b2                	mv	s1,a2
    1598:	892a                	mv	s2,a0
    159a:	4401                	li	s0,0
    159c:	00000097          	auipc	ra,0x0
    15a0:	fce080e7          	jalr	-50(ra) # 156a <random_ulong>
    15a4:	408985b3          	sub	a1,s3,s0
    15a8:	02b575b3          	remu	a1,a0,a1
    15ac:	95a2                	add	a1,a1,s0
    15ae:	029585b3          	mul	a1,a1,s1
    15b2:	8626                	mv	a2,s1
    15b4:	95d2                	add	a1,a1,s4
    15b6:	854a                	mv	a0,s2
    15b8:	00000097          	auipc	ra,0x0
    15bc:	e48080e7          	jalr	-440(ra) # 1400 <swap_bytes>
    15c0:	0405                	addi	s0,s0,1
    15c2:	9926                	add	s2,s2,s1
    15c4:	fc899ce3          	bne	s3,s0,159c <shuffle+0x1a>
    15c8:	70a2                	ld	ra,40(sp)
    15ca:	7402                	ld	s0,32(sp)
    15cc:	64e2                	ld	s1,24(sp)
    15ce:	6942                	ld	s2,16(sp)
    15d0:	69a2                	ld	s3,8(sp)
    15d2:	6a02                	ld	s4,0(sp)
    15d4:	6145                	addi	sp,sp,48
    15d6:	8082                	ret
    15d8:	8082                	ret

00000000000015da <arc4_init>:
    15da:	100500a3          	sb	zero,257(a0)
    15de:	10050023          	sb	zero,256(a0)
    15e2:	4781                	li	a5,0
    15e4:	10000693          	li	a3,256
    15e8:	00f50733          	add	a4,a0,a5
    15ec:	00f70023          	sb	a5,0(a4)
    15f0:	0785                	addi	a5,a5,1
    15f2:	fed79be3          	bne	a5,a3,15e8 <arc4_init+0xe>
    15f6:	86aa                	mv	a3,a0
    15f8:	10050e13          	addi	t3,a0,256
    15fc:	4701                	li	a4,0
    15fe:	4781                	li	a5,0
    1600:	0006c883          	lbu	a7,0(a3)
    1604:	00f58833          	add	a6,a1,a5
    1608:	00084803          	lbu	a6,0(a6)
    160c:	00e8873b          	addw	a4,a7,a4
    1610:	00e8073b          	addw	a4,a6,a4
    1614:	0ff77713          	andi	a4,a4,255
    1618:	00e50833          	add	a6,a0,a4
    161c:	00084303          	lbu	t1,0(a6)
    1620:	00668023          	sb	t1,0(a3)
    1624:	01180023          	sb	a7,0(a6)
    1628:	0785                	addi	a5,a5,1
    162a:	00c7b833          	sltu	a6,a5,a2
    162e:	41000833          	neg	a6,a6
    1632:	0107f7b3          	and	a5,a5,a6
    1636:	0685                	addi	a3,a3,1
    1638:	fdc694e3          	bne	a3,t3,1600 <arc4_init+0x26>
    163c:	8082                	ret

000000000000163e <arc4_crypt>:
    163e:	10054e03          	lbu	t3,256(a0)
    1642:	10154803          	lbu	a6,257(a0)
    1646:	fff60e93          	addi	t4,a2,-1
    164a:	c225                	beqz	a2,16aa <arc4_crypt+0x6c>
    164c:	00c588b3          	add	a7,a1,a2
    1650:	86ae                	mv	a3,a1
    1652:	001e031b          	addiw	t1,t3,1
    1656:	40b3033b          	subw	t1,t1,a1
    165a:	00d3073b          	addw	a4,t1,a3
    165e:	0ff77713          	andi	a4,a4,255
    1662:	972a                	add	a4,a4,a0
    1664:	00074603          	lbu	a2,0(a4)
    1668:	0106083b          	addw	a6,a2,a6
    166c:	0ff87813          	andi	a6,a6,255
    1670:	010507b3          	add	a5,a0,a6
    1674:	0007c583          	lbu	a1,0(a5)
    1678:	00b70023          	sb	a1,0(a4)
    167c:	00c78023          	sb	a2,0(a5)
    1680:	0685                	addi	a3,a3,1
    1682:	00074783          	lbu	a5,0(a4)
    1686:	9fb1                	addw	a5,a5,a2
    1688:	0ff7f793          	andi	a5,a5,255
    168c:	97aa                	add	a5,a5,a0
    168e:	0007c783          	lbu	a5,0(a5)
    1692:	fff6c703          	lbu	a4,-1(a3)
    1696:	8fb9                	xor	a5,a5,a4
    1698:	fef68fa3          	sb	a5,-1(a3)
    169c:	fb169fe3          	bne	a3,a7,165a <arc4_crypt+0x1c>
    16a0:	2e85                	addiw	t4,t4,1
    16a2:	01ce8e3b          	addw	t3,t4,t3
    16a6:	0ffe7e13          	andi	t3,t3,255
    16aa:	11c50023          	sb	t3,256(a0)
    16ae:	110500a3          	sb	a6,257(a0)
    16b2:	8082                	ret

00000000000016b4 <_main>:
    16b4:	1141                	addi	sp,sp,-16
    16b6:	e406                	sd	ra,8(sp)
    16b8:	00000097          	auipc	ra,0x0
    16bc:	948080e7          	jalr	-1720(ra) # 1000 <main>
    16c0:	4501                	li	a0,0
    16c2:	00000097          	auipc	ra,0x0
    16c6:	578080e7          	jalr	1400(ra) # 1c3a <exit>
    16ca:	60a2                	ld	ra,8(sp)
    16cc:	0141                	addi	sp,sp,16
    16ce:	8082                	ret

00000000000016d0 <strcmp>:
    16d0:	00054783          	lbu	a5,0(a0)
    16d4:	cb91                	beqz	a5,16e8 <strcmp+0x18>
    16d6:	0005c703          	lbu	a4,0(a1)
    16da:	00f71763          	bne	a4,a5,16e8 <strcmp+0x18>
    16de:	0505                	addi	a0,a0,1
    16e0:	0585                	addi	a1,a1,1
    16e2:	00054783          	lbu	a5,0(a0)
    16e6:	fbe5                	bnez	a5,16d6 <strcmp+0x6>
    16e8:	0005c503          	lbu	a0,0(a1)
    16ec:	40a7853b          	subw	a0,a5,a0
    16f0:	8082                	ret

00000000000016f2 <strcpy>:
    16f2:	87aa                	mv	a5,a0
    16f4:	0585                	addi	a1,a1,1
    16f6:	0785                	addi	a5,a5,1
    16f8:	fff5c703          	lbu	a4,-1(a1)
    16fc:	fee78fa3          	sb	a4,-1(a5)
    1700:	fb75                	bnez	a4,16f4 <strcpy+0x2>
    1702:	8082                	ret

0000000000001704 <strlen>:
    1704:	00054783          	lbu	a5,0(a0)
    1708:	cf81                	beqz	a5,1720 <strlen+0x1c>
    170a:	0505                	addi	a0,a0,1
    170c:	87aa                	mv	a5,a0
    170e:	4685                	li	a3,1
    1710:	9e89                	subw	a3,a3,a0
    1712:	00f6853b          	addw	a0,a3,a5
    1716:	0785                	addi	a5,a5,1
    1718:	fff7c703          	lbu	a4,-1(a5)
    171c:	fb7d                	bnez	a4,1712 <strlen+0xe>
    171e:	8082                	ret
    1720:	4501                	li	a0,0
    1722:	8082                	ret

0000000000001724 <memset>:
    1724:	ca19                	beqz	a2,173a <memset+0x16>
    1726:	87aa                	mv	a5,a0
    1728:	1602                	slli	a2,a2,0x20
    172a:	9201                	srli	a2,a2,0x20
    172c:	00a60733          	add	a4,a2,a0
    1730:	00b78023          	sb	a1,0(a5)
    1734:	0785                	addi	a5,a5,1
    1736:	fee79de3          	bne	a5,a4,1730 <memset+0xc>
    173a:	8082                	ret

000000000000173c <memcmp>:
    173c:	1101                	addi	sp,sp,-32
    173e:	ec06                	sd	ra,24(sp)
    1740:	e822                	sd	s0,16(sp)
    1742:	e426                	sd	s1,8(sp)
    1744:	e04a                	sd	s2,0(sp)
    1746:	892a                	mv	s2,a0
    1748:	842e                	mv	s0,a1
    174a:	84b2                	mv	s1,a2
    174c:	c915                	beqz	a0,1780 <memcmp+0x44>
    174e:	c5ad                	beqz	a1,17b8 <memcmp+0x7c>
    1750:	fff60713          	addi	a4,a2,-1
    1754:	c645                	beqz	a2,17fc <memcmp+0xc0>
    1756:	87ca                	mv	a5,s2
    1758:	00190613          	addi	a2,s2,1
    175c:	963a                	add	a2,a2,a4
    175e:	0007c683          	lbu	a3,0(a5)
    1762:	00044703          	lbu	a4,0(s0)
    1766:	08e69463          	bne	a3,a4,17ee <memcmp+0xb2>
    176a:	0785                	addi	a5,a5,1
    176c:	0405                	addi	s0,s0,1
    176e:	fec798e3          	bne	a5,a2,175e <memcmp+0x22>
    1772:	4501                	li	a0,0
    1774:	60e2                	ld	ra,24(sp)
    1776:	6442                	ld	s0,16(sp)
    1778:	64a2                	ld	s1,8(sp)
    177a:	6902                	ld	s2,0(sp)
    177c:	6105                	addi	sp,sp,32
    177e:	8082                	ret
    1780:	4501                	li	a0,0
    1782:	da6d                	beqz	a2,1774 <memcmp+0x38>
    1784:	03200693          	li	a3,50
    1788:	00002637          	lui	a2,0x2
    178c:	12060613          	addi	a2,a2,288 # 2120 <crctab+0x400>
    1790:	000025b7          	lui	a1,0x2
    1794:	13058593          	addi	a1,a1,304 # 2130 <crctab+0x410>
    1798:	4509                	li	a0,2
    179a:	00000097          	auipc	ra,0x0
    179e:	bbc080e7          	jalr	-1092(ra) # 1356 <fprintf>
    17a2:	650d                	lui	a0,0x3
    17a4:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    17a8:	00000097          	auipc	ra,0x0
    17ac:	492080e7          	jalr	1170(ra) # 1c3a <exit>
    17b0:	fff48713          	addi	a4,s1,-1
    17b4:	f04d                	bnez	s0,1756 <memcmp+0x1a>
    17b6:	a011                	j	17ba <memcmp+0x7e>
    17b8:	c221                	beqz	a2,17f8 <memcmp+0xbc>
    17ba:	03300693          	li	a3,51
    17be:	00002637          	lui	a2,0x2
    17c2:	12060613          	addi	a2,a2,288 # 2120 <crctab+0x400>
    17c6:	000025b7          	lui	a1,0x2
    17ca:	17858593          	addi	a1,a1,376 # 2178 <crctab+0x458>
    17ce:	4509                	li	a0,2
    17d0:	00000097          	auipc	ra,0x0
    17d4:	b86080e7          	jalr	-1146(ra) # 1356 <fprintf>
    17d8:	650d                	lui	a0,0x3
    17da:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    17de:	00000097          	auipc	ra,0x0
    17e2:	45c080e7          	jalr	1116(ra) # 1c3a <exit>
    17e6:	fff48713          	addi	a4,s1,-1
    17ea:	4401                	li	s0,0
    17ec:	b7ad                	j	1756 <memcmp+0x1a>
    17ee:	4505                	li	a0,1
    17f0:	f8d762e3          	bltu	a4,a3,1774 <memcmp+0x38>
    17f4:	557d                	li	a0,-1
    17f6:	bfbd                	j	1774 <memcmp+0x38>
    17f8:	4501                	li	a0,0
    17fa:	bfad                	j	1774 <memcmp+0x38>
    17fc:	4501                	li	a0,0
    17fe:	bf9d                	j	1774 <memcmp+0x38>

0000000000001800 <memcpy>:
    1800:	1101                	addi	sp,sp,-32
    1802:	ec06                	sd	ra,24(sp)
    1804:	e822                	sd	s0,16(sp)
    1806:	e426                	sd	s1,8(sp)
    1808:	e04a                	sd	s2,0(sp)
    180a:	84aa                	mv	s1,a0
    180c:	842e                	mv	s0,a1
    180e:	8932                	mv	s2,a2
    1810:	c51d                	beqz	a0,183e <memcpy+0x3e>
    1812:	c1ad                	beqz	a1,1874 <memcpy+0x74>
    1814:	fff60693          	addi	a3,a2,-1
    1818:	ce01                	beqz	a2,1830 <memcpy+0x30>
    181a:	0685                	addi	a3,a3,1
    181c:	96a6                	add	a3,a3,s1
    181e:	87a6                	mv	a5,s1
    1820:	0405                	addi	s0,s0,1
    1822:	0785                	addi	a5,a5,1
    1824:	fff44703          	lbu	a4,-1(s0)
    1828:	fee78fa3          	sb	a4,-1(a5)
    182c:	fed79ae3          	bne	a5,a3,1820 <memcpy+0x20>
    1830:	8526                	mv	a0,s1
    1832:	60e2                	ld	ra,24(sp)
    1834:	6442                	ld	s0,16(sp)
    1836:	64a2                	ld	s1,8(sp)
    1838:	6902                	ld	s2,0(sp)
    183a:	6105                	addi	sp,sp,32
    183c:	8082                	ret
    183e:	da6d                	beqz	a2,1830 <memcpy+0x30>
    1840:	04000693          	li	a3,64
    1844:	00002637          	lui	a2,0x2
    1848:	12060613          	addi	a2,a2,288 # 2120 <crctab+0x400>
    184c:	000025b7          	lui	a1,0x2
    1850:	1c058593          	addi	a1,a1,448 # 21c0 <crctab+0x4a0>
    1854:	4509                	li	a0,2
    1856:	00000097          	auipc	ra,0x0
    185a:	b00080e7          	jalr	-1280(ra) # 1356 <fprintf>
    185e:	650d                	lui	a0,0x3
    1860:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    1864:	00000097          	auipc	ra,0x0
    1868:	3d6080e7          	jalr	982(ra) # 1c3a <exit>
    186c:	fff90693          	addi	a3,s2,-1
    1870:	f44d                	bnez	s0,181a <memcpy+0x1a>
    1872:	a011                	j	1876 <memcpy+0x76>
    1874:	de55                	beqz	a2,1830 <memcpy+0x30>
    1876:	04100693          	li	a3,65
    187a:	00002637          	lui	a2,0x2
    187e:	12060613          	addi	a2,a2,288 # 2120 <crctab+0x400>
    1882:	000025b7          	lui	a1,0x2
    1886:	20858593          	addi	a1,a1,520 # 2208 <crctab+0x4e8>
    188a:	4509                	li	a0,2
    188c:	00000097          	auipc	ra,0x0
    1890:	aca080e7          	jalr	-1334(ra) # 1356 <fprintf>
    1894:	650d                	lui	a0,0x3
    1896:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    189a:	00000097          	auipc	ra,0x0
    189e:	3a0080e7          	jalr	928(ra) # 1c3a <exit>
    18a2:	fff90693          	addi	a3,s2,-1
    18a6:	4401                	li	s0,0
    18a8:	bf8d                	j	181a <memcpy+0x1a>

00000000000018aa <itoa>:
    18aa:	1101                	addi	sp,sp,-32
    18ac:	ec06                	sd	ra,24(sp)
    18ae:	e822                	sd	s0,16(sp)
    18b0:	e426                	sd	s1,8(sp)
    18b2:	842a                	mv	s0,a0
    18b4:	41f5d71b          	sraiw	a4,a1,0x1f
    18b8:	00e5c7b3          	xor	a5,a1,a4
    18bc:	9f99                	subw	a5,a5,a4
    18be:	84aa                	mv	s1,a0
    18c0:	862a                	mv	a2,a0
    18c2:	4681                	li	a3,0
    18c4:	4529                	li	a0,10
    18c6:	4825                	li	a6,9
    18c8:	88b6                	mv	a7,a3
    18ca:	2685                	addiw	a3,a3,1
    18cc:	02a7e73b          	remw	a4,a5,a0
    18d0:	0307071b          	addiw	a4,a4,48
    18d4:	00e60023          	sb	a4,0(a2)
    18d8:	873e                	mv	a4,a5
    18da:	02a7c7bb          	divw	a5,a5,a0
    18de:	0605                	addi	a2,a2,1
    18e0:	fee844e3          	blt	a6,a4,18c8 <itoa+0x1e>
    18e4:	0405c863          	bltz	a1,1934 <itoa+0x8a>
    18e8:	96a2                	add	a3,a3,s0
    18ea:	00068023          	sb	zero,0(a3)
    18ee:	8522                	mv	a0,s0
    18f0:	00000097          	auipc	ra,0x0
    18f4:	e14080e7          	jalr	-492(ra) # 1704 <strlen>
    18f8:	fff5071b          	addiw	a4,a0,-1
    18fc:	02e05763          	blez	a4,192a <itoa+0x80>
    1900:	9722                	add	a4,a4,s0
    1902:	4681                	li	a3,0
    1904:	0004c783          	lbu	a5,0(s1)
    1908:	00074603          	lbu	a2,0(a4)
    190c:	00c48023          	sb	a2,0(s1)
    1910:	00f70023          	sb	a5,0(a4)
    1914:	0016879b          	addiw	a5,a3,1
    1918:	0007869b          	sext.w	a3,a5
    191c:	0485                	addi	s1,s1,1
    191e:	177d                	addi	a4,a4,-1
    1920:	fff7c793          	not	a5,a5
    1924:	9fa9                	addw	a5,a5,a0
    1926:	fcf6cfe3          	blt	a3,a5,1904 <itoa+0x5a>
    192a:	60e2                	ld	ra,24(sp)
    192c:	6442                	ld	s0,16(sp)
    192e:	64a2                	ld	s1,8(sp)
    1930:	6105                	addi	sp,sp,32
    1932:	8082                	ret
    1934:	96a2                	add	a3,a3,s0
    1936:	02d00793          	li	a5,45
    193a:	00f68023          	sb	a5,0(a3)
    193e:	0028869b          	addiw	a3,a7,2
    1942:	b75d                	j	18e8 <itoa+0x3e>

0000000000001944 <atoi>:
    1944:	00054783          	lbu	a5,0(a0)
    1948:	02000713          	li	a4,32
    194c:	00e79763          	bne	a5,a4,195a <atoi+0x16>
    1950:	0505                	addi	a0,a0,1
    1952:	00054783          	lbu	a5,0(a0)
    1956:	fee78de3          	beq	a5,a4,1950 <atoi+0xc>
    195a:	02b00713          	li	a4,43
    195e:	04e78663          	beq	a5,a4,19aa <atoi+0x66>
    1962:	02d00713          	li	a4,45
    1966:	4805                	li	a6,1
    1968:	04e78463          	beq	a5,a4,19b0 <atoi+0x6c>
    196c:	00054683          	lbu	a3,0(a0)
    1970:	fd06879b          	addiw	a5,a3,-48
    1974:	0ff7f793          	andi	a5,a5,255
    1978:	4725                	li	a4,9
    197a:	02f76e63          	bltu	a4,a5,19b6 <atoi+0x72>
    197e:	4601                	li	a2,0
    1980:	45a5                	li	a1,9
    1982:	0505                	addi	a0,a0,1
    1984:	0026179b          	slliw	a5,a2,0x2
    1988:	9fb1                	addw	a5,a5,a2
    198a:	0017979b          	slliw	a5,a5,0x1
    198e:	9fb5                	addw	a5,a5,a3
    1990:	fd07861b          	addiw	a2,a5,-48
    1994:	00054683          	lbu	a3,0(a0)
    1998:	fd06871b          	addiw	a4,a3,-48
    199c:	0ff77713          	andi	a4,a4,255
    19a0:	fee5f1e3          	bgeu	a1,a4,1982 <atoi+0x3e>
    19a4:	02c8053b          	mulw	a0,a6,a2
    19a8:	8082                	ret
    19aa:	0505                	addi	a0,a0,1
    19ac:	4805                	li	a6,1
    19ae:	bf7d                	j	196c <atoi+0x28>
    19b0:	0505                	addi	a0,a0,1
    19b2:	587d                	li	a6,-1
    19b4:	bf65                	j	196c <atoi+0x28>
    19b6:	4601                	li	a2,0
    19b8:	b7f5                	j	19a4 <atoi+0x60>

00000000000019ba <check_file_handle>:
    19ba:	d8010113          	addi	sp,sp,-640
    19be:	26113c23          	sd	ra,632(sp)
    19c2:	26813823          	sd	s0,624(sp)
    19c6:	26913423          	sd	s1,616(sp)
    19ca:	27213023          	sd	s2,608(sp)
    19ce:	25313c23          	sd	s3,600(sp)
    19d2:	25413823          	sd	s4,592(sp)
    19d6:	25513423          	sd	s5,584(sp)
    19da:	25613023          	sd	s6,576(sp)
    19de:	23713c23          	sd	s7,568(sp)
    19e2:	23813823          	sd	s8,560(sp)
    19e6:	23913423          	sd	s9,552(sp)
    19ea:	23a13023          	sd	s10,544(sp)
    19ee:	21b13c23          	sd	s11,536(sp)
    19f2:	8baa                	mv	s7,a0
    19f4:	8a2e                	mv	s4,a1
    19f6:	8c32                	mv	s8,a2
    19f8:	89b6                	mv	s3,a3
    19fa:	040c                	addi	a1,sp,512
    19fc:	00000097          	auipc	ra,0x0
    1a00:	28e080e7          	jalr	654(ra) # 1c8a <fstat>
    1a04:	20813603          	ld	a2,520(sp)
    1a08:	03361163          	bne	a2,s3,1a2a <check_file_handle+0x70>
    1a0c:	06098763          	beqz	s3,1a7a <check_file_handle+0xc0>
    1a10:	4901                	li	s2,0
    1a12:	20000a93          	li	s5,512
    1a16:	00002cb7          	lui	s9,0x2
    1a1a:	00002db7          	lui	s11,0x2
    1a1e:	6b0d                	lui	s6,0x3
    1a20:	039b0b13          	addi	s6,s6,57 # 3039 <buf+0x29>
    1a24:	00002d37          	lui	s10,0x2
    1a28:	aa39                	j	1b46 <check_file_handle+0x18c>
    1a2a:	86ce                	mv	a3,s3
    1a2c:	85d2                	mv	a1,s4
    1a2e:	00002537          	lui	a0,0x2
    1a32:	25050513          	addi	a0,a0,592 # 2250 <crctab+0x530>
    1a36:	00000097          	auipc	ra,0x0
    1a3a:	942080e7          	jalr	-1726(ra) # 1378 <printf>
    1a3e:	fc0999e3          	bnez	s3,1a10 <check_file_handle+0x56>
    1a42:	20813683          	ld	a3,520(sp)
    1a46:	03368a63          	beq	a3,s3,1a7a <check_file_handle+0xc0>
    1a4a:	0a600813          	li	a6,166
    1a4e:	000027b7          	lui	a5,0x2
    1a52:	12078793          	addi	a5,a5,288 # 2120 <crctab+0x400>
    1a56:	874e                	mv	a4,s3
    1a58:	8652                	mv	a2,s4
    1a5a:	000025b7          	lui	a1,0x2
    1a5e:	32058593          	addi	a1,a1,800 # 2320 <crctab+0x600>
    1a62:	4509                	li	a0,2
    1a64:	00000097          	auipc	ra,0x0
    1a68:	8f2080e7          	jalr	-1806(ra) # 1356 <fprintf>
    1a6c:	650d                	lui	a0,0x3
    1a6e:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    1a72:	00000097          	auipc	ra,0x0
    1a76:	1c8080e7          	jalr	456(ra) # 1c3a <exit>
    1a7a:	85d2                	mv	a1,s4
    1a7c:	00002537          	lui	a0,0x2
    1a80:	36850513          	addi	a0,a0,872 # 2368 <crctab+0x648>
    1a84:	00000097          	auipc	ra,0x0
    1a88:	8f4080e7          	jalr	-1804(ra) # 1378 <printf>
    1a8c:	27813083          	ld	ra,632(sp)
    1a90:	27013403          	ld	s0,624(sp)
    1a94:	26813483          	ld	s1,616(sp)
    1a98:	26013903          	ld	s2,608(sp)
    1a9c:	25813983          	ld	s3,600(sp)
    1aa0:	25013a03          	ld	s4,592(sp)
    1aa4:	24813a83          	ld	s5,584(sp)
    1aa8:	24013b03          	ld	s6,576(sp)
    1aac:	23813b83          	ld	s7,568(sp)
    1ab0:	23013c03          	ld	s8,560(sp)
    1ab4:	22813c83          	ld	s9,552(sp)
    1ab8:	22013d03          	ld	s10,544(sp)
    1abc:	21813d83          	ld	s11,536(sp)
    1ac0:	28010113          	addi	sp,sp,640
    1ac4:	8082                	ret
    1ac6:	09d00893          	li	a7,157
    1aca:	120c8813          	addi	a6,s9,288 # 2120 <crctab+0x400>
    1ace:	87aa                	mv	a5,a0
    1ad0:	8752                	mv	a4,s4
    1ad2:	86ca                	mv	a3,s2
    1ad4:	8622                	mv	a2,s0
    1ad6:	280d8593          	addi	a1,s11,640 # 2280 <crctab+0x560>
    1ada:	4509                	li	a0,2
    1adc:	00000097          	auipc	ra,0x0
    1ae0:	87a080e7          	jalr	-1926(ra) # 1356 <fprintf>
    1ae4:	855a                	mv	a0,s6
    1ae6:	00000097          	auipc	ra,0x0
    1aea:	154080e7          	jalr	340(ra) # 1c3a <exit>
    1aee:	a89d                	j	1b64 <check_file_handle+0x1aa>
    1af0:	00160593          	addi	a1,a2,1
    1af4:	0285f163          	bgeu	a1,s0,1b16 <check_file_handle+0x15c>
    1af8:	00c10733          	add	a4,sp,a2
    1afc:	00b487b3          	add	a5,s1,a1
    1b00:	00174683          	lbu	a3,1(a4)
    1b04:	0007c783          	lbu	a5,0(a5)
    1b08:	00f68763          	beq	a3,a5,1b16 <check_file_handle+0x15c>
    1b0c:	0585                	addi	a1,a1,1
    1b0e:	0705                	addi	a4,a4,1
    1b10:	feb416e3          	bne	s0,a1,1afc <check_file_handle+0x142>
    1b14:	85a2                	mv	a1,s0
    1b16:	08100813          	li	a6,129
    1b1a:	120c8793          	addi	a5,s9,288
    1b1e:	8752                	mv	a4,s4
    1b20:	012606b3          	add	a3,a2,s2
    1b24:	40c58633          	sub	a2,a1,a2
    1b28:	2c8d0593          	addi	a1,s10,712 # 22c8 <crctab+0x5a8>
    1b2c:	4509                	li	a0,2
    1b2e:	00000097          	auipc	ra,0x0
    1b32:	828080e7          	jalr	-2008(ra) # 1356 <fprintf>
    1b36:	855a                	mv	a0,s6
    1b38:	00000097          	auipc	ra,0x0
    1b3c:	102080e7          	jalr	258(ra) # 1c3a <exit>
    1b40:	9922                	add	s2,s2,s0
    1b42:	f13970e3          	bgeu	s2,s3,1a42 <check_file_handle+0x88>
    1b46:	41298433          	sub	s0,s3,s2
    1b4a:	008af363          	bgeu	s5,s0,1b50 <check_file_handle+0x196>
    1b4e:	8456                	mv	s0,s5
    1b50:	0004061b          	sext.w	a2,s0
    1b54:	858a                	mv	a1,sp
    1b56:	855e                	mv	a0,s7
    1b58:	00000097          	auipc	ra,0x0
    1b5c:	10a080e7          	jalr	266(ra) # 1c62 <read>
    1b60:	f68513e3          	bne	a0,s0,1ac6 <check_file_handle+0x10c>
    1b64:	012c04b3          	add	s1,s8,s2
    1b68:	8622                	mv	a2,s0
    1b6a:	85a6                	mv	a1,s1
    1b6c:	850a                	mv	a0,sp
    1b6e:	00000097          	auipc	ra,0x0
    1b72:	bce080e7          	jalr	-1074(ra) # 173c <memcmp>
    1b76:	d569                	beqz	a0,1b40 <check_file_handle+0x186>
    1b78:	03298163          	beq	s3,s2,1b9a <check_file_handle+0x1e0>
    1b7c:	870a                	mv	a4,sp
    1b7e:	4601                	li	a2,0
    1b80:	00c487b3          	add	a5,s1,a2
    1b84:	00074683          	lbu	a3,0(a4)
    1b88:	0007c783          	lbu	a5,0(a5)
    1b8c:	f6f692e3          	bne	a3,a5,1af0 <check_file_handle+0x136>
    1b90:	0605                	addi	a2,a2,1
    1b92:	0705                	addi	a4,a4,1
    1b94:	fe8666e3          	bltu	a2,s0,1b80 <check_file_handle+0x1c6>
    1b98:	bfa1                	j	1af0 <check_file_handle+0x136>
    1b9a:	4601                	li	a2,0
    1b9c:	4585                	li	a1,1
    1b9e:	bfa5                	j	1b16 <check_file_handle+0x15c>

0000000000001ba0 <check_file>:
    1ba0:	7179                	addi	sp,sp,-48
    1ba2:	f406                	sd	ra,40(sp)
    1ba4:	f022                	sd	s0,32(sp)
    1ba6:	ec26                	sd	s1,24(sp)
    1ba8:	e84a                	sd	s2,16(sp)
    1baa:	e44e                	sd	s3,8(sp)
    1bac:	84aa                	mv	s1,a0
    1bae:	892e                	mv	s2,a1
    1bb0:	89b2                	mv	s3,a2
    1bb2:	4581                	li	a1,0
    1bb4:	00000097          	auipc	ra,0x0
    1bb8:	0a6080e7          	jalr	166(ra) # 1c5a <open>
    1bbc:	842a                	mv	s0,a0
    1bbe:	4789                	li	a5,2
    1bc0:	02a7df63          	bge	a5,a0,1bfe <check_file+0x5e>
    1bc4:	86ce                	mv	a3,s3
    1bc6:	864a                	mv	a2,s2
    1bc8:	85a6                	mv	a1,s1
    1bca:	8522                	mv	a0,s0
    1bcc:	00000097          	auipc	ra,0x0
    1bd0:	dee080e7          	jalr	-530(ra) # 19ba <check_file_handle>
    1bd4:	85a6                	mv	a1,s1
    1bd6:	00002537          	lui	a0,0x2
    1bda:	3f050513          	addi	a0,a0,1008 # 23f0 <crctab+0x6d0>
    1bde:	fffff097          	auipc	ra,0xfffff
    1be2:	79a080e7          	jalr	1946(ra) # 1378 <printf>
    1be6:	8522                	mv	a0,s0
    1be8:	00000097          	auipc	ra,0x0
    1bec:	09a080e7          	jalr	154(ra) # 1c82 <close>
    1bf0:	70a2                	ld	ra,40(sp)
    1bf2:	7402                	ld	s0,32(sp)
    1bf4:	64e2                	ld	s1,24(sp)
    1bf6:	6942                	ld	s2,16(sp)
    1bf8:	69a2                	ld	s3,8(sp)
    1bfa:	6145                	addi	sp,sp,48
    1bfc:	8082                	ret
    1bfe:	0ae00713          	li	a4,174
    1c02:	000026b7          	lui	a3,0x2
    1c06:	12068693          	addi	a3,a3,288 # 2120 <crctab+0x400>
    1c0a:	8626                	mv	a2,s1
    1c0c:	000025b7          	lui	a1,0x2
    1c10:	38858593          	addi	a1,a1,904 # 2388 <crctab+0x668>
    1c14:	4509                	li	a0,2
    1c16:	fffff097          	auipc	ra,0xfffff
    1c1a:	740080e7          	jalr	1856(ra) # 1356 <fprintf>
    1c1e:	650d                	lui	a0,0x3
    1c20:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    1c24:	00000097          	auipc	ra,0x0
    1c28:	016080e7          	jalr	22(ra) # 1c3a <exit>
    1c2c:	bf61                	j	1bc4 <check_file+0x24>

0000000000001c2e <r_sp>:
    1c2e:	850a                	mv	a0,sp
    1c30:	8082                	ret

0000000000001c32 <halt>:
    1c32:	4885                	li	a7,1
    1c34:	00000073          	ecall
    1c38:	8082                	ret

0000000000001c3a <exit>:
    1c3a:	4889                	li	a7,2
    1c3c:	00000073          	ecall
    1c40:	8082                	ret

0000000000001c42 <exec>:
    1c42:	488d                	li	a7,3
    1c44:	00000073          	ecall
    1c48:	8082                	ret

0000000000001c4a <wait>:
    1c4a:	4891                	li	a7,4
    1c4c:	00000073          	ecall
    1c50:	8082                	ret

0000000000001c52 <remove>:
    1c52:	4895                	li	a7,5
    1c54:	00000073          	ecall
    1c58:	8082                	ret

0000000000001c5a <open>:
    1c5a:	4899                	li	a7,6
    1c5c:	00000073          	ecall
    1c60:	8082                	ret

0000000000001c62 <read>:
    1c62:	489d                	li	a7,7
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <write>:
    1c6a:	48a1                	li	a7,8
    1c6c:	00000073          	ecall
    1c70:	8082                	ret

0000000000001c72 <seek>:
    1c72:	48a5                	li	a7,9
    1c74:	00000073          	ecall
    1c78:	8082                	ret

0000000000001c7a <tell>:
    1c7a:	48a9                	li	a7,10
    1c7c:	00000073          	ecall
    1c80:	8082                	ret

0000000000001c82 <close>:
    1c82:	48ad                	li	a7,11
    1c84:	00000073          	ecall
    1c88:	8082                	ret

0000000000001c8a <fstat>:
    1c8a:	48b1                	li	a7,12
    1c8c:	00000073          	ecall
    1c90:	8082                	ret

0000000000001c92 <mmap>:
    1c92:	48b5                	li	a7,13
    1c94:	00000073          	ecall
    1c98:	8082                	ret

0000000000001c9a <munmap>:
    1c9a:	48b9                	li	a7,14
    1c9c:	00000073          	ecall
    1ca0:	8082                	ret

0000000000001ca2 <chdir>:
    1ca2:	48bd                	li	a7,15
    1ca4:	00000073          	ecall
    1ca8:	8082                	ret

0000000000001caa <mkdir>:
    1caa:	48c1                	li	a7,16
    1cac:	00000073          	ecall
    1cb0:	8082                	ret
