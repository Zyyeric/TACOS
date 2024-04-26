
build/user/vm/mmap-misalign:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	e022                	sd	s0,0(sp)
    1006:	4581                	li	a1,0
    1008:	00002537          	lui	a0,0x2
    100c:	c8050513          	addi	a0,a0,-896 # 1c80 <mkdir+0xa>
    1010:	00001097          	auipc	ra,0x1
    1014:	c16080e7          	jalr	-1002(ra) # 1c26 <open>
    1018:	842a                	mv	s0,a0
    101a:	4789                	li	a5,2
    101c:	02a7d263          	bge	a5,a0,1040 <main+0x40>
    1020:	100015b7          	lui	a1,0x10001
    1024:	23458593          	addi	a1,a1,564 # 10001234 <s+0xfffe224>
    1028:	8522                	mv	a0,s0
    102a:	00001097          	auipc	ra,0x1
    102e:	c34080e7          	jalr	-972(ra) # 1c5e <mmap>
    1032:	57fd                	li	a5,-1
    1034:	02f51c63          	bne	a0,a5,106c <main+0x6c>
    1038:	60a2                	ld	ra,8(sp)
    103a:	6402                	ld	s0,0(sp)
    103c:	0141                	addi	sp,sp,16
    103e:	8082                	ret
    1040:	46a1                	li	a3,8
    1042:	00002637          	lui	a2,0x2
    1046:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x1a>
    104a:	000025b7          	lui	a1,0x2
    104e:	ca858593          	addi	a1,a1,-856 # 1ca8 <mkdir+0x32>
    1052:	4509                	li	a0,2
    1054:	00000097          	auipc	ra,0x0
    1058:	2ce080e7          	jalr	718(ra) # 1322 <fprintf>
    105c:	650d                	lui	a0,0x3
    105e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1062:	00001097          	auipc	ra,0x1
    1066:	ba4080e7          	jalr	-1116(ra) # 1c06 <exit>
    106a:	bf5d                	j	1020 <main+0x20>
    106c:	46a5                	li	a3,9
    106e:	00002637          	lui	a2,0x2
    1072:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x1a>
    1076:	000025b7          	lui	a1,0x2
    107a:	d0858593          	addi	a1,a1,-760 # 1d08 <mkdir+0x92>
    107e:	4509                	li	a0,2
    1080:	00000097          	auipc	ra,0x0
    1084:	2a2080e7          	jalr	674(ra) # 1322 <fprintf>
    1088:	650d                	lui	a0,0x3
    108a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    108e:	00001097          	auipc	ra,0x1
    1092:	b78080e7          	jalr	-1160(ra) # 1c06 <exit>
    1096:	b74d                	j	1038 <main+0x38>

0000000000001098 <putc>:
    1098:	1101                	addi	sp,sp,-32
    109a:	ec06                	sd	ra,24(sp)
    109c:	00b107a3          	sb	a1,15(sp)
    10a0:	4605                	li	a2,1
    10a2:	00f10593          	addi	a1,sp,15
    10a6:	00001097          	auipc	ra,0x1
    10aa:	b90080e7          	jalr	-1136(ra) # 1c36 <write>
    10ae:	60e2                	ld	ra,24(sp)
    10b0:	6105                	addi	sp,sp,32
    10b2:	8082                	ret

00000000000010b4 <printint>:
    10b4:	7179                	addi	sp,sp,-48
    10b6:	f406                	sd	ra,40(sp)
    10b8:	f022                	sd	s0,32(sp)
    10ba:	ec26                	sd	s1,24(sp)
    10bc:	e84a                	sd	s2,16(sp)
    10be:	84aa                	mv	s1,a0
    10c0:	c299                	beqz	a3,10c6 <printint+0x12>
    10c2:	0805c363          	bltz	a1,1148 <printint+0x94>
    10c6:	2581                	sext.w	a1,a1
    10c8:	4881                	li	a7,0
    10ca:	868a                	mv	a3,sp
    10cc:	4701                	li	a4,0
    10ce:	2601                	sext.w	a2,a2
    10d0:	00002537          	lui	a0,0x2
    10d4:	d8850513          	addi	a0,a0,-632 # 1d88 <digits>
    10d8:	883a                	mv	a6,a4
    10da:	2705                	addiw	a4,a4,1
    10dc:	02c5f7bb          	remuw	a5,a1,a2
    10e0:	1782                	slli	a5,a5,0x20
    10e2:	9381                	srli	a5,a5,0x20
    10e4:	97aa                	add	a5,a5,a0
    10e6:	0007c783          	lbu	a5,0(a5)
    10ea:	00f68023          	sb	a5,0(a3)
    10ee:	0005879b          	sext.w	a5,a1
    10f2:	02c5d5bb          	divuw	a1,a1,a2
    10f6:	0685                	addi	a3,a3,1
    10f8:	fec7f0e3          	bgeu	a5,a2,10d8 <printint+0x24>
    10fc:	00088a63          	beqz	a7,1110 <printint+0x5c>
    1100:	081c                	addi	a5,sp,16
    1102:	973e                	add	a4,a4,a5
    1104:	02d00793          	li	a5,45
    1108:	fef70823          	sb	a5,-16(a4)
    110c:	0028071b          	addiw	a4,a6,2
    1110:	02e05663          	blez	a4,113c <printint+0x88>
    1114:	00e10433          	add	s0,sp,a4
    1118:	fff10913          	addi	s2,sp,-1
    111c:	993a                	add	s2,s2,a4
    111e:	377d                	addiw	a4,a4,-1
    1120:	1702                	slli	a4,a4,0x20
    1122:	9301                	srli	a4,a4,0x20
    1124:	40e90933          	sub	s2,s2,a4
    1128:	fff44583          	lbu	a1,-1(s0)
    112c:	8526                	mv	a0,s1
    112e:	00000097          	auipc	ra,0x0
    1132:	f6a080e7          	jalr	-150(ra) # 1098 <putc>
    1136:	147d                	addi	s0,s0,-1
    1138:	ff2418e3          	bne	s0,s2,1128 <printint+0x74>
    113c:	70a2                	ld	ra,40(sp)
    113e:	7402                	ld	s0,32(sp)
    1140:	64e2                	ld	s1,24(sp)
    1142:	6942                	ld	s2,16(sp)
    1144:	6145                	addi	sp,sp,48
    1146:	8082                	ret
    1148:	40b005bb          	negw	a1,a1
    114c:	4885                	li	a7,1
    114e:	bfb5                	j	10ca <printint+0x16>

0000000000001150 <vprintf>:
    1150:	7159                	addi	sp,sp,-112
    1152:	f486                	sd	ra,104(sp)
    1154:	f0a2                	sd	s0,96(sp)
    1156:	eca6                	sd	s1,88(sp)
    1158:	e8ca                	sd	s2,80(sp)
    115a:	e4ce                	sd	s3,72(sp)
    115c:	e0d2                	sd	s4,64(sp)
    115e:	fc56                	sd	s5,56(sp)
    1160:	f85a                	sd	s6,48(sp)
    1162:	f45e                	sd	s7,40(sp)
    1164:	f062                	sd	s8,32(sp)
    1166:	ec66                	sd	s9,24(sp)
    1168:	e86a                	sd	s10,16(sp)
    116a:	e46e                	sd	s11,8(sp)
    116c:	0005c483          	lbu	s1,0(a1)
    1170:	18048a63          	beqz	s1,1304 <vprintf+0x1b4>
    1174:	8a2a                	mv	s4,a0
    1176:	8ab2                	mv	s5,a2
    1178:	00158413          	addi	s0,a1,1
    117c:	4901                	li	s2,0
    117e:	02500993          	li	s3,37
    1182:	06400b93          	li	s7,100
    1186:	06c00c13          	li	s8,108
    118a:	07800c93          	li	s9,120
    118e:	07000d13          	li	s10,112
    1192:	00002db7          	lui	s11,0x2
    1196:	00002b37          	lui	s6,0x2
    119a:	d88b0b13          	addi	s6,s6,-632 # 1d88 <digits>
    119e:	a839                	j	11bc <vprintf+0x6c>
    11a0:	85a6                	mv	a1,s1
    11a2:	8552                	mv	a0,s4
    11a4:	00000097          	auipc	ra,0x0
    11a8:	ef4080e7          	jalr	-268(ra) # 1098 <putc>
    11ac:	a019                	j	11b2 <vprintf+0x62>
    11ae:	01390f63          	beq	s2,s3,11cc <vprintf+0x7c>
    11b2:	0405                	addi	s0,s0,1
    11b4:	fff44483          	lbu	s1,-1(s0)
    11b8:	14048663          	beqz	s1,1304 <vprintf+0x1b4>
    11bc:	0004879b          	sext.w	a5,s1
    11c0:	fe0917e3          	bnez	s2,11ae <vprintf+0x5e>
    11c4:	fd379ee3          	bne	a5,s3,11a0 <vprintf+0x50>
    11c8:	893e                	mv	s2,a5
    11ca:	b7e5                	j	11b2 <vprintf+0x62>
    11cc:	05778063          	beq	a5,s7,120c <vprintf+0xbc>
    11d0:	05878c63          	beq	a5,s8,1228 <vprintf+0xd8>
    11d4:	07978863          	beq	a5,s9,1244 <vprintf+0xf4>
    11d8:	09a78463          	beq	a5,s10,1260 <vprintf+0x110>
    11dc:	07300713          	li	a4,115
    11e0:	0ce78263          	beq	a5,a4,12a4 <vprintf+0x154>
    11e4:	06300713          	li	a4,99
    11e8:	0ee78763          	beq	a5,a4,12d6 <vprintf+0x186>
    11ec:	11378163          	beq	a5,s3,12ee <vprintf+0x19e>
    11f0:	85ce                	mv	a1,s3
    11f2:	8552                	mv	a0,s4
    11f4:	00000097          	auipc	ra,0x0
    11f8:	ea4080e7          	jalr	-348(ra) # 1098 <putc>
    11fc:	85a6                	mv	a1,s1
    11fe:	8552                	mv	a0,s4
    1200:	00000097          	auipc	ra,0x0
    1204:	e98080e7          	jalr	-360(ra) # 1098 <putc>
    1208:	4901                	li	s2,0
    120a:	b765                	j	11b2 <vprintf+0x62>
    120c:	008a8493          	addi	s1,s5,8
    1210:	4685                	li	a3,1
    1212:	4629                	li	a2,10
    1214:	000aa583          	lw	a1,0(s5)
    1218:	8552                	mv	a0,s4
    121a:	00000097          	auipc	ra,0x0
    121e:	e9a080e7          	jalr	-358(ra) # 10b4 <printint>
    1222:	8aa6                	mv	s5,s1
    1224:	4901                	li	s2,0
    1226:	b771                	j	11b2 <vprintf+0x62>
    1228:	008a8493          	addi	s1,s5,8
    122c:	4681                	li	a3,0
    122e:	4629                	li	a2,10
    1230:	000aa583          	lw	a1,0(s5)
    1234:	8552                	mv	a0,s4
    1236:	00000097          	auipc	ra,0x0
    123a:	e7e080e7          	jalr	-386(ra) # 10b4 <printint>
    123e:	8aa6                	mv	s5,s1
    1240:	4901                	li	s2,0
    1242:	bf85                	j	11b2 <vprintf+0x62>
    1244:	008a8493          	addi	s1,s5,8
    1248:	4681                	li	a3,0
    124a:	4641                	li	a2,16
    124c:	000aa583          	lw	a1,0(s5)
    1250:	8552                	mv	a0,s4
    1252:	00000097          	auipc	ra,0x0
    1256:	e62080e7          	jalr	-414(ra) # 10b4 <printint>
    125a:	8aa6                	mv	s5,s1
    125c:	4901                	li	s2,0
    125e:	bf91                	j	11b2 <vprintf+0x62>
    1260:	008a8913          	addi	s2,s5,8
    1264:	000aba83          	ld	s5,0(s5)
    1268:	03000593          	li	a1,48
    126c:	8552                	mv	a0,s4
    126e:	00000097          	auipc	ra,0x0
    1272:	e2a080e7          	jalr	-470(ra) # 1098 <putc>
    1276:	85e6                	mv	a1,s9
    1278:	8552                	mv	a0,s4
    127a:	00000097          	auipc	ra,0x0
    127e:	e1e080e7          	jalr	-482(ra) # 1098 <putc>
    1282:	44c1                	li	s1,16
    1284:	03cad793          	srli	a5,s5,0x3c
    1288:	97da                	add	a5,a5,s6
    128a:	0007c583          	lbu	a1,0(a5)
    128e:	8552                	mv	a0,s4
    1290:	00000097          	auipc	ra,0x0
    1294:	e08080e7          	jalr	-504(ra) # 1098 <putc>
    1298:	0a92                	slli	s5,s5,0x4
    129a:	34fd                	addiw	s1,s1,-1
    129c:	f4e5                	bnez	s1,1284 <vprintf+0x134>
    129e:	8aca                	mv	s5,s2
    12a0:	4901                	li	s2,0
    12a2:	bf01                	j	11b2 <vprintf+0x62>
    12a4:	008a8913          	addi	s2,s5,8
    12a8:	000ab483          	ld	s1,0(s5)
    12ac:	c085                	beqz	s1,12cc <vprintf+0x17c>
    12ae:	0004c583          	lbu	a1,0(s1)
    12b2:	c5b1                	beqz	a1,12fe <vprintf+0x1ae>
    12b4:	8552                	mv	a0,s4
    12b6:	00000097          	auipc	ra,0x0
    12ba:	de2080e7          	jalr	-542(ra) # 1098 <putc>
    12be:	0485                	addi	s1,s1,1
    12c0:	0004c583          	lbu	a1,0(s1)
    12c4:	f9e5                	bnez	a1,12b4 <vprintf+0x164>
    12c6:	8aca                	mv	s5,s2
    12c8:	4901                	li	s2,0
    12ca:	b5e5                	j	11b2 <vprintf+0x62>
    12cc:	d80d8493          	addi	s1,s11,-640 # 1d80 <mkdir+0x10a>
    12d0:	02800593          	li	a1,40
    12d4:	b7c5                	j	12b4 <vprintf+0x164>
    12d6:	008a8493          	addi	s1,s5,8
    12da:	000ac583          	lbu	a1,0(s5)
    12de:	8552                	mv	a0,s4
    12e0:	00000097          	auipc	ra,0x0
    12e4:	db8080e7          	jalr	-584(ra) # 1098 <putc>
    12e8:	8aa6                	mv	s5,s1
    12ea:	4901                	li	s2,0
    12ec:	b5d9                	j	11b2 <vprintf+0x62>
    12ee:	85ce                	mv	a1,s3
    12f0:	8552                	mv	a0,s4
    12f2:	00000097          	auipc	ra,0x0
    12f6:	da6080e7          	jalr	-602(ra) # 1098 <putc>
    12fa:	4901                	li	s2,0
    12fc:	bd5d                	j	11b2 <vprintf+0x62>
    12fe:	8aca                	mv	s5,s2
    1300:	4901                	li	s2,0
    1302:	bd45                	j	11b2 <vprintf+0x62>
    1304:	70a6                	ld	ra,104(sp)
    1306:	7406                	ld	s0,96(sp)
    1308:	64e6                	ld	s1,88(sp)
    130a:	6946                	ld	s2,80(sp)
    130c:	69a6                	ld	s3,72(sp)
    130e:	6a06                	ld	s4,64(sp)
    1310:	7ae2                	ld	s5,56(sp)
    1312:	7b42                	ld	s6,48(sp)
    1314:	7ba2                	ld	s7,40(sp)
    1316:	7c02                	ld	s8,32(sp)
    1318:	6ce2                	ld	s9,24(sp)
    131a:	6d42                	ld	s10,16(sp)
    131c:	6da2                	ld	s11,8(sp)
    131e:	6165                	addi	sp,sp,112
    1320:	8082                	ret

0000000000001322 <fprintf>:
    1322:	715d                	addi	sp,sp,-80
    1324:	ec06                	sd	ra,24(sp)
    1326:	f032                	sd	a2,32(sp)
    1328:	f436                	sd	a3,40(sp)
    132a:	f83a                	sd	a4,48(sp)
    132c:	fc3e                	sd	a5,56(sp)
    132e:	e0c2                	sd	a6,64(sp)
    1330:	e4c6                	sd	a7,72(sp)
    1332:	1010                	addi	a2,sp,32
    1334:	e432                	sd	a2,8(sp)
    1336:	00000097          	auipc	ra,0x0
    133a:	e1a080e7          	jalr	-486(ra) # 1150 <vprintf>
    133e:	60e2                	ld	ra,24(sp)
    1340:	6161                	addi	sp,sp,80
    1342:	8082                	ret

0000000000001344 <printf>:
    1344:	711d                	addi	sp,sp,-96
    1346:	ec06                	sd	ra,24(sp)
    1348:	f42e                	sd	a1,40(sp)
    134a:	f832                	sd	a2,48(sp)
    134c:	fc36                	sd	a3,56(sp)
    134e:	e0ba                	sd	a4,64(sp)
    1350:	e4be                	sd	a5,72(sp)
    1352:	e8c2                	sd	a6,80(sp)
    1354:	ecc6                	sd	a7,88(sp)
    1356:	1030                	addi	a2,sp,40
    1358:	e432                	sd	a2,8(sp)
    135a:	85aa                	mv	a1,a0
    135c:	4505                	li	a0,1
    135e:	00000097          	auipc	ra,0x0
    1362:	df2080e7          	jalr	-526(ra) # 1150 <vprintf>
    1366:	60e2                	ld	ra,24(sp)
    1368:	6125                	addi	sp,sp,96
    136a:	8082                	ret

000000000000136c <cksum>:
    136c:	cdb1                	beqz	a1,13c8 <cksum+0x5c>
    136e:	00b50833          	add	a6,a0,a1
    1372:	4781                	li	a5,0
    1374:	00002637          	lui	a2,0x2
    1378:	da060613          	addi	a2,a2,-608 # 1da0 <crctab>
    137c:	0505                	addi	a0,a0,1
    137e:	0087969b          	slliw	a3,a5,0x8
    1382:	0187d71b          	srliw	a4,a5,0x18
    1386:	fff54783          	lbu	a5,-1(a0)
    138a:	8f3d                	xor	a4,a4,a5
    138c:	1702                	slli	a4,a4,0x20
    138e:	9301                	srli	a4,a4,0x20
    1390:	070a                	slli	a4,a4,0x2
    1392:	9732                	add	a4,a4,a2
    1394:	431c                	lw	a5,0(a4)
    1396:	8fb5                	xor	a5,a5,a3
    1398:	2781                	sext.w	a5,a5
    139a:	fea811e3          	bne	a6,a0,137c <cksum+0x10>
    139e:	00002637          	lui	a2,0x2
    13a2:	da060613          	addi	a2,a2,-608 # 1da0 <crctab>
    13a6:	0ff5f693          	andi	a3,a1,255
    13aa:	81a1                	srli	a1,a1,0x8
    13ac:	0087951b          	slliw	a0,a5,0x8
    13b0:	0187d71b          	srliw	a4,a5,0x18
    13b4:	8f35                	xor	a4,a4,a3
    13b6:	070a                	slli	a4,a4,0x2
    13b8:	9732                	add	a4,a4,a2
    13ba:	431c                	lw	a5,0(a4)
    13bc:	8fa9                	xor	a5,a5,a0
    13be:	2781                	sext.w	a5,a5
    13c0:	f1fd                	bnez	a1,13a6 <cksum+0x3a>
    13c2:	fff7c513          	not	a0,a5
    13c6:	8082                	ret
    13c8:	4781                	li	a5,0
    13ca:	bfe5                	j	13c2 <cksum+0x56>

00000000000013cc <swap_bytes>:
    13cc:	ce19                	beqz	a2,13ea <swap_bytes+0x1e>
    13ce:	87aa                	mv	a5,a0
    13d0:	962a                	add	a2,a2,a0
    13d2:	0007c703          	lbu	a4,0(a5)
    13d6:	0005c683          	lbu	a3,0(a1)
    13da:	00d78023          	sb	a3,0(a5)
    13de:	00e58023          	sb	a4,0(a1)
    13e2:	0785                	addi	a5,a5,1
    13e4:	0585                	addi	a1,a1,1
    13e6:	fec796e3          	bne	a5,a2,13d2 <swap_bytes+0x6>
    13ea:	8082                	ret

00000000000013ec <random_init>:
    13ec:	7139                	addi	sp,sp,-64
    13ee:	fc06                	sd	ra,56(sp)
    13f0:	f822                	sd	s0,48(sp)
    13f2:	f426                	sd	s1,40(sp)
    13f4:	f04a                	sd	s2,32(sp)
    13f6:	ec4e                	sd	s3,24(sp)
    13f8:	e852                	sd	s4,16(sp)
    13fa:	c62a                	sw	a0,12(sp)
    13fc:	000037b7          	lui	a5,0x3
    1400:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1404:	eca5                	bnez	s1,147c <random_init+0x90>
    1406:	00003737          	lui	a4,0x3
    140a:	01070913          	addi	s2,a4,16 # 3010 <s>
    140e:	01070713          	addi	a4,a4,16
    1412:	87a6                	mv	a5,s1
    1414:	10000693          	li	a3,256
    1418:	00f70023          	sb	a5,0(a4)
    141c:	2785                	addiw	a5,a5,1
    141e:	0705                	addi	a4,a4,1
    1420:	fed79ce3          	bne	a5,a3,1418 <random_init+0x2c>
    1424:	4401                	li	s0,0
    1426:	000039b7          	lui	s3,0x3
    142a:	01098993          	addi	s3,s3,16 # 3010 <s>
    142e:	10000a13          	li	s4,256
    1432:	0034f793          	andi	a5,s1,3
    1436:	0818                	addi	a4,sp,16
    1438:	97ba                	add	a5,a5,a4
    143a:	ffc7c783          	lbu	a5,-4(a5)
    143e:	00094703          	lbu	a4,0(s2)
    1442:	9fb9                	addw	a5,a5,a4
    1444:	9c3d                	addw	s0,s0,a5
    1446:	0ff47413          	andi	s0,s0,255
    144a:	4605                	li	a2,1
    144c:	008985b3          	add	a1,s3,s0
    1450:	854a                	mv	a0,s2
    1452:	00000097          	auipc	ra,0x0
    1456:	f7a080e7          	jalr	-134(ra) # 13cc <swap_bytes>
    145a:	2485                	addiw	s1,s1,1
    145c:	0905                	addi	s2,s2,1
    145e:	fd449ae3          	bne	s1,s4,1432 <random_init+0x46>
    1462:	000037b7          	lui	a5,0x3
    1466:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    146a:	000037b7          	lui	a5,0x3
    146e:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1472:	000037b7          	lui	a5,0x3
    1476:	4705                	li	a4,1
    1478:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    147c:	70e2                	ld	ra,56(sp)
    147e:	7442                	ld	s0,48(sp)
    1480:	74a2                	ld	s1,40(sp)
    1482:	7902                	ld	s2,32(sp)
    1484:	69e2                	ld	s3,24(sp)
    1486:	6a42                	ld	s4,16(sp)
    1488:	6121                	addi	sp,sp,64
    148a:	8082                	ret

000000000000148c <random_bytes>:
    148c:	7139                	addi	sp,sp,-64
    148e:	fc06                	sd	ra,56(sp)
    1490:	f822                	sd	s0,48(sp)
    1492:	f426                	sd	s1,40(sp)
    1494:	f04a                	sd	s2,32(sp)
    1496:	ec4e                	sd	s3,24(sp)
    1498:	e852                	sd	s4,16(sp)
    149a:	e456                	sd	s5,8(sp)
    149c:	e05a                	sd	s6,0(sp)
    149e:	892a                	mv	s2,a0
    14a0:	8aae                	mv	s5,a1
    14a2:	000037b7          	lui	a5,0x3
    14a6:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14aa:	c3c1                	beqz	a5,152a <random_bytes+0x9e>
    14ac:	060a8563          	beqz	s5,1516 <random_bytes+0x8a>
    14b0:	9aca                	add	s5,s5,s2
    14b2:	00003a37          	lui	s4,0x3
    14b6:	000034b7          	lui	s1,0x3
    14ba:	01048493          	addi	s1,s1,16 # 3010 <s>
    14be:	000039b7          	lui	s3,0x3
    14c2:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14c6:	2505                	addiw	a0,a0,1
    14c8:	0ff57513          	andi	a0,a0,255
    14cc:	00aa02a3          	sb	a0,5(s4)
    14d0:	00a48b33          	add	s6,s1,a0
    14d4:	000b4403          	lbu	s0,0(s6)
    14d8:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14dc:	9c3d                	addw	s0,s0,a5
    14de:	0ff47413          	andi	s0,s0,255
    14e2:	00898223          	sb	s0,4(s3)
    14e6:	4605                	li	a2,1
    14e8:	008485b3          	add	a1,s1,s0
    14ec:	855a                	mv	a0,s6
    14ee:	00000097          	auipc	ra,0x0
    14f2:	ede080e7          	jalr	-290(ra) # 13cc <swap_bytes>
    14f6:	9426                	add	s0,s0,s1
    14f8:	000b4783          	lbu	a5,0(s6)
    14fc:	00044703          	lbu	a4,0(s0)
    1500:	9fb9                	addw	a5,a5,a4
    1502:	0ff7f793          	andi	a5,a5,255
    1506:	97a6                	add	a5,a5,s1
    1508:	0007c783          	lbu	a5,0(a5)
    150c:	00f90023          	sb	a5,0(s2)
    1510:	0905                	addi	s2,s2,1
    1512:	fb2a98e3          	bne	s5,s2,14c2 <random_bytes+0x36>
    1516:	70e2                	ld	ra,56(sp)
    1518:	7442                	ld	s0,48(sp)
    151a:	74a2                	ld	s1,40(sp)
    151c:	7902                	ld	s2,32(sp)
    151e:	69e2                	ld	s3,24(sp)
    1520:	6a42                	ld	s4,16(sp)
    1522:	6aa2                	ld	s5,8(sp)
    1524:	6b02                	ld	s6,0(sp)
    1526:	6121                	addi	sp,sp,64
    1528:	8082                	ret
    152a:	4501                	li	a0,0
    152c:	00000097          	auipc	ra,0x0
    1530:	ec0080e7          	jalr	-320(ra) # 13ec <random_init>
    1534:	bfa5                	j	14ac <random_bytes+0x20>

0000000000001536 <random_ulong>:
    1536:	1101                	addi	sp,sp,-32
    1538:	ec06                	sd	ra,24(sp)
    153a:	45a1                	li	a1,8
    153c:	0028                	addi	a0,sp,8
    153e:	00000097          	auipc	ra,0x0
    1542:	f4e080e7          	jalr	-178(ra) # 148c <random_bytes>
    1546:	6522                	ld	a0,8(sp)
    1548:	60e2                	ld	ra,24(sp)
    154a:	6105                	addi	sp,sp,32
    154c:	8082                	ret

000000000000154e <shuffle>:
    154e:	c9b9                	beqz	a1,15a4 <shuffle+0x56>
    1550:	7179                	addi	sp,sp,-48
    1552:	f406                	sd	ra,40(sp)
    1554:	f022                	sd	s0,32(sp)
    1556:	ec26                	sd	s1,24(sp)
    1558:	e84a                	sd	s2,16(sp)
    155a:	e44e                	sd	s3,8(sp)
    155c:	e052                	sd	s4,0(sp)
    155e:	8a2a                	mv	s4,a0
    1560:	89ae                	mv	s3,a1
    1562:	84b2                	mv	s1,a2
    1564:	892a                	mv	s2,a0
    1566:	4401                	li	s0,0
    1568:	00000097          	auipc	ra,0x0
    156c:	fce080e7          	jalr	-50(ra) # 1536 <random_ulong>
    1570:	408985b3          	sub	a1,s3,s0
    1574:	02b575b3          	remu	a1,a0,a1
    1578:	95a2                	add	a1,a1,s0
    157a:	029585b3          	mul	a1,a1,s1
    157e:	8626                	mv	a2,s1
    1580:	95d2                	add	a1,a1,s4
    1582:	854a                	mv	a0,s2
    1584:	00000097          	auipc	ra,0x0
    1588:	e48080e7          	jalr	-440(ra) # 13cc <swap_bytes>
    158c:	0405                	addi	s0,s0,1
    158e:	9926                	add	s2,s2,s1
    1590:	fc899ce3          	bne	s3,s0,1568 <shuffle+0x1a>
    1594:	70a2                	ld	ra,40(sp)
    1596:	7402                	ld	s0,32(sp)
    1598:	64e2                	ld	s1,24(sp)
    159a:	6942                	ld	s2,16(sp)
    159c:	69a2                	ld	s3,8(sp)
    159e:	6a02                	ld	s4,0(sp)
    15a0:	6145                	addi	sp,sp,48
    15a2:	8082                	ret
    15a4:	8082                	ret

00000000000015a6 <arc4_init>:
    15a6:	100500a3          	sb	zero,257(a0)
    15aa:	10050023          	sb	zero,256(a0)
    15ae:	4781                	li	a5,0
    15b0:	10000693          	li	a3,256
    15b4:	00f50733          	add	a4,a0,a5
    15b8:	00f70023          	sb	a5,0(a4)
    15bc:	0785                	addi	a5,a5,1
    15be:	fed79be3          	bne	a5,a3,15b4 <arc4_init+0xe>
    15c2:	86aa                	mv	a3,a0
    15c4:	10050e13          	addi	t3,a0,256
    15c8:	4701                	li	a4,0
    15ca:	4781                	li	a5,0
    15cc:	0006c883          	lbu	a7,0(a3)
    15d0:	00f58833          	add	a6,a1,a5
    15d4:	00084803          	lbu	a6,0(a6)
    15d8:	00e8873b          	addw	a4,a7,a4
    15dc:	00e8073b          	addw	a4,a6,a4
    15e0:	0ff77713          	andi	a4,a4,255
    15e4:	00e50833          	add	a6,a0,a4
    15e8:	00084303          	lbu	t1,0(a6)
    15ec:	00668023          	sb	t1,0(a3)
    15f0:	01180023          	sb	a7,0(a6)
    15f4:	0785                	addi	a5,a5,1
    15f6:	00c7b833          	sltu	a6,a5,a2
    15fa:	41000833          	neg	a6,a6
    15fe:	0107f7b3          	and	a5,a5,a6
    1602:	0685                	addi	a3,a3,1
    1604:	fdc694e3          	bne	a3,t3,15cc <arc4_init+0x26>
    1608:	8082                	ret

000000000000160a <arc4_crypt>:
    160a:	10054e03          	lbu	t3,256(a0)
    160e:	10154803          	lbu	a6,257(a0)
    1612:	fff60e93          	addi	t4,a2,-1
    1616:	c225                	beqz	a2,1676 <arc4_crypt+0x6c>
    1618:	00c588b3          	add	a7,a1,a2
    161c:	86ae                	mv	a3,a1
    161e:	001e031b          	addiw	t1,t3,1
    1622:	40b3033b          	subw	t1,t1,a1
    1626:	00d3073b          	addw	a4,t1,a3
    162a:	0ff77713          	andi	a4,a4,255
    162e:	972a                	add	a4,a4,a0
    1630:	00074603          	lbu	a2,0(a4)
    1634:	0106083b          	addw	a6,a2,a6
    1638:	0ff87813          	andi	a6,a6,255
    163c:	010507b3          	add	a5,a0,a6
    1640:	0007c583          	lbu	a1,0(a5)
    1644:	00b70023          	sb	a1,0(a4)
    1648:	00c78023          	sb	a2,0(a5)
    164c:	0685                	addi	a3,a3,1
    164e:	00074783          	lbu	a5,0(a4)
    1652:	9fb1                	addw	a5,a5,a2
    1654:	0ff7f793          	andi	a5,a5,255
    1658:	97aa                	add	a5,a5,a0
    165a:	0007c783          	lbu	a5,0(a5)
    165e:	fff6c703          	lbu	a4,-1(a3)
    1662:	8fb9                	xor	a5,a5,a4
    1664:	fef68fa3          	sb	a5,-1(a3)
    1668:	fb169fe3          	bne	a3,a7,1626 <arc4_crypt+0x1c>
    166c:	2e85                	addiw	t4,t4,1
    166e:	01ce8e3b          	addw	t3,t4,t3
    1672:	0ffe7e13          	andi	t3,t3,255
    1676:	11c50023          	sb	t3,256(a0)
    167a:	110500a3          	sb	a6,257(a0)
    167e:	8082                	ret

0000000000001680 <_main>:
    1680:	1141                	addi	sp,sp,-16
    1682:	e406                	sd	ra,8(sp)
    1684:	00000097          	auipc	ra,0x0
    1688:	97c080e7          	jalr	-1668(ra) # 1000 <main>
    168c:	4501                	li	a0,0
    168e:	00000097          	auipc	ra,0x0
    1692:	578080e7          	jalr	1400(ra) # 1c06 <exit>
    1696:	60a2                	ld	ra,8(sp)
    1698:	0141                	addi	sp,sp,16
    169a:	8082                	ret

000000000000169c <strcmp>:
    169c:	00054783          	lbu	a5,0(a0)
    16a0:	cb91                	beqz	a5,16b4 <strcmp+0x18>
    16a2:	0005c703          	lbu	a4,0(a1)
    16a6:	00f71763          	bne	a4,a5,16b4 <strcmp+0x18>
    16aa:	0505                	addi	a0,a0,1
    16ac:	0585                	addi	a1,a1,1
    16ae:	00054783          	lbu	a5,0(a0)
    16b2:	fbe5                	bnez	a5,16a2 <strcmp+0x6>
    16b4:	0005c503          	lbu	a0,0(a1)
    16b8:	40a7853b          	subw	a0,a5,a0
    16bc:	8082                	ret

00000000000016be <strcpy>:
    16be:	87aa                	mv	a5,a0
    16c0:	0585                	addi	a1,a1,1
    16c2:	0785                	addi	a5,a5,1
    16c4:	fff5c703          	lbu	a4,-1(a1)
    16c8:	fee78fa3          	sb	a4,-1(a5)
    16cc:	fb75                	bnez	a4,16c0 <strcpy+0x2>
    16ce:	8082                	ret

00000000000016d0 <strlen>:
    16d0:	00054783          	lbu	a5,0(a0)
    16d4:	cf81                	beqz	a5,16ec <strlen+0x1c>
    16d6:	0505                	addi	a0,a0,1
    16d8:	87aa                	mv	a5,a0
    16da:	4685                	li	a3,1
    16dc:	9e89                	subw	a3,a3,a0
    16de:	00f6853b          	addw	a0,a3,a5
    16e2:	0785                	addi	a5,a5,1
    16e4:	fff7c703          	lbu	a4,-1(a5)
    16e8:	fb7d                	bnez	a4,16de <strlen+0xe>
    16ea:	8082                	ret
    16ec:	4501                	li	a0,0
    16ee:	8082                	ret

00000000000016f0 <memset>:
    16f0:	ca19                	beqz	a2,1706 <memset+0x16>
    16f2:	87aa                	mv	a5,a0
    16f4:	1602                	slli	a2,a2,0x20
    16f6:	9201                	srli	a2,a2,0x20
    16f8:	00a60733          	add	a4,a2,a0
    16fc:	00b78023          	sb	a1,0(a5)
    1700:	0785                	addi	a5,a5,1
    1702:	fee79de3          	bne	a5,a4,16fc <memset+0xc>
    1706:	8082                	ret

0000000000001708 <memcmp>:
    1708:	1101                	addi	sp,sp,-32
    170a:	ec06                	sd	ra,24(sp)
    170c:	e822                	sd	s0,16(sp)
    170e:	e426                	sd	s1,8(sp)
    1710:	e04a                	sd	s2,0(sp)
    1712:	892a                	mv	s2,a0
    1714:	842e                	mv	s0,a1
    1716:	84b2                	mv	s1,a2
    1718:	c915                	beqz	a0,174c <memcmp+0x44>
    171a:	c5ad                	beqz	a1,1784 <memcmp+0x7c>
    171c:	fff60713          	addi	a4,a2,-1
    1720:	c645                	beqz	a2,17c8 <memcmp+0xc0>
    1722:	87ca                	mv	a5,s2
    1724:	00190613          	addi	a2,s2,1
    1728:	963a                	add	a2,a2,a4
    172a:	0007c683          	lbu	a3,0(a5)
    172e:	00044703          	lbu	a4,0(s0)
    1732:	08e69463          	bne	a3,a4,17ba <memcmp+0xb2>
    1736:	0785                	addi	a5,a5,1
    1738:	0405                	addi	s0,s0,1
    173a:	fec798e3          	bne	a5,a2,172a <memcmp+0x22>
    173e:	4501                	li	a0,0
    1740:	60e2                	ld	ra,24(sp)
    1742:	6442                	ld	s0,16(sp)
    1744:	64a2                	ld	s1,8(sp)
    1746:	6902                	ld	s2,0(sp)
    1748:	6105                	addi	sp,sp,32
    174a:	8082                	ret
    174c:	4501                	li	a0,0
    174e:	da6d                	beqz	a2,1740 <memcmp+0x38>
    1750:	03200693          	li	a3,50
    1754:	00002637          	lui	a2,0x2
    1758:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    175c:	000025b7          	lui	a1,0x2
    1760:	1b058593          	addi	a1,a1,432 # 21b0 <crctab+0x410>
    1764:	4509                	li	a0,2
    1766:	00000097          	auipc	ra,0x0
    176a:	bbc080e7          	jalr	-1092(ra) # 1322 <fprintf>
    176e:	650d                	lui	a0,0x3
    1770:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1774:	00000097          	auipc	ra,0x0
    1778:	492080e7          	jalr	1170(ra) # 1c06 <exit>
    177c:	fff48713          	addi	a4,s1,-1
    1780:	f04d                	bnez	s0,1722 <memcmp+0x1a>
    1782:	a011                	j	1786 <memcmp+0x7e>
    1784:	c221                	beqz	a2,17c4 <memcmp+0xbc>
    1786:	03300693          	li	a3,51
    178a:	00002637          	lui	a2,0x2
    178e:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    1792:	000025b7          	lui	a1,0x2
    1796:	1f858593          	addi	a1,a1,504 # 21f8 <crctab+0x458>
    179a:	4509                	li	a0,2
    179c:	00000097          	auipc	ra,0x0
    17a0:	b86080e7          	jalr	-1146(ra) # 1322 <fprintf>
    17a4:	650d                	lui	a0,0x3
    17a6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17aa:	00000097          	auipc	ra,0x0
    17ae:	45c080e7          	jalr	1116(ra) # 1c06 <exit>
    17b2:	fff48713          	addi	a4,s1,-1
    17b6:	4401                	li	s0,0
    17b8:	b7ad                	j	1722 <memcmp+0x1a>
    17ba:	4505                	li	a0,1
    17bc:	f8d762e3          	bltu	a4,a3,1740 <memcmp+0x38>
    17c0:	557d                	li	a0,-1
    17c2:	bfbd                	j	1740 <memcmp+0x38>
    17c4:	4501                	li	a0,0
    17c6:	bfad                	j	1740 <memcmp+0x38>
    17c8:	4501                	li	a0,0
    17ca:	bf9d                	j	1740 <memcmp+0x38>

00000000000017cc <memcpy>:
    17cc:	1101                	addi	sp,sp,-32
    17ce:	ec06                	sd	ra,24(sp)
    17d0:	e822                	sd	s0,16(sp)
    17d2:	e426                	sd	s1,8(sp)
    17d4:	e04a                	sd	s2,0(sp)
    17d6:	84aa                	mv	s1,a0
    17d8:	842e                	mv	s0,a1
    17da:	8932                	mv	s2,a2
    17dc:	c51d                	beqz	a0,180a <memcpy+0x3e>
    17de:	c1ad                	beqz	a1,1840 <memcpy+0x74>
    17e0:	fff60693          	addi	a3,a2,-1
    17e4:	ce01                	beqz	a2,17fc <memcpy+0x30>
    17e6:	0685                	addi	a3,a3,1
    17e8:	96a6                	add	a3,a3,s1
    17ea:	87a6                	mv	a5,s1
    17ec:	0405                	addi	s0,s0,1
    17ee:	0785                	addi	a5,a5,1
    17f0:	fff44703          	lbu	a4,-1(s0)
    17f4:	fee78fa3          	sb	a4,-1(a5)
    17f8:	fed79ae3          	bne	a5,a3,17ec <memcpy+0x20>
    17fc:	8526                	mv	a0,s1
    17fe:	60e2                	ld	ra,24(sp)
    1800:	6442                	ld	s0,16(sp)
    1802:	64a2                	ld	s1,8(sp)
    1804:	6902                	ld	s2,0(sp)
    1806:	6105                	addi	sp,sp,32
    1808:	8082                	ret
    180a:	da6d                	beqz	a2,17fc <memcpy+0x30>
    180c:	04000693          	li	a3,64
    1810:	00002637          	lui	a2,0x2
    1814:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    1818:	000025b7          	lui	a1,0x2
    181c:	24058593          	addi	a1,a1,576 # 2240 <crctab+0x4a0>
    1820:	4509                	li	a0,2
    1822:	00000097          	auipc	ra,0x0
    1826:	b00080e7          	jalr	-1280(ra) # 1322 <fprintf>
    182a:	650d                	lui	a0,0x3
    182c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1830:	00000097          	auipc	ra,0x0
    1834:	3d6080e7          	jalr	982(ra) # 1c06 <exit>
    1838:	fff90693          	addi	a3,s2,-1
    183c:	f44d                	bnez	s0,17e6 <memcpy+0x1a>
    183e:	a011                	j	1842 <memcpy+0x76>
    1840:	de55                	beqz	a2,17fc <memcpy+0x30>
    1842:	04100693          	li	a3,65
    1846:	00002637          	lui	a2,0x2
    184a:	1a060613          	addi	a2,a2,416 # 21a0 <crctab+0x400>
    184e:	000025b7          	lui	a1,0x2
    1852:	28858593          	addi	a1,a1,648 # 2288 <crctab+0x4e8>
    1856:	4509                	li	a0,2
    1858:	00000097          	auipc	ra,0x0
    185c:	aca080e7          	jalr	-1334(ra) # 1322 <fprintf>
    1860:	650d                	lui	a0,0x3
    1862:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1866:	00000097          	auipc	ra,0x0
    186a:	3a0080e7          	jalr	928(ra) # 1c06 <exit>
    186e:	fff90693          	addi	a3,s2,-1
    1872:	4401                	li	s0,0
    1874:	bf8d                	j	17e6 <memcpy+0x1a>

0000000000001876 <itoa>:
    1876:	1101                	addi	sp,sp,-32
    1878:	ec06                	sd	ra,24(sp)
    187a:	e822                	sd	s0,16(sp)
    187c:	e426                	sd	s1,8(sp)
    187e:	842a                	mv	s0,a0
    1880:	41f5d71b          	sraiw	a4,a1,0x1f
    1884:	00e5c7b3          	xor	a5,a1,a4
    1888:	9f99                	subw	a5,a5,a4
    188a:	84aa                	mv	s1,a0
    188c:	862a                	mv	a2,a0
    188e:	4681                	li	a3,0
    1890:	4529                	li	a0,10
    1892:	4825                	li	a6,9
    1894:	88b6                	mv	a7,a3
    1896:	2685                	addiw	a3,a3,1
    1898:	02a7e73b          	remw	a4,a5,a0
    189c:	0307071b          	addiw	a4,a4,48
    18a0:	00e60023          	sb	a4,0(a2)
    18a4:	873e                	mv	a4,a5
    18a6:	02a7c7bb          	divw	a5,a5,a0
    18aa:	0605                	addi	a2,a2,1
    18ac:	fee844e3          	blt	a6,a4,1894 <itoa+0x1e>
    18b0:	0405c863          	bltz	a1,1900 <itoa+0x8a>
    18b4:	96a2                	add	a3,a3,s0
    18b6:	00068023          	sb	zero,0(a3)
    18ba:	8522                	mv	a0,s0
    18bc:	00000097          	auipc	ra,0x0
    18c0:	e14080e7          	jalr	-492(ra) # 16d0 <strlen>
    18c4:	fff5071b          	addiw	a4,a0,-1
    18c8:	02e05763          	blez	a4,18f6 <itoa+0x80>
    18cc:	9722                	add	a4,a4,s0
    18ce:	4681                	li	a3,0
    18d0:	0004c783          	lbu	a5,0(s1)
    18d4:	00074603          	lbu	a2,0(a4)
    18d8:	00c48023          	sb	a2,0(s1)
    18dc:	00f70023          	sb	a5,0(a4)
    18e0:	0016879b          	addiw	a5,a3,1
    18e4:	0007869b          	sext.w	a3,a5
    18e8:	0485                	addi	s1,s1,1
    18ea:	177d                	addi	a4,a4,-1
    18ec:	fff7c793          	not	a5,a5
    18f0:	9fa9                	addw	a5,a5,a0
    18f2:	fcf6cfe3          	blt	a3,a5,18d0 <itoa+0x5a>
    18f6:	60e2                	ld	ra,24(sp)
    18f8:	6442                	ld	s0,16(sp)
    18fa:	64a2                	ld	s1,8(sp)
    18fc:	6105                	addi	sp,sp,32
    18fe:	8082                	ret
    1900:	96a2                	add	a3,a3,s0
    1902:	02d00793          	li	a5,45
    1906:	00f68023          	sb	a5,0(a3)
    190a:	0028869b          	addiw	a3,a7,2
    190e:	b75d                	j	18b4 <itoa+0x3e>

0000000000001910 <atoi>:
    1910:	00054783          	lbu	a5,0(a0)
    1914:	02000713          	li	a4,32
    1918:	00e79763          	bne	a5,a4,1926 <atoi+0x16>
    191c:	0505                	addi	a0,a0,1
    191e:	00054783          	lbu	a5,0(a0)
    1922:	fee78de3          	beq	a5,a4,191c <atoi+0xc>
    1926:	02b00713          	li	a4,43
    192a:	04e78663          	beq	a5,a4,1976 <atoi+0x66>
    192e:	02d00713          	li	a4,45
    1932:	4805                	li	a6,1
    1934:	04e78463          	beq	a5,a4,197c <atoi+0x6c>
    1938:	00054683          	lbu	a3,0(a0)
    193c:	fd06879b          	addiw	a5,a3,-48
    1940:	0ff7f793          	andi	a5,a5,255
    1944:	4725                	li	a4,9
    1946:	02f76e63          	bltu	a4,a5,1982 <atoi+0x72>
    194a:	4601                	li	a2,0
    194c:	45a5                	li	a1,9
    194e:	0505                	addi	a0,a0,1
    1950:	0026179b          	slliw	a5,a2,0x2
    1954:	9fb1                	addw	a5,a5,a2
    1956:	0017979b          	slliw	a5,a5,0x1
    195a:	9fb5                	addw	a5,a5,a3
    195c:	fd07861b          	addiw	a2,a5,-48
    1960:	00054683          	lbu	a3,0(a0)
    1964:	fd06871b          	addiw	a4,a3,-48
    1968:	0ff77713          	andi	a4,a4,255
    196c:	fee5f1e3          	bgeu	a1,a4,194e <atoi+0x3e>
    1970:	02c8053b          	mulw	a0,a6,a2
    1974:	8082                	ret
    1976:	0505                	addi	a0,a0,1
    1978:	4805                	li	a6,1
    197a:	bf7d                	j	1938 <atoi+0x28>
    197c:	0505                	addi	a0,a0,1
    197e:	587d                	li	a6,-1
    1980:	bf65                	j	1938 <atoi+0x28>
    1982:	4601                	li	a2,0
    1984:	b7f5                	j	1970 <atoi+0x60>

0000000000001986 <check_file_handle>:
    1986:	d8010113          	addi	sp,sp,-640
    198a:	26113c23          	sd	ra,632(sp)
    198e:	26813823          	sd	s0,624(sp)
    1992:	26913423          	sd	s1,616(sp)
    1996:	27213023          	sd	s2,608(sp)
    199a:	25313c23          	sd	s3,600(sp)
    199e:	25413823          	sd	s4,592(sp)
    19a2:	25513423          	sd	s5,584(sp)
    19a6:	25613023          	sd	s6,576(sp)
    19aa:	23713c23          	sd	s7,568(sp)
    19ae:	23813823          	sd	s8,560(sp)
    19b2:	23913423          	sd	s9,552(sp)
    19b6:	23a13023          	sd	s10,544(sp)
    19ba:	21b13c23          	sd	s11,536(sp)
    19be:	8baa                	mv	s7,a0
    19c0:	8a2e                	mv	s4,a1
    19c2:	8c32                	mv	s8,a2
    19c4:	89b6                	mv	s3,a3
    19c6:	040c                	addi	a1,sp,512
    19c8:	00000097          	auipc	ra,0x0
    19cc:	28e080e7          	jalr	654(ra) # 1c56 <fstat>
    19d0:	20813603          	ld	a2,520(sp)
    19d4:	03361163          	bne	a2,s3,19f6 <check_file_handle+0x70>
    19d8:	06098763          	beqz	s3,1a46 <check_file_handle+0xc0>
    19dc:	4901                	li	s2,0
    19de:	20000a93          	li	s5,512
    19e2:	00002cb7          	lui	s9,0x2
    19e6:	00002db7          	lui	s11,0x2
    19ea:	6b0d                	lui	s6,0x3
    19ec:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19f0:	00002d37          	lui	s10,0x2
    19f4:	aa39                	j	1b12 <check_file_handle+0x18c>
    19f6:	86ce                	mv	a3,s3
    19f8:	85d2                	mv	a1,s4
    19fa:	00002537          	lui	a0,0x2
    19fe:	2d050513          	addi	a0,a0,720 # 22d0 <crctab+0x530>
    1a02:	00000097          	auipc	ra,0x0
    1a06:	942080e7          	jalr	-1726(ra) # 1344 <printf>
    1a0a:	fc0999e3          	bnez	s3,19dc <check_file_handle+0x56>
    1a0e:	20813683          	ld	a3,520(sp)
    1a12:	03368a63          	beq	a3,s3,1a46 <check_file_handle+0xc0>
    1a16:	0a600813          	li	a6,166
    1a1a:	000027b7          	lui	a5,0x2
    1a1e:	1a078793          	addi	a5,a5,416 # 21a0 <crctab+0x400>
    1a22:	874e                	mv	a4,s3
    1a24:	8652                	mv	a2,s4
    1a26:	000025b7          	lui	a1,0x2
    1a2a:	3a058593          	addi	a1,a1,928 # 23a0 <crctab+0x600>
    1a2e:	4509                	li	a0,2
    1a30:	00000097          	auipc	ra,0x0
    1a34:	8f2080e7          	jalr	-1806(ra) # 1322 <fprintf>
    1a38:	650d                	lui	a0,0x3
    1a3a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a3e:	00000097          	auipc	ra,0x0
    1a42:	1c8080e7          	jalr	456(ra) # 1c06 <exit>
    1a46:	85d2                	mv	a1,s4
    1a48:	00002537          	lui	a0,0x2
    1a4c:	3e850513          	addi	a0,a0,1000 # 23e8 <crctab+0x648>
    1a50:	00000097          	auipc	ra,0x0
    1a54:	8f4080e7          	jalr	-1804(ra) # 1344 <printf>
    1a58:	27813083          	ld	ra,632(sp)
    1a5c:	27013403          	ld	s0,624(sp)
    1a60:	26813483          	ld	s1,616(sp)
    1a64:	26013903          	ld	s2,608(sp)
    1a68:	25813983          	ld	s3,600(sp)
    1a6c:	25013a03          	ld	s4,592(sp)
    1a70:	24813a83          	ld	s5,584(sp)
    1a74:	24013b03          	ld	s6,576(sp)
    1a78:	23813b83          	ld	s7,568(sp)
    1a7c:	23013c03          	ld	s8,560(sp)
    1a80:	22813c83          	ld	s9,552(sp)
    1a84:	22013d03          	ld	s10,544(sp)
    1a88:	21813d83          	ld	s11,536(sp)
    1a8c:	28010113          	addi	sp,sp,640
    1a90:	8082                	ret
    1a92:	09d00893          	li	a7,157
    1a96:	1a0c8813          	addi	a6,s9,416 # 21a0 <crctab+0x400>
    1a9a:	87aa                	mv	a5,a0
    1a9c:	8752                	mv	a4,s4
    1a9e:	86ca                	mv	a3,s2
    1aa0:	8622                	mv	a2,s0
    1aa2:	300d8593          	addi	a1,s11,768 # 2300 <crctab+0x560>
    1aa6:	4509                	li	a0,2
    1aa8:	00000097          	auipc	ra,0x0
    1aac:	87a080e7          	jalr	-1926(ra) # 1322 <fprintf>
    1ab0:	855a                	mv	a0,s6
    1ab2:	00000097          	auipc	ra,0x0
    1ab6:	154080e7          	jalr	340(ra) # 1c06 <exit>
    1aba:	a89d                	j	1b30 <check_file_handle+0x1aa>
    1abc:	00160593          	addi	a1,a2,1
    1ac0:	0285f163          	bgeu	a1,s0,1ae2 <check_file_handle+0x15c>
    1ac4:	00c10733          	add	a4,sp,a2
    1ac8:	00b487b3          	add	a5,s1,a1
    1acc:	00174683          	lbu	a3,1(a4)
    1ad0:	0007c783          	lbu	a5,0(a5)
    1ad4:	00f68763          	beq	a3,a5,1ae2 <check_file_handle+0x15c>
    1ad8:	0585                	addi	a1,a1,1
    1ada:	0705                	addi	a4,a4,1
    1adc:	feb416e3          	bne	s0,a1,1ac8 <check_file_handle+0x142>
    1ae0:	85a2                	mv	a1,s0
    1ae2:	08100813          	li	a6,129
    1ae6:	1a0c8793          	addi	a5,s9,416
    1aea:	8752                	mv	a4,s4
    1aec:	012606b3          	add	a3,a2,s2
    1af0:	40c58633          	sub	a2,a1,a2
    1af4:	348d0593          	addi	a1,s10,840 # 2348 <crctab+0x5a8>
    1af8:	4509                	li	a0,2
    1afa:	00000097          	auipc	ra,0x0
    1afe:	828080e7          	jalr	-2008(ra) # 1322 <fprintf>
    1b02:	855a                	mv	a0,s6
    1b04:	00000097          	auipc	ra,0x0
    1b08:	102080e7          	jalr	258(ra) # 1c06 <exit>
    1b0c:	9922                	add	s2,s2,s0
    1b0e:	f13970e3          	bgeu	s2,s3,1a0e <check_file_handle+0x88>
    1b12:	41298433          	sub	s0,s3,s2
    1b16:	008af363          	bgeu	s5,s0,1b1c <check_file_handle+0x196>
    1b1a:	8456                	mv	s0,s5
    1b1c:	0004061b          	sext.w	a2,s0
    1b20:	858a                	mv	a1,sp
    1b22:	855e                	mv	a0,s7
    1b24:	00000097          	auipc	ra,0x0
    1b28:	10a080e7          	jalr	266(ra) # 1c2e <read>
    1b2c:	f68513e3          	bne	a0,s0,1a92 <check_file_handle+0x10c>
    1b30:	012c04b3          	add	s1,s8,s2
    1b34:	8622                	mv	a2,s0
    1b36:	85a6                	mv	a1,s1
    1b38:	850a                	mv	a0,sp
    1b3a:	00000097          	auipc	ra,0x0
    1b3e:	bce080e7          	jalr	-1074(ra) # 1708 <memcmp>
    1b42:	d569                	beqz	a0,1b0c <check_file_handle+0x186>
    1b44:	03298163          	beq	s3,s2,1b66 <check_file_handle+0x1e0>
    1b48:	870a                	mv	a4,sp
    1b4a:	4601                	li	a2,0
    1b4c:	00c487b3          	add	a5,s1,a2
    1b50:	00074683          	lbu	a3,0(a4)
    1b54:	0007c783          	lbu	a5,0(a5)
    1b58:	f6f692e3          	bne	a3,a5,1abc <check_file_handle+0x136>
    1b5c:	0605                	addi	a2,a2,1
    1b5e:	0705                	addi	a4,a4,1
    1b60:	fe8666e3          	bltu	a2,s0,1b4c <check_file_handle+0x1c6>
    1b64:	bfa1                	j	1abc <check_file_handle+0x136>
    1b66:	4601                	li	a2,0
    1b68:	4585                	li	a1,1
    1b6a:	bfa5                	j	1ae2 <check_file_handle+0x15c>

0000000000001b6c <check_file>:
    1b6c:	7179                	addi	sp,sp,-48
    1b6e:	f406                	sd	ra,40(sp)
    1b70:	f022                	sd	s0,32(sp)
    1b72:	ec26                	sd	s1,24(sp)
    1b74:	e84a                	sd	s2,16(sp)
    1b76:	e44e                	sd	s3,8(sp)
    1b78:	84aa                	mv	s1,a0
    1b7a:	892e                	mv	s2,a1
    1b7c:	89b2                	mv	s3,a2
    1b7e:	4581                	li	a1,0
    1b80:	00000097          	auipc	ra,0x0
    1b84:	0a6080e7          	jalr	166(ra) # 1c26 <open>
    1b88:	842a                	mv	s0,a0
    1b8a:	4789                	li	a5,2
    1b8c:	02a7df63          	bge	a5,a0,1bca <check_file+0x5e>
    1b90:	86ce                	mv	a3,s3
    1b92:	864a                	mv	a2,s2
    1b94:	85a6                	mv	a1,s1
    1b96:	8522                	mv	a0,s0
    1b98:	00000097          	auipc	ra,0x0
    1b9c:	dee080e7          	jalr	-530(ra) # 1986 <check_file_handle>
    1ba0:	85a6                	mv	a1,s1
    1ba2:	00002537          	lui	a0,0x2
    1ba6:	47050513          	addi	a0,a0,1136 # 2470 <crctab+0x6d0>
    1baa:	fffff097          	auipc	ra,0xfffff
    1bae:	79a080e7          	jalr	1946(ra) # 1344 <printf>
    1bb2:	8522                	mv	a0,s0
    1bb4:	00000097          	auipc	ra,0x0
    1bb8:	09a080e7          	jalr	154(ra) # 1c4e <close>
    1bbc:	70a2                	ld	ra,40(sp)
    1bbe:	7402                	ld	s0,32(sp)
    1bc0:	64e2                	ld	s1,24(sp)
    1bc2:	6942                	ld	s2,16(sp)
    1bc4:	69a2                	ld	s3,8(sp)
    1bc6:	6145                	addi	sp,sp,48
    1bc8:	8082                	ret
    1bca:	0ae00713          	li	a4,174
    1bce:	000026b7          	lui	a3,0x2
    1bd2:	1a068693          	addi	a3,a3,416 # 21a0 <crctab+0x400>
    1bd6:	8626                	mv	a2,s1
    1bd8:	000025b7          	lui	a1,0x2
    1bdc:	40858593          	addi	a1,a1,1032 # 2408 <crctab+0x668>
    1be0:	4509                	li	a0,2
    1be2:	fffff097          	auipc	ra,0xfffff
    1be6:	740080e7          	jalr	1856(ra) # 1322 <fprintf>
    1bea:	650d                	lui	a0,0x3
    1bec:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bf0:	00000097          	auipc	ra,0x0
    1bf4:	016080e7          	jalr	22(ra) # 1c06 <exit>
    1bf8:	bf61                	j	1b90 <check_file+0x24>

0000000000001bfa <r_sp>:
    1bfa:	850a                	mv	a0,sp
    1bfc:	8082                	ret

0000000000001bfe <halt>:
    1bfe:	4885                	li	a7,1
    1c00:	00000073          	ecall
    1c04:	8082                	ret

0000000000001c06 <exit>:
    1c06:	4889                	li	a7,2
    1c08:	00000073          	ecall
    1c0c:	8082                	ret

0000000000001c0e <exec>:
    1c0e:	488d                	li	a7,3
    1c10:	00000073          	ecall
    1c14:	8082                	ret

0000000000001c16 <wait>:
    1c16:	4891                	li	a7,4
    1c18:	00000073          	ecall
    1c1c:	8082                	ret

0000000000001c1e <remove>:
    1c1e:	4895                	li	a7,5
    1c20:	00000073          	ecall
    1c24:	8082                	ret

0000000000001c26 <open>:
    1c26:	4899                	li	a7,6
    1c28:	00000073          	ecall
    1c2c:	8082                	ret

0000000000001c2e <read>:
    1c2e:	489d                	li	a7,7
    1c30:	00000073          	ecall
    1c34:	8082                	ret

0000000000001c36 <write>:
    1c36:	48a1                	li	a7,8
    1c38:	00000073          	ecall
    1c3c:	8082                	ret

0000000000001c3e <seek>:
    1c3e:	48a5                	li	a7,9
    1c40:	00000073          	ecall
    1c44:	8082                	ret

0000000000001c46 <tell>:
    1c46:	48a9                	li	a7,10
    1c48:	00000073          	ecall
    1c4c:	8082                	ret

0000000000001c4e <close>:
    1c4e:	48ad                	li	a7,11
    1c50:	00000073          	ecall
    1c54:	8082                	ret

0000000000001c56 <fstat>:
    1c56:	48b1                	li	a7,12
    1c58:	00000073          	ecall
    1c5c:	8082                	ret

0000000000001c5e <mmap>:
    1c5e:	48b5                	li	a7,13
    1c60:	00000073          	ecall
    1c64:	8082                	ret

0000000000001c66 <munmap>:
    1c66:	48b9                	li	a7,14
    1c68:	00000073          	ecall
    1c6c:	8082                	ret

0000000000001c6e <chdir>:
    1c6e:	48bd                	li	a7,15
    1c70:	00000073          	ecall
    1c74:	8082                	ret

0000000000001c76 <mkdir>:
    1c76:	48c1                	li	a7,16
    1c78:	00000073          	ecall
    1c7c:	8082                	ret
