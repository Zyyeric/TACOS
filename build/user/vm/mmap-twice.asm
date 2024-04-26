
build/user/vm/mmap-twice:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	7119                	addi	sp,sp,-128
    1002:	fc86                	sd	ra,120(sp)
    1004:	f8a2                	sd	s0,112(sp)
    1006:	f4a6                	sd	s1,104(sp)
    1008:	f0ca                	sd	s2,96(sp)
    100a:	ecce                	sd	s3,88(sp)
    100c:	e8d2                	sd	s4,80(sp)
    100e:	e4d6                	sd	s5,72(sp)
    1010:	e0da                	sd	s6,64(sp)
    1012:	fc5e                	sd	s7,56(sp)
    1014:	f862                	sd	s8,48(sp)
    1016:	f466                	sd	s9,40(sp)
    1018:	f06a                	sd	s10,32(sp)
    101a:	ec6e                	sd	s11,24(sp)
    101c:	100007b7          	lui	a5,0x10000
    1020:	e03e                	sd	a5,0(sp)
    1022:	200007b7          	lui	a5,0x20000
    1026:	e43e                	sd	a5,8(sp)
    1028:	890a                	mv	s2,sp
    102a:	89ca                	mv	s3,s2
    102c:	4481                	li	s1,0
    102e:	00002bb7          	lui	s7,0x2
    1032:	4a09                	li	s4,2
    1034:	00002c37          	lui	s8,0x2
    1038:	00002cb7          	lui	s9,0x2
    103c:	6a8d                	lui	s5,0x3
    103e:	039a8a93          	addi	s5,s5,57 # 3039 <sample+0x39>
    1042:	5b7d                	li	s6,-1
    1044:	00002d37          	lui	s10,0x2
    1048:	4581                	li	a1,0
    104a:	d30b8513          	addi	a0,s7,-720 # 1d30 <mkdir+0x14>
    104e:	00001097          	auipc	ra,0x1
    1052:	c7e080e7          	jalr	-898(ra) # 1ccc <open>
    1056:	842a                	mv	s0,a0
    1058:	06aa5f63          	bge	s4,a0,10d6 <main+0xd6>
    105c:	0009bd83          	ld	s11,0(s3)
    1060:	85ee                	mv	a1,s11
    1062:	8522                	mv	a0,s0
    1064:	00001097          	auipc	ra,0x1
    1068:	ca0080e7          	jalr	-864(ra) # 1d04 <mmap>
    106c:	09650663          	beq	a0,s6,10f8 <main+0xf8>
    1070:	0485                	addi	s1,s1,1
    1072:	09a1                	addi	s3,s3,8
    1074:	fd449ae3          	bne	s1,s4,1048 <main+0x48>
    1078:	4401                	li	s0,0
    107a:	000034b7          	lui	s1,0x3
    107e:	00002b37          	lui	s6,0x2
    1082:	00002ab7          	lui	s5,0x2
    1086:	650d                	lui	a0,0x3
    1088:	03950a13          	addi	s4,a0,57 # 3039 <sample+0x39>
    108c:	00093983          	ld	s3,0(s2)
    1090:	00048513          	mv	a0,s1
    1094:	00000097          	auipc	ra,0x0
    1098:	6e2080e7          	jalr	1762(ra) # 1776 <strlen>
    109c:	862a                	mv	a2,a0
    109e:	00048593          	mv	a1,s1
    10a2:	854e                	mv	a0,s3
    10a4:	00000097          	auipc	ra,0x0
    10a8:	70a080e7          	jalr	1802(ra) # 17ae <memcmp>
    10ac:	e925                	bnez	a0,111c <main+0x11c>
    10ae:	0405                	addi	s0,s0,1
    10b0:	0921                	addi	s2,s2,8
    10b2:	4789                	li	a5,2
    10b4:	fcf41ce3          	bne	s0,a5,108c <main+0x8c>
    10b8:	70e6                	ld	ra,120(sp)
    10ba:	7446                	ld	s0,112(sp)
    10bc:	74a6                	ld	s1,104(sp)
    10be:	7906                	ld	s2,96(sp)
    10c0:	69e6                	ld	s3,88(sp)
    10c2:	6a46                	ld	s4,80(sp)
    10c4:	6aa6                	ld	s5,72(sp)
    10c6:	6b06                	ld	s6,64(sp)
    10c8:	7be2                	ld	s7,56(sp)
    10ca:	7c42                	ld	s8,48(sp)
    10cc:	7ca2                	ld	s9,40(sp)
    10ce:	7d02                	ld	s10,32(sp)
    10d0:	6de2                	ld	s11,24(sp)
    10d2:	6109                	addi	sp,sp,128
    10d4:	8082                	ret
    10d6:	4735                	li	a4,13
    10d8:	d40c0693          	addi	a3,s8,-704 # 1d40 <mkdir+0x24>
    10dc:	8626                	mv	a2,s1
    10de:	d58c8593          	addi	a1,s9,-680 # 1d58 <mkdir+0x3c>
    10e2:	8552                	mv	a0,s4
    10e4:	00000097          	auipc	ra,0x0
    10e8:	2e4080e7          	jalr	740(ra) # 13c8 <fprintf>
    10ec:	8556                	mv	a0,s5
    10ee:	00001097          	auipc	ra,0x1
    10f2:	bbe080e7          	jalr	-1090(ra) # 1cac <exit>
    10f6:	b79d                	j	105c <main+0x5c>
    10f8:	47b9                	li	a5,14
    10fa:	d40c0713          	addi	a4,s8,-704
    10fe:	86ee                	mv	a3,s11
    1100:	8626                	mv	a2,s1
    1102:	dc0d0593          	addi	a1,s10,-576 # 1dc0 <mkdir+0xa4>
    1106:	8552                	mv	a0,s4
    1108:	00000097          	auipc	ra,0x0
    110c:	2c0080e7          	jalr	704(ra) # 13c8 <fprintf>
    1110:	8556                	mv	a0,s5
    1112:	00001097          	auipc	ra,0x1
    1116:	b9a080e7          	jalr	-1126(ra) # 1cac <exit>
    111a:	bf99                	j	1070 <main+0x70>
    111c:	474d                	li	a4,19
    111e:	d40b0693          	addi	a3,s6,-704 # 1d40 <mkdir+0x24>
    1122:	8622                	mv	a2,s0
    1124:	e30a8593          	addi	a1,s5,-464 # 1e30 <mkdir+0x114>
    1128:	4509                	li	a0,2
    112a:	00000097          	auipc	ra,0x0
    112e:	29e080e7          	jalr	670(ra) # 13c8 <fprintf>
    1132:	8552                	mv	a0,s4
    1134:	00001097          	auipc	ra,0x1
    1138:	b78080e7          	jalr	-1160(ra) # 1cac <exit>
    113c:	bf8d                	j	10ae <main+0xae>

000000000000113e <putc>:
    113e:	1101                	addi	sp,sp,-32
    1140:	ec06                	sd	ra,24(sp)
    1142:	00b107a3          	sb	a1,15(sp)
    1146:	4605                	li	a2,1
    1148:	00f10593          	addi	a1,sp,15
    114c:	00001097          	auipc	ra,0x1
    1150:	b90080e7          	jalr	-1136(ra) # 1cdc <write>
    1154:	60e2                	ld	ra,24(sp)
    1156:	6105                	addi	sp,sp,32
    1158:	8082                	ret

000000000000115a <printint>:
    115a:	7179                	addi	sp,sp,-48
    115c:	f406                	sd	ra,40(sp)
    115e:	f022                	sd	s0,32(sp)
    1160:	ec26                	sd	s1,24(sp)
    1162:	e84a                	sd	s2,16(sp)
    1164:	84aa                	mv	s1,a0
    1166:	c299                	beqz	a3,116c <printint+0x12>
    1168:	0805c363          	bltz	a1,11ee <printint+0x94>
    116c:	2581                	sext.w	a1,a1
    116e:	4881                	li	a7,0
    1170:	868a                	mv	a3,sp
    1172:	4701                	li	a4,0
    1174:	2601                	sext.w	a2,a2
    1176:	00002537          	lui	a0,0x2
    117a:	eb050513          	addi	a0,a0,-336 # 1eb0 <digits>
    117e:	883a                	mv	a6,a4
    1180:	2705                	addiw	a4,a4,1
    1182:	02c5f7bb          	remuw	a5,a1,a2
    1186:	1782                	slli	a5,a5,0x20
    1188:	9381                	srli	a5,a5,0x20
    118a:	97aa                	add	a5,a5,a0
    118c:	0007c783          	lbu	a5,0(a5) # 20000000 <s+0x1fffcf00>
    1190:	00f68023          	sb	a5,0(a3)
    1194:	0005879b          	sext.w	a5,a1
    1198:	02c5d5bb          	divuw	a1,a1,a2
    119c:	0685                	addi	a3,a3,1
    119e:	fec7f0e3          	bgeu	a5,a2,117e <printint+0x24>
    11a2:	00088a63          	beqz	a7,11b6 <printint+0x5c>
    11a6:	081c                	addi	a5,sp,16
    11a8:	973e                	add	a4,a4,a5
    11aa:	02d00793          	li	a5,45
    11ae:	fef70823          	sb	a5,-16(a4)
    11b2:	0028071b          	addiw	a4,a6,2
    11b6:	02e05663          	blez	a4,11e2 <printint+0x88>
    11ba:	00e10433          	add	s0,sp,a4
    11be:	fff10913          	addi	s2,sp,-1
    11c2:	993a                	add	s2,s2,a4
    11c4:	377d                	addiw	a4,a4,-1
    11c6:	1702                	slli	a4,a4,0x20
    11c8:	9301                	srli	a4,a4,0x20
    11ca:	40e90933          	sub	s2,s2,a4
    11ce:	fff44583          	lbu	a1,-1(s0)
    11d2:	8526                	mv	a0,s1
    11d4:	00000097          	auipc	ra,0x0
    11d8:	f6a080e7          	jalr	-150(ra) # 113e <putc>
    11dc:	147d                	addi	s0,s0,-1
    11de:	ff2418e3          	bne	s0,s2,11ce <printint+0x74>
    11e2:	70a2                	ld	ra,40(sp)
    11e4:	7402                	ld	s0,32(sp)
    11e6:	64e2                	ld	s1,24(sp)
    11e8:	6942                	ld	s2,16(sp)
    11ea:	6145                	addi	sp,sp,48
    11ec:	8082                	ret
    11ee:	40b005bb          	negw	a1,a1
    11f2:	4885                	li	a7,1
    11f4:	bfb5                	j	1170 <printint+0x16>

00000000000011f6 <vprintf>:
    11f6:	7159                	addi	sp,sp,-112
    11f8:	f486                	sd	ra,104(sp)
    11fa:	f0a2                	sd	s0,96(sp)
    11fc:	eca6                	sd	s1,88(sp)
    11fe:	e8ca                	sd	s2,80(sp)
    1200:	e4ce                	sd	s3,72(sp)
    1202:	e0d2                	sd	s4,64(sp)
    1204:	fc56                	sd	s5,56(sp)
    1206:	f85a                	sd	s6,48(sp)
    1208:	f45e                	sd	s7,40(sp)
    120a:	f062                	sd	s8,32(sp)
    120c:	ec66                	sd	s9,24(sp)
    120e:	e86a                	sd	s10,16(sp)
    1210:	e46e                	sd	s11,8(sp)
    1212:	0005c483          	lbu	s1,0(a1)
    1216:	18048a63          	beqz	s1,13aa <vprintf+0x1b4>
    121a:	8a2a                	mv	s4,a0
    121c:	8ab2                	mv	s5,a2
    121e:	00158413          	addi	s0,a1,1
    1222:	4901                	li	s2,0
    1224:	02500993          	li	s3,37
    1228:	06400b93          	li	s7,100
    122c:	06c00c13          	li	s8,108
    1230:	07800c93          	li	s9,120
    1234:	07000d13          	li	s10,112
    1238:	00002db7          	lui	s11,0x2
    123c:	00002b37          	lui	s6,0x2
    1240:	eb0b0b13          	addi	s6,s6,-336 # 1eb0 <digits>
    1244:	a839                	j	1262 <vprintf+0x6c>
    1246:	85a6                	mv	a1,s1
    1248:	8552                	mv	a0,s4
    124a:	00000097          	auipc	ra,0x0
    124e:	ef4080e7          	jalr	-268(ra) # 113e <putc>
    1252:	a019                	j	1258 <vprintf+0x62>
    1254:	01390f63          	beq	s2,s3,1272 <vprintf+0x7c>
    1258:	0405                	addi	s0,s0,1
    125a:	fff44483          	lbu	s1,-1(s0)
    125e:	14048663          	beqz	s1,13aa <vprintf+0x1b4>
    1262:	0004879b          	sext.w	a5,s1
    1266:	fe0917e3          	bnez	s2,1254 <vprintf+0x5e>
    126a:	fd379ee3          	bne	a5,s3,1246 <vprintf+0x50>
    126e:	893e                	mv	s2,a5
    1270:	b7e5                	j	1258 <vprintf+0x62>
    1272:	05778063          	beq	a5,s7,12b2 <vprintf+0xbc>
    1276:	05878c63          	beq	a5,s8,12ce <vprintf+0xd8>
    127a:	07978863          	beq	a5,s9,12ea <vprintf+0xf4>
    127e:	09a78463          	beq	a5,s10,1306 <vprintf+0x110>
    1282:	07300713          	li	a4,115
    1286:	0ce78263          	beq	a5,a4,134a <vprintf+0x154>
    128a:	06300713          	li	a4,99
    128e:	0ee78763          	beq	a5,a4,137c <vprintf+0x186>
    1292:	11378163          	beq	a5,s3,1394 <vprintf+0x19e>
    1296:	85ce                	mv	a1,s3
    1298:	8552                	mv	a0,s4
    129a:	00000097          	auipc	ra,0x0
    129e:	ea4080e7          	jalr	-348(ra) # 113e <putc>
    12a2:	85a6                	mv	a1,s1
    12a4:	8552                	mv	a0,s4
    12a6:	00000097          	auipc	ra,0x0
    12aa:	e98080e7          	jalr	-360(ra) # 113e <putc>
    12ae:	4901                	li	s2,0
    12b0:	b765                	j	1258 <vprintf+0x62>
    12b2:	008a8493          	addi	s1,s5,8
    12b6:	4685                	li	a3,1
    12b8:	4629                	li	a2,10
    12ba:	000aa583          	lw	a1,0(s5)
    12be:	8552                	mv	a0,s4
    12c0:	00000097          	auipc	ra,0x0
    12c4:	e9a080e7          	jalr	-358(ra) # 115a <printint>
    12c8:	8aa6                	mv	s5,s1
    12ca:	4901                	li	s2,0
    12cc:	b771                	j	1258 <vprintf+0x62>
    12ce:	008a8493          	addi	s1,s5,8
    12d2:	4681                	li	a3,0
    12d4:	4629                	li	a2,10
    12d6:	000aa583          	lw	a1,0(s5)
    12da:	8552                	mv	a0,s4
    12dc:	00000097          	auipc	ra,0x0
    12e0:	e7e080e7          	jalr	-386(ra) # 115a <printint>
    12e4:	8aa6                	mv	s5,s1
    12e6:	4901                	li	s2,0
    12e8:	bf85                	j	1258 <vprintf+0x62>
    12ea:	008a8493          	addi	s1,s5,8
    12ee:	4681                	li	a3,0
    12f0:	4641                	li	a2,16
    12f2:	000aa583          	lw	a1,0(s5)
    12f6:	8552                	mv	a0,s4
    12f8:	00000097          	auipc	ra,0x0
    12fc:	e62080e7          	jalr	-414(ra) # 115a <printint>
    1300:	8aa6                	mv	s5,s1
    1302:	4901                	li	s2,0
    1304:	bf91                	j	1258 <vprintf+0x62>
    1306:	008a8913          	addi	s2,s5,8
    130a:	000aba83          	ld	s5,0(s5)
    130e:	03000593          	li	a1,48
    1312:	8552                	mv	a0,s4
    1314:	00000097          	auipc	ra,0x0
    1318:	e2a080e7          	jalr	-470(ra) # 113e <putc>
    131c:	85e6                	mv	a1,s9
    131e:	8552                	mv	a0,s4
    1320:	00000097          	auipc	ra,0x0
    1324:	e1e080e7          	jalr	-482(ra) # 113e <putc>
    1328:	44c1                	li	s1,16
    132a:	03cad793          	srli	a5,s5,0x3c
    132e:	97da                	add	a5,a5,s6
    1330:	0007c583          	lbu	a1,0(a5)
    1334:	8552                	mv	a0,s4
    1336:	00000097          	auipc	ra,0x0
    133a:	e08080e7          	jalr	-504(ra) # 113e <putc>
    133e:	0a92                	slli	s5,s5,0x4
    1340:	34fd                	addiw	s1,s1,-1
    1342:	f4e5                	bnez	s1,132a <vprintf+0x134>
    1344:	8aca                	mv	s5,s2
    1346:	4901                	li	s2,0
    1348:	bf01                	j	1258 <vprintf+0x62>
    134a:	008a8913          	addi	s2,s5,8
    134e:	000ab483          	ld	s1,0(s5)
    1352:	c085                	beqz	s1,1372 <vprintf+0x17c>
    1354:	0004c583          	lbu	a1,0(s1) # 3000 <sample>
    1358:	c5b1                	beqz	a1,13a4 <vprintf+0x1ae>
    135a:	8552                	mv	a0,s4
    135c:	00000097          	auipc	ra,0x0
    1360:	de2080e7          	jalr	-542(ra) # 113e <putc>
    1364:	0485                	addi	s1,s1,1
    1366:	0004c583          	lbu	a1,0(s1)
    136a:	f9e5                	bnez	a1,135a <vprintf+0x164>
    136c:	8aca                	mv	s5,s2
    136e:	4901                	li	s2,0
    1370:	b5e5                	j	1258 <vprintf+0x62>
    1372:	ea8d8493          	addi	s1,s11,-344 # 1ea8 <mkdir+0x18c>
    1376:	02800593          	li	a1,40
    137a:	b7c5                	j	135a <vprintf+0x164>
    137c:	008a8493          	addi	s1,s5,8
    1380:	000ac583          	lbu	a1,0(s5)
    1384:	8552                	mv	a0,s4
    1386:	00000097          	auipc	ra,0x0
    138a:	db8080e7          	jalr	-584(ra) # 113e <putc>
    138e:	8aa6                	mv	s5,s1
    1390:	4901                	li	s2,0
    1392:	b5d9                	j	1258 <vprintf+0x62>
    1394:	85ce                	mv	a1,s3
    1396:	8552                	mv	a0,s4
    1398:	00000097          	auipc	ra,0x0
    139c:	da6080e7          	jalr	-602(ra) # 113e <putc>
    13a0:	4901                	li	s2,0
    13a2:	bd5d                	j	1258 <vprintf+0x62>
    13a4:	8aca                	mv	s5,s2
    13a6:	4901                	li	s2,0
    13a8:	bd45                	j	1258 <vprintf+0x62>
    13aa:	70a6                	ld	ra,104(sp)
    13ac:	7406                	ld	s0,96(sp)
    13ae:	64e6                	ld	s1,88(sp)
    13b0:	6946                	ld	s2,80(sp)
    13b2:	69a6                	ld	s3,72(sp)
    13b4:	6a06                	ld	s4,64(sp)
    13b6:	7ae2                	ld	s5,56(sp)
    13b8:	7b42                	ld	s6,48(sp)
    13ba:	7ba2                	ld	s7,40(sp)
    13bc:	7c02                	ld	s8,32(sp)
    13be:	6ce2                	ld	s9,24(sp)
    13c0:	6d42                	ld	s10,16(sp)
    13c2:	6da2                	ld	s11,8(sp)
    13c4:	6165                	addi	sp,sp,112
    13c6:	8082                	ret

00000000000013c8 <fprintf>:
    13c8:	715d                	addi	sp,sp,-80
    13ca:	ec06                	sd	ra,24(sp)
    13cc:	f032                	sd	a2,32(sp)
    13ce:	f436                	sd	a3,40(sp)
    13d0:	f83a                	sd	a4,48(sp)
    13d2:	fc3e                	sd	a5,56(sp)
    13d4:	e0c2                	sd	a6,64(sp)
    13d6:	e4c6                	sd	a7,72(sp)
    13d8:	1010                	addi	a2,sp,32
    13da:	e432                	sd	a2,8(sp)
    13dc:	00000097          	auipc	ra,0x0
    13e0:	e1a080e7          	jalr	-486(ra) # 11f6 <vprintf>
    13e4:	60e2                	ld	ra,24(sp)
    13e6:	6161                	addi	sp,sp,80
    13e8:	8082                	ret

00000000000013ea <printf>:
    13ea:	711d                	addi	sp,sp,-96
    13ec:	ec06                	sd	ra,24(sp)
    13ee:	f42e                	sd	a1,40(sp)
    13f0:	f832                	sd	a2,48(sp)
    13f2:	fc36                	sd	a3,56(sp)
    13f4:	e0ba                	sd	a4,64(sp)
    13f6:	e4be                	sd	a5,72(sp)
    13f8:	e8c2                	sd	a6,80(sp)
    13fa:	ecc6                	sd	a7,88(sp)
    13fc:	1030                	addi	a2,sp,40
    13fe:	e432                	sd	a2,8(sp)
    1400:	85aa                	mv	a1,a0
    1402:	4505                	li	a0,1
    1404:	00000097          	auipc	ra,0x0
    1408:	df2080e7          	jalr	-526(ra) # 11f6 <vprintf>
    140c:	60e2                	ld	ra,24(sp)
    140e:	6125                	addi	sp,sp,96
    1410:	8082                	ret

0000000000001412 <cksum>:
    1412:	cdb1                	beqz	a1,146e <cksum+0x5c>
    1414:	00b50833          	add	a6,a0,a1
    1418:	4781                	li	a5,0
    141a:	00002637          	lui	a2,0x2
    141e:	ec860613          	addi	a2,a2,-312 # 1ec8 <crctab>
    1422:	0505                	addi	a0,a0,1
    1424:	0087969b          	slliw	a3,a5,0x8
    1428:	0187d71b          	srliw	a4,a5,0x18
    142c:	fff54783          	lbu	a5,-1(a0)
    1430:	8f3d                	xor	a4,a4,a5
    1432:	1702                	slli	a4,a4,0x20
    1434:	9301                	srli	a4,a4,0x20
    1436:	070a                	slli	a4,a4,0x2
    1438:	9732                	add	a4,a4,a2
    143a:	431c                	lw	a5,0(a4)
    143c:	8fb5                	xor	a5,a5,a3
    143e:	2781                	sext.w	a5,a5
    1440:	fea811e3          	bne	a6,a0,1422 <cksum+0x10>
    1444:	00002637          	lui	a2,0x2
    1448:	ec860613          	addi	a2,a2,-312 # 1ec8 <crctab>
    144c:	0ff5f693          	andi	a3,a1,255
    1450:	81a1                	srli	a1,a1,0x8
    1452:	0087951b          	slliw	a0,a5,0x8
    1456:	0187d71b          	srliw	a4,a5,0x18
    145a:	8f35                	xor	a4,a4,a3
    145c:	070a                	slli	a4,a4,0x2
    145e:	9732                	add	a4,a4,a2
    1460:	431c                	lw	a5,0(a4)
    1462:	8fa9                	xor	a5,a5,a0
    1464:	2781                	sext.w	a5,a5
    1466:	f1fd                	bnez	a1,144c <cksum+0x3a>
    1468:	fff7c513          	not	a0,a5
    146c:	8082                	ret
    146e:	4781                	li	a5,0
    1470:	bfe5                	j	1468 <cksum+0x56>

0000000000001472 <swap_bytes>:
    1472:	ce19                	beqz	a2,1490 <swap_bytes+0x1e>
    1474:	87aa                	mv	a5,a0
    1476:	962a                	add	a2,a2,a0
    1478:	0007c703          	lbu	a4,0(a5)
    147c:	0005c683          	lbu	a3,0(a1)
    1480:	00d78023          	sb	a3,0(a5)
    1484:	00e58023          	sb	a4,0(a1)
    1488:	0785                	addi	a5,a5,1
    148a:	0585                	addi	a1,a1,1
    148c:	fec796e3          	bne	a5,a2,1478 <swap_bytes+0x6>
    1490:	8082                	ret

0000000000001492 <random_init>:
    1492:	7139                	addi	sp,sp,-64
    1494:	fc06                	sd	ra,56(sp)
    1496:	f822                	sd	s0,48(sp)
    1498:	f426                	sd	s1,40(sp)
    149a:	f04a                	sd	s2,32(sp)
    149c:	ec4e                	sd	s3,24(sp)
    149e:	e852                	sd	s4,16(sp)
    14a0:	c62a                	sw	a0,12(sp)
    14a2:	000037b7          	lui	a5,0x3
    14a6:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    14aa:	eca5                	bnez	s1,1522 <random_init+0x90>
    14ac:	00003737          	lui	a4,0x3
    14b0:	10070913          	addi	s2,a4,256 # 3100 <s>
    14b4:	10070713          	addi	a4,a4,256
    14b8:	87a6                	mv	a5,s1
    14ba:	10000693          	li	a3,256
    14be:	00f70023          	sb	a5,0(a4)
    14c2:	2785                	addiw	a5,a5,1
    14c4:	0705                	addi	a4,a4,1
    14c6:	fed79ce3          	bne	a5,a3,14be <random_init+0x2c>
    14ca:	4401                	li	s0,0
    14cc:	000039b7          	lui	s3,0x3
    14d0:	10098993          	addi	s3,s3,256 # 3100 <s>
    14d4:	10000a13          	li	s4,256
    14d8:	0034f793          	andi	a5,s1,3
    14dc:	0818                	addi	a4,sp,16
    14de:	97ba                	add	a5,a5,a4
    14e0:	ffc7c783          	lbu	a5,-4(a5)
    14e4:	00094703          	lbu	a4,0(s2)
    14e8:	9fb9                	addw	a5,a5,a4
    14ea:	9c3d                	addw	s0,s0,a5
    14ec:	0ff47413          	andi	s0,s0,255
    14f0:	4605                	li	a2,1
    14f2:	008985b3          	add	a1,s3,s0
    14f6:	854a                	mv	a0,s2
    14f8:	00000097          	auipc	ra,0x0
    14fc:	f7a080e7          	jalr	-134(ra) # 1472 <swap_bytes>
    1500:	2485                	addiw	s1,s1,1
    1502:	0905                	addi	s2,s2,1
    1504:	fd449ae3          	bne	s1,s4,14d8 <random_init+0x46>
    1508:	000037b7          	lui	a5,0x3
    150c:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1510:	000037b7          	lui	a5,0x3
    1514:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1518:	000037b7          	lui	a5,0x3
    151c:	4705                	li	a4,1
    151e:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1522:	70e2                	ld	ra,56(sp)
    1524:	7442                	ld	s0,48(sp)
    1526:	74a2                	ld	s1,40(sp)
    1528:	7902                	ld	s2,32(sp)
    152a:	69e2                	ld	s3,24(sp)
    152c:	6a42                	ld	s4,16(sp)
    152e:	6121                	addi	sp,sp,64
    1530:	8082                	ret

0000000000001532 <random_bytes>:
    1532:	7139                	addi	sp,sp,-64
    1534:	fc06                	sd	ra,56(sp)
    1536:	f822                	sd	s0,48(sp)
    1538:	f426                	sd	s1,40(sp)
    153a:	f04a                	sd	s2,32(sp)
    153c:	ec4e                	sd	s3,24(sp)
    153e:	e852                	sd	s4,16(sp)
    1540:	e456                	sd	s5,8(sp)
    1542:	e05a                	sd	s6,0(sp)
    1544:	892a                	mv	s2,a0
    1546:	8aae                	mv	s5,a1
    1548:	000037b7          	lui	a5,0x3
    154c:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1550:	c3c1                	beqz	a5,15d0 <random_bytes+0x9e>
    1552:	060a8563          	beqz	s5,15bc <random_bytes+0x8a>
    1556:	9aca                	add	s5,s5,s2
    1558:	00003a37          	lui	s4,0x3
    155c:	000034b7          	lui	s1,0x3
    1560:	10048493          	addi	s1,s1,256 # 3100 <s>
    1564:	000039b7          	lui	s3,0x3
    1568:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    156c:	2505                	addiw	a0,a0,1
    156e:	0ff57513          	andi	a0,a0,255
    1572:	0eaa0aa3          	sb	a0,245(s4)
    1576:	00a48b33          	add	s6,s1,a0
    157a:	000b4403          	lbu	s0,0(s6)
    157e:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    1582:	9c3d                	addw	s0,s0,a5
    1584:	0ff47413          	andi	s0,s0,255
    1588:	0e898a23          	sb	s0,244(s3)
    158c:	4605                	li	a2,1
    158e:	008485b3          	add	a1,s1,s0
    1592:	855a                	mv	a0,s6
    1594:	00000097          	auipc	ra,0x0
    1598:	ede080e7          	jalr	-290(ra) # 1472 <swap_bytes>
    159c:	9426                	add	s0,s0,s1
    159e:	000b4783          	lbu	a5,0(s6)
    15a2:	00044703          	lbu	a4,0(s0)
    15a6:	9fb9                	addw	a5,a5,a4
    15a8:	0ff7f793          	andi	a5,a5,255
    15ac:	97a6                	add	a5,a5,s1
    15ae:	0007c783          	lbu	a5,0(a5)
    15b2:	00f90023          	sb	a5,0(s2)
    15b6:	0905                	addi	s2,s2,1
    15b8:	fb2a98e3          	bne	s5,s2,1568 <random_bytes+0x36>
    15bc:	70e2                	ld	ra,56(sp)
    15be:	7442                	ld	s0,48(sp)
    15c0:	74a2                	ld	s1,40(sp)
    15c2:	7902                	ld	s2,32(sp)
    15c4:	69e2                	ld	s3,24(sp)
    15c6:	6a42                	ld	s4,16(sp)
    15c8:	6aa2                	ld	s5,8(sp)
    15ca:	6b02                	ld	s6,0(sp)
    15cc:	6121                	addi	sp,sp,64
    15ce:	8082                	ret
    15d0:	4501                	li	a0,0
    15d2:	00000097          	auipc	ra,0x0
    15d6:	ec0080e7          	jalr	-320(ra) # 1492 <random_init>
    15da:	bfa5                	j	1552 <random_bytes+0x20>

00000000000015dc <random_ulong>:
    15dc:	1101                	addi	sp,sp,-32
    15de:	ec06                	sd	ra,24(sp)
    15e0:	45a1                	li	a1,8
    15e2:	0028                	addi	a0,sp,8
    15e4:	00000097          	auipc	ra,0x0
    15e8:	f4e080e7          	jalr	-178(ra) # 1532 <random_bytes>
    15ec:	6522                	ld	a0,8(sp)
    15ee:	60e2                	ld	ra,24(sp)
    15f0:	6105                	addi	sp,sp,32
    15f2:	8082                	ret

00000000000015f4 <shuffle>:
    15f4:	c9b9                	beqz	a1,164a <shuffle+0x56>
    15f6:	7179                	addi	sp,sp,-48
    15f8:	f406                	sd	ra,40(sp)
    15fa:	f022                	sd	s0,32(sp)
    15fc:	ec26                	sd	s1,24(sp)
    15fe:	e84a                	sd	s2,16(sp)
    1600:	e44e                	sd	s3,8(sp)
    1602:	e052                	sd	s4,0(sp)
    1604:	8a2a                	mv	s4,a0
    1606:	89ae                	mv	s3,a1
    1608:	84b2                	mv	s1,a2
    160a:	892a                	mv	s2,a0
    160c:	4401                	li	s0,0
    160e:	00000097          	auipc	ra,0x0
    1612:	fce080e7          	jalr	-50(ra) # 15dc <random_ulong>
    1616:	408985b3          	sub	a1,s3,s0
    161a:	02b575b3          	remu	a1,a0,a1
    161e:	95a2                	add	a1,a1,s0
    1620:	029585b3          	mul	a1,a1,s1
    1624:	8626                	mv	a2,s1
    1626:	95d2                	add	a1,a1,s4
    1628:	854a                	mv	a0,s2
    162a:	00000097          	auipc	ra,0x0
    162e:	e48080e7          	jalr	-440(ra) # 1472 <swap_bytes>
    1632:	0405                	addi	s0,s0,1
    1634:	9926                	add	s2,s2,s1
    1636:	fc899ce3          	bne	s3,s0,160e <shuffle+0x1a>
    163a:	70a2                	ld	ra,40(sp)
    163c:	7402                	ld	s0,32(sp)
    163e:	64e2                	ld	s1,24(sp)
    1640:	6942                	ld	s2,16(sp)
    1642:	69a2                	ld	s3,8(sp)
    1644:	6a02                	ld	s4,0(sp)
    1646:	6145                	addi	sp,sp,48
    1648:	8082                	ret
    164a:	8082                	ret

000000000000164c <arc4_init>:
    164c:	100500a3          	sb	zero,257(a0)
    1650:	10050023          	sb	zero,256(a0)
    1654:	4781                	li	a5,0
    1656:	10000693          	li	a3,256
    165a:	00f50733          	add	a4,a0,a5
    165e:	00f70023          	sb	a5,0(a4)
    1662:	0785                	addi	a5,a5,1
    1664:	fed79be3          	bne	a5,a3,165a <arc4_init+0xe>
    1668:	86aa                	mv	a3,a0
    166a:	10050e13          	addi	t3,a0,256
    166e:	4701                	li	a4,0
    1670:	4781                	li	a5,0
    1672:	0006c883          	lbu	a7,0(a3)
    1676:	00f58833          	add	a6,a1,a5
    167a:	00084803          	lbu	a6,0(a6)
    167e:	00e8873b          	addw	a4,a7,a4
    1682:	00e8073b          	addw	a4,a6,a4
    1686:	0ff77713          	andi	a4,a4,255
    168a:	00e50833          	add	a6,a0,a4
    168e:	00084303          	lbu	t1,0(a6)
    1692:	00668023          	sb	t1,0(a3)
    1696:	01180023          	sb	a7,0(a6)
    169a:	0785                	addi	a5,a5,1
    169c:	00c7b833          	sltu	a6,a5,a2
    16a0:	41000833          	neg	a6,a6
    16a4:	0107f7b3          	and	a5,a5,a6
    16a8:	0685                	addi	a3,a3,1
    16aa:	fdc694e3          	bne	a3,t3,1672 <arc4_init+0x26>
    16ae:	8082                	ret

00000000000016b0 <arc4_crypt>:
    16b0:	10054e03          	lbu	t3,256(a0)
    16b4:	10154803          	lbu	a6,257(a0)
    16b8:	fff60e93          	addi	t4,a2,-1
    16bc:	c225                	beqz	a2,171c <arc4_crypt+0x6c>
    16be:	00c588b3          	add	a7,a1,a2
    16c2:	86ae                	mv	a3,a1
    16c4:	001e031b          	addiw	t1,t3,1
    16c8:	40b3033b          	subw	t1,t1,a1
    16cc:	00d3073b          	addw	a4,t1,a3
    16d0:	0ff77713          	andi	a4,a4,255
    16d4:	972a                	add	a4,a4,a0
    16d6:	00074603          	lbu	a2,0(a4)
    16da:	0106083b          	addw	a6,a2,a6
    16de:	0ff87813          	andi	a6,a6,255
    16e2:	010507b3          	add	a5,a0,a6
    16e6:	0007c583          	lbu	a1,0(a5)
    16ea:	00b70023          	sb	a1,0(a4)
    16ee:	00c78023          	sb	a2,0(a5)
    16f2:	0685                	addi	a3,a3,1
    16f4:	00074783          	lbu	a5,0(a4)
    16f8:	9fb1                	addw	a5,a5,a2
    16fa:	0ff7f793          	andi	a5,a5,255
    16fe:	97aa                	add	a5,a5,a0
    1700:	0007c783          	lbu	a5,0(a5)
    1704:	fff6c703          	lbu	a4,-1(a3)
    1708:	8fb9                	xor	a5,a5,a4
    170a:	fef68fa3          	sb	a5,-1(a3)
    170e:	fb169fe3          	bne	a3,a7,16cc <arc4_crypt+0x1c>
    1712:	2e85                	addiw	t4,t4,1
    1714:	01ce8e3b          	addw	t3,t4,t3
    1718:	0ffe7e13          	andi	t3,t3,255
    171c:	11c50023          	sb	t3,256(a0)
    1720:	110500a3          	sb	a6,257(a0)
    1724:	8082                	ret

0000000000001726 <_main>:
    1726:	1141                	addi	sp,sp,-16
    1728:	e406                	sd	ra,8(sp)
    172a:	00000097          	auipc	ra,0x0
    172e:	8d6080e7          	jalr	-1834(ra) # 1000 <main>
    1732:	4501                	li	a0,0
    1734:	00000097          	auipc	ra,0x0
    1738:	578080e7          	jalr	1400(ra) # 1cac <exit>
    173c:	60a2                	ld	ra,8(sp)
    173e:	0141                	addi	sp,sp,16
    1740:	8082                	ret

0000000000001742 <strcmp>:
    1742:	00054783          	lbu	a5,0(a0)
    1746:	cb91                	beqz	a5,175a <strcmp+0x18>
    1748:	0005c703          	lbu	a4,0(a1)
    174c:	00f71763          	bne	a4,a5,175a <strcmp+0x18>
    1750:	0505                	addi	a0,a0,1
    1752:	0585                	addi	a1,a1,1
    1754:	00054783          	lbu	a5,0(a0)
    1758:	fbe5                	bnez	a5,1748 <strcmp+0x6>
    175a:	0005c503          	lbu	a0,0(a1)
    175e:	40a7853b          	subw	a0,a5,a0
    1762:	8082                	ret

0000000000001764 <strcpy>:
    1764:	87aa                	mv	a5,a0
    1766:	0585                	addi	a1,a1,1
    1768:	0785                	addi	a5,a5,1
    176a:	fff5c703          	lbu	a4,-1(a1)
    176e:	fee78fa3          	sb	a4,-1(a5)
    1772:	fb75                	bnez	a4,1766 <strcpy+0x2>
    1774:	8082                	ret

0000000000001776 <strlen>:
    1776:	00054783          	lbu	a5,0(a0)
    177a:	cf81                	beqz	a5,1792 <strlen+0x1c>
    177c:	0505                	addi	a0,a0,1
    177e:	87aa                	mv	a5,a0
    1780:	4685                	li	a3,1
    1782:	9e89                	subw	a3,a3,a0
    1784:	00f6853b          	addw	a0,a3,a5
    1788:	0785                	addi	a5,a5,1
    178a:	fff7c703          	lbu	a4,-1(a5)
    178e:	fb7d                	bnez	a4,1784 <strlen+0xe>
    1790:	8082                	ret
    1792:	4501                	li	a0,0
    1794:	8082                	ret

0000000000001796 <memset>:
    1796:	ca19                	beqz	a2,17ac <memset+0x16>
    1798:	87aa                	mv	a5,a0
    179a:	1602                	slli	a2,a2,0x20
    179c:	9201                	srli	a2,a2,0x20
    179e:	00a60733          	add	a4,a2,a0
    17a2:	00b78023          	sb	a1,0(a5)
    17a6:	0785                	addi	a5,a5,1
    17a8:	fee79de3          	bne	a5,a4,17a2 <memset+0xc>
    17ac:	8082                	ret

00000000000017ae <memcmp>:
    17ae:	1101                	addi	sp,sp,-32
    17b0:	ec06                	sd	ra,24(sp)
    17b2:	e822                	sd	s0,16(sp)
    17b4:	e426                	sd	s1,8(sp)
    17b6:	e04a                	sd	s2,0(sp)
    17b8:	892a                	mv	s2,a0
    17ba:	842e                	mv	s0,a1
    17bc:	84b2                	mv	s1,a2
    17be:	c915                	beqz	a0,17f2 <memcmp+0x44>
    17c0:	c5ad                	beqz	a1,182a <memcmp+0x7c>
    17c2:	fff60713          	addi	a4,a2,-1
    17c6:	c645                	beqz	a2,186e <memcmp+0xc0>
    17c8:	87ca                	mv	a5,s2
    17ca:	00190613          	addi	a2,s2,1
    17ce:	963a                	add	a2,a2,a4
    17d0:	0007c683          	lbu	a3,0(a5)
    17d4:	00044703          	lbu	a4,0(s0)
    17d8:	08e69463          	bne	a3,a4,1860 <memcmp+0xb2>
    17dc:	0785                	addi	a5,a5,1
    17de:	0405                	addi	s0,s0,1
    17e0:	fec798e3          	bne	a5,a2,17d0 <memcmp+0x22>
    17e4:	4501                	li	a0,0
    17e6:	60e2                	ld	ra,24(sp)
    17e8:	6442                	ld	s0,16(sp)
    17ea:	64a2                	ld	s1,8(sp)
    17ec:	6902                	ld	s2,0(sp)
    17ee:	6105                	addi	sp,sp,32
    17f0:	8082                	ret
    17f2:	4501                	li	a0,0
    17f4:	da6d                	beqz	a2,17e6 <memcmp+0x38>
    17f6:	03200693          	li	a3,50
    17fa:	00002637          	lui	a2,0x2
    17fe:	2c860613          	addi	a2,a2,712 # 22c8 <crctab+0x400>
    1802:	000025b7          	lui	a1,0x2
    1806:	2d858593          	addi	a1,a1,728 # 22d8 <crctab+0x410>
    180a:	4509                	li	a0,2
    180c:	00000097          	auipc	ra,0x0
    1810:	bbc080e7          	jalr	-1092(ra) # 13c8 <fprintf>
    1814:	650d                	lui	a0,0x3
    1816:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    181a:	00000097          	auipc	ra,0x0
    181e:	492080e7          	jalr	1170(ra) # 1cac <exit>
    1822:	fff48713          	addi	a4,s1,-1
    1826:	f04d                	bnez	s0,17c8 <memcmp+0x1a>
    1828:	a011                	j	182c <memcmp+0x7e>
    182a:	c221                	beqz	a2,186a <memcmp+0xbc>
    182c:	03300693          	li	a3,51
    1830:	00002637          	lui	a2,0x2
    1834:	2c860613          	addi	a2,a2,712 # 22c8 <crctab+0x400>
    1838:	000025b7          	lui	a1,0x2
    183c:	32058593          	addi	a1,a1,800 # 2320 <crctab+0x458>
    1840:	4509                	li	a0,2
    1842:	00000097          	auipc	ra,0x0
    1846:	b86080e7          	jalr	-1146(ra) # 13c8 <fprintf>
    184a:	650d                	lui	a0,0x3
    184c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1850:	00000097          	auipc	ra,0x0
    1854:	45c080e7          	jalr	1116(ra) # 1cac <exit>
    1858:	fff48713          	addi	a4,s1,-1
    185c:	4401                	li	s0,0
    185e:	b7ad                	j	17c8 <memcmp+0x1a>
    1860:	4505                	li	a0,1
    1862:	f8d762e3          	bltu	a4,a3,17e6 <memcmp+0x38>
    1866:	557d                	li	a0,-1
    1868:	bfbd                	j	17e6 <memcmp+0x38>
    186a:	4501                	li	a0,0
    186c:	bfad                	j	17e6 <memcmp+0x38>
    186e:	4501                	li	a0,0
    1870:	bf9d                	j	17e6 <memcmp+0x38>

0000000000001872 <memcpy>:
    1872:	1101                	addi	sp,sp,-32
    1874:	ec06                	sd	ra,24(sp)
    1876:	e822                	sd	s0,16(sp)
    1878:	e426                	sd	s1,8(sp)
    187a:	e04a                	sd	s2,0(sp)
    187c:	84aa                	mv	s1,a0
    187e:	842e                	mv	s0,a1
    1880:	8932                	mv	s2,a2
    1882:	c51d                	beqz	a0,18b0 <memcpy+0x3e>
    1884:	c1ad                	beqz	a1,18e6 <memcpy+0x74>
    1886:	fff60693          	addi	a3,a2,-1
    188a:	ce01                	beqz	a2,18a2 <memcpy+0x30>
    188c:	0685                	addi	a3,a3,1
    188e:	96a6                	add	a3,a3,s1
    1890:	87a6                	mv	a5,s1
    1892:	0405                	addi	s0,s0,1
    1894:	0785                	addi	a5,a5,1
    1896:	fff44703          	lbu	a4,-1(s0)
    189a:	fee78fa3          	sb	a4,-1(a5)
    189e:	fed79ae3          	bne	a5,a3,1892 <memcpy+0x20>
    18a2:	8526                	mv	a0,s1
    18a4:	60e2                	ld	ra,24(sp)
    18a6:	6442                	ld	s0,16(sp)
    18a8:	64a2                	ld	s1,8(sp)
    18aa:	6902                	ld	s2,0(sp)
    18ac:	6105                	addi	sp,sp,32
    18ae:	8082                	ret
    18b0:	da6d                	beqz	a2,18a2 <memcpy+0x30>
    18b2:	04000693          	li	a3,64
    18b6:	00002637          	lui	a2,0x2
    18ba:	2c860613          	addi	a2,a2,712 # 22c8 <crctab+0x400>
    18be:	000025b7          	lui	a1,0x2
    18c2:	36858593          	addi	a1,a1,872 # 2368 <crctab+0x4a0>
    18c6:	4509                	li	a0,2
    18c8:	00000097          	auipc	ra,0x0
    18cc:	b00080e7          	jalr	-1280(ra) # 13c8 <fprintf>
    18d0:	650d                	lui	a0,0x3
    18d2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    18d6:	00000097          	auipc	ra,0x0
    18da:	3d6080e7          	jalr	982(ra) # 1cac <exit>
    18de:	fff90693          	addi	a3,s2,-1
    18e2:	f44d                	bnez	s0,188c <memcpy+0x1a>
    18e4:	a011                	j	18e8 <memcpy+0x76>
    18e6:	de55                	beqz	a2,18a2 <memcpy+0x30>
    18e8:	04100693          	li	a3,65
    18ec:	00002637          	lui	a2,0x2
    18f0:	2c860613          	addi	a2,a2,712 # 22c8 <crctab+0x400>
    18f4:	000025b7          	lui	a1,0x2
    18f8:	3b058593          	addi	a1,a1,944 # 23b0 <crctab+0x4e8>
    18fc:	4509                	li	a0,2
    18fe:	00000097          	auipc	ra,0x0
    1902:	aca080e7          	jalr	-1334(ra) # 13c8 <fprintf>
    1906:	650d                	lui	a0,0x3
    1908:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    190c:	00000097          	auipc	ra,0x0
    1910:	3a0080e7          	jalr	928(ra) # 1cac <exit>
    1914:	fff90693          	addi	a3,s2,-1
    1918:	4401                	li	s0,0
    191a:	bf8d                	j	188c <memcpy+0x1a>

000000000000191c <itoa>:
    191c:	1101                	addi	sp,sp,-32
    191e:	ec06                	sd	ra,24(sp)
    1920:	e822                	sd	s0,16(sp)
    1922:	e426                	sd	s1,8(sp)
    1924:	842a                	mv	s0,a0
    1926:	41f5d71b          	sraiw	a4,a1,0x1f
    192a:	00e5c7b3          	xor	a5,a1,a4
    192e:	9f99                	subw	a5,a5,a4
    1930:	84aa                	mv	s1,a0
    1932:	862a                	mv	a2,a0
    1934:	4681                	li	a3,0
    1936:	4529                	li	a0,10
    1938:	4825                	li	a6,9
    193a:	88b6                	mv	a7,a3
    193c:	2685                	addiw	a3,a3,1
    193e:	02a7e73b          	remw	a4,a5,a0
    1942:	0307071b          	addiw	a4,a4,48
    1946:	00e60023          	sb	a4,0(a2)
    194a:	873e                	mv	a4,a5
    194c:	02a7c7bb          	divw	a5,a5,a0
    1950:	0605                	addi	a2,a2,1
    1952:	fee844e3          	blt	a6,a4,193a <itoa+0x1e>
    1956:	0405c863          	bltz	a1,19a6 <itoa+0x8a>
    195a:	96a2                	add	a3,a3,s0
    195c:	00068023          	sb	zero,0(a3)
    1960:	8522                	mv	a0,s0
    1962:	00000097          	auipc	ra,0x0
    1966:	e14080e7          	jalr	-492(ra) # 1776 <strlen>
    196a:	fff5071b          	addiw	a4,a0,-1
    196e:	02e05763          	blez	a4,199c <itoa+0x80>
    1972:	9722                	add	a4,a4,s0
    1974:	4681                	li	a3,0
    1976:	0004c783          	lbu	a5,0(s1)
    197a:	00074603          	lbu	a2,0(a4)
    197e:	00c48023          	sb	a2,0(s1)
    1982:	00f70023          	sb	a5,0(a4)
    1986:	0016879b          	addiw	a5,a3,1
    198a:	0007869b          	sext.w	a3,a5
    198e:	0485                	addi	s1,s1,1
    1990:	177d                	addi	a4,a4,-1
    1992:	fff7c793          	not	a5,a5
    1996:	9fa9                	addw	a5,a5,a0
    1998:	fcf6cfe3          	blt	a3,a5,1976 <itoa+0x5a>
    199c:	60e2                	ld	ra,24(sp)
    199e:	6442                	ld	s0,16(sp)
    19a0:	64a2                	ld	s1,8(sp)
    19a2:	6105                	addi	sp,sp,32
    19a4:	8082                	ret
    19a6:	96a2                	add	a3,a3,s0
    19a8:	02d00793          	li	a5,45
    19ac:	00f68023          	sb	a5,0(a3)
    19b0:	0028869b          	addiw	a3,a7,2
    19b4:	b75d                	j	195a <itoa+0x3e>

00000000000019b6 <atoi>:
    19b6:	00054783          	lbu	a5,0(a0)
    19ba:	02000713          	li	a4,32
    19be:	00e79763          	bne	a5,a4,19cc <atoi+0x16>
    19c2:	0505                	addi	a0,a0,1
    19c4:	00054783          	lbu	a5,0(a0)
    19c8:	fee78de3          	beq	a5,a4,19c2 <atoi+0xc>
    19cc:	02b00713          	li	a4,43
    19d0:	04e78663          	beq	a5,a4,1a1c <atoi+0x66>
    19d4:	02d00713          	li	a4,45
    19d8:	4805                	li	a6,1
    19da:	04e78463          	beq	a5,a4,1a22 <atoi+0x6c>
    19de:	00054683          	lbu	a3,0(a0)
    19e2:	fd06879b          	addiw	a5,a3,-48
    19e6:	0ff7f793          	andi	a5,a5,255
    19ea:	4725                	li	a4,9
    19ec:	02f76e63          	bltu	a4,a5,1a28 <atoi+0x72>
    19f0:	4601                	li	a2,0
    19f2:	45a5                	li	a1,9
    19f4:	0505                	addi	a0,a0,1
    19f6:	0026179b          	slliw	a5,a2,0x2
    19fa:	9fb1                	addw	a5,a5,a2
    19fc:	0017979b          	slliw	a5,a5,0x1
    1a00:	9fb5                	addw	a5,a5,a3
    1a02:	fd07861b          	addiw	a2,a5,-48
    1a06:	00054683          	lbu	a3,0(a0)
    1a0a:	fd06871b          	addiw	a4,a3,-48
    1a0e:	0ff77713          	andi	a4,a4,255
    1a12:	fee5f1e3          	bgeu	a1,a4,19f4 <atoi+0x3e>
    1a16:	02c8053b          	mulw	a0,a6,a2
    1a1a:	8082                	ret
    1a1c:	0505                	addi	a0,a0,1
    1a1e:	4805                	li	a6,1
    1a20:	bf7d                	j	19de <atoi+0x28>
    1a22:	0505                	addi	a0,a0,1
    1a24:	587d                	li	a6,-1
    1a26:	bf65                	j	19de <atoi+0x28>
    1a28:	4601                	li	a2,0
    1a2a:	b7f5                	j	1a16 <atoi+0x60>

0000000000001a2c <check_file_handle>:
    1a2c:	d8010113          	addi	sp,sp,-640
    1a30:	26113c23          	sd	ra,632(sp)
    1a34:	26813823          	sd	s0,624(sp)
    1a38:	26913423          	sd	s1,616(sp)
    1a3c:	27213023          	sd	s2,608(sp)
    1a40:	25313c23          	sd	s3,600(sp)
    1a44:	25413823          	sd	s4,592(sp)
    1a48:	25513423          	sd	s5,584(sp)
    1a4c:	25613023          	sd	s6,576(sp)
    1a50:	23713c23          	sd	s7,568(sp)
    1a54:	23813823          	sd	s8,560(sp)
    1a58:	23913423          	sd	s9,552(sp)
    1a5c:	23a13023          	sd	s10,544(sp)
    1a60:	21b13c23          	sd	s11,536(sp)
    1a64:	8baa                	mv	s7,a0
    1a66:	8a2e                	mv	s4,a1
    1a68:	8c32                	mv	s8,a2
    1a6a:	89b6                	mv	s3,a3
    1a6c:	040c                	addi	a1,sp,512
    1a6e:	00000097          	auipc	ra,0x0
    1a72:	28e080e7          	jalr	654(ra) # 1cfc <fstat>
    1a76:	20813603          	ld	a2,520(sp)
    1a7a:	03361163          	bne	a2,s3,1a9c <check_file_handle+0x70>
    1a7e:	06098763          	beqz	s3,1aec <check_file_handle+0xc0>
    1a82:	4901                	li	s2,0
    1a84:	20000a93          	li	s5,512
    1a88:	00002cb7          	lui	s9,0x2
    1a8c:	00002db7          	lui	s11,0x2
    1a90:	6b0d                	lui	s6,0x3
    1a92:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1a96:	00002d37          	lui	s10,0x2
    1a9a:	aa39                	j	1bb8 <check_file_handle+0x18c>
    1a9c:	86ce                	mv	a3,s3
    1a9e:	85d2                	mv	a1,s4
    1aa0:	00002537          	lui	a0,0x2
    1aa4:	3f850513          	addi	a0,a0,1016 # 23f8 <crctab+0x530>
    1aa8:	00000097          	auipc	ra,0x0
    1aac:	942080e7          	jalr	-1726(ra) # 13ea <printf>
    1ab0:	fc0999e3          	bnez	s3,1a82 <check_file_handle+0x56>
    1ab4:	20813683          	ld	a3,520(sp)
    1ab8:	03368a63          	beq	a3,s3,1aec <check_file_handle+0xc0>
    1abc:	0a600813          	li	a6,166
    1ac0:	000027b7          	lui	a5,0x2
    1ac4:	2c878793          	addi	a5,a5,712 # 22c8 <crctab+0x400>
    1ac8:	874e                	mv	a4,s3
    1aca:	8652                	mv	a2,s4
    1acc:	000025b7          	lui	a1,0x2
    1ad0:	4c858593          	addi	a1,a1,1224 # 24c8 <crctab+0x600>
    1ad4:	4509                	li	a0,2
    1ad6:	00000097          	auipc	ra,0x0
    1ada:	8f2080e7          	jalr	-1806(ra) # 13c8 <fprintf>
    1ade:	650d                	lui	a0,0x3
    1ae0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1ae4:	00000097          	auipc	ra,0x0
    1ae8:	1c8080e7          	jalr	456(ra) # 1cac <exit>
    1aec:	85d2                	mv	a1,s4
    1aee:	00002537          	lui	a0,0x2
    1af2:	51050513          	addi	a0,a0,1296 # 2510 <crctab+0x648>
    1af6:	00000097          	auipc	ra,0x0
    1afa:	8f4080e7          	jalr	-1804(ra) # 13ea <printf>
    1afe:	27813083          	ld	ra,632(sp)
    1b02:	27013403          	ld	s0,624(sp)
    1b06:	26813483          	ld	s1,616(sp)
    1b0a:	26013903          	ld	s2,608(sp)
    1b0e:	25813983          	ld	s3,600(sp)
    1b12:	25013a03          	ld	s4,592(sp)
    1b16:	24813a83          	ld	s5,584(sp)
    1b1a:	24013b03          	ld	s6,576(sp)
    1b1e:	23813b83          	ld	s7,568(sp)
    1b22:	23013c03          	ld	s8,560(sp)
    1b26:	22813c83          	ld	s9,552(sp)
    1b2a:	22013d03          	ld	s10,544(sp)
    1b2e:	21813d83          	ld	s11,536(sp)
    1b32:	28010113          	addi	sp,sp,640
    1b36:	8082                	ret
    1b38:	09d00893          	li	a7,157
    1b3c:	2c8c8813          	addi	a6,s9,712 # 22c8 <crctab+0x400>
    1b40:	87aa                	mv	a5,a0
    1b42:	8752                	mv	a4,s4
    1b44:	86ca                	mv	a3,s2
    1b46:	8622                	mv	a2,s0
    1b48:	428d8593          	addi	a1,s11,1064 # 2428 <crctab+0x560>
    1b4c:	4509                	li	a0,2
    1b4e:	00000097          	auipc	ra,0x0
    1b52:	87a080e7          	jalr	-1926(ra) # 13c8 <fprintf>
    1b56:	855a                	mv	a0,s6
    1b58:	00000097          	auipc	ra,0x0
    1b5c:	154080e7          	jalr	340(ra) # 1cac <exit>
    1b60:	a89d                	j	1bd6 <check_file_handle+0x1aa>
    1b62:	00160593          	addi	a1,a2,1
    1b66:	0285f163          	bgeu	a1,s0,1b88 <check_file_handle+0x15c>
    1b6a:	00c10733          	add	a4,sp,a2
    1b6e:	00b487b3          	add	a5,s1,a1
    1b72:	00174683          	lbu	a3,1(a4)
    1b76:	0007c783          	lbu	a5,0(a5)
    1b7a:	00f68763          	beq	a3,a5,1b88 <check_file_handle+0x15c>
    1b7e:	0585                	addi	a1,a1,1
    1b80:	0705                	addi	a4,a4,1
    1b82:	feb416e3          	bne	s0,a1,1b6e <check_file_handle+0x142>
    1b86:	85a2                	mv	a1,s0
    1b88:	08100813          	li	a6,129
    1b8c:	2c8c8793          	addi	a5,s9,712
    1b90:	8752                	mv	a4,s4
    1b92:	012606b3          	add	a3,a2,s2
    1b96:	40c58633          	sub	a2,a1,a2
    1b9a:	470d0593          	addi	a1,s10,1136 # 2470 <crctab+0x5a8>
    1b9e:	4509                	li	a0,2
    1ba0:	00000097          	auipc	ra,0x0
    1ba4:	828080e7          	jalr	-2008(ra) # 13c8 <fprintf>
    1ba8:	855a                	mv	a0,s6
    1baa:	00000097          	auipc	ra,0x0
    1bae:	102080e7          	jalr	258(ra) # 1cac <exit>
    1bb2:	9922                	add	s2,s2,s0
    1bb4:	f13970e3          	bgeu	s2,s3,1ab4 <check_file_handle+0x88>
    1bb8:	41298433          	sub	s0,s3,s2
    1bbc:	008af363          	bgeu	s5,s0,1bc2 <check_file_handle+0x196>
    1bc0:	8456                	mv	s0,s5
    1bc2:	0004061b          	sext.w	a2,s0
    1bc6:	858a                	mv	a1,sp
    1bc8:	855e                	mv	a0,s7
    1bca:	00000097          	auipc	ra,0x0
    1bce:	10a080e7          	jalr	266(ra) # 1cd4 <read>
    1bd2:	f68513e3          	bne	a0,s0,1b38 <check_file_handle+0x10c>
    1bd6:	012c04b3          	add	s1,s8,s2
    1bda:	8622                	mv	a2,s0
    1bdc:	85a6                	mv	a1,s1
    1bde:	850a                	mv	a0,sp
    1be0:	00000097          	auipc	ra,0x0
    1be4:	bce080e7          	jalr	-1074(ra) # 17ae <memcmp>
    1be8:	d569                	beqz	a0,1bb2 <check_file_handle+0x186>
    1bea:	03298163          	beq	s3,s2,1c0c <check_file_handle+0x1e0>
    1bee:	870a                	mv	a4,sp
    1bf0:	4601                	li	a2,0
    1bf2:	00c487b3          	add	a5,s1,a2
    1bf6:	00074683          	lbu	a3,0(a4)
    1bfa:	0007c783          	lbu	a5,0(a5)
    1bfe:	f6f692e3          	bne	a3,a5,1b62 <check_file_handle+0x136>
    1c02:	0605                	addi	a2,a2,1
    1c04:	0705                	addi	a4,a4,1
    1c06:	fe8666e3          	bltu	a2,s0,1bf2 <check_file_handle+0x1c6>
    1c0a:	bfa1                	j	1b62 <check_file_handle+0x136>
    1c0c:	4601                	li	a2,0
    1c0e:	4585                	li	a1,1
    1c10:	bfa5                	j	1b88 <check_file_handle+0x15c>

0000000000001c12 <check_file>:
    1c12:	7179                	addi	sp,sp,-48
    1c14:	f406                	sd	ra,40(sp)
    1c16:	f022                	sd	s0,32(sp)
    1c18:	ec26                	sd	s1,24(sp)
    1c1a:	e84a                	sd	s2,16(sp)
    1c1c:	e44e                	sd	s3,8(sp)
    1c1e:	84aa                	mv	s1,a0
    1c20:	892e                	mv	s2,a1
    1c22:	89b2                	mv	s3,a2
    1c24:	4581                	li	a1,0
    1c26:	00000097          	auipc	ra,0x0
    1c2a:	0a6080e7          	jalr	166(ra) # 1ccc <open>
    1c2e:	842a                	mv	s0,a0
    1c30:	4789                	li	a5,2
    1c32:	02a7df63          	bge	a5,a0,1c70 <check_file+0x5e>
    1c36:	86ce                	mv	a3,s3
    1c38:	864a                	mv	a2,s2
    1c3a:	85a6                	mv	a1,s1
    1c3c:	8522                	mv	a0,s0
    1c3e:	00000097          	auipc	ra,0x0
    1c42:	dee080e7          	jalr	-530(ra) # 1a2c <check_file_handle>
    1c46:	85a6                	mv	a1,s1
    1c48:	00002537          	lui	a0,0x2
    1c4c:	59850513          	addi	a0,a0,1432 # 2598 <crctab+0x6d0>
    1c50:	fffff097          	auipc	ra,0xfffff
    1c54:	79a080e7          	jalr	1946(ra) # 13ea <printf>
    1c58:	8522                	mv	a0,s0
    1c5a:	00000097          	auipc	ra,0x0
    1c5e:	09a080e7          	jalr	154(ra) # 1cf4 <close>
    1c62:	70a2                	ld	ra,40(sp)
    1c64:	7402                	ld	s0,32(sp)
    1c66:	64e2                	ld	s1,24(sp)
    1c68:	6942                	ld	s2,16(sp)
    1c6a:	69a2                	ld	s3,8(sp)
    1c6c:	6145                	addi	sp,sp,48
    1c6e:	8082                	ret
    1c70:	0ae00713          	li	a4,174
    1c74:	000026b7          	lui	a3,0x2
    1c78:	2c868693          	addi	a3,a3,712 # 22c8 <crctab+0x400>
    1c7c:	8626                	mv	a2,s1
    1c7e:	000025b7          	lui	a1,0x2
    1c82:	53058593          	addi	a1,a1,1328 # 2530 <crctab+0x668>
    1c86:	4509                	li	a0,2
    1c88:	fffff097          	auipc	ra,0xfffff
    1c8c:	740080e7          	jalr	1856(ra) # 13c8 <fprintf>
    1c90:	650d                	lui	a0,0x3
    1c92:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1c96:	00000097          	auipc	ra,0x0
    1c9a:	016080e7          	jalr	22(ra) # 1cac <exit>
    1c9e:	bf61                	j	1c36 <check_file+0x24>

0000000000001ca0 <r_sp>:
    1ca0:	850a                	mv	a0,sp
    1ca2:	8082                	ret

0000000000001ca4 <halt>:
    1ca4:	4885                	li	a7,1
    1ca6:	00000073          	ecall
    1caa:	8082                	ret

0000000000001cac <exit>:
    1cac:	4889                	li	a7,2
    1cae:	00000073          	ecall
    1cb2:	8082                	ret

0000000000001cb4 <exec>:
    1cb4:	488d                	li	a7,3
    1cb6:	00000073          	ecall
    1cba:	8082                	ret

0000000000001cbc <wait>:
    1cbc:	4891                	li	a7,4
    1cbe:	00000073          	ecall
    1cc2:	8082                	ret

0000000000001cc4 <remove>:
    1cc4:	4895                	li	a7,5
    1cc6:	00000073          	ecall
    1cca:	8082                	ret

0000000000001ccc <open>:
    1ccc:	4899                	li	a7,6
    1cce:	00000073          	ecall
    1cd2:	8082                	ret

0000000000001cd4 <read>:
    1cd4:	489d                	li	a7,7
    1cd6:	00000073          	ecall
    1cda:	8082                	ret

0000000000001cdc <write>:
    1cdc:	48a1                	li	a7,8
    1cde:	00000073          	ecall
    1ce2:	8082                	ret

0000000000001ce4 <seek>:
    1ce4:	48a5                	li	a7,9
    1ce6:	00000073          	ecall
    1cea:	8082                	ret

0000000000001cec <tell>:
    1cec:	48a9                	li	a7,10
    1cee:	00000073          	ecall
    1cf2:	8082                	ret

0000000000001cf4 <close>:
    1cf4:	48ad                	li	a7,11
    1cf6:	00000073          	ecall
    1cfa:	8082                	ret

0000000000001cfc <fstat>:
    1cfc:	48b1                	li	a7,12
    1cfe:	00000073          	ecall
    1d02:	8082                	ret

0000000000001d04 <mmap>:
    1d04:	48b5                	li	a7,13
    1d06:	00000073          	ecall
    1d0a:	8082                	ret

0000000000001d0c <munmap>:
    1d0c:	48b9                	li	a7,14
    1d0e:	00000073          	ecall
    1d12:	8082                	ret

0000000000001d14 <chdir>:
    1d14:	48bd                	li	a7,15
    1d16:	00000073          	ecall
    1d1a:	8082                	ret

0000000000001d1c <mkdir>:
    1d1c:	48c1                	li	a7,16
    1d1e:	00000073          	ecall
    1d22:	8082                	ret
