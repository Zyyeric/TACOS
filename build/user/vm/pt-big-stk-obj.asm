
build/user/vm/pt-big-stk-obj:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7129                	addi	sp,sp,-320
    1002:	fe06                	sd	ra,312(sp)
    1004:	fa22                	sd	s0,304(sp)
    1006:	f626                	sd	s1,296(sp)
    1008:	f24a                	sd	s2,288(sp)
    100a:	7341                	lui	t1,0xffff0
    100c:	911a                	add	sp,sp,t1
    100e:	74c1                	lui	s1,0xffff0
    1010:	ef848413          	addi	s0,s1,-264 # fffffffffffefef8 <s+0xfffffffffffecee8>
    1014:	6941                	lui	s2,0x10
    1016:	11090793          	addi	a5,s2,272 # 10110 <s+0xd100>
    101a:	0818                	addi	a4,sp,16
    101c:	97ba                	add	a5,a5,a4
    101e:	943e                	add	s0,s0,a5
    1020:	4619                	li	a2,6
    1022:	000025b7          	lui	a1,0x2
    1026:	ca058593          	addi	a1,a1,-864 # 1ca0 <mkdir+0x10>
    102a:	8522                	mv	a0,s0
    102c:	00000097          	auipc	ra,0x0
    1030:	594080e7          	jalr	1428(ra) # 15c0 <arc4_init>
    1034:	11090793          	addi	a5,s2,272
    1038:	0818                	addi	a4,sp,16
    103a:	97ba                	add	a5,a5,a4
    103c:	97a6                	add	a5,a5,s1
    103e:	e43e                	sd	a5,8(sp)
    1040:	6641                	lui	a2,0x10
    1042:	4581                	li	a1,0
    1044:	853e                	mv	a0,a5
    1046:	00000097          	auipc	ra,0x0
    104a:	6c4080e7          	jalr	1732(ra) # 170a <memset>
    104e:	6641                	lui	a2,0x10
    1050:	65a2                	ld	a1,8(sp)
    1052:	8522                	mv	a0,s0
    1054:	00000097          	auipc	ra,0x0
    1058:	5d0080e7          	jalr	1488(ra) # 1624 <arc4_crypt>
    105c:	65c1                	lui	a1,0x10
    105e:	6522                	ld	a0,8(sp)
    1060:	00000097          	auipc	ra,0x0
    1064:	326080e7          	jalr	806(ra) # 1386 <cksum>
    1068:	2501                	sext.w	a0,a0
    106a:	c218e7b7          	lui	a5,0xc218e
    106e:	03678793          	addi	a5,a5,54 # ffffffffc218e036 <s+0xffffffffc218b026>
    1072:	00f51a63          	bne	a0,a5,1086 <main+0x86>
    1076:	6341                	lui	t1,0x10
    1078:	911a                	add	sp,sp,t1
    107a:	70f2                	ld	ra,312(sp)
    107c:	7452                	ld	s0,304(sp)
    107e:	74b2                	ld	s1,296(sp)
    1080:	7912                	ld	s2,288(sp)
    1082:	6131                	addi	sp,sp,320
    1084:	8082                	ret
    1086:	46c1                	li	a3,16
    1088:	00002637          	lui	a2,0x2
    108c:	ca860613          	addi	a2,a2,-856 # 1ca8 <mkdir+0x18>
    1090:	000025b7          	lui	a1,0x2
    1094:	cc858593          	addi	a1,a1,-824 # 1cc8 <mkdir+0x38>
    1098:	4509                	li	a0,2
    109a:	00000097          	auipc	ra,0x0
    109e:	2a2080e7          	jalr	674(ra) # 133c <fprintf>
    10a2:	650d                	lui	a0,0x3
    10a4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10a8:	00001097          	auipc	ra,0x1
    10ac:	b78080e7          	jalr	-1160(ra) # 1c20 <exit>
    10b0:	b7d9                	j	1076 <main+0x76>

00000000000010b2 <putc>:
    10b2:	1101                	addi	sp,sp,-32
    10b4:	ec06                	sd	ra,24(sp)
    10b6:	00b107a3          	sb	a1,15(sp)
    10ba:	4605                	li	a2,1
    10bc:	00f10593          	addi	a1,sp,15
    10c0:	00001097          	auipc	ra,0x1
    10c4:	b90080e7          	jalr	-1136(ra) # 1c50 <write>
    10c8:	60e2                	ld	ra,24(sp)
    10ca:	6105                	addi	sp,sp,32
    10cc:	8082                	ret

00000000000010ce <printint>:
    10ce:	7179                	addi	sp,sp,-48
    10d0:	f406                	sd	ra,40(sp)
    10d2:	f022                	sd	s0,32(sp)
    10d4:	ec26                	sd	s1,24(sp)
    10d6:	e84a                	sd	s2,16(sp)
    10d8:	84aa                	mv	s1,a0
    10da:	c299                	beqz	a3,10e0 <printint+0x12>
    10dc:	0805c363          	bltz	a1,1162 <printint+0x94>
    10e0:	2581                	sext.w	a1,a1
    10e2:	4881                	li	a7,0
    10e4:	868a                	mv	a3,sp
    10e6:	4701                	li	a4,0
    10e8:	2601                	sext.w	a2,a2
    10ea:	00002537          	lui	a0,0x2
    10ee:	d2850513          	addi	a0,a0,-728 # 1d28 <digits>
    10f2:	883a                	mv	a6,a4
    10f4:	2705                	addiw	a4,a4,1
    10f6:	02c5f7bb          	remuw	a5,a1,a2
    10fa:	1782                	slli	a5,a5,0x20
    10fc:	9381                	srli	a5,a5,0x20
    10fe:	97aa                	add	a5,a5,a0
    1100:	0007c783          	lbu	a5,0(a5)
    1104:	00f68023          	sb	a5,0(a3)
    1108:	0005879b          	sext.w	a5,a1
    110c:	02c5d5bb          	divuw	a1,a1,a2
    1110:	0685                	addi	a3,a3,1
    1112:	fec7f0e3          	bgeu	a5,a2,10f2 <printint+0x24>
    1116:	00088a63          	beqz	a7,112a <printint+0x5c>
    111a:	081c                	addi	a5,sp,16
    111c:	973e                	add	a4,a4,a5
    111e:	02d00793          	li	a5,45
    1122:	fef70823          	sb	a5,-16(a4)
    1126:	0028071b          	addiw	a4,a6,2
    112a:	02e05663          	blez	a4,1156 <printint+0x88>
    112e:	00e10433          	add	s0,sp,a4
    1132:	fff10913          	addi	s2,sp,-1
    1136:	993a                	add	s2,s2,a4
    1138:	377d                	addiw	a4,a4,-1
    113a:	1702                	slli	a4,a4,0x20
    113c:	9301                	srli	a4,a4,0x20
    113e:	40e90933          	sub	s2,s2,a4
    1142:	fff44583          	lbu	a1,-1(s0)
    1146:	8526                	mv	a0,s1
    1148:	00000097          	auipc	ra,0x0
    114c:	f6a080e7          	jalr	-150(ra) # 10b2 <putc>
    1150:	147d                	addi	s0,s0,-1
    1152:	ff2418e3          	bne	s0,s2,1142 <printint+0x74>
    1156:	70a2                	ld	ra,40(sp)
    1158:	7402                	ld	s0,32(sp)
    115a:	64e2                	ld	s1,24(sp)
    115c:	6942                	ld	s2,16(sp)
    115e:	6145                	addi	sp,sp,48
    1160:	8082                	ret
    1162:	40b005bb          	negw	a1,a1
    1166:	4885                	li	a7,1
    1168:	bfb5                	j	10e4 <printint+0x16>

000000000000116a <vprintf>:
    116a:	7159                	addi	sp,sp,-112
    116c:	f486                	sd	ra,104(sp)
    116e:	f0a2                	sd	s0,96(sp)
    1170:	eca6                	sd	s1,88(sp)
    1172:	e8ca                	sd	s2,80(sp)
    1174:	e4ce                	sd	s3,72(sp)
    1176:	e0d2                	sd	s4,64(sp)
    1178:	fc56                	sd	s5,56(sp)
    117a:	f85a                	sd	s6,48(sp)
    117c:	f45e                	sd	s7,40(sp)
    117e:	f062                	sd	s8,32(sp)
    1180:	ec66                	sd	s9,24(sp)
    1182:	e86a                	sd	s10,16(sp)
    1184:	e46e                	sd	s11,8(sp)
    1186:	0005c483          	lbu	s1,0(a1)
    118a:	18048a63          	beqz	s1,131e <vprintf+0x1b4>
    118e:	8a2a                	mv	s4,a0
    1190:	8ab2                	mv	s5,a2
    1192:	00158413          	addi	s0,a1,1
    1196:	4901                	li	s2,0
    1198:	02500993          	li	s3,37
    119c:	06400b93          	li	s7,100
    11a0:	06c00c13          	li	s8,108
    11a4:	07800c93          	li	s9,120
    11a8:	07000d13          	li	s10,112
    11ac:	00002db7          	lui	s11,0x2
    11b0:	00002b37          	lui	s6,0x2
    11b4:	d28b0b13          	addi	s6,s6,-728 # 1d28 <digits>
    11b8:	a839                	j	11d6 <vprintf+0x6c>
    11ba:	85a6                	mv	a1,s1
    11bc:	8552                	mv	a0,s4
    11be:	00000097          	auipc	ra,0x0
    11c2:	ef4080e7          	jalr	-268(ra) # 10b2 <putc>
    11c6:	a019                	j	11cc <vprintf+0x62>
    11c8:	01390f63          	beq	s2,s3,11e6 <vprintf+0x7c>
    11cc:	0405                	addi	s0,s0,1
    11ce:	fff44483          	lbu	s1,-1(s0)
    11d2:	14048663          	beqz	s1,131e <vprintf+0x1b4>
    11d6:	0004879b          	sext.w	a5,s1
    11da:	fe0917e3          	bnez	s2,11c8 <vprintf+0x5e>
    11de:	fd379ee3          	bne	a5,s3,11ba <vprintf+0x50>
    11e2:	893e                	mv	s2,a5
    11e4:	b7e5                	j	11cc <vprintf+0x62>
    11e6:	05778063          	beq	a5,s7,1226 <vprintf+0xbc>
    11ea:	05878c63          	beq	a5,s8,1242 <vprintf+0xd8>
    11ee:	07978863          	beq	a5,s9,125e <vprintf+0xf4>
    11f2:	09a78463          	beq	a5,s10,127a <vprintf+0x110>
    11f6:	07300713          	li	a4,115
    11fa:	0ce78263          	beq	a5,a4,12be <vprintf+0x154>
    11fe:	06300713          	li	a4,99
    1202:	0ee78763          	beq	a5,a4,12f0 <vprintf+0x186>
    1206:	11378163          	beq	a5,s3,1308 <vprintf+0x19e>
    120a:	85ce                	mv	a1,s3
    120c:	8552                	mv	a0,s4
    120e:	00000097          	auipc	ra,0x0
    1212:	ea4080e7          	jalr	-348(ra) # 10b2 <putc>
    1216:	85a6                	mv	a1,s1
    1218:	8552                	mv	a0,s4
    121a:	00000097          	auipc	ra,0x0
    121e:	e98080e7          	jalr	-360(ra) # 10b2 <putc>
    1222:	4901                	li	s2,0
    1224:	b765                	j	11cc <vprintf+0x62>
    1226:	008a8493          	addi	s1,s5,8
    122a:	4685                	li	a3,1
    122c:	4629                	li	a2,10
    122e:	000aa583          	lw	a1,0(s5)
    1232:	8552                	mv	a0,s4
    1234:	00000097          	auipc	ra,0x0
    1238:	e9a080e7          	jalr	-358(ra) # 10ce <printint>
    123c:	8aa6                	mv	s5,s1
    123e:	4901                	li	s2,0
    1240:	b771                	j	11cc <vprintf+0x62>
    1242:	008a8493          	addi	s1,s5,8
    1246:	4681                	li	a3,0
    1248:	4629                	li	a2,10
    124a:	000aa583          	lw	a1,0(s5)
    124e:	8552                	mv	a0,s4
    1250:	00000097          	auipc	ra,0x0
    1254:	e7e080e7          	jalr	-386(ra) # 10ce <printint>
    1258:	8aa6                	mv	s5,s1
    125a:	4901                	li	s2,0
    125c:	bf85                	j	11cc <vprintf+0x62>
    125e:	008a8493          	addi	s1,s5,8
    1262:	4681                	li	a3,0
    1264:	4641                	li	a2,16
    1266:	000aa583          	lw	a1,0(s5)
    126a:	8552                	mv	a0,s4
    126c:	00000097          	auipc	ra,0x0
    1270:	e62080e7          	jalr	-414(ra) # 10ce <printint>
    1274:	8aa6                	mv	s5,s1
    1276:	4901                	li	s2,0
    1278:	bf91                	j	11cc <vprintf+0x62>
    127a:	008a8913          	addi	s2,s5,8
    127e:	000aba83          	ld	s5,0(s5)
    1282:	03000593          	li	a1,48
    1286:	8552                	mv	a0,s4
    1288:	00000097          	auipc	ra,0x0
    128c:	e2a080e7          	jalr	-470(ra) # 10b2 <putc>
    1290:	85e6                	mv	a1,s9
    1292:	8552                	mv	a0,s4
    1294:	00000097          	auipc	ra,0x0
    1298:	e1e080e7          	jalr	-482(ra) # 10b2 <putc>
    129c:	44c1                	li	s1,16
    129e:	03cad793          	srli	a5,s5,0x3c
    12a2:	97da                	add	a5,a5,s6
    12a4:	0007c583          	lbu	a1,0(a5)
    12a8:	8552                	mv	a0,s4
    12aa:	00000097          	auipc	ra,0x0
    12ae:	e08080e7          	jalr	-504(ra) # 10b2 <putc>
    12b2:	0a92                	slli	s5,s5,0x4
    12b4:	34fd                	addiw	s1,s1,-1
    12b6:	f4e5                	bnez	s1,129e <vprintf+0x134>
    12b8:	8aca                	mv	s5,s2
    12ba:	4901                	li	s2,0
    12bc:	bf01                	j	11cc <vprintf+0x62>
    12be:	008a8913          	addi	s2,s5,8
    12c2:	000ab483          	ld	s1,0(s5)
    12c6:	c085                	beqz	s1,12e6 <vprintf+0x17c>
    12c8:	0004c583          	lbu	a1,0(s1)
    12cc:	c5b1                	beqz	a1,1318 <vprintf+0x1ae>
    12ce:	8552                	mv	a0,s4
    12d0:	00000097          	auipc	ra,0x0
    12d4:	de2080e7          	jalr	-542(ra) # 10b2 <putc>
    12d8:	0485                	addi	s1,s1,1
    12da:	0004c583          	lbu	a1,0(s1)
    12de:	f9e5                	bnez	a1,12ce <vprintf+0x164>
    12e0:	8aca                	mv	s5,s2
    12e2:	4901                	li	s2,0
    12e4:	b5e5                	j	11cc <vprintf+0x62>
    12e6:	d20d8493          	addi	s1,s11,-736 # 1d20 <mkdir+0x90>
    12ea:	02800593          	li	a1,40
    12ee:	b7c5                	j	12ce <vprintf+0x164>
    12f0:	008a8493          	addi	s1,s5,8
    12f4:	000ac583          	lbu	a1,0(s5)
    12f8:	8552                	mv	a0,s4
    12fa:	00000097          	auipc	ra,0x0
    12fe:	db8080e7          	jalr	-584(ra) # 10b2 <putc>
    1302:	8aa6                	mv	s5,s1
    1304:	4901                	li	s2,0
    1306:	b5d9                	j	11cc <vprintf+0x62>
    1308:	85ce                	mv	a1,s3
    130a:	8552                	mv	a0,s4
    130c:	00000097          	auipc	ra,0x0
    1310:	da6080e7          	jalr	-602(ra) # 10b2 <putc>
    1314:	4901                	li	s2,0
    1316:	bd5d                	j	11cc <vprintf+0x62>
    1318:	8aca                	mv	s5,s2
    131a:	4901                	li	s2,0
    131c:	bd45                	j	11cc <vprintf+0x62>
    131e:	70a6                	ld	ra,104(sp)
    1320:	7406                	ld	s0,96(sp)
    1322:	64e6                	ld	s1,88(sp)
    1324:	6946                	ld	s2,80(sp)
    1326:	69a6                	ld	s3,72(sp)
    1328:	6a06                	ld	s4,64(sp)
    132a:	7ae2                	ld	s5,56(sp)
    132c:	7b42                	ld	s6,48(sp)
    132e:	7ba2                	ld	s7,40(sp)
    1330:	7c02                	ld	s8,32(sp)
    1332:	6ce2                	ld	s9,24(sp)
    1334:	6d42                	ld	s10,16(sp)
    1336:	6da2                	ld	s11,8(sp)
    1338:	6165                	addi	sp,sp,112
    133a:	8082                	ret

000000000000133c <fprintf>:
    133c:	715d                	addi	sp,sp,-80
    133e:	ec06                	sd	ra,24(sp)
    1340:	f032                	sd	a2,32(sp)
    1342:	f436                	sd	a3,40(sp)
    1344:	f83a                	sd	a4,48(sp)
    1346:	fc3e                	sd	a5,56(sp)
    1348:	e0c2                	sd	a6,64(sp)
    134a:	e4c6                	sd	a7,72(sp)
    134c:	1010                	addi	a2,sp,32
    134e:	e432                	sd	a2,8(sp)
    1350:	00000097          	auipc	ra,0x0
    1354:	e1a080e7          	jalr	-486(ra) # 116a <vprintf>
    1358:	60e2                	ld	ra,24(sp)
    135a:	6161                	addi	sp,sp,80
    135c:	8082                	ret

000000000000135e <printf>:
    135e:	711d                	addi	sp,sp,-96
    1360:	ec06                	sd	ra,24(sp)
    1362:	f42e                	sd	a1,40(sp)
    1364:	f832                	sd	a2,48(sp)
    1366:	fc36                	sd	a3,56(sp)
    1368:	e0ba                	sd	a4,64(sp)
    136a:	e4be                	sd	a5,72(sp)
    136c:	e8c2                	sd	a6,80(sp)
    136e:	ecc6                	sd	a7,88(sp)
    1370:	1030                	addi	a2,sp,40
    1372:	e432                	sd	a2,8(sp)
    1374:	85aa                	mv	a1,a0
    1376:	4505                	li	a0,1
    1378:	00000097          	auipc	ra,0x0
    137c:	df2080e7          	jalr	-526(ra) # 116a <vprintf>
    1380:	60e2                	ld	ra,24(sp)
    1382:	6125                	addi	sp,sp,96
    1384:	8082                	ret

0000000000001386 <cksum>:
    1386:	cdb1                	beqz	a1,13e2 <cksum+0x5c>
    1388:	00b50833          	add	a6,a0,a1
    138c:	4781                	li	a5,0
    138e:	00002637          	lui	a2,0x2
    1392:	d4060613          	addi	a2,a2,-704 # 1d40 <crctab>
    1396:	0505                	addi	a0,a0,1
    1398:	0087969b          	slliw	a3,a5,0x8
    139c:	0187d71b          	srliw	a4,a5,0x18
    13a0:	fff54783          	lbu	a5,-1(a0)
    13a4:	8f3d                	xor	a4,a4,a5
    13a6:	1702                	slli	a4,a4,0x20
    13a8:	9301                	srli	a4,a4,0x20
    13aa:	070a                	slli	a4,a4,0x2
    13ac:	9732                	add	a4,a4,a2
    13ae:	431c                	lw	a5,0(a4)
    13b0:	8fb5                	xor	a5,a5,a3
    13b2:	2781                	sext.w	a5,a5
    13b4:	fea811e3          	bne	a6,a0,1396 <cksum+0x10>
    13b8:	00002637          	lui	a2,0x2
    13bc:	d4060613          	addi	a2,a2,-704 # 1d40 <crctab>
    13c0:	0ff5f693          	andi	a3,a1,255
    13c4:	81a1                	srli	a1,a1,0x8
    13c6:	0087951b          	slliw	a0,a5,0x8
    13ca:	0187d71b          	srliw	a4,a5,0x18
    13ce:	8f35                	xor	a4,a4,a3
    13d0:	070a                	slli	a4,a4,0x2
    13d2:	9732                	add	a4,a4,a2
    13d4:	431c                	lw	a5,0(a4)
    13d6:	8fa9                	xor	a5,a5,a0
    13d8:	2781                	sext.w	a5,a5
    13da:	f1fd                	bnez	a1,13c0 <cksum+0x3a>
    13dc:	fff7c513          	not	a0,a5
    13e0:	8082                	ret
    13e2:	4781                	li	a5,0
    13e4:	bfe5                	j	13dc <cksum+0x56>

00000000000013e6 <swap_bytes>:
    13e6:	ce19                	beqz	a2,1404 <swap_bytes+0x1e>
    13e8:	87aa                	mv	a5,a0
    13ea:	962a                	add	a2,a2,a0
    13ec:	0007c703          	lbu	a4,0(a5)
    13f0:	0005c683          	lbu	a3,0(a1)
    13f4:	00d78023          	sb	a3,0(a5)
    13f8:	00e58023          	sb	a4,0(a1)
    13fc:	0785                	addi	a5,a5,1
    13fe:	0585                	addi	a1,a1,1
    1400:	fec796e3          	bne	a5,a2,13ec <swap_bytes+0x6>
    1404:	8082                	ret

0000000000001406 <random_init>:
    1406:	7139                	addi	sp,sp,-64
    1408:	fc06                	sd	ra,56(sp)
    140a:	f822                	sd	s0,48(sp)
    140c:	f426                	sd	s1,40(sp)
    140e:	f04a                	sd	s2,32(sp)
    1410:	ec4e                	sd	s3,24(sp)
    1412:	e852                	sd	s4,16(sp)
    1414:	c62a                	sw	a0,12(sp)
    1416:	000037b7          	lui	a5,0x3
    141a:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    141e:	eca5                	bnez	s1,1496 <random_init+0x90>
    1420:	00003737          	lui	a4,0x3
    1424:	01070913          	addi	s2,a4,16 # 3010 <s>
    1428:	01070713          	addi	a4,a4,16
    142c:	87a6                	mv	a5,s1
    142e:	10000693          	li	a3,256
    1432:	00f70023          	sb	a5,0(a4)
    1436:	2785                	addiw	a5,a5,1
    1438:	0705                	addi	a4,a4,1
    143a:	fed79ce3          	bne	a5,a3,1432 <random_init+0x2c>
    143e:	4401                	li	s0,0
    1440:	000039b7          	lui	s3,0x3
    1444:	01098993          	addi	s3,s3,16 # 3010 <s>
    1448:	10000a13          	li	s4,256
    144c:	0034f793          	andi	a5,s1,3
    1450:	0818                	addi	a4,sp,16
    1452:	97ba                	add	a5,a5,a4
    1454:	ffc7c783          	lbu	a5,-4(a5)
    1458:	00094703          	lbu	a4,0(s2)
    145c:	9fb9                	addw	a5,a5,a4
    145e:	9c3d                	addw	s0,s0,a5
    1460:	0ff47413          	andi	s0,s0,255
    1464:	4605                	li	a2,1
    1466:	008985b3          	add	a1,s3,s0
    146a:	854a                	mv	a0,s2
    146c:	00000097          	auipc	ra,0x0
    1470:	f7a080e7          	jalr	-134(ra) # 13e6 <swap_bytes>
    1474:	2485                	addiw	s1,s1,1
    1476:	0905                	addi	s2,s2,1
    1478:	fd449ae3          	bne	s1,s4,144c <random_init+0x46>
    147c:	000037b7          	lui	a5,0x3
    1480:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1484:	000037b7          	lui	a5,0x3
    1488:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    148c:	000037b7          	lui	a5,0x3
    1490:	4705                	li	a4,1
    1492:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1496:	70e2                	ld	ra,56(sp)
    1498:	7442                	ld	s0,48(sp)
    149a:	74a2                	ld	s1,40(sp)
    149c:	7902                	ld	s2,32(sp)
    149e:	69e2                	ld	s3,24(sp)
    14a0:	6a42                	ld	s4,16(sp)
    14a2:	6121                	addi	sp,sp,64
    14a4:	8082                	ret

00000000000014a6 <random_bytes>:
    14a6:	7139                	addi	sp,sp,-64
    14a8:	fc06                	sd	ra,56(sp)
    14aa:	f822                	sd	s0,48(sp)
    14ac:	f426                	sd	s1,40(sp)
    14ae:	f04a                	sd	s2,32(sp)
    14b0:	ec4e                	sd	s3,24(sp)
    14b2:	e852                	sd	s4,16(sp)
    14b4:	e456                	sd	s5,8(sp)
    14b6:	e05a                	sd	s6,0(sp)
    14b8:	892a                	mv	s2,a0
    14ba:	8aae                	mv	s5,a1
    14bc:	000037b7          	lui	a5,0x3
    14c0:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14c4:	c3c1                	beqz	a5,1544 <random_bytes+0x9e>
    14c6:	060a8563          	beqz	s5,1530 <random_bytes+0x8a>
    14ca:	9aca                	add	s5,s5,s2
    14cc:	00003a37          	lui	s4,0x3
    14d0:	000034b7          	lui	s1,0x3
    14d4:	01048493          	addi	s1,s1,16 # 3010 <s>
    14d8:	000039b7          	lui	s3,0x3
    14dc:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14e0:	2505                	addiw	a0,a0,1
    14e2:	0ff57513          	andi	a0,a0,255
    14e6:	00aa02a3          	sb	a0,5(s4)
    14ea:	00a48b33          	add	s6,s1,a0
    14ee:	000b4403          	lbu	s0,0(s6)
    14f2:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14f6:	9c3d                	addw	s0,s0,a5
    14f8:	0ff47413          	andi	s0,s0,255
    14fc:	00898223          	sb	s0,4(s3)
    1500:	4605                	li	a2,1
    1502:	008485b3          	add	a1,s1,s0
    1506:	855a                	mv	a0,s6
    1508:	00000097          	auipc	ra,0x0
    150c:	ede080e7          	jalr	-290(ra) # 13e6 <swap_bytes>
    1510:	9426                	add	s0,s0,s1
    1512:	000b4783          	lbu	a5,0(s6)
    1516:	00044703          	lbu	a4,0(s0)
    151a:	9fb9                	addw	a5,a5,a4
    151c:	0ff7f793          	andi	a5,a5,255
    1520:	97a6                	add	a5,a5,s1
    1522:	0007c783          	lbu	a5,0(a5)
    1526:	00f90023          	sb	a5,0(s2)
    152a:	0905                	addi	s2,s2,1
    152c:	fb2a98e3          	bne	s5,s2,14dc <random_bytes+0x36>
    1530:	70e2                	ld	ra,56(sp)
    1532:	7442                	ld	s0,48(sp)
    1534:	74a2                	ld	s1,40(sp)
    1536:	7902                	ld	s2,32(sp)
    1538:	69e2                	ld	s3,24(sp)
    153a:	6a42                	ld	s4,16(sp)
    153c:	6aa2                	ld	s5,8(sp)
    153e:	6b02                	ld	s6,0(sp)
    1540:	6121                	addi	sp,sp,64
    1542:	8082                	ret
    1544:	4501                	li	a0,0
    1546:	00000097          	auipc	ra,0x0
    154a:	ec0080e7          	jalr	-320(ra) # 1406 <random_init>
    154e:	bfa5                	j	14c6 <random_bytes+0x20>

0000000000001550 <random_ulong>:
    1550:	1101                	addi	sp,sp,-32
    1552:	ec06                	sd	ra,24(sp)
    1554:	45a1                	li	a1,8
    1556:	0028                	addi	a0,sp,8
    1558:	00000097          	auipc	ra,0x0
    155c:	f4e080e7          	jalr	-178(ra) # 14a6 <random_bytes>
    1560:	6522                	ld	a0,8(sp)
    1562:	60e2                	ld	ra,24(sp)
    1564:	6105                	addi	sp,sp,32
    1566:	8082                	ret

0000000000001568 <shuffle>:
    1568:	c9b9                	beqz	a1,15be <shuffle+0x56>
    156a:	7179                	addi	sp,sp,-48
    156c:	f406                	sd	ra,40(sp)
    156e:	f022                	sd	s0,32(sp)
    1570:	ec26                	sd	s1,24(sp)
    1572:	e84a                	sd	s2,16(sp)
    1574:	e44e                	sd	s3,8(sp)
    1576:	e052                	sd	s4,0(sp)
    1578:	8a2a                	mv	s4,a0
    157a:	89ae                	mv	s3,a1
    157c:	84b2                	mv	s1,a2
    157e:	892a                	mv	s2,a0
    1580:	4401                	li	s0,0
    1582:	00000097          	auipc	ra,0x0
    1586:	fce080e7          	jalr	-50(ra) # 1550 <random_ulong>
    158a:	408985b3          	sub	a1,s3,s0
    158e:	02b575b3          	remu	a1,a0,a1
    1592:	95a2                	add	a1,a1,s0
    1594:	029585b3          	mul	a1,a1,s1
    1598:	8626                	mv	a2,s1
    159a:	95d2                	add	a1,a1,s4
    159c:	854a                	mv	a0,s2
    159e:	00000097          	auipc	ra,0x0
    15a2:	e48080e7          	jalr	-440(ra) # 13e6 <swap_bytes>
    15a6:	0405                	addi	s0,s0,1
    15a8:	9926                	add	s2,s2,s1
    15aa:	fc899ce3          	bne	s3,s0,1582 <shuffle+0x1a>
    15ae:	70a2                	ld	ra,40(sp)
    15b0:	7402                	ld	s0,32(sp)
    15b2:	64e2                	ld	s1,24(sp)
    15b4:	6942                	ld	s2,16(sp)
    15b6:	69a2                	ld	s3,8(sp)
    15b8:	6a02                	ld	s4,0(sp)
    15ba:	6145                	addi	sp,sp,48
    15bc:	8082                	ret
    15be:	8082                	ret

00000000000015c0 <arc4_init>:
    15c0:	100500a3          	sb	zero,257(a0)
    15c4:	10050023          	sb	zero,256(a0)
    15c8:	4781                	li	a5,0
    15ca:	10000693          	li	a3,256
    15ce:	00f50733          	add	a4,a0,a5
    15d2:	00f70023          	sb	a5,0(a4)
    15d6:	0785                	addi	a5,a5,1
    15d8:	fed79be3          	bne	a5,a3,15ce <arc4_init+0xe>
    15dc:	86aa                	mv	a3,a0
    15de:	10050e13          	addi	t3,a0,256
    15e2:	4701                	li	a4,0
    15e4:	4781                	li	a5,0
    15e6:	0006c883          	lbu	a7,0(a3)
    15ea:	00f58833          	add	a6,a1,a5
    15ee:	00084803          	lbu	a6,0(a6)
    15f2:	00e8873b          	addw	a4,a7,a4
    15f6:	00e8073b          	addw	a4,a6,a4
    15fa:	0ff77713          	andi	a4,a4,255
    15fe:	00e50833          	add	a6,a0,a4
    1602:	00084303          	lbu	t1,0(a6)
    1606:	00668023          	sb	t1,0(a3)
    160a:	01180023          	sb	a7,0(a6)
    160e:	0785                	addi	a5,a5,1
    1610:	00c7b833          	sltu	a6,a5,a2
    1614:	41000833          	neg	a6,a6
    1618:	0107f7b3          	and	a5,a5,a6
    161c:	0685                	addi	a3,a3,1
    161e:	fdc694e3          	bne	a3,t3,15e6 <arc4_init+0x26>
    1622:	8082                	ret

0000000000001624 <arc4_crypt>:
    1624:	10054e03          	lbu	t3,256(a0)
    1628:	10154803          	lbu	a6,257(a0)
    162c:	fff60e93          	addi	t4,a2,-1
    1630:	c225                	beqz	a2,1690 <arc4_crypt+0x6c>
    1632:	00c588b3          	add	a7,a1,a2
    1636:	86ae                	mv	a3,a1
    1638:	001e031b          	addiw	t1,t3,1
    163c:	40b3033b          	subw	t1,t1,a1
    1640:	00d3073b          	addw	a4,t1,a3
    1644:	0ff77713          	andi	a4,a4,255
    1648:	972a                	add	a4,a4,a0
    164a:	00074603          	lbu	a2,0(a4)
    164e:	0106083b          	addw	a6,a2,a6
    1652:	0ff87813          	andi	a6,a6,255
    1656:	010507b3          	add	a5,a0,a6
    165a:	0007c583          	lbu	a1,0(a5)
    165e:	00b70023          	sb	a1,0(a4)
    1662:	00c78023          	sb	a2,0(a5)
    1666:	0685                	addi	a3,a3,1
    1668:	00074783          	lbu	a5,0(a4)
    166c:	9fb1                	addw	a5,a5,a2
    166e:	0ff7f793          	andi	a5,a5,255
    1672:	97aa                	add	a5,a5,a0
    1674:	0007c783          	lbu	a5,0(a5)
    1678:	fff6c703          	lbu	a4,-1(a3)
    167c:	8fb9                	xor	a5,a5,a4
    167e:	fef68fa3          	sb	a5,-1(a3)
    1682:	fb169fe3          	bne	a3,a7,1640 <arc4_crypt+0x1c>
    1686:	2e85                	addiw	t4,t4,1
    1688:	01ce8e3b          	addw	t3,t4,t3
    168c:	0ffe7e13          	andi	t3,t3,255
    1690:	11c50023          	sb	t3,256(a0)
    1694:	110500a3          	sb	a6,257(a0)
    1698:	8082                	ret

000000000000169a <_main>:
    169a:	1141                	addi	sp,sp,-16
    169c:	e406                	sd	ra,8(sp)
    169e:	00000097          	auipc	ra,0x0
    16a2:	962080e7          	jalr	-1694(ra) # 1000 <main>
    16a6:	4501                	li	a0,0
    16a8:	00000097          	auipc	ra,0x0
    16ac:	578080e7          	jalr	1400(ra) # 1c20 <exit>
    16b0:	60a2                	ld	ra,8(sp)
    16b2:	0141                	addi	sp,sp,16
    16b4:	8082                	ret

00000000000016b6 <strcmp>:
    16b6:	00054783          	lbu	a5,0(a0)
    16ba:	cb91                	beqz	a5,16ce <strcmp+0x18>
    16bc:	0005c703          	lbu	a4,0(a1)
    16c0:	00f71763          	bne	a4,a5,16ce <strcmp+0x18>
    16c4:	0505                	addi	a0,a0,1
    16c6:	0585                	addi	a1,a1,1
    16c8:	00054783          	lbu	a5,0(a0)
    16cc:	fbe5                	bnez	a5,16bc <strcmp+0x6>
    16ce:	0005c503          	lbu	a0,0(a1)
    16d2:	40a7853b          	subw	a0,a5,a0
    16d6:	8082                	ret

00000000000016d8 <strcpy>:
    16d8:	87aa                	mv	a5,a0
    16da:	0585                	addi	a1,a1,1
    16dc:	0785                	addi	a5,a5,1
    16de:	fff5c703          	lbu	a4,-1(a1)
    16e2:	fee78fa3          	sb	a4,-1(a5)
    16e6:	fb75                	bnez	a4,16da <strcpy+0x2>
    16e8:	8082                	ret

00000000000016ea <strlen>:
    16ea:	00054783          	lbu	a5,0(a0)
    16ee:	cf81                	beqz	a5,1706 <strlen+0x1c>
    16f0:	0505                	addi	a0,a0,1
    16f2:	87aa                	mv	a5,a0
    16f4:	4685                	li	a3,1
    16f6:	9e89                	subw	a3,a3,a0
    16f8:	00f6853b          	addw	a0,a3,a5
    16fc:	0785                	addi	a5,a5,1
    16fe:	fff7c703          	lbu	a4,-1(a5)
    1702:	fb7d                	bnez	a4,16f8 <strlen+0xe>
    1704:	8082                	ret
    1706:	4501                	li	a0,0
    1708:	8082                	ret

000000000000170a <memset>:
    170a:	ca19                	beqz	a2,1720 <memset+0x16>
    170c:	87aa                	mv	a5,a0
    170e:	1602                	slli	a2,a2,0x20
    1710:	9201                	srli	a2,a2,0x20
    1712:	00a60733          	add	a4,a2,a0
    1716:	00b78023          	sb	a1,0(a5)
    171a:	0785                	addi	a5,a5,1
    171c:	fee79de3          	bne	a5,a4,1716 <memset+0xc>
    1720:	8082                	ret

0000000000001722 <memcmp>:
    1722:	1101                	addi	sp,sp,-32
    1724:	ec06                	sd	ra,24(sp)
    1726:	e822                	sd	s0,16(sp)
    1728:	e426                	sd	s1,8(sp)
    172a:	e04a                	sd	s2,0(sp)
    172c:	892a                	mv	s2,a0
    172e:	842e                	mv	s0,a1
    1730:	84b2                	mv	s1,a2
    1732:	c915                	beqz	a0,1766 <memcmp+0x44>
    1734:	c5ad                	beqz	a1,179e <memcmp+0x7c>
    1736:	fff60713          	addi	a4,a2,-1
    173a:	c645                	beqz	a2,17e2 <memcmp+0xc0>
    173c:	87ca                	mv	a5,s2
    173e:	00190613          	addi	a2,s2,1
    1742:	963a                	add	a2,a2,a4
    1744:	0007c683          	lbu	a3,0(a5)
    1748:	00044703          	lbu	a4,0(s0)
    174c:	08e69463          	bne	a3,a4,17d4 <memcmp+0xb2>
    1750:	0785                	addi	a5,a5,1
    1752:	0405                	addi	s0,s0,1
    1754:	fec798e3          	bne	a5,a2,1744 <memcmp+0x22>
    1758:	4501                	li	a0,0
    175a:	60e2                	ld	ra,24(sp)
    175c:	6442                	ld	s0,16(sp)
    175e:	64a2                	ld	s1,8(sp)
    1760:	6902                	ld	s2,0(sp)
    1762:	6105                	addi	sp,sp,32
    1764:	8082                	ret
    1766:	4501                	li	a0,0
    1768:	da6d                	beqz	a2,175a <memcmp+0x38>
    176a:	03200693          	li	a3,50
    176e:	00002637          	lui	a2,0x2
    1772:	14060613          	addi	a2,a2,320 # 2140 <crctab+0x400>
    1776:	000025b7          	lui	a1,0x2
    177a:	15058593          	addi	a1,a1,336 # 2150 <crctab+0x410>
    177e:	4509                	li	a0,2
    1780:	00000097          	auipc	ra,0x0
    1784:	bbc080e7          	jalr	-1092(ra) # 133c <fprintf>
    1788:	650d                	lui	a0,0x3
    178a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    178e:	00000097          	auipc	ra,0x0
    1792:	492080e7          	jalr	1170(ra) # 1c20 <exit>
    1796:	fff48713          	addi	a4,s1,-1
    179a:	f04d                	bnez	s0,173c <memcmp+0x1a>
    179c:	a011                	j	17a0 <memcmp+0x7e>
    179e:	c221                	beqz	a2,17de <memcmp+0xbc>
    17a0:	03300693          	li	a3,51
    17a4:	00002637          	lui	a2,0x2
    17a8:	14060613          	addi	a2,a2,320 # 2140 <crctab+0x400>
    17ac:	000025b7          	lui	a1,0x2
    17b0:	19858593          	addi	a1,a1,408 # 2198 <crctab+0x458>
    17b4:	4509                	li	a0,2
    17b6:	00000097          	auipc	ra,0x0
    17ba:	b86080e7          	jalr	-1146(ra) # 133c <fprintf>
    17be:	650d                	lui	a0,0x3
    17c0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17c4:	00000097          	auipc	ra,0x0
    17c8:	45c080e7          	jalr	1116(ra) # 1c20 <exit>
    17cc:	fff48713          	addi	a4,s1,-1
    17d0:	4401                	li	s0,0
    17d2:	b7ad                	j	173c <memcmp+0x1a>
    17d4:	4505                	li	a0,1
    17d6:	f8d762e3          	bltu	a4,a3,175a <memcmp+0x38>
    17da:	557d                	li	a0,-1
    17dc:	bfbd                	j	175a <memcmp+0x38>
    17de:	4501                	li	a0,0
    17e0:	bfad                	j	175a <memcmp+0x38>
    17e2:	4501                	li	a0,0
    17e4:	bf9d                	j	175a <memcmp+0x38>

00000000000017e6 <memcpy>:
    17e6:	1101                	addi	sp,sp,-32
    17e8:	ec06                	sd	ra,24(sp)
    17ea:	e822                	sd	s0,16(sp)
    17ec:	e426                	sd	s1,8(sp)
    17ee:	e04a                	sd	s2,0(sp)
    17f0:	84aa                	mv	s1,a0
    17f2:	842e                	mv	s0,a1
    17f4:	8932                	mv	s2,a2
    17f6:	c51d                	beqz	a0,1824 <memcpy+0x3e>
    17f8:	c1ad                	beqz	a1,185a <memcpy+0x74>
    17fa:	fff60693          	addi	a3,a2,-1
    17fe:	ce01                	beqz	a2,1816 <memcpy+0x30>
    1800:	0685                	addi	a3,a3,1
    1802:	96a6                	add	a3,a3,s1
    1804:	87a6                	mv	a5,s1
    1806:	0405                	addi	s0,s0,1
    1808:	0785                	addi	a5,a5,1
    180a:	fff44703          	lbu	a4,-1(s0)
    180e:	fee78fa3          	sb	a4,-1(a5)
    1812:	fed79ae3          	bne	a5,a3,1806 <memcpy+0x20>
    1816:	8526                	mv	a0,s1
    1818:	60e2                	ld	ra,24(sp)
    181a:	6442                	ld	s0,16(sp)
    181c:	64a2                	ld	s1,8(sp)
    181e:	6902                	ld	s2,0(sp)
    1820:	6105                	addi	sp,sp,32
    1822:	8082                	ret
    1824:	da6d                	beqz	a2,1816 <memcpy+0x30>
    1826:	04000693          	li	a3,64
    182a:	00002637          	lui	a2,0x2
    182e:	14060613          	addi	a2,a2,320 # 2140 <crctab+0x400>
    1832:	000025b7          	lui	a1,0x2
    1836:	1e058593          	addi	a1,a1,480 # 21e0 <crctab+0x4a0>
    183a:	4509                	li	a0,2
    183c:	00000097          	auipc	ra,0x0
    1840:	b00080e7          	jalr	-1280(ra) # 133c <fprintf>
    1844:	650d                	lui	a0,0x3
    1846:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    184a:	00000097          	auipc	ra,0x0
    184e:	3d6080e7          	jalr	982(ra) # 1c20 <exit>
    1852:	fff90693          	addi	a3,s2,-1
    1856:	f44d                	bnez	s0,1800 <memcpy+0x1a>
    1858:	a011                	j	185c <memcpy+0x76>
    185a:	de55                	beqz	a2,1816 <memcpy+0x30>
    185c:	04100693          	li	a3,65
    1860:	00002637          	lui	a2,0x2
    1864:	14060613          	addi	a2,a2,320 # 2140 <crctab+0x400>
    1868:	000025b7          	lui	a1,0x2
    186c:	22858593          	addi	a1,a1,552 # 2228 <crctab+0x4e8>
    1870:	4509                	li	a0,2
    1872:	00000097          	auipc	ra,0x0
    1876:	aca080e7          	jalr	-1334(ra) # 133c <fprintf>
    187a:	650d                	lui	a0,0x3
    187c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1880:	00000097          	auipc	ra,0x0
    1884:	3a0080e7          	jalr	928(ra) # 1c20 <exit>
    1888:	fff90693          	addi	a3,s2,-1
    188c:	4401                	li	s0,0
    188e:	bf8d                	j	1800 <memcpy+0x1a>

0000000000001890 <itoa>:
    1890:	1101                	addi	sp,sp,-32
    1892:	ec06                	sd	ra,24(sp)
    1894:	e822                	sd	s0,16(sp)
    1896:	e426                	sd	s1,8(sp)
    1898:	842a                	mv	s0,a0
    189a:	41f5d71b          	sraiw	a4,a1,0x1f
    189e:	00e5c7b3          	xor	a5,a1,a4
    18a2:	9f99                	subw	a5,a5,a4
    18a4:	84aa                	mv	s1,a0
    18a6:	862a                	mv	a2,a0
    18a8:	4681                	li	a3,0
    18aa:	4529                	li	a0,10
    18ac:	4825                	li	a6,9
    18ae:	88b6                	mv	a7,a3
    18b0:	2685                	addiw	a3,a3,1
    18b2:	02a7e73b          	remw	a4,a5,a0
    18b6:	0307071b          	addiw	a4,a4,48
    18ba:	00e60023          	sb	a4,0(a2)
    18be:	873e                	mv	a4,a5
    18c0:	02a7c7bb          	divw	a5,a5,a0
    18c4:	0605                	addi	a2,a2,1
    18c6:	fee844e3          	blt	a6,a4,18ae <itoa+0x1e>
    18ca:	0405c863          	bltz	a1,191a <itoa+0x8a>
    18ce:	96a2                	add	a3,a3,s0
    18d0:	00068023          	sb	zero,0(a3)
    18d4:	8522                	mv	a0,s0
    18d6:	00000097          	auipc	ra,0x0
    18da:	e14080e7          	jalr	-492(ra) # 16ea <strlen>
    18de:	fff5071b          	addiw	a4,a0,-1
    18e2:	02e05763          	blez	a4,1910 <itoa+0x80>
    18e6:	9722                	add	a4,a4,s0
    18e8:	4681                	li	a3,0
    18ea:	0004c783          	lbu	a5,0(s1)
    18ee:	00074603          	lbu	a2,0(a4)
    18f2:	00c48023          	sb	a2,0(s1)
    18f6:	00f70023          	sb	a5,0(a4)
    18fa:	0016879b          	addiw	a5,a3,1
    18fe:	0007869b          	sext.w	a3,a5
    1902:	0485                	addi	s1,s1,1
    1904:	177d                	addi	a4,a4,-1
    1906:	fff7c793          	not	a5,a5
    190a:	9fa9                	addw	a5,a5,a0
    190c:	fcf6cfe3          	blt	a3,a5,18ea <itoa+0x5a>
    1910:	60e2                	ld	ra,24(sp)
    1912:	6442                	ld	s0,16(sp)
    1914:	64a2                	ld	s1,8(sp)
    1916:	6105                	addi	sp,sp,32
    1918:	8082                	ret
    191a:	96a2                	add	a3,a3,s0
    191c:	02d00793          	li	a5,45
    1920:	00f68023          	sb	a5,0(a3)
    1924:	0028869b          	addiw	a3,a7,2
    1928:	b75d                	j	18ce <itoa+0x3e>

000000000000192a <atoi>:
    192a:	00054783          	lbu	a5,0(a0)
    192e:	02000713          	li	a4,32
    1932:	00e79763          	bne	a5,a4,1940 <atoi+0x16>
    1936:	0505                	addi	a0,a0,1
    1938:	00054783          	lbu	a5,0(a0)
    193c:	fee78de3          	beq	a5,a4,1936 <atoi+0xc>
    1940:	02b00713          	li	a4,43
    1944:	04e78663          	beq	a5,a4,1990 <atoi+0x66>
    1948:	02d00713          	li	a4,45
    194c:	4805                	li	a6,1
    194e:	04e78463          	beq	a5,a4,1996 <atoi+0x6c>
    1952:	00054683          	lbu	a3,0(a0)
    1956:	fd06879b          	addiw	a5,a3,-48
    195a:	0ff7f793          	andi	a5,a5,255
    195e:	4725                	li	a4,9
    1960:	02f76e63          	bltu	a4,a5,199c <atoi+0x72>
    1964:	4601                	li	a2,0
    1966:	45a5                	li	a1,9
    1968:	0505                	addi	a0,a0,1
    196a:	0026179b          	slliw	a5,a2,0x2
    196e:	9fb1                	addw	a5,a5,a2
    1970:	0017979b          	slliw	a5,a5,0x1
    1974:	9fb5                	addw	a5,a5,a3
    1976:	fd07861b          	addiw	a2,a5,-48
    197a:	00054683          	lbu	a3,0(a0)
    197e:	fd06871b          	addiw	a4,a3,-48
    1982:	0ff77713          	andi	a4,a4,255
    1986:	fee5f1e3          	bgeu	a1,a4,1968 <atoi+0x3e>
    198a:	02c8053b          	mulw	a0,a6,a2
    198e:	8082                	ret
    1990:	0505                	addi	a0,a0,1
    1992:	4805                	li	a6,1
    1994:	bf7d                	j	1952 <atoi+0x28>
    1996:	0505                	addi	a0,a0,1
    1998:	587d                	li	a6,-1
    199a:	bf65                	j	1952 <atoi+0x28>
    199c:	4601                	li	a2,0
    199e:	b7f5                	j	198a <atoi+0x60>

00000000000019a0 <check_file_handle>:
    19a0:	d8010113          	addi	sp,sp,-640
    19a4:	26113c23          	sd	ra,632(sp)
    19a8:	26813823          	sd	s0,624(sp)
    19ac:	26913423          	sd	s1,616(sp)
    19b0:	27213023          	sd	s2,608(sp)
    19b4:	25313c23          	sd	s3,600(sp)
    19b8:	25413823          	sd	s4,592(sp)
    19bc:	25513423          	sd	s5,584(sp)
    19c0:	25613023          	sd	s6,576(sp)
    19c4:	23713c23          	sd	s7,568(sp)
    19c8:	23813823          	sd	s8,560(sp)
    19cc:	23913423          	sd	s9,552(sp)
    19d0:	23a13023          	sd	s10,544(sp)
    19d4:	21b13c23          	sd	s11,536(sp)
    19d8:	8baa                	mv	s7,a0
    19da:	8a2e                	mv	s4,a1
    19dc:	8c32                	mv	s8,a2
    19de:	89b6                	mv	s3,a3
    19e0:	040c                	addi	a1,sp,512
    19e2:	00000097          	auipc	ra,0x0
    19e6:	28e080e7          	jalr	654(ra) # 1c70 <fstat>
    19ea:	20813603          	ld	a2,520(sp)
    19ee:	03361163          	bne	a2,s3,1a10 <check_file_handle+0x70>
    19f2:	06098763          	beqz	s3,1a60 <check_file_handle+0xc0>
    19f6:	4901                	li	s2,0
    19f8:	20000a93          	li	s5,512
    19fc:	00002cb7          	lui	s9,0x2
    1a00:	00002db7          	lui	s11,0x2
    1a04:	6b0d                	lui	s6,0x3
    1a06:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a0a:	00002d37          	lui	s10,0x2
    1a0e:	aa39                	j	1b2c <check_file_handle+0x18c>
    1a10:	86ce                	mv	a3,s3
    1a12:	85d2                	mv	a1,s4
    1a14:	00002537          	lui	a0,0x2
    1a18:	27050513          	addi	a0,a0,624 # 2270 <crctab+0x530>
    1a1c:	00000097          	auipc	ra,0x0
    1a20:	942080e7          	jalr	-1726(ra) # 135e <printf>
    1a24:	fc0999e3          	bnez	s3,19f6 <check_file_handle+0x56>
    1a28:	20813683          	ld	a3,520(sp)
    1a2c:	03368a63          	beq	a3,s3,1a60 <check_file_handle+0xc0>
    1a30:	0a600813          	li	a6,166
    1a34:	000027b7          	lui	a5,0x2
    1a38:	14078793          	addi	a5,a5,320 # 2140 <crctab+0x400>
    1a3c:	874e                	mv	a4,s3
    1a3e:	8652                	mv	a2,s4
    1a40:	000025b7          	lui	a1,0x2
    1a44:	34058593          	addi	a1,a1,832 # 2340 <crctab+0x600>
    1a48:	4509                	li	a0,2
    1a4a:	00000097          	auipc	ra,0x0
    1a4e:	8f2080e7          	jalr	-1806(ra) # 133c <fprintf>
    1a52:	650d                	lui	a0,0x3
    1a54:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a58:	00000097          	auipc	ra,0x0
    1a5c:	1c8080e7          	jalr	456(ra) # 1c20 <exit>
    1a60:	85d2                	mv	a1,s4
    1a62:	00002537          	lui	a0,0x2
    1a66:	38850513          	addi	a0,a0,904 # 2388 <crctab+0x648>
    1a6a:	00000097          	auipc	ra,0x0
    1a6e:	8f4080e7          	jalr	-1804(ra) # 135e <printf>
    1a72:	27813083          	ld	ra,632(sp)
    1a76:	27013403          	ld	s0,624(sp)
    1a7a:	26813483          	ld	s1,616(sp)
    1a7e:	26013903          	ld	s2,608(sp)
    1a82:	25813983          	ld	s3,600(sp)
    1a86:	25013a03          	ld	s4,592(sp)
    1a8a:	24813a83          	ld	s5,584(sp)
    1a8e:	24013b03          	ld	s6,576(sp)
    1a92:	23813b83          	ld	s7,568(sp)
    1a96:	23013c03          	ld	s8,560(sp)
    1a9a:	22813c83          	ld	s9,552(sp)
    1a9e:	22013d03          	ld	s10,544(sp)
    1aa2:	21813d83          	ld	s11,536(sp)
    1aa6:	28010113          	addi	sp,sp,640
    1aaa:	8082                	ret
    1aac:	09d00893          	li	a7,157
    1ab0:	140c8813          	addi	a6,s9,320 # 2140 <crctab+0x400>
    1ab4:	87aa                	mv	a5,a0
    1ab6:	8752                	mv	a4,s4
    1ab8:	86ca                	mv	a3,s2
    1aba:	8622                	mv	a2,s0
    1abc:	2a0d8593          	addi	a1,s11,672 # 22a0 <crctab+0x560>
    1ac0:	4509                	li	a0,2
    1ac2:	00000097          	auipc	ra,0x0
    1ac6:	87a080e7          	jalr	-1926(ra) # 133c <fprintf>
    1aca:	855a                	mv	a0,s6
    1acc:	00000097          	auipc	ra,0x0
    1ad0:	154080e7          	jalr	340(ra) # 1c20 <exit>
    1ad4:	a89d                	j	1b4a <check_file_handle+0x1aa>
    1ad6:	00160593          	addi	a1,a2,1
    1ada:	0285f163          	bgeu	a1,s0,1afc <check_file_handle+0x15c>
    1ade:	00c10733          	add	a4,sp,a2
    1ae2:	00b487b3          	add	a5,s1,a1
    1ae6:	00174683          	lbu	a3,1(a4)
    1aea:	0007c783          	lbu	a5,0(a5)
    1aee:	00f68763          	beq	a3,a5,1afc <check_file_handle+0x15c>
    1af2:	0585                	addi	a1,a1,1
    1af4:	0705                	addi	a4,a4,1
    1af6:	feb416e3          	bne	s0,a1,1ae2 <check_file_handle+0x142>
    1afa:	85a2                	mv	a1,s0
    1afc:	08100813          	li	a6,129
    1b00:	140c8793          	addi	a5,s9,320
    1b04:	8752                	mv	a4,s4
    1b06:	012606b3          	add	a3,a2,s2
    1b0a:	40c58633          	sub	a2,a1,a2
    1b0e:	2e8d0593          	addi	a1,s10,744 # 22e8 <crctab+0x5a8>
    1b12:	4509                	li	a0,2
    1b14:	00000097          	auipc	ra,0x0
    1b18:	828080e7          	jalr	-2008(ra) # 133c <fprintf>
    1b1c:	855a                	mv	a0,s6
    1b1e:	00000097          	auipc	ra,0x0
    1b22:	102080e7          	jalr	258(ra) # 1c20 <exit>
    1b26:	9922                	add	s2,s2,s0
    1b28:	f13970e3          	bgeu	s2,s3,1a28 <check_file_handle+0x88>
    1b2c:	41298433          	sub	s0,s3,s2
    1b30:	008af363          	bgeu	s5,s0,1b36 <check_file_handle+0x196>
    1b34:	8456                	mv	s0,s5
    1b36:	0004061b          	sext.w	a2,s0
    1b3a:	858a                	mv	a1,sp
    1b3c:	855e                	mv	a0,s7
    1b3e:	00000097          	auipc	ra,0x0
    1b42:	10a080e7          	jalr	266(ra) # 1c48 <read>
    1b46:	f68513e3          	bne	a0,s0,1aac <check_file_handle+0x10c>
    1b4a:	012c04b3          	add	s1,s8,s2
    1b4e:	8622                	mv	a2,s0
    1b50:	85a6                	mv	a1,s1
    1b52:	850a                	mv	a0,sp
    1b54:	00000097          	auipc	ra,0x0
    1b58:	bce080e7          	jalr	-1074(ra) # 1722 <memcmp>
    1b5c:	d569                	beqz	a0,1b26 <check_file_handle+0x186>
    1b5e:	03298163          	beq	s3,s2,1b80 <check_file_handle+0x1e0>
    1b62:	870a                	mv	a4,sp
    1b64:	4601                	li	a2,0
    1b66:	00c487b3          	add	a5,s1,a2
    1b6a:	00074683          	lbu	a3,0(a4)
    1b6e:	0007c783          	lbu	a5,0(a5)
    1b72:	f6f692e3          	bne	a3,a5,1ad6 <check_file_handle+0x136>
    1b76:	0605                	addi	a2,a2,1
    1b78:	0705                	addi	a4,a4,1
    1b7a:	fe8666e3          	bltu	a2,s0,1b66 <check_file_handle+0x1c6>
    1b7e:	bfa1                	j	1ad6 <check_file_handle+0x136>
    1b80:	4601                	li	a2,0
    1b82:	4585                	li	a1,1
    1b84:	bfa5                	j	1afc <check_file_handle+0x15c>

0000000000001b86 <check_file>:
    1b86:	7179                	addi	sp,sp,-48
    1b88:	f406                	sd	ra,40(sp)
    1b8a:	f022                	sd	s0,32(sp)
    1b8c:	ec26                	sd	s1,24(sp)
    1b8e:	e84a                	sd	s2,16(sp)
    1b90:	e44e                	sd	s3,8(sp)
    1b92:	84aa                	mv	s1,a0
    1b94:	892e                	mv	s2,a1
    1b96:	89b2                	mv	s3,a2
    1b98:	4581                	li	a1,0
    1b9a:	00000097          	auipc	ra,0x0
    1b9e:	0a6080e7          	jalr	166(ra) # 1c40 <open>
    1ba2:	842a                	mv	s0,a0
    1ba4:	4789                	li	a5,2
    1ba6:	02a7df63          	bge	a5,a0,1be4 <check_file+0x5e>
    1baa:	86ce                	mv	a3,s3
    1bac:	864a                	mv	a2,s2
    1bae:	85a6                	mv	a1,s1
    1bb0:	8522                	mv	a0,s0
    1bb2:	00000097          	auipc	ra,0x0
    1bb6:	dee080e7          	jalr	-530(ra) # 19a0 <check_file_handle>
    1bba:	85a6                	mv	a1,s1
    1bbc:	00002537          	lui	a0,0x2
    1bc0:	41050513          	addi	a0,a0,1040 # 2410 <crctab+0x6d0>
    1bc4:	fffff097          	auipc	ra,0xfffff
    1bc8:	79a080e7          	jalr	1946(ra) # 135e <printf>
    1bcc:	8522                	mv	a0,s0
    1bce:	00000097          	auipc	ra,0x0
    1bd2:	09a080e7          	jalr	154(ra) # 1c68 <close>
    1bd6:	70a2                	ld	ra,40(sp)
    1bd8:	7402                	ld	s0,32(sp)
    1bda:	64e2                	ld	s1,24(sp)
    1bdc:	6942                	ld	s2,16(sp)
    1bde:	69a2                	ld	s3,8(sp)
    1be0:	6145                	addi	sp,sp,48
    1be2:	8082                	ret
    1be4:	0ae00713          	li	a4,174
    1be8:	000026b7          	lui	a3,0x2
    1bec:	14068693          	addi	a3,a3,320 # 2140 <crctab+0x400>
    1bf0:	8626                	mv	a2,s1
    1bf2:	000025b7          	lui	a1,0x2
    1bf6:	3a858593          	addi	a1,a1,936 # 23a8 <crctab+0x668>
    1bfa:	4509                	li	a0,2
    1bfc:	fffff097          	auipc	ra,0xfffff
    1c00:	740080e7          	jalr	1856(ra) # 133c <fprintf>
    1c04:	650d                	lui	a0,0x3
    1c06:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c0a:	00000097          	auipc	ra,0x0
    1c0e:	016080e7          	jalr	22(ra) # 1c20 <exit>
    1c12:	bf61                	j	1baa <check_file+0x24>

0000000000001c14 <r_sp>:
    1c14:	850a                	mv	a0,sp
    1c16:	8082                	ret

0000000000001c18 <halt>:
    1c18:	4885                	li	a7,1
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret

0000000000001c20 <exit>:
    1c20:	4889                	li	a7,2
    1c22:	00000073          	ecall
    1c26:	8082                	ret

0000000000001c28 <exec>:
    1c28:	488d                	li	a7,3
    1c2a:	00000073          	ecall
    1c2e:	8082                	ret

0000000000001c30 <wait>:
    1c30:	4891                	li	a7,4
    1c32:	00000073          	ecall
    1c36:	8082                	ret

0000000000001c38 <remove>:
    1c38:	4895                	li	a7,5
    1c3a:	00000073          	ecall
    1c3e:	8082                	ret

0000000000001c40 <open>:
    1c40:	4899                	li	a7,6
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <read>:
    1c48:	489d                	li	a7,7
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret

0000000000001c50 <write>:
    1c50:	48a1                	li	a7,8
    1c52:	00000073          	ecall
    1c56:	8082                	ret

0000000000001c58 <seek>:
    1c58:	48a5                	li	a7,9
    1c5a:	00000073          	ecall
    1c5e:	8082                	ret

0000000000001c60 <tell>:
    1c60:	48a9                	li	a7,10
    1c62:	00000073          	ecall
    1c66:	8082                	ret

0000000000001c68 <close>:
    1c68:	48ad                	li	a7,11
    1c6a:	00000073          	ecall
    1c6e:	8082                	ret

0000000000001c70 <fstat>:
    1c70:	48b1                	li	a7,12
    1c72:	00000073          	ecall
    1c76:	8082                	ret

0000000000001c78 <mmap>:
    1c78:	48b5                	li	a7,13
    1c7a:	00000073          	ecall
    1c7e:	8082                	ret

0000000000001c80 <munmap>:
    1c80:	48b9                	li	a7,14
    1c82:	00000073          	ecall
    1c86:	8082                	ret

0000000000001c88 <chdir>:
    1c88:	48bd                	li	a7,15
    1c8a:	00000073          	ecall
    1c8e:	8082                	ret

0000000000001c90 <mkdir>:
    1c90:	48c1                	li	a7,16
    1c92:	00000073          	ecall
    1c96:	8082                	ret
