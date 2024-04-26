
build/user/vm/mmap-exit:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	00002537          	lui	a0,0x2
    100a:	ca050793          	addi	a5,a0,-864 # 1ca0 <mkdir+0x12>
    100e:	e03e                	sd	a5,0(sp)
    1010:	e402                	sd	zero,8(sp)
    1012:	858a                	mv	a1,sp
    1014:	ca050513          	addi	a0,a0,-864
    1018:	00001097          	auipc	ra,0x1
    101c:	c0e080e7          	jalr	-1010(ra) # 1c26 <exec>
    1020:	842a                	mv	s0,a0
    1022:	57fd                	li	a5,-1
    1024:	02f50a63          	beq	a0,a5,1058 <main+0x58>
    1028:	8522                	mv	a0,s0
    102a:	00001097          	auipc	ra,0x1
    102e:	c04080e7          	jalr	-1020(ra) # 1c2e <wait>
    1032:	e929                	bnez	a0,1084 <main+0x84>
    1034:	0ef00613          	li	a2,239
    1038:	000035b7          	lui	a1,0x3
    103c:	00058593          	mv	a1,a1
    1040:	00002537          	lui	a0,0x2
    1044:	d9050513          	addi	a0,a0,-624 # 1d90 <mkdir+0x102>
    1048:	00001097          	auipc	ra,0x1
    104c:	b3c080e7          	jalr	-1220(ra) # 1b84 <check_file>
    1050:	60e2                	ld	ra,24(sp)
    1052:	6442                	ld	s0,16(sp)
    1054:	6105                	addi	sp,sp,32
    1056:	8082                	ret
    1058:	46b1                	li	a3,12
    105a:	00002637          	lui	a2,0x2
    105e:	cb060613          	addi	a2,a2,-848 # 1cb0 <mkdir+0x22>
    1062:	000025b7          	lui	a1,0x2
    1066:	cc858593          	addi	a1,a1,-824 # 1cc8 <mkdir+0x3a>
    106a:	4509                	li	a0,2
    106c:	00000097          	auipc	ra,0x0
    1070:	2ce080e7          	jalr	718(ra) # 133a <fprintf>
    1074:	650d                	lui	a0,0x3
    1076:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    107a:	00001097          	auipc	ra,0x1
    107e:	ba4080e7          	jalr	-1116(ra) # 1c1e <exit>
    1082:	b75d                	j	1028 <main+0x28>
    1084:	46b5                	li	a3,13
    1086:	00002637          	lui	a2,0x2
    108a:	cb060613          	addi	a2,a2,-848 # 1cb0 <mkdir+0x22>
    108e:	000025b7          	lui	a1,0x2
    1092:	d3058593          	addi	a1,a1,-720 # 1d30 <mkdir+0xa2>
    1096:	4509                	li	a0,2
    1098:	00000097          	auipc	ra,0x0
    109c:	2a2080e7          	jalr	674(ra) # 133a <fprintf>
    10a0:	650d                	lui	a0,0x3
    10a2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10a6:	00001097          	auipc	ra,0x1
    10aa:	b78080e7          	jalr	-1160(ra) # 1c1e <exit>
    10ae:	b759                	j	1034 <main+0x34>

00000000000010b0 <putc>:
    10b0:	1101                	addi	sp,sp,-32
    10b2:	ec06                	sd	ra,24(sp)
    10b4:	00b107a3          	sb	a1,15(sp)
    10b8:	4605                	li	a2,1
    10ba:	00f10593          	addi	a1,sp,15
    10be:	00001097          	auipc	ra,0x1
    10c2:	b90080e7          	jalr	-1136(ra) # 1c4e <write>
    10c6:	60e2                	ld	ra,24(sp)
    10c8:	6105                	addi	sp,sp,32
    10ca:	8082                	ret

00000000000010cc <printint>:
    10cc:	7179                	addi	sp,sp,-48
    10ce:	f406                	sd	ra,40(sp)
    10d0:	f022                	sd	s0,32(sp)
    10d2:	ec26                	sd	s1,24(sp)
    10d4:	e84a                	sd	s2,16(sp)
    10d6:	84aa                	mv	s1,a0
    10d8:	c299                	beqz	a3,10de <printint+0x12>
    10da:	0805c363          	bltz	a1,1160 <printint+0x94>
    10de:	2581                	sext.w	a1,a1
    10e0:	4881                	li	a7,0
    10e2:	868a                	mv	a3,sp
    10e4:	4701                	li	a4,0
    10e6:	2601                	sext.w	a2,a2
    10e8:	00002537          	lui	a0,0x2
    10ec:	da850513          	addi	a0,a0,-600 # 1da8 <digits>
    10f0:	883a                	mv	a6,a4
    10f2:	2705                	addiw	a4,a4,1
    10f4:	02c5f7bb          	remuw	a5,a1,a2
    10f8:	1782                	slli	a5,a5,0x20
    10fa:	9381                	srli	a5,a5,0x20
    10fc:	97aa                	add	a5,a5,a0
    10fe:	0007c783          	lbu	a5,0(a5)
    1102:	00f68023          	sb	a5,0(a3)
    1106:	0005879b          	sext.w	a5,a1
    110a:	02c5d5bb          	divuw	a1,a1,a2
    110e:	0685                	addi	a3,a3,1
    1110:	fec7f0e3          	bgeu	a5,a2,10f0 <printint+0x24>
    1114:	00088a63          	beqz	a7,1128 <printint+0x5c>
    1118:	081c                	addi	a5,sp,16
    111a:	973e                	add	a4,a4,a5
    111c:	02d00793          	li	a5,45
    1120:	fef70823          	sb	a5,-16(a4)
    1124:	0028071b          	addiw	a4,a6,2
    1128:	02e05663          	blez	a4,1154 <printint+0x88>
    112c:	00e10433          	add	s0,sp,a4
    1130:	fff10913          	addi	s2,sp,-1
    1134:	993a                	add	s2,s2,a4
    1136:	377d                	addiw	a4,a4,-1
    1138:	1702                	slli	a4,a4,0x20
    113a:	9301                	srli	a4,a4,0x20
    113c:	40e90933          	sub	s2,s2,a4
    1140:	fff44583          	lbu	a1,-1(s0)
    1144:	8526                	mv	a0,s1
    1146:	00000097          	auipc	ra,0x0
    114a:	f6a080e7          	jalr	-150(ra) # 10b0 <putc>
    114e:	147d                	addi	s0,s0,-1
    1150:	ff2418e3          	bne	s0,s2,1140 <printint+0x74>
    1154:	70a2                	ld	ra,40(sp)
    1156:	7402                	ld	s0,32(sp)
    1158:	64e2                	ld	s1,24(sp)
    115a:	6942                	ld	s2,16(sp)
    115c:	6145                	addi	sp,sp,48
    115e:	8082                	ret
    1160:	40b005bb          	negw	a1,a1
    1164:	4885                	li	a7,1
    1166:	bfb5                	j	10e2 <printint+0x16>

0000000000001168 <vprintf>:
    1168:	7159                	addi	sp,sp,-112
    116a:	f486                	sd	ra,104(sp)
    116c:	f0a2                	sd	s0,96(sp)
    116e:	eca6                	sd	s1,88(sp)
    1170:	e8ca                	sd	s2,80(sp)
    1172:	e4ce                	sd	s3,72(sp)
    1174:	e0d2                	sd	s4,64(sp)
    1176:	fc56                	sd	s5,56(sp)
    1178:	f85a                	sd	s6,48(sp)
    117a:	f45e                	sd	s7,40(sp)
    117c:	f062                	sd	s8,32(sp)
    117e:	ec66                	sd	s9,24(sp)
    1180:	e86a                	sd	s10,16(sp)
    1182:	e46e                	sd	s11,8(sp)
    1184:	0005c483          	lbu	s1,0(a1)
    1188:	18048a63          	beqz	s1,131c <vprintf+0x1b4>
    118c:	8a2a                	mv	s4,a0
    118e:	8ab2                	mv	s5,a2
    1190:	00158413          	addi	s0,a1,1
    1194:	4901                	li	s2,0
    1196:	02500993          	li	s3,37
    119a:	06400b93          	li	s7,100
    119e:	06c00c13          	li	s8,108
    11a2:	07800c93          	li	s9,120
    11a6:	07000d13          	li	s10,112
    11aa:	00002db7          	lui	s11,0x2
    11ae:	00002b37          	lui	s6,0x2
    11b2:	da8b0b13          	addi	s6,s6,-600 # 1da8 <digits>
    11b6:	a839                	j	11d4 <vprintf+0x6c>
    11b8:	85a6                	mv	a1,s1
    11ba:	8552                	mv	a0,s4
    11bc:	00000097          	auipc	ra,0x0
    11c0:	ef4080e7          	jalr	-268(ra) # 10b0 <putc>
    11c4:	a019                	j	11ca <vprintf+0x62>
    11c6:	01390f63          	beq	s2,s3,11e4 <vprintf+0x7c>
    11ca:	0405                	addi	s0,s0,1
    11cc:	fff44483          	lbu	s1,-1(s0)
    11d0:	14048663          	beqz	s1,131c <vprintf+0x1b4>
    11d4:	0004879b          	sext.w	a5,s1
    11d8:	fe0917e3          	bnez	s2,11c6 <vprintf+0x5e>
    11dc:	fd379ee3          	bne	a5,s3,11b8 <vprintf+0x50>
    11e0:	893e                	mv	s2,a5
    11e2:	b7e5                	j	11ca <vprintf+0x62>
    11e4:	05778063          	beq	a5,s7,1224 <vprintf+0xbc>
    11e8:	05878c63          	beq	a5,s8,1240 <vprintf+0xd8>
    11ec:	07978863          	beq	a5,s9,125c <vprintf+0xf4>
    11f0:	09a78463          	beq	a5,s10,1278 <vprintf+0x110>
    11f4:	07300713          	li	a4,115
    11f8:	0ce78263          	beq	a5,a4,12bc <vprintf+0x154>
    11fc:	06300713          	li	a4,99
    1200:	0ee78763          	beq	a5,a4,12ee <vprintf+0x186>
    1204:	11378163          	beq	a5,s3,1306 <vprintf+0x19e>
    1208:	85ce                	mv	a1,s3
    120a:	8552                	mv	a0,s4
    120c:	00000097          	auipc	ra,0x0
    1210:	ea4080e7          	jalr	-348(ra) # 10b0 <putc>
    1214:	85a6                	mv	a1,s1
    1216:	8552                	mv	a0,s4
    1218:	00000097          	auipc	ra,0x0
    121c:	e98080e7          	jalr	-360(ra) # 10b0 <putc>
    1220:	4901                	li	s2,0
    1222:	b765                	j	11ca <vprintf+0x62>
    1224:	008a8493          	addi	s1,s5,8
    1228:	4685                	li	a3,1
    122a:	4629                	li	a2,10
    122c:	000aa583          	lw	a1,0(s5)
    1230:	8552                	mv	a0,s4
    1232:	00000097          	auipc	ra,0x0
    1236:	e9a080e7          	jalr	-358(ra) # 10cc <printint>
    123a:	8aa6                	mv	s5,s1
    123c:	4901                	li	s2,0
    123e:	b771                	j	11ca <vprintf+0x62>
    1240:	008a8493          	addi	s1,s5,8
    1244:	4681                	li	a3,0
    1246:	4629                	li	a2,10
    1248:	000aa583          	lw	a1,0(s5)
    124c:	8552                	mv	a0,s4
    124e:	00000097          	auipc	ra,0x0
    1252:	e7e080e7          	jalr	-386(ra) # 10cc <printint>
    1256:	8aa6                	mv	s5,s1
    1258:	4901                	li	s2,0
    125a:	bf85                	j	11ca <vprintf+0x62>
    125c:	008a8493          	addi	s1,s5,8
    1260:	4681                	li	a3,0
    1262:	4641                	li	a2,16
    1264:	000aa583          	lw	a1,0(s5)
    1268:	8552                	mv	a0,s4
    126a:	00000097          	auipc	ra,0x0
    126e:	e62080e7          	jalr	-414(ra) # 10cc <printint>
    1272:	8aa6                	mv	s5,s1
    1274:	4901                	li	s2,0
    1276:	bf91                	j	11ca <vprintf+0x62>
    1278:	008a8913          	addi	s2,s5,8
    127c:	000aba83          	ld	s5,0(s5)
    1280:	03000593          	li	a1,48
    1284:	8552                	mv	a0,s4
    1286:	00000097          	auipc	ra,0x0
    128a:	e2a080e7          	jalr	-470(ra) # 10b0 <putc>
    128e:	85e6                	mv	a1,s9
    1290:	8552                	mv	a0,s4
    1292:	00000097          	auipc	ra,0x0
    1296:	e1e080e7          	jalr	-482(ra) # 10b0 <putc>
    129a:	44c1                	li	s1,16
    129c:	03cad793          	srli	a5,s5,0x3c
    12a0:	97da                	add	a5,a5,s6
    12a2:	0007c583          	lbu	a1,0(a5)
    12a6:	8552                	mv	a0,s4
    12a8:	00000097          	auipc	ra,0x0
    12ac:	e08080e7          	jalr	-504(ra) # 10b0 <putc>
    12b0:	0a92                	slli	s5,s5,0x4
    12b2:	34fd                	addiw	s1,s1,-1
    12b4:	f4e5                	bnez	s1,129c <vprintf+0x134>
    12b6:	8aca                	mv	s5,s2
    12b8:	4901                	li	s2,0
    12ba:	bf01                	j	11ca <vprintf+0x62>
    12bc:	008a8913          	addi	s2,s5,8
    12c0:	000ab483          	ld	s1,0(s5)
    12c4:	c085                	beqz	s1,12e4 <vprintf+0x17c>
    12c6:	0004c583          	lbu	a1,0(s1)
    12ca:	c5b1                	beqz	a1,1316 <vprintf+0x1ae>
    12cc:	8552                	mv	a0,s4
    12ce:	00000097          	auipc	ra,0x0
    12d2:	de2080e7          	jalr	-542(ra) # 10b0 <putc>
    12d6:	0485                	addi	s1,s1,1
    12d8:	0004c583          	lbu	a1,0(s1)
    12dc:	f9e5                	bnez	a1,12cc <vprintf+0x164>
    12de:	8aca                	mv	s5,s2
    12e0:	4901                	li	s2,0
    12e2:	b5e5                	j	11ca <vprintf+0x62>
    12e4:	da0d8493          	addi	s1,s11,-608 # 1da0 <mkdir+0x112>
    12e8:	02800593          	li	a1,40
    12ec:	b7c5                	j	12cc <vprintf+0x164>
    12ee:	008a8493          	addi	s1,s5,8
    12f2:	000ac583          	lbu	a1,0(s5)
    12f6:	8552                	mv	a0,s4
    12f8:	00000097          	auipc	ra,0x0
    12fc:	db8080e7          	jalr	-584(ra) # 10b0 <putc>
    1300:	8aa6                	mv	s5,s1
    1302:	4901                	li	s2,0
    1304:	b5d9                	j	11ca <vprintf+0x62>
    1306:	85ce                	mv	a1,s3
    1308:	8552                	mv	a0,s4
    130a:	00000097          	auipc	ra,0x0
    130e:	da6080e7          	jalr	-602(ra) # 10b0 <putc>
    1312:	4901                	li	s2,0
    1314:	bd5d                	j	11ca <vprintf+0x62>
    1316:	8aca                	mv	s5,s2
    1318:	4901                	li	s2,0
    131a:	bd45                	j	11ca <vprintf+0x62>
    131c:	70a6                	ld	ra,104(sp)
    131e:	7406                	ld	s0,96(sp)
    1320:	64e6                	ld	s1,88(sp)
    1322:	6946                	ld	s2,80(sp)
    1324:	69a6                	ld	s3,72(sp)
    1326:	6a06                	ld	s4,64(sp)
    1328:	7ae2                	ld	s5,56(sp)
    132a:	7b42                	ld	s6,48(sp)
    132c:	7ba2                	ld	s7,40(sp)
    132e:	7c02                	ld	s8,32(sp)
    1330:	6ce2                	ld	s9,24(sp)
    1332:	6d42                	ld	s10,16(sp)
    1334:	6da2                	ld	s11,8(sp)
    1336:	6165                	addi	sp,sp,112
    1338:	8082                	ret

000000000000133a <fprintf>:
    133a:	715d                	addi	sp,sp,-80
    133c:	ec06                	sd	ra,24(sp)
    133e:	f032                	sd	a2,32(sp)
    1340:	f436                	sd	a3,40(sp)
    1342:	f83a                	sd	a4,48(sp)
    1344:	fc3e                	sd	a5,56(sp)
    1346:	e0c2                	sd	a6,64(sp)
    1348:	e4c6                	sd	a7,72(sp)
    134a:	1010                	addi	a2,sp,32
    134c:	e432                	sd	a2,8(sp)
    134e:	00000097          	auipc	ra,0x0
    1352:	e1a080e7          	jalr	-486(ra) # 1168 <vprintf>
    1356:	60e2                	ld	ra,24(sp)
    1358:	6161                	addi	sp,sp,80
    135a:	8082                	ret

000000000000135c <printf>:
    135c:	711d                	addi	sp,sp,-96
    135e:	ec06                	sd	ra,24(sp)
    1360:	f42e                	sd	a1,40(sp)
    1362:	f832                	sd	a2,48(sp)
    1364:	fc36                	sd	a3,56(sp)
    1366:	e0ba                	sd	a4,64(sp)
    1368:	e4be                	sd	a5,72(sp)
    136a:	e8c2                	sd	a6,80(sp)
    136c:	ecc6                	sd	a7,88(sp)
    136e:	1030                	addi	a2,sp,40
    1370:	e432                	sd	a2,8(sp)
    1372:	85aa                	mv	a1,a0
    1374:	4505                	li	a0,1
    1376:	00000097          	auipc	ra,0x0
    137a:	df2080e7          	jalr	-526(ra) # 1168 <vprintf>
    137e:	60e2                	ld	ra,24(sp)
    1380:	6125                	addi	sp,sp,96
    1382:	8082                	ret

0000000000001384 <cksum>:
    1384:	cdb1                	beqz	a1,13e0 <cksum+0x5c>
    1386:	00b50833          	add	a6,a0,a1
    138a:	4781                	li	a5,0
    138c:	00002637          	lui	a2,0x2
    1390:	dc060613          	addi	a2,a2,-576 # 1dc0 <crctab>
    1394:	0505                	addi	a0,a0,1
    1396:	0087969b          	slliw	a3,a5,0x8
    139a:	0187d71b          	srliw	a4,a5,0x18
    139e:	fff54783          	lbu	a5,-1(a0)
    13a2:	8f3d                	xor	a4,a4,a5
    13a4:	1702                	slli	a4,a4,0x20
    13a6:	9301                	srli	a4,a4,0x20
    13a8:	070a                	slli	a4,a4,0x2
    13aa:	9732                	add	a4,a4,a2
    13ac:	431c                	lw	a5,0(a4)
    13ae:	8fb5                	xor	a5,a5,a3
    13b0:	2781                	sext.w	a5,a5
    13b2:	fea811e3          	bne	a6,a0,1394 <cksum+0x10>
    13b6:	00002637          	lui	a2,0x2
    13ba:	dc060613          	addi	a2,a2,-576 # 1dc0 <crctab>
    13be:	0ff5f693          	andi	a3,a1,255
    13c2:	81a1                	srli	a1,a1,0x8
    13c4:	0087951b          	slliw	a0,a5,0x8
    13c8:	0187d71b          	srliw	a4,a5,0x18
    13cc:	8f35                	xor	a4,a4,a3
    13ce:	070a                	slli	a4,a4,0x2
    13d0:	9732                	add	a4,a4,a2
    13d2:	431c                	lw	a5,0(a4)
    13d4:	8fa9                	xor	a5,a5,a0
    13d6:	2781                	sext.w	a5,a5
    13d8:	f1fd                	bnez	a1,13be <cksum+0x3a>
    13da:	fff7c513          	not	a0,a5
    13de:	8082                	ret
    13e0:	4781                	li	a5,0
    13e2:	bfe5                	j	13da <cksum+0x56>

00000000000013e4 <swap_bytes>:
    13e4:	ce19                	beqz	a2,1402 <swap_bytes+0x1e>
    13e6:	87aa                	mv	a5,a0
    13e8:	962a                	add	a2,a2,a0
    13ea:	0007c703          	lbu	a4,0(a5)
    13ee:	0005c683          	lbu	a3,0(a1)
    13f2:	00d78023          	sb	a3,0(a5)
    13f6:	00e58023          	sb	a4,0(a1)
    13fa:	0785                	addi	a5,a5,1
    13fc:	0585                	addi	a1,a1,1
    13fe:	fec796e3          	bne	a5,a2,13ea <swap_bytes+0x6>
    1402:	8082                	ret

0000000000001404 <random_init>:
    1404:	7139                	addi	sp,sp,-64
    1406:	fc06                	sd	ra,56(sp)
    1408:	f822                	sd	s0,48(sp)
    140a:	f426                	sd	s1,40(sp)
    140c:	f04a                	sd	s2,32(sp)
    140e:	ec4e                	sd	s3,24(sp)
    1410:	e852                	sd	s4,16(sp)
    1412:	c62a                	sw	a0,12(sp)
    1414:	000037b7          	lui	a5,0x3
    1418:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    141c:	eca5                	bnez	s1,1494 <random_init+0x90>
    141e:	00003737          	lui	a4,0x3
    1422:	10070913          	addi	s2,a4,256 # 3100 <s>
    1426:	10070713          	addi	a4,a4,256
    142a:	87a6                	mv	a5,s1
    142c:	10000693          	li	a3,256
    1430:	00f70023          	sb	a5,0(a4)
    1434:	2785                	addiw	a5,a5,1
    1436:	0705                	addi	a4,a4,1
    1438:	fed79ce3          	bne	a5,a3,1430 <random_init+0x2c>
    143c:	4401                	li	s0,0
    143e:	000039b7          	lui	s3,0x3
    1442:	10098993          	addi	s3,s3,256 # 3100 <s>
    1446:	10000a13          	li	s4,256
    144a:	0034f793          	andi	a5,s1,3
    144e:	0818                	addi	a4,sp,16
    1450:	97ba                	add	a5,a5,a4
    1452:	ffc7c783          	lbu	a5,-4(a5)
    1456:	00094703          	lbu	a4,0(s2)
    145a:	9fb9                	addw	a5,a5,a4
    145c:	9c3d                	addw	s0,s0,a5
    145e:	0ff47413          	andi	s0,s0,255
    1462:	4605                	li	a2,1
    1464:	008985b3          	add	a1,s3,s0
    1468:	854a                	mv	a0,s2
    146a:	00000097          	auipc	ra,0x0
    146e:	f7a080e7          	jalr	-134(ra) # 13e4 <swap_bytes>
    1472:	2485                	addiw	s1,s1,1
    1474:	0905                	addi	s2,s2,1
    1476:	fd449ae3          	bne	s1,s4,144a <random_init+0x46>
    147a:	000037b7          	lui	a5,0x3
    147e:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1482:	000037b7          	lui	a5,0x3
    1486:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    148a:	000037b7          	lui	a5,0x3
    148e:	4705                	li	a4,1
    1490:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1494:	70e2                	ld	ra,56(sp)
    1496:	7442                	ld	s0,48(sp)
    1498:	74a2                	ld	s1,40(sp)
    149a:	7902                	ld	s2,32(sp)
    149c:	69e2                	ld	s3,24(sp)
    149e:	6a42                	ld	s4,16(sp)
    14a0:	6121                	addi	sp,sp,64
    14a2:	8082                	ret

00000000000014a4 <random_bytes>:
    14a4:	7139                	addi	sp,sp,-64
    14a6:	fc06                	sd	ra,56(sp)
    14a8:	f822                	sd	s0,48(sp)
    14aa:	f426                	sd	s1,40(sp)
    14ac:	f04a                	sd	s2,32(sp)
    14ae:	ec4e                	sd	s3,24(sp)
    14b0:	e852                	sd	s4,16(sp)
    14b2:	e456                	sd	s5,8(sp)
    14b4:	e05a                	sd	s6,0(sp)
    14b6:	892a                	mv	s2,a0
    14b8:	8aae                	mv	s5,a1
    14ba:	000037b7          	lui	a5,0x3
    14be:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    14c2:	c3c1                	beqz	a5,1542 <random_bytes+0x9e>
    14c4:	060a8563          	beqz	s5,152e <random_bytes+0x8a>
    14c8:	9aca                	add	s5,s5,s2
    14ca:	00003a37          	lui	s4,0x3
    14ce:	000034b7          	lui	s1,0x3
    14d2:	10048493          	addi	s1,s1,256 # 3100 <s>
    14d6:	000039b7          	lui	s3,0x3
    14da:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    14de:	2505                	addiw	a0,a0,1
    14e0:	0ff57513          	andi	a0,a0,255
    14e4:	0eaa0aa3          	sb	a0,245(s4)
    14e8:	00a48b33          	add	s6,s1,a0
    14ec:	000b4403          	lbu	s0,0(s6)
    14f0:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    14f4:	9c3d                	addw	s0,s0,a5
    14f6:	0ff47413          	andi	s0,s0,255
    14fa:	0e898a23          	sb	s0,244(s3)
    14fe:	4605                	li	a2,1
    1500:	008485b3          	add	a1,s1,s0
    1504:	855a                	mv	a0,s6
    1506:	00000097          	auipc	ra,0x0
    150a:	ede080e7          	jalr	-290(ra) # 13e4 <swap_bytes>
    150e:	9426                	add	s0,s0,s1
    1510:	000b4783          	lbu	a5,0(s6)
    1514:	00044703          	lbu	a4,0(s0)
    1518:	9fb9                	addw	a5,a5,a4
    151a:	0ff7f793          	andi	a5,a5,255
    151e:	97a6                	add	a5,a5,s1
    1520:	0007c783          	lbu	a5,0(a5)
    1524:	00f90023          	sb	a5,0(s2)
    1528:	0905                	addi	s2,s2,1
    152a:	fb2a98e3          	bne	s5,s2,14da <random_bytes+0x36>
    152e:	70e2                	ld	ra,56(sp)
    1530:	7442                	ld	s0,48(sp)
    1532:	74a2                	ld	s1,40(sp)
    1534:	7902                	ld	s2,32(sp)
    1536:	69e2                	ld	s3,24(sp)
    1538:	6a42                	ld	s4,16(sp)
    153a:	6aa2                	ld	s5,8(sp)
    153c:	6b02                	ld	s6,0(sp)
    153e:	6121                	addi	sp,sp,64
    1540:	8082                	ret
    1542:	4501                	li	a0,0
    1544:	00000097          	auipc	ra,0x0
    1548:	ec0080e7          	jalr	-320(ra) # 1404 <random_init>
    154c:	bfa5                	j	14c4 <random_bytes+0x20>

000000000000154e <random_ulong>:
    154e:	1101                	addi	sp,sp,-32
    1550:	ec06                	sd	ra,24(sp)
    1552:	45a1                	li	a1,8
    1554:	0028                	addi	a0,sp,8
    1556:	00000097          	auipc	ra,0x0
    155a:	f4e080e7          	jalr	-178(ra) # 14a4 <random_bytes>
    155e:	6522                	ld	a0,8(sp)
    1560:	60e2                	ld	ra,24(sp)
    1562:	6105                	addi	sp,sp,32
    1564:	8082                	ret

0000000000001566 <shuffle>:
    1566:	c9b9                	beqz	a1,15bc <shuffle+0x56>
    1568:	7179                	addi	sp,sp,-48
    156a:	f406                	sd	ra,40(sp)
    156c:	f022                	sd	s0,32(sp)
    156e:	ec26                	sd	s1,24(sp)
    1570:	e84a                	sd	s2,16(sp)
    1572:	e44e                	sd	s3,8(sp)
    1574:	e052                	sd	s4,0(sp)
    1576:	8a2a                	mv	s4,a0
    1578:	89ae                	mv	s3,a1
    157a:	84b2                	mv	s1,a2
    157c:	892a                	mv	s2,a0
    157e:	4401                	li	s0,0
    1580:	00000097          	auipc	ra,0x0
    1584:	fce080e7          	jalr	-50(ra) # 154e <random_ulong>
    1588:	408985b3          	sub	a1,s3,s0
    158c:	02b575b3          	remu	a1,a0,a1
    1590:	95a2                	add	a1,a1,s0
    1592:	029585b3          	mul	a1,a1,s1
    1596:	8626                	mv	a2,s1
    1598:	95d2                	add	a1,a1,s4
    159a:	854a                	mv	a0,s2
    159c:	00000097          	auipc	ra,0x0
    15a0:	e48080e7          	jalr	-440(ra) # 13e4 <swap_bytes>
    15a4:	0405                	addi	s0,s0,1
    15a6:	9926                	add	s2,s2,s1
    15a8:	fc899ce3          	bne	s3,s0,1580 <shuffle+0x1a>
    15ac:	70a2                	ld	ra,40(sp)
    15ae:	7402                	ld	s0,32(sp)
    15b0:	64e2                	ld	s1,24(sp)
    15b2:	6942                	ld	s2,16(sp)
    15b4:	69a2                	ld	s3,8(sp)
    15b6:	6a02                	ld	s4,0(sp)
    15b8:	6145                	addi	sp,sp,48
    15ba:	8082                	ret
    15bc:	8082                	ret

00000000000015be <arc4_init>:
    15be:	100500a3          	sb	zero,257(a0)
    15c2:	10050023          	sb	zero,256(a0)
    15c6:	4781                	li	a5,0
    15c8:	10000693          	li	a3,256
    15cc:	00f50733          	add	a4,a0,a5
    15d0:	00f70023          	sb	a5,0(a4)
    15d4:	0785                	addi	a5,a5,1
    15d6:	fed79be3          	bne	a5,a3,15cc <arc4_init+0xe>
    15da:	86aa                	mv	a3,a0
    15dc:	10050e13          	addi	t3,a0,256
    15e0:	4701                	li	a4,0
    15e2:	4781                	li	a5,0
    15e4:	0006c883          	lbu	a7,0(a3)
    15e8:	00f58833          	add	a6,a1,a5
    15ec:	00084803          	lbu	a6,0(a6)
    15f0:	00e8873b          	addw	a4,a7,a4
    15f4:	00e8073b          	addw	a4,a6,a4
    15f8:	0ff77713          	andi	a4,a4,255
    15fc:	00e50833          	add	a6,a0,a4
    1600:	00084303          	lbu	t1,0(a6)
    1604:	00668023          	sb	t1,0(a3)
    1608:	01180023          	sb	a7,0(a6)
    160c:	0785                	addi	a5,a5,1
    160e:	00c7b833          	sltu	a6,a5,a2
    1612:	41000833          	neg	a6,a6
    1616:	0107f7b3          	and	a5,a5,a6
    161a:	0685                	addi	a3,a3,1
    161c:	fdc694e3          	bne	a3,t3,15e4 <arc4_init+0x26>
    1620:	8082                	ret

0000000000001622 <arc4_crypt>:
    1622:	10054e03          	lbu	t3,256(a0)
    1626:	10154803          	lbu	a6,257(a0)
    162a:	fff60e93          	addi	t4,a2,-1
    162e:	c225                	beqz	a2,168e <arc4_crypt+0x6c>
    1630:	00c588b3          	add	a7,a1,a2
    1634:	86ae                	mv	a3,a1
    1636:	001e031b          	addiw	t1,t3,1
    163a:	40b3033b          	subw	t1,t1,a1
    163e:	00d3073b          	addw	a4,t1,a3
    1642:	0ff77713          	andi	a4,a4,255
    1646:	972a                	add	a4,a4,a0
    1648:	00074603          	lbu	a2,0(a4)
    164c:	0106083b          	addw	a6,a2,a6
    1650:	0ff87813          	andi	a6,a6,255
    1654:	010507b3          	add	a5,a0,a6
    1658:	0007c583          	lbu	a1,0(a5)
    165c:	00b70023          	sb	a1,0(a4)
    1660:	00c78023          	sb	a2,0(a5)
    1664:	0685                	addi	a3,a3,1
    1666:	00074783          	lbu	a5,0(a4)
    166a:	9fb1                	addw	a5,a5,a2
    166c:	0ff7f793          	andi	a5,a5,255
    1670:	97aa                	add	a5,a5,a0
    1672:	0007c783          	lbu	a5,0(a5)
    1676:	fff6c703          	lbu	a4,-1(a3)
    167a:	8fb9                	xor	a5,a5,a4
    167c:	fef68fa3          	sb	a5,-1(a3)
    1680:	fb169fe3          	bne	a3,a7,163e <arc4_crypt+0x1c>
    1684:	2e85                	addiw	t4,t4,1
    1686:	01ce8e3b          	addw	t3,t4,t3
    168a:	0ffe7e13          	andi	t3,t3,255
    168e:	11c50023          	sb	t3,256(a0)
    1692:	110500a3          	sb	a6,257(a0)
    1696:	8082                	ret

0000000000001698 <_main>:
    1698:	1141                	addi	sp,sp,-16
    169a:	e406                	sd	ra,8(sp)
    169c:	00000097          	auipc	ra,0x0
    16a0:	964080e7          	jalr	-1692(ra) # 1000 <main>
    16a4:	4501                	li	a0,0
    16a6:	00000097          	auipc	ra,0x0
    16aa:	578080e7          	jalr	1400(ra) # 1c1e <exit>
    16ae:	60a2                	ld	ra,8(sp)
    16b0:	0141                	addi	sp,sp,16
    16b2:	8082                	ret

00000000000016b4 <strcmp>:
    16b4:	00054783          	lbu	a5,0(a0)
    16b8:	cb91                	beqz	a5,16cc <strcmp+0x18>
    16ba:	0005c703          	lbu	a4,0(a1)
    16be:	00f71763          	bne	a4,a5,16cc <strcmp+0x18>
    16c2:	0505                	addi	a0,a0,1
    16c4:	0585                	addi	a1,a1,1
    16c6:	00054783          	lbu	a5,0(a0)
    16ca:	fbe5                	bnez	a5,16ba <strcmp+0x6>
    16cc:	0005c503          	lbu	a0,0(a1)
    16d0:	40a7853b          	subw	a0,a5,a0
    16d4:	8082                	ret

00000000000016d6 <strcpy>:
    16d6:	87aa                	mv	a5,a0
    16d8:	0585                	addi	a1,a1,1
    16da:	0785                	addi	a5,a5,1
    16dc:	fff5c703          	lbu	a4,-1(a1)
    16e0:	fee78fa3          	sb	a4,-1(a5)
    16e4:	fb75                	bnez	a4,16d8 <strcpy+0x2>
    16e6:	8082                	ret

00000000000016e8 <strlen>:
    16e8:	00054783          	lbu	a5,0(a0)
    16ec:	cf81                	beqz	a5,1704 <strlen+0x1c>
    16ee:	0505                	addi	a0,a0,1
    16f0:	87aa                	mv	a5,a0
    16f2:	4685                	li	a3,1
    16f4:	9e89                	subw	a3,a3,a0
    16f6:	00f6853b          	addw	a0,a3,a5
    16fa:	0785                	addi	a5,a5,1
    16fc:	fff7c703          	lbu	a4,-1(a5)
    1700:	fb7d                	bnez	a4,16f6 <strlen+0xe>
    1702:	8082                	ret
    1704:	4501                	li	a0,0
    1706:	8082                	ret

0000000000001708 <memset>:
    1708:	ca19                	beqz	a2,171e <memset+0x16>
    170a:	87aa                	mv	a5,a0
    170c:	1602                	slli	a2,a2,0x20
    170e:	9201                	srli	a2,a2,0x20
    1710:	00a60733          	add	a4,a2,a0
    1714:	00b78023          	sb	a1,0(a5)
    1718:	0785                	addi	a5,a5,1
    171a:	fee79de3          	bne	a5,a4,1714 <memset+0xc>
    171e:	8082                	ret

0000000000001720 <memcmp>:
    1720:	1101                	addi	sp,sp,-32
    1722:	ec06                	sd	ra,24(sp)
    1724:	e822                	sd	s0,16(sp)
    1726:	e426                	sd	s1,8(sp)
    1728:	e04a                	sd	s2,0(sp)
    172a:	892a                	mv	s2,a0
    172c:	842e                	mv	s0,a1
    172e:	84b2                	mv	s1,a2
    1730:	c915                	beqz	a0,1764 <memcmp+0x44>
    1732:	c5ad                	beqz	a1,179c <memcmp+0x7c>
    1734:	fff60713          	addi	a4,a2,-1
    1738:	c645                	beqz	a2,17e0 <memcmp+0xc0>
    173a:	87ca                	mv	a5,s2
    173c:	00190613          	addi	a2,s2,1
    1740:	963a                	add	a2,a2,a4
    1742:	0007c683          	lbu	a3,0(a5)
    1746:	00044703          	lbu	a4,0(s0)
    174a:	08e69463          	bne	a3,a4,17d2 <memcmp+0xb2>
    174e:	0785                	addi	a5,a5,1
    1750:	0405                	addi	s0,s0,1
    1752:	fec798e3          	bne	a5,a2,1742 <memcmp+0x22>
    1756:	4501                	li	a0,0
    1758:	60e2                	ld	ra,24(sp)
    175a:	6442                	ld	s0,16(sp)
    175c:	64a2                	ld	s1,8(sp)
    175e:	6902                	ld	s2,0(sp)
    1760:	6105                	addi	sp,sp,32
    1762:	8082                	ret
    1764:	4501                	li	a0,0
    1766:	da6d                	beqz	a2,1758 <memcmp+0x38>
    1768:	03200693          	li	a3,50
    176c:	00002637          	lui	a2,0x2
    1770:	1c060613          	addi	a2,a2,448 # 21c0 <crctab+0x400>
    1774:	000025b7          	lui	a1,0x2
    1778:	1d058593          	addi	a1,a1,464 # 21d0 <crctab+0x410>
    177c:	4509                	li	a0,2
    177e:	00000097          	auipc	ra,0x0
    1782:	bbc080e7          	jalr	-1092(ra) # 133a <fprintf>
    1786:	650d                	lui	a0,0x3
    1788:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    178c:	00000097          	auipc	ra,0x0
    1790:	492080e7          	jalr	1170(ra) # 1c1e <exit>
    1794:	fff48713          	addi	a4,s1,-1
    1798:	f04d                	bnez	s0,173a <memcmp+0x1a>
    179a:	a011                	j	179e <memcmp+0x7e>
    179c:	c221                	beqz	a2,17dc <memcmp+0xbc>
    179e:	03300693          	li	a3,51
    17a2:	00002637          	lui	a2,0x2
    17a6:	1c060613          	addi	a2,a2,448 # 21c0 <crctab+0x400>
    17aa:	000025b7          	lui	a1,0x2
    17ae:	21858593          	addi	a1,a1,536 # 2218 <crctab+0x458>
    17b2:	4509                	li	a0,2
    17b4:	00000097          	auipc	ra,0x0
    17b8:	b86080e7          	jalr	-1146(ra) # 133a <fprintf>
    17bc:	650d                	lui	a0,0x3
    17be:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17c2:	00000097          	auipc	ra,0x0
    17c6:	45c080e7          	jalr	1116(ra) # 1c1e <exit>
    17ca:	fff48713          	addi	a4,s1,-1
    17ce:	4401                	li	s0,0
    17d0:	b7ad                	j	173a <memcmp+0x1a>
    17d2:	4505                	li	a0,1
    17d4:	f8d762e3          	bltu	a4,a3,1758 <memcmp+0x38>
    17d8:	557d                	li	a0,-1
    17da:	bfbd                	j	1758 <memcmp+0x38>
    17dc:	4501                	li	a0,0
    17de:	bfad                	j	1758 <memcmp+0x38>
    17e0:	4501                	li	a0,0
    17e2:	bf9d                	j	1758 <memcmp+0x38>

00000000000017e4 <memcpy>:
    17e4:	1101                	addi	sp,sp,-32
    17e6:	ec06                	sd	ra,24(sp)
    17e8:	e822                	sd	s0,16(sp)
    17ea:	e426                	sd	s1,8(sp)
    17ec:	e04a                	sd	s2,0(sp)
    17ee:	84aa                	mv	s1,a0
    17f0:	842e                	mv	s0,a1
    17f2:	8932                	mv	s2,a2
    17f4:	c51d                	beqz	a0,1822 <memcpy+0x3e>
    17f6:	c1ad                	beqz	a1,1858 <memcpy+0x74>
    17f8:	fff60693          	addi	a3,a2,-1
    17fc:	ce01                	beqz	a2,1814 <memcpy+0x30>
    17fe:	0685                	addi	a3,a3,1
    1800:	96a6                	add	a3,a3,s1
    1802:	87a6                	mv	a5,s1
    1804:	0405                	addi	s0,s0,1
    1806:	0785                	addi	a5,a5,1
    1808:	fff44703          	lbu	a4,-1(s0)
    180c:	fee78fa3          	sb	a4,-1(a5)
    1810:	fed79ae3          	bne	a5,a3,1804 <memcpy+0x20>
    1814:	8526                	mv	a0,s1
    1816:	60e2                	ld	ra,24(sp)
    1818:	6442                	ld	s0,16(sp)
    181a:	64a2                	ld	s1,8(sp)
    181c:	6902                	ld	s2,0(sp)
    181e:	6105                	addi	sp,sp,32
    1820:	8082                	ret
    1822:	da6d                	beqz	a2,1814 <memcpy+0x30>
    1824:	04000693          	li	a3,64
    1828:	00002637          	lui	a2,0x2
    182c:	1c060613          	addi	a2,a2,448 # 21c0 <crctab+0x400>
    1830:	000025b7          	lui	a1,0x2
    1834:	26058593          	addi	a1,a1,608 # 2260 <crctab+0x4a0>
    1838:	4509                	li	a0,2
    183a:	00000097          	auipc	ra,0x0
    183e:	b00080e7          	jalr	-1280(ra) # 133a <fprintf>
    1842:	650d                	lui	a0,0x3
    1844:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1848:	00000097          	auipc	ra,0x0
    184c:	3d6080e7          	jalr	982(ra) # 1c1e <exit>
    1850:	fff90693          	addi	a3,s2,-1
    1854:	f44d                	bnez	s0,17fe <memcpy+0x1a>
    1856:	a011                	j	185a <memcpy+0x76>
    1858:	de55                	beqz	a2,1814 <memcpy+0x30>
    185a:	04100693          	li	a3,65
    185e:	00002637          	lui	a2,0x2
    1862:	1c060613          	addi	a2,a2,448 # 21c0 <crctab+0x400>
    1866:	000025b7          	lui	a1,0x2
    186a:	2a858593          	addi	a1,a1,680 # 22a8 <crctab+0x4e8>
    186e:	4509                	li	a0,2
    1870:	00000097          	auipc	ra,0x0
    1874:	aca080e7          	jalr	-1334(ra) # 133a <fprintf>
    1878:	650d                	lui	a0,0x3
    187a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    187e:	00000097          	auipc	ra,0x0
    1882:	3a0080e7          	jalr	928(ra) # 1c1e <exit>
    1886:	fff90693          	addi	a3,s2,-1
    188a:	4401                	li	s0,0
    188c:	bf8d                	j	17fe <memcpy+0x1a>

000000000000188e <itoa>:
    188e:	1101                	addi	sp,sp,-32
    1890:	ec06                	sd	ra,24(sp)
    1892:	e822                	sd	s0,16(sp)
    1894:	e426                	sd	s1,8(sp)
    1896:	842a                	mv	s0,a0
    1898:	41f5d71b          	sraiw	a4,a1,0x1f
    189c:	00e5c7b3          	xor	a5,a1,a4
    18a0:	9f99                	subw	a5,a5,a4
    18a2:	84aa                	mv	s1,a0
    18a4:	862a                	mv	a2,a0
    18a6:	4681                	li	a3,0
    18a8:	4529                	li	a0,10
    18aa:	4825                	li	a6,9
    18ac:	88b6                	mv	a7,a3
    18ae:	2685                	addiw	a3,a3,1
    18b0:	02a7e73b          	remw	a4,a5,a0
    18b4:	0307071b          	addiw	a4,a4,48
    18b8:	00e60023          	sb	a4,0(a2)
    18bc:	873e                	mv	a4,a5
    18be:	02a7c7bb          	divw	a5,a5,a0
    18c2:	0605                	addi	a2,a2,1
    18c4:	fee844e3          	blt	a6,a4,18ac <itoa+0x1e>
    18c8:	0405c863          	bltz	a1,1918 <itoa+0x8a>
    18cc:	96a2                	add	a3,a3,s0
    18ce:	00068023          	sb	zero,0(a3)
    18d2:	8522                	mv	a0,s0
    18d4:	00000097          	auipc	ra,0x0
    18d8:	e14080e7          	jalr	-492(ra) # 16e8 <strlen>
    18dc:	fff5071b          	addiw	a4,a0,-1
    18e0:	02e05763          	blez	a4,190e <itoa+0x80>
    18e4:	9722                	add	a4,a4,s0
    18e6:	4681                	li	a3,0
    18e8:	0004c783          	lbu	a5,0(s1)
    18ec:	00074603          	lbu	a2,0(a4)
    18f0:	00c48023          	sb	a2,0(s1)
    18f4:	00f70023          	sb	a5,0(a4)
    18f8:	0016879b          	addiw	a5,a3,1
    18fc:	0007869b          	sext.w	a3,a5
    1900:	0485                	addi	s1,s1,1
    1902:	177d                	addi	a4,a4,-1
    1904:	fff7c793          	not	a5,a5
    1908:	9fa9                	addw	a5,a5,a0
    190a:	fcf6cfe3          	blt	a3,a5,18e8 <itoa+0x5a>
    190e:	60e2                	ld	ra,24(sp)
    1910:	6442                	ld	s0,16(sp)
    1912:	64a2                	ld	s1,8(sp)
    1914:	6105                	addi	sp,sp,32
    1916:	8082                	ret
    1918:	96a2                	add	a3,a3,s0
    191a:	02d00793          	li	a5,45
    191e:	00f68023          	sb	a5,0(a3)
    1922:	0028869b          	addiw	a3,a7,2
    1926:	b75d                	j	18cc <itoa+0x3e>

0000000000001928 <atoi>:
    1928:	00054783          	lbu	a5,0(a0)
    192c:	02000713          	li	a4,32
    1930:	00e79763          	bne	a5,a4,193e <atoi+0x16>
    1934:	0505                	addi	a0,a0,1
    1936:	00054783          	lbu	a5,0(a0)
    193a:	fee78de3          	beq	a5,a4,1934 <atoi+0xc>
    193e:	02b00713          	li	a4,43
    1942:	04e78663          	beq	a5,a4,198e <atoi+0x66>
    1946:	02d00713          	li	a4,45
    194a:	4805                	li	a6,1
    194c:	04e78463          	beq	a5,a4,1994 <atoi+0x6c>
    1950:	00054683          	lbu	a3,0(a0)
    1954:	fd06879b          	addiw	a5,a3,-48
    1958:	0ff7f793          	andi	a5,a5,255
    195c:	4725                	li	a4,9
    195e:	02f76e63          	bltu	a4,a5,199a <atoi+0x72>
    1962:	4601                	li	a2,0
    1964:	45a5                	li	a1,9
    1966:	0505                	addi	a0,a0,1
    1968:	0026179b          	slliw	a5,a2,0x2
    196c:	9fb1                	addw	a5,a5,a2
    196e:	0017979b          	slliw	a5,a5,0x1
    1972:	9fb5                	addw	a5,a5,a3
    1974:	fd07861b          	addiw	a2,a5,-48
    1978:	00054683          	lbu	a3,0(a0)
    197c:	fd06871b          	addiw	a4,a3,-48
    1980:	0ff77713          	andi	a4,a4,255
    1984:	fee5f1e3          	bgeu	a1,a4,1966 <atoi+0x3e>
    1988:	02c8053b          	mulw	a0,a6,a2
    198c:	8082                	ret
    198e:	0505                	addi	a0,a0,1
    1990:	4805                	li	a6,1
    1992:	bf7d                	j	1950 <atoi+0x28>
    1994:	0505                	addi	a0,a0,1
    1996:	587d                	li	a6,-1
    1998:	bf65                	j	1950 <atoi+0x28>
    199a:	4601                	li	a2,0
    199c:	b7f5                	j	1988 <atoi+0x60>

000000000000199e <check_file_handle>:
    199e:	d8010113          	addi	sp,sp,-640
    19a2:	26113c23          	sd	ra,632(sp)
    19a6:	26813823          	sd	s0,624(sp)
    19aa:	26913423          	sd	s1,616(sp)
    19ae:	27213023          	sd	s2,608(sp)
    19b2:	25313c23          	sd	s3,600(sp)
    19b6:	25413823          	sd	s4,592(sp)
    19ba:	25513423          	sd	s5,584(sp)
    19be:	25613023          	sd	s6,576(sp)
    19c2:	23713c23          	sd	s7,568(sp)
    19c6:	23813823          	sd	s8,560(sp)
    19ca:	23913423          	sd	s9,552(sp)
    19ce:	23a13023          	sd	s10,544(sp)
    19d2:	21b13c23          	sd	s11,536(sp)
    19d6:	8baa                	mv	s7,a0
    19d8:	8a2e                	mv	s4,a1
    19da:	8c32                	mv	s8,a2
    19dc:	89b6                	mv	s3,a3
    19de:	040c                	addi	a1,sp,512
    19e0:	00000097          	auipc	ra,0x0
    19e4:	28e080e7          	jalr	654(ra) # 1c6e <fstat>
    19e8:	20813603          	ld	a2,520(sp)
    19ec:	03361163          	bne	a2,s3,1a0e <check_file_handle+0x70>
    19f0:	06098763          	beqz	s3,1a5e <check_file_handle+0xc0>
    19f4:	4901                	li	s2,0
    19f6:	20000a93          	li	s5,512
    19fa:	00002cb7          	lui	s9,0x2
    19fe:	00002db7          	lui	s11,0x2
    1a02:	6b0d                	lui	s6,0x3
    1a04:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a08:	00002d37          	lui	s10,0x2
    1a0c:	aa39                	j	1b2a <check_file_handle+0x18c>
    1a0e:	86ce                	mv	a3,s3
    1a10:	85d2                	mv	a1,s4
    1a12:	00002537          	lui	a0,0x2
    1a16:	2f050513          	addi	a0,a0,752 # 22f0 <crctab+0x530>
    1a1a:	00000097          	auipc	ra,0x0
    1a1e:	942080e7          	jalr	-1726(ra) # 135c <printf>
    1a22:	fc0999e3          	bnez	s3,19f4 <check_file_handle+0x56>
    1a26:	20813683          	ld	a3,520(sp)
    1a2a:	03368a63          	beq	a3,s3,1a5e <check_file_handle+0xc0>
    1a2e:	0a600813          	li	a6,166
    1a32:	000027b7          	lui	a5,0x2
    1a36:	1c078793          	addi	a5,a5,448 # 21c0 <crctab+0x400>
    1a3a:	874e                	mv	a4,s3
    1a3c:	8652                	mv	a2,s4
    1a3e:	000025b7          	lui	a1,0x2
    1a42:	3c058593          	addi	a1,a1,960 # 23c0 <crctab+0x600>
    1a46:	4509                	li	a0,2
    1a48:	00000097          	auipc	ra,0x0
    1a4c:	8f2080e7          	jalr	-1806(ra) # 133a <fprintf>
    1a50:	650d                	lui	a0,0x3
    1a52:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a56:	00000097          	auipc	ra,0x0
    1a5a:	1c8080e7          	jalr	456(ra) # 1c1e <exit>
    1a5e:	85d2                	mv	a1,s4
    1a60:	00002537          	lui	a0,0x2
    1a64:	40850513          	addi	a0,a0,1032 # 2408 <crctab+0x648>
    1a68:	00000097          	auipc	ra,0x0
    1a6c:	8f4080e7          	jalr	-1804(ra) # 135c <printf>
    1a70:	27813083          	ld	ra,632(sp)
    1a74:	27013403          	ld	s0,624(sp)
    1a78:	26813483          	ld	s1,616(sp)
    1a7c:	26013903          	ld	s2,608(sp)
    1a80:	25813983          	ld	s3,600(sp)
    1a84:	25013a03          	ld	s4,592(sp)
    1a88:	24813a83          	ld	s5,584(sp)
    1a8c:	24013b03          	ld	s6,576(sp)
    1a90:	23813b83          	ld	s7,568(sp)
    1a94:	23013c03          	ld	s8,560(sp)
    1a98:	22813c83          	ld	s9,552(sp)
    1a9c:	22013d03          	ld	s10,544(sp)
    1aa0:	21813d83          	ld	s11,536(sp)
    1aa4:	28010113          	addi	sp,sp,640
    1aa8:	8082                	ret
    1aaa:	09d00893          	li	a7,157
    1aae:	1c0c8813          	addi	a6,s9,448 # 21c0 <crctab+0x400>
    1ab2:	87aa                	mv	a5,a0
    1ab4:	8752                	mv	a4,s4
    1ab6:	86ca                	mv	a3,s2
    1ab8:	8622                	mv	a2,s0
    1aba:	320d8593          	addi	a1,s11,800 # 2320 <crctab+0x560>
    1abe:	4509                	li	a0,2
    1ac0:	00000097          	auipc	ra,0x0
    1ac4:	87a080e7          	jalr	-1926(ra) # 133a <fprintf>
    1ac8:	855a                	mv	a0,s6
    1aca:	00000097          	auipc	ra,0x0
    1ace:	154080e7          	jalr	340(ra) # 1c1e <exit>
    1ad2:	a89d                	j	1b48 <check_file_handle+0x1aa>
    1ad4:	00160593          	addi	a1,a2,1
    1ad8:	0285f163          	bgeu	a1,s0,1afa <check_file_handle+0x15c>
    1adc:	00c10733          	add	a4,sp,a2
    1ae0:	00b487b3          	add	a5,s1,a1
    1ae4:	00174683          	lbu	a3,1(a4)
    1ae8:	0007c783          	lbu	a5,0(a5)
    1aec:	00f68763          	beq	a3,a5,1afa <check_file_handle+0x15c>
    1af0:	0585                	addi	a1,a1,1
    1af2:	0705                	addi	a4,a4,1
    1af4:	feb416e3          	bne	s0,a1,1ae0 <check_file_handle+0x142>
    1af8:	85a2                	mv	a1,s0
    1afa:	08100813          	li	a6,129
    1afe:	1c0c8793          	addi	a5,s9,448
    1b02:	8752                	mv	a4,s4
    1b04:	012606b3          	add	a3,a2,s2
    1b08:	40c58633          	sub	a2,a1,a2
    1b0c:	368d0593          	addi	a1,s10,872 # 2368 <crctab+0x5a8>
    1b10:	4509                	li	a0,2
    1b12:	00000097          	auipc	ra,0x0
    1b16:	828080e7          	jalr	-2008(ra) # 133a <fprintf>
    1b1a:	855a                	mv	a0,s6
    1b1c:	00000097          	auipc	ra,0x0
    1b20:	102080e7          	jalr	258(ra) # 1c1e <exit>
    1b24:	9922                	add	s2,s2,s0
    1b26:	f13970e3          	bgeu	s2,s3,1a26 <check_file_handle+0x88>
    1b2a:	41298433          	sub	s0,s3,s2
    1b2e:	008af363          	bgeu	s5,s0,1b34 <check_file_handle+0x196>
    1b32:	8456                	mv	s0,s5
    1b34:	0004061b          	sext.w	a2,s0
    1b38:	858a                	mv	a1,sp
    1b3a:	855e                	mv	a0,s7
    1b3c:	00000097          	auipc	ra,0x0
    1b40:	10a080e7          	jalr	266(ra) # 1c46 <read>
    1b44:	f68513e3          	bne	a0,s0,1aaa <check_file_handle+0x10c>
    1b48:	012c04b3          	add	s1,s8,s2
    1b4c:	8622                	mv	a2,s0
    1b4e:	85a6                	mv	a1,s1
    1b50:	850a                	mv	a0,sp
    1b52:	00000097          	auipc	ra,0x0
    1b56:	bce080e7          	jalr	-1074(ra) # 1720 <memcmp>
    1b5a:	d569                	beqz	a0,1b24 <check_file_handle+0x186>
    1b5c:	03298163          	beq	s3,s2,1b7e <check_file_handle+0x1e0>
    1b60:	870a                	mv	a4,sp
    1b62:	4601                	li	a2,0
    1b64:	00c487b3          	add	a5,s1,a2
    1b68:	00074683          	lbu	a3,0(a4)
    1b6c:	0007c783          	lbu	a5,0(a5)
    1b70:	f6f692e3          	bne	a3,a5,1ad4 <check_file_handle+0x136>
    1b74:	0605                	addi	a2,a2,1
    1b76:	0705                	addi	a4,a4,1
    1b78:	fe8666e3          	bltu	a2,s0,1b64 <check_file_handle+0x1c6>
    1b7c:	bfa1                	j	1ad4 <check_file_handle+0x136>
    1b7e:	4601                	li	a2,0
    1b80:	4585                	li	a1,1
    1b82:	bfa5                	j	1afa <check_file_handle+0x15c>

0000000000001b84 <check_file>:
    1b84:	7179                	addi	sp,sp,-48
    1b86:	f406                	sd	ra,40(sp)
    1b88:	f022                	sd	s0,32(sp)
    1b8a:	ec26                	sd	s1,24(sp)
    1b8c:	e84a                	sd	s2,16(sp)
    1b8e:	e44e                	sd	s3,8(sp)
    1b90:	84aa                	mv	s1,a0
    1b92:	892e                	mv	s2,a1
    1b94:	89b2                	mv	s3,a2
    1b96:	4581                	li	a1,0
    1b98:	00000097          	auipc	ra,0x0
    1b9c:	0a6080e7          	jalr	166(ra) # 1c3e <open>
    1ba0:	842a                	mv	s0,a0
    1ba2:	4789                	li	a5,2
    1ba4:	02a7df63          	bge	a5,a0,1be2 <check_file+0x5e>
    1ba8:	86ce                	mv	a3,s3
    1baa:	864a                	mv	a2,s2
    1bac:	85a6                	mv	a1,s1
    1bae:	8522                	mv	a0,s0
    1bb0:	00000097          	auipc	ra,0x0
    1bb4:	dee080e7          	jalr	-530(ra) # 199e <check_file_handle>
    1bb8:	85a6                	mv	a1,s1
    1bba:	00002537          	lui	a0,0x2
    1bbe:	49050513          	addi	a0,a0,1168 # 2490 <crctab+0x6d0>
    1bc2:	fffff097          	auipc	ra,0xfffff
    1bc6:	79a080e7          	jalr	1946(ra) # 135c <printf>
    1bca:	8522                	mv	a0,s0
    1bcc:	00000097          	auipc	ra,0x0
    1bd0:	09a080e7          	jalr	154(ra) # 1c66 <close>
    1bd4:	70a2                	ld	ra,40(sp)
    1bd6:	7402                	ld	s0,32(sp)
    1bd8:	64e2                	ld	s1,24(sp)
    1bda:	6942                	ld	s2,16(sp)
    1bdc:	69a2                	ld	s3,8(sp)
    1bde:	6145                	addi	sp,sp,48
    1be0:	8082                	ret
    1be2:	0ae00713          	li	a4,174
    1be6:	000026b7          	lui	a3,0x2
    1bea:	1c068693          	addi	a3,a3,448 # 21c0 <crctab+0x400>
    1bee:	8626                	mv	a2,s1
    1bf0:	000025b7          	lui	a1,0x2
    1bf4:	42858593          	addi	a1,a1,1064 # 2428 <crctab+0x668>
    1bf8:	4509                	li	a0,2
    1bfa:	fffff097          	auipc	ra,0xfffff
    1bfe:	740080e7          	jalr	1856(ra) # 133a <fprintf>
    1c02:	650d                	lui	a0,0x3
    1c04:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c08:	00000097          	auipc	ra,0x0
    1c0c:	016080e7          	jalr	22(ra) # 1c1e <exit>
    1c10:	bf61                	j	1ba8 <check_file+0x24>

0000000000001c12 <r_sp>:
    1c12:	850a                	mv	a0,sp
    1c14:	8082                	ret

0000000000001c16 <halt>:
    1c16:	4885                	li	a7,1
    1c18:	00000073          	ecall
    1c1c:	8082                	ret

0000000000001c1e <exit>:
    1c1e:	4889                	li	a7,2
    1c20:	00000073          	ecall
    1c24:	8082                	ret

0000000000001c26 <exec>:
    1c26:	488d                	li	a7,3
    1c28:	00000073          	ecall
    1c2c:	8082                	ret

0000000000001c2e <wait>:
    1c2e:	4891                	li	a7,4
    1c30:	00000073          	ecall
    1c34:	8082                	ret

0000000000001c36 <remove>:
    1c36:	4895                	li	a7,5
    1c38:	00000073          	ecall
    1c3c:	8082                	ret

0000000000001c3e <open>:
    1c3e:	4899                	li	a7,6
    1c40:	00000073          	ecall
    1c44:	8082                	ret

0000000000001c46 <read>:
    1c46:	489d                	li	a7,7
    1c48:	00000073          	ecall
    1c4c:	8082                	ret

0000000000001c4e <write>:
    1c4e:	48a1                	li	a7,8
    1c50:	00000073          	ecall
    1c54:	8082                	ret

0000000000001c56 <seek>:
    1c56:	48a5                	li	a7,9
    1c58:	00000073          	ecall
    1c5c:	8082                	ret

0000000000001c5e <tell>:
    1c5e:	48a9                	li	a7,10
    1c60:	00000073          	ecall
    1c64:	8082                	ret

0000000000001c66 <close>:
    1c66:	48ad                	li	a7,11
    1c68:	00000073          	ecall
    1c6c:	8082                	ret

0000000000001c6e <fstat>:
    1c6e:	48b1                	li	a7,12
    1c70:	00000073          	ecall
    1c74:	8082                	ret

0000000000001c76 <mmap>:
    1c76:	48b5                	li	a7,13
    1c78:	00000073          	ecall
    1c7c:	8082                	ret

0000000000001c7e <munmap>:
    1c7e:	48b9                	li	a7,14
    1c80:	00000073          	ecall
    1c84:	8082                	ret

0000000000001c86 <chdir>:
    1c86:	48bd                	li	a7,15
    1c88:	00000073          	ecall
    1c8c:	8082                	ret

0000000000001c8e <mkdir>:
    1c8e:	48c1                	li	a7,16
    1c90:	00000073          	ecall
    1c94:	8082                	ret
