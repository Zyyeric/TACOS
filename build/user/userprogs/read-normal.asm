
build/user/userprogs/read-normal:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	0ef00613          	li	a2,239
    1008:	000035b7          	lui	a1,0x3
    100c:	00058593          	mv	a1,a1
    1010:	00002537          	lui	a0,0x2
    1014:	c1050513          	addi	a0,a0,-1008 # 1c10 <mkdir+0xc>
    1018:	00001097          	auipc	ra,0x1
    101c:	ae2080e7          	jalr	-1310(ra) # 1afa <check_file>
    1020:	60a2                	ld	ra,8(sp)
    1022:	0141                	addi	sp,sp,16
    1024:	8082                	ret

0000000000001026 <putc>:
    1026:	1101                	addi	sp,sp,-32
    1028:	ec06                	sd	ra,24(sp)
    102a:	00b107a3          	sb	a1,15(sp)
    102e:	4605                	li	a2,1
    1030:	00f10593          	addi	a1,sp,15
    1034:	00001097          	auipc	ra,0x1
    1038:	b90080e7          	jalr	-1136(ra) # 1bc4 <write>
    103c:	60e2                	ld	ra,24(sp)
    103e:	6105                	addi	sp,sp,32
    1040:	8082                	ret

0000000000001042 <printint>:
    1042:	7179                	addi	sp,sp,-48
    1044:	f406                	sd	ra,40(sp)
    1046:	f022                	sd	s0,32(sp)
    1048:	ec26                	sd	s1,24(sp)
    104a:	e84a                	sd	s2,16(sp)
    104c:	84aa                	mv	s1,a0
    104e:	c299                	beqz	a3,1054 <printint+0x12>
    1050:	0805c363          	bltz	a1,10d6 <printint+0x94>
    1054:	2581                	sext.w	a1,a1
    1056:	4881                	li	a7,0
    1058:	868a                	mv	a3,sp
    105a:	4701                	li	a4,0
    105c:	2601                	sext.w	a2,a2
    105e:	00002537          	lui	a0,0x2
    1062:	c2850513          	addi	a0,a0,-984 # 1c28 <digits>
    1066:	883a                	mv	a6,a4
    1068:	2705                	addiw	a4,a4,1
    106a:	02c5f7bb          	remuw	a5,a1,a2
    106e:	1782                	slli	a5,a5,0x20
    1070:	9381                	srli	a5,a5,0x20
    1072:	97aa                	add	a5,a5,a0
    1074:	0007c783          	lbu	a5,0(a5)
    1078:	00f68023          	sb	a5,0(a3)
    107c:	0005879b          	sext.w	a5,a1
    1080:	02c5d5bb          	divuw	a1,a1,a2
    1084:	0685                	addi	a3,a3,1
    1086:	fec7f0e3          	bgeu	a5,a2,1066 <printint+0x24>
    108a:	00088a63          	beqz	a7,109e <printint+0x5c>
    108e:	081c                	addi	a5,sp,16
    1090:	973e                	add	a4,a4,a5
    1092:	02d00793          	li	a5,45
    1096:	fef70823          	sb	a5,-16(a4)
    109a:	0028071b          	addiw	a4,a6,2
    109e:	02e05663          	blez	a4,10ca <printint+0x88>
    10a2:	00e10433          	add	s0,sp,a4
    10a6:	fff10913          	addi	s2,sp,-1
    10aa:	993a                	add	s2,s2,a4
    10ac:	377d                	addiw	a4,a4,-1
    10ae:	1702                	slli	a4,a4,0x20
    10b0:	9301                	srli	a4,a4,0x20
    10b2:	40e90933          	sub	s2,s2,a4
    10b6:	fff44583          	lbu	a1,-1(s0)
    10ba:	8526                	mv	a0,s1
    10bc:	00000097          	auipc	ra,0x0
    10c0:	f6a080e7          	jalr	-150(ra) # 1026 <putc>
    10c4:	147d                	addi	s0,s0,-1
    10c6:	ff2418e3          	bne	s0,s2,10b6 <printint+0x74>
    10ca:	70a2                	ld	ra,40(sp)
    10cc:	7402                	ld	s0,32(sp)
    10ce:	64e2                	ld	s1,24(sp)
    10d0:	6942                	ld	s2,16(sp)
    10d2:	6145                	addi	sp,sp,48
    10d4:	8082                	ret
    10d6:	40b005bb          	negw	a1,a1
    10da:	4885                	li	a7,1
    10dc:	bfb5                	j	1058 <printint+0x16>

00000000000010de <vprintf>:
    10de:	7159                	addi	sp,sp,-112
    10e0:	f486                	sd	ra,104(sp)
    10e2:	f0a2                	sd	s0,96(sp)
    10e4:	eca6                	sd	s1,88(sp)
    10e6:	e8ca                	sd	s2,80(sp)
    10e8:	e4ce                	sd	s3,72(sp)
    10ea:	e0d2                	sd	s4,64(sp)
    10ec:	fc56                	sd	s5,56(sp)
    10ee:	f85a                	sd	s6,48(sp)
    10f0:	f45e                	sd	s7,40(sp)
    10f2:	f062                	sd	s8,32(sp)
    10f4:	ec66                	sd	s9,24(sp)
    10f6:	e86a                	sd	s10,16(sp)
    10f8:	e46e                	sd	s11,8(sp)
    10fa:	0005c483          	lbu	s1,0(a1) # 3000 <sample>
    10fe:	18048a63          	beqz	s1,1292 <vprintf+0x1b4>
    1102:	8a2a                	mv	s4,a0
    1104:	8ab2                	mv	s5,a2
    1106:	00158413          	addi	s0,a1,1
    110a:	4901                	li	s2,0
    110c:	02500993          	li	s3,37
    1110:	06400b93          	li	s7,100
    1114:	06c00c13          	li	s8,108
    1118:	07800c93          	li	s9,120
    111c:	07000d13          	li	s10,112
    1120:	00002db7          	lui	s11,0x2
    1124:	00002b37          	lui	s6,0x2
    1128:	c28b0b13          	addi	s6,s6,-984 # 1c28 <digits>
    112c:	a839                	j	114a <vprintf+0x6c>
    112e:	85a6                	mv	a1,s1
    1130:	8552                	mv	a0,s4
    1132:	00000097          	auipc	ra,0x0
    1136:	ef4080e7          	jalr	-268(ra) # 1026 <putc>
    113a:	a019                	j	1140 <vprintf+0x62>
    113c:	01390f63          	beq	s2,s3,115a <vprintf+0x7c>
    1140:	0405                	addi	s0,s0,1
    1142:	fff44483          	lbu	s1,-1(s0)
    1146:	14048663          	beqz	s1,1292 <vprintf+0x1b4>
    114a:	0004879b          	sext.w	a5,s1
    114e:	fe0917e3          	bnez	s2,113c <vprintf+0x5e>
    1152:	fd379ee3          	bne	a5,s3,112e <vprintf+0x50>
    1156:	893e                	mv	s2,a5
    1158:	b7e5                	j	1140 <vprintf+0x62>
    115a:	05778063          	beq	a5,s7,119a <vprintf+0xbc>
    115e:	05878c63          	beq	a5,s8,11b6 <vprintf+0xd8>
    1162:	07978863          	beq	a5,s9,11d2 <vprintf+0xf4>
    1166:	09a78463          	beq	a5,s10,11ee <vprintf+0x110>
    116a:	07300713          	li	a4,115
    116e:	0ce78263          	beq	a5,a4,1232 <vprintf+0x154>
    1172:	06300713          	li	a4,99
    1176:	0ee78763          	beq	a5,a4,1264 <vprintf+0x186>
    117a:	11378163          	beq	a5,s3,127c <vprintf+0x19e>
    117e:	85ce                	mv	a1,s3
    1180:	8552                	mv	a0,s4
    1182:	00000097          	auipc	ra,0x0
    1186:	ea4080e7          	jalr	-348(ra) # 1026 <putc>
    118a:	85a6                	mv	a1,s1
    118c:	8552                	mv	a0,s4
    118e:	00000097          	auipc	ra,0x0
    1192:	e98080e7          	jalr	-360(ra) # 1026 <putc>
    1196:	4901                	li	s2,0
    1198:	b765                	j	1140 <vprintf+0x62>
    119a:	008a8493          	addi	s1,s5,8
    119e:	4685                	li	a3,1
    11a0:	4629                	li	a2,10
    11a2:	000aa583          	lw	a1,0(s5)
    11a6:	8552                	mv	a0,s4
    11a8:	00000097          	auipc	ra,0x0
    11ac:	e9a080e7          	jalr	-358(ra) # 1042 <printint>
    11b0:	8aa6                	mv	s5,s1
    11b2:	4901                	li	s2,0
    11b4:	b771                	j	1140 <vprintf+0x62>
    11b6:	008a8493          	addi	s1,s5,8
    11ba:	4681                	li	a3,0
    11bc:	4629                	li	a2,10
    11be:	000aa583          	lw	a1,0(s5)
    11c2:	8552                	mv	a0,s4
    11c4:	00000097          	auipc	ra,0x0
    11c8:	e7e080e7          	jalr	-386(ra) # 1042 <printint>
    11cc:	8aa6                	mv	s5,s1
    11ce:	4901                	li	s2,0
    11d0:	bf85                	j	1140 <vprintf+0x62>
    11d2:	008a8493          	addi	s1,s5,8
    11d6:	4681                	li	a3,0
    11d8:	4641                	li	a2,16
    11da:	000aa583          	lw	a1,0(s5)
    11de:	8552                	mv	a0,s4
    11e0:	00000097          	auipc	ra,0x0
    11e4:	e62080e7          	jalr	-414(ra) # 1042 <printint>
    11e8:	8aa6                	mv	s5,s1
    11ea:	4901                	li	s2,0
    11ec:	bf91                	j	1140 <vprintf+0x62>
    11ee:	008a8913          	addi	s2,s5,8
    11f2:	000aba83          	ld	s5,0(s5)
    11f6:	03000593          	li	a1,48
    11fa:	8552                	mv	a0,s4
    11fc:	00000097          	auipc	ra,0x0
    1200:	e2a080e7          	jalr	-470(ra) # 1026 <putc>
    1204:	85e6                	mv	a1,s9
    1206:	8552                	mv	a0,s4
    1208:	00000097          	auipc	ra,0x0
    120c:	e1e080e7          	jalr	-482(ra) # 1026 <putc>
    1210:	44c1                	li	s1,16
    1212:	03cad793          	srli	a5,s5,0x3c
    1216:	97da                	add	a5,a5,s6
    1218:	0007c583          	lbu	a1,0(a5)
    121c:	8552                	mv	a0,s4
    121e:	00000097          	auipc	ra,0x0
    1222:	e08080e7          	jalr	-504(ra) # 1026 <putc>
    1226:	0a92                	slli	s5,s5,0x4
    1228:	34fd                	addiw	s1,s1,-1
    122a:	f4e5                	bnez	s1,1212 <vprintf+0x134>
    122c:	8aca                	mv	s5,s2
    122e:	4901                	li	s2,0
    1230:	bf01                	j	1140 <vprintf+0x62>
    1232:	008a8913          	addi	s2,s5,8
    1236:	000ab483          	ld	s1,0(s5)
    123a:	c085                	beqz	s1,125a <vprintf+0x17c>
    123c:	0004c583          	lbu	a1,0(s1)
    1240:	c5b1                	beqz	a1,128c <vprintf+0x1ae>
    1242:	8552                	mv	a0,s4
    1244:	00000097          	auipc	ra,0x0
    1248:	de2080e7          	jalr	-542(ra) # 1026 <putc>
    124c:	0485                	addi	s1,s1,1
    124e:	0004c583          	lbu	a1,0(s1)
    1252:	f9e5                	bnez	a1,1242 <vprintf+0x164>
    1254:	8aca                	mv	s5,s2
    1256:	4901                	li	s2,0
    1258:	b5e5                	j	1140 <vprintf+0x62>
    125a:	c20d8493          	addi	s1,s11,-992 # 1c20 <mkdir+0x1c>
    125e:	02800593          	li	a1,40
    1262:	b7c5                	j	1242 <vprintf+0x164>
    1264:	008a8493          	addi	s1,s5,8
    1268:	000ac583          	lbu	a1,0(s5)
    126c:	8552                	mv	a0,s4
    126e:	00000097          	auipc	ra,0x0
    1272:	db8080e7          	jalr	-584(ra) # 1026 <putc>
    1276:	8aa6                	mv	s5,s1
    1278:	4901                	li	s2,0
    127a:	b5d9                	j	1140 <vprintf+0x62>
    127c:	85ce                	mv	a1,s3
    127e:	8552                	mv	a0,s4
    1280:	00000097          	auipc	ra,0x0
    1284:	da6080e7          	jalr	-602(ra) # 1026 <putc>
    1288:	4901                	li	s2,0
    128a:	bd5d                	j	1140 <vprintf+0x62>
    128c:	8aca                	mv	s5,s2
    128e:	4901                	li	s2,0
    1290:	bd45                	j	1140 <vprintf+0x62>
    1292:	70a6                	ld	ra,104(sp)
    1294:	7406                	ld	s0,96(sp)
    1296:	64e6                	ld	s1,88(sp)
    1298:	6946                	ld	s2,80(sp)
    129a:	69a6                	ld	s3,72(sp)
    129c:	6a06                	ld	s4,64(sp)
    129e:	7ae2                	ld	s5,56(sp)
    12a0:	7b42                	ld	s6,48(sp)
    12a2:	7ba2                	ld	s7,40(sp)
    12a4:	7c02                	ld	s8,32(sp)
    12a6:	6ce2                	ld	s9,24(sp)
    12a8:	6d42                	ld	s10,16(sp)
    12aa:	6da2                	ld	s11,8(sp)
    12ac:	6165                	addi	sp,sp,112
    12ae:	8082                	ret

00000000000012b0 <fprintf>:
    12b0:	715d                	addi	sp,sp,-80
    12b2:	ec06                	sd	ra,24(sp)
    12b4:	f032                	sd	a2,32(sp)
    12b6:	f436                	sd	a3,40(sp)
    12b8:	f83a                	sd	a4,48(sp)
    12ba:	fc3e                	sd	a5,56(sp)
    12bc:	e0c2                	sd	a6,64(sp)
    12be:	e4c6                	sd	a7,72(sp)
    12c0:	1010                	addi	a2,sp,32
    12c2:	e432                	sd	a2,8(sp)
    12c4:	00000097          	auipc	ra,0x0
    12c8:	e1a080e7          	jalr	-486(ra) # 10de <vprintf>
    12cc:	60e2                	ld	ra,24(sp)
    12ce:	6161                	addi	sp,sp,80
    12d0:	8082                	ret

00000000000012d2 <printf>:
    12d2:	711d                	addi	sp,sp,-96
    12d4:	ec06                	sd	ra,24(sp)
    12d6:	f42e                	sd	a1,40(sp)
    12d8:	f832                	sd	a2,48(sp)
    12da:	fc36                	sd	a3,56(sp)
    12dc:	e0ba                	sd	a4,64(sp)
    12de:	e4be                	sd	a5,72(sp)
    12e0:	e8c2                	sd	a6,80(sp)
    12e2:	ecc6                	sd	a7,88(sp)
    12e4:	1030                	addi	a2,sp,40
    12e6:	e432                	sd	a2,8(sp)
    12e8:	85aa                	mv	a1,a0
    12ea:	4505                	li	a0,1
    12ec:	00000097          	auipc	ra,0x0
    12f0:	df2080e7          	jalr	-526(ra) # 10de <vprintf>
    12f4:	60e2                	ld	ra,24(sp)
    12f6:	6125                	addi	sp,sp,96
    12f8:	8082                	ret

00000000000012fa <cksum>:
    12fa:	cdb1                	beqz	a1,1356 <cksum+0x5c>
    12fc:	00b50833          	add	a6,a0,a1
    1300:	4781                	li	a5,0
    1302:	00002637          	lui	a2,0x2
    1306:	c4060613          	addi	a2,a2,-960 # 1c40 <crctab>
    130a:	0505                	addi	a0,a0,1
    130c:	0087969b          	slliw	a3,a5,0x8
    1310:	0187d71b          	srliw	a4,a5,0x18
    1314:	fff54783          	lbu	a5,-1(a0)
    1318:	8f3d                	xor	a4,a4,a5
    131a:	1702                	slli	a4,a4,0x20
    131c:	9301                	srli	a4,a4,0x20
    131e:	070a                	slli	a4,a4,0x2
    1320:	9732                	add	a4,a4,a2
    1322:	431c                	lw	a5,0(a4)
    1324:	8fb5                	xor	a5,a5,a3
    1326:	2781                	sext.w	a5,a5
    1328:	fea811e3          	bne	a6,a0,130a <cksum+0x10>
    132c:	00002637          	lui	a2,0x2
    1330:	c4060613          	addi	a2,a2,-960 # 1c40 <crctab>
    1334:	0ff5f693          	andi	a3,a1,255
    1338:	81a1                	srli	a1,a1,0x8
    133a:	0087951b          	slliw	a0,a5,0x8
    133e:	0187d71b          	srliw	a4,a5,0x18
    1342:	8f35                	xor	a4,a4,a3
    1344:	070a                	slli	a4,a4,0x2
    1346:	9732                	add	a4,a4,a2
    1348:	431c                	lw	a5,0(a4)
    134a:	8fa9                	xor	a5,a5,a0
    134c:	2781                	sext.w	a5,a5
    134e:	f1fd                	bnez	a1,1334 <cksum+0x3a>
    1350:	fff7c513          	not	a0,a5
    1354:	8082                	ret
    1356:	4781                	li	a5,0
    1358:	bfe5                	j	1350 <cksum+0x56>

000000000000135a <swap_bytes>:
    135a:	ce19                	beqz	a2,1378 <swap_bytes+0x1e>
    135c:	87aa                	mv	a5,a0
    135e:	962a                	add	a2,a2,a0
    1360:	0007c703          	lbu	a4,0(a5)
    1364:	0005c683          	lbu	a3,0(a1)
    1368:	00d78023          	sb	a3,0(a5)
    136c:	00e58023          	sb	a4,0(a1)
    1370:	0785                	addi	a5,a5,1
    1372:	0585                	addi	a1,a1,1
    1374:	fec796e3          	bne	a5,a2,1360 <swap_bytes+0x6>
    1378:	8082                	ret

000000000000137a <random_init>:
    137a:	7139                	addi	sp,sp,-64
    137c:	fc06                	sd	ra,56(sp)
    137e:	f822                	sd	s0,48(sp)
    1380:	f426                	sd	s1,40(sp)
    1382:	f04a                	sd	s2,32(sp)
    1384:	ec4e                	sd	s3,24(sp)
    1386:	e852                	sd	s4,16(sp)
    1388:	c62a                	sw	a0,12(sp)
    138a:	000037b7          	lui	a5,0x3
    138e:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    1392:	eca5                	bnez	s1,140a <random_init+0x90>
    1394:	00003737          	lui	a4,0x3
    1398:	10070913          	addi	s2,a4,256 # 3100 <s>
    139c:	10070713          	addi	a4,a4,256
    13a0:	87a6                	mv	a5,s1
    13a2:	10000693          	li	a3,256
    13a6:	00f70023          	sb	a5,0(a4)
    13aa:	2785                	addiw	a5,a5,1
    13ac:	0705                	addi	a4,a4,1
    13ae:	fed79ce3          	bne	a5,a3,13a6 <random_init+0x2c>
    13b2:	4401                	li	s0,0
    13b4:	000039b7          	lui	s3,0x3
    13b8:	10098993          	addi	s3,s3,256 # 3100 <s>
    13bc:	10000a13          	li	s4,256
    13c0:	0034f793          	andi	a5,s1,3
    13c4:	0818                	addi	a4,sp,16
    13c6:	97ba                	add	a5,a5,a4
    13c8:	ffc7c783          	lbu	a5,-4(a5)
    13cc:	00094703          	lbu	a4,0(s2)
    13d0:	9fb9                	addw	a5,a5,a4
    13d2:	9c3d                	addw	s0,s0,a5
    13d4:	0ff47413          	andi	s0,s0,255
    13d8:	4605                	li	a2,1
    13da:	008985b3          	add	a1,s3,s0
    13de:	854a                	mv	a0,s2
    13e0:	00000097          	auipc	ra,0x0
    13e4:	f7a080e7          	jalr	-134(ra) # 135a <swap_bytes>
    13e8:	2485                	addiw	s1,s1,1
    13ea:	0905                	addi	s2,s2,1
    13ec:	fd449ae3          	bne	s1,s4,13c0 <random_init+0x46>
    13f0:	000037b7          	lui	a5,0x3
    13f4:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    13f8:	000037b7          	lui	a5,0x3
    13fc:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1400:	000037b7          	lui	a5,0x3
    1404:	4705                	li	a4,1
    1406:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    140a:	70e2                	ld	ra,56(sp)
    140c:	7442                	ld	s0,48(sp)
    140e:	74a2                	ld	s1,40(sp)
    1410:	7902                	ld	s2,32(sp)
    1412:	69e2                	ld	s3,24(sp)
    1414:	6a42                	ld	s4,16(sp)
    1416:	6121                	addi	sp,sp,64
    1418:	8082                	ret

000000000000141a <random_bytes>:
    141a:	7139                	addi	sp,sp,-64
    141c:	fc06                	sd	ra,56(sp)
    141e:	f822                	sd	s0,48(sp)
    1420:	f426                	sd	s1,40(sp)
    1422:	f04a                	sd	s2,32(sp)
    1424:	ec4e                	sd	s3,24(sp)
    1426:	e852                	sd	s4,16(sp)
    1428:	e456                	sd	s5,8(sp)
    142a:	e05a                	sd	s6,0(sp)
    142c:	892a                	mv	s2,a0
    142e:	8aae                	mv	s5,a1
    1430:	000037b7          	lui	a5,0x3
    1434:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1438:	c3c1                	beqz	a5,14b8 <random_bytes+0x9e>
    143a:	060a8563          	beqz	s5,14a4 <random_bytes+0x8a>
    143e:	9aca                	add	s5,s5,s2
    1440:	00003a37          	lui	s4,0x3
    1444:	000034b7          	lui	s1,0x3
    1448:	10048493          	addi	s1,s1,256 # 3100 <s>
    144c:	000039b7          	lui	s3,0x3
    1450:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    1454:	2505                	addiw	a0,a0,1
    1456:	0ff57513          	andi	a0,a0,255
    145a:	0eaa0aa3          	sb	a0,245(s4)
    145e:	00a48b33          	add	s6,s1,a0
    1462:	000b4403          	lbu	s0,0(s6)
    1466:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    146a:	9c3d                	addw	s0,s0,a5
    146c:	0ff47413          	andi	s0,s0,255
    1470:	0e898a23          	sb	s0,244(s3)
    1474:	4605                	li	a2,1
    1476:	008485b3          	add	a1,s1,s0
    147a:	855a                	mv	a0,s6
    147c:	00000097          	auipc	ra,0x0
    1480:	ede080e7          	jalr	-290(ra) # 135a <swap_bytes>
    1484:	9426                	add	s0,s0,s1
    1486:	000b4783          	lbu	a5,0(s6)
    148a:	00044703          	lbu	a4,0(s0)
    148e:	9fb9                	addw	a5,a5,a4
    1490:	0ff7f793          	andi	a5,a5,255
    1494:	97a6                	add	a5,a5,s1
    1496:	0007c783          	lbu	a5,0(a5)
    149a:	00f90023          	sb	a5,0(s2)
    149e:	0905                	addi	s2,s2,1
    14a0:	fb2a98e3          	bne	s5,s2,1450 <random_bytes+0x36>
    14a4:	70e2                	ld	ra,56(sp)
    14a6:	7442                	ld	s0,48(sp)
    14a8:	74a2                	ld	s1,40(sp)
    14aa:	7902                	ld	s2,32(sp)
    14ac:	69e2                	ld	s3,24(sp)
    14ae:	6a42                	ld	s4,16(sp)
    14b0:	6aa2                	ld	s5,8(sp)
    14b2:	6b02                	ld	s6,0(sp)
    14b4:	6121                	addi	sp,sp,64
    14b6:	8082                	ret
    14b8:	4501                	li	a0,0
    14ba:	00000097          	auipc	ra,0x0
    14be:	ec0080e7          	jalr	-320(ra) # 137a <random_init>
    14c2:	bfa5                	j	143a <random_bytes+0x20>

00000000000014c4 <random_ulong>:
    14c4:	1101                	addi	sp,sp,-32
    14c6:	ec06                	sd	ra,24(sp)
    14c8:	45a1                	li	a1,8
    14ca:	0028                	addi	a0,sp,8
    14cc:	00000097          	auipc	ra,0x0
    14d0:	f4e080e7          	jalr	-178(ra) # 141a <random_bytes>
    14d4:	6522                	ld	a0,8(sp)
    14d6:	60e2                	ld	ra,24(sp)
    14d8:	6105                	addi	sp,sp,32
    14da:	8082                	ret

00000000000014dc <shuffle>:
    14dc:	c9b9                	beqz	a1,1532 <shuffle+0x56>
    14de:	7179                	addi	sp,sp,-48
    14e0:	f406                	sd	ra,40(sp)
    14e2:	f022                	sd	s0,32(sp)
    14e4:	ec26                	sd	s1,24(sp)
    14e6:	e84a                	sd	s2,16(sp)
    14e8:	e44e                	sd	s3,8(sp)
    14ea:	e052                	sd	s4,0(sp)
    14ec:	8a2a                	mv	s4,a0
    14ee:	89ae                	mv	s3,a1
    14f0:	84b2                	mv	s1,a2
    14f2:	892a                	mv	s2,a0
    14f4:	4401                	li	s0,0
    14f6:	00000097          	auipc	ra,0x0
    14fa:	fce080e7          	jalr	-50(ra) # 14c4 <random_ulong>
    14fe:	408985b3          	sub	a1,s3,s0
    1502:	02b575b3          	remu	a1,a0,a1
    1506:	95a2                	add	a1,a1,s0
    1508:	029585b3          	mul	a1,a1,s1
    150c:	8626                	mv	a2,s1
    150e:	95d2                	add	a1,a1,s4
    1510:	854a                	mv	a0,s2
    1512:	00000097          	auipc	ra,0x0
    1516:	e48080e7          	jalr	-440(ra) # 135a <swap_bytes>
    151a:	0405                	addi	s0,s0,1
    151c:	9926                	add	s2,s2,s1
    151e:	fc899ce3          	bne	s3,s0,14f6 <shuffle+0x1a>
    1522:	70a2                	ld	ra,40(sp)
    1524:	7402                	ld	s0,32(sp)
    1526:	64e2                	ld	s1,24(sp)
    1528:	6942                	ld	s2,16(sp)
    152a:	69a2                	ld	s3,8(sp)
    152c:	6a02                	ld	s4,0(sp)
    152e:	6145                	addi	sp,sp,48
    1530:	8082                	ret
    1532:	8082                	ret

0000000000001534 <arc4_init>:
    1534:	100500a3          	sb	zero,257(a0)
    1538:	10050023          	sb	zero,256(a0)
    153c:	4781                	li	a5,0
    153e:	10000693          	li	a3,256
    1542:	00f50733          	add	a4,a0,a5
    1546:	00f70023          	sb	a5,0(a4)
    154a:	0785                	addi	a5,a5,1
    154c:	fed79be3          	bne	a5,a3,1542 <arc4_init+0xe>
    1550:	86aa                	mv	a3,a0
    1552:	10050e13          	addi	t3,a0,256
    1556:	4701                	li	a4,0
    1558:	4781                	li	a5,0
    155a:	0006c883          	lbu	a7,0(a3)
    155e:	00f58833          	add	a6,a1,a5
    1562:	00084803          	lbu	a6,0(a6)
    1566:	00e8873b          	addw	a4,a7,a4
    156a:	00e8073b          	addw	a4,a6,a4
    156e:	0ff77713          	andi	a4,a4,255
    1572:	00e50833          	add	a6,a0,a4
    1576:	00084303          	lbu	t1,0(a6)
    157a:	00668023          	sb	t1,0(a3)
    157e:	01180023          	sb	a7,0(a6)
    1582:	0785                	addi	a5,a5,1
    1584:	00c7b833          	sltu	a6,a5,a2
    1588:	41000833          	neg	a6,a6
    158c:	0107f7b3          	and	a5,a5,a6
    1590:	0685                	addi	a3,a3,1
    1592:	fdc694e3          	bne	a3,t3,155a <arc4_init+0x26>
    1596:	8082                	ret

0000000000001598 <arc4_crypt>:
    1598:	10054e03          	lbu	t3,256(a0)
    159c:	10154803          	lbu	a6,257(a0)
    15a0:	fff60e93          	addi	t4,a2,-1
    15a4:	c225                	beqz	a2,1604 <arc4_crypt+0x6c>
    15a6:	00c588b3          	add	a7,a1,a2
    15aa:	86ae                	mv	a3,a1
    15ac:	001e031b          	addiw	t1,t3,1
    15b0:	40b3033b          	subw	t1,t1,a1
    15b4:	00d3073b          	addw	a4,t1,a3
    15b8:	0ff77713          	andi	a4,a4,255
    15bc:	972a                	add	a4,a4,a0
    15be:	00074603          	lbu	a2,0(a4)
    15c2:	0106083b          	addw	a6,a2,a6
    15c6:	0ff87813          	andi	a6,a6,255
    15ca:	010507b3          	add	a5,a0,a6
    15ce:	0007c583          	lbu	a1,0(a5)
    15d2:	00b70023          	sb	a1,0(a4)
    15d6:	00c78023          	sb	a2,0(a5)
    15da:	0685                	addi	a3,a3,1
    15dc:	00074783          	lbu	a5,0(a4)
    15e0:	9fb1                	addw	a5,a5,a2
    15e2:	0ff7f793          	andi	a5,a5,255
    15e6:	97aa                	add	a5,a5,a0
    15e8:	0007c783          	lbu	a5,0(a5)
    15ec:	fff6c703          	lbu	a4,-1(a3)
    15f0:	8fb9                	xor	a5,a5,a4
    15f2:	fef68fa3          	sb	a5,-1(a3)
    15f6:	fb169fe3          	bne	a3,a7,15b4 <arc4_crypt+0x1c>
    15fa:	2e85                	addiw	t4,t4,1
    15fc:	01ce8e3b          	addw	t3,t4,t3
    1600:	0ffe7e13          	andi	t3,t3,255
    1604:	11c50023          	sb	t3,256(a0)
    1608:	110500a3          	sb	a6,257(a0)
    160c:	8082                	ret

000000000000160e <_main>:
    160e:	1141                	addi	sp,sp,-16
    1610:	e406                	sd	ra,8(sp)
    1612:	00000097          	auipc	ra,0x0
    1616:	9ee080e7          	jalr	-1554(ra) # 1000 <main>
    161a:	4501                	li	a0,0
    161c:	00000097          	auipc	ra,0x0
    1620:	578080e7          	jalr	1400(ra) # 1b94 <exit>
    1624:	60a2                	ld	ra,8(sp)
    1626:	0141                	addi	sp,sp,16
    1628:	8082                	ret

000000000000162a <strcmp>:
    162a:	00054783          	lbu	a5,0(a0)
    162e:	cb91                	beqz	a5,1642 <strcmp+0x18>
    1630:	0005c703          	lbu	a4,0(a1)
    1634:	00f71763          	bne	a4,a5,1642 <strcmp+0x18>
    1638:	0505                	addi	a0,a0,1
    163a:	0585                	addi	a1,a1,1
    163c:	00054783          	lbu	a5,0(a0)
    1640:	fbe5                	bnez	a5,1630 <strcmp+0x6>
    1642:	0005c503          	lbu	a0,0(a1)
    1646:	40a7853b          	subw	a0,a5,a0
    164a:	8082                	ret

000000000000164c <strcpy>:
    164c:	87aa                	mv	a5,a0
    164e:	0585                	addi	a1,a1,1
    1650:	0785                	addi	a5,a5,1
    1652:	fff5c703          	lbu	a4,-1(a1)
    1656:	fee78fa3          	sb	a4,-1(a5)
    165a:	fb75                	bnez	a4,164e <strcpy+0x2>
    165c:	8082                	ret

000000000000165e <strlen>:
    165e:	00054783          	lbu	a5,0(a0)
    1662:	cf81                	beqz	a5,167a <strlen+0x1c>
    1664:	0505                	addi	a0,a0,1
    1666:	87aa                	mv	a5,a0
    1668:	4685                	li	a3,1
    166a:	9e89                	subw	a3,a3,a0
    166c:	00f6853b          	addw	a0,a3,a5
    1670:	0785                	addi	a5,a5,1
    1672:	fff7c703          	lbu	a4,-1(a5)
    1676:	fb7d                	bnez	a4,166c <strlen+0xe>
    1678:	8082                	ret
    167a:	4501                	li	a0,0
    167c:	8082                	ret

000000000000167e <memset>:
    167e:	ca19                	beqz	a2,1694 <memset+0x16>
    1680:	87aa                	mv	a5,a0
    1682:	1602                	slli	a2,a2,0x20
    1684:	9201                	srli	a2,a2,0x20
    1686:	00a60733          	add	a4,a2,a0
    168a:	00b78023          	sb	a1,0(a5)
    168e:	0785                	addi	a5,a5,1
    1690:	fee79de3          	bne	a5,a4,168a <memset+0xc>
    1694:	8082                	ret

0000000000001696 <memcmp>:
    1696:	1101                	addi	sp,sp,-32
    1698:	ec06                	sd	ra,24(sp)
    169a:	e822                	sd	s0,16(sp)
    169c:	e426                	sd	s1,8(sp)
    169e:	e04a                	sd	s2,0(sp)
    16a0:	892a                	mv	s2,a0
    16a2:	842e                	mv	s0,a1
    16a4:	84b2                	mv	s1,a2
    16a6:	c915                	beqz	a0,16da <memcmp+0x44>
    16a8:	c5ad                	beqz	a1,1712 <memcmp+0x7c>
    16aa:	fff60713          	addi	a4,a2,-1
    16ae:	c645                	beqz	a2,1756 <memcmp+0xc0>
    16b0:	87ca                	mv	a5,s2
    16b2:	00190613          	addi	a2,s2,1
    16b6:	963a                	add	a2,a2,a4
    16b8:	0007c683          	lbu	a3,0(a5)
    16bc:	00044703          	lbu	a4,0(s0)
    16c0:	08e69463          	bne	a3,a4,1748 <memcmp+0xb2>
    16c4:	0785                	addi	a5,a5,1
    16c6:	0405                	addi	s0,s0,1
    16c8:	fec798e3          	bne	a5,a2,16b8 <memcmp+0x22>
    16cc:	4501                	li	a0,0
    16ce:	60e2                	ld	ra,24(sp)
    16d0:	6442                	ld	s0,16(sp)
    16d2:	64a2                	ld	s1,8(sp)
    16d4:	6902                	ld	s2,0(sp)
    16d6:	6105                	addi	sp,sp,32
    16d8:	8082                	ret
    16da:	4501                	li	a0,0
    16dc:	da6d                	beqz	a2,16ce <memcmp+0x38>
    16de:	03200693          	li	a3,50
    16e2:	00002637          	lui	a2,0x2
    16e6:	04060613          	addi	a2,a2,64 # 2040 <crctab+0x400>
    16ea:	000025b7          	lui	a1,0x2
    16ee:	05058593          	addi	a1,a1,80 # 2050 <crctab+0x410>
    16f2:	4509                	li	a0,2
    16f4:	00000097          	auipc	ra,0x0
    16f8:	bbc080e7          	jalr	-1092(ra) # 12b0 <fprintf>
    16fc:	650d                	lui	a0,0x3
    16fe:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1702:	00000097          	auipc	ra,0x0
    1706:	492080e7          	jalr	1170(ra) # 1b94 <exit>
    170a:	fff48713          	addi	a4,s1,-1
    170e:	f04d                	bnez	s0,16b0 <memcmp+0x1a>
    1710:	a011                	j	1714 <memcmp+0x7e>
    1712:	c221                	beqz	a2,1752 <memcmp+0xbc>
    1714:	03300693          	li	a3,51
    1718:	00002637          	lui	a2,0x2
    171c:	04060613          	addi	a2,a2,64 # 2040 <crctab+0x400>
    1720:	000025b7          	lui	a1,0x2
    1724:	09858593          	addi	a1,a1,152 # 2098 <crctab+0x458>
    1728:	4509                	li	a0,2
    172a:	00000097          	auipc	ra,0x0
    172e:	b86080e7          	jalr	-1146(ra) # 12b0 <fprintf>
    1732:	650d                	lui	a0,0x3
    1734:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1738:	00000097          	auipc	ra,0x0
    173c:	45c080e7          	jalr	1116(ra) # 1b94 <exit>
    1740:	fff48713          	addi	a4,s1,-1
    1744:	4401                	li	s0,0
    1746:	b7ad                	j	16b0 <memcmp+0x1a>
    1748:	4505                	li	a0,1
    174a:	f8d762e3          	bltu	a4,a3,16ce <memcmp+0x38>
    174e:	557d                	li	a0,-1
    1750:	bfbd                	j	16ce <memcmp+0x38>
    1752:	4501                	li	a0,0
    1754:	bfad                	j	16ce <memcmp+0x38>
    1756:	4501                	li	a0,0
    1758:	bf9d                	j	16ce <memcmp+0x38>

000000000000175a <memcpy>:
    175a:	1101                	addi	sp,sp,-32
    175c:	ec06                	sd	ra,24(sp)
    175e:	e822                	sd	s0,16(sp)
    1760:	e426                	sd	s1,8(sp)
    1762:	e04a                	sd	s2,0(sp)
    1764:	84aa                	mv	s1,a0
    1766:	842e                	mv	s0,a1
    1768:	8932                	mv	s2,a2
    176a:	c51d                	beqz	a0,1798 <memcpy+0x3e>
    176c:	c1ad                	beqz	a1,17ce <memcpy+0x74>
    176e:	fff60693          	addi	a3,a2,-1
    1772:	ce01                	beqz	a2,178a <memcpy+0x30>
    1774:	0685                	addi	a3,a3,1
    1776:	96a6                	add	a3,a3,s1
    1778:	87a6                	mv	a5,s1
    177a:	0405                	addi	s0,s0,1
    177c:	0785                	addi	a5,a5,1
    177e:	fff44703          	lbu	a4,-1(s0)
    1782:	fee78fa3          	sb	a4,-1(a5)
    1786:	fed79ae3          	bne	a5,a3,177a <memcpy+0x20>
    178a:	8526                	mv	a0,s1
    178c:	60e2                	ld	ra,24(sp)
    178e:	6442                	ld	s0,16(sp)
    1790:	64a2                	ld	s1,8(sp)
    1792:	6902                	ld	s2,0(sp)
    1794:	6105                	addi	sp,sp,32
    1796:	8082                	ret
    1798:	da6d                	beqz	a2,178a <memcpy+0x30>
    179a:	04000693          	li	a3,64
    179e:	00002637          	lui	a2,0x2
    17a2:	04060613          	addi	a2,a2,64 # 2040 <crctab+0x400>
    17a6:	000025b7          	lui	a1,0x2
    17aa:	0e058593          	addi	a1,a1,224 # 20e0 <crctab+0x4a0>
    17ae:	4509                	li	a0,2
    17b0:	00000097          	auipc	ra,0x0
    17b4:	b00080e7          	jalr	-1280(ra) # 12b0 <fprintf>
    17b8:	650d                	lui	a0,0x3
    17ba:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17be:	00000097          	auipc	ra,0x0
    17c2:	3d6080e7          	jalr	982(ra) # 1b94 <exit>
    17c6:	fff90693          	addi	a3,s2,-1
    17ca:	f44d                	bnez	s0,1774 <memcpy+0x1a>
    17cc:	a011                	j	17d0 <memcpy+0x76>
    17ce:	de55                	beqz	a2,178a <memcpy+0x30>
    17d0:	04100693          	li	a3,65
    17d4:	00002637          	lui	a2,0x2
    17d8:	04060613          	addi	a2,a2,64 # 2040 <crctab+0x400>
    17dc:	000025b7          	lui	a1,0x2
    17e0:	12858593          	addi	a1,a1,296 # 2128 <crctab+0x4e8>
    17e4:	4509                	li	a0,2
    17e6:	00000097          	auipc	ra,0x0
    17ea:	aca080e7          	jalr	-1334(ra) # 12b0 <fprintf>
    17ee:	650d                	lui	a0,0x3
    17f0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17f4:	00000097          	auipc	ra,0x0
    17f8:	3a0080e7          	jalr	928(ra) # 1b94 <exit>
    17fc:	fff90693          	addi	a3,s2,-1
    1800:	4401                	li	s0,0
    1802:	bf8d                	j	1774 <memcpy+0x1a>

0000000000001804 <itoa>:
    1804:	1101                	addi	sp,sp,-32
    1806:	ec06                	sd	ra,24(sp)
    1808:	e822                	sd	s0,16(sp)
    180a:	e426                	sd	s1,8(sp)
    180c:	842a                	mv	s0,a0
    180e:	41f5d71b          	sraiw	a4,a1,0x1f
    1812:	00e5c7b3          	xor	a5,a1,a4
    1816:	9f99                	subw	a5,a5,a4
    1818:	84aa                	mv	s1,a0
    181a:	862a                	mv	a2,a0
    181c:	4681                	li	a3,0
    181e:	4529                	li	a0,10
    1820:	4825                	li	a6,9
    1822:	88b6                	mv	a7,a3
    1824:	2685                	addiw	a3,a3,1
    1826:	02a7e73b          	remw	a4,a5,a0
    182a:	0307071b          	addiw	a4,a4,48
    182e:	00e60023          	sb	a4,0(a2)
    1832:	873e                	mv	a4,a5
    1834:	02a7c7bb          	divw	a5,a5,a0
    1838:	0605                	addi	a2,a2,1
    183a:	fee844e3          	blt	a6,a4,1822 <itoa+0x1e>
    183e:	0405c863          	bltz	a1,188e <itoa+0x8a>
    1842:	96a2                	add	a3,a3,s0
    1844:	00068023          	sb	zero,0(a3)
    1848:	8522                	mv	a0,s0
    184a:	00000097          	auipc	ra,0x0
    184e:	e14080e7          	jalr	-492(ra) # 165e <strlen>
    1852:	fff5071b          	addiw	a4,a0,-1
    1856:	02e05763          	blez	a4,1884 <itoa+0x80>
    185a:	9722                	add	a4,a4,s0
    185c:	4681                	li	a3,0
    185e:	0004c783          	lbu	a5,0(s1)
    1862:	00074603          	lbu	a2,0(a4)
    1866:	00c48023          	sb	a2,0(s1)
    186a:	00f70023          	sb	a5,0(a4)
    186e:	0016879b          	addiw	a5,a3,1
    1872:	0007869b          	sext.w	a3,a5
    1876:	0485                	addi	s1,s1,1
    1878:	177d                	addi	a4,a4,-1
    187a:	fff7c793          	not	a5,a5
    187e:	9fa9                	addw	a5,a5,a0
    1880:	fcf6cfe3          	blt	a3,a5,185e <itoa+0x5a>
    1884:	60e2                	ld	ra,24(sp)
    1886:	6442                	ld	s0,16(sp)
    1888:	64a2                	ld	s1,8(sp)
    188a:	6105                	addi	sp,sp,32
    188c:	8082                	ret
    188e:	96a2                	add	a3,a3,s0
    1890:	02d00793          	li	a5,45
    1894:	00f68023          	sb	a5,0(a3)
    1898:	0028869b          	addiw	a3,a7,2
    189c:	b75d                	j	1842 <itoa+0x3e>

000000000000189e <atoi>:
    189e:	00054783          	lbu	a5,0(a0)
    18a2:	02000713          	li	a4,32
    18a6:	00e79763          	bne	a5,a4,18b4 <atoi+0x16>
    18aa:	0505                	addi	a0,a0,1
    18ac:	00054783          	lbu	a5,0(a0)
    18b0:	fee78de3          	beq	a5,a4,18aa <atoi+0xc>
    18b4:	02b00713          	li	a4,43
    18b8:	04e78663          	beq	a5,a4,1904 <atoi+0x66>
    18bc:	02d00713          	li	a4,45
    18c0:	4805                	li	a6,1
    18c2:	04e78463          	beq	a5,a4,190a <atoi+0x6c>
    18c6:	00054683          	lbu	a3,0(a0)
    18ca:	fd06879b          	addiw	a5,a3,-48
    18ce:	0ff7f793          	andi	a5,a5,255
    18d2:	4725                	li	a4,9
    18d4:	02f76e63          	bltu	a4,a5,1910 <atoi+0x72>
    18d8:	4601                	li	a2,0
    18da:	45a5                	li	a1,9
    18dc:	0505                	addi	a0,a0,1
    18de:	0026179b          	slliw	a5,a2,0x2
    18e2:	9fb1                	addw	a5,a5,a2
    18e4:	0017979b          	slliw	a5,a5,0x1
    18e8:	9fb5                	addw	a5,a5,a3
    18ea:	fd07861b          	addiw	a2,a5,-48
    18ee:	00054683          	lbu	a3,0(a0)
    18f2:	fd06871b          	addiw	a4,a3,-48
    18f6:	0ff77713          	andi	a4,a4,255
    18fa:	fee5f1e3          	bgeu	a1,a4,18dc <atoi+0x3e>
    18fe:	02c8053b          	mulw	a0,a6,a2
    1902:	8082                	ret
    1904:	0505                	addi	a0,a0,1
    1906:	4805                	li	a6,1
    1908:	bf7d                	j	18c6 <atoi+0x28>
    190a:	0505                	addi	a0,a0,1
    190c:	587d                	li	a6,-1
    190e:	bf65                	j	18c6 <atoi+0x28>
    1910:	4601                	li	a2,0
    1912:	b7f5                	j	18fe <atoi+0x60>

0000000000001914 <check_file_handle>:
    1914:	d8010113          	addi	sp,sp,-640
    1918:	26113c23          	sd	ra,632(sp)
    191c:	26813823          	sd	s0,624(sp)
    1920:	26913423          	sd	s1,616(sp)
    1924:	27213023          	sd	s2,608(sp)
    1928:	25313c23          	sd	s3,600(sp)
    192c:	25413823          	sd	s4,592(sp)
    1930:	25513423          	sd	s5,584(sp)
    1934:	25613023          	sd	s6,576(sp)
    1938:	23713c23          	sd	s7,568(sp)
    193c:	23813823          	sd	s8,560(sp)
    1940:	23913423          	sd	s9,552(sp)
    1944:	23a13023          	sd	s10,544(sp)
    1948:	21b13c23          	sd	s11,536(sp)
    194c:	8baa                	mv	s7,a0
    194e:	8a2e                	mv	s4,a1
    1950:	8c32                	mv	s8,a2
    1952:	89b6                	mv	s3,a3
    1954:	040c                	addi	a1,sp,512
    1956:	00000097          	auipc	ra,0x0
    195a:	28e080e7          	jalr	654(ra) # 1be4 <fstat>
    195e:	20813603          	ld	a2,520(sp)
    1962:	03361163          	bne	a2,s3,1984 <check_file_handle+0x70>
    1966:	06098763          	beqz	s3,19d4 <check_file_handle+0xc0>
    196a:	4901                	li	s2,0
    196c:	20000a93          	li	s5,512
    1970:	00002cb7          	lui	s9,0x2
    1974:	00002db7          	lui	s11,0x2
    1978:	6b0d                	lui	s6,0x3
    197a:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    197e:	00002d37          	lui	s10,0x2
    1982:	aa39                	j	1aa0 <check_file_handle+0x18c>
    1984:	86ce                	mv	a3,s3
    1986:	85d2                	mv	a1,s4
    1988:	00002537          	lui	a0,0x2
    198c:	17050513          	addi	a0,a0,368 # 2170 <crctab+0x530>
    1990:	00000097          	auipc	ra,0x0
    1994:	942080e7          	jalr	-1726(ra) # 12d2 <printf>
    1998:	fc0999e3          	bnez	s3,196a <check_file_handle+0x56>
    199c:	20813683          	ld	a3,520(sp)
    19a0:	03368a63          	beq	a3,s3,19d4 <check_file_handle+0xc0>
    19a4:	0a600813          	li	a6,166
    19a8:	000027b7          	lui	a5,0x2
    19ac:	04078793          	addi	a5,a5,64 # 2040 <crctab+0x400>
    19b0:	874e                	mv	a4,s3
    19b2:	8652                	mv	a2,s4
    19b4:	000025b7          	lui	a1,0x2
    19b8:	24058593          	addi	a1,a1,576 # 2240 <crctab+0x600>
    19bc:	4509                	li	a0,2
    19be:	00000097          	auipc	ra,0x0
    19c2:	8f2080e7          	jalr	-1806(ra) # 12b0 <fprintf>
    19c6:	650d                	lui	a0,0x3
    19c8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    19cc:	00000097          	auipc	ra,0x0
    19d0:	1c8080e7          	jalr	456(ra) # 1b94 <exit>
    19d4:	85d2                	mv	a1,s4
    19d6:	00002537          	lui	a0,0x2
    19da:	28850513          	addi	a0,a0,648 # 2288 <crctab+0x648>
    19de:	00000097          	auipc	ra,0x0
    19e2:	8f4080e7          	jalr	-1804(ra) # 12d2 <printf>
    19e6:	27813083          	ld	ra,632(sp)
    19ea:	27013403          	ld	s0,624(sp)
    19ee:	26813483          	ld	s1,616(sp)
    19f2:	26013903          	ld	s2,608(sp)
    19f6:	25813983          	ld	s3,600(sp)
    19fa:	25013a03          	ld	s4,592(sp)
    19fe:	24813a83          	ld	s5,584(sp)
    1a02:	24013b03          	ld	s6,576(sp)
    1a06:	23813b83          	ld	s7,568(sp)
    1a0a:	23013c03          	ld	s8,560(sp)
    1a0e:	22813c83          	ld	s9,552(sp)
    1a12:	22013d03          	ld	s10,544(sp)
    1a16:	21813d83          	ld	s11,536(sp)
    1a1a:	28010113          	addi	sp,sp,640
    1a1e:	8082                	ret
    1a20:	09d00893          	li	a7,157
    1a24:	040c8813          	addi	a6,s9,64 # 2040 <crctab+0x400>
    1a28:	87aa                	mv	a5,a0
    1a2a:	8752                	mv	a4,s4
    1a2c:	86ca                	mv	a3,s2
    1a2e:	8622                	mv	a2,s0
    1a30:	1a0d8593          	addi	a1,s11,416 # 21a0 <crctab+0x560>
    1a34:	4509                	li	a0,2
    1a36:	00000097          	auipc	ra,0x0
    1a3a:	87a080e7          	jalr	-1926(ra) # 12b0 <fprintf>
    1a3e:	855a                	mv	a0,s6
    1a40:	00000097          	auipc	ra,0x0
    1a44:	154080e7          	jalr	340(ra) # 1b94 <exit>
    1a48:	a89d                	j	1abe <check_file_handle+0x1aa>
    1a4a:	00160593          	addi	a1,a2,1
    1a4e:	0285f163          	bgeu	a1,s0,1a70 <check_file_handle+0x15c>
    1a52:	00c10733          	add	a4,sp,a2
    1a56:	00b487b3          	add	a5,s1,a1
    1a5a:	00174683          	lbu	a3,1(a4)
    1a5e:	0007c783          	lbu	a5,0(a5)
    1a62:	00f68763          	beq	a3,a5,1a70 <check_file_handle+0x15c>
    1a66:	0585                	addi	a1,a1,1
    1a68:	0705                	addi	a4,a4,1
    1a6a:	feb416e3          	bne	s0,a1,1a56 <check_file_handle+0x142>
    1a6e:	85a2                	mv	a1,s0
    1a70:	08100813          	li	a6,129
    1a74:	040c8793          	addi	a5,s9,64
    1a78:	8752                	mv	a4,s4
    1a7a:	012606b3          	add	a3,a2,s2
    1a7e:	40c58633          	sub	a2,a1,a2
    1a82:	1e8d0593          	addi	a1,s10,488 # 21e8 <crctab+0x5a8>
    1a86:	4509                	li	a0,2
    1a88:	00000097          	auipc	ra,0x0
    1a8c:	828080e7          	jalr	-2008(ra) # 12b0 <fprintf>
    1a90:	855a                	mv	a0,s6
    1a92:	00000097          	auipc	ra,0x0
    1a96:	102080e7          	jalr	258(ra) # 1b94 <exit>
    1a9a:	9922                	add	s2,s2,s0
    1a9c:	f13970e3          	bgeu	s2,s3,199c <check_file_handle+0x88>
    1aa0:	41298433          	sub	s0,s3,s2
    1aa4:	008af363          	bgeu	s5,s0,1aaa <check_file_handle+0x196>
    1aa8:	8456                	mv	s0,s5
    1aaa:	0004061b          	sext.w	a2,s0
    1aae:	858a                	mv	a1,sp
    1ab0:	855e                	mv	a0,s7
    1ab2:	00000097          	auipc	ra,0x0
    1ab6:	10a080e7          	jalr	266(ra) # 1bbc <read>
    1aba:	f68513e3          	bne	a0,s0,1a20 <check_file_handle+0x10c>
    1abe:	012c04b3          	add	s1,s8,s2
    1ac2:	8622                	mv	a2,s0
    1ac4:	85a6                	mv	a1,s1
    1ac6:	850a                	mv	a0,sp
    1ac8:	00000097          	auipc	ra,0x0
    1acc:	bce080e7          	jalr	-1074(ra) # 1696 <memcmp>
    1ad0:	d569                	beqz	a0,1a9a <check_file_handle+0x186>
    1ad2:	03298163          	beq	s3,s2,1af4 <check_file_handle+0x1e0>
    1ad6:	870a                	mv	a4,sp
    1ad8:	4601                	li	a2,0
    1ada:	00c487b3          	add	a5,s1,a2
    1ade:	00074683          	lbu	a3,0(a4)
    1ae2:	0007c783          	lbu	a5,0(a5)
    1ae6:	f6f692e3          	bne	a3,a5,1a4a <check_file_handle+0x136>
    1aea:	0605                	addi	a2,a2,1
    1aec:	0705                	addi	a4,a4,1
    1aee:	fe8666e3          	bltu	a2,s0,1ada <check_file_handle+0x1c6>
    1af2:	bfa1                	j	1a4a <check_file_handle+0x136>
    1af4:	4601                	li	a2,0
    1af6:	4585                	li	a1,1
    1af8:	bfa5                	j	1a70 <check_file_handle+0x15c>

0000000000001afa <check_file>:
    1afa:	7179                	addi	sp,sp,-48
    1afc:	f406                	sd	ra,40(sp)
    1afe:	f022                	sd	s0,32(sp)
    1b00:	ec26                	sd	s1,24(sp)
    1b02:	e84a                	sd	s2,16(sp)
    1b04:	e44e                	sd	s3,8(sp)
    1b06:	84aa                	mv	s1,a0
    1b08:	892e                	mv	s2,a1
    1b0a:	89b2                	mv	s3,a2
    1b0c:	4581                	li	a1,0
    1b0e:	00000097          	auipc	ra,0x0
    1b12:	0a6080e7          	jalr	166(ra) # 1bb4 <open>
    1b16:	842a                	mv	s0,a0
    1b18:	4789                	li	a5,2
    1b1a:	02a7df63          	bge	a5,a0,1b58 <check_file+0x5e>
    1b1e:	86ce                	mv	a3,s3
    1b20:	864a                	mv	a2,s2
    1b22:	85a6                	mv	a1,s1
    1b24:	8522                	mv	a0,s0
    1b26:	00000097          	auipc	ra,0x0
    1b2a:	dee080e7          	jalr	-530(ra) # 1914 <check_file_handle>
    1b2e:	85a6                	mv	a1,s1
    1b30:	00002537          	lui	a0,0x2
    1b34:	31050513          	addi	a0,a0,784 # 2310 <crctab+0x6d0>
    1b38:	fffff097          	auipc	ra,0xfffff
    1b3c:	79a080e7          	jalr	1946(ra) # 12d2 <printf>
    1b40:	8522                	mv	a0,s0
    1b42:	00000097          	auipc	ra,0x0
    1b46:	09a080e7          	jalr	154(ra) # 1bdc <close>
    1b4a:	70a2                	ld	ra,40(sp)
    1b4c:	7402                	ld	s0,32(sp)
    1b4e:	64e2                	ld	s1,24(sp)
    1b50:	6942                	ld	s2,16(sp)
    1b52:	69a2                	ld	s3,8(sp)
    1b54:	6145                	addi	sp,sp,48
    1b56:	8082                	ret
    1b58:	0ae00713          	li	a4,174
    1b5c:	000026b7          	lui	a3,0x2
    1b60:	04068693          	addi	a3,a3,64 # 2040 <crctab+0x400>
    1b64:	8626                	mv	a2,s1
    1b66:	000025b7          	lui	a1,0x2
    1b6a:	2a858593          	addi	a1,a1,680 # 22a8 <crctab+0x668>
    1b6e:	4509                	li	a0,2
    1b70:	fffff097          	auipc	ra,0xfffff
    1b74:	740080e7          	jalr	1856(ra) # 12b0 <fprintf>
    1b78:	650d                	lui	a0,0x3
    1b7a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b7e:	00000097          	auipc	ra,0x0
    1b82:	016080e7          	jalr	22(ra) # 1b94 <exit>
    1b86:	bf61                	j	1b1e <check_file+0x24>

0000000000001b88 <r_sp>:
    1b88:	850a                	mv	a0,sp
    1b8a:	8082                	ret

0000000000001b8c <halt>:
    1b8c:	4885                	li	a7,1
    1b8e:	00000073          	ecall
    1b92:	8082                	ret

0000000000001b94 <exit>:
    1b94:	4889                	li	a7,2
    1b96:	00000073          	ecall
    1b9a:	8082                	ret

0000000000001b9c <exec>:
    1b9c:	488d                	li	a7,3
    1b9e:	00000073          	ecall
    1ba2:	8082                	ret

0000000000001ba4 <wait>:
    1ba4:	4891                	li	a7,4
    1ba6:	00000073          	ecall
    1baa:	8082                	ret

0000000000001bac <remove>:
    1bac:	4895                	li	a7,5
    1bae:	00000073          	ecall
    1bb2:	8082                	ret

0000000000001bb4 <open>:
    1bb4:	4899                	li	a7,6
    1bb6:	00000073          	ecall
    1bba:	8082                	ret

0000000000001bbc <read>:
    1bbc:	489d                	li	a7,7
    1bbe:	00000073          	ecall
    1bc2:	8082                	ret

0000000000001bc4 <write>:
    1bc4:	48a1                	li	a7,8
    1bc6:	00000073          	ecall
    1bca:	8082                	ret

0000000000001bcc <seek>:
    1bcc:	48a5                	li	a7,9
    1bce:	00000073          	ecall
    1bd2:	8082                	ret

0000000000001bd4 <tell>:
    1bd4:	48a9                	li	a7,10
    1bd6:	00000073          	ecall
    1bda:	8082                	ret

0000000000001bdc <close>:
    1bdc:	48ad                	li	a7,11
    1bde:	00000073          	ecall
    1be2:	8082                	ret

0000000000001be4 <fstat>:
    1be4:	48b1                	li	a7,12
    1be6:	00000073          	ecall
    1bea:	8082                	ret

0000000000001bec <mmap>:
    1bec:	48b5                	li	a7,13
    1bee:	00000073          	ecall
    1bf2:	8082                	ret

0000000000001bf4 <munmap>:
    1bf4:	48b9                	li	a7,14
    1bf6:	00000073          	ecall
    1bfa:	8082                	ret

0000000000001bfc <chdir>:
    1bfc:	48bd                	li	a7,15
    1bfe:	00000073          	ecall
    1c02:	8082                	ret

0000000000001c04 <mkdir>:
    1c04:	48c1                	li	a7,16
    1c06:	00000073          	ecall
    1c0a:	8082                	ret
