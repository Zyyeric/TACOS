
build/user/userprogs/exec-multiple:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	00002537          	lui	a0,0x2
    1008:	d7050793          	addi	a5,a0,-656 # 1d70 <mkdir+0x12>
    100c:	e03e                	sd	a5,0(sp)
    100e:	e402                	sd	zero,8(sp)
    1010:	858a                	mv	a1,sp
    1012:	d7050513          	addi	a0,a0,-656
    1016:	00001097          	auipc	ra,0x1
    101a:	ce0080e7          	jalr	-800(ra) # 1cf6 <exec>
    101e:	00001097          	auipc	ra,0x1
    1022:	ce0080e7          	jalr	-800(ra) # 1cfe <wait>
    1026:	05100793          	li	a5,81
    102a:	06f51d63          	bne	a0,a5,10a4 <main+0xa4>
    102e:	858a                	mv	a1,sp
    1030:	6502                	ld	a0,0(sp)
    1032:	00001097          	auipc	ra,0x1
    1036:	cc4080e7          	jalr	-828(ra) # 1cf6 <exec>
    103a:	00001097          	auipc	ra,0x1
    103e:	cc4080e7          	jalr	-828(ra) # 1cfe <wait>
    1042:	05100793          	li	a5,81
    1046:	08f51563          	bne	a0,a5,10d0 <main+0xd0>
    104a:	858a                	mv	a1,sp
    104c:	6502                	ld	a0,0(sp)
    104e:	00001097          	auipc	ra,0x1
    1052:	ca8080e7          	jalr	-856(ra) # 1cf6 <exec>
    1056:	00001097          	auipc	ra,0x1
    105a:	ca8080e7          	jalr	-856(ra) # 1cfe <wait>
    105e:	05100793          	li	a5,81
    1062:	08f51d63          	bne	a0,a5,10fc <main+0xfc>
    1066:	858a                	mv	a1,sp
    1068:	6502                	ld	a0,0(sp)
    106a:	00001097          	auipc	ra,0x1
    106e:	c8c080e7          	jalr	-884(ra) # 1cf6 <exec>
    1072:	00001097          	auipc	ra,0x1
    1076:	c8c080e7          	jalr	-884(ra) # 1cfe <wait>
    107a:	05100793          	li	a5,81
    107e:	0af51563          	bne	a0,a5,1128 <main+0x128>
    1082:	858a                	mv	a1,sp
    1084:	6502                	ld	a0,0(sp)
    1086:	00001097          	auipc	ra,0x1
    108a:	c70080e7          	jalr	-912(ra) # 1cf6 <exec>
    108e:	00001097          	auipc	ra,0x1
    1092:	c70080e7          	jalr	-912(ra) # 1cfe <wait>
    1096:	05100793          	li	a5,81
    109a:	0af51d63          	bne	a0,a5,1154 <main+0x154>
    109e:	60e2                	ld	ra,24(sp)
    10a0:	6105                	addi	sp,sp,32
    10a2:	8082                	ret
    10a4:	469d                	li	a3,7
    10a6:	00002637          	lui	a2,0x2
    10aa:	d8060613          	addi	a2,a2,-640 # 1d80 <mkdir+0x22>
    10ae:	000025b7          	lui	a1,0x2
    10b2:	da058593          	addi	a1,a1,-608 # 1da0 <mkdir+0x42>
    10b6:	4509                	li	a0,2
    10b8:	00000097          	auipc	ra,0x0
    10bc:	352080e7          	jalr	850(ra) # 140a <fprintf>
    10c0:	650d                	lui	a0,0x3
    10c2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10c6:	00001097          	auipc	ra,0x1
    10ca:	c28080e7          	jalr	-984(ra) # 1cee <exit>
    10ce:	b785                	j	102e <main+0x2e>
    10d0:	46a1                	li	a3,8
    10d2:	00002637          	lui	a2,0x2
    10d6:	d8060613          	addi	a2,a2,-640 # 1d80 <mkdir+0x22>
    10da:	000025b7          	lui	a1,0x2
    10de:	da058593          	addi	a1,a1,-608 # 1da0 <mkdir+0x42>
    10e2:	4509                	li	a0,2
    10e4:	00000097          	auipc	ra,0x0
    10e8:	326080e7          	jalr	806(ra) # 140a <fprintf>
    10ec:	650d                	lui	a0,0x3
    10ee:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10f2:	00001097          	auipc	ra,0x1
    10f6:	bfc080e7          	jalr	-1028(ra) # 1cee <exit>
    10fa:	bf81                	j	104a <main+0x4a>
    10fc:	46a5                	li	a3,9
    10fe:	00002637          	lui	a2,0x2
    1102:	d8060613          	addi	a2,a2,-640 # 1d80 <mkdir+0x22>
    1106:	000025b7          	lui	a1,0x2
    110a:	da058593          	addi	a1,a1,-608 # 1da0 <mkdir+0x42>
    110e:	4509                	li	a0,2
    1110:	00000097          	auipc	ra,0x0
    1114:	2fa080e7          	jalr	762(ra) # 140a <fprintf>
    1118:	650d                	lui	a0,0x3
    111a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    111e:	00001097          	auipc	ra,0x1
    1122:	bd0080e7          	jalr	-1072(ra) # 1cee <exit>
    1126:	b781                	j	1066 <main+0x66>
    1128:	46a9                	li	a3,10
    112a:	00002637          	lui	a2,0x2
    112e:	d8060613          	addi	a2,a2,-640 # 1d80 <mkdir+0x22>
    1132:	000025b7          	lui	a1,0x2
    1136:	da058593          	addi	a1,a1,-608 # 1da0 <mkdir+0x42>
    113a:	4509                	li	a0,2
    113c:	00000097          	auipc	ra,0x0
    1140:	2ce080e7          	jalr	718(ra) # 140a <fprintf>
    1144:	650d                	lui	a0,0x3
    1146:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    114a:	00001097          	auipc	ra,0x1
    114e:	ba4080e7          	jalr	-1116(ra) # 1cee <exit>
    1152:	bf05                	j	1082 <main+0x82>
    1154:	46ad                	li	a3,11
    1156:	00002637          	lui	a2,0x2
    115a:	d8060613          	addi	a2,a2,-640 # 1d80 <mkdir+0x22>
    115e:	000025b7          	lui	a1,0x2
    1162:	da058593          	addi	a1,a1,-608 # 1da0 <mkdir+0x42>
    1166:	4509                	li	a0,2
    1168:	00000097          	auipc	ra,0x0
    116c:	2a2080e7          	jalr	674(ra) # 140a <fprintf>
    1170:	650d                	lui	a0,0x3
    1172:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1176:	00001097          	auipc	ra,0x1
    117a:	b78080e7          	jalr	-1160(ra) # 1cee <exit>
    117e:	b705                	j	109e <main+0x9e>

0000000000001180 <putc>:
    1180:	1101                	addi	sp,sp,-32
    1182:	ec06                	sd	ra,24(sp)
    1184:	00b107a3          	sb	a1,15(sp)
    1188:	4605                	li	a2,1
    118a:	00f10593          	addi	a1,sp,15
    118e:	00001097          	auipc	ra,0x1
    1192:	b90080e7          	jalr	-1136(ra) # 1d1e <write>
    1196:	60e2                	ld	ra,24(sp)
    1198:	6105                	addi	sp,sp,32
    119a:	8082                	ret

000000000000119c <printint>:
    119c:	7179                	addi	sp,sp,-48
    119e:	f406                	sd	ra,40(sp)
    11a0:	f022                	sd	s0,32(sp)
    11a2:	ec26                	sd	s1,24(sp)
    11a4:	e84a                	sd	s2,16(sp)
    11a6:	84aa                	mv	s1,a0
    11a8:	c299                	beqz	a3,11ae <printint+0x12>
    11aa:	0805c363          	bltz	a1,1230 <printint+0x94>
    11ae:	2581                	sext.w	a1,a1
    11b0:	4881                	li	a7,0
    11b2:	868a                	mv	a3,sp
    11b4:	4701                	li	a4,0
    11b6:	2601                	sext.w	a2,a2
    11b8:	00002537          	lui	a0,0x2
    11bc:	df850513          	addi	a0,a0,-520 # 1df8 <digits>
    11c0:	883a                	mv	a6,a4
    11c2:	2705                	addiw	a4,a4,1
    11c4:	02c5f7bb          	remuw	a5,a1,a2
    11c8:	1782                	slli	a5,a5,0x20
    11ca:	9381                	srli	a5,a5,0x20
    11cc:	97aa                	add	a5,a5,a0
    11ce:	0007c783          	lbu	a5,0(a5)
    11d2:	00f68023          	sb	a5,0(a3)
    11d6:	0005879b          	sext.w	a5,a1
    11da:	02c5d5bb          	divuw	a1,a1,a2
    11de:	0685                	addi	a3,a3,1
    11e0:	fec7f0e3          	bgeu	a5,a2,11c0 <printint+0x24>
    11e4:	00088a63          	beqz	a7,11f8 <printint+0x5c>
    11e8:	081c                	addi	a5,sp,16
    11ea:	973e                	add	a4,a4,a5
    11ec:	02d00793          	li	a5,45
    11f0:	fef70823          	sb	a5,-16(a4)
    11f4:	0028071b          	addiw	a4,a6,2
    11f8:	02e05663          	blez	a4,1224 <printint+0x88>
    11fc:	00e10433          	add	s0,sp,a4
    1200:	fff10913          	addi	s2,sp,-1
    1204:	993a                	add	s2,s2,a4
    1206:	377d                	addiw	a4,a4,-1
    1208:	1702                	slli	a4,a4,0x20
    120a:	9301                	srli	a4,a4,0x20
    120c:	40e90933          	sub	s2,s2,a4
    1210:	fff44583          	lbu	a1,-1(s0)
    1214:	8526                	mv	a0,s1
    1216:	00000097          	auipc	ra,0x0
    121a:	f6a080e7          	jalr	-150(ra) # 1180 <putc>
    121e:	147d                	addi	s0,s0,-1
    1220:	ff2418e3          	bne	s0,s2,1210 <printint+0x74>
    1224:	70a2                	ld	ra,40(sp)
    1226:	7402                	ld	s0,32(sp)
    1228:	64e2                	ld	s1,24(sp)
    122a:	6942                	ld	s2,16(sp)
    122c:	6145                	addi	sp,sp,48
    122e:	8082                	ret
    1230:	40b005bb          	negw	a1,a1
    1234:	4885                	li	a7,1
    1236:	bfb5                	j	11b2 <printint+0x16>

0000000000001238 <vprintf>:
    1238:	7159                	addi	sp,sp,-112
    123a:	f486                	sd	ra,104(sp)
    123c:	f0a2                	sd	s0,96(sp)
    123e:	eca6                	sd	s1,88(sp)
    1240:	e8ca                	sd	s2,80(sp)
    1242:	e4ce                	sd	s3,72(sp)
    1244:	e0d2                	sd	s4,64(sp)
    1246:	fc56                	sd	s5,56(sp)
    1248:	f85a                	sd	s6,48(sp)
    124a:	f45e                	sd	s7,40(sp)
    124c:	f062                	sd	s8,32(sp)
    124e:	ec66                	sd	s9,24(sp)
    1250:	e86a                	sd	s10,16(sp)
    1252:	e46e                	sd	s11,8(sp)
    1254:	0005c483          	lbu	s1,0(a1)
    1258:	18048a63          	beqz	s1,13ec <vprintf+0x1b4>
    125c:	8a2a                	mv	s4,a0
    125e:	8ab2                	mv	s5,a2
    1260:	00158413          	addi	s0,a1,1
    1264:	4901                	li	s2,0
    1266:	02500993          	li	s3,37
    126a:	06400b93          	li	s7,100
    126e:	06c00c13          	li	s8,108
    1272:	07800c93          	li	s9,120
    1276:	07000d13          	li	s10,112
    127a:	00002db7          	lui	s11,0x2
    127e:	00002b37          	lui	s6,0x2
    1282:	df8b0b13          	addi	s6,s6,-520 # 1df8 <digits>
    1286:	a839                	j	12a4 <vprintf+0x6c>
    1288:	85a6                	mv	a1,s1
    128a:	8552                	mv	a0,s4
    128c:	00000097          	auipc	ra,0x0
    1290:	ef4080e7          	jalr	-268(ra) # 1180 <putc>
    1294:	a019                	j	129a <vprintf+0x62>
    1296:	01390f63          	beq	s2,s3,12b4 <vprintf+0x7c>
    129a:	0405                	addi	s0,s0,1
    129c:	fff44483          	lbu	s1,-1(s0)
    12a0:	14048663          	beqz	s1,13ec <vprintf+0x1b4>
    12a4:	0004879b          	sext.w	a5,s1
    12a8:	fe0917e3          	bnez	s2,1296 <vprintf+0x5e>
    12ac:	fd379ee3          	bne	a5,s3,1288 <vprintf+0x50>
    12b0:	893e                	mv	s2,a5
    12b2:	b7e5                	j	129a <vprintf+0x62>
    12b4:	05778063          	beq	a5,s7,12f4 <vprintf+0xbc>
    12b8:	05878c63          	beq	a5,s8,1310 <vprintf+0xd8>
    12bc:	07978863          	beq	a5,s9,132c <vprintf+0xf4>
    12c0:	09a78463          	beq	a5,s10,1348 <vprintf+0x110>
    12c4:	07300713          	li	a4,115
    12c8:	0ce78263          	beq	a5,a4,138c <vprintf+0x154>
    12cc:	06300713          	li	a4,99
    12d0:	0ee78763          	beq	a5,a4,13be <vprintf+0x186>
    12d4:	11378163          	beq	a5,s3,13d6 <vprintf+0x19e>
    12d8:	85ce                	mv	a1,s3
    12da:	8552                	mv	a0,s4
    12dc:	00000097          	auipc	ra,0x0
    12e0:	ea4080e7          	jalr	-348(ra) # 1180 <putc>
    12e4:	85a6                	mv	a1,s1
    12e6:	8552                	mv	a0,s4
    12e8:	00000097          	auipc	ra,0x0
    12ec:	e98080e7          	jalr	-360(ra) # 1180 <putc>
    12f0:	4901                	li	s2,0
    12f2:	b765                	j	129a <vprintf+0x62>
    12f4:	008a8493          	addi	s1,s5,8
    12f8:	4685                	li	a3,1
    12fa:	4629                	li	a2,10
    12fc:	000aa583          	lw	a1,0(s5)
    1300:	8552                	mv	a0,s4
    1302:	00000097          	auipc	ra,0x0
    1306:	e9a080e7          	jalr	-358(ra) # 119c <printint>
    130a:	8aa6                	mv	s5,s1
    130c:	4901                	li	s2,0
    130e:	b771                	j	129a <vprintf+0x62>
    1310:	008a8493          	addi	s1,s5,8
    1314:	4681                	li	a3,0
    1316:	4629                	li	a2,10
    1318:	000aa583          	lw	a1,0(s5)
    131c:	8552                	mv	a0,s4
    131e:	00000097          	auipc	ra,0x0
    1322:	e7e080e7          	jalr	-386(ra) # 119c <printint>
    1326:	8aa6                	mv	s5,s1
    1328:	4901                	li	s2,0
    132a:	bf85                	j	129a <vprintf+0x62>
    132c:	008a8493          	addi	s1,s5,8
    1330:	4681                	li	a3,0
    1332:	4641                	li	a2,16
    1334:	000aa583          	lw	a1,0(s5)
    1338:	8552                	mv	a0,s4
    133a:	00000097          	auipc	ra,0x0
    133e:	e62080e7          	jalr	-414(ra) # 119c <printint>
    1342:	8aa6                	mv	s5,s1
    1344:	4901                	li	s2,0
    1346:	bf91                	j	129a <vprintf+0x62>
    1348:	008a8913          	addi	s2,s5,8
    134c:	000aba83          	ld	s5,0(s5)
    1350:	03000593          	li	a1,48
    1354:	8552                	mv	a0,s4
    1356:	00000097          	auipc	ra,0x0
    135a:	e2a080e7          	jalr	-470(ra) # 1180 <putc>
    135e:	85e6                	mv	a1,s9
    1360:	8552                	mv	a0,s4
    1362:	00000097          	auipc	ra,0x0
    1366:	e1e080e7          	jalr	-482(ra) # 1180 <putc>
    136a:	44c1                	li	s1,16
    136c:	03cad793          	srli	a5,s5,0x3c
    1370:	97da                	add	a5,a5,s6
    1372:	0007c583          	lbu	a1,0(a5)
    1376:	8552                	mv	a0,s4
    1378:	00000097          	auipc	ra,0x0
    137c:	e08080e7          	jalr	-504(ra) # 1180 <putc>
    1380:	0a92                	slli	s5,s5,0x4
    1382:	34fd                	addiw	s1,s1,-1
    1384:	f4e5                	bnez	s1,136c <vprintf+0x134>
    1386:	8aca                	mv	s5,s2
    1388:	4901                	li	s2,0
    138a:	bf01                	j	129a <vprintf+0x62>
    138c:	008a8913          	addi	s2,s5,8
    1390:	000ab483          	ld	s1,0(s5)
    1394:	c085                	beqz	s1,13b4 <vprintf+0x17c>
    1396:	0004c583          	lbu	a1,0(s1)
    139a:	c5b1                	beqz	a1,13e6 <vprintf+0x1ae>
    139c:	8552                	mv	a0,s4
    139e:	00000097          	auipc	ra,0x0
    13a2:	de2080e7          	jalr	-542(ra) # 1180 <putc>
    13a6:	0485                	addi	s1,s1,1
    13a8:	0004c583          	lbu	a1,0(s1)
    13ac:	f9e5                	bnez	a1,139c <vprintf+0x164>
    13ae:	8aca                	mv	s5,s2
    13b0:	4901                	li	s2,0
    13b2:	b5e5                	j	129a <vprintf+0x62>
    13b4:	df0d8493          	addi	s1,s11,-528 # 1df0 <mkdir+0x92>
    13b8:	02800593          	li	a1,40
    13bc:	b7c5                	j	139c <vprintf+0x164>
    13be:	008a8493          	addi	s1,s5,8
    13c2:	000ac583          	lbu	a1,0(s5)
    13c6:	8552                	mv	a0,s4
    13c8:	00000097          	auipc	ra,0x0
    13cc:	db8080e7          	jalr	-584(ra) # 1180 <putc>
    13d0:	8aa6                	mv	s5,s1
    13d2:	4901                	li	s2,0
    13d4:	b5d9                	j	129a <vprintf+0x62>
    13d6:	85ce                	mv	a1,s3
    13d8:	8552                	mv	a0,s4
    13da:	00000097          	auipc	ra,0x0
    13de:	da6080e7          	jalr	-602(ra) # 1180 <putc>
    13e2:	4901                	li	s2,0
    13e4:	bd5d                	j	129a <vprintf+0x62>
    13e6:	8aca                	mv	s5,s2
    13e8:	4901                	li	s2,0
    13ea:	bd45                	j	129a <vprintf+0x62>
    13ec:	70a6                	ld	ra,104(sp)
    13ee:	7406                	ld	s0,96(sp)
    13f0:	64e6                	ld	s1,88(sp)
    13f2:	6946                	ld	s2,80(sp)
    13f4:	69a6                	ld	s3,72(sp)
    13f6:	6a06                	ld	s4,64(sp)
    13f8:	7ae2                	ld	s5,56(sp)
    13fa:	7b42                	ld	s6,48(sp)
    13fc:	7ba2                	ld	s7,40(sp)
    13fe:	7c02                	ld	s8,32(sp)
    1400:	6ce2                	ld	s9,24(sp)
    1402:	6d42                	ld	s10,16(sp)
    1404:	6da2                	ld	s11,8(sp)
    1406:	6165                	addi	sp,sp,112
    1408:	8082                	ret

000000000000140a <fprintf>:
    140a:	715d                	addi	sp,sp,-80
    140c:	ec06                	sd	ra,24(sp)
    140e:	f032                	sd	a2,32(sp)
    1410:	f436                	sd	a3,40(sp)
    1412:	f83a                	sd	a4,48(sp)
    1414:	fc3e                	sd	a5,56(sp)
    1416:	e0c2                	sd	a6,64(sp)
    1418:	e4c6                	sd	a7,72(sp)
    141a:	1010                	addi	a2,sp,32
    141c:	e432                	sd	a2,8(sp)
    141e:	00000097          	auipc	ra,0x0
    1422:	e1a080e7          	jalr	-486(ra) # 1238 <vprintf>
    1426:	60e2                	ld	ra,24(sp)
    1428:	6161                	addi	sp,sp,80
    142a:	8082                	ret

000000000000142c <printf>:
    142c:	711d                	addi	sp,sp,-96
    142e:	ec06                	sd	ra,24(sp)
    1430:	f42e                	sd	a1,40(sp)
    1432:	f832                	sd	a2,48(sp)
    1434:	fc36                	sd	a3,56(sp)
    1436:	e0ba                	sd	a4,64(sp)
    1438:	e4be                	sd	a5,72(sp)
    143a:	e8c2                	sd	a6,80(sp)
    143c:	ecc6                	sd	a7,88(sp)
    143e:	1030                	addi	a2,sp,40
    1440:	e432                	sd	a2,8(sp)
    1442:	85aa                	mv	a1,a0
    1444:	4505                	li	a0,1
    1446:	00000097          	auipc	ra,0x0
    144a:	df2080e7          	jalr	-526(ra) # 1238 <vprintf>
    144e:	60e2                	ld	ra,24(sp)
    1450:	6125                	addi	sp,sp,96
    1452:	8082                	ret

0000000000001454 <cksum>:
    1454:	cdb1                	beqz	a1,14b0 <cksum+0x5c>
    1456:	00b50833          	add	a6,a0,a1
    145a:	4781                	li	a5,0
    145c:	00002637          	lui	a2,0x2
    1460:	e1060613          	addi	a2,a2,-496 # 1e10 <crctab>
    1464:	0505                	addi	a0,a0,1
    1466:	0087969b          	slliw	a3,a5,0x8
    146a:	0187d71b          	srliw	a4,a5,0x18
    146e:	fff54783          	lbu	a5,-1(a0)
    1472:	8f3d                	xor	a4,a4,a5
    1474:	1702                	slli	a4,a4,0x20
    1476:	9301                	srli	a4,a4,0x20
    1478:	070a                	slli	a4,a4,0x2
    147a:	9732                	add	a4,a4,a2
    147c:	431c                	lw	a5,0(a4)
    147e:	8fb5                	xor	a5,a5,a3
    1480:	2781                	sext.w	a5,a5
    1482:	fea811e3          	bne	a6,a0,1464 <cksum+0x10>
    1486:	00002637          	lui	a2,0x2
    148a:	e1060613          	addi	a2,a2,-496 # 1e10 <crctab>
    148e:	0ff5f693          	andi	a3,a1,255
    1492:	81a1                	srli	a1,a1,0x8
    1494:	0087951b          	slliw	a0,a5,0x8
    1498:	0187d71b          	srliw	a4,a5,0x18
    149c:	8f35                	xor	a4,a4,a3
    149e:	070a                	slli	a4,a4,0x2
    14a0:	9732                	add	a4,a4,a2
    14a2:	431c                	lw	a5,0(a4)
    14a4:	8fa9                	xor	a5,a5,a0
    14a6:	2781                	sext.w	a5,a5
    14a8:	f1fd                	bnez	a1,148e <cksum+0x3a>
    14aa:	fff7c513          	not	a0,a5
    14ae:	8082                	ret
    14b0:	4781                	li	a5,0
    14b2:	bfe5                	j	14aa <cksum+0x56>

00000000000014b4 <swap_bytes>:
    14b4:	ce19                	beqz	a2,14d2 <swap_bytes+0x1e>
    14b6:	87aa                	mv	a5,a0
    14b8:	962a                	add	a2,a2,a0
    14ba:	0007c703          	lbu	a4,0(a5)
    14be:	0005c683          	lbu	a3,0(a1)
    14c2:	00d78023          	sb	a3,0(a5)
    14c6:	00e58023          	sb	a4,0(a1)
    14ca:	0785                	addi	a5,a5,1
    14cc:	0585                	addi	a1,a1,1
    14ce:	fec796e3          	bne	a5,a2,14ba <swap_bytes+0x6>
    14d2:	8082                	ret

00000000000014d4 <random_init>:
    14d4:	7139                	addi	sp,sp,-64
    14d6:	fc06                	sd	ra,56(sp)
    14d8:	f822                	sd	s0,48(sp)
    14da:	f426                	sd	s1,40(sp)
    14dc:	f04a                	sd	s2,32(sp)
    14de:	ec4e                	sd	s3,24(sp)
    14e0:	e852                	sd	s4,16(sp)
    14e2:	c62a                	sw	a0,12(sp)
    14e4:	000037b7          	lui	a5,0x3
    14e8:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    14ec:	eca5                	bnez	s1,1564 <random_init+0x90>
    14ee:	00003737          	lui	a4,0x3
    14f2:	01070913          	addi	s2,a4,16 # 3010 <s>
    14f6:	01070713          	addi	a4,a4,16
    14fa:	87a6                	mv	a5,s1
    14fc:	10000693          	li	a3,256
    1500:	00f70023          	sb	a5,0(a4)
    1504:	2785                	addiw	a5,a5,1
    1506:	0705                	addi	a4,a4,1
    1508:	fed79ce3          	bne	a5,a3,1500 <random_init+0x2c>
    150c:	4401                	li	s0,0
    150e:	000039b7          	lui	s3,0x3
    1512:	01098993          	addi	s3,s3,16 # 3010 <s>
    1516:	10000a13          	li	s4,256
    151a:	0034f793          	andi	a5,s1,3
    151e:	0818                	addi	a4,sp,16
    1520:	97ba                	add	a5,a5,a4
    1522:	ffc7c783          	lbu	a5,-4(a5)
    1526:	00094703          	lbu	a4,0(s2)
    152a:	9fb9                	addw	a5,a5,a4
    152c:	9c3d                	addw	s0,s0,a5
    152e:	0ff47413          	andi	s0,s0,255
    1532:	4605                	li	a2,1
    1534:	008985b3          	add	a1,s3,s0
    1538:	854a                	mv	a0,s2
    153a:	00000097          	auipc	ra,0x0
    153e:	f7a080e7          	jalr	-134(ra) # 14b4 <swap_bytes>
    1542:	2485                	addiw	s1,s1,1
    1544:	0905                	addi	s2,s2,1
    1546:	fd449ae3          	bne	s1,s4,151a <random_init+0x46>
    154a:	000037b7          	lui	a5,0x3
    154e:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1552:	000037b7          	lui	a5,0x3
    1556:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    155a:	000037b7          	lui	a5,0x3
    155e:	4705                	li	a4,1
    1560:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1564:	70e2                	ld	ra,56(sp)
    1566:	7442                	ld	s0,48(sp)
    1568:	74a2                	ld	s1,40(sp)
    156a:	7902                	ld	s2,32(sp)
    156c:	69e2                	ld	s3,24(sp)
    156e:	6a42                	ld	s4,16(sp)
    1570:	6121                	addi	sp,sp,64
    1572:	8082                	ret

0000000000001574 <random_bytes>:
    1574:	7139                	addi	sp,sp,-64
    1576:	fc06                	sd	ra,56(sp)
    1578:	f822                	sd	s0,48(sp)
    157a:	f426                	sd	s1,40(sp)
    157c:	f04a                	sd	s2,32(sp)
    157e:	ec4e                	sd	s3,24(sp)
    1580:	e852                	sd	s4,16(sp)
    1582:	e456                	sd	s5,8(sp)
    1584:	e05a                	sd	s6,0(sp)
    1586:	892a                	mv	s2,a0
    1588:	8aae                	mv	s5,a1
    158a:	000037b7          	lui	a5,0x3
    158e:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1592:	c3c1                	beqz	a5,1612 <random_bytes+0x9e>
    1594:	060a8563          	beqz	s5,15fe <random_bytes+0x8a>
    1598:	9aca                	add	s5,s5,s2
    159a:	00003a37          	lui	s4,0x3
    159e:	000034b7          	lui	s1,0x3
    15a2:	01048493          	addi	s1,s1,16 # 3010 <s>
    15a6:	000039b7          	lui	s3,0x3
    15aa:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    15ae:	2505                	addiw	a0,a0,1
    15b0:	0ff57513          	andi	a0,a0,255
    15b4:	00aa02a3          	sb	a0,5(s4)
    15b8:	00a48b33          	add	s6,s1,a0
    15bc:	000b4403          	lbu	s0,0(s6)
    15c0:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    15c4:	9c3d                	addw	s0,s0,a5
    15c6:	0ff47413          	andi	s0,s0,255
    15ca:	00898223          	sb	s0,4(s3)
    15ce:	4605                	li	a2,1
    15d0:	008485b3          	add	a1,s1,s0
    15d4:	855a                	mv	a0,s6
    15d6:	00000097          	auipc	ra,0x0
    15da:	ede080e7          	jalr	-290(ra) # 14b4 <swap_bytes>
    15de:	9426                	add	s0,s0,s1
    15e0:	000b4783          	lbu	a5,0(s6)
    15e4:	00044703          	lbu	a4,0(s0)
    15e8:	9fb9                	addw	a5,a5,a4
    15ea:	0ff7f793          	andi	a5,a5,255
    15ee:	97a6                	add	a5,a5,s1
    15f0:	0007c783          	lbu	a5,0(a5)
    15f4:	00f90023          	sb	a5,0(s2)
    15f8:	0905                	addi	s2,s2,1
    15fa:	fb2a98e3          	bne	s5,s2,15aa <random_bytes+0x36>
    15fe:	70e2                	ld	ra,56(sp)
    1600:	7442                	ld	s0,48(sp)
    1602:	74a2                	ld	s1,40(sp)
    1604:	7902                	ld	s2,32(sp)
    1606:	69e2                	ld	s3,24(sp)
    1608:	6a42                	ld	s4,16(sp)
    160a:	6aa2                	ld	s5,8(sp)
    160c:	6b02                	ld	s6,0(sp)
    160e:	6121                	addi	sp,sp,64
    1610:	8082                	ret
    1612:	4501                	li	a0,0
    1614:	00000097          	auipc	ra,0x0
    1618:	ec0080e7          	jalr	-320(ra) # 14d4 <random_init>
    161c:	bfa5                	j	1594 <random_bytes+0x20>

000000000000161e <random_ulong>:
    161e:	1101                	addi	sp,sp,-32
    1620:	ec06                	sd	ra,24(sp)
    1622:	45a1                	li	a1,8
    1624:	0028                	addi	a0,sp,8
    1626:	00000097          	auipc	ra,0x0
    162a:	f4e080e7          	jalr	-178(ra) # 1574 <random_bytes>
    162e:	6522                	ld	a0,8(sp)
    1630:	60e2                	ld	ra,24(sp)
    1632:	6105                	addi	sp,sp,32
    1634:	8082                	ret

0000000000001636 <shuffle>:
    1636:	c9b9                	beqz	a1,168c <shuffle+0x56>
    1638:	7179                	addi	sp,sp,-48
    163a:	f406                	sd	ra,40(sp)
    163c:	f022                	sd	s0,32(sp)
    163e:	ec26                	sd	s1,24(sp)
    1640:	e84a                	sd	s2,16(sp)
    1642:	e44e                	sd	s3,8(sp)
    1644:	e052                	sd	s4,0(sp)
    1646:	8a2a                	mv	s4,a0
    1648:	89ae                	mv	s3,a1
    164a:	84b2                	mv	s1,a2
    164c:	892a                	mv	s2,a0
    164e:	4401                	li	s0,0
    1650:	00000097          	auipc	ra,0x0
    1654:	fce080e7          	jalr	-50(ra) # 161e <random_ulong>
    1658:	408985b3          	sub	a1,s3,s0
    165c:	02b575b3          	remu	a1,a0,a1
    1660:	95a2                	add	a1,a1,s0
    1662:	029585b3          	mul	a1,a1,s1
    1666:	8626                	mv	a2,s1
    1668:	95d2                	add	a1,a1,s4
    166a:	854a                	mv	a0,s2
    166c:	00000097          	auipc	ra,0x0
    1670:	e48080e7          	jalr	-440(ra) # 14b4 <swap_bytes>
    1674:	0405                	addi	s0,s0,1
    1676:	9926                	add	s2,s2,s1
    1678:	fc899ce3          	bne	s3,s0,1650 <shuffle+0x1a>
    167c:	70a2                	ld	ra,40(sp)
    167e:	7402                	ld	s0,32(sp)
    1680:	64e2                	ld	s1,24(sp)
    1682:	6942                	ld	s2,16(sp)
    1684:	69a2                	ld	s3,8(sp)
    1686:	6a02                	ld	s4,0(sp)
    1688:	6145                	addi	sp,sp,48
    168a:	8082                	ret
    168c:	8082                	ret

000000000000168e <arc4_init>:
    168e:	100500a3          	sb	zero,257(a0)
    1692:	10050023          	sb	zero,256(a0)
    1696:	4781                	li	a5,0
    1698:	10000693          	li	a3,256
    169c:	00f50733          	add	a4,a0,a5
    16a0:	00f70023          	sb	a5,0(a4)
    16a4:	0785                	addi	a5,a5,1
    16a6:	fed79be3          	bne	a5,a3,169c <arc4_init+0xe>
    16aa:	86aa                	mv	a3,a0
    16ac:	10050e13          	addi	t3,a0,256
    16b0:	4701                	li	a4,0
    16b2:	4781                	li	a5,0
    16b4:	0006c883          	lbu	a7,0(a3)
    16b8:	00f58833          	add	a6,a1,a5
    16bc:	00084803          	lbu	a6,0(a6)
    16c0:	00e8873b          	addw	a4,a7,a4
    16c4:	00e8073b          	addw	a4,a6,a4
    16c8:	0ff77713          	andi	a4,a4,255
    16cc:	00e50833          	add	a6,a0,a4
    16d0:	00084303          	lbu	t1,0(a6)
    16d4:	00668023          	sb	t1,0(a3)
    16d8:	01180023          	sb	a7,0(a6)
    16dc:	0785                	addi	a5,a5,1
    16de:	00c7b833          	sltu	a6,a5,a2
    16e2:	41000833          	neg	a6,a6
    16e6:	0107f7b3          	and	a5,a5,a6
    16ea:	0685                	addi	a3,a3,1
    16ec:	fdc694e3          	bne	a3,t3,16b4 <arc4_init+0x26>
    16f0:	8082                	ret

00000000000016f2 <arc4_crypt>:
    16f2:	10054e03          	lbu	t3,256(a0)
    16f6:	10154803          	lbu	a6,257(a0)
    16fa:	fff60e93          	addi	t4,a2,-1
    16fe:	c225                	beqz	a2,175e <arc4_crypt+0x6c>
    1700:	00c588b3          	add	a7,a1,a2
    1704:	86ae                	mv	a3,a1
    1706:	001e031b          	addiw	t1,t3,1
    170a:	40b3033b          	subw	t1,t1,a1
    170e:	00d3073b          	addw	a4,t1,a3
    1712:	0ff77713          	andi	a4,a4,255
    1716:	972a                	add	a4,a4,a0
    1718:	00074603          	lbu	a2,0(a4)
    171c:	0106083b          	addw	a6,a2,a6
    1720:	0ff87813          	andi	a6,a6,255
    1724:	010507b3          	add	a5,a0,a6
    1728:	0007c583          	lbu	a1,0(a5)
    172c:	00b70023          	sb	a1,0(a4)
    1730:	00c78023          	sb	a2,0(a5)
    1734:	0685                	addi	a3,a3,1
    1736:	00074783          	lbu	a5,0(a4)
    173a:	9fb1                	addw	a5,a5,a2
    173c:	0ff7f793          	andi	a5,a5,255
    1740:	97aa                	add	a5,a5,a0
    1742:	0007c783          	lbu	a5,0(a5)
    1746:	fff6c703          	lbu	a4,-1(a3)
    174a:	8fb9                	xor	a5,a5,a4
    174c:	fef68fa3          	sb	a5,-1(a3)
    1750:	fb169fe3          	bne	a3,a7,170e <arc4_crypt+0x1c>
    1754:	2e85                	addiw	t4,t4,1
    1756:	01ce8e3b          	addw	t3,t4,t3
    175a:	0ffe7e13          	andi	t3,t3,255
    175e:	11c50023          	sb	t3,256(a0)
    1762:	110500a3          	sb	a6,257(a0)
    1766:	8082                	ret

0000000000001768 <_main>:
    1768:	1141                	addi	sp,sp,-16
    176a:	e406                	sd	ra,8(sp)
    176c:	00000097          	auipc	ra,0x0
    1770:	894080e7          	jalr	-1900(ra) # 1000 <main>
    1774:	4501                	li	a0,0
    1776:	00000097          	auipc	ra,0x0
    177a:	578080e7          	jalr	1400(ra) # 1cee <exit>
    177e:	60a2                	ld	ra,8(sp)
    1780:	0141                	addi	sp,sp,16
    1782:	8082                	ret

0000000000001784 <strcmp>:
    1784:	00054783          	lbu	a5,0(a0)
    1788:	cb91                	beqz	a5,179c <strcmp+0x18>
    178a:	0005c703          	lbu	a4,0(a1)
    178e:	00f71763          	bne	a4,a5,179c <strcmp+0x18>
    1792:	0505                	addi	a0,a0,1
    1794:	0585                	addi	a1,a1,1
    1796:	00054783          	lbu	a5,0(a0)
    179a:	fbe5                	bnez	a5,178a <strcmp+0x6>
    179c:	0005c503          	lbu	a0,0(a1)
    17a0:	40a7853b          	subw	a0,a5,a0
    17a4:	8082                	ret

00000000000017a6 <strcpy>:
    17a6:	87aa                	mv	a5,a0
    17a8:	0585                	addi	a1,a1,1
    17aa:	0785                	addi	a5,a5,1
    17ac:	fff5c703          	lbu	a4,-1(a1)
    17b0:	fee78fa3          	sb	a4,-1(a5)
    17b4:	fb75                	bnez	a4,17a8 <strcpy+0x2>
    17b6:	8082                	ret

00000000000017b8 <strlen>:
    17b8:	00054783          	lbu	a5,0(a0)
    17bc:	cf81                	beqz	a5,17d4 <strlen+0x1c>
    17be:	0505                	addi	a0,a0,1
    17c0:	87aa                	mv	a5,a0
    17c2:	4685                	li	a3,1
    17c4:	9e89                	subw	a3,a3,a0
    17c6:	00f6853b          	addw	a0,a3,a5
    17ca:	0785                	addi	a5,a5,1
    17cc:	fff7c703          	lbu	a4,-1(a5)
    17d0:	fb7d                	bnez	a4,17c6 <strlen+0xe>
    17d2:	8082                	ret
    17d4:	4501                	li	a0,0
    17d6:	8082                	ret

00000000000017d8 <memset>:
    17d8:	ca19                	beqz	a2,17ee <memset+0x16>
    17da:	87aa                	mv	a5,a0
    17dc:	1602                	slli	a2,a2,0x20
    17de:	9201                	srli	a2,a2,0x20
    17e0:	00a60733          	add	a4,a2,a0
    17e4:	00b78023          	sb	a1,0(a5)
    17e8:	0785                	addi	a5,a5,1
    17ea:	fee79de3          	bne	a5,a4,17e4 <memset+0xc>
    17ee:	8082                	ret

00000000000017f0 <memcmp>:
    17f0:	1101                	addi	sp,sp,-32
    17f2:	ec06                	sd	ra,24(sp)
    17f4:	e822                	sd	s0,16(sp)
    17f6:	e426                	sd	s1,8(sp)
    17f8:	e04a                	sd	s2,0(sp)
    17fa:	892a                	mv	s2,a0
    17fc:	842e                	mv	s0,a1
    17fe:	84b2                	mv	s1,a2
    1800:	c915                	beqz	a0,1834 <memcmp+0x44>
    1802:	c5ad                	beqz	a1,186c <memcmp+0x7c>
    1804:	fff60713          	addi	a4,a2,-1
    1808:	c645                	beqz	a2,18b0 <memcmp+0xc0>
    180a:	87ca                	mv	a5,s2
    180c:	00190613          	addi	a2,s2,1
    1810:	963a                	add	a2,a2,a4
    1812:	0007c683          	lbu	a3,0(a5)
    1816:	00044703          	lbu	a4,0(s0)
    181a:	08e69463          	bne	a3,a4,18a2 <memcmp+0xb2>
    181e:	0785                	addi	a5,a5,1
    1820:	0405                	addi	s0,s0,1
    1822:	fec798e3          	bne	a5,a2,1812 <memcmp+0x22>
    1826:	4501                	li	a0,0
    1828:	60e2                	ld	ra,24(sp)
    182a:	6442                	ld	s0,16(sp)
    182c:	64a2                	ld	s1,8(sp)
    182e:	6902                	ld	s2,0(sp)
    1830:	6105                	addi	sp,sp,32
    1832:	8082                	ret
    1834:	4501                	li	a0,0
    1836:	da6d                	beqz	a2,1828 <memcmp+0x38>
    1838:	03200693          	li	a3,50
    183c:	00002637          	lui	a2,0x2
    1840:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    1844:	000025b7          	lui	a1,0x2
    1848:	22058593          	addi	a1,a1,544 # 2220 <crctab+0x410>
    184c:	4509                	li	a0,2
    184e:	00000097          	auipc	ra,0x0
    1852:	bbc080e7          	jalr	-1092(ra) # 140a <fprintf>
    1856:	650d                	lui	a0,0x3
    1858:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    185c:	00000097          	auipc	ra,0x0
    1860:	492080e7          	jalr	1170(ra) # 1cee <exit>
    1864:	fff48713          	addi	a4,s1,-1
    1868:	f04d                	bnez	s0,180a <memcmp+0x1a>
    186a:	a011                	j	186e <memcmp+0x7e>
    186c:	c221                	beqz	a2,18ac <memcmp+0xbc>
    186e:	03300693          	li	a3,51
    1872:	00002637          	lui	a2,0x2
    1876:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    187a:	000025b7          	lui	a1,0x2
    187e:	26858593          	addi	a1,a1,616 # 2268 <crctab+0x458>
    1882:	4509                	li	a0,2
    1884:	00000097          	auipc	ra,0x0
    1888:	b86080e7          	jalr	-1146(ra) # 140a <fprintf>
    188c:	650d                	lui	a0,0x3
    188e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1892:	00000097          	auipc	ra,0x0
    1896:	45c080e7          	jalr	1116(ra) # 1cee <exit>
    189a:	fff48713          	addi	a4,s1,-1
    189e:	4401                	li	s0,0
    18a0:	b7ad                	j	180a <memcmp+0x1a>
    18a2:	4505                	li	a0,1
    18a4:	f8d762e3          	bltu	a4,a3,1828 <memcmp+0x38>
    18a8:	557d                	li	a0,-1
    18aa:	bfbd                	j	1828 <memcmp+0x38>
    18ac:	4501                	li	a0,0
    18ae:	bfad                	j	1828 <memcmp+0x38>
    18b0:	4501                	li	a0,0
    18b2:	bf9d                	j	1828 <memcmp+0x38>

00000000000018b4 <memcpy>:
    18b4:	1101                	addi	sp,sp,-32
    18b6:	ec06                	sd	ra,24(sp)
    18b8:	e822                	sd	s0,16(sp)
    18ba:	e426                	sd	s1,8(sp)
    18bc:	e04a                	sd	s2,0(sp)
    18be:	84aa                	mv	s1,a0
    18c0:	842e                	mv	s0,a1
    18c2:	8932                	mv	s2,a2
    18c4:	c51d                	beqz	a0,18f2 <memcpy+0x3e>
    18c6:	c1ad                	beqz	a1,1928 <memcpy+0x74>
    18c8:	fff60693          	addi	a3,a2,-1
    18cc:	ce01                	beqz	a2,18e4 <memcpy+0x30>
    18ce:	0685                	addi	a3,a3,1
    18d0:	96a6                	add	a3,a3,s1
    18d2:	87a6                	mv	a5,s1
    18d4:	0405                	addi	s0,s0,1
    18d6:	0785                	addi	a5,a5,1
    18d8:	fff44703          	lbu	a4,-1(s0)
    18dc:	fee78fa3          	sb	a4,-1(a5)
    18e0:	fed79ae3          	bne	a5,a3,18d4 <memcpy+0x20>
    18e4:	8526                	mv	a0,s1
    18e6:	60e2                	ld	ra,24(sp)
    18e8:	6442                	ld	s0,16(sp)
    18ea:	64a2                	ld	s1,8(sp)
    18ec:	6902                	ld	s2,0(sp)
    18ee:	6105                	addi	sp,sp,32
    18f0:	8082                	ret
    18f2:	da6d                	beqz	a2,18e4 <memcpy+0x30>
    18f4:	04000693          	li	a3,64
    18f8:	00002637          	lui	a2,0x2
    18fc:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    1900:	000025b7          	lui	a1,0x2
    1904:	2b058593          	addi	a1,a1,688 # 22b0 <crctab+0x4a0>
    1908:	4509                	li	a0,2
    190a:	00000097          	auipc	ra,0x0
    190e:	b00080e7          	jalr	-1280(ra) # 140a <fprintf>
    1912:	650d                	lui	a0,0x3
    1914:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1918:	00000097          	auipc	ra,0x0
    191c:	3d6080e7          	jalr	982(ra) # 1cee <exit>
    1920:	fff90693          	addi	a3,s2,-1
    1924:	f44d                	bnez	s0,18ce <memcpy+0x1a>
    1926:	a011                	j	192a <memcpy+0x76>
    1928:	de55                	beqz	a2,18e4 <memcpy+0x30>
    192a:	04100693          	li	a3,65
    192e:	00002637          	lui	a2,0x2
    1932:	21060613          	addi	a2,a2,528 # 2210 <crctab+0x400>
    1936:	000025b7          	lui	a1,0x2
    193a:	2f858593          	addi	a1,a1,760 # 22f8 <crctab+0x4e8>
    193e:	4509                	li	a0,2
    1940:	00000097          	auipc	ra,0x0
    1944:	aca080e7          	jalr	-1334(ra) # 140a <fprintf>
    1948:	650d                	lui	a0,0x3
    194a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    194e:	00000097          	auipc	ra,0x0
    1952:	3a0080e7          	jalr	928(ra) # 1cee <exit>
    1956:	fff90693          	addi	a3,s2,-1
    195a:	4401                	li	s0,0
    195c:	bf8d                	j	18ce <memcpy+0x1a>

000000000000195e <itoa>:
    195e:	1101                	addi	sp,sp,-32
    1960:	ec06                	sd	ra,24(sp)
    1962:	e822                	sd	s0,16(sp)
    1964:	e426                	sd	s1,8(sp)
    1966:	842a                	mv	s0,a0
    1968:	41f5d71b          	sraiw	a4,a1,0x1f
    196c:	00e5c7b3          	xor	a5,a1,a4
    1970:	9f99                	subw	a5,a5,a4
    1972:	84aa                	mv	s1,a0
    1974:	862a                	mv	a2,a0
    1976:	4681                	li	a3,0
    1978:	4529                	li	a0,10
    197a:	4825                	li	a6,9
    197c:	88b6                	mv	a7,a3
    197e:	2685                	addiw	a3,a3,1
    1980:	02a7e73b          	remw	a4,a5,a0
    1984:	0307071b          	addiw	a4,a4,48
    1988:	00e60023          	sb	a4,0(a2)
    198c:	873e                	mv	a4,a5
    198e:	02a7c7bb          	divw	a5,a5,a0
    1992:	0605                	addi	a2,a2,1
    1994:	fee844e3          	blt	a6,a4,197c <itoa+0x1e>
    1998:	0405c863          	bltz	a1,19e8 <itoa+0x8a>
    199c:	96a2                	add	a3,a3,s0
    199e:	00068023          	sb	zero,0(a3)
    19a2:	8522                	mv	a0,s0
    19a4:	00000097          	auipc	ra,0x0
    19a8:	e14080e7          	jalr	-492(ra) # 17b8 <strlen>
    19ac:	fff5071b          	addiw	a4,a0,-1
    19b0:	02e05763          	blez	a4,19de <itoa+0x80>
    19b4:	9722                	add	a4,a4,s0
    19b6:	4681                	li	a3,0
    19b8:	0004c783          	lbu	a5,0(s1)
    19bc:	00074603          	lbu	a2,0(a4)
    19c0:	00c48023          	sb	a2,0(s1)
    19c4:	00f70023          	sb	a5,0(a4)
    19c8:	0016879b          	addiw	a5,a3,1
    19cc:	0007869b          	sext.w	a3,a5
    19d0:	0485                	addi	s1,s1,1
    19d2:	177d                	addi	a4,a4,-1
    19d4:	fff7c793          	not	a5,a5
    19d8:	9fa9                	addw	a5,a5,a0
    19da:	fcf6cfe3          	blt	a3,a5,19b8 <itoa+0x5a>
    19de:	60e2                	ld	ra,24(sp)
    19e0:	6442                	ld	s0,16(sp)
    19e2:	64a2                	ld	s1,8(sp)
    19e4:	6105                	addi	sp,sp,32
    19e6:	8082                	ret
    19e8:	96a2                	add	a3,a3,s0
    19ea:	02d00793          	li	a5,45
    19ee:	00f68023          	sb	a5,0(a3)
    19f2:	0028869b          	addiw	a3,a7,2
    19f6:	b75d                	j	199c <itoa+0x3e>

00000000000019f8 <atoi>:
    19f8:	00054783          	lbu	a5,0(a0)
    19fc:	02000713          	li	a4,32
    1a00:	00e79763          	bne	a5,a4,1a0e <atoi+0x16>
    1a04:	0505                	addi	a0,a0,1
    1a06:	00054783          	lbu	a5,0(a0)
    1a0a:	fee78de3          	beq	a5,a4,1a04 <atoi+0xc>
    1a0e:	02b00713          	li	a4,43
    1a12:	04e78663          	beq	a5,a4,1a5e <atoi+0x66>
    1a16:	02d00713          	li	a4,45
    1a1a:	4805                	li	a6,1
    1a1c:	04e78463          	beq	a5,a4,1a64 <atoi+0x6c>
    1a20:	00054683          	lbu	a3,0(a0)
    1a24:	fd06879b          	addiw	a5,a3,-48
    1a28:	0ff7f793          	andi	a5,a5,255
    1a2c:	4725                	li	a4,9
    1a2e:	02f76e63          	bltu	a4,a5,1a6a <atoi+0x72>
    1a32:	4601                	li	a2,0
    1a34:	45a5                	li	a1,9
    1a36:	0505                	addi	a0,a0,1
    1a38:	0026179b          	slliw	a5,a2,0x2
    1a3c:	9fb1                	addw	a5,a5,a2
    1a3e:	0017979b          	slliw	a5,a5,0x1
    1a42:	9fb5                	addw	a5,a5,a3
    1a44:	fd07861b          	addiw	a2,a5,-48
    1a48:	00054683          	lbu	a3,0(a0)
    1a4c:	fd06871b          	addiw	a4,a3,-48
    1a50:	0ff77713          	andi	a4,a4,255
    1a54:	fee5f1e3          	bgeu	a1,a4,1a36 <atoi+0x3e>
    1a58:	02c8053b          	mulw	a0,a6,a2
    1a5c:	8082                	ret
    1a5e:	0505                	addi	a0,a0,1
    1a60:	4805                	li	a6,1
    1a62:	bf7d                	j	1a20 <atoi+0x28>
    1a64:	0505                	addi	a0,a0,1
    1a66:	587d                	li	a6,-1
    1a68:	bf65                	j	1a20 <atoi+0x28>
    1a6a:	4601                	li	a2,0
    1a6c:	b7f5                	j	1a58 <atoi+0x60>

0000000000001a6e <check_file_handle>:
    1a6e:	d8010113          	addi	sp,sp,-640
    1a72:	26113c23          	sd	ra,632(sp)
    1a76:	26813823          	sd	s0,624(sp)
    1a7a:	26913423          	sd	s1,616(sp)
    1a7e:	27213023          	sd	s2,608(sp)
    1a82:	25313c23          	sd	s3,600(sp)
    1a86:	25413823          	sd	s4,592(sp)
    1a8a:	25513423          	sd	s5,584(sp)
    1a8e:	25613023          	sd	s6,576(sp)
    1a92:	23713c23          	sd	s7,568(sp)
    1a96:	23813823          	sd	s8,560(sp)
    1a9a:	23913423          	sd	s9,552(sp)
    1a9e:	23a13023          	sd	s10,544(sp)
    1aa2:	21b13c23          	sd	s11,536(sp)
    1aa6:	8baa                	mv	s7,a0
    1aa8:	8a2e                	mv	s4,a1
    1aaa:	8c32                	mv	s8,a2
    1aac:	89b6                	mv	s3,a3
    1aae:	040c                	addi	a1,sp,512
    1ab0:	00000097          	auipc	ra,0x0
    1ab4:	28e080e7          	jalr	654(ra) # 1d3e <fstat>
    1ab8:	20813603          	ld	a2,520(sp)
    1abc:	03361163          	bne	a2,s3,1ade <check_file_handle+0x70>
    1ac0:	06098763          	beqz	s3,1b2e <check_file_handle+0xc0>
    1ac4:	4901                	li	s2,0
    1ac6:	20000a93          	li	s5,512
    1aca:	00002cb7          	lui	s9,0x2
    1ace:	00002db7          	lui	s11,0x2
    1ad2:	6b0d                	lui	s6,0x3
    1ad4:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1ad8:	00002d37          	lui	s10,0x2
    1adc:	aa39                	j	1bfa <check_file_handle+0x18c>
    1ade:	86ce                	mv	a3,s3
    1ae0:	85d2                	mv	a1,s4
    1ae2:	00002537          	lui	a0,0x2
    1ae6:	34050513          	addi	a0,a0,832 # 2340 <crctab+0x530>
    1aea:	00000097          	auipc	ra,0x0
    1aee:	942080e7          	jalr	-1726(ra) # 142c <printf>
    1af2:	fc0999e3          	bnez	s3,1ac4 <check_file_handle+0x56>
    1af6:	20813683          	ld	a3,520(sp)
    1afa:	03368a63          	beq	a3,s3,1b2e <check_file_handle+0xc0>
    1afe:	0a600813          	li	a6,166
    1b02:	000027b7          	lui	a5,0x2
    1b06:	21078793          	addi	a5,a5,528 # 2210 <crctab+0x400>
    1b0a:	874e                	mv	a4,s3
    1b0c:	8652                	mv	a2,s4
    1b0e:	000025b7          	lui	a1,0x2
    1b12:	41058593          	addi	a1,a1,1040 # 2410 <crctab+0x600>
    1b16:	4509                	li	a0,2
    1b18:	00000097          	auipc	ra,0x0
    1b1c:	8f2080e7          	jalr	-1806(ra) # 140a <fprintf>
    1b20:	650d                	lui	a0,0x3
    1b22:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b26:	00000097          	auipc	ra,0x0
    1b2a:	1c8080e7          	jalr	456(ra) # 1cee <exit>
    1b2e:	85d2                	mv	a1,s4
    1b30:	00002537          	lui	a0,0x2
    1b34:	45850513          	addi	a0,a0,1112 # 2458 <crctab+0x648>
    1b38:	00000097          	auipc	ra,0x0
    1b3c:	8f4080e7          	jalr	-1804(ra) # 142c <printf>
    1b40:	27813083          	ld	ra,632(sp)
    1b44:	27013403          	ld	s0,624(sp)
    1b48:	26813483          	ld	s1,616(sp)
    1b4c:	26013903          	ld	s2,608(sp)
    1b50:	25813983          	ld	s3,600(sp)
    1b54:	25013a03          	ld	s4,592(sp)
    1b58:	24813a83          	ld	s5,584(sp)
    1b5c:	24013b03          	ld	s6,576(sp)
    1b60:	23813b83          	ld	s7,568(sp)
    1b64:	23013c03          	ld	s8,560(sp)
    1b68:	22813c83          	ld	s9,552(sp)
    1b6c:	22013d03          	ld	s10,544(sp)
    1b70:	21813d83          	ld	s11,536(sp)
    1b74:	28010113          	addi	sp,sp,640
    1b78:	8082                	ret
    1b7a:	09d00893          	li	a7,157
    1b7e:	210c8813          	addi	a6,s9,528 # 2210 <crctab+0x400>
    1b82:	87aa                	mv	a5,a0
    1b84:	8752                	mv	a4,s4
    1b86:	86ca                	mv	a3,s2
    1b88:	8622                	mv	a2,s0
    1b8a:	370d8593          	addi	a1,s11,880 # 2370 <crctab+0x560>
    1b8e:	4509                	li	a0,2
    1b90:	00000097          	auipc	ra,0x0
    1b94:	87a080e7          	jalr	-1926(ra) # 140a <fprintf>
    1b98:	855a                	mv	a0,s6
    1b9a:	00000097          	auipc	ra,0x0
    1b9e:	154080e7          	jalr	340(ra) # 1cee <exit>
    1ba2:	a89d                	j	1c18 <check_file_handle+0x1aa>
    1ba4:	00160593          	addi	a1,a2,1
    1ba8:	0285f163          	bgeu	a1,s0,1bca <check_file_handle+0x15c>
    1bac:	00c10733          	add	a4,sp,a2
    1bb0:	00b487b3          	add	a5,s1,a1
    1bb4:	00174683          	lbu	a3,1(a4)
    1bb8:	0007c783          	lbu	a5,0(a5)
    1bbc:	00f68763          	beq	a3,a5,1bca <check_file_handle+0x15c>
    1bc0:	0585                	addi	a1,a1,1
    1bc2:	0705                	addi	a4,a4,1
    1bc4:	feb416e3          	bne	s0,a1,1bb0 <check_file_handle+0x142>
    1bc8:	85a2                	mv	a1,s0
    1bca:	08100813          	li	a6,129
    1bce:	210c8793          	addi	a5,s9,528
    1bd2:	8752                	mv	a4,s4
    1bd4:	012606b3          	add	a3,a2,s2
    1bd8:	40c58633          	sub	a2,a1,a2
    1bdc:	3b8d0593          	addi	a1,s10,952 # 23b8 <crctab+0x5a8>
    1be0:	4509                	li	a0,2
    1be2:	00000097          	auipc	ra,0x0
    1be6:	828080e7          	jalr	-2008(ra) # 140a <fprintf>
    1bea:	855a                	mv	a0,s6
    1bec:	00000097          	auipc	ra,0x0
    1bf0:	102080e7          	jalr	258(ra) # 1cee <exit>
    1bf4:	9922                	add	s2,s2,s0
    1bf6:	f13970e3          	bgeu	s2,s3,1af6 <check_file_handle+0x88>
    1bfa:	41298433          	sub	s0,s3,s2
    1bfe:	008af363          	bgeu	s5,s0,1c04 <check_file_handle+0x196>
    1c02:	8456                	mv	s0,s5
    1c04:	0004061b          	sext.w	a2,s0
    1c08:	858a                	mv	a1,sp
    1c0a:	855e                	mv	a0,s7
    1c0c:	00000097          	auipc	ra,0x0
    1c10:	10a080e7          	jalr	266(ra) # 1d16 <read>
    1c14:	f68513e3          	bne	a0,s0,1b7a <check_file_handle+0x10c>
    1c18:	012c04b3          	add	s1,s8,s2
    1c1c:	8622                	mv	a2,s0
    1c1e:	85a6                	mv	a1,s1
    1c20:	850a                	mv	a0,sp
    1c22:	00000097          	auipc	ra,0x0
    1c26:	bce080e7          	jalr	-1074(ra) # 17f0 <memcmp>
    1c2a:	d569                	beqz	a0,1bf4 <check_file_handle+0x186>
    1c2c:	03298163          	beq	s3,s2,1c4e <check_file_handle+0x1e0>
    1c30:	870a                	mv	a4,sp
    1c32:	4601                	li	a2,0
    1c34:	00c487b3          	add	a5,s1,a2
    1c38:	00074683          	lbu	a3,0(a4)
    1c3c:	0007c783          	lbu	a5,0(a5)
    1c40:	f6f692e3          	bne	a3,a5,1ba4 <check_file_handle+0x136>
    1c44:	0605                	addi	a2,a2,1
    1c46:	0705                	addi	a4,a4,1
    1c48:	fe8666e3          	bltu	a2,s0,1c34 <check_file_handle+0x1c6>
    1c4c:	bfa1                	j	1ba4 <check_file_handle+0x136>
    1c4e:	4601                	li	a2,0
    1c50:	4585                	li	a1,1
    1c52:	bfa5                	j	1bca <check_file_handle+0x15c>

0000000000001c54 <check_file>:
    1c54:	7179                	addi	sp,sp,-48
    1c56:	f406                	sd	ra,40(sp)
    1c58:	f022                	sd	s0,32(sp)
    1c5a:	ec26                	sd	s1,24(sp)
    1c5c:	e84a                	sd	s2,16(sp)
    1c5e:	e44e                	sd	s3,8(sp)
    1c60:	84aa                	mv	s1,a0
    1c62:	892e                	mv	s2,a1
    1c64:	89b2                	mv	s3,a2
    1c66:	4581                	li	a1,0
    1c68:	00000097          	auipc	ra,0x0
    1c6c:	0a6080e7          	jalr	166(ra) # 1d0e <open>
    1c70:	842a                	mv	s0,a0
    1c72:	4789                	li	a5,2
    1c74:	02a7df63          	bge	a5,a0,1cb2 <check_file+0x5e>
    1c78:	86ce                	mv	a3,s3
    1c7a:	864a                	mv	a2,s2
    1c7c:	85a6                	mv	a1,s1
    1c7e:	8522                	mv	a0,s0
    1c80:	00000097          	auipc	ra,0x0
    1c84:	dee080e7          	jalr	-530(ra) # 1a6e <check_file_handle>
    1c88:	85a6                	mv	a1,s1
    1c8a:	00002537          	lui	a0,0x2
    1c8e:	4e050513          	addi	a0,a0,1248 # 24e0 <crctab+0x6d0>
    1c92:	fffff097          	auipc	ra,0xfffff
    1c96:	79a080e7          	jalr	1946(ra) # 142c <printf>
    1c9a:	8522                	mv	a0,s0
    1c9c:	00000097          	auipc	ra,0x0
    1ca0:	09a080e7          	jalr	154(ra) # 1d36 <close>
    1ca4:	70a2                	ld	ra,40(sp)
    1ca6:	7402                	ld	s0,32(sp)
    1ca8:	64e2                	ld	s1,24(sp)
    1caa:	6942                	ld	s2,16(sp)
    1cac:	69a2                	ld	s3,8(sp)
    1cae:	6145                	addi	sp,sp,48
    1cb0:	8082                	ret
    1cb2:	0ae00713          	li	a4,174
    1cb6:	000026b7          	lui	a3,0x2
    1cba:	21068693          	addi	a3,a3,528 # 2210 <crctab+0x400>
    1cbe:	8626                	mv	a2,s1
    1cc0:	000025b7          	lui	a1,0x2
    1cc4:	47858593          	addi	a1,a1,1144 # 2478 <crctab+0x668>
    1cc8:	4509                	li	a0,2
    1cca:	fffff097          	auipc	ra,0xfffff
    1cce:	740080e7          	jalr	1856(ra) # 140a <fprintf>
    1cd2:	650d                	lui	a0,0x3
    1cd4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1cd8:	00000097          	auipc	ra,0x0
    1cdc:	016080e7          	jalr	22(ra) # 1cee <exit>
    1ce0:	bf61                	j	1c78 <check_file+0x24>

0000000000001ce2 <r_sp>:
    1ce2:	850a                	mv	a0,sp
    1ce4:	8082                	ret

0000000000001ce6 <halt>:
    1ce6:	4885                	li	a7,1
    1ce8:	00000073          	ecall
    1cec:	8082                	ret

0000000000001cee <exit>:
    1cee:	4889                	li	a7,2
    1cf0:	00000073          	ecall
    1cf4:	8082                	ret

0000000000001cf6 <exec>:
    1cf6:	488d                	li	a7,3
    1cf8:	00000073          	ecall
    1cfc:	8082                	ret

0000000000001cfe <wait>:
    1cfe:	4891                	li	a7,4
    1d00:	00000073          	ecall
    1d04:	8082                	ret

0000000000001d06 <remove>:
    1d06:	4895                	li	a7,5
    1d08:	00000073          	ecall
    1d0c:	8082                	ret

0000000000001d0e <open>:
    1d0e:	4899                	li	a7,6
    1d10:	00000073          	ecall
    1d14:	8082                	ret

0000000000001d16 <read>:
    1d16:	489d                	li	a7,7
    1d18:	00000073          	ecall
    1d1c:	8082                	ret

0000000000001d1e <write>:
    1d1e:	48a1                	li	a7,8
    1d20:	00000073          	ecall
    1d24:	8082                	ret

0000000000001d26 <seek>:
    1d26:	48a5                	li	a7,9
    1d28:	00000073          	ecall
    1d2c:	8082                	ret

0000000000001d2e <tell>:
    1d2e:	48a9                	li	a7,10
    1d30:	00000073          	ecall
    1d34:	8082                	ret

0000000000001d36 <close>:
    1d36:	48ad                	li	a7,11
    1d38:	00000073          	ecall
    1d3c:	8082                	ret

0000000000001d3e <fstat>:
    1d3e:	48b1                	li	a7,12
    1d40:	00000073          	ecall
    1d44:	8082                	ret

0000000000001d46 <mmap>:
    1d46:	48b5                	li	a7,13
    1d48:	00000073          	ecall
    1d4c:	8082                	ret

0000000000001d4e <munmap>:
    1d4e:	48b9                	li	a7,14
    1d50:	00000073          	ecall
    1d54:	8082                	ret

0000000000001d56 <chdir>:
    1d56:	48bd                	li	a7,15
    1d58:	00000073          	ecall
    1d5c:	8082                	ret

0000000000001d5e <mkdir>:
    1d5e:	48c1                	li	a7,16
    1d60:	00000073          	ecall
    1d64:	8082                	ret
