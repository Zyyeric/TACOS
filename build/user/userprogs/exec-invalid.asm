
build/user/userprogs/exec-invalid:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	4581                	li	a1,0
    1006:	00002537          	lui	a0,0x2
    100a:	c8050513          	addi	a0,a0,-896 # 1c80 <mkdir+0x8>
    100e:	00001097          	auipc	ra,0x1
    1012:	c02080e7          	jalr	-1022(ra) # 1c10 <exec>
    1016:	57fd                	li	a5,-1
    1018:	02f51563          	bne	a0,a5,1042 <main+0x42>
    101c:	00002537          	lui	a0,0x2
    1020:	cf850793          	addi	a5,a0,-776 # 1cf8 <mkdir+0x80>
    1024:	e03e                	sd	a5,0(sp)
    1026:	e402                	sd	zero,8(sp)
    1028:	858a                	mv	a1,sp
    102a:	cf850513          	addi	a0,a0,-776
    102e:	00001097          	auipc	ra,0x1
    1032:	be2080e7          	jalr	-1054(ra) # 1c10 <exec>
    1036:	57fd                	li	a5,-1
    1038:	02f51b63          	bne	a0,a5,106e <main+0x6e>
    103c:	60e2                	ld	ra,24(sp)
    103e:	6105                	addi	sp,sp,32
    1040:	8082                	ret
    1042:	4699                	li	a3,6
    1044:	00002637          	lui	a2,0x2
    1048:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x18>
    104c:	000025b7          	lui	a1,0x2
    1050:	cb058593          	addi	a1,a1,-848 # 1cb0 <mkdir+0x38>
    1054:	4509                	li	a0,2
    1056:	00000097          	auipc	ra,0x0
    105a:	2ce080e7          	jalr	718(ra) # 1324 <fprintf>
    105e:	650d                	lui	a0,0x3
    1060:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1064:	00001097          	auipc	ra,0x1
    1068:	ba4080e7          	jalr	-1116(ra) # 1c08 <exit>
    106c:	bf45                	j	101c <main+0x1c>
    106e:	46a5                	li	a3,9
    1070:	00002637          	lui	a2,0x2
    1074:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x18>
    1078:	000025b7          	lui	a1,0x2
    107c:	d0858593          	addi	a1,a1,-760 # 1d08 <mkdir+0x90>
    1080:	4509                	li	a0,2
    1082:	00000097          	auipc	ra,0x0
    1086:	2a2080e7          	jalr	674(ra) # 1324 <fprintf>
    108a:	650d                	lui	a0,0x3
    108c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1090:	00001097          	auipc	ra,0x1
    1094:	b78080e7          	jalr	-1160(ra) # 1c08 <exit>
    1098:	b755                	j	103c <main+0x3c>

000000000000109a <putc>:
    109a:	1101                	addi	sp,sp,-32
    109c:	ec06                	sd	ra,24(sp)
    109e:	00b107a3          	sb	a1,15(sp)
    10a2:	4605                	li	a2,1
    10a4:	00f10593          	addi	a1,sp,15
    10a8:	00001097          	auipc	ra,0x1
    10ac:	b90080e7          	jalr	-1136(ra) # 1c38 <write>
    10b0:	60e2                	ld	ra,24(sp)
    10b2:	6105                	addi	sp,sp,32
    10b4:	8082                	ret

00000000000010b6 <printint>:
    10b6:	7179                	addi	sp,sp,-48
    10b8:	f406                	sd	ra,40(sp)
    10ba:	f022                	sd	s0,32(sp)
    10bc:	ec26                	sd	s1,24(sp)
    10be:	e84a                	sd	s2,16(sp)
    10c0:	84aa                	mv	s1,a0
    10c2:	c299                	beqz	a3,10c8 <printint+0x12>
    10c4:	0805c363          	bltz	a1,114a <printint+0x94>
    10c8:	2581                	sext.w	a1,a1
    10ca:	4881                	li	a7,0
    10cc:	868a                	mv	a3,sp
    10ce:	4701                	li	a4,0
    10d0:	2601                	sext.w	a2,a2
    10d2:	00002537          	lui	a0,0x2
    10d6:	d7850513          	addi	a0,a0,-648 # 1d78 <digits>
    10da:	883a                	mv	a6,a4
    10dc:	2705                	addiw	a4,a4,1
    10de:	02c5f7bb          	remuw	a5,a1,a2
    10e2:	1782                	slli	a5,a5,0x20
    10e4:	9381                	srli	a5,a5,0x20
    10e6:	97aa                	add	a5,a5,a0
    10e8:	0007c783          	lbu	a5,0(a5)
    10ec:	00f68023          	sb	a5,0(a3)
    10f0:	0005879b          	sext.w	a5,a1
    10f4:	02c5d5bb          	divuw	a1,a1,a2
    10f8:	0685                	addi	a3,a3,1
    10fa:	fec7f0e3          	bgeu	a5,a2,10da <printint+0x24>
    10fe:	00088a63          	beqz	a7,1112 <printint+0x5c>
    1102:	081c                	addi	a5,sp,16
    1104:	973e                	add	a4,a4,a5
    1106:	02d00793          	li	a5,45
    110a:	fef70823          	sb	a5,-16(a4)
    110e:	0028071b          	addiw	a4,a6,2
    1112:	02e05663          	blez	a4,113e <printint+0x88>
    1116:	00e10433          	add	s0,sp,a4
    111a:	fff10913          	addi	s2,sp,-1
    111e:	993a                	add	s2,s2,a4
    1120:	377d                	addiw	a4,a4,-1
    1122:	1702                	slli	a4,a4,0x20
    1124:	9301                	srli	a4,a4,0x20
    1126:	40e90933          	sub	s2,s2,a4
    112a:	fff44583          	lbu	a1,-1(s0)
    112e:	8526                	mv	a0,s1
    1130:	00000097          	auipc	ra,0x0
    1134:	f6a080e7          	jalr	-150(ra) # 109a <putc>
    1138:	147d                	addi	s0,s0,-1
    113a:	ff2418e3          	bne	s0,s2,112a <printint+0x74>
    113e:	70a2                	ld	ra,40(sp)
    1140:	7402                	ld	s0,32(sp)
    1142:	64e2                	ld	s1,24(sp)
    1144:	6942                	ld	s2,16(sp)
    1146:	6145                	addi	sp,sp,48
    1148:	8082                	ret
    114a:	40b005bb          	negw	a1,a1
    114e:	4885                	li	a7,1
    1150:	bfb5                	j	10cc <printint+0x16>

0000000000001152 <vprintf>:
    1152:	7159                	addi	sp,sp,-112
    1154:	f486                	sd	ra,104(sp)
    1156:	f0a2                	sd	s0,96(sp)
    1158:	eca6                	sd	s1,88(sp)
    115a:	e8ca                	sd	s2,80(sp)
    115c:	e4ce                	sd	s3,72(sp)
    115e:	e0d2                	sd	s4,64(sp)
    1160:	fc56                	sd	s5,56(sp)
    1162:	f85a                	sd	s6,48(sp)
    1164:	f45e                	sd	s7,40(sp)
    1166:	f062                	sd	s8,32(sp)
    1168:	ec66                	sd	s9,24(sp)
    116a:	e86a                	sd	s10,16(sp)
    116c:	e46e                	sd	s11,8(sp)
    116e:	0005c483          	lbu	s1,0(a1)
    1172:	18048a63          	beqz	s1,1306 <vprintf+0x1b4>
    1176:	8a2a                	mv	s4,a0
    1178:	8ab2                	mv	s5,a2
    117a:	00158413          	addi	s0,a1,1
    117e:	4901                	li	s2,0
    1180:	02500993          	li	s3,37
    1184:	06400b93          	li	s7,100
    1188:	06c00c13          	li	s8,108
    118c:	07800c93          	li	s9,120
    1190:	07000d13          	li	s10,112
    1194:	00002db7          	lui	s11,0x2
    1198:	00002b37          	lui	s6,0x2
    119c:	d78b0b13          	addi	s6,s6,-648 # 1d78 <digits>
    11a0:	a839                	j	11be <vprintf+0x6c>
    11a2:	85a6                	mv	a1,s1
    11a4:	8552                	mv	a0,s4
    11a6:	00000097          	auipc	ra,0x0
    11aa:	ef4080e7          	jalr	-268(ra) # 109a <putc>
    11ae:	a019                	j	11b4 <vprintf+0x62>
    11b0:	01390f63          	beq	s2,s3,11ce <vprintf+0x7c>
    11b4:	0405                	addi	s0,s0,1
    11b6:	fff44483          	lbu	s1,-1(s0)
    11ba:	14048663          	beqz	s1,1306 <vprintf+0x1b4>
    11be:	0004879b          	sext.w	a5,s1
    11c2:	fe0917e3          	bnez	s2,11b0 <vprintf+0x5e>
    11c6:	fd379ee3          	bne	a5,s3,11a2 <vprintf+0x50>
    11ca:	893e                	mv	s2,a5
    11cc:	b7e5                	j	11b4 <vprintf+0x62>
    11ce:	05778063          	beq	a5,s7,120e <vprintf+0xbc>
    11d2:	05878c63          	beq	a5,s8,122a <vprintf+0xd8>
    11d6:	07978863          	beq	a5,s9,1246 <vprintf+0xf4>
    11da:	09a78463          	beq	a5,s10,1262 <vprintf+0x110>
    11de:	07300713          	li	a4,115
    11e2:	0ce78263          	beq	a5,a4,12a6 <vprintf+0x154>
    11e6:	06300713          	li	a4,99
    11ea:	0ee78763          	beq	a5,a4,12d8 <vprintf+0x186>
    11ee:	11378163          	beq	a5,s3,12f0 <vprintf+0x19e>
    11f2:	85ce                	mv	a1,s3
    11f4:	8552                	mv	a0,s4
    11f6:	00000097          	auipc	ra,0x0
    11fa:	ea4080e7          	jalr	-348(ra) # 109a <putc>
    11fe:	85a6                	mv	a1,s1
    1200:	8552                	mv	a0,s4
    1202:	00000097          	auipc	ra,0x0
    1206:	e98080e7          	jalr	-360(ra) # 109a <putc>
    120a:	4901                	li	s2,0
    120c:	b765                	j	11b4 <vprintf+0x62>
    120e:	008a8493          	addi	s1,s5,8
    1212:	4685                	li	a3,1
    1214:	4629                	li	a2,10
    1216:	000aa583          	lw	a1,0(s5)
    121a:	8552                	mv	a0,s4
    121c:	00000097          	auipc	ra,0x0
    1220:	e9a080e7          	jalr	-358(ra) # 10b6 <printint>
    1224:	8aa6                	mv	s5,s1
    1226:	4901                	li	s2,0
    1228:	b771                	j	11b4 <vprintf+0x62>
    122a:	008a8493          	addi	s1,s5,8
    122e:	4681                	li	a3,0
    1230:	4629                	li	a2,10
    1232:	000aa583          	lw	a1,0(s5)
    1236:	8552                	mv	a0,s4
    1238:	00000097          	auipc	ra,0x0
    123c:	e7e080e7          	jalr	-386(ra) # 10b6 <printint>
    1240:	8aa6                	mv	s5,s1
    1242:	4901                	li	s2,0
    1244:	bf85                	j	11b4 <vprintf+0x62>
    1246:	008a8493          	addi	s1,s5,8
    124a:	4681                	li	a3,0
    124c:	4641                	li	a2,16
    124e:	000aa583          	lw	a1,0(s5)
    1252:	8552                	mv	a0,s4
    1254:	00000097          	auipc	ra,0x0
    1258:	e62080e7          	jalr	-414(ra) # 10b6 <printint>
    125c:	8aa6                	mv	s5,s1
    125e:	4901                	li	s2,0
    1260:	bf91                	j	11b4 <vprintf+0x62>
    1262:	008a8913          	addi	s2,s5,8
    1266:	000aba83          	ld	s5,0(s5)
    126a:	03000593          	li	a1,48
    126e:	8552                	mv	a0,s4
    1270:	00000097          	auipc	ra,0x0
    1274:	e2a080e7          	jalr	-470(ra) # 109a <putc>
    1278:	85e6                	mv	a1,s9
    127a:	8552                	mv	a0,s4
    127c:	00000097          	auipc	ra,0x0
    1280:	e1e080e7          	jalr	-482(ra) # 109a <putc>
    1284:	44c1                	li	s1,16
    1286:	03cad793          	srli	a5,s5,0x3c
    128a:	97da                	add	a5,a5,s6
    128c:	0007c583          	lbu	a1,0(a5)
    1290:	8552                	mv	a0,s4
    1292:	00000097          	auipc	ra,0x0
    1296:	e08080e7          	jalr	-504(ra) # 109a <putc>
    129a:	0a92                	slli	s5,s5,0x4
    129c:	34fd                	addiw	s1,s1,-1
    129e:	f4e5                	bnez	s1,1286 <vprintf+0x134>
    12a0:	8aca                	mv	s5,s2
    12a2:	4901                	li	s2,0
    12a4:	bf01                	j	11b4 <vprintf+0x62>
    12a6:	008a8913          	addi	s2,s5,8
    12aa:	000ab483          	ld	s1,0(s5)
    12ae:	c085                	beqz	s1,12ce <vprintf+0x17c>
    12b0:	0004c583          	lbu	a1,0(s1)
    12b4:	c5b1                	beqz	a1,1300 <vprintf+0x1ae>
    12b6:	8552                	mv	a0,s4
    12b8:	00000097          	auipc	ra,0x0
    12bc:	de2080e7          	jalr	-542(ra) # 109a <putc>
    12c0:	0485                	addi	s1,s1,1
    12c2:	0004c583          	lbu	a1,0(s1)
    12c6:	f9e5                	bnez	a1,12b6 <vprintf+0x164>
    12c8:	8aca                	mv	s5,s2
    12ca:	4901                	li	s2,0
    12cc:	b5e5                	j	11b4 <vprintf+0x62>
    12ce:	d70d8493          	addi	s1,s11,-656 # 1d70 <mkdir+0xf8>
    12d2:	02800593          	li	a1,40
    12d6:	b7c5                	j	12b6 <vprintf+0x164>
    12d8:	008a8493          	addi	s1,s5,8
    12dc:	000ac583          	lbu	a1,0(s5)
    12e0:	8552                	mv	a0,s4
    12e2:	00000097          	auipc	ra,0x0
    12e6:	db8080e7          	jalr	-584(ra) # 109a <putc>
    12ea:	8aa6                	mv	s5,s1
    12ec:	4901                	li	s2,0
    12ee:	b5d9                	j	11b4 <vprintf+0x62>
    12f0:	85ce                	mv	a1,s3
    12f2:	8552                	mv	a0,s4
    12f4:	00000097          	auipc	ra,0x0
    12f8:	da6080e7          	jalr	-602(ra) # 109a <putc>
    12fc:	4901                	li	s2,0
    12fe:	bd5d                	j	11b4 <vprintf+0x62>
    1300:	8aca                	mv	s5,s2
    1302:	4901                	li	s2,0
    1304:	bd45                	j	11b4 <vprintf+0x62>
    1306:	70a6                	ld	ra,104(sp)
    1308:	7406                	ld	s0,96(sp)
    130a:	64e6                	ld	s1,88(sp)
    130c:	6946                	ld	s2,80(sp)
    130e:	69a6                	ld	s3,72(sp)
    1310:	6a06                	ld	s4,64(sp)
    1312:	7ae2                	ld	s5,56(sp)
    1314:	7b42                	ld	s6,48(sp)
    1316:	7ba2                	ld	s7,40(sp)
    1318:	7c02                	ld	s8,32(sp)
    131a:	6ce2                	ld	s9,24(sp)
    131c:	6d42                	ld	s10,16(sp)
    131e:	6da2                	ld	s11,8(sp)
    1320:	6165                	addi	sp,sp,112
    1322:	8082                	ret

0000000000001324 <fprintf>:
    1324:	715d                	addi	sp,sp,-80
    1326:	ec06                	sd	ra,24(sp)
    1328:	f032                	sd	a2,32(sp)
    132a:	f436                	sd	a3,40(sp)
    132c:	f83a                	sd	a4,48(sp)
    132e:	fc3e                	sd	a5,56(sp)
    1330:	e0c2                	sd	a6,64(sp)
    1332:	e4c6                	sd	a7,72(sp)
    1334:	1010                	addi	a2,sp,32
    1336:	e432                	sd	a2,8(sp)
    1338:	00000097          	auipc	ra,0x0
    133c:	e1a080e7          	jalr	-486(ra) # 1152 <vprintf>
    1340:	60e2                	ld	ra,24(sp)
    1342:	6161                	addi	sp,sp,80
    1344:	8082                	ret

0000000000001346 <printf>:
    1346:	711d                	addi	sp,sp,-96
    1348:	ec06                	sd	ra,24(sp)
    134a:	f42e                	sd	a1,40(sp)
    134c:	f832                	sd	a2,48(sp)
    134e:	fc36                	sd	a3,56(sp)
    1350:	e0ba                	sd	a4,64(sp)
    1352:	e4be                	sd	a5,72(sp)
    1354:	e8c2                	sd	a6,80(sp)
    1356:	ecc6                	sd	a7,88(sp)
    1358:	1030                	addi	a2,sp,40
    135a:	e432                	sd	a2,8(sp)
    135c:	85aa                	mv	a1,a0
    135e:	4505                	li	a0,1
    1360:	00000097          	auipc	ra,0x0
    1364:	df2080e7          	jalr	-526(ra) # 1152 <vprintf>
    1368:	60e2                	ld	ra,24(sp)
    136a:	6125                	addi	sp,sp,96
    136c:	8082                	ret

000000000000136e <cksum>:
    136e:	cdb1                	beqz	a1,13ca <cksum+0x5c>
    1370:	00b50833          	add	a6,a0,a1
    1374:	4781                	li	a5,0
    1376:	00002637          	lui	a2,0x2
    137a:	d9060613          	addi	a2,a2,-624 # 1d90 <crctab>
    137e:	0505                	addi	a0,a0,1
    1380:	0087969b          	slliw	a3,a5,0x8
    1384:	0187d71b          	srliw	a4,a5,0x18
    1388:	fff54783          	lbu	a5,-1(a0)
    138c:	8f3d                	xor	a4,a4,a5
    138e:	1702                	slli	a4,a4,0x20
    1390:	9301                	srli	a4,a4,0x20
    1392:	070a                	slli	a4,a4,0x2
    1394:	9732                	add	a4,a4,a2
    1396:	431c                	lw	a5,0(a4)
    1398:	8fb5                	xor	a5,a5,a3
    139a:	2781                	sext.w	a5,a5
    139c:	fea811e3          	bne	a6,a0,137e <cksum+0x10>
    13a0:	00002637          	lui	a2,0x2
    13a4:	d9060613          	addi	a2,a2,-624 # 1d90 <crctab>
    13a8:	0ff5f693          	andi	a3,a1,255
    13ac:	81a1                	srli	a1,a1,0x8
    13ae:	0087951b          	slliw	a0,a5,0x8
    13b2:	0187d71b          	srliw	a4,a5,0x18
    13b6:	8f35                	xor	a4,a4,a3
    13b8:	070a                	slli	a4,a4,0x2
    13ba:	9732                	add	a4,a4,a2
    13bc:	431c                	lw	a5,0(a4)
    13be:	8fa9                	xor	a5,a5,a0
    13c0:	2781                	sext.w	a5,a5
    13c2:	f1fd                	bnez	a1,13a8 <cksum+0x3a>
    13c4:	fff7c513          	not	a0,a5
    13c8:	8082                	ret
    13ca:	4781                	li	a5,0
    13cc:	bfe5                	j	13c4 <cksum+0x56>

00000000000013ce <swap_bytes>:
    13ce:	ce19                	beqz	a2,13ec <swap_bytes+0x1e>
    13d0:	87aa                	mv	a5,a0
    13d2:	962a                	add	a2,a2,a0
    13d4:	0007c703          	lbu	a4,0(a5)
    13d8:	0005c683          	lbu	a3,0(a1)
    13dc:	00d78023          	sb	a3,0(a5)
    13e0:	00e58023          	sb	a4,0(a1)
    13e4:	0785                	addi	a5,a5,1
    13e6:	0585                	addi	a1,a1,1
    13e8:	fec796e3          	bne	a5,a2,13d4 <swap_bytes+0x6>
    13ec:	8082                	ret

00000000000013ee <random_init>:
    13ee:	7139                	addi	sp,sp,-64
    13f0:	fc06                	sd	ra,56(sp)
    13f2:	f822                	sd	s0,48(sp)
    13f4:	f426                	sd	s1,40(sp)
    13f6:	f04a                	sd	s2,32(sp)
    13f8:	ec4e                	sd	s3,24(sp)
    13fa:	e852                	sd	s4,16(sp)
    13fc:	c62a                	sw	a0,12(sp)
    13fe:	000037b7          	lui	a5,0x3
    1402:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1406:	eca5                	bnez	s1,147e <random_init+0x90>
    1408:	00003737          	lui	a4,0x3
    140c:	01070913          	addi	s2,a4,16 # 3010 <s>
    1410:	01070713          	addi	a4,a4,16
    1414:	87a6                	mv	a5,s1
    1416:	10000693          	li	a3,256
    141a:	00f70023          	sb	a5,0(a4)
    141e:	2785                	addiw	a5,a5,1
    1420:	0705                	addi	a4,a4,1
    1422:	fed79ce3          	bne	a5,a3,141a <random_init+0x2c>
    1426:	4401                	li	s0,0
    1428:	000039b7          	lui	s3,0x3
    142c:	01098993          	addi	s3,s3,16 # 3010 <s>
    1430:	10000a13          	li	s4,256
    1434:	0034f793          	andi	a5,s1,3
    1438:	0818                	addi	a4,sp,16
    143a:	97ba                	add	a5,a5,a4
    143c:	ffc7c783          	lbu	a5,-4(a5)
    1440:	00094703          	lbu	a4,0(s2)
    1444:	9fb9                	addw	a5,a5,a4
    1446:	9c3d                	addw	s0,s0,a5
    1448:	0ff47413          	andi	s0,s0,255
    144c:	4605                	li	a2,1
    144e:	008985b3          	add	a1,s3,s0
    1452:	854a                	mv	a0,s2
    1454:	00000097          	auipc	ra,0x0
    1458:	f7a080e7          	jalr	-134(ra) # 13ce <swap_bytes>
    145c:	2485                	addiw	s1,s1,1
    145e:	0905                	addi	s2,s2,1
    1460:	fd449ae3          	bne	s1,s4,1434 <random_init+0x46>
    1464:	000037b7          	lui	a5,0x3
    1468:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    146c:	000037b7          	lui	a5,0x3
    1470:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1474:	000037b7          	lui	a5,0x3
    1478:	4705                	li	a4,1
    147a:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    147e:	70e2                	ld	ra,56(sp)
    1480:	7442                	ld	s0,48(sp)
    1482:	74a2                	ld	s1,40(sp)
    1484:	7902                	ld	s2,32(sp)
    1486:	69e2                	ld	s3,24(sp)
    1488:	6a42                	ld	s4,16(sp)
    148a:	6121                	addi	sp,sp,64
    148c:	8082                	ret

000000000000148e <random_bytes>:
    148e:	7139                	addi	sp,sp,-64
    1490:	fc06                	sd	ra,56(sp)
    1492:	f822                	sd	s0,48(sp)
    1494:	f426                	sd	s1,40(sp)
    1496:	f04a                	sd	s2,32(sp)
    1498:	ec4e                	sd	s3,24(sp)
    149a:	e852                	sd	s4,16(sp)
    149c:	e456                	sd	s5,8(sp)
    149e:	e05a                	sd	s6,0(sp)
    14a0:	892a                	mv	s2,a0
    14a2:	8aae                	mv	s5,a1
    14a4:	000037b7          	lui	a5,0x3
    14a8:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14ac:	c3c1                	beqz	a5,152c <random_bytes+0x9e>
    14ae:	060a8563          	beqz	s5,1518 <random_bytes+0x8a>
    14b2:	9aca                	add	s5,s5,s2
    14b4:	00003a37          	lui	s4,0x3
    14b8:	000034b7          	lui	s1,0x3
    14bc:	01048493          	addi	s1,s1,16 # 3010 <s>
    14c0:	000039b7          	lui	s3,0x3
    14c4:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14c8:	2505                	addiw	a0,a0,1
    14ca:	0ff57513          	andi	a0,a0,255
    14ce:	00aa02a3          	sb	a0,5(s4)
    14d2:	00a48b33          	add	s6,s1,a0
    14d6:	000b4403          	lbu	s0,0(s6)
    14da:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14de:	9c3d                	addw	s0,s0,a5
    14e0:	0ff47413          	andi	s0,s0,255
    14e4:	00898223          	sb	s0,4(s3)
    14e8:	4605                	li	a2,1
    14ea:	008485b3          	add	a1,s1,s0
    14ee:	855a                	mv	a0,s6
    14f0:	00000097          	auipc	ra,0x0
    14f4:	ede080e7          	jalr	-290(ra) # 13ce <swap_bytes>
    14f8:	9426                	add	s0,s0,s1
    14fa:	000b4783          	lbu	a5,0(s6)
    14fe:	00044703          	lbu	a4,0(s0)
    1502:	9fb9                	addw	a5,a5,a4
    1504:	0ff7f793          	andi	a5,a5,255
    1508:	97a6                	add	a5,a5,s1
    150a:	0007c783          	lbu	a5,0(a5)
    150e:	00f90023          	sb	a5,0(s2)
    1512:	0905                	addi	s2,s2,1
    1514:	fb2a98e3          	bne	s5,s2,14c4 <random_bytes+0x36>
    1518:	70e2                	ld	ra,56(sp)
    151a:	7442                	ld	s0,48(sp)
    151c:	74a2                	ld	s1,40(sp)
    151e:	7902                	ld	s2,32(sp)
    1520:	69e2                	ld	s3,24(sp)
    1522:	6a42                	ld	s4,16(sp)
    1524:	6aa2                	ld	s5,8(sp)
    1526:	6b02                	ld	s6,0(sp)
    1528:	6121                	addi	sp,sp,64
    152a:	8082                	ret
    152c:	4501                	li	a0,0
    152e:	00000097          	auipc	ra,0x0
    1532:	ec0080e7          	jalr	-320(ra) # 13ee <random_init>
    1536:	bfa5                	j	14ae <random_bytes+0x20>

0000000000001538 <random_ulong>:
    1538:	1101                	addi	sp,sp,-32
    153a:	ec06                	sd	ra,24(sp)
    153c:	45a1                	li	a1,8
    153e:	0028                	addi	a0,sp,8
    1540:	00000097          	auipc	ra,0x0
    1544:	f4e080e7          	jalr	-178(ra) # 148e <random_bytes>
    1548:	6522                	ld	a0,8(sp)
    154a:	60e2                	ld	ra,24(sp)
    154c:	6105                	addi	sp,sp,32
    154e:	8082                	ret

0000000000001550 <shuffle>:
    1550:	c9b9                	beqz	a1,15a6 <shuffle+0x56>
    1552:	7179                	addi	sp,sp,-48
    1554:	f406                	sd	ra,40(sp)
    1556:	f022                	sd	s0,32(sp)
    1558:	ec26                	sd	s1,24(sp)
    155a:	e84a                	sd	s2,16(sp)
    155c:	e44e                	sd	s3,8(sp)
    155e:	e052                	sd	s4,0(sp)
    1560:	8a2a                	mv	s4,a0
    1562:	89ae                	mv	s3,a1
    1564:	84b2                	mv	s1,a2
    1566:	892a                	mv	s2,a0
    1568:	4401                	li	s0,0
    156a:	00000097          	auipc	ra,0x0
    156e:	fce080e7          	jalr	-50(ra) # 1538 <random_ulong>
    1572:	408985b3          	sub	a1,s3,s0
    1576:	02b575b3          	remu	a1,a0,a1
    157a:	95a2                	add	a1,a1,s0
    157c:	029585b3          	mul	a1,a1,s1
    1580:	8626                	mv	a2,s1
    1582:	95d2                	add	a1,a1,s4
    1584:	854a                	mv	a0,s2
    1586:	00000097          	auipc	ra,0x0
    158a:	e48080e7          	jalr	-440(ra) # 13ce <swap_bytes>
    158e:	0405                	addi	s0,s0,1
    1590:	9926                	add	s2,s2,s1
    1592:	fc899ce3          	bne	s3,s0,156a <shuffle+0x1a>
    1596:	70a2                	ld	ra,40(sp)
    1598:	7402                	ld	s0,32(sp)
    159a:	64e2                	ld	s1,24(sp)
    159c:	6942                	ld	s2,16(sp)
    159e:	69a2                	ld	s3,8(sp)
    15a0:	6a02                	ld	s4,0(sp)
    15a2:	6145                	addi	sp,sp,48
    15a4:	8082                	ret
    15a6:	8082                	ret

00000000000015a8 <arc4_init>:
    15a8:	100500a3          	sb	zero,257(a0)
    15ac:	10050023          	sb	zero,256(a0)
    15b0:	4781                	li	a5,0
    15b2:	10000693          	li	a3,256
    15b6:	00f50733          	add	a4,a0,a5
    15ba:	00f70023          	sb	a5,0(a4)
    15be:	0785                	addi	a5,a5,1
    15c0:	fed79be3          	bne	a5,a3,15b6 <arc4_init+0xe>
    15c4:	86aa                	mv	a3,a0
    15c6:	10050e13          	addi	t3,a0,256
    15ca:	4701                	li	a4,0
    15cc:	4781                	li	a5,0
    15ce:	0006c883          	lbu	a7,0(a3)
    15d2:	00f58833          	add	a6,a1,a5
    15d6:	00084803          	lbu	a6,0(a6)
    15da:	00e8873b          	addw	a4,a7,a4
    15de:	00e8073b          	addw	a4,a6,a4
    15e2:	0ff77713          	andi	a4,a4,255
    15e6:	00e50833          	add	a6,a0,a4
    15ea:	00084303          	lbu	t1,0(a6)
    15ee:	00668023          	sb	t1,0(a3)
    15f2:	01180023          	sb	a7,0(a6)
    15f6:	0785                	addi	a5,a5,1
    15f8:	00c7b833          	sltu	a6,a5,a2
    15fc:	41000833          	neg	a6,a6
    1600:	0107f7b3          	and	a5,a5,a6
    1604:	0685                	addi	a3,a3,1
    1606:	fdc694e3          	bne	a3,t3,15ce <arc4_init+0x26>
    160a:	8082                	ret

000000000000160c <arc4_crypt>:
    160c:	10054e03          	lbu	t3,256(a0)
    1610:	10154803          	lbu	a6,257(a0)
    1614:	fff60e93          	addi	t4,a2,-1
    1618:	c225                	beqz	a2,1678 <arc4_crypt+0x6c>
    161a:	00c588b3          	add	a7,a1,a2
    161e:	86ae                	mv	a3,a1
    1620:	001e031b          	addiw	t1,t3,1
    1624:	40b3033b          	subw	t1,t1,a1
    1628:	00d3073b          	addw	a4,t1,a3
    162c:	0ff77713          	andi	a4,a4,255
    1630:	972a                	add	a4,a4,a0
    1632:	00074603          	lbu	a2,0(a4)
    1636:	0106083b          	addw	a6,a2,a6
    163a:	0ff87813          	andi	a6,a6,255
    163e:	010507b3          	add	a5,a0,a6
    1642:	0007c583          	lbu	a1,0(a5)
    1646:	00b70023          	sb	a1,0(a4)
    164a:	00c78023          	sb	a2,0(a5)
    164e:	0685                	addi	a3,a3,1
    1650:	00074783          	lbu	a5,0(a4)
    1654:	9fb1                	addw	a5,a5,a2
    1656:	0ff7f793          	andi	a5,a5,255
    165a:	97aa                	add	a5,a5,a0
    165c:	0007c783          	lbu	a5,0(a5)
    1660:	fff6c703          	lbu	a4,-1(a3)
    1664:	8fb9                	xor	a5,a5,a4
    1666:	fef68fa3          	sb	a5,-1(a3)
    166a:	fb169fe3          	bne	a3,a7,1628 <arc4_crypt+0x1c>
    166e:	2e85                	addiw	t4,t4,1
    1670:	01ce8e3b          	addw	t3,t4,t3
    1674:	0ffe7e13          	andi	t3,t3,255
    1678:	11c50023          	sb	t3,256(a0)
    167c:	110500a3          	sb	a6,257(a0)
    1680:	8082                	ret

0000000000001682 <_main>:
    1682:	1141                	addi	sp,sp,-16
    1684:	e406                	sd	ra,8(sp)
    1686:	00000097          	auipc	ra,0x0
    168a:	97a080e7          	jalr	-1670(ra) # 1000 <main>
    168e:	4501                	li	a0,0
    1690:	00000097          	auipc	ra,0x0
    1694:	578080e7          	jalr	1400(ra) # 1c08 <exit>
    1698:	60a2                	ld	ra,8(sp)
    169a:	0141                	addi	sp,sp,16
    169c:	8082                	ret

000000000000169e <strcmp>:
    169e:	00054783          	lbu	a5,0(a0)
    16a2:	cb91                	beqz	a5,16b6 <strcmp+0x18>
    16a4:	0005c703          	lbu	a4,0(a1)
    16a8:	00f71763          	bne	a4,a5,16b6 <strcmp+0x18>
    16ac:	0505                	addi	a0,a0,1
    16ae:	0585                	addi	a1,a1,1
    16b0:	00054783          	lbu	a5,0(a0)
    16b4:	fbe5                	bnez	a5,16a4 <strcmp+0x6>
    16b6:	0005c503          	lbu	a0,0(a1)
    16ba:	40a7853b          	subw	a0,a5,a0
    16be:	8082                	ret

00000000000016c0 <strcpy>:
    16c0:	87aa                	mv	a5,a0
    16c2:	0585                	addi	a1,a1,1
    16c4:	0785                	addi	a5,a5,1
    16c6:	fff5c703          	lbu	a4,-1(a1)
    16ca:	fee78fa3          	sb	a4,-1(a5)
    16ce:	fb75                	bnez	a4,16c2 <strcpy+0x2>
    16d0:	8082                	ret

00000000000016d2 <strlen>:
    16d2:	00054783          	lbu	a5,0(a0)
    16d6:	cf81                	beqz	a5,16ee <strlen+0x1c>
    16d8:	0505                	addi	a0,a0,1
    16da:	87aa                	mv	a5,a0
    16dc:	4685                	li	a3,1
    16de:	9e89                	subw	a3,a3,a0
    16e0:	00f6853b          	addw	a0,a3,a5
    16e4:	0785                	addi	a5,a5,1
    16e6:	fff7c703          	lbu	a4,-1(a5)
    16ea:	fb7d                	bnez	a4,16e0 <strlen+0xe>
    16ec:	8082                	ret
    16ee:	4501                	li	a0,0
    16f0:	8082                	ret

00000000000016f2 <memset>:
    16f2:	ca19                	beqz	a2,1708 <memset+0x16>
    16f4:	87aa                	mv	a5,a0
    16f6:	1602                	slli	a2,a2,0x20
    16f8:	9201                	srli	a2,a2,0x20
    16fa:	00a60733          	add	a4,a2,a0
    16fe:	00b78023          	sb	a1,0(a5)
    1702:	0785                	addi	a5,a5,1
    1704:	fee79de3          	bne	a5,a4,16fe <memset+0xc>
    1708:	8082                	ret

000000000000170a <memcmp>:
    170a:	1101                	addi	sp,sp,-32
    170c:	ec06                	sd	ra,24(sp)
    170e:	e822                	sd	s0,16(sp)
    1710:	e426                	sd	s1,8(sp)
    1712:	e04a                	sd	s2,0(sp)
    1714:	892a                	mv	s2,a0
    1716:	842e                	mv	s0,a1
    1718:	84b2                	mv	s1,a2
    171a:	c915                	beqz	a0,174e <memcmp+0x44>
    171c:	c5ad                	beqz	a1,1786 <memcmp+0x7c>
    171e:	fff60713          	addi	a4,a2,-1
    1722:	c645                	beqz	a2,17ca <memcmp+0xc0>
    1724:	87ca                	mv	a5,s2
    1726:	00190613          	addi	a2,s2,1
    172a:	963a                	add	a2,a2,a4
    172c:	0007c683          	lbu	a3,0(a5)
    1730:	00044703          	lbu	a4,0(s0)
    1734:	08e69463          	bne	a3,a4,17bc <memcmp+0xb2>
    1738:	0785                	addi	a5,a5,1
    173a:	0405                	addi	s0,s0,1
    173c:	fec798e3          	bne	a5,a2,172c <memcmp+0x22>
    1740:	4501                	li	a0,0
    1742:	60e2                	ld	ra,24(sp)
    1744:	6442                	ld	s0,16(sp)
    1746:	64a2                	ld	s1,8(sp)
    1748:	6902                	ld	s2,0(sp)
    174a:	6105                	addi	sp,sp,32
    174c:	8082                	ret
    174e:	4501                	li	a0,0
    1750:	da6d                	beqz	a2,1742 <memcmp+0x38>
    1752:	03200693          	li	a3,50
    1756:	00002637          	lui	a2,0x2
    175a:	19060613          	addi	a2,a2,400 # 2190 <crctab+0x400>
    175e:	000025b7          	lui	a1,0x2
    1762:	1a058593          	addi	a1,a1,416 # 21a0 <crctab+0x410>
    1766:	4509                	li	a0,2
    1768:	00000097          	auipc	ra,0x0
    176c:	bbc080e7          	jalr	-1092(ra) # 1324 <fprintf>
    1770:	650d                	lui	a0,0x3
    1772:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1776:	00000097          	auipc	ra,0x0
    177a:	492080e7          	jalr	1170(ra) # 1c08 <exit>
    177e:	fff48713          	addi	a4,s1,-1
    1782:	f04d                	bnez	s0,1724 <memcmp+0x1a>
    1784:	a011                	j	1788 <memcmp+0x7e>
    1786:	c221                	beqz	a2,17c6 <memcmp+0xbc>
    1788:	03300693          	li	a3,51
    178c:	00002637          	lui	a2,0x2
    1790:	19060613          	addi	a2,a2,400 # 2190 <crctab+0x400>
    1794:	000025b7          	lui	a1,0x2
    1798:	1e858593          	addi	a1,a1,488 # 21e8 <crctab+0x458>
    179c:	4509                	li	a0,2
    179e:	00000097          	auipc	ra,0x0
    17a2:	b86080e7          	jalr	-1146(ra) # 1324 <fprintf>
    17a6:	650d                	lui	a0,0x3
    17a8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17ac:	00000097          	auipc	ra,0x0
    17b0:	45c080e7          	jalr	1116(ra) # 1c08 <exit>
    17b4:	fff48713          	addi	a4,s1,-1
    17b8:	4401                	li	s0,0
    17ba:	b7ad                	j	1724 <memcmp+0x1a>
    17bc:	4505                	li	a0,1
    17be:	f8d762e3          	bltu	a4,a3,1742 <memcmp+0x38>
    17c2:	557d                	li	a0,-1
    17c4:	bfbd                	j	1742 <memcmp+0x38>
    17c6:	4501                	li	a0,0
    17c8:	bfad                	j	1742 <memcmp+0x38>
    17ca:	4501                	li	a0,0
    17cc:	bf9d                	j	1742 <memcmp+0x38>

00000000000017ce <memcpy>:
    17ce:	1101                	addi	sp,sp,-32
    17d0:	ec06                	sd	ra,24(sp)
    17d2:	e822                	sd	s0,16(sp)
    17d4:	e426                	sd	s1,8(sp)
    17d6:	e04a                	sd	s2,0(sp)
    17d8:	84aa                	mv	s1,a0
    17da:	842e                	mv	s0,a1
    17dc:	8932                	mv	s2,a2
    17de:	c51d                	beqz	a0,180c <memcpy+0x3e>
    17e0:	c1ad                	beqz	a1,1842 <memcpy+0x74>
    17e2:	fff60693          	addi	a3,a2,-1
    17e6:	ce01                	beqz	a2,17fe <memcpy+0x30>
    17e8:	0685                	addi	a3,a3,1
    17ea:	96a6                	add	a3,a3,s1
    17ec:	87a6                	mv	a5,s1
    17ee:	0405                	addi	s0,s0,1
    17f0:	0785                	addi	a5,a5,1
    17f2:	fff44703          	lbu	a4,-1(s0)
    17f6:	fee78fa3          	sb	a4,-1(a5)
    17fa:	fed79ae3          	bne	a5,a3,17ee <memcpy+0x20>
    17fe:	8526                	mv	a0,s1
    1800:	60e2                	ld	ra,24(sp)
    1802:	6442                	ld	s0,16(sp)
    1804:	64a2                	ld	s1,8(sp)
    1806:	6902                	ld	s2,0(sp)
    1808:	6105                	addi	sp,sp,32
    180a:	8082                	ret
    180c:	da6d                	beqz	a2,17fe <memcpy+0x30>
    180e:	04000693          	li	a3,64
    1812:	00002637          	lui	a2,0x2
    1816:	19060613          	addi	a2,a2,400 # 2190 <crctab+0x400>
    181a:	000025b7          	lui	a1,0x2
    181e:	23058593          	addi	a1,a1,560 # 2230 <crctab+0x4a0>
    1822:	4509                	li	a0,2
    1824:	00000097          	auipc	ra,0x0
    1828:	b00080e7          	jalr	-1280(ra) # 1324 <fprintf>
    182c:	650d                	lui	a0,0x3
    182e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1832:	00000097          	auipc	ra,0x0
    1836:	3d6080e7          	jalr	982(ra) # 1c08 <exit>
    183a:	fff90693          	addi	a3,s2,-1
    183e:	f44d                	bnez	s0,17e8 <memcpy+0x1a>
    1840:	a011                	j	1844 <memcpy+0x76>
    1842:	de55                	beqz	a2,17fe <memcpy+0x30>
    1844:	04100693          	li	a3,65
    1848:	00002637          	lui	a2,0x2
    184c:	19060613          	addi	a2,a2,400 # 2190 <crctab+0x400>
    1850:	000025b7          	lui	a1,0x2
    1854:	27858593          	addi	a1,a1,632 # 2278 <crctab+0x4e8>
    1858:	4509                	li	a0,2
    185a:	00000097          	auipc	ra,0x0
    185e:	aca080e7          	jalr	-1334(ra) # 1324 <fprintf>
    1862:	650d                	lui	a0,0x3
    1864:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1868:	00000097          	auipc	ra,0x0
    186c:	3a0080e7          	jalr	928(ra) # 1c08 <exit>
    1870:	fff90693          	addi	a3,s2,-1
    1874:	4401                	li	s0,0
    1876:	bf8d                	j	17e8 <memcpy+0x1a>

0000000000001878 <itoa>:
    1878:	1101                	addi	sp,sp,-32
    187a:	ec06                	sd	ra,24(sp)
    187c:	e822                	sd	s0,16(sp)
    187e:	e426                	sd	s1,8(sp)
    1880:	842a                	mv	s0,a0
    1882:	41f5d71b          	sraiw	a4,a1,0x1f
    1886:	00e5c7b3          	xor	a5,a1,a4
    188a:	9f99                	subw	a5,a5,a4
    188c:	84aa                	mv	s1,a0
    188e:	862a                	mv	a2,a0
    1890:	4681                	li	a3,0
    1892:	4529                	li	a0,10
    1894:	4825                	li	a6,9
    1896:	88b6                	mv	a7,a3
    1898:	2685                	addiw	a3,a3,1
    189a:	02a7e73b          	remw	a4,a5,a0
    189e:	0307071b          	addiw	a4,a4,48
    18a2:	00e60023          	sb	a4,0(a2)
    18a6:	873e                	mv	a4,a5
    18a8:	02a7c7bb          	divw	a5,a5,a0
    18ac:	0605                	addi	a2,a2,1
    18ae:	fee844e3          	blt	a6,a4,1896 <itoa+0x1e>
    18b2:	0405c863          	bltz	a1,1902 <itoa+0x8a>
    18b6:	96a2                	add	a3,a3,s0
    18b8:	00068023          	sb	zero,0(a3)
    18bc:	8522                	mv	a0,s0
    18be:	00000097          	auipc	ra,0x0
    18c2:	e14080e7          	jalr	-492(ra) # 16d2 <strlen>
    18c6:	fff5071b          	addiw	a4,a0,-1
    18ca:	02e05763          	blez	a4,18f8 <itoa+0x80>
    18ce:	9722                	add	a4,a4,s0
    18d0:	4681                	li	a3,0
    18d2:	0004c783          	lbu	a5,0(s1)
    18d6:	00074603          	lbu	a2,0(a4)
    18da:	00c48023          	sb	a2,0(s1)
    18de:	00f70023          	sb	a5,0(a4)
    18e2:	0016879b          	addiw	a5,a3,1
    18e6:	0007869b          	sext.w	a3,a5
    18ea:	0485                	addi	s1,s1,1
    18ec:	177d                	addi	a4,a4,-1
    18ee:	fff7c793          	not	a5,a5
    18f2:	9fa9                	addw	a5,a5,a0
    18f4:	fcf6cfe3          	blt	a3,a5,18d2 <itoa+0x5a>
    18f8:	60e2                	ld	ra,24(sp)
    18fa:	6442                	ld	s0,16(sp)
    18fc:	64a2                	ld	s1,8(sp)
    18fe:	6105                	addi	sp,sp,32
    1900:	8082                	ret
    1902:	96a2                	add	a3,a3,s0
    1904:	02d00793          	li	a5,45
    1908:	00f68023          	sb	a5,0(a3)
    190c:	0028869b          	addiw	a3,a7,2
    1910:	b75d                	j	18b6 <itoa+0x3e>

0000000000001912 <atoi>:
    1912:	00054783          	lbu	a5,0(a0)
    1916:	02000713          	li	a4,32
    191a:	00e79763          	bne	a5,a4,1928 <atoi+0x16>
    191e:	0505                	addi	a0,a0,1
    1920:	00054783          	lbu	a5,0(a0)
    1924:	fee78de3          	beq	a5,a4,191e <atoi+0xc>
    1928:	02b00713          	li	a4,43
    192c:	04e78663          	beq	a5,a4,1978 <atoi+0x66>
    1930:	02d00713          	li	a4,45
    1934:	4805                	li	a6,1
    1936:	04e78463          	beq	a5,a4,197e <atoi+0x6c>
    193a:	00054683          	lbu	a3,0(a0)
    193e:	fd06879b          	addiw	a5,a3,-48
    1942:	0ff7f793          	andi	a5,a5,255
    1946:	4725                	li	a4,9
    1948:	02f76e63          	bltu	a4,a5,1984 <atoi+0x72>
    194c:	4601                	li	a2,0
    194e:	45a5                	li	a1,9
    1950:	0505                	addi	a0,a0,1
    1952:	0026179b          	slliw	a5,a2,0x2
    1956:	9fb1                	addw	a5,a5,a2
    1958:	0017979b          	slliw	a5,a5,0x1
    195c:	9fb5                	addw	a5,a5,a3
    195e:	fd07861b          	addiw	a2,a5,-48
    1962:	00054683          	lbu	a3,0(a0)
    1966:	fd06871b          	addiw	a4,a3,-48
    196a:	0ff77713          	andi	a4,a4,255
    196e:	fee5f1e3          	bgeu	a1,a4,1950 <atoi+0x3e>
    1972:	02c8053b          	mulw	a0,a6,a2
    1976:	8082                	ret
    1978:	0505                	addi	a0,a0,1
    197a:	4805                	li	a6,1
    197c:	bf7d                	j	193a <atoi+0x28>
    197e:	0505                	addi	a0,a0,1
    1980:	587d                	li	a6,-1
    1982:	bf65                	j	193a <atoi+0x28>
    1984:	4601                	li	a2,0
    1986:	b7f5                	j	1972 <atoi+0x60>

0000000000001988 <check_file_handle>:
    1988:	d8010113          	addi	sp,sp,-640
    198c:	26113c23          	sd	ra,632(sp)
    1990:	26813823          	sd	s0,624(sp)
    1994:	26913423          	sd	s1,616(sp)
    1998:	27213023          	sd	s2,608(sp)
    199c:	25313c23          	sd	s3,600(sp)
    19a0:	25413823          	sd	s4,592(sp)
    19a4:	25513423          	sd	s5,584(sp)
    19a8:	25613023          	sd	s6,576(sp)
    19ac:	23713c23          	sd	s7,568(sp)
    19b0:	23813823          	sd	s8,560(sp)
    19b4:	23913423          	sd	s9,552(sp)
    19b8:	23a13023          	sd	s10,544(sp)
    19bc:	21b13c23          	sd	s11,536(sp)
    19c0:	8baa                	mv	s7,a0
    19c2:	8a2e                	mv	s4,a1
    19c4:	8c32                	mv	s8,a2
    19c6:	89b6                	mv	s3,a3
    19c8:	040c                	addi	a1,sp,512
    19ca:	00000097          	auipc	ra,0x0
    19ce:	28e080e7          	jalr	654(ra) # 1c58 <fstat>
    19d2:	20813603          	ld	a2,520(sp)
    19d6:	03361163          	bne	a2,s3,19f8 <check_file_handle+0x70>
    19da:	06098763          	beqz	s3,1a48 <check_file_handle+0xc0>
    19de:	4901                	li	s2,0
    19e0:	20000a93          	li	s5,512
    19e4:	00002cb7          	lui	s9,0x2
    19e8:	00002db7          	lui	s11,0x2
    19ec:	6b0d                	lui	s6,0x3
    19ee:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19f2:	00002d37          	lui	s10,0x2
    19f6:	aa39                	j	1b14 <check_file_handle+0x18c>
    19f8:	86ce                	mv	a3,s3
    19fa:	85d2                	mv	a1,s4
    19fc:	00002537          	lui	a0,0x2
    1a00:	2c050513          	addi	a0,a0,704 # 22c0 <crctab+0x530>
    1a04:	00000097          	auipc	ra,0x0
    1a08:	942080e7          	jalr	-1726(ra) # 1346 <printf>
    1a0c:	fc0999e3          	bnez	s3,19de <check_file_handle+0x56>
    1a10:	20813683          	ld	a3,520(sp)
    1a14:	03368a63          	beq	a3,s3,1a48 <check_file_handle+0xc0>
    1a18:	0a600813          	li	a6,166
    1a1c:	000027b7          	lui	a5,0x2
    1a20:	19078793          	addi	a5,a5,400 # 2190 <crctab+0x400>
    1a24:	874e                	mv	a4,s3
    1a26:	8652                	mv	a2,s4
    1a28:	000025b7          	lui	a1,0x2
    1a2c:	39058593          	addi	a1,a1,912 # 2390 <crctab+0x600>
    1a30:	4509                	li	a0,2
    1a32:	00000097          	auipc	ra,0x0
    1a36:	8f2080e7          	jalr	-1806(ra) # 1324 <fprintf>
    1a3a:	650d                	lui	a0,0x3
    1a3c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a40:	00000097          	auipc	ra,0x0
    1a44:	1c8080e7          	jalr	456(ra) # 1c08 <exit>
    1a48:	85d2                	mv	a1,s4
    1a4a:	00002537          	lui	a0,0x2
    1a4e:	3d850513          	addi	a0,a0,984 # 23d8 <crctab+0x648>
    1a52:	00000097          	auipc	ra,0x0
    1a56:	8f4080e7          	jalr	-1804(ra) # 1346 <printf>
    1a5a:	27813083          	ld	ra,632(sp)
    1a5e:	27013403          	ld	s0,624(sp)
    1a62:	26813483          	ld	s1,616(sp)
    1a66:	26013903          	ld	s2,608(sp)
    1a6a:	25813983          	ld	s3,600(sp)
    1a6e:	25013a03          	ld	s4,592(sp)
    1a72:	24813a83          	ld	s5,584(sp)
    1a76:	24013b03          	ld	s6,576(sp)
    1a7a:	23813b83          	ld	s7,568(sp)
    1a7e:	23013c03          	ld	s8,560(sp)
    1a82:	22813c83          	ld	s9,552(sp)
    1a86:	22013d03          	ld	s10,544(sp)
    1a8a:	21813d83          	ld	s11,536(sp)
    1a8e:	28010113          	addi	sp,sp,640
    1a92:	8082                	ret
    1a94:	09d00893          	li	a7,157
    1a98:	190c8813          	addi	a6,s9,400 # 2190 <crctab+0x400>
    1a9c:	87aa                	mv	a5,a0
    1a9e:	8752                	mv	a4,s4
    1aa0:	86ca                	mv	a3,s2
    1aa2:	8622                	mv	a2,s0
    1aa4:	2f0d8593          	addi	a1,s11,752 # 22f0 <crctab+0x560>
    1aa8:	4509                	li	a0,2
    1aaa:	00000097          	auipc	ra,0x0
    1aae:	87a080e7          	jalr	-1926(ra) # 1324 <fprintf>
    1ab2:	855a                	mv	a0,s6
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	154080e7          	jalr	340(ra) # 1c08 <exit>
    1abc:	a89d                	j	1b32 <check_file_handle+0x1aa>
    1abe:	00160593          	addi	a1,a2,1
    1ac2:	0285f163          	bgeu	a1,s0,1ae4 <check_file_handle+0x15c>
    1ac6:	00c10733          	add	a4,sp,a2
    1aca:	00b487b3          	add	a5,s1,a1
    1ace:	00174683          	lbu	a3,1(a4)
    1ad2:	0007c783          	lbu	a5,0(a5)
    1ad6:	00f68763          	beq	a3,a5,1ae4 <check_file_handle+0x15c>
    1ada:	0585                	addi	a1,a1,1
    1adc:	0705                	addi	a4,a4,1
    1ade:	feb416e3          	bne	s0,a1,1aca <check_file_handle+0x142>
    1ae2:	85a2                	mv	a1,s0
    1ae4:	08100813          	li	a6,129
    1ae8:	190c8793          	addi	a5,s9,400
    1aec:	8752                	mv	a4,s4
    1aee:	012606b3          	add	a3,a2,s2
    1af2:	40c58633          	sub	a2,a1,a2
    1af6:	338d0593          	addi	a1,s10,824 # 2338 <crctab+0x5a8>
    1afa:	4509                	li	a0,2
    1afc:	00000097          	auipc	ra,0x0
    1b00:	828080e7          	jalr	-2008(ra) # 1324 <fprintf>
    1b04:	855a                	mv	a0,s6
    1b06:	00000097          	auipc	ra,0x0
    1b0a:	102080e7          	jalr	258(ra) # 1c08 <exit>
    1b0e:	9922                	add	s2,s2,s0
    1b10:	f13970e3          	bgeu	s2,s3,1a10 <check_file_handle+0x88>
    1b14:	41298433          	sub	s0,s3,s2
    1b18:	008af363          	bgeu	s5,s0,1b1e <check_file_handle+0x196>
    1b1c:	8456                	mv	s0,s5
    1b1e:	0004061b          	sext.w	a2,s0
    1b22:	858a                	mv	a1,sp
    1b24:	855e                	mv	a0,s7
    1b26:	00000097          	auipc	ra,0x0
    1b2a:	10a080e7          	jalr	266(ra) # 1c30 <read>
    1b2e:	f68513e3          	bne	a0,s0,1a94 <check_file_handle+0x10c>
    1b32:	012c04b3          	add	s1,s8,s2
    1b36:	8622                	mv	a2,s0
    1b38:	85a6                	mv	a1,s1
    1b3a:	850a                	mv	a0,sp
    1b3c:	00000097          	auipc	ra,0x0
    1b40:	bce080e7          	jalr	-1074(ra) # 170a <memcmp>
    1b44:	d569                	beqz	a0,1b0e <check_file_handle+0x186>
    1b46:	03298163          	beq	s3,s2,1b68 <check_file_handle+0x1e0>
    1b4a:	870a                	mv	a4,sp
    1b4c:	4601                	li	a2,0
    1b4e:	00c487b3          	add	a5,s1,a2
    1b52:	00074683          	lbu	a3,0(a4)
    1b56:	0007c783          	lbu	a5,0(a5)
    1b5a:	f6f692e3          	bne	a3,a5,1abe <check_file_handle+0x136>
    1b5e:	0605                	addi	a2,a2,1
    1b60:	0705                	addi	a4,a4,1
    1b62:	fe8666e3          	bltu	a2,s0,1b4e <check_file_handle+0x1c6>
    1b66:	bfa1                	j	1abe <check_file_handle+0x136>
    1b68:	4601                	li	a2,0
    1b6a:	4585                	li	a1,1
    1b6c:	bfa5                	j	1ae4 <check_file_handle+0x15c>

0000000000001b6e <check_file>:
    1b6e:	7179                	addi	sp,sp,-48
    1b70:	f406                	sd	ra,40(sp)
    1b72:	f022                	sd	s0,32(sp)
    1b74:	ec26                	sd	s1,24(sp)
    1b76:	e84a                	sd	s2,16(sp)
    1b78:	e44e                	sd	s3,8(sp)
    1b7a:	84aa                	mv	s1,a0
    1b7c:	892e                	mv	s2,a1
    1b7e:	89b2                	mv	s3,a2
    1b80:	4581                	li	a1,0
    1b82:	00000097          	auipc	ra,0x0
    1b86:	0a6080e7          	jalr	166(ra) # 1c28 <open>
    1b8a:	842a                	mv	s0,a0
    1b8c:	4789                	li	a5,2
    1b8e:	02a7df63          	bge	a5,a0,1bcc <check_file+0x5e>
    1b92:	86ce                	mv	a3,s3
    1b94:	864a                	mv	a2,s2
    1b96:	85a6                	mv	a1,s1
    1b98:	8522                	mv	a0,s0
    1b9a:	00000097          	auipc	ra,0x0
    1b9e:	dee080e7          	jalr	-530(ra) # 1988 <check_file_handle>
    1ba2:	85a6                	mv	a1,s1
    1ba4:	00002537          	lui	a0,0x2
    1ba8:	46050513          	addi	a0,a0,1120 # 2460 <crctab+0x6d0>
    1bac:	fffff097          	auipc	ra,0xfffff
    1bb0:	79a080e7          	jalr	1946(ra) # 1346 <printf>
    1bb4:	8522                	mv	a0,s0
    1bb6:	00000097          	auipc	ra,0x0
    1bba:	09a080e7          	jalr	154(ra) # 1c50 <close>
    1bbe:	70a2                	ld	ra,40(sp)
    1bc0:	7402                	ld	s0,32(sp)
    1bc2:	64e2                	ld	s1,24(sp)
    1bc4:	6942                	ld	s2,16(sp)
    1bc6:	69a2                	ld	s3,8(sp)
    1bc8:	6145                	addi	sp,sp,48
    1bca:	8082                	ret
    1bcc:	0ae00713          	li	a4,174
    1bd0:	000026b7          	lui	a3,0x2
    1bd4:	19068693          	addi	a3,a3,400 # 2190 <crctab+0x400>
    1bd8:	8626                	mv	a2,s1
    1bda:	000025b7          	lui	a1,0x2
    1bde:	3f858593          	addi	a1,a1,1016 # 23f8 <crctab+0x668>
    1be2:	4509                	li	a0,2
    1be4:	fffff097          	auipc	ra,0xfffff
    1be8:	740080e7          	jalr	1856(ra) # 1324 <fprintf>
    1bec:	650d                	lui	a0,0x3
    1bee:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bf2:	00000097          	auipc	ra,0x0
    1bf6:	016080e7          	jalr	22(ra) # 1c08 <exit>
    1bfa:	bf61                	j	1b92 <check_file+0x24>

0000000000001bfc <r_sp>:
    1bfc:	850a                	mv	a0,sp
    1bfe:	8082                	ret

0000000000001c00 <halt>:
    1c00:	4885                	li	a7,1
    1c02:	00000073          	ecall
    1c06:	8082                	ret

0000000000001c08 <exit>:
    1c08:	4889                	li	a7,2
    1c0a:	00000073          	ecall
    1c0e:	8082                	ret

0000000000001c10 <exec>:
    1c10:	488d                	li	a7,3
    1c12:	00000073          	ecall
    1c16:	8082                	ret

0000000000001c18 <wait>:
    1c18:	4891                	li	a7,4
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret

0000000000001c20 <remove>:
    1c20:	4895                	li	a7,5
    1c22:	00000073          	ecall
    1c26:	8082                	ret

0000000000001c28 <open>:
    1c28:	4899                	li	a7,6
    1c2a:	00000073          	ecall
    1c2e:	8082                	ret

0000000000001c30 <read>:
    1c30:	489d                	li	a7,7
    1c32:	00000073          	ecall
    1c36:	8082                	ret

0000000000001c38 <write>:
    1c38:	48a1                	li	a7,8
    1c3a:	00000073          	ecall
    1c3e:	8082                	ret

0000000000001c40 <seek>:
    1c40:	48a5                	li	a7,9
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <tell>:
    1c48:	48a9                	li	a7,10
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret

0000000000001c50 <close>:
    1c50:	48ad                	li	a7,11
    1c52:	00000073          	ecall
    1c56:	8082                	ret

0000000000001c58 <fstat>:
    1c58:	48b1                	li	a7,12
    1c5a:	00000073          	ecall
    1c5e:	8082                	ret

0000000000001c60 <mmap>:
    1c60:	48b5                	li	a7,13
    1c62:	00000073          	ecall
    1c66:	8082                	ret

0000000000001c68 <munmap>:
    1c68:	48b9                	li	a7,14
    1c6a:	00000073          	ecall
    1c6e:	8082                	ret

0000000000001c70 <chdir>:
    1c70:	48bd                	li	a7,15
    1c72:	00000073          	ecall
    1c76:	8082                	ret

0000000000001c78 <mkdir>:
    1c78:	48c1                	li	a7,16
    1c7a:	00000073          	ecall
    1c7e:	8082                	ret
