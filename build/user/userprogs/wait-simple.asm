
build/user/userprogs/wait-simple:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	00002537          	lui	a0,0x2
    1008:	c5050793          	addi	a5,a0,-944 # 1c50 <mkdir+0x12>
    100c:	e03e                	sd	a5,0(sp)
    100e:	e402                	sd	zero,8(sp)
    1010:	858a                	mv	a1,sp
    1012:	c5050513          	addi	a0,a0,-944
    1016:	00001097          	auipc	ra,0x1
    101a:	bc0080e7          	jalr	-1088(ra) # 1bd6 <exec>
    101e:	00001097          	auipc	ra,0x1
    1022:	bc0080e7          	jalr	-1088(ra) # 1bde <wait>
    1026:	05100793          	li	a5,81
    102a:	00f51563          	bne	a0,a5,1034 <main+0x34>
    102e:	60e2                	ld	ra,24(sp)
    1030:	6105                	addi	sp,sp,32
    1032:	8082                	ret
    1034:	469d                	li	a3,7
    1036:	00002637          	lui	a2,0x2
    103a:	c6060613          	addi	a2,a2,-928 # 1c60 <mkdir+0x22>
    103e:	000025b7          	lui	a1,0x2
    1042:	c8058593          	addi	a1,a1,-896 # 1c80 <mkdir+0x42>
    1046:	4509                	li	a0,2
    1048:	00000097          	auipc	ra,0x0
    104c:	2a2080e7          	jalr	674(ra) # 12ea <fprintf>
    1050:	650d                	lui	a0,0x3
    1052:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1056:	00001097          	auipc	ra,0x1
    105a:	b78080e7          	jalr	-1160(ra) # 1bce <exit>
    105e:	bfc1                	j	102e <main+0x2e>

0000000000001060 <putc>:
    1060:	1101                	addi	sp,sp,-32
    1062:	ec06                	sd	ra,24(sp)
    1064:	00b107a3          	sb	a1,15(sp)
    1068:	4605                	li	a2,1
    106a:	00f10593          	addi	a1,sp,15
    106e:	00001097          	auipc	ra,0x1
    1072:	b90080e7          	jalr	-1136(ra) # 1bfe <write>
    1076:	60e2                	ld	ra,24(sp)
    1078:	6105                	addi	sp,sp,32
    107a:	8082                	ret

000000000000107c <printint>:
    107c:	7179                	addi	sp,sp,-48
    107e:	f406                	sd	ra,40(sp)
    1080:	f022                	sd	s0,32(sp)
    1082:	ec26                	sd	s1,24(sp)
    1084:	e84a                	sd	s2,16(sp)
    1086:	84aa                	mv	s1,a0
    1088:	c299                	beqz	a3,108e <printint+0x12>
    108a:	0805c363          	bltz	a1,1110 <printint+0x94>
    108e:	2581                	sext.w	a1,a1
    1090:	4881                	li	a7,0
    1092:	868a                	mv	a3,sp
    1094:	4701                	li	a4,0
    1096:	2601                	sext.w	a2,a2
    1098:	00002537          	lui	a0,0x2
    109c:	cd850513          	addi	a0,a0,-808 # 1cd8 <digits>
    10a0:	883a                	mv	a6,a4
    10a2:	2705                	addiw	a4,a4,1
    10a4:	02c5f7bb          	remuw	a5,a1,a2
    10a8:	1782                	slli	a5,a5,0x20
    10aa:	9381                	srli	a5,a5,0x20
    10ac:	97aa                	add	a5,a5,a0
    10ae:	0007c783          	lbu	a5,0(a5)
    10b2:	00f68023          	sb	a5,0(a3)
    10b6:	0005879b          	sext.w	a5,a1
    10ba:	02c5d5bb          	divuw	a1,a1,a2
    10be:	0685                	addi	a3,a3,1
    10c0:	fec7f0e3          	bgeu	a5,a2,10a0 <printint+0x24>
    10c4:	00088a63          	beqz	a7,10d8 <printint+0x5c>
    10c8:	081c                	addi	a5,sp,16
    10ca:	973e                	add	a4,a4,a5
    10cc:	02d00793          	li	a5,45
    10d0:	fef70823          	sb	a5,-16(a4)
    10d4:	0028071b          	addiw	a4,a6,2
    10d8:	02e05663          	blez	a4,1104 <printint+0x88>
    10dc:	00e10433          	add	s0,sp,a4
    10e0:	fff10913          	addi	s2,sp,-1
    10e4:	993a                	add	s2,s2,a4
    10e6:	377d                	addiw	a4,a4,-1
    10e8:	1702                	slli	a4,a4,0x20
    10ea:	9301                	srli	a4,a4,0x20
    10ec:	40e90933          	sub	s2,s2,a4
    10f0:	fff44583          	lbu	a1,-1(s0)
    10f4:	8526                	mv	a0,s1
    10f6:	00000097          	auipc	ra,0x0
    10fa:	f6a080e7          	jalr	-150(ra) # 1060 <putc>
    10fe:	147d                	addi	s0,s0,-1
    1100:	ff2418e3          	bne	s0,s2,10f0 <printint+0x74>
    1104:	70a2                	ld	ra,40(sp)
    1106:	7402                	ld	s0,32(sp)
    1108:	64e2                	ld	s1,24(sp)
    110a:	6942                	ld	s2,16(sp)
    110c:	6145                	addi	sp,sp,48
    110e:	8082                	ret
    1110:	40b005bb          	negw	a1,a1
    1114:	4885                	li	a7,1
    1116:	bfb5                	j	1092 <printint+0x16>

0000000000001118 <vprintf>:
    1118:	7159                	addi	sp,sp,-112
    111a:	f486                	sd	ra,104(sp)
    111c:	f0a2                	sd	s0,96(sp)
    111e:	eca6                	sd	s1,88(sp)
    1120:	e8ca                	sd	s2,80(sp)
    1122:	e4ce                	sd	s3,72(sp)
    1124:	e0d2                	sd	s4,64(sp)
    1126:	fc56                	sd	s5,56(sp)
    1128:	f85a                	sd	s6,48(sp)
    112a:	f45e                	sd	s7,40(sp)
    112c:	f062                	sd	s8,32(sp)
    112e:	ec66                	sd	s9,24(sp)
    1130:	e86a                	sd	s10,16(sp)
    1132:	e46e                	sd	s11,8(sp)
    1134:	0005c483          	lbu	s1,0(a1)
    1138:	18048a63          	beqz	s1,12cc <vprintf+0x1b4>
    113c:	8a2a                	mv	s4,a0
    113e:	8ab2                	mv	s5,a2
    1140:	00158413          	addi	s0,a1,1
    1144:	4901                	li	s2,0
    1146:	02500993          	li	s3,37
    114a:	06400b93          	li	s7,100
    114e:	06c00c13          	li	s8,108
    1152:	07800c93          	li	s9,120
    1156:	07000d13          	li	s10,112
    115a:	00002db7          	lui	s11,0x2
    115e:	00002b37          	lui	s6,0x2
    1162:	cd8b0b13          	addi	s6,s6,-808 # 1cd8 <digits>
    1166:	a839                	j	1184 <vprintf+0x6c>
    1168:	85a6                	mv	a1,s1
    116a:	8552                	mv	a0,s4
    116c:	00000097          	auipc	ra,0x0
    1170:	ef4080e7          	jalr	-268(ra) # 1060 <putc>
    1174:	a019                	j	117a <vprintf+0x62>
    1176:	01390f63          	beq	s2,s3,1194 <vprintf+0x7c>
    117a:	0405                	addi	s0,s0,1
    117c:	fff44483          	lbu	s1,-1(s0)
    1180:	14048663          	beqz	s1,12cc <vprintf+0x1b4>
    1184:	0004879b          	sext.w	a5,s1
    1188:	fe0917e3          	bnez	s2,1176 <vprintf+0x5e>
    118c:	fd379ee3          	bne	a5,s3,1168 <vprintf+0x50>
    1190:	893e                	mv	s2,a5
    1192:	b7e5                	j	117a <vprintf+0x62>
    1194:	05778063          	beq	a5,s7,11d4 <vprintf+0xbc>
    1198:	05878c63          	beq	a5,s8,11f0 <vprintf+0xd8>
    119c:	07978863          	beq	a5,s9,120c <vprintf+0xf4>
    11a0:	09a78463          	beq	a5,s10,1228 <vprintf+0x110>
    11a4:	07300713          	li	a4,115
    11a8:	0ce78263          	beq	a5,a4,126c <vprintf+0x154>
    11ac:	06300713          	li	a4,99
    11b0:	0ee78763          	beq	a5,a4,129e <vprintf+0x186>
    11b4:	11378163          	beq	a5,s3,12b6 <vprintf+0x19e>
    11b8:	85ce                	mv	a1,s3
    11ba:	8552                	mv	a0,s4
    11bc:	00000097          	auipc	ra,0x0
    11c0:	ea4080e7          	jalr	-348(ra) # 1060 <putc>
    11c4:	85a6                	mv	a1,s1
    11c6:	8552                	mv	a0,s4
    11c8:	00000097          	auipc	ra,0x0
    11cc:	e98080e7          	jalr	-360(ra) # 1060 <putc>
    11d0:	4901                	li	s2,0
    11d2:	b765                	j	117a <vprintf+0x62>
    11d4:	008a8493          	addi	s1,s5,8
    11d8:	4685                	li	a3,1
    11da:	4629                	li	a2,10
    11dc:	000aa583          	lw	a1,0(s5)
    11e0:	8552                	mv	a0,s4
    11e2:	00000097          	auipc	ra,0x0
    11e6:	e9a080e7          	jalr	-358(ra) # 107c <printint>
    11ea:	8aa6                	mv	s5,s1
    11ec:	4901                	li	s2,0
    11ee:	b771                	j	117a <vprintf+0x62>
    11f0:	008a8493          	addi	s1,s5,8
    11f4:	4681                	li	a3,0
    11f6:	4629                	li	a2,10
    11f8:	000aa583          	lw	a1,0(s5)
    11fc:	8552                	mv	a0,s4
    11fe:	00000097          	auipc	ra,0x0
    1202:	e7e080e7          	jalr	-386(ra) # 107c <printint>
    1206:	8aa6                	mv	s5,s1
    1208:	4901                	li	s2,0
    120a:	bf85                	j	117a <vprintf+0x62>
    120c:	008a8493          	addi	s1,s5,8
    1210:	4681                	li	a3,0
    1212:	4641                	li	a2,16
    1214:	000aa583          	lw	a1,0(s5)
    1218:	8552                	mv	a0,s4
    121a:	00000097          	auipc	ra,0x0
    121e:	e62080e7          	jalr	-414(ra) # 107c <printint>
    1222:	8aa6                	mv	s5,s1
    1224:	4901                	li	s2,0
    1226:	bf91                	j	117a <vprintf+0x62>
    1228:	008a8913          	addi	s2,s5,8
    122c:	000aba83          	ld	s5,0(s5)
    1230:	03000593          	li	a1,48
    1234:	8552                	mv	a0,s4
    1236:	00000097          	auipc	ra,0x0
    123a:	e2a080e7          	jalr	-470(ra) # 1060 <putc>
    123e:	85e6                	mv	a1,s9
    1240:	8552                	mv	a0,s4
    1242:	00000097          	auipc	ra,0x0
    1246:	e1e080e7          	jalr	-482(ra) # 1060 <putc>
    124a:	44c1                	li	s1,16
    124c:	03cad793          	srli	a5,s5,0x3c
    1250:	97da                	add	a5,a5,s6
    1252:	0007c583          	lbu	a1,0(a5)
    1256:	8552                	mv	a0,s4
    1258:	00000097          	auipc	ra,0x0
    125c:	e08080e7          	jalr	-504(ra) # 1060 <putc>
    1260:	0a92                	slli	s5,s5,0x4
    1262:	34fd                	addiw	s1,s1,-1
    1264:	f4e5                	bnez	s1,124c <vprintf+0x134>
    1266:	8aca                	mv	s5,s2
    1268:	4901                	li	s2,0
    126a:	bf01                	j	117a <vprintf+0x62>
    126c:	008a8913          	addi	s2,s5,8
    1270:	000ab483          	ld	s1,0(s5)
    1274:	c085                	beqz	s1,1294 <vprintf+0x17c>
    1276:	0004c583          	lbu	a1,0(s1)
    127a:	c5b1                	beqz	a1,12c6 <vprintf+0x1ae>
    127c:	8552                	mv	a0,s4
    127e:	00000097          	auipc	ra,0x0
    1282:	de2080e7          	jalr	-542(ra) # 1060 <putc>
    1286:	0485                	addi	s1,s1,1
    1288:	0004c583          	lbu	a1,0(s1)
    128c:	f9e5                	bnez	a1,127c <vprintf+0x164>
    128e:	8aca                	mv	s5,s2
    1290:	4901                	li	s2,0
    1292:	b5e5                	j	117a <vprintf+0x62>
    1294:	cd0d8493          	addi	s1,s11,-816 # 1cd0 <mkdir+0x92>
    1298:	02800593          	li	a1,40
    129c:	b7c5                	j	127c <vprintf+0x164>
    129e:	008a8493          	addi	s1,s5,8
    12a2:	000ac583          	lbu	a1,0(s5)
    12a6:	8552                	mv	a0,s4
    12a8:	00000097          	auipc	ra,0x0
    12ac:	db8080e7          	jalr	-584(ra) # 1060 <putc>
    12b0:	8aa6                	mv	s5,s1
    12b2:	4901                	li	s2,0
    12b4:	b5d9                	j	117a <vprintf+0x62>
    12b6:	85ce                	mv	a1,s3
    12b8:	8552                	mv	a0,s4
    12ba:	00000097          	auipc	ra,0x0
    12be:	da6080e7          	jalr	-602(ra) # 1060 <putc>
    12c2:	4901                	li	s2,0
    12c4:	bd5d                	j	117a <vprintf+0x62>
    12c6:	8aca                	mv	s5,s2
    12c8:	4901                	li	s2,0
    12ca:	bd45                	j	117a <vprintf+0x62>
    12cc:	70a6                	ld	ra,104(sp)
    12ce:	7406                	ld	s0,96(sp)
    12d0:	64e6                	ld	s1,88(sp)
    12d2:	6946                	ld	s2,80(sp)
    12d4:	69a6                	ld	s3,72(sp)
    12d6:	6a06                	ld	s4,64(sp)
    12d8:	7ae2                	ld	s5,56(sp)
    12da:	7b42                	ld	s6,48(sp)
    12dc:	7ba2                	ld	s7,40(sp)
    12de:	7c02                	ld	s8,32(sp)
    12e0:	6ce2                	ld	s9,24(sp)
    12e2:	6d42                	ld	s10,16(sp)
    12e4:	6da2                	ld	s11,8(sp)
    12e6:	6165                	addi	sp,sp,112
    12e8:	8082                	ret

00000000000012ea <fprintf>:
    12ea:	715d                	addi	sp,sp,-80
    12ec:	ec06                	sd	ra,24(sp)
    12ee:	f032                	sd	a2,32(sp)
    12f0:	f436                	sd	a3,40(sp)
    12f2:	f83a                	sd	a4,48(sp)
    12f4:	fc3e                	sd	a5,56(sp)
    12f6:	e0c2                	sd	a6,64(sp)
    12f8:	e4c6                	sd	a7,72(sp)
    12fa:	1010                	addi	a2,sp,32
    12fc:	e432                	sd	a2,8(sp)
    12fe:	00000097          	auipc	ra,0x0
    1302:	e1a080e7          	jalr	-486(ra) # 1118 <vprintf>
    1306:	60e2                	ld	ra,24(sp)
    1308:	6161                	addi	sp,sp,80
    130a:	8082                	ret

000000000000130c <printf>:
    130c:	711d                	addi	sp,sp,-96
    130e:	ec06                	sd	ra,24(sp)
    1310:	f42e                	sd	a1,40(sp)
    1312:	f832                	sd	a2,48(sp)
    1314:	fc36                	sd	a3,56(sp)
    1316:	e0ba                	sd	a4,64(sp)
    1318:	e4be                	sd	a5,72(sp)
    131a:	e8c2                	sd	a6,80(sp)
    131c:	ecc6                	sd	a7,88(sp)
    131e:	1030                	addi	a2,sp,40
    1320:	e432                	sd	a2,8(sp)
    1322:	85aa                	mv	a1,a0
    1324:	4505                	li	a0,1
    1326:	00000097          	auipc	ra,0x0
    132a:	df2080e7          	jalr	-526(ra) # 1118 <vprintf>
    132e:	60e2                	ld	ra,24(sp)
    1330:	6125                	addi	sp,sp,96
    1332:	8082                	ret

0000000000001334 <cksum>:
    1334:	cdb1                	beqz	a1,1390 <cksum+0x5c>
    1336:	00b50833          	add	a6,a0,a1
    133a:	4781                	li	a5,0
    133c:	00002637          	lui	a2,0x2
    1340:	cf060613          	addi	a2,a2,-784 # 1cf0 <crctab>
    1344:	0505                	addi	a0,a0,1
    1346:	0087969b          	slliw	a3,a5,0x8
    134a:	0187d71b          	srliw	a4,a5,0x18
    134e:	fff54783          	lbu	a5,-1(a0)
    1352:	8f3d                	xor	a4,a4,a5
    1354:	1702                	slli	a4,a4,0x20
    1356:	9301                	srli	a4,a4,0x20
    1358:	070a                	slli	a4,a4,0x2
    135a:	9732                	add	a4,a4,a2
    135c:	431c                	lw	a5,0(a4)
    135e:	8fb5                	xor	a5,a5,a3
    1360:	2781                	sext.w	a5,a5
    1362:	fea811e3          	bne	a6,a0,1344 <cksum+0x10>
    1366:	00002637          	lui	a2,0x2
    136a:	cf060613          	addi	a2,a2,-784 # 1cf0 <crctab>
    136e:	0ff5f693          	andi	a3,a1,255
    1372:	81a1                	srli	a1,a1,0x8
    1374:	0087951b          	slliw	a0,a5,0x8
    1378:	0187d71b          	srliw	a4,a5,0x18
    137c:	8f35                	xor	a4,a4,a3
    137e:	070a                	slli	a4,a4,0x2
    1380:	9732                	add	a4,a4,a2
    1382:	431c                	lw	a5,0(a4)
    1384:	8fa9                	xor	a5,a5,a0
    1386:	2781                	sext.w	a5,a5
    1388:	f1fd                	bnez	a1,136e <cksum+0x3a>
    138a:	fff7c513          	not	a0,a5
    138e:	8082                	ret
    1390:	4781                	li	a5,0
    1392:	bfe5                	j	138a <cksum+0x56>

0000000000001394 <swap_bytes>:
    1394:	ce19                	beqz	a2,13b2 <swap_bytes+0x1e>
    1396:	87aa                	mv	a5,a0
    1398:	962a                	add	a2,a2,a0
    139a:	0007c703          	lbu	a4,0(a5)
    139e:	0005c683          	lbu	a3,0(a1)
    13a2:	00d78023          	sb	a3,0(a5)
    13a6:	00e58023          	sb	a4,0(a1)
    13aa:	0785                	addi	a5,a5,1
    13ac:	0585                	addi	a1,a1,1
    13ae:	fec796e3          	bne	a5,a2,139a <swap_bytes+0x6>
    13b2:	8082                	ret

00000000000013b4 <random_init>:
    13b4:	7139                	addi	sp,sp,-64
    13b6:	fc06                	sd	ra,56(sp)
    13b8:	f822                	sd	s0,48(sp)
    13ba:	f426                	sd	s1,40(sp)
    13bc:	f04a                	sd	s2,32(sp)
    13be:	ec4e                	sd	s3,24(sp)
    13c0:	e852                	sd	s4,16(sp)
    13c2:	c62a                	sw	a0,12(sp)
    13c4:	000037b7          	lui	a5,0x3
    13c8:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13cc:	eca5                	bnez	s1,1444 <random_init+0x90>
    13ce:	00003737          	lui	a4,0x3
    13d2:	01070913          	addi	s2,a4,16 # 3010 <s>
    13d6:	01070713          	addi	a4,a4,16
    13da:	87a6                	mv	a5,s1
    13dc:	10000693          	li	a3,256
    13e0:	00f70023          	sb	a5,0(a4)
    13e4:	2785                	addiw	a5,a5,1
    13e6:	0705                	addi	a4,a4,1
    13e8:	fed79ce3          	bne	a5,a3,13e0 <random_init+0x2c>
    13ec:	4401                	li	s0,0
    13ee:	000039b7          	lui	s3,0x3
    13f2:	01098993          	addi	s3,s3,16 # 3010 <s>
    13f6:	10000a13          	li	s4,256
    13fa:	0034f793          	andi	a5,s1,3
    13fe:	0818                	addi	a4,sp,16
    1400:	97ba                	add	a5,a5,a4
    1402:	ffc7c783          	lbu	a5,-4(a5)
    1406:	00094703          	lbu	a4,0(s2)
    140a:	9fb9                	addw	a5,a5,a4
    140c:	9c3d                	addw	s0,s0,a5
    140e:	0ff47413          	andi	s0,s0,255
    1412:	4605                	li	a2,1
    1414:	008985b3          	add	a1,s3,s0
    1418:	854a                	mv	a0,s2
    141a:	00000097          	auipc	ra,0x0
    141e:	f7a080e7          	jalr	-134(ra) # 1394 <swap_bytes>
    1422:	2485                	addiw	s1,s1,1
    1424:	0905                	addi	s2,s2,1
    1426:	fd449ae3          	bne	s1,s4,13fa <random_init+0x46>
    142a:	000037b7          	lui	a5,0x3
    142e:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1432:	000037b7          	lui	a5,0x3
    1436:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    143a:	000037b7          	lui	a5,0x3
    143e:	4705                	li	a4,1
    1440:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1444:	70e2                	ld	ra,56(sp)
    1446:	7442                	ld	s0,48(sp)
    1448:	74a2                	ld	s1,40(sp)
    144a:	7902                	ld	s2,32(sp)
    144c:	69e2                	ld	s3,24(sp)
    144e:	6a42                	ld	s4,16(sp)
    1450:	6121                	addi	sp,sp,64
    1452:	8082                	ret

0000000000001454 <random_bytes>:
    1454:	7139                	addi	sp,sp,-64
    1456:	fc06                	sd	ra,56(sp)
    1458:	f822                	sd	s0,48(sp)
    145a:	f426                	sd	s1,40(sp)
    145c:	f04a                	sd	s2,32(sp)
    145e:	ec4e                	sd	s3,24(sp)
    1460:	e852                	sd	s4,16(sp)
    1462:	e456                	sd	s5,8(sp)
    1464:	e05a                	sd	s6,0(sp)
    1466:	892a                	mv	s2,a0
    1468:	8aae                	mv	s5,a1
    146a:	000037b7          	lui	a5,0x3
    146e:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1472:	c3c1                	beqz	a5,14f2 <random_bytes+0x9e>
    1474:	060a8563          	beqz	s5,14de <random_bytes+0x8a>
    1478:	9aca                	add	s5,s5,s2
    147a:	00003a37          	lui	s4,0x3
    147e:	000034b7          	lui	s1,0x3
    1482:	01048493          	addi	s1,s1,16 # 3010 <s>
    1486:	000039b7          	lui	s3,0x3
    148a:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    148e:	2505                	addiw	a0,a0,1
    1490:	0ff57513          	andi	a0,a0,255
    1494:	00aa02a3          	sb	a0,5(s4)
    1498:	00a48b33          	add	s6,s1,a0
    149c:	000b4403          	lbu	s0,0(s6)
    14a0:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14a4:	9c3d                	addw	s0,s0,a5
    14a6:	0ff47413          	andi	s0,s0,255
    14aa:	00898223          	sb	s0,4(s3)
    14ae:	4605                	li	a2,1
    14b0:	008485b3          	add	a1,s1,s0
    14b4:	855a                	mv	a0,s6
    14b6:	00000097          	auipc	ra,0x0
    14ba:	ede080e7          	jalr	-290(ra) # 1394 <swap_bytes>
    14be:	9426                	add	s0,s0,s1
    14c0:	000b4783          	lbu	a5,0(s6)
    14c4:	00044703          	lbu	a4,0(s0)
    14c8:	9fb9                	addw	a5,a5,a4
    14ca:	0ff7f793          	andi	a5,a5,255
    14ce:	97a6                	add	a5,a5,s1
    14d0:	0007c783          	lbu	a5,0(a5)
    14d4:	00f90023          	sb	a5,0(s2)
    14d8:	0905                	addi	s2,s2,1
    14da:	fb2a98e3          	bne	s5,s2,148a <random_bytes+0x36>
    14de:	70e2                	ld	ra,56(sp)
    14e0:	7442                	ld	s0,48(sp)
    14e2:	74a2                	ld	s1,40(sp)
    14e4:	7902                	ld	s2,32(sp)
    14e6:	69e2                	ld	s3,24(sp)
    14e8:	6a42                	ld	s4,16(sp)
    14ea:	6aa2                	ld	s5,8(sp)
    14ec:	6b02                	ld	s6,0(sp)
    14ee:	6121                	addi	sp,sp,64
    14f0:	8082                	ret
    14f2:	4501                	li	a0,0
    14f4:	00000097          	auipc	ra,0x0
    14f8:	ec0080e7          	jalr	-320(ra) # 13b4 <random_init>
    14fc:	bfa5                	j	1474 <random_bytes+0x20>

00000000000014fe <random_ulong>:
    14fe:	1101                	addi	sp,sp,-32
    1500:	ec06                	sd	ra,24(sp)
    1502:	45a1                	li	a1,8
    1504:	0028                	addi	a0,sp,8
    1506:	00000097          	auipc	ra,0x0
    150a:	f4e080e7          	jalr	-178(ra) # 1454 <random_bytes>
    150e:	6522                	ld	a0,8(sp)
    1510:	60e2                	ld	ra,24(sp)
    1512:	6105                	addi	sp,sp,32
    1514:	8082                	ret

0000000000001516 <shuffle>:
    1516:	c9b9                	beqz	a1,156c <shuffle+0x56>
    1518:	7179                	addi	sp,sp,-48
    151a:	f406                	sd	ra,40(sp)
    151c:	f022                	sd	s0,32(sp)
    151e:	ec26                	sd	s1,24(sp)
    1520:	e84a                	sd	s2,16(sp)
    1522:	e44e                	sd	s3,8(sp)
    1524:	e052                	sd	s4,0(sp)
    1526:	8a2a                	mv	s4,a0
    1528:	89ae                	mv	s3,a1
    152a:	84b2                	mv	s1,a2
    152c:	892a                	mv	s2,a0
    152e:	4401                	li	s0,0
    1530:	00000097          	auipc	ra,0x0
    1534:	fce080e7          	jalr	-50(ra) # 14fe <random_ulong>
    1538:	408985b3          	sub	a1,s3,s0
    153c:	02b575b3          	remu	a1,a0,a1
    1540:	95a2                	add	a1,a1,s0
    1542:	029585b3          	mul	a1,a1,s1
    1546:	8626                	mv	a2,s1
    1548:	95d2                	add	a1,a1,s4
    154a:	854a                	mv	a0,s2
    154c:	00000097          	auipc	ra,0x0
    1550:	e48080e7          	jalr	-440(ra) # 1394 <swap_bytes>
    1554:	0405                	addi	s0,s0,1
    1556:	9926                	add	s2,s2,s1
    1558:	fc899ce3          	bne	s3,s0,1530 <shuffle+0x1a>
    155c:	70a2                	ld	ra,40(sp)
    155e:	7402                	ld	s0,32(sp)
    1560:	64e2                	ld	s1,24(sp)
    1562:	6942                	ld	s2,16(sp)
    1564:	69a2                	ld	s3,8(sp)
    1566:	6a02                	ld	s4,0(sp)
    1568:	6145                	addi	sp,sp,48
    156a:	8082                	ret
    156c:	8082                	ret

000000000000156e <arc4_init>:
    156e:	100500a3          	sb	zero,257(a0)
    1572:	10050023          	sb	zero,256(a0)
    1576:	4781                	li	a5,0
    1578:	10000693          	li	a3,256
    157c:	00f50733          	add	a4,a0,a5
    1580:	00f70023          	sb	a5,0(a4)
    1584:	0785                	addi	a5,a5,1
    1586:	fed79be3          	bne	a5,a3,157c <arc4_init+0xe>
    158a:	86aa                	mv	a3,a0
    158c:	10050e13          	addi	t3,a0,256
    1590:	4701                	li	a4,0
    1592:	4781                	li	a5,0
    1594:	0006c883          	lbu	a7,0(a3)
    1598:	00f58833          	add	a6,a1,a5
    159c:	00084803          	lbu	a6,0(a6)
    15a0:	00e8873b          	addw	a4,a7,a4
    15a4:	00e8073b          	addw	a4,a6,a4
    15a8:	0ff77713          	andi	a4,a4,255
    15ac:	00e50833          	add	a6,a0,a4
    15b0:	00084303          	lbu	t1,0(a6)
    15b4:	00668023          	sb	t1,0(a3)
    15b8:	01180023          	sb	a7,0(a6)
    15bc:	0785                	addi	a5,a5,1
    15be:	00c7b833          	sltu	a6,a5,a2
    15c2:	41000833          	neg	a6,a6
    15c6:	0107f7b3          	and	a5,a5,a6
    15ca:	0685                	addi	a3,a3,1
    15cc:	fdc694e3          	bne	a3,t3,1594 <arc4_init+0x26>
    15d0:	8082                	ret

00000000000015d2 <arc4_crypt>:
    15d2:	10054e03          	lbu	t3,256(a0)
    15d6:	10154803          	lbu	a6,257(a0)
    15da:	fff60e93          	addi	t4,a2,-1
    15de:	c225                	beqz	a2,163e <arc4_crypt+0x6c>
    15e0:	00c588b3          	add	a7,a1,a2
    15e4:	86ae                	mv	a3,a1
    15e6:	001e031b          	addiw	t1,t3,1
    15ea:	40b3033b          	subw	t1,t1,a1
    15ee:	00d3073b          	addw	a4,t1,a3
    15f2:	0ff77713          	andi	a4,a4,255
    15f6:	972a                	add	a4,a4,a0
    15f8:	00074603          	lbu	a2,0(a4)
    15fc:	0106083b          	addw	a6,a2,a6
    1600:	0ff87813          	andi	a6,a6,255
    1604:	010507b3          	add	a5,a0,a6
    1608:	0007c583          	lbu	a1,0(a5)
    160c:	00b70023          	sb	a1,0(a4)
    1610:	00c78023          	sb	a2,0(a5)
    1614:	0685                	addi	a3,a3,1
    1616:	00074783          	lbu	a5,0(a4)
    161a:	9fb1                	addw	a5,a5,a2
    161c:	0ff7f793          	andi	a5,a5,255
    1620:	97aa                	add	a5,a5,a0
    1622:	0007c783          	lbu	a5,0(a5)
    1626:	fff6c703          	lbu	a4,-1(a3)
    162a:	8fb9                	xor	a5,a5,a4
    162c:	fef68fa3          	sb	a5,-1(a3)
    1630:	fb169fe3          	bne	a3,a7,15ee <arc4_crypt+0x1c>
    1634:	2e85                	addiw	t4,t4,1
    1636:	01ce8e3b          	addw	t3,t4,t3
    163a:	0ffe7e13          	andi	t3,t3,255
    163e:	11c50023          	sb	t3,256(a0)
    1642:	110500a3          	sb	a6,257(a0)
    1646:	8082                	ret

0000000000001648 <_main>:
    1648:	1141                	addi	sp,sp,-16
    164a:	e406                	sd	ra,8(sp)
    164c:	00000097          	auipc	ra,0x0
    1650:	9b4080e7          	jalr	-1612(ra) # 1000 <main>
    1654:	4501                	li	a0,0
    1656:	00000097          	auipc	ra,0x0
    165a:	578080e7          	jalr	1400(ra) # 1bce <exit>
    165e:	60a2                	ld	ra,8(sp)
    1660:	0141                	addi	sp,sp,16
    1662:	8082                	ret

0000000000001664 <strcmp>:
    1664:	00054783          	lbu	a5,0(a0)
    1668:	cb91                	beqz	a5,167c <strcmp+0x18>
    166a:	0005c703          	lbu	a4,0(a1)
    166e:	00f71763          	bne	a4,a5,167c <strcmp+0x18>
    1672:	0505                	addi	a0,a0,1
    1674:	0585                	addi	a1,a1,1
    1676:	00054783          	lbu	a5,0(a0)
    167a:	fbe5                	bnez	a5,166a <strcmp+0x6>
    167c:	0005c503          	lbu	a0,0(a1)
    1680:	40a7853b          	subw	a0,a5,a0
    1684:	8082                	ret

0000000000001686 <strcpy>:
    1686:	87aa                	mv	a5,a0
    1688:	0585                	addi	a1,a1,1
    168a:	0785                	addi	a5,a5,1
    168c:	fff5c703          	lbu	a4,-1(a1)
    1690:	fee78fa3          	sb	a4,-1(a5)
    1694:	fb75                	bnez	a4,1688 <strcpy+0x2>
    1696:	8082                	ret

0000000000001698 <strlen>:
    1698:	00054783          	lbu	a5,0(a0)
    169c:	cf81                	beqz	a5,16b4 <strlen+0x1c>
    169e:	0505                	addi	a0,a0,1
    16a0:	87aa                	mv	a5,a0
    16a2:	4685                	li	a3,1
    16a4:	9e89                	subw	a3,a3,a0
    16a6:	00f6853b          	addw	a0,a3,a5
    16aa:	0785                	addi	a5,a5,1
    16ac:	fff7c703          	lbu	a4,-1(a5)
    16b0:	fb7d                	bnez	a4,16a6 <strlen+0xe>
    16b2:	8082                	ret
    16b4:	4501                	li	a0,0
    16b6:	8082                	ret

00000000000016b8 <memset>:
    16b8:	ca19                	beqz	a2,16ce <memset+0x16>
    16ba:	87aa                	mv	a5,a0
    16bc:	1602                	slli	a2,a2,0x20
    16be:	9201                	srli	a2,a2,0x20
    16c0:	00a60733          	add	a4,a2,a0
    16c4:	00b78023          	sb	a1,0(a5)
    16c8:	0785                	addi	a5,a5,1
    16ca:	fee79de3          	bne	a5,a4,16c4 <memset+0xc>
    16ce:	8082                	ret

00000000000016d0 <memcmp>:
    16d0:	1101                	addi	sp,sp,-32
    16d2:	ec06                	sd	ra,24(sp)
    16d4:	e822                	sd	s0,16(sp)
    16d6:	e426                	sd	s1,8(sp)
    16d8:	e04a                	sd	s2,0(sp)
    16da:	892a                	mv	s2,a0
    16dc:	842e                	mv	s0,a1
    16de:	84b2                	mv	s1,a2
    16e0:	c915                	beqz	a0,1714 <memcmp+0x44>
    16e2:	c5ad                	beqz	a1,174c <memcmp+0x7c>
    16e4:	fff60713          	addi	a4,a2,-1
    16e8:	c645                	beqz	a2,1790 <memcmp+0xc0>
    16ea:	87ca                	mv	a5,s2
    16ec:	00190613          	addi	a2,s2,1
    16f0:	963a                	add	a2,a2,a4
    16f2:	0007c683          	lbu	a3,0(a5)
    16f6:	00044703          	lbu	a4,0(s0)
    16fa:	08e69463          	bne	a3,a4,1782 <memcmp+0xb2>
    16fe:	0785                	addi	a5,a5,1
    1700:	0405                	addi	s0,s0,1
    1702:	fec798e3          	bne	a5,a2,16f2 <memcmp+0x22>
    1706:	4501                	li	a0,0
    1708:	60e2                	ld	ra,24(sp)
    170a:	6442                	ld	s0,16(sp)
    170c:	64a2                	ld	s1,8(sp)
    170e:	6902                	ld	s2,0(sp)
    1710:	6105                	addi	sp,sp,32
    1712:	8082                	ret
    1714:	4501                	li	a0,0
    1716:	da6d                	beqz	a2,1708 <memcmp+0x38>
    1718:	03200693          	li	a3,50
    171c:	00002637          	lui	a2,0x2
    1720:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1724:	000025b7          	lui	a1,0x2
    1728:	10058593          	addi	a1,a1,256 # 2100 <crctab+0x410>
    172c:	4509                	li	a0,2
    172e:	00000097          	auipc	ra,0x0
    1732:	bbc080e7          	jalr	-1092(ra) # 12ea <fprintf>
    1736:	650d                	lui	a0,0x3
    1738:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    173c:	00000097          	auipc	ra,0x0
    1740:	492080e7          	jalr	1170(ra) # 1bce <exit>
    1744:	fff48713          	addi	a4,s1,-1
    1748:	f04d                	bnez	s0,16ea <memcmp+0x1a>
    174a:	a011                	j	174e <memcmp+0x7e>
    174c:	c221                	beqz	a2,178c <memcmp+0xbc>
    174e:	03300693          	li	a3,51
    1752:	00002637          	lui	a2,0x2
    1756:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    175a:	000025b7          	lui	a1,0x2
    175e:	14858593          	addi	a1,a1,328 # 2148 <crctab+0x458>
    1762:	4509                	li	a0,2
    1764:	00000097          	auipc	ra,0x0
    1768:	b86080e7          	jalr	-1146(ra) # 12ea <fprintf>
    176c:	650d                	lui	a0,0x3
    176e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1772:	00000097          	auipc	ra,0x0
    1776:	45c080e7          	jalr	1116(ra) # 1bce <exit>
    177a:	fff48713          	addi	a4,s1,-1
    177e:	4401                	li	s0,0
    1780:	b7ad                	j	16ea <memcmp+0x1a>
    1782:	4505                	li	a0,1
    1784:	f8d762e3          	bltu	a4,a3,1708 <memcmp+0x38>
    1788:	557d                	li	a0,-1
    178a:	bfbd                	j	1708 <memcmp+0x38>
    178c:	4501                	li	a0,0
    178e:	bfad                	j	1708 <memcmp+0x38>
    1790:	4501                	li	a0,0
    1792:	bf9d                	j	1708 <memcmp+0x38>

0000000000001794 <memcpy>:
    1794:	1101                	addi	sp,sp,-32
    1796:	ec06                	sd	ra,24(sp)
    1798:	e822                	sd	s0,16(sp)
    179a:	e426                	sd	s1,8(sp)
    179c:	e04a                	sd	s2,0(sp)
    179e:	84aa                	mv	s1,a0
    17a0:	842e                	mv	s0,a1
    17a2:	8932                	mv	s2,a2
    17a4:	c51d                	beqz	a0,17d2 <memcpy+0x3e>
    17a6:	c1ad                	beqz	a1,1808 <memcpy+0x74>
    17a8:	fff60693          	addi	a3,a2,-1
    17ac:	ce01                	beqz	a2,17c4 <memcpy+0x30>
    17ae:	0685                	addi	a3,a3,1
    17b0:	96a6                	add	a3,a3,s1
    17b2:	87a6                	mv	a5,s1
    17b4:	0405                	addi	s0,s0,1
    17b6:	0785                	addi	a5,a5,1
    17b8:	fff44703          	lbu	a4,-1(s0)
    17bc:	fee78fa3          	sb	a4,-1(a5)
    17c0:	fed79ae3          	bne	a5,a3,17b4 <memcpy+0x20>
    17c4:	8526                	mv	a0,s1
    17c6:	60e2                	ld	ra,24(sp)
    17c8:	6442                	ld	s0,16(sp)
    17ca:	64a2                	ld	s1,8(sp)
    17cc:	6902                	ld	s2,0(sp)
    17ce:	6105                	addi	sp,sp,32
    17d0:	8082                	ret
    17d2:	da6d                	beqz	a2,17c4 <memcpy+0x30>
    17d4:	04000693          	li	a3,64
    17d8:	00002637          	lui	a2,0x2
    17dc:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    17e0:	000025b7          	lui	a1,0x2
    17e4:	19058593          	addi	a1,a1,400 # 2190 <crctab+0x4a0>
    17e8:	4509                	li	a0,2
    17ea:	00000097          	auipc	ra,0x0
    17ee:	b00080e7          	jalr	-1280(ra) # 12ea <fprintf>
    17f2:	650d                	lui	a0,0x3
    17f4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17f8:	00000097          	auipc	ra,0x0
    17fc:	3d6080e7          	jalr	982(ra) # 1bce <exit>
    1800:	fff90693          	addi	a3,s2,-1
    1804:	f44d                	bnez	s0,17ae <memcpy+0x1a>
    1806:	a011                	j	180a <memcpy+0x76>
    1808:	de55                	beqz	a2,17c4 <memcpy+0x30>
    180a:	04100693          	li	a3,65
    180e:	00002637          	lui	a2,0x2
    1812:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1816:	000025b7          	lui	a1,0x2
    181a:	1d858593          	addi	a1,a1,472 # 21d8 <crctab+0x4e8>
    181e:	4509                	li	a0,2
    1820:	00000097          	auipc	ra,0x0
    1824:	aca080e7          	jalr	-1334(ra) # 12ea <fprintf>
    1828:	650d                	lui	a0,0x3
    182a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    182e:	00000097          	auipc	ra,0x0
    1832:	3a0080e7          	jalr	928(ra) # 1bce <exit>
    1836:	fff90693          	addi	a3,s2,-1
    183a:	4401                	li	s0,0
    183c:	bf8d                	j	17ae <memcpy+0x1a>

000000000000183e <itoa>:
    183e:	1101                	addi	sp,sp,-32
    1840:	ec06                	sd	ra,24(sp)
    1842:	e822                	sd	s0,16(sp)
    1844:	e426                	sd	s1,8(sp)
    1846:	842a                	mv	s0,a0
    1848:	41f5d71b          	sraiw	a4,a1,0x1f
    184c:	00e5c7b3          	xor	a5,a1,a4
    1850:	9f99                	subw	a5,a5,a4
    1852:	84aa                	mv	s1,a0
    1854:	862a                	mv	a2,a0
    1856:	4681                	li	a3,0
    1858:	4529                	li	a0,10
    185a:	4825                	li	a6,9
    185c:	88b6                	mv	a7,a3
    185e:	2685                	addiw	a3,a3,1
    1860:	02a7e73b          	remw	a4,a5,a0
    1864:	0307071b          	addiw	a4,a4,48
    1868:	00e60023          	sb	a4,0(a2)
    186c:	873e                	mv	a4,a5
    186e:	02a7c7bb          	divw	a5,a5,a0
    1872:	0605                	addi	a2,a2,1
    1874:	fee844e3          	blt	a6,a4,185c <itoa+0x1e>
    1878:	0405c863          	bltz	a1,18c8 <itoa+0x8a>
    187c:	96a2                	add	a3,a3,s0
    187e:	00068023          	sb	zero,0(a3)
    1882:	8522                	mv	a0,s0
    1884:	00000097          	auipc	ra,0x0
    1888:	e14080e7          	jalr	-492(ra) # 1698 <strlen>
    188c:	fff5071b          	addiw	a4,a0,-1
    1890:	02e05763          	blez	a4,18be <itoa+0x80>
    1894:	9722                	add	a4,a4,s0
    1896:	4681                	li	a3,0
    1898:	0004c783          	lbu	a5,0(s1)
    189c:	00074603          	lbu	a2,0(a4)
    18a0:	00c48023          	sb	a2,0(s1)
    18a4:	00f70023          	sb	a5,0(a4)
    18a8:	0016879b          	addiw	a5,a3,1
    18ac:	0007869b          	sext.w	a3,a5
    18b0:	0485                	addi	s1,s1,1
    18b2:	177d                	addi	a4,a4,-1
    18b4:	fff7c793          	not	a5,a5
    18b8:	9fa9                	addw	a5,a5,a0
    18ba:	fcf6cfe3          	blt	a3,a5,1898 <itoa+0x5a>
    18be:	60e2                	ld	ra,24(sp)
    18c0:	6442                	ld	s0,16(sp)
    18c2:	64a2                	ld	s1,8(sp)
    18c4:	6105                	addi	sp,sp,32
    18c6:	8082                	ret
    18c8:	96a2                	add	a3,a3,s0
    18ca:	02d00793          	li	a5,45
    18ce:	00f68023          	sb	a5,0(a3)
    18d2:	0028869b          	addiw	a3,a7,2
    18d6:	b75d                	j	187c <itoa+0x3e>

00000000000018d8 <atoi>:
    18d8:	00054783          	lbu	a5,0(a0)
    18dc:	02000713          	li	a4,32
    18e0:	00e79763          	bne	a5,a4,18ee <atoi+0x16>
    18e4:	0505                	addi	a0,a0,1
    18e6:	00054783          	lbu	a5,0(a0)
    18ea:	fee78de3          	beq	a5,a4,18e4 <atoi+0xc>
    18ee:	02b00713          	li	a4,43
    18f2:	04e78663          	beq	a5,a4,193e <atoi+0x66>
    18f6:	02d00713          	li	a4,45
    18fa:	4805                	li	a6,1
    18fc:	04e78463          	beq	a5,a4,1944 <atoi+0x6c>
    1900:	00054683          	lbu	a3,0(a0)
    1904:	fd06879b          	addiw	a5,a3,-48
    1908:	0ff7f793          	andi	a5,a5,255
    190c:	4725                	li	a4,9
    190e:	02f76e63          	bltu	a4,a5,194a <atoi+0x72>
    1912:	4601                	li	a2,0
    1914:	45a5                	li	a1,9
    1916:	0505                	addi	a0,a0,1
    1918:	0026179b          	slliw	a5,a2,0x2
    191c:	9fb1                	addw	a5,a5,a2
    191e:	0017979b          	slliw	a5,a5,0x1
    1922:	9fb5                	addw	a5,a5,a3
    1924:	fd07861b          	addiw	a2,a5,-48
    1928:	00054683          	lbu	a3,0(a0)
    192c:	fd06871b          	addiw	a4,a3,-48
    1930:	0ff77713          	andi	a4,a4,255
    1934:	fee5f1e3          	bgeu	a1,a4,1916 <atoi+0x3e>
    1938:	02c8053b          	mulw	a0,a6,a2
    193c:	8082                	ret
    193e:	0505                	addi	a0,a0,1
    1940:	4805                	li	a6,1
    1942:	bf7d                	j	1900 <atoi+0x28>
    1944:	0505                	addi	a0,a0,1
    1946:	587d                	li	a6,-1
    1948:	bf65                	j	1900 <atoi+0x28>
    194a:	4601                	li	a2,0
    194c:	b7f5                	j	1938 <atoi+0x60>

000000000000194e <check_file_handle>:
    194e:	d8010113          	addi	sp,sp,-640
    1952:	26113c23          	sd	ra,632(sp)
    1956:	26813823          	sd	s0,624(sp)
    195a:	26913423          	sd	s1,616(sp)
    195e:	27213023          	sd	s2,608(sp)
    1962:	25313c23          	sd	s3,600(sp)
    1966:	25413823          	sd	s4,592(sp)
    196a:	25513423          	sd	s5,584(sp)
    196e:	25613023          	sd	s6,576(sp)
    1972:	23713c23          	sd	s7,568(sp)
    1976:	23813823          	sd	s8,560(sp)
    197a:	23913423          	sd	s9,552(sp)
    197e:	23a13023          	sd	s10,544(sp)
    1982:	21b13c23          	sd	s11,536(sp)
    1986:	8baa                	mv	s7,a0
    1988:	8a2e                	mv	s4,a1
    198a:	8c32                	mv	s8,a2
    198c:	89b6                	mv	s3,a3
    198e:	040c                	addi	a1,sp,512
    1990:	00000097          	auipc	ra,0x0
    1994:	28e080e7          	jalr	654(ra) # 1c1e <fstat>
    1998:	20813603          	ld	a2,520(sp)
    199c:	03361163          	bne	a2,s3,19be <check_file_handle+0x70>
    19a0:	06098763          	beqz	s3,1a0e <check_file_handle+0xc0>
    19a4:	4901                	li	s2,0
    19a6:	20000a93          	li	s5,512
    19aa:	00002cb7          	lui	s9,0x2
    19ae:	00002db7          	lui	s11,0x2
    19b2:	6b0d                	lui	s6,0x3
    19b4:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19b8:	00002d37          	lui	s10,0x2
    19bc:	aa39                	j	1ada <check_file_handle+0x18c>
    19be:	86ce                	mv	a3,s3
    19c0:	85d2                	mv	a1,s4
    19c2:	00002537          	lui	a0,0x2
    19c6:	22050513          	addi	a0,a0,544 # 2220 <crctab+0x530>
    19ca:	00000097          	auipc	ra,0x0
    19ce:	942080e7          	jalr	-1726(ra) # 130c <printf>
    19d2:	fc0999e3          	bnez	s3,19a4 <check_file_handle+0x56>
    19d6:	20813683          	ld	a3,520(sp)
    19da:	03368a63          	beq	a3,s3,1a0e <check_file_handle+0xc0>
    19de:	0a600813          	li	a6,166
    19e2:	000027b7          	lui	a5,0x2
    19e6:	0f078793          	addi	a5,a5,240 # 20f0 <crctab+0x400>
    19ea:	874e                	mv	a4,s3
    19ec:	8652                	mv	a2,s4
    19ee:	000025b7          	lui	a1,0x2
    19f2:	2f058593          	addi	a1,a1,752 # 22f0 <crctab+0x600>
    19f6:	4509                	li	a0,2
    19f8:	00000097          	auipc	ra,0x0
    19fc:	8f2080e7          	jalr	-1806(ra) # 12ea <fprintf>
    1a00:	650d                	lui	a0,0x3
    1a02:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a06:	00000097          	auipc	ra,0x0
    1a0a:	1c8080e7          	jalr	456(ra) # 1bce <exit>
    1a0e:	85d2                	mv	a1,s4
    1a10:	00002537          	lui	a0,0x2
    1a14:	33850513          	addi	a0,a0,824 # 2338 <crctab+0x648>
    1a18:	00000097          	auipc	ra,0x0
    1a1c:	8f4080e7          	jalr	-1804(ra) # 130c <printf>
    1a20:	27813083          	ld	ra,632(sp)
    1a24:	27013403          	ld	s0,624(sp)
    1a28:	26813483          	ld	s1,616(sp)
    1a2c:	26013903          	ld	s2,608(sp)
    1a30:	25813983          	ld	s3,600(sp)
    1a34:	25013a03          	ld	s4,592(sp)
    1a38:	24813a83          	ld	s5,584(sp)
    1a3c:	24013b03          	ld	s6,576(sp)
    1a40:	23813b83          	ld	s7,568(sp)
    1a44:	23013c03          	ld	s8,560(sp)
    1a48:	22813c83          	ld	s9,552(sp)
    1a4c:	22013d03          	ld	s10,544(sp)
    1a50:	21813d83          	ld	s11,536(sp)
    1a54:	28010113          	addi	sp,sp,640
    1a58:	8082                	ret
    1a5a:	09d00893          	li	a7,157
    1a5e:	0f0c8813          	addi	a6,s9,240 # 20f0 <crctab+0x400>
    1a62:	87aa                	mv	a5,a0
    1a64:	8752                	mv	a4,s4
    1a66:	86ca                	mv	a3,s2
    1a68:	8622                	mv	a2,s0
    1a6a:	250d8593          	addi	a1,s11,592 # 2250 <crctab+0x560>
    1a6e:	4509                	li	a0,2
    1a70:	00000097          	auipc	ra,0x0
    1a74:	87a080e7          	jalr	-1926(ra) # 12ea <fprintf>
    1a78:	855a                	mv	a0,s6
    1a7a:	00000097          	auipc	ra,0x0
    1a7e:	154080e7          	jalr	340(ra) # 1bce <exit>
    1a82:	a89d                	j	1af8 <check_file_handle+0x1aa>
    1a84:	00160593          	addi	a1,a2,1
    1a88:	0285f163          	bgeu	a1,s0,1aaa <check_file_handle+0x15c>
    1a8c:	00c10733          	add	a4,sp,a2
    1a90:	00b487b3          	add	a5,s1,a1
    1a94:	00174683          	lbu	a3,1(a4)
    1a98:	0007c783          	lbu	a5,0(a5)
    1a9c:	00f68763          	beq	a3,a5,1aaa <check_file_handle+0x15c>
    1aa0:	0585                	addi	a1,a1,1
    1aa2:	0705                	addi	a4,a4,1
    1aa4:	feb416e3          	bne	s0,a1,1a90 <check_file_handle+0x142>
    1aa8:	85a2                	mv	a1,s0
    1aaa:	08100813          	li	a6,129
    1aae:	0f0c8793          	addi	a5,s9,240
    1ab2:	8752                	mv	a4,s4
    1ab4:	012606b3          	add	a3,a2,s2
    1ab8:	40c58633          	sub	a2,a1,a2
    1abc:	298d0593          	addi	a1,s10,664 # 2298 <crctab+0x5a8>
    1ac0:	4509                	li	a0,2
    1ac2:	00000097          	auipc	ra,0x0
    1ac6:	828080e7          	jalr	-2008(ra) # 12ea <fprintf>
    1aca:	855a                	mv	a0,s6
    1acc:	00000097          	auipc	ra,0x0
    1ad0:	102080e7          	jalr	258(ra) # 1bce <exit>
    1ad4:	9922                	add	s2,s2,s0
    1ad6:	f13970e3          	bgeu	s2,s3,19d6 <check_file_handle+0x88>
    1ada:	41298433          	sub	s0,s3,s2
    1ade:	008af363          	bgeu	s5,s0,1ae4 <check_file_handle+0x196>
    1ae2:	8456                	mv	s0,s5
    1ae4:	0004061b          	sext.w	a2,s0
    1ae8:	858a                	mv	a1,sp
    1aea:	855e                	mv	a0,s7
    1aec:	00000097          	auipc	ra,0x0
    1af0:	10a080e7          	jalr	266(ra) # 1bf6 <read>
    1af4:	f68513e3          	bne	a0,s0,1a5a <check_file_handle+0x10c>
    1af8:	012c04b3          	add	s1,s8,s2
    1afc:	8622                	mv	a2,s0
    1afe:	85a6                	mv	a1,s1
    1b00:	850a                	mv	a0,sp
    1b02:	00000097          	auipc	ra,0x0
    1b06:	bce080e7          	jalr	-1074(ra) # 16d0 <memcmp>
    1b0a:	d569                	beqz	a0,1ad4 <check_file_handle+0x186>
    1b0c:	03298163          	beq	s3,s2,1b2e <check_file_handle+0x1e0>
    1b10:	870a                	mv	a4,sp
    1b12:	4601                	li	a2,0
    1b14:	00c487b3          	add	a5,s1,a2
    1b18:	00074683          	lbu	a3,0(a4)
    1b1c:	0007c783          	lbu	a5,0(a5)
    1b20:	f6f692e3          	bne	a3,a5,1a84 <check_file_handle+0x136>
    1b24:	0605                	addi	a2,a2,1
    1b26:	0705                	addi	a4,a4,1
    1b28:	fe8666e3          	bltu	a2,s0,1b14 <check_file_handle+0x1c6>
    1b2c:	bfa1                	j	1a84 <check_file_handle+0x136>
    1b2e:	4601                	li	a2,0
    1b30:	4585                	li	a1,1
    1b32:	bfa5                	j	1aaa <check_file_handle+0x15c>

0000000000001b34 <check_file>:
    1b34:	7179                	addi	sp,sp,-48
    1b36:	f406                	sd	ra,40(sp)
    1b38:	f022                	sd	s0,32(sp)
    1b3a:	ec26                	sd	s1,24(sp)
    1b3c:	e84a                	sd	s2,16(sp)
    1b3e:	e44e                	sd	s3,8(sp)
    1b40:	84aa                	mv	s1,a0
    1b42:	892e                	mv	s2,a1
    1b44:	89b2                	mv	s3,a2
    1b46:	4581                	li	a1,0
    1b48:	00000097          	auipc	ra,0x0
    1b4c:	0a6080e7          	jalr	166(ra) # 1bee <open>
    1b50:	842a                	mv	s0,a0
    1b52:	4789                	li	a5,2
    1b54:	02a7df63          	bge	a5,a0,1b92 <check_file+0x5e>
    1b58:	86ce                	mv	a3,s3
    1b5a:	864a                	mv	a2,s2
    1b5c:	85a6                	mv	a1,s1
    1b5e:	8522                	mv	a0,s0
    1b60:	00000097          	auipc	ra,0x0
    1b64:	dee080e7          	jalr	-530(ra) # 194e <check_file_handle>
    1b68:	85a6                	mv	a1,s1
    1b6a:	00002537          	lui	a0,0x2
    1b6e:	3c050513          	addi	a0,a0,960 # 23c0 <crctab+0x6d0>
    1b72:	fffff097          	auipc	ra,0xfffff
    1b76:	79a080e7          	jalr	1946(ra) # 130c <printf>
    1b7a:	8522                	mv	a0,s0
    1b7c:	00000097          	auipc	ra,0x0
    1b80:	09a080e7          	jalr	154(ra) # 1c16 <close>
    1b84:	70a2                	ld	ra,40(sp)
    1b86:	7402                	ld	s0,32(sp)
    1b88:	64e2                	ld	s1,24(sp)
    1b8a:	6942                	ld	s2,16(sp)
    1b8c:	69a2                	ld	s3,8(sp)
    1b8e:	6145                	addi	sp,sp,48
    1b90:	8082                	ret
    1b92:	0ae00713          	li	a4,174
    1b96:	000026b7          	lui	a3,0x2
    1b9a:	0f068693          	addi	a3,a3,240 # 20f0 <crctab+0x400>
    1b9e:	8626                	mv	a2,s1
    1ba0:	000025b7          	lui	a1,0x2
    1ba4:	35858593          	addi	a1,a1,856 # 2358 <crctab+0x668>
    1ba8:	4509                	li	a0,2
    1baa:	fffff097          	auipc	ra,0xfffff
    1bae:	740080e7          	jalr	1856(ra) # 12ea <fprintf>
    1bb2:	650d                	lui	a0,0x3
    1bb4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bb8:	00000097          	auipc	ra,0x0
    1bbc:	016080e7          	jalr	22(ra) # 1bce <exit>
    1bc0:	bf61                	j	1b58 <check_file+0x24>

0000000000001bc2 <r_sp>:
    1bc2:	850a                	mv	a0,sp
    1bc4:	8082                	ret

0000000000001bc6 <halt>:
    1bc6:	4885                	li	a7,1
    1bc8:	00000073          	ecall
    1bcc:	8082                	ret

0000000000001bce <exit>:
    1bce:	4889                	li	a7,2
    1bd0:	00000073          	ecall
    1bd4:	8082                	ret

0000000000001bd6 <exec>:
    1bd6:	488d                	li	a7,3
    1bd8:	00000073          	ecall
    1bdc:	8082                	ret

0000000000001bde <wait>:
    1bde:	4891                	li	a7,4
    1be0:	00000073          	ecall
    1be4:	8082                	ret

0000000000001be6 <remove>:
    1be6:	4895                	li	a7,5
    1be8:	00000073          	ecall
    1bec:	8082                	ret

0000000000001bee <open>:
    1bee:	4899                	li	a7,6
    1bf0:	00000073          	ecall
    1bf4:	8082                	ret

0000000000001bf6 <read>:
    1bf6:	489d                	li	a7,7
    1bf8:	00000073          	ecall
    1bfc:	8082                	ret

0000000000001bfe <write>:
    1bfe:	48a1                	li	a7,8
    1c00:	00000073          	ecall
    1c04:	8082                	ret

0000000000001c06 <seek>:
    1c06:	48a5                	li	a7,9
    1c08:	00000073          	ecall
    1c0c:	8082                	ret

0000000000001c0e <tell>:
    1c0e:	48a9                	li	a7,10
    1c10:	00000073          	ecall
    1c14:	8082                	ret

0000000000001c16 <close>:
    1c16:	48ad                	li	a7,11
    1c18:	00000073          	ecall
    1c1c:	8082                	ret

0000000000001c1e <fstat>:
    1c1e:	48b1                	li	a7,12
    1c20:	00000073          	ecall
    1c24:	8082                	ret

0000000000001c26 <mmap>:
    1c26:	48b5                	li	a7,13
    1c28:	00000073          	ecall
    1c2c:	8082                	ret

0000000000001c2e <munmap>:
    1c2e:	48b9                	li	a7,14
    1c30:	00000073          	ecall
    1c34:	8082                	ret

0000000000001c36 <chdir>:
    1c36:	48bd                	li	a7,15
    1c38:	00000073          	ecall
    1c3c:	8082                	ret

0000000000001c3e <mkdir>:
    1c3e:	48c1                	li	a7,16
    1c40:	00000073          	ecall
    1c44:	8082                	ret
