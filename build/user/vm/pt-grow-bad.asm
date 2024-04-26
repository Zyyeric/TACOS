
build/user/vm/pt-grow-bad:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	72fd                	lui	t0,0xfffff
    1002:	00510333          	add	t1,sp,t0
    1006:	00033303          	ld	t1,0(t1)
    100a:	8082                	ret

000000000000100c <putc>:
    100c:	1101                	addi	sp,sp,-32
    100e:	ec06                	sd	ra,24(sp)
    1010:	00b107a3          	sb	a1,15(sp)
    1014:	4605                	li	a2,1
    1016:	00f10593          	addi	a1,sp,15
    101a:	00001097          	auipc	ra,0x1
    101e:	b90080e7          	jalr	-1136(ra) # 1baa <write>
    1022:	60e2                	ld	ra,24(sp)
    1024:	6105                	addi	sp,sp,32
    1026:	8082                	ret

0000000000001028 <printint>:
    1028:	7179                	addi	sp,sp,-48
    102a:	f406                	sd	ra,40(sp)
    102c:	f022                	sd	s0,32(sp)
    102e:	ec26                	sd	s1,24(sp)
    1030:	e84a                	sd	s2,16(sp)
    1032:	84aa                	mv	s1,a0
    1034:	c299                	beqz	a3,103a <printint+0x12>
    1036:	0805c363          	bltz	a1,10bc <printint+0x94>
    103a:	2581                	sext.w	a1,a1
    103c:	4881                	li	a7,0
    103e:	868a                	mv	a3,sp
    1040:	4701                	li	a4,0
    1042:	2601                	sext.w	a2,a2
    1044:	00002537          	lui	a0,0x2
    1048:	c0850513          	addi	a0,a0,-1016 # 1c08 <digits>
    104c:	883a                	mv	a6,a4
    104e:	2705                	addiw	a4,a4,1
    1050:	02c5f7bb          	remuw	a5,a1,a2
    1054:	1782                	slli	a5,a5,0x20
    1056:	9381                	srli	a5,a5,0x20
    1058:	97aa                	add	a5,a5,a0
    105a:	0007c783          	lbu	a5,0(a5)
    105e:	00f68023          	sb	a5,0(a3)
    1062:	0005879b          	sext.w	a5,a1
    1066:	02c5d5bb          	divuw	a1,a1,a2
    106a:	0685                	addi	a3,a3,1
    106c:	fec7f0e3          	bgeu	a5,a2,104c <printint+0x24>
    1070:	00088a63          	beqz	a7,1084 <printint+0x5c>
    1074:	081c                	addi	a5,sp,16
    1076:	973e                	add	a4,a4,a5
    1078:	02d00793          	li	a5,45
    107c:	fef70823          	sb	a5,-16(a4)
    1080:	0028071b          	addiw	a4,a6,2
    1084:	02e05663          	blez	a4,10b0 <printint+0x88>
    1088:	00e10433          	add	s0,sp,a4
    108c:	fff10913          	addi	s2,sp,-1
    1090:	993a                	add	s2,s2,a4
    1092:	377d                	addiw	a4,a4,-1
    1094:	1702                	slli	a4,a4,0x20
    1096:	9301                	srli	a4,a4,0x20
    1098:	40e90933          	sub	s2,s2,a4
    109c:	fff44583          	lbu	a1,-1(s0)
    10a0:	8526                	mv	a0,s1
    10a2:	00000097          	auipc	ra,0x0
    10a6:	f6a080e7          	jalr	-150(ra) # 100c <putc>
    10aa:	147d                	addi	s0,s0,-1
    10ac:	ff2418e3          	bne	s0,s2,109c <printint+0x74>
    10b0:	70a2                	ld	ra,40(sp)
    10b2:	7402                	ld	s0,32(sp)
    10b4:	64e2                	ld	s1,24(sp)
    10b6:	6942                	ld	s2,16(sp)
    10b8:	6145                	addi	sp,sp,48
    10ba:	8082                	ret
    10bc:	40b005bb          	negw	a1,a1
    10c0:	4885                	li	a7,1
    10c2:	bfb5                	j	103e <printint+0x16>

00000000000010c4 <vprintf>:
    10c4:	7159                	addi	sp,sp,-112
    10c6:	f486                	sd	ra,104(sp)
    10c8:	f0a2                	sd	s0,96(sp)
    10ca:	eca6                	sd	s1,88(sp)
    10cc:	e8ca                	sd	s2,80(sp)
    10ce:	e4ce                	sd	s3,72(sp)
    10d0:	e0d2                	sd	s4,64(sp)
    10d2:	fc56                	sd	s5,56(sp)
    10d4:	f85a                	sd	s6,48(sp)
    10d6:	f45e                	sd	s7,40(sp)
    10d8:	f062                	sd	s8,32(sp)
    10da:	ec66                	sd	s9,24(sp)
    10dc:	e86a                	sd	s10,16(sp)
    10de:	e46e                	sd	s11,8(sp)
    10e0:	0005c483          	lbu	s1,0(a1)
    10e4:	18048a63          	beqz	s1,1278 <vprintf+0x1b4>
    10e8:	8a2a                	mv	s4,a0
    10ea:	8ab2                	mv	s5,a2
    10ec:	00158413          	addi	s0,a1,1
    10f0:	4901                	li	s2,0
    10f2:	02500993          	li	s3,37
    10f6:	06400b93          	li	s7,100
    10fa:	06c00c13          	li	s8,108
    10fe:	07800c93          	li	s9,120
    1102:	07000d13          	li	s10,112
    1106:	00002db7          	lui	s11,0x2
    110a:	00002b37          	lui	s6,0x2
    110e:	c08b0b13          	addi	s6,s6,-1016 # 1c08 <digits>
    1112:	a839                	j	1130 <vprintf+0x6c>
    1114:	85a6                	mv	a1,s1
    1116:	8552                	mv	a0,s4
    1118:	00000097          	auipc	ra,0x0
    111c:	ef4080e7          	jalr	-268(ra) # 100c <putc>
    1120:	a019                	j	1126 <vprintf+0x62>
    1122:	01390f63          	beq	s2,s3,1140 <vprintf+0x7c>
    1126:	0405                	addi	s0,s0,1
    1128:	fff44483          	lbu	s1,-1(s0)
    112c:	14048663          	beqz	s1,1278 <vprintf+0x1b4>
    1130:	0004879b          	sext.w	a5,s1
    1134:	fe0917e3          	bnez	s2,1122 <vprintf+0x5e>
    1138:	fd379ee3          	bne	a5,s3,1114 <vprintf+0x50>
    113c:	893e                	mv	s2,a5
    113e:	b7e5                	j	1126 <vprintf+0x62>
    1140:	05778063          	beq	a5,s7,1180 <vprintf+0xbc>
    1144:	05878c63          	beq	a5,s8,119c <vprintf+0xd8>
    1148:	07978863          	beq	a5,s9,11b8 <vprintf+0xf4>
    114c:	09a78463          	beq	a5,s10,11d4 <vprintf+0x110>
    1150:	07300713          	li	a4,115
    1154:	0ce78263          	beq	a5,a4,1218 <vprintf+0x154>
    1158:	06300713          	li	a4,99
    115c:	0ee78763          	beq	a5,a4,124a <vprintf+0x186>
    1160:	11378163          	beq	a5,s3,1262 <vprintf+0x19e>
    1164:	85ce                	mv	a1,s3
    1166:	8552                	mv	a0,s4
    1168:	00000097          	auipc	ra,0x0
    116c:	ea4080e7          	jalr	-348(ra) # 100c <putc>
    1170:	85a6                	mv	a1,s1
    1172:	8552                	mv	a0,s4
    1174:	00000097          	auipc	ra,0x0
    1178:	e98080e7          	jalr	-360(ra) # 100c <putc>
    117c:	4901                	li	s2,0
    117e:	b765                	j	1126 <vprintf+0x62>
    1180:	008a8493          	addi	s1,s5,8
    1184:	4685                	li	a3,1
    1186:	4629                	li	a2,10
    1188:	000aa583          	lw	a1,0(s5)
    118c:	8552                	mv	a0,s4
    118e:	00000097          	auipc	ra,0x0
    1192:	e9a080e7          	jalr	-358(ra) # 1028 <printint>
    1196:	8aa6                	mv	s5,s1
    1198:	4901                	li	s2,0
    119a:	b771                	j	1126 <vprintf+0x62>
    119c:	008a8493          	addi	s1,s5,8
    11a0:	4681                	li	a3,0
    11a2:	4629                	li	a2,10
    11a4:	000aa583          	lw	a1,0(s5)
    11a8:	8552                	mv	a0,s4
    11aa:	00000097          	auipc	ra,0x0
    11ae:	e7e080e7          	jalr	-386(ra) # 1028 <printint>
    11b2:	8aa6                	mv	s5,s1
    11b4:	4901                	li	s2,0
    11b6:	bf85                	j	1126 <vprintf+0x62>
    11b8:	008a8493          	addi	s1,s5,8
    11bc:	4681                	li	a3,0
    11be:	4641                	li	a2,16
    11c0:	000aa583          	lw	a1,0(s5)
    11c4:	8552                	mv	a0,s4
    11c6:	00000097          	auipc	ra,0x0
    11ca:	e62080e7          	jalr	-414(ra) # 1028 <printint>
    11ce:	8aa6                	mv	s5,s1
    11d0:	4901                	li	s2,0
    11d2:	bf91                	j	1126 <vprintf+0x62>
    11d4:	008a8913          	addi	s2,s5,8
    11d8:	000aba83          	ld	s5,0(s5)
    11dc:	03000593          	li	a1,48
    11e0:	8552                	mv	a0,s4
    11e2:	00000097          	auipc	ra,0x0
    11e6:	e2a080e7          	jalr	-470(ra) # 100c <putc>
    11ea:	85e6                	mv	a1,s9
    11ec:	8552                	mv	a0,s4
    11ee:	00000097          	auipc	ra,0x0
    11f2:	e1e080e7          	jalr	-482(ra) # 100c <putc>
    11f6:	44c1                	li	s1,16
    11f8:	03cad793          	srli	a5,s5,0x3c
    11fc:	97da                	add	a5,a5,s6
    11fe:	0007c583          	lbu	a1,0(a5)
    1202:	8552                	mv	a0,s4
    1204:	00000097          	auipc	ra,0x0
    1208:	e08080e7          	jalr	-504(ra) # 100c <putc>
    120c:	0a92                	slli	s5,s5,0x4
    120e:	34fd                	addiw	s1,s1,-1
    1210:	f4e5                	bnez	s1,11f8 <vprintf+0x134>
    1212:	8aca                	mv	s5,s2
    1214:	4901                	li	s2,0
    1216:	bf01                	j	1126 <vprintf+0x62>
    1218:	008a8913          	addi	s2,s5,8
    121c:	000ab483          	ld	s1,0(s5)
    1220:	c085                	beqz	s1,1240 <vprintf+0x17c>
    1222:	0004c583          	lbu	a1,0(s1)
    1226:	c5b1                	beqz	a1,1272 <vprintf+0x1ae>
    1228:	8552                	mv	a0,s4
    122a:	00000097          	auipc	ra,0x0
    122e:	de2080e7          	jalr	-542(ra) # 100c <putc>
    1232:	0485                	addi	s1,s1,1
    1234:	0004c583          	lbu	a1,0(s1)
    1238:	f9e5                	bnez	a1,1228 <vprintf+0x164>
    123a:	8aca                	mv	s5,s2
    123c:	4901                	li	s2,0
    123e:	b5e5                	j	1126 <vprintf+0x62>
    1240:	c00d8493          	addi	s1,s11,-1024 # 1c00 <mkdir+0x16>
    1244:	02800593          	li	a1,40
    1248:	b7c5                	j	1228 <vprintf+0x164>
    124a:	008a8493          	addi	s1,s5,8
    124e:	000ac583          	lbu	a1,0(s5)
    1252:	8552                	mv	a0,s4
    1254:	00000097          	auipc	ra,0x0
    1258:	db8080e7          	jalr	-584(ra) # 100c <putc>
    125c:	8aa6                	mv	s5,s1
    125e:	4901                	li	s2,0
    1260:	b5d9                	j	1126 <vprintf+0x62>
    1262:	85ce                	mv	a1,s3
    1264:	8552                	mv	a0,s4
    1266:	00000097          	auipc	ra,0x0
    126a:	da6080e7          	jalr	-602(ra) # 100c <putc>
    126e:	4901                	li	s2,0
    1270:	bd5d                	j	1126 <vprintf+0x62>
    1272:	8aca                	mv	s5,s2
    1274:	4901                	li	s2,0
    1276:	bd45                	j	1126 <vprintf+0x62>
    1278:	70a6                	ld	ra,104(sp)
    127a:	7406                	ld	s0,96(sp)
    127c:	64e6                	ld	s1,88(sp)
    127e:	6946                	ld	s2,80(sp)
    1280:	69a6                	ld	s3,72(sp)
    1282:	6a06                	ld	s4,64(sp)
    1284:	7ae2                	ld	s5,56(sp)
    1286:	7b42                	ld	s6,48(sp)
    1288:	7ba2                	ld	s7,40(sp)
    128a:	7c02                	ld	s8,32(sp)
    128c:	6ce2                	ld	s9,24(sp)
    128e:	6d42                	ld	s10,16(sp)
    1290:	6da2                	ld	s11,8(sp)
    1292:	6165                	addi	sp,sp,112
    1294:	8082                	ret

0000000000001296 <fprintf>:
    1296:	715d                	addi	sp,sp,-80
    1298:	ec06                	sd	ra,24(sp)
    129a:	f032                	sd	a2,32(sp)
    129c:	f436                	sd	a3,40(sp)
    129e:	f83a                	sd	a4,48(sp)
    12a0:	fc3e                	sd	a5,56(sp)
    12a2:	e0c2                	sd	a6,64(sp)
    12a4:	e4c6                	sd	a7,72(sp)
    12a6:	1010                	addi	a2,sp,32
    12a8:	e432                	sd	a2,8(sp)
    12aa:	00000097          	auipc	ra,0x0
    12ae:	e1a080e7          	jalr	-486(ra) # 10c4 <vprintf>
    12b2:	60e2                	ld	ra,24(sp)
    12b4:	6161                	addi	sp,sp,80
    12b6:	8082                	ret

00000000000012b8 <printf>:
    12b8:	711d                	addi	sp,sp,-96
    12ba:	ec06                	sd	ra,24(sp)
    12bc:	f42e                	sd	a1,40(sp)
    12be:	f832                	sd	a2,48(sp)
    12c0:	fc36                	sd	a3,56(sp)
    12c2:	e0ba                	sd	a4,64(sp)
    12c4:	e4be                	sd	a5,72(sp)
    12c6:	e8c2                	sd	a6,80(sp)
    12c8:	ecc6                	sd	a7,88(sp)
    12ca:	1030                	addi	a2,sp,40
    12cc:	e432                	sd	a2,8(sp)
    12ce:	85aa                	mv	a1,a0
    12d0:	4505                	li	a0,1
    12d2:	00000097          	auipc	ra,0x0
    12d6:	df2080e7          	jalr	-526(ra) # 10c4 <vprintf>
    12da:	60e2                	ld	ra,24(sp)
    12dc:	6125                	addi	sp,sp,96
    12de:	8082                	ret

00000000000012e0 <cksum>:
    12e0:	cdb1                	beqz	a1,133c <cksum+0x5c>
    12e2:	00b50833          	add	a6,a0,a1
    12e6:	4781                	li	a5,0
    12e8:	00002637          	lui	a2,0x2
    12ec:	c2060613          	addi	a2,a2,-992 # 1c20 <crctab>
    12f0:	0505                	addi	a0,a0,1
    12f2:	0087969b          	slliw	a3,a5,0x8
    12f6:	0187d71b          	srliw	a4,a5,0x18
    12fa:	fff54783          	lbu	a5,-1(a0)
    12fe:	8f3d                	xor	a4,a4,a5
    1300:	1702                	slli	a4,a4,0x20
    1302:	9301                	srli	a4,a4,0x20
    1304:	070a                	slli	a4,a4,0x2
    1306:	9732                	add	a4,a4,a2
    1308:	431c                	lw	a5,0(a4)
    130a:	8fb5                	xor	a5,a5,a3
    130c:	2781                	sext.w	a5,a5
    130e:	fea811e3          	bne	a6,a0,12f0 <cksum+0x10>
    1312:	00002637          	lui	a2,0x2
    1316:	c2060613          	addi	a2,a2,-992 # 1c20 <crctab>
    131a:	0ff5f693          	andi	a3,a1,255
    131e:	81a1                	srli	a1,a1,0x8
    1320:	0087951b          	slliw	a0,a5,0x8
    1324:	0187d71b          	srliw	a4,a5,0x18
    1328:	8f35                	xor	a4,a4,a3
    132a:	070a                	slli	a4,a4,0x2
    132c:	9732                	add	a4,a4,a2
    132e:	431c                	lw	a5,0(a4)
    1330:	8fa9                	xor	a5,a5,a0
    1332:	2781                	sext.w	a5,a5
    1334:	f1fd                	bnez	a1,131a <cksum+0x3a>
    1336:	fff7c513          	not	a0,a5
    133a:	8082                	ret
    133c:	4781                	li	a5,0
    133e:	bfe5                	j	1336 <cksum+0x56>

0000000000001340 <swap_bytes>:
    1340:	ce19                	beqz	a2,135e <swap_bytes+0x1e>
    1342:	87aa                	mv	a5,a0
    1344:	962a                	add	a2,a2,a0
    1346:	0007c703          	lbu	a4,0(a5)
    134a:	0005c683          	lbu	a3,0(a1)
    134e:	00d78023          	sb	a3,0(a5)
    1352:	00e58023          	sb	a4,0(a1)
    1356:	0785                	addi	a5,a5,1
    1358:	0585                	addi	a1,a1,1
    135a:	fec796e3          	bne	a5,a2,1346 <swap_bytes+0x6>
    135e:	8082                	ret

0000000000001360 <random_init>:
    1360:	7139                	addi	sp,sp,-64
    1362:	fc06                	sd	ra,56(sp)
    1364:	f822                	sd	s0,48(sp)
    1366:	f426                	sd	s1,40(sp)
    1368:	f04a                	sd	s2,32(sp)
    136a:	ec4e                	sd	s3,24(sp)
    136c:	e852                	sd	s4,16(sp)
    136e:	c62a                	sw	a0,12(sp)
    1370:	000037b7          	lui	a5,0x3
    1374:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1378:	eca5                	bnez	s1,13f0 <random_init+0x90>
    137a:	00003737          	lui	a4,0x3
    137e:	01070913          	addi	s2,a4,16 # 3010 <s>
    1382:	01070713          	addi	a4,a4,16
    1386:	87a6                	mv	a5,s1
    1388:	10000693          	li	a3,256
    138c:	00f70023          	sb	a5,0(a4)
    1390:	2785                	addiw	a5,a5,1
    1392:	0705                	addi	a4,a4,1
    1394:	fed79ce3          	bne	a5,a3,138c <random_init+0x2c>
    1398:	4401                	li	s0,0
    139a:	000039b7          	lui	s3,0x3
    139e:	01098993          	addi	s3,s3,16 # 3010 <s>
    13a2:	10000a13          	li	s4,256
    13a6:	0034f793          	andi	a5,s1,3
    13aa:	0818                	addi	a4,sp,16
    13ac:	97ba                	add	a5,a5,a4
    13ae:	ffc7c783          	lbu	a5,-4(a5)
    13b2:	00094703          	lbu	a4,0(s2)
    13b6:	9fb9                	addw	a5,a5,a4
    13b8:	9c3d                	addw	s0,s0,a5
    13ba:	0ff47413          	andi	s0,s0,255
    13be:	4605                	li	a2,1
    13c0:	008985b3          	add	a1,s3,s0
    13c4:	854a                	mv	a0,s2
    13c6:	00000097          	auipc	ra,0x0
    13ca:	f7a080e7          	jalr	-134(ra) # 1340 <swap_bytes>
    13ce:	2485                	addiw	s1,s1,1
    13d0:	0905                	addi	s2,s2,1
    13d2:	fd449ae3          	bne	s1,s4,13a6 <random_init+0x46>
    13d6:	000037b7          	lui	a5,0x3
    13da:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    13de:	000037b7          	lui	a5,0x3
    13e2:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    13e6:	000037b7          	lui	a5,0x3
    13ea:	4705                	li	a4,1
    13ec:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    13f0:	70e2                	ld	ra,56(sp)
    13f2:	7442                	ld	s0,48(sp)
    13f4:	74a2                	ld	s1,40(sp)
    13f6:	7902                	ld	s2,32(sp)
    13f8:	69e2                	ld	s3,24(sp)
    13fa:	6a42                	ld	s4,16(sp)
    13fc:	6121                	addi	sp,sp,64
    13fe:	8082                	ret

0000000000001400 <random_bytes>:
    1400:	7139                	addi	sp,sp,-64
    1402:	fc06                	sd	ra,56(sp)
    1404:	f822                	sd	s0,48(sp)
    1406:	f426                	sd	s1,40(sp)
    1408:	f04a                	sd	s2,32(sp)
    140a:	ec4e                	sd	s3,24(sp)
    140c:	e852                	sd	s4,16(sp)
    140e:	e456                	sd	s5,8(sp)
    1410:	e05a                	sd	s6,0(sp)
    1412:	892a                	mv	s2,a0
    1414:	8aae                	mv	s5,a1
    1416:	000037b7          	lui	a5,0x3
    141a:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    141e:	c3c1                	beqz	a5,149e <random_bytes+0x9e>
    1420:	060a8563          	beqz	s5,148a <random_bytes+0x8a>
    1424:	9aca                	add	s5,s5,s2
    1426:	00003a37          	lui	s4,0x3
    142a:	000034b7          	lui	s1,0x3
    142e:	01048493          	addi	s1,s1,16 # 3010 <s>
    1432:	000039b7          	lui	s3,0x3
    1436:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    143a:	2505                	addiw	a0,a0,1
    143c:	0ff57513          	andi	a0,a0,255
    1440:	00aa02a3          	sb	a0,5(s4)
    1444:	00a48b33          	add	s6,s1,a0
    1448:	000b4403          	lbu	s0,0(s6)
    144c:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1450:	9c3d                	addw	s0,s0,a5
    1452:	0ff47413          	andi	s0,s0,255
    1456:	00898223          	sb	s0,4(s3)
    145a:	4605                	li	a2,1
    145c:	008485b3          	add	a1,s1,s0
    1460:	855a                	mv	a0,s6
    1462:	00000097          	auipc	ra,0x0
    1466:	ede080e7          	jalr	-290(ra) # 1340 <swap_bytes>
    146a:	9426                	add	s0,s0,s1
    146c:	000b4783          	lbu	a5,0(s6)
    1470:	00044703          	lbu	a4,0(s0)
    1474:	9fb9                	addw	a5,a5,a4
    1476:	0ff7f793          	andi	a5,a5,255
    147a:	97a6                	add	a5,a5,s1
    147c:	0007c783          	lbu	a5,0(a5)
    1480:	00f90023          	sb	a5,0(s2)
    1484:	0905                	addi	s2,s2,1
    1486:	fb2a98e3          	bne	s5,s2,1436 <random_bytes+0x36>
    148a:	70e2                	ld	ra,56(sp)
    148c:	7442                	ld	s0,48(sp)
    148e:	74a2                	ld	s1,40(sp)
    1490:	7902                	ld	s2,32(sp)
    1492:	69e2                	ld	s3,24(sp)
    1494:	6a42                	ld	s4,16(sp)
    1496:	6aa2                	ld	s5,8(sp)
    1498:	6b02                	ld	s6,0(sp)
    149a:	6121                	addi	sp,sp,64
    149c:	8082                	ret
    149e:	4501                	li	a0,0
    14a0:	00000097          	auipc	ra,0x0
    14a4:	ec0080e7          	jalr	-320(ra) # 1360 <random_init>
    14a8:	bfa5                	j	1420 <random_bytes+0x20>

00000000000014aa <random_ulong>:
    14aa:	1101                	addi	sp,sp,-32
    14ac:	ec06                	sd	ra,24(sp)
    14ae:	45a1                	li	a1,8
    14b0:	0028                	addi	a0,sp,8
    14b2:	00000097          	auipc	ra,0x0
    14b6:	f4e080e7          	jalr	-178(ra) # 1400 <random_bytes>
    14ba:	6522                	ld	a0,8(sp)
    14bc:	60e2                	ld	ra,24(sp)
    14be:	6105                	addi	sp,sp,32
    14c0:	8082                	ret

00000000000014c2 <shuffle>:
    14c2:	c9b9                	beqz	a1,1518 <shuffle+0x56>
    14c4:	7179                	addi	sp,sp,-48
    14c6:	f406                	sd	ra,40(sp)
    14c8:	f022                	sd	s0,32(sp)
    14ca:	ec26                	sd	s1,24(sp)
    14cc:	e84a                	sd	s2,16(sp)
    14ce:	e44e                	sd	s3,8(sp)
    14d0:	e052                	sd	s4,0(sp)
    14d2:	8a2a                	mv	s4,a0
    14d4:	89ae                	mv	s3,a1
    14d6:	84b2                	mv	s1,a2
    14d8:	892a                	mv	s2,a0
    14da:	4401                	li	s0,0
    14dc:	00000097          	auipc	ra,0x0
    14e0:	fce080e7          	jalr	-50(ra) # 14aa <random_ulong>
    14e4:	408985b3          	sub	a1,s3,s0
    14e8:	02b575b3          	remu	a1,a0,a1
    14ec:	95a2                	add	a1,a1,s0
    14ee:	029585b3          	mul	a1,a1,s1
    14f2:	8626                	mv	a2,s1
    14f4:	95d2                	add	a1,a1,s4
    14f6:	854a                	mv	a0,s2
    14f8:	00000097          	auipc	ra,0x0
    14fc:	e48080e7          	jalr	-440(ra) # 1340 <swap_bytes>
    1500:	0405                	addi	s0,s0,1
    1502:	9926                	add	s2,s2,s1
    1504:	fc899ce3          	bne	s3,s0,14dc <shuffle+0x1a>
    1508:	70a2                	ld	ra,40(sp)
    150a:	7402                	ld	s0,32(sp)
    150c:	64e2                	ld	s1,24(sp)
    150e:	6942                	ld	s2,16(sp)
    1510:	69a2                	ld	s3,8(sp)
    1512:	6a02                	ld	s4,0(sp)
    1514:	6145                	addi	sp,sp,48
    1516:	8082                	ret
    1518:	8082                	ret

000000000000151a <arc4_init>:
    151a:	100500a3          	sb	zero,257(a0)
    151e:	10050023          	sb	zero,256(a0)
    1522:	4781                	li	a5,0
    1524:	10000693          	li	a3,256
    1528:	00f50733          	add	a4,a0,a5
    152c:	00f70023          	sb	a5,0(a4)
    1530:	0785                	addi	a5,a5,1
    1532:	fed79be3          	bne	a5,a3,1528 <arc4_init+0xe>
    1536:	86aa                	mv	a3,a0
    1538:	10050e13          	addi	t3,a0,256
    153c:	4701                	li	a4,0
    153e:	4781                	li	a5,0
    1540:	0006c883          	lbu	a7,0(a3)
    1544:	00f58833          	add	a6,a1,a5
    1548:	00084803          	lbu	a6,0(a6)
    154c:	00e8873b          	addw	a4,a7,a4
    1550:	00e8073b          	addw	a4,a6,a4
    1554:	0ff77713          	andi	a4,a4,255
    1558:	00e50833          	add	a6,a0,a4
    155c:	00084303          	lbu	t1,0(a6)
    1560:	00668023          	sb	t1,0(a3)
    1564:	01180023          	sb	a7,0(a6)
    1568:	0785                	addi	a5,a5,1
    156a:	00c7b833          	sltu	a6,a5,a2
    156e:	41000833          	neg	a6,a6
    1572:	0107f7b3          	and	a5,a5,a6
    1576:	0685                	addi	a3,a3,1
    1578:	fdc694e3          	bne	a3,t3,1540 <arc4_init+0x26>
    157c:	8082                	ret

000000000000157e <arc4_crypt>:
    157e:	10054e03          	lbu	t3,256(a0)
    1582:	10154803          	lbu	a6,257(a0)
    1586:	fff60e93          	addi	t4,a2,-1
    158a:	c225                	beqz	a2,15ea <arc4_crypt+0x6c>
    158c:	00c588b3          	add	a7,a1,a2
    1590:	86ae                	mv	a3,a1
    1592:	001e031b          	addiw	t1,t3,1
    1596:	40b3033b          	subw	t1,t1,a1
    159a:	00d3073b          	addw	a4,t1,a3
    159e:	0ff77713          	andi	a4,a4,255
    15a2:	972a                	add	a4,a4,a0
    15a4:	00074603          	lbu	a2,0(a4)
    15a8:	0106083b          	addw	a6,a2,a6
    15ac:	0ff87813          	andi	a6,a6,255
    15b0:	010507b3          	add	a5,a0,a6
    15b4:	0007c583          	lbu	a1,0(a5)
    15b8:	00b70023          	sb	a1,0(a4)
    15bc:	00c78023          	sb	a2,0(a5)
    15c0:	0685                	addi	a3,a3,1
    15c2:	00074783          	lbu	a5,0(a4)
    15c6:	9fb1                	addw	a5,a5,a2
    15c8:	0ff7f793          	andi	a5,a5,255
    15cc:	97aa                	add	a5,a5,a0
    15ce:	0007c783          	lbu	a5,0(a5)
    15d2:	fff6c703          	lbu	a4,-1(a3)
    15d6:	8fb9                	xor	a5,a5,a4
    15d8:	fef68fa3          	sb	a5,-1(a3)
    15dc:	fb169fe3          	bne	a3,a7,159a <arc4_crypt+0x1c>
    15e0:	2e85                	addiw	t4,t4,1
    15e2:	01ce8e3b          	addw	t3,t4,t3
    15e6:	0ffe7e13          	andi	t3,t3,255
    15ea:	11c50023          	sb	t3,256(a0)
    15ee:	110500a3          	sb	a6,257(a0)
    15f2:	8082                	ret

00000000000015f4 <_main>:
    15f4:	1141                	addi	sp,sp,-16
    15f6:	e406                	sd	ra,8(sp)
    15f8:	00000097          	auipc	ra,0x0
    15fc:	a08080e7          	jalr	-1528(ra) # 1000 <main>
    1600:	4501                	li	a0,0
    1602:	00000097          	auipc	ra,0x0
    1606:	578080e7          	jalr	1400(ra) # 1b7a <exit>
    160a:	60a2                	ld	ra,8(sp)
    160c:	0141                	addi	sp,sp,16
    160e:	8082                	ret

0000000000001610 <strcmp>:
    1610:	00054783          	lbu	a5,0(a0)
    1614:	cb91                	beqz	a5,1628 <strcmp+0x18>
    1616:	0005c703          	lbu	a4,0(a1)
    161a:	00f71763          	bne	a4,a5,1628 <strcmp+0x18>
    161e:	0505                	addi	a0,a0,1
    1620:	0585                	addi	a1,a1,1
    1622:	00054783          	lbu	a5,0(a0)
    1626:	fbe5                	bnez	a5,1616 <strcmp+0x6>
    1628:	0005c503          	lbu	a0,0(a1)
    162c:	40a7853b          	subw	a0,a5,a0
    1630:	8082                	ret

0000000000001632 <strcpy>:
    1632:	87aa                	mv	a5,a0
    1634:	0585                	addi	a1,a1,1
    1636:	0785                	addi	a5,a5,1
    1638:	fff5c703          	lbu	a4,-1(a1)
    163c:	fee78fa3          	sb	a4,-1(a5)
    1640:	fb75                	bnez	a4,1634 <strcpy+0x2>
    1642:	8082                	ret

0000000000001644 <strlen>:
    1644:	00054783          	lbu	a5,0(a0)
    1648:	cf81                	beqz	a5,1660 <strlen+0x1c>
    164a:	0505                	addi	a0,a0,1
    164c:	87aa                	mv	a5,a0
    164e:	4685                	li	a3,1
    1650:	9e89                	subw	a3,a3,a0
    1652:	00f6853b          	addw	a0,a3,a5
    1656:	0785                	addi	a5,a5,1
    1658:	fff7c703          	lbu	a4,-1(a5)
    165c:	fb7d                	bnez	a4,1652 <strlen+0xe>
    165e:	8082                	ret
    1660:	4501                	li	a0,0
    1662:	8082                	ret

0000000000001664 <memset>:
    1664:	ca19                	beqz	a2,167a <memset+0x16>
    1666:	87aa                	mv	a5,a0
    1668:	1602                	slli	a2,a2,0x20
    166a:	9201                	srli	a2,a2,0x20
    166c:	00a60733          	add	a4,a2,a0
    1670:	00b78023          	sb	a1,0(a5)
    1674:	0785                	addi	a5,a5,1
    1676:	fee79de3          	bne	a5,a4,1670 <memset+0xc>
    167a:	8082                	ret

000000000000167c <memcmp>:
    167c:	1101                	addi	sp,sp,-32
    167e:	ec06                	sd	ra,24(sp)
    1680:	e822                	sd	s0,16(sp)
    1682:	e426                	sd	s1,8(sp)
    1684:	e04a                	sd	s2,0(sp)
    1686:	892a                	mv	s2,a0
    1688:	842e                	mv	s0,a1
    168a:	84b2                	mv	s1,a2
    168c:	c915                	beqz	a0,16c0 <memcmp+0x44>
    168e:	c5ad                	beqz	a1,16f8 <memcmp+0x7c>
    1690:	fff60713          	addi	a4,a2,-1
    1694:	c645                	beqz	a2,173c <memcmp+0xc0>
    1696:	87ca                	mv	a5,s2
    1698:	00190613          	addi	a2,s2,1
    169c:	963a                	add	a2,a2,a4
    169e:	0007c683          	lbu	a3,0(a5)
    16a2:	00044703          	lbu	a4,0(s0)
    16a6:	08e69463          	bne	a3,a4,172e <memcmp+0xb2>
    16aa:	0785                	addi	a5,a5,1
    16ac:	0405                	addi	s0,s0,1
    16ae:	fec798e3          	bne	a5,a2,169e <memcmp+0x22>
    16b2:	4501                	li	a0,0
    16b4:	60e2                	ld	ra,24(sp)
    16b6:	6442                	ld	s0,16(sp)
    16b8:	64a2                	ld	s1,8(sp)
    16ba:	6902                	ld	s2,0(sp)
    16bc:	6105                	addi	sp,sp,32
    16be:	8082                	ret
    16c0:	4501                	li	a0,0
    16c2:	da6d                	beqz	a2,16b4 <memcmp+0x38>
    16c4:	03200693          	li	a3,50
    16c8:	00002637          	lui	a2,0x2
    16cc:	02060613          	addi	a2,a2,32 # 2020 <crctab+0x400>
    16d0:	000025b7          	lui	a1,0x2
    16d4:	03058593          	addi	a1,a1,48 # 2030 <crctab+0x410>
    16d8:	4509                	li	a0,2
    16da:	00000097          	auipc	ra,0x0
    16de:	bbc080e7          	jalr	-1092(ra) # 1296 <fprintf>
    16e2:	650d                	lui	a0,0x3
    16e4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    16e8:	00000097          	auipc	ra,0x0
    16ec:	492080e7          	jalr	1170(ra) # 1b7a <exit>
    16f0:	fff48713          	addi	a4,s1,-1
    16f4:	f04d                	bnez	s0,1696 <memcmp+0x1a>
    16f6:	a011                	j	16fa <memcmp+0x7e>
    16f8:	c221                	beqz	a2,1738 <memcmp+0xbc>
    16fa:	03300693          	li	a3,51
    16fe:	00002637          	lui	a2,0x2
    1702:	02060613          	addi	a2,a2,32 # 2020 <crctab+0x400>
    1706:	000025b7          	lui	a1,0x2
    170a:	07858593          	addi	a1,a1,120 # 2078 <crctab+0x458>
    170e:	4509                	li	a0,2
    1710:	00000097          	auipc	ra,0x0
    1714:	b86080e7          	jalr	-1146(ra) # 1296 <fprintf>
    1718:	650d                	lui	a0,0x3
    171a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    171e:	00000097          	auipc	ra,0x0
    1722:	45c080e7          	jalr	1116(ra) # 1b7a <exit>
    1726:	fff48713          	addi	a4,s1,-1
    172a:	4401                	li	s0,0
    172c:	b7ad                	j	1696 <memcmp+0x1a>
    172e:	4505                	li	a0,1
    1730:	f8d762e3          	bltu	a4,a3,16b4 <memcmp+0x38>
    1734:	557d                	li	a0,-1
    1736:	bfbd                	j	16b4 <memcmp+0x38>
    1738:	4501                	li	a0,0
    173a:	bfad                	j	16b4 <memcmp+0x38>
    173c:	4501                	li	a0,0
    173e:	bf9d                	j	16b4 <memcmp+0x38>

0000000000001740 <memcpy>:
    1740:	1101                	addi	sp,sp,-32
    1742:	ec06                	sd	ra,24(sp)
    1744:	e822                	sd	s0,16(sp)
    1746:	e426                	sd	s1,8(sp)
    1748:	e04a                	sd	s2,0(sp)
    174a:	84aa                	mv	s1,a0
    174c:	842e                	mv	s0,a1
    174e:	8932                	mv	s2,a2
    1750:	c51d                	beqz	a0,177e <memcpy+0x3e>
    1752:	c1ad                	beqz	a1,17b4 <memcpy+0x74>
    1754:	fff60693          	addi	a3,a2,-1
    1758:	ce01                	beqz	a2,1770 <memcpy+0x30>
    175a:	0685                	addi	a3,a3,1
    175c:	96a6                	add	a3,a3,s1
    175e:	87a6                	mv	a5,s1
    1760:	0405                	addi	s0,s0,1
    1762:	0785                	addi	a5,a5,1
    1764:	fff44703          	lbu	a4,-1(s0)
    1768:	fee78fa3          	sb	a4,-1(a5)
    176c:	fed79ae3          	bne	a5,a3,1760 <memcpy+0x20>
    1770:	8526                	mv	a0,s1
    1772:	60e2                	ld	ra,24(sp)
    1774:	6442                	ld	s0,16(sp)
    1776:	64a2                	ld	s1,8(sp)
    1778:	6902                	ld	s2,0(sp)
    177a:	6105                	addi	sp,sp,32
    177c:	8082                	ret
    177e:	da6d                	beqz	a2,1770 <memcpy+0x30>
    1780:	04000693          	li	a3,64
    1784:	00002637          	lui	a2,0x2
    1788:	02060613          	addi	a2,a2,32 # 2020 <crctab+0x400>
    178c:	000025b7          	lui	a1,0x2
    1790:	0c058593          	addi	a1,a1,192 # 20c0 <crctab+0x4a0>
    1794:	4509                	li	a0,2
    1796:	00000097          	auipc	ra,0x0
    179a:	b00080e7          	jalr	-1280(ra) # 1296 <fprintf>
    179e:	650d                	lui	a0,0x3
    17a0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17a4:	00000097          	auipc	ra,0x0
    17a8:	3d6080e7          	jalr	982(ra) # 1b7a <exit>
    17ac:	fff90693          	addi	a3,s2,-1
    17b0:	f44d                	bnez	s0,175a <memcpy+0x1a>
    17b2:	a011                	j	17b6 <memcpy+0x76>
    17b4:	de55                	beqz	a2,1770 <memcpy+0x30>
    17b6:	04100693          	li	a3,65
    17ba:	00002637          	lui	a2,0x2
    17be:	02060613          	addi	a2,a2,32 # 2020 <crctab+0x400>
    17c2:	000025b7          	lui	a1,0x2
    17c6:	10858593          	addi	a1,a1,264 # 2108 <crctab+0x4e8>
    17ca:	4509                	li	a0,2
    17cc:	00000097          	auipc	ra,0x0
    17d0:	aca080e7          	jalr	-1334(ra) # 1296 <fprintf>
    17d4:	650d                	lui	a0,0x3
    17d6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17da:	00000097          	auipc	ra,0x0
    17de:	3a0080e7          	jalr	928(ra) # 1b7a <exit>
    17e2:	fff90693          	addi	a3,s2,-1
    17e6:	4401                	li	s0,0
    17e8:	bf8d                	j	175a <memcpy+0x1a>

00000000000017ea <itoa>:
    17ea:	1101                	addi	sp,sp,-32
    17ec:	ec06                	sd	ra,24(sp)
    17ee:	e822                	sd	s0,16(sp)
    17f0:	e426                	sd	s1,8(sp)
    17f2:	842a                	mv	s0,a0
    17f4:	41f5d71b          	sraiw	a4,a1,0x1f
    17f8:	00e5c7b3          	xor	a5,a1,a4
    17fc:	9f99                	subw	a5,a5,a4
    17fe:	84aa                	mv	s1,a0
    1800:	862a                	mv	a2,a0
    1802:	4681                	li	a3,0
    1804:	4529                	li	a0,10
    1806:	4825                	li	a6,9
    1808:	88b6                	mv	a7,a3
    180a:	2685                	addiw	a3,a3,1
    180c:	02a7e73b          	remw	a4,a5,a0
    1810:	0307071b          	addiw	a4,a4,48
    1814:	00e60023          	sb	a4,0(a2)
    1818:	873e                	mv	a4,a5
    181a:	02a7c7bb          	divw	a5,a5,a0
    181e:	0605                	addi	a2,a2,1
    1820:	fee844e3          	blt	a6,a4,1808 <itoa+0x1e>
    1824:	0405c863          	bltz	a1,1874 <itoa+0x8a>
    1828:	96a2                	add	a3,a3,s0
    182a:	00068023          	sb	zero,0(a3)
    182e:	8522                	mv	a0,s0
    1830:	00000097          	auipc	ra,0x0
    1834:	e14080e7          	jalr	-492(ra) # 1644 <strlen>
    1838:	fff5071b          	addiw	a4,a0,-1
    183c:	02e05763          	blez	a4,186a <itoa+0x80>
    1840:	9722                	add	a4,a4,s0
    1842:	4681                	li	a3,0
    1844:	0004c783          	lbu	a5,0(s1)
    1848:	00074603          	lbu	a2,0(a4)
    184c:	00c48023          	sb	a2,0(s1)
    1850:	00f70023          	sb	a5,0(a4)
    1854:	0016879b          	addiw	a5,a3,1
    1858:	0007869b          	sext.w	a3,a5
    185c:	0485                	addi	s1,s1,1
    185e:	177d                	addi	a4,a4,-1
    1860:	fff7c793          	not	a5,a5
    1864:	9fa9                	addw	a5,a5,a0
    1866:	fcf6cfe3          	blt	a3,a5,1844 <itoa+0x5a>
    186a:	60e2                	ld	ra,24(sp)
    186c:	6442                	ld	s0,16(sp)
    186e:	64a2                	ld	s1,8(sp)
    1870:	6105                	addi	sp,sp,32
    1872:	8082                	ret
    1874:	96a2                	add	a3,a3,s0
    1876:	02d00793          	li	a5,45
    187a:	00f68023          	sb	a5,0(a3)
    187e:	0028869b          	addiw	a3,a7,2
    1882:	b75d                	j	1828 <itoa+0x3e>

0000000000001884 <atoi>:
    1884:	00054783          	lbu	a5,0(a0)
    1888:	02000713          	li	a4,32
    188c:	00e79763          	bne	a5,a4,189a <atoi+0x16>
    1890:	0505                	addi	a0,a0,1
    1892:	00054783          	lbu	a5,0(a0)
    1896:	fee78de3          	beq	a5,a4,1890 <atoi+0xc>
    189a:	02b00713          	li	a4,43
    189e:	04e78663          	beq	a5,a4,18ea <atoi+0x66>
    18a2:	02d00713          	li	a4,45
    18a6:	4805                	li	a6,1
    18a8:	04e78463          	beq	a5,a4,18f0 <atoi+0x6c>
    18ac:	00054683          	lbu	a3,0(a0)
    18b0:	fd06879b          	addiw	a5,a3,-48
    18b4:	0ff7f793          	andi	a5,a5,255
    18b8:	4725                	li	a4,9
    18ba:	02f76e63          	bltu	a4,a5,18f6 <atoi+0x72>
    18be:	4601                	li	a2,0
    18c0:	45a5                	li	a1,9
    18c2:	0505                	addi	a0,a0,1
    18c4:	0026179b          	slliw	a5,a2,0x2
    18c8:	9fb1                	addw	a5,a5,a2
    18ca:	0017979b          	slliw	a5,a5,0x1
    18ce:	9fb5                	addw	a5,a5,a3
    18d0:	fd07861b          	addiw	a2,a5,-48
    18d4:	00054683          	lbu	a3,0(a0)
    18d8:	fd06871b          	addiw	a4,a3,-48
    18dc:	0ff77713          	andi	a4,a4,255
    18e0:	fee5f1e3          	bgeu	a1,a4,18c2 <atoi+0x3e>
    18e4:	02c8053b          	mulw	a0,a6,a2
    18e8:	8082                	ret
    18ea:	0505                	addi	a0,a0,1
    18ec:	4805                	li	a6,1
    18ee:	bf7d                	j	18ac <atoi+0x28>
    18f0:	0505                	addi	a0,a0,1
    18f2:	587d                	li	a6,-1
    18f4:	bf65                	j	18ac <atoi+0x28>
    18f6:	4601                	li	a2,0
    18f8:	b7f5                	j	18e4 <atoi+0x60>

00000000000018fa <check_file_handle>:
    18fa:	d8010113          	addi	sp,sp,-640
    18fe:	26113c23          	sd	ra,632(sp)
    1902:	26813823          	sd	s0,624(sp)
    1906:	26913423          	sd	s1,616(sp)
    190a:	27213023          	sd	s2,608(sp)
    190e:	25313c23          	sd	s3,600(sp)
    1912:	25413823          	sd	s4,592(sp)
    1916:	25513423          	sd	s5,584(sp)
    191a:	25613023          	sd	s6,576(sp)
    191e:	23713c23          	sd	s7,568(sp)
    1922:	23813823          	sd	s8,560(sp)
    1926:	23913423          	sd	s9,552(sp)
    192a:	23a13023          	sd	s10,544(sp)
    192e:	21b13c23          	sd	s11,536(sp)
    1932:	8baa                	mv	s7,a0
    1934:	8a2e                	mv	s4,a1
    1936:	8c32                	mv	s8,a2
    1938:	89b6                	mv	s3,a3
    193a:	040c                	addi	a1,sp,512
    193c:	00000097          	auipc	ra,0x0
    1940:	28e080e7          	jalr	654(ra) # 1bca <fstat>
    1944:	20813603          	ld	a2,520(sp)
    1948:	03361163          	bne	a2,s3,196a <check_file_handle+0x70>
    194c:	06098763          	beqz	s3,19ba <check_file_handle+0xc0>
    1950:	4901                	li	s2,0
    1952:	20000a93          	li	s5,512
    1956:	00002cb7          	lui	s9,0x2
    195a:	00002db7          	lui	s11,0x2
    195e:	6b0d                	lui	s6,0x3
    1960:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1964:	00002d37          	lui	s10,0x2
    1968:	aa39                	j	1a86 <check_file_handle+0x18c>
    196a:	86ce                	mv	a3,s3
    196c:	85d2                	mv	a1,s4
    196e:	00002537          	lui	a0,0x2
    1972:	15050513          	addi	a0,a0,336 # 2150 <crctab+0x530>
    1976:	00000097          	auipc	ra,0x0
    197a:	942080e7          	jalr	-1726(ra) # 12b8 <printf>
    197e:	fc0999e3          	bnez	s3,1950 <check_file_handle+0x56>
    1982:	20813683          	ld	a3,520(sp)
    1986:	03368a63          	beq	a3,s3,19ba <check_file_handle+0xc0>
    198a:	0a600813          	li	a6,166
    198e:	000027b7          	lui	a5,0x2
    1992:	02078793          	addi	a5,a5,32 # 2020 <crctab+0x400>
    1996:	874e                	mv	a4,s3
    1998:	8652                	mv	a2,s4
    199a:	000025b7          	lui	a1,0x2
    199e:	22058593          	addi	a1,a1,544 # 2220 <crctab+0x600>
    19a2:	4509                	li	a0,2
    19a4:	00000097          	auipc	ra,0x0
    19a8:	8f2080e7          	jalr	-1806(ra) # 1296 <fprintf>
    19ac:	650d                	lui	a0,0x3
    19ae:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19b2:	00000097          	auipc	ra,0x0
    19b6:	1c8080e7          	jalr	456(ra) # 1b7a <exit>
    19ba:	85d2                	mv	a1,s4
    19bc:	00002537          	lui	a0,0x2
    19c0:	26850513          	addi	a0,a0,616 # 2268 <crctab+0x648>
    19c4:	00000097          	auipc	ra,0x0
    19c8:	8f4080e7          	jalr	-1804(ra) # 12b8 <printf>
    19cc:	27813083          	ld	ra,632(sp)
    19d0:	27013403          	ld	s0,624(sp)
    19d4:	26813483          	ld	s1,616(sp)
    19d8:	26013903          	ld	s2,608(sp)
    19dc:	25813983          	ld	s3,600(sp)
    19e0:	25013a03          	ld	s4,592(sp)
    19e4:	24813a83          	ld	s5,584(sp)
    19e8:	24013b03          	ld	s6,576(sp)
    19ec:	23813b83          	ld	s7,568(sp)
    19f0:	23013c03          	ld	s8,560(sp)
    19f4:	22813c83          	ld	s9,552(sp)
    19f8:	22013d03          	ld	s10,544(sp)
    19fc:	21813d83          	ld	s11,536(sp)
    1a00:	28010113          	addi	sp,sp,640
    1a04:	8082                	ret
    1a06:	09d00893          	li	a7,157
    1a0a:	020c8813          	addi	a6,s9,32 # 2020 <crctab+0x400>
    1a0e:	87aa                	mv	a5,a0
    1a10:	8752                	mv	a4,s4
    1a12:	86ca                	mv	a3,s2
    1a14:	8622                	mv	a2,s0
    1a16:	180d8593          	addi	a1,s11,384 # 2180 <crctab+0x560>
    1a1a:	4509                	li	a0,2
    1a1c:	00000097          	auipc	ra,0x0
    1a20:	87a080e7          	jalr	-1926(ra) # 1296 <fprintf>
    1a24:	855a                	mv	a0,s6
    1a26:	00000097          	auipc	ra,0x0
    1a2a:	154080e7          	jalr	340(ra) # 1b7a <exit>
    1a2e:	a89d                	j	1aa4 <check_file_handle+0x1aa>
    1a30:	00160593          	addi	a1,a2,1
    1a34:	0285f163          	bgeu	a1,s0,1a56 <check_file_handle+0x15c>
    1a38:	00c10733          	add	a4,sp,a2
    1a3c:	00b487b3          	add	a5,s1,a1
    1a40:	00174683          	lbu	a3,1(a4)
    1a44:	0007c783          	lbu	a5,0(a5)
    1a48:	00f68763          	beq	a3,a5,1a56 <check_file_handle+0x15c>
    1a4c:	0585                	addi	a1,a1,1
    1a4e:	0705                	addi	a4,a4,1
    1a50:	feb416e3          	bne	s0,a1,1a3c <check_file_handle+0x142>
    1a54:	85a2                	mv	a1,s0
    1a56:	08100813          	li	a6,129
    1a5a:	020c8793          	addi	a5,s9,32
    1a5e:	8752                	mv	a4,s4
    1a60:	012606b3          	add	a3,a2,s2
    1a64:	40c58633          	sub	a2,a1,a2
    1a68:	1c8d0593          	addi	a1,s10,456 # 21c8 <crctab+0x5a8>
    1a6c:	4509                	li	a0,2
    1a6e:	00000097          	auipc	ra,0x0
    1a72:	828080e7          	jalr	-2008(ra) # 1296 <fprintf>
    1a76:	855a                	mv	a0,s6
    1a78:	00000097          	auipc	ra,0x0
    1a7c:	102080e7          	jalr	258(ra) # 1b7a <exit>
    1a80:	9922                	add	s2,s2,s0
    1a82:	f13970e3          	bgeu	s2,s3,1982 <check_file_handle+0x88>
    1a86:	41298433          	sub	s0,s3,s2
    1a8a:	008af363          	bgeu	s5,s0,1a90 <check_file_handle+0x196>
    1a8e:	8456                	mv	s0,s5
    1a90:	0004061b          	sext.w	a2,s0
    1a94:	858a                	mv	a1,sp
    1a96:	855e                	mv	a0,s7
    1a98:	00000097          	auipc	ra,0x0
    1a9c:	10a080e7          	jalr	266(ra) # 1ba2 <read>
    1aa0:	f68513e3          	bne	a0,s0,1a06 <check_file_handle+0x10c>
    1aa4:	012c04b3          	add	s1,s8,s2
    1aa8:	8622                	mv	a2,s0
    1aaa:	85a6                	mv	a1,s1
    1aac:	850a                	mv	a0,sp
    1aae:	00000097          	auipc	ra,0x0
    1ab2:	bce080e7          	jalr	-1074(ra) # 167c <memcmp>
    1ab6:	d569                	beqz	a0,1a80 <check_file_handle+0x186>
    1ab8:	03298163          	beq	s3,s2,1ada <check_file_handle+0x1e0>
    1abc:	870a                	mv	a4,sp
    1abe:	4601                	li	a2,0
    1ac0:	00c487b3          	add	a5,s1,a2
    1ac4:	00074683          	lbu	a3,0(a4)
    1ac8:	0007c783          	lbu	a5,0(a5)
    1acc:	f6f692e3          	bne	a3,a5,1a30 <check_file_handle+0x136>
    1ad0:	0605                	addi	a2,a2,1
    1ad2:	0705                	addi	a4,a4,1
    1ad4:	fe8666e3          	bltu	a2,s0,1ac0 <check_file_handle+0x1c6>
    1ad8:	bfa1                	j	1a30 <check_file_handle+0x136>
    1ada:	4601                	li	a2,0
    1adc:	4585                	li	a1,1
    1ade:	bfa5                	j	1a56 <check_file_handle+0x15c>

0000000000001ae0 <check_file>:
    1ae0:	7179                	addi	sp,sp,-48
    1ae2:	f406                	sd	ra,40(sp)
    1ae4:	f022                	sd	s0,32(sp)
    1ae6:	ec26                	sd	s1,24(sp)
    1ae8:	e84a                	sd	s2,16(sp)
    1aea:	e44e                	sd	s3,8(sp)
    1aec:	84aa                	mv	s1,a0
    1aee:	892e                	mv	s2,a1
    1af0:	89b2                	mv	s3,a2
    1af2:	4581                	li	a1,0
    1af4:	00000097          	auipc	ra,0x0
    1af8:	0a6080e7          	jalr	166(ra) # 1b9a <open>
    1afc:	842a                	mv	s0,a0
    1afe:	4789                	li	a5,2
    1b00:	02a7df63          	bge	a5,a0,1b3e <check_file+0x5e>
    1b04:	86ce                	mv	a3,s3
    1b06:	864a                	mv	a2,s2
    1b08:	85a6                	mv	a1,s1
    1b0a:	8522                	mv	a0,s0
    1b0c:	00000097          	auipc	ra,0x0
    1b10:	dee080e7          	jalr	-530(ra) # 18fa <check_file_handle>
    1b14:	85a6                	mv	a1,s1
    1b16:	00002537          	lui	a0,0x2
    1b1a:	2f050513          	addi	a0,a0,752 # 22f0 <crctab+0x6d0>
    1b1e:	fffff097          	auipc	ra,0xfffff
    1b22:	79a080e7          	jalr	1946(ra) # 12b8 <printf>
    1b26:	8522                	mv	a0,s0
    1b28:	00000097          	auipc	ra,0x0
    1b2c:	09a080e7          	jalr	154(ra) # 1bc2 <close>
    1b30:	70a2                	ld	ra,40(sp)
    1b32:	7402                	ld	s0,32(sp)
    1b34:	64e2                	ld	s1,24(sp)
    1b36:	6942                	ld	s2,16(sp)
    1b38:	69a2                	ld	s3,8(sp)
    1b3a:	6145                	addi	sp,sp,48
    1b3c:	8082                	ret
    1b3e:	0ae00713          	li	a4,174
    1b42:	000026b7          	lui	a3,0x2
    1b46:	02068693          	addi	a3,a3,32 # 2020 <crctab+0x400>
    1b4a:	8626                	mv	a2,s1
    1b4c:	000025b7          	lui	a1,0x2
    1b50:	28858593          	addi	a1,a1,648 # 2288 <crctab+0x668>
    1b54:	4509                	li	a0,2
    1b56:	fffff097          	auipc	ra,0xfffff
    1b5a:	740080e7          	jalr	1856(ra) # 1296 <fprintf>
    1b5e:	650d                	lui	a0,0x3
    1b60:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b64:	00000097          	auipc	ra,0x0
    1b68:	016080e7          	jalr	22(ra) # 1b7a <exit>
    1b6c:	bf61                	j	1b04 <check_file+0x24>

0000000000001b6e <r_sp>:
    1b6e:	850a                	mv	a0,sp
    1b70:	8082                	ret

0000000000001b72 <halt>:
    1b72:	4885                	li	a7,1
    1b74:	00000073          	ecall
    1b78:	8082                	ret

0000000000001b7a <exit>:
    1b7a:	4889                	li	a7,2
    1b7c:	00000073          	ecall
    1b80:	8082                	ret

0000000000001b82 <exec>:
    1b82:	488d                	li	a7,3
    1b84:	00000073          	ecall
    1b88:	8082                	ret

0000000000001b8a <wait>:
    1b8a:	4891                	li	a7,4
    1b8c:	00000073          	ecall
    1b90:	8082                	ret

0000000000001b92 <remove>:
    1b92:	4895                	li	a7,5
    1b94:	00000073          	ecall
    1b98:	8082                	ret

0000000000001b9a <open>:
    1b9a:	4899                	li	a7,6
    1b9c:	00000073          	ecall
    1ba0:	8082                	ret

0000000000001ba2 <read>:
    1ba2:	489d                	li	a7,7
    1ba4:	00000073          	ecall
    1ba8:	8082                	ret

0000000000001baa <write>:
    1baa:	48a1                	li	a7,8
    1bac:	00000073          	ecall
    1bb0:	8082                	ret

0000000000001bb2 <seek>:
    1bb2:	48a5                	li	a7,9
    1bb4:	00000073          	ecall
    1bb8:	8082                	ret

0000000000001bba <tell>:
    1bba:	48a9                	li	a7,10
    1bbc:	00000073          	ecall
    1bc0:	8082                	ret

0000000000001bc2 <close>:
    1bc2:	48ad                	li	a7,11
    1bc4:	00000073          	ecall
    1bc8:	8082                	ret

0000000000001bca <fstat>:
    1bca:	48b1                	li	a7,12
    1bcc:	00000073          	ecall
    1bd0:	8082                	ret

0000000000001bd2 <mmap>:
    1bd2:	48b5                	li	a7,13
    1bd4:	00000073          	ecall
    1bd8:	8082                	ret

0000000000001bda <munmap>:
    1bda:	48b9                	li	a7,14
    1bdc:	00000073          	ecall
    1be0:	8082                	ret

0000000000001be2 <chdir>:
    1be2:	48bd                	li	a7,15
    1be4:	00000073          	ecall
    1be8:	8082                	ret

0000000000001bea <mkdir>:
    1bea:	48c1                	li	a7,16
    1bec:	00000073          	ecall
    1bf0:	8082                	ret
