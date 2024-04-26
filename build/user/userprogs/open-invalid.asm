
build/user/userprogs/open-invalid:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	60100593          	li	a1,1537
    1008:	4501                	li	a0,0
    100a:	00001097          	auipc	ra,0x1
    100e:	c58080e7          	jalr	-936(ra) # 1c62 <open>
    1012:	57fd                	li	a5,-1
    1014:	02f51e63          	bne	a0,a5,1050 <main+0x50>
    1018:	20200593          	li	a1,514
    101c:	00002537          	lui	a0,0x2
    1020:	47050513          	addi	a0,a0,1136 # 2470 <crctab+0x640>
    1024:	00001097          	auipc	ra,0x1
    1028:	c3e080e7          	jalr	-962(ra) # 1c62 <open>
    102c:	57fd                	li	a5,-1
    102e:	04f51763          	bne	a0,a5,107c <main+0x7c>
    1032:	4581                	li	a1,0
    1034:	00002537          	lui	a0,0x2
    1038:	da050513          	addi	a0,a0,-608 # 1da0 <mkdir+0xee>
    103c:	00001097          	auipc	ra,0x1
    1040:	c26080e7          	jalr	-986(ra) # 1c62 <open>
    1044:	57fd                	li	a5,-1
    1046:	06f51163          	bne	a0,a5,10a8 <main+0xa8>
    104a:	60a2                	ld	ra,8(sp)
    104c:	0141                	addi	sp,sp,16
    104e:	8082                	ret
    1050:	4699                	li	a3,6
    1052:	00002637          	lui	a2,0x2
    1056:	cc060613          	addi	a2,a2,-832 # 1cc0 <mkdir+0xe>
    105a:	000025b7          	lui	a1,0x2
    105e:	ce058593          	addi	a1,a1,-800 # 1ce0 <mkdir+0x2e>
    1062:	4509                	li	a0,2
    1064:	00000097          	auipc	ra,0x0
    1068:	2fa080e7          	jalr	762(ra) # 135e <fprintf>
    106c:	650d                	lui	a0,0x3
    106e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1072:	00001097          	auipc	ra,0x1
    1076:	bd0080e7          	jalr	-1072(ra) # 1c42 <exit>
    107a:	bf79                	j	1018 <main+0x18>
    107c:	469d                	li	a3,7
    107e:	00002637          	lui	a2,0x2
    1082:	cc060613          	addi	a2,a2,-832 # 1cc0 <mkdir+0xe>
    1086:	000025b7          	lui	a1,0x2
    108a:	d4858593          	addi	a1,a1,-696 # 1d48 <mkdir+0x96>
    108e:	4509                	li	a0,2
    1090:	00000097          	auipc	ra,0x0
    1094:	2ce080e7          	jalr	718(ra) # 135e <fprintf>
    1098:	650d                	lui	a0,0x3
    109a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    109e:	00001097          	auipc	ra,0x1
    10a2:	ba4080e7          	jalr	-1116(ra) # 1c42 <exit>
    10a6:	b771                	j	1032 <main+0x32>
    10a8:	46a1                	li	a3,8
    10aa:	00002637          	lui	a2,0x2
    10ae:	cc060613          	addi	a2,a2,-832 # 1cc0 <mkdir+0xe>
    10b2:	000025b7          	lui	a1,0x2
    10b6:	db058593          	addi	a1,a1,-592 # 1db0 <mkdir+0xfe>
    10ba:	4509                	li	a0,2
    10bc:	00000097          	auipc	ra,0x0
    10c0:	2a2080e7          	jalr	674(ra) # 135e <fprintf>
    10c4:	650d                	lui	a0,0x3
    10c6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    10ca:	00001097          	auipc	ra,0x1
    10ce:	b78080e7          	jalr	-1160(ra) # 1c42 <exit>
    10d2:	bfa5                	j	104a <main+0x4a>

00000000000010d4 <putc>:
    10d4:	1101                	addi	sp,sp,-32
    10d6:	ec06                	sd	ra,24(sp)
    10d8:	00b107a3          	sb	a1,15(sp)
    10dc:	4605                	li	a2,1
    10de:	00f10593          	addi	a1,sp,15
    10e2:	00001097          	auipc	ra,0x1
    10e6:	b90080e7          	jalr	-1136(ra) # 1c72 <write>
    10ea:	60e2                	ld	ra,24(sp)
    10ec:	6105                	addi	sp,sp,32
    10ee:	8082                	ret

00000000000010f0 <printint>:
    10f0:	7179                	addi	sp,sp,-48
    10f2:	f406                	sd	ra,40(sp)
    10f4:	f022                	sd	s0,32(sp)
    10f6:	ec26                	sd	s1,24(sp)
    10f8:	e84a                	sd	s2,16(sp)
    10fa:	84aa                	mv	s1,a0
    10fc:	c299                	beqz	a3,1102 <printint+0x12>
    10fe:	0805c363          	bltz	a1,1184 <printint+0x94>
    1102:	2581                	sext.w	a1,a1
    1104:	4881                	li	a7,0
    1106:	868a                	mv	a3,sp
    1108:	4701                	li	a4,0
    110a:	2601                	sext.w	a2,a2
    110c:	00002537          	lui	a0,0x2
    1110:	e1850513          	addi	a0,a0,-488 # 1e18 <digits>
    1114:	883a                	mv	a6,a4
    1116:	2705                	addiw	a4,a4,1
    1118:	02c5f7bb          	remuw	a5,a1,a2
    111c:	1782                	slli	a5,a5,0x20
    111e:	9381                	srli	a5,a5,0x20
    1120:	97aa                	add	a5,a5,a0
    1122:	0007c783          	lbu	a5,0(a5)
    1126:	00f68023          	sb	a5,0(a3)
    112a:	0005879b          	sext.w	a5,a1
    112e:	02c5d5bb          	divuw	a1,a1,a2
    1132:	0685                	addi	a3,a3,1
    1134:	fec7f0e3          	bgeu	a5,a2,1114 <printint+0x24>
    1138:	00088a63          	beqz	a7,114c <printint+0x5c>
    113c:	081c                	addi	a5,sp,16
    113e:	973e                	add	a4,a4,a5
    1140:	02d00793          	li	a5,45
    1144:	fef70823          	sb	a5,-16(a4)
    1148:	0028071b          	addiw	a4,a6,2
    114c:	02e05663          	blez	a4,1178 <printint+0x88>
    1150:	00e10433          	add	s0,sp,a4
    1154:	fff10913          	addi	s2,sp,-1
    1158:	993a                	add	s2,s2,a4
    115a:	377d                	addiw	a4,a4,-1
    115c:	1702                	slli	a4,a4,0x20
    115e:	9301                	srli	a4,a4,0x20
    1160:	40e90933          	sub	s2,s2,a4
    1164:	fff44583          	lbu	a1,-1(s0)
    1168:	8526                	mv	a0,s1
    116a:	00000097          	auipc	ra,0x0
    116e:	f6a080e7          	jalr	-150(ra) # 10d4 <putc>
    1172:	147d                	addi	s0,s0,-1
    1174:	ff2418e3          	bne	s0,s2,1164 <printint+0x74>
    1178:	70a2                	ld	ra,40(sp)
    117a:	7402                	ld	s0,32(sp)
    117c:	64e2                	ld	s1,24(sp)
    117e:	6942                	ld	s2,16(sp)
    1180:	6145                	addi	sp,sp,48
    1182:	8082                	ret
    1184:	40b005bb          	negw	a1,a1
    1188:	4885                	li	a7,1
    118a:	bfb5                	j	1106 <printint+0x16>

000000000000118c <vprintf>:
    118c:	7159                	addi	sp,sp,-112
    118e:	f486                	sd	ra,104(sp)
    1190:	f0a2                	sd	s0,96(sp)
    1192:	eca6                	sd	s1,88(sp)
    1194:	e8ca                	sd	s2,80(sp)
    1196:	e4ce                	sd	s3,72(sp)
    1198:	e0d2                	sd	s4,64(sp)
    119a:	fc56                	sd	s5,56(sp)
    119c:	f85a                	sd	s6,48(sp)
    119e:	f45e                	sd	s7,40(sp)
    11a0:	f062                	sd	s8,32(sp)
    11a2:	ec66                	sd	s9,24(sp)
    11a4:	e86a                	sd	s10,16(sp)
    11a6:	e46e                	sd	s11,8(sp)
    11a8:	0005c483          	lbu	s1,0(a1)
    11ac:	18048a63          	beqz	s1,1340 <vprintf+0x1b4>
    11b0:	8a2a                	mv	s4,a0
    11b2:	8ab2                	mv	s5,a2
    11b4:	00158413          	addi	s0,a1,1
    11b8:	4901                	li	s2,0
    11ba:	02500993          	li	s3,37
    11be:	06400b93          	li	s7,100
    11c2:	06c00c13          	li	s8,108
    11c6:	07800c93          	li	s9,120
    11ca:	07000d13          	li	s10,112
    11ce:	00002db7          	lui	s11,0x2
    11d2:	00002b37          	lui	s6,0x2
    11d6:	e18b0b13          	addi	s6,s6,-488 # 1e18 <digits>
    11da:	a839                	j	11f8 <vprintf+0x6c>
    11dc:	85a6                	mv	a1,s1
    11de:	8552                	mv	a0,s4
    11e0:	00000097          	auipc	ra,0x0
    11e4:	ef4080e7          	jalr	-268(ra) # 10d4 <putc>
    11e8:	a019                	j	11ee <vprintf+0x62>
    11ea:	01390f63          	beq	s2,s3,1208 <vprintf+0x7c>
    11ee:	0405                	addi	s0,s0,1
    11f0:	fff44483          	lbu	s1,-1(s0)
    11f4:	14048663          	beqz	s1,1340 <vprintf+0x1b4>
    11f8:	0004879b          	sext.w	a5,s1
    11fc:	fe0917e3          	bnez	s2,11ea <vprintf+0x5e>
    1200:	fd379ee3          	bne	a5,s3,11dc <vprintf+0x50>
    1204:	893e                	mv	s2,a5
    1206:	b7e5                	j	11ee <vprintf+0x62>
    1208:	05778063          	beq	a5,s7,1248 <vprintf+0xbc>
    120c:	05878c63          	beq	a5,s8,1264 <vprintf+0xd8>
    1210:	07978863          	beq	a5,s9,1280 <vprintf+0xf4>
    1214:	09a78463          	beq	a5,s10,129c <vprintf+0x110>
    1218:	07300713          	li	a4,115
    121c:	0ce78263          	beq	a5,a4,12e0 <vprintf+0x154>
    1220:	06300713          	li	a4,99
    1224:	0ee78763          	beq	a5,a4,1312 <vprintf+0x186>
    1228:	11378163          	beq	a5,s3,132a <vprintf+0x19e>
    122c:	85ce                	mv	a1,s3
    122e:	8552                	mv	a0,s4
    1230:	00000097          	auipc	ra,0x0
    1234:	ea4080e7          	jalr	-348(ra) # 10d4 <putc>
    1238:	85a6                	mv	a1,s1
    123a:	8552                	mv	a0,s4
    123c:	00000097          	auipc	ra,0x0
    1240:	e98080e7          	jalr	-360(ra) # 10d4 <putc>
    1244:	4901                	li	s2,0
    1246:	b765                	j	11ee <vprintf+0x62>
    1248:	008a8493          	addi	s1,s5,8
    124c:	4685                	li	a3,1
    124e:	4629                	li	a2,10
    1250:	000aa583          	lw	a1,0(s5)
    1254:	8552                	mv	a0,s4
    1256:	00000097          	auipc	ra,0x0
    125a:	e9a080e7          	jalr	-358(ra) # 10f0 <printint>
    125e:	8aa6                	mv	s5,s1
    1260:	4901                	li	s2,0
    1262:	b771                	j	11ee <vprintf+0x62>
    1264:	008a8493          	addi	s1,s5,8
    1268:	4681                	li	a3,0
    126a:	4629                	li	a2,10
    126c:	000aa583          	lw	a1,0(s5)
    1270:	8552                	mv	a0,s4
    1272:	00000097          	auipc	ra,0x0
    1276:	e7e080e7          	jalr	-386(ra) # 10f0 <printint>
    127a:	8aa6                	mv	s5,s1
    127c:	4901                	li	s2,0
    127e:	bf85                	j	11ee <vprintf+0x62>
    1280:	008a8493          	addi	s1,s5,8
    1284:	4681                	li	a3,0
    1286:	4641                	li	a2,16
    1288:	000aa583          	lw	a1,0(s5)
    128c:	8552                	mv	a0,s4
    128e:	00000097          	auipc	ra,0x0
    1292:	e62080e7          	jalr	-414(ra) # 10f0 <printint>
    1296:	8aa6                	mv	s5,s1
    1298:	4901                	li	s2,0
    129a:	bf91                	j	11ee <vprintf+0x62>
    129c:	008a8913          	addi	s2,s5,8
    12a0:	000aba83          	ld	s5,0(s5)
    12a4:	03000593          	li	a1,48
    12a8:	8552                	mv	a0,s4
    12aa:	00000097          	auipc	ra,0x0
    12ae:	e2a080e7          	jalr	-470(ra) # 10d4 <putc>
    12b2:	85e6                	mv	a1,s9
    12b4:	8552                	mv	a0,s4
    12b6:	00000097          	auipc	ra,0x0
    12ba:	e1e080e7          	jalr	-482(ra) # 10d4 <putc>
    12be:	44c1                	li	s1,16
    12c0:	03cad793          	srli	a5,s5,0x3c
    12c4:	97da                	add	a5,a5,s6
    12c6:	0007c583          	lbu	a1,0(a5)
    12ca:	8552                	mv	a0,s4
    12cc:	00000097          	auipc	ra,0x0
    12d0:	e08080e7          	jalr	-504(ra) # 10d4 <putc>
    12d4:	0a92                	slli	s5,s5,0x4
    12d6:	34fd                	addiw	s1,s1,-1
    12d8:	f4e5                	bnez	s1,12c0 <vprintf+0x134>
    12da:	8aca                	mv	s5,s2
    12dc:	4901                	li	s2,0
    12de:	bf01                	j	11ee <vprintf+0x62>
    12e0:	008a8913          	addi	s2,s5,8
    12e4:	000ab483          	ld	s1,0(s5)
    12e8:	c085                	beqz	s1,1308 <vprintf+0x17c>
    12ea:	0004c583          	lbu	a1,0(s1)
    12ee:	c5b1                	beqz	a1,133a <vprintf+0x1ae>
    12f0:	8552                	mv	a0,s4
    12f2:	00000097          	auipc	ra,0x0
    12f6:	de2080e7          	jalr	-542(ra) # 10d4 <putc>
    12fa:	0485                	addi	s1,s1,1
    12fc:	0004c583          	lbu	a1,0(s1)
    1300:	f9e5                	bnez	a1,12f0 <vprintf+0x164>
    1302:	8aca                	mv	s5,s2
    1304:	4901                	li	s2,0
    1306:	b5e5                	j	11ee <vprintf+0x62>
    1308:	e10d8493          	addi	s1,s11,-496 # 1e10 <mkdir+0x15e>
    130c:	02800593          	li	a1,40
    1310:	b7c5                	j	12f0 <vprintf+0x164>
    1312:	008a8493          	addi	s1,s5,8
    1316:	000ac583          	lbu	a1,0(s5)
    131a:	8552                	mv	a0,s4
    131c:	00000097          	auipc	ra,0x0
    1320:	db8080e7          	jalr	-584(ra) # 10d4 <putc>
    1324:	8aa6                	mv	s5,s1
    1326:	4901                	li	s2,0
    1328:	b5d9                	j	11ee <vprintf+0x62>
    132a:	85ce                	mv	a1,s3
    132c:	8552                	mv	a0,s4
    132e:	00000097          	auipc	ra,0x0
    1332:	da6080e7          	jalr	-602(ra) # 10d4 <putc>
    1336:	4901                	li	s2,0
    1338:	bd5d                	j	11ee <vprintf+0x62>
    133a:	8aca                	mv	s5,s2
    133c:	4901                	li	s2,0
    133e:	bd45                	j	11ee <vprintf+0x62>
    1340:	70a6                	ld	ra,104(sp)
    1342:	7406                	ld	s0,96(sp)
    1344:	64e6                	ld	s1,88(sp)
    1346:	6946                	ld	s2,80(sp)
    1348:	69a6                	ld	s3,72(sp)
    134a:	6a06                	ld	s4,64(sp)
    134c:	7ae2                	ld	s5,56(sp)
    134e:	7b42                	ld	s6,48(sp)
    1350:	7ba2                	ld	s7,40(sp)
    1352:	7c02                	ld	s8,32(sp)
    1354:	6ce2                	ld	s9,24(sp)
    1356:	6d42                	ld	s10,16(sp)
    1358:	6da2                	ld	s11,8(sp)
    135a:	6165                	addi	sp,sp,112
    135c:	8082                	ret

000000000000135e <fprintf>:
    135e:	715d                	addi	sp,sp,-80
    1360:	ec06                	sd	ra,24(sp)
    1362:	f032                	sd	a2,32(sp)
    1364:	f436                	sd	a3,40(sp)
    1366:	f83a                	sd	a4,48(sp)
    1368:	fc3e                	sd	a5,56(sp)
    136a:	e0c2                	sd	a6,64(sp)
    136c:	e4c6                	sd	a7,72(sp)
    136e:	1010                	addi	a2,sp,32
    1370:	e432                	sd	a2,8(sp)
    1372:	00000097          	auipc	ra,0x0
    1376:	e1a080e7          	jalr	-486(ra) # 118c <vprintf>
    137a:	60e2                	ld	ra,24(sp)
    137c:	6161                	addi	sp,sp,80
    137e:	8082                	ret

0000000000001380 <printf>:
    1380:	711d                	addi	sp,sp,-96
    1382:	ec06                	sd	ra,24(sp)
    1384:	f42e                	sd	a1,40(sp)
    1386:	f832                	sd	a2,48(sp)
    1388:	fc36                	sd	a3,56(sp)
    138a:	e0ba                	sd	a4,64(sp)
    138c:	e4be                	sd	a5,72(sp)
    138e:	e8c2                	sd	a6,80(sp)
    1390:	ecc6                	sd	a7,88(sp)
    1392:	1030                	addi	a2,sp,40
    1394:	e432                	sd	a2,8(sp)
    1396:	85aa                	mv	a1,a0
    1398:	4505                	li	a0,1
    139a:	00000097          	auipc	ra,0x0
    139e:	df2080e7          	jalr	-526(ra) # 118c <vprintf>
    13a2:	60e2                	ld	ra,24(sp)
    13a4:	6125                	addi	sp,sp,96
    13a6:	8082                	ret

00000000000013a8 <cksum>:
    13a8:	cdb1                	beqz	a1,1404 <cksum+0x5c>
    13aa:	00b50833          	add	a6,a0,a1
    13ae:	4781                	li	a5,0
    13b0:	00002637          	lui	a2,0x2
    13b4:	e3060613          	addi	a2,a2,-464 # 1e30 <crctab>
    13b8:	0505                	addi	a0,a0,1
    13ba:	0087969b          	slliw	a3,a5,0x8
    13be:	0187d71b          	srliw	a4,a5,0x18
    13c2:	fff54783          	lbu	a5,-1(a0)
    13c6:	8f3d                	xor	a4,a4,a5
    13c8:	1702                	slli	a4,a4,0x20
    13ca:	9301                	srli	a4,a4,0x20
    13cc:	070a                	slli	a4,a4,0x2
    13ce:	9732                	add	a4,a4,a2
    13d0:	431c                	lw	a5,0(a4)
    13d2:	8fb5                	xor	a5,a5,a3
    13d4:	2781                	sext.w	a5,a5
    13d6:	fea811e3          	bne	a6,a0,13b8 <cksum+0x10>
    13da:	00002637          	lui	a2,0x2
    13de:	e3060613          	addi	a2,a2,-464 # 1e30 <crctab>
    13e2:	0ff5f693          	andi	a3,a1,255
    13e6:	81a1                	srli	a1,a1,0x8
    13e8:	0087951b          	slliw	a0,a5,0x8
    13ec:	0187d71b          	srliw	a4,a5,0x18
    13f0:	8f35                	xor	a4,a4,a3
    13f2:	070a                	slli	a4,a4,0x2
    13f4:	9732                	add	a4,a4,a2
    13f6:	431c                	lw	a5,0(a4)
    13f8:	8fa9                	xor	a5,a5,a0
    13fa:	2781                	sext.w	a5,a5
    13fc:	f1fd                	bnez	a1,13e2 <cksum+0x3a>
    13fe:	fff7c513          	not	a0,a5
    1402:	8082                	ret
    1404:	4781                	li	a5,0
    1406:	bfe5                	j	13fe <cksum+0x56>

0000000000001408 <swap_bytes>:
    1408:	ce19                	beqz	a2,1426 <swap_bytes+0x1e>
    140a:	87aa                	mv	a5,a0
    140c:	962a                	add	a2,a2,a0
    140e:	0007c703          	lbu	a4,0(a5)
    1412:	0005c683          	lbu	a3,0(a1)
    1416:	00d78023          	sb	a3,0(a5)
    141a:	00e58023          	sb	a4,0(a1)
    141e:	0785                	addi	a5,a5,1
    1420:	0585                	addi	a1,a1,1
    1422:	fec796e3          	bne	a5,a2,140e <swap_bytes+0x6>
    1426:	8082                	ret

0000000000001428 <random_init>:
    1428:	7139                	addi	sp,sp,-64
    142a:	fc06                	sd	ra,56(sp)
    142c:	f822                	sd	s0,48(sp)
    142e:	f426                	sd	s1,40(sp)
    1430:	f04a                	sd	s2,32(sp)
    1432:	ec4e                	sd	s3,24(sp)
    1434:	e852                	sd	s4,16(sp)
    1436:	c62a                	sw	a0,12(sp)
    1438:	000037b7          	lui	a5,0x3
    143c:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1440:	eca5                	bnez	s1,14b8 <random_init+0x90>
    1442:	00003737          	lui	a4,0x3
    1446:	01070913          	addi	s2,a4,16 # 3010 <s>
    144a:	01070713          	addi	a4,a4,16
    144e:	87a6                	mv	a5,s1
    1450:	10000693          	li	a3,256
    1454:	00f70023          	sb	a5,0(a4)
    1458:	2785                	addiw	a5,a5,1
    145a:	0705                	addi	a4,a4,1
    145c:	fed79ce3          	bne	a5,a3,1454 <random_init+0x2c>
    1460:	4401                	li	s0,0
    1462:	000039b7          	lui	s3,0x3
    1466:	01098993          	addi	s3,s3,16 # 3010 <s>
    146a:	10000a13          	li	s4,256
    146e:	0034f793          	andi	a5,s1,3
    1472:	0818                	addi	a4,sp,16
    1474:	97ba                	add	a5,a5,a4
    1476:	ffc7c783          	lbu	a5,-4(a5)
    147a:	00094703          	lbu	a4,0(s2)
    147e:	9fb9                	addw	a5,a5,a4
    1480:	9c3d                	addw	s0,s0,a5
    1482:	0ff47413          	andi	s0,s0,255
    1486:	4605                	li	a2,1
    1488:	008985b3          	add	a1,s3,s0
    148c:	854a                	mv	a0,s2
    148e:	00000097          	auipc	ra,0x0
    1492:	f7a080e7          	jalr	-134(ra) # 1408 <swap_bytes>
    1496:	2485                	addiw	s1,s1,1
    1498:	0905                	addi	s2,s2,1
    149a:	fd449ae3          	bne	s1,s4,146e <random_init+0x46>
    149e:	000037b7          	lui	a5,0x3
    14a2:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    14a6:	000037b7          	lui	a5,0x3
    14aa:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    14ae:	000037b7          	lui	a5,0x3
    14b2:	4705                	li	a4,1
    14b4:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    14b8:	70e2                	ld	ra,56(sp)
    14ba:	7442                	ld	s0,48(sp)
    14bc:	74a2                	ld	s1,40(sp)
    14be:	7902                	ld	s2,32(sp)
    14c0:	69e2                	ld	s3,24(sp)
    14c2:	6a42                	ld	s4,16(sp)
    14c4:	6121                	addi	sp,sp,64
    14c6:	8082                	ret

00000000000014c8 <random_bytes>:
    14c8:	7139                	addi	sp,sp,-64
    14ca:	fc06                	sd	ra,56(sp)
    14cc:	f822                	sd	s0,48(sp)
    14ce:	f426                	sd	s1,40(sp)
    14d0:	f04a                	sd	s2,32(sp)
    14d2:	ec4e                	sd	s3,24(sp)
    14d4:	e852                	sd	s4,16(sp)
    14d6:	e456                	sd	s5,8(sp)
    14d8:	e05a                	sd	s6,0(sp)
    14da:	892a                	mv	s2,a0
    14dc:	8aae                	mv	s5,a1
    14de:	000037b7          	lui	a5,0x3
    14e2:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14e6:	c3c1                	beqz	a5,1566 <random_bytes+0x9e>
    14e8:	060a8563          	beqz	s5,1552 <random_bytes+0x8a>
    14ec:	9aca                	add	s5,s5,s2
    14ee:	00003a37          	lui	s4,0x3
    14f2:	000034b7          	lui	s1,0x3
    14f6:	01048493          	addi	s1,s1,16 # 3010 <s>
    14fa:	000039b7          	lui	s3,0x3
    14fe:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1502:	2505                	addiw	a0,a0,1
    1504:	0ff57513          	andi	a0,a0,255
    1508:	00aa02a3          	sb	a0,5(s4)
    150c:	00a48b33          	add	s6,s1,a0
    1510:	000b4403          	lbu	s0,0(s6)
    1514:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1518:	9c3d                	addw	s0,s0,a5
    151a:	0ff47413          	andi	s0,s0,255
    151e:	00898223          	sb	s0,4(s3)
    1522:	4605                	li	a2,1
    1524:	008485b3          	add	a1,s1,s0
    1528:	855a                	mv	a0,s6
    152a:	00000097          	auipc	ra,0x0
    152e:	ede080e7          	jalr	-290(ra) # 1408 <swap_bytes>
    1532:	9426                	add	s0,s0,s1
    1534:	000b4783          	lbu	a5,0(s6)
    1538:	00044703          	lbu	a4,0(s0)
    153c:	9fb9                	addw	a5,a5,a4
    153e:	0ff7f793          	andi	a5,a5,255
    1542:	97a6                	add	a5,a5,s1
    1544:	0007c783          	lbu	a5,0(a5)
    1548:	00f90023          	sb	a5,0(s2)
    154c:	0905                	addi	s2,s2,1
    154e:	fb2a98e3          	bne	s5,s2,14fe <random_bytes+0x36>
    1552:	70e2                	ld	ra,56(sp)
    1554:	7442                	ld	s0,48(sp)
    1556:	74a2                	ld	s1,40(sp)
    1558:	7902                	ld	s2,32(sp)
    155a:	69e2                	ld	s3,24(sp)
    155c:	6a42                	ld	s4,16(sp)
    155e:	6aa2                	ld	s5,8(sp)
    1560:	6b02                	ld	s6,0(sp)
    1562:	6121                	addi	sp,sp,64
    1564:	8082                	ret
    1566:	4501                	li	a0,0
    1568:	00000097          	auipc	ra,0x0
    156c:	ec0080e7          	jalr	-320(ra) # 1428 <random_init>
    1570:	bfa5                	j	14e8 <random_bytes+0x20>

0000000000001572 <random_ulong>:
    1572:	1101                	addi	sp,sp,-32
    1574:	ec06                	sd	ra,24(sp)
    1576:	45a1                	li	a1,8
    1578:	0028                	addi	a0,sp,8
    157a:	00000097          	auipc	ra,0x0
    157e:	f4e080e7          	jalr	-178(ra) # 14c8 <random_bytes>
    1582:	6522                	ld	a0,8(sp)
    1584:	60e2                	ld	ra,24(sp)
    1586:	6105                	addi	sp,sp,32
    1588:	8082                	ret

000000000000158a <shuffle>:
    158a:	c9b9                	beqz	a1,15e0 <shuffle+0x56>
    158c:	7179                	addi	sp,sp,-48
    158e:	f406                	sd	ra,40(sp)
    1590:	f022                	sd	s0,32(sp)
    1592:	ec26                	sd	s1,24(sp)
    1594:	e84a                	sd	s2,16(sp)
    1596:	e44e                	sd	s3,8(sp)
    1598:	e052                	sd	s4,0(sp)
    159a:	8a2a                	mv	s4,a0
    159c:	89ae                	mv	s3,a1
    159e:	84b2                	mv	s1,a2
    15a0:	892a                	mv	s2,a0
    15a2:	4401                	li	s0,0
    15a4:	00000097          	auipc	ra,0x0
    15a8:	fce080e7          	jalr	-50(ra) # 1572 <random_ulong>
    15ac:	408985b3          	sub	a1,s3,s0
    15b0:	02b575b3          	remu	a1,a0,a1
    15b4:	95a2                	add	a1,a1,s0
    15b6:	029585b3          	mul	a1,a1,s1
    15ba:	8626                	mv	a2,s1
    15bc:	95d2                	add	a1,a1,s4
    15be:	854a                	mv	a0,s2
    15c0:	00000097          	auipc	ra,0x0
    15c4:	e48080e7          	jalr	-440(ra) # 1408 <swap_bytes>
    15c8:	0405                	addi	s0,s0,1
    15ca:	9926                	add	s2,s2,s1
    15cc:	fc899ce3          	bne	s3,s0,15a4 <shuffle+0x1a>
    15d0:	70a2                	ld	ra,40(sp)
    15d2:	7402                	ld	s0,32(sp)
    15d4:	64e2                	ld	s1,24(sp)
    15d6:	6942                	ld	s2,16(sp)
    15d8:	69a2                	ld	s3,8(sp)
    15da:	6a02                	ld	s4,0(sp)
    15dc:	6145                	addi	sp,sp,48
    15de:	8082                	ret
    15e0:	8082                	ret

00000000000015e2 <arc4_init>:
    15e2:	100500a3          	sb	zero,257(a0)
    15e6:	10050023          	sb	zero,256(a0)
    15ea:	4781                	li	a5,0
    15ec:	10000693          	li	a3,256
    15f0:	00f50733          	add	a4,a0,a5
    15f4:	00f70023          	sb	a5,0(a4)
    15f8:	0785                	addi	a5,a5,1
    15fa:	fed79be3          	bne	a5,a3,15f0 <arc4_init+0xe>
    15fe:	86aa                	mv	a3,a0
    1600:	10050e13          	addi	t3,a0,256
    1604:	4701                	li	a4,0
    1606:	4781                	li	a5,0
    1608:	0006c883          	lbu	a7,0(a3)
    160c:	00f58833          	add	a6,a1,a5
    1610:	00084803          	lbu	a6,0(a6)
    1614:	00e8873b          	addw	a4,a7,a4
    1618:	00e8073b          	addw	a4,a6,a4
    161c:	0ff77713          	andi	a4,a4,255
    1620:	00e50833          	add	a6,a0,a4
    1624:	00084303          	lbu	t1,0(a6)
    1628:	00668023          	sb	t1,0(a3)
    162c:	01180023          	sb	a7,0(a6)
    1630:	0785                	addi	a5,a5,1
    1632:	00c7b833          	sltu	a6,a5,a2
    1636:	41000833          	neg	a6,a6
    163a:	0107f7b3          	and	a5,a5,a6
    163e:	0685                	addi	a3,a3,1
    1640:	fdc694e3          	bne	a3,t3,1608 <arc4_init+0x26>
    1644:	8082                	ret

0000000000001646 <arc4_crypt>:
    1646:	10054e03          	lbu	t3,256(a0)
    164a:	10154803          	lbu	a6,257(a0)
    164e:	fff60e93          	addi	t4,a2,-1
    1652:	c225                	beqz	a2,16b2 <arc4_crypt+0x6c>
    1654:	00c588b3          	add	a7,a1,a2
    1658:	86ae                	mv	a3,a1
    165a:	001e031b          	addiw	t1,t3,1
    165e:	40b3033b          	subw	t1,t1,a1
    1662:	00d3073b          	addw	a4,t1,a3
    1666:	0ff77713          	andi	a4,a4,255
    166a:	972a                	add	a4,a4,a0
    166c:	00074603          	lbu	a2,0(a4)
    1670:	0106083b          	addw	a6,a2,a6
    1674:	0ff87813          	andi	a6,a6,255
    1678:	010507b3          	add	a5,a0,a6
    167c:	0007c583          	lbu	a1,0(a5)
    1680:	00b70023          	sb	a1,0(a4)
    1684:	00c78023          	sb	a2,0(a5)
    1688:	0685                	addi	a3,a3,1
    168a:	00074783          	lbu	a5,0(a4)
    168e:	9fb1                	addw	a5,a5,a2
    1690:	0ff7f793          	andi	a5,a5,255
    1694:	97aa                	add	a5,a5,a0
    1696:	0007c783          	lbu	a5,0(a5)
    169a:	fff6c703          	lbu	a4,-1(a3)
    169e:	8fb9                	xor	a5,a5,a4
    16a0:	fef68fa3          	sb	a5,-1(a3)
    16a4:	fb169fe3          	bne	a3,a7,1662 <arc4_crypt+0x1c>
    16a8:	2e85                	addiw	t4,t4,1
    16aa:	01ce8e3b          	addw	t3,t4,t3
    16ae:	0ffe7e13          	andi	t3,t3,255
    16b2:	11c50023          	sb	t3,256(a0)
    16b6:	110500a3          	sb	a6,257(a0)
    16ba:	8082                	ret

00000000000016bc <_main>:
    16bc:	1141                	addi	sp,sp,-16
    16be:	e406                	sd	ra,8(sp)
    16c0:	00000097          	auipc	ra,0x0
    16c4:	940080e7          	jalr	-1728(ra) # 1000 <main>
    16c8:	4501                	li	a0,0
    16ca:	00000097          	auipc	ra,0x0
    16ce:	578080e7          	jalr	1400(ra) # 1c42 <exit>
    16d2:	60a2                	ld	ra,8(sp)
    16d4:	0141                	addi	sp,sp,16
    16d6:	8082                	ret

00000000000016d8 <strcmp>:
    16d8:	00054783          	lbu	a5,0(a0)
    16dc:	cb91                	beqz	a5,16f0 <strcmp+0x18>
    16de:	0005c703          	lbu	a4,0(a1)
    16e2:	00f71763          	bne	a4,a5,16f0 <strcmp+0x18>
    16e6:	0505                	addi	a0,a0,1
    16e8:	0585                	addi	a1,a1,1
    16ea:	00054783          	lbu	a5,0(a0)
    16ee:	fbe5                	bnez	a5,16de <strcmp+0x6>
    16f0:	0005c503          	lbu	a0,0(a1)
    16f4:	40a7853b          	subw	a0,a5,a0
    16f8:	8082                	ret

00000000000016fa <strcpy>:
    16fa:	87aa                	mv	a5,a0
    16fc:	0585                	addi	a1,a1,1
    16fe:	0785                	addi	a5,a5,1
    1700:	fff5c703          	lbu	a4,-1(a1)
    1704:	fee78fa3          	sb	a4,-1(a5)
    1708:	fb75                	bnez	a4,16fc <strcpy+0x2>
    170a:	8082                	ret

000000000000170c <strlen>:
    170c:	00054783          	lbu	a5,0(a0)
    1710:	cf81                	beqz	a5,1728 <strlen+0x1c>
    1712:	0505                	addi	a0,a0,1
    1714:	87aa                	mv	a5,a0
    1716:	4685                	li	a3,1
    1718:	9e89                	subw	a3,a3,a0
    171a:	00f6853b          	addw	a0,a3,a5
    171e:	0785                	addi	a5,a5,1
    1720:	fff7c703          	lbu	a4,-1(a5)
    1724:	fb7d                	bnez	a4,171a <strlen+0xe>
    1726:	8082                	ret
    1728:	4501                	li	a0,0
    172a:	8082                	ret

000000000000172c <memset>:
    172c:	ca19                	beqz	a2,1742 <memset+0x16>
    172e:	87aa                	mv	a5,a0
    1730:	1602                	slli	a2,a2,0x20
    1732:	9201                	srli	a2,a2,0x20
    1734:	00a60733          	add	a4,a2,a0
    1738:	00b78023          	sb	a1,0(a5)
    173c:	0785                	addi	a5,a5,1
    173e:	fee79de3          	bne	a5,a4,1738 <memset+0xc>
    1742:	8082                	ret

0000000000001744 <memcmp>:
    1744:	1101                	addi	sp,sp,-32
    1746:	ec06                	sd	ra,24(sp)
    1748:	e822                	sd	s0,16(sp)
    174a:	e426                	sd	s1,8(sp)
    174c:	e04a                	sd	s2,0(sp)
    174e:	892a                	mv	s2,a0
    1750:	842e                	mv	s0,a1
    1752:	84b2                	mv	s1,a2
    1754:	c915                	beqz	a0,1788 <memcmp+0x44>
    1756:	c5ad                	beqz	a1,17c0 <memcmp+0x7c>
    1758:	fff60713          	addi	a4,a2,-1
    175c:	c645                	beqz	a2,1804 <memcmp+0xc0>
    175e:	87ca                	mv	a5,s2
    1760:	00190613          	addi	a2,s2,1
    1764:	963a                	add	a2,a2,a4
    1766:	0007c683          	lbu	a3,0(a5)
    176a:	00044703          	lbu	a4,0(s0)
    176e:	08e69463          	bne	a3,a4,17f6 <memcmp+0xb2>
    1772:	0785                	addi	a5,a5,1
    1774:	0405                	addi	s0,s0,1
    1776:	fec798e3          	bne	a5,a2,1766 <memcmp+0x22>
    177a:	4501                	li	a0,0
    177c:	60e2                	ld	ra,24(sp)
    177e:	6442                	ld	s0,16(sp)
    1780:	64a2                	ld	s1,8(sp)
    1782:	6902                	ld	s2,0(sp)
    1784:	6105                	addi	sp,sp,32
    1786:	8082                	ret
    1788:	4501                	li	a0,0
    178a:	da6d                	beqz	a2,177c <memcmp+0x38>
    178c:	03200693          	li	a3,50
    1790:	00002637          	lui	a2,0x2
    1794:	23060613          	addi	a2,a2,560 # 2230 <crctab+0x400>
    1798:	000025b7          	lui	a1,0x2
    179c:	24058593          	addi	a1,a1,576 # 2240 <crctab+0x410>
    17a0:	4509                	li	a0,2
    17a2:	00000097          	auipc	ra,0x0
    17a6:	bbc080e7          	jalr	-1092(ra) # 135e <fprintf>
    17aa:	650d                	lui	a0,0x3
    17ac:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17b0:	00000097          	auipc	ra,0x0
    17b4:	492080e7          	jalr	1170(ra) # 1c42 <exit>
    17b8:	fff48713          	addi	a4,s1,-1
    17bc:	f04d                	bnez	s0,175e <memcmp+0x1a>
    17be:	a011                	j	17c2 <memcmp+0x7e>
    17c0:	c221                	beqz	a2,1800 <memcmp+0xbc>
    17c2:	03300693          	li	a3,51
    17c6:	00002637          	lui	a2,0x2
    17ca:	23060613          	addi	a2,a2,560 # 2230 <crctab+0x400>
    17ce:	000025b7          	lui	a1,0x2
    17d2:	28858593          	addi	a1,a1,648 # 2288 <crctab+0x458>
    17d6:	4509                	li	a0,2
    17d8:	00000097          	auipc	ra,0x0
    17dc:	b86080e7          	jalr	-1146(ra) # 135e <fprintf>
    17e0:	650d                	lui	a0,0x3
    17e2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17e6:	00000097          	auipc	ra,0x0
    17ea:	45c080e7          	jalr	1116(ra) # 1c42 <exit>
    17ee:	fff48713          	addi	a4,s1,-1
    17f2:	4401                	li	s0,0
    17f4:	b7ad                	j	175e <memcmp+0x1a>
    17f6:	4505                	li	a0,1
    17f8:	f8d762e3          	bltu	a4,a3,177c <memcmp+0x38>
    17fc:	557d                	li	a0,-1
    17fe:	bfbd                	j	177c <memcmp+0x38>
    1800:	4501                	li	a0,0
    1802:	bfad                	j	177c <memcmp+0x38>
    1804:	4501                	li	a0,0
    1806:	bf9d                	j	177c <memcmp+0x38>

0000000000001808 <memcpy>:
    1808:	1101                	addi	sp,sp,-32
    180a:	ec06                	sd	ra,24(sp)
    180c:	e822                	sd	s0,16(sp)
    180e:	e426                	sd	s1,8(sp)
    1810:	e04a                	sd	s2,0(sp)
    1812:	84aa                	mv	s1,a0
    1814:	842e                	mv	s0,a1
    1816:	8932                	mv	s2,a2
    1818:	c51d                	beqz	a0,1846 <memcpy+0x3e>
    181a:	c1ad                	beqz	a1,187c <memcpy+0x74>
    181c:	fff60693          	addi	a3,a2,-1
    1820:	ce01                	beqz	a2,1838 <memcpy+0x30>
    1822:	0685                	addi	a3,a3,1
    1824:	96a6                	add	a3,a3,s1
    1826:	87a6                	mv	a5,s1
    1828:	0405                	addi	s0,s0,1
    182a:	0785                	addi	a5,a5,1
    182c:	fff44703          	lbu	a4,-1(s0)
    1830:	fee78fa3          	sb	a4,-1(a5)
    1834:	fed79ae3          	bne	a5,a3,1828 <memcpy+0x20>
    1838:	8526                	mv	a0,s1
    183a:	60e2                	ld	ra,24(sp)
    183c:	6442                	ld	s0,16(sp)
    183e:	64a2                	ld	s1,8(sp)
    1840:	6902                	ld	s2,0(sp)
    1842:	6105                	addi	sp,sp,32
    1844:	8082                	ret
    1846:	da6d                	beqz	a2,1838 <memcpy+0x30>
    1848:	04000693          	li	a3,64
    184c:	00002637          	lui	a2,0x2
    1850:	23060613          	addi	a2,a2,560 # 2230 <crctab+0x400>
    1854:	000025b7          	lui	a1,0x2
    1858:	2d058593          	addi	a1,a1,720 # 22d0 <crctab+0x4a0>
    185c:	4509                	li	a0,2
    185e:	00000097          	auipc	ra,0x0
    1862:	b00080e7          	jalr	-1280(ra) # 135e <fprintf>
    1866:	650d                	lui	a0,0x3
    1868:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    186c:	00000097          	auipc	ra,0x0
    1870:	3d6080e7          	jalr	982(ra) # 1c42 <exit>
    1874:	fff90693          	addi	a3,s2,-1
    1878:	f44d                	bnez	s0,1822 <memcpy+0x1a>
    187a:	a011                	j	187e <memcpy+0x76>
    187c:	de55                	beqz	a2,1838 <memcpy+0x30>
    187e:	04100693          	li	a3,65
    1882:	00002637          	lui	a2,0x2
    1886:	23060613          	addi	a2,a2,560 # 2230 <crctab+0x400>
    188a:	000025b7          	lui	a1,0x2
    188e:	31858593          	addi	a1,a1,792 # 2318 <crctab+0x4e8>
    1892:	4509                	li	a0,2
    1894:	00000097          	auipc	ra,0x0
    1898:	aca080e7          	jalr	-1334(ra) # 135e <fprintf>
    189c:	650d                	lui	a0,0x3
    189e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    18a2:	00000097          	auipc	ra,0x0
    18a6:	3a0080e7          	jalr	928(ra) # 1c42 <exit>
    18aa:	fff90693          	addi	a3,s2,-1
    18ae:	4401                	li	s0,0
    18b0:	bf8d                	j	1822 <memcpy+0x1a>

00000000000018b2 <itoa>:
    18b2:	1101                	addi	sp,sp,-32
    18b4:	ec06                	sd	ra,24(sp)
    18b6:	e822                	sd	s0,16(sp)
    18b8:	e426                	sd	s1,8(sp)
    18ba:	842a                	mv	s0,a0
    18bc:	41f5d71b          	sraiw	a4,a1,0x1f
    18c0:	00e5c7b3          	xor	a5,a1,a4
    18c4:	9f99                	subw	a5,a5,a4
    18c6:	84aa                	mv	s1,a0
    18c8:	862a                	mv	a2,a0
    18ca:	4681                	li	a3,0
    18cc:	4529                	li	a0,10
    18ce:	4825                	li	a6,9
    18d0:	88b6                	mv	a7,a3
    18d2:	2685                	addiw	a3,a3,1
    18d4:	02a7e73b          	remw	a4,a5,a0
    18d8:	0307071b          	addiw	a4,a4,48
    18dc:	00e60023          	sb	a4,0(a2)
    18e0:	873e                	mv	a4,a5
    18e2:	02a7c7bb          	divw	a5,a5,a0
    18e6:	0605                	addi	a2,a2,1
    18e8:	fee844e3          	blt	a6,a4,18d0 <itoa+0x1e>
    18ec:	0405c863          	bltz	a1,193c <itoa+0x8a>
    18f0:	96a2                	add	a3,a3,s0
    18f2:	00068023          	sb	zero,0(a3)
    18f6:	8522                	mv	a0,s0
    18f8:	00000097          	auipc	ra,0x0
    18fc:	e14080e7          	jalr	-492(ra) # 170c <strlen>
    1900:	fff5071b          	addiw	a4,a0,-1
    1904:	02e05763          	blez	a4,1932 <itoa+0x80>
    1908:	9722                	add	a4,a4,s0
    190a:	4681                	li	a3,0
    190c:	0004c783          	lbu	a5,0(s1)
    1910:	00074603          	lbu	a2,0(a4)
    1914:	00c48023          	sb	a2,0(s1)
    1918:	00f70023          	sb	a5,0(a4)
    191c:	0016879b          	addiw	a5,a3,1
    1920:	0007869b          	sext.w	a3,a5
    1924:	0485                	addi	s1,s1,1
    1926:	177d                	addi	a4,a4,-1
    1928:	fff7c793          	not	a5,a5
    192c:	9fa9                	addw	a5,a5,a0
    192e:	fcf6cfe3          	blt	a3,a5,190c <itoa+0x5a>
    1932:	60e2                	ld	ra,24(sp)
    1934:	6442                	ld	s0,16(sp)
    1936:	64a2                	ld	s1,8(sp)
    1938:	6105                	addi	sp,sp,32
    193a:	8082                	ret
    193c:	96a2                	add	a3,a3,s0
    193e:	02d00793          	li	a5,45
    1942:	00f68023          	sb	a5,0(a3)
    1946:	0028869b          	addiw	a3,a7,2
    194a:	b75d                	j	18f0 <itoa+0x3e>

000000000000194c <atoi>:
    194c:	00054783          	lbu	a5,0(a0)
    1950:	02000713          	li	a4,32
    1954:	00e79763          	bne	a5,a4,1962 <atoi+0x16>
    1958:	0505                	addi	a0,a0,1
    195a:	00054783          	lbu	a5,0(a0)
    195e:	fee78de3          	beq	a5,a4,1958 <atoi+0xc>
    1962:	02b00713          	li	a4,43
    1966:	04e78663          	beq	a5,a4,19b2 <atoi+0x66>
    196a:	02d00713          	li	a4,45
    196e:	4805                	li	a6,1
    1970:	04e78463          	beq	a5,a4,19b8 <atoi+0x6c>
    1974:	00054683          	lbu	a3,0(a0)
    1978:	fd06879b          	addiw	a5,a3,-48
    197c:	0ff7f793          	andi	a5,a5,255
    1980:	4725                	li	a4,9
    1982:	02f76e63          	bltu	a4,a5,19be <atoi+0x72>
    1986:	4601                	li	a2,0
    1988:	45a5                	li	a1,9
    198a:	0505                	addi	a0,a0,1
    198c:	0026179b          	slliw	a5,a2,0x2
    1990:	9fb1                	addw	a5,a5,a2
    1992:	0017979b          	slliw	a5,a5,0x1
    1996:	9fb5                	addw	a5,a5,a3
    1998:	fd07861b          	addiw	a2,a5,-48
    199c:	00054683          	lbu	a3,0(a0)
    19a0:	fd06871b          	addiw	a4,a3,-48
    19a4:	0ff77713          	andi	a4,a4,255
    19a8:	fee5f1e3          	bgeu	a1,a4,198a <atoi+0x3e>
    19ac:	02c8053b          	mulw	a0,a6,a2
    19b0:	8082                	ret
    19b2:	0505                	addi	a0,a0,1
    19b4:	4805                	li	a6,1
    19b6:	bf7d                	j	1974 <atoi+0x28>
    19b8:	0505                	addi	a0,a0,1
    19ba:	587d                	li	a6,-1
    19bc:	bf65                	j	1974 <atoi+0x28>
    19be:	4601                	li	a2,0
    19c0:	b7f5                	j	19ac <atoi+0x60>

00000000000019c2 <check_file_handle>:
    19c2:	d8010113          	addi	sp,sp,-640
    19c6:	26113c23          	sd	ra,632(sp)
    19ca:	26813823          	sd	s0,624(sp)
    19ce:	26913423          	sd	s1,616(sp)
    19d2:	27213023          	sd	s2,608(sp)
    19d6:	25313c23          	sd	s3,600(sp)
    19da:	25413823          	sd	s4,592(sp)
    19de:	25513423          	sd	s5,584(sp)
    19e2:	25613023          	sd	s6,576(sp)
    19e6:	23713c23          	sd	s7,568(sp)
    19ea:	23813823          	sd	s8,560(sp)
    19ee:	23913423          	sd	s9,552(sp)
    19f2:	23a13023          	sd	s10,544(sp)
    19f6:	21b13c23          	sd	s11,536(sp)
    19fa:	8baa                	mv	s7,a0
    19fc:	8a2e                	mv	s4,a1
    19fe:	8c32                	mv	s8,a2
    1a00:	89b6                	mv	s3,a3
    1a02:	040c                	addi	a1,sp,512
    1a04:	00000097          	auipc	ra,0x0
    1a08:	28e080e7          	jalr	654(ra) # 1c92 <fstat>
    1a0c:	20813603          	ld	a2,520(sp)
    1a10:	03361163          	bne	a2,s3,1a32 <check_file_handle+0x70>
    1a14:	06098763          	beqz	s3,1a82 <check_file_handle+0xc0>
    1a18:	4901                	li	s2,0
    1a1a:	20000a93          	li	s5,512
    1a1e:	00002cb7          	lui	s9,0x2
    1a22:	00002db7          	lui	s11,0x2
    1a26:	6b0d                	lui	s6,0x3
    1a28:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1a2c:	00002d37          	lui	s10,0x2
    1a30:	aa39                	j	1b4e <check_file_handle+0x18c>
    1a32:	86ce                	mv	a3,s3
    1a34:	85d2                	mv	a1,s4
    1a36:	00002537          	lui	a0,0x2
    1a3a:	36050513          	addi	a0,a0,864 # 2360 <crctab+0x530>
    1a3e:	00000097          	auipc	ra,0x0
    1a42:	942080e7          	jalr	-1726(ra) # 1380 <printf>
    1a46:	fc0999e3          	bnez	s3,1a18 <check_file_handle+0x56>
    1a4a:	20813683          	ld	a3,520(sp)
    1a4e:	03368a63          	beq	a3,s3,1a82 <check_file_handle+0xc0>
    1a52:	0a600813          	li	a6,166
    1a56:	000027b7          	lui	a5,0x2
    1a5a:	23078793          	addi	a5,a5,560 # 2230 <crctab+0x400>
    1a5e:	874e                	mv	a4,s3
    1a60:	8652                	mv	a2,s4
    1a62:	000025b7          	lui	a1,0x2
    1a66:	43058593          	addi	a1,a1,1072 # 2430 <crctab+0x600>
    1a6a:	4509                	li	a0,2
    1a6c:	00000097          	auipc	ra,0x0
    1a70:	8f2080e7          	jalr	-1806(ra) # 135e <fprintf>
    1a74:	650d                	lui	a0,0x3
    1a76:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a7a:	00000097          	auipc	ra,0x0
    1a7e:	1c8080e7          	jalr	456(ra) # 1c42 <exit>
    1a82:	85d2                	mv	a1,s4
    1a84:	00002537          	lui	a0,0x2
    1a88:	47850513          	addi	a0,a0,1144 # 2478 <crctab+0x648>
    1a8c:	00000097          	auipc	ra,0x0
    1a90:	8f4080e7          	jalr	-1804(ra) # 1380 <printf>
    1a94:	27813083          	ld	ra,632(sp)
    1a98:	27013403          	ld	s0,624(sp)
    1a9c:	26813483          	ld	s1,616(sp)
    1aa0:	26013903          	ld	s2,608(sp)
    1aa4:	25813983          	ld	s3,600(sp)
    1aa8:	25013a03          	ld	s4,592(sp)
    1aac:	24813a83          	ld	s5,584(sp)
    1ab0:	24013b03          	ld	s6,576(sp)
    1ab4:	23813b83          	ld	s7,568(sp)
    1ab8:	23013c03          	ld	s8,560(sp)
    1abc:	22813c83          	ld	s9,552(sp)
    1ac0:	22013d03          	ld	s10,544(sp)
    1ac4:	21813d83          	ld	s11,536(sp)
    1ac8:	28010113          	addi	sp,sp,640
    1acc:	8082                	ret
    1ace:	09d00893          	li	a7,157
    1ad2:	230c8813          	addi	a6,s9,560 # 2230 <crctab+0x400>
    1ad6:	87aa                	mv	a5,a0
    1ad8:	8752                	mv	a4,s4
    1ada:	86ca                	mv	a3,s2
    1adc:	8622                	mv	a2,s0
    1ade:	390d8593          	addi	a1,s11,912 # 2390 <crctab+0x560>
    1ae2:	4509                	li	a0,2
    1ae4:	00000097          	auipc	ra,0x0
    1ae8:	87a080e7          	jalr	-1926(ra) # 135e <fprintf>
    1aec:	855a                	mv	a0,s6
    1aee:	00000097          	auipc	ra,0x0
    1af2:	154080e7          	jalr	340(ra) # 1c42 <exit>
    1af6:	a89d                	j	1b6c <check_file_handle+0x1aa>
    1af8:	00160593          	addi	a1,a2,1
    1afc:	0285f163          	bgeu	a1,s0,1b1e <check_file_handle+0x15c>
    1b00:	00c10733          	add	a4,sp,a2
    1b04:	00b487b3          	add	a5,s1,a1
    1b08:	00174683          	lbu	a3,1(a4)
    1b0c:	0007c783          	lbu	a5,0(a5)
    1b10:	00f68763          	beq	a3,a5,1b1e <check_file_handle+0x15c>
    1b14:	0585                	addi	a1,a1,1
    1b16:	0705                	addi	a4,a4,1
    1b18:	feb416e3          	bne	s0,a1,1b04 <check_file_handle+0x142>
    1b1c:	85a2                	mv	a1,s0
    1b1e:	08100813          	li	a6,129
    1b22:	230c8793          	addi	a5,s9,560
    1b26:	8752                	mv	a4,s4
    1b28:	012606b3          	add	a3,a2,s2
    1b2c:	40c58633          	sub	a2,a1,a2
    1b30:	3d8d0593          	addi	a1,s10,984 # 23d8 <crctab+0x5a8>
    1b34:	4509                	li	a0,2
    1b36:	00000097          	auipc	ra,0x0
    1b3a:	828080e7          	jalr	-2008(ra) # 135e <fprintf>
    1b3e:	855a                	mv	a0,s6
    1b40:	00000097          	auipc	ra,0x0
    1b44:	102080e7          	jalr	258(ra) # 1c42 <exit>
    1b48:	9922                	add	s2,s2,s0
    1b4a:	f13970e3          	bgeu	s2,s3,1a4a <check_file_handle+0x88>
    1b4e:	41298433          	sub	s0,s3,s2
    1b52:	008af363          	bgeu	s5,s0,1b58 <check_file_handle+0x196>
    1b56:	8456                	mv	s0,s5
    1b58:	0004061b          	sext.w	a2,s0
    1b5c:	858a                	mv	a1,sp
    1b5e:	855e                	mv	a0,s7
    1b60:	00000097          	auipc	ra,0x0
    1b64:	10a080e7          	jalr	266(ra) # 1c6a <read>
    1b68:	f68513e3          	bne	a0,s0,1ace <check_file_handle+0x10c>
    1b6c:	012c04b3          	add	s1,s8,s2
    1b70:	8622                	mv	a2,s0
    1b72:	85a6                	mv	a1,s1
    1b74:	850a                	mv	a0,sp
    1b76:	00000097          	auipc	ra,0x0
    1b7a:	bce080e7          	jalr	-1074(ra) # 1744 <memcmp>
    1b7e:	d569                	beqz	a0,1b48 <check_file_handle+0x186>
    1b80:	03298163          	beq	s3,s2,1ba2 <check_file_handle+0x1e0>
    1b84:	870a                	mv	a4,sp
    1b86:	4601                	li	a2,0
    1b88:	00c487b3          	add	a5,s1,a2
    1b8c:	00074683          	lbu	a3,0(a4)
    1b90:	0007c783          	lbu	a5,0(a5)
    1b94:	f6f692e3          	bne	a3,a5,1af8 <check_file_handle+0x136>
    1b98:	0605                	addi	a2,a2,1
    1b9a:	0705                	addi	a4,a4,1
    1b9c:	fe8666e3          	bltu	a2,s0,1b88 <check_file_handle+0x1c6>
    1ba0:	bfa1                	j	1af8 <check_file_handle+0x136>
    1ba2:	4601                	li	a2,0
    1ba4:	4585                	li	a1,1
    1ba6:	bfa5                	j	1b1e <check_file_handle+0x15c>

0000000000001ba8 <check_file>:
    1ba8:	7179                	addi	sp,sp,-48
    1baa:	f406                	sd	ra,40(sp)
    1bac:	f022                	sd	s0,32(sp)
    1bae:	ec26                	sd	s1,24(sp)
    1bb0:	e84a                	sd	s2,16(sp)
    1bb2:	e44e                	sd	s3,8(sp)
    1bb4:	84aa                	mv	s1,a0
    1bb6:	892e                	mv	s2,a1
    1bb8:	89b2                	mv	s3,a2
    1bba:	4581                	li	a1,0
    1bbc:	00000097          	auipc	ra,0x0
    1bc0:	0a6080e7          	jalr	166(ra) # 1c62 <open>
    1bc4:	842a                	mv	s0,a0
    1bc6:	4789                	li	a5,2
    1bc8:	02a7df63          	bge	a5,a0,1c06 <check_file+0x5e>
    1bcc:	86ce                	mv	a3,s3
    1bce:	864a                	mv	a2,s2
    1bd0:	85a6                	mv	a1,s1
    1bd2:	8522                	mv	a0,s0
    1bd4:	00000097          	auipc	ra,0x0
    1bd8:	dee080e7          	jalr	-530(ra) # 19c2 <check_file_handle>
    1bdc:	85a6                	mv	a1,s1
    1bde:	00002537          	lui	a0,0x2
    1be2:	50050513          	addi	a0,a0,1280 # 2500 <crctab+0x6d0>
    1be6:	fffff097          	auipc	ra,0xfffff
    1bea:	79a080e7          	jalr	1946(ra) # 1380 <printf>
    1bee:	8522                	mv	a0,s0
    1bf0:	00000097          	auipc	ra,0x0
    1bf4:	09a080e7          	jalr	154(ra) # 1c8a <close>
    1bf8:	70a2                	ld	ra,40(sp)
    1bfa:	7402                	ld	s0,32(sp)
    1bfc:	64e2                	ld	s1,24(sp)
    1bfe:	6942                	ld	s2,16(sp)
    1c00:	69a2                	ld	s3,8(sp)
    1c02:	6145                	addi	sp,sp,48
    1c04:	8082                	ret
    1c06:	0ae00713          	li	a4,174
    1c0a:	000026b7          	lui	a3,0x2
    1c0e:	23068693          	addi	a3,a3,560 # 2230 <crctab+0x400>
    1c12:	8626                	mv	a2,s1
    1c14:	000025b7          	lui	a1,0x2
    1c18:	49858593          	addi	a1,a1,1176 # 2498 <crctab+0x668>
    1c1c:	4509                	li	a0,2
    1c1e:	fffff097          	auipc	ra,0xfffff
    1c22:	740080e7          	jalr	1856(ra) # 135e <fprintf>
    1c26:	650d                	lui	a0,0x3
    1c28:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1c2c:	00000097          	auipc	ra,0x0
    1c30:	016080e7          	jalr	22(ra) # 1c42 <exit>
    1c34:	bf61                	j	1bcc <check_file+0x24>

0000000000001c36 <r_sp>:
    1c36:	850a                	mv	a0,sp
    1c38:	8082                	ret

0000000000001c3a <halt>:
    1c3a:	4885                	li	a7,1
    1c3c:	00000073          	ecall
    1c40:	8082                	ret

0000000000001c42 <exit>:
    1c42:	4889                	li	a7,2
    1c44:	00000073          	ecall
    1c48:	8082                	ret

0000000000001c4a <exec>:
    1c4a:	488d                	li	a7,3
    1c4c:	00000073          	ecall
    1c50:	8082                	ret

0000000000001c52 <wait>:
    1c52:	4891                	li	a7,4
    1c54:	00000073          	ecall
    1c58:	8082                	ret

0000000000001c5a <remove>:
    1c5a:	4895                	li	a7,5
    1c5c:	00000073          	ecall
    1c60:	8082                	ret

0000000000001c62 <open>:
    1c62:	4899                	li	a7,6
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <read>:
    1c6a:	489d                	li	a7,7
    1c6c:	00000073          	ecall
    1c70:	8082                	ret

0000000000001c72 <write>:
    1c72:	48a1                	li	a7,8
    1c74:	00000073          	ecall
    1c78:	8082                	ret

0000000000001c7a <seek>:
    1c7a:	48a5                	li	a7,9
    1c7c:	00000073          	ecall
    1c80:	8082                	ret

0000000000001c82 <tell>:
    1c82:	48a9                	li	a7,10
    1c84:	00000073          	ecall
    1c88:	8082                	ret

0000000000001c8a <close>:
    1c8a:	48ad                	li	a7,11
    1c8c:	00000073          	ecall
    1c90:	8082                	ret

0000000000001c92 <fstat>:
    1c92:	48b1                	li	a7,12
    1c94:	00000073          	ecall
    1c98:	8082                	ret

0000000000001c9a <mmap>:
    1c9a:	48b5                	li	a7,13
    1c9c:	00000073          	ecall
    1ca0:	8082                	ret

0000000000001ca2 <munmap>:
    1ca2:	48b9                	li	a7,14
    1ca4:	00000073          	ecall
    1ca8:	8082                	ret

0000000000001caa <chdir>:
    1caa:	48bd                	li	a7,15
    1cac:	00000073          	ecall
    1cb0:	8082                	ret

0000000000001cb2 <mkdir>:
    1cb2:	48c1                	li	a7,16
    1cb4:	00000073          	ecall
    1cb8:	8082                	ret
