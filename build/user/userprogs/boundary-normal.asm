
build/user/userprogs/boundary-normal:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	e426                	sd	s1,8(sp)
    1008:	e04a                	sd	s2,0(sp)
    100a:	00003437          	lui	s0,0x3
    100e:	10040413          	addi	s0,s0,256 # 3100 <data>
    1012:	00002937          	lui	s2,0x2
    1016:	d6090513          	addi	a0,s2,-672 # 1d60 <mkdir+0xe>
    101a:	00000097          	auipc	ra,0x0
    101e:	792080e7          	jalr	1938(ra) # 17ac <strlen>
    1022:	6485                	lui	s1,0x1
    1024:	14fd                	addi	s1,s1,-1
    1026:	94a2                	add	s1,s1,s0
    1028:	77fd                	lui	a5,0xfffff
    102a:	8cfd                	and	s1,s1,a5
    102c:	01f5579b          	srliw	a5,a0,0x1f
    1030:	9fa9                	addw	a5,a5,a0
    1032:	4017d79b          	sraiw	a5,a5,0x1
    1036:	8c9d                	sub	s1,s1,a5
    1038:	d6090593          	addi	a1,s2,-672
    103c:	8526                	mv	a0,s1
    103e:	00000097          	auipc	ra,0x0
    1042:	75c080e7          	jalr	1884(ra) # 179a <strcpy>
    1046:	4589                	li	a1,2
    1048:	8526                	mv	a0,s1
    104a:	00001097          	auipc	ra,0x1
    104e:	cb8080e7          	jalr	-840(ra) # 1d02 <open>
    1052:	84aa                	mv	s1,a0
    1054:	4789                	li	a5,2
    1056:	06a7d763          	bge	a5,a0,10c4 <main+0xc4>
    105a:	6789                	lui	a5,0x2
    105c:	17fd                	addi	a5,a5,-1
    105e:	943e                	add	s0,s0,a5
    1060:	77fd                	lui	a5,0xfffff
    1062:	8c7d                	and	s0,s0,a5
    1064:	f8840413          	addi	s0,s0,-120
    1068:	0f000613          	li	a2,240
    106c:	85a2                	mv	a1,s0
    106e:	8526                	mv	a0,s1
    1070:	00001097          	auipc	ra,0x1
    1074:	c9a080e7          	jalr	-870(ra) # 1d0a <read>
    1078:	0ef00793          	li	a5,239
    107c:	06f51a63          	bne	a0,a5,10f0 <main+0xf0>
    1080:	000035b7          	lui	a1,0x3
    1084:	00058593          	mv	a1,a1
    1088:	8522                	mv	a0,s0
    108a:	00000097          	auipc	ra,0x0
    108e:	6ee080e7          	jalr	1774(ra) # 1778 <strcmp>
    1092:	e549                	bnez	a0,111c <main+0x11c>
    1094:	4581                	li	a1,0
    1096:	8526                	mv	a0,s1
    1098:	00001097          	auipc	ra,0x1
    109c:	c82080e7          	jalr	-894(ra) # 1d1a <seek>
    10a0:	0ef00613          	li	a2,239
    10a4:	85a2                	mv	a1,s0
    10a6:	8526                	mv	a0,s1
    10a8:	00001097          	auipc	ra,0x1
    10ac:	c6a080e7          	jalr	-918(ra) # 1d12 <write>
    10b0:	0ef00793          	li	a5,239
    10b4:	08f51a63          	bne	a0,a5,1148 <main+0x148>
    10b8:	60e2                	ld	ra,24(sp)
    10ba:	6442                	ld	s0,16(sp)
    10bc:	64a2                	ld	s1,8(sp)
    10be:	6902                	ld	s2,0(sp)
    10c0:	6105                	addi	sp,sp,32
    10c2:	8082                	ret
    10c4:	46bd                	li	a3,15
    10c6:	00002637          	lui	a2,0x2
    10ca:	d7060613          	addi	a2,a2,-656 # 1d70 <mkdir+0x1e>
    10ce:	000025b7          	lui	a1,0x2
    10d2:	d9858593          	addi	a1,a1,-616 # 1d98 <mkdir+0x46>
    10d6:	4509                	li	a0,2
    10d8:	00000097          	auipc	ra,0x0
    10dc:	326080e7          	jalr	806(ra) # 13fe <fprintf>
    10e0:	650d                	lui	a0,0x3
    10e2:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    10e6:	00001097          	auipc	ra,0x1
    10ea:	bfc080e7          	jalr	-1028(ra) # 1ce2 <exit>
    10ee:	b7b5                	j	105a <main+0x5a>
    10f0:	46cd                	li	a3,19
    10f2:	00002637          	lui	a2,0x2
    10f6:	d7060613          	addi	a2,a2,-656 # 1d70 <mkdir+0x1e>
    10fa:	000025b7          	lui	a1,0x2
    10fe:	de858593          	addi	a1,a1,-536 # 1de8 <mkdir+0x96>
    1102:	4509                	li	a0,2
    1104:	00000097          	auipc	ra,0x0
    1108:	2fa080e7          	jalr	762(ra) # 13fe <fprintf>
    110c:	650d                	lui	a0,0x3
    110e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1112:	00001097          	auipc	ra,0x1
    1116:	bd0080e7          	jalr	-1072(ra) # 1ce2 <exit>
    111a:	b79d                	j	1080 <main+0x80>
    111c:	46d1                	li	a3,20
    111e:	00002637          	lui	a2,0x2
    1122:	d7060613          	addi	a2,a2,-656 # 1d70 <mkdir+0x1e>
    1126:	000025b7          	lui	a1,0x2
    112a:	e5058593          	addi	a1,a1,-432 # 1e50 <mkdir+0xfe>
    112e:	4509                	li	a0,2
    1130:	00000097          	auipc	ra,0x0
    1134:	2ce080e7          	jalr	718(ra) # 13fe <fprintf>
    1138:	650d                	lui	a0,0x3
    113a:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    113e:	00001097          	auipc	ra,0x1
    1142:	ba4080e7          	jalr	-1116(ra) # 1ce2 <exit>
    1146:	b7b9                	j	1094 <main+0x94>
    1148:	46e1                	li	a3,24
    114a:	00002637          	lui	a2,0x2
    114e:	d7060613          	addi	a2,a2,-656 # 1d70 <mkdir+0x1e>
    1152:	000025b7          	lui	a1,0x2
    1156:	e9858593          	addi	a1,a1,-360 # 1e98 <mkdir+0x146>
    115a:	4509                	li	a0,2
    115c:	00000097          	auipc	ra,0x0
    1160:	2a2080e7          	jalr	674(ra) # 13fe <fprintf>
    1164:	650d                	lui	a0,0x3
    1166:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    116a:	00001097          	auipc	ra,0x1
    116e:	b78080e7          	jalr	-1160(ra) # 1ce2 <exit>
    1172:	b799                	j	10b8 <main+0xb8>

0000000000001174 <putc>:
    1174:	1101                	addi	sp,sp,-32
    1176:	ec06                	sd	ra,24(sp)
    1178:	00b107a3          	sb	a1,15(sp)
    117c:	4605                	li	a2,1
    117e:	00f10593          	addi	a1,sp,15
    1182:	00001097          	auipc	ra,0x1
    1186:	b90080e7          	jalr	-1136(ra) # 1d12 <write>
    118a:	60e2                	ld	ra,24(sp)
    118c:	6105                	addi	sp,sp,32
    118e:	8082                	ret

0000000000001190 <printint>:
    1190:	7179                	addi	sp,sp,-48
    1192:	f406                	sd	ra,40(sp)
    1194:	f022                	sd	s0,32(sp)
    1196:	ec26                	sd	s1,24(sp)
    1198:	e84a                	sd	s2,16(sp)
    119a:	84aa                	mv	s1,a0
    119c:	c299                	beqz	a3,11a2 <printint+0x12>
    119e:	0805c363          	bltz	a1,1224 <printint+0x94>
    11a2:	2581                	sext.w	a1,a1
    11a4:	4881                	li	a7,0
    11a6:	868a                	mv	a3,sp
    11a8:	4701                	li	a4,0
    11aa:	2601                	sext.w	a2,a2
    11ac:	00002537          	lui	a0,0x2
    11b0:	f0850513          	addi	a0,a0,-248 # 1f08 <digits>
    11b4:	883a                	mv	a6,a4
    11b6:	2705                	addiw	a4,a4,1
    11b8:	02c5f7bb          	remuw	a5,a1,a2
    11bc:	1782                	slli	a5,a5,0x20
    11be:	9381                	srli	a5,a5,0x20
    11c0:	97aa                	add	a5,a5,a0
    11c2:	0007c783          	lbu	a5,0(a5) # fffffffffffff000 <s+0xffffffffffff8f00>
    11c6:	00f68023          	sb	a5,0(a3)
    11ca:	0005879b          	sext.w	a5,a1
    11ce:	02c5d5bb          	divuw	a1,a1,a2
    11d2:	0685                	addi	a3,a3,1
    11d4:	fec7f0e3          	bgeu	a5,a2,11b4 <printint+0x24>
    11d8:	00088a63          	beqz	a7,11ec <printint+0x5c>
    11dc:	081c                	addi	a5,sp,16
    11de:	973e                	add	a4,a4,a5
    11e0:	02d00793          	li	a5,45
    11e4:	fef70823          	sb	a5,-16(a4)
    11e8:	0028071b          	addiw	a4,a6,2
    11ec:	02e05663          	blez	a4,1218 <printint+0x88>
    11f0:	00e10433          	add	s0,sp,a4
    11f4:	fff10913          	addi	s2,sp,-1
    11f8:	993a                	add	s2,s2,a4
    11fa:	377d                	addiw	a4,a4,-1
    11fc:	1702                	slli	a4,a4,0x20
    11fe:	9301                	srli	a4,a4,0x20
    1200:	40e90933          	sub	s2,s2,a4
    1204:	fff44583          	lbu	a1,-1(s0)
    1208:	8526                	mv	a0,s1
    120a:	00000097          	auipc	ra,0x0
    120e:	f6a080e7          	jalr	-150(ra) # 1174 <putc>
    1212:	147d                	addi	s0,s0,-1
    1214:	ff2418e3          	bne	s0,s2,1204 <printint+0x74>
    1218:	70a2                	ld	ra,40(sp)
    121a:	7402                	ld	s0,32(sp)
    121c:	64e2                	ld	s1,24(sp)
    121e:	6942                	ld	s2,16(sp)
    1220:	6145                	addi	sp,sp,48
    1222:	8082                	ret
    1224:	40b005bb          	negw	a1,a1
    1228:	4885                	li	a7,1
    122a:	bfb5                	j	11a6 <printint+0x16>

000000000000122c <vprintf>:
    122c:	7159                	addi	sp,sp,-112
    122e:	f486                	sd	ra,104(sp)
    1230:	f0a2                	sd	s0,96(sp)
    1232:	eca6                	sd	s1,88(sp)
    1234:	e8ca                	sd	s2,80(sp)
    1236:	e4ce                	sd	s3,72(sp)
    1238:	e0d2                	sd	s4,64(sp)
    123a:	fc56                	sd	s5,56(sp)
    123c:	f85a                	sd	s6,48(sp)
    123e:	f45e                	sd	s7,40(sp)
    1240:	f062                	sd	s8,32(sp)
    1242:	ec66                	sd	s9,24(sp)
    1244:	e86a                	sd	s10,16(sp)
    1246:	e46e                	sd	s11,8(sp)
    1248:	0005c483          	lbu	s1,0(a1)
    124c:	18048a63          	beqz	s1,13e0 <vprintf+0x1b4>
    1250:	8a2a                	mv	s4,a0
    1252:	8ab2                	mv	s5,a2
    1254:	00158413          	addi	s0,a1,1
    1258:	4901                	li	s2,0
    125a:	02500993          	li	s3,37
    125e:	06400b93          	li	s7,100
    1262:	06c00c13          	li	s8,108
    1266:	07800c93          	li	s9,120
    126a:	07000d13          	li	s10,112
    126e:	00002db7          	lui	s11,0x2
    1272:	00002b37          	lui	s6,0x2
    1276:	f08b0b13          	addi	s6,s6,-248 # 1f08 <digits>
    127a:	a839                	j	1298 <vprintf+0x6c>
    127c:	85a6                	mv	a1,s1
    127e:	8552                	mv	a0,s4
    1280:	00000097          	auipc	ra,0x0
    1284:	ef4080e7          	jalr	-268(ra) # 1174 <putc>
    1288:	a019                	j	128e <vprintf+0x62>
    128a:	01390f63          	beq	s2,s3,12a8 <vprintf+0x7c>
    128e:	0405                	addi	s0,s0,1
    1290:	fff44483          	lbu	s1,-1(s0)
    1294:	14048663          	beqz	s1,13e0 <vprintf+0x1b4>
    1298:	0004879b          	sext.w	a5,s1
    129c:	fe0917e3          	bnez	s2,128a <vprintf+0x5e>
    12a0:	fd379ee3          	bne	a5,s3,127c <vprintf+0x50>
    12a4:	893e                	mv	s2,a5
    12a6:	b7e5                	j	128e <vprintf+0x62>
    12a8:	05778063          	beq	a5,s7,12e8 <vprintf+0xbc>
    12ac:	05878c63          	beq	a5,s8,1304 <vprintf+0xd8>
    12b0:	07978863          	beq	a5,s9,1320 <vprintf+0xf4>
    12b4:	09a78463          	beq	a5,s10,133c <vprintf+0x110>
    12b8:	07300713          	li	a4,115
    12bc:	0ce78263          	beq	a5,a4,1380 <vprintf+0x154>
    12c0:	06300713          	li	a4,99
    12c4:	0ee78763          	beq	a5,a4,13b2 <vprintf+0x186>
    12c8:	11378163          	beq	a5,s3,13ca <vprintf+0x19e>
    12cc:	85ce                	mv	a1,s3
    12ce:	8552                	mv	a0,s4
    12d0:	00000097          	auipc	ra,0x0
    12d4:	ea4080e7          	jalr	-348(ra) # 1174 <putc>
    12d8:	85a6                	mv	a1,s1
    12da:	8552                	mv	a0,s4
    12dc:	00000097          	auipc	ra,0x0
    12e0:	e98080e7          	jalr	-360(ra) # 1174 <putc>
    12e4:	4901                	li	s2,0
    12e6:	b765                	j	128e <vprintf+0x62>
    12e8:	008a8493          	addi	s1,s5,8
    12ec:	4685                	li	a3,1
    12ee:	4629                	li	a2,10
    12f0:	000aa583          	lw	a1,0(s5)
    12f4:	8552                	mv	a0,s4
    12f6:	00000097          	auipc	ra,0x0
    12fa:	e9a080e7          	jalr	-358(ra) # 1190 <printint>
    12fe:	8aa6                	mv	s5,s1
    1300:	4901                	li	s2,0
    1302:	b771                	j	128e <vprintf+0x62>
    1304:	008a8493          	addi	s1,s5,8
    1308:	4681                	li	a3,0
    130a:	4629                	li	a2,10
    130c:	000aa583          	lw	a1,0(s5)
    1310:	8552                	mv	a0,s4
    1312:	00000097          	auipc	ra,0x0
    1316:	e7e080e7          	jalr	-386(ra) # 1190 <printint>
    131a:	8aa6                	mv	s5,s1
    131c:	4901                	li	s2,0
    131e:	bf85                	j	128e <vprintf+0x62>
    1320:	008a8493          	addi	s1,s5,8
    1324:	4681                	li	a3,0
    1326:	4641                	li	a2,16
    1328:	000aa583          	lw	a1,0(s5)
    132c:	8552                	mv	a0,s4
    132e:	00000097          	auipc	ra,0x0
    1332:	e62080e7          	jalr	-414(ra) # 1190 <printint>
    1336:	8aa6                	mv	s5,s1
    1338:	4901                	li	s2,0
    133a:	bf91                	j	128e <vprintf+0x62>
    133c:	008a8913          	addi	s2,s5,8
    1340:	000aba83          	ld	s5,0(s5)
    1344:	03000593          	li	a1,48
    1348:	8552                	mv	a0,s4
    134a:	00000097          	auipc	ra,0x0
    134e:	e2a080e7          	jalr	-470(ra) # 1174 <putc>
    1352:	85e6                	mv	a1,s9
    1354:	8552                	mv	a0,s4
    1356:	00000097          	auipc	ra,0x0
    135a:	e1e080e7          	jalr	-482(ra) # 1174 <putc>
    135e:	44c1                	li	s1,16
    1360:	03cad793          	srli	a5,s5,0x3c
    1364:	97da                	add	a5,a5,s6
    1366:	0007c583          	lbu	a1,0(a5)
    136a:	8552                	mv	a0,s4
    136c:	00000097          	auipc	ra,0x0
    1370:	e08080e7          	jalr	-504(ra) # 1174 <putc>
    1374:	0a92                	slli	s5,s5,0x4
    1376:	34fd                	addiw	s1,s1,-1
    1378:	f4e5                	bnez	s1,1360 <vprintf+0x134>
    137a:	8aca                	mv	s5,s2
    137c:	4901                	li	s2,0
    137e:	bf01                	j	128e <vprintf+0x62>
    1380:	008a8913          	addi	s2,s5,8
    1384:	000ab483          	ld	s1,0(s5)
    1388:	c085                	beqz	s1,13a8 <vprintf+0x17c>
    138a:	0004c583          	lbu	a1,0(s1) # 1000 <main>
    138e:	c5b1                	beqz	a1,13da <vprintf+0x1ae>
    1390:	8552                	mv	a0,s4
    1392:	00000097          	auipc	ra,0x0
    1396:	de2080e7          	jalr	-542(ra) # 1174 <putc>
    139a:	0485                	addi	s1,s1,1
    139c:	0004c583          	lbu	a1,0(s1)
    13a0:	f9e5                	bnez	a1,1390 <vprintf+0x164>
    13a2:	8aca                	mv	s5,s2
    13a4:	4901                	li	s2,0
    13a6:	b5e5                	j	128e <vprintf+0x62>
    13a8:	f00d8493          	addi	s1,s11,-256 # 1f00 <mkdir+0x1ae>
    13ac:	02800593          	li	a1,40
    13b0:	b7c5                	j	1390 <vprintf+0x164>
    13b2:	008a8493          	addi	s1,s5,8
    13b6:	000ac583          	lbu	a1,0(s5)
    13ba:	8552                	mv	a0,s4
    13bc:	00000097          	auipc	ra,0x0
    13c0:	db8080e7          	jalr	-584(ra) # 1174 <putc>
    13c4:	8aa6                	mv	s5,s1
    13c6:	4901                	li	s2,0
    13c8:	b5d9                	j	128e <vprintf+0x62>
    13ca:	85ce                	mv	a1,s3
    13cc:	8552                	mv	a0,s4
    13ce:	00000097          	auipc	ra,0x0
    13d2:	da6080e7          	jalr	-602(ra) # 1174 <putc>
    13d6:	4901                	li	s2,0
    13d8:	bd5d                	j	128e <vprintf+0x62>
    13da:	8aca                	mv	s5,s2
    13dc:	4901                	li	s2,0
    13de:	bd45                	j	128e <vprintf+0x62>
    13e0:	70a6                	ld	ra,104(sp)
    13e2:	7406                	ld	s0,96(sp)
    13e4:	64e6                	ld	s1,88(sp)
    13e6:	6946                	ld	s2,80(sp)
    13e8:	69a6                	ld	s3,72(sp)
    13ea:	6a06                	ld	s4,64(sp)
    13ec:	7ae2                	ld	s5,56(sp)
    13ee:	7b42                	ld	s6,48(sp)
    13f0:	7ba2                	ld	s7,40(sp)
    13f2:	7c02                	ld	s8,32(sp)
    13f4:	6ce2                	ld	s9,24(sp)
    13f6:	6d42                	ld	s10,16(sp)
    13f8:	6da2                	ld	s11,8(sp)
    13fa:	6165                	addi	sp,sp,112
    13fc:	8082                	ret

00000000000013fe <fprintf>:
    13fe:	715d                	addi	sp,sp,-80
    1400:	ec06                	sd	ra,24(sp)
    1402:	f032                	sd	a2,32(sp)
    1404:	f436                	sd	a3,40(sp)
    1406:	f83a                	sd	a4,48(sp)
    1408:	fc3e                	sd	a5,56(sp)
    140a:	e0c2                	sd	a6,64(sp)
    140c:	e4c6                	sd	a7,72(sp)
    140e:	1010                	addi	a2,sp,32
    1410:	e432                	sd	a2,8(sp)
    1412:	00000097          	auipc	ra,0x0
    1416:	e1a080e7          	jalr	-486(ra) # 122c <vprintf>
    141a:	60e2                	ld	ra,24(sp)
    141c:	6161                	addi	sp,sp,80
    141e:	8082                	ret

0000000000001420 <printf>:
    1420:	711d                	addi	sp,sp,-96
    1422:	ec06                	sd	ra,24(sp)
    1424:	f42e                	sd	a1,40(sp)
    1426:	f832                	sd	a2,48(sp)
    1428:	fc36                	sd	a3,56(sp)
    142a:	e0ba                	sd	a4,64(sp)
    142c:	e4be                	sd	a5,72(sp)
    142e:	e8c2                	sd	a6,80(sp)
    1430:	ecc6                	sd	a7,88(sp)
    1432:	1030                	addi	a2,sp,40
    1434:	e432                	sd	a2,8(sp)
    1436:	85aa                	mv	a1,a0
    1438:	4505                	li	a0,1
    143a:	00000097          	auipc	ra,0x0
    143e:	df2080e7          	jalr	-526(ra) # 122c <vprintf>
    1442:	60e2                	ld	ra,24(sp)
    1444:	6125                	addi	sp,sp,96
    1446:	8082                	ret

0000000000001448 <cksum>:
    1448:	cdb1                	beqz	a1,14a4 <cksum+0x5c>
    144a:	00b50833          	add	a6,a0,a1
    144e:	4781                	li	a5,0
    1450:	00002637          	lui	a2,0x2
    1454:	f2060613          	addi	a2,a2,-224 # 1f20 <crctab>
    1458:	0505                	addi	a0,a0,1
    145a:	0087969b          	slliw	a3,a5,0x8
    145e:	0187d71b          	srliw	a4,a5,0x18
    1462:	fff54783          	lbu	a5,-1(a0)
    1466:	8f3d                	xor	a4,a4,a5
    1468:	1702                	slli	a4,a4,0x20
    146a:	9301                	srli	a4,a4,0x20
    146c:	070a                	slli	a4,a4,0x2
    146e:	9732                	add	a4,a4,a2
    1470:	431c                	lw	a5,0(a4)
    1472:	8fb5                	xor	a5,a5,a3
    1474:	2781                	sext.w	a5,a5
    1476:	fea811e3          	bne	a6,a0,1458 <cksum+0x10>
    147a:	00002637          	lui	a2,0x2
    147e:	f2060613          	addi	a2,a2,-224 # 1f20 <crctab>
    1482:	0ff5f693          	andi	a3,a1,255
    1486:	81a1                	srli	a1,a1,0x8
    1488:	0087951b          	slliw	a0,a5,0x8
    148c:	0187d71b          	srliw	a4,a5,0x18
    1490:	8f35                	xor	a4,a4,a3
    1492:	070a                	slli	a4,a4,0x2
    1494:	9732                	add	a4,a4,a2
    1496:	431c                	lw	a5,0(a4)
    1498:	8fa9                	xor	a5,a5,a0
    149a:	2781                	sext.w	a5,a5
    149c:	f1fd                	bnez	a1,1482 <cksum+0x3a>
    149e:	fff7c513          	not	a0,a5
    14a2:	8082                	ret
    14a4:	4781                	li	a5,0
    14a6:	bfe5                	j	149e <cksum+0x56>

00000000000014a8 <swap_bytes>:
    14a8:	ce19                	beqz	a2,14c6 <swap_bytes+0x1e>
    14aa:	87aa                	mv	a5,a0
    14ac:	962a                	add	a2,a2,a0
    14ae:	0007c703          	lbu	a4,0(a5)
    14b2:	0005c683          	lbu	a3,0(a1)
    14b6:	00d78023          	sb	a3,0(a5)
    14ba:	00e58023          	sb	a4,0(a1)
    14be:	0785                	addi	a5,a5,1
    14c0:	0585                	addi	a1,a1,1
    14c2:	fec796e3          	bne	a5,a2,14ae <swap_bytes+0x6>
    14c6:	8082                	ret

00000000000014c8 <random_init>:
    14c8:	7139                	addi	sp,sp,-64
    14ca:	fc06                	sd	ra,56(sp)
    14cc:	f822                	sd	s0,48(sp)
    14ce:	f426                	sd	s1,40(sp)
    14d0:	f04a                	sd	s2,32(sp)
    14d2:	ec4e                	sd	s3,24(sp)
    14d4:	e852                	sd	s4,16(sp)
    14d6:	c62a                	sw	a0,12(sp)
    14d8:	000037b7          	lui	a5,0x3
    14dc:	0f07a483          	lw	s1,240(a5) # 30f0 <inited>
    14e0:	eca5                	bnez	s1,1558 <random_init+0x90>
    14e2:	00006737          	lui	a4,0x6
    14e6:	10070913          	addi	s2,a4,256 # 6100 <s>
    14ea:	10070713          	addi	a4,a4,256
    14ee:	87a6                	mv	a5,s1
    14f0:	10000693          	li	a3,256
    14f4:	00f70023          	sb	a5,0(a4)
    14f8:	2785                	addiw	a5,a5,1
    14fa:	0705                	addi	a4,a4,1
    14fc:	fed79ce3          	bne	a5,a3,14f4 <random_init+0x2c>
    1500:	4401                	li	s0,0
    1502:	000069b7          	lui	s3,0x6
    1506:	10098993          	addi	s3,s3,256 # 6100 <s>
    150a:	10000a13          	li	s4,256
    150e:	0034f793          	andi	a5,s1,3
    1512:	0818                	addi	a4,sp,16
    1514:	97ba                	add	a5,a5,a4
    1516:	ffc7c783          	lbu	a5,-4(a5)
    151a:	00094703          	lbu	a4,0(s2)
    151e:	9fb9                	addw	a5,a5,a4
    1520:	9c3d                	addw	s0,s0,a5
    1522:	0ff47413          	andi	s0,s0,255
    1526:	4605                	li	a2,1
    1528:	008985b3          	add	a1,s3,s0
    152c:	854a                	mv	a0,s2
    152e:	00000097          	auipc	ra,0x0
    1532:	f7a080e7          	jalr	-134(ra) # 14a8 <swap_bytes>
    1536:	2485                	addiw	s1,s1,1
    1538:	0905                	addi	s2,s2,1
    153a:	fd449ae3          	bne	s1,s4,150e <random_init+0x46>
    153e:	000037b7          	lui	a5,0x3
    1542:	0e078a23          	sb	zero,244(a5) # 30f4 <s_j>
    1546:	000037b7          	lui	a5,0x3
    154a:	0e078aa3          	sb	zero,245(a5) # 30f5 <s_i>
    154e:	000037b7          	lui	a5,0x3
    1552:	4705                	li	a4,1
    1554:	0ee7a823          	sw	a4,240(a5) # 30f0 <inited>
    1558:	70e2                	ld	ra,56(sp)
    155a:	7442                	ld	s0,48(sp)
    155c:	74a2                	ld	s1,40(sp)
    155e:	7902                	ld	s2,32(sp)
    1560:	69e2                	ld	s3,24(sp)
    1562:	6a42                	ld	s4,16(sp)
    1564:	6121                	addi	sp,sp,64
    1566:	8082                	ret

0000000000001568 <random_bytes>:
    1568:	7139                	addi	sp,sp,-64
    156a:	fc06                	sd	ra,56(sp)
    156c:	f822                	sd	s0,48(sp)
    156e:	f426                	sd	s1,40(sp)
    1570:	f04a                	sd	s2,32(sp)
    1572:	ec4e                	sd	s3,24(sp)
    1574:	e852                	sd	s4,16(sp)
    1576:	e456                	sd	s5,8(sp)
    1578:	e05a                	sd	s6,0(sp)
    157a:	892a                	mv	s2,a0
    157c:	8aae                	mv	s5,a1
    157e:	000037b7          	lui	a5,0x3
    1582:	0f07a783          	lw	a5,240(a5) # 30f0 <inited>
    1586:	c3c1                	beqz	a5,1606 <random_bytes+0x9e>
    1588:	060a8563          	beqz	s5,15f2 <random_bytes+0x8a>
    158c:	9aca                	add	s5,s5,s2
    158e:	00003a37          	lui	s4,0x3
    1592:	000064b7          	lui	s1,0x6
    1596:	10048493          	addi	s1,s1,256 # 6100 <s>
    159a:	000039b7          	lui	s3,0x3
    159e:	0f5a4503          	lbu	a0,245(s4) # 30f5 <s_i>
    15a2:	2505                	addiw	a0,a0,1
    15a4:	0ff57513          	andi	a0,a0,255
    15a8:	0eaa0aa3          	sb	a0,245(s4)
    15ac:	00a48b33          	add	s6,s1,a0
    15b0:	000b4403          	lbu	s0,0(s6)
    15b4:	0f49c783          	lbu	a5,244(s3) # 30f4 <s_j>
    15b8:	9c3d                	addw	s0,s0,a5
    15ba:	0ff47413          	andi	s0,s0,255
    15be:	0e898a23          	sb	s0,244(s3)
    15c2:	4605                	li	a2,1
    15c4:	008485b3          	add	a1,s1,s0
    15c8:	855a                	mv	a0,s6
    15ca:	00000097          	auipc	ra,0x0
    15ce:	ede080e7          	jalr	-290(ra) # 14a8 <swap_bytes>
    15d2:	9426                	add	s0,s0,s1
    15d4:	000b4783          	lbu	a5,0(s6)
    15d8:	00044703          	lbu	a4,0(s0)
    15dc:	9fb9                	addw	a5,a5,a4
    15de:	0ff7f793          	andi	a5,a5,255
    15e2:	97a6                	add	a5,a5,s1
    15e4:	0007c783          	lbu	a5,0(a5)
    15e8:	00f90023          	sb	a5,0(s2)
    15ec:	0905                	addi	s2,s2,1
    15ee:	fb2a98e3          	bne	s5,s2,159e <random_bytes+0x36>
    15f2:	70e2                	ld	ra,56(sp)
    15f4:	7442                	ld	s0,48(sp)
    15f6:	74a2                	ld	s1,40(sp)
    15f8:	7902                	ld	s2,32(sp)
    15fa:	69e2                	ld	s3,24(sp)
    15fc:	6a42                	ld	s4,16(sp)
    15fe:	6aa2                	ld	s5,8(sp)
    1600:	6b02                	ld	s6,0(sp)
    1602:	6121                	addi	sp,sp,64
    1604:	8082                	ret
    1606:	4501                	li	a0,0
    1608:	00000097          	auipc	ra,0x0
    160c:	ec0080e7          	jalr	-320(ra) # 14c8 <random_init>
    1610:	bfa5                	j	1588 <random_bytes+0x20>

0000000000001612 <random_ulong>:
    1612:	1101                	addi	sp,sp,-32
    1614:	ec06                	sd	ra,24(sp)
    1616:	45a1                	li	a1,8
    1618:	0028                	addi	a0,sp,8
    161a:	00000097          	auipc	ra,0x0
    161e:	f4e080e7          	jalr	-178(ra) # 1568 <random_bytes>
    1622:	6522                	ld	a0,8(sp)
    1624:	60e2                	ld	ra,24(sp)
    1626:	6105                	addi	sp,sp,32
    1628:	8082                	ret

000000000000162a <shuffle>:
    162a:	c9b9                	beqz	a1,1680 <shuffle+0x56>
    162c:	7179                	addi	sp,sp,-48
    162e:	f406                	sd	ra,40(sp)
    1630:	f022                	sd	s0,32(sp)
    1632:	ec26                	sd	s1,24(sp)
    1634:	e84a                	sd	s2,16(sp)
    1636:	e44e                	sd	s3,8(sp)
    1638:	e052                	sd	s4,0(sp)
    163a:	8a2a                	mv	s4,a0
    163c:	89ae                	mv	s3,a1
    163e:	84b2                	mv	s1,a2
    1640:	892a                	mv	s2,a0
    1642:	4401                	li	s0,0
    1644:	00000097          	auipc	ra,0x0
    1648:	fce080e7          	jalr	-50(ra) # 1612 <random_ulong>
    164c:	408985b3          	sub	a1,s3,s0
    1650:	02b575b3          	remu	a1,a0,a1
    1654:	95a2                	add	a1,a1,s0
    1656:	029585b3          	mul	a1,a1,s1
    165a:	8626                	mv	a2,s1
    165c:	95d2                	add	a1,a1,s4
    165e:	854a                	mv	a0,s2
    1660:	00000097          	auipc	ra,0x0
    1664:	e48080e7          	jalr	-440(ra) # 14a8 <swap_bytes>
    1668:	0405                	addi	s0,s0,1
    166a:	9926                	add	s2,s2,s1
    166c:	fc899ce3          	bne	s3,s0,1644 <shuffle+0x1a>
    1670:	70a2                	ld	ra,40(sp)
    1672:	7402                	ld	s0,32(sp)
    1674:	64e2                	ld	s1,24(sp)
    1676:	6942                	ld	s2,16(sp)
    1678:	69a2                	ld	s3,8(sp)
    167a:	6a02                	ld	s4,0(sp)
    167c:	6145                	addi	sp,sp,48
    167e:	8082                	ret
    1680:	8082                	ret

0000000000001682 <arc4_init>:
    1682:	100500a3          	sb	zero,257(a0)
    1686:	10050023          	sb	zero,256(a0)
    168a:	4781                	li	a5,0
    168c:	10000693          	li	a3,256
    1690:	00f50733          	add	a4,a0,a5
    1694:	00f70023          	sb	a5,0(a4)
    1698:	0785                	addi	a5,a5,1
    169a:	fed79be3          	bne	a5,a3,1690 <arc4_init+0xe>
    169e:	86aa                	mv	a3,a0
    16a0:	10050e13          	addi	t3,a0,256
    16a4:	4701                	li	a4,0
    16a6:	4781                	li	a5,0
    16a8:	0006c883          	lbu	a7,0(a3)
    16ac:	00f58833          	add	a6,a1,a5
    16b0:	00084803          	lbu	a6,0(a6)
    16b4:	00e8873b          	addw	a4,a7,a4
    16b8:	00e8073b          	addw	a4,a6,a4
    16bc:	0ff77713          	andi	a4,a4,255
    16c0:	00e50833          	add	a6,a0,a4
    16c4:	00084303          	lbu	t1,0(a6)
    16c8:	00668023          	sb	t1,0(a3)
    16cc:	01180023          	sb	a7,0(a6)
    16d0:	0785                	addi	a5,a5,1
    16d2:	00c7b833          	sltu	a6,a5,a2
    16d6:	41000833          	neg	a6,a6
    16da:	0107f7b3          	and	a5,a5,a6
    16de:	0685                	addi	a3,a3,1
    16e0:	fdc694e3          	bne	a3,t3,16a8 <arc4_init+0x26>
    16e4:	8082                	ret

00000000000016e6 <arc4_crypt>:
    16e6:	10054e03          	lbu	t3,256(a0)
    16ea:	10154803          	lbu	a6,257(a0)
    16ee:	fff60e93          	addi	t4,a2,-1
    16f2:	c225                	beqz	a2,1752 <arc4_crypt+0x6c>
    16f4:	00c588b3          	add	a7,a1,a2
    16f8:	86ae                	mv	a3,a1
    16fa:	001e031b          	addiw	t1,t3,1
    16fe:	40b3033b          	subw	t1,t1,a1
    1702:	00d3073b          	addw	a4,t1,a3
    1706:	0ff77713          	andi	a4,a4,255
    170a:	972a                	add	a4,a4,a0
    170c:	00074603          	lbu	a2,0(a4)
    1710:	0106083b          	addw	a6,a2,a6
    1714:	0ff87813          	andi	a6,a6,255
    1718:	010507b3          	add	a5,a0,a6
    171c:	0007c583          	lbu	a1,0(a5)
    1720:	00b70023          	sb	a1,0(a4)
    1724:	00c78023          	sb	a2,0(a5)
    1728:	0685                	addi	a3,a3,1
    172a:	00074783          	lbu	a5,0(a4)
    172e:	9fb1                	addw	a5,a5,a2
    1730:	0ff7f793          	andi	a5,a5,255
    1734:	97aa                	add	a5,a5,a0
    1736:	0007c783          	lbu	a5,0(a5)
    173a:	fff6c703          	lbu	a4,-1(a3)
    173e:	8fb9                	xor	a5,a5,a4
    1740:	fef68fa3          	sb	a5,-1(a3)
    1744:	fb169fe3          	bne	a3,a7,1702 <arc4_crypt+0x1c>
    1748:	2e85                	addiw	t4,t4,1
    174a:	01ce8e3b          	addw	t3,t4,t3
    174e:	0ffe7e13          	andi	t3,t3,255
    1752:	11c50023          	sb	t3,256(a0)
    1756:	110500a3          	sb	a6,257(a0)
    175a:	8082                	ret

000000000000175c <_main>:
    175c:	1141                	addi	sp,sp,-16
    175e:	e406                	sd	ra,8(sp)
    1760:	00000097          	auipc	ra,0x0
    1764:	8a0080e7          	jalr	-1888(ra) # 1000 <main>
    1768:	4501                	li	a0,0
    176a:	00000097          	auipc	ra,0x0
    176e:	578080e7          	jalr	1400(ra) # 1ce2 <exit>
    1772:	60a2                	ld	ra,8(sp)
    1774:	0141                	addi	sp,sp,16
    1776:	8082                	ret

0000000000001778 <strcmp>:
    1778:	00054783          	lbu	a5,0(a0)
    177c:	cb91                	beqz	a5,1790 <strcmp+0x18>
    177e:	0005c703          	lbu	a4,0(a1)
    1782:	00f71763          	bne	a4,a5,1790 <strcmp+0x18>
    1786:	0505                	addi	a0,a0,1
    1788:	0585                	addi	a1,a1,1
    178a:	00054783          	lbu	a5,0(a0)
    178e:	fbe5                	bnez	a5,177e <strcmp+0x6>
    1790:	0005c503          	lbu	a0,0(a1)
    1794:	40a7853b          	subw	a0,a5,a0
    1798:	8082                	ret

000000000000179a <strcpy>:
    179a:	87aa                	mv	a5,a0
    179c:	0585                	addi	a1,a1,1
    179e:	0785                	addi	a5,a5,1
    17a0:	fff5c703          	lbu	a4,-1(a1)
    17a4:	fee78fa3          	sb	a4,-1(a5)
    17a8:	fb75                	bnez	a4,179c <strcpy+0x2>
    17aa:	8082                	ret

00000000000017ac <strlen>:
    17ac:	00054783          	lbu	a5,0(a0)
    17b0:	cf81                	beqz	a5,17c8 <strlen+0x1c>
    17b2:	0505                	addi	a0,a0,1
    17b4:	87aa                	mv	a5,a0
    17b6:	4685                	li	a3,1
    17b8:	9e89                	subw	a3,a3,a0
    17ba:	00f6853b          	addw	a0,a3,a5
    17be:	0785                	addi	a5,a5,1
    17c0:	fff7c703          	lbu	a4,-1(a5)
    17c4:	fb7d                	bnez	a4,17ba <strlen+0xe>
    17c6:	8082                	ret
    17c8:	4501                	li	a0,0
    17ca:	8082                	ret

00000000000017cc <memset>:
    17cc:	ca19                	beqz	a2,17e2 <memset+0x16>
    17ce:	87aa                	mv	a5,a0
    17d0:	1602                	slli	a2,a2,0x20
    17d2:	9201                	srli	a2,a2,0x20
    17d4:	00a60733          	add	a4,a2,a0
    17d8:	00b78023          	sb	a1,0(a5)
    17dc:	0785                	addi	a5,a5,1
    17de:	fee79de3          	bne	a5,a4,17d8 <memset+0xc>
    17e2:	8082                	ret

00000000000017e4 <memcmp>:
    17e4:	1101                	addi	sp,sp,-32
    17e6:	ec06                	sd	ra,24(sp)
    17e8:	e822                	sd	s0,16(sp)
    17ea:	e426                	sd	s1,8(sp)
    17ec:	e04a                	sd	s2,0(sp)
    17ee:	892a                	mv	s2,a0
    17f0:	842e                	mv	s0,a1
    17f2:	84b2                	mv	s1,a2
    17f4:	c915                	beqz	a0,1828 <memcmp+0x44>
    17f6:	c5ad                	beqz	a1,1860 <memcmp+0x7c>
    17f8:	fff60713          	addi	a4,a2,-1
    17fc:	c645                	beqz	a2,18a4 <memcmp+0xc0>
    17fe:	87ca                	mv	a5,s2
    1800:	00190613          	addi	a2,s2,1
    1804:	963a                	add	a2,a2,a4
    1806:	0007c683          	lbu	a3,0(a5)
    180a:	00044703          	lbu	a4,0(s0)
    180e:	08e69463          	bne	a3,a4,1896 <memcmp+0xb2>
    1812:	0785                	addi	a5,a5,1
    1814:	0405                	addi	s0,s0,1
    1816:	fec798e3          	bne	a5,a2,1806 <memcmp+0x22>
    181a:	4501                	li	a0,0
    181c:	60e2                	ld	ra,24(sp)
    181e:	6442                	ld	s0,16(sp)
    1820:	64a2                	ld	s1,8(sp)
    1822:	6902                	ld	s2,0(sp)
    1824:	6105                	addi	sp,sp,32
    1826:	8082                	ret
    1828:	4501                	li	a0,0
    182a:	da6d                	beqz	a2,181c <memcmp+0x38>
    182c:	03200693          	li	a3,50
    1830:	00002637          	lui	a2,0x2
    1834:	32060613          	addi	a2,a2,800 # 2320 <crctab+0x400>
    1838:	000025b7          	lui	a1,0x2
    183c:	33058593          	addi	a1,a1,816 # 2330 <crctab+0x410>
    1840:	4509                	li	a0,2
    1842:	00000097          	auipc	ra,0x0
    1846:	bbc080e7          	jalr	-1092(ra) # 13fe <fprintf>
    184a:	650d                	lui	a0,0x3
    184c:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1850:	00000097          	auipc	ra,0x0
    1854:	492080e7          	jalr	1170(ra) # 1ce2 <exit>
    1858:	fff48713          	addi	a4,s1,-1
    185c:	f04d                	bnez	s0,17fe <memcmp+0x1a>
    185e:	a011                	j	1862 <memcmp+0x7e>
    1860:	c221                	beqz	a2,18a0 <memcmp+0xbc>
    1862:	03300693          	li	a3,51
    1866:	00002637          	lui	a2,0x2
    186a:	32060613          	addi	a2,a2,800 # 2320 <crctab+0x400>
    186e:	000025b7          	lui	a1,0x2
    1872:	37858593          	addi	a1,a1,888 # 2378 <crctab+0x458>
    1876:	4509                	li	a0,2
    1878:	00000097          	auipc	ra,0x0
    187c:	b86080e7          	jalr	-1146(ra) # 13fe <fprintf>
    1880:	650d                	lui	a0,0x3
    1882:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1886:	00000097          	auipc	ra,0x0
    188a:	45c080e7          	jalr	1116(ra) # 1ce2 <exit>
    188e:	fff48713          	addi	a4,s1,-1
    1892:	4401                	li	s0,0
    1894:	b7ad                	j	17fe <memcmp+0x1a>
    1896:	4505                	li	a0,1
    1898:	f8d762e3          	bltu	a4,a3,181c <memcmp+0x38>
    189c:	557d                	li	a0,-1
    189e:	bfbd                	j	181c <memcmp+0x38>
    18a0:	4501                	li	a0,0
    18a2:	bfad                	j	181c <memcmp+0x38>
    18a4:	4501                	li	a0,0
    18a6:	bf9d                	j	181c <memcmp+0x38>

00000000000018a8 <memcpy>:
    18a8:	1101                	addi	sp,sp,-32
    18aa:	ec06                	sd	ra,24(sp)
    18ac:	e822                	sd	s0,16(sp)
    18ae:	e426                	sd	s1,8(sp)
    18b0:	e04a                	sd	s2,0(sp)
    18b2:	84aa                	mv	s1,a0
    18b4:	842e                	mv	s0,a1
    18b6:	8932                	mv	s2,a2
    18b8:	c51d                	beqz	a0,18e6 <memcpy+0x3e>
    18ba:	c1ad                	beqz	a1,191c <memcpy+0x74>
    18bc:	fff60693          	addi	a3,a2,-1
    18c0:	ce01                	beqz	a2,18d8 <memcpy+0x30>
    18c2:	0685                	addi	a3,a3,1
    18c4:	96a6                	add	a3,a3,s1
    18c6:	87a6                	mv	a5,s1
    18c8:	0405                	addi	s0,s0,1
    18ca:	0785                	addi	a5,a5,1
    18cc:	fff44703          	lbu	a4,-1(s0)
    18d0:	fee78fa3          	sb	a4,-1(a5)
    18d4:	fed79ae3          	bne	a5,a3,18c8 <memcpy+0x20>
    18d8:	8526                	mv	a0,s1
    18da:	60e2                	ld	ra,24(sp)
    18dc:	6442                	ld	s0,16(sp)
    18de:	64a2                	ld	s1,8(sp)
    18e0:	6902                	ld	s2,0(sp)
    18e2:	6105                	addi	sp,sp,32
    18e4:	8082                	ret
    18e6:	da6d                	beqz	a2,18d8 <memcpy+0x30>
    18e8:	04000693          	li	a3,64
    18ec:	00002637          	lui	a2,0x2
    18f0:	32060613          	addi	a2,a2,800 # 2320 <crctab+0x400>
    18f4:	000025b7          	lui	a1,0x2
    18f8:	3c058593          	addi	a1,a1,960 # 23c0 <crctab+0x4a0>
    18fc:	4509                	li	a0,2
    18fe:	00000097          	auipc	ra,0x0
    1902:	b00080e7          	jalr	-1280(ra) # 13fe <fprintf>
    1906:	650d                	lui	a0,0x3
    1908:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    190c:	00000097          	auipc	ra,0x0
    1910:	3d6080e7          	jalr	982(ra) # 1ce2 <exit>
    1914:	fff90693          	addi	a3,s2,-1
    1918:	f44d                	bnez	s0,18c2 <memcpy+0x1a>
    191a:	a011                	j	191e <memcpy+0x76>
    191c:	de55                	beqz	a2,18d8 <memcpy+0x30>
    191e:	04100693          	li	a3,65
    1922:	00002637          	lui	a2,0x2
    1926:	32060613          	addi	a2,a2,800 # 2320 <crctab+0x400>
    192a:	000025b7          	lui	a1,0x2
    192e:	40858593          	addi	a1,a1,1032 # 2408 <crctab+0x4e8>
    1932:	4509                	li	a0,2
    1934:	00000097          	auipc	ra,0x0
    1938:	aca080e7          	jalr	-1334(ra) # 13fe <fprintf>
    193c:	650d                	lui	a0,0x3
    193e:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1942:	00000097          	auipc	ra,0x0
    1946:	3a0080e7          	jalr	928(ra) # 1ce2 <exit>
    194a:	fff90693          	addi	a3,s2,-1
    194e:	4401                	li	s0,0
    1950:	bf8d                	j	18c2 <memcpy+0x1a>

0000000000001952 <itoa>:
    1952:	1101                	addi	sp,sp,-32
    1954:	ec06                	sd	ra,24(sp)
    1956:	e822                	sd	s0,16(sp)
    1958:	e426                	sd	s1,8(sp)
    195a:	842a                	mv	s0,a0
    195c:	41f5d71b          	sraiw	a4,a1,0x1f
    1960:	00e5c7b3          	xor	a5,a1,a4
    1964:	9f99                	subw	a5,a5,a4
    1966:	84aa                	mv	s1,a0
    1968:	862a                	mv	a2,a0
    196a:	4681                	li	a3,0
    196c:	4529                	li	a0,10
    196e:	4825                	li	a6,9
    1970:	88b6                	mv	a7,a3
    1972:	2685                	addiw	a3,a3,1
    1974:	02a7e73b          	remw	a4,a5,a0
    1978:	0307071b          	addiw	a4,a4,48
    197c:	00e60023          	sb	a4,0(a2)
    1980:	873e                	mv	a4,a5
    1982:	02a7c7bb          	divw	a5,a5,a0
    1986:	0605                	addi	a2,a2,1
    1988:	fee844e3          	blt	a6,a4,1970 <itoa+0x1e>
    198c:	0405c863          	bltz	a1,19dc <itoa+0x8a>
    1990:	96a2                	add	a3,a3,s0
    1992:	00068023          	sb	zero,0(a3)
    1996:	8522                	mv	a0,s0
    1998:	00000097          	auipc	ra,0x0
    199c:	e14080e7          	jalr	-492(ra) # 17ac <strlen>
    19a0:	fff5071b          	addiw	a4,a0,-1
    19a4:	02e05763          	blez	a4,19d2 <itoa+0x80>
    19a8:	9722                	add	a4,a4,s0
    19aa:	4681                	li	a3,0
    19ac:	0004c783          	lbu	a5,0(s1)
    19b0:	00074603          	lbu	a2,0(a4)
    19b4:	00c48023          	sb	a2,0(s1)
    19b8:	00f70023          	sb	a5,0(a4)
    19bc:	0016879b          	addiw	a5,a3,1
    19c0:	0007869b          	sext.w	a3,a5
    19c4:	0485                	addi	s1,s1,1
    19c6:	177d                	addi	a4,a4,-1
    19c8:	fff7c793          	not	a5,a5
    19cc:	9fa9                	addw	a5,a5,a0
    19ce:	fcf6cfe3          	blt	a3,a5,19ac <itoa+0x5a>
    19d2:	60e2                	ld	ra,24(sp)
    19d4:	6442                	ld	s0,16(sp)
    19d6:	64a2                	ld	s1,8(sp)
    19d8:	6105                	addi	sp,sp,32
    19da:	8082                	ret
    19dc:	96a2                	add	a3,a3,s0
    19de:	02d00793          	li	a5,45
    19e2:	00f68023          	sb	a5,0(a3)
    19e6:	0028869b          	addiw	a3,a7,2
    19ea:	b75d                	j	1990 <itoa+0x3e>

00000000000019ec <atoi>:
    19ec:	00054783          	lbu	a5,0(a0)
    19f0:	02000713          	li	a4,32
    19f4:	00e79763          	bne	a5,a4,1a02 <atoi+0x16>
    19f8:	0505                	addi	a0,a0,1
    19fa:	00054783          	lbu	a5,0(a0)
    19fe:	fee78de3          	beq	a5,a4,19f8 <atoi+0xc>
    1a02:	02b00713          	li	a4,43
    1a06:	04e78663          	beq	a5,a4,1a52 <atoi+0x66>
    1a0a:	02d00713          	li	a4,45
    1a0e:	4805                	li	a6,1
    1a10:	04e78463          	beq	a5,a4,1a58 <atoi+0x6c>
    1a14:	00054683          	lbu	a3,0(a0)
    1a18:	fd06879b          	addiw	a5,a3,-48
    1a1c:	0ff7f793          	andi	a5,a5,255
    1a20:	4725                	li	a4,9
    1a22:	02f76e63          	bltu	a4,a5,1a5e <atoi+0x72>
    1a26:	4601                	li	a2,0
    1a28:	45a5                	li	a1,9
    1a2a:	0505                	addi	a0,a0,1
    1a2c:	0026179b          	slliw	a5,a2,0x2
    1a30:	9fb1                	addw	a5,a5,a2
    1a32:	0017979b          	slliw	a5,a5,0x1
    1a36:	9fb5                	addw	a5,a5,a3
    1a38:	fd07861b          	addiw	a2,a5,-48
    1a3c:	00054683          	lbu	a3,0(a0)
    1a40:	fd06871b          	addiw	a4,a3,-48
    1a44:	0ff77713          	andi	a4,a4,255
    1a48:	fee5f1e3          	bgeu	a1,a4,1a2a <atoi+0x3e>
    1a4c:	02c8053b          	mulw	a0,a6,a2
    1a50:	8082                	ret
    1a52:	0505                	addi	a0,a0,1
    1a54:	4805                	li	a6,1
    1a56:	bf7d                	j	1a14 <atoi+0x28>
    1a58:	0505                	addi	a0,a0,1
    1a5a:	587d                	li	a6,-1
    1a5c:	bf65                	j	1a14 <atoi+0x28>
    1a5e:	4601                	li	a2,0
    1a60:	b7f5                	j	1a4c <atoi+0x60>

0000000000001a62 <check_file_handle>:
    1a62:	d8010113          	addi	sp,sp,-640
    1a66:	26113c23          	sd	ra,632(sp)
    1a6a:	26813823          	sd	s0,624(sp)
    1a6e:	26913423          	sd	s1,616(sp)
    1a72:	27213023          	sd	s2,608(sp)
    1a76:	25313c23          	sd	s3,600(sp)
    1a7a:	25413823          	sd	s4,592(sp)
    1a7e:	25513423          	sd	s5,584(sp)
    1a82:	25613023          	sd	s6,576(sp)
    1a86:	23713c23          	sd	s7,568(sp)
    1a8a:	23813823          	sd	s8,560(sp)
    1a8e:	23913423          	sd	s9,552(sp)
    1a92:	23a13023          	sd	s10,544(sp)
    1a96:	21b13c23          	sd	s11,536(sp)
    1a9a:	8baa                	mv	s7,a0
    1a9c:	8a2e                	mv	s4,a1
    1a9e:	8c32                	mv	s8,a2
    1aa0:	89b6                	mv	s3,a3
    1aa2:	040c                	addi	a1,sp,512
    1aa4:	00000097          	auipc	ra,0x0
    1aa8:	28e080e7          	jalr	654(ra) # 1d32 <fstat>
    1aac:	20813603          	ld	a2,520(sp)
    1ab0:	03361163          	bne	a2,s3,1ad2 <check_file_handle+0x70>
    1ab4:	06098763          	beqz	s3,1b22 <check_file_handle+0xc0>
    1ab8:	4901                	li	s2,0
    1aba:	20000a93          	li	s5,512
    1abe:	00002cb7          	lui	s9,0x2
    1ac2:	00002db7          	lui	s11,0x2
    1ac6:	6b0d                	lui	s6,0x3
    1ac8:	039b0b13          	addi	s6,s6,57 # 3039 <sample+0x39>
    1acc:	00002d37          	lui	s10,0x2
    1ad0:	aa39                	j	1bee <check_file_handle+0x18c>
    1ad2:	86ce                	mv	a3,s3
    1ad4:	85d2                	mv	a1,s4
    1ad6:	00002537          	lui	a0,0x2
    1ada:	45050513          	addi	a0,a0,1104 # 2450 <crctab+0x530>
    1ade:	00000097          	auipc	ra,0x0
    1ae2:	942080e7          	jalr	-1726(ra) # 1420 <printf>
    1ae6:	fc0999e3          	bnez	s3,1ab8 <check_file_handle+0x56>
    1aea:	20813683          	ld	a3,520(sp)
    1aee:	03368a63          	beq	a3,s3,1b22 <check_file_handle+0xc0>
    1af2:	0a600813          	li	a6,166
    1af6:	000027b7          	lui	a5,0x2
    1afa:	32078793          	addi	a5,a5,800 # 2320 <crctab+0x400>
    1afe:	874e                	mv	a4,s3
    1b00:	8652                	mv	a2,s4
    1b02:	000025b7          	lui	a1,0x2
    1b06:	52058593          	addi	a1,a1,1312 # 2520 <crctab+0x600>
    1b0a:	4509                	li	a0,2
    1b0c:	00000097          	auipc	ra,0x0
    1b10:	8f2080e7          	jalr	-1806(ra) # 13fe <fprintf>
    1b14:	650d                	lui	a0,0x3
    1b16:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1b1a:	00000097          	auipc	ra,0x0
    1b1e:	1c8080e7          	jalr	456(ra) # 1ce2 <exit>
    1b22:	85d2                	mv	a1,s4
    1b24:	00002537          	lui	a0,0x2
    1b28:	56850513          	addi	a0,a0,1384 # 2568 <crctab+0x648>
    1b2c:	00000097          	auipc	ra,0x0
    1b30:	8f4080e7          	jalr	-1804(ra) # 1420 <printf>
    1b34:	27813083          	ld	ra,632(sp)
    1b38:	27013403          	ld	s0,624(sp)
    1b3c:	26813483          	ld	s1,616(sp)
    1b40:	26013903          	ld	s2,608(sp)
    1b44:	25813983          	ld	s3,600(sp)
    1b48:	25013a03          	ld	s4,592(sp)
    1b4c:	24813a83          	ld	s5,584(sp)
    1b50:	24013b03          	ld	s6,576(sp)
    1b54:	23813b83          	ld	s7,568(sp)
    1b58:	23013c03          	ld	s8,560(sp)
    1b5c:	22813c83          	ld	s9,552(sp)
    1b60:	22013d03          	ld	s10,544(sp)
    1b64:	21813d83          	ld	s11,536(sp)
    1b68:	28010113          	addi	sp,sp,640
    1b6c:	8082                	ret
    1b6e:	09d00893          	li	a7,157
    1b72:	320c8813          	addi	a6,s9,800 # 2320 <crctab+0x400>
    1b76:	87aa                	mv	a5,a0
    1b78:	8752                	mv	a4,s4
    1b7a:	86ca                	mv	a3,s2
    1b7c:	8622                	mv	a2,s0
    1b7e:	480d8593          	addi	a1,s11,1152 # 2480 <crctab+0x560>
    1b82:	4509                	li	a0,2
    1b84:	00000097          	auipc	ra,0x0
    1b88:	87a080e7          	jalr	-1926(ra) # 13fe <fprintf>
    1b8c:	855a                	mv	a0,s6
    1b8e:	00000097          	auipc	ra,0x0
    1b92:	154080e7          	jalr	340(ra) # 1ce2 <exit>
    1b96:	a89d                	j	1c0c <check_file_handle+0x1aa>
    1b98:	00160593          	addi	a1,a2,1
    1b9c:	0285f163          	bgeu	a1,s0,1bbe <check_file_handle+0x15c>
    1ba0:	00c10733          	add	a4,sp,a2
    1ba4:	00b487b3          	add	a5,s1,a1
    1ba8:	00174683          	lbu	a3,1(a4)
    1bac:	0007c783          	lbu	a5,0(a5)
    1bb0:	00f68763          	beq	a3,a5,1bbe <check_file_handle+0x15c>
    1bb4:	0585                	addi	a1,a1,1
    1bb6:	0705                	addi	a4,a4,1
    1bb8:	feb416e3          	bne	s0,a1,1ba4 <check_file_handle+0x142>
    1bbc:	85a2                	mv	a1,s0
    1bbe:	08100813          	li	a6,129
    1bc2:	320c8793          	addi	a5,s9,800
    1bc6:	8752                	mv	a4,s4
    1bc8:	012606b3          	add	a3,a2,s2
    1bcc:	40c58633          	sub	a2,a1,a2
    1bd0:	4c8d0593          	addi	a1,s10,1224 # 24c8 <crctab+0x5a8>
    1bd4:	4509                	li	a0,2
    1bd6:	00000097          	auipc	ra,0x0
    1bda:	828080e7          	jalr	-2008(ra) # 13fe <fprintf>
    1bde:	855a                	mv	a0,s6
    1be0:	00000097          	auipc	ra,0x0
    1be4:	102080e7          	jalr	258(ra) # 1ce2 <exit>
    1be8:	9922                	add	s2,s2,s0
    1bea:	f13970e3          	bgeu	s2,s3,1aea <check_file_handle+0x88>
    1bee:	41298433          	sub	s0,s3,s2
    1bf2:	008af363          	bgeu	s5,s0,1bf8 <check_file_handle+0x196>
    1bf6:	8456                	mv	s0,s5
    1bf8:	0004061b          	sext.w	a2,s0
    1bfc:	858a                	mv	a1,sp
    1bfe:	855e                	mv	a0,s7
    1c00:	00000097          	auipc	ra,0x0
    1c04:	10a080e7          	jalr	266(ra) # 1d0a <read>
    1c08:	f68513e3          	bne	a0,s0,1b6e <check_file_handle+0x10c>
    1c0c:	012c04b3          	add	s1,s8,s2
    1c10:	8622                	mv	a2,s0
    1c12:	85a6                	mv	a1,s1
    1c14:	850a                	mv	a0,sp
    1c16:	00000097          	auipc	ra,0x0
    1c1a:	bce080e7          	jalr	-1074(ra) # 17e4 <memcmp>
    1c1e:	d569                	beqz	a0,1be8 <check_file_handle+0x186>
    1c20:	03298163          	beq	s3,s2,1c42 <check_file_handle+0x1e0>
    1c24:	870a                	mv	a4,sp
    1c26:	4601                	li	a2,0
    1c28:	00c487b3          	add	a5,s1,a2
    1c2c:	00074683          	lbu	a3,0(a4)
    1c30:	0007c783          	lbu	a5,0(a5)
    1c34:	f6f692e3          	bne	a3,a5,1b98 <check_file_handle+0x136>
    1c38:	0605                	addi	a2,a2,1
    1c3a:	0705                	addi	a4,a4,1
    1c3c:	fe8666e3          	bltu	a2,s0,1c28 <check_file_handle+0x1c6>
    1c40:	bfa1                	j	1b98 <check_file_handle+0x136>
    1c42:	4601                	li	a2,0
    1c44:	4585                	li	a1,1
    1c46:	bfa5                	j	1bbe <check_file_handle+0x15c>

0000000000001c48 <check_file>:
    1c48:	7179                	addi	sp,sp,-48
    1c4a:	f406                	sd	ra,40(sp)
    1c4c:	f022                	sd	s0,32(sp)
    1c4e:	ec26                	sd	s1,24(sp)
    1c50:	e84a                	sd	s2,16(sp)
    1c52:	e44e                	sd	s3,8(sp)
    1c54:	84aa                	mv	s1,a0
    1c56:	892e                	mv	s2,a1
    1c58:	89b2                	mv	s3,a2
    1c5a:	4581                	li	a1,0
    1c5c:	00000097          	auipc	ra,0x0
    1c60:	0a6080e7          	jalr	166(ra) # 1d02 <open>
    1c64:	842a                	mv	s0,a0
    1c66:	4789                	li	a5,2
    1c68:	02a7df63          	bge	a5,a0,1ca6 <check_file+0x5e>
    1c6c:	86ce                	mv	a3,s3
    1c6e:	864a                	mv	a2,s2
    1c70:	85a6                	mv	a1,s1
    1c72:	8522                	mv	a0,s0
    1c74:	00000097          	auipc	ra,0x0
    1c78:	dee080e7          	jalr	-530(ra) # 1a62 <check_file_handle>
    1c7c:	85a6                	mv	a1,s1
    1c7e:	00002537          	lui	a0,0x2
    1c82:	5f050513          	addi	a0,a0,1520 # 25f0 <crctab+0x6d0>
    1c86:	fffff097          	auipc	ra,0xfffff
    1c8a:	79a080e7          	jalr	1946(ra) # 1420 <printf>
    1c8e:	8522                	mv	a0,s0
    1c90:	00000097          	auipc	ra,0x0
    1c94:	09a080e7          	jalr	154(ra) # 1d2a <close>
    1c98:	70a2                	ld	ra,40(sp)
    1c9a:	7402                	ld	s0,32(sp)
    1c9c:	64e2                	ld	s1,24(sp)
    1c9e:	6942                	ld	s2,16(sp)
    1ca0:	69a2                	ld	s3,8(sp)
    1ca2:	6145                	addi	sp,sp,48
    1ca4:	8082                	ret
    1ca6:	0ae00713          	li	a4,174
    1caa:	000026b7          	lui	a3,0x2
    1cae:	32068693          	addi	a3,a3,800 # 2320 <crctab+0x400>
    1cb2:	8626                	mv	a2,s1
    1cb4:	000025b7          	lui	a1,0x2
    1cb8:	58858593          	addi	a1,a1,1416 # 2588 <crctab+0x668>
    1cbc:	4509                	li	a0,2
    1cbe:	fffff097          	auipc	ra,0xfffff
    1cc2:	740080e7          	jalr	1856(ra) # 13fe <fprintf>
    1cc6:	650d                	lui	a0,0x3
    1cc8:	03950513          	addi	a0,a0,57 # 3039 <sample+0x39>
    1ccc:	00000097          	auipc	ra,0x0
    1cd0:	016080e7          	jalr	22(ra) # 1ce2 <exit>
    1cd4:	bf61                	j	1c6c <check_file+0x24>

0000000000001cd6 <r_sp>:
    1cd6:	850a                	mv	a0,sp
    1cd8:	8082                	ret

0000000000001cda <halt>:
    1cda:	4885                	li	a7,1
    1cdc:	00000073          	ecall
    1ce0:	8082                	ret

0000000000001ce2 <exit>:
    1ce2:	4889                	li	a7,2
    1ce4:	00000073          	ecall
    1ce8:	8082                	ret

0000000000001cea <exec>:
    1cea:	488d                	li	a7,3
    1cec:	00000073          	ecall
    1cf0:	8082                	ret

0000000000001cf2 <wait>:
    1cf2:	4891                	li	a7,4
    1cf4:	00000073          	ecall
    1cf8:	8082                	ret

0000000000001cfa <remove>:
    1cfa:	4895                	li	a7,5
    1cfc:	00000073          	ecall
    1d00:	8082                	ret

0000000000001d02 <open>:
    1d02:	4899                	li	a7,6
    1d04:	00000073          	ecall
    1d08:	8082                	ret

0000000000001d0a <read>:
    1d0a:	489d                	li	a7,7
    1d0c:	00000073          	ecall
    1d10:	8082                	ret

0000000000001d12 <write>:
    1d12:	48a1                	li	a7,8
    1d14:	00000073          	ecall
    1d18:	8082                	ret

0000000000001d1a <seek>:
    1d1a:	48a5                	li	a7,9
    1d1c:	00000073          	ecall
    1d20:	8082                	ret

0000000000001d22 <tell>:
    1d22:	48a9                	li	a7,10
    1d24:	00000073          	ecall
    1d28:	8082                	ret

0000000000001d2a <close>:
    1d2a:	48ad                	li	a7,11
    1d2c:	00000073          	ecall
    1d30:	8082                	ret

0000000000001d32 <fstat>:
    1d32:	48b1                	li	a7,12
    1d34:	00000073          	ecall
    1d38:	8082                	ret

0000000000001d3a <mmap>:
    1d3a:	48b5                	li	a7,13
    1d3c:	00000073          	ecall
    1d40:	8082                	ret

0000000000001d42 <munmap>:
    1d42:	48b9                	li	a7,14
    1d44:	00000073          	ecall
    1d48:	8082                	ret

0000000000001d4a <chdir>:
    1d4a:	48bd                	li	a7,15
    1d4c:	00000073          	ecall
    1d50:	8082                	ret

0000000000001d52 <mkdir>:
    1d52:	48c1                	li	a7,16
    1d54:	00000073          	ecall
    1d58:	8082                	ret
