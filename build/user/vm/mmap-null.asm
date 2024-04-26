
build/user/vm/mmap-null:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	4581                	li	a1,0
    1008:	00002537          	lui	a0,0x2
    100c:	c8050513          	addi	a0,a0,-896 # 1c80 <mkdir+0x10>
    1010:	00001097          	auipc	ra,0x1
    1014:	c10080e7          	jalr	-1008(ra) # 1c20 <open>
    1018:	842a                	mv	s0,a0
    101a:	4789                	li	a5,2
    101c:	00a7df63          	bge	a5,a0,103a <main+0x3a>
    1020:	4581                	li	a1,0
    1022:	8522                	mv	a0,s0
    1024:	00001097          	auipc	ra,0x1
    1028:	c34080e7          	jalr	-972(ra) # 1c58 <mmap>
    102c:	57fd                	li	a5,-1
    102e:	02f51c63          	bne	a0,a5,1066 <main+0x66>
    1032:	60a2                	ld	ra,8(sp)
    1034:	6402                	ld	s0,0(sp)
    1036:	0141                	addi	sp,sp,16
    1038:	8082                	ret
    103a:	46a1                	li	a3,8
    103c:	00002637          	lui	a2,0x2
    1040:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x20>
    1044:	000025b7          	lui	a1,0x2
    1048:	ca858593          	addi	a1,a1,-856 # 1ca8 <mkdir+0x38>
    104c:	4509                	li	a0,2
    104e:	00000097          	auipc	ra,0x0
    1052:	2ce080e7          	jalr	718(ra) # 131c <fprintf>
    1056:	650d                	lui	a0,0x3
    1058:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    105c:	00001097          	auipc	ra,0x1
    1060:	ba4080e7          	jalr	-1116(ra) # 1c00 <exit>
    1064:	bf75                	j	1020 <main+0x20>
    1066:	46a5                	li	a3,9
    1068:	00002637          	lui	a2,0x2
    106c:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x20>
    1070:	000025b7          	lui	a1,0x2
    1074:	d0858593          	addi	a1,a1,-760 # 1d08 <mkdir+0x98>
    1078:	4509                	li	a0,2
    107a:	00000097          	auipc	ra,0x0
    107e:	2a2080e7          	jalr	674(ra) # 131c <fprintf>
    1082:	650d                	lui	a0,0x3
    1084:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1088:	00001097          	auipc	ra,0x1
    108c:	b78080e7          	jalr	-1160(ra) # 1c00 <exit>
    1090:	b74d                	j	1032 <main+0x32>

0000000000001092 <putc>:
    1092:	1101                	addi	sp,sp,-32
    1094:	ec06                	sd	ra,24(sp)
    1096:	00b107a3          	sb	a1,15(sp)
    109a:	4605                	li	a2,1
    109c:	00f10593          	addi	a1,sp,15
    10a0:	00001097          	auipc	ra,0x1
    10a4:	b90080e7          	jalr	-1136(ra) # 1c30 <write>
    10a8:	60e2                	ld	ra,24(sp)
    10aa:	6105                	addi	sp,sp,32
    10ac:	8082                	ret

00000000000010ae <printint>:
    10ae:	7179                	addi	sp,sp,-48
    10b0:	f406                	sd	ra,40(sp)
    10b2:	f022                	sd	s0,32(sp)
    10b4:	ec26                	sd	s1,24(sp)
    10b6:	e84a                	sd	s2,16(sp)
    10b8:	84aa                	mv	s1,a0
    10ba:	c299                	beqz	a3,10c0 <printint+0x12>
    10bc:	0805c363          	bltz	a1,1142 <printint+0x94>
    10c0:	2581                	sext.w	a1,a1
    10c2:	4881                	li	a7,0
    10c4:	868a                	mv	a3,sp
    10c6:	4701                	li	a4,0
    10c8:	2601                	sext.w	a2,a2
    10ca:	00002537          	lui	a0,0x2
    10ce:	d7050513          	addi	a0,a0,-656 # 1d70 <digits>
    10d2:	883a                	mv	a6,a4
    10d4:	2705                	addiw	a4,a4,1
    10d6:	02c5f7bb          	remuw	a5,a1,a2
    10da:	1782                	slli	a5,a5,0x20
    10dc:	9381                	srli	a5,a5,0x20
    10de:	97aa                	add	a5,a5,a0
    10e0:	0007c783          	lbu	a5,0(a5)
    10e4:	00f68023          	sb	a5,0(a3)
    10e8:	0005879b          	sext.w	a5,a1
    10ec:	02c5d5bb          	divuw	a1,a1,a2
    10f0:	0685                	addi	a3,a3,1
    10f2:	fec7f0e3          	bgeu	a5,a2,10d2 <printint+0x24>
    10f6:	00088a63          	beqz	a7,110a <printint+0x5c>
    10fa:	081c                	addi	a5,sp,16
    10fc:	973e                	add	a4,a4,a5
    10fe:	02d00793          	li	a5,45
    1102:	fef70823          	sb	a5,-16(a4)
    1106:	0028071b          	addiw	a4,a6,2
    110a:	02e05663          	blez	a4,1136 <printint+0x88>
    110e:	00e10433          	add	s0,sp,a4
    1112:	fff10913          	addi	s2,sp,-1
    1116:	993a                	add	s2,s2,a4
    1118:	377d                	addiw	a4,a4,-1
    111a:	1702                	slli	a4,a4,0x20
    111c:	9301                	srli	a4,a4,0x20
    111e:	40e90933          	sub	s2,s2,a4
    1122:	fff44583          	lbu	a1,-1(s0)
    1126:	8526                	mv	a0,s1
    1128:	00000097          	auipc	ra,0x0
    112c:	f6a080e7          	jalr	-150(ra) # 1092 <putc>
    1130:	147d                	addi	s0,s0,-1
    1132:	ff2418e3          	bne	s0,s2,1122 <printint+0x74>
    1136:	70a2                	ld	ra,40(sp)
    1138:	7402                	ld	s0,32(sp)
    113a:	64e2                	ld	s1,24(sp)
    113c:	6942                	ld	s2,16(sp)
    113e:	6145                	addi	sp,sp,48
    1140:	8082                	ret
    1142:	40b005bb          	negw	a1,a1
    1146:	4885                	li	a7,1
    1148:	bfb5                	j	10c4 <printint+0x16>

000000000000114a <vprintf>:
    114a:	7159                	addi	sp,sp,-112
    114c:	f486                	sd	ra,104(sp)
    114e:	f0a2                	sd	s0,96(sp)
    1150:	eca6                	sd	s1,88(sp)
    1152:	e8ca                	sd	s2,80(sp)
    1154:	e4ce                	sd	s3,72(sp)
    1156:	e0d2                	sd	s4,64(sp)
    1158:	fc56                	sd	s5,56(sp)
    115a:	f85a                	sd	s6,48(sp)
    115c:	f45e                	sd	s7,40(sp)
    115e:	f062                	sd	s8,32(sp)
    1160:	ec66                	sd	s9,24(sp)
    1162:	e86a                	sd	s10,16(sp)
    1164:	e46e                	sd	s11,8(sp)
    1166:	0005c483          	lbu	s1,0(a1)
    116a:	18048a63          	beqz	s1,12fe <vprintf+0x1b4>
    116e:	8a2a                	mv	s4,a0
    1170:	8ab2                	mv	s5,a2
    1172:	00158413          	addi	s0,a1,1
    1176:	4901                	li	s2,0
    1178:	02500993          	li	s3,37
    117c:	06400b93          	li	s7,100
    1180:	06c00c13          	li	s8,108
    1184:	07800c93          	li	s9,120
    1188:	07000d13          	li	s10,112
    118c:	00002db7          	lui	s11,0x2
    1190:	00002b37          	lui	s6,0x2
    1194:	d70b0b13          	addi	s6,s6,-656 # 1d70 <digits>
    1198:	a839                	j	11b6 <vprintf+0x6c>
    119a:	85a6                	mv	a1,s1
    119c:	8552                	mv	a0,s4
    119e:	00000097          	auipc	ra,0x0
    11a2:	ef4080e7          	jalr	-268(ra) # 1092 <putc>
    11a6:	a019                	j	11ac <vprintf+0x62>
    11a8:	01390f63          	beq	s2,s3,11c6 <vprintf+0x7c>
    11ac:	0405                	addi	s0,s0,1
    11ae:	fff44483          	lbu	s1,-1(s0)
    11b2:	14048663          	beqz	s1,12fe <vprintf+0x1b4>
    11b6:	0004879b          	sext.w	a5,s1
    11ba:	fe0917e3          	bnez	s2,11a8 <vprintf+0x5e>
    11be:	fd379ee3          	bne	a5,s3,119a <vprintf+0x50>
    11c2:	893e                	mv	s2,a5
    11c4:	b7e5                	j	11ac <vprintf+0x62>
    11c6:	05778063          	beq	a5,s7,1206 <vprintf+0xbc>
    11ca:	05878c63          	beq	a5,s8,1222 <vprintf+0xd8>
    11ce:	07978863          	beq	a5,s9,123e <vprintf+0xf4>
    11d2:	09a78463          	beq	a5,s10,125a <vprintf+0x110>
    11d6:	07300713          	li	a4,115
    11da:	0ce78263          	beq	a5,a4,129e <vprintf+0x154>
    11de:	06300713          	li	a4,99
    11e2:	0ee78763          	beq	a5,a4,12d0 <vprintf+0x186>
    11e6:	11378163          	beq	a5,s3,12e8 <vprintf+0x19e>
    11ea:	85ce                	mv	a1,s3
    11ec:	8552                	mv	a0,s4
    11ee:	00000097          	auipc	ra,0x0
    11f2:	ea4080e7          	jalr	-348(ra) # 1092 <putc>
    11f6:	85a6                	mv	a1,s1
    11f8:	8552                	mv	a0,s4
    11fa:	00000097          	auipc	ra,0x0
    11fe:	e98080e7          	jalr	-360(ra) # 1092 <putc>
    1202:	4901                	li	s2,0
    1204:	b765                	j	11ac <vprintf+0x62>
    1206:	008a8493          	addi	s1,s5,8
    120a:	4685                	li	a3,1
    120c:	4629                	li	a2,10
    120e:	000aa583          	lw	a1,0(s5)
    1212:	8552                	mv	a0,s4
    1214:	00000097          	auipc	ra,0x0
    1218:	e9a080e7          	jalr	-358(ra) # 10ae <printint>
    121c:	8aa6                	mv	s5,s1
    121e:	4901                	li	s2,0
    1220:	b771                	j	11ac <vprintf+0x62>
    1222:	008a8493          	addi	s1,s5,8
    1226:	4681                	li	a3,0
    1228:	4629                	li	a2,10
    122a:	000aa583          	lw	a1,0(s5)
    122e:	8552                	mv	a0,s4
    1230:	00000097          	auipc	ra,0x0
    1234:	e7e080e7          	jalr	-386(ra) # 10ae <printint>
    1238:	8aa6                	mv	s5,s1
    123a:	4901                	li	s2,0
    123c:	bf85                	j	11ac <vprintf+0x62>
    123e:	008a8493          	addi	s1,s5,8
    1242:	4681                	li	a3,0
    1244:	4641                	li	a2,16
    1246:	000aa583          	lw	a1,0(s5)
    124a:	8552                	mv	a0,s4
    124c:	00000097          	auipc	ra,0x0
    1250:	e62080e7          	jalr	-414(ra) # 10ae <printint>
    1254:	8aa6                	mv	s5,s1
    1256:	4901                	li	s2,0
    1258:	bf91                	j	11ac <vprintf+0x62>
    125a:	008a8913          	addi	s2,s5,8
    125e:	000aba83          	ld	s5,0(s5)
    1262:	03000593          	li	a1,48
    1266:	8552                	mv	a0,s4
    1268:	00000097          	auipc	ra,0x0
    126c:	e2a080e7          	jalr	-470(ra) # 1092 <putc>
    1270:	85e6                	mv	a1,s9
    1272:	8552                	mv	a0,s4
    1274:	00000097          	auipc	ra,0x0
    1278:	e1e080e7          	jalr	-482(ra) # 1092 <putc>
    127c:	44c1                	li	s1,16
    127e:	03cad793          	srli	a5,s5,0x3c
    1282:	97da                	add	a5,a5,s6
    1284:	0007c583          	lbu	a1,0(a5)
    1288:	8552                	mv	a0,s4
    128a:	00000097          	auipc	ra,0x0
    128e:	e08080e7          	jalr	-504(ra) # 1092 <putc>
    1292:	0a92                	slli	s5,s5,0x4
    1294:	34fd                	addiw	s1,s1,-1
    1296:	f4e5                	bnez	s1,127e <vprintf+0x134>
    1298:	8aca                	mv	s5,s2
    129a:	4901                	li	s2,0
    129c:	bf01                	j	11ac <vprintf+0x62>
    129e:	008a8913          	addi	s2,s5,8
    12a2:	000ab483          	ld	s1,0(s5)
    12a6:	c085                	beqz	s1,12c6 <vprintf+0x17c>
    12a8:	0004c583          	lbu	a1,0(s1)
    12ac:	c5b1                	beqz	a1,12f8 <vprintf+0x1ae>
    12ae:	8552                	mv	a0,s4
    12b0:	00000097          	auipc	ra,0x0
    12b4:	de2080e7          	jalr	-542(ra) # 1092 <putc>
    12b8:	0485                	addi	s1,s1,1
    12ba:	0004c583          	lbu	a1,0(s1)
    12be:	f9e5                	bnez	a1,12ae <vprintf+0x164>
    12c0:	8aca                	mv	s5,s2
    12c2:	4901                	li	s2,0
    12c4:	b5e5                	j	11ac <vprintf+0x62>
    12c6:	d68d8493          	addi	s1,s11,-664 # 1d68 <mkdir+0xf8>
    12ca:	02800593          	li	a1,40
    12ce:	b7c5                	j	12ae <vprintf+0x164>
    12d0:	008a8493          	addi	s1,s5,8
    12d4:	000ac583          	lbu	a1,0(s5)
    12d8:	8552                	mv	a0,s4
    12da:	00000097          	auipc	ra,0x0
    12de:	db8080e7          	jalr	-584(ra) # 1092 <putc>
    12e2:	8aa6                	mv	s5,s1
    12e4:	4901                	li	s2,0
    12e6:	b5d9                	j	11ac <vprintf+0x62>
    12e8:	85ce                	mv	a1,s3
    12ea:	8552                	mv	a0,s4
    12ec:	00000097          	auipc	ra,0x0
    12f0:	da6080e7          	jalr	-602(ra) # 1092 <putc>
    12f4:	4901                	li	s2,0
    12f6:	bd5d                	j	11ac <vprintf+0x62>
    12f8:	8aca                	mv	s5,s2
    12fa:	4901                	li	s2,0
    12fc:	bd45                	j	11ac <vprintf+0x62>
    12fe:	70a6                	ld	ra,104(sp)
    1300:	7406                	ld	s0,96(sp)
    1302:	64e6                	ld	s1,88(sp)
    1304:	6946                	ld	s2,80(sp)
    1306:	69a6                	ld	s3,72(sp)
    1308:	6a06                	ld	s4,64(sp)
    130a:	7ae2                	ld	s5,56(sp)
    130c:	7b42                	ld	s6,48(sp)
    130e:	7ba2                	ld	s7,40(sp)
    1310:	7c02                	ld	s8,32(sp)
    1312:	6ce2                	ld	s9,24(sp)
    1314:	6d42                	ld	s10,16(sp)
    1316:	6da2                	ld	s11,8(sp)
    1318:	6165                	addi	sp,sp,112
    131a:	8082                	ret

000000000000131c <fprintf>:
    131c:	715d                	addi	sp,sp,-80
    131e:	ec06                	sd	ra,24(sp)
    1320:	f032                	sd	a2,32(sp)
    1322:	f436                	sd	a3,40(sp)
    1324:	f83a                	sd	a4,48(sp)
    1326:	fc3e                	sd	a5,56(sp)
    1328:	e0c2                	sd	a6,64(sp)
    132a:	e4c6                	sd	a7,72(sp)
    132c:	1010                	addi	a2,sp,32
    132e:	e432                	sd	a2,8(sp)
    1330:	00000097          	auipc	ra,0x0
    1334:	e1a080e7          	jalr	-486(ra) # 114a <vprintf>
    1338:	60e2                	ld	ra,24(sp)
    133a:	6161                	addi	sp,sp,80
    133c:	8082                	ret

000000000000133e <printf>:
    133e:	711d                	addi	sp,sp,-96
    1340:	ec06                	sd	ra,24(sp)
    1342:	f42e                	sd	a1,40(sp)
    1344:	f832                	sd	a2,48(sp)
    1346:	fc36                	sd	a3,56(sp)
    1348:	e0ba                	sd	a4,64(sp)
    134a:	e4be                	sd	a5,72(sp)
    134c:	e8c2                	sd	a6,80(sp)
    134e:	ecc6                	sd	a7,88(sp)
    1350:	1030                	addi	a2,sp,40
    1352:	e432                	sd	a2,8(sp)
    1354:	85aa                	mv	a1,a0
    1356:	4505                	li	a0,1
    1358:	00000097          	auipc	ra,0x0
    135c:	df2080e7          	jalr	-526(ra) # 114a <vprintf>
    1360:	60e2                	ld	ra,24(sp)
    1362:	6125                	addi	sp,sp,96
    1364:	8082                	ret

0000000000001366 <cksum>:
    1366:	cdb1                	beqz	a1,13c2 <cksum+0x5c>
    1368:	00b50833          	add	a6,a0,a1
    136c:	4781                	li	a5,0
    136e:	00002637          	lui	a2,0x2
    1372:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    1376:	0505                	addi	a0,a0,1
    1378:	0087969b          	slliw	a3,a5,0x8
    137c:	0187d71b          	srliw	a4,a5,0x18
    1380:	fff54783          	lbu	a5,-1(a0)
    1384:	8f3d                	xor	a4,a4,a5
    1386:	1702                	slli	a4,a4,0x20
    1388:	9301                	srli	a4,a4,0x20
    138a:	070a                	slli	a4,a4,0x2
    138c:	9732                	add	a4,a4,a2
    138e:	431c                	lw	a5,0(a4)
    1390:	8fb5                	xor	a5,a5,a3
    1392:	2781                	sext.w	a5,a5
    1394:	fea811e3          	bne	a6,a0,1376 <cksum+0x10>
    1398:	00002637          	lui	a2,0x2
    139c:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    13a0:	0ff5f693          	andi	a3,a1,255
    13a4:	81a1                	srli	a1,a1,0x8
    13a6:	0087951b          	slliw	a0,a5,0x8
    13aa:	0187d71b          	srliw	a4,a5,0x18
    13ae:	8f35                	xor	a4,a4,a3
    13b0:	070a                	slli	a4,a4,0x2
    13b2:	9732                	add	a4,a4,a2
    13b4:	431c                	lw	a5,0(a4)
    13b6:	8fa9                	xor	a5,a5,a0
    13b8:	2781                	sext.w	a5,a5
    13ba:	f1fd                	bnez	a1,13a0 <cksum+0x3a>
    13bc:	fff7c513          	not	a0,a5
    13c0:	8082                	ret
    13c2:	4781                	li	a5,0
    13c4:	bfe5                	j	13bc <cksum+0x56>

00000000000013c6 <swap_bytes>:
    13c6:	ce19                	beqz	a2,13e4 <swap_bytes+0x1e>
    13c8:	87aa                	mv	a5,a0
    13ca:	962a                	add	a2,a2,a0
    13cc:	0007c703          	lbu	a4,0(a5)
    13d0:	0005c683          	lbu	a3,0(a1)
    13d4:	00d78023          	sb	a3,0(a5)
    13d8:	00e58023          	sb	a4,0(a1)
    13dc:	0785                	addi	a5,a5,1
    13de:	0585                	addi	a1,a1,1
    13e0:	fec796e3          	bne	a5,a2,13cc <swap_bytes+0x6>
    13e4:	8082                	ret

00000000000013e6 <random_init>:
    13e6:	7139                	addi	sp,sp,-64
    13e8:	fc06                	sd	ra,56(sp)
    13ea:	f822                	sd	s0,48(sp)
    13ec:	f426                	sd	s1,40(sp)
    13ee:	f04a                	sd	s2,32(sp)
    13f0:	ec4e                	sd	s3,24(sp)
    13f2:	e852                	sd	s4,16(sp)
    13f4:	c62a                	sw	a0,12(sp)
    13f6:	000037b7          	lui	a5,0x3
    13fa:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13fe:	eca5                	bnez	s1,1476 <random_init+0x90>
    1400:	00003737          	lui	a4,0x3
    1404:	01070913          	addi	s2,a4,16 # 3010 <s>
    1408:	01070713          	addi	a4,a4,16
    140c:	87a6                	mv	a5,s1
    140e:	10000693          	li	a3,256
    1412:	00f70023          	sb	a5,0(a4)
    1416:	2785                	addiw	a5,a5,1
    1418:	0705                	addi	a4,a4,1
    141a:	fed79ce3          	bne	a5,a3,1412 <random_init+0x2c>
    141e:	4401                	li	s0,0
    1420:	000039b7          	lui	s3,0x3
    1424:	01098993          	addi	s3,s3,16 # 3010 <s>
    1428:	10000a13          	li	s4,256
    142c:	0034f793          	andi	a5,s1,3
    1430:	0818                	addi	a4,sp,16
    1432:	97ba                	add	a5,a5,a4
    1434:	ffc7c783          	lbu	a5,-4(a5)
    1438:	00094703          	lbu	a4,0(s2)
    143c:	9fb9                	addw	a5,a5,a4
    143e:	9c3d                	addw	s0,s0,a5
    1440:	0ff47413          	andi	s0,s0,255
    1444:	4605                	li	a2,1
    1446:	008985b3          	add	a1,s3,s0
    144a:	854a                	mv	a0,s2
    144c:	00000097          	auipc	ra,0x0
    1450:	f7a080e7          	jalr	-134(ra) # 13c6 <swap_bytes>
    1454:	2485                	addiw	s1,s1,1
    1456:	0905                	addi	s2,s2,1
    1458:	fd449ae3          	bne	s1,s4,142c <random_init+0x46>
    145c:	000037b7          	lui	a5,0x3
    1460:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1464:	000037b7          	lui	a5,0x3
    1468:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    146c:	000037b7          	lui	a5,0x3
    1470:	4705                	li	a4,1
    1472:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1476:	70e2                	ld	ra,56(sp)
    1478:	7442                	ld	s0,48(sp)
    147a:	74a2                	ld	s1,40(sp)
    147c:	7902                	ld	s2,32(sp)
    147e:	69e2                	ld	s3,24(sp)
    1480:	6a42                	ld	s4,16(sp)
    1482:	6121                	addi	sp,sp,64
    1484:	8082                	ret

0000000000001486 <random_bytes>:
    1486:	7139                	addi	sp,sp,-64
    1488:	fc06                	sd	ra,56(sp)
    148a:	f822                	sd	s0,48(sp)
    148c:	f426                	sd	s1,40(sp)
    148e:	f04a                	sd	s2,32(sp)
    1490:	ec4e                	sd	s3,24(sp)
    1492:	e852                	sd	s4,16(sp)
    1494:	e456                	sd	s5,8(sp)
    1496:	e05a                	sd	s6,0(sp)
    1498:	892a                	mv	s2,a0
    149a:	8aae                	mv	s5,a1
    149c:	000037b7          	lui	a5,0x3
    14a0:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14a4:	c3c1                	beqz	a5,1524 <random_bytes+0x9e>
    14a6:	060a8563          	beqz	s5,1510 <random_bytes+0x8a>
    14aa:	9aca                	add	s5,s5,s2
    14ac:	00003a37          	lui	s4,0x3
    14b0:	000034b7          	lui	s1,0x3
    14b4:	01048493          	addi	s1,s1,16 # 3010 <s>
    14b8:	000039b7          	lui	s3,0x3
    14bc:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14c0:	2505                	addiw	a0,a0,1
    14c2:	0ff57513          	andi	a0,a0,255
    14c6:	00aa02a3          	sb	a0,5(s4)
    14ca:	00a48b33          	add	s6,s1,a0
    14ce:	000b4403          	lbu	s0,0(s6)
    14d2:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14d6:	9c3d                	addw	s0,s0,a5
    14d8:	0ff47413          	andi	s0,s0,255
    14dc:	00898223          	sb	s0,4(s3)
    14e0:	4605                	li	a2,1
    14e2:	008485b3          	add	a1,s1,s0
    14e6:	855a                	mv	a0,s6
    14e8:	00000097          	auipc	ra,0x0
    14ec:	ede080e7          	jalr	-290(ra) # 13c6 <swap_bytes>
    14f0:	9426                	add	s0,s0,s1
    14f2:	000b4783          	lbu	a5,0(s6)
    14f6:	00044703          	lbu	a4,0(s0)
    14fa:	9fb9                	addw	a5,a5,a4
    14fc:	0ff7f793          	andi	a5,a5,255
    1500:	97a6                	add	a5,a5,s1
    1502:	0007c783          	lbu	a5,0(a5)
    1506:	00f90023          	sb	a5,0(s2)
    150a:	0905                	addi	s2,s2,1
    150c:	fb2a98e3          	bne	s5,s2,14bc <random_bytes+0x36>
    1510:	70e2                	ld	ra,56(sp)
    1512:	7442                	ld	s0,48(sp)
    1514:	74a2                	ld	s1,40(sp)
    1516:	7902                	ld	s2,32(sp)
    1518:	69e2                	ld	s3,24(sp)
    151a:	6a42                	ld	s4,16(sp)
    151c:	6aa2                	ld	s5,8(sp)
    151e:	6b02                	ld	s6,0(sp)
    1520:	6121                	addi	sp,sp,64
    1522:	8082                	ret
    1524:	4501                	li	a0,0
    1526:	00000097          	auipc	ra,0x0
    152a:	ec0080e7          	jalr	-320(ra) # 13e6 <random_init>
    152e:	bfa5                	j	14a6 <random_bytes+0x20>

0000000000001530 <random_ulong>:
    1530:	1101                	addi	sp,sp,-32
    1532:	ec06                	sd	ra,24(sp)
    1534:	45a1                	li	a1,8
    1536:	0028                	addi	a0,sp,8
    1538:	00000097          	auipc	ra,0x0
    153c:	f4e080e7          	jalr	-178(ra) # 1486 <random_bytes>
    1540:	6522                	ld	a0,8(sp)
    1542:	60e2                	ld	ra,24(sp)
    1544:	6105                	addi	sp,sp,32
    1546:	8082                	ret

0000000000001548 <shuffle>:
    1548:	c9b9                	beqz	a1,159e <shuffle+0x56>
    154a:	7179                	addi	sp,sp,-48
    154c:	f406                	sd	ra,40(sp)
    154e:	f022                	sd	s0,32(sp)
    1550:	ec26                	sd	s1,24(sp)
    1552:	e84a                	sd	s2,16(sp)
    1554:	e44e                	sd	s3,8(sp)
    1556:	e052                	sd	s4,0(sp)
    1558:	8a2a                	mv	s4,a0
    155a:	89ae                	mv	s3,a1
    155c:	84b2                	mv	s1,a2
    155e:	892a                	mv	s2,a0
    1560:	4401                	li	s0,0
    1562:	00000097          	auipc	ra,0x0
    1566:	fce080e7          	jalr	-50(ra) # 1530 <random_ulong>
    156a:	408985b3          	sub	a1,s3,s0
    156e:	02b575b3          	remu	a1,a0,a1
    1572:	95a2                	add	a1,a1,s0
    1574:	029585b3          	mul	a1,a1,s1
    1578:	8626                	mv	a2,s1
    157a:	95d2                	add	a1,a1,s4
    157c:	854a                	mv	a0,s2
    157e:	00000097          	auipc	ra,0x0
    1582:	e48080e7          	jalr	-440(ra) # 13c6 <swap_bytes>
    1586:	0405                	addi	s0,s0,1
    1588:	9926                	add	s2,s2,s1
    158a:	fc899ce3          	bne	s3,s0,1562 <shuffle+0x1a>
    158e:	70a2                	ld	ra,40(sp)
    1590:	7402                	ld	s0,32(sp)
    1592:	64e2                	ld	s1,24(sp)
    1594:	6942                	ld	s2,16(sp)
    1596:	69a2                	ld	s3,8(sp)
    1598:	6a02                	ld	s4,0(sp)
    159a:	6145                	addi	sp,sp,48
    159c:	8082                	ret
    159e:	8082                	ret

00000000000015a0 <arc4_init>:
    15a0:	100500a3          	sb	zero,257(a0)
    15a4:	10050023          	sb	zero,256(a0)
    15a8:	4781                	li	a5,0
    15aa:	10000693          	li	a3,256
    15ae:	00f50733          	add	a4,a0,a5
    15b2:	00f70023          	sb	a5,0(a4)
    15b6:	0785                	addi	a5,a5,1
    15b8:	fed79be3          	bne	a5,a3,15ae <arc4_init+0xe>
    15bc:	86aa                	mv	a3,a0
    15be:	10050e13          	addi	t3,a0,256
    15c2:	4701                	li	a4,0
    15c4:	4781                	li	a5,0
    15c6:	0006c883          	lbu	a7,0(a3)
    15ca:	00f58833          	add	a6,a1,a5
    15ce:	00084803          	lbu	a6,0(a6)
    15d2:	00e8873b          	addw	a4,a7,a4
    15d6:	00e8073b          	addw	a4,a6,a4
    15da:	0ff77713          	andi	a4,a4,255
    15de:	00e50833          	add	a6,a0,a4
    15e2:	00084303          	lbu	t1,0(a6)
    15e6:	00668023          	sb	t1,0(a3)
    15ea:	01180023          	sb	a7,0(a6)
    15ee:	0785                	addi	a5,a5,1
    15f0:	00c7b833          	sltu	a6,a5,a2
    15f4:	41000833          	neg	a6,a6
    15f8:	0107f7b3          	and	a5,a5,a6
    15fc:	0685                	addi	a3,a3,1
    15fe:	fdc694e3          	bne	a3,t3,15c6 <arc4_init+0x26>
    1602:	8082                	ret

0000000000001604 <arc4_crypt>:
    1604:	10054e03          	lbu	t3,256(a0)
    1608:	10154803          	lbu	a6,257(a0)
    160c:	fff60e93          	addi	t4,a2,-1
    1610:	c225                	beqz	a2,1670 <arc4_crypt+0x6c>
    1612:	00c588b3          	add	a7,a1,a2
    1616:	86ae                	mv	a3,a1
    1618:	001e031b          	addiw	t1,t3,1
    161c:	40b3033b          	subw	t1,t1,a1
    1620:	00d3073b          	addw	a4,t1,a3
    1624:	0ff77713          	andi	a4,a4,255
    1628:	972a                	add	a4,a4,a0
    162a:	00074603          	lbu	a2,0(a4)
    162e:	0106083b          	addw	a6,a2,a6
    1632:	0ff87813          	andi	a6,a6,255
    1636:	010507b3          	add	a5,a0,a6
    163a:	0007c583          	lbu	a1,0(a5)
    163e:	00b70023          	sb	a1,0(a4)
    1642:	00c78023          	sb	a2,0(a5)
    1646:	0685                	addi	a3,a3,1
    1648:	00074783          	lbu	a5,0(a4)
    164c:	9fb1                	addw	a5,a5,a2
    164e:	0ff7f793          	andi	a5,a5,255
    1652:	97aa                	add	a5,a5,a0
    1654:	0007c783          	lbu	a5,0(a5)
    1658:	fff6c703          	lbu	a4,-1(a3)
    165c:	8fb9                	xor	a5,a5,a4
    165e:	fef68fa3          	sb	a5,-1(a3)
    1662:	fb169fe3          	bne	a3,a7,1620 <arc4_crypt+0x1c>
    1666:	2e85                	addiw	t4,t4,1
    1668:	01ce8e3b          	addw	t3,t4,t3
    166c:	0ffe7e13          	andi	t3,t3,255
    1670:	11c50023          	sb	t3,256(a0)
    1674:	110500a3          	sb	a6,257(a0)
    1678:	8082                	ret

000000000000167a <_main>:
    167a:	1141                	addi	sp,sp,-16
    167c:	e406                	sd	ra,8(sp)
    167e:	00000097          	auipc	ra,0x0
    1682:	982080e7          	jalr	-1662(ra) # 1000 <main>
    1686:	4501                	li	a0,0
    1688:	00000097          	auipc	ra,0x0
    168c:	578080e7          	jalr	1400(ra) # 1c00 <exit>
    1690:	60a2                	ld	ra,8(sp)
    1692:	0141                	addi	sp,sp,16
    1694:	8082                	ret

0000000000001696 <strcmp>:
    1696:	00054783          	lbu	a5,0(a0)
    169a:	cb91                	beqz	a5,16ae <strcmp+0x18>
    169c:	0005c703          	lbu	a4,0(a1)
    16a0:	00f71763          	bne	a4,a5,16ae <strcmp+0x18>
    16a4:	0505                	addi	a0,a0,1
    16a6:	0585                	addi	a1,a1,1
    16a8:	00054783          	lbu	a5,0(a0)
    16ac:	fbe5                	bnez	a5,169c <strcmp+0x6>
    16ae:	0005c503          	lbu	a0,0(a1)
    16b2:	40a7853b          	subw	a0,a5,a0
    16b6:	8082                	ret

00000000000016b8 <strcpy>:
    16b8:	87aa                	mv	a5,a0
    16ba:	0585                	addi	a1,a1,1
    16bc:	0785                	addi	a5,a5,1
    16be:	fff5c703          	lbu	a4,-1(a1)
    16c2:	fee78fa3          	sb	a4,-1(a5)
    16c6:	fb75                	bnez	a4,16ba <strcpy+0x2>
    16c8:	8082                	ret

00000000000016ca <strlen>:
    16ca:	00054783          	lbu	a5,0(a0)
    16ce:	cf81                	beqz	a5,16e6 <strlen+0x1c>
    16d0:	0505                	addi	a0,a0,1
    16d2:	87aa                	mv	a5,a0
    16d4:	4685                	li	a3,1
    16d6:	9e89                	subw	a3,a3,a0
    16d8:	00f6853b          	addw	a0,a3,a5
    16dc:	0785                	addi	a5,a5,1
    16de:	fff7c703          	lbu	a4,-1(a5)
    16e2:	fb7d                	bnez	a4,16d8 <strlen+0xe>
    16e4:	8082                	ret
    16e6:	4501                	li	a0,0
    16e8:	8082                	ret

00000000000016ea <memset>:
    16ea:	ca19                	beqz	a2,1700 <memset+0x16>
    16ec:	87aa                	mv	a5,a0
    16ee:	1602                	slli	a2,a2,0x20
    16f0:	9201                	srli	a2,a2,0x20
    16f2:	00a60733          	add	a4,a2,a0
    16f6:	00b78023          	sb	a1,0(a5)
    16fa:	0785                	addi	a5,a5,1
    16fc:	fee79de3          	bne	a5,a4,16f6 <memset+0xc>
    1700:	8082                	ret

0000000000001702 <memcmp>:
    1702:	1101                	addi	sp,sp,-32
    1704:	ec06                	sd	ra,24(sp)
    1706:	e822                	sd	s0,16(sp)
    1708:	e426                	sd	s1,8(sp)
    170a:	e04a                	sd	s2,0(sp)
    170c:	892a                	mv	s2,a0
    170e:	842e                	mv	s0,a1
    1710:	84b2                	mv	s1,a2
    1712:	c915                	beqz	a0,1746 <memcmp+0x44>
    1714:	c5ad                	beqz	a1,177e <memcmp+0x7c>
    1716:	fff60713          	addi	a4,a2,-1
    171a:	c645                	beqz	a2,17c2 <memcmp+0xc0>
    171c:	87ca                	mv	a5,s2
    171e:	00190613          	addi	a2,s2,1
    1722:	963a                	add	a2,a2,a4
    1724:	0007c683          	lbu	a3,0(a5)
    1728:	00044703          	lbu	a4,0(s0)
    172c:	08e69463          	bne	a3,a4,17b4 <memcmp+0xb2>
    1730:	0785                	addi	a5,a5,1
    1732:	0405                	addi	s0,s0,1
    1734:	fec798e3          	bne	a5,a2,1724 <memcmp+0x22>
    1738:	4501                	li	a0,0
    173a:	60e2                	ld	ra,24(sp)
    173c:	6442                	ld	s0,16(sp)
    173e:	64a2                	ld	s1,8(sp)
    1740:	6902                	ld	s2,0(sp)
    1742:	6105                	addi	sp,sp,32
    1744:	8082                	ret
    1746:	4501                	li	a0,0
    1748:	da6d                	beqz	a2,173a <memcmp+0x38>
    174a:	03200693          	li	a3,50
    174e:	00002637          	lui	a2,0x2
    1752:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    1756:	000025b7          	lui	a1,0x2
    175a:	19858593          	addi	a1,a1,408 # 2198 <crctab+0x410>
    175e:	4509                	li	a0,2
    1760:	00000097          	auipc	ra,0x0
    1764:	bbc080e7          	jalr	-1092(ra) # 131c <fprintf>
    1768:	650d                	lui	a0,0x3
    176a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    176e:	00000097          	auipc	ra,0x0
    1772:	492080e7          	jalr	1170(ra) # 1c00 <exit>
    1776:	fff48713          	addi	a4,s1,-1
    177a:	f04d                	bnez	s0,171c <memcmp+0x1a>
    177c:	a011                	j	1780 <memcmp+0x7e>
    177e:	c221                	beqz	a2,17be <memcmp+0xbc>
    1780:	03300693          	li	a3,51
    1784:	00002637          	lui	a2,0x2
    1788:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    178c:	000025b7          	lui	a1,0x2
    1790:	1e058593          	addi	a1,a1,480 # 21e0 <crctab+0x458>
    1794:	4509                	li	a0,2
    1796:	00000097          	auipc	ra,0x0
    179a:	b86080e7          	jalr	-1146(ra) # 131c <fprintf>
    179e:	650d                	lui	a0,0x3
    17a0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17a4:	00000097          	auipc	ra,0x0
    17a8:	45c080e7          	jalr	1116(ra) # 1c00 <exit>
    17ac:	fff48713          	addi	a4,s1,-1
    17b0:	4401                	li	s0,0
    17b2:	b7ad                	j	171c <memcmp+0x1a>
    17b4:	4505                	li	a0,1
    17b6:	f8d762e3          	bltu	a4,a3,173a <memcmp+0x38>
    17ba:	557d                	li	a0,-1
    17bc:	bfbd                	j	173a <memcmp+0x38>
    17be:	4501                	li	a0,0
    17c0:	bfad                	j	173a <memcmp+0x38>
    17c2:	4501                	li	a0,0
    17c4:	bf9d                	j	173a <memcmp+0x38>

00000000000017c6 <memcpy>:
    17c6:	1101                	addi	sp,sp,-32
    17c8:	ec06                	sd	ra,24(sp)
    17ca:	e822                	sd	s0,16(sp)
    17cc:	e426                	sd	s1,8(sp)
    17ce:	e04a                	sd	s2,0(sp)
    17d0:	84aa                	mv	s1,a0
    17d2:	842e                	mv	s0,a1
    17d4:	8932                	mv	s2,a2
    17d6:	c51d                	beqz	a0,1804 <memcpy+0x3e>
    17d8:	c1ad                	beqz	a1,183a <memcpy+0x74>
    17da:	fff60693          	addi	a3,a2,-1
    17de:	ce01                	beqz	a2,17f6 <memcpy+0x30>
    17e0:	0685                	addi	a3,a3,1
    17e2:	96a6                	add	a3,a3,s1
    17e4:	87a6                	mv	a5,s1
    17e6:	0405                	addi	s0,s0,1
    17e8:	0785                	addi	a5,a5,1
    17ea:	fff44703          	lbu	a4,-1(s0)
    17ee:	fee78fa3          	sb	a4,-1(a5)
    17f2:	fed79ae3          	bne	a5,a3,17e6 <memcpy+0x20>
    17f6:	8526                	mv	a0,s1
    17f8:	60e2                	ld	ra,24(sp)
    17fa:	6442                	ld	s0,16(sp)
    17fc:	64a2                	ld	s1,8(sp)
    17fe:	6902                	ld	s2,0(sp)
    1800:	6105                	addi	sp,sp,32
    1802:	8082                	ret
    1804:	da6d                	beqz	a2,17f6 <memcpy+0x30>
    1806:	04000693          	li	a3,64
    180a:	00002637          	lui	a2,0x2
    180e:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    1812:	000025b7          	lui	a1,0x2
    1816:	22858593          	addi	a1,a1,552 # 2228 <crctab+0x4a0>
    181a:	4509                	li	a0,2
    181c:	00000097          	auipc	ra,0x0
    1820:	b00080e7          	jalr	-1280(ra) # 131c <fprintf>
    1824:	650d                	lui	a0,0x3
    1826:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    182a:	00000097          	auipc	ra,0x0
    182e:	3d6080e7          	jalr	982(ra) # 1c00 <exit>
    1832:	fff90693          	addi	a3,s2,-1
    1836:	f44d                	bnez	s0,17e0 <memcpy+0x1a>
    1838:	a011                	j	183c <memcpy+0x76>
    183a:	de55                	beqz	a2,17f6 <memcpy+0x30>
    183c:	04100693          	li	a3,65
    1840:	00002637          	lui	a2,0x2
    1844:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    1848:	000025b7          	lui	a1,0x2
    184c:	27058593          	addi	a1,a1,624 # 2270 <crctab+0x4e8>
    1850:	4509                	li	a0,2
    1852:	00000097          	auipc	ra,0x0
    1856:	aca080e7          	jalr	-1334(ra) # 131c <fprintf>
    185a:	650d                	lui	a0,0x3
    185c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1860:	00000097          	auipc	ra,0x0
    1864:	3a0080e7          	jalr	928(ra) # 1c00 <exit>
    1868:	fff90693          	addi	a3,s2,-1
    186c:	4401                	li	s0,0
    186e:	bf8d                	j	17e0 <memcpy+0x1a>

0000000000001870 <itoa>:
    1870:	1101                	addi	sp,sp,-32
    1872:	ec06                	sd	ra,24(sp)
    1874:	e822                	sd	s0,16(sp)
    1876:	e426                	sd	s1,8(sp)
    1878:	842a                	mv	s0,a0
    187a:	41f5d71b          	sraiw	a4,a1,0x1f
    187e:	00e5c7b3          	xor	a5,a1,a4
    1882:	9f99                	subw	a5,a5,a4
    1884:	84aa                	mv	s1,a0
    1886:	862a                	mv	a2,a0
    1888:	4681                	li	a3,0
    188a:	4529                	li	a0,10
    188c:	4825                	li	a6,9
    188e:	88b6                	mv	a7,a3
    1890:	2685                	addiw	a3,a3,1
    1892:	02a7e73b          	remw	a4,a5,a0
    1896:	0307071b          	addiw	a4,a4,48
    189a:	00e60023          	sb	a4,0(a2)
    189e:	873e                	mv	a4,a5
    18a0:	02a7c7bb          	divw	a5,a5,a0
    18a4:	0605                	addi	a2,a2,1
    18a6:	fee844e3          	blt	a6,a4,188e <itoa+0x1e>
    18aa:	0405c863          	bltz	a1,18fa <itoa+0x8a>
    18ae:	96a2                	add	a3,a3,s0
    18b0:	00068023          	sb	zero,0(a3)
    18b4:	8522                	mv	a0,s0
    18b6:	00000097          	auipc	ra,0x0
    18ba:	e14080e7          	jalr	-492(ra) # 16ca <strlen>
    18be:	fff5071b          	addiw	a4,a0,-1
    18c2:	02e05763          	blez	a4,18f0 <itoa+0x80>
    18c6:	9722                	add	a4,a4,s0
    18c8:	4681                	li	a3,0
    18ca:	0004c783          	lbu	a5,0(s1)
    18ce:	00074603          	lbu	a2,0(a4)
    18d2:	00c48023          	sb	a2,0(s1)
    18d6:	00f70023          	sb	a5,0(a4)
    18da:	0016879b          	addiw	a5,a3,1
    18de:	0007869b          	sext.w	a3,a5
    18e2:	0485                	addi	s1,s1,1
    18e4:	177d                	addi	a4,a4,-1
    18e6:	fff7c793          	not	a5,a5
    18ea:	9fa9                	addw	a5,a5,a0
    18ec:	fcf6cfe3          	blt	a3,a5,18ca <itoa+0x5a>
    18f0:	60e2                	ld	ra,24(sp)
    18f2:	6442                	ld	s0,16(sp)
    18f4:	64a2                	ld	s1,8(sp)
    18f6:	6105                	addi	sp,sp,32
    18f8:	8082                	ret
    18fa:	96a2                	add	a3,a3,s0
    18fc:	02d00793          	li	a5,45
    1900:	00f68023          	sb	a5,0(a3)
    1904:	0028869b          	addiw	a3,a7,2
    1908:	b75d                	j	18ae <itoa+0x3e>

000000000000190a <atoi>:
    190a:	00054783          	lbu	a5,0(a0)
    190e:	02000713          	li	a4,32
    1912:	00e79763          	bne	a5,a4,1920 <atoi+0x16>
    1916:	0505                	addi	a0,a0,1
    1918:	00054783          	lbu	a5,0(a0)
    191c:	fee78de3          	beq	a5,a4,1916 <atoi+0xc>
    1920:	02b00713          	li	a4,43
    1924:	04e78663          	beq	a5,a4,1970 <atoi+0x66>
    1928:	02d00713          	li	a4,45
    192c:	4805                	li	a6,1
    192e:	04e78463          	beq	a5,a4,1976 <atoi+0x6c>
    1932:	00054683          	lbu	a3,0(a0)
    1936:	fd06879b          	addiw	a5,a3,-48
    193a:	0ff7f793          	andi	a5,a5,255
    193e:	4725                	li	a4,9
    1940:	02f76e63          	bltu	a4,a5,197c <atoi+0x72>
    1944:	4601                	li	a2,0
    1946:	45a5                	li	a1,9
    1948:	0505                	addi	a0,a0,1
    194a:	0026179b          	slliw	a5,a2,0x2
    194e:	9fb1                	addw	a5,a5,a2
    1950:	0017979b          	slliw	a5,a5,0x1
    1954:	9fb5                	addw	a5,a5,a3
    1956:	fd07861b          	addiw	a2,a5,-48
    195a:	00054683          	lbu	a3,0(a0)
    195e:	fd06871b          	addiw	a4,a3,-48
    1962:	0ff77713          	andi	a4,a4,255
    1966:	fee5f1e3          	bgeu	a1,a4,1948 <atoi+0x3e>
    196a:	02c8053b          	mulw	a0,a6,a2
    196e:	8082                	ret
    1970:	0505                	addi	a0,a0,1
    1972:	4805                	li	a6,1
    1974:	bf7d                	j	1932 <atoi+0x28>
    1976:	0505                	addi	a0,a0,1
    1978:	587d                	li	a6,-1
    197a:	bf65                	j	1932 <atoi+0x28>
    197c:	4601                	li	a2,0
    197e:	b7f5                	j	196a <atoi+0x60>

0000000000001980 <check_file_handle>:
    1980:	d8010113          	addi	sp,sp,-640
    1984:	26113c23          	sd	ra,632(sp)
    1988:	26813823          	sd	s0,624(sp)
    198c:	26913423          	sd	s1,616(sp)
    1990:	27213023          	sd	s2,608(sp)
    1994:	25313c23          	sd	s3,600(sp)
    1998:	25413823          	sd	s4,592(sp)
    199c:	25513423          	sd	s5,584(sp)
    19a0:	25613023          	sd	s6,576(sp)
    19a4:	23713c23          	sd	s7,568(sp)
    19a8:	23813823          	sd	s8,560(sp)
    19ac:	23913423          	sd	s9,552(sp)
    19b0:	23a13023          	sd	s10,544(sp)
    19b4:	21b13c23          	sd	s11,536(sp)
    19b8:	8baa                	mv	s7,a0
    19ba:	8a2e                	mv	s4,a1
    19bc:	8c32                	mv	s8,a2
    19be:	89b6                	mv	s3,a3
    19c0:	040c                	addi	a1,sp,512
    19c2:	00000097          	auipc	ra,0x0
    19c6:	28e080e7          	jalr	654(ra) # 1c50 <fstat>
    19ca:	20813603          	ld	a2,520(sp)
    19ce:	03361163          	bne	a2,s3,19f0 <check_file_handle+0x70>
    19d2:	06098763          	beqz	s3,1a40 <check_file_handle+0xc0>
    19d6:	4901                	li	s2,0
    19d8:	20000a93          	li	s5,512
    19dc:	00002cb7          	lui	s9,0x2
    19e0:	00002db7          	lui	s11,0x2
    19e4:	6b0d                	lui	s6,0x3
    19e6:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19ea:	00002d37          	lui	s10,0x2
    19ee:	aa39                	j	1b0c <check_file_handle+0x18c>
    19f0:	86ce                	mv	a3,s3
    19f2:	85d2                	mv	a1,s4
    19f4:	00002537          	lui	a0,0x2
    19f8:	2b850513          	addi	a0,a0,696 # 22b8 <crctab+0x530>
    19fc:	00000097          	auipc	ra,0x0
    1a00:	942080e7          	jalr	-1726(ra) # 133e <printf>
    1a04:	fc0999e3          	bnez	s3,19d6 <check_file_handle+0x56>
    1a08:	20813683          	ld	a3,520(sp)
    1a0c:	03368a63          	beq	a3,s3,1a40 <check_file_handle+0xc0>
    1a10:	0a600813          	li	a6,166
    1a14:	000027b7          	lui	a5,0x2
    1a18:	18878793          	addi	a5,a5,392 # 2188 <crctab+0x400>
    1a1c:	874e                	mv	a4,s3
    1a1e:	8652                	mv	a2,s4
    1a20:	000025b7          	lui	a1,0x2
    1a24:	38858593          	addi	a1,a1,904 # 2388 <crctab+0x600>
    1a28:	4509                	li	a0,2
    1a2a:	00000097          	auipc	ra,0x0
    1a2e:	8f2080e7          	jalr	-1806(ra) # 131c <fprintf>
    1a32:	650d                	lui	a0,0x3
    1a34:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a38:	00000097          	auipc	ra,0x0
    1a3c:	1c8080e7          	jalr	456(ra) # 1c00 <exit>
    1a40:	85d2                	mv	a1,s4
    1a42:	00002537          	lui	a0,0x2
    1a46:	3d050513          	addi	a0,a0,976 # 23d0 <crctab+0x648>
    1a4a:	00000097          	auipc	ra,0x0
    1a4e:	8f4080e7          	jalr	-1804(ra) # 133e <printf>
    1a52:	27813083          	ld	ra,632(sp)
    1a56:	27013403          	ld	s0,624(sp)
    1a5a:	26813483          	ld	s1,616(sp)
    1a5e:	26013903          	ld	s2,608(sp)
    1a62:	25813983          	ld	s3,600(sp)
    1a66:	25013a03          	ld	s4,592(sp)
    1a6a:	24813a83          	ld	s5,584(sp)
    1a6e:	24013b03          	ld	s6,576(sp)
    1a72:	23813b83          	ld	s7,568(sp)
    1a76:	23013c03          	ld	s8,560(sp)
    1a7a:	22813c83          	ld	s9,552(sp)
    1a7e:	22013d03          	ld	s10,544(sp)
    1a82:	21813d83          	ld	s11,536(sp)
    1a86:	28010113          	addi	sp,sp,640
    1a8a:	8082                	ret
    1a8c:	09d00893          	li	a7,157
    1a90:	188c8813          	addi	a6,s9,392 # 2188 <crctab+0x400>
    1a94:	87aa                	mv	a5,a0
    1a96:	8752                	mv	a4,s4
    1a98:	86ca                	mv	a3,s2
    1a9a:	8622                	mv	a2,s0
    1a9c:	2e8d8593          	addi	a1,s11,744 # 22e8 <crctab+0x560>
    1aa0:	4509                	li	a0,2
    1aa2:	00000097          	auipc	ra,0x0
    1aa6:	87a080e7          	jalr	-1926(ra) # 131c <fprintf>
    1aaa:	855a                	mv	a0,s6
    1aac:	00000097          	auipc	ra,0x0
    1ab0:	154080e7          	jalr	340(ra) # 1c00 <exit>
    1ab4:	a89d                	j	1b2a <check_file_handle+0x1aa>
    1ab6:	00160593          	addi	a1,a2,1
    1aba:	0285f163          	bgeu	a1,s0,1adc <check_file_handle+0x15c>
    1abe:	00c10733          	add	a4,sp,a2
    1ac2:	00b487b3          	add	a5,s1,a1
    1ac6:	00174683          	lbu	a3,1(a4)
    1aca:	0007c783          	lbu	a5,0(a5)
    1ace:	00f68763          	beq	a3,a5,1adc <check_file_handle+0x15c>
    1ad2:	0585                	addi	a1,a1,1
    1ad4:	0705                	addi	a4,a4,1
    1ad6:	feb416e3          	bne	s0,a1,1ac2 <check_file_handle+0x142>
    1ada:	85a2                	mv	a1,s0
    1adc:	08100813          	li	a6,129
    1ae0:	188c8793          	addi	a5,s9,392
    1ae4:	8752                	mv	a4,s4
    1ae6:	012606b3          	add	a3,a2,s2
    1aea:	40c58633          	sub	a2,a1,a2
    1aee:	330d0593          	addi	a1,s10,816 # 2330 <crctab+0x5a8>
    1af2:	4509                	li	a0,2
    1af4:	00000097          	auipc	ra,0x0
    1af8:	828080e7          	jalr	-2008(ra) # 131c <fprintf>
    1afc:	855a                	mv	a0,s6
    1afe:	00000097          	auipc	ra,0x0
    1b02:	102080e7          	jalr	258(ra) # 1c00 <exit>
    1b06:	9922                	add	s2,s2,s0
    1b08:	f13970e3          	bgeu	s2,s3,1a08 <check_file_handle+0x88>
    1b0c:	41298433          	sub	s0,s3,s2
    1b10:	008af363          	bgeu	s5,s0,1b16 <check_file_handle+0x196>
    1b14:	8456                	mv	s0,s5
    1b16:	0004061b          	sext.w	a2,s0
    1b1a:	858a                	mv	a1,sp
    1b1c:	855e                	mv	a0,s7
    1b1e:	00000097          	auipc	ra,0x0
    1b22:	10a080e7          	jalr	266(ra) # 1c28 <read>
    1b26:	f68513e3          	bne	a0,s0,1a8c <check_file_handle+0x10c>
    1b2a:	012c04b3          	add	s1,s8,s2
    1b2e:	8622                	mv	a2,s0
    1b30:	85a6                	mv	a1,s1
    1b32:	850a                	mv	a0,sp
    1b34:	00000097          	auipc	ra,0x0
    1b38:	bce080e7          	jalr	-1074(ra) # 1702 <memcmp>
    1b3c:	d569                	beqz	a0,1b06 <check_file_handle+0x186>
    1b3e:	03298163          	beq	s3,s2,1b60 <check_file_handle+0x1e0>
    1b42:	870a                	mv	a4,sp
    1b44:	4601                	li	a2,0
    1b46:	00c487b3          	add	a5,s1,a2
    1b4a:	00074683          	lbu	a3,0(a4)
    1b4e:	0007c783          	lbu	a5,0(a5)
    1b52:	f6f692e3          	bne	a3,a5,1ab6 <check_file_handle+0x136>
    1b56:	0605                	addi	a2,a2,1
    1b58:	0705                	addi	a4,a4,1
    1b5a:	fe8666e3          	bltu	a2,s0,1b46 <check_file_handle+0x1c6>
    1b5e:	bfa1                	j	1ab6 <check_file_handle+0x136>
    1b60:	4601                	li	a2,0
    1b62:	4585                	li	a1,1
    1b64:	bfa5                	j	1adc <check_file_handle+0x15c>

0000000000001b66 <check_file>:
    1b66:	7179                	addi	sp,sp,-48
    1b68:	f406                	sd	ra,40(sp)
    1b6a:	f022                	sd	s0,32(sp)
    1b6c:	ec26                	sd	s1,24(sp)
    1b6e:	e84a                	sd	s2,16(sp)
    1b70:	e44e                	sd	s3,8(sp)
    1b72:	84aa                	mv	s1,a0
    1b74:	892e                	mv	s2,a1
    1b76:	89b2                	mv	s3,a2
    1b78:	4581                	li	a1,0
    1b7a:	00000097          	auipc	ra,0x0
    1b7e:	0a6080e7          	jalr	166(ra) # 1c20 <open>
    1b82:	842a                	mv	s0,a0
    1b84:	4789                	li	a5,2
    1b86:	02a7df63          	bge	a5,a0,1bc4 <check_file+0x5e>
    1b8a:	86ce                	mv	a3,s3
    1b8c:	864a                	mv	a2,s2
    1b8e:	85a6                	mv	a1,s1
    1b90:	8522                	mv	a0,s0
    1b92:	00000097          	auipc	ra,0x0
    1b96:	dee080e7          	jalr	-530(ra) # 1980 <check_file_handle>
    1b9a:	85a6                	mv	a1,s1
    1b9c:	00002537          	lui	a0,0x2
    1ba0:	45850513          	addi	a0,a0,1112 # 2458 <crctab+0x6d0>
    1ba4:	fffff097          	auipc	ra,0xfffff
    1ba8:	79a080e7          	jalr	1946(ra) # 133e <printf>
    1bac:	8522                	mv	a0,s0
    1bae:	00000097          	auipc	ra,0x0
    1bb2:	09a080e7          	jalr	154(ra) # 1c48 <close>
    1bb6:	70a2                	ld	ra,40(sp)
    1bb8:	7402                	ld	s0,32(sp)
    1bba:	64e2                	ld	s1,24(sp)
    1bbc:	6942                	ld	s2,16(sp)
    1bbe:	69a2                	ld	s3,8(sp)
    1bc0:	6145                	addi	sp,sp,48
    1bc2:	8082                	ret
    1bc4:	0ae00713          	li	a4,174
    1bc8:	000026b7          	lui	a3,0x2
    1bcc:	18868693          	addi	a3,a3,392 # 2188 <crctab+0x400>
    1bd0:	8626                	mv	a2,s1
    1bd2:	000025b7          	lui	a1,0x2
    1bd6:	3f058593          	addi	a1,a1,1008 # 23f0 <crctab+0x668>
    1bda:	4509                	li	a0,2
    1bdc:	fffff097          	auipc	ra,0xfffff
    1be0:	740080e7          	jalr	1856(ra) # 131c <fprintf>
    1be4:	650d                	lui	a0,0x3
    1be6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bea:	00000097          	auipc	ra,0x0
    1bee:	016080e7          	jalr	22(ra) # 1c00 <exit>
    1bf2:	bf61                	j	1b8a <check_file+0x24>

0000000000001bf4 <r_sp>:
    1bf4:	850a                	mv	a0,sp
    1bf6:	8082                	ret

0000000000001bf8 <halt>:
    1bf8:	4885                	li	a7,1
    1bfa:	00000073          	ecall
    1bfe:	8082                	ret

0000000000001c00 <exit>:
    1c00:	4889                	li	a7,2
    1c02:	00000073          	ecall
    1c06:	8082                	ret

0000000000001c08 <exec>:
    1c08:	488d                	li	a7,3
    1c0a:	00000073          	ecall
    1c0e:	8082                	ret

0000000000001c10 <wait>:
    1c10:	4891                	li	a7,4
    1c12:	00000073          	ecall
    1c16:	8082                	ret

0000000000001c18 <remove>:
    1c18:	4895                	li	a7,5
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret

0000000000001c20 <open>:
    1c20:	4899                	li	a7,6
    1c22:	00000073          	ecall
    1c26:	8082                	ret

0000000000001c28 <read>:
    1c28:	489d                	li	a7,7
    1c2a:	00000073          	ecall
    1c2e:	8082                	ret

0000000000001c30 <write>:
    1c30:	48a1                	li	a7,8
    1c32:	00000073          	ecall
    1c36:	8082                	ret

0000000000001c38 <seek>:
    1c38:	48a5                	li	a7,9
    1c3a:	00000073          	ecall
    1c3e:	8082                	ret

0000000000001c40 <tell>:
    1c40:	48a9                	li	a7,10
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <close>:
    1c48:	48ad                	li	a7,11
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret

0000000000001c50 <fstat>:
    1c50:	48b1                	li	a7,12
    1c52:	00000073          	ecall
    1c56:	8082                	ret

0000000000001c58 <mmap>:
    1c58:	48b5                	li	a7,13
    1c5a:	00000073          	ecall
    1c5e:	8082                	ret

0000000000001c60 <munmap>:
    1c60:	48b9                	li	a7,14
    1c62:	00000073          	ecall
    1c66:	8082                	ret

0000000000001c68 <chdir>:
    1c68:	48bd                	li	a7,15
    1c6a:	00000073          	ecall
    1c6e:	8082                	ret

0000000000001c70 <mkdir>:
    1c70:	48c1                	li	a7,16
    1c72:	00000073          	ecall
    1c76:	8082                	ret
