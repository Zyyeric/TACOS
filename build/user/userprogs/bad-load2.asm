
build/user/userprogs/bad-load2:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	c0300793          	li	a5,-1021
    1008:	07f2                	slli	a5,a5,0x1c
    100a:	438c                	lw	a1,0(a5)
    100c:	00002537          	lui	a0,0x2
    1010:	c4050513          	addi	a0,a0,-960 # 1c40 <mkdir+0x16>
    1014:	00000097          	auipc	ra,0x0
    1018:	2e4080e7          	jalr	740(ra) # 12f8 <printf>
    101c:	46a5                	li	a3,9
    101e:	00002637          	lui	a2,0x2
    1022:	c8060613          	addi	a2,a2,-896 # 1c80 <mkdir+0x56>
    1026:	000025b7          	lui	a1,0x2
    102a:	ca058593          	addi	a1,a1,-864 # 1ca0 <mkdir+0x76>
    102e:	4509                	li	a0,2
    1030:	00000097          	auipc	ra,0x0
    1034:	2a6080e7          	jalr	678(ra) # 12d6 <fprintf>
    1038:	650d                	lui	a0,0x3
    103a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    103e:	00001097          	auipc	ra,0x1
    1042:	b7c080e7          	jalr	-1156(ra) # 1bba <exit>
    1046:	60a2                	ld	ra,8(sp)
    1048:	0141                	addi	sp,sp,16
    104a:	8082                	ret

000000000000104c <putc>:
    104c:	1101                	addi	sp,sp,-32
    104e:	ec06                	sd	ra,24(sp)
    1050:	00b107a3          	sb	a1,15(sp)
    1054:	4605                	li	a2,1
    1056:	00f10593          	addi	a1,sp,15
    105a:	00001097          	auipc	ra,0x1
    105e:	b90080e7          	jalr	-1136(ra) # 1bea <write>
    1062:	60e2                	ld	ra,24(sp)
    1064:	6105                	addi	sp,sp,32
    1066:	8082                	ret

0000000000001068 <printint>:
    1068:	7179                	addi	sp,sp,-48
    106a:	f406                	sd	ra,40(sp)
    106c:	f022                	sd	s0,32(sp)
    106e:	ec26                	sd	s1,24(sp)
    1070:	e84a                	sd	s2,16(sp)
    1072:	84aa                	mv	s1,a0
    1074:	c299                	beqz	a3,107a <printint+0x12>
    1076:	0805c363          	bltz	a1,10fc <printint+0x94>
    107a:	2581                	sext.w	a1,a1
    107c:	4881                	li	a7,0
    107e:	868a                	mv	a3,sp
    1080:	4701                	li	a4,0
    1082:	2601                	sext.w	a2,a2
    1084:	00002537          	lui	a0,0x2
    1088:	cd850513          	addi	a0,a0,-808 # 1cd8 <digits>
    108c:	883a                	mv	a6,a4
    108e:	2705                	addiw	a4,a4,1
    1090:	02c5f7bb          	remuw	a5,a1,a2
    1094:	1782                	slli	a5,a5,0x20
    1096:	9381                	srli	a5,a5,0x20
    1098:	97aa                	add	a5,a5,a0
    109a:	0007c783          	lbu	a5,0(a5)
    109e:	00f68023          	sb	a5,0(a3)
    10a2:	0005879b          	sext.w	a5,a1
    10a6:	02c5d5bb          	divuw	a1,a1,a2
    10aa:	0685                	addi	a3,a3,1
    10ac:	fec7f0e3          	bgeu	a5,a2,108c <printint+0x24>
    10b0:	00088a63          	beqz	a7,10c4 <printint+0x5c>
    10b4:	081c                	addi	a5,sp,16
    10b6:	973e                	add	a4,a4,a5
    10b8:	02d00793          	li	a5,45
    10bc:	fef70823          	sb	a5,-16(a4)
    10c0:	0028071b          	addiw	a4,a6,2
    10c4:	02e05663          	blez	a4,10f0 <printint+0x88>
    10c8:	00e10433          	add	s0,sp,a4
    10cc:	fff10913          	addi	s2,sp,-1
    10d0:	993a                	add	s2,s2,a4
    10d2:	377d                	addiw	a4,a4,-1
    10d4:	1702                	slli	a4,a4,0x20
    10d6:	9301                	srli	a4,a4,0x20
    10d8:	40e90933          	sub	s2,s2,a4
    10dc:	fff44583          	lbu	a1,-1(s0)
    10e0:	8526                	mv	a0,s1
    10e2:	00000097          	auipc	ra,0x0
    10e6:	f6a080e7          	jalr	-150(ra) # 104c <putc>
    10ea:	147d                	addi	s0,s0,-1
    10ec:	ff2418e3          	bne	s0,s2,10dc <printint+0x74>
    10f0:	70a2                	ld	ra,40(sp)
    10f2:	7402                	ld	s0,32(sp)
    10f4:	64e2                	ld	s1,24(sp)
    10f6:	6942                	ld	s2,16(sp)
    10f8:	6145                	addi	sp,sp,48
    10fa:	8082                	ret
    10fc:	40b005bb          	negw	a1,a1
    1100:	4885                	li	a7,1
    1102:	bfb5                	j	107e <printint+0x16>

0000000000001104 <vprintf>:
    1104:	7159                	addi	sp,sp,-112
    1106:	f486                	sd	ra,104(sp)
    1108:	f0a2                	sd	s0,96(sp)
    110a:	eca6                	sd	s1,88(sp)
    110c:	e8ca                	sd	s2,80(sp)
    110e:	e4ce                	sd	s3,72(sp)
    1110:	e0d2                	sd	s4,64(sp)
    1112:	fc56                	sd	s5,56(sp)
    1114:	f85a                	sd	s6,48(sp)
    1116:	f45e                	sd	s7,40(sp)
    1118:	f062                	sd	s8,32(sp)
    111a:	ec66                	sd	s9,24(sp)
    111c:	e86a                	sd	s10,16(sp)
    111e:	e46e                	sd	s11,8(sp)
    1120:	0005c483          	lbu	s1,0(a1)
    1124:	18048a63          	beqz	s1,12b8 <vprintf+0x1b4>
    1128:	8a2a                	mv	s4,a0
    112a:	8ab2                	mv	s5,a2
    112c:	00158413          	addi	s0,a1,1
    1130:	4901                	li	s2,0
    1132:	02500993          	li	s3,37
    1136:	06400b93          	li	s7,100
    113a:	06c00c13          	li	s8,108
    113e:	07800c93          	li	s9,120
    1142:	07000d13          	li	s10,112
    1146:	00002db7          	lui	s11,0x2
    114a:	00002b37          	lui	s6,0x2
    114e:	cd8b0b13          	addi	s6,s6,-808 # 1cd8 <digits>
    1152:	a839                	j	1170 <vprintf+0x6c>
    1154:	85a6                	mv	a1,s1
    1156:	8552                	mv	a0,s4
    1158:	00000097          	auipc	ra,0x0
    115c:	ef4080e7          	jalr	-268(ra) # 104c <putc>
    1160:	a019                	j	1166 <vprintf+0x62>
    1162:	01390f63          	beq	s2,s3,1180 <vprintf+0x7c>
    1166:	0405                	addi	s0,s0,1
    1168:	fff44483          	lbu	s1,-1(s0)
    116c:	14048663          	beqz	s1,12b8 <vprintf+0x1b4>
    1170:	0004879b          	sext.w	a5,s1
    1174:	fe0917e3          	bnez	s2,1162 <vprintf+0x5e>
    1178:	fd379ee3          	bne	a5,s3,1154 <vprintf+0x50>
    117c:	893e                	mv	s2,a5
    117e:	b7e5                	j	1166 <vprintf+0x62>
    1180:	05778063          	beq	a5,s7,11c0 <vprintf+0xbc>
    1184:	05878c63          	beq	a5,s8,11dc <vprintf+0xd8>
    1188:	07978863          	beq	a5,s9,11f8 <vprintf+0xf4>
    118c:	09a78463          	beq	a5,s10,1214 <vprintf+0x110>
    1190:	07300713          	li	a4,115
    1194:	0ce78263          	beq	a5,a4,1258 <vprintf+0x154>
    1198:	06300713          	li	a4,99
    119c:	0ee78763          	beq	a5,a4,128a <vprintf+0x186>
    11a0:	11378163          	beq	a5,s3,12a2 <vprintf+0x19e>
    11a4:	85ce                	mv	a1,s3
    11a6:	8552                	mv	a0,s4
    11a8:	00000097          	auipc	ra,0x0
    11ac:	ea4080e7          	jalr	-348(ra) # 104c <putc>
    11b0:	85a6                	mv	a1,s1
    11b2:	8552                	mv	a0,s4
    11b4:	00000097          	auipc	ra,0x0
    11b8:	e98080e7          	jalr	-360(ra) # 104c <putc>
    11bc:	4901                	li	s2,0
    11be:	b765                	j	1166 <vprintf+0x62>
    11c0:	008a8493          	addi	s1,s5,8
    11c4:	4685                	li	a3,1
    11c6:	4629                	li	a2,10
    11c8:	000aa583          	lw	a1,0(s5)
    11cc:	8552                	mv	a0,s4
    11ce:	00000097          	auipc	ra,0x0
    11d2:	e9a080e7          	jalr	-358(ra) # 1068 <printint>
    11d6:	8aa6                	mv	s5,s1
    11d8:	4901                	li	s2,0
    11da:	b771                	j	1166 <vprintf+0x62>
    11dc:	008a8493          	addi	s1,s5,8
    11e0:	4681                	li	a3,0
    11e2:	4629                	li	a2,10
    11e4:	000aa583          	lw	a1,0(s5)
    11e8:	8552                	mv	a0,s4
    11ea:	00000097          	auipc	ra,0x0
    11ee:	e7e080e7          	jalr	-386(ra) # 1068 <printint>
    11f2:	8aa6                	mv	s5,s1
    11f4:	4901                	li	s2,0
    11f6:	bf85                	j	1166 <vprintf+0x62>
    11f8:	008a8493          	addi	s1,s5,8
    11fc:	4681                	li	a3,0
    11fe:	4641                	li	a2,16
    1200:	000aa583          	lw	a1,0(s5)
    1204:	8552                	mv	a0,s4
    1206:	00000097          	auipc	ra,0x0
    120a:	e62080e7          	jalr	-414(ra) # 1068 <printint>
    120e:	8aa6                	mv	s5,s1
    1210:	4901                	li	s2,0
    1212:	bf91                	j	1166 <vprintf+0x62>
    1214:	008a8913          	addi	s2,s5,8
    1218:	000aba83          	ld	s5,0(s5)
    121c:	03000593          	li	a1,48
    1220:	8552                	mv	a0,s4
    1222:	00000097          	auipc	ra,0x0
    1226:	e2a080e7          	jalr	-470(ra) # 104c <putc>
    122a:	85e6                	mv	a1,s9
    122c:	8552                	mv	a0,s4
    122e:	00000097          	auipc	ra,0x0
    1232:	e1e080e7          	jalr	-482(ra) # 104c <putc>
    1236:	44c1                	li	s1,16
    1238:	03cad793          	srli	a5,s5,0x3c
    123c:	97da                	add	a5,a5,s6
    123e:	0007c583          	lbu	a1,0(a5)
    1242:	8552                	mv	a0,s4
    1244:	00000097          	auipc	ra,0x0
    1248:	e08080e7          	jalr	-504(ra) # 104c <putc>
    124c:	0a92                	slli	s5,s5,0x4
    124e:	34fd                	addiw	s1,s1,-1
    1250:	f4e5                	bnez	s1,1238 <vprintf+0x134>
    1252:	8aca                	mv	s5,s2
    1254:	4901                	li	s2,0
    1256:	bf01                	j	1166 <vprintf+0x62>
    1258:	008a8913          	addi	s2,s5,8
    125c:	000ab483          	ld	s1,0(s5)
    1260:	c085                	beqz	s1,1280 <vprintf+0x17c>
    1262:	0004c583          	lbu	a1,0(s1)
    1266:	c5b1                	beqz	a1,12b2 <vprintf+0x1ae>
    1268:	8552                	mv	a0,s4
    126a:	00000097          	auipc	ra,0x0
    126e:	de2080e7          	jalr	-542(ra) # 104c <putc>
    1272:	0485                	addi	s1,s1,1
    1274:	0004c583          	lbu	a1,0(s1)
    1278:	f9e5                	bnez	a1,1268 <vprintf+0x164>
    127a:	8aca                	mv	s5,s2
    127c:	4901                	li	s2,0
    127e:	b5e5                	j	1166 <vprintf+0x62>
    1280:	cd0d8493          	addi	s1,s11,-816 # 1cd0 <mkdir+0xa6>
    1284:	02800593          	li	a1,40
    1288:	b7c5                	j	1268 <vprintf+0x164>
    128a:	008a8493          	addi	s1,s5,8
    128e:	000ac583          	lbu	a1,0(s5)
    1292:	8552                	mv	a0,s4
    1294:	00000097          	auipc	ra,0x0
    1298:	db8080e7          	jalr	-584(ra) # 104c <putc>
    129c:	8aa6                	mv	s5,s1
    129e:	4901                	li	s2,0
    12a0:	b5d9                	j	1166 <vprintf+0x62>
    12a2:	85ce                	mv	a1,s3
    12a4:	8552                	mv	a0,s4
    12a6:	00000097          	auipc	ra,0x0
    12aa:	da6080e7          	jalr	-602(ra) # 104c <putc>
    12ae:	4901                	li	s2,0
    12b0:	bd5d                	j	1166 <vprintf+0x62>
    12b2:	8aca                	mv	s5,s2
    12b4:	4901                	li	s2,0
    12b6:	bd45                	j	1166 <vprintf+0x62>
    12b8:	70a6                	ld	ra,104(sp)
    12ba:	7406                	ld	s0,96(sp)
    12bc:	64e6                	ld	s1,88(sp)
    12be:	6946                	ld	s2,80(sp)
    12c0:	69a6                	ld	s3,72(sp)
    12c2:	6a06                	ld	s4,64(sp)
    12c4:	7ae2                	ld	s5,56(sp)
    12c6:	7b42                	ld	s6,48(sp)
    12c8:	7ba2                	ld	s7,40(sp)
    12ca:	7c02                	ld	s8,32(sp)
    12cc:	6ce2                	ld	s9,24(sp)
    12ce:	6d42                	ld	s10,16(sp)
    12d0:	6da2                	ld	s11,8(sp)
    12d2:	6165                	addi	sp,sp,112
    12d4:	8082                	ret

00000000000012d6 <fprintf>:
    12d6:	715d                	addi	sp,sp,-80
    12d8:	ec06                	sd	ra,24(sp)
    12da:	f032                	sd	a2,32(sp)
    12dc:	f436                	sd	a3,40(sp)
    12de:	f83a                	sd	a4,48(sp)
    12e0:	fc3e                	sd	a5,56(sp)
    12e2:	e0c2                	sd	a6,64(sp)
    12e4:	e4c6                	sd	a7,72(sp)
    12e6:	1010                	addi	a2,sp,32
    12e8:	e432                	sd	a2,8(sp)
    12ea:	00000097          	auipc	ra,0x0
    12ee:	e1a080e7          	jalr	-486(ra) # 1104 <vprintf>
    12f2:	60e2                	ld	ra,24(sp)
    12f4:	6161                	addi	sp,sp,80
    12f6:	8082                	ret

00000000000012f8 <printf>:
    12f8:	711d                	addi	sp,sp,-96
    12fa:	ec06                	sd	ra,24(sp)
    12fc:	f42e                	sd	a1,40(sp)
    12fe:	f832                	sd	a2,48(sp)
    1300:	fc36                	sd	a3,56(sp)
    1302:	e0ba                	sd	a4,64(sp)
    1304:	e4be                	sd	a5,72(sp)
    1306:	e8c2                	sd	a6,80(sp)
    1308:	ecc6                	sd	a7,88(sp)
    130a:	1030                	addi	a2,sp,40
    130c:	e432                	sd	a2,8(sp)
    130e:	85aa                	mv	a1,a0
    1310:	4505                	li	a0,1
    1312:	00000097          	auipc	ra,0x0
    1316:	df2080e7          	jalr	-526(ra) # 1104 <vprintf>
    131a:	60e2                	ld	ra,24(sp)
    131c:	6125                	addi	sp,sp,96
    131e:	8082                	ret

0000000000001320 <cksum>:
    1320:	cdb1                	beqz	a1,137c <cksum+0x5c>
    1322:	00b50833          	add	a6,a0,a1
    1326:	4781                	li	a5,0
    1328:	00002637          	lui	a2,0x2
    132c:	cf060613          	addi	a2,a2,-784 # 1cf0 <crctab>
    1330:	0505                	addi	a0,a0,1
    1332:	0087969b          	slliw	a3,a5,0x8
    1336:	0187d71b          	srliw	a4,a5,0x18
    133a:	fff54783          	lbu	a5,-1(a0)
    133e:	8f3d                	xor	a4,a4,a5
    1340:	1702                	slli	a4,a4,0x20
    1342:	9301                	srli	a4,a4,0x20
    1344:	070a                	slli	a4,a4,0x2
    1346:	9732                	add	a4,a4,a2
    1348:	431c                	lw	a5,0(a4)
    134a:	8fb5                	xor	a5,a5,a3
    134c:	2781                	sext.w	a5,a5
    134e:	fea811e3          	bne	a6,a0,1330 <cksum+0x10>
    1352:	00002637          	lui	a2,0x2
    1356:	cf060613          	addi	a2,a2,-784 # 1cf0 <crctab>
    135a:	0ff5f693          	andi	a3,a1,255
    135e:	81a1                	srli	a1,a1,0x8
    1360:	0087951b          	slliw	a0,a5,0x8
    1364:	0187d71b          	srliw	a4,a5,0x18
    1368:	8f35                	xor	a4,a4,a3
    136a:	070a                	slli	a4,a4,0x2
    136c:	9732                	add	a4,a4,a2
    136e:	431c                	lw	a5,0(a4)
    1370:	8fa9                	xor	a5,a5,a0
    1372:	2781                	sext.w	a5,a5
    1374:	f1fd                	bnez	a1,135a <cksum+0x3a>
    1376:	fff7c513          	not	a0,a5
    137a:	8082                	ret
    137c:	4781                	li	a5,0
    137e:	bfe5                	j	1376 <cksum+0x56>

0000000000001380 <swap_bytes>:
    1380:	ce19                	beqz	a2,139e <swap_bytes+0x1e>
    1382:	87aa                	mv	a5,a0
    1384:	962a                	add	a2,a2,a0
    1386:	0007c703          	lbu	a4,0(a5)
    138a:	0005c683          	lbu	a3,0(a1)
    138e:	00d78023          	sb	a3,0(a5)
    1392:	00e58023          	sb	a4,0(a1)
    1396:	0785                	addi	a5,a5,1
    1398:	0585                	addi	a1,a1,1
    139a:	fec796e3          	bne	a5,a2,1386 <swap_bytes+0x6>
    139e:	8082                	ret

00000000000013a0 <random_init>:
    13a0:	7139                	addi	sp,sp,-64
    13a2:	fc06                	sd	ra,56(sp)
    13a4:	f822                	sd	s0,48(sp)
    13a6:	f426                	sd	s1,40(sp)
    13a8:	f04a                	sd	s2,32(sp)
    13aa:	ec4e                	sd	s3,24(sp)
    13ac:	e852                	sd	s4,16(sp)
    13ae:	c62a                	sw	a0,12(sp)
    13b0:	000037b7          	lui	a5,0x3
    13b4:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13b8:	eca5                	bnez	s1,1430 <random_init+0x90>
    13ba:	00003737          	lui	a4,0x3
    13be:	01070913          	addi	s2,a4,16 # 3010 <s>
    13c2:	01070713          	addi	a4,a4,16
    13c6:	87a6                	mv	a5,s1
    13c8:	10000693          	li	a3,256
    13cc:	00f70023          	sb	a5,0(a4)
    13d0:	2785                	addiw	a5,a5,1
    13d2:	0705                	addi	a4,a4,1
    13d4:	fed79ce3          	bne	a5,a3,13cc <random_init+0x2c>
    13d8:	4401                	li	s0,0
    13da:	000039b7          	lui	s3,0x3
    13de:	01098993          	addi	s3,s3,16 # 3010 <s>
    13e2:	10000a13          	li	s4,256
    13e6:	0034f793          	andi	a5,s1,3
    13ea:	0818                	addi	a4,sp,16
    13ec:	97ba                	add	a5,a5,a4
    13ee:	ffc7c783          	lbu	a5,-4(a5)
    13f2:	00094703          	lbu	a4,0(s2)
    13f6:	9fb9                	addw	a5,a5,a4
    13f8:	9c3d                	addw	s0,s0,a5
    13fa:	0ff47413          	andi	s0,s0,255
    13fe:	4605                	li	a2,1
    1400:	008985b3          	add	a1,s3,s0
    1404:	854a                	mv	a0,s2
    1406:	00000097          	auipc	ra,0x0
    140a:	f7a080e7          	jalr	-134(ra) # 1380 <swap_bytes>
    140e:	2485                	addiw	s1,s1,1
    1410:	0905                	addi	s2,s2,1
    1412:	fd449ae3          	bne	s1,s4,13e6 <random_init+0x46>
    1416:	000037b7          	lui	a5,0x3
    141a:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    141e:	000037b7          	lui	a5,0x3
    1422:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1426:	000037b7          	lui	a5,0x3
    142a:	4705                	li	a4,1
    142c:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1430:	70e2                	ld	ra,56(sp)
    1432:	7442                	ld	s0,48(sp)
    1434:	74a2                	ld	s1,40(sp)
    1436:	7902                	ld	s2,32(sp)
    1438:	69e2                	ld	s3,24(sp)
    143a:	6a42                	ld	s4,16(sp)
    143c:	6121                	addi	sp,sp,64
    143e:	8082                	ret

0000000000001440 <random_bytes>:
    1440:	7139                	addi	sp,sp,-64
    1442:	fc06                	sd	ra,56(sp)
    1444:	f822                	sd	s0,48(sp)
    1446:	f426                	sd	s1,40(sp)
    1448:	f04a                	sd	s2,32(sp)
    144a:	ec4e                	sd	s3,24(sp)
    144c:	e852                	sd	s4,16(sp)
    144e:	e456                	sd	s5,8(sp)
    1450:	e05a                	sd	s6,0(sp)
    1452:	892a                	mv	s2,a0
    1454:	8aae                	mv	s5,a1
    1456:	000037b7          	lui	a5,0x3
    145a:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    145e:	c3c1                	beqz	a5,14de <random_bytes+0x9e>
    1460:	060a8563          	beqz	s5,14ca <random_bytes+0x8a>
    1464:	9aca                	add	s5,s5,s2
    1466:	00003a37          	lui	s4,0x3
    146a:	000034b7          	lui	s1,0x3
    146e:	01048493          	addi	s1,s1,16 # 3010 <s>
    1472:	000039b7          	lui	s3,0x3
    1476:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    147a:	2505                	addiw	a0,a0,1
    147c:	0ff57513          	andi	a0,a0,255
    1480:	00aa02a3          	sb	a0,5(s4)
    1484:	00a48b33          	add	s6,s1,a0
    1488:	000b4403          	lbu	s0,0(s6)
    148c:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1490:	9c3d                	addw	s0,s0,a5
    1492:	0ff47413          	andi	s0,s0,255
    1496:	00898223          	sb	s0,4(s3)
    149a:	4605                	li	a2,1
    149c:	008485b3          	add	a1,s1,s0
    14a0:	855a                	mv	a0,s6
    14a2:	00000097          	auipc	ra,0x0
    14a6:	ede080e7          	jalr	-290(ra) # 1380 <swap_bytes>
    14aa:	9426                	add	s0,s0,s1
    14ac:	000b4783          	lbu	a5,0(s6)
    14b0:	00044703          	lbu	a4,0(s0)
    14b4:	9fb9                	addw	a5,a5,a4
    14b6:	0ff7f793          	andi	a5,a5,255
    14ba:	97a6                	add	a5,a5,s1
    14bc:	0007c783          	lbu	a5,0(a5)
    14c0:	00f90023          	sb	a5,0(s2)
    14c4:	0905                	addi	s2,s2,1
    14c6:	fb2a98e3          	bne	s5,s2,1476 <random_bytes+0x36>
    14ca:	70e2                	ld	ra,56(sp)
    14cc:	7442                	ld	s0,48(sp)
    14ce:	74a2                	ld	s1,40(sp)
    14d0:	7902                	ld	s2,32(sp)
    14d2:	69e2                	ld	s3,24(sp)
    14d4:	6a42                	ld	s4,16(sp)
    14d6:	6aa2                	ld	s5,8(sp)
    14d8:	6b02                	ld	s6,0(sp)
    14da:	6121                	addi	sp,sp,64
    14dc:	8082                	ret
    14de:	4501                	li	a0,0
    14e0:	00000097          	auipc	ra,0x0
    14e4:	ec0080e7          	jalr	-320(ra) # 13a0 <random_init>
    14e8:	bfa5                	j	1460 <random_bytes+0x20>

00000000000014ea <random_ulong>:
    14ea:	1101                	addi	sp,sp,-32
    14ec:	ec06                	sd	ra,24(sp)
    14ee:	45a1                	li	a1,8
    14f0:	0028                	addi	a0,sp,8
    14f2:	00000097          	auipc	ra,0x0
    14f6:	f4e080e7          	jalr	-178(ra) # 1440 <random_bytes>
    14fa:	6522                	ld	a0,8(sp)
    14fc:	60e2                	ld	ra,24(sp)
    14fe:	6105                	addi	sp,sp,32
    1500:	8082                	ret

0000000000001502 <shuffle>:
    1502:	c9b9                	beqz	a1,1558 <shuffle+0x56>
    1504:	7179                	addi	sp,sp,-48
    1506:	f406                	sd	ra,40(sp)
    1508:	f022                	sd	s0,32(sp)
    150a:	ec26                	sd	s1,24(sp)
    150c:	e84a                	sd	s2,16(sp)
    150e:	e44e                	sd	s3,8(sp)
    1510:	e052                	sd	s4,0(sp)
    1512:	8a2a                	mv	s4,a0
    1514:	89ae                	mv	s3,a1
    1516:	84b2                	mv	s1,a2
    1518:	892a                	mv	s2,a0
    151a:	4401                	li	s0,0
    151c:	00000097          	auipc	ra,0x0
    1520:	fce080e7          	jalr	-50(ra) # 14ea <random_ulong>
    1524:	408985b3          	sub	a1,s3,s0
    1528:	02b575b3          	remu	a1,a0,a1
    152c:	95a2                	add	a1,a1,s0
    152e:	029585b3          	mul	a1,a1,s1
    1532:	8626                	mv	a2,s1
    1534:	95d2                	add	a1,a1,s4
    1536:	854a                	mv	a0,s2
    1538:	00000097          	auipc	ra,0x0
    153c:	e48080e7          	jalr	-440(ra) # 1380 <swap_bytes>
    1540:	0405                	addi	s0,s0,1
    1542:	9926                	add	s2,s2,s1
    1544:	fc899ce3          	bne	s3,s0,151c <shuffle+0x1a>
    1548:	70a2                	ld	ra,40(sp)
    154a:	7402                	ld	s0,32(sp)
    154c:	64e2                	ld	s1,24(sp)
    154e:	6942                	ld	s2,16(sp)
    1550:	69a2                	ld	s3,8(sp)
    1552:	6a02                	ld	s4,0(sp)
    1554:	6145                	addi	sp,sp,48
    1556:	8082                	ret
    1558:	8082                	ret

000000000000155a <arc4_init>:
    155a:	100500a3          	sb	zero,257(a0)
    155e:	10050023          	sb	zero,256(a0)
    1562:	4781                	li	a5,0
    1564:	10000693          	li	a3,256
    1568:	00f50733          	add	a4,a0,a5
    156c:	00f70023          	sb	a5,0(a4)
    1570:	0785                	addi	a5,a5,1
    1572:	fed79be3          	bne	a5,a3,1568 <arc4_init+0xe>
    1576:	86aa                	mv	a3,a0
    1578:	10050e13          	addi	t3,a0,256
    157c:	4701                	li	a4,0
    157e:	4781                	li	a5,0
    1580:	0006c883          	lbu	a7,0(a3)
    1584:	00f58833          	add	a6,a1,a5
    1588:	00084803          	lbu	a6,0(a6)
    158c:	00e8873b          	addw	a4,a7,a4
    1590:	00e8073b          	addw	a4,a6,a4
    1594:	0ff77713          	andi	a4,a4,255
    1598:	00e50833          	add	a6,a0,a4
    159c:	00084303          	lbu	t1,0(a6)
    15a0:	00668023          	sb	t1,0(a3)
    15a4:	01180023          	sb	a7,0(a6)
    15a8:	0785                	addi	a5,a5,1
    15aa:	00c7b833          	sltu	a6,a5,a2
    15ae:	41000833          	neg	a6,a6
    15b2:	0107f7b3          	and	a5,a5,a6
    15b6:	0685                	addi	a3,a3,1
    15b8:	fdc694e3          	bne	a3,t3,1580 <arc4_init+0x26>
    15bc:	8082                	ret

00000000000015be <arc4_crypt>:
    15be:	10054e03          	lbu	t3,256(a0)
    15c2:	10154803          	lbu	a6,257(a0)
    15c6:	fff60e93          	addi	t4,a2,-1
    15ca:	c225                	beqz	a2,162a <arc4_crypt+0x6c>
    15cc:	00c588b3          	add	a7,a1,a2
    15d0:	86ae                	mv	a3,a1
    15d2:	001e031b          	addiw	t1,t3,1
    15d6:	40b3033b          	subw	t1,t1,a1
    15da:	00d3073b          	addw	a4,t1,a3
    15de:	0ff77713          	andi	a4,a4,255
    15e2:	972a                	add	a4,a4,a0
    15e4:	00074603          	lbu	a2,0(a4)
    15e8:	0106083b          	addw	a6,a2,a6
    15ec:	0ff87813          	andi	a6,a6,255
    15f0:	010507b3          	add	a5,a0,a6
    15f4:	0007c583          	lbu	a1,0(a5)
    15f8:	00b70023          	sb	a1,0(a4)
    15fc:	00c78023          	sb	a2,0(a5)
    1600:	0685                	addi	a3,a3,1
    1602:	00074783          	lbu	a5,0(a4)
    1606:	9fb1                	addw	a5,a5,a2
    1608:	0ff7f793          	andi	a5,a5,255
    160c:	97aa                	add	a5,a5,a0
    160e:	0007c783          	lbu	a5,0(a5)
    1612:	fff6c703          	lbu	a4,-1(a3)
    1616:	8fb9                	xor	a5,a5,a4
    1618:	fef68fa3          	sb	a5,-1(a3)
    161c:	fb169fe3          	bne	a3,a7,15da <arc4_crypt+0x1c>
    1620:	2e85                	addiw	t4,t4,1
    1622:	01ce8e3b          	addw	t3,t4,t3
    1626:	0ffe7e13          	andi	t3,t3,255
    162a:	11c50023          	sb	t3,256(a0)
    162e:	110500a3          	sb	a6,257(a0)
    1632:	8082                	ret

0000000000001634 <_main>:
    1634:	1141                	addi	sp,sp,-16
    1636:	e406                	sd	ra,8(sp)
    1638:	00000097          	auipc	ra,0x0
    163c:	9c8080e7          	jalr	-1592(ra) # 1000 <main>
    1640:	4501                	li	a0,0
    1642:	00000097          	auipc	ra,0x0
    1646:	578080e7          	jalr	1400(ra) # 1bba <exit>
    164a:	60a2                	ld	ra,8(sp)
    164c:	0141                	addi	sp,sp,16
    164e:	8082                	ret

0000000000001650 <strcmp>:
    1650:	00054783          	lbu	a5,0(a0)
    1654:	cb91                	beqz	a5,1668 <strcmp+0x18>
    1656:	0005c703          	lbu	a4,0(a1)
    165a:	00f71763          	bne	a4,a5,1668 <strcmp+0x18>
    165e:	0505                	addi	a0,a0,1
    1660:	0585                	addi	a1,a1,1
    1662:	00054783          	lbu	a5,0(a0)
    1666:	fbe5                	bnez	a5,1656 <strcmp+0x6>
    1668:	0005c503          	lbu	a0,0(a1)
    166c:	40a7853b          	subw	a0,a5,a0
    1670:	8082                	ret

0000000000001672 <strcpy>:
    1672:	87aa                	mv	a5,a0
    1674:	0585                	addi	a1,a1,1
    1676:	0785                	addi	a5,a5,1
    1678:	fff5c703          	lbu	a4,-1(a1)
    167c:	fee78fa3          	sb	a4,-1(a5)
    1680:	fb75                	bnez	a4,1674 <strcpy+0x2>
    1682:	8082                	ret

0000000000001684 <strlen>:
    1684:	00054783          	lbu	a5,0(a0)
    1688:	cf81                	beqz	a5,16a0 <strlen+0x1c>
    168a:	0505                	addi	a0,a0,1
    168c:	87aa                	mv	a5,a0
    168e:	4685                	li	a3,1
    1690:	9e89                	subw	a3,a3,a0
    1692:	00f6853b          	addw	a0,a3,a5
    1696:	0785                	addi	a5,a5,1
    1698:	fff7c703          	lbu	a4,-1(a5)
    169c:	fb7d                	bnez	a4,1692 <strlen+0xe>
    169e:	8082                	ret
    16a0:	4501                	li	a0,0
    16a2:	8082                	ret

00000000000016a4 <memset>:
    16a4:	ca19                	beqz	a2,16ba <memset+0x16>
    16a6:	87aa                	mv	a5,a0
    16a8:	1602                	slli	a2,a2,0x20
    16aa:	9201                	srli	a2,a2,0x20
    16ac:	00a60733          	add	a4,a2,a0
    16b0:	00b78023          	sb	a1,0(a5)
    16b4:	0785                	addi	a5,a5,1
    16b6:	fee79de3          	bne	a5,a4,16b0 <memset+0xc>
    16ba:	8082                	ret

00000000000016bc <memcmp>:
    16bc:	1101                	addi	sp,sp,-32
    16be:	ec06                	sd	ra,24(sp)
    16c0:	e822                	sd	s0,16(sp)
    16c2:	e426                	sd	s1,8(sp)
    16c4:	e04a                	sd	s2,0(sp)
    16c6:	892a                	mv	s2,a0
    16c8:	842e                	mv	s0,a1
    16ca:	84b2                	mv	s1,a2
    16cc:	c915                	beqz	a0,1700 <memcmp+0x44>
    16ce:	c5ad                	beqz	a1,1738 <memcmp+0x7c>
    16d0:	fff60713          	addi	a4,a2,-1
    16d4:	c645                	beqz	a2,177c <memcmp+0xc0>
    16d6:	87ca                	mv	a5,s2
    16d8:	00190613          	addi	a2,s2,1
    16dc:	963a                	add	a2,a2,a4
    16de:	0007c683          	lbu	a3,0(a5)
    16e2:	00044703          	lbu	a4,0(s0)
    16e6:	08e69463          	bne	a3,a4,176e <memcmp+0xb2>
    16ea:	0785                	addi	a5,a5,1
    16ec:	0405                	addi	s0,s0,1
    16ee:	fec798e3          	bne	a5,a2,16de <memcmp+0x22>
    16f2:	4501                	li	a0,0
    16f4:	60e2                	ld	ra,24(sp)
    16f6:	6442                	ld	s0,16(sp)
    16f8:	64a2                	ld	s1,8(sp)
    16fa:	6902                	ld	s2,0(sp)
    16fc:	6105                	addi	sp,sp,32
    16fe:	8082                	ret
    1700:	4501                	li	a0,0
    1702:	da6d                	beqz	a2,16f4 <memcmp+0x38>
    1704:	03200693          	li	a3,50
    1708:	00002637          	lui	a2,0x2
    170c:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1710:	000025b7          	lui	a1,0x2
    1714:	10058593          	addi	a1,a1,256 # 2100 <crctab+0x410>
    1718:	4509                	li	a0,2
    171a:	00000097          	auipc	ra,0x0
    171e:	bbc080e7          	jalr	-1092(ra) # 12d6 <fprintf>
    1722:	650d                	lui	a0,0x3
    1724:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1728:	00000097          	auipc	ra,0x0
    172c:	492080e7          	jalr	1170(ra) # 1bba <exit>
    1730:	fff48713          	addi	a4,s1,-1
    1734:	f04d                	bnez	s0,16d6 <memcmp+0x1a>
    1736:	a011                	j	173a <memcmp+0x7e>
    1738:	c221                	beqz	a2,1778 <memcmp+0xbc>
    173a:	03300693          	li	a3,51
    173e:	00002637          	lui	a2,0x2
    1742:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1746:	000025b7          	lui	a1,0x2
    174a:	14858593          	addi	a1,a1,328 # 2148 <crctab+0x458>
    174e:	4509                	li	a0,2
    1750:	00000097          	auipc	ra,0x0
    1754:	b86080e7          	jalr	-1146(ra) # 12d6 <fprintf>
    1758:	650d                	lui	a0,0x3
    175a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    175e:	00000097          	auipc	ra,0x0
    1762:	45c080e7          	jalr	1116(ra) # 1bba <exit>
    1766:	fff48713          	addi	a4,s1,-1
    176a:	4401                	li	s0,0
    176c:	b7ad                	j	16d6 <memcmp+0x1a>
    176e:	4505                	li	a0,1
    1770:	f8d762e3          	bltu	a4,a3,16f4 <memcmp+0x38>
    1774:	557d                	li	a0,-1
    1776:	bfbd                	j	16f4 <memcmp+0x38>
    1778:	4501                	li	a0,0
    177a:	bfad                	j	16f4 <memcmp+0x38>
    177c:	4501                	li	a0,0
    177e:	bf9d                	j	16f4 <memcmp+0x38>

0000000000001780 <memcpy>:
    1780:	1101                	addi	sp,sp,-32
    1782:	ec06                	sd	ra,24(sp)
    1784:	e822                	sd	s0,16(sp)
    1786:	e426                	sd	s1,8(sp)
    1788:	e04a                	sd	s2,0(sp)
    178a:	84aa                	mv	s1,a0
    178c:	842e                	mv	s0,a1
    178e:	8932                	mv	s2,a2
    1790:	c51d                	beqz	a0,17be <memcpy+0x3e>
    1792:	c1ad                	beqz	a1,17f4 <memcpy+0x74>
    1794:	fff60693          	addi	a3,a2,-1
    1798:	ce01                	beqz	a2,17b0 <memcpy+0x30>
    179a:	0685                	addi	a3,a3,1
    179c:	96a6                	add	a3,a3,s1
    179e:	87a6                	mv	a5,s1
    17a0:	0405                	addi	s0,s0,1
    17a2:	0785                	addi	a5,a5,1
    17a4:	fff44703          	lbu	a4,-1(s0)
    17a8:	fee78fa3          	sb	a4,-1(a5)
    17ac:	fed79ae3          	bne	a5,a3,17a0 <memcpy+0x20>
    17b0:	8526                	mv	a0,s1
    17b2:	60e2                	ld	ra,24(sp)
    17b4:	6442                	ld	s0,16(sp)
    17b6:	64a2                	ld	s1,8(sp)
    17b8:	6902                	ld	s2,0(sp)
    17ba:	6105                	addi	sp,sp,32
    17bc:	8082                	ret
    17be:	da6d                	beqz	a2,17b0 <memcpy+0x30>
    17c0:	04000693          	li	a3,64
    17c4:	00002637          	lui	a2,0x2
    17c8:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    17cc:	000025b7          	lui	a1,0x2
    17d0:	19058593          	addi	a1,a1,400 # 2190 <crctab+0x4a0>
    17d4:	4509                	li	a0,2
    17d6:	00000097          	auipc	ra,0x0
    17da:	b00080e7          	jalr	-1280(ra) # 12d6 <fprintf>
    17de:	650d                	lui	a0,0x3
    17e0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17e4:	00000097          	auipc	ra,0x0
    17e8:	3d6080e7          	jalr	982(ra) # 1bba <exit>
    17ec:	fff90693          	addi	a3,s2,-1
    17f0:	f44d                	bnez	s0,179a <memcpy+0x1a>
    17f2:	a011                	j	17f6 <memcpy+0x76>
    17f4:	de55                	beqz	a2,17b0 <memcpy+0x30>
    17f6:	04100693          	li	a3,65
    17fa:	00002637          	lui	a2,0x2
    17fe:	0f060613          	addi	a2,a2,240 # 20f0 <crctab+0x400>
    1802:	000025b7          	lui	a1,0x2
    1806:	1d858593          	addi	a1,a1,472 # 21d8 <crctab+0x4e8>
    180a:	4509                	li	a0,2
    180c:	00000097          	auipc	ra,0x0
    1810:	aca080e7          	jalr	-1334(ra) # 12d6 <fprintf>
    1814:	650d                	lui	a0,0x3
    1816:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    181a:	00000097          	auipc	ra,0x0
    181e:	3a0080e7          	jalr	928(ra) # 1bba <exit>
    1822:	fff90693          	addi	a3,s2,-1
    1826:	4401                	li	s0,0
    1828:	bf8d                	j	179a <memcpy+0x1a>

000000000000182a <itoa>:
    182a:	1101                	addi	sp,sp,-32
    182c:	ec06                	sd	ra,24(sp)
    182e:	e822                	sd	s0,16(sp)
    1830:	e426                	sd	s1,8(sp)
    1832:	842a                	mv	s0,a0
    1834:	41f5d71b          	sraiw	a4,a1,0x1f
    1838:	00e5c7b3          	xor	a5,a1,a4
    183c:	9f99                	subw	a5,a5,a4
    183e:	84aa                	mv	s1,a0
    1840:	862a                	mv	a2,a0
    1842:	4681                	li	a3,0
    1844:	4529                	li	a0,10
    1846:	4825                	li	a6,9
    1848:	88b6                	mv	a7,a3
    184a:	2685                	addiw	a3,a3,1
    184c:	02a7e73b          	remw	a4,a5,a0
    1850:	0307071b          	addiw	a4,a4,48
    1854:	00e60023          	sb	a4,0(a2)
    1858:	873e                	mv	a4,a5
    185a:	02a7c7bb          	divw	a5,a5,a0
    185e:	0605                	addi	a2,a2,1
    1860:	fee844e3          	blt	a6,a4,1848 <itoa+0x1e>
    1864:	0405c863          	bltz	a1,18b4 <itoa+0x8a>
    1868:	96a2                	add	a3,a3,s0
    186a:	00068023          	sb	zero,0(a3)
    186e:	8522                	mv	a0,s0
    1870:	00000097          	auipc	ra,0x0
    1874:	e14080e7          	jalr	-492(ra) # 1684 <strlen>
    1878:	fff5071b          	addiw	a4,a0,-1
    187c:	02e05763          	blez	a4,18aa <itoa+0x80>
    1880:	9722                	add	a4,a4,s0
    1882:	4681                	li	a3,0
    1884:	0004c783          	lbu	a5,0(s1)
    1888:	00074603          	lbu	a2,0(a4)
    188c:	00c48023          	sb	a2,0(s1)
    1890:	00f70023          	sb	a5,0(a4)
    1894:	0016879b          	addiw	a5,a3,1
    1898:	0007869b          	sext.w	a3,a5
    189c:	0485                	addi	s1,s1,1
    189e:	177d                	addi	a4,a4,-1
    18a0:	fff7c793          	not	a5,a5
    18a4:	9fa9                	addw	a5,a5,a0
    18a6:	fcf6cfe3          	blt	a3,a5,1884 <itoa+0x5a>
    18aa:	60e2                	ld	ra,24(sp)
    18ac:	6442                	ld	s0,16(sp)
    18ae:	64a2                	ld	s1,8(sp)
    18b0:	6105                	addi	sp,sp,32
    18b2:	8082                	ret
    18b4:	96a2                	add	a3,a3,s0
    18b6:	02d00793          	li	a5,45
    18ba:	00f68023          	sb	a5,0(a3)
    18be:	0028869b          	addiw	a3,a7,2
    18c2:	b75d                	j	1868 <itoa+0x3e>

00000000000018c4 <atoi>:
    18c4:	00054783          	lbu	a5,0(a0)
    18c8:	02000713          	li	a4,32
    18cc:	00e79763          	bne	a5,a4,18da <atoi+0x16>
    18d0:	0505                	addi	a0,a0,1
    18d2:	00054783          	lbu	a5,0(a0)
    18d6:	fee78de3          	beq	a5,a4,18d0 <atoi+0xc>
    18da:	02b00713          	li	a4,43
    18de:	04e78663          	beq	a5,a4,192a <atoi+0x66>
    18e2:	02d00713          	li	a4,45
    18e6:	4805                	li	a6,1
    18e8:	04e78463          	beq	a5,a4,1930 <atoi+0x6c>
    18ec:	00054683          	lbu	a3,0(a0)
    18f0:	fd06879b          	addiw	a5,a3,-48
    18f4:	0ff7f793          	andi	a5,a5,255
    18f8:	4725                	li	a4,9
    18fa:	02f76e63          	bltu	a4,a5,1936 <atoi+0x72>
    18fe:	4601                	li	a2,0
    1900:	45a5                	li	a1,9
    1902:	0505                	addi	a0,a0,1
    1904:	0026179b          	slliw	a5,a2,0x2
    1908:	9fb1                	addw	a5,a5,a2
    190a:	0017979b          	slliw	a5,a5,0x1
    190e:	9fb5                	addw	a5,a5,a3
    1910:	fd07861b          	addiw	a2,a5,-48
    1914:	00054683          	lbu	a3,0(a0)
    1918:	fd06871b          	addiw	a4,a3,-48
    191c:	0ff77713          	andi	a4,a4,255
    1920:	fee5f1e3          	bgeu	a1,a4,1902 <atoi+0x3e>
    1924:	02c8053b          	mulw	a0,a6,a2
    1928:	8082                	ret
    192a:	0505                	addi	a0,a0,1
    192c:	4805                	li	a6,1
    192e:	bf7d                	j	18ec <atoi+0x28>
    1930:	0505                	addi	a0,a0,1
    1932:	587d                	li	a6,-1
    1934:	bf65                	j	18ec <atoi+0x28>
    1936:	4601                	li	a2,0
    1938:	b7f5                	j	1924 <atoi+0x60>

000000000000193a <check_file_handle>:
    193a:	d8010113          	addi	sp,sp,-640
    193e:	26113c23          	sd	ra,632(sp)
    1942:	26813823          	sd	s0,624(sp)
    1946:	26913423          	sd	s1,616(sp)
    194a:	27213023          	sd	s2,608(sp)
    194e:	25313c23          	sd	s3,600(sp)
    1952:	25413823          	sd	s4,592(sp)
    1956:	25513423          	sd	s5,584(sp)
    195a:	25613023          	sd	s6,576(sp)
    195e:	23713c23          	sd	s7,568(sp)
    1962:	23813823          	sd	s8,560(sp)
    1966:	23913423          	sd	s9,552(sp)
    196a:	23a13023          	sd	s10,544(sp)
    196e:	21b13c23          	sd	s11,536(sp)
    1972:	8baa                	mv	s7,a0
    1974:	8a2e                	mv	s4,a1
    1976:	8c32                	mv	s8,a2
    1978:	89b6                	mv	s3,a3
    197a:	040c                	addi	a1,sp,512
    197c:	00000097          	auipc	ra,0x0
    1980:	28e080e7          	jalr	654(ra) # 1c0a <fstat>
    1984:	20813603          	ld	a2,520(sp)
    1988:	03361163          	bne	a2,s3,19aa <check_file_handle+0x70>
    198c:	06098763          	beqz	s3,19fa <check_file_handle+0xc0>
    1990:	4901                	li	s2,0
    1992:	20000a93          	li	s5,512
    1996:	00002cb7          	lui	s9,0x2
    199a:	00002db7          	lui	s11,0x2
    199e:	6b0d                	lui	s6,0x3
    19a0:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19a4:	00002d37          	lui	s10,0x2
    19a8:	aa39                	j	1ac6 <check_file_handle+0x18c>
    19aa:	86ce                	mv	a3,s3
    19ac:	85d2                	mv	a1,s4
    19ae:	00002537          	lui	a0,0x2
    19b2:	22050513          	addi	a0,a0,544 # 2220 <crctab+0x530>
    19b6:	00000097          	auipc	ra,0x0
    19ba:	942080e7          	jalr	-1726(ra) # 12f8 <printf>
    19be:	fc0999e3          	bnez	s3,1990 <check_file_handle+0x56>
    19c2:	20813683          	ld	a3,520(sp)
    19c6:	03368a63          	beq	a3,s3,19fa <check_file_handle+0xc0>
    19ca:	0a600813          	li	a6,166
    19ce:	000027b7          	lui	a5,0x2
    19d2:	0f078793          	addi	a5,a5,240 # 20f0 <crctab+0x400>
    19d6:	874e                	mv	a4,s3
    19d8:	8652                	mv	a2,s4
    19da:	000025b7          	lui	a1,0x2
    19de:	2f058593          	addi	a1,a1,752 # 22f0 <crctab+0x600>
    19e2:	4509                	li	a0,2
    19e4:	00000097          	auipc	ra,0x0
    19e8:	8f2080e7          	jalr	-1806(ra) # 12d6 <fprintf>
    19ec:	650d                	lui	a0,0x3
    19ee:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19f2:	00000097          	auipc	ra,0x0
    19f6:	1c8080e7          	jalr	456(ra) # 1bba <exit>
    19fa:	85d2                	mv	a1,s4
    19fc:	00002537          	lui	a0,0x2
    1a00:	33850513          	addi	a0,a0,824 # 2338 <crctab+0x648>
    1a04:	00000097          	auipc	ra,0x0
    1a08:	8f4080e7          	jalr	-1804(ra) # 12f8 <printf>
    1a0c:	27813083          	ld	ra,632(sp)
    1a10:	27013403          	ld	s0,624(sp)
    1a14:	26813483          	ld	s1,616(sp)
    1a18:	26013903          	ld	s2,608(sp)
    1a1c:	25813983          	ld	s3,600(sp)
    1a20:	25013a03          	ld	s4,592(sp)
    1a24:	24813a83          	ld	s5,584(sp)
    1a28:	24013b03          	ld	s6,576(sp)
    1a2c:	23813b83          	ld	s7,568(sp)
    1a30:	23013c03          	ld	s8,560(sp)
    1a34:	22813c83          	ld	s9,552(sp)
    1a38:	22013d03          	ld	s10,544(sp)
    1a3c:	21813d83          	ld	s11,536(sp)
    1a40:	28010113          	addi	sp,sp,640
    1a44:	8082                	ret
    1a46:	09d00893          	li	a7,157
    1a4a:	0f0c8813          	addi	a6,s9,240 # 20f0 <crctab+0x400>
    1a4e:	87aa                	mv	a5,a0
    1a50:	8752                	mv	a4,s4
    1a52:	86ca                	mv	a3,s2
    1a54:	8622                	mv	a2,s0
    1a56:	250d8593          	addi	a1,s11,592 # 2250 <crctab+0x560>
    1a5a:	4509                	li	a0,2
    1a5c:	00000097          	auipc	ra,0x0
    1a60:	87a080e7          	jalr	-1926(ra) # 12d6 <fprintf>
    1a64:	855a                	mv	a0,s6
    1a66:	00000097          	auipc	ra,0x0
    1a6a:	154080e7          	jalr	340(ra) # 1bba <exit>
    1a6e:	a89d                	j	1ae4 <check_file_handle+0x1aa>
    1a70:	00160593          	addi	a1,a2,1
    1a74:	0285f163          	bgeu	a1,s0,1a96 <check_file_handle+0x15c>
    1a78:	00c10733          	add	a4,sp,a2
    1a7c:	00b487b3          	add	a5,s1,a1
    1a80:	00174683          	lbu	a3,1(a4)
    1a84:	0007c783          	lbu	a5,0(a5)
    1a88:	00f68763          	beq	a3,a5,1a96 <check_file_handle+0x15c>
    1a8c:	0585                	addi	a1,a1,1
    1a8e:	0705                	addi	a4,a4,1
    1a90:	feb416e3          	bne	s0,a1,1a7c <check_file_handle+0x142>
    1a94:	85a2                	mv	a1,s0
    1a96:	08100813          	li	a6,129
    1a9a:	0f0c8793          	addi	a5,s9,240
    1a9e:	8752                	mv	a4,s4
    1aa0:	012606b3          	add	a3,a2,s2
    1aa4:	40c58633          	sub	a2,a1,a2
    1aa8:	298d0593          	addi	a1,s10,664 # 2298 <crctab+0x5a8>
    1aac:	4509                	li	a0,2
    1aae:	00000097          	auipc	ra,0x0
    1ab2:	828080e7          	jalr	-2008(ra) # 12d6 <fprintf>
    1ab6:	855a                	mv	a0,s6
    1ab8:	00000097          	auipc	ra,0x0
    1abc:	102080e7          	jalr	258(ra) # 1bba <exit>
    1ac0:	9922                	add	s2,s2,s0
    1ac2:	f13970e3          	bgeu	s2,s3,19c2 <check_file_handle+0x88>
    1ac6:	41298433          	sub	s0,s3,s2
    1aca:	008af363          	bgeu	s5,s0,1ad0 <check_file_handle+0x196>
    1ace:	8456                	mv	s0,s5
    1ad0:	0004061b          	sext.w	a2,s0
    1ad4:	858a                	mv	a1,sp
    1ad6:	855e                	mv	a0,s7
    1ad8:	00000097          	auipc	ra,0x0
    1adc:	10a080e7          	jalr	266(ra) # 1be2 <read>
    1ae0:	f68513e3          	bne	a0,s0,1a46 <check_file_handle+0x10c>
    1ae4:	012c04b3          	add	s1,s8,s2
    1ae8:	8622                	mv	a2,s0
    1aea:	85a6                	mv	a1,s1
    1aec:	850a                	mv	a0,sp
    1aee:	00000097          	auipc	ra,0x0
    1af2:	bce080e7          	jalr	-1074(ra) # 16bc <memcmp>
    1af6:	d569                	beqz	a0,1ac0 <check_file_handle+0x186>
    1af8:	03298163          	beq	s3,s2,1b1a <check_file_handle+0x1e0>
    1afc:	870a                	mv	a4,sp
    1afe:	4601                	li	a2,0
    1b00:	00c487b3          	add	a5,s1,a2
    1b04:	00074683          	lbu	a3,0(a4)
    1b08:	0007c783          	lbu	a5,0(a5)
    1b0c:	f6f692e3          	bne	a3,a5,1a70 <check_file_handle+0x136>
    1b10:	0605                	addi	a2,a2,1
    1b12:	0705                	addi	a4,a4,1
    1b14:	fe8666e3          	bltu	a2,s0,1b00 <check_file_handle+0x1c6>
    1b18:	bfa1                	j	1a70 <check_file_handle+0x136>
    1b1a:	4601                	li	a2,0
    1b1c:	4585                	li	a1,1
    1b1e:	bfa5                	j	1a96 <check_file_handle+0x15c>

0000000000001b20 <check_file>:
    1b20:	7179                	addi	sp,sp,-48
    1b22:	f406                	sd	ra,40(sp)
    1b24:	f022                	sd	s0,32(sp)
    1b26:	ec26                	sd	s1,24(sp)
    1b28:	e84a                	sd	s2,16(sp)
    1b2a:	e44e                	sd	s3,8(sp)
    1b2c:	84aa                	mv	s1,a0
    1b2e:	892e                	mv	s2,a1
    1b30:	89b2                	mv	s3,a2
    1b32:	4581                	li	a1,0
    1b34:	00000097          	auipc	ra,0x0
    1b38:	0a6080e7          	jalr	166(ra) # 1bda <open>
    1b3c:	842a                	mv	s0,a0
    1b3e:	4789                	li	a5,2
    1b40:	02a7df63          	bge	a5,a0,1b7e <check_file+0x5e>
    1b44:	86ce                	mv	a3,s3
    1b46:	864a                	mv	a2,s2
    1b48:	85a6                	mv	a1,s1
    1b4a:	8522                	mv	a0,s0
    1b4c:	00000097          	auipc	ra,0x0
    1b50:	dee080e7          	jalr	-530(ra) # 193a <check_file_handle>
    1b54:	85a6                	mv	a1,s1
    1b56:	00002537          	lui	a0,0x2
    1b5a:	3c050513          	addi	a0,a0,960 # 23c0 <crctab+0x6d0>
    1b5e:	fffff097          	auipc	ra,0xfffff
    1b62:	79a080e7          	jalr	1946(ra) # 12f8 <printf>
    1b66:	8522                	mv	a0,s0
    1b68:	00000097          	auipc	ra,0x0
    1b6c:	09a080e7          	jalr	154(ra) # 1c02 <close>
    1b70:	70a2                	ld	ra,40(sp)
    1b72:	7402                	ld	s0,32(sp)
    1b74:	64e2                	ld	s1,24(sp)
    1b76:	6942                	ld	s2,16(sp)
    1b78:	69a2                	ld	s3,8(sp)
    1b7a:	6145                	addi	sp,sp,48
    1b7c:	8082                	ret
    1b7e:	0ae00713          	li	a4,174
    1b82:	000026b7          	lui	a3,0x2
    1b86:	0f068693          	addi	a3,a3,240 # 20f0 <crctab+0x400>
    1b8a:	8626                	mv	a2,s1
    1b8c:	000025b7          	lui	a1,0x2
    1b90:	35858593          	addi	a1,a1,856 # 2358 <crctab+0x668>
    1b94:	4509                	li	a0,2
    1b96:	fffff097          	auipc	ra,0xfffff
    1b9a:	740080e7          	jalr	1856(ra) # 12d6 <fprintf>
    1b9e:	650d                	lui	a0,0x3
    1ba0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1ba4:	00000097          	auipc	ra,0x0
    1ba8:	016080e7          	jalr	22(ra) # 1bba <exit>
    1bac:	bf61                	j	1b44 <check_file+0x24>

0000000000001bae <r_sp>:
    1bae:	850a                	mv	a0,sp
    1bb0:	8082                	ret

0000000000001bb2 <halt>:
    1bb2:	4885                	li	a7,1
    1bb4:	00000073          	ecall
    1bb8:	8082                	ret

0000000000001bba <exit>:
    1bba:	4889                	li	a7,2
    1bbc:	00000073          	ecall
    1bc0:	8082                	ret

0000000000001bc2 <exec>:
    1bc2:	488d                	li	a7,3
    1bc4:	00000073          	ecall
    1bc8:	8082                	ret

0000000000001bca <wait>:
    1bca:	4891                	li	a7,4
    1bcc:	00000073          	ecall
    1bd0:	8082                	ret

0000000000001bd2 <remove>:
    1bd2:	4895                	li	a7,5
    1bd4:	00000073          	ecall
    1bd8:	8082                	ret

0000000000001bda <open>:
    1bda:	4899                	li	a7,6
    1bdc:	00000073          	ecall
    1be0:	8082                	ret

0000000000001be2 <read>:
    1be2:	489d                	li	a7,7
    1be4:	00000073          	ecall
    1be8:	8082                	ret

0000000000001bea <write>:
    1bea:	48a1                	li	a7,8
    1bec:	00000073          	ecall
    1bf0:	8082                	ret

0000000000001bf2 <seek>:
    1bf2:	48a5                	li	a7,9
    1bf4:	00000073          	ecall
    1bf8:	8082                	ret

0000000000001bfa <tell>:
    1bfa:	48a9                	li	a7,10
    1bfc:	00000073          	ecall
    1c00:	8082                	ret

0000000000001c02 <close>:
    1c02:	48ad                	li	a7,11
    1c04:	00000073          	ecall
    1c08:	8082                	ret

0000000000001c0a <fstat>:
    1c0a:	48b1                	li	a7,12
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <mmap>:
    1c12:	48b5                	li	a7,13
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <munmap>:
    1c1a:	48b9                	li	a7,14
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <chdir>:
    1c22:	48bd                	li	a7,15
    1c24:	00000073          	ecall
    1c28:	8082                	ret

0000000000001c2a <mkdir>:
    1c2a:	48c1                	li	a7,16
    1c2c:	00000073          	ecall
    1c30:	8082                	ret
