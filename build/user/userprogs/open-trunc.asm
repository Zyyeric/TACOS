
build/user/userprogs/open-trunc:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7139                	addi	sp,sp,-64
    1002:	fc06                	sd	ra,56(sp)
    1004:	f822                	sd	s0,48(sp)
    1006:	f426                	sd	s1,40(sp)
    1008:	60200593          	li	a1,1538
    100c:	00002537          	lui	a0,0x2
    1010:	d5050513          	addi	a0,a0,-688 # 1d50 <mkdir+0x8>
    1014:	00001097          	auipc	ra,0x1
    1018:	ce4080e7          	jalr	-796(ra) # 1cf8 <open>
    101c:	84aa                	mv	s1,a0
    101e:	4611                	li	a2,4
    1020:	000025b7          	lui	a1,0x2
    1024:	d6058593          	addi	a1,a1,-672 # 1d60 <mkdir+0x18>
    1028:	00001097          	auipc	ra,0x1
    102c:	ce0080e7          	jalr	-800(ra) # 1d08 <write>
    1030:	4791                	li	a5,4
    1032:	08f51463          	bne	a0,a5,10ba <main+0xba>
    1036:	40200593          	li	a1,1026
    103a:	00002537          	lui	a0,0x2
    103e:	d5050513          	addi	a0,a0,-688 # 1d50 <mkdir+0x8>
    1042:	00001097          	auipc	ra,0x1
    1046:	cb6080e7          	jalr	-842(ra) # 1cf8 <open>
    104a:	842a                	mv	s0,a0
    104c:	4619                	li	a2,6
    104e:	000025b7          	lui	a1,0x2
    1052:	dd058593          	addi	a1,a1,-560 # 1dd0 <mkdir+0x88>
    1056:	00001097          	auipc	ra,0x1
    105a:	cb2080e7          	jalr	-846(ra) # 1d08 <write>
    105e:	4799                	li	a5,6
    1060:	08f51363          	bne	a0,a5,10e6 <main+0xe6>
    1064:	4581                	li	a1,0
    1066:	8522                	mv	a0,s0
    1068:	00001097          	auipc	ra,0x1
    106c:	ca8080e7          	jalr	-856(ra) # 1d10 <seek>
    1070:	02000613          	li	a2,32
    1074:	858a                	mv	a1,sp
    1076:	8522                	mv	a0,s0
    1078:	00001097          	auipc	ra,0x1
    107c:	c88080e7          	jalr	-888(ra) # 1d00 <read>
    1080:	4799                	li	a5,6
    1082:	08f51863          	bne	a0,a5,1112 <main+0x112>
    1086:	02000613          	li	a2,32
    108a:	858a                	mv	a1,sp
    108c:	8526                	mv	a0,s1
    108e:	00001097          	auipc	ra,0x1
    1092:	c72080e7          	jalr	-910(ra) # 1d00 <read>
    1096:	4789                	li	a5,2
    1098:	0af51363          	bne	a0,a5,113e <main+0x13e>
    109c:	8526                	mv	a0,s1
    109e:	00001097          	auipc	ra,0x1
    10a2:	c82080e7          	jalr	-894(ra) # 1d20 <close>
    10a6:	8522                	mv	a0,s0
    10a8:	00001097          	auipc	ra,0x1
    10ac:	c78080e7          	jalr	-904(ra) # 1d20 <close>
    10b0:	70e2                	ld	ra,56(sp)
    10b2:	7442                	ld	s0,48(sp)
    10b4:	74a2                	ld	s1,40(sp)
    10b6:	6121                	addi	sp,sp,64
    10b8:	8082                	ret
    10ba:	46a5                	li	a3,9
    10bc:	00002637          	lui	a2,0x2
    10c0:	d6860613          	addi	a2,a2,-664 # 1d68 <mkdir+0x20>
    10c4:	000025b7          	lui	a1,0x2
    10c8:	d8858593          	addi	a1,a1,-632 # 1d88 <mkdir+0x40>
    10cc:	4509                	li	a0,2
    10ce:	00000097          	auipc	ra,0x0
    10d2:	326080e7          	jalr	806(ra) # 13f4 <fprintf>
    10d6:	650d                	lui	a0,0x3
    10d8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10dc:	00001097          	auipc	ra,0x1
    10e0:	bfc080e7          	jalr	-1028(ra) # 1cd8 <exit>
    10e4:	bf89                	j	1036 <main+0x36>
    10e6:	46b5                	li	a3,13
    10e8:	00002637          	lui	a2,0x2
    10ec:	d6860613          	addi	a2,a2,-664 # 1d68 <mkdir+0x20>
    10f0:	000025b7          	lui	a1,0x2
    10f4:	dd858593          	addi	a1,a1,-552 # 1dd8 <mkdir+0x90>
    10f8:	4509                	li	a0,2
    10fa:	00000097          	auipc	ra,0x0
    10fe:	2fa080e7          	jalr	762(ra) # 13f4 <fprintf>
    1102:	650d                	lui	a0,0x3
    1104:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1108:	00001097          	auipc	ra,0x1
    110c:	bd0080e7          	jalr	-1072(ra) # 1cd8 <exit>
    1110:	bf91                	j	1064 <main+0x64>
    1112:	46bd                	li	a3,15
    1114:	00002637          	lui	a2,0x2
    1118:	d6860613          	addi	a2,a2,-664 # 1d68 <mkdir+0x20>
    111c:	000025b7          	lui	a1,0x2
    1120:	e2058593          	addi	a1,a1,-480 # 1e20 <mkdir+0xd8>
    1124:	4509                	li	a0,2
    1126:	00000097          	auipc	ra,0x0
    112a:	2ce080e7          	jalr	718(ra) # 13f4 <fprintf>
    112e:	650d                	lui	a0,0x3
    1130:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1134:	00001097          	auipc	ra,0x1
    1138:	ba4080e7          	jalr	-1116(ra) # 1cd8 <exit>
    113c:	b7a9                	j	1086 <main+0x86>
    113e:	46c1                	li	a3,16
    1140:	00002637          	lui	a2,0x2
    1144:	d6860613          	addi	a2,a2,-664 # 1d68 <mkdir+0x20>
    1148:	000025b7          	lui	a1,0x2
    114c:	e7058593          	addi	a1,a1,-400 # 1e70 <mkdir+0x128>
    1150:	4509                	li	a0,2
    1152:	00000097          	auipc	ra,0x0
    1156:	2a2080e7          	jalr	674(ra) # 13f4 <fprintf>
    115a:	650d                	lui	a0,0x3
    115c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1160:	00001097          	auipc	ra,0x1
    1164:	b78080e7          	jalr	-1160(ra) # 1cd8 <exit>
    1168:	bf15                	j	109c <main+0x9c>

000000000000116a <putc>:
    116a:	1101                	addi	sp,sp,-32
    116c:	ec06                	sd	ra,24(sp)
    116e:	00b107a3          	sb	a1,15(sp)
    1172:	4605                	li	a2,1
    1174:	00f10593          	addi	a1,sp,15
    1178:	00001097          	auipc	ra,0x1
    117c:	b90080e7          	jalr	-1136(ra) # 1d08 <write>
    1180:	60e2                	ld	ra,24(sp)
    1182:	6105                	addi	sp,sp,32
    1184:	8082                	ret

0000000000001186 <printint>:
    1186:	7179                	addi	sp,sp,-48
    1188:	f406                	sd	ra,40(sp)
    118a:	f022                	sd	s0,32(sp)
    118c:	ec26                	sd	s1,24(sp)
    118e:	e84a                	sd	s2,16(sp)
    1190:	84aa                	mv	s1,a0
    1192:	c299                	beqz	a3,1198 <printint+0x12>
    1194:	0805c363          	bltz	a1,121a <printint+0x94>
    1198:	2581                	sext.w	a1,a1
    119a:	4881                	li	a7,0
    119c:	868a                	mv	a3,sp
    119e:	4701                	li	a4,0
    11a0:	2601                	sext.w	a2,a2
    11a2:	00002537          	lui	a0,0x2
    11a6:	ec850513          	addi	a0,a0,-312 # 1ec8 <digits>
    11aa:	883a                	mv	a6,a4
    11ac:	2705                	addiw	a4,a4,1
    11ae:	02c5f7bb          	remuw	a5,a1,a2
    11b2:	1782                	slli	a5,a5,0x20
    11b4:	9381                	srli	a5,a5,0x20
    11b6:	97aa                	add	a5,a5,a0
    11b8:	0007c783          	lbu	a5,0(a5)
    11bc:	00f68023          	sb	a5,0(a3)
    11c0:	0005879b          	sext.w	a5,a1
    11c4:	02c5d5bb          	divuw	a1,a1,a2
    11c8:	0685                	addi	a3,a3,1
    11ca:	fec7f0e3          	bgeu	a5,a2,11aa <printint+0x24>
    11ce:	00088a63          	beqz	a7,11e2 <printint+0x5c>
    11d2:	081c                	addi	a5,sp,16
    11d4:	973e                	add	a4,a4,a5
    11d6:	02d00793          	li	a5,45
    11da:	fef70823          	sb	a5,-16(a4)
    11de:	0028071b          	addiw	a4,a6,2
    11e2:	02e05663          	blez	a4,120e <printint+0x88>
    11e6:	00e10433          	add	s0,sp,a4
    11ea:	fff10913          	addi	s2,sp,-1
    11ee:	993a                	add	s2,s2,a4
    11f0:	377d                	addiw	a4,a4,-1
    11f2:	1702                	slli	a4,a4,0x20
    11f4:	9301                	srli	a4,a4,0x20
    11f6:	40e90933          	sub	s2,s2,a4
    11fa:	fff44583          	lbu	a1,-1(s0)
    11fe:	8526                	mv	a0,s1
    1200:	00000097          	auipc	ra,0x0
    1204:	f6a080e7          	jalr	-150(ra) # 116a <putc>
    1208:	147d                	addi	s0,s0,-1
    120a:	ff2418e3          	bne	s0,s2,11fa <printint+0x74>
    120e:	70a2                	ld	ra,40(sp)
    1210:	7402                	ld	s0,32(sp)
    1212:	64e2                	ld	s1,24(sp)
    1214:	6942                	ld	s2,16(sp)
    1216:	6145                	addi	sp,sp,48
    1218:	8082                	ret
    121a:	40b005bb          	negw	a1,a1
    121e:	4885                	li	a7,1
    1220:	bfb5                	j	119c <printint+0x16>

0000000000001222 <vprintf>:
    1222:	7159                	addi	sp,sp,-112
    1224:	f486                	sd	ra,104(sp)
    1226:	f0a2                	sd	s0,96(sp)
    1228:	eca6                	sd	s1,88(sp)
    122a:	e8ca                	sd	s2,80(sp)
    122c:	e4ce                	sd	s3,72(sp)
    122e:	e0d2                	sd	s4,64(sp)
    1230:	fc56                	sd	s5,56(sp)
    1232:	f85a                	sd	s6,48(sp)
    1234:	f45e                	sd	s7,40(sp)
    1236:	f062                	sd	s8,32(sp)
    1238:	ec66                	sd	s9,24(sp)
    123a:	e86a                	sd	s10,16(sp)
    123c:	e46e                	sd	s11,8(sp)
    123e:	0005c483          	lbu	s1,0(a1)
    1242:	18048a63          	beqz	s1,13d6 <vprintf+0x1b4>
    1246:	8a2a                	mv	s4,a0
    1248:	8ab2                	mv	s5,a2
    124a:	00158413          	addi	s0,a1,1
    124e:	4901                	li	s2,0
    1250:	02500993          	li	s3,37
    1254:	06400b93          	li	s7,100
    1258:	06c00c13          	li	s8,108
    125c:	07800c93          	li	s9,120
    1260:	07000d13          	li	s10,112
    1264:	00002db7          	lui	s11,0x2
    1268:	00002b37          	lui	s6,0x2
    126c:	ec8b0b13          	addi	s6,s6,-312 # 1ec8 <digits>
    1270:	a839                	j	128e <vprintf+0x6c>
    1272:	85a6                	mv	a1,s1
    1274:	8552                	mv	a0,s4
    1276:	00000097          	auipc	ra,0x0
    127a:	ef4080e7          	jalr	-268(ra) # 116a <putc>
    127e:	a019                	j	1284 <vprintf+0x62>
    1280:	01390f63          	beq	s2,s3,129e <vprintf+0x7c>
    1284:	0405                	addi	s0,s0,1
    1286:	fff44483          	lbu	s1,-1(s0)
    128a:	14048663          	beqz	s1,13d6 <vprintf+0x1b4>
    128e:	0004879b          	sext.w	a5,s1
    1292:	fe0917e3          	bnez	s2,1280 <vprintf+0x5e>
    1296:	fd379ee3          	bne	a5,s3,1272 <vprintf+0x50>
    129a:	893e                	mv	s2,a5
    129c:	b7e5                	j	1284 <vprintf+0x62>
    129e:	05778063          	beq	a5,s7,12de <vprintf+0xbc>
    12a2:	05878c63          	beq	a5,s8,12fa <vprintf+0xd8>
    12a6:	07978863          	beq	a5,s9,1316 <vprintf+0xf4>
    12aa:	09a78463          	beq	a5,s10,1332 <vprintf+0x110>
    12ae:	07300713          	li	a4,115
    12b2:	0ce78263          	beq	a5,a4,1376 <vprintf+0x154>
    12b6:	06300713          	li	a4,99
    12ba:	0ee78763          	beq	a5,a4,13a8 <vprintf+0x186>
    12be:	11378163          	beq	a5,s3,13c0 <vprintf+0x19e>
    12c2:	85ce                	mv	a1,s3
    12c4:	8552                	mv	a0,s4
    12c6:	00000097          	auipc	ra,0x0
    12ca:	ea4080e7          	jalr	-348(ra) # 116a <putc>
    12ce:	85a6                	mv	a1,s1
    12d0:	8552                	mv	a0,s4
    12d2:	00000097          	auipc	ra,0x0
    12d6:	e98080e7          	jalr	-360(ra) # 116a <putc>
    12da:	4901                	li	s2,0
    12dc:	b765                	j	1284 <vprintf+0x62>
    12de:	008a8493          	addi	s1,s5,8
    12e2:	4685                	li	a3,1
    12e4:	4629                	li	a2,10
    12e6:	000aa583          	lw	a1,0(s5)
    12ea:	8552                	mv	a0,s4
    12ec:	00000097          	auipc	ra,0x0
    12f0:	e9a080e7          	jalr	-358(ra) # 1186 <printint>
    12f4:	8aa6                	mv	s5,s1
    12f6:	4901                	li	s2,0
    12f8:	b771                	j	1284 <vprintf+0x62>
    12fa:	008a8493          	addi	s1,s5,8
    12fe:	4681                	li	a3,0
    1300:	4629                	li	a2,10
    1302:	000aa583          	lw	a1,0(s5)
    1306:	8552                	mv	a0,s4
    1308:	00000097          	auipc	ra,0x0
    130c:	e7e080e7          	jalr	-386(ra) # 1186 <printint>
    1310:	8aa6                	mv	s5,s1
    1312:	4901                	li	s2,0
    1314:	bf85                	j	1284 <vprintf+0x62>
    1316:	008a8493          	addi	s1,s5,8
    131a:	4681                	li	a3,0
    131c:	4641                	li	a2,16
    131e:	000aa583          	lw	a1,0(s5)
    1322:	8552                	mv	a0,s4
    1324:	00000097          	auipc	ra,0x0
    1328:	e62080e7          	jalr	-414(ra) # 1186 <printint>
    132c:	8aa6                	mv	s5,s1
    132e:	4901                	li	s2,0
    1330:	bf91                	j	1284 <vprintf+0x62>
    1332:	008a8913          	addi	s2,s5,8
    1336:	000aba83          	ld	s5,0(s5)
    133a:	03000593          	li	a1,48
    133e:	8552                	mv	a0,s4
    1340:	00000097          	auipc	ra,0x0
    1344:	e2a080e7          	jalr	-470(ra) # 116a <putc>
    1348:	85e6                	mv	a1,s9
    134a:	8552                	mv	a0,s4
    134c:	00000097          	auipc	ra,0x0
    1350:	e1e080e7          	jalr	-482(ra) # 116a <putc>
    1354:	44c1                	li	s1,16
    1356:	03cad793          	srli	a5,s5,0x3c
    135a:	97da                	add	a5,a5,s6
    135c:	0007c583          	lbu	a1,0(a5)
    1360:	8552                	mv	a0,s4
    1362:	00000097          	auipc	ra,0x0
    1366:	e08080e7          	jalr	-504(ra) # 116a <putc>
    136a:	0a92                	slli	s5,s5,0x4
    136c:	34fd                	addiw	s1,s1,-1
    136e:	f4e5                	bnez	s1,1356 <vprintf+0x134>
    1370:	8aca                	mv	s5,s2
    1372:	4901                	li	s2,0
    1374:	bf01                	j	1284 <vprintf+0x62>
    1376:	008a8913          	addi	s2,s5,8
    137a:	000ab483          	ld	s1,0(s5)
    137e:	c085                	beqz	s1,139e <vprintf+0x17c>
    1380:	0004c583          	lbu	a1,0(s1)
    1384:	c5b1                	beqz	a1,13d0 <vprintf+0x1ae>
    1386:	8552                	mv	a0,s4
    1388:	00000097          	auipc	ra,0x0
    138c:	de2080e7          	jalr	-542(ra) # 116a <putc>
    1390:	0485                	addi	s1,s1,1
    1392:	0004c583          	lbu	a1,0(s1)
    1396:	f9e5                	bnez	a1,1386 <vprintf+0x164>
    1398:	8aca                	mv	s5,s2
    139a:	4901                	li	s2,0
    139c:	b5e5                	j	1284 <vprintf+0x62>
    139e:	ec0d8493          	addi	s1,s11,-320 # 1ec0 <mkdir+0x178>
    13a2:	02800593          	li	a1,40
    13a6:	b7c5                	j	1386 <vprintf+0x164>
    13a8:	008a8493          	addi	s1,s5,8
    13ac:	000ac583          	lbu	a1,0(s5)
    13b0:	8552                	mv	a0,s4
    13b2:	00000097          	auipc	ra,0x0
    13b6:	db8080e7          	jalr	-584(ra) # 116a <putc>
    13ba:	8aa6                	mv	s5,s1
    13bc:	4901                	li	s2,0
    13be:	b5d9                	j	1284 <vprintf+0x62>
    13c0:	85ce                	mv	a1,s3
    13c2:	8552                	mv	a0,s4
    13c4:	00000097          	auipc	ra,0x0
    13c8:	da6080e7          	jalr	-602(ra) # 116a <putc>
    13cc:	4901                	li	s2,0
    13ce:	bd5d                	j	1284 <vprintf+0x62>
    13d0:	8aca                	mv	s5,s2
    13d2:	4901                	li	s2,0
    13d4:	bd45                	j	1284 <vprintf+0x62>
    13d6:	70a6                	ld	ra,104(sp)
    13d8:	7406                	ld	s0,96(sp)
    13da:	64e6                	ld	s1,88(sp)
    13dc:	6946                	ld	s2,80(sp)
    13de:	69a6                	ld	s3,72(sp)
    13e0:	6a06                	ld	s4,64(sp)
    13e2:	7ae2                	ld	s5,56(sp)
    13e4:	7b42                	ld	s6,48(sp)
    13e6:	7ba2                	ld	s7,40(sp)
    13e8:	7c02                	ld	s8,32(sp)
    13ea:	6ce2                	ld	s9,24(sp)
    13ec:	6d42                	ld	s10,16(sp)
    13ee:	6da2                	ld	s11,8(sp)
    13f0:	6165                	addi	sp,sp,112
    13f2:	8082                	ret

00000000000013f4 <fprintf>:
    13f4:	715d                	addi	sp,sp,-80
    13f6:	ec06                	sd	ra,24(sp)
    13f8:	f032                	sd	a2,32(sp)
    13fa:	f436                	sd	a3,40(sp)
    13fc:	f83a                	sd	a4,48(sp)
    13fe:	fc3e                	sd	a5,56(sp)
    1400:	e0c2                	sd	a6,64(sp)
    1402:	e4c6                	sd	a7,72(sp)
    1404:	1010                	addi	a2,sp,32
    1406:	e432                	sd	a2,8(sp)
    1408:	00000097          	auipc	ra,0x0
    140c:	e1a080e7          	jalr	-486(ra) # 1222 <vprintf>
    1410:	60e2                	ld	ra,24(sp)
    1412:	6161                	addi	sp,sp,80
    1414:	8082                	ret

0000000000001416 <printf>:
    1416:	711d                	addi	sp,sp,-96
    1418:	ec06                	sd	ra,24(sp)
    141a:	f42e                	sd	a1,40(sp)
    141c:	f832                	sd	a2,48(sp)
    141e:	fc36                	sd	a3,56(sp)
    1420:	e0ba                	sd	a4,64(sp)
    1422:	e4be                	sd	a5,72(sp)
    1424:	e8c2                	sd	a6,80(sp)
    1426:	ecc6                	sd	a7,88(sp)
    1428:	1030                	addi	a2,sp,40
    142a:	e432                	sd	a2,8(sp)
    142c:	85aa                	mv	a1,a0
    142e:	4505                	li	a0,1
    1430:	00000097          	auipc	ra,0x0
    1434:	df2080e7          	jalr	-526(ra) # 1222 <vprintf>
    1438:	60e2                	ld	ra,24(sp)
    143a:	6125                	addi	sp,sp,96
    143c:	8082                	ret

000000000000143e <cksum>:
    143e:	cdb1                	beqz	a1,149a <cksum+0x5c>
    1440:	00b50833          	add	a6,a0,a1
    1444:	4781                	li	a5,0
    1446:	00002637          	lui	a2,0x2
    144a:	ee060613          	addi	a2,a2,-288 # 1ee0 <crctab>
    144e:	0505                	addi	a0,a0,1
    1450:	0087969b          	slliw	a3,a5,0x8
    1454:	0187d71b          	srliw	a4,a5,0x18
    1458:	fff54783          	lbu	a5,-1(a0)
    145c:	8f3d                	xor	a4,a4,a5
    145e:	1702                	slli	a4,a4,0x20
    1460:	9301                	srli	a4,a4,0x20
    1462:	070a                	slli	a4,a4,0x2
    1464:	9732                	add	a4,a4,a2
    1466:	431c                	lw	a5,0(a4)
    1468:	8fb5                	xor	a5,a5,a3
    146a:	2781                	sext.w	a5,a5
    146c:	fea811e3          	bne	a6,a0,144e <cksum+0x10>
    1470:	00002637          	lui	a2,0x2
    1474:	ee060613          	addi	a2,a2,-288 # 1ee0 <crctab>
    1478:	0ff5f693          	andi	a3,a1,255
    147c:	81a1                	srli	a1,a1,0x8
    147e:	0087951b          	slliw	a0,a5,0x8
    1482:	0187d71b          	srliw	a4,a5,0x18
    1486:	8f35                	xor	a4,a4,a3
    1488:	070a                	slli	a4,a4,0x2
    148a:	9732                	add	a4,a4,a2
    148c:	431c                	lw	a5,0(a4)
    148e:	8fa9                	xor	a5,a5,a0
    1490:	2781                	sext.w	a5,a5
    1492:	f1fd                	bnez	a1,1478 <cksum+0x3a>
    1494:	fff7c513          	not	a0,a5
    1498:	8082                	ret
    149a:	4781                	li	a5,0
    149c:	bfe5                	j	1494 <cksum+0x56>

000000000000149e <swap_bytes>:
    149e:	ce19                	beqz	a2,14bc <swap_bytes+0x1e>
    14a0:	87aa                	mv	a5,a0
    14a2:	962a                	add	a2,a2,a0
    14a4:	0007c703          	lbu	a4,0(a5)
    14a8:	0005c683          	lbu	a3,0(a1)
    14ac:	00d78023          	sb	a3,0(a5)
    14b0:	00e58023          	sb	a4,0(a1)
    14b4:	0785                	addi	a5,a5,1
    14b6:	0585                	addi	a1,a1,1
    14b8:	fec796e3          	bne	a5,a2,14a4 <swap_bytes+0x6>
    14bc:	8082                	ret

00000000000014be <random_init>:
    14be:	7139                	addi	sp,sp,-64
    14c0:	fc06                	sd	ra,56(sp)
    14c2:	f822                	sd	s0,48(sp)
    14c4:	f426                	sd	s1,40(sp)
    14c6:	f04a                	sd	s2,32(sp)
    14c8:	ec4e                	sd	s3,24(sp)
    14ca:	e852                	sd	s4,16(sp)
    14cc:	c62a                	sw	a0,12(sp)
    14ce:	000037b7          	lui	a5,0x3
    14d2:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    14d6:	eca5                	bnez	s1,154e <random_init+0x90>
    14d8:	00003737          	lui	a4,0x3
    14dc:	01070913          	addi	s2,a4,16 # 3010 <s>
    14e0:	01070713          	addi	a4,a4,16
    14e4:	87a6                	mv	a5,s1
    14e6:	10000693          	li	a3,256
    14ea:	00f70023          	sb	a5,0(a4)
    14ee:	2785                	addiw	a5,a5,1
    14f0:	0705                	addi	a4,a4,1
    14f2:	fed79ce3          	bne	a5,a3,14ea <random_init+0x2c>
    14f6:	4401                	li	s0,0
    14f8:	000039b7          	lui	s3,0x3
    14fc:	01098993          	addi	s3,s3,16 # 3010 <s>
    1500:	10000a13          	li	s4,256
    1504:	0034f793          	andi	a5,s1,3
    1508:	0818                	addi	a4,sp,16
    150a:	97ba                	add	a5,a5,a4
    150c:	ffc7c783          	lbu	a5,-4(a5)
    1510:	00094703          	lbu	a4,0(s2)
    1514:	9fb9                	addw	a5,a5,a4
    1516:	9c3d                	addw	s0,s0,a5
    1518:	0ff47413          	andi	s0,s0,255
    151c:	4605                	li	a2,1
    151e:	008985b3          	add	a1,s3,s0
    1522:	854a                	mv	a0,s2
    1524:	00000097          	auipc	ra,0x0
    1528:	f7a080e7          	jalr	-134(ra) # 149e <swap_bytes>
    152c:	2485                	addiw	s1,s1,1
    152e:	0905                	addi	s2,s2,1
    1530:	fd449ae3          	bne	s1,s4,1504 <random_init+0x46>
    1534:	000037b7          	lui	a5,0x3
    1538:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    153c:	000037b7          	lui	a5,0x3
    1540:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1544:	000037b7          	lui	a5,0x3
    1548:	4705                	li	a4,1
    154a:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    154e:	70e2                	ld	ra,56(sp)
    1550:	7442                	ld	s0,48(sp)
    1552:	74a2                	ld	s1,40(sp)
    1554:	7902                	ld	s2,32(sp)
    1556:	69e2                	ld	s3,24(sp)
    1558:	6a42                	ld	s4,16(sp)
    155a:	6121                	addi	sp,sp,64
    155c:	8082                	ret

000000000000155e <random_bytes>:
    155e:	7139                	addi	sp,sp,-64
    1560:	fc06                	sd	ra,56(sp)
    1562:	f822                	sd	s0,48(sp)
    1564:	f426                	sd	s1,40(sp)
    1566:	f04a                	sd	s2,32(sp)
    1568:	ec4e                	sd	s3,24(sp)
    156a:	e852                	sd	s4,16(sp)
    156c:	e456                	sd	s5,8(sp)
    156e:	e05a                	sd	s6,0(sp)
    1570:	892a                	mv	s2,a0
    1572:	8aae                	mv	s5,a1
    1574:	000037b7          	lui	a5,0x3
    1578:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    157c:	c3c1                	beqz	a5,15fc <random_bytes+0x9e>
    157e:	060a8563          	beqz	s5,15e8 <random_bytes+0x8a>
    1582:	9aca                	add	s5,s5,s2
    1584:	00003a37          	lui	s4,0x3
    1588:	000034b7          	lui	s1,0x3
    158c:	01048493          	addi	s1,s1,16 # 3010 <s>
    1590:	000039b7          	lui	s3,0x3
    1594:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1598:	2505                	addiw	a0,a0,1
    159a:	0ff57513          	andi	a0,a0,255
    159e:	00aa02a3          	sb	a0,5(s4)
    15a2:	00a48b33          	add	s6,s1,a0
    15a6:	000b4403          	lbu	s0,0(s6)
    15aa:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    15ae:	9c3d                	addw	s0,s0,a5
    15b0:	0ff47413          	andi	s0,s0,255
    15b4:	00898223          	sb	s0,4(s3)
    15b8:	4605                	li	a2,1
    15ba:	008485b3          	add	a1,s1,s0
    15be:	855a                	mv	a0,s6
    15c0:	00000097          	auipc	ra,0x0
    15c4:	ede080e7          	jalr	-290(ra) # 149e <swap_bytes>
    15c8:	9426                	add	s0,s0,s1
    15ca:	000b4783          	lbu	a5,0(s6)
    15ce:	00044703          	lbu	a4,0(s0)
    15d2:	9fb9                	addw	a5,a5,a4
    15d4:	0ff7f793          	andi	a5,a5,255
    15d8:	97a6                	add	a5,a5,s1
    15da:	0007c783          	lbu	a5,0(a5)
    15de:	00f90023          	sb	a5,0(s2)
    15e2:	0905                	addi	s2,s2,1
    15e4:	fb2a98e3          	bne	s5,s2,1594 <random_bytes+0x36>
    15e8:	70e2                	ld	ra,56(sp)
    15ea:	7442                	ld	s0,48(sp)
    15ec:	74a2                	ld	s1,40(sp)
    15ee:	7902                	ld	s2,32(sp)
    15f0:	69e2                	ld	s3,24(sp)
    15f2:	6a42                	ld	s4,16(sp)
    15f4:	6aa2                	ld	s5,8(sp)
    15f6:	6b02                	ld	s6,0(sp)
    15f8:	6121                	addi	sp,sp,64
    15fa:	8082                	ret
    15fc:	4501                	li	a0,0
    15fe:	00000097          	auipc	ra,0x0
    1602:	ec0080e7          	jalr	-320(ra) # 14be <random_init>
    1606:	bfa5                	j	157e <random_bytes+0x20>

0000000000001608 <random_ulong>:
    1608:	1101                	addi	sp,sp,-32
    160a:	ec06                	sd	ra,24(sp)
    160c:	45a1                	li	a1,8
    160e:	0028                	addi	a0,sp,8
    1610:	00000097          	auipc	ra,0x0
    1614:	f4e080e7          	jalr	-178(ra) # 155e <random_bytes>
    1618:	6522                	ld	a0,8(sp)
    161a:	60e2                	ld	ra,24(sp)
    161c:	6105                	addi	sp,sp,32
    161e:	8082                	ret

0000000000001620 <shuffle>:
    1620:	c9b9                	beqz	a1,1676 <shuffle+0x56>
    1622:	7179                	addi	sp,sp,-48
    1624:	f406                	sd	ra,40(sp)
    1626:	f022                	sd	s0,32(sp)
    1628:	ec26                	sd	s1,24(sp)
    162a:	e84a                	sd	s2,16(sp)
    162c:	e44e                	sd	s3,8(sp)
    162e:	e052                	sd	s4,0(sp)
    1630:	8a2a                	mv	s4,a0
    1632:	89ae                	mv	s3,a1
    1634:	84b2                	mv	s1,a2
    1636:	892a                	mv	s2,a0
    1638:	4401                	li	s0,0
    163a:	00000097          	auipc	ra,0x0
    163e:	fce080e7          	jalr	-50(ra) # 1608 <random_ulong>
    1642:	408985b3          	sub	a1,s3,s0
    1646:	02b575b3          	remu	a1,a0,a1
    164a:	95a2                	add	a1,a1,s0
    164c:	029585b3          	mul	a1,a1,s1
    1650:	8626                	mv	a2,s1
    1652:	95d2                	add	a1,a1,s4
    1654:	854a                	mv	a0,s2
    1656:	00000097          	auipc	ra,0x0
    165a:	e48080e7          	jalr	-440(ra) # 149e <swap_bytes>
    165e:	0405                	addi	s0,s0,1
    1660:	9926                	add	s2,s2,s1
    1662:	fc899ce3          	bne	s3,s0,163a <shuffle+0x1a>
    1666:	70a2                	ld	ra,40(sp)
    1668:	7402                	ld	s0,32(sp)
    166a:	64e2                	ld	s1,24(sp)
    166c:	6942                	ld	s2,16(sp)
    166e:	69a2                	ld	s3,8(sp)
    1670:	6a02                	ld	s4,0(sp)
    1672:	6145                	addi	sp,sp,48
    1674:	8082                	ret
    1676:	8082                	ret

0000000000001678 <arc4_init>:
    1678:	100500a3          	sb	zero,257(a0)
    167c:	10050023          	sb	zero,256(a0)
    1680:	4781                	li	a5,0
    1682:	10000693          	li	a3,256
    1686:	00f50733          	add	a4,a0,a5
    168a:	00f70023          	sb	a5,0(a4)
    168e:	0785                	addi	a5,a5,1
    1690:	fed79be3          	bne	a5,a3,1686 <arc4_init+0xe>
    1694:	86aa                	mv	a3,a0
    1696:	10050e13          	addi	t3,a0,256
    169a:	4701                	li	a4,0
    169c:	4781                	li	a5,0
    169e:	0006c883          	lbu	a7,0(a3)
    16a2:	00f58833          	add	a6,a1,a5
    16a6:	00084803          	lbu	a6,0(a6)
    16aa:	00e8873b          	addw	a4,a7,a4
    16ae:	00e8073b          	addw	a4,a6,a4
    16b2:	0ff77713          	andi	a4,a4,255
    16b6:	00e50833          	add	a6,a0,a4
    16ba:	00084303          	lbu	t1,0(a6)
    16be:	00668023          	sb	t1,0(a3)
    16c2:	01180023          	sb	a7,0(a6)
    16c6:	0785                	addi	a5,a5,1
    16c8:	00c7b833          	sltu	a6,a5,a2
    16cc:	41000833          	neg	a6,a6
    16d0:	0107f7b3          	and	a5,a5,a6
    16d4:	0685                	addi	a3,a3,1
    16d6:	fdc694e3          	bne	a3,t3,169e <arc4_init+0x26>
    16da:	8082                	ret

00000000000016dc <arc4_crypt>:
    16dc:	10054e03          	lbu	t3,256(a0)
    16e0:	10154803          	lbu	a6,257(a0)
    16e4:	fff60e93          	addi	t4,a2,-1
    16e8:	c225                	beqz	a2,1748 <arc4_crypt+0x6c>
    16ea:	00c588b3          	add	a7,a1,a2
    16ee:	86ae                	mv	a3,a1
    16f0:	001e031b          	addiw	t1,t3,1
    16f4:	40b3033b          	subw	t1,t1,a1
    16f8:	00d3073b          	addw	a4,t1,a3
    16fc:	0ff77713          	andi	a4,a4,255
    1700:	972a                	add	a4,a4,a0
    1702:	00074603          	lbu	a2,0(a4)
    1706:	0106083b          	addw	a6,a2,a6
    170a:	0ff87813          	andi	a6,a6,255
    170e:	010507b3          	add	a5,a0,a6
    1712:	0007c583          	lbu	a1,0(a5)
    1716:	00b70023          	sb	a1,0(a4)
    171a:	00c78023          	sb	a2,0(a5)
    171e:	0685                	addi	a3,a3,1
    1720:	00074783          	lbu	a5,0(a4)
    1724:	9fb1                	addw	a5,a5,a2
    1726:	0ff7f793          	andi	a5,a5,255
    172a:	97aa                	add	a5,a5,a0
    172c:	0007c783          	lbu	a5,0(a5)
    1730:	fff6c703          	lbu	a4,-1(a3)
    1734:	8fb9                	xor	a5,a5,a4
    1736:	fef68fa3          	sb	a5,-1(a3)
    173a:	fb169fe3          	bne	a3,a7,16f8 <arc4_crypt+0x1c>
    173e:	2e85                	addiw	t4,t4,1
    1740:	01ce8e3b          	addw	t3,t4,t3
    1744:	0ffe7e13          	andi	t3,t3,255
    1748:	11c50023          	sb	t3,256(a0)
    174c:	110500a3          	sb	a6,257(a0)
    1750:	8082                	ret

0000000000001752 <_main>:
    1752:	1141                	addi	sp,sp,-16
    1754:	e406                	sd	ra,8(sp)
    1756:	00000097          	auipc	ra,0x0
    175a:	8aa080e7          	jalr	-1878(ra) # 1000 <main>
    175e:	4501                	li	a0,0
    1760:	00000097          	auipc	ra,0x0
    1764:	578080e7          	jalr	1400(ra) # 1cd8 <exit>
    1768:	60a2                	ld	ra,8(sp)
    176a:	0141                	addi	sp,sp,16
    176c:	8082                	ret

000000000000176e <strcmp>:
    176e:	00054783          	lbu	a5,0(a0)
    1772:	cb91                	beqz	a5,1786 <strcmp+0x18>
    1774:	0005c703          	lbu	a4,0(a1)
    1778:	00f71763          	bne	a4,a5,1786 <strcmp+0x18>
    177c:	0505                	addi	a0,a0,1
    177e:	0585                	addi	a1,a1,1
    1780:	00054783          	lbu	a5,0(a0)
    1784:	fbe5                	bnez	a5,1774 <strcmp+0x6>
    1786:	0005c503          	lbu	a0,0(a1)
    178a:	40a7853b          	subw	a0,a5,a0
    178e:	8082                	ret

0000000000001790 <strcpy>:
    1790:	87aa                	mv	a5,a0
    1792:	0585                	addi	a1,a1,1
    1794:	0785                	addi	a5,a5,1
    1796:	fff5c703          	lbu	a4,-1(a1)
    179a:	fee78fa3          	sb	a4,-1(a5)
    179e:	fb75                	bnez	a4,1792 <strcpy+0x2>
    17a0:	8082                	ret

00000000000017a2 <strlen>:
    17a2:	00054783          	lbu	a5,0(a0)
    17a6:	cf81                	beqz	a5,17be <strlen+0x1c>
    17a8:	0505                	addi	a0,a0,1
    17aa:	87aa                	mv	a5,a0
    17ac:	4685                	li	a3,1
    17ae:	9e89                	subw	a3,a3,a0
    17b0:	00f6853b          	addw	a0,a3,a5
    17b4:	0785                	addi	a5,a5,1
    17b6:	fff7c703          	lbu	a4,-1(a5)
    17ba:	fb7d                	bnez	a4,17b0 <strlen+0xe>
    17bc:	8082                	ret
    17be:	4501                	li	a0,0
    17c0:	8082                	ret

00000000000017c2 <memset>:
    17c2:	ca19                	beqz	a2,17d8 <memset+0x16>
    17c4:	87aa                	mv	a5,a0
    17c6:	1602                	slli	a2,a2,0x20
    17c8:	9201                	srli	a2,a2,0x20
    17ca:	00a60733          	add	a4,a2,a0
    17ce:	00b78023          	sb	a1,0(a5)
    17d2:	0785                	addi	a5,a5,1
    17d4:	fee79de3          	bne	a5,a4,17ce <memset+0xc>
    17d8:	8082                	ret

00000000000017da <memcmp>:
    17da:	1101                	addi	sp,sp,-32
    17dc:	ec06                	sd	ra,24(sp)
    17de:	e822                	sd	s0,16(sp)
    17e0:	e426                	sd	s1,8(sp)
    17e2:	e04a                	sd	s2,0(sp)
    17e4:	892a                	mv	s2,a0
    17e6:	842e                	mv	s0,a1
    17e8:	84b2                	mv	s1,a2
    17ea:	c915                	beqz	a0,181e <memcmp+0x44>
    17ec:	c5ad                	beqz	a1,1856 <memcmp+0x7c>
    17ee:	fff60713          	addi	a4,a2,-1
    17f2:	c645                	beqz	a2,189a <memcmp+0xc0>
    17f4:	87ca                	mv	a5,s2
    17f6:	00190613          	addi	a2,s2,1
    17fa:	963a                	add	a2,a2,a4
    17fc:	0007c683          	lbu	a3,0(a5)
    1800:	00044703          	lbu	a4,0(s0)
    1804:	08e69463          	bne	a3,a4,188c <memcmp+0xb2>
    1808:	0785                	addi	a5,a5,1
    180a:	0405                	addi	s0,s0,1
    180c:	fec798e3          	bne	a5,a2,17fc <memcmp+0x22>
    1810:	4501                	li	a0,0
    1812:	60e2                	ld	ra,24(sp)
    1814:	6442                	ld	s0,16(sp)
    1816:	64a2                	ld	s1,8(sp)
    1818:	6902                	ld	s2,0(sp)
    181a:	6105                	addi	sp,sp,32
    181c:	8082                	ret
    181e:	4501                	li	a0,0
    1820:	da6d                	beqz	a2,1812 <memcmp+0x38>
    1822:	03200693          	li	a3,50
    1826:	00002637          	lui	a2,0x2
    182a:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    182e:	000025b7          	lui	a1,0x2
    1832:	2f058593          	addi	a1,a1,752 # 22f0 <crctab+0x410>
    1836:	4509                	li	a0,2
    1838:	00000097          	auipc	ra,0x0
    183c:	bbc080e7          	jalr	-1092(ra) # 13f4 <fprintf>
    1840:	650d                	lui	a0,0x3
    1842:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1846:	00000097          	auipc	ra,0x0
    184a:	492080e7          	jalr	1170(ra) # 1cd8 <exit>
    184e:	fff48713          	addi	a4,s1,-1
    1852:	f04d                	bnez	s0,17f4 <memcmp+0x1a>
    1854:	a011                	j	1858 <memcmp+0x7e>
    1856:	c221                	beqz	a2,1896 <memcmp+0xbc>
    1858:	03300693          	li	a3,51
    185c:	00002637          	lui	a2,0x2
    1860:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    1864:	000025b7          	lui	a1,0x2
    1868:	33858593          	addi	a1,a1,824 # 2338 <crctab+0x458>
    186c:	4509                	li	a0,2
    186e:	00000097          	auipc	ra,0x0
    1872:	b86080e7          	jalr	-1146(ra) # 13f4 <fprintf>
    1876:	650d                	lui	a0,0x3
    1878:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    187c:	00000097          	auipc	ra,0x0
    1880:	45c080e7          	jalr	1116(ra) # 1cd8 <exit>
    1884:	fff48713          	addi	a4,s1,-1
    1888:	4401                	li	s0,0
    188a:	b7ad                	j	17f4 <memcmp+0x1a>
    188c:	4505                	li	a0,1
    188e:	f8d762e3          	bltu	a4,a3,1812 <memcmp+0x38>
    1892:	557d                	li	a0,-1
    1894:	bfbd                	j	1812 <memcmp+0x38>
    1896:	4501                	li	a0,0
    1898:	bfad                	j	1812 <memcmp+0x38>
    189a:	4501                	li	a0,0
    189c:	bf9d                	j	1812 <memcmp+0x38>

000000000000189e <memcpy>:
    189e:	1101                	addi	sp,sp,-32
    18a0:	ec06                	sd	ra,24(sp)
    18a2:	e822                	sd	s0,16(sp)
    18a4:	e426                	sd	s1,8(sp)
    18a6:	e04a                	sd	s2,0(sp)
    18a8:	84aa                	mv	s1,a0
    18aa:	842e                	mv	s0,a1
    18ac:	8932                	mv	s2,a2
    18ae:	c51d                	beqz	a0,18dc <memcpy+0x3e>
    18b0:	c1ad                	beqz	a1,1912 <memcpy+0x74>
    18b2:	fff60693          	addi	a3,a2,-1
    18b6:	ce01                	beqz	a2,18ce <memcpy+0x30>
    18b8:	0685                	addi	a3,a3,1
    18ba:	96a6                	add	a3,a3,s1
    18bc:	87a6                	mv	a5,s1
    18be:	0405                	addi	s0,s0,1
    18c0:	0785                	addi	a5,a5,1
    18c2:	fff44703          	lbu	a4,-1(s0)
    18c6:	fee78fa3          	sb	a4,-1(a5)
    18ca:	fed79ae3          	bne	a5,a3,18be <memcpy+0x20>
    18ce:	8526                	mv	a0,s1
    18d0:	60e2                	ld	ra,24(sp)
    18d2:	6442                	ld	s0,16(sp)
    18d4:	64a2                	ld	s1,8(sp)
    18d6:	6902                	ld	s2,0(sp)
    18d8:	6105                	addi	sp,sp,32
    18da:	8082                	ret
    18dc:	da6d                	beqz	a2,18ce <memcpy+0x30>
    18de:	04000693          	li	a3,64
    18e2:	00002637          	lui	a2,0x2
    18e6:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    18ea:	000025b7          	lui	a1,0x2
    18ee:	38058593          	addi	a1,a1,896 # 2380 <crctab+0x4a0>
    18f2:	4509                	li	a0,2
    18f4:	00000097          	auipc	ra,0x0
    18f8:	b00080e7          	jalr	-1280(ra) # 13f4 <fprintf>
    18fc:	650d                	lui	a0,0x3
    18fe:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1902:	00000097          	auipc	ra,0x0
    1906:	3d6080e7          	jalr	982(ra) # 1cd8 <exit>
    190a:	fff90693          	addi	a3,s2,-1
    190e:	f44d                	bnez	s0,18b8 <memcpy+0x1a>
    1910:	a011                	j	1914 <memcpy+0x76>
    1912:	de55                	beqz	a2,18ce <memcpy+0x30>
    1914:	04100693          	li	a3,65
    1918:	00002637          	lui	a2,0x2
    191c:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    1920:	000025b7          	lui	a1,0x2
    1924:	3c858593          	addi	a1,a1,968 # 23c8 <crctab+0x4e8>
    1928:	4509                	li	a0,2
    192a:	00000097          	auipc	ra,0x0
    192e:	aca080e7          	jalr	-1334(ra) # 13f4 <fprintf>
    1932:	650d                	lui	a0,0x3
    1934:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1938:	00000097          	auipc	ra,0x0
    193c:	3a0080e7          	jalr	928(ra) # 1cd8 <exit>
    1940:	fff90693          	addi	a3,s2,-1
    1944:	4401                	li	s0,0
    1946:	bf8d                	j	18b8 <memcpy+0x1a>

0000000000001948 <itoa>:
    1948:	1101                	addi	sp,sp,-32
    194a:	ec06                	sd	ra,24(sp)
    194c:	e822                	sd	s0,16(sp)
    194e:	e426                	sd	s1,8(sp)
    1950:	842a                	mv	s0,a0
    1952:	41f5d71b          	sraiw	a4,a1,0x1f
    1956:	00e5c7b3          	xor	a5,a1,a4
    195a:	9f99                	subw	a5,a5,a4
    195c:	84aa                	mv	s1,a0
    195e:	862a                	mv	a2,a0
    1960:	4681                	li	a3,0
    1962:	4529                	li	a0,10
    1964:	4825                	li	a6,9
    1966:	88b6                	mv	a7,a3
    1968:	2685                	addiw	a3,a3,1
    196a:	02a7e73b          	remw	a4,a5,a0
    196e:	0307071b          	addiw	a4,a4,48
    1972:	00e60023          	sb	a4,0(a2)
    1976:	873e                	mv	a4,a5
    1978:	02a7c7bb          	divw	a5,a5,a0
    197c:	0605                	addi	a2,a2,1
    197e:	fee844e3          	blt	a6,a4,1966 <itoa+0x1e>
    1982:	0405c863          	bltz	a1,19d2 <itoa+0x8a>
    1986:	96a2                	add	a3,a3,s0
    1988:	00068023          	sb	zero,0(a3)
    198c:	8522                	mv	a0,s0
    198e:	00000097          	auipc	ra,0x0
    1992:	e14080e7          	jalr	-492(ra) # 17a2 <strlen>
    1996:	fff5071b          	addiw	a4,a0,-1
    199a:	02e05763          	blez	a4,19c8 <itoa+0x80>
    199e:	9722                	add	a4,a4,s0
    19a0:	4681                	li	a3,0
    19a2:	0004c783          	lbu	a5,0(s1)
    19a6:	00074603          	lbu	a2,0(a4)
    19aa:	00c48023          	sb	a2,0(s1)
    19ae:	00f70023          	sb	a5,0(a4)
    19b2:	0016879b          	addiw	a5,a3,1
    19b6:	0007869b          	sext.w	a3,a5
    19ba:	0485                	addi	s1,s1,1
    19bc:	177d                	addi	a4,a4,-1
    19be:	fff7c793          	not	a5,a5
    19c2:	9fa9                	addw	a5,a5,a0
    19c4:	fcf6cfe3          	blt	a3,a5,19a2 <itoa+0x5a>
    19c8:	60e2                	ld	ra,24(sp)
    19ca:	6442                	ld	s0,16(sp)
    19cc:	64a2                	ld	s1,8(sp)
    19ce:	6105                	addi	sp,sp,32
    19d0:	8082                	ret
    19d2:	96a2                	add	a3,a3,s0
    19d4:	02d00793          	li	a5,45
    19d8:	00f68023          	sb	a5,0(a3)
    19dc:	0028869b          	addiw	a3,a7,2
    19e0:	b75d                	j	1986 <itoa+0x3e>

00000000000019e2 <atoi>:
    19e2:	00054783          	lbu	a5,0(a0)
    19e6:	02000713          	li	a4,32
    19ea:	00e79763          	bne	a5,a4,19f8 <atoi+0x16>
    19ee:	0505                	addi	a0,a0,1
    19f0:	00054783          	lbu	a5,0(a0)
    19f4:	fee78de3          	beq	a5,a4,19ee <atoi+0xc>
    19f8:	02b00713          	li	a4,43
    19fc:	04e78663          	beq	a5,a4,1a48 <atoi+0x66>
    1a00:	02d00713          	li	a4,45
    1a04:	4805                	li	a6,1
    1a06:	04e78463          	beq	a5,a4,1a4e <atoi+0x6c>
    1a0a:	00054683          	lbu	a3,0(a0)
    1a0e:	fd06879b          	addiw	a5,a3,-48
    1a12:	0ff7f793          	andi	a5,a5,255
    1a16:	4725                	li	a4,9
    1a18:	02f76e63          	bltu	a4,a5,1a54 <atoi+0x72>
    1a1c:	4601                	li	a2,0
    1a1e:	45a5                	li	a1,9
    1a20:	0505                	addi	a0,a0,1
    1a22:	0026179b          	slliw	a5,a2,0x2
    1a26:	9fb1                	addw	a5,a5,a2
    1a28:	0017979b          	slliw	a5,a5,0x1
    1a2c:	9fb5                	addw	a5,a5,a3
    1a2e:	fd07861b          	addiw	a2,a5,-48
    1a32:	00054683          	lbu	a3,0(a0)
    1a36:	fd06871b          	addiw	a4,a3,-48
    1a3a:	0ff77713          	andi	a4,a4,255
    1a3e:	fee5f1e3          	bgeu	a1,a4,1a20 <atoi+0x3e>
    1a42:	02c8053b          	mulw	a0,a6,a2
    1a46:	8082                	ret
    1a48:	0505                	addi	a0,a0,1
    1a4a:	4805                	li	a6,1
    1a4c:	bf7d                	j	1a0a <atoi+0x28>
    1a4e:	0505                	addi	a0,a0,1
    1a50:	587d                	li	a6,-1
    1a52:	bf65                	j	1a0a <atoi+0x28>
    1a54:	4601                	li	a2,0
    1a56:	b7f5                	j	1a42 <atoi+0x60>

0000000000001a58 <check_file_handle>:
    1a58:	d8010113          	addi	sp,sp,-640
    1a5c:	26113c23          	sd	ra,632(sp)
    1a60:	26813823          	sd	s0,624(sp)
    1a64:	26913423          	sd	s1,616(sp)
    1a68:	27213023          	sd	s2,608(sp)
    1a6c:	25313c23          	sd	s3,600(sp)
    1a70:	25413823          	sd	s4,592(sp)
    1a74:	25513423          	sd	s5,584(sp)
    1a78:	25613023          	sd	s6,576(sp)
    1a7c:	23713c23          	sd	s7,568(sp)
    1a80:	23813823          	sd	s8,560(sp)
    1a84:	23913423          	sd	s9,552(sp)
    1a88:	23a13023          	sd	s10,544(sp)
    1a8c:	21b13c23          	sd	s11,536(sp)
    1a90:	8baa                	mv	s7,a0
    1a92:	8a2e                	mv	s4,a1
    1a94:	8c32                	mv	s8,a2
    1a96:	89b6                	mv	s3,a3
    1a98:	040c                	addi	a1,sp,512
    1a9a:	00000097          	auipc	ra,0x0
    1a9e:	28e080e7          	jalr	654(ra) # 1d28 <fstat>
    1aa2:	20813603          	ld	a2,520(sp)
    1aa6:	03361163          	bne	a2,s3,1ac8 <check_file_handle+0x70>
    1aaa:	06098763          	beqz	s3,1b18 <check_file_handle+0xc0>
    1aae:	4901                	li	s2,0
    1ab0:	20000a93          	li	s5,512
    1ab4:	00002cb7          	lui	s9,0x2
    1ab8:	00002db7          	lui	s11,0x2
    1abc:	6b0d                	lui	s6,0x3
    1abe:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1ac2:	00002d37          	lui	s10,0x2
    1ac6:	aa39                	j	1be4 <check_file_handle+0x18c>
    1ac8:	86ce                	mv	a3,s3
    1aca:	85d2                	mv	a1,s4
    1acc:	00002537          	lui	a0,0x2
    1ad0:	41050513          	addi	a0,a0,1040 # 2410 <crctab+0x530>
    1ad4:	00000097          	auipc	ra,0x0
    1ad8:	942080e7          	jalr	-1726(ra) # 1416 <printf>
    1adc:	fc0999e3          	bnez	s3,1aae <check_file_handle+0x56>
    1ae0:	20813683          	ld	a3,520(sp)
    1ae4:	03368a63          	beq	a3,s3,1b18 <check_file_handle+0xc0>
    1ae8:	0a600813          	li	a6,166
    1aec:	000027b7          	lui	a5,0x2
    1af0:	2e078793          	addi	a5,a5,736 # 22e0 <crctab+0x400>
    1af4:	874e                	mv	a4,s3
    1af6:	8652                	mv	a2,s4
    1af8:	000025b7          	lui	a1,0x2
    1afc:	4e058593          	addi	a1,a1,1248 # 24e0 <crctab+0x600>
    1b00:	4509                	li	a0,2
    1b02:	00000097          	auipc	ra,0x0
    1b06:	8f2080e7          	jalr	-1806(ra) # 13f4 <fprintf>
    1b0a:	650d                	lui	a0,0x3
    1b0c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b10:	00000097          	auipc	ra,0x0
    1b14:	1c8080e7          	jalr	456(ra) # 1cd8 <exit>
    1b18:	85d2                	mv	a1,s4
    1b1a:	00002537          	lui	a0,0x2
    1b1e:	52850513          	addi	a0,a0,1320 # 2528 <crctab+0x648>
    1b22:	00000097          	auipc	ra,0x0
    1b26:	8f4080e7          	jalr	-1804(ra) # 1416 <printf>
    1b2a:	27813083          	ld	ra,632(sp)
    1b2e:	27013403          	ld	s0,624(sp)
    1b32:	26813483          	ld	s1,616(sp)
    1b36:	26013903          	ld	s2,608(sp)
    1b3a:	25813983          	ld	s3,600(sp)
    1b3e:	25013a03          	ld	s4,592(sp)
    1b42:	24813a83          	ld	s5,584(sp)
    1b46:	24013b03          	ld	s6,576(sp)
    1b4a:	23813b83          	ld	s7,568(sp)
    1b4e:	23013c03          	ld	s8,560(sp)
    1b52:	22813c83          	ld	s9,552(sp)
    1b56:	22013d03          	ld	s10,544(sp)
    1b5a:	21813d83          	ld	s11,536(sp)
    1b5e:	28010113          	addi	sp,sp,640
    1b62:	8082                	ret
    1b64:	09d00893          	li	a7,157
    1b68:	2e0c8813          	addi	a6,s9,736 # 22e0 <crctab+0x400>
    1b6c:	87aa                	mv	a5,a0
    1b6e:	8752                	mv	a4,s4
    1b70:	86ca                	mv	a3,s2
    1b72:	8622                	mv	a2,s0
    1b74:	440d8593          	addi	a1,s11,1088 # 2440 <crctab+0x560>
    1b78:	4509                	li	a0,2
    1b7a:	00000097          	auipc	ra,0x0
    1b7e:	87a080e7          	jalr	-1926(ra) # 13f4 <fprintf>
    1b82:	855a                	mv	a0,s6
    1b84:	00000097          	auipc	ra,0x0
    1b88:	154080e7          	jalr	340(ra) # 1cd8 <exit>
    1b8c:	a89d                	j	1c02 <check_file_handle+0x1aa>
    1b8e:	00160593          	addi	a1,a2,1
    1b92:	0285f163          	bgeu	a1,s0,1bb4 <check_file_handle+0x15c>
    1b96:	00c10733          	add	a4,sp,a2
    1b9a:	00b487b3          	add	a5,s1,a1
    1b9e:	00174683          	lbu	a3,1(a4)
    1ba2:	0007c783          	lbu	a5,0(a5)
    1ba6:	00f68763          	beq	a3,a5,1bb4 <check_file_handle+0x15c>
    1baa:	0585                	addi	a1,a1,1
    1bac:	0705                	addi	a4,a4,1
    1bae:	feb416e3          	bne	s0,a1,1b9a <check_file_handle+0x142>
    1bb2:	85a2                	mv	a1,s0
    1bb4:	08100813          	li	a6,129
    1bb8:	2e0c8793          	addi	a5,s9,736
    1bbc:	8752                	mv	a4,s4
    1bbe:	012606b3          	add	a3,a2,s2
    1bc2:	40c58633          	sub	a2,a1,a2
    1bc6:	488d0593          	addi	a1,s10,1160 # 2488 <crctab+0x5a8>
    1bca:	4509                	li	a0,2
    1bcc:	00000097          	auipc	ra,0x0
    1bd0:	828080e7          	jalr	-2008(ra) # 13f4 <fprintf>
    1bd4:	855a                	mv	a0,s6
    1bd6:	00000097          	auipc	ra,0x0
    1bda:	102080e7          	jalr	258(ra) # 1cd8 <exit>
    1bde:	9922                	add	s2,s2,s0
    1be0:	f13970e3          	bgeu	s2,s3,1ae0 <check_file_handle+0x88>
    1be4:	41298433          	sub	s0,s3,s2
    1be8:	008af363          	bgeu	s5,s0,1bee <check_file_handle+0x196>
    1bec:	8456                	mv	s0,s5
    1bee:	0004061b          	sext.w	a2,s0
    1bf2:	858a                	mv	a1,sp
    1bf4:	855e                	mv	a0,s7
    1bf6:	00000097          	auipc	ra,0x0
    1bfa:	10a080e7          	jalr	266(ra) # 1d00 <read>
    1bfe:	f68513e3          	bne	a0,s0,1b64 <check_file_handle+0x10c>
    1c02:	012c04b3          	add	s1,s8,s2
    1c06:	8622                	mv	a2,s0
    1c08:	85a6                	mv	a1,s1
    1c0a:	850a                	mv	a0,sp
    1c0c:	00000097          	auipc	ra,0x0
    1c10:	bce080e7          	jalr	-1074(ra) # 17da <memcmp>
    1c14:	d569                	beqz	a0,1bde <check_file_handle+0x186>
    1c16:	03298163          	beq	s3,s2,1c38 <check_file_handle+0x1e0>
    1c1a:	870a                	mv	a4,sp
    1c1c:	4601                	li	a2,0
    1c1e:	00c487b3          	add	a5,s1,a2
    1c22:	00074683          	lbu	a3,0(a4)
    1c26:	0007c783          	lbu	a5,0(a5)
    1c2a:	f6f692e3          	bne	a3,a5,1b8e <check_file_handle+0x136>
    1c2e:	0605                	addi	a2,a2,1
    1c30:	0705                	addi	a4,a4,1
    1c32:	fe8666e3          	bltu	a2,s0,1c1e <check_file_handle+0x1c6>
    1c36:	bfa1                	j	1b8e <check_file_handle+0x136>
    1c38:	4601                	li	a2,0
    1c3a:	4585                	li	a1,1
    1c3c:	bfa5                	j	1bb4 <check_file_handle+0x15c>

0000000000001c3e <check_file>:
    1c3e:	7179                	addi	sp,sp,-48
    1c40:	f406                	sd	ra,40(sp)
    1c42:	f022                	sd	s0,32(sp)
    1c44:	ec26                	sd	s1,24(sp)
    1c46:	e84a                	sd	s2,16(sp)
    1c48:	e44e                	sd	s3,8(sp)
    1c4a:	84aa                	mv	s1,a0
    1c4c:	892e                	mv	s2,a1
    1c4e:	89b2                	mv	s3,a2
    1c50:	4581                	li	a1,0
    1c52:	00000097          	auipc	ra,0x0
    1c56:	0a6080e7          	jalr	166(ra) # 1cf8 <open>
    1c5a:	842a                	mv	s0,a0
    1c5c:	4789                	li	a5,2
    1c5e:	02a7df63          	bge	a5,a0,1c9c <check_file+0x5e>
    1c62:	86ce                	mv	a3,s3
    1c64:	864a                	mv	a2,s2
    1c66:	85a6                	mv	a1,s1
    1c68:	8522                	mv	a0,s0
    1c6a:	00000097          	auipc	ra,0x0
    1c6e:	dee080e7          	jalr	-530(ra) # 1a58 <check_file_handle>
    1c72:	85a6                	mv	a1,s1
    1c74:	00002537          	lui	a0,0x2
    1c78:	5b050513          	addi	a0,a0,1456 # 25b0 <crctab+0x6d0>
    1c7c:	fffff097          	auipc	ra,0xfffff
    1c80:	79a080e7          	jalr	1946(ra) # 1416 <printf>
    1c84:	8522                	mv	a0,s0
    1c86:	00000097          	auipc	ra,0x0
    1c8a:	09a080e7          	jalr	154(ra) # 1d20 <close>
    1c8e:	70a2                	ld	ra,40(sp)
    1c90:	7402                	ld	s0,32(sp)
    1c92:	64e2                	ld	s1,24(sp)
    1c94:	6942                	ld	s2,16(sp)
    1c96:	69a2                	ld	s3,8(sp)
    1c98:	6145                	addi	sp,sp,48
    1c9a:	8082                	ret
    1c9c:	0ae00713          	li	a4,174
    1ca0:	000026b7          	lui	a3,0x2
    1ca4:	2e068693          	addi	a3,a3,736 # 22e0 <crctab+0x400>
    1ca8:	8626                	mv	a2,s1
    1caa:	000025b7          	lui	a1,0x2
    1cae:	54858593          	addi	a1,a1,1352 # 2548 <crctab+0x668>
    1cb2:	4509                	li	a0,2
    1cb4:	fffff097          	auipc	ra,0xfffff
    1cb8:	740080e7          	jalr	1856(ra) # 13f4 <fprintf>
    1cbc:	650d                	lui	a0,0x3
    1cbe:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1cc2:	00000097          	auipc	ra,0x0
    1cc6:	016080e7          	jalr	22(ra) # 1cd8 <exit>
    1cca:	bf61                	j	1c62 <check_file+0x24>

0000000000001ccc <r_sp>:
    1ccc:	850a                	mv	a0,sp
    1cce:	8082                	ret

0000000000001cd0 <halt>:
    1cd0:	4885                	li	a7,1
    1cd2:	00000073          	ecall
    1cd6:	8082                	ret

0000000000001cd8 <exit>:
    1cd8:	4889                	li	a7,2
    1cda:	00000073          	ecall
    1cde:	8082                	ret

0000000000001ce0 <exec>:
    1ce0:	488d                	li	a7,3
    1ce2:	00000073          	ecall
    1ce6:	8082                	ret

0000000000001ce8 <wait>:
    1ce8:	4891                	li	a7,4
    1cea:	00000073          	ecall
    1cee:	8082                	ret

0000000000001cf0 <remove>:
    1cf0:	4895                	li	a7,5
    1cf2:	00000073          	ecall
    1cf6:	8082                	ret

0000000000001cf8 <open>:
    1cf8:	4899                	li	a7,6
    1cfa:	00000073          	ecall
    1cfe:	8082                	ret

0000000000001d00 <read>:
    1d00:	489d                	li	a7,7
    1d02:	00000073          	ecall
    1d06:	8082                	ret

0000000000001d08 <write>:
    1d08:	48a1                	li	a7,8
    1d0a:	00000073          	ecall
    1d0e:	8082                	ret

0000000000001d10 <seek>:
    1d10:	48a5                	li	a7,9
    1d12:	00000073          	ecall
    1d16:	8082                	ret

0000000000001d18 <tell>:
    1d18:	48a9                	li	a7,10
    1d1a:	00000073          	ecall
    1d1e:	8082                	ret

0000000000001d20 <close>:
    1d20:	48ad                	li	a7,11
    1d22:	00000073          	ecall
    1d26:	8082                	ret

0000000000001d28 <fstat>:
    1d28:	48b1                	li	a7,12
    1d2a:	00000073          	ecall
    1d2e:	8082                	ret

0000000000001d30 <mmap>:
    1d30:	48b5                	li	a7,13
    1d32:	00000073          	ecall
    1d36:	8082                	ret

0000000000001d38 <munmap>:
    1d38:	48b9                	li	a7,14
    1d3a:	00000073          	ecall
    1d3e:	8082                	ret

0000000000001d40 <chdir>:
    1d40:	48bd                	li	a7,15
    1d42:	00000073          	ecall
    1d46:	8082                	ret

0000000000001d48 <mkdir>:
    1d48:	48c1                	li	a7,16
    1d4a:	00000073          	ecall
    1d4e:	8082                	ret
