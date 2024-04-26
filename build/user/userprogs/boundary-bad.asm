
build/user/userprogs/boundary-bad:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1141                	addi	sp,sp,-16
    1002:	e406                	sd	ra,8(sp)
    1004:	00003537          	lui	a0,0x3
    1008:	11050513          	addi	a0,a0,272 # 3110 <data>
    100c:	6789                	lui	a5,0x2
    100e:	17f9                	addi	a5,a5,-2
    1010:	953e                	add	a0,a0,a5
    1012:	77fd                	lui	a5,0xfffff
    1014:	8d7d                	and	a0,a0,a5
    1016:	06100793          	li	a5,97
    101a:	fef50fa3          	sb	a5,-1(a0)
    101e:	20000593          	li	a1,512
    1022:	157d                	addi	a0,a0,-1
    1024:	00001097          	auipc	ra,0x1
    1028:	bce080e7          	jalr	-1074(ra) # 1bf2 <open>
    102c:	57fd                	li	a5,-1
    102e:	00f51563          	bne	a0,a5,1038 <main+0x38>
    1032:	60a2                	ld	ra,8(sp)
    1034:	0141                	addi	sp,sp,16
    1036:	8082                	ret
    1038:	46c5                	li	a3,17
    103a:	00002637          	lui	a2,0x2
    103e:	c5060613          	addi	a2,a2,-944 # 1c50 <mkdir+0xe>
    1042:	000025b7          	lui	a1,0x2
    1046:	c7058593          	addi	a1,a1,-912 # 1c70 <mkdir+0x2e>
    104a:	4509                	li	a0,2
    104c:	00000097          	auipc	ra,0x0
    1050:	2a2080e7          	jalr	674(ra) # 12ee <fprintf>
    1054:	650d                	lui	a0,0x3
    1056:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    105a:	00001097          	auipc	ra,0x1
    105e:	b78080e7          	jalr	-1160(ra) # 1bd2 <exit>
    1062:	bfc1                	j	1032 <main+0x32>

0000000000001064 <putc>:
    1064:	1101                	addi	sp,sp,-32
    1066:	ec06                	sd	ra,24(sp)
    1068:	00b107a3          	sb	a1,15(sp)
    106c:	4605                	li	a2,1
    106e:	00f10593          	addi	a1,sp,15
    1072:	00001097          	auipc	ra,0x1
    1076:	b90080e7          	jalr	-1136(ra) # 1c02 <write>
    107a:	60e2                	ld	ra,24(sp)
    107c:	6105                	addi	sp,sp,32
    107e:	8082                	ret

0000000000001080 <printint>:
    1080:	7179                	addi	sp,sp,-48
    1082:	f406                	sd	ra,40(sp)
    1084:	f022                	sd	s0,32(sp)
    1086:	ec26                	sd	s1,24(sp)
    1088:	e84a                	sd	s2,16(sp)
    108a:	84aa                	mv	s1,a0
    108c:	c299                	beqz	a3,1092 <printint+0x12>
    108e:	0805c363          	bltz	a1,1114 <printint+0x94>
    1092:	2581                	sext.w	a1,a1
    1094:	4881                	li	a7,0
    1096:	868a                	mv	a3,sp
    1098:	4701                	li	a4,0
    109a:	2601                	sext.w	a2,a2
    109c:	00002537          	lui	a0,0x2
    10a0:	ce850513          	addi	a0,a0,-792 # 1ce8 <digits>
    10a4:	883a                	mv	a6,a4
    10a6:	2705                	addiw	a4,a4,1
    10a8:	02c5f7bb          	remuw	a5,a1,a2
    10ac:	1782                	slli	a5,a5,0x20
    10ae:	9381                	srli	a5,a5,0x20
    10b0:	97aa                	add	a5,a5,a0
    10b2:	0007c783          	lbu	a5,0(a5) # fffffffffffff000 <data+0xffffffffffffbef0>
    10b6:	00f68023          	sb	a5,0(a3)
    10ba:	0005879b          	sext.w	a5,a1
    10be:	02c5d5bb          	divuw	a1,a1,a2
    10c2:	0685                	addi	a3,a3,1
    10c4:	fec7f0e3          	bgeu	a5,a2,10a4 <printint+0x24>
    10c8:	00088a63          	beqz	a7,10dc <printint+0x5c>
    10cc:	081c                	addi	a5,sp,16
    10ce:	973e                	add	a4,a4,a5
    10d0:	02d00793          	li	a5,45
    10d4:	fef70823          	sb	a5,-16(a4)
    10d8:	0028071b          	addiw	a4,a6,2
    10dc:	02e05663          	blez	a4,1108 <printint+0x88>
    10e0:	00e10433          	add	s0,sp,a4
    10e4:	fff10913          	addi	s2,sp,-1
    10e8:	993a                	add	s2,s2,a4
    10ea:	377d                	addiw	a4,a4,-1
    10ec:	1702                	slli	a4,a4,0x20
    10ee:	9301                	srli	a4,a4,0x20
    10f0:	40e90933          	sub	s2,s2,a4
    10f4:	fff44583          	lbu	a1,-1(s0)
    10f8:	8526                	mv	a0,s1
    10fa:	00000097          	auipc	ra,0x0
    10fe:	f6a080e7          	jalr	-150(ra) # 1064 <putc>
    1102:	147d                	addi	s0,s0,-1
    1104:	ff2418e3          	bne	s0,s2,10f4 <printint+0x74>
    1108:	70a2                	ld	ra,40(sp)
    110a:	7402                	ld	s0,32(sp)
    110c:	64e2                	ld	s1,24(sp)
    110e:	6942                	ld	s2,16(sp)
    1110:	6145                	addi	sp,sp,48
    1112:	8082                	ret
    1114:	40b005bb          	negw	a1,a1
    1118:	4885                	li	a7,1
    111a:	bfb5                	j	1096 <printint+0x16>

000000000000111c <vprintf>:
    111c:	7159                	addi	sp,sp,-112
    111e:	f486                	sd	ra,104(sp)
    1120:	f0a2                	sd	s0,96(sp)
    1122:	eca6                	sd	s1,88(sp)
    1124:	e8ca                	sd	s2,80(sp)
    1126:	e4ce                	sd	s3,72(sp)
    1128:	e0d2                	sd	s4,64(sp)
    112a:	fc56                	sd	s5,56(sp)
    112c:	f85a                	sd	s6,48(sp)
    112e:	f45e                	sd	s7,40(sp)
    1130:	f062                	sd	s8,32(sp)
    1132:	ec66                	sd	s9,24(sp)
    1134:	e86a                	sd	s10,16(sp)
    1136:	e46e                	sd	s11,8(sp)
    1138:	0005c483          	lbu	s1,0(a1)
    113c:	18048a63          	beqz	s1,12d0 <vprintf+0x1b4>
    1140:	8a2a                	mv	s4,a0
    1142:	8ab2                	mv	s5,a2
    1144:	00158413          	addi	s0,a1,1
    1148:	4901                	li	s2,0
    114a:	02500993          	li	s3,37
    114e:	06400b93          	li	s7,100
    1152:	06c00c13          	li	s8,108
    1156:	07800c93          	li	s9,120
    115a:	07000d13          	li	s10,112
    115e:	00002db7          	lui	s11,0x2
    1162:	00002b37          	lui	s6,0x2
    1166:	ce8b0b13          	addi	s6,s6,-792 # 1ce8 <digits>
    116a:	a839                	j	1188 <vprintf+0x6c>
    116c:	85a6                	mv	a1,s1
    116e:	8552                	mv	a0,s4
    1170:	00000097          	auipc	ra,0x0
    1174:	ef4080e7          	jalr	-268(ra) # 1064 <putc>
    1178:	a019                	j	117e <vprintf+0x62>
    117a:	01390f63          	beq	s2,s3,1198 <vprintf+0x7c>
    117e:	0405                	addi	s0,s0,1
    1180:	fff44483          	lbu	s1,-1(s0)
    1184:	14048663          	beqz	s1,12d0 <vprintf+0x1b4>
    1188:	0004879b          	sext.w	a5,s1
    118c:	fe0917e3          	bnez	s2,117a <vprintf+0x5e>
    1190:	fd379ee3          	bne	a5,s3,116c <vprintf+0x50>
    1194:	893e                	mv	s2,a5
    1196:	b7e5                	j	117e <vprintf+0x62>
    1198:	05778063          	beq	a5,s7,11d8 <vprintf+0xbc>
    119c:	05878c63          	beq	a5,s8,11f4 <vprintf+0xd8>
    11a0:	07978863          	beq	a5,s9,1210 <vprintf+0xf4>
    11a4:	09a78463          	beq	a5,s10,122c <vprintf+0x110>
    11a8:	07300713          	li	a4,115
    11ac:	0ce78263          	beq	a5,a4,1270 <vprintf+0x154>
    11b0:	06300713          	li	a4,99
    11b4:	0ee78763          	beq	a5,a4,12a2 <vprintf+0x186>
    11b8:	11378163          	beq	a5,s3,12ba <vprintf+0x19e>
    11bc:	85ce                	mv	a1,s3
    11be:	8552                	mv	a0,s4
    11c0:	00000097          	auipc	ra,0x0
    11c4:	ea4080e7          	jalr	-348(ra) # 1064 <putc>
    11c8:	85a6                	mv	a1,s1
    11ca:	8552                	mv	a0,s4
    11cc:	00000097          	auipc	ra,0x0
    11d0:	e98080e7          	jalr	-360(ra) # 1064 <putc>
    11d4:	4901                	li	s2,0
    11d6:	b765                	j	117e <vprintf+0x62>
    11d8:	008a8493          	addi	s1,s5,8
    11dc:	4685                	li	a3,1
    11de:	4629                	li	a2,10
    11e0:	000aa583          	lw	a1,0(s5)
    11e4:	8552                	mv	a0,s4
    11e6:	00000097          	auipc	ra,0x0
    11ea:	e9a080e7          	jalr	-358(ra) # 1080 <printint>
    11ee:	8aa6                	mv	s5,s1
    11f0:	4901                	li	s2,0
    11f2:	b771                	j	117e <vprintf+0x62>
    11f4:	008a8493          	addi	s1,s5,8
    11f8:	4681                	li	a3,0
    11fa:	4629                	li	a2,10
    11fc:	000aa583          	lw	a1,0(s5)
    1200:	8552                	mv	a0,s4
    1202:	00000097          	auipc	ra,0x0
    1206:	e7e080e7          	jalr	-386(ra) # 1080 <printint>
    120a:	8aa6                	mv	s5,s1
    120c:	4901                	li	s2,0
    120e:	bf85                	j	117e <vprintf+0x62>
    1210:	008a8493          	addi	s1,s5,8
    1214:	4681                	li	a3,0
    1216:	4641                	li	a2,16
    1218:	000aa583          	lw	a1,0(s5)
    121c:	8552                	mv	a0,s4
    121e:	00000097          	auipc	ra,0x0
    1222:	e62080e7          	jalr	-414(ra) # 1080 <printint>
    1226:	8aa6                	mv	s5,s1
    1228:	4901                	li	s2,0
    122a:	bf91                	j	117e <vprintf+0x62>
    122c:	008a8913          	addi	s2,s5,8
    1230:	000aba83          	ld	s5,0(s5)
    1234:	03000593          	li	a1,48
    1238:	8552                	mv	a0,s4
    123a:	00000097          	auipc	ra,0x0
    123e:	e2a080e7          	jalr	-470(ra) # 1064 <putc>
    1242:	85e6                	mv	a1,s9
    1244:	8552                	mv	a0,s4
    1246:	00000097          	auipc	ra,0x0
    124a:	e1e080e7          	jalr	-482(ra) # 1064 <putc>
    124e:	44c1                	li	s1,16
    1250:	03cad793          	srli	a5,s5,0x3c
    1254:	97da                	add	a5,a5,s6
    1256:	0007c583          	lbu	a1,0(a5)
    125a:	8552                	mv	a0,s4
    125c:	00000097          	auipc	ra,0x0
    1260:	e08080e7          	jalr	-504(ra) # 1064 <putc>
    1264:	0a92                	slli	s5,s5,0x4
    1266:	34fd                	addiw	s1,s1,-1
    1268:	f4e5                	bnez	s1,1250 <vprintf+0x134>
    126a:	8aca                	mv	s5,s2
    126c:	4901                	li	s2,0
    126e:	bf01                	j	117e <vprintf+0x62>
    1270:	008a8913          	addi	s2,s5,8
    1274:	000ab483          	ld	s1,0(s5)
    1278:	c085                	beqz	s1,1298 <vprintf+0x17c>
    127a:	0004c583          	lbu	a1,0(s1)
    127e:	c5b1                	beqz	a1,12ca <vprintf+0x1ae>
    1280:	8552                	mv	a0,s4
    1282:	00000097          	auipc	ra,0x0
    1286:	de2080e7          	jalr	-542(ra) # 1064 <putc>
    128a:	0485                	addi	s1,s1,1
    128c:	0004c583          	lbu	a1,0(s1)
    1290:	f9e5                	bnez	a1,1280 <vprintf+0x164>
    1292:	8aca                	mv	s5,s2
    1294:	4901                	li	s2,0
    1296:	b5e5                	j	117e <vprintf+0x62>
    1298:	ce0d8493          	addi	s1,s11,-800 # 1ce0 <mkdir+0x9e>
    129c:	02800593          	li	a1,40
    12a0:	b7c5                	j	1280 <vprintf+0x164>
    12a2:	008a8493          	addi	s1,s5,8
    12a6:	000ac583          	lbu	a1,0(s5)
    12aa:	8552                	mv	a0,s4
    12ac:	00000097          	auipc	ra,0x0
    12b0:	db8080e7          	jalr	-584(ra) # 1064 <putc>
    12b4:	8aa6                	mv	s5,s1
    12b6:	4901                	li	s2,0
    12b8:	b5d9                	j	117e <vprintf+0x62>
    12ba:	85ce                	mv	a1,s3
    12bc:	8552                	mv	a0,s4
    12be:	00000097          	auipc	ra,0x0
    12c2:	da6080e7          	jalr	-602(ra) # 1064 <putc>
    12c6:	4901                	li	s2,0
    12c8:	bd5d                	j	117e <vprintf+0x62>
    12ca:	8aca                	mv	s5,s2
    12cc:	4901                	li	s2,0
    12ce:	bd45                	j	117e <vprintf+0x62>
    12d0:	70a6                	ld	ra,104(sp)
    12d2:	7406                	ld	s0,96(sp)
    12d4:	64e6                	ld	s1,88(sp)
    12d6:	6946                	ld	s2,80(sp)
    12d8:	69a6                	ld	s3,72(sp)
    12da:	6a06                	ld	s4,64(sp)
    12dc:	7ae2                	ld	s5,56(sp)
    12de:	7b42                	ld	s6,48(sp)
    12e0:	7ba2                	ld	s7,40(sp)
    12e2:	7c02                	ld	s8,32(sp)
    12e4:	6ce2                	ld	s9,24(sp)
    12e6:	6d42                	ld	s10,16(sp)
    12e8:	6da2                	ld	s11,8(sp)
    12ea:	6165                	addi	sp,sp,112
    12ec:	8082                	ret

00000000000012ee <fprintf>:
    12ee:	715d                	addi	sp,sp,-80
    12f0:	ec06                	sd	ra,24(sp)
    12f2:	f032                	sd	a2,32(sp)
    12f4:	f436                	sd	a3,40(sp)
    12f6:	f83a                	sd	a4,48(sp)
    12f8:	fc3e                	sd	a5,56(sp)
    12fa:	e0c2                	sd	a6,64(sp)
    12fc:	e4c6                	sd	a7,72(sp)
    12fe:	1010                	addi	a2,sp,32
    1300:	e432                	sd	a2,8(sp)
    1302:	00000097          	auipc	ra,0x0
    1306:	e1a080e7          	jalr	-486(ra) # 111c <vprintf>
    130a:	60e2                	ld	ra,24(sp)
    130c:	6161                	addi	sp,sp,80
    130e:	8082                	ret

0000000000001310 <printf>:
    1310:	711d                	addi	sp,sp,-96
    1312:	ec06                	sd	ra,24(sp)
    1314:	f42e                	sd	a1,40(sp)
    1316:	f832                	sd	a2,48(sp)
    1318:	fc36                	sd	a3,56(sp)
    131a:	e0ba                	sd	a4,64(sp)
    131c:	e4be                	sd	a5,72(sp)
    131e:	e8c2                	sd	a6,80(sp)
    1320:	ecc6                	sd	a7,88(sp)
    1322:	1030                	addi	a2,sp,40
    1324:	e432                	sd	a2,8(sp)
    1326:	85aa                	mv	a1,a0
    1328:	4505                	li	a0,1
    132a:	00000097          	auipc	ra,0x0
    132e:	df2080e7          	jalr	-526(ra) # 111c <vprintf>
    1332:	60e2                	ld	ra,24(sp)
    1334:	6125                	addi	sp,sp,96
    1336:	8082                	ret

0000000000001338 <cksum>:
    1338:	cdb1                	beqz	a1,1394 <cksum+0x5c>
    133a:	00b50833          	add	a6,a0,a1
    133e:	4781                	li	a5,0
    1340:	00002637          	lui	a2,0x2
    1344:	d0060613          	addi	a2,a2,-768 # 1d00 <crctab>
    1348:	0505                	addi	a0,a0,1
    134a:	0087969b          	slliw	a3,a5,0x8
    134e:	0187d71b          	srliw	a4,a5,0x18
    1352:	fff54783          	lbu	a5,-1(a0)
    1356:	8f3d                	xor	a4,a4,a5
    1358:	1702                	slli	a4,a4,0x20
    135a:	9301                	srli	a4,a4,0x20
    135c:	070a                	slli	a4,a4,0x2
    135e:	9732                	add	a4,a4,a2
    1360:	431c                	lw	a5,0(a4)
    1362:	8fb5                	xor	a5,a5,a3
    1364:	2781                	sext.w	a5,a5
    1366:	fea811e3          	bne	a6,a0,1348 <cksum+0x10>
    136a:	00002637          	lui	a2,0x2
    136e:	d0060613          	addi	a2,a2,-768 # 1d00 <crctab>
    1372:	0ff5f693          	andi	a3,a1,255
    1376:	81a1                	srli	a1,a1,0x8
    1378:	0087951b          	slliw	a0,a5,0x8
    137c:	0187d71b          	srliw	a4,a5,0x18
    1380:	8f35                	xor	a4,a4,a3
    1382:	070a                	slli	a4,a4,0x2
    1384:	9732                	add	a4,a4,a2
    1386:	431c                	lw	a5,0(a4)
    1388:	8fa9                	xor	a5,a5,a0
    138a:	2781                	sext.w	a5,a5
    138c:	f1fd                	bnez	a1,1372 <cksum+0x3a>
    138e:	fff7c513          	not	a0,a5
    1392:	8082                	ret
    1394:	4781                	li	a5,0
    1396:	bfe5                	j	138e <cksum+0x56>

0000000000001398 <swap_bytes>:
    1398:	ce19                	beqz	a2,13b6 <swap_bytes+0x1e>
    139a:	87aa                	mv	a5,a0
    139c:	962a                	add	a2,a2,a0
    139e:	0007c703          	lbu	a4,0(a5)
    13a2:	0005c683          	lbu	a3,0(a1)
    13a6:	00d78023          	sb	a3,0(a5)
    13aa:	00e58023          	sb	a4,0(a1)
    13ae:	0785                	addi	a5,a5,1
    13b0:	0585                	addi	a1,a1,1
    13b2:	fec796e3          	bne	a5,a2,139e <swap_bytes+0x6>
    13b6:	8082                	ret

00000000000013b8 <random_init>:
    13b8:	7139                	addi	sp,sp,-64
    13ba:	fc06                	sd	ra,56(sp)
    13bc:	f822                	sd	s0,48(sp)
    13be:	f426                	sd	s1,40(sp)
    13c0:	f04a                	sd	s2,32(sp)
    13c2:	ec4e                	sd	s3,24(sp)
    13c4:	e852                	sd	s4,16(sp)
    13c6:	c62a                	sw	a0,12(sp)
    13c8:	000037b7          	lui	a5,0x3
    13cc:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    13d0:	eca5                	bnez	s1,1448 <random_init+0x90>
    13d2:	00003737          	lui	a4,0x3
    13d6:	01070913          	addi	s2,a4,16 # 3010 <s>
    13da:	01070713          	addi	a4,a4,16
    13de:	87a6                	mv	a5,s1
    13e0:	10000693          	li	a3,256
    13e4:	00f70023          	sb	a5,0(a4)
    13e8:	2785                	addiw	a5,a5,1
    13ea:	0705                	addi	a4,a4,1
    13ec:	fed79ce3          	bne	a5,a3,13e4 <random_init+0x2c>
    13f0:	4401                	li	s0,0
    13f2:	000039b7          	lui	s3,0x3
    13f6:	01098993          	addi	s3,s3,16 # 3010 <s>
    13fa:	10000a13          	li	s4,256
    13fe:	0034f793          	andi	a5,s1,3
    1402:	0818                	addi	a4,sp,16
    1404:	97ba                	add	a5,a5,a4
    1406:	ffc7c783          	lbu	a5,-4(a5)
    140a:	00094703          	lbu	a4,0(s2)
    140e:	9fb9                	addw	a5,a5,a4
    1410:	9c3d                	addw	s0,s0,a5
    1412:	0ff47413          	andi	s0,s0,255
    1416:	4605                	li	a2,1
    1418:	008985b3          	add	a1,s3,s0
    141c:	854a                	mv	a0,s2
    141e:	00000097          	auipc	ra,0x0
    1422:	f7a080e7          	jalr	-134(ra) # 1398 <swap_bytes>
    1426:	2485                	addiw	s1,s1,1
    1428:	0905                	addi	s2,s2,1
    142a:	fd449ae3          	bne	s1,s4,13fe <random_init+0x46>
    142e:	000037b7          	lui	a5,0x3
    1432:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1436:	000037b7          	lui	a5,0x3
    143a:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    143e:	000037b7          	lui	a5,0x3
    1442:	4705                	li	a4,1
    1444:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1448:	70e2                	ld	ra,56(sp)
    144a:	7442                	ld	s0,48(sp)
    144c:	74a2                	ld	s1,40(sp)
    144e:	7902                	ld	s2,32(sp)
    1450:	69e2                	ld	s3,24(sp)
    1452:	6a42                	ld	s4,16(sp)
    1454:	6121                	addi	sp,sp,64
    1456:	8082                	ret

0000000000001458 <random_bytes>:
    1458:	7139                	addi	sp,sp,-64
    145a:	fc06                	sd	ra,56(sp)
    145c:	f822                	sd	s0,48(sp)
    145e:	f426                	sd	s1,40(sp)
    1460:	f04a                	sd	s2,32(sp)
    1462:	ec4e                	sd	s3,24(sp)
    1464:	e852                	sd	s4,16(sp)
    1466:	e456                	sd	s5,8(sp)
    1468:	e05a                	sd	s6,0(sp)
    146a:	892a                	mv	s2,a0
    146c:	8aae                	mv	s5,a1
    146e:	000037b7          	lui	a5,0x3
    1472:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1476:	c3c1                	beqz	a5,14f6 <random_bytes+0x9e>
    1478:	060a8563          	beqz	s5,14e2 <random_bytes+0x8a>
    147c:	9aca                	add	s5,s5,s2
    147e:	00003a37          	lui	s4,0x3
    1482:	000034b7          	lui	s1,0x3
    1486:	01048493          	addi	s1,s1,16 # 3010 <s>
    148a:	000039b7          	lui	s3,0x3
    148e:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    1492:	2505                	addiw	a0,a0,1
    1494:	0ff57513          	andi	a0,a0,255
    1498:	00aa02a3          	sb	a0,5(s4)
    149c:	00a48b33          	add	s6,s1,a0
    14a0:	000b4403          	lbu	s0,0(s6)
    14a4:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14a8:	9c3d                	addw	s0,s0,a5
    14aa:	0ff47413          	andi	s0,s0,255
    14ae:	00898223          	sb	s0,4(s3)
    14b2:	4605                	li	a2,1
    14b4:	008485b3          	add	a1,s1,s0
    14b8:	855a                	mv	a0,s6
    14ba:	00000097          	auipc	ra,0x0
    14be:	ede080e7          	jalr	-290(ra) # 1398 <swap_bytes>
    14c2:	9426                	add	s0,s0,s1
    14c4:	000b4783          	lbu	a5,0(s6)
    14c8:	00044703          	lbu	a4,0(s0)
    14cc:	9fb9                	addw	a5,a5,a4
    14ce:	0ff7f793          	andi	a5,a5,255
    14d2:	97a6                	add	a5,a5,s1
    14d4:	0007c783          	lbu	a5,0(a5)
    14d8:	00f90023          	sb	a5,0(s2)
    14dc:	0905                	addi	s2,s2,1
    14de:	fb2a98e3          	bne	s5,s2,148e <random_bytes+0x36>
    14e2:	70e2                	ld	ra,56(sp)
    14e4:	7442                	ld	s0,48(sp)
    14e6:	74a2                	ld	s1,40(sp)
    14e8:	7902                	ld	s2,32(sp)
    14ea:	69e2                	ld	s3,24(sp)
    14ec:	6a42                	ld	s4,16(sp)
    14ee:	6aa2                	ld	s5,8(sp)
    14f0:	6b02                	ld	s6,0(sp)
    14f2:	6121                	addi	sp,sp,64
    14f4:	8082                	ret
    14f6:	4501                	li	a0,0
    14f8:	00000097          	auipc	ra,0x0
    14fc:	ec0080e7          	jalr	-320(ra) # 13b8 <random_init>
    1500:	bfa5                	j	1478 <random_bytes+0x20>

0000000000001502 <random_ulong>:
    1502:	1101                	addi	sp,sp,-32
    1504:	ec06                	sd	ra,24(sp)
    1506:	45a1                	li	a1,8
    1508:	0028                	addi	a0,sp,8
    150a:	00000097          	auipc	ra,0x0
    150e:	f4e080e7          	jalr	-178(ra) # 1458 <random_bytes>
    1512:	6522                	ld	a0,8(sp)
    1514:	60e2                	ld	ra,24(sp)
    1516:	6105                	addi	sp,sp,32
    1518:	8082                	ret

000000000000151a <shuffle>:
    151a:	c9b9                	beqz	a1,1570 <shuffle+0x56>
    151c:	7179                	addi	sp,sp,-48
    151e:	f406                	sd	ra,40(sp)
    1520:	f022                	sd	s0,32(sp)
    1522:	ec26                	sd	s1,24(sp)
    1524:	e84a                	sd	s2,16(sp)
    1526:	e44e                	sd	s3,8(sp)
    1528:	e052                	sd	s4,0(sp)
    152a:	8a2a                	mv	s4,a0
    152c:	89ae                	mv	s3,a1
    152e:	84b2                	mv	s1,a2
    1530:	892a                	mv	s2,a0
    1532:	4401                	li	s0,0
    1534:	00000097          	auipc	ra,0x0
    1538:	fce080e7          	jalr	-50(ra) # 1502 <random_ulong>
    153c:	408985b3          	sub	a1,s3,s0
    1540:	02b575b3          	remu	a1,a0,a1
    1544:	95a2                	add	a1,a1,s0
    1546:	029585b3          	mul	a1,a1,s1
    154a:	8626                	mv	a2,s1
    154c:	95d2                	add	a1,a1,s4
    154e:	854a                	mv	a0,s2
    1550:	00000097          	auipc	ra,0x0
    1554:	e48080e7          	jalr	-440(ra) # 1398 <swap_bytes>
    1558:	0405                	addi	s0,s0,1
    155a:	9926                	add	s2,s2,s1
    155c:	fc899ce3          	bne	s3,s0,1534 <shuffle+0x1a>
    1560:	70a2                	ld	ra,40(sp)
    1562:	7402                	ld	s0,32(sp)
    1564:	64e2                	ld	s1,24(sp)
    1566:	6942                	ld	s2,16(sp)
    1568:	69a2                	ld	s3,8(sp)
    156a:	6a02                	ld	s4,0(sp)
    156c:	6145                	addi	sp,sp,48
    156e:	8082                	ret
    1570:	8082                	ret

0000000000001572 <arc4_init>:
    1572:	100500a3          	sb	zero,257(a0)
    1576:	10050023          	sb	zero,256(a0)
    157a:	4781                	li	a5,0
    157c:	10000693          	li	a3,256
    1580:	00f50733          	add	a4,a0,a5
    1584:	00f70023          	sb	a5,0(a4)
    1588:	0785                	addi	a5,a5,1
    158a:	fed79be3          	bne	a5,a3,1580 <arc4_init+0xe>
    158e:	86aa                	mv	a3,a0
    1590:	10050e13          	addi	t3,a0,256
    1594:	4701                	li	a4,0
    1596:	4781                	li	a5,0
    1598:	0006c883          	lbu	a7,0(a3)
    159c:	00f58833          	add	a6,a1,a5
    15a0:	00084803          	lbu	a6,0(a6)
    15a4:	00e8873b          	addw	a4,a7,a4
    15a8:	00e8073b          	addw	a4,a6,a4
    15ac:	0ff77713          	andi	a4,a4,255
    15b0:	00e50833          	add	a6,a0,a4
    15b4:	00084303          	lbu	t1,0(a6)
    15b8:	00668023          	sb	t1,0(a3)
    15bc:	01180023          	sb	a7,0(a6)
    15c0:	0785                	addi	a5,a5,1
    15c2:	00c7b833          	sltu	a6,a5,a2
    15c6:	41000833          	neg	a6,a6
    15ca:	0107f7b3          	and	a5,a5,a6
    15ce:	0685                	addi	a3,a3,1
    15d0:	fdc694e3          	bne	a3,t3,1598 <arc4_init+0x26>
    15d4:	8082                	ret

00000000000015d6 <arc4_crypt>:
    15d6:	10054e03          	lbu	t3,256(a0)
    15da:	10154803          	lbu	a6,257(a0)
    15de:	fff60e93          	addi	t4,a2,-1
    15e2:	c225                	beqz	a2,1642 <arc4_crypt+0x6c>
    15e4:	00c588b3          	add	a7,a1,a2
    15e8:	86ae                	mv	a3,a1
    15ea:	001e031b          	addiw	t1,t3,1
    15ee:	40b3033b          	subw	t1,t1,a1
    15f2:	00d3073b          	addw	a4,t1,a3
    15f6:	0ff77713          	andi	a4,a4,255
    15fa:	972a                	add	a4,a4,a0
    15fc:	00074603          	lbu	a2,0(a4)
    1600:	0106083b          	addw	a6,a2,a6
    1604:	0ff87813          	andi	a6,a6,255
    1608:	010507b3          	add	a5,a0,a6
    160c:	0007c583          	lbu	a1,0(a5)
    1610:	00b70023          	sb	a1,0(a4)
    1614:	00c78023          	sb	a2,0(a5)
    1618:	0685                	addi	a3,a3,1
    161a:	00074783          	lbu	a5,0(a4)
    161e:	9fb1                	addw	a5,a5,a2
    1620:	0ff7f793          	andi	a5,a5,255
    1624:	97aa                	add	a5,a5,a0
    1626:	0007c783          	lbu	a5,0(a5)
    162a:	fff6c703          	lbu	a4,-1(a3)
    162e:	8fb9                	xor	a5,a5,a4
    1630:	fef68fa3          	sb	a5,-1(a3)
    1634:	fb169fe3          	bne	a3,a7,15f2 <arc4_crypt+0x1c>
    1638:	2e85                	addiw	t4,t4,1
    163a:	01ce8e3b          	addw	t3,t4,t3
    163e:	0ffe7e13          	andi	t3,t3,255
    1642:	11c50023          	sb	t3,256(a0)
    1646:	110500a3          	sb	a6,257(a0)
    164a:	8082                	ret

000000000000164c <_main>:
    164c:	1141                	addi	sp,sp,-16
    164e:	e406                	sd	ra,8(sp)
    1650:	00000097          	auipc	ra,0x0
    1654:	9b0080e7          	jalr	-1616(ra) # 1000 <main>
    1658:	4501                	li	a0,0
    165a:	00000097          	auipc	ra,0x0
    165e:	578080e7          	jalr	1400(ra) # 1bd2 <exit>
    1662:	60a2                	ld	ra,8(sp)
    1664:	0141                	addi	sp,sp,16
    1666:	8082                	ret

0000000000001668 <strcmp>:
    1668:	00054783          	lbu	a5,0(a0)
    166c:	cb91                	beqz	a5,1680 <strcmp+0x18>
    166e:	0005c703          	lbu	a4,0(a1)
    1672:	00f71763          	bne	a4,a5,1680 <strcmp+0x18>
    1676:	0505                	addi	a0,a0,1
    1678:	0585                	addi	a1,a1,1
    167a:	00054783          	lbu	a5,0(a0)
    167e:	fbe5                	bnez	a5,166e <strcmp+0x6>
    1680:	0005c503          	lbu	a0,0(a1)
    1684:	40a7853b          	subw	a0,a5,a0
    1688:	8082                	ret

000000000000168a <strcpy>:
    168a:	87aa                	mv	a5,a0
    168c:	0585                	addi	a1,a1,1
    168e:	0785                	addi	a5,a5,1
    1690:	fff5c703          	lbu	a4,-1(a1)
    1694:	fee78fa3          	sb	a4,-1(a5)
    1698:	fb75                	bnez	a4,168c <strcpy+0x2>
    169a:	8082                	ret

000000000000169c <strlen>:
    169c:	00054783          	lbu	a5,0(a0)
    16a0:	cf81                	beqz	a5,16b8 <strlen+0x1c>
    16a2:	0505                	addi	a0,a0,1
    16a4:	87aa                	mv	a5,a0
    16a6:	4685                	li	a3,1
    16a8:	9e89                	subw	a3,a3,a0
    16aa:	00f6853b          	addw	a0,a3,a5
    16ae:	0785                	addi	a5,a5,1
    16b0:	fff7c703          	lbu	a4,-1(a5)
    16b4:	fb7d                	bnez	a4,16aa <strlen+0xe>
    16b6:	8082                	ret
    16b8:	4501                	li	a0,0
    16ba:	8082                	ret

00000000000016bc <memset>:
    16bc:	ca19                	beqz	a2,16d2 <memset+0x16>
    16be:	87aa                	mv	a5,a0
    16c0:	1602                	slli	a2,a2,0x20
    16c2:	9201                	srli	a2,a2,0x20
    16c4:	00a60733          	add	a4,a2,a0
    16c8:	00b78023          	sb	a1,0(a5)
    16cc:	0785                	addi	a5,a5,1
    16ce:	fee79de3          	bne	a5,a4,16c8 <memset+0xc>
    16d2:	8082                	ret

00000000000016d4 <memcmp>:
    16d4:	1101                	addi	sp,sp,-32
    16d6:	ec06                	sd	ra,24(sp)
    16d8:	e822                	sd	s0,16(sp)
    16da:	e426                	sd	s1,8(sp)
    16dc:	e04a                	sd	s2,0(sp)
    16de:	892a                	mv	s2,a0
    16e0:	842e                	mv	s0,a1
    16e2:	84b2                	mv	s1,a2
    16e4:	c915                	beqz	a0,1718 <memcmp+0x44>
    16e6:	c5ad                	beqz	a1,1750 <memcmp+0x7c>
    16e8:	fff60713          	addi	a4,a2,-1
    16ec:	c645                	beqz	a2,1794 <memcmp+0xc0>
    16ee:	87ca                	mv	a5,s2
    16f0:	00190613          	addi	a2,s2,1
    16f4:	963a                	add	a2,a2,a4
    16f6:	0007c683          	lbu	a3,0(a5)
    16fa:	00044703          	lbu	a4,0(s0)
    16fe:	08e69463          	bne	a3,a4,1786 <memcmp+0xb2>
    1702:	0785                	addi	a5,a5,1
    1704:	0405                	addi	s0,s0,1
    1706:	fec798e3          	bne	a5,a2,16f6 <memcmp+0x22>
    170a:	4501                	li	a0,0
    170c:	60e2                	ld	ra,24(sp)
    170e:	6442                	ld	s0,16(sp)
    1710:	64a2                	ld	s1,8(sp)
    1712:	6902                	ld	s2,0(sp)
    1714:	6105                	addi	sp,sp,32
    1716:	8082                	ret
    1718:	4501                	li	a0,0
    171a:	da6d                	beqz	a2,170c <memcmp+0x38>
    171c:	03200693          	li	a3,50
    1720:	00002637          	lui	a2,0x2
    1724:	10060613          	addi	a2,a2,256 # 2100 <crctab+0x400>
    1728:	000025b7          	lui	a1,0x2
    172c:	11058593          	addi	a1,a1,272 # 2110 <crctab+0x410>
    1730:	4509                	li	a0,2
    1732:	00000097          	auipc	ra,0x0
    1736:	bbc080e7          	jalr	-1092(ra) # 12ee <fprintf>
    173a:	650d                	lui	a0,0x3
    173c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1740:	00000097          	auipc	ra,0x0
    1744:	492080e7          	jalr	1170(ra) # 1bd2 <exit>
    1748:	fff48713          	addi	a4,s1,-1
    174c:	f04d                	bnez	s0,16ee <memcmp+0x1a>
    174e:	a011                	j	1752 <memcmp+0x7e>
    1750:	c221                	beqz	a2,1790 <memcmp+0xbc>
    1752:	03300693          	li	a3,51
    1756:	00002637          	lui	a2,0x2
    175a:	10060613          	addi	a2,a2,256 # 2100 <crctab+0x400>
    175e:	000025b7          	lui	a1,0x2
    1762:	15858593          	addi	a1,a1,344 # 2158 <crctab+0x458>
    1766:	4509                	li	a0,2
    1768:	00000097          	auipc	ra,0x0
    176c:	b86080e7          	jalr	-1146(ra) # 12ee <fprintf>
    1770:	650d                	lui	a0,0x3
    1772:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1776:	00000097          	auipc	ra,0x0
    177a:	45c080e7          	jalr	1116(ra) # 1bd2 <exit>
    177e:	fff48713          	addi	a4,s1,-1
    1782:	4401                	li	s0,0
    1784:	b7ad                	j	16ee <memcmp+0x1a>
    1786:	4505                	li	a0,1
    1788:	f8d762e3          	bltu	a4,a3,170c <memcmp+0x38>
    178c:	557d                	li	a0,-1
    178e:	bfbd                	j	170c <memcmp+0x38>
    1790:	4501                	li	a0,0
    1792:	bfad                	j	170c <memcmp+0x38>
    1794:	4501                	li	a0,0
    1796:	bf9d                	j	170c <memcmp+0x38>

0000000000001798 <memcpy>:
    1798:	1101                	addi	sp,sp,-32
    179a:	ec06                	sd	ra,24(sp)
    179c:	e822                	sd	s0,16(sp)
    179e:	e426                	sd	s1,8(sp)
    17a0:	e04a                	sd	s2,0(sp)
    17a2:	84aa                	mv	s1,a0
    17a4:	842e                	mv	s0,a1
    17a6:	8932                	mv	s2,a2
    17a8:	c51d                	beqz	a0,17d6 <memcpy+0x3e>
    17aa:	c1ad                	beqz	a1,180c <memcpy+0x74>
    17ac:	fff60693          	addi	a3,a2,-1
    17b0:	ce01                	beqz	a2,17c8 <memcpy+0x30>
    17b2:	0685                	addi	a3,a3,1
    17b4:	96a6                	add	a3,a3,s1
    17b6:	87a6                	mv	a5,s1
    17b8:	0405                	addi	s0,s0,1
    17ba:	0785                	addi	a5,a5,1
    17bc:	fff44703          	lbu	a4,-1(s0)
    17c0:	fee78fa3          	sb	a4,-1(a5)
    17c4:	fed79ae3          	bne	a5,a3,17b8 <memcpy+0x20>
    17c8:	8526                	mv	a0,s1
    17ca:	60e2                	ld	ra,24(sp)
    17cc:	6442                	ld	s0,16(sp)
    17ce:	64a2                	ld	s1,8(sp)
    17d0:	6902                	ld	s2,0(sp)
    17d2:	6105                	addi	sp,sp,32
    17d4:	8082                	ret
    17d6:	da6d                	beqz	a2,17c8 <memcpy+0x30>
    17d8:	04000693          	li	a3,64
    17dc:	00002637          	lui	a2,0x2
    17e0:	10060613          	addi	a2,a2,256 # 2100 <crctab+0x400>
    17e4:	000025b7          	lui	a1,0x2
    17e8:	1a058593          	addi	a1,a1,416 # 21a0 <crctab+0x4a0>
    17ec:	4509                	li	a0,2
    17ee:	00000097          	auipc	ra,0x0
    17f2:	b00080e7          	jalr	-1280(ra) # 12ee <fprintf>
    17f6:	650d                	lui	a0,0x3
    17f8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17fc:	00000097          	auipc	ra,0x0
    1800:	3d6080e7          	jalr	982(ra) # 1bd2 <exit>
    1804:	fff90693          	addi	a3,s2,-1
    1808:	f44d                	bnez	s0,17b2 <memcpy+0x1a>
    180a:	a011                	j	180e <memcpy+0x76>
    180c:	de55                	beqz	a2,17c8 <memcpy+0x30>
    180e:	04100693          	li	a3,65
    1812:	00002637          	lui	a2,0x2
    1816:	10060613          	addi	a2,a2,256 # 2100 <crctab+0x400>
    181a:	000025b7          	lui	a1,0x2
    181e:	1e858593          	addi	a1,a1,488 # 21e8 <crctab+0x4e8>
    1822:	4509                	li	a0,2
    1824:	00000097          	auipc	ra,0x0
    1828:	aca080e7          	jalr	-1334(ra) # 12ee <fprintf>
    182c:	650d                	lui	a0,0x3
    182e:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1832:	00000097          	auipc	ra,0x0
    1836:	3a0080e7          	jalr	928(ra) # 1bd2 <exit>
    183a:	fff90693          	addi	a3,s2,-1
    183e:	4401                	li	s0,0
    1840:	bf8d                	j	17b2 <memcpy+0x1a>

0000000000001842 <itoa>:
    1842:	1101                	addi	sp,sp,-32
    1844:	ec06                	sd	ra,24(sp)
    1846:	e822                	sd	s0,16(sp)
    1848:	e426                	sd	s1,8(sp)
    184a:	842a                	mv	s0,a0
    184c:	41f5d71b          	sraiw	a4,a1,0x1f
    1850:	00e5c7b3          	xor	a5,a1,a4
    1854:	9f99                	subw	a5,a5,a4
    1856:	84aa                	mv	s1,a0
    1858:	862a                	mv	a2,a0
    185a:	4681                	li	a3,0
    185c:	4529                	li	a0,10
    185e:	4825                	li	a6,9
    1860:	88b6                	mv	a7,a3
    1862:	2685                	addiw	a3,a3,1
    1864:	02a7e73b          	remw	a4,a5,a0
    1868:	0307071b          	addiw	a4,a4,48
    186c:	00e60023          	sb	a4,0(a2)
    1870:	873e                	mv	a4,a5
    1872:	02a7c7bb          	divw	a5,a5,a0
    1876:	0605                	addi	a2,a2,1
    1878:	fee844e3          	blt	a6,a4,1860 <itoa+0x1e>
    187c:	0405c863          	bltz	a1,18cc <itoa+0x8a>
    1880:	96a2                	add	a3,a3,s0
    1882:	00068023          	sb	zero,0(a3)
    1886:	8522                	mv	a0,s0
    1888:	00000097          	auipc	ra,0x0
    188c:	e14080e7          	jalr	-492(ra) # 169c <strlen>
    1890:	fff5071b          	addiw	a4,a0,-1
    1894:	02e05763          	blez	a4,18c2 <itoa+0x80>
    1898:	9722                	add	a4,a4,s0
    189a:	4681                	li	a3,0
    189c:	0004c783          	lbu	a5,0(s1)
    18a0:	00074603          	lbu	a2,0(a4)
    18a4:	00c48023          	sb	a2,0(s1)
    18a8:	00f70023          	sb	a5,0(a4)
    18ac:	0016879b          	addiw	a5,a3,1
    18b0:	0007869b          	sext.w	a3,a5
    18b4:	0485                	addi	s1,s1,1
    18b6:	177d                	addi	a4,a4,-1
    18b8:	fff7c793          	not	a5,a5
    18bc:	9fa9                	addw	a5,a5,a0
    18be:	fcf6cfe3          	blt	a3,a5,189c <itoa+0x5a>
    18c2:	60e2                	ld	ra,24(sp)
    18c4:	6442                	ld	s0,16(sp)
    18c6:	64a2                	ld	s1,8(sp)
    18c8:	6105                	addi	sp,sp,32
    18ca:	8082                	ret
    18cc:	96a2                	add	a3,a3,s0
    18ce:	02d00793          	li	a5,45
    18d2:	00f68023          	sb	a5,0(a3)
    18d6:	0028869b          	addiw	a3,a7,2
    18da:	b75d                	j	1880 <itoa+0x3e>

00000000000018dc <atoi>:
    18dc:	00054783          	lbu	a5,0(a0)
    18e0:	02000713          	li	a4,32
    18e4:	00e79763          	bne	a5,a4,18f2 <atoi+0x16>
    18e8:	0505                	addi	a0,a0,1
    18ea:	00054783          	lbu	a5,0(a0)
    18ee:	fee78de3          	beq	a5,a4,18e8 <atoi+0xc>
    18f2:	02b00713          	li	a4,43
    18f6:	04e78663          	beq	a5,a4,1942 <atoi+0x66>
    18fa:	02d00713          	li	a4,45
    18fe:	4805                	li	a6,1
    1900:	04e78463          	beq	a5,a4,1948 <atoi+0x6c>
    1904:	00054683          	lbu	a3,0(a0)
    1908:	fd06879b          	addiw	a5,a3,-48
    190c:	0ff7f793          	andi	a5,a5,255
    1910:	4725                	li	a4,9
    1912:	02f76e63          	bltu	a4,a5,194e <atoi+0x72>
    1916:	4601                	li	a2,0
    1918:	45a5                	li	a1,9
    191a:	0505                	addi	a0,a0,1
    191c:	0026179b          	slliw	a5,a2,0x2
    1920:	9fb1                	addw	a5,a5,a2
    1922:	0017979b          	slliw	a5,a5,0x1
    1926:	9fb5                	addw	a5,a5,a3
    1928:	fd07861b          	addiw	a2,a5,-48
    192c:	00054683          	lbu	a3,0(a0)
    1930:	fd06871b          	addiw	a4,a3,-48
    1934:	0ff77713          	andi	a4,a4,255
    1938:	fee5f1e3          	bgeu	a1,a4,191a <atoi+0x3e>
    193c:	02c8053b          	mulw	a0,a6,a2
    1940:	8082                	ret
    1942:	0505                	addi	a0,a0,1
    1944:	4805                	li	a6,1
    1946:	bf7d                	j	1904 <atoi+0x28>
    1948:	0505                	addi	a0,a0,1
    194a:	587d                	li	a6,-1
    194c:	bf65                	j	1904 <atoi+0x28>
    194e:	4601                	li	a2,0
    1950:	b7f5                	j	193c <atoi+0x60>

0000000000001952 <check_file_handle>:
    1952:	d8010113          	addi	sp,sp,-640
    1956:	26113c23          	sd	ra,632(sp)
    195a:	26813823          	sd	s0,624(sp)
    195e:	26913423          	sd	s1,616(sp)
    1962:	27213023          	sd	s2,608(sp)
    1966:	25313c23          	sd	s3,600(sp)
    196a:	25413823          	sd	s4,592(sp)
    196e:	25513423          	sd	s5,584(sp)
    1972:	25613023          	sd	s6,576(sp)
    1976:	23713c23          	sd	s7,568(sp)
    197a:	23813823          	sd	s8,560(sp)
    197e:	23913423          	sd	s9,552(sp)
    1982:	23a13023          	sd	s10,544(sp)
    1986:	21b13c23          	sd	s11,536(sp)
    198a:	8baa                	mv	s7,a0
    198c:	8a2e                	mv	s4,a1
    198e:	8c32                	mv	s8,a2
    1990:	89b6                	mv	s3,a3
    1992:	040c                	addi	a1,sp,512
    1994:	00000097          	auipc	ra,0x0
    1998:	28e080e7          	jalr	654(ra) # 1c22 <fstat>
    199c:	20813603          	ld	a2,520(sp)
    19a0:	03361163          	bne	a2,s3,19c2 <check_file_handle+0x70>
    19a4:	06098763          	beqz	s3,1a12 <check_file_handle+0xc0>
    19a8:	4901                	li	s2,0
    19aa:	20000a93          	li	s5,512
    19ae:	00002cb7          	lui	s9,0x2
    19b2:	00002db7          	lui	s11,0x2
    19b6:	6b0d                	lui	s6,0x3
    19b8:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19bc:	00002d37          	lui	s10,0x2
    19c0:	aa39                	j	1ade <check_file_handle+0x18c>
    19c2:	86ce                	mv	a3,s3
    19c4:	85d2                	mv	a1,s4
    19c6:	00002537          	lui	a0,0x2
    19ca:	23050513          	addi	a0,a0,560 # 2230 <crctab+0x530>
    19ce:	00000097          	auipc	ra,0x0
    19d2:	942080e7          	jalr	-1726(ra) # 1310 <printf>
    19d6:	fc0999e3          	bnez	s3,19a8 <check_file_handle+0x56>
    19da:	20813683          	ld	a3,520(sp)
    19de:	03368a63          	beq	a3,s3,1a12 <check_file_handle+0xc0>
    19e2:	0a600813          	li	a6,166
    19e6:	000027b7          	lui	a5,0x2
    19ea:	10078793          	addi	a5,a5,256 # 2100 <crctab+0x400>
    19ee:	874e                	mv	a4,s3
    19f0:	8652                	mv	a2,s4
    19f2:	000025b7          	lui	a1,0x2
    19f6:	30058593          	addi	a1,a1,768 # 2300 <crctab+0x600>
    19fa:	4509                	li	a0,2
    19fc:	00000097          	auipc	ra,0x0
    1a00:	8f2080e7          	jalr	-1806(ra) # 12ee <fprintf>
    1a04:	650d                	lui	a0,0x3
    1a06:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a0a:	00000097          	auipc	ra,0x0
    1a0e:	1c8080e7          	jalr	456(ra) # 1bd2 <exit>
    1a12:	85d2                	mv	a1,s4
    1a14:	00002537          	lui	a0,0x2
    1a18:	34850513          	addi	a0,a0,840 # 2348 <crctab+0x648>
    1a1c:	00000097          	auipc	ra,0x0
    1a20:	8f4080e7          	jalr	-1804(ra) # 1310 <printf>
    1a24:	27813083          	ld	ra,632(sp)
    1a28:	27013403          	ld	s0,624(sp)
    1a2c:	26813483          	ld	s1,616(sp)
    1a30:	26013903          	ld	s2,608(sp)
    1a34:	25813983          	ld	s3,600(sp)
    1a38:	25013a03          	ld	s4,592(sp)
    1a3c:	24813a83          	ld	s5,584(sp)
    1a40:	24013b03          	ld	s6,576(sp)
    1a44:	23813b83          	ld	s7,568(sp)
    1a48:	23013c03          	ld	s8,560(sp)
    1a4c:	22813c83          	ld	s9,552(sp)
    1a50:	22013d03          	ld	s10,544(sp)
    1a54:	21813d83          	ld	s11,536(sp)
    1a58:	28010113          	addi	sp,sp,640
    1a5c:	8082                	ret
    1a5e:	09d00893          	li	a7,157
    1a62:	100c8813          	addi	a6,s9,256 # 2100 <crctab+0x400>
    1a66:	87aa                	mv	a5,a0
    1a68:	8752                	mv	a4,s4
    1a6a:	86ca                	mv	a3,s2
    1a6c:	8622                	mv	a2,s0
    1a6e:	260d8593          	addi	a1,s11,608 # 2260 <crctab+0x560>
    1a72:	4509                	li	a0,2
    1a74:	00000097          	auipc	ra,0x0
    1a78:	87a080e7          	jalr	-1926(ra) # 12ee <fprintf>
    1a7c:	855a                	mv	a0,s6
    1a7e:	00000097          	auipc	ra,0x0
    1a82:	154080e7          	jalr	340(ra) # 1bd2 <exit>
    1a86:	a89d                	j	1afc <check_file_handle+0x1aa>
    1a88:	00160593          	addi	a1,a2,1
    1a8c:	0285f163          	bgeu	a1,s0,1aae <check_file_handle+0x15c>
    1a90:	00c10733          	add	a4,sp,a2
    1a94:	00b487b3          	add	a5,s1,a1
    1a98:	00174683          	lbu	a3,1(a4)
    1a9c:	0007c783          	lbu	a5,0(a5)
    1aa0:	00f68763          	beq	a3,a5,1aae <check_file_handle+0x15c>
    1aa4:	0585                	addi	a1,a1,1
    1aa6:	0705                	addi	a4,a4,1
    1aa8:	feb416e3          	bne	s0,a1,1a94 <check_file_handle+0x142>
    1aac:	85a2                	mv	a1,s0
    1aae:	08100813          	li	a6,129
    1ab2:	100c8793          	addi	a5,s9,256
    1ab6:	8752                	mv	a4,s4
    1ab8:	012606b3          	add	a3,a2,s2
    1abc:	40c58633          	sub	a2,a1,a2
    1ac0:	2a8d0593          	addi	a1,s10,680 # 22a8 <crctab+0x5a8>
    1ac4:	4509                	li	a0,2
    1ac6:	00000097          	auipc	ra,0x0
    1aca:	828080e7          	jalr	-2008(ra) # 12ee <fprintf>
    1ace:	855a                	mv	a0,s6
    1ad0:	00000097          	auipc	ra,0x0
    1ad4:	102080e7          	jalr	258(ra) # 1bd2 <exit>
    1ad8:	9922                	add	s2,s2,s0
    1ada:	f13970e3          	bgeu	s2,s3,19da <check_file_handle+0x88>
    1ade:	41298433          	sub	s0,s3,s2
    1ae2:	008af363          	bgeu	s5,s0,1ae8 <check_file_handle+0x196>
    1ae6:	8456                	mv	s0,s5
    1ae8:	0004061b          	sext.w	a2,s0
    1aec:	858a                	mv	a1,sp
    1aee:	855e                	mv	a0,s7
    1af0:	00000097          	auipc	ra,0x0
    1af4:	10a080e7          	jalr	266(ra) # 1bfa <read>
    1af8:	f68513e3          	bne	a0,s0,1a5e <check_file_handle+0x10c>
    1afc:	012c04b3          	add	s1,s8,s2
    1b00:	8622                	mv	a2,s0
    1b02:	85a6                	mv	a1,s1
    1b04:	850a                	mv	a0,sp
    1b06:	00000097          	auipc	ra,0x0
    1b0a:	bce080e7          	jalr	-1074(ra) # 16d4 <memcmp>
    1b0e:	d569                	beqz	a0,1ad8 <check_file_handle+0x186>
    1b10:	03298163          	beq	s3,s2,1b32 <check_file_handle+0x1e0>
    1b14:	870a                	mv	a4,sp
    1b16:	4601                	li	a2,0
    1b18:	00c487b3          	add	a5,s1,a2
    1b1c:	00074683          	lbu	a3,0(a4)
    1b20:	0007c783          	lbu	a5,0(a5)
    1b24:	f6f692e3          	bne	a3,a5,1a88 <check_file_handle+0x136>
    1b28:	0605                	addi	a2,a2,1
    1b2a:	0705                	addi	a4,a4,1
    1b2c:	fe8666e3          	bltu	a2,s0,1b18 <check_file_handle+0x1c6>
    1b30:	bfa1                	j	1a88 <check_file_handle+0x136>
    1b32:	4601                	li	a2,0
    1b34:	4585                	li	a1,1
    1b36:	bfa5                	j	1aae <check_file_handle+0x15c>

0000000000001b38 <check_file>:
    1b38:	7179                	addi	sp,sp,-48
    1b3a:	f406                	sd	ra,40(sp)
    1b3c:	f022                	sd	s0,32(sp)
    1b3e:	ec26                	sd	s1,24(sp)
    1b40:	e84a                	sd	s2,16(sp)
    1b42:	e44e                	sd	s3,8(sp)
    1b44:	84aa                	mv	s1,a0
    1b46:	892e                	mv	s2,a1
    1b48:	89b2                	mv	s3,a2
    1b4a:	4581                	li	a1,0
    1b4c:	00000097          	auipc	ra,0x0
    1b50:	0a6080e7          	jalr	166(ra) # 1bf2 <open>
    1b54:	842a                	mv	s0,a0
    1b56:	4789                	li	a5,2
    1b58:	02a7df63          	bge	a5,a0,1b96 <check_file+0x5e>
    1b5c:	86ce                	mv	a3,s3
    1b5e:	864a                	mv	a2,s2
    1b60:	85a6                	mv	a1,s1
    1b62:	8522                	mv	a0,s0
    1b64:	00000097          	auipc	ra,0x0
    1b68:	dee080e7          	jalr	-530(ra) # 1952 <check_file_handle>
    1b6c:	85a6                	mv	a1,s1
    1b6e:	00002537          	lui	a0,0x2
    1b72:	3d050513          	addi	a0,a0,976 # 23d0 <crctab+0x6d0>
    1b76:	fffff097          	auipc	ra,0xfffff
    1b7a:	79a080e7          	jalr	1946(ra) # 1310 <printf>
    1b7e:	8522                	mv	a0,s0
    1b80:	00000097          	auipc	ra,0x0
    1b84:	09a080e7          	jalr	154(ra) # 1c1a <close>
    1b88:	70a2                	ld	ra,40(sp)
    1b8a:	7402                	ld	s0,32(sp)
    1b8c:	64e2                	ld	s1,24(sp)
    1b8e:	6942                	ld	s2,16(sp)
    1b90:	69a2                	ld	s3,8(sp)
    1b92:	6145                	addi	sp,sp,48
    1b94:	8082                	ret
    1b96:	0ae00713          	li	a4,174
    1b9a:	000026b7          	lui	a3,0x2
    1b9e:	10068693          	addi	a3,a3,256 # 2100 <crctab+0x400>
    1ba2:	8626                	mv	a2,s1
    1ba4:	000025b7          	lui	a1,0x2
    1ba8:	36858593          	addi	a1,a1,872 # 2368 <crctab+0x668>
    1bac:	4509                	li	a0,2
    1bae:	fffff097          	auipc	ra,0xfffff
    1bb2:	740080e7          	jalr	1856(ra) # 12ee <fprintf>
    1bb6:	650d                	lui	a0,0x3
    1bb8:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bbc:	00000097          	auipc	ra,0x0
    1bc0:	016080e7          	jalr	22(ra) # 1bd2 <exit>
    1bc4:	bf61                	j	1b5c <check_file+0x24>

0000000000001bc6 <r_sp>:
    1bc6:	850a                	mv	a0,sp
    1bc8:	8082                	ret

0000000000001bca <halt>:
    1bca:	4885                	li	a7,1
    1bcc:	00000073          	ecall
    1bd0:	8082                	ret

0000000000001bd2 <exit>:
    1bd2:	4889                	li	a7,2
    1bd4:	00000073          	ecall
    1bd8:	8082                	ret

0000000000001bda <exec>:
    1bda:	488d                	li	a7,3
    1bdc:	00000073          	ecall
    1be0:	8082                	ret

0000000000001be2 <wait>:
    1be2:	4891                	li	a7,4
    1be4:	00000073          	ecall
    1be8:	8082                	ret

0000000000001bea <remove>:
    1bea:	4895                	li	a7,5
    1bec:	00000073          	ecall
    1bf0:	8082                	ret

0000000000001bf2 <open>:
    1bf2:	4899                	li	a7,6
    1bf4:	00000073          	ecall
    1bf8:	8082                	ret

0000000000001bfa <read>:
    1bfa:	489d                	li	a7,7
    1bfc:	00000073          	ecall
    1c00:	8082                	ret

0000000000001c02 <write>:
    1c02:	48a1                	li	a7,8
    1c04:	00000073          	ecall
    1c08:	8082                	ret

0000000000001c0a <seek>:
    1c0a:	48a5                	li	a7,9
    1c0c:	00000073          	ecall
    1c10:	8082                	ret

0000000000001c12 <tell>:
    1c12:	48a9                	li	a7,10
    1c14:	00000073          	ecall
    1c18:	8082                	ret

0000000000001c1a <close>:
    1c1a:	48ad                	li	a7,11
    1c1c:	00000073          	ecall
    1c20:	8082                	ret

0000000000001c22 <fstat>:
    1c22:	48b1                	li	a7,12
    1c24:	00000073          	ecall
    1c28:	8082                	ret

0000000000001c2a <mmap>:
    1c2a:	48b5                	li	a7,13
    1c2c:	00000073          	ecall
    1c30:	8082                	ret

0000000000001c32 <munmap>:
    1c32:	48b9                	li	a7,14
    1c34:	00000073          	ecall
    1c38:	8082                	ret

0000000000001c3a <chdir>:
    1c3a:	48bd                	li	a7,15
    1c3c:	00000073          	ecall
    1c40:	8082                	ret

0000000000001c42 <mkdir>:
    1c42:	48c1                	li	a7,16
    1c44:	00000073          	ecall
    1c48:	8082                	ret
