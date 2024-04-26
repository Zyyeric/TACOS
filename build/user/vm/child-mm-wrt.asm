
build/user/vm/child-mm-wrt:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	4585                	li	a1,1
    1008:	00002537          	lui	a0,0x2
    100c:	ca050513          	addi	a0,a0,-864 # 1ca0 <mkdir+0x16>
    1010:	00001097          	auipc	ra,0x1
    1014:	c2a080e7          	jalr	-982(ra) # 1c3a <open>
    1018:	842a                	mv	s0,a0
    101a:	4785                	li	a5,1
    101c:	02a7dc63          	bge	a5,a0,1054 <main+0x54>
    1020:	100005b7          	lui	a1,0x10000
    1024:	8522                	mv	a0,s0
    1026:	00001097          	auipc	ra,0x1
    102a:	c4c080e7          	jalr	-948(ra) # 1c72 <mmap>
    102e:	57fd                	li	a5,-1
    1030:	04f50863          	beq	a0,a5,1080 <main+0x80>
    1034:	0f000613          	li	a2,240
    1038:	000035b7          	lui	a1,0x3
    103c:	00058593          	mv	a1,a1
    1040:	10000537          	lui	a0,0x10000
    1044:	00000097          	auipc	ra,0x0
    1048:	79c080e7          	jalr	1948(ra) # 17e0 <memcpy>
    104c:	60a2                	ld	ra,8(sp)
    104e:	6402                	ld	s0,0(sp)
    1050:	0141                	addi	sp,sp,16
    1052:	8082                	ret
    1054:	46b9                	li	a3,14
    1056:	00002637          	lui	a2,0x2
    105a:	cb060613          	addi	a2,a2,-848 # 1cb0 <mkdir+0x26>
    105e:	000025b7          	lui	a1,0x2
    1062:	cc858593          	addi	a1,a1,-824 # 1cc8 <mkdir+0x3e>
    1066:	4509                	li	a0,2
    1068:	00000097          	auipc	ra,0x0
    106c:	2ce080e7          	jalr	718(ra) # 1336 <fprintf>
    1070:	650d                	lui	a0,0x3
    1072:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1076:	00001097          	auipc	ra,0x1
    107a:	ba4080e7          	jalr	-1116(ra) # 1c1a <exit>
    107e:	b74d                	j	1020 <main+0x20>
    1080:	46bd                	li	a3,15
    1082:	00002637          	lui	a2,0x2
    1086:	cb060613          	addi	a2,a2,-848 # 1cb0 <mkdir+0x26>
    108a:	000025b7          	lui	a1,0x2
    108e:	d2058593          	addi	a1,a1,-736 # 1d20 <mkdir+0x96>
    1092:	4509                	li	a0,2
    1094:	00000097          	auipc	ra,0x0
    1098:	2a2080e7          	jalr	674(ra) # 1336 <fprintf>
    109c:	650d                	lui	a0,0x3
    109e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10a2:	00001097          	auipc	ra,0x1
    10a6:	b78080e7          	jalr	-1160(ra) # 1c1a <exit>
    10aa:	b769                	j	1034 <main+0x34>

00000000000010ac <putc>:
    10ac:	1101                	addi	sp,sp,-32
    10ae:	ec06                	sd	ra,24(sp)
    10b0:	00b107a3          	sb	a1,15(sp)
    10b4:	4605                	li	a2,1
    10b6:	00f10593          	addi	a1,sp,15
    10ba:	00001097          	auipc	ra,0x1
    10be:	b90080e7          	jalr	-1136(ra) # 1c4a <write>
    10c2:	60e2                	ld	ra,24(sp)
    10c4:	6105                	addi	sp,sp,32
    10c6:	8082                	ret

00000000000010c8 <printint>:
    10c8:	7179                	addi	sp,sp,-48
    10ca:	f406                	sd	ra,40(sp)
    10cc:	f022                	sd	s0,32(sp)
    10ce:	ec26                	sd	s1,24(sp)
    10d0:	e84a                	sd	s2,16(sp)
    10d2:	84aa                	mv	s1,a0
    10d4:	c299                	beqz	a3,10da <printint+0x12>
    10d6:	0805c363          	bltz	a1,115c <printint+0x94>
    10da:	2581                	sext.w	a1,a1
    10dc:	4881                	li	a7,0
    10de:	868a                	mv	a3,sp
    10e0:	4701                	li	a4,0
    10e2:	2601                	sext.w	a2,a2
    10e4:	00002537          	lui	a0,0x2
    10e8:	d8850513          	addi	a0,a0,-632 # 1d88 <digits>
    10ec:	883a                	mv	a6,a4
    10ee:	2705                	addiw	a4,a4,1
    10f0:	02c5f7bb          	remuw	a5,a1,a2
    10f4:	1782                	slli	a5,a5,0x20
    10f6:	9381                	srli	a5,a5,0x20
    10f8:	97aa                	add	a5,a5,a0
    10fa:	0007c783          	lbu	a5,0(a5)
    10fe:	00f68023          	sb	a5,0(a3)
    1102:	0005879b          	sext.w	a5,a1
    1106:	02c5d5bb          	divuw	a1,a1,a2
    110a:	0685                	addi	a3,a3,1
    110c:	fec7f0e3          	bgeu	a5,a2,10ec <printint+0x24>
    1110:	00088a63          	beqz	a7,1124 <printint+0x5c>
    1114:	081c                	addi	a5,sp,16
    1116:	973e                	add	a4,a4,a5
    1118:	02d00793          	li	a5,45
    111c:	fef70823          	sb	a5,-16(a4)
    1120:	0028071b          	addiw	a4,a6,2
    1124:	02e05663          	blez	a4,1150 <printint+0x88>
    1128:	00e10433          	add	s0,sp,a4
    112c:	fff10913          	addi	s2,sp,-1
    1130:	993a                	add	s2,s2,a4
    1132:	377d                	addiw	a4,a4,-1
    1134:	1702                	slli	a4,a4,0x20
    1136:	9301                	srli	a4,a4,0x20
    1138:	40e90933          	sub	s2,s2,a4
    113c:	fff44583          	lbu	a1,-1(s0)
    1140:	8526                	mv	a0,s1
    1142:	00000097          	auipc	ra,0x0
    1146:	f6a080e7          	jalr	-150(ra) # 10ac <putc>
    114a:	147d                	addi	s0,s0,-1
    114c:	ff2418e3          	bne	s0,s2,113c <printint+0x74>
    1150:	70a2                	ld	ra,40(sp)
    1152:	7402                	ld	s0,32(sp)
    1154:	64e2                	ld	s1,24(sp)
    1156:	6942                	ld	s2,16(sp)
    1158:	6145                	addi	sp,sp,48
    115a:	8082                	ret
    115c:	40b005bb          	negw	a1,a1
    1160:	4885                	li	a7,1
    1162:	bfb5                	j	10de <printint+0x16>

0000000000001164 <vprintf>:
    1164:	7159                	addi	sp,sp,-112
    1166:	f486                	sd	ra,104(sp)
    1168:	f0a2                	sd	s0,96(sp)
    116a:	eca6                	sd	s1,88(sp)
    116c:	e8ca                	sd	s2,80(sp)
    116e:	e4ce                	sd	s3,72(sp)
    1170:	e0d2                	sd	s4,64(sp)
    1172:	fc56                	sd	s5,56(sp)
    1174:	f85a                	sd	s6,48(sp)
    1176:	f45e                	sd	s7,40(sp)
    1178:	f062                	sd	s8,32(sp)
    117a:	ec66                	sd	s9,24(sp)
    117c:	e86a                	sd	s10,16(sp)
    117e:	e46e                	sd	s11,8(sp)
    1180:	0005c483          	lbu	s1,0(a1)
    1184:	18048a63          	beqz	s1,1318 <vprintf+0x1b4>
    1188:	8a2a                	mv	s4,a0
    118a:	8ab2                	mv	s5,a2
    118c:	00158413          	addi	s0,a1,1
    1190:	4901                	li	s2,0
    1192:	02500993          	li	s3,37
    1196:	06400b93          	li	s7,100
    119a:	06c00c13          	li	s8,108
    119e:	07800c93          	li	s9,120
    11a2:	07000d13          	li	s10,112
    11a6:	00002db7          	lui	s11,0x2
    11aa:	00002b37          	lui	s6,0x2
    11ae:	d88b0b13          	addi	s6,s6,-632 # 1d88 <digits>
    11b2:	a839                	j	11d0 <vprintf+0x6c>
    11b4:	85a6                	mv	a1,s1
    11b6:	8552                	mv	a0,s4
    11b8:	00000097          	auipc	ra,0x0
    11bc:	ef4080e7          	jalr	-268(ra) # 10ac <putc>
    11c0:	a019                	j	11c6 <vprintf+0x62>
    11c2:	01390f63          	beq	s2,s3,11e0 <vprintf+0x7c>
    11c6:	0405                	addi	s0,s0,1
    11c8:	fff44483          	lbu	s1,-1(s0)
    11cc:	14048663          	beqz	s1,1318 <vprintf+0x1b4>
    11d0:	0004879b          	sext.w	a5,s1
    11d4:	fe0917e3          	bnez	s2,11c2 <vprintf+0x5e>
    11d8:	fd379ee3          	bne	a5,s3,11b4 <vprintf+0x50>
    11dc:	893e                	mv	s2,a5
    11de:	b7e5                	j	11c6 <vprintf+0x62>
    11e0:	05778063          	beq	a5,s7,1220 <vprintf+0xbc>
    11e4:	05878c63          	beq	a5,s8,123c <vprintf+0xd8>
    11e8:	07978863          	beq	a5,s9,1258 <vprintf+0xf4>
    11ec:	09a78463          	beq	a5,s10,1274 <vprintf+0x110>
    11f0:	07300713          	li	a4,115
    11f4:	0ce78263          	beq	a5,a4,12b8 <vprintf+0x154>
    11f8:	06300713          	li	a4,99
    11fc:	0ee78763          	beq	a5,a4,12ea <vprintf+0x186>
    1200:	11378163          	beq	a5,s3,1302 <vprintf+0x19e>
    1204:	85ce                	mv	a1,s3
    1206:	8552                	mv	a0,s4
    1208:	00000097          	auipc	ra,0x0
    120c:	ea4080e7          	jalr	-348(ra) # 10ac <putc>
    1210:	85a6                	mv	a1,s1
    1212:	8552                	mv	a0,s4
    1214:	00000097          	auipc	ra,0x0
    1218:	e98080e7          	jalr	-360(ra) # 10ac <putc>
    121c:	4901                	li	s2,0
    121e:	b765                	j	11c6 <vprintf+0x62>
    1220:	008a8493          	addi	s1,s5,8
    1224:	4685                	li	a3,1
    1226:	4629                	li	a2,10
    1228:	000aa583          	lw	a1,0(s5)
    122c:	8552                	mv	a0,s4
    122e:	00000097          	auipc	ra,0x0
    1232:	e9a080e7          	jalr	-358(ra) # 10c8 <printint>
    1236:	8aa6                	mv	s5,s1
    1238:	4901                	li	s2,0
    123a:	b771                	j	11c6 <vprintf+0x62>
    123c:	008a8493          	addi	s1,s5,8
    1240:	4681                	li	a3,0
    1242:	4629                	li	a2,10
    1244:	000aa583          	lw	a1,0(s5)
    1248:	8552                	mv	a0,s4
    124a:	00000097          	auipc	ra,0x0
    124e:	e7e080e7          	jalr	-386(ra) # 10c8 <printint>
    1252:	8aa6                	mv	s5,s1
    1254:	4901                	li	s2,0
    1256:	bf85                	j	11c6 <vprintf+0x62>
    1258:	008a8493          	addi	s1,s5,8
    125c:	4681                	li	a3,0
    125e:	4641                	li	a2,16
    1260:	000aa583          	lw	a1,0(s5)
    1264:	8552                	mv	a0,s4
    1266:	00000097          	auipc	ra,0x0
    126a:	e62080e7          	jalr	-414(ra) # 10c8 <printint>
    126e:	8aa6                	mv	s5,s1
    1270:	4901                	li	s2,0
    1272:	bf91                	j	11c6 <vprintf+0x62>
    1274:	008a8913          	addi	s2,s5,8
    1278:	000aba83          	ld	s5,0(s5)
    127c:	03000593          	li	a1,48
    1280:	8552                	mv	a0,s4
    1282:	00000097          	auipc	ra,0x0
    1286:	e2a080e7          	jalr	-470(ra) # 10ac <putc>
    128a:	85e6                	mv	a1,s9
    128c:	8552                	mv	a0,s4
    128e:	00000097          	auipc	ra,0x0
    1292:	e1e080e7          	jalr	-482(ra) # 10ac <putc>
    1296:	44c1                	li	s1,16
    1298:	03cad793          	srli	a5,s5,0x3c
    129c:	97da                	add	a5,a5,s6
    129e:	0007c583          	lbu	a1,0(a5)
    12a2:	8552                	mv	a0,s4
    12a4:	00000097          	auipc	ra,0x0
    12a8:	e08080e7          	jalr	-504(ra) # 10ac <putc>
    12ac:	0a92                	slli	s5,s5,0x4
    12ae:	34fd                	addiw	s1,s1,-1
    12b0:	f4e5                	bnez	s1,1298 <vprintf+0x134>
    12b2:	8aca                	mv	s5,s2
    12b4:	4901                	li	s2,0
    12b6:	bf01                	j	11c6 <vprintf+0x62>
    12b8:	008a8913          	addi	s2,s5,8
    12bc:	000ab483          	ld	s1,0(s5)
    12c0:	c085                	beqz	s1,12e0 <vprintf+0x17c>
    12c2:	0004c583          	lbu	a1,0(s1)
    12c6:	c5b1                	beqz	a1,1312 <vprintf+0x1ae>
    12c8:	8552                	mv	a0,s4
    12ca:	00000097          	auipc	ra,0x0
    12ce:	de2080e7          	jalr	-542(ra) # 10ac <putc>
    12d2:	0485                	addi	s1,s1,1
    12d4:	0004c583          	lbu	a1,0(s1)
    12d8:	f9e5                	bnez	a1,12c8 <vprintf+0x164>
    12da:	8aca                	mv	s5,s2
    12dc:	4901                	li	s2,0
    12de:	b5e5                	j	11c6 <vprintf+0x62>
    12e0:	d80d8493          	addi	s1,s11,-640 # 1d80 <mkdir+0xf6>
    12e4:	02800593          	li	a1,40
    12e8:	b7c5                	j	12c8 <vprintf+0x164>
    12ea:	008a8493          	addi	s1,s5,8
    12ee:	000ac583          	lbu	a1,0(s5)
    12f2:	8552                	mv	a0,s4
    12f4:	00000097          	auipc	ra,0x0
    12f8:	db8080e7          	jalr	-584(ra) # 10ac <putc>
    12fc:	8aa6                	mv	s5,s1
    12fe:	4901                	li	s2,0
    1300:	b5d9                	j	11c6 <vprintf+0x62>
    1302:	85ce                	mv	a1,s3
    1304:	8552                	mv	a0,s4
    1306:	00000097          	auipc	ra,0x0
    130a:	da6080e7          	jalr	-602(ra) # 10ac <putc>
    130e:	4901                	li	s2,0
    1310:	bd5d                	j	11c6 <vprintf+0x62>
    1312:	8aca                	mv	s5,s2
    1314:	4901                	li	s2,0
    1316:	bd45                	j	11c6 <vprintf+0x62>
    1318:	70a6                	ld	ra,104(sp)
    131a:	7406                	ld	s0,96(sp)
    131c:	64e6                	ld	s1,88(sp)
    131e:	6946                	ld	s2,80(sp)
    1320:	69a6                	ld	s3,72(sp)
    1322:	6a06                	ld	s4,64(sp)
    1324:	7ae2                	ld	s5,56(sp)
    1326:	7b42                	ld	s6,48(sp)
    1328:	7ba2                	ld	s7,40(sp)
    132a:	7c02                	ld	s8,32(sp)
    132c:	6ce2                	ld	s9,24(sp)
    132e:	6d42                	ld	s10,16(sp)
    1330:	6da2                	ld	s11,8(sp)
    1332:	6165                	addi	sp,sp,112
    1334:	8082                	ret

0000000000001336 <fprintf>:
    1336:	715d                	addi	sp,sp,-80
    1338:	ec06                	sd	ra,24(sp)
    133a:	f032                	sd	a2,32(sp)
    133c:	f436                	sd	a3,40(sp)
    133e:	f83a                	sd	a4,48(sp)
    1340:	fc3e                	sd	a5,56(sp)
    1342:	e0c2                	sd	a6,64(sp)
    1344:	e4c6                	sd	a7,72(sp)
    1346:	1010                	addi	a2,sp,32
    1348:	e432                	sd	a2,8(sp)
    134a:	00000097          	auipc	ra,0x0
    134e:	e1a080e7          	jalr	-486(ra) # 1164 <vprintf>
    1352:	60e2                	ld	ra,24(sp)
    1354:	6161                	addi	sp,sp,80
    1356:	8082                	ret

0000000000001358 <printf>:
    1358:	711d                	addi	sp,sp,-96
    135a:	ec06                	sd	ra,24(sp)
    135c:	f42e                	sd	a1,40(sp)
    135e:	f832                	sd	a2,48(sp)
    1360:	fc36                	sd	a3,56(sp)
    1362:	e0ba                	sd	a4,64(sp)
    1364:	e4be                	sd	a5,72(sp)
    1366:	e8c2                	sd	a6,80(sp)
    1368:	ecc6                	sd	a7,88(sp)
    136a:	1030                	addi	a2,sp,40
    136c:	e432                	sd	a2,8(sp)
    136e:	85aa                	mv	a1,a0
    1370:	4505                	li	a0,1
    1372:	00000097          	auipc	ra,0x0
    1376:	df2080e7          	jalr	-526(ra) # 1164 <vprintf>
    137a:	60e2                	ld	ra,24(sp)
    137c:	6125                	addi	sp,sp,96
    137e:	8082                	ret

0000000000001380 <cksum>:
    1380:	cdb1                	beqz	a1,13dc <cksum+0x5c>
    1382:	00b50833          	add	a6,a0,a1
    1386:	4781                	li	a5,0
    1388:	00002637          	lui	a2,0x2
    138c:	da060613          	addi	a2,a2,-608 # 1da0 <crctab>
    1390:	0505                	addi	a0,a0,1
    1392:	0087969b          	slliw	a3,a5,0x8
    1396:	0187d71b          	srliw	a4,a5,0x18
    139a:	fff54783          	lbu	a5,-1(a0)
    139e:	8f3d                	xor	a4,a4,a5
    13a0:	1702                	slli	a4,a4,0x20
    13a2:	9301                	srli	a4,a4,0x20
    13a4:	070a                	slli	a4,a4,0x2
    13a6:	9732                	add	a4,a4,a2
    13a8:	431c                	lw	a5,0(a4)
    13aa:	8fb5                	xor	a5,a5,a3
    13ac:	2781                	sext.w	a5,a5
    13ae:	fea811e3          	bne	a6,a0,1390 <cksum+0x10>
    13b2:	00002637          	lui	a2,0x2
    13b6:	da060613          	addi	a2,a2,-608 # 1da0 <crctab>
    13ba:	0ff5f693          	andi	a3,a1,255
    13be:	81a1                	srli	a1,a1,0x8
    13c0:	0087951b          	slliw	a0,a5,0x8
    13c4:	0187d71b          	srliw	a4,a5,0x18
    13c8:	8f35                	xor	a4,a4,a3
    13ca:	070a                	slli	a4,a4,0x2
    13cc:	9732                	add	a4,a4,a2
    13ce:	431c                	lw	a5,0(a4)
    13d0:	8fa9                	xor	a5,a5,a0
    13d2:	2781                	sext.w	a5,a5
    13d4:	f1fd                	bnez	a1,13ba <cksum+0x3a>
    13d6:	fff7c513          	not	a0,a5
    13da:	8082                	ret
    13dc:	4781                	li	a5,0
    13de:	bfe5                	j	13d6 <cksum+0x56>

00000000000013e0 <swap_bytes>:
    13e0:	ce19                	beqz	a2,13fe <swap_bytes+0x1e>
    13e2:	87aa                	mv	a5,a0
    13e4:	962a                	add	a2,a2,a0
    13e6:	0007c703          	lbu	a4,0(a5)
    13ea:	0005c683          	lbu	a3,0(a1)
    13ee:	00d78023          	sb	a3,0(a5)
    13f2:	00e58023          	sb	a4,0(a1)
    13f6:	0785                	addi	a5,a5,1
    13f8:	0585                	addi	a1,a1,1
    13fa:	fec796e3          	bne	a5,a2,13e6 <swap_bytes+0x6>
    13fe:	8082                	ret

0000000000001400 <random_init>:
    1400:	7139                	addi	sp,sp,-64
    1402:	fc06                	sd	ra,56(sp)
    1404:	f822                	sd	s0,48(sp)
    1406:	f426                	sd	s1,40(sp)
    1408:	f04a                	sd	s2,32(sp)
    140a:	ec4e                	sd	s3,24(sp)
    140c:	e852                	sd	s4,16(sp)
    140e:	c62a                	sw	a0,12(sp)
    1410:	000037b7          	lui	a5,0x3
    1414:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    1418:	eca5                	bnez	s1,1490 <random_init+0x90>
    141a:	00003737          	lui	a4,0x3
    141e:	10070913          	addi	s2,a4,256 # 3100 <s>
    1422:	10070713          	addi	a4,a4,256
    1426:	87a6                	mv	a5,s1
    1428:	10000693          	li	a3,256
    142c:	00f70023          	sb	a5,0(a4)
    1430:	2785                	addiw	a5,a5,1
    1432:	0705                	addi	a4,a4,1
    1434:	fed79ce3          	bne	a5,a3,142c <random_init+0x2c>
    1438:	4401                	li	s0,0
    143a:	000039b7          	lui	s3,0x3
    143e:	10098993          	addi	s3,s3,256 # 3100 <s>
    1442:	10000a13          	li	s4,256
    1446:	0034f793          	andi	a5,s1,3
    144a:	0818                	addi	a4,sp,16
    144c:	97ba                	add	a5,a5,a4
    144e:	ffc7c783          	lbu	a5,-4(a5)
    1452:	00094703          	lbu	a4,0(s2)
    1456:	9fb9                	addw	a5,a5,a4
    1458:	9c3d                	addw	s0,s0,a5
    145a:	0ff47413          	andi	s0,s0,255
    145e:	4605                	li	a2,1
    1460:	008985b3          	add	a1,s3,s0
    1464:	854a                	mv	a0,s2
    1466:	00000097          	auipc	ra,0x0
    146a:	f7a080e7          	jalr	-134(ra) # 13e0 <swap_bytes>
    146e:	2485                	addiw	s1,s1,1
    1470:	0905                	addi	s2,s2,1
    1472:	fd449ae3          	bne	s1,s4,1446 <random_init+0x46>
    1476:	000037b7          	lui	a5,0x3
    147a:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    147e:	000037b7          	lui	a5,0x3
    1482:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1486:	000037b7          	lui	a5,0x3
    148a:	4705                	li	a4,1
    148c:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1490:	70e2                	ld	ra,56(sp)
    1492:	7442                	ld	s0,48(sp)
    1494:	74a2                	ld	s1,40(sp)
    1496:	7902                	ld	s2,32(sp)
    1498:	69e2                	ld	s3,24(sp)
    149a:	6a42                	ld	s4,16(sp)
    149c:	6121                	addi	sp,sp,64
    149e:	8082                	ret

00000000000014a0 <random_bytes>:
    14a0:	7139                	addi	sp,sp,-64
    14a2:	fc06                	sd	ra,56(sp)
    14a4:	f822                	sd	s0,48(sp)
    14a6:	f426                	sd	s1,40(sp)
    14a8:	f04a                	sd	s2,32(sp)
    14aa:	ec4e                	sd	s3,24(sp)
    14ac:	e852                	sd	s4,16(sp)
    14ae:	e456                	sd	s5,8(sp)
    14b0:	e05a                	sd	s6,0(sp)
    14b2:	892a                	mv	s2,a0
    14b4:	8aae                	mv	s5,a1
    14b6:	000037b7          	lui	a5,0x3
    14ba:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    14be:	c3c1                	beqz	a5,153e <random_bytes+0x9e>
    14c0:	060a8563          	beqz	s5,152a <random_bytes+0x8a>
    14c4:	9aca                	add	s5,s5,s2
    14c6:	00003a37          	lui	s4,0x3
    14ca:	000034b7          	lui	s1,0x3
    14ce:	10048493          	addi	s1,s1,256 # 3100 <s>
    14d2:	000039b7          	lui	s3,0x3
    14d6:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    14da:	2505                	addiw	a0,a0,1
    14dc:	0ff57513          	andi	a0,a0,255
    14e0:	0eaa0aa3          	sb	a0,245(s4)
    14e4:	00a48b33          	add	s6,s1,a0
    14e8:	000b4403          	lbu	s0,0(s6)
    14ec:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    14f0:	9c3d                	addw	s0,s0,a5
    14f2:	0ff47413          	andi	s0,s0,255
    14f6:	0e898a23          	sb	s0,244(s3)
    14fa:	4605                	li	a2,1
    14fc:	008485b3          	add	a1,s1,s0
    1500:	855a                	mv	a0,s6
    1502:	00000097          	auipc	ra,0x0
    1506:	ede080e7          	jalr	-290(ra) # 13e0 <swap_bytes>
    150a:	9426                	add	s0,s0,s1
    150c:	000b4783          	lbu	a5,0(s6)
    1510:	00044703          	lbu	a4,0(s0)
    1514:	9fb9                	addw	a5,a5,a4
    1516:	0ff7f793          	andi	a5,a5,255
    151a:	97a6                	add	a5,a5,s1
    151c:	0007c783          	lbu	a5,0(a5)
    1520:	00f90023          	sb	a5,0(s2)
    1524:	0905                	addi	s2,s2,1
    1526:	fb2a98e3          	bne	s5,s2,14d6 <random_bytes+0x36>
    152a:	70e2                	ld	ra,56(sp)
    152c:	7442                	ld	s0,48(sp)
    152e:	74a2                	ld	s1,40(sp)
    1530:	7902                	ld	s2,32(sp)
    1532:	69e2                	ld	s3,24(sp)
    1534:	6a42                	ld	s4,16(sp)
    1536:	6aa2                	ld	s5,8(sp)
    1538:	6b02                	ld	s6,0(sp)
    153a:	6121                	addi	sp,sp,64
    153c:	8082                	ret
    153e:	4501                	li	a0,0
    1540:	00000097          	auipc	ra,0x0
    1544:	ec0080e7          	jalr	-320(ra) # 1400 <random_init>
    1548:	bfa5                	j	14c0 <random_bytes+0x20>

000000000000154a <random_ulong>:
    154a:	1101                	addi	sp,sp,-32
    154c:	ec06                	sd	ra,24(sp)
    154e:	45a1                	li	a1,8
    1550:	0028                	addi	a0,sp,8
    1552:	00000097          	auipc	ra,0x0
    1556:	f4e080e7          	jalr	-178(ra) # 14a0 <random_bytes>
    155a:	6522                	ld	a0,8(sp)
    155c:	60e2                	ld	ra,24(sp)
    155e:	6105                	addi	sp,sp,32
    1560:	8082                	ret

0000000000001562 <shuffle>:
    1562:	c9b9                	beqz	a1,15b8 <shuffle+0x56>
    1564:	7179                	addi	sp,sp,-48
    1566:	f406                	sd	ra,40(sp)
    1568:	f022                	sd	s0,32(sp)
    156a:	ec26                	sd	s1,24(sp)
    156c:	e84a                	sd	s2,16(sp)
    156e:	e44e                	sd	s3,8(sp)
    1570:	e052                	sd	s4,0(sp)
    1572:	8a2a                	mv	s4,a0
    1574:	89ae                	mv	s3,a1
    1576:	84b2                	mv	s1,a2
    1578:	892a                	mv	s2,a0
    157a:	4401                	li	s0,0
    157c:	00000097          	auipc	ra,0x0
    1580:	fce080e7          	jalr	-50(ra) # 154a <random_ulong>
    1584:	408985b3          	sub	a1,s3,s0
    1588:	02b575b3          	remu	a1,a0,a1
    158c:	95a2                	add	a1,a1,s0
    158e:	029585b3          	mul	a1,a1,s1
    1592:	8626                	mv	a2,s1
    1594:	95d2                	add	a1,a1,s4
    1596:	854a                	mv	a0,s2
    1598:	00000097          	auipc	ra,0x0
    159c:	e48080e7          	jalr	-440(ra) # 13e0 <swap_bytes>
    15a0:	0405                	addi	s0,s0,1
    15a2:	9926                	add	s2,s2,s1
    15a4:	fc899ce3          	bne	s3,s0,157c <shuffle+0x1a>
    15a8:	70a2                	ld	ra,40(sp)
    15aa:	7402                	ld	s0,32(sp)
    15ac:	64e2                	ld	s1,24(sp)
    15ae:	6942                	ld	s2,16(sp)
    15b0:	69a2                	ld	s3,8(sp)
    15b2:	6a02                	ld	s4,0(sp)
    15b4:	6145                	addi	sp,sp,48
    15b6:	8082                	ret
    15b8:	8082                	ret

00000000000015ba <arc4_init>:
    15ba:	100500a3          	sb	zero,257(a0)
    15be:	10050023          	sb	zero,256(a0)
    15c2:	4781                	li	a5,0
    15c4:	10000693          	li	a3,256
    15c8:	00f50733          	add	a4,a0,a5
    15cc:	00f70023          	sb	a5,0(a4)
    15d0:	0785                	addi	a5,a5,1
    15d2:	fed79be3          	bne	a5,a3,15c8 <arc4_init+0xe>
    15d6:	86aa                	mv	a3,a0
    15d8:	10050e13          	addi	t3,a0,256
    15dc:	4701                	li	a4,0
    15de:	4781                	li	a5,0
    15e0:	0006c883          	lbu	a7,0(a3)
    15e4:	00f58833          	add	a6,a1,a5
    15e8:	00084803          	lbu	a6,0(a6)
    15ec:	00e8873b          	addw	a4,a7,a4
    15f0:	00e8073b          	addw	a4,a6,a4
    15f4:	0ff77713          	andi	a4,a4,255
    15f8:	00e50833          	add	a6,a0,a4
    15fc:	00084303          	lbu	t1,0(a6)
    1600:	00668023          	sb	t1,0(a3)
    1604:	01180023          	sb	a7,0(a6)
    1608:	0785                	addi	a5,a5,1
    160a:	00c7b833          	sltu	a6,a5,a2
    160e:	41000833          	neg	a6,a6
    1612:	0107f7b3          	and	a5,a5,a6
    1616:	0685                	addi	a3,a3,1
    1618:	fdc694e3          	bne	a3,t3,15e0 <arc4_init+0x26>
    161c:	8082                	ret

000000000000161e <arc4_crypt>:
    161e:	10054e03          	lbu	t3,256(a0)
    1622:	10154803          	lbu	a6,257(a0)
    1626:	fff60e93          	addi	t4,a2,-1
    162a:	c225                	beqz	a2,168a <arc4_crypt+0x6c>
    162c:	00c588b3          	add	a7,a1,a2
    1630:	86ae                	mv	a3,a1
    1632:	001e031b          	addiw	t1,t3,1
    1636:	40b3033b          	subw	t1,t1,a1
    163a:	00d3073b          	addw	a4,t1,a3
    163e:	0ff77713          	andi	a4,a4,255
    1642:	972a                	add	a4,a4,a0
    1644:	00074603          	lbu	a2,0(a4)
    1648:	0106083b          	addw	a6,a2,a6
    164c:	0ff87813          	andi	a6,a6,255
    1650:	010507b3          	add	a5,a0,a6
    1654:	0007c583          	lbu	a1,0(a5)
    1658:	00b70023          	sb	a1,0(a4)
    165c:	00c78023          	sb	a2,0(a5)
    1660:	0685                	addi	a3,a3,1
    1662:	00074783          	lbu	a5,0(a4)
    1666:	9fb1                	addw	a5,a5,a2
    1668:	0ff7f793          	andi	a5,a5,255
    166c:	97aa                	add	a5,a5,a0
    166e:	0007c783          	lbu	a5,0(a5)
    1672:	fff6c703          	lbu	a4,-1(a3)
    1676:	8fb9                	xor	a5,a5,a4
    1678:	fef68fa3          	sb	a5,-1(a3)
    167c:	fb169fe3          	bne	a3,a7,163a <arc4_crypt+0x1c>
    1680:	2e85                	addiw	t4,t4,1
    1682:	01ce8e3b          	addw	t3,t4,t3
    1686:	0ffe7e13          	andi	t3,t3,255
    168a:	11c50023          	sb	t3,256(a0)
    168e:	110500a3          	sb	a6,257(a0)
    1692:	8082                	ret

0000000000001694 <_main>:
    1694:	1141                	addi	sp,sp,-16
    1696:	e406                	sd	ra,8(sp)
    1698:	00000097          	auipc	ra,0x0
    169c:	968080e7          	jalr	-1688(ra) # 1000 <main>
    16a0:	4501                	li	a0,0
    16a2:	00000097          	auipc	ra,0x0
    16a6:	578080e7          	jalr	1400(ra) # 1c1a <exit>
    16aa:	60a2                	ld	ra,8(sp)
    16ac:	0141                	addi	sp,sp,16
    16ae:	8082                	ret

00000000000016b0 <strcmp>:
    16b0:	00054783          	lbu	a5,0(a0)
    16b4:	cb91                	beqz	a5,16c8 <strcmp+0x18>
    16b6:	0005c703          	lbu	a4,0(a1)
    16ba:	00f71763          	bne	a4,a5,16c8 <strcmp+0x18>
    16be:	0505                	addi	a0,a0,1
    16c0:	0585                	addi	a1,a1,1
    16c2:	00054783          	lbu	a5,0(a0)
    16c6:	fbe5                	bnez	a5,16b6 <strcmp+0x6>
    16c8:	0005c503          	lbu	a0,0(a1)
    16cc:	40a7853b          	subw	a0,a5,a0
    16d0:	8082                	ret

00000000000016d2 <strcpy>:
    16d2:	87aa                	mv	a5,a0
    16d4:	0585                	addi	a1,a1,1
    16d6:	0785                	addi	a5,a5,1
    16d8:	fff5c703          	lbu	a4,-1(a1)
    16dc:	fee78fa3          	sb	a4,-1(a5)
    16e0:	fb75                	bnez	a4,16d4 <strcpy+0x2>
    16e2:	8082                	ret

00000000000016e4 <strlen>:
    16e4:	00054783          	lbu	a5,0(a0)
    16e8:	cf81                	beqz	a5,1700 <strlen+0x1c>
    16ea:	0505                	addi	a0,a0,1
    16ec:	87aa                	mv	a5,a0
    16ee:	4685                	li	a3,1
    16f0:	9e89                	subw	a3,a3,a0
    16f2:	00f6853b          	addw	a0,a3,a5
    16f6:	0785                	addi	a5,a5,1
    16f8:	fff7c703          	lbu	a4,-1(a5)
    16fc:	fb7d                	bnez	a4,16f2 <strlen+0xe>
    16fe:	8082                	ret
    1700:	4501                	li	a0,0
    1702:	8082                	ret

0000000000001704 <memset>:
    1704:	ca19                	beqz	a2,171a <memset+0x16>
    1706:	87aa                	mv	a5,a0
    1708:	1602                	slli	a2,a2,0x20
    170a:	9201                	srli	a2,a2,0x20
    170c:	00a60733          	add	a4,a2,a0
    1710:	00b78023          	sb	a1,0(a5)
    1714:	0785                	addi	a5,a5,1
    1716:	fee79de3          	bne	a5,a4,1710 <memset+0xc>
    171a:	8082                	ret

000000000000171c <memcmp>:
    171c:	1101                	addi	sp,sp,-32
    171e:	ec06                	sd	ra,24(sp)
    1720:	e822                	sd	s0,16(sp)
    1722:	e426                	sd	s1,8(sp)
    1724:	e04a                	sd	s2,0(sp)
    1726:	892a                	mv	s2,a0
    1728:	842e                	mv	s0,a1
    172a:	84b2                	mv	s1,a2
    172c:	c915                	beqz	a0,1760 <memcmp+0x44>
    172e:	c5ad                	beqz	a1,1798 <memcmp+0x7c>
    1730:	fff60713          	addi	a4,a2,-1
    1734:	c645                	beqz	a2,17dc <memcmp+0xc0>
    1736:	87ca                	mv	a5,s2
    1738:	00190613          	addi	a2,s2,1
    173c:	963a                	add	a2,a2,a4
    173e:	0007c683          	lbu	a3,0(a5)
    1742:	00044703          	lbu	a4,0(s0)
    1746:	08e69463          	bne	a3,a4,17ce <memcmp+0xb2>
    174a:	0785                	addi	a5,a5,1
    174c:	0405                	addi	s0,s0,1
    174e:	fec798e3          	bne	a5,a2,173e <memcmp+0x22>
    1752:	4501                	li	a0,0
    1754:	60e2                	ld	ra,24(sp)
    1756:	6442                	ld	s0,16(sp)
    1758:	64a2                	ld	s1,8(sp)
    175a:	6902                	ld	s2,0(sp)
    175c:	6105                	addi	sp,sp,32
    175e:	8082                	ret
    1760:	4501                	li	a0,0
    1762:	da6d                	beqz	a2,1754 <memcmp+0x38>
    1764:	03200693          	li	a3,50
    1768:	00002637          	lui	a2,0x2
    176c:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    1770:	000025b7          	lui	a1,0x2
    1774:	1b058593          	addi	a1,a1,432 # 21b0 <crctab+0x410>
    1778:	4509                	li	a0,2
    177a:	00000097          	auipc	ra,0x0
    177e:	bbc080e7          	jalr	-1092(ra) # 1336 <fprintf>
    1782:	650d                	lui	a0,0x3
    1784:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1788:	00000097          	auipc	ra,0x0
    178c:	492080e7          	jalr	1170(ra) # 1c1a <exit>
    1790:	fff48713          	addi	a4,s1,-1
    1794:	f04d                	bnez	s0,1736 <memcmp+0x1a>
    1796:	a011                	j	179a <memcmp+0x7e>
    1798:	c221                	beqz	a2,17d8 <memcmp+0xbc>
    179a:	03300693          	li	a3,51
    179e:	00002637          	lui	a2,0x2
    17a2:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    17a6:	000025b7          	lui	a1,0x2
    17aa:	1f858593          	addi	a1,a1,504 # 21f8 <crctab+0x458>
    17ae:	4509                	li	a0,2
    17b0:	00000097          	auipc	ra,0x0
    17b4:	b86080e7          	jalr	-1146(ra) # 1336 <fprintf>
    17b8:	650d                	lui	a0,0x3
    17ba:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17be:	00000097          	auipc	ra,0x0
    17c2:	45c080e7          	jalr	1116(ra) # 1c1a <exit>
    17c6:	fff48713          	addi	a4,s1,-1
    17ca:	4401                	li	s0,0
    17cc:	b7ad                	j	1736 <memcmp+0x1a>
    17ce:	4505                	li	a0,1
    17d0:	f8d762e3          	bltu	a4,a3,1754 <memcmp+0x38>
    17d4:	557d                	li	a0,-1
    17d6:	bfbd                	j	1754 <memcmp+0x38>
    17d8:	4501                	li	a0,0
    17da:	bfad                	j	1754 <memcmp+0x38>
    17dc:	4501                	li	a0,0
    17de:	bf9d                	j	1754 <memcmp+0x38>

00000000000017e0 <memcpy>:
    17e0:	1101                	addi	sp,sp,-32
    17e2:	ec06                	sd	ra,24(sp)
    17e4:	e822                	sd	s0,16(sp)
    17e6:	e426                	sd	s1,8(sp)
    17e8:	e04a                	sd	s2,0(sp)
    17ea:	84aa                	mv	s1,a0
    17ec:	842e                	mv	s0,a1
    17ee:	8932                	mv	s2,a2
    17f0:	c51d                	beqz	a0,181e <memcpy+0x3e>
    17f2:	c1ad                	beqz	a1,1854 <memcpy+0x74>
    17f4:	fff60693          	addi	a3,a2,-1
    17f8:	ce01                	beqz	a2,1810 <memcpy+0x30>
    17fa:	0685                	addi	a3,a3,1
    17fc:	96a6                	add	a3,a3,s1
    17fe:	87a6                	mv	a5,s1
    1800:	0405                	addi	s0,s0,1
    1802:	0785                	addi	a5,a5,1
    1804:	fff44703          	lbu	a4,-1(s0)
    1808:	fee78fa3          	sb	a4,-1(a5)
    180c:	fed79ae3          	bne	a5,a3,1800 <memcpy+0x20>
    1810:	8526                	mv	a0,s1
    1812:	60e2                	ld	ra,24(sp)
    1814:	6442                	ld	s0,16(sp)
    1816:	64a2                	ld	s1,8(sp)
    1818:	6902                	ld	s2,0(sp)
    181a:	6105                	addi	sp,sp,32
    181c:	8082                	ret
    181e:	da6d                	beqz	a2,1810 <memcpy+0x30>
    1820:	04000693          	li	a3,64
    1824:	00002637          	lui	a2,0x2
    1828:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    182c:	000025b7          	lui	a1,0x2
    1830:	24058593          	addi	a1,a1,576 # 2240 <crctab+0x4a0>
    1834:	4509                	li	a0,2
    1836:	00000097          	auipc	ra,0x0
    183a:	b00080e7          	jalr	-1280(ra) # 1336 <fprintf>
    183e:	650d                	lui	a0,0x3
    1840:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1844:	00000097          	auipc	ra,0x0
    1848:	3d6080e7          	jalr	982(ra) # 1c1a <exit>
    184c:	fff90693          	addi	a3,s2,-1
    1850:	f44d                	bnez	s0,17fa <memcpy+0x1a>
    1852:	a011                	j	1856 <memcpy+0x76>
    1854:	de55                	beqz	a2,1810 <memcpy+0x30>
    1856:	04100693          	li	a3,65
    185a:	00002637          	lui	a2,0x2
    185e:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    1862:	000025b7          	lui	a1,0x2
    1866:	28858593          	addi	a1,a1,648 # 2288 <crctab+0x4e8>
    186a:	4509                	li	a0,2
    186c:	00000097          	auipc	ra,0x0
    1870:	aca080e7          	jalr	-1334(ra) # 1336 <fprintf>
    1874:	650d                	lui	a0,0x3
    1876:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    187a:	00000097          	auipc	ra,0x0
    187e:	3a0080e7          	jalr	928(ra) # 1c1a <exit>
    1882:	fff90693          	addi	a3,s2,-1
    1886:	4401                	li	s0,0
    1888:	bf8d                	j	17fa <memcpy+0x1a>

000000000000188a <itoa>:
    188a:	1101                	addi	sp,sp,-32
    188c:	ec06                	sd	ra,24(sp)
    188e:	e822                	sd	s0,16(sp)
    1890:	e426                	sd	s1,8(sp)
    1892:	842a                	mv	s0,a0
    1894:	41f5d71b          	sraiw	a4,a1,0x1f
    1898:	00e5c7b3          	xor	a5,a1,a4
    189c:	9f99                	subw	a5,a5,a4
    189e:	84aa                	mv	s1,a0
    18a0:	862a                	mv	a2,a0
    18a2:	4681                	li	a3,0
    18a4:	4529                	li	a0,10
    18a6:	4825                	li	a6,9
    18a8:	88b6                	mv	a7,a3
    18aa:	2685                	addiw	a3,a3,1
    18ac:	02a7e73b          	remw	a4,a5,a0
    18b0:	0307071b          	addiw	a4,a4,48
    18b4:	00e60023          	sb	a4,0(a2)
    18b8:	873e                	mv	a4,a5
    18ba:	02a7c7bb          	divw	a5,a5,a0
    18be:	0605                	addi	a2,a2,1
    18c0:	fee844e3          	blt	a6,a4,18a8 <itoa+0x1e>
    18c4:	0405c863          	bltz	a1,1914 <itoa+0x8a>
    18c8:	96a2                	add	a3,a3,s0
    18ca:	00068023          	sb	zero,0(a3)
    18ce:	8522                	mv	a0,s0
    18d0:	00000097          	auipc	ra,0x0
    18d4:	e14080e7          	jalr	-492(ra) # 16e4 <strlen>
    18d8:	fff5071b          	addiw	a4,a0,-1
    18dc:	02e05763          	blez	a4,190a <itoa+0x80>
    18e0:	9722                	add	a4,a4,s0
    18e2:	4681                	li	a3,0
    18e4:	0004c783          	lbu	a5,0(s1)
    18e8:	00074603          	lbu	a2,0(a4)
    18ec:	00c48023          	sb	a2,0(s1)
    18f0:	00f70023          	sb	a5,0(a4)
    18f4:	0016879b          	addiw	a5,a3,1
    18f8:	0007869b          	sext.w	a3,a5
    18fc:	0485                	addi	s1,s1,1
    18fe:	177d                	addi	a4,a4,-1
    1900:	fff7c793          	not	a5,a5
    1904:	9fa9                	addw	a5,a5,a0
    1906:	fcf6cfe3          	blt	a3,a5,18e4 <itoa+0x5a>
    190a:	60e2                	ld	ra,24(sp)
    190c:	6442                	ld	s0,16(sp)
    190e:	64a2                	ld	s1,8(sp)
    1910:	6105                	addi	sp,sp,32
    1912:	8082                	ret
    1914:	96a2                	add	a3,a3,s0
    1916:	02d00793          	li	a5,45
    191a:	00f68023          	sb	a5,0(a3)
    191e:	0028869b          	addiw	a3,a7,2
    1922:	b75d                	j	18c8 <itoa+0x3e>

0000000000001924 <atoi>:
    1924:	00054783          	lbu	a5,0(a0)
    1928:	02000713          	li	a4,32
    192c:	00e79763          	bne	a5,a4,193a <atoi+0x16>
    1930:	0505                	addi	a0,a0,1
    1932:	00054783          	lbu	a5,0(a0)
    1936:	fee78de3          	beq	a5,a4,1930 <atoi+0xc>
    193a:	02b00713          	li	a4,43
    193e:	04e78663          	beq	a5,a4,198a <atoi+0x66>
    1942:	02d00713          	li	a4,45
    1946:	4805                	li	a6,1
    1948:	04e78463          	beq	a5,a4,1990 <atoi+0x6c>
    194c:	00054683          	lbu	a3,0(a0)
    1950:	fd06879b          	addiw	a5,a3,-48
    1954:	0ff7f793          	andi	a5,a5,255
    1958:	4725                	li	a4,9
    195a:	02f76e63          	bltu	a4,a5,1996 <atoi+0x72>
    195e:	4601                	li	a2,0
    1960:	45a5                	li	a1,9
    1962:	0505                	addi	a0,a0,1
    1964:	0026179b          	slliw	a5,a2,0x2
    1968:	9fb1                	addw	a5,a5,a2
    196a:	0017979b          	slliw	a5,a5,0x1
    196e:	9fb5                	addw	a5,a5,a3
    1970:	fd07861b          	addiw	a2,a5,-48
    1974:	00054683          	lbu	a3,0(a0)
    1978:	fd06871b          	addiw	a4,a3,-48
    197c:	0ff77713          	andi	a4,a4,255
    1980:	fee5f1e3          	bgeu	a1,a4,1962 <atoi+0x3e>
    1984:	02c8053b          	mulw	a0,a6,a2
    1988:	8082                	ret
    198a:	0505                	addi	a0,a0,1
    198c:	4805                	li	a6,1
    198e:	bf7d                	j	194c <atoi+0x28>
    1990:	0505                	addi	a0,a0,1
    1992:	587d                	li	a6,-1
    1994:	bf65                	j	194c <atoi+0x28>
    1996:	4601                	li	a2,0
    1998:	b7f5                	j	1984 <atoi+0x60>

000000000000199a <check_file_handle>:
    199a:	d8010113          	addi	sp,sp,-640
    199e:	26113c23          	sd	ra,632(sp)
    19a2:	26813823          	sd	s0,624(sp)
    19a6:	26913423          	sd	s1,616(sp)
    19aa:	27213023          	sd	s2,608(sp)
    19ae:	25313c23          	sd	s3,600(sp)
    19b2:	25413823          	sd	s4,592(sp)
    19b6:	25513423          	sd	s5,584(sp)
    19ba:	25613023          	sd	s6,576(sp)
    19be:	23713c23          	sd	s7,568(sp)
    19c2:	23813823          	sd	s8,560(sp)
    19c6:	23913423          	sd	s9,552(sp)
    19ca:	23a13023          	sd	s10,544(sp)
    19ce:	21b13c23          	sd	s11,536(sp)
    19d2:	8baa                	mv	s7,a0
    19d4:	8a2e                	mv	s4,a1
    19d6:	8c32                	mv	s8,a2
    19d8:	89b6                	mv	s3,a3
    19da:	040c                	addi	a1,sp,512
    19dc:	00000097          	auipc	ra,0x0
    19e0:	28e080e7          	jalr	654(ra) # 1c6a <fstat>
    19e4:	20813603          	ld	a2,520(sp)
    19e8:	03361163          	bne	a2,s3,1a0a <check_file_handle+0x70>
    19ec:	06098763          	beqz	s3,1a5a <check_file_handle+0xc0>
    19f0:	4901                	li	s2,0
    19f2:	20000a93          	li	s5,512
    19f6:	00002cb7          	lui	s9,0x2
    19fa:	00002db7          	lui	s11,0x2
    19fe:	6b0d                	lui	s6,0x3
    1a00:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a04:	00002d37          	lui	s10,0x2
    1a08:	aa39                	j	1b26 <check_file_handle+0x18c>
    1a0a:	86ce                	mv	a3,s3
    1a0c:	85d2                	mv	a1,s4
    1a0e:	00002537          	lui	a0,0x2
    1a12:	2d050513          	addi	a0,a0,720 # 22d0 <crctab+0x530>
    1a16:	00000097          	auipc	ra,0x0
    1a1a:	942080e7          	jalr	-1726(ra) # 1358 <printf>
    1a1e:	fc0999e3          	bnez	s3,19f0 <check_file_handle+0x56>
    1a22:	20813683          	ld	a3,520(sp)
    1a26:	03368a63          	beq	a3,s3,1a5a <check_file_handle+0xc0>
    1a2a:	0a600813          	li	a6,166
    1a2e:	000027b7          	lui	a5,0x2
    1a32:	1a078793          	addi	a5,a5,416 # 21a0 <crctab+0x400>
    1a36:	874e                	mv	a4,s3
    1a38:	8652                	mv	a2,s4
    1a3a:	000025b7          	lui	a1,0x2
    1a3e:	3a058593          	addi	a1,a1,928 # 23a0 <crctab+0x600>
    1a42:	4509                	li	a0,2
    1a44:	00000097          	auipc	ra,0x0
    1a48:	8f2080e7          	jalr	-1806(ra) # 1336 <fprintf>
    1a4c:	650d                	lui	a0,0x3
    1a4e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a52:	00000097          	auipc	ra,0x0
    1a56:	1c8080e7          	jalr	456(ra) # 1c1a <exit>
    1a5a:	85d2                	mv	a1,s4
    1a5c:	00002537          	lui	a0,0x2
    1a60:	3e850513          	addi	a0,a0,1000 # 23e8 <crctab+0x648>
    1a64:	00000097          	auipc	ra,0x0
    1a68:	8f4080e7          	jalr	-1804(ra) # 1358 <printf>
    1a6c:	27813083          	ld	ra,632(sp)
    1a70:	27013403          	ld	s0,624(sp)
    1a74:	26813483          	ld	s1,616(sp)
    1a78:	26013903          	ld	s2,608(sp)
    1a7c:	25813983          	ld	s3,600(sp)
    1a80:	25013a03          	ld	s4,592(sp)
    1a84:	24813a83          	ld	s5,584(sp)
    1a88:	24013b03          	ld	s6,576(sp)
    1a8c:	23813b83          	ld	s7,568(sp)
    1a90:	23013c03          	ld	s8,560(sp)
    1a94:	22813c83          	ld	s9,552(sp)
    1a98:	22013d03          	ld	s10,544(sp)
    1a9c:	21813d83          	ld	s11,536(sp)
    1aa0:	28010113          	addi	sp,sp,640
    1aa4:	8082                	ret
    1aa6:	09d00893          	li	a7,157
    1aaa:	1a0c8813          	addi	a6,s9,416 # 21a0 <crctab+0x400>
    1aae:	87aa                	mv	a5,a0
    1ab0:	8752                	mv	a4,s4
    1ab2:	86ca                	mv	a3,s2
    1ab4:	8622                	mv	a2,s0
    1ab6:	300d8593          	addi	a1,s11,768 # 2300 <crctab+0x560>
    1aba:	4509                	li	a0,2
    1abc:	00000097          	auipc	ra,0x0
    1ac0:	87a080e7          	jalr	-1926(ra) # 1336 <fprintf>
    1ac4:	855a                	mv	a0,s6
    1ac6:	00000097          	auipc	ra,0x0
    1aca:	154080e7          	jalr	340(ra) # 1c1a <exit>
    1ace:	a89d                	j	1b44 <check_file_handle+0x1aa>
    1ad0:	00160593          	addi	a1,a2,1
    1ad4:	0285f163          	bgeu	a1,s0,1af6 <check_file_handle+0x15c>
    1ad8:	00c10733          	add	a4,sp,a2
    1adc:	00b487b3          	add	a5,s1,a1
    1ae0:	00174683          	lbu	a3,1(a4)
    1ae4:	0007c783          	lbu	a5,0(a5)
    1ae8:	00f68763          	beq	a3,a5,1af6 <check_file_handle+0x15c>
    1aec:	0585                	addi	a1,a1,1
    1aee:	0705                	addi	a4,a4,1
    1af0:	feb416e3          	bne	s0,a1,1adc <check_file_handle+0x142>
    1af4:	85a2                	mv	a1,s0
    1af6:	08100813          	li	a6,129
    1afa:	1a0c8793          	addi	a5,s9,416
    1afe:	8752                	mv	a4,s4
    1b00:	012606b3          	add	a3,a2,s2
    1b04:	40c58633          	sub	a2,a1,a2
    1b08:	348d0593          	addi	a1,s10,840 # 2348 <crctab+0x5a8>
    1b0c:	4509                	li	a0,2
    1b0e:	00000097          	auipc	ra,0x0
    1b12:	828080e7          	jalr	-2008(ra) # 1336 <fprintf>
    1b16:	855a                	mv	a0,s6
    1b18:	00000097          	auipc	ra,0x0
    1b1c:	102080e7          	jalr	258(ra) # 1c1a <exit>
    1b20:	9922                	add	s2,s2,s0
    1b22:	f13970e3          	bgeu	s2,s3,1a22 <check_file_handle+0x88>
    1b26:	41298433          	sub	s0,s3,s2
    1b2a:	008af363          	bgeu	s5,s0,1b30 <check_file_handle+0x196>
    1b2e:	8456                	mv	s0,s5
    1b30:	0004061b          	sext.w	a2,s0
    1b34:	858a                	mv	a1,sp
    1b36:	855e                	mv	a0,s7
    1b38:	00000097          	auipc	ra,0x0
    1b3c:	10a080e7          	jalr	266(ra) # 1c42 <read>
    1b40:	f68513e3          	bne	a0,s0,1aa6 <check_file_handle+0x10c>
    1b44:	012c04b3          	add	s1,s8,s2
    1b48:	8622                	mv	a2,s0
    1b4a:	85a6                	mv	a1,s1
    1b4c:	850a                	mv	a0,sp
    1b4e:	00000097          	auipc	ra,0x0
    1b52:	bce080e7          	jalr	-1074(ra) # 171c <memcmp>
    1b56:	d569                	beqz	a0,1b20 <check_file_handle+0x186>
    1b58:	03298163          	beq	s3,s2,1b7a <check_file_handle+0x1e0>
    1b5c:	870a                	mv	a4,sp
    1b5e:	4601                	li	a2,0
    1b60:	00c487b3          	add	a5,s1,a2
    1b64:	00074683          	lbu	a3,0(a4)
    1b68:	0007c783          	lbu	a5,0(a5)
    1b6c:	f6f692e3          	bne	a3,a5,1ad0 <check_file_handle+0x136>
    1b70:	0605                	addi	a2,a2,1
    1b72:	0705                	addi	a4,a4,1
    1b74:	fe8666e3          	bltu	a2,s0,1b60 <check_file_handle+0x1c6>
    1b78:	bfa1                	j	1ad0 <check_file_handle+0x136>
    1b7a:	4601                	li	a2,0
    1b7c:	4585                	li	a1,1
    1b7e:	bfa5                	j	1af6 <check_file_handle+0x15c>

0000000000001b80 <check_file>:
    1b80:	7179                	addi	sp,sp,-48
    1b82:	f406                	sd	ra,40(sp)
    1b84:	f022                	sd	s0,32(sp)
    1b86:	ec26                	sd	s1,24(sp)
    1b88:	e84a                	sd	s2,16(sp)
    1b8a:	e44e                	sd	s3,8(sp)
    1b8c:	84aa                	mv	s1,a0
    1b8e:	892e                	mv	s2,a1
    1b90:	89b2                	mv	s3,a2
    1b92:	4581                	li	a1,0
    1b94:	00000097          	auipc	ra,0x0
    1b98:	0a6080e7          	jalr	166(ra) # 1c3a <open>
    1b9c:	842a                	mv	s0,a0
    1b9e:	4789                	li	a5,2
    1ba0:	02a7df63          	bge	a5,a0,1bde <check_file+0x5e>
    1ba4:	86ce                	mv	a3,s3
    1ba6:	864a                	mv	a2,s2
    1ba8:	85a6                	mv	a1,s1
    1baa:	8522                	mv	a0,s0
    1bac:	00000097          	auipc	ra,0x0
    1bb0:	dee080e7          	jalr	-530(ra) # 199a <check_file_handle>
    1bb4:	85a6                	mv	a1,s1
    1bb6:	00002537          	lui	a0,0x2
    1bba:	47050513          	addi	a0,a0,1136 # 2470 <crctab+0x6d0>
    1bbe:	fffff097          	auipc	ra,0xfffff
    1bc2:	79a080e7          	jalr	1946(ra) # 1358 <printf>
    1bc6:	8522                	mv	a0,s0
    1bc8:	00000097          	auipc	ra,0x0
    1bcc:	09a080e7          	jalr	154(ra) # 1c62 <close>
    1bd0:	70a2                	ld	ra,40(sp)
    1bd2:	7402                	ld	s0,32(sp)
    1bd4:	64e2                	ld	s1,24(sp)
    1bd6:	6942                	ld	s2,16(sp)
    1bd8:	69a2                	ld	s3,8(sp)
    1bda:	6145                	addi	sp,sp,48
    1bdc:	8082                	ret
    1bde:	0ae00713          	li	a4,174
    1be2:	000026b7          	lui	a3,0x2
    1be6:	1a068693          	addi	a3,a3,416 # 21a0 <crctab+0x400>
    1bea:	8626                	mv	a2,s1
    1bec:	000025b7          	lui	a1,0x2
    1bf0:	40858593          	addi	a1,a1,1032 # 2408 <crctab+0x668>
    1bf4:	4509                	li	a0,2
    1bf6:	fffff097          	auipc	ra,0xfffff
    1bfa:	740080e7          	jalr	1856(ra) # 1336 <fprintf>
    1bfe:	650d                	lui	a0,0x3
    1c00:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c04:	00000097          	auipc	ra,0x0
    1c08:	016080e7          	jalr	22(ra) # 1c1a <exit>
    1c0c:	bf61                	j	1ba4 <check_file+0x24>

0000000000001c0e <r_sp>:
    1c0e:	850a                	mv	a0,sp
    1c10:	8082                	ret

0000000000001c12 <halt>:
    1c12:	4885                	li	a7,1
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <exit>:
    1c1a:	4889                	li	a7,2
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <exec>:
    1c22:	488d                	li	a7,3
    1c24:	00000073          	ecall
    1c28:	8082                	ret

0000000000001c2a <wait>:
    1c2a:	4891                	li	a7,4
    1c2c:	00000073          	ecall
    1c30:	8082                	ret

0000000000001c32 <remove>:
    1c32:	4895                	li	a7,5
    1c34:	00000073          	ecall
    1c38:	8082                	ret

0000000000001c3a <open>:
    1c3a:	4899                	li	a7,6
    1c3c:	00000073          	ecall
    1c40:	8082                	ret

0000000000001c42 <read>:
    1c42:	489d                	li	a7,7
    1c44:	00000073          	ecall
    1c48:	8082                	ret

0000000000001c4a <write>:
    1c4a:	48a1                	li	a7,8
    1c4c:	00000073          	ecall
    1c50:	8082                	ret

0000000000001c52 <seek>:
    1c52:	48a5                	li	a7,9
    1c54:	00000073          	ecall
    1c58:	8082                	ret

0000000000001c5a <tell>:
    1c5a:	48a9                	li	a7,10
    1c5c:	00000073          	ecall
    1c60:	8082                	ret

0000000000001c62 <close>:
    1c62:	48ad                	li	a7,11
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <fstat>:
    1c6a:	48b1                	li	a7,12
    1c6c:	00000073          	ecall
    1c70:	8082                	ret

0000000000001c72 <mmap>:
    1c72:	48b5                	li	a7,13
    1c74:	00000073          	ecall
    1c78:	8082                	ret

0000000000001c7a <munmap>:
    1c7a:	48b9                	li	a7,14
    1c7c:	00000073          	ecall
    1c80:	8082                	ret

0000000000001c82 <chdir>:
    1c82:	48bd                	li	a7,15
    1c84:	00000073          	ecall
    1c88:	8082                	ret

0000000000001c8a <mkdir>:
    1c8a:	48c1                	li	a7,16
    1c8c:	00000073          	ecall
    1c90:	8082                	ret
