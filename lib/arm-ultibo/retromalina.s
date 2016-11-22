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
# [235] ThreadSetPriority(ThreadGetCurrent,6);
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
	mov	r1,#6
	bl	THREADS_$$_THREADSETPRIORITY$LONGINT$LONGWORD$$LONGWORD
# [236] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [237] ThreadSetCPU(ThreadGetCurrent,CPU_ID_2);
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj52
	ldr	r0,.Lj45
	ldr	r0,[r0]
	blx	r0
	b	.Lj54
.Lj52:
	mvn	r0,#0
.Lj54:
	mov	r1,#2
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [238] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	.balign 4
.Lj55:
# [240] a:=KeyboardReadex(@kbd[0], 1*sizeof(tkeyboarddata),1,q);
	ldr	r0,.Lj58
	mov	r3,r13
	mov	r2,#1
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r6,r0
# [241] if (a=0) and (q>0) then  for i:=1 to q do
	bne	.Lj60
	ldr	r0,[r13]
	cmp	r0,#0
	bls	.Lj60
	ldr	r7,[r13]
# Rescheduled
	ldr	r0,.Lj65
	mov	r2,#1
# Rescheduled
	ldr	r1,.Lj65
	str	r2,[r0]
	ldr	r0,[r1]
	cmp	r7,r0
	blt	.Lj63
	ldr	r1,.Lj65
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj64:
	ldr	r2,.Lj65
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
# [252] key:=ord(kbd[0].charcode);
	ldr	r1,.Lj69
	str	r0,[r2]
	ldrb	r5,[r1]
# Rescheduled
# [253] if kbd[0].modifiers and (16384+32768) <>0 then
	ldr	r1,.Lj58
# Peephole LdrMov2Ldr removed superfluous mov
	ldr	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#49152
	beq	.Lj72
# [255] poke($206002b,1);
	ldr	r0,.Lj73
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [256] if key<>0 then poke($2060028,key) else poke($2060028,kbd[0].KeyCode and 255);
	cmp	r5,#0
	beq	.Lj75
	and	r1,r5,#255
# Rescheduled
	ldr	r0,.Lj76
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj77
.Lj75:
	ldr	r0,.Lj78
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj76
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj77:
# [257] poke($2060029,kbd[0].modifiers and 255);
	ldr	r0,.Lj58
	ldr	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj81
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [258] poke($206002a,(kbd[0].modifiers shr 8) and 255);
	ldr	r0,.Lj58
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj83
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [259] if key=0 then poke($206002b,peek($206002b) or $2);
	cmp	r5,#0
	bne	.Lj85
	ldr	r0,.Lj73
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	orr	r0,r0,#2
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj73
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj85:
# [260] CleanDataCacheRange($2060000,4096);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj88
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#393216
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj88
	movne	r1,#4096
	ldrne	r2,[r2]
	blxne	r2
.Lj72:
	ldr	r0,.Lj65
	ldr	r0,[r0]
	cmp	r7,r0
	bgt	.Lj64
.Lj63:
.Lj60:
# [279] threadsleep(10);
	mov	r0,#10
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [280] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj55
# [282] end;
	add	r13,r13,#4
	ldmfd	r13!,{r4,r5,r6,r7,r15}
.Lj45:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj58:
	.long	U_$RETROMALINA_$$_KBD
.Lj65:
	.long	U_$RETROMALINA_$$_I
.Lj69:
	.long	U_$RETROMALINA_$$_KBD+8
.Lj73:
	.long	33947691
.Lj76:
	.long	33947688
.Lj78:
	.long	U_$RETROMALINA_$$_KBD+6
.Lj81:
	.long	33947689
.Lj83:
	.long	33947690
.Lj88:
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
# [290] a:=KeyboardReadex(@kbd[0], 1*sizeof(tkeyboarddata),1,q);
	ldr	r0,.Lj95
	mov	r3,r13
	mov	r2,#1
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Var a located in register r0
# [291] if (a=0) and (q>0) then  // for i:=1 to q do
	cmp	r0,#0
	bne	.Lj97
	ldr	r0,[r13]
	cmp	r0,#0
	bls	.Lj97
# [295] key:=ord(kbd[0].charcode);
	ldr	r0,.Lj99
	ldrb	r4,[r0]
# Rescheduled
# [298] if kbd[0].modifiers and (16384+32768) <>0 then
	ldr	r0,.Lj95
	ldr	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#49152
	beq	.Lj102
# [300] poke($206002b,1);
	ldr	r0,.Lj103
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [301] if key<>0 then poke($2060028,key) else poke($2060028,kbd[0].KeyCode and 255);
	cmp	r4,#0
	beq	.Lj105
	and	r1,r4,#255
# Rescheduled
	ldr	r0,.Lj106
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj107
.Lj105:
	ldr	r0,.Lj108
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj106
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj107:
# [302] poke($2060029,kbd[0].modifiers and 255);
	ldr	r0,.Lj95
	ldr	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj111
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [303] poke($206002a,(kbd[0].modifiers shr 8) and 255);
	ldr	r0,.Lj95
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj113
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [304] if key=0 then poke($206002b,peek($206002b) or $2);
	cmp	r4,#0
	bne	.Lj115
	ldr	r0,.Lj103
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	orr	r0,r0,#2
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj103
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj115:
# [305] CleanDataCacheRange($2060000,4096);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj118
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#393216
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj118
	movne	r1,#4096
	ldrne	r2,[r2]
	blxne	r2
.Lj102:
.Lj97:
# [327] end;
	add	r13,r13,#4
	ldmfd	r13!,{r4,r15}
.Lj95:
	.long	U_$RETROMALINA_$$_KBD
.Lj99:
	.long	U_$RETROMALINA_$$_KBD+8
.Lj103:
	.long	33947691
.Lj106:
	.long	33947688
.Lj108:
	.long	U_$RETROMALINA_$$_KBD+6
.Lj111:
	.long	33947689
.Lj113:
	.long	33947690
.Lj118:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le3:
	.size	RETROMALINA_$$_GETKEY, .Le3 - RETROMALINA_$$_GETKEY

.section .text.n_retromalina$_$taudio_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TAUDIO_$__$$_EXECUTE
RETROMALINA$_$TAUDIO_$__$$_EXECUTE:
# [333] begin
	stmfd	r13!,{r4,r5,r14}
# Var $self located in register r4
# Var a located in register r5
# Var key located in register r0
# Var q located in register r0
	mov	r4,r0
# [334] ThreadSetPriority(ThreadGetCurrent,6);
	ldr	r0,.Lj124
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj126
	ldr	r0,.Lj124
	ldr	r0,[r0]
	blx	r0
	b	.Lj128
.Lj126:
	mvn	r0,#0
.Lj128:
	mov	r1,#6
	bl	THREADS_$$_THREADSETPRIORITY$LONGINT$LONGWORD$$LONGWORD
# [336] ThreadSetCPU(ThreadGetCurrent,CPU_ID_1);
	ldr	r0,.Lj124
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj131
	ldr	r0,.Lj124
	ldr	r0,[r0]
	blx	r0
	b	.Lj133
.Lj131:
	mvn	r0,#0
.Lj133:
	mov	r1,#1
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [337] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	.balign 4
.Lj134:
	.balign 4
.Lj137:
# [339] repeat threadsleep(2); a:= lpeek($3F007800) until (a and 2) <>0 ;
	mov	r0,#2
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	mov	r0,#1056964608
	orr	r0,r0,#30720
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r5,r0
# Peephole OpCmp2OpS done
	ands	r0,r5,#2
	beq	.Lj137
# Peephole OpCmp2OpS done
# [340] if (a and 2)<>0
	ands	r0,r5,#2
	beq	.Lj141
# [343] if lpeek($3f00781c)=$c4000000 then audiocallback($0205a000)
	ldr	r0,.Lj142
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	cmp	r0,#-1006632960
	bne	.Lj144
	mov	r0,#33554432
	orr	r0,r0,#368640
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
	b	.Lj145
.Lj144:
# [344] else audiocallback($0205c000);
	mov	r0,#33554432
	orr	r0,r0,#376832
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
.Lj145:
# [345] lpoke($3F007800,3);
	mov	r0,#1056964608
	orr	r0,r0,#30720
	mov	r1,#3
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [346] CleanDataCacheRange($0205a000,$8000);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj146
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#368640
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj146
	movne	r1,#32768
	ldrne	r2,[r2]
	blxne	r2
.Lj141:
# [349] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj134
# [351] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj124:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj142:
	.long	1056995356
.Lj146:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le4:
	.size	RETROMALINA$_$TAUDIO_$__$$_EXECUTE, .Le4 - RETROMALINA$_$TAUDIO_$__$$_EXECUTE

.section .text.n_retromalina$_$tretro_$__$$_create$boolean$$tretro
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO:
# Temps allocated between r13+12 and r13+252
# [360] begin
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
	bne	.Lj153
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj153:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj150
# [363] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj158
# [361] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [362] inherited Create(CreateSuspended);
	ldrb	r2,[r13]
	ldr	r0,[r13, #8]
	mov	r3,#4194304
	mov	r1,#0
	bl	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$LONGWORD$$TTHREAD
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj164
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj164
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1]
	ldr	r1,[r1, #68]
	blx	r1
.Lj164:
.Lj158:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj160
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj166
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj168
	ldr	r0,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
# Rescheduled
	ldr	r2,[r0]
	mvn	r1,#0
	ldr	r2,[r2, #48]
	blx	r2
.Lj168:
	bl	fpc_popaddrstack
	bl	fpc_reraise
.Lj166:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #248]
	cmp	r0,#0
	blne	fpc_raise_nested
	bl	fpc_doneexception
.Lj160:
.Lj150:
	ldr	r0,[r13, #8]
	add	r13,r13,#252
	ldmfd	r13!,{r15}
.Le5:
	.size	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO, .Le5 - RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO

.section .text.n_retromalina$_$tretro_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_EXECUTE
RETROMALINA$_$TRETRO_$__$$_EXECUTE:
# [375] begin
	stmfd	r13!,{r4,r14}
# Var $self located in register r4
# Var id located in register r0
	mov	r4,r0
# Rescheduled
# [377] running:=1;
	ldr	r1,.Lj172
	mov	r0,#1
	str	r0,[r1]
# [378] id:=getcurrentthreadid  ;
	bl	ULTIBO_$$_GETCURRENTTHREADID$$LONGWORD
# Var id located in register r0
# Rescheduled
# [379] ThreadSetCPU(ThreadGetCurrent,CPU_ID_3);
	ldr	r1,.Lj173
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj175
	ldr	r0,.Lj173
	ldr	r0,[r0]
	blx	r0
	b	.Lj177
.Lj175:
	mvn	r0,#0
.Lj177:
	mov	r1,#3
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [381] ThreadSetPriority(ThreadGetCurrent,6);
	ldr	r0,.Lj173
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj180
	ldr	r0,.Lj173
	ldr	r0,[r0]
	blx	r0
	b	.Lj182
.Lj180:
	mvn	r0,#0
.Lj182:
	mov	r1,#6
	bl	THREADS_$$_THREADSETPRIORITY$LONGINT$LONGWORD$$LONGWORD
# [383] Sleep(1);
	mov	r0,#1
	bl	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
	.balign 4
.Lj183:
# Rescheduled
# [386] vblank1:=0;
	ldr	r0,.Lj186
	mov	r1,#0
# Rescheduled
# [387] t:=clockgettotal;
	ldr	r2,.Lj187
	strb	r1,[r0]
	ldr	r0,[r2]
	cmp	r0,#0
	beq	.Lj189
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj191
# Rescheduled
	ldr	r2,.Lj192
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj193
.Lj189:
# Rescheduled
	ldr	r0,.Lj191
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj192
	mov	r0,#0
	str	r0,[r1]
.Lj193:
# [388] scrconvert16f(p2);
	ldr	r0,.Lj196
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [389] tim:=clockgettotal-t;
	ldr	r0,.Lj187
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj199
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
	b	.Lj201
.Lj199:
	mov	r0,#0
	mov	r1,#0
.Lj201:
	ldr	r2,.Lj191
# Rescheduled
	ldr	r3,.Lj192
	ldr	r2,[r2]
	ldr	r12,[r3]
	subs	r0,r0,r2
# Rescheduled
	ldr	r3,.Lj204
	sbc	r1,r1,r12
# Rescheduled
	ldr	r2,.Lj205
	str	r0,[r3]
# Rescheduled
# [390] t:=clockgettotal;
	ldr	r0,.Lj187
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj208
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj191
# Rescheduled
	ldr	r2,.Lj192
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj212
.Lj208:
# Rescheduled
	ldr	r0,.Lj191
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj192
	mov	r1,#0
	str	r1,[r0]
.Lj212:
# [391] spritef(p2);
	ldr	r0,.Lj196
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [392] ts:=clockgettotal-t;
	ldr	r0,.Lj187
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj218
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
	b	.Lj220
.Lj218:
	mov	r0,#0
	mov	r1,#0
.Lj220:
	ldr	r2,.Lj191
# Rescheduled
	ldr	r3,.Lj192
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r12,r0,r2
# Rescheduled
	ldr	r2,.Lj223
	sbc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj224
	str	r12,[r2]
	str	r0,[r1]
# Rescheduled
# [393] vblank1:=1;
	ldr	r0,.Lj186
	mov	r1,#1
	strb	r1,[r0]
# [394] CleanDataCacheRange(integer(p2),9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj196
	orr	r1,r1,#827392
# Rescheduled
	ldr	r2,.Lj227
# Rescheduled
	ldr	r2,[r2]
	ldr	r0,[r0]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj227
	ldrne	r2,[r2]
	blxne	r2
# [395] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [397] FramebufferDeviceSetOffset(fb,0,0,True);
	ldr	r0,.Lj231
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#0
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [398] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj231
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [399] poke ($2070000,1);
	mov	r0,#33554432
	orr	r0,r0,#458752
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# Rescheduled
# [402] vblank1:=0;
	ldr	r1,.Lj186
	mov	r2,#0
# Rescheduled
# [403] t:=clockgettotal;
	ldr	r0,.Lj187
	strb	r2,[r1]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj236
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj191
# Rescheduled
	ldr	r2,.Lj192
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj240
.Lj236:
# Rescheduled
	ldr	r1,.Lj191
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj192
	mov	r1,#0
	str	r1,[r0]
.Lj240:
# [404] scrconvert16f(p2+2304000);
	ldr	r0,.Lj196
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [405] tim:=clockgettotal-t;
	ldr	r0,.Lj187
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj246
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
	b	.Lj248
.Lj246:
	mov	r0,#0
	mov	r1,#0
.Lj248:
	ldr	r2,.Lj191
# Rescheduled
	ldr	r3,.Lj192
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r0,r0,r2
# Rescheduled
	ldr	r12,.Lj204
	sbc	r1,r1,r3
# Rescheduled
	ldr	r2,.Lj205
	str	r0,[r12]
# Rescheduled
# [406] t:=clockgettotal;
	ldr	r0,.Lj187
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj255
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj191
# Rescheduled
	ldr	r2,.Lj192
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj259
.Lj255:
# Rescheduled
	ldr	r0,.Lj191
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj192
	mov	r1,#0
	str	r1,[r0]
.Lj259:
# [407] spritef(p2+2304000);
	ldr	r0,.Lj196
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [408] ts:=clockgettotal-t;
	ldr	r0,.Lj187
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj265
	ldr	r0,.Lj187
	ldr	r0,[r0]
	blx	r0
	b	.Lj267
.Lj265:
	mov	r0,#0
	mov	r1,#0
.Lj267:
	ldr	r2,.Lj191
# Rescheduled
	ldr	r3,.Lj192
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj223
	sbc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj224
	str	r2,[r12]
	str	r0,[r1]
# Rescheduled
# [409] vblank1:=1;
	ldr	r0,.Lj186
	mov	r1,#1
	strb	r1,[r0]
# [410] CleanDataCacheRange(integer(p2)+9216000,9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj196
# Rescheduled
	ldr	r0,[r0]
	orr	r1,r1,#827392
	add	r0,r0,#8388608
# Rescheduled
# Rescheduled
	ldr	r2,.Lj227
	add	r0,r0,#827392
	ldr	r2,[r2]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj227
	ldrne	r2,[r2]
	blxne	r2
# [411] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [414] FramebufferDeviceSetOffset(fb,0,1200,True);
	ldr	r0,.Lj231
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#1200
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [415] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj231
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [416] poke ($2070000,1);
	mov	r0,#33554432
	orr	r0,r0,#458752
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [419] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj183
# Rescheduled
# [420] running:=0;
	ldr	r1,.Lj172
	mov	r0,#0
	str	r0,[r1]
# [421] end;
	ldmfd	r13!,{r4,r15}
.Lj172:
	.long	TC_$RETROMALINA_$$_RUNNING
.Lj173:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj186:
	.long	U_$RETROMALINA_$$_VBLANK1
.Lj187:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj191:
	.long	U_$RETROMALINA_$$_T
.Lj192:
	.long	U_$RETROMALINA_$$_T+4
.Lj196:
	.long	U_$RETROMALINA_$$_P2
.Lj204:
	.long	U_$RETROMALINA_$$_TIM
.Lj205:
	.long	U_$RETROMALINA_$$_TIM+4
.Lj223:
	.long	U_$RETROMALINA_$$_TS
.Lj224:
	.long	U_$RETROMALINA_$$_TS+4
.Lj227:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj231:
	.long	U_$RETROMALINA_$$_FB
.Le6:
	.size	RETROMALINA$_$TRETRO_$__$$_EXECUTE, .Le6 - RETROMALINA$_$TRETRO_$__$$_EXECUTE

.section .text.n_retromalina_$$_initmachine
	.balign 4
.globl	RETROMALINA_$$_INITMACHINE
RETROMALINA_$$_INITMACHINE:
# [439] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#20
# Var a located in register r5
# Var i located in register r6
# Var fh2 located in register r0
# Var bb located at r13+0, size=OS_8
# Var Entry located at r13+4, size=OS_NO
# Var i located in register r4
# [441] for i:=16 to 8191 do
	mov	r4,#16
	sub	r4,r4,#1
	.balign 4
.Lj285:
	add	r4,r4,#1
# Rescheduled
# Rescheduled
# [443] Entry:=PageTableGetEntry(i*4096);
	ldr	r0,.Lj286
	mov	r1,r4,lsl #12
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj288
# Rescheduled
# Rescheduled
	ldr	r2,.Lj286
	add	r0,r13,#4
	ldr	r2,[r2]
	blx	r2
	b	.Lj290
.Lj288:
	add	r0,r13,#4
	mov	r2,#0
	mov	r1,#16
	bl	SYSTEM_$$_FILLCHAR$formal$LONGINT$BYTE
.Lj290:
# [444] Entry.Flags:=$3b2;         //3b2   orig 562
	mov	r0,#178
	orr	r0,r0,#768
# Rescheduled
# [445] PageTableSetEntry(Entry);
	ldr	r1,.Lj291
	str	r0,[r13, #16]
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj293
# Rescheduled
	ldr	r1,.Lj291
# Rescheduled
	ldr	r1,[r1]
	add	r0,r13,#4
	blx	r1
	b	.Lj295
.Lj293:
	mov	r0,#120
.Lj295:
	mov	r0,#255
	orr	r0,r0,#7936
	cmp	r4,r0
	blt	.Lj285
# Rescheduled
# [464] fh2:=fileopen('C:\retro\combinedwaveforms.bin',$40);   // load combined waveforms for SID
	ldr	r0,.Lj296
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [465] fileread(fh2,combined,1024);
	ldr	r1,.Lj297
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [466] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Var i located in register r2
# [467] for i:=0 to 127 do siddata[i]:=0;
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj300:
	add	r2,r2,#1
# Rescheduled
	ldr	r0,.Lj301
	mov	r1,#0
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r2, lsl #2]
	cmp	r2,#127
	blt	.Lj300
# Var i located in register r4
# [468] for i:=0 to 15 do siddata[$30+i]:=round(1073741824*(1-20*attacktable[i]));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj304:
	add	r4,r4,#1
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r0,.Lj308
	vldr	d0,.Lj307
# [554] end;
	add	r0,r0,r4,lsl #3
	vldr	d1,[r0]
	vmul.f64	d1,d0,d1
	vldr	d0,.Lj306
	vsub.f64	d0,d0,d1
	vldr	d1,.Lj305
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj309
# Peephole FoldShiftLdrStr done
	str	r0,[r1, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj304
# Var i located in register r4
# [469] for i:=0 to 15 do siddata[$40+i]:=20*round(1073741824*attacktable[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj312:
	add	r4,r4,#1
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj308
	vldr	d0,.Lj313
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
	ldr	r2,.Lj315
# Peephole FoldShiftLdrStr done
	str	r0,[r2, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj312
# Var i located in register r3
# [470] for i:=0 to 1023 do siddata[128+i]:=combined[i];
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj318:
	add	r3,r3,#1
# Rescheduled
	ldr	r0,.Lj297
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldrb	r0,[r3, r0]
	ldr	r1,.Lj320
	str	r0,[r1, r3, lsl #2]
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r3,r0
	blt	.Lj318
# Var i located in register r3
# [471] for i:=0 to 1023 do siddata[128+i]:=(siddata[128+i]-128) shl 16;
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj323:
# Rescheduled
	ldr	r0,.Lj301
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
	blt	.Lj323
# [472] siddata[$0e]:=$7FFFF8;
	mvn	r1,#-1073741817
# Rescheduled
	ldr	r0,.Lj325
	bic	r1,r1,#1065353216
	str	r1,[r0]
# [473] siddata[$1e]:=$7FFFF8;
	mvn	r0,#-1073741817
# Rescheduled
	ldr	r1,.Lj326
	bic	r0,r0,#1065353216
	str	r0,[r1]
# [474] siddata[$2e]:=$7FFFF8;
	mvn	r2,#-1073741817
# Rescheduled
	ldr	r1,.Lj327
	bic	r2,r2,#1065353216
# Rescheduled
# [475] p:=@tabl[0];
	ldr	r0,.Lj328
	str	r2,[r1]
# Rescheduled
	ldr	r1,.Lj329
	str	r0,[r1]
# [476] reset6502;
	bl	UNIT6502_$$_RESET6502
# Rescheduled
# [495] fullscreen:=1;
	ldr	r1,.Lj330
	mov	r0,#1
	str	r0,[r1]
# [514] fb:=FramebufferDevicegetdefault;
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETDEFAULT$$PFRAMEBUFFERDEVICE
# Rescheduled
	ldr	r2,.Lj331
# Rescheduled
# [515] FramebufferDeviceRelease(fb);
	ldr	r1,.Lj331
	str	r0,[r2]
	ldr	r0,[r1]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICERELEASE$PFRAMEBUFFERDEVICE$$LONGWORD
# [516] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [517] FramebufferProperties.Depth:=32;
	ldr	r0,.Lj333
	mov	r1,#32
	str	r1,[r0]
# Rescheduled
# [518] FramebufferProperties.PhysicalWidth:=1920;
	ldr	r0,.Lj334
	mov	r1,#1920
	str	r1,[r0]
# Rescheduled
# [519] FramebufferProperties.PhysicalHeight:=1200;
	ldr	r2,.Lj335
	mov	r1,#1200
# Rescheduled
	ldr	r0,.Lj336
	str	r1,[r2]
# [520] FramebufferProperties.VirtualWidth:=FramebufferProperties.PhysicalWidth;
	ldr	r1,[r0, #32]
# Rescheduled
	ldr	r2,.Lj336
	str	r1,[r0, #40]
# [521] FramebufferProperties.VirtualHeight:=FramebufferProperties.PhysicalHeight * 2;
	ldr	r0,[r2, #36]
	mov	r0,r0,lsl #1
# Rescheduled
# [522] FramebufferDeviceAllocate(fb,@FramebufferProperties);
	ldr	r1,.Lj336
	str	r0,[r2, #44]
# Rescheduled
	ldr	r0,.Lj331
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEALLOCATE$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [523] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# Rescheduled
# [524] FramebufferDeviceGetProperties(fb,@FramebufferProperties);
	ldr	r0,.Lj331
	ldr	r1,.Lj336
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETPROPERTIES$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [525] p2:=Pointer(FramebufferProperties.Address);
	ldr	r0,.Lj342
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj343
	str	r0,[r1]
# Rescheduled
# [531] r1:=pointer($2000000);
	ldr	r0,.Lj344
	mov	r1,#33554432
	str	r1,[r0]
# Var i located in register r4
# [532] for i:=$2060000 to $2061000 do poke(i,0);
	mov	r4,#33554432
	orr	r4,r4,#393216
	sub	r4,r4,#1
	.balign 4
.Lj347:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	mov	r0,#33554432
	orr	r0,r0,#397312
	cmp	r4,r0
	blt	.Lj347
# [533] lpoke($2060004,$1000000);
	ldr	r0,.Lj348
	mov	r1,#16777216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [534] lpoke($2060000,$0000000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# Rescheduled
# [535] fh2:=fileopen('C:\retro\st4font.def',$40);     // 8x16 font
	ldr	r0,.Lj349
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [536] fileread(fh2,PInteger($2050000)^,2048);
	ldr	r1,.Lj350
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#2048
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [537] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [539] fh2:=fileopen('C:\retro\mysz.def',$40);        // load mouse cursor definition at sprite 8
	ldr	r0,.Lj351
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Var i located in register r6
# [540] for i:=0 to 1023 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj354:
	add	r6,r6,#1
# [542] fileread(fh2,bb,1);
	mov	r1,r13
	mov	r0,r4
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [543] a:=bb;
	ldrb	r5,[r13]
# Peephole LdrMov2Ldr removed superfluous mov
# Peephole FoldShiftProcess done
	add	r1,r5,r5,lsl #8
# Peephole FoldShiftProcess done
	add	r5,r1,r5,lsl #16
# Peephole DataMov2Data removed superfluous mov
# [545] lpoke($2059000+4*i,a);
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#364544
	mov	r1,r5
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r6,r0
	blt	.Lj354
# [547] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [548] thread:=tretro.create(true);            // start frame refreshing thread
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj355
	mov	r1,#1
	bl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
# Rescheduled
	ldr	r2,.Lj356
# Rescheduled
# [549] thread.start;
	ldr	r1,.Lj356
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
# [552] thread3:=taudio.Create(true);
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj358
	mov	r1,#1
	bl	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO
# Rescheduled
	ldr	r2,.Lj359
# Rescheduled
# [553] thread3.start;
	ldr	r1,.Lj359
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
	add	r13,r13,#20
	ldmfd	r13!,{r4,r5,r6,r15}
	b	.Lj361
.Lj286:
	.long	U_$PLATFORM_$$_PAGETABLEGETENTRYHANDLER
.Lj291:
	.long	U_$PLATFORM_$$_PAGETABLESETENTRYHANDLER
.Lj296:
	.long	.Ld1
.Lj297:
	.long	U_$RETROMALINA_$$_COMBINED
.Lj301:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj308:
	.long	TC_$RETROMALINA_$$_ATTACKTABLE
.Lj307:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj306:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63
.Lj305:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj309:
	.long	U_$RETROMALINA_$$_SIDDATA+192
.Lj313:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj315:
	.long	U_$RETROMALINA_$$_SIDDATA+256
.Lj320:
	.long	U_$RETROMALINA_$$_SIDDATA+512
.Lj325:
	.long	U_$RETROMALINA_$$_SIDDATA+56
.Lj326:
	.long	U_$RETROMALINA_$$_SIDDATA+120
.Lj327:
	.long	U_$RETROMALINA_$$_SIDDATA+184
.Lj328:
	.long	U_$RETROMALINA_$$_TABL
.Lj329:
	.long	U_$RETROMALINA_$$_P
.Lj330:
	.long	TC_$RETROMALINA_$$_FULLSCREEN
.Lj331:
	.long	U_$RETROMALINA_$$_FB
.Lj333:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+16
.Lj334:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+32
.Lj335:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+36
.Lj336:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
.Lj342:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+4
.Lj343:
	.long	U_$RETROMALINA_$$_P2
.Lj344:
	.long	U_$RETROMALINA_$$_R1
.Lj348:
	.long	33947652
.Lj349:
	.long	.Ld2
.Lj350:
	.long	33882112
.Lj351:
	.long	.Ld3
.Lj355:
	.long	VMT_$RETROMALINA_$$_TRETRO
.Lj356:
	.long	U_$RETROMALINA_$$_THREAD
.Lj358:
	.long	VMT_$RETROMALINA_$$_TAUDIO
.Lj359:
	.long	U_$RETROMALINA_$$_THREAD3
.Lj361:
.Le7:
	.size	RETROMALINA_$$_INITMACHINE, .Le7 - RETROMALINA_$$_INITMACHINE

.section .text.n_retromalina_$$_stopmachine
	.balign 4
.globl	RETROMALINA_$$_STOPMACHINE
RETROMALINA_$$_STOPMACHINE:
# [565] begin
# Rescheduled
# [566] thread.terminate;
	ldr	r0,.Lj364
	stmfd	r13!,{r14}
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 4
.Lj365:
# [567] repeat until running=0;
	ldr	r0,.Lj368
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj365
# [568] end;
	ldmfd	r13!,{r15}
.Lj364:
	.long	U_$RETROMALINA_$$_THREAD
.Lj368:
	.long	TC_$RETROMALINA_$$_RUNNING
.Le8:
	.size	RETROMALINA_$$_STOPMACHINE, .Le8 - RETROMALINA_$$_STOPMACHINE

.section .text.n_retromalina_$$_gettime$$int64
	.balign 4
.globl	RETROMALINA_$$_GETTIME$$INT64
RETROMALINA_$$_GETTIME$$INT64:
# Var $result located in register r0:r2
# [574] begin
# [577] end;
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
# [587] begin
# Var addr located in register r0
# Var b located in register r1
# [588] PByte(addr)^:=b;
	strb	r1,[r0]
# [589] end;
	bx	r14
.Le10:
	.size	RETROMALINA_$$_POKE$LONGINT$BYTE, .Le10 - RETROMALINA_$$_POKE$LONGINT$BYTE

.section .text.n_retromalina_$$_dpoke$longint$word
	.balign 4
.globl	RETROMALINA_$$_DPOKE$LONGINT$WORD
RETROMALINA_$$_DPOKE$LONGINT$WORD:
# Var addr located in register r0
# Var w located in register r1
# [593] begin
# [594] PWord(addr and $FFFFFFFE)^:=w;
	bic	r0,r0,#1
# Var w located in register r1
	strh	r1,[r0]
# [595] end;
	bx	r14
.Le11:
	.size	RETROMALINA_$$_DPOKE$LONGINT$WORD, .Le11 - RETROMALINA_$$_DPOKE$LONGINT$WORD

.section .text.n_retromalina_$$_lpoke$longint$longword
	.balign 4
.globl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
RETROMALINA_$$_LPOKE$LONGINT$LONGWORD:
# Var addr located in register r0
# Var c located in register r1
# [599] begin
# [600] PCardinal(addr and $FFFFFFFC)^:=c;
	bic	r0,r0,#3
# Var c located in register r1
	str	r1,[r0]
# [601] end;
	bx	r14
.Le12:
	.size	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD, .Le12 - RETROMALINA_$$_LPOKE$LONGINT$LONGWORD

.section .text.n_retromalina_$$_slpoke$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT
RETROMALINA_$$_SLPOKE$LONGINT$LONGINT:
# Var addr located in register r0
# Var i located in register r1
# [605] begin
# [606] PInteger(addr and $FFFFFFFC)^:=i;
	bic	r0,r0,#3
# Var i located in register r1
	str	r1,[r0]
# [607] end;
	bx	r14
.Le13:
	.size	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT, .Le13 - RETROMALINA_$$_SLPOKE$LONGINT$LONGINT

.section .text.n_retromalina_$$_peek$longint$$byte
	.balign 4
.globl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
RETROMALINA_$$_PEEK$LONGINT$$BYTE:
# Var addr located in register r0
# Var $result located in register r0
# [611] begin
# Var addr located in register r0
# Var $result located in register r0
# [612] peek:=Pbyte(addr)^;
	ldrb	r0,[r0]
# [613] end;
	bx	r14
.Le14:
	.size	RETROMALINA_$$_PEEK$LONGINT$$BYTE, .Le14 - RETROMALINA_$$_PEEK$LONGINT$$BYTE

.section .text.n_retromalina_$$_dpeek$longint$$word
	.balign 4
.globl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
RETROMALINA_$$_DPEEK$LONGINT$$WORD:
# Var addr located in register r0
# Var $result located in register r0
# [617] begin
# [618] dpeek:=PWord(addr and $FFFFFFFE)^;
	bic	r0,r0,#1
# Var $result located in register r0
	ldrh	r0,[r0]
# [619] end;
	bx	r14
.Le15:
	.size	RETROMALINA_$$_DPEEK$LONGINT$$WORD, .Le15 - RETROMALINA_$$_DPEEK$LONGINT$$WORD

.section .text.n_retromalina_$$_lpeek$longint$$longword
	.balign 4
.globl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD:
# Var addr located in register r0
# Var $result located in register r0
# [623] begin
# [624] lpeek:=PCardinal(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [625] end;
	bx	r14
.Le16:
	.size	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD, .Le16 - RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD

.section .text.n_retromalina_$$_slpeek$longint$$longint
	.balign 4
.globl	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT
RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT:
# Var addr located in register r0
# Var $result located in register r0
# [629] begin
# [630] slpeek:=PInteger(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [631] end;
	bx	r14
.Le17:
	.size	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT, .Le17 - RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT

.section .text.n_retromalina_$$_blit$crc5a667533
	.balign 4
.globl	RETROMALINA_$$_BLIT$crc5A667533
RETROMALINA_$$_BLIT$crc5A667533:
# Temps allocated between r11-52 and r11-44
# [641] begin
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
# [642] if lpeek($2060008)<16 then
	ldr	r0,.Lj389
	ldr	r4,[r11, #24]
	bic	r0,r0,#3
	ldr	r0,[r0]
	cmp	r0,#16
	bcs	.Lj391
# [644] from:=from+x;
	ldr	r2,[r11, #-52]
	add	r0,r1,r2
	str	r0,[r11, #-52]
# [645] too:=too+x2;
	add	r3,r7,r3
# Peephole DataMov2Data removed superfluous mov
# [646] for i:=0 to lines-1 do
	sub	r8,r6,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r0,#0
	cmp	r8,r0
	blt	.Lj393
	sub	r0,r0,#1
	.balign 4
.Lj394:
	add	r0,r0,#1
# [648] b2:=too+bpl2*(i+y2);
	add	r7,r12,r0
# MulAdd2MLA done
# Peephole DataMov2Data removed superfluous mov
# Rescheduled
# [649] b1:=from+bpl1*(i+y);
	ldr	r9,[r11, #-48]
	mla	r1,r4,r7,r3
	add	r7,r9,r0
# Rescheduled
	ldr	r9,[r11, #-52]
	mul	r7,r14,r7
	add	r2,r9,r7
# Peephole DataMov2Data removed superfluous mov
# [650] for j:=0 to length-1 do
	sub	r7,r5,#1
	mov	r6,#0
	cmp	r7,r6
	blt	.Lj396
	sub	r6,r6,#1
	.balign 4
.Lj397:
	add	r6,r6,#1
# [651] poke(b2+j,peek(b1+j));
	add	r9,r6,r2
	ldrb	r9,[r9]
	add	r10,r6,r1
	strb	r9,[r10]
	cmp	r7,r6
	bgt	.Lj397
.Lj396:
	cmp	r8,r0
	bgt	.Lj394
.Lj393:
.Lj391:
# [655] end;
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj389:
	.long	33947656
.Le18:
	.size	RETROMALINA_$$_BLIT$crc5A667533, .Le18 - RETROMALINA_$$_BLIT$crc5A667533

.section .text.n_retromalina_$$_scrconvert16f$pointer
	.balign 4
.globl	RETROMALINA_$$_SCRCONVERT16F$POINTER
RETROMALINA_$$_SCRCONVERT16F$POINTER:
# [668] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var e located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [669] a:=$2000000; // TODO! a:=0! Get a screen pointer from sys var !
	mov	r0,#33554432
# Rescheduled
# [670] e:=raml^[$18003];
	ldr	r1,.Lj407
	str	r0,[r11, #-52]
# Rescheduled
# Rescheduled
	ldr	r0,[r1]
	ldr	r2,.Lj408
	ldr	r0,[r0, r2]
	str	r0,[r11, #-56]
# [673] stmfd r13!,{r0-r12}   //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [674] ldr r1,a
	ldr	r1,[r11, #-52]
# [675] add r1,#0x1000000
	add	r1,#16777216
# [676] mov r6,r1
	mov	r6,r1
# Rescheduled
# [678] ldr r2,screen
	ldr	r2,[r11, #-48]
# [677] add r6,#1
	add	r6,#1
# [679] mov r12,r2
	mov	r12,r2
# Rescheduled
# [681] ldr r3,a
	ldr	r3,[r11, #-52]
# [680] add r12,#4
	add	r12,#4
# [682] add r3,#0x10000
	add	r3,#65536
# [683] mov r5,r2
	mov	r5,r2
# Rescheduled
# [686] ldr r9,e
	ldr	r9,[r11, #-56]
# [685] add r5,#307200
	add	r5,#307200
# [687] mov r10,r9
	mov	r10,r9
.Lj400:
# [688] p10:            str r9,[r2],#8
	str	r9,[r2], #8
# [689] str r10,[r12],#8
	str	r10,[r12], #8
# [690] str r9,[r2],#8
	str	r9,[r2], #8
# [691] str r10,[r12],#8
	str	r10,[r12], #8
# [692] cmp r2,r5
	cmp	r2,r5
# [693] blt p10
	blt	.Lj400
# [694] mov r0,#1120
	mov	r0,#1120
.Lj401:
# Rescheduled
# [697] ldr r9,e
	ldr	r9,[r11, #-56]
# [696] p11:            add r5,#256
	add	r5,#256
# [698] mov r10,r9
	mov	r10,r9
.Lj402:
# [699] p0:             str r9,[r2],#8
	str	r9,[r2], #8
# [700] str r10,[r12],#8
	str	r10,[r12], #8
# [701] str r9,[r2],#8
	str	r9,[r2], #8
# [702] str r10,[r12],#8
	str	r10,[r12], #8
# [703] cmp r2,r5
	cmp	r2,r5
# [704] blt p0
	blt	.Lj402
# [706] add r5,#7168
	add	r5,#7168
.Lj403:
# [707] p1:             ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [708] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [709] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [710] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [711] str r9,[r2],#8
	str	r9,[r2], #8
# [712] str r10,[r12],#8
	str	r10,[r12], #8
# [713] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [714] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [715] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [716] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [717] str r9,[r2],#8
	str	r9,[r2], #8
# [718] str r10,[r12],#8
	str	r10,[r12], #8
# [719] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [720] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [721] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [722] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [723] str r9,[r2],#8
	str	r9,[r2], #8
# [724] str r10,[r12],#8
	str	r10,[r12], #8
# [725] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [726] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [727] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [728] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [729] str r9,[r2],#8
	str	r9,[r2], #8
# [730] str r10,[r12],#8
	str	r10,[r12], #8
# [731] cmp r2,r5
	cmp	r2,r5
# [732] blt p1
	blt	.Lj403
# Rescheduled
# [735] ldr r9,e
	ldr	r9,[r11, #-56]
# [734] add r5,#256
	add	r5,#256
# [736] mov r10,r9
	mov	r10,r9
.Lj404:
# [737] p002:           str r9,[r2],#8
	str	r9,[r2], #8
# [738] str r10,[r12],#8
	str	r10,[r12], #8
# [739] str r9,[r2],#8
	str	r9,[r2], #8
# [740] str r10,[r12],#8
	str	r10,[r12], #8
# [741] cmp r2,r5
	cmp	r2,r5
# [742] blt p002
	blt	.Lj404
# [743] subs r0,#1
	subs	r0,#1
# [744] bne p11
	bne	.Lj401
# Rescheduled
# [747] ldr r9,e
	ldr	r9,[r11, #-56]
# [746] add r5,#307200
	add	r5,#307200
# [748] mov r10,r9
	mov	r10,r9
.Lj405:
# [749] p12:            str r9,[r2],#8
	str	r9,[r2], #8
# [750] str r10,[r12],#8
	str	r10,[r12], #8
# [751] str r9,[r2],#8
	str	r9,[r2], #8
# [752] str r10,[r12],#8
	str	r10,[r12], #8
# [753] cmp r2,r5
	cmp	r2,r5
# [754] blt p12
	blt	.Lj405
# [755] p999:           ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [759] end;
	ldmea	r11,{r11,r13,r15}
.Lj407:
	.long	U_$RETROMALINA_$$_R1
.Lj408:
	.long	393228
.Le19:
	.size	RETROMALINA_$$_SCRCONVERT16F$POINTER, .Le19 - RETROMALINA_$$_SCRCONVERT16F$POINTER

.section .text.n_retromalina_$$_spritef$pointer
	.balign 4
RETROMALINA_$$_SPRITEF$POINTER:
# [770] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var spritebase located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [771] a:=$2000000;
	mov	r0,#33554432
	str	r0,[r11, #-52]
# [772] spritebase:=$60040;
	mov	r0,#64
	orr	r0,r0,#393216
	str	r0,[r11, #-56]
# [775] stmfd r13!,{r0-r12}     //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [776] mov r12,#0
	mov	r12,#0
# Rescheduled
# Rescheduled
# [778] ldr r0,spritebase
	ldr	r0,[r11, #-56]
# [779] ldr r1,a
	ldr	r1,[r11, #-52]
# [780] add r0,r1
	add	r0,r1
.Lj411:
# [781] p103:          ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [782] mov r2,r1               // sprite 0 position
	mov	r2,r1
# Rescheduled
# [784] ldr r5,p100
	ldr	r5,.Lj412
# [783] mov r3,r1
	mov	r3,r1
# [785] and r2,r5               // x pos
	and	r2,r5
# Rescheduled
# [787] ldr r4,p100+4
	ldr	r4,.Lj412+4
# [786] lsl r2,#2
	lsl	r2,#2
# [788] and r3,r4
	and	r3,r4
# [789] lsr r3,#16              // y pos
	lsr	r3,#16
# [790] cmp r2,#8192
	cmp	r2,#8192
# [791] ble p104
	ble	.Lj413
# [792] add r12,#1
	add	r12,#1
# [793] add r0,#4
	add	r0,#4
# [794] cmp r12,#8
	cmp	r12,#8
# [795] bge p999
	bge	.Lj414
# [796] b p103
	b	.Lj411
.Lj413:
# [798] p104:          ldr r4,p100+8
	ldr	r4,.Lj412+8
# [799] mul r3,r3,r4
	mul	r3,r3,r4
# Rescheduled
# [801] ldr r4,screen
	ldr	r4,[r11, #-48]
# [800] add r3,r2      // sprite pos
	add	r3,r2
# [802] add r3,r4      // pointer to upper left sprite pixel in r3
	add	r3,r4
# [803] ldr r4,p100+12
	ldr	r4,.Lj412+12
# Rescheduled
# [805] ldr r5,a
	ldr	r5,[r11, #-52]
# [804] add r4,r4,r12,lsl #12
	add	r4,r4,r12,lsl #12
# Rescheduled
# [808] ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [806] add r4,r5      //pointer to sprite 0 data
	add	r4,r5
# Rescheduled
# [810] ldr r5,p100
	ldr	r5,.Lj412
# [809] mov r2,r1
	mov	r2,r1
# [811] and r2,r5
	and	r2,r5
# [812] lsr r1,#16
	lsr	r1,#16
# [813] cmp r1,#8
	cmp	r1,#8
# [814] movgt r1,#8
	movgt	r1,#8
# [815] cmp r2,#8
	cmp	r2,#8
# [816] movgt r2,#8
	movgt	r2,#8
# [817] cmp r1,#1
	cmp	r1,#1
# [818] movle r1,#1
	movle	r1,#1
# [819] cmp r2,#1
	cmp	r2,#1
# [820] movle r2,#1
	movle	r2,#1
# [821] mov r7,r2
	mov	r7,r2
# [822] mov r8,#128
	mov	r8,#128
# [823] mul r8,r8,r2
	mul	r8,r8,r2
# [824] mov r9,#32
	mov	r9,#32
# [825] mul r9,r9,r1 //y zoom
	mul	r9,r9,r1
# [826] mov r10,r1
	mov	r10,r1
# [827] mov r6,#32
	mov	r6,#32
.Lj415:
# [828] p101:          ldr r5,[r4],#4
	ldr	r5,[r4], #4
.Lj416:
# [829] p102:          cmp r5,#0
	cmp	r5,#0
# [830] strne r5,[r3],#4
	strne	r5,[r3], #4
# [831] addeq r3,#4
	addeq	r3,#4
# [832] subs r7,#1
	subs	r7,#1
# [833] bne p102
	bne	.Lj416
# [834] mov r7,r2
	mov	r7,r2
# [835] subs r6,#1
	subs	r6,#1
# [836] bne p101
	bne	.Lj415
# [837] add r3,#7680
	add	r3,#7680
# [838] sub r3,r8
	sub	r3,r8
# [839] subs r10,#1
	subs	r10,#1
# [840] subne r4,#128
	subne	r4,#128
# [841] addeq r10,r1
	addeq	r10,r1
# [842] mov r6,#32
	mov	r6,#32
# [843] subs r9,#1
	subs	r9,#1
# [844] bne p101
	bne	.Lj415
# [845] add r12,#1
	add	r12,#1
# [846] cmp r12,#8
	cmp	r12,#8
# [847] bne p103
	bne	.Lj411
# [848] b p999
	b	.Lj414
.Lj412:
	.long	65535
	.long	-65536
	.long	7680
	.long	335872
.Lj414:
# [855] p999:          ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [857] end;
	ldmea	r11,{r11,r13,r15}
.Le20:
	.size	RETROMALINA_$$_SPRITEF$POINTER, .Le20 - RETROMALINA_$$_SPRITEF$POINTER

.section .text.n_retromalina_$$_setataripallette$longint
	.balign 4
.globl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
RETROMALINA_$$_SETATARIPALLETTE$LONGINT:
# [863] begin
	stmfd	r13!,{r4,r5,r14}
# Var bank located in register r4
# Var fh located in register r0
	mov	r4,r0
# Rescheduled
# [864] fh:=fileopen('C:\retro\ataripalette.def',$40);
	ldr	r0,.Lj419
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
# Var fh located in register r5
# Rescheduled
# Peephole FoldShiftProcess done
# Rescheduled
# [865] fileread(fh,Pinteger($2010000+1024*bank)^,1024);
	ldr	r1,.Lj420
	mov	r5,r0
# [867] end;
	add	r1,r1,r4,lsl #10
# Var fh located in register r5
	mov	r0,r5
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [866] fileclose(fh);
	mov	r0,r5
# Var fh located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	ldmfd	r13!,{r4,r5,r15}
.Lj419:
	.long	.Ld4
.Lj420:
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
# [871] begin
# Rescheduled
# [872] raml^[$4000+256*bank+c]+=(mask shl 24);
	ldr	r3,.Lj423
	mov	r12,r2,lsl #24
	ldr	r2,[r3]
	mov	r1,r1,lsl #8
	add	r1,r1,#16384
	add	r0,r0,r1
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r0, lsl #2]
# Rescheduled
	ldr	r2,.Lj423
	add	r3,r1,r12
	ldr	r1,[r2]
# Peephole FoldShiftLdrStr done
	str	r3,[r1, r0, lsl #2]
# [873] end;
	bx	r14
.Lj423:
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
# [880] begin
# Var c located in register r0
# [881] c:=c mod 256;
	mov	r1,r0,asr #31
	eor	r0,r0,r1
	sub	r0,r0,r1
	and	r0,r0,#255
	eor	r0,r1,r0
	sub	r0,r0,r1
# Var c located in register r0
# Rescheduled
# [882] l:=(lpeek($2060020)*lpeek($2060024)) div 4 ;
	ldr	r1,.Lj427
	bic	r1,r1,#3
# Rescheduled
	ldr	r2,.Lj428
	ldr	r3,[r1]
	bic	r1,r2,#3
	ldr	r1,[r1]
	mul	r1,r1,r3
	mov	r1,r1,lsr #2
# Var l located in register r1
# Peephole FoldShiftProcess done
# [886] end;
	add	r2,r0,r0,lsl #8
# Peephole FoldShiftProcess done
	add	r2,r2,r0,lsl #16
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #24
# Var c3 located in register r0
# Var l located in register r1
# Var i located in register r3
# [884] for i:=0 to l do lpoke($3000000+4*i,c3); // TODO Use screen pointer !!!!
	mov	r3,#0
	cmp	r1,r3
	blt	.Lj430
	sub	r3,r3,#1
	.balign 4
.Lj431:
	add	r3,r3,#1
	mov	r2,r3,lsl #2
	sub	r2,r2,#-50331648
	bic	r2,r2,#3
	str	r0,[r2]
	cmp	r1,r3
	bgt	.Lj431
.Lj430:
	bx	r14
.Lj427:
	.long	33947680
.Lj428:
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
# [898] begin
# [899] adr:=$3000000+x+1792*y; if adr<$3FFFFFF then poke(adr,color);
	mov	r3,#1792
	mul	r1,r1,r3
	sub	r0,r0,#-50331648
	add	r0,r0,r1
# Var adr located in register r0
	mvn	r1,#-67108864
	cmp	r0,r1
# Peephole AndStrb2Strb done
	strltb	r2,[r0]
# [900] end;
	bx	r14
.Le24:
	.size	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT, .Le24 - RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [916] begin
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
# [918] if x<0 then x:=0;
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-48]
# [919] if x>1792 then x:=1792;
	ldr	r0,[r11, #-48]
	cmp	r0,#1792
	movgt	r0,#1792
	strgt	r0,[r11, #-48]
# [920] if y<0 then y:=0;
	ldr	r0,[r11, #-52]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-52]
# [921] if y>1120 then y:=1120;
	ldr	r0,[r11, #-52]
	cmp	r0,#1120
	movgt	r0,#1120
	strgt	r0,[r11, #-52]
# Rescheduled
# Rescheduled
# [922] if x+l>1792 then l:=1792-x-1;
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-56]
	add	r0,r1,r0
	cmp	r0,#1792
	ble	.Lj448
	ldr	r0,[r11, #-48]
	mov	r1,#1792
	sub	r0,r1,r0
	sub	r0,r0,#1
	str	r0,[r11, #-56]
.Lj448:
# Rescheduled
# Rescheduled
# [923] if y+h>1120 then h:=1120-y-1 ;
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	cmp	r0,#1120
	ble	.Lj450
	ldr	r1,[r11, #-52]
	mov	r0,#1120
	sub	r0,r0,r1
	sub	r0,r0,#1
	str	r0,[r11, #-60]
.Lj450:
# Rescheduled
# Rescheduled
# [924] for j:=y to y+h-1 do begin
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	sub	r4,r0,#1
# Rescheduled
	ldr	r0,[r11, #-52]
	str	r0,[r11, #-76]
# Peephole StrLdr2StrMov 1 done
	cmp	r4,r0
	blt	.Lj452
	ldr	r0,[r11, #-76]
	sub	r0,r0,#1
	str	r0,[r11, #-76]
	.balign 4
.Lj453:
	ldr	r0,[r11, #-76]
	add	r0,r0,#1
	str	r0,[r11, #-76]
# [931] stmfd r13!,{r0-r2}     //Push registers
	stmfd	r13!,{r0,r1,r2}
# Rescheduled
# [933] ldr r1,j
	ldr	r1,[r11, #-76]
# [932] mov r0,#1792
	mov	r0,#1792
# [934] mul r0,r0,r1
	mul	r0,r0,r1
# [935] add r0,#0x3000000      //Todo - screen pointer!
	add	r0,#50331648
# Rescheduled
# [937] ldr r2,x
	ldr	r2,[r11, #-48]
# [936] ldr r1,c
	ldr	r1,[r11, #-64]
# [938] add r0,r2
	add	r0,r2
# [939] ldr r2,l
	ldr	r2,[r11, #-56]
.Lj438:
# [940] p1: strb r1,[r0]
	strb	r1,[r0]
# [941] add r0,#1
	add	r0,#1
# [942] subs r2,#1
	subs	r2,#1
# [943] bne p1
	bne	.Lj438
# [944] ldmfd r13!,{r0-r2}
	ldmfd	r13!,{r0,r1,r2}
	ldr	r0,[r11, #-76]
	cmp	r4,r0
	bgt	.Lj453
.Lj452:
# [949] end;
	ldmea	r11,{r4,r11,r13,r15}
.Le25:
	.size	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le25 - RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box2$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [961] begin
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
# [962] if (x1<x2) and (y1<y2) then
	cmp	r0,r2
	bge	.Lj457
	cmp	r1,r3
	bge	.Lj457
# [963] box(x1,y1,x2-x1+1, y2-y1+1,color);
	str	r12,[r13]
	sub	r3,r3,r1
	add	r3,r3,#1
	sub	r2,r2,r0
	add	r2,r2,#1
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj457:
# [964] end;
	ldmea	r11,{r11,r13,r15}
.Le26:
	.size	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le26 - RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_putchar$longint$longint$char$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
# [981] begin
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
# [982] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r7,r0,#33554432
	add	r7,r7,#327680
# Var start located in register r7
# Var i located in register r10
# [983] for i:=0 to 15 do
	mov	r10,#0
	sub	r10,r10,#1
	.balign 4
.Lj463:
	add	r10,r10,#1
# [985] b:=peek(start+i);
	add	r0,r10,r7
	ldrb	r8,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [986] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj466:
	add	r9,r9,#1
# [988] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [992] end;
	ands	r0,r8,r0,lsl r9
# [989] putpixel(x+j,y+i,col);
	addne	r1,r10,r5
	addne	r0,r9,r4
	movne	r2,r6
	blne	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	cmp	r9,#7
	blt	.Lj466
	cmp	r10,#15
	blt	.Lj463
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r15}
.Le27:
	.size	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT, .Le27 - RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT

.section .text.n_retromalina_$$_putcharz$longint$longint$char$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-68 and r11-44
# [1001] begin
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
# [1002] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r0,r0,#33554432
	add	r10,r0,#327680
# Var start located in register r10
# Peephole DataMov2Data removed superfluous mov
# Var i located in register r0
# [1003] for i:=0 to 15 do
	mov	r0,#0
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-48]
	.balign 4
.Lj473:
	ldr	r0,[r11, #-48]
	add	r0,r0,#1
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 2 done
# [1005] b:=peek(start+i);
	mov	r1,r0
	add	r0,r1,r10
	ldrb	r8,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [1006] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj476:
	add	r9,r9,#1
# [1008] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [1014] end;
	ands	r0,r8,r0,lsl r9
	beq	.Lj478
# [1009] for k:=0 to yz-1 do
	ldr	r0,[r11, #-68]
	sub	r6,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r6,r7
	blt	.Lj480
	sub	r7,r7,#1
	.balign 4
.Lj481:
# Rescheduled
# [1010] for l:=0 to xz-1 do
	ldr	r0,[r11, #-64]
	add	r7,r7,#1
	sub	r5,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r4,#0
	cmp	r5,r4
	blt	.Lj483
	sub	r4,r4,#1
	.balign 4
.Lj484:
	add	r4,r4,#1
# Rescheduled
# [1011] putpixel(x+j*xz+l,y+i*yz+k,col);
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
	bgt	.Lj484
.Lj483:
	cmp	r6,r7
	bgt	.Lj481
.Lj480:
.Lj478:
	cmp	r9,#7
	blt	.Lj476
	ldr	r0,[r11, #-48]
	cmp	r0,#15
	blt	.Lj473
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le28:
	.size	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT, .Le28 - RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_outtextxy$longint$longint$ansistring$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
# Temps allocated between r13+4 and r13+124
# [1020] begin
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
# [1021] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	add	r2,r13,#4
	add	r1,r13,#16
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #120]
	cmp	r0,#0
	bne	.Lj487
	ldr	r7,[r13]
	cmp	r7,#0
	ldrne	r7,[r7, #-4]
	mov	r8,#1
	cmp	r7,r8
	blt	.Lj491
	sub	r8,r8,#1
	.balign 4
.Lj492:
	add	r8,r8,#1
# Peephole FoldShiftProcess done
# [1022] end;
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
	bgt	.Lj492
.Lj491:
.Lj487:
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
# [1028] begin
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
# [1029] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	sub	r2,r11,#60
	sub	r1,r11,#164
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-168]
	cmp	r0,#0
	bne	.Lj495
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r8,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r8,r7
	blt	.Lj499
	sub	r7,r7,#1
	.balign 4
.Lj500:
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
	bgt	.Lj500
.Lj499:
.Lj495:
	bl	fpc_popaddrstack
# [1030] end;
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
# [1036] begin
# [1039] end;
	bx	r14
.Le31:
	.size	RETROMALINA_$$_SCROLLUP, .Le31 - RETROMALINA_$$_SCROLLUP

.section .text.n_retromalina_$$_sid$longint$$tsample
	.balign 4
.globl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
RETROMALINA_$$_SID$LONGINT$$TSAMPLE:
# Temps allocated between r11-172 and r11-168
# [1119] begin
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
# [1120] sidptr:=@siddata;
	ldr	r0,.Lj553
	str	r1,[r11, #-48]
	str	r0,[r11, #-168]
# [1121] if mode=1 then  // get regs
	cmp	r1,#1
	bne	.Lj555
# [1130] siddata[$56]:=peek($2070003);
	ldr	r0,.Lj556
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
	ldr	r2,.Lj557
	ldrb	r1,[r0]
# Rescheduled
# [1131] siddata[$57]:=peek($2070004);
	ldr	r0,.Lj558
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
	ldr	r2,.Lj559
	ldrb	r1,[r0]
# Rescheduled
# [1132] siddata[$58]:=peek($2070005);
	ldr	r0,.Lj560
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
# Rescheduled
	ldrb	r0,[r0]
	ldr	r1,.Lj561
	str	r0,[r1]
# [1133] siddata[0]:=round(1.0263*(16*peek($200D400)+4096*peek($200d401))); //freq1
	mov	r0,#33554432
	orr	r0,r0,#54272
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj562
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
# [2105] end;
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj563
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj553
# Rescheduled
# [1134] siddata[$10]:=round(1.0263*(16*peek($200d407)+4096*peek($200d408)));
	ldr	r1,.Lj565
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj566
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj567
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj568
# Rescheduled
# [1135] siddata[$20]:=round(1.0263*(16*peek($200d40e)+4096*peek($200d40f)));
	ldr	r1,.Lj569
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj570
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj571
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj572
# Rescheduled
# [1137] siddata[1]:=peek($200d404) and 1;   // gate1
	ldr	r1,.Lj573
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj574
	and	r0,r0,#1
# Rescheduled
# [1138] siddata[2]:=peek($200d404) and 4;  //ring1
	ldr	r1,.Lj573
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj576
	and	r0,r0,#4
# Rescheduled
# [1139] siddata[3]:=peek($200d404) and 8;  // test1
	ldr	r1,.Lj573
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj578
	and	r0,r0,#8
# Rescheduled
# [1140] siddata[4]:=((peek($200d404) and 2) shr 1)-1; //sync1
	ldr	r1,.Lj573
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj580
	sub	r0,r0,#1
# Rescheduled
# [1142] siddata[5]:=peek($200d405) and  $F;   //sd1, 5
	ldr	r1,.Lj581
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj582
	and	r0,r0,#15
# Rescheduled
# [1143] siddata[6]:=peek($200d405) shr 4;     ///sa1, 6
	ldr	r1,.Lj581
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj584
	mov	r0,r0,lsr #4
# Rescheduled
# [1144] siddata[7]:=peek($200d406)and $F;     //sr1 //7
	ldr	r1,.Lj585
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj586
	and	r1,r0,#15
# Rescheduled
# [1145] siddata[$0d]:=(peek($200d406) and $F0) shl 22;      //0d,sussvol1
	ldr	r0,.Lj585
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj588
	mov	r0,r0,lsl #22
# Rescheduled
# [1146] siddata[$53]:=((peek($200d402)+256*peek($200d403)) and $FFF);//
	ldr	r1,.Lj589
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj590
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r0,r0,lsl #20
# Rescheduled
	ldr	r2,.Lj591
	mov	r0,r0,lsr #20
# Rescheduled
# [1148] siddata[$11]:=peek($200d40b) and 1;
	ldr	r1,.Lj592
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj593
	and	r0,r0,#1
# Rescheduled
# [1149] siddata[$12]:=peek($200d40b) and 4;
	ldr	r1,.Lj592
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj595
	and	r0,r0,#4
# Rescheduled
# [1150] siddata[$13]:=peek($200d40b) and 8;
	ldr	r1,.Lj592
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj597
	and	r0,r0,#8
# Rescheduled
# [1151] siddata[$14]:=((peek($200d40b) and 2) shr 1)-1;
	ldr	r1,.Lj592
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj599
	sub	r0,r0,#1
# Rescheduled
# [1152] siddata[$15]:=peek($200d40c) and  $F;
	ldr	r1,.Lj600
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj601
	and	r0,r0,#15
# Rescheduled
# [1153] siddata[$16]:=peek($200d40c) shr 4;
	ldr	r1,.Lj600
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj603
	mov	r0,r0,lsr #4
# Rescheduled
# [1154] siddata[$17]:=peek($200d40d)and $F;
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
# [1155] siddata[$1d]:=(peek($200d40d) and $F0) shl 22;
	ldr	r1,.Lj604
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj607
	mov	r0,r0,lsl #22
# Rescheduled
# [1156] siddata[$54]:=((peek($200d409)+256*peek($200d40a)) and $FFF);
	ldr	r1,.Lj608
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj609
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r2,r0,lsl #20
# Rescheduled
	ldr	r1,.Lj610
	mov	r2,r2,lsr #20
# Rescheduled
# [1158] siddata[$21]:=peek($200d412) and 1;
	ldr	r0,.Lj611
	str	r2,[r1]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj612
	and	r1,r0,#1
# Rescheduled
# [1159] siddata[$22]:=peek($200d412) and 4;
	ldr	r0,.Lj611
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj614
	and	r1,r0,#4
# Rescheduled
# [1160] siddata[$23]:=peek($200d412) and 8;
	ldr	r0,.Lj611
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj616
	and	r0,r0,#8
# Rescheduled
# [1161] siddata[$24]:=((peek($200d412) and 2) shr 1)-1;
	ldr	r1,.Lj611
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj618
	sub	r0,r0,#1
# Rescheduled
# [1162] siddata[$25]:=peek($200d413) and  $F;
	ldr	r1,.Lj619
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj620
	and	r0,r0,#15
# Rescheduled
# [1163] siddata[$26]:=peek($200d413) shr 4;
	ldr	r1,.Lj619
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj622
	mov	r1,r0,lsr #4
# Rescheduled
# [1164] siddata[$27]:=peek($200d414)and $F;
	ldr	r0,.Lj623
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj624
	and	r0,r0,#15
# Rescheduled
# [1165] siddata[$2d]:=(peek($200d414) and $F0) shl 22;
	ldr	r1,.Lj623
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj626
	mov	r0,r0,lsl #22
# Rescheduled
# [1166] siddata[$55]:=((peek($200d410)+256*peek($200d411)) and $FFF);
	ldr	r1,.Lj627
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj628
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
	b	.Lj677
.Lj553:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj556:
	.long	34013187
.Lj557:
	.long	U_$RETROMALINA_$$_SIDDATA+344
.Lj558:
	.long	34013188
.Lj559:
	.long	U_$RETROMALINA_$$_SIDDATA+348
.Lj560:
	.long	34013189
.Lj561:
	.long	U_$RETROMALINA_$$_SIDDATA+352
.Lj562:
	.long	33608705
.Lj563:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj565:
	.long	33608711
.Lj566:
	.long	33608712
.Lj567:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj568:
	.long	U_$RETROMALINA_$$_SIDDATA+64
.Lj569:
	.long	33608718
.Lj570:
	.long	33608719
.Lj571:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj572:
	.long	U_$RETROMALINA_$$_SIDDATA+128
.Lj573:
	.long	33608708
.Lj574:
	.long	U_$RETROMALINA_$$_SIDDATA+4
.Lj576:
	.long	U_$RETROMALINA_$$_SIDDATA+8
.Lj578:
	.long	U_$RETROMALINA_$$_SIDDATA+12
.Lj580:
	.long	U_$RETROMALINA_$$_SIDDATA+16
.Lj581:
	.long	33608709
.Lj582:
	.long	U_$RETROMALINA_$$_SIDDATA+20
.Lj584:
	.long	U_$RETROMALINA_$$_SIDDATA+24
.Lj585:
	.long	33608710
.Lj586:
	.long	U_$RETROMALINA_$$_SIDDATA+28
.Lj588:
	.long	U_$RETROMALINA_$$_SIDDATA+52
.Lj589:
	.long	33608707
.Lj590:
	.long	33608706
.Lj591:
	.long	U_$RETROMALINA_$$_SIDDATA+332
.Lj592:
	.long	33608715
.Lj593:
	.long	U_$RETROMALINA_$$_SIDDATA+68
.Lj595:
	.long	U_$RETROMALINA_$$_SIDDATA+72
.Lj597:
	.long	U_$RETROMALINA_$$_SIDDATA+76
.Lj599:
	.long	U_$RETROMALINA_$$_SIDDATA+80
.Lj600:
	.long	33608716
.Lj601:
	.long	U_$RETROMALINA_$$_SIDDATA+84
.Lj603:
	.long	U_$RETROMALINA_$$_SIDDATA+88
.Lj604:
	.long	33608717
.Lj605:
	.long	U_$RETROMALINA_$$_SIDDATA+92
.Lj607:
	.long	U_$RETROMALINA_$$_SIDDATA+116
.Lj608:
	.long	33608714
.Lj609:
	.long	33608713
.Lj610:
	.long	U_$RETROMALINA_$$_SIDDATA+336
.Lj611:
	.long	33608722
.Lj612:
	.long	U_$RETROMALINA_$$_SIDDATA+132
.Lj614:
	.long	U_$RETROMALINA_$$_SIDDATA+136
.Lj616:
	.long	U_$RETROMALINA_$$_SIDDATA+140
.Lj618:
	.long	U_$RETROMALINA_$$_SIDDATA+144
.Lj619:
	.long	33608723
.Lj620:
	.long	U_$RETROMALINA_$$_SIDDATA+148
.Lj622:
	.long	U_$RETROMALINA_$$_SIDDATA+152
.Lj623:
	.long	33608724
.Lj624:
	.long	U_$RETROMALINA_$$_SIDDATA+156
.Lj626:
	.long	U_$RETROMALINA_$$_SIDDATA+180
.Lj627:
	.long	33608721
.Lj628:
	.long	33608720
.Lj677:
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r1,r0,lsl #20
# Rescheduled
	ldr	r0,.Lj629
	mov	r1,r1,lsr #20
# Rescheduled
# [1171] ff:=(peek($200d416) shl 3)+(peek($200d415) and 7);
	ldr	r2,.Lj630
	str	r1,[r0]
	str	r2,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r2]
# Rescheduled
	ldr	r1,.Lj631
	and	r3,r0,#7
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r2,.Lj632
	add	r1,r3,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj632
	str	r1,[r2]
	ldr	r0,[r0]
# [1172] siddata[$6E]:=(ff shl 1)+(ff shl 2)+32;
	mov	r1,r0,lsl #1
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #2
# Rescheduled
	ldr	r2,.Lj634
	add	r0,r0,#32
# Rescheduled
# [1174] siddata[$59]:=(peek($200d417) and 1); //filter 1
	ldr	r1,.Lj635
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj636
	and	r0,r0,#1
# Rescheduled
# [1175] siddata[$5a]:=(peek($200d417) and 2);
	ldr	r1,.Lj635
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj638
	and	r0,r0,#2
# Rescheduled
# [1176] siddata[$5B]:=(peek($200d417) and 4);
	ldr	r1,.Lj635
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj640
	and	r0,r0,#4
# Rescheduled
# [1177] siddata[$6D]:=(peek($200d418) and $70) shr 4;   // filter output switch
	ldr	r1,.Lj641
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#112
# Rescheduled
	ldr	r2,.Lj642
	mov	r0,r0,lsr #4
# Rescheduled
# [1181] siddata[$6F]:=round(65536.0*(0.5+(0.5/(1+(peek($200d416) shr 4)))));
	ldr	r1,.Lj631
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	mov	r0,r0,lsr #4
	add	r0,r0,#1
	vmov	s0,r0
	vcvt.f32.u32	s0,s0
	vldr	s2,.Lj646
	vdiv.f32	s0,s2,s0
	vldr	s2,.Lj644
	vadd.f32	s0,s2,s0
	vldr	s2,.Lj643
	vmul.f32	s0,s2,s0
	vcvt.f64.f32	d0,s0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj647
# Rescheduled
# [1183] siddata[$70]:=(peek($200d418) and 15); //volume
	ldr	r1,.Lj641
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj649
	and	r0,r0,#15
# Rescheduled
# [1185] siddata[$50]:=peek($200d404) shr 4;
	ldr	r1,.Lj650
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj651
	mov	r0,r0,lsr #4
# Rescheduled
# [1186] siddata[$51]:=peek($200d40b) shr 4;
	ldr	r1,.Lj652
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj653
	mov	r0,r0,lsr #4
# Rescheduled
# [1187] siddata[$52]:=peek($200d412) shr 4; //waveforms
	ldr	r1,.Lj654
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj655
	mov	r0,r0,lsr #4
	str	r0,[r1]
.Lj555:
# [1195] stmfd r13!,{r0-r12}
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [1197] ldr   r7, sidptr
	ldr	r7,[r11, #-168]
# [1198] mov   r0,#0
	mov	r0,#0
# [1199] str   r0,[r7,#0x1a8] //inner loop counter
	str	r0,[r7, #424]
# [1200] str   r0,[r7,#0x1ac] //output
	str	r0,[r7, #428]
# Rescheduled
# [1203] ldr   r6,[r7,#4]
	ldr	r6,[r7, #4]
# [1201] str   r0,[r7,#0x1b0] //output
	str	r0,[r7, #432]
# [1204] cmp   r6,#0
	cmp	r6,#0
# [1205] beq   p101
	beq	.Lj505
# [1206] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1207] mov   r1,r0
	mov	r1,r0
# [1208] cmp   r1,#0
	cmp	r1,#0
# [1209] moveq r0,#1
	moveq	r0,#1
# [1210] cmp   r1,#4
	cmp	r1,#4
# [1211] moveq r0,#1
	moveq	r0,#1
# [1212] b     p102
	b	.Lj506
.Lj505:
# [1214] p101:          mov   r0,#4
	mov	r0,#4
.Lj506:
# [1215] p102:          str   r0,[r7,#0x2C]
	str	r0,[r7, #44]
# [1217] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1218] cmp   r0,#3
	cmp	r0,#3
# [1219] ldreq   r1,[r7,#0x34]
	ldreq	r1,[r7, #52]
# [1220] streq   r1,[r7,#0x30]
	streq	r1,[r7, #48]
# [1221] beq     p103
	beq	.Lj507
# [1223] p107:          cmp   r0,#1
	cmp	r0,#1
# [1224] bne   p104
	bne	.Lj509
# Rescheduled
# [1226] ldr   r2,[r7,#0x18] //sa1
	ldr	r2,[r7, #24]
# [1225] ldr   r1,[r7,#0x30] //adsrvol1
	ldr	r1,[r7, #48]
# [1227] add   r2,#0x40
	add	r2,#64
# [1228] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1229] add   r1,r6
	add	r1,r6
# [1230] str   r1,[r7,#0x30]
	str	r1,[r7, #48]
# [1231] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1232] blt   p103
	blt	.Lj507
# [1233] mov   r0,#2
	mov	r0,#2
# [1234] str   r0,[r7,#0x2c]
	str	r0,[r7, #44]
# [1235] b     p103
	b	.Lj507
.Lj509:
# [1237] p104:          cmp   r0,#2
	cmp	r0,#2
# [1238] bne   p105
	bne	.Lj510
# Rescheduled
# [1240] ldr   r2,[r7,#0x14] //sd1
	ldr	r2,[r7, #20]
# [1239] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1241] add   r2,#0x30
	add	r2,#48
# [1242] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1243] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1244] lsr   r4,#30
	lsr	r4,#30
# [1245] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1247] ldr   r1,[r7,#0x34]
	ldr	r1,[r7, #52]
# [1246] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1248] cmp   r4,r1
	cmp	r4,r1
# [1249] movlt r0,#3
	movlt	r0,#3
# [1250] strlt r0,[r7,#0x2c]
	strlt	r0,[r7, #44]
# [1251] b     p103
	b	.Lj507
.Lj510:
# [1253] p105:          cmp   r0,#4
	cmp	r0,#4
# [1254] bne   p106
	bne	.Lj511
# Rescheduled
# [1256] ldr   r2,[r7,#0x1c] //sr1
	ldr	r2,[r7, #28]
# [1255] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1257] add   r2,#0x30
	add	r2,#48
# [1258] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1259] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1260] lsr   r4,#30
	lsr	r4,#30
# [1261] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1262] cmp   r4,#0x10000
	cmp	r4,#65536
# [1263] movlt r4,#0
	movlt	r4,#0
# [1264] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1265] strlt r4,[r7,#0x2c]
	strlt	r4,[r7, #44]
# [1266] b     p103
	b	.Lj507
.Lj511:
# [1268] p106:          mov   r0,#0
	mov	r0,#0
# [1269] str   r0,[r7,#0x30]
	str	r0,[r7, #48]
.Lj507:
# [1273] p103:          ldr   r6,[r7,#0x44]
	ldr	r6,[r7, #68]
# [1274] cmp   r6,#0
	cmp	r6,#0
# [1275] beq   p111
	beq	.Lj512
# [1276] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1277] mov   r1,r0
	mov	r1,r0
# [1278] cmp   r1,#0
	cmp	r1,#0
# [1279] moveq r0,#1
	moveq	r0,#1
# [1280] cmp   r1,#4
	cmp	r1,#4
# [1281] moveq r0,#1
	moveq	r0,#1
# [1282] b     p112
	b	.Lj513
.Lj512:
# [1284] p111:          mov   r0,#4
	mov	r0,#4
.Lj513:
# [1285] p112:          str   r0,[r7,#0x6C]
	str	r0,[r7, #108]
# [1287] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1288] cmp   r0,#3
	cmp	r0,#3
# [1289] ldreq   r1,[r7,#0x74]
	ldreq	r1,[r7, #116]
# [1290] streq   r1,[r7,#0x70]
	streq	r1,[r7, #112]
# [1291] beq     p113
	beq	.Lj514
# [1293] p117:          cmp   r0,#1
	cmp	r0,#1
# [1294] bne   p114
	bne	.Lj516
# Rescheduled
# [1296] ldr   r2,[r7,#0x58] //sa1
	ldr	r2,[r7, #88]
# [1295] ldr   r1,[r7,#0x70] //adsrvol1
	ldr	r1,[r7, #112]
# [1297] add   r2,#0x40
	add	r2,#64
# [1298] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1299] add   r1,r6
	add	r1,r6
# [1300] str   r1,[r7,#0x70]
	str	r1,[r7, #112]
# [1301] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1302] blt   p113
	blt	.Lj514
# [1303] mov   r0,#2
	mov	r0,#2
# [1304] str   r0,[r7,#0x6c]
	str	r0,[r7, #108]
# [1305] b     p113
	b	.Lj514
.Lj516:
# [1307] p114:          cmp   r0,#2
	cmp	r0,#2
# [1308] bne   p115
	bne	.Lj517
# Rescheduled
# [1310] ldr   r2,[r7,#0x54] //sd1
	ldr	r2,[r7, #84]
# [1309] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1311] add   r2,#0x30
	add	r2,#48
# [1312] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1313] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1314] lsr   r4,#30
	lsr	r4,#30
# [1315] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1317] ldr   r1,[r7,#0x74]
	ldr	r1,[r7, #116]
# [1316] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1318] cmp   r4,r1
	cmp	r4,r1
# [1319] movlt r0,#3
	movlt	r0,#3
# [1320] strlt r0,[r7,#0x6c]
	strlt	r0,[r7, #108]
# [1321] b     p113
	b	.Lj514
.Lj517:
# [1323] p115:          cmp   r0,#4
	cmp	r0,#4
# [1324] bne   p116
	bne	.Lj518
# Rescheduled
# [1326] ldr   r2,[r7,#0x5c] //sr1
	ldr	r2,[r7, #92]
# [1325] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1327] add   r2,#0x30
	add	r2,#48
# [1328] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1329] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1330] lsr   r4,#30
	lsr	r4,#30
# [1331] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1332] cmp   r4,#0x10000
	cmp	r4,#65536
# [1333] movlt r4,#0
	movlt	r4,#0
# [1334] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1335] strlt r4,[r7,#0x6c]
	strlt	r4,[r7, #108]
# [1336] b     p113
	b	.Lj514
.Lj518:
# [1338] p116:          mov   r0,#0
	mov	r0,#0
# [1339] str   r0,[r7,#0x70]
	str	r0,[r7, #112]
.Lj514:
# [1343] p113:          ldr   r6,[r7,#0x84]
	ldr	r6,[r7, #132]
# [1344] cmp   r6,#0
	cmp	r6,#0
# [1345] beq   p121
	beq	.Lj519
# [1346] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1347] mov   r1,r0
	mov	r1,r0
# [1348] cmp   r1,#0
	cmp	r1,#0
# [1349] moveq r0,#1
	moveq	r0,#1
# [1350] cmp   r1,#4
	cmp	r1,#4
# [1351] moveq r0,#1
	moveq	r0,#1
# [1352] b     p122
	b	.Lj520
.Lj519:
# [1354] p121:          mov   r0,#4
	mov	r0,#4
.Lj520:
# [1355] p122:          str   r0,[r7,#0xaC]
	str	r0,[r7, #172]
# [1357] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1358] cmp   r0,#3
	cmp	r0,#3
# [1359] ldreq   r1,[r7,#0xb4]
	ldreq	r1,[r7, #180]
# [1360] streq   r1,[r7,#0xb0]
	streq	r1,[r7, #176]
# [1361] beq     p123
	beq	.Lj521
# [1363] p127:          cmp   r0,#1
	cmp	r0,#1
# [1364] bne   p124
	bne	.Lj523
# Rescheduled
# [1366] ldr   r2,[r7,#0x98] //sa1
	ldr	r2,[r7, #152]
# [1365] ldr   r1,[r7,#0xb0] //adsrvol1
	ldr	r1,[r7, #176]
# [1367] add   r2,#0x40
	add	r2,#64
# [1368] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1369] add   r1,r6
	add	r1,r6
# [1370] str   r1,[r7,#0xb0]
	str	r1,[r7, #176]
# [1371] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1372] blt   p123
	blt	.Lj521
# [1373] mov   r0,#2
	mov	r0,#2
# [1374] str   r0,[r7,#0xac]
	str	r0,[r7, #172]
# [1375] b     p123
	b	.Lj521
.Lj523:
# [1377] p124:          cmp   r0,#2
	cmp	r0,#2
# [1378] bne   p125
	bne	.Lj524
# Rescheduled
# [1380] ldr   r2,[r7,#0x94] //sd1
	ldr	r2,[r7, #148]
# [1379] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1381] add   r2,#0x30
	add	r2,#48
# [1382] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1383] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1384] lsr   r4,#30
	lsr	r4,#30
# [1385] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1387] ldr   r1,[r7,#0xb4]
	ldr	r1,[r7, #180]
	b	.Lj678
.Lj629:
	.long	U_$RETROMALINA_$$_SIDDATA+340
.Lj630:
	.long	33608725
.Lj631:
	.long	33608726
.Lj632:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
.Lj634:
	.long	U_$RETROMALINA_$$_SIDDATA+440
.Lj635:
	.long	33608727
.Lj636:
	.long	U_$RETROMALINA_$$_SIDDATA+356
.Lj638:
	.long	U_$RETROMALINA_$$_SIDDATA+360
.Lj640:
	.long	U_$RETROMALINA_$$_SIDDATA+364
.Lj641:
	.long	33608728
.Lj642:
	.long	U_$RETROMALINA_$$_SIDDATA+436
.Lj646:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj644:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj643:
# value: 0d+6.553600000E+04
	.byte	0,0,128,71
.Lj647:
	.long	U_$RETROMALINA_$$_SIDDATA+444
.Lj649:
	.long	U_$RETROMALINA_$$_SIDDATA+448
.Lj650:
	.long	33608708
.Lj651:
	.long	U_$RETROMALINA_$$_SIDDATA+320
.Lj652:
	.long	33608715
.Lj653:
	.long	U_$RETROMALINA_$$_SIDDATA+324
.Lj654:
	.long	33608722
.Lj655:
	.long	U_$RETROMALINA_$$_SIDDATA+328
.Lj678:
# [1386] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1388] cmp   r4,r1
	cmp	r4,r1
# [1389] movlt r0,#3
	movlt	r0,#3
# [1390] strlt r0,[r7,#0xac]
	strlt	r0,[r7, #172]
# [1391] b     p123
	b	.Lj521
.Lj524:
# [1393] p125:          cmp   r0,#4
	cmp	r0,#4
# [1394] bne   p126
	bne	.Lj525
# Rescheduled
# [1396] ldr   r2,[r7,#0x9c] //sr1
	ldr	r2,[r7, #156]
# [1395] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1397] add   r2,#0x30
	add	r2,#48
# [1398] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1399] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1400] lsr   r4,#30
	lsr	r4,#30
# [1401] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1402] cmp   r4,#0x10000
	cmp	r4,#65536
# [1403] movlt r4,#0
	movlt	r4,#0
# [1404] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1405] strlt r4,[r7,#0xbc]
	strlt	r4,[r7, #188]
# [1406] b     p123
	b	.Lj521
.Lj525:
# [1408] p126:          mov   r0,#0
	mov	r0,#0
# [1409] str   r0,[r7,#0xb0]
	str	r0,[r7, #176]
.Lj521:
# [1412] mov r0,#10
	mov	r0,#10
# [1413] str r0,[r7,#0x1fc]
	str	r0,[r7, #508]
.Lj526:
# [1430] p297:               ldr   r4,sidptr
	ldr	r4,[r11, #-168]
# Rescheduled
# Rescheduled
# [1434] ldr   r0,[r4,#0x20]
	ldr	r0,[r4, #32]
# [1435] ldr   r3,[r4,#0x00]
	ldr	r3,[r4]
# [1436] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1437] ldrcs r1,[r4,#0x60]
	ldrcs	r1,[r4, #96]
# [1438] ldrcs r2,[r4,#0x50]
	ldrcs	r2,[r4, #80]
# [1439] andcs r1,r2
	andcs	r1,r2
# [1440] strcs r1,[r4,#0x60]
	strcs	r1,[r4, #96]
# [1441] ldr   r1,[r4,#0x0c]
	ldr	r1,[r4, #12]
# [1442] cmp   r1,#0
	cmp	r1,#0
# [1443] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1446] ldr r2,[r4,#0x24]
	ldr	r2,[r4, #36]
# [1444] str r0,[r4,#0x20]
	str	r0,[r4, #32]
# [1447] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1448] movcs r1,#1
	movcs	r1,#1
# [1449] movcc r1,#0
	movcc	r1,#0
# [1450] str   r2,[r4,#0x24]
	str	r2,[r4, #36]
# [1451] str   r1,[r4,#0x3c]
	str	r1,[r4, #60]
# [1455] ldr r1,[r4,#0x140]
	ldr	r1,[r4, #320]
# [1456] cmp r1,#2
	cmp	r1,#2
# [1457] bne p205
	bne	.Lj527
# [1458] lsr r0,#8
	lsr	r0,#8
# [1459] sub r0,#8388608
	sub	r0,#8388608
# [1460] str r0,[r4,#0x28]
	str	r0,[r4, #40]
# [1461] b p204
	b	.Lj528
.Lj527:
# [1463] p205:          cmp r1,#1
	cmp	r1,#1
# [1464] bne p201
	bne	.Lj529
# [1465] mov r5,r0                // triangle
	mov	r5,r0
# [1466] lsls r5,#1
	lsls	r5,#1
# [1467] mvncs r5,r5
	mvncs	r5,r5
# [1468] ldr r6,[r4,#0x08]
	ldr	r6,[r4, #8]
# [1469] cmp r6,#0
	cmp	r6,#0
# [1470] ldrne r6,[r4,#0xa0]
	ldrne	r6,[r4, #160]
# [1471] lsls r6,#1
	lsls	r6,#1
# [1472] negcs r5,r5
	negcs	r5,r5
# [1473] lsr r5,#8
	lsr	r5,#8
# [1474] sub r5,#8388608
	sub	r5,#8388608
# [1475] str r5,[r4,#0x28]
	str	r5,[r4, #40]
# [1476] b p204
	b	.Lj528
.Lj529:
# [1478] p201:          cmp r1,#4
	cmp	r1,#4
# [1479] bne p203
	bne	.Lj530
# Rescheduled
# [1481] ldr r7,[r4,#0x14c]
	ldr	r7,[r4, #332]
# [1480] mov r6,r0,lsr #20        //square r6
	mov	r6,r0,lsr #20
# [1482] cmp r6,r7
	cmp	r6,r7
# [1483] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1484] movlt r6,#0
	movlt	r6,#0
# [1485] sub r6,#8388608
	sub	r6,#8388608
# [1486] str r6,[r4,#0x28]
	str	r6,[r4, #40]
# [1487] b p204
	b	.Lj528
.Lj530:
# [1489] p203:          cmp r1,#3
	cmp	r1,#3
# [1490] bne p206
	bne	.Lj531
# [1491] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1492] and r6,#0x000003FC
	and	r6,#1020
# [1493] add r6,#0x200
	add	r6,#512
# [1494] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1495] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1496] b p204
	b	.Lj528
.Lj531:
# [1498] p206:          cmp r1,#5
	cmp	r1,#5
# [1499] bne p207
	bne	.Lj532
# [1500] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1501] and r6,#0x000003FC
	and	r6,#1020
# [1502] add r6,#0x600
	add	r6,#1536
# [1503] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1504] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1505] b p204
	b	.Lj528
.Lj532:
# [1507] p207:          cmp r1,#6
	cmp	r1,#6
# [1508] bne p208
	bne	.Lj533
# [1509] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1510] and r6,#0x000003FC
	and	r6,#1020
# [1511] add r6,#0xa00
	add	r6,#2560
# [1512] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1513] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1514] b p204
	b	.Lj528
.Lj533:
# [1516] p208:          cmp r1,#7
	cmp	r1,#7
# [1517] bne p209
	bne	.Lj534
# [1518] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1519] and r6,#0x000003FC
	and	r6,#1020
# [1520] add r6,#0xe00
	add	r6,#3584
# [1521] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1522] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1523] b p204
	b	.Lj528
.Lj534:
# [1525] p209:          cmp r1,#8                // noise
	cmp	r1,#8
# [1526] bne p204
	bne	.Lj528
# [1527] ldr r7,[r4,#0x3C]
	ldr	r7,[r4, #60]
# [1528] cmp r7,#1
	cmp	r7,#1
# [1529] bne p204
	bne	.Lj528
# [1531] mov   r7,#0
	mov	r7,#0
# [1532] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1534] ldr   r0,[r4,#0x38]
	ldr	r0,[r4, #56]
# [1533] mov   r3,#0
	mov	r3,#0
# [1535] tst   r0,#4194304
	tst	r0,#4194304
# [1536] orrne r7,#128
	orrne	r7,#128
# [1537] orrne r2,#1
	orrne	r2,#1
# [1538] tst   r0,#1048576
	tst	r0,#1048576
# [1539] orrne r7,#64
	orrne	r7,#64
# [1540] tst   r0,#65536
	tst	r0,#65536
# [1541] orrne r7,#32
	orrne	r7,#32
# [1542] tst   r0,#8192
	tst	r0,#8192
# [1543] orrne r7,#16
	orrne	r7,#16
# [1544] tst   r0,#2048
	tst	r0,#2048
# [1545] orrne r7,#8
	orrne	r7,#8
# [1546] tst   r0,#128
	tst	r0,#128
# [1547] orrne r7,#4
	orrne	r7,#4
# [1548] tst   r0,#16
	tst	r0,#16
# [1549] orrne r7,#2
	orrne	r7,#2
# [1550] tst   r0,#4
	tst	r0,#4
# [1551] orrne r7,#1
	orrne	r7,#1
# [1552] tst   r0,#131072
	tst	r0,#131072
# [1553] orrne r3,#1
	orrne	r3,#1
# [1554] eor   r2,r3
	eor	r2,r3
# [1555] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1556] str   r2,[r4,#0x38]
	str	r2,[r4, #56]
# [1557] sub   r7,#128
	sub	r7,#128
# [1558] lsl   r7,#16
	lsl	r7,#16
# [1559] str   r7,[r4,#0x28]
	str	r7,[r4, #40]
.Lj528:
# Rescheduled
# Rescheduled
# [1563] p204:          ldr   r0,[r4,#0x60]
	ldr	r0,[r4, #96]
# [1564] ldr   r3,[r4,#0x40]
	ldr	r3,[r4, #64]
# [1565] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1566] ldrcs r1,[r4,#0xa0]
	ldrcs	r1,[r4, #160]
# [1567] ldrcs r2,[r4,#0x90]
	ldrcs	r2,[r4, #144]
# [1568] andcs r1,r2
	andcs	r1,r2
# [1569] strcs r1,[r4,#0xa0]
	strcs	r1,[r4, #160]
# [1570] ldr   r1,[r4,#0x4c]
	ldr	r1,[r4, #76]
# [1571] cmp   r1,#0
	cmp	r1,#0
# [1572] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1575] ldr r2, [r4,#0x64]
	ldr	r2,[r4, #100]
# [1573] str r0,[r4,#0x60]
	str	r0,[r4, #96]
# [1576] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1577] movcs r1,#1
	movcs	r1,#1
# [1578] movcc r1,#0
	movcc	r1,#0
# [1579] str  r2,[r4,#0x64]
	str	r2,[r4, #100]
# [1580] str  r1,[r4,#0x7c]
	str	r1,[r4, #124]
# [1585] ldr r1,[r4,#0x144]
	ldr	r1,[r4, #324]
# [1586] cmp r1,#2
	cmp	r1,#2
# [1587] bne p215
	bne	.Lj535
# [1588] lsr r0,#8
	lsr	r0,#8
# [1589] sub r0,#8388608
	sub	r0,#8388608
# [1590] str r0,[r4,#0x68]
	str	r0,[r4, #104]
# [1591] b p214
	b	.Lj536
.Lj535:
# [1593] p215:          cmp r1,#1
	cmp	r1,#1
# [1594] bne p211
	bne	.Lj537
# [1595] mov r5,r0             // triangle
	mov	r5,r0
# [1596] lsls r5,#1
	lsls	r5,#1
# [1597] mvncs r5,r5
	mvncs	r5,r5
# [1598] lsr r5,#8
	lsr	r5,#8
# Rescheduled
# [1600] ldr r6,[r4,#0x48]
	ldr	r6,[r4, #72]
# [1599] sub r5,#8388608
	sub	r5,#8388608
# [1601] cmp r6,#0
	cmp	r6,#0
# [1602] ldrne r6,[r4,#0x20]
	ldrne	r6,[r4, #32]
# [1603] lsls r6,#1
	lsls	r6,#1
# [1604] negcs r5,r5
	negcs	r5,r5
# [1605] str r5,[r4,#0x68]
	str	r5,[r4, #104]
# [1606] b p214
	b	.Lj536
.Lj537:
# [1608] p211:          cmp r1,#4
	cmp	r1,#4
# [1609] bne p213
	bne	.Lj538
# Rescheduled
# [1611] ldr r7,[r4,#0x150]
	ldr	r7,[r4, #336]
# [1610] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1612] cmp r6,r7
	cmp	r6,r7
# [1613] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1614] movlt r6,#0
	movlt	r6,#0
# [1615] sub r6,#8388608
	sub	r6,#8388608
# [1616] str r6,[r4,#0x68]
	str	r6,[r4, #104]
# [1617] b p214
	b	.Lj536
.Lj538:
# [1619] p213:          cmp r1,#3
	cmp	r1,#3
# [1620] bne p216
	bne	.Lj539
# [1621] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1622] and r6,#0x000003FC
	and	r6,#1020
# [1623] add r6,#0x200
	add	r6,#512
# [1624] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1625] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1626] b p214
	b	.Lj536
.Lj539:
# [1628] p216:          cmp r1,#5
	cmp	r1,#5
# [1629] bne p217
	bne	.Lj540
# [1630] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1631] and r6,#0x000003FC
	and	r6,#1020
# [1632] add r6,#0x600
	add	r6,#1536
# [1633] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1634] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1635] b p214
	b	.Lj536
.Lj540:
# [1637] p217:          cmp r1,#6
	cmp	r1,#6
# [1638] bne p218
	bne	.Lj541
# [1639] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1640] and r6,#0x000003FC
	and	r6,#1020
# [1641] add r6,#0xa00
	add	r6,#2560
# [1642] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1643] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1644] b p214
	b	.Lj536
.Lj541:
# [1646] p218:          cmp r1,#7
	cmp	r1,#7
# [1647] bne p219
	bne	.Lj542
# [1648] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1649] and r6,#0x000003FC
	and	r6,#1020
# [1650] add r6,#0xe00
	add	r6,#3584
# [1651] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1652] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1653] b p214
	b	.Lj536
.Lj542:
# [1655] p219:          cmp r1,#8    // noise
	cmp	r1,#8
# [1656] bne p214
	bne	.Lj536
# [1657] p212:          ldr r7,[r4,#0x7C]
	ldr	r7,[r4, #124]
# [1658] cmp r7,#1
	cmp	r7,#1
# [1659] bne p214
	bne	.Lj536
# [1661] mov   r7,#0
	mov	r7,#0
# [1662] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1664] ldr   r0,[r4,#0x78]
	ldr	r0,[r4, #120]
# [1663] mov   r3,#0
	mov	r3,#0
# [1665] tst   r0,#4194304
	tst	r0,#4194304
# [1666] orrne r7,#128
	orrne	r7,#128
# [1667] orrne r2,#1
	orrne	r2,#1
# [1668] tst   r0,#1048576
	tst	r0,#1048576
# [1669] orrne r7,#64
	orrne	r7,#64
# [1670] tst   r0,#65536
	tst	r0,#65536
# [1671] orrne r7,#32
	orrne	r7,#32
# [1672] tst   r0,#8192
	tst	r0,#8192
# [1673] orrne r7,#16
	orrne	r7,#16
# [1674] tst   r0,#2048
	tst	r0,#2048
# [1675] orrne r7,#8
	orrne	r7,#8
# [1676] tst   r0,#128
	tst	r0,#128
# [1677] orrne r7,#4
	orrne	r7,#4
# [1678] tst   r0,#16
	tst	r0,#16
# [1679] orrne r7,#2
	orrne	r7,#2
# [1680] tst   r0,#4
	tst	r0,#4
# [1681] orrne r7,#1
	orrne	r7,#1
# [1682] tst   r0,#131072
	tst	r0,#131072
# [1683] orrne r3,#1
	orrne	r3,#1
# [1684] eor   r2,r3
	eor	r2,r3
# [1685] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1686] str   r2,[r4,#0x78]
	str	r2,[r4, #120]
# [1687] lsl   r7,#16
	lsl	r7,#16
# [1688] sub   r7,#8388608
	sub	r7,#8388608
# [1689] str   r7,[r4,#0x68]
	str	r7,[r4, #104]
.Lj536:
# Rescheduled
# Rescheduled
# [1694] p214:          ldr   r0,[r4,#0xa0]
	ldr	r0,[r4, #160]
# [1695] ldr   r3,[r4,#0x80]
	ldr	r3,[r4, #128]
# [1696] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1697] ldrcs r1,[r4,#0x20]
	ldrcs	r1,[r4, #32]
# [1698] ldrcs r2,[r4,#0x10]
	ldrcs	r2,[r4, #16]
# [1699] andcs r1,r2
	andcs	r1,r2
# [1700] strcs r1,[r4,#0x20]
	strcs	r1,[r4, #32]
# [1701] ldr   r1,[r4,#0x8c]
	ldr	r1,[r4, #140]
# [1702] cmp   r1,#0
	cmp	r1,#0
# [1703] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1706] ldr r2,[r4,#0xa4]
	ldr	r2,[r4, #164]
# [1704] str r0,[r4,#0xa0]
	str	r0,[r4, #160]
# [1707] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1708] movcs r1,#1
	movcs	r1,#1
# [1709] movcc r1,#0
	movcc	r1,#0
# [1710] str   r2,[r4,#0xa4]
	str	r2,[r4, #164]
# [1711] str   r1,[r4,#0xbc]
	str	r1,[r4, #188]
# [1716] ldr r1,[r4,#0x148]
	ldr	r1,[r4, #328]
# [1717] cmp r1,#2
	cmp	r1,#2
# [1718] bne p225
	bne	.Lj544
# [1719] lsr r0,#8
	lsr	r0,#8
# [1720] sub r0,#8388608
	sub	r0,#8388608
# [1721] str r0,[r4,#0xa8]
	str	r0,[r4, #168]
# [1722] b p224
	b	.Lj545
.Lj544:
# [1724] p225:          cmp r1,#1
	cmp	r1,#1
# [1725] bne p221
	bne	.Lj546
# [1726] mov r5,r0             // triangle
	mov	r5,r0
# [1727] lsls r5,#1
	lsls	r5,#1
# [1728] mvncs r5,r5
	mvncs	r5,r5
# [1729] ldr r6,[r4,#0x88]
	ldr	r6,[r4, #136]
# [1730] cmp r6,#0
	cmp	r6,#0
# [1731] ldrne r6,[r4,#0x60]
	ldrne	r6,[r4, #96]
# [1732] lsls r6,#1
	lsls	r6,#1
# [1733] negcs r5,r5
	negcs	r5,r5
# [1734] lsr r5,#8
	lsr	r5,#8
# [1735] sub r5,#8388608
	sub	r5,#8388608
# [1736] str r5,[r4,#0xa8]
	str	r5,[r4, #168]
# [1737] b p224
	b	.Lj545
.Lj546:
# [1739] p221:          cmp r1,#4
	cmp	r1,#4
# [1740] bne p223
	bne	.Lj547
# Rescheduled
# [1742] ldr r7,[r4,#0x154]
	ldr	r7,[r4, #340]
# [1741] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1743] cmp r6,r7
	cmp	r6,r7
# [1744] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1745] movlt r6,#0
	movlt	r6,#0
# [1746] sub r6,#8388608
	sub	r6,#8388608
# [1747] str r6,[r4,#0xa8]
	str	r6,[r4, #168]
# [1748] b p224
	b	.Lj545
.Lj547:
# [1750] p223:          cmp r1,#3
	cmp	r1,#3
# [1751] bne p226
	bne	.Lj548
# [1752] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1753] and r6,#0x000003FC
	and	r6,#1020
# [1754] add r6,#0x200
	add	r6,#512
# [1755] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1756] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1757] b p224
	b	.Lj545
.Lj548:
# [1759] p226:          cmp r1,#5
	cmp	r1,#5
# [1760] bne p227
	bne	.Lj549
# [1761] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1762] and r6,#0x000003FC
	and	r6,#1020
# [1763] add r6,#0x600
	add	r6,#1536
# [1764] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1765] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1766] b p224
	b	.Lj545
.Lj549:
# [1768] p227:          cmp r1,#6
	cmp	r1,#6
# [1769] bne p228
	bne	.Lj550
# [1770] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1771] and r6,#0x000003FC
	and	r6,#1020
# [1772] add r6,#0xa00
	add	r6,#2560
# [1773] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1774] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1775] b p224
	b	.Lj545
.Lj550:
# [1777] p228:          cmp r1,#7
	cmp	r1,#7
# [1778] bne p229
	bne	.Lj551
# [1779] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1780] and r6,#0x000003FC
	and	r6,#1020
# [1781] add r6,#0xe00
	add	r6,#3584
# [1782] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1783] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1784] b p224
	b	.Lj545
.Lj551:
# [1786] p229:          cmp r1,#8    // noise
	cmp	r1,#8
# [1787] bne p224
	bne	.Lj545
# [1788] ldr r7,[r4,#0xbC]
	ldr	r7,[r4, #188]
# [1789] cmp r7,#1
	cmp	r7,#1
# [1790] bne p224
	bne	.Lj545
# [1792] mov   r7,#0
	mov	r7,#0
# [1793] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1795] ldr   r0,[r4,#0xb8]
	ldr	r0,[r4, #184]
# [1794] mov   r3,#0
	mov	r3,#0
# [1796] tst   r0,#4194304
	tst	r0,#4194304
# [1797] orrne r7,#128
	orrne	r7,#128
# [1798] orrne r2,#1
	orrne	r2,#1
# [1799] tst   r0,#1048576
	tst	r0,#1048576
# [1800] orrne r7,#64
	orrne	r7,#64
# [1801] tst   r0,#65536
	tst	r0,#65536
# [1802] orrne r7,#32
	orrne	r7,#32
# [1803] tst   r0,#8192
	tst	r0,#8192
# [1804] orrne r7,#16
	orrne	r7,#16
# [1805] tst   r0,#2048
	tst	r0,#2048
# [1806] orrne r7,#8
	orrne	r7,#8
# [1807] tst   r0,#128
	tst	r0,#128
# [1808] orrne r7,#4
	orrne	r7,#4
# [1809] tst   r0,#16
	tst	r0,#16
# [1810] orrne r7,#2
	orrne	r7,#2
# [1811] tst   r0,#4
	tst	r0,#4
# [1812] orrne r7,#1
	orrne	r7,#1
# [1813] tst   r0,#131072
	tst	r0,#131072
# [1814] orrne r3,#1
	orrne	r3,#1
# [1815] eor   r2,r3
	eor	r2,r3
# [1816] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1817] str   r2,[r4,#0xb8]
	str	r2,[r4, #184]
# [1818] sub   r7,#128
	sub	r7,#128
# [1819] lsl   r7,#16
	lsl	r7,#16
# [1820] p222:          str   r7,[r4,#0xa8]
	str	r7,[r4, #168]
.Lj545:
# Rescheduled
# Rescheduled
# [1824] p224:          ldr r0,[r4,#0x30]
	ldr	r0,[r4, #48]
# [1825] ldr r1,[r4,#0x28]
	ldr	r1,[r4, #40]
# [1826] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1827] ldr r0,[r4,#0x158]
	ldr	r0,[r4, #344]
# [1828] cmp r0,#0
	cmp	r0,#0
# [1829] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1831] ldr r0,[r4,#0x164]
	ldr	r0,[r4, #356]
# [1830] asr r3,#1
	asr	r3,#1
# [1832] cmp r0,#0
	cmp	r0,#0
# [1833] moveq r2,#0
	moveq	r2,#0
# [1834] movne r2,r3
	movne	r2,r3
# [1835] movne r3,#0
	movne	r3,#0
# [1836] str r3,[r4,#0x1c4]
	str	r3,[r4, #452]
# [1837] str r2,[r4,#0x170]
	str	r2,[r4, #368]
# Rescheduled
# Rescheduled
# [1840] ldr r0,[r4,#0x70]
	ldr	r0,[r4, #112]
# [1841] ldr r1,[r4,#0x68]
	ldr	r1,[r4, #104]
# [1842] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1843] ldr r0,[r4,#0x15c]
	ldr	r0,[r4, #348]
# [1844] cmp r0,#0
	cmp	r0,#0
# [1845] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1847] ldr r0,[r4,#0x168]
	ldr	r0,[r4, #360]
# [1846] asr r3,#1
	asr	r3,#1
# [1848] cmp r0,#0
	cmp	r0,#0
# [1849] moveq r2,#0
	moveq	r2,#0
# [1850] movne r2,r3
	movne	r2,r3
# [1851] movne r3,#0
	movne	r3,#0
# [1852] str r3,[r4,#0x1c8]
	str	r3,[r4, #456]
# [1853] str r2,[r4,#0x174]
	str	r2,[r4, #372]
# Rescheduled
# Rescheduled
# [1855] ldr r0,[r4,#0xb0]
	ldr	r0,[r4, #176]
# [1856] ldr r1,[r4,#0xa8]
	ldr	r1,[r4, #168]
# [1857] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1858] ldr r0,[r4,#0x160]
	ldr	r0,[r4, #352]
# [1859] cmp r0,#0
	cmp	r0,#0
# [1860] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1862] ldr r0,[r4,#0x16c]
	ldr	r0,[r4, #364]
# [1861] asr r3,#1
	asr	r3,#1
# [1863] cmp r0,#0
	cmp	r0,#0
# [1864] moveq r2,#0
	moveq	r2,#0
# [1865] movne r2,r3
	movne	r2,r3
# [1866] movne r3,#0
	movne	r3,#0
# [1867] str r3,[r4,#0x1cc]
	str	r3,[r4, #460]
# [1868] str r2,[r4,#0x178]
	str	r2,[r4, #376]
# [1872] mov r7,r4
	mov	r7,r4
# Rescheduled
# [1874] ldr r1,[r7,#0x1b8] //ffi
	ldr	r1,[r7, #440]
# [1873] ldr r3,[r7,#0x1bc] //fri
	ldr	r3,[r7, #444]
# [1875] lsl r1,#1
	lsl	r1,#1
# [1876] ldr r6,[r7,#0x1b4]  // bandpass switch
	ldr	r6,[r7, #436]
# [1877] mov r9, #0  // init output L
	mov	r9,#0
# Rescheduled
# [1882] ldr r2,[r7,#0x180]
	ldr	r2,[r7, #384]
# [1878] mov r10,#0  // init output R
	mov	r10,#0
# [1883] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1884] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1886] ldr r0,[r7,#0x170]
	ldr	r0,[r7, #368]
# [1885] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1888] ldr r4,[r7,#0x184]
	ldr	r4,[r7, #388]
# [1887] sub r0,r5
	sub	r0,r5
# [1889] sub r0,r4
	sub	r0,r4
# [1890] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1891] lsr r5,#18
	lsr	r5,#18
# [1892] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1893] add r2,r5
	add	r2,r5
# [1894] str r2,[r7,#0x180]
	str	r2,[r7, #384]
# [1895] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1896] lsr r5,#18
	lsr	r5,#18
# [1897] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1898] add r4,r5
	add	r4,r5
# [1899] str r4,[r7,#0x184]
	str	r4,[r7, #388]
# [1903] ldr r5,[r7,#0x1c4]
	ldr	r5,[r7, #452]
# [1904] tst r6,#0x2
	tst	r6,#2
# [1905] addne r5,r2
	addne	r5,r2
# [1906] tst r6,#0x1
	tst	r6,#1
# [1907] addne r5,r4
	addne	r5,r4
# [1908] tst r6,#0x4
	tst	r6,#4
# [1909] addne r5,r0
	addne	r5,r0
# [1913] mov r9,r5
	mov	r9,r5
# [1914] asr r5,#1
	asr	r5,#1
# Rescheduled
# [1919] ldr r2,[r7,#0x188]
	ldr	r2,[r7, #392]
# [1915] mov r10,r5
	mov	r10,r5
# [1920] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1921] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1923] ldr r0,[r7,#0x174]
	ldr	r0,[r7, #372]
# [1922] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1925] ldr r4,[r7,#0x18c]
	ldr	r4,[r7, #396]
# [1924] sub r0,r5
	sub	r0,r5
# [1926] sub r0,r4
	sub	r0,r4
# [1927] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1928] lsr r5,#18
	lsr	r5,#18
# [1929] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1930] add r2,r5
	add	r2,r5
# [1931] str r2,[r7,#0x188]
	str	r2,[r7, #392]
# [1932] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1933] lsr r5,#18
	lsr	r5,#18
# [1934] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1935] add r4,r5
	add	r4,r5
# [1936] str r4,[r7,#0x18c]
	str	r4,[r7, #396]
# [1940] ldr r5,[r7,#0x1c8]
	ldr	r5,[r7, #456]
# [1941] tst r6,#0x2
	tst	r6,#2
# [1942] addne r5,r2
	addne	r5,r2
# [1943] tst r6,#0x1
	tst	r6,#1
# [1944] addne r5,r4
	addne	r5,r4
# [1945] tst r6,#0x4
	tst	r6,#4
# [1946] addne r5,r0
	addne	r5,r0
# [1950] asr r5,#1
	asr	r5,#1
# [1951] add r9,r5
	add	r9,r5
# [1952] add r10,r5
	add	r10,r5
# [1953] asr r5,#1
	asr	r5,#1
# [1954] add r9,r5
	add	r9,r5
# Rescheduled
# [1959] ldr r2,[r7,#0x190]
	ldr	r2,[r7, #400]
# [1955] add r10,r5
	add	r10,r5
# [1960] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1961] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1963] ldr r0,[r7,#0x178]
	ldr	r0,[r7, #376]
# [1962] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1965] ldr r4,[r7,#0x194]
	ldr	r4,[r7, #404]
# [1964] sub r0,r5
	sub	r0,r5
# [1966] sub r0,r4
	sub	r0,r4
# [1967] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1968] lsr r5,#18
	lsr	r5,#18
# [1969] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1970] add r2,r5
	add	r2,r5
# [1971] str r2,[r7,#0x190]
	str	r2,[r7, #400]
# [1972] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1973] lsr r5,#18
	lsr	r5,#18
# [1974] orr r5,r5, r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1975] add r4,r5
	add	r4,r5
# [1976] str r4,[r7,#0x194]
	str	r4,[r7, #404]
# [1980] ldr r5,[r7,#0x1cc]
	ldr	r5,[r7, #460]
# [1981] tst r6,#0x2
	tst	r6,#2
# [1982] addne r5,r2
	addne	r5,r2
# [1983] tst r6,#0x1
	tst	r6,#1
# [1984] addne r5,r4
	addne	r5,r4
# [1985] tst r6,#0x4
	tst	r6,#4
# [1986] addne r5,r0
	addne	r5,r0
# [1990] add r10,r5
	add	r10,r5
# [1991] asr r5,#1
	asr	r5,#1
# [1992] add r9,r5
	add	r9,r5
# [1996] ldr r5,[r7,#0x1c0]
	ldr	r5,[r7, #448]
# [1997] mul r4,r5,r9
	mul	r4,r5,r9
# [1998] mov r0,r4
	mov	r0,r4
# [1999] mul r4,r5,r10
	mul	r4,r5,r10
# [2000] mov r6,r4
	mov	r6,r4
# Rescheduled
# [2005] ldr r2,[r7,#0x198]
	ldr	r2,[r7, #408]
# [2004] mov r1,#0x6000
	mov	r1,#24576
# Rescheduled
# [2007] ldr r4,[r7,#0x19c]
	ldr	r4,[r7, #412]
# [2006] sub r0,r2
	sub	r0,r2
# [2008] sub r0,r4
	sub	r0,r4
# [2009] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [2010] lsr r5,#18
	lsr	r5,#18
# [2011] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2012] add r2,r5
	add	r2,r5
# [2013] str r2,[r7,#0x198]
	str	r2,[r7, #408]
# [2014] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [2015] lsr r5,#18
	lsr	r5,#18
# [2016] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2017] add r4,r5
	add	r4,r5
# [2018] str r4,[r7,#0x19c]
	str	r4,[r7, #412]
# Rescheduled
# [2021] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [2020] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [2023] add r8,r4
	add	r8,r4
# [2024] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# Rescheduled
# [2029] ldr r2,[r7,#0x1a0]
	ldr	r2,[r7, #416]
# [2028] mov r0,r6
	mov	r0,r6
# Rescheduled
# [2031] ldr r4,[r7,#0x1a4]
	ldr	r4,[r7, #420]
# [2030] sub r0,r2
	sub	r0,r2
# [2032] sub r0,r4
	sub	r0,r4
# [2033] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [2034] lsr r5,#18
	lsr	r5,#18
# [2035] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2036] add r2,r5
	add	r2,r5
# [2037] str r2,[r7,#0x1a0]
	str	r2,[r7, #416]
# [2038] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [2039] lsr r5,#18
	lsr	r5,#18
# [2040] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [2041] add r4,r5
	add	r4,r5
# [2042] str r4,[r7,#0x1a4]
	str	r4,[r7, #420]
# Rescheduled
# [2045] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [2044] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [2047] add r8,r4       //lt
	add	r8,r4
# [2048] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [2049] add r0,#1
	add	r0,#1
# [2050] str r0,[r7,#0x1a8]
	str	r0,[r7, #424]
# [2053] ldr r0,[r7,#0x1fc]
	ldr	r0,[r7, #508]
# [2054] sub r0,#1
	sub	r0,#1
# [2055] str r0,[r7,#0x1fc]
	str	r0,[r7, #508]
# [2057] cmp r0,#0
	cmp	r0,#0
# [2058] bne p297
	bne	.Lj526
# [2061] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [2062] asr r8,#18
	asr	r8,#18
# [2063] add r8,#2048
	add	r8,#2048
# [2064] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# [2065] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [2066] asr r8,#18
	asr	r8,#18
# [2067] add r8,#2048
	add	r8,#2048
# [2068] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [2071] ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# Rescheduled
# [2094] sid[0]:= siddata[$6c]; //  2048+ (siddata[$6c] div (16*16384));//16384;//32768;
	ldr	r0,.Lj656
# Rescheduled
	ldrh	r0,[r0]
	ldr	r1,[r11, #-52]
	strh	r0,[r1]
# Rescheduled
# [2095] sid[1]:= siddata[$6b];//2048+ (siddata[$6b] div (16*16384));//16384;//32768;
	ldr	r0,.Lj657
	ldr	r1,[r11, #-52]
	ldrh	r0,[r0]
# Rescheduled
# [2097] oldsc:=sc;
	ldr	r2,.Lj658
	strh	r0,[r1, #2]
# Rescheduled
	ldr	r3,.Lj659
	ldr	r1,[r2]
# Rescheduled
	ldr	r0,.Lj660
	str	r1,[r3]
# Rescheduled
# Peephole MovLdr2Ldr done
# [2098] sc:=(siddata[$6c]+siddata[$6B]) -4096 ;//div 16384;
	ldr	r1,[r0, #428]
	ldr	r0,[r0, #432]
	add	r0,r1,r0
# Rescheduled
	ldr	r2,.Lj658
	sub	r1,r0,#4096
# Rescheduled
# [2099] scope[scj]:=sc;
	ldr	r0,.Lj662
	str	r1,[r2]
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj658
	mov	r3,r0,lsl #2
# Rescheduled
	ldr	r2,.Lj664
	ldr	r0,[r1]
# Rescheduled
# [2100] inc(scj);
	ldr	r12,.Lj662
	str	r0,[r3, r2]
	ldr	r0,[r12]
	add	r1,r0,#1
# Rescheduled
# [2101] if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
	ldr	r0,.Lj662
	str	r1,[r12]
	ldr	r1,[r0]
	mov	r0,#191
	orr	r0,r0,#768
	cmp	r1,r0
	ble	.Lj668
	ldr	r0,.Lj659
	ldr	r0,[r0]
	cmp	r0,#0
	bge	.Lj671
	ldr	r0,.Lj658
	ldr	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrgt	r1,.Lj662
	movgt	r0,#0
	strgt	r0,[r1]
	bgt	.Lj675
.Lj671:
	mov	r1,#191
# Rescheduled
	ldr	r0,.Lj662
	orr	r1,r1,#768
	str	r1,[r0]
.Lj675:
.Lj668:
	ldmea	r11,{r11,r13,r15}
.Lj656:
	.long	U_$RETROMALINA_$$_SIDDATA+432
.Lj657:
	.long	U_$RETROMALINA_$$_SIDDATA+428
.Lj658:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
.Lj659:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
.Lj660:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj662:
	.long	TC_$RETROMALINA_$$_SCJ
.Lj664:
	.long	U_$RETROMALINA_$$_SCOPE
.Le32:
	.size	RETROMALINA_$$_SID$LONGINT$$TSAMPLE, .Le32 - RETROMALINA_$$_SID$LONGINT$$TSAMPLE

.section .text.n_retromalina_$$_antialias6$double$tfiltertable$$double
	.balign 4
RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE:
# Var input located in register d0
# Var ft located in register r0
# Var $result located in register d0
# [2115] begin
	vmov	d0,r0,r1
	mov	r0,r2
# Peephole Add/SubLdr2Ldr done
# [2117] ft[0]:=ft[1];
	ldr	r3,[r0, #8]
	ldr	r2,[r0, #12]
	mov	r1,r0
	str	r3,[r1]
	str	r2,[r1, #4]
# Peephole Add/SubLdr2Ldr done
# [2118] ft[1]:=ft[2];
	ldr	r3,[r0, #16]
	ldr	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #8]
	str	r1,[r0, #12]
# Peephole Add/SubLdr2Ldr done
# [2119] ft[2]:=ft[3];
	ldr	r3,[r0, #24]
	ldr	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #16]
	str	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
# [2120] ft[3]:=ft[4];
	ldr	r3,[r0, #32]
	ldr	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #24]
	str	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
# [2121] ft[4]:=ft[5];
	ldr	r3,[r0, #40]
	ldr	r1,[r0, #44]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #32]
	str	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
# [2122] ft[5]:=ft[6];
	ldr	r3,[r0, #48]
	ldr	r2,[r0, #52]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #40]
# Rescheduled
# [2124] ft[6]:=input/gain;
	ldr	r1,.Lj681
	str	r2,[r0, #44]
	vldr	d1,[r1]
	vdiv.f64	d0,d0,d1
	vstr	d0,[r0, #48]
# Peephole Add/SubLdr2Ldr done
# [2126] ft[7]:=ft[8];
	ldr	r3,[r0, #64]
	ldr	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #56]
	str	r2,[r0, #60]
# Peephole Add/SubLdr2Ldr done
# [2127] ft[8]:=ft[9];
	ldr	r3,[r0, #72]
	ldr	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #64]
	str	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
# [2128] ft[9]:=ft[10];
	ldr	r3,[r0, #80]
	ldr	r2,[r0, #84]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #72]
	str	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
# [2129] ft[10]:=ft[11];
	ldr	r3,[r0, #88]
	ldr	r1,[r0, #92]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #80]
	str	r1,[r0, #84]
# Peephole Add/SubLdr2Ldr done
# [2130] ft[11]:=ft[12];
	ldr	r3,[r0, #96]
	ldr	r2,[r0, #100]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #88]
	str	r2,[r0, #92]
# Peephole Add/SubLdr2Ldr done
# [2131] ft[12]:=ft[13];
	ldr	r3,[r0, #104]
	ldr	r2,[r0, #108]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #96]
	str	r2,[r0, #100]
# [2133] ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
	vldr	d0,[r0, #8]
	vldr	d1,[r0, #40]
	vadd.f64	d1,d0,d1
	vldr	d0,.Lj682
	vmul.f64	d2,d0,d1
	vldr	d0,[r0]
	vldr	d1,[r0, #48]
	vadd.f64	d0,d0,d1
	vadd.f64	d2,d0,d2
	vldr	d3,[r0, #24]
	vldr	d0,[r0, #32]
	vadd.f64	d1,d3,d0
	vldr	d0,.Lj683
	vmul.f64	d0,d0,d1
	vadd.f64	d1,d2,d0
	vldr	d0,.Lj684
	vmul.f64	d0,d0,d3
	vadd.f64	d2,d1,d0
# [2134] + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
	vldr	d1,.Lj685
	vldr	d0,[r0, #56]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj686
	vldr	d0,[r0, #64]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
# [2135] + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
	vldr	d1,.Lj687
	vldr	d0,[r0, #72]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d0,.Lj688
	vldr	d1,[r0, #80]
	vmul.f64	d0,d0,d1
	vadd.f64	d2,d2,d0
# [2136] + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);
	vldr	d1,.Lj689
	vldr	d0,[r0, #88]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj690
	vldr	d0,[r0, #96]
	vmul.f64	d0,d1,d0
	vadd.f64	d0,d2,d0
	vstr	d0,[r0, #104]
# Var $result located in register d0
# [2138] antialias6:=ft[13];
	vldr	d0,[r0, #104]
# [2139] end;
	vmov	r0,r1,d0
	bx	r14
.Lj681:
	.long	TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
.Lj682:
# value: 0d+6.0000000000000000E+000
	.byte	0,0,0,0,0,0,24,64
.Lj683:
# value: 0d+1.5000000000000000E+001
	.byte	0,0,0,0,0,0,46,64
.Lj684:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj685:
# value: 0d-7.9924224560000001E-001
	.byte	13,224,77,121,100,147,233,191
.Lj686:
# value: 0d+4.9534616898000001E+000
	.byte	55,184,222,66,88,208,19,64
.Lj687:
# value: 0d-1.2816370553000000E+001
	.byte	217,26,53,82,251,161,41,192
.Lj688:
# value: 0d+1.7720271720000000E+001
	.byte	56,162,57,186,99,184,49,64
.Lj689:
# value: 0d-1.3809038175000000E+001
	.byte	89,174,109,64,58,158,43,192
.Lj690:
# value: 0d+5.7509166298999999E+000
	.byte	171,197,253,73,240,0,23,64
.Le33:
	.size	RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE, .Le33 - RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE

.section .text.n_retromalina_$$_audiocallback$longint
	.balign 4
.globl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
RETROMALINA_$$_AUDIOCALLBACK$LONGINT:
# [2172] begin
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
# [2173] audio2:=pcardinal(b);
	mov	r6,r0
# Var b located in register r6
# Rescheduled
# [2174] ttt:=clockgettotal;
	ldr	r0,.Lj693
# Rescheduled
	ldr	r0,[r0]
	mov	r7,r6
	cmp	r0,#0
	beq	.Lj695
	ldr	r0,.Lj693
	ldr	r0,[r0]
	blx	r0
	b	.Lj697
.Lj695:
	mov	r0,#0
	mov	r1,#0
.Lj697:
# Var ttt located in register r8:r9
	mov	r9,r0
# Rescheduled
# [2175] if pause1=true then goto p999;
	ldr	r0,.Lj700
# Rescheduled
	ldrb	r0,[r0]
	mov	r8,r1
	cmp	r0,#0
	bne	.Lj701
# [2176] for k:=0 to 7 do
	mov	r11,#0
	sub	r11,r11,#1
	.balign 4
.Lj704:
# Rescheduled
# [2178] aa+=2500;
	ldr	r0,.Lj705
# Rescheduled
	ldr	r0,[r0]
	add	r11,r11,#1
	add	r0,r0,#196
# Rescheduled
	ldr	r1,.Lj705
	add	r0,r0,#2304
# Rescheduled
# [2179] if (aa>=siddelay) then
	ldr	r2,.Lj705
	str	r0,[r1]
	ldr	r0,[r2]
	mov	r1,r0,asr #31
# Rescheduled
	ldr	r3,.Lj708
# Rescheduled
	ldr	r2,.Lj709
# Rescheduled
	ldr	r2,[r2]
	ldr	r3,[r3]
	cmp	r1,r2
	bgt	.Lj710
	blt	.Lj711
	cmp	r0,r3
	bcc	.Lj711
.Lj710:
# [2181] aa-=siddelay;
	ldr	r0,.Lj705
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj708
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj709
	ldr	r0,[r0]
	ldr	r1,[r1]
	subs	r0,r2,r0
# [2246] end;
	rsc	r1,r1,r2,asr #31
# Rescheduled
	ldr	r2,.Lj705
# Rescheduled
# [2182] if sfh>-1 then
	ldr	r1,.Lj716
	str	r0,[r2]
	ldr	r0,[r1]
	mvn	r1,#0
	cmp	r0,r1
	ble	.Lj718
# [2184] if filetype=0 then
	ldr	r0,.Lj719
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj721
# Rescheduled
# [2186] il:=fileread(sfh,buf,25);
	ldr	r0,.Lj716
	add	r1,r13,#4
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# Rescheduled
# [2187] if skip=1 then  il:=fileread(sfh,buf,25);
	ldr	r1,.Lj723
	mov	r5,r0
	ldr	r0,[r1]
	cmp	r0,#1
	bne	.Lj725
# Rescheduled
	ldr	r0,.Lj716
	add	r1,r13,#4
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	mov	r5,r0
.Lj725:
# [2188] if il=25 then
	cmp	r5,#25
	bne	.Lj728
# [2190] for i:=0 to 24 do poke($200d400+i,buf[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj731:
	add	r4,r4,#1
	add	r0,r13,#4
	ldrb	r1,[r0, r4]
	add	r0,r4,#33554432
	add	r0,r0,#54272
	strb	r1,[r0]
	cmp	r4,#24
	blt	.Lj731
# [2191] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj734:
# Rescheduled
	ldr	r0,.Lj735
	add	r4,r4,#1
	add	r2,r0,#4
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r4, lsl #2]
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj734
# [2192] t6:=clockgettotal;
	ldr	r0,.Lj693
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj738
	ldr	r0,.Lj693
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj740
# Rescheduled
	ldr	r2,.Lj741
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj742
.Lj738:
# Rescheduled
	ldr	r1,.Lj740
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj741
	mov	r0,#0
	str	r0,[r1]
.Lj742:
# Rescheduled
# [2193] times6502[15]:=0;
	ldr	r0,.Lj745
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [2194] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	ldr	r1,.Lj740
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj741
	mov	r0,#0
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj750:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj735
	add	r4,r4,#1
	ldr	r2,[r1, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj740
	mov	r3,r2,asr #31
# Rescheduled
	ldr	r1,.Lj741
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj740
	adc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj741
	str	r2,[r12]
	str	r0,[r1]
	cmp	r4,#15
	blt	.Lj750
# [2195] time6502:=t6;
	ldr	r0,.Lj740
	ldr	r2,[r0]
# Rescheduled
	ldr	r1,.Lj757
	ldr	r0,[r0, #4]
	str	r2,[r1]
# Rescheduled
# [2196] timer1+=siddelay;
	ldr	r2,.Lj758
	str	r0,[r1, #4]
# Rescheduled
	ldr	r0,.Lj759
	ldr	r3,[r2]
# Rescheduled
	ldr	r2,.Lj708
	ldr	r12,[r0]
# Rescheduled
	ldr	r1,.Lj709
	ldr	r0,[r2]
	ldr	r1,[r1]
	adds	r3,r0,r3
# Rescheduled
	ldr	r0,.Lj758
	adc	r2,r1,r12
# Rescheduled
	ldr	r1,.Lj759
	str	r3,[r0]
# Rescheduled
# [2197] songtime+=siddelay;
	ldr	r0,.Lj764
	str	r2,[r1]
# Rescheduled
	ldr	r1,.Lj765
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj708
	ldr	r12,[r1]
# Rescheduled
	ldr	r1,.Lj709
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r3,r0,r2
# Rescheduled
	ldr	r2,.Lj764
	adc	r0,r1,r12
# Rescheduled
	ldr	r1,.Lj765
	str	r3,[r2]
	str	r0,[r1]
	b	.Lj782
.Lj728:
# [2201] fileclose(sfh);
	ldr	r0,.Lj716
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [2202] fh:=-1;
	ldr	r1,.Lj772
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
# [2203] songtime:=0;
	ldr	r1,.Lj764
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj765
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [2204] timer1:=-1;
	ldr	r1,.Lj758
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj759
	mvn	r0,#0
	str	r0,[r1]
# [2205] for i:=0 to 6 do raml^[$3500+i]:=0;
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj779:
# Rescheduled
	ldr	r0,.Lj780
	add	r4,r4,#1
	ldr	r2,[r0]
# Rescheduled
	ldr	r3,.Lj781
	mov	r1,#0
	add	r3,r2,r3
# Peephole FoldShiftLdrStr done
	str	r1,[r3, r4, lsl #2]
	cmp	r4,#6
	blt	.Lj779
	b	.Lj782
.Lj721:
# [2211] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj785:
# Rescheduled
	ldr	r0,.Lj735
	add	r4,r4,#1
	add	r1,r0,#4
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r4, lsl #2]
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj785
# [2212] t6:=clockgettotal;
	ldr	r0,.Lj693
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj789
	ldr	r0,.Lj693
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj740
# Rescheduled
	ldr	r2,.Lj741
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj793
.Lj789:
# Rescheduled
	ldr	r0,.Lj740
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj741
	mov	r1,#0
	str	r1,[r0]
.Lj793:
# [2213] jsr6502(256,play);
	ldr	r0,.Lj796
	ldrh	r1,[r0]
	mov	r0,#256
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [2214] times6502[15]:=clockgettotal-t6;
	ldr	r0,.Lj693
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj799
	ldr	r0,.Lj693
	ldr	r0,[r0]
	blx	r0
	b	.Lj801
.Lj799:
	mov	r0,#0
	mov	r1,#0
.Lj801:
	ldr	r2,.Lj740
# Rescheduled
	ldr	r3,.Lj741
	ldr	r12,[r2]
	ldr	r2,[r3]
	subs	r0,r0,r12
	sbc	r1,r1,r2
# Rescheduled
	ldr	r1,.Lj745
	str	r0,[r1]
# Rescheduled
# [2215] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	ldr	r1,.Lj740
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj741
	mov	r0,#0
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj809:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,.Lj735
	add	r4,r4,#1
	ldr	r2,[r0, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj740
	mov	r3,r2,asr #31
# Rescheduled
	ldr	r1,.Lj741
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj740
	adc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj741
	str	r2,[r12]
	str	r0,[r1]
	cmp	r4,#15
	blt	.Lj809
# [2216] time6502:=t6-15;
	ldr	r0,.Lj740
# Rescheduled
	ldr	r1,.Lj741
	ldr	r0,[r0]
	ldr	r1,[r1]
	subs	r3,r0,#15
# Rescheduled
	ldr	r2,.Lj757
	sbc	r0,r1,#0
# Rescheduled
	ldr	r1,.Lj818
	str	r3,[r2]
	str	r0,[r1]
# [2221] CleanDataCacheRange($200d400,32);
	mov	r10,#33554432
# Rescheduled
	ldr	r0,.Lj819
# Rescheduled
	ldr	r0,[r0]
	orr	r10,r10,#54272
	cmp	r0,#0
	beq	.Lj821
	mov	r1,#32
# Rescheduled
	ldr	r2,.Lj819
# Rescheduled
	ldr	r2,[r2]
	mov	r0,r10
	blx	r2
.Lj821:
# [2222] timer1+=siddelay;
	ldr	r0,.Lj758
# Rescheduled
	ldr	r1,.Lj759
	ldr	r3,[r0]
# Rescheduled
	ldr	r2,.Lj708
	ldr	r12,[r1]
# Rescheduled
	ldr	r0,.Lj709
	ldr	r1,[r2]
	ldr	r0,[r0]
	adds	r1,r1,r3
# Rescheduled
	ldr	r3,.Lj758
	adc	r2,r0,r12
# Rescheduled
	ldr	r0,.Lj759
	str	r1,[r3]
# Rescheduled
# [2223] songtime+=siddelay;
	ldr	r1,.Lj764
	str	r2,[r0]
# Rescheduled
	ldr	r0,.Lj765
	ldr	r12,[r1]
# Rescheduled
	ldr	r1,.Lj708
	ldr	r3,[r0]
# Rescheduled
	ldr	r2,.Lj709
	ldr	r0,[r1]
	ldr	r1,[r2]
	adds	r2,r0,r12
# Rescheduled
	ldr	r12,.Lj764
	adc	r1,r1,r3
# Rescheduled
	ldr	r0,.Lj765
	str	r2,[r12]
	str	r1,[r0]
.Lj782:
.Lj718:
.Lj711:
# [2229] s:=sid(1);
	mov	r0,r13
	mov	r1,#1
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# [2230] audio2[240*k]:=s[0];
	mov	r0,#240
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldrsh	r1,[r13]
	mul	r0,r11,r0
	str	r1,[r7, r0, lsl #2]
# [2231] audio2[240*k+1]:=s[1];
	mov	r0,#240
	mul	r0,r11,r0
	mov	r2,r0,lsl #2
	ldrsh	r0,[r13, #2]
	add	r1,r7,#4
	str	r0,[r1, r2]
# [2233] for i:=120*k+1 to 120*k+119 do
	mov	r0,#120
	mul	r0,r11,r0
	add	r10,r0,#119
# Peephole DataMov2Data removed superfluous mov
	mov	r0,#120
	mul	r0,r11,r0
	add	r4,r0,#1
# Peephole DataMov2Data removed superfluous mov
	cmp	r10,r4
	blt	.Lj836
	sub	r4,r4,#1
	.balign 4
.Lj837:
	add	r4,r4,#1
# [2235] s:=sid(0);
	mov	r0,r13
	mov	r1,#0
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
# [2236] audio2[2*i]:=s[0];
	ldrsh	r1,[r13]
	mov	r0,r4,lsl #1
	str	r1,[r7, r0, lsl #2]
# [2237] audio2[2*i+1]:=s[1];
	mov	r0,r4,lsl #1
	mov	r2,r0,lsl #2
	ldrsh	r0,[r13, #2]
	add	r1,r7,#4
	str	r0,[r1, r2]
	cmp	r10,r4
	bgt	.Lj837
.Lj836:
	cmp	r11,#7
	blt	.Lj704
# [2241] inc(sidcount);
	ldr	r1,.Lj838
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
.Lj701:
# [2244] sidtime:=clockgettotal-ttt;
	ldr	r0,.Lj693
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj841
	ldr	r0,.Lj693
	ldr	r0,[r0]
	blx	r0
	b	.Lj843
.Lj841:
	mov	r0,#0
	mov	r1,#0
.Lj843:
	subs	r2,r0,r9
# Rescheduled
	ldr	r3,.Lj844
	sbc	r1,r1,r8
# Rescheduled
	ldr	r0,.Lj845
	str	r2,[r3]
	str	r1,[r0]
	add	r13,r13,#32
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r15}
.Lj693:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj700:
	.long	TC_$RETROMALINA_$$_PAUSE1
.Lj705:
	.long	TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
.Lj708:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj709:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj716:
	.long	U_$RETROMALINA_$$_SFH
.Lj719:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj723:
	.long	U_$RETROMALINA_$$_SKIP
.Lj735:
	.long	U_$RETROMALINA_$$_TIMES6502
.Lj740:
	.long	U_$RETROMALINA_$$_T6
.Lj741:
	.long	U_$RETROMALINA_$$_T6+4
.Lj745:
	.long	U_$RETROMALINA_$$_TIMES6502+60
.Lj757:
	.long	U_$RETROMALINA_$$_TIME6502
.Lj758:
	.long	TC_$RETROMALINA_$$_TIMER1
.Lj759:
	.long	TC_$RETROMALINA_$$_TIMER1+4
.Lj764:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj765:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj772:
	.long	U_$RETROMALINA_$$_FH
.Lj780:
	.long	U_$RETROMALINA_$$_R1
.Lj781:
	.long	54272
.Lj796:
	.long	U_$RETROMALINA_$$_PLAY
.Lj818:
	.long	U_$RETROMALINA_$$_TIME6502+4
.Lj819:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj838:
	.long	TC_$RETROMALINA_$$_SIDCOUNT
.Lj844:
	.long	TC_$RETROMALINA_$$_SIDTIME
.Lj845:
	.long	TC_$RETROMALINA_$$_SIDTIME+4
.Le34:
	.size	RETROMALINA_$$_AUDIOCALLBACK$LONGINT, .Le34 - RETROMALINA_$$_AUDIOCALLBACK$LONGINT

.section .text.n_retromalina_$$_pwmbeep
	.balign 4
.globl	RETROMALINA_$$_PWMBEEP
RETROMALINA_$$_PWMBEEP:
# [2257] begin
	stmfd	r13!,{r4,r14}
	sub	r13,r13,#32
	sub	r13,r13,#16384
# Var i located in register r0
# Var sinus located at r13+0, size=OS_NO
# Var ctrlblock located at r13+16384, size=OS_NO
# Var i located in register r4
# [2258] for i:=0 to 4095 do sinus[i]:=round(1040+1024*(sin(2*pi*i/512)));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj850:
	add	r4,r4,#1
	vmov	s0,r4
	vcvt.f64.s32	d0,s0
	vldr	d1,.Lj853
	vmul.f64	d0,d1,d0
	vldr	d1,.Lj854
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_sin_real
	vldr	d0,.Lj852
	vmov	d1,r0,r1
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj851
	vadd.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Peephole FoldShiftLdrStr done
	str	r0,[r13, r4, lsl #2]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj850
# Rescheduled
# Rescheduled
# [2260] ctrlblock[0]:=$07050140; //transfer info
	ldr	r1,.Lj855
	ldr	r0,.Lj856
	str	r1,[r13, r0]
# [2261] ctrlblock[1]:=$c205a000;
	mov	r0,#-1040187392
# Rescheduled
	ldr	r1,.Lj857
	orr	r0,r0,#368640
	str	r0,[r13, r1]
# Rescheduled
# Rescheduled
# [2262] ctrlblock[2]:=$7E20C018;
	ldr	r1,.Lj858
	ldr	r0,.Lj859
	str	r1,[r13, r0]
# Rescheduled
# [2263] ctrlblock[3]:=7680;
	ldr	r1,.Lj860
	mov	r0,#7680
	str	r0,[r13, r1]
# Rescheduled
# [2264] ctrlblock[4]:=$0;
	ldr	r0,.Lj861
	mov	r1,#0
	str	r1,[r13, r0]
# [2265] ctrlblock[5]:=$c4000020;
	mov	r0,#32
# Rescheduled
	ldr	r1,.Lj862
	orr	r0,r0,#-1006632960
	str	r0,[r13, r1]
# Rescheduled
# [2266] ctrlblock[6]:=$0;
	ldr	r0,.Lj863
	mov	r1,#0
	str	r1,[r13, r0]
# Rescheduled
# [2267] ctrlblock[7]:=$0;
	ldr	r0,.Lj864
	mov	r1,#0
	str	r1,[r13, r0]
# Var i located in register r3
# [2268] for i:=0 to 7 do lpoke($4000000+4*i,ctrlblock[i]);
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj867:
	add	r3,r3,#1
# Peephole FoldShiftProcess done
# [2296] end;
	add	r0,r13,r3,lsl #2
	add	r0,r0,#16384
	mov	r1,r3,lsl #2
	sub	r1,r1,#-67108864
# Rescheduled
	ldr	r2,[r0]
	bic	r0,r1,#3
	str	r2,[r0]
	cmp	r3,#7
	blt	.Lj867
# Rescheduled
# [2269] ctrlblock[5]:=$c4000000;
	ldr	r1,.Lj862
	mov	r0,#-1006632960
	str	r0,[r13, r1]
# [2270] ctrlblock[1]:=$c205c000;
	mov	r0,#-1040187392
# Rescheduled
	ldr	r1,.Lj857
	orr	r0,r0,#376832
	str	r0,[r13, r1]
# Var i located in register r2
# [2271] for i:=0 to 7 do lpoke($4000020+4*i,ctrlblock[i]);
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj872:
# Rescheduled
# Rescheduled
	ldr	r0,.Lj856
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
	blt	.Lj872
# Var i located in register r3
# [2272] for i:=0 to 4095 do lpoke ($8000000+4*i,sinus[i]);
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj876:
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
	blt	.Lj876
# Var i located in register r2
# [2273] for i:=0 to 4095 do lpoke ($8004000+4*i,sinus[i]);
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj879:
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
	blt	.Lj879
# Var i located in register r1
# [2274] for i:=0 to 4095 do lpoke ($8008000+4*i,sinus[2*(i mod 2048)]);
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj882:
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
	blt	.Lj882
# Var i located in register r1
# [2275] for i:=0 to 4095 do lpoke ($800C000+4*i,sinus[2*(i mod 2048)]);
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj885:
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
	blt	.Lj885
# [2276] CleanDataCacheRange($8000000,$10000);
	ldr	r0,.Lj886
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj888
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj886
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#134217728
	blx	r2
.Lj888:
# [2277] CleanDataCacheRange($4000000,$10000);
	ldr	r0,.Lj886
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj892
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj886
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#67108864
	blx	r2
.Lj892:
# [2278] sleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [2282] i:=pinteger($3F200010)^ and  %11111111111111000111111111111000;
	ldr	r0,.Lj894
	ldr	r0,[r0]
	bic	r0,r0,#7
	bic	r0,r0,#229376
# Var i located in register r0
# [2283] lpoke($3F200010, i or       %00000000000000100000000000000100); // gpio 40/45 as alt0
	orr	r0,r0,#4
# Rescheduled
# Rescheduled
	ldr	r1,.Lj894
	orr	r0,r0,#131072
	bic	r1,r1,#3
	str	r0,[r1]
# [2284] lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
	mov	r1,#22
# Rescheduled
	ldr	r0,.Lj896
	orr	r1,r1,#1509949440
	bic	r0,r0,#3
	mov	r1,#22
	orr	r1,r1,#1509949440
	str	r1,[r0]
# [2285] lpoke($3F1010a4,$5a002000); // div 5
	mov	r1,#1509949440
# Rescheduled
	ldr	r0,.Lj897
	orr	r1,r1,#8192
	bic	r1,r0,#3
	mov	r0,#1509949440
	orr	r0,r0,#8192
	str	r0,[r1]
# [2286] lpoke($3F20C010,5208); // pwm 1 range  11bit 48 khz 2083
	mov	r0,#88
# Rescheduled
	ldr	r1,.Lj898
	orr	r0,r0,#5120
	bic	r1,r1,#3
	mov	r0,#88
	orr	r0,r0,#5120
	str	r0,[r1]
# [2287] lpoke($3F20C020,5208); // pwm 2 range
	mov	r0,#88
# Rescheduled
	ldr	r1,.Lj899
	orr	r0,r0,#5120
	bic	r1,r1,#3
	mov	r0,#88
	orr	r0,r0,#5120
	str	r0,[r1]
# [2288] lpoke($3F20C000,$00002161); // pwm contr0l - enable, clear fifo, use fifo
	mov	r0,#97
	orr	r0,r0,#8448
	mov	r0,#1056964608
	orr	r0,r0,#2146304
	bic	r1,r0,#3
	mov	r0,#97
	orr	r0,r0,#8448
	str	r0,[r1]
# [2289] lpoke($3F20C008,$80000307); // pwm dma enable
	mov	r0,#-2147483641
# Rescheduled
	ldr	r1,.Lj900
	orr	r0,r0,#768
	bic	r0,r1,#3
	mov	r1,#-2147483641
	orr	r1,r1,#768
# Rescheduled
# [2290] lpoke($3F007ff0,pinteger($3F007FF0)^ or %100000000); // dma0 enable
	ldr	r2,.Lj901
	str	r1,[r0]
	ldr	r0,[r2]
# Rescheduled
# Rescheduled
	ldr	r1,.Lj901
	orr	r0,r0,#256
	bic	r2,r1,#3
# Rescheduled
# [2291] lpoke($3F007804,$c4000000);
	ldr	r1,.Lj903
	str	r0,[r2]
	bic	r0,r1,#3
	mov	r1,#-1006632960
	str	r1,[r0]
# [2292] lpoke($3F007800,3);
	mov	r0,#1056964608
	orr	r0,r0,#30720
	bic	r0,r0,#3
	mov	r1,#3
	str	r1,[r0]
	add	r13,r13,#32
	add	r13,r13,#16384
	ldmfd	r13!,{r4,r15}
.Lj853:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64
.Lj854:
# value: 0d+1.9531250000000000E-003
	.byte	0,0,0,0,0,0,96,63
.Lj852:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64
.Lj851:
# value: 0d+1.0400000000000000E+003
	.byte	0,0,0,0,0,64,144,64
.Lj855:
	.long	117768512
.Lj856:
	.long	16384
.Lj857:
	.long	16388
.Lj858:
	.long	2116075544
.Lj859:
	.long	16392
.Lj860:
	.long	16396
.Lj861:
	.long	16400
.Lj862:
	.long	16404
.Lj863:
	.long	16408
.Lj864:
	.long	16412
.Lj886:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj894:
	.long	1059061776
.Lj896:
	.long	1058017440
.Lj897:
	.long	1058017444
.Lj898:
	.long	1059110928
.Lj899:
	.long	1059110944
.Lj900:
	.long	1059110920
.Lj901:
	.long	1056997360
.Lj903:
	.long	1056995332
.Le35:
	.size	RETROMALINA_$$_PWMBEEP, .Le35 - RETROMALINA_$$_PWMBEEP

.section .text.n_retromalina_$$_sdl_pauseaudio$longint
	.balign 4
.globl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT:
# [2301] begin
	stmfd	r13!,{r14}
# Var mode located in register r0
# [2302] if mode=1 then pause1:=true else pause1:=false;
	cmp	r0,#1
# Rescheduled
	ldreq	r0,.Lj908
	moveq	r1,#1
	streqb	r1,[r0]
# Rescheduled
	ldrne	r0,.Lj908
	movne	r1,#0
	strneb	r1,[r0]
# [2303] for i:=$205a000 to $205dfff do poke(i,2048);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj914
	orr	r0,r0,#368640
# Rescheduled
	ldr	r2,.Lj914
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj913:
	ldr	r2,.Lj914
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj914
	str	r1,[r2]
	ldr	r0,[r0]
	mov	r1,#0
# Rescheduled
	ldr	r2,.Lj914
	strb	r1,[r0]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj919
	cmp	r0,r1
	blt	.Lj913
# [2304] CleanDataCacheRange($205a000,16384);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj920
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#368640
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj920
	movne	r1,#16384
	ldrne	r2,[r2]
	blxne	r2
# [2305] end;
	ldmfd	r13!,{r15}
.Lj908:
	.long	TC_$RETROMALINA_$$_PAUSE1
.Lj914:
	.long	U_$RETROMALINA_$$_I
.Lj919:
	.long	33939455
.Lj920:
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
# [2311] end.
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
# [1053] sc:integer=0;
.Le59:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC, .Le59 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [1054] waveform1:word=0;
.Le60:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC, .Le60 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [1055] f1:boolean=false;
.Le61:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1, .Le61 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [1056] waveform2:word=0;
.Le62:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1, .Le62 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [1057] f2:boolean=false;
.Le63:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2, .Le63 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [1058] waveform3:word=0;
.Le64:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2, .Le64 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [1059] f3:boolean=false;
.Le65:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3, .Le65 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [1060] ff:integer=0;
.Le66:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3, .Le66 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.long	0
# [1061] filter_resonance2i:integer=0;
.Le67:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF, .Le67 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [1062] filter_freqi:integer=0;
.Le68:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I, .Le68 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [1063] volume:integer=0;
.Le69:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI, .Le69 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [1064] c3off:integer=0;
.Le70:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME, .Le70 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
	.long	0
# [1065] fl:integer=0;
.Le71:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF, .Le71 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [1105] var i,sid1,sid1l,ind:integer;
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
# [2313] 
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

