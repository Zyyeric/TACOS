
build/user/userprogs/child-close:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	842e                	mv	s0,a1
    1008:	4789                	li	a5,2
    100a:	02f51c63          	bne	a0,a5,1042 <main+0x42>
    100e:	6408                	ld	a0,8(s0)
    1010:	00001097          	auipc	ra,0x1
    1014:	92e080e7          	jalr	-1746(ra) # 193e <atoi>
    1018:	4789                	li	a5,2
    101a:	04a7da63          	bge	a5,a0,106e <main+0x6e>
    101e:	6408                	ld	a0,8(s0)
    1020:	00001097          	auipc	ra,0x1
    1024:	91e080e7          	jalr	-1762(ra) # 193e <atoi>
    1028:	00001097          	auipc	ra,0x1
    102c:	c54080e7          	jalr	-940(ra) # 1c7c <close>
    1030:	57fd                	li	a5,-1
    1032:	06f51463          	bne	a0,a5,109a <main+0x9a>
    1036:	04000513          	li	a0,64
    103a:	60a2                	ld	ra,8(sp)
    103c:	6402                	ld	s0,0(sp)
    103e:	0141                	addi	sp,sp,16
    1040:	8082                	ret
    1042:	46a9                	li	a3,10
    1044:	00002637          	lui	a2,0x2
    1048:	cb060613          	addi	a2,a2,-848 # 1cb0 <mkdir+0xc>
    104c:	000025b7          	lui	a1,0x2
    1050:	cd058593          	addi	a1,a1,-816 # 1cd0 <mkdir+0x2c>
    1054:	4509                	li	a0,2
    1056:	00000097          	auipc	ra,0x0
    105a:	2fa080e7          	jalr	762(ra) # 1350 <fprintf>
    105e:	650d                	lui	a0,0x3
    1060:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1064:	00001097          	auipc	ra,0x1
    1068:	bd0080e7          	jalr	-1072(ra) # 1c34 <exit>
    106c:	b74d                	j	100e <main+0xe>
    106e:	46ad                	li	a3,11
    1070:	00002637          	lui	a2,0x2
    1074:	cb060613          	addi	a2,a2,-848 # 1cb0 <mkdir+0xc>
    1078:	000025b7          	lui	a1,0x2
    107c:	d0858593          	addi	a1,a1,-760 # 1d08 <mkdir+0x64>
    1080:	4509                	li	a0,2
    1082:	00000097          	auipc	ra,0x0
    1086:	2ce080e7          	jalr	718(ra) # 1350 <fprintf>
    108a:	650d                	lui	a0,0x3
    108c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1090:	00001097          	auipc	ra,0x1
    1094:	ba4080e7          	jalr	-1116(ra) # 1c34 <exit>
    1098:	b759                	j	101e <main+0x1e>
    109a:	46b1                	li	a3,12
    109c:	00002637          	lui	a2,0x2
    10a0:	cb060613          	addi	a2,a2,-848 # 1cb0 <mkdir+0xc>
    10a4:	000025b7          	lui	a1,0x2
    10a8:	d4858593          	addi	a1,a1,-696 # 1d48 <mkdir+0xa4>
    10ac:	4509                	li	a0,2
    10ae:	00000097          	auipc	ra,0x0
    10b2:	2a2080e7          	jalr	674(ra) # 1350 <fprintf>
    10b6:	650d                	lui	a0,0x3
    10b8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10bc:	00001097          	auipc	ra,0x1
    10c0:	b78080e7          	jalr	-1160(ra) # 1c34 <exit>
    10c4:	bf8d                	j	1036 <main+0x36>

00000000000010c6 <putc>:
    10c6:	1101                	addi	sp,sp,-32
    10c8:	ec06                	sd	ra,24(sp)
    10ca:	00b107a3          	sb	a1,15(sp)
    10ce:	4605                	li	a2,1
    10d0:	00f10593          	addi	a1,sp,15
    10d4:	00001097          	auipc	ra,0x1
    10d8:	b90080e7          	jalr	-1136(ra) # 1c64 <write>
    10dc:	60e2                	ld	ra,24(sp)
    10de:	6105                	addi	sp,sp,32
    10e0:	8082                	ret

00000000000010e2 <printint>:
    10e2:	7179                	addi	sp,sp,-48
    10e4:	f406                	sd	ra,40(sp)
    10e6:	f022                	sd	s0,32(sp)
    10e8:	ec26                	sd	s1,24(sp)
    10ea:	e84a                	sd	s2,16(sp)
    10ec:	84aa                	mv	s1,a0
    10ee:	c299                	beqz	a3,10f4 <printint+0x12>
    10f0:	0805c363          	bltz	a1,1176 <printint+0x94>
    10f4:	2581                	sext.w	a1,a1
    10f6:	4881                	li	a7,0
    10f8:	868a                	mv	a3,sp
    10fa:	4701                	li	a4,0
    10fc:	2601                	sext.w	a2,a2
    10fe:	00002537          	lui	a0,0x2
    1102:	d9850513          	addi	a0,a0,-616 # 1d98 <digits>
    1106:	883a                	mv	a6,a4
    1108:	2705                	addiw	a4,a4,1
    110a:	02c5f7bb          	remuw	a5,a1,a2
    110e:	1782                	slli	a5,a5,0x20
    1110:	9381                	srli	a5,a5,0x20
    1112:	97aa                	add	a5,a5,a0
    1114:	0007c783          	lbu	a5,0(a5)
    1118:	00f68023          	sb	a5,0(a3)
    111c:	0005879b          	sext.w	a5,a1
    1120:	02c5d5bb          	divuw	a1,a1,a2
    1124:	0685                	addi	a3,a3,1
    1126:	fec7f0e3          	bgeu	a5,a2,1106 <printint+0x24>
    112a:	00088a63          	beqz	a7,113e <printint+0x5c>
    112e:	081c                	addi	a5,sp,16
    1130:	973e                	add	a4,a4,a5
    1132:	02d00793          	li	a5,45
    1136:	fef70823          	sb	a5,-16(a4)
    113a:	0028071b          	addiw	a4,a6,2
    113e:	02e05663          	blez	a4,116a <printint+0x88>
    1142:	00e10433          	add	s0,sp,a4
    1146:	fff10913          	addi	s2,sp,-1
    114a:	993a                	add	s2,s2,a4
    114c:	377d                	addiw	a4,a4,-1
    114e:	1702                	slli	a4,a4,0x20
    1150:	9301                	srli	a4,a4,0x20
    1152:	40e90933          	sub	s2,s2,a4
    1156:	fff44583          	lbu	a1,-1(s0)
    115a:	8526                	mv	a0,s1
    115c:	00000097          	auipc	ra,0x0
    1160:	f6a080e7          	jalr	-150(ra) # 10c6 <putc>
    1164:	147d                	addi	s0,s0,-1
    1166:	ff2418e3          	bne	s0,s2,1156 <printint+0x74>
    116a:	70a2                	ld	ra,40(sp)
    116c:	7402                	ld	s0,32(sp)
    116e:	64e2                	ld	s1,24(sp)
    1170:	6942                	ld	s2,16(sp)
    1172:	6145                	addi	sp,sp,48
    1174:	8082                	ret
    1176:	40b005bb          	negw	a1,a1
    117a:	4885                	li	a7,1
    117c:	bfb5                	j	10f8 <printint+0x16>

000000000000117e <vprintf>:
    117e:	7159                	addi	sp,sp,-112
    1180:	f486                	sd	ra,104(sp)
    1182:	f0a2                	sd	s0,96(sp)
    1184:	eca6                	sd	s1,88(sp)
    1186:	e8ca                	sd	s2,80(sp)
    1188:	e4ce                	sd	s3,72(sp)
    118a:	e0d2                	sd	s4,64(sp)
    118c:	fc56                	sd	s5,56(sp)
    118e:	f85a                	sd	s6,48(sp)
    1190:	f45e                	sd	s7,40(sp)
    1192:	f062                	sd	s8,32(sp)
    1194:	ec66                	sd	s9,24(sp)
    1196:	e86a                	sd	s10,16(sp)
    1198:	e46e                	sd	s11,8(sp)
    119a:	0005c483          	lbu	s1,0(a1)
    119e:	18048a63          	beqz	s1,1332 <vprintf+0x1b4>
    11a2:	8a2a                	mv	s4,a0
    11a4:	8ab2                	mv	s5,a2
    11a6:	00158413          	addi	s0,a1,1
    11aa:	4901                	li	s2,0
    11ac:	02500993          	li	s3,37
    11b0:	06400b93          	li	s7,100
    11b4:	06c00c13          	li	s8,108
    11b8:	07800c93          	li	s9,120
    11bc:	07000d13          	li	s10,112
    11c0:	00002db7          	lui	s11,0x2
    11c4:	00002b37          	lui	s6,0x2
    11c8:	d98b0b13          	addi	s6,s6,-616 # 1d98 <digits>
    11cc:	a839                	j	11ea <vprintf+0x6c>
    11ce:	85a6                	mv	a1,s1
    11d0:	8552                	mv	a0,s4
    11d2:	00000097          	auipc	ra,0x0
    11d6:	ef4080e7          	jalr	-268(ra) # 10c6 <putc>
    11da:	a019                	j	11e0 <vprintf+0x62>
    11dc:	01390f63          	beq	s2,s3,11fa <vprintf+0x7c>
    11e0:	0405                	addi	s0,s0,1
    11e2:	fff44483          	lbu	s1,-1(s0)
    11e6:	14048663          	beqz	s1,1332 <vprintf+0x1b4>
    11ea:	0004879b          	sext.w	a5,s1
    11ee:	fe0917e3          	bnez	s2,11dc <vprintf+0x5e>
    11f2:	fd379ee3          	bne	a5,s3,11ce <vprintf+0x50>
    11f6:	893e                	mv	s2,a5
    11f8:	b7e5                	j	11e0 <vprintf+0x62>
    11fa:	05778063          	beq	a5,s7,123a <vprintf+0xbc>
    11fe:	05878c63          	beq	a5,s8,1256 <vprintf+0xd8>
    1202:	07978863          	beq	a5,s9,1272 <vprintf+0xf4>
    1206:	09a78463          	beq	a5,s10,128e <vprintf+0x110>
    120a:	07300713          	li	a4,115
    120e:	0ce78263          	beq	a5,a4,12d2 <vprintf+0x154>
    1212:	06300713          	li	a4,99
    1216:	0ee78763          	beq	a5,a4,1304 <vprintf+0x186>
    121a:	11378163          	beq	a5,s3,131c <vprintf+0x19e>
    121e:	85ce                	mv	a1,s3
    1220:	8552                	mv	a0,s4
    1222:	00000097          	auipc	ra,0x0
    1226:	ea4080e7          	jalr	-348(ra) # 10c6 <putc>
    122a:	85a6                	mv	a1,s1
    122c:	8552                	mv	a0,s4
    122e:	00000097          	auipc	ra,0x0
    1232:	e98080e7          	jalr	-360(ra) # 10c6 <putc>
    1236:	4901                	li	s2,0
    1238:	b765                	j	11e0 <vprintf+0x62>
    123a:	008a8493          	addi	s1,s5,8
    123e:	4685                	li	a3,1
    1240:	4629                	li	a2,10
    1242:	000aa583          	lw	a1,0(s5)
    1246:	8552                	mv	a0,s4
    1248:	00000097          	auipc	ra,0x0
    124c:	e9a080e7          	jalr	-358(ra) # 10e2 <printint>
    1250:	8aa6                	mv	s5,s1
    1252:	4901                	li	s2,0
    1254:	b771                	j	11e0 <vprintf+0x62>
    1256:	008a8493          	addi	s1,s5,8
    125a:	4681                	li	a3,0
    125c:	4629                	li	a2,10
    125e:	000aa583          	lw	a1,0(s5)
    1262:	8552                	mv	a0,s4
    1264:	00000097          	auipc	ra,0x0
    1268:	e7e080e7          	jalr	-386(ra) # 10e2 <printint>
    126c:	8aa6                	mv	s5,s1
    126e:	4901                	li	s2,0
    1270:	bf85                	j	11e0 <vprintf+0x62>
    1272:	008a8493          	addi	s1,s5,8
    1276:	4681                	li	a3,0
    1278:	4641                	li	a2,16
    127a:	000aa583          	lw	a1,0(s5)
    127e:	8552                	mv	a0,s4
    1280:	00000097          	auipc	ra,0x0
    1284:	e62080e7          	jalr	-414(ra) # 10e2 <printint>
    1288:	8aa6                	mv	s5,s1
    128a:	4901                	li	s2,0
    128c:	bf91                	j	11e0 <vprintf+0x62>
    128e:	008a8913          	addi	s2,s5,8
    1292:	000aba83          	ld	s5,0(s5)
    1296:	03000593          	li	a1,48
    129a:	8552                	mv	a0,s4
    129c:	00000097          	auipc	ra,0x0
    12a0:	e2a080e7          	jalr	-470(ra) # 10c6 <putc>
    12a4:	85e6                	mv	a1,s9
    12a6:	8552                	mv	a0,s4
    12a8:	00000097          	auipc	ra,0x0
    12ac:	e1e080e7          	jalr	-482(ra) # 10c6 <putc>
    12b0:	44c1                	li	s1,16
    12b2:	03cad793          	srli	a5,s5,0x3c
    12b6:	97da                	add	a5,a5,s6
    12b8:	0007c583          	lbu	a1,0(a5)
    12bc:	8552                	mv	a0,s4
    12be:	00000097          	auipc	ra,0x0
    12c2:	e08080e7          	jalr	-504(ra) # 10c6 <putc>
    12c6:	0a92                	slli	s5,s5,0x4
    12c8:	34fd                	addiw	s1,s1,-1
    12ca:	f4e5                	bnez	s1,12b2 <vprintf+0x134>
    12cc:	8aca                	mv	s5,s2
    12ce:	4901                	li	s2,0
    12d0:	bf01                	j	11e0 <vprintf+0x62>
    12d2:	008a8913          	addi	s2,s5,8
    12d6:	000ab483          	ld	s1,0(s5)
    12da:	c085                	beqz	s1,12fa <vprintf+0x17c>
    12dc:	0004c583          	lbu	a1,0(s1)
    12e0:	c5b1                	beqz	a1,132c <vprintf+0x1ae>
    12e2:	8552                	mv	a0,s4
    12e4:	00000097          	auipc	ra,0x0
    12e8:	de2080e7          	jalr	-542(ra) # 10c6 <putc>
    12ec:	0485                	addi	s1,s1,1
    12ee:	0004c583          	lbu	a1,0(s1)
    12f2:	f9e5                	bnez	a1,12e2 <vprintf+0x164>
    12f4:	8aca                	mv	s5,s2
    12f6:	4901                	li	s2,0
    12f8:	b5e5                	j	11e0 <vprintf+0x62>
    12fa:	d90d8493          	addi	s1,s11,-624 # 1d90 <mkdir+0xec>
    12fe:	02800593          	li	a1,40
    1302:	b7c5                	j	12e2 <vprintf+0x164>
    1304:	008a8493          	addi	s1,s5,8
    1308:	000ac583          	lbu	a1,0(s5)
    130c:	8552                	mv	a0,s4
    130e:	00000097          	auipc	ra,0x0
    1312:	db8080e7          	jalr	-584(ra) # 10c6 <putc>
    1316:	8aa6                	mv	s5,s1
    1318:	4901                	li	s2,0
    131a:	b5d9                	j	11e0 <vprintf+0x62>
    131c:	85ce                	mv	a1,s3
    131e:	8552                	mv	a0,s4
    1320:	00000097          	auipc	ra,0x0
    1324:	da6080e7          	jalr	-602(ra) # 10c6 <putc>
    1328:	4901                	li	s2,0
    132a:	bd5d                	j	11e0 <vprintf+0x62>
    132c:	8aca                	mv	s5,s2
    132e:	4901                	li	s2,0
    1330:	bd45                	j	11e0 <vprintf+0x62>
    1332:	70a6                	ld	ra,104(sp)
    1334:	7406                	ld	s0,96(sp)
    1336:	64e6                	ld	s1,88(sp)
    1338:	6946                	ld	s2,80(sp)
    133a:	69a6                	ld	s3,72(sp)
    133c:	6a06                	ld	s4,64(sp)
    133e:	7ae2                	ld	s5,56(sp)
    1340:	7b42                	ld	s6,48(sp)
    1342:	7ba2                	ld	s7,40(sp)
    1344:	7c02                	ld	s8,32(sp)
    1346:	6ce2                	ld	s9,24(sp)
    1348:	6d42                	ld	s10,16(sp)
    134a:	6da2                	ld	s11,8(sp)
    134c:	6165                	addi	sp,sp,112
    134e:	8082                	ret

0000000000001350 <fprintf>:
    1350:	715d                	addi	sp,sp,-80
    1352:	ec06                	sd	ra,24(sp)
    1354:	f032                	sd	a2,32(sp)
    1356:	f436                	sd	a3,40(sp)
    1358:	f83a                	sd	a4,48(sp)
    135a:	fc3e                	sd	a5,56(sp)
    135c:	e0c2                	sd	a6,64(sp)
    135e:	e4c6                	sd	a7,72(sp)
    1360:	1010                	addi	a2,sp,32
    1362:	e432                	sd	a2,8(sp)
    1364:	00000097          	auipc	ra,0x0
    1368:	e1a080e7          	jalr	-486(ra) # 117e <vprintf>
    136c:	60e2                	ld	ra,24(sp)
    136e:	6161                	addi	sp,sp,80
    1370:	8082                	ret

0000000000001372 <printf>:
    1372:	711d                	addi	sp,sp,-96
    1374:	ec06                	sd	ra,24(sp)
    1376:	f42e                	sd	a1,40(sp)
    1378:	f832                	sd	a2,48(sp)
    137a:	fc36                	sd	a3,56(sp)
    137c:	e0ba                	sd	a4,64(sp)
    137e:	e4be                	sd	a5,72(sp)
    1380:	e8c2                	sd	a6,80(sp)
    1382:	ecc6                	sd	a7,88(sp)
    1384:	1030                	addi	a2,sp,40
    1386:	e432                	sd	a2,8(sp)
    1388:	85aa                	mv	a1,a0
    138a:	4505                	li	a0,1
    138c:	00000097          	auipc	ra,0x0
    1390:	df2080e7          	jalr	-526(ra) # 117e <vprintf>
    1394:	60e2                	ld	ra,24(sp)
    1396:	6125                	addi	sp,sp,96
    1398:	8082                	ret

000000000000139a <cksum>:
    139a:	cdb1                	beqz	a1,13f6 <cksum+0x5c>
    139c:	00b50833          	add	a6,a0,a1
    13a0:	4781                	li	a5,0
    13a2:	00002637          	lui	a2,0x2
    13a6:	db060613          	addi	a2,a2,-592 # 1db0 <crctab>
    13aa:	0505                	addi	a0,a0,1
    13ac:	0087969b          	slliw	a3,a5,0x8
    13b0:	0187d71b          	srliw	a4,a5,0x18
    13b4:	fff54783          	lbu	a5,-1(a0)
    13b8:	8f3d                	xor	a4,a4,a5
    13ba:	1702                	slli	a4,a4,0x20
    13bc:	9301                	srli	a4,a4,0x20
    13be:	070a                	slli	a4,a4,0x2
    13c0:	9732                	add	a4,a4,a2
    13c2:	431c                	lw	a5,0(a4)
    13c4:	8fb5                	xor	a5,a5,a3
    13c6:	2781                	sext.w	a5,a5
    13c8:	fea811e3          	bne	a6,a0,13aa <cksum+0x10>
    13cc:	00002637          	lui	a2,0x2
    13d0:	db060613          	addi	a2,a2,-592 # 1db0 <crctab>
    13d4:	0ff5f693          	andi	a3,a1,255
    13d8:	81a1                	srli	a1,a1,0x8
    13da:	0087951b          	slliw	a0,a5,0x8
    13de:	0187d71b          	srliw	a4,a5,0x18
    13e2:	8f35                	xor	a4,a4,a3
    13e4:	070a                	slli	a4,a4,0x2
    13e6:	9732                	add	a4,a4,a2
    13e8:	431c                	lw	a5,0(a4)
    13ea:	8fa9                	xor	a5,a5,a0
    13ec:	2781                	sext.w	a5,a5
    13ee:	f1fd                	bnez	a1,13d4 <cksum+0x3a>
    13f0:	fff7c513          	not	a0,a5
    13f4:	8082                	ret
    13f6:	4781                	li	a5,0
    13f8:	bfe5                	j	13f0 <cksum+0x56>

00000000000013fa <swap_bytes>:
    13fa:	ce19                	beqz	a2,1418 <swap_bytes+0x1e>
    13fc:	87aa                	mv	a5,a0
    13fe:	962a                	add	a2,a2,a0
    1400:	0007c703          	lbu	a4,0(a5)
    1404:	0005c683          	lbu	a3,0(a1)
    1408:	00d78023          	sb	a3,0(a5)
    140c:	00e58023          	sb	a4,0(a1)
    1410:	0785                	addi	a5,a5,1
    1412:	0585                	addi	a1,a1,1
    1414:	fec796e3          	bne	a5,a2,1400 <swap_bytes+0x6>
    1418:	8082                	ret

000000000000141a <random_init>:
    141a:	7139                	addi	sp,sp,-64
    141c:	fc06                	sd	ra,56(sp)
    141e:	f822                	sd	s0,48(sp)
    1420:	f426                	sd	s1,40(sp)
    1422:	f04a                	sd	s2,32(sp)
    1424:	ec4e                	sd	s3,24(sp)
    1426:	e852                	sd	s4,16(sp)
    1428:	c62a                	sw	a0,12(sp)
    142a:	000037b7          	lui	a5,0x3
    142e:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1432:	eca5                	bnez	s1,14aa <random_init+0x90>
    1434:	00003737          	lui	a4,0x3
    1438:	01070913          	addi	s2,a4,16 # 3010 <s>
    143c:	01070713          	addi	a4,a4,16
    1440:	87a6                	mv	a5,s1
    1442:	10000693          	li	a3,256
    1446:	00f70023          	sb	a5,0(a4)
    144a:	2785                	addiw	a5,a5,1
    144c:	0705                	addi	a4,a4,1
    144e:	fed79ce3          	bne	a5,a3,1446 <random_init+0x2c>
    1452:	4401                	li	s0,0
    1454:	000039b7          	lui	s3,0x3
    1458:	01098993          	addi	s3,s3,16 # 3010 <s>
    145c:	10000a13          	li	s4,256
    1460:	0034f793          	andi	a5,s1,3
    1464:	0818                	addi	a4,sp,16
    1466:	97ba                	add	a5,a5,a4
    1468:	ffc7c783          	lbu	a5,-4(a5)
    146c:	00094703          	lbu	a4,0(s2)
    1470:	9fb9                	addw	a5,a5,a4
    1472:	9c3d                	addw	s0,s0,a5
    1474:	0ff47413          	andi	s0,s0,255
    1478:	4605                	li	a2,1
    147a:	008985b3          	add	a1,s3,s0
    147e:	854a                	mv	a0,s2
    1480:	00000097          	auipc	ra,0x0
    1484:	f7a080e7          	jalr	-134(ra) # 13fa <swap_bytes>
    1488:	2485                	addiw	s1,s1,1
    148a:	0905                	addi	s2,s2,1
    148c:	fd449ae3          	bne	s1,s4,1460 <random_init+0x46>
    1490:	000037b7          	lui	a5,0x3
    1494:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1498:	000037b7          	lui	a5,0x3
    149c:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14a0:	000037b7          	lui	a5,0x3
    14a4:	4705                	li	a4,1
    14a6:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14aa:	70e2                	ld	ra,56(sp)
    14ac:	7442                	ld	s0,48(sp)
    14ae:	74a2                	ld	s1,40(sp)
    14b0:	7902                	ld	s2,32(sp)
    14b2:	69e2                	ld	s3,24(sp)
    14b4:	6a42                	ld	s4,16(sp)
    14b6:	6121                	addi	sp,sp,64
    14b8:	8082                	ret

00000000000014ba <random_bytes>:
    14ba:	7139                	addi	sp,sp,-64
    14bc:	fc06                	sd	ra,56(sp)
    14be:	f822                	sd	s0,48(sp)
    14c0:	f426                	sd	s1,40(sp)
    14c2:	f04a                	sd	s2,32(sp)
    14c4:	ec4e                	sd	s3,24(sp)
    14c6:	e852                	sd	s4,16(sp)
    14c8:	e456                	sd	s5,8(sp)
    14ca:	e05a                	sd	s6,0(sp)
    14cc:	892a                	mv	s2,a0
    14ce:	8aae                	mv	s5,a1
    14d0:	000037b7          	lui	a5,0x3
    14d4:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14d8:	c3c1                	beqz	a5,1558 <random_bytes+0x9e>
    14da:	060a8563          	beqz	s5,1544 <random_bytes+0x8a>
    14de:	9aca                	add	s5,s5,s2
    14e0:	00003a37          	lui	s4,0x3
    14e4:	000034b7          	lui	s1,0x3
    14e8:	01048493          	addi	s1,s1,16 # 3010 <s>
    14ec:	000039b7          	lui	s3,0x3
    14f0:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14f4:	2505                	addiw	a0,a0,1
    14f6:	0ff57513          	andi	a0,a0,255
    14fa:	00aa02a3          	sb	a0,5(s4)
    14fe:	00a48b33          	add	s6,s1,a0
    1502:	000b4403          	lbu	s0,0(s6)
    1506:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    150a:	9c3d                	addw	s0,s0,a5
    150c:	0ff47413          	andi	s0,s0,255
    1510:	00898223          	sb	s0,4(s3)
    1514:	4605                	li	a2,1
    1516:	008485b3          	add	a1,s1,s0
    151a:	855a                	mv	a0,s6
    151c:	00000097          	auipc	ra,0x0
    1520:	ede080e7          	jalr	-290(ra) # 13fa <swap_bytes>
    1524:	9426                	add	s0,s0,s1
    1526:	000b4783          	lbu	a5,0(s6)
    152a:	00044703          	lbu	a4,0(s0)
    152e:	9fb9                	addw	a5,a5,a4
    1530:	0ff7f793          	andi	a5,a5,255
    1534:	97a6                	add	a5,a5,s1
    1536:	0007c783          	lbu	a5,0(a5)
    153a:	00f90023          	sb	a5,0(s2)
    153e:	0905                	addi	s2,s2,1
    1540:	fb2a98e3          	bne	s5,s2,14f0 <random_bytes+0x36>
    1544:	70e2                	ld	ra,56(sp)
    1546:	7442                	ld	s0,48(sp)
    1548:	74a2                	ld	s1,40(sp)
    154a:	7902                	ld	s2,32(sp)
    154c:	69e2                	ld	s3,24(sp)
    154e:	6a42                	ld	s4,16(sp)
    1550:	6aa2                	ld	s5,8(sp)
    1552:	6b02                	ld	s6,0(sp)
    1554:	6121                	addi	sp,sp,64
    1556:	8082                	ret
    1558:	4501                	li	a0,0
    155a:	00000097          	auipc	ra,0x0
    155e:	ec0080e7          	jalr	-320(ra) # 141a <random_init>
    1562:	bfa5                	j	14da <random_bytes+0x20>

0000000000001564 <random_ulong>:
    1564:	1101                	addi	sp,sp,-32
    1566:	ec06                	sd	ra,24(sp)
    1568:	45a1                	li	a1,8
    156a:	0028                	addi	a0,sp,8
    156c:	00000097          	auipc	ra,0x0
    1570:	f4e080e7          	jalr	-178(ra) # 14ba <random_bytes>
    1574:	6522                	ld	a0,8(sp)
    1576:	60e2                	ld	ra,24(sp)
    1578:	6105                	addi	sp,sp,32
    157a:	8082                	ret

000000000000157c <shuffle>:
    157c:	c9b9                	beqz	a1,15d2 <shuffle+0x56>
    157e:	7179                	addi	sp,sp,-48
    1580:	f406                	sd	ra,40(sp)
    1582:	f022                	sd	s0,32(sp)
    1584:	ec26                	sd	s1,24(sp)
    1586:	e84a                	sd	s2,16(sp)
    1588:	e44e                	sd	s3,8(sp)
    158a:	e052                	sd	s4,0(sp)
    158c:	8a2a                	mv	s4,a0
    158e:	89ae                	mv	s3,a1
    1590:	84b2                	mv	s1,a2
    1592:	892a                	mv	s2,a0
    1594:	4401                	li	s0,0
    1596:	00000097          	auipc	ra,0x0
    159a:	fce080e7          	jalr	-50(ra) # 1564 <random_ulong>
    159e:	408985b3          	sub	a1,s3,s0
    15a2:	02b575b3          	remu	a1,a0,a1
    15a6:	95a2                	add	a1,a1,s0
    15a8:	029585b3          	mul	a1,a1,s1
    15ac:	8626                	mv	a2,s1
    15ae:	95d2                	add	a1,a1,s4
    15b0:	854a                	mv	a0,s2
    15b2:	00000097          	auipc	ra,0x0
    15b6:	e48080e7          	jalr	-440(ra) # 13fa <swap_bytes>
    15ba:	0405                	addi	s0,s0,1
    15bc:	9926                	add	s2,s2,s1
    15be:	fc899ce3          	bne	s3,s0,1596 <shuffle+0x1a>
    15c2:	70a2                	ld	ra,40(sp)
    15c4:	7402                	ld	s0,32(sp)
    15c6:	64e2                	ld	s1,24(sp)
    15c8:	6942                	ld	s2,16(sp)
    15ca:	69a2                	ld	s3,8(sp)
    15cc:	6a02                	ld	s4,0(sp)
    15ce:	6145                	addi	sp,sp,48
    15d0:	8082                	ret
    15d2:	8082                	ret

00000000000015d4 <arc4_init>:
    15d4:	100500a3          	sb	zero,257(a0)
    15d8:	10050023          	sb	zero,256(a0)
    15dc:	4781                	li	a5,0
    15de:	10000693          	li	a3,256
    15e2:	00f50733          	add	a4,a0,a5
    15e6:	00f70023          	sb	a5,0(a4)
    15ea:	0785                	addi	a5,a5,1
    15ec:	fed79be3          	bne	a5,a3,15e2 <arc4_init+0xe>
    15f0:	86aa                	mv	a3,a0
    15f2:	10050e13          	addi	t3,a0,256
    15f6:	4701                	li	a4,0
    15f8:	4781                	li	a5,0
    15fa:	0006c883          	lbu	a7,0(a3)
    15fe:	00f58833          	add	a6,a1,a5
    1602:	00084803          	lbu	a6,0(a6)
    1606:	00e8873b          	addw	a4,a7,a4
    160a:	00e8073b          	addw	a4,a6,a4
    160e:	0ff77713          	andi	a4,a4,255
    1612:	00e50833          	add	a6,a0,a4
    1616:	00084303          	lbu	t1,0(a6)
    161a:	00668023          	sb	t1,0(a3)
    161e:	01180023          	sb	a7,0(a6)
    1622:	0785                	addi	a5,a5,1
    1624:	00c7b833          	sltu	a6,a5,a2
    1628:	41000833          	neg	a6,a6
    162c:	0107f7b3          	and	a5,a5,a6
    1630:	0685                	addi	a3,a3,1
    1632:	fdc694e3          	bne	a3,t3,15fa <arc4_init+0x26>
    1636:	8082                	ret

0000000000001638 <arc4_crypt>:
    1638:	10054e03          	lbu	t3,256(a0)
    163c:	10154803          	lbu	a6,257(a0)
    1640:	fff60e93          	addi	t4,a2,-1
    1644:	c225                	beqz	a2,16a4 <arc4_crypt+0x6c>
    1646:	00c588b3          	add	a7,a1,a2
    164a:	86ae                	mv	a3,a1
    164c:	001e031b          	addiw	t1,t3,1
    1650:	40b3033b          	subw	t1,t1,a1
    1654:	00d3073b          	addw	a4,t1,a3
    1658:	0ff77713          	andi	a4,a4,255
    165c:	972a                	add	a4,a4,a0
    165e:	00074603          	lbu	a2,0(a4)
    1662:	0106083b          	addw	a6,a2,a6
    1666:	0ff87813          	andi	a6,a6,255
    166a:	010507b3          	add	a5,a0,a6
    166e:	0007c583          	lbu	a1,0(a5)
    1672:	00b70023          	sb	a1,0(a4)
    1676:	00c78023          	sb	a2,0(a5)
    167a:	0685                	addi	a3,a3,1
    167c:	00074783          	lbu	a5,0(a4)
    1680:	9fb1                	addw	a5,a5,a2
    1682:	0ff7f793          	andi	a5,a5,255
    1686:	97aa                	add	a5,a5,a0
    1688:	0007c783          	lbu	a5,0(a5)
    168c:	fff6c703          	lbu	a4,-1(a3)
    1690:	8fb9                	xor	a5,a5,a4
    1692:	fef68fa3          	sb	a5,-1(a3)
    1696:	fb169fe3          	bne	a3,a7,1654 <arc4_crypt+0x1c>
    169a:	2e85                	addiw	t4,t4,1
    169c:	01ce8e3b          	addw	t3,t4,t3
    16a0:	0ffe7e13          	andi	t3,t3,255
    16a4:	11c50023          	sb	t3,256(a0)
    16a8:	110500a3          	sb	a6,257(a0)
    16ac:	8082                	ret

00000000000016ae <_main>:
    16ae:	1141                	addi	sp,sp,-16
    16b0:	e406                	sd	ra,8(sp)
    16b2:	00000097          	auipc	ra,0x0
    16b6:	94e080e7          	jalr	-1714(ra) # 1000 <main>
    16ba:	4501                	li	a0,0
    16bc:	00000097          	auipc	ra,0x0
    16c0:	578080e7          	jalr	1400(ra) # 1c34 <exit>
    16c4:	60a2                	ld	ra,8(sp)
    16c6:	0141                	addi	sp,sp,16
    16c8:	8082                	ret

00000000000016ca <strcmp>:
    16ca:	00054783          	lbu	a5,0(a0)
    16ce:	cb91                	beqz	a5,16e2 <strcmp+0x18>
    16d0:	0005c703          	lbu	a4,0(a1)
    16d4:	00f71763          	bne	a4,a5,16e2 <strcmp+0x18>
    16d8:	0505                	addi	a0,a0,1
    16da:	0585                	addi	a1,a1,1
    16dc:	00054783          	lbu	a5,0(a0)
    16e0:	fbe5                	bnez	a5,16d0 <strcmp+0x6>
    16e2:	0005c503          	lbu	a0,0(a1)
    16e6:	40a7853b          	subw	a0,a5,a0
    16ea:	8082                	ret

00000000000016ec <strcpy>:
    16ec:	87aa                	mv	a5,a0
    16ee:	0585                	addi	a1,a1,1
    16f0:	0785                	addi	a5,a5,1
    16f2:	fff5c703          	lbu	a4,-1(a1)
    16f6:	fee78fa3          	sb	a4,-1(a5)
    16fa:	fb75                	bnez	a4,16ee <strcpy+0x2>
    16fc:	8082                	ret

00000000000016fe <strlen>:
    16fe:	00054783          	lbu	a5,0(a0)
    1702:	cf81                	beqz	a5,171a <strlen+0x1c>
    1704:	0505                	addi	a0,a0,1
    1706:	87aa                	mv	a5,a0
    1708:	4685                	li	a3,1
    170a:	9e89                	subw	a3,a3,a0
    170c:	00f6853b          	addw	a0,a3,a5
    1710:	0785                	addi	a5,a5,1
    1712:	fff7c703          	lbu	a4,-1(a5)
    1716:	fb7d                	bnez	a4,170c <strlen+0xe>
    1718:	8082                	ret
    171a:	4501                	li	a0,0
    171c:	8082                	ret

000000000000171e <memset>:
    171e:	ca19                	beqz	a2,1734 <memset+0x16>
    1720:	87aa                	mv	a5,a0
    1722:	1602                	slli	a2,a2,0x20
    1724:	9201                	srli	a2,a2,0x20
    1726:	00a60733          	add	a4,a2,a0
    172a:	00b78023          	sb	a1,0(a5)
    172e:	0785                	addi	a5,a5,1
    1730:	fee79de3          	bne	a5,a4,172a <memset+0xc>
    1734:	8082                	ret

0000000000001736 <memcmp>:
    1736:	1101                	addi	sp,sp,-32
    1738:	ec06                	sd	ra,24(sp)
    173a:	e822                	sd	s0,16(sp)
    173c:	e426                	sd	s1,8(sp)
    173e:	e04a                	sd	s2,0(sp)
    1740:	892a                	mv	s2,a0
    1742:	842e                	mv	s0,a1
    1744:	84b2                	mv	s1,a2
    1746:	c915                	beqz	a0,177a <memcmp+0x44>
    1748:	c5ad                	beqz	a1,17b2 <memcmp+0x7c>
    174a:	fff60713          	addi	a4,a2,-1
    174e:	c645                	beqz	a2,17f6 <memcmp+0xc0>
    1750:	87ca                	mv	a5,s2
    1752:	00190613          	addi	a2,s2,1
    1756:	963a                	add	a2,a2,a4
    1758:	0007c683          	lbu	a3,0(a5)
    175c:	00044703          	lbu	a4,0(s0)
    1760:	08e69463          	bne	a3,a4,17e8 <memcmp+0xb2>
    1764:	0785                	addi	a5,a5,1
    1766:	0405                	addi	s0,s0,1
    1768:	fec798e3          	bne	a5,a2,1758 <memcmp+0x22>
    176c:	4501                	li	a0,0
    176e:	60e2                	ld	ra,24(sp)
    1770:	6442                	ld	s0,16(sp)
    1772:	64a2                	ld	s1,8(sp)
    1774:	6902                	ld	s2,0(sp)
    1776:	6105                	addi	sp,sp,32
    1778:	8082                	ret
    177a:	4501                	li	a0,0
    177c:	da6d                	beqz	a2,176e <memcmp+0x38>
    177e:	03200693          	li	a3,50
    1782:	00002637          	lui	a2,0x2
    1786:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    178a:	000025b7          	lui	a1,0x2
    178e:	1c058593          	addi	a1,a1,448 # 21c0 <crctab+0x410>
    1792:	4509                	li	a0,2
    1794:	00000097          	auipc	ra,0x0
    1798:	bbc080e7          	jalr	-1092(ra) # 1350 <fprintf>
    179c:	650d                	lui	a0,0x3
    179e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17a2:	00000097          	auipc	ra,0x0
    17a6:	492080e7          	jalr	1170(ra) # 1c34 <exit>
    17aa:	fff48713          	addi	a4,s1,-1
    17ae:	f04d                	bnez	s0,1750 <memcmp+0x1a>
    17b0:	a011                	j	17b4 <memcmp+0x7e>
    17b2:	c221                	beqz	a2,17f2 <memcmp+0xbc>
    17b4:	03300693          	li	a3,51
    17b8:	00002637          	lui	a2,0x2
    17bc:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    17c0:	000025b7          	lui	a1,0x2
    17c4:	20858593          	addi	a1,a1,520 # 2208 <crctab+0x458>
    17c8:	4509                	li	a0,2
    17ca:	00000097          	auipc	ra,0x0
    17ce:	b86080e7          	jalr	-1146(ra) # 1350 <fprintf>
    17d2:	650d                	lui	a0,0x3
    17d4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17d8:	00000097          	auipc	ra,0x0
    17dc:	45c080e7          	jalr	1116(ra) # 1c34 <exit>
    17e0:	fff48713          	addi	a4,s1,-1
    17e4:	4401                	li	s0,0
    17e6:	b7ad                	j	1750 <memcmp+0x1a>
    17e8:	4505                	li	a0,1
    17ea:	f8d762e3          	bltu	a4,a3,176e <memcmp+0x38>
    17ee:	557d                	li	a0,-1
    17f0:	bfbd                	j	176e <memcmp+0x38>
    17f2:	4501                	li	a0,0
    17f4:	bfad                	j	176e <memcmp+0x38>
    17f6:	4501                	li	a0,0
    17f8:	bf9d                	j	176e <memcmp+0x38>

00000000000017fa <memcpy>:
    17fa:	1101                	addi	sp,sp,-32
    17fc:	ec06                	sd	ra,24(sp)
    17fe:	e822                	sd	s0,16(sp)
    1800:	e426                	sd	s1,8(sp)
    1802:	e04a                	sd	s2,0(sp)
    1804:	84aa                	mv	s1,a0
    1806:	842e                	mv	s0,a1
    1808:	8932                	mv	s2,a2
    180a:	c51d                	beqz	a0,1838 <memcpy+0x3e>
    180c:	c1ad                	beqz	a1,186e <memcpy+0x74>
    180e:	fff60693          	addi	a3,a2,-1
    1812:	ce01                	beqz	a2,182a <memcpy+0x30>
    1814:	0685                	addi	a3,a3,1
    1816:	96a6                	add	a3,a3,s1
    1818:	87a6                	mv	a5,s1
    181a:	0405                	addi	s0,s0,1
    181c:	0785                	addi	a5,a5,1
    181e:	fff44703          	lbu	a4,-1(s0)
    1822:	fee78fa3          	sb	a4,-1(a5)
    1826:	fed79ae3          	bne	a5,a3,181a <memcpy+0x20>
    182a:	8526                	mv	a0,s1
    182c:	60e2                	ld	ra,24(sp)
    182e:	6442                	ld	s0,16(sp)
    1830:	64a2                	ld	s1,8(sp)
    1832:	6902                	ld	s2,0(sp)
    1834:	6105                	addi	sp,sp,32
    1836:	8082                	ret
    1838:	da6d                	beqz	a2,182a <memcpy+0x30>
    183a:	04000693          	li	a3,64
    183e:	00002637          	lui	a2,0x2
    1842:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    1846:	000025b7          	lui	a1,0x2
    184a:	25058593          	addi	a1,a1,592 # 2250 <crctab+0x4a0>
    184e:	4509                	li	a0,2
    1850:	00000097          	auipc	ra,0x0
    1854:	b00080e7          	jalr	-1280(ra) # 1350 <fprintf>
    1858:	650d                	lui	a0,0x3
    185a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    185e:	00000097          	auipc	ra,0x0
    1862:	3d6080e7          	jalr	982(ra) # 1c34 <exit>
    1866:	fff90693          	addi	a3,s2,-1
    186a:	f44d                	bnez	s0,1814 <memcpy+0x1a>
    186c:	a011                	j	1870 <memcpy+0x76>
    186e:	de55                	beqz	a2,182a <memcpy+0x30>
    1870:	04100693          	li	a3,65
    1874:	00002637          	lui	a2,0x2
    1878:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    187c:	000025b7          	lui	a1,0x2
    1880:	29858593          	addi	a1,a1,664 # 2298 <crctab+0x4e8>
    1884:	4509                	li	a0,2
    1886:	00000097          	auipc	ra,0x0
    188a:	aca080e7          	jalr	-1334(ra) # 1350 <fprintf>
    188e:	650d                	lui	a0,0x3
    1890:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1894:	00000097          	auipc	ra,0x0
    1898:	3a0080e7          	jalr	928(ra) # 1c34 <exit>
    189c:	fff90693          	addi	a3,s2,-1
    18a0:	4401                	li	s0,0
    18a2:	bf8d                	j	1814 <memcpy+0x1a>

00000000000018a4 <itoa>:
    18a4:	1101                	addi	sp,sp,-32
    18a6:	ec06                	sd	ra,24(sp)
    18a8:	e822                	sd	s0,16(sp)
    18aa:	e426                	sd	s1,8(sp)
    18ac:	842a                	mv	s0,a0
    18ae:	41f5d71b          	sraiw	a4,a1,0x1f
    18b2:	00e5c7b3          	xor	a5,a1,a4
    18b6:	9f99                	subw	a5,a5,a4
    18b8:	84aa                	mv	s1,a0
    18ba:	862a                	mv	a2,a0
    18bc:	4681                	li	a3,0
    18be:	4529                	li	a0,10
    18c0:	4825                	li	a6,9
    18c2:	88b6                	mv	a7,a3
    18c4:	2685                	addiw	a3,a3,1
    18c6:	02a7e73b          	remw	a4,a5,a0
    18ca:	0307071b          	addiw	a4,a4,48
    18ce:	00e60023          	sb	a4,0(a2)
    18d2:	873e                	mv	a4,a5
    18d4:	02a7c7bb          	divw	a5,a5,a0
    18d8:	0605                	addi	a2,a2,1
    18da:	fee844e3          	blt	a6,a4,18c2 <itoa+0x1e>
    18de:	0405c863          	bltz	a1,192e <itoa+0x8a>
    18e2:	96a2                	add	a3,a3,s0
    18e4:	00068023          	sb	zero,0(a3)
    18e8:	8522                	mv	a0,s0
    18ea:	00000097          	auipc	ra,0x0
    18ee:	e14080e7          	jalr	-492(ra) # 16fe <strlen>
    18f2:	fff5071b          	addiw	a4,a0,-1
    18f6:	02e05763          	blez	a4,1924 <itoa+0x80>
    18fa:	9722                	add	a4,a4,s0
    18fc:	4681                	li	a3,0
    18fe:	0004c783          	lbu	a5,0(s1)
    1902:	00074603          	lbu	a2,0(a4)
    1906:	00c48023          	sb	a2,0(s1)
    190a:	00f70023          	sb	a5,0(a4)
    190e:	0016879b          	addiw	a5,a3,1
    1912:	0007869b          	sext.w	a3,a5
    1916:	0485                	addi	s1,s1,1
    1918:	177d                	addi	a4,a4,-1
    191a:	fff7c793          	not	a5,a5
    191e:	9fa9                	addw	a5,a5,a0
    1920:	fcf6cfe3          	blt	a3,a5,18fe <itoa+0x5a>
    1924:	60e2                	ld	ra,24(sp)
    1926:	6442                	ld	s0,16(sp)
    1928:	64a2                	ld	s1,8(sp)
    192a:	6105                	addi	sp,sp,32
    192c:	8082                	ret
    192e:	96a2                	add	a3,a3,s0
    1930:	02d00793          	li	a5,45
    1934:	00f68023          	sb	a5,0(a3)
    1938:	0028869b          	addiw	a3,a7,2
    193c:	b75d                	j	18e2 <itoa+0x3e>

000000000000193e <atoi>:
    193e:	00054783          	lbu	a5,0(a0)
    1942:	02000713          	li	a4,32
    1946:	00e79763          	bne	a5,a4,1954 <atoi+0x16>
    194a:	0505                	addi	a0,a0,1
    194c:	00054783          	lbu	a5,0(a0)
    1950:	fee78de3          	beq	a5,a4,194a <atoi+0xc>
    1954:	02b00713          	li	a4,43
    1958:	04e78663          	beq	a5,a4,19a4 <atoi+0x66>
    195c:	02d00713          	li	a4,45
    1960:	4805                	li	a6,1
    1962:	04e78463          	beq	a5,a4,19aa <atoi+0x6c>
    1966:	00054683          	lbu	a3,0(a0)
    196a:	fd06879b          	addiw	a5,a3,-48
    196e:	0ff7f793          	andi	a5,a5,255
    1972:	4725                	li	a4,9
    1974:	02f76e63          	bltu	a4,a5,19b0 <atoi+0x72>
    1978:	4601                	li	a2,0
    197a:	45a5                	li	a1,9
    197c:	0505                	addi	a0,a0,1
    197e:	0026179b          	slliw	a5,a2,0x2
    1982:	9fb1                	addw	a5,a5,a2
    1984:	0017979b          	slliw	a5,a5,0x1
    1988:	9fb5                	addw	a5,a5,a3
    198a:	fd07861b          	addiw	a2,a5,-48
    198e:	00054683          	lbu	a3,0(a0)
    1992:	fd06871b          	addiw	a4,a3,-48
    1996:	0ff77713          	andi	a4,a4,255
    199a:	fee5f1e3          	bgeu	a1,a4,197c <atoi+0x3e>
    199e:	02c8053b          	mulw	a0,a6,a2
    19a2:	8082                	ret
    19a4:	0505                	addi	a0,a0,1
    19a6:	4805                	li	a6,1
    19a8:	bf7d                	j	1966 <atoi+0x28>
    19aa:	0505                	addi	a0,a0,1
    19ac:	587d                	li	a6,-1
    19ae:	bf65                	j	1966 <atoi+0x28>
    19b0:	4601                	li	a2,0
    19b2:	b7f5                	j	199e <atoi+0x60>

00000000000019b4 <check_file_handle>:
    19b4:	d8010113          	addi	sp,sp,-640
    19b8:	26113c23          	sd	ra,632(sp)
    19bc:	26813823          	sd	s0,624(sp)
    19c0:	26913423          	sd	s1,616(sp)
    19c4:	27213023          	sd	s2,608(sp)
    19c8:	25313c23          	sd	s3,600(sp)
    19cc:	25413823          	sd	s4,592(sp)
    19d0:	25513423          	sd	s5,584(sp)
    19d4:	25613023          	sd	s6,576(sp)
    19d8:	23713c23          	sd	s7,568(sp)
    19dc:	23813823          	sd	s8,560(sp)
    19e0:	23913423          	sd	s9,552(sp)
    19e4:	23a13023          	sd	s10,544(sp)
    19e8:	21b13c23          	sd	s11,536(sp)
    19ec:	8baa                	mv	s7,a0
    19ee:	8a2e                	mv	s4,a1
    19f0:	8c32                	mv	s8,a2
    19f2:	89b6                	mv	s3,a3
    19f4:	040c                	addi	a1,sp,512
    19f6:	00000097          	auipc	ra,0x0
    19fa:	28e080e7          	jalr	654(ra) # 1c84 <fstat>
    19fe:	20813603          	ld	a2,520(sp)
    1a02:	03361163          	bne	a2,s3,1a24 <check_file_handle+0x70>
    1a06:	06098763          	beqz	s3,1a74 <check_file_handle+0xc0>
    1a0a:	4901                	li	s2,0
    1a0c:	20000a93          	li	s5,512
    1a10:	00002cb7          	lui	s9,0x2
    1a14:	00002db7          	lui	s11,0x2
    1a18:	6b0d                	lui	s6,0x3
    1a1a:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a1e:	00002d37          	lui	s10,0x2
    1a22:	aa39                	j	1b40 <check_file_handle+0x18c>
    1a24:	86ce                	mv	a3,s3
    1a26:	85d2                	mv	a1,s4
    1a28:	00002537          	lui	a0,0x2
    1a2c:	2e050513          	addi	a0,a0,736 # 22e0 <crctab+0x530>
    1a30:	00000097          	auipc	ra,0x0
    1a34:	942080e7          	jalr	-1726(ra) # 1372 <printf>
    1a38:	fc0999e3          	bnez	s3,1a0a <check_file_handle+0x56>
    1a3c:	20813683          	ld	a3,520(sp)
    1a40:	03368a63          	beq	a3,s3,1a74 <check_file_handle+0xc0>
    1a44:	0a600813          	li	a6,166
    1a48:	000027b7          	lui	a5,0x2
    1a4c:	1b078793          	addi	a5,a5,432 # 21b0 <crctab+0x400>
    1a50:	874e                	mv	a4,s3
    1a52:	8652                	mv	a2,s4
    1a54:	000025b7          	lui	a1,0x2
    1a58:	3b058593          	addi	a1,a1,944 # 23b0 <crctab+0x600>
    1a5c:	4509                	li	a0,2
    1a5e:	00000097          	auipc	ra,0x0
    1a62:	8f2080e7          	jalr	-1806(ra) # 1350 <fprintf>
    1a66:	650d                	lui	a0,0x3
    1a68:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a6c:	00000097          	auipc	ra,0x0
    1a70:	1c8080e7          	jalr	456(ra) # 1c34 <exit>
    1a74:	85d2                	mv	a1,s4
    1a76:	00002537          	lui	a0,0x2
    1a7a:	3f850513          	addi	a0,a0,1016 # 23f8 <crctab+0x648>
    1a7e:	00000097          	auipc	ra,0x0
    1a82:	8f4080e7          	jalr	-1804(ra) # 1372 <printf>
    1a86:	27813083          	ld	ra,632(sp)
    1a8a:	27013403          	ld	s0,624(sp)
    1a8e:	26813483          	ld	s1,616(sp)
    1a92:	26013903          	ld	s2,608(sp)
    1a96:	25813983          	ld	s3,600(sp)
    1a9a:	25013a03          	ld	s4,592(sp)
    1a9e:	24813a83          	ld	s5,584(sp)
    1aa2:	24013b03          	ld	s6,576(sp)
    1aa6:	23813b83          	ld	s7,568(sp)
    1aaa:	23013c03          	ld	s8,560(sp)
    1aae:	22813c83          	ld	s9,552(sp)
    1ab2:	22013d03          	ld	s10,544(sp)
    1ab6:	21813d83          	ld	s11,536(sp)
    1aba:	28010113          	addi	sp,sp,640
    1abe:	8082                	ret
    1ac0:	09d00893          	li	a7,157
    1ac4:	1b0c8813          	addi	a6,s9,432 # 21b0 <crctab+0x400>
    1ac8:	87aa                	mv	a5,a0
    1aca:	8752                	mv	a4,s4
    1acc:	86ca                	mv	a3,s2
    1ace:	8622                	mv	a2,s0
    1ad0:	310d8593          	addi	a1,s11,784 # 2310 <crctab+0x560>
    1ad4:	4509                	li	a0,2
    1ad6:	00000097          	auipc	ra,0x0
    1ada:	87a080e7          	jalr	-1926(ra) # 1350 <fprintf>
    1ade:	855a                	mv	a0,s6
    1ae0:	00000097          	auipc	ra,0x0
    1ae4:	154080e7          	jalr	340(ra) # 1c34 <exit>
    1ae8:	a89d                	j	1b5e <check_file_handle+0x1aa>
    1aea:	00160593          	addi	a1,a2,1
    1aee:	0285f163          	bgeu	a1,s0,1b10 <check_file_handle+0x15c>
    1af2:	00c10733          	add	a4,sp,a2
    1af6:	00b487b3          	add	a5,s1,a1
    1afa:	00174683          	lbu	a3,1(a4)
    1afe:	0007c783          	lbu	a5,0(a5)
    1b02:	00f68763          	beq	a3,a5,1b10 <check_file_handle+0x15c>
    1b06:	0585                	addi	a1,a1,1
    1b08:	0705                	addi	a4,a4,1
    1b0a:	feb416e3          	bne	s0,a1,1af6 <check_file_handle+0x142>
    1b0e:	85a2                	mv	a1,s0
    1b10:	08100813          	li	a6,129
    1b14:	1b0c8793          	addi	a5,s9,432
    1b18:	8752                	mv	a4,s4
    1b1a:	012606b3          	add	a3,a2,s2
    1b1e:	40c58633          	sub	a2,a1,a2
    1b22:	358d0593          	addi	a1,s10,856 # 2358 <crctab+0x5a8>
    1b26:	4509                	li	a0,2
    1b28:	00000097          	auipc	ra,0x0
    1b2c:	828080e7          	jalr	-2008(ra) # 1350 <fprintf>
    1b30:	855a                	mv	a0,s6
    1b32:	00000097          	auipc	ra,0x0
    1b36:	102080e7          	jalr	258(ra) # 1c34 <exit>
    1b3a:	9922                	add	s2,s2,s0
    1b3c:	f13970e3          	bgeu	s2,s3,1a3c <check_file_handle+0x88>
    1b40:	41298433          	sub	s0,s3,s2
    1b44:	008af363          	bgeu	s5,s0,1b4a <check_file_handle+0x196>
    1b48:	8456                	mv	s0,s5
    1b4a:	0004061b          	sext.w	a2,s0
    1b4e:	858a                	mv	a1,sp
    1b50:	855e                	mv	a0,s7
    1b52:	00000097          	auipc	ra,0x0
    1b56:	10a080e7          	jalr	266(ra) # 1c5c <read>
    1b5a:	f68513e3          	bne	a0,s0,1ac0 <check_file_handle+0x10c>
    1b5e:	012c04b3          	add	s1,s8,s2
    1b62:	8622                	mv	a2,s0
    1b64:	85a6                	mv	a1,s1
    1b66:	850a                	mv	a0,sp
    1b68:	00000097          	auipc	ra,0x0
    1b6c:	bce080e7          	jalr	-1074(ra) # 1736 <memcmp>
    1b70:	d569                	beqz	a0,1b3a <check_file_handle+0x186>
    1b72:	03298163          	beq	s3,s2,1b94 <check_file_handle+0x1e0>
    1b76:	870a                	mv	a4,sp
    1b78:	4601                	li	a2,0
    1b7a:	00c487b3          	add	a5,s1,a2
    1b7e:	00074683          	lbu	a3,0(a4)
    1b82:	0007c783          	lbu	a5,0(a5)
    1b86:	f6f692e3          	bne	a3,a5,1aea <check_file_handle+0x136>
    1b8a:	0605                	addi	a2,a2,1
    1b8c:	0705                	addi	a4,a4,1
    1b8e:	fe8666e3          	bltu	a2,s0,1b7a <check_file_handle+0x1c6>
    1b92:	bfa1                	j	1aea <check_file_handle+0x136>
    1b94:	4601                	li	a2,0
    1b96:	4585                	li	a1,1
    1b98:	bfa5                	j	1b10 <check_file_handle+0x15c>

0000000000001b9a <check_file>:
    1b9a:	7179                	addi	sp,sp,-48
    1b9c:	f406                	sd	ra,40(sp)
    1b9e:	f022                	sd	s0,32(sp)
    1ba0:	ec26                	sd	s1,24(sp)
    1ba2:	e84a                	sd	s2,16(sp)
    1ba4:	e44e                	sd	s3,8(sp)
    1ba6:	84aa                	mv	s1,a0
    1ba8:	892e                	mv	s2,a1
    1baa:	89b2                	mv	s3,a2
    1bac:	4581                	li	a1,0
    1bae:	00000097          	auipc	ra,0x0
    1bb2:	0a6080e7          	jalr	166(ra) # 1c54 <open>
    1bb6:	842a                	mv	s0,a0
    1bb8:	4789                	li	a5,2
    1bba:	02a7df63          	bge	a5,a0,1bf8 <check_file+0x5e>
    1bbe:	86ce                	mv	a3,s3
    1bc0:	864a                	mv	a2,s2
    1bc2:	85a6                	mv	a1,s1
    1bc4:	8522                	mv	a0,s0
    1bc6:	00000097          	auipc	ra,0x0
    1bca:	dee080e7          	jalr	-530(ra) # 19b4 <check_file_handle>
    1bce:	85a6                	mv	a1,s1
    1bd0:	00002537          	lui	a0,0x2
    1bd4:	48050513          	addi	a0,a0,1152 # 2480 <crctab+0x6d0>
    1bd8:	fffff097          	auipc	ra,0xfffff
    1bdc:	79a080e7          	jalr	1946(ra) # 1372 <printf>
    1be0:	8522                	mv	a0,s0
    1be2:	00000097          	auipc	ra,0x0
    1be6:	09a080e7          	jalr	154(ra) # 1c7c <close>
    1bea:	70a2                	ld	ra,40(sp)
    1bec:	7402                	ld	s0,32(sp)
    1bee:	64e2                	ld	s1,24(sp)
    1bf0:	6942                	ld	s2,16(sp)
    1bf2:	69a2                	ld	s3,8(sp)
    1bf4:	6145                	addi	sp,sp,48
    1bf6:	8082                	ret
    1bf8:	0ae00713          	li	a4,174
    1bfc:	000026b7          	lui	a3,0x2
    1c00:	1b068693          	addi	a3,a3,432 # 21b0 <crctab+0x400>
    1c04:	8626                	mv	a2,s1
    1c06:	000025b7          	lui	a1,0x2
    1c0a:	41858593          	addi	a1,a1,1048 # 2418 <crctab+0x668>
    1c0e:	4509                	li	a0,2
    1c10:	fffff097          	auipc	ra,0xfffff
    1c14:	740080e7          	jalr	1856(ra) # 1350 <fprintf>
    1c18:	650d                	lui	a0,0x3
    1c1a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c1e:	00000097          	auipc	ra,0x0
    1c22:	016080e7          	jalr	22(ra) # 1c34 <exit>
    1c26:	bf61                	j	1bbe <check_file+0x24>

0000000000001c28 <r_sp>:
    1c28:	850a                	mv	a0,sp
    1c2a:	8082                	ret

0000000000001c2c <halt>:
    1c2c:	4885                	li	a7,1
    1c2e:	00000073          	ecall
    1c32:	8082                	ret

0000000000001c34 <exit>:
    1c34:	4889                	li	a7,2
    1c36:	00000073          	ecall
    1c3a:	8082                	ret

0000000000001c3c <exec>:
    1c3c:	488d                	li	a7,3
    1c3e:	00000073          	ecall
    1c42:	8082                	ret

0000000000001c44 <wait>:
    1c44:	4891                	li	a7,4
    1c46:	00000073          	ecall
    1c4a:	8082                	ret

0000000000001c4c <remove>:
    1c4c:	4895                	li	a7,5
    1c4e:	00000073          	ecall
    1c52:	8082                	ret

0000000000001c54 <open>:
    1c54:	4899                	li	a7,6
    1c56:	00000073          	ecall
    1c5a:	8082                	ret

0000000000001c5c <read>:
    1c5c:	489d                	li	a7,7
    1c5e:	00000073          	ecall
    1c62:	8082                	ret

0000000000001c64 <write>:
    1c64:	48a1                	li	a7,8
    1c66:	00000073          	ecall
    1c6a:	8082                	ret

0000000000001c6c <seek>:
    1c6c:	48a5                	li	a7,9
    1c6e:	00000073          	ecall
    1c72:	8082                	ret

0000000000001c74 <tell>:
    1c74:	48a9                	li	a7,10
    1c76:	00000073          	ecall
    1c7a:	8082                	ret

0000000000001c7c <close>:
    1c7c:	48ad                	li	a7,11
    1c7e:	00000073          	ecall
    1c82:	8082                	ret

0000000000001c84 <fstat>:
    1c84:	48b1                	li	a7,12
    1c86:	00000073          	ecall
    1c8a:	8082                	ret

0000000000001c8c <mmap>:
    1c8c:	48b5                	li	a7,13
    1c8e:	00000073          	ecall
    1c92:	8082                	ret

0000000000001c94 <munmap>:
    1c94:	48b9                	li	a7,14
    1c96:	00000073          	ecall
    1c9a:	8082                	ret

0000000000001c9c <chdir>:
    1c9c:	48bd                	li	a7,15
    1c9e:	00000073          	ecall
    1ca2:	8082                	ret

0000000000001ca4 <mkdir>:
    1ca4:	48c1                	li	a7,16
    1ca6:	00000073          	ecall
    1caa:	8082                	ret
