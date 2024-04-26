
build/user/vm/mmap-unmap:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	4581                	li	a1,0
    1008:	00002537          	lui	a0,0x2
    100c:	cc050513          	addi	a0,a0,-832 # 1cc0 <mkdir+0x12>
    1010:	00001097          	auipc	ra,0x1
    1014:	c4e080e7          	jalr	-946(ra) # 1c5e <open>
    1018:	842a                	mv	s0,a0
    101a:	4789                	li	a5,2
    101c:	04a7de63          	bge	a5,a0,1078 <main+0x78>
    1020:	100005b7          	lui	a1,0x10000
    1024:	8522                	mv	a0,s0
    1026:	00001097          	auipc	ra,0x1
    102a:	c70080e7          	jalr	-912(ra) # 1c96 <mmap>
    102e:	842a                	mv	s0,a0
    1030:	57fd                	li	a5,-1
    1032:	06f50963          	beq	a0,a5,10a4 <main+0xa4>
    1036:	8522                	mv	a0,s0
    1038:	00001097          	auipc	ra,0x1
    103c:	c66080e7          	jalr	-922(ra) # 1c9e <munmap>
    1040:	4749                	li	a4,18
    1042:	000026b7          	lui	a3,0x2
    1046:	cd068693          	addi	a3,a3,-816 # 1cd0 <mkdir+0x22>
    104a:	100007b7          	lui	a5,0x10000
    104e:	4390                	lw	a2,0(a5)
    1050:	000025b7          	lui	a1,0x2
    1054:	d9058593          	addi	a1,a1,-624 # 1d90 <mkdir+0xe2>
    1058:	4509                	li	a0,2
    105a:	00000097          	auipc	ra,0x0
    105e:	300080e7          	jalr	768(ra) # 135a <fprintf>
    1062:	650d                	lui	a0,0x3
    1064:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1068:	00001097          	auipc	ra,0x1
    106c:	bd6080e7          	jalr	-1066(ra) # 1c3e <exit>
    1070:	60a2                	ld	ra,8(sp)
    1072:	6402                	ld	s0,0(sp)
    1074:	0141                	addi	sp,sp,16
    1076:	8082                	ret
    1078:	46b5                	li	a3,13
    107a:	00002637          	lui	a2,0x2
    107e:	cd060613          	addi	a2,a2,-816 # 1cd0 <mkdir+0x22>
    1082:	000025b7          	lui	a1,0x2
    1086:	ce858593          	addi	a1,a1,-792 # 1ce8 <mkdir+0x3a>
    108a:	4509                	li	a0,2
    108c:	00000097          	auipc	ra,0x0
    1090:	2ce080e7          	jalr	718(ra) # 135a <fprintf>
    1094:	650d                	lui	a0,0x3
    1096:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    109a:	00001097          	auipc	ra,0x1
    109e:	ba4080e7          	jalr	-1116(ra) # 1c3e <exit>
    10a2:	bfbd                	j	1020 <main+0x20>
    10a4:	46b9                	li	a3,14
    10a6:	00002637          	lui	a2,0x2
    10aa:	cd060613          	addi	a2,a2,-816 # 1cd0 <mkdir+0x22>
    10ae:	000025b7          	lui	a1,0x2
    10b2:	d3858593          	addi	a1,a1,-712 # 1d38 <mkdir+0x8a>
    10b6:	4509                	li	a0,2
    10b8:	00000097          	auipc	ra,0x0
    10bc:	2a2080e7          	jalr	674(ra) # 135a <fprintf>
    10c0:	650d                	lui	a0,0x3
    10c2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10c6:	00001097          	auipc	ra,0x1
    10ca:	b78080e7          	jalr	-1160(ra) # 1c3e <exit>
    10ce:	b7a5                	j	1036 <main+0x36>

00000000000010d0 <putc>:
    10d0:	1101                	addi	sp,sp,-32
    10d2:	ec06                	sd	ra,24(sp)
    10d4:	00b107a3          	sb	a1,15(sp)
    10d8:	4605                	li	a2,1
    10da:	00f10593          	addi	a1,sp,15
    10de:	00001097          	auipc	ra,0x1
    10e2:	b90080e7          	jalr	-1136(ra) # 1c6e <write>
    10e6:	60e2                	ld	ra,24(sp)
    10e8:	6105                	addi	sp,sp,32
    10ea:	8082                	ret

00000000000010ec <printint>:
    10ec:	7179                	addi	sp,sp,-48
    10ee:	f406                	sd	ra,40(sp)
    10f0:	f022                	sd	s0,32(sp)
    10f2:	ec26                	sd	s1,24(sp)
    10f4:	e84a                	sd	s2,16(sp)
    10f6:	84aa                	mv	s1,a0
    10f8:	c299                	beqz	a3,10fe <printint+0x12>
    10fa:	0805c363          	bltz	a1,1180 <printint+0x94>
    10fe:	2581                	sext.w	a1,a1
    1100:	4881                	li	a7,0
    1102:	868a                	mv	a3,sp
    1104:	4701                	li	a4,0
    1106:	2601                	sext.w	a2,a2
    1108:	00002537          	lui	a0,0x2
    110c:	dd050513          	addi	a0,a0,-560 # 1dd0 <digits>
    1110:	883a                	mv	a6,a4
    1112:	2705                	addiw	a4,a4,1
    1114:	02c5f7bb          	remuw	a5,a1,a2
    1118:	1782                	slli	a5,a5,0x20
    111a:	9381                	srli	a5,a5,0x20
    111c:	97aa                	add	a5,a5,a0
    111e:	0007c783          	lbu	a5,0(a5) # 10000000 <s+0xfffcf00>
    1122:	00f68023          	sb	a5,0(a3)
    1126:	0005879b          	sext.w	a5,a1
    112a:	02c5d5bb          	divuw	a1,a1,a2
    112e:	0685                	addi	a3,a3,1
    1130:	fec7f0e3          	bgeu	a5,a2,1110 <printint+0x24>
    1134:	00088a63          	beqz	a7,1148 <printint+0x5c>
    1138:	081c                	addi	a5,sp,16
    113a:	973e                	add	a4,a4,a5
    113c:	02d00793          	li	a5,45
    1140:	fef70823          	sb	a5,-16(a4)
    1144:	0028071b          	addiw	a4,a6,2
    1148:	02e05663          	blez	a4,1174 <printint+0x88>
    114c:	00e10433          	add	s0,sp,a4
    1150:	fff10913          	addi	s2,sp,-1
    1154:	993a                	add	s2,s2,a4
    1156:	377d                	addiw	a4,a4,-1
    1158:	1702                	slli	a4,a4,0x20
    115a:	9301                	srli	a4,a4,0x20
    115c:	40e90933          	sub	s2,s2,a4
    1160:	fff44583          	lbu	a1,-1(s0)
    1164:	8526                	mv	a0,s1
    1166:	00000097          	auipc	ra,0x0
    116a:	f6a080e7          	jalr	-150(ra) # 10d0 <putc>
    116e:	147d                	addi	s0,s0,-1
    1170:	ff2418e3          	bne	s0,s2,1160 <printint+0x74>
    1174:	70a2                	ld	ra,40(sp)
    1176:	7402                	ld	s0,32(sp)
    1178:	64e2                	ld	s1,24(sp)
    117a:	6942                	ld	s2,16(sp)
    117c:	6145                	addi	sp,sp,48
    117e:	8082                	ret
    1180:	40b005bb          	negw	a1,a1
    1184:	4885                	li	a7,1
    1186:	bfb5                	j	1102 <printint+0x16>

0000000000001188 <vprintf>:
    1188:	7159                	addi	sp,sp,-112
    118a:	f486                	sd	ra,104(sp)
    118c:	f0a2                	sd	s0,96(sp)
    118e:	eca6                	sd	s1,88(sp)
    1190:	e8ca                	sd	s2,80(sp)
    1192:	e4ce                	sd	s3,72(sp)
    1194:	e0d2                	sd	s4,64(sp)
    1196:	fc56                	sd	s5,56(sp)
    1198:	f85a                	sd	s6,48(sp)
    119a:	f45e                	sd	s7,40(sp)
    119c:	f062                	sd	s8,32(sp)
    119e:	ec66                	sd	s9,24(sp)
    11a0:	e86a                	sd	s10,16(sp)
    11a2:	e46e                	sd	s11,8(sp)
    11a4:	0005c483          	lbu	s1,0(a1)
    11a8:	18048a63          	beqz	s1,133c <vprintf+0x1b4>
    11ac:	8a2a                	mv	s4,a0
    11ae:	8ab2                	mv	s5,a2
    11b0:	00158413          	addi	s0,a1,1
    11b4:	4901                	li	s2,0
    11b6:	02500993          	li	s3,37
    11ba:	06400b93          	li	s7,100
    11be:	06c00c13          	li	s8,108
    11c2:	07800c93          	li	s9,120
    11c6:	07000d13          	li	s10,112
    11ca:	00002db7          	lui	s11,0x2
    11ce:	00002b37          	lui	s6,0x2
    11d2:	dd0b0b13          	addi	s6,s6,-560 # 1dd0 <digits>
    11d6:	a839                	j	11f4 <vprintf+0x6c>
    11d8:	85a6                	mv	a1,s1
    11da:	8552                	mv	a0,s4
    11dc:	00000097          	auipc	ra,0x0
    11e0:	ef4080e7          	jalr	-268(ra) # 10d0 <putc>
    11e4:	a019                	j	11ea <vprintf+0x62>
    11e6:	01390f63          	beq	s2,s3,1204 <vprintf+0x7c>
    11ea:	0405                	addi	s0,s0,1
    11ec:	fff44483          	lbu	s1,-1(s0)
    11f0:	14048663          	beqz	s1,133c <vprintf+0x1b4>
    11f4:	0004879b          	sext.w	a5,s1
    11f8:	fe0917e3          	bnez	s2,11e6 <vprintf+0x5e>
    11fc:	fd379ee3          	bne	a5,s3,11d8 <vprintf+0x50>
    1200:	893e                	mv	s2,a5
    1202:	b7e5                	j	11ea <vprintf+0x62>
    1204:	05778063          	beq	a5,s7,1244 <vprintf+0xbc>
    1208:	05878c63          	beq	a5,s8,1260 <vprintf+0xd8>
    120c:	07978863          	beq	a5,s9,127c <vprintf+0xf4>
    1210:	09a78463          	beq	a5,s10,1298 <vprintf+0x110>
    1214:	07300713          	li	a4,115
    1218:	0ce78263          	beq	a5,a4,12dc <vprintf+0x154>
    121c:	06300713          	li	a4,99
    1220:	0ee78763          	beq	a5,a4,130e <vprintf+0x186>
    1224:	11378163          	beq	a5,s3,1326 <vprintf+0x19e>
    1228:	85ce                	mv	a1,s3
    122a:	8552                	mv	a0,s4
    122c:	00000097          	auipc	ra,0x0
    1230:	ea4080e7          	jalr	-348(ra) # 10d0 <putc>
    1234:	85a6                	mv	a1,s1
    1236:	8552                	mv	a0,s4
    1238:	00000097          	auipc	ra,0x0
    123c:	e98080e7          	jalr	-360(ra) # 10d0 <putc>
    1240:	4901                	li	s2,0
    1242:	b765                	j	11ea <vprintf+0x62>
    1244:	008a8493          	addi	s1,s5,8
    1248:	4685                	li	a3,1
    124a:	4629                	li	a2,10
    124c:	000aa583          	lw	a1,0(s5)
    1250:	8552                	mv	a0,s4
    1252:	00000097          	auipc	ra,0x0
    1256:	e9a080e7          	jalr	-358(ra) # 10ec <printint>
    125a:	8aa6                	mv	s5,s1
    125c:	4901                	li	s2,0
    125e:	b771                	j	11ea <vprintf+0x62>
    1260:	008a8493          	addi	s1,s5,8
    1264:	4681                	li	a3,0
    1266:	4629                	li	a2,10
    1268:	000aa583          	lw	a1,0(s5)
    126c:	8552                	mv	a0,s4
    126e:	00000097          	auipc	ra,0x0
    1272:	e7e080e7          	jalr	-386(ra) # 10ec <printint>
    1276:	8aa6                	mv	s5,s1
    1278:	4901                	li	s2,0
    127a:	bf85                	j	11ea <vprintf+0x62>
    127c:	008a8493          	addi	s1,s5,8
    1280:	4681                	li	a3,0
    1282:	4641                	li	a2,16
    1284:	000aa583          	lw	a1,0(s5)
    1288:	8552                	mv	a0,s4
    128a:	00000097          	auipc	ra,0x0
    128e:	e62080e7          	jalr	-414(ra) # 10ec <printint>
    1292:	8aa6                	mv	s5,s1
    1294:	4901                	li	s2,0
    1296:	bf91                	j	11ea <vprintf+0x62>
    1298:	008a8913          	addi	s2,s5,8
    129c:	000aba83          	ld	s5,0(s5)
    12a0:	03000593          	li	a1,48
    12a4:	8552                	mv	a0,s4
    12a6:	00000097          	auipc	ra,0x0
    12aa:	e2a080e7          	jalr	-470(ra) # 10d0 <putc>
    12ae:	85e6                	mv	a1,s9
    12b0:	8552                	mv	a0,s4
    12b2:	00000097          	auipc	ra,0x0
    12b6:	e1e080e7          	jalr	-482(ra) # 10d0 <putc>
    12ba:	44c1                	li	s1,16
    12bc:	03cad793          	srli	a5,s5,0x3c
    12c0:	97da                	add	a5,a5,s6
    12c2:	0007c583          	lbu	a1,0(a5)
    12c6:	8552                	mv	a0,s4
    12c8:	00000097          	auipc	ra,0x0
    12cc:	e08080e7          	jalr	-504(ra) # 10d0 <putc>
    12d0:	0a92                	slli	s5,s5,0x4
    12d2:	34fd                	addiw	s1,s1,-1
    12d4:	f4e5                	bnez	s1,12bc <vprintf+0x134>
    12d6:	8aca                	mv	s5,s2
    12d8:	4901                	li	s2,0
    12da:	bf01                	j	11ea <vprintf+0x62>
    12dc:	008a8913          	addi	s2,s5,8
    12e0:	000ab483          	ld	s1,0(s5)
    12e4:	c085                	beqz	s1,1304 <vprintf+0x17c>
    12e6:	0004c583          	lbu	a1,0(s1)
    12ea:	c5b1                	beqz	a1,1336 <vprintf+0x1ae>
    12ec:	8552                	mv	a0,s4
    12ee:	00000097          	auipc	ra,0x0
    12f2:	de2080e7          	jalr	-542(ra) # 10d0 <putc>
    12f6:	0485                	addi	s1,s1,1
    12f8:	0004c583          	lbu	a1,0(s1)
    12fc:	f9e5                	bnez	a1,12ec <vprintf+0x164>
    12fe:	8aca                	mv	s5,s2
    1300:	4901                	li	s2,0
    1302:	b5e5                	j	11ea <vprintf+0x62>
    1304:	dc8d8493          	addi	s1,s11,-568 # 1dc8 <mkdir+0x11a>
    1308:	02800593          	li	a1,40
    130c:	b7c5                	j	12ec <vprintf+0x164>
    130e:	008a8493          	addi	s1,s5,8
    1312:	000ac583          	lbu	a1,0(s5)
    1316:	8552                	mv	a0,s4
    1318:	00000097          	auipc	ra,0x0
    131c:	db8080e7          	jalr	-584(ra) # 10d0 <putc>
    1320:	8aa6                	mv	s5,s1
    1322:	4901                	li	s2,0
    1324:	b5d9                	j	11ea <vprintf+0x62>
    1326:	85ce                	mv	a1,s3
    1328:	8552                	mv	a0,s4
    132a:	00000097          	auipc	ra,0x0
    132e:	da6080e7          	jalr	-602(ra) # 10d0 <putc>
    1332:	4901                	li	s2,0
    1334:	bd5d                	j	11ea <vprintf+0x62>
    1336:	8aca                	mv	s5,s2
    1338:	4901                	li	s2,0
    133a:	bd45                	j	11ea <vprintf+0x62>
    133c:	70a6                	ld	ra,104(sp)
    133e:	7406                	ld	s0,96(sp)
    1340:	64e6                	ld	s1,88(sp)
    1342:	6946                	ld	s2,80(sp)
    1344:	69a6                	ld	s3,72(sp)
    1346:	6a06                	ld	s4,64(sp)
    1348:	7ae2                	ld	s5,56(sp)
    134a:	7b42                	ld	s6,48(sp)
    134c:	7ba2                	ld	s7,40(sp)
    134e:	7c02                	ld	s8,32(sp)
    1350:	6ce2                	ld	s9,24(sp)
    1352:	6d42                	ld	s10,16(sp)
    1354:	6da2                	ld	s11,8(sp)
    1356:	6165                	addi	sp,sp,112
    1358:	8082                	ret

000000000000135a <fprintf>:
    135a:	715d                	addi	sp,sp,-80
    135c:	ec06                	sd	ra,24(sp)
    135e:	f032                	sd	a2,32(sp)
    1360:	f436                	sd	a3,40(sp)
    1362:	f83a                	sd	a4,48(sp)
    1364:	fc3e                	sd	a5,56(sp)
    1366:	e0c2                	sd	a6,64(sp)
    1368:	e4c6                	sd	a7,72(sp)
    136a:	1010                	addi	a2,sp,32
    136c:	e432                	sd	a2,8(sp)
    136e:	00000097          	auipc	ra,0x0
    1372:	e1a080e7          	jalr	-486(ra) # 1188 <vprintf>
    1376:	60e2                	ld	ra,24(sp)
    1378:	6161                	addi	sp,sp,80
    137a:	8082                	ret

000000000000137c <printf>:
    137c:	711d                	addi	sp,sp,-96
    137e:	ec06                	sd	ra,24(sp)
    1380:	f42e                	sd	a1,40(sp)
    1382:	f832                	sd	a2,48(sp)
    1384:	fc36                	sd	a3,56(sp)
    1386:	e0ba                	sd	a4,64(sp)
    1388:	e4be                	sd	a5,72(sp)
    138a:	e8c2                	sd	a6,80(sp)
    138c:	ecc6                	sd	a7,88(sp)
    138e:	1030                	addi	a2,sp,40
    1390:	e432                	sd	a2,8(sp)
    1392:	85aa                	mv	a1,a0
    1394:	4505                	li	a0,1
    1396:	00000097          	auipc	ra,0x0
    139a:	df2080e7          	jalr	-526(ra) # 1188 <vprintf>
    139e:	60e2                	ld	ra,24(sp)
    13a0:	6125                	addi	sp,sp,96
    13a2:	8082                	ret

00000000000013a4 <cksum>:
    13a4:	cdb1                	beqz	a1,1400 <cksum+0x5c>
    13a6:	00b50833          	add	a6,a0,a1
    13aa:	4781                	li	a5,0
    13ac:	00002637          	lui	a2,0x2
    13b0:	de860613          	addi	a2,a2,-536 # 1de8 <crctab>
    13b4:	0505                	addi	a0,a0,1
    13b6:	0087969b          	slliw	a3,a5,0x8
    13ba:	0187d71b          	srliw	a4,a5,0x18
    13be:	fff54783          	lbu	a5,-1(a0)
    13c2:	8f3d                	xor	a4,a4,a5
    13c4:	1702                	slli	a4,a4,0x20
    13c6:	9301                	srli	a4,a4,0x20
    13c8:	070a                	slli	a4,a4,0x2
    13ca:	9732                	add	a4,a4,a2
    13cc:	431c                	lw	a5,0(a4)
    13ce:	8fb5                	xor	a5,a5,a3
    13d0:	2781                	sext.w	a5,a5
    13d2:	fea811e3          	bne	a6,a0,13b4 <cksum+0x10>
    13d6:	00002637          	lui	a2,0x2
    13da:	de860613          	addi	a2,a2,-536 # 1de8 <crctab>
    13de:	0ff5f693          	andi	a3,a1,255
    13e2:	81a1                	srli	a1,a1,0x8
    13e4:	0087951b          	slliw	a0,a5,0x8
    13e8:	0187d71b          	srliw	a4,a5,0x18
    13ec:	8f35                	xor	a4,a4,a3
    13ee:	070a                	slli	a4,a4,0x2
    13f0:	9732                	add	a4,a4,a2
    13f2:	431c                	lw	a5,0(a4)
    13f4:	8fa9                	xor	a5,a5,a0
    13f6:	2781                	sext.w	a5,a5
    13f8:	f1fd                	bnez	a1,13de <cksum+0x3a>
    13fa:	fff7c513          	not	a0,a5
    13fe:	8082                	ret
    1400:	4781                	li	a5,0
    1402:	bfe5                	j	13fa <cksum+0x56>

0000000000001404 <swap_bytes>:
    1404:	ce19                	beqz	a2,1422 <swap_bytes+0x1e>
    1406:	87aa                	mv	a5,a0
    1408:	962a                	add	a2,a2,a0
    140a:	0007c703          	lbu	a4,0(a5)
    140e:	0005c683          	lbu	a3,0(a1)
    1412:	00d78023          	sb	a3,0(a5)
    1416:	00e58023          	sb	a4,0(a1)
    141a:	0785                	addi	a5,a5,1
    141c:	0585                	addi	a1,a1,1
    141e:	fec796e3          	bne	a5,a2,140a <swap_bytes+0x6>
    1422:	8082                	ret

0000000000001424 <random_init>:
    1424:	7139                	addi	sp,sp,-64
    1426:	fc06                	sd	ra,56(sp)
    1428:	f822                	sd	s0,48(sp)
    142a:	f426                	sd	s1,40(sp)
    142c:	f04a                	sd	s2,32(sp)
    142e:	ec4e                	sd	s3,24(sp)
    1430:	e852                	sd	s4,16(sp)
    1432:	c62a                	sw	a0,12(sp)
    1434:	000037b7          	lui	a5,0x3
    1438:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    143c:	eca5                	bnez	s1,14b4 <random_init+0x90>
    143e:	00003737          	lui	a4,0x3
    1442:	10070913          	addi	s2,a4,256 # 3100 <s>
    1446:	10070713          	addi	a4,a4,256
    144a:	87a6                	mv	a5,s1
    144c:	10000693          	li	a3,256
    1450:	00f70023          	sb	a5,0(a4)
    1454:	2785                	addiw	a5,a5,1
    1456:	0705                	addi	a4,a4,1
    1458:	fed79ce3          	bne	a5,a3,1450 <random_init+0x2c>
    145c:	4401                	li	s0,0
    145e:	000039b7          	lui	s3,0x3
    1462:	10098993          	addi	s3,s3,256 # 3100 <s>
    1466:	10000a13          	li	s4,256
    146a:	0034f793          	andi	a5,s1,3
    146e:	0818                	addi	a4,sp,16
    1470:	97ba                	add	a5,a5,a4
    1472:	ffc7c783          	lbu	a5,-4(a5)
    1476:	00094703          	lbu	a4,0(s2)
    147a:	9fb9                	addw	a5,a5,a4
    147c:	9c3d                	addw	s0,s0,a5
    147e:	0ff47413          	andi	s0,s0,255
    1482:	4605                	li	a2,1
    1484:	008985b3          	add	a1,s3,s0
    1488:	854a                	mv	a0,s2
    148a:	00000097          	auipc	ra,0x0
    148e:	f7a080e7          	jalr	-134(ra) # 1404 <swap_bytes>
    1492:	2485                	addiw	s1,s1,1
    1494:	0905                	addi	s2,s2,1
    1496:	fd449ae3          	bne	s1,s4,146a <random_init+0x46>
    149a:	000037b7          	lui	a5,0x3
    149e:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    14a2:	000037b7          	lui	a5,0x3
    14a6:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    14aa:	000037b7          	lui	a5,0x3
    14ae:	4705                	li	a4,1
    14b0:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    14b4:	70e2                	ld	ra,56(sp)
    14b6:	7442                	ld	s0,48(sp)
    14b8:	74a2                	ld	s1,40(sp)
    14ba:	7902                	ld	s2,32(sp)
    14bc:	69e2                	ld	s3,24(sp)
    14be:	6a42                	ld	s4,16(sp)
    14c0:	6121                	addi	sp,sp,64
    14c2:	8082                	ret

00000000000014c4 <random_bytes>:
    14c4:	7139                	addi	sp,sp,-64
    14c6:	fc06                	sd	ra,56(sp)
    14c8:	f822                	sd	s0,48(sp)
    14ca:	f426                	sd	s1,40(sp)
    14cc:	f04a                	sd	s2,32(sp)
    14ce:	ec4e                	sd	s3,24(sp)
    14d0:	e852                	sd	s4,16(sp)
    14d2:	e456                	sd	s5,8(sp)
    14d4:	e05a                	sd	s6,0(sp)
    14d6:	892a                	mv	s2,a0
    14d8:	8aae                	mv	s5,a1
    14da:	000037b7          	lui	a5,0x3
    14de:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    14e2:	c3c1                	beqz	a5,1562 <random_bytes+0x9e>
    14e4:	060a8563          	beqz	s5,154e <random_bytes+0x8a>
    14e8:	9aca                	add	s5,s5,s2
    14ea:	00003a37          	lui	s4,0x3
    14ee:	000034b7          	lui	s1,0x3
    14f2:	10048493          	addi	s1,s1,256 # 3100 <s>
    14f6:	000039b7          	lui	s3,0x3
    14fa:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    14fe:	2505                	addiw	a0,a0,1
    1500:	0ff57513          	andi	a0,a0,255
    1504:	0eaa0aa3          	sb	a0,245(s4)
    1508:	00a48b33          	add	s6,s1,a0
    150c:	000b4403          	lbu	s0,0(s6)
    1510:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1514:	9c3d                	addw	s0,s0,a5
    1516:	0ff47413          	andi	s0,s0,255
    151a:	0e898a23          	sb	s0,244(s3)
    151e:	4605                	li	a2,1
    1520:	008485b3          	add	a1,s1,s0
    1524:	855a                	mv	a0,s6
    1526:	00000097          	auipc	ra,0x0
    152a:	ede080e7          	jalr	-290(ra) # 1404 <swap_bytes>
    152e:	9426                	add	s0,s0,s1
    1530:	000b4783          	lbu	a5,0(s6)
    1534:	00044703          	lbu	a4,0(s0)
    1538:	9fb9                	addw	a5,a5,a4
    153a:	0ff7f793          	andi	a5,a5,255
    153e:	97a6                	add	a5,a5,s1
    1540:	0007c783          	lbu	a5,0(a5)
    1544:	00f90023          	sb	a5,0(s2)
    1548:	0905                	addi	s2,s2,1
    154a:	fb2a98e3          	bne	s5,s2,14fa <random_bytes+0x36>
    154e:	70e2                	ld	ra,56(sp)
    1550:	7442                	ld	s0,48(sp)
    1552:	74a2                	ld	s1,40(sp)
    1554:	7902                	ld	s2,32(sp)
    1556:	69e2                	ld	s3,24(sp)
    1558:	6a42                	ld	s4,16(sp)
    155a:	6aa2                	ld	s5,8(sp)
    155c:	6b02                	ld	s6,0(sp)
    155e:	6121                	addi	sp,sp,64
    1560:	8082                	ret
    1562:	4501                	li	a0,0
    1564:	00000097          	auipc	ra,0x0
    1568:	ec0080e7          	jalr	-320(ra) # 1424 <random_init>
    156c:	bfa5                	j	14e4 <random_bytes+0x20>

000000000000156e <random_ulong>:
    156e:	1101                	addi	sp,sp,-32
    1570:	ec06                	sd	ra,24(sp)
    1572:	45a1                	li	a1,8
    1574:	0028                	addi	a0,sp,8
    1576:	00000097          	auipc	ra,0x0
    157a:	f4e080e7          	jalr	-178(ra) # 14c4 <random_bytes>
    157e:	6522                	ld	a0,8(sp)
    1580:	60e2                	ld	ra,24(sp)
    1582:	6105                	addi	sp,sp,32
    1584:	8082                	ret

0000000000001586 <shuffle>:
    1586:	c9b9                	beqz	a1,15dc <shuffle+0x56>
    1588:	7179                	addi	sp,sp,-48
    158a:	f406                	sd	ra,40(sp)
    158c:	f022                	sd	s0,32(sp)
    158e:	ec26                	sd	s1,24(sp)
    1590:	e84a                	sd	s2,16(sp)
    1592:	e44e                	sd	s3,8(sp)
    1594:	e052                	sd	s4,0(sp)
    1596:	8a2a                	mv	s4,a0
    1598:	89ae                	mv	s3,a1
    159a:	84b2                	mv	s1,a2
    159c:	892a                	mv	s2,a0
    159e:	4401                	li	s0,0
    15a0:	00000097          	auipc	ra,0x0
    15a4:	fce080e7          	jalr	-50(ra) # 156e <random_ulong>
    15a8:	408985b3          	sub	a1,s3,s0
    15ac:	02b575b3          	remu	a1,a0,a1
    15b0:	95a2                	add	a1,a1,s0
    15b2:	029585b3          	mul	a1,a1,s1
    15b6:	8626                	mv	a2,s1
    15b8:	95d2                	add	a1,a1,s4
    15ba:	854a                	mv	a0,s2
    15bc:	00000097          	auipc	ra,0x0
    15c0:	e48080e7          	jalr	-440(ra) # 1404 <swap_bytes>
    15c4:	0405                	addi	s0,s0,1
    15c6:	9926                	add	s2,s2,s1
    15c8:	fc899ce3          	bne	s3,s0,15a0 <shuffle+0x1a>
    15cc:	70a2                	ld	ra,40(sp)
    15ce:	7402                	ld	s0,32(sp)
    15d0:	64e2                	ld	s1,24(sp)
    15d2:	6942                	ld	s2,16(sp)
    15d4:	69a2                	ld	s3,8(sp)
    15d6:	6a02                	ld	s4,0(sp)
    15d8:	6145                	addi	sp,sp,48
    15da:	8082                	ret
    15dc:	8082                	ret

00000000000015de <arc4_init>:
    15de:	100500a3          	sb	zero,257(a0)
    15e2:	10050023          	sb	zero,256(a0)
    15e6:	4781                	li	a5,0
    15e8:	10000693          	li	a3,256
    15ec:	00f50733          	add	a4,a0,a5
    15f0:	00f70023          	sb	a5,0(a4)
    15f4:	0785                	addi	a5,a5,1
    15f6:	fed79be3          	bne	a5,a3,15ec <arc4_init+0xe>
    15fa:	86aa                	mv	a3,a0
    15fc:	10050e13          	addi	t3,a0,256
    1600:	4701                	li	a4,0
    1602:	4781                	li	a5,0
    1604:	0006c883          	lbu	a7,0(a3)
    1608:	00f58833          	add	a6,a1,a5
    160c:	00084803          	lbu	a6,0(a6)
    1610:	00e8873b          	addw	a4,a7,a4
    1614:	00e8073b          	addw	a4,a6,a4
    1618:	0ff77713          	andi	a4,a4,255
    161c:	00e50833          	add	a6,a0,a4
    1620:	00084303          	lbu	t1,0(a6)
    1624:	00668023          	sb	t1,0(a3)
    1628:	01180023          	sb	a7,0(a6)
    162c:	0785                	addi	a5,a5,1
    162e:	00c7b833          	sltu	a6,a5,a2
    1632:	41000833          	neg	a6,a6
    1636:	0107f7b3          	and	a5,a5,a6
    163a:	0685                	addi	a3,a3,1
    163c:	fdc694e3          	bne	a3,t3,1604 <arc4_init+0x26>
    1640:	8082                	ret

0000000000001642 <arc4_crypt>:
    1642:	10054e03          	lbu	t3,256(a0)
    1646:	10154803          	lbu	a6,257(a0)
    164a:	fff60e93          	addi	t4,a2,-1
    164e:	c225                	beqz	a2,16ae <arc4_crypt+0x6c>
    1650:	00c588b3          	add	a7,a1,a2
    1654:	86ae                	mv	a3,a1
    1656:	001e031b          	addiw	t1,t3,1
    165a:	40b3033b          	subw	t1,t1,a1
    165e:	00d3073b          	addw	a4,t1,a3
    1662:	0ff77713          	andi	a4,a4,255
    1666:	972a                	add	a4,a4,a0
    1668:	00074603          	lbu	a2,0(a4)
    166c:	0106083b          	addw	a6,a2,a6
    1670:	0ff87813          	andi	a6,a6,255
    1674:	010507b3          	add	a5,a0,a6
    1678:	0007c583          	lbu	a1,0(a5)
    167c:	00b70023          	sb	a1,0(a4)
    1680:	00c78023          	sb	a2,0(a5)
    1684:	0685                	addi	a3,a3,1
    1686:	00074783          	lbu	a5,0(a4)
    168a:	9fb1                	addw	a5,a5,a2
    168c:	0ff7f793          	andi	a5,a5,255
    1690:	97aa                	add	a5,a5,a0
    1692:	0007c783          	lbu	a5,0(a5)
    1696:	fff6c703          	lbu	a4,-1(a3)
    169a:	8fb9                	xor	a5,a5,a4
    169c:	fef68fa3          	sb	a5,-1(a3)
    16a0:	fb169fe3          	bne	a3,a7,165e <arc4_crypt+0x1c>
    16a4:	2e85                	addiw	t4,t4,1
    16a6:	01ce8e3b          	addw	t3,t4,t3
    16aa:	0ffe7e13          	andi	t3,t3,255
    16ae:	11c50023          	sb	t3,256(a0)
    16b2:	110500a3          	sb	a6,257(a0)
    16b6:	8082                	ret

00000000000016b8 <_main>:
    16b8:	1141                	addi	sp,sp,-16
    16ba:	e406                	sd	ra,8(sp)
    16bc:	00000097          	auipc	ra,0x0
    16c0:	944080e7          	jalr	-1724(ra) # 1000 <main>
    16c4:	4501                	li	a0,0
    16c6:	00000097          	auipc	ra,0x0
    16ca:	578080e7          	jalr	1400(ra) # 1c3e <exit>
    16ce:	60a2                	ld	ra,8(sp)
    16d0:	0141                	addi	sp,sp,16
    16d2:	8082                	ret

00000000000016d4 <strcmp>:
    16d4:	00054783          	lbu	a5,0(a0)
    16d8:	cb91                	beqz	a5,16ec <strcmp+0x18>
    16da:	0005c703          	lbu	a4,0(a1)
    16de:	00f71763          	bne	a4,a5,16ec <strcmp+0x18>
    16e2:	0505                	addi	a0,a0,1
    16e4:	0585                	addi	a1,a1,1
    16e6:	00054783          	lbu	a5,0(a0)
    16ea:	fbe5                	bnez	a5,16da <strcmp+0x6>
    16ec:	0005c503          	lbu	a0,0(a1)
    16f0:	40a7853b          	subw	a0,a5,a0
    16f4:	8082                	ret

00000000000016f6 <strcpy>:
    16f6:	87aa                	mv	a5,a0
    16f8:	0585                	addi	a1,a1,1
    16fa:	0785                	addi	a5,a5,1
    16fc:	fff5c703          	lbu	a4,-1(a1)
    1700:	fee78fa3          	sb	a4,-1(a5)
    1704:	fb75                	bnez	a4,16f8 <strcpy+0x2>
    1706:	8082                	ret

0000000000001708 <strlen>:
    1708:	00054783          	lbu	a5,0(a0)
    170c:	cf81                	beqz	a5,1724 <strlen+0x1c>
    170e:	0505                	addi	a0,a0,1
    1710:	87aa                	mv	a5,a0
    1712:	4685                	li	a3,1
    1714:	9e89                	subw	a3,a3,a0
    1716:	00f6853b          	addw	a0,a3,a5
    171a:	0785                	addi	a5,a5,1
    171c:	fff7c703          	lbu	a4,-1(a5)
    1720:	fb7d                	bnez	a4,1716 <strlen+0xe>
    1722:	8082                	ret
    1724:	4501                	li	a0,0
    1726:	8082                	ret

0000000000001728 <memset>:
    1728:	ca19                	beqz	a2,173e <memset+0x16>
    172a:	87aa                	mv	a5,a0
    172c:	1602                	slli	a2,a2,0x20
    172e:	9201                	srli	a2,a2,0x20
    1730:	00a60733          	add	a4,a2,a0
    1734:	00b78023          	sb	a1,0(a5)
    1738:	0785                	addi	a5,a5,1
    173a:	fee79de3          	bne	a5,a4,1734 <memset+0xc>
    173e:	8082                	ret

0000000000001740 <memcmp>:
    1740:	1101                	addi	sp,sp,-32
    1742:	ec06                	sd	ra,24(sp)
    1744:	e822                	sd	s0,16(sp)
    1746:	e426                	sd	s1,8(sp)
    1748:	e04a                	sd	s2,0(sp)
    174a:	892a                	mv	s2,a0
    174c:	842e                	mv	s0,a1
    174e:	84b2                	mv	s1,a2
    1750:	c915                	beqz	a0,1784 <memcmp+0x44>
    1752:	c5ad                	beqz	a1,17bc <memcmp+0x7c>
    1754:	fff60713          	addi	a4,a2,-1
    1758:	c645                	beqz	a2,1800 <memcmp+0xc0>
    175a:	87ca                	mv	a5,s2
    175c:	00190613          	addi	a2,s2,1
    1760:	963a                	add	a2,a2,a4
    1762:	0007c683          	lbu	a3,0(a5)
    1766:	00044703          	lbu	a4,0(s0)
    176a:	08e69463          	bne	a3,a4,17f2 <memcmp+0xb2>
    176e:	0785                	addi	a5,a5,1
    1770:	0405                	addi	s0,s0,1
    1772:	fec798e3          	bne	a5,a2,1762 <memcmp+0x22>
    1776:	4501                	li	a0,0
    1778:	60e2                	ld	ra,24(sp)
    177a:	6442                	ld	s0,16(sp)
    177c:	64a2                	ld	s1,8(sp)
    177e:	6902                	ld	s2,0(sp)
    1780:	6105                	addi	sp,sp,32
    1782:	8082                	ret
    1784:	4501                	li	a0,0
    1786:	da6d                	beqz	a2,1778 <memcmp+0x38>
    1788:	03200693          	li	a3,50
    178c:	00002637          	lui	a2,0x2
    1790:	1e860613          	addi	a2,a2,488 # 21e8 <crctab+0x400>
    1794:	000025b7          	lui	a1,0x2
    1798:	1f858593          	addi	a1,a1,504 # 21f8 <crctab+0x410>
    179c:	4509                	li	a0,2
    179e:	00000097          	auipc	ra,0x0
    17a2:	bbc080e7          	jalr	-1092(ra) # 135a <fprintf>
    17a6:	650d                	lui	a0,0x3
    17a8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17ac:	00000097          	auipc	ra,0x0
    17b0:	492080e7          	jalr	1170(ra) # 1c3e <exit>
    17b4:	fff48713          	addi	a4,s1,-1
    17b8:	f04d                	bnez	s0,175a <memcmp+0x1a>
    17ba:	a011                	j	17be <memcmp+0x7e>
    17bc:	c221                	beqz	a2,17fc <memcmp+0xbc>
    17be:	03300693          	li	a3,51
    17c2:	00002637          	lui	a2,0x2
    17c6:	1e860613          	addi	a2,a2,488 # 21e8 <crctab+0x400>
    17ca:	000025b7          	lui	a1,0x2
    17ce:	24058593          	addi	a1,a1,576 # 2240 <crctab+0x458>
    17d2:	4509                	li	a0,2
    17d4:	00000097          	auipc	ra,0x0
    17d8:	b86080e7          	jalr	-1146(ra) # 135a <fprintf>
    17dc:	650d                	lui	a0,0x3
    17de:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17e2:	00000097          	auipc	ra,0x0
    17e6:	45c080e7          	jalr	1116(ra) # 1c3e <exit>
    17ea:	fff48713          	addi	a4,s1,-1
    17ee:	4401                	li	s0,0
    17f0:	b7ad                	j	175a <memcmp+0x1a>
    17f2:	4505                	li	a0,1
    17f4:	f8d762e3          	bltu	a4,a3,1778 <memcmp+0x38>
    17f8:	557d                	li	a0,-1
    17fa:	bfbd                	j	1778 <memcmp+0x38>
    17fc:	4501                	li	a0,0
    17fe:	bfad                	j	1778 <memcmp+0x38>
    1800:	4501                	li	a0,0
    1802:	bf9d                	j	1778 <memcmp+0x38>

0000000000001804 <memcpy>:
    1804:	1101                	addi	sp,sp,-32
    1806:	ec06                	sd	ra,24(sp)
    1808:	e822                	sd	s0,16(sp)
    180a:	e426                	sd	s1,8(sp)
    180c:	e04a                	sd	s2,0(sp)
    180e:	84aa                	mv	s1,a0
    1810:	842e                	mv	s0,a1
    1812:	8932                	mv	s2,a2
    1814:	c51d                	beqz	a0,1842 <memcpy+0x3e>
    1816:	c1ad                	beqz	a1,1878 <memcpy+0x74>
    1818:	fff60693          	addi	a3,a2,-1
    181c:	ce01                	beqz	a2,1834 <memcpy+0x30>
    181e:	0685                	addi	a3,a3,1
    1820:	96a6                	add	a3,a3,s1
    1822:	87a6                	mv	a5,s1
    1824:	0405                	addi	s0,s0,1
    1826:	0785                	addi	a5,a5,1
    1828:	fff44703          	lbu	a4,-1(s0)
    182c:	fee78fa3          	sb	a4,-1(a5)
    1830:	fed79ae3          	bne	a5,a3,1824 <memcpy+0x20>
    1834:	8526                	mv	a0,s1
    1836:	60e2                	ld	ra,24(sp)
    1838:	6442                	ld	s0,16(sp)
    183a:	64a2                	ld	s1,8(sp)
    183c:	6902                	ld	s2,0(sp)
    183e:	6105                	addi	sp,sp,32
    1840:	8082                	ret
    1842:	da6d                	beqz	a2,1834 <memcpy+0x30>
    1844:	04000693          	li	a3,64
    1848:	00002637          	lui	a2,0x2
    184c:	1e860613          	addi	a2,a2,488 # 21e8 <crctab+0x400>
    1850:	000025b7          	lui	a1,0x2
    1854:	28858593          	addi	a1,a1,648 # 2288 <crctab+0x4a0>
    1858:	4509                	li	a0,2
    185a:	00000097          	auipc	ra,0x0
    185e:	b00080e7          	jalr	-1280(ra) # 135a <fprintf>
    1862:	650d                	lui	a0,0x3
    1864:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1868:	00000097          	auipc	ra,0x0
    186c:	3d6080e7          	jalr	982(ra) # 1c3e <exit>
    1870:	fff90693          	addi	a3,s2,-1
    1874:	f44d                	bnez	s0,181e <memcpy+0x1a>
    1876:	a011                	j	187a <memcpy+0x76>
    1878:	de55                	beqz	a2,1834 <memcpy+0x30>
    187a:	04100693          	li	a3,65
    187e:	00002637          	lui	a2,0x2
    1882:	1e860613          	addi	a2,a2,488 # 21e8 <crctab+0x400>
    1886:	000025b7          	lui	a1,0x2
    188a:	2d058593          	addi	a1,a1,720 # 22d0 <crctab+0x4e8>
    188e:	4509                	li	a0,2
    1890:	00000097          	auipc	ra,0x0
    1894:	aca080e7          	jalr	-1334(ra) # 135a <fprintf>
    1898:	650d                	lui	a0,0x3
    189a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    189e:	00000097          	auipc	ra,0x0
    18a2:	3a0080e7          	jalr	928(ra) # 1c3e <exit>
    18a6:	fff90693          	addi	a3,s2,-1
    18aa:	4401                	li	s0,0
    18ac:	bf8d                	j	181e <memcpy+0x1a>

00000000000018ae <itoa>:
    18ae:	1101                	addi	sp,sp,-32
    18b0:	ec06                	sd	ra,24(sp)
    18b2:	e822                	sd	s0,16(sp)
    18b4:	e426                	sd	s1,8(sp)
    18b6:	842a                	mv	s0,a0
    18b8:	41f5d71b          	sraiw	a4,a1,0x1f
    18bc:	00e5c7b3          	xor	a5,a1,a4
    18c0:	9f99                	subw	a5,a5,a4
    18c2:	84aa                	mv	s1,a0
    18c4:	862a                	mv	a2,a0
    18c6:	4681                	li	a3,0
    18c8:	4529                	li	a0,10
    18ca:	4825                	li	a6,9
    18cc:	88b6                	mv	a7,a3
    18ce:	2685                	addiw	a3,a3,1
    18d0:	02a7e73b          	remw	a4,a5,a0
    18d4:	0307071b          	addiw	a4,a4,48
    18d8:	00e60023          	sb	a4,0(a2)
    18dc:	873e                	mv	a4,a5
    18de:	02a7c7bb          	divw	a5,a5,a0
    18e2:	0605                	addi	a2,a2,1
    18e4:	fee844e3          	blt	a6,a4,18cc <itoa+0x1e>
    18e8:	0405c863          	bltz	a1,1938 <itoa+0x8a>
    18ec:	96a2                	add	a3,a3,s0
    18ee:	00068023          	sb	zero,0(a3)
    18f2:	8522                	mv	a0,s0
    18f4:	00000097          	auipc	ra,0x0
    18f8:	e14080e7          	jalr	-492(ra) # 1708 <strlen>
    18fc:	fff5071b          	addiw	a4,a0,-1
    1900:	02e05763          	blez	a4,192e <itoa+0x80>
    1904:	9722                	add	a4,a4,s0
    1906:	4681                	li	a3,0
    1908:	0004c783          	lbu	a5,0(s1)
    190c:	00074603          	lbu	a2,0(a4)
    1910:	00c48023          	sb	a2,0(s1)
    1914:	00f70023          	sb	a5,0(a4)
    1918:	0016879b          	addiw	a5,a3,1
    191c:	0007869b          	sext.w	a3,a5
    1920:	0485                	addi	s1,s1,1
    1922:	177d                	addi	a4,a4,-1
    1924:	fff7c793          	not	a5,a5
    1928:	9fa9                	addw	a5,a5,a0
    192a:	fcf6cfe3          	blt	a3,a5,1908 <itoa+0x5a>
    192e:	60e2                	ld	ra,24(sp)
    1930:	6442                	ld	s0,16(sp)
    1932:	64a2                	ld	s1,8(sp)
    1934:	6105                	addi	sp,sp,32
    1936:	8082                	ret
    1938:	96a2                	add	a3,a3,s0
    193a:	02d00793          	li	a5,45
    193e:	00f68023          	sb	a5,0(a3)
    1942:	0028869b          	addiw	a3,a7,2
    1946:	b75d                	j	18ec <itoa+0x3e>

0000000000001948 <atoi>:
    1948:	00054783          	lbu	a5,0(a0)
    194c:	02000713          	li	a4,32
    1950:	00e79763          	bne	a5,a4,195e <atoi+0x16>
    1954:	0505                	addi	a0,a0,1
    1956:	00054783          	lbu	a5,0(a0)
    195a:	fee78de3          	beq	a5,a4,1954 <atoi+0xc>
    195e:	02b00713          	li	a4,43
    1962:	04e78663          	beq	a5,a4,19ae <atoi+0x66>
    1966:	02d00713          	li	a4,45
    196a:	4805                	li	a6,1
    196c:	04e78463          	beq	a5,a4,19b4 <atoi+0x6c>
    1970:	00054683          	lbu	a3,0(a0)
    1974:	fd06879b          	addiw	a5,a3,-48
    1978:	0ff7f793          	andi	a5,a5,255
    197c:	4725                	li	a4,9
    197e:	02f76e63          	bltu	a4,a5,19ba <atoi+0x72>
    1982:	4601                	li	a2,0
    1984:	45a5                	li	a1,9
    1986:	0505                	addi	a0,a0,1
    1988:	0026179b          	slliw	a5,a2,0x2
    198c:	9fb1                	addw	a5,a5,a2
    198e:	0017979b          	slliw	a5,a5,0x1
    1992:	9fb5                	addw	a5,a5,a3
    1994:	fd07861b          	addiw	a2,a5,-48
    1998:	00054683          	lbu	a3,0(a0)
    199c:	fd06871b          	addiw	a4,a3,-48
    19a0:	0ff77713          	andi	a4,a4,255
    19a4:	fee5f1e3          	bgeu	a1,a4,1986 <atoi+0x3e>
    19a8:	02c8053b          	mulw	a0,a6,a2
    19ac:	8082                	ret
    19ae:	0505                	addi	a0,a0,1
    19b0:	4805                	li	a6,1
    19b2:	bf7d                	j	1970 <atoi+0x28>
    19b4:	0505                	addi	a0,a0,1
    19b6:	587d                	li	a6,-1
    19b8:	bf65                	j	1970 <atoi+0x28>
    19ba:	4601                	li	a2,0
    19bc:	b7f5                	j	19a8 <atoi+0x60>

00000000000019be <check_file_handle>:
    19be:	d8010113          	addi	sp,sp,-640
    19c2:	26113c23          	sd	ra,632(sp)
    19c6:	26813823          	sd	s0,624(sp)
    19ca:	26913423          	sd	s1,616(sp)
    19ce:	27213023          	sd	s2,608(sp)
    19d2:	25313c23          	sd	s3,600(sp)
    19d6:	25413823          	sd	s4,592(sp)
    19da:	25513423          	sd	s5,584(sp)
    19de:	25613023          	sd	s6,576(sp)
    19e2:	23713c23          	sd	s7,568(sp)
    19e6:	23813823          	sd	s8,560(sp)
    19ea:	23913423          	sd	s9,552(sp)
    19ee:	23a13023          	sd	s10,544(sp)
    19f2:	21b13c23          	sd	s11,536(sp)
    19f6:	8baa                	mv	s7,a0
    19f8:	8a2e                	mv	s4,a1
    19fa:	8c32                	mv	s8,a2
    19fc:	89b6                	mv	s3,a3
    19fe:	040c                	addi	a1,sp,512
    1a00:	00000097          	auipc	ra,0x0
    1a04:	28e080e7          	jalr	654(ra) # 1c8e <fstat>
    1a08:	20813603          	ld	a2,520(sp)
    1a0c:	03361163          	bne	a2,s3,1a2e <check_file_handle+0x70>
    1a10:	06098763          	beqz	s3,1a7e <check_file_handle+0xc0>
    1a14:	4901                	li	s2,0
    1a16:	20000a93          	li	s5,512
    1a1a:	00002cb7          	lui	s9,0x2
    1a1e:	00002db7          	lui	s11,0x2
    1a22:	6b0d                	lui	s6,0x3
    1a24:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a28:	00002d37          	lui	s10,0x2
    1a2c:	aa39                	j	1b4a <check_file_handle+0x18c>
    1a2e:	86ce                	mv	a3,s3
    1a30:	85d2                	mv	a1,s4
    1a32:	00002537          	lui	a0,0x2
    1a36:	31850513          	addi	a0,a0,792 # 2318 <crctab+0x530>
    1a3a:	00000097          	auipc	ra,0x0
    1a3e:	942080e7          	jalr	-1726(ra) # 137c <printf>
    1a42:	fc0999e3          	bnez	s3,1a14 <check_file_handle+0x56>
    1a46:	20813683          	ld	a3,520(sp)
    1a4a:	03368a63          	beq	a3,s3,1a7e <check_file_handle+0xc0>
    1a4e:	0a600813          	li	a6,166
    1a52:	000027b7          	lui	a5,0x2
    1a56:	1e878793          	addi	a5,a5,488 # 21e8 <crctab+0x400>
    1a5a:	874e                	mv	a4,s3
    1a5c:	8652                	mv	a2,s4
    1a5e:	000025b7          	lui	a1,0x2
    1a62:	3e858593          	addi	a1,a1,1000 # 23e8 <crctab+0x600>
    1a66:	4509                	li	a0,2
    1a68:	00000097          	auipc	ra,0x0
    1a6c:	8f2080e7          	jalr	-1806(ra) # 135a <fprintf>
    1a70:	650d                	lui	a0,0x3
    1a72:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a76:	00000097          	auipc	ra,0x0
    1a7a:	1c8080e7          	jalr	456(ra) # 1c3e <exit>
    1a7e:	85d2                	mv	a1,s4
    1a80:	00002537          	lui	a0,0x2
    1a84:	43050513          	addi	a0,a0,1072 # 2430 <crctab+0x648>
    1a88:	00000097          	auipc	ra,0x0
    1a8c:	8f4080e7          	jalr	-1804(ra) # 137c <printf>
    1a90:	27813083          	ld	ra,632(sp)
    1a94:	27013403          	ld	s0,624(sp)
    1a98:	26813483          	ld	s1,616(sp)
    1a9c:	26013903          	ld	s2,608(sp)
    1aa0:	25813983          	ld	s3,600(sp)
    1aa4:	25013a03          	ld	s4,592(sp)
    1aa8:	24813a83          	ld	s5,584(sp)
    1aac:	24013b03          	ld	s6,576(sp)
    1ab0:	23813b83          	ld	s7,568(sp)
    1ab4:	23013c03          	ld	s8,560(sp)
    1ab8:	22813c83          	ld	s9,552(sp)
    1abc:	22013d03          	ld	s10,544(sp)
    1ac0:	21813d83          	ld	s11,536(sp)
    1ac4:	28010113          	addi	sp,sp,640
    1ac8:	8082                	ret
    1aca:	09d00893          	li	a7,157
    1ace:	1e8c8813          	addi	a6,s9,488 # 21e8 <crctab+0x400>
    1ad2:	87aa                	mv	a5,a0
    1ad4:	8752                	mv	a4,s4
    1ad6:	86ca                	mv	a3,s2
    1ad8:	8622                	mv	a2,s0
    1ada:	348d8593          	addi	a1,s11,840 # 2348 <crctab+0x560>
    1ade:	4509                	li	a0,2
    1ae0:	00000097          	auipc	ra,0x0
    1ae4:	87a080e7          	jalr	-1926(ra) # 135a <fprintf>
    1ae8:	855a                	mv	a0,s6
    1aea:	00000097          	auipc	ra,0x0
    1aee:	154080e7          	jalr	340(ra) # 1c3e <exit>
    1af2:	a89d                	j	1b68 <check_file_handle+0x1aa>
    1af4:	00160593          	addi	a1,a2,1
    1af8:	0285f163          	bgeu	a1,s0,1b1a <check_file_handle+0x15c>
    1afc:	00c10733          	add	a4,sp,a2
    1b00:	00b487b3          	add	a5,s1,a1
    1b04:	00174683          	lbu	a3,1(a4)
    1b08:	0007c783          	lbu	a5,0(a5)
    1b0c:	00f68763          	beq	a3,a5,1b1a <check_file_handle+0x15c>
    1b10:	0585                	addi	a1,a1,1
    1b12:	0705                	addi	a4,a4,1
    1b14:	feb416e3          	bne	s0,a1,1b00 <check_file_handle+0x142>
    1b18:	85a2                	mv	a1,s0
    1b1a:	08100813          	li	a6,129
    1b1e:	1e8c8793          	addi	a5,s9,488
    1b22:	8752                	mv	a4,s4
    1b24:	012606b3          	add	a3,a2,s2
    1b28:	40c58633          	sub	a2,a1,a2
    1b2c:	390d0593          	addi	a1,s10,912 # 2390 <crctab+0x5a8>
    1b30:	4509                	li	a0,2
    1b32:	00000097          	auipc	ra,0x0
    1b36:	828080e7          	jalr	-2008(ra) # 135a <fprintf>
    1b3a:	855a                	mv	a0,s6
    1b3c:	00000097          	auipc	ra,0x0
    1b40:	102080e7          	jalr	258(ra) # 1c3e <exit>
    1b44:	9922                	add	s2,s2,s0
    1b46:	f13970e3          	bgeu	s2,s3,1a46 <check_file_handle+0x88>
    1b4a:	41298433          	sub	s0,s3,s2
    1b4e:	008af363          	bgeu	s5,s0,1b54 <check_file_handle+0x196>
    1b52:	8456                	mv	s0,s5
    1b54:	0004061b          	sext.w	a2,s0
    1b58:	858a                	mv	a1,sp
    1b5a:	855e                	mv	a0,s7
    1b5c:	00000097          	auipc	ra,0x0
    1b60:	10a080e7          	jalr	266(ra) # 1c66 <read>
    1b64:	f68513e3          	bne	a0,s0,1aca <check_file_handle+0x10c>
    1b68:	012c04b3          	add	s1,s8,s2
    1b6c:	8622                	mv	a2,s0
    1b6e:	85a6                	mv	a1,s1
    1b70:	850a                	mv	a0,sp
    1b72:	00000097          	auipc	ra,0x0
    1b76:	bce080e7          	jalr	-1074(ra) # 1740 <memcmp>
    1b7a:	d569                	beqz	a0,1b44 <check_file_handle+0x186>
    1b7c:	03298163          	beq	s3,s2,1b9e <check_file_handle+0x1e0>
    1b80:	870a                	mv	a4,sp
    1b82:	4601                	li	a2,0
    1b84:	00c487b3          	add	a5,s1,a2
    1b88:	00074683          	lbu	a3,0(a4)
    1b8c:	0007c783          	lbu	a5,0(a5)
    1b90:	f6f692e3          	bne	a3,a5,1af4 <check_file_handle+0x136>
    1b94:	0605                	addi	a2,a2,1
    1b96:	0705                	addi	a4,a4,1
    1b98:	fe8666e3          	bltu	a2,s0,1b84 <check_file_handle+0x1c6>
    1b9c:	bfa1                	j	1af4 <check_file_handle+0x136>
    1b9e:	4601                	li	a2,0
    1ba0:	4585                	li	a1,1
    1ba2:	bfa5                	j	1b1a <check_file_handle+0x15c>

0000000000001ba4 <check_file>:
    1ba4:	7179                	addi	sp,sp,-48
    1ba6:	f406                	sd	ra,40(sp)
    1ba8:	f022                	sd	s0,32(sp)
    1baa:	ec26                	sd	s1,24(sp)
    1bac:	e84a                	sd	s2,16(sp)
    1bae:	e44e                	sd	s3,8(sp)
    1bb0:	84aa                	mv	s1,a0
    1bb2:	892e                	mv	s2,a1
    1bb4:	89b2                	mv	s3,a2
    1bb6:	4581                	li	a1,0
    1bb8:	00000097          	auipc	ra,0x0
    1bbc:	0a6080e7          	jalr	166(ra) # 1c5e <open>
    1bc0:	842a                	mv	s0,a0
    1bc2:	4789                	li	a5,2
    1bc4:	02a7df63          	bge	a5,a0,1c02 <check_file+0x5e>
    1bc8:	86ce                	mv	a3,s3
    1bca:	864a                	mv	a2,s2
    1bcc:	85a6                	mv	a1,s1
    1bce:	8522                	mv	a0,s0
    1bd0:	00000097          	auipc	ra,0x0
    1bd4:	dee080e7          	jalr	-530(ra) # 19be <check_file_handle>
    1bd8:	85a6                	mv	a1,s1
    1bda:	00002537          	lui	a0,0x2
    1bde:	4b850513          	addi	a0,a0,1208 # 24b8 <crctab+0x6d0>
    1be2:	fffff097          	auipc	ra,0xfffff
    1be6:	79a080e7          	jalr	1946(ra) # 137c <printf>
    1bea:	8522                	mv	a0,s0
    1bec:	00000097          	auipc	ra,0x0
    1bf0:	09a080e7          	jalr	154(ra) # 1c86 <close>
    1bf4:	70a2                	ld	ra,40(sp)
    1bf6:	7402                	ld	s0,32(sp)
    1bf8:	64e2                	ld	s1,24(sp)
    1bfa:	6942                	ld	s2,16(sp)
    1bfc:	69a2                	ld	s3,8(sp)
    1bfe:	6145                	addi	sp,sp,48
    1c00:	8082                	ret
    1c02:	0ae00713          	li	a4,174
    1c06:	000026b7          	lui	a3,0x2
    1c0a:	1e868693          	addi	a3,a3,488 # 21e8 <crctab+0x400>
    1c0e:	8626                	mv	a2,s1
    1c10:	000025b7          	lui	a1,0x2
    1c14:	45058593          	addi	a1,a1,1104 # 2450 <crctab+0x668>
    1c18:	4509                	li	a0,2
    1c1a:	fffff097          	auipc	ra,0xfffff
    1c1e:	740080e7          	jalr	1856(ra) # 135a <fprintf>
    1c22:	650d                	lui	a0,0x3
    1c24:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c28:	00000097          	auipc	ra,0x0
    1c2c:	016080e7          	jalr	22(ra) # 1c3e <exit>
    1c30:	bf61                	j	1bc8 <check_file+0x24>

0000000000001c32 <r_sp>:
    1c32:	850a                	mv	a0,sp
    1c34:	8082                	ret

0000000000001c36 <halt>:
    1c36:	4885                	li	a7,1
    1c38:	00000073          	ecall
    1c3c:	8082                	ret

0000000000001c3e <exit>:
    1c3e:	4889                	li	a7,2
    1c40:	00000073          	ecall
    1c44:	8082                	ret

0000000000001c46 <exec>:
    1c46:	488d                	li	a7,3
    1c48:	00000073          	ecall
    1c4c:	8082                	ret

0000000000001c4e <wait>:
    1c4e:	4891                	li	a7,4
    1c50:	00000073          	ecall
    1c54:	8082                	ret

0000000000001c56 <remove>:
    1c56:	4895                	li	a7,5
    1c58:	00000073          	ecall
    1c5c:	8082                	ret

0000000000001c5e <open>:
    1c5e:	4899                	li	a7,6
    1c60:	00000073          	ecall
    1c64:	8082                	ret

0000000000001c66 <read>:
    1c66:	489d                	li	a7,7
    1c68:	00000073          	ecall
    1c6c:	8082                	ret

0000000000001c6e <write>:
    1c6e:	48a1                	li	a7,8
    1c70:	00000073          	ecall
    1c74:	8082                	ret

0000000000001c76 <seek>:
    1c76:	48a5                	li	a7,9
    1c78:	00000073          	ecall
    1c7c:	8082                	ret

0000000000001c7e <tell>:
    1c7e:	48a9                	li	a7,10
    1c80:	00000073          	ecall
    1c84:	8082                	ret

0000000000001c86 <close>:
    1c86:	48ad                	li	a7,11
    1c88:	00000073          	ecall
    1c8c:	8082                	ret

0000000000001c8e <fstat>:
    1c8e:	48b1                	li	a7,12
    1c90:	00000073          	ecall
    1c94:	8082                	ret

0000000000001c96 <mmap>:
    1c96:	48b5                	li	a7,13
    1c98:	00000073          	ecall
    1c9c:	8082                	ret

0000000000001c9e <munmap>:
    1c9e:	48b9                	li	a7,14
    1ca0:	00000073          	ecall
    1ca4:	8082                	ret

0000000000001ca6 <chdir>:
    1ca6:	48bd                	li	a7,15
    1ca8:	00000073          	ecall
    1cac:	8082                	ret

0000000000001cae <mkdir>:
    1cae:	48c1                	li	a7,16
    1cb0:	00000073          	ecall
    1cb4:	8082                	ret
