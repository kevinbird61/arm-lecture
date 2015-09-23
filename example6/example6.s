
example6：     檔案格式 elf32-littlearm


Disassembly of section .init:

000102c8 <_init>:
   102c8:	e92d4008 	push	{r3, lr}
   102cc:	eb00001d 	bl	10348 <call_weak_fn>
   102d0:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000102d4 <printf@plt-0x14>:
   102d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   102d8:	e59fe004 	ldr	lr, [pc, #4]	; 102e4 <_init+0x1c>
   102dc:	e08fe00e 	add	lr, pc, lr
   102e0:	e5bef008 	ldr	pc, [lr, #8]!
   102e4:	00010d1c 	.word	0x00010d1c

000102e8 <printf@plt>:
   102e8:	e28fc600 	add	ip, pc, #0, 12
   102ec:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102f0:	e5bcfd1c 	ldr	pc, [ip, #3356]!	; 0xd1c

000102f4 <__libc_start_main@plt>:
   102f4:	e28fc600 	add	ip, pc, #0, 12
   102f8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102fc:	e5bcfd14 	ldr	pc, [ip, #3348]!	; 0xd14

00010300 <__gmon_start__@plt>:
   10300:	e28fc600 	add	ip, pc, #0, 12
   10304:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10308:	e5bcfd0c 	ldr	pc, [ip, #3340]!	; 0xd0c

0001030c <abort@plt>:
   1030c:	e28fc600 	add	ip, pc, #0, 12
   10310:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10314:	e5bcfd04 	ldr	pc, [ip, #3332]!	; 0xd04

Disassembly of section .text:

00010318 <_start>:
   10318:	f04f 0b00 	mov.w	fp, #0
   1031c:	f04f 0e00 	mov.w	lr, #0
   10320:	bc02      	pop	{r1}
   10322:	466a      	mov	r2, sp
   10324:	b404      	push	{r2}
   10326:	b401      	push	{r0}
   10328:	f8df c010 	ldr.w	ip, [pc, #16]	; 1033c <_start+0x24>
   1032c:	f84d cd04 	str.w	ip, [sp, #-4]!
   10330:	4803      	ldr	r0, [pc, #12]	; (10340 <_start+0x28>)
   10332:	4b04      	ldr	r3, [pc, #16]	; (10344 <_start+0x2c>)
   10334:	f7ff efde 	blx	102f4 <__libc_start_main@plt>
   10338:	f7ff efe8 	blx	1030c <abort@plt>
   1033c:	00010475 	.word	0x00010475
   10340:	000103f9 	.word	0x000103f9
   10344:	00010439 	.word	0x00010439

00010348 <call_weak_fn>:
   10348:	e59f3014 	ldr	r3, [pc, #20]	; 10364 <call_weak_fn+0x1c>
   1034c:	e59f2014 	ldr	r2, [pc, #20]	; 10368 <call_weak_fn+0x20>
   10350:	e08f3003 	add	r3, pc, r3
   10354:	e7932002 	ldr	r2, [r3, r2]
   10358:	e3520000 	cmp	r2, #0
   1035c:	012fff1e 	bxeq	lr
   10360:	eaffffe6 	b	10300 <__gmon_start__@plt>
   10364:	00010ca8 	.word	0x00010ca8
   10368:	0000001c 	.word	0x0000001c

0001036c <deregister_tm_clones>:
   1036c:	4b07      	ldr	r3, [pc, #28]	; (1038c <deregister_tm_clones+0x20>)
   1036e:	f241 0028 	movw	r0, #4136	; 0x1028
   10372:	f2c0 0002 	movt	r0, #2
   10376:	1a1b      	subs	r3, r3, r0
   10378:	2b06      	cmp	r3, #6
   1037a:	d905      	bls.n	10388 <deregister_tm_clones+0x1c>
   1037c:	f240 0300 	movw	r3, #0
   10380:	f2c0 0300 	movt	r3, #0
   10384:	b103      	cbz	r3, 10388 <deregister_tm_clones+0x1c>
   10386:	4718      	bx	r3
   10388:	4770      	bx	lr
   1038a:	bf00      	nop
   1038c:	0002102b 	.word	0x0002102b

00010390 <register_tm_clones>:
   10390:	f241 0328 	movw	r3, #4136	; 0x1028
   10394:	f241 0028 	movw	r0, #4136	; 0x1028
   10398:	f2c0 0302 	movt	r3, #2
   1039c:	f2c0 0002 	movt	r0, #2
   103a0:	1a19      	subs	r1, r3, r0
   103a2:	1089      	asrs	r1, r1, #2
   103a4:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   103a8:	1049      	asrs	r1, r1, #1
   103aa:	d005      	beq.n	103b8 <register_tm_clones+0x28>
   103ac:	f240 0300 	movw	r3, #0
   103b0:	f2c0 0300 	movt	r3, #0
   103b4:	b103      	cbz	r3, 103b8 <register_tm_clones+0x28>
   103b6:	4718      	bx	r3
   103b8:	4770      	bx	lr
   103ba:	bf00      	nop

000103bc <__do_global_dtors_aux>:
   103bc:	b510      	push	{r4, lr}
   103be:	f241 0428 	movw	r4, #4136	; 0x1028
   103c2:	f2c0 0402 	movt	r4, #2
   103c6:	7823      	ldrb	r3, [r4, #0]
   103c8:	b91b      	cbnz	r3, 103d2 <__do_global_dtors_aux+0x16>
   103ca:	f7ff ffcf 	bl	1036c <deregister_tm_clones>
   103ce:	2301      	movs	r3, #1
   103d0:	7023      	strb	r3, [r4, #0]
   103d2:	bd10      	pop	{r4, pc}

000103d4 <frame_dummy>:
   103d4:	f640 7014 	movw	r0, #3860	; 0xf14
   103d8:	b508      	push	{r3, lr}
   103da:	f2c0 0002 	movt	r0, #2
   103de:	6803      	ldr	r3, [r0, #0]
   103e0:	b913      	cbnz	r3, 103e8 <frame_dummy+0x14>
   103e2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   103e6:	e7d3      	b.n	10390 <register_tm_clones>
   103e8:	f240 0300 	movw	r3, #0
   103ec:	f2c0 0300 	movt	r3, #0
   103f0:	2b00      	cmp	r3, #0
   103f2:	d0f6      	beq.n	103e2 <frame_dummy+0xe>
   103f4:	4798      	blx	r3
   103f6:	e7f4      	b.n	103e2 <frame_dummy+0xe>

000103f8 <main>:
   103f8:	b580      	push	{r7, lr}
   103fa:	b084      	sub	sp, #16
   103fc:	af00      	add	r7, sp, #0
   103fe:	2308      	movs	r3, #8
   10400:	607b      	str	r3, [r7, #4]
   10402:	2309      	movs	r3, #9
   10404:	60fb      	str	r3, [r7, #12]
   10406:	1d3b      	adds	r3, r7, #4
   10408:	60bb      	str	r3, [r7, #8]
   1040a:	68bb      	ldr	r3, [r7, #8]
   1040c:	681b      	ldr	r3, [r3, #0]
   1040e:	3302      	adds	r3, #2
   10410:	60fb      	str	r3, [r7, #12]
   10412:	68b9      	ldr	r1, [r7, #8]
   10414:	f240 4084 	movw	r0, #1156	; 0x484
   10418:	f2c0 0001 	movt	r0, #1
   1041c:	f7ff ef64 	blx	102e8 <printf@plt>
   10420:	68f9      	ldr	r1, [r7, #12]
   10422:	f240 40a0 	movw	r0, #1184	; 0x4a0
   10426:	f2c0 0001 	movt	r0, #1
   1042a:	f7ff ef5e 	blx	102e8 <printf@plt>
   1042e:	2300      	movs	r3, #0
   10430:	4618      	mov	r0, r3
   10432:	3710      	adds	r7, #16
   10434:	46bd      	mov	sp, r7
   10436:	bd80      	pop	{r7, pc}

00010438 <__libc_csu_init>:
   10438:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   1043c:	4607      	mov	r7, r0
   1043e:	4e0b      	ldr	r6, [pc, #44]	; (1046c <__libc_csu_init+0x34>)
   10440:	4688      	mov	r8, r1
   10442:	4d0b      	ldr	r5, [pc, #44]	; (10470 <__libc_csu_init+0x38>)
   10444:	4691      	mov	r9, r2
   10446:	447e      	add	r6, pc
   10448:	f7ff ef3e 	blx	102c8 <_init>
   1044c:	447d      	add	r5, pc
   1044e:	1b76      	subs	r6, r6, r5
   10450:	10b6      	asrs	r6, r6, #2
   10452:	d009      	beq.n	10468 <__libc_csu_init+0x30>
   10454:	2400      	movs	r4, #0
   10456:	3401      	adds	r4, #1
   10458:	f855 3b04 	ldr.w	r3, [r5], #4
   1045c:	464a      	mov	r2, r9
   1045e:	4641      	mov	r1, r8
   10460:	4638      	mov	r0, r7
   10462:	4798      	blx	r3
   10464:	42b4      	cmp	r4, r6
   10466:	d1f6      	bne.n	10456 <__libc_csu_init+0x1e>
   10468:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   1046c:	00010ac6 	.word	0x00010ac6
   10470:	00010abc 	.word	0x00010abc

00010474 <__libc_csu_fini>:
   10474:	4770      	bx	lr
   10476:	bf00      	nop

Disassembly of section .fini:

00010478 <_fini>:
   10478:	e92d4008 	push	{r3, lr}
   1047c:	e8bd8008 	pop	{r3, pc}
