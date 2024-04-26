
build/user/vm/mmap-over-code:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <main>:
    1000:	1101                	addi	sp,sp,-32
    1002:	ec06                	sd	ra,24(sp)
    1004:	e822                	sd	s0,16(sp)
    1006:	e426                	sd	s1,8(sp)
    1008:	74fd                	lui	s1,0xfffff
    100a:	000017b7          	lui	a5,0x1
    100e:	00078793          	mv	a5,a5
    1012:	8cfd                	and	s1,s1,a5
    1014:	4581                	li	a1,0
    1016:	00002537          	lui	a0,0x2
    101a:	c9050513          	addi	a0,a0,-880 # 1c90 <mkdir+0x10>
    101e:	00001097          	auipc	ra,0x1
    1022:	c12080e7          	jalr	-1006(ra) # 1c30 <open>
    1026:	842a                	mv	s0,a0
    1028:	4789                	li	a5,2
    102a:	02a7d063          	bge	a5,a0,104a <main+0x4a>
    102e:	85a6                	mv	a1,s1
    1030:	8522                	mv	a0,s0
    1032:	00001097          	auipc	ra,0x1
    1036:	c36080e7          	jalr	-970(ra) # 1c68 <mmap>
    103a:	57fd                	li	a5,-1
    103c:	02f51d63          	bne	a0,a5,1076 <main+0x76>
    1040:	60e2                	ld	ra,24(sp)
    1042:	6442                	ld	s0,16(sp)
    1044:	64a2                	ld	s1,8(sp)
    1046:	6105                	addi	sp,sp,32
    1048:	8082                	ret
    104a:	46a5                	li	a3,9
    104c:	00002637          	lui	a2,0x2
    1050:	ca060613          	addi	a2,a2,-864 # 1ca0 <mkdir+0x20>
    1054:	000025b7          	lui	a1,0x2
    1058:	cc058593          	addi	a1,a1,-832 # 1cc0 <mkdir+0x40>
    105c:	4509                	li	a0,2
    105e:	00000097          	auipc	ra,0x0
    1062:	2ce080e7          	jalr	718(ra) # 132c <fprintf>
    1066:	650d                	lui	a0,0x3
    1068:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    106c:	00001097          	auipc	ra,0x1
    1070:	ba4080e7          	jalr	-1116(ra) # 1c10 <exit>
    1074:	bf6d                	j	102e <main+0x2e>
    1076:	46a9                	li	a3,10
    1078:	00002637          	lui	a2,0x2
    107c:	ca060613          	addi	a2,a2,-864 # 1ca0 <mkdir+0x20>
    1080:	000025b7          	lui	a1,0x2
    1084:	d2058593          	addi	a1,a1,-736 # 1d20 <mkdir+0xa0>
    1088:	4509                	li	a0,2
    108a:	00000097          	auipc	ra,0x0
    108e:	2a2080e7          	jalr	674(ra) # 132c <fprintf>
    1092:	650d                	lui	a0,0x3
    1094:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1098:	00001097          	auipc	ra,0x1
    109c:	b78080e7          	jalr	-1160(ra) # 1c10 <exit>
    10a0:	b745                	j	1040 <main+0x40>

00000000000010a2 <putc>:
    10a2:	1101                	addi	sp,sp,-32
    10a4:	ec06                	sd	ra,24(sp)
    10a6:	00b107a3          	sb	a1,15(sp)
    10aa:	4605                	li	a2,1
    10ac:	00f10593          	addi	a1,sp,15
    10b0:	00001097          	auipc	ra,0x1
    10b4:	b90080e7          	jalr	-1136(ra) # 1c40 <write>
    10b8:	60e2                	ld	ra,24(sp)
    10ba:	6105                	addi	sp,sp,32
    10bc:	8082                	ret

00000000000010be <printint>:
    10be:	7179                	addi	sp,sp,-48
    10c0:	f406                	sd	ra,40(sp)
    10c2:	f022                	sd	s0,32(sp)
    10c4:	ec26                	sd	s1,24(sp)
    10c6:	e84a                	sd	s2,16(sp)
    10c8:	84aa                	mv	s1,a0
    10ca:	c299                	beqz	a3,10d0 <printint+0x12>
    10cc:	0805c363          	bltz	a1,1152 <printint+0x94>
    10d0:	2581                	sext.w	a1,a1
    10d2:	4881                	li	a7,0
    10d4:	868a                	mv	a3,sp
    10d6:	4701                	li	a4,0
    10d8:	2601                	sext.w	a2,a2
    10da:	00002537          	lui	a0,0x2
    10de:	d9850513          	addi	a0,a0,-616 # 1d98 <digits>
    10e2:	883a                	mv	a6,a4
    10e4:	2705                	addiw	a4,a4,1
    10e6:	02c5f7bb          	remuw	a5,a1,a2
    10ea:	1782                	slli	a5,a5,0x20
    10ec:	9381                	srli	a5,a5,0x20
    10ee:	97aa                	add	a5,a5,a0
    10f0:	0007c783          	lbu	a5,0(a5) # 1000 <main>
    10f4:	00f68023          	sb	a5,0(a3)
    10f8:	0005879b          	sext.w	a5,a1
    10fc:	02c5d5bb          	divuw	a1,a1,a2
    1100:	0685                	addi	a3,a3,1
    1102:	fec7f0e3          	bgeu	a5,a2,10e2 <printint+0x24>
    1106:	00088a63          	beqz	a7,111a <printint+0x5c>
    110a:	081c                	addi	a5,sp,16
    110c:	973e                	add	a4,a4,a5
    110e:	02d00793          	li	a5,45
    1112:	fef70823          	sb	a5,-16(a4)
    1116:	0028071b          	addiw	a4,a6,2
    111a:	02e05663          	blez	a4,1146 <printint+0x88>
    111e:	00e10433          	add	s0,sp,a4
    1122:	fff10913          	addi	s2,sp,-1
    1126:	993a                	add	s2,s2,a4
    1128:	377d                	addiw	a4,a4,-1
    112a:	1702                	slli	a4,a4,0x20
    112c:	9301                	srli	a4,a4,0x20
    112e:	40e90933          	sub	s2,s2,a4
    1132:	fff44583          	lbu	a1,-1(s0)
    1136:	8526                	mv	a0,s1
    1138:	00000097          	auipc	ra,0x0
    113c:	f6a080e7          	jalr	-150(ra) # 10a2 <putc>
    1140:	147d                	addi	s0,s0,-1
    1142:	ff2418e3          	bne	s0,s2,1132 <printint+0x74>
    1146:	70a2                	ld	ra,40(sp)
    1148:	7402                	ld	s0,32(sp)
    114a:	64e2                	ld	s1,24(sp)
    114c:	6942                	ld	s2,16(sp)
    114e:	6145                	addi	sp,sp,48
    1150:	8082                	ret
    1152:	40b005bb          	negw	a1,a1
    1156:	4885                	li	a7,1
    1158:	bfb5                	j	10d4 <printint+0x16>

000000000000115a <vprintf>:
    115a:	7159                	addi	sp,sp,-112
    115c:	f486                	sd	ra,104(sp)
    115e:	f0a2                	sd	s0,96(sp)
    1160:	eca6                	sd	s1,88(sp)
    1162:	e8ca                	sd	s2,80(sp)
    1164:	e4ce                	sd	s3,72(sp)
    1166:	e0d2                	sd	s4,64(sp)
    1168:	fc56                	sd	s5,56(sp)
    116a:	f85a                	sd	s6,48(sp)
    116c:	f45e                	sd	s7,40(sp)
    116e:	f062                	sd	s8,32(sp)
    1170:	ec66                	sd	s9,24(sp)
    1172:	e86a                	sd	s10,16(sp)
    1174:	e46e                	sd	s11,8(sp)
    1176:	0005c483          	lbu	s1,0(a1)
    117a:	18048a63          	beqz	s1,130e <vprintf+0x1b4>
    117e:	8a2a                	mv	s4,a0
    1180:	8ab2                	mv	s5,a2
    1182:	00158413          	addi	s0,a1,1
    1186:	4901                	li	s2,0
    1188:	02500993          	li	s3,37
    118c:	06400b93          	li	s7,100
    1190:	06c00c13          	li	s8,108
    1194:	07800c93          	li	s9,120
    1198:	07000d13          	li	s10,112
    119c:	00002db7          	lui	s11,0x2
    11a0:	00002b37          	lui	s6,0x2
    11a4:	d98b0b13          	addi	s6,s6,-616 # 1d98 <digits>
    11a8:	a839                	j	11c6 <vprintf+0x6c>
    11aa:	85a6                	mv	a1,s1
    11ac:	8552                	mv	a0,s4
    11ae:	00000097          	auipc	ra,0x0
    11b2:	ef4080e7          	jalr	-268(ra) # 10a2 <putc>
    11b6:	a019                	j	11bc <vprintf+0x62>
    11b8:	01390f63          	beq	s2,s3,11d6 <vprintf+0x7c>
    11bc:	0405                	addi	s0,s0,1
    11be:	fff44483          	lbu	s1,-1(s0)
    11c2:	14048663          	beqz	s1,130e <vprintf+0x1b4>
    11c6:	0004879b          	sext.w	a5,s1
    11ca:	fe0917e3          	bnez	s2,11b8 <vprintf+0x5e>
    11ce:	fd379ee3          	bne	a5,s3,11aa <vprintf+0x50>
    11d2:	893e                	mv	s2,a5
    11d4:	b7e5                	j	11bc <vprintf+0x62>
    11d6:	05778063          	beq	a5,s7,1216 <vprintf+0xbc>
    11da:	05878c63          	beq	a5,s8,1232 <vprintf+0xd8>
    11de:	07978863          	beq	a5,s9,124e <vprintf+0xf4>
    11e2:	09a78463          	beq	a5,s10,126a <vprintf+0x110>
    11e6:	07300713          	li	a4,115
    11ea:	0ce78263          	beq	a5,a4,12ae <vprintf+0x154>
    11ee:	06300713          	li	a4,99
    11f2:	0ee78763          	beq	a5,a4,12e0 <vprintf+0x186>
    11f6:	11378163          	beq	a5,s3,12f8 <vprintf+0x19e>
    11fa:	85ce                	mv	a1,s3
    11fc:	8552                	mv	a0,s4
    11fe:	00000097          	auipc	ra,0x0
    1202:	ea4080e7          	jalr	-348(ra) # 10a2 <putc>
    1206:	85a6                	mv	a1,s1
    1208:	8552                	mv	a0,s4
    120a:	00000097          	auipc	ra,0x0
    120e:	e98080e7          	jalr	-360(ra) # 10a2 <putc>
    1212:	4901                	li	s2,0
    1214:	b765                	j	11bc <vprintf+0x62>
    1216:	008a8493          	addi	s1,s5,8
    121a:	4685                	li	a3,1
    121c:	4629                	li	a2,10
    121e:	000aa583          	lw	a1,0(s5)
    1222:	8552                	mv	a0,s4
    1224:	00000097          	auipc	ra,0x0
    1228:	e9a080e7          	jalr	-358(ra) # 10be <printint>
    122c:	8aa6                	mv	s5,s1
    122e:	4901                	li	s2,0
    1230:	b771                	j	11bc <vprintf+0x62>
    1232:	008a8493          	addi	s1,s5,8
    1236:	4681                	li	a3,0
    1238:	4629                	li	a2,10
    123a:	000aa583          	lw	a1,0(s5)
    123e:	8552                	mv	a0,s4
    1240:	00000097          	auipc	ra,0x0
    1244:	e7e080e7          	jalr	-386(ra) # 10be <printint>
    1248:	8aa6                	mv	s5,s1
    124a:	4901                	li	s2,0
    124c:	bf85                	j	11bc <vprintf+0x62>
    124e:	008a8493          	addi	s1,s5,8
    1252:	4681                	li	a3,0
    1254:	4641                	li	a2,16
    1256:	000aa583          	lw	a1,0(s5)
    125a:	8552                	mv	a0,s4
    125c:	00000097          	auipc	ra,0x0
    1260:	e62080e7          	jalr	-414(ra) # 10be <printint>
    1264:	8aa6                	mv	s5,s1
    1266:	4901                	li	s2,0
    1268:	bf91                	j	11bc <vprintf+0x62>
    126a:	008a8913          	addi	s2,s5,8
    126e:	000aba83          	ld	s5,0(s5)
    1272:	03000593          	li	a1,48
    1276:	8552                	mv	a0,s4
    1278:	00000097          	auipc	ra,0x0
    127c:	e2a080e7          	jalr	-470(ra) # 10a2 <putc>
    1280:	85e6                	mv	a1,s9
    1282:	8552                	mv	a0,s4
    1284:	00000097          	auipc	ra,0x0
    1288:	e1e080e7          	jalr	-482(ra) # 10a2 <putc>
    128c:	44c1                	li	s1,16
    128e:	03cad793          	srli	a5,s5,0x3c
    1292:	97da                	add	a5,a5,s6
    1294:	0007c583          	lbu	a1,0(a5)
    1298:	8552                	mv	a0,s4
    129a:	00000097          	auipc	ra,0x0
    129e:	e08080e7          	jalr	-504(ra) # 10a2 <putc>
    12a2:	0a92                	slli	s5,s5,0x4
    12a4:	34fd                	addiw	s1,s1,-1
    12a6:	f4e5                	bnez	s1,128e <vprintf+0x134>
    12a8:	8aca                	mv	s5,s2
    12aa:	4901                	li	s2,0
    12ac:	bf01                	j	11bc <vprintf+0x62>
    12ae:	008a8913          	addi	s2,s5,8
    12b2:	000ab483          	ld	s1,0(s5)
    12b6:	c085                	beqz	s1,12d6 <vprintf+0x17c>
    12b8:	0004c583          	lbu	a1,0(s1) # fffffffffffff000 <s+0xffffffffffffbff0>
    12bc:	c5b1                	beqz	a1,1308 <vprintf+0x1ae>
    12be:	8552                	mv	a0,s4
    12c0:	00000097          	auipc	ra,0x0
    12c4:	de2080e7          	jalr	-542(ra) # 10a2 <putc>
    12c8:	0485                	addi	s1,s1,1
    12ca:	0004c583          	lbu	a1,0(s1)
    12ce:	f9e5                	bnez	a1,12be <vprintf+0x164>
    12d0:	8aca                	mv	s5,s2
    12d2:	4901                	li	s2,0
    12d4:	b5e5                	j	11bc <vprintf+0x62>
    12d6:	d90d8493          	addi	s1,s11,-624 # 1d90 <mkdir+0x110>
    12da:	02800593          	li	a1,40
    12de:	b7c5                	j	12be <vprintf+0x164>
    12e0:	008a8493          	addi	s1,s5,8
    12e4:	000ac583          	lbu	a1,0(s5)
    12e8:	8552                	mv	a0,s4
    12ea:	00000097          	auipc	ra,0x0
    12ee:	db8080e7          	jalr	-584(ra) # 10a2 <putc>
    12f2:	8aa6                	mv	s5,s1
    12f4:	4901                	li	s2,0
    12f6:	b5d9                	j	11bc <vprintf+0x62>
    12f8:	85ce                	mv	a1,s3
    12fa:	8552                	mv	a0,s4
    12fc:	00000097          	auipc	ra,0x0
    1300:	da6080e7          	jalr	-602(ra) # 10a2 <putc>
    1304:	4901                	li	s2,0
    1306:	bd5d                	j	11bc <vprintf+0x62>
    1308:	8aca                	mv	s5,s2
    130a:	4901                	li	s2,0
    130c:	bd45                	j	11bc <vprintf+0x62>
    130e:	70a6                	ld	ra,104(sp)
    1310:	7406                	ld	s0,96(sp)
    1312:	64e6                	ld	s1,88(sp)
    1314:	6946                	ld	s2,80(sp)
    1316:	69a6                	ld	s3,72(sp)
    1318:	6a06                	ld	s4,64(sp)
    131a:	7ae2                	ld	s5,56(sp)
    131c:	7b42                	ld	s6,48(sp)
    131e:	7ba2                	ld	s7,40(sp)
    1320:	7c02                	ld	s8,32(sp)
    1322:	6ce2                	ld	s9,24(sp)
    1324:	6d42                	ld	s10,16(sp)
    1326:	6da2                	ld	s11,8(sp)
    1328:	6165                	addi	sp,sp,112
    132a:	8082                	ret

000000000000132c <fprintf>:
    132c:	715d                	addi	sp,sp,-80
    132e:	ec06                	sd	ra,24(sp)
    1330:	f032                	sd	a2,32(sp)
    1332:	f436                	sd	a3,40(sp)
    1334:	f83a                	sd	a4,48(sp)
    1336:	fc3e                	sd	a5,56(sp)
    1338:	e0c2                	sd	a6,64(sp)
    133a:	e4c6                	sd	a7,72(sp)
    133c:	1010                	addi	a2,sp,32
    133e:	e432                	sd	a2,8(sp)
    1340:	00000097          	auipc	ra,0x0
    1344:	e1a080e7          	jalr	-486(ra) # 115a <vprintf>
    1348:	60e2                	ld	ra,24(sp)
    134a:	6161                	addi	sp,sp,80
    134c:	8082                	ret

000000000000134e <printf>:
    134e:	711d                	addi	sp,sp,-96
    1350:	ec06                	sd	ra,24(sp)
    1352:	f42e                	sd	a1,40(sp)
    1354:	f832                	sd	a2,48(sp)
    1356:	fc36                	sd	a3,56(sp)
    1358:	e0ba                	sd	a4,64(sp)
    135a:	e4be                	sd	a5,72(sp)
    135c:	e8c2                	sd	a6,80(sp)
    135e:	ecc6                	sd	a7,88(sp)
    1360:	1030                	addi	a2,sp,40
    1362:	e432                	sd	a2,8(sp)
    1364:	85aa                	mv	a1,a0
    1366:	4505                	li	a0,1
    1368:	00000097          	auipc	ra,0x0
    136c:	df2080e7          	jalr	-526(ra) # 115a <vprintf>
    1370:	60e2                	ld	ra,24(sp)
    1372:	6125                	addi	sp,sp,96
    1374:	8082                	ret

0000000000001376 <cksum>:
    1376:	cdb1                	beqz	a1,13d2 <cksum+0x5c>
    1378:	00b50833          	add	a6,a0,a1
    137c:	4781                	li	a5,0
    137e:	00002637          	lui	a2,0x2
    1382:	db060613          	addi	a2,a2,-592 # 1db0 <crctab>
    1386:	0505                	addi	a0,a0,1
    1388:	0087969b          	slliw	a3,a5,0x8
    138c:	0187d71b          	srliw	a4,a5,0x18
    1390:	fff54783          	lbu	a5,-1(a0)
    1394:	8f3d                	xor	a4,a4,a5
    1396:	1702                	slli	a4,a4,0x20
    1398:	9301                	srli	a4,a4,0x20
    139a:	070a                	slli	a4,a4,0x2
    139c:	9732                	add	a4,a4,a2
    139e:	431c                	lw	a5,0(a4)
    13a0:	8fb5                	xor	a5,a5,a3
    13a2:	2781                	sext.w	a5,a5
    13a4:	fea811e3          	bne	a6,a0,1386 <cksum+0x10>
    13a8:	00002637          	lui	a2,0x2
    13ac:	db060613          	addi	a2,a2,-592 # 1db0 <crctab>
    13b0:	0ff5f693          	andi	a3,a1,255
    13b4:	81a1                	srli	a1,a1,0x8
    13b6:	0087951b          	slliw	a0,a5,0x8
    13ba:	0187d71b          	srliw	a4,a5,0x18
    13be:	8f35                	xor	a4,a4,a3
    13c0:	070a                	slli	a4,a4,0x2
    13c2:	9732                	add	a4,a4,a2
    13c4:	431c                	lw	a5,0(a4)
    13c6:	8fa9                	xor	a5,a5,a0
    13c8:	2781                	sext.w	a5,a5
    13ca:	f1fd                	bnez	a1,13b0 <cksum+0x3a>
    13cc:	fff7c513          	not	a0,a5
    13d0:	8082                	ret
    13d2:	4781                	li	a5,0
    13d4:	bfe5                	j	13cc <cksum+0x56>

00000000000013d6 <swap_bytes>:
    13d6:	ce19                	beqz	a2,13f4 <swap_bytes+0x1e>
    13d8:	87aa                	mv	a5,a0
    13da:	962a                	add	a2,a2,a0
    13dc:	0007c703          	lbu	a4,0(a5)
    13e0:	0005c683          	lbu	a3,0(a1)
    13e4:	00d78023          	sb	a3,0(a5)
    13e8:	00e58023          	sb	a4,0(a1)
    13ec:	0785                	addi	a5,a5,1
    13ee:	0585                	addi	a1,a1,1
    13f0:	fec796e3          	bne	a5,a2,13dc <swap_bytes+0x6>
    13f4:	8082                	ret

00000000000013f6 <random_init>:
    13f6:	7139                	addi	sp,sp,-64
    13f8:	fc06                	sd	ra,56(sp)
    13fa:	f822                	sd	s0,48(sp)
    13fc:	f426                	sd	s1,40(sp)
    13fe:	f04a                	sd	s2,32(sp)
    1400:	ec4e                	sd	s3,24(sp)
    1402:	e852                	sd	s4,16(sp)
    1404:	c62a                	sw	a0,12(sp)
    1406:	000037b7          	lui	a5,0x3
    140a:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    140e:	eca5                	bnez	s1,1486 <random_init+0x90>
    1410:	00003737          	lui	a4,0x3
    1414:	01070913          	addi	s2,a4,16 # 3010 <s>
    1418:	01070713          	addi	a4,a4,16
    141c:	87a6                	mv	a5,s1
    141e:	10000693          	li	a3,256
    1422:	00f70023          	sb	a5,0(a4)
    1426:	2785                	addiw	a5,a5,1
    1428:	0705                	addi	a4,a4,1
    142a:	fed79ce3          	bne	a5,a3,1422 <random_init+0x2c>
    142e:	4401                	li	s0,0
    1430:	000039b7          	lui	s3,0x3
    1434:	01098993          	addi	s3,s3,16 # 3010 <s>
    1438:	10000a13          	li	s4,256
    143c:	0034f793          	andi	a5,s1,3
    1440:	0818                	addi	a4,sp,16
    1442:	97ba                	add	a5,a5,a4
    1444:	ffc7c783          	lbu	a5,-4(a5)
    1448:	00094703          	lbu	a4,0(s2)
    144c:	9fb9                	addw	a5,a5,a4
    144e:	9c3d                	addw	s0,s0,a5
    1450:	0ff47413          	andi	s0,s0,255
    1454:	4605                	li	a2,1
    1456:	008985b3          	add	a1,s3,s0
    145a:	854a                	mv	a0,s2
    145c:	00000097          	auipc	ra,0x0
    1460:	f7a080e7          	jalr	-134(ra) # 13d6 <swap_bytes>
    1464:	2485                	addiw	s1,s1,1
    1466:	0905                	addi	s2,s2,1
    1468:	fd449ae3          	bne	s1,s4,143c <random_init+0x46>
    146c:	000037b7          	lui	a5,0x3
    1470:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    1474:	000037b7          	lui	a5,0x3
    1478:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    147c:	000037b7          	lui	a5,0x3
    1480:	4705                	li	a4,1
    1482:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    1486:	70e2                	ld	ra,56(sp)
    1488:	7442                	ld	s0,48(sp)
    148a:	74a2                	ld	s1,40(sp)
    148c:	7902                	ld	s2,32(sp)
    148e:	69e2                	ld	s3,24(sp)
    1490:	6a42                	ld	s4,16(sp)
    1492:	6121                	addi	sp,sp,64
    1494:	8082                	ret

0000000000001496 <random_bytes>:
    1496:	7139                	addi	sp,sp,-64
    1498:	fc06                	sd	ra,56(sp)
    149a:	f822                	sd	s0,48(sp)
    149c:	f426                	sd	s1,40(sp)
    149e:	f04a                	sd	s2,32(sp)
    14a0:	ec4e                	sd	s3,24(sp)
    14a2:	e852                	sd	s4,16(sp)
    14a4:	e456                	sd	s5,8(sp)
    14a6:	e05a                	sd	s6,0(sp)
    14a8:	892a                	mv	s2,a0
    14aa:	8aae                	mv	s5,a1
    14ac:	000037b7          	lui	a5,0x3
    14b0:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    14b4:	c3c1                	beqz	a5,1534 <random_bytes+0x9e>
    14b6:	060a8563          	beqz	s5,1520 <random_bytes+0x8a>
    14ba:	9aca                	add	s5,s5,s2
    14bc:	00003a37          	lui	s4,0x3
    14c0:	000034b7          	lui	s1,0x3
    14c4:	01048493          	addi	s1,s1,16 # 3010 <s>
    14c8:	000039b7          	lui	s3,0x3
    14cc:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    14d0:	2505                	addiw	a0,a0,1
    14d2:	0ff57513          	andi	a0,a0,255
    14d6:	00aa02a3          	sb	a0,5(s4)
    14da:	00a48b33          	add	s6,s1,a0
    14de:	000b4403          	lbu	s0,0(s6)
    14e2:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    14e6:	9c3d                	addw	s0,s0,a5
    14e8:	0ff47413          	andi	s0,s0,255
    14ec:	00898223          	sb	s0,4(s3)
    14f0:	4605                	li	a2,1
    14f2:	008485b3          	add	a1,s1,s0
    14f6:	855a                	mv	a0,s6
    14f8:	00000097          	auipc	ra,0x0
    14fc:	ede080e7          	jalr	-290(ra) # 13d6 <swap_bytes>
    1500:	9426                	add	s0,s0,s1
    1502:	000b4783          	lbu	a5,0(s6)
    1506:	00044703          	lbu	a4,0(s0)
    150a:	9fb9                	addw	a5,a5,a4
    150c:	0ff7f793          	andi	a5,a5,255
    1510:	97a6                	add	a5,a5,s1
    1512:	0007c783          	lbu	a5,0(a5)
    1516:	00f90023          	sb	a5,0(s2)
    151a:	0905                	addi	s2,s2,1
    151c:	fb2a98e3          	bne	s5,s2,14cc <random_bytes+0x36>
    1520:	70e2                	ld	ra,56(sp)
    1522:	7442                	ld	s0,48(sp)
    1524:	74a2                	ld	s1,40(sp)
    1526:	7902                	ld	s2,32(sp)
    1528:	69e2                	ld	s3,24(sp)
    152a:	6a42                	ld	s4,16(sp)
    152c:	6aa2                	ld	s5,8(sp)
    152e:	6b02                	ld	s6,0(sp)
    1530:	6121                	addi	sp,sp,64
    1532:	8082                	ret
    1534:	4501                	li	a0,0
    1536:	00000097          	auipc	ra,0x0
    153a:	ec0080e7          	jalr	-320(ra) # 13f6 <random_init>
    153e:	bfa5                	j	14b6 <random_bytes+0x20>

0000000000001540 <random_ulong>:
    1540:	1101                	addi	sp,sp,-32
    1542:	ec06                	sd	ra,24(sp)
    1544:	45a1                	li	a1,8
    1546:	0028                	addi	a0,sp,8
    1548:	00000097          	auipc	ra,0x0
    154c:	f4e080e7          	jalr	-178(ra) # 1496 <random_bytes>
    1550:	6522                	ld	a0,8(sp)
    1552:	60e2                	ld	ra,24(sp)
    1554:	6105                	addi	sp,sp,32
    1556:	8082                	ret

0000000000001558 <shuffle>:
    1558:	c9b9                	beqz	a1,15ae <shuffle+0x56>
    155a:	7179                	addi	sp,sp,-48
    155c:	f406                	sd	ra,40(sp)
    155e:	f022                	sd	s0,32(sp)
    1560:	ec26                	sd	s1,24(sp)
    1562:	e84a                	sd	s2,16(sp)
    1564:	e44e                	sd	s3,8(sp)
    1566:	e052                	sd	s4,0(sp)
    1568:	8a2a                	mv	s4,a0
    156a:	89ae                	mv	s3,a1
    156c:	84b2                	mv	s1,a2
    156e:	892a                	mv	s2,a0
    1570:	4401                	li	s0,0
    1572:	00000097          	auipc	ra,0x0
    1576:	fce080e7          	jalr	-50(ra) # 1540 <random_ulong>
    157a:	408985b3          	sub	a1,s3,s0
    157e:	02b575b3          	remu	a1,a0,a1
    1582:	95a2                	add	a1,a1,s0
    1584:	029585b3          	mul	a1,a1,s1
    1588:	8626                	mv	a2,s1
    158a:	95d2                	add	a1,a1,s4
    158c:	854a                	mv	a0,s2
    158e:	00000097          	auipc	ra,0x0
    1592:	e48080e7          	jalr	-440(ra) # 13d6 <swap_bytes>
    1596:	0405                	addi	s0,s0,1
    1598:	9926                	add	s2,s2,s1
    159a:	fc899ce3          	bne	s3,s0,1572 <shuffle+0x1a>
    159e:	70a2                	ld	ra,40(sp)
    15a0:	7402                	ld	s0,32(sp)
    15a2:	64e2                	ld	s1,24(sp)
    15a4:	6942                	ld	s2,16(sp)
    15a6:	69a2                	ld	s3,8(sp)
    15a8:	6a02                	ld	s4,0(sp)
    15aa:	6145                	addi	sp,sp,48
    15ac:	8082                	ret
    15ae:	8082                	ret

00000000000015b0 <arc4_init>:
    15b0:	100500a3          	sb	zero,257(a0)
    15b4:	10050023          	sb	zero,256(a0)
    15b8:	4781                	li	a5,0
    15ba:	10000693          	li	a3,256
    15be:	00f50733          	add	a4,a0,a5
    15c2:	00f70023          	sb	a5,0(a4)
    15c6:	0785                	addi	a5,a5,1
    15c8:	fed79be3          	bne	a5,a3,15be <arc4_init+0xe>
    15cc:	86aa                	mv	a3,a0
    15ce:	10050e13          	addi	t3,a0,256
    15d2:	4701                	li	a4,0
    15d4:	4781                	li	a5,0
    15d6:	0006c883          	lbu	a7,0(a3)
    15da:	00f58833          	add	a6,a1,a5
    15de:	00084803          	lbu	a6,0(a6)
    15e2:	00e8873b          	addw	a4,a7,a4
    15e6:	00e8073b          	addw	a4,a6,a4
    15ea:	0ff77713          	andi	a4,a4,255
    15ee:	00e50833          	add	a6,a0,a4
    15f2:	00084303          	lbu	t1,0(a6)
    15f6:	00668023          	sb	t1,0(a3)
    15fa:	01180023          	sb	a7,0(a6)
    15fe:	0785                	addi	a5,a5,1
    1600:	00c7b833          	sltu	a6,a5,a2
    1604:	41000833          	neg	a6,a6
    1608:	0107f7b3          	and	a5,a5,a6
    160c:	0685                	addi	a3,a3,1
    160e:	fdc694e3          	bne	a3,t3,15d6 <arc4_init+0x26>
    1612:	8082                	ret

0000000000001614 <arc4_crypt>:
    1614:	10054e03          	lbu	t3,256(a0)
    1618:	10154803          	lbu	a6,257(a0)
    161c:	fff60e93          	addi	t4,a2,-1
    1620:	c225                	beqz	a2,1680 <arc4_crypt+0x6c>
    1622:	00c588b3          	add	a7,a1,a2
    1626:	86ae                	mv	a3,a1
    1628:	001e031b          	addiw	t1,t3,1
    162c:	40b3033b          	subw	t1,t1,a1
    1630:	00d3073b          	addw	a4,t1,a3
    1634:	0ff77713          	andi	a4,a4,255
    1638:	972a                	add	a4,a4,a0
    163a:	00074603          	lbu	a2,0(a4)
    163e:	0106083b          	addw	a6,a2,a6
    1642:	0ff87813          	andi	a6,a6,255
    1646:	010507b3          	add	a5,a0,a6
    164a:	0007c583          	lbu	a1,0(a5)
    164e:	00b70023          	sb	a1,0(a4)
    1652:	00c78023          	sb	a2,0(a5)
    1656:	0685                	addi	a3,a3,1
    1658:	00074783          	lbu	a5,0(a4)
    165c:	9fb1                	addw	a5,a5,a2
    165e:	0ff7f793          	andi	a5,a5,255
    1662:	97aa                	add	a5,a5,a0
    1664:	0007c783          	lbu	a5,0(a5)
    1668:	fff6c703          	lbu	a4,-1(a3)
    166c:	8fb9                	xor	a5,a5,a4
    166e:	fef68fa3          	sb	a5,-1(a3)
    1672:	fb169fe3          	bne	a3,a7,1630 <arc4_crypt+0x1c>
    1676:	2e85                	addiw	t4,t4,1
    1678:	01ce8e3b          	addw	t3,t4,t3
    167c:	0ffe7e13          	andi	t3,t3,255
    1680:	11c50023          	sb	t3,256(a0)
    1684:	110500a3          	sb	a6,257(a0)
    1688:	8082                	ret

000000000000168a <_main>:
    168a:	1141                	addi	sp,sp,-16
    168c:	e406                	sd	ra,8(sp)
    168e:	00000097          	auipc	ra,0x0
    1692:	972080e7          	jalr	-1678(ra) # 1000 <main>
    1696:	4501                	li	a0,0
    1698:	00000097          	auipc	ra,0x0
    169c:	578080e7          	jalr	1400(ra) # 1c10 <exit>
    16a0:	60a2                	ld	ra,8(sp)
    16a2:	0141                	addi	sp,sp,16
    16a4:	8082                	ret

00000000000016a6 <strcmp>:
    16a6:	00054783          	lbu	a5,0(a0)
    16aa:	cb91                	beqz	a5,16be <strcmp+0x18>
    16ac:	0005c703          	lbu	a4,0(a1)
    16b0:	00f71763          	bne	a4,a5,16be <strcmp+0x18>
    16b4:	0505                	addi	a0,a0,1
    16b6:	0585                	addi	a1,a1,1
    16b8:	00054783          	lbu	a5,0(a0)
    16bc:	fbe5                	bnez	a5,16ac <strcmp+0x6>
    16be:	0005c503          	lbu	a0,0(a1)
    16c2:	40a7853b          	subw	a0,a5,a0
    16c6:	8082                	ret

00000000000016c8 <strcpy>:
    16c8:	87aa                	mv	a5,a0
    16ca:	0585                	addi	a1,a1,1
    16cc:	0785                	addi	a5,a5,1
    16ce:	fff5c703          	lbu	a4,-1(a1)
    16d2:	fee78fa3          	sb	a4,-1(a5)
    16d6:	fb75                	bnez	a4,16ca <strcpy+0x2>
    16d8:	8082                	ret

00000000000016da <strlen>:
    16da:	00054783          	lbu	a5,0(a0)
    16de:	cf81                	beqz	a5,16f6 <strlen+0x1c>
    16e0:	0505                	addi	a0,a0,1
    16e2:	87aa                	mv	a5,a0
    16e4:	4685                	li	a3,1
    16e6:	9e89                	subw	a3,a3,a0
    16e8:	00f6853b          	addw	a0,a3,a5
    16ec:	0785                	addi	a5,a5,1
    16ee:	fff7c703          	lbu	a4,-1(a5)
    16f2:	fb7d                	bnez	a4,16e8 <strlen+0xe>
    16f4:	8082                	ret
    16f6:	4501                	li	a0,0
    16f8:	8082                	ret

00000000000016fa <memset>:
    16fa:	ca19                	beqz	a2,1710 <memset+0x16>
    16fc:	87aa                	mv	a5,a0
    16fe:	1602                	slli	a2,a2,0x20
    1700:	9201                	srli	a2,a2,0x20
    1702:	00a60733          	add	a4,a2,a0
    1706:	00b78023          	sb	a1,0(a5)
    170a:	0785                	addi	a5,a5,1
    170c:	fee79de3          	bne	a5,a4,1706 <memset+0xc>
    1710:	8082                	ret

0000000000001712 <memcmp>:
    1712:	1101                	addi	sp,sp,-32
    1714:	ec06                	sd	ra,24(sp)
    1716:	e822                	sd	s0,16(sp)
    1718:	e426                	sd	s1,8(sp)
    171a:	e04a                	sd	s2,0(sp)
    171c:	892a                	mv	s2,a0
    171e:	842e                	mv	s0,a1
    1720:	84b2                	mv	s1,a2
    1722:	c915                	beqz	a0,1756 <memcmp+0x44>
    1724:	c5ad                	beqz	a1,178e <memcmp+0x7c>
    1726:	fff60713          	addi	a4,a2,-1
    172a:	c645                	beqz	a2,17d2 <memcmp+0xc0>
    172c:	87ca                	mv	a5,s2
    172e:	00190613          	addi	a2,s2,1
    1732:	963a                	add	a2,a2,a4
    1734:	0007c683          	lbu	a3,0(a5)
    1738:	00044703          	lbu	a4,0(s0)
    173c:	08e69463          	bne	a3,a4,17c4 <memcmp+0xb2>
    1740:	0785                	addi	a5,a5,1
    1742:	0405                	addi	s0,s0,1
    1744:	fec798e3          	bne	a5,a2,1734 <memcmp+0x22>
    1748:	4501                	li	a0,0
    174a:	60e2                	ld	ra,24(sp)
    174c:	6442                	ld	s0,16(sp)
    174e:	64a2                	ld	s1,8(sp)
    1750:	6902                	ld	s2,0(sp)
    1752:	6105                	addi	sp,sp,32
    1754:	8082                	ret
    1756:	4501                	li	a0,0
    1758:	da6d                	beqz	a2,174a <memcmp+0x38>
    175a:	03200693          	li	a3,50
    175e:	00002637          	lui	a2,0x2
    1762:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    1766:	000025b7          	lui	a1,0x2
    176a:	1c058593          	addi	a1,a1,448 # 21c0 <crctab+0x410>
    176e:	4509                	li	a0,2
    1770:	00000097          	auipc	ra,0x0
    1774:	bbc080e7          	jalr	-1092(ra) # 132c <fprintf>
    1778:	650d                	lui	a0,0x3
    177a:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    177e:	00000097          	auipc	ra,0x0
    1782:	492080e7          	jalr	1170(ra) # 1c10 <exit>
    1786:	fff48713          	addi	a4,s1,-1
    178a:	f04d                	bnez	s0,172c <memcmp+0x1a>
    178c:	a011                	j	1790 <memcmp+0x7e>
    178e:	c221                	beqz	a2,17ce <memcmp+0xbc>
    1790:	03300693          	li	a3,51
    1794:	00002637          	lui	a2,0x2
    1798:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    179c:	000025b7          	lui	a1,0x2
    17a0:	20858593          	addi	a1,a1,520 # 2208 <crctab+0x458>
    17a4:	4509                	li	a0,2
    17a6:	00000097          	auipc	ra,0x0
    17aa:	b86080e7          	jalr	-1146(ra) # 132c <fprintf>
    17ae:	650d                	lui	a0,0x3
    17b0:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    17b4:	00000097          	auipc	ra,0x0
    17b8:	45c080e7          	jalr	1116(ra) # 1c10 <exit>
    17bc:	fff48713          	addi	a4,s1,-1
    17c0:	4401                	li	s0,0
    17c2:	b7ad                	j	172c <memcmp+0x1a>
    17c4:	4505                	li	a0,1
    17c6:	f8d762e3          	bltu	a4,a3,174a <memcmp+0x38>
    17ca:	557d                	li	a0,-1
    17cc:	bfbd                	j	174a <memcmp+0x38>
    17ce:	4501                	li	a0,0
    17d0:	bfad                	j	174a <memcmp+0x38>
    17d2:	4501                	li	a0,0
    17d4:	bf9d                	j	174a <memcmp+0x38>

00000000000017d6 <memcpy>:
    17d6:	1101                	addi	sp,sp,-32
    17d8:	ec06                	sd	ra,24(sp)
    17da:	e822                	sd	s0,16(sp)
    17dc:	e426                	sd	s1,8(sp)
    17de:	e04a                	sd	s2,0(sp)
    17e0:	84aa                	mv	s1,a0
    17e2:	842e                	mv	s0,a1
    17e4:	8932                	mv	s2,a2
    17e6:	c51d                	beqz	a0,1814 <memcpy+0x3e>
    17e8:	c1ad                	beqz	a1,184a <memcpy+0x74>
    17ea:	fff60693          	addi	a3,a2,-1
    17ee:	ce01                	beqz	a2,1806 <memcpy+0x30>
    17f0:	0685                	addi	a3,a3,1
    17f2:	96a6                	add	a3,a3,s1
    17f4:	87a6                	mv	a5,s1
    17f6:	0405                	addi	s0,s0,1
    17f8:	0785                	addi	a5,a5,1
    17fa:	fff44703          	lbu	a4,-1(s0)
    17fe:	fee78fa3          	sb	a4,-1(a5)
    1802:	fed79ae3          	bne	a5,a3,17f6 <memcpy+0x20>
    1806:	8526                	mv	a0,s1
    1808:	60e2                	ld	ra,24(sp)
    180a:	6442                	ld	s0,16(sp)
    180c:	64a2                	ld	s1,8(sp)
    180e:	6902                	ld	s2,0(sp)
    1810:	6105                	addi	sp,sp,32
    1812:	8082                	ret
    1814:	da6d                	beqz	a2,1806 <memcpy+0x30>
    1816:	04000693          	li	a3,64
    181a:	00002637          	lui	a2,0x2
    181e:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    1822:	000025b7          	lui	a1,0x2
    1826:	25058593          	addi	a1,a1,592 # 2250 <crctab+0x4a0>
    182a:	4509                	li	a0,2
    182c:	00000097          	auipc	ra,0x0
    1830:	b00080e7          	jalr	-1280(ra) # 132c <fprintf>
    1834:	650d                	lui	a0,0x3
    1836:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    183a:	00000097          	auipc	ra,0x0
    183e:	3d6080e7          	jalr	982(ra) # 1c10 <exit>
    1842:	fff90693          	addi	a3,s2,-1
    1846:	f44d                	bnez	s0,17f0 <memcpy+0x1a>
    1848:	a011                	j	184c <memcpy+0x76>
    184a:	de55                	beqz	a2,1806 <memcpy+0x30>
    184c:	04100693          	li	a3,65
    1850:	00002637          	lui	a2,0x2
    1854:	1b060613          	addi	a2,a2,432 # 21b0 <crctab+0x400>
    1858:	000025b7          	lui	a1,0x2
    185c:	29858593          	addi	a1,a1,664 # 2298 <crctab+0x4e8>
    1860:	4509                	li	a0,2
    1862:	00000097          	auipc	ra,0x0
    1866:	aca080e7          	jalr	-1334(ra) # 132c <fprintf>
    186a:	650d                	lui	a0,0x3
    186c:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1870:	00000097          	auipc	ra,0x0
    1874:	3a0080e7          	jalr	928(ra) # 1c10 <exit>
    1878:	fff90693          	addi	a3,s2,-1
    187c:	4401                	li	s0,0
    187e:	bf8d                	j	17f0 <memcpy+0x1a>

0000000000001880 <itoa>:
    1880:	1101                	addi	sp,sp,-32
    1882:	ec06                	sd	ra,24(sp)
    1884:	e822                	sd	s0,16(sp)
    1886:	e426                	sd	s1,8(sp)
    1888:	842a                	mv	s0,a0
    188a:	41f5d71b          	sraiw	a4,a1,0x1f
    188e:	00e5c7b3          	xor	a5,a1,a4
    1892:	9f99                	subw	a5,a5,a4
    1894:	84aa                	mv	s1,a0
    1896:	862a                	mv	a2,a0
    1898:	4681                	li	a3,0
    189a:	4529                	li	a0,10
    189c:	4825                	li	a6,9
    189e:	88b6                	mv	a7,a3
    18a0:	2685                	addiw	a3,a3,1
    18a2:	02a7e73b          	remw	a4,a5,a0
    18a6:	0307071b          	addiw	a4,a4,48
    18aa:	00e60023          	sb	a4,0(a2)
    18ae:	873e                	mv	a4,a5
    18b0:	02a7c7bb          	divw	a5,a5,a0
    18b4:	0605                	addi	a2,a2,1
    18b6:	fee844e3          	blt	a6,a4,189e <itoa+0x1e>
    18ba:	0405c863          	bltz	a1,190a <itoa+0x8a>
    18be:	96a2                	add	a3,a3,s0
    18c0:	00068023          	sb	zero,0(a3)
    18c4:	8522                	mv	a0,s0
    18c6:	00000097          	auipc	ra,0x0
    18ca:	e14080e7          	jalr	-492(ra) # 16da <strlen>
    18ce:	fff5071b          	addiw	a4,a0,-1
    18d2:	02e05763          	blez	a4,1900 <itoa+0x80>
    18d6:	9722                	add	a4,a4,s0
    18d8:	4681                	li	a3,0
    18da:	0004c783          	lbu	a5,0(s1)
    18de:	00074603          	lbu	a2,0(a4)
    18e2:	00c48023          	sb	a2,0(s1)
    18e6:	00f70023          	sb	a5,0(a4)
    18ea:	0016879b          	addiw	a5,a3,1
    18ee:	0007869b          	sext.w	a3,a5
    18f2:	0485                	addi	s1,s1,1
    18f4:	177d                	addi	a4,a4,-1
    18f6:	fff7c793          	not	a5,a5
    18fa:	9fa9                	addw	a5,a5,a0
    18fc:	fcf6cfe3          	blt	a3,a5,18da <itoa+0x5a>
    1900:	60e2                	ld	ra,24(sp)
    1902:	6442                	ld	s0,16(sp)
    1904:	64a2                	ld	s1,8(sp)
    1906:	6105                	addi	sp,sp,32
    1908:	8082                	ret
    190a:	96a2                	add	a3,a3,s0
    190c:	02d00793          	li	a5,45
    1910:	00f68023          	sb	a5,0(a3)
    1914:	0028869b          	addiw	a3,a7,2
    1918:	b75d                	j	18be <itoa+0x3e>

000000000000191a <atoi>:
    191a:	00054783          	lbu	a5,0(a0)
    191e:	02000713          	li	a4,32
    1922:	00e79763          	bne	a5,a4,1930 <atoi+0x16>
    1926:	0505                	addi	a0,a0,1
    1928:	00054783          	lbu	a5,0(a0)
    192c:	fee78de3          	beq	a5,a4,1926 <atoi+0xc>
    1930:	02b00713          	li	a4,43
    1934:	04e78663          	beq	a5,a4,1980 <atoi+0x66>
    1938:	02d00713          	li	a4,45
    193c:	4805                	li	a6,1
    193e:	04e78463          	beq	a5,a4,1986 <atoi+0x6c>
    1942:	00054683          	lbu	a3,0(a0)
    1946:	fd06879b          	addiw	a5,a3,-48
    194a:	0ff7f793          	andi	a5,a5,255
    194e:	4725                	li	a4,9
    1950:	02f76e63          	bltu	a4,a5,198c <atoi+0x72>
    1954:	4601                	li	a2,0
    1956:	45a5                	li	a1,9
    1958:	0505                	addi	a0,a0,1
    195a:	0026179b          	slliw	a5,a2,0x2
    195e:	9fb1                	addw	a5,a5,a2
    1960:	0017979b          	slliw	a5,a5,0x1
    1964:	9fb5                	addw	a5,a5,a3
    1966:	fd07861b          	addiw	a2,a5,-48
    196a:	00054683          	lbu	a3,0(a0)
    196e:	fd06871b          	addiw	a4,a3,-48
    1972:	0ff77713          	andi	a4,a4,255
    1976:	fee5f1e3          	bgeu	a1,a4,1958 <atoi+0x3e>
    197a:	02c8053b          	mulw	a0,a6,a2
    197e:	8082                	ret
    1980:	0505                	addi	a0,a0,1
    1982:	4805                	li	a6,1
    1984:	bf7d                	j	1942 <atoi+0x28>
    1986:	0505                	addi	a0,a0,1
    1988:	587d                	li	a6,-1
    198a:	bf65                	j	1942 <atoi+0x28>
    198c:	4601                	li	a2,0
    198e:	b7f5                	j	197a <atoi+0x60>

0000000000001990 <check_file_handle>:
    1990:	d8010113          	addi	sp,sp,-640
    1994:	26113c23          	sd	ra,632(sp)
    1998:	26813823          	sd	s0,624(sp)
    199c:	26913423          	sd	s1,616(sp)
    19a0:	27213023          	sd	s2,608(sp)
    19a4:	25313c23          	sd	s3,600(sp)
    19a8:	25413823          	sd	s4,592(sp)
    19ac:	25513423          	sd	s5,584(sp)
    19b0:	25613023          	sd	s6,576(sp)
    19b4:	23713c23          	sd	s7,568(sp)
    19b8:	23813823          	sd	s8,560(sp)
    19bc:	23913423          	sd	s9,552(sp)
    19c0:	23a13023          	sd	s10,544(sp)
    19c4:	21b13c23          	sd	s11,536(sp)
    19c8:	8baa                	mv	s7,a0
    19ca:	8a2e                	mv	s4,a1
    19cc:	8c32                	mv	s8,a2
    19ce:	89b6                	mv	s3,a3
    19d0:	040c                	addi	a1,sp,512
    19d2:	00000097          	auipc	ra,0x0
    19d6:	28e080e7          	jalr	654(ra) # 1c60 <fstat>
    19da:	20813603          	ld	a2,520(sp)
    19de:	03361163          	bne	a2,s3,1a00 <check_file_handle+0x70>
    19e2:	06098763          	beqz	s3,1a50 <check_file_handle+0xc0>
    19e6:	4901                	li	s2,0
    19e8:	20000a93          	li	s5,512
    19ec:	00002cb7          	lui	s9,0x2
    19f0:	00002db7          	lui	s11,0x2
    19f4:	6b0d                	lui	s6,0x3
    19f6:	039b0b13          	addi	s6,s6,57 # 3039 <s+0x29>
    19fa:	00002d37          	lui	s10,0x2
    19fe:	aa39                	j	1b1c <check_file_handle+0x18c>
    1a00:	86ce                	mv	a3,s3
    1a02:	85d2                	mv	a1,s4
    1a04:	00002537          	lui	a0,0x2
    1a08:	2e050513          	addi	a0,a0,736 # 22e0 <crctab+0x530>
    1a0c:	00000097          	auipc	ra,0x0
    1a10:	942080e7          	jalr	-1726(ra) # 134e <printf>
    1a14:	fc0999e3          	bnez	s3,19e6 <check_file_handle+0x56>
    1a18:	20813683          	ld	a3,520(sp)
    1a1c:	03368a63          	beq	a3,s3,1a50 <check_file_handle+0xc0>
    1a20:	0a600813          	li	a6,166
    1a24:	000027b7          	lui	a5,0x2
    1a28:	1b078793          	addi	a5,a5,432 # 21b0 <crctab+0x400>
    1a2c:	874e                	mv	a4,s3
    1a2e:	8652                	mv	a2,s4
    1a30:	000025b7          	lui	a1,0x2
    1a34:	3b058593          	addi	a1,a1,944 # 23b0 <crctab+0x600>
    1a38:	4509                	li	a0,2
    1a3a:	00000097          	auipc	ra,0x0
    1a3e:	8f2080e7          	jalr	-1806(ra) # 132c <fprintf>
    1a42:	650d                	lui	a0,0x3
    1a44:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1a48:	00000097          	auipc	ra,0x0
    1a4c:	1c8080e7          	jalr	456(ra) # 1c10 <exit>
    1a50:	85d2                	mv	a1,s4
    1a52:	00002537          	lui	a0,0x2
    1a56:	3f850513          	addi	a0,a0,1016 # 23f8 <crctab+0x648>
    1a5a:	00000097          	auipc	ra,0x0
    1a5e:	8f4080e7          	jalr	-1804(ra) # 134e <printf>
    1a62:	27813083          	ld	ra,632(sp)
    1a66:	27013403          	ld	s0,624(sp)
    1a6a:	26813483          	ld	s1,616(sp)
    1a6e:	26013903          	ld	s2,608(sp)
    1a72:	25813983          	ld	s3,600(sp)
    1a76:	25013a03          	ld	s4,592(sp)
    1a7a:	24813a83          	ld	s5,584(sp)
    1a7e:	24013b03          	ld	s6,576(sp)
    1a82:	23813b83          	ld	s7,568(sp)
    1a86:	23013c03          	ld	s8,560(sp)
    1a8a:	22813c83          	ld	s9,552(sp)
    1a8e:	22013d03          	ld	s10,544(sp)
    1a92:	21813d83          	ld	s11,536(sp)
    1a96:	28010113          	addi	sp,sp,640
    1a9a:	8082                	ret
    1a9c:	09d00893          	li	a7,157
    1aa0:	1b0c8813          	addi	a6,s9,432 # 21b0 <crctab+0x400>
    1aa4:	87aa                	mv	a5,a0
    1aa6:	8752                	mv	a4,s4
    1aa8:	86ca                	mv	a3,s2
    1aaa:	8622                	mv	a2,s0
    1aac:	310d8593          	addi	a1,s11,784 # 2310 <crctab+0x560>
    1ab0:	4509                	li	a0,2
    1ab2:	00000097          	auipc	ra,0x0
    1ab6:	87a080e7          	jalr	-1926(ra) # 132c <fprintf>
    1aba:	855a                	mv	a0,s6
    1abc:	00000097          	auipc	ra,0x0
    1ac0:	154080e7          	jalr	340(ra) # 1c10 <exit>
    1ac4:	a89d                	j	1b3a <check_file_handle+0x1aa>
    1ac6:	00160593          	addi	a1,a2,1
    1aca:	0285f163          	bgeu	a1,s0,1aec <check_file_handle+0x15c>
    1ace:	00c10733          	add	a4,sp,a2
    1ad2:	00b487b3          	add	a5,s1,a1
    1ad6:	00174683          	lbu	a3,1(a4)
    1ada:	0007c783          	lbu	a5,0(a5)
    1ade:	00f68763          	beq	a3,a5,1aec <check_file_handle+0x15c>
    1ae2:	0585                	addi	a1,a1,1
    1ae4:	0705                	addi	a4,a4,1
    1ae6:	feb416e3          	bne	s0,a1,1ad2 <check_file_handle+0x142>
    1aea:	85a2                	mv	a1,s0
    1aec:	08100813          	li	a6,129
    1af0:	1b0c8793          	addi	a5,s9,432
    1af4:	8752                	mv	a4,s4
    1af6:	012606b3          	add	a3,a2,s2
    1afa:	40c58633          	sub	a2,a1,a2
    1afe:	358d0593          	addi	a1,s10,856 # 2358 <crctab+0x5a8>
    1b02:	4509                	li	a0,2
    1b04:	00000097          	auipc	ra,0x0
    1b08:	828080e7          	jalr	-2008(ra) # 132c <fprintf>
    1b0c:	855a                	mv	a0,s6
    1b0e:	00000097          	auipc	ra,0x0
    1b12:	102080e7          	jalr	258(ra) # 1c10 <exit>
    1b16:	9922                	add	s2,s2,s0
    1b18:	f13970e3          	bgeu	s2,s3,1a18 <check_file_handle+0x88>
    1b1c:	41298433          	sub	s0,s3,s2
    1b20:	008af363          	bgeu	s5,s0,1b26 <check_file_handle+0x196>
    1b24:	8456                	mv	s0,s5
    1b26:	0004061b          	sext.w	a2,s0
    1b2a:	858a                	mv	a1,sp
    1b2c:	855e                	mv	a0,s7
    1b2e:	00000097          	auipc	ra,0x0
    1b32:	10a080e7          	jalr	266(ra) # 1c38 <read>
    1b36:	f68513e3          	bne	a0,s0,1a9c <check_file_handle+0x10c>
    1b3a:	012c04b3          	add	s1,s8,s2
    1b3e:	8622                	mv	a2,s0
    1b40:	85a6                	mv	a1,s1
    1b42:	850a                	mv	a0,sp
    1b44:	00000097          	auipc	ra,0x0
    1b48:	bce080e7          	jalr	-1074(ra) # 1712 <memcmp>
    1b4c:	d569                	beqz	a0,1b16 <check_file_handle+0x186>
    1b4e:	03298163          	beq	s3,s2,1b70 <check_file_handle+0x1e0>
    1b52:	870a                	mv	a4,sp
    1b54:	4601                	li	a2,0
    1b56:	00c487b3          	add	a5,s1,a2
    1b5a:	00074683          	lbu	a3,0(a4)
    1b5e:	0007c783          	lbu	a5,0(a5)
    1b62:	f6f692e3          	bne	a3,a5,1ac6 <check_file_handle+0x136>
    1b66:	0605                	addi	a2,a2,1
    1b68:	0705                	addi	a4,a4,1
    1b6a:	fe8666e3          	bltu	a2,s0,1b56 <check_file_handle+0x1c6>
    1b6e:	bfa1                	j	1ac6 <check_file_handle+0x136>
    1b70:	4601                	li	a2,0
    1b72:	4585                	li	a1,1
    1b74:	bfa5                	j	1aec <check_file_handle+0x15c>

0000000000001b76 <check_file>:
    1b76:	7179                	addi	sp,sp,-48
    1b78:	f406                	sd	ra,40(sp)
    1b7a:	f022                	sd	s0,32(sp)
    1b7c:	ec26                	sd	s1,24(sp)
    1b7e:	e84a                	sd	s2,16(sp)
    1b80:	e44e                	sd	s3,8(sp)
    1b82:	84aa                	mv	s1,a0
    1b84:	892e                	mv	s2,a1
    1b86:	89b2                	mv	s3,a2
    1b88:	4581                	li	a1,0
    1b8a:	00000097          	auipc	ra,0x0
    1b8e:	0a6080e7          	jalr	166(ra) # 1c30 <open>
    1b92:	842a                	mv	s0,a0
    1b94:	4789                	li	a5,2
    1b96:	02a7df63          	bge	a5,a0,1bd4 <check_file+0x5e>
    1b9a:	86ce                	mv	a3,s3
    1b9c:	864a                	mv	a2,s2
    1b9e:	85a6                	mv	a1,s1
    1ba0:	8522                	mv	a0,s0
    1ba2:	00000097          	auipc	ra,0x0
    1ba6:	dee080e7          	jalr	-530(ra) # 1990 <check_file_handle>
    1baa:	85a6                	mv	a1,s1
    1bac:	00002537          	lui	a0,0x2
    1bb0:	48050513          	addi	a0,a0,1152 # 2480 <crctab+0x6d0>
    1bb4:	fffff097          	auipc	ra,0xfffff
    1bb8:	79a080e7          	jalr	1946(ra) # 134e <printf>
    1bbc:	8522                	mv	a0,s0
    1bbe:	00000097          	auipc	ra,0x0
    1bc2:	09a080e7          	jalr	154(ra) # 1c58 <close>
    1bc6:	70a2                	ld	ra,40(sp)
    1bc8:	7402                	ld	s0,32(sp)
    1bca:	64e2                	ld	s1,24(sp)
    1bcc:	6942                	ld	s2,16(sp)
    1bce:	69a2                	ld	s3,8(sp)
    1bd0:	6145                	addi	sp,sp,48
    1bd2:	8082                	ret
    1bd4:	0ae00713          	li	a4,174
    1bd8:	000026b7          	lui	a3,0x2
    1bdc:	1b068693          	addi	a3,a3,432 # 21b0 <crctab+0x400>
    1be0:	8626                	mv	a2,s1
    1be2:	000025b7          	lui	a1,0x2
    1be6:	41858593          	addi	a1,a1,1048 # 2418 <crctab+0x668>
    1bea:	4509                	li	a0,2
    1bec:	fffff097          	auipc	ra,0xfffff
    1bf0:	740080e7          	jalr	1856(ra) # 132c <fprintf>
    1bf4:	650d                	lui	a0,0x3
    1bf6:	03950513          	addi	a0,a0,57 # 3039 <s+0x29>
    1bfa:	00000097          	auipc	ra,0x0
    1bfe:	016080e7          	jalr	22(ra) # 1c10 <exit>
    1c02:	bf61                	j	1b9a <check_file+0x24>

0000000000001c04 <r_sp>:
    1c04:	850a                	mv	a0,sp
    1c06:	8082                	ret

0000000000001c08 <halt>:
    1c08:	4885                	li	a7,1
    1c0a:	00000073          	ecall
    1c0e:	8082                	ret

0000000000001c10 <exit>:
    1c10:	4889                	li	a7,2
    1c12:	00000073          	ecall
    1c16:	8082                	ret

0000000000001c18 <exec>:
    1c18:	488d                	li	a7,3
    1c1a:	00000073          	ecall
    1c1e:	8082                	ret

0000000000001c20 <wait>:
    1c20:	4891                	li	a7,4
    1c22:	00000073          	ecall
    1c26:	8082                	ret

0000000000001c28 <remove>:
    1c28:	4895                	li	a7,5
    1c2a:	00000073          	ecall
    1c2e:	8082                	ret

0000000000001c30 <open>:
    1c30:	4899                	li	a7,6
    1c32:	00000073          	ecall
    1c36:	8082                	ret

0000000000001c38 <read>:
    1c38:	489d                	li	a7,7
    1c3a:	00000073          	ecall
    1c3e:	8082                	ret

0000000000001c40 <write>:
    1c40:	48a1                	li	a7,8
    1c42:	00000073          	ecall
    1c46:	8082                	ret

0000000000001c48 <seek>:
    1c48:	48a5                	li	a7,9
    1c4a:	00000073          	ecall
    1c4e:	8082                	ret

0000000000001c50 <tell>:
    1c50:	48a9                	li	a7,10
    1c52:	00000073          	ecall
    1c56:	8082                	ret

0000000000001c58 <close>:
    1c58:	48ad                	li	a7,11
    1c5a:	00000073          	ecall
    1c5e:	8082                	ret

0000000000001c60 <fstat>:
    1c60:	48b1                	li	a7,12
    1c62:	00000073          	ecall
    1c66:	8082                	ret

0000000000001c68 <mmap>:
    1c68:	48b5                	li	a7,13
    1c6a:	00000073          	ecall
    1c6e:	8082                	ret

0000000000001c70 <munmap>:
    1c70:	48b9                	li	a7,14
    1c72:	00000073          	ecall
    1c76:	8082                	ret

0000000000001c78 <chdir>:
    1c78:	48bd                	li	a7,15
    1c7a:	00000073          	ecall
    1c7e:	8082                	ret

0000000000001c80 <mkdir>:
    1c80:	48c1                	li	a7,16
    1c82:	00000073          	ecall
    1c86:	8082                	ret
