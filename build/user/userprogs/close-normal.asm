
build/user/userprogs/close-normal:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	4581                	li	a1,0
    1008:	00002537          	lui	a0,0x2
    100c:	c8050513          	addi	a0,a0,-896 # 1c80 <mkdir+0x16>
    1010:	00001097          	auipc	ra,0x1
    1014:	c0a080e7          	jalr	-1014(ra) # 1c1a <open>
    1018:	842a                	mv	s0,a0
    101a:	4789                	li	a5,2
    101c:	00a7dc63          	bge	a5,a0,1034 <main+0x34>
    1020:	8522                	mv	a0,s0
    1022:	00001097          	auipc	ra,0x1
    1026:	c20080e7          	jalr	-992(ra) # 1c42 <close>
    102a:	e91d                	bnez	a0,1060 <main+0x60>
    102c:	60a2                	ld	ra,8(sp)
    102e:	6402                	ld	s0,0(sp)
    1030:	0141                	addi	sp,sp,16
    1032:	8082                	ret
    1034:	469d                	li	a3,7
    1036:	00002637          	lui	a2,0x2
    103a:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x26>
    103e:	000025b7          	lui	a1,0x2
    1042:	cb058593          	addi	a1,a1,-848 # 1cb0 <mkdir+0x46>
    1046:	4509                	li	a0,2
    1048:	00000097          	auipc	ra,0x0
    104c:	2ce080e7          	jalr	718(ra) # 1316 <fprintf>
    1050:	650d                	lui	a0,0x3
    1052:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1056:	00001097          	auipc	ra,0x1
    105a:	ba4080e7          	jalr	-1116(ra) # 1bfa <exit>
    105e:	b7c9                	j	1020 <main+0x20>
    1060:	46a1                	li	a3,8
    1062:	00002637          	lui	a2,0x2
    1066:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x26>
    106a:	000025b7          	lui	a1,0x2
    106e:	d0058593          	addi	a1,a1,-768 # 1d00 <mkdir+0x96>
    1072:	4509                	li	a0,2
    1074:	00000097          	auipc	ra,0x0
    1078:	2a2080e7          	jalr	674(ra) # 1316 <fprintf>
    107c:	650d                	lui	a0,0x3
    107e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1082:	00001097          	auipc	ra,0x1
    1086:	b78080e7          	jalr	-1160(ra) # 1bfa <exit>
    108a:	b74d                	j	102c <main+0x2c>

000000000000108c <putc>:
    108c:	1101                	addi	sp,sp,-32
    108e:	ec06                	sd	ra,24(sp)
    1090:	00b107a3          	sb	a1,15(sp)
    1094:	4605                	li	a2,1
    1096:	00f10593          	addi	a1,sp,15
    109a:	00001097          	auipc	ra,0x1
    109e:	b90080e7          	jalr	-1136(ra) # 1c2a <write>
    10a2:	60e2                	ld	ra,24(sp)
    10a4:	6105                	addi	sp,sp,32
    10a6:	8082                	ret

00000000000010a8 <printint>:
    10a8:	7179                	addi	sp,sp,-48
    10aa:	f406                	sd	ra,40(sp)
    10ac:	f022                	sd	s0,32(sp)
    10ae:	ec26                	sd	s1,24(sp)
    10b0:	e84a                	sd	s2,16(sp)
    10b2:	84aa                	mv	s1,a0
    10b4:	c299                	beqz	a3,10ba <printint+0x12>
    10b6:	0805c363          	bltz	a1,113c <printint+0x94>
    10ba:	2581                	sext.w	a1,a1
    10bc:	4881                	li	a7,0
    10be:	868a                	mv	a3,sp
    10c0:	4701                	li	a4,0
    10c2:	2601                	sext.w	a2,a2
    10c4:	00002537          	lui	a0,0x2
    10c8:	d4850513          	addi	a0,a0,-696 # 1d48 <digits>
    10cc:	883a                	mv	a6,a4
    10ce:	2705                	addiw	a4,a4,1
    10d0:	02c5f7bb          	remuw	a5,a1,a2
    10d4:	1782                	slli	a5,a5,0x20
    10d6:	9381                	srli	a5,a5,0x20
    10d8:	97aa                	add	a5,a5,a0
    10da:	0007c783          	lbu	a5,0(a5)
    10de:	00f68023          	sb	a5,0(a3)
    10e2:	0005879b          	sext.w	a5,a1
    10e6:	02c5d5bb          	divuw	a1,a1,a2
    10ea:	0685                	addi	a3,a3,1
    10ec:	fec7f0e3          	bgeu	a5,a2,10cc <printint+0x24>
    10f0:	00088a63          	beqz	a7,1104 <printint+0x5c>
    10f4:	081c                	addi	a5,sp,16
    10f6:	973e                	add	a4,a4,a5
    10f8:	02d00793          	li	a5,45
    10fc:	fef70823          	sb	a5,-16(a4)
    1100:	0028071b          	addiw	a4,a6,2
    1104:	02e05663          	blez	a4,1130 <printint+0x88>
    1108:	00e10433          	add	s0,sp,a4
    110c:	fff10913          	addi	s2,sp,-1
    1110:	993a                	add	s2,s2,a4
    1112:	377d                	addiw	a4,a4,-1
    1114:	1702                	slli	a4,a4,0x20
    1116:	9301                	srli	a4,a4,0x20
    1118:	40e90933          	sub	s2,s2,a4
    111c:	fff44583          	lbu	a1,-1(s0)
    1120:	8526                	mv	a0,s1
    1122:	00000097          	auipc	ra,0x0
    1126:	f6a080e7          	jalr	-150(ra) # 108c <putc>
    112a:	147d                	addi	s0,s0,-1
    112c:	ff2418e3          	bne	s0,s2,111c <printint+0x74>
    1130:	70a2                	ld	ra,40(sp)
    1132:	7402                	ld	s0,32(sp)
    1134:	64e2                	ld	s1,24(sp)
    1136:	6942                	ld	s2,16(sp)
    1138:	6145                	addi	sp,sp,48
    113a:	8082                	ret
    113c:	40b005bb          	negw	a1,a1
    1140:	4885                	li	a7,1
    1142:	bfb5                	j	10be <printint+0x16>

0000000000001144 <vprintf>:
    1144:	7159                	addi	sp,sp,-112
    1146:	f486                	sd	ra,104(sp)
    1148:	f0a2                	sd	s0,96(sp)
    114a:	eca6                	sd	s1,88(sp)
    114c:	e8ca                	sd	s2,80(sp)
    114e:	e4ce                	sd	s3,72(sp)
    1150:	e0d2                	sd	s4,64(sp)
    1152:	fc56                	sd	s5,56(sp)
    1154:	f85a                	sd	s6,48(sp)
    1156:	f45e                	sd	s7,40(sp)
    1158:	f062                	sd	s8,32(sp)
    115a:	ec66                	sd	s9,24(sp)
    115c:	e86a                	sd	s10,16(sp)
    115e:	e46e                	sd	s11,8(sp)
    1160:	0005c483          	lbu	s1,0(a1)
    1164:	18048a63          	beqz	s1,12f8 <vprintf+0x1b4>
    1168:	8a2a                	mv	s4,a0
    116a:	8ab2                	mv	s5,a2
    116c:	00158413          	addi	s0,a1,1
    1170:	4901                	li	s2,0
    1172:	02500993          	li	s3,37
    1176:	06400b93          	li	s7,100
    117a:	06c00c13          	li	s8,108
    117e:	07800c93          	li	s9,120
    1182:	07000d13          	li	s10,112
    1186:	00002db7          	lui	s11,0x2
    118a:	00002b37          	lui	s6,0x2
    118e:	d48b0b13          	addi	s6,s6,-696 # 1d48 <digits>
    1192:	a839                	j	11b0 <vprintf+0x6c>
    1194:	85a6                	mv	a1,s1
    1196:	8552                	mv	a0,s4
    1198:	00000097          	auipc	ra,0x0
    119c:	ef4080e7          	jalr	-268(ra) # 108c <putc>
    11a0:	a019                	j	11a6 <vprintf+0x62>
    11a2:	01390f63          	beq	s2,s3,11c0 <vprintf+0x7c>
    11a6:	0405                	addi	s0,s0,1
    11a8:	fff44483          	lbu	s1,-1(s0)
    11ac:	14048663          	beqz	s1,12f8 <vprintf+0x1b4>
    11b0:	0004879b          	sext.w	a5,s1
    11b4:	fe0917e3          	bnez	s2,11a2 <vprintf+0x5e>
    11b8:	fd379ee3          	bne	a5,s3,1194 <vprintf+0x50>
    11bc:	893e                	mv	s2,a5
    11be:	b7e5                	j	11a6 <vprintf+0x62>
    11c0:	05778063          	beq	a5,s7,1200 <vprintf+0xbc>
    11c4:	05878c63          	beq	a5,s8,121c <vprintf+0xd8>
    11c8:	07978863          	beq	a5,s9,1238 <vprintf+0xf4>
    11cc:	09a78463          	beq	a5,s10,1254 <vprintf+0x110>
    11d0:	07300713          	li	a4,115
    11d4:	0ce78263          	beq	a5,a4,1298 <vprintf+0x154>
    11d8:	06300713          	li	a4,99
    11dc:	0ee78763          	beq	a5,a4,12ca <vprintf+0x186>
    11e0:	11378163          	beq	a5,s3,12e2 <vprintf+0x19e>
    11e4:	85ce                	mv	a1,s3
    11e6:	8552                	mv	a0,s4
    11e8:	00000097          	auipc	ra,0x0
    11ec:	ea4080e7          	jalr	-348(ra) # 108c <putc>
    11f0:	85a6                	mv	a1,s1
    11f2:	8552                	mv	a0,s4
    11f4:	00000097          	auipc	ra,0x0
    11f8:	e98080e7          	jalr	-360(ra) # 108c <putc>
    11fc:	4901                	li	s2,0
    11fe:	b765                	j	11a6 <vprintf+0x62>
    1200:	008a8493          	addi	s1,s5,8
    1204:	4685                	li	a3,1
    1206:	4629                	li	a2,10
    1208:	000aa583          	lw	a1,0(s5)
    120c:	8552                	mv	a0,s4
    120e:	00000097          	auipc	ra,0x0
    1212:	e9a080e7          	jalr	-358(ra) # 10a8 <printint>
    1216:	8aa6                	mv	s5,s1
    1218:	4901                	li	s2,0
    121a:	b771                	j	11a6 <vprintf+0x62>
    121c:	008a8493          	addi	s1,s5,8
    1220:	4681                	li	a3,0
    1222:	4629                	li	a2,10
    1224:	000aa583          	lw	a1,0(s5)
    1228:	8552                	mv	a0,s4
    122a:	00000097          	auipc	ra,0x0
    122e:	e7e080e7          	jalr	-386(ra) # 10a8 <printint>
    1232:	8aa6                	mv	s5,s1
    1234:	4901                	li	s2,0
    1236:	bf85                	j	11a6 <vprintf+0x62>
    1238:	008a8493          	addi	s1,s5,8
    123c:	4681                	li	a3,0
    123e:	4641                	li	a2,16
    1240:	000aa583          	lw	a1,0(s5)
    1244:	8552                	mv	a0,s4
    1246:	00000097          	auipc	ra,0x0
    124a:	e62080e7          	jalr	-414(ra) # 10a8 <printint>
    124e:	8aa6                	mv	s5,s1
    1250:	4901                	li	s2,0
    1252:	bf91                	j	11a6 <vprintf+0x62>
    1254:	008a8913          	addi	s2,s5,8
    1258:	000aba83          	ld	s5,0(s5)
    125c:	03000593          	li	a1,48
    1260:	8552                	mv	a0,s4
    1262:	00000097          	auipc	ra,0x0
    1266:	e2a080e7          	jalr	-470(ra) # 108c <putc>
    126a:	85e6                	mv	a1,s9
    126c:	8552                	mv	a0,s4
    126e:	00000097          	auipc	ra,0x0
    1272:	e1e080e7          	jalr	-482(ra) # 108c <putc>
    1276:	44c1                	li	s1,16
    1278:	03cad793          	srli	a5,s5,0x3c
    127c:	97da                	add	a5,a5,s6
    127e:	0007c583          	lbu	a1,0(a5)
    1282:	8552                	mv	a0,s4
    1284:	00000097          	auipc	ra,0x0
    1288:	e08080e7          	jalr	-504(ra) # 108c <putc>
    128c:	0a92                	slli	s5,s5,0x4
    128e:	34fd                	addiw	s1,s1,-1
    1290:	f4e5                	bnez	s1,1278 <vprintf+0x134>
    1292:	8aca                	mv	s5,s2
    1294:	4901                	li	s2,0
    1296:	bf01                	j	11a6 <vprintf+0x62>
    1298:	008a8913          	addi	s2,s5,8
    129c:	000ab483          	ld	s1,0(s5)
    12a0:	c085                	beqz	s1,12c0 <vprintf+0x17c>
    12a2:	0004c583          	lbu	a1,0(s1)
    12a6:	c5b1                	beqz	a1,12f2 <vprintf+0x1ae>
    12a8:	8552                	mv	a0,s4
    12aa:	00000097          	auipc	ra,0x0
    12ae:	de2080e7          	jalr	-542(ra) # 108c <putc>
    12b2:	0485                	addi	s1,s1,1
    12b4:	0004c583          	lbu	a1,0(s1)
    12b8:	f9e5                	bnez	a1,12a8 <vprintf+0x164>
    12ba:	8aca                	mv	s5,s2
    12bc:	4901                	li	s2,0
    12be:	b5e5                	j	11a6 <vprintf+0x62>
    12c0:	d40d8493          	addi	s1,s11,-704 # 1d40 <mkdir+0xd6>
    12c4:	02800593          	li	a1,40
    12c8:	b7c5                	j	12a8 <vprintf+0x164>
    12ca:	008a8493          	addi	s1,s5,8
    12ce:	000ac583          	lbu	a1,0(s5)
    12d2:	8552                	mv	a0,s4
    12d4:	00000097          	auipc	ra,0x0
    12d8:	db8080e7          	jalr	-584(ra) # 108c <putc>
    12dc:	8aa6                	mv	s5,s1
    12de:	4901                	li	s2,0
    12e0:	b5d9                	j	11a6 <vprintf+0x62>
    12e2:	85ce                	mv	a1,s3
    12e4:	8552                	mv	a0,s4
    12e6:	00000097          	auipc	ra,0x0
    12ea:	da6080e7          	jalr	-602(ra) # 108c <putc>
    12ee:	4901                	li	s2,0
    12f0:	bd5d                	j	11a6 <vprintf+0x62>
    12f2:	8aca                	mv	s5,s2
    12f4:	4901                	li	s2,0
    12f6:	bd45                	j	11a6 <vprintf+0x62>
    12f8:	70a6                	ld	ra,104(sp)
    12fa:	7406                	ld	s0,96(sp)
    12fc:	64e6                	ld	s1,88(sp)
    12fe:	6946                	ld	s2,80(sp)
    1300:	69a6                	ld	s3,72(sp)
    1302:	6a06                	ld	s4,64(sp)
    1304:	7ae2                	ld	s5,56(sp)
    1306:	7b42                	ld	s6,48(sp)
    1308:	7ba2                	ld	s7,40(sp)
    130a:	7c02                	ld	s8,32(sp)
    130c:	6ce2                	ld	s9,24(sp)
    130e:	6d42                	ld	s10,16(sp)
    1310:	6da2                	ld	s11,8(sp)
    1312:	6165                	addi	sp,sp,112
    1314:	8082                	ret

0000000000001316 <fprintf>:
    1316:	715d                	addi	sp,sp,-80
    1318:	ec06                	sd	ra,24(sp)
    131a:	f032                	sd	a2,32(sp)
    131c:	f436                	sd	a3,40(sp)
    131e:	f83a                	sd	a4,48(sp)
    1320:	fc3e                	sd	a5,56(sp)
    1322:	e0c2                	sd	a6,64(sp)
    1324:	e4c6                	sd	a7,72(sp)
    1326:	1010                	addi	a2,sp,32
    1328:	e432                	sd	a2,8(sp)
    132a:	00000097          	auipc	ra,0x0
    132e:	e1a080e7          	jalr	-486(ra) # 1144 <vprintf>
    1332:	60e2                	ld	ra,24(sp)
    1334:	6161                	addi	sp,sp,80
    1336:	8082                	ret

0000000000001338 <printf>:
    1338:	711d                	addi	sp,sp,-96
    133a:	ec06                	sd	ra,24(sp)
    133c:	f42e                	sd	a1,40(sp)
    133e:	f832                	sd	a2,48(sp)
    1340:	fc36                	sd	a3,56(sp)
    1342:	e0ba                	sd	a4,64(sp)
    1344:	e4be                	sd	a5,72(sp)
    1346:	e8c2                	sd	a6,80(sp)
    1348:	ecc6                	sd	a7,88(sp)
    134a:	1030                	addi	a2,sp,40
    134c:	e432                	sd	a2,8(sp)
    134e:	85aa                	mv	a1,a0
    1350:	4505                	li	a0,1
    1352:	00000097          	auipc	ra,0x0
    1356:	df2080e7          	jalr	-526(ra) # 1144 <vprintf>
    135a:	60e2                	ld	ra,24(sp)
    135c:	6125                	addi	sp,sp,96
    135e:	8082                	ret

0000000000001360 <cksum>:
    1360:	cdb1                	beqz	a1,13bc <cksum+0x5c>
    1362:	00b50833          	add	a6,a0,a1
    1366:	4781                	li	a5,0
    1368:	00002637          	lui	a2,0x2
    136c:	d6060613          	addi	a2,a2,-672 # 1d60 <crctab>
    1370:	0505                	addi	a0,a0,1
    1372:	0087969b          	slliw	a3,a5,0x8
    1376:	0187d71b          	srliw	a4,a5,0x18
    137a:	fff54783          	lbu	a5,-1(a0)
    137e:	8f3d                	xor	a4,a4,a5
    1380:	1702                	slli	a4,a4,0x20
    1382:	9301                	srli	a4,a4,0x20
    1384:	070a                	slli	a4,a4,0x2
    1386:	9732                	add	a4,a4,a2
    1388:	431c                	lw	a5,0(a4)
    138a:	8fb5                	xor	a5,a5,a3
    138c:	2781                	sext.w	a5,a5
    138e:	fea811e3          	bne	a6,a0,1370 <cksum+0x10>
    1392:	00002637          	lui	a2,0x2
    1396:	d6060613          	addi	a2,a2,-672 # 1d60 <crctab>
    139a:	0ff5f693          	andi	a3,a1,255
    139e:	81a1                	srli	a1,a1,0x8
    13a0:	0087951b          	slliw	a0,a5,0x8
    13a4:	0187d71b          	srliw	a4,a5,0x18
    13a8:	8f35                	xor	a4,a4,a3
    13aa:	070a                	slli	a4,a4,0x2
    13ac:	9732                	add	a4,a4,a2
    13ae:	431c                	lw	a5,0(a4)
    13b0:	8fa9                	xor	a5,a5,a0
    13b2:	2781                	sext.w	a5,a5
    13b4:	f1fd                	bnez	a1,139a <cksum+0x3a>
    13b6:	fff7c513          	not	a0,a5
    13ba:	8082                	ret
    13bc:	4781                	li	a5,0
    13be:	bfe5                	j	13b6 <cksum+0x56>

00000000000013c0 <swap_bytes>:
    13c0:	ce19                	beqz	a2,13de <swap_bytes+0x1e>
    13c2:	87aa                	mv	a5,a0
    13c4:	962a                	add	a2,a2,a0
    13c6:	0007c703          	lbu	a4,0(a5)
    13ca:	0005c683          	lbu	a3,0(a1)
    13ce:	00d78023          	sb	a3,0(a5)
    13d2:	00e58023          	sb	a4,0(a1)
    13d6:	0785                	addi	a5,a5,1
    13d8:	0585                	addi	a1,a1,1
    13da:	fec796e3          	bne	a5,a2,13c6 <swap_bytes+0x6>
    13de:	8082                	ret

00000000000013e0 <random_init>:
    13e0:	7139                	addi	sp,sp,-64
    13e2:	fc06                	sd	ra,56(sp)
    13e4:	f822                	sd	s0,48(sp)
    13e6:	f426                	sd	s1,40(sp)
    13e8:	f04a                	sd	s2,32(sp)
    13ea:	ec4e                	sd	s3,24(sp)
    13ec:	e852                	sd	s4,16(sp)
    13ee:	c62a                	sw	a0,12(sp)
    13f0:	000037b7          	lui	a5,0x3
    13f4:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13f8:	eca5                	bnez	s1,1470 <random_init+0x90>
    13fa:	00003737          	lui	a4,0x3
    13fe:	01070913          	addi	s2,a4,16 # 3010 <s>
    1402:	01070713          	addi	a4,a4,16
    1406:	87a6                	mv	a5,s1
    1408:	10000693          	li	a3,256
    140c:	00f70023          	sb	a5,0(a4)
    1410:	2785                	addiw	a5,a5,1
    1412:	0705                	addi	a4,a4,1
    1414:	fed79ce3          	bne	a5,a3,140c <random_init+0x2c>
    1418:	4401                	li	s0,0
    141a:	000039b7          	lui	s3,0x3
    141e:	01098993          	addi	s3,s3,16 # 3010 <s>
    1422:	10000a13          	li	s4,256
    1426:	0034f793          	andi	a5,s1,3
    142a:	0818                	addi	a4,sp,16
    142c:	97ba                	add	a5,a5,a4
    142e:	ffc7c783          	lbu	a5,-4(a5)
    1432:	00094703          	lbu	a4,0(s2)
    1436:	9fb9                	addw	a5,a5,a4
    1438:	9c3d                	addw	s0,s0,a5
    143a:	0ff47413          	andi	s0,s0,255
    143e:	4605                	li	a2,1
    1440:	008985b3          	add	a1,s3,s0
    1444:	854a                	mv	a0,s2
    1446:	00000097          	auipc	ra,0x0
    144a:	f7a080e7          	jalr	-134(ra) # 13c0 <swap_bytes>
    144e:	2485                	addiw	s1,s1,1
    1450:	0905                	addi	s2,s2,1
    1452:	fd449ae3          	bne	s1,s4,1426 <random_init+0x46>
    1456:	000037b7          	lui	a5,0x3
    145a:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    145e:	000037b7          	lui	a5,0x3
    1462:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1466:	000037b7          	lui	a5,0x3
    146a:	4705                	li	a4,1
    146c:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1470:	70e2                	ld	ra,56(sp)
    1472:	7442                	ld	s0,48(sp)
    1474:	74a2                	ld	s1,40(sp)
    1476:	7902                	ld	s2,32(sp)
    1478:	69e2                	ld	s3,24(sp)
    147a:	6a42                	ld	s4,16(sp)
    147c:	6121                	addi	sp,sp,64
    147e:	8082                	ret

0000000000001480 <random_bytes>:
    1480:	7139                	addi	sp,sp,-64
    1482:	fc06                	sd	ra,56(sp)
    1484:	f822                	sd	s0,48(sp)
    1486:	f426                	sd	s1,40(sp)
    1488:	f04a                	sd	s2,32(sp)
    148a:	ec4e                	sd	s3,24(sp)
    148c:	e852                	sd	s4,16(sp)
    148e:	e456                	sd	s5,8(sp)
    1490:	e05a                	sd	s6,0(sp)
    1492:	892a                	mv	s2,a0
    1494:	8aae                	mv	s5,a1
    1496:	000037b7          	lui	a5,0x3
    149a:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    149e:	c3c1                	beqz	a5,151e <random_bytes+0x9e>
    14a0:	060a8563          	beqz	s5,150a <random_bytes+0x8a>
    14a4:	9aca                	add	s5,s5,s2
    14a6:	00003a37          	lui	s4,0x3
    14aa:	000034b7          	lui	s1,0x3
    14ae:	01048493          	addi	s1,s1,16 # 3010 <s>
    14b2:	000039b7          	lui	s3,0x3
    14b6:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14ba:	2505                	addiw	a0,a0,1
    14bc:	0ff57513          	andi	a0,a0,255
    14c0:	00aa02a3          	sb	a0,5(s4)
    14c4:	00a48b33          	add	s6,s1,a0
    14c8:	000b4403          	lbu	s0,0(s6)
    14cc:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14d0:	9c3d                	addw	s0,s0,a5
    14d2:	0ff47413          	andi	s0,s0,255
    14d6:	00898223          	sb	s0,4(s3)
    14da:	4605                	li	a2,1
    14dc:	008485b3          	add	a1,s1,s0
    14e0:	855a                	mv	a0,s6
    14e2:	00000097          	auipc	ra,0x0
    14e6:	ede080e7          	jalr	-290(ra) # 13c0 <swap_bytes>
    14ea:	9426                	add	s0,s0,s1
    14ec:	000b4783          	lbu	a5,0(s6)
    14f0:	00044703          	lbu	a4,0(s0)
    14f4:	9fb9                	addw	a5,a5,a4
    14f6:	0ff7f793          	andi	a5,a5,255
    14fa:	97a6                	add	a5,a5,s1
    14fc:	0007c783          	lbu	a5,0(a5)
    1500:	00f90023          	sb	a5,0(s2)
    1504:	0905                	addi	s2,s2,1
    1506:	fb2a98e3          	bne	s5,s2,14b6 <random_bytes+0x36>
    150a:	70e2                	ld	ra,56(sp)
    150c:	7442                	ld	s0,48(sp)
    150e:	74a2                	ld	s1,40(sp)
    1510:	7902                	ld	s2,32(sp)
    1512:	69e2                	ld	s3,24(sp)
    1514:	6a42                	ld	s4,16(sp)
    1516:	6aa2                	ld	s5,8(sp)
    1518:	6b02                	ld	s6,0(sp)
    151a:	6121                	addi	sp,sp,64
    151c:	8082                	ret
    151e:	4501                	li	a0,0
    1520:	00000097          	auipc	ra,0x0
    1524:	ec0080e7          	jalr	-320(ra) # 13e0 <random_init>
    1528:	bfa5                	j	14a0 <random_bytes+0x20>

000000000000152a <random_ulong>:
    152a:	1101                	addi	sp,sp,-32
    152c:	ec06                	sd	ra,24(sp)
    152e:	45a1                	li	a1,8
    1530:	0028                	addi	a0,sp,8
    1532:	00000097          	auipc	ra,0x0
    1536:	f4e080e7          	jalr	-178(ra) # 1480 <random_bytes>
    153a:	6522                	ld	a0,8(sp)
    153c:	60e2                	ld	ra,24(sp)
    153e:	6105                	addi	sp,sp,32
    1540:	8082                	ret

0000000000001542 <shuffle>:
    1542:	c9b9                	beqz	a1,1598 <shuffle+0x56>
    1544:	7179                	addi	sp,sp,-48
    1546:	f406                	sd	ra,40(sp)
    1548:	f022                	sd	s0,32(sp)
    154a:	ec26                	sd	s1,24(sp)
    154c:	e84a                	sd	s2,16(sp)
    154e:	e44e                	sd	s3,8(sp)
    1550:	e052                	sd	s4,0(sp)
    1552:	8a2a                	mv	s4,a0
    1554:	89ae                	mv	s3,a1
    1556:	84b2                	mv	s1,a2
    1558:	892a                	mv	s2,a0
    155a:	4401                	li	s0,0
    155c:	00000097          	auipc	ra,0x0
    1560:	fce080e7          	jalr	-50(ra) # 152a <random_ulong>
    1564:	408985b3          	sub	a1,s3,s0
    1568:	02b575b3          	remu	a1,a0,a1
    156c:	95a2                	add	a1,a1,s0
    156e:	029585b3          	mul	a1,a1,s1
    1572:	8626                	mv	a2,s1
    1574:	95d2                	add	a1,a1,s4
    1576:	854a                	mv	a0,s2
    1578:	00000097          	auipc	ra,0x0
    157c:	e48080e7          	jalr	-440(ra) # 13c0 <swap_bytes>
    1580:	0405                	addi	s0,s0,1
    1582:	9926                	add	s2,s2,s1
    1584:	fc899ce3          	bne	s3,s0,155c <shuffle+0x1a>
    1588:	70a2                	ld	ra,40(sp)
    158a:	7402                	ld	s0,32(sp)
    158c:	64e2                	ld	s1,24(sp)
    158e:	6942                	ld	s2,16(sp)
    1590:	69a2                	ld	s3,8(sp)
    1592:	6a02                	ld	s4,0(sp)
    1594:	6145                	addi	sp,sp,48
    1596:	8082                	ret
    1598:	8082                	ret

000000000000159a <arc4_init>:
    159a:	100500a3          	sb	zero,257(a0)
    159e:	10050023          	sb	zero,256(a0)
    15a2:	4781                	li	a5,0
    15a4:	10000693          	li	a3,256
    15a8:	00f50733          	add	a4,a0,a5
    15ac:	00f70023          	sb	a5,0(a4)
    15b0:	0785                	addi	a5,a5,1
    15b2:	fed79be3          	bne	a5,a3,15a8 <arc4_init+0xe>
    15b6:	86aa                	mv	a3,a0
    15b8:	10050e13          	addi	t3,a0,256
    15bc:	4701                	li	a4,0
    15be:	4781                	li	a5,0
    15c0:	0006c883          	lbu	a7,0(a3)
    15c4:	00f58833          	add	a6,a1,a5
    15c8:	00084803          	lbu	a6,0(a6)
    15cc:	00e8873b          	addw	a4,a7,a4
    15d0:	00e8073b          	addw	a4,a6,a4
    15d4:	0ff77713          	andi	a4,a4,255
    15d8:	00e50833          	add	a6,a0,a4
    15dc:	00084303          	lbu	t1,0(a6)
    15e0:	00668023          	sb	t1,0(a3)
    15e4:	01180023          	sb	a7,0(a6)
    15e8:	0785                	addi	a5,a5,1
    15ea:	00c7b833          	sltu	a6,a5,a2
    15ee:	41000833          	neg	a6,a6
    15f2:	0107f7b3          	and	a5,a5,a6
    15f6:	0685                	addi	a3,a3,1
    15f8:	fdc694e3          	bne	a3,t3,15c0 <arc4_init+0x26>
    15fc:	8082                	ret

00000000000015fe <arc4_crypt>:
    15fe:	10054e03          	lbu	t3,256(a0)
    1602:	10154803          	lbu	a6,257(a0)
    1606:	fff60e93          	addi	t4,a2,-1
    160a:	c225                	beqz	a2,166a <arc4_crypt+0x6c>
    160c:	00c588b3          	add	a7,a1,a2
    1610:	86ae                	mv	a3,a1
    1612:	001e031b          	addiw	t1,t3,1
    1616:	40b3033b          	subw	t1,t1,a1
    161a:	00d3073b          	addw	a4,t1,a3
    161e:	0ff77713          	andi	a4,a4,255
    1622:	972a                	add	a4,a4,a0
    1624:	00074603          	lbu	a2,0(a4)
    1628:	0106083b          	addw	a6,a2,a6
    162c:	0ff87813          	andi	a6,a6,255
    1630:	010507b3          	add	a5,a0,a6
    1634:	0007c583          	lbu	a1,0(a5)
    1638:	00b70023          	sb	a1,0(a4)
    163c:	00c78023          	sb	a2,0(a5)
    1640:	0685                	addi	a3,a3,1
    1642:	00074783          	lbu	a5,0(a4)
    1646:	9fb1                	addw	a5,a5,a2
    1648:	0ff7f793          	andi	a5,a5,255
    164c:	97aa                	add	a5,a5,a0
    164e:	0007c783          	lbu	a5,0(a5)
    1652:	fff6c703          	lbu	a4,-1(a3)
    1656:	8fb9                	xor	a5,a5,a4
    1658:	fef68fa3          	sb	a5,-1(a3)
    165c:	fb169fe3          	bne	a3,a7,161a <arc4_crypt+0x1c>
    1660:	2e85                	addiw	t4,t4,1
    1662:	01ce8e3b          	addw	t3,t4,t3
    1666:	0ffe7e13          	andi	t3,t3,255
    166a:	11c50023          	sb	t3,256(a0)
    166e:	110500a3          	sb	a6,257(a0)
    1672:	8082                	ret

0000000000001674 <_main>:
    1674:	1141                	addi	sp,sp,-16
    1676:	e406                	sd	ra,8(sp)
    1678:	00000097          	auipc	ra,0x0
    167c:	988080e7          	jalr	-1656(ra) # 1000 <main>
    1680:	4501                	li	a0,0
    1682:	00000097          	auipc	ra,0x0
    1686:	578080e7          	jalr	1400(ra) # 1bfa <exit>
    168a:	60a2                	ld	ra,8(sp)
    168c:	0141                	addi	sp,sp,16
    168e:	8082                	ret

0000000000001690 <strcmp>:
    1690:	00054783          	lbu	a5,0(a0)
    1694:	cb91                	beqz	a5,16a8 <strcmp+0x18>
    1696:	0005c703          	lbu	a4,0(a1)
    169a:	00f71763          	bne	a4,a5,16a8 <strcmp+0x18>
    169e:	0505                	addi	a0,a0,1
    16a0:	0585                	addi	a1,a1,1
    16a2:	00054783          	lbu	a5,0(a0)
    16a6:	fbe5                	bnez	a5,1696 <strcmp+0x6>
    16a8:	0005c503          	lbu	a0,0(a1)
    16ac:	40a7853b          	subw	a0,a5,a0
    16b0:	8082                	ret

00000000000016b2 <strcpy>:
    16b2:	87aa                	mv	a5,a0
    16b4:	0585                	addi	a1,a1,1
    16b6:	0785                	addi	a5,a5,1
    16b8:	fff5c703          	lbu	a4,-1(a1)
    16bc:	fee78fa3          	sb	a4,-1(a5)
    16c0:	fb75                	bnez	a4,16b4 <strcpy+0x2>
    16c2:	8082                	ret

00000000000016c4 <strlen>:
    16c4:	00054783          	lbu	a5,0(a0)
    16c8:	cf81                	beqz	a5,16e0 <strlen+0x1c>
    16ca:	0505                	addi	a0,a0,1
    16cc:	87aa                	mv	a5,a0
    16ce:	4685                	li	a3,1
    16d0:	9e89                	subw	a3,a3,a0
    16d2:	00f6853b          	addw	a0,a3,a5
    16d6:	0785                	addi	a5,a5,1
    16d8:	fff7c703          	lbu	a4,-1(a5)
    16dc:	fb7d                	bnez	a4,16d2 <strlen+0xe>
    16de:	8082                	ret
    16e0:	4501                	li	a0,0
    16e2:	8082                	ret

00000000000016e4 <memset>:
    16e4:	ca19                	beqz	a2,16fa <memset+0x16>
    16e6:	87aa                	mv	a5,a0
    16e8:	1602                	slli	a2,a2,0x20
    16ea:	9201                	srli	a2,a2,0x20
    16ec:	00a60733          	add	a4,a2,a0
    16f0:	00b78023          	sb	a1,0(a5)
    16f4:	0785                	addi	a5,a5,1
    16f6:	fee79de3          	bne	a5,a4,16f0 <memset+0xc>
    16fa:	8082                	ret

00000000000016fc <memcmp>:
    16fc:	1101                	addi	sp,sp,-32
    16fe:	ec06                	sd	ra,24(sp)
    1700:	e822                	sd	s0,16(sp)
    1702:	e426                	sd	s1,8(sp)
    1704:	e04a                	sd	s2,0(sp)
    1706:	892a                	mv	s2,a0
    1708:	842e                	mv	s0,a1
    170a:	84b2                	mv	s1,a2
    170c:	c915                	beqz	a0,1740 <memcmp+0x44>
    170e:	c5ad                	beqz	a1,1778 <memcmp+0x7c>
    1710:	fff60713          	addi	a4,a2,-1
    1714:	c645                	beqz	a2,17bc <memcmp+0xc0>
    1716:	87ca                	mv	a5,s2
    1718:	00190613          	addi	a2,s2,1
    171c:	963a                	add	a2,a2,a4
    171e:	0007c683          	lbu	a3,0(a5)
    1722:	00044703          	lbu	a4,0(s0)
    1726:	08e69463          	bne	a3,a4,17ae <memcmp+0xb2>
    172a:	0785                	addi	a5,a5,1
    172c:	0405                	addi	s0,s0,1
    172e:	fec798e3          	bne	a5,a2,171e <memcmp+0x22>
    1732:	4501                	li	a0,0
    1734:	60e2                	ld	ra,24(sp)
    1736:	6442                	ld	s0,16(sp)
    1738:	64a2                	ld	s1,8(sp)
    173a:	6902                	ld	s2,0(sp)
    173c:	6105                	addi	sp,sp,32
    173e:	8082                	ret
    1740:	4501                	li	a0,0
    1742:	da6d                	beqz	a2,1734 <memcmp+0x38>
    1744:	03200693          	li	a3,50
    1748:	00002637          	lui	a2,0x2
    174c:	16060613          	addi	a2,a2,352 # 2160 <crctab+0x400>
    1750:	000025b7          	lui	a1,0x2
    1754:	17058593          	addi	a1,a1,368 # 2170 <crctab+0x410>
    1758:	4509                	li	a0,2
    175a:	00000097          	auipc	ra,0x0
    175e:	bbc080e7          	jalr	-1092(ra) # 1316 <fprintf>
    1762:	650d                	lui	a0,0x3
    1764:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1768:	00000097          	auipc	ra,0x0
    176c:	492080e7          	jalr	1170(ra) # 1bfa <exit>
    1770:	fff48713          	addi	a4,s1,-1
    1774:	f04d                	bnez	s0,1716 <memcmp+0x1a>
    1776:	a011                	j	177a <memcmp+0x7e>
    1778:	c221                	beqz	a2,17b8 <memcmp+0xbc>
    177a:	03300693          	li	a3,51
    177e:	00002637          	lui	a2,0x2
    1782:	16060613          	addi	a2,a2,352 # 2160 <crctab+0x400>
    1786:	000025b7          	lui	a1,0x2
    178a:	1b858593          	addi	a1,a1,440 # 21b8 <crctab+0x458>
    178e:	4509                	li	a0,2
    1790:	00000097          	auipc	ra,0x0
    1794:	b86080e7          	jalr	-1146(ra) # 1316 <fprintf>
    1798:	650d                	lui	a0,0x3
    179a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    179e:	00000097          	auipc	ra,0x0
    17a2:	45c080e7          	jalr	1116(ra) # 1bfa <exit>
    17a6:	fff48713          	addi	a4,s1,-1
    17aa:	4401                	li	s0,0
    17ac:	b7ad                	j	1716 <memcmp+0x1a>
    17ae:	4505                	li	a0,1
    17b0:	f8d762e3          	bltu	a4,a3,1734 <memcmp+0x38>
    17b4:	557d                	li	a0,-1
    17b6:	bfbd                	j	1734 <memcmp+0x38>
    17b8:	4501                	li	a0,0
    17ba:	bfad                	j	1734 <memcmp+0x38>
    17bc:	4501                	li	a0,0
    17be:	bf9d                	j	1734 <memcmp+0x38>

00000000000017c0 <memcpy>:
    17c0:	1101                	addi	sp,sp,-32
    17c2:	ec06                	sd	ra,24(sp)
    17c4:	e822                	sd	s0,16(sp)
    17c6:	e426                	sd	s1,8(sp)
    17c8:	e04a                	sd	s2,0(sp)
    17ca:	84aa                	mv	s1,a0
    17cc:	842e                	mv	s0,a1
    17ce:	8932                	mv	s2,a2
    17d0:	c51d                	beqz	a0,17fe <memcpy+0x3e>
    17d2:	c1ad                	beqz	a1,1834 <memcpy+0x74>
    17d4:	fff60693          	addi	a3,a2,-1
    17d8:	ce01                	beqz	a2,17f0 <memcpy+0x30>
    17da:	0685                	addi	a3,a3,1
    17dc:	96a6                	add	a3,a3,s1
    17de:	87a6                	mv	a5,s1
    17e0:	0405                	addi	s0,s0,1
    17e2:	0785                	addi	a5,a5,1
    17e4:	fff44703          	lbu	a4,-1(s0)
    17e8:	fee78fa3          	sb	a4,-1(a5)
    17ec:	fed79ae3          	bne	a5,a3,17e0 <memcpy+0x20>
    17f0:	8526                	mv	a0,s1
    17f2:	60e2                	ld	ra,24(sp)
    17f4:	6442                	ld	s0,16(sp)
    17f6:	64a2                	ld	s1,8(sp)
    17f8:	6902                	ld	s2,0(sp)
    17fa:	6105                	addi	sp,sp,32
    17fc:	8082                	ret
    17fe:	da6d                	beqz	a2,17f0 <memcpy+0x30>
    1800:	04000693          	li	a3,64
    1804:	00002637          	lui	a2,0x2
    1808:	16060613          	addi	a2,a2,352 # 2160 <crctab+0x400>
    180c:	000025b7          	lui	a1,0x2
    1810:	20058593          	addi	a1,a1,512 # 2200 <crctab+0x4a0>
    1814:	4509                	li	a0,2
    1816:	00000097          	auipc	ra,0x0
    181a:	b00080e7          	jalr	-1280(ra) # 1316 <fprintf>
    181e:	650d                	lui	a0,0x3
    1820:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1824:	00000097          	auipc	ra,0x0
    1828:	3d6080e7          	jalr	982(ra) # 1bfa <exit>
    182c:	fff90693          	addi	a3,s2,-1
    1830:	f44d                	bnez	s0,17da <memcpy+0x1a>
    1832:	a011                	j	1836 <memcpy+0x76>
    1834:	de55                	beqz	a2,17f0 <memcpy+0x30>
    1836:	04100693          	li	a3,65
    183a:	00002637          	lui	a2,0x2
    183e:	16060613          	addi	a2,a2,352 # 2160 <crctab+0x400>
    1842:	000025b7          	lui	a1,0x2
    1846:	24858593          	addi	a1,a1,584 # 2248 <crctab+0x4e8>
    184a:	4509                	li	a0,2
    184c:	00000097          	auipc	ra,0x0
    1850:	aca080e7          	jalr	-1334(ra) # 1316 <fprintf>
    1854:	650d                	lui	a0,0x3
    1856:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    185a:	00000097          	auipc	ra,0x0
    185e:	3a0080e7          	jalr	928(ra) # 1bfa <exit>
    1862:	fff90693          	addi	a3,s2,-1
    1866:	4401                	li	s0,0
    1868:	bf8d                	j	17da <memcpy+0x1a>

000000000000186a <itoa>:
    186a:	1101                	addi	sp,sp,-32
    186c:	ec06                	sd	ra,24(sp)
    186e:	e822                	sd	s0,16(sp)
    1870:	e426                	sd	s1,8(sp)
    1872:	842a                	mv	s0,a0
    1874:	41f5d71b          	sraiw	a4,a1,0x1f
    1878:	00e5c7b3          	xor	a5,a1,a4
    187c:	9f99                	subw	a5,a5,a4
    187e:	84aa                	mv	s1,a0
    1880:	862a                	mv	a2,a0
    1882:	4681                	li	a3,0
    1884:	4529                	li	a0,10
    1886:	4825                	li	a6,9
    1888:	88b6                	mv	a7,a3
    188a:	2685                	addiw	a3,a3,1
    188c:	02a7e73b          	remw	a4,a5,a0
    1890:	0307071b          	addiw	a4,a4,48
    1894:	00e60023          	sb	a4,0(a2)
    1898:	873e                	mv	a4,a5
    189a:	02a7c7bb          	divw	a5,a5,a0
    189e:	0605                	addi	a2,a2,1
    18a0:	fee844e3          	blt	a6,a4,1888 <itoa+0x1e>
    18a4:	0405c863          	bltz	a1,18f4 <itoa+0x8a>
    18a8:	96a2                	add	a3,a3,s0
    18aa:	00068023          	sb	zero,0(a3)
    18ae:	8522                	mv	a0,s0
    18b0:	00000097          	auipc	ra,0x0
    18b4:	e14080e7          	jalr	-492(ra) # 16c4 <strlen>
    18b8:	fff5071b          	addiw	a4,a0,-1
    18bc:	02e05763          	blez	a4,18ea <itoa+0x80>
    18c0:	9722                	add	a4,a4,s0
    18c2:	4681                	li	a3,0
    18c4:	0004c783          	lbu	a5,0(s1)
    18c8:	00074603          	lbu	a2,0(a4)
    18cc:	00c48023          	sb	a2,0(s1)
    18d0:	00f70023          	sb	a5,0(a4)
    18d4:	0016879b          	addiw	a5,a3,1
    18d8:	0007869b          	sext.w	a3,a5
    18dc:	0485                	addi	s1,s1,1
    18de:	177d                	addi	a4,a4,-1
    18e0:	fff7c793          	not	a5,a5
    18e4:	9fa9                	addw	a5,a5,a0
    18e6:	fcf6cfe3          	blt	a3,a5,18c4 <itoa+0x5a>
    18ea:	60e2                	ld	ra,24(sp)
    18ec:	6442                	ld	s0,16(sp)
    18ee:	64a2                	ld	s1,8(sp)
    18f0:	6105                	addi	sp,sp,32
    18f2:	8082                	ret
    18f4:	96a2                	add	a3,a3,s0
    18f6:	02d00793          	li	a5,45
    18fa:	00f68023          	sb	a5,0(a3)
    18fe:	0028869b          	addiw	a3,a7,2
    1902:	b75d                	j	18a8 <itoa+0x3e>

0000000000001904 <atoi>:
    1904:	00054783          	lbu	a5,0(a0)
    1908:	02000713          	li	a4,32
    190c:	00e79763          	bne	a5,a4,191a <atoi+0x16>
    1910:	0505                	addi	a0,a0,1
    1912:	00054783          	lbu	a5,0(a0)
    1916:	fee78de3          	beq	a5,a4,1910 <atoi+0xc>
    191a:	02b00713          	li	a4,43
    191e:	04e78663          	beq	a5,a4,196a <atoi+0x66>
    1922:	02d00713          	li	a4,45
    1926:	4805                	li	a6,1
    1928:	04e78463          	beq	a5,a4,1970 <atoi+0x6c>
    192c:	00054683          	lbu	a3,0(a0)
    1930:	fd06879b          	addiw	a5,a3,-48
    1934:	0ff7f793          	andi	a5,a5,255
    1938:	4725                	li	a4,9
    193a:	02f76e63          	bltu	a4,a5,1976 <atoi+0x72>
    193e:	4601                	li	a2,0
    1940:	45a5                	li	a1,9
    1942:	0505                	addi	a0,a0,1
    1944:	0026179b          	slliw	a5,a2,0x2
    1948:	9fb1                	addw	a5,a5,a2
    194a:	0017979b          	slliw	a5,a5,0x1
    194e:	9fb5                	addw	a5,a5,a3
    1950:	fd07861b          	addiw	a2,a5,-48
    1954:	00054683          	lbu	a3,0(a0)
    1958:	fd06871b          	addiw	a4,a3,-48
    195c:	0ff77713          	andi	a4,a4,255
    1960:	fee5f1e3          	bgeu	a1,a4,1942 <atoi+0x3e>
    1964:	02c8053b          	mulw	a0,a6,a2
    1968:	8082                	ret
    196a:	0505                	addi	a0,a0,1
    196c:	4805                	li	a6,1
    196e:	bf7d                	j	192c <atoi+0x28>
    1970:	0505                	addi	a0,a0,1
    1972:	587d                	li	a6,-1
    1974:	bf65                	j	192c <atoi+0x28>
    1976:	4601                	li	a2,0
    1978:	b7f5                	j	1964 <atoi+0x60>

000000000000197a <check_file_handle>:
    197a:	d8010113          	addi	sp,sp,-640
    197e:	26113c23          	sd	ra,632(sp)
    1982:	26813823          	sd	s0,624(sp)
    1986:	26913423          	sd	s1,616(sp)
    198a:	27213023          	sd	s2,608(sp)
    198e:	25313c23          	sd	s3,600(sp)
    1992:	25413823          	sd	s4,592(sp)
    1996:	25513423          	sd	s5,584(sp)
    199a:	25613023          	sd	s6,576(sp)
    199e:	23713c23          	sd	s7,568(sp)
    19a2:	23813823          	sd	s8,560(sp)
    19a6:	23913423          	sd	s9,552(sp)
    19aa:	23a13023          	sd	s10,544(sp)
    19ae:	21b13c23          	sd	s11,536(sp)
    19b2:	8baa                	mv	s7,a0
    19b4:	8a2e                	mv	s4,a1
    19b6:	8c32                	mv	s8,a2
    19b8:	89b6                	mv	s3,a3
    19ba:	040c                	addi	a1,sp,512
    19bc:	00000097          	auipc	ra,0x0
    19c0:	28e080e7          	jalr	654(ra) # 1c4a <fstat>
    19c4:	20813603          	ld	a2,520(sp)
    19c8:	03361163          	bne	a2,s3,19ea <check_file_handle+0x70>
    19cc:	06098763          	beqz	s3,1a3a <check_file_handle+0xc0>
    19d0:	4901                	li	s2,0
    19d2:	20000a93          	li	s5,512
    19d6:	00002cb7          	lui	s9,0x2
    19da:	00002db7          	lui	s11,0x2
    19de:	6b0d                	lui	s6,0x3
    19e0:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19e4:	00002d37          	lui	s10,0x2
    19e8:	aa39                	j	1b06 <check_file_handle+0x18c>
    19ea:	86ce                	mv	a3,s3
    19ec:	85d2                	mv	a1,s4
    19ee:	00002537          	lui	a0,0x2
    19f2:	29050513          	addi	a0,a0,656 # 2290 <crctab+0x530>
    19f6:	00000097          	auipc	ra,0x0
    19fa:	942080e7          	jalr	-1726(ra) # 1338 <printf>
    19fe:	fc0999e3          	bnez	s3,19d0 <check_file_handle+0x56>
    1a02:	20813683          	ld	a3,520(sp)
    1a06:	03368a63          	beq	a3,s3,1a3a <check_file_handle+0xc0>
    1a0a:	0a600813          	li	a6,166
    1a0e:	000027b7          	lui	a5,0x2
    1a12:	16078793          	addi	a5,a5,352 # 2160 <crctab+0x400>
    1a16:	874e                	mv	a4,s3
    1a18:	8652                	mv	a2,s4
    1a1a:	000025b7          	lui	a1,0x2
    1a1e:	36058593          	addi	a1,a1,864 # 2360 <crctab+0x600>
    1a22:	4509                	li	a0,2
    1a24:	00000097          	auipc	ra,0x0
    1a28:	8f2080e7          	jalr	-1806(ra) # 1316 <fprintf>
    1a2c:	650d                	lui	a0,0x3
    1a2e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a32:	00000097          	auipc	ra,0x0
    1a36:	1c8080e7          	jalr	456(ra) # 1bfa <exit>
    1a3a:	85d2                	mv	a1,s4
    1a3c:	00002537          	lui	a0,0x2
    1a40:	3a850513          	addi	a0,a0,936 # 23a8 <crctab+0x648>
    1a44:	00000097          	auipc	ra,0x0
    1a48:	8f4080e7          	jalr	-1804(ra) # 1338 <printf>
    1a4c:	27813083          	ld	ra,632(sp)
    1a50:	27013403          	ld	s0,624(sp)
    1a54:	26813483          	ld	s1,616(sp)
    1a58:	26013903          	ld	s2,608(sp)
    1a5c:	25813983          	ld	s3,600(sp)
    1a60:	25013a03          	ld	s4,592(sp)
    1a64:	24813a83          	ld	s5,584(sp)
    1a68:	24013b03          	ld	s6,576(sp)
    1a6c:	23813b83          	ld	s7,568(sp)
    1a70:	23013c03          	ld	s8,560(sp)
    1a74:	22813c83          	ld	s9,552(sp)
    1a78:	22013d03          	ld	s10,544(sp)
    1a7c:	21813d83          	ld	s11,536(sp)
    1a80:	28010113          	addi	sp,sp,640
    1a84:	8082                	ret
    1a86:	09d00893          	li	a7,157
    1a8a:	160c8813          	addi	a6,s9,352 # 2160 <crctab+0x400>
    1a8e:	87aa                	mv	a5,a0
    1a90:	8752                	mv	a4,s4
    1a92:	86ca                	mv	a3,s2
    1a94:	8622                	mv	a2,s0
    1a96:	2c0d8593          	addi	a1,s11,704 # 22c0 <crctab+0x560>
    1a9a:	4509                	li	a0,2
    1a9c:	00000097          	auipc	ra,0x0
    1aa0:	87a080e7          	jalr	-1926(ra) # 1316 <fprintf>
    1aa4:	855a                	mv	a0,s6
    1aa6:	00000097          	auipc	ra,0x0
    1aaa:	154080e7          	jalr	340(ra) # 1bfa <exit>
    1aae:	a89d                	j	1b24 <check_file_handle+0x1aa>
    1ab0:	00160593          	addi	a1,a2,1
    1ab4:	0285f163          	bgeu	a1,s0,1ad6 <check_file_handle+0x15c>
    1ab8:	00c10733          	add	a4,sp,a2
    1abc:	00b487b3          	add	a5,s1,a1
    1ac0:	00174683          	lbu	a3,1(a4)
    1ac4:	0007c783          	lbu	a5,0(a5)
    1ac8:	00f68763          	beq	a3,a5,1ad6 <check_file_handle+0x15c>
    1acc:	0585                	addi	a1,a1,1
    1ace:	0705                	addi	a4,a4,1
    1ad0:	feb416e3          	bne	s0,a1,1abc <check_file_handle+0x142>
    1ad4:	85a2                	mv	a1,s0
    1ad6:	08100813          	li	a6,129
    1ada:	160c8793          	addi	a5,s9,352
    1ade:	8752                	mv	a4,s4
    1ae0:	012606b3          	add	a3,a2,s2
    1ae4:	40c58633          	sub	a2,a1,a2
    1ae8:	308d0593          	addi	a1,s10,776 # 2308 <crctab+0x5a8>
    1aec:	4509                	li	a0,2
    1aee:	00000097          	auipc	ra,0x0
    1af2:	828080e7          	jalr	-2008(ra) # 1316 <fprintf>
    1af6:	855a                	mv	a0,s6
    1af8:	00000097          	auipc	ra,0x0
    1afc:	102080e7          	jalr	258(ra) # 1bfa <exit>
    1b00:	9922                	add	s2,s2,s0
    1b02:	f13970e3          	bgeu	s2,s3,1a02 <check_file_handle+0x88>
    1b06:	41298433          	sub	s0,s3,s2
    1b0a:	008af363          	bgeu	s5,s0,1b10 <check_file_handle+0x196>
    1b0e:	8456                	mv	s0,s5
    1b10:	0004061b          	sext.w	a2,s0
    1b14:	858a                	mv	a1,sp
    1b16:	855e                	mv	a0,s7
    1b18:	00000097          	auipc	ra,0x0
    1b1c:	10a080e7          	jalr	266(ra) # 1c22 <read>
    1b20:	f68513e3          	bne	a0,s0,1a86 <check_file_handle+0x10c>
    1b24:	012c04b3          	add	s1,s8,s2
    1b28:	8622                	mv	a2,s0
    1b2a:	85a6                	mv	a1,s1
    1b2c:	850a                	mv	a0,sp
    1b2e:	00000097          	auipc	ra,0x0
    1b32:	bce080e7          	jalr	-1074(ra) # 16fc <memcmp>
    1b36:	d569                	beqz	a0,1b00 <check_file_handle+0x186>
    1b38:	03298163          	beq	s3,s2,1b5a <check_file_handle+0x1e0>
    1b3c:	870a                	mv	a4,sp
    1b3e:	4601                	li	a2,0
    1b40:	00c487b3          	add	a5,s1,a2
    1b44:	00074683          	lbu	a3,0(a4)
    1b48:	0007c783          	lbu	a5,0(a5)
    1b4c:	f6f692e3          	bne	a3,a5,1ab0 <check_file_handle+0x136>
    1b50:	0605                	addi	a2,a2,1
    1b52:	0705                	addi	a4,a4,1
    1b54:	fe8666e3          	bltu	a2,s0,1b40 <check_file_handle+0x1c6>
    1b58:	bfa1                	j	1ab0 <check_file_handle+0x136>
    1b5a:	4601                	li	a2,0
    1b5c:	4585                	li	a1,1
    1b5e:	bfa5                	j	1ad6 <check_file_handle+0x15c>

0000000000001b60 <check_file>:
    1b60:	7179                	addi	sp,sp,-48
    1b62:	f406                	sd	ra,40(sp)
    1b64:	f022                	sd	s0,32(sp)
    1b66:	ec26                	sd	s1,24(sp)
    1b68:	e84a                	sd	s2,16(sp)
    1b6a:	e44e                	sd	s3,8(sp)
    1b6c:	84aa                	mv	s1,a0
    1b6e:	892e                	mv	s2,a1
    1b70:	89b2                	mv	s3,a2
    1b72:	4581                	li	a1,0
    1b74:	00000097          	auipc	ra,0x0
    1b78:	0a6080e7          	jalr	166(ra) # 1c1a <open>
    1b7c:	842a                	mv	s0,a0
    1b7e:	4789                	li	a5,2
    1b80:	02a7df63          	bge	a5,a0,1bbe <check_file+0x5e>
    1b84:	86ce                	mv	a3,s3
    1b86:	864a                	mv	a2,s2
    1b88:	85a6                	mv	a1,s1
    1b8a:	8522                	mv	a0,s0
    1b8c:	00000097          	auipc	ra,0x0
    1b90:	dee080e7          	jalr	-530(ra) # 197a <check_file_handle>
    1b94:	85a6                	mv	a1,s1
    1b96:	00002537          	lui	a0,0x2
    1b9a:	43050513          	addi	a0,a0,1072 # 2430 <crctab+0x6d0>
    1b9e:	fffff097          	auipc	ra,0xfffff
    1ba2:	79a080e7          	jalr	1946(ra) # 1338 <printf>
    1ba6:	8522                	mv	a0,s0
    1ba8:	00000097          	auipc	ra,0x0
    1bac:	09a080e7          	jalr	154(ra) # 1c42 <close>
    1bb0:	70a2                	ld	ra,40(sp)
    1bb2:	7402                	ld	s0,32(sp)
    1bb4:	64e2                	ld	s1,24(sp)
    1bb6:	6942                	ld	s2,16(sp)
    1bb8:	69a2                	ld	s3,8(sp)
    1bba:	6145                	addi	sp,sp,48
    1bbc:	8082                	ret
    1bbe:	0ae00713          	li	a4,174
    1bc2:	000026b7          	lui	a3,0x2
    1bc6:	16068693          	addi	a3,a3,352 # 2160 <crctab+0x400>
    1bca:	8626                	mv	a2,s1
    1bcc:	000025b7          	lui	a1,0x2
    1bd0:	3c858593          	addi	a1,a1,968 # 23c8 <crctab+0x668>
    1bd4:	4509                	li	a0,2
    1bd6:	fffff097          	auipc	ra,0xfffff
    1bda:	740080e7          	jalr	1856(ra) # 1316 <fprintf>
    1bde:	650d                	lui	a0,0x3
    1be0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1be4:	00000097          	auipc	ra,0x0
    1be8:	016080e7          	jalr	22(ra) # 1bfa <exit>
    1bec:	bf61                	j	1b84 <check_file+0x24>

0000000000001bee <r_sp>:
    1bee:	850a                	mv	a0,sp
    1bf0:	8082                	ret

0000000000001bf2 <halt>:
    1bf2:	4885                	li	a7,1
    1bf4:	00000073          	ecall
    1bf8:	8082                	ret

0000000000001bfa <exit>:
    1bfa:	4889                	li	a7,2
    1bfc:	00000073          	ecall
    1c00:	8082                	ret

0000000000001c02 <exec>:
    1c02:	488d                	li	a7,3
    1c04:	00000073          	ecall
    1c08:	8082                	ret

0000000000001c0a <wait>:
    1c0a:	4891                	li	a7,4
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <remove>:
    1c12:	4895                	li	a7,5
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <open>:
    1c1a:	4899                	li	a7,6
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <read>:
    1c22:	489d                	li	a7,7
    1c24:	00000073          	ecall
    1c28:	8082                	ret

0000000000001c2a <write>:
    1c2a:	48a1                	li	a7,8
    1c2c:	00000073          	ecall
    1c30:	8082                	ret

0000000000001c32 <seek>:
    1c32:	48a5                	li	a7,9
    1c34:	00000073          	ecall
    1c38:	8082                	ret

0000000000001c3a <tell>:
    1c3a:	48a9                	li	a7,10
    1c3c:	00000073          	ecall
    1c40:	8082                	ret

0000000000001c42 <close>:
    1c42:	48ad                	li	a7,11
    1c44:	00000073          	ecall
    1c48:	8082                	ret

0000000000001c4a <fstat>:
    1c4a:	48b1                	li	a7,12
    1c4c:	00000073          	ecall
    1c50:	8082                	ret

0000000000001c52 <mmap>:
    1c52:	48b5                	li	a7,13
    1c54:	00000073          	ecall
    1c58:	8082                	ret

0000000000001c5a <munmap>:
    1c5a:	48b9                	li	a7,14
    1c5c:	00000073          	ecall
    1c60:	8082                	ret

0000000000001c62 <chdir>:
    1c62:	48bd                	li	a7,15
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <mkdir>:
    1c6a:	48c1                	li	a7,16
    1c6c:	00000073          	ecall
    1c70:	8082                	ret
