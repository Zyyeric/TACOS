
build/user/userprogs/exit:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	4501                	li	a0,0
    1006:	00001097          	auipc	ra,0x1
    100a:	ba6080e7          	jalr	-1114(ra) # 1bac <exit>
    100e:	469d                	li	a3,7
    1010:	00002637          	lui	a2,0x2
    1014:	c3060613          	addi	a2,a2,-976 # 1c30 <mkdir+0x14>
    1018:	000025b7          	lui	a1,0x2
    101c:	c4858593          	addi	a1,a1,-952 # 1c48 <mkdir+0x2c>
    1020:	4509                	li	a0,2
    1022:	00000097          	auipc	ra,0x0
    1026:	2a6080e7          	jalr	678(ra) # 12c8 <fprintf>
    102a:	650d                	lui	a0,0x3
    102c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1030:	00001097          	auipc	ra,0x1
    1034:	b7c080e7          	jalr	-1156(ra) # 1bac <exit>
    1038:	60a2                	ld	ra,8(sp)
    103a:	0141                	addi	sp,sp,16
    103c:	8082                	ret

000000000000103e <putc>:
    103e:	1101                	addi	sp,sp,-32
    1040:	ec06                	sd	ra,24(sp)
    1042:	00b107a3          	sb	a1,15(sp)
    1046:	4605                	li	a2,1
    1048:	00f10593          	addi	a1,sp,15
    104c:	00001097          	auipc	ra,0x1
    1050:	b90080e7          	jalr	-1136(ra) # 1bdc <write>
    1054:	60e2                	ld	ra,24(sp)
    1056:	6105                	addi	sp,sp,32
    1058:	8082                	ret

000000000000105a <printint>:
    105a:	7179                	addi	sp,sp,-48
    105c:	f406                	sd	ra,40(sp)
    105e:	f022                	sd	s0,32(sp)
    1060:	ec26                	sd	s1,24(sp)
    1062:	e84a                	sd	s2,16(sp)
    1064:	84aa                	mv	s1,a0
    1066:	c299                	beqz	a3,106c <printint+0x12>
    1068:	0805c363          	bltz	a1,10ee <printint+0x94>
    106c:	2581                	sext.w	a1,a1
    106e:	4881                	li	a7,0
    1070:	868a                	mv	a3,sp
    1072:	4701                	li	a4,0
    1074:	2601                	sext.w	a2,a2
    1076:	00002537          	lui	a0,0x2
    107a:	c8050513          	addi	a0,a0,-896 # 1c80 <digits>
    107e:	883a                	mv	a6,a4
    1080:	2705                	addiw	a4,a4,1
    1082:	02c5f7bb          	remuw	a5,a1,a2
    1086:	1782                	slli	a5,a5,0x20
    1088:	9381                	srli	a5,a5,0x20
    108a:	97aa                	add	a5,a5,a0
    108c:	0007c783          	lbu	a5,0(a5)
    1090:	00f68023          	sb	a5,0(a3)
    1094:	0005879b          	sext.w	a5,a1
    1098:	02c5d5bb          	divuw	a1,a1,a2
    109c:	0685                	addi	a3,a3,1
    109e:	fec7f0e3          	bgeu	a5,a2,107e <printint+0x24>
    10a2:	00088a63          	beqz	a7,10b6 <printint+0x5c>
    10a6:	081c                	addi	a5,sp,16
    10a8:	973e                	add	a4,a4,a5
    10aa:	02d00793          	li	a5,45
    10ae:	fef70823          	sb	a5,-16(a4)
    10b2:	0028071b          	addiw	a4,a6,2
    10b6:	02e05663          	blez	a4,10e2 <printint+0x88>
    10ba:	00e10433          	add	s0,sp,a4
    10be:	fff10913          	addi	s2,sp,-1
    10c2:	993a                	add	s2,s2,a4
    10c4:	377d                	addiw	a4,a4,-1
    10c6:	1702                	slli	a4,a4,0x20
    10c8:	9301                	srli	a4,a4,0x20
    10ca:	40e90933          	sub	s2,s2,a4
    10ce:	fff44583          	lbu	a1,-1(s0)
    10d2:	8526                	mv	a0,s1
    10d4:	00000097          	auipc	ra,0x0
    10d8:	f6a080e7          	jalr	-150(ra) # 103e <putc>
    10dc:	147d                	addi	s0,s0,-1
    10de:	ff2418e3          	bne	s0,s2,10ce <printint+0x74>
    10e2:	70a2                	ld	ra,40(sp)
    10e4:	7402                	ld	s0,32(sp)
    10e6:	64e2                	ld	s1,24(sp)
    10e8:	6942                	ld	s2,16(sp)
    10ea:	6145                	addi	sp,sp,48
    10ec:	8082                	ret
    10ee:	40b005bb          	negw	a1,a1
    10f2:	4885                	li	a7,1
    10f4:	bfb5                	j	1070 <printint+0x16>

00000000000010f6 <vprintf>:
    10f6:	7159                	addi	sp,sp,-112
    10f8:	f486                	sd	ra,104(sp)
    10fa:	f0a2                	sd	s0,96(sp)
    10fc:	eca6                	sd	s1,88(sp)
    10fe:	e8ca                	sd	s2,80(sp)
    1100:	e4ce                	sd	s3,72(sp)
    1102:	e0d2                	sd	s4,64(sp)
    1104:	fc56                	sd	s5,56(sp)
    1106:	f85a                	sd	s6,48(sp)
    1108:	f45e                	sd	s7,40(sp)
    110a:	f062                	sd	s8,32(sp)
    110c:	ec66                	sd	s9,24(sp)
    110e:	e86a                	sd	s10,16(sp)
    1110:	e46e                	sd	s11,8(sp)
    1112:	0005c483          	lbu	s1,0(a1)
    1116:	18048a63          	beqz	s1,12aa <vprintf+0x1b4>
    111a:	8a2a                	mv	s4,a0
    111c:	8ab2                	mv	s5,a2
    111e:	00158413          	addi	s0,a1,1
    1122:	4901                	li	s2,0
    1124:	02500993          	li	s3,37
    1128:	06400b93          	li	s7,100
    112c:	06c00c13          	li	s8,108
    1130:	07800c93          	li	s9,120
    1134:	07000d13          	li	s10,112
    1138:	00002db7          	lui	s11,0x2
    113c:	00002b37          	lui	s6,0x2
    1140:	c80b0b13          	addi	s6,s6,-896 # 1c80 <digits>
    1144:	a839                	j	1162 <vprintf+0x6c>
    1146:	85a6                	mv	a1,s1
    1148:	8552                	mv	a0,s4
    114a:	00000097          	auipc	ra,0x0
    114e:	ef4080e7          	jalr	-268(ra) # 103e <putc>
    1152:	a019                	j	1158 <vprintf+0x62>
    1154:	01390f63          	beq	s2,s3,1172 <vprintf+0x7c>
    1158:	0405                	addi	s0,s0,1
    115a:	fff44483          	lbu	s1,-1(s0)
    115e:	14048663          	beqz	s1,12aa <vprintf+0x1b4>
    1162:	0004879b          	sext.w	a5,s1
    1166:	fe0917e3          	bnez	s2,1154 <vprintf+0x5e>
    116a:	fd379ee3          	bne	a5,s3,1146 <vprintf+0x50>
    116e:	893e                	mv	s2,a5
    1170:	b7e5                	j	1158 <vprintf+0x62>
    1172:	05778063          	beq	a5,s7,11b2 <vprintf+0xbc>
    1176:	05878c63          	beq	a5,s8,11ce <vprintf+0xd8>
    117a:	07978863          	beq	a5,s9,11ea <vprintf+0xf4>
    117e:	09a78463          	beq	a5,s10,1206 <vprintf+0x110>
    1182:	07300713          	li	a4,115
    1186:	0ce78263          	beq	a5,a4,124a <vprintf+0x154>
    118a:	06300713          	li	a4,99
    118e:	0ee78763          	beq	a5,a4,127c <vprintf+0x186>
    1192:	11378163          	beq	a5,s3,1294 <vprintf+0x19e>
    1196:	85ce                	mv	a1,s3
    1198:	8552                	mv	a0,s4
    119a:	00000097          	auipc	ra,0x0
    119e:	ea4080e7          	jalr	-348(ra) # 103e <putc>
    11a2:	85a6                	mv	a1,s1
    11a4:	8552                	mv	a0,s4
    11a6:	00000097          	auipc	ra,0x0
    11aa:	e98080e7          	jalr	-360(ra) # 103e <putc>
    11ae:	4901                	li	s2,0
    11b0:	b765                	j	1158 <vprintf+0x62>
    11b2:	008a8493          	addi	s1,s5,8
    11b6:	4685                	li	a3,1
    11b8:	4629                	li	a2,10
    11ba:	000aa583          	lw	a1,0(s5)
    11be:	8552                	mv	a0,s4
    11c0:	00000097          	auipc	ra,0x0
    11c4:	e9a080e7          	jalr	-358(ra) # 105a <printint>
    11c8:	8aa6                	mv	s5,s1
    11ca:	4901                	li	s2,0
    11cc:	b771                	j	1158 <vprintf+0x62>
    11ce:	008a8493          	addi	s1,s5,8
    11d2:	4681                	li	a3,0
    11d4:	4629                	li	a2,10
    11d6:	000aa583          	lw	a1,0(s5)
    11da:	8552                	mv	a0,s4
    11dc:	00000097          	auipc	ra,0x0
    11e0:	e7e080e7          	jalr	-386(ra) # 105a <printint>
    11e4:	8aa6                	mv	s5,s1
    11e6:	4901                	li	s2,0
    11e8:	bf85                	j	1158 <vprintf+0x62>
    11ea:	008a8493          	addi	s1,s5,8
    11ee:	4681                	li	a3,0
    11f0:	4641                	li	a2,16
    11f2:	000aa583          	lw	a1,0(s5)
    11f6:	8552                	mv	a0,s4
    11f8:	00000097          	auipc	ra,0x0
    11fc:	e62080e7          	jalr	-414(ra) # 105a <printint>
    1200:	8aa6                	mv	s5,s1
    1202:	4901                	li	s2,0
    1204:	bf91                	j	1158 <vprintf+0x62>
    1206:	008a8913          	addi	s2,s5,8
    120a:	000aba83          	ld	s5,0(s5)
    120e:	03000593          	li	a1,48
    1212:	8552                	mv	a0,s4
    1214:	00000097          	auipc	ra,0x0
    1218:	e2a080e7          	jalr	-470(ra) # 103e <putc>
    121c:	85e6                	mv	a1,s9
    121e:	8552                	mv	a0,s4
    1220:	00000097          	auipc	ra,0x0
    1224:	e1e080e7          	jalr	-482(ra) # 103e <putc>
    1228:	44c1                	li	s1,16
    122a:	03cad793          	srli	a5,s5,0x3c
    122e:	97da                	add	a5,a5,s6
    1230:	0007c583          	lbu	a1,0(a5)
    1234:	8552                	mv	a0,s4
    1236:	00000097          	auipc	ra,0x0
    123a:	e08080e7          	jalr	-504(ra) # 103e <putc>
    123e:	0a92                	slli	s5,s5,0x4
    1240:	34fd                	addiw	s1,s1,-1
    1242:	f4e5                	bnez	s1,122a <vprintf+0x134>
    1244:	8aca                	mv	s5,s2
    1246:	4901                	li	s2,0
    1248:	bf01                	j	1158 <vprintf+0x62>
    124a:	008a8913          	addi	s2,s5,8
    124e:	000ab483          	ld	s1,0(s5)
    1252:	c085                	beqz	s1,1272 <vprintf+0x17c>
    1254:	0004c583          	lbu	a1,0(s1)
    1258:	c5b1                	beqz	a1,12a4 <vprintf+0x1ae>
    125a:	8552                	mv	a0,s4
    125c:	00000097          	auipc	ra,0x0
    1260:	de2080e7          	jalr	-542(ra) # 103e <putc>
    1264:	0485                	addi	s1,s1,1
    1266:	0004c583          	lbu	a1,0(s1)
    126a:	f9e5                	bnez	a1,125a <vprintf+0x164>
    126c:	8aca                	mv	s5,s2
    126e:	4901                	li	s2,0
    1270:	b5e5                	j	1158 <vprintf+0x62>
    1272:	c78d8493          	addi	s1,s11,-904 # 1c78 <mkdir+0x5c>
    1276:	02800593          	li	a1,40
    127a:	b7c5                	j	125a <vprintf+0x164>
    127c:	008a8493          	addi	s1,s5,8
    1280:	000ac583          	lbu	a1,0(s5)
    1284:	8552                	mv	a0,s4
    1286:	00000097          	auipc	ra,0x0
    128a:	db8080e7          	jalr	-584(ra) # 103e <putc>
    128e:	8aa6                	mv	s5,s1
    1290:	4901                	li	s2,0
    1292:	b5d9                	j	1158 <vprintf+0x62>
    1294:	85ce                	mv	a1,s3
    1296:	8552                	mv	a0,s4
    1298:	00000097          	auipc	ra,0x0
    129c:	da6080e7          	jalr	-602(ra) # 103e <putc>
    12a0:	4901                	li	s2,0
    12a2:	bd5d                	j	1158 <vprintf+0x62>
    12a4:	8aca                	mv	s5,s2
    12a6:	4901                	li	s2,0
    12a8:	bd45                	j	1158 <vprintf+0x62>
    12aa:	70a6                	ld	ra,104(sp)
    12ac:	7406                	ld	s0,96(sp)
    12ae:	64e6                	ld	s1,88(sp)
    12b0:	6946                	ld	s2,80(sp)
    12b2:	69a6                	ld	s3,72(sp)
    12b4:	6a06                	ld	s4,64(sp)
    12b6:	7ae2                	ld	s5,56(sp)
    12b8:	7b42                	ld	s6,48(sp)
    12ba:	7ba2                	ld	s7,40(sp)
    12bc:	7c02                	ld	s8,32(sp)
    12be:	6ce2                	ld	s9,24(sp)
    12c0:	6d42                	ld	s10,16(sp)
    12c2:	6da2                	ld	s11,8(sp)
    12c4:	6165                	addi	sp,sp,112
    12c6:	8082                	ret

00000000000012c8 <fprintf>:
    12c8:	715d                	addi	sp,sp,-80
    12ca:	ec06                	sd	ra,24(sp)
    12cc:	f032                	sd	a2,32(sp)
    12ce:	f436                	sd	a3,40(sp)
    12d0:	f83a                	sd	a4,48(sp)
    12d2:	fc3e                	sd	a5,56(sp)
    12d4:	e0c2                	sd	a6,64(sp)
    12d6:	e4c6                	sd	a7,72(sp)
    12d8:	1010                	addi	a2,sp,32
    12da:	e432                	sd	a2,8(sp)
    12dc:	00000097          	auipc	ra,0x0
    12e0:	e1a080e7          	jalr	-486(ra) # 10f6 <vprintf>
    12e4:	60e2                	ld	ra,24(sp)
    12e6:	6161                	addi	sp,sp,80
    12e8:	8082                	ret

00000000000012ea <printf>:
    12ea:	711d                	addi	sp,sp,-96
    12ec:	ec06                	sd	ra,24(sp)
    12ee:	f42e                	sd	a1,40(sp)
    12f0:	f832                	sd	a2,48(sp)
    12f2:	fc36                	sd	a3,56(sp)
    12f4:	e0ba                	sd	a4,64(sp)
    12f6:	e4be                	sd	a5,72(sp)
    12f8:	e8c2                	sd	a6,80(sp)
    12fa:	ecc6                	sd	a7,88(sp)
    12fc:	1030                	addi	a2,sp,40
    12fe:	e432                	sd	a2,8(sp)
    1300:	85aa                	mv	a1,a0
    1302:	4505                	li	a0,1
    1304:	00000097          	auipc	ra,0x0
    1308:	df2080e7          	jalr	-526(ra) # 10f6 <vprintf>
    130c:	60e2                	ld	ra,24(sp)
    130e:	6125                	addi	sp,sp,96
    1310:	8082                	ret

0000000000001312 <cksum>:
    1312:	cdb1                	beqz	a1,136e <cksum+0x5c>
    1314:	00b50833          	add	a6,a0,a1
    1318:	4781                	li	a5,0
    131a:	00002637          	lui	a2,0x2
    131e:	c9860613          	addi	a2,a2,-872 # 1c98 <crctab>
    1322:	0505                	addi	a0,a0,1
    1324:	0087969b          	slliw	a3,a5,0x8
    1328:	0187d71b          	srliw	a4,a5,0x18
    132c:	fff54783          	lbu	a5,-1(a0)
    1330:	8f3d                	xor	a4,a4,a5
    1332:	1702                	slli	a4,a4,0x20
    1334:	9301                	srli	a4,a4,0x20
    1336:	070a                	slli	a4,a4,0x2
    1338:	9732                	add	a4,a4,a2
    133a:	431c                	lw	a5,0(a4)
    133c:	8fb5                	xor	a5,a5,a3
    133e:	2781                	sext.w	a5,a5
    1340:	fea811e3          	bne	a6,a0,1322 <cksum+0x10>
    1344:	00002637          	lui	a2,0x2
    1348:	c9860613          	addi	a2,a2,-872 # 1c98 <crctab>
    134c:	0ff5f693          	andi	a3,a1,255
    1350:	81a1                	srli	a1,a1,0x8
    1352:	0087951b          	slliw	a0,a5,0x8
    1356:	0187d71b          	srliw	a4,a5,0x18
    135a:	8f35                	xor	a4,a4,a3
    135c:	070a                	slli	a4,a4,0x2
    135e:	9732                	add	a4,a4,a2
    1360:	431c                	lw	a5,0(a4)
    1362:	8fa9                	xor	a5,a5,a0
    1364:	2781                	sext.w	a5,a5
    1366:	f1fd                	bnez	a1,134c <cksum+0x3a>
    1368:	fff7c513          	not	a0,a5
    136c:	8082                	ret
    136e:	4781                	li	a5,0
    1370:	bfe5                	j	1368 <cksum+0x56>

0000000000001372 <swap_bytes>:
    1372:	ce19                	beqz	a2,1390 <swap_bytes+0x1e>
    1374:	87aa                	mv	a5,a0
    1376:	962a                	add	a2,a2,a0
    1378:	0007c703          	lbu	a4,0(a5)
    137c:	0005c683          	lbu	a3,0(a1)
    1380:	00d78023          	sb	a3,0(a5)
    1384:	00e58023          	sb	a4,0(a1)
    1388:	0785                	addi	a5,a5,1
    138a:	0585                	addi	a1,a1,1
    138c:	fec796e3          	bne	a5,a2,1378 <swap_bytes+0x6>
    1390:	8082                	ret

0000000000001392 <random_init>:
    1392:	7139                	addi	sp,sp,-64
    1394:	fc06                	sd	ra,56(sp)
    1396:	f822                	sd	s0,48(sp)
    1398:	f426                	sd	s1,40(sp)
    139a:	f04a                	sd	s2,32(sp)
    139c:	ec4e                	sd	s3,24(sp)
    139e:	e852                	sd	s4,16(sp)
    13a0:	c62a                	sw	a0,12(sp)
    13a2:	000037b7          	lui	a5,0x3
    13a6:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13aa:	eca5                	bnez	s1,1422 <random_init+0x90>
    13ac:	00003737          	lui	a4,0x3
    13b0:	01070913          	addi	s2,a4,16 # 3010 <s>
    13b4:	01070713          	addi	a4,a4,16
    13b8:	87a6                	mv	a5,s1
    13ba:	10000693          	li	a3,256
    13be:	00f70023          	sb	a5,0(a4)
    13c2:	2785                	addiw	a5,a5,1
    13c4:	0705                	addi	a4,a4,1
    13c6:	fed79ce3          	bne	a5,a3,13be <random_init+0x2c>
    13ca:	4401                	li	s0,0
    13cc:	000039b7          	lui	s3,0x3
    13d0:	01098993          	addi	s3,s3,16 # 3010 <s>
    13d4:	10000a13          	li	s4,256
    13d8:	0034f793          	andi	a5,s1,3
    13dc:	0818                	addi	a4,sp,16
    13de:	97ba                	add	a5,a5,a4
    13e0:	ffc7c783          	lbu	a5,-4(a5)
    13e4:	00094703          	lbu	a4,0(s2)
    13e8:	9fb9                	addw	a5,a5,a4
    13ea:	9c3d                	addw	s0,s0,a5
    13ec:	0ff47413          	andi	s0,s0,255
    13f0:	4605                	li	a2,1
    13f2:	008985b3          	add	a1,s3,s0
    13f6:	854a                	mv	a0,s2
    13f8:	00000097          	auipc	ra,0x0
    13fc:	f7a080e7          	jalr	-134(ra) # 1372 <swap_bytes>
    1400:	2485                	addiw	s1,s1,1
    1402:	0905                	addi	s2,s2,1
    1404:	fd449ae3          	bne	s1,s4,13d8 <random_init+0x46>
    1408:	000037b7          	lui	a5,0x3
    140c:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1410:	000037b7          	lui	a5,0x3
    1414:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    1418:	000037b7          	lui	a5,0x3
    141c:	4705                	li	a4,1
    141e:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1422:	70e2                	ld	ra,56(sp)
    1424:	7442                	ld	s0,48(sp)
    1426:	74a2                	ld	s1,40(sp)
    1428:	7902                	ld	s2,32(sp)
    142a:	69e2                	ld	s3,24(sp)
    142c:	6a42                	ld	s4,16(sp)
    142e:	6121                	addi	sp,sp,64
    1430:	8082                	ret

0000000000001432 <random_bytes>:
    1432:	7139                	addi	sp,sp,-64
    1434:	fc06                	sd	ra,56(sp)
    1436:	f822                	sd	s0,48(sp)
    1438:	f426                	sd	s1,40(sp)
    143a:	f04a                	sd	s2,32(sp)
    143c:	ec4e                	sd	s3,24(sp)
    143e:	e852                	sd	s4,16(sp)
    1440:	e456                	sd	s5,8(sp)
    1442:	e05a                	sd	s6,0(sp)
    1444:	892a                	mv	s2,a0
    1446:	8aae                	mv	s5,a1
    1448:	000037b7          	lui	a5,0x3
    144c:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1450:	c3c1                	beqz	a5,14d0 <random_bytes+0x9e>
    1452:	060a8563          	beqz	s5,14bc <random_bytes+0x8a>
    1456:	9aca                	add	s5,s5,s2
    1458:	00003a37          	lui	s4,0x3
    145c:	000034b7          	lui	s1,0x3
    1460:	01048493          	addi	s1,s1,16 # 3010 <s>
    1464:	000039b7          	lui	s3,0x3
    1468:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    146c:	2505                	addiw	a0,a0,1
    146e:	0ff57513          	andi	a0,a0,255
    1472:	00aa02a3          	sb	a0,5(s4)
    1476:	00a48b33          	add	s6,s1,a0
    147a:	000b4403          	lbu	s0,0(s6)
    147e:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1482:	9c3d                	addw	s0,s0,a5
    1484:	0ff47413          	andi	s0,s0,255
    1488:	00898223          	sb	s0,4(s3)
    148c:	4605                	li	a2,1
    148e:	008485b3          	add	a1,s1,s0
    1492:	855a                	mv	a0,s6
    1494:	00000097          	auipc	ra,0x0
    1498:	ede080e7          	jalr	-290(ra) # 1372 <swap_bytes>
    149c:	9426                	add	s0,s0,s1
    149e:	000b4783          	lbu	a5,0(s6)
    14a2:	00044703          	lbu	a4,0(s0)
    14a6:	9fb9                	addw	a5,a5,a4
    14a8:	0ff7f793          	andi	a5,a5,255
    14ac:	97a6                	add	a5,a5,s1
    14ae:	0007c783          	lbu	a5,0(a5)
    14b2:	00f90023          	sb	a5,0(s2)
    14b6:	0905                	addi	s2,s2,1
    14b8:	fb2a98e3          	bne	s5,s2,1468 <random_bytes+0x36>
    14bc:	70e2                	ld	ra,56(sp)
    14be:	7442                	ld	s0,48(sp)
    14c0:	74a2                	ld	s1,40(sp)
    14c2:	7902                	ld	s2,32(sp)
    14c4:	69e2                	ld	s3,24(sp)
    14c6:	6a42                	ld	s4,16(sp)
    14c8:	6aa2                	ld	s5,8(sp)
    14ca:	6b02                	ld	s6,0(sp)
    14cc:	6121                	addi	sp,sp,64
    14ce:	8082                	ret
    14d0:	4501                	li	a0,0
    14d2:	00000097          	auipc	ra,0x0
    14d6:	ec0080e7          	jalr	-320(ra) # 1392 <random_init>
    14da:	bfa5                	j	1452 <random_bytes+0x20>

00000000000014dc <random_ulong>:
    14dc:	1101                	addi	sp,sp,-32
    14de:	ec06                	sd	ra,24(sp)
    14e0:	45a1                	li	a1,8
    14e2:	0028                	addi	a0,sp,8
    14e4:	00000097          	auipc	ra,0x0
    14e8:	f4e080e7          	jalr	-178(ra) # 1432 <random_bytes>
    14ec:	6522                	ld	a0,8(sp)
    14ee:	60e2                	ld	ra,24(sp)
    14f0:	6105                	addi	sp,sp,32
    14f2:	8082                	ret

00000000000014f4 <shuffle>:
    14f4:	c9b9                	beqz	a1,154a <shuffle+0x56>
    14f6:	7179                	addi	sp,sp,-48
    14f8:	f406                	sd	ra,40(sp)
    14fa:	f022                	sd	s0,32(sp)
    14fc:	ec26                	sd	s1,24(sp)
    14fe:	e84a                	sd	s2,16(sp)
    1500:	e44e                	sd	s3,8(sp)
    1502:	e052                	sd	s4,0(sp)
    1504:	8a2a                	mv	s4,a0
    1506:	89ae                	mv	s3,a1
    1508:	84b2                	mv	s1,a2
    150a:	892a                	mv	s2,a0
    150c:	4401                	li	s0,0
    150e:	00000097          	auipc	ra,0x0
    1512:	fce080e7          	jalr	-50(ra) # 14dc <random_ulong>
    1516:	408985b3          	sub	a1,s3,s0
    151a:	02b575b3          	remu	a1,a0,a1
    151e:	95a2                	add	a1,a1,s0
    1520:	029585b3          	mul	a1,a1,s1
    1524:	8626                	mv	a2,s1
    1526:	95d2                	add	a1,a1,s4
    1528:	854a                	mv	a0,s2
    152a:	00000097          	auipc	ra,0x0
    152e:	e48080e7          	jalr	-440(ra) # 1372 <swap_bytes>
    1532:	0405                	addi	s0,s0,1
    1534:	9926                	add	s2,s2,s1
    1536:	fc899ce3          	bne	s3,s0,150e <shuffle+0x1a>
    153a:	70a2                	ld	ra,40(sp)
    153c:	7402                	ld	s0,32(sp)
    153e:	64e2                	ld	s1,24(sp)
    1540:	6942                	ld	s2,16(sp)
    1542:	69a2                	ld	s3,8(sp)
    1544:	6a02                	ld	s4,0(sp)
    1546:	6145                	addi	sp,sp,48
    1548:	8082                	ret
    154a:	8082                	ret

000000000000154c <arc4_init>:
    154c:	100500a3          	sb	zero,257(a0)
    1550:	10050023          	sb	zero,256(a0)
    1554:	4781                	li	a5,0
    1556:	10000693          	li	a3,256
    155a:	00f50733          	add	a4,a0,a5
    155e:	00f70023          	sb	a5,0(a4)
    1562:	0785                	addi	a5,a5,1
    1564:	fed79be3          	bne	a5,a3,155a <arc4_init+0xe>
    1568:	86aa                	mv	a3,a0
    156a:	10050e13          	addi	t3,a0,256
    156e:	4701                	li	a4,0
    1570:	4781                	li	a5,0
    1572:	0006c883          	lbu	a7,0(a3)
    1576:	00f58833          	add	a6,a1,a5
    157a:	00084803          	lbu	a6,0(a6)
    157e:	00e8873b          	addw	a4,a7,a4
    1582:	00e8073b          	addw	a4,a6,a4
    1586:	0ff77713          	andi	a4,a4,255
    158a:	00e50833          	add	a6,a0,a4
    158e:	00084303          	lbu	t1,0(a6)
    1592:	00668023          	sb	t1,0(a3)
    1596:	01180023          	sb	a7,0(a6)
    159a:	0785                	addi	a5,a5,1
    159c:	00c7b833          	sltu	a6,a5,a2
    15a0:	41000833          	neg	a6,a6
    15a4:	0107f7b3          	and	a5,a5,a6
    15a8:	0685                	addi	a3,a3,1
    15aa:	fdc694e3          	bne	a3,t3,1572 <arc4_init+0x26>
    15ae:	8082                	ret

00000000000015b0 <arc4_crypt>:
    15b0:	10054e03          	lbu	t3,256(a0)
    15b4:	10154803          	lbu	a6,257(a0)
    15b8:	fff60e93          	addi	t4,a2,-1
    15bc:	c225                	beqz	a2,161c <arc4_crypt+0x6c>
    15be:	00c588b3          	add	a7,a1,a2
    15c2:	86ae                	mv	a3,a1
    15c4:	001e031b          	addiw	t1,t3,1
    15c8:	40b3033b          	subw	t1,t1,a1
    15cc:	00d3073b          	addw	a4,t1,a3
    15d0:	0ff77713          	andi	a4,a4,255
    15d4:	972a                	add	a4,a4,a0
    15d6:	00074603          	lbu	a2,0(a4)
    15da:	0106083b          	addw	a6,a2,a6
    15de:	0ff87813          	andi	a6,a6,255
    15e2:	010507b3          	add	a5,a0,a6
    15e6:	0007c583          	lbu	a1,0(a5)
    15ea:	00b70023          	sb	a1,0(a4)
    15ee:	00c78023          	sb	a2,0(a5)
    15f2:	0685                	addi	a3,a3,1
    15f4:	00074783          	lbu	a5,0(a4)
    15f8:	9fb1                	addw	a5,a5,a2
    15fa:	0ff7f793          	andi	a5,a5,255
    15fe:	97aa                	add	a5,a5,a0
    1600:	0007c783          	lbu	a5,0(a5)
    1604:	fff6c703          	lbu	a4,-1(a3)
    1608:	8fb9                	xor	a5,a5,a4
    160a:	fef68fa3          	sb	a5,-1(a3)
    160e:	fb169fe3          	bne	a3,a7,15cc <arc4_crypt+0x1c>
    1612:	2e85                	addiw	t4,t4,1
    1614:	01ce8e3b          	addw	t3,t4,t3
    1618:	0ffe7e13          	andi	t3,t3,255
    161c:	11c50023          	sb	t3,256(a0)
    1620:	110500a3          	sb	a6,257(a0)
    1624:	8082                	ret

0000000000001626 <_main>:
    1626:	1141                	addi	sp,sp,-16
    1628:	e406                	sd	ra,8(sp)
    162a:	00000097          	auipc	ra,0x0
    162e:	9d6080e7          	jalr	-1578(ra) # 1000 <main>
    1632:	4501                	li	a0,0
    1634:	00000097          	auipc	ra,0x0
    1638:	578080e7          	jalr	1400(ra) # 1bac <exit>
    163c:	60a2                	ld	ra,8(sp)
    163e:	0141                	addi	sp,sp,16
    1640:	8082                	ret

0000000000001642 <strcmp>:
    1642:	00054783          	lbu	a5,0(a0)
    1646:	cb91                	beqz	a5,165a <strcmp+0x18>
    1648:	0005c703          	lbu	a4,0(a1)
    164c:	00f71763          	bne	a4,a5,165a <strcmp+0x18>
    1650:	0505                	addi	a0,a0,1
    1652:	0585                	addi	a1,a1,1
    1654:	00054783          	lbu	a5,0(a0)
    1658:	fbe5                	bnez	a5,1648 <strcmp+0x6>
    165a:	0005c503          	lbu	a0,0(a1)
    165e:	40a7853b          	subw	a0,a5,a0
    1662:	8082                	ret

0000000000001664 <strcpy>:
    1664:	87aa                	mv	a5,a0
    1666:	0585                	addi	a1,a1,1
    1668:	0785                	addi	a5,a5,1
    166a:	fff5c703          	lbu	a4,-1(a1)
    166e:	fee78fa3          	sb	a4,-1(a5)
    1672:	fb75                	bnez	a4,1666 <strcpy+0x2>
    1674:	8082                	ret

0000000000001676 <strlen>:
    1676:	00054783          	lbu	a5,0(a0)
    167a:	cf81                	beqz	a5,1692 <strlen+0x1c>
    167c:	0505                	addi	a0,a0,1
    167e:	87aa                	mv	a5,a0
    1680:	4685                	li	a3,1
    1682:	9e89                	subw	a3,a3,a0
    1684:	00f6853b          	addw	a0,a3,a5
    1688:	0785                	addi	a5,a5,1
    168a:	fff7c703          	lbu	a4,-1(a5)
    168e:	fb7d                	bnez	a4,1684 <strlen+0xe>
    1690:	8082                	ret
    1692:	4501                	li	a0,0
    1694:	8082                	ret

0000000000001696 <memset>:
    1696:	ca19                	beqz	a2,16ac <memset+0x16>
    1698:	87aa                	mv	a5,a0
    169a:	1602                	slli	a2,a2,0x20
    169c:	9201                	srli	a2,a2,0x20
    169e:	00a60733          	add	a4,a2,a0
    16a2:	00b78023          	sb	a1,0(a5)
    16a6:	0785                	addi	a5,a5,1
    16a8:	fee79de3          	bne	a5,a4,16a2 <memset+0xc>
    16ac:	8082                	ret

00000000000016ae <memcmp>:
    16ae:	1101                	addi	sp,sp,-32
    16b0:	ec06                	sd	ra,24(sp)
    16b2:	e822                	sd	s0,16(sp)
    16b4:	e426                	sd	s1,8(sp)
    16b6:	e04a                	sd	s2,0(sp)
    16b8:	892a                	mv	s2,a0
    16ba:	842e                	mv	s0,a1
    16bc:	84b2                	mv	s1,a2
    16be:	c915                	beqz	a0,16f2 <memcmp+0x44>
    16c0:	c5ad                	beqz	a1,172a <memcmp+0x7c>
    16c2:	fff60713          	addi	a4,a2,-1
    16c6:	c645                	beqz	a2,176e <memcmp+0xc0>
    16c8:	87ca                	mv	a5,s2
    16ca:	00190613          	addi	a2,s2,1
    16ce:	963a                	add	a2,a2,a4
    16d0:	0007c683          	lbu	a3,0(a5)
    16d4:	00044703          	lbu	a4,0(s0)
    16d8:	08e69463          	bne	a3,a4,1760 <memcmp+0xb2>
    16dc:	0785                	addi	a5,a5,1
    16de:	0405                	addi	s0,s0,1
    16e0:	fec798e3          	bne	a5,a2,16d0 <memcmp+0x22>
    16e4:	4501                	li	a0,0
    16e6:	60e2                	ld	ra,24(sp)
    16e8:	6442                	ld	s0,16(sp)
    16ea:	64a2                	ld	s1,8(sp)
    16ec:	6902                	ld	s2,0(sp)
    16ee:	6105                	addi	sp,sp,32
    16f0:	8082                	ret
    16f2:	4501                	li	a0,0
    16f4:	da6d                	beqz	a2,16e6 <memcmp+0x38>
    16f6:	03200693          	li	a3,50
    16fa:	00002637          	lui	a2,0x2
    16fe:	09860613          	addi	a2,a2,152 # 2098 <crctab+0x400>
    1702:	000025b7          	lui	a1,0x2
    1706:	0a858593          	addi	a1,a1,168 # 20a8 <crctab+0x410>
    170a:	4509                	li	a0,2
    170c:	00000097          	auipc	ra,0x0
    1710:	bbc080e7          	jalr	-1092(ra) # 12c8 <fprintf>
    1714:	650d                	lui	a0,0x3
    1716:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    171a:	00000097          	auipc	ra,0x0
    171e:	492080e7          	jalr	1170(ra) # 1bac <exit>
    1722:	fff48713          	addi	a4,s1,-1
    1726:	f04d                	bnez	s0,16c8 <memcmp+0x1a>
    1728:	a011                	j	172c <memcmp+0x7e>
    172a:	c221                	beqz	a2,176a <memcmp+0xbc>
    172c:	03300693          	li	a3,51
    1730:	00002637          	lui	a2,0x2
    1734:	09860613          	addi	a2,a2,152 # 2098 <crctab+0x400>
    1738:	000025b7          	lui	a1,0x2
    173c:	0f058593          	addi	a1,a1,240 # 20f0 <crctab+0x458>
    1740:	4509                	li	a0,2
    1742:	00000097          	auipc	ra,0x0
    1746:	b86080e7          	jalr	-1146(ra) # 12c8 <fprintf>
    174a:	650d                	lui	a0,0x3
    174c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1750:	00000097          	auipc	ra,0x0
    1754:	45c080e7          	jalr	1116(ra) # 1bac <exit>
    1758:	fff48713          	addi	a4,s1,-1
    175c:	4401                	li	s0,0
    175e:	b7ad                	j	16c8 <memcmp+0x1a>
    1760:	4505                	li	a0,1
    1762:	f8d762e3          	bltu	a4,a3,16e6 <memcmp+0x38>
    1766:	557d                	li	a0,-1
    1768:	bfbd                	j	16e6 <memcmp+0x38>
    176a:	4501                	li	a0,0
    176c:	bfad                	j	16e6 <memcmp+0x38>
    176e:	4501                	li	a0,0
    1770:	bf9d                	j	16e6 <memcmp+0x38>

0000000000001772 <memcpy>:
    1772:	1101                	addi	sp,sp,-32
    1774:	ec06                	sd	ra,24(sp)
    1776:	e822                	sd	s0,16(sp)
    1778:	e426                	sd	s1,8(sp)
    177a:	e04a                	sd	s2,0(sp)
    177c:	84aa                	mv	s1,a0
    177e:	842e                	mv	s0,a1
    1780:	8932                	mv	s2,a2
    1782:	c51d                	beqz	a0,17b0 <memcpy+0x3e>
    1784:	c1ad                	beqz	a1,17e6 <memcpy+0x74>
    1786:	fff60693          	addi	a3,a2,-1
    178a:	ce01                	beqz	a2,17a2 <memcpy+0x30>
    178c:	0685                	addi	a3,a3,1
    178e:	96a6                	add	a3,a3,s1
    1790:	87a6                	mv	a5,s1
    1792:	0405                	addi	s0,s0,1
    1794:	0785                	addi	a5,a5,1
    1796:	fff44703          	lbu	a4,-1(s0)
    179a:	fee78fa3          	sb	a4,-1(a5)
    179e:	fed79ae3          	bne	a5,a3,1792 <memcpy+0x20>
    17a2:	8526                	mv	a0,s1
    17a4:	60e2                	ld	ra,24(sp)
    17a6:	6442                	ld	s0,16(sp)
    17a8:	64a2                	ld	s1,8(sp)
    17aa:	6902                	ld	s2,0(sp)
    17ac:	6105                	addi	sp,sp,32
    17ae:	8082                	ret
    17b0:	da6d                	beqz	a2,17a2 <memcpy+0x30>
    17b2:	04000693          	li	a3,64
    17b6:	00002637          	lui	a2,0x2
    17ba:	09860613          	addi	a2,a2,152 # 2098 <crctab+0x400>
    17be:	000025b7          	lui	a1,0x2
    17c2:	13858593          	addi	a1,a1,312 # 2138 <crctab+0x4a0>
    17c6:	4509                	li	a0,2
    17c8:	00000097          	auipc	ra,0x0
    17cc:	b00080e7          	jalr	-1280(ra) # 12c8 <fprintf>
    17d0:	650d                	lui	a0,0x3
    17d2:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17d6:	00000097          	auipc	ra,0x0
    17da:	3d6080e7          	jalr	982(ra) # 1bac <exit>
    17de:	fff90693          	addi	a3,s2,-1
    17e2:	f44d                	bnez	s0,178c <memcpy+0x1a>
    17e4:	a011                	j	17e8 <memcpy+0x76>
    17e6:	de55                	beqz	a2,17a2 <memcpy+0x30>
    17e8:	04100693          	li	a3,65
    17ec:	00002637          	lui	a2,0x2
    17f0:	09860613          	addi	a2,a2,152 # 2098 <crctab+0x400>
    17f4:	000025b7          	lui	a1,0x2
    17f8:	18058593          	addi	a1,a1,384 # 2180 <crctab+0x4e8>
    17fc:	4509                	li	a0,2
    17fe:	00000097          	auipc	ra,0x0
    1802:	aca080e7          	jalr	-1334(ra) # 12c8 <fprintf>
    1806:	650d                	lui	a0,0x3
    1808:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    180c:	00000097          	auipc	ra,0x0
    1810:	3a0080e7          	jalr	928(ra) # 1bac <exit>
    1814:	fff90693          	addi	a3,s2,-1
    1818:	4401                	li	s0,0
    181a:	bf8d                	j	178c <memcpy+0x1a>

000000000000181c <itoa>:
    181c:	1101                	addi	sp,sp,-32
    181e:	ec06                	sd	ra,24(sp)
    1820:	e822                	sd	s0,16(sp)
    1822:	e426                	sd	s1,8(sp)
    1824:	842a                	mv	s0,a0
    1826:	41f5d71b          	sraiw	a4,a1,0x1f
    182a:	00e5c7b3          	xor	a5,a1,a4
    182e:	9f99                	subw	a5,a5,a4
    1830:	84aa                	mv	s1,a0
    1832:	862a                	mv	a2,a0
    1834:	4681                	li	a3,0
    1836:	4529                	li	a0,10
    1838:	4825                	li	a6,9
    183a:	88b6                	mv	a7,a3
    183c:	2685                	addiw	a3,a3,1
    183e:	02a7e73b          	remw	a4,a5,a0
    1842:	0307071b          	addiw	a4,a4,48
    1846:	00e60023          	sb	a4,0(a2)
    184a:	873e                	mv	a4,a5
    184c:	02a7c7bb          	divw	a5,a5,a0
    1850:	0605                	addi	a2,a2,1
    1852:	fee844e3          	blt	a6,a4,183a <itoa+0x1e>
    1856:	0405c863          	bltz	a1,18a6 <itoa+0x8a>
    185a:	96a2                	add	a3,a3,s0
    185c:	00068023          	sb	zero,0(a3)
    1860:	8522                	mv	a0,s0
    1862:	00000097          	auipc	ra,0x0
    1866:	e14080e7          	jalr	-492(ra) # 1676 <strlen>
    186a:	fff5071b          	addiw	a4,a0,-1
    186e:	02e05763          	blez	a4,189c <itoa+0x80>
    1872:	9722                	add	a4,a4,s0
    1874:	4681                	li	a3,0
    1876:	0004c783          	lbu	a5,0(s1)
    187a:	00074603          	lbu	a2,0(a4)
    187e:	00c48023          	sb	a2,0(s1)
    1882:	00f70023          	sb	a5,0(a4)
    1886:	0016879b          	addiw	a5,a3,1
    188a:	0007869b          	sext.w	a3,a5
    188e:	0485                	addi	s1,s1,1
    1890:	177d                	addi	a4,a4,-1
    1892:	fff7c793          	not	a5,a5
    1896:	9fa9                	addw	a5,a5,a0
    1898:	fcf6cfe3          	blt	a3,a5,1876 <itoa+0x5a>
    189c:	60e2                	ld	ra,24(sp)
    189e:	6442                	ld	s0,16(sp)
    18a0:	64a2                	ld	s1,8(sp)
    18a2:	6105                	addi	sp,sp,32
    18a4:	8082                	ret
    18a6:	96a2                	add	a3,a3,s0
    18a8:	02d00793          	li	a5,45
    18ac:	00f68023          	sb	a5,0(a3)
    18b0:	0028869b          	addiw	a3,a7,2
    18b4:	b75d                	j	185a <itoa+0x3e>

00000000000018b6 <atoi>:
    18b6:	00054783          	lbu	a5,0(a0)
    18ba:	02000713          	li	a4,32
    18be:	00e79763          	bne	a5,a4,18cc <atoi+0x16>
    18c2:	0505                	addi	a0,a0,1
    18c4:	00054783          	lbu	a5,0(a0)
    18c8:	fee78de3          	beq	a5,a4,18c2 <atoi+0xc>
    18cc:	02b00713          	li	a4,43
    18d0:	04e78663          	beq	a5,a4,191c <atoi+0x66>
    18d4:	02d00713          	li	a4,45
    18d8:	4805                	li	a6,1
    18da:	04e78463          	beq	a5,a4,1922 <atoi+0x6c>
    18de:	00054683          	lbu	a3,0(a0)
    18e2:	fd06879b          	addiw	a5,a3,-48
    18e6:	0ff7f793          	andi	a5,a5,255
    18ea:	4725                	li	a4,9
    18ec:	02f76e63          	bltu	a4,a5,1928 <atoi+0x72>
    18f0:	4601                	li	a2,0
    18f2:	45a5                	li	a1,9
    18f4:	0505                	addi	a0,a0,1
    18f6:	0026179b          	slliw	a5,a2,0x2
    18fa:	9fb1                	addw	a5,a5,a2
    18fc:	0017979b          	slliw	a5,a5,0x1
    1900:	9fb5                	addw	a5,a5,a3
    1902:	fd07861b          	addiw	a2,a5,-48
    1906:	00054683          	lbu	a3,0(a0)
    190a:	fd06871b          	addiw	a4,a3,-48
    190e:	0ff77713          	andi	a4,a4,255
    1912:	fee5f1e3          	bgeu	a1,a4,18f4 <atoi+0x3e>
    1916:	02c8053b          	mulw	a0,a6,a2
    191a:	8082                	ret
    191c:	0505                	addi	a0,a0,1
    191e:	4805                	li	a6,1
    1920:	bf7d                	j	18de <atoi+0x28>
    1922:	0505                	addi	a0,a0,1
    1924:	587d                	li	a6,-1
    1926:	bf65                	j	18de <atoi+0x28>
    1928:	4601                	li	a2,0
    192a:	b7f5                	j	1916 <atoi+0x60>

000000000000192c <check_file_handle>:
    192c:	d8010113          	addi	sp,sp,-640
    1930:	26113c23          	sd	ra,632(sp)
    1934:	26813823          	sd	s0,624(sp)
    1938:	26913423          	sd	s1,616(sp)
    193c:	27213023          	sd	s2,608(sp)
    1940:	25313c23          	sd	s3,600(sp)
    1944:	25413823          	sd	s4,592(sp)
    1948:	25513423          	sd	s5,584(sp)
    194c:	25613023          	sd	s6,576(sp)
    1950:	23713c23          	sd	s7,568(sp)
    1954:	23813823          	sd	s8,560(sp)
    1958:	23913423          	sd	s9,552(sp)
    195c:	23a13023          	sd	s10,544(sp)
    1960:	21b13c23          	sd	s11,536(sp)
    1964:	8baa                	mv	s7,a0
    1966:	8a2e                	mv	s4,a1
    1968:	8c32                	mv	s8,a2
    196a:	89b6                	mv	s3,a3
    196c:	040c                	addi	a1,sp,512
    196e:	00000097          	auipc	ra,0x0
    1972:	28e080e7          	jalr	654(ra) # 1bfc <fstat>
    1976:	20813603          	ld	a2,520(sp)
    197a:	03361163          	bne	a2,s3,199c <check_file_handle+0x70>
    197e:	06098763          	beqz	s3,19ec <check_file_handle+0xc0>
    1982:	4901                	li	s2,0
    1984:	20000a93          	li	s5,512
    1988:	00002cb7          	lui	s9,0x2
    198c:	00002db7          	lui	s11,0x2
    1990:	6b0d                	lui	s6,0x3
    1992:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    1996:	00002d37          	lui	s10,0x2
    199a:	aa39                	j	1ab8 <check_file_handle+0x18c>
    199c:	86ce                	mv	a3,s3
    199e:	85d2                	mv	a1,s4
    19a0:	00002537          	lui	a0,0x2
    19a4:	1c850513          	addi	a0,a0,456 # 21c8 <crctab+0x530>
    19a8:	00000097          	auipc	ra,0x0
    19ac:	942080e7          	jalr	-1726(ra) # 12ea <printf>
    19b0:	fc0999e3          	bnez	s3,1982 <check_file_handle+0x56>
    19b4:	20813683          	ld	a3,520(sp)
    19b8:	03368a63          	beq	a3,s3,19ec <check_file_handle+0xc0>
    19bc:	0a600813          	li	a6,166
    19c0:	000027b7          	lui	a5,0x2
    19c4:	09878793          	addi	a5,a5,152 # 2098 <crctab+0x400>
    19c8:	874e                	mv	a4,s3
    19ca:	8652                	mv	a2,s4
    19cc:	000025b7          	lui	a1,0x2
    19d0:	29858593          	addi	a1,a1,664 # 2298 <crctab+0x600>
    19d4:	4509                	li	a0,2
    19d6:	00000097          	auipc	ra,0x0
    19da:	8f2080e7          	jalr	-1806(ra) # 12c8 <fprintf>
    19de:	650d                	lui	a0,0x3
    19e0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    19e4:	00000097          	auipc	ra,0x0
    19e8:	1c8080e7          	jalr	456(ra) # 1bac <exit>
    19ec:	85d2                	mv	a1,s4
    19ee:	00002537          	lui	a0,0x2
    19f2:	2e050513          	addi	a0,a0,736 # 22e0 <crctab+0x648>
    19f6:	00000097          	auipc	ra,0x0
    19fa:	8f4080e7          	jalr	-1804(ra) # 12ea <printf>
    19fe:	27813083          	ld	ra,632(sp)
    1a02:	27013403          	ld	s0,624(sp)
    1a06:	26813483          	ld	s1,616(sp)
    1a0a:	26013903          	ld	s2,608(sp)
    1a0e:	25813983          	ld	s3,600(sp)
    1a12:	25013a03          	ld	s4,592(sp)
    1a16:	24813a83          	ld	s5,584(sp)
    1a1a:	24013b03          	ld	s6,576(sp)
    1a1e:	23813b83          	ld	s7,568(sp)
    1a22:	23013c03          	ld	s8,560(sp)
    1a26:	22813c83          	ld	s9,552(sp)
    1a2a:	22013d03          	ld	s10,544(sp)
    1a2e:	21813d83          	ld	s11,536(sp)
    1a32:	28010113          	addi	sp,sp,640
    1a36:	8082                	ret
    1a38:	09d00893          	li	a7,157
    1a3c:	098c8813          	addi	a6,s9,152 # 2098 <crctab+0x400>
    1a40:	87aa                	mv	a5,a0
    1a42:	8752                	mv	a4,s4
    1a44:	86ca                	mv	a3,s2
    1a46:	8622                	mv	a2,s0
    1a48:	1f8d8593          	addi	a1,s11,504 # 21f8 <crctab+0x560>
    1a4c:	4509                	li	a0,2
    1a4e:	00000097          	auipc	ra,0x0
    1a52:	87a080e7          	jalr	-1926(ra) # 12c8 <fprintf>
    1a56:	855a                	mv	a0,s6
    1a58:	00000097          	auipc	ra,0x0
    1a5c:	154080e7          	jalr	340(ra) # 1bac <exit>
    1a60:	a89d                	j	1ad6 <check_file_handle+0x1aa>
    1a62:	00160593          	addi	a1,a2,1
    1a66:	0285f163          	bgeu	a1,s0,1a88 <check_file_handle+0x15c>
    1a6a:	00c10733          	add	a4,sp,a2
    1a6e:	00b487b3          	add	a5,s1,a1
    1a72:	00174683          	lbu	a3,1(a4)
    1a76:	0007c783          	lbu	a5,0(a5)
    1a7a:	00f68763          	beq	a3,a5,1a88 <check_file_handle+0x15c>
    1a7e:	0585                	addi	a1,a1,1
    1a80:	0705                	addi	a4,a4,1
    1a82:	feb416e3          	bne	s0,a1,1a6e <check_file_handle+0x142>
    1a86:	85a2                	mv	a1,s0
    1a88:	08100813          	li	a6,129
    1a8c:	098c8793          	addi	a5,s9,152
    1a90:	8752                	mv	a4,s4
    1a92:	012606b3          	add	a3,a2,s2
    1a96:	40c58633          	sub	a2,a1,a2
    1a9a:	240d0593          	addi	a1,s10,576 # 2240 <crctab+0x5a8>
    1a9e:	4509                	li	a0,2
    1aa0:	00000097          	auipc	ra,0x0
    1aa4:	828080e7          	jalr	-2008(ra) # 12c8 <fprintf>
    1aa8:	855a                	mv	a0,s6
    1aaa:	00000097          	auipc	ra,0x0
    1aae:	102080e7          	jalr	258(ra) # 1bac <exit>
    1ab2:	9922                	add	s2,s2,s0
    1ab4:	f13970e3          	bgeu	s2,s3,19b4 <check_file_handle+0x88>
    1ab8:	41298433          	sub	s0,s3,s2
    1abc:	008af363          	bgeu	s5,s0,1ac2 <check_file_handle+0x196>
    1ac0:	8456                	mv	s0,s5
    1ac2:	0004061b          	sext.w	a2,s0
    1ac6:	858a                	mv	a1,sp
    1ac8:	855e                	mv	a0,s7
    1aca:	00000097          	auipc	ra,0x0
    1ace:	10a080e7          	jalr	266(ra) # 1bd4 <read>
    1ad2:	f68513e3          	bne	a0,s0,1a38 <check_file_handle+0x10c>
    1ad6:	012c04b3          	add	s1,s8,s2
    1ada:	8622                	mv	a2,s0
    1adc:	85a6                	mv	a1,s1
    1ade:	850a                	mv	a0,sp
    1ae0:	00000097          	auipc	ra,0x0
    1ae4:	bce080e7          	jalr	-1074(ra) # 16ae <memcmp>
    1ae8:	d569                	beqz	a0,1ab2 <check_file_handle+0x186>
    1aea:	03298163          	beq	s3,s2,1b0c <check_file_handle+0x1e0>
    1aee:	870a                	mv	a4,sp
    1af0:	4601                	li	a2,0
    1af2:	00c487b3          	add	a5,s1,a2
    1af6:	00074683          	lbu	a3,0(a4)
    1afa:	0007c783          	lbu	a5,0(a5)
    1afe:	f6f692e3          	bne	a3,a5,1a62 <check_file_handle+0x136>
    1b02:	0605                	addi	a2,a2,1
    1b04:	0705                	addi	a4,a4,1
    1b06:	fe8666e3          	bltu	a2,s0,1af2 <check_file_handle+0x1c6>
    1b0a:	bfa1                	j	1a62 <check_file_handle+0x136>
    1b0c:	4601                	li	a2,0
    1b0e:	4585                	li	a1,1
    1b10:	bfa5                	j	1a88 <check_file_handle+0x15c>

0000000000001b12 <check_file>:
    1b12:	7179                	addi	sp,sp,-48
    1b14:	f406                	sd	ra,40(sp)
    1b16:	f022                	sd	s0,32(sp)
    1b18:	ec26                	sd	s1,24(sp)
    1b1a:	e84a                	sd	s2,16(sp)
    1b1c:	e44e                	sd	s3,8(sp)
    1b1e:	84aa                	mv	s1,a0
    1b20:	892e                	mv	s2,a1
    1b22:	89b2                	mv	s3,a2
    1b24:	4581                	li	a1,0
    1b26:	00000097          	auipc	ra,0x0
    1b2a:	0a6080e7          	jalr	166(ra) # 1bcc <open>
    1b2e:	842a                	mv	s0,a0
    1b30:	4789                	li	a5,2
    1b32:	02a7df63          	bge	a5,a0,1b70 <check_file+0x5e>
    1b36:	86ce                	mv	a3,s3
    1b38:	864a                	mv	a2,s2
    1b3a:	85a6                	mv	a1,s1
    1b3c:	8522                	mv	a0,s0
    1b3e:	00000097          	auipc	ra,0x0
    1b42:	dee080e7          	jalr	-530(ra) # 192c <check_file_handle>
    1b46:	85a6                	mv	a1,s1
    1b48:	00002537          	lui	a0,0x2
    1b4c:	36850513          	addi	a0,a0,872 # 2368 <crctab+0x6d0>
    1b50:	fffff097          	auipc	ra,0xfffff
    1b54:	79a080e7          	jalr	1946(ra) # 12ea <printf>
    1b58:	8522                	mv	a0,s0
    1b5a:	00000097          	auipc	ra,0x0
    1b5e:	09a080e7          	jalr	154(ra) # 1bf4 <close>
    1b62:	70a2                	ld	ra,40(sp)
    1b64:	7402                	ld	s0,32(sp)
    1b66:	64e2                	ld	s1,24(sp)
    1b68:	6942                	ld	s2,16(sp)
    1b6a:	69a2                	ld	s3,8(sp)
    1b6c:	6145                	addi	sp,sp,48
    1b6e:	8082                	ret
    1b70:	0ae00713          	li	a4,174
    1b74:	000026b7          	lui	a3,0x2
    1b78:	09868693          	addi	a3,a3,152 # 2098 <crctab+0x400>
    1b7c:	8626                	mv	a2,s1
    1b7e:	000025b7          	lui	a1,0x2
    1b82:	30058593          	addi	a1,a1,768 # 2300 <crctab+0x668>
    1b86:	4509                	li	a0,2
    1b88:	fffff097          	auipc	ra,0xfffff
    1b8c:	740080e7          	jalr	1856(ra) # 12c8 <fprintf>
    1b90:	650d                	lui	a0,0x3
    1b92:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1b96:	00000097          	auipc	ra,0x0
    1b9a:	016080e7          	jalr	22(ra) # 1bac <exit>
    1b9e:	bf61                	j	1b36 <check_file+0x24>

0000000000001ba0 <r_sp>:
    1ba0:	850a                	mv	a0,sp
    1ba2:	8082                	ret

0000000000001ba4 <halt>:
    1ba4:	4885                	li	a7,1
    1ba6:	00000073          	ecall
    1baa:	8082                	ret

0000000000001bac <exit>:
    1bac:	4889                	li	a7,2
    1bae:	00000073          	ecall
    1bb2:	8082                	ret

0000000000001bb4 <exec>:
    1bb4:	488d                	li	a7,3
    1bb6:	00000073          	ecall
    1bba:	8082                	ret

0000000000001bbc <wait>:
    1bbc:	4891                	li	a7,4
    1bbe:	00000073          	ecall
    1bc2:	8082                	ret

0000000000001bc4 <remove>:
    1bc4:	4895                	li	a7,5
    1bc6:	00000073          	ecall
    1bca:	8082                	ret

0000000000001bcc <open>:
    1bcc:	4899                	li	a7,6
    1bce:	00000073          	ecall
    1bd2:	8082                	ret

0000000000001bd4 <read>:
    1bd4:	489d                	li	a7,7
    1bd6:	00000073          	ecall
    1bda:	8082                	ret

0000000000001bdc <write>:
    1bdc:	48a1                	li	a7,8
    1bde:	00000073          	ecall
    1be2:	8082                	ret

0000000000001be4 <seek>:
    1be4:	48a5                	li	a7,9
    1be6:	00000073          	ecall
    1bea:	8082                	ret

0000000000001bec <tell>:
    1bec:	48a9                	li	a7,10
    1bee:	00000073          	ecall
    1bf2:	8082                	ret

0000000000001bf4 <close>:
    1bf4:	48ad                	li	a7,11
    1bf6:	00000073          	ecall
    1bfa:	8082                	ret

0000000000001bfc <fstat>:
    1bfc:	48b1                	li	a7,12
    1bfe:	00000073          	ecall
    1c02:	8082                	ret

0000000000001c04 <mmap>:
    1c04:	48b5                	li	a7,13
    1c06:	00000073          	ecall
    1c0a:	8082                	ret

0000000000001c0c <munmap>:
    1c0c:	48b9                	li	a7,14
    1c0e:	00000073          	ecall
    1c12:	8082                	ret

0000000000001c14 <chdir>:
    1c14:	48bd                	li	a7,15
    1c16:	00000073          	ecall
    1c1a:	8082                	ret

0000000000001c1c <mkdir>:
    1c1c:	48c1                	li	a7,16
    1c1e:	00000073          	ecall
    1c22:	8082                	ret
