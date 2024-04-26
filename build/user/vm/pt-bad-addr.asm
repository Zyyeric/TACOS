
build/user/vm/pt-bad-addr:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	4719                	li	a4,6
    1006:	000026b7          	lui	a3,0x2
    100a:	c2068693          	addi	a3,a3,-992 # 1c20 <mkdir+0x8>
    100e:	040007b7          	lui	a5,0x4000
    1012:	4390                	lw	a2,0(a5)
    1014:	000025b7          	lui	a1,0x2
    1018:	c3858593          	addi	a1,a1,-968 # 1c38 <mkdir+0x20>
    101c:	4509                	li	a0,2
    101e:	00000097          	auipc	ra,0x0
    1022:	2a6080e7          	jalr	678(ra) # 12c4 <fprintf>
    1026:	650d                	lui	a0,0x3
    1028:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    102c:	00001097          	auipc	ra,0x1
    1030:	b7c080e7          	jalr	-1156(ra) # 1ba8 <exit>
    1034:	60a2                	ld	ra,8(sp)
    1036:	0141                	addi	sp,sp,16
    1038:	8082                	ret

000000000000103a <putc>:
    103a:	1101                	addi	sp,sp,-32
    103c:	ec06                	sd	ra,24(sp)
    103e:	00b107a3          	sb	a1,15(sp)
    1042:	4605                	li	a2,1
    1044:	00f10593          	addi	a1,sp,15
    1048:	00001097          	auipc	ra,0x1
    104c:	b90080e7          	jalr	-1136(ra) # 1bd8 <write>
    1050:	60e2                	ld	ra,24(sp)
    1052:	6105                	addi	sp,sp,32
    1054:	8082                	ret

0000000000001056 <printint>:
    1056:	7179                	addi	sp,sp,-48
    1058:	f406                	sd	ra,40(sp)
    105a:	f022                	sd	s0,32(sp)
    105c:	ec26                	sd	s1,24(sp)
    105e:	e84a                	sd	s2,16(sp)
    1060:	84aa                	mv	s1,a0
    1062:	c299                	beqz	a3,1068 <printint+0x12>
    1064:	0805c363          	bltz	a1,10ea <printint+0x94>
    1068:	2581                	sext.w	a1,a1
    106a:	4881                	li	a7,0
    106c:	868a                	mv	a3,sp
    106e:	4701                	li	a4,0
    1070:	2601                	sext.w	a2,a2
    1072:	00002537          	lui	a0,0x2
    1076:	c7050513          	addi	a0,a0,-912 # 1c70 <digits>
    107a:	883a                	mv	a6,a4
    107c:	2705                	addiw	a4,a4,1
    107e:	02c5f7bb          	remuw	a5,a1,a2
    1082:	1782                	slli	a5,a5,0x20
    1084:	9381                	srli	a5,a5,0x20
    1086:	97aa                	add	a5,a5,a0
    1088:	0007c783          	lbu	a5,0(a5) # 4000000 <s+0x3ffcff0>
    108c:	00f68023          	sb	a5,0(a3)
    1090:	0005879b          	sext.w	a5,a1
    1094:	02c5d5bb          	divuw	a1,a1,a2
    1098:	0685                	addi	a3,a3,1
    109a:	fec7f0e3          	bgeu	a5,a2,107a <printint+0x24>
    109e:	00088a63          	beqz	a7,10b2 <printint+0x5c>
    10a2:	081c                	addi	a5,sp,16
    10a4:	973e                	add	a4,a4,a5
    10a6:	02d00793          	li	a5,45
    10aa:	fef70823          	sb	a5,-16(a4)
    10ae:	0028071b          	addiw	a4,a6,2
    10b2:	02e05663          	blez	a4,10de <printint+0x88>
    10b6:	00e10433          	add	s0,sp,a4
    10ba:	fff10913          	addi	s2,sp,-1
    10be:	993a                	add	s2,s2,a4
    10c0:	377d                	addiw	a4,a4,-1
    10c2:	1702                	slli	a4,a4,0x20
    10c4:	9301                	srli	a4,a4,0x20
    10c6:	40e90933          	sub	s2,s2,a4
    10ca:	fff44583          	lbu	a1,-1(s0)
    10ce:	8526                	mv	a0,s1
    10d0:	00000097          	auipc	ra,0x0
    10d4:	f6a080e7          	jalr	-150(ra) # 103a <putc>
    10d8:	147d                	addi	s0,s0,-1
    10da:	ff2418e3          	bne	s0,s2,10ca <printint+0x74>
    10de:	70a2                	ld	ra,40(sp)
    10e0:	7402                	ld	s0,32(sp)
    10e2:	64e2                	ld	s1,24(sp)
    10e4:	6942                	ld	s2,16(sp)
    10e6:	6145                	addi	sp,sp,48
    10e8:	8082                	ret
    10ea:	40b005bb          	negw	a1,a1
    10ee:	4885                	li	a7,1
    10f0:	bfb5                	j	106c <printint+0x16>

00000000000010f2 <vprintf>:
    10f2:	7159                	addi	sp,sp,-112
    10f4:	f486                	sd	ra,104(sp)
    10f6:	f0a2                	sd	s0,96(sp)
    10f8:	eca6                	sd	s1,88(sp)
    10fa:	e8ca                	sd	s2,80(sp)
    10fc:	e4ce                	sd	s3,72(sp)
    10fe:	e0d2                	sd	s4,64(sp)
    1100:	fc56                	sd	s5,56(sp)
    1102:	f85a                	sd	s6,48(sp)
    1104:	f45e                	sd	s7,40(sp)
    1106:	f062                	sd	s8,32(sp)
    1108:	ec66                	sd	s9,24(sp)
    110a:	e86a                	sd	s10,16(sp)
    110c:	e46e                	sd	s11,8(sp)
    110e:	0005c483          	lbu	s1,0(a1)
    1112:	18048a63          	beqz	s1,12a6 <vprintf+0x1b4>
    1116:	8a2a                	mv	s4,a0
    1118:	8ab2                	mv	s5,a2
    111a:	00158413          	addi	s0,a1,1
    111e:	4901                	li	s2,0
    1120:	02500993          	li	s3,37
    1124:	06400b93          	li	s7,100
    1128:	06c00c13          	li	s8,108
    112c:	07800c93          	li	s9,120
    1130:	07000d13          	li	s10,112
    1134:	00002db7          	lui	s11,0x2
    1138:	00002b37          	lui	s6,0x2
    113c:	c70b0b13          	addi	s6,s6,-912 # 1c70 <digits>
    1140:	a839                	j	115e <vprintf+0x6c>
    1142:	85a6                	mv	a1,s1
    1144:	8552                	mv	a0,s4
    1146:	00000097          	auipc	ra,0x0
    114a:	ef4080e7          	jalr	-268(ra) # 103a <putc>
    114e:	a019                	j	1154 <vprintf+0x62>
    1150:	01390f63          	beq	s2,s3,116e <vprintf+0x7c>
    1154:	0405                	addi	s0,s0,1
    1156:	fff44483          	lbu	s1,-1(s0)
    115a:	14048663          	beqz	s1,12a6 <vprintf+0x1b4>
    115e:	0004879b          	sext.w	a5,s1
    1162:	fe0917e3          	bnez	s2,1150 <vprintf+0x5e>
    1166:	fd379ee3          	bne	a5,s3,1142 <vprintf+0x50>
    116a:	893e                	mv	s2,a5
    116c:	b7e5                	j	1154 <vprintf+0x62>
    116e:	05778063          	beq	a5,s7,11ae <vprintf+0xbc>
    1172:	05878c63          	beq	a5,s8,11ca <vprintf+0xd8>
    1176:	07978863          	beq	a5,s9,11e6 <vprintf+0xf4>
    117a:	09a78463          	beq	a5,s10,1202 <vprintf+0x110>
    117e:	07300713          	li	a4,115
    1182:	0ce78263          	beq	a5,a4,1246 <vprintf+0x154>
    1186:	06300713          	li	a4,99
    118a:	0ee78763          	beq	a5,a4,1278 <vprintf+0x186>
    118e:	11378163          	beq	a5,s3,1290 <vprintf+0x19e>
    1192:	85ce                	mv	a1,s3
    1194:	8552                	mv	a0,s4
    1196:	00000097          	auipc	ra,0x0
    119a:	ea4080e7          	jalr	-348(ra) # 103a <putc>
    119e:	85a6                	mv	a1,s1
    11a0:	8552                	mv	a0,s4
    11a2:	00000097          	auipc	ra,0x0
    11a6:	e98080e7          	jalr	-360(ra) # 103a <putc>
    11aa:	4901                	li	s2,0
    11ac:	b765                	j	1154 <vprintf+0x62>
    11ae:	008a8493          	addi	s1,s5,8
    11b2:	4685                	li	a3,1
    11b4:	4629                	li	a2,10
    11b6:	000aa583          	lw	a1,0(s5)
    11ba:	8552                	mv	a0,s4
    11bc:	00000097          	auipc	ra,0x0
    11c0:	e9a080e7          	jalr	-358(ra) # 1056 <printint>
    11c4:	8aa6                	mv	s5,s1
    11c6:	4901                	li	s2,0
    11c8:	b771                	j	1154 <vprintf+0x62>
    11ca:	008a8493          	addi	s1,s5,8
    11ce:	4681                	li	a3,0
    11d0:	4629                	li	a2,10
    11d2:	000aa583          	lw	a1,0(s5)
    11d6:	8552                	mv	a0,s4
    11d8:	00000097          	auipc	ra,0x0
    11dc:	e7e080e7          	jalr	-386(ra) # 1056 <printint>
    11e0:	8aa6                	mv	s5,s1
    11e2:	4901                	li	s2,0
    11e4:	bf85                	j	1154 <vprintf+0x62>
    11e6:	008a8493          	addi	s1,s5,8
    11ea:	4681                	li	a3,0
    11ec:	4641                	li	a2,16
    11ee:	000aa583          	lw	a1,0(s5)
    11f2:	8552                	mv	a0,s4
    11f4:	00000097          	auipc	ra,0x0
    11f8:	e62080e7          	jalr	-414(ra) # 1056 <printint>
    11fc:	8aa6                	mv	s5,s1
    11fe:	4901                	li	s2,0
    1200:	bf91                	j	1154 <vprintf+0x62>
    1202:	008a8913          	addi	s2,s5,8
    1206:	000aba83          	ld	s5,0(s5)
    120a:	03000593          	li	a1,48
    120e:	8552                	mv	a0,s4
    1210:	00000097          	auipc	ra,0x0
    1214:	e2a080e7          	jalr	-470(ra) # 103a <putc>
    1218:	85e6                	mv	a1,s9
    121a:	8552                	mv	a0,s4
    121c:	00000097          	auipc	ra,0x0
    1220:	e1e080e7          	jalr	-482(ra) # 103a <putc>
    1224:	44c1                	li	s1,16
    1226:	03cad793          	srli	a5,s5,0x3c
    122a:	97da                	add	a5,a5,s6
    122c:	0007c583          	lbu	a1,0(a5)
    1230:	8552                	mv	a0,s4
    1232:	00000097          	auipc	ra,0x0
    1236:	e08080e7          	jalr	-504(ra) # 103a <putc>
    123a:	0a92                	slli	s5,s5,0x4
    123c:	34fd                	addiw	s1,s1,-1
    123e:	f4e5                	bnez	s1,1226 <vprintf+0x134>
    1240:	8aca                	mv	s5,s2
    1242:	4901                	li	s2,0
    1244:	bf01                	j	1154 <vprintf+0x62>
    1246:	008a8913          	addi	s2,s5,8
    124a:	000ab483          	ld	s1,0(s5)
    124e:	c085                	beqz	s1,126e <vprintf+0x17c>
    1250:	0004c583          	lbu	a1,0(s1)
    1254:	c5b1                	beqz	a1,12a0 <vprintf+0x1ae>
    1256:	8552                	mv	a0,s4
    1258:	00000097          	auipc	ra,0x0
    125c:	de2080e7          	jalr	-542(ra) # 103a <putc>
    1260:	0485                	addi	s1,s1,1
    1262:	0004c583          	lbu	a1,0(s1)
    1266:	f9e5                	bnez	a1,1256 <vprintf+0x164>
    1268:	8aca                	mv	s5,s2
    126a:	4901                	li	s2,0
    126c:	b5e5                	j	1154 <vprintf+0x62>
    126e:	c68d8493          	addi	s1,s11,-920 # 1c68 <mkdir+0x50>
    1272:	02800593          	li	a1,40
    1276:	b7c5                	j	1256 <vprintf+0x164>
    1278:	008a8493          	addi	s1,s5,8
    127c:	000ac583          	lbu	a1,0(s5)
    1280:	8552                	mv	a0,s4
    1282:	00000097          	auipc	ra,0x0
    1286:	db8080e7          	jalr	-584(ra) # 103a <putc>
    128a:	8aa6                	mv	s5,s1
    128c:	4901                	li	s2,0
    128e:	b5d9                	j	1154 <vprintf+0x62>
    1290:	85ce                	mv	a1,s3
    1292:	8552                	mv	a0,s4
    1294:	00000097          	auipc	ra,0x0
    1298:	da6080e7          	jalr	-602(ra) # 103a <putc>
    129c:	4901                	li	s2,0
    129e:	bd5d                	j	1154 <vprintf+0x62>
    12a0:	8aca                	mv	s5,s2
    12a2:	4901                	li	s2,0
    12a4:	bd45                	j	1154 <vprintf+0x62>
    12a6:	70a6                	ld	ra,104(sp)
    12a8:	7406                	ld	s0,96(sp)
    12aa:	64e6                	ld	s1,88(sp)
    12ac:	6946                	ld	s2,80(sp)
    12ae:	69a6                	ld	s3,72(sp)
    12b0:	6a06                	ld	s4,64(sp)
    12b2:	7ae2                	ld	s5,56(sp)
    12b4:	7b42                	ld	s6,48(sp)
    12b6:	7ba2                	ld	s7,40(sp)
    12b8:	7c02                	ld	s8,32(sp)
    12ba:	6ce2                	ld	s9,24(sp)
    12bc:	6d42                	ld	s10,16(sp)
    12be:	6da2                	ld	s11,8(sp)
    12c0:	6165                	addi	sp,sp,112
    12c2:	8082                	ret

00000000000012c4 <fprintf>:
    12c4:	715d                	addi	sp,sp,-80
    12c6:	ec06                	sd	ra,24(sp)
    12c8:	f032                	sd	a2,32(sp)
    12ca:	f436                	sd	a3,40(sp)
    12cc:	f83a                	sd	a4,48(sp)
    12ce:	fc3e                	sd	a5,56(sp)
    12d0:	e0c2                	sd	a6,64(sp)
    12d2:	e4c6                	sd	a7,72(sp)
    12d4:	1010                	addi	a2,sp,32
    12d6:	e432                	sd	a2,8(sp)
    12d8:	00000097          	auipc	ra,0x0
    12dc:	e1a080e7          	jalr	-486(ra) # 10f2 <vprintf>
    12e0:	60e2                	ld	ra,24(sp)
    12e2:	6161                	addi	sp,sp,80
    12e4:	8082                	ret

00000000000012e6 <printf>:
    12e6:	711d                	addi	sp,sp,-96
    12e8:	ec06                	sd	ra,24(sp)
    12ea:	f42e                	sd	a1,40(sp)
    12ec:	f832                	sd	a2,48(sp)
    12ee:	fc36                	sd	a3,56(sp)
    12f0:	e0ba                	sd	a4,64(sp)
    12f2:	e4be                	sd	a5,72(sp)
    12f4:	e8c2                	sd	a6,80(sp)
    12f6:	ecc6                	sd	a7,88(sp)
    12f8:	1030                	addi	a2,sp,40
    12fa:	e432                	sd	a2,8(sp)
    12fc:	85aa                	mv	a1,a0
    12fe:	4505                	li	a0,1
    1300:	00000097          	auipc	ra,0x0
    1304:	df2080e7          	jalr	-526(ra) # 10f2 <vprintf>
    1308:	60e2                	ld	ra,24(sp)
    130a:	6125                	addi	sp,sp,96
    130c:	8082                	ret

000000000000130e <cksum>:
    130e:	cdb1                	beqz	a1,136a <cksum+0x5c>
    1310:	00b50833          	add	a6,a0,a1
    1314:	4781                	li	a5,0
    1316:	00002637          	lui	a2,0x2
    131a:	c8860613          	addi	a2,a2,-888 # 1c88 <crctab>
    131e:	0505                	addi	a0,a0,1
    1320:	0087969b          	slliw	a3,a5,0x8
    1324:	0187d71b          	srliw	a4,a5,0x18
    1328:	fff54783          	lbu	a5,-1(a0)
    132c:	8f3d                	xor	a4,a4,a5
    132e:	1702                	slli	a4,a4,0x20
    1330:	9301                	srli	a4,a4,0x20
    1332:	070a                	slli	a4,a4,0x2
    1334:	9732                	add	a4,a4,a2
    1336:	431c                	lw	a5,0(a4)
    1338:	8fb5                	xor	a5,a5,a3
    133a:	2781                	sext.w	a5,a5
    133c:	fea811e3          	bne	a6,a0,131e <cksum+0x10>
    1340:	00002637          	lui	a2,0x2
    1344:	c8860613          	addi	a2,a2,-888 # 1c88 <crctab>
    1348:	0ff5f693          	andi	a3,a1,255
    134c:	81a1                	srli	a1,a1,0x8
    134e:	0087951b          	slliw	a0,a5,0x8
    1352:	0187d71b          	srliw	a4,a5,0x18
    1356:	8f35                	xor	a4,a4,a3
    1358:	070a                	slli	a4,a4,0x2
    135a:	9732                	add	a4,a4,a2
    135c:	431c                	lw	a5,0(a4)
    135e:	8fa9                	xor	a5,a5,a0
    1360:	2781                	sext.w	a5,a5
    1362:	f1fd                	bnez	a1,1348 <cksum+0x3a>
    1364:	fff7c513          	not	a0,a5
    1368:	8082                	ret
    136a:	4781                	li	a5,0
    136c:	bfe5                	j	1364 <cksum+0x56>

000000000000136e <swap_bytes>:
    136e:	ce19                	beqz	a2,138c <swap_bytes+0x1e>
    1370:	87aa                	mv	a5,a0
    1372:	962a                	add	a2,a2,a0
    1374:	0007c703          	lbu	a4,0(a5)
    1378:	0005c683          	lbu	a3,0(a1)
    137c:	00d78023          	sb	a3,0(a5)
    1380:	00e58023          	sb	a4,0(a1)
    1384:	0785                	addi	a5,a5,1
    1386:	0585                	addi	a1,a1,1
    1388:	fec796e3          	bne	a5,a2,1374 <swap_bytes+0x6>
    138c:	8082                	ret

000000000000138e <random_init>:
    138e:	7139                	addi	sp,sp,-64
    1390:	fc06                	sd	ra,56(sp)
    1392:	f822                	sd	s0,48(sp)
    1394:	f426                	sd	s1,40(sp)
    1396:	f04a                	sd	s2,32(sp)
    1398:	ec4e                	sd	s3,24(sp)
    139a:	e852                	sd	s4,16(sp)
    139c:	c62a                	sw	a0,12(sp)
    139e:	000037b7          	lui	a5,0x3
    13a2:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13a6:	eca5                	bnez	s1,141e <random_init+0x90>
    13a8:	00003737          	lui	a4,0x3
    13ac:	01070913          	addi	s2,a4,16 # 3010 <s>
    13b0:	01070713          	addi	a4,a4,16
    13b4:	87a6                	mv	a5,s1
    13b6:	10000693          	li	a3,256
    13ba:	00f70023          	sb	a5,0(a4)
    13be:	2785                	addiw	a5,a5,1
    13c0:	0705                	addi	a4,a4,1
    13c2:	fed79ce3          	bne	a5,a3,13ba <random_init+0x2c>
    13c6:	4401                	li	s0,0
    13c8:	000039b7          	lui	s3,0x3
    13cc:	01098993          	addi	s3,s3,16 # 3010 <s>
    13d0:	10000a13          	li	s4,256
    13d4:	0034f793          	andi	a5,s1,3
    13d8:	0818                	addi	a4,sp,16
    13da:	97ba                	add	a5,a5,a4
    13dc:	ffc7c783          	lbu	a5,-4(a5)
    13e0:	00094703          	lbu	a4,0(s2)
    13e4:	9fb9                	addw	a5,a5,a4
    13e6:	9c3d                	addw	s0,s0,a5
    13e8:	0ff47413          	andi	s0,s0,255
    13ec:	4605                	li	a2,1
    13ee:	008985b3          	add	a1,s3,s0
    13f2:	854a                	mv	a0,s2
    13f4:	00000097          	auipc	ra,0x0
    13f8:	f7a080e7          	jalr	-134(ra) # 136e <swap_bytes>
    13fc:	2485                	addiw	s1,s1,1
    13fe:	0905                	addi	s2,s2,1
    1400:	fd449ae3          	bne	s1,s4,13d4 <random_init+0x46>
    1404:	000037b7          	lui	a5,0x3
    1408:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    140c:	000037b7          	lui	a5,0x3
    1410:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1414:	000037b7          	lui	a5,0x3
    1418:	4705                	li	a4,1
    141a:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    141e:	70e2                	ld	ra,56(sp)
    1420:	7442                	ld	s0,48(sp)
    1422:	74a2                	ld	s1,40(sp)
    1424:	7902                	ld	s2,32(sp)
    1426:	69e2                	ld	s3,24(sp)
    1428:	6a42                	ld	s4,16(sp)
    142a:	6121                	addi	sp,sp,64
    142c:	8082                	ret

000000000000142e <random_bytes>:
    142e:	7139                	addi	sp,sp,-64
    1430:	fc06                	sd	ra,56(sp)
    1432:	f822                	sd	s0,48(sp)
    1434:	f426                	sd	s1,40(sp)
    1436:	f04a                	sd	s2,32(sp)
    1438:	ec4e                	sd	s3,24(sp)
    143a:	e852                	sd	s4,16(sp)
    143c:	e456                	sd	s5,8(sp)
    143e:	e05a                	sd	s6,0(sp)
    1440:	892a                	mv	s2,a0
    1442:	8aae                	mv	s5,a1
    1444:	000037b7          	lui	a5,0x3
    1448:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    144c:	c3c1                	beqz	a5,14cc <random_bytes+0x9e>
    144e:	060a8563          	beqz	s5,14b8 <random_bytes+0x8a>
    1452:	9aca                	add	s5,s5,s2
    1454:	00003a37          	lui	s4,0x3
    1458:	000034b7          	lui	s1,0x3
    145c:	01048493          	addi	s1,s1,16 # 3010 <s>
    1460:	000039b7          	lui	s3,0x3
    1464:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1468:	2505                	addiw	a0,a0,1
    146a:	0ff57513          	andi	a0,a0,255
    146e:	00aa02a3          	sb	a0,5(s4)
    1472:	00a48b33          	add	s6,s1,a0
    1476:	000b4403          	lbu	s0,0(s6)
    147a:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    147e:	9c3d                	addw	s0,s0,a5
    1480:	0ff47413          	andi	s0,s0,255
    1484:	00898223          	sb	s0,4(s3)
    1488:	4605                	li	a2,1
    148a:	008485b3          	add	a1,s1,s0
    148e:	855a                	mv	a0,s6
    1490:	00000097          	auipc	ra,0x0
    1494:	ede080e7          	jalr	-290(ra) # 136e <swap_bytes>
    1498:	9426                	add	s0,s0,s1
    149a:	000b4783          	lbu	a5,0(s6)
    149e:	00044703          	lbu	a4,0(s0)
    14a2:	9fb9                	addw	a5,a5,a4
    14a4:	0ff7f793          	andi	a5,a5,255
    14a8:	97a6                	add	a5,a5,s1
    14aa:	0007c783          	lbu	a5,0(a5)
    14ae:	00f90023          	sb	a5,0(s2)
    14b2:	0905                	addi	s2,s2,1
    14b4:	fb2a98e3          	bne	s5,s2,1464 <random_bytes+0x36>
    14b8:	70e2                	ld	ra,56(sp)
    14ba:	7442                	ld	s0,48(sp)
    14bc:	74a2                	ld	s1,40(sp)
    14be:	7902                	ld	s2,32(sp)
    14c0:	69e2                	ld	s3,24(sp)
    14c2:	6a42                	ld	s4,16(sp)
    14c4:	6aa2                	ld	s5,8(sp)
    14c6:	6b02                	ld	s6,0(sp)
    14c8:	6121                	addi	sp,sp,64
    14ca:	8082                	ret
    14cc:	4501                	li	a0,0
    14ce:	00000097          	auipc	ra,0x0
    14d2:	ec0080e7          	jalr	-320(ra) # 138e <random_init>
    14d6:	bfa5                	j	144e <random_bytes+0x20>

00000000000014d8 <random_ulong>:
    14d8:	1101                	addi	sp,sp,-32
    14da:	ec06                	sd	ra,24(sp)
    14dc:	45a1                	li	a1,8
    14de:	0028                	addi	a0,sp,8
    14e0:	00000097          	auipc	ra,0x0
    14e4:	f4e080e7          	jalr	-178(ra) # 142e <random_bytes>
    14e8:	6522                	ld	a0,8(sp)
    14ea:	60e2                	ld	ra,24(sp)
    14ec:	6105                	addi	sp,sp,32
    14ee:	8082                	ret

00000000000014f0 <shuffle>:
    14f0:	c9b9                	beqz	a1,1546 <shuffle+0x56>
    14f2:	7179                	addi	sp,sp,-48
    14f4:	f406                	sd	ra,40(sp)
    14f6:	f022                	sd	s0,32(sp)
    14f8:	ec26                	sd	s1,24(sp)
    14fa:	e84a                	sd	s2,16(sp)
    14fc:	e44e                	sd	s3,8(sp)
    14fe:	e052                	sd	s4,0(sp)
    1500:	8a2a                	mv	s4,a0
    1502:	89ae                	mv	s3,a1
    1504:	84b2                	mv	s1,a2
    1506:	892a                	mv	s2,a0
    1508:	4401                	li	s0,0
    150a:	00000097          	auipc	ra,0x0
    150e:	fce080e7          	jalr	-50(ra) # 14d8 <random_ulong>
    1512:	408985b3          	sub	a1,s3,s0
    1516:	02b575b3          	remu	a1,a0,a1
    151a:	95a2                	add	a1,a1,s0
    151c:	029585b3          	mul	a1,a1,s1
    1520:	8626                	mv	a2,s1
    1522:	95d2                	add	a1,a1,s4
    1524:	854a                	mv	a0,s2
    1526:	00000097          	auipc	ra,0x0
    152a:	e48080e7          	jalr	-440(ra) # 136e <swap_bytes>
    152e:	0405                	addi	s0,s0,1
    1530:	9926                	add	s2,s2,s1
    1532:	fc899ce3          	bne	s3,s0,150a <shuffle+0x1a>
    1536:	70a2                	ld	ra,40(sp)
    1538:	7402                	ld	s0,32(sp)
    153a:	64e2                	ld	s1,24(sp)
    153c:	6942                	ld	s2,16(sp)
    153e:	69a2                	ld	s3,8(sp)
    1540:	6a02                	ld	s4,0(sp)
    1542:	6145                	addi	sp,sp,48
    1544:	8082                	ret
    1546:	8082                	ret

0000000000001548 <arc4_init>:
    1548:	100500a3          	sb	zero,257(a0)
    154c:	10050023          	sb	zero,256(a0)
    1550:	4781                	li	a5,0
    1552:	10000693          	li	a3,256
    1556:	00f50733          	add	a4,a0,a5
    155a:	00f70023          	sb	a5,0(a4)
    155e:	0785                	addi	a5,a5,1
    1560:	fed79be3          	bne	a5,a3,1556 <arc4_init+0xe>
    1564:	86aa                	mv	a3,a0
    1566:	10050e13          	addi	t3,a0,256
    156a:	4701                	li	a4,0
    156c:	4781                	li	a5,0
    156e:	0006c883          	lbu	a7,0(a3)
    1572:	00f58833          	add	a6,a1,a5
    1576:	00084803          	lbu	a6,0(a6)
    157a:	00e8873b          	addw	a4,a7,a4
    157e:	00e8073b          	addw	a4,a6,a4
    1582:	0ff77713          	andi	a4,a4,255
    1586:	00e50833          	add	a6,a0,a4
    158a:	00084303          	lbu	t1,0(a6)
    158e:	00668023          	sb	t1,0(a3)
    1592:	01180023          	sb	a7,0(a6)
    1596:	0785                	addi	a5,a5,1
    1598:	00c7b833          	sltu	a6,a5,a2
    159c:	41000833          	neg	a6,a6
    15a0:	0107f7b3          	and	a5,a5,a6
    15a4:	0685                	addi	a3,a3,1
    15a6:	fdc694e3          	bne	a3,t3,156e <arc4_init+0x26>
    15aa:	8082                	ret

00000000000015ac <arc4_crypt>:
    15ac:	10054e03          	lbu	t3,256(a0)
    15b0:	10154803          	lbu	a6,257(a0)
    15b4:	fff60e93          	addi	t4,a2,-1
    15b8:	c225                	beqz	a2,1618 <arc4_crypt+0x6c>
    15ba:	00c588b3          	add	a7,a1,a2
    15be:	86ae                	mv	a3,a1
    15c0:	001e031b          	addiw	t1,t3,1
    15c4:	40b3033b          	subw	t1,t1,a1
    15c8:	00d3073b          	addw	a4,t1,a3
    15cc:	0ff77713          	andi	a4,a4,255
    15d0:	972a                	add	a4,a4,a0
    15d2:	00074603          	lbu	a2,0(a4)
    15d6:	0106083b          	addw	a6,a2,a6
    15da:	0ff87813          	andi	a6,a6,255
    15de:	010507b3          	add	a5,a0,a6
    15e2:	0007c583          	lbu	a1,0(a5)
    15e6:	00b70023          	sb	a1,0(a4)
    15ea:	00c78023          	sb	a2,0(a5)
    15ee:	0685                	addi	a3,a3,1
    15f0:	00074783          	lbu	a5,0(a4)
    15f4:	9fb1                	addw	a5,a5,a2
    15f6:	0ff7f793          	andi	a5,a5,255
    15fa:	97aa                	add	a5,a5,a0
    15fc:	0007c783          	lbu	a5,0(a5)
    1600:	fff6c703          	lbu	a4,-1(a3)
    1604:	8fb9                	xor	a5,a5,a4
    1606:	fef68fa3          	sb	a5,-1(a3)
    160a:	fb169fe3          	bne	a3,a7,15c8 <arc4_crypt+0x1c>
    160e:	2e85                	addiw	t4,t4,1
    1610:	01ce8e3b          	addw	t3,t4,t3
    1614:	0ffe7e13          	andi	t3,t3,255
    1618:	11c50023          	sb	t3,256(a0)
    161c:	110500a3          	sb	a6,257(a0)
    1620:	8082                	ret

0000000000001622 <_main>:
    1622:	1141                	addi	sp,sp,-16
    1624:	e406                	sd	ra,8(sp)
    1626:	00000097          	auipc	ra,0x0
    162a:	9da080e7          	jalr	-1574(ra) # 1000 <main>
    162e:	4501                	li	a0,0
    1630:	00000097          	auipc	ra,0x0
    1634:	578080e7          	jalr	1400(ra) # 1ba8 <exit>
    1638:	60a2                	ld	ra,8(sp)
    163a:	0141                	addi	sp,sp,16
    163c:	8082                	ret

000000000000163e <strcmp>:
    163e:	00054783          	lbu	a5,0(a0)
    1642:	cb91                	beqz	a5,1656 <strcmp+0x18>
    1644:	0005c703          	lbu	a4,0(a1)
    1648:	00f71763          	bne	a4,a5,1656 <strcmp+0x18>
    164c:	0505                	addi	a0,a0,1
    164e:	0585                	addi	a1,a1,1
    1650:	00054783          	lbu	a5,0(a0)
    1654:	fbe5                	bnez	a5,1644 <strcmp+0x6>
    1656:	0005c503          	lbu	a0,0(a1)
    165a:	40a7853b          	subw	a0,a5,a0
    165e:	8082                	ret

0000000000001660 <strcpy>:
    1660:	87aa                	mv	a5,a0
    1662:	0585                	addi	a1,a1,1
    1664:	0785                	addi	a5,a5,1
    1666:	fff5c703          	lbu	a4,-1(a1)
    166a:	fee78fa3          	sb	a4,-1(a5)
    166e:	fb75                	bnez	a4,1662 <strcpy+0x2>
    1670:	8082                	ret

0000000000001672 <strlen>:
    1672:	00054783          	lbu	a5,0(a0)
    1676:	cf81                	beqz	a5,168e <strlen+0x1c>
    1678:	0505                	addi	a0,a0,1
    167a:	87aa                	mv	a5,a0
    167c:	4685                	li	a3,1
    167e:	9e89                	subw	a3,a3,a0
    1680:	00f6853b          	addw	a0,a3,a5
    1684:	0785                	addi	a5,a5,1
    1686:	fff7c703          	lbu	a4,-1(a5)
    168a:	fb7d                	bnez	a4,1680 <strlen+0xe>
    168c:	8082                	ret
    168e:	4501                	li	a0,0
    1690:	8082                	ret

0000000000001692 <memset>:
    1692:	ca19                	beqz	a2,16a8 <memset+0x16>
    1694:	87aa                	mv	a5,a0
    1696:	1602                	slli	a2,a2,0x20
    1698:	9201                	srli	a2,a2,0x20
    169a:	00a60733          	add	a4,a2,a0
    169e:	00b78023          	sb	a1,0(a5)
    16a2:	0785                	addi	a5,a5,1
    16a4:	fee79de3          	bne	a5,a4,169e <memset+0xc>
    16a8:	8082                	ret

00000000000016aa <memcmp>:
    16aa:	1101                	addi	sp,sp,-32
    16ac:	ec06                	sd	ra,24(sp)
    16ae:	e822                	sd	s0,16(sp)
    16b0:	e426                	sd	s1,8(sp)
    16b2:	e04a                	sd	s2,0(sp)
    16b4:	892a                	mv	s2,a0
    16b6:	842e                	mv	s0,a1
    16b8:	84b2                	mv	s1,a2
    16ba:	c915                	beqz	a0,16ee <memcmp+0x44>
    16bc:	c5ad                	beqz	a1,1726 <memcmp+0x7c>
    16be:	fff60713          	addi	a4,a2,-1
    16c2:	c645                	beqz	a2,176a <memcmp+0xc0>
    16c4:	87ca                	mv	a5,s2
    16c6:	00190613          	addi	a2,s2,1
    16ca:	963a                	add	a2,a2,a4
    16cc:	0007c683          	lbu	a3,0(a5)
    16d0:	00044703          	lbu	a4,0(s0)
    16d4:	08e69463          	bne	a3,a4,175c <memcmp+0xb2>
    16d8:	0785                	addi	a5,a5,1
    16da:	0405                	addi	s0,s0,1
    16dc:	fec798e3          	bne	a5,a2,16cc <memcmp+0x22>
    16e0:	4501                	li	a0,0
    16e2:	60e2                	ld	ra,24(sp)
    16e4:	6442                	ld	s0,16(sp)
    16e6:	64a2                	ld	s1,8(sp)
    16e8:	6902                	ld	s2,0(sp)
    16ea:	6105                	addi	sp,sp,32
    16ec:	8082                	ret
    16ee:	4501                	li	a0,0
    16f0:	da6d                	beqz	a2,16e2 <memcmp+0x38>
    16f2:	03200693          	li	a3,50
    16f6:	00002637          	lui	a2,0x2
    16fa:	08860613          	addi	a2,a2,136 # 2088 <crctab+0x400>
    16fe:	000025b7          	lui	a1,0x2
    1702:	09858593          	addi	a1,a1,152 # 2098 <crctab+0x410>
    1706:	4509                	li	a0,2
    1708:	00000097          	auipc	ra,0x0
    170c:	bbc080e7          	jalr	-1092(ra) # 12c4 <fprintf>
    1710:	650d                	lui	a0,0x3
    1712:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1716:	00000097          	auipc	ra,0x0
    171a:	492080e7          	jalr	1170(ra) # 1ba8 <exit>
    171e:	fff48713          	addi	a4,s1,-1
    1722:	f04d                	bnez	s0,16c4 <memcmp+0x1a>
    1724:	a011                	j	1728 <memcmp+0x7e>
    1726:	c221                	beqz	a2,1766 <memcmp+0xbc>
    1728:	03300693          	li	a3,51
    172c:	00002637          	lui	a2,0x2
    1730:	08860613          	addi	a2,a2,136 # 2088 <crctab+0x400>
    1734:	000025b7          	lui	a1,0x2
    1738:	0e058593          	addi	a1,a1,224 # 20e0 <crctab+0x458>
    173c:	4509                	li	a0,2
    173e:	00000097          	auipc	ra,0x0
    1742:	b86080e7          	jalr	-1146(ra) # 12c4 <fprintf>
    1746:	650d                	lui	a0,0x3
    1748:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    174c:	00000097          	auipc	ra,0x0
    1750:	45c080e7          	jalr	1116(ra) # 1ba8 <exit>
    1754:	fff48713          	addi	a4,s1,-1
    1758:	4401                	li	s0,0
    175a:	b7ad                	j	16c4 <memcmp+0x1a>
    175c:	4505                	li	a0,1
    175e:	f8d762e3          	bltu	a4,a3,16e2 <memcmp+0x38>
    1762:	557d                	li	a0,-1
    1764:	bfbd                	j	16e2 <memcmp+0x38>
    1766:	4501                	li	a0,0
    1768:	bfad                	j	16e2 <memcmp+0x38>
    176a:	4501                	li	a0,0
    176c:	bf9d                	j	16e2 <memcmp+0x38>

000000000000176e <memcpy>:
    176e:	1101                	addi	sp,sp,-32
    1770:	ec06                	sd	ra,24(sp)
    1772:	e822                	sd	s0,16(sp)
    1774:	e426                	sd	s1,8(sp)
    1776:	e04a                	sd	s2,0(sp)
    1778:	84aa                	mv	s1,a0
    177a:	842e                	mv	s0,a1
    177c:	8932                	mv	s2,a2
    177e:	c51d                	beqz	a0,17ac <memcpy+0x3e>
    1780:	c1ad                	beqz	a1,17e2 <memcpy+0x74>
    1782:	fff60693          	addi	a3,a2,-1
    1786:	ce01                	beqz	a2,179e <memcpy+0x30>
    1788:	0685                	addi	a3,a3,1
    178a:	96a6                	add	a3,a3,s1
    178c:	87a6                	mv	a5,s1
    178e:	0405                	addi	s0,s0,1
    1790:	0785                	addi	a5,a5,1
    1792:	fff44703          	lbu	a4,-1(s0)
    1796:	fee78fa3          	sb	a4,-1(a5)
    179a:	fed79ae3          	bne	a5,a3,178e <memcpy+0x20>
    179e:	8526                	mv	a0,s1
    17a0:	60e2                	ld	ra,24(sp)
    17a2:	6442                	ld	s0,16(sp)
    17a4:	64a2                	ld	s1,8(sp)
    17a6:	6902                	ld	s2,0(sp)
    17a8:	6105                	addi	sp,sp,32
    17aa:	8082                	ret
    17ac:	da6d                	beqz	a2,179e <memcpy+0x30>
    17ae:	04000693          	li	a3,64
    17b2:	00002637          	lui	a2,0x2
    17b6:	08860613          	addi	a2,a2,136 # 2088 <crctab+0x400>
    17ba:	000025b7          	lui	a1,0x2
    17be:	12858593          	addi	a1,a1,296 # 2128 <crctab+0x4a0>
    17c2:	4509                	li	a0,2
    17c4:	00000097          	auipc	ra,0x0
    17c8:	b00080e7          	jalr	-1280(ra) # 12c4 <fprintf>
    17cc:	650d                	lui	a0,0x3
    17ce:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17d2:	00000097          	auipc	ra,0x0
    17d6:	3d6080e7          	jalr	982(ra) # 1ba8 <exit>
    17da:	fff90693          	addi	a3,s2,-1
    17de:	f44d                	bnez	s0,1788 <memcpy+0x1a>
    17e0:	a011                	j	17e4 <memcpy+0x76>
    17e2:	de55                	beqz	a2,179e <memcpy+0x30>
    17e4:	04100693          	li	a3,65
    17e8:	00002637          	lui	a2,0x2
    17ec:	08860613          	addi	a2,a2,136 # 2088 <crctab+0x400>
    17f0:	000025b7          	lui	a1,0x2
    17f4:	17058593          	addi	a1,a1,368 # 2170 <crctab+0x4e8>
    17f8:	4509                	li	a0,2
    17fa:	00000097          	auipc	ra,0x0
    17fe:	aca080e7          	jalr	-1334(ra) # 12c4 <fprintf>
    1802:	650d                	lui	a0,0x3
    1804:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1808:	00000097          	auipc	ra,0x0
    180c:	3a0080e7          	jalr	928(ra) # 1ba8 <exit>
    1810:	fff90693          	addi	a3,s2,-1
    1814:	4401                	li	s0,0
    1816:	bf8d                	j	1788 <memcpy+0x1a>

0000000000001818 <itoa>:
    1818:	1101                	addi	sp,sp,-32
    181a:	ec06                	sd	ra,24(sp)
    181c:	e822                	sd	s0,16(sp)
    181e:	e426                	sd	s1,8(sp)
    1820:	842a                	mv	s0,a0
    1822:	41f5d71b          	sraiw	a4,a1,0x1f
    1826:	00e5c7b3          	xor	a5,a1,a4
    182a:	9f99                	subw	a5,a5,a4
    182c:	84aa                	mv	s1,a0
    182e:	862a                	mv	a2,a0
    1830:	4681                	li	a3,0
    1832:	4529                	li	a0,10
    1834:	4825                	li	a6,9
    1836:	88b6                	mv	a7,a3
    1838:	2685                	addiw	a3,a3,1
    183a:	02a7e73b          	remw	a4,a5,a0
    183e:	0307071b          	addiw	a4,a4,48
    1842:	00e60023          	sb	a4,0(a2)
    1846:	873e                	mv	a4,a5
    1848:	02a7c7bb          	divw	a5,a5,a0
    184c:	0605                	addi	a2,a2,1
    184e:	fee844e3          	blt	a6,a4,1836 <itoa+0x1e>
    1852:	0405c863          	bltz	a1,18a2 <itoa+0x8a>
    1856:	96a2                	add	a3,a3,s0
    1858:	00068023          	sb	zero,0(a3)
    185c:	8522                	mv	a0,s0
    185e:	00000097          	auipc	ra,0x0
    1862:	e14080e7          	jalr	-492(ra) # 1672 <strlen>
    1866:	fff5071b          	addiw	a4,a0,-1
    186a:	02e05763          	blez	a4,1898 <itoa+0x80>
    186e:	9722                	add	a4,a4,s0
    1870:	4681                	li	a3,0
    1872:	0004c783          	lbu	a5,0(s1)
    1876:	00074603          	lbu	a2,0(a4)
    187a:	00c48023          	sb	a2,0(s1)
    187e:	00f70023          	sb	a5,0(a4)
    1882:	0016879b          	addiw	a5,a3,1
    1886:	0007869b          	sext.w	a3,a5
    188a:	0485                	addi	s1,s1,1
    188c:	177d                	addi	a4,a4,-1
    188e:	fff7c793          	not	a5,a5
    1892:	9fa9                	addw	a5,a5,a0
    1894:	fcf6cfe3          	blt	a3,a5,1872 <itoa+0x5a>
    1898:	60e2                	ld	ra,24(sp)
    189a:	6442                	ld	s0,16(sp)
    189c:	64a2                	ld	s1,8(sp)
    189e:	6105                	addi	sp,sp,32
    18a0:	8082                	ret
    18a2:	96a2                	add	a3,a3,s0
    18a4:	02d00793          	li	a5,45
    18a8:	00f68023          	sb	a5,0(a3)
    18ac:	0028869b          	addiw	a3,a7,2
    18b0:	b75d                	j	1856 <itoa+0x3e>

00000000000018b2 <atoi>:
    18b2:	00054783          	lbu	a5,0(a0)
    18b6:	02000713          	li	a4,32
    18ba:	00e79763          	bne	a5,a4,18c8 <atoi+0x16>
    18be:	0505                	addi	a0,a0,1
    18c0:	00054783          	lbu	a5,0(a0)
    18c4:	fee78de3          	beq	a5,a4,18be <atoi+0xc>
    18c8:	02b00713          	li	a4,43
    18cc:	04e78663          	beq	a5,a4,1918 <atoi+0x66>
    18d0:	02d00713          	li	a4,45
    18d4:	4805                	li	a6,1
    18d6:	04e78463          	beq	a5,a4,191e <atoi+0x6c>
    18da:	00054683          	lbu	a3,0(a0)
    18de:	fd06879b          	addiw	a5,a3,-48
    18e2:	0ff7f793          	andi	a5,a5,255
    18e6:	4725                	li	a4,9
    18e8:	02f76e63          	bltu	a4,a5,1924 <atoi+0x72>
    18ec:	4601                	li	a2,0
    18ee:	45a5                	li	a1,9
    18f0:	0505                	addi	a0,a0,1
    18f2:	0026179b          	slliw	a5,a2,0x2
    18f6:	9fb1                	addw	a5,a5,a2
    18f8:	0017979b          	slliw	a5,a5,0x1
    18fc:	9fb5                	addw	a5,a5,a3
    18fe:	fd07861b          	addiw	a2,a5,-48
    1902:	00054683          	lbu	a3,0(a0)
    1906:	fd06871b          	addiw	a4,a3,-48
    190a:	0ff77713          	andi	a4,a4,255
    190e:	fee5f1e3          	bgeu	a1,a4,18f0 <atoi+0x3e>
    1912:	02c8053b          	mulw	a0,a6,a2
    1916:	8082                	ret
    1918:	0505                	addi	a0,a0,1
    191a:	4805                	li	a6,1
    191c:	bf7d                	j	18da <atoi+0x28>
    191e:	0505                	addi	a0,a0,1
    1920:	587d                	li	a6,-1
    1922:	bf65                	j	18da <atoi+0x28>
    1924:	4601                	li	a2,0
    1926:	b7f5                	j	1912 <atoi+0x60>

0000000000001928 <check_file_handle>:
    1928:	d8010113          	addi	sp,sp,-640
    192c:	26113c23          	sd	ra,632(sp)
    1930:	26813823          	sd	s0,624(sp)
    1934:	26913423          	sd	s1,616(sp)
    1938:	27213023          	sd	s2,608(sp)
    193c:	25313c23          	sd	s3,600(sp)
    1940:	25413823          	sd	s4,592(sp)
    1944:	25513423          	sd	s5,584(sp)
    1948:	25613023          	sd	s6,576(sp)
    194c:	23713c23          	sd	s7,568(sp)
    1950:	23813823          	sd	s8,560(sp)
    1954:	23913423          	sd	s9,552(sp)
    1958:	23a13023          	sd	s10,544(sp)
    195c:	21b13c23          	sd	s11,536(sp)
    1960:	8baa                	mv	s7,a0
    1962:	8a2e                	mv	s4,a1
    1964:	8c32                	mv	s8,a2
    1966:	89b6                	mv	s3,a3
    1968:	040c                	addi	a1,sp,512
    196a:	00000097          	auipc	ra,0x0
    196e:	28e080e7          	jalr	654(ra) # 1bf8 <fstat>
    1972:	20813603          	ld	a2,520(sp)
    1976:	03361163          	bne	a2,s3,1998 <check_file_handle+0x70>
    197a:	06098763          	beqz	s3,19e8 <check_file_handle+0xc0>
    197e:	4901                	li	s2,0
    1980:	20000a93          	li	s5,512
    1984:	00002cb7          	lui	s9,0x2
    1988:	00002db7          	lui	s11,0x2
    198c:	6b0d                	lui	s6,0x3
    198e:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1992:	00002d37          	lui	s10,0x2
    1996:	aa39                	j	1ab4 <check_file_handle+0x18c>
    1998:	86ce                	mv	a3,s3
    199a:	85d2                	mv	a1,s4
    199c:	00002537          	lui	a0,0x2
    19a0:	1b850513          	addi	a0,a0,440 # 21b8 <crctab+0x530>
    19a4:	00000097          	auipc	ra,0x0
    19a8:	942080e7          	jalr	-1726(ra) # 12e6 <printf>
    19ac:	fc0999e3          	bnez	s3,197e <check_file_handle+0x56>
    19b0:	20813683          	ld	a3,520(sp)
    19b4:	03368a63          	beq	a3,s3,19e8 <check_file_handle+0xc0>
    19b8:	0a600813          	li	a6,166
    19bc:	000027b7          	lui	a5,0x2
    19c0:	08878793          	addi	a5,a5,136 # 2088 <crctab+0x400>
    19c4:	874e                	mv	a4,s3
    19c6:	8652                	mv	a2,s4
    19c8:	000025b7          	lui	a1,0x2
    19cc:	28858593          	addi	a1,a1,648 # 2288 <crctab+0x600>
    19d0:	4509                	li	a0,2
    19d2:	00000097          	auipc	ra,0x0
    19d6:	8f2080e7          	jalr	-1806(ra) # 12c4 <fprintf>
    19da:	650d                	lui	a0,0x3
    19dc:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19e0:	00000097          	auipc	ra,0x0
    19e4:	1c8080e7          	jalr	456(ra) # 1ba8 <exit>
    19e8:	85d2                	mv	a1,s4
    19ea:	00002537          	lui	a0,0x2
    19ee:	2d050513          	addi	a0,a0,720 # 22d0 <crctab+0x648>
    19f2:	00000097          	auipc	ra,0x0
    19f6:	8f4080e7          	jalr	-1804(ra) # 12e6 <printf>
    19fa:	27813083          	ld	ra,632(sp)
    19fe:	27013403          	ld	s0,624(sp)
    1a02:	26813483          	ld	s1,616(sp)
    1a06:	26013903          	ld	s2,608(sp)
    1a0a:	25813983          	ld	s3,600(sp)
    1a0e:	25013a03          	ld	s4,592(sp)
    1a12:	24813a83          	ld	s5,584(sp)
    1a16:	24013b03          	ld	s6,576(sp)
    1a1a:	23813b83          	ld	s7,568(sp)
    1a1e:	23013c03          	ld	s8,560(sp)
    1a22:	22813c83          	ld	s9,552(sp)
    1a26:	22013d03          	ld	s10,544(sp)
    1a2a:	21813d83          	ld	s11,536(sp)
    1a2e:	28010113          	addi	sp,sp,640
    1a32:	8082                	ret
    1a34:	09d00893          	li	a7,157
    1a38:	088c8813          	addi	a6,s9,136 # 2088 <crctab+0x400>
    1a3c:	87aa                	mv	a5,a0
    1a3e:	8752                	mv	a4,s4
    1a40:	86ca                	mv	a3,s2
    1a42:	8622                	mv	a2,s0
    1a44:	1e8d8593          	addi	a1,s11,488 # 21e8 <crctab+0x560>
    1a48:	4509                	li	a0,2
    1a4a:	00000097          	auipc	ra,0x0
    1a4e:	87a080e7          	jalr	-1926(ra) # 12c4 <fprintf>
    1a52:	855a                	mv	a0,s6
    1a54:	00000097          	auipc	ra,0x0
    1a58:	154080e7          	jalr	340(ra) # 1ba8 <exit>
    1a5c:	a89d                	j	1ad2 <check_file_handle+0x1aa>
    1a5e:	00160593          	addi	a1,a2,1
    1a62:	0285f163          	bgeu	a1,s0,1a84 <check_file_handle+0x15c>
    1a66:	00c10733          	add	a4,sp,a2
    1a6a:	00b487b3          	add	a5,s1,a1
    1a6e:	00174683          	lbu	a3,1(a4)
    1a72:	0007c783          	lbu	a5,0(a5)
    1a76:	00f68763          	beq	a3,a5,1a84 <check_file_handle+0x15c>
    1a7a:	0585                	addi	a1,a1,1
    1a7c:	0705                	addi	a4,a4,1
    1a7e:	feb416e3          	bne	s0,a1,1a6a <check_file_handle+0x142>
    1a82:	85a2                	mv	a1,s0
    1a84:	08100813          	li	a6,129
    1a88:	088c8793          	addi	a5,s9,136
    1a8c:	8752                	mv	a4,s4
    1a8e:	012606b3          	add	a3,a2,s2
    1a92:	40c58633          	sub	a2,a1,a2
    1a96:	230d0593          	addi	a1,s10,560 # 2230 <crctab+0x5a8>
    1a9a:	4509                	li	a0,2
    1a9c:	00000097          	auipc	ra,0x0
    1aa0:	828080e7          	jalr	-2008(ra) # 12c4 <fprintf>
    1aa4:	855a                	mv	a0,s6
    1aa6:	00000097          	auipc	ra,0x0
    1aaa:	102080e7          	jalr	258(ra) # 1ba8 <exit>
    1aae:	9922                	add	s2,s2,s0
    1ab0:	f13970e3          	bgeu	s2,s3,19b0 <check_file_handle+0x88>
    1ab4:	41298433          	sub	s0,s3,s2
    1ab8:	008af363          	bgeu	s5,s0,1abe <check_file_handle+0x196>
    1abc:	8456                	mv	s0,s5
    1abe:	0004061b          	sext.w	a2,s0
    1ac2:	858a                	mv	a1,sp
    1ac4:	855e                	mv	a0,s7
    1ac6:	00000097          	auipc	ra,0x0
    1aca:	10a080e7          	jalr	266(ra) # 1bd0 <read>
    1ace:	f68513e3          	bne	a0,s0,1a34 <check_file_handle+0x10c>
    1ad2:	012c04b3          	add	s1,s8,s2
    1ad6:	8622                	mv	a2,s0
    1ad8:	85a6                	mv	a1,s1
    1ada:	850a                	mv	a0,sp
    1adc:	00000097          	auipc	ra,0x0
    1ae0:	bce080e7          	jalr	-1074(ra) # 16aa <memcmp>
    1ae4:	d569                	beqz	a0,1aae <check_file_handle+0x186>
    1ae6:	03298163          	beq	s3,s2,1b08 <check_file_handle+0x1e0>
    1aea:	870a                	mv	a4,sp
    1aec:	4601                	li	a2,0
    1aee:	00c487b3          	add	a5,s1,a2
    1af2:	00074683          	lbu	a3,0(a4)
    1af6:	0007c783          	lbu	a5,0(a5)
    1afa:	f6f692e3          	bne	a3,a5,1a5e <check_file_handle+0x136>
    1afe:	0605                	addi	a2,a2,1
    1b00:	0705                	addi	a4,a4,1
    1b02:	fe8666e3          	bltu	a2,s0,1aee <check_file_handle+0x1c6>
    1b06:	bfa1                	j	1a5e <check_file_handle+0x136>
    1b08:	4601                	li	a2,0
    1b0a:	4585                	li	a1,1
    1b0c:	bfa5                	j	1a84 <check_file_handle+0x15c>

0000000000001b0e <check_file>:
    1b0e:	7179                	addi	sp,sp,-48
    1b10:	f406                	sd	ra,40(sp)
    1b12:	f022                	sd	s0,32(sp)
    1b14:	ec26                	sd	s1,24(sp)
    1b16:	e84a                	sd	s2,16(sp)
    1b18:	e44e                	sd	s3,8(sp)
    1b1a:	84aa                	mv	s1,a0
    1b1c:	892e                	mv	s2,a1
    1b1e:	89b2                	mv	s3,a2
    1b20:	4581                	li	a1,0
    1b22:	00000097          	auipc	ra,0x0
    1b26:	0a6080e7          	jalr	166(ra) # 1bc8 <open>
    1b2a:	842a                	mv	s0,a0
    1b2c:	4789                	li	a5,2
    1b2e:	02a7df63          	bge	a5,a0,1b6c <check_file+0x5e>
    1b32:	86ce                	mv	a3,s3
    1b34:	864a                	mv	a2,s2
    1b36:	85a6                	mv	a1,s1
    1b38:	8522                	mv	a0,s0
    1b3a:	00000097          	auipc	ra,0x0
    1b3e:	dee080e7          	jalr	-530(ra) # 1928 <check_file_handle>
    1b42:	85a6                	mv	a1,s1
    1b44:	00002537          	lui	a0,0x2
    1b48:	35850513          	addi	a0,a0,856 # 2358 <crctab+0x6d0>
    1b4c:	fffff097          	auipc	ra,0xfffff
    1b50:	79a080e7          	jalr	1946(ra) # 12e6 <printf>
    1b54:	8522                	mv	a0,s0
    1b56:	00000097          	auipc	ra,0x0
    1b5a:	09a080e7          	jalr	154(ra) # 1bf0 <close>
    1b5e:	70a2                	ld	ra,40(sp)
    1b60:	7402                	ld	s0,32(sp)
    1b62:	64e2                	ld	s1,24(sp)
    1b64:	6942                	ld	s2,16(sp)
    1b66:	69a2                	ld	s3,8(sp)
    1b68:	6145                	addi	sp,sp,48
    1b6a:	8082                	ret
    1b6c:	0ae00713          	li	a4,174
    1b70:	000026b7          	lui	a3,0x2
    1b74:	08868693          	addi	a3,a3,136 # 2088 <crctab+0x400>
    1b78:	8626                	mv	a2,s1
    1b7a:	000025b7          	lui	a1,0x2
    1b7e:	2f058593          	addi	a1,a1,752 # 22f0 <crctab+0x668>
    1b82:	4509                	li	a0,2
    1b84:	fffff097          	auipc	ra,0xfffff
    1b88:	740080e7          	jalr	1856(ra) # 12c4 <fprintf>
    1b8c:	650d                	lui	a0,0x3
    1b8e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b92:	00000097          	auipc	ra,0x0
    1b96:	016080e7          	jalr	22(ra) # 1ba8 <exit>
    1b9a:	bf61                	j	1b32 <check_file+0x24>

0000000000001b9c <r_sp>:
    1b9c:	850a                	mv	a0,sp
    1b9e:	8082                	ret

0000000000001ba0 <halt>:
    1ba0:	4885                	li	a7,1
    1ba2:	00000073          	ecall
    1ba6:	8082                	ret

0000000000001ba8 <exit>:
    1ba8:	4889                	li	a7,2
    1baa:	00000073          	ecall
    1bae:	8082                	ret

0000000000001bb0 <exec>:
    1bb0:	488d                	li	a7,3
    1bb2:	00000073          	ecall
    1bb6:	8082                	ret

0000000000001bb8 <wait>:
    1bb8:	4891                	li	a7,4
    1bba:	00000073          	ecall
    1bbe:	8082                	ret

0000000000001bc0 <remove>:
    1bc0:	4895                	li	a7,5
    1bc2:	00000073          	ecall
    1bc6:	8082                	ret

0000000000001bc8 <open>:
    1bc8:	4899                	li	a7,6
    1bca:	00000073          	ecall
    1bce:	8082                	ret

0000000000001bd0 <read>:
    1bd0:	489d                	li	a7,7
    1bd2:	00000073          	ecall
    1bd6:	8082                	ret

0000000000001bd8 <write>:
    1bd8:	48a1                	li	a7,8
    1bda:	00000073          	ecall
    1bde:	8082                	ret

0000000000001be0 <seek>:
    1be0:	48a5                	li	a7,9
    1be2:	00000073          	ecall
    1be6:	8082                	ret

0000000000001be8 <tell>:
    1be8:	48a9                	li	a7,10
    1bea:	00000073          	ecall
    1bee:	8082                	ret

0000000000001bf0 <close>:
    1bf0:	48ad                	li	a7,11
    1bf2:	00000073          	ecall
    1bf6:	8082                	ret

0000000000001bf8 <fstat>:
    1bf8:	48b1                	li	a7,12
    1bfa:	00000073          	ecall
    1bfe:	8082                	ret

0000000000001c00 <mmap>:
    1c00:	48b5                	li	a7,13
    1c02:	00000073          	ecall
    1c06:	8082                	ret

0000000000001c08 <munmap>:
    1c08:	48b9                	li	a7,14
    1c0a:	00000073          	ecall
    1c0e:	8082                	ret

0000000000001c10 <chdir>:
    1c10:	48bd                	li	a7,15
    1c12:	00000073          	ecall
    1c16:	8082                	ret

0000000000001c18 <mkdir>:
    1c18:	48c1                	li	a7,16
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret
