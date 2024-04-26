
build/user/userprogs/exec-arg:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7179                	addi	sp,sp,-48
    1002:	f406                	sd	ra,40(sp)
    1004:	00002537          	lui	a0,0x2
    1008:	c5850793          	addi	a5,a0,-936 # 1c58 <mkdir+0x10>
    100c:	e43e                	sd	a5,8(sp)
    100e:	000027b7          	lui	a5,0x2
    1012:	c5078793          	addi	a5,a5,-944 # 1c50 <mkdir+0x8>
    1016:	e83e                	sd	a5,16(sp)
    1018:	ec02                	sd	zero,24(sp)
    101a:	002c                	addi	a1,sp,8
    101c:	c5850513          	addi	a0,a0,-936
    1020:	00001097          	auipc	ra,0x1
    1024:	bc0080e7          	jalr	-1088(ra) # 1be0 <exec>
    1028:	00001097          	auipc	ra,0x1
    102c:	bc0080e7          	jalr	-1088(ra) # 1be8 <wait>
    1030:	05100793          	li	a5,81
    1034:	00f51563          	bne	a0,a5,103e <main+0x3e>
    1038:	70a2                	ld	ra,40(sp)
    103a:	6145                	addi	sp,sp,48
    103c:	8082                	ret
    103e:	469d                	li	a3,7
    1040:	00002637          	lui	a2,0x2
    1044:	c6860613          	addi	a2,a2,-920 # 1c68 <mkdir+0x20>
    1048:	000025b7          	lui	a1,0x2
    104c:	c8858593          	addi	a1,a1,-888 # 1c88 <mkdir+0x40>
    1050:	4509                	li	a0,2
    1052:	00000097          	auipc	ra,0x0
    1056:	2a2080e7          	jalr	674(ra) # 12f4 <fprintf>
    105a:	650d                	lui	a0,0x3
    105c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1060:	00001097          	auipc	ra,0x1
    1064:	b78080e7          	jalr	-1160(ra) # 1bd8 <exit>
    1068:	bfc1                	j	1038 <main+0x38>

000000000000106a <putc>:
    106a:	1101                	addi	sp,sp,-32
    106c:	ec06                	sd	ra,24(sp)
    106e:	00b107a3          	sb	a1,15(sp)
    1072:	4605                	li	a2,1
    1074:	00f10593          	addi	a1,sp,15
    1078:	00001097          	auipc	ra,0x1
    107c:	b90080e7          	jalr	-1136(ra) # 1c08 <write>
    1080:	60e2                	ld	ra,24(sp)
    1082:	6105                	addi	sp,sp,32
    1084:	8082                	ret

0000000000001086 <printint>:
    1086:	7179                	addi	sp,sp,-48
    1088:	f406                	sd	ra,40(sp)
    108a:	f022                	sd	s0,32(sp)
    108c:	ec26                	sd	s1,24(sp)
    108e:	e84a                	sd	s2,16(sp)
    1090:	84aa                	mv	s1,a0
    1092:	c299                	beqz	a3,1098 <printint+0x12>
    1094:	0805c363          	bltz	a1,111a <printint+0x94>
    1098:	2581                	sext.w	a1,a1
    109a:	4881                	li	a7,0
    109c:	868a                	mv	a3,sp
    109e:	4701                	li	a4,0
    10a0:	2601                	sext.w	a2,a2
    10a2:	00002537          	lui	a0,0x2
    10a6:	ce050513          	addi	a0,a0,-800 # 1ce0 <digits>
    10aa:	883a                	mv	a6,a4
    10ac:	2705                	addiw	a4,a4,1
    10ae:	02c5f7bb          	remuw	a5,a1,a2
    10b2:	1782                	slli	a5,a5,0x20
    10b4:	9381                	srli	a5,a5,0x20
    10b6:	97aa                	add	a5,a5,a0
    10b8:	0007c783          	lbu	a5,0(a5)
    10bc:	00f68023          	sb	a5,0(a3)
    10c0:	0005879b          	sext.w	a5,a1
    10c4:	02c5d5bb          	divuw	a1,a1,a2
    10c8:	0685                	addi	a3,a3,1
    10ca:	fec7f0e3          	bgeu	a5,a2,10aa <printint+0x24>
    10ce:	00088a63          	beqz	a7,10e2 <printint+0x5c>
    10d2:	081c                	addi	a5,sp,16
    10d4:	973e                	add	a4,a4,a5
    10d6:	02d00793          	li	a5,45
    10da:	fef70823          	sb	a5,-16(a4)
    10de:	0028071b          	addiw	a4,a6,2
    10e2:	02e05663          	blez	a4,110e <printint+0x88>
    10e6:	00e10433          	add	s0,sp,a4
    10ea:	fff10913          	addi	s2,sp,-1
    10ee:	993a                	add	s2,s2,a4
    10f0:	377d                	addiw	a4,a4,-1
    10f2:	1702                	slli	a4,a4,0x20
    10f4:	9301                	srli	a4,a4,0x20
    10f6:	40e90933          	sub	s2,s2,a4
    10fa:	fff44583          	lbu	a1,-1(s0)
    10fe:	8526                	mv	a0,s1
    1100:	00000097          	auipc	ra,0x0
    1104:	f6a080e7          	jalr	-150(ra) # 106a <putc>
    1108:	147d                	addi	s0,s0,-1
    110a:	ff2418e3          	bne	s0,s2,10fa <printint+0x74>
    110e:	70a2                	ld	ra,40(sp)
    1110:	7402                	ld	s0,32(sp)
    1112:	64e2                	ld	s1,24(sp)
    1114:	6942                	ld	s2,16(sp)
    1116:	6145                	addi	sp,sp,48
    1118:	8082                	ret
    111a:	40b005bb          	negw	a1,a1
    111e:	4885                	li	a7,1
    1120:	bfb5                	j	109c <printint+0x16>

0000000000001122 <vprintf>:
    1122:	7159                	addi	sp,sp,-112
    1124:	f486                	sd	ra,104(sp)
    1126:	f0a2                	sd	s0,96(sp)
    1128:	eca6                	sd	s1,88(sp)
    112a:	e8ca                	sd	s2,80(sp)
    112c:	e4ce                	sd	s3,72(sp)
    112e:	e0d2                	sd	s4,64(sp)
    1130:	fc56                	sd	s5,56(sp)
    1132:	f85a                	sd	s6,48(sp)
    1134:	f45e                	sd	s7,40(sp)
    1136:	f062                	sd	s8,32(sp)
    1138:	ec66                	sd	s9,24(sp)
    113a:	e86a                	sd	s10,16(sp)
    113c:	e46e                	sd	s11,8(sp)
    113e:	0005c483          	lbu	s1,0(a1)
    1142:	18048a63          	beqz	s1,12d6 <vprintf+0x1b4>
    1146:	8a2a                	mv	s4,a0
    1148:	8ab2                	mv	s5,a2
    114a:	00158413          	addi	s0,a1,1
    114e:	4901                	li	s2,0
    1150:	02500993          	li	s3,37
    1154:	06400b93          	li	s7,100
    1158:	06c00c13          	li	s8,108
    115c:	07800c93          	li	s9,120
    1160:	07000d13          	li	s10,112
    1164:	00002db7          	lui	s11,0x2
    1168:	00002b37          	lui	s6,0x2
    116c:	ce0b0b13          	addi	s6,s6,-800 # 1ce0 <digits>
    1170:	a839                	j	118e <vprintf+0x6c>
    1172:	85a6                	mv	a1,s1
    1174:	8552                	mv	a0,s4
    1176:	00000097          	auipc	ra,0x0
    117a:	ef4080e7          	jalr	-268(ra) # 106a <putc>
    117e:	a019                	j	1184 <vprintf+0x62>
    1180:	01390f63          	beq	s2,s3,119e <vprintf+0x7c>
    1184:	0405                	addi	s0,s0,1
    1186:	fff44483          	lbu	s1,-1(s0)
    118a:	14048663          	beqz	s1,12d6 <vprintf+0x1b4>
    118e:	0004879b          	sext.w	a5,s1
    1192:	fe0917e3          	bnez	s2,1180 <vprintf+0x5e>
    1196:	fd379ee3          	bne	a5,s3,1172 <vprintf+0x50>
    119a:	893e                	mv	s2,a5
    119c:	b7e5                	j	1184 <vprintf+0x62>
    119e:	05778063          	beq	a5,s7,11de <vprintf+0xbc>
    11a2:	05878c63          	beq	a5,s8,11fa <vprintf+0xd8>
    11a6:	07978863          	beq	a5,s9,1216 <vprintf+0xf4>
    11aa:	09a78463          	beq	a5,s10,1232 <vprintf+0x110>
    11ae:	07300713          	li	a4,115
    11b2:	0ce78263          	beq	a5,a4,1276 <vprintf+0x154>
    11b6:	06300713          	li	a4,99
    11ba:	0ee78763          	beq	a5,a4,12a8 <vprintf+0x186>
    11be:	11378163          	beq	a5,s3,12c0 <vprintf+0x19e>
    11c2:	85ce                	mv	a1,s3
    11c4:	8552                	mv	a0,s4
    11c6:	00000097          	auipc	ra,0x0
    11ca:	ea4080e7          	jalr	-348(ra) # 106a <putc>
    11ce:	85a6                	mv	a1,s1
    11d0:	8552                	mv	a0,s4
    11d2:	00000097          	auipc	ra,0x0
    11d6:	e98080e7          	jalr	-360(ra) # 106a <putc>
    11da:	4901                	li	s2,0
    11dc:	b765                	j	1184 <vprintf+0x62>
    11de:	008a8493          	addi	s1,s5,8
    11e2:	4685                	li	a3,1
    11e4:	4629                	li	a2,10
    11e6:	000aa583          	lw	a1,0(s5)
    11ea:	8552                	mv	a0,s4
    11ec:	00000097          	auipc	ra,0x0
    11f0:	e9a080e7          	jalr	-358(ra) # 1086 <printint>
    11f4:	8aa6                	mv	s5,s1
    11f6:	4901                	li	s2,0
    11f8:	b771                	j	1184 <vprintf+0x62>
    11fa:	008a8493          	addi	s1,s5,8
    11fe:	4681                	li	a3,0
    1200:	4629                	li	a2,10
    1202:	000aa583          	lw	a1,0(s5)
    1206:	8552                	mv	a0,s4
    1208:	00000097          	auipc	ra,0x0
    120c:	e7e080e7          	jalr	-386(ra) # 1086 <printint>
    1210:	8aa6                	mv	s5,s1
    1212:	4901                	li	s2,0
    1214:	bf85                	j	1184 <vprintf+0x62>
    1216:	008a8493          	addi	s1,s5,8
    121a:	4681                	li	a3,0
    121c:	4641                	li	a2,16
    121e:	000aa583          	lw	a1,0(s5)
    1222:	8552                	mv	a0,s4
    1224:	00000097          	auipc	ra,0x0
    1228:	e62080e7          	jalr	-414(ra) # 1086 <printint>
    122c:	8aa6                	mv	s5,s1
    122e:	4901                	li	s2,0
    1230:	bf91                	j	1184 <vprintf+0x62>
    1232:	008a8913          	addi	s2,s5,8
    1236:	000aba83          	ld	s5,0(s5)
    123a:	03000593          	li	a1,48
    123e:	8552                	mv	a0,s4
    1240:	00000097          	auipc	ra,0x0
    1244:	e2a080e7          	jalr	-470(ra) # 106a <putc>
    1248:	85e6                	mv	a1,s9
    124a:	8552                	mv	a0,s4
    124c:	00000097          	auipc	ra,0x0
    1250:	e1e080e7          	jalr	-482(ra) # 106a <putc>
    1254:	44c1                	li	s1,16
    1256:	03cad793          	srli	a5,s5,0x3c
    125a:	97da                	add	a5,a5,s6
    125c:	0007c583          	lbu	a1,0(a5)
    1260:	8552                	mv	a0,s4
    1262:	00000097          	auipc	ra,0x0
    1266:	e08080e7          	jalr	-504(ra) # 106a <putc>
    126a:	0a92                	slli	s5,s5,0x4
    126c:	34fd                	addiw	s1,s1,-1
    126e:	f4e5                	bnez	s1,1256 <vprintf+0x134>
    1270:	8aca                	mv	s5,s2
    1272:	4901                	li	s2,0
    1274:	bf01                	j	1184 <vprintf+0x62>
    1276:	008a8913          	addi	s2,s5,8
    127a:	000ab483          	ld	s1,0(s5)
    127e:	c085                	beqz	s1,129e <vprintf+0x17c>
    1280:	0004c583          	lbu	a1,0(s1)
    1284:	c5b1                	beqz	a1,12d0 <vprintf+0x1ae>
    1286:	8552                	mv	a0,s4
    1288:	00000097          	auipc	ra,0x0
    128c:	de2080e7          	jalr	-542(ra) # 106a <putc>
    1290:	0485                	addi	s1,s1,1
    1292:	0004c583          	lbu	a1,0(s1)
    1296:	f9e5                	bnez	a1,1286 <vprintf+0x164>
    1298:	8aca                	mv	s5,s2
    129a:	4901                	li	s2,0
    129c:	b5e5                	j	1184 <vprintf+0x62>
    129e:	cd8d8493          	addi	s1,s11,-808 # 1cd8 <mkdir+0x90>
    12a2:	02800593          	li	a1,40
    12a6:	b7c5                	j	1286 <vprintf+0x164>
    12a8:	008a8493          	addi	s1,s5,8
    12ac:	000ac583          	lbu	a1,0(s5)
    12b0:	8552                	mv	a0,s4
    12b2:	00000097          	auipc	ra,0x0
    12b6:	db8080e7          	jalr	-584(ra) # 106a <putc>
    12ba:	8aa6                	mv	s5,s1
    12bc:	4901                	li	s2,0
    12be:	b5d9                	j	1184 <vprintf+0x62>
    12c0:	85ce                	mv	a1,s3
    12c2:	8552                	mv	a0,s4
    12c4:	00000097          	auipc	ra,0x0
    12c8:	da6080e7          	jalr	-602(ra) # 106a <putc>
    12cc:	4901                	li	s2,0
    12ce:	bd5d                	j	1184 <vprintf+0x62>
    12d0:	8aca                	mv	s5,s2
    12d2:	4901                	li	s2,0
    12d4:	bd45                	j	1184 <vprintf+0x62>
    12d6:	70a6                	ld	ra,104(sp)
    12d8:	7406                	ld	s0,96(sp)
    12da:	64e6                	ld	s1,88(sp)
    12dc:	6946                	ld	s2,80(sp)
    12de:	69a6                	ld	s3,72(sp)
    12e0:	6a06                	ld	s4,64(sp)
    12e2:	7ae2                	ld	s5,56(sp)
    12e4:	7b42                	ld	s6,48(sp)
    12e6:	7ba2                	ld	s7,40(sp)
    12e8:	7c02                	ld	s8,32(sp)
    12ea:	6ce2                	ld	s9,24(sp)
    12ec:	6d42                	ld	s10,16(sp)
    12ee:	6da2                	ld	s11,8(sp)
    12f0:	6165                	addi	sp,sp,112
    12f2:	8082                	ret

00000000000012f4 <fprintf>:
    12f4:	715d                	addi	sp,sp,-80
    12f6:	ec06                	sd	ra,24(sp)
    12f8:	f032                	sd	a2,32(sp)
    12fa:	f436                	sd	a3,40(sp)
    12fc:	f83a                	sd	a4,48(sp)
    12fe:	fc3e                	sd	a5,56(sp)
    1300:	e0c2                	sd	a6,64(sp)
    1302:	e4c6                	sd	a7,72(sp)
    1304:	1010                	addi	a2,sp,32
    1306:	e432                	sd	a2,8(sp)
    1308:	00000097          	auipc	ra,0x0
    130c:	e1a080e7          	jalr	-486(ra) # 1122 <vprintf>
    1310:	60e2                	ld	ra,24(sp)
    1312:	6161                	addi	sp,sp,80
    1314:	8082                	ret

0000000000001316 <printf>:
    1316:	711d                	addi	sp,sp,-96
    1318:	ec06                	sd	ra,24(sp)
    131a:	f42e                	sd	a1,40(sp)
    131c:	f832                	sd	a2,48(sp)
    131e:	fc36                	sd	a3,56(sp)
    1320:	e0ba                	sd	a4,64(sp)
    1322:	e4be                	sd	a5,72(sp)
    1324:	e8c2                	sd	a6,80(sp)
    1326:	ecc6                	sd	a7,88(sp)
    1328:	1030                	addi	a2,sp,40
    132a:	e432                	sd	a2,8(sp)
    132c:	85aa                	mv	a1,a0
    132e:	4505                	li	a0,1
    1330:	00000097          	auipc	ra,0x0
    1334:	df2080e7          	jalr	-526(ra) # 1122 <vprintf>
    1338:	60e2                	ld	ra,24(sp)
    133a:	6125                	addi	sp,sp,96
    133c:	8082                	ret

000000000000133e <cksum>:
    133e:	cdb1                	beqz	a1,139a <cksum+0x5c>
    1340:	00b50833          	add	a6,a0,a1
    1344:	4781                	li	a5,0
    1346:	00002637          	lui	a2,0x2
    134a:	cf860613          	addi	a2,a2,-776 # 1cf8 <crctab>
    134e:	0505                	addi	a0,a0,1
    1350:	0087969b          	slliw	a3,a5,0x8
    1354:	0187d71b          	srliw	a4,a5,0x18
    1358:	fff54783          	lbu	a5,-1(a0)
    135c:	8f3d                	xor	a4,a4,a5
    135e:	1702                	slli	a4,a4,0x20
    1360:	9301                	srli	a4,a4,0x20
    1362:	070a                	slli	a4,a4,0x2
    1364:	9732                	add	a4,a4,a2
    1366:	431c                	lw	a5,0(a4)
    1368:	8fb5                	xor	a5,a5,a3
    136a:	2781                	sext.w	a5,a5
    136c:	fea811e3          	bne	a6,a0,134e <cksum+0x10>
    1370:	00002637          	lui	a2,0x2
    1374:	cf860613          	addi	a2,a2,-776 # 1cf8 <crctab>
    1378:	0ff5f693          	andi	a3,a1,255
    137c:	81a1                	srli	a1,a1,0x8
    137e:	0087951b          	slliw	a0,a5,0x8
    1382:	0187d71b          	srliw	a4,a5,0x18
    1386:	8f35                	xor	a4,a4,a3
    1388:	070a                	slli	a4,a4,0x2
    138a:	9732                	add	a4,a4,a2
    138c:	431c                	lw	a5,0(a4)
    138e:	8fa9                	xor	a5,a5,a0
    1390:	2781                	sext.w	a5,a5
    1392:	f1fd                	bnez	a1,1378 <cksum+0x3a>
    1394:	fff7c513          	not	a0,a5
    1398:	8082                	ret
    139a:	4781                	li	a5,0
    139c:	bfe5                	j	1394 <cksum+0x56>

000000000000139e <swap_bytes>:
    139e:	ce19                	beqz	a2,13bc <swap_bytes+0x1e>
    13a0:	87aa                	mv	a5,a0
    13a2:	962a                	add	a2,a2,a0
    13a4:	0007c703          	lbu	a4,0(a5)
    13a8:	0005c683          	lbu	a3,0(a1)
    13ac:	00d78023          	sb	a3,0(a5)
    13b0:	00e58023          	sb	a4,0(a1)
    13b4:	0785                	addi	a5,a5,1
    13b6:	0585                	addi	a1,a1,1
    13b8:	fec796e3          	bne	a5,a2,13a4 <swap_bytes+0x6>
    13bc:	8082                	ret

00000000000013be <random_init>:
    13be:	7139                	addi	sp,sp,-64
    13c0:	fc06                	sd	ra,56(sp)
    13c2:	f822                	sd	s0,48(sp)
    13c4:	f426                	sd	s1,40(sp)
    13c6:	f04a                	sd	s2,32(sp)
    13c8:	ec4e                	sd	s3,24(sp)
    13ca:	e852                	sd	s4,16(sp)
    13cc:	c62a                	sw	a0,12(sp)
    13ce:	000037b7          	lui	a5,0x3
    13d2:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13d6:	eca5                	bnez	s1,144e <random_init+0x90>
    13d8:	00003737          	lui	a4,0x3
    13dc:	01070913          	addi	s2,a4,16 # 3010 <s>
    13e0:	01070713          	addi	a4,a4,16
    13e4:	87a6                	mv	a5,s1
    13e6:	10000693          	li	a3,256
    13ea:	00f70023          	sb	a5,0(a4)
    13ee:	2785                	addiw	a5,a5,1
    13f0:	0705                	addi	a4,a4,1
    13f2:	fed79ce3          	bne	a5,a3,13ea <random_init+0x2c>
    13f6:	4401                	li	s0,0
    13f8:	000039b7          	lui	s3,0x3
    13fc:	01098993          	addi	s3,s3,16 # 3010 <s>
    1400:	10000a13          	li	s4,256
    1404:	0034f793          	andi	a5,s1,3
    1408:	0818                	addi	a4,sp,16
    140a:	97ba                	add	a5,a5,a4
    140c:	ffc7c783          	lbu	a5,-4(a5)
    1410:	00094703          	lbu	a4,0(s2)
    1414:	9fb9                	addw	a5,a5,a4
    1416:	9c3d                	addw	s0,s0,a5
    1418:	0ff47413          	andi	s0,s0,255
    141c:	4605                	li	a2,1
    141e:	008985b3          	add	a1,s3,s0
    1422:	854a                	mv	a0,s2
    1424:	00000097          	auipc	ra,0x0
    1428:	f7a080e7          	jalr	-134(ra) # 139e <swap_bytes>
    142c:	2485                	addiw	s1,s1,1
    142e:	0905                	addi	s2,s2,1
    1430:	fd449ae3          	bne	s1,s4,1404 <random_init+0x46>
    1434:	000037b7          	lui	a5,0x3
    1438:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    143c:	000037b7          	lui	a5,0x3
    1440:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1444:	000037b7          	lui	a5,0x3
    1448:	4705                	li	a4,1
    144a:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    144e:	70e2                	ld	ra,56(sp)
    1450:	7442                	ld	s0,48(sp)
    1452:	74a2                	ld	s1,40(sp)
    1454:	7902                	ld	s2,32(sp)
    1456:	69e2                	ld	s3,24(sp)
    1458:	6a42                	ld	s4,16(sp)
    145a:	6121                	addi	sp,sp,64
    145c:	8082                	ret

000000000000145e <random_bytes>:
    145e:	7139                	addi	sp,sp,-64
    1460:	fc06                	sd	ra,56(sp)
    1462:	f822                	sd	s0,48(sp)
    1464:	f426                	sd	s1,40(sp)
    1466:	f04a                	sd	s2,32(sp)
    1468:	ec4e                	sd	s3,24(sp)
    146a:	e852                	sd	s4,16(sp)
    146c:	e456                	sd	s5,8(sp)
    146e:	e05a                	sd	s6,0(sp)
    1470:	892a                	mv	s2,a0
    1472:	8aae                	mv	s5,a1
    1474:	000037b7          	lui	a5,0x3
    1478:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    147c:	c3c1                	beqz	a5,14fc <random_bytes+0x9e>
    147e:	060a8563          	beqz	s5,14e8 <random_bytes+0x8a>
    1482:	9aca                	add	s5,s5,s2
    1484:	00003a37          	lui	s4,0x3
    1488:	000034b7          	lui	s1,0x3
    148c:	01048493          	addi	s1,s1,16 # 3010 <s>
    1490:	000039b7          	lui	s3,0x3
    1494:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1498:	2505                	addiw	a0,a0,1
    149a:	0ff57513          	andi	a0,a0,255
    149e:	00aa02a3          	sb	a0,5(s4)
    14a2:	00a48b33          	add	s6,s1,a0
    14a6:	000b4403          	lbu	s0,0(s6)
    14aa:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14ae:	9c3d                	addw	s0,s0,a5
    14b0:	0ff47413          	andi	s0,s0,255
    14b4:	00898223          	sb	s0,4(s3)
    14b8:	4605                	li	a2,1
    14ba:	008485b3          	add	a1,s1,s0
    14be:	855a                	mv	a0,s6
    14c0:	00000097          	auipc	ra,0x0
    14c4:	ede080e7          	jalr	-290(ra) # 139e <swap_bytes>
    14c8:	9426                	add	s0,s0,s1
    14ca:	000b4783          	lbu	a5,0(s6)
    14ce:	00044703          	lbu	a4,0(s0)
    14d2:	9fb9                	addw	a5,a5,a4
    14d4:	0ff7f793          	andi	a5,a5,255
    14d8:	97a6                	add	a5,a5,s1
    14da:	0007c783          	lbu	a5,0(a5)
    14de:	00f90023          	sb	a5,0(s2)
    14e2:	0905                	addi	s2,s2,1
    14e4:	fb2a98e3          	bne	s5,s2,1494 <random_bytes+0x36>
    14e8:	70e2                	ld	ra,56(sp)
    14ea:	7442                	ld	s0,48(sp)
    14ec:	74a2                	ld	s1,40(sp)
    14ee:	7902                	ld	s2,32(sp)
    14f0:	69e2                	ld	s3,24(sp)
    14f2:	6a42                	ld	s4,16(sp)
    14f4:	6aa2                	ld	s5,8(sp)
    14f6:	6b02                	ld	s6,0(sp)
    14f8:	6121                	addi	sp,sp,64
    14fa:	8082                	ret
    14fc:	4501                	li	a0,0
    14fe:	00000097          	auipc	ra,0x0
    1502:	ec0080e7          	jalr	-320(ra) # 13be <random_init>
    1506:	bfa5                	j	147e <random_bytes+0x20>

0000000000001508 <random_ulong>:
    1508:	1101                	addi	sp,sp,-32
    150a:	ec06                	sd	ra,24(sp)
    150c:	45a1                	li	a1,8
    150e:	0028                	addi	a0,sp,8
    1510:	00000097          	auipc	ra,0x0
    1514:	f4e080e7          	jalr	-178(ra) # 145e <random_bytes>
    1518:	6522                	ld	a0,8(sp)
    151a:	60e2                	ld	ra,24(sp)
    151c:	6105                	addi	sp,sp,32
    151e:	8082                	ret

0000000000001520 <shuffle>:
    1520:	c9b9                	beqz	a1,1576 <shuffle+0x56>
    1522:	7179                	addi	sp,sp,-48
    1524:	f406                	sd	ra,40(sp)
    1526:	f022                	sd	s0,32(sp)
    1528:	ec26                	sd	s1,24(sp)
    152a:	e84a                	sd	s2,16(sp)
    152c:	e44e                	sd	s3,8(sp)
    152e:	e052                	sd	s4,0(sp)
    1530:	8a2a                	mv	s4,a0
    1532:	89ae                	mv	s3,a1
    1534:	84b2                	mv	s1,a2
    1536:	892a                	mv	s2,a0
    1538:	4401                	li	s0,0
    153a:	00000097          	auipc	ra,0x0
    153e:	fce080e7          	jalr	-50(ra) # 1508 <random_ulong>
    1542:	408985b3          	sub	a1,s3,s0
    1546:	02b575b3          	remu	a1,a0,a1
    154a:	95a2                	add	a1,a1,s0
    154c:	029585b3          	mul	a1,a1,s1
    1550:	8626                	mv	a2,s1
    1552:	95d2                	add	a1,a1,s4
    1554:	854a                	mv	a0,s2
    1556:	00000097          	auipc	ra,0x0
    155a:	e48080e7          	jalr	-440(ra) # 139e <swap_bytes>
    155e:	0405                	addi	s0,s0,1
    1560:	9926                	add	s2,s2,s1
    1562:	fc899ce3          	bne	s3,s0,153a <shuffle+0x1a>
    1566:	70a2                	ld	ra,40(sp)
    1568:	7402                	ld	s0,32(sp)
    156a:	64e2                	ld	s1,24(sp)
    156c:	6942                	ld	s2,16(sp)
    156e:	69a2                	ld	s3,8(sp)
    1570:	6a02                	ld	s4,0(sp)
    1572:	6145                	addi	sp,sp,48
    1574:	8082                	ret
    1576:	8082                	ret

0000000000001578 <arc4_init>:
    1578:	100500a3          	sb	zero,257(a0)
    157c:	10050023          	sb	zero,256(a0)
    1580:	4781                	li	a5,0
    1582:	10000693          	li	a3,256
    1586:	00f50733          	add	a4,a0,a5
    158a:	00f70023          	sb	a5,0(a4)
    158e:	0785                	addi	a5,a5,1
    1590:	fed79be3          	bne	a5,a3,1586 <arc4_init+0xe>
    1594:	86aa                	mv	a3,a0
    1596:	10050e13          	addi	t3,a0,256
    159a:	4701                	li	a4,0
    159c:	4781                	li	a5,0
    159e:	0006c883          	lbu	a7,0(a3)
    15a2:	00f58833          	add	a6,a1,a5
    15a6:	00084803          	lbu	a6,0(a6)
    15aa:	00e8873b          	addw	a4,a7,a4
    15ae:	00e8073b          	addw	a4,a6,a4
    15b2:	0ff77713          	andi	a4,a4,255
    15b6:	00e50833          	add	a6,a0,a4
    15ba:	00084303          	lbu	t1,0(a6)
    15be:	00668023          	sb	t1,0(a3)
    15c2:	01180023          	sb	a7,0(a6)
    15c6:	0785                	addi	a5,a5,1
    15c8:	00c7b833          	sltu	a6,a5,a2
    15cc:	41000833          	neg	a6,a6
    15d0:	0107f7b3          	and	a5,a5,a6
    15d4:	0685                	addi	a3,a3,1
    15d6:	fdc694e3          	bne	a3,t3,159e <arc4_init+0x26>
    15da:	8082                	ret

00000000000015dc <arc4_crypt>:
    15dc:	10054e03          	lbu	t3,256(a0)
    15e0:	10154803          	lbu	a6,257(a0)
    15e4:	fff60e93          	addi	t4,a2,-1
    15e8:	c225                	beqz	a2,1648 <arc4_crypt+0x6c>
    15ea:	00c588b3          	add	a7,a1,a2
    15ee:	86ae                	mv	a3,a1
    15f0:	001e031b          	addiw	t1,t3,1
    15f4:	40b3033b          	subw	t1,t1,a1
    15f8:	00d3073b          	addw	a4,t1,a3
    15fc:	0ff77713          	andi	a4,a4,255
    1600:	972a                	add	a4,a4,a0
    1602:	00074603          	lbu	a2,0(a4)
    1606:	0106083b          	addw	a6,a2,a6
    160a:	0ff87813          	andi	a6,a6,255
    160e:	010507b3          	add	a5,a0,a6
    1612:	0007c583          	lbu	a1,0(a5)
    1616:	00b70023          	sb	a1,0(a4)
    161a:	00c78023          	sb	a2,0(a5)
    161e:	0685                	addi	a3,a3,1
    1620:	00074783          	lbu	a5,0(a4)
    1624:	9fb1                	addw	a5,a5,a2
    1626:	0ff7f793          	andi	a5,a5,255
    162a:	97aa                	add	a5,a5,a0
    162c:	0007c783          	lbu	a5,0(a5)
    1630:	fff6c703          	lbu	a4,-1(a3)
    1634:	8fb9                	xor	a5,a5,a4
    1636:	fef68fa3          	sb	a5,-1(a3)
    163a:	fb169fe3          	bne	a3,a7,15f8 <arc4_crypt+0x1c>
    163e:	2e85                	addiw	t4,t4,1
    1640:	01ce8e3b          	addw	t3,t4,t3
    1644:	0ffe7e13          	andi	t3,t3,255
    1648:	11c50023          	sb	t3,256(a0)
    164c:	110500a3          	sb	a6,257(a0)
    1650:	8082                	ret

0000000000001652 <_main>:
    1652:	1141                	addi	sp,sp,-16
    1654:	e406                	sd	ra,8(sp)
    1656:	00000097          	auipc	ra,0x0
    165a:	9aa080e7          	jalr	-1622(ra) # 1000 <main>
    165e:	4501                	li	a0,0
    1660:	00000097          	auipc	ra,0x0
    1664:	578080e7          	jalr	1400(ra) # 1bd8 <exit>
    1668:	60a2                	ld	ra,8(sp)
    166a:	0141                	addi	sp,sp,16
    166c:	8082                	ret

000000000000166e <strcmp>:
    166e:	00054783          	lbu	a5,0(a0)
    1672:	cb91                	beqz	a5,1686 <strcmp+0x18>
    1674:	0005c703          	lbu	a4,0(a1)
    1678:	00f71763          	bne	a4,a5,1686 <strcmp+0x18>
    167c:	0505                	addi	a0,a0,1
    167e:	0585                	addi	a1,a1,1
    1680:	00054783          	lbu	a5,0(a0)
    1684:	fbe5                	bnez	a5,1674 <strcmp+0x6>
    1686:	0005c503          	lbu	a0,0(a1)
    168a:	40a7853b          	subw	a0,a5,a0
    168e:	8082                	ret

0000000000001690 <strcpy>:
    1690:	87aa                	mv	a5,a0
    1692:	0585                	addi	a1,a1,1
    1694:	0785                	addi	a5,a5,1
    1696:	fff5c703          	lbu	a4,-1(a1)
    169a:	fee78fa3          	sb	a4,-1(a5)
    169e:	fb75                	bnez	a4,1692 <strcpy+0x2>
    16a0:	8082                	ret

00000000000016a2 <strlen>:
    16a2:	00054783          	lbu	a5,0(a0)
    16a6:	cf81                	beqz	a5,16be <strlen+0x1c>
    16a8:	0505                	addi	a0,a0,1
    16aa:	87aa                	mv	a5,a0
    16ac:	4685                	li	a3,1
    16ae:	9e89                	subw	a3,a3,a0
    16b0:	00f6853b          	addw	a0,a3,a5
    16b4:	0785                	addi	a5,a5,1
    16b6:	fff7c703          	lbu	a4,-1(a5)
    16ba:	fb7d                	bnez	a4,16b0 <strlen+0xe>
    16bc:	8082                	ret
    16be:	4501                	li	a0,0
    16c0:	8082                	ret

00000000000016c2 <memset>:
    16c2:	ca19                	beqz	a2,16d8 <memset+0x16>
    16c4:	87aa                	mv	a5,a0
    16c6:	1602                	slli	a2,a2,0x20
    16c8:	9201                	srli	a2,a2,0x20
    16ca:	00a60733          	add	a4,a2,a0
    16ce:	00b78023          	sb	a1,0(a5)
    16d2:	0785                	addi	a5,a5,1
    16d4:	fee79de3          	bne	a5,a4,16ce <memset+0xc>
    16d8:	8082                	ret

00000000000016da <memcmp>:
    16da:	1101                	addi	sp,sp,-32
    16dc:	ec06                	sd	ra,24(sp)
    16de:	e822                	sd	s0,16(sp)
    16e0:	e426                	sd	s1,8(sp)
    16e2:	e04a                	sd	s2,0(sp)
    16e4:	892a                	mv	s2,a0
    16e6:	842e                	mv	s0,a1
    16e8:	84b2                	mv	s1,a2
    16ea:	c915                	beqz	a0,171e <memcmp+0x44>
    16ec:	c5ad                	beqz	a1,1756 <memcmp+0x7c>
    16ee:	fff60713          	addi	a4,a2,-1
    16f2:	c645                	beqz	a2,179a <memcmp+0xc0>
    16f4:	87ca                	mv	a5,s2
    16f6:	00190613          	addi	a2,s2,1
    16fa:	963a                	add	a2,a2,a4
    16fc:	0007c683          	lbu	a3,0(a5)
    1700:	00044703          	lbu	a4,0(s0)
    1704:	08e69463          	bne	a3,a4,178c <memcmp+0xb2>
    1708:	0785                	addi	a5,a5,1
    170a:	0405                	addi	s0,s0,1
    170c:	fec798e3          	bne	a5,a2,16fc <memcmp+0x22>
    1710:	4501                	li	a0,0
    1712:	60e2                	ld	ra,24(sp)
    1714:	6442                	ld	s0,16(sp)
    1716:	64a2                	ld	s1,8(sp)
    1718:	6902                	ld	s2,0(sp)
    171a:	6105                	addi	sp,sp,32
    171c:	8082                	ret
    171e:	4501                	li	a0,0
    1720:	da6d                	beqz	a2,1712 <memcmp+0x38>
    1722:	03200693          	li	a3,50
    1726:	00002637          	lui	a2,0x2
    172a:	0f860613          	addi	a2,a2,248 # 20f8 <crctab+0x400>
    172e:	000025b7          	lui	a1,0x2
    1732:	10858593          	addi	a1,a1,264 # 2108 <crctab+0x410>
    1736:	4509                	li	a0,2
    1738:	00000097          	auipc	ra,0x0
    173c:	bbc080e7          	jalr	-1092(ra) # 12f4 <fprintf>
    1740:	650d                	lui	a0,0x3
    1742:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1746:	00000097          	auipc	ra,0x0
    174a:	492080e7          	jalr	1170(ra) # 1bd8 <exit>
    174e:	fff48713          	addi	a4,s1,-1
    1752:	f04d                	bnez	s0,16f4 <memcmp+0x1a>
    1754:	a011                	j	1758 <memcmp+0x7e>
    1756:	c221                	beqz	a2,1796 <memcmp+0xbc>
    1758:	03300693          	li	a3,51
    175c:	00002637          	lui	a2,0x2
    1760:	0f860613          	addi	a2,a2,248 # 20f8 <crctab+0x400>
    1764:	000025b7          	lui	a1,0x2
    1768:	15058593          	addi	a1,a1,336 # 2150 <crctab+0x458>
    176c:	4509                	li	a0,2
    176e:	00000097          	auipc	ra,0x0
    1772:	b86080e7          	jalr	-1146(ra) # 12f4 <fprintf>
    1776:	650d                	lui	a0,0x3
    1778:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    177c:	00000097          	auipc	ra,0x0
    1780:	45c080e7          	jalr	1116(ra) # 1bd8 <exit>
    1784:	fff48713          	addi	a4,s1,-1
    1788:	4401                	li	s0,0
    178a:	b7ad                	j	16f4 <memcmp+0x1a>
    178c:	4505                	li	a0,1
    178e:	f8d762e3          	bltu	a4,a3,1712 <memcmp+0x38>
    1792:	557d                	li	a0,-1
    1794:	bfbd                	j	1712 <memcmp+0x38>
    1796:	4501                	li	a0,0
    1798:	bfad                	j	1712 <memcmp+0x38>
    179a:	4501                	li	a0,0
    179c:	bf9d                	j	1712 <memcmp+0x38>

000000000000179e <memcpy>:
    179e:	1101                	addi	sp,sp,-32
    17a0:	ec06                	sd	ra,24(sp)
    17a2:	e822                	sd	s0,16(sp)
    17a4:	e426                	sd	s1,8(sp)
    17a6:	e04a                	sd	s2,0(sp)
    17a8:	84aa                	mv	s1,a0
    17aa:	842e                	mv	s0,a1
    17ac:	8932                	mv	s2,a2
    17ae:	c51d                	beqz	a0,17dc <memcpy+0x3e>
    17b0:	c1ad                	beqz	a1,1812 <memcpy+0x74>
    17b2:	fff60693          	addi	a3,a2,-1
    17b6:	ce01                	beqz	a2,17ce <memcpy+0x30>
    17b8:	0685                	addi	a3,a3,1
    17ba:	96a6                	add	a3,a3,s1
    17bc:	87a6                	mv	a5,s1
    17be:	0405                	addi	s0,s0,1
    17c0:	0785                	addi	a5,a5,1
    17c2:	fff44703          	lbu	a4,-1(s0)
    17c6:	fee78fa3          	sb	a4,-1(a5)
    17ca:	fed79ae3          	bne	a5,a3,17be <memcpy+0x20>
    17ce:	8526                	mv	a0,s1
    17d0:	60e2                	ld	ra,24(sp)
    17d2:	6442                	ld	s0,16(sp)
    17d4:	64a2                	ld	s1,8(sp)
    17d6:	6902                	ld	s2,0(sp)
    17d8:	6105                	addi	sp,sp,32
    17da:	8082                	ret
    17dc:	da6d                	beqz	a2,17ce <memcpy+0x30>
    17de:	04000693          	li	a3,64
    17e2:	00002637          	lui	a2,0x2
    17e6:	0f860613          	addi	a2,a2,248 # 20f8 <crctab+0x400>
    17ea:	000025b7          	lui	a1,0x2
    17ee:	19858593          	addi	a1,a1,408 # 2198 <crctab+0x4a0>
    17f2:	4509                	li	a0,2
    17f4:	00000097          	auipc	ra,0x0
    17f8:	b00080e7          	jalr	-1280(ra) # 12f4 <fprintf>
    17fc:	650d                	lui	a0,0x3
    17fe:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1802:	00000097          	auipc	ra,0x0
    1806:	3d6080e7          	jalr	982(ra) # 1bd8 <exit>
    180a:	fff90693          	addi	a3,s2,-1
    180e:	f44d                	bnez	s0,17b8 <memcpy+0x1a>
    1810:	a011                	j	1814 <memcpy+0x76>
    1812:	de55                	beqz	a2,17ce <memcpy+0x30>
    1814:	04100693          	li	a3,65
    1818:	00002637          	lui	a2,0x2
    181c:	0f860613          	addi	a2,a2,248 # 20f8 <crctab+0x400>
    1820:	000025b7          	lui	a1,0x2
    1824:	1e058593          	addi	a1,a1,480 # 21e0 <crctab+0x4e8>
    1828:	4509                	li	a0,2
    182a:	00000097          	auipc	ra,0x0
    182e:	aca080e7          	jalr	-1334(ra) # 12f4 <fprintf>
    1832:	650d                	lui	a0,0x3
    1834:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1838:	00000097          	auipc	ra,0x0
    183c:	3a0080e7          	jalr	928(ra) # 1bd8 <exit>
    1840:	fff90693          	addi	a3,s2,-1
    1844:	4401                	li	s0,0
    1846:	bf8d                	j	17b8 <memcpy+0x1a>

0000000000001848 <itoa>:
    1848:	1101                	addi	sp,sp,-32
    184a:	ec06                	sd	ra,24(sp)
    184c:	e822                	sd	s0,16(sp)
    184e:	e426                	sd	s1,8(sp)
    1850:	842a                	mv	s0,a0
    1852:	41f5d71b          	sraiw	a4,a1,0x1f
    1856:	00e5c7b3          	xor	a5,a1,a4
    185a:	9f99                	subw	a5,a5,a4
    185c:	84aa                	mv	s1,a0
    185e:	862a                	mv	a2,a0
    1860:	4681                	li	a3,0
    1862:	4529                	li	a0,10
    1864:	4825                	li	a6,9
    1866:	88b6                	mv	a7,a3
    1868:	2685                	addiw	a3,a3,1
    186a:	02a7e73b          	remw	a4,a5,a0
    186e:	0307071b          	addiw	a4,a4,48
    1872:	00e60023          	sb	a4,0(a2)
    1876:	873e                	mv	a4,a5
    1878:	02a7c7bb          	divw	a5,a5,a0
    187c:	0605                	addi	a2,a2,1
    187e:	fee844e3          	blt	a6,a4,1866 <itoa+0x1e>
    1882:	0405c863          	bltz	a1,18d2 <itoa+0x8a>
    1886:	96a2                	add	a3,a3,s0
    1888:	00068023          	sb	zero,0(a3)
    188c:	8522                	mv	a0,s0
    188e:	00000097          	auipc	ra,0x0
    1892:	e14080e7          	jalr	-492(ra) # 16a2 <strlen>
    1896:	fff5071b          	addiw	a4,a0,-1
    189a:	02e05763          	blez	a4,18c8 <itoa+0x80>
    189e:	9722                	add	a4,a4,s0
    18a0:	4681                	li	a3,0
    18a2:	0004c783          	lbu	a5,0(s1)
    18a6:	00074603          	lbu	a2,0(a4)
    18aa:	00c48023          	sb	a2,0(s1)
    18ae:	00f70023          	sb	a5,0(a4)
    18b2:	0016879b          	addiw	a5,a3,1
    18b6:	0007869b          	sext.w	a3,a5
    18ba:	0485                	addi	s1,s1,1
    18bc:	177d                	addi	a4,a4,-1
    18be:	fff7c793          	not	a5,a5
    18c2:	9fa9                	addw	a5,a5,a0
    18c4:	fcf6cfe3          	blt	a3,a5,18a2 <itoa+0x5a>
    18c8:	60e2                	ld	ra,24(sp)
    18ca:	6442                	ld	s0,16(sp)
    18cc:	64a2                	ld	s1,8(sp)
    18ce:	6105                	addi	sp,sp,32
    18d0:	8082                	ret
    18d2:	96a2                	add	a3,a3,s0
    18d4:	02d00793          	li	a5,45
    18d8:	00f68023          	sb	a5,0(a3)
    18dc:	0028869b          	addiw	a3,a7,2
    18e0:	b75d                	j	1886 <itoa+0x3e>

00000000000018e2 <atoi>:
    18e2:	00054783          	lbu	a5,0(a0)
    18e6:	02000713          	li	a4,32
    18ea:	00e79763          	bne	a5,a4,18f8 <atoi+0x16>
    18ee:	0505                	addi	a0,a0,1
    18f0:	00054783          	lbu	a5,0(a0)
    18f4:	fee78de3          	beq	a5,a4,18ee <atoi+0xc>
    18f8:	02b00713          	li	a4,43
    18fc:	04e78663          	beq	a5,a4,1948 <atoi+0x66>
    1900:	02d00713          	li	a4,45
    1904:	4805                	li	a6,1
    1906:	04e78463          	beq	a5,a4,194e <atoi+0x6c>
    190a:	00054683          	lbu	a3,0(a0)
    190e:	fd06879b          	addiw	a5,a3,-48
    1912:	0ff7f793          	andi	a5,a5,255
    1916:	4725                	li	a4,9
    1918:	02f76e63          	bltu	a4,a5,1954 <atoi+0x72>
    191c:	4601                	li	a2,0
    191e:	45a5                	li	a1,9
    1920:	0505                	addi	a0,a0,1
    1922:	0026179b          	slliw	a5,a2,0x2
    1926:	9fb1                	addw	a5,a5,a2
    1928:	0017979b          	slliw	a5,a5,0x1
    192c:	9fb5                	addw	a5,a5,a3
    192e:	fd07861b          	addiw	a2,a5,-48
    1932:	00054683          	lbu	a3,0(a0)
    1936:	fd06871b          	addiw	a4,a3,-48
    193a:	0ff77713          	andi	a4,a4,255
    193e:	fee5f1e3          	bgeu	a1,a4,1920 <atoi+0x3e>
    1942:	02c8053b          	mulw	a0,a6,a2
    1946:	8082                	ret
    1948:	0505                	addi	a0,a0,1
    194a:	4805                	li	a6,1
    194c:	bf7d                	j	190a <atoi+0x28>
    194e:	0505                	addi	a0,a0,1
    1950:	587d                	li	a6,-1
    1952:	bf65                	j	190a <atoi+0x28>
    1954:	4601                	li	a2,0
    1956:	b7f5                	j	1942 <atoi+0x60>

0000000000001958 <check_file_handle>:
    1958:	d8010113          	addi	sp,sp,-640
    195c:	26113c23          	sd	ra,632(sp)
    1960:	26813823          	sd	s0,624(sp)
    1964:	26913423          	sd	s1,616(sp)
    1968:	27213023          	sd	s2,608(sp)
    196c:	25313c23          	sd	s3,600(sp)
    1970:	25413823          	sd	s4,592(sp)
    1974:	25513423          	sd	s5,584(sp)
    1978:	25613023          	sd	s6,576(sp)
    197c:	23713c23          	sd	s7,568(sp)
    1980:	23813823          	sd	s8,560(sp)
    1984:	23913423          	sd	s9,552(sp)
    1988:	23a13023          	sd	s10,544(sp)
    198c:	21b13c23          	sd	s11,536(sp)
    1990:	8baa                	mv	s7,a0
    1992:	8a2e                	mv	s4,a1
    1994:	8c32                	mv	s8,a2
    1996:	89b6                	mv	s3,a3
    1998:	040c                	addi	a1,sp,512
    199a:	00000097          	auipc	ra,0x0
    199e:	28e080e7          	jalr	654(ra) # 1c28 <fstat>
    19a2:	20813603          	ld	a2,520(sp)
    19a6:	03361163          	bne	a2,s3,19c8 <check_file_handle+0x70>
    19aa:	06098763          	beqz	s3,1a18 <check_file_handle+0xc0>
    19ae:	4901                	li	s2,0
    19b0:	20000a93          	li	s5,512
    19b4:	00002cb7          	lui	s9,0x2
    19b8:	00002db7          	lui	s11,0x2
    19bc:	6b0d                	lui	s6,0x3
    19be:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19c2:	00002d37          	lui	s10,0x2
    19c6:	aa39                	j	1ae4 <check_file_handle+0x18c>
    19c8:	86ce                	mv	a3,s3
    19ca:	85d2                	mv	a1,s4
    19cc:	00002537          	lui	a0,0x2
    19d0:	22850513          	addi	a0,a0,552 # 2228 <crctab+0x530>
    19d4:	00000097          	auipc	ra,0x0
    19d8:	942080e7          	jalr	-1726(ra) # 1316 <printf>
    19dc:	fc0999e3          	bnez	s3,19ae <check_file_handle+0x56>
    19e0:	20813683          	ld	a3,520(sp)
    19e4:	03368a63          	beq	a3,s3,1a18 <check_file_handle+0xc0>
    19e8:	0a600813          	li	a6,166
    19ec:	000027b7          	lui	a5,0x2
    19f0:	0f878793          	addi	a5,a5,248 # 20f8 <crctab+0x400>
    19f4:	874e                	mv	a4,s3
    19f6:	8652                	mv	a2,s4
    19f8:	000025b7          	lui	a1,0x2
    19fc:	2f858593          	addi	a1,a1,760 # 22f8 <crctab+0x600>
    1a00:	4509                	li	a0,2
    1a02:	00000097          	auipc	ra,0x0
    1a06:	8f2080e7          	jalr	-1806(ra) # 12f4 <fprintf>
    1a0a:	650d                	lui	a0,0x3
    1a0c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a10:	00000097          	auipc	ra,0x0
    1a14:	1c8080e7          	jalr	456(ra) # 1bd8 <exit>
    1a18:	85d2                	mv	a1,s4
    1a1a:	00002537          	lui	a0,0x2
    1a1e:	34050513          	addi	a0,a0,832 # 2340 <crctab+0x648>
    1a22:	00000097          	auipc	ra,0x0
    1a26:	8f4080e7          	jalr	-1804(ra) # 1316 <printf>
    1a2a:	27813083          	ld	ra,632(sp)
    1a2e:	27013403          	ld	s0,624(sp)
    1a32:	26813483          	ld	s1,616(sp)
    1a36:	26013903          	ld	s2,608(sp)
    1a3a:	25813983          	ld	s3,600(sp)
    1a3e:	25013a03          	ld	s4,592(sp)
    1a42:	24813a83          	ld	s5,584(sp)
    1a46:	24013b03          	ld	s6,576(sp)
    1a4a:	23813b83          	ld	s7,568(sp)
    1a4e:	23013c03          	ld	s8,560(sp)
    1a52:	22813c83          	ld	s9,552(sp)
    1a56:	22013d03          	ld	s10,544(sp)
    1a5a:	21813d83          	ld	s11,536(sp)
    1a5e:	28010113          	addi	sp,sp,640
    1a62:	8082                	ret
    1a64:	09d00893          	li	a7,157
    1a68:	0f8c8813          	addi	a6,s9,248 # 20f8 <crctab+0x400>
    1a6c:	87aa                	mv	a5,a0
    1a6e:	8752                	mv	a4,s4
    1a70:	86ca                	mv	a3,s2
    1a72:	8622                	mv	a2,s0
    1a74:	258d8593          	addi	a1,s11,600 # 2258 <crctab+0x560>
    1a78:	4509                	li	a0,2
    1a7a:	00000097          	auipc	ra,0x0
    1a7e:	87a080e7          	jalr	-1926(ra) # 12f4 <fprintf>
    1a82:	855a                	mv	a0,s6
    1a84:	00000097          	auipc	ra,0x0
    1a88:	154080e7          	jalr	340(ra) # 1bd8 <exit>
    1a8c:	a89d                	j	1b02 <check_file_handle+0x1aa>
    1a8e:	00160593          	addi	a1,a2,1
    1a92:	0285f163          	bgeu	a1,s0,1ab4 <check_file_handle+0x15c>
    1a96:	00c10733          	add	a4,sp,a2
    1a9a:	00b487b3          	add	a5,s1,a1
    1a9e:	00174683          	lbu	a3,1(a4)
    1aa2:	0007c783          	lbu	a5,0(a5)
    1aa6:	00f68763          	beq	a3,a5,1ab4 <check_file_handle+0x15c>
    1aaa:	0585                	addi	a1,a1,1
    1aac:	0705                	addi	a4,a4,1
    1aae:	feb416e3          	bne	s0,a1,1a9a <check_file_handle+0x142>
    1ab2:	85a2                	mv	a1,s0
    1ab4:	08100813          	li	a6,129
    1ab8:	0f8c8793          	addi	a5,s9,248
    1abc:	8752                	mv	a4,s4
    1abe:	012606b3          	add	a3,a2,s2
    1ac2:	40c58633          	sub	a2,a1,a2
    1ac6:	2a0d0593          	addi	a1,s10,672 # 22a0 <crctab+0x5a8>
    1aca:	4509                	li	a0,2
    1acc:	00000097          	auipc	ra,0x0
    1ad0:	828080e7          	jalr	-2008(ra) # 12f4 <fprintf>
    1ad4:	855a                	mv	a0,s6
    1ad6:	00000097          	auipc	ra,0x0
    1ada:	102080e7          	jalr	258(ra) # 1bd8 <exit>
    1ade:	9922                	add	s2,s2,s0
    1ae0:	f13970e3          	bgeu	s2,s3,19e0 <check_file_handle+0x88>
    1ae4:	41298433          	sub	s0,s3,s2
    1ae8:	008af363          	bgeu	s5,s0,1aee <check_file_handle+0x196>
    1aec:	8456                	mv	s0,s5
    1aee:	0004061b          	sext.w	a2,s0
    1af2:	858a                	mv	a1,sp
    1af4:	855e                	mv	a0,s7
    1af6:	00000097          	auipc	ra,0x0
    1afa:	10a080e7          	jalr	266(ra) # 1c00 <read>
    1afe:	f68513e3          	bne	a0,s0,1a64 <check_file_handle+0x10c>
    1b02:	012c04b3          	add	s1,s8,s2
    1b06:	8622                	mv	a2,s0
    1b08:	85a6                	mv	a1,s1
    1b0a:	850a                	mv	a0,sp
    1b0c:	00000097          	auipc	ra,0x0
    1b10:	bce080e7          	jalr	-1074(ra) # 16da <memcmp>
    1b14:	d569                	beqz	a0,1ade <check_file_handle+0x186>
    1b16:	03298163          	beq	s3,s2,1b38 <check_file_handle+0x1e0>
    1b1a:	870a                	mv	a4,sp
    1b1c:	4601                	li	a2,0
    1b1e:	00c487b3          	add	a5,s1,a2
    1b22:	00074683          	lbu	a3,0(a4)
    1b26:	0007c783          	lbu	a5,0(a5)
    1b2a:	f6f692e3          	bne	a3,a5,1a8e <check_file_handle+0x136>
    1b2e:	0605                	addi	a2,a2,1
    1b30:	0705                	addi	a4,a4,1
    1b32:	fe8666e3          	bltu	a2,s0,1b1e <check_file_handle+0x1c6>
    1b36:	bfa1                	j	1a8e <check_file_handle+0x136>
    1b38:	4601                	li	a2,0
    1b3a:	4585                	li	a1,1
    1b3c:	bfa5                	j	1ab4 <check_file_handle+0x15c>

0000000000001b3e <check_file>:
    1b3e:	7179                	addi	sp,sp,-48
    1b40:	f406                	sd	ra,40(sp)
    1b42:	f022                	sd	s0,32(sp)
    1b44:	ec26                	sd	s1,24(sp)
    1b46:	e84a                	sd	s2,16(sp)
    1b48:	e44e                	sd	s3,8(sp)
    1b4a:	84aa                	mv	s1,a0
    1b4c:	892e                	mv	s2,a1
    1b4e:	89b2                	mv	s3,a2
    1b50:	4581                	li	a1,0
    1b52:	00000097          	auipc	ra,0x0
    1b56:	0a6080e7          	jalr	166(ra) # 1bf8 <open>
    1b5a:	842a                	mv	s0,a0
    1b5c:	4789                	li	a5,2
    1b5e:	02a7df63          	bge	a5,a0,1b9c <check_file+0x5e>
    1b62:	86ce                	mv	a3,s3
    1b64:	864a                	mv	a2,s2
    1b66:	85a6                	mv	a1,s1
    1b68:	8522                	mv	a0,s0
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	dee080e7          	jalr	-530(ra) # 1958 <check_file_handle>
    1b72:	85a6                	mv	a1,s1
    1b74:	00002537          	lui	a0,0x2
    1b78:	3c850513          	addi	a0,a0,968 # 23c8 <crctab+0x6d0>
    1b7c:	fffff097          	auipc	ra,0xfffff
    1b80:	79a080e7          	jalr	1946(ra) # 1316 <printf>
    1b84:	8522                	mv	a0,s0
    1b86:	00000097          	auipc	ra,0x0
    1b8a:	09a080e7          	jalr	154(ra) # 1c20 <close>
    1b8e:	70a2                	ld	ra,40(sp)
    1b90:	7402                	ld	s0,32(sp)
    1b92:	64e2                	ld	s1,24(sp)
    1b94:	6942                	ld	s2,16(sp)
    1b96:	69a2                	ld	s3,8(sp)
    1b98:	6145                	addi	sp,sp,48
    1b9a:	8082                	ret
    1b9c:	0ae00713          	li	a4,174
    1ba0:	000026b7          	lui	a3,0x2
    1ba4:	0f868693          	addi	a3,a3,248 # 20f8 <crctab+0x400>
    1ba8:	8626                	mv	a2,s1
    1baa:	000025b7          	lui	a1,0x2
    1bae:	36058593          	addi	a1,a1,864 # 2360 <crctab+0x668>
    1bb2:	4509                	li	a0,2
    1bb4:	fffff097          	auipc	ra,0xfffff
    1bb8:	740080e7          	jalr	1856(ra) # 12f4 <fprintf>
    1bbc:	650d                	lui	a0,0x3
    1bbe:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bc2:	00000097          	auipc	ra,0x0
    1bc6:	016080e7          	jalr	22(ra) # 1bd8 <exit>
    1bca:	bf61                	j	1b62 <check_file+0x24>

0000000000001bcc <r_sp>:
    1bcc:	850a                	mv	a0,sp
    1bce:	8082                	ret

0000000000001bd0 <halt>:
    1bd0:	4885                	li	a7,1
    1bd2:	00000073          	ecall
    1bd6:	8082                	ret

0000000000001bd8 <exit>:
    1bd8:	4889                	li	a7,2
    1bda:	00000073          	ecall
    1bde:	8082                	ret

0000000000001be0 <exec>:
    1be0:	488d                	li	a7,3
    1be2:	00000073          	ecall
    1be6:	8082                	ret

0000000000001be8 <wait>:
    1be8:	4891                	li	a7,4
    1bea:	00000073          	ecall
    1bee:	8082                	ret

0000000000001bf0 <remove>:
    1bf0:	4895                	li	a7,5
    1bf2:	00000073          	ecall
    1bf6:	8082                	ret

0000000000001bf8 <open>:
    1bf8:	4899                	li	a7,6
    1bfa:	00000073          	ecall
    1bfe:	8082                	ret

0000000000001c00 <read>:
    1c00:	489d                	li	a7,7
    1c02:	00000073          	ecall
    1c06:	8082                	ret

0000000000001c08 <write>:
    1c08:	48a1                	li	a7,8
    1c0a:	00000073          	ecall
    1c0e:	8082                	ret

0000000000001c10 <seek>:
    1c10:	48a5                	li	a7,9
    1c12:	00000073          	ecall
    1c16:	8082                	ret

0000000000001c18 <tell>:
    1c18:	48a9                	li	a7,10
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret

0000000000001c20 <close>:
    1c20:	48ad                	li	a7,11
    1c22:	00000073          	ecall
    1c26:	8082                	ret

0000000000001c28 <fstat>:
    1c28:	48b1                	li	a7,12
    1c2a:	00000073          	ecall
    1c2e:	8082                	ret

0000000000001c30 <mmap>:
    1c30:	48b5                	li	a7,13
    1c32:	00000073          	ecall
    1c36:	8082                	ret

0000000000001c38 <munmap>:
    1c38:	48b9                	li	a7,14
    1c3a:	00000073          	ecall
    1c3e:	8082                	ret

0000000000001c40 <chdir>:
    1c40:	48bd                	li	a7,15
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <mkdir>:
    1c48:	48c1                	li	a7,16
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret
