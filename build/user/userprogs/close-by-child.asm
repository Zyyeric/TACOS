
build/user/userprogs/close-by-child:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7139                	addi	sp,sp,-64
    1002:	fc06                	sd	ra,56(sp)
    1004:	f822                	sd	s0,48(sp)
    1006:	f426                	sd	s1,40(sp)
    1008:	4589                	li	a1,2
    100a:	00002537          	lui	a0,0x2
    100e:	cd050513          	addi	a0,a0,-816 # 1cd0 <mkdir+0x16>
    1012:	00001097          	auipc	ra,0x1
    1016:	c58080e7          	jalr	-936(ra) # 1c6a <open>
    101a:	842a                	mv	s0,a0
    101c:	4785                	li	a5,1
    101e:	06a7d363          	bge	a5,a0,1084 <main+0x84>
    1022:	0824                	addi	s1,sp,24
    1024:	85a2                	mv	a1,s0
    1026:	8526                	mv	a0,s1
    1028:	00001097          	auipc	ra,0x1
    102c:	892080e7          	jalr	-1902(ra) # 18ba <itoa>
    1030:	00002537          	lui	a0,0x2
    1034:	d5050793          	addi	a5,a0,-688 # 1d50 <mkdir+0x96>
    1038:	e03e                	sd	a5,0(sp)
    103a:	e426                	sd	s1,8(sp)
    103c:	e802                	sd	zero,16(sp)
    103e:	858a                	mv	a1,sp
    1040:	d5050513          	addi	a0,a0,-688
    1044:	00001097          	auipc	ra,0x1
    1048:	c0e080e7          	jalr	-1010(ra) # 1c52 <exec>
    104c:	00001097          	auipc	ra,0x1
    1050:	c0e080e7          	jalr	-1010(ra) # 1c5a <wait>
    1054:	04000793          	li	a5,64
    1058:	04f51c63          	bne	a0,a5,10b0 <main+0xb0>
    105c:	0ef00693          	li	a3,239
    1060:	00003637          	lui	a2,0x3
    1064:	00060613          	mv	a2,a2
    1068:	000025b7          	lui	a1,0x2
    106c:	cd058593          	addi	a1,a1,-816 # 1cd0 <mkdir+0x16>
    1070:	8522                	mv	a0,s0
    1072:	00001097          	auipc	ra,0x1
    1076:	958080e7          	jalr	-1704(ra) # 19ca <check_file_handle>
    107a:	70e2                	ld	ra,56(sp)
    107c:	7442                	ld	s0,48(sp)
    107e:	74a2                	ld	s1,40(sp)
    1080:	6121                	addi	sp,sp,64
    1082:	8082                	ret
    1084:	46b1                	li	a3,12
    1086:	00002637          	lui	a2,0x2
    108a:	ce060613          	addi	a2,a2,-800 # 1ce0 <mkdir+0x26>
    108e:	000025b7          	lui	a1,0x2
    1092:	d0058593          	addi	a1,a1,-768 # 1d00 <mkdir+0x46>
    1096:	4509                	li	a0,2
    1098:	00000097          	auipc	ra,0x0
    109c:	2ce080e7          	jalr	718(ra) # 1366 <fprintf>
    10a0:	650d                	lui	a0,0x3
    10a2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10a6:	00001097          	auipc	ra,0x1
    10aa:	ba4080e7          	jalr	-1116(ra) # 1c4a <exit>
    10ae:	bf95                	j	1022 <main+0x22>
    10b0:	46c9                	li	a3,18
    10b2:	00002637          	lui	a2,0x2
    10b6:	ce060613          	addi	a2,a2,-800 # 1ce0 <mkdir+0x26>
    10ba:	000025b7          	lui	a1,0x2
    10be:	d6058593          	addi	a1,a1,-672 # 1d60 <mkdir+0xa6>
    10c2:	4509                	li	a0,2
    10c4:	00000097          	auipc	ra,0x0
    10c8:	2a2080e7          	jalr	674(ra) # 1366 <fprintf>
    10cc:	650d                	lui	a0,0x3
    10ce:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10d2:	00001097          	auipc	ra,0x1
    10d6:	b78080e7          	jalr	-1160(ra) # 1c4a <exit>
    10da:	b749                	j	105c <main+0x5c>

00000000000010dc <putc>:
    10dc:	1101                	addi	sp,sp,-32
    10de:	ec06                	sd	ra,24(sp)
    10e0:	00b107a3          	sb	a1,15(sp)
    10e4:	4605                	li	a2,1
    10e6:	00f10593          	addi	a1,sp,15
    10ea:	00001097          	auipc	ra,0x1
    10ee:	b90080e7          	jalr	-1136(ra) # 1c7a <write>
    10f2:	60e2                	ld	ra,24(sp)
    10f4:	6105                	addi	sp,sp,32
    10f6:	8082                	ret

00000000000010f8 <printint>:
    10f8:	7179                	addi	sp,sp,-48
    10fa:	f406                	sd	ra,40(sp)
    10fc:	f022                	sd	s0,32(sp)
    10fe:	ec26                	sd	s1,24(sp)
    1100:	e84a                	sd	s2,16(sp)
    1102:	84aa                	mv	s1,a0
    1104:	c299                	beqz	a3,110a <printint+0x12>
    1106:	0805c363          	bltz	a1,118c <printint+0x94>
    110a:	2581                	sext.w	a1,a1
    110c:	4881                	li	a7,0
    110e:	868a                	mv	a3,sp
    1110:	4701                	li	a4,0
    1112:	2601                	sext.w	a2,a2
    1114:	00002537          	lui	a0,0x2
    1118:	db850513          	addi	a0,a0,-584 # 1db8 <digits>
    111c:	883a                	mv	a6,a4
    111e:	2705                	addiw	a4,a4,1
    1120:	02c5f7bb          	remuw	a5,a1,a2
    1124:	1782                	slli	a5,a5,0x20
    1126:	9381                	srli	a5,a5,0x20
    1128:	97aa                	add	a5,a5,a0
    112a:	0007c783          	lbu	a5,0(a5)
    112e:	00f68023          	sb	a5,0(a3)
    1132:	0005879b          	sext.w	a5,a1
    1136:	02c5d5bb          	divuw	a1,a1,a2
    113a:	0685                	addi	a3,a3,1
    113c:	fec7f0e3          	bgeu	a5,a2,111c <printint+0x24>
    1140:	00088a63          	beqz	a7,1154 <printint+0x5c>
    1144:	081c                	addi	a5,sp,16
    1146:	973e                	add	a4,a4,a5
    1148:	02d00793          	li	a5,45
    114c:	fef70823          	sb	a5,-16(a4)
    1150:	0028071b          	addiw	a4,a6,2
    1154:	02e05663          	blez	a4,1180 <printint+0x88>
    1158:	00e10433          	add	s0,sp,a4
    115c:	fff10913          	addi	s2,sp,-1
    1160:	993a                	add	s2,s2,a4
    1162:	377d                	addiw	a4,a4,-1
    1164:	1702                	slli	a4,a4,0x20
    1166:	9301                	srli	a4,a4,0x20
    1168:	40e90933          	sub	s2,s2,a4
    116c:	fff44583          	lbu	a1,-1(s0)
    1170:	8526                	mv	a0,s1
    1172:	00000097          	auipc	ra,0x0
    1176:	f6a080e7          	jalr	-150(ra) # 10dc <putc>
    117a:	147d                	addi	s0,s0,-1
    117c:	ff2418e3          	bne	s0,s2,116c <printint+0x74>
    1180:	70a2                	ld	ra,40(sp)
    1182:	7402                	ld	s0,32(sp)
    1184:	64e2                	ld	s1,24(sp)
    1186:	6942                	ld	s2,16(sp)
    1188:	6145                	addi	sp,sp,48
    118a:	8082                	ret
    118c:	40b005bb          	negw	a1,a1
    1190:	4885                	li	a7,1
    1192:	bfb5                	j	110e <printint+0x16>

0000000000001194 <vprintf>:
    1194:	7159                	addi	sp,sp,-112
    1196:	f486                	sd	ra,104(sp)
    1198:	f0a2                	sd	s0,96(sp)
    119a:	eca6                	sd	s1,88(sp)
    119c:	e8ca                	sd	s2,80(sp)
    119e:	e4ce                	sd	s3,72(sp)
    11a0:	e0d2                	sd	s4,64(sp)
    11a2:	fc56                	sd	s5,56(sp)
    11a4:	f85a                	sd	s6,48(sp)
    11a6:	f45e                	sd	s7,40(sp)
    11a8:	f062                	sd	s8,32(sp)
    11aa:	ec66                	sd	s9,24(sp)
    11ac:	e86a                	sd	s10,16(sp)
    11ae:	e46e                	sd	s11,8(sp)
    11b0:	0005c483          	lbu	s1,0(a1)
    11b4:	18048a63          	beqz	s1,1348 <vprintf+0x1b4>
    11b8:	8a2a                	mv	s4,a0
    11ba:	8ab2                	mv	s5,a2
    11bc:	00158413          	addi	s0,a1,1
    11c0:	4901                	li	s2,0
    11c2:	02500993          	li	s3,37
    11c6:	06400b93          	li	s7,100
    11ca:	06c00c13          	li	s8,108
    11ce:	07800c93          	li	s9,120
    11d2:	07000d13          	li	s10,112
    11d6:	00002db7          	lui	s11,0x2
    11da:	00002b37          	lui	s6,0x2
    11de:	db8b0b13          	addi	s6,s6,-584 # 1db8 <digits>
    11e2:	a839                	j	1200 <vprintf+0x6c>
    11e4:	85a6                	mv	a1,s1
    11e6:	8552                	mv	a0,s4
    11e8:	00000097          	auipc	ra,0x0
    11ec:	ef4080e7          	jalr	-268(ra) # 10dc <putc>
    11f0:	a019                	j	11f6 <vprintf+0x62>
    11f2:	01390f63          	beq	s2,s3,1210 <vprintf+0x7c>
    11f6:	0405                	addi	s0,s0,1
    11f8:	fff44483          	lbu	s1,-1(s0)
    11fc:	14048663          	beqz	s1,1348 <vprintf+0x1b4>
    1200:	0004879b          	sext.w	a5,s1
    1204:	fe0917e3          	bnez	s2,11f2 <vprintf+0x5e>
    1208:	fd379ee3          	bne	a5,s3,11e4 <vprintf+0x50>
    120c:	893e                	mv	s2,a5
    120e:	b7e5                	j	11f6 <vprintf+0x62>
    1210:	05778063          	beq	a5,s7,1250 <vprintf+0xbc>
    1214:	05878c63          	beq	a5,s8,126c <vprintf+0xd8>
    1218:	07978863          	beq	a5,s9,1288 <vprintf+0xf4>
    121c:	09a78463          	beq	a5,s10,12a4 <vprintf+0x110>
    1220:	07300713          	li	a4,115
    1224:	0ce78263          	beq	a5,a4,12e8 <vprintf+0x154>
    1228:	06300713          	li	a4,99
    122c:	0ee78763          	beq	a5,a4,131a <vprintf+0x186>
    1230:	11378163          	beq	a5,s3,1332 <vprintf+0x19e>
    1234:	85ce                	mv	a1,s3
    1236:	8552                	mv	a0,s4
    1238:	00000097          	auipc	ra,0x0
    123c:	ea4080e7          	jalr	-348(ra) # 10dc <putc>
    1240:	85a6                	mv	a1,s1
    1242:	8552                	mv	a0,s4
    1244:	00000097          	auipc	ra,0x0
    1248:	e98080e7          	jalr	-360(ra) # 10dc <putc>
    124c:	4901                	li	s2,0
    124e:	b765                	j	11f6 <vprintf+0x62>
    1250:	008a8493          	addi	s1,s5,8
    1254:	4685                	li	a3,1
    1256:	4629                	li	a2,10
    1258:	000aa583          	lw	a1,0(s5)
    125c:	8552                	mv	a0,s4
    125e:	00000097          	auipc	ra,0x0
    1262:	e9a080e7          	jalr	-358(ra) # 10f8 <printint>
    1266:	8aa6                	mv	s5,s1
    1268:	4901                	li	s2,0
    126a:	b771                	j	11f6 <vprintf+0x62>
    126c:	008a8493          	addi	s1,s5,8
    1270:	4681                	li	a3,0
    1272:	4629                	li	a2,10
    1274:	000aa583          	lw	a1,0(s5)
    1278:	8552                	mv	a0,s4
    127a:	00000097          	auipc	ra,0x0
    127e:	e7e080e7          	jalr	-386(ra) # 10f8 <printint>
    1282:	8aa6                	mv	s5,s1
    1284:	4901                	li	s2,0
    1286:	bf85                	j	11f6 <vprintf+0x62>
    1288:	008a8493          	addi	s1,s5,8
    128c:	4681                	li	a3,0
    128e:	4641                	li	a2,16
    1290:	000aa583          	lw	a1,0(s5)
    1294:	8552                	mv	a0,s4
    1296:	00000097          	auipc	ra,0x0
    129a:	e62080e7          	jalr	-414(ra) # 10f8 <printint>
    129e:	8aa6                	mv	s5,s1
    12a0:	4901                	li	s2,0
    12a2:	bf91                	j	11f6 <vprintf+0x62>
    12a4:	008a8913          	addi	s2,s5,8
    12a8:	000aba83          	ld	s5,0(s5)
    12ac:	03000593          	li	a1,48
    12b0:	8552                	mv	a0,s4
    12b2:	00000097          	auipc	ra,0x0
    12b6:	e2a080e7          	jalr	-470(ra) # 10dc <putc>
    12ba:	85e6                	mv	a1,s9
    12bc:	8552                	mv	a0,s4
    12be:	00000097          	auipc	ra,0x0
    12c2:	e1e080e7          	jalr	-482(ra) # 10dc <putc>
    12c6:	44c1                	li	s1,16
    12c8:	03cad793          	srli	a5,s5,0x3c
    12cc:	97da                	add	a5,a5,s6
    12ce:	0007c583          	lbu	a1,0(a5)
    12d2:	8552                	mv	a0,s4
    12d4:	00000097          	auipc	ra,0x0
    12d8:	e08080e7          	jalr	-504(ra) # 10dc <putc>
    12dc:	0a92                	slli	s5,s5,0x4
    12de:	34fd                	addiw	s1,s1,-1
    12e0:	f4e5                	bnez	s1,12c8 <vprintf+0x134>
    12e2:	8aca                	mv	s5,s2
    12e4:	4901                	li	s2,0
    12e6:	bf01                	j	11f6 <vprintf+0x62>
    12e8:	008a8913          	addi	s2,s5,8
    12ec:	000ab483          	ld	s1,0(s5)
    12f0:	c085                	beqz	s1,1310 <vprintf+0x17c>
    12f2:	0004c583          	lbu	a1,0(s1)
    12f6:	c5b1                	beqz	a1,1342 <vprintf+0x1ae>
    12f8:	8552                	mv	a0,s4
    12fa:	00000097          	auipc	ra,0x0
    12fe:	de2080e7          	jalr	-542(ra) # 10dc <putc>
    1302:	0485                	addi	s1,s1,1
    1304:	0004c583          	lbu	a1,0(s1)
    1308:	f9e5                	bnez	a1,12f8 <vprintf+0x164>
    130a:	8aca                	mv	s5,s2
    130c:	4901                	li	s2,0
    130e:	b5e5                	j	11f6 <vprintf+0x62>
    1310:	db0d8493          	addi	s1,s11,-592 # 1db0 <mkdir+0xf6>
    1314:	02800593          	li	a1,40
    1318:	b7c5                	j	12f8 <vprintf+0x164>
    131a:	008a8493          	addi	s1,s5,8
    131e:	000ac583          	lbu	a1,0(s5)
    1322:	8552                	mv	a0,s4
    1324:	00000097          	auipc	ra,0x0
    1328:	db8080e7          	jalr	-584(ra) # 10dc <putc>
    132c:	8aa6                	mv	s5,s1
    132e:	4901                	li	s2,0
    1330:	b5d9                	j	11f6 <vprintf+0x62>
    1332:	85ce                	mv	a1,s3
    1334:	8552                	mv	a0,s4
    1336:	00000097          	auipc	ra,0x0
    133a:	da6080e7          	jalr	-602(ra) # 10dc <putc>
    133e:	4901                	li	s2,0
    1340:	bd5d                	j	11f6 <vprintf+0x62>
    1342:	8aca                	mv	s5,s2
    1344:	4901                	li	s2,0
    1346:	bd45                	j	11f6 <vprintf+0x62>
    1348:	70a6                	ld	ra,104(sp)
    134a:	7406                	ld	s0,96(sp)
    134c:	64e6                	ld	s1,88(sp)
    134e:	6946                	ld	s2,80(sp)
    1350:	69a6                	ld	s3,72(sp)
    1352:	6a06                	ld	s4,64(sp)
    1354:	7ae2                	ld	s5,56(sp)
    1356:	7b42                	ld	s6,48(sp)
    1358:	7ba2                	ld	s7,40(sp)
    135a:	7c02                	ld	s8,32(sp)
    135c:	6ce2                	ld	s9,24(sp)
    135e:	6d42                	ld	s10,16(sp)
    1360:	6da2                	ld	s11,8(sp)
    1362:	6165                	addi	sp,sp,112
    1364:	8082                	ret

0000000000001366 <fprintf>:
    1366:	715d                	addi	sp,sp,-80
    1368:	ec06                	sd	ra,24(sp)
    136a:	f032                	sd	a2,32(sp)
    136c:	f436                	sd	a3,40(sp)
    136e:	f83a                	sd	a4,48(sp)
    1370:	fc3e                	sd	a5,56(sp)
    1372:	e0c2                	sd	a6,64(sp)
    1374:	e4c6                	sd	a7,72(sp)
    1376:	1010                	addi	a2,sp,32
    1378:	e432                	sd	a2,8(sp)
    137a:	00000097          	auipc	ra,0x0
    137e:	e1a080e7          	jalr	-486(ra) # 1194 <vprintf>
    1382:	60e2                	ld	ra,24(sp)
    1384:	6161                	addi	sp,sp,80
    1386:	8082                	ret

0000000000001388 <printf>:
    1388:	711d                	addi	sp,sp,-96
    138a:	ec06                	sd	ra,24(sp)
    138c:	f42e                	sd	a1,40(sp)
    138e:	f832                	sd	a2,48(sp)
    1390:	fc36                	sd	a3,56(sp)
    1392:	e0ba                	sd	a4,64(sp)
    1394:	e4be                	sd	a5,72(sp)
    1396:	e8c2                	sd	a6,80(sp)
    1398:	ecc6                	sd	a7,88(sp)
    139a:	1030                	addi	a2,sp,40
    139c:	e432                	sd	a2,8(sp)
    139e:	85aa                	mv	a1,a0
    13a0:	4505                	li	a0,1
    13a2:	00000097          	auipc	ra,0x0
    13a6:	df2080e7          	jalr	-526(ra) # 1194 <vprintf>
    13aa:	60e2                	ld	ra,24(sp)
    13ac:	6125                	addi	sp,sp,96
    13ae:	8082                	ret

00000000000013b0 <cksum>:
    13b0:	cdb1                	beqz	a1,140c <cksum+0x5c>
    13b2:	00b50833          	add	a6,a0,a1
    13b6:	4781                	li	a5,0
    13b8:	00002637          	lui	a2,0x2
    13bc:	dd060613          	addi	a2,a2,-560 # 1dd0 <crctab>
    13c0:	0505                	addi	a0,a0,1
    13c2:	0087969b          	slliw	a3,a5,0x8
    13c6:	0187d71b          	srliw	a4,a5,0x18
    13ca:	fff54783          	lbu	a5,-1(a0)
    13ce:	8f3d                	xor	a4,a4,a5
    13d0:	1702                	slli	a4,a4,0x20
    13d2:	9301                	srli	a4,a4,0x20
    13d4:	070a                	slli	a4,a4,0x2
    13d6:	9732                	add	a4,a4,a2
    13d8:	431c                	lw	a5,0(a4)
    13da:	8fb5                	xor	a5,a5,a3
    13dc:	2781                	sext.w	a5,a5
    13de:	fea811e3          	bne	a6,a0,13c0 <cksum+0x10>
    13e2:	00002637          	lui	a2,0x2
    13e6:	dd060613          	addi	a2,a2,-560 # 1dd0 <crctab>
    13ea:	0ff5f693          	andi	a3,a1,255
    13ee:	81a1                	srli	a1,a1,0x8
    13f0:	0087951b          	slliw	a0,a5,0x8
    13f4:	0187d71b          	srliw	a4,a5,0x18
    13f8:	8f35                	xor	a4,a4,a3
    13fa:	070a                	slli	a4,a4,0x2
    13fc:	9732                	add	a4,a4,a2
    13fe:	431c                	lw	a5,0(a4)
    1400:	8fa9                	xor	a5,a5,a0
    1402:	2781                	sext.w	a5,a5
    1404:	f1fd                	bnez	a1,13ea <cksum+0x3a>
    1406:	fff7c513          	not	a0,a5
    140a:	8082                	ret
    140c:	4781                	li	a5,0
    140e:	bfe5                	j	1406 <cksum+0x56>

0000000000001410 <swap_bytes>:
    1410:	ce19                	beqz	a2,142e <swap_bytes+0x1e>
    1412:	87aa                	mv	a5,a0
    1414:	962a                	add	a2,a2,a0
    1416:	0007c703          	lbu	a4,0(a5)
    141a:	0005c683          	lbu	a3,0(a1)
    141e:	00d78023          	sb	a3,0(a5)
    1422:	00e58023          	sb	a4,0(a1)
    1426:	0785                	addi	a5,a5,1
    1428:	0585                	addi	a1,a1,1
    142a:	fec796e3          	bne	a5,a2,1416 <swap_bytes+0x6>
    142e:	8082                	ret

0000000000001430 <random_init>:
    1430:	7139                	addi	sp,sp,-64
    1432:	fc06                	sd	ra,56(sp)
    1434:	f822                	sd	s0,48(sp)
    1436:	f426                	sd	s1,40(sp)
    1438:	f04a                	sd	s2,32(sp)
    143a:	ec4e                	sd	s3,24(sp)
    143c:	e852                	sd	s4,16(sp)
    143e:	c62a                	sw	a0,12(sp)
    1440:	000037b7          	lui	a5,0x3
    1444:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    1448:	eca5                	bnez	s1,14c0 <random_init+0x90>
    144a:	00003737          	lui	a4,0x3
    144e:	10070913          	addi	s2,a4,256 # 3100 <s>
    1452:	10070713          	addi	a4,a4,256
    1456:	87a6                	mv	a5,s1
    1458:	10000693          	li	a3,256
    145c:	00f70023          	sb	a5,0(a4)
    1460:	2785                	addiw	a5,a5,1
    1462:	0705                	addi	a4,a4,1
    1464:	fed79ce3          	bne	a5,a3,145c <random_init+0x2c>
    1468:	4401                	li	s0,0
    146a:	000039b7          	lui	s3,0x3
    146e:	10098993          	addi	s3,s3,256 # 3100 <s>
    1472:	10000a13          	li	s4,256
    1476:	0034f793          	andi	a5,s1,3
    147a:	0818                	addi	a4,sp,16
    147c:	97ba                	add	a5,a5,a4
    147e:	ffc7c783          	lbu	a5,-4(a5)
    1482:	00094703          	lbu	a4,0(s2)
    1486:	9fb9                	addw	a5,a5,a4
    1488:	9c3d                	addw	s0,s0,a5
    148a:	0ff47413          	andi	s0,s0,255
    148e:	4605                	li	a2,1
    1490:	008985b3          	add	a1,s3,s0
    1494:	854a                	mv	a0,s2
    1496:	00000097          	auipc	ra,0x0
    149a:	f7a080e7          	jalr	-134(ra) # 1410 <swap_bytes>
    149e:	2485                	addiw	s1,s1,1
    14a0:	0905                	addi	s2,s2,1
    14a2:	fd449ae3          	bne	s1,s4,1476 <random_init+0x46>
    14a6:	000037b7          	lui	a5,0x3
    14aa:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    14ae:	000037b7          	lui	a5,0x3
    14b2:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    14b6:	000037b7          	lui	a5,0x3
    14ba:	4705                	li	a4,1
    14bc:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    14c0:	70e2                	ld	ra,56(sp)
    14c2:	7442                	ld	s0,48(sp)
    14c4:	74a2                	ld	s1,40(sp)
    14c6:	7902                	ld	s2,32(sp)
    14c8:	69e2                	ld	s3,24(sp)
    14ca:	6a42                	ld	s4,16(sp)
    14cc:	6121                	addi	sp,sp,64
    14ce:	8082                	ret

00000000000014d0 <random_bytes>:
    14d0:	7139                	addi	sp,sp,-64
    14d2:	fc06                	sd	ra,56(sp)
    14d4:	f822                	sd	s0,48(sp)
    14d6:	f426                	sd	s1,40(sp)
    14d8:	f04a                	sd	s2,32(sp)
    14da:	ec4e                	sd	s3,24(sp)
    14dc:	e852                	sd	s4,16(sp)
    14de:	e456                	sd	s5,8(sp)
    14e0:	e05a                	sd	s6,0(sp)
    14e2:	892a                	mv	s2,a0
    14e4:	8aae                	mv	s5,a1
    14e6:	000037b7          	lui	a5,0x3
    14ea:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    14ee:	c3c1                	beqz	a5,156e <random_bytes+0x9e>
    14f0:	060a8563          	beqz	s5,155a <random_bytes+0x8a>
    14f4:	9aca                	add	s5,s5,s2
    14f6:	00003a37          	lui	s4,0x3
    14fa:	000034b7          	lui	s1,0x3
    14fe:	10048493          	addi	s1,s1,256 # 3100 <s>
    1502:	000039b7          	lui	s3,0x3
    1506:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    150a:	2505                	addiw	a0,a0,1
    150c:	0ff57513          	andi	a0,a0,255
    1510:	0eaa0aa3          	sb	a0,245(s4)
    1514:	00a48b33          	add	s6,s1,a0
    1518:	000b4403          	lbu	s0,0(s6)
    151c:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1520:	9c3d                	addw	s0,s0,a5
    1522:	0ff47413          	andi	s0,s0,255
    1526:	0e898a23          	sb	s0,244(s3)
    152a:	4605                	li	a2,1
    152c:	008485b3          	add	a1,s1,s0
    1530:	855a                	mv	a0,s6
    1532:	00000097          	auipc	ra,0x0
    1536:	ede080e7          	jalr	-290(ra) # 1410 <swap_bytes>
    153a:	9426                	add	s0,s0,s1
    153c:	000b4783          	lbu	a5,0(s6)
    1540:	00044703          	lbu	a4,0(s0)
    1544:	9fb9                	addw	a5,a5,a4
    1546:	0ff7f793          	andi	a5,a5,255
    154a:	97a6                	add	a5,a5,s1
    154c:	0007c783          	lbu	a5,0(a5)
    1550:	00f90023          	sb	a5,0(s2)
    1554:	0905                	addi	s2,s2,1
    1556:	fb2a98e3          	bne	s5,s2,1506 <random_bytes+0x36>
    155a:	70e2                	ld	ra,56(sp)
    155c:	7442                	ld	s0,48(sp)
    155e:	74a2                	ld	s1,40(sp)
    1560:	7902                	ld	s2,32(sp)
    1562:	69e2                	ld	s3,24(sp)
    1564:	6a42                	ld	s4,16(sp)
    1566:	6aa2                	ld	s5,8(sp)
    1568:	6b02                	ld	s6,0(sp)
    156a:	6121                	addi	sp,sp,64
    156c:	8082                	ret
    156e:	4501                	li	a0,0
    1570:	00000097          	auipc	ra,0x0
    1574:	ec0080e7          	jalr	-320(ra) # 1430 <random_init>
    1578:	bfa5                	j	14f0 <random_bytes+0x20>

000000000000157a <random_ulong>:
    157a:	1101                	addi	sp,sp,-32
    157c:	ec06                	sd	ra,24(sp)
    157e:	45a1                	li	a1,8
    1580:	0028                	addi	a0,sp,8
    1582:	00000097          	auipc	ra,0x0
    1586:	f4e080e7          	jalr	-178(ra) # 14d0 <random_bytes>
    158a:	6522                	ld	a0,8(sp)
    158c:	60e2                	ld	ra,24(sp)
    158e:	6105                	addi	sp,sp,32
    1590:	8082                	ret

0000000000001592 <shuffle>:
    1592:	c9b9                	beqz	a1,15e8 <shuffle+0x56>
    1594:	7179                	addi	sp,sp,-48
    1596:	f406                	sd	ra,40(sp)
    1598:	f022                	sd	s0,32(sp)
    159a:	ec26                	sd	s1,24(sp)
    159c:	e84a                	sd	s2,16(sp)
    159e:	e44e                	sd	s3,8(sp)
    15a0:	e052                	sd	s4,0(sp)
    15a2:	8a2a                	mv	s4,a0
    15a4:	89ae                	mv	s3,a1
    15a6:	84b2                	mv	s1,a2
    15a8:	892a                	mv	s2,a0
    15aa:	4401                	li	s0,0
    15ac:	00000097          	auipc	ra,0x0
    15b0:	fce080e7          	jalr	-50(ra) # 157a <random_ulong>
    15b4:	408985b3          	sub	a1,s3,s0
    15b8:	02b575b3          	remu	a1,a0,a1
    15bc:	95a2                	add	a1,a1,s0
    15be:	029585b3          	mul	a1,a1,s1
    15c2:	8626                	mv	a2,s1
    15c4:	95d2                	add	a1,a1,s4
    15c6:	854a                	mv	a0,s2
    15c8:	00000097          	auipc	ra,0x0
    15cc:	e48080e7          	jalr	-440(ra) # 1410 <swap_bytes>
    15d0:	0405                	addi	s0,s0,1
    15d2:	9926                	add	s2,s2,s1
    15d4:	fc899ce3          	bne	s3,s0,15ac <shuffle+0x1a>
    15d8:	70a2                	ld	ra,40(sp)
    15da:	7402                	ld	s0,32(sp)
    15dc:	64e2                	ld	s1,24(sp)
    15de:	6942                	ld	s2,16(sp)
    15e0:	69a2                	ld	s3,8(sp)
    15e2:	6a02                	ld	s4,0(sp)
    15e4:	6145                	addi	sp,sp,48
    15e6:	8082                	ret
    15e8:	8082                	ret

00000000000015ea <arc4_init>:
    15ea:	100500a3          	sb	zero,257(a0)
    15ee:	10050023          	sb	zero,256(a0)
    15f2:	4781                	li	a5,0
    15f4:	10000693          	li	a3,256
    15f8:	00f50733          	add	a4,a0,a5
    15fc:	00f70023          	sb	a5,0(a4)
    1600:	0785                	addi	a5,a5,1
    1602:	fed79be3          	bne	a5,a3,15f8 <arc4_init+0xe>
    1606:	86aa                	mv	a3,a0
    1608:	10050e13          	addi	t3,a0,256
    160c:	4701                	li	a4,0
    160e:	4781                	li	a5,0
    1610:	0006c883          	lbu	a7,0(a3)
    1614:	00f58833          	add	a6,a1,a5
    1618:	00084803          	lbu	a6,0(a6)
    161c:	00e8873b          	addw	a4,a7,a4
    1620:	00e8073b          	addw	a4,a6,a4
    1624:	0ff77713          	andi	a4,a4,255
    1628:	00e50833          	add	a6,a0,a4
    162c:	00084303          	lbu	t1,0(a6)
    1630:	00668023          	sb	t1,0(a3)
    1634:	01180023          	sb	a7,0(a6)
    1638:	0785                	addi	a5,a5,1
    163a:	00c7b833          	sltu	a6,a5,a2
    163e:	41000833          	neg	a6,a6
    1642:	0107f7b3          	and	a5,a5,a6
    1646:	0685                	addi	a3,a3,1
    1648:	fdc694e3          	bne	a3,t3,1610 <arc4_init+0x26>
    164c:	8082                	ret

000000000000164e <arc4_crypt>:
    164e:	10054e03          	lbu	t3,256(a0)
    1652:	10154803          	lbu	a6,257(a0)
    1656:	fff60e93          	addi	t4,a2,-1
    165a:	c225                	beqz	a2,16ba <arc4_crypt+0x6c>
    165c:	00c588b3          	add	a7,a1,a2
    1660:	86ae                	mv	a3,a1
    1662:	001e031b          	addiw	t1,t3,1
    1666:	40b3033b          	subw	t1,t1,a1
    166a:	00d3073b          	addw	a4,t1,a3
    166e:	0ff77713          	andi	a4,a4,255
    1672:	972a                	add	a4,a4,a0
    1674:	00074603          	lbu	a2,0(a4)
    1678:	0106083b          	addw	a6,a2,a6
    167c:	0ff87813          	andi	a6,a6,255
    1680:	010507b3          	add	a5,a0,a6
    1684:	0007c583          	lbu	a1,0(a5)
    1688:	00b70023          	sb	a1,0(a4)
    168c:	00c78023          	sb	a2,0(a5)
    1690:	0685                	addi	a3,a3,1
    1692:	00074783          	lbu	a5,0(a4)
    1696:	9fb1                	addw	a5,a5,a2
    1698:	0ff7f793          	andi	a5,a5,255
    169c:	97aa                	add	a5,a5,a0
    169e:	0007c783          	lbu	a5,0(a5)
    16a2:	fff6c703          	lbu	a4,-1(a3)
    16a6:	8fb9                	xor	a5,a5,a4
    16a8:	fef68fa3          	sb	a5,-1(a3)
    16ac:	fb169fe3          	bne	a3,a7,166a <arc4_crypt+0x1c>
    16b0:	2e85                	addiw	t4,t4,1
    16b2:	01ce8e3b          	addw	t3,t4,t3
    16b6:	0ffe7e13          	andi	t3,t3,255
    16ba:	11c50023          	sb	t3,256(a0)
    16be:	110500a3          	sb	a6,257(a0)
    16c2:	8082                	ret

00000000000016c4 <_main>:
    16c4:	1141                	addi	sp,sp,-16
    16c6:	e406                	sd	ra,8(sp)
    16c8:	00000097          	auipc	ra,0x0
    16cc:	938080e7          	jalr	-1736(ra) # 1000 <main>
    16d0:	4501                	li	a0,0
    16d2:	00000097          	auipc	ra,0x0
    16d6:	578080e7          	jalr	1400(ra) # 1c4a <exit>
    16da:	60a2                	ld	ra,8(sp)
    16dc:	0141                	addi	sp,sp,16
    16de:	8082                	ret

00000000000016e0 <strcmp>:
    16e0:	00054783          	lbu	a5,0(a0)
    16e4:	cb91                	beqz	a5,16f8 <strcmp+0x18>
    16e6:	0005c703          	lbu	a4,0(a1)
    16ea:	00f71763          	bne	a4,a5,16f8 <strcmp+0x18>
    16ee:	0505                	addi	a0,a0,1
    16f0:	0585                	addi	a1,a1,1
    16f2:	00054783          	lbu	a5,0(a0)
    16f6:	fbe5                	bnez	a5,16e6 <strcmp+0x6>
    16f8:	0005c503          	lbu	a0,0(a1)
    16fc:	40a7853b          	subw	a0,a5,a0
    1700:	8082                	ret

0000000000001702 <strcpy>:
    1702:	87aa                	mv	a5,a0
    1704:	0585                	addi	a1,a1,1
    1706:	0785                	addi	a5,a5,1
    1708:	fff5c703          	lbu	a4,-1(a1)
    170c:	fee78fa3          	sb	a4,-1(a5)
    1710:	fb75                	bnez	a4,1704 <strcpy+0x2>
    1712:	8082                	ret

0000000000001714 <strlen>:
    1714:	00054783          	lbu	a5,0(a0)
    1718:	cf81                	beqz	a5,1730 <strlen+0x1c>
    171a:	0505                	addi	a0,a0,1
    171c:	87aa                	mv	a5,a0
    171e:	4685                	li	a3,1
    1720:	9e89                	subw	a3,a3,a0
    1722:	00f6853b          	addw	a0,a3,a5
    1726:	0785                	addi	a5,a5,1
    1728:	fff7c703          	lbu	a4,-1(a5)
    172c:	fb7d                	bnez	a4,1722 <strlen+0xe>
    172e:	8082                	ret
    1730:	4501                	li	a0,0
    1732:	8082                	ret

0000000000001734 <memset>:
    1734:	ca19                	beqz	a2,174a <memset+0x16>
    1736:	87aa                	mv	a5,a0
    1738:	1602                	slli	a2,a2,0x20
    173a:	9201                	srli	a2,a2,0x20
    173c:	00a60733          	add	a4,a2,a0
    1740:	00b78023          	sb	a1,0(a5)
    1744:	0785                	addi	a5,a5,1
    1746:	fee79de3          	bne	a5,a4,1740 <memset+0xc>
    174a:	8082                	ret

000000000000174c <memcmp>:
    174c:	1101                	addi	sp,sp,-32
    174e:	ec06                	sd	ra,24(sp)
    1750:	e822                	sd	s0,16(sp)
    1752:	e426                	sd	s1,8(sp)
    1754:	e04a                	sd	s2,0(sp)
    1756:	892a                	mv	s2,a0
    1758:	842e                	mv	s0,a1
    175a:	84b2                	mv	s1,a2
    175c:	c915                	beqz	a0,1790 <memcmp+0x44>
    175e:	c5ad                	beqz	a1,17c8 <memcmp+0x7c>
    1760:	fff60713          	addi	a4,a2,-1
    1764:	c645                	beqz	a2,180c <memcmp+0xc0>
    1766:	87ca                	mv	a5,s2
    1768:	00190613          	addi	a2,s2,1
    176c:	963a                	add	a2,a2,a4
    176e:	0007c683          	lbu	a3,0(a5)
    1772:	00044703          	lbu	a4,0(s0)
    1776:	08e69463          	bne	a3,a4,17fe <memcmp+0xb2>
    177a:	0785                	addi	a5,a5,1
    177c:	0405                	addi	s0,s0,1
    177e:	fec798e3          	bne	a5,a2,176e <memcmp+0x22>
    1782:	4501                	li	a0,0
    1784:	60e2                	ld	ra,24(sp)
    1786:	6442                	ld	s0,16(sp)
    1788:	64a2                	ld	s1,8(sp)
    178a:	6902                	ld	s2,0(sp)
    178c:	6105                	addi	sp,sp,32
    178e:	8082                	ret
    1790:	4501                	li	a0,0
    1792:	da6d                	beqz	a2,1784 <memcmp+0x38>
    1794:	03200693          	li	a3,50
    1798:	00002637          	lui	a2,0x2
    179c:	1d060613          	addi	a2,a2,464 # 21d0 <crctab+0x400>
    17a0:	000025b7          	lui	a1,0x2
    17a4:	1e058593          	addi	a1,a1,480 # 21e0 <crctab+0x410>
    17a8:	4509                	li	a0,2
    17aa:	00000097          	auipc	ra,0x0
    17ae:	bbc080e7          	jalr	-1092(ra) # 1366 <fprintf>
    17b2:	650d                	lui	a0,0x3
    17b4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17b8:	00000097          	auipc	ra,0x0
    17bc:	492080e7          	jalr	1170(ra) # 1c4a <exit>
    17c0:	fff48713          	addi	a4,s1,-1
    17c4:	f04d                	bnez	s0,1766 <memcmp+0x1a>
    17c6:	a011                	j	17ca <memcmp+0x7e>
    17c8:	c221                	beqz	a2,1808 <memcmp+0xbc>
    17ca:	03300693          	li	a3,51
    17ce:	00002637          	lui	a2,0x2
    17d2:	1d060613          	addi	a2,a2,464 # 21d0 <crctab+0x400>
    17d6:	000025b7          	lui	a1,0x2
    17da:	22858593          	addi	a1,a1,552 # 2228 <crctab+0x458>
    17de:	4509                	li	a0,2
    17e0:	00000097          	auipc	ra,0x0
    17e4:	b86080e7          	jalr	-1146(ra) # 1366 <fprintf>
    17e8:	650d                	lui	a0,0x3
    17ea:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    17ee:	00000097          	auipc	ra,0x0
    17f2:	45c080e7          	jalr	1116(ra) # 1c4a <exit>
    17f6:	fff48713          	addi	a4,s1,-1
    17fa:	4401                	li	s0,0
    17fc:	b7ad                	j	1766 <memcmp+0x1a>
    17fe:	4505                	li	a0,1
    1800:	f8d762e3          	bltu	a4,a3,1784 <memcmp+0x38>
    1804:	557d                	li	a0,-1
    1806:	bfbd                	j	1784 <memcmp+0x38>
    1808:	4501                	li	a0,0
    180a:	bfad                	j	1784 <memcmp+0x38>
    180c:	4501                	li	a0,0
    180e:	bf9d                	j	1784 <memcmp+0x38>

0000000000001810 <memcpy>:
    1810:	1101                	addi	sp,sp,-32
    1812:	ec06                	sd	ra,24(sp)
    1814:	e822                	sd	s0,16(sp)
    1816:	e426                	sd	s1,8(sp)
    1818:	e04a                	sd	s2,0(sp)
    181a:	84aa                	mv	s1,a0
    181c:	842e                	mv	s0,a1
    181e:	8932                	mv	s2,a2
    1820:	c51d                	beqz	a0,184e <memcpy+0x3e>
    1822:	c1ad                	beqz	a1,1884 <memcpy+0x74>
    1824:	fff60693          	addi	a3,a2,-1
    1828:	ce01                	beqz	a2,1840 <memcpy+0x30>
    182a:	0685                	addi	a3,a3,1
    182c:	96a6                	add	a3,a3,s1
    182e:	87a6                	mv	a5,s1
    1830:	0405                	addi	s0,s0,1
    1832:	0785                	addi	a5,a5,1
    1834:	fff44703          	lbu	a4,-1(s0)
    1838:	fee78fa3          	sb	a4,-1(a5)
    183c:	fed79ae3          	bne	a5,a3,1830 <memcpy+0x20>
    1840:	8526                	mv	a0,s1
    1842:	60e2                	ld	ra,24(sp)
    1844:	6442                	ld	s0,16(sp)
    1846:	64a2                	ld	s1,8(sp)
    1848:	6902                	ld	s2,0(sp)
    184a:	6105                	addi	sp,sp,32
    184c:	8082                	ret
    184e:	da6d                	beqz	a2,1840 <memcpy+0x30>
    1850:	04000693          	li	a3,64
    1854:	00002637          	lui	a2,0x2
    1858:	1d060613          	addi	a2,a2,464 # 21d0 <crctab+0x400>
    185c:	000025b7          	lui	a1,0x2
    1860:	27058593          	addi	a1,a1,624 # 2270 <crctab+0x4a0>
    1864:	4509                	li	a0,2
    1866:	00000097          	auipc	ra,0x0
    186a:	b00080e7          	jalr	-1280(ra) # 1366 <fprintf>
    186e:	650d                	lui	a0,0x3
    1870:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1874:	00000097          	auipc	ra,0x0
    1878:	3d6080e7          	jalr	982(ra) # 1c4a <exit>
    187c:	fff90693          	addi	a3,s2,-1
    1880:	f44d                	bnez	s0,182a <memcpy+0x1a>
    1882:	a011                	j	1886 <memcpy+0x76>
    1884:	de55                	beqz	a2,1840 <memcpy+0x30>
    1886:	04100693          	li	a3,65
    188a:	00002637          	lui	a2,0x2
    188e:	1d060613          	addi	a2,a2,464 # 21d0 <crctab+0x400>
    1892:	000025b7          	lui	a1,0x2
    1896:	2b858593          	addi	a1,a1,696 # 22b8 <crctab+0x4e8>
    189a:	4509                	li	a0,2
    189c:	00000097          	auipc	ra,0x0
    18a0:	aca080e7          	jalr	-1334(ra) # 1366 <fprintf>
    18a4:	650d                	lui	a0,0x3
    18a6:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18aa:	00000097          	auipc	ra,0x0
    18ae:	3a0080e7          	jalr	928(ra) # 1c4a <exit>
    18b2:	fff90693          	addi	a3,s2,-1
    18b6:	4401                	li	s0,0
    18b8:	bf8d                	j	182a <memcpy+0x1a>

00000000000018ba <itoa>:
    18ba:	1101                	addi	sp,sp,-32
    18bc:	ec06                	sd	ra,24(sp)
    18be:	e822                	sd	s0,16(sp)
    18c0:	e426                	sd	s1,8(sp)
    18c2:	842a                	mv	s0,a0
    18c4:	41f5d71b          	sraiw	a4,a1,0x1f
    18c8:	00e5c7b3          	xor	a5,a1,a4
    18cc:	9f99                	subw	a5,a5,a4
    18ce:	84aa                	mv	s1,a0
    18d0:	862a                	mv	a2,a0
    18d2:	4681                	li	a3,0
    18d4:	4529                	li	a0,10
    18d6:	4825                	li	a6,9
    18d8:	88b6                	mv	a7,a3
    18da:	2685                	addiw	a3,a3,1
    18dc:	02a7e73b          	remw	a4,a5,a0
    18e0:	0307071b          	addiw	a4,a4,48
    18e4:	00e60023          	sb	a4,0(a2)
    18e8:	873e                	mv	a4,a5
    18ea:	02a7c7bb          	divw	a5,a5,a0
    18ee:	0605                	addi	a2,a2,1
    18f0:	fee844e3          	blt	a6,a4,18d8 <itoa+0x1e>
    18f4:	0405c863          	bltz	a1,1944 <itoa+0x8a>
    18f8:	96a2                	add	a3,a3,s0
    18fa:	00068023          	sb	zero,0(a3)
    18fe:	8522                	mv	a0,s0
    1900:	00000097          	auipc	ra,0x0
    1904:	e14080e7          	jalr	-492(ra) # 1714 <strlen>
    1908:	fff5071b          	addiw	a4,a0,-1
    190c:	02e05763          	blez	a4,193a <itoa+0x80>
    1910:	9722                	add	a4,a4,s0
    1912:	4681                	li	a3,0
    1914:	0004c783          	lbu	a5,0(s1)
    1918:	00074603          	lbu	a2,0(a4)
    191c:	00c48023          	sb	a2,0(s1)
    1920:	00f70023          	sb	a5,0(a4)
    1924:	0016879b          	addiw	a5,a3,1
    1928:	0007869b          	sext.w	a3,a5
    192c:	0485                	addi	s1,s1,1
    192e:	177d                	addi	a4,a4,-1
    1930:	fff7c793          	not	a5,a5
    1934:	9fa9                	addw	a5,a5,a0
    1936:	fcf6cfe3          	blt	a3,a5,1914 <itoa+0x5a>
    193a:	60e2                	ld	ra,24(sp)
    193c:	6442                	ld	s0,16(sp)
    193e:	64a2                	ld	s1,8(sp)
    1940:	6105                	addi	sp,sp,32
    1942:	8082                	ret
    1944:	96a2                	add	a3,a3,s0
    1946:	02d00793          	li	a5,45
    194a:	00f68023          	sb	a5,0(a3)
    194e:	0028869b          	addiw	a3,a7,2
    1952:	b75d                	j	18f8 <itoa+0x3e>

0000000000001954 <atoi>:
    1954:	00054783          	lbu	a5,0(a0)
    1958:	02000713          	li	a4,32
    195c:	00e79763          	bne	a5,a4,196a <atoi+0x16>
    1960:	0505                	addi	a0,a0,1
    1962:	00054783          	lbu	a5,0(a0)
    1966:	fee78de3          	beq	a5,a4,1960 <atoi+0xc>
    196a:	02b00713          	li	a4,43
    196e:	04e78663          	beq	a5,a4,19ba <atoi+0x66>
    1972:	02d00713          	li	a4,45
    1976:	4805                	li	a6,1
    1978:	04e78463          	beq	a5,a4,19c0 <atoi+0x6c>
    197c:	00054683          	lbu	a3,0(a0)
    1980:	fd06879b          	addiw	a5,a3,-48
    1984:	0ff7f793          	andi	a5,a5,255
    1988:	4725                	li	a4,9
    198a:	02f76e63          	bltu	a4,a5,19c6 <atoi+0x72>
    198e:	4601                	li	a2,0
    1990:	45a5                	li	a1,9
    1992:	0505                	addi	a0,a0,1
    1994:	0026179b          	slliw	a5,a2,0x2
    1998:	9fb1                	addw	a5,a5,a2
    199a:	0017979b          	slliw	a5,a5,0x1
    199e:	9fb5                	addw	a5,a5,a3
    19a0:	fd07861b          	addiw	a2,a5,-48
    19a4:	00054683          	lbu	a3,0(a0)
    19a8:	fd06871b          	addiw	a4,a3,-48
    19ac:	0ff77713          	andi	a4,a4,255
    19b0:	fee5f1e3          	bgeu	a1,a4,1992 <atoi+0x3e>
    19b4:	02c8053b          	mulw	a0,a6,a2
    19b8:	8082                	ret
    19ba:	0505                	addi	a0,a0,1
    19bc:	4805                	li	a6,1
    19be:	bf7d                	j	197c <atoi+0x28>
    19c0:	0505                	addi	a0,a0,1
    19c2:	587d                	li	a6,-1
    19c4:	bf65                	j	197c <atoi+0x28>
    19c6:	4601                	li	a2,0
    19c8:	b7f5                	j	19b4 <atoi+0x60>

00000000000019ca <check_file_handle>:
    19ca:	d8010113          	addi	sp,sp,-640
    19ce:	26113c23          	sd	ra,632(sp)
    19d2:	26813823          	sd	s0,624(sp)
    19d6:	26913423          	sd	s1,616(sp)
    19da:	27213023          	sd	s2,608(sp)
    19de:	25313c23          	sd	s3,600(sp)
    19e2:	25413823          	sd	s4,592(sp)
    19e6:	25513423          	sd	s5,584(sp)
    19ea:	25613023          	sd	s6,576(sp)
    19ee:	23713c23          	sd	s7,568(sp)
    19f2:	23813823          	sd	s8,560(sp)
    19f6:	23913423          	sd	s9,552(sp)
    19fa:	23a13023          	sd	s10,544(sp)
    19fe:	21b13c23          	sd	s11,536(sp)
    1a02:	8baa                	mv	s7,a0
    1a04:	8a2e                	mv	s4,a1
    1a06:	8c32                	mv	s8,a2
    1a08:	89b6                	mv	s3,a3
    1a0a:	040c                	addi	a1,sp,512
    1a0c:	00000097          	auipc	ra,0x0
    1a10:	28e080e7          	jalr	654(ra) # 1c9a <fstat>
    1a14:	20813603          	ld	a2,520(sp)
    1a18:	03361163          	bne	a2,s3,1a3a <check_file_handle+0x70>
    1a1c:	06098763          	beqz	s3,1a8a <check_file_handle+0xc0>
    1a20:	4901                	li	s2,0
    1a22:	20000a93          	li	s5,512
    1a26:	00002cb7          	lui	s9,0x2
    1a2a:	00002db7          	lui	s11,0x2
    1a2e:	6b0d                	lui	s6,0x3
    1a30:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a34:	00002d37          	lui	s10,0x2
    1a38:	aa39                	j	1b56 <check_file_handle+0x18c>
    1a3a:	86ce                	mv	a3,s3
    1a3c:	85d2                	mv	a1,s4
    1a3e:	00002537          	lui	a0,0x2
    1a42:	30050513          	addi	a0,a0,768 # 2300 <crctab+0x530>
    1a46:	00000097          	auipc	ra,0x0
    1a4a:	942080e7          	jalr	-1726(ra) # 1388 <printf>
    1a4e:	fc0999e3          	bnez	s3,1a20 <check_file_handle+0x56>
    1a52:	20813683          	ld	a3,520(sp)
    1a56:	03368a63          	beq	a3,s3,1a8a <check_file_handle+0xc0>
    1a5a:	0a600813          	li	a6,166
    1a5e:	000027b7          	lui	a5,0x2
    1a62:	1d078793          	addi	a5,a5,464 # 21d0 <crctab+0x400>
    1a66:	874e                	mv	a4,s3
    1a68:	8652                	mv	a2,s4
    1a6a:	000025b7          	lui	a1,0x2
    1a6e:	3d058593          	addi	a1,a1,976 # 23d0 <crctab+0x600>
    1a72:	4509                	li	a0,2
    1a74:	00000097          	auipc	ra,0x0
    1a78:	8f2080e7          	jalr	-1806(ra) # 1366 <fprintf>
    1a7c:	650d                	lui	a0,0x3
    1a7e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1a82:	00000097          	auipc	ra,0x0
    1a86:	1c8080e7          	jalr	456(ra) # 1c4a <exit>
    1a8a:	85d2                	mv	a1,s4
    1a8c:	00002537          	lui	a0,0x2
    1a90:	41850513          	addi	a0,a0,1048 # 2418 <crctab+0x648>
    1a94:	00000097          	auipc	ra,0x0
    1a98:	8f4080e7          	jalr	-1804(ra) # 1388 <printf>
    1a9c:	27813083          	ld	ra,632(sp)
    1aa0:	27013403          	ld	s0,624(sp)
    1aa4:	26813483          	ld	s1,616(sp)
    1aa8:	26013903          	ld	s2,608(sp)
    1aac:	25813983          	ld	s3,600(sp)
    1ab0:	25013a03          	ld	s4,592(sp)
    1ab4:	24813a83          	ld	s5,584(sp)
    1ab8:	24013b03          	ld	s6,576(sp)
    1abc:	23813b83          	ld	s7,568(sp)
    1ac0:	23013c03          	ld	s8,560(sp)
    1ac4:	22813c83          	ld	s9,552(sp)
    1ac8:	22013d03          	ld	s10,544(sp)
    1acc:	21813d83          	ld	s11,536(sp)
    1ad0:	28010113          	addi	sp,sp,640
    1ad4:	8082                	ret
    1ad6:	09d00893          	li	a7,157
    1ada:	1d0c8813          	addi	a6,s9,464 # 21d0 <crctab+0x400>
    1ade:	87aa                	mv	a5,a0
    1ae0:	8752                	mv	a4,s4
    1ae2:	86ca                	mv	a3,s2
    1ae4:	8622                	mv	a2,s0
    1ae6:	330d8593          	addi	a1,s11,816 # 2330 <crctab+0x560>
    1aea:	4509                	li	a0,2
    1aec:	00000097          	auipc	ra,0x0
    1af0:	87a080e7          	jalr	-1926(ra) # 1366 <fprintf>
    1af4:	855a                	mv	a0,s6
    1af6:	00000097          	auipc	ra,0x0
    1afa:	154080e7          	jalr	340(ra) # 1c4a <exit>
    1afe:	a89d                	j	1b74 <check_file_handle+0x1aa>
    1b00:	00160593          	addi	a1,a2,1
    1b04:	0285f163          	bgeu	a1,s0,1b26 <check_file_handle+0x15c>
    1b08:	00c10733          	add	a4,sp,a2
    1b0c:	00b487b3          	add	a5,s1,a1
    1b10:	00174683          	lbu	a3,1(a4)
    1b14:	0007c783          	lbu	a5,0(a5)
    1b18:	00f68763          	beq	a3,a5,1b26 <check_file_handle+0x15c>
    1b1c:	0585                	addi	a1,a1,1
    1b1e:	0705                	addi	a4,a4,1
    1b20:	feb416e3          	bne	s0,a1,1b0c <check_file_handle+0x142>
    1b24:	85a2                	mv	a1,s0
    1b26:	08100813          	li	a6,129
    1b2a:	1d0c8793          	addi	a5,s9,464
    1b2e:	8752                	mv	a4,s4
    1b30:	012606b3          	add	a3,a2,s2
    1b34:	40c58633          	sub	a2,a1,a2
    1b38:	378d0593          	addi	a1,s10,888 # 2378 <crctab+0x5a8>
    1b3c:	4509                	li	a0,2
    1b3e:	00000097          	auipc	ra,0x0
    1b42:	828080e7          	jalr	-2008(ra) # 1366 <fprintf>
    1b46:	855a                	mv	a0,s6
    1b48:	00000097          	auipc	ra,0x0
    1b4c:	102080e7          	jalr	258(ra) # 1c4a <exit>
    1b50:	9922                	add	s2,s2,s0
    1b52:	f13970e3          	bgeu	s2,s3,1a52 <check_file_handle+0x88>
    1b56:	41298433          	sub	s0,s3,s2
    1b5a:	008af363          	bgeu	s5,s0,1b60 <check_file_handle+0x196>
    1b5e:	8456                	mv	s0,s5
    1b60:	0004061b          	sext.w	a2,s0
    1b64:	858a                	mv	a1,sp
    1b66:	855e                	mv	a0,s7
    1b68:	00000097          	auipc	ra,0x0
    1b6c:	10a080e7          	jalr	266(ra) # 1c72 <read>
    1b70:	f68513e3          	bne	a0,s0,1ad6 <check_file_handle+0x10c>
    1b74:	012c04b3          	add	s1,s8,s2
    1b78:	8622                	mv	a2,s0
    1b7a:	85a6                	mv	a1,s1
    1b7c:	850a                	mv	a0,sp
    1b7e:	00000097          	auipc	ra,0x0
    1b82:	bce080e7          	jalr	-1074(ra) # 174c <memcmp>
    1b86:	d569                	beqz	a0,1b50 <check_file_handle+0x186>
    1b88:	03298163          	beq	s3,s2,1baa <check_file_handle+0x1e0>
    1b8c:	870a                	mv	a4,sp
    1b8e:	4601                	li	a2,0
    1b90:	00c487b3          	add	a5,s1,a2
    1b94:	00074683          	lbu	a3,0(a4)
    1b98:	0007c783          	lbu	a5,0(a5)
    1b9c:	f6f692e3          	bne	a3,a5,1b00 <check_file_handle+0x136>
    1ba0:	0605                	addi	a2,a2,1
    1ba2:	0705                	addi	a4,a4,1
    1ba4:	fe8666e3          	bltu	a2,s0,1b90 <check_file_handle+0x1c6>
    1ba8:	bfa1                	j	1b00 <check_file_handle+0x136>
    1baa:	4601                	li	a2,0
    1bac:	4585                	li	a1,1
    1bae:	bfa5                	j	1b26 <check_file_handle+0x15c>

0000000000001bb0 <check_file>:
    1bb0:	7179                	addi	sp,sp,-48
    1bb2:	f406                	sd	ra,40(sp)
    1bb4:	f022                	sd	s0,32(sp)
    1bb6:	ec26                	sd	s1,24(sp)
    1bb8:	e84a                	sd	s2,16(sp)
    1bba:	e44e                	sd	s3,8(sp)
    1bbc:	84aa                	mv	s1,a0
    1bbe:	892e                	mv	s2,a1
    1bc0:	89b2                	mv	s3,a2
    1bc2:	4581                	li	a1,0
    1bc4:	00000097          	auipc	ra,0x0
    1bc8:	0a6080e7          	jalr	166(ra) # 1c6a <open>
    1bcc:	842a                	mv	s0,a0
    1bce:	4789                	li	a5,2
    1bd0:	02a7df63          	bge	a5,a0,1c0e <check_file+0x5e>
    1bd4:	86ce                	mv	a3,s3
    1bd6:	864a                	mv	a2,s2
    1bd8:	85a6                	mv	a1,s1
    1bda:	8522                	mv	a0,s0
    1bdc:	00000097          	auipc	ra,0x0
    1be0:	dee080e7          	jalr	-530(ra) # 19ca <check_file_handle>
    1be4:	85a6                	mv	a1,s1
    1be6:	00002537          	lui	a0,0x2
    1bea:	4a050513          	addi	a0,a0,1184 # 24a0 <crctab+0x6d0>
    1bee:	fffff097          	auipc	ra,0xfffff
    1bf2:	79a080e7          	jalr	1946(ra) # 1388 <printf>
    1bf6:	8522                	mv	a0,s0
    1bf8:	00000097          	auipc	ra,0x0
    1bfc:	09a080e7          	jalr	154(ra) # 1c92 <close>
    1c00:	70a2                	ld	ra,40(sp)
    1c02:	7402                	ld	s0,32(sp)
    1c04:	64e2                	ld	s1,24(sp)
    1c06:	6942                	ld	s2,16(sp)
    1c08:	69a2                	ld	s3,8(sp)
    1c0a:	6145                	addi	sp,sp,48
    1c0c:	8082                	ret
    1c0e:	0ae00713          	li	a4,174
    1c12:	000026b7          	lui	a3,0x2
    1c16:	1d068693          	addi	a3,a3,464 # 21d0 <crctab+0x400>
    1c1a:	8626                	mv	a2,s1
    1c1c:	000025b7          	lui	a1,0x2
    1c20:	43858593          	addi	a1,a1,1080 # 2438 <crctab+0x668>
    1c24:	4509                	li	a0,2
    1c26:	fffff097          	auipc	ra,0xfffff
    1c2a:	740080e7          	jalr	1856(ra) # 1366 <fprintf>
    1c2e:	650d                	lui	a0,0x3
    1c30:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c34:	00000097          	auipc	ra,0x0
    1c38:	016080e7          	jalr	22(ra) # 1c4a <exit>
    1c3c:	bf61                	j	1bd4 <check_file+0x24>

0000000000001c3e <r_sp>:
    1c3e:	850a                	mv	a0,sp
    1c40:	8082                	ret

0000000000001c42 <halt>:
    1c42:	4885                	li	a7,1
    1c44:	00000073          	ecall
    1c48:	8082                	ret

0000000000001c4a <exit>:
    1c4a:	4889                	li	a7,2
    1c4c:	00000073          	ecall
    1c50:	8082                	ret

0000000000001c52 <exec>:
    1c52:	488d                	li	a7,3
    1c54:	00000073          	ecall
    1c58:	8082                	ret

0000000000001c5a <wait>:
    1c5a:	4891                	li	a7,4
    1c5c:	00000073          	ecall
    1c60:	8082                	ret

0000000000001c62 <remove>:
    1c62:	4895                	li	a7,5
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <open>:
    1c6a:	4899                	li	a7,6
    1c6c:	00000073          	ecall
    1c70:	8082                	ret

0000000000001c72 <read>:
    1c72:	489d                	li	a7,7
    1c74:	00000073          	ecall
    1c78:	8082                	ret

0000000000001c7a <write>:
    1c7a:	48a1                	li	a7,8
    1c7c:	00000073          	ecall
    1c80:	8082                	ret

0000000000001c82 <seek>:
    1c82:	48a5                	li	a7,9
    1c84:	00000073          	ecall
    1c88:	8082                	ret

0000000000001c8a <tell>:
    1c8a:	48a9                	li	a7,10
    1c8c:	00000073          	ecall
    1c90:	8082                	ret

0000000000001c92 <close>:
    1c92:	48ad                	li	a7,11
    1c94:	00000073          	ecall
    1c98:	8082                	ret

0000000000001c9a <fstat>:
    1c9a:	48b1                	li	a7,12
    1c9c:	00000073          	ecall
    1ca0:	8082                	ret

0000000000001ca2 <mmap>:
    1ca2:	48b5                	li	a7,13
    1ca4:	00000073          	ecall
    1ca8:	8082                	ret

0000000000001caa <munmap>:
    1caa:	48b9                	li	a7,14
    1cac:	00000073          	ecall
    1cb0:	8082                	ret

0000000000001cb2 <chdir>:
    1cb2:	48bd                	li	a7,15
    1cb4:	00000073          	ecall
    1cb8:	8082                	ret

0000000000001cba <mkdir>:
    1cba:	48c1                	li	a7,16
    1cbc:	00000073          	ecall
    1cc0:	8082                	ret
