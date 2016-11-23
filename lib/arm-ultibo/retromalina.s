	.file "retromalina.pas"
# Begin asmlist al_procedures

.section .text.n_retromalina$_$tkbd_$__$$_create$boolean$$tkbd
	.balign 4
.globl	RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD
RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD:
# Temps allocated between r13+12 and r13+252
# [retromalina.pas]
# [220] begin
	stmfd	r13!,{r14}
	sub	r13,r13,#252
# Var CreateSuspended located at r13+0, size=OS_8
# Var $vmt located at r13+4, size=OS_32
# Var $self located at r13+8, size=OS_32
	str	r0,[r13, #8]
	str	r1,[r13, #4]
	strb	r2,[r13]
	ldr	r0,[r13, #4]
	cmp	r0,#1
	bne	.Lj6
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj6:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj3
# [223] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj11
# [221] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [222] inherited Create(CreateSuspended);
	ldrb	r2,[r13]
	ldr	r0,[r13, #8]
	mov	r3,#4194304
	mov	r1,#0
	bl	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$LONGWORD$$TTHREAD
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj17
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj17
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1]
	ldr	r1,[r1, #68]
	blx	r1
.Lj17:
.Lj11:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj13
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj19
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj21
	ldr	r0,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
# Rescheduled
	ldr	r2,[r0]
	mvn	r1,#0
	ldr	r2,[r2, #48]
	blx	r2
.Lj21:
	bl	fpc_popaddrstack
	bl	fpc_reraise
.Lj19:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #248]
	cmp	r0,#0
	blne	fpc_raise_nested
	bl	fpc_doneexception
.Lj13:
.Lj3:
	ldr	r0,[r13, #8]
	add	r13,r13,#252
	ldmfd	r13!,{r15}
.Le0:
	.size	RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD, .Le0 - RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD

.section .text.n_retromalina$_$taudio_$__$$_create$boolean$$taudio
	.balign 4
.globl	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO
RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO:
# Temps allocated between r13+12 and r13+252
# [226] begin
	stmfd	r13!,{r14}
	sub	r13,r13,#252
# Var CreateSuspended located at r13+0, size=OS_8
# Var $vmt located at r13+4, size=OS_32
# Var $self located at r13+8, size=OS_32
	str	r0,[r13, #8]
	str	r1,[r13, #4]
	strb	r2,[r13]
	ldr	r0,[r13, #4]
	cmp	r0,#1
	bne	.Lj26
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj26:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj23
# [229] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj31
# [227] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [228] inherited Create(CreateSuspended);
	ldrb	r2,[r13]
	ldr	r0,[r13, #8]
	mov	r3,#4194304
	mov	r1,#0
	bl	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$LONGWORD$$TTHREAD
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj37
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj37
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1]
	ldr	r1,[r1, #68]
	blx	r1
.Lj37:
.Lj31:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj33
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj39
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj41
	ldr	r0,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
# Rescheduled
	ldr	r2,[r0]
	mvn	r1,#0
	ldr	r2,[r2, #48]
	blx	r2
.Lj41:
	bl	fpc_popaddrstack
	bl	fpc_reraise
.Lj39:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #248]
	cmp	r0,#0
	blne	fpc_raise_nested
	bl	fpc_doneexception
.Lj33:
.Lj23:
	ldr	r0,[r13, #8]
	add	r13,r13,#252
	ldmfd	r13!,{r15}
.Le1:
	.size	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO, .Le1 - RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO

.section .text.n_retromalina$_$tkbd_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TKBD_$__$$_EXECUTE
RETROMALINA$_$TKBD_$__$$_EXECUTE:
# [234] begin
	stmfd	r13!,{r4,r5,r6,r7,r14}
	sub	r13,r13,#4
# Var $self located in register r4
# Var a located in register r6
# Var key located in register r5
# Var q located at r13+0, size=OS_32
	mov	r4,r0
# [236] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [237] ThreadSetCPU(ThreadGetCurrent,CPU_ID_2);
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj47
	ldr	r0,.Lj45
	ldr	r0,[r0]
	blx	r0
	b	.Lj49
.Lj47:
	mvn	r0,#0
.Lj49:
	mov	r1,#2
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [238] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	.balign 4
.Lj50:
# [240] a:=KeyboardReadex(@kbd[0], 1*sizeof(tkeyboarddata),1,q);
	ldr	r0,.Lj53
	mov	r3,r13
	mov	r2,#1
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r6,r0
# [241] if (a=0) and (q>0) then  for i:=1 to q do
	bne	.Lj55
	ldr	r0,[r13]
	cmp	r0,#0
	bls	.Lj55
	ldr	r7,[r13]
# Rescheduled
	ldr	r0,.Lj60
	mov	r2,#1
# Rescheduled
	ldr	r1,.Lj60
	str	r2,[r0]
	ldr	r0,[r1]
	cmp	r7,r0
	blt	.Lj58
	ldr	r1,.Lj60
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj59:
	ldr	r2,.Lj60
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
# [252] key:=ord(kbd[0].charcode);
	ldr	r1,.Lj64
	str	r0,[r2]
	ldrb	r5,[r1]
# Rescheduled
# [253] if kbd[0].modifiers and (16384+32768) <>0 then
	ldr	r1,.Lj53
# Peephole LdrMov2Ldr removed superfluous mov
	ldr	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#49152
	beq	.Lj67
# [255] poke($206002b,1);
	ldr	r0,.Lj68
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [256] if key<>0 then poke($2060028,key) else poke($2060028,kbd[0].KeyCode and 255);
	cmp	r5,#0
	beq	.Lj70
	and	r1,r5,#255
# Rescheduled
	ldr	r0,.Lj71
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj72
.Lj70:
	ldr	r0,.Lj73
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj71
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj72:
# [257] poke($2060029,kbd[0].modifiers and 255);
	ldr	r0,.Lj53
	ldr	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj76
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [258] poke($206002a,(kbd[0].modifiers shr 8) and 255);
	ldr	r0,.Lj53
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj78
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [259] if key=0 then poke($206002b,peek($206002b) or $2);
	cmp	r5,#0
	bne	.Lj80
	ldr	r0,.Lj68
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	orr	r0,r0,#2
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj68
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj80:
# [260] CleanDataCacheRange($2060000,4096);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj83
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#393216
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj83
	movne	r1,#4096
	ldrne	r2,[r2]
	blxne	r2
.Lj67:
	ldr	r0,.Lj60
	ldr	r0,[r0]
	cmp	r7,r0
	bgt	.Lj59
.Lj58:
.Lj55:
# [279] threadsleep(10);
	mov	r0,#10
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [280] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj50
# [282] end;
	add	r13,r13,#4
	ldmfd	r13!,{r4,r5,r6,r7,r15}
.Lj45:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj53:
	.long	U_$RETROMALINA_$$_KBD
.Lj60:
	.long	U_$RETROMALINA_$$_I
.Lj64:
	.long	U_$RETROMALINA_$$_KBD+8
.Lj68:
	.long	33947691
.Lj71:
	.long	33947688
.Lj73:
	.long	U_$RETROMALINA_$$_KBD+6
.Lj76:
	.long	33947689
.Lj78:
	.long	33947690
.Lj83:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le2:
	.size	RETROMALINA$_$TKBD_$__$$_EXECUTE, .Le2 - RETROMALINA$_$TKBD_$__$$_EXECUTE

.section .text.n_retromalina_$$_getkey
	.balign 4
.globl	RETROMALINA_$$_GETKEY
RETROMALINA_$$_GETKEY:
# [287] begin
	stmfd	r13!,{r4,r14}
	sub	r13,r13,#4
# Var a located in register r0
# Var key located in register r4
# Var q located at r13+0, size=OS_32
# [290] a:=KeyboardReadex(@kbd[0], 4*sizeof(tkeyboarddata),1,q);
	ldr	r0,.Lj90
	mov	r3,r13
	mov	r2,#1
	mov	r1,#48
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Var a located in register r0
# [291] if (a=0) and (q>0) then  // for i:=1 to q do
	cmp	r0,#0
	bne	.Lj92
	ldr	r0,[r13]
	cmp	r0,#0
	bls	.Lj92
# [295] key:=ord(kbd[0].charcode);
	ldr	r0,.Lj94
	ldrb	r4,[r0]
# Rescheduled
# [299] if kbd[0].modifiers and (16384+32768) <>0 then
	ldr	r0,.Lj90
	ldr	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#49152
	beq	.Lj97
# [301] poke($206002b,1);
	ldr	r0,.Lj98
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [302] if key<>0 then poke($2060028,key) else poke($2060028,kbd[0].KeyCode and 255);
	cmp	r4,#0
	beq	.Lj100
	and	r1,r4,#255
# Rescheduled
	ldr	r0,.Lj101
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj102
.Lj100:
	ldr	r0,.Lj103
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj101
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj102:
# [303] poke($2060029,kbd[0].modifiers and 255);
	ldr	r0,.Lj90
	ldr	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj106
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [304] poke($206002a,(kbd[0].modifiers shr 8) and 255);
	ldr	r0,.Lj90
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj108
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [305] if key=0 then poke($206002b,peek($206002b) or $2);
	cmp	r4,#0
	bne	.Lj110
	ldr	r0,.Lj98
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	orr	r0,r0,#2
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj98
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj110:
# [306] CleanDataCacheRange($2060000,4096);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj113
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#393216
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj113
	movne	r1,#4096
	ldrne	r2,[r2]
	blxne	r2
.Lj97:
.Lj92:
# [328] end;
	add	r13,r13,#4
	ldmfd	r13!,{r4,r15}
.Lj90:
	.long	U_$RETROMALINA_$$_KBD
.Lj94:
	.long	U_$RETROMALINA_$$_KBD+8
.Lj98:
	.long	33947691
.Lj101:
	.long	33947688
.Lj103:
	.long	U_$RETROMALINA_$$_KBD+6
.Lj106:
	.long	33947689
.Lj108:
	.long	33947690
.Lj113:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le3:
	.size	RETROMALINA_$$_GETKEY, .Le3 - RETROMALINA_$$_GETKEY

.section .text.n_retromalina$_$taudio_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TAUDIO_$__$$_EXECUTE
RETROMALINA$_$TAUDIO_$__$$_EXECUTE:
# [334] begin
	stmfd	r13!,{r4,r5,r14}
# Var $self located in register r4
# Var a located in register r5
# Var key located in register r0
# Var q located in register r0
	mov	r4,r0
# [337] ThreadSetCPU(ThreadGetCurrent,CPU_ID_1);
	ldr	r0,.Lj119
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj121
	ldr	r0,.Lj119
	ldr	r0,[r0]
	blx	r0
	b	.Lj123
.Lj121:
	mvn	r0,#0
.Lj123:
	mov	r1,#1
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [338] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	.balign 4
.Lj124:
	.balign 4
.Lj127:
# [340] repeat threadsleep(2); a:= lpeek($3F007800) until (a and 2) <>0 ;
	mov	r0,#2
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	mov	r0,#1056964608
	orr	r0,r0,#30720
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r5,r0
# Peephole OpCmp2OpS done
	ands	r0,r5,#2
	beq	.Lj127
# Peephole OpCmp2OpS done
# [341] if (a and 2)<>0
	ands	r0,r5,#2
	beq	.Lj131
# [344] if lpeek($3f00781c)=$c4000000 then audiocallback($0205a000)
	ldr	r0,.Lj132
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	cmp	r0,#-1006632960
	bne	.Lj134
	mov	r0,#33554432
	orr	r0,r0,#368640
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
	b	.Lj135
.Lj134:
# [345] else audiocallback($0205c000);
	mov	r0,#33554432
	orr	r0,r0,#376832
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
.Lj135:
# [346] lpoke($3F007800,3);
	mov	r0,#1056964608
	orr	r0,r0,#30720
	mov	r1,#3
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [347] CleanDataCacheRange($0205a000,$8000);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj136
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#368640
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj136
	movne	r1,#32768
	ldrne	r2,[r2]
	blxne	r2
.Lj131:
# [350] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj124
# [352] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj119:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj132:
	.long	1056995356
.Lj136:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le4:
	.size	RETROMALINA$_$TAUDIO_$__$$_EXECUTE, .Le4 - RETROMALINA$_$TAUDIO_$__$$_EXECUTE

.section .text.n_retromalina$_$tretro_$__$$_create$boolean$$tretro
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO:
# Temps allocated between r13+12 and r13+252
# [361] begin
	stmfd	r13!,{r14}
	sub	r13,r13,#252
# Var CreateSuspended located at r13+0, size=OS_8
# Var $vmt located at r13+4, size=OS_32
# Var $self located at r13+8, size=OS_32
	str	r0,[r13, #8]
	str	r1,[r13, #4]
	strb	r2,[r13]
	ldr	r0,[r13, #4]
	cmp	r0,#1
	bne	.Lj143
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj143:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj140
# [364] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj148
# [362] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [363] inherited Create(CreateSuspended);
	ldrb	r2,[r13]
	ldr	r0,[r13, #8]
	mov	r3,#4194304
	mov	r1,#0
	bl	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$LONGWORD$$TTHREAD
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj154
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj154
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1]
	ldr	r1,[r1, #68]
	blx	r1
.Lj154:
.Lj148:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj150
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj156
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj158
	ldr	r0,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
# Rescheduled
	ldr	r2,[r0]
	mvn	r1,#0
	ldr	r2,[r2, #48]
	blx	r2
.Lj158:
	bl	fpc_popaddrstack
	bl	fpc_reraise
.Lj156:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #248]
	cmp	r0,#0
	blne	fpc_raise_nested
	bl	fpc_doneexception
.Lj150:
.Lj140:
	ldr	r0,[r13, #8]
	add	r13,r13,#252
	ldmfd	r13!,{r15}
.Le5:
	.size	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO, .Le5 - RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO

.section .text.n_retromalina$_$tretro_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_EXECUTE
RETROMALINA$_$TRETRO_$__$$_EXECUTE:
# [376] begin
	stmfd	r13!,{r4,r14}
# Var $self located in register r4
# Var id located in register r0
	mov	r4,r0
# Rescheduled
# [378] running:=1;
	ldr	r0,.Lj162
	mov	r1,#1
	str	r1,[r0]
# [379] id:=getcurrentthreadid  ;
	bl	ULTIBO_$$_GETCURRENTTHREADID$$LONGWORD
# Var id located in register r0
# Rescheduled
# [380] ThreadSetCPU(ThreadGetCurrent,CPU_ID_3);
	ldr	r1,.Lj163
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj165
	ldr	r0,.Lj163
	ldr	r0,[r0]
	blx	r0
	b	.Lj167
.Lj165:
	mvn	r0,#0
.Lj167:
	mov	r1,#3
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [384] Sleep(1);
	mov	r0,#1
	bl	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
	.balign 4
.Lj168:
# Rescheduled
# [387] vblank1:=0;
	ldr	r0,.Lj171
	mov	r1,#0
# Rescheduled
# [388] t:=clockgettotal;
	ldr	r2,.Lj172
	strb	r1,[r0]
	ldr	r0,[r2]
	cmp	r0,#0
	beq	.Lj174
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj176
# Rescheduled
	ldr	r2,.Lj177
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj178
.Lj174:
# Rescheduled
	ldr	r0,.Lj176
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj177
	mov	r0,#0
	str	r0,[r1]
.Lj178:
# [389] scrconvert16f(p2);
	ldr	r0,.Lj181
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [390] tim:=clockgettotal-t;
	ldr	r0,.Lj172
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj184
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
	b	.Lj186
.Lj184:
	mov	r0,#0
	mov	r1,#0
.Lj186:
	ldr	r2,.Lj176
# Rescheduled
	ldr	r3,.Lj177
	ldr	r2,[r2]
	ldr	r12,[r3]
	subs	r0,r0,r2
# Rescheduled
	ldr	r3,.Lj189
	sbc	r1,r1,r12
# Rescheduled
	ldr	r2,.Lj190
	str	r0,[r3]
# Rescheduled
# [391] t:=clockgettotal;
	ldr	r0,.Lj172
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj193
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj176
# Rescheduled
	ldr	r2,.Lj177
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj197
.Lj193:
# Rescheduled
	ldr	r0,.Lj176
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj177
	mov	r1,#0
	str	r1,[r0]
.Lj197:
# [392] spritef(p2);
	ldr	r0,.Lj181
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [393] ts:=clockgettotal-t;
	ldr	r0,.Lj172
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj203
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
	b	.Lj205
.Lj203:
	mov	r0,#0
	mov	r1,#0
.Lj205:
	ldr	r2,.Lj176
# Rescheduled
	ldr	r3,.Lj177
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r12,r0,r2
# Rescheduled
	ldr	r2,.Lj208
	sbc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj209
	str	r12,[r2]
	str	r0,[r1]
# Rescheduled
# [394] vblank1:=1;
	ldr	r0,.Lj171
	mov	r1,#1
	strb	r1,[r0]
# [395] CleanDataCacheRange(integer(p2),9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj181
	orr	r1,r1,#827392
# Rescheduled
	ldr	r2,.Lj212
# Rescheduled
	ldr	r2,[r2]
	ldr	r0,[r0]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj212
	ldrne	r2,[r2]
	blxne	r2
# [396] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [398] FramebufferDeviceSetOffset(fb,0,0,True);
	ldr	r0,.Lj216
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#0
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [399] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj216
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [400] poke ($2070000,1);
	mov	r0,#33554432
	orr	r0,r0,#458752
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# Rescheduled
# [403] vblank1:=0;
	ldr	r1,.Lj171
	mov	r2,#0
# Rescheduled
# [404] t:=clockgettotal;
	ldr	r0,.Lj172
	strb	r2,[r1]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj221
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj176
# Rescheduled
	ldr	r2,.Lj177
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj225
.Lj221:
# Rescheduled
	ldr	r0,.Lj176
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj177
	mov	r1,#0
	str	r1,[r0]
.Lj225:
# [405] scrconvert16f(p2+2304000);
	ldr	r0,.Lj181
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [406] tim:=clockgettotal-t;
	ldr	r0,.Lj172
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj231
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
	b	.Lj233
.Lj231:
	mov	r0,#0
	mov	r1,#0
.Lj233:
	ldr	r2,.Lj176
# Rescheduled
	ldr	r3,.Lj177
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r0,r0,r2
# Rescheduled
	ldr	r12,.Lj189
	sbc	r1,r1,r3
# Rescheduled
	ldr	r2,.Lj190
	str	r0,[r12]
# Rescheduled
# [407] t:=clockgettotal;
	ldr	r0,.Lj172
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj240
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj176
# Rescheduled
	ldr	r2,.Lj177
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj244
.Lj240:
# Rescheduled
	ldr	r0,.Lj176
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj177
	mov	r1,#0
	str	r1,[r0]
.Lj244:
# [408] spritef(p2+2304000);
	ldr	r0,.Lj181
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [409] ts:=clockgettotal-t;
	ldr	r0,.Lj172
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj250
	ldr	r0,.Lj172
	ldr	r0,[r0]
	blx	r0
	b	.Lj252
.Lj250:
	mov	r0,#0
	mov	r1,#0
.Lj252:
	ldr	r2,.Lj176
# Rescheduled
	ldr	r3,.Lj177
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj208
	sbc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj209
	str	r2,[r12]
	str	r0,[r1]
# Rescheduled
# [410] vblank1:=1;
	ldr	r0,.Lj171
	mov	r1,#1
	strb	r1,[r0]
# [411] CleanDataCacheRange(integer(p2)+9216000,9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj181
# Rescheduled
	ldr	r0,[r0]
	orr	r1,r1,#827392
	add	r0,r0,#8388608
# Rescheduled
# Rescheduled
	ldr	r2,.Lj212
	add	r0,r0,#827392
	ldr	r2,[r2]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj212
	ldrne	r2,[r2]
	blxne	r2
# [412] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [415] FramebufferDeviceSetOffset(fb,0,1200,True);
	ldr	r0,.Lj216
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#1200
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [416] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj216
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [417] poke ($2070000,1);
	mov	r0,#33554432
	orr	r0,r0,#458752
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [420] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj168
# Rescheduled
# [421] running:=0;
	ldr	r1,.Lj162
	mov	r0,#0
	str	r0,[r1]
# [422] end;
	ldmfd	r13!,{r4,r15}
.Lj162:
	.long	TC_$RETROMALINA_$$_RUNNING
.Lj163:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj171:
	.long	U_$RETROMALINA_$$_VBLANK1
.Lj172:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj176:
	.long	U_$RETROMALINA_$$_T
.Lj177:
	.long	U_$RETROMALINA_$$_T+4
.Lj181:
	.long	U_$RETROMALINA_$$_P2
.Lj189:
	.long	U_$RETROMALINA_$$_TIM
.Lj190:
	.long	U_$RETROMALINA_$$_TIM+4
.Lj208:
	.long	U_$RETROMALINA_$$_TS
.Lj209:
	.long	U_$RETROMALINA_$$_TS+4
.Lj212:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj216:
	.long	U_$RETROMALINA_$$_FB
.Le6:
	.size	RETROMALINA$_$TRETRO_$__$$_EXECUTE, .Le6 - RETROMALINA$_$TRETRO_$__$$_EXECUTE

.section .text.n_retromalina_$$_initmachine
	.balign 4
.globl	RETROMALINA_$$_INITMACHINE
RETROMALINA_$$_INITMACHINE:
# [440] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#20
# Var a located in register r5
# Var i located in register r6
# Var fh2 located in register r0
# Var bb located at r13+0, size=OS_8
# Var Entry located at r13+4, size=OS_NO
# Var i located in register r4
# [442] for i:=16 to 8191 do
	mov	r4,#16
	sub	r4,r4,#1
	.balign 4
.Lj270:
	add	r4,r4,#1
# Rescheduled
# Rescheduled
# [444] Entry:=PageTableGetEntry(i*4096);
	ldr	r0,.Lj271
	mov	r1,r4,lsl #12
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj273
# Rescheduled
# Rescheduled
	ldr	r2,.Lj271
	add	r0,r13,#4
	ldr	r2,[r2]
	blx	r2
	b	.Lj275
.Lj273:
	add	r0,r13,#4
	mov	r2,#0
	mov	r1,#16
	bl	SYSTEM_$$_FILLCHAR$formal$LONGINT$BYTE
.Lj275:
# [445] Entry.Flags:=$3b2;         //3b2   orig 562
	mov	r0,#178
	orr	r0,r0,#768
# Rescheduled
# [446] PageTableSetEntry(Entry);
	ldr	r1,.Lj276
	str	r0,[r13, #16]
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj278
# Rescheduled
	ldr	r1,.Lj276
# Rescheduled
	ldr	r1,[r1]
	add	r0,r13,#4
	blx	r1
	b	.Lj280
.Lj278:
	mov	r0,#120
.Lj280:
	mov	r0,#255
	orr	r0,r0,#7936
	cmp	r4,r0
	blt	.Lj270
# Rescheduled
# [465] fh2:=fileopen('C:\retro\combinedwaveforms.bin',$40);   // load combined waveforms for SID
	ldr	r0,.Lj281
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [466] fileread(fh2,combined,1024);
	ldr	r1,.Lj282
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [467] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Var i located in register r2
# [468] for i:=0 to 127 do siddata[i]:=0;
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj285:
	add	r2,r2,#1
# Rescheduled
	ldr	r0,.Lj286
	mov	r1,#0
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r2, lsl #2]
	cmp	r2,#127
	blt	.Lj285
# Var i located in register r4
# [469] for i:=0 to 15 do siddata[$30+i]:=round(1073741824*(1-20*attacktable[i]));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj289:
	add	r4,r4,#1
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r0,.Lj293
	vldr	d0,.Lj292
# [555] end;
	add	r0,r0,r4,lsl #3
	vldr	d1,[r0]
	vmul.f64	d1,d0,d1
	vldr	d0,.Lj291
	vsub.f64	d0,d0,d1
	vldr	d1,.Lj290
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj294
# Peephole FoldShiftLdrStr done
	str	r0,[r1, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj289
# Var i located in register r4
# [470] for i:=0 to 15 do siddata[$40+i]:=20*round(1073741824*attacktable[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj297:
	add	r4,r4,#1
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj293
	vldr	d0,.Lj298
	add	r0,r1,r4,lsl #3
	vldr	d1,[r0]
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	mov	r12,#20
	mov	r2,#0
	mul	r3,r0,r2
	umull	r0,r2,r12,r0
	mla	r3,r12,r1,r3
	add	r2,r3,r2
# Rescheduled
	ldr	r2,.Lj300
# Peephole FoldShiftLdrStr done
	str	r0,[r2, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj297
# Var i located in register r3
# [471] for i:=0 to 1023 do siddata[128+i]:=combined[i];
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj303:
	add	r3,r3,#1
# Rescheduled
	ldr	r0,.Lj282
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldrb	r0,[r3, r0]
	ldr	r1,.Lj305
	str	r0,[r1, r3, lsl #2]
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r3,r0
	blt	.Lj303
# Var i located in register r3
# [472] for i:=0 to 1023 do siddata[128+i]:=(siddata[128+i]-128) shl 16;
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj308:
# Rescheduled
	ldr	r0,.Lj286
	add	r3,r3,#1
	add	r1,r3,#128
# Peephole FoldShiftLdrStr done
	ldr	r2,[r0, r1, lsl #2]
	sub	r2,r2,#128
	mov	r2,r2,lsl #16
# Peephole FoldShiftLdrStr done
	str	r2,[r0, r1, lsl #2]
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r3,r0
	blt	.Lj308
# [473] siddata[$0e]:=$7FFFF8;
	mvn	r1,#-1073741817
# Rescheduled
	ldr	r0,.Lj310
	bic	r1,r1,#1065353216
	str	r1,[r0]
# [474] siddata[$1e]:=$7FFFF8;
	mvn	r0,#-1073741817
# Rescheduled
	ldr	r1,.Lj311
	bic	r0,r0,#1065353216
	str	r0,[r1]
# [475] siddata[$2e]:=$7FFFF8;
	mvn	r2,#-1073741817
# Rescheduled
	ldr	r1,.Lj312
	bic	r2,r2,#1065353216
# Rescheduled
# [476] p:=@tabl[0];
	ldr	r0,.Lj313
	str	r2,[r1]
# Rescheduled
	ldr	r1,.Lj314
	str	r0,[r1]
# [477] reset6502;
	bl	UNIT6502_$$_RESET6502
# Rescheduled
# [496] fullscreen:=1;
	ldr	r1,.Lj315
	mov	r0,#1
	str	r0,[r1]
# [515] fb:=FramebufferDevicegetdefault;
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETDEFAULT$$PFRAMEBUFFERDEVICE
# Rescheduled
	ldr	r2,.Lj316
# Rescheduled
# [516] FramebufferDeviceRelease(fb);
	ldr	r1,.Lj316
	str	r0,[r2]
	ldr	r0,[r1]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICERELEASE$PFRAMEBUFFERDEVICE$$LONGWORD
# [517] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [518] FramebufferProperties.Depth:=32;
	ldr	r0,.Lj318
	mov	r1,#32
	str	r1,[r0]
# Rescheduled
# [519] FramebufferProperties.PhysicalWidth:=1920;
	ldr	r0,.Lj319
	mov	r1,#1920
	str	r1,[r0]
# Rescheduled
# [520] FramebufferProperties.PhysicalHeight:=1200;
	ldr	r2,.Lj320
	mov	r1,#1200
# Rescheduled
	ldr	r0,.Lj321
	str	r1,[r2]
# [521] FramebufferProperties.VirtualWidth:=FramebufferProperties.PhysicalWidth;
	ldr	r1,[r0, #32]
# Rescheduled
	ldr	r2,.Lj321
	str	r1,[r0, #40]
# [522] FramebufferProperties.VirtualHeight:=FramebufferProperties.PhysicalHeight * 2;
	ldr	r0,[r2, #36]
	mov	r0,r0,lsl #1
# Rescheduled
# [523] FramebufferDeviceAllocate(fb,@FramebufferProperties);
	ldr	r1,.Lj321
	str	r0,[r2, #44]
# Rescheduled
	ldr	r0,.Lj316
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEALLOCATE$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [524] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# Rescheduled
# [525] FramebufferDeviceGetProperties(fb,@FramebufferProperties);
	ldr	r0,.Lj316
	ldr	r1,.Lj321
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETPROPERTIES$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [526] p2:=Pointer(FramebufferProperties.Address);
	ldr	r0,.Lj327
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj328
	str	r0,[r1]
# Rescheduled
# [532] r1:=pointer($2000000);
	ldr	r0,.Lj329
	mov	r1,#33554432
	str	r1,[r0]
# Var i located in register r4
# [533] for i:=$2060000 to $2061000 do poke(i,0);
	mov	r4,#33554432
	orr	r4,r4,#393216
	sub	r4,r4,#1
	.balign 4
.Lj332:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	mov	r0,#33554432
	orr	r0,r0,#397312
	cmp	r4,r0
	blt	.Lj332
# [534] lpoke($2060004,$1000000);
	ldr	r0,.Lj333
	mov	r1,#16777216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [535] lpoke($2060000,$0000000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# Rescheduled
# [536] fh2:=fileopen('C:\retro\st4font.def',$40);     // 8x16 font
	ldr	r0,.Lj334
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [537] fileread(fh2,PInteger($2050000)^,2048);
	ldr	r1,.Lj335
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#2048
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [538] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [540] fh2:=fileopen('C:\retro\mysz.def',$40);        // load mouse cursor definition at sprite 8
	ldr	r0,.Lj336
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Var i located in register r6
# [541] for i:=0 to 1023 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj339:
	add	r6,r6,#1
# [543] fileread(fh2,bb,1);
	mov	r1,r13
	mov	r0,r4
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [544] a:=bb;
	ldrb	r5,[r13]
# Peephole LdrMov2Ldr removed superfluous mov
# Peephole FoldShiftProcess done
	add	r1,r5,r5,lsl #8
# Peephole FoldShiftProcess done
	add	r5,r1,r5,lsl #16
# Peephole DataMov2Data removed superfluous mov
# [546] lpoke($2059000+4*i,a);
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#364544
	mov	r1,r5
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r6,r0
	blt	.Lj339
# [548] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [549] thread:=tretro.create(true);            // start frame refreshing thread
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj340
	mov	r1,#1
	bl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
# Rescheduled
	ldr	r2,.Lj341
# Rescheduled
# [550] thread.start;
	ldr	r1,.Lj341
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
# [553] thread3:=taudio.Create(true);
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj343
	mov	r1,#1
	bl	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO
# Rescheduled
	ldr	r2,.Lj344
# Rescheduled
# [554] thread3.start;
	ldr	r1,.Lj344
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
	add	r13,r13,#20
	ldmfd	r13!,{r4,r5,r6,r15}
	b	.Lj346
.Lj271:
	.long	U_$PLATFORM_$$_PAGETABLEGETENTRYHANDLER
.Lj276:
	.long	U_$PLATFORM_$$_PAGETABLESETENTRYHANDLER
.Lj281:
	.long	.Ld1
.Lj282:
	.long	U_$RETROMALINA_$$_COMBINED
.Lj286:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj293:
	.long	TC_$RETROMALINA_$$_ATTACKTABLE
.Lj292:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj291:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63
.Lj290:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj294:
	.long	U_$RETROMALINA_$$_SIDDATA+192
.Lj298:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj300:
	.long	U_$RETROMALINA_$$_SIDDATA+256
.Lj305:
	.long	U_$RETROMALINA_$$_SIDDATA+512
.Lj310:
	.long	U_$RETROMALINA_$$_SIDDATA+56
.Lj311:
	.long	U_$RETROMALINA_$$_SIDDATA+120
.Lj312:
	.long	U_$RETROMALINA_$$_SIDDATA+184
.Lj313:
	.long	U_$RETROMALINA_$$_TABL
.Lj314:
	.long	U_$RETROMALINA_$$_P
.Lj315:
	.long	TC_$RETROMALINA_$$_FULLSCREEN
.Lj316:
	.long	U_$RETROMALINA_$$_FB
.Lj318:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+16
.Lj319:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+32
.Lj320:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+36
.Lj321:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
.Lj327:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+4
.Lj328:
	.long	U_$RETROMALINA_$$_P2
.Lj329:
	.long	U_$RETROMALINA_$$_R1
.Lj333:
	.long	33947652
.Lj334:
	.long	.Ld2
.Lj335:
	.long	33882112
.Lj336:
	.long	.Ld3
.Lj340:
	.long	VMT_$RETROMALINA_$$_TRETRO
.Lj341:
	.long	U_$RETROMALINA_$$_THREAD
.Lj343:
	.long	VMT_$RETROMALINA_$$_TAUDIO
.Lj344:
	.long	U_$RETROMALINA_$$_THREAD3
.Lj346:
.Le7:
	.size	RETROMALINA_$$_INITMACHINE, .Le7 - RETROMALINA_$$_INITMACHINE

.section .text.n_retromalina_$$_stopmachine
	.balign 4
.globl	RETROMALINA_$$_STOPMACHINE
RETROMALINA_$$_STOPMACHINE:
# [566] begin
# Rescheduled
# [567] thread.terminate;
	ldr	r0,.Lj349
	stmfd	r13!,{r14}
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 4
.Lj350:
# [568] repeat until running=0;
	ldr	r0,.Lj353
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj350
# [569] end;
	ldmfd	r13!,{r15}
.Lj349:
	.long	U_$RETROMALINA_$$_THREAD
.Lj353:
	.long	TC_$RETROMALINA_$$_RUNNING
.Le8:
	.size	RETROMALINA_$$_STOPMACHINE, .Le8 - RETROMALINA_$$_STOPMACHINE

.section .text.n_retromalina_$$_gettime$$int64
	.balign 4
.globl	RETROMALINA_$$_GETTIME$$INT64
RETROMALINA_$$_GETTIME$$INT64:
# Var $result located in register r0:r2
# [575] begin
# [578] end;
	mov	r1,r0
	mov	r0,r2
	bx	r14
.Le9:
	.size	RETROMALINA_$$_GETTIME$$INT64, .Le9 - RETROMALINA_$$_GETTIME$$INT64

.section .text.n_retromalina_$$_poke$longint$byte
	.balign 4
.globl	RETROMALINA_$$_POKE$LONGINT$BYTE
RETROMALINA_$$_POKE$LONGINT$BYTE:
# Var addr located in register r0
# Var b located in register r1
# [588] begin
# Var addr located in register r0
# Var b located in register r1
# [589] PByte(addr)^:=b;
	strb	r1,[r0]
# [590] end;
	bx	r14
.Le10:
	.size	RETROMALINA_$$_POKE$LONGINT$BYTE, .Le10 - RETROMALINA_$$_POKE$LONGINT$BYTE

.section .text.n_retromalina_$$_dpoke$longint$word
	.balign 4
.globl	RETROMALINA_$$_DPOKE$LONGINT$WORD
RETROMALINA_$$_DPOKE$LONGINT$WORD:
# Var addr located in register r0
# Var w located in register r1
# [594] begin
# [595] PWord(addr and $FFFFFFFE)^:=w;
	bic	r0,r0,#1
# Var w located in register r1
	strh	r1,[r0]
# [596] end;
	bx	r14
.Le11:
	.size	RETROMALINA_$$_DPOKE$LONGINT$WORD, .Le11 - RETROMALINA_$$_DPOKE$LONGINT$WORD

.section .text.n_retromalina_$$_lpoke$longint$longword
	.balign 4
.globl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
RETROMALINA_$$_LPOKE$LONGINT$LONGWORD:
# Var addr located in register r0
# Var c located in register r1
# [600] begin
# [601] PCardinal(addr and $FFFFFFFC)^:=c;
	bic	r0,r0,#3
# Var c located in register r1
	str	r1,[r0]
# [602] end;
	bx	r14
.Le12:
	.size	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD, .Le12 - RETROMALINA_$$_LPOKE$LONGINT$LONGWORD

.section .text.n_retromalina_$$_slpoke$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT
RETROMALINA_$$_SLPOKE$LONGINT$LONGINT:
# Var addr located in register r0
# Var i located in register r1
# [606] begin
# [607] PInteger(addr and $FFFFFFFC)^:=i;
	bic	r0,r0,#3
# Var i located in register r1
	str	r1,[r0]
# [608] end;
	bx	r14
.Le13:
	.size	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT, .Le13 - RETROMALINA_$$_SLPOKE$LONGINT$LONGINT

.section .text.n_retromalina_$$_peek$longint$$byte
	.balign 4
.globl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
RETROMALINA_$$_PEEK$LONGINT$$BYTE:
# Var addr located in register r0
# Var $result located in register r0
# [612] begin
# Var addr located in register r0
# Var $result located in register r0
# [613] peek:=Pbyte(addr)^;
	ldrb	r0,[r0]
# [614] end;
	bx	r14
.Le14:
	.size	RETROMALINA_$$_PEEK$LONGINT$$BYTE, .Le14 - RETROMALINA_$$_PEEK$LONGINT$$BYTE

.section .text.n_retromalina_$$_dpeek$longint$$word
	.balign 4
.globl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
RETROMALINA_$$_DPEEK$LONGINT$$WORD:
# Var addr located in register r0
# Var $result located in register r0
# [618] begin
# [619] dpeek:=PWord(addr and $FFFFFFFE)^;
	bic	r0,r0,#1
# Var $result located in register r0
	ldrh	r0,[r0]
# [620] end;
	bx	r14
.Le15:
	.size	RETROMALINA_$$_DPEEK$LONGINT$$WORD, .Le15 - RETROMALINA_$$_DPEEK$LONGINT$$WORD

.section .text.n_retromalina_$$_lpeek$longint$$longword
	.balign 4
.globl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD:
# Var addr located in register r0
# Var $result located in register r0
# [624] begin
# [625] lpeek:=PCardinal(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [626] end;
	bx	r14
.Le16:
	.size	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD, .Le16 - RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD

.section .text.n_retromalina_$$_slpeek$longint$$longint
	.balign 4
.globl	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT
RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT:
# Var addr located in register r0
# Var $result located in register r0
# [630] begin
# [631] slpeek:=PInteger(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [632] end;
	bx	r14
.Le17:
	.size	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT, .Le17 - RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT

.section .text.n_retromalina_$$_blit$crc5a667533
	.balign 4
.globl	RETROMALINA_$$_BLIT$crc5A667533
RETROMALINA_$$_BLIT$crc5A667533:
# Temps allocated between r11-52 and r11-44
# [642] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#52
# Var from located in register r0
# Var x located in register r1
# Var y located in register r0
# Var too located in register r3
# Var x2 located in register r7
# Var y2 located in register r12
# Var length located in register r5
# Var lines located in register r6
# Var bpl1 located in register r14
# Var bpl2 located in register r4
# Var i located in register r0
# Var j located in register r6
# Var b1 located in register r2
# Var b2 located in register r1
	str	r0,[r11, #-52]
	str	r2,[r11, #-48]
	ldr	r7,[r11, #4]
	ldr	r12,[r11, #8]
	ldr	r5,[r11, #12]
	ldr	r6,[r11, #16]
	ldr	r14,[r11, #20]
# Rescheduled
# [643] if lpeek($2060008)<16 then
	ldr	r0,.Lj374
	ldr	r4,[r11, #24]
	bic	r0,r0,#3
	ldr	r0,[r0]
	cmp	r0,#16
	bcs	.Lj376
# [645] from:=from+x;
	ldr	r2,[r11, #-52]
	add	r0,r1,r2
	str	r0,[r11, #-52]
# [646] too:=too+x2;
	add	r3,r7,r3
# Peephole DataMov2Data removed superfluous mov
# [647] for i:=0 to lines-1 do
	sub	r8,r6,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r0,#0
	cmp	r8,r0
	blt	.Lj378
	sub	r0,r0,#1
	.balign 4
.Lj379:
	add	r0,r0,#1
# [649] b2:=too+bpl2*(i+y2);
	add	r7,r12,r0
# MulAdd2MLA done
# Peephole DataMov2Data removed superfluous mov
# Rescheduled
# [650] b1:=from+bpl1*(i+y);
	ldr	r9,[r11, #-48]
	mla	r1,r4,r7,r3
	add	r7,r9,r0
# Rescheduled
	ldr	r9,[r11, #-52]
	mul	r7,r14,r7
	add	r2,r9,r7
# Peephole DataMov2Data removed superfluous mov
# [651] for j:=0 to length-1 do
	sub	r7,r5,#1
	mov	r6,#0
	cmp	r7,r6
	blt	.Lj381
	sub	r6,r6,#1
	.balign 4
.Lj382:
	add	r6,r6,#1
# [652] poke(b2+j,peek(b1+j));
	add	r9,r6,r2
	ldrb	r9,[r9]
	add	r10,r6,r1
	strb	r9,[r10]
	cmp	r7,r6
	bgt	.Lj382
.Lj381:
	cmp	r8,r0
	bgt	.Lj379
.Lj378:
.Lj376:
# [656] end;
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj374:
	.long	33947656
.Le18:
	.size	RETROMALINA_$$_BLIT$crc5A667533, .Le18 - RETROMALINA_$$_BLIT$crc5A667533

.section .text.n_retromalina_$$_scrconvert16f$pointer
	.balign 4
.globl	RETROMALINA_$$_SCRCONVERT16F$POINTER
RETROMALINA_$$_SCRCONVERT16F$POINTER:
# [669] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var e located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [670] a:=$2000000; // TODO! a:=0! Get a screen pointer from sys var !
	mov	r0,#33554432
# Rescheduled
# [671] e:=raml^[$18003];
	ldr	r1,.Lj392
	str	r0,[r11, #-52]
# Rescheduled
# Rescheduled
	ldr	r0,[r1]
	ldr	r2,.Lj393
	ldr	r0,[r0, r2]
	str	r0,[r11, #-56]
# [674] stmfd r13!,{r0-r12}   //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [675] ldr r1,a
	ldr	r1,[r11, #-52]
# [676] add r1,#0x1000000
	add	r1,#16777216
# [677] mov r6,r1
	mov	r6,r1
# Rescheduled
# [679] ldr r2,screen
	ldr	r2,[r11, #-48]
# [678] add r6,#1
	add	r6,#1
# [680] mov r12,r2
	mov	r12,r2
# Rescheduled
# [682] ldr r3,a
	ldr	r3,[r11, #-52]
# [681] add r12,#4
	add	r12,#4
# [683] add r3,#0x10000
	add	r3,#65536
# [684] mov r5,r2
	mov	r5,r2
# Rescheduled
# [687] ldr r9,e
	ldr	r9,[r11, #-56]
# [686] add r5,#307200
	add	r5,#307200
# [688] mov r10,r9
	mov	r10,r9
.Lj385:
# [689] p10:            str r9,[r2],#8
	str	r9,[r2], #8
# [690] str r10,[r12],#8
	str	r10,[r12], #8
# [691] str r9,[r2],#8
	str	r9,[r2], #8
# [692] str r10,[r12],#8
	str	r10,[r12], #8
# [693] cmp r2,r5
	cmp	r2,r5
# [694] blt p10
	blt	.Lj385
# [695] mov r0,#1120
	mov	r0,#1120
.Lj386:
# Rescheduled
# [698] ldr r9,e
	ldr	r9,[r11, #-56]
# [697] p11:            add r5,#256
	add	r5,#256
# [699] mov r10,r9
	mov	r10,r9
.Lj387:
# [700] p0:             str r9,[r2],#8
	str	r9,[r2], #8
# [701] str r10,[r12],#8
	str	r10,[r12], #8
# [702] str r9,[r2],#8
	str	r9,[r2], #8
# [703] str r10,[r12],#8
	str	r10,[r12], #8
# [704] cmp r2,r5
	cmp	r2,r5
# [705] blt p0
	blt	.Lj387
# [707] add r5,#7168
	add	r5,#7168
.Lj388:
# [708] p1:             ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [709] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [710] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [711] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [712] str r9,[r2],#8
	str	r9,[r2], #8
# [713] str r10,[r12],#8
	str	r10,[r12], #8
# [714] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [715] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [716] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [717] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [718] str r9,[r2],#8
	str	r9,[r2], #8
# [719] str r10,[r12],#8
	str	r10,[r12], #8
# [720] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [721] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [722] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [723] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [724] str r9,[r2],#8
	str	r9,[r2], #8
# [725] str r10,[r12],#8
	str	r10,[r12], #8
# [726] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [727] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [728] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [729] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [730] str r9,[r2],#8
	str	r9,[r2], #8
# [731] str r10,[r12],#8
	str	r10,[r12], #8
# [732] cmp r2,r5
	cmp	r2,r5
# [733] blt p1
	blt	.Lj388
# Rescheduled
# [736] ldr r9,e
	ldr	r9,[r11, #-56]
# [735] add r5,#256
	add	r5,#256
# [737] mov r10,r9
	mov	r10,r9
.Lj389:
# [738] p002:           str r9,[r2],#8
	str	r9,[r2], #8
# [739] str r10,[r12],#8
	str	r10,[r12], #8
# [740] str r9,[r2],#8
	str	r9,[r2], #8
# [741] str r10,[r12],#8
	str	r10,[r12], #8
# [742] cmp r2,r5
	cmp	r2,r5
# [743] blt p002
	blt	.Lj389
# [744] subs r0,#1
	subs	r0,#1
# [745] bne p11
	bne	.Lj386
# Rescheduled
# [748] ldr r9,e
	ldr	r9,[r11, #-56]
# [747] add r5,#307200
	add	r5,#307200
# [749] mov r10,r9
	mov	r10,r9
.Lj390:
# [750] p12:            str r9,[r2],#8
	str	r9,[r2], #8
# [751] str r10,[r12],#8
	str	r10,[r12], #8
# [752] str r9,[r2],#8
	str	r9,[r2], #8
# [753] str r10,[r12],#8
	str	r10,[r12], #8
# [754] cmp r2,r5
	cmp	r2,r5
# [755] blt p12
	blt	.Lj390
# [756] p999:           ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [760] end;
	ldmea	r11,{r11,r13,r15}
.Lj392:
	.long	U_$RETROMALINA_$$_R1
.Lj393:
	.long	393228
.Le19:
	.size	RETROMALINA_$$_SCRCONVERT16F$POINTER, .Le19 - RETROMALINA_$$_SCRCONVERT16F$POINTER

.section .text.n_retromalina_$$_spritef$pointer
	.balign 4
RETROMALINA_$$_SPRITEF$POINTER:
# [771] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var spritebase located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [772] a:=$2000000;
	mov	r0,#33554432
	str	r0,[r11, #-52]
# [773] spritebase:=$60040;
	mov	r0,#64
	orr	r0,r0,#393216
	str	r0,[r11, #-56]
# [776] stmfd r13!,{r0-r12}     //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [777] mov r12,#0
	mov	r12,#0
# Rescheduled
# Rescheduled
# [779] ldr r0,spritebase
	ldr	r0,[r11, #-56]
# [780] ldr r1,a
	ldr	r1,[r11, #-52]
# [781] add r0,r1
	add	r0,r1
.Lj396:
# [782] p103:          ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [783] mov r2,r1               // sprite 0 position
	mov	r2,r1
# Rescheduled
# [785] ldr r5,p100
	ldr	r5,.Lj397
# [784] mov r3,r1
	mov	r3,r1
# [786] and r2,r5               // x pos
	and	r2,r5
# Rescheduled
# [788] ldr r4,p100+4
	ldr	r4,.Lj397+4
# [787] lsl r2,#2
	lsl	r2,#2
# [789] and r3,r4
	and	r3,r4
# [790] lsr r3,#16              // y pos
	lsr	r3,#16
# [791] cmp r2,#8192
	cmp	r2,#8192
# [792] ble p104
	ble	.Lj398
# [793] add r12,#1
	add	r12,#1
# [794] add r0,#4
	add	r0,#4
# [795] cmp r12,#8
	cmp	r12,#8
# [796] bge p999
	bge	.Lj399
# [797] b p103
	b	.Lj396
.Lj398:
# [799] p104:          ldr r4,p100+8
	ldr	r4,.Lj397+8
# [800] mul r3,r3,r4
	mul	r3,r3,r4
# Rescheduled
# [802] ldr r4,screen
	ldr	r4,[r11, #-48]
# [801] add r3,r2      // sprite pos
	add	r3,r2
# [803] add r3,r4      // pointer to upper left sprite pixel in r3
	add	r3,r4
# [804] ldr r4,p100+12
	ldr	r4,.Lj397+12
# Rescheduled
# [806] ldr r5,a
	ldr	r5,[r11, #-52]
# [805] add r4,r4,r12,lsl #12
	add	r4,r4,r12,lsl #12
# Rescheduled
# [809] ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [807] add r4,r5      //pointer to sprite 0 data
	add	r4,r5
# Rescheduled
# [811] ldr r5,p100
	ldr	r5,.Lj397
# [810] mov r2,r1
	mov	r2,r1
# [812] and r2,r5
	and	r2,r5
# [813] lsr r1,#16
	lsr	r1,#16
# [814] cmp r1,#8
	cmp	r1,#8
# [815] movgt r1,#8
	movgt	r1,#8
# [816] cmp r2,#8
	cmp	r2,#8
# [817] movgt r2,#8
	movgt	r2,#8
# [818] cmp r1,#1
	cmp	r1,#1
# [819] movle r1,#1
	movle	r1,#1
# [820] cmp r2,#1
	cmp	r2,#1
# [821] movle r2,#1
	movle	r2,#1
# [822] mov r7,r2
	mov	r7,r2
# [823] mov r8,#128
	mov	r8,#128
# [824] mul r8,r8,r2
	mul	r8,r8,r2
# [825] mov r9,#32
	mov	r9,#32
# [826] mul r9,r9,r1 //y zoom
	mul	r9,r9,r1
# [827] mov r10,r1
	mov	r10,r1
# [828] mov r6,#32
	mov	r6,#32
.Lj400:
# [829] p101:          ldr r5,[r4],#4
	ldr	r5,[r4], #4
.Lj401:
# [830] p102:          cmp r5,#0
	cmp	r5,#0
# [831] strne r5,[r3],#4
	strne	r5,[r3], #4
# [832] addeq r3,#4
	addeq	r3,#4
# [833] subs r7,#1
	subs	r7,#1
# [834] bne p102
	bne	.Lj401
# [835] mov r7,r2
	mov	r7,r2
# [836] subs r6,#1
	subs	r6,#1
# [837] bne p101
	bne	.Lj400
# [838] add r3,#7680
	add	r3,#7680
# [839] sub r3,r8
	sub	r3,r8
# [840] subs r10,#1
	subs	r10,#1
# [841] subne r4,#128
	subne	r4,#128
# [842] addeq r10,r1
	addeq	r10,r1
# [843] mov r6,#32
	mov	r6,#32
# [844] subs r9,#1
	subs	r9,#1
# [845] bne p101
	bne	.Lj400
# [846] add r12,#1
	add	r12,#1
# [847] cmp r12,#8
	cmp	r12,#8
# [848] bne p103
	bne	.Lj396
# [849] b p999
	b	.Lj399
.Lj397:
	.long	65535
	.long	-65536
	.long	7680
	.long	335872
.Lj399:
# [856] p999:          ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [858] end;
	ldmea	r11,{r11,r13,r15}
.Le20:
	.size	RETROMALINA_$$_SPRITEF$POINTER, .Le20 - RETROMALINA_$$_SPRITEF$POINTER

.section .text.n_retromalina_$$_setataripallette$longint
	.balign 4
.globl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
RETROMALINA_$$_SETATARIPALLETTE$LONGINT:
# [864] begin
	stmfd	r13!,{r4,r5,r14}
# Var bank located in register r4
# Var fh located in register r0
	mov	r4,r0
# Rescheduled
# [865] fh:=fileopen('C:\retro\ataripalette.def',$40);
	ldr	r0,.Lj404
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
# Var fh located in register r5
# Rescheduled
# Peephole FoldShiftProcess done
# Rescheduled
# [866] fileread(fh,Pinteger($2010000+1024*bank)^,1024);
	ldr	r1,.Lj405
	mov	r5,r0
# [868] end;
	add	r1,r1,r4,lsl #10
# Var fh located in register r5
	mov	r0,r5
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [867] fileclose(fh);
	mov	r0,r5
# Var fh located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	ldmfd	r13!,{r4,r5,r15}
.Lj404:
	.long	.Ld4
.Lj405:
	.long	33619968
.Le21:
	.size	RETROMALINA_$$_SETATARIPALLETTE$LONGINT, .Le21 - RETROMALINA_$$_SETATARIPALLETTE$LONGINT

.section .text.n_retromalina_$$_sethidecolor$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT:
# Var c located in register r0
# Var bank located in register r1
# Var mask located in register r2
# [872] begin
# Rescheduled
# [873] raml^[$4000+256*bank+c]+=(mask shl 24);
	ldr	r3,.Lj408
	mov	r12,r2,lsl #24
	ldr	r2,[r3]
	mov	r1,r1,lsl #8
	add	r1,r1,#16384
	add	r0,r0,r1
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r0, lsl #2]
# Rescheduled
	ldr	r2,.Lj408
	add	r3,r1,r12
	ldr	r1,[r2]
# Peephole FoldShiftLdrStr done
	str	r3,[r1, r0, lsl #2]
# [874] end;
	bx	r14
.Lj408:
	.long	U_$RETROMALINA_$$_R1
.Le22:
	.size	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT, .Le22 - RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_cls$longint
	.balign 4
.globl	RETROMALINA_$$_CLS$LONGINT
RETROMALINA_$$_CLS$LONGINT:
# Var c located in register r0
# Var c2 located in register r0
# Var i located in register r3
# Var l located in register r1
# Var c3 located in register r0
# [881] begin
# Var c located in register r0
# [882] c:=c mod 256;
	mov	r1,r0,asr #31
	eor	r0,r0,r1
	sub	r0,r0,r1
	and	r0,r0,#255
	eor	r0,r1,r0
	sub	r0,r0,r1
# Var c located in register r0
# Rescheduled
# [883] l:=(lpeek($2060020)*lpeek($2060024)) div 4 ;
	ldr	r1,.Lj412
	bic	r1,r1,#3
# Rescheduled
	ldr	r2,.Lj413
	ldr	r3,[r1]
	bic	r1,r2,#3
	ldr	r1,[r1]
	mul	r1,r1,r3
	mov	r1,r1,lsr #2
# Var l located in register r1
# Peephole FoldShiftProcess done
# [887] end;
	add	r2,r0,r0,lsl #8
# Peephole FoldShiftProcess done
	add	r2,r2,r0,lsl #16
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #24
# Var c3 located in register r0
# Var l located in register r1
# Var i located in register r3
# [885] for i:=0 to l do lpoke($3000000+4*i,c3); // TODO Use screen pointer !!!!
	mov	r3,#0
	cmp	r1,r3
	blt	.Lj415
	sub	r3,r3,#1
	.balign 4
.Lj416:
	add	r3,r3,#1
	mov	r2,r3,lsl #2
	sub	r2,r2,#-50331648
	bic	r2,r2,#3
	str	r0,[r2]
	cmp	r1,r3
	bgt	.Lj416
.Lj415:
	bx	r14
.Lj412:
	.long	33947680
.Lj413:
	.long	33947684
.Le23:
	.size	RETROMALINA_$$_CLS$LONGINT, .Le23 - RETROMALINA_$$_CLS$LONGINT

.section .text.n_retromalina_$$_putpixel$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT:
# Var x located in register r0
# Var y located in register r1
# Var color located in register r2
# Var adr located in register r0
# [899] begin
# [900] adr:=$3000000+x+1792*y; if adr<$3FFFFFF then poke(adr,color);
	mov	r3,#1792
	mul	r1,r1,r3
	sub	r0,r0,#-50331648
	add	r0,r0,r1
# Var adr located in register r0
	mvn	r1,#-67108864
	cmp	r0,r1
# Peephole AndStrb2Strb done
	strltb	r2,[r0]
# [901] end;
	bx	r14
.Le24:
	.size	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT, .Le24 - RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [917] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#76
# Var x located at r11-48, size=OS_S32
# Var y located at r11-52, size=OS_S32
# Var l located at r11-56, size=OS_S32
# Var h located at r11-60, size=OS_S32
# Var c located at r11-64, size=OS_S32
# Var adr located at r11-68, size=OS_S32
# Var i located at r11-72, size=OS_S32
# Var j located at r11-76, size=OS_S32
	str	r0,[r11, #-48]
	str	r1,[r11, #-52]
	str	r2,[r11, #-56]
# Rescheduled
	ldr	r0,[r11, #4]
	str	r3,[r11, #-60]
	str	r0,[r11, #-64]
# [919] if x<0 then x:=0;
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-48]
# [920] if x>1792 then x:=1792;
	ldr	r0,[r11, #-48]
	cmp	r0,#1792
	movgt	r0,#1792
	strgt	r0,[r11, #-48]
# [921] if y<0 then y:=0;
	ldr	r0,[r11, #-52]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-52]
# [922] if y>1120 then y:=1120;
	ldr	r0,[r11, #-52]
	cmp	r0,#1120
	movgt	r0,#1120
	strgt	r0,[r11, #-52]
# Rescheduled
# Rescheduled
# [923] if x+l>1792 then l:=1792-x-1;
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-56]
	add	r0,r1,r0
	cmp	r0,#1792
	ble	.Lj433
	ldr	r0,[r11, #-48]
	mov	r1,#1792
	sub	r0,r1,r0
	sub	r0,r0,#1
	str	r0,[r11, #-56]
.Lj433:
# Rescheduled
# Rescheduled
# [924] if y+h>1120 then h:=1120-y-1 ;
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	cmp	r0,#1120
	ble	.Lj435
	ldr	r1,[r11, #-52]
	mov	r0,#1120
	sub	r0,r0,r1
	sub	r0,r0,#1
	str	r0,[r11, #-60]
.Lj435:
# Rescheduled
# Rescheduled
# [925] for j:=y to y+h-1 do begin
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	sub	r4,r0,#1
# Rescheduled
	ldr	r0,[r11, #-52]
	str	r0,[r11, #-76]
# Peephole StrLdr2StrMov 1 done
	cmp	r4,r0
	blt	.Lj437
	ldr	r0,[r11, #-76]
	sub	r0,r0,#1
	str	r0,[r11, #-76]
	.balign 4
.Lj438:
	ldr	r0,[r11, #-76]
	add	r0,r0,#1
	str	r0,[r11, #-76]
# [932] stmfd r13!,{r0-r2}     //Push registers
	stmfd	r13!,{r0,r1,r2}
# Rescheduled
# [934] ldr r1,j
	ldr	r1,[r11, #-76]
# [933] mov r0,#1792
	mov	r0,#1792
# [935] mul r0,r0,r1
	mul	r0,r0,r1
# [936] add r0,#0x3000000      //Todo - screen pointer!
	add	r0,#50331648
# Rescheduled
# [938] ldr r2,x
	ldr	r2,[r11, #-48]
# [937] ldr r1,c
	ldr	r1,[r11, #-64]
# [939] add r0,r2
	add	r0,r2
# [940] ldr r2,l
	ldr	r2,[r11, #-56]
.Lj423:
# [941] p1: strb r1,[r0]
	strb	r1,[r0]
# [942] add r0,#1
	add	r0,#1
# [943] subs r2,#1
	subs	r2,#1
# [944] bne p1
	bne	.Lj423
# [945] ldmfd r13!,{r0-r2}
	ldmfd	r13!,{r0,r1,r2}
	ldr	r0,[r11, #-76]
	cmp	r4,r0
	bgt	.Lj438
.Lj437:
# [950] end;
	ldmea	r11,{r4,r11,r13,r15}
.Le25:
	.size	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le25 - RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box2$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [962] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#48
# Var x1 located in register r0
# Var y1 located in register r1
# Var x2 located in register r2
# Var y2 located in register r3
# Var color located in register r12
	ldr	r12,[r11, #4]
# [963] if (x1<x2) and (y1<y2) then
	cmp	r0,r2
	bge	.Lj442
	cmp	r1,r3
	bge	.Lj442
# [964] box(x1,y1,x2-x1+1, y2-y1+1,color);
	str	r12,[r13]
	sub	r3,r3,r1
	add	r3,r3,#1
	sub	r2,r2,r0
	add	r2,r2,#1
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj442:
# [965] end;
	ldmea	r11,{r11,r13,r15}
.Le26:
	.size	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le26 - RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_putchar$longint$longint$char$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
# [982] begin
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r14}
# Var x located in register r4
# Var y located in register r5
# Var ch located in register r2
# Var col located in register r6
# Var i located in register r10
# Var j located in register r9
# Var start located in register r7
# Var b located in register r8
	mov	r4,r0
	mov	r5,r1
	mov	r6,r3
# [983] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r7,r0,#33554432
	add	r7,r7,#327680
# Var start located in register r7
# Var i located in register r10
# [984] for i:=0 to 15 do
	mov	r10,#0
	sub	r10,r10,#1
	.balign 4
.Lj448:
	add	r10,r10,#1
# [986] b:=peek(start+i);
	add	r0,r10,r7
	ldrb	r8,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [987] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj451:
	add	r9,r9,#1
# [989] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [993] end;
	ands	r0,r8,r0,lsl r9
# [990] putpixel(x+j,y+i,col);
	addne	r1,r10,r5
	addne	r0,r9,r4
	movne	r2,r6
	blne	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	cmp	r9,#7
	blt	.Lj451
	cmp	r10,#15
	blt	.Lj448
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r15}
.Le27:
	.size	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT, .Le27 - RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT

.section .text.n_retromalina_$$_putcharz$longint$longint$char$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-68 and r11-44
# [1002] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#68
# Var x located in register r0
# Var y located in register r0
# Var ch located in register r2
# Var col located in register r0
# Var xz located in register r0
# Var yz located in register r0
# Var i located in register r0
# Var j located in register r9
# Var k located in register r7
# Var l located in register r4
# Var start located in register r10
# Var b located in register r8
	str	r0,[r11, #-60]
	str	r1,[r11, #-56]
# Rescheduled
	ldr	r0,[r11, #4]
	str	r3,[r11, #-52]
	str	r0,[r11, #-64]
	ldr	r0,[r11, #8]
	str	r0,[r11, #-68]
# [1003] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r0,r0,#33554432
	add	r10,r0,#327680
# Var start located in register r10
# Peephole DataMov2Data removed superfluous mov
# Var i located in register r0
# [1004] for i:=0 to 15 do
	mov	r0,#0
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-48]
	.balign 4
.Lj458:
	ldr	r0,[r11, #-48]
	add	r0,r0,#1
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 2 done
# [1006] b:=peek(start+i);
	mov	r1,r0
	add	r0,r1,r10
	ldrb	r8,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [1007] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj461:
	add	r9,r9,#1
# [1009] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [1015] end;
	ands	r0,r8,r0,lsl r9
	beq	.Lj463
# [1010] for k:=0 to yz-1 do
	ldr	r0,[r11, #-68]
	sub	r6,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r6,r7
	blt	.Lj465
	sub	r7,r7,#1
	.balign 4
.Lj466:
# Rescheduled
# [1011] for l:=0 to xz-1 do
	ldr	r0,[r11, #-64]
	add	r7,r7,#1
	sub	r5,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r4,#0
	cmp	r5,r4
	blt	.Lj468
	sub	r4,r4,#1
	.balign 4
.Lj469:
	add	r4,r4,#1
# Rescheduled
# [1012] putpixel(x+j*xz+l,y+i*yz+k,col);
	ldr	r1,[r11, #-48]
	ldr	r0,[r11, #-68]
	mul	r2,r0,r1
	ldr	r1,[r11, #-56]
	add	r0,r1,r2
	add	r1,r7,r0
# Peephole DataMov2Data removed superfluous mov
	ldr	r0,[r11, #-64]
# Rescheduled
	ldr	r2,[r11, #-60]
	mul	r3,r0,r9
	add	r0,r2,r3
	add	r0,r4,r0
	ldr	r2,[r11, #-52]
	bl	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	cmp	r5,r4
	bgt	.Lj469
.Lj468:
	cmp	r6,r7
	bgt	.Lj466
.Lj465:
.Lj463:
	cmp	r9,#7
	blt	.Lj461
	ldr	r0,[r11, #-48]
	cmp	r0,#15
	blt	.Lj458
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le28:
	.size	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT, .Le28 - RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_outtextxy$longint$longint$ansistring$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
# Temps allocated between r13+4 and r13+124
# [1021] begin
	stmfd	r13!,{r4,r5,r6,r7,r8,r14}
# Peephole Add/Sub to Preindexed done
# Var x located in register r4
# Var y located in register r5
# Var c located in register r6
# Var i located in register r8
# Var t located at r13+0, size=OS_32
	mov	r4,r0
	mov	r5,r1
	str	r2,[r13, #-124]!
	mov	r6,r3
	ldr	r0,[r13]
	bl	fpc_ansistr_incr_ref
# [1022] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	add	r2,r13,#4
	add	r1,r13,#16
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #120]
	cmp	r0,#0
	bne	.Lj472
	ldr	r7,[r13]
	cmp	r7,#0
	ldrne	r7,[r7, #-4]
	mov	r8,#1
	cmp	r7,r8
	blt	.Lj476
	sub	r8,r8,#1
	.balign 4
.Lj477:
	add	r8,r8,#1
# Peephole FoldShiftProcess done
# [1023] end;
	add	r0,r4,r8,lsl #3
# Rescheduled
# Rescheduled
	ldr	r1,[r13]
	sub	r0,r0,#8
	sub	r1,r1,#1
	ldrb	r2,[r1, r8]
	mov	r3,r6
	mov	r1,r5
	bl	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
	cmp	r7,r8
	bgt	.Lj477
.Lj476:
.Lj472:
	bl	fpc_popaddrstack
	mov	r0,r13
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r13, #120]
	cmp	r0,#0
	blne	fpc_reraise
	add	r13,r13,#124
	ldmfd	r13!,{r4,r5,r6,r7,r8,r15}
.Le29:
	.size	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT, .Le29 - RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT

.section .text.n_retromalina_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-168 and r11-48
# [1029] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#176
# Var x located in register r10
# Var y located in register r9
# Var c located in register r4
# Var xz located in register r5
# Var yz located in register r6
# Var i located in register r7
# Var t located at r11-48, size=OS_32
	mov	r10,r0
	mov	r9,r1
	str	r2,[r11, #-48]
	mov	r4,r3
	ldr	r5,[r11, #4]
	ldr	r6,[r11, #8]
# Peephole StrLdr2StrMov 2 done
	mov	r0,r2
	bl	fpc_ansistr_incr_ref
# [1030] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	sub	r2,r11,#60
	sub	r1,r11,#164
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-168]
	cmp	r0,#0
	bne	.Lj480
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r8,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r8,r7
	blt	.Lj484
	sub	r7,r7,#1
	.balign 4
.Lj485:
	add	r7,r7,#1
	str	r6,[r13, #4]
	str	r5,[r13]
	mov	r0,r5,lsl #3
# MulAdd2MLA done
	mla	r0,r7,r0,r10
	ldr	r1,[r11, #-48]
	add	r2,r7,#1
	sub	r1,r1,#1
	ldrb	r2,[r1, r2]
	mov	r3,r4
	mov	r1,r9
	bl	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
	cmp	r8,r7
	bgt	.Lj485
.Lj484:
.Lj480:
	bl	fpc_popaddrstack
# [1031] end;
	sub	r0,r11,#48
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-168]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le30:
	.size	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT, .Le30 - RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_scrollup
	.balign 4
.globl	RETROMALINA_$$_SCROLLUP
RETROMALINA_$$_SCROLLUP:
# Var i located in register r0
# [1037] begin
# [1040] end;
	bx	r14
.Le31:
	.size	RETROMALINA_$$_SCROLLUP, .Le31 - RETROMALINA_$$_SCROLLUP

.section .text.n_retromalina_$$_sid$longint$$tsample
	.balign 4
.globl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
RETROMALINA_$$_SID$LONGINT$$TSAMPLE:
# Temps allocated between r11-172 and r11-168
# [1120] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#172
# Var mode located at r11-48, size=OS_S32
# Var $result located at r11-52, size=OS_32
# Var i located at r11-56, size=OS_S32
# Var sid1 located at r11-60, size=OS_S32
# Var sid1l located at r11-64, size=OS_S32
# Var ind located at r11-68, size=OS_S32
# Var ttt located at r11-76, size=OS_S64
# Var pp1 located at r11-80, size=OS_8
# Var pp2 located at r11-84, size=OS_8
# Var pp3 located at r11-88, size=OS_8
# Var wv1ii located at r11-96, size=OS_S64
# Var wv2ii located at r11-104, size=OS_S64
# Var wv3ii located at r11-112, size=OS_S64
# Var wv1iii located at r11-116, size=OS_S32
# Var wv2iii located at r11-120, size=OS_S32
# Var wv3iii located at r11-124, size=OS_S32
# Var fii located at r11-128, size=OS_S32
# Var fi2i located at r11-132, size=OS_S32
# Var fi3i located at r11-136, size=OS_S32
# Var fri located at r11-140, size=OS_S32
# Var ffi located at r11-144, size=OS_S32
# Var pa1i located at r11-148, size=OS_S32
# Var pa2i located at r11-152, size=OS_S32
# Var pa3i located at r11-156, size=OS_S32
# Var vol located at r11-160, size=OS_S32
# Var fll located at r11-164, size=OS_S32
# Var sidptr located at r11-168, size=OS_32
	str	r0,[r11, #-52]
# Rescheduled
# Peephole StrLdr2StrMov 1 done
# Rescheduled
# [1121] sidptr:=@siddata;
	ldr	r0,.Lj538
	str	r1,[r11, #-48]
	str	r0,[r11, #-168]
# [1122] if mode=1 then  // get regs
	cmp	r1,#1
	bne	.Lj540
# [1131] siddata[$56]:=peek($2070003);
	ldr	r0,.Lj541
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
	ldr	r2,.Lj542
	ldrb	r1,[r0]
# Rescheduled
# [1132] siddata[$57]:=peek($2070004);
	ldr	r0,.Lj543
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
	ldr	r2,.Lj544
	ldrb	r1,[r0]
# Rescheduled
# [1133] siddata[$58]:=peek($2070005);
	ldr	r0,.Lj545
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
# Rescheduled
	ldrb	r0,[r0]
	ldr	r1,.Lj546
	str	r0,[r1]
# [1134] siddata[0]:=round(1.0263*(16*peek($200D400)+4096*peek($200d401))); //freq1
	mov	r0,#33554432
	orr	r0,r0,#54272
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj547
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
# [2106] end;
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj548
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj538
# Rescheduled
# [1135] siddata[$10]:=round(1.0263*(16*peek($200d407)+4096*peek($200d408)));
	ldr	r1,.Lj550
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj551
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj552
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj553
# Rescheduled
# [1136] siddata[$20]:=round(1.0263*(16*peek($200d40e)+4096*peek($200d40f)));
	ldr	r1,.Lj554
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj555
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj556
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj557
# Rescheduled
# [1138] siddata[1]:=peek($200d404) and 1;   // gate1
	ldr	r1,.Lj558
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj559
	and	r0,r0,#1
# Rescheduled
# [1139] siddata[2]:=peek($200d404) and 4;  //ring1
	ldr	r1,.Lj558
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj561
	and	r0,r0,#4
# Rescheduled
# [1140] siddata[3]:=peek($200d404) and 8;  // test1
	ldr	r1,.Lj558
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj563
	and	r0,r0,#8
# Rescheduled
# [1141] siddata[4]:=((peek($200d404) and 2) shr 1)-1; //sync1
	ldr	r1,.Lj558
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj565
	sub	r0,r0,#1
# Rescheduled
# [1143] siddata[5]:=peek($200d405) and  $F;   //sd1, 5
	ldr	r1,.Lj566
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj567
	and	r0,r0,#15
# Rescheduled
# [1144] siddata[6]:=peek($200d405) shr 4;     ///sa1, 6
	ldr	r1,.Lj566
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj569
	mov	r0,r0,lsr #4
# Rescheduled
# [1145] siddata[7]:=peek($200d406)and $F;     //sr1 //7
	ldr	r1,.Lj570
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj571
	and	r1,r0,#15
# Rescheduled
# [1146] siddata[$0d]:=(peek($200d406) and $F0) shl 22;      //0d,sussvol1
	ldr	r0,.Lj570
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj573
	mov	r0,r0,lsl #22
# Rescheduled
# [1147] siddata[$53]:=((peek($200d402)+256*peek($200d403)) and $FFF);//
	ldr	r1,.Lj574
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj575
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r0,r0,lsl #20
# Rescheduled
	ldr	r2,.Lj576
	mov	r0,r0,lsr #20
# Rescheduled
# [1149] siddata[$11]:=peek($200d40b) and 1;
	ldr	r1,.Lj577
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj578
	and	r0,r0,#1
# Rescheduled
# [1150] siddata[$12]:=peek($200d40b) and 4;
	ldr	r1,.Lj577
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj580
	and	r0,r0,#4
# Rescheduled
# [1151] siddata[$13]:=peek($200d40b) and 8;
	ldr	r1,.Lj577
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj582
	and	r0,r0,#8
# Rescheduled
# [1152] siddata[$14]:=((peek($200d40b) and 2) shr 1)-1;
	ldr	r1,.Lj577
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj584
	sub	r0,r0,#1
# Rescheduled
# [1153] siddata[$15]:=peek($200d40c) and  $F;
	ldr	r1,.Lj585
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj586
	and	r0,r0,#15
# Rescheduled
# [1154] siddata[$16]:=peek($200d40c) shr 4;
	ldr	r1,.Lj585
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj588
	mov	r0,r0,lsr #4
# Rescheduled
# [1155] siddata[$17]:=peek($200d40d)and $F;
	ldr	r1,.Lj589
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj590
	and	r0,r0,#15
# Rescheduled
# [1156] siddata[$1d]:=(peek($200d40d) and $F0) shl 22;
	ldr	r1,.Lj589
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj592
	mov	r0,r0,lsl #22
# Rescheduled
# [1157] siddata[$54]:=((peek($200d409)+256*peek($200d40a)) and $FFF);
	ldr	r1,.Lj593
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj594
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r2,r0,lsl #20
# Rescheduled
	ldr	r1,.Lj595
	mov	r2,r2,lsr #20
# Rescheduled
# [1159] siddata[$21]:=peek($200d412) and 1;
	ldr	r0,.Lj596
	str	r2,[r1]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj597
	and	r1,r0,#1
# Rescheduled
# [1160] siddata[$22]:=peek($200d412) and 4;
	ldr	r0,.Lj596
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj599
	and	r1,r0,#4
# Rescheduled
# [1161] siddata[$23]:=peek($200d412) and 8;
	ldr	r0,.Lj596
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj601
	and	r0,r0,#8
# Rescheduled
# [1162] siddata[$24]:=((peek($200d412) and 2) shr 1)-1;
	ldr	r1,.Lj596
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj603
	sub	r0,r0,#1
# Rescheduled
# [1163] siddata[$25]:=peek($200d413) and  $F;
	ldr	r1,.Lj604
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj605
	and	r0,r0,#15
# Rescheduled
# [1164] siddata[$26]:=peek($200d413) shr 4;
	ldr	r1,.Lj604
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj607
	mov	r1,r0,lsr #4
# Rescheduled
# [1165] siddata[$27]:=peek($200d414)and $F;
	ldr	r0,.Lj608
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj609
	and	r0,r0,#15
# Rescheduled
# [1166] siddata[$2d]:=(peek($200d414) and $F0) shl 22;
	ldr	r1,.Lj608
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj611
	mov	r0,r0,lsl #22
# Rescheduled
# [1167] siddata[$55]:=((peek($200d410)+256*peek($200d411)) and $FFF);
	ldr	r1,.Lj612
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj613
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
	b	.Lj662
.Lj538:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj541:
	.long	34013187
.Lj542:
	.long	U_$RETROMALINA_$$_SIDDATA+344
.Lj543:
	.long	34013188
.Lj544:
	.long	U_$RETROMALINA_$$_SIDDATA+348
.Lj545:
	.long	34013189
.Lj546:
	.long	U_$RETROMALINA_$$_SIDDATA+352
.Lj547:
	.long	33608705
.Lj548:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj550:
	.long	33608711
.Lj551:
	.long	33608712
.Lj552:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj553:
	.long	U_$RETROMALINA_$$_SIDDATA+64
.Lj554:
	.long	33608718
.Lj555:
	.long	33608719
.Lj556:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj557:
	.long	U_$RETROMALINA_$$_SIDDATA+128
.Lj558:
	.long	33608708
.Lj559:
	.long	U_$RETROMALINA_$$_SIDDATA+4
.Lj561:
	.long	U_$RETROMALINA_$$_SIDDATA+8
.Lj563:
	.long	U_$RETROMALINA_$$_SIDDATA+12
.Lj565:
	.long	U_$RETROMALINA_$$_SIDDATA+16
.Lj566:
	.long	33608709
.Lj567:
	.long	U_$RETROMALINA_$$_SIDDATA+20
.Lj569:
	.long	U_$RETROMALINA_$$_SIDDATA+24
.Lj570:
	.long	33608710
.Lj571:
	.long	U_$RETROMALINA_$$_SIDDATA+28
.Lj573:
	.long	U_$RETROMALINA_$$_SIDDATA+52
.Lj574:
	.long	33608707
.Lj575:
	.long	33608706
.Lj576:
	.long	U_$RETROMALINA_$$_SIDDATA+332
.Lj577:
	.long	33608715
.Lj578:
	.long	U_$RETROMALINA_$$_SIDDATA+68
.Lj580:
	.long	U_$RETROMALINA_$$_SIDDATA+72
.Lj582:
	.long	U_$RETROMALINA_$$_SIDDATA+76
.Lj584:
	.long	U_$RETROMALINA_$$_SIDDATA+80
.Lj585:
	.long	33608716
.Lj586:
	.long	U_$RETROMALINA_$$_SIDDATA+84
.Lj588:
	.long	U_$RETROMALINA_$$_SIDDATA+88
.Lj589:
	.long	33608717
.Lj590:
	.long	U_$RETROMALINA_$$_SIDDATA+92
.Lj592:
	.long	U_$RETROMALINA_$$_SIDDATA+116
.Lj593:
	.long	33608714
.Lj594:
	.long	33608713
.Lj595:
	.long	U_$RETROMALINA_$$_SIDDATA+336
.Lj596:
	.long	33608722
.Lj597:
	.long	U_$RETROMALINA_$$_SIDDATA+132
.Lj599:
	.long	U_$RETROMALINA_$$_SIDDATA+136
.Lj601:
	.long	U_$RETROMALINA_$$_SIDDATA+140
.Lj603:
	.long	U_$RETROMALINA_$$_SIDDATA+144
.Lj604:
	.long	33608723
.Lj605:
	.long	U_$RETROMALINA_$$_SIDDATA+148
.Lj607:
	.long	U_$RETROMALINA_$$_SIDDATA+152
.Lj608:
	.long	33608724
.Lj609:
	.long	U_$RETROMALINA_$$_SIDDATA+156
.Lj611:
	.long	U_$RETROMALINA_$$_SIDDATA+180
.Lj612:
	.long	33608721
.Lj613:
	.long	33608720
.Lj662:
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r1,r0,lsl #20
# Rescheduled
	ldr	r0,.Lj614
	mov	r1,r1,lsr #20
# Rescheduled
# [1172] ff:=(peek($200d416) shl 3)+(peek($200d415) and 7);
	ldr	r2,.Lj615
	str	r1,[r0]
	str	r2,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r2]
# Rescheduled
	ldr	r1,.Lj616
	and	r3,r0,#7
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r2,.Lj617
	add	r1,r3,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj617
	str	r1,[r2]
	ldr	r0,[r0]
# [1173] siddata[$6E]:=(ff shl 1)+(ff shl 2)+32;
	mov	r1,r0,lsl #1
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #2
# Rescheduled
	ldr	r2,.Lj619
	add	r0,r0,#32
# Rescheduled
# [1175] siddata[$59]:=(peek($200d417) and 1); //filter 1
	ldr	r1,.Lj620
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj621
	and	r0,r0,#1
# Rescheduled
# [1176] siddata[$5a]:=(peek($200d417) and 2);
	ldr	r1,.Lj620
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj623
	and	r0,r0,#2
# Rescheduled
# [1177] siddata[$5B]:=(peek($200d417) and 4);
	ldr	r1,.Lj620
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj625
	and	r0,r0,#4
# Rescheduled
# [1178] siddata[$6D]:=(peek($200d418) and $70) shr 4;   // filter output switch
	ldr	r1,.Lj626
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#112
# Rescheduled
	ldr	r2,.Lj627
	mov	r0,r0,lsr #4
# Rescheduled
# [1182] siddata[$6F]:=round(65536.0*(0.5+(0.5/(1+(peek($200d416) shr 4)))));
	ldr	r1,.Lj616
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	mov	r0,r0,lsr #4
	add	r0,r0,#1
	vmov	s0,r0
	vcvt.f32.u32	s0,s0
	vldr	s2,.Lj631
	vdiv.f32	s0,s2,s0
	vldr	s2,.Lj629
	vadd.f32	s0,s2,s0
	vldr	s2,.Lj628
	vmul.f32	s0,s2,s0
	vcvt.f64.f32	d0,s0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj632
# Rescheduled
# [1184] siddata[$70]:=(peek($200d418) and 15); //volume
	ldr	r1,.Lj626
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj634
	and	r0,r0,#15
# Rescheduled
# [1186] siddata[$50]:=peek($200d404) shr 4;
	ldr	r1,.Lj635
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj636
	mov	r0,r0,lsr #4
# Rescheduled
# [1187] siddata[$51]:=peek($200d40b) shr 4;
	ldr	r1,.Lj637
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj638
	mov	r0,r0,lsr #4
# Rescheduled
# [1188] siddata[$52]:=peek($200d412) shr 4; //waveforms
	ldr	r1,.Lj639
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj640
	mov	r0,r0,lsr #4
	str	r0,[r1]
.Lj540:
# [1196] stmfd r13!,{r0-r12}
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [1198] ldr   r7, sidptr
	ldr	r7,[r11, #-168]
# [1199] mov   r0,#0
	mov	r0,#0
# [1200] str   r0,[r7,#0x1a8] //inner loop counter
	str	r0,[r7, #424]
# [1201] str   r0,[r7,#0x1ac] //output
	str	r0,[r7, #428]
# Rescheduled
# [1204] ldr   r6,[r7,#4]
	ldr	r6,[r7, #4]
# [1202] str   r0,[r7,#0x1b0] //output
	str	r0,[r7, #432]
# [1205] cmp   r6,#0
	cmp	r6,#0
# [1206] beq   p101
	beq	.Lj490
# [1207] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1208] mov   r1,r0
	mov	r1,r0
# [1209] cmp   r1,#0
	cmp	r1,#0
# [1210] moveq r0,#1
	moveq	r0,#1
# [1211] cmp   r1,#4
	cmp	r1,#4
# [1212] moveq r0,#1
	moveq	r0,#1
# [1213] b     p102
	b	.Lj491
.Lj490:
# [1215] p101:          mov   r0,#4
	mov	r0,#4
.Lj491:
# [1216] p102:          str   r0,[r7,#0x2C]
	str	r0,[r7, #44]
# [1218] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1219] cmp   r0,#3
	cmp	r0,#3
# [1220] ldreq   r1,[r7,#0x34]
	ldreq	r1,[r7, #52]
# [1221] streq   r1,[r7,#0x30]
	streq	r1,[r7, #48]
# [1222] beq     p103
	beq	.Lj492
# [1224] p107:          cmp   r0,#1
	cmp	r0,#1
# [1225] bne   p104
	bne	.Lj494
# Rescheduled
# [1227] ldr   r2,[r7,#0x18] //sa1
	ldr	r2,[r7, #24]
# [1226] ldr   r1,[r7,#0x30] //adsrvol1
	ldr	r1,[r7, #48]
# [1228] add   r2,#0x40
	add	r2,#64
# [1229] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1230] add   r1,r6
	add	r1,r6
# [1231] str   r1,[r7,#0x30]
	str	r1,[r7, #48]
# [1232] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1233] blt   p103
	blt	.Lj492
# [1234] mov   r0,#2
	mov	r0,#2
# [1235] str   r0,[r7,#0x2c]
	str	r0,[r7, #44]
# [1236] b     p103
	b	.Lj492
.Lj494:
# [1238] p104:          cmp   r0,#2
	cmp	r0,#2
# [1239] bne   p105
	bne	.Lj495
# Rescheduled
# [1241] ldr   r2,[r7,#0x14] //sd1
	ldr	r2,[r7, #20]
# [1240] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1242] add   r2,#0x30
	add	r2,#48
# [1243] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1244] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1245] lsr   r4,#30
	lsr	r4,#30
# [1246] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1248] ldr   r1,[r7,#0x34]
	ldr	r1,[r7, #52]
# [1247] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1249] cmp   r4,r1
	cmp	r4,r1
# [1250] movlt r0,#3
	movlt	r0,#3
# [1251] strlt r0,[r7,#0x2c]
	strlt	r0,[r7, #44]
# [1252] b     p103
	b	.Lj492
.Lj495:
# [1254] p105:          cmp   r0,#4
	cmp	r0,#4
# [1255] bne   p106
	bne	.Lj496
# Rescheduled
# [1257] ldr   r2,[r7,#0x1c] //sr1
	ldr	r2,[r7, #28]
# [1256] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1258] add   r2,#0x30
	add	r2,#48
# [1259] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1260] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1261] lsr   r4,#30
	lsr	r4,#30
# [1262] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1263] cmp   r4,#0x10000
	cmp	r4,#65536
# [1264] movlt r4,#0
	movlt	r4,#0
# [1265] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1266] strlt r4,[r7,#0x2c]
	strlt	r4,[r7, #44]
# [1267] b     p103
	b	.Lj492
.Lj496:
# [1269] p106:          mov   r0,#0
	mov	r0,#0
# [1270] str   r0,[r7,#0x30]
	str	r0,[r7, #48]
.Lj492:
# [1274] p103:          ldr   r6,[r7,#0x44]
	ldr	r6,[r7, #68]
# [1275] cmp   r6,#0
	cmp	r6,#0
# [1276] beq   p111
	beq	.Lj497
# [1277] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1278] mov   r1,r0
	mov	r1,r0
# [1279] cmp   r1,#0
	cmp	r1,#0
# [1280] moveq r0,#1
	moveq	r0,#1
# [1281] cmp   r1,#4
	cmp	r1,#4
# [1282] moveq r0,#1
	moveq	r0,#1
# [1283] b     p112
	b	.Lj498
.Lj497:
# [1285] p111:          mov   r0,#4
	mov	r0,#4
.Lj498:
# [1286] p112:          str   r0,[r7,#0x6C]
	str	r0,[r7, #108]
# [1288] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1289] cmp   r0,#3
	cmp	r0,#3
# [1290] ldreq   r1,[r7,#0x74]
	ldreq	r1,[r7, #116]
# [1291] streq   r1,[r7,#0x70]
	streq	r1,[r7, #112]
# [1292] beq     p113
	beq	.Lj499
# [1294] p117:          cmp   r0,#1
	cmp	r0,#1
# [1295] bne   p114
	bne	.Lj501
# Rescheduled
# [1297] ldr   r2,[r7,#0x58] //sa1
	ldr	r2,[r7, #88]
# [1296] ldr   r1,[r7,#0x70] //adsrvol1
	ldr	r1,[r7, #112]
# [1298] add   r2,#0x40
	add	r2,#64
# [1299] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1300] add   r1,r6
	add	r1,r6
# [1301] str   r1,[r7,#0x70]
	str	r1,[r7, #112]
# [1302] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1303] blt   p113
	blt	.Lj499
# [1304] mov   r0,#2
	mov	r0,#2
# [1305] str   r0,[r7,#0x6c]
	str	r0,[r7, #108]
# [1306] b     p113
	b	.Lj499
.Lj501:
# [1308] p114:          cmp   r0,#2
	cmp	r0,#2
# [1309] bne   p115
	bne	.Lj502
# Rescheduled
# [1311] ldr   r2,[r7,#0x54] //sd1
	ldr	r2,[r7, #84]
# [1310] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1312] add   r2,#0x30
	add	r2,#48
# [1313] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1314] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1315] lsr   r4,#30
	lsr	r4,#30
# [1316] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1318] ldr   r1,[r7,#0x74]
	ldr	r1,[r7, #116]
# [1317] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1319] cmp   r4,r1
	cmp	r4,r1
# [1320] movlt r0,#3
	movlt	r0,#3
# [1321] strlt r0,[r7,#0x6c]
	strlt	r0,[r7, #108]
# [1322] b     p113
	b	.Lj499
.Lj502:
# [1324] p115:          cmp   r0,#4
	cmp	r0,#4
# [1325] bne   p116
	bne	.Lj503
# Rescheduled
# [1327] ldr   r2,[r7,#0x5c] //sr1
	ldr	r2,[r7, #92]
# [1326] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1328] add   r2,#0x30
	add	r2,#48
# [1329] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1330] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1331] lsr   r4,#30
	lsr	r4,#30
# [1332] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1333] cmp   r4,#0x10000
	cmp	r4,#65536
# [1334] movlt r4,#0
	movlt	r4,#0
# [1335] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1336] strlt r4,[r7,#0x6c]
	strlt	r4,[r7, #108]
# [1337] b     p113
	b	.Lj499
.Lj503:
# [1339] p116:          mov   r0,#0
	mov	r0,#0
# [1340] str   r0,[r7,#0x70]
	str	r0,[r7, #112]
.Lj499:
# [1344] p113:          ldr   r6,[r7,#0x84]
	ldr	r6,[r7, #132]
# [1345] cmp   r6,#0
	cmp	r6,#0
# [1346] beq   p121
	beq	.Lj504
# [1347] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1348] mov   r1,r0
	mov	r1,r0
# [1349] cmp   r1,#0
	cmp	r1,#0
# [1350] moveq r0,#1
	moveq	r0,#1
# [1351] cmp   r1,#4
	cmp	r1,#4
# [1352] moveq r0,#1
	moveq	r0,#1
# [1353] b     p122
	b	.Lj505
.Lj504:
# [1355] p121:          mov   r0,#4
	mov	r0,#4
.Lj505:
# [1356] p122:          str   r0,[r7,#0xaC]
	str	r0,[r7, #172]
# [1358] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1359] cmp   r0,#3
	cmp	r0,#3
# [1360] ldreq   r1,[r7,#0xb4]
	ldreq	r1,[r7, #180]
# [1361] streq   r1,[r7,#0xb0]
	streq	r1,[r7, #176]
# [1362] beq     p123
	beq	.Lj506
# [1364] p127:          cmp   r0,#1
	cmp	r0,#1
# [1365] bne   p124
	bne	.Lj508
# Rescheduled
# [1367] ldr   r2,[r7,#0x98] //sa1
	ldr	r2,[r7, #152]
# [1366] ldr   r1,[r7,#0xb0] //adsrvol1
	ldr	r1,[r7, #176]
# [1368] add   r2,#0x40
	add	r2,#64
# [1369] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1370] add   r1,r6
	add	r1,r6
# [1371] str   r1,[r7,#0xb0]
	str	r1,[r7, #176]
# [1372] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1373] blt   p123
	blt	.Lj506
# [1374] mov   r0,#2
	mov	r0,#2
# [1375] str   r0,[r7,#0xac]
	str	r0,[r7, #172]
# [1376] b     p123
	b	.Lj506
.Lj508:
# [1378] p124:          cmp   r0,#2
	cmp	r0,#2
# [1379] bne   p125
	bne	.Lj509
# Rescheduled
# [1381] ldr   r2,[r7,#0x94] //sd1
	ldr	r2,[r7, #148]
# [1380] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1382] add   r2,#0x30
	add	r2,#48
# [1383] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1384] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1385] lsr   r4,#30
	lsr	r4,#30
# [1386] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1388] ldr   r1,[r7,#0xb4]
	ldr	r1,[r7, #180]
	b	.Lj663
.Lj614:
	.long	U_$RETROMALINA_$$_SIDDATA+340
.Lj615:
	.long	33608725
.Lj616:
	.long	33608726
.Lj617:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
.Lj619:
	.long	U_$RETROMALINA_$$_SIDDATA+440
.Lj620:
	.long	33608727
.Lj621:
	.long	U_$RETROMALINA_$$_SIDDATA+356
.Lj623:
	.long	U_$RETROMALINA_$$_SIDDATA+360
.Lj625:
	.long	U_$RETROMALINA_$$_SIDDATA+364
.Lj626:
	.long	33608728
.Lj627:
	.long	U_$RETROMALINA_$$_SIDDATA+436
.Lj631:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj629:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj628:
# value: 0d+6.553600000E+04
	.byte	0,0,128,71
.Lj632:
	.long	U_$RETROMALINA_$$_SIDDATA+444
.Lj634:
	.long	U_$RETROMALINA_$$_SIDDATA+448
.Lj635:
	.long	33608708
.Lj636:
	.long	U_$RETROMALINA_$$_SIDDATA+320
.Lj637:
	.long	33608715
.Lj638:
	.long	U_$RETROMALINA_$$_SIDDATA+324
.Lj639:
	.long	33608722
.Lj640:
	.long	U_$RETROMALINA_$$_SIDDATA+328
.Lj663:
# [1387] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1389] cmp   r4,r1
	cmp	r4,r1
# [1390] movlt r0,#3
	movlt	r0,#3
# [1391] strlt r0,[r7,#0xac]
	strlt	r0,[r7, #172]
# [1392] b     p123
	b	.Lj506
.Lj509:
# [1394] p125:          cmp   r0,#4
	cmp	r0,#4
# [1395] bne   p126
	bne	.Lj510
# Rescheduled
# [1397] ldr   r2,[r7,#0x9c] //sr1
	ldr	r2,[r7, #156]
# [1396] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1398] add   r2,#0x30
	add	r2,#48
# [1399] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1400] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1401] lsr   r4,#30
	lsr	r4,#30
# [1402] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1403] cmp   r4,#0x10000
	cmp	r4,#65536
# [1404] movlt r4,#0
	movlt	r4,#0
# [1405] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1406] strlt r4,[r7,#0xbc]
	strlt	r4,[r7, #188]
# [1407] b     p123
	b	.Lj506
.Lj510:
# [1409] p126:          mov   r0,#0
	mov	r0,#0
# [1410] str   r0,[r7,#0xb0]
	str	r0,[r7, #176]
.Lj506:
# [1413] mov r0,#10
	mov	r0,#10
# [1414] str r0,[r7,#0x1fc]
	str	r0,[r7, #508]
.Lj511:
# [1431] p297:               ldr   r4,sidptr
	ldr	r4,[r11, #-168]
# Rescheduled
# Rescheduled
# [1435] ldr   r0,[r4,#0x20]
	ldr	r0,[r4, #32]
# [1436] ldr   r3,[r4,#0x00]
	ldr	r3,[r4]
# [1437] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1438] ldrcs r1,[r4,#0x60]
	ldrcs	r1,[r4, #96]
# [1439] ldrcs r2,[r4,#0x50]
	ldrcs	r2,[r4, #80]
# [1440] andcs r1,r2
	andcs	r1,r2
# [1441] strcs r1,[r4,#0x60]
	strcs	r1,[r4, #96]
# [1442] ldr   r1,[r4,#0x0c]
	ldr	r1,[r4, #12]
# [1443] cmp   r1,#0
	cmp	r1,#0
# [1444] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1447] ldr r2,[r4,#0x24]
	ldr	r2,[r4, #36]
# [1445] str r0,[r4,#0x20]
	str	r0,[r4, #32]
# [1448] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1449] movcs r1,#1
	movcs	r1,#1
# [1450] movcc r1,#0
	movcc	r1,#0
# [1451] str   r2,[r4,#0x24]
	str	r2,[r4, #36]
# [1452] str   r1,[r4,#0x3c]
	str	r1,[r4, #60]
# [1456] ldr r1,[r4,#0x140]
	ldr	r1,[r4, #320]
# [1457] cmp r1,#2
	cmp	r1,#2
# [1458] bne p205
	bne	.Lj512
# [1459] lsr r0,#8
	lsr	r0,#8
# [1460] sub r0,#8388608
	sub	r0,#8388608
# [1461] str r0,[r4,#0x28]
	str	r0,[r4, #40]
# [1462] b p204
	b	.Lj513
.Lj512:
# [1464] p205:          cmp r1,#1
	cmp	r1,#1
# [1465] bne p201
	bne	.Lj514
# [1466] mov r5,r0                // triangle
	mov	r5,r0
# [1467] lsls r5,#1
	lsls	r5,#1
# [1468] mvncs r5,r5
	mvncs	r5,r5
# [1469] ldr r6,[r4,#0x08]
	ldr	r6,[r4, #8]
# [1470] cmp r6,#0
	cmp	r6,#0
# [1471] ldrne r6,[r4,#0xa0]
	ldrne	r6,[r4, #160]
# [1472] lsls r6,#1
	lsls	r6,#1
# [1473] negcs r5,r5
	negcs	r5,r5
# [1474] lsr r5,#8
	lsr	r5,#8
# [1475] sub r5,#8388608
	sub	r5,#8388608
# [1476] str r5,[r4,#0x28]
	str	r5,[r4, #40]
# [1477] b p204
	b	.Lj513
.Lj514:
# [1479] p201:          cmp r1,#4
	cmp	r1,#4
# [1480] bne p203
	bne	.Lj515
# Rescheduled
# [1482] ldr r7,[r4,#0x14c]
	ldr	r7,[r4, #332]
# [1481] mov r6,r0,lsr #20        //square r6
	mov	r6,r0,lsr #20
# [1483] cmp r6,r7
	cmp	r6,r7
# [1484] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1485] movlt r6,#0
	movlt	r6,#0
# [1486] sub r6,#8388608
	sub	r6,#8388608
# [1487] str r6,[r4,#0x28]
	str	r6,[r4, #40]
# [1488] b p204
	b	.Lj513
.Lj515:
# [1490] p203:          cmp r1,#3
	cmp	r1,#3
# [1491] bne p206
	bne	.Lj516
# [1492] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1493] and r6,#0x000003FC
	and	r6,#1020
# [1494] add r6,#0x200
	add	r6,#512
# [1495] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1496] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1497] b p204
	b	.Lj513
.Lj516:
# [1499] p206:          cmp r1,#5
	cmp	r1,#5
# [1500] bne p207
	bne	.Lj517
# [1501] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1502] and r6,#0x000003FC
	and	r6,#1020
# [1503] add r6,#0x600
	add	r6,#1536
# [1504] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1505] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1506] b p204
	b	.Lj513
.Lj517:
# [1508] p207:          cmp r1,#6
	cmp	r1,#6
# [1509] bne p208
	bne	.Lj518
# [1510] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1511] and r6,#0x000003FC
	and	r6,#1020
# [1512] add r6,#0xa00
	add	r6,#2560
# [1513] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1514] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1515] b p204
	b	.Lj513
.Lj518:
# [1517] p208:          cmp r1,#7
	cmp	r1,#7
# [1518] bne p209
	bne	.Lj519
# [1519] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1520] and r6,#0x000003FC
	and	r6,#1020
# [1521] add r6,#0xe00
	add	r6,#3584
# [1522] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1523] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1524] b p204
	b	.Lj513
.Lj519:
# [1526] p209:          cmp r1,#8                // noise
	cmp	r1,#8
# [1527] bne p204
	bne	.Lj513
# [1528] ldr r7,[r4,#0x3C]
	ldr	r7,[r4, #60]
# [1529] cmp r7,#1
	cmp	r7,#1
# [1530] bne p204
	bne	.Lj513
# [1532] mov   r7,#0
	mov	r7,#0
# [1533] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1535] ldr   r0,[r4,#0x38]
	ldr	r0,[r4, #56]
# [1534] mov   r3,#0
	mov	r3,#0
# [1536] tst   r0,#4194304
	tst	r0,#4194304
# [1537] orrne r7,#128
	orrne	r7,#128
# [1538] orrne r2,#1
	orrne	r2,#1
# [1539] tst   r0,#1048576
	tst	r0,#1048576
# [1540] orrne r7,#64
	orrne	r7,#64
# [1541] tst   r0,#65536
	tst	r0,#65536
# [1542] orrne r7,#32
	orrne	r7,#32
# [1543] tst   r0,#8192
	tst	r0,#8192
# [1544] orrne r7,#16
	orrne	r7,#16
# [1545] tst   r0,#2048
	tst	r0,#2048
# [1546] orrne r7,#8
	orrne	r7,#8
# [1547] tst   r0,#128
	tst	r0,#128
# [1548] orrne r7,#4
	orrne	r7,#4
# [1549] tst   r0,#16
	tst	r0,#16
# [1550] orrne r7,#2
	orrne	r7,#2
# [1551] tst   r0,#4
	tst	r0,#4
# [1552] orrne r7,#1
	orrne	r7,#1
# [1553] tst   r0,#131072
	tst	r0,#131072
# [1554] orrne r3,#1
	orrne	r3,#1
# [1555] eor   r2,r3
	eor	r2,r3
# [1556] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1557] str   r2,[r4,#0x38]
	str	r2,[r4, #56]
# [1558] sub   r7,#128
	sub	r7,#128
# [1559] lsl   r7,#16
	lsl	r7,#16
# [1560] str   r7,[r4,#0x28]
	str	r7,[r4, #40]
.Lj513:
# Rescheduled
# Rescheduled
# [1564] p204:          ldr   r0,[r4,#0x60]
	ldr	r0,[r4, #96]
# [1565] ldr   r3,[r4,#0x40]
	ldr	r3,[r4, #64]
# [1566] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1567] ldrcs r1,[r4,#0xa0]
	ldrcs	r1,[r4, #160]
# [1568] ldrcs r2,[r4,#0x90]
	ldrcs	r2,[r4, #144]
# [1569] andcs r1,r2
	andcs	r1,r2
# [1570] strcs r1,[r4,#0xa0]
	strcs	r1,[r4, #160]
# [1571] ldr   r1,[r4,#0x4c]
	ldr	r1,[r4, #76]
# [1572] cmp   r1,#0
	cmp	r1,#0
# [1573] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1576] ldr r2, [r4,#0x64]
	ldr	r2,[r4, #100]
# [1574] str r0,[r4,#0x60]
	str	r0,[r4, #96]
# [1577] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1578] movcs r1,#1
	movcs	r1,#1
# [1579] movcc r1,#0
	movcc	r1,#0
# [1580] str  r2,[r4,#0x64]
	str	r2,[r4, #100]
# [1581] str  r1,[r4,#0x7c]
	str	r1,[r4, #124]
# [1586] ldr r1,[r4,#0x144]
	ldr	r1,[r4, #324]
# [1587] cmp r1,#2
	cmp	r1,#2
# [1588] bne p215
	bne	.Lj520
# [1589] lsr r0,#8
	lsr	r0,#8
# [1590] sub r0,#8388608
	sub	r0,#8388608
# [1591] str r0,[r4,#0x68]
	str	r0,[r4, #104]
# [1592] b p214
	b	.Lj521
.Lj520:
# [1594] p215:          cmp r1,#1
	cmp	r1,#1
# [1595] bne p211
	bne	.Lj522
# [1596] mov r5,r0             // triangle
	mov	r5,r0
# [1597] lsls r5,#1
	lsls	r5,#1
# [1598] mvncs r5,r5
	mvncs	r5,r5
# [1599] lsr r5,#8
	lsr	r5,#8
# Rescheduled
# [1601] ldr r6,[r4,#0x48]
	ldr	r6,[r4, #72]
# [1600] sub r5,#8388608
	sub	r5,#8388608
# [1602] cmp r6,#0
	cmp	r6,#0
# [1603] ldrne r6,[r4,#0x20]
	ldrne	r6,[r4, #32]
# [1604] lsls r6,#1
	lsls	r6,#1
# [1605] negcs r5,r5
	negcs	r5,r5
# [1606] str r5,[r4,#0x68]
	str	r5,[r4, #104]
# [1607] b p214
	b	.Lj521
.Lj522:
# [1609] p211:          cmp r1,#4
	cmp	r1,#4
# [1610] bne p213
	bne	.Lj523
# Rescheduled
# [1612] ldr r7,[r4,#0x150]
	ldr	r7,[r4, #336]
# [1611] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1613] cmp r6,r7
	cmp	r6,r7
# [1614] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1615] movlt r6,#0
	movlt	r6,#0
# [1616] sub r6,#8388608
	sub	r6,#8388608
# [1617] str r6,[r4,#0x68]
	str	r6,[r4, #104]
# [1618] b p214
	b	.Lj521
.Lj523:
# [1620] p213:          cmp r1,#3
	cmp	r1,#3
# [1621] bne p216
	bne	.Lj524
# [1622] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1623] and r6,#0x000003FC
	and	r6,#1020
# [1624] add r6,#0x200
	add	r6,#512
# [1625] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1626] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1627] b p214
	b	.Lj521
.Lj524:
# [1629] p216:          cmp r1,#5
	cmp	r1,#5
# [1630] bne p217
	bne	.Lj525
# [1631] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1632] and r6,#0x000003FC
	and	r6,#1020
# [1633] add r6,#0x600
	add	r6,#1536
# [1634] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1635] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1636] b p214
	b	.Lj521
.Lj525:
# [1638] p217:          cmp r1,#6
	cmp	r1,#6
# [1639] bne p218
	bne	.Lj526
# [1640] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1641] and r6,#0x000003FC
	and	r6,#1020
# [1642] add r6,#0xa00
	add	r6,#2560
# [1643] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1644] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1645] b p214
	b	.Lj521
.Lj526:
# [1647] p218:          cmp r1,#7
	cmp	r1,#7
# [1648] bne p219
	bne	.Lj527
# [1649] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1650] and r6,#0x000003FC
	and	r6,#1020
# [1651] add r6,#0xe00
	add	r6,#3584
# [1652] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1653] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1654] b p214
	b	.Lj521
.Lj527:
# [1656] p219:          cmp r1,#8    // noise
	cmp	r1,#8
# [1657] bne p214
	bne	.Lj521
# [1658] p212:          ldr r7,[r4,#0x7C]
	ldr	r7,[r4, #124]
# [1659] cmp r7,#1
	cmp	r7,#1
# [1660] bne p214
	bne	.Lj521
# [1662] mov   r7,#0
	mov	r7,#0
# [1663] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1665] ldr   r0,[r4,#0x78]
	ldr	r0,[r4, #120]
# [1664] mov   r3,#0
	mov	r3,#0
# [1666] tst   r0,#4194304
	tst	r0,#4194304
# [1667] orrne r7,#128
	orrne	r7,#128
# [1668] orrne r2,#1
	orrne	r2,#1
# [1669] tst   r0,#1048576
	tst	r0,#1048576
# [1670] orrne r7,#64
	orrne	r7,#64
# [1671] tst   r0,#65536
	tst	r0,#65536
# [1672] orrne r7,#32
	orrne	r7,#32
# [1673] tst   r0,#8192
	tst	r0,#8192
# [1674] orrne r7,#16
	orrne	r7,#16
# [1675] tst   r0,#2048
	tst	r0,#2048
# [1676] orrne r7,#8
	orrne	r7,#8
# [1677] tst   r0,#128
	tst	r0,#128
# [1678] orrne r7,#4
	orrne	r7,#4
# [1679] tst   r0,#16
	tst	r0,#16
# [1680] orrne r7,#2
	orrne	r7,#2
# [1681] tst   r0,#4
	tst	r0,#4
# [1682] orrne r7,#1
	orrne	r7,#1
# [1683] tst   r0,#131072
	tst	r0,#131072
# [1684] orrne r3,#1
	orrne	r3,#1
# [1685] eor   r2,r3
	eor	r2,r3
# [1686] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1687] str   r2,[r4,#0x78]
	str	r2,[r4, #120]
# [1688] lsl   r7,#16
	lsl	r7,#16
# [1689] sub   r7,#8388608
	sub	r7,#8388608
# [1690] str   r7,[r4,#0x68]
	str	r7,[r4, #104]
.Lj521:
# Rescheduled
# Rescheduled
# [1695] p214:          ldr   r0,[r4,#0xa0]
	ldr	r0,[r4, #160]
# [1696] ldr   r3,[r4,#0x80]
	ldr	r3,[r4, #128]
# [1697] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1698] ldrcs r1,[r4,#0x20]
	ldrcs	r1,[r4, #32]
# [1699] ldrcs r2,[r4,#0x10]
	ldrcs	r2,[r4, #16]
# [1700] andcs r1,r2
	andcs	r1,r2
# [1701] strcs r1,[r4,#0x20]
	strcs	r1,[r4, #32]
# [1702] ldr   r1,[r4,#0x8c]
	ldr	r1,[r4, #140]
# [1703] cmp   r1,#0
	cmp	r1,#0
# [1704] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1707] ldr r2,[r4,#0xa4]
	ldr	r2,[r4, #164]
# [1705] str r0,[r4,#0xa0]
	str	r0,[r4, #160]
# [1708] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1709] movcs r1,#1
	movcs	r1,#1
# [1710] movcc r1,#0
	movcc	r1,#0
# [1711] str   r2,[r4,#0xa4]
	str	r2,[r4, #164]
# [1712] str   r1,[r4,#0xbc]
	str	r1,[r4, #188]
# [1717] ldr r1,[r4,#0x148]
	ldr	r1,[r4, #328]
# [1718] cmp r1,#2
	cmp	r1,#2
# [1719] bne p225
	bne	.Lj529
# [1720] lsr r0,#8
	lsr	r0,#8
# [1721] sub r0,#8388608
	sub	r0,#8388608
# [1722] str r0,[r4,#0xa8]
	str	r0,[r4, #168]
# [1723] b p224
	b	.Lj530
.Lj529:
# [1725] p225:          cmp r1,#1
	cmp	r1,#1
# [1726] bne p221
	bne	.Lj531
# [1727] mov r5,r0             // triangle
	mov	r5,r0
# [1728] lsls r5,#1
	lsls	r5,#1
# [1729] mvncs r5,r5
	mvncs	r5,r5
# [1730] ldr r6,[r4,#0x88]
	ldr	r6,[r4, #136]
# [1731] cmp r6,#0
	cmp	r6,#0
# [1732] ldrne r6,[r4,#0x60]
	ldrne	r6,[r4, #96]
# [1733] lsls r6,#1
	lsls	r6,#1
# [1734] negcs r5,r5
	negcs	r5,r5
# [1735] lsr r5,#8
	lsr	r5,#8
# [1736] sub r5,#8388608
	sub	r5,#8388608
# [1737] str r5,[r4,#0xa8]
	str	r5,[r4, #168]
# [1738] b p224
	b	.Lj530
.Lj531:
# [1740] p221:          cmp r1,#4
	cmp	r1,#4
# [1741] bne p223
	bne	.Lj532
# Rescheduled
# [1743] ldr r7,[r4,#0x154]
	ldr	r7,[r4, #340]
# [1742] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1744] cmp r6,r7
	cmp	r6,r7
# [1745] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1746] movlt r6,#0
	movlt	r6,#0
# [1747] sub r6,#8388608
	sub	r6,#8388608
# [1748] str r6,[r4,#0xa8]
	str	r6,[r4, #168]
# [1749] b p224
	b	.Lj530
.Lj532:
# [1751] p223:          cmp r1,#3
	cmp	r1,#3
# [1752] bne p226
	bne	.Lj533
# [1753] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1754] and r6,#0x000003FC
	and	r6,#1020
# [1755] add r6,#0x200
	add	r6,#512
# [1756] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1757] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1758] b p224
	b	.Lj530
.Lj533:
# [1760] p226:          cmp r1,#5
	cmp	r1,#5
# [1761] bne p227
	bne	.Lj534
# [1762] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1763] and r6,#0x000003FC
	and	r6,#1020
# [1764] add r6,#0x600
	add	r6,#1536
# [1765] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1766] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1767] b p224
	b	.Lj530
.Lj534:
# [1769] p227:          cmp r1,#6
	cmp	r1,#6
# [1770] bne p228
	bne	.Lj535
# [1771] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1772] and r6,#0x000003FC
	and	r6,#1020
# [1773] add r6,#0xa00
	add	r6,#2560
# [1774] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1775] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1776] b p224
	b	.Lj530
.Lj535:
# [1778] p228:          cmp r1,#7
	cmp	r1,#7
# [1779] bne p229
	bne	.Lj536
# [1780] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1781] and r6,#0x000003FC
	and	r6,#1020
# [1782] add r6,#0xe00
	add	r6,#3584
# [1783] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1784] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1785] b p224
	b	.Lj530
.Lj536:
# [1787] p229:          cmp r1,#8    // noise
	cmp	r1,#8
# [1788] bne p224
	bne	.Lj530
# [1789] ldr r7,[r4,#0xbC]
	ldr	r7,[r4, #188]
# [1790] cmp r7,#1
	cmp	r7,#1
# [1791] bne p224
	bne	.Lj530
# [1793] mov   r7,#0
	mov	r7,#0
# [1794] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1796] ldr   r0,[r4,#0xb8]
	ldr	r0,[r4, #184]
# [1795] mov   r3,#0
	mov	r3,#0
# [1797] tst   r0,#4194304
	tst	r0,#4194304
# [1798] orrne r7,#128
	orrne	r7,#128
# [1799] orrne r2,#1
	orrne	r2,#1
# [1800] tst   r0,#1048576
	tst	r0,#1048576
# [1801] orrne r7,#64
	orrne	r7,#64
# [1802] tst   r0,#65536
	tst	r0,#65536
# [1803] orrne r7,#32
	orrne	r7,#32
# [1804] tst   r0,#8192
	tst	r0,#8192
# [1805] orrne r7,#16
	orrne	r7,#16
# [1806] tst   r0,#2048
	tst	r0,#2048
# [1807] orrne r7,#8
	orrne	r7,#8
# [1808] tst   r0,#128
	tst	r0,#128
# [1809] orrne r7,#4
	orrne	r7,#4
# [1810] tst   r0,#16
	tst	r0,#16
# [1811] orrne r7,#2
	orrne	r7,#2
# [1812] tst   r0,#4
	tst	r0,#4
# [1813] orrne r7,#1
	orrne	r7,#1
# [1814] tst   r0,#131072
	tst	r0,#131072
# [1815] orrne r3,#1
	orrne	r3,#1
# [1816] eor   r2,r3
	eor	r2,r3
# [1817] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1818] str   r2,[r4,#0xb8]
	str	r2,[r4, #184]
# [1819] sub   r7,#128
	sub	r7,#128
# [1820] lsl   r7,#16
	lsl	r7,#16
# [1821] p222:          str   r7,[r4,#0xa8]
	str	r7,[r4, #168]
.Lj530:
# Rescheduled
# Rescheduled
# [1825] p224:          ldr r0,[r4,#0x30]
	ldr	r0,[r4, #48]
# [1826] ldr r1,[r4,#0x28]
	ldr	r1,[r4, #40]
# [1827] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1828] ldr r0,[r4,#0x158]
	ldr	r0,[r4, #344]
# [1829] cmp r0,#0
	cmp	r0,#0
# [1830] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1832] ldr r0,[r4,#0x164]
	ldr	r0,[r4, #356]
# [1831] asr r3,#1
	asr	r3,#1
# [1833] cmp r0,#0
	cmp	r0,#0
# [1834] moveq r2,#0
	moveq	r2,#0
# [1835] movne r2,r3
	movne	r2,r3
# [1836] movne r3,#0
	movne	r3,#0
# [1837] str r3,[r4,#0x1c4]
	str	r3,[r4, #452]
# [1838] str r2,[r4,#0x170]
	str	r2,[r4, #368]
# Rescheduled
# Rescheduled
# [1841] ldr r0,[r4,#0x70]
	ldr	r0,[r4, #112]
# [1842] ldr r1,[r4,#0x68]
	ldr	r1,[r4, #104]
# [1843] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1844] ldr r0,[r4,#0x15c]
	ldr	r0,[r4, #348]
# [1845] cmp r0,#0
	cmp	r0,#0
# [1846] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1848] ldr r0,[r4,#0x168]
	ldr	r0,[r4, #360]
# [1847] asr r3,#1
	asr	r3,#1
# [1849] cmp r0,#0
	cmp	r0,#0
# [1850] moveq r2,#0
	moveq	r2,#0
# [1851] movne r2,r3
	movne	r2,r3
# [1852] movne r3,#0
	movne	r3,#0
# [1853] str r3,[r4,#0x1c8]
	str	r3,[r4, #456]
# [1854] str r2,[r4,#0x174]
	str	r2,[r4, #372]
# Rescheduled
# Rescheduled
# [1856] ldr r0,[r4,#0xb0]
	ldr	r0,[r4, #176]
# [1857] ldr r1,[r4,#0xa8]
	ldr	r1,[r4, #168]
# [1858] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1859] ldr r0,[r4,#0x160]
	ldr	r0,[r4, #352]
# [1860] cmp r0,#0
	cmp	r0,#0
# [1861] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1863] ldr r0,[r4,#0x16c]
	ldr	r0,[r4, #364]
# [1862] asr r3,#1
	asr	r3,#1
# [1864] cmp r0,#0
	cmp	r0,#0
# [1865] moveq r2,#0
	moveq	r2,#0
# [1866] movne r2,r3
	movne	r2,r3
# [1867] movne r3,#0
	movne	r3,#0
# [1868] str r3,[r4,#0x1cc]
	str	r3,[r4, #460]
# [1869] str r2,[r4,#0x178]
	str	r2,[r4, #376]
# [1873] mov r7,r4
	mov	r7,r4
# Rescheduled
# [1875] ldr r1,[r7,#0x1b8] //ffi
	ldr	r1,[r7, #440]
# [1874] ldr r3,[r7,#0x1bc] //fri
	ldr	r3,[r7, #444]
# [1876] lsl r1,#1
	lsl	r1,#1
# [1877] ldr r6,[r7,#0x1b4]  // bandpass switch
	ldr	r6,[r7, #436]
# [1878] mov r9, #0  // init output L
	mov	r9,#0
# Rescheduled
# [1883] ldr r2,[r7,#0x180]
	ldr	r2,[r7, #384]
# [1879] mov r10,#0  // init output R
	mov	r10,#0
# [1884] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1885] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1887] ldr r0,[r7,#0x170]
	ldr	r0,[r7, #368]
# [1886] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1889] ldr r4,[r7,#0x184]
	ldr	r4,[r7, #388]
# [1888] sub r0,r5
	sub	r0,r5
# [1890] sub r0,r4
	sub	r0,r4
# [1891] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1892] lsr r5,#18
	lsr	r5,#18
# [1893] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1894] add r2,r5
	add	r2,r5
# [1895] str r2,[r7,#0x180]
	str	r2,[r7, #384]
# [1896] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1897] lsr r5,#18
	lsr	r5,#18
# [1898] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1899] add r4,r5
	add	r4,r5
# [1900] str r4,[r7,#0x184]
	str	r4,[r7, #388]
# [1904] ldr r5,[r7,#0x1c4]
	ldr	r5,[r7, #452]
# [1905] tst r6,#0x2
	tst	r6,#2
# [1906] addne r5,r2
	addne	r5,r2
# [1907] tst r6,#0x1
	tst	r6,#1
# [1908] addne r5,r4
	addne	r5,r4
# [1909] tst r6,#0x4
	tst	r6,#4
# [1910] addne r5,r0
	addne	r5,r0
# [1914] mov r9,r5
	mov	r9,r5
# [1915] asr r5,#1
	asr	r5,#1
# Rescheduled
# [1920] ldr r2,[r7,#0x188]
	ldr	r2,[r7, #392]
# [1916] mov r10,r5
	mov	r10,r5
# [1921] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1922] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1924] ldr r0,[r7,#0x174]
	ldr	r0,[r7, #372]
# [1923] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1926] ldr r4,[r7,#0x18c]
	ldr	r4,[r7, #396]
# [1925] sub r0,r5
	sub	r0,r5
# [1927] sub r0,r4
	sub	r0,r4
# [1928] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1929] lsr r5,#18
	lsr	r5,#18
# [1930] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1931] add r2,r5
	add	r2,r5
# [1932] str r2,[r7,#0x188]
	str	r2,[r7, #392]
# [1933] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1934] lsr r5,#18
	lsr	r5,#18
# [1935] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1936] add r4,r5
	add	r4,r5
# [1937] str r4,[r7,#0x18c]
	str	r4,[r7, #396]
# [1941] ldr r5,[r7,#0x1c8]
	ldr	r5,[r7, #456]
# [1942] tst r6,#0x2
	tst	r6,#2
# [1943] addne r5,r2
	addne	r5,r2
# [1944] tst r6,#0x1
	tst	r6,#1
# [1945] addne r5,r4
	addne	r5,r4
# [1946] tst r6,#0x4
	tst	r6,#4
# [1947] addne r5,r0
	addne	r5,r0
# [1951] asr r5,#1
	asr	r5,#1
# [1952] add r9,r5
	add	r9,r5
# [1953] add r10,r5
	add	r10,r5
# [1954] asr r5,#1
	asr	r5,#1
# [1955] add r9,r5
	add	r9,r5
# Rescheduled
# [1960] ldr r2,[r7,#0x190]
	ldr	r2,[r7, #400]
# [1956] add r10,r5
	add	r10,r5
# [1961] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1962] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1964] ldr r0,[r7,#0x178]
	ldr	r0,[r7, #376]
# [1963] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1966] ldr r4,[r7,#0x194]
	ldr	r4,[r7, #404]
# [1965] sub r0,r5
	sub	r0,r5
# [1967] sub r0,r4
	sub	r0,r4
# [1968] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1969] lsr r5,#18
	lsr	r5,#18
# [1970] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1971] add r2,r5
	add	r2,r5
# [1972] str r2,[r7,#0x190]
	str	r2,[r7, #400]
# [1973] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1974] lsr r5,#18
	lsr	r5,#18
# [1975] orr r5,r5, r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1976] add r4,r5
	add	r4,r5
# [1977] str r4,[r7,#0x194]
	str	r4,[r7, #404]
# [1981] ldr r5,[r7,#0x1cc]
	ldr	r5,[r7, #460]
# [1982] tst r6,#0x2
	tst	r6,#2
# [1983] addne r5,r2
	addne	r5,r2
# [1984] tst r6,#0x1
	tst	r6,#1
# [1985] addne r5,r4
	addne	r5,r4
# [1986] tst r6,#0x4
	tst	r6,#4
# [1987] addne r5,r0
	addne	r5,r0
# [1991] add r10,r5
	add	r10,r5
# [1992] asr r5,#1
	asr	r5,#1
# [1993] add r9,r5
	add	r9,r5
# [1997] ldr r5,[r7,#0x1c0]
	ldr	r5,[r7, #448]
# [1998] mul r4,r5,r9
	mul	r4,r5,r9
# [1999] mov r0,r4
	mov	r0,r4
# [2000] mul r4,r5,r10
	mul	r4,r5,r10
# [2001] mov r6,r4
	mov	r6,r4
# Rescheduled
# [2006] ldr r2,[r7,#0x198]
	ldr	r2,[r7, #408]
# [2005] mov r1,#0x6000
	mov	r1,#24576
# Rescheduled
# [2008] ldr r4,[r7,#0x19c]
	ldr	r4,[r7, #412]
# [2007] sub r0,r2
	sub	r0,r2
# [2009] sub r0,r4
	sub	r0,r4
# [2010] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [2011] lsr r5,#18
	lsr	r5,#18
# [2012] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2013] add r2,r5
	add	r2,r5
# [2014] str r2,[r7,#0x198]
	str	r2,[r7, #408]
# [2015] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [2016] lsr r5,#18
	lsr	r5,#18
# [2017] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2018] add r4,r5
	add	r4,r5
# [2019] str r4,[r7,#0x19c]
	str	r4,[r7, #412]
# Rescheduled
# [2022] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [2021] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [2024] add r8,r4
	add	r8,r4
# [2025] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# Rescheduled
# [2030] ldr r2,[r7,#0x1a0]
	ldr	r2,[r7, #416]
# [2029] mov r0,r6
	mov	r0,r6
# Rescheduled
# [2032] ldr r4,[r7,#0x1a4]
	ldr	r4,[r7, #420]
# [2031] sub r0,r2
	sub	r0,r2
# [2033] sub r0,r4
	sub	r0,r4
# [2034] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [2035] lsr r5,#18
	lsr	r5,#18
# [2036] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2037] add r2,r5
	add	r2,r5
# [2038] str r2,[r7,#0x1a0]
	str	r2,[r7, #416]
# [2039] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [2040] lsr r5,#18
	lsr	r5,#18
# [2041] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2042] add r4,r5
	add	r4,r5
# [2043] str r4,[r7,#0x1a4]
	str	r4,[r7, #420]
# Rescheduled
# [2046] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [2045] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [2048] add r8,r4       //lt
	add	r8,r4
# [2049] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [2050] add r0,#1
	add	r0,#1
# [2051] str r0,[r7,#0x1a8]
	str	r0,[r7, #424]
# [2054] ldr r0,[r7,#0x1fc]
	ldr	r0,[r7, #508]
# [2055] sub r0,#1
	sub	r0,#1
# [2056] str r0,[r7,#0x1fc]
	str	r0,[r7, #508]
# [2058] cmp r0,#0
	cmp	r0,#0
# [2059] bne p297
	bne	.Lj511
# [2062] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [2063] asr r8,#18
	asr	r8,#18
# [2064] add r8,#2048
	add	r8,#2048
# [2065] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# [2066] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [2067] asr r8,#18
	asr	r8,#18
# [2068] add r8,#2048
	add	r8,#2048
# [2069] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [2072] ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# Rescheduled
# [2095] sid[0]:= siddata[$6c]; //  2048+ (siddata[$6c] div (16*16384));//16384;//32768;
	ldr	r0,.Lj641
# Rescheduled
	ldrh	r0,[r0]
	ldr	r1,[r11, #-52]
	strh	r0,[r1]
# Rescheduled
# [2096] sid[1]:= siddata[$6b];//2048+ (siddata[$6b] div (16*16384));//16384;//32768;
	ldr	r0,.Lj642
	ldr	r1,[r11, #-52]
	ldrh	r0,[r0]
# Rescheduled
# [2098] oldsc:=sc;
	ldr	r2,.Lj643
	strh	r0,[r1, #2]
# Rescheduled
	ldr	r3,.Lj644
	ldr	r1,[r2]
# Rescheduled
	ldr	r0,.Lj645
	str	r1,[r3]
# Rescheduled
# Peephole MovLdr2Ldr done
# [2099] sc:=(siddata[$6c]+siddata[$6B]) -4096 ;//div 16384;
	ldr	r1,[r0, #428]
	ldr	r0,[r0, #432]
	add	r0,r1,r0
# Rescheduled
	ldr	r2,.Lj643
	sub	r1,r0,#4096
# Rescheduled
# [2100] scope[scj]:=sc;
	ldr	r0,.Lj647
	str	r1,[r2]
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj643
	mov	r3,r0,lsl #2
# Rescheduled
	ldr	r2,.Lj649
	ldr	r0,[r1]
# Rescheduled
# [2101] inc(scj);
	ldr	r12,.Lj647
	str	r0,[r3, r2]
	ldr	r0,[r12]
	add	r1,r0,#1
# Rescheduled
# [2102] if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
	ldr	r0,.Lj647
	str	r1,[r12]
	ldr	r1,[r0]
	mov	r0,#191
	orr	r0,r0,#768
	cmp	r1,r0
	ble	.Lj653
	ldr	r0,.Lj644
	ldr	r0,[r0]
	cmp	r0,#0
	bge	.Lj656
	ldr	r0,.Lj643
	ldr	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrgt	r1,.Lj647
	movgt	r0,#0
	strgt	r0,[r1]
	bgt	.Lj660
.Lj656:
	mov	r1,#191
# Rescheduled
	ldr	r0,.Lj647
	orr	r1,r1,#768
	str	r1,[r0]
.Lj660:
.Lj653:
	ldmea	r11,{r11,r13,r15}
.Lj641:
	.long	U_$RETROMALINA_$$_SIDDATA+432
.Lj642:
	.long	U_$RETROMALINA_$$_SIDDATA+428
.Lj643:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
.Lj644:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
.Lj645:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj647:
	.long	TC_$RETROMALINA_$$_SCJ
.Lj649:
	.long	U_$RETROMALINA_$$_SCOPE
.Le32:
	.size	RETROMALINA_$$_SID$LONGINT$$TSAMPLE, .Le32 - RETROMALINA_$$_SID$LONGINT$$TSAMPLE

.section .text.n_retromalina_$$_antialias6$double$tfiltertable$$double
	.balign 4
RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE:
# Var input located in register d0
# Var ft located in register r0
# Var $result located in register d0
# [2116] begin
	vmov	d0,r0,r1
	mov	r0,r2
# Peephole Add/SubLdr2Ldr done
# [2118] ft[0]:=ft[1];
	ldr	r3,[r0, #8]
	ldr	r2,[r0, #12]
	mov	r1,r0
	str	r3,[r1]
	str	r2,[r1, #4]
# Peephole Add/SubLdr2Ldr done
# [2119] ft[1]:=ft[2];
	ldr	r3,[r0, #16]
	ldr	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #8]
	str	r1,[r0, #12]
# Peephole Add/SubLdr2Ldr done
# [2120] ft[2]:=ft[3];
	ldr	r3,[r0, #24]
	ldr	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #16]
	str	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
# [2121] ft[3]:=ft[4];
	ldr	r3,[r0, #32]
	ldr	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #24]
	str	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
# [2122] ft[4]:=ft[5];
	ldr	r3,[r0, #40]
	ldr	r1,[r0, #44]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #32]
	str	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
# [2123] ft[5]:=ft[6];
	ldr	r3,[r0, #48]
	ldr	r2,[r0, #52]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #40]
# Rescheduled
# [2125] ft[6]:=input/gain;
	ldr	r1,.Lj666
	str	r2,[r0, #44]
	vldr	d1,[r1]
	vdiv.f64	d0,d0,d1
	vstr	d0,[r0, #48]
# Peephole Add/SubLdr2Ldr done
# [2127] ft[7]:=ft[8];
	ldr	r3,[r0, #64]
	ldr	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #56]
	str	r2,[r0, #60]
# Peephole Add/SubLdr2Ldr done
# [2128] ft[8]:=ft[9];
	ldr	r3,[r0, #72]
	ldr	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #64]
	str	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
# [2129] ft[9]:=ft[10];
	ldr	r3,[r0, #80]
	ldr	r2,[r0, #84]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #72]
	str	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
# [2130] ft[10]:=ft[11];
	ldr	r3,[r0, #88]
	ldr	r1,[r0, #92]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #80]
	str	r1,[r0, #84]
# Peephole Add/SubLdr2Ldr done
# [2131] ft[11]:=ft[12];
	ldr	r3,[r0, #96]
	ldr	r2,[r0, #100]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #88]
	str	r2,[r0, #92]
# Peephole Add/SubLdr2Ldr done
# [2132] ft[12]:=ft[13];
	ldr	r3,[r0, #104]
	ldr	r2,[r0, #108]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #96]
	str	r2,[r0, #100]
# [2134] ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
	vldr	d0,[r0, #8]
	vldr	d1,[r0, #40]
	vadd.f64	d1,d0,d1
	vldr	d0,.Lj667
	vmul.f64	d2,d0,d1
	vldr	d0,[r0]
	vldr	d1,[r0, #48]
	vadd.f64	d0,d0,d1
	vadd.f64	d2,d0,d2
	vldr	d3,[r0, #24]
	vldr	d0,[r0, #32]
	vadd.f64	d1,d3,d0
	vldr	d0,.Lj668
	vmul.f64	d0,d0,d1
	vadd.f64	d1,d2,d0
	vldr	d0,.Lj669
	vmul.f64	d0,d0,d3
	vadd.f64	d2,d1,d0
# [2135] + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
	vldr	d1,.Lj670
	vldr	d0,[r0, #56]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj671
	vldr	d0,[r0, #64]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
# [2136] + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
	vldr	d1,.Lj672
	vldr	d0,[r0, #72]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d0,.Lj673
	vldr	d1,[r0, #80]
	vmul.f64	d0,d0,d1
	vadd.f64	d2,d2,d0
# [2137] + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);
	vldr	d1,.Lj674
	vldr	d0,[r0, #88]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj675
	vldr	d0,[r0, #96]
	vmul.f64	d0,d1,d0
	vadd.f64	d0,d2,d0
	vstr	d0,[r0, #104]
# Var $result located in register d0
# [2139] antialias6:=ft[13];
	vldr	d0,[r0, #104]
# [2140] end;
	vmov	r0,r1,d0
	bx	r14
.Lj666:
	.long	TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
.Lj667:
# value: 0d+6.0000000000000000E+000
	.byte	0,0,0,0,0,0,24,64
.Lj668:
# value: 0d+1.5000000000000000E+001
	.byte	0,0,0,0,0,0,46,64
.Lj669:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj670:
# value: 0d-7.9924224560000001E-001
	.byte	13,224,77,121,100,147,233,191
.Lj671:
# value: 0d+4.9534616898000001E+000
	.byte	55,184,222,66,88,208,19,64
.Lj672:
# value: 0d-1.2816370553000000E+001
	.byte	217,26,53,82,251,161,41,192
.Lj673:
# value: 0d+1.7720271720000000E+001
	.byte	56,162,57,186,99,184,49,64
.Lj674:
# value: 0d-1.3809038175000000E+001
	.byte	89,174,109,64,58,158,43,192
.Lj675:
# value: 0d+5.7509166298999999E+000
	.byte	171,197,253,73,240,0,23,64
.Le33:
	.size	RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE, .Le33 - RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE

.section .text.n_retromalina_$$_audiocallback$longint
	.balign 4
.globl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
RETROMALINA_$$_AUDIOCALLBACK$LONGINT:
# [2173] begin
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r14}
	sub	r13,r13,#32
# Var b located in register r6
# Var audio2 located in register r7
# Var ttt located in register r8:r9
# Var k located in register r11
# Var i located in register r4
# Var il located in register r5
# Var s located at r13+0, size=OS_32
# Var buf located at r13+4, size=OS_NO
# Var audio2 located in register r7
# [2174] audio2:=pcardinal(b);
	mov	r6,r0
# Var b located in register r6
# Rescheduled
# [2175] ttt:=clockgettotal;
	ldr	r0,.Lj678
# Rescheduled
	ldr	r0,[r0]
	mov	r7,r6
	cmp	r0,#0
	beq	.Lj680
	ldr	r0,.Lj678
	ldr	r0,[r0]
	blx	r0
	b	.Lj682
.Lj680:
	mov	r0,#0
	mov	r1,#0
.Lj682:
# Var ttt located in register r8:r9
	mov	r9,r0
# Rescheduled
# [2176] if pause1=true then goto p999;
	ldr	r0,.Lj685
# Rescheduled
	ldrb	r0,[r0]
	mov	r8,r1
	cmp	r0,#0
	bne	.Lj686
# [2177] for k:=0 to 7 do
	mov	r11,#0
	sub	r11,r11,#1
	.balign 4
.Lj689:
# Rescheduled
# [2179] aa+=2500;
	ldr	r0,.Lj690
# Rescheduled
	ldr	r0,[r0]
	add	r11,r11,#1
	add	r0,r0,#196
# Rescheduled
	ldr	r1,.Lj690
	add	r0,r0,#2304
# Rescheduled
# [2180] if (aa>=siddelay) then
	ldr	r2,.Lj690
	str	r0,[r1]
	ldr	r0,[r2]
	mov	r1,r0,asr #31
# Rescheduled
	ldr	r3,.Lj693
# Rescheduled
	ldr	r2,.Lj694
# Rescheduled
	ldr	r2,[r2]
	ldr	r3,[r3]
	cmp	r1,r2
	bgt	.Lj695
	blt	.Lj696
	cmp	r0,r3
	bcc	.Lj696
.Lj695:
# [2182] aa-=siddelay;
	ldr	r0,.Lj690
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj693
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj694
	ldr	r0,[r0]
	ldr	r1,[r1]
	subs	r0,r2,r0
# [2247] end;
	rsc	r1,r1,r2,asr #31
# Rescheduled
	ldr	r2,.Lj690
# Rescheduled
# [2183] if sfh>-1 then
	ldr	r1,.Lj701
	str	r0,[r2]
	ldr	r0,[r1]
	mvn	r1,#0
	cmp	r0,r1
	ble	.Lj703
# [2185] if filetype=0 then
	ldr	r0,.Lj704
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj706
# Rescheduled
# [2187] il:=fileread(sfh,buf,25);
	ldr	r0,.Lj701
	add	r1,r13,#4
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# Rescheduled
# [2188] if skip=1 then  il:=fileread(sfh,buf,25);
	ldr	r1,.Lj708
	mov	r5,r0
	ldr	r0,[r1]
	cmp	r0,#1
	bne	.Lj710
# Rescheduled
	ldr	r0,.Lj701
	add	r1,r13,#4
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	mov	r5,r0
.Lj710:
# [2189] if il=25 then
	cmp	r5,#25
	bne	.Lj713
# [2191] for i:=0 to 24 do poke($200d400+i,buf[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj716:
	add	r4,r4,#1
	add	r0,r13,#4
	ldrb	r1,[r0, r4]
	add	r0,r4,#33554432
	add	r0,r0,#54272
	strb	r1,[r0]
	cmp	r4,#24
	blt	.Lj716
# [2192] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj719:
# Rescheduled
	ldr	r0,.Lj720
	add	r4,r4,#1
	add	r2,r0,#4
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r4, lsl #2]
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj719
# [2193] t6:=clockgettotal;
	ldr	r0,.Lj678
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj723
	ldr	r0,.Lj678
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj725
# Rescheduled
	ldr	r2,.Lj726
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj727
.Lj723:
# Rescheduled
	ldr	r1,.Lj725
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj726
	mov	r0,#0
	str	r0,[r1]
.Lj727:
# Rescheduled
# [2194] times6502[15]:=0;
	ldr	r0,.Lj730
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [2195] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	ldr	r1,.Lj725
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj726
	mov	r0,#0
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj735:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj720
	add	r4,r4,#1
	ldr	r2,[r1, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj725
	mov	r3,r2,asr #31
# Rescheduled
	ldr	r1,.Lj726
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj725
	adc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj726
	str	r2,[r12]
	str	r0,[r1]
	cmp	r4,#15
	blt	.Lj735
# [2196] time6502:=t6;
	ldr	r0,.Lj725
	ldr	r2,[r0]
# Rescheduled
	ldr	r1,.Lj742
	ldr	r0,[r0, #4]
	str	r2,[r1]
# Rescheduled
# [2197] timer1+=siddelay;
	ldr	r2,.Lj743
	str	r0,[r1, #4]
# Rescheduled
	ldr	r0,.Lj744
	ldr	r3,[r2]
# Rescheduled
	ldr	r2,.Lj693
	ldr	r12,[r0]
# Rescheduled
	ldr	r1,.Lj694
	ldr	r0,[r2]
	ldr	r1,[r1]
	adds	r3,r0,r3
# Rescheduled
	ldr	r0,.Lj743
	adc	r2,r1,r12
# Rescheduled
	ldr	r1,.Lj744
	str	r3,[r0]
# Rescheduled
# [2198] songtime+=siddelay;
	ldr	r0,.Lj749
	str	r2,[r1]
# Rescheduled
	ldr	r1,.Lj750
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj693
	ldr	r12,[r1]
# Rescheduled
	ldr	r1,.Lj694
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r3,r0,r2
# Rescheduled
	ldr	r2,.Lj749
	adc	r0,r1,r12
# Rescheduled
	ldr	r1,.Lj750
	str	r3,[r2]
	str	r0,[r1]
	b	.Lj767
.Lj713:
# [2202] fileclose(sfh);
	ldr	r0,.Lj701
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [2203] fh:=-1;
	ldr	r1,.Lj757
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
# [2204] songtime:=0;
	ldr	r1,.Lj749
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj750
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [2205] timer1:=-1;
	ldr	r1,.Lj743
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj744
	mvn	r0,#0
	str	r0,[r1]
# [2206] for i:=0 to 6 do raml^[$3500+i]:=0;
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj764:
# Rescheduled
	ldr	r0,.Lj765
	add	r4,r4,#1
	ldr	r2,[r0]
# Rescheduled
	ldr	r3,.Lj766
	mov	r1,#0
	add	r3,r2,r3
# Peephole FoldShiftLdrStr done
	str	r1,[r3, r4, lsl #2]
	cmp	r4,#6
	blt	.Lj764
	b	.Lj767
.Lj706:
# [2212] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj770:
# Rescheduled
	ldr	r0,.Lj720
	add	r4,r4,#1
	add	r1,r0,#4
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r4, lsl #2]
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj770
# [2213] t6:=clockgettotal;
	ldr	r0,.Lj678
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj774
	ldr	r0,.Lj678
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj725
# Rescheduled
	ldr	r2,.Lj726
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj778
.Lj774:
# Rescheduled
	ldr	r0,.Lj725
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj726
	mov	r1,#0
	str	r1,[r0]
.Lj778:
# [2214] jsr6502(256,play);
	ldr	r0,.Lj781
	ldrh	r1,[r0]
	mov	r0,#256
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [2215] times6502[15]:=clockgettotal-t6;
	ldr	r0,.Lj678
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj784
	ldr	r0,.Lj678
	ldr	r0,[r0]
	blx	r0
	b	.Lj786
.Lj784:
	mov	r0,#0
	mov	r1,#0
.Lj786:
	ldr	r2,.Lj725
# Rescheduled
	ldr	r3,.Lj726
	ldr	r12,[r2]
	ldr	r2,[r3]
	subs	r0,r0,r12
	sbc	r1,r1,r2
# Rescheduled
	ldr	r1,.Lj730
	str	r0,[r1]
# Rescheduled
# [2216] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	ldr	r1,.Lj725
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj726
	mov	r0,#0
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj794:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,.Lj720
	add	r4,r4,#1
	ldr	r2,[r0, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj725
	mov	r3,r2,asr #31
# Rescheduled
	ldr	r1,.Lj726
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj725
	adc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj726
	str	r2,[r12]
	str	r0,[r1]
	cmp	r4,#15
	blt	.Lj794
# [2217] time6502:=t6-15;
	ldr	r0,.Lj725
# Rescheduled
	ldr	r1,.Lj726
	ldr	r0,[r0]
	ldr	r1,[r1]
	subs	r3,r0,#15
# Rescheduled
	ldr	r2,.Lj742
	sbc	r0,r1,#0
# Rescheduled
	ldr	r1,.Lj803
	str	r3,[r2]
	str	r0,[r1]
# [2222] CleanDataCacheRange($200d400,32);
	mov	r10,#33554432
# Rescheduled
	ldr	r0,.Lj804
# Rescheduled
	ldr	r0,[r0]
	orr	r10,r10,#54272
	cmp	r0,#0
	beq	.Lj806
	mov	r1,#32
# Rescheduled
	ldr	r2,.Lj804
# Rescheduled
	ldr	r2,[r2]
	mov	r0,r10
	blx	r2
.Lj806:
# [2223] timer1+=siddelay;
	ldr	r0,.Lj743
# Rescheduled
	ldr	r1,.Lj744
	ldr	r3,[r0]
# Rescheduled
	ldr	r2,.Lj693
	ldr	r12,[r1]
# Rescheduled
	ldr	r0,.Lj694
	ldr	r1,[r2]
	ldr	r0,[r0]
	adds	r1,r1,r3
# Rescheduled
	ldr	r3,.Lj743
	adc	r2,r0,r12
# Rescheduled
	ldr	r0,.Lj744
	str	r1,[r3]
# Rescheduled
# [2224] songtime+=siddelay;
	ldr	r1,.Lj749
	str	r2,[r0]
# Rescheduled
	ldr	r0,.Lj750
	ldr	r12,[r1]
# Rescheduled
	ldr	r1,.Lj693
	ldr	r3,[r0]
# Rescheduled
	ldr	r2,.Lj694
	ldr	r0,[r1]
	ldr	r1,[r2]
	adds	r2,r0,r12
# Rescheduled
	ldr	r12,.Lj749
	adc	r1,r1,r3
# Rescheduled
	ldr	r0,.Lj750
	str	r2,[r12]
	str	r1,[r0]
.Lj767:
.Lj703:
.Lj696:
# [2230] s:=sid(1);
	mov	r0,r13
	mov	r1,#1
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# [2231] audio2[240*k]:=s[0];
	mov	r0,#240
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldrsh	r1,[r13]
	mul	r0,r11,r0
	str	r1,[r7, r0, lsl #2]
# [2232] audio2[240*k+1]:=s[1];
	mov	r0,#240
	mul	r0,r11,r0
	mov	r2,r0,lsl #2
	ldrsh	r0,[r13, #2]
	add	r1,r7,#4
	str	r0,[r1, r2]
# [2234] for i:=120*k+1 to 120*k+119 do
	mov	r0,#120
	mul	r0,r11,r0
	add	r10,r0,#119
# Peephole DataMov2Data removed superfluous mov
	mov	r0,#120
	mul	r0,r11,r0
	add	r4,r0,#1
# Peephole DataMov2Data removed superfluous mov
	cmp	r10,r4
	blt	.Lj821
	sub	r4,r4,#1
	.balign 4
.Lj822:
	add	r4,r4,#1
# [2236] s:=sid(0);
	mov	r0,r13
	mov	r1,#0
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
# [2237] audio2[2*i]:=s[0];
	ldrsh	r1,[r13]
	mov	r0,r4,lsl #1
	str	r1,[r7, r0, lsl #2]
# [2238] audio2[2*i+1]:=s[1];
	mov	r0,r4,lsl #1
	mov	r2,r0,lsl #2
	ldrsh	r0,[r13, #2]
	add	r1,r7,#4
	str	r0,[r1, r2]
	cmp	r10,r4
	bgt	.Lj822
.Lj821:
	cmp	r11,#7
	blt	.Lj689
# [2242] inc(sidcount);
	ldr	r1,.Lj823
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
.Lj686:
# [2245] sidtime:=clockgettotal-ttt;
	ldr	r0,.Lj678
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj826
	ldr	r0,.Lj678
	ldr	r0,[r0]
	blx	r0
	b	.Lj828
.Lj826:
	mov	r0,#0
	mov	r1,#0
.Lj828:
	subs	r2,r0,r9
# Rescheduled
	ldr	r3,.Lj829
	sbc	r1,r1,r8
# Rescheduled
	ldr	r0,.Lj830
	str	r2,[r3]
	str	r1,[r0]
	add	r13,r13,#32
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r15}
.Lj678:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj685:
	.long	TC_$RETROMALINA_$$_PAUSE1
.Lj690:
	.long	TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
.Lj693:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj694:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj701:
	.long	U_$RETROMALINA_$$_SFH
.Lj704:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj708:
	.long	U_$RETROMALINA_$$_SKIP
.Lj720:
	.long	U_$RETROMALINA_$$_TIMES6502
.Lj725:
	.long	U_$RETROMALINA_$$_T6
.Lj726:
	.long	U_$RETROMALINA_$$_T6+4
.Lj730:
	.long	U_$RETROMALINA_$$_TIMES6502+60
.Lj742:
	.long	U_$RETROMALINA_$$_TIME6502
.Lj743:
	.long	TC_$RETROMALINA_$$_TIMER1
.Lj744:
	.long	TC_$RETROMALINA_$$_TIMER1+4
.Lj749:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj750:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj757:
	.long	U_$RETROMALINA_$$_FH
.Lj765:
	.long	U_$RETROMALINA_$$_R1
.Lj766:
	.long	54272
.Lj781:
	.long	U_$RETROMALINA_$$_PLAY
.Lj803:
	.long	U_$RETROMALINA_$$_TIME6502+4
.Lj804:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj823:
	.long	TC_$RETROMALINA_$$_SIDCOUNT
.Lj829:
	.long	TC_$RETROMALINA_$$_SIDTIME
.Lj830:
	.long	TC_$RETROMALINA_$$_SIDTIME+4
.Le34:
	.size	RETROMALINA_$$_AUDIOCALLBACK$LONGINT, .Le34 - RETROMALINA_$$_AUDIOCALLBACK$LONGINT

.section .text.n_retromalina_$$_pwmbeep
	.balign 4
.globl	RETROMALINA_$$_PWMBEEP
RETROMALINA_$$_PWMBEEP:
# [2258] begin
	stmfd	r13!,{r4,r14}
	sub	r13,r13,#32
	sub	r13,r13,#16384
# Var i located in register r0
# Var sinus located at r13+0, size=OS_NO
# Var ctrlblock located at r13+16384, size=OS_NO
# Var i located in register r4
# [2259] for i:=0 to 4095 do sinus[i]:=round(1040+1024*(sin(2*pi*i/512)));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj835:
	add	r4,r4,#1
	vmov	s0,r4
	vcvt.f64.s32	d0,s0
	vldr	d1,.Lj838
	vmul.f64	d0,d1,d0
	vldr	d1,.Lj839
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_sin_real
	vldr	d0,.Lj837
	vmov	d1,r0,r1
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj836
	vadd.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Peephole FoldShiftLdrStr done
	str	r0,[r13, r4, lsl #2]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj835
# Rescheduled
# Rescheduled
# [2261] ctrlblock[0]:=$07050140; //transfer info
	ldr	r1,.Lj840
	ldr	r0,.Lj841
	str	r1,[r13, r0]
# [2262] ctrlblock[1]:=$c205a000;
	mov	r0,#-1040187392
# Rescheduled
	ldr	r1,.Lj842
	orr	r0,r0,#368640
	str	r0,[r13, r1]
# Rescheduled
# Rescheduled
# [2263] ctrlblock[2]:=$7E20C018;
	ldr	r1,.Lj843
	ldr	r0,.Lj844
	str	r1,[r13, r0]
# Rescheduled
# [2264] ctrlblock[3]:=7680;
	ldr	r1,.Lj845
	mov	r0,#7680
	str	r0,[r13, r1]
# Rescheduled
# [2265] ctrlblock[4]:=$0;
	ldr	r0,.Lj846
	mov	r1,#0
	str	r1,[r13, r0]
# [2266] ctrlblock[5]:=$c4000020;
	mov	r0,#32
# Rescheduled
	ldr	r1,.Lj847
	orr	r0,r0,#-1006632960
	str	r0,[r13, r1]
# Rescheduled
# [2267] ctrlblock[6]:=$0;
	ldr	r0,.Lj848
	mov	r1,#0
	str	r1,[r13, r0]
# Rescheduled
# [2268] ctrlblock[7]:=$0;
	ldr	r0,.Lj849
	mov	r1,#0
	str	r1,[r13, r0]
# Var i located in register r3
# [2269] for i:=0 to 7 do lpoke($4000000+4*i,ctrlblock[i]);
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj852:
	add	r3,r3,#1
# Peephole FoldShiftProcess done
# [2297] end;
	add	r0,r13,r3,lsl #2
	add	r0,r0,#16384
	mov	r1,r3,lsl #2
	sub	r1,r1,#-67108864
# Rescheduled
	ldr	r2,[r0]
	bic	r0,r1,#3
	str	r2,[r0]
	cmp	r3,#7
	blt	.Lj852
# Rescheduled
# [2270] ctrlblock[5]:=$c4000000;
	ldr	r1,.Lj847
	mov	r0,#-1006632960
	str	r0,[r13, r1]
# [2271] ctrlblock[1]:=$c205c000;
	mov	r0,#-1040187392
# Rescheduled
	ldr	r1,.Lj842
	orr	r0,r0,#376832
	str	r0,[r13, r1]
# Var i located in register r2
# [2272] for i:=0 to 7 do lpoke($4000020+4*i,ctrlblock[i]);
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj857:
# Rescheduled
# Rescheduled
	ldr	r0,.Lj841
	add	r2,r2,#1
	add	r0,r13,r0
# Peephole FoldShiftLdrStr done
	ldr	r1,[r0, r2, lsl #2]
	mov	r0,r2,lsl #2
	add	r0,r0,#32
	add	r0,r0,#67108864
	bic	r0,r0,#3
	str	r1,[r0]
	cmp	r2,#7
	blt	.Lj857
# Var i located in register r3
# [2273] for i:=0 to 4095 do lpoke ($8000000+4*i,sinus[i]);
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj861:
	add	r3,r3,#1
# Peephole FoldShiftProcess done
	add	r0,r13,r3,lsl #2
	mov	r1,r3,lsl #2
	sub	r1,r1,#-134217728
# Rescheduled
	ldr	r2,[r0]
	bic	r0,r1,#3
	str	r2,[r0]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r3,r0
	blt	.Lj861
# Var i located in register r2
# [2274] for i:=0 to 4095 do lpoke ($8004000+4*i,sinus[i]);
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj864:
	add	r2,r2,#1
# Peephole FoldShiftLdrStr done
	ldr	r1,[r13, r2, lsl #2]
	mov	r0,r2,lsl #2
	add	r0,r0,#134217728
	add	r0,r0,#16384
	bic	r0,r0,#3
	str	r1,[r0]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r2,r0
	blt	.Lj864
# Var i located in register r1
# [2275] for i:=0 to 4095 do lpoke ($8008000+4*i,sinus[2*(i mod 2048)]);
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj867:
	add	r1,r1,#1
	mov	r0,r1
	mov	r2,r0,asr #31
	eor	r0,r0,r2
	sub	r0,r0,r2
	mov	r0,r0,lsl #21
# Peephole FoldShiftProcess done
	eor	r0,r2,r0,lsr #21
	sub	r2,r0,r2
# Peephole DataMov2Data removed superfluous mov
# Peephole ShiftShift2Shift 1 done
# Peephole FoldShiftLdrStr done
	ldr	r2,[r13, r2, lsl #3]
	mov	r0,r1,lsl #2
	add	r0,r0,#134217728
	add	r0,r0,#32768
	bic	r0,r0,#3
	str	r2,[r0]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r1,r0
	blt	.Lj867
# Var i located in register r1
# [2276] for i:=0 to 4095 do lpoke ($800C000+4*i,sinus[2*(i mod 2048)]);
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj870:
	add	r1,r1,#1
	mov	r0,r1
	mov	r2,r0,asr #31
	eor	r0,r0,r2
	sub	r0,r0,r2
	mov	r0,r0,lsl #21
# Peephole FoldShiftProcess done
	eor	r0,r2,r0,lsr #21
	sub	r2,r0,r2
# Peephole DataMov2Data removed superfluous mov
# Peephole ShiftShift2Shift 1 done
# Peephole FoldShiftLdrStr done
	ldr	r2,[r13, r2, lsl #3]
	mov	r0,r1,lsl #2
	add	r0,r0,#134217728
	add	r0,r0,#49152
	bic	r0,r0,#3
	str	r2,[r0]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r1,r0
	blt	.Lj870
# [2277] CleanDataCacheRange($8000000,$10000);
	ldr	r0,.Lj871
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj873
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj871
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#134217728
	blx	r2
.Lj873:
# [2278] CleanDataCacheRange($4000000,$10000);
	ldr	r0,.Lj871
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj877
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj871
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#67108864
	blx	r2
.Lj877:
# [2279] sleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [2283] i:=pinteger($3F200010)^ and  %11111111111111000111111111111000;
	ldr	r0,.Lj879
	ldr	r0,[r0]
	bic	r0,r0,#7
	bic	r0,r0,#229376
# Var i located in register r0
# [2284] lpoke($3F200010, i or       %00000000000000100000000000000100); // gpio 40/45 as alt0
	orr	r0,r0,#4
# Rescheduled
# Rescheduled
	ldr	r1,.Lj879
	orr	r0,r0,#131072
	bic	r1,r1,#3
	str	r0,[r1]
# [2285] lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
	mov	r1,#22
# Rescheduled
	ldr	r0,.Lj881
	orr	r1,r1,#1509949440
	bic	r0,r0,#3
	mov	r1,#22
	orr	r1,r1,#1509949440
	str	r1,[r0]
# [2286] lpoke($3F1010a4,$5a002000); // div 5
	mov	r1,#1509949440
# Rescheduled
	ldr	r0,.Lj882
	orr	r1,r1,#8192
	bic	r1,r0,#3
	mov	r0,#1509949440
	orr	r0,r0,#8192
	str	r0,[r1]
# [2287] lpoke($3F20C010,5208); // pwm 1 range  11bit 48 khz 2083
	mov	r0,#88
# Rescheduled
	ldr	r1,.Lj883
	orr	r0,r0,#5120
	bic	r1,r1,#3
	mov	r0,#88
	orr	r0,r0,#5120
	str	r0,[r1]
# [2288] lpoke($3F20C020,5208); // pwm 2 range
	mov	r0,#88
# Rescheduled
	ldr	r1,.Lj884
	orr	r0,r0,#5120
	bic	r1,r1,#3
	mov	r0,#88
	orr	r0,r0,#5120
	str	r0,[r1]
# [2289] lpoke($3F20C000,$00002161); // pwm contr0l - enable, clear fifo, use fifo
	mov	r0,#97
	orr	r0,r0,#8448
	mov	r0,#1056964608
	orr	r0,r0,#2146304
	bic	r1,r0,#3
	mov	r0,#97
	orr	r0,r0,#8448
	str	r0,[r1]
# [2290] lpoke($3F20C008,$80000307); // pwm dma enable
	mov	r0,#-2147483641
# Rescheduled
	ldr	r1,.Lj885
	orr	r0,r0,#768
	bic	r0,r1,#3
	mov	r1,#-2147483641
	orr	r1,r1,#768
# Rescheduled
# [2291] lpoke($3F007ff0,pinteger($3F007FF0)^ or %100000000); // dma0 enable
	ldr	r2,.Lj886
	str	r1,[r0]
	ldr	r0,[r2]
# Rescheduled
# Rescheduled
	ldr	r1,.Lj886
	orr	r0,r0,#256
	bic	r2,r1,#3
# Rescheduled
# [2292] lpoke($3F007804,$c4000000);
	ldr	r1,.Lj888
	str	r0,[r2]
	bic	r0,r1,#3
	mov	r1,#-1006632960
	str	r1,[r0]
# [2293] lpoke($3F007800,3);
	mov	r0,#1056964608
	orr	r0,r0,#30720
	bic	r0,r0,#3
	mov	r1,#3
	str	r1,[r0]
	add	r13,r13,#32
	add	r13,r13,#16384
	ldmfd	r13!,{r4,r15}
.Lj838:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64
.Lj839:
# value: 0d+1.9531250000000000E-003
	.byte	0,0,0,0,0,0,96,63
.Lj837:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64
.Lj836:
# value: 0d+1.0400000000000000E+003
	.byte	0,0,0,0,0,64,144,64
.Lj840:
	.long	117768512
.Lj841:
	.long	16384
.Lj842:
	.long	16388
.Lj843:
	.long	2116075544
.Lj844:
	.long	16392
.Lj845:
	.long	16396
.Lj846:
	.long	16400
.Lj847:
	.long	16404
.Lj848:
	.long	16408
.Lj849:
	.long	16412
.Lj871:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj879:
	.long	1059061776
.Lj881:
	.long	1058017440
.Lj882:
	.long	1058017444
.Lj883:
	.long	1059110928
.Lj884:
	.long	1059110944
.Lj885:
	.long	1059110920
.Lj886:
	.long	1056997360
.Lj888:
	.long	1056995332
.Le35:
	.size	RETROMALINA_$$_PWMBEEP, .Le35 - RETROMALINA_$$_PWMBEEP

.section .text.n_retromalina_$$_sdl_pauseaudio$longint
	.balign 4
.globl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT:
# [2302] begin
	stmfd	r13!,{r14}
# Var mode located in register r0
# [2303] if mode=1 then pause1:=true else pause1:=false;
	cmp	r0,#1
# Rescheduled
	ldreq	r0,.Lj893
	moveq	r1,#1
	streqb	r1,[r0]
# Rescheduled
	ldrne	r0,.Lj893
	movne	r1,#0
	strneb	r1,[r0]
# [2304] for i:=$205a000 to $205dfff do poke(i,2048);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj899
	orr	r0,r0,#368640
# Rescheduled
	ldr	r2,.Lj899
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj898:
	ldr	r2,.Lj899
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj899
	str	r1,[r2]
	ldr	r0,[r0]
	mov	r1,#0
# Rescheduled
	ldr	r2,.Lj899
	strb	r1,[r0]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj904
	cmp	r0,r1
	blt	.Lj898
# [2305] CleanDataCacheRange($205a000,16384);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj905
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#368640
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj905
	movne	r1,#16384
	ldrne	r2,[r2]
	blxne	r2
# [2306] end;
	ldmfd	r13!,{r15}
.Lj893:
	.long	TC_$RETROMALINA_$$_PAUSE1
.Lj899:
	.long	U_$RETROMALINA_$$_I
.Lj904:
	.long	33939455
.Lj905:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le36:
	.size	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT, .Le36 - RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$retromalina_$$_fh
	.balign 4
# [118] var fh,filetype:integer;                // this needs cleaning...
	.globl U_$RETROMALINA_$$_FH
	.size U_$RETROMALINA_$$_FH,4
U_$RETROMALINA_$$_FH:
	.zero 4

.section .bss.n_u_$retromalina_$$_filetype
	.balign 4
	.globl U_$RETROMALINA_$$_FILETYPE
	.size U_$RETROMALINA_$$_FILETYPE,4
U_$RETROMALINA_$$_FILETYPE:
	.zero 4

.section .bss.n_u_$retromalina_$$_sfh
	.balign 4
# [119] sfh:integer;                        // SID file handler
	.globl U_$RETROMALINA_$$_SFH
	.size U_$RETROMALINA_$$_SFH,4
U_$RETROMALINA_$$_SFH:
	.zero 4

.section .bss.n_u_$retromalina_$$_play
	.balign 2
# [120] play:word;
	.globl U_$RETROMALINA_$$_PLAY
	.size U_$RETROMALINA_$$_PLAY,2
U_$RETROMALINA_$$_PLAY:
	.zero 2

.section .bss.n_u_$retromalina_$$_p2
	.balign 4
# [121] p2:^integer;
	.globl U_$RETROMALINA_$$_P2
	.size U_$RETROMALINA_$$_P2,4
U_$RETROMALINA_$$_P2:
	.zero 4

.section .bss.n_u_$retromalina_$$_tim
	.balign 4
# [122] tim,t,t2,t3,ts,t6,time6502:int64;
	.globl U_$RETROMALINA_$$_TIM
	.size U_$RETROMALINA_$$_TIM,8
U_$RETROMALINA_$$_TIM:
	.zero 8

.section .bss.n_u_$retromalina_$$_t
	.balign 4
	.globl U_$RETROMALINA_$$_T
	.size U_$RETROMALINA_$$_T,8
U_$RETROMALINA_$$_T:
	.zero 8

.section .bss.n_u_$retromalina_$$_t2
	.balign 4
	.globl U_$RETROMALINA_$$_T2
	.size U_$RETROMALINA_$$_T2,8
U_$RETROMALINA_$$_T2:
	.zero 8

.section .bss.n_u_$retromalina_$$_t3
	.balign 4
	.globl U_$RETROMALINA_$$_T3
	.size U_$RETROMALINA_$$_T3,8
U_$RETROMALINA_$$_T3:
	.zero 8

.section .bss.n_u_$retromalina_$$_ts
	.balign 4
	.globl U_$RETROMALINA_$$_TS
	.size U_$RETROMALINA_$$_TS,8
U_$RETROMALINA_$$_TS:
	.zero 8

.section .bss.n_u_$retromalina_$$_t6
	.balign 4
	.globl U_$RETROMALINA_$$_T6
	.size U_$RETROMALINA_$$_T6,8
U_$RETROMALINA_$$_T6:
	.zero 8

.section .bss.n_u_$retromalina_$$_time6502
	.balign 4
	.globl U_$RETROMALINA_$$_TIME6502
	.size U_$RETROMALINA_$$_TIME6502,8
U_$RETROMALINA_$$_TIME6502:
	.zero 8

.section .bss.n_u_$retromalina_$$_vblank1
# [123] vblank1:byte;
	.globl U_$RETROMALINA_$$_VBLANK1
	.size U_$RETROMALINA_$$_VBLANK1,1
U_$RETROMALINA_$$_VBLANK1:
	.zero 1

.section .bss.n_u_$retromalina_$$_combined
# [124] combined:array[0..1023] of byte;
	.globl U_$RETROMALINA_$$_COMBINED
	.size U_$RETROMALINA_$$_COMBINED,1024
U_$RETROMALINA_$$_COMBINED:
	.zero 1024

.section .bss.n_u_$retromalina_$$_scope
	.balign 4
# [125] scope:array[0..959] of integer;
	.globl U_$RETROMALINA_$$_SCOPE
	.size U_$RETROMALINA_$$_SCOPE,3840
U_$RETROMALINA_$$_SCOPE:
	.zero 3840

.section .bss.n_u_$retromalina_$$_debug
	.balign 4
# [128] debug:integer;
	.globl U_$RETROMALINA_$$_DEBUG
	.size U_$RETROMALINA_$$_DEBUG,4
U_$RETROMALINA_$$_DEBUG:
	.zero 4

.section .bss.n_u_$retromalina_$$_songtime
	.balign 4
# [132] songtime,songfreq:int64;
	.globl U_$RETROMALINA_$$_SONGTIME
	.size U_$RETROMALINA_$$_SONGTIME,8
U_$RETROMALINA_$$_SONGTIME:
	.zero 8

.section .bss.n_u_$retromalina_$$_songfreq
	.balign 4
	.globl U_$RETROMALINA_$$_SONGFREQ
	.size U_$RETROMALINA_$$_SONGFREQ,8
U_$RETROMALINA_$$_SONGFREQ:
	.zero 8

.section .bss.n_u_$retromalina_$$_skip
	.balign 4
# [133] skip:integer;
	.globl U_$RETROMALINA_$$_SKIP
	.size U_$RETROMALINA_$$_SKIP,4
U_$RETROMALINA_$$_SKIP:
	.zero 4

.section .bss.n_u_$retromalina_$$_thread
	.balign 4
# [135] thread:TRetro;
	.globl U_$RETROMALINA_$$_THREAD
	.size U_$RETROMALINA_$$_THREAD,4
U_$RETROMALINA_$$_THREAD:
	.zero 4

.section .bss.n_u_$retromalina_$$_thread2
	.balign 4
# [136] thread2:TKbd;
	.globl U_$RETROMALINA_$$_THREAD2
	.size U_$RETROMALINA_$$_THREAD2,4
U_$RETROMALINA_$$_THREAD2:
	.zero 4

.section .bss.n_u_$retromalina_$$_thread3
	.balign 4
# [137] thread3:TAudio;
	.globl U_$RETROMALINA_$$_THREAD3
	.size U_$RETROMALINA_$$_THREAD3,4
U_$RETROMALINA_$$_THREAD3:
	.zero 4

.section .bss.n_u_$retromalina_$$_times6502
	.balign 4
# [138] times6502:array[0..15] of integer;
	.globl U_$RETROMALINA_$$_TIMES6502
	.size U_$RETROMALINA_$$_TIMES6502,64
U_$RETROMALINA_$$_TIMES6502:
	.zero 64

.section .bss.n_u_$retromalina_$$_r1
	.balign 4
# [139] r1:pointer;
	.globl U_$RETROMALINA_$$_R1
	.size U_$RETROMALINA_$$_R1,4
U_$RETROMALINA_$$_R1:
	.zero 4

.section .bss.n_u_$retromalina_$$_attacktablei
	.balign 4
# [144] attacktablei:array[0..15] of int64;
	.globl U_$RETROMALINA_$$_ATTACKTABLEI
	.size U_$RETROMALINA_$$_ATTACKTABLEI,128
U_$RETROMALINA_$$_ATTACKTABLEI:
	.zero 128

.section .bss.n_u_$retromalina_$$_srtablei
	.balign 4
# [145] srtablei:array[0..15] of int64;
	.globl U_$RETROMALINA_$$_SRTABLEI
	.size U_$RETROMALINA_$$_SRTABLEI,128
U_$RETROMALINA_$$_SRTABLEI:
	.zero 128

.section .bss.n_u_$retromalina_$$_siddata
	.balign 4
# [149] siddata:array[0..1151] of integer;
	.globl U_$RETROMALINA_$$_SIDDATA
	.size U_$RETROMALINA_$$_SIDDATA,4608
U_$RETROMALINA_$$_SIDDATA:
	.zero 4608

.section .bss.n_u_$retromalina_$$_i
	.balign 4
# [151] i,j,k,l,fh2,lines:integer;
	.globl U_$RETROMALINA_$$_I
	.size U_$RETROMALINA_$$_I,4
U_$RETROMALINA_$$_I:
	.zero 4

.section .bss.n_u_$retromalina_$$_j
	.balign 4
	.globl U_$RETROMALINA_$$_J
	.size U_$RETROMALINA_$$_J,4
U_$RETROMALINA_$$_J:
	.zero 4

.section .bss.n_u_$retromalina_$$_k
	.balign 4
	.globl U_$RETROMALINA_$$_K
	.size U_$RETROMALINA_$$_K,4
U_$RETROMALINA_$$_K:
	.zero 4

.section .bss.n_u_$retromalina_$$_l
	.balign 4
	.globl U_$RETROMALINA_$$_L
	.size U_$RETROMALINA_$$_L,4
U_$RETROMALINA_$$_L:
	.zero 4

.section .bss.n_u_$retromalina_$$_fh2
	.balign 4
	.globl U_$RETROMALINA_$$_FH2
	.size U_$RETROMALINA_$$_FH2,4
U_$RETROMALINA_$$_FH2:
	.zero 4

.section .bss.n_u_$retromalina_$$_lines
	.balign 4
	.globl U_$RETROMALINA_$$_LINES
	.size U_$RETROMALINA_$$_LINES,4
U_$RETROMALINA_$$_LINES:
	.zero 4

.section .bss.n_u_$retromalina_$$_p
	.balign 4
# [152] p,p3:pointer;
	.globl U_$RETROMALINA_$$_P
	.size U_$RETROMALINA_$$_P,4
U_$RETROMALINA_$$_P:
	.zero 4

.section .bss.n_u_$retromalina_$$_p3
	.balign 4
	.globl U_$RETROMALINA_$$_P3
	.size U_$RETROMALINA_$$_P3,4
U_$RETROMALINA_$$_P3:
	.zero 4

.section .bss.n_u_$retromalina_$$_b
# [153] b:byte;
	.globl U_$RETROMALINA_$$_B
	.size U_$RETROMALINA_$$_B,1
U_$RETROMALINA_$$_B:
	.zero 1

.section .bss.n_u_$retromalina_$$_scrfh
	.balign 4
# [154] scrfh:integer;
	.globl U_$RETROMALINA_$$_SCRFH
	.size U_$RETROMALINA_$$_SCRFH,4
U_$RETROMALINA_$$_SCRFH:
	.zero 4

.section .bss.n_u_$retromalina_$$_tabl
	.balign 4
# [156] tabl,tabl2:Ttfb;
	.globl U_$RETROMALINA_$$_TABL
	.size U_$RETROMALINA_$$_TABL,256
U_$RETROMALINA_$$_TABL:
	.zero 256

.section .bss.n_u_$retromalina_$$_tabl2
	.balign 4
	.globl U_$RETROMALINA_$$_TABL2
	.size U_$RETROMALINA_$$_TABL2,256
U_$RETROMALINA_$$_TABL2:
	.zero 256

.section .bss.n_u_$retromalina_$$_p4
	.balign 4
# [158] p4:^integer;
	.globl U_$RETROMALINA_$$_P4
	.size U_$RETROMALINA_$$_P4,4
U_$RETROMALINA_$$_P4:
	.zero 4

.section .bss.n_u_$retromalina_$$_scrconvert
	.balign 4
# [159] scrconvert:Tsrcconvert;
	.globl U_$RETROMALINA_$$_SCRCONVERT
	.size U_$RETROMALINA_$$_SCRCONVERT,4
U_$RETROMALINA_$$_SCRCONVERT:
	.zero 4

.section .bss.n_u_$retromalina_$$_fb
	.balign 4
# [160] fb:pframebufferdevice;
	.globl U_$RETROMALINA_$$_FB
	.size U_$RETROMALINA_$$_FB,4
U_$RETROMALINA_$$_FB:
	.zero 4

.section .bss.n_u_$retromalina_$$_framebufferproperties
	.balign 4
# [161] FramebufferProperties:TFramebufferProperties;
	.globl U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
	.size U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES,76
U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES:
	.zero 76

.section .bss.n_u_$retromalina_$$_kbd
	.balign 4
# [162] kbd:array[0..15] of TKeyboarddata;
	.globl U_$RETROMALINA_$$_KBD
	.size U_$RETROMALINA_$$_KBD,192
U_$RETROMALINA_$$_KBD:
	.zero 192

.section .bss.n_u_$retromalina_$$_m
	.balign 2
# [163] m:array[0..128] of Tmousedata;
	.globl U_$RETROMALINA_$$_M
	.size U_$RETROMALINA_$$_M,1032
U_$RETROMALINA_$$_M:
	.zero 1032

.section .bss.n_u_$retromalina_$$_dummy
	.balign 4
# [164] dummy:pointer;
	.globl U_$RETROMALINA_$$_DUMMY
	.size U_$RETROMALINA_$$_DUMMY,4
U_$RETROMALINA_$$_DUMMY:
	.zero 4

.section .rodata.n_VMT_$RETROMALINA_$$_TRETRO
	.balign 4
.globl	VMT_$RETROMALINA_$$_TRETRO
VMT_$RETROMALINA_$$_TRETRO:
	.long	48,-48
	.long	VMT_$CLASSES_$$_TTHREAD
	.long	.Ld5
	.long	0,0,0
	.long	RTTI_$RETROMALINA_$$_TRETRO
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	CLASSES$_$TTHREAD_$__$$_DESTROY
	.long	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.long	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.long	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	FPC_EMPTYMETHOD
	.long	CLASSES$_$TTHREAD_$__$$_AFTERCONSTRUCTION
	.long	FPC_EMPTYMETHOD
	.long	FPC_EMPTYMETHOD
	.long	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.long	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.long	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$LONGINT
	.long	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.long	CLASSES$_$TTHREAD_$__$$_DOTERMINATE
	.long	RETROMALINA$_$TRETRO_$__$$_EXECUTE
	.long	0
# [2312] end.
.Le37:
	.size	VMT_$RETROMALINA_$$_TRETRO, .Le37 - VMT_$RETROMALINA_$$_TRETRO

.section .rodata.n_VMT_$RETROMALINA_$$_TKBD
	.balign 4
.globl	VMT_$RETROMALINA_$$_TKBD
VMT_$RETROMALINA_$$_TKBD:
	.long	48,-48
	.long	VMT_$CLASSES_$$_TTHREAD
	.long	.Ld6
	.long	0,0,0
	.long	RTTI_$RETROMALINA_$$_TKBD
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	CLASSES$_$TTHREAD_$__$$_DESTROY
	.long	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.long	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.long	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	FPC_EMPTYMETHOD
	.long	CLASSES$_$TTHREAD_$__$$_AFTERCONSTRUCTION
	.long	FPC_EMPTYMETHOD
	.long	FPC_EMPTYMETHOD
	.long	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.long	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.long	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$LONGINT
	.long	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.long	CLASSES$_$TTHREAD_$__$$_DOTERMINATE
	.long	RETROMALINA$_$TKBD_$__$$_EXECUTE
	.long	0
.Le38:
	.size	VMT_$RETROMALINA_$$_TKBD, .Le38 - VMT_$RETROMALINA_$$_TKBD

.section .rodata.n_VMT_$RETROMALINA_$$_TAUDIO
	.balign 4
.globl	VMT_$RETROMALINA_$$_TAUDIO
VMT_$RETROMALINA_$$_TAUDIO:
	.long	48,-48
	.long	VMT_$CLASSES_$$_TTHREAD
	.long	.Ld7
	.long	0,0,0
	.long	RTTI_$RETROMALINA_$$_TAUDIO
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	CLASSES$_$TTHREAD_$__$$_DESTROY
	.long	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.long	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.long	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	FPC_EMPTYMETHOD
	.long	CLASSES$_$TTHREAD_$__$$_AFTERCONSTRUCTION
	.long	FPC_EMPTYMETHOD
	.long	FPC_EMPTYMETHOD
	.long	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.long	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.long	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$LONGINT
	.long	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.long	CLASSES$_$TTHREAD_$__$$_DOTERMINATE
	.long	RETROMALINA$_$TAUDIO_$__$$_EXECUTE
	.long	0
.Le39:
	.size	VMT_$RETROMALINA_$$_TAUDIO, .Le39 - VMT_$RETROMALINA_$$_TAUDIO
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_.Ld5
	.balign 4
.Ld5:
	.byte	6
	.ascii	"TRetro"
.Le40:
	.size	.Ld5, .Le40 - .Ld5

.section .rodata.n_.Ld6
	.balign 4
.Ld6:
	.byte	4
	.ascii	"Tkbd"
.Le41:
	.size	.Ld6, .Le41 - .Ld6

.section .rodata.n_.Ld7
	.balign 4
.Ld7:
	.byte	6
	.ascii	"TAudio"
.Le42:
	.size	.Ld7, .Le42 - .Ld7
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$RETROMALINA_$$_DB
.globl	TC_$RETROMALINA_$$_DB
TC_$RETROMALINA_$$_DB:
	.byte	0
.Le43:
	.size	TC_$RETROMALINA_$$_DB, .Le43 - TC_$RETROMALINA_$$_DB

.section .data.n_TC_$RETROMALINA_$$_SIDTIME
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDTIME
TC_$RETROMALINA_$$_SIDTIME:
	.long	0,0
# [130] timer1:int64=-1;
.Le44:
	.size	TC_$RETROMALINA_$$_SIDTIME, .Le44 - TC_$RETROMALINA_$$_SIDTIME

.section .data.n_TC_$RETROMALINA_$$_TIMER1
	.balign 4
.globl	TC_$RETROMALINA_$$_TIMER1
TC_$RETROMALINA_$$_TIMER1:
	.long	-1,-1
# [131] siddelay:int64=20000;
.Le45:
	.size	TC_$RETROMALINA_$$_TIMER1, .Le45 - TC_$RETROMALINA_$$_TIMER1

.section .data.n_TC_$RETROMALINA_$$_SIDDELAY
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDDELAY
TC_$RETROMALINA_$$_SIDDELAY:
	.long	20000,0
.Le46:
	.size	TC_$RETROMALINA_$$_SIDDELAY, .Le46 - TC_$RETROMALINA_$$_SIDDELAY

.section .data.n_TC_$RETROMALINA_$$_SCJ
	.balign 4
.globl	TC_$RETROMALINA_$$_SCJ
TC_$RETROMALINA_$$_SCJ:
	.long	0
.Le47:
	.size	TC_$RETROMALINA_$$_SCJ, .Le47 - TC_$RETROMALINA_$$_SCJ

.section .data.n_TC_$RETROMALINA_$$_ATTACKTABLE
	.balign 4
.globl	TC_$RETROMALINA_$$_ATTACKTABLE
TC_$RETROMALINA_$$_ATTACKTABLE:
# value: 0d+5.2079999999999997E-004
	.byte	111,116,223,123,201,16,65,63
# value: 0d+1.3019999999999999E-004
	.byte	111,116,223,123,201,16,33,63
# value: 0d+6.5099999999999997E-005
	.byte	111,116,223,123,201,16,17,63
# value: 0d+4.3399999999999998E-005
	.byte	148,240,41,165,12,193,6,63
# value: 0d+2.7399999999999999E-005
	.byte	155,243,157,169,33,187,252,62
# value: 0d+1.8600000000000001E-005
	.byte	91,23,109,68,230,128,243,62
# value: 0d+1.5299999999999999E-005
	.byte	194,196,122,254,15,11,240,62
# value: 0d+1.2999999999999999E-005
	.byte	5,162,39,101,82,67,235,62
# value: 0d+1.0400000000000000E-005
	.byte	107,78,185,29,117,207,229,62
# value: 0d+4.1699999999999999E-006
	.byte	53,138,56,223,128,125,209,62
# value: 0d+2.0800000000000000E-006
	.byte	239,113,199,23,196,114,193,62
# value: 0d+1.3020000000000000E-006
	.byte	214,97,173,35,12,216,181,62
# value: 0d+1.0400000000000000E-006
	.byte	239,113,199,23,196,114,177,62
# value: 0d+3.4700000000000002E-007
	.byte	220,164,172,35,106,73,151,62
# value: 0d+2.0800000000000001E-007
	.byte	178,28,63,89,211,234,139,62
# value: 0d+1.3000000000000000E-007
	.byte	239,113,199,23,196,114,129,62
.Le48:
	.size	TC_$RETROMALINA_$$_ATTACKTABLE, .Le48 - TC_$RETROMALINA_$$_ATTACKTABLE

.section .data.n_TC_$RETROMALINA_$$_SIDCOUNT
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCOUNT
TC_$RETROMALINA_$$_SIDCOUNT:
	.long	1
# [147] sampleclock:integer=0;
.Le49:
	.size	TC_$RETROMALINA_$$_SIDCOUNT, .Le49 - TC_$RETROMALINA_$$_SIDCOUNT

.section .data.n_TC_$RETROMALINA_$$_SAMPLECLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SAMPLECLOCK
TC_$RETROMALINA_$$_SAMPLECLOCK:
	.long	0
# [148] sidclock:integer=0;
.Le50:
	.size	TC_$RETROMALINA_$$_SAMPLECLOCK, .Le50 - TC_$RETROMALINA_$$_SAMPLECLOCK

.section .data.n_TC_$RETROMALINA_$$_SIDCLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCLOCK
TC_$RETROMALINA_$$_SIDCLOCK:
	.long	0
.Le51:
	.size	TC_$RETROMALINA_$$_SIDCLOCK, .Le51 - TC_$RETROMALINA_$$_SIDCLOCK

.section .data.n_TC_$RETROMALINA_$$_FULLSCREEN
	.balign 4
.globl	TC_$RETROMALINA_$$_FULLSCREEN
TC_$RETROMALINA_$$_FULLSCREEN:
	.long	0
.Le52:
	.size	TC_$RETROMALINA_$$_FULLSCREEN, .Le52 - TC_$RETROMALINA_$$_FULLSCREEN

.section .data.n_TC_$RETROMALINA_$$_RUNNING
	.balign 4
.globl	TC_$RETROMALINA_$$_RUNNING
TC_$RETROMALINA_$$_RUNNING:
	.long	0
.Le53:
	.size	TC_$RETROMALINA_$$_RUNNING, .Le53 - TC_$RETROMALINA_$$_RUNNING

.section .data.n_TC_$RETROMALINA_$$_PAUSE1
.globl	TC_$RETROMALINA_$$_PAUSE1
TC_$RETROMALINA_$$_PAUSE1:
	.byte	0
# [168] procedure initmachine;
.Le54:
	.size	TC_$RETROMALINA_$$_PAUSE1, .Le54 - TC_$RETROMALINA_$$_PAUSE1

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,30
.Ld1:
	.ascii	"C:\\retro\\combinedwaveforms.bin\000"
.Le55:
	.size	.Ld1$strlab, .Le55 - .Ld1$strlab

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,20
.Ld2:
	.ascii	"C:\\retro\\st4font.def\000"
.Le56:
	.size	.Ld2$strlab, .Le56 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,17
.Ld3:
	.ascii	"C:\\retro\\mysz.def\000"
.Le57:
	.size	.Ld3$strlab, .Le57 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,25
.Ld4:
	.ascii	"C:\\retro\\ataripalette.def\000"
.Le58:
	.size	.Ld4$strlab, .Le58 - .Ld4$strlab

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC:
	.long	0
# [1054] sc:integer=0;
.Le59:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC, .Le59 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [1055] waveform1:word=0;
.Le60:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC, .Le60 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [1056] f1:boolean=false;
.Le61:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1, .Le61 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [1057] waveform2:word=0;
.Le62:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1, .Le62 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [1058] f2:boolean=false;
.Le63:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2, .Le63 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [1059] waveform3:word=0;
.Le64:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2, .Le64 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [1060] f3:boolean=false;
.Le65:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3, .Le65 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [1061] ff:integer=0;
.Le66:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3, .Le66 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.long	0
# [1062] filter_resonance2i:integer=0;
.Le67:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF, .Le67 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [1063] filter_freqi:integer=0;
.Le68:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I, .Le68 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [1064] volume:integer=0;
.Le69:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI, .Le69 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [1065] c3off:integer=0;
.Le70:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME, .Le70 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
	.long	0
# [1066] fl:integer=0;
.Le71:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF, .Le71 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [1106] var i,sid1,sid1l,ind:integer;
.Le72:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL, .Le72 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL

.section .data.n_TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
	.balign 4
TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN:
# value: 0d+6.8555321079999998E+007
	.byte	133,235,81,228,72,88,144,65
.Le73:
	.size	TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN, .Le73 - TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN

.section .data.n_TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
	.balign 4
TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA:
	.long	0
.Le74:
	.size	TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA, .Le74 - TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$RETROMALINA_$$_TSRCCONVERT
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TSRCCONVERT
RTTI_$RETROMALINA_$$_TSRCCONVERT:
	.byte	23,11
# [2314] 
	.ascii	"Tsrcconvert"
	.byte	0,0,0,0,3,0,0
	.long	0
	.byte	1,0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_POINTER
	.byte	6
	.ascii	"screen"
	.byte	0
.Le75:
	.size	RTTI_$RETROMALINA_$$_TSRCCONVERT, .Le75 - RTTI_$RETROMALINA_$$_TSRCCONVERT

.section .rodata.n_RTTI_$RETROMALINA_$$_TTFB
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TTFB
RTTI_$RETROMALINA_$$_TTFB:
	.byte	12,4
	.ascii	"Ttfb"
	.byte	0,0
	.long	256,64
	.long	RTTI_$SYSTEM_$$_LONGINT
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le76:
	.size	RTTI_$RETROMALINA_$$_TTFB, .Le76 - RTTI_$RETROMALINA_$$_TTFB

.section .rodata.n_RTTI_$RETROMALINA_$$_PTFB
	.balign 4
.globl	RTTI_$RETROMALINA_$$_PTFB
RTTI_$RETROMALINA_$$_PTFB:
	.byte	29,4
	.ascii	"Ptfb"
	.byte	0,0
	.long	RTTI_$RETROMALINA_$$_TTFB
.Le77:
	.size	RTTI_$RETROMALINA_$$_PTFB, .Le77 - RTTI_$RETROMALINA_$$_PTFB

.section .rodata.n_RTTI_$RETROMALINA_$$_PINT
	.balign 4
.globl	RTTI_$RETROMALINA_$$_PINT
RTTI_$RETROMALINA_$$_PINT:
	.byte	29,4
	.ascii	"Pint"
	.byte	0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le78:
	.size	RTTI_$RETROMALINA_$$_PINT, .Le78 - RTTI_$RETROMALINA_$$_PINT

.section .rodata.n_RTTI_$RETROMALINA_$$_TRAM
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TRAM
RTTI_$RETROMALINA_$$_TRAM:
	.byte	12,4
	.ascii	"tram"
	.byte	0,0
	.long	536870916,134217729
	.long	RTTI_$SYSTEM_$$_LONGINT
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le79:
	.size	RTTI_$RETROMALINA_$$_TRAM, .Le79 - RTTI_$RETROMALINA_$$_TRAM

.section .rodata.n_RTTI_$RETROMALINA_$$_TRAMW
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TRAMW
RTTI_$RETROMALINA_$$_TRAMW:
	.byte	12,5
	.ascii	"tramw"
	.byte	0
	.long	536870914,268435457
	.long	RTTI_$SYSTEM_$$_WORD
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le80:
	.size	RTTI_$RETROMALINA_$$_TRAMW, .Le80 - RTTI_$RETROMALINA_$$_TRAMW

.section .rodata.n_RTTI_$RETROMALINA_$$_TRAMB
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TRAMB
RTTI_$RETROMALINA_$$_TRAMB:
	.byte	12,5
	.ascii	"tramb"
	.byte	0
	.long	536870912,536870912
	.long	RTTI_$SYSTEM_$$_BYTE
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le81:
	.size	RTTI_$RETROMALINA_$$_TRAMB, .Le81 - RTTI_$RETROMALINA_$$_TRAMB

.section .rodata.n_INIT_$RETROMALINA_$$_TRETRO
	.balign 4
.globl	INIT_$RETROMALINA_$$_TRETRO
INIT_$RETROMALINA_$$_TRETRO:
	.byte	15,6
	.ascii	"TRetro"
	.long	4,0
.Le82:
	.size	INIT_$RETROMALINA_$$_TRETRO, .Le82 - INIT_$RETROMALINA_$$_TRETRO

.section .rodata.n_RTTI_$RETROMALINA_$$_TRETRO
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TRETRO
RTTI_$RETROMALINA_$$_TRETRO:
	.byte	15,6
	.ascii	"TRetro"
	.long	VMT_$RETROMALINA_$$_TRETRO
	.long	RTTI_$CLASSES_$$_TTHREAD
	.short	0
	.byte	11
	.ascii	"retromalina"
	.byte	0,0
	.short	0
	.byte	0,0
.Le83:
	.size	RTTI_$RETROMALINA_$$_TRETRO, .Le83 - RTTI_$RETROMALINA_$$_TRETRO

.section .rodata.n_INIT_$RETROMALINA_$$_TKBD
	.balign 4
.globl	INIT_$RETROMALINA_$$_TKBD
INIT_$RETROMALINA_$$_TKBD:
	.byte	15,4
	.ascii	"Tkbd"
	.byte	0,0
	.long	4,0
.Le84:
	.size	INIT_$RETROMALINA_$$_TKBD, .Le84 - INIT_$RETROMALINA_$$_TKBD

.section .rodata.n_RTTI_$RETROMALINA_$$_TKBD
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TKBD
RTTI_$RETROMALINA_$$_TKBD:
	.byte	15,4
	.ascii	"Tkbd"
	.byte	0,0
	.long	VMT_$RETROMALINA_$$_TKBD
	.long	RTTI_$CLASSES_$$_TTHREAD
	.short	0
	.byte	11
	.ascii	"retromalina"
	.byte	0,0
	.short	0
	.byte	0,0
.Le85:
	.size	RTTI_$RETROMALINA_$$_TKBD, .Le85 - RTTI_$RETROMALINA_$$_TKBD

.section .rodata.n_INIT_$RETROMALINA_$$_TAUDIO
	.balign 4
.globl	INIT_$RETROMALINA_$$_TAUDIO
INIT_$RETROMALINA_$$_TAUDIO:
	.byte	15,6
	.ascii	"TAudio"
	.long	4,0
.Le86:
	.size	INIT_$RETROMALINA_$$_TAUDIO, .Le86 - INIT_$RETROMALINA_$$_TAUDIO

.section .rodata.n_RTTI_$RETROMALINA_$$_TAUDIO
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TAUDIO
RTTI_$RETROMALINA_$$_TAUDIO:
	.byte	15,6
	.ascii	"TAudio"
	.long	VMT_$RETROMALINA_$$_TAUDIO
	.long	RTTI_$CLASSES_$$_TTHREAD
	.short	0
	.byte	11
	.ascii	"retromalina"
	.byte	0,0
	.short	0
	.byte	0,0
.Le87:
	.size	RTTI_$RETROMALINA_$$_TAUDIO, .Le87 - RTTI_$RETROMALINA_$$_TAUDIO

.section .rodata.n_RTTI_$RETROMALINA_$$_TSAMPLE
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TSAMPLE
RTTI_$RETROMALINA_$$_TSAMPLE:
	.byte	12,7
	.ascii	"tsample"
	.byte	0,0,0
	.long	4,2
	.long	RTTI_$SYSTEM_$$_SMALLINT
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le88:
	.size	RTTI_$RETROMALINA_$$_TSAMPLE, .Le88 - RTTI_$RETROMALINA_$$_TSAMPLE

.section .rodata.n_RTTI_$RETROMALINA_$$_TFILTERTABLE
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TFILTERTABLE
RTTI_$RETROMALINA_$$_TFILTERTABLE:
	.byte	12,12
	.ascii	"TFiltertable"
	.byte	0,0
	.long	112,14
	.long	RTTI_$SYSTEM_$$_DOUBLE
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le89:
	.size	RTTI_$RETROMALINA_$$_TFILTERTABLE, .Le89 - RTTI_$RETROMALINA_$$_TFILTERTABLE
# End asmlist al_rtti

