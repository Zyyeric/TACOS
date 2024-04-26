
build/user/vm/pt-grow-stk-sc:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7179                	addi	sp,sp,-48
    1002:	f406                	sd	ra,40(sp)
    1004:	f022                	sd	s0,32(sp)
    1006:	ec26                	sd	s1,24(sp)
    1008:	e84a                	sd	s2,16(sp)
    100a:	7341                	lui	t1,0xffff0
    100c:	911a                	add	sp,sp,t1
    100e:	00003537          	lui	a0,0x3
    1012:	00050513          	mv	a0,a0
    1016:	00000097          	auipc	ra,0x0
    101a:	7d8080e7          	jalr	2008(ra) # 17ee <strlen>
    101e:	842a                	mv	s0,a0
    1020:	60100593          	li	a1,1537
    1024:	00002537          	lui	a0,0x2
    1028:	da050513          	addi	a0,a0,-608 # 1da0 <mkdir+0xc>
    102c:	00001097          	auipc	ra,0x1
    1030:	d18080e7          	jalr	-744(ra) # 1d44 <open>
    1034:	84aa                	mv	s1,a0
    1036:	4789                	li	a5,2
    1038:	0aa7d163          	bge	a5,a0,10da <main+0xda>
    103c:	0004091b          	sext.w	s2,s0
    1040:	864a                	mv	a2,s2
    1042:	000035b7          	lui	a1,0x3
    1046:	00058593          	mv	a1,a1
    104a:	8526                	mv	a0,s1
    104c:	00001097          	auipc	ra,0x1
    1050:	d08080e7          	jalr	-760(ra) # 1d54 <write>
    1054:	0a851963          	bne	a0,s0,1106 <main+0x106>
    1058:	8526                	mv	a0,s1
    105a:	00001097          	auipc	ra,0x1
    105e:	d12080e7          	jalr	-750(ra) # 1d6c <close>
    1062:	4581                	li	a1,0
    1064:	00002537          	lui	a0,0x2
    1068:	da050513          	addi	a0,a0,-608 # 1da0 <mkdir+0xc>
    106c:	00001097          	auipc	ra,0x1
    1070:	cd8080e7          	jalr	-808(ra) # 1d44 <open>
    1074:	84aa                	mv	s1,a0
    1076:	4789                	li	a5,2
    1078:	0aa7dd63          	bge	a5,a0,1132 <main+0x132>
    107c:	77c1                	lui	a5,0xffff0
    107e:	864a                	mv	a2,s2
    1080:	6741                	lui	a4,0x10
    1082:	0814                	addi	a3,sp,16
    1084:	9736                	add	a4,a4,a3
    1086:	97ba                	add	a5,a5,a4
    1088:	e43e                	sd	a5,8(sp)
    108a:	65a1                	lui	a1,0x8
    108c:	95be                	add	a1,a1,a5
    108e:	8526                	mv	a0,s1
    1090:	00001097          	auipc	ra,0x1
    1094:	cbc080e7          	jalr	-836(ra) # 1d4c <read>
    1098:	0c851363          	bne	a0,s0,115e <main+0x15e>
    109c:	77c1                	lui	a5,0xffff0
    109e:	8622                	mv	a2,s0
    10a0:	6741                	lui	a4,0x10
    10a2:	0814                	addi	a3,sp,16
    10a4:	9736                	add	a4,a4,a3
    10a6:	97ba                	add	a5,a5,a4
    10a8:	e43e                	sd	a5,8(sp)
    10aa:	65a1                	lui	a1,0x8
    10ac:	95be                	add	a1,a1,a5
    10ae:	00003537          	lui	a0,0x3
    10b2:	00050513          	mv	a0,a0
    10b6:	00000097          	auipc	ra,0x0
    10ba:	770080e7          	jalr	1904(ra) # 1826 <memcmp>
    10be:	e571                	bnez	a0,118a <main+0x18a>
    10c0:	8526                	mv	a0,s1
    10c2:	00001097          	auipc	ra,0x1
    10c6:	caa080e7          	jalr	-854(ra) # 1d6c <close>
    10ca:	6341                	lui	t1,0x10
    10cc:	911a                	add	sp,sp,t1
    10ce:	70a2                	ld	ra,40(sp)
    10d0:	7402                	ld	s0,32(sp)
    10d2:	64e2                	ld	s1,24(sp)
    10d4:	6942                	ld	s2,16(sp)
    10d6:	6145                	addi	sp,sp,48
    10d8:	8082                	ret
    10da:	46b9                	li	a3,14
    10dc:	00002637          	lui	a2,0x2
    10e0:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x1c>
    10e4:	000025b7          	lui	a1,0x2
    10e8:	dd058593          	addi	a1,a1,-560 # 1dd0 <mkdir+0x3c>
    10ec:	4509                	li	a0,2
    10ee:	00000097          	auipc	ra,0x0
    10f2:	352080e7          	jalr	850(ra) # 1440 <fprintf>
    10f6:	650d                	lui	a0,0x3
    10f8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10fc:	00001097          	auipc	ra,0x1
    1100:	c28080e7          	jalr	-984(ra) # 1d24 <exit>
    1104:	bf25                	j	103c <main+0x3c>
    1106:	46bd                	li	a3,15
    1108:	00002637          	lui	a2,0x2
    110c:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x1c>
    1110:	000025b7          	lui	a1,0x2
    1114:	e4058593          	addi	a1,a1,-448 # 1e40 <mkdir+0xac>
    1118:	4509                	li	a0,2
    111a:	00000097          	auipc	ra,0x0
    111e:	326080e7          	jalr	806(ra) # 1440 <fprintf>
    1122:	650d                	lui	a0,0x3
    1124:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1128:	00001097          	auipc	ra,0x1
    112c:	bfc080e7          	jalr	-1028(ra) # 1d24 <exit>
    1130:	b725                	j	1058 <main+0x58>
    1132:	46cd                	li	a3,19
    1134:	00002637          	lui	a2,0x2
    1138:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x1c>
    113c:	000025b7          	lui	a1,0x2
    1140:	e9058593          	addi	a1,a1,-368 # 1e90 <mkdir+0xfc>
    1144:	4509                	li	a0,2
    1146:	00000097          	auipc	ra,0x0
    114a:	2fa080e7          	jalr	762(ra) # 1440 <fprintf>
    114e:	650d                	lui	a0,0x3
    1150:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1154:	00001097          	auipc	ra,0x1
    1158:	bd0080e7          	jalr	-1072(ra) # 1d24 <exit>
    115c:	b705                	j	107c <main+0x7c>
    115e:	46d1                	li	a3,20
    1160:	00002637          	lui	a2,0x2
    1164:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x1c>
    1168:	000025b7          	lui	a1,0x2
    116c:	ee058593          	addi	a1,a1,-288 # 1ee0 <mkdir+0x14c>
    1170:	4509                	li	a0,2
    1172:	00000097          	auipc	ra,0x0
    1176:	2ce080e7          	jalr	718(ra) # 1440 <fprintf>
    117a:	650d                	lui	a0,0x3
    117c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1180:	00001097          	auipc	ra,0x1
    1184:	ba4080e7          	jalr	-1116(ra) # 1d24 <exit>
    1188:	bf11                	j	109c <main+0x9c>
    118a:	46d9                	li	a3,22
    118c:	00002637          	lui	a2,0x2
    1190:	db060613          	addi	a2,a2,-592 # 1db0 <mkdir+0x1c>
    1194:	000025b7          	lui	a1,0x2
    1198:	f3058593          	addi	a1,a1,-208 # 1f30 <mkdir+0x19c>
    119c:	4509                	li	a0,2
    119e:	00000097          	auipc	ra,0x0
    11a2:	2a2080e7          	jalr	674(ra) # 1440 <fprintf>
    11a6:	650d                	lui	a0,0x3
    11a8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    11ac:	00001097          	auipc	ra,0x1
    11b0:	b78080e7          	jalr	-1160(ra) # 1d24 <exit>
    11b4:	b731                	j	10c0 <main+0xc0>

00000000000011b6 <putc>:
    11b6:	1101                	addi	sp,sp,-32
    11b8:	ec06                	sd	ra,24(sp)
    11ba:	00b107a3          	sb	a1,15(sp)
    11be:	4605                	li	a2,1
    11c0:	00f10593          	addi	a1,sp,15
    11c4:	00001097          	auipc	ra,0x1
    11c8:	b90080e7          	jalr	-1136(ra) # 1d54 <write>
    11cc:	60e2                	ld	ra,24(sp)
    11ce:	6105                	addi	sp,sp,32
    11d0:	8082                	ret

00000000000011d2 <printint>:
    11d2:	7179                	addi	sp,sp,-48
    11d4:	f406                	sd	ra,40(sp)
    11d6:	f022                	sd	s0,32(sp)
    11d8:	ec26                	sd	s1,24(sp)
    11da:	e84a                	sd	s2,16(sp)
    11dc:	84aa                	mv	s1,a0
    11de:	c299                	beqz	a3,11e4 <printint+0x12>
    11e0:	0805c363          	bltz	a1,1266 <printint+0x94>
    11e4:	2581                	sext.w	a1,a1
    11e6:	4881                	li	a7,0
    11e8:	868a                	mv	a3,sp
    11ea:	4701                	li	a4,0
    11ec:	2601                	sext.w	a2,a2
    11ee:	00002537          	lui	a0,0x2
    11f2:	fb050513          	addi	a0,a0,-80 # 1fb0 <digits>
    11f6:	883a                	mv	a6,a4
    11f8:	2705                	addiw	a4,a4,1
    11fa:	02c5f7bb          	remuw	a5,a1,a2
    11fe:	1782                	slli	a5,a5,0x20
    1200:	9381                	srli	a5,a5,0x20
    1202:	97aa                	add	a5,a5,a0
    1204:	0007c783          	lbu	a5,0(a5) # ffffffffffff0000 <s+0xfffffffffffecf00>
    1208:	00f68023          	sb	a5,0(a3)
    120c:	0005879b          	sext.w	a5,a1
    1210:	02c5d5bb          	divuw	a1,a1,a2
    1214:	0685                	addi	a3,a3,1
    1216:	fec7f0e3          	bgeu	a5,a2,11f6 <printint+0x24>
    121a:	00088a63          	beqz	a7,122e <printint+0x5c>
    121e:	081c                	addi	a5,sp,16
    1220:	973e                	add	a4,a4,a5
    1222:	02d00793          	li	a5,45
    1226:	fef70823          	sb	a5,-16(a4) # fff0 <s+0xcef0>
    122a:	0028071b          	addiw	a4,a6,2
    122e:	02e05663          	blez	a4,125a <printint+0x88>
    1232:	00e10433          	add	s0,sp,a4
    1236:	fff10913          	addi	s2,sp,-1
    123a:	993a                	add	s2,s2,a4
    123c:	377d                	addiw	a4,a4,-1
    123e:	1702                	slli	a4,a4,0x20
    1240:	9301                	srli	a4,a4,0x20
    1242:	40e90933          	sub	s2,s2,a4
    1246:	fff44583          	lbu	a1,-1(s0)
    124a:	8526                	mv	a0,s1
    124c:	00000097          	auipc	ra,0x0
    1250:	f6a080e7          	jalr	-150(ra) # 11b6 <putc>
    1254:	147d                	addi	s0,s0,-1
    1256:	ff2418e3          	bne	s0,s2,1246 <printint+0x74>
    125a:	70a2                	ld	ra,40(sp)
    125c:	7402                	ld	s0,32(sp)
    125e:	64e2                	ld	s1,24(sp)
    1260:	6942                	ld	s2,16(sp)
    1262:	6145                	addi	sp,sp,48
    1264:	8082                	ret
    1266:	40b005bb          	negw	a1,a1
    126a:	4885                	li	a7,1
    126c:	bfb5                	j	11e8 <printint+0x16>

000000000000126e <vprintf>:
    126e:	7159                	addi	sp,sp,-112
    1270:	f486                	sd	ra,104(sp)
    1272:	f0a2                	sd	s0,96(sp)
    1274:	eca6                	sd	s1,88(sp)
    1276:	e8ca                	sd	s2,80(sp)
    1278:	e4ce                	sd	s3,72(sp)
    127a:	e0d2                	sd	s4,64(sp)
    127c:	fc56                	sd	s5,56(sp)
    127e:	f85a                	sd	s6,48(sp)
    1280:	f45e                	sd	s7,40(sp)
    1282:	f062                	sd	s8,32(sp)
    1284:	ec66                	sd	s9,24(sp)
    1286:	e86a                	sd	s10,16(sp)
    1288:	e46e                	sd	s11,8(sp)
    128a:	0005c483          	lbu	s1,0(a1)
    128e:	18048a63          	beqz	s1,1422 <vprintf+0x1b4>
    1292:	8a2a                	mv	s4,a0
    1294:	8ab2                	mv	s5,a2
    1296:	00158413          	addi	s0,a1,1
    129a:	4901                	li	s2,0
    129c:	02500993          	li	s3,37
    12a0:	06400b93          	li	s7,100
    12a4:	06c00c13          	li	s8,108
    12a8:	07800c93          	li	s9,120
    12ac:	07000d13          	li	s10,112
    12b0:	00002db7          	lui	s11,0x2
    12b4:	00002b37          	lui	s6,0x2
    12b8:	fb0b0b13          	addi	s6,s6,-80 # 1fb0 <digits>
    12bc:	a839                	j	12da <vprintf+0x6c>
    12be:	85a6                	mv	a1,s1
    12c0:	8552                	mv	a0,s4
    12c2:	00000097          	auipc	ra,0x0
    12c6:	ef4080e7          	jalr	-268(ra) # 11b6 <putc>
    12ca:	a019                	j	12d0 <vprintf+0x62>
    12cc:	01390f63          	beq	s2,s3,12ea <vprintf+0x7c>
    12d0:	0405                	addi	s0,s0,1
    12d2:	fff44483          	lbu	s1,-1(s0)
    12d6:	14048663          	beqz	s1,1422 <vprintf+0x1b4>
    12da:	0004879b          	sext.w	a5,s1
    12de:	fe0917e3          	bnez	s2,12cc <vprintf+0x5e>
    12e2:	fd379ee3          	bne	a5,s3,12be <vprintf+0x50>
    12e6:	893e                	mv	s2,a5
    12e8:	b7e5                	j	12d0 <vprintf+0x62>
    12ea:	05778063          	beq	a5,s7,132a <vprintf+0xbc>
    12ee:	05878c63          	beq	a5,s8,1346 <vprintf+0xd8>
    12f2:	07978863          	beq	a5,s9,1362 <vprintf+0xf4>
    12f6:	09a78463          	beq	a5,s10,137e <vprintf+0x110>
    12fa:	07300713          	li	a4,115
    12fe:	0ce78263          	beq	a5,a4,13c2 <vprintf+0x154>
    1302:	06300713          	li	a4,99
    1306:	0ee78763          	beq	a5,a4,13f4 <vprintf+0x186>
    130a:	11378163          	beq	a5,s3,140c <vprintf+0x19e>
    130e:	85ce                	mv	a1,s3
    1310:	8552                	mv	a0,s4
    1312:	00000097          	auipc	ra,0x0
    1316:	ea4080e7          	jalr	-348(ra) # 11b6 <putc>
    131a:	85a6                	mv	a1,s1
    131c:	8552                	mv	a0,s4
    131e:	00000097          	auipc	ra,0x0
    1322:	e98080e7          	jalr	-360(ra) # 11b6 <putc>
    1326:	4901                	li	s2,0
    1328:	b765                	j	12d0 <vprintf+0x62>
    132a:	008a8493          	addi	s1,s5,8
    132e:	4685                	li	a3,1
    1330:	4629                	li	a2,10
    1332:	000aa583          	lw	a1,0(s5)
    1336:	8552                	mv	a0,s4
    1338:	00000097          	auipc	ra,0x0
    133c:	e9a080e7          	jalr	-358(ra) # 11d2 <printint>
    1340:	8aa6                	mv	s5,s1
    1342:	4901                	li	s2,0
    1344:	b771                	j	12d0 <vprintf+0x62>
    1346:	008a8493          	addi	s1,s5,8
    134a:	4681                	li	a3,0
    134c:	4629                	li	a2,10
    134e:	000aa583          	lw	a1,0(s5)
    1352:	8552                	mv	a0,s4
    1354:	00000097          	auipc	ra,0x0
    1358:	e7e080e7          	jalr	-386(ra) # 11d2 <printint>
    135c:	8aa6                	mv	s5,s1
    135e:	4901                	li	s2,0
    1360:	bf85                	j	12d0 <vprintf+0x62>
    1362:	008a8493          	addi	s1,s5,8
    1366:	4681                	li	a3,0
    1368:	4641                	li	a2,16
    136a:	000aa583          	lw	a1,0(s5)
    136e:	8552                	mv	a0,s4
    1370:	00000097          	auipc	ra,0x0
    1374:	e62080e7          	jalr	-414(ra) # 11d2 <printint>
    1378:	8aa6                	mv	s5,s1
    137a:	4901                	li	s2,0
    137c:	bf91                	j	12d0 <vprintf+0x62>
    137e:	008a8913          	addi	s2,s5,8
    1382:	000aba83          	ld	s5,0(s5)
    1386:	03000593          	li	a1,48
    138a:	8552                	mv	a0,s4
    138c:	00000097          	auipc	ra,0x0
    1390:	e2a080e7          	jalr	-470(ra) # 11b6 <putc>
    1394:	85e6                	mv	a1,s9
    1396:	8552                	mv	a0,s4
    1398:	00000097          	auipc	ra,0x0
    139c:	e1e080e7          	jalr	-482(ra) # 11b6 <putc>
    13a0:	44c1                	li	s1,16
    13a2:	03cad793          	srli	a5,s5,0x3c
    13a6:	97da                	add	a5,a5,s6
    13a8:	0007c583          	lbu	a1,0(a5)
    13ac:	8552                	mv	a0,s4
    13ae:	00000097          	auipc	ra,0x0
    13b2:	e08080e7          	jalr	-504(ra) # 11b6 <putc>
    13b6:	0a92                	slli	s5,s5,0x4
    13b8:	34fd                	addiw	s1,s1,-1
    13ba:	f4e5                	bnez	s1,13a2 <vprintf+0x134>
    13bc:	8aca                	mv	s5,s2
    13be:	4901                	li	s2,0
    13c0:	bf01                	j	12d0 <vprintf+0x62>
    13c2:	008a8913          	addi	s2,s5,8
    13c6:	000ab483          	ld	s1,0(s5)
    13ca:	c085                	beqz	s1,13ea <vprintf+0x17c>
    13cc:	0004c583          	lbu	a1,0(s1)
    13d0:	c5b1                	beqz	a1,141c <vprintf+0x1ae>
    13d2:	8552                	mv	a0,s4
    13d4:	00000097          	auipc	ra,0x0
    13d8:	de2080e7          	jalr	-542(ra) # 11b6 <putc>
    13dc:	0485                	addi	s1,s1,1
    13de:	0004c583          	lbu	a1,0(s1)
    13e2:	f9e5                	bnez	a1,13d2 <vprintf+0x164>
    13e4:	8aca                	mv	s5,s2
    13e6:	4901                	li	s2,0
    13e8:	b5e5                	j	12d0 <vprintf+0x62>
    13ea:	fa8d8493          	addi	s1,s11,-88 # 1fa8 <mkdir+0x214>
    13ee:	02800593          	li	a1,40
    13f2:	b7c5                	j	13d2 <vprintf+0x164>
    13f4:	008a8493          	addi	s1,s5,8
    13f8:	000ac583          	lbu	a1,0(s5)
    13fc:	8552                	mv	a0,s4
    13fe:	00000097          	auipc	ra,0x0
    1402:	db8080e7          	jalr	-584(ra) # 11b6 <putc>
    1406:	8aa6                	mv	s5,s1
    1408:	4901                	li	s2,0
    140a:	b5d9                	j	12d0 <vprintf+0x62>
    140c:	85ce                	mv	a1,s3
    140e:	8552                	mv	a0,s4
    1410:	00000097          	auipc	ra,0x0
    1414:	da6080e7          	jalr	-602(ra) # 11b6 <putc>
    1418:	4901                	li	s2,0
    141a:	bd5d                	j	12d0 <vprintf+0x62>
    141c:	8aca                	mv	s5,s2
    141e:	4901                	li	s2,0
    1420:	bd45                	j	12d0 <vprintf+0x62>
    1422:	70a6                	ld	ra,104(sp)
    1424:	7406                	ld	s0,96(sp)
    1426:	64e6                	ld	s1,88(sp)
    1428:	6946                	ld	s2,80(sp)
    142a:	69a6                	ld	s3,72(sp)
    142c:	6a06                	ld	s4,64(sp)
    142e:	7ae2                	ld	s5,56(sp)
    1430:	7b42                	ld	s6,48(sp)
    1432:	7ba2                	ld	s7,40(sp)
    1434:	7c02                	ld	s8,32(sp)
    1436:	6ce2                	ld	s9,24(sp)
    1438:	6d42                	ld	s10,16(sp)
    143a:	6da2                	ld	s11,8(sp)
    143c:	6165                	addi	sp,sp,112
    143e:	8082                	ret

0000000000001440 <fprintf>:
    1440:	715d                	addi	sp,sp,-80
    1442:	ec06                	sd	ra,24(sp)
    1444:	f032                	sd	a2,32(sp)
    1446:	f436                	sd	a3,40(sp)
    1448:	f83a                	sd	a4,48(sp)
    144a:	fc3e                	sd	a5,56(sp)
    144c:	e0c2                	sd	a6,64(sp)
    144e:	e4c6                	sd	a7,72(sp)
    1450:	1010                	addi	a2,sp,32
    1452:	e432                	sd	a2,8(sp)
    1454:	00000097          	auipc	ra,0x0
    1458:	e1a080e7          	jalr	-486(ra) # 126e <vprintf>
    145c:	60e2                	ld	ra,24(sp)
    145e:	6161                	addi	sp,sp,80
    1460:	8082                	ret

0000000000001462 <printf>:
    1462:	711d                	addi	sp,sp,-96
    1464:	ec06                	sd	ra,24(sp)
    1466:	f42e                	sd	a1,40(sp)
    1468:	f832                	sd	a2,48(sp)
    146a:	fc36                	sd	a3,56(sp)
    146c:	e0ba                	sd	a4,64(sp)
    146e:	e4be                	sd	a5,72(sp)
    1470:	e8c2                	sd	a6,80(sp)
    1472:	ecc6                	sd	a7,88(sp)
    1474:	1030                	addi	a2,sp,40
    1476:	e432                	sd	a2,8(sp)
    1478:	85aa                	mv	a1,a0
    147a:	4505                	li	a0,1
    147c:	00000097          	auipc	ra,0x0
    1480:	df2080e7          	jalr	-526(ra) # 126e <vprintf>
    1484:	60e2                	ld	ra,24(sp)
    1486:	6125                	addi	sp,sp,96
    1488:	8082                	ret

000000000000148a <cksum>:
    148a:	cdb1                	beqz	a1,14e6 <cksum+0x5c>
    148c:	00b50833          	add	a6,a0,a1
    1490:	4781                	li	a5,0
    1492:	00002637          	lui	a2,0x2
    1496:	fc860613          	addi	a2,a2,-56 # 1fc8 <crctab>
    149a:	0505                	addi	a0,a0,1
    149c:	0087969b          	slliw	a3,a5,0x8
    14a0:	0187d71b          	srliw	a4,a5,0x18
    14a4:	fff54783          	lbu	a5,-1(a0)
    14a8:	8f3d                	xor	a4,a4,a5
    14aa:	1702                	slli	a4,a4,0x20
    14ac:	9301                	srli	a4,a4,0x20
    14ae:	070a                	slli	a4,a4,0x2
    14b0:	9732                	add	a4,a4,a2
    14b2:	431c                	lw	a5,0(a4)
    14b4:	8fb5                	xor	a5,a5,a3
    14b6:	2781                	sext.w	a5,a5
    14b8:	fea811e3          	bne	a6,a0,149a <cksum+0x10>
    14bc:	00002637          	lui	a2,0x2
    14c0:	fc860613          	addi	a2,a2,-56 # 1fc8 <crctab>
    14c4:	0ff5f693          	andi	a3,a1,255
    14c8:	81a1                	srli	a1,a1,0x8
    14ca:	0087951b          	slliw	a0,a5,0x8
    14ce:	0187d71b          	srliw	a4,a5,0x18
    14d2:	8f35                	xor	a4,a4,a3
    14d4:	070a                	slli	a4,a4,0x2
    14d6:	9732                	add	a4,a4,a2
    14d8:	431c                	lw	a5,0(a4)
    14da:	8fa9                	xor	a5,a5,a0
    14dc:	2781                	sext.w	a5,a5
    14de:	f1fd                	bnez	a1,14c4 <cksum+0x3a>
    14e0:	fff7c513          	not	a0,a5
    14e4:	8082                	ret
    14e6:	4781                	li	a5,0
    14e8:	bfe5                	j	14e0 <cksum+0x56>

00000000000014ea <swap_bytes>:
    14ea:	ce19                	beqz	a2,1508 <swap_bytes+0x1e>
    14ec:	87aa                	mv	a5,a0
    14ee:	962a                	add	a2,a2,a0
    14f0:	0007c703          	lbu	a4,0(a5)
    14f4:	0005c683          	lbu	a3,0(a1)
    14f8:	00d78023          	sb	a3,0(a5)
    14fc:	00e58023          	sb	a4,0(a1)
    1500:	0785                	addi	a5,a5,1
    1502:	0585                	addi	a1,a1,1
    1504:	fec796e3          	bne	a5,a2,14f0 <swap_bytes+0x6>
    1508:	8082                	ret

000000000000150a <random_init>:
    150a:	7139                	addi	sp,sp,-64
    150c:	fc06                	sd	ra,56(sp)
    150e:	f822                	sd	s0,48(sp)
    1510:	f426                	sd	s1,40(sp)
    1512:	f04a                	sd	s2,32(sp)
    1514:	ec4e                	sd	s3,24(sp)
    1516:	e852                	sd	s4,16(sp)
    1518:	c62a                	sw	a0,12(sp)
    151a:	000037b7          	lui	a5,0x3
    151e:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    1522:	eca5                	bnez	s1,159a <random_init+0x90>
    1524:	00003737          	lui	a4,0x3
    1528:	10070913          	addi	s2,a4,256 # 3100 <s>
    152c:	10070713          	addi	a4,a4,256
    1530:	87a6                	mv	a5,s1
    1532:	10000693          	li	a3,256
    1536:	00f70023          	sb	a5,0(a4)
    153a:	2785                	addiw	a5,a5,1
    153c:	0705                	addi	a4,a4,1
    153e:	fed79ce3          	bne	a5,a3,1536 <random_init+0x2c>
    1542:	4401                	li	s0,0
    1544:	000039b7          	lui	s3,0x3
    1548:	10098993          	addi	s3,s3,256 # 3100 <s>
    154c:	10000a13          	li	s4,256
    1550:	0034f793          	andi	a5,s1,3
    1554:	0818                	addi	a4,sp,16
    1556:	97ba                	add	a5,a5,a4
    1558:	ffc7c783          	lbu	a5,-4(a5)
    155c:	00094703          	lbu	a4,0(s2)
    1560:	9fb9                	addw	a5,a5,a4
    1562:	9c3d                	addw	s0,s0,a5
    1564:	0ff47413          	andi	s0,s0,255
    1568:	4605                	li	a2,1
    156a:	008985b3          	add	a1,s3,s0
    156e:	854a                	mv	a0,s2
    1570:	00000097          	auipc	ra,0x0
    1574:	f7a080e7          	jalr	-134(ra) # 14ea <swap_bytes>
    1578:	2485                	addiw	s1,s1,1
    157a:	0905                	addi	s2,s2,1
    157c:	fd449ae3          	bne	s1,s4,1550 <random_init+0x46>
    1580:	000037b7          	lui	a5,0x3
    1584:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1588:	000037b7          	lui	a5,0x3
    158c:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1590:	000037b7          	lui	a5,0x3
    1594:	4705                	li	a4,1
    1596:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    159a:	70e2                	ld	ra,56(sp)
    159c:	7442                	ld	s0,48(sp)
    159e:	74a2                	ld	s1,40(sp)
    15a0:	7902                	ld	s2,32(sp)
    15a2:	69e2                	ld	s3,24(sp)
    15a4:	6a42                	ld	s4,16(sp)
    15a6:	6121                	addi	sp,sp,64
    15a8:	8082                	ret

00000000000015aa <random_bytes>:
    15aa:	7139                	addi	sp,sp,-64
    15ac:	fc06                	sd	ra,56(sp)
    15ae:	f822                	sd	s0,48(sp)
    15b0:	f426                	sd	s1,40(sp)
    15b2:	f04a                	sd	s2,32(sp)
    15b4:	ec4e                	sd	s3,24(sp)
    15b6:	e852                	sd	s4,16(sp)
    15b8:	e456                	sd	s5,8(sp)
    15ba:	e05a                	sd	s6,0(sp)
    15bc:	892a                	mv	s2,a0
    15be:	8aae                	mv	s5,a1
    15c0:	000037b7          	lui	a5,0x3
    15c4:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    15c8:	c3c1                	beqz	a5,1648 <random_bytes+0x9e>
    15ca:	060a8563          	beqz	s5,1634 <random_bytes+0x8a>
    15ce:	9aca                	add	s5,s5,s2
    15d0:	00003a37          	lui	s4,0x3
    15d4:	000034b7          	lui	s1,0x3
    15d8:	10048493          	addi	s1,s1,256 # 3100 <s>
    15dc:	000039b7          	lui	s3,0x3
    15e0:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    15e4:	2505                	addiw	a0,a0,1
    15e6:	0ff57513          	andi	a0,a0,255
    15ea:	0eaa0aa3          	sb	a0,245(s4)
    15ee:	00a48b33          	add	s6,s1,a0
    15f2:	000b4403          	lbu	s0,0(s6)
    15f6:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    15fa:	9c3d                	addw	s0,s0,a5
    15fc:	0ff47413          	andi	s0,s0,255
    1600:	0e898a23          	sb	s0,244(s3)
    1604:	4605                	li	a2,1
    1606:	008485b3          	add	a1,s1,s0
    160a:	855a                	mv	a0,s6
    160c:	00000097          	auipc	ra,0x0
    1610:	ede080e7          	jalr	-290(ra) # 14ea <swap_bytes>
    1614:	9426                	add	s0,s0,s1
    1616:	000b4783          	lbu	a5,0(s6)
    161a:	00044703          	lbu	a4,0(s0)
    161e:	9fb9                	addw	a5,a5,a4
    1620:	0ff7f793          	andi	a5,a5,255
    1624:	97a6                	add	a5,a5,s1
    1626:	0007c783          	lbu	a5,0(a5)
    162a:	00f90023          	sb	a5,0(s2)
    162e:	0905                	addi	s2,s2,1
    1630:	fb2a98e3          	bne	s5,s2,15e0 <random_bytes+0x36>
    1634:	70e2                	ld	ra,56(sp)
    1636:	7442                	ld	s0,48(sp)
    1638:	74a2                	ld	s1,40(sp)
    163a:	7902                	ld	s2,32(sp)
    163c:	69e2                	ld	s3,24(sp)
    163e:	6a42                	ld	s4,16(sp)
    1640:	6aa2                	ld	s5,8(sp)
    1642:	6b02                	ld	s6,0(sp)
    1644:	6121                	addi	sp,sp,64
    1646:	8082                	ret
    1648:	4501                	li	a0,0
    164a:	00000097          	auipc	ra,0x0
    164e:	ec0080e7          	jalr	-320(ra) # 150a <random_init>
    1652:	bfa5                	j	15ca <random_bytes+0x20>

0000000000001654 <random_ulong>:
    1654:	1101                	addi	sp,sp,-32
    1656:	ec06                	sd	ra,24(sp)
    1658:	45a1                	li	a1,8
    165a:	0028                	addi	a0,sp,8
    165c:	00000097          	auipc	ra,0x0
    1660:	f4e080e7          	jalr	-178(ra) # 15aa <random_bytes>
    1664:	6522                	ld	a0,8(sp)
    1666:	60e2                	ld	ra,24(sp)
    1668:	6105                	addi	sp,sp,32
    166a:	8082                	ret

000000000000166c <shuffle>:
    166c:	c9b9                	beqz	a1,16c2 <shuffle+0x56>
    166e:	7179                	addi	sp,sp,-48
    1670:	f406                	sd	ra,40(sp)
    1672:	f022                	sd	s0,32(sp)
    1674:	ec26                	sd	s1,24(sp)
    1676:	e84a                	sd	s2,16(sp)
    1678:	e44e                	sd	s3,8(sp)
    167a:	e052                	sd	s4,0(sp)
    167c:	8a2a                	mv	s4,a0
    167e:	89ae                	mv	s3,a1
    1680:	84b2                	mv	s1,a2
    1682:	892a                	mv	s2,a0
    1684:	4401                	li	s0,0
    1686:	00000097          	auipc	ra,0x0
    168a:	fce080e7          	jalr	-50(ra) # 1654 <random_ulong>
    168e:	408985b3          	sub	a1,s3,s0
    1692:	02b575b3          	remu	a1,a0,a1
    1696:	95a2                	add	a1,a1,s0
    1698:	029585b3          	mul	a1,a1,s1
    169c:	8626                	mv	a2,s1
    169e:	95d2                	add	a1,a1,s4
    16a0:	854a                	mv	a0,s2
    16a2:	00000097          	auipc	ra,0x0
    16a6:	e48080e7          	jalr	-440(ra) # 14ea <swap_bytes>
    16aa:	0405                	addi	s0,s0,1
    16ac:	9926                	add	s2,s2,s1
    16ae:	fc899ce3          	bne	s3,s0,1686 <shuffle+0x1a>
    16b2:	70a2                	ld	ra,40(sp)
    16b4:	7402                	ld	s0,32(sp)
    16b6:	64e2                	ld	s1,24(sp)
    16b8:	6942                	ld	s2,16(sp)
    16ba:	69a2                	ld	s3,8(sp)
    16bc:	6a02                	ld	s4,0(sp)
    16be:	6145                	addi	sp,sp,48
    16c0:	8082                	ret
    16c2:	8082                	ret

00000000000016c4 <arc4_init>:
    16c4:	100500a3          	sb	zero,257(a0)
    16c8:	10050023          	sb	zero,256(a0)
    16cc:	4781                	li	a5,0
    16ce:	10000693          	li	a3,256
    16d2:	00f50733          	add	a4,a0,a5
    16d6:	00f70023          	sb	a5,0(a4)
    16da:	0785                	addi	a5,a5,1
    16dc:	fed79be3          	bne	a5,a3,16d2 <arc4_init+0xe>
    16e0:	86aa                	mv	a3,a0
    16e2:	10050e13          	addi	t3,a0,256
    16e6:	4701                	li	a4,0
    16e8:	4781                	li	a5,0
    16ea:	0006c883          	lbu	a7,0(a3)
    16ee:	00f58833          	add	a6,a1,a5
    16f2:	00084803          	lbu	a6,0(a6)
    16f6:	00e8873b          	addw	a4,a7,a4
    16fa:	00e8073b          	addw	a4,a6,a4
    16fe:	0ff77713          	andi	a4,a4,255
    1702:	00e50833          	add	a6,a0,a4
    1706:	00084303          	lbu	t1,0(a6)
    170a:	00668023          	sb	t1,0(a3)
    170e:	01180023          	sb	a7,0(a6)
    1712:	0785                	addi	a5,a5,1
    1714:	00c7b833          	sltu	a6,a5,a2
    1718:	41000833          	neg	a6,a6
    171c:	0107f7b3          	and	a5,a5,a6
    1720:	0685                	addi	a3,a3,1
    1722:	fdc694e3          	bne	a3,t3,16ea <arc4_init+0x26>
    1726:	8082                	ret

0000000000001728 <arc4_crypt>:
    1728:	10054e03          	lbu	t3,256(a0)
    172c:	10154803          	lbu	a6,257(a0)
    1730:	fff60e93          	addi	t4,a2,-1
    1734:	c225                	beqz	a2,1794 <arc4_crypt+0x6c>
    1736:	00c588b3          	add	a7,a1,a2
    173a:	86ae                	mv	a3,a1
    173c:	001e031b          	addiw	t1,t3,1
    1740:	40b3033b          	subw	t1,t1,a1
    1744:	00d3073b          	addw	a4,t1,a3
    1748:	0ff77713          	andi	a4,a4,255
    174c:	972a                	add	a4,a4,a0
    174e:	00074603          	lbu	a2,0(a4)
    1752:	0106083b          	addw	a6,a2,a6
    1756:	0ff87813          	andi	a6,a6,255
    175a:	010507b3          	add	a5,a0,a6
    175e:	0007c583          	lbu	a1,0(a5)
    1762:	00b70023          	sb	a1,0(a4)
    1766:	00c78023          	sb	a2,0(a5)
    176a:	0685                	addi	a3,a3,1
    176c:	00074783          	lbu	a5,0(a4)
    1770:	9fb1                	addw	a5,a5,a2
    1772:	0ff7f793          	andi	a5,a5,255
    1776:	97aa                	add	a5,a5,a0
    1778:	0007c783          	lbu	a5,0(a5)
    177c:	fff6c703          	lbu	a4,-1(a3)
    1780:	8fb9                	xor	a5,a5,a4
    1782:	fef68fa3          	sb	a5,-1(a3)
    1786:	fb169fe3          	bne	a3,a7,1744 <arc4_crypt+0x1c>
    178a:	2e85                	addiw	t4,t4,1
    178c:	01ce8e3b          	addw	t3,t4,t3
    1790:	0ffe7e13          	andi	t3,t3,255
    1794:	11c50023          	sb	t3,256(a0)
    1798:	110500a3          	sb	a6,257(a0)
    179c:	8082                	ret

000000000000179e <_main>:
    179e:	1141                	addi	sp,sp,-16
    17a0:	e406                	sd	ra,8(sp)
    17a2:	00000097          	auipc	ra,0x0
    17a6:	85e080e7          	jalr	-1954(ra) # 1000 <main>
    17aa:	4501                	li	a0,0
    17ac:	00000097          	auipc	ra,0x0
    17b0:	578080e7          	jalr	1400(ra) # 1d24 <exit>
    17b4:	60a2                	ld	ra,8(sp)
    17b6:	0141                	addi	sp,sp,16
    17b8:	8082                	ret

00000000000017ba <strcmp>:
    17ba:	00054783          	lbu	a5,0(a0)
    17be:	cb91                	beqz	a5,17d2 <strcmp+0x18>
    17c0:	0005c703          	lbu	a4,0(a1)
    17c4:	00f71763          	bne	a4,a5,17d2 <strcmp+0x18>
    17c8:	0505                	addi	a0,a0,1
    17ca:	0585                	addi	a1,a1,1
    17cc:	00054783          	lbu	a5,0(a0)
    17d0:	fbe5                	bnez	a5,17c0 <strcmp+0x6>
    17d2:	0005c503          	lbu	a0,0(a1)
    17d6:	40a7853b          	subw	a0,a5,a0
    17da:	8082                	ret

00000000000017dc <strcpy>:
    17dc:	87aa                	mv	a5,a0
    17de:	0585                	addi	a1,a1,1
    17e0:	0785                	addi	a5,a5,1
    17e2:	fff5c703          	lbu	a4,-1(a1)
    17e6:	fee78fa3          	sb	a4,-1(a5)
    17ea:	fb75                	bnez	a4,17de <strcpy+0x2>
    17ec:	8082                	ret

00000000000017ee <strlen>:
    17ee:	00054783          	lbu	a5,0(a0)
    17f2:	cf81                	beqz	a5,180a <strlen+0x1c>
    17f4:	0505                	addi	a0,a0,1
    17f6:	87aa                	mv	a5,a0
    17f8:	4685                	li	a3,1
    17fa:	9e89                	subw	a3,a3,a0
    17fc:	00f6853b          	addw	a0,a3,a5
    1800:	0785                	addi	a5,a5,1
    1802:	fff7c703          	lbu	a4,-1(a5)
    1806:	fb7d                	bnez	a4,17fc <strlen+0xe>
    1808:	8082                	ret
    180a:	4501                	li	a0,0
    180c:	8082                	ret

000000000000180e <memset>:
    180e:	ca19                	beqz	a2,1824 <memset+0x16>
    1810:	87aa                	mv	a5,a0
    1812:	1602                	slli	a2,a2,0x20
    1814:	9201                	srli	a2,a2,0x20
    1816:	00a60733          	add	a4,a2,a0
    181a:	00b78023          	sb	a1,0(a5)
    181e:	0785                	addi	a5,a5,1
    1820:	fee79de3          	bne	a5,a4,181a <memset+0xc>
    1824:	8082                	ret

0000000000001826 <memcmp>:
    1826:	1101                	addi	sp,sp,-32
    1828:	ec06                	sd	ra,24(sp)
    182a:	e822                	sd	s0,16(sp)
    182c:	e426                	sd	s1,8(sp)
    182e:	e04a                	sd	s2,0(sp)
    1830:	892a                	mv	s2,a0
    1832:	842e                	mv	s0,a1
    1834:	84b2                	mv	s1,a2
    1836:	c915                	beqz	a0,186a <memcmp+0x44>
    1838:	c5ad                	beqz	a1,18a2 <memcmp+0x7c>
    183a:	fff60713          	addi	a4,a2,-1
    183e:	c645                	beqz	a2,18e6 <memcmp+0xc0>
    1840:	87ca                	mv	a5,s2
    1842:	00190613          	addi	a2,s2,1
    1846:	963a                	add	a2,a2,a4
    1848:	0007c683          	lbu	a3,0(a5)
    184c:	00044703          	lbu	a4,0(s0)
    1850:	08e69463          	bne	a3,a4,18d8 <memcmp+0xb2>
    1854:	0785                	addi	a5,a5,1
    1856:	0405                	addi	s0,s0,1
    1858:	fec798e3          	bne	a5,a2,1848 <memcmp+0x22>
    185c:	4501                	li	a0,0
    185e:	60e2                	ld	ra,24(sp)
    1860:	6442                	ld	s0,16(sp)
    1862:	64a2                	ld	s1,8(sp)
    1864:	6902                	ld	s2,0(sp)
    1866:	6105                	addi	sp,sp,32
    1868:	8082                	ret
    186a:	4501                	li	a0,0
    186c:	da6d                	beqz	a2,185e <memcmp+0x38>
    186e:	03200693          	li	a3,50
    1872:	00002637          	lui	a2,0x2
    1876:	3c860613          	addi	a2,a2,968 # 23c8 <crctab+0x400>
    187a:	000025b7          	lui	a1,0x2
    187e:	3d858593          	addi	a1,a1,984 # 23d8 <crctab+0x410>
    1882:	4509                	li	a0,2
    1884:	00000097          	auipc	ra,0x0
    1888:	bbc080e7          	jalr	-1092(ra) # 1440 <fprintf>
    188c:	650d                	lui	a0,0x3
    188e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1892:	00000097          	auipc	ra,0x0
    1896:	492080e7          	jalr	1170(ra) # 1d24 <exit>
    189a:	fff48713          	addi	a4,s1,-1
    189e:	f04d                	bnez	s0,1840 <memcmp+0x1a>
    18a0:	a011                	j	18a4 <memcmp+0x7e>
    18a2:	c221                	beqz	a2,18e2 <memcmp+0xbc>
    18a4:	03300693          	li	a3,51
    18a8:	00002637          	lui	a2,0x2
    18ac:	3c860613          	addi	a2,a2,968 # 23c8 <crctab+0x400>
    18b0:	000025b7          	lui	a1,0x2
    18b4:	42058593          	addi	a1,a1,1056 # 2420 <crctab+0x458>
    18b8:	4509                	li	a0,2
    18ba:	00000097          	auipc	ra,0x0
    18be:	b86080e7          	jalr	-1146(ra) # 1440 <fprintf>
    18c2:	650d                	lui	a0,0x3
    18c4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18c8:	00000097          	auipc	ra,0x0
    18cc:	45c080e7          	jalr	1116(ra) # 1d24 <exit>
    18d0:	fff48713          	addi	a4,s1,-1
    18d4:	4401                	li	s0,0
    18d6:	b7ad                	j	1840 <memcmp+0x1a>
    18d8:	4505                	li	a0,1
    18da:	f8d762e3          	bltu	a4,a3,185e <memcmp+0x38>
    18de:	557d                	li	a0,-1
    18e0:	bfbd                	j	185e <memcmp+0x38>
    18e2:	4501                	li	a0,0
    18e4:	bfad                	j	185e <memcmp+0x38>
    18e6:	4501                	li	a0,0
    18e8:	bf9d                	j	185e <memcmp+0x38>

00000000000018ea <memcpy>:
    18ea:	1101                	addi	sp,sp,-32
    18ec:	ec06                	sd	ra,24(sp)
    18ee:	e822                	sd	s0,16(sp)
    18f0:	e426                	sd	s1,8(sp)
    18f2:	e04a                	sd	s2,0(sp)
    18f4:	84aa                	mv	s1,a0
    18f6:	842e                	mv	s0,a1
    18f8:	8932                	mv	s2,a2
    18fa:	c51d                	beqz	a0,1928 <memcpy+0x3e>
    18fc:	c1ad                	beqz	a1,195e <memcpy+0x74>
    18fe:	fff60693          	addi	a3,a2,-1
    1902:	ce01                	beqz	a2,191a <memcpy+0x30>
    1904:	0685                	addi	a3,a3,1
    1906:	96a6                	add	a3,a3,s1
    1908:	87a6                	mv	a5,s1
    190a:	0405                	addi	s0,s0,1
    190c:	0785                	addi	a5,a5,1
    190e:	fff44703          	lbu	a4,-1(s0)
    1912:	fee78fa3          	sb	a4,-1(a5)
    1916:	fed79ae3          	bne	a5,a3,190a <memcpy+0x20>
    191a:	8526                	mv	a0,s1
    191c:	60e2                	ld	ra,24(sp)
    191e:	6442                	ld	s0,16(sp)
    1920:	64a2                	ld	s1,8(sp)
    1922:	6902                	ld	s2,0(sp)
    1924:	6105                	addi	sp,sp,32
    1926:	8082                	ret
    1928:	da6d                	beqz	a2,191a <memcpy+0x30>
    192a:	04000693          	li	a3,64
    192e:	00002637          	lui	a2,0x2
    1932:	3c860613          	addi	a2,a2,968 # 23c8 <crctab+0x400>
    1936:	000025b7          	lui	a1,0x2
    193a:	46858593          	addi	a1,a1,1128 # 2468 <crctab+0x4a0>
    193e:	4509                	li	a0,2
    1940:	00000097          	auipc	ra,0x0
    1944:	b00080e7          	jalr	-1280(ra) # 1440 <fprintf>
    1948:	650d                	lui	a0,0x3
    194a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    194e:	00000097          	auipc	ra,0x0
    1952:	3d6080e7          	jalr	982(ra) # 1d24 <exit>
    1956:	fff90693          	addi	a3,s2,-1
    195a:	f44d                	bnez	s0,1904 <memcpy+0x1a>
    195c:	a011                	j	1960 <memcpy+0x76>
    195e:	de55                	beqz	a2,191a <memcpy+0x30>
    1960:	04100693          	li	a3,65
    1964:	00002637          	lui	a2,0x2
    1968:	3c860613          	addi	a2,a2,968 # 23c8 <crctab+0x400>
    196c:	000025b7          	lui	a1,0x2
    1970:	4b058593          	addi	a1,a1,1200 # 24b0 <crctab+0x4e8>
    1974:	4509                	li	a0,2
    1976:	00000097          	auipc	ra,0x0
    197a:	aca080e7          	jalr	-1334(ra) # 1440 <fprintf>
    197e:	650d                	lui	a0,0x3
    1980:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1984:	00000097          	auipc	ra,0x0
    1988:	3a0080e7          	jalr	928(ra) # 1d24 <exit>
    198c:	fff90693          	addi	a3,s2,-1
    1990:	4401                	li	s0,0
    1992:	bf8d                	j	1904 <memcpy+0x1a>

0000000000001994 <itoa>:
    1994:	1101                	addi	sp,sp,-32
    1996:	ec06                	sd	ra,24(sp)
    1998:	e822                	sd	s0,16(sp)
    199a:	e426                	sd	s1,8(sp)
    199c:	842a                	mv	s0,a0
    199e:	41f5d71b          	sraiw	a4,a1,0x1f
    19a2:	00e5c7b3          	xor	a5,a1,a4
    19a6:	9f99                	subw	a5,a5,a4
    19a8:	84aa                	mv	s1,a0
    19aa:	862a                	mv	a2,a0
    19ac:	4681                	li	a3,0
    19ae:	4529                	li	a0,10
    19b0:	4825                	li	a6,9
    19b2:	88b6                	mv	a7,a3
    19b4:	2685                	addiw	a3,a3,1
    19b6:	02a7e73b          	remw	a4,a5,a0
    19ba:	0307071b          	addiw	a4,a4,48
    19be:	00e60023          	sb	a4,0(a2)
    19c2:	873e                	mv	a4,a5
    19c4:	02a7c7bb          	divw	a5,a5,a0
    19c8:	0605                	addi	a2,a2,1
    19ca:	fee844e3          	blt	a6,a4,19b2 <itoa+0x1e>
    19ce:	0405c863          	bltz	a1,1a1e <itoa+0x8a>
    19d2:	96a2                	add	a3,a3,s0
    19d4:	00068023          	sb	zero,0(a3)
    19d8:	8522                	mv	a0,s0
    19da:	00000097          	auipc	ra,0x0
    19de:	e14080e7          	jalr	-492(ra) # 17ee <strlen>
    19e2:	fff5071b          	addiw	a4,a0,-1
    19e6:	02e05763          	blez	a4,1a14 <itoa+0x80>
    19ea:	9722                	add	a4,a4,s0
    19ec:	4681                	li	a3,0
    19ee:	0004c783          	lbu	a5,0(s1)
    19f2:	00074603          	lbu	a2,0(a4)
    19f6:	00c48023          	sb	a2,0(s1)
    19fa:	00f70023          	sb	a5,0(a4)
    19fe:	0016879b          	addiw	a5,a3,1
    1a02:	0007869b          	sext.w	a3,a5
    1a06:	0485                	addi	s1,s1,1
    1a08:	177d                	addi	a4,a4,-1
    1a0a:	fff7c793          	not	a5,a5
    1a0e:	9fa9                	addw	a5,a5,a0
    1a10:	fcf6cfe3          	blt	a3,a5,19ee <itoa+0x5a>
    1a14:	60e2                	ld	ra,24(sp)
    1a16:	6442                	ld	s0,16(sp)
    1a18:	64a2                	ld	s1,8(sp)
    1a1a:	6105                	addi	sp,sp,32
    1a1c:	8082                	ret
    1a1e:	96a2                	add	a3,a3,s0
    1a20:	02d00793          	li	a5,45
    1a24:	00f68023          	sb	a5,0(a3)
    1a28:	0028869b          	addiw	a3,a7,2
    1a2c:	b75d                	j	19d2 <itoa+0x3e>

0000000000001a2e <atoi>:
    1a2e:	00054783          	lbu	a5,0(a0)
    1a32:	02000713          	li	a4,32
    1a36:	00e79763          	bne	a5,a4,1a44 <atoi+0x16>
    1a3a:	0505                	addi	a0,a0,1
    1a3c:	00054783          	lbu	a5,0(a0)
    1a40:	fee78de3          	beq	a5,a4,1a3a <atoi+0xc>
    1a44:	02b00713          	li	a4,43
    1a48:	04e78663          	beq	a5,a4,1a94 <atoi+0x66>
    1a4c:	02d00713          	li	a4,45
    1a50:	4805                	li	a6,1
    1a52:	04e78463          	beq	a5,a4,1a9a <atoi+0x6c>
    1a56:	00054683          	lbu	a3,0(a0)
    1a5a:	fd06879b          	addiw	a5,a3,-48
    1a5e:	0ff7f793          	andi	a5,a5,255
    1a62:	4725                	li	a4,9
    1a64:	02f76e63          	bltu	a4,a5,1aa0 <atoi+0x72>
    1a68:	4601                	li	a2,0
    1a6a:	45a5                	li	a1,9
    1a6c:	0505                	addi	a0,a0,1
    1a6e:	0026179b          	slliw	a5,a2,0x2
    1a72:	9fb1                	addw	a5,a5,a2
    1a74:	0017979b          	slliw	a5,a5,0x1
    1a78:	9fb5                	addw	a5,a5,a3
    1a7a:	fd07861b          	addiw	a2,a5,-48
    1a7e:	00054683          	lbu	a3,0(a0)
    1a82:	fd06871b          	addiw	a4,a3,-48
    1a86:	0ff77713          	andi	a4,a4,255
    1a8a:	fee5f1e3          	bgeu	a1,a4,1a6c <atoi+0x3e>
    1a8e:	02c8053b          	mulw	a0,a6,a2
    1a92:	8082                	ret
    1a94:	0505                	addi	a0,a0,1
    1a96:	4805                	li	a6,1
    1a98:	bf7d                	j	1a56 <atoi+0x28>
    1a9a:	0505                	addi	a0,a0,1
    1a9c:	587d                	li	a6,-1
    1a9e:	bf65                	j	1a56 <atoi+0x28>
    1aa0:	4601                	li	a2,0
    1aa2:	b7f5                	j	1a8e <atoi+0x60>

0000000000001aa4 <check_file_handle>:
    1aa4:	d8010113          	addi	sp,sp,-640
    1aa8:	26113c23          	sd	ra,632(sp)
    1aac:	26813823          	sd	s0,624(sp)
    1ab0:	26913423          	sd	s1,616(sp)
    1ab4:	27213023          	sd	s2,608(sp)
    1ab8:	25313c23          	sd	s3,600(sp)
    1abc:	25413823          	sd	s4,592(sp)
    1ac0:	25513423          	sd	s5,584(sp)
    1ac4:	25613023          	sd	s6,576(sp)
    1ac8:	23713c23          	sd	s7,568(sp)
    1acc:	23813823          	sd	s8,560(sp)
    1ad0:	23913423          	sd	s9,552(sp)
    1ad4:	23a13023          	sd	s10,544(sp)
    1ad8:	21b13c23          	sd	s11,536(sp)
    1adc:	8baa                	mv	s7,a0
    1ade:	8a2e                	mv	s4,a1
    1ae0:	8c32                	mv	s8,a2
    1ae2:	89b6                	mv	s3,a3
    1ae4:	040c                	addi	a1,sp,512
    1ae6:	00000097          	auipc	ra,0x0
    1aea:	28e080e7          	jalr	654(ra) # 1d74 <fstat>
    1aee:	20813603          	ld	a2,520(sp)
    1af2:	03361163          	bne	a2,s3,1b14 <check_file_handle+0x70>
    1af6:	06098763          	beqz	s3,1b64 <check_file_handle+0xc0>
    1afa:	4901                	li	s2,0
    1afc:	20000a93          	li	s5,512
    1b00:	00002cb7          	lui	s9,0x2
    1b04:	00002db7          	lui	s11,0x2
    1b08:	6b0d                	lui	s6,0x3
    1b0a:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1b0e:	00002d37          	lui	s10,0x2
    1b12:	aa39                	j	1c30 <check_file_handle+0x18c>
    1b14:	86ce                	mv	a3,s3
    1b16:	85d2                	mv	a1,s4
    1b18:	00002537          	lui	a0,0x2
    1b1c:	4f850513          	addi	a0,a0,1272 # 24f8 <crctab+0x530>
    1b20:	00000097          	auipc	ra,0x0
    1b24:	942080e7          	jalr	-1726(ra) # 1462 <printf>
    1b28:	fc0999e3          	bnez	s3,1afa <check_file_handle+0x56>
    1b2c:	20813683          	ld	a3,520(sp)
    1b30:	03368a63          	beq	a3,s3,1b64 <check_file_handle+0xc0>
    1b34:	0a600813          	li	a6,166
    1b38:	000027b7          	lui	a5,0x2
    1b3c:	3c878793          	addi	a5,a5,968 # 23c8 <crctab+0x400>
    1b40:	874e                	mv	a4,s3
    1b42:	8652                	mv	a2,s4
    1b44:	000025b7          	lui	a1,0x2
    1b48:	5c858593          	addi	a1,a1,1480 # 25c8 <crctab+0x600>
    1b4c:	4509                	li	a0,2
    1b4e:	00000097          	auipc	ra,0x0
    1b52:	8f2080e7          	jalr	-1806(ra) # 1440 <fprintf>
    1b56:	650d                	lui	a0,0x3
    1b58:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b5c:	00000097          	auipc	ra,0x0
    1b60:	1c8080e7          	jalr	456(ra) # 1d24 <exit>
    1b64:	85d2                	mv	a1,s4
    1b66:	00002537          	lui	a0,0x2
    1b6a:	61050513          	addi	a0,a0,1552 # 2610 <crctab+0x648>
    1b6e:	00000097          	auipc	ra,0x0
    1b72:	8f4080e7          	jalr	-1804(ra) # 1462 <printf>
    1b76:	27813083          	ld	ra,632(sp)
    1b7a:	27013403          	ld	s0,624(sp)
    1b7e:	26813483          	ld	s1,616(sp)
    1b82:	26013903          	ld	s2,608(sp)
    1b86:	25813983          	ld	s3,600(sp)
    1b8a:	25013a03          	ld	s4,592(sp)
    1b8e:	24813a83          	ld	s5,584(sp)
    1b92:	24013b03          	ld	s6,576(sp)
    1b96:	23813b83          	ld	s7,568(sp)
    1b9a:	23013c03          	ld	s8,560(sp)
    1b9e:	22813c83          	ld	s9,552(sp)
    1ba2:	22013d03          	ld	s10,544(sp)
    1ba6:	21813d83          	ld	s11,536(sp)
    1baa:	28010113          	addi	sp,sp,640
    1bae:	8082                	ret
    1bb0:	09d00893          	li	a7,157
    1bb4:	3c8c8813          	addi	a6,s9,968 # 23c8 <crctab+0x400>
    1bb8:	87aa                	mv	a5,a0
    1bba:	8752                	mv	a4,s4
    1bbc:	86ca                	mv	a3,s2
    1bbe:	8622                	mv	a2,s0
    1bc0:	528d8593          	addi	a1,s11,1320 # 2528 <crctab+0x560>
    1bc4:	4509                	li	a0,2
    1bc6:	00000097          	auipc	ra,0x0
    1bca:	87a080e7          	jalr	-1926(ra) # 1440 <fprintf>
    1bce:	855a                	mv	a0,s6
    1bd0:	00000097          	auipc	ra,0x0
    1bd4:	154080e7          	jalr	340(ra) # 1d24 <exit>
    1bd8:	a89d                	j	1c4e <check_file_handle+0x1aa>
    1bda:	00160593          	addi	a1,a2,1
    1bde:	0285f163          	bgeu	a1,s0,1c00 <check_file_handle+0x15c>
    1be2:	00c10733          	add	a4,sp,a2
    1be6:	00b487b3          	add	a5,s1,a1
    1bea:	00174683          	lbu	a3,1(a4)
    1bee:	0007c783          	lbu	a5,0(a5)
    1bf2:	00f68763          	beq	a3,a5,1c00 <check_file_handle+0x15c>
    1bf6:	0585                	addi	a1,a1,1
    1bf8:	0705                	addi	a4,a4,1
    1bfa:	feb416e3          	bne	s0,a1,1be6 <check_file_handle+0x142>
    1bfe:	85a2                	mv	a1,s0
    1c00:	08100813          	li	a6,129
    1c04:	3c8c8793          	addi	a5,s9,968
    1c08:	8752                	mv	a4,s4
    1c0a:	012606b3          	add	a3,a2,s2
    1c0e:	40c58633          	sub	a2,a1,a2
    1c12:	570d0593          	addi	a1,s10,1392 # 2570 <crctab+0x5a8>
    1c16:	4509                	li	a0,2
    1c18:	00000097          	auipc	ra,0x0
    1c1c:	828080e7          	jalr	-2008(ra) # 1440 <fprintf>
    1c20:	855a                	mv	a0,s6
    1c22:	00000097          	auipc	ra,0x0
    1c26:	102080e7          	jalr	258(ra) # 1d24 <exit>
    1c2a:	9922                	add	s2,s2,s0
    1c2c:	f13970e3          	bgeu	s2,s3,1b2c <check_file_handle+0x88>
    1c30:	41298433          	sub	s0,s3,s2
    1c34:	008af363          	bgeu	s5,s0,1c3a <check_file_handle+0x196>
    1c38:	8456                	mv	s0,s5
    1c3a:	0004061b          	sext.w	a2,s0
    1c3e:	858a                	mv	a1,sp
    1c40:	855e                	mv	a0,s7
    1c42:	00000097          	auipc	ra,0x0
    1c46:	10a080e7          	jalr	266(ra) # 1d4c <read>
    1c4a:	f68513e3          	bne	a0,s0,1bb0 <check_file_handle+0x10c>
    1c4e:	012c04b3          	add	s1,s8,s2
    1c52:	8622                	mv	a2,s0
    1c54:	85a6                	mv	a1,s1
    1c56:	850a                	mv	a0,sp
    1c58:	00000097          	auipc	ra,0x0
    1c5c:	bce080e7          	jalr	-1074(ra) # 1826 <memcmp>
    1c60:	d569                	beqz	a0,1c2a <check_file_handle+0x186>
    1c62:	03298163          	beq	s3,s2,1c84 <check_file_handle+0x1e0>
    1c66:	870a                	mv	a4,sp
    1c68:	4601                	li	a2,0
    1c6a:	00c487b3          	add	a5,s1,a2
    1c6e:	00074683          	lbu	a3,0(a4)
    1c72:	0007c783          	lbu	a5,0(a5)
    1c76:	f6f692e3          	bne	a3,a5,1bda <check_file_handle+0x136>
    1c7a:	0605                	addi	a2,a2,1
    1c7c:	0705                	addi	a4,a4,1
    1c7e:	fe8666e3          	bltu	a2,s0,1c6a <check_file_handle+0x1c6>
    1c82:	bfa1                	j	1bda <check_file_handle+0x136>
    1c84:	4601                	li	a2,0
    1c86:	4585                	li	a1,1
    1c88:	bfa5                	j	1c00 <check_file_handle+0x15c>

0000000000001c8a <check_file>:
    1c8a:	7179                	addi	sp,sp,-48
    1c8c:	f406                	sd	ra,40(sp)
    1c8e:	f022                	sd	s0,32(sp)
    1c90:	ec26                	sd	s1,24(sp)
    1c92:	e84a                	sd	s2,16(sp)
    1c94:	e44e                	sd	s3,8(sp)
    1c96:	84aa                	mv	s1,a0
    1c98:	892e                	mv	s2,a1
    1c9a:	89b2                	mv	s3,a2
    1c9c:	4581                	li	a1,0
    1c9e:	00000097          	auipc	ra,0x0
    1ca2:	0a6080e7          	jalr	166(ra) # 1d44 <open>
    1ca6:	842a                	mv	s0,a0
    1ca8:	4789                	li	a5,2
    1caa:	02a7df63          	bge	a5,a0,1ce8 <check_file+0x5e>
    1cae:	86ce                	mv	a3,s3
    1cb0:	864a                	mv	a2,s2
    1cb2:	85a6                	mv	a1,s1
    1cb4:	8522                	mv	a0,s0
    1cb6:	00000097          	auipc	ra,0x0
    1cba:	dee080e7          	jalr	-530(ra) # 1aa4 <check_file_handle>
    1cbe:	85a6                	mv	a1,s1
    1cc0:	00002537          	lui	a0,0x2
    1cc4:	69850513          	addi	a0,a0,1688 # 2698 <crctab+0x6d0>
    1cc8:	fffff097          	auipc	ra,0xfffff
    1ccc:	79a080e7          	jalr	1946(ra) # 1462 <printf>
    1cd0:	8522                	mv	a0,s0
    1cd2:	00000097          	auipc	ra,0x0
    1cd6:	09a080e7          	jalr	154(ra) # 1d6c <close>
    1cda:	70a2                	ld	ra,40(sp)
    1cdc:	7402                	ld	s0,32(sp)
    1cde:	64e2                	ld	s1,24(sp)
    1ce0:	6942                	ld	s2,16(sp)
    1ce2:	69a2                	ld	s3,8(sp)
    1ce4:	6145                	addi	sp,sp,48
    1ce6:	8082                	ret
    1ce8:	0ae00713          	li	a4,174
    1cec:	000026b7          	lui	a3,0x2
    1cf0:	3c868693          	addi	a3,a3,968 # 23c8 <crctab+0x400>
    1cf4:	8626                	mv	a2,s1
    1cf6:	000025b7          	lui	a1,0x2
    1cfa:	63058593          	addi	a1,a1,1584 # 2630 <crctab+0x668>
    1cfe:	4509                	li	a0,2
    1d00:	fffff097          	auipc	ra,0xfffff
    1d04:	740080e7          	jalr	1856(ra) # 1440 <fprintf>
    1d08:	650d                	lui	a0,0x3
    1d0a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1d0e:	00000097          	auipc	ra,0x0
    1d12:	016080e7          	jalr	22(ra) # 1d24 <exit>
    1d16:	bf61                	j	1cae <check_file+0x24>

0000000000001d18 <r_sp>:
    1d18:	850a                	mv	a0,sp
    1d1a:	8082                	ret

0000000000001d1c <halt>:
    1d1c:	4885                	li	a7,1
    1d1e:	00000073          	ecall
    1d22:	8082                	ret

0000000000001d24 <exit>:
    1d24:	4889                	li	a7,2
    1d26:	00000073          	ecall
    1d2a:	8082                	ret

0000000000001d2c <exec>:
    1d2c:	488d                	li	a7,3
    1d2e:	00000073          	ecall
    1d32:	8082                	ret

0000000000001d34 <wait>:
    1d34:	4891                	li	a7,4
    1d36:	00000073          	ecall
    1d3a:	8082                	ret

0000000000001d3c <remove>:
    1d3c:	4895                	li	a7,5
    1d3e:	00000073          	ecall
    1d42:	8082                	ret

0000000000001d44 <open>:
    1d44:	4899                	li	a7,6
    1d46:	00000073          	ecall
    1d4a:	8082                	ret

0000000000001d4c <read>:
    1d4c:	489d                	li	a7,7
    1d4e:	00000073          	ecall
    1d52:	8082                	ret

0000000000001d54 <write>:
    1d54:	48a1                	li	a7,8
    1d56:	00000073          	ecall
    1d5a:	8082                	ret

0000000000001d5c <seek>:
    1d5c:	48a5                	li	a7,9
    1d5e:	00000073          	ecall
    1d62:	8082                	ret

0000000000001d64 <tell>:
    1d64:	48a9                	li	a7,10
    1d66:	00000073          	ecall
    1d6a:	8082                	ret

0000000000001d6c <close>:
    1d6c:	48ad                	li	a7,11
    1d6e:	00000073          	ecall
    1d72:	8082                	ret

0000000000001d74 <fstat>:
    1d74:	48b1                	li	a7,12
    1d76:	00000073          	ecall
    1d7a:	8082                	ret

0000000000001d7c <mmap>:
    1d7c:	48b5                	li	a7,13
    1d7e:	00000073          	ecall
    1d82:	8082                	ret

0000000000001d84 <munmap>:
    1d84:	48b9                	li	a7,14
    1d86:	00000073          	ecall
    1d8a:	8082                	ret

0000000000001d8c <chdir>:
    1d8c:	48bd                	li	a7,15
    1d8e:	00000073          	ecall
    1d92:	8082                	ret

0000000000001d94 <mkdir>:
    1d94:	48c1                	li	a7,16
    1d96:	00000073          	ecall
    1d9a:	8082                	ret
