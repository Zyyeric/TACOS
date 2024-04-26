
build/user/vm/mmap-read:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	715d                	addi	sp,sp,-80
    1002:	e486                	sd	ra,72(sp)
    1004:	e0a2                	sd	s0,64(sp)
    1006:	fc26                	sd	s1,56(sp)
    1008:	f84a                	sd	s2,48(sp)
    100a:	f44e                	sd	s3,40(sp)
    100c:	f052                	sd	s4,32(sp)
    100e:	ec56                	sd	s5,24(sp)
    1010:	e85a                	sd	s6,16(sp)
    1012:	e45e                	sd	s7,8(sp)
    1014:	4581                	li	a1,0
    1016:	00002537          	lui	a0,0x2
    101a:	d6050513          	addi	a0,a0,-672 # 1d60 <mkdir+0xc>
    101e:	00001097          	auipc	ra,0x1
    1022:	ce6080e7          	jalr	-794(ra) # 1d04 <open>
    1026:	89aa                	mv	s3,a0
    1028:	4789                	li	a5,2
    102a:	06a7d663          	bge	a5,a0,1096 <main+0x96>
    102e:	100005b7          	lui	a1,0x10000
    1032:	854e                	mv	a0,s3
    1034:	00001097          	auipc	ra,0x1
    1038:	d08080e7          	jalr	-760(ra) # 1d3c <mmap>
    103c:	8aaa                	mv	s5,a0
    103e:	57fd                	li	a5,-1
    1040:	08f50163          	beq	a0,a5,10c2 <main+0xc2>
    1044:	00003437          	lui	s0,0x3
    1048:	00040513          	mv	a0,s0
    104c:	00000097          	auipc	ra,0x0
    1050:	762080e7          	jalr	1890(ra) # 17ae <strlen>
    1054:	862a                	mv	a2,a0
    1056:	00040593          	mv	a1,s0
    105a:	10000537          	lui	a0,0x10000
    105e:	00000097          	auipc	ra,0x0
    1062:	788080e7          	jalr	1928(ra) # 17e6 <memcmp>
    1066:	e541                	bnez	a0,10ee <main+0xee>
    1068:	00003537          	lui	a0,0x3
    106c:	00050513          	mv	a0,a0
    1070:	00000097          	auipc	ra,0x0
    1074:	73e080e7          	jalr	1854(ra) # 17ae <strlen>
    1078:	842a                	mv	s0,a0
    107a:	6785                	lui	a5,0x1
    107c:	0cf57863          	bgeu	a0,a5,114c <main+0x14c>
    1080:	10000937          	lui	s2,0x10000
    1084:	00002bb7          	lui	s7,0x2
    1088:	00002b37          	lui	s6,0x2
    108c:	6a0d                	lui	s4,0x3
    108e:	039a0a13          	addi	s4,s4,57 # 3039 <sample+0x39>
    1092:	6485                	lui	s1,0x1
    1094:	a071                	j	1120 <main+0x120>
    1096:	46b1                	li	a3,12
    1098:	00002637          	lui	a2,0x2
    109c:	d7060613          	addi	a2,a2,-656 # 1d70 <mkdir+0x1c>
    10a0:	000025b7          	lui	a1,0x2
    10a4:	d8858593          	addi	a1,a1,-632 # 1d88 <mkdir+0x34>
    10a8:	4509                	li	a0,2
    10aa:	00000097          	auipc	ra,0x0
    10ae:	356080e7          	jalr	854(ra) # 1400 <fprintf>
    10b2:	650d                	lui	a0,0x3
    10b4:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10b8:	00001097          	auipc	ra,0x1
    10bc:	c2c080e7          	jalr	-980(ra) # 1ce4 <exit>
    10c0:	b7bd                	j	102e <main+0x2e>
    10c2:	46b5                	li	a3,13
    10c4:	00002637          	lui	a2,0x2
    10c8:	d7060613          	addi	a2,a2,-656 # 1d70 <mkdir+0x1c>
    10cc:	000025b7          	lui	a1,0x2
    10d0:	dd858593          	addi	a1,a1,-552 # 1dd8 <mkdir+0x84>
    10d4:	4509                	li	a0,2
    10d6:	00000097          	auipc	ra,0x0
    10da:	32a080e7          	jalr	810(ra) # 1400 <fprintf>
    10de:	650d                	lui	a0,0x3
    10e0:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10e4:	00001097          	auipc	ra,0x1
    10e8:	c00080e7          	jalr	-1024(ra) # 1ce4 <exit>
    10ec:	bfa1                	j	1044 <main+0x44>
    10ee:	46c1                	li	a3,16
    10f0:	00002637          	lui	a2,0x2
    10f4:	d7060613          	addi	a2,a2,-656 # 1d70 <mkdir+0x1c>
    10f8:	000025b7          	lui	a1,0x2
    10fc:	e3058593          	addi	a1,a1,-464 # 1e30 <mkdir+0xdc>
    1100:	4509                	li	a0,2
    1102:	00000097          	auipc	ra,0x0
    1106:	2fe080e7          	jalr	766(ra) # 1400 <fprintf>
    110a:	650d                	lui	a0,0x3
    110c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1110:	00001097          	auipc	ra,0x1
    1114:	bd4080e7          	jalr	-1068(ra) # 1ce4 <exit>
    1118:	bf81                	j	1068 <main+0x68>
    111a:	0405                	addi	s0,s0,1
    111c:	02940863          	beq	s0,s1,114c <main+0x14c>
    1120:	008907b3          	add	a5,s2,s0
    1124:	0007c683          	lbu	a3,0(a5) # 1000 <main>
    1128:	daed                	beqz	a3,111a <main+0x11a>
    112a:	47d5                	li	a5,21
    112c:	d70b8713          	addi	a4,s7,-656 # 1d70 <mkdir+0x1c>
    1130:	8622                	mv	a2,s0
    1132:	e70b0593          	addi	a1,s6,-400 # 1e70 <mkdir+0x11c>
    1136:	4509                	li	a0,2
    1138:	00000097          	auipc	ra,0x0
    113c:	2c8080e7          	jalr	712(ra) # 1400 <fprintf>
    1140:	8552                	mv	a0,s4
    1142:	00001097          	auipc	ra,0x1
    1146:	ba2080e7          	jalr	-1118(ra) # 1ce4 <exit>
    114a:	bfc1                	j	111a <main+0x11a>
    114c:	8556                	mv	a0,s5
    114e:	00001097          	auipc	ra,0x1
    1152:	bf6080e7          	jalr	-1034(ra) # 1d44 <munmap>
    1156:	854e                	mv	a0,s3
    1158:	00001097          	auipc	ra,0x1
    115c:	bd4080e7          	jalr	-1068(ra) # 1d2c <close>
    1160:	60a6                	ld	ra,72(sp)
    1162:	6406                	ld	s0,64(sp)
    1164:	74e2                	ld	s1,56(sp)
    1166:	7942                	ld	s2,48(sp)
    1168:	79a2                	ld	s3,40(sp)
    116a:	7a02                	ld	s4,32(sp)
    116c:	6ae2                	ld	s5,24(sp)
    116e:	6b42                	ld	s6,16(sp)
    1170:	6ba2                	ld	s7,8(sp)
    1172:	6161                	addi	sp,sp,80
    1174:	8082                	ret

0000000000001176 <putc>:
    1176:	1101                	addi	sp,sp,-32
    1178:	ec06                	sd	ra,24(sp)
    117a:	00b107a3          	sb	a1,15(sp)
    117e:	4605                	li	a2,1
    1180:	00f10593          	addi	a1,sp,15
    1184:	00001097          	auipc	ra,0x1
    1188:	b90080e7          	jalr	-1136(ra) # 1d14 <write>
    118c:	60e2                	ld	ra,24(sp)
    118e:	6105                	addi	sp,sp,32
    1190:	8082                	ret

0000000000001192 <printint>:
    1192:	7179                	addi	sp,sp,-48
    1194:	f406                	sd	ra,40(sp)
    1196:	f022                	sd	s0,32(sp)
    1198:	ec26                	sd	s1,24(sp)
    119a:	e84a                	sd	s2,16(sp)
    119c:	84aa                	mv	s1,a0
    119e:	c299                	beqz	a3,11a4 <printint+0x12>
    11a0:	0805c363          	bltz	a1,1226 <printint+0x94>
    11a4:	2581                	sext.w	a1,a1
    11a6:	4881                	li	a7,0
    11a8:	868a                	mv	a3,sp
    11aa:	4701                	li	a4,0
    11ac:	2601                	sext.w	a2,a2
    11ae:	00002537          	lui	a0,0x2
    11b2:	ec850513          	addi	a0,a0,-312 # 1ec8 <digits>
    11b6:	883a                	mv	a6,a4
    11b8:	2705                	addiw	a4,a4,1
    11ba:	02c5f7bb          	remuw	a5,a1,a2
    11be:	1782                	slli	a5,a5,0x20
    11c0:	9381                	srli	a5,a5,0x20
    11c2:	97aa                	add	a5,a5,a0
    11c4:	0007c783          	lbu	a5,0(a5)
    11c8:	00f68023          	sb	a5,0(a3)
    11cc:	0005879b          	sext.w	a5,a1
    11d0:	02c5d5bb          	divuw	a1,a1,a2
    11d4:	0685                	addi	a3,a3,1
    11d6:	fec7f0e3          	bgeu	a5,a2,11b6 <printint+0x24>
    11da:	00088a63          	beqz	a7,11ee <printint+0x5c>
    11de:	081c                	addi	a5,sp,16
    11e0:	973e                	add	a4,a4,a5
    11e2:	02d00793          	li	a5,45
    11e6:	fef70823          	sb	a5,-16(a4)
    11ea:	0028071b          	addiw	a4,a6,2
    11ee:	02e05663          	blez	a4,121a <printint+0x88>
    11f2:	00e10433          	add	s0,sp,a4
    11f6:	fff10913          	addi	s2,sp,-1
    11fa:	993a                	add	s2,s2,a4
    11fc:	377d                	addiw	a4,a4,-1
    11fe:	1702                	slli	a4,a4,0x20
    1200:	9301                	srli	a4,a4,0x20
    1202:	40e90933          	sub	s2,s2,a4
    1206:	fff44583          	lbu	a1,-1(s0) # 2fff <crctab+0x111f>
    120a:	8526                	mv	a0,s1
    120c:	00000097          	auipc	ra,0x0
    1210:	f6a080e7          	jalr	-150(ra) # 1176 <putc>
    1214:	147d                	addi	s0,s0,-1
    1216:	ff2418e3          	bne	s0,s2,1206 <printint+0x74>
    121a:	70a2                	ld	ra,40(sp)
    121c:	7402                	ld	s0,32(sp)
    121e:	64e2                	ld	s1,24(sp)
    1220:	6942                	ld	s2,16(sp)
    1222:	6145                	addi	sp,sp,48
    1224:	8082                	ret
    1226:	40b005bb          	negw	a1,a1
    122a:	4885                	li	a7,1
    122c:	bfb5                	j	11a8 <printint+0x16>

000000000000122e <vprintf>:
    122e:	7159                	addi	sp,sp,-112
    1230:	f486                	sd	ra,104(sp)
    1232:	f0a2                	sd	s0,96(sp)
    1234:	eca6                	sd	s1,88(sp)
    1236:	e8ca                	sd	s2,80(sp)
    1238:	e4ce                	sd	s3,72(sp)
    123a:	e0d2                	sd	s4,64(sp)
    123c:	fc56                	sd	s5,56(sp)
    123e:	f85a                	sd	s6,48(sp)
    1240:	f45e                	sd	s7,40(sp)
    1242:	f062                	sd	s8,32(sp)
    1244:	ec66                	sd	s9,24(sp)
    1246:	e86a                	sd	s10,16(sp)
    1248:	e46e                	sd	s11,8(sp)
    124a:	0005c483          	lbu	s1,0(a1)
    124e:	18048a63          	beqz	s1,13e2 <vprintf+0x1b4>
    1252:	8a2a                	mv	s4,a0
    1254:	8ab2                	mv	s5,a2
    1256:	00158413          	addi	s0,a1,1
    125a:	4901                	li	s2,0
    125c:	02500993          	li	s3,37
    1260:	06400b93          	li	s7,100
    1264:	06c00c13          	li	s8,108
    1268:	07800c93          	li	s9,120
    126c:	07000d13          	li	s10,112
    1270:	00002db7          	lui	s11,0x2
    1274:	00002b37          	lui	s6,0x2
    1278:	ec8b0b13          	addi	s6,s6,-312 # 1ec8 <digits>
    127c:	a839                	j	129a <vprintf+0x6c>
    127e:	85a6                	mv	a1,s1
    1280:	8552                	mv	a0,s4
    1282:	00000097          	auipc	ra,0x0
    1286:	ef4080e7          	jalr	-268(ra) # 1176 <putc>
    128a:	a019                	j	1290 <vprintf+0x62>
    128c:	01390f63          	beq	s2,s3,12aa <vprintf+0x7c>
    1290:	0405                	addi	s0,s0,1
    1292:	fff44483          	lbu	s1,-1(s0)
    1296:	14048663          	beqz	s1,13e2 <vprintf+0x1b4>
    129a:	0004879b          	sext.w	a5,s1
    129e:	fe0917e3          	bnez	s2,128c <vprintf+0x5e>
    12a2:	fd379ee3          	bne	a5,s3,127e <vprintf+0x50>
    12a6:	893e                	mv	s2,a5
    12a8:	b7e5                	j	1290 <vprintf+0x62>
    12aa:	05778063          	beq	a5,s7,12ea <vprintf+0xbc>
    12ae:	05878c63          	beq	a5,s8,1306 <vprintf+0xd8>
    12b2:	07978863          	beq	a5,s9,1322 <vprintf+0xf4>
    12b6:	09a78463          	beq	a5,s10,133e <vprintf+0x110>
    12ba:	07300713          	li	a4,115
    12be:	0ce78263          	beq	a5,a4,1382 <vprintf+0x154>
    12c2:	06300713          	li	a4,99
    12c6:	0ee78763          	beq	a5,a4,13b4 <vprintf+0x186>
    12ca:	11378163          	beq	a5,s3,13cc <vprintf+0x19e>
    12ce:	85ce                	mv	a1,s3
    12d0:	8552                	mv	a0,s4
    12d2:	00000097          	auipc	ra,0x0
    12d6:	ea4080e7          	jalr	-348(ra) # 1176 <putc>
    12da:	85a6                	mv	a1,s1
    12dc:	8552                	mv	a0,s4
    12de:	00000097          	auipc	ra,0x0
    12e2:	e98080e7          	jalr	-360(ra) # 1176 <putc>
    12e6:	4901                	li	s2,0
    12e8:	b765                	j	1290 <vprintf+0x62>
    12ea:	008a8493          	addi	s1,s5,8
    12ee:	4685                	li	a3,1
    12f0:	4629                	li	a2,10
    12f2:	000aa583          	lw	a1,0(s5)
    12f6:	8552                	mv	a0,s4
    12f8:	00000097          	auipc	ra,0x0
    12fc:	e9a080e7          	jalr	-358(ra) # 1192 <printint>
    1300:	8aa6                	mv	s5,s1
    1302:	4901                	li	s2,0
    1304:	b771                	j	1290 <vprintf+0x62>
    1306:	008a8493          	addi	s1,s5,8
    130a:	4681                	li	a3,0
    130c:	4629                	li	a2,10
    130e:	000aa583          	lw	a1,0(s5)
    1312:	8552                	mv	a0,s4
    1314:	00000097          	auipc	ra,0x0
    1318:	e7e080e7          	jalr	-386(ra) # 1192 <printint>
    131c:	8aa6                	mv	s5,s1
    131e:	4901                	li	s2,0
    1320:	bf85                	j	1290 <vprintf+0x62>
    1322:	008a8493          	addi	s1,s5,8
    1326:	4681                	li	a3,0
    1328:	4641                	li	a2,16
    132a:	000aa583          	lw	a1,0(s5)
    132e:	8552                	mv	a0,s4
    1330:	00000097          	auipc	ra,0x0
    1334:	e62080e7          	jalr	-414(ra) # 1192 <printint>
    1338:	8aa6                	mv	s5,s1
    133a:	4901                	li	s2,0
    133c:	bf91                	j	1290 <vprintf+0x62>
    133e:	008a8913          	addi	s2,s5,8
    1342:	000aba83          	ld	s5,0(s5)
    1346:	03000593          	li	a1,48
    134a:	8552                	mv	a0,s4
    134c:	00000097          	auipc	ra,0x0
    1350:	e2a080e7          	jalr	-470(ra) # 1176 <putc>
    1354:	85e6                	mv	a1,s9
    1356:	8552                	mv	a0,s4
    1358:	00000097          	auipc	ra,0x0
    135c:	e1e080e7          	jalr	-482(ra) # 1176 <putc>
    1360:	44c1                	li	s1,16
    1362:	03cad793          	srli	a5,s5,0x3c
    1366:	97da                	add	a5,a5,s6
    1368:	0007c583          	lbu	a1,0(a5)
    136c:	8552                	mv	a0,s4
    136e:	00000097          	auipc	ra,0x0
    1372:	e08080e7          	jalr	-504(ra) # 1176 <putc>
    1376:	0a92                	slli	s5,s5,0x4
    1378:	34fd                	addiw	s1,s1,-1
    137a:	f4e5                	bnez	s1,1362 <vprintf+0x134>
    137c:	8aca                	mv	s5,s2
    137e:	4901                	li	s2,0
    1380:	bf01                	j	1290 <vprintf+0x62>
    1382:	008a8913          	addi	s2,s5,8
    1386:	000ab483          	ld	s1,0(s5)
    138a:	c085                	beqz	s1,13aa <vprintf+0x17c>
    138c:	0004c583          	lbu	a1,0(s1) # 1000 <main>
    1390:	c5b1                	beqz	a1,13dc <vprintf+0x1ae>
    1392:	8552                	mv	a0,s4
    1394:	00000097          	auipc	ra,0x0
    1398:	de2080e7          	jalr	-542(ra) # 1176 <putc>
    139c:	0485                	addi	s1,s1,1
    139e:	0004c583          	lbu	a1,0(s1)
    13a2:	f9e5                	bnez	a1,1392 <vprintf+0x164>
    13a4:	8aca                	mv	s5,s2
    13a6:	4901                	li	s2,0
    13a8:	b5e5                	j	1290 <vprintf+0x62>
    13aa:	ec0d8493          	addi	s1,s11,-320 # 1ec0 <mkdir+0x16c>
    13ae:	02800593          	li	a1,40
    13b2:	b7c5                	j	1392 <vprintf+0x164>
    13b4:	008a8493          	addi	s1,s5,8
    13b8:	000ac583          	lbu	a1,0(s5)
    13bc:	8552                	mv	a0,s4
    13be:	00000097          	auipc	ra,0x0
    13c2:	db8080e7          	jalr	-584(ra) # 1176 <putc>
    13c6:	8aa6                	mv	s5,s1
    13c8:	4901                	li	s2,0
    13ca:	b5d9                	j	1290 <vprintf+0x62>
    13cc:	85ce                	mv	a1,s3
    13ce:	8552                	mv	a0,s4
    13d0:	00000097          	auipc	ra,0x0
    13d4:	da6080e7          	jalr	-602(ra) # 1176 <putc>
    13d8:	4901                	li	s2,0
    13da:	bd5d                	j	1290 <vprintf+0x62>
    13dc:	8aca                	mv	s5,s2
    13de:	4901                	li	s2,0
    13e0:	bd45                	j	1290 <vprintf+0x62>
    13e2:	70a6                	ld	ra,104(sp)
    13e4:	7406                	ld	s0,96(sp)
    13e6:	64e6                	ld	s1,88(sp)
    13e8:	6946                	ld	s2,80(sp)
    13ea:	69a6                	ld	s3,72(sp)
    13ec:	6a06                	ld	s4,64(sp)
    13ee:	7ae2                	ld	s5,56(sp)
    13f0:	7b42                	ld	s6,48(sp)
    13f2:	7ba2                	ld	s7,40(sp)
    13f4:	7c02                	ld	s8,32(sp)
    13f6:	6ce2                	ld	s9,24(sp)
    13f8:	6d42                	ld	s10,16(sp)
    13fa:	6da2                	ld	s11,8(sp)
    13fc:	6165                	addi	sp,sp,112
    13fe:	8082                	ret

0000000000001400 <fprintf>:
    1400:	715d                	addi	sp,sp,-80
    1402:	ec06                	sd	ra,24(sp)
    1404:	f032                	sd	a2,32(sp)
    1406:	f436                	sd	a3,40(sp)
    1408:	f83a                	sd	a4,48(sp)
    140a:	fc3e                	sd	a5,56(sp)
    140c:	e0c2                	sd	a6,64(sp)
    140e:	e4c6                	sd	a7,72(sp)
    1410:	1010                	addi	a2,sp,32
    1412:	e432                	sd	a2,8(sp)
    1414:	00000097          	auipc	ra,0x0
    1418:	e1a080e7          	jalr	-486(ra) # 122e <vprintf>
    141c:	60e2                	ld	ra,24(sp)
    141e:	6161                	addi	sp,sp,80
    1420:	8082                	ret

0000000000001422 <printf>:
    1422:	711d                	addi	sp,sp,-96
    1424:	ec06                	sd	ra,24(sp)
    1426:	f42e                	sd	a1,40(sp)
    1428:	f832                	sd	a2,48(sp)
    142a:	fc36                	sd	a3,56(sp)
    142c:	e0ba                	sd	a4,64(sp)
    142e:	e4be                	sd	a5,72(sp)
    1430:	e8c2                	sd	a6,80(sp)
    1432:	ecc6                	sd	a7,88(sp)
    1434:	1030                	addi	a2,sp,40
    1436:	e432                	sd	a2,8(sp)
    1438:	85aa                	mv	a1,a0
    143a:	4505                	li	a0,1
    143c:	00000097          	auipc	ra,0x0
    1440:	df2080e7          	jalr	-526(ra) # 122e <vprintf>
    1444:	60e2                	ld	ra,24(sp)
    1446:	6125                	addi	sp,sp,96
    1448:	8082                	ret

000000000000144a <cksum>:
    144a:	cdb1                	beqz	a1,14a6 <cksum+0x5c>
    144c:	00b50833          	add	a6,a0,a1
    1450:	4781                	li	a5,0
    1452:	00002637          	lui	a2,0x2
    1456:	ee060613          	addi	a2,a2,-288 # 1ee0 <crctab>
    145a:	0505                	addi	a0,a0,1
    145c:	0087969b          	slliw	a3,a5,0x8
    1460:	0187d71b          	srliw	a4,a5,0x18
    1464:	fff54783          	lbu	a5,-1(a0)
    1468:	8f3d                	xor	a4,a4,a5
    146a:	1702                	slli	a4,a4,0x20
    146c:	9301                	srli	a4,a4,0x20
    146e:	070a                	slli	a4,a4,0x2
    1470:	9732                	add	a4,a4,a2
    1472:	431c                	lw	a5,0(a4)
    1474:	8fb5                	xor	a5,a5,a3
    1476:	2781                	sext.w	a5,a5
    1478:	fea811e3          	bne	a6,a0,145a <cksum+0x10>
    147c:	00002637          	lui	a2,0x2
    1480:	ee060613          	addi	a2,a2,-288 # 1ee0 <crctab>
    1484:	0ff5f693          	andi	a3,a1,255
    1488:	81a1                	srli	a1,a1,0x8
    148a:	0087951b          	slliw	a0,a5,0x8
    148e:	0187d71b          	srliw	a4,a5,0x18
    1492:	8f35                	xor	a4,a4,a3
    1494:	070a                	slli	a4,a4,0x2
    1496:	9732                	add	a4,a4,a2
    1498:	431c                	lw	a5,0(a4)
    149a:	8fa9                	xor	a5,a5,a0
    149c:	2781                	sext.w	a5,a5
    149e:	f1fd                	bnez	a1,1484 <cksum+0x3a>
    14a0:	fff7c513          	not	a0,a5
    14a4:	8082                	ret
    14a6:	4781                	li	a5,0
    14a8:	bfe5                	j	14a0 <cksum+0x56>

00000000000014aa <swap_bytes>:
    14aa:	ce19                	beqz	a2,14c8 <swap_bytes+0x1e>
    14ac:	87aa                	mv	a5,a0
    14ae:	962a                	add	a2,a2,a0
    14b0:	0007c703          	lbu	a4,0(a5)
    14b4:	0005c683          	lbu	a3,0(a1)
    14b8:	00d78023          	sb	a3,0(a5)
    14bc:	00e58023          	sb	a4,0(a1)
    14c0:	0785                	addi	a5,a5,1
    14c2:	0585                	addi	a1,a1,1
    14c4:	fec796e3          	bne	a5,a2,14b0 <swap_bytes+0x6>
    14c8:	8082                	ret

00000000000014ca <random_init>:
    14ca:	7139                	addi	sp,sp,-64
    14cc:	fc06                	sd	ra,56(sp)
    14ce:	f822                	sd	s0,48(sp)
    14d0:	f426                	sd	s1,40(sp)
    14d2:	f04a                	sd	s2,32(sp)
    14d4:	ec4e                	sd	s3,24(sp)
    14d6:	e852                	sd	s4,16(sp)
    14d8:	c62a                	sw	a0,12(sp)
    14da:	000037b7          	lui	a5,0x3
    14de:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    14e2:	eca5                	bnez	s1,155a <random_init+0x90>
    14e4:	00003737          	lui	a4,0x3
    14e8:	10070913          	addi	s2,a4,256 # 3100 <s>
    14ec:	10070713          	addi	a4,a4,256
    14f0:	87a6                	mv	a5,s1
    14f2:	10000693          	li	a3,256
    14f6:	00f70023          	sb	a5,0(a4)
    14fa:	2785                	addiw	a5,a5,1
    14fc:	0705                	addi	a4,a4,1
    14fe:	fed79ce3          	bne	a5,a3,14f6 <random_init+0x2c>
    1502:	4401                	li	s0,0
    1504:	000039b7          	lui	s3,0x3
    1508:	10098993          	addi	s3,s3,256 # 3100 <s>
    150c:	10000a13          	li	s4,256
    1510:	0034f793          	andi	a5,s1,3
    1514:	0818                	addi	a4,sp,16
    1516:	97ba                	add	a5,a5,a4
    1518:	ffc7c783          	lbu	a5,-4(a5)
    151c:	00094703          	lbu	a4,0(s2) # 10000000 <s+0xfffcf00>
    1520:	9fb9                	addw	a5,a5,a4
    1522:	9c3d                	addw	s0,s0,a5
    1524:	0ff47413          	andi	s0,s0,255
    1528:	4605                	li	a2,1
    152a:	008985b3          	add	a1,s3,s0
    152e:	854a                	mv	a0,s2
    1530:	00000097          	auipc	ra,0x0
    1534:	f7a080e7          	jalr	-134(ra) # 14aa <swap_bytes>
    1538:	2485                	addiw	s1,s1,1
    153a:	0905                	addi	s2,s2,1
    153c:	fd449ae3          	bne	s1,s4,1510 <random_init+0x46>
    1540:	000037b7          	lui	a5,0x3
    1544:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1548:	000037b7          	lui	a5,0x3
    154c:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    1550:	000037b7          	lui	a5,0x3
    1554:	4705                	li	a4,1
    1556:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    155a:	70e2                	ld	ra,56(sp)
    155c:	7442                	ld	s0,48(sp)
    155e:	74a2                	ld	s1,40(sp)
    1560:	7902                	ld	s2,32(sp)
    1562:	69e2                	ld	s3,24(sp)
    1564:	6a42                	ld	s4,16(sp)
    1566:	6121                	addi	sp,sp,64
    1568:	8082                	ret

000000000000156a <random_bytes>:
    156a:	7139                	addi	sp,sp,-64
    156c:	fc06                	sd	ra,56(sp)
    156e:	f822                	sd	s0,48(sp)
    1570:	f426                	sd	s1,40(sp)
    1572:	f04a                	sd	s2,32(sp)
    1574:	ec4e                	sd	s3,24(sp)
    1576:	e852                	sd	s4,16(sp)
    1578:	e456                	sd	s5,8(sp)
    157a:	e05a                	sd	s6,0(sp)
    157c:	892a                	mv	s2,a0
    157e:	8aae                	mv	s5,a1
    1580:	000037b7          	lui	a5,0x3
    1584:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1588:	c3c1                	beqz	a5,1608 <random_bytes+0x9e>
    158a:	060a8563          	beqz	s5,15f4 <random_bytes+0x8a>
    158e:	9aca                	add	s5,s5,s2
    1590:	00003a37          	lui	s4,0x3
    1594:	000034b7          	lui	s1,0x3
    1598:	10048493          	addi	s1,s1,256 # 3100 <s>
    159c:	000039b7          	lui	s3,0x3
    15a0:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    15a4:	2505                	addiw	a0,a0,1
    15a6:	0ff57513          	andi	a0,a0,255
    15aa:	0eaa0aa3          	sb	a0,245(s4)
    15ae:	00a48b33          	add	s6,s1,a0
    15b2:	000b4403          	lbu	s0,0(s6)
    15b6:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    15ba:	9c3d                	addw	s0,s0,a5
    15bc:	0ff47413          	andi	s0,s0,255
    15c0:	0e898a23          	sb	s0,244(s3)
    15c4:	4605                	li	a2,1
    15c6:	008485b3          	add	a1,s1,s0
    15ca:	855a                	mv	a0,s6
    15cc:	00000097          	auipc	ra,0x0
    15d0:	ede080e7          	jalr	-290(ra) # 14aa <swap_bytes>
    15d4:	9426                	add	s0,s0,s1
    15d6:	000b4783          	lbu	a5,0(s6)
    15da:	00044703          	lbu	a4,0(s0)
    15de:	9fb9                	addw	a5,a5,a4
    15e0:	0ff7f793          	andi	a5,a5,255
    15e4:	97a6                	add	a5,a5,s1
    15e6:	0007c783          	lbu	a5,0(a5)
    15ea:	00f90023          	sb	a5,0(s2)
    15ee:	0905                	addi	s2,s2,1
    15f0:	fb2a98e3          	bne	s5,s2,15a0 <random_bytes+0x36>
    15f4:	70e2                	ld	ra,56(sp)
    15f6:	7442                	ld	s0,48(sp)
    15f8:	74a2                	ld	s1,40(sp)
    15fa:	7902                	ld	s2,32(sp)
    15fc:	69e2                	ld	s3,24(sp)
    15fe:	6a42                	ld	s4,16(sp)
    1600:	6aa2                	ld	s5,8(sp)
    1602:	6b02                	ld	s6,0(sp)
    1604:	6121                	addi	sp,sp,64
    1606:	8082                	ret
    1608:	4501                	li	a0,0
    160a:	00000097          	auipc	ra,0x0
    160e:	ec0080e7          	jalr	-320(ra) # 14ca <random_init>
    1612:	bfa5                	j	158a <random_bytes+0x20>

0000000000001614 <random_ulong>:
    1614:	1101                	addi	sp,sp,-32
    1616:	ec06                	sd	ra,24(sp)
    1618:	45a1                	li	a1,8
    161a:	0028                	addi	a0,sp,8
    161c:	00000097          	auipc	ra,0x0
    1620:	f4e080e7          	jalr	-178(ra) # 156a <random_bytes>
    1624:	6522                	ld	a0,8(sp)
    1626:	60e2                	ld	ra,24(sp)
    1628:	6105                	addi	sp,sp,32
    162a:	8082                	ret

000000000000162c <shuffle>:
    162c:	c9b9                	beqz	a1,1682 <shuffle+0x56>
    162e:	7179                	addi	sp,sp,-48
    1630:	f406                	sd	ra,40(sp)
    1632:	f022                	sd	s0,32(sp)
    1634:	ec26                	sd	s1,24(sp)
    1636:	e84a                	sd	s2,16(sp)
    1638:	e44e                	sd	s3,8(sp)
    163a:	e052                	sd	s4,0(sp)
    163c:	8a2a                	mv	s4,a0
    163e:	89ae                	mv	s3,a1
    1640:	84b2                	mv	s1,a2
    1642:	892a                	mv	s2,a0
    1644:	4401                	li	s0,0
    1646:	00000097          	auipc	ra,0x0
    164a:	fce080e7          	jalr	-50(ra) # 1614 <random_ulong>
    164e:	408985b3          	sub	a1,s3,s0
    1652:	02b575b3          	remu	a1,a0,a1
    1656:	95a2                	add	a1,a1,s0
    1658:	029585b3          	mul	a1,a1,s1
    165c:	8626                	mv	a2,s1
    165e:	95d2                	add	a1,a1,s4
    1660:	854a                	mv	a0,s2
    1662:	00000097          	auipc	ra,0x0
    1666:	e48080e7          	jalr	-440(ra) # 14aa <swap_bytes>
    166a:	0405                	addi	s0,s0,1
    166c:	9926                	add	s2,s2,s1
    166e:	fc899ce3          	bne	s3,s0,1646 <shuffle+0x1a>
    1672:	70a2                	ld	ra,40(sp)
    1674:	7402                	ld	s0,32(sp)
    1676:	64e2                	ld	s1,24(sp)
    1678:	6942                	ld	s2,16(sp)
    167a:	69a2                	ld	s3,8(sp)
    167c:	6a02                	ld	s4,0(sp)
    167e:	6145                	addi	sp,sp,48
    1680:	8082                	ret
    1682:	8082                	ret

0000000000001684 <arc4_init>:
    1684:	100500a3          	sb	zero,257(a0)
    1688:	10050023          	sb	zero,256(a0)
    168c:	4781                	li	a5,0
    168e:	10000693          	li	a3,256
    1692:	00f50733          	add	a4,a0,a5
    1696:	00f70023          	sb	a5,0(a4)
    169a:	0785                	addi	a5,a5,1
    169c:	fed79be3          	bne	a5,a3,1692 <arc4_init+0xe>
    16a0:	86aa                	mv	a3,a0
    16a2:	10050e13          	addi	t3,a0,256
    16a6:	4701                	li	a4,0
    16a8:	4781                	li	a5,0
    16aa:	0006c883          	lbu	a7,0(a3)
    16ae:	00f58833          	add	a6,a1,a5
    16b2:	00084803          	lbu	a6,0(a6)
    16b6:	00e8873b          	addw	a4,a7,a4
    16ba:	00e8073b          	addw	a4,a6,a4
    16be:	0ff77713          	andi	a4,a4,255
    16c2:	00e50833          	add	a6,a0,a4
    16c6:	00084303          	lbu	t1,0(a6)
    16ca:	00668023          	sb	t1,0(a3)
    16ce:	01180023          	sb	a7,0(a6)
    16d2:	0785                	addi	a5,a5,1
    16d4:	00c7b833          	sltu	a6,a5,a2
    16d8:	41000833          	neg	a6,a6
    16dc:	0107f7b3          	and	a5,a5,a6
    16e0:	0685                	addi	a3,a3,1
    16e2:	fdc694e3          	bne	a3,t3,16aa <arc4_init+0x26>
    16e6:	8082                	ret

00000000000016e8 <arc4_crypt>:
    16e8:	10054e03          	lbu	t3,256(a0)
    16ec:	10154803          	lbu	a6,257(a0)
    16f0:	fff60e93          	addi	t4,a2,-1
    16f4:	c225                	beqz	a2,1754 <arc4_crypt+0x6c>
    16f6:	00c588b3          	add	a7,a1,a2
    16fa:	86ae                	mv	a3,a1
    16fc:	001e031b          	addiw	t1,t3,1
    1700:	40b3033b          	subw	t1,t1,a1
    1704:	00d3073b          	addw	a4,t1,a3
    1708:	0ff77713          	andi	a4,a4,255
    170c:	972a                	add	a4,a4,a0
    170e:	00074603          	lbu	a2,0(a4)
    1712:	0106083b          	addw	a6,a2,a6
    1716:	0ff87813          	andi	a6,a6,255
    171a:	010507b3          	add	a5,a0,a6
    171e:	0007c583          	lbu	a1,0(a5)
    1722:	00b70023          	sb	a1,0(a4)
    1726:	00c78023          	sb	a2,0(a5)
    172a:	0685                	addi	a3,a3,1
    172c:	00074783          	lbu	a5,0(a4)
    1730:	9fb1                	addw	a5,a5,a2
    1732:	0ff7f793          	andi	a5,a5,255
    1736:	97aa                	add	a5,a5,a0
    1738:	0007c783          	lbu	a5,0(a5)
    173c:	fff6c703          	lbu	a4,-1(a3)
    1740:	8fb9                	xor	a5,a5,a4
    1742:	fef68fa3          	sb	a5,-1(a3)
    1746:	fb169fe3          	bne	a3,a7,1704 <arc4_crypt+0x1c>
    174a:	2e85                	addiw	t4,t4,1
    174c:	01ce8e3b          	addw	t3,t4,t3
    1750:	0ffe7e13          	andi	t3,t3,255
    1754:	11c50023          	sb	t3,256(a0)
    1758:	110500a3          	sb	a6,257(a0)
    175c:	8082                	ret

000000000000175e <_main>:
    175e:	1141                	addi	sp,sp,-16
    1760:	e406                	sd	ra,8(sp)
    1762:	00000097          	auipc	ra,0x0
    1766:	89e080e7          	jalr	-1890(ra) # 1000 <main>
    176a:	4501                	li	a0,0
    176c:	00000097          	auipc	ra,0x0
    1770:	578080e7          	jalr	1400(ra) # 1ce4 <exit>
    1774:	60a2                	ld	ra,8(sp)
    1776:	0141                	addi	sp,sp,16
    1778:	8082                	ret

000000000000177a <strcmp>:
    177a:	00054783          	lbu	a5,0(a0)
    177e:	cb91                	beqz	a5,1792 <strcmp+0x18>
    1780:	0005c703          	lbu	a4,0(a1)
    1784:	00f71763          	bne	a4,a5,1792 <strcmp+0x18>
    1788:	0505                	addi	a0,a0,1
    178a:	0585                	addi	a1,a1,1
    178c:	00054783          	lbu	a5,0(a0)
    1790:	fbe5                	bnez	a5,1780 <strcmp+0x6>
    1792:	0005c503          	lbu	a0,0(a1)
    1796:	40a7853b          	subw	a0,a5,a0
    179a:	8082                	ret

000000000000179c <strcpy>:
    179c:	87aa                	mv	a5,a0
    179e:	0585                	addi	a1,a1,1
    17a0:	0785                	addi	a5,a5,1
    17a2:	fff5c703          	lbu	a4,-1(a1)
    17a6:	fee78fa3          	sb	a4,-1(a5)
    17aa:	fb75                	bnez	a4,179e <strcpy+0x2>
    17ac:	8082                	ret

00000000000017ae <strlen>:
    17ae:	00054783          	lbu	a5,0(a0)
    17b2:	cf81                	beqz	a5,17ca <strlen+0x1c>
    17b4:	0505                	addi	a0,a0,1
    17b6:	87aa                	mv	a5,a0
    17b8:	4685                	li	a3,1
    17ba:	9e89                	subw	a3,a3,a0
    17bc:	00f6853b          	addw	a0,a3,a5
    17c0:	0785                	addi	a5,a5,1
    17c2:	fff7c703          	lbu	a4,-1(a5)
    17c6:	fb7d                	bnez	a4,17bc <strlen+0xe>
    17c8:	8082                	ret
    17ca:	4501                	li	a0,0
    17cc:	8082                	ret

00000000000017ce <memset>:
    17ce:	ca19                	beqz	a2,17e4 <memset+0x16>
    17d0:	87aa                	mv	a5,a0
    17d2:	1602                	slli	a2,a2,0x20
    17d4:	9201                	srli	a2,a2,0x20
    17d6:	00a60733          	add	a4,a2,a0
    17da:	00b78023          	sb	a1,0(a5)
    17de:	0785                	addi	a5,a5,1
    17e0:	fee79de3          	bne	a5,a4,17da <memset+0xc>
    17e4:	8082                	ret

00000000000017e6 <memcmp>:
    17e6:	1101                	addi	sp,sp,-32
    17e8:	ec06                	sd	ra,24(sp)
    17ea:	e822                	sd	s0,16(sp)
    17ec:	e426                	sd	s1,8(sp)
    17ee:	e04a                	sd	s2,0(sp)
    17f0:	892a                	mv	s2,a0
    17f2:	842e                	mv	s0,a1
    17f4:	84b2                	mv	s1,a2
    17f6:	c915                	beqz	a0,182a <memcmp+0x44>
    17f8:	c5ad                	beqz	a1,1862 <memcmp+0x7c>
    17fa:	fff60713          	addi	a4,a2,-1
    17fe:	c645                	beqz	a2,18a6 <memcmp+0xc0>
    1800:	87ca                	mv	a5,s2
    1802:	00190613          	addi	a2,s2,1
    1806:	963a                	add	a2,a2,a4
    1808:	0007c683          	lbu	a3,0(a5)
    180c:	00044703          	lbu	a4,0(s0)
    1810:	08e69463          	bne	a3,a4,1898 <memcmp+0xb2>
    1814:	0785                	addi	a5,a5,1
    1816:	0405                	addi	s0,s0,1
    1818:	fec798e3          	bne	a5,a2,1808 <memcmp+0x22>
    181c:	4501                	li	a0,0
    181e:	60e2                	ld	ra,24(sp)
    1820:	6442                	ld	s0,16(sp)
    1822:	64a2                	ld	s1,8(sp)
    1824:	6902                	ld	s2,0(sp)
    1826:	6105                	addi	sp,sp,32
    1828:	8082                	ret
    182a:	4501                	li	a0,0
    182c:	da6d                	beqz	a2,181e <memcmp+0x38>
    182e:	03200693          	li	a3,50
    1832:	00002637          	lui	a2,0x2
    1836:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    183a:	000025b7          	lui	a1,0x2
    183e:	2f058593          	addi	a1,a1,752 # 22f0 <crctab+0x410>
    1842:	4509                	li	a0,2
    1844:	00000097          	auipc	ra,0x0
    1848:	bbc080e7          	jalr	-1092(ra) # 1400 <fprintf>
    184c:	650d                	lui	a0,0x3
    184e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1852:	00000097          	auipc	ra,0x0
    1856:	492080e7          	jalr	1170(ra) # 1ce4 <exit>
    185a:	fff48713          	addi	a4,s1,-1
    185e:	f04d                	bnez	s0,1800 <memcmp+0x1a>
    1860:	a011                	j	1864 <memcmp+0x7e>
    1862:	c221                	beqz	a2,18a2 <memcmp+0xbc>
    1864:	03300693          	li	a3,51
    1868:	00002637          	lui	a2,0x2
    186c:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    1870:	000025b7          	lui	a1,0x2
    1874:	33858593          	addi	a1,a1,824 # 2338 <crctab+0x458>
    1878:	4509                	li	a0,2
    187a:	00000097          	auipc	ra,0x0
    187e:	b86080e7          	jalr	-1146(ra) # 1400 <fprintf>
    1882:	650d                	lui	a0,0x3
    1884:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1888:	00000097          	auipc	ra,0x0
    188c:	45c080e7          	jalr	1116(ra) # 1ce4 <exit>
    1890:	fff48713          	addi	a4,s1,-1
    1894:	4401                	li	s0,0
    1896:	b7ad                	j	1800 <memcmp+0x1a>
    1898:	4505                	li	a0,1
    189a:	f8d762e3          	bltu	a4,a3,181e <memcmp+0x38>
    189e:	557d                	li	a0,-1
    18a0:	bfbd                	j	181e <memcmp+0x38>
    18a2:	4501                	li	a0,0
    18a4:	bfad                	j	181e <memcmp+0x38>
    18a6:	4501                	li	a0,0
    18a8:	bf9d                	j	181e <memcmp+0x38>

00000000000018aa <memcpy>:
    18aa:	1101                	addi	sp,sp,-32
    18ac:	ec06                	sd	ra,24(sp)
    18ae:	e822                	sd	s0,16(sp)
    18b0:	e426                	sd	s1,8(sp)
    18b2:	e04a                	sd	s2,0(sp)
    18b4:	84aa                	mv	s1,a0
    18b6:	842e                	mv	s0,a1
    18b8:	8932                	mv	s2,a2
    18ba:	c51d                	beqz	a0,18e8 <memcpy+0x3e>
    18bc:	c1ad                	beqz	a1,191e <memcpy+0x74>
    18be:	fff60693          	addi	a3,a2,-1
    18c2:	ce01                	beqz	a2,18da <memcpy+0x30>
    18c4:	0685                	addi	a3,a3,1
    18c6:	96a6                	add	a3,a3,s1
    18c8:	87a6                	mv	a5,s1
    18ca:	0405                	addi	s0,s0,1
    18cc:	0785                	addi	a5,a5,1
    18ce:	fff44703          	lbu	a4,-1(s0)
    18d2:	fee78fa3          	sb	a4,-1(a5)
    18d6:	fed79ae3          	bne	a5,a3,18ca <memcpy+0x20>
    18da:	8526                	mv	a0,s1
    18dc:	60e2                	ld	ra,24(sp)
    18de:	6442                	ld	s0,16(sp)
    18e0:	64a2                	ld	s1,8(sp)
    18e2:	6902                	ld	s2,0(sp)
    18e4:	6105                	addi	sp,sp,32
    18e6:	8082                	ret
    18e8:	da6d                	beqz	a2,18da <memcpy+0x30>
    18ea:	04000693          	li	a3,64
    18ee:	00002637          	lui	a2,0x2
    18f2:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    18f6:	000025b7          	lui	a1,0x2
    18fa:	38058593          	addi	a1,a1,896 # 2380 <crctab+0x4a0>
    18fe:	4509                	li	a0,2
    1900:	00000097          	auipc	ra,0x0
    1904:	b00080e7          	jalr	-1280(ra) # 1400 <fprintf>
    1908:	650d                	lui	a0,0x3
    190a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    190e:	00000097          	auipc	ra,0x0
    1912:	3d6080e7          	jalr	982(ra) # 1ce4 <exit>
    1916:	fff90693          	addi	a3,s2,-1
    191a:	f44d                	bnez	s0,18c4 <memcpy+0x1a>
    191c:	a011                	j	1920 <memcpy+0x76>
    191e:	de55                	beqz	a2,18da <memcpy+0x30>
    1920:	04100693          	li	a3,65
    1924:	00002637          	lui	a2,0x2
    1928:	2e060613          	addi	a2,a2,736 # 22e0 <crctab+0x400>
    192c:	000025b7          	lui	a1,0x2
    1930:	3c858593          	addi	a1,a1,968 # 23c8 <crctab+0x4e8>
    1934:	4509                	li	a0,2
    1936:	00000097          	auipc	ra,0x0
    193a:	aca080e7          	jalr	-1334(ra) # 1400 <fprintf>
    193e:	650d                	lui	a0,0x3
    1940:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1944:	00000097          	auipc	ra,0x0
    1948:	3a0080e7          	jalr	928(ra) # 1ce4 <exit>
    194c:	fff90693          	addi	a3,s2,-1
    1950:	4401                	li	s0,0
    1952:	bf8d                	j	18c4 <memcpy+0x1a>

0000000000001954 <itoa>:
    1954:	1101                	addi	sp,sp,-32
    1956:	ec06                	sd	ra,24(sp)
    1958:	e822                	sd	s0,16(sp)
    195a:	e426                	sd	s1,8(sp)
    195c:	842a                	mv	s0,a0
    195e:	41f5d71b          	sraiw	a4,a1,0x1f
    1962:	00e5c7b3          	xor	a5,a1,a4
    1966:	9f99                	subw	a5,a5,a4
    1968:	84aa                	mv	s1,a0
    196a:	862a                	mv	a2,a0
    196c:	4681                	li	a3,0
    196e:	4529                	li	a0,10
    1970:	4825                	li	a6,9
    1972:	88b6                	mv	a7,a3
    1974:	2685                	addiw	a3,a3,1
    1976:	02a7e73b          	remw	a4,a5,a0
    197a:	0307071b          	addiw	a4,a4,48
    197e:	00e60023          	sb	a4,0(a2)
    1982:	873e                	mv	a4,a5
    1984:	02a7c7bb          	divw	a5,a5,a0
    1988:	0605                	addi	a2,a2,1
    198a:	fee844e3          	blt	a6,a4,1972 <itoa+0x1e>
    198e:	0405c863          	bltz	a1,19de <itoa+0x8a>
    1992:	96a2                	add	a3,a3,s0
    1994:	00068023          	sb	zero,0(a3)
    1998:	8522                	mv	a0,s0
    199a:	00000097          	auipc	ra,0x0
    199e:	e14080e7          	jalr	-492(ra) # 17ae <strlen>
    19a2:	fff5071b          	addiw	a4,a0,-1
    19a6:	02e05763          	blez	a4,19d4 <itoa+0x80>
    19aa:	9722                	add	a4,a4,s0
    19ac:	4681                	li	a3,0
    19ae:	0004c783          	lbu	a5,0(s1)
    19b2:	00074603          	lbu	a2,0(a4)
    19b6:	00c48023          	sb	a2,0(s1)
    19ba:	00f70023          	sb	a5,0(a4)
    19be:	0016879b          	addiw	a5,a3,1
    19c2:	0007869b          	sext.w	a3,a5
    19c6:	0485                	addi	s1,s1,1
    19c8:	177d                	addi	a4,a4,-1
    19ca:	fff7c793          	not	a5,a5
    19ce:	9fa9                	addw	a5,a5,a0
    19d0:	fcf6cfe3          	blt	a3,a5,19ae <itoa+0x5a>
    19d4:	60e2                	ld	ra,24(sp)
    19d6:	6442                	ld	s0,16(sp)
    19d8:	64a2                	ld	s1,8(sp)
    19da:	6105                	addi	sp,sp,32
    19dc:	8082                	ret
    19de:	96a2                	add	a3,a3,s0
    19e0:	02d00793          	li	a5,45
    19e4:	00f68023          	sb	a5,0(a3)
    19e8:	0028869b          	addiw	a3,a7,2
    19ec:	b75d                	j	1992 <itoa+0x3e>

00000000000019ee <atoi>:
    19ee:	00054783          	lbu	a5,0(a0)
    19f2:	02000713          	li	a4,32
    19f6:	00e79763          	bne	a5,a4,1a04 <atoi+0x16>
    19fa:	0505                	addi	a0,a0,1
    19fc:	00054783          	lbu	a5,0(a0)
    1a00:	fee78de3          	beq	a5,a4,19fa <atoi+0xc>
    1a04:	02b00713          	li	a4,43
    1a08:	04e78663          	beq	a5,a4,1a54 <atoi+0x66>
    1a0c:	02d00713          	li	a4,45
    1a10:	4805                	li	a6,1
    1a12:	04e78463          	beq	a5,a4,1a5a <atoi+0x6c>
    1a16:	00054683          	lbu	a3,0(a0)
    1a1a:	fd06879b          	addiw	a5,a3,-48
    1a1e:	0ff7f793          	andi	a5,a5,255
    1a22:	4725                	li	a4,9
    1a24:	02f76e63          	bltu	a4,a5,1a60 <atoi+0x72>
    1a28:	4601                	li	a2,0
    1a2a:	45a5                	li	a1,9
    1a2c:	0505                	addi	a0,a0,1
    1a2e:	0026179b          	slliw	a5,a2,0x2
    1a32:	9fb1                	addw	a5,a5,a2
    1a34:	0017979b          	slliw	a5,a5,0x1
    1a38:	9fb5                	addw	a5,a5,a3
    1a3a:	fd07861b          	addiw	a2,a5,-48
    1a3e:	00054683          	lbu	a3,0(a0)
    1a42:	fd06871b          	addiw	a4,a3,-48
    1a46:	0ff77713          	andi	a4,a4,255
    1a4a:	fee5f1e3          	bgeu	a1,a4,1a2c <atoi+0x3e>
    1a4e:	02c8053b          	mulw	a0,a6,a2
    1a52:	8082                	ret
    1a54:	0505                	addi	a0,a0,1
    1a56:	4805                	li	a6,1
    1a58:	bf7d                	j	1a16 <atoi+0x28>
    1a5a:	0505                	addi	a0,a0,1
    1a5c:	587d                	li	a6,-1
    1a5e:	bf65                	j	1a16 <atoi+0x28>
    1a60:	4601                	li	a2,0
    1a62:	b7f5                	j	1a4e <atoi+0x60>

0000000000001a64 <check_file_handle>:
    1a64:	d8010113          	addi	sp,sp,-640
    1a68:	26113c23          	sd	ra,632(sp)
    1a6c:	26813823          	sd	s0,624(sp)
    1a70:	26913423          	sd	s1,616(sp)
    1a74:	27213023          	sd	s2,608(sp)
    1a78:	25313c23          	sd	s3,600(sp)
    1a7c:	25413823          	sd	s4,592(sp)
    1a80:	25513423          	sd	s5,584(sp)
    1a84:	25613023          	sd	s6,576(sp)
    1a88:	23713c23          	sd	s7,568(sp)
    1a8c:	23813823          	sd	s8,560(sp)
    1a90:	23913423          	sd	s9,552(sp)
    1a94:	23a13023          	sd	s10,544(sp)
    1a98:	21b13c23          	sd	s11,536(sp)
    1a9c:	8baa                	mv	s7,a0
    1a9e:	8a2e                	mv	s4,a1
    1aa0:	8c32                	mv	s8,a2
    1aa2:	89b6                	mv	s3,a3
    1aa4:	040c                	addi	a1,sp,512
    1aa6:	00000097          	auipc	ra,0x0
    1aaa:	28e080e7          	jalr	654(ra) # 1d34 <fstat>
    1aae:	20813603          	ld	a2,520(sp)
    1ab2:	03361163          	bne	a2,s3,1ad4 <check_file_handle+0x70>
    1ab6:	06098763          	beqz	s3,1b24 <check_file_handle+0xc0>
    1aba:	4901                	li	s2,0
    1abc:	20000a93          	li	s5,512
    1ac0:	00002cb7          	lui	s9,0x2
    1ac4:	00002db7          	lui	s11,0x2
    1ac8:	6b0d                	lui	s6,0x3
    1aca:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1ace:	00002d37          	lui	s10,0x2
    1ad2:	aa39                	j	1bf0 <check_file_handle+0x18c>
    1ad4:	86ce                	mv	a3,s3
    1ad6:	85d2                	mv	a1,s4
    1ad8:	00002537          	lui	a0,0x2
    1adc:	41050513          	addi	a0,a0,1040 # 2410 <crctab+0x530>
    1ae0:	00000097          	auipc	ra,0x0
    1ae4:	942080e7          	jalr	-1726(ra) # 1422 <printf>
    1ae8:	fc0999e3          	bnez	s3,1aba <check_file_handle+0x56>
    1aec:	20813683          	ld	a3,520(sp)
    1af0:	03368a63          	beq	a3,s3,1b24 <check_file_handle+0xc0>
    1af4:	0a600813          	li	a6,166
    1af8:	000027b7          	lui	a5,0x2
    1afc:	2e078793          	addi	a5,a5,736 # 22e0 <crctab+0x400>
    1b00:	874e                	mv	a4,s3
    1b02:	8652                	mv	a2,s4
    1b04:	000025b7          	lui	a1,0x2
    1b08:	4e058593          	addi	a1,a1,1248 # 24e0 <crctab+0x600>
    1b0c:	4509                	li	a0,2
    1b0e:	00000097          	auipc	ra,0x0
    1b12:	8f2080e7          	jalr	-1806(ra) # 1400 <fprintf>
    1b16:	650d                	lui	a0,0x3
    1b18:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b1c:	00000097          	auipc	ra,0x0
    1b20:	1c8080e7          	jalr	456(ra) # 1ce4 <exit>
    1b24:	85d2                	mv	a1,s4
    1b26:	00002537          	lui	a0,0x2
    1b2a:	52850513          	addi	a0,a0,1320 # 2528 <crctab+0x648>
    1b2e:	00000097          	auipc	ra,0x0
    1b32:	8f4080e7          	jalr	-1804(ra) # 1422 <printf>
    1b36:	27813083          	ld	ra,632(sp)
    1b3a:	27013403          	ld	s0,624(sp)
    1b3e:	26813483          	ld	s1,616(sp)
    1b42:	26013903          	ld	s2,608(sp)
    1b46:	25813983          	ld	s3,600(sp)
    1b4a:	25013a03          	ld	s4,592(sp)
    1b4e:	24813a83          	ld	s5,584(sp)
    1b52:	24013b03          	ld	s6,576(sp)
    1b56:	23813b83          	ld	s7,568(sp)
    1b5a:	23013c03          	ld	s8,560(sp)
    1b5e:	22813c83          	ld	s9,552(sp)
    1b62:	22013d03          	ld	s10,544(sp)
    1b66:	21813d83          	ld	s11,536(sp)
    1b6a:	28010113          	addi	sp,sp,640
    1b6e:	8082                	ret
    1b70:	09d00893          	li	a7,157
    1b74:	2e0c8813          	addi	a6,s9,736 # 22e0 <crctab+0x400>
    1b78:	87aa                	mv	a5,a0
    1b7a:	8752                	mv	a4,s4
    1b7c:	86ca                	mv	a3,s2
    1b7e:	8622                	mv	a2,s0
    1b80:	440d8593          	addi	a1,s11,1088 # 2440 <crctab+0x560>
    1b84:	4509                	li	a0,2
    1b86:	00000097          	auipc	ra,0x0
    1b8a:	87a080e7          	jalr	-1926(ra) # 1400 <fprintf>
    1b8e:	855a                	mv	a0,s6
    1b90:	00000097          	auipc	ra,0x0
    1b94:	154080e7          	jalr	340(ra) # 1ce4 <exit>
    1b98:	a89d                	j	1c0e <check_file_handle+0x1aa>
    1b9a:	00160593          	addi	a1,a2,1
    1b9e:	0285f163          	bgeu	a1,s0,1bc0 <check_file_handle+0x15c>
    1ba2:	00c10733          	add	a4,sp,a2
    1ba6:	00b487b3          	add	a5,s1,a1
    1baa:	00174683          	lbu	a3,1(a4)
    1bae:	0007c783          	lbu	a5,0(a5)
    1bb2:	00f68763          	beq	a3,a5,1bc0 <check_file_handle+0x15c>
    1bb6:	0585                	addi	a1,a1,1
    1bb8:	0705                	addi	a4,a4,1
    1bba:	feb416e3          	bne	s0,a1,1ba6 <check_file_handle+0x142>
    1bbe:	85a2                	mv	a1,s0
    1bc0:	08100813          	li	a6,129
    1bc4:	2e0c8793          	addi	a5,s9,736
    1bc8:	8752                	mv	a4,s4
    1bca:	012606b3          	add	a3,a2,s2
    1bce:	40c58633          	sub	a2,a1,a2
    1bd2:	488d0593          	addi	a1,s10,1160 # 2488 <crctab+0x5a8>
    1bd6:	4509                	li	a0,2
    1bd8:	00000097          	auipc	ra,0x0
    1bdc:	828080e7          	jalr	-2008(ra) # 1400 <fprintf>
    1be0:	855a                	mv	a0,s6
    1be2:	00000097          	auipc	ra,0x0
    1be6:	102080e7          	jalr	258(ra) # 1ce4 <exit>
    1bea:	9922                	add	s2,s2,s0
    1bec:	f13970e3          	bgeu	s2,s3,1aec <check_file_handle+0x88>
    1bf0:	41298433          	sub	s0,s3,s2
    1bf4:	008af363          	bgeu	s5,s0,1bfa <check_file_handle+0x196>
    1bf8:	8456                	mv	s0,s5
    1bfa:	0004061b          	sext.w	a2,s0
    1bfe:	858a                	mv	a1,sp
    1c00:	855e                	mv	a0,s7
    1c02:	00000097          	auipc	ra,0x0
    1c06:	10a080e7          	jalr	266(ra) # 1d0c <read>
    1c0a:	f68513e3          	bne	a0,s0,1b70 <check_file_handle+0x10c>
    1c0e:	012c04b3          	add	s1,s8,s2
    1c12:	8622                	mv	a2,s0
    1c14:	85a6                	mv	a1,s1
    1c16:	850a                	mv	a0,sp
    1c18:	00000097          	auipc	ra,0x0
    1c1c:	bce080e7          	jalr	-1074(ra) # 17e6 <memcmp>
    1c20:	d569                	beqz	a0,1bea <check_file_handle+0x186>
    1c22:	03298163          	beq	s3,s2,1c44 <check_file_handle+0x1e0>
    1c26:	870a                	mv	a4,sp
    1c28:	4601                	li	a2,0
    1c2a:	00c487b3          	add	a5,s1,a2
    1c2e:	00074683          	lbu	a3,0(a4)
    1c32:	0007c783          	lbu	a5,0(a5)
    1c36:	f6f692e3          	bne	a3,a5,1b9a <check_file_handle+0x136>
    1c3a:	0605                	addi	a2,a2,1
    1c3c:	0705                	addi	a4,a4,1
    1c3e:	fe8666e3          	bltu	a2,s0,1c2a <check_file_handle+0x1c6>
    1c42:	bfa1                	j	1b9a <check_file_handle+0x136>
    1c44:	4601                	li	a2,0
    1c46:	4585                	li	a1,1
    1c48:	bfa5                	j	1bc0 <check_file_handle+0x15c>

0000000000001c4a <check_file>:
    1c4a:	7179                	addi	sp,sp,-48
    1c4c:	f406                	sd	ra,40(sp)
    1c4e:	f022                	sd	s0,32(sp)
    1c50:	ec26                	sd	s1,24(sp)
    1c52:	e84a                	sd	s2,16(sp)
    1c54:	e44e                	sd	s3,8(sp)
    1c56:	84aa                	mv	s1,a0
    1c58:	892e                	mv	s2,a1
    1c5a:	89b2                	mv	s3,a2
    1c5c:	4581                	li	a1,0
    1c5e:	00000097          	auipc	ra,0x0
    1c62:	0a6080e7          	jalr	166(ra) # 1d04 <open>
    1c66:	842a                	mv	s0,a0
    1c68:	4789                	li	a5,2
    1c6a:	02a7df63          	bge	a5,a0,1ca8 <check_file+0x5e>
    1c6e:	86ce                	mv	a3,s3
    1c70:	864a                	mv	a2,s2
    1c72:	85a6                	mv	a1,s1
    1c74:	8522                	mv	a0,s0
    1c76:	00000097          	auipc	ra,0x0
    1c7a:	dee080e7          	jalr	-530(ra) # 1a64 <check_file_handle>
    1c7e:	85a6                	mv	a1,s1
    1c80:	00002537          	lui	a0,0x2
    1c84:	5b050513          	addi	a0,a0,1456 # 25b0 <crctab+0x6d0>
    1c88:	fffff097          	auipc	ra,0xfffff
    1c8c:	79a080e7          	jalr	1946(ra) # 1422 <printf>
    1c90:	8522                	mv	a0,s0
    1c92:	00000097          	auipc	ra,0x0
    1c96:	09a080e7          	jalr	154(ra) # 1d2c <close>
    1c9a:	70a2                	ld	ra,40(sp)
    1c9c:	7402                	ld	s0,32(sp)
    1c9e:	64e2                	ld	s1,24(sp)
    1ca0:	6942                	ld	s2,16(sp)
    1ca2:	69a2                	ld	s3,8(sp)
    1ca4:	6145                	addi	sp,sp,48
    1ca6:	8082                	ret
    1ca8:	0ae00713          	li	a4,174
    1cac:	000026b7          	lui	a3,0x2
    1cb0:	2e068693          	addi	a3,a3,736 # 22e0 <crctab+0x400>
    1cb4:	8626                	mv	a2,s1
    1cb6:	000025b7          	lui	a1,0x2
    1cba:	54858593          	addi	a1,a1,1352 # 2548 <crctab+0x668>
    1cbe:	4509                	li	a0,2
    1cc0:	fffff097          	auipc	ra,0xfffff
    1cc4:	740080e7          	jalr	1856(ra) # 1400 <fprintf>
    1cc8:	650d                	lui	a0,0x3
    1cca:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1cce:	00000097          	auipc	ra,0x0
    1cd2:	016080e7          	jalr	22(ra) # 1ce4 <exit>
    1cd6:	bf61                	j	1c6e <check_file+0x24>

0000000000001cd8 <r_sp>:
    1cd8:	850a                	mv	a0,sp
    1cda:	8082                	ret

0000000000001cdc <halt>:
    1cdc:	4885                	li	a7,1
    1cde:	00000073          	ecall
    1ce2:	8082                	ret

0000000000001ce4 <exit>:
    1ce4:	4889                	li	a7,2
    1ce6:	00000073          	ecall
    1cea:	8082                	ret

0000000000001cec <exec>:
    1cec:	488d                	li	a7,3
    1cee:	00000073          	ecall
    1cf2:	8082                	ret

0000000000001cf4 <wait>:
    1cf4:	4891                	li	a7,4
    1cf6:	00000073          	ecall
    1cfa:	8082                	ret

0000000000001cfc <remove>:
    1cfc:	4895                	li	a7,5
    1cfe:	00000073          	ecall
    1d02:	8082                	ret

0000000000001d04 <open>:
    1d04:	4899                	li	a7,6
    1d06:	00000073          	ecall
    1d0a:	8082                	ret

0000000000001d0c <read>:
    1d0c:	489d                	li	a7,7
    1d0e:	00000073          	ecall
    1d12:	8082                	ret

0000000000001d14 <write>:
    1d14:	48a1                	li	a7,8
    1d16:	00000073          	ecall
    1d1a:	8082                	ret

0000000000001d1c <seek>:
    1d1c:	48a5                	li	a7,9
    1d1e:	00000073          	ecall
    1d22:	8082                	ret

0000000000001d24 <tell>:
    1d24:	48a9                	li	a7,10
    1d26:	00000073          	ecall
    1d2a:	8082                	ret

0000000000001d2c <close>:
    1d2c:	48ad                	li	a7,11
    1d2e:	00000073          	ecall
    1d32:	8082                	ret

0000000000001d34 <fstat>:
    1d34:	48b1                	li	a7,12
    1d36:	00000073          	ecall
    1d3a:	8082                	ret

0000000000001d3c <mmap>:
    1d3c:	48b5                	li	a7,13
    1d3e:	00000073          	ecall
    1d42:	8082                	ret

0000000000001d44 <munmap>:
    1d44:	48b9                	li	a7,14
    1d46:	00000073          	ecall
    1d4a:	8082                	ret

0000000000001d4c <chdir>:
    1d4c:	48bd                	li	a7,15
    1d4e:	00000073          	ecall
    1d52:	8082                	ret

0000000000001d54 <mkdir>:
    1d54:	48c1                	li	a7,16
    1d56:	00000073          	ecall
    1d5a:	8082                	ret
