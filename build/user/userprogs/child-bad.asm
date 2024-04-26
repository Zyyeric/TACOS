
build/user/userprogs/child-bad:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	000027b7          	lui	a5,0x2
    1008:	c407b783          	ld	a5,-960(a5) # 1c40 <mkdir+0xe>
    100c:	03900713          	li	a4,57
    1010:	00e78023          	sb	a4,0(a5)
    1014:	03000713          	li	a4,48
    1018:	00e780a3          	sb	a4,1(a5)
    101c:	00078123          	sb	zero,2(a5)
    1020:	000781a3          	sb	zero,3(a5)
    1024:	46b1                	li	a3,12
    1026:	00002637          	lui	a2,0x2
    102a:	c5060613          	addi	a2,a2,-944 # 1c50 <mkdir+0x1e>
    102e:	000025b7          	lui	a1,0x2
    1032:	c7058593          	addi	a1,a1,-912 # 1c70 <mkdir+0x3e>
    1036:	4509                	li	a0,2
    1038:	00000097          	auipc	ra,0x0
    103c:	2a6080e7          	jalr	678(ra) # 12de <fprintf>
    1040:	650d                	lui	a0,0x3
    1042:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1046:	00001097          	auipc	ra,0x1
    104a:	b7c080e7          	jalr	-1156(ra) # 1bc2 <exit>
    104e:	60a2                	ld	ra,8(sp)
    1050:	0141                	addi	sp,sp,16
    1052:	8082                	ret

0000000000001054 <putc>:
    1054:	1101                	addi	sp,sp,-32
    1056:	ec06                	sd	ra,24(sp)
    1058:	00b107a3          	sb	a1,15(sp)
    105c:	4605                	li	a2,1
    105e:	00f10593          	addi	a1,sp,15
    1062:	00001097          	auipc	ra,0x1
    1066:	b90080e7          	jalr	-1136(ra) # 1bf2 <write>
    106a:	60e2                	ld	ra,24(sp)
    106c:	6105                	addi	sp,sp,32
    106e:	8082                	ret

0000000000001070 <printint>:
    1070:	7179                	addi	sp,sp,-48
    1072:	f406                	sd	ra,40(sp)
    1074:	f022                	sd	s0,32(sp)
    1076:	ec26                	sd	s1,24(sp)
    1078:	e84a                	sd	s2,16(sp)
    107a:	84aa                	mv	s1,a0
    107c:	c299                	beqz	a3,1082 <printint+0x12>
    107e:	0805c363          	bltz	a1,1104 <printint+0x94>
    1082:	2581                	sext.w	a1,a1
    1084:	4881                	li	a7,0
    1086:	868a                	mv	a3,sp
    1088:	4701                	li	a4,0
    108a:	2601                	sext.w	a2,a2
    108c:	00002537          	lui	a0,0x2
    1090:	ca050513          	addi	a0,a0,-864 # 1ca0 <digits>
    1094:	883a                	mv	a6,a4
    1096:	2705                	addiw	a4,a4,1
    1098:	02c5f7bb          	remuw	a5,a1,a2
    109c:	1782                	slli	a5,a5,0x20
    109e:	9381                	srli	a5,a5,0x20
    10a0:	97aa                	add	a5,a5,a0
    10a2:	0007c783          	lbu	a5,0(a5)
    10a6:	00f68023          	sb	a5,0(a3)
    10aa:	0005879b          	sext.w	a5,a1
    10ae:	02c5d5bb          	divuw	a1,a1,a2
    10b2:	0685                	addi	a3,a3,1
    10b4:	fec7f0e3          	bgeu	a5,a2,1094 <printint+0x24>
    10b8:	00088a63          	beqz	a7,10cc <printint+0x5c>
    10bc:	081c                	addi	a5,sp,16
    10be:	973e                	add	a4,a4,a5
    10c0:	02d00793          	li	a5,45
    10c4:	fef70823          	sb	a5,-16(a4)
    10c8:	0028071b          	addiw	a4,a6,2
    10cc:	02e05663          	blez	a4,10f8 <printint+0x88>
    10d0:	00e10433          	add	s0,sp,a4
    10d4:	fff10913          	addi	s2,sp,-1
    10d8:	993a                	add	s2,s2,a4
    10da:	377d                	addiw	a4,a4,-1
    10dc:	1702                	slli	a4,a4,0x20
    10de:	9301                	srli	a4,a4,0x20
    10e0:	40e90933          	sub	s2,s2,a4
    10e4:	fff44583          	lbu	a1,-1(s0)
    10e8:	8526                	mv	a0,s1
    10ea:	00000097          	auipc	ra,0x0
    10ee:	f6a080e7          	jalr	-150(ra) # 1054 <putc>
    10f2:	147d                	addi	s0,s0,-1
    10f4:	ff2418e3          	bne	s0,s2,10e4 <printint+0x74>
    10f8:	70a2                	ld	ra,40(sp)
    10fa:	7402                	ld	s0,32(sp)
    10fc:	64e2                	ld	s1,24(sp)
    10fe:	6942                	ld	s2,16(sp)
    1100:	6145                	addi	sp,sp,48
    1102:	8082                	ret
    1104:	40b005bb          	negw	a1,a1
    1108:	4885                	li	a7,1
    110a:	bfb5                	j	1086 <printint+0x16>

000000000000110c <vprintf>:
    110c:	7159                	addi	sp,sp,-112
    110e:	f486                	sd	ra,104(sp)
    1110:	f0a2                	sd	s0,96(sp)
    1112:	eca6                	sd	s1,88(sp)
    1114:	e8ca                	sd	s2,80(sp)
    1116:	e4ce                	sd	s3,72(sp)
    1118:	e0d2                	sd	s4,64(sp)
    111a:	fc56                	sd	s5,56(sp)
    111c:	f85a                	sd	s6,48(sp)
    111e:	f45e                	sd	s7,40(sp)
    1120:	f062                	sd	s8,32(sp)
    1122:	ec66                	sd	s9,24(sp)
    1124:	e86a                	sd	s10,16(sp)
    1126:	e46e                	sd	s11,8(sp)
    1128:	0005c483          	lbu	s1,0(a1)
    112c:	18048a63          	beqz	s1,12c0 <vprintf+0x1b4>
    1130:	8a2a                	mv	s4,a0
    1132:	8ab2                	mv	s5,a2
    1134:	00158413          	addi	s0,a1,1
    1138:	4901                	li	s2,0
    113a:	02500993          	li	s3,37
    113e:	06400b93          	li	s7,100
    1142:	06c00c13          	li	s8,108
    1146:	07800c93          	li	s9,120
    114a:	07000d13          	li	s10,112
    114e:	00002db7          	lui	s11,0x2
    1152:	00002b37          	lui	s6,0x2
    1156:	ca0b0b13          	addi	s6,s6,-864 # 1ca0 <digits>
    115a:	a839                	j	1178 <vprintf+0x6c>
    115c:	85a6                	mv	a1,s1
    115e:	8552                	mv	a0,s4
    1160:	00000097          	auipc	ra,0x0
    1164:	ef4080e7          	jalr	-268(ra) # 1054 <putc>
    1168:	a019                	j	116e <vprintf+0x62>
    116a:	01390f63          	beq	s2,s3,1188 <vprintf+0x7c>
    116e:	0405                	addi	s0,s0,1
    1170:	fff44483          	lbu	s1,-1(s0)
    1174:	14048663          	beqz	s1,12c0 <vprintf+0x1b4>
    1178:	0004879b          	sext.w	a5,s1
    117c:	fe0917e3          	bnez	s2,116a <vprintf+0x5e>
    1180:	fd379ee3          	bne	a5,s3,115c <vprintf+0x50>
    1184:	893e                	mv	s2,a5
    1186:	b7e5                	j	116e <vprintf+0x62>
    1188:	05778063          	beq	a5,s7,11c8 <vprintf+0xbc>
    118c:	05878c63          	beq	a5,s8,11e4 <vprintf+0xd8>
    1190:	07978863          	beq	a5,s9,1200 <vprintf+0xf4>
    1194:	09a78463          	beq	a5,s10,121c <vprintf+0x110>
    1198:	07300713          	li	a4,115
    119c:	0ce78263          	beq	a5,a4,1260 <vprintf+0x154>
    11a0:	06300713          	li	a4,99
    11a4:	0ee78763          	beq	a5,a4,1292 <vprintf+0x186>
    11a8:	11378163          	beq	a5,s3,12aa <vprintf+0x19e>
    11ac:	85ce                	mv	a1,s3
    11ae:	8552                	mv	a0,s4
    11b0:	00000097          	auipc	ra,0x0
    11b4:	ea4080e7          	jalr	-348(ra) # 1054 <putc>
    11b8:	85a6                	mv	a1,s1
    11ba:	8552                	mv	a0,s4
    11bc:	00000097          	auipc	ra,0x0
    11c0:	e98080e7          	jalr	-360(ra) # 1054 <putc>
    11c4:	4901                	li	s2,0
    11c6:	b765                	j	116e <vprintf+0x62>
    11c8:	008a8493          	addi	s1,s5,8
    11cc:	4685                	li	a3,1
    11ce:	4629                	li	a2,10
    11d0:	000aa583          	lw	a1,0(s5)
    11d4:	8552                	mv	a0,s4
    11d6:	00000097          	auipc	ra,0x0
    11da:	e9a080e7          	jalr	-358(ra) # 1070 <printint>
    11de:	8aa6                	mv	s5,s1
    11e0:	4901                	li	s2,0
    11e2:	b771                	j	116e <vprintf+0x62>
    11e4:	008a8493          	addi	s1,s5,8
    11e8:	4681                	li	a3,0
    11ea:	4629                	li	a2,10
    11ec:	000aa583          	lw	a1,0(s5)
    11f0:	8552                	mv	a0,s4
    11f2:	00000097          	auipc	ra,0x0
    11f6:	e7e080e7          	jalr	-386(ra) # 1070 <printint>
    11fa:	8aa6                	mv	s5,s1
    11fc:	4901                	li	s2,0
    11fe:	bf85                	j	116e <vprintf+0x62>
    1200:	008a8493          	addi	s1,s5,8
    1204:	4681                	li	a3,0
    1206:	4641                	li	a2,16
    1208:	000aa583          	lw	a1,0(s5)
    120c:	8552                	mv	a0,s4
    120e:	00000097          	auipc	ra,0x0
    1212:	e62080e7          	jalr	-414(ra) # 1070 <printint>
    1216:	8aa6                	mv	s5,s1
    1218:	4901                	li	s2,0
    121a:	bf91                	j	116e <vprintf+0x62>
    121c:	008a8913          	addi	s2,s5,8
    1220:	000aba83          	ld	s5,0(s5)
    1224:	03000593          	li	a1,48
    1228:	8552                	mv	a0,s4
    122a:	00000097          	auipc	ra,0x0
    122e:	e2a080e7          	jalr	-470(ra) # 1054 <putc>
    1232:	85e6                	mv	a1,s9
    1234:	8552                	mv	a0,s4
    1236:	00000097          	auipc	ra,0x0
    123a:	e1e080e7          	jalr	-482(ra) # 1054 <putc>
    123e:	44c1                	li	s1,16
    1240:	03cad793          	srli	a5,s5,0x3c
    1244:	97da                	add	a5,a5,s6
    1246:	0007c583          	lbu	a1,0(a5)
    124a:	8552                	mv	a0,s4
    124c:	00000097          	auipc	ra,0x0
    1250:	e08080e7          	jalr	-504(ra) # 1054 <putc>
    1254:	0a92                	slli	s5,s5,0x4
    1256:	34fd                	addiw	s1,s1,-1
    1258:	f4e5                	bnez	s1,1240 <vprintf+0x134>
    125a:	8aca                	mv	s5,s2
    125c:	4901                	li	s2,0
    125e:	bf01                	j	116e <vprintf+0x62>
    1260:	008a8913          	addi	s2,s5,8
    1264:	000ab483          	ld	s1,0(s5)
    1268:	c085                	beqz	s1,1288 <vprintf+0x17c>
    126a:	0004c583          	lbu	a1,0(s1)
    126e:	c5b1                	beqz	a1,12ba <vprintf+0x1ae>
    1270:	8552                	mv	a0,s4
    1272:	00000097          	auipc	ra,0x0
    1276:	de2080e7          	jalr	-542(ra) # 1054 <putc>
    127a:	0485                	addi	s1,s1,1
    127c:	0004c583          	lbu	a1,0(s1)
    1280:	f9e5                	bnez	a1,1270 <vprintf+0x164>
    1282:	8aca                	mv	s5,s2
    1284:	4901                	li	s2,0
    1286:	b5e5                	j	116e <vprintf+0x62>
    1288:	c98d8493          	addi	s1,s11,-872 # 1c98 <mkdir+0x66>
    128c:	02800593          	li	a1,40
    1290:	b7c5                	j	1270 <vprintf+0x164>
    1292:	008a8493          	addi	s1,s5,8
    1296:	000ac583          	lbu	a1,0(s5)
    129a:	8552                	mv	a0,s4
    129c:	00000097          	auipc	ra,0x0
    12a0:	db8080e7          	jalr	-584(ra) # 1054 <putc>
    12a4:	8aa6                	mv	s5,s1
    12a6:	4901                	li	s2,0
    12a8:	b5d9                	j	116e <vprintf+0x62>
    12aa:	85ce                	mv	a1,s3
    12ac:	8552                	mv	a0,s4
    12ae:	00000097          	auipc	ra,0x0
    12b2:	da6080e7          	jalr	-602(ra) # 1054 <putc>
    12b6:	4901                	li	s2,0
    12b8:	bd5d                	j	116e <vprintf+0x62>
    12ba:	8aca                	mv	s5,s2
    12bc:	4901                	li	s2,0
    12be:	bd45                	j	116e <vprintf+0x62>
    12c0:	70a6                	ld	ra,104(sp)
    12c2:	7406                	ld	s0,96(sp)
    12c4:	64e6                	ld	s1,88(sp)
    12c6:	6946                	ld	s2,80(sp)
    12c8:	69a6                	ld	s3,72(sp)
    12ca:	6a06                	ld	s4,64(sp)
    12cc:	7ae2                	ld	s5,56(sp)
    12ce:	7b42                	ld	s6,48(sp)
    12d0:	7ba2                	ld	s7,40(sp)
    12d2:	7c02                	ld	s8,32(sp)
    12d4:	6ce2                	ld	s9,24(sp)
    12d6:	6d42                	ld	s10,16(sp)
    12d8:	6da2                	ld	s11,8(sp)
    12da:	6165                	addi	sp,sp,112
    12dc:	8082                	ret

00000000000012de <fprintf>:
    12de:	715d                	addi	sp,sp,-80
    12e0:	ec06                	sd	ra,24(sp)
    12e2:	f032                	sd	a2,32(sp)
    12e4:	f436                	sd	a3,40(sp)
    12e6:	f83a                	sd	a4,48(sp)
    12e8:	fc3e                	sd	a5,56(sp)
    12ea:	e0c2                	sd	a6,64(sp)
    12ec:	e4c6                	sd	a7,72(sp)
    12ee:	1010                	addi	a2,sp,32
    12f0:	e432                	sd	a2,8(sp)
    12f2:	00000097          	auipc	ra,0x0
    12f6:	e1a080e7          	jalr	-486(ra) # 110c <vprintf>
    12fa:	60e2                	ld	ra,24(sp)
    12fc:	6161                	addi	sp,sp,80
    12fe:	8082                	ret

0000000000001300 <printf>:
    1300:	711d                	addi	sp,sp,-96
    1302:	ec06                	sd	ra,24(sp)
    1304:	f42e                	sd	a1,40(sp)
    1306:	f832                	sd	a2,48(sp)
    1308:	fc36                	sd	a3,56(sp)
    130a:	e0ba                	sd	a4,64(sp)
    130c:	e4be                	sd	a5,72(sp)
    130e:	e8c2                	sd	a6,80(sp)
    1310:	ecc6                	sd	a7,88(sp)
    1312:	1030                	addi	a2,sp,40
    1314:	e432                	sd	a2,8(sp)
    1316:	85aa                	mv	a1,a0
    1318:	4505                	li	a0,1
    131a:	00000097          	auipc	ra,0x0
    131e:	df2080e7          	jalr	-526(ra) # 110c <vprintf>
    1322:	60e2                	ld	ra,24(sp)
    1324:	6125                	addi	sp,sp,96
    1326:	8082                	ret

0000000000001328 <cksum>:
    1328:	cdb1                	beqz	a1,1384 <cksum+0x5c>
    132a:	00b50833          	add	a6,a0,a1
    132e:	4781                	li	a5,0
    1330:	00002637          	lui	a2,0x2
    1334:	cb860613          	addi	a2,a2,-840 # 1cb8 <crctab>
    1338:	0505                	addi	a0,a0,1
    133a:	0087969b          	slliw	a3,a5,0x8
    133e:	0187d71b          	srliw	a4,a5,0x18
    1342:	fff54783          	lbu	a5,-1(a0)
    1346:	8f3d                	xor	a4,a4,a5
    1348:	1702                	slli	a4,a4,0x20
    134a:	9301                	srli	a4,a4,0x20
    134c:	070a                	slli	a4,a4,0x2
    134e:	9732                	add	a4,a4,a2
    1350:	431c                	lw	a5,0(a4)
    1352:	8fb5                	xor	a5,a5,a3
    1354:	2781                	sext.w	a5,a5
    1356:	fea811e3          	bne	a6,a0,1338 <cksum+0x10>
    135a:	00002637          	lui	a2,0x2
    135e:	cb860613          	addi	a2,a2,-840 # 1cb8 <crctab>
    1362:	0ff5f693          	andi	a3,a1,255
    1366:	81a1                	srli	a1,a1,0x8
    1368:	0087951b          	slliw	a0,a5,0x8
    136c:	0187d71b          	srliw	a4,a5,0x18
    1370:	8f35                	xor	a4,a4,a3
    1372:	070a                	slli	a4,a4,0x2
    1374:	9732                	add	a4,a4,a2
    1376:	431c                	lw	a5,0(a4)
    1378:	8fa9                	xor	a5,a5,a0
    137a:	2781                	sext.w	a5,a5
    137c:	f1fd                	bnez	a1,1362 <cksum+0x3a>
    137e:	fff7c513          	not	a0,a5
    1382:	8082                	ret
    1384:	4781                	li	a5,0
    1386:	bfe5                	j	137e <cksum+0x56>

0000000000001388 <swap_bytes>:
    1388:	ce19                	beqz	a2,13a6 <swap_bytes+0x1e>
    138a:	87aa                	mv	a5,a0
    138c:	962a                	add	a2,a2,a0
    138e:	0007c703          	lbu	a4,0(a5)
    1392:	0005c683          	lbu	a3,0(a1)
    1396:	00d78023          	sb	a3,0(a5)
    139a:	00e58023          	sb	a4,0(a1)
    139e:	0785                	addi	a5,a5,1
    13a0:	0585                	addi	a1,a1,1
    13a2:	fec796e3          	bne	a5,a2,138e <swap_bytes+0x6>
    13a6:	8082                	ret

00000000000013a8 <random_init>:
    13a8:	7139                	addi	sp,sp,-64
    13aa:	fc06                	sd	ra,56(sp)
    13ac:	f822                	sd	s0,48(sp)
    13ae:	f426                	sd	s1,40(sp)
    13b0:	f04a                	sd	s2,32(sp)
    13b2:	ec4e                	sd	s3,24(sp)
    13b4:	e852                	sd	s4,16(sp)
    13b6:	c62a                	sw	a0,12(sp)
    13b8:	000037b7          	lui	a5,0x3
    13bc:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13c0:	eca5                	bnez	s1,1438 <random_init+0x90>
    13c2:	00003737          	lui	a4,0x3
    13c6:	01070913          	addi	s2,a4,16 # 3010 <s>
    13ca:	01070713          	addi	a4,a4,16
    13ce:	87a6                	mv	a5,s1
    13d0:	10000693          	li	a3,256
    13d4:	00f70023          	sb	a5,0(a4)
    13d8:	2785                	addiw	a5,a5,1
    13da:	0705                	addi	a4,a4,1
    13dc:	fed79ce3          	bne	a5,a3,13d4 <random_init+0x2c>
    13e0:	4401                	li	s0,0
    13e2:	000039b7          	lui	s3,0x3
    13e6:	01098993          	addi	s3,s3,16 # 3010 <s>
    13ea:	10000a13          	li	s4,256
    13ee:	0034f793          	andi	a5,s1,3
    13f2:	0818                	addi	a4,sp,16
    13f4:	97ba                	add	a5,a5,a4
    13f6:	ffc7c783          	lbu	a5,-4(a5)
    13fa:	00094703          	lbu	a4,0(s2)
    13fe:	9fb9                	addw	a5,a5,a4
    1400:	9c3d                	addw	s0,s0,a5
    1402:	0ff47413          	andi	s0,s0,255
    1406:	4605                	li	a2,1
    1408:	008985b3          	add	a1,s3,s0
    140c:	854a                	mv	a0,s2
    140e:	00000097          	auipc	ra,0x0
    1412:	f7a080e7          	jalr	-134(ra) # 1388 <swap_bytes>
    1416:	2485                	addiw	s1,s1,1
    1418:	0905                	addi	s2,s2,1
    141a:	fd449ae3          	bne	s1,s4,13ee <random_init+0x46>
    141e:	000037b7          	lui	a5,0x3
    1422:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1426:	000037b7          	lui	a5,0x3
    142a:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    142e:	000037b7          	lui	a5,0x3
    1432:	4705                	li	a4,1
    1434:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1438:	70e2                	ld	ra,56(sp)
    143a:	7442                	ld	s0,48(sp)
    143c:	74a2                	ld	s1,40(sp)
    143e:	7902                	ld	s2,32(sp)
    1440:	69e2                	ld	s3,24(sp)
    1442:	6a42                	ld	s4,16(sp)
    1444:	6121                	addi	sp,sp,64
    1446:	8082                	ret

0000000000001448 <random_bytes>:
    1448:	7139                	addi	sp,sp,-64
    144a:	fc06                	sd	ra,56(sp)
    144c:	f822                	sd	s0,48(sp)
    144e:	f426                	sd	s1,40(sp)
    1450:	f04a                	sd	s2,32(sp)
    1452:	ec4e                	sd	s3,24(sp)
    1454:	e852                	sd	s4,16(sp)
    1456:	e456                	sd	s5,8(sp)
    1458:	e05a                	sd	s6,0(sp)
    145a:	892a                	mv	s2,a0
    145c:	8aae                	mv	s5,a1
    145e:	000037b7          	lui	a5,0x3
    1462:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1466:	c3c1                	beqz	a5,14e6 <random_bytes+0x9e>
    1468:	060a8563          	beqz	s5,14d2 <random_bytes+0x8a>
    146c:	9aca                	add	s5,s5,s2
    146e:	00003a37          	lui	s4,0x3
    1472:	000034b7          	lui	s1,0x3
    1476:	01048493          	addi	s1,s1,16 # 3010 <s>
    147a:	000039b7          	lui	s3,0x3
    147e:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1482:	2505                	addiw	a0,a0,1
    1484:	0ff57513          	andi	a0,a0,255
    1488:	00aa02a3          	sb	a0,5(s4)
    148c:	00a48b33          	add	s6,s1,a0
    1490:	000b4403          	lbu	s0,0(s6)
    1494:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1498:	9c3d                	addw	s0,s0,a5
    149a:	0ff47413          	andi	s0,s0,255
    149e:	00898223          	sb	s0,4(s3)
    14a2:	4605                	li	a2,1
    14a4:	008485b3          	add	a1,s1,s0
    14a8:	855a                	mv	a0,s6
    14aa:	00000097          	auipc	ra,0x0
    14ae:	ede080e7          	jalr	-290(ra) # 1388 <swap_bytes>
    14b2:	9426                	add	s0,s0,s1
    14b4:	000b4783          	lbu	a5,0(s6)
    14b8:	00044703          	lbu	a4,0(s0)
    14bc:	9fb9                	addw	a5,a5,a4
    14be:	0ff7f793          	andi	a5,a5,255
    14c2:	97a6                	add	a5,a5,s1
    14c4:	0007c783          	lbu	a5,0(a5)
    14c8:	00f90023          	sb	a5,0(s2)
    14cc:	0905                	addi	s2,s2,1
    14ce:	fb2a98e3          	bne	s5,s2,147e <random_bytes+0x36>
    14d2:	70e2                	ld	ra,56(sp)
    14d4:	7442                	ld	s0,48(sp)
    14d6:	74a2                	ld	s1,40(sp)
    14d8:	7902                	ld	s2,32(sp)
    14da:	69e2                	ld	s3,24(sp)
    14dc:	6a42                	ld	s4,16(sp)
    14de:	6aa2                	ld	s5,8(sp)
    14e0:	6b02                	ld	s6,0(sp)
    14e2:	6121                	addi	sp,sp,64
    14e4:	8082                	ret
    14e6:	4501                	li	a0,0
    14e8:	00000097          	auipc	ra,0x0
    14ec:	ec0080e7          	jalr	-320(ra) # 13a8 <random_init>
    14f0:	bfa5                	j	1468 <random_bytes+0x20>

00000000000014f2 <random_ulong>:
    14f2:	1101                	addi	sp,sp,-32
    14f4:	ec06                	sd	ra,24(sp)
    14f6:	45a1                	li	a1,8
    14f8:	0028                	addi	a0,sp,8
    14fa:	00000097          	auipc	ra,0x0
    14fe:	f4e080e7          	jalr	-178(ra) # 1448 <random_bytes>
    1502:	6522                	ld	a0,8(sp)
    1504:	60e2                	ld	ra,24(sp)
    1506:	6105                	addi	sp,sp,32
    1508:	8082                	ret

000000000000150a <shuffle>:
    150a:	c9b9                	beqz	a1,1560 <shuffle+0x56>
    150c:	7179                	addi	sp,sp,-48
    150e:	f406                	sd	ra,40(sp)
    1510:	f022                	sd	s0,32(sp)
    1512:	ec26                	sd	s1,24(sp)
    1514:	e84a                	sd	s2,16(sp)
    1516:	e44e                	sd	s3,8(sp)
    1518:	e052                	sd	s4,0(sp)
    151a:	8a2a                	mv	s4,a0
    151c:	89ae                	mv	s3,a1
    151e:	84b2                	mv	s1,a2
    1520:	892a                	mv	s2,a0
    1522:	4401                	li	s0,0
    1524:	00000097          	auipc	ra,0x0
    1528:	fce080e7          	jalr	-50(ra) # 14f2 <random_ulong>
    152c:	408985b3          	sub	a1,s3,s0
    1530:	02b575b3          	remu	a1,a0,a1
    1534:	95a2                	add	a1,a1,s0
    1536:	029585b3          	mul	a1,a1,s1
    153a:	8626                	mv	a2,s1
    153c:	95d2                	add	a1,a1,s4
    153e:	854a                	mv	a0,s2
    1540:	00000097          	auipc	ra,0x0
    1544:	e48080e7          	jalr	-440(ra) # 1388 <swap_bytes>
    1548:	0405                	addi	s0,s0,1
    154a:	9926                	add	s2,s2,s1
    154c:	fc899ce3          	bne	s3,s0,1524 <shuffle+0x1a>
    1550:	70a2                	ld	ra,40(sp)
    1552:	7402                	ld	s0,32(sp)
    1554:	64e2                	ld	s1,24(sp)
    1556:	6942                	ld	s2,16(sp)
    1558:	69a2                	ld	s3,8(sp)
    155a:	6a02                	ld	s4,0(sp)
    155c:	6145                	addi	sp,sp,48
    155e:	8082                	ret
    1560:	8082                	ret

0000000000001562 <arc4_init>:
    1562:	100500a3          	sb	zero,257(a0)
    1566:	10050023          	sb	zero,256(a0)
    156a:	4781                	li	a5,0
    156c:	10000693          	li	a3,256
    1570:	00f50733          	add	a4,a0,a5
    1574:	00f70023          	sb	a5,0(a4)
    1578:	0785                	addi	a5,a5,1
    157a:	fed79be3          	bne	a5,a3,1570 <arc4_init+0xe>
    157e:	86aa                	mv	a3,a0
    1580:	10050e13          	addi	t3,a0,256
    1584:	4701                	li	a4,0
    1586:	4781                	li	a5,0
    1588:	0006c883          	lbu	a7,0(a3)
    158c:	00f58833          	add	a6,a1,a5
    1590:	00084803          	lbu	a6,0(a6)
    1594:	00e8873b          	addw	a4,a7,a4
    1598:	00e8073b          	addw	a4,a6,a4
    159c:	0ff77713          	andi	a4,a4,255
    15a0:	00e50833          	add	a6,a0,a4
    15a4:	00084303          	lbu	t1,0(a6)
    15a8:	00668023          	sb	t1,0(a3)
    15ac:	01180023          	sb	a7,0(a6)
    15b0:	0785                	addi	a5,a5,1
    15b2:	00c7b833          	sltu	a6,a5,a2
    15b6:	41000833          	neg	a6,a6
    15ba:	0107f7b3          	and	a5,a5,a6
    15be:	0685                	addi	a3,a3,1
    15c0:	fdc694e3          	bne	a3,t3,1588 <arc4_init+0x26>
    15c4:	8082                	ret

00000000000015c6 <arc4_crypt>:
    15c6:	10054e03          	lbu	t3,256(a0)
    15ca:	10154803          	lbu	a6,257(a0)
    15ce:	fff60e93          	addi	t4,a2,-1
    15d2:	c225                	beqz	a2,1632 <arc4_crypt+0x6c>
    15d4:	00c588b3          	add	a7,a1,a2
    15d8:	86ae                	mv	a3,a1
    15da:	001e031b          	addiw	t1,t3,1
    15de:	40b3033b          	subw	t1,t1,a1
    15e2:	00d3073b          	addw	a4,t1,a3
    15e6:	0ff77713          	andi	a4,a4,255
    15ea:	972a                	add	a4,a4,a0
    15ec:	00074603          	lbu	a2,0(a4)
    15f0:	0106083b          	addw	a6,a2,a6
    15f4:	0ff87813          	andi	a6,a6,255
    15f8:	010507b3          	add	a5,a0,a6
    15fc:	0007c583          	lbu	a1,0(a5)
    1600:	00b70023          	sb	a1,0(a4)
    1604:	00c78023          	sb	a2,0(a5)
    1608:	0685                	addi	a3,a3,1
    160a:	00074783          	lbu	a5,0(a4)
    160e:	9fb1                	addw	a5,a5,a2
    1610:	0ff7f793          	andi	a5,a5,255
    1614:	97aa                	add	a5,a5,a0
    1616:	0007c783          	lbu	a5,0(a5)
    161a:	fff6c703          	lbu	a4,-1(a3)
    161e:	8fb9                	xor	a5,a5,a4
    1620:	fef68fa3          	sb	a5,-1(a3)
    1624:	fb169fe3          	bne	a3,a7,15e2 <arc4_crypt+0x1c>
    1628:	2e85                	addiw	t4,t4,1
    162a:	01ce8e3b          	addw	t3,t4,t3
    162e:	0ffe7e13          	andi	t3,t3,255
    1632:	11c50023          	sb	t3,256(a0)
    1636:	110500a3          	sb	a6,257(a0)
    163a:	8082                	ret

000000000000163c <_main>:
    163c:	1141                	addi	sp,sp,-16
    163e:	e406                	sd	ra,8(sp)
    1640:	00000097          	auipc	ra,0x0
    1644:	9c0080e7          	jalr	-1600(ra) # 1000 <main>
    1648:	4501                	li	a0,0
    164a:	00000097          	auipc	ra,0x0
    164e:	578080e7          	jalr	1400(ra) # 1bc2 <exit>
    1652:	60a2                	ld	ra,8(sp)
    1654:	0141                	addi	sp,sp,16
    1656:	8082                	ret

0000000000001658 <strcmp>:
    1658:	00054783          	lbu	a5,0(a0)
    165c:	cb91                	beqz	a5,1670 <strcmp+0x18>
    165e:	0005c703          	lbu	a4,0(a1)
    1662:	00f71763          	bne	a4,a5,1670 <strcmp+0x18>
    1666:	0505                	addi	a0,a0,1
    1668:	0585                	addi	a1,a1,1
    166a:	00054783          	lbu	a5,0(a0)
    166e:	fbe5                	bnez	a5,165e <strcmp+0x6>
    1670:	0005c503          	lbu	a0,0(a1)
    1674:	40a7853b          	subw	a0,a5,a0
    1678:	8082                	ret

000000000000167a <strcpy>:
    167a:	87aa                	mv	a5,a0
    167c:	0585                	addi	a1,a1,1
    167e:	0785                	addi	a5,a5,1
    1680:	fff5c703          	lbu	a4,-1(a1)
    1684:	fee78fa3          	sb	a4,-1(a5)
    1688:	fb75                	bnez	a4,167c <strcpy+0x2>
    168a:	8082                	ret

000000000000168c <strlen>:
    168c:	00054783          	lbu	a5,0(a0)
    1690:	cf81                	beqz	a5,16a8 <strlen+0x1c>
    1692:	0505                	addi	a0,a0,1
    1694:	87aa                	mv	a5,a0
    1696:	4685                	li	a3,1
    1698:	9e89                	subw	a3,a3,a0
    169a:	00f6853b          	addw	a0,a3,a5
    169e:	0785                	addi	a5,a5,1
    16a0:	fff7c703          	lbu	a4,-1(a5)
    16a4:	fb7d                	bnez	a4,169a <strlen+0xe>
    16a6:	8082                	ret
    16a8:	4501                	li	a0,0
    16aa:	8082                	ret

00000000000016ac <memset>:
    16ac:	ca19                	beqz	a2,16c2 <memset+0x16>
    16ae:	87aa                	mv	a5,a0
    16b0:	1602                	slli	a2,a2,0x20
    16b2:	9201                	srli	a2,a2,0x20
    16b4:	00a60733          	add	a4,a2,a0
    16b8:	00b78023          	sb	a1,0(a5)
    16bc:	0785                	addi	a5,a5,1
    16be:	fee79de3          	bne	a5,a4,16b8 <memset+0xc>
    16c2:	8082                	ret

00000000000016c4 <memcmp>:
    16c4:	1101                	addi	sp,sp,-32
    16c6:	ec06                	sd	ra,24(sp)
    16c8:	e822                	sd	s0,16(sp)
    16ca:	e426                	sd	s1,8(sp)
    16cc:	e04a                	sd	s2,0(sp)
    16ce:	892a                	mv	s2,a0
    16d0:	842e                	mv	s0,a1
    16d2:	84b2                	mv	s1,a2
    16d4:	c915                	beqz	a0,1708 <memcmp+0x44>
    16d6:	c5ad                	beqz	a1,1740 <memcmp+0x7c>
    16d8:	fff60713          	addi	a4,a2,-1
    16dc:	c645                	beqz	a2,1784 <memcmp+0xc0>
    16de:	87ca                	mv	a5,s2
    16e0:	00190613          	addi	a2,s2,1
    16e4:	963a                	add	a2,a2,a4
    16e6:	0007c683          	lbu	a3,0(a5)
    16ea:	00044703          	lbu	a4,0(s0)
    16ee:	08e69463          	bne	a3,a4,1776 <memcmp+0xb2>
    16f2:	0785                	addi	a5,a5,1
    16f4:	0405                	addi	s0,s0,1
    16f6:	fec798e3          	bne	a5,a2,16e6 <memcmp+0x22>
    16fa:	4501                	li	a0,0
    16fc:	60e2                	ld	ra,24(sp)
    16fe:	6442                	ld	s0,16(sp)
    1700:	64a2                	ld	s1,8(sp)
    1702:	6902                	ld	s2,0(sp)
    1704:	6105                	addi	sp,sp,32
    1706:	8082                	ret
    1708:	4501                	li	a0,0
    170a:	da6d                	beqz	a2,16fc <memcmp+0x38>
    170c:	03200693          	li	a3,50
    1710:	00002637          	lui	a2,0x2
    1714:	0b860613          	addi	a2,a2,184 # 20b8 <crctab+0x400>
    1718:	000025b7          	lui	a1,0x2
    171c:	0c858593          	addi	a1,a1,200 # 20c8 <crctab+0x410>
    1720:	4509                	li	a0,2
    1722:	00000097          	auipc	ra,0x0
    1726:	bbc080e7          	jalr	-1092(ra) # 12de <fprintf>
    172a:	650d                	lui	a0,0x3
    172c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1730:	00000097          	auipc	ra,0x0
    1734:	492080e7          	jalr	1170(ra) # 1bc2 <exit>
    1738:	fff48713          	addi	a4,s1,-1
    173c:	f04d                	bnez	s0,16de <memcmp+0x1a>
    173e:	a011                	j	1742 <memcmp+0x7e>
    1740:	c221                	beqz	a2,1780 <memcmp+0xbc>
    1742:	03300693          	li	a3,51
    1746:	00002637          	lui	a2,0x2
    174a:	0b860613          	addi	a2,a2,184 # 20b8 <crctab+0x400>
    174e:	000025b7          	lui	a1,0x2
    1752:	11058593          	addi	a1,a1,272 # 2110 <crctab+0x458>
    1756:	4509                	li	a0,2
    1758:	00000097          	auipc	ra,0x0
    175c:	b86080e7          	jalr	-1146(ra) # 12de <fprintf>
    1760:	650d                	lui	a0,0x3
    1762:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1766:	00000097          	auipc	ra,0x0
    176a:	45c080e7          	jalr	1116(ra) # 1bc2 <exit>
    176e:	fff48713          	addi	a4,s1,-1
    1772:	4401                	li	s0,0
    1774:	b7ad                	j	16de <memcmp+0x1a>
    1776:	4505                	li	a0,1
    1778:	f8d762e3          	bltu	a4,a3,16fc <memcmp+0x38>
    177c:	557d                	li	a0,-1
    177e:	bfbd                	j	16fc <memcmp+0x38>
    1780:	4501                	li	a0,0
    1782:	bfad                	j	16fc <memcmp+0x38>
    1784:	4501                	li	a0,0
    1786:	bf9d                	j	16fc <memcmp+0x38>

0000000000001788 <memcpy>:
    1788:	1101                	addi	sp,sp,-32
    178a:	ec06                	sd	ra,24(sp)
    178c:	e822                	sd	s0,16(sp)
    178e:	e426                	sd	s1,8(sp)
    1790:	e04a                	sd	s2,0(sp)
    1792:	84aa                	mv	s1,a0
    1794:	842e                	mv	s0,a1
    1796:	8932                	mv	s2,a2
    1798:	c51d                	beqz	a0,17c6 <memcpy+0x3e>
    179a:	c1ad                	beqz	a1,17fc <memcpy+0x74>
    179c:	fff60693          	addi	a3,a2,-1
    17a0:	ce01                	beqz	a2,17b8 <memcpy+0x30>
    17a2:	0685                	addi	a3,a3,1
    17a4:	96a6                	add	a3,a3,s1
    17a6:	87a6                	mv	a5,s1
    17a8:	0405                	addi	s0,s0,1
    17aa:	0785                	addi	a5,a5,1
    17ac:	fff44703          	lbu	a4,-1(s0)
    17b0:	fee78fa3          	sb	a4,-1(a5)
    17b4:	fed79ae3          	bne	a5,a3,17a8 <memcpy+0x20>
    17b8:	8526                	mv	a0,s1
    17ba:	60e2                	ld	ra,24(sp)
    17bc:	6442                	ld	s0,16(sp)
    17be:	64a2                	ld	s1,8(sp)
    17c0:	6902                	ld	s2,0(sp)
    17c2:	6105                	addi	sp,sp,32
    17c4:	8082                	ret
    17c6:	da6d                	beqz	a2,17b8 <memcpy+0x30>
    17c8:	04000693          	li	a3,64
    17cc:	00002637          	lui	a2,0x2
    17d0:	0b860613          	addi	a2,a2,184 # 20b8 <crctab+0x400>
    17d4:	000025b7          	lui	a1,0x2
    17d8:	15858593          	addi	a1,a1,344 # 2158 <crctab+0x4a0>
    17dc:	4509                	li	a0,2
    17de:	00000097          	auipc	ra,0x0
    17e2:	b00080e7          	jalr	-1280(ra) # 12de <fprintf>
    17e6:	650d                	lui	a0,0x3
    17e8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17ec:	00000097          	auipc	ra,0x0
    17f0:	3d6080e7          	jalr	982(ra) # 1bc2 <exit>
    17f4:	fff90693          	addi	a3,s2,-1
    17f8:	f44d                	bnez	s0,17a2 <memcpy+0x1a>
    17fa:	a011                	j	17fe <memcpy+0x76>
    17fc:	de55                	beqz	a2,17b8 <memcpy+0x30>
    17fe:	04100693          	li	a3,65
    1802:	00002637          	lui	a2,0x2
    1806:	0b860613          	addi	a2,a2,184 # 20b8 <crctab+0x400>
    180a:	000025b7          	lui	a1,0x2
    180e:	1a058593          	addi	a1,a1,416 # 21a0 <crctab+0x4e8>
    1812:	4509                	li	a0,2
    1814:	00000097          	auipc	ra,0x0
    1818:	aca080e7          	jalr	-1334(ra) # 12de <fprintf>
    181c:	650d                	lui	a0,0x3
    181e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1822:	00000097          	auipc	ra,0x0
    1826:	3a0080e7          	jalr	928(ra) # 1bc2 <exit>
    182a:	fff90693          	addi	a3,s2,-1
    182e:	4401                	li	s0,0
    1830:	bf8d                	j	17a2 <memcpy+0x1a>

0000000000001832 <itoa>:
    1832:	1101                	addi	sp,sp,-32
    1834:	ec06                	sd	ra,24(sp)
    1836:	e822                	sd	s0,16(sp)
    1838:	e426                	sd	s1,8(sp)
    183a:	842a                	mv	s0,a0
    183c:	41f5d71b          	sraiw	a4,a1,0x1f
    1840:	00e5c7b3          	xor	a5,a1,a4
    1844:	9f99                	subw	a5,a5,a4
    1846:	84aa                	mv	s1,a0
    1848:	862a                	mv	a2,a0
    184a:	4681                	li	a3,0
    184c:	4529                	li	a0,10
    184e:	4825                	li	a6,9
    1850:	88b6                	mv	a7,a3
    1852:	2685                	addiw	a3,a3,1
    1854:	02a7e73b          	remw	a4,a5,a0
    1858:	0307071b          	addiw	a4,a4,48
    185c:	00e60023          	sb	a4,0(a2)
    1860:	873e                	mv	a4,a5
    1862:	02a7c7bb          	divw	a5,a5,a0
    1866:	0605                	addi	a2,a2,1
    1868:	fee844e3          	blt	a6,a4,1850 <itoa+0x1e>
    186c:	0405c863          	bltz	a1,18bc <itoa+0x8a>
    1870:	96a2                	add	a3,a3,s0
    1872:	00068023          	sb	zero,0(a3)
    1876:	8522                	mv	a0,s0
    1878:	00000097          	auipc	ra,0x0
    187c:	e14080e7          	jalr	-492(ra) # 168c <strlen>
    1880:	fff5071b          	addiw	a4,a0,-1
    1884:	02e05763          	blez	a4,18b2 <itoa+0x80>
    1888:	9722                	add	a4,a4,s0
    188a:	4681                	li	a3,0
    188c:	0004c783          	lbu	a5,0(s1)
    1890:	00074603          	lbu	a2,0(a4)
    1894:	00c48023          	sb	a2,0(s1)
    1898:	00f70023          	sb	a5,0(a4)
    189c:	0016879b          	addiw	a5,a3,1
    18a0:	0007869b          	sext.w	a3,a5
    18a4:	0485                	addi	s1,s1,1
    18a6:	177d                	addi	a4,a4,-1
    18a8:	fff7c793          	not	a5,a5
    18ac:	9fa9                	addw	a5,a5,a0
    18ae:	fcf6cfe3          	blt	a3,a5,188c <itoa+0x5a>
    18b2:	60e2                	ld	ra,24(sp)
    18b4:	6442                	ld	s0,16(sp)
    18b6:	64a2                	ld	s1,8(sp)
    18b8:	6105                	addi	sp,sp,32
    18ba:	8082                	ret
    18bc:	96a2                	add	a3,a3,s0
    18be:	02d00793          	li	a5,45
    18c2:	00f68023          	sb	a5,0(a3)
    18c6:	0028869b          	addiw	a3,a7,2
    18ca:	b75d                	j	1870 <itoa+0x3e>

00000000000018cc <atoi>:
    18cc:	00054783          	lbu	a5,0(a0)
    18d0:	02000713          	li	a4,32
    18d4:	00e79763          	bne	a5,a4,18e2 <atoi+0x16>
    18d8:	0505                	addi	a0,a0,1
    18da:	00054783          	lbu	a5,0(a0)
    18de:	fee78de3          	beq	a5,a4,18d8 <atoi+0xc>
    18e2:	02b00713          	li	a4,43
    18e6:	04e78663          	beq	a5,a4,1932 <atoi+0x66>
    18ea:	02d00713          	li	a4,45
    18ee:	4805                	li	a6,1
    18f0:	04e78463          	beq	a5,a4,1938 <atoi+0x6c>
    18f4:	00054683          	lbu	a3,0(a0)
    18f8:	fd06879b          	addiw	a5,a3,-48
    18fc:	0ff7f793          	andi	a5,a5,255
    1900:	4725                	li	a4,9
    1902:	02f76e63          	bltu	a4,a5,193e <atoi+0x72>
    1906:	4601                	li	a2,0
    1908:	45a5                	li	a1,9
    190a:	0505                	addi	a0,a0,1
    190c:	0026179b          	slliw	a5,a2,0x2
    1910:	9fb1                	addw	a5,a5,a2
    1912:	0017979b          	slliw	a5,a5,0x1
    1916:	9fb5                	addw	a5,a5,a3
    1918:	fd07861b          	addiw	a2,a5,-48
    191c:	00054683          	lbu	a3,0(a0)
    1920:	fd06871b          	addiw	a4,a3,-48
    1924:	0ff77713          	andi	a4,a4,255
    1928:	fee5f1e3          	bgeu	a1,a4,190a <atoi+0x3e>
    192c:	02c8053b          	mulw	a0,a6,a2
    1930:	8082                	ret
    1932:	0505                	addi	a0,a0,1
    1934:	4805                	li	a6,1
    1936:	bf7d                	j	18f4 <atoi+0x28>
    1938:	0505                	addi	a0,a0,1
    193a:	587d                	li	a6,-1
    193c:	bf65                	j	18f4 <atoi+0x28>
    193e:	4601                	li	a2,0
    1940:	b7f5                	j	192c <atoi+0x60>

0000000000001942 <check_file_handle>:
    1942:	d8010113          	addi	sp,sp,-640
    1946:	26113c23          	sd	ra,632(sp)
    194a:	26813823          	sd	s0,624(sp)
    194e:	26913423          	sd	s1,616(sp)
    1952:	27213023          	sd	s2,608(sp)
    1956:	25313c23          	sd	s3,600(sp)
    195a:	25413823          	sd	s4,592(sp)
    195e:	25513423          	sd	s5,584(sp)
    1962:	25613023          	sd	s6,576(sp)
    1966:	23713c23          	sd	s7,568(sp)
    196a:	23813823          	sd	s8,560(sp)
    196e:	23913423          	sd	s9,552(sp)
    1972:	23a13023          	sd	s10,544(sp)
    1976:	21b13c23          	sd	s11,536(sp)
    197a:	8baa                	mv	s7,a0
    197c:	8a2e                	mv	s4,a1
    197e:	8c32                	mv	s8,a2
    1980:	89b6                	mv	s3,a3
    1982:	040c                	addi	a1,sp,512
    1984:	00000097          	auipc	ra,0x0
    1988:	28e080e7          	jalr	654(ra) # 1c12 <fstat>
    198c:	20813603          	ld	a2,520(sp)
    1990:	03361163          	bne	a2,s3,19b2 <check_file_handle+0x70>
    1994:	06098763          	beqz	s3,1a02 <check_file_handle+0xc0>
    1998:	4901                	li	s2,0
    199a:	20000a93          	li	s5,512
    199e:	00002cb7          	lui	s9,0x2
    19a2:	00002db7          	lui	s11,0x2
    19a6:	6b0d                	lui	s6,0x3
    19a8:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19ac:	00002d37          	lui	s10,0x2
    19b0:	aa39                	j	1ace <check_file_handle+0x18c>
    19b2:	86ce                	mv	a3,s3
    19b4:	85d2                	mv	a1,s4
    19b6:	00002537          	lui	a0,0x2
    19ba:	1e850513          	addi	a0,a0,488 # 21e8 <crctab+0x530>
    19be:	00000097          	auipc	ra,0x0
    19c2:	942080e7          	jalr	-1726(ra) # 1300 <printf>
    19c6:	fc0999e3          	bnez	s3,1998 <check_file_handle+0x56>
    19ca:	20813683          	ld	a3,520(sp)
    19ce:	03368a63          	beq	a3,s3,1a02 <check_file_handle+0xc0>
    19d2:	0a600813          	li	a6,166
    19d6:	000027b7          	lui	a5,0x2
    19da:	0b878793          	addi	a5,a5,184 # 20b8 <crctab+0x400>
    19de:	874e                	mv	a4,s3
    19e0:	8652                	mv	a2,s4
    19e2:	000025b7          	lui	a1,0x2
    19e6:	2b858593          	addi	a1,a1,696 # 22b8 <crctab+0x600>
    19ea:	4509                	li	a0,2
    19ec:	00000097          	auipc	ra,0x0
    19f0:	8f2080e7          	jalr	-1806(ra) # 12de <fprintf>
    19f4:	650d                	lui	a0,0x3
    19f6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19fa:	00000097          	auipc	ra,0x0
    19fe:	1c8080e7          	jalr	456(ra) # 1bc2 <exit>
    1a02:	85d2                	mv	a1,s4
    1a04:	00002537          	lui	a0,0x2
    1a08:	30050513          	addi	a0,a0,768 # 2300 <crctab+0x648>
    1a0c:	00000097          	auipc	ra,0x0
    1a10:	8f4080e7          	jalr	-1804(ra) # 1300 <printf>
    1a14:	27813083          	ld	ra,632(sp)
    1a18:	27013403          	ld	s0,624(sp)
    1a1c:	26813483          	ld	s1,616(sp)
    1a20:	26013903          	ld	s2,608(sp)
    1a24:	25813983          	ld	s3,600(sp)
    1a28:	25013a03          	ld	s4,592(sp)
    1a2c:	24813a83          	ld	s5,584(sp)
    1a30:	24013b03          	ld	s6,576(sp)
    1a34:	23813b83          	ld	s7,568(sp)
    1a38:	23013c03          	ld	s8,560(sp)
    1a3c:	22813c83          	ld	s9,552(sp)
    1a40:	22013d03          	ld	s10,544(sp)
    1a44:	21813d83          	ld	s11,536(sp)
    1a48:	28010113          	addi	sp,sp,640
    1a4c:	8082                	ret
    1a4e:	09d00893          	li	a7,157
    1a52:	0b8c8813          	addi	a6,s9,184 # 20b8 <crctab+0x400>
    1a56:	87aa                	mv	a5,a0
    1a58:	8752                	mv	a4,s4
    1a5a:	86ca                	mv	a3,s2
    1a5c:	8622                	mv	a2,s0
    1a5e:	218d8593          	addi	a1,s11,536 # 2218 <crctab+0x560>
    1a62:	4509                	li	a0,2
    1a64:	00000097          	auipc	ra,0x0
    1a68:	87a080e7          	jalr	-1926(ra) # 12de <fprintf>
    1a6c:	855a                	mv	a0,s6
    1a6e:	00000097          	auipc	ra,0x0
    1a72:	154080e7          	jalr	340(ra) # 1bc2 <exit>
    1a76:	a89d                	j	1aec <check_file_handle+0x1aa>
    1a78:	00160593          	addi	a1,a2,1
    1a7c:	0285f163          	bgeu	a1,s0,1a9e <check_file_handle+0x15c>
    1a80:	00c10733          	add	a4,sp,a2
    1a84:	00b487b3          	add	a5,s1,a1
    1a88:	00174683          	lbu	a3,1(a4)
    1a8c:	0007c783          	lbu	a5,0(a5)
    1a90:	00f68763          	beq	a3,a5,1a9e <check_file_handle+0x15c>
    1a94:	0585                	addi	a1,a1,1
    1a96:	0705                	addi	a4,a4,1
    1a98:	feb416e3          	bne	s0,a1,1a84 <check_file_handle+0x142>
    1a9c:	85a2                	mv	a1,s0
    1a9e:	08100813          	li	a6,129
    1aa2:	0b8c8793          	addi	a5,s9,184
    1aa6:	8752                	mv	a4,s4
    1aa8:	012606b3          	add	a3,a2,s2
    1aac:	40c58633          	sub	a2,a1,a2
    1ab0:	260d0593          	addi	a1,s10,608 # 2260 <crctab+0x5a8>
    1ab4:	4509                	li	a0,2
    1ab6:	00000097          	auipc	ra,0x0
    1aba:	828080e7          	jalr	-2008(ra) # 12de <fprintf>
    1abe:	855a                	mv	a0,s6
    1ac0:	00000097          	auipc	ra,0x0
    1ac4:	102080e7          	jalr	258(ra) # 1bc2 <exit>
    1ac8:	9922                	add	s2,s2,s0
    1aca:	f13970e3          	bgeu	s2,s3,19ca <check_file_handle+0x88>
    1ace:	41298433          	sub	s0,s3,s2
    1ad2:	008af363          	bgeu	s5,s0,1ad8 <check_file_handle+0x196>
    1ad6:	8456                	mv	s0,s5
    1ad8:	0004061b          	sext.w	a2,s0
    1adc:	858a                	mv	a1,sp
    1ade:	855e                	mv	a0,s7
    1ae0:	00000097          	auipc	ra,0x0
    1ae4:	10a080e7          	jalr	266(ra) # 1bea <read>
    1ae8:	f68513e3          	bne	a0,s0,1a4e <check_file_handle+0x10c>
    1aec:	012c04b3          	add	s1,s8,s2
    1af0:	8622                	mv	a2,s0
    1af2:	85a6                	mv	a1,s1
    1af4:	850a                	mv	a0,sp
    1af6:	00000097          	auipc	ra,0x0
    1afa:	bce080e7          	jalr	-1074(ra) # 16c4 <memcmp>
    1afe:	d569                	beqz	a0,1ac8 <check_file_handle+0x186>
    1b00:	03298163          	beq	s3,s2,1b22 <check_file_handle+0x1e0>
    1b04:	870a                	mv	a4,sp
    1b06:	4601                	li	a2,0
    1b08:	00c487b3          	add	a5,s1,a2
    1b0c:	00074683          	lbu	a3,0(a4)
    1b10:	0007c783          	lbu	a5,0(a5)
    1b14:	f6f692e3          	bne	a3,a5,1a78 <check_file_handle+0x136>
    1b18:	0605                	addi	a2,a2,1
    1b1a:	0705                	addi	a4,a4,1
    1b1c:	fe8666e3          	bltu	a2,s0,1b08 <check_file_handle+0x1c6>
    1b20:	bfa1                	j	1a78 <check_file_handle+0x136>
    1b22:	4601                	li	a2,0
    1b24:	4585                	li	a1,1
    1b26:	bfa5                	j	1a9e <check_file_handle+0x15c>

0000000000001b28 <check_file>:
    1b28:	7179                	addi	sp,sp,-48
    1b2a:	f406                	sd	ra,40(sp)
    1b2c:	f022                	sd	s0,32(sp)
    1b2e:	ec26                	sd	s1,24(sp)
    1b30:	e84a                	sd	s2,16(sp)
    1b32:	e44e                	sd	s3,8(sp)
    1b34:	84aa                	mv	s1,a0
    1b36:	892e                	mv	s2,a1
    1b38:	89b2                	mv	s3,a2
    1b3a:	4581                	li	a1,0
    1b3c:	00000097          	auipc	ra,0x0
    1b40:	0a6080e7          	jalr	166(ra) # 1be2 <open>
    1b44:	842a                	mv	s0,a0
    1b46:	4789                	li	a5,2
    1b48:	02a7df63          	bge	a5,a0,1b86 <check_file+0x5e>
    1b4c:	86ce                	mv	a3,s3
    1b4e:	864a                	mv	a2,s2
    1b50:	85a6                	mv	a1,s1
    1b52:	8522                	mv	a0,s0
    1b54:	00000097          	auipc	ra,0x0
    1b58:	dee080e7          	jalr	-530(ra) # 1942 <check_file_handle>
    1b5c:	85a6                	mv	a1,s1
    1b5e:	00002537          	lui	a0,0x2
    1b62:	38850513          	addi	a0,a0,904 # 2388 <crctab+0x6d0>
    1b66:	fffff097          	auipc	ra,0xfffff
    1b6a:	79a080e7          	jalr	1946(ra) # 1300 <printf>
    1b6e:	8522                	mv	a0,s0
    1b70:	00000097          	auipc	ra,0x0
    1b74:	09a080e7          	jalr	154(ra) # 1c0a <close>
    1b78:	70a2                	ld	ra,40(sp)
    1b7a:	7402                	ld	s0,32(sp)
    1b7c:	64e2                	ld	s1,24(sp)
    1b7e:	6942                	ld	s2,16(sp)
    1b80:	69a2                	ld	s3,8(sp)
    1b82:	6145                	addi	sp,sp,48
    1b84:	8082                	ret
    1b86:	0ae00713          	li	a4,174
    1b8a:	000026b7          	lui	a3,0x2
    1b8e:	0b868693          	addi	a3,a3,184 # 20b8 <crctab+0x400>
    1b92:	8626                	mv	a2,s1
    1b94:	000025b7          	lui	a1,0x2
    1b98:	32058593          	addi	a1,a1,800 # 2320 <crctab+0x668>
    1b9c:	4509                	li	a0,2
    1b9e:	fffff097          	auipc	ra,0xfffff
    1ba2:	740080e7          	jalr	1856(ra) # 12de <fprintf>
    1ba6:	650d                	lui	a0,0x3
    1ba8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bac:	00000097          	auipc	ra,0x0
    1bb0:	016080e7          	jalr	22(ra) # 1bc2 <exit>
    1bb4:	bf61                	j	1b4c <check_file+0x24>

0000000000001bb6 <r_sp>:
    1bb6:	850a                	mv	a0,sp
    1bb8:	8082                	ret

0000000000001bba <halt>:
    1bba:	4885                	li	a7,1
    1bbc:	00000073          	ecall
    1bc0:	8082                	ret

0000000000001bc2 <exit>:
    1bc2:	4889                	li	a7,2
    1bc4:	00000073          	ecall
    1bc8:	8082                	ret

0000000000001bca <exec>:
    1bca:	488d                	li	a7,3
    1bcc:	00000073          	ecall
    1bd0:	8082                	ret

0000000000001bd2 <wait>:
    1bd2:	4891                	li	a7,4
    1bd4:	00000073          	ecall
    1bd8:	8082                	ret

0000000000001bda <remove>:
    1bda:	4895                	li	a7,5
    1bdc:	00000073          	ecall
    1be0:	8082                	ret

0000000000001be2 <open>:
    1be2:	4899                	li	a7,6
    1be4:	00000073          	ecall
    1be8:	8082                	ret

0000000000001bea <read>:
    1bea:	489d                	li	a7,7
    1bec:	00000073          	ecall
    1bf0:	8082                	ret

0000000000001bf2 <write>:
    1bf2:	48a1                	li	a7,8
    1bf4:	00000073          	ecall
    1bf8:	8082                	ret

0000000000001bfa <seek>:
    1bfa:	48a5                	li	a7,9
    1bfc:	00000073          	ecall
    1c00:	8082                	ret

0000000000001c02 <tell>:
    1c02:	48a9                	li	a7,10
    1c04:	00000073          	ecall
    1c08:	8082                	ret

0000000000001c0a <close>:
    1c0a:	48ad                	li	a7,11
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <fstat>:
    1c12:	48b1                	li	a7,12
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <mmap>:
    1c1a:	48b5                	li	a7,13
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <munmap>:
    1c22:	48b9                	li	a7,14
    1c24:	00000073          	ecall
    1c28:	8082                	ret

0000000000001c2a <chdir>:
    1c2a:	48bd                	li	a7,15
    1c2c:	00000073          	ecall
    1c30:	8082                	ret

0000000000001c32 <mkdir>:
    1c32:	48c1                	li	a7,16
    1c34:	00000073          	ecall
    1c38:	8082                	ret
