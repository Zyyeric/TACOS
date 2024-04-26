
build/user/userprogs/bad-read:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	00002583          	lw	a1,0(zero) # 0 <main-0x1000>
    1008:	00002537          	lui	a0,0x2
    100c:	c3050513          	addi	a0,a0,-976 # 1c30 <mkdir+0xa>
    1010:	00000097          	auipc	ra,0x0
    1014:	2e4080e7          	jalr	740(ra) # 12f4 <printf>
    1018:	46a1                	li	a3,8
    101a:	00002637          	lui	a2,0x2
    101e:	c7060613          	addi	a2,a2,-912 # 1c70 <mkdir+0x4a>
    1022:	000025b7          	lui	a1,0x2
    1026:	c9058593          	addi	a1,a1,-880 # 1c90 <mkdir+0x6a>
    102a:	4509                	li	a0,2
    102c:	00000097          	auipc	ra,0x0
    1030:	2a6080e7          	jalr	678(ra) # 12d2 <fprintf>
    1034:	650d                	lui	a0,0x3
    1036:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    103a:	00001097          	auipc	ra,0x1
    103e:	b7c080e7          	jalr	-1156(ra) # 1bb6 <exit>
    1042:	60a2                	ld	ra,8(sp)
    1044:	0141                	addi	sp,sp,16
    1046:	8082                	ret

0000000000001048 <putc>:
    1048:	1101                	addi	sp,sp,-32
    104a:	ec06                	sd	ra,24(sp)
    104c:	00b107a3          	sb	a1,15(sp)
    1050:	4605                	li	a2,1
    1052:	00f10593          	addi	a1,sp,15
    1056:	00001097          	auipc	ra,0x1
    105a:	b90080e7          	jalr	-1136(ra) # 1be6 <write>
    105e:	60e2                	ld	ra,24(sp)
    1060:	6105                	addi	sp,sp,32
    1062:	8082                	ret

0000000000001064 <printint>:
    1064:	7179                	addi	sp,sp,-48
    1066:	f406                	sd	ra,40(sp)
    1068:	f022                	sd	s0,32(sp)
    106a:	ec26                	sd	s1,24(sp)
    106c:	e84a                	sd	s2,16(sp)
    106e:	84aa                	mv	s1,a0
    1070:	c299                	beqz	a3,1076 <printint+0x12>
    1072:	0805c363          	bltz	a1,10f8 <printint+0x94>
    1076:	2581                	sext.w	a1,a1
    1078:	4881                	li	a7,0
    107a:	868a                	mv	a3,sp
    107c:	4701                	li	a4,0
    107e:	2601                	sext.w	a2,a2
    1080:	00002537          	lui	a0,0x2
    1084:	cc850513          	addi	a0,a0,-824 # 1cc8 <digits>
    1088:	883a                	mv	a6,a4
    108a:	2705                	addiw	a4,a4,1
    108c:	02c5f7bb          	remuw	a5,a1,a2
    1090:	1782                	slli	a5,a5,0x20
    1092:	9381                	srli	a5,a5,0x20
    1094:	97aa                	add	a5,a5,a0
    1096:	0007c783          	lbu	a5,0(a5)
    109a:	00f68023          	sb	a5,0(a3)
    109e:	0005879b          	sext.w	a5,a1
    10a2:	02c5d5bb          	divuw	a1,a1,a2
    10a6:	0685                	addi	a3,a3,1
    10a8:	fec7f0e3          	bgeu	a5,a2,1088 <printint+0x24>
    10ac:	00088a63          	beqz	a7,10c0 <printint+0x5c>
    10b0:	081c                	addi	a5,sp,16
    10b2:	973e                	add	a4,a4,a5
    10b4:	02d00793          	li	a5,45
    10b8:	fef70823          	sb	a5,-16(a4)
    10bc:	0028071b          	addiw	a4,a6,2
    10c0:	02e05663          	blez	a4,10ec <printint+0x88>
    10c4:	00e10433          	add	s0,sp,a4
    10c8:	fff10913          	addi	s2,sp,-1
    10cc:	993a                	add	s2,s2,a4
    10ce:	377d                	addiw	a4,a4,-1
    10d0:	1702                	slli	a4,a4,0x20
    10d2:	9301                	srli	a4,a4,0x20
    10d4:	40e90933          	sub	s2,s2,a4
    10d8:	fff44583          	lbu	a1,-1(s0)
    10dc:	8526                	mv	a0,s1
    10de:	00000097          	auipc	ra,0x0
    10e2:	f6a080e7          	jalr	-150(ra) # 1048 <putc>
    10e6:	147d                	addi	s0,s0,-1
    10e8:	ff2418e3          	bne	s0,s2,10d8 <printint+0x74>
    10ec:	70a2                	ld	ra,40(sp)
    10ee:	7402                	ld	s0,32(sp)
    10f0:	64e2                	ld	s1,24(sp)
    10f2:	6942                	ld	s2,16(sp)
    10f4:	6145                	addi	sp,sp,48
    10f6:	8082                	ret
    10f8:	40b005bb          	negw	a1,a1
    10fc:	4885                	li	a7,1
    10fe:	bfb5                	j	107a <printint+0x16>

0000000000001100 <vprintf>:
    1100:	7159                	addi	sp,sp,-112
    1102:	f486                	sd	ra,104(sp)
    1104:	f0a2                	sd	s0,96(sp)
    1106:	eca6                	sd	s1,88(sp)
    1108:	e8ca                	sd	s2,80(sp)
    110a:	e4ce                	sd	s3,72(sp)
    110c:	e0d2                	sd	s4,64(sp)
    110e:	fc56                	sd	s5,56(sp)
    1110:	f85a                	sd	s6,48(sp)
    1112:	f45e                	sd	s7,40(sp)
    1114:	f062                	sd	s8,32(sp)
    1116:	ec66                	sd	s9,24(sp)
    1118:	e86a                	sd	s10,16(sp)
    111a:	e46e                	sd	s11,8(sp)
    111c:	0005c483          	lbu	s1,0(a1)
    1120:	18048a63          	beqz	s1,12b4 <vprintf+0x1b4>
    1124:	8a2a                	mv	s4,a0
    1126:	8ab2                	mv	s5,a2
    1128:	00158413          	addi	s0,a1,1
    112c:	4901                	li	s2,0
    112e:	02500993          	li	s3,37
    1132:	06400b93          	li	s7,100
    1136:	06c00c13          	li	s8,108
    113a:	07800c93          	li	s9,120
    113e:	07000d13          	li	s10,112
    1142:	00002db7          	lui	s11,0x2
    1146:	00002b37          	lui	s6,0x2
    114a:	cc8b0b13          	addi	s6,s6,-824 # 1cc8 <digits>
    114e:	a839                	j	116c <vprintf+0x6c>
    1150:	85a6                	mv	a1,s1
    1152:	8552                	mv	a0,s4
    1154:	00000097          	auipc	ra,0x0
    1158:	ef4080e7          	jalr	-268(ra) # 1048 <putc>
    115c:	a019                	j	1162 <vprintf+0x62>
    115e:	01390f63          	beq	s2,s3,117c <vprintf+0x7c>
    1162:	0405                	addi	s0,s0,1
    1164:	fff44483          	lbu	s1,-1(s0)
    1168:	14048663          	beqz	s1,12b4 <vprintf+0x1b4>
    116c:	0004879b          	sext.w	a5,s1
    1170:	fe0917e3          	bnez	s2,115e <vprintf+0x5e>
    1174:	fd379ee3          	bne	a5,s3,1150 <vprintf+0x50>
    1178:	893e                	mv	s2,a5
    117a:	b7e5                	j	1162 <vprintf+0x62>
    117c:	05778063          	beq	a5,s7,11bc <vprintf+0xbc>
    1180:	05878c63          	beq	a5,s8,11d8 <vprintf+0xd8>
    1184:	07978863          	beq	a5,s9,11f4 <vprintf+0xf4>
    1188:	09a78463          	beq	a5,s10,1210 <vprintf+0x110>
    118c:	07300713          	li	a4,115
    1190:	0ce78263          	beq	a5,a4,1254 <vprintf+0x154>
    1194:	06300713          	li	a4,99
    1198:	0ee78763          	beq	a5,a4,1286 <vprintf+0x186>
    119c:	11378163          	beq	a5,s3,129e <vprintf+0x19e>
    11a0:	85ce                	mv	a1,s3
    11a2:	8552                	mv	a0,s4
    11a4:	00000097          	auipc	ra,0x0
    11a8:	ea4080e7          	jalr	-348(ra) # 1048 <putc>
    11ac:	85a6                	mv	a1,s1
    11ae:	8552                	mv	a0,s4
    11b0:	00000097          	auipc	ra,0x0
    11b4:	e98080e7          	jalr	-360(ra) # 1048 <putc>
    11b8:	4901                	li	s2,0
    11ba:	b765                	j	1162 <vprintf+0x62>
    11bc:	008a8493          	addi	s1,s5,8
    11c0:	4685                	li	a3,1
    11c2:	4629                	li	a2,10
    11c4:	000aa583          	lw	a1,0(s5)
    11c8:	8552                	mv	a0,s4
    11ca:	00000097          	auipc	ra,0x0
    11ce:	e9a080e7          	jalr	-358(ra) # 1064 <printint>
    11d2:	8aa6                	mv	s5,s1
    11d4:	4901                	li	s2,0
    11d6:	b771                	j	1162 <vprintf+0x62>
    11d8:	008a8493          	addi	s1,s5,8
    11dc:	4681                	li	a3,0
    11de:	4629                	li	a2,10
    11e0:	000aa583          	lw	a1,0(s5)
    11e4:	8552                	mv	a0,s4
    11e6:	00000097          	auipc	ra,0x0
    11ea:	e7e080e7          	jalr	-386(ra) # 1064 <printint>
    11ee:	8aa6                	mv	s5,s1
    11f0:	4901                	li	s2,0
    11f2:	bf85                	j	1162 <vprintf+0x62>
    11f4:	008a8493          	addi	s1,s5,8
    11f8:	4681                	li	a3,0
    11fa:	4641                	li	a2,16
    11fc:	000aa583          	lw	a1,0(s5)
    1200:	8552                	mv	a0,s4
    1202:	00000097          	auipc	ra,0x0
    1206:	e62080e7          	jalr	-414(ra) # 1064 <printint>
    120a:	8aa6                	mv	s5,s1
    120c:	4901                	li	s2,0
    120e:	bf91                	j	1162 <vprintf+0x62>
    1210:	008a8913          	addi	s2,s5,8
    1214:	000aba83          	ld	s5,0(s5)
    1218:	03000593          	li	a1,48
    121c:	8552                	mv	a0,s4
    121e:	00000097          	auipc	ra,0x0
    1222:	e2a080e7          	jalr	-470(ra) # 1048 <putc>
    1226:	85e6                	mv	a1,s9
    1228:	8552                	mv	a0,s4
    122a:	00000097          	auipc	ra,0x0
    122e:	e1e080e7          	jalr	-482(ra) # 1048 <putc>
    1232:	44c1                	li	s1,16
    1234:	03cad793          	srli	a5,s5,0x3c
    1238:	97da                	add	a5,a5,s6
    123a:	0007c583          	lbu	a1,0(a5)
    123e:	8552                	mv	a0,s4
    1240:	00000097          	auipc	ra,0x0
    1244:	e08080e7          	jalr	-504(ra) # 1048 <putc>
    1248:	0a92                	slli	s5,s5,0x4
    124a:	34fd                	addiw	s1,s1,-1
    124c:	f4e5                	bnez	s1,1234 <vprintf+0x134>
    124e:	8aca                	mv	s5,s2
    1250:	4901                	li	s2,0
    1252:	bf01                	j	1162 <vprintf+0x62>
    1254:	008a8913          	addi	s2,s5,8
    1258:	000ab483          	ld	s1,0(s5)
    125c:	c085                	beqz	s1,127c <vprintf+0x17c>
    125e:	0004c583          	lbu	a1,0(s1)
    1262:	c5b1                	beqz	a1,12ae <vprintf+0x1ae>
    1264:	8552                	mv	a0,s4
    1266:	00000097          	auipc	ra,0x0
    126a:	de2080e7          	jalr	-542(ra) # 1048 <putc>
    126e:	0485                	addi	s1,s1,1
    1270:	0004c583          	lbu	a1,0(s1)
    1274:	f9e5                	bnez	a1,1264 <vprintf+0x164>
    1276:	8aca                	mv	s5,s2
    1278:	4901                	li	s2,0
    127a:	b5e5                	j	1162 <vprintf+0x62>
    127c:	cc0d8493          	addi	s1,s11,-832 # 1cc0 <mkdir+0x9a>
    1280:	02800593          	li	a1,40
    1284:	b7c5                	j	1264 <vprintf+0x164>
    1286:	008a8493          	addi	s1,s5,8
    128a:	000ac583          	lbu	a1,0(s5)
    128e:	8552                	mv	a0,s4
    1290:	00000097          	auipc	ra,0x0
    1294:	db8080e7          	jalr	-584(ra) # 1048 <putc>
    1298:	8aa6                	mv	s5,s1
    129a:	4901                	li	s2,0
    129c:	b5d9                	j	1162 <vprintf+0x62>
    129e:	85ce                	mv	a1,s3
    12a0:	8552                	mv	a0,s4
    12a2:	00000097          	auipc	ra,0x0
    12a6:	da6080e7          	jalr	-602(ra) # 1048 <putc>
    12aa:	4901                	li	s2,0
    12ac:	bd5d                	j	1162 <vprintf+0x62>
    12ae:	8aca                	mv	s5,s2
    12b0:	4901                	li	s2,0
    12b2:	bd45                	j	1162 <vprintf+0x62>
    12b4:	70a6                	ld	ra,104(sp)
    12b6:	7406                	ld	s0,96(sp)
    12b8:	64e6                	ld	s1,88(sp)
    12ba:	6946                	ld	s2,80(sp)
    12bc:	69a6                	ld	s3,72(sp)
    12be:	6a06                	ld	s4,64(sp)
    12c0:	7ae2                	ld	s5,56(sp)
    12c2:	7b42                	ld	s6,48(sp)
    12c4:	7ba2                	ld	s7,40(sp)
    12c6:	7c02                	ld	s8,32(sp)
    12c8:	6ce2                	ld	s9,24(sp)
    12ca:	6d42                	ld	s10,16(sp)
    12cc:	6da2                	ld	s11,8(sp)
    12ce:	6165                	addi	sp,sp,112
    12d0:	8082                	ret

00000000000012d2 <fprintf>:
    12d2:	715d                	addi	sp,sp,-80
    12d4:	ec06                	sd	ra,24(sp)
    12d6:	f032                	sd	a2,32(sp)
    12d8:	f436                	sd	a3,40(sp)
    12da:	f83a                	sd	a4,48(sp)
    12dc:	fc3e                	sd	a5,56(sp)
    12de:	e0c2                	sd	a6,64(sp)
    12e0:	e4c6                	sd	a7,72(sp)
    12e2:	1010                	addi	a2,sp,32
    12e4:	e432                	sd	a2,8(sp)
    12e6:	00000097          	auipc	ra,0x0
    12ea:	e1a080e7          	jalr	-486(ra) # 1100 <vprintf>
    12ee:	60e2                	ld	ra,24(sp)
    12f0:	6161                	addi	sp,sp,80
    12f2:	8082                	ret

00000000000012f4 <printf>:
    12f4:	711d                	addi	sp,sp,-96
    12f6:	ec06                	sd	ra,24(sp)
    12f8:	f42e                	sd	a1,40(sp)
    12fa:	f832                	sd	a2,48(sp)
    12fc:	fc36                	sd	a3,56(sp)
    12fe:	e0ba                	sd	a4,64(sp)
    1300:	e4be                	sd	a5,72(sp)
    1302:	e8c2                	sd	a6,80(sp)
    1304:	ecc6                	sd	a7,88(sp)
    1306:	1030                	addi	a2,sp,40
    1308:	e432                	sd	a2,8(sp)
    130a:	85aa                	mv	a1,a0
    130c:	4505                	li	a0,1
    130e:	00000097          	auipc	ra,0x0
    1312:	df2080e7          	jalr	-526(ra) # 1100 <vprintf>
    1316:	60e2                	ld	ra,24(sp)
    1318:	6125                	addi	sp,sp,96
    131a:	8082                	ret

000000000000131c <cksum>:
    131c:	cdb1                	beqz	a1,1378 <cksum+0x5c>
    131e:	00b50833          	add	a6,a0,a1
    1322:	4781                	li	a5,0
    1324:	00002637          	lui	a2,0x2
    1328:	ce060613          	addi	a2,a2,-800 # 1ce0 <crctab>
    132c:	0505                	addi	a0,a0,1
    132e:	0087969b          	slliw	a3,a5,0x8
    1332:	0187d71b          	srliw	a4,a5,0x18
    1336:	fff54783          	lbu	a5,-1(a0)
    133a:	8f3d                	xor	a4,a4,a5
    133c:	1702                	slli	a4,a4,0x20
    133e:	9301                	srli	a4,a4,0x20
    1340:	070a                	slli	a4,a4,0x2
    1342:	9732                	add	a4,a4,a2
    1344:	431c                	lw	a5,0(a4)
    1346:	8fb5                	xor	a5,a5,a3
    1348:	2781                	sext.w	a5,a5
    134a:	fea811e3          	bne	a6,a0,132c <cksum+0x10>
    134e:	00002637          	lui	a2,0x2
    1352:	ce060613          	addi	a2,a2,-800 # 1ce0 <crctab>
    1356:	0ff5f693          	andi	a3,a1,255
    135a:	81a1                	srli	a1,a1,0x8
    135c:	0087951b          	slliw	a0,a5,0x8
    1360:	0187d71b          	srliw	a4,a5,0x18
    1364:	8f35                	xor	a4,a4,a3
    1366:	070a                	slli	a4,a4,0x2
    1368:	9732                	add	a4,a4,a2
    136a:	431c                	lw	a5,0(a4)
    136c:	8fa9                	xor	a5,a5,a0
    136e:	2781                	sext.w	a5,a5
    1370:	f1fd                	bnez	a1,1356 <cksum+0x3a>
    1372:	fff7c513          	not	a0,a5
    1376:	8082                	ret
    1378:	4781                	li	a5,0
    137a:	bfe5                	j	1372 <cksum+0x56>

000000000000137c <swap_bytes>:
    137c:	ce19                	beqz	a2,139a <swap_bytes+0x1e>
    137e:	87aa                	mv	a5,a0
    1380:	962a                	add	a2,a2,a0
    1382:	0007c703          	lbu	a4,0(a5)
    1386:	0005c683          	lbu	a3,0(a1)
    138a:	00d78023          	sb	a3,0(a5)
    138e:	00e58023          	sb	a4,0(a1)
    1392:	0785                	addi	a5,a5,1
    1394:	0585                	addi	a1,a1,1
    1396:	fec796e3          	bne	a5,a2,1382 <swap_bytes+0x6>
    139a:	8082                	ret

000000000000139c <random_init>:
    139c:	7139                	addi	sp,sp,-64
    139e:	fc06                	sd	ra,56(sp)
    13a0:	f822                	sd	s0,48(sp)
    13a2:	f426                	sd	s1,40(sp)
    13a4:	f04a                	sd	s2,32(sp)
    13a6:	ec4e                	sd	s3,24(sp)
    13a8:	e852                	sd	s4,16(sp)
    13aa:	c62a                	sw	a0,12(sp)
    13ac:	000037b7          	lui	a5,0x3
    13b0:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13b4:	eca5                	bnez	s1,142c <random_init+0x90>
    13b6:	00003737          	lui	a4,0x3
    13ba:	01070913          	addi	s2,a4,16 # 3010 <s>
    13be:	01070713          	addi	a4,a4,16
    13c2:	87a6                	mv	a5,s1
    13c4:	10000693          	li	a3,256
    13c8:	00f70023          	sb	a5,0(a4)
    13cc:	2785                	addiw	a5,a5,1
    13ce:	0705                	addi	a4,a4,1
    13d0:	fed79ce3          	bne	a5,a3,13c8 <random_init+0x2c>
    13d4:	4401                	li	s0,0
    13d6:	000039b7          	lui	s3,0x3
    13da:	01098993          	addi	s3,s3,16 # 3010 <s>
    13de:	10000a13          	li	s4,256
    13e2:	0034f793          	andi	a5,s1,3
    13e6:	0818                	addi	a4,sp,16
    13e8:	97ba                	add	a5,a5,a4
    13ea:	ffc7c783          	lbu	a5,-4(a5)
    13ee:	00094703          	lbu	a4,0(s2)
    13f2:	9fb9                	addw	a5,a5,a4
    13f4:	9c3d                	addw	s0,s0,a5
    13f6:	0ff47413          	andi	s0,s0,255
    13fa:	4605                	li	a2,1
    13fc:	008985b3          	add	a1,s3,s0
    1400:	854a                	mv	a0,s2
    1402:	00000097          	auipc	ra,0x0
    1406:	f7a080e7          	jalr	-134(ra) # 137c <swap_bytes>
    140a:	2485                	addiw	s1,s1,1
    140c:	0905                	addi	s2,s2,1
    140e:	fd449ae3          	bne	s1,s4,13e2 <random_init+0x46>
    1412:	000037b7          	lui	a5,0x3
    1416:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    141a:	000037b7          	lui	a5,0x3
    141e:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1422:	000037b7          	lui	a5,0x3
    1426:	4705                	li	a4,1
    1428:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    142c:	70e2                	ld	ra,56(sp)
    142e:	7442                	ld	s0,48(sp)
    1430:	74a2                	ld	s1,40(sp)
    1432:	7902                	ld	s2,32(sp)
    1434:	69e2                	ld	s3,24(sp)
    1436:	6a42                	ld	s4,16(sp)
    1438:	6121                	addi	sp,sp,64
    143a:	8082                	ret

000000000000143c <random_bytes>:
    143c:	7139                	addi	sp,sp,-64
    143e:	fc06                	sd	ra,56(sp)
    1440:	f822                	sd	s0,48(sp)
    1442:	f426                	sd	s1,40(sp)
    1444:	f04a                	sd	s2,32(sp)
    1446:	ec4e                	sd	s3,24(sp)
    1448:	e852                	sd	s4,16(sp)
    144a:	e456                	sd	s5,8(sp)
    144c:	e05a                	sd	s6,0(sp)
    144e:	892a                	mv	s2,a0
    1450:	8aae                	mv	s5,a1
    1452:	000037b7          	lui	a5,0x3
    1456:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    145a:	c3c1                	beqz	a5,14da <random_bytes+0x9e>
    145c:	060a8563          	beqz	s5,14c6 <random_bytes+0x8a>
    1460:	9aca                	add	s5,s5,s2
    1462:	00003a37          	lui	s4,0x3
    1466:	000034b7          	lui	s1,0x3
    146a:	01048493          	addi	s1,s1,16 # 3010 <s>
    146e:	000039b7          	lui	s3,0x3
    1472:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1476:	2505                	addiw	a0,a0,1
    1478:	0ff57513          	andi	a0,a0,255
    147c:	00aa02a3          	sb	a0,5(s4)
    1480:	00a48b33          	add	s6,s1,a0
    1484:	000b4403          	lbu	s0,0(s6)
    1488:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    148c:	9c3d                	addw	s0,s0,a5
    148e:	0ff47413          	andi	s0,s0,255
    1492:	00898223          	sb	s0,4(s3)
    1496:	4605                	li	a2,1
    1498:	008485b3          	add	a1,s1,s0
    149c:	855a                	mv	a0,s6
    149e:	00000097          	auipc	ra,0x0
    14a2:	ede080e7          	jalr	-290(ra) # 137c <swap_bytes>
    14a6:	9426                	add	s0,s0,s1
    14a8:	000b4783          	lbu	a5,0(s6)
    14ac:	00044703          	lbu	a4,0(s0)
    14b0:	9fb9                	addw	a5,a5,a4
    14b2:	0ff7f793          	andi	a5,a5,255
    14b6:	97a6                	add	a5,a5,s1
    14b8:	0007c783          	lbu	a5,0(a5)
    14bc:	00f90023          	sb	a5,0(s2)
    14c0:	0905                	addi	s2,s2,1
    14c2:	fb2a98e3          	bne	s5,s2,1472 <random_bytes+0x36>
    14c6:	70e2                	ld	ra,56(sp)
    14c8:	7442                	ld	s0,48(sp)
    14ca:	74a2                	ld	s1,40(sp)
    14cc:	7902                	ld	s2,32(sp)
    14ce:	69e2                	ld	s3,24(sp)
    14d0:	6a42                	ld	s4,16(sp)
    14d2:	6aa2                	ld	s5,8(sp)
    14d4:	6b02                	ld	s6,0(sp)
    14d6:	6121                	addi	sp,sp,64
    14d8:	8082                	ret
    14da:	4501                	li	a0,0
    14dc:	00000097          	auipc	ra,0x0
    14e0:	ec0080e7          	jalr	-320(ra) # 139c <random_init>
    14e4:	bfa5                	j	145c <random_bytes+0x20>

00000000000014e6 <random_ulong>:
    14e6:	1101                	addi	sp,sp,-32
    14e8:	ec06                	sd	ra,24(sp)
    14ea:	45a1                	li	a1,8
    14ec:	0028                	addi	a0,sp,8
    14ee:	00000097          	auipc	ra,0x0
    14f2:	f4e080e7          	jalr	-178(ra) # 143c <random_bytes>
    14f6:	6522                	ld	a0,8(sp)
    14f8:	60e2                	ld	ra,24(sp)
    14fa:	6105                	addi	sp,sp,32
    14fc:	8082                	ret

00000000000014fe <shuffle>:
    14fe:	c9b9                	beqz	a1,1554 <shuffle+0x56>
    1500:	7179                	addi	sp,sp,-48
    1502:	f406                	sd	ra,40(sp)
    1504:	f022                	sd	s0,32(sp)
    1506:	ec26                	sd	s1,24(sp)
    1508:	e84a                	sd	s2,16(sp)
    150a:	e44e                	sd	s3,8(sp)
    150c:	e052                	sd	s4,0(sp)
    150e:	8a2a                	mv	s4,a0
    1510:	89ae                	mv	s3,a1
    1512:	84b2                	mv	s1,a2
    1514:	892a                	mv	s2,a0
    1516:	4401                	li	s0,0
    1518:	00000097          	auipc	ra,0x0
    151c:	fce080e7          	jalr	-50(ra) # 14e6 <random_ulong>
    1520:	408985b3          	sub	a1,s3,s0
    1524:	02b575b3          	remu	a1,a0,a1
    1528:	95a2                	add	a1,a1,s0
    152a:	029585b3          	mul	a1,a1,s1
    152e:	8626                	mv	a2,s1
    1530:	95d2                	add	a1,a1,s4
    1532:	854a                	mv	a0,s2
    1534:	00000097          	auipc	ra,0x0
    1538:	e48080e7          	jalr	-440(ra) # 137c <swap_bytes>
    153c:	0405                	addi	s0,s0,1
    153e:	9926                	add	s2,s2,s1
    1540:	fc899ce3          	bne	s3,s0,1518 <shuffle+0x1a>
    1544:	70a2                	ld	ra,40(sp)
    1546:	7402                	ld	s0,32(sp)
    1548:	64e2                	ld	s1,24(sp)
    154a:	6942                	ld	s2,16(sp)
    154c:	69a2                	ld	s3,8(sp)
    154e:	6a02                	ld	s4,0(sp)
    1550:	6145                	addi	sp,sp,48
    1552:	8082                	ret
    1554:	8082                	ret

0000000000001556 <arc4_init>:
    1556:	100500a3          	sb	zero,257(a0)
    155a:	10050023          	sb	zero,256(a0)
    155e:	4781                	li	a5,0
    1560:	10000693          	li	a3,256
    1564:	00f50733          	add	a4,a0,a5
    1568:	00f70023          	sb	a5,0(a4)
    156c:	0785                	addi	a5,a5,1
    156e:	fed79be3          	bne	a5,a3,1564 <arc4_init+0xe>
    1572:	86aa                	mv	a3,a0
    1574:	10050e13          	addi	t3,a0,256
    1578:	4701                	li	a4,0
    157a:	4781                	li	a5,0
    157c:	0006c883          	lbu	a7,0(a3)
    1580:	00f58833          	add	a6,a1,a5
    1584:	00084803          	lbu	a6,0(a6)
    1588:	00e8873b          	addw	a4,a7,a4
    158c:	00e8073b          	addw	a4,a6,a4
    1590:	0ff77713          	andi	a4,a4,255
    1594:	00e50833          	add	a6,a0,a4
    1598:	00084303          	lbu	t1,0(a6)
    159c:	00668023          	sb	t1,0(a3)
    15a0:	01180023          	sb	a7,0(a6)
    15a4:	0785                	addi	a5,a5,1
    15a6:	00c7b833          	sltu	a6,a5,a2
    15aa:	41000833          	neg	a6,a6
    15ae:	0107f7b3          	and	a5,a5,a6
    15b2:	0685                	addi	a3,a3,1
    15b4:	fdc694e3          	bne	a3,t3,157c <arc4_init+0x26>
    15b8:	8082                	ret

00000000000015ba <arc4_crypt>:
    15ba:	10054e03          	lbu	t3,256(a0)
    15be:	10154803          	lbu	a6,257(a0)
    15c2:	fff60e93          	addi	t4,a2,-1
    15c6:	c225                	beqz	a2,1626 <arc4_crypt+0x6c>
    15c8:	00c588b3          	add	a7,a1,a2
    15cc:	86ae                	mv	a3,a1
    15ce:	001e031b          	addiw	t1,t3,1
    15d2:	40b3033b          	subw	t1,t1,a1
    15d6:	00d3073b          	addw	a4,t1,a3
    15da:	0ff77713          	andi	a4,a4,255
    15de:	972a                	add	a4,a4,a0
    15e0:	00074603          	lbu	a2,0(a4)
    15e4:	0106083b          	addw	a6,a2,a6
    15e8:	0ff87813          	andi	a6,a6,255
    15ec:	010507b3          	add	a5,a0,a6
    15f0:	0007c583          	lbu	a1,0(a5)
    15f4:	00b70023          	sb	a1,0(a4)
    15f8:	00c78023          	sb	a2,0(a5)
    15fc:	0685                	addi	a3,a3,1
    15fe:	00074783          	lbu	a5,0(a4)
    1602:	9fb1                	addw	a5,a5,a2
    1604:	0ff7f793          	andi	a5,a5,255
    1608:	97aa                	add	a5,a5,a0
    160a:	0007c783          	lbu	a5,0(a5)
    160e:	fff6c703          	lbu	a4,-1(a3)
    1612:	8fb9                	xor	a5,a5,a4
    1614:	fef68fa3          	sb	a5,-1(a3)
    1618:	fb169fe3          	bne	a3,a7,15d6 <arc4_crypt+0x1c>
    161c:	2e85                	addiw	t4,t4,1
    161e:	01ce8e3b          	addw	t3,t4,t3
    1622:	0ffe7e13          	andi	t3,t3,255
    1626:	11c50023          	sb	t3,256(a0)
    162a:	110500a3          	sb	a6,257(a0)
    162e:	8082                	ret

0000000000001630 <_main>:
    1630:	1141                	addi	sp,sp,-16
    1632:	e406                	sd	ra,8(sp)
    1634:	00000097          	auipc	ra,0x0
    1638:	9cc080e7          	jalr	-1588(ra) # 1000 <main>
    163c:	4501                	li	a0,0
    163e:	00000097          	auipc	ra,0x0
    1642:	578080e7          	jalr	1400(ra) # 1bb6 <exit>
    1646:	60a2                	ld	ra,8(sp)
    1648:	0141                	addi	sp,sp,16
    164a:	8082                	ret

000000000000164c <strcmp>:
    164c:	00054783          	lbu	a5,0(a0)
    1650:	cb91                	beqz	a5,1664 <strcmp+0x18>
    1652:	0005c703          	lbu	a4,0(a1)
    1656:	00f71763          	bne	a4,a5,1664 <strcmp+0x18>
    165a:	0505                	addi	a0,a0,1
    165c:	0585                	addi	a1,a1,1
    165e:	00054783          	lbu	a5,0(a0)
    1662:	fbe5                	bnez	a5,1652 <strcmp+0x6>
    1664:	0005c503          	lbu	a0,0(a1)
    1668:	40a7853b          	subw	a0,a5,a0
    166c:	8082                	ret

000000000000166e <strcpy>:
    166e:	87aa                	mv	a5,a0
    1670:	0585                	addi	a1,a1,1
    1672:	0785                	addi	a5,a5,1
    1674:	fff5c703          	lbu	a4,-1(a1)
    1678:	fee78fa3          	sb	a4,-1(a5)
    167c:	fb75                	bnez	a4,1670 <strcpy+0x2>
    167e:	8082                	ret

0000000000001680 <strlen>:
    1680:	00054783          	lbu	a5,0(a0)
    1684:	cf81                	beqz	a5,169c <strlen+0x1c>
    1686:	0505                	addi	a0,a0,1
    1688:	87aa                	mv	a5,a0
    168a:	4685                	li	a3,1
    168c:	9e89                	subw	a3,a3,a0
    168e:	00f6853b          	addw	a0,a3,a5
    1692:	0785                	addi	a5,a5,1
    1694:	fff7c703          	lbu	a4,-1(a5)
    1698:	fb7d                	bnez	a4,168e <strlen+0xe>
    169a:	8082                	ret
    169c:	4501                	li	a0,0
    169e:	8082                	ret

00000000000016a0 <memset>:
    16a0:	ca19                	beqz	a2,16b6 <memset+0x16>
    16a2:	87aa                	mv	a5,a0
    16a4:	1602                	slli	a2,a2,0x20
    16a6:	9201                	srli	a2,a2,0x20
    16a8:	00a60733          	add	a4,a2,a0
    16ac:	00b78023          	sb	a1,0(a5)
    16b0:	0785                	addi	a5,a5,1
    16b2:	fee79de3          	bne	a5,a4,16ac <memset+0xc>
    16b6:	8082                	ret

00000000000016b8 <memcmp>:
    16b8:	1101                	addi	sp,sp,-32
    16ba:	ec06                	sd	ra,24(sp)
    16bc:	e822                	sd	s0,16(sp)
    16be:	e426                	sd	s1,8(sp)
    16c0:	e04a                	sd	s2,0(sp)
    16c2:	892a                	mv	s2,a0
    16c4:	842e                	mv	s0,a1
    16c6:	84b2                	mv	s1,a2
    16c8:	c915                	beqz	a0,16fc <memcmp+0x44>
    16ca:	c5ad                	beqz	a1,1734 <memcmp+0x7c>
    16cc:	fff60713          	addi	a4,a2,-1
    16d0:	c645                	beqz	a2,1778 <memcmp+0xc0>
    16d2:	87ca                	mv	a5,s2
    16d4:	00190613          	addi	a2,s2,1
    16d8:	963a                	add	a2,a2,a4
    16da:	0007c683          	lbu	a3,0(a5)
    16de:	00044703          	lbu	a4,0(s0)
    16e2:	08e69463          	bne	a3,a4,176a <memcmp+0xb2>
    16e6:	0785                	addi	a5,a5,1
    16e8:	0405                	addi	s0,s0,1
    16ea:	fec798e3          	bne	a5,a2,16da <memcmp+0x22>
    16ee:	4501                	li	a0,0
    16f0:	60e2                	ld	ra,24(sp)
    16f2:	6442                	ld	s0,16(sp)
    16f4:	64a2                	ld	s1,8(sp)
    16f6:	6902                	ld	s2,0(sp)
    16f8:	6105                	addi	sp,sp,32
    16fa:	8082                	ret
    16fc:	4501                	li	a0,0
    16fe:	da6d                	beqz	a2,16f0 <memcmp+0x38>
    1700:	03200693          	li	a3,50
    1704:	00002637          	lui	a2,0x2
    1708:	0e060613          	addi	a2,a2,224 # 20e0 <crctab+0x400>
    170c:	000025b7          	lui	a1,0x2
    1710:	0f058593          	addi	a1,a1,240 # 20f0 <crctab+0x410>
    1714:	4509                	li	a0,2
    1716:	00000097          	auipc	ra,0x0
    171a:	bbc080e7          	jalr	-1092(ra) # 12d2 <fprintf>
    171e:	650d                	lui	a0,0x3
    1720:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1724:	00000097          	auipc	ra,0x0
    1728:	492080e7          	jalr	1170(ra) # 1bb6 <exit>
    172c:	fff48713          	addi	a4,s1,-1
    1730:	f04d                	bnez	s0,16d2 <memcmp+0x1a>
    1732:	a011                	j	1736 <memcmp+0x7e>
    1734:	c221                	beqz	a2,1774 <memcmp+0xbc>
    1736:	03300693          	li	a3,51
    173a:	00002637          	lui	a2,0x2
    173e:	0e060613          	addi	a2,a2,224 # 20e0 <crctab+0x400>
    1742:	000025b7          	lui	a1,0x2
    1746:	13858593          	addi	a1,a1,312 # 2138 <crctab+0x458>
    174a:	4509                	li	a0,2
    174c:	00000097          	auipc	ra,0x0
    1750:	b86080e7          	jalr	-1146(ra) # 12d2 <fprintf>
    1754:	650d                	lui	a0,0x3
    1756:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    175a:	00000097          	auipc	ra,0x0
    175e:	45c080e7          	jalr	1116(ra) # 1bb6 <exit>
    1762:	fff48713          	addi	a4,s1,-1
    1766:	4401                	li	s0,0
    1768:	b7ad                	j	16d2 <memcmp+0x1a>
    176a:	4505                	li	a0,1
    176c:	f8d762e3          	bltu	a4,a3,16f0 <memcmp+0x38>
    1770:	557d                	li	a0,-1
    1772:	bfbd                	j	16f0 <memcmp+0x38>
    1774:	4501                	li	a0,0
    1776:	bfad                	j	16f0 <memcmp+0x38>
    1778:	4501                	li	a0,0
    177a:	bf9d                	j	16f0 <memcmp+0x38>

000000000000177c <memcpy>:
    177c:	1101                	addi	sp,sp,-32
    177e:	ec06                	sd	ra,24(sp)
    1780:	e822                	sd	s0,16(sp)
    1782:	e426                	sd	s1,8(sp)
    1784:	e04a                	sd	s2,0(sp)
    1786:	84aa                	mv	s1,a0
    1788:	842e                	mv	s0,a1
    178a:	8932                	mv	s2,a2
    178c:	c51d                	beqz	a0,17ba <memcpy+0x3e>
    178e:	c1ad                	beqz	a1,17f0 <memcpy+0x74>
    1790:	fff60693          	addi	a3,a2,-1
    1794:	ce01                	beqz	a2,17ac <memcpy+0x30>
    1796:	0685                	addi	a3,a3,1
    1798:	96a6                	add	a3,a3,s1
    179a:	87a6                	mv	a5,s1
    179c:	0405                	addi	s0,s0,1
    179e:	0785                	addi	a5,a5,1
    17a0:	fff44703          	lbu	a4,-1(s0)
    17a4:	fee78fa3          	sb	a4,-1(a5)
    17a8:	fed79ae3          	bne	a5,a3,179c <memcpy+0x20>
    17ac:	8526                	mv	a0,s1
    17ae:	60e2                	ld	ra,24(sp)
    17b0:	6442                	ld	s0,16(sp)
    17b2:	64a2                	ld	s1,8(sp)
    17b4:	6902                	ld	s2,0(sp)
    17b6:	6105                	addi	sp,sp,32
    17b8:	8082                	ret
    17ba:	da6d                	beqz	a2,17ac <memcpy+0x30>
    17bc:	04000693          	li	a3,64
    17c0:	00002637          	lui	a2,0x2
    17c4:	0e060613          	addi	a2,a2,224 # 20e0 <crctab+0x400>
    17c8:	000025b7          	lui	a1,0x2
    17cc:	18058593          	addi	a1,a1,384 # 2180 <crctab+0x4a0>
    17d0:	4509                	li	a0,2
    17d2:	00000097          	auipc	ra,0x0
    17d6:	b00080e7          	jalr	-1280(ra) # 12d2 <fprintf>
    17da:	650d                	lui	a0,0x3
    17dc:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17e0:	00000097          	auipc	ra,0x0
    17e4:	3d6080e7          	jalr	982(ra) # 1bb6 <exit>
    17e8:	fff90693          	addi	a3,s2,-1
    17ec:	f44d                	bnez	s0,1796 <memcpy+0x1a>
    17ee:	a011                	j	17f2 <memcpy+0x76>
    17f0:	de55                	beqz	a2,17ac <memcpy+0x30>
    17f2:	04100693          	li	a3,65
    17f6:	00002637          	lui	a2,0x2
    17fa:	0e060613          	addi	a2,a2,224 # 20e0 <crctab+0x400>
    17fe:	000025b7          	lui	a1,0x2
    1802:	1c858593          	addi	a1,a1,456 # 21c8 <crctab+0x4e8>
    1806:	4509                	li	a0,2
    1808:	00000097          	auipc	ra,0x0
    180c:	aca080e7          	jalr	-1334(ra) # 12d2 <fprintf>
    1810:	650d                	lui	a0,0x3
    1812:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1816:	00000097          	auipc	ra,0x0
    181a:	3a0080e7          	jalr	928(ra) # 1bb6 <exit>
    181e:	fff90693          	addi	a3,s2,-1
    1822:	4401                	li	s0,0
    1824:	bf8d                	j	1796 <memcpy+0x1a>

0000000000001826 <itoa>:
    1826:	1101                	addi	sp,sp,-32
    1828:	ec06                	sd	ra,24(sp)
    182a:	e822                	sd	s0,16(sp)
    182c:	e426                	sd	s1,8(sp)
    182e:	842a                	mv	s0,a0
    1830:	41f5d71b          	sraiw	a4,a1,0x1f
    1834:	00e5c7b3          	xor	a5,a1,a4
    1838:	9f99                	subw	a5,a5,a4
    183a:	84aa                	mv	s1,a0
    183c:	862a                	mv	a2,a0
    183e:	4681                	li	a3,0
    1840:	4529                	li	a0,10
    1842:	4825                	li	a6,9
    1844:	88b6                	mv	a7,a3
    1846:	2685                	addiw	a3,a3,1
    1848:	02a7e73b          	remw	a4,a5,a0
    184c:	0307071b          	addiw	a4,a4,48
    1850:	00e60023          	sb	a4,0(a2)
    1854:	873e                	mv	a4,a5
    1856:	02a7c7bb          	divw	a5,a5,a0
    185a:	0605                	addi	a2,a2,1
    185c:	fee844e3          	blt	a6,a4,1844 <itoa+0x1e>
    1860:	0405c863          	bltz	a1,18b0 <itoa+0x8a>
    1864:	96a2                	add	a3,a3,s0
    1866:	00068023          	sb	zero,0(a3)
    186a:	8522                	mv	a0,s0
    186c:	00000097          	auipc	ra,0x0
    1870:	e14080e7          	jalr	-492(ra) # 1680 <strlen>
    1874:	fff5071b          	addiw	a4,a0,-1
    1878:	02e05763          	blez	a4,18a6 <itoa+0x80>
    187c:	9722                	add	a4,a4,s0
    187e:	4681                	li	a3,0
    1880:	0004c783          	lbu	a5,0(s1)
    1884:	00074603          	lbu	a2,0(a4)
    1888:	00c48023          	sb	a2,0(s1)
    188c:	00f70023          	sb	a5,0(a4)
    1890:	0016879b          	addiw	a5,a3,1
    1894:	0007869b          	sext.w	a3,a5
    1898:	0485                	addi	s1,s1,1
    189a:	177d                	addi	a4,a4,-1
    189c:	fff7c793          	not	a5,a5
    18a0:	9fa9                	addw	a5,a5,a0
    18a2:	fcf6cfe3          	blt	a3,a5,1880 <itoa+0x5a>
    18a6:	60e2                	ld	ra,24(sp)
    18a8:	6442                	ld	s0,16(sp)
    18aa:	64a2                	ld	s1,8(sp)
    18ac:	6105                	addi	sp,sp,32
    18ae:	8082                	ret
    18b0:	96a2                	add	a3,a3,s0
    18b2:	02d00793          	li	a5,45
    18b6:	00f68023          	sb	a5,0(a3)
    18ba:	0028869b          	addiw	a3,a7,2
    18be:	b75d                	j	1864 <itoa+0x3e>

00000000000018c0 <atoi>:
    18c0:	00054783          	lbu	a5,0(a0)
    18c4:	02000713          	li	a4,32
    18c8:	00e79763          	bne	a5,a4,18d6 <atoi+0x16>
    18cc:	0505                	addi	a0,a0,1
    18ce:	00054783          	lbu	a5,0(a0)
    18d2:	fee78de3          	beq	a5,a4,18cc <atoi+0xc>
    18d6:	02b00713          	li	a4,43
    18da:	04e78663          	beq	a5,a4,1926 <atoi+0x66>
    18de:	02d00713          	li	a4,45
    18e2:	4805                	li	a6,1
    18e4:	04e78463          	beq	a5,a4,192c <atoi+0x6c>
    18e8:	00054683          	lbu	a3,0(a0)
    18ec:	fd06879b          	addiw	a5,a3,-48
    18f0:	0ff7f793          	andi	a5,a5,255
    18f4:	4725                	li	a4,9
    18f6:	02f76e63          	bltu	a4,a5,1932 <atoi+0x72>
    18fa:	4601                	li	a2,0
    18fc:	45a5                	li	a1,9
    18fe:	0505                	addi	a0,a0,1
    1900:	0026179b          	slliw	a5,a2,0x2
    1904:	9fb1                	addw	a5,a5,a2
    1906:	0017979b          	slliw	a5,a5,0x1
    190a:	9fb5                	addw	a5,a5,a3
    190c:	fd07861b          	addiw	a2,a5,-48
    1910:	00054683          	lbu	a3,0(a0)
    1914:	fd06871b          	addiw	a4,a3,-48
    1918:	0ff77713          	andi	a4,a4,255
    191c:	fee5f1e3          	bgeu	a1,a4,18fe <atoi+0x3e>
    1920:	02c8053b          	mulw	a0,a6,a2
    1924:	8082                	ret
    1926:	0505                	addi	a0,a0,1
    1928:	4805                	li	a6,1
    192a:	bf7d                	j	18e8 <atoi+0x28>
    192c:	0505                	addi	a0,a0,1
    192e:	587d                	li	a6,-1
    1930:	bf65                	j	18e8 <atoi+0x28>
    1932:	4601                	li	a2,0
    1934:	b7f5                	j	1920 <atoi+0x60>

0000000000001936 <check_file_handle>:
    1936:	d8010113          	addi	sp,sp,-640
    193a:	26113c23          	sd	ra,632(sp)
    193e:	26813823          	sd	s0,624(sp)
    1942:	26913423          	sd	s1,616(sp)
    1946:	27213023          	sd	s2,608(sp)
    194a:	25313c23          	sd	s3,600(sp)
    194e:	25413823          	sd	s4,592(sp)
    1952:	25513423          	sd	s5,584(sp)
    1956:	25613023          	sd	s6,576(sp)
    195a:	23713c23          	sd	s7,568(sp)
    195e:	23813823          	sd	s8,560(sp)
    1962:	23913423          	sd	s9,552(sp)
    1966:	23a13023          	sd	s10,544(sp)
    196a:	21b13c23          	sd	s11,536(sp)
    196e:	8baa                	mv	s7,a0
    1970:	8a2e                	mv	s4,a1
    1972:	8c32                	mv	s8,a2
    1974:	89b6                	mv	s3,a3
    1976:	040c                	addi	a1,sp,512
    1978:	00000097          	auipc	ra,0x0
    197c:	28e080e7          	jalr	654(ra) # 1c06 <fstat>
    1980:	20813603          	ld	a2,520(sp)
    1984:	03361163          	bne	a2,s3,19a6 <check_file_handle+0x70>
    1988:	06098763          	beqz	s3,19f6 <check_file_handle+0xc0>
    198c:	4901                	li	s2,0
    198e:	20000a93          	li	s5,512
    1992:	00002cb7          	lui	s9,0x2
    1996:	00002db7          	lui	s11,0x2
    199a:	6b0d                	lui	s6,0x3
    199c:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19a0:	00002d37          	lui	s10,0x2
    19a4:	aa39                	j	1ac2 <check_file_handle+0x18c>
    19a6:	86ce                	mv	a3,s3
    19a8:	85d2                	mv	a1,s4
    19aa:	00002537          	lui	a0,0x2
    19ae:	21050513          	addi	a0,a0,528 # 2210 <crctab+0x530>
    19b2:	00000097          	auipc	ra,0x0
    19b6:	942080e7          	jalr	-1726(ra) # 12f4 <printf>
    19ba:	fc0999e3          	bnez	s3,198c <check_file_handle+0x56>
    19be:	20813683          	ld	a3,520(sp)
    19c2:	03368a63          	beq	a3,s3,19f6 <check_file_handle+0xc0>
    19c6:	0a600813          	li	a6,166
    19ca:	000027b7          	lui	a5,0x2
    19ce:	0e078793          	addi	a5,a5,224 # 20e0 <crctab+0x400>
    19d2:	874e                	mv	a4,s3
    19d4:	8652                	mv	a2,s4
    19d6:	000025b7          	lui	a1,0x2
    19da:	2e058593          	addi	a1,a1,736 # 22e0 <crctab+0x600>
    19de:	4509                	li	a0,2
    19e0:	00000097          	auipc	ra,0x0
    19e4:	8f2080e7          	jalr	-1806(ra) # 12d2 <fprintf>
    19e8:	650d                	lui	a0,0x3
    19ea:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19ee:	00000097          	auipc	ra,0x0
    19f2:	1c8080e7          	jalr	456(ra) # 1bb6 <exit>
    19f6:	85d2                	mv	a1,s4
    19f8:	00002537          	lui	a0,0x2
    19fc:	32850513          	addi	a0,a0,808 # 2328 <crctab+0x648>
    1a00:	00000097          	auipc	ra,0x0
    1a04:	8f4080e7          	jalr	-1804(ra) # 12f4 <printf>
    1a08:	27813083          	ld	ra,632(sp)
    1a0c:	27013403          	ld	s0,624(sp)
    1a10:	26813483          	ld	s1,616(sp)
    1a14:	26013903          	ld	s2,608(sp)
    1a18:	25813983          	ld	s3,600(sp)
    1a1c:	25013a03          	ld	s4,592(sp)
    1a20:	24813a83          	ld	s5,584(sp)
    1a24:	24013b03          	ld	s6,576(sp)
    1a28:	23813b83          	ld	s7,568(sp)
    1a2c:	23013c03          	ld	s8,560(sp)
    1a30:	22813c83          	ld	s9,552(sp)
    1a34:	22013d03          	ld	s10,544(sp)
    1a38:	21813d83          	ld	s11,536(sp)
    1a3c:	28010113          	addi	sp,sp,640
    1a40:	8082                	ret
    1a42:	09d00893          	li	a7,157
    1a46:	0e0c8813          	addi	a6,s9,224 # 20e0 <crctab+0x400>
    1a4a:	87aa                	mv	a5,a0
    1a4c:	8752                	mv	a4,s4
    1a4e:	86ca                	mv	a3,s2
    1a50:	8622                	mv	a2,s0
    1a52:	240d8593          	addi	a1,s11,576 # 2240 <crctab+0x560>
    1a56:	4509                	li	a0,2
    1a58:	00000097          	auipc	ra,0x0
    1a5c:	87a080e7          	jalr	-1926(ra) # 12d2 <fprintf>
    1a60:	855a                	mv	a0,s6
    1a62:	00000097          	auipc	ra,0x0
    1a66:	154080e7          	jalr	340(ra) # 1bb6 <exit>
    1a6a:	a89d                	j	1ae0 <check_file_handle+0x1aa>
    1a6c:	00160593          	addi	a1,a2,1
    1a70:	0285f163          	bgeu	a1,s0,1a92 <check_file_handle+0x15c>
    1a74:	00c10733          	add	a4,sp,a2
    1a78:	00b487b3          	add	a5,s1,a1
    1a7c:	00174683          	lbu	a3,1(a4)
    1a80:	0007c783          	lbu	a5,0(a5)
    1a84:	00f68763          	beq	a3,a5,1a92 <check_file_handle+0x15c>
    1a88:	0585                	addi	a1,a1,1
    1a8a:	0705                	addi	a4,a4,1
    1a8c:	feb416e3          	bne	s0,a1,1a78 <check_file_handle+0x142>
    1a90:	85a2                	mv	a1,s0
    1a92:	08100813          	li	a6,129
    1a96:	0e0c8793          	addi	a5,s9,224
    1a9a:	8752                	mv	a4,s4
    1a9c:	012606b3          	add	a3,a2,s2
    1aa0:	40c58633          	sub	a2,a1,a2
    1aa4:	288d0593          	addi	a1,s10,648 # 2288 <crctab+0x5a8>
    1aa8:	4509                	li	a0,2
    1aaa:	00000097          	auipc	ra,0x0
    1aae:	828080e7          	jalr	-2008(ra) # 12d2 <fprintf>
    1ab2:	855a                	mv	a0,s6
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	102080e7          	jalr	258(ra) # 1bb6 <exit>
    1abc:	9922                	add	s2,s2,s0
    1abe:	f13970e3          	bgeu	s2,s3,19be <check_file_handle+0x88>
    1ac2:	41298433          	sub	s0,s3,s2
    1ac6:	008af363          	bgeu	s5,s0,1acc <check_file_handle+0x196>
    1aca:	8456                	mv	s0,s5
    1acc:	0004061b          	sext.w	a2,s0
    1ad0:	858a                	mv	a1,sp
    1ad2:	855e                	mv	a0,s7
    1ad4:	00000097          	auipc	ra,0x0
    1ad8:	10a080e7          	jalr	266(ra) # 1bde <read>
    1adc:	f68513e3          	bne	a0,s0,1a42 <check_file_handle+0x10c>
    1ae0:	012c04b3          	add	s1,s8,s2
    1ae4:	8622                	mv	a2,s0
    1ae6:	85a6                	mv	a1,s1
    1ae8:	850a                	mv	a0,sp
    1aea:	00000097          	auipc	ra,0x0
    1aee:	bce080e7          	jalr	-1074(ra) # 16b8 <memcmp>
    1af2:	d569                	beqz	a0,1abc <check_file_handle+0x186>
    1af4:	03298163          	beq	s3,s2,1b16 <check_file_handle+0x1e0>
    1af8:	870a                	mv	a4,sp
    1afa:	4601                	li	a2,0
    1afc:	00c487b3          	add	a5,s1,a2
    1b00:	00074683          	lbu	a3,0(a4)
    1b04:	0007c783          	lbu	a5,0(a5)
    1b08:	f6f692e3          	bne	a3,a5,1a6c <check_file_handle+0x136>
    1b0c:	0605                	addi	a2,a2,1
    1b0e:	0705                	addi	a4,a4,1
    1b10:	fe8666e3          	bltu	a2,s0,1afc <check_file_handle+0x1c6>
    1b14:	bfa1                	j	1a6c <check_file_handle+0x136>
    1b16:	4601                	li	a2,0
    1b18:	4585                	li	a1,1
    1b1a:	bfa5                	j	1a92 <check_file_handle+0x15c>

0000000000001b1c <check_file>:
    1b1c:	7179                	addi	sp,sp,-48
    1b1e:	f406                	sd	ra,40(sp)
    1b20:	f022                	sd	s0,32(sp)
    1b22:	ec26                	sd	s1,24(sp)
    1b24:	e84a                	sd	s2,16(sp)
    1b26:	e44e                	sd	s3,8(sp)
    1b28:	84aa                	mv	s1,a0
    1b2a:	892e                	mv	s2,a1
    1b2c:	89b2                	mv	s3,a2
    1b2e:	4581                	li	a1,0
    1b30:	00000097          	auipc	ra,0x0
    1b34:	0a6080e7          	jalr	166(ra) # 1bd6 <open>
    1b38:	842a                	mv	s0,a0
    1b3a:	4789                	li	a5,2
    1b3c:	02a7df63          	bge	a5,a0,1b7a <check_file+0x5e>
    1b40:	86ce                	mv	a3,s3
    1b42:	864a                	mv	a2,s2
    1b44:	85a6                	mv	a1,s1
    1b46:	8522                	mv	a0,s0
    1b48:	00000097          	auipc	ra,0x0
    1b4c:	dee080e7          	jalr	-530(ra) # 1936 <check_file_handle>
    1b50:	85a6                	mv	a1,s1
    1b52:	00002537          	lui	a0,0x2
    1b56:	3b050513          	addi	a0,a0,944 # 23b0 <crctab+0x6d0>
    1b5a:	fffff097          	auipc	ra,0xfffff
    1b5e:	79a080e7          	jalr	1946(ra) # 12f4 <printf>
    1b62:	8522                	mv	a0,s0
    1b64:	00000097          	auipc	ra,0x0
    1b68:	09a080e7          	jalr	154(ra) # 1bfe <close>
    1b6c:	70a2                	ld	ra,40(sp)
    1b6e:	7402                	ld	s0,32(sp)
    1b70:	64e2                	ld	s1,24(sp)
    1b72:	6942                	ld	s2,16(sp)
    1b74:	69a2                	ld	s3,8(sp)
    1b76:	6145                	addi	sp,sp,48
    1b78:	8082                	ret
    1b7a:	0ae00713          	li	a4,174
    1b7e:	000026b7          	lui	a3,0x2
    1b82:	0e068693          	addi	a3,a3,224 # 20e0 <crctab+0x400>
    1b86:	8626                	mv	a2,s1
    1b88:	000025b7          	lui	a1,0x2
    1b8c:	34858593          	addi	a1,a1,840 # 2348 <crctab+0x668>
    1b90:	4509                	li	a0,2
    1b92:	fffff097          	auipc	ra,0xfffff
    1b96:	740080e7          	jalr	1856(ra) # 12d2 <fprintf>
    1b9a:	650d                	lui	a0,0x3
    1b9c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1ba0:	00000097          	auipc	ra,0x0
    1ba4:	016080e7          	jalr	22(ra) # 1bb6 <exit>
    1ba8:	bf61                	j	1b40 <check_file+0x24>

0000000000001baa <r_sp>:
    1baa:	850a                	mv	a0,sp
    1bac:	8082                	ret

0000000000001bae <halt>:
    1bae:	4885                	li	a7,1
    1bb0:	00000073          	ecall
    1bb4:	8082                	ret

0000000000001bb6 <exit>:
    1bb6:	4889                	li	a7,2
    1bb8:	00000073          	ecall
    1bbc:	8082                	ret

0000000000001bbe <exec>:
    1bbe:	488d                	li	a7,3
    1bc0:	00000073          	ecall
    1bc4:	8082                	ret

0000000000001bc6 <wait>:
    1bc6:	4891                	li	a7,4
    1bc8:	00000073          	ecall
    1bcc:	8082                	ret

0000000000001bce <remove>:
    1bce:	4895                	li	a7,5
    1bd0:	00000073          	ecall
    1bd4:	8082                	ret

0000000000001bd6 <open>:
    1bd6:	4899                	li	a7,6
    1bd8:	00000073          	ecall
    1bdc:	8082                	ret

0000000000001bde <read>:
    1bde:	489d                	li	a7,7
    1be0:	00000073          	ecall
    1be4:	8082                	ret

0000000000001be6 <write>:
    1be6:	48a1                	li	a7,8
    1be8:	00000073          	ecall
    1bec:	8082                	ret

0000000000001bee <seek>:
    1bee:	48a5                	li	a7,9
    1bf0:	00000073          	ecall
    1bf4:	8082                	ret

0000000000001bf6 <tell>:
    1bf6:	48a9                	li	a7,10
    1bf8:	00000073          	ecall
    1bfc:	8082                	ret

0000000000001bfe <close>:
    1bfe:	48ad                	li	a7,11
    1c00:	00000073          	ecall
    1c04:	8082                	ret

0000000000001c06 <fstat>:
    1c06:	48b1                	li	a7,12
    1c08:	00000073          	ecall
    1c0c:	8082                	ret

0000000000001c0e <mmap>:
    1c0e:	48b5                	li	a7,13
    1c10:	00000073          	ecall
    1c14:	8082                	ret

0000000000001c16 <munmap>:
    1c16:	48b9                	li	a7,14
    1c18:	00000073          	ecall
    1c1c:	8082                	ret

0000000000001c1e <chdir>:
    1c1e:	48bd                	li	a7,15
    1c20:	00000073          	ecall
    1c24:	8082                	ret

0000000000001c26 <mkdir>:
    1c26:	48c1                	li	a7,16
    1c28:	00000073          	ecall
    1c2c:	8082                	ret
