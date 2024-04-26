
build/user/vm/pt-bad-read:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	4581                	li	a1,0
    1006:	00002537          	lui	a0,0x2
    100a:	c8050513          	addi	a0,a0,-896 # 1c80 <mkdir+0xe>
    100e:	00001097          	auipc	ra,0x1
    1012:	c14080e7          	jalr	-1004(ra) # 1c22 <open>
    1016:	c62a                	sw	a0,12(sp)
    1018:	4789                	li	a5,2
    101a:	02a7d163          	bge	a5,a0,103c <main+0x3c>
    101e:	4605                	li	a2,1
    1020:	75fd                	lui	a1,0xfffff
    1022:	007c                	addi	a5,sp,12
    1024:	95be                	add	a1,a1,a5
    1026:	4532                	lw	a0,12(sp)
    1028:	00001097          	auipc	ra,0x1
    102c:	c02080e7          	jalr	-1022(ra) # 1c2a <read>
    1030:	57fd                	li	a5,-1
    1032:	02f51b63          	bne	a0,a5,1068 <main+0x68>
    1036:	60e2                	ld	ra,24(sp)
    1038:	6105                	addi	sp,sp,32
    103a:	8082                	ret
    103c:	46a5                	li	a3,9
    103e:	00002637          	lui	a2,0x2
    1042:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x1e>
    1046:	000025b7          	lui	a1,0x2
    104a:	ca858593          	addi	a1,a1,-856 # 1ca8 <mkdir+0x36>
    104e:	4509                	li	a0,2
    1050:	00000097          	auipc	ra,0x0
    1054:	2ce080e7          	jalr	718(ra) # 131e <fprintf>
    1058:	650d                	lui	a0,0x3
    105a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    105e:	00001097          	auipc	ra,0x1
    1062:	ba4080e7          	jalr	-1116(ra) # 1c02 <exit>
    1066:	bf65                	j	101e <main+0x1e>
    1068:	46a9                	li	a3,10
    106a:	00002637          	lui	a2,0x2
    106e:	c9060613          	addi	a2,a2,-880 # 1c90 <mkdir+0x1e>
    1072:	000025b7          	lui	a1,0x2
    1076:	cf858593          	addi	a1,a1,-776 # 1cf8 <mkdir+0x86>
    107a:	4509                	li	a0,2
    107c:	00000097          	auipc	ra,0x0
    1080:	2a2080e7          	jalr	674(ra) # 131e <fprintf>
    1084:	650d                	lui	a0,0x3
    1086:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    108a:	00001097          	auipc	ra,0x1
    108e:	b78080e7          	jalr	-1160(ra) # 1c02 <exit>
    1092:	b755                	j	1036 <main+0x36>

0000000000001094 <putc>:
    1094:	1101                	addi	sp,sp,-32
    1096:	ec06                	sd	ra,24(sp)
    1098:	00b107a3          	sb	a1,15(sp)
    109c:	4605                	li	a2,1
    109e:	00f10593          	addi	a1,sp,15
    10a2:	00001097          	auipc	ra,0x1
    10a6:	b90080e7          	jalr	-1136(ra) # 1c32 <write>
    10aa:	60e2                	ld	ra,24(sp)
    10ac:	6105                	addi	sp,sp,32
    10ae:	8082                	ret

00000000000010b0 <printint>:
    10b0:	7179                	addi	sp,sp,-48
    10b2:	f406                	sd	ra,40(sp)
    10b4:	f022                	sd	s0,32(sp)
    10b6:	ec26                	sd	s1,24(sp)
    10b8:	e84a                	sd	s2,16(sp)
    10ba:	84aa                	mv	s1,a0
    10bc:	c299                	beqz	a3,10c2 <printint+0x12>
    10be:	0805c363          	bltz	a1,1144 <printint+0x94>
    10c2:	2581                	sext.w	a1,a1
    10c4:	4881                	li	a7,0
    10c6:	868a                	mv	a3,sp
    10c8:	4701                	li	a4,0
    10ca:	2601                	sext.w	a2,a2
    10cc:	00002537          	lui	a0,0x2
    10d0:	d5050513          	addi	a0,a0,-688 # 1d50 <digits>
    10d4:	883a                	mv	a6,a4
    10d6:	2705                	addiw	a4,a4,1
    10d8:	02c5f7bb          	remuw	a5,a1,a2
    10dc:	1782                	slli	a5,a5,0x20
    10de:	9381                	srli	a5,a5,0x20
    10e0:	97aa                	add	a5,a5,a0
    10e2:	0007c783          	lbu	a5,0(a5)
    10e6:	00f68023          	sb	a5,0(a3)
    10ea:	0005879b          	sext.w	a5,a1
    10ee:	02c5d5bb          	divuw	a1,a1,a2
    10f2:	0685                	addi	a3,a3,1
    10f4:	fec7f0e3          	bgeu	a5,a2,10d4 <printint+0x24>
    10f8:	00088a63          	beqz	a7,110c <printint+0x5c>
    10fc:	081c                	addi	a5,sp,16
    10fe:	973e                	add	a4,a4,a5
    1100:	02d00793          	li	a5,45
    1104:	fef70823          	sb	a5,-16(a4)
    1108:	0028071b          	addiw	a4,a6,2
    110c:	02e05663          	blez	a4,1138 <printint+0x88>
    1110:	00e10433          	add	s0,sp,a4
    1114:	fff10913          	addi	s2,sp,-1
    1118:	993a                	add	s2,s2,a4
    111a:	377d                	addiw	a4,a4,-1
    111c:	1702                	slli	a4,a4,0x20
    111e:	9301                	srli	a4,a4,0x20
    1120:	40e90933          	sub	s2,s2,a4
    1124:	fff44583          	lbu	a1,-1(s0)
    1128:	8526                	mv	a0,s1
    112a:	00000097          	auipc	ra,0x0
    112e:	f6a080e7          	jalr	-150(ra) # 1094 <putc>
    1132:	147d                	addi	s0,s0,-1
    1134:	ff2418e3          	bne	s0,s2,1124 <printint+0x74>
    1138:	70a2                	ld	ra,40(sp)
    113a:	7402                	ld	s0,32(sp)
    113c:	64e2                	ld	s1,24(sp)
    113e:	6942                	ld	s2,16(sp)
    1140:	6145                	addi	sp,sp,48
    1142:	8082                	ret
    1144:	40b005bb          	negw	a1,a1
    1148:	4885                	li	a7,1
    114a:	bfb5                	j	10c6 <printint+0x16>

000000000000114c <vprintf>:
    114c:	7159                	addi	sp,sp,-112
    114e:	f486                	sd	ra,104(sp)
    1150:	f0a2                	sd	s0,96(sp)
    1152:	eca6                	sd	s1,88(sp)
    1154:	e8ca                	sd	s2,80(sp)
    1156:	e4ce                	sd	s3,72(sp)
    1158:	e0d2                	sd	s4,64(sp)
    115a:	fc56                	sd	s5,56(sp)
    115c:	f85a                	sd	s6,48(sp)
    115e:	f45e                	sd	s7,40(sp)
    1160:	f062                	sd	s8,32(sp)
    1162:	ec66                	sd	s9,24(sp)
    1164:	e86a                	sd	s10,16(sp)
    1166:	e46e                	sd	s11,8(sp)
    1168:	0005c483          	lbu	s1,0(a1)
    116c:	18048a63          	beqz	s1,1300 <vprintf+0x1b4>
    1170:	8a2a                	mv	s4,a0
    1172:	8ab2                	mv	s5,a2
    1174:	00158413          	addi	s0,a1,1
    1178:	4901                	li	s2,0
    117a:	02500993          	li	s3,37
    117e:	06400b93          	li	s7,100
    1182:	06c00c13          	li	s8,108
    1186:	07800c93          	li	s9,120
    118a:	07000d13          	li	s10,112
    118e:	00002db7          	lui	s11,0x2
    1192:	00002b37          	lui	s6,0x2
    1196:	d50b0b13          	addi	s6,s6,-688 # 1d50 <digits>
    119a:	a839                	j	11b8 <vprintf+0x6c>
    119c:	85a6                	mv	a1,s1
    119e:	8552                	mv	a0,s4
    11a0:	00000097          	auipc	ra,0x0
    11a4:	ef4080e7          	jalr	-268(ra) # 1094 <putc>
    11a8:	a019                	j	11ae <vprintf+0x62>
    11aa:	01390f63          	beq	s2,s3,11c8 <vprintf+0x7c>
    11ae:	0405                	addi	s0,s0,1
    11b0:	fff44483          	lbu	s1,-1(s0)
    11b4:	14048663          	beqz	s1,1300 <vprintf+0x1b4>
    11b8:	0004879b          	sext.w	a5,s1
    11bc:	fe0917e3          	bnez	s2,11aa <vprintf+0x5e>
    11c0:	fd379ee3          	bne	a5,s3,119c <vprintf+0x50>
    11c4:	893e                	mv	s2,a5
    11c6:	b7e5                	j	11ae <vprintf+0x62>
    11c8:	05778063          	beq	a5,s7,1208 <vprintf+0xbc>
    11cc:	05878c63          	beq	a5,s8,1224 <vprintf+0xd8>
    11d0:	07978863          	beq	a5,s9,1240 <vprintf+0xf4>
    11d4:	09a78463          	beq	a5,s10,125c <vprintf+0x110>
    11d8:	07300713          	li	a4,115
    11dc:	0ce78263          	beq	a5,a4,12a0 <vprintf+0x154>
    11e0:	06300713          	li	a4,99
    11e4:	0ee78763          	beq	a5,a4,12d2 <vprintf+0x186>
    11e8:	11378163          	beq	a5,s3,12ea <vprintf+0x19e>
    11ec:	85ce                	mv	a1,s3
    11ee:	8552                	mv	a0,s4
    11f0:	00000097          	auipc	ra,0x0
    11f4:	ea4080e7          	jalr	-348(ra) # 1094 <putc>
    11f8:	85a6                	mv	a1,s1
    11fa:	8552                	mv	a0,s4
    11fc:	00000097          	auipc	ra,0x0
    1200:	e98080e7          	jalr	-360(ra) # 1094 <putc>
    1204:	4901                	li	s2,0
    1206:	b765                	j	11ae <vprintf+0x62>
    1208:	008a8493          	addi	s1,s5,8
    120c:	4685                	li	a3,1
    120e:	4629                	li	a2,10
    1210:	000aa583          	lw	a1,0(s5)
    1214:	8552                	mv	a0,s4
    1216:	00000097          	auipc	ra,0x0
    121a:	e9a080e7          	jalr	-358(ra) # 10b0 <printint>
    121e:	8aa6                	mv	s5,s1
    1220:	4901                	li	s2,0
    1222:	b771                	j	11ae <vprintf+0x62>
    1224:	008a8493          	addi	s1,s5,8
    1228:	4681                	li	a3,0
    122a:	4629                	li	a2,10
    122c:	000aa583          	lw	a1,0(s5)
    1230:	8552                	mv	a0,s4
    1232:	00000097          	auipc	ra,0x0
    1236:	e7e080e7          	jalr	-386(ra) # 10b0 <printint>
    123a:	8aa6                	mv	s5,s1
    123c:	4901                	li	s2,0
    123e:	bf85                	j	11ae <vprintf+0x62>
    1240:	008a8493          	addi	s1,s5,8
    1244:	4681                	li	a3,0
    1246:	4641                	li	a2,16
    1248:	000aa583          	lw	a1,0(s5)
    124c:	8552                	mv	a0,s4
    124e:	00000097          	auipc	ra,0x0
    1252:	e62080e7          	jalr	-414(ra) # 10b0 <printint>
    1256:	8aa6                	mv	s5,s1
    1258:	4901                	li	s2,0
    125a:	bf91                	j	11ae <vprintf+0x62>
    125c:	008a8913          	addi	s2,s5,8
    1260:	000aba83          	ld	s5,0(s5)
    1264:	03000593          	li	a1,48
    1268:	8552                	mv	a0,s4
    126a:	00000097          	auipc	ra,0x0
    126e:	e2a080e7          	jalr	-470(ra) # 1094 <putc>
    1272:	85e6                	mv	a1,s9
    1274:	8552                	mv	a0,s4
    1276:	00000097          	auipc	ra,0x0
    127a:	e1e080e7          	jalr	-482(ra) # 1094 <putc>
    127e:	44c1                	li	s1,16
    1280:	03cad793          	srli	a5,s5,0x3c
    1284:	97da                	add	a5,a5,s6
    1286:	0007c583          	lbu	a1,0(a5)
    128a:	8552                	mv	a0,s4
    128c:	00000097          	auipc	ra,0x0
    1290:	e08080e7          	jalr	-504(ra) # 1094 <putc>
    1294:	0a92                	slli	s5,s5,0x4
    1296:	34fd                	addiw	s1,s1,-1
    1298:	f4e5                	bnez	s1,1280 <vprintf+0x134>
    129a:	8aca                	mv	s5,s2
    129c:	4901                	li	s2,0
    129e:	bf01                	j	11ae <vprintf+0x62>
    12a0:	008a8913          	addi	s2,s5,8
    12a4:	000ab483          	ld	s1,0(s5)
    12a8:	c085                	beqz	s1,12c8 <vprintf+0x17c>
    12aa:	0004c583          	lbu	a1,0(s1)
    12ae:	c5b1                	beqz	a1,12fa <vprintf+0x1ae>
    12b0:	8552                	mv	a0,s4
    12b2:	00000097          	auipc	ra,0x0
    12b6:	de2080e7          	jalr	-542(ra) # 1094 <putc>
    12ba:	0485                	addi	s1,s1,1
    12bc:	0004c583          	lbu	a1,0(s1)
    12c0:	f9e5                	bnez	a1,12b0 <vprintf+0x164>
    12c2:	8aca                	mv	s5,s2
    12c4:	4901                	li	s2,0
    12c6:	b5e5                	j	11ae <vprintf+0x62>
    12c8:	d48d8493          	addi	s1,s11,-696 # 1d48 <mkdir+0xd6>
    12cc:	02800593          	li	a1,40
    12d0:	b7c5                	j	12b0 <vprintf+0x164>
    12d2:	008a8493          	addi	s1,s5,8
    12d6:	000ac583          	lbu	a1,0(s5)
    12da:	8552                	mv	a0,s4
    12dc:	00000097          	auipc	ra,0x0
    12e0:	db8080e7          	jalr	-584(ra) # 1094 <putc>
    12e4:	8aa6                	mv	s5,s1
    12e6:	4901                	li	s2,0
    12e8:	b5d9                	j	11ae <vprintf+0x62>
    12ea:	85ce                	mv	a1,s3
    12ec:	8552                	mv	a0,s4
    12ee:	00000097          	auipc	ra,0x0
    12f2:	da6080e7          	jalr	-602(ra) # 1094 <putc>
    12f6:	4901                	li	s2,0
    12f8:	bd5d                	j	11ae <vprintf+0x62>
    12fa:	8aca                	mv	s5,s2
    12fc:	4901                	li	s2,0
    12fe:	bd45                	j	11ae <vprintf+0x62>
    1300:	70a6                	ld	ra,104(sp)
    1302:	7406                	ld	s0,96(sp)
    1304:	64e6                	ld	s1,88(sp)
    1306:	6946                	ld	s2,80(sp)
    1308:	69a6                	ld	s3,72(sp)
    130a:	6a06                	ld	s4,64(sp)
    130c:	7ae2                	ld	s5,56(sp)
    130e:	7b42                	ld	s6,48(sp)
    1310:	7ba2                	ld	s7,40(sp)
    1312:	7c02                	ld	s8,32(sp)
    1314:	6ce2                	ld	s9,24(sp)
    1316:	6d42                	ld	s10,16(sp)
    1318:	6da2                	ld	s11,8(sp)
    131a:	6165                	addi	sp,sp,112
    131c:	8082                	ret

000000000000131e <fprintf>:
    131e:	715d                	addi	sp,sp,-80
    1320:	ec06                	sd	ra,24(sp)
    1322:	f032                	sd	a2,32(sp)
    1324:	f436                	sd	a3,40(sp)
    1326:	f83a                	sd	a4,48(sp)
    1328:	fc3e                	sd	a5,56(sp)
    132a:	e0c2                	sd	a6,64(sp)
    132c:	e4c6                	sd	a7,72(sp)
    132e:	1010                	addi	a2,sp,32
    1330:	e432                	sd	a2,8(sp)
    1332:	00000097          	auipc	ra,0x0
    1336:	e1a080e7          	jalr	-486(ra) # 114c <vprintf>
    133a:	60e2                	ld	ra,24(sp)
    133c:	6161                	addi	sp,sp,80
    133e:	8082                	ret

0000000000001340 <printf>:
    1340:	711d                	addi	sp,sp,-96
    1342:	ec06                	sd	ra,24(sp)
    1344:	f42e                	sd	a1,40(sp)
    1346:	f832                	sd	a2,48(sp)
    1348:	fc36                	sd	a3,56(sp)
    134a:	e0ba                	sd	a4,64(sp)
    134c:	e4be                	sd	a5,72(sp)
    134e:	e8c2                	sd	a6,80(sp)
    1350:	ecc6                	sd	a7,88(sp)
    1352:	1030                	addi	a2,sp,40
    1354:	e432                	sd	a2,8(sp)
    1356:	85aa                	mv	a1,a0
    1358:	4505                	li	a0,1
    135a:	00000097          	auipc	ra,0x0
    135e:	df2080e7          	jalr	-526(ra) # 114c <vprintf>
    1362:	60e2                	ld	ra,24(sp)
    1364:	6125                	addi	sp,sp,96
    1366:	8082                	ret

0000000000001368 <cksum>:
    1368:	cdb1                	beqz	a1,13c4 <cksum+0x5c>
    136a:	00b50833          	add	a6,a0,a1
    136e:	4781                	li	a5,0
    1370:	00002637          	lui	a2,0x2
    1374:	d6860613          	addi	a2,a2,-664 # 1d68 <crctab>
    1378:	0505                	addi	a0,a0,1
    137a:	0087969b          	slliw	a3,a5,0x8
    137e:	0187d71b          	srliw	a4,a5,0x18
    1382:	fff54783          	lbu	a5,-1(a0)
    1386:	8f3d                	xor	a4,a4,a5
    1388:	1702                	slli	a4,a4,0x20
    138a:	9301                	srli	a4,a4,0x20
    138c:	070a                	slli	a4,a4,0x2
    138e:	9732                	add	a4,a4,a2
    1390:	431c                	lw	a5,0(a4)
    1392:	8fb5                	xor	a5,a5,a3
    1394:	2781                	sext.w	a5,a5
    1396:	fea811e3          	bne	a6,a0,1378 <cksum+0x10>
    139a:	00002637          	lui	a2,0x2
    139e:	d6860613          	addi	a2,a2,-664 # 1d68 <crctab>
    13a2:	0ff5f693          	andi	a3,a1,255
    13a6:	81a1                	srli	a1,a1,0x8
    13a8:	0087951b          	slliw	a0,a5,0x8
    13ac:	0187d71b          	srliw	a4,a5,0x18
    13b0:	8f35                	xor	a4,a4,a3
    13b2:	070a                	slli	a4,a4,0x2
    13b4:	9732                	add	a4,a4,a2
    13b6:	431c                	lw	a5,0(a4)
    13b8:	8fa9                	xor	a5,a5,a0
    13ba:	2781                	sext.w	a5,a5
    13bc:	f1fd                	bnez	a1,13a2 <cksum+0x3a>
    13be:	fff7c513          	not	a0,a5
    13c2:	8082                	ret
    13c4:	4781                	li	a5,0
    13c6:	bfe5                	j	13be <cksum+0x56>

00000000000013c8 <swap_bytes>:
    13c8:	ce19                	beqz	a2,13e6 <swap_bytes+0x1e>
    13ca:	87aa                	mv	a5,a0
    13cc:	962a                	add	a2,a2,a0
    13ce:	0007c703          	lbu	a4,0(a5)
    13d2:	0005c683          	lbu	a3,0(a1)
    13d6:	00d78023          	sb	a3,0(a5)
    13da:	00e58023          	sb	a4,0(a1)
    13de:	0785                	addi	a5,a5,1
    13e0:	0585                	addi	a1,a1,1
    13e2:	fec796e3          	bne	a5,a2,13ce <swap_bytes+0x6>
    13e6:	8082                	ret

00000000000013e8 <random_init>:
    13e8:	7139                	addi	sp,sp,-64
    13ea:	fc06                	sd	ra,56(sp)
    13ec:	f822                	sd	s0,48(sp)
    13ee:	f426                	sd	s1,40(sp)
    13f0:	f04a                	sd	s2,32(sp)
    13f2:	ec4e                	sd	s3,24(sp)
    13f4:	e852                	sd	s4,16(sp)
    13f6:	c62a                	sw	a0,12(sp)
    13f8:	000037b7          	lui	a5,0x3
    13fc:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    1400:	eca5                	bnez	s1,1478 <random_init+0x90>
    1402:	00003737          	lui	a4,0x3
    1406:	01070913          	addi	s2,a4,16 # 3010 <s>
    140a:	01070713          	addi	a4,a4,16
    140e:	87a6                	mv	a5,s1
    1410:	10000693          	li	a3,256
    1414:	00f70023          	sb	a5,0(a4)
    1418:	2785                	addiw	a5,a5,1
    141a:	0705                	addi	a4,a4,1
    141c:	fed79ce3          	bne	a5,a3,1414 <random_init+0x2c>
    1420:	4401                	li	s0,0
    1422:	000039b7          	lui	s3,0x3
    1426:	01098993          	addi	s3,s3,16 # 3010 <s>
    142a:	10000a13          	li	s4,256
    142e:	0034f793          	andi	a5,s1,3
    1432:	0818                	addi	a4,sp,16
    1434:	97ba                	add	a5,a5,a4
    1436:	ffc7c783          	lbu	a5,-4(a5)
    143a:	00094703          	lbu	a4,0(s2)
    143e:	9fb9                	addw	a5,a5,a4
    1440:	9c3d                	addw	s0,s0,a5
    1442:	0ff47413          	andi	s0,s0,255
    1446:	4605                	li	a2,1
    1448:	008985b3          	add	a1,s3,s0
    144c:	854a                	mv	a0,s2
    144e:	00000097          	auipc	ra,0x0
    1452:	f7a080e7          	jalr	-134(ra) # 13c8 <swap_bytes>
    1456:	2485                	addiw	s1,s1,1
    1458:	0905                	addi	s2,s2,1
    145a:	fd449ae3          	bne	s1,s4,142e <random_init+0x46>
    145e:	000037b7          	lui	a5,0x3
    1462:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1466:	000037b7          	lui	a5,0x3
    146a:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    146e:	000037b7          	lui	a5,0x3
    1472:	4705                	li	a4,1
    1474:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1478:	70e2                	ld	ra,56(sp)
    147a:	7442                	ld	s0,48(sp)
    147c:	74a2                	ld	s1,40(sp)
    147e:	7902                	ld	s2,32(sp)
    1480:	69e2                	ld	s3,24(sp)
    1482:	6a42                	ld	s4,16(sp)
    1484:	6121                	addi	sp,sp,64
    1486:	8082                	ret

0000000000001488 <random_bytes>:
    1488:	7139                	addi	sp,sp,-64
    148a:	fc06                	sd	ra,56(sp)
    148c:	f822                	sd	s0,48(sp)
    148e:	f426                	sd	s1,40(sp)
    1490:	f04a                	sd	s2,32(sp)
    1492:	ec4e                	sd	s3,24(sp)
    1494:	e852                	sd	s4,16(sp)
    1496:	e456                	sd	s5,8(sp)
    1498:	e05a                	sd	s6,0(sp)
    149a:	892a                	mv	s2,a0
    149c:	8aae                	mv	s5,a1
    149e:	000037b7          	lui	a5,0x3
    14a2:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14a6:	c3c1                	beqz	a5,1526 <random_bytes+0x9e>
    14a8:	060a8563          	beqz	s5,1512 <random_bytes+0x8a>
    14ac:	9aca                	add	s5,s5,s2
    14ae:	00003a37          	lui	s4,0x3
    14b2:	000034b7          	lui	s1,0x3
    14b6:	01048493          	addi	s1,s1,16 # 3010 <s>
    14ba:	000039b7          	lui	s3,0x3
    14be:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14c2:	2505                	addiw	a0,a0,1
    14c4:	0ff57513          	andi	a0,a0,255
    14c8:	00aa02a3          	sb	a0,5(s4)
    14cc:	00a48b33          	add	s6,s1,a0
    14d0:	000b4403          	lbu	s0,0(s6)
    14d4:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14d8:	9c3d                	addw	s0,s0,a5
    14da:	0ff47413          	andi	s0,s0,255
    14de:	00898223          	sb	s0,4(s3)
    14e2:	4605                	li	a2,1
    14e4:	008485b3          	add	a1,s1,s0
    14e8:	855a                	mv	a0,s6
    14ea:	00000097          	auipc	ra,0x0
    14ee:	ede080e7          	jalr	-290(ra) # 13c8 <swap_bytes>
    14f2:	9426                	add	s0,s0,s1
    14f4:	000b4783          	lbu	a5,0(s6)
    14f8:	00044703          	lbu	a4,0(s0)
    14fc:	9fb9                	addw	a5,a5,a4
    14fe:	0ff7f793          	andi	a5,a5,255
    1502:	97a6                	add	a5,a5,s1
    1504:	0007c783          	lbu	a5,0(a5)
    1508:	00f90023          	sb	a5,0(s2)
    150c:	0905                	addi	s2,s2,1
    150e:	fb2a98e3          	bne	s5,s2,14be <random_bytes+0x36>
    1512:	70e2                	ld	ra,56(sp)
    1514:	7442                	ld	s0,48(sp)
    1516:	74a2                	ld	s1,40(sp)
    1518:	7902                	ld	s2,32(sp)
    151a:	69e2                	ld	s3,24(sp)
    151c:	6a42                	ld	s4,16(sp)
    151e:	6aa2                	ld	s5,8(sp)
    1520:	6b02                	ld	s6,0(sp)
    1522:	6121                	addi	sp,sp,64
    1524:	8082                	ret
    1526:	4501                	li	a0,0
    1528:	00000097          	auipc	ra,0x0
    152c:	ec0080e7          	jalr	-320(ra) # 13e8 <random_init>
    1530:	bfa5                	j	14a8 <random_bytes+0x20>

0000000000001532 <random_ulong>:
    1532:	1101                	addi	sp,sp,-32
    1534:	ec06                	sd	ra,24(sp)
    1536:	45a1                	li	a1,8
    1538:	0028                	addi	a0,sp,8
    153a:	00000097          	auipc	ra,0x0
    153e:	f4e080e7          	jalr	-178(ra) # 1488 <random_bytes>
    1542:	6522                	ld	a0,8(sp)
    1544:	60e2                	ld	ra,24(sp)
    1546:	6105                	addi	sp,sp,32
    1548:	8082                	ret

000000000000154a <shuffle>:
    154a:	c9b9                	beqz	a1,15a0 <shuffle+0x56>
    154c:	7179                	addi	sp,sp,-48
    154e:	f406                	sd	ra,40(sp)
    1550:	f022                	sd	s0,32(sp)
    1552:	ec26                	sd	s1,24(sp)
    1554:	e84a                	sd	s2,16(sp)
    1556:	e44e                	sd	s3,8(sp)
    1558:	e052                	sd	s4,0(sp)
    155a:	8a2a                	mv	s4,a0
    155c:	89ae                	mv	s3,a1
    155e:	84b2                	mv	s1,a2
    1560:	892a                	mv	s2,a0
    1562:	4401                	li	s0,0
    1564:	00000097          	auipc	ra,0x0
    1568:	fce080e7          	jalr	-50(ra) # 1532 <random_ulong>
    156c:	408985b3          	sub	a1,s3,s0
    1570:	02b575b3          	remu	a1,a0,a1
    1574:	95a2                	add	a1,a1,s0
    1576:	029585b3          	mul	a1,a1,s1
    157a:	8626                	mv	a2,s1
    157c:	95d2                	add	a1,a1,s4
    157e:	854a                	mv	a0,s2
    1580:	00000097          	auipc	ra,0x0
    1584:	e48080e7          	jalr	-440(ra) # 13c8 <swap_bytes>
    1588:	0405                	addi	s0,s0,1
    158a:	9926                	add	s2,s2,s1
    158c:	fc899ce3          	bne	s3,s0,1564 <shuffle+0x1a>
    1590:	70a2                	ld	ra,40(sp)
    1592:	7402                	ld	s0,32(sp)
    1594:	64e2                	ld	s1,24(sp)
    1596:	6942                	ld	s2,16(sp)
    1598:	69a2                	ld	s3,8(sp)
    159a:	6a02                	ld	s4,0(sp)
    159c:	6145                	addi	sp,sp,48
    159e:	8082                	ret
    15a0:	8082                	ret

00000000000015a2 <arc4_init>:
    15a2:	100500a3          	sb	zero,257(a0)
    15a6:	10050023          	sb	zero,256(a0)
    15aa:	4781                	li	a5,0
    15ac:	10000693          	li	a3,256
    15b0:	00f50733          	add	a4,a0,a5
    15b4:	00f70023          	sb	a5,0(a4)
    15b8:	0785                	addi	a5,a5,1
    15ba:	fed79be3          	bne	a5,a3,15b0 <arc4_init+0xe>
    15be:	86aa                	mv	a3,a0
    15c0:	10050e13          	addi	t3,a0,256
    15c4:	4701                	li	a4,0
    15c6:	4781                	li	a5,0
    15c8:	0006c883          	lbu	a7,0(a3)
    15cc:	00f58833          	add	a6,a1,a5
    15d0:	00084803          	lbu	a6,0(a6)
    15d4:	00e8873b          	addw	a4,a7,a4
    15d8:	00e8073b          	addw	a4,a6,a4
    15dc:	0ff77713          	andi	a4,a4,255
    15e0:	00e50833          	add	a6,a0,a4
    15e4:	00084303          	lbu	t1,0(a6)
    15e8:	00668023          	sb	t1,0(a3)
    15ec:	01180023          	sb	a7,0(a6)
    15f0:	0785                	addi	a5,a5,1
    15f2:	00c7b833          	sltu	a6,a5,a2
    15f6:	41000833          	neg	a6,a6
    15fa:	0107f7b3          	and	a5,a5,a6
    15fe:	0685                	addi	a3,a3,1
    1600:	fdc694e3          	bne	a3,t3,15c8 <arc4_init+0x26>
    1604:	8082                	ret

0000000000001606 <arc4_crypt>:
    1606:	10054e03          	lbu	t3,256(a0)
    160a:	10154803          	lbu	a6,257(a0)
    160e:	fff60e93          	addi	t4,a2,-1
    1612:	c225                	beqz	a2,1672 <arc4_crypt+0x6c>
    1614:	00c588b3          	add	a7,a1,a2
    1618:	86ae                	mv	a3,a1
    161a:	001e031b          	addiw	t1,t3,1
    161e:	40b3033b          	subw	t1,t1,a1
    1622:	00d3073b          	addw	a4,t1,a3
    1626:	0ff77713          	andi	a4,a4,255
    162a:	972a                	add	a4,a4,a0
    162c:	00074603          	lbu	a2,0(a4)
    1630:	0106083b          	addw	a6,a2,a6
    1634:	0ff87813          	andi	a6,a6,255
    1638:	010507b3          	add	a5,a0,a6
    163c:	0007c583          	lbu	a1,0(a5)
    1640:	00b70023          	sb	a1,0(a4)
    1644:	00c78023          	sb	a2,0(a5)
    1648:	0685                	addi	a3,a3,1
    164a:	00074783          	lbu	a5,0(a4)
    164e:	9fb1                	addw	a5,a5,a2
    1650:	0ff7f793          	andi	a5,a5,255
    1654:	97aa                	add	a5,a5,a0
    1656:	0007c783          	lbu	a5,0(a5)
    165a:	fff6c703          	lbu	a4,-1(a3)
    165e:	8fb9                	xor	a5,a5,a4
    1660:	fef68fa3          	sb	a5,-1(a3)
    1664:	fb169fe3          	bne	a3,a7,1622 <arc4_crypt+0x1c>
    1668:	2e85                	addiw	t4,t4,1
    166a:	01ce8e3b          	addw	t3,t4,t3
    166e:	0ffe7e13          	andi	t3,t3,255
    1672:	11c50023          	sb	t3,256(a0)
    1676:	110500a3          	sb	a6,257(a0)
    167a:	8082                	ret

000000000000167c <_main>:
    167c:	1141                	addi	sp,sp,-16
    167e:	e406                	sd	ra,8(sp)
    1680:	00000097          	auipc	ra,0x0
    1684:	980080e7          	jalr	-1664(ra) # 1000 <main>
    1688:	4501                	li	a0,0
    168a:	00000097          	auipc	ra,0x0
    168e:	578080e7          	jalr	1400(ra) # 1c02 <exit>
    1692:	60a2                	ld	ra,8(sp)
    1694:	0141                	addi	sp,sp,16
    1696:	8082                	ret

0000000000001698 <strcmp>:
    1698:	00054783          	lbu	a5,0(a0)
    169c:	cb91                	beqz	a5,16b0 <strcmp+0x18>
    169e:	0005c703          	lbu	a4,0(a1)
    16a2:	00f71763          	bne	a4,a5,16b0 <strcmp+0x18>
    16a6:	0505                	addi	a0,a0,1
    16a8:	0585                	addi	a1,a1,1
    16aa:	00054783          	lbu	a5,0(a0)
    16ae:	fbe5                	bnez	a5,169e <strcmp+0x6>
    16b0:	0005c503          	lbu	a0,0(a1)
    16b4:	40a7853b          	subw	a0,a5,a0
    16b8:	8082                	ret

00000000000016ba <strcpy>:
    16ba:	87aa                	mv	a5,a0
    16bc:	0585                	addi	a1,a1,1
    16be:	0785                	addi	a5,a5,1
    16c0:	fff5c703          	lbu	a4,-1(a1)
    16c4:	fee78fa3          	sb	a4,-1(a5)
    16c8:	fb75                	bnez	a4,16bc <strcpy+0x2>
    16ca:	8082                	ret

00000000000016cc <strlen>:
    16cc:	00054783          	lbu	a5,0(a0)
    16d0:	cf81                	beqz	a5,16e8 <strlen+0x1c>
    16d2:	0505                	addi	a0,a0,1
    16d4:	87aa                	mv	a5,a0
    16d6:	4685                	li	a3,1
    16d8:	9e89                	subw	a3,a3,a0
    16da:	00f6853b          	addw	a0,a3,a5
    16de:	0785                	addi	a5,a5,1
    16e0:	fff7c703          	lbu	a4,-1(a5)
    16e4:	fb7d                	bnez	a4,16da <strlen+0xe>
    16e6:	8082                	ret
    16e8:	4501                	li	a0,0
    16ea:	8082                	ret

00000000000016ec <memset>:
    16ec:	ca19                	beqz	a2,1702 <memset+0x16>
    16ee:	87aa                	mv	a5,a0
    16f0:	1602                	slli	a2,a2,0x20
    16f2:	9201                	srli	a2,a2,0x20
    16f4:	00a60733          	add	a4,a2,a0
    16f8:	00b78023          	sb	a1,0(a5)
    16fc:	0785                	addi	a5,a5,1
    16fe:	fee79de3          	bne	a5,a4,16f8 <memset+0xc>
    1702:	8082                	ret

0000000000001704 <memcmp>:
    1704:	1101                	addi	sp,sp,-32
    1706:	ec06                	sd	ra,24(sp)
    1708:	e822                	sd	s0,16(sp)
    170a:	e426                	sd	s1,8(sp)
    170c:	e04a                	sd	s2,0(sp)
    170e:	892a                	mv	s2,a0
    1710:	842e                	mv	s0,a1
    1712:	84b2                	mv	s1,a2
    1714:	c915                	beqz	a0,1748 <memcmp+0x44>
    1716:	c5ad                	beqz	a1,1780 <memcmp+0x7c>
    1718:	fff60713          	addi	a4,a2,-1
    171c:	c645                	beqz	a2,17c4 <memcmp+0xc0>
    171e:	87ca                	mv	a5,s2
    1720:	00190613          	addi	a2,s2,1
    1724:	963a                	add	a2,a2,a4
    1726:	0007c683          	lbu	a3,0(a5)
    172a:	00044703          	lbu	a4,0(s0)
    172e:	08e69463          	bne	a3,a4,17b6 <memcmp+0xb2>
    1732:	0785                	addi	a5,a5,1
    1734:	0405                	addi	s0,s0,1
    1736:	fec798e3          	bne	a5,a2,1726 <memcmp+0x22>
    173a:	4501                	li	a0,0
    173c:	60e2                	ld	ra,24(sp)
    173e:	6442                	ld	s0,16(sp)
    1740:	64a2                	ld	s1,8(sp)
    1742:	6902                	ld	s2,0(sp)
    1744:	6105                	addi	sp,sp,32
    1746:	8082                	ret
    1748:	4501                	li	a0,0
    174a:	da6d                	beqz	a2,173c <memcmp+0x38>
    174c:	03200693          	li	a3,50
    1750:	00002637          	lui	a2,0x2
    1754:	16860613          	addi	a2,a2,360 # 2168 <crctab+0x400>
    1758:	000025b7          	lui	a1,0x2
    175c:	17858593          	addi	a1,a1,376 # 2178 <crctab+0x410>
    1760:	4509                	li	a0,2
    1762:	00000097          	auipc	ra,0x0
    1766:	bbc080e7          	jalr	-1092(ra) # 131e <fprintf>
    176a:	650d                	lui	a0,0x3
    176c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1770:	00000097          	auipc	ra,0x0
    1774:	492080e7          	jalr	1170(ra) # 1c02 <exit>
    1778:	fff48713          	addi	a4,s1,-1
    177c:	f04d                	bnez	s0,171e <memcmp+0x1a>
    177e:	a011                	j	1782 <memcmp+0x7e>
    1780:	c221                	beqz	a2,17c0 <memcmp+0xbc>
    1782:	03300693          	li	a3,51
    1786:	00002637          	lui	a2,0x2
    178a:	16860613          	addi	a2,a2,360 # 2168 <crctab+0x400>
    178e:	000025b7          	lui	a1,0x2
    1792:	1c058593          	addi	a1,a1,448 # 21c0 <crctab+0x458>
    1796:	4509                	li	a0,2
    1798:	00000097          	auipc	ra,0x0
    179c:	b86080e7          	jalr	-1146(ra) # 131e <fprintf>
    17a0:	650d                	lui	a0,0x3
    17a2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17a6:	00000097          	auipc	ra,0x0
    17aa:	45c080e7          	jalr	1116(ra) # 1c02 <exit>
    17ae:	fff48713          	addi	a4,s1,-1
    17b2:	4401                	li	s0,0
    17b4:	b7ad                	j	171e <memcmp+0x1a>
    17b6:	4505                	li	a0,1
    17b8:	f8d762e3          	bltu	a4,a3,173c <memcmp+0x38>
    17bc:	557d                	li	a0,-1
    17be:	bfbd                	j	173c <memcmp+0x38>
    17c0:	4501                	li	a0,0
    17c2:	bfad                	j	173c <memcmp+0x38>
    17c4:	4501                	li	a0,0
    17c6:	bf9d                	j	173c <memcmp+0x38>

00000000000017c8 <memcpy>:
    17c8:	1101                	addi	sp,sp,-32
    17ca:	ec06                	sd	ra,24(sp)
    17cc:	e822                	sd	s0,16(sp)
    17ce:	e426                	sd	s1,8(sp)
    17d0:	e04a                	sd	s2,0(sp)
    17d2:	84aa                	mv	s1,a0
    17d4:	842e                	mv	s0,a1
    17d6:	8932                	mv	s2,a2
    17d8:	c51d                	beqz	a0,1806 <memcpy+0x3e>
    17da:	c1ad                	beqz	a1,183c <memcpy+0x74>
    17dc:	fff60693          	addi	a3,a2,-1
    17e0:	ce01                	beqz	a2,17f8 <memcpy+0x30>
    17e2:	0685                	addi	a3,a3,1
    17e4:	96a6                	add	a3,a3,s1
    17e6:	87a6                	mv	a5,s1
    17e8:	0405                	addi	s0,s0,1
    17ea:	0785                	addi	a5,a5,1
    17ec:	fff44703          	lbu	a4,-1(s0)
    17f0:	fee78fa3          	sb	a4,-1(a5)
    17f4:	fed79ae3          	bne	a5,a3,17e8 <memcpy+0x20>
    17f8:	8526                	mv	a0,s1
    17fa:	60e2                	ld	ra,24(sp)
    17fc:	6442                	ld	s0,16(sp)
    17fe:	64a2                	ld	s1,8(sp)
    1800:	6902                	ld	s2,0(sp)
    1802:	6105                	addi	sp,sp,32
    1804:	8082                	ret
    1806:	da6d                	beqz	a2,17f8 <memcpy+0x30>
    1808:	04000693          	li	a3,64
    180c:	00002637          	lui	a2,0x2
    1810:	16860613          	addi	a2,a2,360 # 2168 <crctab+0x400>
    1814:	000025b7          	lui	a1,0x2
    1818:	20858593          	addi	a1,a1,520 # 2208 <crctab+0x4a0>
    181c:	4509                	li	a0,2
    181e:	00000097          	auipc	ra,0x0
    1822:	b00080e7          	jalr	-1280(ra) # 131e <fprintf>
    1826:	650d                	lui	a0,0x3
    1828:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    182c:	00000097          	auipc	ra,0x0
    1830:	3d6080e7          	jalr	982(ra) # 1c02 <exit>
    1834:	fff90693          	addi	a3,s2,-1
    1838:	f44d                	bnez	s0,17e2 <memcpy+0x1a>
    183a:	a011                	j	183e <memcpy+0x76>
    183c:	de55                	beqz	a2,17f8 <memcpy+0x30>
    183e:	04100693          	li	a3,65
    1842:	00002637          	lui	a2,0x2
    1846:	16860613          	addi	a2,a2,360 # 2168 <crctab+0x400>
    184a:	000025b7          	lui	a1,0x2
    184e:	25058593          	addi	a1,a1,592 # 2250 <crctab+0x4e8>
    1852:	4509                	li	a0,2
    1854:	00000097          	auipc	ra,0x0
    1858:	aca080e7          	jalr	-1334(ra) # 131e <fprintf>
    185c:	650d                	lui	a0,0x3
    185e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1862:	00000097          	auipc	ra,0x0
    1866:	3a0080e7          	jalr	928(ra) # 1c02 <exit>
    186a:	fff90693          	addi	a3,s2,-1
    186e:	4401                	li	s0,0
    1870:	bf8d                	j	17e2 <memcpy+0x1a>

0000000000001872 <itoa>:
    1872:	1101                	addi	sp,sp,-32
    1874:	ec06                	sd	ra,24(sp)
    1876:	e822                	sd	s0,16(sp)
    1878:	e426                	sd	s1,8(sp)
    187a:	842a                	mv	s0,a0
    187c:	41f5d71b          	sraiw	a4,a1,0x1f
    1880:	00e5c7b3          	xor	a5,a1,a4
    1884:	9f99                	subw	a5,a5,a4
    1886:	84aa                	mv	s1,a0
    1888:	862a                	mv	a2,a0
    188a:	4681                	li	a3,0
    188c:	4529                	li	a0,10
    188e:	4825                	li	a6,9
    1890:	88b6                	mv	a7,a3
    1892:	2685                	addiw	a3,a3,1
    1894:	02a7e73b          	remw	a4,a5,a0
    1898:	0307071b          	addiw	a4,a4,48
    189c:	00e60023          	sb	a4,0(a2)
    18a0:	873e                	mv	a4,a5
    18a2:	02a7c7bb          	divw	a5,a5,a0
    18a6:	0605                	addi	a2,a2,1
    18a8:	fee844e3          	blt	a6,a4,1890 <itoa+0x1e>
    18ac:	0405c863          	bltz	a1,18fc <itoa+0x8a>
    18b0:	96a2                	add	a3,a3,s0
    18b2:	00068023          	sb	zero,0(a3)
    18b6:	8522                	mv	a0,s0
    18b8:	00000097          	auipc	ra,0x0
    18bc:	e14080e7          	jalr	-492(ra) # 16cc <strlen>
    18c0:	fff5071b          	addiw	a4,a0,-1
    18c4:	02e05763          	blez	a4,18f2 <itoa+0x80>
    18c8:	9722                	add	a4,a4,s0
    18ca:	4681                	li	a3,0
    18cc:	0004c783          	lbu	a5,0(s1)
    18d0:	00074603          	lbu	a2,0(a4)
    18d4:	00c48023          	sb	a2,0(s1)
    18d8:	00f70023          	sb	a5,0(a4)
    18dc:	0016879b          	addiw	a5,a3,1
    18e0:	0007869b          	sext.w	a3,a5
    18e4:	0485                	addi	s1,s1,1
    18e6:	177d                	addi	a4,a4,-1
    18e8:	fff7c793          	not	a5,a5
    18ec:	9fa9                	addw	a5,a5,a0
    18ee:	fcf6cfe3          	blt	a3,a5,18cc <itoa+0x5a>
    18f2:	60e2                	ld	ra,24(sp)
    18f4:	6442                	ld	s0,16(sp)
    18f6:	64a2                	ld	s1,8(sp)
    18f8:	6105                	addi	sp,sp,32
    18fa:	8082                	ret
    18fc:	96a2                	add	a3,a3,s0
    18fe:	02d00793          	li	a5,45
    1902:	00f68023          	sb	a5,0(a3)
    1906:	0028869b          	addiw	a3,a7,2
    190a:	b75d                	j	18b0 <itoa+0x3e>

000000000000190c <atoi>:
    190c:	00054783          	lbu	a5,0(a0)
    1910:	02000713          	li	a4,32
    1914:	00e79763          	bne	a5,a4,1922 <atoi+0x16>
    1918:	0505                	addi	a0,a0,1
    191a:	00054783          	lbu	a5,0(a0)
    191e:	fee78de3          	beq	a5,a4,1918 <atoi+0xc>
    1922:	02b00713          	li	a4,43
    1926:	04e78663          	beq	a5,a4,1972 <atoi+0x66>
    192a:	02d00713          	li	a4,45
    192e:	4805                	li	a6,1
    1930:	04e78463          	beq	a5,a4,1978 <atoi+0x6c>
    1934:	00054683          	lbu	a3,0(a0)
    1938:	fd06879b          	addiw	a5,a3,-48
    193c:	0ff7f793          	andi	a5,a5,255
    1940:	4725                	li	a4,9
    1942:	02f76e63          	bltu	a4,a5,197e <atoi+0x72>
    1946:	4601                	li	a2,0
    1948:	45a5                	li	a1,9
    194a:	0505                	addi	a0,a0,1
    194c:	0026179b          	slliw	a5,a2,0x2
    1950:	9fb1                	addw	a5,a5,a2
    1952:	0017979b          	slliw	a5,a5,0x1
    1956:	9fb5                	addw	a5,a5,a3
    1958:	fd07861b          	addiw	a2,a5,-48
    195c:	00054683          	lbu	a3,0(a0)
    1960:	fd06871b          	addiw	a4,a3,-48
    1964:	0ff77713          	andi	a4,a4,255
    1968:	fee5f1e3          	bgeu	a1,a4,194a <atoi+0x3e>
    196c:	02c8053b          	mulw	a0,a6,a2
    1970:	8082                	ret
    1972:	0505                	addi	a0,a0,1
    1974:	4805                	li	a6,1
    1976:	bf7d                	j	1934 <atoi+0x28>
    1978:	0505                	addi	a0,a0,1
    197a:	587d                	li	a6,-1
    197c:	bf65                	j	1934 <atoi+0x28>
    197e:	4601                	li	a2,0
    1980:	b7f5                	j	196c <atoi+0x60>

0000000000001982 <check_file_handle>:
    1982:	d8010113          	addi	sp,sp,-640
    1986:	26113c23          	sd	ra,632(sp)
    198a:	26813823          	sd	s0,624(sp)
    198e:	26913423          	sd	s1,616(sp)
    1992:	27213023          	sd	s2,608(sp)
    1996:	25313c23          	sd	s3,600(sp)
    199a:	25413823          	sd	s4,592(sp)
    199e:	25513423          	sd	s5,584(sp)
    19a2:	25613023          	sd	s6,576(sp)
    19a6:	23713c23          	sd	s7,568(sp)
    19aa:	23813823          	sd	s8,560(sp)
    19ae:	23913423          	sd	s9,552(sp)
    19b2:	23a13023          	sd	s10,544(sp)
    19b6:	21b13c23          	sd	s11,536(sp)
    19ba:	8baa                	mv	s7,a0
    19bc:	8a2e                	mv	s4,a1
    19be:	8c32                	mv	s8,a2
    19c0:	89b6                	mv	s3,a3
    19c2:	040c                	addi	a1,sp,512
    19c4:	00000097          	auipc	ra,0x0
    19c8:	28e080e7          	jalr	654(ra) # 1c52 <fstat>
    19cc:	20813603          	ld	a2,520(sp)
    19d0:	03361163          	bne	a2,s3,19f2 <check_file_handle+0x70>
    19d4:	06098763          	beqz	s3,1a42 <check_file_handle+0xc0>
    19d8:	4901                	li	s2,0
    19da:	20000a93          	li	s5,512
    19de:	00002cb7          	lui	s9,0x2
    19e2:	00002db7          	lui	s11,0x2
    19e6:	6b0d                	lui	s6,0x3
    19e8:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19ec:	00002d37          	lui	s10,0x2
    19f0:	aa39                	j	1b0e <check_file_handle+0x18c>
    19f2:	86ce                	mv	a3,s3
    19f4:	85d2                	mv	a1,s4
    19f6:	00002537          	lui	a0,0x2
    19fa:	29850513          	addi	a0,a0,664 # 2298 <crctab+0x530>
    19fe:	00000097          	auipc	ra,0x0
    1a02:	942080e7          	jalr	-1726(ra) # 1340 <printf>
    1a06:	fc0999e3          	bnez	s3,19d8 <check_file_handle+0x56>
    1a0a:	20813683          	ld	a3,520(sp)
    1a0e:	03368a63          	beq	a3,s3,1a42 <check_file_handle+0xc0>
    1a12:	0a600813          	li	a6,166
    1a16:	000027b7          	lui	a5,0x2
    1a1a:	16878793          	addi	a5,a5,360 # 2168 <crctab+0x400>
    1a1e:	874e                	mv	a4,s3
    1a20:	8652                	mv	a2,s4
    1a22:	000025b7          	lui	a1,0x2
    1a26:	36858593          	addi	a1,a1,872 # 2368 <crctab+0x600>
    1a2a:	4509                	li	a0,2
    1a2c:	00000097          	auipc	ra,0x0
    1a30:	8f2080e7          	jalr	-1806(ra) # 131e <fprintf>
    1a34:	650d                	lui	a0,0x3
    1a36:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a3a:	00000097          	auipc	ra,0x0
    1a3e:	1c8080e7          	jalr	456(ra) # 1c02 <exit>
    1a42:	85d2                	mv	a1,s4
    1a44:	00002537          	lui	a0,0x2
    1a48:	3b050513          	addi	a0,a0,944 # 23b0 <crctab+0x648>
    1a4c:	00000097          	auipc	ra,0x0
    1a50:	8f4080e7          	jalr	-1804(ra) # 1340 <printf>
    1a54:	27813083          	ld	ra,632(sp)
    1a58:	27013403          	ld	s0,624(sp)
    1a5c:	26813483          	ld	s1,616(sp)
    1a60:	26013903          	ld	s2,608(sp)
    1a64:	25813983          	ld	s3,600(sp)
    1a68:	25013a03          	ld	s4,592(sp)
    1a6c:	24813a83          	ld	s5,584(sp)
    1a70:	24013b03          	ld	s6,576(sp)
    1a74:	23813b83          	ld	s7,568(sp)
    1a78:	23013c03          	ld	s8,560(sp)
    1a7c:	22813c83          	ld	s9,552(sp)
    1a80:	22013d03          	ld	s10,544(sp)
    1a84:	21813d83          	ld	s11,536(sp)
    1a88:	28010113          	addi	sp,sp,640
    1a8c:	8082                	ret
    1a8e:	09d00893          	li	a7,157
    1a92:	168c8813          	addi	a6,s9,360 # 2168 <crctab+0x400>
    1a96:	87aa                	mv	a5,a0
    1a98:	8752                	mv	a4,s4
    1a9a:	86ca                	mv	a3,s2
    1a9c:	8622                	mv	a2,s0
    1a9e:	2c8d8593          	addi	a1,s11,712 # 22c8 <crctab+0x560>
    1aa2:	4509                	li	a0,2
    1aa4:	00000097          	auipc	ra,0x0
    1aa8:	87a080e7          	jalr	-1926(ra) # 131e <fprintf>
    1aac:	855a                	mv	a0,s6
    1aae:	00000097          	auipc	ra,0x0
    1ab2:	154080e7          	jalr	340(ra) # 1c02 <exit>
    1ab6:	a89d                	j	1b2c <check_file_handle+0x1aa>
    1ab8:	00160593          	addi	a1,a2,1
    1abc:	0285f163          	bgeu	a1,s0,1ade <check_file_handle+0x15c>
    1ac0:	00c10733          	add	a4,sp,a2
    1ac4:	00b487b3          	add	a5,s1,a1
    1ac8:	00174683          	lbu	a3,1(a4)
    1acc:	0007c783          	lbu	a5,0(a5)
    1ad0:	00f68763          	beq	a3,a5,1ade <check_file_handle+0x15c>
    1ad4:	0585                	addi	a1,a1,1
    1ad6:	0705                	addi	a4,a4,1
    1ad8:	feb416e3          	bne	s0,a1,1ac4 <check_file_handle+0x142>
    1adc:	85a2                	mv	a1,s0
    1ade:	08100813          	li	a6,129
    1ae2:	168c8793          	addi	a5,s9,360
    1ae6:	8752                	mv	a4,s4
    1ae8:	012606b3          	add	a3,a2,s2
    1aec:	40c58633          	sub	a2,a1,a2
    1af0:	310d0593          	addi	a1,s10,784 # 2310 <crctab+0x5a8>
    1af4:	4509                	li	a0,2
    1af6:	00000097          	auipc	ra,0x0
    1afa:	828080e7          	jalr	-2008(ra) # 131e <fprintf>
    1afe:	855a                	mv	a0,s6
    1b00:	00000097          	auipc	ra,0x0
    1b04:	102080e7          	jalr	258(ra) # 1c02 <exit>
    1b08:	9922                	add	s2,s2,s0
    1b0a:	f13970e3          	bgeu	s2,s3,1a0a <check_file_handle+0x88>
    1b0e:	41298433          	sub	s0,s3,s2
    1b12:	008af363          	bgeu	s5,s0,1b18 <check_file_handle+0x196>
    1b16:	8456                	mv	s0,s5
    1b18:	0004061b          	sext.w	a2,s0
    1b1c:	858a                	mv	a1,sp
    1b1e:	855e                	mv	a0,s7
    1b20:	00000097          	auipc	ra,0x0
    1b24:	10a080e7          	jalr	266(ra) # 1c2a <read>
    1b28:	f68513e3          	bne	a0,s0,1a8e <check_file_handle+0x10c>
    1b2c:	012c04b3          	add	s1,s8,s2
    1b30:	8622                	mv	a2,s0
    1b32:	85a6                	mv	a1,s1
    1b34:	850a                	mv	a0,sp
    1b36:	00000097          	auipc	ra,0x0
    1b3a:	bce080e7          	jalr	-1074(ra) # 1704 <memcmp>
    1b3e:	d569                	beqz	a0,1b08 <check_file_handle+0x186>
    1b40:	03298163          	beq	s3,s2,1b62 <check_file_handle+0x1e0>
    1b44:	870a                	mv	a4,sp
    1b46:	4601                	li	a2,0
    1b48:	00c487b3          	add	a5,s1,a2
    1b4c:	00074683          	lbu	a3,0(a4)
    1b50:	0007c783          	lbu	a5,0(a5)
    1b54:	f6f692e3          	bne	a3,a5,1ab8 <check_file_handle+0x136>
    1b58:	0605                	addi	a2,a2,1
    1b5a:	0705                	addi	a4,a4,1
    1b5c:	fe8666e3          	bltu	a2,s0,1b48 <check_file_handle+0x1c6>
    1b60:	bfa1                	j	1ab8 <check_file_handle+0x136>
    1b62:	4601                	li	a2,0
    1b64:	4585                	li	a1,1
    1b66:	bfa5                	j	1ade <check_file_handle+0x15c>

0000000000001b68 <check_file>:
    1b68:	7179                	addi	sp,sp,-48
    1b6a:	f406                	sd	ra,40(sp)
    1b6c:	f022                	sd	s0,32(sp)
    1b6e:	ec26                	sd	s1,24(sp)
    1b70:	e84a                	sd	s2,16(sp)
    1b72:	e44e                	sd	s3,8(sp)
    1b74:	84aa                	mv	s1,a0
    1b76:	892e                	mv	s2,a1
    1b78:	89b2                	mv	s3,a2
    1b7a:	4581                	li	a1,0
    1b7c:	00000097          	auipc	ra,0x0
    1b80:	0a6080e7          	jalr	166(ra) # 1c22 <open>
    1b84:	842a                	mv	s0,a0
    1b86:	4789                	li	a5,2
    1b88:	02a7df63          	bge	a5,a0,1bc6 <check_file+0x5e>
    1b8c:	86ce                	mv	a3,s3
    1b8e:	864a                	mv	a2,s2
    1b90:	85a6                	mv	a1,s1
    1b92:	8522                	mv	a0,s0
    1b94:	00000097          	auipc	ra,0x0
    1b98:	dee080e7          	jalr	-530(ra) # 1982 <check_file_handle>
    1b9c:	85a6                	mv	a1,s1
    1b9e:	00002537          	lui	a0,0x2
    1ba2:	43850513          	addi	a0,a0,1080 # 2438 <crctab+0x6d0>
    1ba6:	fffff097          	auipc	ra,0xfffff
    1baa:	79a080e7          	jalr	1946(ra) # 1340 <printf>
    1bae:	8522                	mv	a0,s0
    1bb0:	00000097          	auipc	ra,0x0
    1bb4:	09a080e7          	jalr	154(ra) # 1c4a <close>
    1bb8:	70a2                	ld	ra,40(sp)
    1bba:	7402                	ld	s0,32(sp)
    1bbc:	64e2                	ld	s1,24(sp)
    1bbe:	6942                	ld	s2,16(sp)
    1bc0:	69a2                	ld	s3,8(sp)
    1bc2:	6145                	addi	sp,sp,48
    1bc4:	8082                	ret
    1bc6:	0ae00713          	li	a4,174
    1bca:	000026b7          	lui	a3,0x2
    1bce:	16868693          	addi	a3,a3,360 # 2168 <crctab+0x400>
    1bd2:	8626                	mv	a2,s1
    1bd4:	000025b7          	lui	a1,0x2
    1bd8:	3d058593          	addi	a1,a1,976 # 23d0 <crctab+0x668>
    1bdc:	4509                	li	a0,2
    1bde:	fffff097          	auipc	ra,0xfffff
    1be2:	740080e7          	jalr	1856(ra) # 131e <fprintf>
    1be6:	650d                	lui	a0,0x3
    1be8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bec:	00000097          	auipc	ra,0x0
    1bf0:	016080e7          	jalr	22(ra) # 1c02 <exit>
    1bf4:	bf61                	j	1b8c <check_file+0x24>

0000000000001bf6 <r_sp>:
    1bf6:	850a                	mv	a0,sp
    1bf8:	8082                	ret

0000000000001bfa <halt>:
    1bfa:	4885                	li	a7,1
    1bfc:	00000073          	ecall
    1c00:	8082                	ret

0000000000001c02 <exit>:
    1c02:	4889                	li	a7,2
    1c04:	00000073          	ecall
    1c08:	8082                	ret

0000000000001c0a <exec>:
    1c0a:	488d                	li	a7,3
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <wait>:
    1c12:	4891                	li	a7,4
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <remove>:
    1c1a:	4895                	li	a7,5
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <open>:
    1c22:	4899                	li	a7,6
    1c24:	00000073          	ecall
    1c28:	8082                	ret

0000000000001c2a <read>:
    1c2a:	489d                	li	a7,7
    1c2c:	00000073          	ecall
    1c30:	8082                	ret

0000000000001c32 <write>:
    1c32:	48a1                	li	a7,8
    1c34:	00000073          	ecall
    1c38:	8082                	ret

0000000000001c3a <seek>:
    1c3a:	48a5                	li	a7,9
    1c3c:	00000073          	ecall
    1c40:	8082                	ret

0000000000001c42 <tell>:
    1c42:	48a9                	li	a7,10
    1c44:	00000073          	ecall
    1c48:	8082                	ret

0000000000001c4a <close>:
    1c4a:	48ad                	li	a7,11
    1c4c:	00000073          	ecall
    1c50:	8082                	ret

0000000000001c52 <fstat>:
    1c52:	48b1                	li	a7,12
    1c54:	00000073          	ecall
    1c58:	8082                	ret

0000000000001c5a <mmap>:
    1c5a:	48b5                	li	a7,13
    1c5c:	00000073          	ecall
    1c60:	8082                	ret

0000000000001c62 <munmap>:
    1c62:	48b9                	li	a7,14
    1c64:	00000073          	ecall
    1c68:	8082                	ret

0000000000001c6a <chdir>:
    1c6a:	48bd                	li	a7,15
    1c6c:	00000073          	ecall
    1c70:	8082                	ret

0000000000001c72 <mkdir>:
    1c72:	48c1                	li	a7,16
    1c74:	00000073          	ecall
    1c78:	8082                	ret
