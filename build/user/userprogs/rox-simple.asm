
build/user/userprogs/rox-simple:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	4589                	li	a1,2
    1008:	00002537          	lui	a0,0x2
    100c:	cd050513          	addi	a0,a0,-816 # 1cd0 <mkdir+0x14>
    1010:	00001097          	auipc	ra,0x1
    1014:	c5c080e7          	jalr	-932(ra) # 1c6c <open>
    1018:	842a                	mv	s0,a0
    101a:	4785                	li	a5,1
    101c:	02a7df63          	bge	a5,a0,105a <main+0x5a>
    1020:	4641                	li	a2,16
    1022:	858a                	mv	a1,sp
    1024:	8522                	mv	a0,s0
    1026:	00001097          	auipc	ra,0x1
    102a:	c4e080e7          	jalr	-946(ra) # 1c74 <read>
    102e:	47c1                	li	a5,16
    1030:	04f51b63          	bne	a0,a5,1086 <main+0x86>
    1034:	4641                	li	a2,16
    1036:	858a                	mv	a1,sp
    1038:	8522                	mv	a0,s0
    103a:	00001097          	auipc	ra,0x1
    103e:	c42080e7          	jalr	-958(ra) # 1c7c <write>
    1042:	57fd                	li	a5,-1
    1044:	06f51763          	bne	a0,a5,10b2 <main+0xb2>
    1048:	8522                	mv	a0,s0
    104a:	00001097          	auipc	ra,0x1
    104e:	c4a080e7          	jalr	-950(ra) # 1c94 <close>
    1052:	60e2                	ld	ra,24(sp)
    1054:	6442                	ld	s0,16(sp)
    1056:	6105                	addi	sp,sp,32
    1058:	8082                	ret
    105a:	46b1                	li	a3,12
    105c:	00002637          	lui	a2,0x2
    1060:	ce060613          	addi	a2,a2,-800 # 1ce0 <mkdir+0x24>
    1064:	000025b7          	lui	a1,0x2
    1068:	d0058593          	addi	a1,a1,-768 # 1d00 <mkdir+0x44>
    106c:	4509                	li	a0,2
    106e:	00000097          	auipc	ra,0x0
    1072:	2fa080e7          	jalr	762(ra) # 1368 <fprintf>
    1076:	650d                	lui	a0,0x3
    1078:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    107c:	00001097          	auipc	ra,0x1
    1080:	bd0080e7          	jalr	-1072(ra) # 1c4c <exit>
    1084:	bf71                	j	1020 <main+0x20>
    1086:	46c1                	li	a3,16
    1088:	00002637          	lui	a2,0x2
    108c:	ce060613          	addi	a2,a2,-800 # 1ce0 <mkdir+0x24>
    1090:	000025b7          	lui	a1,0x2
    1094:	d3858593          	addi	a1,a1,-712 # 1d38 <mkdir+0x7c>
    1098:	4509                	li	a0,2
    109a:	00000097          	auipc	ra,0x0
    109e:	2ce080e7          	jalr	718(ra) # 1368 <fprintf>
    10a2:	650d                	lui	a0,0x3
    10a4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10a8:	00001097          	auipc	ra,0x1
    10ac:	ba4080e7          	jalr	-1116(ra) # 1c4c <exit>
    10b0:	b751                	j	1034 <main+0x34>
    10b2:	46c5                	li	a3,17
    10b4:	00002637          	lui	a2,0x2
    10b8:	ce060613          	addi	a2,a2,-800 # 1ce0 <mkdir+0x24>
    10bc:	000025b7          	lui	a1,0x2
    10c0:	d8058593          	addi	a1,a1,-640 # 1d80 <mkdir+0xc4>
    10c4:	4509                	li	a0,2
    10c6:	00000097          	auipc	ra,0x0
    10ca:	2a2080e7          	jalr	674(ra) # 1368 <fprintf>
    10ce:	650d                	lui	a0,0x3
    10d0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10d4:	00001097          	auipc	ra,0x1
    10d8:	b78080e7          	jalr	-1160(ra) # 1c4c <exit>
    10dc:	b7b5                	j	1048 <main+0x48>

00000000000010de <putc>:
    10de:	1101                	addi	sp,sp,-32
    10e0:	ec06                	sd	ra,24(sp)
    10e2:	00b107a3          	sb	a1,15(sp)
    10e6:	4605                	li	a2,1
    10e8:	00f10593          	addi	a1,sp,15
    10ec:	00001097          	auipc	ra,0x1
    10f0:	b90080e7          	jalr	-1136(ra) # 1c7c <write>
    10f4:	60e2                	ld	ra,24(sp)
    10f6:	6105                	addi	sp,sp,32
    10f8:	8082                	ret

00000000000010fa <printint>:
    10fa:	7179                	addi	sp,sp,-48
    10fc:	f406                	sd	ra,40(sp)
    10fe:	f022                	sd	s0,32(sp)
    1100:	ec26                	sd	s1,24(sp)
    1102:	e84a                	sd	s2,16(sp)
    1104:	84aa                	mv	s1,a0
    1106:	c299                	beqz	a3,110c <printint+0x12>
    1108:	0805c363          	bltz	a1,118e <printint+0x94>
    110c:	2581                	sext.w	a1,a1
    110e:	4881                	li	a7,0
    1110:	868a                	mv	a3,sp
    1112:	4701                	li	a4,0
    1114:	2601                	sext.w	a2,a2
    1116:	00002537          	lui	a0,0x2
    111a:	e1050513          	addi	a0,a0,-496 # 1e10 <digits>
    111e:	883a                	mv	a6,a4
    1120:	2705                	addiw	a4,a4,1
    1122:	02c5f7bb          	remuw	a5,a1,a2
    1126:	1782                	slli	a5,a5,0x20
    1128:	9381                	srli	a5,a5,0x20
    112a:	97aa                	add	a5,a5,a0
    112c:	0007c783          	lbu	a5,0(a5)
    1130:	00f68023          	sb	a5,0(a3)
    1134:	0005879b          	sext.w	a5,a1
    1138:	02c5d5bb          	divuw	a1,a1,a2
    113c:	0685                	addi	a3,a3,1
    113e:	fec7f0e3          	bgeu	a5,a2,111e <printint+0x24>
    1142:	00088a63          	beqz	a7,1156 <printint+0x5c>
    1146:	081c                	addi	a5,sp,16
    1148:	973e                	add	a4,a4,a5
    114a:	02d00793          	li	a5,45
    114e:	fef70823          	sb	a5,-16(a4)
    1152:	0028071b          	addiw	a4,a6,2
    1156:	02e05663          	blez	a4,1182 <printint+0x88>
    115a:	00e10433          	add	s0,sp,a4
    115e:	fff10913          	addi	s2,sp,-1
    1162:	993a                	add	s2,s2,a4
    1164:	377d                	addiw	a4,a4,-1
    1166:	1702                	slli	a4,a4,0x20
    1168:	9301                	srli	a4,a4,0x20
    116a:	40e90933          	sub	s2,s2,a4
    116e:	fff44583          	lbu	a1,-1(s0)
    1172:	8526                	mv	a0,s1
    1174:	00000097          	auipc	ra,0x0
    1178:	f6a080e7          	jalr	-150(ra) # 10de <putc>
    117c:	147d                	addi	s0,s0,-1
    117e:	ff2418e3          	bne	s0,s2,116e <printint+0x74>
    1182:	70a2                	ld	ra,40(sp)
    1184:	7402                	ld	s0,32(sp)
    1186:	64e2                	ld	s1,24(sp)
    1188:	6942                	ld	s2,16(sp)
    118a:	6145                	addi	sp,sp,48
    118c:	8082                	ret
    118e:	40b005bb          	negw	a1,a1
    1192:	4885                	li	a7,1
    1194:	bfb5                	j	1110 <printint+0x16>

0000000000001196 <vprintf>:
    1196:	7159                	addi	sp,sp,-112
    1198:	f486                	sd	ra,104(sp)
    119a:	f0a2                	sd	s0,96(sp)
    119c:	eca6                	sd	s1,88(sp)
    119e:	e8ca                	sd	s2,80(sp)
    11a0:	e4ce                	sd	s3,72(sp)
    11a2:	e0d2                	sd	s4,64(sp)
    11a4:	fc56                	sd	s5,56(sp)
    11a6:	f85a                	sd	s6,48(sp)
    11a8:	f45e                	sd	s7,40(sp)
    11aa:	f062                	sd	s8,32(sp)
    11ac:	ec66                	sd	s9,24(sp)
    11ae:	e86a                	sd	s10,16(sp)
    11b0:	e46e                	sd	s11,8(sp)
    11b2:	0005c483          	lbu	s1,0(a1)
    11b6:	18048a63          	beqz	s1,134a <vprintf+0x1b4>
    11ba:	8a2a                	mv	s4,a0
    11bc:	8ab2                	mv	s5,a2
    11be:	00158413          	addi	s0,a1,1
    11c2:	4901                	li	s2,0
    11c4:	02500993          	li	s3,37
    11c8:	06400b93          	li	s7,100
    11cc:	06c00c13          	li	s8,108
    11d0:	07800c93          	li	s9,120
    11d4:	07000d13          	li	s10,112
    11d8:	00002db7          	lui	s11,0x2
    11dc:	00002b37          	lui	s6,0x2
    11e0:	e10b0b13          	addi	s6,s6,-496 # 1e10 <digits>
    11e4:	a839                	j	1202 <vprintf+0x6c>
    11e6:	85a6                	mv	a1,s1
    11e8:	8552                	mv	a0,s4
    11ea:	00000097          	auipc	ra,0x0
    11ee:	ef4080e7          	jalr	-268(ra) # 10de <putc>
    11f2:	a019                	j	11f8 <vprintf+0x62>
    11f4:	01390f63          	beq	s2,s3,1212 <vprintf+0x7c>
    11f8:	0405                	addi	s0,s0,1
    11fa:	fff44483          	lbu	s1,-1(s0)
    11fe:	14048663          	beqz	s1,134a <vprintf+0x1b4>
    1202:	0004879b          	sext.w	a5,s1
    1206:	fe0917e3          	bnez	s2,11f4 <vprintf+0x5e>
    120a:	fd379ee3          	bne	a5,s3,11e6 <vprintf+0x50>
    120e:	893e                	mv	s2,a5
    1210:	b7e5                	j	11f8 <vprintf+0x62>
    1212:	05778063          	beq	a5,s7,1252 <vprintf+0xbc>
    1216:	05878c63          	beq	a5,s8,126e <vprintf+0xd8>
    121a:	07978863          	beq	a5,s9,128a <vprintf+0xf4>
    121e:	09a78463          	beq	a5,s10,12a6 <vprintf+0x110>
    1222:	07300713          	li	a4,115
    1226:	0ce78263          	beq	a5,a4,12ea <vprintf+0x154>
    122a:	06300713          	li	a4,99
    122e:	0ee78763          	beq	a5,a4,131c <vprintf+0x186>
    1232:	11378163          	beq	a5,s3,1334 <vprintf+0x19e>
    1236:	85ce                	mv	a1,s3
    1238:	8552                	mv	a0,s4
    123a:	00000097          	auipc	ra,0x0
    123e:	ea4080e7          	jalr	-348(ra) # 10de <putc>
    1242:	85a6                	mv	a1,s1
    1244:	8552                	mv	a0,s4
    1246:	00000097          	auipc	ra,0x0
    124a:	e98080e7          	jalr	-360(ra) # 10de <putc>
    124e:	4901                	li	s2,0
    1250:	b765                	j	11f8 <vprintf+0x62>
    1252:	008a8493          	addi	s1,s5,8
    1256:	4685                	li	a3,1
    1258:	4629                	li	a2,10
    125a:	000aa583          	lw	a1,0(s5)
    125e:	8552                	mv	a0,s4
    1260:	00000097          	auipc	ra,0x0
    1264:	e9a080e7          	jalr	-358(ra) # 10fa <printint>
    1268:	8aa6                	mv	s5,s1
    126a:	4901                	li	s2,0
    126c:	b771                	j	11f8 <vprintf+0x62>
    126e:	008a8493          	addi	s1,s5,8
    1272:	4681                	li	a3,0
    1274:	4629                	li	a2,10
    1276:	000aa583          	lw	a1,0(s5)
    127a:	8552                	mv	a0,s4
    127c:	00000097          	auipc	ra,0x0
    1280:	e7e080e7          	jalr	-386(ra) # 10fa <printint>
    1284:	8aa6                	mv	s5,s1
    1286:	4901                	li	s2,0
    1288:	bf85                	j	11f8 <vprintf+0x62>
    128a:	008a8493          	addi	s1,s5,8
    128e:	4681                	li	a3,0
    1290:	4641                	li	a2,16
    1292:	000aa583          	lw	a1,0(s5)
    1296:	8552                	mv	a0,s4
    1298:	00000097          	auipc	ra,0x0
    129c:	e62080e7          	jalr	-414(ra) # 10fa <printint>
    12a0:	8aa6                	mv	s5,s1
    12a2:	4901                	li	s2,0
    12a4:	bf91                	j	11f8 <vprintf+0x62>
    12a6:	008a8913          	addi	s2,s5,8
    12aa:	000aba83          	ld	s5,0(s5)
    12ae:	03000593          	li	a1,48
    12b2:	8552                	mv	a0,s4
    12b4:	00000097          	auipc	ra,0x0
    12b8:	e2a080e7          	jalr	-470(ra) # 10de <putc>
    12bc:	85e6                	mv	a1,s9
    12be:	8552                	mv	a0,s4
    12c0:	00000097          	auipc	ra,0x0
    12c4:	e1e080e7          	jalr	-482(ra) # 10de <putc>
    12c8:	44c1                	li	s1,16
    12ca:	03cad793          	srli	a5,s5,0x3c
    12ce:	97da                	add	a5,a5,s6
    12d0:	0007c583          	lbu	a1,0(a5)
    12d4:	8552                	mv	a0,s4
    12d6:	00000097          	auipc	ra,0x0
    12da:	e08080e7          	jalr	-504(ra) # 10de <putc>
    12de:	0a92                	slli	s5,s5,0x4
    12e0:	34fd                	addiw	s1,s1,-1
    12e2:	f4e5                	bnez	s1,12ca <vprintf+0x134>
    12e4:	8aca                	mv	s5,s2
    12e6:	4901                	li	s2,0
    12e8:	bf01                	j	11f8 <vprintf+0x62>
    12ea:	008a8913          	addi	s2,s5,8
    12ee:	000ab483          	ld	s1,0(s5)
    12f2:	c085                	beqz	s1,1312 <vprintf+0x17c>
    12f4:	0004c583          	lbu	a1,0(s1)
    12f8:	c5b1                	beqz	a1,1344 <vprintf+0x1ae>
    12fa:	8552                	mv	a0,s4
    12fc:	00000097          	auipc	ra,0x0
    1300:	de2080e7          	jalr	-542(ra) # 10de <putc>
    1304:	0485                	addi	s1,s1,1
    1306:	0004c583          	lbu	a1,0(s1)
    130a:	f9e5                	bnez	a1,12fa <vprintf+0x164>
    130c:	8aca                	mv	s5,s2
    130e:	4901                	li	s2,0
    1310:	b5e5                	j	11f8 <vprintf+0x62>
    1312:	e08d8493          	addi	s1,s11,-504 # 1e08 <mkdir+0x14c>
    1316:	02800593          	li	a1,40
    131a:	b7c5                	j	12fa <vprintf+0x164>
    131c:	008a8493          	addi	s1,s5,8
    1320:	000ac583          	lbu	a1,0(s5)
    1324:	8552                	mv	a0,s4
    1326:	00000097          	auipc	ra,0x0
    132a:	db8080e7          	jalr	-584(ra) # 10de <putc>
    132e:	8aa6                	mv	s5,s1
    1330:	4901                	li	s2,0
    1332:	b5d9                	j	11f8 <vprintf+0x62>
    1334:	85ce                	mv	a1,s3
    1336:	8552                	mv	a0,s4
    1338:	00000097          	auipc	ra,0x0
    133c:	da6080e7          	jalr	-602(ra) # 10de <putc>
    1340:	4901                	li	s2,0
    1342:	bd5d                	j	11f8 <vprintf+0x62>
    1344:	8aca                	mv	s5,s2
    1346:	4901                	li	s2,0
    1348:	bd45                	j	11f8 <vprintf+0x62>
    134a:	70a6                	ld	ra,104(sp)
    134c:	7406                	ld	s0,96(sp)
    134e:	64e6                	ld	s1,88(sp)
    1350:	6946                	ld	s2,80(sp)
    1352:	69a6                	ld	s3,72(sp)
    1354:	6a06                	ld	s4,64(sp)
    1356:	7ae2                	ld	s5,56(sp)
    1358:	7b42                	ld	s6,48(sp)
    135a:	7ba2                	ld	s7,40(sp)
    135c:	7c02                	ld	s8,32(sp)
    135e:	6ce2                	ld	s9,24(sp)
    1360:	6d42                	ld	s10,16(sp)
    1362:	6da2                	ld	s11,8(sp)
    1364:	6165                	addi	sp,sp,112
    1366:	8082                	ret

0000000000001368 <fprintf>:
    1368:	715d                	addi	sp,sp,-80
    136a:	ec06                	sd	ra,24(sp)
    136c:	f032                	sd	a2,32(sp)
    136e:	f436                	sd	a3,40(sp)
    1370:	f83a                	sd	a4,48(sp)
    1372:	fc3e                	sd	a5,56(sp)
    1374:	e0c2                	sd	a6,64(sp)
    1376:	e4c6                	sd	a7,72(sp)
    1378:	1010                	addi	a2,sp,32
    137a:	e432                	sd	a2,8(sp)
    137c:	00000097          	auipc	ra,0x0
    1380:	e1a080e7          	jalr	-486(ra) # 1196 <vprintf>
    1384:	60e2                	ld	ra,24(sp)
    1386:	6161                	addi	sp,sp,80
    1388:	8082                	ret

000000000000138a <printf>:
    138a:	711d                	addi	sp,sp,-96
    138c:	ec06                	sd	ra,24(sp)
    138e:	f42e                	sd	a1,40(sp)
    1390:	f832                	sd	a2,48(sp)
    1392:	fc36                	sd	a3,56(sp)
    1394:	e0ba                	sd	a4,64(sp)
    1396:	e4be                	sd	a5,72(sp)
    1398:	e8c2                	sd	a6,80(sp)
    139a:	ecc6                	sd	a7,88(sp)
    139c:	1030                	addi	a2,sp,40
    139e:	e432                	sd	a2,8(sp)
    13a0:	85aa                	mv	a1,a0
    13a2:	4505                	li	a0,1
    13a4:	00000097          	auipc	ra,0x0
    13a8:	df2080e7          	jalr	-526(ra) # 1196 <vprintf>
    13ac:	60e2                	ld	ra,24(sp)
    13ae:	6125                	addi	sp,sp,96
    13b0:	8082                	ret

00000000000013b2 <cksum>:
    13b2:	cdb1                	beqz	a1,140e <cksum+0x5c>
    13b4:	00b50833          	add	a6,a0,a1
    13b8:	4781                	li	a5,0
    13ba:	00002637          	lui	a2,0x2
    13be:	e2860613          	addi	a2,a2,-472 # 1e28 <crctab>
    13c2:	0505                	addi	a0,a0,1
    13c4:	0087969b          	slliw	a3,a5,0x8
    13c8:	0187d71b          	srliw	a4,a5,0x18
    13cc:	fff54783          	lbu	a5,-1(a0)
    13d0:	8f3d                	xor	a4,a4,a5
    13d2:	1702                	slli	a4,a4,0x20
    13d4:	9301                	srli	a4,a4,0x20
    13d6:	070a                	slli	a4,a4,0x2
    13d8:	9732                	add	a4,a4,a2
    13da:	431c                	lw	a5,0(a4)
    13dc:	8fb5                	xor	a5,a5,a3
    13de:	2781                	sext.w	a5,a5
    13e0:	fea811e3          	bne	a6,a0,13c2 <cksum+0x10>
    13e4:	00002637          	lui	a2,0x2
    13e8:	e2860613          	addi	a2,a2,-472 # 1e28 <crctab>
    13ec:	0ff5f693          	andi	a3,a1,255
    13f0:	81a1                	srli	a1,a1,0x8
    13f2:	0087951b          	slliw	a0,a5,0x8
    13f6:	0187d71b          	srliw	a4,a5,0x18
    13fa:	8f35                	xor	a4,a4,a3
    13fc:	070a                	slli	a4,a4,0x2
    13fe:	9732                	add	a4,a4,a2
    1400:	431c                	lw	a5,0(a4)
    1402:	8fa9                	xor	a5,a5,a0
    1404:	2781                	sext.w	a5,a5
    1406:	f1fd                	bnez	a1,13ec <cksum+0x3a>
    1408:	fff7c513          	not	a0,a5
    140c:	8082                	ret
    140e:	4781                	li	a5,0
    1410:	bfe5                	j	1408 <cksum+0x56>

0000000000001412 <swap_bytes>:
    1412:	ce19                	beqz	a2,1430 <swap_bytes+0x1e>
    1414:	87aa                	mv	a5,a0
    1416:	962a                	add	a2,a2,a0
    1418:	0007c703          	lbu	a4,0(a5)
    141c:	0005c683          	lbu	a3,0(a1)
    1420:	00d78023          	sb	a3,0(a5)
    1424:	00e58023          	sb	a4,0(a1)
    1428:	0785                	addi	a5,a5,1
    142a:	0585                	addi	a1,a1,1
    142c:	fec796e3          	bne	a5,a2,1418 <swap_bytes+0x6>
    1430:	8082                	ret

0000000000001432 <random_init>:
    1432:	7139                	addi	sp,sp,-64
    1434:	fc06                	sd	ra,56(sp)
    1436:	f822                	sd	s0,48(sp)
    1438:	f426                	sd	s1,40(sp)
    143a:	f04a                	sd	s2,32(sp)
    143c:	ec4e                	sd	s3,24(sp)
    143e:	e852                	sd	s4,16(sp)
    1440:	c62a                	sw	a0,12(sp)
    1442:	000037b7          	lui	a5,0x3
    1446:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    144a:	eca5                	bnez	s1,14c2 <random_init+0x90>
    144c:	00003737          	lui	a4,0x3
    1450:	01070913          	addi	s2,a4,16 # 3010 <s>
    1454:	01070713          	addi	a4,a4,16
    1458:	87a6                	mv	a5,s1
    145a:	10000693          	li	a3,256
    145e:	00f70023          	sb	a5,0(a4)
    1462:	2785                	addiw	a5,a5,1
    1464:	0705                	addi	a4,a4,1
    1466:	fed79ce3          	bne	a5,a3,145e <random_init+0x2c>
    146a:	4401                	li	s0,0
    146c:	000039b7          	lui	s3,0x3
    1470:	01098993          	addi	s3,s3,16 # 3010 <s>
    1474:	10000a13          	li	s4,256
    1478:	0034f793          	andi	a5,s1,3
    147c:	0818                	addi	a4,sp,16
    147e:	97ba                	add	a5,a5,a4
    1480:	ffc7c783          	lbu	a5,-4(a5)
    1484:	00094703          	lbu	a4,0(s2)
    1488:	9fb9                	addw	a5,a5,a4
    148a:	9c3d                	addw	s0,s0,a5
    148c:	0ff47413          	andi	s0,s0,255
    1490:	4605                	li	a2,1
    1492:	008985b3          	add	a1,s3,s0
    1496:	854a                	mv	a0,s2
    1498:	00000097          	auipc	ra,0x0
    149c:	f7a080e7          	jalr	-134(ra) # 1412 <swap_bytes>
    14a0:	2485                	addiw	s1,s1,1
    14a2:	0905                	addi	s2,s2,1
    14a4:	fd449ae3          	bne	s1,s4,1478 <random_init+0x46>
    14a8:	000037b7          	lui	a5,0x3
    14ac:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14b0:	000037b7          	lui	a5,0x3
    14b4:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14b8:	000037b7          	lui	a5,0x3
    14bc:	4705                	li	a4,1
    14be:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14c2:	70e2                	ld	ra,56(sp)
    14c4:	7442                	ld	s0,48(sp)
    14c6:	74a2                	ld	s1,40(sp)
    14c8:	7902                	ld	s2,32(sp)
    14ca:	69e2                	ld	s3,24(sp)
    14cc:	6a42                	ld	s4,16(sp)
    14ce:	6121                	addi	sp,sp,64
    14d0:	8082                	ret

00000000000014d2 <random_bytes>:
    14d2:	7139                	addi	sp,sp,-64
    14d4:	fc06                	sd	ra,56(sp)
    14d6:	f822                	sd	s0,48(sp)
    14d8:	f426                	sd	s1,40(sp)
    14da:	f04a                	sd	s2,32(sp)
    14dc:	ec4e                	sd	s3,24(sp)
    14de:	e852                	sd	s4,16(sp)
    14e0:	e456                	sd	s5,8(sp)
    14e2:	e05a                	sd	s6,0(sp)
    14e4:	892a                	mv	s2,a0
    14e6:	8aae                	mv	s5,a1
    14e8:	000037b7          	lui	a5,0x3
    14ec:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14f0:	c3c1                	beqz	a5,1570 <random_bytes+0x9e>
    14f2:	060a8563          	beqz	s5,155c <random_bytes+0x8a>
    14f6:	9aca                	add	s5,s5,s2
    14f8:	00003a37          	lui	s4,0x3
    14fc:	000034b7          	lui	s1,0x3
    1500:	01048493          	addi	s1,s1,16 # 3010 <s>
    1504:	000039b7          	lui	s3,0x3
    1508:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    150c:	2505                	addiw	a0,a0,1
    150e:	0ff57513          	andi	a0,a0,255
    1512:	00aa02a3          	sb	a0,5(s4)
    1516:	00a48b33          	add	s6,s1,a0
    151a:	000b4403          	lbu	s0,0(s6)
    151e:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1522:	9c3d                	addw	s0,s0,a5
    1524:	0ff47413          	andi	s0,s0,255
    1528:	00898223          	sb	s0,4(s3)
    152c:	4605                	li	a2,1
    152e:	008485b3          	add	a1,s1,s0
    1532:	855a                	mv	a0,s6
    1534:	00000097          	auipc	ra,0x0
    1538:	ede080e7          	jalr	-290(ra) # 1412 <swap_bytes>
    153c:	9426                	add	s0,s0,s1
    153e:	000b4783          	lbu	a5,0(s6)
    1542:	00044703          	lbu	a4,0(s0)
    1546:	9fb9                	addw	a5,a5,a4
    1548:	0ff7f793          	andi	a5,a5,255
    154c:	97a6                	add	a5,a5,s1
    154e:	0007c783          	lbu	a5,0(a5)
    1552:	00f90023          	sb	a5,0(s2)
    1556:	0905                	addi	s2,s2,1
    1558:	fb2a98e3          	bne	s5,s2,1508 <random_bytes+0x36>
    155c:	70e2                	ld	ra,56(sp)
    155e:	7442                	ld	s0,48(sp)
    1560:	74a2                	ld	s1,40(sp)
    1562:	7902                	ld	s2,32(sp)
    1564:	69e2                	ld	s3,24(sp)
    1566:	6a42                	ld	s4,16(sp)
    1568:	6aa2                	ld	s5,8(sp)
    156a:	6b02                	ld	s6,0(sp)
    156c:	6121                	addi	sp,sp,64
    156e:	8082                	ret
    1570:	4501                	li	a0,0
    1572:	00000097          	auipc	ra,0x0
    1576:	ec0080e7          	jalr	-320(ra) # 1432 <random_init>
    157a:	bfa5                	j	14f2 <random_bytes+0x20>

000000000000157c <random_ulong>:
    157c:	1101                	addi	sp,sp,-32
    157e:	ec06                	sd	ra,24(sp)
    1580:	45a1                	li	a1,8
    1582:	0028                	addi	a0,sp,8
    1584:	00000097          	auipc	ra,0x0
    1588:	f4e080e7          	jalr	-178(ra) # 14d2 <random_bytes>
    158c:	6522                	ld	a0,8(sp)
    158e:	60e2                	ld	ra,24(sp)
    1590:	6105                	addi	sp,sp,32
    1592:	8082                	ret

0000000000001594 <shuffle>:
    1594:	c9b9                	beqz	a1,15ea <shuffle+0x56>
    1596:	7179                	addi	sp,sp,-48
    1598:	f406                	sd	ra,40(sp)
    159a:	f022                	sd	s0,32(sp)
    159c:	ec26                	sd	s1,24(sp)
    159e:	e84a                	sd	s2,16(sp)
    15a0:	e44e                	sd	s3,8(sp)
    15a2:	e052                	sd	s4,0(sp)
    15a4:	8a2a                	mv	s4,a0
    15a6:	89ae                	mv	s3,a1
    15a8:	84b2                	mv	s1,a2
    15aa:	892a                	mv	s2,a0
    15ac:	4401                	li	s0,0
    15ae:	00000097          	auipc	ra,0x0
    15b2:	fce080e7          	jalr	-50(ra) # 157c <random_ulong>
    15b6:	408985b3          	sub	a1,s3,s0
    15ba:	02b575b3          	remu	a1,a0,a1
    15be:	95a2                	add	a1,a1,s0
    15c0:	029585b3          	mul	a1,a1,s1
    15c4:	8626                	mv	a2,s1
    15c6:	95d2                	add	a1,a1,s4
    15c8:	854a                	mv	a0,s2
    15ca:	00000097          	auipc	ra,0x0
    15ce:	e48080e7          	jalr	-440(ra) # 1412 <swap_bytes>
    15d2:	0405                	addi	s0,s0,1
    15d4:	9926                	add	s2,s2,s1
    15d6:	fc899ce3          	bne	s3,s0,15ae <shuffle+0x1a>
    15da:	70a2                	ld	ra,40(sp)
    15dc:	7402                	ld	s0,32(sp)
    15de:	64e2                	ld	s1,24(sp)
    15e0:	6942                	ld	s2,16(sp)
    15e2:	69a2                	ld	s3,8(sp)
    15e4:	6a02                	ld	s4,0(sp)
    15e6:	6145                	addi	sp,sp,48
    15e8:	8082                	ret
    15ea:	8082                	ret

00000000000015ec <arc4_init>:
    15ec:	100500a3          	sb	zero,257(a0)
    15f0:	10050023          	sb	zero,256(a0)
    15f4:	4781                	li	a5,0
    15f6:	10000693          	li	a3,256
    15fa:	00f50733          	add	a4,a0,a5
    15fe:	00f70023          	sb	a5,0(a4)
    1602:	0785                	addi	a5,a5,1
    1604:	fed79be3          	bne	a5,a3,15fa <arc4_init+0xe>
    1608:	86aa                	mv	a3,a0
    160a:	10050e13          	addi	t3,a0,256
    160e:	4701                	li	a4,0
    1610:	4781                	li	a5,0
    1612:	0006c883          	lbu	a7,0(a3)
    1616:	00f58833          	add	a6,a1,a5
    161a:	00084803          	lbu	a6,0(a6)
    161e:	00e8873b          	addw	a4,a7,a4
    1622:	00e8073b          	addw	a4,a6,a4
    1626:	0ff77713          	andi	a4,a4,255
    162a:	00e50833          	add	a6,a0,a4
    162e:	00084303          	lbu	t1,0(a6)
    1632:	00668023          	sb	t1,0(a3)
    1636:	01180023          	sb	a7,0(a6)
    163a:	0785                	addi	a5,a5,1
    163c:	00c7b833          	sltu	a6,a5,a2
    1640:	41000833          	neg	a6,a6
    1644:	0107f7b3          	and	a5,a5,a6
    1648:	0685                	addi	a3,a3,1
    164a:	fdc694e3          	bne	a3,t3,1612 <arc4_init+0x26>
    164e:	8082                	ret

0000000000001650 <arc4_crypt>:
    1650:	10054e03          	lbu	t3,256(a0)
    1654:	10154803          	lbu	a6,257(a0)
    1658:	fff60e93          	addi	t4,a2,-1
    165c:	c225                	beqz	a2,16bc <arc4_crypt+0x6c>
    165e:	00c588b3          	add	a7,a1,a2
    1662:	86ae                	mv	a3,a1
    1664:	001e031b          	addiw	t1,t3,1
    1668:	40b3033b          	subw	t1,t1,a1
    166c:	00d3073b          	addw	a4,t1,a3
    1670:	0ff77713          	andi	a4,a4,255
    1674:	972a                	add	a4,a4,a0
    1676:	00074603          	lbu	a2,0(a4)
    167a:	0106083b          	addw	a6,a2,a6
    167e:	0ff87813          	andi	a6,a6,255
    1682:	010507b3          	add	a5,a0,a6
    1686:	0007c583          	lbu	a1,0(a5)
    168a:	00b70023          	sb	a1,0(a4)
    168e:	00c78023          	sb	a2,0(a5)
    1692:	0685                	addi	a3,a3,1
    1694:	00074783          	lbu	a5,0(a4)
    1698:	9fb1                	addw	a5,a5,a2
    169a:	0ff7f793          	andi	a5,a5,255
    169e:	97aa                	add	a5,a5,a0
    16a0:	0007c783          	lbu	a5,0(a5)
    16a4:	fff6c703          	lbu	a4,-1(a3)
    16a8:	8fb9                	xor	a5,a5,a4
    16aa:	fef68fa3          	sb	a5,-1(a3)
    16ae:	fb169fe3          	bne	a3,a7,166c <arc4_crypt+0x1c>
    16b2:	2e85                	addiw	t4,t4,1
    16b4:	01ce8e3b          	addw	t3,t4,t3
    16b8:	0ffe7e13          	andi	t3,t3,255
    16bc:	11c50023          	sb	t3,256(a0)
    16c0:	110500a3          	sb	a6,257(a0)
    16c4:	8082                	ret

00000000000016c6 <_main>:
    16c6:	1141                	addi	sp,sp,-16
    16c8:	e406                	sd	ra,8(sp)
    16ca:	00000097          	auipc	ra,0x0
    16ce:	936080e7          	jalr	-1738(ra) # 1000 <main>
    16d2:	4501                	li	a0,0
    16d4:	00000097          	auipc	ra,0x0
    16d8:	578080e7          	jalr	1400(ra) # 1c4c <exit>
    16dc:	60a2                	ld	ra,8(sp)
    16de:	0141                	addi	sp,sp,16
    16e0:	8082                	ret

00000000000016e2 <strcmp>:
    16e2:	00054783          	lbu	a5,0(a0)
    16e6:	cb91                	beqz	a5,16fa <strcmp+0x18>
    16e8:	0005c703          	lbu	a4,0(a1)
    16ec:	00f71763          	bne	a4,a5,16fa <strcmp+0x18>
    16f0:	0505                	addi	a0,a0,1
    16f2:	0585                	addi	a1,a1,1
    16f4:	00054783          	lbu	a5,0(a0)
    16f8:	fbe5                	bnez	a5,16e8 <strcmp+0x6>
    16fa:	0005c503          	lbu	a0,0(a1)
    16fe:	40a7853b          	subw	a0,a5,a0
    1702:	8082                	ret

0000000000001704 <strcpy>:
    1704:	87aa                	mv	a5,a0
    1706:	0585                	addi	a1,a1,1
    1708:	0785                	addi	a5,a5,1
    170a:	fff5c703          	lbu	a4,-1(a1)
    170e:	fee78fa3          	sb	a4,-1(a5)
    1712:	fb75                	bnez	a4,1706 <strcpy+0x2>
    1714:	8082                	ret

0000000000001716 <strlen>:
    1716:	00054783          	lbu	a5,0(a0)
    171a:	cf81                	beqz	a5,1732 <strlen+0x1c>
    171c:	0505                	addi	a0,a0,1
    171e:	87aa                	mv	a5,a0
    1720:	4685                	li	a3,1
    1722:	9e89                	subw	a3,a3,a0
    1724:	00f6853b          	addw	a0,a3,a5
    1728:	0785                	addi	a5,a5,1
    172a:	fff7c703          	lbu	a4,-1(a5)
    172e:	fb7d                	bnez	a4,1724 <strlen+0xe>
    1730:	8082                	ret
    1732:	4501                	li	a0,0
    1734:	8082                	ret

0000000000001736 <memset>:
    1736:	ca19                	beqz	a2,174c <memset+0x16>
    1738:	87aa                	mv	a5,a0
    173a:	1602                	slli	a2,a2,0x20
    173c:	9201                	srli	a2,a2,0x20
    173e:	00a60733          	add	a4,a2,a0
    1742:	00b78023          	sb	a1,0(a5)
    1746:	0785                	addi	a5,a5,1
    1748:	fee79de3          	bne	a5,a4,1742 <memset+0xc>
    174c:	8082                	ret

000000000000174e <memcmp>:
    174e:	1101                	addi	sp,sp,-32
    1750:	ec06                	sd	ra,24(sp)
    1752:	e822                	sd	s0,16(sp)
    1754:	e426                	sd	s1,8(sp)
    1756:	e04a                	sd	s2,0(sp)
    1758:	892a                	mv	s2,a0
    175a:	842e                	mv	s0,a1
    175c:	84b2                	mv	s1,a2
    175e:	c915                	beqz	a0,1792 <memcmp+0x44>
    1760:	c5ad                	beqz	a1,17ca <memcmp+0x7c>
    1762:	fff60713          	addi	a4,a2,-1
    1766:	c645                	beqz	a2,180e <memcmp+0xc0>
    1768:	87ca                	mv	a5,s2
    176a:	00190613          	addi	a2,s2,1
    176e:	963a                	add	a2,a2,a4
    1770:	0007c683          	lbu	a3,0(a5)
    1774:	00044703          	lbu	a4,0(s0)
    1778:	08e69463          	bne	a3,a4,1800 <memcmp+0xb2>
    177c:	0785                	addi	a5,a5,1
    177e:	0405                	addi	s0,s0,1
    1780:	fec798e3          	bne	a5,a2,1770 <memcmp+0x22>
    1784:	4501                	li	a0,0
    1786:	60e2                	ld	ra,24(sp)
    1788:	6442                	ld	s0,16(sp)
    178a:	64a2                	ld	s1,8(sp)
    178c:	6902                	ld	s2,0(sp)
    178e:	6105                	addi	sp,sp,32
    1790:	8082                	ret
    1792:	4501                	li	a0,0
    1794:	da6d                	beqz	a2,1786 <memcmp+0x38>
    1796:	03200693          	li	a3,50
    179a:	00002637          	lui	a2,0x2
    179e:	22860613          	addi	a2,a2,552 # 2228 <crctab+0x400>
    17a2:	000025b7          	lui	a1,0x2
    17a6:	23858593          	addi	a1,a1,568 # 2238 <crctab+0x410>
    17aa:	4509                	li	a0,2
    17ac:	00000097          	auipc	ra,0x0
    17b0:	bbc080e7          	jalr	-1092(ra) # 1368 <fprintf>
    17b4:	650d                	lui	a0,0x3
    17b6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17ba:	00000097          	auipc	ra,0x0
    17be:	492080e7          	jalr	1170(ra) # 1c4c <exit>
    17c2:	fff48713          	addi	a4,s1,-1
    17c6:	f04d                	bnez	s0,1768 <memcmp+0x1a>
    17c8:	a011                	j	17cc <memcmp+0x7e>
    17ca:	c221                	beqz	a2,180a <memcmp+0xbc>
    17cc:	03300693          	li	a3,51
    17d0:	00002637          	lui	a2,0x2
    17d4:	22860613          	addi	a2,a2,552 # 2228 <crctab+0x400>
    17d8:	000025b7          	lui	a1,0x2
    17dc:	28058593          	addi	a1,a1,640 # 2280 <crctab+0x458>
    17e0:	4509                	li	a0,2
    17e2:	00000097          	auipc	ra,0x0
    17e6:	b86080e7          	jalr	-1146(ra) # 1368 <fprintf>
    17ea:	650d                	lui	a0,0x3
    17ec:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17f0:	00000097          	auipc	ra,0x0
    17f4:	45c080e7          	jalr	1116(ra) # 1c4c <exit>
    17f8:	fff48713          	addi	a4,s1,-1
    17fc:	4401                	li	s0,0
    17fe:	b7ad                	j	1768 <memcmp+0x1a>
    1800:	4505                	li	a0,1
    1802:	f8d762e3          	bltu	a4,a3,1786 <memcmp+0x38>
    1806:	557d                	li	a0,-1
    1808:	bfbd                	j	1786 <memcmp+0x38>
    180a:	4501                	li	a0,0
    180c:	bfad                	j	1786 <memcmp+0x38>
    180e:	4501                	li	a0,0
    1810:	bf9d                	j	1786 <memcmp+0x38>

0000000000001812 <memcpy>:
    1812:	1101                	addi	sp,sp,-32
    1814:	ec06                	sd	ra,24(sp)
    1816:	e822                	sd	s0,16(sp)
    1818:	e426                	sd	s1,8(sp)
    181a:	e04a                	sd	s2,0(sp)
    181c:	84aa                	mv	s1,a0
    181e:	842e                	mv	s0,a1
    1820:	8932                	mv	s2,a2
    1822:	c51d                	beqz	a0,1850 <memcpy+0x3e>
    1824:	c1ad                	beqz	a1,1886 <memcpy+0x74>
    1826:	fff60693          	addi	a3,a2,-1
    182a:	ce01                	beqz	a2,1842 <memcpy+0x30>
    182c:	0685                	addi	a3,a3,1
    182e:	96a6                	add	a3,a3,s1
    1830:	87a6                	mv	a5,s1
    1832:	0405                	addi	s0,s0,1
    1834:	0785                	addi	a5,a5,1
    1836:	fff44703          	lbu	a4,-1(s0)
    183a:	fee78fa3          	sb	a4,-1(a5)
    183e:	fed79ae3          	bne	a5,a3,1832 <memcpy+0x20>
    1842:	8526                	mv	a0,s1
    1844:	60e2                	ld	ra,24(sp)
    1846:	6442                	ld	s0,16(sp)
    1848:	64a2                	ld	s1,8(sp)
    184a:	6902                	ld	s2,0(sp)
    184c:	6105                	addi	sp,sp,32
    184e:	8082                	ret
    1850:	da6d                	beqz	a2,1842 <memcpy+0x30>
    1852:	04000693          	li	a3,64
    1856:	00002637          	lui	a2,0x2
    185a:	22860613          	addi	a2,a2,552 # 2228 <crctab+0x400>
    185e:	000025b7          	lui	a1,0x2
    1862:	2c858593          	addi	a1,a1,712 # 22c8 <crctab+0x4a0>
    1866:	4509                	li	a0,2
    1868:	00000097          	auipc	ra,0x0
    186c:	b00080e7          	jalr	-1280(ra) # 1368 <fprintf>
    1870:	650d                	lui	a0,0x3
    1872:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1876:	00000097          	auipc	ra,0x0
    187a:	3d6080e7          	jalr	982(ra) # 1c4c <exit>
    187e:	fff90693          	addi	a3,s2,-1
    1882:	f44d                	bnez	s0,182c <memcpy+0x1a>
    1884:	a011                	j	1888 <memcpy+0x76>
    1886:	de55                	beqz	a2,1842 <memcpy+0x30>
    1888:	04100693          	li	a3,65
    188c:	00002637          	lui	a2,0x2
    1890:	22860613          	addi	a2,a2,552 # 2228 <crctab+0x400>
    1894:	000025b7          	lui	a1,0x2
    1898:	31058593          	addi	a1,a1,784 # 2310 <crctab+0x4e8>
    189c:	4509                	li	a0,2
    189e:	00000097          	auipc	ra,0x0
    18a2:	aca080e7          	jalr	-1334(ra) # 1368 <fprintf>
    18a6:	650d                	lui	a0,0x3
    18a8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18ac:	00000097          	auipc	ra,0x0
    18b0:	3a0080e7          	jalr	928(ra) # 1c4c <exit>
    18b4:	fff90693          	addi	a3,s2,-1
    18b8:	4401                	li	s0,0
    18ba:	bf8d                	j	182c <memcpy+0x1a>

00000000000018bc <itoa>:
    18bc:	1101                	addi	sp,sp,-32
    18be:	ec06                	sd	ra,24(sp)
    18c0:	e822                	sd	s0,16(sp)
    18c2:	e426                	sd	s1,8(sp)
    18c4:	842a                	mv	s0,a0
    18c6:	41f5d71b          	sraiw	a4,a1,0x1f
    18ca:	00e5c7b3          	xor	a5,a1,a4
    18ce:	9f99                	subw	a5,a5,a4
    18d0:	84aa                	mv	s1,a0
    18d2:	862a                	mv	a2,a0
    18d4:	4681                	li	a3,0
    18d6:	4529                	li	a0,10
    18d8:	4825                	li	a6,9
    18da:	88b6                	mv	a7,a3
    18dc:	2685                	addiw	a3,a3,1
    18de:	02a7e73b          	remw	a4,a5,a0
    18e2:	0307071b          	addiw	a4,a4,48
    18e6:	00e60023          	sb	a4,0(a2)
    18ea:	873e                	mv	a4,a5
    18ec:	02a7c7bb          	divw	a5,a5,a0
    18f0:	0605                	addi	a2,a2,1
    18f2:	fee844e3          	blt	a6,a4,18da <itoa+0x1e>
    18f6:	0405c863          	bltz	a1,1946 <itoa+0x8a>
    18fa:	96a2                	add	a3,a3,s0
    18fc:	00068023          	sb	zero,0(a3)
    1900:	8522                	mv	a0,s0
    1902:	00000097          	auipc	ra,0x0
    1906:	e14080e7          	jalr	-492(ra) # 1716 <strlen>
    190a:	fff5071b          	addiw	a4,a0,-1
    190e:	02e05763          	blez	a4,193c <itoa+0x80>
    1912:	9722                	add	a4,a4,s0
    1914:	4681                	li	a3,0
    1916:	0004c783          	lbu	a5,0(s1)
    191a:	00074603          	lbu	a2,0(a4)
    191e:	00c48023          	sb	a2,0(s1)
    1922:	00f70023          	sb	a5,0(a4)
    1926:	0016879b          	addiw	a5,a3,1
    192a:	0007869b          	sext.w	a3,a5
    192e:	0485                	addi	s1,s1,1
    1930:	177d                	addi	a4,a4,-1
    1932:	fff7c793          	not	a5,a5
    1936:	9fa9                	addw	a5,a5,a0
    1938:	fcf6cfe3          	blt	a3,a5,1916 <itoa+0x5a>
    193c:	60e2                	ld	ra,24(sp)
    193e:	6442                	ld	s0,16(sp)
    1940:	64a2                	ld	s1,8(sp)
    1942:	6105                	addi	sp,sp,32
    1944:	8082                	ret
    1946:	96a2                	add	a3,a3,s0
    1948:	02d00793          	li	a5,45
    194c:	00f68023          	sb	a5,0(a3)
    1950:	0028869b          	addiw	a3,a7,2
    1954:	b75d                	j	18fa <itoa+0x3e>

0000000000001956 <atoi>:
    1956:	00054783          	lbu	a5,0(a0)
    195a:	02000713          	li	a4,32
    195e:	00e79763          	bne	a5,a4,196c <atoi+0x16>
    1962:	0505                	addi	a0,a0,1
    1964:	00054783          	lbu	a5,0(a0)
    1968:	fee78de3          	beq	a5,a4,1962 <atoi+0xc>
    196c:	02b00713          	li	a4,43
    1970:	04e78663          	beq	a5,a4,19bc <atoi+0x66>
    1974:	02d00713          	li	a4,45
    1978:	4805                	li	a6,1
    197a:	04e78463          	beq	a5,a4,19c2 <atoi+0x6c>
    197e:	00054683          	lbu	a3,0(a0)
    1982:	fd06879b          	addiw	a5,a3,-48
    1986:	0ff7f793          	andi	a5,a5,255
    198a:	4725                	li	a4,9
    198c:	02f76e63          	bltu	a4,a5,19c8 <atoi+0x72>
    1990:	4601                	li	a2,0
    1992:	45a5                	li	a1,9
    1994:	0505                	addi	a0,a0,1
    1996:	0026179b          	slliw	a5,a2,0x2
    199a:	9fb1                	addw	a5,a5,a2
    199c:	0017979b          	slliw	a5,a5,0x1
    19a0:	9fb5                	addw	a5,a5,a3
    19a2:	fd07861b          	addiw	a2,a5,-48
    19a6:	00054683          	lbu	a3,0(a0)
    19aa:	fd06871b          	addiw	a4,a3,-48
    19ae:	0ff77713          	andi	a4,a4,255
    19b2:	fee5f1e3          	bgeu	a1,a4,1994 <atoi+0x3e>
    19b6:	02c8053b          	mulw	a0,a6,a2
    19ba:	8082                	ret
    19bc:	0505                	addi	a0,a0,1
    19be:	4805                	li	a6,1
    19c0:	bf7d                	j	197e <atoi+0x28>
    19c2:	0505                	addi	a0,a0,1
    19c4:	587d                	li	a6,-1
    19c6:	bf65                	j	197e <atoi+0x28>
    19c8:	4601                	li	a2,0
    19ca:	b7f5                	j	19b6 <atoi+0x60>

00000000000019cc <check_file_handle>:
    19cc:	d8010113          	addi	sp,sp,-640
    19d0:	26113c23          	sd	ra,632(sp)
    19d4:	26813823          	sd	s0,624(sp)
    19d8:	26913423          	sd	s1,616(sp)
    19dc:	27213023          	sd	s2,608(sp)
    19e0:	25313c23          	sd	s3,600(sp)
    19e4:	25413823          	sd	s4,592(sp)
    19e8:	25513423          	sd	s5,584(sp)
    19ec:	25613023          	sd	s6,576(sp)
    19f0:	23713c23          	sd	s7,568(sp)
    19f4:	23813823          	sd	s8,560(sp)
    19f8:	23913423          	sd	s9,552(sp)
    19fc:	23a13023          	sd	s10,544(sp)
    1a00:	21b13c23          	sd	s11,536(sp)
    1a04:	8baa                	mv	s7,a0
    1a06:	8a2e                	mv	s4,a1
    1a08:	8c32                	mv	s8,a2
    1a0a:	89b6                	mv	s3,a3
    1a0c:	040c                	addi	a1,sp,512
    1a0e:	00000097          	auipc	ra,0x0
    1a12:	28e080e7          	jalr	654(ra) # 1c9c <fstat>
    1a16:	20813603          	ld	a2,520(sp)
    1a1a:	03361163          	bne	a2,s3,1a3c <check_file_handle+0x70>
    1a1e:	06098763          	beqz	s3,1a8c <check_file_handle+0xc0>
    1a22:	4901                	li	s2,0
    1a24:	20000a93          	li	s5,512
    1a28:	00002cb7          	lui	s9,0x2
    1a2c:	00002db7          	lui	s11,0x2
    1a30:	6b0d                	lui	s6,0x3
    1a32:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a36:	00002d37          	lui	s10,0x2
    1a3a:	aa39                	j	1b58 <check_file_handle+0x18c>
    1a3c:	86ce                	mv	a3,s3
    1a3e:	85d2                	mv	a1,s4
    1a40:	00002537          	lui	a0,0x2
    1a44:	35850513          	addi	a0,a0,856 # 2358 <crctab+0x530>
    1a48:	00000097          	auipc	ra,0x0
    1a4c:	942080e7          	jalr	-1726(ra) # 138a <printf>
    1a50:	fc0999e3          	bnez	s3,1a22 <check_file_handle+0x56>
    1a54:	20813683          	ld	a3,520(sp)
    1a58:	03368a63          	beq	a3,s3,1a8c <check_file_handle+0xc0>
    1a5c:	0a600813          	li	a6,166
    1a60:	000027b7          	lui	a5,0x2
    1a64:	22878793          	addi	a5,a5,552 # 2228 <crctab+0x400>
    1a68:	874e                	mv	a4,s3
    1a6a:	8652                	mv	a2,s4
    1a6c:	000025b7          	lui	a1,0x2
    1a70:	42858593          	addi	a1,a1,1064 # 2428 <crctab+0x600>
    1a74:	4509                	li	a0,2
    1a76:	00000097          	auipc	ra,0x0
    1a7a:	8f2080e7          	jalr	-1806(ra) # 1368 <fprintf>
    1a7e:	650d                	lui	a0,0x3
    1a80:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a84:	00000097          	auipc	ra,0x0
    1a88:	1c8080e7          	jalr	456(ra) # 1c4c <exit>
    1a8c:	85d2                	mv	a1,s4
    1a8e:	00002537          	lui	a0,0x2
    1a92:	47050513          	addi	a0,a0,1136 # 2470 <crctab+0x648>
    1a96:	00000097          	auipc	ra,0x0
    1a9a:	8f4080e7          	jalr	-1804(ra) # 138a <printf>
    1a9e:	27813083          	ld	ra,632(sp)
    1aa2:	27013403          	ld	s0,624(sp)
    1aa6:	26813483          	ld	s1,616(sp)
    1aaa:	26013903          	ld	s2,608(sp)
    1aae:	25813983          	ld	s3,600(sp)
    1ab2:	25013a03          	ld	s4,592(sp)
    1ab6:	24813a83          	ld	s5,584(sp)
    1aba:	24013b03          	ld	s6,576(sp)
    1abe:	23813b83          	ld	s7,568(sp)
    1ac2:	23013c03          	ld	s8,560(sp)
    1ac6:	22813c83          	ld	s9,552(sp)
    1aca:	22013d03          	ld	s10,544(sp)
    1ace:	21813d83          	ld	s11,536(sp)
    1ad2:	28010113          	addi	sp,sp,640
    1ad6:	8082                	ret
    1ad8:	09d00893          	li	a7,157
    1adc:	228c8813          	addi	a6,s9,552 # 2228 <crctab+0x400>
    1ae0:	87aa                	mv	a5,a0
    1ae2:	8752                	mv	a4,s4
    1ae4:	86ca                	mv	a3,s2
    1ae6:	8622                	mv	a2,s0
    1ae8:	388d8593          	addi	a1,s11,904 # 2388 <crctab+0x560>
    1aec:	4509                	li	a0,2
    1aee:	00000097          	auipc	ra,0x0
    1af2:	87a080e7          	jalr	-1926(ra) # 1368 <fprintf>
    1af6:	855a                	mv	a0,s6
    1af8:	00000097          	auipc	ra,0x0
    1afc:	154080e7          	jalr	340(ra) # 1c4c <exit>
    1b00:	a89d                	j	1b76 <check_file_handle+0x1aa>
    1b02:	00160593          	addi	a1,a2,1
    1b06:	0285f163          	bgeu	a1,s0,1b28 <check_file_handle+0x15c>
    1b0a:	00c10733          	add	a4,sp,a2
    1b0e:	00b487b3          	add	a5,s1,a1
    1b12:	00174683          	lbu	a3,1(a4)
    1b16:	0007c783          	lbu	a5,0(a5)
    1b1a:	00f68763          	beq	a3,a5,1b28 <check_file_handle+0x15c>
    1b1e:	0585                	addi	a1,a1,1
    1b20:	0705                	addi	a4,a4,1
    1b22:	feb416e3          	bne	s0,a1,1b0e <check_file_handle+0x142>
    1b26:	85a2                	mv	a1,s0
    1b28:	08100813          	li	a6,129
    1b2c:	228c8793          	addi	a5,s9,552
    1b30:	8752                	mv	a4,s4
    1b32:	012606b3          	add	a3,a2,s2
    1b36:	40c58633          	sub	a2,a1,a2
    1b3a:	3d0d0593          	addi	a1,s10,976 # 23d0 <crctab+0x5a8>
    1b3e:	4509                	li	a0,2
    1b40:	00000097          	auipc	ra,0x0
    1b44:	828080e7          	jalr	-2008(ra) # 1368 <fprintf>
    1b48:	855a                	mv	a0,s6
    1b4a:	00000097          	auipc	ra,0x0
    1b4e:	102080e7          	jalr	258(ra) # 1c4c <exit>
    1b52:	9922                	add	s2,s2,s0
    1b54:	f13970e3          	bgeu	s2,s3,1a54 <check_file_handle+0x88>
    1b58:	41298433          	sub	s0,s3,s2
    1b5c:	008af363          	bgeu	s5,s0,1b62 <check_file_handle+0x196>
    1b60:	8456                	mv	s0,s5
    1b62:	0004061b          	sext.w	a2,s0
    1b66:	858a                	mv	a1,sp
    1b68:	855e                	mv	a0,s7
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	10a080e7          	jalr	266(ra) # 1c74 <read>
    1b72:	f68513e3          	bne	a0,s0,1ad8 <check_file_handle+0x10c>
    1b76:	012c04b3          	add	s1,s8,s2
    1b7a:	8622                	mv	a2,s0
    1b7c:	85a6                	mv	a1,s1
    1b7e:	850a                	mv	a0,sp
    1b80:	00000097          	auipc	ra,0x0
    1b84:	bce080e7          	jalr	-1074(ra) # 174e <memcmp>
    1b88:	d569                	beqz	a0,1b52 <check_file_handle+0x186>
    1b8a:	03298163          	beq	s3,s2,1bac <check_file_handle+0x1e0>
    1b8e:	870a                	mv	a4,sp
    1b90:	4601                	li	a2,0
    1b92:	00c487b3          	add	a5,s1,a2
    1b96:	00074683          	lbu	a3,0(a4)
    1b9a:	0007c783          	lbu	a5,0(a5)
    1b9e:	f6f692e3          	bne	a3,a5,1b02 <check_file_handle+0x136>
    1ba2:	0605                	addi	a2,a2,1
    1ba4:	0705                	addi	a4,a4,1
    1ba6:	fe8666e3          	bltu	a2,s0,1b92 <check_file_handle+0x1c6>
    1baa:	bfa1                	j	1b02 <check_file_handle+0x136>
    1bac:	4601                	li	a2,0
    1bae:	4585                	li	a1,1
    1bb0:	bfa5                	j	1b28 <check_file_handle+0x15c>

0000000000001bb2 <check_file>:
    1bb2:	7179                	addi	sp,sp,-48
    1bb4:	f406                	sd	ra,40(sp)
    1bb6:	f022                	sd	s0,32(sp)
    1bb8:	ec26                	sd	s1,24(sp)
    1bba:	e84a                	sd	s2,16(sp)
    1bbc:	e44e                	sd	s3,8(sp)
    1bbe:	84aa                	mv	s1,a0
    1bc0:	892e                	mv	s2,a1
    1bc2:	89b2                	mv	s3,a2
    1bc4:	4581                	li	a1,0
    1bc6:	00000097          	auipc	ra,0x0
    1bca:	0a6080e7          	jalr	166(ra) # 1c6c <open>
    1bce:	842a                	mv	s0,a0
    1bd0:	4789                	li	a5,2
    1bd2:	02a7df63          	bge	a5,a0,1c10 <check_file+0x5e>
    1bd6:	86ce                	mv	a3,s3
    1bd8:	864a                	mv	a2,s2
    1bda:	85a6                	mv	a1,s1
    1bdc:	8522                	mv	a0,s0
    1bde:	00000097          	auipc	ra,0x0
    1be2:	dee080e7          	jalr	-530(ra) # 19cc <check_file_handle>
    1be6:	85a6                	mv	a1,s1
    1be8:	00002537          	lui	a0,0x2
    1bec:	4f850513          	addi	a0,a0,1272 # 24f8 <crctab+0x6d0>
    1bf0:	fffff097          	auipc	ra,0xfffff
    1bf4:	79a080e7          	jalr	1946(ra) # 138a <printf>
    1bf8:	8522                	mv	a0,s0
    1bfa:	00000097          	auipc	ra,0x0
    1bfe:	09a080e7          	jalr	154(ra) # 1c94 <close>
    1c02:	70a2                	ld	ra,40(sp)
    1c04:	7402                	ld	s0,32(sp)
    1c06:	64e2                	ld	s1,24(sp)
    1c08:	6942                	ld	s2,16(sp)
    1c0a:	69a2                	ld	s3,8(sp)
    1c0c:	6145                	addi	sp,sp,48
    1c0e:	8082                	ret
    1c10:	0ae00713          	li	a4,174
    1c14:	000026b7          	lui	a3,0x2
    1c18:	22868693          	addi	a3,a3,552 # 2228 <crctab+0x400>
    1c1c:	8626                	mv	a2,s1
    1c1e:	000025b7          	lui	a1,0x2
    1c22:	49058593          	addi	a1,a1,1168 # 2490 <crctab+0x668>
    1c26:	4509                	li	a0,2
    1c28:	fffff097          	auipc	ra,0xfffff
    1c2c:	740080e7          	jalr	1856(ra) # 1368 <fprintf>
    1c30:	650d                	lui	a0,0x3
    1c32:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c36:	00000097          	auipc	ra,0x0
    1c3a:	016080e7          	jalr	22(ra) # 1c4c <exit>
    1c3e:	bf61                	j	1bd6 <check_file+0x24>

0000000000001c40 <r_sp>:
    1c40:	850a                	mv	a0,sp
    1c42:	8082                	ret

0000000000001c44 <halt>:
    1c44:	4885                	li	a7,1
    1c46:	00000073          	ecall
    1c4a:	8082                	ret

0000000000001c4c <exit>:
    1c4c:	4889                	li	a7,2
    1c4e:	00000073          	ecall
    1c52:	8082                	ret

0000000000001c54 <exec>:
    1c54:	488d                	li	a7,3
    1c56:	00000073          	ecall
    1c5a:	8082                	ret

0000000000001c5c <wait>:
    1c5c:	4891                	li	a7,4
    1c5e:	00000073          	ecall
    1c62:	8082                	ret

0000000000001c64 <remove>:
    1c64:	4895                	li	a7,5
    1c66:	00000073          	ecall
    1c6a:	8082                	ret

0000000000001c6c <open>:
    1c6c:	4899                	li	a7,6
    1c6e:	00000073          	ecall
    1c72:	8082                	ret

0000000000001c74 <read>:
    1c74:	489d                	li	a7,7
    1c76:	00000073          	ecall
    1c7a:	8082                	ret

0000000000001c7c <write>:
    1c7c:	48a1                	li	a7,8
    1c7e:	00000073          	ecall
    1c82:	8082                	ret

0000000000001c84 <seek>:
    1c84:	48a5                	li	a7,9
    1c86:	00000073          	ecall
    1c8a:	8082                	ret

0000000000001c8c <tell>:
    1c8c:	48a9                	li	a7,10
    1c8e:	00000073          	ecall
    1c92:	8082                	ret

0000000000001c94 <close>:
    1c94:	48ad                	li	a7,11
    1c96:	00000073          	ecall
    1c9a:	8082                	ret

0000000000001c9c <fstat>:
    1c9c:	48b1                	li	a7,12
    1c9e:	00000073          	ecall
    1ca2:	8082                	ret

0000000000001ca4 <mmap>:
    1ca4:	48b5                	li	a7,13
    1ca6:	00000073          	ecall
    1caa:	8082                	ret

0000000000001cac <munmap>:
    1cac:	48b9                	li	a7,14
    1cae:	00000073          	ecall
    1cb2:	8082                	ret

0000000000001cb4 <chdir>:
    1cb4:	48bd                	li	a7,15
    1cb6:	00000073          	ecall
    1cba:	8082                	ret

0000000000001cbc <mkdir>:
    1cbc:	48c1                	li	a7,16
    1cbe:	00000073          	ecall
    1cc2:	8082                	ret
