
build/user/userprogs/bad-jump2:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	c0300793          	li	a5,-1021
    1008:	07f2                	slli	a5,a5,0x1c
    100a:	9782                	jalr	a5
    100c:	85aa                	mv	a1,a0
    100e:	00002537          	lui	a0,0x2
    1012:	c4050513          	addi	a0,a0,-960 # 1c40 <mkdir+0x14>
    1016:	00000097          	auipc	ra,0x0
    101a:	2e4080e7          	jalr	740(ra) # 12fa <printf>
    101e:	46a1                	li	a3,8
    1020:	00002637          	lui	a2,0x2
    1024:	c8060613          	addi	a2,a2,-896 # 1c80 <mkdir+0x54>
    1028:	000025b7          	lui	a1,0x2
    102c:	ca058593          	addi	a1,a1,-864 # 1ca0 <mkdir+0x74>
    1030:	4509                	li	a0,2
    1032:	00000097          	auipc	ra,0x0
    1036:	2a6080e7          	jalr	678(ra) # 12d8 <fprintf>
    103a:	650d                	lui	a0,0x3
    103c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1040:	00001097          	auipc	ra,0x1
    1044:	b7c080e7          	jalr	-1156(ra) # 1bbc <exit>
    1048:	60a2                	ld	ra,8(sp)
    104a:	0141                	addi	sp,sp,16
    104c:	8082                	ret

000000000000104e <putc>:
    104e:	1101                	addi	sp,sp,-32
    1050:	ec06                	sd	ra,24(sp)
    1052:	00b107a3          	sb	a1,15(sp)
    1056:	4605                	li	a2,1
    1058:	00f10593          	addi	a1,sp,15
    105c:	00001097          	auipc	ra,0x1
    1060:	b90080e7          	jalr	-1136(ra) # 1bec <write>
    1064:	60e2                	ld	ra,24(sp)
    1066:	6105                	addi	sp,sp,32
    1068:	8082                	ret

000000000000106a <printint>:
    106a:	7179                	addi	sp,sp,-48
    106c:	f406                	sd	ra,40(sp)
    106e:	f022                	sd	s0,32(sp)
    1070:	ec26                	sd	s1,24(sp)
    1072:	e84a                	sd	s2,16(sp)
    1074:	84aa                	mv	s1,a0
    1076:	c299                	beqz	a3,107c <printint+0x12>
    1078:	0805c363          	bltz	a1,10fe <printint+0x94>
    107c:	2581                	sext.w	a1,a1
    107e:	4881                	li	a7,0
    1080:	868a                	mv	a3,sp
    1082:	4701                	li	a4,0
    1084:	2601                	sext.w	a2,a2
    1086:	00002537          	lui	a0,0x2
    108a:	cd850513          	addi	a0,a0,-808 # 1cd8 <digits>
    108e:	883a                	mv	a6,a4
    1090:	2705                	addiw	a4,a4,1
    1092:	02c5f7bb          	remuw	a5,a1,a2
    1096:	1782                	slli	a5,a5,0x20
    1098:	9381                	srli	a5,a5,0x20
    109a:	97aa                	add	a5,a5,a0
    109c:	0007c783          	lbu	a5,0(a5)
    10a0:	00f68023          	sb	a5,0(a3)
    10a4:	0005879b          	sext.w	a5,a1
    10a8:	02c5d5bb          	divuw	a1,a1,a2
    10ac:	0685                	addi	a3,a3,1
    10ae:	fec7f0e3          	bgeu	a5,a2,108e <printint+0x24>
    10b2:	00088a63          	beqz	a7,10c6 <printint+0x5c>
    10b6:	081c                	addi	a5,sp,16
    10b8:	973e                	add	a4,a4,a5
    10ba:	02d00793          	li	a5,45
    10be:	fef70823          	sb	a5,-16(a4)
    10c2:	0028071b          	addiw	a4,a6,2
    10c6:	02e05663          	blez	a4,10f2 <printint+0x88>
    10ca:	00e10433          	add	s0,sp,a4
    10ce:	fff10913          	addi	s2,sp,-1
    10d2:	993a                	add	s2,s2,a4
    10d4:	377d                	addiw	a4,a4,-1
    10d6:	1702                	slli	a4,a4,0x20
    10d8:	9301                	srli	a4,a4,0x20
    10da:	40e90933          	sub	s2,s2,a4
    10de:	fff44583          	lbu	a1,-1(s0)
    10e2:	8526                	mv	a0,s1
    10e4:	00000097          	auipc	ra,0x0
    10e8:	f6a080e7          	jalr	-150(ra) # 104e <putc>
    10ec:	147d                	addi	s0,s0,-1
    10ee:	ff2418e3          	bne	s0,s2,10de <printint+0x74>
    10f2:	70a2                	ld	ra,40(sp)
    10f4:	7402                	ld	s0,32(sp)
    10f6:	64e2                	ld	s1,24(sp)
    10f8:	6942                	ld	s2,16(sp)
    10fa:	6145                	addi	sp,sp,48
    10fc:	8082                	ret
    10fe:	40b005bb          	negw	a1,a1
    1102:	4885                	li	a7,1
    1104:	bfb5                	j	1080 <printint+0x16>

0000000000001106 <vprintf>:
    1106:	7159                	addi	sp,sp,-112
    1108:	f486                	sd	ra,104(sp)
    110a:	f0a2                	sd	s0,96(sp)
    110c:	eca6                	sd	s1,88(sp)
    110e:	e8ca                	sd	s2,80(sp)
    1110:	e4ce                	sd	s3,72(sp)
    1112:	e0d2                	sd	s4,64(sp)
    1114:	fc56                	sd	s5,56(sp)
    1116:	f85a                	sd	s6,48(sp)
    1118:	f45e                	sd	s7,40(sp)
    111a:	f062                	sd	s8,32(sp)
    111c:	ec66                	sd	s9,24(sp)
    111e:	e86a                	sd	s10,16(sp)
    1120:	e46e                	sd	s11,8(sp)
    1122:	0005c483          	lbu	s1,0(a1)
    1126:	18048a63          	beqz	s1,12ba <vprintf+0x1b4>
    112a:	8a2a                	mv	s4,a0
    112c:	8ab2                	mv	s5,a2
    112e:	00158413          	addi	s0,a1,1
    1132:	4901                	li	s2,0
    1134:	02500993          	li	s3,37
    1138:	06400b93          	li	s7,100
    113c:	06c00c13          	li	s8,108
    1140:	07800c93          	li	s9,120
    1144:	07000d13          	li	s10,112
    1148:	00002db7          	lui	s11,0x2
    114c:	00002b37          	lui	s6,0x2
    1150:	cd8b0b13          	addi	s6,s6,-808 # 1cd8 <digits>
    1154:	a839                	j	1172 <vprintf+0x6c>
    1156:	85a6                	mv	a1,s1
    1158:	8552                	mv	a0,s4
    115a:	00000097          	auipc	ra,0x0
    115e:	ef4080e7          	jalr	-268(ra) # 104e <putc>
    1162:	a019                	j	1168 <vprintf+0x62>
    1164:	01390f63          	beq	s2,s3,1182 <vprintf+0x7c>
    1168:	0405                	addi	s0,s0,1
    116a:	fff44483          	lbu	s1,-1(s0)
    116e:	14048663          	beqz	s1,12ba <vprintf+0x1b4>
    1172:	0004879b          	sext.w	a5,s1
    1176:	fe0917e3          	bnez	s2,1164 <vprintf+0x5e>
    117a:	fd379ee3          	bne	a5,s3,1156 <vprintf+0x50>
    117e:	893e                	mv	s2,a5
    1180:	b7e5                	j	1168 <vprintf+0x62>
    1182:	05778063          	beq	a5,s7,11c2 <vprintf+0xbc>
    1186:	05878c63          	beq	a5,s8,11de <vprintf+0xd8>
    118a:	07978863          	beq	a5,s9,11fa <vprintf+0xf4>
    118e:	09a78463          	beq	a5,s10,1216 <vprintf+0x110>
    1192:	07300713          	li	a4,115
    1196:	0ce78263          	beq	a5,a4,125a <vprintf+0x154>
    119a:	06300713          	li	a4,99
    119e:	0ee78763          	beq	a5,a4,128c <vprintf+0x186>
    11a2:	11378163          	beq	a5,s3,12a4 <vprintf+0x19e>
    11a6:	85ce                	mv	a1,s3
    11a8:	8552                	mv	a0,s4
    11aa:	00000097          	auipc	ra,0x0
    11ae:	ea4080e7          	jalr	-348(ra) # 104e <putc>
    11b2:	85a6                	mv	a1,s1
    11b4:	8552                	mv	a0,s4
    11b6:	00000097          	auipc	ra,0x0
    11ba:	e98080e7          	jalr	-360(ra) # 104e <putc>
    11be:	4901                	li	s2,0
    11c0:	b765                	j	1168 <vprintf+0x62>
    11c2:	008a8493          	addi	s1,s5,8
    11c6:	4685                	li	a3,1
    11c8:	4629                	li	a2,10
    11ca:	000aa583          	lw	a1,0(s5)
    11ce:	8552                	mv	a0,s4
    11d0:	00000097          	auipc	ra,0x0
    11d4:	e9a080e7          	jalr	-358(ra) # 106a <printint>
    11d8:	8aa6                	mv	s5,s1
    11da:	4901                	li	s2,0
    11dc:	b771                	j	1168 <vprintf+0x62>
    11de:	008a8493          	addi	s1,s5,8
    11e2:	4681                	li	a3,0
    11e4:	4629                	li	a2,10
    11e6:	000aa583          	lw	a1,0(s5)
    11ea:	8552                	mv	a0,s4
    11ec:	00000097          	auipc	ra,0x0
    11f0:	e7e080e7          	jalr	-386(ra) # 106a <printint>
    11f4:	8aa6                	mv	s5,s1
    11f6:	4901                	li	s2,0
    11f8:	bf85                	j	1168 <vprintf+0x62>
    11fa:	008a8493          	addi	s1,s5,8
    11fe:	4681                	li	a3,0
    1200:	4641                	li	a2,16
    1202:	000aa583          	lw	a1,0(s5)
    1206:	8552                	mv	a0,s4
    1208:	00000097          	auipc	ra,0x0
    120c:	e62080e7          	jalr	-414(ra) # 106a <printint>
    1210:	8aa6                	mv	s5,s1
    1212:	4901                	li	s2,0
    1214:	bf91                	j	1168 <vprintf+0x62>
    1216:	008a8913          	addi	s2,s5,8
    121a:	000aba83          	ld	s5,0(s5)
    121e:	03000593          	li	a1,48
    1222:	8552                	mv	a0,s4
    1224:	00000097          	auipc	ra,0x0
    1228:	e2a080e7          	jalr	-470(ra) # 104e <putc>
    122c:	85e6                	mv	a1,s9
    122e:	8552                	mv	a0,s4
    1230:	00000097          	auipc	ra,0x0
    1234:	e1e080e7          	jalr	-482(ra) # 104e <putc>
    1238:	44c1                	li	s1,16
    123a:	03cad793          	srli	a5,s5,0x3c
    123e:	97da                	add	a5,a5,s6
    1240:	0007c583          	lbu	a1,0(a5)
    1244:	8552                	mv	a0,s4
    1246:	00000097          	auipc	ra,0x0
    124a:	e08080e7          	jalr	-504(ra) # 104e <putc>
    124e:	0a92                	slli	s5,s5,0x4
    1250:	34fd                	addiw	s1,s1,-1
    1252:	f4e5                	bnez	s1,123a <vprintf+0x134>
    1254:	8aca                	mv	s5,s2
    1256:	4901                	li	s2,0
    1258:	bf01                	j	1168 <vprintf+0x62>
    125a:	008a8913          	addi	s2,s5,8
    125e:	000ab483          	ld	s1,0(s5)
    1262:	c085                	beqz	s1,1282 <vprintf+0x17c>
    1264:	0004c583          	lbu	a1,0(s1)
    1268:	c5b1                	beqz	a1,12b4 <vprintf+0x1ae>
    126a:	8552                	mv	a0,s4
    126c:	00000097          	auipc	ra,0x0
    1270:	de2080e7          	jalr	-542(ra) # 104e <putc>
    1274:	0485                	addi	s1,s1,1
    1276:	0004c583          	lbu	a1,0(s1)
    127a:	f9e5                	bnez	a1,126a <vprintf+0x164>
    127c:	8aca                	mv	s5,s2
    127e:	4901                	li	s2,0
    1280:	b5e5                	j	1168 <vprintf+0x62>
    1282:	cd0d8493          	addi	s1,s11,-816 # 1cd0 <mkdir+0xa4>
    1286:	02800593          	li	a1,40
    128a:	b7c5                	j	126a <vprintf+0x164>
    128c:	008a8493          	addi	s1,s5,8
    1290:	000ac583          	lbu	a1,0(s5)
    1294:	8552                	mv	a0,s4
    1296:	00000097          	auipc	ra,0x0
    129a:	db8080e7          	jalr	-584(ra) # 104e <putc>
    129e:	8aa6                	mv	s5,s1
    12a0:	4901                	li	s2,0
    12a2:	b5d9                	j	1168 <vprintf+0x62>
    12a4:	85ce                	mv	a1,s3
    12a6:	8552                	mv	a0,s4
    12a8:	00000097          	auipc	ra,0x0
    12ac:	da6080e7          	jalr	-602(ra) # 104e <putc>
    12b0:	4901                	li	s2,0
    12b2:	bd5d                	j	1168 <vprintf+0x62>
    12b4:	8aca                	mv	s5,s2
    12b6:	4901                	li	s2,0
    12b8:	bd45                	j	1168 <vprintf+0x62>
    12ba:	70a6                	ld	ra,104(sp)
    12bc:	7406                	ld	s0,96(sp)
    12be:	64e6                	ld	s1,88(sp)
    12c0:	6946                	ld	s2,80(sp)
    12c2:	69a6                	ld	s3,72(sp)
    12c4:	6a06                	ld	s4,64(sp)
    12c6:	7ae2                	ld	s5,56(sp)
    12c8:	7b42                	ld	s6,48(sp)
    12ca:	7ba2                	ld	s7,40(sp)
    12cc:	7c02                	ld	s8,32(sp)
    12ce:	6ce2                	ld	s9,24(sp)
    12d0:	6d42                	ld	s10,16(sp)
    12d2:	6da2                	ld	s11,8(sp)
    12d4:	6165                	addi	sp,sp,112
    12d6:	8082                	ret

00000000000012d8 <fprintf>:
    12d8:	715d                	addi	sp,sp,-80
    12da:	ec06                	sd	ra,24(sp)
    12dc:	f032                	sd	a2,32(sp)
    12de:	f436                	sd	a3,40(sp)
    12e0:	f83a                	sd	a4,48(sp)
    12e2:	fc3e                	sd	a5,56(sp)
    12e4:	e0c2                	sd	a6,64(sp)
    12e6:	e4c6                	sd	a7,72(sp)
    12e8:	1010                	addi	a2,sp,32
    12ea:	e432                	sd	a2,8(sp)
    12ec:	00000097          	auipc	ra,0x0
    12f0:	e1a080e7          	jalr	-486(ra) # 1106 <vprintf>
    12f4:	60e2                	ld	ra,24(sp)
    12f6:	6161                	addi	sp,sp,80
    12f8:	8082                	ret

00000000000012fa <printf>:
    12fa:	711d                	addi	sp,sp,-96
    12fc:	ec06                	sd	ra,24(sp)
    12fe:	f42e                	sd	a1,40(sp)
    1300:	f832                	sd	a2,48(sp)
    1302:	fc36                	sd	a3,56(sp)
    1304:	e0ba                	sd	a4,64(sp)
    1306:	e4be                	sd	a5,72(sp)
    1308:	e8c2                	sd	a6,80(sp)
    130a:	ecc6                	sd	a7,88(sp)
    130c:	1030                	addi	a2,sp,40
    130e:	e432                	sd	a2,8(sp)
    1310:	85aa                	mv	a1,a0
    1312:	4505                	li	a0,1
    1314:	00000097          	auipc	ra,0x0
    1318:	df2080e7          	jalr	-526(ra) # 1106 <vprintf>
    131c:	60e2                	ld	ra,24(sp)
    131e:	6125                	addi	sp,sp,96
    1320:	8082                	ret

0000000000001322 <cksum>:
    1322:	cdb1                	beqz	a1,137e <cksum+0x5c>
    1324:	00b50833          	add	a6,a0,a1
    1328:	4781                	li	a5,0
    132a:	00002637          	lui	a2,0x2
    132e:	cf060613          	addi	a2,a2,-784 # 1cf0 <crctab>
    1332:	0505                	addi	a0,a0,1
    1334:	0087969b          	slliw	a3,a5,0x8
    1338:	0187d71b          	srliw	a4,a5,0x18
    133c:	fff54783          	lbu	a5,-1(a0)
    1340:	8f3d                	xor	a4,a4,a5
    1342:	1702                	slli	a4,a4,0x20
    1344:	9301                	srli	a4,a4,0x20
    1346:	070a                	slli	a4,a4,0x2
    1348:	9732                	add	a4,a4,a2
    134a:	431c                	lw	a5,0(a4)
    134c:	8fb5                	xor	a5,a5,a3
    134e:	2781                	sext.w	a5,a5
    1350:	fea811e3          	bne	a6,a0,1332 <cksum+0x10>
    1354:	00002637          	lui	a2,0x2
    1358:	cf060613          	addi	a2,a2,-784 # 1cf0 <crctab>
    135c:	0ff5f693          	andi	a3,a1,255
    1360:	81a1                	srli	a1,a1,0x8
    1362:	0087951b          	slliw	a0,a5,0x8
    1366:	0187d71b          	srliw	a4,a5,0x18
    136a:	8f35                	xor	a4,a4,a3
    136c:	070a                	slli	a4,a4,0x2
    136e:	9732                	add	a4,a4,a2
    1370:	431c                	lw	a5,0(a4)
    1372:	8fa9                	xor	a5,a5,a0
    1374:	2781                	sext.w	a5,a5
    1376:	f1fd                	bnez	a1,135c <cksum+0x3a>
    1378:	fff7c513          	not	a0,a5
    137c:	8082                	ret
    137e:	4781                	li	a5,0
    1380:	bfe5                	j	1378 <cksum+0x56>

0000000000001382 <swap_bytes>:
    1382:	ce19                	beqz	a2,13a0 <swap_bytes+0x1e>
    1384:	87aa                	mv	a5,a0
    1386:	962a                	add	a2,a2,a0
    1388:	0007c703          	lbu	a4,0(a5)
    138c:	0005c683          	lbu	a3,0(a1)
    1390:	00d78023          	sb	a3,0(a5)
    1394:	00e58023          	sb	a4,0(a1)
    1398:	0785                	addi	a5,a5,1
    139a:	0585                	addi	a1,a1,1
    139c:	fec796e3          	bne	a5,a2,1388 <swap_bytes+0x6>
    13a0:	8082                	ret

00000000000013a2 <random_init>:
    13a2:	7139                	addi	sp,sp,-64
    13a4:	fc06                	sd	ra,56(sp)
    13a6:	f822                	sd	s0,48(sp)
    13a8:	f426                	sd	s1,40(sp)
    13aa:	f04a                	sd	s2,32(sp)
    13ac:	ec4e                	sd	s3,24(sp)
    13ae:	e852                	sd	s4,16(sp)
    13b0:	c62a                	sw	a0,12(sp)
    13b2:	000037b7          	lui	a5,0x3
    13b6:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13ba:	eca5                	bnez	s1,1432 <random_init+0x90>
    13bc:	00003737          	lui	a4,0x3
    13c0:	01070913          	addi	s2,a4,16 # 3010 <s>
    13c4:	01070713          	addi	a4,a4,16
    13c8:	87a6                	mv	a5,s1
    13ca:	10000693          	li	a3,256
    13ce:	00f70023          	sb	a5,0(a4)
    13d2:	2785                	addiw	a5,a5,1
    13d4:	0705                	addi	a4,a4,1
    13d6:	fed79ce3          	bne	a5,a3,13ce <random_init+0x2c>
    13da:	4401                	li	s0,0
    13dc:	000039b7          	lui	s3,0x3
    13e0:	01098993          	addi	s3,s3,16 # 3010 <s>
    13e4:	10000a13          	li	s4,256
    13e8:	0034f793          	andi	a5,s1,3
    13ec:	0818                	addi	a4,sp,16
    13ee:	97ba                	add	a5,a5,a4
    13f0:	ffc7c783          	lbu	a5,-4(a5)
    13f4:	00094703          	lbu	a4,0(s2)
    13f8:	9fb9                	addw	a5,a5,a4
    13fa:	9c3d                	addw	s0,s0,a5
    13fc:	0ff47413          	andi	s0,s0,255
    1400:	4605                	li	a2,1
    1402:	008985b3          	add	a1,s3,s0
    1406:	854a                	mv	a0,s2
    1408:	00000097          	auipc	ra,0x0
    140c:	f7a080e7          	jalr	-134(ra) # 1382 <swap_bytes>
    1410:	2485                	addiw	s1,s1,1
    1412:	0905                	addi	s2,s2,1
    1414:	fd449ae3          	bne	s1,s4,13e8 <random_init+0x46>
    1418:	000037b7          	lui	a5,0x3
    141c:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1420:	000037b7          	lui	a5,0x3
    1424:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1428:	000037b7          	lui	a5,0x3
    142c:	4705                	li	a4,1
    142e:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1432:	70e2                	ld	ra,56(sp)
    1434:	7442                	ld	s0,48(sp)
    1436:	74a2                	ld	s1,40(sp)
    1438:	7902                	ld	s2,32(sp)
    143a:	69e2                	ld	s3,24(sp)
    143c:	6a42                	ld	s4,16(sp)
    143e:	6121                	addi	sp,sp,64
    1440:	8082                	ret

0000000000001442 <random_bytes>:
    1442:	7139                	addi	sp,sp,-64
    1444:	fc06                	sd	ra,56(sp)
    1446:	f822                	sd	s0,48(sp)
    1448:	f426                	sd	s1,40(sp)
    144a:	f04a                	sd	s2,32(sp)
    144c:	ec4e                	sd	s3,24(sp)
    144e:	e852                	sd	s4,16(sp)
    1450:	e456                	sd	s5,8(sp)
    1452:	e05a                	sd	s6,0(sp)
    1454:	892a                	mv	s2,a0
    1456:	8aae                	mv	s5,a1
    1458:	000037b7          	lui	a5,0x3
    145c:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1460:	c3c1                	beqz	a5,14e0 <random_bytes+0x9e>
    1462:	060a8563          	beqz	s5,14cc <random_bytes+0x8a>
    1466:	9aca                	add	s5,s5,s2
    1468:	00003a37          	lui	s4,0x3
    146c:	000034b7          	lui	s1,0x3
    1470:	01048493          	addi	s1,s1,16 # 3010 <s>
    1474:	000039b7          	lui	s3,0x3
    1478:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    147c:	2505                	addiw	a0,a0,1
    147e:	0ff57513          	andi	a0,a0,255
    1482:	00aa02a3          	sb	a0,5(s4)
    1486:	00a48b33          	add	s6,s1,a0
    148a:	000b4403          	lbu	s0,0(s6)
    148e:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1492:	9c3d                	addw	s0,s0,a5
    1494:	0ff47413          	andi	s0,s0,255
    1498:	00898223          	sb	s0,4(s3)
    149c:	4605                	li	a2,1
    149e:	008485b3          	add	a1,s1,s0
    14a2:	855a                	mv	a0,s6
    14a4:	00000097          	auipc	ra,0x0
    14a8:	ede080e7          	jalr	-290(ra) # 1382 <swap_bytes>
    14ac:	9426                	add	s0,s0,s1
    14ae:	000b4783          	lbu	a5,0(s6)
    14b2:	00044703          	lbu	a4,0(s0)
    14b6:	9fb9                	addw	a5,a5,a4
    14b8:	0ff7f793          	andi	a5,a5,255
    14bc:	97a6                	add	a5,a5,s1
    14be:	0007c783          	lbu	a5,0(a5)
    14c2:	00f90023          	sb	a5,0(s2)
    14c6:	0905                	addi	s2,s2,1
    14c8:	fb2a98e3          	bne	s5,s2,1478 <random_bytes+0x36>
    14cc:	70e2                	ld	ra,56(sp)
    14ce:	7442                	ld	s0,48(sp)
    14d0:	74a2                	ld	s1,40(sp)
    14d2:	7902                	ld	s2,32(sp)
    14d4:	69e2                	ld	s3,24(sp)
    14d6:	6a42                	ld	s4,16(sp)
    14d8:	6aa2                	ld	s5,8(sp)
    14da:	6b02                	ld	s6,0(sp)
    14dc:	6121                	addi	sp,sp,64
    14de:	8082                	ret
    14e0:	4501                	li	a0,0
    14e2:	00000097          	auipc	ra,0x0
    14e6:	ec0080e7          	jalr	-320(ra) # 13a2 <random_init>
    14ea:	bfa5                	j	1462 <random_bytes+0x20>

00000000000014ec <random_ulong>:
    14ec:	1101                	addi	sp,sp,-32
    14ee:	ec06                	sd	ra,24(sp)
    14f0:	45a1                	li	a1,8
    14f2:	0028                	addi	a0,sp,8
    14f4:	00000097          	auipc	ra,0x0
    14f8:	f4e080e7          	jalr	-178(ra) # 1442 <random_bytes>
    14fc:	6522                	ld	a0,8(sp)
    14fe:	60e2                	ld	ra,24(sp)
    1500:	6105                	addi	sp,sp,32
    1502:	8082                	ret

0000000000001504 <shuffle>:
    1504:	c9b9                	beqz	a1,155a <shuffle+0x56>
    1506:	7179                	addi	sp,sp,-48
    1508:	f406                	sd	ra,40(sp)
    150a:	f022                	sd	s0,32(sp)
    150c:	ec26                	sd	s1,24(sp)
    150e:	e84a                	sd	s2,16(sp)
    1510:	e44e                	sd	s3,8(sp)
    1512:	e052                	sd	s4,0(sp)
    1514:	8a2a                	mv	s4,a0
    1516:	89ae                	mv	s3,a1
    1518:	84b2                	mv	s1,a2
    151a:	892a                	mv	s2,a0
    151c:	4401                	li	s0,0
    151e:	00000097          	auipc	ra,0x0
    1522:	fce080e7          	jalr	-50(ra) # 14ec <random_ulong>
    1526:	408985b3          	sub	a1,s3,s0
    152a:	02b575b3          	remu	a1,a0,a1
    152e:	95a2                	add	a1,a1,s0
    1530:	029585b3          	mul	a1,a1,s1
    1534:	8626                	mv	a2,s1
    1536:	95d2                	add	a1,a1,s4
    1538:	854a                	mv	a0,s2
    153a:	00000097          	auipc	ra,0x0
    153e:	e48080e7          	jalr	-440(ra) # 1382 <swap_bytes>
    1542:	0405                	addi	s0,s0,1
    1544:	9926                	add	s2,s2,s1
    1546:	fc899ce3          	bne	s3,s0,151e <shuffle+0x1a>
    154a:	70a2                	ld	ra,40(sp)
    154c:	7402                	ld	s0,32(sp)
    154e:	64e2                	ld	s1,24(sp)
    1550:	6942                	ld	s2,16(sp)
    1552:	69a2                	ld	s3,8(sp)
    1554:	6a02                	ld	s4,0(sp)
    1556:	6145                	addi	sp,sp,48
    1558:	8082                	ret
    155a:	8082                	ret

000000000000155c <arc4_init>:
    155c:	100500a3          	sb	zero,257(a0)
    1560:	10050023          	sb	zero,256(a0)
    1564:	4781                	li	a5,0
    1566:	10000693          	li	a3,256
    156a:	00f50733          	add	a4,a0,a5
    156e:	00f70023          	sb	a5,0(a4)
    1572:	0785                	addi	a5,a5,1
    1574:	fed79be3          	bne	a5,a3,156a <arc4_init+0xe>
    1578:	86aa                	mv	a3,a0
    157a:	10050e13          	addi	t3,a0,256
    157e:	4701                	li	a4,0
    1580:	4781                	li	a5,0
    1582:	0006c883          	lbu	a7,0(a3)
    1586:	00f58833          	add	a6,a1,a5
    158a:	00084803          	lbu	a6,0(a6)
    158e:	00e8873b          	addw	a4,a7,a4
    1592:	00e8073b          	addw	a4,a6,a4
    1596:	0ff77713          	andi	a4,a4,255
    159a:	00e50833          	add	a6,a0,a4
    159e:	00084303          	lbu	t1,0(a6)
    15a2:	00668023          	sb	t1,0(a3)
    15a6:	01180023          	sb	a7,0(a6)
    15aa:	0785                	addi	a5,a5,1
    15ac:	00c7b833          	sltu	a6,a5,a2
    15b0:	41000833          	neg	a6,a6
    15b4:	0107f7b3          	and	a5,a5,a6
    15b8:	0685                	addi	a3,a3,1
    15ba:	fdc694e3          	bne	a3,t3,1582 <arc4_init+0x26>
    15be:	8082                	ret

00000000000015c0 <arc4_crypt>:
    15c0:	10054e03          	lbu	t3,256(a0)
    15c4:	10154803          	lbu	a6,257(a0)
    15c8:	fff60e93          	addi	t4,a2,-1
    15cc:	c225                	beqz	a2,162c <arc4_crypt+0x6c>
    15ce:	00c588b3          	add	a7,a1,a2
    15d2:	86ae                	mv	a3,a1
    15d4:	001e031b          	addiw	t1,t3,1
    15d8:	40b3033b          	subw	t1,t1,a1
    15dc:	00d3073b          	addw	a4,t1,a3
    15e0:	0ff77713          	andi	a4,a4,255
    15e4:	972a                	add	a4,a4,a0
    15e6:	00074603          	lbu	a2,0(a4)
    15ea:	0106083b          	addw	a6,a2,a6
    15ee:	0ff87813          	andi	a6,a6,255
    15f2:	010507b3          	add	a5,a0,a6
    15f6:	0007c583          	lbu	a1,0(a5)
    15fa:	00b70023          	sb	a1,0(a4)
    15fe:	00c78023          	sb	a2,0(a5)
    1602:	0685                	addi	a3,a3,1
    1604:	00074783          	lbu	a5,0(a4)
    1608:	9fb1                	addw	a5,a5,a2
    160a:	0ff7f793          	andi	a5,a5,255
    160e:	97aa                	add	a5,a5,a0
    1610:	0007c783          	lbu	a5,0(a5)
    1614:	fff6c703          	lbu	a4,-1(a3)
    1618:	8fb9                	xor	a5,a5,a4
    161a:	fef68fa3          	sb	a5,-1(a3)
    161e:	fb169fe3          	bne	a3,a7,15dc <arc4_crypt+0x1c>
    1622:	2e85                	addiw	t4,t4,1
    1624:	01ce8e3b          	addw	t3,t4,t3
    1628:	0ffe7e13          	andi	t3,t3,255
    162c:	11c50023          	sb	t3,256(a0)
    1630:	110500a3          	sb	a6,257(a0)
    1634:	8082                	ret

0000000000001636 <_main>:
    1636:	1141                	addi	sp,sp,-16
    1638:	e406                	sd	ra,8(sp)
    163a:	00000097          	auipc	ra,0x0
    163e:	9c6080e7          	jalr	-1594(ra) # 1000 <main>
    1642:	4501                	li	a0,0
    1644:	00000097          	auipc	ra,0x0
    1648:	578080e7          	jalr	1400(ra) # 1bbc <exit>
    164c:	60a2                	ld	ra,8(sp)
    164e:	0141                	addi	sp,sp,16
    1650:	8082                	ret

0000000000001652 <strcmp>:
    1652:	00054783          	lbu	a5,0(a0)
    1656:	cb91                	beqz	a5,166a <strcmp+0x18>
    1658:	0005c703          	lbu	a4,0(a1)
    165c:	00f71763          	bne	a4,a5,166a <strcmp+0x18>
    1660:	0505                	addi	a0,a0,1
    1662:	0585                	addi	a1,a1,1
    1664:	00054783          	lbu	a5,0(a0)
    1668:	fbe5                	bnez	a5,1658 <strcmp+0x6>
    166a:	0005c503          	lbu	a0,0(a1)
    166e:	40a7853b          	subw	a0,a5,a0
    1672:	8082                	ret

0000000000001674 <strcpy>:
    1674:	87aa                	mv	a5,a0
    1676:	0585                	addi	a1,a1,1
    1678:	0785                	addi	a5,a5,1
    167a:	fff5c703          	lbu	a4,-1(a1)
    167e:	fee78fa3          	sb	a4,-1(a5)
    1682:	fb75                	bnez	a4,1676 <strcpy+0x2>
    1684:	8082                	ret

0000000000001686 <strlen>:
    1686:	00054783          	lbu	a5,0(a0)
    168a:	cf81                	beqz	a5,16a2 <strlen+0x1c>
    168c:	0505                	addi	a0,a0,1
    168e:	87aa                	mv	a5,a0
    1690:	4685                	li	a3,1
    1692:	9e89                	subw	a3,a3,a0
    1694:	00f6853b          	addw	a0,a3,a5
    1698:	0785                	addi	a5,a5,1
    169a:	fff7c703          	lbu	a4,-1(a5)
    169e:	fb7d                	bnez	a4,1694 <strlen+0xe>
    16a0:	8082                	ret
    16a2:	4501                	li	a0,0
    16a4:	8082                	ret

00000000000016a6 <memset>:
    16a6:	ca19                	beqz	a2,16bc <memset+0x16>
    16a8:	87aa                	mv	a5,a0
    16aa:	1602                	slli	a2,a2,0x20
    16ac:	9201                	srli	a2,a2,0x20
    16ae:	00a60733          	add	a4,a2,a0
    16b2:	00b78023          	sb	a1,0(a5)
    16b6:	0785                	addi	a5,a5,1
    16b8:	fee79de3          	bne	a5,a4,16b2 <memset+0xc>
    16bc:	8082                	ret

00000000000016be <memcmp>:
    16be:	1101                	addi	sp,sp,-32
    16c0:	ec06                	sd	ra,24(sp)
    16c2:	e822                	sd	s0,16(sp)
    16c4:	e426                	sd	s1,8(sp)
    16c6:	e04a                	sd	s2,0(sp)
    16c8:	892a                	mv	s2,a0
    16ca:	842e                	mv	s0,a1
    16cc:	84b2                	mv	s1,a2
    16ce:	c915                	beqz	a0,1702 <memcmp+0x44>
    16d0:	c5ad                	beqz	a1,173a <memcmp+0x7c>
    16d2:	fff60713          	addi	a4,a2,-1
    16d6:	c645                	beqz	a2,177e <memcmp+0xc0>
    16d8:	87ca                	mv	a5,s2
    16da:	00190613          	addi	a2,s2,1
    16de:	963a                	add	a2,a2,a4
    16e0:	0007c683          	lbu	a3,0(a5)
    16e4:	00044703          	lbu	a4,0(s0)
    16e8:	08e69463          	bne	a3,a4,1770 <memcmp+0xb2>
    16ec:	0785                	addi	a5,a5,1
    16ee:	0405                	addi	s0,s0,1
    16f0:	fec798e3          	bne	a5,a2,16e0 <memcmp+0x22>
    16f4:	4501                	li	a0,0
    16f6:	60e2                	ld	ra,24(sp)
    16f8:	6442                	ld	s0,16(sp)
    16fa:	64a2                	ld	s1,8(sp)
    16fc:	6902                	ld	s2,0(sp)
    16fe:	6105                	addi	sp,sp,32
    1700:	8082                	ret
    1702:	4501                	li	a0,0
    1704:	da6d                	beqz	a2,16f6 <memcmp+0x38>
    1706:	03200693          	li	a3,50
    170a:	00002637          	lui	a2,0x2
    170e:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1712:	000025b7          	lui	a1,0x2
    1716:	10058593          	addi	a1,a1,256 # 2100 <crctab+0x410>
    171a:	4509                	li	a0,2
    171c:	00000097          	auipc	ra,0x0
    1720:	bbc080e7          	jalr	-1092(ra) # 12d8 <fprintf>
    1724:	650d                	lui	a0,0x3
    1726:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    172a:	00000097          	auipc	ra,0x0
    172e:	492080e7          	jalr	1170(ra) # 1bbc <exit>
    1732:	fff48713          	addi	a4,s1,-1
    1736:	f04d                	bnez	s0,16d8 <memcmp+0x1a>
    1738:	a011                	j	173c <memcmp+0x7e>
    173a:	c221                	beqz	a2,177a <memcmp+0xbc>
    173c:	03300693          	li	a3,51
    1740:	00002637          	lui	a2,0x2
    1744:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1748:	000025b7          	lui	a1,0x2
    174c:	14858593          	addi	a1,a1,328 # 2148 <crctab+0x458>
    1750:	4509                	li	a0,2
    1752:	00000097          	auipc	ra,0x0
    1756:	b86080e7          	jalr	-1146(ra) # 12d8 <fprintf>
    175a:	650d                	lui	a0,0x3
    175c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1760:	00000097          	auipc	ra,0x0
    1764:	45c080e7          	jalr	1116(ra) # 1bbc <exit>
    1768:	fff48713          	addi	a4,s1,-1
    176c:	4401                	li	s0,0
    176e:	b7ad                	j	16d8 <memcmp+0x1a>
    1770:	4505                	li	a0,1
    1772:	f8d762e3          	bltu	a4,a3,16f6 <memcmp+0x38>
    1776:	557d                	li	a0,-1
    1778:	bfbd                	j	16f6 <memcmp+0x38>
    177a:	4501                	li	a0,0
    177c:	bfad                	j	16f6 <memcmp+0x38>
    177e:	4501                	li	a0,0
    1780:	bf9d                	j	16f6 <memcmp+0x38>

0000000000001782 <memcpy>:
    1782:	1101                	addi	sp,sp,-32
    1784:	ec06                	sd	ra,24(sp)
    1786:	e822                	sd	s0,16(sp)
    1788:	e426                	sd	s1,8(sp)
    178a:	e04a                	sd	s2,0(sp)
    178c:	84aa                	mv	s1,a0
    178e:	842e                	mv	s0,a1
    1790:	8932                	mv	s2,a2
    1792:	c51d                	beqz	a0,17c0 <memcpy+0x3e>
    1794:	c1ad                	beqz	a1,17f6 <memcpy+0x74>
    1796:	fff60693          	addi	a3,a2,-1
    179a:	ce01                	beqz	a2,17b2 <memcpy+0x30>
    179c:	0685                	addi	a3,a3,1
    179e:	96a6                	add	a3,a3,s1
    17a0:	87a6                	mv	a5,s1
    17a2:	0405                	addi	s0,s0,1
    17a4:	0785                	addi	a5,a5,1
    17a6:	fff44703          	lbu	a4,-1(s0)
    17aa:	fee78fa3          	sb	a4,-1(a5)
    17ae:	fed79ae3          	bne	a5,a3,17a2 <memcpy+0x20>
    17b2:	8526                	mv	a0,s1
    17b4:	60e2                	ld	ra,24(sp)
    17b6:	6442                	ld	s0,16(sp)
    17b8:	64a2                	ld	s1,8(sp)
    17ba:	6902                	ld	s2,0(sp)
    17bc:	6105                	addi	sp,sp,32
    17be:	8082                	ret
    17c0:	da6d                	beqz	a2,17b2 <memcpy+0x30>
    17c2:	04000693          	li	a3,64
    17c6:	00002637          	lui	a2,0x2
    17ca:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    17ce:	000025b7          	lui	a1,0x2
    17d2:	19058593          	addi	a1,a1,400 # 2190 <crctab+0x4a0>
    17d6:	4509                	li	a0,2
    17d8:	00000097          	auipc	ra,0x0
    17dc:	b00080e7          	jalr	-1280(ra) # 12d8 <fprintf>
    17e0:	650d                	lui	a0,0x3
    17e2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17e6:	00000097          	auipc	ra,0x0
    17ea:	3d6080e7          	jalr	982(ra) # 1bbc <exit>
    17ee:	fff90693          	addi	a3,s2,-1
    17f2:	f44d                	bnez	s0,179c <memcpy+0x1a>
    17f4:	a011                	j	17f8 <memcpy+0x76>
    17f6:	de55                	beqz	a2,17b2 <memcpy+0x30>
    17f8:	04100693          	li	a3,65
    17fc:	00002637          	lui	a2,0x2
    1800:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1804:	000025b7          	lui	a1,0x2
    1808:	1d858593          	addi	a1,a1,472 # 21d8 <crctab+0x4e8>
    180c:	4509                	li	a0,2
    180e:	00000097          	auipc	ra,0x0
    1812:	aca080e7          	jalr	-1334(ra) # 12d8 <fprintf>
    1816:	650d                	lui	a0,0x3
    1818:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    181c:	00000097          	auipc	ra,0x0
    1820:	3a0080e7          	jalr	928(ra) # 1bbc <exit>
    1824:	fff90693          	addi	a3,s2,-1
    1828:	4401                	li	s0,0
    182a:	bf8d                	j	179c <memcpy+0x1a>

000000000000182c <itoa>:
    182c:	1101                	addi	sp,sp,-32
    182e:	ec06                	sd	ra,24(sp)
    1830:	e822                	sd	s0,16(sp)
    1832:	e426                	sd	s1,8(sp)
    1834:	842a                	mv	s0,a0
    1836:	41f5d71b          	sraiw	a4,a1,0x1f
    183a:	00e5c7b3          	xor	a5,a1,a4
    183e:	9f99                	subw	a5,a5,a4
    1840:	84aa                	mv	s1,a0
    1842:	862a                	mv	a2,a0
    1844:	4681                	li	a3,0
    1846:	4529                	li	a0,10
    1848:	4825                	li	a6,9
    184a:	88b6                	mv	a7,a3
    184c:	2685                	addiw	a3,a3,1
    184e:	02a7e73b          	remw	a4,a5,a0
    1852:	0307071b          	addiw	a4,a4,48
    1856:	00e60023          	sb	a4,0(a2)
    185a:	873e                	mv	a4,a5
    185c:	02a7c7bb          	divw	a5,a5,a0
    1860:	0605                	addi	a2,a2,1
    1862:	fee844e3          	blt	a6,a4,184a <itoa+0x1e>
    1866:	0405c863          	bltz	a1,18b6 <itoa+0x8a>
    186a:	96a2                	add	a3,a3,s0
    186c:	00068023          	sb	zero,0(a3)
    1870:	8522                	mv	a0,s0
    1872:	00000097          	auipc	ra,0x0
    1876:	e14080e7          	jalr	-492(ra) # 1686 <strlen>
    187a:	fff5071b          	addiw	a4,a0,-1
    187e:	02e05763          	blez	a4,18ac <itoa+0x80>
    1882:	9722                	add	a4,a4,s0
    1884:	4681                	li	a3,0
    1886:	0004c783          	lbu	a5,0(s1)
    188a:	00074603          	lbu	a2,0(a4)
    188e:	00c48023          	sb	a2,0(s1)
    1892:	00f70023          	sb	a5,0(a4)
    1896:	0016879b          	addiw	a5,a3,1
    189a:	0007869b          	sext.w	a3,a5
    189e:	0485                	addi	s1,s1,1
    18a0:	177d                	addi	a4,a4,-1
    18a2:	fff7c793          	not	a5,a5
    18a6:	9fa9                	addw	a5,a5,a0
    18a8:	fcf6cfe3          	blt	a3,a5,1886 <itoa+0x5a>
    18ac:	60e2                	ld	ra,24(sp)
    18ae:	6442                	ld	s0,16(sp)
    18b0:	64a2                	ld	s1,8(sp)
    18b2:	6105                	addi	sp,sp,32
    18b4:	8082                	ret
    18b6:	96a2                	add	a3,a3,s0
    18b8:	02d00793          	li	a5,45
    18bc:	00f68023          	sb	a5,0(a3)
    18c0:	0028869b          	addiw	a3,a7,2
    18c4:	b75d                	j	186a <itoa+0x3e>

00000000000018c6 <atoi>:
    18c6:	00054783          	lbu	a5,0(a0)
    18ca:	02000713          	li	a4,32
    18ce:	00e79763          	bne	a5,a4,18dc <atoi+0x16>
    18d2:	0505                	addi	a0,a0,1
    18d4:	00054783          	lbu	a5,0(a0)
    18d8:	fee78de3          	beq	a5,a4,18d2 <atoi+0xc>
    18dc:	02b00713          	li	a4,43
    18e0:	04e78663          	beq	a5,a4,192c <atoi+0x66>
    18e4:	02d00713          	li	a4,45
    18e8:	4805                	li	a6,1
    18ea:	04e78463          	beq	a5,a4,1932 <atoi+0x6c>
    18ee:	00054683          	lbu	a3,0(a0)
    18f2:	fd06879b          	addiw	a5,a3,-48
    18f6:	0ff7f793          	andi	a5,a5,255
    18fa:	4725                	li	a4,9
    18fc:	02f76e63          	bltu	a4,a5,1938 <atoi+0x72>
    1900:	4601                	li	a2,0
    1902:	45a5                	li	a1,9
    1904:	0505                	addi	a0,a0,1
    1906:	0026179b          	slliw	a5,a2,0x2
    190a:	9fb1                	addw	a5,a5,a2
    190c:	0017979b          	slliw	a5,a5,0x1
    1910:	9fb5                	addw	a5,a5,a3
    1912:	fd07861b          	addiw	a2,a5,-48
    1916:	00054683          	lbu	a3,0(a0)
    191a:	fd06871b          	addiw	a4,a3,-48
    191e:	0ff77713          	andi	a4,a4,255
    1922:	fee5f1e3          	bgeu	a1,a4,1904 <atoi+0x3e>
    1926:	02c8053b          	mulw	a0,a6,a2
    192a:	8082                	ret
    192c:	0505                	addi	a0,a0,1
    192e:	4805                	li	a6,1
    1930:	bf7d                	j	18ee <atoi+0x28>
    1932:	0505                	addi	a0,a0,1
    1934:	587d                	li	a6,-1
    1936:	bf65                	j	18ee <atoi+0x28>
    1938:	4601                	li	a2,0
    193a:	b7f5                	j	1926 <atoi+0x60>

000000000000193c <check_file_handle>:
    193c:	d8010113          	addi	sp,sp,-640
    1940:	26113c23          	sd	ra,632(sp)
    1944:	26813823          	sd	s0,624(sp)
    1948:	26913423          	sd	s1,616(sp)
    194c:	27213023          	sd	s2,608(sp)
    1950:	25313c23          	sd	s3,600(sp)
    1954:	25413823          	sd	s4,592(sp)
    1958:	25513423          	sd	s5,584(sp)
    195c:	25613023          	sd	s6,576(sp)
    1960:	23713c23          	sd	s7,568(sp)
    1964:	23813823          	sd	s8,560(sp)
    1968:	23913423          	sd	s9,552(sp)
    196c:	23a13023          	sd	s10,544(sp)
    1970:	21b13c23          	sd	s11,536(sp)
    1974:	8baa                	mv	s7,a0
    1976:	8a2e                	mv	s4,a1
    1978:	8c32                	mv	s8,a2
    197a:	89b6                	mv	s3,a3
    197c:	040c                	addi	a1,sp,512
    197e:	00000097          	auipc	ra,0x0
    1982:	28e080e7          	jalr	654(ra) # 1c0c <fstat>
    1986:	20813603          	ld	a2,520(sp)
    198a:	03361163          	bne	a2,s3,19ac <check_file_handle+0x70>
    198e:	06098763          	beqz	s3,19fc <check_file_handle+0xc0>
    1992:	4901                	li	s2,0
    1994:	20000a93          	li	s5,512
    1998:	00002cb7          	lui	s9,0x2
    199c:	00002db7          	lui	s11,0x2
    19a0:	6b0d                	lui	s6,0x3
    19a2:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19a6:	00002d37          	lui	s10,0x2
    19aa:	aa39                	j	1ac8 <check_file_handle+0x18c>
    19ac:	86ce                	mv	a3,s3
    19ae:	85d2                	mv	a1,s4
    19b0:	00002537          	lui	a0,0x2
    19b4:	22050513          	addi	a0,a0,544 # 2220 <crctab+0x530>
    19b8:	00000097          	auipc	ra,0x0
    19bc:	942080e7          	jalr	-1726(ra) # 12fa <printf>
    19c0:	fc0999e3          	bnez	s3,1992 <check_file_handle+0x56>
    19c4:	20813683          	ld	a3,520(sp)
    19c8:	03368a63          	beq	a3,s3,19fc <check_file_handle+0xc0>
    19cc:	0a600813          	li	a6,166
    19d0:	000027b7          	lui	a5,0x2
    19d4:	0f078793          	addi	a5,a5,240 # 20f0 <crctab+0x400>
    19d8:	874e                	mv	a4,s3
    19da:	8652                	mv	a2,s4
    19dc:	000025b7          	lui	a1,0x2
    19e0:	2f058593          	addi	a1,a1,752 # 22f0 <crctab+0x600>
    19e4:	4509                	li	a0,2
    19e6:	00000097          	auipc	ra,0x0
    19ea:	8f2080e7          	jalr	-1806(ra) # 12d8 <fprintf>
    19ee:	650d                	lui	a0,0x3
    19f0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19f4:	00000097          	auipc	ra,0x0
    19f8:	1c8080e7          	jalr	456(ra) # 1bbc <exit>
    19fc:	85d2                	mv	a1,s4
    19fe:	00002537          	lui	a0,0x2
    1a02:	33850513          	addi	a0,a0,824 # 2338 <crctab+0x648>
    1a06:	00000097          	auipc	ra,0x0
    1a0a:	8f4080e7          	jalr	-1804(ra) # 12fa <printf>
    1a0e:	27813083          	ld	ra,632(sp)
    1a12:	27013403          	ld	s0,624(sp)
    1a16:	26813483          	ld	s1,616(sp)
    1a1a:	26013903          	ld	s2,608(sp)
    1a1e:	25813983          	ld	s3,600(sp)
    1a22:	25013a03          	ld	s4,592(sp)
    1a26:	24813a83          	ld	s5,584(sp)
    1a2a:	24013b03          	ld	s6,576(sp)
    1a2e:	23813b83          	ld	s7,568(sp)
    1a32:	23013c03          	ld	s8,560(sp)
    1a36:	22813c83          	ld	s9,552(sp)
    1a3a:	22013d03          	ld	s10,544(sp)
    1a3e:	21813d83          	ld	s11,536(sp)
    1a42:	28010113          	addi	sp,sp,640
    1a46:	8082                	ret
    1a48:	09d00893          	li	a7,157
    1a4c:	0f0c8813          	addi	a6,s9,240 # 20f0 <crctab+0x400>
    1a50:	87aa                	mv	a5,a0
    1a52:	8752                	mv	a4,s4
    1a54:	86ca                	mv	a3,s2
    1a56:	8622                	mv	a2,s0
    1a58:	250d8593          	addi	a1,s11,592 # 2250 <crctab+0x560>
    1a5c:	4509                	li	a0,2
    1a5e:	00000097          	auipc	ra,0x0
    1a62:	87a080e7          	jalr	-1926(ra) # 12d8 <fprintf>
    1a66:	855a                	mv	a0,s6
    1a68:	00000097          	auipc	ra,0x0
    1a6c:	154080e7          	jalr	340(ra) # 1bbc <exit>
    1a70:	a89d                	j	1ae6 <check_file_handle+0x1aa>
    1a72:	00160593          	addi	a1,a2,1
    1a76:	0285f163          	bgeu	a1,s0,1a98 <check_file_handle+0x15c>
    1a7a:	00c10733          	add	a4,sp,a2
    1a7e:	00b487b3          	add	a5,s1,a1
    1a82:	00174683          	lbu	a3,1(a4)
    1a86:	0007c783          	lbu	a5,0(a5)
    1a8a:	00f68763          	beq	a3,a5,1a98 <check_file_handle+0x15c>
    1a8e:	0585                	addi	a1,a1,1
    1a90:	0705                	addi	a4,a4,1
    1a92:	feb416e3          	bne	s0,a1,1a7e <check_file_handle+0x142>
    1a96:	85a2                	mv	a1,s0
    1a98:	08100813          	li	a6,129
    1a9c:	0f0c8793          	addi	a5,s9,240
    1aa0:	8752                	mv	a4,s4
    1aa2:	012606b3          	add	a3,a2,s2
    1aa6:	40c58633          	sub	a2,a1,a2
    1aaa:	298d0593          	addi	a1,s10,664 # 2298 <crctab+0x5a8>
    1aae:	4509                	li	a0,2
    1ab0:	00000097          	auipc	ra,0x0
    1ab4:	828080e7          	jalr	-2008(ra) # 12d8 <fprintf>
    1ab8:	855a                	mv	a0,s6
    1aba:	00000097          	auipc	ra,0x0
    1abe:	102080e7          	jalr	258(ra) # 1bbc <exit>
    1ac2:	9922                	add	s2,s2,s0
    1ac4:	f13970e3          	bgeu	s2,s3,19c4 <check_file_handle+0x88>
    1ac8:	41298433          	sub	s0,s3,s2
    1acc:	008af363          	bgeu	s5,s0,1ad2 <check_file_handle+0x196>
    1ad0:	8456                	mv	s0,s5
    1ad2:	0004061b          	sext.w	a2,s0
    1ad6:	858a                	mv	a1,sp
    1ad8:	855e                	mv	a0,s7
    1ada:	00000097          	auipc	ra,0x0
    1ade:	10a080e7          	jalr	266(ra) # 1be4 <read>
    1ae2:	f68513e3          	bne	a0,s0,1a48 <check_file_handle+0x10c>
    1ae6:	012c04b3          	add	s1,s8,s2
    1aea:	8622                	mv	a2,s0
    1aec:	85a6                	mv	a1,s1
    1aee:	850a                	mv	a0,sp
    1af0:	00000097          	auipc	ra,0x0
    1af4:	bce080e7          	jalr	-1074(ra) # 16be <memcmp>
    1af8:	d569                	beqz	a0,1ac2 <check_file_handle+0x186>
    1afa:	03298163          	beq	s3,s2,1b1c <check_file_handle+0x1e0>
    1afe:	870a                	mv	a4,sp
    1b00:	4601                	li	a2,0
    1b02:	00c487b3          	add	a5,s1,a2
    1b06:	00074683          	lbu	a3,0(a4)
    1b0a:	0007c783          	lbu	a5,0(a5)
    1b0e:	f6f692e3          	bne	a3,a5,1a72 <check_file_handle+0x136>
    1b12:	0605                	addi	a2,a2,1
    1b14:	0705                	addi	a4,a4,1
    1b16:	fe8666e3          	bltu	a2,s0,1b02 <check_file_handle+0x1c6>
    1b1a:	bfa1                	j	1a72 <check_file_handle+0x136>
    1b1c:	4601                	li	a2,0
    1b1e:	4585                	li	a1,1
    1b20:	bfa5                	j	1a98 <check_file_handle+0x15c>

0000000000001b22 <check_file>:
    1b22:	7179                	addi	sp,sp,-48
    1b24:	f406                	sd	ra,40(sp)
    1b26:	f022                	sd	s0,32(sp)
    1b28:	ec26                	sd	s1,24(sp)
    1b2a:	e84a                	sd	s2,16(sp)
    1b2c:	e44e                	sd	s3,8(sp)
    1b2e:	84aa                	mv	s1,a0
    1b30:	892e                	mv	s2,a1
    1b32:	89b2                	mv	s3,a2
    1b34:	4581                	li	a1,0
    1b36:	00000097          	auipc	ra,0x0
    1b3a:	0a6080e7          	jalr	166(ra) # 1bdc <open>
    1b3e:	842a                	mv	s0,a0
    1b40:	4789                	li	a5,2
    1b42:	02a7df63          	bge	a5,a0,1b80 <check_file+0x5e>
    1b46:	86ce                	mv	a3,s3
    1b48:	864a                	mv	a2,s2
    1b4a:	85a6                	mv	a1,s1
    1b4c:	8522                	mv	a0,s0
    1b4e:	00000097          	auipc	ra,0x0
    1b52:	dee080e7          	jalr	-530(ra) # 193c <check_file_handle>
    1b56:	85a6                	mv	a1,s1
    1b58:	00002537          	lui	a0,0x2
    1b5c:	3c050513          	addi	a0,a0,960 # 23c0 <crctab+0x6d0>
    1b60:	fffff097          	auipc	ra,0xfffff
    1b64:	79a080e7          	jalr	1946(ra) # 12fa <printf>
    1b68:	8522                	mv	a0,s0
    1b6a:	00000097          	auipc	ra,0x0
    1b6e:	09a080e7          	jalr	154(ra) # 1c04 <close>
    1b72:	70a2                	ld	ra,40(sp)
    1b74:	7402                	ld	s0,32(sp)
    1b76:	64e2                	ld	s1,24(sp)
    1b78:	6942                	ld	s2,16(sp)
    1b7a:	69a2                	ld	s3,8(sp)
    1b7c:	6145                	addi	sp,sp,48
    1b7e:	8082                	ret
    1b80:	0ae00713          	li	a4,174
    1b84:	000026b7          	lui	a3,0x2
    1b88:	0f068693          	addi	a3,a3,240 # 20f0 <crctab+0x400>
    1b8c:	8626                	mv	a2,s1
    1b8e:	000025b7          	lui	a1,0x2
    1b92:	35858593          	addi	a1,a1,856 # 2358 <crctab+0x668>
    1b96:	4509                	li	a0,2
    1b98:	fffff097          	auipc	ra,0xfffff
    1b9c:	740080e7          	jalr	1856(ra) # 12d8 <fprintf>
    1ba0:	650d                	lui	a0,0x3
    1ba2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1ba6:	00000097          	auipc	ra,0x0
    1baa:	016080e7          	jalr	22(ra) # 1bbc <exit>
    1bae:	bf61                	j	1b46 <check_file+0x24>

0000000000001bb0 <r_sp>:
    1bb0:	850a                	mv	a0,sp
    1bb2:	8082                	ret

0000000000001bb4 <halt>:
    1bb4:	4885                	li	a7,1
    1bb6:	00000073          	ecall
    1bba:	8082                	ret

0000000000001bbc <exit>:
    1bbc:	4889                	li	a7,2
    1bbe:	00000073          	ecall
    1bc2:	8082                	ret

0000000000001bc4 <exec>:
    1bc4:	488d                	li	a7,3
    1bc6:	00000073          	ecall
    1bca:	8082                	ret

0000000000001bcc <wait>:
    1bcc:	4891                	li	a7,4
    1bce:	00000073          	ecall
    1bd2:	8082                	ret

0000000000001bd4 <remove>:
    1bd4:	4895                	li	a7,5
    1bd6:	00000073          	ecall
    1bda:	8082                	ret

0000000000001bdc <open>:
    1bdc:	4899                	li	a7,6
    1bde:	00000073          	ecall
    1be2:	8082                	ret

0000000000001be4 <read>:
    1be4:	489d                	li	a7,7
    1be6:	00000073          	ecall
    1bea:	8082                	ret

0000000000001bec <write>:
    1bec:	48a1                	li	a7,8
    1bee:	00000073          	ecall
    1bf2:	8082                	ret

0000000000001bf4 <seek>:
    1bf4:	48a5                	li	a7,9
    1bf6:	00000073          	ecall
    1bfa:	8082                	ret

0000000000001bfc <tell>:
    1bfc:	48a9                	li	a7,10
    1bfe:	00000073          	ecall
    1c02:	8082                	ret

0000000000001c04 <close>:
    1c04:	48ad                	li	a7,11
    1c06:	00000073          	ecall
    1c0a:	8082                	ret

0000000000001c0c <fstat>:
    1c0c:	48b1                	li	a7,12
    1c0e:	00000073          	ecall
    1c12:	8082                	ret

0000000000001c14 <mmap>:
    1c14:	48b5                	li	a7,13
    1c16:	00000073          	ecall
    1c1a:	8082                	ret

0000000000001c1c <munmap>:
    1c1c:	48b9                	li	a7,14
    1c1e:	00000073          	ecall
    1c22:	8082                	ret

0000000000001c24 <chdir>:
    1c24:	48bd                	li	a7,15
    1c26:	00000073          	ecall
    1c2a:	8082                	ret

0000000000001c2c <mkdir>:
    1c2c:	48c1                	li	a7,16
    1c2e:	00000073          	ecall
    1c32:	8082                	ret
