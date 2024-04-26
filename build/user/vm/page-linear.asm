
build/user/vm/page-linear:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	710d                	addi	sp,sp,-352
    1002:	ee86                	sd	ra,344(sp)
    1004:	eaa2                	sd	s0,336(sp)
    1006:	e6a6                	sd	s1,328(sp)
    1008:	e2ca                	sd	s2,320(sp)
    100a:	fe4e                	sd	s3,312(sp)
    100c:	fa52                	sd	s4,304(sp)
    100e:	f656                	sd	s5,296(sp)
    1010:	f25a                	sd	s6,288(sp)
    1012:	ee5e                	sd	s7,280(sp)
    1014:	00200637          	lui	a2,0x200
    1018:	05a00593          	li	a1,90
    101c:	000034b7          	lui	s1,0x3
    1020:	01048513          	addi	a0,s1,16 # 3010 <buf>
    1024:	00000097          	auipc	ra,0x0
    1028:	764080e7          	jalr	1892(ra) # 1788 <memset>
    102c:	01048913          	addi	s2,s1,16
    1030:	01048493          	addi	s1,s1,16
    1034:	4401                	li	s0,0
    1036:	05a00a13          	li	s4,90
    103a:	00002bb7          	lui	s7,0x2
    103e:	00002b37          	lui	s6,0x2
    1042:	6a8d                	lui	s5,0x3
    1044:	039a8a93          	addi	s5,s5,57 # 3039 <buf+0x29>
    1048:	002009b7          	lui	s3,0x200
    104c:	a029                	j	1056 <main+0x56>
    104e:	0405                	addi	s0,s0,1
    1050:	0485                	addi	s1,s1,1
    1052:	03340763          	beq	s0,s3,1080 <main+0x80>
    1056:	0004c783          	lbu	a5,0(s1)
    105a:	ff478ae3          	beq	a5,s4,104e <main+0x4e>
    105e:	4751                	li	a4,20
    1060:	d20b8693          	addi	a3,s7,-736 # 1d20 <mkdir+0x12>
    1064:	8622                	mv	a2,s0
    1066:	d38b0593          	addi	a1,s6,-712 # 1d38 <mkdir+0x2a>
    106a:	4509                	li	a0,2
    106c:	00000097          	auipc	ra,0x0
    1070:	34e080e7          	jalr	846(ra) # 13ba <fprintf>
    1074:	8556                	mv	a0,s5
    1076:	00001097          	auipc	ra,0x1
    107a:	c28080e7          	jalr	-984(ra) # 1c9e <exit>
    107e:	bfc1                	j	104e <main+0x4e>
    1080:	4619                	li	a2,6
    1082:	000024b7          	lui	s1,0x2
    1086:	d6048593          	addi	a1,s1,-672 # 1d60 <mkdir+0x52>
    108a:	0028                	addi	a0,sp,8
    108c:	00000097          	auipc	ra,0x0
    1090:	5b2080e7          	jalr	1458(ra) # 163e <arc4_init>
    1094:	00200637          	lui	a2,0x200
    1098:	00003437          	lui	s0,0x3
    109c:	01040593          	addi	a1,s0,16 # 3010 <buf>
    10a0:	0028                	addi	a0,sp,8
    10a2:	00000097          	auipc	ra,0x0
    10a6:	600080e7          	jalr	1536(ra) # 16a2 <arc4_crypt>
    10aa:	4619                	li	a2,6
    10ac:	d6048593          	addi	a1,s1,-672
    10b0:	0028                	addi	a0,sp,8
    10b2:	00000097          	auipc	ra,0x0
    10b6:	58c080e7          	jalr	1420(ra) # 163e <arc4_init>
    10ba:	00200637          	lui	a2,0x200
    10be:	01040593          	addi	a1,s0,16
    10c2:	0028                	addi	a0,sp,8
    10c4:	00000097          	auipc	ra,0x0
    10c8:	5de080e7          	jalr	1502(ra) # 16a2 <arc4_crypt>
    10cc:	4401                	li	s0,0
    10ce:	05a00993          	li	s3,90
    10d2:	00002b37          	lui	s6,0x2
    10d6:	00002ab7          	lui	s5,0x2
    10da:	6a0d                	lui	s4,0x3
    10dc:	039a0a13          	addi	s4,s4,57 # 3039 <buf+0x29>
    10e0:	002004b7          	lui	s1,0x200
    10e4:	a029                	j	10ee <main+0xee>
    10e6:	0405                	addi	s0,s0,1
    10e8:	0905                	addi	s2,s2,1
    10ea:	02940863          	beq	s0,s1,111a <main+0x11a>
    10ee:	00094783          	lbu	a5,0(s2)
    10f2:	ff378ae3          	beq	a5,s3,10e6 <main+0xe6>
    10f6:	02000713          	li	a4,32
    10fa:	d20b0693          	addi	a3,s6,-736 # 1d20 <mkdir+0x12>
    10fe:	8622                	mv	a2,s0
    1100:	d38a8593          	addi	a1,s5,-712 # 1d38 <mkdir+0x2a>
    1104:	4509                	li	a0,2
    1106:	00000097          	auipc	ra,0x0
    110a:	2b4080e7          	jalr	692(ra) # 13ba <fprintf>
    110e:	8552                	mv	a0,s4
    1110:	00001097          	auipc	ra,0x1
    1114:	b8e080e7          	jalr	-1138(ra) # 1c9e <exit>
    1118:	b7f9                	j	10e6 <main+0xe6>
    111a:	60f6                	ld	ra,344(sp)
    111c:	6456                	ld	s0,336(sp)
    111e:	64b6                	ld	s1,328(sp)
    1120:	6916                	ld	s2,320(sp)
    1122:	79f2                	ld	s3,312(sp)
    1124:	7a52                	ld	s4,304(sp)
    1126:	7ab2                	ld	s5,296(sp)
    1128:	7b12                	ld	s6,288(sp)
    112a:	6bf2                	ld	s7,280(sp)
    112c:	6135                	addi	sp,sp,352
    112e:	8082                	ret

0000000000001130 <putc>:
    1130:	1101                	addi	sp,sp,-32
    1132:	ec06                	sd	ra,24(sp)
    1134:	00b107a3          	sb	a1,15(sp)
    1138:	4605                	li	a2,1
    113a:	00f10593          	addi	a1,sp,15
    113e:	00001097          	auipc	ra,0x1
    1142:	b90080e7          	jalr	-1136(ra) # 1cce <write>
    1146:	60e2                	ld	ra,24(sp)
    1148:	6105                	addi	sp,sp,32
    114a:	8082                	ret

000000000000114c <printint>:
    114c:	7179                	addi	sp,sp,-48
    114e:	f406                	sd	ra,40(sp)
    1150:	f022                	sd	s0,32(sp)
    1152:	ec26                	sd	s1,24(sp)
    1154:	e84a                	sd	s2,16(sp)
    1156:	84aa                	mv	s1,a0
    1158:	c299                	beqz	a3,115e <printint+0x12>
    115a:	0805c363          	bltz	a1,11e0 <printint+0x94>
    115e:	2581                	sext.w	a1,a1
    1160:	4881                	li	a7,0
    1162:	868a                	mv	a3,sp
    1164:	4701                	li	a4,0
    1166:	2601                	sext.w	a2,a2
    1168:	00002537          	lui	a0,0x2
    116c:	d7050513          	addi	a0,a0,-656 # 1d70 <digits>
    1170:	883a                	mv	a6,a4
    1172:	2705                	addiw	a4,a4,1
    1174:	02c5f7bb          	remuw	a5,a1,a2
    1178:	1782                	slli	a5,a5,0x20
    117a:	9381                	srli	a5,a5,0x20
    117c:	97aa                	add	a5,a5,a0
    117e:	0007c783          	lbu	a5,0(a5)
    1182:	00f68023          	sb	a5,0(a3)
    1186:	0005879b          	sext.w	a5,a1
    118a:	02c5d5bb          	divuw	a1,a1,a2
    118e:	0685                	addi	a3,a3,1
    1190:	fec7f0e3          	bgeu	a5,a2,1170 <printint+0x24>
    1194:	00088a63          	beqz	a7,11a8 <printint+0x5c>
    1198:	081c                	addi	a5,sp,16
    119a:	973e                	add	a4,a4,a5
    119c:	02d00793          	li	a5,45
    11a0:	fef70823          	sb	a5,-16(a4)
    11a4:	0028071b          	addiw	a4,a6,2
    11a8:	02e05663          	blez	a4,11d4 <printint+0x88>
    11ac:	00e10433          	add	s0,sp,a4
    11b0:	fff10913          	addi	s2,sp,-1
    11b4:	993a                	add	s2,s2,a4
    11b6:	377d                	addiw	a4,a4,-1
    11b8:	1702                	slli	a4,a4,0x20
    11ba:	9301                	srli	a4,a4,0x20
    11bc:	40e90933          	sub	s2,s2,a4
    11c0:	fff44583          	lbu	a1,-1(s0)
    11c4:	8526                	mv	a0,s1
    11c6:	00000097          	auipc	ra,0x0
    11ca:	f6a080e7          	jalr	-150(ra) # 1130 <putc>
    11ce:	147d                	addi	s0,s0,-1
    11d0:	ff2418e3          	bne	s0,s2,11c0 <printint+0x74>
    11d4:	70a2                	ld	ra,40(sp)
    11d6:	7402                	ld	s0,32(sp)
    11d8:	64e2                	ld	s1,24(sp)
    11da:	6942                	ld	s2,16(sp)
    11dc:	6145                	addi	sp,sp,48
    11de:	8082                	ret
    11e0:	40b005bb          	negw	a1,a1
    11e4:	4885                	li	a7,1
    11e6:	bfb5                	j	1162 <printint+0x16>

00000000000011e8 <vprintf>:
    11e8:	7159                	addi	sp,sp,-112
    11ea:	f486                	sd	ra,104(sp)
    11ec:	f0a2                	sd	s0,96(sp)
    11ee:	eca6                	sd	s1,88(sp)
    11f0:	e8ca                	sd	s2,80(sp)
    11f2:	e4ce                	sd	s3,72(sp)
    11f4:	e0d2                	sd	s4,64(sp)
    11f6:	fc56                	sd	s5,56(sp)
    11f8:	f85a                	sd	s6,48(sp)
    11fa:	f45e                	sd	s7,40(sp)
    11fc:	f062                	sd	s8,32(sp)
    11fe:	ec66                	sd	s9,24(sp)
    1200:	e86a                	sd	s10,16(sp)
    1202:	e46e                	sd	s11,8(sp)
    1204:	0005c483          	lbu	s1,0(a1)
    1208:	18048a63          	beqz	s1,139c <vprintf+0x1b4>
    120c:	8a2a                	mv	s4,a0
    120e:	8ab2                	mv	s5,a2
    1210:	00158413          	addi	s0,a1,1
    1214:	4901                	li	s2,0
    1216:	02500993          	li	s3,37
    121a:	06400b93          	li	s7,100
    121e:	06c00c13          	li	s8,108
    1222:	07800c93          	li	s9,120
    1226:	07000d13          	li	s10,112
    122a:	00002db7          	lui	s11,0x2
    122e:	00002b37          	lui	s6,0x2
    1232:	d70b0b13          	addi	s6,s6,-656 # 1d70 <digits>
    1236:	a839                	j	1254 <vprintf+0x6c>
    1238:	85a6                	mv	a1,s1
    123a:	8552                	mv	a0,s4
    123c:	00000097          	auipc	ra,0x0
    1240:	ef4080e7          	jalr	-268(ra) # 1130 <putc>
    1244:	a019                	j	124a <vprintf+0x62>
    1246:	01390f63          	beq	s2,s3,1264 <vprintf+0x7c>
    124a:	0405                	addi	s0,s0,1
    124c:	fff44483          	lbu	s1,-1(s0)
    1250:	14048663          	beqz	s1,139c <vprintf+0x1b4>
    1254:	0004879b          	sext.w	a5,s1
    1258:	fe0917e3          	bnez	s2,1246 <vprintf+0x5e>
    125c:	fd379ee3          	bne	a5,s3,1238 <vprintf+0x50>
    1260:	893e                	mv	s2,a5
    1262:	b7e5                	j	124a <vprintf+0x62>
    1264:	05778063          	beq	a5,s7,12a4 <vprintf+0xbc>
    1268:	05878c63          	beq	a5,s8,12c0 <vprintf+0xd8>
    126c:	07978863          	beq	a5,s9,12dc <vprintf+0xf4>
    1270:	09a78463          	beq	a5,s10,12f8 <vprintf+0x110>
    1274:	07300713          	li	a4,115
    1278:	0ce78263          	beq	a5,a4,133c <vprintf+0x154>
    127c:	06300713          	li	a4,99
    1280:	0ee78763          	beq	a5,a4,136e <vprintf+0x186>
    1284:	11378163          	beq	a5,s3,1386 <vprintf+0x19e>
    1288:	85ce                	mv	a1,s3
    128a:	8552                	mv	a0,s4
    128c:	00000097          	auipc	ra,0x0
    1290:	ea4080e7          	jalr	-348(ra) # 1130 <putc>
    1294:	85a6                	mv	a1,s1
    1296:	8552                	mv	a0,s4
    1298:	00000097          	auipc	ra,0x0
    129c:	e98080e7          	jalr	-360(ra) # 1130 <putc>
    12a0:	4901                	li	s2,0
    12a2:	b765                	j	124a <vprintf+0x62>
    12a4:	008a8493          	addi	s1,s5,8
    12a8:	4685                	li	a3,1
    12aa:	4629                	li	a2,10
    12ac:	000aa583          	lw	a1,0(s5)
    12b0:	8552                	mv	a0,s4
    12b2:	00000097          	auipc	ra,0x0
    12b6:	e9a080e7          	jalr	-358(ra) # 114c <printint>
    12ba:	8aa6                	mv	s5,s1
    12bc:	4901                	li	s2,0
    12be:	b771                	j	124a <vprintf+0x62>
    12c0:	008a8493          	addi	s1,s5,8
    12c4:	4681                	li	a3,0
    12c6:	4629                	li	a2,10
    12c8:	000aa583          	lw	a1,0(s5)
    12cc:	8552                	mv	a0,s4
    12ce:	00000097          	auipc	ra,0x0
    12d2:	e7e080e7          	jalr	-386(ra) # 114c <printint>
    12d6:	8aa6                	mv	s5,s1
    12d8:	4901                	li	s2,0
    12da:	bf85                	j	124a <vprintf+0x62>
    12dc:	008a8493          	addi	s1,s5,8
    12e0:	4681                	li	a3,0
    12e2:	4641                	li	a2,16
    12e4:	000aa583          	lw	a1,0(s5)
    12e8:	8552                	mv	a0,s4
    12ea:	00000097          	auipc	ra,0x0
    12ee:	e62080e7          	jalr	-414(ra) # 114c <printint>
    12f2:	8aa6                	mv	s5,s1
    12f4:	4901                	li	s2,0
    12f6:	bf91                	j	124a <vprintf+0x62>
    12f8:	008a8913          	addi	s2,s5,8
    12fc:	000aba83          	ld	s5,0(s5)
    1300:	03000593          	li	a1,48
    1304:	8552                	mv	a0,s4
    1306:	00000097          	auipc	ra,0x0
    130a:	e2a080e7          	jalr	-470(ra) # 1130 <putc>
    130e:	85e6                	mv	a1,s9
    1310:	8552                	mv	a0,s4
    1312:	00000097          	auipc	ra,0x0
    1316:	e1e080e7          	jalr	-482(ra) # 1130 <putc>
    131a:	44c1                	li	s1,16
    131c:	03cad793          	srli	a5,s5,0x3c
    1320:	97da                	add	a5,a5,s6
    1322:	0007c583          	lbu	a1,0(a5)
    1326:	8552                	mv	a0,s4
    1328:	00000097          	auipc	ra,0x0
    132c:	e08080e7          	jalr	-504(ra) # 1130 <putc>
    1330:	0a92                	slli	s5,s5,0x4
    1332:	34fd                	addiw	s1,s1,-1
    1334:	f4e5                	bnez	s1,131c <vprintf+0x134>
    1336:	8aca                	mv	s5,s2
    1338:	4901                	li	s2,0
    133a:	bf01                	j	124a <vprintf+0x62>
    133c:	008a8913          	addi	s2,s5,8
    1340:	000ab483          	ld	s1,0(s5)
    1344:	c085                	beqz	s1,1364 <vprintf+0x17c>
    1346:	0004c583          	lbu	a1,0(s1) # 200000 <buf+0x1fcff0>
    134a:	c5b1                	beqz	a1,1396 <vprintf+0x1ae>
    134c:	8552                	mv	a0,s4
    134e:	00000097          	auipc	ra,0x0
    1352:	de2080e7          	jalr	-542(ra) # 1130 <putc>
    1356:	0485                	addi	s1,s1,1
    1358:	0004c583          	lbu	a1,0(s1)
    135c:	f9e5                	bnez	a1,134c <vprintf+0x164>
    135e:	8aca                	mv	s5,s2
    1360:	4901                	li	s2,0
    1362:	b5e5                	j	124a <vprintf+0x62>
    1364:	d68d8493          	addi	s1,s11,-664 # 1d68 <mkdir+0x5a>
    1368:	02800593          	li	a1,40
    136c:	b7c5                	j	134c <vprintf+0x164>
    136e:	008a8493          	addi	s1,s5,8
    1372:	000ac583          	lbu	a1,0(s5)
    1376:	8552                	mv	a0,s4
    1378:	00000097          	auipc	ra,0x0
    137c:	db8080e7          	jalr	-584(ra) # 1130 <putc>
    1380:	8aa6                	mv	s5,s1
    1382:	4901                	li	s2,0
    1384:	b5d9                	j	124a <vprintf+0x62>
    1386:	85ce                	mv	a1,s3
    1388:	8552                	mv	a0,s4
    138a:	00000097          	auipc	ra,0x0
    138e:	da6080e7          	jalr	-602(ra) # 1130 <putc>
    1392:	4901                	li	s2,0
    1394:	bd5d                	j	124a <vprintf+0x62>
    1396:	8aca                	mv	s5,s2
    1398:	4901                	li	s2,0
    139a:	bd45                	j	124a <vprintf+0x62>
    139c:	70a6                	ld	ra,104(sp)
    139e:	7406                	ld	s0,96(sp)
    13a0:	64e6                	ld	s1,88(sp)
    13a2:	6946                	ld	s2,80(sp)
    13a4:	69a6                	ld	s3,72(sp)
    13a6:	6a06                	ld	s4,64(sp)
    13a8:	7ae2                	ld	s5,56(sp)
    13aa:	7b42                	ld	s6,48(sp)
    13ac:	7ba2                	ld	s7,40(sp)
    13ae:	7c02                	ld	s8,32(sp)
    13b0:	6ce2                	ld	s9,24(sp)
    13b2:	6d42                	ld	s10,16(sp)
    13b4:	6da2                	ld	s11,8(sp)
    13b6:	6165                	addi	sp,sp,112
    13b8:	8082                	ret

00000000000013ba <fprintf>:
    13ba:	715d                	addi	sp,sp,-80
    13bc:	ec06                	sd	ra,24(sp)
    13be:	f032                	sd	a2,32(sp)
    13c0:	f436                	sd	a3,40(sp)
    13c2:	f83a                	sd	a4,48(sp)
    13c4:	fc3e                	sd	a5,56(sp)
    13c6:	e0c2                	sd	a6,64(sp)
    13c8:	e4c6                	sd	a7,72(sp)
    13ca:	1010                	addi	a2,sp,32
    13cc:	e432                	sd	a2,8(sp)
    13ce:	00000097          	auipc	ra,0x0
    13d2:	e1a080e7          	jalr	-486(ra) # 11e8 <vprintf>
    13d6:	60e2                	ld	ra,24(sp)
    13d8:	6161                	addi	sp,sp,80
    13da:	8082                	ret

00000000000013dc <printf>:
    13dc:	711d                	addi	sp,sp,-96
    13de:	ec06                	sd	ra,24(sp)
    13e0:	f42e                	sd	a1,40(sp)
    13e2:	f832                	sd	a2,48(sp)
    13e4:	fc36                	sd	a3,56(sp)
    13e6:	e0ba                	sd	a4,64(sp)
    13e8:	e4be                	sd	a5,72(sp)
    13ea:	e8c2                	sd	a6,80(sp)
    13ec:	ecc6                	sd	a7,88(sp)
    13ee:	1030                	addi	a2,sp,40
    13f0:	e432                	sd	a2,8(sp)
    13f2:	85aa                	mv	a1,a0
    13f4:	4505                	li	a0,1
    13f6:	00000097          	auipc	ra,0x0
    13fa:	df2080e7          	jalr	-526(ra) # 11e8 <vprintf>
    13fe:	60e2                	ld	ra,24(sp)
    1400:	6125                	addi	sp,sp,96
    1402:	8082                	ret

0000000000001404 <cksum>:
    1404:	cdb1                	beqz	a1,1460 <cksum+0x5c>
    1406:	00b50833          	add	a6,a0,a1
    140a:	4781                	li	a5,0
    140c:	00002637          	lui	a2,0x2
    1410:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    1414:	0505                	addi	a0,a0,1
    1416:	0087969b          	slliw	a3,a5,0x8
    141a:	0187d71b          	srliw	a4,a5,0x18
    141e:	fff54783          	lbu	a5,-1(a0)
    1422:	8f3d                	xor	a4,a4,a5
    1424:	1702                	slli	a4,a4,0x20
    1426:	9301                	srli	a4,a4,0x20
    1428:	070a                	slli	a4,a4,0x2
    142a:	9732                	add	a4,a4,a2
    142c:	431c                	lw	a5,0(a4)
    142e:	8fb5                	xor	a5,a5,a3
    1430:	2781                	sext.w	a5,a5
    1432:	fea811e3          	bne	a6,a0,1414 <cksum+0x10>
    1436:	00002637          	lui	a2,0x2
    143a:	d8860613          	addi	a2,a2,-632 # 1d88 <crctab>
    143e:	0ff5f693          	andi	a3,a1,255
    1442:	81a1                	srli	a1,a1,0x8
    1444:	0087951b          	slliw	a0,a5,0x8
    1448:	0187d71b          	srliw	a4,a5,0x18
    144c:	8f35                	xor	a4,a4,a3
    144e:	070a                	slli	a4,a4,0x2
    1450:	9732                	add	a4,a4,a2
    1452:	431c                	lw	a5,0(a4)
    1454:	8fa9                	xor	a5,a5,a0
    1456:	2781                	sext.w	a5,a5
    1458:	f1fd                	bnez	a1,143e <cksum+0x3a>
    145a:	fff7c513          	not	a0,a5
    145e:	8082                	ret
    1460:	4781                	li	a5,0
    1462:	bfe5                	j	145a <cksum+0x56>

0000000000001464 <swap_bytes>:
    1464:	ce19                	beqz	a2,1482 <swap_bytes+0x1e>
    1466:	87aa                	mv	a5,a0
    1468:	962a                	add	a2,a2,a0
    146a:	0007c703          	lbu	a4,0(a5)
    146e:	0005c683          	lbu	a3,0(a1)
    1472:	00d78023          	sb	a3,0(a5)
    1476:	00e58023          	sb	a4,0(a1)
    147a:	0785                	addi	a5,a5,1
    147c:	0585                	addi	a1,a1,1
    147e:	fec796e3          	bne	a5,a2,146a <swap_bytes+0x6>
    1482:	8082                	ret

0000000000001484 <random_init>:
    1484:	7139                	addi	sp,sp,-64
    1486:	fc06                	sd	ra,56(sp)
    1488:	f822                	sd	s0,48(sp)
    148a:	f426                	sd	s1,40(sp)
    148c:	f04a                	sd	s2,32(sp)
    148e:	ec4e                	sd	s3,24(sp)
    1490:	e852                	sd	s4,16(sp)
    1492:	c62a                	sw	a0,12(sp)
    1494:	000037b7          	lui	a5,0x3
    1498:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    149c:	eca5                	bnez	s1,1514 <random_init+0x90>
    149e:	00203737          	lui	a4,0x203
    14a2:	01070913          	addi	s2,a4,16 # 203010 <s>
    14a6:	01070713          	addi	a4,a4,16
    14aa:	87a6                	mv	a5,s1
    14ac:	10000693          	li	a3,256
    14b0:	00f70023          	sb	a5,0(a4)
    14b4:	2785                	addiw	a5,a5,1
    14b6:	0705                	addi	a4,a4,1
    14b8:	fed79ce3          	bne	a5,a3,14b0 <random_init+0x2c>
    14bc:	4401                	li	s0,0
    14be:	002039b7          	lui	s3,0x203
    14c2:	01098993          	addi	s3,s3,16 # 203010 <s>
    14c6:	10000a13          	li	s4,256
    14ca:	0034f793          	andi	a5,s1,3
    14ce:	0818                	addi	a4,sp,16
    14d0:	97ba                	add	a5,a5,a4
    14d2:	ffc7c783          	lbu	a5,-4(a5)
    14d6:	00094703          	lbu	a4,0(s2)
    14da:	9fb9                	addw	a5,a5,a4
    14dc:	9c3d                	addw	s0,s0,a5
    14de:	0ff47413          	andi	s0,s0,255
    14e2:	4605                	li	a2,1
    14e4:	008985b3          	add	a1,s3,s0
    14e8:	854a                	mv	a0,s2
    14ea:	00000097          	auipc	ra,0x0
    14ee:	f7a080e7          	jalr	-134(ra) # 1464 <swap_bytes>
    14f2:	2485                	addiw	s1,s1,1
    14f4:	0905                	addi	s2,s2,1
    14f6:	fd449ae3          	bne	s1,s4,14ca <random_init+0x46>
    14fa:	000037b7          	lui	a5,0x3
    14fe:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1502:	000037b7          	lui	a5,0x3
    1506:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    150a:	000037b7          	lui	a5,0x3
    150e:	4705                	li	a4,1
    1510:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1514:	70e2                	ld	ra,56(sp)
    1516:	7442                	ld	s0,48(sp)
    1518:	74a2                	ld	s1,40(sp)
    151a:	7902                	ld	s2,32(sp)
    151c:	69e2                	ld	s3,24(sp)
    151e:	6a42                	ld	s4,16(sp)
    1520:	6121                	addi	sp,sp,64
    1522:	8082                	ret

0000000000001524 <random_bytes>:
    1524:	7139                	addi	sp,sp,-64
    1526:	fc06                	sd	ra,56(sp)
    1528:	f822                	sd	s0,48(sp)
    152a:	f426                	sd	s1,40(sp)
    152c:	f04a                	sd	s2,32(sp)
    152e:	ec4e                	sd	s3,24(sp)
    1530:	e852                	sd	s4,16(sp)
    1532:	e456                	sd	s5,8(sp)
    1534:	e05a                	sd	s6,0(sp)
    1536:	892a                	mv	s2,a0
    1538:	8aae                	mv	s5,a1
    153a:	000037b7          	lui	a5,0x3
    153e:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1542:	c3c1                	beqz	a5,15c2 <random_bytes+0x9e>
    1544:	060a8563          	beqz	s5,15ae <random_bytes+0x8a>
    1548:	9aca                	add	s5,s5,s2
    154a:	00003a37          	lui	s4,0x3
    154e:	002034b7          	lui	s1,0x203
    1552:	01048493          	addi	s1,s1,16 # 203010 <s>
    1556:	000039b7          	lui	s3,0x3
    155a:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    155e:	2505                	addiw	a0,a0,1
    1560:	0ff57513          	andi	a0,a0,255
    1564:	00aa02a3          	sb	a0,5(s4)
    1568:	00a48b33          	add	s6,s1,a0
    156c:	000b4403          	lbu	s0,0(s6)
    1570:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1574:	9c3d                	addw	s0,s0,a5
    1576:	0ff47413          	andi	s0,s0,255
    157a:	00898223          	sb	s0,4(s3)
    157e:	4605                	li	a2,1
    1580:	008485b3          	add	a1,s1,s0
    1584:	855a                	mv	a0,s6
    1586:	00000097          	auipc	ra,0x0
    158a:	ede080e7          	jalr	-290(ra) # 1464 <swap_bytes>
    158e:	9426                	add	s0,s0,s1
    1590:	000b4783          	lbu	a5,0(s6)
    1594:	00044703          	lbu	a4,0(s0)
    1598:	9fb9                	addw	a5,a5,a4
    159a:	0ff7f793          	andi	a5,a5,255
    159e:	97a6                	add	a5,a5,s1
    15a0:	0007c783          	lbu	a5,0(a5)
    15a4:	00f90023          	sb	a5,0(s2)
    15a8:	0905                	addi	s2,s2,1
    15aa:	fb2a98e3          	bne	s5,s2,155a <random_bytes+0x36>
    15ae:	70e2                	ld	ra,56(sp)
    15b0:	7442                	ld	s0,48(sp)
    15b2:	74a2                	ld	s1,40(sp)
    15b4:	7902                	ld	s2,32(sp)
    15b6:	69e2                	ld	s3,24(sp)
    15b8:	6a42                	ld	s4,16(sp)
    15ba:	6aa2                	ld	s5,8(sp)
    15bc:	6b02                	ld	s6,0(sp)
    15be:	6121                	addi	sp,sp,64
    15c0:	8082                	ret
    15c2:	4501                	li	a0,0
    15c4:	00000097          	auipc	ra,0x0
    15c8:	ec0080e7          	jalr	-320(ra) # 1484 <random_init>
    15cc:	bfa5                	j	1544 <random_bytes+0x20>

00000000000015ce <random_ulong>:
    15ce:	1101                	addi	sp,sp,-32
    15d0:	ec06                	sd	ra,24(sp)
    15d2:	45a1                	li	a1,8
    15d4:	0028                	addi	a0,sp,8
    15d6:	00000097          	auipc	ra,0x0
    15da:	f4e080e7          	jalr	-178(ra) # 1524 <random_bytes>
    15de:	6522                	ld	a0,8(sp)
    15e0:	60e2                	ld	ra,24(sp)
    15e2:	6105                	addi	sp,sp,32
    15e4:	8082                	ret

00000000000015e6 <shuffle>:
    15e6:	c9b9                	beqz	a1,163c <shuffle+0x56>
    15e8:	7179                	addi	sp,sp,-48
    15ea:	f406                	sd	ra,40(sp)
    15ec:	f022                	sd	s0,32(sp)
    15ee:	ec26                	sd	s1,24(sp)
    15f0:	e84a                	sd	s2,16(sp)
    15f2:	e44e                	sd	s3,8(sp)
    15f4:	e052                	sd	s4,0(sp)
    15f6:	8a2a                	mv	s4,a0
    15f8:	89ae                	mv	s3,a1
    15fa:	84b2                	mv	s1,a2
    15fc:	892a                	mv	s2,a0
    15fe:	4401                	li	s0,0
    1600:	00000097          	auipc	ra,0x0
    1604:	fce080e7          	jalr	-50(ra) # 15ce <random_ulong>
    1608:	408985b3          	sub	a1,s3,s0
    160c:	02b575b3          	remu	a1,a0,a1
    1610:	95a2                	add	a1,a1,s0
    1612:	029585b3          	mul	a1,a1,s1
    1616:	8626                	mv	a2,s1
    1618:	95d2                	add	a1,a1,s4
    161a:	854a                	mv	a0,s2
    161c:	00000097          	auipc	ra,0x0
    1620:	e48080e7          	jalr	-440(ra) # 1464 <swap_bytes>
    1624:	0405                	addi	s0,s0,1
    1626:	9926                	add	s2,s2,s1
    1628:	fc899ce3          	bne	s3,s0,1600 <shuffle+0x1a>
    162c:	70a2                	ld	ra,40(sp)
    162e:	7402                	ld	s0,32(sp)
    1630:	64e2                	ld	s1,24(sp)
    1632:	6942                	ld	s2,16(sp)
    1634:	69a2                	ld	s3,8(sp)
    1636:	6a02                	ld	s4,0(sp)
    1638:	6145                	addi	sp,sp,48
    163a:	8082                	ret
    163c:	8082                	ret

000000000000163e <arc4_init>:
    163e:	100500a3          	sb	zero,257(a0)
    1642:	10050023          	sb	zero,256(a0)
    1646:	4781                	li	a5,0
    1648:	10000693          	li	a3,256
    164c:	00f50733          	add	a4,a0,a5
    1650:	00f70023          	sb	a5,0(a4)
    1654:	0785                	addi	a5,a5,1
    1656:	fed79be3          	bne	a5,a3,164c <arc4_init+0xe>
    165a:	86aa                	mv	a3,a0
    165c:	10050e13          	addi	t3,a0,256
    1660:	4701                	li	a4,0
    1662:	4781                	li	a5,0
    1664:	0006c883          	lbu	a7,0(a3)
    1668:	00f58833          	add	a6,a1,a5
    166c:	00084803          	lbu	a6,0(a6)
    1670:	00e8873b          	addw	a4,a7,a4
    1674:	00e8073b          	addw	a4,a6,a4
    1678:	0ff77713          	andi	a4,a4,255
    167c:	00e50833          	add	a6,a0,a4
    1680:	00084303          	lbu	t1,0(a6)
    1684:	00668023          	sb	t1,0(a3)
    1688:	01180023          	sb	a7,0(a6)
    168c:	0785                	addi	a5,a5,1
    168e:	00c7b833          	sltu	a6,a5,a2
    1692:	41000833          	neg	a6,a6
    1696:	0107f7b3          	and	a5,a5,a6
    169a:	0685                	addi	a3,a3,1
    169c:	fdc694e3          	bne	a3,t3,1664 <arc4_init+0x26>
    16a0:	8082                	ret

00000000000016a2 <arc4_crypt>:
    16a2:	10054e03          	lbu	t3,256(a0)
    16a6:	10154803          	lbu	a6,257(a0)
    16aa:	fff60e93          	addi	t4,a2,-1
    16ae:	c225                	beqz	a2,170e <arc4_crypt+0x6c>
    16b0:	00c588b3          	add	a7,a1,a2
    16b4:	86ae                	mv	a3,a1
    16b6:	001e031b          	addiw	t1,t3,1
    16ba:	40b3033b          	subw	t1,t1,a1
    16be:	00d3073b          	addw	a4,t1,a3
    16c2:	0ff77713          	andi	a4,a4,255
    16c6:	972a                	add	a4,a4,a0
    16c8:	00074603          	lbu	a2,0(a4)
    16cc:	0106083b          	addw	a6,a2,a6
    16d0:	0ff87813          	andi	a6,a6,255
    16d4:	010507b3          	add	a5,a0,a6
    16d8:	0007c583          	lbu	a1,0(a5)
    16dc:	00b70023          	sb	a1,0(a4)
    16e0:	00c78023          	sb	a2,0(a5)
    16e4:	0685                	addi	a3,a3,1
    16e6:	00074783          	lbu	a5,0(a4)
    16ea:	9fb1                	addw	a5,a5,a2
    16ec:	0ff7f793          	andi	a5,a5,255
    16f0:	97aa                	add	a5,a5,a0
    16f2:	0007c783          	lbu	a5,0(a5)
    16f6:	fff6c703          	lbu	a4,-1(a3)
    16fa:	8fb9                	xor	a5,a5,a4
    16fc:	fef68fa3          	sb	a5,-1(a3)
    1700:	fb169fe3          	bne	a3,a7,16be <arc4_crypt+0x1c>
    1704:	2e85                	addiw	t4,t4,1
    1706:	01ce8e3b          	addw	t3,t4,t3
    170a:	0ffe7e13          	andi	t3,t3,255
    170e:	11c50023          	sb	t3,256(a0)
    1712:	110500a3          	sb	a6,257(a0)
    1716:	8082                	ret

0000000000001718 <_main>:
    1718:	1141                	addi	sp,sp,-16
    171a:	e406                	sd	ra,8(sp)
    171c:	00000097          	auipc	ra,0x0
    1720:	8e4080e7          	jalr	-1820(ra) # 1000 <main>
    1724:	4501                	li	a0,0
    1726:	00000097          	auipc	ra,0x0
    172a:	578080e7          	jalr	1400(ra) # 1c9e <exit>
    172e:	60a2                	ld	ra,8(sp)
    1730:	0141                	addi	sp,sp,16
    1732:	8082                	ret

0000000000001734 <strcmp>:
    1734:	00054783          	lbu	a5,0(a0)
    1738:	cb91                	beqz	a5,174c <strcmp+0x18>
    173a:	0005c703          	lbu	a4,0(a1)
    173e:	00f71763          	bne	a4,a5,174c <strcmp+0x18>
    1742:	0505                	addi	a0,a0,1
    1744:	0585                	addi	a1,a1,1
    1746:	00054783          	lbu	a5,0(a0)
    174a:	fbe5                	bnez	a5,173a <strcmp+0x6>
    174c:	0005c503          	lbu	a0,0(a1)
    1750:	40a7853b          	subw	a0,a5,a0
    1754:	8082                	ret

0000000000001756 <strcpy>:
    1756:	87aa                	mv	a5,a0
    1758:	0585                	addi	a1,a1,1
    175a:	0785                	addi	a5,a5,1
    175c:	fff5c703          	lbu	a4,-1(a1)
    1760:	fee78fa3          	sb	a4,-1(a5)
    1764:	fb75                	bnez	a4,1758 <strcpy+0x2>
    1766:	8082                	ret

0000000000001768 <strlen>:
    1768:	00054783          	lbu	a5,0(a0)
    176c:	cf81                	beqz	a5,1784 <strlen+0x1c>
    176e:	0505                	addi	a0,a0,1
    1770:	87aa                	mv	a5,a0
    1772:	4685                	li	a3,1
    1774:	9e89                	subw	a3,a3,a0
    1776:	00f6853b          	addw	a0,a3,a5
    177a:	0785                	addi	a5,a5,1
    177c:	fff7c703          	lbu	a4,-1(a5)
    1780:	fb7d                	bnez	a4,1776 <strlen+0xe>
    1782:	8082                	ret
    1784:	4501                	li	a0,0
    1786:	8082                	ret

0000000000001788 <memset>:
    1788:	ca19                	beqz	a2,179e <memset+0x16>
    178a:	87aa                	mv	a5,a0
    178c:	1602                	slli	a2,a2,0x20
    178e:	9201                	srli	a2,a2,0x20
    1790:	00a60733          	add	a4,a2,a0
    1794:	00b78023          	sb	a1,0(a5)
    1798:	0785                	addi	a5,a5,1
    179a:	fee79de3          	bne	a5,a4,1794 <memset+0xc>
    179e:	8082                	ret

00000000000017a0 <memcmp>:
    17a0:	1101                	addi	sp,sp,-32
    17a2:	ec06                	sd	ra,24(sp)
    17a4:	e822                	sd	s0,16(sp)
    17a6:	e426                	sd	s1,8(sp)
    17a8:	e04a                	sd	s2,0(sp)
    17aa:	892a                	mv	s2,a0
    17ac:	842e                	mv	s0,a1
    17ae:	84b2                	mv	s1,a2
    17b0:	c915                	beqz	a0,17e4 <memcmp+0x44>
    17b2:	c5ad                	beqz	a1,181c <memcmp+0x7c>
    17b4:	fff60713          	addi	a4,a2,-1
    17b8:	c645                	beqz	a2,1860 <memcmp+0xc0>
    17ba:	87ca                	mv	a5,s2
    17bc:	00190613          	addi	a2,s2,1
    17c0:	963a                	add	a2,a2,a4
    17c2:	0007c683          	lbu	a3,0(a5)
    17c6:	00044703          	lbu	a4,0(s0)
    17ca:	08e69463          	bne	a3,a4,1852 <memcmp+0xb2>
    17ce:	0785                	addi	a5,a5,1
    17d0:	0405                	addi	s0,s0,1
    17d2:	fec798e3          	bne	a5,a2,17c2 <memcmp+0x22>
    17d6:	4501                	li	a0,0
    17d8:	60e2                	ld	ra,24(sp)
    17da:	6442                	ld	s0,16(sp)
    17dc:	64a2                	ld	s1,8(sp)
    17de:	6902                	ld	s2,0(sp)
    17e0:	6105                	addi	sp,sp,32
    17e2:	8082                	ret
    17e4:	4501                	li	a0,0
    17e6:	da6d                	beqz	a2,17d8 <memcmp+0x38>
    17e8:	03200693          	li	a3,50
    17ec:	00002637          	lui	a2,0x2
    17f0:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    17f4:	000025b7          	lui	a1,0x2
    17f8:	19858593          	addi	a1,a1,408 # 2198 <crctab+0x410>
    17fc:	4509                	li	a0,2
    17fe:	00000097          	auipc	ra,0x0
    1802:	bbc080e7          	jalr	-1092(ra) # 13ba <fprintf>
    1806:	650d                	lui	a0,0x3
    1808:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    180c:	00000097          	auipc	ra,0x0
    1810:	492080e7          	jalr	1170(ra) # 1c9e <exit>
    1814:	fff48713          	addi	a4,s1,-1
    1818:	f04d                	bnez	s0,17ba <memcmp+0x1a>
    181a:	a011                	j	181e <memcmp+0x7e>
    181c:	c221                	beqz	a2,185c <memcmp+0xbc>
    181e:	03300693          	li	a3,51
    1822:	00002637          	lui	a2,0x2
    1826:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    182a:	000025b7          	lui	a1,0x2
    182e:	1e058593          	addi	a1,a1,480 # 21e0 <crctab+0x458>
    1832:	4509                	li	a0,2
    1834:	00000097          	auipc	ra,0x0
    1838:	b86080e7          	jalr	-1146(ra) # 13ba <fprintf>
    183c:	650d                	lui	a0,0x3
    183e:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    1842:	00000097          	auipc	ra,0x0
    1846:	45c080e7          	jalr	1116(ra) # 1c9e <exit>
    184a:	fff48713          	addi	a4,s1,-1
    184e:	4401                	li	s0,0
    1850:	b7ad                	j	17ba <memcmp+0x1a>
    1852:	4505                	li	a0,1
    1854:	f8d762e3          	bltu	a4,a3,17d8 <memcmp+0x38>
    1858:	557d                	li	a0,-1
    185a:	bfbd                	j	17d8 <memcmp+0x38>
    185c:	4501                	li	a0,0
    185e:	bfad                	j	17d8 <memcmp+0x38>
    1860:	4501                	li	a0,0
    1862:	bf9d                	j	17d8 <memcmp+0x38>

0000000000001864 <memcpy>:
    1864:	1101                	addi	sp,sp,-32
    1866:	ec06                	sd	ra,24(sp)
    1868:	e822                	sd	s0,16(sp)
    186a:	e426                	sd	s1,8(sp)
    186c:	e04a                	sd	s2,0(sp)
    186e:	84aa                	mv	s1,a0
    1870:	842e                	mv	s0,a1
    1872:	8932                	mv	s2,a2
    1874:	c51d                	beqz	a0,18a2 <memcpy+0x3e>
    1876:	c1ad                	beqz	a1,18d8 <memcpy+0x74>
    1878:	fff60693          	addi	a3,a2,-1
    187c:	ce01                	beqz	a2,1894 <memcpy+0x30>
    187e:	0685                	addi	a3,a3,1
    1880:	96a6                	add	a3,a3,s1
    1882:	87a6                	mv	a5,s1
    1884:	0405                	addi	s0,s0,1
    1886:	0785                	addi	a5,a5,1
    1888:	fff44703          	lbu	a4,-1(s0)
    188c:	fee78fa3          	sb	a4,-1(a5)
    1890:	fed79ae3          	bne	a5,a3,1884 <memcpy+0x20>
    1894:	8526                	mv	a0,s1
    1896:	60e2                	ld	ra,24(sp)
    1898:	6442                	ld	s0,16(sp)
    189a:	64a2                	ld	s1,8(sp)
    189c:	6902                	ld	s2,0(sp)
    189e:	6105                	addi	sp,sp,32
    18a0:	8082                	ret
    18a2:	da6d                	beqz	a2,1894 <memcpy+0x30>
    18a4:	04000693          	li	a3,64
    18a8:	00002637          	lui	a2,0x2
    18ac:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    18b0:	000025b7          	lui	a1,0x2
    18b4:	22858593          	addi	a1,a1,552 # 2228 <crctab+0x4a0>
    18b8:	4509                	li	a0,2
    18ba:	00000097          	auipc	ra,0x0
    18be:	b00080e7          	jalr	-1280(ra) # 13ba <fprintf>
    18c2:	650d                	lui	a0,0x3
    18c4:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    18c8:	00000097          	auipc	ra,0x0
    18cc:	3d6080e7          	jalr	982(ra) # 1c9e <exit>
    18d0:	fff90693          	addi	a3,s2,-1
    18d4:	f44d                	bnez	s0,187e <memcpy+0x1a>
    18d6:	a011                	j	18da <memcpy+0x76>
    18d8:	de55                	beqz	a2,1894 <memcpy+0x30>
    18da:	04100693          	li	a3,65
    18de:	00002637          	lui	a2,0x2
    18e2:	18860613          	addi	a2,a2,392 # 2188 <crctab+0x400>
    18e6:	000025b7          	lui	a1,0x2
    18ea:	27058593          	addi	a1,a1,624 # 2270 <crctab+0x4e8>
    18ee:	4509                	li	a0,2
    18f0:	00000097          	auipc	ra,0x0
    18f4:	aca080e7          	jalr	-1334(ra) # 13ba <fprintf>
    18f8:	650d                	lui	a0,0x3
    18fa:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    18fe:	00000097          	auipc	ra,0x0
    1902:	3a0080e7          	jalr	928(ra) # 1c9e <exit>
    1906:	fff90693          	addi	a3,s2,-1
    190a:	4401                	li	s0,0
    190c:	bf8d                	j	187e <memcpy+0x1a>

000000000000190e <itoa>:
    190e:	1101                	addi	sp,sp,-32
    1910:	ec06                	sd	ra,24(sp)
    1912:	e822                	sd	s0,16(sp)
    1914:	e426                	sd	s1,8(sp)
    1916:	842a                	mv	s0,a0
    1918:	41f5d71b          	sraiw	a4,a1,0x1f
    191c:	00e5c7b3          	xor	a5,a1,a4
    1920:	9f99                	subw	a5,a5,a4
    1922:	84aa                	mv	s1,a0
    1924:	862a                	mv	a2,a0
    1926:	4681                	li	a3,0
    1928:	4529                	li	a0,10
    192a:	4825                	li	a6,9
    192c:	88b6                	mv	a7,a3
    192e:	2685                	addiw	a3,a3,1
    1930:	02a7e73b          	remw	a4,a5,a0
    1934:	0307071b          	addiw	a4,a4,48
    1938:	00e60023          	sb	a4,0(a2)
    193c:	873e                	mv	a4,a5
    193e:	02a7c7bb          	divw	a5,a5,a0
    1942:	0605                	addi	a2,a2,1
    1944:	fee844e3          	blt	a6,a4,192c <itoa+0x1e>
    1948:	0405c863          	bltz	a1,1998 <itoa+0x8a>
    194c:	96a2                	add	a3,a3,s0
    194e:	00068023          	sb	zero,0(a3)
    1952:	8522                	mv	a0,s0
    1954:	00000097          	auipc	ra,0x0
    1958:	e14080e7          	jalr	-492(ra) # 1768 <strlen>
    195c:	fff5071b          	addiw	a4,a0,-1
    1960:	02e05763          	blez	a4,198e <itoa+0x80>
    1964:	9722                	add	a4,a4,s0
    1966:	4681                	li	a3,0
    1968:	0004c783          	lbu	a5,0(s1)
    196c:	00074603          	lbu	a2,0(a4)
    1970:	00c48023          	sb	a2,0(s1)
    1974:	00f70023          	sb	a5,0(a4)
    1978:	0016879b          	addiw	a5,a3,1
    197c:	0007869b          	sext.w	a3,a5
    1980:	0485                	addi	s1,s1,1
    1982:	177d                	addi	a4,a4,-1
    1984:	fff7c793          	not	a5,a5
    1988:	9fa9                	addw	a5,a5,a0
    198a:	fcf6cfe3          	blt	a3,a5,1968 <itoa+0x5a>
    198e:	60e2                	ld	ra,24(sp)
    1990:	6442                	ld	s0,16(sp)
    1992:	64a2                	ld	s1,8(sp)
    1994:	6105                	addi	sp,sp,32
    1996:	8082                	ret
    1998:	96a2                	add	a3,a3,s0
    199a:	02d00793          	li	a5,45
    199e:	00f68023          	sb	a5,0(a3)
    19a2:	0028869b          	addiw	a3,a7,2
    19a6:	b75d                	j	194c <itoa+0x3e>

00000000000019a8 <atoi>:
    19a8:	00054783          	lbu	a5,0(a0)
    19ac:	02000713          	li	a4,32
    19b0:	00e79763          	bne	a5,a4,19be <atoi+0x16>
    19b4:	0505                	addi	a0,a0,1
    19b6:	00054783          	lbu	a5,0(a0)
    19ba:	fee78de3          	beq	a5,a4,19b4 <atoi+0xc>
    19be:	02b00713          	li	a4,43
    19c2:	04e78663          	beq	a5,a4,1a0e <atoi+0x66>
    19c6:	02d00713          	li	a4,45
    19ca:	4805                	li	a6,1
    19cc:	04e78463          	beq	a5,a4,1a14 <atoi+0x6c>
    19d0:	00054683          	lbu	a3,0(a0)
    19d4:	fd06879b          	addiw	a5,a3,-48
    19d8:	0ff7f793          	andi	a5,a5,255
    19dc:	4725                	li	a4,9
    19de:	02f76e63          	bltu	a4,a5,1a1a <atoi+0x72>
    19e2:	4601                	li	a2,0
    19e4:	45a5                	li	a1,9
    19e6:	0505                	addi	a0,a0,1
    19e8:	0026179b          	slliw	a5,a2,0x2
    19ec:	9fb1                	addw	a5,a5,a2
    19ee:	0017979b          	slliw	a5,a5,0x1
    19f2:	9fb5                	addw	a5,a5,a3
    19f4:	fd07861b          	addiw	a2,a5,-48
    19f8:	00054683          	lbu	a3,0(a0)
    19fc:	fd06871b          	addiw	a4,a3,-48
    1a00:	0ff77713          	andi	a4,a4,255
    1a04:	fee5f1e3          	bgeu	a1,a4,19e6 <atoi+0x3e>
    1a08:	02c8053b          	mulw	a0,a6,a2
    1a0c:	8082                	ret
    1a0e:	0505                	addi	a0,a0,1
    1a10:	4805                	li	a6,1
    1a12:	bf7d                	j	19d0 <atoi+0x28>
    1a14:	0505                	addi	a0,a0,1
    1a16:	587d                	li	a6,-1
    1a18:	bf65                	j	19d0 <atoi+0x28>
    1a1a:	4601                	li	a2,0
    1a1c:	b7f5                	j	1a08 <atoi+0x60>

0000000000001a1e <check_file_handle>:
    1a1e:	d8010113          	addi	sp,sp,-640
    1a22:	26113c23          	sd	ra,632(sp)
    1a26:	26813823          	sd	s0,624(sp)
    1a2a:	26913423          	sd	s1,616(sp)
    1a2e:	27213023          	sd	s2,608(sp)
    1a32:	25313c23          	sd	s3,600(sp)
    1a36:	25413823          	sd	s4,592(sp)
    1a3a:	25513423          	sd	s5,584(sp)
    1a3e:	25613023          	sd	s6,576(sp)
    1a42:	23713c23          	sd	s7,568(sp)
    1a46:	23813823          	sd	s8,560(sp)
    1a4a:	23913423          	sd	s9,552(sp)
    1a4e:	23a13023          	sd	s10,544(sp)
    1a52:	21b13c23          	sd	s11,536(sp)
    1a56:	8baa                	mv	s7,a0
    1a58:	8a2e                	mv	s4,a1
    1a5a:	8c32                	mv	s8,a2
    1a5c:	89b6                	mv	s3,a3
    1a5e:	040c                	addi	a1,sp,512
    1a60:	00000097          	auipc	ra,0x0
    1a64:	28e080e7          	jalr	654(ra) # 1cee <fstat>
    1a68:	20813603          	ld	a2,520(sp)
    1a6c:	03361163          	bne	a2,s3,1a8e <check_file_handle+0x70>
    1a70:	06098763          	beqz	s3,1ade <check_file_handle+0xc0>
    1a74:	4901                	li	s2,0
    1a76:	20000a93          	li	s5,512
    1a7a:	00002cb7          	lui	s9,0x2
    1a7e:	00002db7          	lui	s11,0x2
    1a82:	6b0d                	lui	s6,0x3
    1a84:	039b0b13          	addi	s6,s6,57 # 3039 <buf+0x29>
    1a88:	00002d37          	lui	s10,0x2
    1a8c:	aa39                	j	1baa <check_file_handle+0x18c>
    1a8e:	86ce                	mv	a3,s3
    1a90:	85d2                	mv	a1,s4
    1a92:	00002537          	lui	a0,0x2
    1a96:	2b850513          	addi	a0,a0,696 # 22b8 <crctab+0x530>
    1a9a:	00000097          	auipc	ra,0x0
    1a9e:	942080e7          	jalr	-1726(ra) # 13dc <printf>
    1aa2:	fc0999e3          	bnez	s3,1a74 <check_file_handle+0x56>
    1aa6:	20813683          	ld	a3,520(sp)
    1aaa:	03368a63          	beq	a3,s3,1ade <check_file_handle+0xc0>
    1aae:	0a600813          	li	a6,166
    1ab2:	000027b7          	lui	a5,0x2
    1ab6:	18878793          	addi	a5,a5,392 # 2188 <crctab+0x400>
    1aba:	874e                	mv	a4,s3
    1abc:	8652                	mv	a2,s4
    1abe:	000025b7          	lui	a1,0x2
    1ac2:	38858593          	addi	a1,a1,904 # 2388 <crctab+0x600>
    1ac6:	4509                	li	a0,2
    1ac8:	00000097          	auipc	ra,0x0
    1acc:	8f2080e7          	jalr	-1806(ra) # 13ba <fprintf>
    1ad0:	650d                	lui	a0,0x3
    1ad2:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    1ad6:	00000097          	auipc	ra,0x0
    1ada:	1c8080e7          	jalr	456(ra) # 1c9e <exit>
    1ade:	85d2                	mv	a1,s4
    1ae0:	00002537          	lui	a0,0x2
    1ae4:	3d050513          	addi	a0,a0,976 # 23d0 <crctab+0x648>
    1ae8:	00000097          	auipc	ra,0x0
    1aec:	8f4080e7          	jalr	-1804(ra) # 13dc <printf>
    1af0:	27813083          	ld	ra,632(sp)
    1af4:	27013403          	ld	s0,624(sp)
    1af8:	26813483          	ld	s1,616(sp)
    1afc:	26013903          	ld	s2,608(sp)
    1b00:	25813983          	ld	s3,600(sp)
    1b04:	25013a03          	ld	s4,592(sp)
    1b08:	24813a83          	ld	s5,584(sp)
    1b0c:	24013b03          	ld	s6,576(sp)
    1b10:	23813b83          	ld	s7,568(sp)
    1b14:	23013c03          	ld	s8,560(sp)
    1b18:	22813c83          	ld	s9,552(sp)
    1b1c:	22013d03          	ld	s10,544(sp)
    1b20:	21813d83          	ld	s11,536(sp)
    1b24:	28010113          	addi	sp,sp,640
    1b28:	8082                	ret
    1b2a:	09d00893          	li	a7,157
    1b2e:	188c8813          	addi	a6,s9,392 # 2188 <crctab+0x400>
    1b32:	87aa                	mv	a5,a0
    1b34:	8752                	mv	a4,s4
    1b36:	86ca                	mv	a3,s2
    1b38:	8622                	mv	a2,s0
    1b3a:	2e8d8593          	addi	a1,s11,744 # 22e8 <crctab+0x560>
    1b3e:	4509                	li	a0,2
    1b40:	00000097          	auipc	ra,0x0
    1b44:	87a080e7          	jalr	-1926(ra) # 13ba <fprintf>
    1b48:	855a                	mv	a0,s6
    1b4a:	00000097          	auipc	ra,0x0
    1b4e:	154080e7          	jalr	340(ra) # 1c9e <exit>
    1b52:	a89d                	j	1bc8 <check_file_handle+0x1aa>
    1b54:	00160593          	addi	a1,a2,1
    1b58:	0285f163          	bgeu	a1,s0,1b7a <check_file_handle+0x15c>
    1b5c:	00c10733          	add	a4,sp,a2
    1b60:	00b487b3          	add	a5,s1,a1
    1b64:	00174683          	lbu	a3,1(a4)
    1b68:	0007c783          	lbu	a5,0(a5)
    1b6c:	00f68763          	beq	a3,a5,1b7a <check_file_handle+0x15c>
    1b70:	0585                	addi	a1,a1,1
    1b72:	0705                	addi	a4,a4,1
    1b74:	feb416e3          	bne	s0,a1,1b60 <check_file_handle+0x142>
    1b78:	85a2                	mv	a1,s0
    1b7a:	08100813          	li	a6,129
    1b7e:	188c8793          	addi	a5,s9,392
    1b82:	8752                	mv	a4,s4
    1b84:	012606b3          	add	a3,a2,s2
    1b88:	40c58633          	sub	a2,a1,a2
    1b8c:	330d0593          	addi	a1,s10,816 # 2330 <crctab+0x5a8>
    1b90:	4509                	li	a0,2
    1b92:	00000097          	auipc	ra,0x0
    1b96:	828080e7          	jalr	-2008(ra) # 13ba <fprintf>
    1b9a:	855a                	mv	a0,s6
    1b9c:	00000097          	auipc	ra,0x0
    1ba0:	102080e7          	jalr	258(ra) # 1c9e <exit>
    1ba4:	9922                	add	s2,s2,s0
    1ba6:	f13970e3          	bgeu	s2,s3,1aa6 <check_file_handle+0x88>
    1baa:	41298433          	sub	s0,s3,s2
    1bae:	008af363          	bgeu	s5,s0,1bb4 <check_file_handle+0x196>
    1bb2:	8456                	mv	s0,s5
    1bb4:	0004061b          	sext.w	a2,s0
    1bb8:	858a                	mv	a1,sp
    1bba:	855e                	mv	a0,s7
    1bbc:	00000097          	auipc	ra,0x0
    1bc0:	10a080e7          	jalr	266(ra) # 1cc6 <read>
    1bc4:	f68513e3          	bne	a0,s0,1b2a <check_file_handle+0x10c>
    1bc8:	012c04b3          	add	s1,s8,s2
    1bcc:	8622                	mv	a2,s0
    1bce:	85a6                	mv	a1,s1
    1bd0:	850a                	mv	a0,sp
    1bd2:	00000097          	auipc	ra,0x0
    1bd6:	bce080e7          	jalr	-1074(ra) # 17a0 <memcmp>
    1bda:	d569                	beqz	a0,1ba4 <check_file_handle+0x186>
    1bdc:	03298163          	beq	s3,s2,1bfe <check_file_handle+0x1e0>
    1be0:	870a                	mv	a4,sp
    1be2:	4601                	li	a2,0
    1be4:	00c487b3          	add	a5,s1,a2
    1be8:	00074683          	lbu	a3,0(a4)
    1bec:	0007c783          	lbu	a5,0(a5)
    1bf0:	f6f692e3          	bne	a3,a5,1b54 <check_file_handle+0x136>
    1bf4:	0605                	addi	a2,a2,1
    1bf6:	0705                	addi	a4,a4,1
    1bf8:	fe8666e3          	bltu	a2,s0,1be4 <check_file_handle+0x1c6>
    1bfc:	bfa1                	j	1b54 <check_file_handle+0x136>
    1bfe:	4601                	li	a2,0
    1c00:	4585                	li	a1,1
    1c02:	bfa5                	j	1b7a <check_file_handle+0x15c>

0000000000001c04 <check_file>:
    1c04:	7179                	addi	sp,sp,-48
    1c06:	f406                	sd	ra,40(sp)
    1c08:	f022                	sd	s0,32(sp)
    1c0a:	ec26                	sd	s1,24(sp)
    1c0c:	e84a                	sd	s2,16(sp)
    1c0e:	e44e                	sd	s3,8(sp)
    1c10:	84aa                	mv	s1,a0
    1c12:	892e                	mv	s2,a1
    1c14:	89b2                	mv	s3,a2
    1c16:	4581                	li	a1,0
    1c18:	00000097          	auipc	ra,0x0
    1c1c:	0a6080e7          	jalr	166(ra) # 1cbe <open>
    1c20:	842a                	mv	s0,a0
    1c22:	4789                	li	a5,2
    1c24:	02a7df63          	bge	a5,a0,1c62 <check_file+0x5e>
    1c28:	86ce                	mv	a3,s3
    1c2a:	864a                	mv	a2,s2
    1c2c:	85a6                	mv	a1,s1
    1c2e:	8522                	mv	a0,s0
    1c30:	00000097          	auipc	ra,0x0
    1c34:	dee080e7          	jalr	-530(ra) # 1a1e <check_file_handle>
    1c38:	85a6                	mv	a1,s1
    1c3a:	00002537          	lui	a0,0x2
    1c3e:	45850513          	addi	a0,a0,1112 # 2458 <crctab+0x6d0>
    1c42:	fffff097          	auipc	ra,0xfffff
    1c46:	79a080e7          	jalr	1946(ra) # 13dc <printf>
    1c4a:	8522                	mv	a0,s0
    1c4c:	00000097          	auipc	ra,0x0
    1c50:	09a080e7          	jalr	154(ra) # 1ce6 <close>
    1c54:	70a2                	ld	ra,40(sp)
    1c56:	7402                	ld	s0,32(sp)
    1c58:	64e2                	ld	s1,24(sp)
    1c5a:	6942                	ld	s2,16(sp)
    1c5c:	69a2                	ld	s3,8(sp)
    1c5e:	6145                	addi	sp,sp,48
    1c60:	8082                	ret
    1c62:	0ae00713          	li	a4,174
    1c66:	000026b7          	lui	a3,0x2
    1c6a:	18868693          	addi	a3,a3,392 # 2188 <crctab+0x400>
    1c6e:	8626                	mv	a2,s1
    1c70:	000025b7          	lui	a1,0x2
    1c74:	3f058593          	addi	a1,a1,1008 # 23f0 <crctab+0x668>
    1c78:	4509                	li	a0,2
    1c7a:	fffff097          	auipc	ra,0xfffff
    1c7e:	740080e7          	jalr	1856(ra) # 13ba <fprintf>
    1c82:	650d                	lui	a0,0x3
    1c84:	03950513          	addi	a0,a0,57 # 3039 <buf+0x29>
    1c88:	00000097          	auipc	ra,0x0
    1c8c:	016080e7          	jalr	22(ra) # 1c9e <exit>
    1c90:	bf61                	j	1c28 <check_file+0x24>

0000000000001c92 <r_sp>:
    1c92:	850a                	mv	a0,sp
    1c94:	8082                	ret

0000000000001c96 <halt>:
    1c96:	4885                	li	a7,1
    1c98:	00000073          	ecall
    1c9c:	8082                	ret

0000000000001c9e <exit>:
    1c9e:	4889                	li	a7,2
    1ca0:	00000073          	ecall
    1ca4:	8082                	ret

0000000000001ca6 <exec>:
    1ca6:	488d                	li	a7,3
    1ca8:	00000073          	ecall
    1cac:	8082                	ret

0000000000001cae <wait>:
    1cae:	4891                	li	a7,4
    1cb0:	00000073          	ecall
    1cb4:	8082                	ret

0000000000001cb6 <remove>:
    1cb6:	4895                	li	a7,5
    1cb8:	00000073          	ecall
    1cbc:	8082                	ret

0000000000001cbe <open>:
    1cbe:	4899                	li	a7,6
    1cc0:	00000073          	ecall
    1cc4:	8082                	ret

0000000000001cc6 <read>:
    1cc6:	489d                	li	a7,7
    1cc8:	00000073          	ecall
    1ccc:	8082                	ret

0000000000001cce <write>:
    1cce:	48a1                	li	a7,8
    1cd0:	00000073          	ecall
    1cd4:	8082                	ret

0000000000001cd6 <seek>:
    1cd6:	48a5                	li	a7,9
    1cd8:	00000073          	ecall
    1cdc:	8082                	ret

0000000000001cde <tell>:
    1cde:	48a9                	li	a7,10
    1ce0:	00000073          	ecall
    1ce4:	8082                	ret

0000000000001ce6 <close>:
    1ce6:	48ad                	li	a7,11
    1ce8:	00000073          	ecall
    1cec:	8082                	ret

0000000000001cee <fstat>:
    1cee:	48b1                	li	a7,12
    1cf0:	00000073          	ecall
    1cf4:	8082                	ret

0000000000001cf6 <mmap>:
    1cf6:	48b5                	li	a7,13
    1cf8:	00000073          	ecall
    1cfc:	8082                	ret

0000000000001cfe <munmap>:
    1cfe:	48b9                	li	a7,14
    1d00:	00000073          	ecall
    1d04:	8082                	ret

0000000000001d06 <chdir>:
    1d06:	48bd                	li	a7,15
    1d08:	00000073          	ecall
    1d0c:	8082                	ret

0000000000001d0e <mkdir>:
    1d0e:	48c1                	li	a7,16
    1d10:	00000073          	ecall
    1d14:	8082                	ret
