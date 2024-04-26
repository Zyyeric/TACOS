
build/user/vm/child-inherit:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	6605                	lui	a2,0x1
    1006:	4581                	li	a1,0
    1008:	54321537          	lui	a0,0x54321
    100c:	00000097          	auipc	ra,0x0
    1010:	690080e7          	jalr	1680(ra) # 169c <memset>
    1014:	46a5                	li	a3,9
    1016:	00002637          	lui	a2,0x2
    101a:	c3060613          	addi	a2,a2,-976 # 1c30 <mkdir+0xe>
    101e:	000025b7          	lui	a1,0x2
    1022:	c4858593          	addi	a1,a1,-952 # 1c48 <mkdir+0x26>
    1026:	4509                	li	a0,2
    1028:	00000097          	auipc	ra,0x0
    102c:	2a6080e7          	jalr	678(ra) # 12ce <fprintf>
    1030:	650d                	lui	a0,0x3
    1032:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1036:	00001097          	auipc	ra,0x1
    103a:	b7c080e7          	jalr	-1156(ra) # 1bb2 <exit>
    103e:	60a2                	ld	ra,8(sp)
    1040:	0141                	addi	sp,sp,16
    1042:	8082                	ret

0000000000001044 <putc>:
    1044:	1101                	addi	sp,sp,-32
    1046:	ec06                	sd	ra,24(sp)
    1048:	00b107a3          	sb	a1,15(sp)
    104c:	4605                	li	a2,1
    104e:	00f10593          	addi	a1,sp,15
    1052:	00001097          	auipc	ra,0x1
    1056:	b90080e7          	jalr	-1136(ra) # 1be2 <write>
    105a:	60e2                	ld	ra,24(sp)
    105c:	6105                	addi	sp,sp,32
    105e:	8082                	ret

0000000000001060 <printint>:
    1060:	7179                	addi	sp,sp,-48
    1062:	f406                	sd	ra,40(sp)
    1064:	f022                	sd	s0,32(sp)
    1066:	ec26                	sd	s1,24(sp)
    1068:	e84a                	sd	s2,16(sp)
    106a:	84aa                	mv	s1,a0
    106c:	c299                	beqz	a3,1072 <printint+0x12>
    106e:	0805c363          	bltz	a1,10f4 <printint+0x94>
    1072:	2581                	sext.w	a1,a1
    1074:	4881                	li	a7,0
    1076:	868a                	mv	a3,sp
    1078:	4701                	li	a4,0
    107a:	2601                	sext.w	a2,a2
    107c:	00002537          	lui	a0,0x2
    1080:	c9050513          	addi	a0,a0,-880 # 1c90 <digits>
    1084:	883a                	mv	a6,a4
    1086:	2705                	addiw	a4,a4,1
    1088:	02c5f7bb          	remuw	a5,a1,a2
    108c:	1782                	slli	a5,a5,0x20
    108e:	9381                	srli	a5,a5,0x20
    1090:	97aa                	add	a5,a5,a0
    1092:	0007c783          	lbu	a5,0(a5)
    1096:	00f68023          	sb	a5,0(a3)
    109a:	0005879b          	sext.w	a5,a1
    109e:	02c5d5bb          	divuw	a1,a1,a2
    10a2:	0685                	addi	a3,a3,1
    10a4:	fec7f0e3          	bgeu	a5,a2,1084 <printint+0x24>
    10a8:	00088a63          	beqz	a7,10bc <printint+0x5c>
    10ac:	081c                	addi	a5,sp,16
    10ae:	973e                	add	a4,a4,a5
    10b0:	02d00793          	li	a5,45
    10b4:	fef70823          	sb	a5,-16(a4)
    10b8:	0028071b          	addiw	a4,a6,2
    10bc:	02e05663          	blez	a4,10e8 <printint+0x88>
    10c0:	00e10433          	add	s0,sp,a4
    10c4:	fff10913          	addi	s2,sp,-1
    10c8:	993a                	add	s2,s2,a4
    10ca:	377d                	addiw	a4,a4,-1
    10cc:	1702                	slli	a4,a4,0x20
    10ce:	9301                	srli	a4,a4,0x20
    10d0:	40e90933          	sub	s2,s2,a4
    10d4:	fff44583          	lbu	a1,-1(s0)
    10d8:	8526                	mv	a0,s1
    10da:	00000097          	auipc	ra,0x0
    10de:	f6a080e7          	jalr	-150(ra) # 1044 <putc>
    10e2:	147d                	addi	s0,s0,-1
    10e4:	ff2418e3          	bne	s0,s2,10d4 <printint+0x74>
    10e8:	70a2                	ld	ra,40(sp)
    10ea:	7402                	ld	s0,32(sp)
    10ec:	64e2                	ld	s1,24(sp)
    10ee:	6942                	ld	s2,16(sp)
    10f0:	6145                	addi	sp,sp,48
    10f2:	8082                	ret
    10f4:	40b005bb          	negw	a1,a1
    10f8:	4885                	li	a7,1
    10fa:	bfb5                	j	1076 <printint+0x16>

00000000000010fc <vprintf>:
    10fc:	7159                	addi	sp,sp,-112
    10fe:	f486                	sd	ra,104(sp)
    1100:	f0a2                	sd	s0,96(sp)
    1102:	eca6                	sd	s1,88(sp)
    1104:	e8ca                	sd	s2,80(sp)
    1106:	e4ce                	sd	s3,72(sp)
    1108:	e0d2                	sd	s4,64(sp)
    110a:	fc56                	sd	s5,56(sp)
    110c:	f85a                	sd	s6,48(sp)
    110e:	f45e                	sd	s7,40(sp)
    1110:	f062                	sd	s8,32(sp)
    1112:	ec66                	sd	s9,24(sp)
    1114:	e86a                	sd	s10,16(sp)
    1116:	e46e                	sd	s11,8(sp)
    1118:	0005c483          	lbu	s1,0(a1)
    111c:	18048a63          	beqz	s1,12b0 <vprintf+0x1b4>
    1120:	8a2a                	mv	s4,a0
    1122:	8ab2                	mv	s5,a2
    1124:	00158413          	addi	s0,a1,1
    1128:	4901                	li	s2,0
    112a:	02500993          	li	s3,37
    112e:	06400b93          	li	s7,100
    1132:	06c00c13          	li	s8,108
    1136:	07800c93          	li	s9,120
    113a:	07000d13          	li	s10,112
    113e:	00002db7          	lui	s11,0x2
    1142:	00002b37          	lui	s6,0x2
    1146:	c90b0b13          	addi	s6,s6,-880 # 1c90 <digits>
    114a:	a839                	j	1168 <vprintf+0x6c>
    114c:	85a6                	mv	a1,s1
    114e:	8552                	mv	a0,s4
    1150:	00000097          	auipc	ra,0x0
    1154:	ef4080e7          	jalr	-268(ra) # 1044 <putc>
    1158:	a019                	j	115e <vprintf+0x62>
    115a:	01390f63          	beq	s2,s3,1178 <vprintf+0x7c>
    115e:	0405                	addi	s0,s0,1
    1160:	fff44483          	lbu	s1,-1(s0)
    1164:	14048663          	beqz	s1,12b0 <vprintf+0x1b4>
    1168:	0004879b          	sext.w	a5,s1
    116c:	fe0917e3          	bnez	s2,115a <vprintf+0x5e>
    1170:	fd379ee3          	bne	a5,s3,114c <vprintf+0x50>
    1174:	893e                	mv	s2,a5
    1176:	b7e5                	j	115e <vprintf+0x62>
    1178:	05778063          	beq	a5,s7,11b8 <vprintf+0xbc>
    117c:	05878c63          	beq	a5,s8,11d4 <vprintf+0xd8>
    1180:	07978863          	beq	a5,s9,11f0 <vprintf+0xf4>
    1184:	09a78463          	beq	a5,s10,120c <vprintf+0x110>
    1188:	07300713          	li	a4,115
    118c:	0ce78263          	beq	a5,a4,1250 <vprintf+0x154>
    1190:	06300713          	li	a4,99
    1194:	0ee78763          	beq	a5,a4,1282 <vprintf+0x186>
    1198:	11378163          	beq	a5,s3,129a <vprintf+0x19e>
    119c:	85ce                	mv	a1,s3
    119e:	8552                	mv	a0,s4
    11a0:	00000097          	auipc	ra,0x0
    11a4:	ea4080e7          	jalr	-348(ra) # 1044 <putc>
    11a8:	85a6                	mv	a1,s1
    11aa:	8552                	mv	a0,s4
    11ac:	00000097          	auipc	ra,0x0
    11b0:	e98080e7          	jalr	-360(ra) # 1044 <putc>
    11b4:	4901                	li	s2,0
    11b6:	b765                	j	115e <vprintf+0x62>
    11b8:	008a8493          	addi	s1,s5,8
    11bc:	4685                	li	a3,1
    11be:	4629                	li	a2,10
    11c0:	000aa583          	lw	a1,0(s5)
    11c4:	8552                	mv	a0,s4
    11c6:	00000097          	auipc	ra,0x0
    11ca:	e9a080e7          	jalr	-358(ra) # 1060 <printint>
    11ce:	8aa6                	mv	s5,s1
    11d0:	4901                	li	s2,0
    11d2:	b771                	j	115e <vprintf+0x62>
    11d4:	008a8493          	addi	s1,s5,8
    11d8:	4681                	li	a3,0
    11da:	4629                	li	a2,10
    11dc:	000aa583          	lw	a1,0(s5)
    11e0:	8552                	mv	a0,s4
    11e2:	00000097          	auipc	ra,0x0
    11e6:	e7e080e7          	jalr	-386(ra) # 1060 <printint>
    11ea:	8aa6                	mv	s5,s1
    11ec:	4901                	li	s2,0
    11ee:	bf85                	j	115e <vprintf+0x62>
    11f0:	008a8493          	addi	s1,s5,8
    11f4:	4681                	li	a3,0
    11f6:	4641                	li	a2,16
    11f8:	000aa583          	lw	a1,0(s5)
    11fc:	8552                	mv	a0,s4
    11fe:	00000097          	auipc	ra,0x0
    1202:	e62080e7          	jalr	-414(ra) # 1060 <printint>
    1206:	8aa6                	mv	s5,s1
    1208:	4901                	li	s2,0
    120a:	bf91                	j	115e <vprintf+0x62>
    120c:	008a8913          	addi	s2,s5,8
    1210:	000aba83          	ld	s5,0(s5)
    1214:	03000593          	li	a1,48
    1218:	8552                	mv	a0,s4
    121a:	00000097          	auipc	ra,0x0
    121e:	e2a080e7          	jalr	-470(ra) # 1044 <putc>
    1222:	85e6                	mv	a1,s9
    1224:	8552                	mv	a0,s4
    1226:	00000097          	auipc	ra,0x0
    122a:	e1e080e7          	jalr	-482(ra) # 1044 <putc>
    122e:	44c1                	li	s1,16
    1230:	03cad793          	srli	a5,s5,0x3c
    1234:	97da                	add	a5,a5,s6
    1236:	0007c583          	lbu	a1,0(a5)
    123a:	8552                	mv	a0,s4
    123c:	00000097          	auipc	ra,0x0
    1240:	e08080e7          	jalr	-504(ra) # 1044 <putc>
    1244:	0a92                	slli	s5,s5,0x4
    1246:	34fd                	addiw	s1,s1,-1
    1248:	f4e5                	bnez	s1,1230 <vprintf+0x134>
    124a:	8aca                	mv	s5,s2
    124c:	4901                	li	s2,0
    124e:	bf01                	j	115e <vprintf+0x62>
    1250:	008a8913          	addi	s2,s5,8
    1254:	000ab483          	ld	s1,0(s5)
    1258:	c085                	beqz	s1,1278 <vprintf+0x17c>
    125a:	0004c583          	lbu	a1,0(s1)
    125e:	c5b1                	beqz	a1,12aa <vprintf+0x1ae>
    1260:	8552                	mv	a0,s4
    1262:	00000097          	auipc	ra,0x0
    1266:	de2080e7          	jalr	-542(ra) # 1044 <putc>
    126a:	0485                	addi	s1,s1,1
    126c:	0004c583          	lbu	a1,0(s1)
    1270:	f9e5                	bnez	a1,1260 <vprintf+0x164>
    1272:	8aca                	mv	s5,s2
    1274:	4901                	li	s2,0
    1276:	b5e5                	j	115e <vprintf+0x62>
    1278:	c88d8493          	addi	s1,s11,-888 # 1c88 <mkdir+0x66>
    127c:	02800593          	li	a1,40
    1280:	b7c5                	j	1260 <vprintf+0x164>
    1282:	008a8493          	addi	s1,s5,8
    1286:	000ac583          	lbu	a1,0(s5)
    128a:	8552                	mv	a0,s4
    128c:	00000097          	auipc	ra,0x0
    1290:	db8080e7          	jalr	-584(ra) # 1044 <putc>
    1294:	8aa6                	mv	s5,s1
    1296:	4901                	li	s2,0
    1298:	b5d9                	j	115e <vprintf+0x62>
    129a:	85ce                	mv	a1,s3
    129c:	8552                	mv	a0,s4
    129e:	00000097          	auipc	ra,0x0
    12a2:	da6080e7          	jalr	-602(ra) # 1044 <putc>
    12a6:	4901                	li	s2,0
    12a8:	bd5d                	j	115e <vprintf+0x62>
    12aa:	8aca                	mv	s5,s2
    12ac:	4901                	li	s2,0
    12ae:	bd45                	j	115e <vprintf+0x62>
    12b0:	70a6                	ld	ra,104(sp)
    12b2:	7406                	ld	s0,96(sp)
    12b4:	64e6                	ld	s1,88(sp)
    12b6:	6946                	ld	s2,80(sp)
    12b8:	69a6                	ld	s3,72(sp)
    12ba:	6a06                	ld	s4,64(sp)
    12bc:	7ae2                	ld	s5,56(sp)
    12be:	7b42                	ld	s6,48(sp)
    12c0:	7ba2                	ld	s7,40(sp)
    12c2:	7c02                	ld	s8,32(sp)
    12c4:	6ce2                	ld	s9,24(sp)
    12c6:	6d42                	ld	s10,16(sp)
    12c8:	6da2                	ld	s11,8(sp)
    12ca:	6165                	addi	sp,sp,112
    12cc:	8082                	ret

00000000000012ce <fprintf>:
    12ce:	715d                	addi	sp,sp,-80
    12d0:	ec06                	sd	ra,24(sp)
    12d2:	f032                	sd	a2,32(sp)
    12d4:	f436                	sd	a3,40(sp)
    12d6:	f83a                	sd	a4,48(sp)
    12d8:	fc3e                	sd	a5,56(sp)
    12da:	e0c2                	sd	a6,64(sp)
    12dc:	e4c6                	sd	a7,72(sp)
    12de:	1010                	addi	a2,sp,32
    12e0:	e432                	sd	a2,8(sp)
    12e2:	00000097          	auipc	ra,0x0
    12e6:	e1a080e7          	jalr	-486(ra) # 10fc <vprintf>
    12ea:	60e2                	ld	ra,24(sp)
    12ec:	6161                	addi	sp,sp,80
    12ee:	8082                	ret

00000000000012f0 <printf>:
    12f0:	711d                	addi	sp,sp,-96
    12f2:	ec06                	sd	ra,24(sp)
    12f4:	f42e                	sd	a1,40(sp)
    12f6:	f832                	sd	a2,48(sp)
    12f8:	fc36                	sd	a3,56(sp)
    12fa:	e0ba                	sd	a4,64(sp)
    12fc:	e4be                	sd	a5,72(sp)
    12fe:	e8c2                	sd	a6,80(sp)
    1300:	ecc6                	sd	a7,88(sp)
    1302:	1030                	addi	a2,sp,40
    1304:	e432                	sd	a2,8(sp)
    1306:	85aa                	mv	a1,a0
    1308:	4505                	li	a0,1
    130a:	00000097          	auipc	ra,0x0
    130e:	df2080e7          	jalr	-526(ra) # 10fc <vprintf>
    1312:	60e2                	ld	ra,24(sp)
    1314:	6125                	addi	sp,sp,96
    1316:	8082                	ret

0000000000001318 <cksum>:
    1318:	cdb1                	beqz	a1,1374 <cksum+0x5c>
    131a:	00b50833          	add	a6,a0,a1
    131e:	4781                	li	a5,0
    1320:	00002637          	lui	a2,0x2
    1324:	ca860613          	addi	a2,a2,-856 # 1ca8 <crctab>
    1328:	0505                	addi	a0,a0,1
    132a:	0087969b          	slliw	a3,a5,0x8
    132e:	0187d71b          	srliw	a4,a5,0x18
    1332:	fff54783          	lbu	a5,-1(a0)
    1336:	8f3d                	xor	a4,a4,a5
    1338:	1702                	slli	a4,a4,0x20
    133a:	9301                	srli	a4,a4,0x20
    133c:	070a                	slli	a4,a4,0x2
    133e:	9732                	add	a4,a4,a2
    1340:	431c                	lw	a5,0(a4)
    1342:	8fb5                	xor	a5,a5,a3
    1344:	2781                	sext.w	a5,a5
    1346:	fea811e3          	bne	a6,a0,1328 <cksum+0x10>
    134a:	00002637          	lui	a2,0x2
    134e:	ca860613          	addi	a2,a2,-856 # 1ca8 <crctab>
    1352:	0ff5f693          	andi	a3,a1,255
    1356:	81a1                	srli	a1,a1,0x8
    1358:	0087951b          	slliw	a0,a5,0x8
    135c:	0187d71b          	srliw	a4,a5,0x18
    1360:	8f35                	xor	a4,a4,a3
    1362:	070a                	slli	a4,a4,0x2
    1364:	9732                	add	a4,a4,a2
    1366:	431c                	lw	a5,0(a4)
    1368:	8fa9                	xor	a5,a5,a0
    136a:	2781                	sext.w	a5,a5
    136c:	f1fd                	bnez	a1,1352 <cksum+0x3a>
    136e:	fff7c513          	not	a0,a5
    1372:	8082                	ret
    1374:	4781                	li	a5,0
    1376:	bfe5                	j	136e <cksum+0x56>

0000000000001378 <swap_bytes>:
    1378:	ce19                	beqz	a2,1396 <swap_bytes+0x1e>
    137a:	87aa                	mv	a5,a0
    137c:	962a                	add	a2,a2,a0
    137e:	0007c703          	lbu	a4,0(a5)
    1382:	0005c683          	lbu	a3,0(a1)
    1386:	00d78023          	sb	a3,0(a5)
    138a:	00e58023          	sb	a4,0(a1)
    138e:	0785                	addi	a5,a5,1
    1390:	0585                	addi	a1,a1,1
    1392:	fec796e3          	bne	a5,a2,137e <swap_bytes+0x6>
    1396:	8082                	ret

0000000000001398 <random_init>:
    1398:	7139                	addi	sp,sp,-64
    139a:	fc06                	sd	ra,56(sp)
    139c:	f822                	sd	s0,48(sp)
    139e:	f426                	sd	s1,40(sp)
    13a0:	f04a                	sd	s2,32(sp)
    13a2:	ec4e                	sd	s3,24(sp)
    13a4:	e852                	sd	s4,16(sp)
    13a6:	c62a                	sw	a0,12(sp)
    13a8:	000037b7          	lui	a5,0x3
    13ac:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13b0:	eca5                	bnez	s1,1428 <random_init+0x90>
    13b2:	00003737          	lui	a4,0x3
    13b6:	01070913          	addi	s2,a4,16 # 3010 <s>
    13ba:	01070713          	addi	a4,a4,16
    13be:	87a6                	mv	a5,s1
    13c0:	10000693          	li	a3,256
    13c4:	00f70023          	sb	a5,0(a4)
    13c8:	2785                	addiw	a5,a5,1
    13ca:	0705                	addi	a4,a4,1
    13cc:	fed79ce3          	bne	a5,a3,13c4 <random_init+0x2c>
    13d0:	4401                	li	s0,0
    13d2:	000039b7          	lui	s3,0x3
    13d6:	01098993          	addi	s3,s3,16 # 3010 <s>
    13da:	10000a13          	li	s4,256
    13de:	0034f793          	andi	a5,s1,3
    13e2:	0818                	addi	a4,sp,16
    13e4:	97ba                	add	a5,a5,a4
    13e6:	ffc7c783          	lbu	a5,-4(a5)
    13ea:	00094703          	lbu	a4,0(s2)
    13ee:	9fb9                	addw	a5,a5,a4
    13f0:	9c3d                	addw	s0,s0,a5
    13f2:	0ff47413          	andi	s0,s0,255
    13f6:	4605                	li	a2,1
    13f8:	008985b3          	add	a1,s3,s0
    13fc:	854a                	mv	a0,s2
    13fe:	00000097          	auipc	ra,0x0
    1402:	f7a080e7          	jalr	-134(ra) # 1378 <swap_bytes>
    1406:	2485                	addiw	s1,s1,1
    1408:	0905                	addi	s2,s2,1
    140a:	fd449ae3          	bne	s1,s4,13de <random_init+0x46>
    140e:	000037b7          	lui	a5,0x3
    1412:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1416:	000037b7          	lui	a5,0x3
    141a:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    141e:	000037b7          	lui	a5,0x3
    1422:	4705                	li	a4,1
    1424:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1428:	70e2                	ld	ra,56(sp)
    142a:	7442                	ld	s0,48(sp)
    142c:	74a2                	ld	s1,40(sp)
    142e:	7902                	ld	s2,32(sp)
    1430:	69e2                	ld	s3,24(sp)
    1432:	6a42                	ld	s4,16(sp)
    1434:	6121                	addi	sp,sp,64
    1436:	8082                	ret

0000000000001438 <random_bytes>:
    1438:	7139                	addi	sp,sp,-64
    143a:	fc06                	sd	ra,56(sp)
    143c:	f822                	sd	s0,48(sp)
    143e:	f426                	sd	s1,40(sp)
    1440:	f04a                	sd	s2,32(sp)
    1442:	ec4e                	sd	s3,24(sp)
    1444:	e852                	sd	s4,16(sp)
    1446:	e456                	sd	s5,8(sp)
    1448:	e05a                	sd	s6,0(sp)
    144a:	892a                	mv	s2,a0
    144c:	8aae                	mv	s5,a1
    144e:	000037b7          	lui	a5,0x3
    1452:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1456:	c3c1                	beqz	a5,14d6 <random_bytes+0x9e>
    1458:	060a8563          	beqz	s5,14c2 <random_bytes+0x8a>
    145c:	9aca                	add	s5,s5,s2
    145e:	00003a37          	lui	s4,0x3
    1462:	000034b7          	lui	s1,0x3
    1466:	01048493          	addi	s1,s1,16 # 3010 <s>
    146a:	000039b7          	lui	s3,0x3
    146e:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1472:	2505                	addiw	a0,a0,1
    1474:	0ff57513          	andi	a0,a0,255
    1478:	00aa02a3          	sb	a0,5(s4)
    147c:	00a48b33          	add	s6,s1,a0
    1480:	000b4403          	lbu	s0,0(s6)
    1484:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1488:	9c3d                	addw	s0,s0,a5
    148a:	0ff47413          	andi	s0,s0,255
    148e:	00898223          	sb	s0,4(s3)
    1492:	4605                	li	a2,1
    1494:	008485b3          	add	a1,s1,s0
    1498:	855a                	mv	a0,s6
    149a:	00000097          	auipc	ra,0x0
    149e:	ede080e7          	jalr	-290(ra) # 1378 <swap_bytes>
    14a2:	9426                	add	s0,s0,s1
    14a4:	000b4783          	lbu	a5,0(s6)
    14a8:	00044703          	lbu	a4,0(s0)
    14ac:	9fb9                	addw	a5,a5,a4
    14ae:	0ff7f793          	andi	a5,a5,255
    14b2:	97a6                	add	a5,a5,s1
    14b4:	0007c783          	lbu	a5,0(a5)
    14b8:	00f90023          	sb	a5,0(s2)
    14bc:	0905                	addi	s2,s2,1
    14be:	fb2a98e3          	bne	s5,s2,146e <random_bytes+0x36>
    14c2:	70e2                	ld	ra,56(sp)
    14c4:	7442                	ld	s0,48(sp)
    14c6:	74a2                	ld	s1,40(sp)
    14c8:	7902                	ld	s2,32(sp)
    14ca:	69e2                	ld	s3,24(sp)
    14cc:	6a42                	ld	s4,16(sp)
    14ce:	6aa2                	ld	s5,8(sp)
    14d0:	6b02                	ld	s6,0(sp)
    14d2:	6121                	addi	sp,sp,64
    14d4:	8082                	ret
    14d6:	4501                	li	a0,0
    14d8:	00000097          	auipc	ra,0x0
    14dc:	ec0080e7          	jalr	-320(ra) # 1398 <random_init>
    14e0:	bfa5                	j	1458 <random_bytes+0x20>

00000000000014e2 <random_ulong>:
    14e2:	1101                	addi	sp,sp,-32
    14e4:	ec06                	sd	ra,24(sp)
    14e6:	45a1                	li	a1,8
    14e8:	0028                	addi	a0,sp,8
    14ea:	00000097          	auipc	ra,0x0
    14ee:	f4e080e7          	jalr	-178(ra) # 1438 <random_bytes>
    14f2:	6522                	ld	a0,8(sp)
    14f4:	60e2                	ld	ra,24(sp)
    14f6:	6105                	addi	sp,sp,32
    14f8:	8082                	ret

00000000000014fa <shuffle>:
    14fa:	c9b9                	beqz	a1,1550 <shuffle+0x56>
    14fc:	7179                	addi	sp,sp,-48
    14fe:	f406                	sd	ra,40(sp)
    1500:	f022                	sd	s0,32(sp)
    1502:	ec26                	sd	s1,24(sp)
    1504:	e84a                	sd	s2,16(sp)
    1506:	e44e                	sd	s3,8(sp)
    1508:	e052                	sd	s4,0(sp)
    150a:	8a2a                	mv	s4,a0
    150c:	89ae                	mv	s3,a1
    150e:	84b2                	mv	s1,a2
    1510:	892a                	mv	s2,a0
    1512:	4401                	li	s0,0
    1514:	00000097          	auipc	ra,0x0
    1518:	fce080e7          	jalr	-50(ra) # 14e2 <random_ulong>
    151c:	408985b3          	sub	a1,s3,s0
    1520:	02b575b3          	remu	a1,a0,a1
    1524:	95a2                	add	a1,a1,s0
    1526:	029585b3          	mul	a1,a1,s1
    152a:	8626                	mv	a2,s1
    152c:	95d2                	add	a1,a1,s4
    152e:	854a                	mv	a0,s2
    1530:	00000097          	auipc	ra,0x0
    1534:	e48080e7          	jalr	-440(ra) # 1378 <swap_bytes>
    1538:	0405                	addi	s0,s0,1
    153a:	9926                	add	s2,s2,s1
    153c:	fc899ce3          	bne	s3,s0,1514 <shuffle+0x1a>
    1540:	70a2                	ld	ra,40(sp)
    1542:	7402                	ld	s0,32(sp)
    1544:	64e2                	ld	s1,24(sp)
    1546:	6942                	ld	s2,16(sp)
    1548:	69a2                	ld	s3,8(sp)
    154a:	6a02                	ld	s4,0(sp)
    154c:	6145                	addi	sp,sp,48
    154e:	8082                	ret
    1550:	8082                	ret

0000000000001552 <arc4_init>:
    1552:	100500a3          	sb	zero,257(a0)
    1556:	10050023          	sb	zero,256(a0)
    155a:	4781                	li	a5,0
    155c:	10000693          	li	a3,256
    1560:	00f50733          	add	a4,a0,a5
    1564:	00f70023          	sb	a5,0(a4)
    1568:	0785                	addi	a5,a5,1
    156a:	fed79be3          	bne	a5,a3,1560 <arc4_init+0xe>
    156e:	86aa                	mv	a3,a0
    1570:	10050e13          	addi	t3,a0,256
    1574:	4701                	li	a4,0
    1576:	4781                	li	a5,0
    1578:	0006c883          	lbu	a7,0(a3)
    157c:	00f58833          	add	a6,a1,a5
    1580:	00084803          	lbu	a6,0(a6)
    1584:	00e8873b          	addw	a4,a7,a4
    1588:	00e8073b          	addw	a4,a6,a4
    158c:	0ff77713          	andi	a4,a4,255
    1590:	00e50833          	add	a6,a0,a4
    1594:	00084303          	lbu	t1,0(a6)
    1598:	00668023          	sb	t1,0(a3)
    159c:	01180023          	sb	a7,0(a6)
    15a0:	0785                	addi	a5,a5,1
    15a2:	00c7b833          	sltu	a6,a5,a2
    15a6:	41000833          	neg	a6,a6
    15aa:	0107f7b3          	and	a5,a5,a6
    15ae:	0685                	addi	a3,a3,1
    15b0:	fdc694e3          	bne	a3,t3,1578 <arc4_init+0x26>
    15b4:	8082                	ret

00000000000015b6 <arc4_crypt>:
    15b6:	10054e03          	lbu	t3,256(a0)
    15ba:	10154803          	lbu	a6,257(a0)
    15be:	fff60e93          	addi	t4,a2,-1
    15c2:	c225                	beqz	a2,1622 <arc4_crypt+0x6c>
    15c4:	00c588b3          	add	a7,a1,a2
    15c8:	86ae                	mv	a3,a1
    15ca:	001e031b          	addiw	t1,t3,1
    15ce:	40b3033b          	subw	t1,t1,a1
    15d2:	00d3073b          	addw	a4,t1,a3
    15d6:	0ff77713          	andi	a4,a4,255
    15da:	972a                	add	a4,a4,a0
    15dc:	00074603          	lbu	a2,0(a4)
    15e0:	0106083b          	addw	a6,a2,a6
    15e4:	0ff87813          	andi	a6,a6,255
    15e8:	010507b3          	add	a5,a0,a6
    15ec:	0007c583          	lbu	a1,0(a5)
    15f0:	00b70023          	sb	a1,0(a4)
    15f4:	00c78023          	sb	a2,0(a5)
    15f8:	0685                	addi	a3,a3,1
    15fa:	00074783          	lbu	a5,0(a4)
    15fe:	9fb1                	addw	a5,a5,a2
    1600:	0ff7f793          	andi	a5,a5,255
    1604:	97aa                	add	a5,a5,a0
    1606:	0007c783          	lbu	a5,0(a5)
    160a:	fff6c703          	lbu	a4,-1(a3)
    160e:	8fb9                	xor	a5,a5,a4
    1610:	fef68fa3          	sb	a5,-1(a3)
    1614:	fb169fe3          	bne	a3,a7,15d2 <arc4_crypt+0x1c>
    1618:	2e85                	addiw	t4,t4,1
    161a:	01ce8e3b          	addw	t3,t4,t3
    161e:	0ffe7e13          	andi	t3,t3,255
    1622:	11c50023          	sb	t3,256(a0)
    1626:	110500a3          	sb	a6,257(a0)
    162a:	8082                	ret

000000000000162c <_main>:
    162c:	1141                	addi	sp,sp,-16
    162e:	e406                	sd	ra,8(sp)
    1630:	00000097          	auipc	ra,0x0
    1634:	9d0080e7          	jalr	-1584(ra) # 1000 <main>
    1638:	4501                	li	a0,0
    163a:	00000097          	auipc	ra,0x0
    163e:	578080e7          	jalr	1400(ra) # 1bb2 <exit>
    1642:	60a2                	ld	ra,8(sp)
    1644:	0141                	addi	sp,sp,16
    1646:	8082                	ret

0000000000001648 <strcmp>:
    1648:	00054783          	lbu	a5,0(a0)
    164c:	cb91                	beqz	a5,1660 <strcmp+0x18>
    164e:	0005c703          	lbu	a4,0(a1)
    1652:	00f71763          	bne	a4,a5,1660 <strcmp+0x18>
    1656:	0505                	addi	a0,a0,1
    1658:	0585                	addi	a1,a1,1
    165a:	00054783          	lbu	a5,0(a0)
    165e:	fbe5                	bnez	a5,164e <strcmp+0x6>
    1660:	0005c503          	lbu	a0,0(a1)
    1664:	40a7853b          	subw	a0,a5,a0
    1668:	8082                	ret

000000000000166a <strcpy>:
    166a:	87aa                	mv	a5,a0
    166c:	0585                	addi	a1,a1,1
    166e:	0785                	addi	a5,a5,1
    1670:	fff5c703          	lbu	a4,-1(a1)
    1674:	fee78fa3          	sb	a4,-1(a5)
    1678:	fb75                	bnez	a4,166c <strcpy+0x2>
    167a:	8082                	ret

000000000000167c <strlen>:
    167c:	00054783          	lbu	a5,0(a0)
    1680:	cf81                	beqz	a5,1698 <strlen+0x1c>
    1682:	0505                	addi	a0,a0,1
    1684:	87aa                	mv	a5,a0
    1686:	4685                	li	a3,1
    1688:	9e89                	subw	a3,a3,a0
    168a:	00f6853b          	addw	a0,a3,a5
    168e:	0785                	addi	a5,a5,1
    1690:	fff7c703          	lbu	a4,-1(a5)
    1694:	fb7d                	bnez	a4,168a <strlen+0xe>
    1696:	8082                	ret
    1698:	4501                	li	a0,0
    169a:	8082                	ret

000000000000169c <memset>:
    169c:	ca19                	beqz	a2,16b2 <memset+0x16>
    169e:	87aa                	mv	a5,a0
    16a0:	1602                	slli	a2,a2,0x20
    16a2:	9201                	srli	a2,a2,0x20
    16a4:	00a60733          	add	a4,a2,a0
    16a8:	00b78023          	sb	a1,0(a5)
    16ac:	0785                	addi	a5,a5,1
    16ae:	fee79de3          	bne	a5,a4,16a8 <memset+0xc>
    16b2:	8082                	ret

00000000000016b4 <memcmp>:
    16b4:	1101                	addi	sp,sp,-32
    16b6:	ec06                	sd	ra,24(sp)
    16b8:	e822                	sd	s0,16(sp)
    16ba:	e426                	sd	s1,8(sp)
    16bc:	e04a                	sd	s2,0(sp)
    16be:	892a                	mv	s2,a0
    16c0:	842e                	mv	s0,a1
    16c2:	84b2                	mv	s1,a2
    16c4:	c915                	beqz	a0,16f8 <memcmp+0x44>
    16c6:	c5ad                	beqz	a1,1730 <memcmp+0x7c>
    16c8:	fff60713          	addi	a4,a2,-1
    16cc:	c645                	beqz	a2,1774 <memcmp+0xc0>
    16ce:	87ca                	mv	a5,s2
    16d0:	00190613          	addi	a2,s2,1
    16d4:	963a                	add	a2,a2,a4
    16d6:	0007c683          	lbu	a3,0(a5)
    16da:	00044703          	lbu	a4,0(s0)
    16de:	08e69463          	bne	a3,a4,1766 <memcmp+0xb2>
    16e2:	0785                	addi	a5,a5,1
    16e4:	0405                	addi	s0,s0,1
    16e6:	fec798e3          	bne	a5,a2,16d6 <memcmp+0x22>
    16ea:	4501                	li	a0,0
    16ec:	60e2                	ld	ra,24(sp)
    16ee:	6442                	ld	s0,16(sp)
    16f0:	64a2                	ld	s1,8(sp)
    16f2:	6902                	ld	s2,0(sp)
    16f4:	6105                	addi	sp,sp,32
    16f6:	8082                	ret
    16f8:	4501                	li	a0,0
    16fa:	da6d                	beqz	a2,16ec <memcmp+0x38>
    16fc:	03200693          	li	a3,50
    1700:	00002637          	lui	a2,0x2
    1704:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    1708:	000025b7          	lui	a1,0x2
    170c:	0b858593          	addi	a1,a1,184 # 20b8 <crctab+0x410>
    1710:	4509                	li	a0,2
    1712:	00000097          	auipc	ra,0x0
    1716:	bbc080e7          	jalr	-1092(ra) # 12ce <fprintf>
    171a:	650d                	lui	a0,0x3
    171c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1720:	00000097          	auipc	ra,0x0
    1724:	492080e7          	jalr	1170(ra) # 1bb2 <exit>
    1728:	fff48713          	addi	a4,s1,-1
    172c:	f04d                	bnez	s0,16ce <memcmp+0x1a>
    172e:	a011                	j	1732 <memcmp+0x7e>
    1730:	c221                	beqz	a2,1770 <memcmp+0xbc>
    1732:	03300693          	li	a3,51
    1736:	00002637          	lui	a2,0x2
    173a:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    173e:	000025b7          	lui	a1,0x2
    1742:	10058593          	addi	a1,a1,256 # 2100 <crctab+0x458>
    1746:	4509                	li	a0,2
    1748:	00000097          	auipc	ra,0x0
    174c:	b86080e7          	jalr	-1146(ra) # 12ce <fprintf>
    1750:	650d                	lui	a0,0x3
    1752:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1756:	00000097          	auipc	ra,0x0
    175a:	45c080e7          	jalr	1116(ra) # 1bb2 <exit>
    175e:	fff48713          	addi	a4,s1,-1
    1762:	4401                	li	s0,0
    1764:	b7ad                	j	16ce <memcmp+0x1a>
    1766:	4505                	li	a0,1
    1768:	f8d762e3          	bltu	a4,a3,16ec <memcmp+0x38>
    176c:	557d                	li	a0,-1
    176e:	bfbd                	j	16ec <memcmp+0x38>
    1770:	4501                	li	a0,0
    1772:	bfad                	j	16ec <memcmp+0x38>
    1774:	4501                	li	a0,0
    1776:	bf9d                	j	16ec <memcmp+0x38>

0000000000001778 <memcpy>:
    1778:	1101                	addi	sp,sp,-32
    177a:	ec06                	sd	ra,24(sp)
    177c:	e822                	sd	s0,16(sp)
    177e:	e426                	sd	s1,8(sp)
    1780:	e04a                	sd	s2,0(sp)
    1782:	84aa                	mv	s1,a0
    1784:	842e                	mv	s0,a1
    1786:	8932                	mv	s2,a2
    1788:	c51d                	beqz	a0,17b6 <memcpy+0x3e>
    178a:	c1ad                	beqz	a1,17ec <memcpy+0x74>
    178c:	fff60693          	addi	a3,a2,-1
    1790:	ce01                	beqz	a2,17a8 <memcpy+0x30>
    1792:	0685                	addi	a3,a3,1
    1794:	96a6                	add	a3,a3,s1
    1796:	87a6                	mv	a5,s1
    1798:	0405                	addi	s0,s0,1
    179a:	0785                	addi	a5,a5,1
    179c:	fff44703          	lbu	a4,-1(s0)
    17a0:	fee78fa3          	sb	a4,-1(a5)
    17a4:	fed79ae3          	bne	a5,a3,1798 <memcpy+0x20>
    17a8:	8526                	mv	a0,s1
    17aa:	60e2                	ld	ra,24(sp)
    17ac:	6442                	ld	s0,16(sp)
    17ae:	64a2                	ld	s1,8(sp)
    17b0:	6902                	ld	s2,0(sp)
    17b2:	6105                	addi	sp,sp,32
    17b4:	8082                	ret
    17b6:	da6d                	beqz	a2,17a8 <memcpy+0x30>
    17b8:	04000693          	li	a3,64
    17bc:	00002637          	lui	a2,0x2
    17c0:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    17c4:	000025b7          	lui	a1,0x2
    17c8:	14858593          	addi	a1,a1,328 # 2148 <crctab+0x4a0>
    17cc:	4509                	li	a0,2
    17ce:	00000097          	auipc	ra,0x0
    17d2:	b00080e7          	jalr	-1280(ra) # 12ce <fprintf>
    17d6:	650d                	lui	a0,0x3
    17d8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17dc:	00000097          	auipc	ra,0x0
    17e0:	3d6080e7          	jalr	982(ra) # 1bb2 <exit>
    17e4:	fff90693          	addi	a3,s2,-1
    17e8:	f44d                	bnez	s0,1792 <memcpy+0x1a>
    17ea:	a011                	j	17ee <memcpy+0x76>
    17ec:	de55                	beqz	a2,17a8 <memcpy+0x30>
    17ee:	04100693          	li	a3,65
    17f2:	00002637          	lui	a2,0x2
    17f6:	0a860613          	addi	a2,a2,168 # 20a8 <crctab+0x400>
    17fa:	000025b7          	lui	a1,0x2
    17fe:	19058593          	addi	a1,a1,400 # 2190 <crctab+0x4e8>
    1802:	4509                	li	a0,2
    1804:	00000097          	auipc	ra,0x0
    1808:	aca080e7          	jalr	-1334(ra) # 12ce <fprintf>
    180c:	650d                	lui	a0,0x3
    180e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1812:	00000097          	auipc	ra,0x0
    1816:	3a0080e7          	jalr	928(ra) # 1bb2 <exit>
    181a:	fff90693          	addi	a3,s2,-1
    181e:	4401                	li	s0,0
    1820:	bf8d                	j	1792 <memcpy+0x1a>

0000000000001822 <itoa>:
    1822:	1101                	addi	sp,sp,-32
    1824:	ec06                	sd	ra,24(sp)
    1826:	e822                	sd	s0,16(sp)
    1828:	e426                	sd	s1,8(sp)
    182a:	842a                	mv	s0,a0
    182c:	41f5d71b          	sraiw	a4,a1,0x1f
    1830:	00e5c7b3          	xor	a5,a1,a4
    1834:	9f99                	subw	a5,a5,a4
    1836:	84aa                	mv	s1,a0
    1838:	862a                	mv	a2,a0
    183a:	4681                	li	a3,0
    183c:	4529                	li	a0,10
    183e:	4825                	li	a6,9
    1840:	88b6                	mv	a7,a3
    1842:	2685                	addiw	a3,a3,1
    1844:	02a7e73b          	remw	a4,a5,a0
    1848:	0307071b          	addiw	a4,a4,48
    184c:	00e60023          	sb	a4,0(a2)
    1850:	873e                	mv	a4,a5
    1852:	02a7c7bb          	divw	a5,a5,a0
    1856:	0605                	addi	a2,a2,1
    1858:	fee844e3          	blt	a6,a4,1840 <itoa+0x1e>
    185c:	0405c863          	bltz	a1,18ac <itoa+0x8a>
    1860:	96a2                	add	a3,a3,s0
    1862:	00068023          	sb	zero,0(a3)
    1866:	8522                	mv	a0,s0
    1868:	00000097          	auipc	ra,0x0
    186c:	e14080e7          	jalr	-492(ra) # 167c <strlen>
    1870:	fff5071b          	addiw	a4,a0,-1
    1874:	02e05763          	blez	a4,18a2 <itoa+0x80>
    1878:	9722                	add	a4,a4,s0
    187a:	4681                	li	a3,0
    187c:	0004c783          	lbu	a5,0(s1)
    1880:	00074603          	lbu	a2,0(a4)
    1884:	00c48023          	sb	a2,0(s1)
    1888:	00f70023          	sb	a5,0(a4)
    188c:	0016879b          	addiw	a5,a3,1
    1890:	0007869b          	sext.w	a3,a5
    1894:	0485                	addi	s1,s1,1
    1896:	177d                	addi	a4,a4,-1
    1898:	fff7c793          	not	a5,a5
    189c:	9fa9                	addw	a5,a5,a0
    189e:	fcf6cfe3          	blt	a3,a5,187c <itoa+0x5a>
    18a2:	60e2                	ld	ra,24(sp)
    18a4:	6442                	ld	s0,16(sp)
    18a6:	64a2                	ld	s1,8(sp)
    18a8:	6105                	addi	sp,sp,32
    18aa:	8082                	ret
    18ac:	96a2                	add	a3,a3,s0
    18ae:	02d00793          	li	a5,45
    18b2:	00f68023          	sb	a5,0(a3)
    18b6:	0028869b          	addiw	a3,a7,2
    18ba:	b75d                	j	1860 <itoa+0x3e>

00000000000018bc <atoi>:
    18bc:	00054783          	lbu	a5,0(a0)
    18c0:	02000713          	li	a4,32
    18c4:	00e79763          	bne	a5,a4,18d2 <atoi+0x16>
    18c8:	0505                	addi	a0,a0,1
    18ca:	00054783          	lbu	a5,0(a0)
    18ce:	fee78de3          	beq	a5,a4,18c8 <atoi+0xc>
    18d2:	02b00713          	li	a4,43
    18d6:	04e78663          	beq	a5,a4,1922 <atoi+0x66>
    18da:	02d00713          	li	a4,45
    18de:	4805                	li	a6,1
    18e0:	04e78463          	beq	a5,a4,1928 <atoi+0x6c>
    18e4:	00054683          	lbu	a3,0(a0)
    18e8:	fd06879b          	addiw	a5,a3,-48
    18ec:	0ff7f793          	andi	a5,a5,255
    18f0:	4725                	li	a4,9
    18f2:	02f76e63          	bltu	a4,a5,192e <atoi+0x72>
    18f6:	4601                	li	a2,0
    18f8:	45a5                	li	a1,9
    18fa:	0505                	addi	a0,a0,1
    18fc:	0026179b          	slliw	a5,a2,0x2
    1900:	9fb1                	addw	a5,a5,a2
    1902:	0017979b          	slliw	a5,a5,0x1
    1906:	9fb5                	addw	a5,a5,a3
    1908:	fd07861b          	addiw	a2,a5,-48
    190c:	00054683          	lbu	a3,0(a0)
    1910:	fd06871b          	addiw	a4,a3,-48
    1914:	0ff77713          	andi	a4,a4,255
    1918:	fee5f1e3          	bgeu	a1,a4,18fa <atoi+0x3e>
    191c:	02c8053b          	mulw	a0,a6,a2
    1920:	8082                	ret
    1922:	0505                	addi	a0,a0,1
    1924:	4805                	li	a6,1
    1926:	bf7d                	j	18e4 <atoi+0x28>
    1928:	0505                	addi	a0,a0,1
    192a:	587d                	li	a6,-1
    192c:	bf65                	j	18e4 <atoi+0x28>
    192e:	4601                	li	a2,0
    1930:	b7f5                	j	191c <atoi+0x60>

0000000000001932 <check_file_handle>:
    1932:	d8010113          	addi	sp,sp,-640
    1936:	26113c23          	sd	ra,632(sp)
    193a:	26813823          	sd	s0,624(sp)
    193e:	26913423          	sd	s1,616(sp)
    1942:	27213023          	sd	s2,608(sp)
    1946:	25313c23          	sd	s3,600(sp)
    194a:	25413823          	sd	s4,592(sp)
    194e:	25513423          	sd	s5,584(sp)
    1952:	25613023          	sd	s6,576(sp)
    1956:	23713c23          	sd	s7,568(sp)
    195a:	23813823          	sd	s8,560(sp)
    195e:	23913423          	sd	s9,552(sp)
    1962:	23a13023          	sd	s10,544(sp)
    1966:	21b13c23          	sd	s11,536(sp)
    196a:	8baa                	mv	s7,a0
    196c:	8a2e                	mv	s4,a1
    196e:	8c32                	mv	s8,a2
    1970:	89b6                	mv	s3,a3
    1972:	040c                	addi	a1,sp,512
    1974:	00000097          	auipc	ra,0x0
    1978:	28e080e7          	jalr	654(ra) # 1c02 <fstat>
    197c:	20813603          	ld	a2,520(sp)
    1980:	03361163          	bne	a2,s3,19a2 <check_file_handle+0x70>
    1984:	06098763          	beqz	s3,19f2 <check_file_handle+0xc0>
    1988:	4901                	li	s2,0
    198a:	20000a93          	li	s5,512
    198e:	00002cb7          	lui	s9,0x2
    1992:	00002db7          	lui	s11,0x2
    1996:	6b0d                	lui	s6,0x3
    1998:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    199c:	00002d37          	lui	s10,0x2
    19a0:	aa39                	j	1abe <check_file_handle+0x18c>
    19a2:	86ce                	mv	a3,s3
    19a4:	85d2                	mv	a1,s4
    19a6:	00002537          	lui	a0,0x2
    19aa:	1d850513          	addi	a0,a0,472 # 21d8 <crctab+0x530>
    19ae:	00000097          	auipc	ra,0x0
    19b2:	942080e7          	jalr	-1726(ra) # 12f0 <printf>
    19b6:	fc0999e3          	bnez	s3,1988 <check_file_handle+0x56>
    19ba:	20813683          	ld	a3,520(sp)
    19be:	03368a63          	beq	a3,s3,19f2 <check_file_handle+0xc0>
    19c2:	0a600813          	li	a6,166
    19c6:	000027b7          	lui	a5,0x2
    19ca:	0a878793          	addi	a5,a5,168 # 20a8 <crctab+0x400>
    19ce:	874e                	mv	a4,s3
    19d0:	8652                	mv	a2,s4
    19d2:	000025b7          	lui	a1,0x2
    19d6:	2a858593          	addi	a1,a1,680 # 22a8 <crctab+0x600>
    19da:	4509                	li	a0,2
    19dc:	00000097          	auipc	ra,0x0
    19e0:	8f2080e7          	jalr	-1806(ra) # 12ce <fprintf>
    19e4:	650d                	lui	a0,0x3
    19e6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19ea:	00000097          	auipc	ra,0x0
    19ee:	1c8080e7          	jalr	456(ra) # 1bb2 <exit>
    19f2:	85d2                	mv	a1,s4
    19f4:	00002537          	lui	a0,0x2
    19f8:	2f050513          	addi	a0,a0,752 # 22f0 <crctab+0x648>
    19fc:	00000097          	auipc	ra,0x0
    1a00:	8f4080e7          	jalr	-1804(ra) # 12f0 <printf>
    1a04:	27813083          	ld	ra,632(sp)
    1a08:	27013403          	ld	s0,624(sp)
    1a0c:	26813483          	ld	s1,616(sp)
    1a10:	26013903          	ld	s2,608(sp)
    1a14:	25813983          	ld	s3,600(sp)
    1a18:	25013a03          	ld	s4,592(sp)
    1a1c:	24813a83          	ld	s5,584(sp)
    1a20:	24013b03          	ld	s6,576(sp)
    1a24:	23813b83          	ld	s7,568(sp)
    1a28:	23013c03          	ld	s8,560(sp)
    1a2c:	22813c83          	ld	s9,552(sp)
    1a30:	22013d03          	ld	s10,544(sp)
    1a34:	21813d83          	ld	s11,536(sp)
    1a38:	28010113          	addi	sp,sp,640
    1a3c:	8082                	ret
    1a3e:	09d00893          	li	a7,157
    1a42:	0a8c8813          	addi	a6,s9,168 # 20a8 <crctab+0x400>
    1a46:	87aa                	mv	a5,a0
    1a48:	8752                	mv	a4,s4
    1a4a:	86ca                	mv	a3,s2
    1a4c:	8622                	mv	a2,s0
    1a4e:	208d8593          	addi	a1,s11,520 # 2208 <crctab+0x560>
    1a52:	4509                	li	a0,2
    1a54:	00000097          	auipc	ra,0x0
    1a58:	87a080e7          	jalr	-1926(ra) # 12ce <fprintf>
    1a5c:	855a                	mv	a0,s6
    1a5e:	00000097          	auipc	ra,0x0
    1a62:	154080e7          	jalr	340(ra) # 1bb2 <exit>
    1a66:	a89d                	j	1adc <check_file_handle+0x1aa>
    1a68:	00160593          	addi	a1,a2,1
    1a6c:	0285f163          	bgeu	a1,s0,1a8e <check_file_handle+0x15c>
    1a70:	00c10733          	add	a4,sp,a2
    1a74:	00b487b3          	add	a5,s1,a1
    1a78:	00174683          	lbu	a3,1(a4)
    1a7c:	0007c783          	lbu	a5,0(a5)
    1a80:	00f68763          	beq	a3,a5,1a8e <check_file_handle+0x15c>
    1a84:	0585                	addi	a1,a1,1
    1a86:	0705                	addi	a4,a4,1
    1a88:	feb416e3          	bne	s0,a1,1a74 <check_file_handle+0x142>
    1a8c:	85a2                	mv	a1,s0
    1a8e:	08100813          	li	a6,129
    1a92:	0a8c8793          	addi	a5,s9,168
    1a96:	8752                	mv	a4,s4
    1a98:	012606b3          	add	a3,a2,s2
    1a9c:	40c58633          	sub	a2,a1,a2
    1aa0:	250d0593          	addi	a1,s10,592 # 2250 <crctab+0x5a8>
    1aa4:	4509                	li	a0,2
    1aa6:	00000097          	auipc	ra,0x0
    1aaa:	828080e7          	jalr	-2008(ra) # 12ce <fprintf>
    1aae:	855a                	mv	a0,s6
    1ab0:	00000097          	auipc	ra,0x0
    1ab4:	102080e7          	jalr	258(ra) # 1bb2 <exit>
    1ab8:	9922                	add	s2,s2,s0
    1aba:	f13970e3          	bgeu	s2,s3,19ba <check_file_handle+0x88>
    1abe:	41298433          	sub	s0,s3,s2
    1ac2:	008af363          	bgeu	s5,s0,1ac8 <check_file_handle+0x196>
    1ac6:	8456                	mv	s0,s5
    1ac8:	0004061b          	sext.w	a2,s0
    1acc:	858a                	mv	a1,sp
    1ace:	855e                	mv	a0,s7
    1ad0:	00000097          	auipc	ra,0x0
    1ad4:	10a080e7          	jalr	266(ra) # 1bda <read>
    1ad8:	f68513e3          	bne	a0,s0,1a3e <check_file_handle+0x10c>
    1adc:	012c04b3          	add	s1,s8,s2
    1ae0:	8622                	mv	a2,s0
    1ae2:	85a6                	mv	a1,s1
    1ae4:	850a                	mv	a0,sp
    1ae6:	00000097          	auipc	ra,0x0
    1aea:	bce080e7          	jalr	-1074(ra) # 16b4 <memcmp>
    1aee:	d569                	beqz	a0,1ab8 <check_file_handle+0x186>
    1af0:	03298163          	beq	s3,s2,1b12 <check_file_handle+0x1e0>
    1af4:	870a                	mv	a4,sp
    1af6:	4601                	li	a2,0
    1af8:	00c487b3          	add	a5,s1,a2
    1afc:	00074683          	lbu	a3,0(a4)
    1b00:	0007c783          	lbu	a5,0(a5)
    1b04:	f6f692e3          	bne	a3,a5,1a68 <check_file_handle+0x136>
    1b08:	0605                	addi	a2,a2,1
    1b0a:	0705                	addi	a4,a4,1
    1b0c:	fe8666e3          	bltu	a2,s0,1af8 <check_file_handle+0x1c6>
    1b10:	bfa1                	j	1a68 <check_file_handle+0x136>
    1b12:	4601                	li	a2,0
    1b14:	4585                	li	a1,1
    1b16:	bfa5                	j	1a8e <check_file_handle+0x15c>

0000000000001b18 <check_file>:
    1b18:	7179                	addi	sp,sp,-48
    1b1a:	f406                	sd	ra,40(sp)
    1b1c:	f022                	sd	s0,32(sp)
    1b1e:	ec26                	sd	s1,24(sp)
    1b20:	e84a                	sd	s2,16(sp)
    1b22:	e44e                	sd	s3,8(sp)
    1b24:	84aa                	mv	s1,a0
    1b26:	892e                	mv	s2,a1
    1b28:	89b2                	mv	s3,a2
    1b2a:	4581                	li	a1,0
    1b2c:	00000097          	auipc	ra,0x0
    1b30:	0a6080e7          	jalr	166(ra) # 1bd2 <open>
    1b34:	842a                	mv	s0,a0
    1b36:	4789                	li	a5,2
    1b38:	02a7df63          	bge	a5,a0,1b76 <check_file+0x5e>
    1b3c:	86ce                	mv	a3,s3
    1b3e:	864a                	mv	a2,s2
    1b40:	85a6                	mv	a1,s1
    1b42:	8522                	mv	a0,s0
    1b44:	00000097          	auipc	ra,0x0
    1b48:	dee080e7          	jalr	-530(ra) # 1932 <check_file_handle>
    1b4c:	85a6                	mv	a1,s1
    1b4e:	00002537          	lui	a0,0x2
    1b52:	37850513          	addi	a0,a0,888 # 2378 <crctab+0x6d0>
    1b56:	fffff097          	auipc	ra,0xfffff
    1b5a:	79a080e7          	jalr	1946(ra) # 12f0 <printf>
    1b5e:	8522                	mv	a0,s0
    1b60:	00000097          	auipc	ra,0x0
    1b64:	09a080e7          	jalr	154(ra) # 1bfa <close>
    1b68:	70a2                	ld	ra,40(sp)
    1b6a:	7402                	ld	s0,32(sp)
    1b6c:	64e2                	ld	s1,24(sp)
    1b6e:	6942                	ld	s2,16(sp)
    1b70:	69a2                	ld	s3,8(sp)
    1b72:	6145                	addi	sp,sp,48
    1b74:	8082                	ret
    1b76:	0ae00713          	li	a4,174
    1b7a:	000026b7          	lui	a3,0x2
    1b7e:	0a868693          	addi	a3,a3,168 # 20a8 <crctab+0x400>
    1b82:	8626                	mv	a2,s1
    1b84:	000025b7          	lui	a1,0x2
    1b88:	31058593          	addi	a1,a1,784 # 2310 <crctab+0x668>
    1b8c:	4509                	li	a0,2
    1b8e:	fffff097          	auipc	ra,0xfffff
    1b92:	740080e7          	jalr	1856(ra) # 12ce <fprintf>
    1b96:	650d                	lui	a0,0x3
    1b98:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b9c:	00000097          	auipc	ra,0x0
    1ba0:	016080e7          	jalr	22(ra) # 1bb2 <exit>
    1ba4:	bf61                	j	1b3c <check_file+0x24>

0000000000001ba6 <r_sp>:
    1ba6:	850a                	mv	a0,sp
    1ba8:	8082                	ret

0000000000001baa <halt>:
    1baa:	4885                	li	a7,1
    1bac:	00000073          	ecall
    1bb0:	8082                	ret

0000000000001bb2 <exit>:
    1bb2:	4889                	li	a7,2
    1bb4:	00000073          	ecall
    1bb8:	8082                	ret

0000000000001bba <exec>:
    1bba:	488d                	li	a7,3
    1bbc:	00000073          	ecall
    1bc0:	8082                	ret

0000000000001bc2 <wait>:
    1bc2:	4891                	li	a7,4
    1bc4:	00000073          	ecall
    1bc8:	8082                	ret

0000000000001bca <remove>:
    1bca:	4895                	li	a7,5
    1bcc:	00000073          	ecall
    1bd0:	8082                	ret

0000000000001bd2 <open>:
    1bd2:	4899                	li	a7,6
    1bd4:	00000073          	ecall
    1bd8:	8082                	ret

0000000000001bda <read>:
    1bda:	489d                	li	a7,7
    1bdc:	00000073          	ecall
    1be0:	8082                	ret

0000000000001be2 <write>:
    1be2:	48a1                	li	a7,8
    1be4:	00000073          	ecall
    1be8:	8082                	ret

0000000000001bea <seek>:
    1bea:	48a5                	li	a7,9
    1bec:	00000073          	ecall
    1bf0:	8082                	ret

0000000000001bf2 <tell>:
    1bf2:	48a9                	li	a7,10
    1bf4:	00000073          	ecall
    1bf8:	8082                	ret

0000000000001bfa <close>:
    1bfa:	48ad                	li	a7,11
    1bfc:	00000073          	ecall
    1c00:	8082                	ret

0000000000001c02 <fstat>:
    1c02:	48b1                	li	a7,12
    1c04:	00000073          	ecall
    1c08:	8082                	ret

0000000000001c0a <mmap>:
    1c0a:	48b5                	li	a7,13
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <munmap>:
    1c12:	48b9                	li	a7,14
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <chdir>:
    1c1a:	48bd                	li	a7,15
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <mkdir>:
    1c22:	48c1                	li	a7,16
    1c24:	00000073          	ecall
    1c28:	8082                	ret
