
build/user/userprogs/wait-killed:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	00002537          	lui	a0,0x2
    100a:	c8050793          	addi	a5,a0,-896 # 1c80 <mkdir+0xc>
    100e:	e03e                	sd	a5,0(sp)
    1010:	e402                	sd	zero,8(sp)
    1012:	858a                	mv	a1,sp
    1014:	c8050513          	addi	a0,a0,-896
    1018:	00001097          	auipc	ra,0x1
    101c:	bf4080e7          	jalr	-1036(ra) # 1c0c <exec>
    1020:	842a                	mv	s0,a0
    1022:	00054e63          	bltz	a0,103e <main+0x3e>
    1026:	8522                	mv	a0,s0
    1028:	00001097          	auipc	ra,0x1
    102c:	bec080e7          	jalr	-1044(ra) # 1c14 <wait>
    1030:	57fd                	li	a5,-1
    1032:	02f51c63          	bne	a0,a5,106a <main+0x6a>
    1036:	60e2                	ld	ra,24(sp)
    1038:	6442                	ld	s0,16(sp)
    103a:	6105                	addi	sp,sp,32
    103c:	8082                	ret
    103e:	46ad                	li	a3,11
    1040:	00002637          	lui	a2,0x2
    1044:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x1c>
    1048:	000025b7          	lui	a1,0x2
    104c:	cb058593          	addi	a1,a1,-848 # 1cb0 <mkdir+0x3c>
    1050:	4509                	li	a0,2
    1052:	00000097          	auipc	ra,0x0
    1056:	2ce080e7          	jalr	718(ra) # 1320 <fprintf>
    105a:	650d                	lui	a0,0x3
    105c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1060:	00001097          	auipc	ra,0x1
    1064:	ba4080e7          	jalr	-1116(ra) # 1c04 <exit>
    1068:	bf7d                	j	1026 <main+0x26>
    106a:	46b1                	li	a3,12
    106c:	00002637          	lui	a2,0x2
    1070:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x1c>
    1074:	000025b7          	lui	a1,0x2
    1078:	d0058593          	addi	a1,a1,-768 # 1d00 <mkdir+0x8c>
    107c:	4509                	li	a0,2
    107e:	00000097          	auipc	ra,0x0
    1082:	2a2080e7          	jalr	674(ra) # 1320 <fprintf>
    1086:	650d                	lui	a0,0x3
    1088:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    108c:	00001097          	auipc	ra,0x1
    1090:	b78080e7          	jalr	-1160(ra) # 1c04 <exit>
    1094:	b74d                	j	1036 <main+0x36>

0000000000001096 <putc>:
    1096:	1101                	addi	sp,sp,-32
    1098:	ec06                	sd	ra,24(sp)
    109a:	00b107a3          	sb	a1,15(sp)
    109e:	4605                	li	a2,1
    10a0:	00f10593          	addi	a1,sp,15
    10a4:	00001097          	auipc	ra,0x1
    10a8:	b90080e7          	jalr	-1136(ra) # 1c34 <write>
    10ac:	60e2                	ld	ra,24(sp)
    10ae:	6105                	addi	sp,sp,32
    10b0:	8082                	ret

00000000000010b2 <printint>:
    10b2:	7179                	addi	sp,sp,-48
    10b4:	f406                	sd	ra,40(sp)
    10b6:	f022                	sd	s0,32(sp)
    10b8:	ec26                	sd	s1,24(sp)
    10ba:	e84a                	sd	s2,16(sp)
    10bc:	84aa                	mv	s1,a0
    10be:	c299                	beqz	a3,10c4 <printint+0x12>
    10c0:	0805c363          	bltz	a1,1146 <printint+0x94>
    10c4:	2581                	sext.w	a1,a1
    10c6:	4881                	li	a7,0
    10c8:	868a                	mv	a3,sp
    10ca:	4701                	li	a4,0
    10cc:	2601                	sext.w	a2,a2
    10ce:	00002537          	lui	a0,0x2
    10d2:	d7050513          	addi	a0,a0,-656 # 1d70 <digits>
    10d6:	883a                	mv	a6,a4
    10d8:	2705                	addiw	a4,a4,1
    10da:	02c5f7bb          	remuw	a5,a1,a2
    10de:	1782                	slli	a5,a5,0x20
    10e0:	9381                	srli	a5,a5,0x20
    10e2:	97aa                	add	a5,a5,a0
    10e4:	0007c783          	lbu	a5,0(a5)
    10e8:	00f68023          	sb	a5,0(a3)
    10ec:	0005879b          	sext.w	a5,a1
    10f0:	02c5d5bb          	divuw	a1,a1,a2
    10f4:	0685                	addi	a3,a3,1
    10f6:	fec7f0e3          	bgeu	a5,a2,10d6 <printint+0x24>
    10fa:	00088a63          	beqz	a7,110e <printint+0x5c>
    10fe:	081c                	addi	a5,sp,16
    1100:	973e                	add	a4,a4,a5
    1102:	02d00793          	li	a5,45
    1106:	fef70823          	sb	a5,-16(a4)
    110a:	0028071b          	addiw	a4,a6,2
    110e:	02e05663          	blez	a4,113a <printint+0x88>
    1112:	00e10433          	add	s0,sp,a4
    1116:	fff10913          	addi	s2,sp,-1
    111a:	993a                	add	s2,s2,a4
    111c:	377d                	addiw	a4,a4,-1
    111e:	1702                	slli	a4,a4,0x20
    1120:	9301                	srli	a4,a4,0x20
    1122:	40e90933          	sub	s2,s2,a4
    1126:	fff44583          	lbu	a1,-1(s0)
    112a:	8526                	mv	a0,s1
    112c:	00000097          	auipc	ra,0x0
    1130:	f6a080e7          	jalr	-150(ra) # 1096 <putc>
    1134:	147d                	addi	s0,s0,-1
    1136:	ff2418e3          	bne	s0,s2,1126 <printint+0x74>
    113a:	70a2                	ld	ra,40(sp)
    113c:	7402                	ld	s0,32(sp)
    113e:	64e2                	ld	s1,24(sp)
    1140:	6942                	ld	s2,16(sp)
    1142:	6145                	addi	sp,sp,48
    1144:	8082                	ret
    1146:	40b005bb          	negw	a1,a1
    114a:	4885                	li	a7,1
    114c:	bfb5                	j	10c8 <printint+0x16>

000000000000114e <vprintf>:
    114e:	7159                	addi	sp,sp,-112
    1150:	f486                	sd	ra,104(sp)
    1152:	f0a2                	sd	s0,96(sp)
    1154:	eca6                	sd	s1,88(sp)
    1156:	e8ca                	sd	s2,80(sp)
    1158:	e4ce                	sd	s3,72(sp)
    115a:	e0d2                	sd	s4,64(sp)
    115c:	fc56                	sd	s5,56(sp)
    115e:	f85a                	sd	s6,48(sp)
    1160:	f45e                	sd	s7,40(sp)
    1162:	f062                	sd	s8,32(sp)
    1164:	ec66                	sd	s9,24(sp)
    1166:	e86a                	sd	s10,16(sp)
    1168:	e46e                	sd	s11,8(sp)
    116a:	0005c483          	lbu	s1,0(a1)
    116e:	18048a63          	beqz	s1,1302 <vprintf+0x1b4>
    1172:	8a2a                	mv	s4,a0
    1174:	8ab2                	mv	s5,a2
    1176:	00158413          	addi	s0,a1,1
    117a:	4901                	li	s2,0
    117c:	02500993          	li	s3,37
    1180:	06400b93          	li	s7,100
    1184:	06c00c13          	li	s8,108
    1188:	07800c93          	li	s9,120
    118c:	07000d13          	li	s10,112
    1190:	00002db7          	lui	s11,0x2
    1194:	00002b37          	lui	s6,0x2
    1198:	d70b0b13          	addi	s6,s6,-656 # 1d70 <digits>
    119c:	a839                	j	11ba <vprintf+0x6c>
    119e:	85a6                	mv	a1,s1
    11a0:	8552                	mv	a0,s4
    11a2:	00000097          	auipc	ra,0x0
    11a6:	ef4080e7          	jalr	-268(ra) # 1096 <putc>
    11aa:	a019                	j	11b0 <vprintf+0x62>
    11ac:	01390f63          	beq	s2,s3,11ca <vprintf+0x7c>
    11b0:	0405                	addi	s0,s0,1
    11b2:	fff44483          	lbu	s1,-1(s0)
    11b6:	14048663          	beqz	s1,1302 <vprintf+0x1b4>
    11ba:	0004879b          	sext.w	a5,s1
    11be:	fe0917e3          	bnez	s2,11ac <vprintf+0x5e>
    11c2:	fd379ee3          	bne	a5,s3,119e <vprintf+0x50>
    11c6:	893e                	mv	s2,a5
    11c8:	b7e5                	j	11b0 <vprintf+0x62>
    11ca:	05778063          	beq	a5,s7,120a <vprintf+0xbc>
    11ce:	05878c63          	beq	a5,s8,1226 <vprintf+0xd8>
    11d2:	07978863          	beq	a5,s9,1242 <vprintf+0xf4>
    11d6:	09a78463          	beq	a5,s10,125e <vprintf+0x110>
    11da:	07300713          	li	a4,115
    11de:	0ce78263          	beq	a5,a4,12a2 <vprintf+0x154>
    11e2:	06300713          	li	a4,99
    11e6:	0ee78763          	beq	a5,a4,12d4 <vprintf+0x186>
    11ea:	11378163          	beq	a5,s3,12ec <vprintf+0x19e>
    11ee:	85ce                	mv	a1,s3
    11f0:	8552                	mv	a0,s4
    11f2:	00000097          	auipc	ra,0x0
    11f6:	ea4080e7          	jalr	-348(ra) # 1096 <putc>
    11fa:	85a6                	mv	a1,s1
    11fc:	8552                	mv	a0,s4
    11fe:	00000097          	auipc	ra,0x0
    1202:	e98080e7          	jalr	-360(ra) # 1096 <putc>
    1206:	4901                	li	s2,0
    1208:	b765                	j	11b0 <vprintf+0x62>
    120a:	008a8493          	addi	s1,s5,8
    120e:	4685                	li	a3,1
    1210:	4629                	li	a2,10
    1212:	000aa583          	lw	a1,0(s5)
    1216:	8552                	mv	a0,s4
    1218:	00000097          	auipc	ra,0x0
    121c:	e9a080e7          	jalr	-358(ra) # 10b2 <printint>
    1220:	8aa6                	mv	s5,s1
    1222:	4901                	li	s2,0
    1224:	b771                	j	11b0 <vprintf+0x62>
    1226:	008a8493          	addi	s1,s5,8
    122a:	4681                	li	a3,0
    122c:	4629                	li	a2,10
    122e:	000aa583          	lw	a1,0(s5)
    1232:	8552                	mv	a0,s4
    1234:	00000097          	auipc	ra,0x0
    1238:	e7e080e7          	jalr	-386(ra) # 10b2 <printint>
    123c:	8aa6                	mv	s5,s1
    123e:	4901                	li	s2,0
    1240:	bf85                	j	11b0 <vprintf+0x62>
    1242:	008a8493          	addi	s1,s5,8
    1246:	4681                	li	a3,0
    1248:	4641                	li	a2,16
    124a:	000aa583          	lw	a1,0(s5)
    124e:	8552                	mv	a0,s4
    1250:	00000097          	auipc	ra,0x0
    1254:	e62080e7          	jalr	-414(ra) # 10b2 <printint>
    1258:	8aa6                	mv	s5,s1
    125a:	4901                	li	s2,0
    125c:	bf91                	j	11b0 <vprintf+0x62>
    125e:	008a8913          	addi	s2,s5,8
    1262:	000aba83          	ld	s5,0(s5)
    1266:	03000593          	li	a1,48
    126a:	8552                	mv	a0,s4
    126c:	00000097          	auipc	ra,0x0
    1270:	e2a080e7          	jalr	-470(ra) # 1096 <putc>
    1274:	85e6                	mv	a1,s9
    1276:	8552                	mv	a0,s4
    1278:	00000097          	auipc	ra,0x0
    127c:	e1e080e7          	jalr	-482(ra) # 1096 <putc>
    1280:	44c1                	li	s1,16
    1282:	03cad793          	srli	a5,s5,0x3c
    1286:	97da                	add	a5,a5,s6
    1288:	0007c583          	lbu	a1,0(a5)
    128c:	8552                	mv	a0,s4
    128e:	00000097          	auipc	ra,0x0
    1292:	e08080e7          	jalr	-504(ra) # 1096 <putc>
    1296:	0a92                	slli	s5,s5,0x4
    1298:	34fd                	addiw	s1,s1,-1
    129a:	f4e5                	bnez	s1,1282 <vprintf+0x134>
    129c:	8aca                	mv	s5,s2
    129e:	4901                	li	s2,0
    12a0:	bf01                	j	11b0 <vprintf+0x62>
    12a2:	008a8913          	addi	s2,s5,8
    12a6:	000ab483          	ld	s1,0(s5)
    12aa:	c085                	beqz	s1,12ca <vprintf+0x17c>
    12ac:	0004c583          	lbu	a1,0(s1)
    12b0:	c5b1                	beqz	a1,12fc <vprintf+0x1ae>
    12b2:	8552                	mv	a0,s4
    12b4:	00000097          	auipc	ra,0x0
    12b8:	de2080e7          	jalr	-542(ra) # 1096 <putc>
    12bc:	0485                	addi	s1,s1,1
    12be:	0004c583          	lbu	a1,0(s1)
    12c2:	f9e5                	bnez	a1,12b2 <vprintf+0x164>
    12c4:	8aca                	mv	s5,s2
    12c6:	4901                	li	s2,0
    12c8:	b5e5                	j	11b0 <vprintf+0x62>
    12ca:	d68d8493          	addi	s1,s11,-664 # 1d68 <mkdir+0xf4>
    12ce:	02800593          	li	a1,40
    12d2:	b7c5                	j	12b2 <vprintf+0x164>
    12d4:	008a8493          	addi	s1,s5,8
    12d8:	000ac583          	lbu	a1,0(s5)
    12dc:	8552                	mv	a0,s4
    12de:	00000097          	auipc	ra,0x0
    12e2:	db8080e7          	jalr	-584(ra) # 1096 <putc>
    12e6:	8aa6                	mv	s5,s1
    12e8:	4901                	li	s2,0
    12ea:	b5d9                	j	11b0 <vprintf+0x62>
    12ec:	85ce                	mv	a1,s3
    12ee:	8552                	mv	a0,s4
    12f0:	00000097          	auipc	ra,0x0
    12f4:	da6080e7          	jalr	-602(ra) # 1096 <putc>
    12f8:	4901                	li	s2,0
    12fa:	bd5d                	j	11b0 <vprintf+0x62>
    12fc:	8aca                	mv	s5,s2
    12fe:	4901                	li	s2,0
    1300:	bd45                	j	11b0 <vprintf+0x62>
    1302:	70a6                	ld	ra,104(sp)
    1304:	7406                	ld	s0,96(sp)
    1306:	64e6                	ld	s1,88(sp)
    1308:	6946                	ld	s2,80(sp)
    130a:	69a6                	ld	s3,72(sp)
    130c:	6a06                	ld	s4,64(sp)
    130e:	7ae2                	ld	s5,56(sp)
    1310:	7b42                	ld	s6,48(sp)
    1312:	7ba2                	ld	s7,40(sp)
    1314:	7c02                	ld	s8,32(sp)
    1316:	6ce2                	ld	s9,24(sp)
    1318:	6d42                	ld	s10,16(sp)
    131a:	6da2                	ld	s11,8(sp)
    131c:	6165                	addi	sp,sp,112
    131e:	8082                	ret

0000000000001320 <fprintf>:
    1320:	715d                	addi	sp,sp,-80
    1322:	ec06                	sd	ra,24(sp)
    1324:	f032                	sd	a2,32(sp)
    1326:	f436                	sd	a3,40(sp)
    1328:	f83a                	sd	a4,48(sp)
    132a:	fc3e                	sd	a5,56(sp)
    132c:	e0c2                	sd	a6,64(sp)
    132e:	e4c6                	sd	a7,72(sp)
    1330:	1010                	addi	a2,sp,32
    1332:	e432                	sd	a2,8(sp)
    1334:	00000097          	auipc	ra,0x0
    1338:	e1a080e7          	jalr	-486(ra) # 114e <vprintf>
    133c:	60e2                	ld	ra,24(sp)
    133e:	6161                	addi	sp,sp,80
    1340:	8082                	ret

0000000000001342 <printf>:
    1342:	711d                	addi	sp,sp,-96
    1344:	ec06                	sd	ra,24(sp)
    1346:	f42e                	sd	a1,40(sp)
    1348:	f832                	sd	a2,48(sp)
    134a:	fc36                	sd	a3,56(sp)
    134c:	e0ba                	sd	a4,64(sp)
    134e:	e4be                	sd	a5,72(sp)
    1350:	e8c2                	sd	a6,80(sp)
    1352:	ecc6                	sd	a7,88(sp)
    1354:	1030                	addi	a2,sp,40
    1356:	e432                	sd	a2,8(sp)
    1358:	85aa                	mv	a1,a0
    135a:	4505                	li	a0,1
    135c:	00000097          	auipc	ra,0x0
    1360:	df2080e7          	jalr	-526(ra) # 114e <vprintf>
    1364:	60e2                	ld	ra,24(sp)
    1366:	6125                	addi	sp,sp,96
    1368:	8082                	ret

000000000000136a <cksum>:
    136a:	cdb1                	beqz	a1,13c6 <cksum+0x5c>
    136c:	00b50833          	add	a6,a0,a1
    1370:	4781                	li	a5,0
    1372:	00002637          	lui	a2,0x2
    1376:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    137a:	0505                	addi	a0,a0,1
    137c:	0087969b          	slliw	a3,a5,0x8
    1380:	0187d71b          	srliw	a4,a5,0x18
    1384:	fff54783          	lbu	a5,-1(a0)
    1388:	8f3d                	xor	a4,a4,a5
    138a:	1702                	slli	a4,a4,0x20
    138c:	9301                	srli	a4,a4,0x20
    138e:	070a                	slli	a4,a4,0x2
    1390:	9732                	add	a4,a4,a2
    1392:	431c                	lw	a5,0(a4)
    1394:	8fb5                	xor	a5,a5,a3
    1396:	2781                	sext.w	a5,a5
    1398:	fea811e3          	bne	a6,a0,137a <cksum+0x10>
    139c:	00002637          	lui	a2,0x2
    13a0:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    13a4:	0ff5f693          	andi	a3,a1,255
    13a8:	81a1                	srli	a1,a1,0x8
    13aa:	0087951b          	slliw	a0,a5,0x8
    13ae:	0187d71b          	srliw	a4,a5,0x18
    13b2:	8f35                	xor	a4,a4,a3
    13b4:	070a                	slli	a4,a4,0x2
    13b6:	9732                	add	a4,a4,a2
    13b8:	431c                	lw	a5,0(a4)
    13ba:	8fa9                	xor	a5,a5,a0
    13bc:	2781                	sext.w	a5,a5
    13be:	f1fd                	bnez	a1,13a4 <cksum+0x3a>
    13c0:	fff7c513          	not	a0,a5
    13c4:	8082                	ret
    13c6:	4781                	li	a5,0
    13c8:	bfe5                	j	13c0 <cksum+0x56>

00000000000013ca <swap_bytes>:
    13ca:	ce19                	beqz	a2,13e8 <swap_bytes+0x1e>
    13cc:	87aa                	mv	a5,a0
    13ce:	962a                	add	a2,a2,a0
    13d0:	0007c703          	lbu	a4,0(a5)
    13d4:	0005c683          	lbu	a3,0(a1)
    13d8:	00d78023          	sb	a3,0(a5)
    13dc:	00e58023          	sb	a4,0(a1)
    13e0:	0785                	addi	a5,a5,1
    13e2:	0585                	addi	a1,a1,1
    13e4:	fec796e3          	bne	a5,a2,13d0 <swap_bytes+0x6>
    13e8:	8082                	ret

00000000000013ea <random_init>:
    13ea:	7139                	addi	sp,sp,-64
    13ec:	fc06                	sd	ra,56(sp)
    13ee:	f822                	sd	s0,48(sp)
    13f0:	f426                	sd	s1,40(sp)
    13f2:	f04a                	sd	s2,32(sp)
    13f4:	ec4e                	sd	s3,24(sp)
    13f6:	e852                	sd	s4,16(sp)
    13f8:	c62a                	sw	a0,12(sp)
    13fa:	000037b7          	lui	a5,0x3
    13fe:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1402:	eca5                	bnez	s1,147a <random_init+0x90>
    1404:	00003737          	lui	a4,0x3
    1408:	01070913          	addi	s2,a4,16 # 3010 <s>
    140c:	01070713          	addi	a4,a4,16
    1410:	87a6                	mv	a5,s1
    1412:	10000693          	li	a3,256
    1416:	00f70023          	sb	a5,0(a4)
    141a:	2785                	addiw	a5,a5,1
    141c:	0705                	addi	a4,a4,1
    141e:	fed79ce3          	bne	a5,a3,1416 <random_init+0x2c>
    1422:	4401                	li	s0,0
    1424:	000039b7          	lui	s3,0x3
    1428:	01098993          	addi	s3,s3,16 # 3010 <s>
    142c:	10000a13          	li	s4,256
    1430:	0034f793          	andi	a5,s1,3
    1434:	0818                	addi	a4,sp,16
    1436:	97ba                	add	a5,a5,a4
    1438:	ffc7c783          	lbu	a5,-4(a5)
    143c:	00094703          	lbu	a4,0(s2)
    1440:	9fb9                	addw	a5,a5,a4
    1442:	9c3d                	addw	s0,s0,a5
    1444:	0ff47413          	andi	s0,s0,255
    1448:	4605                	li	a2,1
    144a:	008985b3          	add	a1,s3,s0
    144e:	854a                	mv	a0,s2
    1450:	00000097          	auipc	ra,0x0
    1454:	f7a080e7          	jalr	-134(ra) # 13ca <swap_bytes>
    1458:	2485                	addiw	s1,s1,1
    145a:	0905                	addi	s2,s2,1
    145c:	fd449ae3          	bne	s1,s4,1430 <random_init+0x46>
    1460:	000037b7          	lui	a5,0x3
    1464:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1468:	000037b7          	lui	a5,0x3
    146c:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1470:	000037b7          	lui	a5,0x3
    1474:	4705                	li	a4,1
    1476:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    147a:	70e2                	ld	ra,56(sp)
    147c:	7442                	ld	s0,48(sp)
    147e:	74a2                	ld	s1,40(sp)
    1480:	7902                	ld	s2,32(sp)
    1482:	69e2                	ld	s3,24(sp)
    1484:	6a42                	ld	s4,16(sp)
    1486:	6121                	addi	sp,sp,64
    1488:	8082                	ret

000000000000148a <random_bytes>:
    148a:	7139                	addi	sp,sp,-64
    148c:	fc06                	sd	ra,56(sp)
    148e:	f822                	sd	s0,48(sp)
    1490:	f426                	sd	s1,40(sp)
    1492:	f04a                	sd	s2,32(sp)
    1494:	ec4e                	sd	s3,24(sp)
    1496:	e852                	sd	s4,16(sp)
    1498:	e456                	sd	s5,8(sp)
    149a:	e05a                	sd	s6,0(sp)
    149c:	892a                	mv	s2,a0
    149e:	8aae                	mv	s5,a1
    14a0:	000037b7          	lui	a5,0x3
    14a4:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14a8:	c3c1                	beqz	a5,1528 <random_bytes+0x9e>
    14aa:	060a8563          	beqz	s5,1514 <random_bytes+0x8a>
    14ae:	9aca                	add	s5,s5,s2
    14b0:	00003a37          	lui	s4,0x3
    14b4:	000034b7          	lui	s1,0x3
    14b8:	01048493          	addi	s1,s1,16 # 3010 <s>
    14bc:	000039b7          	lui	s3,0x3
    14c0:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14c4:	2505                	addiw	a0,a0,1
    14c6:	0ff57513          	andi	a0,a0,255
    14ca:	00aa02a3          	sb	a0,5(s4)
    14ce:	00a48b33          	add	s6,s1,a0
    14d2:	000b4403          	lbu	s0,0(s6)
    14d6:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14da:	9c3d                	addw	s0,s0,a5
    14dc:	0ff47413          	andi	s0,s0,255
    14e0:	00898223          	sb	s0,4(s3)
    14e4:	4605                	li	a2,1
    14e6:	008485b3          	add	a1,s1,s0
    14ea:	855a                	mv	a0,s6
    14ec:	00000097          	auipc	ra,0x0
    14f0:	ede080e7          	jalr	-290(ra) # 13ca <swap_bytes>
    14f4:	9426                	add	s0,s0,s1
    14f6:	000b4783          	lbu	a5,0(s6)
    14fa:	00044703          	lbu	a4,0(s0)
    14fe:	9fb9                	addw	a5,a5,a4
    1500:	0ff7f793          	andi	a5,a5,255
    1504:	97a6                	add	a5,a5,s1
    1506:	0007c783          	lbu	a5,0(a5)
    150a:	00f90023          	sb	a5,0(s2)
    150e:	0905                	addi	s2,s2,1
    1510:	fb2a98e3          	bne	s5,s2,14c0 <random_bytes+0x36>
    1514:	70e2                	ld	ra,56(sp)
    1516:	7442                	ld	s0,48(sp)
    1518:	74a2                	ld	s1,40(sp)
    151a:	7902                	ld	s2,32(sp)
    151c:	69e2                	ld	s3,24(sp)
    151e:	6a42                	ld	s4,16(sp)
    1520:	6aa2                	ld	s5,8(sp)
    1522:	6b02                	ld	s6,0(sp)
    1524:	6121                	addi	sp,sp,64
    1526:	8082                	ret
    1528:	4501                	li	a0,0
    152a:	00000097          	auipc	ra,0x0
    152e:	ec0080e7          	jalr	-320(ra) # 13ea <random_init>
    1532:	bfa5                	j	14aa <random_bytes+0x20>

0000000000001534 <random_ulong>:
    1534:	1101                	addi	sp,sp,-32
    1536:	ec06                	sd	ra,24(sp)
    1538:	45a1                	li	a1,8
    153a:	0028                	addi	a0,sp,8
    153c:	00000097          	auipc	ra,0x0
    1540:	f4e080e7          	jalr	-178(ra) # 148a <random_bytes>
    1544:	6522                	ld	a0,8(sp)
    1546:	60e2                	ld	ra,24(sp)
    1548:	6105                	addi	sp,sp,32
    154a:	8082                	ret

000000000000154c <shuffle>:
    154c:	c9b9                	beqz	a1,15a2 <shuffle+0x56>
    154e:	7179                	addi	sp,sp,-48
    1550:	f406                	sd	ra,40(sp)
    1552:	f022                	sd	s0,32(sp)
    1554:	ec26                	sd	s1,24(sp)
    1556:	e84a                	sd	s2,16(sp)
    1558:	e44e                	sd	s3,8(sp)
    155a:	e052                	sd	s4,0(sp)
    155c:	8a2a                	mv	s4,a0
    155e:	89ae                	mv	s3,a1
    1560:	84b2                	mv	s1,a2
    1562:	892a                	mv	s2,a0
    1564:	4401                	li	s0,0
    1566:	00000097          	auipc	ra,0x0
    156a:	fce080e7          	jalr	-50(ra) # 1534 <random_ulong>
    156e:	408985b3          	sub	a1,s3,s0
    1572:	02b575b3          	remu	a1,a0,a1
    1576:	95a2                	add	a1,a1,s0
    1578:	029585b3          	mul	a1,a1,s1
    157c:	8626                	mv	a2,s1
    157e:	95d2                	add	a1,a1,s4
    1580:	854a                	mv	a0,s2
    1582:	00000097          	auipc	ra,0x0
    1586:	e48080e7          	jalr	-440(ra) # 13ca <swap_bytes>
    158a:	0405                	addi	s0,s0,1
    158c:	9926                	add	s2,s2,s1
    158e:	fc899ce3          	bne	s3,s0,1566 <shuffle+0x1a>
    1592:	70a2                	ld	ra,40(sp)
    1594:	7402                	ld	s0,32(sp)
    1596:	64e2                	ld	s1,24(sp)
    1598:	6942                	ld	s2,16(sp)
    159a:	69a2                	ld	s3,8(sp)
    159c:	6a02                	ld	s4,0(sp)
    159e:	6145                	addi	sp,sp,48
    15a0:	8082                	ret
    15a2:	8082                	ret

00000000000015a4 <arc4_init>:
    15a4:	100500a3          	sb	zero,257(a0)
    15a8:	10050023          	sb	zero,256(a0)
    15ac:	4781                	li	a5,0
    15ae:	10000693          	li	a3,256
    15b2:	00f50733          	add	a4,a0,a5
    15b6:	00f70023          	sb	a5,0(a4)
    15ba:	0785                	addi	a5,a5,1
    15bc:	fed79be3          	bne	a5,a3,15b2 <arc4_init+0xe>
    15c0:	86aa                	mv	a3,a0
    15c2:	10050e13          	addi	t3,a0,256
    15c6:	4701                	li	a4,0
    15c8:	4781                	li	a5,0
    15ca:	0006c883          	lbu	a7,0(a3)
    15ce:	00f58833          	add	a6,a1,a5
    15d2:	00084803          	lbu	a6,0(a6)
    15d6:	00e8873b          	addw	a4,a7,a4
    15da:	00e8073b          	addw	a4,a6,a4
    15de:	0ff77713          	andi	a4,a4,255
    15e2:	00e50833          	add	a6,a0,a4
    15e6:	00084303          	lbu	t1,0(a6)
    15ea:	00668023          	sb	t1,0(a3)
    15ee:	01180023          	sb	a7,0(a6)
    15f2:	0785                	addi	a5,a5,1
    15f4:	00c7b833          	sltu	a6,a5,a2
    15f8:	41000833          	neg	a6,a6
    15fc:	0107f7b3          	and	a5,a5,a6
    1600:	0685                	addi	a3,a3,1
    1602:	fdc694e3          	bne	a3,t3,15ca <arc4_init+0x26>
    1606:	8082                	ret

0000000000001608 <arc4_crypt>:
    1608:	10054e03          	lbu	t3,256(a0)
    160c:	10154803          	lbu	a6,257(a0)
    1610:	fff60e93          	addi	t4,a2,-1
    1614:	c225                	beqz	a2,1674 <arc4_crypt+0x6c>
    1616:	00c588b3          	add	a7,a1,a2
    161a:	86ae                	mv	a3,a1
    161c:	001e031b          	addiw	t1,t3,1
    1620:	40b3033b          	subw	t1,t1,a1
    1624:	00d3073b          	addw	a4,t1,a3
    1628:	0ff77713          	andi	a4,a4,255
    162c:	972a                	add	a4,a4,a0
    162e:	00074603          	lbu	a2,0(a4)
    1632:	0106083b          	addw	a6,a2,a6
    1636:	0ff87813          	andi	a6,a6,255
    163a:	010507b3          	add	a5,a0,a6
    163e:	0007c583          	lbu	a1,0(a5)
    1642:	00b70023          	sb	a1,0(a4)
    1646:	00c78023          	sb	a2,0(a5)
    164a:	0685                	addi	a3,a3,1
    164c:	00074783          	lbu	a5,0(a4)
    1650:	9fb1                	addw	a5,a5,a2
    1652:	0ff7f793          	andi	a5,a5,255
    1656:	97aa                	add	a5,a5,a0
    1658:	0007c783          	lbu	a5,0(a5)
    165c:	fff6c703          	lbu	a4,-1(a3)
    1660:	8fb9                	xor	a5,a5,a4
    1662:	fef68fa3          	sb	a5,-1(a3)
    1666:	fb169fe3          	bne	a3,a7,1624 <arc4_crypt+0x1c>
    166a:	2e85                	addiw	t4,t4,1
    166c:	01ce8e3b          	addw	t3,t4,t3
    1670:	0ffe7e13          	andi	t3,t3,255
    1674:	11c50023          	sb	t3,256(a0)
    1678:	110500a3          	sb	a6,257(a0)
    167c:	8082                	ret

000000000000167e <_main>:
    167e:	1141                	addi	sp,sp,-16
    1680:	e406                	sd	ra,8(sp)
    1682:	00000097          	auipc	ra,0x0
    1686:	97e080e7          	jalr	-1666(ra) # 1000 <main>
    168a:	4501                	li	a0,0
    168c:	00000097          	auipc	ra,0x0
    1690:	578080e7          	jalr	1400(ra) # 1c04 <exit>
    1694:	60a2                	ld	ra,8(sp)
    1696:	0141                	addi	sp,sp,16
    1698:	8082                	ret

000000000000169a <strcmp>:
    169a:	00054783          	lbu	a5,0(a0)
    169e:	cb91                	beqz	a5,16b2 <strcmp+0x18>
    16a0:	0005c703          	lbu	a4,0(a1)
    16a4:	00f71763          	bne	a4,a5,16b2 <strcmp+0x18>
    16a8:	0505                	addi	a0,a0,1
    16aa:	0585                	addi	a1,a1,1
    16ac:	00054783          	lbu	a5,0(a0)
    16b0:	fbe5                	bnez	a5,16a0 <strcmp+0x6>
    16b2:	0005c503          	lbu	a0,0(a1)
    16b6:	40a7853b          	subw	a0,a5,a0
    16ba:	8082                	ret

00000000000016bc <strcpy>:
    16bc:	87aa                	mv	a5,a0
    16be:	0585                	addi	a1,a1,1
    16c0:	0785                	addi	a5,a5,1
    16c2:	fff5c703          	lbu	a4,-1(a1)
    16c6:	fee78fa3          	sb	a4,-1(a5)
    16ca:	fb75                	bnez	a4,16be <strcpy+0x2>
    16cc:	8082                	ret

00000000000016ce <strlen>:
    16ce:	00054783          	lbu	a5,0(a0)
    16d2:	cf81                	beqz	a5,16ea <strlen+0x1c>
    16d4:	0505                	addi	a0,a0,1
    16d6:	87aa                	mv	a5,a0
    16d8:	4685                	li	a3,1
    16da:	9e89                	subw	a3,a3,a0
    16dc:	00f6853b          	addw	a0,a3,a5
    16e0:	0785                	addi	a5,a5,1
    16e2:	fff7c703          	lbu	a4,-1(a5)
    16e6:	fb7d                	bnez	a4,16dc <strlen+0xe>
    16e8:	8082                	ret
    16ea:	4501                	li	a0,0
    16ec:	8082                	ret

00000000000016ee <memset>:
    16ee:	ca19                	beqz	a2,1704 <memset+0x16>
    16f0:	87aa                	mv	a5,a0
    16f2:	1602                	slli	a2,a2,0x20
    16f4:	9201                	srli	a2,a2,0x20
    16f6:	00a60733          	add	a4,a2,a0
    16fa:	00b78023          	sb	a1,0(a5)
    16fe:	0785                	addi	a5,a5,1
    1700:	fee79de3          	bne	a5,a4,16fa <memset+0xc>
    1704:	8082                	ret

0000000000001706 <memcmp>:
    1706:	1101                	addi	sp,sp,-32
    1708:	ec06                	sd	ra,24(sp)
    170a:	e822                	sd	s0,16(sp)
    170c:	e426                	sd	s1,8(sp)
    170e:	e04a                	sd	s2,0(sp)
    1710:	892a                	mv	s2,a0
    1712:	842e                	mv	s0,a1
    1714:	84b2                	mv	s1,a2
    1716:	c915                	beqz	a0,174a <memcmp+0x44>
    1718:	c5ad                	beqz	a1,1782 <memcmp+0x7c>
    171a:	fff60713          	addi	a4,a2,-1
    171e:	c645                	beqz	a2,17c6 <memcmp+0xc0>
    1720:	87ca                	mv	a5,s2
    1722:	00190613          	addi	a2,s2,1
    1726:	963a                	add	a2,a2,a4
    1728:	0007c683          	lbu	a3,0(a5)
    172c:	00044703          	lbu	a4,0(s0)
    1730:	08e69463          	bne	a3,a4,17b8 <memcmp+0xb2>
    1734:	0785                	addi	a5,a5,1
    1736:	0405                	addi	s0,s0,1
    1738:	fec798e3          	bne	a5,a2,1728 <memcmp+0x22>
    173c:	4501                	li	a0,0
    173e:	60e2                	ld	ra,24(sp)
    1740:	6442                	ld	s0,16(sp)
    1742:	64a2                	ld	s1,8(sp)
    1744:	6902                	ld	s2,0(sp)
    1746:	6105                	addi	sp,sp,32
    1748:	8082                	ret
    174a:	4501                	li	a0,0
    174c:	da6d                	beqz	a2,173e <memcmp+0x38>
    174e:	03200693          	li	a3,50
    1752:	00002637          	lui	a2,0x2
    1756:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    175a:	000025b7          	lui	a1,0x2
    175e:	19858593          	addi	a1,a1,408 # 2198 <crctab+0x410>
    1762:	4509                	li	a0,2
    1764:	00000097          	auipc	ra,0x0
    1768:	bbc080e7          	jalr	-1092(ra) # 1320 <fprintf>
    176c:	650d                	lui	a0,0x3
    176e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1772:	00000097          	auipc	ra,0x0
    1776:	492080e7          	jalr	1170(ra) # 1c04 <exit>
    177a:	fff48713          	addi	a4,s1,-1
    177e:	f04d                	bnez	s0,1720 <memcmp+0x1a>
    1780:	a011                	j	1784 <memcmp+0x7e>
    1782:	c221                	beqz	a2,17c2 <memcmp+0xbc>
    1784:	03300693          	li	a3,51
    1788:	00002637          	lui	a2,0x2
    178c:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    1790:	000025b7          	lui	a1,0x2
    1794:	1e058593          	addi	a1,a1,480 # 21e0 <crctab+0x458>
    1798:	4509                	li	a0,2
    179a:	00000097          	auipc	ra,0x0
    179e:	b86080e7          	jalr	-1146(ra) # 1320 <fprintf>
    17a2:	650d                	lui	a0,0x3
    17a4:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17a8:	00000097          	auipc	ra,0x0
    17ac:	45c080e7          	jalr	1116(ra) # 1c04 <exit>
    17b0:	fff48713          	addi	a4,s1,-1
    17b4:	4401                	li	s0,0
    17b6:	b7ad                	j	1720 <memcmp+0x1a>
    17b8:	4505                	li	a0,1
    17ba:	f8d762e3          	bltu	a4,a3,173e <memcmp+0x38>
    17be:	557d                	li	a0,-1
    17c0:	bfbd                	j	173e <memcmp+0x38>
    17c2:	4501                	li	a0,0
    17c4:	bfad                	j	173e <memcmp+0x38>
    17c6:	4501                	li	a0,0
    17c8:	bf9d                	j	173e <memcmp+0x38>

00000000000017ca <memcpy>:
    17ca:	1101                	addi	sp,sp,-32
    17cc:	ec06                	sd	ra,24(sp)
    17ce:	e822                	sd	s0,16(sp)
    17d0:	e426                	sd	s1,8(sp)
    17d2:	e04a                	sd	s2,0(sp)
    17d4:	84aa                	mv	s1,a0
    17d6:	842e                	mv	s0,a1
    17d8:	8932                	mv	s2,a2
    17da:	c51d                	beqz	a0,1808 <memcpy+0x3e>
    17dc:	c1ad                	beqz	a1,183e <memcpy+0x74>
    17de:	fff60693          	addi	a3,a2,-1
    17e2:	ce01                	beqz	a2,17fa <memcpy+0x30>
    17e4:	0685                	addi	a3,a3,1
    17e6:	96a6                	add	a3,a3,s1
    17e8:	87a6                	mv	a5,s1
    17ea:	0405                	addi	s0,s0,1
    17ec:	0785                	addi	a5,a5,1
    17ee:	fff44703          	lbu	a4,-1(s0)
    17f2:	fee78fa3          	sb	a4,-1(a5)
    17f6:	fed79ae3          	bne	a5,a3,17ea <memcpy+0x20>
    17fa:	8526                	mv	a0,s1
    17fc:	60e2                	ld	ra,24(sp)
    17fe:	6442                	ld	s0,16(sp)
    1800:	64a2                	ld	s1,8(sp)
    1802:	6902                	ld	s2,0(sp)
    1804:	6105                	addi	sp,sp,32
    1806:	8082                	ret
    1808:	da6d                	beqz	a2,17fa <memcpy+0x30>
    180a:	04000693          	li	a3,64
    180e:	00002637          	lui	a2,0x2
    1812:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    1816:	000025b7          	lui	a1,0x2
    181a:	22858593          	addi	a1,a1,552 # 2228 <crctab+0x4a0>
    181e:	4509                	li	a0,2
    1820:	00000097          	auipc	ra,0x0
    1824:	b00080e7          	jalr	-1280(ra) # 1320 <fprintf>
    1828:	650d                	lui	a0,0x3
    182a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    182e:	00000097          	auipc	ra,0x0
    1832:	3d6080e7          	jalr	982(ra) # 1c04 <exit>
    1836:	fff90693          	addi	a3,s2,-1
    183a:	f44d                	bnez	s0,17e4 <memcpy+0x1a>
    183c:	a011                	j	1840 <memcpy+0x76>
    183e:	de55                	beqz	a2,17fa <memcpy+0x30>
    1840:	04100693          	li	a3,65
    1844:	00002637          	lui	a2,0x2
    1848:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    184c:	000025b7          	lui	a1,0x2
    1850:	27058593          	addi	a1,a1,624 # 2270 <crctab+0x4e8>
    1854:	4509                	li	a0,2
    1856:	00000097          	auipc	ra,0x0
    185a:	aca080e7          	jalr	-1334(ra) # 1320 <fprintf>
    185e:	650d                	lui	a0,0x3
    1860:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1864:	00000097          	auipc	ra,0x0
    1868:	3a0080e7          	jalr	928(ra) # 1c04 <exit>
    186c:	fff90693          	addi	a3,s2,-1
    1870:	4401                	li	s0,0
    1872:	bf8d                	j	17e4 <memcpy+0x1a>

0000000000001874 <itoa>:
    1874:	1101                	addi	sp,sp,-32
    1876:	ec06                	sd	ra,24(sp)
    1878:	e822                	sd	s0,16(sp)
    187a:	e426                	sd	s1,8(sp)
    187c:	842a                	mv	s0,a0
    187e:	41f5d71b          	sraiw	a4,a1,0x1f
    1882:	00e5c7b3          	xor	a5,a1,a4
    1886:	9f99                	subw	a5,a5,a4
    1888:	84aa                	mv	s1,a0
    188a:	862a                	mv	a2,a0
    188c:	4681                	li	a3,0
    188e:	4529                	li	a0,10
    1890:	4825                	li	a6,9
    1892:	88b6                	mv	a7,a3
    1894:	2685                	addiw	a3,a3,1
    1896:	02a7e73b          	remw	a4,a5,a0
    189a:	0307071b          	addiw	a4,a4,48
    189e:	00e60023          	sb	a4,0(a2)
    18a2:	873e                	mv	a4,a5
    18a4:	02a7c7bb          	divw	a5,a5,a0
    18a8:	0605                	addi	a2,a2,1
    18aa:	fee844e3          	blt	a6,a4,1892 <itoa+0x1e>
    18ae:	0405c863          	bltz	a1,18fe <itoa+0x8a>
    18b2:	96a2                	add	a3,a3,s0
    18b4:	00068023          	sb	zero,0(a3)
    18b8:	8522                	mv	a0,s0
    18ba:	00000097          	auipc	ra,0x0
    18be:	e14080e7          	jalr	-492(ra) # 16ce <strlen>
    18c2:	fff5071b          	addiw	a4,a0,-1
    18c6:	02e05763          	blez	a4,18f4 <itoa+0x80>
    18ca:	9722                	add	a4,a4,s0
    18cc:	4681                	li	a3,0
    18ce:	0004c783          	lbu	a5,0(s1)
    18d2:	00074603          	lbu	a2,0(a4)
    18d6:	00c48023          	sb	a2,0(s1)
    18da:	00f70023          	sb	a5,0(a4)
    18de:	0016879b          	addiw	a5,a3,1
    18e2:	0007869b          	sext.w	a3,a5
    18e6:	0485                	addi	s1,s1,1
    18e8:	177d                	addi	a4,a4,-1
    18ea:	fff7c793          	not	a5,a5
    18ee:	9fa9                	addw	a5,a5,a0
    18f0:	fcf6cfe3          	blt	a3,a5,18ce <itoa+0x5a>
    18f4:	60e2                	ld	ra,24(sp)
    18f6:	6442                	ld	s0,16(sp)
    18f8:	64a2                	ld	s1,8(sp)
    18fa:	6105                	addi	sp,sp,32
    18fc:	8082                	ret
    18fe:	96a2                	add	a3,a3,s0
    1900:	02d00793          	li	a5,45
    1904:	00f68023          	sb	a5,0(a3)
    1908:	0028869b          	addiw	a3,a7,2
    190c:	b75d                	j	18b2 <itoa+0x3e>

000000000000190e <atoi>:
    190e:	00054783          	lbu	a5,0(a0)
    1912:	02000713          	li	a4,32
    1916:	00e79763          	bne	a5,a4,1924 <atoi+0x16>
    191a:	0505                	addi	a0,a0,1
    191c:	00054783          	lbu	a5,0(a0)
    1920:	fee78de3          	beq	a5,a4,191a <atoi+0xc>
    1924:	02b00713          	li	a4,43
    1928:	04e78663          	beq	a5,a4,1974 <atoi+0x66>
    192c:	02d00713          	li	a4,45
    1930:	4805                	li	a6,1
    1932:	04e78463          	beq	a5,a4,197a <atoi+0x6c>
    1936:	00054683          	lbu	a3,0(a0)
    193a:	fd06879b          	addiw	a5,a3,-48
    193e:	0ff7f793          	andi	a5,a5,255
    1942:	4725                	li	a4,9
    1944:	02f76e63          	bltu	a4,a5,1980 <atoi+0x72>
    1948:	4601                	li	a2,0
    194a:	45a5                	li	a1,9
    194c:	0505                	addi	a0,a0,1
    194e:	0026179b          	slliw	a5,a2,0x2
    1952:	9fb1                	addw	a5,a5,a2
    1954:	0017979b          	slliw	a5,a5,0x1
    1958:	9fb5                	addw	a5,a5,a3
    195a:	fd07861b          	addiw	a2,a5,-48
    195e:	00054683          	lbu	a3,0(a0)
    1962:	fd06871b          	addiw	a4,a3,-48
    1966:	0ff77713          	andi	a4,a4,255
    196a:	fee5f1e3          	bgeu	a1,a4,194c <atoi+0x3e>
    196e:	02c8053b          	mulw	a0,a6,a2
    1972:	8082                	ret
    1974:	0505                	addi	a0,a0,1
    1976:	4805                	li	a6,1
    1978:	bf7d                	j	1936 <atoi+0x28>
    197a:	0505                	addi	a0,a0,1
    197c:	587d                	li	a6,-1
    197e:	bf65                	j	1936 <atoi+0x28>
    1980:	4601                	li	a2,0
    1982:	b7f5                	j	196e <atoi+0x60>

0000000000001984 <check_file_handle>:
    1984:	d8010113          	addi	sp,sp,-640
    1988:	26113c23          	sd	ra,632(sp)
    198c:	26813823          	sd	s0,624(sp)
    1990:	26913423          	sd	s1,616(sp)
    1994:	27213023          	sd	s2,608(sp)
    1998:	25313c23          	sd	s3,600(sp)
    199c:	25413823          	sd	s4,592(sp)
    19a0:	25513423          	sd	s5,584(sp)
    19a4:	25613023          	sd	s6,576(sp)
    19a8:	23713c23          	sd	s7,568(sp)
    19ac:	23813823          	sd	s8,560(sp)
    19b0:	23913423          	sd	s9,552(sp)
    19b4:	23a13023          	sd	s10,544(sp)
    19b8:	21b13c23          	sd	s11,536(sp)
    19bc:	8baa                	mv	s7,a0
    19be:	8a2e                	mv	s4,a1
    19c0:	8c32                	mv	s8,a2
    19c2:	89b6                	mv	s3,a3
    19c4:	040c                	addi	a1,sp,512
    19c6:	00000097          	auipc	ra,0x0
    19ca:	28e080e7          	jalr	654(ra) # 1c54 <fstat>
    19ce:	20813603          	ld	a2,520(sp)
    19d2:	03361163          	bne	a2,s3,19f4 <check_file_handle+0x70>
    19d6:	06098763          	beqz	s3,1a44 <check_file_handle+0xc0>
    19da:	4901                	li	s2,0
    19dc:	20000a93          	li	s5,512
    19e0:	00002cb7          	lui	s9,0x2
    19e4:	00002db7          	lui	s11,0x2
    19e8:	6b0d                	lui	s6,0x3
    19ea:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19ee:	00002d37          	lui	s10,0x2
    19f2:	aa39                	j	1b10 <check_file_handle+0x18c>
    19f4:	86ce                	mv	a3,s3
    19f6:	85d2                	mv	a1,s4
    19f8:	00002537          	lui	a0,0x2
    19fc:	2b850513          	addi	a0,a0,696 # 22b8 <crctab+0x530>
    1a00:	00000097          	auipc	ra,0x0
    1a04:	942080e7          	jalr	-1726(ra) # 1342 <printf>
    1a08:	fc0999e3          	bnez	s3,19da <check_file_handle+0x56>
    1a0c:	20813683          	ld	a3,520(sp)
    1a10:	03368a63          	beq	a3,s3,1a44 <check_file_handle+0xc0>
    1a14:	0a600813          	li	a6,166
    1a18:	000027b7          	lui	a5,0x2
    1a1c:	18878793          	addi	a5,a5,392 # 2188 <crctab+0x400>
    1a20:	874e                	mv	a4,s3
    1a22:	8652                	mv	a2,s4
    1a24:	000025b7          	lui	a1,0x2
    1a28:	38858593          	addi	a1,a1,904 # 2388 <crctab+0x600>
    1a2c:	4509                	li	a0,2
    1a2e:	00000097          	auipc	ra,0x0
    1a32:	8f2080e7          	jalr	-1806(ra) # 1320 <fprintf>
    1a36:	650d                	lui	a0,0x3
    1a38:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a3c:	00000097          	auipc	ra,0x0
    1a40:	1c8080e7          	jalr	456(ra) # 1c04 <exit>
    1a44:	85d2                	mv	a1,s4
    1a46:	00002537          	lui	a0,0x2
    1a4a:	3d050513          	addi	a0,a0,976 # 23d0 <crctab+0x648>
    1a4e:	00000097          	auipc	ra,0x0
    1a52:	8f4080e7          	jalr	-1804(ra) # 1342 <printf>
    1a56:	27813083          	ld	ra,632(sp)
    1a5a:	27013403          	ld	s0,624(sp)
    1a5e:	26813483          	ld	s1,616(sp)
    1a62:	26013903          	ld	s2,608(sp)
    1a66:	25813983          	ld	s3,600(sp)
    1a6a:	25013a03          	ld	s4,592(sp)
    1a6e:	24813a83          	ld	s5,584(sp)
    1a72:	24013b03          	ld	s6,576(sp)
    1a76:	23813b83          	ld	s7,568(sp)
    1a7a:	23013c03          	ld	s8,560(sp)
    1a7e:	22813c83          	ld	s9,552(sp)
    1a82:	22013d03          	ld	s10,544(sp)
    1a86:	21813d83          	ld	s11,536(sp)
    1a8a:	28010113          	addi	sp,sp,640
    1a8e:	8082                	ret
    1a90:	09d00893          	li	a7,157
    1a94:	188c8813          	addi	a6,s9,392 # 2188 <crctab+0x400>
    1a98:	87aa                	mv	a5,a0
    1a9a:	8752                	mv	a4,s4
    1a9c:	86ca                	mv	a3,s2
    1a9e:	8622                	mv	a2,s0
    1aa0:	2e8d8593          	addi	a1,s11,744 # 22e8 <crctab+0x560>
    1aa4:	4509                	li	a0,2
    1aa6:	00000097          	auipc	ra,0x0
    1aaa:	87a080e7          	jalr	-1926(ra) # 1320 <fprintf>
    1aae:	855a                	mv	a0,s6
    1ab0:	00000097          	auipc	ra,0x0
    1ab4:	154080e7          	jalr	340(ra) # 1c04 <exit>
    1ab8:	a89d                	j	1b2e <check_file_handle+0x1aa>
    1aba:	00160593          	addi	a1,a2,1
    1abe:	0285f163          	bgeu	a1,s0,1ae0 <check_file_handle+0x15c>
    1ac2:	00c10733          	add	a4,sp,a2
    1ac6:	00b487b3          	add	a5,s1,a1
    1aca:	00174683          	lbu	a3,1(a4)
    1ace:	0007c783          	lbu	a5,0(a5)
    1ad2:	00f68763          	beq	a3,a5,1ae0 <check_file_handle+0x15c>
    1ad6:	0585                	addi	a1,a1,1
    1ad8:	0705                	addi	a4,a4,1
    1ada:	feb416e3          	bne	s0,a1,1ac6 <check_file_handle+0x142>
    1ade:	85a2                	mv	a1,s0
    1ae0:	08100813          	li	a6,129
    1ae4:	188c8793          	addi	a5,s9,392
    1ae8:	8752                	mv	a4,s4
    1aea:	012606b3          	add	a3,a2,s2
    1aee:	40c58633          	sub	a2,a1,a2
    1af2:	330d0593          	addi	a1,s10,816 # 2330 <crctab+0x5a8>
    1af6:	4509                	li	a0,2
    1af8:	00000097          	auipc	ra,0x0
    1afc:	828080e7          	jalr	-2008(ra) # 1320 <fprintf>
    1b00:	855a                	mv	a0,s6
    1b02:	00000097          	auipc	ra,0x0
    1b06:	102080e7          	jalr	258(ra) # 1c04 <exit>
    1b0a:	9922                	add	s2,s2,s0
    1b0c:	f13970e3          	bgeu	s2,s3,1a0c <check_file_handle+0x88>
    1b10:	41298433          	sub	s0,s3,s2
    1b14:	008af363          	bgeu	s5,s0,1b1a <check_file_handle+0x196>
    1b18:	8456                	mv	s0,s5
    1b1a:	0004061b          	sext.w	a2,s0
    1b1e:	858a                	mv	a1,sp
    1b20:	855e                	mv	a0,s7
    1b22:	00000097          	auipc	ra,0x0
    1b26:	10a080e7          	jalr	266(ra) # 1c2c <read>
    1b2a:	f68513e3          	bne	a0,s0,1a90 <check_file_handle+0x10c>
    1b2e:	012c04b3          	add	s1,s8,s2
    1b32:	8622                	mv	a2,s0
    1b34:	85a6                	mv	a1,s1
    1b36:	850a                	mv	a0,sp
    1b38:	00000097          	auipc	ra,0x0
    1b3c:	bce080e7          	jalr	-1074(ra) # 1706 <memcmp>
    1b40:	d569                	beqz	a0,1b0a <check_file_handle+0x186>
    1b42:	03298163          	beq	s3,s2,1b64 <check_file_handle+0x1e0>
    1b46:	870a                	mv	a4,sp
    1b48:	4601                	li	a2,0
    1b4a:	00c487b3          	add	a5,s1,a2
    1b4e:	00074683          	lbu	a3,0(a4)
    1b52:	0007c783          	lbu	a5,0(a5)
    1b56:	f6f692e3          	bne	a3,a5,1aba <check_file_handle+0x136>
    1b5a:	0605                	addi	a2,a2,1
    1b5c:	0705                	addi	a4,a4,1
    1b5e:	fe8666e3          	bltu	a2,s0,1b4a <check_file_handle+0x1c6>
    1b62:	bfa1                	j	1aba <check_file_handle+0x136>
    1b64:	4601                	li	a2,0
    1b66:	4585                	li	a1,1
    1b68:	bfa5                	j	1ae0 <check_file_handle+0x15c>

0000000000001b6a <check_file>:
    1b6a:	7179                	addi	sp,sp,-48
    1b6c:	f406                	sd	ra,40(sp)
    1b6e:	f022                	sd	s0,32(sp)
    1b70:	ec26                	sd	s1,24(sp)
    1b72:	e84a                	sd	s2,16(sp)
    1b74:	e44e                	sd	s3,8(sp)
    1b76:	84aa                	mv	s1,a0
    1b78:	892e                	mv	s2,a1
    1b7a:	89b2                	mv	s3,a2
    1b7c:	4581                	li	a1,0
    1b7e:	00000097          	auipc	ra,0x0
    1b82:	0a6080e7          	jalr	166(ra) # 1c24 <open>
    1b86:	842a                	mv	s0,a0
    1b88:	4789                	li	a5,2
    1b8a:	02a7df63          	bge	a5,a0,1bc8 <check_file+0x5e>
    1b8e:	86ce                	mv	a3,s3
    1b90:	864a                	mv	a2,s2
    1b92:	85a6                	mv	a1,s1
    1b94:	8522                	mv	a0,s0
    1b96:	00000097          	auipc	ra,0x0
    1b9a:	dee080e7          	jalr	-530(ra) # 1984 <check_file_handle>
    1b9e:	85a6                	mv	a1,s1
    1ba0:	00002537          	lui	a0,0x2
    1ba4:	45850513          	addi	a0,a0,1112 # 2458 <crctab+0x6d0>
    1ba8:	fffff097          	auipc	ra,0xfffff
    1bac:	79a080e7          	jalr	1946(ra) # 1342 <printf>
    1bb0:	8522                	mv	a0,s0
    1bb2:	00000097          	auipc	ra,0x0
    1bb6:	09a080e7          	jalr	154(ra) # 1c4c <close>
    1bba:	70a2                	ld	ra,40(sp)
    1bbc:	7402                	ld	s0,32(sp)
    1bbe:	64e2                	ld	s1,24(sp)
    1bc0:	6942                	ld	s2,16(sp)
    1bc2:	69a2                	ld	s3,8(sp)
    1bc4:	6145                	addi	sp,sp,48
    1bc6:	8082                	ret
    1bc8:	0ae00713          	li	a4,174
    1bcc:	000026b7          	lui	a3,0x2
    1bd0:	18868693          	addi	a3,a3,392 # 2188 <crctab+0x400>
    1bd4:	8626                	mv	a2,s1
    1bd6:	000025b7          	lui	a1,0x2
    1bda:	3f058593          	addi	a1,a1,1008 # 23f0 <crctab+0x668>
    1bde:	4509                	li	a0,2
    1be0:	fffff097          	auipc	ra,0xfffff
    1be4:	740080e7          	jalr	1856(ra) # 1320 <fprintf>
    1be8:	650d                	lui	a0,0x3
    1bea:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bee:	00000097          	auipc	ra,0x0
    1bf2:	016080e7          	jalr	22(ra) # 1c04 <exit>
    1bf6:	bf61                	j	1b8e <check_file+0x24>

0000000000001bf8 <r_sp>:
    1bf8:	850a                	mv	a0,sp
    1bfa:	8082                	ret

0000000000001bfc <halt>:
    1bfc:	4885                	li	a7,1
    1bfe:	00000073          	ecall
    1c02:	8082                	ret

0000000000001c04 <exit>:
    1c04:	4889                	li	a7,2
    1c06:	00000073          	ecall
    1c0a:	8082                	ret

0000000000001c0c <exec>:
    1c0c:	488d                	li	a7,3
    1c0e:	00000073          	ecall
    1c12:	8082                	ret

0000000000001c14 <wait>:
    1c14:	4891                	li	a7,4
    1c16:	00000073          	ecall
    1c1a:	8082                	ret

0000000000001c1c <remove>:
    1c1c:	4895                	li	a7,5
    1c1e:	00000073          	ecall
    1c22:	8082                	ret

0000000000001c24 <open>:
    1c24:	4899                	li	a7,6
    1c26:	00000073          	ecall
    1c2a:	8082                	ret

0000000000001c2c <read>:
    1c2c:	489d                	li	a7,7
    1c2e:	00000073          	ecall
    1c32:	8082                	ret

0000000000001c34 <write>:
    1c34:	48a1                	li	a7,8
    1c36:	00000073          	ecall
    1c3a:	8082                	ret

0000000000001c3c <seek>:
    1c3c:	48a5                	li	a7,9
    1c3e:	00000073          	ecall
    1c42:	8082                	ret

0000000000001c44 <tell>:
    1c44:	48a9                	li	a7,10
    1c46:	00000073          	ecall
    1c4a:	8082                	ret

0000000000001c4c <close>:
    1c4c:	48ad                	li	a7,11
    1c4e:	00000073          	ecall
    1c52:	8082                	ret

0000000000001c54 <fstat>:
    1c54:	48b1                	li	a7,12
    1c56:	00000073          	ecall
    1c5a:	8082                	ret

0000000000001c5c <mmap>:
    1c5c:	48b5                	li	a7,13
    1c5e:	00000073          	ecall
    1c62:	8082                	ret

0000000000001c64 <munmap>:
    1c64:	48b9                	li	a7,14
    1c66:	00000073          	ecall
    1c6a:	8082                	ret

0000000000001c6c <chdir>:
    1c6c:	48bd                	li	a7,15
    1c6e:	00000073          	ecall
    1c72:	8082                	ret

0000000000001c74 <mkdir>:
    1c74:	48c1                	li	a7,16
    1c76:	00000073          	ecall
    1c7a:	8082                	ret
