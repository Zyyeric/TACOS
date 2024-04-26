
build/user/vm/page-merge-par:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <init>:
    1000:	712d                	addi	sp,sp,-288
    1002:	ee06                	sd	ra,280(sp)
    1004:	ea22                	sd	s0,272(sp)
    1006:	4619                	li	a2,6
    1008:	000025b7          	lui	a1,0x2
    100c:	00058593          	mv	a1,a1
    1010:	0028                	addi	a0,sp,8
    1012:	00001097          	auipc	ra,0x1
    1016:	90c080e7          	jalr	-1780(ra) # 191e <arc4_init>
    101a:	00100637          	lui	a2,0x100
    101e:	00104437          	lui	s0,0x104
    1022:	81040593          	addi	a1,s0,-2032 # 103810 <buf1>
    1026:	0028                	addi	a0,sp,8
    1028:	00001097          	auipc	ra,0x1
    102c:	95a080e7          	jalr	-1702(ra) # 1982 <arc4_crypt>
    1030:	81040713          	addi	a4,s0,-2032
    1034:	001005b7          	lui	a1,0x100
    1038:	95ba                	add	a1,a1,a4
    103a:	00003637          	lui	a2,0x3
    103e:	01060613          	addi	a2,a2,16 # 3010 <histogram>
    1042:	00074783          	lbu	a5,0(a4)
    1046:	078e                	slli	a5,a5,0x3
    1048:	97b2                	add	a5,a5,a2
    104a:	6394                	ld	a3,0(a5)
    104c:	0685                	addi	a3,a3,1
    104e:	e394                	sd	a3,0(a5)
    1050:	0705                	addi	a4,a4,1
    1052:	feb718e3          	bne	a4,a1,1042 <init+0x42>
    1056:	60f2                	ld	ra,280(sp)
    1058:	6452                	ld	s0,272(sp)
    105a:	6115                	addi	sp,sp,288
    105c:	8082                	ret

000000000000105e <sort_chunks>:
    105e:	7169                	addi	sp,sp,-304
    1060:	f606                	sd	ra,296(sp)
    1062:	f222                	sd	s0,288(sp)
    1064:	ee26                	sd	s1,280(sp)
    1066:	ea4a                	sd	s2,272(sp)
    1068:	e64e                	sd	s3,264(sp)
    106a:	e252                	sd	s4,256(sp)
    106c:	fdd6                	sd	s5,248(sp)
    106e:	f9da                	sd	s6,240(sp)
    1070:	f5de                	sd	s7,232(sp)
    1072:	f1e2                	sd	s8,224(sp)
    1074:	ede6                	sd	s9,216(sp)
    1076:	e9ea                	sd	s10,208(sp)
    1078:	e5ee                	sd	s11,200(sp)
    107a:	8b2a                	mv	s6,a0
    107c:	8bae                	mv	s7,a1
    107e:	00104937          	lui	s2,0x104
    1082:	81090a13          	addi	s4,s2,-2032 # 103810 <buf1>
    1086:	0a010993          	addi	s3,sp,160
    108a:	8ace                	mv	s5,s3
    108c:	81090913          	addi	s2,s2,-2032
    1090:	4481                	li	s1,0
    1092:	00002c37          	lui	s8,0x2
    1096:	00002d37          	lui	s10,0x2
    109a:	00002db7          	lui	s11,0x2
    109e:	6c8d                	lui	s9,0x3
    10a0:	039c8c93          	addi	s9,s9,57 # 3039 <histogram+0x29>
    10a4:	a0a9                	j	10ee <sort_chunks+0x90>
    10a6:	00020637          	lui	a2,0x20
    10aa:	85ca                	mv	a1,s2
    10ac:	8522                	mv	a0,s0
    10ae:	00001097          	auipc	ra,0x1
    10b2:	f00080e7          	jalr	-256(ra) # 1fae <write>
    10b6:	8522                	mv	a0,s0
    10b8:	00001097          	auipc	ra,0x1
    10bc:	f0e080e7          	jalr	-242(ra) # 1fc6 <close>
    10c0:	e45a                	sd	s6,8(sp)
    10c2:	101c                	addi	a5,sp,32
    10c4:	e83e                	sd	a5,16(sp)
    10c6:	ec02                	sd	zero,24(sp)
    10c8:	002c                	addi	a1,sp,8
    10ca:	855a                	mv	a0,s6
    10cc:	00001097          	auipc	ra,0x1
    10d0:	eba080e7          	jalr	-326(ra) # 1f86 <exec>
    10d4:	00aaa023          	sw	a0,0(s5)
    10d8:	57fd                	li	a5,-1
    10da:	06f50a63          	beq	a0,a5,114e <sort_chunks+0xf0>
    10de:	0485                	addi	s1,s1,1
    10e0:	000207b7          	lui	a5,0x20
    10e4:	993e                	add	s2,s2,a5
    10e6:	0a91                	addi	s5,s5,4
    10e8:	47a1                	li	a5,8
    10ea:	08f48563          	beq	s1,a5,1174 <sort_chunks+0x116>
    10ee:	008c0593          	addi	a1,s8,8 # 2008 <mkdir+0x1a>
    10f2:	1008                	addi	a0,sp,32
    10f4:	00001097          	auipc	ra,0x1
    10f8:	942080e7          	jalr	-1726(ra) # 1a36 <strcpy>
    10fc:	1008                	addi	a0,sp,32
    10fe:	00001097          	auipc	ra,0x1
    1102:	94a080e7          	jalr	-1718(ra) # 1a48 <strlen>
    1106:	0004859b          	sext.w	a1,s1
    110a:	101c                	addi	a5,sp,32
    110c:	953e                	add	a0,a0,a5
    110e:	00001097          	auipc	ra,0x1
    1112:	ae0080e7          	jalr	-1312(ra) # 1bee <itoa>
    1116:	20100593          	li	a1,513
    111a:	1008                	addi	a0,sp,32
    111c:	00001097          	auipc	ra,0x1
    1120:	e82080e7          	jalr	-382(ra) # 1f9e <open>
    1124:	842a                	mv	s0,a0
    1126:	4789                	li	a5,2
    1128:	f6a7cfe3          	blt	a5,a0,10a6 <sort_chunks+0x48>
    112c:	02b00693          	li	a3,43
    1130:	010d0613          	addi	a2,s10,16 # 2010 <mkdir+0x22>
    1134:	030d8593          	addi	a1,s11,48 # 2030 <mkdir+0x42>
    1138:	4509                	li	a0,2
    113a:	00000097          	auipc	ra,0x0
    113e:	560080e7          	jalr	1376(ra) # 169a <fprintf>
    1142:	8566                	mv	a0,s9
    1144:	00001097          	auipc	ra,0x1
    1148:	e3a080e7          	jalr	-454(ra) # 1f7e <exit>
    114c:	bfa9                	j	10a6 <sort_chunks+0x48>
    114e:	03100693          	li	a3,49
    1152:	010d0613          	addi	a2,s10,16
    1156:	000027b7          	lui	a5,0x2
    115a:	08878593          	addi	a1,a5,136 # 2088 <mkdir+0x9a>
    115e:	4509                	li	a0,2
    1160:	00000097          	auipc	ra,0x0
    1164:	53a080e7          	jalr	1338(ra) # 169a <fprintf>
    1168:	8566                	mv	a0,s9
    116a:	00001097          	auipc	ra,0x1
    116e:	e14080e7          	jalr	-492(ra) # 1f7e <exit>
    1172:	b7b5                	j	10de <sort_chunks+0x80>
    1174:	4481                	li	s1,0
    1176:	00002c37          	lui	s8,0x2
    117a:	00002cb7          	lui	s9,0x2
    117e:	690d                	lui	s2,0x3
    1180:	03990913          	addi	s2,s2,57 # 3039 <histogram+0x29>
    1184:	00002b37          	lui	s6,0x2
    1188:	00002d37          	lui	s10,0x2
    118c:	4aa1                	li	s5,8
    118e:	a09d                	j	11f4 <sort_chunks+0x196>
    1190:	008b0593          	addi	a1,s6,8 # 2008 <mkdir+0x1a>
    1194:	1008                	addi	a0,sp,32
    1196:	00001097          	auipc	ra,0x1
    119a:	8a0080e7          	jalr	-1888(ra) # 1a36 <strcpy>
    119e:	1008                	addi	a0,sp,32
    11a0:	00001097          	auipc	ra,0x1
    11a4:	8a8080e7          	jalr	-1880(ra) # 1a48 <strlen>
    11a8:	0004859b          	sext.w	a1,s1
    11ac:	101c                	addi	a5,sp,32
    11ae:	953e                	add	a0,a0,a5
    11b0:	00001097          	auipc	ra,0x1
    11b4:	a3e080e7          	jalr	-1474(ra) # 1bee <itoa>
    11b8:	4581                	li	a1,0
    11ba:	1008                	addi	a0,sp,32
    11bc:	00001097          	auipc	ra,0x1
    11c0:	de2080e7          	jalr	-542(ra) # 1f9e <open>
    11c4:	842a                	mv	s0,a0
    11c6:	4789                	li	a5,2
    11c8:	06a7d063          	bge	a5,a0,1228 <sort_chunks+0x1ca>
    11cc:	00020637          	lui	a2,0x20
    11d0:	85d2                	mv	a1,s4
    11d2:	8522                	mv	a0,s0
    11d4:	00001097          	auipc	ra,0x1
    11d8:	dd2080e7          	jalr	-558(ra) # 1fa6 <read>
    11dc:	8522                	mv	a0,s0
    11de:	00001097          	auipc	ra,0x1
    11e2:	de8080e7          	jalr	-536(ra) # 1fc6 <close>
    11e6:	0485                	addi	s1,s1,1
    11e8:	0991                	addi	s3,s3,4
    11ea:	000207b7          	lui	a5,0x20
    11ee:	9a3e                	add	s4,s4,a5
    11f0:	05548d63          	beq	s1,s5,124a <sort_chunks+0x1ec>
    11f4:	0009a503          	lw	a0,0(s3)
    11f8:	00001097          	auipc	ra,0x1
    11fc:	d96080e7          	jalr	-618(ra) # 1f8e <wait>
    1200:	f97508e3          	beq	a0,s7,1190 <sort_chunks+0x132>
    1204:	03800713          	li	a4,56
    1208:	010c0693          	addi	a3,s8,16 # 2010 <mkdir+0x22>
    120c:	8626                	mv	a2,s1
    120e:	0e0c8593          	addi	a1,s9,224 # 20e0 <mkdir+0xf2>
    1212:	4509                	li	a0,2
    1214:	00000097          	auipc	ra,0x0
    1218:	486080e7          	jalr	1158(ra) # 169a <fprintf>
    121c:	854a                	mv	a0,s2
    121e:	00001097          	auipc	ra,0x1
    1222:	d60080e7          	jalr	-672(ra) # 1f7e <exit>
    1226:	b7ad                	j	1190 <sort_chunks+0x132>
    1228:	03d00693          	li	a3,61
    122c:	010c0613          	addi	a2,s8,16
    1230:	140d0593          	addi	a1,s10,320 # 2140 <mkdir+0x152>
    1234:	4509                	li	a0,2
    1236:	00000097          	auipc	ra,0x0
    123a:	464080e7          	jalr	1124(ra) # 169a <fprintf>
    123e:	854a                	mv	a0,s2
    1240:	00001097          	auipc	ra,0x1
    1244:	d3e080e7          	jalr	-706(ra) # 1f7e <exit>
    1248:	b751                	j	11cc <sort_chunks+0x16e>
    124a:	70b2                	ld	ra,296(sp)
    124c:	7412                	ld	s0,288(sp)
    124e:	64f2                	ld	s1,280(sp)
    1250:	6952                	ld	s2,272(sp)
    1252:	69b2                	ld	s3,264(sp)
    1254:	6a12                	ld	s4,256(sp)
    1256:	7aee                	ld	s5,248(sp)
    1258:	7b4e                	ld	s6,240(sp)
    125a:	7bae                	ld	s7,232(sp)
    125c:	7c0e                	ld	s8,224(sp)
    125e:	6cee                	ld	s9,216(sp)
    1260:	6d4e                	ld	s10,208(sp)
    1262:	6dae                	ld	s11,200(sp)
    1264:	6155                	addi	sp,sp,304
    1266:	8082                	ret

0000000000001268 <parallel_merge>:
    1268:	7175                	addi	sp,sp,-144
    126a:	e506                	sd	ra,136(sp)
    126c:	e122                	sd	s0,128(sp)
    126e:	fca6                	sd	s1,120(sp)
    1270:	f8ca                	sd	s2,112(sp)
    1272:	f4ce                	sd	s3,104(sp)
    1274:	f0d2                	sd	s4,96(sp)
    1276:	ecd6                	sd	s5,88(sp)
    1278:	e8da                	sd	s6,80(sp)
    127a:	e4de                	sd	s7,72(sp)
    127c:	e0e2                	sd	s8,64(sp)
    127e:	842a                	mv	s0,a0
    1280:	84ae                	mv	s1,a1
    1282:	00000097          	auipc	ra,0x0
    1286:	d7e080e7          	jalr	-642(ra) # 1000 <init>
    128a:	85a6                	mv	a1,s1
    128c:	8522                	mv	a0,s0
    128e:	00000097          	auipc	ra,0x0
    1292:	dd0080e7          	jalr	-560(ra) # 105e <sort_chunks>
    1296:	00104737          	lui	a4,0x104
    129a:	81070713          	addi	a4,a4,-2032 # 103810 <buf1>
    129e:	0090                	addi	a2,sp,64
    12a0:	878a                	mv	a5,sp
    12a2:	000206b7          	lui	a3,0x20
    12a6:	e398                	sd	a4,0(a5)
    12a8:	9736                	add	a4,a4,a3
    12aa:	07a1                	addi	a5,a5,8
    12ac:	fec79de3          	bne	a5,a2,12a6 <parallel_merge+0x3e>
    12b0:	00004537          	lui	a0,0x4
    12b4:	81150513          	addi	a0,a0,-2031 # 3811 <buf2+0x1>
    12b8:	44a1                	li	s1,8
    12ba:	4305                	li	t1,1
    12bc:	001048b7          	lui	a7,0x104
    12c0:	81088893          	addi	a7,a7,-2032 # 103810 <buf1>
    12c4:	00020837          	lui	a6,0x20
    12c8:	187d                	addi	a6,a6,-1
    12ca:	4e01                	li	t3,0
    12cc:	a209                	j	13ce <parallel_merge+0x166>
    12ce:	0705                	addi	a4,a4,1
    12d0:	06a1                	addi	a3,a3,8
    12d2:	0a970d63          	beq	a4,s1,138c <parallel_merge+0x124>
    12d6:	668c                	ld	a1,8(a3)
    12d8:	00361793          	slli	a5,a2,0x3
    12dc:	0080                	addi	s0,sp,64
    12de:	97a2                	add	a5,a5,s0
    12e0:	fc07b783          	ld	a5,-64(a5) # 1ffc0 <buf2+0x1c7b0>
    12e4:	0005c583          	lbu	a1,0(a1) # 100000 <buf2+0xfc7f0>
    12e8:	0007c783          	lbu	a5,0(a5)
    12ec:	fef5f1e3          	bgeu	a1,a5,12ce <parallel_merge+0x66>
    12f0:	863a                	mv	a2,a4
    12f2:	bff1                	j	12ce <parallel_merge+0x66>
    12f4:	6782                	ld	a5,0(sp)
    12f6:	0007c703          	lbu	a4,0(a5)
    12fa:	fee50fa3          	sb	a4,-1(a0)
    12fe:	0785                	addi	a5,a5,1
    1300:	e03e                	sd	a5,0(sp)
    1302:	411787b3          	sub	a5,a5,a7
    1306:	0107f633          	and	a2,a5,a6
    130a:	c25d                	beqz	a2,13b0 <parallel_merge+0x148>
    130c:	a87d                	j	13ca <parallel_merge+0x162>
    130e:	00003437          	lui	s0,0x3
    1312:	01040413          	addi	s0,s0,16 # 3010 <histogram>
    1316:	89a6                	mv	s3,s1
    1318:	00004ab7          	lui	s5,0x4
    131c:	810a8a93          	addi	s5,s5,-2032 # 3810 <buf2>
    1320:	00002c37          	lui	s8,0x2
    1324:	00002bb7          	lui	s7,0x2
    1328:	6b0d                	lui	s6,0x3
    132a:	039b0b13          	addi	s6,s6,57 # 3039 <histogram+0x29>
    132e:	a0b1                	j	137a <parallel_merge+0x112>
    1330:	06700793          	li	a5,103
    1334:	010c0713          	addi	a4,s8,16 # 2010 <mkdir+0x22>
    1338:	86ce                	mv	a3,s3
    133a:	188b8593          	addi	a1,s7,392 # 2188 <mkdir+0x19a>
    133e:	4509                	li	a0,2
    1340:	00000097          	auipc	ra,0x0
    1344:	35a080e7          	jalr	858(ra) # 169a <fprintf>
    1348:	855a                	mv	a0,s6
    134a:	00001097          	auipc	ra,0x1
    134e:	c34080e7          	jalr	-972(ra) # 1f7e <exit>
    1352:	0985                	addi	s3,s3,1
    1354:	000a3783          	ld	a5,0(s4)
    1358:	fff78713          	addi	a4,a5,-1
    135c:	00ea3023          	sd	a4,0(s4)
    1360:	0905                	addi	s2,s2,1
    1362:	c791                	beqz	a5,136e <parallel_merge+0x106>
    1364:	00094603          	lbu	a2,0(s2)
    1368:	fe9605e3          	beq	a2,s1,1352 <parallel_merge+0xea>
    136c:	b7d1                	j	1330 <parallel_merge+0xc8>
    136e:	0485                	addi	s1,s1,1
    1370:	0421                	addi	s0,s0,8
    1372:	10000793          	li	a5,256
    1376:	06f48263          	beq	s1,a5,13da <parallel_merge+0x172>
    137a:	8a22                	mv	s4,s0
    137c:	601c                	ld	a5,0(s0)
    137e:	fff78713          	addi	a4,a5,-1
    1382:	e018                	sd	a4,0(s0)
    1384:	01598933          	add	s2,s3,s5
    1388:	fff1                	bnez	a5,1364 <parallel_merge+0xfc>
    138a:	b7d5                	j	136e <parallel_merge+0x106>
    138c:	00361713          	slli	a4,a2,0x3
    1390:	009c                	addi	a5,sp,64
    1392:	973e                	add	a4,a4,a5
    1394:	fc073783          	ld	a5,-64(a4)
    1398:	0007c683          	lbu	a3,0(a5)
    139c:	fed50fa3          	sb	a3,-1(a0)
    13a0:	0785                	addi	a5,a5,1
    13a2:	fcf73023          	sd	a5,-64(a4)
    13a6:	411787b3          	sub	a5,a5,a7
    13aa:	0107f7b3          	and	a5,a5,a6
    13ae:	ef99                	bnez	a5,13cc <parallel_merge+0x164>
    13b0:	14fd                	addi	s1,s1,-1
    13b2:	00349793          	slli	a5,s1,0x3
    13b6:	0098                	addi	a4,sp,64
    13b8:	97ba                	add	a5,a5,a4
    13ba:	fc07b703          	ld	a4,-64(a5)
    13be:	00361793          	slli	a5,a2,0x3
    13c2:	0094                	addi	a3,sp,64
    13c4:	97b6                	add	a5,a5,a3
    13c6:	fce7b023          	sd	a4,-64(a5)
    13ca:	d0b1                	beqz	s1,130e <parallel_merge+0xa6>
    13cc:	0505                	addi	a0,a0,1
    13ce:	f29373e3          	bgeu	t1,s1,12f4 <parallel_merge+0x8c>
    13d2:	868a                	mv	a3,sp
    13d4:	8672                	mv	a2,t3
    13d6:	4705                	li	a4,1
    13d8:	bdfd                	j	12d6 <parallel_merge+0x6e>
    13da:	60aa                	ld	ra,136(sp)
    13dc:	640a                	ld	s0,128(sp)
    13de:	74e6                	ld	s1,120(sp)
    13e0:	7946                	ld	s2,112(sp)
    13e2:	79a6                	ld	s3,104(sp)
    13e4:	7a06                	ld	s4,96(sp)
    13e6:	6ae6                	ld	s5,88(sp)
    13e8:	6b46                	ld	s6,80(sp)
    13ea:	6ba6                	ld	s7,72(sp)
    13ec:	6c06                	ld	s8,64(sp)
    13ee:	6149                	addi	sp,sp,144
    13f0:	8082                	ret

00000000000013f2 <main>:
    13f2:	1141                	addi	sp,sp,-16
    13f4:	e406                	sd	ra,8(sp)
    13f6:	07b00593          	li	a1,123
    13fa:	00002537          	lui	a0,0x2
    13fe:	1b850513          	addi	a0,a0,440 # 21b8 <mkdir+0x1ca>
    1402:	00000097          	auipc	ra,0x0
    1406:	e66080e7          	jalr	-410(ra) # 1268 <parallel_merge>
    140a:	60a2                	ld	ra,8(sp)
    140c:	0141                	addi	sp,sp,16
    140e:	8082                	ret

0000000000001410 <putc>:
    1410:	1101                	addi	sp,sp,-32
    1412:	ec06                	sd	ra,24(sp)
    1414:	00b107a3          	sb	a1,15(sp)
    1418:	4605                	li	a2,1
    141a:	00f10593          	addi	a1,sp,15
    141e:	00001097          	auipc	ra,0x1
    1422:	b90080e7          	jalr	-1136(ra) # 1fae <write>
    1426:	60e2                	ld	ra,24(sp)
    1428:	6105                	addi	sp,sp,32
    142a:	8082                	ret

000000000000142c <printint>:
    142c:	7179                	addi	sp,sp,-48
    142e:	f406                	sd	ra,40(sp)
    1430:	f022                	sd	s0,32(sp)
    1432:	ec26                	sd	s1,24(sp)
    1434:	e84a                	sd	s2,16(sp)
    1436:	84aa                	mv	s1,a0
    1438:	c299                	beqz	a3,143e <printint+0x12>
    143a:	0805c363          	bltz	a1,14c0 <printint+0x94>
    143e:	2581                	sext.w	a1,a1
    1440:	4881                	li	a7,0
    1442:	868a                	mv	a3,sp
    1444:	4701                	li	a4,0
    1446:	2601                	sext.w	a2,a2
    1448:	00002537          	lui	a0,0x2
    144c:	1d050513          	addi	a0,a0,464 # 21d0 <digits>
    1450:	883a                	mv	a6,a4
    1452:	2705                	addiw	a4,a4,1
    1454:	02c5f7bb          	remuw	a5,a1,a2
    1458:	1782                	slli	a5,a5,0x20
    145a:	9381                	srli	a5,a5,0x20
    145c:	97aa                	add	a5,a5,a0
    145e:	0007c783          	lbu	a5,0(a5)
    1462:	00f68023          	sb	a5,0(a3) # 20000 <buf2+0x1c7f0>
    1466:	0005879b          	sext.w	a5,a1
    146a:	02c5d5bb          	divuw	a1,a1,a2
    146e:	0685                	addi	a3,a3,1
    1470:	fec7f0e3          	bgeu	a5,a2,1450 <printint+0x24>
    1474:	00088a63          	beqz	a7,1488 <printint+0x5c>
    1478:	081c                	addi	a5,sp,16
    147a:	973e                	add	a4,a4,a5
    147c:	02d00793          	li	a5,45
    1480:	fef70823          	sb	a5,-16(a4)
    1484:	0028071b          	addiw	a4,a6,2
    1488:	02e05663          	blez	a4,14b4 <printint+0x88>
    148c:	00e10433          	add	s0,sp,a4
    1490:	fff10913          	addi	s2,sp,-1
    1494:	993a                	add	s2,s2,a4
    1496:	377d                	addiw	a4,a4,-1
    1498:	1702                	slli	a4,a4,0x20
    149a:	9301                	srli	a4,a4,0x20
    149c:	40e90933          	sub	s2,s2,a4
    14a0:	fff44583          	lbu	a1,-1(s0)
    14a4:	8526                	mv	a0,s1
    14a6:	00000097          	auipc	ra,0x0
    14aa:	f6a080e7          	jalr	-150(ra) # 1410 <putc>
    14ae:	147d                	addi	s0,s0,-1
    14b0:	ff2418e3          	bne	s0,s2,14a0 <printint+0x74>
    14b4:	70a2                	ld	ra,40(sp)
    14b6:	7402                	ld	s0,32(sp)
    14b8:	64e2                	ld	s1,24(sp)
    14ba:	6942                	ld	s2,16(sp)
    14bc:	6145                	addi	sp,sp,48
    14be:	8082                	ret
    14c0:	40b005bb          	negw	a1,a1
    14c4:	4885                	li	a7,1
    14c6:	bfb5                	j	1442 <printint+0x16>

00000000000014c8 <vprintf>:
    14c8:	7159                	addi	sp,sp,-112
    14ca:	f486                	sd	ra,104(sp)
    14cc:	f0a2                	sd	s0,96(sp)
    14ce:	eca6                	sd	s1,88(sp)
    14d0:	e8ca                	sd	s2,80(sp)
    14d2:	e4ce                	sd	s3,72(sp)
    14d4:	e0d2                	sd	s4,64(sp)
    14d6:	fc56                	sd	s5,56(sp)
    14d8:	f85a                	sd	s6,48(sp)
    14da:	f45e                	sd	s7,40(sp)
    14dc:	f062                	sd	s8,32(sp)
    14de:	ec66                	sd	s9,24(sp)
    14e0:	e86a                	sd	s10,16(sp)
    14e2:	e46e                	sd	s11,8(sp)
    14e4:	0005c483          	lbu	s1,0(a1)
    14e8:	18048a63          	beqz	s1,167c <vprintf+0x1b4>
    14ec:	8a2a                	mv	s4,a0
    14ee:	8ab2                	mv	s5,a2
    14f0:	00158413          	addi	s0,a1,1
    14f4:	4901                	li	s2,0
    14f6:	02500993          	li	s3,37
    14fa:	06400b93          	li	s7,100
    14fe:	06c00c13          	li	s8,108
    1502:	07800c93          	li	s9,120
    1506:	07000d13          	li	s10,112
    150a:	00002db7          	lui	s11,0x2
    150e:	00002b37          	lui	s6,0x2
    1512:	1d0b0b13          	addi	s6,s6,464 # 21d0 <digits>
    1516:	a839                	j	1534 <vprintf+0x6c>
    1518:	85a6                	mv	a1,s1
    151a:	8552                	mv	a0,s4
    151c:	00000097          	auipc	ra,0x0
    1520:	ef4080e7          	jalr	-268(ra) # 1410 <putc>
    1524:	a019                	j	152a <vprintf+0x62>
    1526:	01390f63          	beq	s2,s3,1544 <vprintf+0x7c>
    152a:	0405                	addi	s0,s0,1
    152c:	fff44483          	lbu	s1,-1(s0)
    1530:	14048663          	beqz	s1,167c <vprintf+0x1b4>
    1534:	0004879b          	sext.w	a5,s1
    1538:	fe0917e3          	bnez	s2,1526 <vprintf+0x5e>
    153c:	fd379ee3          	bne	a5,s3,1518 <vprintf+0x50>
    1540:	893e                	mv	s2,a5
    1542:	b7e5                	j	152a <vprintf+0x62>
    1544:	05778063          	beq	a5,s7,1584 <vprintf+0xbc>
    1548:	05878c63          	beq	a5,s8,15a0 <vprintf+0xd8>
    154c:	07978863          	beq	a5,s9,15bc <vprintf+0xf4>
    1550:	09a78463          	beq	a5,s10,15d8 <vprintf+0x110>
    1554:	07300713          	li	a4,115
    1558:	0ce78263          	beq	a5,a4,161c <vprintf+0x154>
    155c:	06300713          	li	a4,99
    1560:	0ee78763          	beq	a5,a4,164e <vprintf+0x186>
    1564:	11378163          	beq	a5,s3,1666 <vprintf+0x19e>
    1568:	85ce                	mv	a1,s3
    156a:	8552                	mv	a0,s4
    156c:	00000097          	auipc	ra,0x0
    1570:	ea4080e7          	jalr	-348(ra) # 1410 <putc>
    1574:	85a6                	mv	a1,s1
    1576:	8552                	mv	a0,s4
    1578:	00000097          	auipc	ra,0x0
    157c:	e98080e7          	jalr	-360(ra) # 1410 <putc>
    1580:	4901                	li	s2,0
    1582:	b765                	j	152a <vprintf+0x62>
    1584:	008a8493          	addi	s1,s5,8
    1588:	4685                	li	a3,1
    158a:	4629                	li	a2,10
    158c:	000aa583          	lw	a1,0(s5)
    1590:	8552                	mv	a0,s4
    1592:	00000097          	auipc	ra,0x0
    1596:	e9a080e7          	jalr	-358(ra) # 142c <printint>
    159a:	8aa6                	mv	s5,s1
    159c:	4901                	li	s2,0
    159e:	b771                	j	152a <vprintf+0x62>
    15a0:	008a8493          	addi	s1,s5,8
    15a4:	4681                	li	a3,0
    15a6:	4629                	li	a2,10
    15a8:	000aa583          	lw	a1,0(s5)
    15ac:	8552                	mv	a0,s4
    15ae:	00000097          	auipc	ra,0x0
    15b2:	e7e080e7          	jalr	-386(ra) # 142c <printint>
    15b6:	8aa6                	mv	s5,s1
    15b8:	4901                	li	s2,0
    15ba:	bf85                	j	152a <vprintf+0x62>
    15bc:	008a8493          	addi	s1,s5,8
    15c0:	4681                	li	a3,0
    15c2:	4641                	li	a2,16
    15c4:	000aa583          	lw	a1,0(s5)
    15c8:	8552                	mv	a0,s4
    15ca:	00000097          	auipc	ra,0x0
    15ce:	e62080e7          	jalr	-414(ra) # 142c <printint>
    15d2:	8aa6                	mv	s5,s1
    15d4:	4901                	li	s2,0
    15d6:	bf91                	j	152a <vprintf+0x62>
    15d8:	008a8913          	addi	s2,s5,8
    15dc:	000aba83          	ld	s5,0(s5)
    15e0:	03000593          	li	a1,48
    15e4:	8552                	mv	a0,s4
    15e6:	00000097          	auipc	ra,0x0
    15ea:	e2a080e7          	jalr	-470(ra) # 1410 <putc>
    15ee:	85e6                	mv	a1,s9
    15f0:	8552                	mv	a0,s4
    15f2:	00000097          	auipc	ra,0x0
    15f6:	e1e080e7          	jalr	-482(ra) # 1410 <putc>
    15fa:	44c1                	li	s1,16
    15fc:	03cad793          	srli	a5,s5,0x3c
    1600:	97da                	add	a5,a5,s6
    1602:	0007c583          	lbu	a1,0(a5)
    1606:	8552                	mv	a0,s4
    1608:	00000097          	auipc	ra,0x0
    160c:	e08080e7          	jalr	-504(ra) # 1410 <putc>
    1610:	0a92                	slli	s5,s5,0x4
    1612:	34fd                	addiw	s1,s1,-1
    1614:	f4e5                	bnez	s1,15fc <vprintf+0x134>
    1616:	8aca                	mv	s5,s2
    1618:	4901                	li	s2,0
    161a:	bf01                	j	152a <vprintf+0x62>
    161c:	008a8913          	addi	s2,s5,8
    1620:	000ab483          	ld	s1,0(s5)
    1624:	c085                	beqz	s1,1644 <vprintf+0x17c>
    1626:	0004c583          	lbu	a1,0(s1)
    162a:	c5b1                	beqz	a1,1676 <vprintf+0x1ae>
    162c:	8552                	mv	a0,s4
    162e:	00000097          	auipc	ra,0x0
    1632:	de2080e7          	jalr	-542(ra) # 1410 <putc>
    1636:	0485                	addi	s1,s1,1
    1638:	0004c583          	lbu	a1,0(s1)
    163c:	f9e5                	bnez	a1,162c <vprintf+0x164>
    163e:	8aca                	mv	s5,s2
    1640:	4901                	li	s2,0
    1642:	b5e5                	j	152a <vprintf+0x62>
    1644:	1c8d8493          	addi	s1,s11,456 # 21c8 <mkdir+0x1da>
    1648:	02800593          	li	a1,40
    164c:	b7c5                	j	162c <vprintf+0x164>
    164e:	008a8493          	addi	s1,s5,8
    1652:	000ac583          	lbu	a1,0(s5)
    1656:	8552                	mv	a0,s4
    1658:	00000097          	auipc	ra,0x0
    165c:	db8080e7          	jalr	-584(ra) # 1410 <putc>
    1660:	8aa6                	mv	s5,s1
    1662:	4901                	li	s2,0
    1664:	b5d9                	j	152a <vprintf+0x62>
    1666:	85ce                	mv	a1,s3
    1668:	8552                	mv	a0,s4
    166a:	00000097          	auipc	ra,0x0
    166e:	da6080e7          	jalr	-602(ra) # 1410 <putc>
    1672:	4901                	li	s2,0
    1674:	bd5d                	j	152a <vprintf+0x62>
    1676:	8aca                	mv	s5,s2
    1678:	4901                	li	s2,0
    167a:	bd45                	j	152a <vprintf+0x62>
    167c:	70a6                	ld	ra,104(sp)
    167e:	7406                	ld	s0,96(sp)
    1680:	64e6                	ld	s1,88(sp)
    1682:	6946                	ld	s2,80(sp)
    1684:	69a6                	ld	s3,72(sp)
    1686:	6a06                	ld	s4,64(sp)
    1688:	7ae2                	ld	s5,56(sp)
    168a:	7b42                	ld	s6,48(sp)
    168c:	7ba2                	ld	s7,40(sp)
    168e:	7c02                	ld	s8,32(sp)
    1690:	6ce2                	ld	s9,24(sp)
    1692:	6d42                	ld	s10,16(sp)
    1694:	6da2                	ld	s11,8(sp)
    1696:	6165                	addi	sp,sp,112
    1698:	8082                	ret

000000000000169a <fprintf>:
    169a:	715d                	addi	sp,sp,-80
    169c:	ec06                	sd	ra,24(sp)
    169e:	f032                	sd	a2,32(sp)
    16a0:	f436                	sd	a3,40(sp)
    16a2:	f83a                	sd	a4,48(sp)
    16a4:	fc3e                	sd	a5,56(sp)
    16a6:	e0c2                	sd	a6,64(sp)
    16a8:	e4c6                	sd	a7,72(sp)
    16aa:	1010                	addi	a2,sp,32
    16ac:	e432                	sd	a2,8(sp)
    16ae:	00000097          	auipc	ra,0x0
    16b2:	e1a080e7          	jalr	-486(ra) # 14c8 <vprintf>
    16b6:	60e2                	ld	ra,24(sp)
    16b8:	6161                	addi	sp,sp,80
    16ba:	8082                	ret

00000000000016bc <printf>:
    16bc:	711d                	addi	sp,sp,-96
    16be:	ec06                	sd	ra,24(sp)
    16c0:	f42e                	sd	a1,40(sp)
    16c2:	f832                	sd	a2,48(sp)
    16c4:	fc36                	sd	a3,56(sp)
    16c6:	e0ba                	sd	a4,64(sp)
    16c8:	e4be                	sd	a5,72(sp)
    16ca:	e8c2                	sd	a6,80(sp)
    16cc:	ecc6                	sd	a7,88(sp)
    16ce:	1030                	addi	a2,sp,40
    16d0:	e432                	sd	a2,8(sp)
    16d2:	85aa                	mv	a1,a0
    16d4:	4505                	li	a0,1
    16d6:	00000097          	auipc	ra,0x0
    16da:	df2080e7          	jalr	-526(ra) # 14c8 <vprintf>
    16de:	60e2                	ld	ra,24(sp)
    16e0:	6125                	addi	sp,sp,96
    16e2:	8082                	ret

00000000000016e4 <cksum>:
    16e4:	cdb1                	beqz	a1,1740 <cksum+0x5c>
    16e6:	00b50833          	add	a6,a0,a1
    16ea:	4781                	li	a5,0
    16ec:	00002637          	lui	a2,0x2
    16f0:	1e860613          	addi	a2,a2,488 # 21e8 <crctab>
    16f4:	0505                	addi	a0,a0,1
    16f6:	0087969b          	slliw	a3,a5,0x8
    16fa:	0187d71b          	srliw	a4,a5,0x18
    16fe:	fff54783          	lbu	a5,-1(a0)
    1702:	8f3d                	xor	a4,a4,a5
    1704:	1702                	slli	a4,a4,0x20
    1706:	9301                	srli	a4,a4,0x20
    1708:	070a                	slli	a4,a4,0x2
    170a:	9732                	add	a4,a4,a2
    170c:	431c                	lw	a5,0(a4)
    170e:	8fb5                	xor	a5,a5,a3
    1710:	2781                	sext.w	a5,a5
    1712:	fea811e3          	bne	a6,a0,16f4 <cksum+0x10>
    1716:	00002637          	lui	a2,0x2
    171a:	1e860613          	addi	a2,a2,488 # 21e8 <crctab>
    171e:	0ff5f693          	andi	a3,a1,255
    1722:	81a1                	srli	a1,a1,0x8
    1724:	0087951b          	slliw	a0,a5,0x8
    1728:	0187d71b          	srliw	a4,a5,0x18
    172c:	8f35                	xor	a4,a4,a3
    172e:	070a                	slli	a4,a4,0x2
    1730:	9732                	add	a4,a4,a2
    1732:	431c                	lw	a5,0(a4)
    1734:	8fa9                	xor	a5,a5,a0
    1736:	2781                	sext.w	a5,a5
    1738:	f1fd                	bnez	a1,171e <cksum+0x3a>
    173a:	fff7c513          	not	a0,a5
    173e:	8082                	ret
    1740:	4781                	li	a5,0
    1742:	bfe5                	j	173a <cksum+0x56>

0000000000001744 <swap_bytes>:
    1744:	ce19                	beqz	a2,1762 <swap_bytes+0x1e>
    1746:	87aa                	mv	a5,a0
    1748:	962a                	add	a2,a2,a0
    174a:	0007c703          	lbu	a4,0(a5)
    174e:	0005c683          	lbu	a3,0(a1)
    1752:	00d78023          	sb	a3,0(a5)
    1756:	00e58023          	sb	a4,0(a1)
    175a:	0785                	addi	a5,a5,1
    175c:	0585                	addi	a1,a1,1
    175e:	fec796e3          	bne	a5,a2,174a <swap_bytes+0x6>
    1762:	8082                	ret

0000000000001764 <random_init>:
    1764:	7139                	addi	sp,sp,-64
    1766:	fc06                	sd	ra,56(sp)
    1768:	f822                	sd	s0,48(sp)
    176a:	f426                	sd	s1,40(sp)
    176c:	f04a                	sd	s2,32(sp)
    176e:	ec4e                	sd	s3,24(sp)
    1770:	e852                	sd	s4,16(sp)
    1772:	c62a                	sw	a0,12(sp)
    1774:	000037b7          	lui	a5,0x3
    1778:	0007a483          	lw	s1,0(a5) # 3000 <inited>
    177c:	eca5                	bnez	s1,17f4 <random_init+0x90>
    177e:	00204737          	lui	a4,0x204
    1782:	81070913          	addi	s2,a4,-2032 # 203810 <s>
    1786:	81070713          	addi	a4,a4,-2032
    178a:	87a6                	mv	a5,s1
    178c:	10000693          	li	a3,256
    1790:	00f70023          	sb	a5,0(a4)
    1794:	2785                	addiw	a5,a5,1
    1796:	0705                	addi	a4,a4,1
    1798:	fed79ce3          	bne	a5,a3,1790 <random_init+0x2c>
    179c:	4401                	li	s0,0
    179e:	002049b7          	lui	s3,0x204
    17a2:	81098993          	addi	s3,s3,-2032 # 203810 <s>
    17a6:	10000a13          	li	s4,256
    17aa:	0034f793          	andi	a5,s1,3
    17ae:	0818                	addi	a4,sp,16
    17b0:	97ba                	add	a5,a5,a4
    17b2:	ffc7c783          	lbu	a5,-4(a5)
    17b6:	00094703          	lbu	a4,0(s2)
    17ba:	9fb9                	addw	a5,a5,a4
    17bc:	9c3d                	addw	s0,s0,a5
    17be:	0ff47413          	andi	s0,s0,255
    17c2:	4605                	li	a2,1
    17c4:	008985b3          	add	a1,s3,s0
    17c8:	854a                	mv	a0,s2
    17ca:	00000097          	auipc	ra,0x0
    17ce:	f7a080e7          	jalr	-134(ra) # 1744 <swap_bytes>
    17d2:	2485                	addiw	s1,s1,1
    17d4:	0905                	addi	s2,s2,1
    17d6:	fd449ae3          	bne	s1,s4,17aa <random_init+0x46>
    17da:	000037b7          	lui	a5,0x3
    17de:	00078223          	sb	zero,4(a5) # 3004 <s_j>
    17e2:	000037b7          	lui	a5,0x3
    17e6:	000782a3          	sb	zero,5(a5) # 3005 <s_i>
    17ea:	000037b7          	lui	a5,0x3
    17ee:	4705                	li	a4,1
    17f0:	00e7a023          	sw	a4,0(a5) # 3000 <inited>
    17f4:	70e2                	ld	ra,56(sp)
    17f6:	7442                	ld	s0,48(sp)
    17f8:	74a2                	ld	s1,40(sp)
    17fa:	7902                	ld	s2,32(sp)
    17fc:	69e2                	ld	s3,24(sp)
    17fe:	6a42                	ld	s4,16(sp)
    1800:	6121                	addi	sp,sp,64
    1802:	8082                	ret

0000000000001804 <random_bytes>:
    1804:	7139                	addi	sp,sp,-64
    1806:	fc06                	sd	ra,56(sp)
    1808:	f822                	sd	s0,48(sp)
    180a:	f426                	sd	s1,40(sp)
    180c:	f04a                	sd	s2,32(sp)
    180e:	ec4e                	sd	s3,24(sp)
    1810:	e852                	sd	s4,16(sp)
    1812:	e456                	sd	s5,8(sp)
    1814:	e05a                	sd	s6,0(sp)
    1816:	892a                	mv	s2,a0
    1818:	8aae                	mv	s5,a1
    181a:	000037b7          	lui	a5,0x3
    181e:	0007a783          	lw	a5,0(a5) # 3000 <inited>
    1822:	c3c1                	beqz	a5,18a2 <random_bytes+0x9e>
    1824:	060a8563          	beqz	s5,188e <random_bytes+0x8a>
    1828:	9aca                	add	s5,s5,s2
    182a:	00003a37          	lui	s4,0x3
    182e:	002044b7          	lui	s1,0x204
    1832:	81048493          	addi	s1,s1,-2032 # 203810 <s>
    1836:	000039b7          	lui	s3,0x3
    183a:	005a4503          	lbu	a0,5(s4) # 3005 <s_i>
    183e:	2505                	addiw	a0,a0,1
    1840:	0ff57513          	andi	a0,a0,255
    1844:	00aa02a3          	sb	a0,5(s4)
    1848:	00a48b33          	add	s6,s1,a0
    184c:	000b4403          	lbu	s0,0(s6)
    1850:	0049c783          	lbu	a5,4(s3) # 3004 <s_j>
    1854:	9c3d                	addw	s0,s0,a5
    1856:	0ff47413          	andi	s0,s0,255
    185a:	00898223          	sb	s0,4(s3)
    185e:	4605                	li	a2,1
    1860:	008485b3          	add	a1,s1,s0
    1864:	855a                	mv	a0,s6
    1866:	00000097          	auipc	ra,0x0
    186a:	ede080e7          	jalr	-290(ra) # 1744 <swap_bytes>
    186e:	9426                	add	s0,s0,s1
    1870:	000b4783          	lbu	a5,0(s6)
    1874:	00044703          	lbu	a4,0(s0)
    1878:	9fb9                	addw	a5,a5,a4
    187a:	0ff7f793          	andi	a5,a5,255
    187e:	97a6                	add	a5,a5,s1
    1880:	0007c783          	lbu	a5,0(a5)
    1884:	00f90023          	sb	a5,0(s2)
    1888:	0905                	addi	s2,s2,1
    188a:	fb2a98e3          	bne	s5,s2,183a <random_bytes+0x36>
    188e:	70e2                	ld	ra,56(sp)
    1890:	7442                	ld	s0,48(sp)
    1892:	74a2                	ld	s1,40(sp)
    1894:	7902                	ld	s2,32(sp)
    1896:	69e2                	ld	s3,24(sp)
    1898:	6a42                	ld	s4,16(sp)
    189a:	6aa2                	ld	s5,8(sp)
    189c:	6b02                	ld	s6,0(sp)
    189e:	6121                	addi	sp,sp,64
    18a0:	8082                	ret
    18a2:	4501                	li	a0,0
    18a4:	00000097          	auipc	ra,0x0
    18a8:	ec0080e7          	jalr	-320(ra) # 1764 <random_init>
    18ac:	bfa5                	j	1824 <random_bytes+0x20>

00000000000018ae <random_ulong>:
    18ae:	1101                	addi	sp,sp,-32
    18b0:	ec06                	sd	ra,24(sp)
    18b2:	45a1                	li	a1,8
    18b4:	0028                	addi	a0,sp,8
    18b6:	00000097          	auipc	ra,0x0
    18ba:	f4e080e7          	jalr	-178(ra) # 1804 <random_bytes>
    18be:	6522                	ld	a0,8(sp)
    18c0:	60e2                	ld	ra,24(sp)
    18c2:	6105                	addi	sp,sp,32
    18c4:	8082                	ret

00000000000018c6 <shuffle>:
    18c6:	c9b9                	beqz	a1,191c <shuffle+0x56>
    18c8:	7179                	addi	sp,sp,-48
    18ca:	f406                	sd	ra,40(sp)
    18cc:	f022                	sd	s0,32(sp)
    18ce:	ec26                	sd	s1,24(sp)
    18d0:	e84a                	sd	s2,16(sp)
    18d2:	e44e                	sd	s3,8(sp)
    18d4:	e052                	sd	s4,0(sp)
    18d6:	8a2a                	mv	s4,a0
    18d8:	89ae                	mv	s3,a1
    18da:	84b2                	mv	s1,a2
    18dc:	892a                	mv	s2,a0
    18de:	4401                	li	s0,0
    18e0:	00000097          	auipc	ra,0x0
    18e4:	fce080e7          	jalr	-50(ra) # 18ae <random_ulong>
    18e8:	408985b3          	sub	a1,s3,s0
    18ec:	02b575b3          	remu	a1,a0,a1
    18f0:	95a2                	add	a1,a1,s0
    18f2:	029585b3          	mul	a1,a1,s1
    18f6:	8626                	mv	a2,s1
    18f8:	95d2                	add	a1,a1,s4
    18fa:	854a                	mv	a0,s2
    18fc:	00000097          	auipc	ra,0x0
    1900:	e48080e7          	jalr	-440(ra) # 1744 <swap_bytes>
    1904:	0405                	addi	s0,s0,1
    1906:	9926                	add	s2,s2,s1
    1908:	fc899ce3          	bne	s3,s0,18e0 <shuffle+0x1a>
    190c:	70a2                	ld	ra,40(sp)
    190e:	7402                	ld	s0,32(sp)
    1910:	64e2                	ld	s1,24(sp)
    1912:	6942                	ld	s2,16(sp)
    1914:	69a2                	ld	s3,8(sp)
    1916:	6a02                	ld	s4,0(sp)
    1918:	6145                	addi	sp,sp,48
    191a:	8082                	ret
    191c:	8082                	ret

000000000000191e <arc4_init>:
    191e:	100500a3          	sb	zero,257(a0)
    1922:	10050023          	sb	zero,256(a0)
    1926:	4781                	li	a5,0
    1928:	10000693          	li	a3,256
    192c:	00f50733          	add	a4,a0,a5
    1930:	00f70023          	sb	a5,0(a4)
    1934:	0785                	addi	a5,a5,1
    1936:	fed79be3          	bne	a5,a3,192c <arc4_init+0xe>
    193a:	86aa                	mv	a3,a0
    193c:	10050e13          	addi	t3,a0,256
    1940:	4701                	li	a4,0
    1942:	4781                	li	a5,0
    1944:	0006c883          	lbu	a7,0(a3)
    1948:	00f58833          	add	a6,a1,a5
    194c:	00084803          	lbu	a6,0(a6) # 20000 <buf2+0x1c7f0>
    1950:	00e8873b          	addw	a4,a7,a4
    1954:	00e8073b          	addw	a4,a6,a4
    1958:	0ff77713          	andi	a4,a4,255
    195c:	00e50833          	add	a6,a0,a4
    1960:	00084303          	lbu	t1,0(a6)
    1964:	00668023          	sb	t1,0(a3)
    1968:	01180023          	sb	a7,0(a6)
    196c:	0785                	addi	a5,a5,1
    196e:	00c7b833          	sltu	a6,a5,a2
    1972:	41000833          	neg	a6,a6
    1976:	0107f7b3          	and	a5,a5,a6
    197a:	0685                	addi	a3,a3,1
    197c:	fdc694e3          	bne	a3,t3,1944 <arc4_init+0x26>
    1980:	8082                	ret

0000000000001982 <arc4_crypt>:
    1982:	10054e03          	lbu	t3,256(a0)
    1986:	10154803          	lbu	a6,257(a0)
    198a:	fff60e93          	addi	t4,a2,-1
    198e:	c225                	beqz	a2,19ee <arc4_crypt+0x6c>
    1990:	00c588b3          	add	a7,a1,a2
    1994:	86ae                	mv	a3,a1
    1996:	001e031b          	addiw	t1,t3,1
    199a:	40b3033b          	subw	t1,t1,a1
    199e:	00d3073b          	addw	a4,t1,a3
    19a2:	0ff77713          	andi	a4,a4,255
    19a6:	972a                	add	a4,a4,a0
    19a8:	00074603          	lbu	a2,0(a4)
    19ac:	0106083b          	addw	a6,a2,a6
    19b0:	0ff87813          	andi	a6,a6,255
    19b4:	010507b3          	add	a5,a0,a6
    19b8:	0007c583          	lbu	a1,0(a5)
    19bc:	00b70023          	sb	a1,0(a4)
    19c0:	00c78023          	sb	a2,0(a5)
    19c4:	0685                	addi	a3,a3,1
    19c6:	00074783          	lbu	a5,0(a4)
    19ca:	9fb1                	addw	a5,a5,a2
    19cc:	0ff7f793          	andi	a5,a5,255
    19d0:	97aa                	add	a5,a5,a0
    19d2:	0007c783          	lbu	a5,0(a5)
    19d6:	fff6c703          	lbu	a4,-1(a3)
    19da:	8fb9                	xor	a5,a5,a4
    19dc:	fef68fa3          	sb	a5,-1(a3)
    19e0:	fb169fe3          	bne	a3,a7,199e <arc4_crypt+0x1c>
    19e4:	2e85                	addiw	t4,t4,1
    19e6:	01ce8e3b          	addw	t3,t4,t3
    19ea:	0ffe7e13          	andi	t3,t3,255
    19ee:	11c50023          	sb	t3,256(a0)
    19f2:	110500a3          	sb	a6,257(a0)
    19f6:	8082                	ret

00000000000019f8 <_main>:
    19f8:	1141                	addi	sp,sp,-16
    19fa:	e406                	sd	ra,8(sp)
    19fc:	00000097          	auipc	ra,0x0
    1a00:	9f6080e7          	jalr	-1546(ra) # 13f2 <main>
    1a04:	4501                	li	a0,0
    1a06:	00000097          	auipc	ra,0x0
    1a0a:	578080e7          	jalr	1400(ra) # 1f7e <exit>
    1a0e:	60a2                	ld	ra,8(sp)
    1a10:	0141                	addi	sp,sp,16
    1a12:	8082                	ret

0000000000001a14 <strcmp>:
    1a14:	00054783          	lbu	a5,0(a0)
    1a18:	cb91                	beqz	a5,1a2c <strcmp+0x18>
    1a1a:	0005c703          	lbu	a4,0(a1)
    1a1e:	00f71763          	bne	a4,a5,1a2c <strcmp+0x18>
    1a22:	0505                	addi	a0,a0,1
    1a24:	0585                	addi	a1,a1,1
    1a26:	00054783          	lbu	a5,0(a0)
    1a2a:	fbe5                	bnez	a5,1a1a <strcmp+0x6>
    1a2c:	0005c503          	lbu	a0,0(a1)
    1a30:	40a7853b          	subw	a0,a5,a0
    1a34:	8082                	ret

0000000000001a36 <strcpy>:
    1a36:	87aa                	mv	a5,a0
    1a38:	0585                	addi	a1,a1,1
    1a3a:	0785                	addi	a5,a5,1
    1a3c:	fff5c703          	lbu	a4,-1(a1)
    1a40:	fee78fa3          	sb	a4,-1(a5)
    1a44:	fb75                	bnez	a4,1a38 <strcpy+0x2>
    1a46:	8082                	ret

0000000000001a48 <strlen>:
    1a48:	00054783          	lbu	a5,0(a0)
    1a4c:	cf81                	beqz	a5,1a64 <strlen+0x1c>
    1a4e:	0505                	addi	a0,a0,1
    1a50:	87aa                	mv	a5,a0
    1a52:	4685                	li	a3,1
    1a54:	9e89                	subw	a3,a3,a0
    1a56:	00f6853b          	addw	a0,a3,a5
    1a5a:	0785                	addi	a5,a5,1
    1a5c:	fff7c703          	lbu	a4,-1(a5)
    1a60:	fb7d                	bnez	a4,1a56 <strlen+0xe>
    1a62:	8082                	ret
    1a64:	4501                	li	a0,0
    1a66:	8082                	ret

0000000000001a68 <memset>:
    1a68:	ca19                	beqz	a2,1a7e <memset+0x16>
    1a6a:	87aa                	mv	a5,a0
    1a6c:	1602                	slli	a2,a2,0x20
    1a6e:	9201                	srli	a2,a2,0x20
    1a70:	00a60733          	add	a4,a2,a0
    1a74:	00b78023          	sb	a1,0(a5)
    1a78:	0785                	addi	a5,a5,1
    1a7a:	fee79de3          	bne	a5,a4,1a74 <memset+0xc>
    1a7e:	8082                	ret

0000000000001a80 <memcmp>:
    1a80:	1101                	addi	sp,sp,-32
    1a82:	ec06                	sd	ra,24(sp)
    1a84:	e822                	sd	s0,16(sp)
    1a86:	e426                	sd	s1,8(sp)
    1a88:	e04a                	sd	s2,0(sp)
    1a8a:	892a                	mv	s2,a0
    1a8c:	842e                	mv	s0,a1
    1a8e:	84b2                	mv	s1,a2
    1a90:	c915                	beqz	a0,1ac4 <memcmp+0x44>
    1a92:	c5ad                	beqz	a1,1afc <memcmp+0x7c>
    1a94:	fff60713          	addi	a4,a2,-1
    1a98:	c645                	beqz	a2,1b40 <memcmp+0xc0>
    1a9a:	87ca                	mv	a5,s2
    1a9c:	00190613          	addi	a2,s2,1
    1aa0:	963a                	add	a2,a2,a4
    1aa2:	0007c683          	lbu	a3,0(a5)
    1aa6:	00044703          	lbu	a4,0(s0)
    1aaa:	08e69463          	bne	a3,a4,1b32 <memcmp+0xb2>
    1aae:	0785                	addi	a5,a5,1
    1ab0:	0405                	addi	s0,s0,1
    1ab2:	fec798e3          	bne	a5,a2,1aa2 <memcmp+0x22>
    1ab6:	4501                	li	a0,0
    1ab8:	60e2                	ld	ra,24(sp)
    1aba:	6442                	ld	s0,16(sp)
    1abc:	64a2                	ld	s1,8(sp)
    1abe:	6902                	ld	s2,0(sp)
    1ac0:	6105                	addi	sp,sp,32
    1ac2:	8082                	ret
    1ac4:	4501                	li	a0,0
    1ac6:	da6d                	beqz	a2,1ab8 <memcmp+0x38>
    1ac8:	03200693          	li	a3,50
    1acc:	00002637          	lui	a2,0x2
    1ad0:	5e860613          	addi	a2,a2,1512 # 25e8 <crctab+0x400>
    1ad4:	000025b7          	lui	a1,0x2
    1ad8:	5f858593          	addi	a1,a1,1528 # 25f8 <crctab+0x410>
    1adc:	4509                	li	a0,2
    1ade:	00000097          	auipc	ra,0x0
    1ae2:	bbc080e7          	jalr	-1092(ra) # 169a <fprintf>
    1ae6:	650d                	lui	a0,0x3
    1ae8:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1aec:	00000097          	auipc	ra,0x0
    1af0:	492080e7          	jalr	1170(ra) # 1f7e <exit>
    1af4:	fff48713          	addi	a4,s1,-1
    1af8:	f04d                	bnez	s0,1a9a <memcmp+0x1a>
    1afa:	a011                	j	1afe <memcmp+0x7e>
    1afc:	c221                	beqz	a2,1b3c <memcmp+0xbc>
    1afe:	03300693          	li	a3,51
    1b02:	00002637          	lui	a2,0x2
    1b06:	5e860613          	addi	a2,a2,1512 # 25e8 <crctab+0x400>
    1b0a:	000025b7          	lui	a1,0x2
    1b0e:	64058593          	addi	a1,a1,1600 # 2640 <crctab+0x458>
    1b12:	4509                	li	a0,2
    1b14:	00000097          	auipc	ra,0x0
    1b18:	b86080e7          	jalr	-1146(ra) # 169a <fprintf>
    1b1c:	650d                	lui	a0,0x3
    1b1e:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1b22:	00000097          	auipc	ra,0x0
    1b26:	45c080e7          	jalr	1116(ra) # 1f7e <exit>
    1b2a:	fff48713          	addi	a4,s1,-1
    1b2e:	4401                	li	s0,0
    1b30:	b7ad                	j	1a9a <memcmp+0x1a>
    1b32:	4505                	li	a0,1
    1b34:	f8d762e3          	bltu	a4,a3,1ab8 <memcmp+0x38>
    1b38:	557d                	li	a0,-1
    1b3a:	bfbd                	j	1ab8 <memcmp+0x38>
    1b3c:	4501                	li	a0,0
    1b3e:	bfad                	j	1ab8 <memcmp+0x38>
    1b40:	4501                	li	a0,0
    1b42:	bf9d                	j	1ab8 <memcmp+0x38>

0000000000001b44 <memcpy>:
    1b44:	1101                	addi	sp,sp,-32
    1b46:	ec06                	sd	ra,24(sp)
    1b48:	e822                	sd	s0,16(sp)
    1b4a:	e426                	sd	s1,8(sp)
    1b4c:	e04a                	sd	s2,0(sp)
    1b4e:	84aa                	mv	s1,a0
    1b50:	842e                	mv	s0,a1
    1b52:	8932                	mv	s2,a2
    1b54:	c51d                	beqz	a0,1b82 <memcpy+0x3e>
    1b56:	c1ad                	beqz	a1,1bb8 <memcpy+0x74>
    1b58:	fff60693          	addi	a3,a2,-1
    1b5c:	ce01                	beqz	a2,1b74 <memcpy+0x30>
    1b5e:	0685                	addi	a3,a3,1
    1b60:	96a6                	add	a3,a3,s1
    1b62:	87a6                	mv	a5,s1
    1b64:	0405                	addi	s0,s0,1
    1b66:	0785                	addi	a5,a5,1
    1b68:	fff44703          	lbu	a4,-1(s0)
    1b6c:	fee78fa3          	sb	a4,-1(a5)
    1b70:	fed79ae3          	bne	a5,a3,1b64 <memcpy+0x20>
    1b74:	8526                	mv	a0,s1
    1b76:	60e2                	ld	ra,24(sp)
    1b78:	6442                	ld	s0,16(sp)
    1b7a:	64a2                	ld	s1,8(sp)
    1b7c:	6902                	ld	s2,0(sp)
    1b7e:	6105                	addi	sp,sp,32
    1b80:	8082                	ret
    1b82:	da6d                	beqz	a2,1b74 <memcpy+0x30>
    1b84:	04000693          	li	a3,64
    1b88:	00002637          	lui	a2,0x2
    1b8c:	5e860613          	addi	a2,a2,1512 # 25e8 <crctab+0x400>
    1b90:	000025b7          	lui	a1,0x2
    1b94:	68858593          	addi	a1,a1,1672 # 2688 <crctab+0x4a0>
    1b98:	4509                	li	a0,2
    1b9a:	00000097          	auipc	ra,0x0
    1b9e:	b00080e7          	jalr	-1280(ra) # 169a <fprintf>
    1ba2:	650d                	lui	a0,0x3
    1ba4:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1ba8:	00000097          	auipc	ra,0x0
    1bac:	3d6080e7          	jalr	982(ra) # 1f7e <exit>
    1bb0:	fff90693          	addi	a3,s2,-1
    1bb4:	f44d                	bnez	s0,1b5e <memcpy+0x1a>
    1bb6:	a011                	j	1bba <memcpy+0x76>
    1bb8:	de55                	beqz	a2,1b74 <memcpy+0x30>
    1bba:	04100693          	li	a3,65
    1bbe:	00002637          	lui	a2,0x2
    1bc2:	5e860613          	addi	a2,a2,1512 # 25e8 <crctab+0x400>
    1bc6:	000025b7          	lui	a1,0x2
    1bca:	6d058593          	addi	a1,a1,1744 # 26d0 <crctab+0x4e8>
    1bce:	4509                	li	a0,2
    1bd0:	00000097          	auipc	ra,0x0
    1bd4:	aca080e7          	jalr	-1334(ra) # 169a <fprintf>
    1bd8:	650d                	lui	a0,0x3
    1bda:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1bde:	00000097          	auipc	ra,0x0
    1be2:	3a0080e7          	jalr	928(ra) # 1f7e <exit>
    1be6:	fff90693          	addi	a3,s2,-1
    1bea:	4401                	li	s0,0
    1bec:	bf8d                	j	1b5e <memcpy+0x1a>

0000000000001bee <itoa>:
    1bee:	1101                	addi	sp,sp,-32
    1bf0:	ec06                	sd	ra,24(sp)
    1bf2:	e822                	sd	s0,16(sp)
    1bf4:	e426                	sd	s1,8(sp)
    1bf6:	842a                	mv	s0,a0
    1bf8:	41f5d71b          	sraiw	a4,a1,0x1f
    1bfc:	00e5c7b3          	xor	a5,a1,a4
    1c00:	9f99                	subw	a5,a5,a4
    1c02:	84aa                	mv	s1,a0
    1c04:	862a                	mv	a2,a0
    1c06:	4681                	li	a3,0
    1c08:	4529                	li	a0,10
    1c0a:	4825                	li	a6,9
    1c0c:	88b6                	mv	a7,a3
    1c0e:	2685                	addiw	a3,a3,1
    1c10:	02a7e73b          	remw	a4,a5,a0
    1c14:	0307071b          	addiw	a4,a4,48
    1c18:	00e60023          	sb	a4,0(a2)
    1c1c:	873e                	mv	a4,a5
    1c1e:	02a7c7bb          	divw	a5,a5,a0
    1c22:	0605                	addi	a2,a2,1
    1c24:	fee844e3          	blt	a6,a4,1c0c <itoa+0x1e>
    1c28:	0405c863          	bltz	a1,1c78 <itoa+0x8a>
    1c2c:	96a2                	add	a3,a3,s0
    1c2e:	00068023          	sb	zero,0(a3)
    1c32:	8522                	mv	a0,s0
    1c34:	00000097          	auipc	ra,0x0
    1c38:	e14080e7          	jalr	-492(ra) # 1a48 <strlen>
    1c3c:	fff5071b          	addiw	a4,a0,-1
    1c40:	02e05763          	blez	a4,1c6e <itoa+0x80>
    1c44:	9722                	add	a4,a4,s0
    1c46:	4681                	li	a3,0
    1c48:	0004c783          	lbu	a5,0(s1)
    1c4c:	00074603          	lbu	a2,0(a4)
    1c50:	00c48023          	sb	a2,0(s1)
    1c54:	00f70023          	sb	a5,0(a4)
    1c58:	0016879b          	addiw	a5,a3,1
    1c5c:	0007869b          	sext.w	a3,a5
    1c60:	0485                	addi	s1,s1,1
    1c62:	177d                	addi	a4,a4,-1
    1c64:	fff7c793          	not	a5,a5
    1c68:	9fa9                	addw	a5,a5,a0
    1c6a:	fcf6cfe3          	blt	a3,a5,1c48 <itoa+0x5a>
    1c6e:	60e2                	ld	ra,24(sp)
    1c70:	6442                	ld	s0,16(sp)
    1c72:	64a2                	ld	s1,8(sp)
    1c74:	6105                	addi	sp,sp,32
    1c76:	8082                	ret
    1c78:	96a2                	add	a3,a3,s0
    1c7a:	02d00793          	li	a5,45
    1c7e:	00f68023          	sb	a5,0(a3)
    1c82:	0028869b          	addiw	a3,a7,2
    1c86:	b75d                	j	1c2c <itoa+0x3e>

0000000000001c88 <atoi>:
    1c88:	00054783          	lbu	a5,0(a0)
    1c8c:	02000713          	li	a4,32
    1c90:	00e79763          	bne	a5,a4,1c9e <atoi+0x16>
    1c94:	0505                	addi	a0,a0,1
    1c96:	00054783          	lbu	a5,0(a0)
    1c9a:	fee78de3          	beq	a5,a4,1c94 <atoi+0xc>
    1c9e:	02b00713          	li	a4,43
    1ca2:	04e78663          	beq	a5,a4,1cee <atoi+0x66>
    1ca6:	02d00713          	li	a4,45
    1caa:	4805                	li	a6,1
    1cac:	04e78463          	beq	a5,a4,1cf4 <atoi+0x6c>
    1cb0:	00054683          	lbu	a3,0(a0)
    1cb4:	fd06879b          	addiw	a5,a3,-48
    1cb8:	0ff7f793          	andi	a5,a5,255
    1cbc:	4725                	li	a4,9
    1cbe:	02f76e63          	bltu	a4,a5,1cfa <atoi+0x72>
    1cc2:	4601                	li	a2,0
    1cc4:	45a5                	li	a1,9
    1cc6:	0505                	addi	a0,a0,1
    1cc8:	0026179b          	slliw	a5,a2,0x2
    1ccc:	9fb1                	addw	a5,a5,a2
    1cce:	0017979b          	slliw	a5,a5,0x1
    1cd2:	9fb5                	addw	a5,a5,a3
    1cd4:	fd07861b          	addiw	a2,a5,-48
    1cd8:	00054683          	lbu	a3,0(a0)
    1cdc:	fd06871b          	addiw	a4,a3,-48
    1ce0:	0ff77713          	andi	a4,a4,255
    1ce4:	fee5f1e3          	bgeu	a1,a4,1cc6 <atoi+0x3e>
    1ce8:	02c8053b          	mulw	a0,a6,a2
    1cec:	8082                	ret
    1cee:	0505                	addi	a0,a0,1
    1cf0:	4805                	li	a6,1
    1cf2:	bf7d                	j	1cb0 <atoi+0x28>
    1cf4:	0505                	addi	a0,a0,1
    1cf6:	587d                	li	a6,-1
    1cf8:	bf65                	j	1cb0 <atoi+0x28>
    1cfa:	4601                	li	a2,0
    1cfc:	b7f5                	j	1ce8 <atoi+0x60>

0000000000001cfe <check_file_handle>:
    1cfe:	d8010113          	addi	sp,sp,-640
    1d02:	26113c23          	sd	ra,632(sp)
    1d06:	26813823          	sd	s0,624(sp)
    1d0a:	26913423          	sd	s1,616(sp)
    1d0e:	27213023          	sd	s2,608(sp)
    1d12:	25313c23          	sd	s3,600(sp)
    1d16:	25413823          	sd	s4,592(sp)
    1d1a:	25513423          	sd	s5,584(sp)
    1d1e:	25613023          	sd	s6,576(sp)
    1d22:	23713c23          	sd	s7,568(sp)
    1d26:	23813823          	sd	s8,560(sp)
    1d2a:	23913423          	sd	s9,552(sp)
    1d2e:	23a13023          	sd	s10,544(sp)
    1d32:	21b13c23          	sd	s11,536(sp)
    1d36:	8baa                	mv	s7,a0
    1d38:	8a2e                	mv	s4,a1
    1d3a:	8c32                	mv	s8,a2
    1d3c:	89b6                	mv	s3,a3
    1d3e:	040c                	addi	a1,sp,512
    1d40:	00000097          	auipc	ra,0x0
    1d44:	28e080e7          	jalr	654(ra) # 1fce <fstat>
    1d48:	20813603          	ld	a2,520(sp)
    1d4c:	03361163          	bne	a2,s3,1d6e <check_file_handle+0x70>
    1d50:	06098763          	beqz	s3,1dbe <check_file_handle+0xc0>
    1d54:	4901                	li	s2,0
    1d56:	20000a93          	li	s5,512
    1d5a:	00002cb7          	lui	s9,0x2
    1d5e:	00002db7          	lui	s11,0x2
    1d62:	6b0d                	lui	s6,0x3
    1d64:	039b0b13          	addi	s6,s6,57 # 3039 <histogram+0x29>
    1d68:	00002d37          	lui	s10,0x2
    1d6c:	aa39                	j	1e8a <check_file_handle+0x18c>
    1d6e:	86ce                	mv	a3,s3
    1d70:	85d2                	mv	a1,s4
    1d72:	00002537          	lui	a0,0x2
    1d76:	71850513          	addi	a0,a0,1816 # 2718 <crctab+0x530>
    1d7a:	00000097          	auipc	ra,0x0
    1d7e:	942080e7          	jalr	-1726(ra) # 16bc <printf>
    1d82:	fc0999e3          	bnez	s3,1d54 <check_file_handle+0x56>
    1d86:	20813683          	ld	a3,520(sp)
    1d8a:	03368a63          	beq	a3,s3,1dbe <check_file_handle+0xc0>
    1d8e:	0a600813          	li	a6,166
    1d92:	000027b7          	lui	a5,0x2
    1d96:	5e878793          	addi	a5,a5,1512 # 25e8 <crctab+0x400>
    1d9a:	874e                	mv	a4,s3
    1d9c:	8652                	mv	a2,s4
    1d9e:	000025b7          	lui	a1,0x2
    1da2:	7e858593          	addi	a1,a1,2024 # 27e8 <crctab+0x600>
    1da6:	4509                	li	a0,2
    1da8:	00000097          	auipc	ra,0x0
    1dac:	8f2080e7          	jalr	-1806(ra) # 169a <fprintf>
    1db0:	650d                	lui	a0,0x3
    1db2:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1db6:	00000097          	auipc	ra,0x0
    1dba:	1c8080e7          	jalr	456(ra) # 1f7e <exit>
    1dbe:	85d2                	mv	a1,s4
    1dc0:	00003537          	lui	a0,0x3
    1dc4:	83050513          	addi	a0,a0,-2000 # 2830 <crctab+0x648>
    1dc8:	00000097          	auipc	ra,0x0
    1dcc:	8f4080e7          	jalr	-1804(ra) # 16bc <printf>
    1dd0:	27813083          	ld	ra,632(sp)
    1dd4:	27013403          	ld	s0,624(sp)
    1dd8:	26813483          	ld	s1,616(sp)
    1ddc:	26013903          	ld	s2,608(sp)
    1de0:	25813983          	ld	s3,600(sp)
    1de4:	25013a03          	ld	s4,592(sp)
    1de8:	24813a83          	ld	s5,584(sp)
    1dec:	24013b03          	ld	s6,576(sp)
    1df0:	23813b83          	ld	s7,568(sp)
    1df4:	23013c03          	ld	s8,560(sp)
    1df8:	22813c83          	ld	s9,552(sp)
    1dfc:	22013d03          	ld	s10,544(sp)
    1e00:	21813d83          	ld	s11,536(sp)
    1e04:	28010113          	addi	sp,sp,640
    1e08:	8082                	ret
    1e0a:	09d00893          	li	a7,157
    1e0e:	5e8c8813          	addi	a6,s9,1512 # 25e8 <crctab+0x400>
    1e12:	87aa                	mv	a5,a0
    1e14:	8752                	mv	a4,s4
    1e16:	86ca                	mv	a3,s2
    1e18:	8622                	mv	a2,s0
    1e1a:	748d8593          	addi	a1,s11,1864 # 2748 <crctab+0x560>
    1e1e:	4509                	li	a0,2
    1e20:	00000097          	auipc	ra,0x0
    1e24:	87a080e7          	jalr	-1926(ra) # 169a <fprintf>
    1e28:	855a                	mv	a0,s6
    1e2a:	00000097          	auipc	ra,0x0
    1e2e:	154080e7          	jalr	340(ra) # 1f7e <exit>
    1e32:	a89d                	j	1ea8 <check_file_handle+0x1aa>
    1e34:	00160593          	addi	a1,a2,1
    1e38:	0285f163          	bgeu	a1,s0,1e5a <check_file_handle+0x15c>
    1e3c:	00c10733          	add	a4,sp,a2
    1e40:	00b487b3          	add	a5,s1,a1
    1e44:	00174683          	lbu	a3,1(a4)
    1e48:	0007c783          	lbu	a5,0(a5)
    1e4c:	00f68763          	beq	a3,a5,1e5a <check_file_handle+0x15c>
    1e50:	0585                	addi	a1,a1,1
    1e52:	0705                	addi	a4,a4,1
    1e54:	feb416e3          	bne	s0,a1,1e40 <check_file_handle+0x142>
    1e58:	85a2                	mv	a1,s0
    1e5a:	08100813          	li	a6,129
    1e5e:	5e8c8793          	addi	a5,s9,1512
    1e62:	8752                	mv	a4,s4
    1e64:	012606b3          	add	a3,a2,s2
    1e68:	40c58633          	sub	a2,a1,a2
    1e6c:	790d0593          	addi	a1,s10,1936 # 2790 <crctab+0x5a8>
    1e70:	4509                	li	a0,2
    1e72:	00000097          	auipc	ra,0x0
    1e76:	828080e7          	jalr	-2008(ra) # 169a <fprintf>
    1e7a:	855a                	mv	a0,s6
    1e7c:	00000097          	auipc	ra,0x0
    1e80:	102080e7          	jalr	258(ra) # 1f7e <exit>
    1e84:	9922                	add	s2,s2,s0
    1e86:	f13970e3          	bgeu	s2,s3,1d86 <check_file_handle+0x88>
    1e8a:	41298433          	sub	s0,s3,s2
    1e8e:	008af363          	bgeu	s5,s0,1e94 <check_file_handle+0x196>
    1e92:	8456                	mv	s0,s5
    1e94:	0004061b          	sext.w	a2,s0
    1e98:	858a                	mv	a1,sp
    1e9a:	855e                	mv	a0,s7
    1e9c:	00000097          	auipc	ra,0x0
    1ea0:	10a080e7          	jalr	266(ra) # 1fa6 <read>
    1ea4:	f68513e3          	bne	a0,s0,1e0a <check_file_handle+0x10c>
    1ea8:	012c04b3          	add	s1,s8,s2
    1eac:	8622                	mv	a2,s0
    1eae:	85a6                	mv	a1,s1
    1eb0:	850a                	mv	a0,sp
    1eb2:	00000097          	auipc	ra,0x0
    1eb6:	bce080e7          	jalr	-1074(ra) # 1a80 <memcmp>
    1eba:	d569                	beqz	a0,1e84 <check_file_handle+0x186>
    1ebc:	03298163          	beq	s3,s2,1ede <check_file_handle+0x1e0>
    1ec0:	870a                	mv	a4,sp
    1ec2:	4601                	li	a2,0
    1ec4:	00c487b3          	add	a5,s1,a2
    1ec8:	00074683          	lbu	a3,0(a4)
    1ecc:	0007c783          	lbu	a5,0(a5)
    1ed0:	f6f692e3          	bne	a3,a5,1e34 <check_file_handle+0x136>
    1ed4:	0605                	addi	a2,a2,1
    1ed6:	0705                	addi	a4,a4,1
    1ed8:	fe8666e3          	bltu	a2,s0,1ec4 <check_file_handle+0x1c6>
    1edc:	bfa1                	j	1e34 <check_file_handle+0x136>
    1ede:	4601                	li	a2,0
    1ee0:	4585                	li	a1,1
    1ee2:	bfa5                	j	1e5a <check_file_handle+0x15c>

0000000000001ee4 <check_file>:
    1ee4:	7179                	addi	sp,sp,-48
    1ee6:	f406                	sd	ra,40(sp)
    1ee8:	f022                	sd	s0,32(sp)
    1eea:	ec26                	sd	s1,24(sp)
    1eec:	e84a                	sd	s2,16(sp)
    1eee:	e44e                	sd	s3,8(sp)
    1ef0:	84aa                	mv	s1,a0
    1ef2:	892e                	mv	s2,a1
    1ef4:	89b2                	mv	s3,a2
    1ef6:	4581                	li	a1,0
    1ef8:	00000097          	auipc	ra,0x0
    1efc:	0a6080e7          	jalr	166(ra) # 1f9e <open>
    1f00:	842a                	mv	s0,a0
    1f02:	4789                	li	a5,2
    1f04:	02a7df63          	bge	a5,a0,1f42 <check_file+0x5e>
    1f08:	86ce                	mv	a3,s3
    1f0a:	864a                	mv	a2,s2
    1f0c:	85a6                	mv	a1,s1
    1f0e:	8522                	mv	a0,s0
    1f10:	00000097          	auipc	ra,0x0
    1f14:	dee080e7          	jalr	-530(ra) # 1cfe <check_file_handle>
    1f18:	85a6                	mv	a1,s1
    1f1a:	00003537          	lui	a0,0x3
    1f1e:	8b850513          	addi	a0,a0,-1864 # 28b8 <crctab+0x6d0>
    1f22:	fffff097          	auipc	ra,0xfffff
    1f26:	79a080e7          	jalr	1946(ra) # 16bc <printf>
    1f2a:	8522                	mv	a0,s0
    1f2c:	00000097          	auipc	ra,0x0
    1f30:	09a080e7          	jalr	154(ra) # 1fc6 <close>
    1f34:	70a2                	ld	ra,40(sp)
    1f36:	7402                	ld	s0,32(sp)
    1f38:	64e2                	ld	s1,24(sp)
    1f3a:	6942                	ld	s2,16(sp)
    1f3c:	69a2                	ld	s3,8(sp)
    1f3e:	6145                	addi	sp,sp,48
    1f40:	8082                	ret
    1f42:	0ae00713          	li	a4,174
    1f46:	000026b7          	lui	a3,0x2
    1f4a:	5e868693          	addi	a3,a3,1512 # 25e8 <crctab+0x400>
    1f4e:	8626                	mv	a2,s1
    1f50:	000035b7          	lui	a1,0x3
    1f54:	85058593          	addi	a1,a1,-1968 # 2850 <crctab+0x668>
    1f58:	4509                	li	a0,2
    1f5a:	fffff097          	auipc	ra,0xfffff
    1f5e:	740080e7          	jalr	1856(ra) # 169a <fprintf>
    1f62:	650d                	lui	a0,0x3
    1f64:	03950513          	addi	a0,a0,57 # 3039 <histogram+0x29>
    1f68:	00000097          	auipc	ra,0x0
    1f6c:	016080e7          	jalr	22(ra) # 1f7e <exit>
    1f70:	bf61                	j	1f08 <check_file+0x24>

0000000000001f72 <r_sp>:
    1f72:	850a                	mv	a0,sp
    1f74:	8082                	ret

0000000000001f76 <halt>:
    1f76:	4885                	li	a7,1
    1f78:	00000073          	ecall
    1f7c:	8082                	ret

0000000000001f7e <exit>:
    1f7e:	4889                	li	a7,2
    1f80:	00000073          	ecall
    1f84:	8082                	ret

0000000000001f86 <exec>:
    1f86:	488d                	li	a7,3
    1f88:	00000073          	ecall
    1f8c:	8082                	ret

0000000000001f8e <wait>:
    1f8e:	4891                	li	a7,4
    1f90:	00000073          	ecall
    1f94:	8082                	ret

0000000000001f96 <remove>:
    1f96:	4895                	li	a7,5
    1f98:	00000073          	ecall
    1f9c:	8082                	ret

0000000000001f9e <open>:
    1f9e:	4899                	li	a7,6
    1fa0:	00000073          	ecall
    1fa4:	8082                	ret

0000000000001fa6 <read>:
    1fa6:	489d                	li	a7,7
    1fa8:	00000073          	ecall
    1fac:	8082                	ret

0000000000001fae <write>:
    1fae:	48a1                	li	a7,8
    1fb0:	00000073          	ecall
    1fb4:	8082                	ret

0000000000001fb6 <seek>:
    1fb6:	48a5                	li	a7,9
    1fb8:	00000073          	ecall
    1fbc:	8082                	ret

0000000000001fbe <tell>:
    1fbe:	48a9                	li	a7,10
    1fc0:	00000073          	ecall
    1fc4:	8082                	ret

0000000000001fc6 <close>:
    1fc6:	48ad                	li	a7,11
    1fc8:	00000073          	ecall
    1fcc:	8082                	ret

0000000000001fce <fstat>:
    1fce:	48b1                	li	a7,12
    1fd0:	00000073          	ecall
    1fd4:	8082                	ret

0000000000001fd6 <mmap>:
    1fd6:	48b5                	li	a7,13
    1fd8:	00000073          	ecall
    1fdc:	8082                	ret

0000000000001fde <munmap>:
    1fde:	48b9                	li	a7,14
    1fe0:	00000073          	ecall
    1fe4:	8082                	ret

0000000000001fe6 <chdir>:
    1fe6:	48bd                	li	a7,15
    1fe8:	00000073          	ecall
    1fec:	8082                	ret

0000000000001fee <mkdir>:
    1fee:	48c1                	li	a7,16
    1ff0:	00000073          	ecall
    1ff4:	8082                	ret
