	.file "retromalina.pas"
# Begin asmlist al_procedures

.section .text.n_retromalina$_$tkbd_$__$$_create$boolean$$tkbd
	.balign 4
.globl	RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD
RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD:
# Temps allocated between r13+12 and r13+252
# [retromalina.pas]
# [218] begin
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
	ldr	r0,[r13, #8]
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
	ldr	r1,[r0, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj6:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj3
# [221] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj11
# [219] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [220] inherited Create(CreateSuspended);
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
	ldrne	r0,[r13, #8]
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
	ldrne	r1,[r0]
	ldrne	r1,[r1, #68]
	blxne	r1
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
	mvn	r1,#0
	ldr	r2,[r13, #8]
	ldr	r2,[r2]
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
# [224] begin
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
	ldr	r0,[r13, #8]
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
	ldr	r1,[r0, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj26:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj23
# [227] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj31
# [225] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [226] inherited Create(CreateSuspended);
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
	ldrne	r0,[r13, #8]
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
	ldrne	r1,[r0]
	ldrne	r1,[r1, #68]
	blxne	r1
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
	mvn	r1,#0
	ldr	r2,[r13, #8]
	ldr	r2,[r2]
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
# [232] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#4
# Var $self located in register r4
# Var a located in register r6
# Var key located in register r5
# Var q located at r13+0, size=OS_32
	mov	r4,r0
	.balign 4
.Lj45:
# [235] a:=KeyboardReadex(@kbd[0], 8*sizeof(tkeyboarddata),1,q);
	ldr	r0,.Lj48
	mov	r3,r13
	mov	r2,#1
	mov	r1,#96
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r6,r0
# [236] if (a=0) and (q>0) then
	bne	.Lj50
	ldr	r0,[r13]
	cmp	r0,#0
	bls	.Lj50
# [238] key:=ord(kbd[0].charcode);
	ldr	r0,.Lj52
	ldrb	r5,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [239] if kbd[0].modifiers and 16384 <>0 then
	ldr	r0,.Lj48
	ldr	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#16384
	beq	.Lj55
# [241] poke($206002b,1);
	ldr	r0,.Lj56
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [242] if key<>0 then poke($2060028,key) else poke($2060028,kbd[0].KeyCode and 255);
	cmp	r5,#0
	beq	.Lj58
	and	r1,r5,#255
	ldr	r0,.Lj59
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj60
.Lj58:
	ldr	r0,.Lj61
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
	ldr	r0,.Lj59
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj60:
# [243] poke($2060029,kbd[0].modifiers and 255);
	ldr	r0,.Lj48
	ldr	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
	ldr	r0,.Lj64
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [244] poke($206002a,(kbd[0].modifiers shr 8) and 255);
	ldr	r0,.Lj48
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
	ldr	r0,.Lj66
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [245] if key=0 then poke($206002b,peek($206002b) or $2);
	cmp	r5,#0
	bne	.Lj68
	ldr	r0,.Lj56
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj56
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj68:
# [246] CleanDataCacheRange($2060000,4096);
	mov	r0,#33554432
	orr	r0,r0,#393216
	ldr	r1,.Lj71
	ldr	r1,[r1]
	cmp	r1,#0
	movne	r1,#4096
	ldrne	r2,.Lj71
	ldrne	r2,[r2]
	blxne	r2
.Lj55:
.Lj50:
# [265] threadsleep(10);
	mov	r0,#10
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [266] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj45
# [268] end;
	add	r13,r13,#4
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj48:
	.long	U_$RETROMALINA_$$_KBD
.Lj52:
	.long	U_$RETROMALINA_$$_KBD+8
.Lj56:
	.long	33947691
.Lj59:
	.long	33947688
.Lj61:
	.long	U_$RETROMALINA_$$_KBD+6
.Lj64:
	.long	33947689
.Lj66:
	.long	33947690
.Lj71:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le2:
	.size	RETROMALINA$_$TKBD_$__$$_EXECUTE, .Le2 - RETROMALINA$_$TKBD_$__$$_EXECUTE

.section .text.n_retromalina$_$taudio_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TAUDIO_$__$$_EXECUTE
RETROMALINA$_$TAUDIO_$__$$_EXECUTE:
# [273] begin
	stmfd	r13!,{r4,r5,r14}
# Var $self located in register r4
# Var a located in register r5
# Var key located in register r0
# Var q located in register r0
	mov	r4,r0
# [274] ThreadSetPriority(ThreadGetCurrent,7);
	ldr	r0,.Lj77
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj79
	ldr	r0,.Lj77
	ldr	r0,[r0]
	blx	r0
	b	.Lj81
.Lj79:
	mvn	r0,#0
.Lj81:
	mov	r1,#7
	bl	THREADS_$$_THREADSETPRIORITY$LONGINT$LONGWORD$$LONGWORD
# [275] ThreadSetCPU(ThreadGetCurrent,CPU_ID_2);
	ldr	r0,.Lj77
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj84
	ldr	r0,.Lj77
	ldr	r0,[r0]
	blx	r0
	b	.Lj86
.Lj84:
	mvn	r0,#0
.Lj86:
	mov	r1,#2
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [276] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	.balign 4
.Lj87:
	.balign 4
.Lj90:
# [278] repeat threadsleep(1); a:= lpeek($3F007800) until (a and 2) <>0 ;
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	mov	r0,#1056964608
	orr	r0,r0,#30720
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r5,r0
# Peephole OpCmp2OpS done
	ands	r0,r5,#2
	beq	.Lj90
# Peephole OpCmp2OpS done
# [279] if (a and 2)<>0
	ands	r0,r5,#2
	beq	.Lj94
# [282] if lpeek($3f00781c)=$c4000000 then audiocallback($0205a000)
	ldr	r0,.Lj95
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	cmp	r0,#-1006632960
	bne	.Lj97
	mov	r0,#33554432
	orr	r0,r0,#368640
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
	b	.Lj98
.Lj97:
# [283] else audiocallback($0205c000);
	mov	r0,#33554432
	orr	r0,r0,#376832
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
.Lj98:
# [284] lpoke($3F007800,3);
	mov	r0,#1056964608
	orr	r0,r0,#30720
	mov	r1,#3
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [285] CleanDataCacheRange($0205a000,$8000);
	mov	r0,#33554432
	orr	r0,r0,#368640
	ldr	r1,.Lj99
	ldr	r1,[r1]
	cmp	r1,#0
	movne	r1,#32768
	ldrne	r2,.Lj99
	ldrne	r2,[r2]
	blxne	r2
.Lj94:
# [288] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj87
# [290] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj77:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj95:
	.long	1056995356
.Lj99:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le3:
	.size	RETROMALINA$_$TAUDIO_$__$$_EXECUTE, .Le3 - RETROMALINA$_$TAUDIO_$__$$_EXECUTE

.section .text.n_retromalina$_$tretro_$__$$_create$boolean$$tretro
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO:
# Temps allocated between r13+12 and r13+252
# [299] begin
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
	bne	.Lj106
	ldr	r0,[r13, #8]
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
	ldr	r1,[r0, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj106:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj103
# [302] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj111
# [300] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [301] inherited Create(CreateSuspended);
	ldrb	r2,[r13]
	ldr	r0,[r13, #8]
	mov	r3,#4194304
	mov	r1,#0
	bl	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$LONGWORD$$TTHREAD
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj117
	ldr	r0,[r13, #4]
	cmp	r0,#0
	ldrne	r0,[r13, #8]
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
	ldrne	r1,[r0]
	ldrne	r1,[r1, #68]
	blxne	r1
.Lj117:
.Lj111:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj113
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj119
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj121
	ldr	r0,[r13, #8]
	mvn	r1,#0
	ldr	r2,[r13, #8]
	ldr	r2,[r2]
	ldr	r2,[r2, #48]
	blx	r2
.Lj121:
	bl	fpc_popaddrstack
	bl	fpc_reraise
.Lj119:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #248]
	cmp	r0,#0
	blne	fpc_raise_nested
	bl	fpc_doneexception
.Lj113:
.Lj103:
	ldr	r0,[r13, #8]
	add	r13,r13,#252
	ldmfd	r13!,{r15}
.Le4:
	.size	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO, .Le4 - RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO

.section .text.n_retromalina$_$tretro_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_EXECUTE
RETROMALINA$_$TRETRO_$__$$_EXECUTE:
# [314] begin
	stmfd	r13!,{r4,r14}
# Var $self located in register r4
# Var id located in register r0
	mov	r4,r0
# [316] running:=1;
	mov	r0,#1
	ldr	r1,.Lj125
	str	r0,[r1]
# [322] Sleep(1);
	mov	r0,#1
	bl	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
	.balign 4
.Lj126:
# [325] vblank1:=0;
	mov	r1,#0
	ldr	r0,.Lj129
	strb	r1,[r0]
# [326] t:=clockgettotal;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj132
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	ldr	r2,.Lj134
	str	r0,[r2]
	ldr	r0,.Lj135
	str	r1,[r0]
	b	.Lj136
.Lj132:
	mov	r1,#0
	ldr	r0,.Lj134
	str	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj135
	str	r1,[r0]
.Lj136:
# [327] scrconvert16f(p2);
	ldr	r0,.Lj139
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [328] tim:=clockgettotal-t;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj142
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	b	.Lj144
.Lj142:
	mov	r0,#0
	mov	r1,#0
.Lj144:
	ldr	r2,.Lj134
	ldr	r3,[r2]
	ldr	r2,.Lj135
	ldr	r12,[r2]
	subs	r2,r0,r3
	sbc	r1,r1,r12
	ldr	r0,.Lj147
	str	r2,[r0]
	ldr	r0,.Lj148
	str	r1,[r0]
# [329] t:=clockgettotal;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj151
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	ldr	r2,.Lj134
	str	r0,[r2]
	ldr	r0,.Lj135
	str	r1,[r0]
	b	.Lj155
.Lj151:
	mov	r0,#0
	ldr	r1,.Lj134
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj135
	str	r0,[r1]
.Lj155:
# [330] spritef(p2);
	ldr	r0,.Lj139
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [331] ts:=clockgettotal-t;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj161
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	b	.Lj163
.Lj161:
	mov	r0,#0
	mov	r1,#0
.Lj163:
	ldr	r2,.Lj134
	ldr	r3,[r2]
	ldr	r2,.Lj135
	ldr	r2,[r2]
	subs	r3,r0,r3
	sbc	r1,r1,r2
	ldr	r0,.Lj166
	str	r3,[r0]
	ldr	r0,.Lj167
	str	r1,[r0]
# [332] vblank1:=1;
	mov	r1,#1
	ldr	r0,.Lj129
	strb	r1,[r0]
# [333] CleanDataCacheRange(integer(p2),9216000);
	mov	r1,#8388608
	orr	r1,r1,#827392
	ldr	r0,.Lj139
	ldr	r0,[r0]
	ldr	r2,.Lj170
	ldr	r2,[r2]
	cmp	r2,#0
	ldrne	r2,.Lj170
	ldrne	r2,[r2]
	blxne	r2
# [334] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [336] FramebufferDeviceSetOffset(fb,0,0,True);
	ldr	r0,.Lj174
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#0
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [337] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj174
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [338] poke ($2070000,1);
	mov	r0,#33554432
	orr	r0,r0,#458752
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [340] vblank1:=0;
	mov	r1,#0
	ldr	r0,.Lj129
	strb	r1,[r0]
# [341] t:=clockgettotal;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj179
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	ldr	r2,.Lj134
	str	r0,[r2]
	ldr	r0,.Lj135
	str	r1,[r0]
	b	.Lj183
.Lj179:
	mov	r0,#0
	ldr	r1,.Lj134
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj135
	str	r1,[r0]
.Lj183:
# [342] scrconvert16f(p2+2304000);
	ldr	r0,.Lj139
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [343] tim:=clockgettotal-t;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj189
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	b	.Lj191
.Lj189:
	mov	r0,#0
	mov	r1,#0
.Lj191:
	ldr	r2,.Lj134
	ldr	r3,[r2]
	ldr	r2,.Lj135
	ldr	r2,[r2]
	subs	r3,r0,r3
	sbc	r1,r1,r2
	ldr	r0,.Lj147
	str	r3,[r0]
	ldr	r0,.Lj148
	str	r1,[r0]
# [344] t:=clockgettotal;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj198
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	ldr	r2,.Lj134
	str	r0,[r2]
	ldr	r0,.Lj135
	str	r1,[r0]
	b	.Lj202
.Lj198:
	mov	r0,#0
	ldr	r1,.Lj134
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj135
	str	r0,[r1]
.Lj202:
# [345] spritef(p2+2304000);
	ldr	r0,.Lj139
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [346] ts:=clockgettotal-t;
	ldr	r0,.Lj130
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj208
	ldr	r0,.Lj130
	ldr	r0,[r0]
	blx	r0
	b	.Lj210
.Lj208:
	mov	r0,#0
	mov	r1,#0
.Lj210:
	ldr	r2,.Lj134
	ldr	r3,[r2]
	ldr	r2,.Lj135
	ldr	r2,[r2]
	subs	r3,r0,r3
	sbc	r1,r1,r2
	ldr	r0,.Lj166
	str	r3,[r0]
	ldr	r0,.Lj167
	str	r1,[r0]
# [347] vblank1:=1;
	mov	r1,#1
	ldr	r0,.Lj129
	strb	r1,[r0]
# [348] CleanDataCacheRange(integer(p2)+9216000,9216000);
	mov	r1,#8388608
	orr	r1,r1,#827392
	ldr	r0,.Lj139
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	ldr	r2,.Lj170
	ldr	r2,[r2]
	cmp	r2,#0
	ldrne	r2,.Lj170
	ldrne	r2,[r2]
	blxne	r2
# [349] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [352] FramebufferDeviceSetOffset(fb,0,1200,True);
	ldr	r0,.Lj174
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#1200
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [353] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj174
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [354] poke ($2070000,1);
	mov	r0,#33554432
	orr	r0,r0,#458752
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [356] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj126
# [357] running:=0;
	mov	r0,#0
	ldr	r1,.Lj125
	str	r0,[r1]
# [358] end;
	ldmfd	r13!,{r4,r15}
.Lj125:
	.long	TC_$RETROMALINA_$$_RUNNING
.Lj129:
	.long	U_$RETROMALINA_$$_VBLANK1
.Lj130:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj134:
	.long	U_$RETROMALINA_$$_T
.Lj135:
	.long	U_$RETROMALINA_$$_T+4
.Lj139:
	.long	U_$RETROMALINA_$$_P2
.Lj147:
	.long	U_$RETROMALINA_$$_TIM
.Lj148:
	.long	U_$RETROMALINA_$$_TIM+4
.Lj166:
	.long	U_$RETROMALINA_$$_TS
.Lj167:
	.long	U_$RETROMALINA_$$_TS+4
.Lj170:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj174:
	.long	U_$RETROMALINA_$$_FB
.Le5:
	.size	RETROMALINA$_$TRETRO_$__$$_EXECUTE, .Le5 - RETROMALINA$_$TRETRO_$__$$_EXECUTE

.section .text.n_retromalina_$$_initmachine
	.balign 4
.globl	RETROMALINA_$$_INITMACHINE
RETROMALINA_$$_INITMACHINE:
# [374] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#4
# Var a located in register r5
# Var i located in register r6
# Var fh2 located in register r0
# Var bb located at r13+0, size=OS_8
# [375] dummy:=getmem(600000000);
	ldr	r0,.Lj226
	bl	SYSTEM_$$_GETMEM$LONGWORD$$POINTER
	ldr	r1,.Lj227
	str	r0,[r1]
# [376] fh2:=fileopen('C:\retro\combinedwaveforms.bin',$40);   // load combined waveforms for SID
	mov	r1,#64
	ldr	r0,.Lj228
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# [377] fileread(fh2,combined,1024);
	ldr	r1,.Lj229
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [378] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Var i located in register r2
# [379] for i:=0 to 127 do siddata[i]:=0;
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj232:
	add	r2,r2,#1
	mov	r3,r2,lsl #2
	mov	r0,#0
	ldr	r1,.Lj233
	str	r0,[r3, r1]
	cmp	r2,#127
	blt	.Lj232
# Var i located in register r4
# [380] for i:=0 to 15 do siddata[$30+i]:=round(1073741824*(1-20*attacktable[i]));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj236:
	add	r4,r4,#1
	mov	r0,r4,lsl #3
	vldr	d0,.Lj239
	ldr	r1,.Lj240
	add	r0,r0,r1
	vldr	d1,[r0]
	vmul.f64	d1,d0,d1
	vldr	d0,.Lj238
	vsub.f64	d0,d0,d1
	vldr	d1,.Lj237
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
	mov	r2,r4,lsl #2
	ldr	r1,.Lj241
	str	r0,[r2, r1]
	cmp	r4,#15
	blt	.Lj236
# Var i located in register r4
# [381] for i:=0 to 15 do siddata[$40+i]:=20*round(1073741824*attacktable[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj244:
	add	r4,r4,#1
	mov	r1,r4,lsl #3
	vldr	d0,.Lj245
	ldr	r0,.Lj240
	add	r0,r1,r0
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
	mov	r1,r4,lsl #2
	ldr	r2,.Lj247
	str	r0,[r1, r2]
	cmp	r4,#15
	blt	.Lj244
# Var i located in register r3
# [382] for i:=0 to 1023 do siddata[128+i]:=combined[i];
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj250:
	add	r3,r3,#1
	mov	r2,r3,lsl #2
	ldr	r0,.Lj229
	ldrb	r0,[r3, r0]
	ldr	r1,.Lj252
	str	r0,[r2, r1]
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r3,r0
	blt	.Lj250
# Var i located in register r3
# [383] for i:=0 to 1023 do siddata[128+i]:=(siddata[128+i]-128) shl 16;
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj255:
	add	r3,r3,#1
	ldr	r0,.Lj233
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
	blt	.Lj255
# [384] siddata[$0e]:=$7FFFF8;
	mvn	r0,#-1073741817
	bic	r0,r0,#1065353216
	ldr	r1,.Lj257
	str	r0,[r1]
# [385] siddata[$1e]:=$7FFFF8;
	mvn	r0,#-1073741817
	bic	r0,r0,#1065353216
	ldr	r1,.Lj258
	str	r0,[r1]
# [386] siddata[$2e]:=$7FFFF8;
	mvn	r1,#-1073741817
	bic	r1,r1,#1065353216
	ldr	r0,.Lj259
	str	r1,[r0]
# [387] p:=@tabl[0];
	ldr	r0,.Lj260
	ldr	r1,.Lj261
	str	r0,[r1]
# [407] fullscreen:=1;
	mov	r1,#1
	ldr	r0,.Lj262
	str	r1,[r0]
# [426] fb:=FramebufferDevicegetdefault;
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETDEFAULT$$PFRAMEBUFFERDEVICE
	ldr	r1,.Lj263
	str	r0,[r1]
# [427] FramebufferDeviceRelease(fb);
	ldr	r0,.Lj263
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICERELEASE$PFRAMEBUFFERDEVICE$$LONGWORD
# [428] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [429] FramebufferProperties.Depth:=32;
	mov	r0,#32
	ldr	r1,.Lj265
	str	r0,[r1]
# [430] FramebufferProperties.PhysicalWidth:=1920;
	mov	r1,#1920
	ldr	r0,.Lj266
	str	r1,[r0]
# [431] FramebufferProperties.PhysicalHeight:=1200;
	mov	r0,#1200
	ldr	r1,.Lj267
	str	r0,[r1]
	ldr	r0,.Lj268
# [432] FramebufferProperties.VirtualWidth:=FramebufferProperties.PhysicalWidth;
	ldr	r1,[r0, #32]
	str	r1,[r0, #40]
	ldr	r0,.Lj268
# [433] FramebufferProperties.VirtualHeight:=FramebufferProperties.PhysicalHeight * 2;
	ldr	r1,[r0, #36]
	mov	r1,r1,lsl #1
	str	r1,[r0, #44]
# [434] FramebufferDeviceAllocate(fb,@FramebufferProperties);
	ldr	r1,.Lj268
	ldr	r0,.Lj263
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEALLOCATE$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [435] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [436] FramebufferDeviceGetProperties(fb,@FramebufferProperties);
	ldr	r1,.Lj268
	ldr	r0,.Lj263
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETPROPERTIES$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [437] p2:=Pointer(FramebufferProperties.Address);
	ldr	r0,.Lj274
	ldr	r0,[r0]
	ldr	r1,.Lj275
	str	r0,[r1]
# [443] r1:=pointer($2000000);
	mov	r1,#33554432
	ldr	r0,.Lj276
	str	r1,[r0]
# Var i located in register r4
# [444] for i:=$2060000 to $2061000 do poke(i,0);
	mov	r4,#33554432
	orr	r4,r4,#393216
	sub	r4,r4,#1
	.balign 4
.Lj279:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	mov	r0,#33554432
	orr	r0,r0,#397312
	cmp	r4,r0
	blt	.Lj279
# [445] lpoke($2060004,$1000000);
	ldr	r0,.Lj280
	mov	r1,#16777216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [446] lpoke($2060000,$0000000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [447] fh2:=fileopen('C:\retro\st4font.def',$40);     // 8x16 font
	mov	r1,#64
	ldr	r0,.Lj281
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# [448] fileread(fh2,PInteger($2050000)^,2048);
	ldr	r1,.Lj282
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#2048
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [449] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [451] fh2:=fileopen('C:\retro\mysz.def',$40);        // load mouse cursor definition at sprite 8
	mov	r1,#64
	ldr	r0,.Lj283
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Var i located in register r6
# [452] for i:=0 to 1023 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj286:
	add	r6,r6,#1
# [454] fileread(fh2,bb,1);
	mov	r1,r13
	mov	r0,r4
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [455] a:=bb;
	ldrb	r5,[r13]
# Peephole LdrMov2Ldr removed superfluous mov
# Peephole FoldShiftProcess done
# [466] end;
	add	r1,r5,r5,lsl #8
# Peephole FoldShiftProcess done
	add	r5,r1,r5,lsl #16
# Peephole DataMov2Data removed superfluous mov
# [457] lpoke($2059000+4*i,a);
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#364544
	mov	r1,r5
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r6,r0
	blt	.Lj286
# [459] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [460] thread:=tretro.create(true);            // start frame refreshing thread
	mov	r2,#1
	mov	r1,#1
	ldr	r0,.Lj287
	bl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
	ldr	r1,.Lj288
	str	r0,[r1]
# [461] thread.start;
	ldr	r0,.Lj288
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_START
# [462] thread2:=tkbd.Create(true);
	mov	r2,#1
	mov	r1,#1
	ldr	r0,.Lj290
	bl	RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD
	ldr	r1,.Lj291
	str	r0,[r1]
# [463] thread2.start;
	ldr	r0,.Lj291
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_START
# [464] thread3:=taudio.Create(true);
	mov	r2,#1
	mov	r1,#1
	ldr	r0,.Lj293
	bl	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO
	ldr	r1,.Lj294
	str	r0,[r1]
# [465] thread3.start;
	ldr	r0,.Lj294
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_START
	add	r13,r13,#4
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj226:
	.long	600000000
.Lj227:
	.long	U_$RETROMALINA_$$_DUMMY
.Lj228:
	.long	.Ld1
.Lj229:
	.long	U_$RETROMALINA_$$_COMBINED
.Lj233:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj239:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj240:
	.long	TC_$RETROMALINA_$$_ATTACKTABLE
.Lj238:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63
.Lj237:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj241:
	.long	U_$RETROMALINA_$$_SIDDATA+192
.Lj245:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj247:
	.long	U_$RETROMALINA_$$_SIDDATA+256
.Lj252:
	.long	U_$RETROMALINA_$$_SIDDATA+512
.Lj257:
	.long	U_$RETROMALINA_$$_SIDDATA+56
.Lj258:
	.long	U_$RETROMALINA_$$_SIDDATA+120
.Lj259:
	.long	U_$RETROMALINA_$$_SIDDATA+184
.Lj260:
	.long	U_$RETROMALINA_$$_TABL
.Lj261:
	.long	U_$RETROMALINA_$$_P
.Lj262:
	.long	TC_$RETROMALINA_$$_FULLSCREEN
.Lj263:
	.long	U_$RETROMALINA_$$_FB
.Lj265:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+16
.Lj266:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+32
.Lj267:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+36
.Lj268:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
.Lj274:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+4
.Lj275:
	.long	U_$RETROMALINA_$$_P2
.Lj276:
	.long	U_$RETROMALINA_$$_R1
.Lj280:
	.long	33947652
.Lj281:
	.long	.Ld2
.Lj282:
	.long	33882112
.Lj283:
	.long	.Ld3
.Lj287:
	.long	VMT_$RETROMALINA_$$_TRETRO
.Lj288:
	.long	U_$RETROMALINA_$$_THREAD
.Lj290:
	.long	VMT_$RETROMALINA_$$_TKBD
.Lj291:
	.long	U_$RETROMALINA_$$_THREAD2
.Lj293:
	.long	VMT_$RETROMALINA_$$_TAUDIO
.Lj294:
	.long	U_$RETROMALINA_$$_THREAD3
.Le6:
	.size	RETROMALINA_$$_INITMACHINE, .Le6 - RETROMALINA_$$_INITMACHINE

.section .text.n_retromalina_$$_stopmachine
	.balign 4
.globl	RETROMALINA_$$_STOPMACHINE
RETROMALINA_$$_STOPMACHINE:
# [477] begin
	stmfd	r13!,{r14}
# [478] thread.terminate;
	ldr	r0,.Lj298
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 4
.Lj299:
# [479] repeat until running=0;
	ldr	r0,.Lj302
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj299
# [480] end;
	ldmfd	r13!,{r15}
.Lj298:
	.long	U_$RETROMALINA_$$_THREAD
.Lj302:
	.long	TC_$RETROMALINA_$$_RUNNING
.Le7:
	.size	RETROMALINA_$$_STOPMACHINE, .Le7 - RETROMALINA_$$_STOPMACHINE

.section .text.n_retromalina_$$_gettime$$int64
	.balign 4
.globl	RETROMALINA_$$_GETTIME$$INT64
RETROMALINA_$$_GETTIME$$INT64:
# Var $result located in register r0:r0
# [486] begin
# [489] end;
	bx	r14
.Le8:
	.size	RETROMALINA_$$_GETTIME$$INT64, .Le8 - RETROMALINA_$$_GETTIME$$INT64

.section .text.n_retromalina_$$_poke$longint$byte
	.balign 4
.globl	RETROMALINA_$$_POKE$LONGINT$BYTE
RETROMALINA_$$_POKE$LONGINT$BYTE:
# Var addr located in register r0
# Var b located in register r1
# [499] begin
# Var addr located in register r0
# Var b located in register r1
# [500] PByte(addr)^:=b;
	strb	r1,[r0]
# [501] end;
	bx	r14
.Le9:
	.size	RETROMALINA_$$_POKE$LONGINT$BYTE, .Le9 - RETROMALINA_$$_POKE$LONGINT$BYTE

.section .text.n_retromalina_$$_dpoke$longint$word
	.balign 4
.globl	RETROMALINA_$$_DPOKE$LONGINT$WORD
RETROMALINA_$$_DPOKE$LONGINT$WORD:
# Var addr located in register r0
# Var w located in register r1
# [505] begin
# [506] PWord(addr and $FFFFFFFE)^:=w;
	bic	r0,r0,#1
# Var w located in register r1
	strh	r1,[r0]
# [507] end;
	bx	r14
.Le10:
	.size	RETROMALINA_$$_DPOKE$LONGINT$WORD, .Le10 - RETROMALINA_$$_DPOKE$LONGINT$WORD

.section .text.n_retromalina_$$_lpoke$longint$longword
	.balign 4
.globl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
RETROMALINA_$$_LPOKE$LONGINT$LONGWORD:
# Var addr located in register r0
# Var c located in register r1
# [511] begin
# [512] PCardinal(addr and $FFFFFFFC)^:=c;
	bic	r0,r0,#3
# Var c located in register r1
	str	r1,[r0]
# [513] end;
	bx	r14
.Le11:
	.size	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD, .Le11 - RETROMALINA_$$_LPOKE$LONGINT$LONGWORD

.section .text.n_retromalina_$$_slpoke$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT
RETROMALINA_$$_SLPOKE$LONGINT$LONGINT:
# Var addr located in register r0
# Var i located in register r1
# [517] begin
# [518] PInteger(addr and $FFFFFFFC)^:=i;
	bic	r0,r0,#3
# Var i located in register r1
	str	r1,[r0]
# [519] end;
	bx	r14
.Le12:
	.size	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT, .Le12 - RETROMALINA_$$_SLPOKE$LONGINT$LONGINT

.section .text.n_retromalina_$$_peek$longint$$byte
	.balign 4
.globl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
RETROMALINA_$$_PEEK$LONGINT$$BYTE:
# Var addr located in register r0
# Var $result located in register r0
# [523] begin
# Var addr located in register r0
# Var $result located in register r0
# [524] peek:=Pbyte(addr)^;
	ldrb	r0,[r0]
# [525] end;
	bx	r14
.Le13:
	.size	RETROMALINA_$$_PEEK$LONGINT$$BYTE, .Le13 - RETROMALINA_$$_PEEK$LONGINT$$BYTE

.section .text.n_retromalina_$$_dpeek$longint$$word
	.balign 4
.globl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
RETROMALINA_$$_DPEEK$LONGINT$$WORD:
# Var addr located in register r0
# Var $result located in register r0
# [529] begin
# [530] dpeek:=PWord(addr and $FFFFFFFE)^;
	bic	r0,r0,#1
# Var $result located in register r0
	ldrh	r0,[r0]
# [531] end;
	bx	r14
.Le14:
	.size	RETROMALINA_$$_DPEEK$LONGINT$$WORD, .Le14 - RETROMALINA_$$_DPEEK$LONGINT$$WORD

.section .text.n_retromalina_$$_lpeek$longint$$longword
	.balign 4
.globl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD:
# Var addr located in register r0
# Var $result located in register r0
# [535] begin
# [536] lpeek:=PCardinal(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [537] end;
	bx	r14
.Le15:
	.size	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD, .Le15 - RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD

.section .text.n_retromalina_$$_slpeek$longint$$longint
	.balign 4
.globl	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT
RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT:
# Var addr located in register r0
# Var $result located in register r0
# [541] begin
# [542] slpeek:=PInteger(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [543] end;
	bx	r14
.Le16:
	.size	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT, .Le16 - RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT

.section .text.n_retromalina_$$_blit$crc5a667533
	.balign 4
.globl	RETROMALINA_$$_BLIT$crc5A667533
RETROMALINA_$$_BLIT$crc5A667533:
# Temps allocated between r11-68 and r11-44
# [553] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#68
# Var from located in register r0
# Var x located in register r4
# Var y located in register r0
# Var too located in register r10
# Var x2 located in register r6
# Var y2 located in register r0
# Var length located in register r0
# Var lines located in register r5
# Var bpl1 located in register r0
# Var bpl2 located in register r0
# Var i located in register r8
# Var j located in register r5
# Var b1 located in register r7
# Var b2 located in register r6
	str	r0,[r11, #-48]
	mov	r4,r1
	str	r2,[r11, #-60]
	mov	r10,r3
	ldr	r6,[r11, #4]
	ldr	r0,[r11, #8]
	str	r0,[r11, #-56]
	ldr	r0,[r11, #12]
	str	r0,[r11, #-52]
	ldr	r5,[r11, #16]
	ldr	r0,[r11, #20]
	str	r0,[r11, #-68]
	ldr	r0,[r11, #24]
	str	r0,[r11, #-64]
# [554] if lpeek($2060008)<16 then
	ldr	r0,.Lj323
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	cmp	r0,#16
	bcs	.Lj325
# [556] from:=from+x;
	ldr	r1,[r11, #-48]
	add	r0,r4,r1
	str	r0,[r11, #-48]
# [557] too:=too+x2;
	add	r10,r6,r10
# Peephole DataMov2Data removed superfluous mov
# [558] for i:=0 to lines-1 do
	sub	r9,r5,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r8,#0
	cmp	r9,r8
	blt	.Lj327
	sub	r8,r8,#1
	.balign 4
.Lj328:
	add	r8,r8,#1
# [560] b2:=too+bpl2*(i+y2);
	ldr	r0,[r11, #-56]
	add	r1,r0,r8
	ldr	r2,[r11, #-64]
# MulAdd2MLA done
	mla	r6,r2,r1,r10
# Peephole DataMov2Data removed superfluous mov
# [561] b1:=from+bpl1*(i+y);
	ldr	r0,[r11, #-60]
	add	r1,r0,r8
	ldr	r2,[r11, #-68]
	mul	r0,r2,r1
	ldr	r1,[r11, #-48]
	add	r7,r1,r0
# Peephole DataMov2Data removed superfluous mov
# [562] for j:=0 to length-1 do
	ldr	r1,[r11, #-52]
	sub	r4,r1,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r5,#0
	cmp	r4,r5
	blt	.Lj330
	sub	r5,r5,#1
	.balign 4
.Lj331:
	add	r5,r5,#1
# [563] poke(b2+j,peek(b1+j));
	add	r0,r5,r7
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0
	add	r0,r5,r6
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	cmp	r4,r5
	bgt	.Lj331
.Lj330:
	cmp	r9,r8
	bgt	.Lj328
.Lj327:
.Lj325:
# [567] end;
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj323:
	.long	33947656
.Le17:
	.size	RETROMALINA_$$_BLIT$crc5A667533, .Le17 - RETROMALINA_$$_BLIT$crc5A667533

.section .text.n_retromalina_$$_scrconvert16f$pointer
	.balign 4
.globl	RETROMALINA_$$_SCRCONVERT16F$POINTER
RETROMALINA_$$_SCRCONVERT16F$POINTER:
# [580] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var e located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [581] a:=$2000000; // TODO! a:=0! Get a screen pointer from sys var !
	mov	r0,#33554432
	str	r0,[r11, #-52]
# [582] e:=raml^[$18003];
	ldr	r0,.Lj341
	ldr	r0,[r0]
	ldr	r1,.Lj342
	ldr	r0,[r0, r1]
	str	r0,[r11, #-56]
# [585] stmfd r13!,{r0-r12}   //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [586] ldr r1,a
	ldr	r1,[r11, #-52]
# [587] add r1,#0x1000000
	add	r1,#16777216
# [588] mov r6,r1
	mov	r6,r1
# [589] add r6,#1
	add	r6,#1
# [590] ldr r2,screen
	ldr	r2,[r11, #-48]
# [591] mov r12,r2
	mov	r12,r2
# [592] add r12,#4
	add	r12,#4
# [593] ldr r3,a
	ldr	r3,[r11, #-52]
# [594] add r3,#0x10000
	add	r3,#65536
# [595] mov r5,r2
	mov	r5,r2
# [597] add r5,#307200
	add	r5,#307200
# [598] ldr r9,e
	ldr	r9,[r11, #-56]
# [599] mov r10,r9
	mov	r10,r9
.Lj334:
# [600] p10:            str r9,[r2],#8
	str	r9,[r2], #8
# [601] str r10,[r12],#8
	str	r10,[r12], #8
# [602] str r9,[r2],#8
	str	r9,[r2], #8
# [603] str r10,[r12],#8
	str	r10,[r12], #8
# [604] cmp r2,r5
	cmp	r2,r5
# [605] blt p10
	blt	.Lj334
# [606] mov r0,#1120
	mov	r0,#1120
.Lj335:
# [608] p11:            add r5,#256
	add	r5,#256
# [609] ldr r9,e
	ldr	r9,[r11, #-56]
# [610] mov r10,r9
	mov	r10,r9
.Lj336:
# [611] p0:             str r9,[r2],#8
	str	r9,[r2], #8
# [612] str r10,[r12],#8
	str	r10,[r12], #8
# [613] str r9,[r2],#8
	str	r9,[r2], #8
# [614] str r10,[r12],#8
	str	r10,[r12], #8
# [615] cmp r2,r5
	cmp	r2,r5
# [616] blt p0
	blt	.Lj336
# [618] add r5,#7168
	add	r5,#7168
.Lj337:
# [619] p1:             ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [620] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [621] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [622] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [623] str r9,[r2],#8
	str	r9,[r2], #8
# [624] str r10,[r12],#8
	str	r10,[r12], #8
# [625] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [626] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [627] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [628] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [629] str r9,[r2],#8
	str	r9,[r2], #8
# [630] str r10,[r12],#8
	str	r10,[r12], #8
# [631] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [632] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [633] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [634] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [635] str r9,[r2],#8
	str	r9,[r2], #8
# [636] str r10,[r12],#8
	str	r10,[r12], #8
# [637] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [638] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [639] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [640] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [641] str r9,[r2],#8
	str	r9,[r2], #8
# [642] str r10,[r12],#8
	str	r10,[r12], #8
# [643] cmp r2,r5
	cmp	r2,r5
# [644] blt p1
	blt	.Lj337
# [646] add r5,#256
	add	r5,#256
# [647] ldr r9,e
	ldr	r9,[r11, #-56]
# [648] mov r10,r9
	mov	r10,r9
.Lj338:
# [649] p002:           str r9,[r2],#8
	str	r9,[r2], #8
# [650] str r10,[r12],#8
	str	r10,[r12], #8
# [651] str r9,[r2],#8
	str	r9,[r2], #8
# [652] str r10,[r12],#8
	str	r10,[r12], #8
# [653] cmp r2,r5
	cmp	r2,r5
# [654] blt p002
	blt	.Lj338
# [655] subs r0,#1
	subs	r0,#1
# [656] bne p11
	bne	.Lj335
# [658] add r5,#307200
	add	r5,#307200
# [659] ldr r9,e
	ldr	r9,[r11, #-56]
# [660] mov r10,r9
	mov	r10,r9
.Lj339:
# [661] p12:            str r9,[r2],#8
	str	r9,[r2], #8
# [662] str r10,[r12],#8
	str	r10,[r12], #8
# [663] str r9,[r2],#8
	str	r9,[r2], #8
# [664] str r10,[r12],#8
	str	r10,[r12], #8
# [665] cmp r2,r5
	cmp	r2,r5
# [666] blt p12
	blt	.Lj339
# [667] p999:           ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [671] end;
	ldmea	r11,{r11,r13,r15}
.Lj341:
	.long	U_$RETROMALINA_$$_R1
.Lj342:
	.long	393228
.Le18:
	.size	RETROMALINA_$$_SCRCONVERT16F$POINTER, .Le18 - RETROMALINA_$$_SCRCONVERT16F$POINTER

.section .text.n_retromalina_$$_spritef$pointer
	.balign 4
RETROMALINA_$$_SPRITEF$POINTER:
# [682] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var spritebase located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [683] a:=$2000000;
	mov	r0,#33554432
	str	r0,[r11, #-52]
# [684] spritebase:=$60040;
	mov	r0,#64
	orr	r0,r0,#393216
	str	r0,[r11, #-56]
# [687] stmfd r13!,{r0-r12}     //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [688] mov r12,#0
	mov	r12,#0
# [690] ldr r0,spritebase
	ldr	r0,[r11, #-56]
# [691] ldr r1,a
	ldr	r1,[r11, #-52]
# [692] add r0,r1
	add	r0,r1
.Lj345:
# [693] p103:          ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [694] mov r2,r1               // sprite 0 position
	mov	r2,r1
# [695] mov r3,r1
	mov	r3,r1
# [696] ldr r5,p100
	ldr	r5,.Lj346
# [697] and r2,r5               // x pos
	and	r2,r5
# [698] lsl r2,#2
	lsl	r2,#2
# [699] ldr r4,p100+4
	ldr	r4,.Lj346+4
# [700] and r3,r4
	and	r3,r4
# [701] lsr r3,#16              // y pos
	lsr	r3,#16
# [702] cmp r2,#8192
	cmp	r2,#8192
# [703] ble p104
	ble	.Lj347
# [704] add r12,#1
	add	r12,#1
# [705] add r0,#4
	add	r0,#4
# [706] cmp r12,#8
	cmp	r12,#8
# [707] bge p999
	bge	.Lj348
# [708] b p103
	b	.Lj345
.Lj347:
# [710] p104:          ldr r4,p100+8
	ldr	r4,.Lj346+8
# [711] mul r3,r3,r4
	mul	r3,r3,r4
# [712] add r3,r2      // sprite pos
	add	r3,r2
# [713] ldr r4,screen
	ldr	r4,[r11, #-48]
# [714] add r3,r4      // pointer to upper left sprite pixel in r3
	add	r3,r4
# [715] ldr r4,p100+12
	ldr	r4,.Lj346+12
# [716] add r4,r4,r12,lsl #12
	add	r4,r4,r12,lsl #12
# [717] ldr r5,a
	ldr	r5,[r11, #-52]
# [718] add r4,r5      //pointer to sprite 0 data
	add	r4,r5
# [720] ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [721] mov r2,r1
	mov	r2,r1
# [722] ldr r5,p100
	ldr	r5,.Lj346
# [723] and r2,r5
	and	r2,r5
# [724] lsr r1,#16
	lsr	r1,#16
# [725] cmp r1,#8
	cmp	r1,#8
# [726] movgt r1,#8
	movgt	r1,#8
# [727] cmp r2,#8
	cmp	r2,#8
# [728] movgt r2,#8
	movgt	r2,#8
# [729] cmp r1,#1
	cmp	r1,#1
# [730] movle r1,#1
	movle	r1,#1
# [731] cmp r2,#1
	cmp	r2,#1
# [732] movle r2,#1
	movle	r2,#1
# [733] mov r7,r2
	mov	r7,r2
# [734] mov r8,#128
	mov	r8,#128
# [735] mul r8,r8,r2
	mul	r8,r8,r2
# [736] mov r9,#32
	mov	r9,#32
# [737] mul r9,r9,r1 //y zoom
	mul	r9,r9,r1
# [738] mov r10,r1
	mov	r10,r1
# [739] mov r6,#32
	mov	r6,#32
.Lj349:
# [740] p101:          ldr r5,[r4],#4
	ldr	r5,[r4], #4
.Lj350:
# [741] p102:          cmp r5,#0
	cmp	r5,#0
# [742] strne r5,[r3],#4
	strne	r5,[r3], #4
# [743] addeq r3,#4
	addeq	r3,#4
# [744] subs r7,#1
	subs	r7,#1
# [745] bne p102
	bne	.Lj350
# [746] mov r7,r2
	mov	r7,r2
# [747] subs r6,#1
	subs	r6,#1
# [748] bne p101
	bne	.Lj349
# [749] add r3,#7680
	add	r3,#7680
# [750] sub r3,r8
	sub	r3,r8
# [751] subs r10,#1
	subs	r10,#1
# [752] subne r4,#128
	subne	r4,#128
# [753] addeq r10,r1
	addeq	r10,r1
# [754] mov r6,#32
	mov	r6,#32
# [755] subs r9,#1
	subs	r9,#1
# [756] bne p101
	bne	.Lj349
# [757] add r12,#1
	add	r12,#1
# [758] cmp r12,#8
	cmp	r12,#8
# [759] bne p103
	bne	.Lj345
# [760] b p999
	b	.Lj348
.Lj346:
	.long	65535
	.long	-65536
	.long	7680
	.long	335872
.Lj348:
# [767] p999:          ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [769] end;
	ldmea	r11,{r11,r13,r15}
.Le19:
	.size	RETROMALINA_$$_SPRITEF$POINTER, .Le19 - RETROMALINA_$$_SPRITEF$POINTER

.section .text.n_retromalina_$$_setataripallette$longint
	.balign 4
.globl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
RETROMALINA_$$_SETATARIPALLETTE$LONGINT:
# [775] begin
	stmfd	r13!,{r4,r5,r14}
# Var bank located in register r4
# Var fh located in register r0
	mov	r4,r0
# [776] fh:=fileopen('C:\retro\ataripalette.def',$40);
	mov	r1,#64
	ldr	r0,.Lj353
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r5,r0
# Var fh located in register r5
# [777] fileread(fh,Pinteger($2010000+1024*bank)^,1024);
	mov	r1,r4,lsl #10
	ldr	r0,.Lj354
	add	r1,r0,r1
# Var fh located in register r5
	mov	r0,r5
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [778] fileclose(fh);
	mov	r0,r5
# Var fh located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [779] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj353:
	.long	.Ld4
.Lj354:
	.long	33619968
.Le20:
	.size	RETROMALINA_$$_SETATARIPALLETTE$LONGINT, .Le20 - RETROMALINA_$$_SETATARIPALLETTE$LONGINT

.section .text.n_retromalina_$$_sethidecolor$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT:
# Var c located in register r0
# Var bank located in register r1
# Var mask located in register r2
# [783] begin
# [784] raml^[$4000+256*bank+c]+=(mask shl 24);
	mov	r3,r2,lsl #24
	ldr	r2,.Lj357
	ldr	r2,[r2]
	mov	r1,r1,lsl #8
	add	r1,r1,#16384
	add	r0,r0,r1
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r0, lsl #2]
	add	r2,r1,r3
	ldr	r1,.Lj357
	ldr	r1,[r1]
# Peephole FoldShiftLdrStr done
	str	r2,[r1, r0, lsl #2]
# [785] end;
	bx	r14
.Lj357:
	.long	U_$RETROMALINA_$$_R1
.Le21:
	.size	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT, .Le21 - RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_cls$longint
	.balign 4
.globl	RETROMALINA_$$_CLS$LONGINT
RETROMALINA_$$_CLS$LONGINT:
# [792] begin
	stmfd	r13!,{r4,r5,r6,r14}
# Var c located in register r4
# Var c2 located in register r0
# Var i located in register r6
# Var l located in register r5
# Var c3 located in register r4
# Var c located in register r0
# [793] c:=c mod 256;
	mov	r1,r0,asr #31
	eor	r0,r0,r1
	sub	r0,r0,r1
	and	r0,r0,#255
	eor	r0,r1,r0
	sub	r4,r0,r1
# Var c located in register r4
# [794] l:=(lpeek($2060020)*lpeek($2060024)) div 4 ;
	ldr	r0,.Lj361
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r5,r0
	ldr	r0,.Lj362
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mul	r0,r0,r5
	mov	r5,r0,lsr #2
# Var l located in register r5
# Peephole FoldShiftProcess done
# [798] end;
	add	r1,r4,r4,lsl #8
# Peephole FoldShiftProcess done
	add	r1,r1,r4,lsl #16
# Peephole FoldShiftProcess done
	add	r4,r1,r4,lsl #24
# Var c3 located in register r4
# Var l located in register r5
# Var i located in register r6
# [796] for i:=0 to l do lpoke($3000000+4*i,c3); // TODO Use screen pointer !!!!
	mov	r6,#0
	cmp	r5,r6
	blt	.Lj364
	sub	r6,r6,#1
	.balign 4
.Lj365:
	add	r6,r6,#1
	mov	r0,r6,lsl #2
	sub	r0,r0,#-50331648
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r5,r6
	bgt	.Lj365
.Lj364:
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj361:
	.long	33947680
.Lj362:
	.long	33947684
.Le22:
	.size	RETROMALINA_$$_CLS$LONGINT, .Le22 - RETROMALINA_$$_CLS$LONGINT

.section .text.n_retromalina_$$_putpixel$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT:
# [810] begin
	stmfd	r13!,{r14}
# Var x located in register r0
# Var y located in register r1
# Var color located in register r2
# Var adr located in register r0
# [811] adr:=$3000000+x+1792*y; if adr<$3FFFFFF then poke(adr,color);
	mov	r3,#1792
	mul	r1,r1,r3
	sub	r0,r0,#-50331648
	add	r0,r0,r1
# Var adr located in register r0
	mvn	r1,#-67108864
	cmp	r0,r1
	andlt	r1,r2,#255
	bllt	RETROMALINA_$$_POKE$LONGINT$BYTE
# [812] end;
	ldmfd	r13!,{r15}
.Le23:
	.size	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT, .Le23 - RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [828] begin
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
	str	r3,[r11, #-60]
	ldr	r0,[r11, #4]
	str	r0,[r11, #-64]
# [830] if x<0 then x:=0;
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-48]
# [831] if x>1792 then x:=1792;
	ldr	r0,[r11, #-48]
	cmp	r0,#1792
	movgt	r0,#1792
	strgt	r0,[r11, #-48]
# [832] if y<0 then y:=0;
	ldr	r0,[r11, #-52]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-52]
# [833] if y>1120 then y:=1120;
	ldr	r0,[r11, #-52]
	cmp	r0,#1120
	movgt	r0,#1120
	strgt	r0,[r11, #-52]
# [834] if x+l>1792 then l:=1792-x-1;
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-56]
	add	r0,r1,r0
	cmp	r0,#1792
	ble	.Lj382
	ldr	r0,[r11, #-48]
	mov	r1,#1792
	sub	r0,r1,r0
	sub	r0,r0,#1
	str	r0,[r11, #-56]
.Lj382:
# [835] if y+h>1120 then h:=1120-y-1 ;
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	cmp	r0,#1120
	ble	.Lj384
	ldr	r1,[r11, #-52]
	mov	r0,#1120
	sub	r0,r0,r1
	sub	r0,r0,#1
	str	r0,[r11, #-60]
.Lj384:
# [836] for j:=y to y+h-1 do begin
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	sub	r4,r0,#1
	ldr	r0,[r11, #-52]
	str	r0,[r11, #-76]
# Peephole StrLdr2StrMov 1 done
	cmp	r4,r0
	blt	.Lj386
	ldr	r0,[r11, #-76]
	sub	r0,r0,#1
	str	r0,[r11, #-76]
	.balign 4
.Lj387:
	ldr	r0,[r11, #-76]
	add	r0,r0,#1
	str	r0,[r11, #-76]
# [843] stmfd r13!,{r0-r2}     //Push registers
	stmfd	r13!,{r0,r1,r2}
# [844] mov r0,#1792
	mov	r0,#1792
# [845] ldr r1,j
	ldr	r1,[r11, #-76]
# [846] mul r0,r0,r1
	mul	r0,r0,r1
# [847] add r0,#0x3000000      //Todo - screen pointer!
	add	r0,#50331648
# [848] ldr r1,c
	ldr	r1,[r11, #-64]
# [849] ldr r2,x
	ldr	r2,[r11, #-48]
# [850] add r0,r2
	add	r0,r2
# [851] ldr r2,l
	ldr	r2,[r11, #-56]
.Lj372:
# [852] p1: strb r1,[r0]
	strb	r1,[r0]
# [853] add r0,#1
	add	r0,#1
# [854] subs r2,#1
	subs	r2,#1
# [855] bne p1
	bne	.Lj372
# [856] ldmfd r13!,{r0-r2}
	ldmfd	r13!,{r0,r1,r2}
	ldr	r0,[r11, #-76]
	cmp	r4,r0
	bgt	.Lj387
.Lj386:
# [861] end;
	ldmea	r11,{r4,r11,r13,r15}
.Le24:
	.size	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le24 - RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box2$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [873] begin
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
# [874] if (x1<x2) and (y1<y2) then
	cmp	r0,r2
	bge	.Lj391
	cmp	r1,r3
	bge	.Lj391
# [875] box(x1,y1,x2-x1+1, y2-y1+1,color);
	str	r12,[r13]
	sub	r3,r3,r1
	add	r3,r3,#1
	sub	r2,r2,r0
	add	r2,r2,#1
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj391:
# [876] end;
	ldmea	r11,{r11,r13,r15}
.Le25:
	.size	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le25 - RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_putchar$longint$longint$char$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
# [893] begin
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
# [894] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r7,r0,#33554432
	add	r7,r7,#327680
# Var start located in register r7
# Var i located in register r10
# [895] for i:=0 to 15 do
	mov	r10,#0
	sub	r10,r10,#1
	.balign 4
.Lj397:
	add	r10,r10,#1
# [897] b:=peek(start+i);
	add	r0,r10,r7
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r8,r0
# [898] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj400:
	add	r9,r9,#1
# [900] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [904] end;
	ands	r0,r8,r0,lsl r9
# [901] putpixel(x+j,y+i,col);
	addne	r1,r10,r5
	addne	r0,r9,r4
	movne	r2,r6
	blne	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	cmp	r9,#7
	blt	.Lj400
	cmp	r10,#15
	blt	.Lj397
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r15}
.Le26:
	.size	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT, .Le26 - RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT

.section .text.n_retromalina_$$_putcharz$longint$longint$char$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-68 and r11-44
# [913] begin
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
	str	r3,[r11, #-52]
	ldr	r0,[r11, #4]
	str	r0,[r11, #-64]
	ldr	r0,[r11, #8]
	str	r0,[r11, #-68]
# [914] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r0,r0,#33554432
	add	r10,r0,#327680
# Var start located in register r10
# Peephole DataMov2Data removed superfluous mov
# Var i located in register r0
# [915] for i:=0 to 15 do
	mov	r0,#0
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-48]
	.balign 4
.Lj407:
	ldr	r0,[r11, #-48]
	add	r0,r0,#1
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 2 done
# [917] b:=peek(start+i);
	mov	r1,r0
	add	r0,r1,r10
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r8,r0
# [918] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj410:
	add	r9,r9,#1
# [920] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [926] end;
	ands	r0,r8,r0,lsl r9
	beq	.Lj412
# [921] for k:=0 to yz-1 do
	ldr	r0,[r11, #-68]
	sub	r6,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r6,r7
	blt	.Lj414
	sub	r7,r7,#1
	.balign 4
.Lj415:
	add	r7,r7,#1
# [922] for l:=0 to xz-1 do
	ldr	r0,[r11, #-64]
	sub	r5,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r4,#0
	cmp	r5,r4
	blt	.Lj417
	sub	r4,r4,#1
	.balign 4
.Lj418:
	add	r4,r4,#1
# [923] putpixel(x+j*xz+l,y+i*yz+k,col);
	ldr	r0,[r11, #-68]
	ldr	r1,[r11, #-48]
	mul	r2,r0,r1
	ldr	r1,[r11, #-56]
	add	r0,r1,r2
	add	r1,r7,r0
# Peephole DataMov2Data removed superfluous mov
	ldr	r0,[r11, #-64]
	mul	r3,r0,r9
	ldr	r2,[r11, #-60]
	add	r0,r2,r3
	add	r0,r4,r0
	ldr	r2,[r11, #-52]
	bl	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	cmp	r5,r4
	bgt	.Lj418
.Lj417:
	cmp	r6,r7
	bgt	.Lj415
.Lj414:
.Lj412:
	cmp	r9,#7
	blt	.Lj410
	ldr	r0,[r11, #-48]
	cmp	r0,#15
	blt	.Lj407
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le27:
	.size	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT, .Le27 - RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_outtextxy$longint$longint$ansistring$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
# Temps allocated between r13+4 and r13+124
# [932] begin
	stmfd	r13!,{r4,r5,r6,r7,r8,r14}
	sub	r13,r13,#124
# Var x located in register r4
# Var y located in register r5
# Var c located in register r6
# Var i located in register r8
# Var t located at r13+0, size=OS_32
	mov	r4,r0
	mov	r5,r1
	str	r2,[r13]
	mov	r6,r3
	ldr	r0,[r13]
	bl	fpc_ansistr_incr_ref
# [933] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	add	r2,r13,#4
	add	r1,r13,#16
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #120]
	cmp	r0,#0
	bne	.Lj421
	ldr	r7,[r13]
	cmp	r7,#0
	ldrne	r7,[r7, #-4]
	mov	r8,#1
	cmp	r7,r8
	blt	.Lj425
	sub	r8,r8,#1
	.balign 4
.Lj426:
	add	r8,r8,#1
# Peephole FoldShiftProcess done
# [934] end;
	add	r0,r4,r8,lsl #3
	sub	r0,r0,#8
	ldr	r1,[r13]
	sub	r1,r1,#1
	ldrb	r2,[r1, r8]
	mov	r3,r6
	mov	r1,r5
	bl	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
	cmp	r7,r8
	bgt	.Lj426
.Lj425:
.Lj421:
	bl	fpc_popaddrstack
	mov	r0,r13
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r13, #120]
	cmp	r0,#0
	blne	fpc_reraise
	add	r13,r13,#124
	ldmfd	r13!,{r4,r5,r6,r7,r8,r15}
.Le28:
	.size	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT, .Le28 - RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT

.section .text.n_retromalina_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-168 and r11-48
# [940] begin
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
	ldr	r0,[r11, #-48]
	bl	fpc_ansistr_incr_ref
# [941] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	sub	r2,r11,#60
	sub	r1,r11,#164
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-168]
	cmp	r0,#0
	bne	.Lj429
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r8,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r8,r7
	blt	.Lj433
	sub	r7,r7,#1
	.balign 4
.Lj434:
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
	bgt	.Lj434
.Lj433:
.Lj429:
	bl	fpc_popaddrstack
# [942] end;
	sub	r0,r11,#48
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-168]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le29:
	.size	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT, .Le29 - RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_scrollup
	.balign 4
.globl	RETROMALINA_$$_SCROLLUP
RETROMALINA_$$_SCROLLUP:
# Var i located in register r0
# [948] begin
# [951] end;
	bx	r14
.Le30:
	.size	RETROMALINA_$$_SCROLLUP, .Le30 - RETROMALINA_$$_SCROLLUP

.section .text.n_retromalina_$$_sid$longint$$tsample
	.balign 4
.globl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
RETROMALINA_$$_SID$LONGINT$$TSAMPLE:
# [1030] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#168
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
	str	r1,[r11, #-48]
# [1031] sidptr:=@siddata;
	ldr	r0,.Lj486
	str	r0,[r11, #-168]
# [1032] if mode=1 then  // get regs
	ldr	r0,[r11, #-48]
	cmp	r0,#1
	bne	.Lj488
# [1036] siddata[$56]:=peek($2070003);
	ldr	r0,.Lj489
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	ldr	r1,.Lj490
	str	r0,[r1]
# [1037] siddata[$57]:=peek($2070004);
	ldr	r0,.Lj491
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	ldr	r1,.Lj492
	str	r0,[r1]
# [1038] siddata[$58]:=peek($2070005);
	ldr	r0,.Lj493
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	ldr	r1,.Lj494
	str	r0,[r1]
# [1039] siddata[0]:=round(1.0263*(16*peek($200D400)+4096*peek($200d401))); //freq1
	mov	r0,#33554432
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r4,r0,lsl #4
	ldr	r0,.Lj496
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [1962] end;
	add	r0,r4,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj495
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r1,.Lj486
	str	r0,[r1]
# [1040] siddata[$10]:=round(1.0263*(16*peek($200d407)+4096*peek($200d408)));
	ldr	r0,.Lj499
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r4,r0,lsl #4
	ldr	r0,.Lj500
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	add	r0,r4,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj498
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r1,.Lj501
	str	r0,[r1]
# [1041] siddata[$20]:=round(1.0263*(16*peek($200d40e)+4096*peek($200d40f)));
	ldr	r0,.Lj503
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r4,r0,lsl #4
	ldr	r0,.Lj504
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	add	r0,r4,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj502
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r1,.Lj505
	str	r0,[r1]
# [1043] siddata[1]:=peek($200d404) and 1;   // gate1
	ldr	r0,.Lj506
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#1
	ldr	r0,.Lj507
	str	r1,[r0]
# [1044] siddata[2]:=peek($200d404) and 4;  //ring1
	ldr	r0,.Lj506
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#4
	ldr	r0,.Lj509
	str	r1,[r0]
# [1045] siddata[3]:=peek($200d404) and 8;  // test1
	ldr	r0,.Lj506
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#8
	ldr	r0,.Lj511
	str	r1,[r0]
# [1046] siddata[4]:=((peek($200d404) and 2) shr 1)-1; //sync1
	ldr	r0,.Lj506
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#2
	mov	r0,r0,lsr #1
	sub	r1,r0,#1
	ldr	r0,.Lj513
	str	r1,[r0]
# [1048] siddata[5]:=peek($200d405) and  $F;   //sd1, 5
	ldr	r0,.Lj514
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#15
	ldr	r1,.Lj515
	str	r0,[r1]
# [1049] siddata[6]:=peek($200d405) shr 4;     ///sa1, 6
	ldr	r0,.Lj514
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r0,r0,lsr #4
	ldr	r1,.Lj517
	str	r0,[r1]
# [1050] siddata[7]:=peek($200d406)and $F;     //sr1 //7
	ldr	r0,.Lj518
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#15
	ldr	r0,.Lj519
	str	r1,[r0]
# [1051] siddata[$0d]:=(peek($200d406) and $F0) shl 22;      //0d,sussvol1
	ldr	r0,.Lj518
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	mov	r0,r0,lsl #22
	ldr	r1,.Lj521
	str	r0,[r1]
# [1052] siddata[$53]:=((peek($200d402)+256*peek($200d403)) and $FFF);//
	ldr	r0,.Lj522
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj523
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	add	r0,r4,r0,lsl #8
	mov	r0,r0,lsl #20
	mov	r0,r0,lsr #20
	ldr	r1,.Lj524
	str	r0,[r1]
# [1054] siddata[$11]:=peek($200d40b) and 1;
	ldr	r0,.Lj525
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#1
	ldr	r0,.Lj526
	str	r1,[r0]
# [1055] siddata[$12]:=peek($200d40b) and 4;
	ldr	r0,.Lj525
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#4
	ldr	r1,.Lj528
	str	r0,[r1]
# [1056] siddata[$13]:=peek($200d40b) and 8;
	ldr	r0,.Lj525
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#8
	ldr	r1,.Lj530
	str	r0,[r1]
# [1057] siddata[$14]:=((peek($200d40b) and 2) shr 1)-1;
	ldr	r0,.Lj525
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#2
	mov	r0,r0,lsr #1
	sub	r0,r0,#1
	ldr	r1,.Lj532
	str	r0,[r1]
# [1058] siddata[$15]:=peek($200d40c) and  $F;
	ldr	r0,.Lj533
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#15
	ldr	r1,.Lj534
	str	r0,[r1]
# [1059] siddata[$16]:=peek($200d40c) shr 4;
	ldr	r0,.Lj533
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r0,r0,lsr #4
	ldr	r1,.Lj536
	str	r0,[r1]
# [1060] siddata[$17]:=peek($200d40d)and $F;
	ldr	r0,.Lj537
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#15
	ldr	r1,.Lj538
	str	r0,[r1]
# [1061] siddata[$1d]:=(peek($200d40d) and $F0) shl 22;
	ldr	r0,.Lj537
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	mov	r0,r0,lsl #22
	ldr	r1,.Lj540
	str	r0,[r1]
# [1062] siddata[$54]:=((peek($200d409)+256*peek($200d40a)) and $FFF);
	ldr	r0,.Lj541
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj542
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	add	r0,r4,r0,lsl #8
	mov	r1,r0,lsl #20
	mov	r1,r1,lsr #20
	ldr	r0,.Lj543
	str	r1,[r0]
# [1064] siddata[$21]:=peek($200d412) and 1;
	ldr	r0,.Lj544
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#1
	ldr	r1,.Lj545
	str	r0,[r1]
# [1065] siddata[$22]:=peek($200d412) and 4;
	ldr	r0,.Lj544
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#4
	ldr	r0,.Lj547
	str	r1,[r0]
# [1066] siddata[$23]:=peek($200d412) and 8;
	ldr	r0,.Lj544
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#8
	ldr	r0,.Lj549
	str	r1,[r0]
# [1067] siddata[$24]:=((peek($200d412) and 2) shr 1)-1;
	ldr	r0,.Lj544
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#2
	mov	r0,r0,lsr #1
	sub	r1,r0,#1
	ldr	r0,.Lj551
	str	r1,[r0]
# [1068] siddata[$25]:=peek($200d413) and  $F;
	ldr	r0,.Lj552
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#15
	ldr	r1,.Lj553
	str	r0,[r1]
# [1069] siddata[$26]:=peek($200d413) shr 4;
	ldr	r0,.Lj552
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0,lsr #4
	ldr	r0,.Lj555
	str	r1,[r0]
# [1070] siddata[$27]:=peek($200d414)and $F;
	ldr	r0,.Lj556
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#15
	ldr	r1,.Lj557
	str	r0,[r1]
# [1071] siddata[$2d]:=(peek($200d414) and $F0) shl 22;
	ldr	r0,.Lj556
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	mov	r0,r0,lsl #22
	ldr	r1,.Lj559
	str	r0,[r1]
# [1072] siddata[$55]:=((peek($200d410)+256*peek($200d411)) and $FFF);
	ldr	r0,.Lj560
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj561
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	add	r0,r4,r0,lsl #8
	mov	r0,r0,lsl #20
	mov	r0,r0,lsr #20
	ldr	r1,.Lj562
	str	r0,[r1]
# [1077] ff:=(peek($200d416) shl 3)+(peek($200d415) and 7);
	ldr	r0,.Lj563
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r4,r0,lsl #3
	ldr	r0,.Lj564
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#7
	add	r1,r0,r4
	ldr	r0,.Lj565
	str	r1,[r0]
	ldr	r0,.Lj565
	ldr	r0,[r0]
# [1078] siddata[$6E]:=(ff shl 1)+(ff shl 2)+32;
	mov	r1,r0,lsl #1
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #2
	add	r0,r0,#32
	ldr	r1,.Lj567
	str	r0,[r1]
# [1080] siddata[$59]:=(peek($200d417) and 1); //filter 1
	ldr	r0,.Lj568
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r1,r0,#1
	ldr	r0,.Lj569
	str	r1,[r0]
# [1081] siddata[$5a]:=(peek($200d417) and 2);
	ldr	r0,.Lj568
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#2
	ldr	r1,.Lj571
	str	r0,[r1]
# [1082] siddata[$5B]:=(peek($200d417) and 4);
	ldr	r0,.Lj568
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#4
	ldr	r1,.Lj573
	str	r0,[r1]
# [1083] siddata[$6D]:=(peek($200d418) and $70) shr 4;   // filter output switch
	ldr	r0,.Lj574
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	b	.Lj613
.Lj486:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj489:
	.long	34013187
.Lj490:
	.long	U_$RETROMALINA_$$_SIDDATA+344
.Lj491:
	.long	34013188
.Lj492:
	.long	U_$RETROMALINA_$$_SIDDATA+348
.Lj493:
	.long	34013189
.Lj494:
	.long	U_$RETROMALINA_$$_SIDDATA+352
.Lj496:
	.long	33608705
.Lj495:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj499:
	.long	33608711
.Lj500:
	.long	33608712
.Lj498:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj501:
	.long	U_$RETROMALINA_$$_SIDDATA+64
.Lj503:
	.long	33608718
.Lj504:
	.long	33608719
.Lj502:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj505:
	.long	U_$RETROMALINA_$$_SIDDATA+128
.Lj506:
	.long	33608708
.Lj507:
	.long	U_$RETROMALINA_$$_SIDDATA+4
.Lj509:
	.long	U_$RETROMALINA_$$_SIDDATA+8
.Lj511:
	.long	U_$RETROMALINA_$$_SIDDATA+12
.Lj513:
	.long	U_$RETROMALINA_$$_SIDDATA+16
.Lj514:
	.long	33608709
.Lj515:
	.long	U_$RETROMALINA_$$_SIDDATA+20
.Lj517:
	.long	U_$RETROMALINA_$$_SIDDATA+24
.Lj518:
	.long	33608710
.Lj519:
	.long	U_$RETROMALINA_$$_SIDDATA+28
.Lj521:
	.long	U_$RETROMALINA_$$_SIDDATA+52
.Lj522:
	.long	33608706
.Lj523:
	.long	33608707
.Lj524:
	.long	U_$RETROMALINA_$$_SIDDATA+332
.Lj525:
	.long	33608715
.Lj526:
	.long	U_$RETROMALINA_$$_SIDDATA+68
.Lj528:
	.long	U_$RETROMALINA_$$_SIDDATA+72
.Lj530:
	.long	U_$RETROMALINA_$$_SIDDATA+76
.Lj532:
	.long	U_$RETROMALINA_$$_SIDDATA+80
.Lj533:
	.long	33608716
.Lj534:
	.long	U_$RETROMALINA_$$_SIDDATA+84
.Lj536:
	.long	U_$RETROMALINA_$$_SIDDATA+88
.Lj537:
	.long	33608717
.Lj538:
	.long	U_$RETROMALINA_$$_SIDDATA+92
.Lj540:
	.long	U_$RETROMALINA_$$_SIDDATA+116
.Lj541:
	.long	33608713
.Lj542:
	.long	33608714
.Lj543:
	.long	U_$RETROMALINA_$$_SIDDATA+336
.Lj544:
	.long	33608722
.Lj545:
	.long	U_$RETROMALINA_$$_SIDDATA+132
.Lj547:
	.long	U_$RETROMALINA_$$_SIDDATA+136
.Lj549:
	.long	U_$RETROMALINA_$$_SIDDATA+140
.Lj551:
	.long	U_$RETROMALINA_$$_SIDDATA+144
.Lj552:
	.long	33608723
.Lj553:
	.long	U_$RETROMALINA_$$_SIDDATA+148
.Lj555:
	.long	U_$RETROMALINA_$$_SIDDATA+152
.Lj556:
	.long	33608724
.Lj557:
	.long	U_$RETROMALINA_$$_SIDDATA+156
.Lj559:
	.long	U_$RETROMALINA_$$_SIDDATA+180
.Lj560:
	.long	33608720
.Lj561:
	.long	33608721
.Lj562:
	.long	U_$RETROMALINA_$$_SIDDATA+340
.Lj563:
	.long	33608726
.Lj564:
	.long	33608725
.Lj565:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
.Lj567:
	.long	U_$RETROMALINA_$$_SIDDATA+440
.Lj568:
	.long	33608727
.Lj569:
	.long	U_$RETROMALINA_$$_SIDDATA+356
.Lj571:
	.long	U_$RETROMALINA_$$_SIDDATA+360
.Lj573:
	.long	U_$RETROMALINA_$$_SIDDATA+364
.Lj574:
	.long	33608728
.Lj613:
	and	r0,r0,#112
	mov	r0,r0,lsr #4
	ldr	r1,.Lj575
	str	r0,[r1]
# [1087] siddata[$6F]:=round(65536.0*(0.5+(0.5/(1+(peek($200d416) shr 4)))));
	ldr	r0,.Lj579
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r0,r0,lsr #4
	add	r0,r0,#1
	vmov	s0,r0
	vcvt.f32.u32	s0,s0
	vldr	s2,.Lj578
	vdiv.f32	s0,s2,s0
	vldr	s2,.Lj577
	vadd.f32	s0,s2,s0
	vldr	s2,.Lj576
	vmul.f32	s0,s2,s0
	vcvt.f64.f32	d0,s0
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r1,.Lj580
	str	r0,[r1]
# [1089] siddata[$70]:=(peek($200d418) and 15); //volume
	ldr	r0,.Lj581
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#15
	ldr	r1,.Lj582
	str	r0,[r1]
# [1091] siddata[$50]:=peek($200d404) shr 4;
	ldr	r0,.Lj583
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r0,r0,lsr #4
	ldr	r1,.Lj584
	str	r0,[r1]
# [1092] siddata[$51]:=peek($200d40b) shr 4;
	ldr	r0,.Lj585
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r0,r0,lsr #4
	ldr	r1,.Lj586
	str	r0,[r1]
# [1093] siddata[$52]:=peek($200d412) shr 4; //waveforms
	ldr	r0,.Lj587
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r0,r0,lsr #4
	ldr	r1,.Lj588
	str	r0,[r1]
.Lj488:
# [1101] stmfd r13!,{r0-r7}
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7}
# [1103] ldr   r7, sidptr
	ldr	r7,[r11, #-168]
# [1104] mov   r0,#0
	mov	r0,#0
# [1105] str   r0,[r7,#0x1a8] //inner loop counter
	str	r0,[r7, #424]
# [1106] str   r0,[r7,#0x1ac] //output
	str	r0,[r7, #428]
# [1107] str   r0,[r7,#0x1b0] //output
	str	r0,[r7, #432]
# [1109] ldr   r6,[r7,#4]
	ldr	r6,[r7, #4]
# [1110] cmp   r6,#0
	cmp	r6,#0
# [1111] beq   p101
	beq	.Lj439
# [1112] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1113] mov   r1,r0
	mov	r1,r0
# [1114] cmp   r1,#0
	cmp	r1,#0
# [1115] moveq r0,#1
	moveq	r0,#1
# [1116] cmp   r1,#4
	cmp	r1,#4
# [1117] moveq r0,#1
	moveq	r0,#1
# [1118] b     p102
	b	.Lj440
.Lj439:
# [1120] p101:          mov   r0,#4
	mov	r0,#4
.Lj440:
# [1121] p102:          str   r0,[r7,#0x2C]
	str	r0,[r7, #44]
# [1123] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1124] cmp   r0,#3
	cmp	r0,#3
# [1125] ldreq   r1,[r7,#0x34]
	ldreq	r1,[r7, #52]
# [1126] streq   r1,[r7,#0x30]
	streq	r1,[r7, #48]
# [1127] beq     p103
	beq	.Lj441
# [1129] p107:          cmp   r0,#1
	cmp	r0,#1
# [1130] bne   p104
	bne	.Lj443
# [1131] ldr   r1,[r7,#0x30] //adsrvol1
	ldr	r1,[r7, #48]
# [1132] ldr   r2,[r7,#0x18] //sa1
	ldr	r2,[r7, #24]
# [1133] add   r2,#0x40
	add	r2,#64
# [1134] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1135] add   r1,r6
	add	r1,r6
# [1136] str   r1,[r7,#0x30]
	str	r1,[r7, #48]
# [1137] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1138] blt   p103
	blt	.Lj441
# [1139] mov   r0,#2
	mov	r0,#2
# [1140] str   r0,[r7,#0x2c]
	str	r0,[r7, #44]
# [1141] b     p103
	b	.Lj441
.Lj443:
# [1143] p104:          cmp   r0,#2
	cmp	r0,#2
# [1144] bne   p105
	bne	.Lj444
# [1145] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1146] ldr   r2,[r7,#0x14] //sd1
	ldr	r2,[r7, #20]
# [1147] add   r2,#0x30
	add	r2,#48
# [1148] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1149] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1150] lsr   r4,#30
	lsr	r4,#30
# [1151] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1152] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1153] ldr   r1,[r7,#0x34]
	ldr	r1,[r7, #52]
# [1154] cmp   r4,r1
	cmp	r4,r1
# [1155] movlt r0,#3
	movlt	r0,#3
# [1156] strlt r0,[r7,#0x2c]
	strlt	r0,[r7, #44]
# [1157] b     p103
	b	.Lj441
.Lj444:
# [1159] p105:          cmp   r0,#4
	cmp	r0,#4
# [1160] bne   p106
	bne	.Lj445
# [1161] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1162] ldr   r2,[r7,#0x1c] //sr1
	ldr	r2,[r7, #28]
# [1163] add   r2,#0x30
	add	r2,#48
# [1164] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1165] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1166] lsr   r4,#30
	lsr	r4,#30
# [1167] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1168] cmp   r4,#0x10000
	cmp	r4,#65536
# [1169] movlt r4,#0
	movlt	r4,#0
# [1170] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1171] strlt r4,[r7,#0x2c]
	strlt	r4,[r7, #44]
# [1172] b     p103
	b	.Lj441
.Lj445:
# [1174] p106:          mov   r0,#0
	mov	r0,#0
# [1175] str   r0,[r7,#0x30]
	str	r0,[r7, #48]
.Lj441:
# [1179] p103:          ldr   r6,[r7,#0x44]
	ldr	r6,[r7, #68]
# [1180] cmp   r6,#0
	cmp	r6,#0
# [1181] beq   p111
	beq	.Lj446
# [1182] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1183] mov   r1,r0
	mov	r1,r0
# [1184] cmp   r1,#0
	cmp	r1,#0
# [1185] moveq r0,#1
	moveq	r0,#1
# [1186] cmp   r1,#4
	cmp	r1,#4
# [1187] moveq r0,#1
	moveq	r0,#1
# [1188] b     p112
	b	.Lj447
.Lj446:
# [1190] p111:          mov   r0,#4
	mov	r0,#4
.Lj447:
# [1191] p112:          str   r0,[r7,#0x6C]
	str	r0,[r7, #108]
# [1193] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1194] cmp   r0,#3
	cmp	r0,#3
# [1195] ldreq   r1,[r7,#0x74]
	ldreq	r1,[r7, #116]
# [1196] streq   r1,[r7,#0x70]
	streq	r1,[r7, #112]
# [1197] beq     p113
	beq	.Lj448
# [1199] p117:          cmp   r0,#1
	cmp	r0,#1
# [1200] bne   p114
	bne	.Lj450
# [1201] ldr   r1,[r7,#0x70] //adsrvol1
	ldr	r1,[r7, #112]
# [1202] ldr   r2,[r7,#0x58] //sa1
	ldr	r2,[r7, #88]
# [1203] add   r2,#0x40
	add	r2,#64
# [1204] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1205] add   r1,r6
	add	r1,r6
# [1206] str   r1,[r7,#0x70]
	str	r1,[r7, #112]
# [1207] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1208] blt   p113
	blt	.Lj448
# [1209] mov   r0,#2
	mov	r0,#2
# [1210] str   r0,[r7,#0x6c]
	str	r0,[r7, #108]
# [1211] b     p113
	b	.Lj448
.Lj450:
# [1213] p114:          cmp   r0,#2
	cmp	r0,#2
# [1214] bne   p115
	bne	.Lj451
# [1215] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1216] ldr   r2,[r7,#0x54] //sd1
	ldr	r2,[r7, #84]
# [1217] add   r2,#0x30
	add	r2,#48
# [1218] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1219] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1220] lsr   r4,#30
	lsr	r4,#30
# [1221] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1222] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1223] ldr   r1,[r7,#0x74]
	ldr	r1,[r7, #116]
# [1224] cmp   r4,r1
	cmp	r4,r1
# [1225] movlt r0,#3
	movlt	r0,#3
# [1226] strlt r0,[r7,#0x6c]
	strlt	r0,[r7, #108]
# [1227] b     p113
	b	.Lj448
.Lj451:
# [1229] p115:          cmp   r0,#4
	cmp	r0,#4
# [1230] bne   p116
	bne	.Lj452
# [1231] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1232] ldr   r2,[r7,#0x5c] //sr1
	ldr	r2,[r7, #92]
# [1233] add   r2,#0x30
	add	r2,#48
# [1234] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1235] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1236] lsr   r4,#30
	lsr	r4,#30
# [1237] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1238] cmp   r4,#0x10000
	cmp	r4,#65536
# [1239] movlt r4,#0
	movlt	r4,#0
# [1240] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1241] strlt r4,[r7,#0x6c]
	strlt	r4,[r7, #108]
# [1242] b     p113
	b	.Lj448
.Lj452:
# [1244] p116:          mov   r0,#0
	mov	r0,#0
# [1245] str   r0,[r7,#0x70]
	str	r0,[r7, #112]
.Lj448:
# [1249] p113:          ldr   r6,[r7,#0x84]
	ldr	r6,[r7, #132]
# [1250] cmp   r6,#0
	cmp	r6,#0
# [1251] beq   p121
	beq	.Lj453
# [1252] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1253] mov   r1,r0
	mov	r1,r0
# [1254] cmp   r1,#0
	cmp	r1,#0
# [1255] moveq r0,#1
	moveq	r0,#1
# [1256] cmp   r1,#4
	cmp	r1,#4
# [1257] moveq r0,#1
	moveq	r0,#1
# [1258] b     p122
	b	.Lj454
.Lj453:
# [1260] p121:          mov   r0,#4
	mov	r0,#4
.Lj454:
# [1261] p122:          str   r0,[r7,#0xaC]
	str	r0,[r7, #172]
# [1263] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1264] cmp   r0,#3
	cmp	r0,#3
# [1265] ldreq   r1,[r7,#0xb4]
	ldreq	r1,[r7, #180]
# [1266] streq   r1,[r7,#0xb0]
	streq	r1,[r7, #176]
# [1267] beq     p123
	beq	.Lj455
# [1269] p127:          cmp   r0,#1
	cmp	r0,#1
# [1270] bne   p124
	bne	.Lj457
# [1271] ldr   r1,[r7,#0xb0] //adsrvol1
	ldr	r1,[r7, #176]
# [1272] ldr   r2,[r7,#0x98] //sa1
	ldr	r2,[r7, #152]
# [1273] add   r2,#0x40
	add	r2,#64
# [1274] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1275] add   r1,r6
	add	r1,r6
# [1276] str   r1,[r7,#0xb0]
	str	r1,[r7, #176]
# [1277] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1278] blt   p123
	blt	.Lj455
# [1279] mov   r0,#2
	mov	r0,#2
# [1280] str   r0,[r7,#0xac]
	str	r0,[r7, #172]
# [1281] b     p123
	b	.Lj455
.Lj457:
# [1283] p124:          cmp   r0,#2
	cmp	r0,#2
# [1284] bne   p125
	bne	.Lj458
# [1285] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1286] ldr   r2,[r7,#0x94] //sd1
	ldr	r2,[r7, #148]
# [1287] add   r2,#0x30
	add	r2,#48
# [1288] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1289] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1290] lsr   r4,#30
	lsr	r4,#30
# [1291] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1292] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1293] ldr   r1,[r7,#0xb4]
	ldr	r1,[r7, #180]
# [1294] cmp   r4,r1
	cmp	r4,r1
# [1295] movlt r0,#3
	movlt	r0,#3
# [1296] strlt r0,[r7,#0xac]
	strlt	r0,[r7, #172]
# [1297] b     p123
	b	.Lj455
.Lj458:
# [1299] p125:          cmp   r0,#4
	cmp	r0,#4
# [1300] bne   p126
	bne	.Lj459
# [1301] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1302] ldr   r2,[r7,#0x9c] //sr1
	ldr	r2,[r7, #156]
# [1303] add   r2,#0x30
	add	r2,#48
# [1304] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1305] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1306] lsr   r4,#30
	lsr	r4,#30
# [1307] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1308] cmp   r4,#0x10000
	cmp	r4,#65536
# [1309] movlt r4,#0
	movlt	r4,#0
# [1310] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1311] strlt r4,[r7,#0xbc]
	strlt	r4,[r7, #188]
# [1312] b     p123
	b	.Lj455
.Lj459:
# [1314] p126:          mov   r0,#0
	mov	r0,#0
# [1315] str   r0,[r7,#0xb0]
	str	r0,[r7, #176]
.Lj455:
# [1317] p123:          ldmfd r13!,{r0-r7}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7}
# [1322] for i:=1 to 10 do
	mov	r0,#1
	str	r0,[r11, #-56]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-56]
	.balign 4
.Lj591:
	ldr	r0,[r11, #-56]
	add	r0,r0,#1
	str	r0,[r11, #-56]
# [1325] stmfd r13!,{r0-r12}
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [1326] ldr   r4,sidptr
	ldr	r4,[r11, #-168]
# [1330] ldr   r0,[r4,#0x20]
	ldr	r0,[r4, #32]
# [1331] ldr   r3,[r4,#0x00]
	ldr	r3,[r4]
# [1332] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# [1333] ldrcs r1,[r4,#0x60]
	ldrcs	r1,[r4, #96]
# [1334] ldrcs r2,[r4,#0x50]
	ldrcs	r2,[r4, #80]
# [1335] andcs r1,r2
	andcs	r1,r2
# [1336] strcs r1,[r4,#0x60]
	strcs	r1,[r4, #96]
# [1337] ldr   r1,[r4,#0x0c]
	ldr	r1,[r4, #12]
# [1338] cmp   r1,#0
	cmp	r1,#0
# [1339] movne r0,#0
	movne	r0,#0
# [1340] str r0,[r4,#0x20]
	str	r0,[r4, #32]
# [1342] ldr r2,[r4,#0x24]
	ldr	r2,[r4, #36]
# [1343] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1344] movcs r1,#1
	movcs	r1,#1
# [1345] movcc r1,#0
	movcc	r1,#0
# [1346] str   r2,[r4,#0x24]
	str	r2,[r4, #36]
	b	.Lj614
.Lj575:
	.long	U_$RETROMALINA_$$_SIDDATA+436
.Lj579:
	.long	33608726
.Lj578:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj577:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj576:
# value: 0d+6.553600000E+04
	.byte	0,0,128,71
.Lj580:
	.long	U_$RETROMALINA_$$_SIDDATA+444
.Lj581:
	.long	33608728
.Lj582:
	.long	U_$RETROMALINA_$$_SIDDATA+448
.Lj583:
	.long	33608708
.Lj584:
	.long	U_$RETROMALINA_$$_SIDDATA+320
.Lj585:
	.long	33608715
.Lj586:
	.long	U_$RETROMALINA_$$_SIDDATA+324
.Lj587:
	.long	33608722
.Lj588:
	.long	U_$RETROMALINA_$$_SIDDATA+328
.Lj614:
# [1347] str   r1,[r4,#0x3c]
	str	r1,[r4, #60]
# [1351] ldr r1,[r4,#0x140]
	ldr	r1,[r4, #320]
# [1352] cmp r1,#2
	cmp	r1,#2
# [1353] bne p205
	bne	.Lj460
# [1354] lsr r0,#8
	lsr	r0,#8
# [1355] sub r0,#8388608
	sub	r0,#8388608
# [1356] str r0,[r4,#0x28]
	str	r0,[r4, #40]
# [1357] b p204
	b	.Lj461
.Lj460:
# [1359] p205:          cmp r1,#1
	cmp	r1,#1
# [1360] bne p201
	bne	.Lj462
# [1361] mov r5,r0                // triangle
	mov	r5,r0
# [1362] lsls r5,#1
	lsls	r5,#1
# [1363] mvncs r5,r5
	mvncs	r5,r5
# [1364] ldr r6,[r4,#0x08]
	ldr	r6,[r4, #8]
# [1365] cmp r6,#0
	cmp	r6,#0
# [1366] ldrne r6,[r4,#0xa0]
	ldrne	r6,[r4, #160]
# [1367] lsls r6,#1
	lsls	r6,#1
# [1368] negcs r5,r5
	negcs	r5,r5
# [1369] lsr r5,#8
	lsr	r5,#8
# [1370] sub r5,#8388608
	sub	r5,#8388608
# [1371] str r5,[r4,#0x28]
	str	r5,[r4, #40]
# [1372] b p204
	b	.Lj461
.Lj462:
# [1374] p201:          cmp r1,#4
	cmp	r1,#4
# [1375] bne p203
	bne	.Lj463
# [1376] mov r6,r0,lsr #20        //square r6
	mov	r6,r0,lsr #20
# [1377] ldr r7,[r4,#0x14c]
	ldr	r7,[r4, #332]
# [1378] cmp r6,r7
	cmp	r6,r7
# [1379] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1380] movlt r6,#0
	movlt	r6,#0
# [1381] sub r6,#8388608
	sub	r6,#8388608
# [1382] str r6,[r4,#0x28]
	str	r6,[r4, #40]
# [1383] b p204
	b	.Lj461
.Lj463:
# [1385] p203:          cmp r1,#3
	cmp	r1,#3
# [1386] bne p206
	bne	.Lj464
# [1387] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1388] and r6,#0x000003FC
	and	r6,#1020
# [1389] add r6,#0x200
	add	r6,#512
# [1390] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1391] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1392] b p204
	b	.Lj461
.Lj464:
# [1394] p206:          cmp r1,#5
	cmp	r1,#5
# [1395] bne p207
	bne	.Lj465
# [1396] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1397] and r6,#0x000003FC
	and	r6,#1020
# [1398] add r6,#0x600
	add	r6,#1536
# [1399] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1400] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1401] b p204
	b	.Lj461
.Lj465:
# [1403] p207:          cmp r1,#6
	cmp	r1,#6
# [1404] bne p208
	bne	.Lj466
# [1405] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1406] and r6,#0x000003FC
	and	r6,#1020
# [1407] add r6,#0xa00
	add	r6,#2560
# [1408] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1409] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1410] b p204
	b	.Lj461
.Lj466:
# [1412] p208:          cmp r1,#7
	cmp	r1,#7
# [1413] bne p209
	bne	.Lj467
# [1414] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1415] and r6,#0x000003FC
	and	r6,#1020
# [1416] add r6,#0xe00
	add	r6,#3584
# [1417] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1418] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1419] b p204
	b	.Lj461
.Lj467:
# [1421] p209:          cmp r1,#8                // noise
	cmp	r1,#8
# [1422] bne p204
	bne	.Lj461
# [1423] ldr r7,[r4,#0x3C]
	ldr	r7,[r4, #60]
# [1424] cmp r7,#1
	cmp	r7,#1
# [1425] bne p204
	bne	.Lj461
# [1427] mov   r7,#0
	mov	r7,#0
# [1428] mov   r2,#0
	mov	r2,#0
# [1429] mov   r3,#0
	mov	r3,#0
# [1430] ldr   r0,[r4,#0x38]
	ldr	r0,[r4, #56]
# [1431] tst   r0,#4194304
	tst	r0,#4194304
# [1432] orrne r7,#128
	orrne	r7,#128
# [1433] orrne r2,#1
	orrne	r2,#1
# [1434] tst   r0,#1048576
	tst	r0,#1048576
# [1435] orrne r7,#64
	orrne	r7,#64
# [1436] tst   r0,#65536
	tst	r0,#65536
# [1437] orrne r7,#32
	orrne	r7,#32
# [1438] tst   r0,#8192
	tst	r0,#8192
# [1439] orrne r7,#16
	orrne	r7,#16
# [1440] tst   r0,#2048
	tst	r0,#2048
# [1441] orrne r7,#8
	orrne	r7,#8
# [1442] tst   r0,#128
	tst	r0,#128
# [1443] orrne r7,#4
	orrne	r7,#4
# [1444] tst   r0,#16
	tst	r0,#16
# [1445] orrne r7,#2
	orrne	r7,#2
# [1446] tst   r0,#4
	tst	r0,#4
# [1447] orrne r7,#1
	orrne	r7,#1
# [1448] tst   r0,#131072
	tst	r0,#131072
# [1449] orrne r3,#1
	orrne	r3,#1
# [1450] eor   r2,r3
	eor	r2,r3
# [1451] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1452] str   r2,[r4,#0x38]
	str	r2,[r4, #56]
# [1453] sub   r7,#128
	sub	r7,#128
# [1454] lsl   r7,#16
	lsl	r7,#16
# [1455] str   r7,[r4,#0x28]
	str	r7,[r4, #40]
.Lj461:
# [1459] p204:          ldr   r0,[r4,#0x60]
	ldr	r0,[r4, #96]
# [1460] ldr   r3,[r4,#0x40]
	ldr	r3,[r4, #64]
# [1461] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# [1462] ldrcs r1,[r4,#0xa0]
	ldrcs	r1,[r4, #160]
# [1463] ldrcs r2,[r4,#0x90]
	ldrcs	r2,[r4, #144]
# [1464] andcs r1,r2
	andcs	r1,r2
# [1465] strcs r1,[r4,#0xa0]
	strcs	r1,[r4, #160]
# [1466] ldr   r1,[r4,#0x4c]
	ldr	r1,[r4, #76]
# [1467] cmp   r1,#0
	cmp	r1,#0
# [1468] movne r0,#0
	movne	r0,#0
# [1469] str r0,[r4,#0x60]
	str	r0,[r4, #96]
# [1471] ldr r2, [r4,#0x64]
	ldr	r2,[r4, #100]
# [1472] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1473] movcs r1,#1
	movcs	r1,#1
# [1474] movcc r1,#0
	movcc	r1,#0
# [1475] str  r2,[r4,#0x64]
	str	r2,[r4, #100]
# [1476] str  r1,[r4,#0x7c]
	str	r1,[r4, #124]
# [1481] ldr r1,[r4,#0x144]
	ldr	r1,[r4, #324]
# [1482] cmp r1,#2
	cmp	r1,#2
# [1483] bne p215
	bne	.Lj468
# [1484] lsr r0,#8
	lsr	r0,#8
# [1485] sub r0,#8388608
	sub	r0,#8388608
# [1486] str r0,[r4,#0x68]
	str	r0,[r4, #104]
# [1487] b p214
	b	.Lj469
.Lj468:
# [1489] p215:          cmp r1,#1
	cmp	r1,#1
# [1490] bne p211
	bne	.Lj470
# [1491] mov r5,r0             // triangle
	mov	r5,r0
# [1492] lsls r5,#1
	lsls	r5,#1
# [1493] mvncs r5,r5
	mvncs	r5,r5
# [1494] lsr r5,#8
	lsr	r5,#8
# [1495] sub r5,#8388608
	sub	r5,#8388608
# [1496] ldr r6,[r4,#0x48]
	ldr	r6,[r4, #72]
# [1497] cmp r6,#0
	cmp	r6,#0
# [1498] ldrne r6,[r4,#0x20]
	ldrne	r6,[r4, #32]
# [1499] lsls r6,#1
	lsls	r6,#1
# [1500] negcs r5,r5
	negcs	r5,r5
# [1501] str r5,[r4,#0x68]
	str	r5,[r4, #104]
# [1502] b p214
	b	.Lj469
.Lj470:
# [1504] p211:          cmp r1,#4
	cmp	r1,#4
# [1505] bne p213
	bne	.Lj471
# [1506] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1507] ldr r7,[r4,#0x150]
	ldr	r7,[r4, #336]
# [1508] cmp r6,r7
	cmp	r6,r7
# [1509] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1510] movlt r6,#0
	movlt	r6,#0
# [1511] sub r6,#8388608
	sub	r6,#8388608
# [1512] str r6,[r4,#0x68]
	str	r6,[r4, #104]
# [1513] b p214
	b	.Lj469
.Lj471:
# [1515] p213:          cmp r1,#3
	cmp	r1,#3
# [1516] bne p216
	bne	.Lj472
# [1517] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1518] and r6,#0x000003FC
	and	r6,#1020
# [1519] add r6,#0x200
	add	r6,#512
# [1520] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1521] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1522] b p214
	b	.Lj469
.Lj472:
# [1524] p216:          cmp r1,#5
	cmp	r1,#5
# [1525] bne p217
	bne	.Lj473
# [1526] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1527] and r6,#0x000003FC
	and	r6,#1020
# [1528] add r6,#0x600
	add	r6,#1536
# [1529] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1530] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1531] b p214
	b	.Lj469
.Lj473:
# [1533] p217:          cmp r1,#6
	cmp	r1,#6
# [1534] bne p218
	bne	.Lj474
# [1535] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1536] and r6,#0x000003FC
	and	r6,#1020
# [1537] add r6,#0xa00
	add	r6,#2560
# [1538] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1539] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1540] b p214
	b	.Lj469
.Lj474:
# [1542] p218:          cmp r1,#7
	cmp	r1,#7
# [1543] bne p219
	bne	.Lj475
# [1544] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1545] and r6,#0x000003FC
	and	r6,#1020
# [1546] add r6,#0xe00
	add	r6,#3584
# [1547] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1548] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1549] b p214
	b	.Lj469
.Lj475:
# [1551] p219:          cmp r1,#8    // noise
	cmp	r1,#8
# [1552] bne p214
	bne	.Lj469
# [1553] p212:          ldr r7,[r4,#0x7C]
	ldr	r7,[r4, #124]
# [1554] cmp r7,#1
	cmp	r7,#1
# [1555] bne p214
	bne	.Lj469
# [1557] mov   r7,#0
	mov	r7,#0
# [1558] mov   r2,#0
	mov	r2,#0
# [1559] mov   r3,#0
	mov	r3,#0
# [1560] ldr   r0,[r4,#0x78]
	ldr	r0,[r4, #120]
# [1561] tst   r0,#4194304
	tst	r0,#4194304
# [1562] orrne r7,#128
	orrne	r7,#128
# [1563] orrne r2,#1
	orrne	r2,#1
# [1564] tst   r0,#1048576
	tst	r0,#1048576
# [1565] orrne r7,#64
	orrne	r7,#64
# [1566] tst   r0,#65536
	tst	r0,#65536
# [1567] orrne r7,#32
	orrne	r7,#32
# [1568] tst   r0,#8192
	tst	r0,#8192
# [1569] orrne r7,#16
	orrne	r7,#16
# [1570] tst   r0,#2048
	tst	r0,#2048
# [1571] orrne r7,#8
	orrne	r7,#8
# [1572] tst   r0,#128
	tst	r0,#128
# [1573] orrne r7,#4
	orrne	r7,#4
# [1574] tst   r0,#16
	tst	r0,#16
# [1575] orrne r7,#2
	orrne	r7,#2
# [1576] tst   r0,#4
	tst	r0,#4
# [1577] orrne r7,#1
	orrne	r7,#1
# [1578] tst   r0,#131072
	tst	r0,#131072
# [1579] orrne r3,#1
	orrne	r3,#1
# [1580] eor   r2,r3
	eor	r2,r3
# [1581] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1582] str   r2,[r4,#0x78]
	str	r2,[r4, #120]
# [1583] lsl   r7,#16
	lsl	r7,#16
# [1584] sub   r7,#8388608
	sub	r7,#8388608
# [1585] str   r7,[r4,#0x68]
	str	r7,[r4, #104]
.Lj469:
# [1590] p214:          ldr   r0,[r4,#0xa0]
	ldr	r0,[r4, #160]
# [1591] ldr   r3,[r4,#0x80]
	ldr	r3,[r4, #128]
# [1592] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# [1593] ldrcs r1,[r4,#0x20]
	ldrcs	r1,[r4, #32]
# [1594] ldrcs r2,[r4,#0x10]
	ldrcs	r2,[r4, #16]
# [1595] andcs r1,r2
	andcs	r1,r2
# [1596] strcs r1,[r4,#0x20]
	strcs	r1,[r4, #32]
# [1597] ldr   r1,[r4,#0x8c]
	ldr	r1,[r4, #140]
# [1598] cmp   r1,#0
	cmp	r1,#0
# [1599] movne r0,#0
	movne	r0,#0
# [1600] str r0,[r4,#0xa0]
	str	r0,[r4, #160]
# [1602] ldr r2,[r4,#0xa4]
	ldr	r2,[r4, #164]
# [1603] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1604] movcs r1,#1
	movcs	r1,#1
# [1605] movcc r1,#0
	movcc	r1,#0
# [1606] str   r2,[r4,#0xa4]
	str	r2,[r4, #164]
# [1607] str   r1,[r4,#0xbc]
	str	r1,[r4, #188]
# [1612] ldr r1,[r4,#0x148]
	ldr	r1,[r4, #328]
# [1613] cmp r1,#2
	cmp	r1,#2
# [1614] bne p225
	bne	.Lj477
# [1615] lsr r0,#8
	lsr	r0,#8
# [1616] sub r0,#8388608
	sub	r0,#8388608
# [1617] str r0,[r4,#0xa8]
	str	r0,[r4, #168]
# [1618] b p224
	b	.Lj478
.Lj477:
# [1620] p225:          cmp r1,#1
	cmp	r1,#1
# [1621] bne p221
	bne	.Lj479
# [1622] mov r5,r0             // triangle
	mov	r5,r0
# [1623] lsls r5,#1
	lsls	r5,#1
# [1624] mvncs r5,r5
	mvncs	r5,r5
# [1625] ldr r6,[r4,#0x88]
	ldr	r6,[r4, #136]
# [1626] cmp r6,#0
	cmp	r6,#0
# [1627] ldrne r6,[r4,#0x60]
	ldrne	r6,[r4, #96]
# [1628] lsls r6,#1
	lsls	r6,#1
# [1629] negcs r5,r5
	negcs	r5,r5
# [1630] lsr r5,#8
	lsr	r5,#8
# [1631] sub r5,#8388608
	sub	r5,#8388608
# [1632] str r5,[r4,#0xa8]
	str	r5,[r4, #168]
# [1633] b p224
	b	.Lj478
.Lj479:
# [1635] p221:          cmp r1,#4
	cmp	r1,#4
# [1636] bne p223
	bne	.Lj480
# [1637] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1638] ldr r7,[r4,#0x154]
	ldr	r7,[r4, #340]
# [1639] cmp r6,r7
	cmp	r6,r7
# [1640] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1641] movlt r6,#0
	movlt	r6,#0
# [1642] sub r6,#8388608
	sub	r6,#8388608
# [1643] str r6,[r4,#0xa8]
	str	r6,[r4, #168]
# [1644] b p224
	b	.Lj478
.Lj480:
# [1646] p223:          cmp r1,#3
	cmp	r1,#3
# [1647] bne p226
	bne	.Lj481
# [1648] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1649] and r6,#0x000003FC
	and	r6,#1020
# [1650] add r6,#0x200
	add	r6,#512
# [1651] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1652] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1653] b p224
	b	.Lj478
.Lj481:
# [1655] p226:          cmp r1,#5
	cmp	r1,#5
# [1656] bne p227
	bne	.Lj482
# [1657] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1658] and r6,#0x000003FC
	and	r6,#1020
# [1659] add r6,#0x600
	add	r6,#1536
# [1660] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1661] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1662] b p224
	b	.Lj478
.Lj482:
# [1664] p227:          cmp r1,#6
	cmp	r1,#6
# [1665] bne p228
	bne	.Lj483
# [1666] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1667] and r6,#0x000003FC
	and	r6,#1020
# [1668] add r6,#0xa00
	add	r6,#2560
# [1669] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1670] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1671] b p224
	b	.Lj478
.Lj483:
# [1673] p228:          cmp r1,#7
	cmp	r1,#7
# [1674] bne p229
	bne	.Lj484
# [1675] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1676] and r6,#0x000003FC
	and	r6,#1020
# [1677] add r6,#0xe00
	add	r6,#3584
# [1678] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1679] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1680] b p224
	b	.Lj478
.Lj484:
# [1682] p229:          cmp r1,#8    // noise
	cmp	r1,#8
# [1683] bne p224
	bne	.Lj478
# [1684] ldr r7,[r4,#0xbC]
	ldr	r7,[r4, #188]
# [1685] cmp r7,#1
	cmp	r7,#1
# [1686] bne p224
	bne	.Lj478
# [1688] mov   r7,#0
	mov	r7,#0
# [1689] mov   r2,#0
	mov	r2,#0
# [1690] mov   r3,#0
	mov	r3,#0
# [1691] ldr   r0,[r4,#0xb8]
	ldr	r0,[r4, #184]
# [1692] tst   r0,#4194304
	tst	r0,#4194304
# [1693] orrne r7,#128
	orrne	r7,#128
# [1694] orrne r2,#1
	orrne	r2,#1
# [1695] tst   r0,#1048576
	tst	r0,#1048576
# [1696] orrne r7,#64
	orrne	r7,#64
# [1697] tst   r0,#65536
	tst	r0,#65536
# [1698] orrne r7,#32
	orrne	r7,#32
# [1699] tst   r0,#8192
	tst	r0,#8192
# [1700] orrne r7,#16
	orrne	r7,#16
# [1701] tst   r0,#2048
	tst	r0,#2048
# [1702] orrne r7,#8
	orrne	r7,#8
# [1703] tst   r0,#128
	tst	r0,#128
# [1704] orrne r7,#4
	orrne	r7,#4
# [1705] tst   r0,#16
	tst	r0,#16
# [1706] orrne r7,#2
	orrne	r7,#2
# [1707] tst   r0,#4
	tst	r0,#4
# [1708] orrne r7,#1
	orrne	r7,#1
# [1709] tst   r0,#131072
	tst	r0,#131072
# [1710] orrne r3,#1
	orrne	r3,#1
# [1711] eor   r2,r3
	eor	r2,r3
# [1712] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1713] str   r2,[r4,#0xb8]
	str	r2,[r4, #184]
# [1714] sub   r7,#128
	sub	r7,#128
# [1715] lsl   r7,#16
	lsl	r7,#16
# [1716] p222:          str   r7,[r4,#0xa8]
	str	r7,[r4, #168]
.Lj478:
# [1720] p224:          ldr r0,[r4,#0x30]
	ldr	r0,[r4, #48]
# [1721] ldr r1,[r4,#0x28]
	ldr	r1,[r4, #40]
# [1722] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1723] ldr r0,[r4,#0x158]
	ldr	r0,[r4, #344]
# [1724] cmp r0,#0
	cmp	r0,#0
# [1725] moveq r3,#0
	moveq	r3,#0
# [1726] asr r3,#1
	asr	r3,#1
# [1727] ldr r0,[r4,#0x164]
	ldr	r0,[r4, #356]
# [1728] cmp r0,#0
	cmp	r0,#0
# [1729] moveq r2,#0
	moveq	r2,#0
# [1730] movne r2,r3
	movne	r2,r3
# [1731] movne r3,#0
	movne	r3,#0
# [1732] str r3,[r4,#0x1c4]
	str	r3,[r4, #452]
# [1733] str r2,[r4,#0x170]
	str	r2,[r4, #368]
# [1736] ldr r0,[r4,#0x70]
	ldr	r0,[r4, #112]
# [1737] ldr r1,[r4,#0x68]
	ldr	r1,[r4, #104]
# [1738] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1739] ldr r0,[r4,#0x15c]
	ldr	r0,[r4, #348]
# [1740] cmp r0,#0
	cmp	r0,#0
# [1741] moveq r3,#0
	moveq	r3,#0
# [1742] asr r3,#1
	asr	r3,#1
# [1743] ldr r0,[r4,#0x168]
	ldr	r0,[r4, #360]
# [1744] cmp r0,#0
	cmp	r0,#0
# [1745] moveq r2,#0
	moveq	r2,#0
# [1746] movne r2,r3
	movne	r2,r3
# [1747] movne r3,#0
	movne	r3,#0
# [1748] str r3,[r4,#0x1c8]
	str	r3,[r4, #456]
# [1749] str r2,[r4,#0x174]
	str	r2,[r4, #372]
# [1751] ldr r0,[r4,#0xb0]
	ldr	r0,[r4, #176]
# [1752] ldr r1,[r4,#0xa8]
	ldr	r1,[r4, #168]
# [1753] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1754] ldr r0,[r4,#0x160]
	ldr	r0,[r4, #352]
# [1755] cmp r0,#0
	cmp	r0,#0
# [1756] moveq r3,#0
	moveq	r3,#0
# [1757] asr r3,#1
	asr	r3,#1
# [1758] ldr r0,[r4,#0x16c]
	ldr	r0,[r4, #364]
# [1759] cmp r0,#0
	cmp	r0,#0
# [1760] moveq r2,#0
	moveq	r2,#0
# [1761] movne r2,r3
	movne	r2,r3
# [1762] movne r3,#0
	movne	r3,#0
# [1763] str r3,[r4,#0x1cc]
	str	r3,[r4, #460]
# [1764] str r2,[r4,#0x178]
	str	r2,[r4, #376]
# [1768] mov r7,r4
	mov	r7,r4
# [1769] ldr r3,[r7,#0x1bc] //fri
	ldr	r3,[r7, #444]
# [1770] ldr r1,[r7,#0x1b8] //ffi
	ldr	r1,[r7, #440]
# [1771] lsl r1,#1
	lsl	r1,#1
# [1772] ldr r6,[r7,#0x1b4]  // bandpass switch
	ldr	r6,[r7, #436]
# [1773] mov r9, #0  // init output L
	mov	r9,#0
# [1774] mov r10,#0  // init output R
	mov	r10,#0
# [1778] ldr r2,[r7,#0x180]
	ldr	r2,[r7, #384]
# [1779] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1780] lsr r5,#16
	lsr	r5,#16
# [1781] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# [1782] ldr r0,[r7,#0x170]
	ldr	r0,[r7, #368]
# [1783] sub r0,r5
	sub	r0,r5
# [1784] ldr r4,[r7,#0x184]
	ldr	r4,[r7, #388]
# [1785] sub r0,r4
	sub	r0,r4
# [1786] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1787] lsr r5,#18
	lsr	r5,#18
# [1788] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1789] add r2,r5
	add	r2,r5
# [1790] str r2,[r7,#0x180]
	str	r2,[r7, #384]
# [1791] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1792] lsr r5,#18
	lsr	r5,#18
# [1793] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1794] add r4,r5
	add	r4,r5
# [1795] str r4,[r7,#0x184]
	str	r4,[r7, #388]
# [1799] ldr r5,[r7,#0x1c4]
	ldr	r5,[r7, #452]
# [1800] tst r6,#0x2
	tst	r6,#2
# [1801] addne r5,r2
	addne	r5,r2
# [1802] tst r6,#0x1
	tst	r6,#1
# [1803] addne r5,r4
	addne	r5,r4
# [1804] tst r6,#0x4
	tst	r6,#4
# [1805] addne r5,r0
	addne	r5,r0
# [1809] mov r9,r5
	mov	r9,r5
# [1810] asr r5,#1
	asr	r5,#1
# [1811] mov r10,r5
	mov	r10,r5
# [1815] ldr r2,[r7,#0x188]
	ldr	r2,[r7, #392]
# [1816] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1817] lsr r5,#16
	lsr	r5,#16
# [1818] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# [1819] ldr r0,[r7,#0x174]
	ldr	r0,[r7, #372]
# [1820] sub r0,r5
	sub	r0,r5
# [1821] ldr r4,[r7,#0x18c]
	ldr	r4,[r7, #396]
# [1822] sub r0,r4
	sub	r0,r4
# [1823] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1824] lsr r5,#18
	lsr	r5,#18
# [1825] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1826] add r2,r5
	add	r2,r5
# [1827] str r2,[r7,#0x188]
	str	r2,[r7, #392]
# [1828] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1829] lsr r5,#18
	lsr	r5,#18
# [1830] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1831] add r4,r5
	add	r4,r5
# [1832] str r4,[r7,#0x18c]
	str	r4,[r7, #396]
# [1836] ldr r5,[r7,#0x1c8]
	ldr	r5,[r7, #456]
# [1837] tst r6,#0x2
	tst	r6,#2
# [1838] addne r5,r2
	addne	r5,r2
# [1839] tst r6,#0x1
	tst	r6,#1
# [1840] addne r5,r4
	addne	r5,r4
# [1841] tst r6,#0x4
	tst	r6,#4
# [1842] addne r5,r0
	addne	r5,r0
# [1846] asr r5,#1
	asr	r5,#1
# [1847] add r9,r5
	add	r9,r5
# [1848] add r10,r5
	add	r10,r5
# [1849] asr r5,#1
	asr	r5,#1
# [1850] add r9,r5
	add	r9,r5
# [1851] add r10,r5
	add	r10,r5
# [1855] ldr r2,[r7,#0x190]
	ldr	r2,[r7, #400]
# [1856] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1857] lsr r5,#16
	lsr	r5,#16
# [1858] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# [1859] ldr r0,[r7,#0x178]
	ldr	r0,[r7, #376]
# [1860] sub r0,r5
	sub	r0,r5
# [1861] ldr r4,[r7,#0x194]
	ldr	r4,[r7, #404]
# [1862] sub r0,r4
	sub	r0,r4
# [1863] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1864] lsr r5,#18
	lsr	r5,#18
# [1865] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1866] add r2,r5
	add	r2,r5
# [1867] str r2,[r7,#0x190]
	str	r2,[r7, #400]
# [1868] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1869] lsr r5,#18
	lsr	r5,#18
# [1870] orr r5,r5, r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1871] add r4,r5
	add	r4,r5
# [1872] str r4,[r7,#0x194]
	str	r4,[r7, #404]
# [1876] ldr r5,[r7,#0x1cc]
	ldr	r5,[r7, #460]
# [1877] tst r6,#0x2
	tst	r6,#2
# [1878] addne r5,r2
	addne	r5,r2
# [1879] tst r6,#0x1
	tst	r6,#1
# [1880] addne r5,r4
	addne	r5,r4
# [1881] tst r6,#0x4
	tst	r6,#4
# [1882] addne r5,r0
	addne	r5,r0
# [1886] add r10,r5
	add	r10,r5
# [1887] asr r5,#1
	asr	r5,#1
# [1888] add r9,r5
	add	r9,r5
# [1892] ldr r5,[r7,#0x1c0]
	ldr	r5,[r7, #448]
# [1893] mul r4,r5,r9
	mul	r4,r5,r9
# [1894] mov r0,r4
	mov	r0,r4
# [1895] mul r4,r5,r10
	mul	r4,r5,r10
# [1896] mov r6,r4
	mov	r6,r4
# [1900] mov r1,#0x6000
	mov	r1,#24576
# [1901] ldr r2,[r7,#0x198]
	ldr	r2,[r7, #408]
# [1902] sub r0,r2
	sub	r0,r2
# [1903] ldr r4,[r7,#0x19c]
	ldr	r4,[r7, #412]
# [1904] sub r0,r4
	sub	r0,r4
# [1905] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1906] lsr r5,#18
	lsr	r5,#18
# [1907] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1908] add r2,r5
	add	r2,r5
# [1909] str r2,[r7,#0x198]
	str	r2,[r7, #408]
# [1910] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1911] lsr r5,#18
	lsr	r5,#18
# [1912] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1913] add r4,r5
	add	r4,r5
# [1914] str r4,[r7,#0x19c]
	str	r4,[r7, #412]
# [1916] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [1917] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [1919] add r8,r4
	add	r8,r4
# [1920] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# [1924] mov r0,r6
	mov	r0,r6
# [1925] ldr r2,[r7,#0x1a0]
	ldr	r2,[r7, #416]
# [1926] sub r0,r2
	sub	r0,r2
# [1927] ldr r4,[r7,#0x1a4]
	ldr	r4,[r7, #420]
# [1928] sub r0,r4
	sub	r0,r4
# [1929] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1930] lsr r5,#18
	lsr	r5,#18
# [1931] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1932] add r2,r5
	add	r2,r5
# [1933] str r2,[r7,#0x1a0]
	str	r2,[r7, #416]
# [1934] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1935] lsr r5,#18
	lsr	r5,#18
# [1936] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1937] add r4,r5
	add	r4,r5
# [1938] str r4,[r7,#0x1a4]
	str	r4,[r7, #420]
# [1940] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [1941] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [1943] add r8,r4       //lt
	add	r8,r4
# [1944] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [1945] add r0,#1
	add	r0,#1
# [1946] str r0,[r7,#0x1a8]
	str	r0,[r7, #424]
# [1947] ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
	ldr	r0,[r11, #-56]
	cmp	r0,#10
	blt	.Lj591
# [1955] sid[0]:= 2048+ (siddata[$6c] div (16*16384));//16384;//32768;
	ldr	r0,.Lj592
	ldr	r0,[r0]
	mov	r1,r0,asr #31
	add	r0,r0,r1,lsr #14
	mov	r0,r0,asr #18
	add	r0,r0,#2048
	sxth	r0,r0
	ldr	r1,[r11, #-52]
	strh	r0,[r1]
# [1956] sid[1]:=2048+ (siddata[$6b] div (16*16384));//16384;//32768;
	ldr	r0,.Lj593
	ldr	r0,[r0]
	mov	r1,r0,asr #31
	add	r0,r0,r1,lsr #14
	mov	r0,r0,asr #18
	add	r0,r0,#2048
	sxth	r0,r0
	ldr	r1,[r11, #-52]
	strh	r0,[r1, #2]
# [1957] oldsc:=sc;
	ldr	r0,.Lj594
	ldr	r1,[r0]
	ldr	r0,.Lj595
	str	r1,[r0]
	ldr	r0,.Lj596
# [1958] sc:=(siddata[$6c]+siddata[$6B]) div 16384;
	mov	r1,r0
	ldr	r2,[r0, #432]
	ldr	r0,[r1, #428]
	add	r0,r0,r2
	mov	r1,r0,asr #31
	add	r0,r0,r1,lsr #18
	mov	r0,r0,asr #14
	ldr	r1,.Lj594
	str	r0,[r1]
# [1959] scope[scj div 1]:=sc; inc(scj); if scj>1*959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=1*959;
	ldr	r0,.Lj598
	ldr	r0,[r0]
	mov	r2,r0,lsl #2
	ldr	r0,.Lj594
	ldr	r1,[r0]
	ldr	r0,.Lj600
	str	r1,[r2, r0]
	ldr	r1,.Lj598
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj598
	ldr	r0,[r0]
	mov	r1,#191
	orr	r1,r1,#768
	cmp	r0,r1
	ble	.Lj604
	ldr	r0,.Lj595
	ldr	r0,[r0]
	cmp	r0,#0
	bge	.Lj607
	ldr	r0,.Lj594
	ldr	r0,[r0]
	cmp	r0,#0
	movgt	r0,#0
	ldrgt	r1,.Lj598
	strgt	r0,[r1]
	bgt	.Lj611
.Lj607:
	mov	r0,#191
	orr	r0,r0,#768
	ldr	r1,.Lj598
	str	r0,[r1]
.Lj611:
.Lj604:
	ldmea	r11,{r4,r11,r13,r15}
.Lj592:
	.long	U_$RETROMALINA_$$_SIDDATA+432
.Lj593:
	.long	U_$RETROMALINA_$$_SIDDATA+428
.Lj594:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
.Lj595:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
.Lj596:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj598:
	.long	TC_$RETROMALINA_$$_SCJ
.Lj600:
	.long	U_$RETROMALINA_$$_SCOPE
.Le31:
	.size	RETROMALINA_$$_SID$LONGINT$$TSAMPLE, .Le31 - RETROMALINA_$$_SID$LONGINT$$TSAMPLE

.section .text.n_retromalina_$$_antialias6$double$tfiltertable$$double
	.balign 4
RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE:
# Var input located in register d0
# Var ft located in register r0
# Var $result located in register d0
# [1972] begin
	vmov	d0,r0,r1
	mov	r0,r2
# Peephole Add/SubLdr2Ldr done
# [1974] ft[0]:=ft[1];
	ldr	r3,[r0, #8]
	ldr	r2,[r0, #12]
	mov	r1,r0
	str	r3,[r1]
	str	r2,[r1, #4]
# Peephole Add/SubLdr2Ldr done
# [1975] ft[1]:=ft[2];
	ldr	r3,[r0, #16]
	ldr	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #8]
	str	r1,[r0, #12]
# Peephole Add/SubLdr2Ldr done
# [1976] ft[2]:=ft[3];
	ldr	r3,[r0, #24]
	ldr	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #16]
	str	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
# [1977] ft[3]:=ft[4];
	ldr	r3,[r0, #32]
	ldr	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #24]
	str	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
# [1978] ft[4]:=ft[5];
	ldr	r3,[r0, #40]
	ldr	r1,[r0, #44]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #32]
	str	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
# [1979] ft[5]:=ft[6];
	ldr	r3,[r0, #48]
	ldr	r1,[r0, #52]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #40]
	str	r1,[r0, #44]
# [1981] ft[6]:=input/gain;
	ldr	r1,.Lj617
	vldr	d1,[r1]
	vdiv.f64	d0,d0,d1
	vstr	d0,[r0, #48]
# Peephole Add/SubLdr2Ldr done
# [1983] ft[7]:=ft[8];
	ldr	r3,[r0, #64]
	ldr	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #56]
	str	r2,[r0, #60]
# Peephole Add/SubLdr2Ldr done
# [1984] ft[8]:=ft[9];
	ldr	r3,[r0, #72]
	ldr	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #64]
	str	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
# [1985] ft[9]:=ft[10];
	ldr	r3,[r0, #80]
	ldr	r2,[r0, #84]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #72]
	str	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
# [1986] ft[10]:=ft[11];
	ldr	r3,[r0, #88]
	ldr	r2,[r0, #92]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #80]
	str	r2,[r0, #84]
# Peephole Add/SubLdr2Ldr done
# [1987] ft[11]:=ft[12];
	ldr	r3,[r0, #96]
	ldr	r2,[r0, #100]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #88]
	str	r2,[r0, #92]
# Peephole Add/SubLdr2Ldr done
# [1988] ft[12]:=ft[13];
	ldr	r3,[r0, #104]
	ldr	r2,[r0, #108]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #96]
	str	r2,[r0, #100]
# [1990] ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
	vldr	d0,[r0, #8]
	vldr	d1,[r0, #40]
	vadd.f64	d1,d0,d1
	vldr	d0,.Lj618
	vmul.f64	d2,d0,d1
	vldr	d0,[r0]
	vldr	d1,[r0, #48]
	vadd.f64	d0,d0,d1
	vadd.f64	d2,d0,d2
	vldr	d3,[r0, #24]
	vldr	d0,[r0, #32]
	vadd.f64	d1,d3,d0
	vldr	d0,.Lj619
	vmul.f64	d0,d0,d1
	vadd.f64	d1,d2,d0
	vldr	d0,.Lj620
	vmul.f64	d0,d0,d3
	vadd.f64	d2,d1,d0
# [1991] + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
	vldr	d1,.Lj621
	vldr	d0,[r0, #56]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj622
	vldr	d0,[r0, #64]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
# [1992] + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
	vldr	d1,.Lj623
	vldr	d0,[r0, #72]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d0,.Lj624
	vldr	d1,[r0, #80]
	vmul.f64	d0,d0,d1
	vadd.f64	d2,d2,d0
# [1993] + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);
	vldr	d1,.Lj625
	vldr	d0,[r0, #88]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj626
	vldr	d0,[r0, #96]
	vmul.f64	d0,d1,d0
	vadd.f64	d0,d2,d0
	vstr	d0,[r0, #104]
# Var $result located in register d0
# [1995] antialias6:=ft[13];
	vldr	d0,[r0, #104]
# [1996] end;
	vmov	r0,r1,d0
	bx	r14
.Lj617:
	.long	TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
.Lj618:
# value: 0d+6.0000000000000000E+000
	.byte	0,0,0,0,0,0,24,64
.Lj619:
# value: 0d+1.5000000000000000E+001
	.byte	0,0,0,0,0,0,46,64
.Lj620:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj621:
# value: 0d-7.9924224560000001E-001
	.byte	13,224,77,121,100,147,233,191
.Lj622:
# value: 0d+4.9534616898000001E+000
	.byte	55,184,222,66,88,208,19,64
.Lj623:
# value: 0d-1.2816370553000000E+001
	.byte	217,26,53,82,251,161,41,192
.Lj624:
# value: 0d+1.7720271720000000E+001
	.byte	56,162,57,186,99,184,49,64
.Lj625:
# value: 0d-1.3809038175000000E+001
	.byte	89,174,109,64,58,158,43,192
.Lj626:
# value: 0d+5.7509166298999999E+000
	.byte	171,197,253,73,240,0,23,64
.Le32:
	.size	RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE, .Le32 - RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE

.section .text.n_retromalina_$$_audiocallback$longint
	.balign 4
.globl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
RETROMALINA_$$_AUDIOCALLBACK$LONGINT:
# [2027] begin
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r14}
	sub	r13,r13,#32
# Var b located in register r4
# Var audio2 located in register r4
# Var ttt located in register r6:r5
# Var k located in register r8
# Var i located in register r9
# Var il located in register r7
# Var s located at r13+0, size=OS_32
# Var buf located at r13+4, size=OS_NO
	mov	r4,r0
# Var audio2 located in register r4
# Var b located in register r4
# [2029] ttt:=clockgettotal;
	ldr	r0,.Lj629
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj631
	ldr	r0,.Lj629
	ldr	r0,[r0]
	blx	r0
	mov	r5,r0
	mov	r6,r1
	b	.Lj633
.Lj631:
	mov	r5,#0
	mov	r6,#0
.Lj633:
# Var ttt located in register r6:r5
# Var k located in register r8
# [2031] for k:=0 to 7 do
	mov	r8,#0
	sub	r8,r8,#1
	.balign 4
.Lj636:
	add	r8,r8,#1
# [2033] aa+=2500;
	ldr	r0,.Lj637
	ldr	r0,[r0]
	add	r1,r0,#196
	add	r1,r1,#2304
	ldr	r0,.Lj637
	str	r1,[r0]
# [2034] if (aa>=siddelay) then
	ldr	r0,.Lj637
	ldr	r0,[r0]
	mov	r1,r0,asr #31
	ldr	r2,.Lj640
	ldr	r3,[r2]
	ldr	r2,.Lj641
	ldr	r2,[r2]
	cmp	r1,r2
	bgt	.Lj642
	blt	.Lj643
	cmp	r0,r3
	bcc	.Lj643
.Lj642:
# [2036] aa-=siddelay;
	ldr	r0,.Lj637
	ldr	r3,[r0]
	mov	r12,r3,asr #31
	ldr	r0,.Lj640
	ldr	r2,[r0]
	ldr	r0,.Lj641
	ldr	r1,[r0]
	subs	r0,r3,r2
	sbc	r1,r12,r1
	ldr	r1,.Lj637
	str	r0,[r1]
# [2037] if sfh>-1 then
	ldr	r0,.Lj648
	ldr	r0,[r0]
	mvn	r1,#0
	cmp	r0,r1
	ble	.Lj650
# [2039] if filetype=0 then
	ldr	r0,.Lj651
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj653
# [2041] il:=fileread(sfh,buf,25);
	add	r1,r13,#4
	ldr	r0,.Lj648
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	mov	r7,r0
# [2042] if skip=1 then  il:=fileread(sfh,buf,25);
	ldr	r0,.Lj655
	ldr	r0,[r0]
	cmp	r0,#1
	bne	.Lj657
	add	r1,r13,#4
	ldr	r0,.Lj648
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	mov	r7,r0
.Lj657:
# [2043] if il=25 then
	cmp	r7,#25
	bne	.Lj660
# [2045] for i:=0 to 24 do poke($200d400+i,buf[i]);
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj663:
	add	r9,r9,#1
	add	r0,r9,#33554432
	add	r0,r0,#54272
	add	r1,r13,#4
	ldrb	r1,[r1, r9]
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	cmp	r9,#24
	blt	.Lj663
# [2046] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj666:
	add	r9,r9,#1
	ldr	r0,.Lj667
	mov	r2,r9,lsl #2
	mov	r3,r9,lsl #2
	add	r1,r0,#4
	ldr	r1,[r1, r2]
	str	r1,[r0, r3]
	cmp	r9,#15
	blt	.Lj666
# [2047] t6:=clockgettotal;
	ldr	r0,.Lj629
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj670
	ldr	r0,.Lj629
	ldr	r0,[r0]
	blx	r0
	ldr	r2,.Lj672
	str	r0,[r2]
	ldr	r0,.Lj673
	str	r1,[r0]
	b	.Lj674
.Lj670:
	mov	r0,#0
	ldr	r1,.Lj672
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj673
	str	r1,[r0]
.Lj674:
# [2048] times6502[15]:=0;
	mov	r1,#0
	ldr	r0,.Lj677
	str	r1,[r0]
# [2049] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	mov	r0,#0
	ldr	r1,.Lj672
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj673
	str	r1,[r0]
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj682:
	add	r9,r9,#1
	mov	r1,r9,lsl #2
	ldr	r0,.Lj667
	ldr	r2,[r1, r0]
	mov	r3,r2,asr #31
	ldr	r0,.Lj672
	ldr	r1,[r0]
	ldr	r0,.Lj673
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj672
	str	r2,[r0]
	ldr	r0,.Lj673
	str	r1,[r0]
	cmp	r9,#15
	blt	.Lj682
# [2050] time6502:=t6;
	ldr	r0,.Lj672
	ldr	r2,[r0]
	ldr	r1,[r0, #4]
	ldr	r0,.Lj689
	str	r2,[r0]
	str	r1,[r0, #4]
# [2051] timer1+=siddelay;
	ldr	r0,.Lj690
	ldr	r2,[r0]
	ldr	r0,.Lj691
	ldr	r3,[r0]
	ldr	r0,.Lj640
	ldr	r1,[r0]
	ldr	r0,.Lj641
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj690
	str	r2,[r0]
	ldr	r0,.Lj691
	str	r1,[r0]
# [2052] songtime+=siddelay;
	ldr	r0,.Lj696
	ldr	r2,[r0]
	ldr	r0,.Lj697
	ldr	r3,[r0]
	ldr	r0,.Lj640
	ldr	r1,[r0]
	ldr	r0,.Lj641
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj696
	str	r2,[r0]
	ldr	r0,.Lj697
	str	r1,[r0]
	b	.Lj714
.Lj660:
# [2056] fileclose(sfh);
	ldr	r0,.Lj648
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [2057] fh:=-1;
	mvn	r0,#0
	ldr	r1,.Lj704
	str	r0,[r1]
# [2058] songtime:=0;
	mov	r0,#0
	ldr	r1,.Lj696
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj697
	str	r1,[r0]
# [2059] timer1:=-1;
	mvn	r0,#0
	ldr	r1,.Lj690
	str	r0,[r1]
	mvn	r0,#0
	ldr	r1,.Lj691
	str	r0,[r1]
# [2060] for i:=0 to 6 do raml^[$3500+i]:=0;
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj711:
	add	r9,r9,#1
	ldr	r0,.Lj712
	ldr	r1,[r0]
	mov	r2,r9,lsl #2
	mov	r3,#0
	ldr	r0,.Lj713
	add	r0,r1,r0
	str	r3,[r0, r2]
	cmp	r9,#6
	blt	.Lj711
	b	.Lj714
.Lj653:
# [2066] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj717:
	add	r9,r9,#1
	ldr	r0,.Lj667
	mov	r2,r9,lsl #2
	mov	r3,r9,lsl #2
	add	r1,r0,#4
	ldr	r1,[r1, r2]
	str	r1,[r0, r3]
	cmp	r9,#15
	blt	.Lj717
# [2067] t6:=clockgettotal;
	ldr	r0,.Lj629
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj721
	ldr	r0,.Lj629
	ldr	r0,[r0]
	blx	r0
	ldr	r2,.Lj672
	str	r0,[r2]
	ldr	r0,.Lj673
	str	r1,[r0]
	b	.Lj725
.Lj721:
	mov	r0,#0
	ldr	r1,.Lj672
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj673
	str	r1,[r0]
.Lj725:
# [2068] jsr6502(256, play);
	ldr	r0,.Lj728
	ldrh	r1,[r0]
	mov	r0,#256
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [2069] times6502[15]:=clockgettotal-t6;
	ldr	r0,.Lj629
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj731
	ldr	r0,.Lj629
	ldr	r0,[r0]
	blx	r0
	b	.Lj733
.Lj731:
	mov	r0,#0
	mov	r1,#0
.Lj733:
	ldr	r2,.Lj672
	ldr	r3,[r2]
	ldr	r2,.Lj673
	ldr	r2,[r2]
	subs	r0,r0,r3
	sbc	r1,r1,r2
	ldr	r1,.Lj677
	str	r0,[r1]
# [2070] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	mov	r0,#0
	ldr	r1,.Lj672
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj673
	str	r0,[r1]
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj741:
	add	r9,r9,#1
	mov	r0,r9,lsl #2
	ldr	r1,.Lj667
	ldr	r2,[r0, r1]
	mov	r3,r2,asr #31
	ldr	r0,.Lj672
	ldr	r1,[r0]
	ldr	r0,.Lj673
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj672
	str	r2,[r0]
	ldr	r0,.Lj673
	str	r1,[r0]
	cmp	r9,#15
	blt	.Lj741
# [2071] time6502:=t6-15;
	ldr	r0,.Lj672
	ldr	r1,[r0]
	ldr	r0,.Lj673
	ldr	r0,[r0]
	subs	r1,r1,#15
	sbc	r2,r0,#0
	ldr	r0,.Lj689
	str	r1,[r0]
	ldr	r0,.Lj750
	str	r2,[r0]
# [2073] for i:=0 to 25 do buf[i]:= read6502($D400+i);
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj753:
	add	r9,r9,#1
	add	r0,r9,#54272
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r1,r13,#4
	strb	r0,[r1, r9]
	cmp	r9,#25
	blt	.Lj753
# [2074] for i:=0 to 25 do poke($200d400+i,buf[i]);
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj756:
	add	r9,r9,#1
	add	r0,r9,#33554432
	add	r0,r0,#54272
	add	r1,r13,#4
	ldrb	r1,[r1, r9]
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	cmp	r9,#25
	blt	.Lj756
# [2076] timer1+=siddelay;
	ldr	r0,.Lj690
	ldr	r2,[r0]
	ldr	r0,.Lj691
	ldr	r3,[r0]
	ldr	r0,.Lj640
	ldr	r1,[r0]
	ldr	r0,.Lj641
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj690
	str	r2,[r0]
	ldr	r0,.Lj691
	str	r1,[r0]
# [2077] songtime+=siddelay;
	ldr	r0,.Lj696
	ldr	r2,[r0]
	ldr	r0,.Lj697
	ldr	r3,[r0]
	ldr	r0,.Lj640
	ldr	r1,[r0]
	ldr	r0,.Lj641
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj696
	str	r2,[r0]
	ldr	r0,.Lj697
	str	r1,[r0]
.Lj714:
.Lj650:
.Lj643:
# [2083] s:=sid(1);
	mov	r0,r13
	mov	r1,#1
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# [2084] audio2[240*k]:=s[0];
	mov	r0,#240
	mul	r0,r8,r0
	mov	r0,r0,lsl #2
	ldrsh	r1,[r13]
	str	r1,[r4, r0]
# [2085] audio2[240*k+1]:=s[1];
	mov	r0,#240
	mul	r0,r8,r0
	mov	r1,r0,lsl #2
	ldrsh	r2,[r13, #2]
	add	r0,r4,#4
	str	r2,[r0, r1]
# [2087] for i:=120*k+1 to 120*k+119 do
	mov	r0,#120
	mul	r0,r8,r0
	add	r10,r0,#119
	mov	r0,#120
	mul	r0,r8,r0
	add	r9,r0,#1
# Peephole DataMov2Data removed superfluous mov
	cmp	r10,r9
	blt	.Lj770
	sub	r9,r9,#1
	.balign 4
.Lj771:
	add	r9,r9,#1
# [2089] s:=sid(0);
	mov	r0,r13
	mov	r1,#0
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# Peephole ShiftShift2Shift 1 done
# [2090] audio2[2*i]:=s[0];
	mov	r0,r9,lsl #3
	ldrsh	r1,[r13]
	str	r1,[r4, r0]
# Peephole ShiftShift2Shift 1 done
# [2091] audio2[2*i+1]:=s[1];
	mov	r0,r9,lsl #3
	ldrsh	r1,[r13, #2]
	add	r2,r4,#4
	str	r1,[r2, r0]
	cmp	r10,r9
	bgt	.Lj771
.Lj770:
	cmp	r8,#7
	blt	.Lj636
# [2095] inc(sidcount);
	ldr	r1,.Lj772
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [2097] sidtime:=clockgettotal-ttt;
	ldr	r0,.Lj629
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj775
	ldr	r0,.Lj629
	ldr	r0,[r0]
	blx	r0
	b	.Lj777
.Lj775:
	mov	r0,#0
	mov	r1,#0
.Lj777:
	subs	r2,r0,r5
	sbc	r1,r1,r6
	ldr	r0,.Lj778
	str	r2,[r0]
	ldr	r0,.Lj779
	str	r1,[r0]
# [2098] end;
	add	r13,r13,#32
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r15}
.Lj629:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj637:
	.long	TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
.Lj640:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj641:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj648:
	.long	U_$RETROMALINA_$$_SFH
.Lj651:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj655:
	.long	U_$RETROMALINA_$$_SKIP
.Lj667:
	.long	U_$RETROMALINA_$$_TIMES6502
.Lj672:
	.long	U_$RETROMALINA_$$_T6
.Lj673:
	.long	U_$RETROMALINA_$$_T6+4
.Lj677:
	.long	U_$RETROMALINA_$$_TIMES6502+60
.Lj689:
	.long	U_$RETROMALINA_$$_TIME6502
.Lj690:
	.long	TC_$RETROMALINA_$$_TIMER1
.Lj691:
	.long	TC_$RETROMALINA_$$_TIMER1+4
.Lj696:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj697:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj704:
	.long	U_$RETROMALINA_$$_FH
.Lj712:
	.long	U_$RETROMALINA_$$_R1
.Lj713:
	.long	54272
.Lj728:
	.long	U_$RETROMALINA_$$_PLAY
.Lj750:
	.long	U_$RETROMALINA_$$_TIME6502+4
.Lj772:
	.long	TC_$RETROMALINA_$$_SIDCOUNT
.Lj778:
	.long	TC_$RETROMALINA_$$_SIDTIME
.Lj779:
	.long	TC_$RETROMALINA_$$_SIDTIME+4
.Le33:
	.size	RETROMALINA_$$_AUDIOCALLBACK$LONGINT, .Le33 - RETROMALINA_$$_AUDIOCALLBACK$LONGINT

.section .text.n_retromalina_$$_pwmbeep
	.balign 4
.globl	RETROMALINA_$$_PWMBEEP
RETROMALINA_$$_PWMBEEP:
# [2109] begin
	stmfd	r13!,{r4,r14}
	sub	r13,r13,#32
	sub	r13,r13,#16384
# Var i located in register r0
# Var sinus located at r13+0, size=OS_NO
# Var ctrlblock located at r13+16384, size=OS_NO
# Var i located in register r4
# [2110] for i:=0 to 4095 do sinus[i]:=round(1040+1024*(sin(2*pi*i/512)));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj784:
	add	r4,r4,#1
	vmov	s0,r4
	vcvt.f64.s32	d0,s0
	vldr	d1,.Lj787
	vmul.f64	d0,d1,d0
	vldr	d1,.Lj788
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_sin_real
	vldr	d0,.Lj786
	vmov	d1,r0,r1
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj785
	vadd.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Peephole FoldShiftLdrStr done
	str	r0,[r13, r4, lsl #2]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj784
# [2112] ctrlblock[0]:=$07050140; //transfer info
	ldr	r1,.Lj789
	ldr	r0,.Lj790
	str	r1,[r13, r0]
# [2113] ctrlblock[1]:=$c205a000;
	mov	r1,#-1040187392
	orr	r1,r1,#368640
	ldr	r0,.Lj791
	str	r1,[r13, r0]
# [2114] ctrlblock[2]:=$7E20C018;
	ldr	r0,.Lj792
	ldr	r1,.Lj793
	str	r0,[r13, r1]
# [2115] ctrlblock[3]:=7680;
	mov	r1,#7680
	ldr	r0,.Lj794
	str	r1,[r13, r0]
# [2116] ctrlblock[4]:=$0;
	mov	r0,#0
	ldr	r1,.Lj795
	str	r0,[r13, r1]
# [2117] ctrlblock[5]:=$c4000020;
	mov	r1,#32
	orr	r1,r1,#-1006632960
	ldr	r0,.Lj796
	str	r1,[r13, r0]
# [2118] ctrlblock[6]:=$0;
	mov	r0,#0
	ldr	r1,.Lj797
	str	r0,[r13, r1]
# [2119] ctrlblock[7]:=$0;
	mov	r0,#0
	ldr	r1,.Lj798
	str	r0,[r13, r1]
# Var i located in register r4
# [2120] for i:=0 to 7 do lpoke($4000000+4*i,ctrlblock[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj801:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
	sub	r0,r0,#-67108864
	mov	r1,r4,lsl #2
	ldr	r2,.Lj790
	add	r2,r13,r2
	ldr	r1,[r2, r1]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r4,#7
	blt	.Lj801
# [2121] ctrlblock[5]:=$c4000000;
	mov	r0,#-1006632960
	ldr	r1,.Lj796
	str	r0,[r13, r1]
# [2122] ctrlblock[1]:=$c205c000;
	mov	r0,#-1040187392
	orr	r0,r0,#376832
	ldr	r1,.Lj791
	str	r0,[r13, r1]
# Var i located in register r4
# [2123] for i:=0 to 7 do lpoke($4000020+4*i,ctrlblock[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj807:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
	add	r0,r0,#32
	add	r0,r0,#67108864
	mov	r1,r4,lsl #2
	ldr	r2,.Lj790
	add	r2,r13,r2
	ldr	r1,[r2, r1]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r4,#7
	blt	.Lj807
# Var i located in register r4
# [2124] for i:=0 to 4095 do lpoke ($8000000+4*i,sinus[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj811:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
	sub	r0,r0,#-134217728
# Peephole FoldShiftLdrStr done
	ldr	r1,[r13, r4, lsl #2]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj811
# Var i located in register r4
# [2125] for i:=0 to 4095 do lpoke ($8004000+4*i,sinus[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj814:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
	add	r0,r0,#134217728
	add	r0,r0,#16384
# Peephole FoldShiftLdrStr done
	ldr	r1,[r13, r4, lsl #2]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj814
# Var i located in register r4
# [2126] for i:=0 to 4095 do lpoke ($8008000+4*i,sinus[2*(i mod 2048)]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj817:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,r0,asr #31
	eor	r0,r0,r1
	sub	r0,r0,r1
	mov	r0,r0,lsl #21
# Peephole FoldShiftProcess done
# [2148] end;
	eor	r0,r1,r0,lsr #21
	sub	r1,r0,r1
# Peephole DataMov2Data removed superfluous mov
# Peephole ShiftShift2Shift 1 done
# Peephole FoldShiftLdrStr done
	ldr	r1,[r13, r1, lsl #3]
	mov	r0,r4,lsl #2
	add	r0,r0,#134217728
	add	r0,r0,#32768
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj817
# Var i located in register r4
# [2127] for i:=0 to 4095 do lpoke ($800C000+4*i,sinus[2*(i mod 2048)]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj820:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,r0,asr #31
	eor	r0,r0,r1
	sub	r0,r0,r1
	mov	r0,r0,lsl #21
# Peephole FoldShiftProcess done
	eor	r0,r1,r0,lsr #21
	sub	r1,r0,r1
# Peephole DataMov2Data removed superfluous mov
# Peephole ShiftShift2Shift 1 done
# Peephole FoldShiftLdrStr done
	ldr	r1,[r13, r1, lsl #3]
	mov	r0,r4,lsl #2
	add	r0,r0,#134217728
	add	r0,r0,#49152
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj820
# [2128] CleanDataCacheRange($8000000,$10000);
	ldr	r0,.Lj821
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj823
	mov	r1,#65536
	mov	r0,#134217728
	ldr	r2,.Lj821
	ldr	r2,[r2]
	blx	r2
.Lj823:
# [2129] CleanDataCacheRange($4000000,$10000);
	ldr	r0,.Lj821
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj827
	mov	r1,#65536
	mov	r0,#67108864
	ldr	r2,.Lj821
	ldr	r2,[r2]
	blx	r2
.Lj827:
# [2130] sleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [2134] i:=pinteger($3F200010)^ and  %11111111111111000111111111111000;
	ldr	r0,.Lj829
	ldr	r0,[r0]
	bic	r0,r0,#7
	bic	r0,r0,#229376
# Var i located in register r0
# [2135] lpoke($3F200010, i or       %00000000000000100000000000000100); // gpio 40/45 as alt0
	orr	r1,r0,#4
	orr	r1,r1,#131072
	ldr	r0,.Lj829
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2136] lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
	mov	r1,#22
	orr	r1,r1,#1509949440
	ldr	r0,.Lj831
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2137] lpoke($3F1010a4,$5a002000); // div 5
	mov	r1,#1509949440
	orr	r1,r1,#8192
	ldr	r0,.Lj832
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2138] lpoke($3F20C010,5208); // pwm 1 range  11bit 48 khz 2083
	mov	r1,#88
	orr	r1,r1,#5120
	ldr	r0,.Lj833
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2139] lpoke($3F20C020,5208); // pwm 2 range
	mov	r1,#88
	orr	r1,r1,#5120
	ldr	r0,.Lj834
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2140] lpoke($3F20C000,$00002161); // pwm contr0l - enable, clear fifo, use fifo
	mov	r1,#97
	orr	r1,r1,#8448
	mov	r0,#1056964608
	orr	r0,r0,#2146304
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2141] lpoke($3F20C008,$80000307); // pwm dma enable
	mov	r1,#-2147483641
	orr	r1,r1,#768
	ldr	r0,.Lj835
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2142] lpoke($3F007ff0,pinteger($3F007FF0)^ or %100000000); // dma0 enable
	ldr	r0,.Lj836
	ldr	r0,[r0]
	orr	r1,r0,#256
	ldr	r0,.Lj836
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2143] lpoke($3F007804,$c4000000);
	ldr	r0,.Lj838
	mov	r1,#-1006632960
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2144] lpoke($3F007800,3);
	mov	r0,#1056964608
	orr	r0,r0,#30720
	mov	r1,#3
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	add	r13,r13,#32
	add	r13,r13,#16384
	ldmfd	r13!,{r4,r15}
.Lj787:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64
.Lj788:
# value: 0d+1.9531250000000000E-003
	.byte	0,0,0,0,0,0,96,63
.Lj786:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64
.Lj785:
# value: 0d+1.0400000000000000E+003
	.byte	0,0,0,0,0,64,144,64
.Lj789:
	.long	117768512
.Lj790:
	.long	16384
.Lj791:
	.long	16388
.Lj792:
	.long	2116075544
.Lj793:
	.long	16392
.Lj794:
	.long	16396
.Lj795:
	.long	16400
.Lj796:
	.long	16404
.Lj797:
	.long	16408
.Lj798:
	.long	16412
.Lj821:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj829:
	.long	1059061776
.Lj831:
	.long	1058017440
.Lj832:
	.long	1058017444
.Lj833:
	.long	1059110928
.Lj834:
	.long	1059110944
.Lj835:
	.long	1059110920
.Lj836:
	.long	1056997360
.Lj838:
	.long	1056995332
.Le34:
	.size	RETROMALINA_$$_PWMBEEP, .Le34 - RETROMALINA_$$_PWMBEEP

.section .text.n_retromalina_$$_sdl_pauseaudio$longint
	.balign 4
.globl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT:
# Var mode located in register r0
# [2153] begin
# [2155] end;
	bx	r14
.Le35:
	.size	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT, .Le35 - RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
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
# [2161] end.
.Le36:
	.size	VMT_$RETROMALINA_$$_TRETRO, .Le36 - VMT_$RETROMALINA_$$_TRETRO

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
.Le37:
	.size	VMT_$RETROMALINA_$$_TKBD, .Le37 - VMT_$RETROMALINA_$$_TKBD

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
.Le38:
	.size	VMT_$RETROMALINA_$$_TAUDIO, .Le38 - VMT_$RETROMALINA_$$_TAUDIO
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_.Ld5
	.balign 4
.Ld5:
	.byte	6
	.ascii	"TRetro"
.Le39:
	.size	.Ld5, .Le39 - .Ld5

.section .rodata.n_.Ld6
	.balign 4
.Ld6:
	.byte	4
	.ascii	"Tkbd"
.Le40:
	.size	.Ld6, .Le40 - .Ld6

.section .rodata.n_.Ld7
	.balign 4
.Ld7:
	.byte	6
	.ascii	"TAudio"
.Le41:
	.size	.Ld7, .Le41 - .Ld7
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$RETROMALINA_$$_DB
.globl	TC_$RETROMALINA_$$_DB
TC_$RETROMALINA_$$_DB:
	.byte	0
.Le42:
	.size	TC_$RETROMALINA_$$_DB, .Le42 - TC_$RETROMALINA_$$_DB

.section .data.n_TC_$RETROMALINA_$$_SIDTIME
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDTIME
TC_$RETROMALINA_$$_SIDTIME:
	.long	0,0
# [130] timer1:int64=-1;
.Le43:
	.size	TC_$RETROMALINA_$$_SIDTIME, .Le43 - TC_$RETROMALINA_$$_SIDTIME

.section .data.n_TC_$RETROMALINA_$$_TIMER1
	.balign 4
.globl	TC_$RETROMALINA_$$_TIMER1
TC_$RETROMALINA_$$_TIMER1:
	.long	-1,-1
# [131] siddelay:int64=20000;
.Le44:
	.size	TC_$RETROMALINA_$$_TIMER1, .Le44 - TC_$RETROMALINA_$$_TIMER1

.section .data.n_TC_$RETROMALINA_$$_SIDDELAY
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDDELAY
TC_$RETROMALINA_$$_SIDDELAY:
	.long	20000,0
.Le45:
	.size	TC_$RETROMALINA_$$_SIDDELAY, .Le45 - TC_$RETROMALINA_$$_SIDDELAY

.section .data.n_TC_$RETROMALINA_$$_SCJ
	.balign 4
.globl	TC_$RETROMALINA_$$_SCJ
TC_$RETROMALINA_$$_SCJ:
	.long	0
.Le46:
	.size	TC_$RETROMALINA_$$_SCJ, .Le46 - TC_$RETROMALINA_$$_SCJ

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
.Le47:
	.size	TC_$RETROMALINA_$$_ATTACKTABLE, .Le47 - TC_$RETROMALINA_$$_ATTACKTABLE

.section .data.n_TC_$RETROMALINA_$$_SIDCOUNT
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCOUNT
TC_$RETROMALINA_$$_SIDCOUNT:
	.long	1
# [147] sampleclock:integer=0;
.Le48:
	.size	TC_$RETROMALINA_$$_SIDCOUNT, .Le48 - TC_$RETROMALINA_$$_SIDCOUNT

.section .data.n_TC_$RETROMALINA_$$_SAMPLECLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SAMPLECLOCK
TC_$RETROMALINA_$$_SAMPLECLOCK:
	.long	0
# [148] sidclock:integer=0;
.Le49:
	.size	TC_$RETROMALINA_$$_SAMPLECLOCK, .Le49 - TC_$RETROMALINA_$$_SAMPLECLOCK

.section .data.n_TC_$RETROMALINA_$$_SIDCLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCLOCK
TC_$RETROMALINA_$$_SIDCLOCK:
	.long	0
.Le50:
	.size	TC_$RETROMALINA_$$_SIDCLOCK, .Le50 - TC_$RETROMALINA_$$_SIDCLOCK

.section .data.n_TC_$RETROMALINA_$$_FULLSCREEN
	.balign 4
.globl	TC_$RETROMALINA_$$_FULLSCREEN
TC_$RETROMALINA_$$_FULLSCREEN:
	.long	0
.Le51:
	.size	TC_$RETROMALINA_$$_FULLSCREEN, .Le51 - TC_$RETROMALINA_$$_FULLSCREEN

.section .data.n_TC_$RETROMALINA_$$_RUNNING
	.balign 4
.globl	TC_$RETROMALINA_$$_RUNNING
TC_$RETROMALINA_$$_RUNNING:
	.long	0
.Le52:
	.size	TC_$RETROMALINA_$$_RUNNING, .Le52 - TC_$RETROMALINA_$$_RUNNING

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,30
.Ld1:
	.ascii	"C:\\retro\\combinedwaveforms.bin\000"
.Le53:
	.size	.Ld1$strlab, .Le53 - .Ld1$strlab

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,20
.Ld2:
	.ascii	"C:\\retro\\st4font.def\000"
.Le54:
	.size	.Ld2$strlab, .Le54 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,17
.Ld3:
	.ascii	"C:\\retro\\mysz.def\000"
.Le55:
	.size	.Ld3$strlab, .Le55 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,25
.Ld4:
	.ascii	"C:\\retro\\ataripalette.def\000"
.Le56:
	.size	.Ld4$strlab, .Le56 - .Ld4$strlab

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC:
	.long	0
# [965] sc:integer=0;
.Le57:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC, .Le57 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [966] waveform1:word=0;
.Le58:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC, .Le58 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [967] f1:boolean=false;
.Le59:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1, .Le59 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [968] waveform2:word=0;
.Le60:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1, .Le60 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [969] f2:boolean=false;
.Le61:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2, .Le61 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [970] waveform3:word=0;
.Le62:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2, .Le62 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [971] f3:boolean=false;
.Le63:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3, .Le63 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [972] ff:integer=0;
.Le64:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3, .Le64 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.long	0
# [973] filter_resonance2i:integer=0;
.Le65:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF, .Le65 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [974] filter_freqi:integer=0;
.Le66:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I, .Le66 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [975] volume:integer=0;
.Le67:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI, .Le67 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [976] c3off:integer=0;
.Le68:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME, .Le68 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
	.long	0
# [977] fl:integer=0;
.Le69:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF, .Le69 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [1017] var i,sid1,sid1l,ind:integer;
.Le70:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL, .Le70 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL

.section .data.n_TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
	.balign 4
TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN:
# value: 0d+6.8555321079999998E+007
	.byte	133,235,81,228,72,88,144,65
.Le71:
	.size	TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN, .Le71 - TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN

.section .data.n_TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
	.balign 4
TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA:
	.long	0
.Le72:
	.size	TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA, .Le72 - TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$RETROMALINA_$$_TSRCCONVERT
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TSRCCONVERT
RTTI_$RETROMALINA_$$_TSRCCONVERT:
	.byte	23,11
# [2163] 
	.ascii	"Tsrcconvert"
	.byte	0,0,0,0,3,0,0
	.long	0
	.byte	1,0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_POINTER
	.byte	6
	.ascii	"screen"
	.byte	0
.Le73:
	.size	RTTI_$RETROMALINA_$$_TSRCCONVERT, .Le73 - RTTI_$RETROMALINA_$$_TSRCCONVERT

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
.Le74:
	.size	RTTI_$RETROMALINA_$$_TTFB, .Le74 - RTTI_$RETROMALINA_$$_TTFB

.section .rodata.n_RTTI_$RETROMALINA_$$_PTFB
	.balign 4
.globl	RTTI_$RETROMALINA_$$_PTFB
RTTI_$RETROMALINA_$$_PTFB:
	.byte	29,4
	.ascii	"Ptfb"
	.byte	0,0
	.long	RTTI_$RETROMALINA_$$_TTFB
.Le75:
	.size	RTTI_$RETROMALINA_$$_PTFB, .Le75 - RTTI_$RETROMALINA_$$_PTFB

.section .rodata.n_RTTI_$RETROMALINA_$$_PINT
	.balign 4
.globl	RTTI_$RETROMALINA_$$_PINT
RTTI_$RETROMALINA_$$_PINT:
	.byte	29,4
	.ascii	"Pint"
	.byte	0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le76:
	.size	RTTI_$RETROMALINA_$$_PINT, .Le76 - RTTI_$RETROMALINA_$$_PINT

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
.Le77:
	.size	RTTI_$RETROMALINA_$$_TRAM, .Le77 - RTTI_$RETROMALINA_$$_TRAM

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
.Le78:
	.size	RTTI_$RETROMALINA_$$_TRAMW, .Le78 - RTTI_$RETROMALINA_$$_TRAMW

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
.Le79:
	.size	RTTI_$RETROMALINA_$$_TRAMB, .Le79 - RTTI_$RETROMALINA_$$_TRAMB

.section .rodata.n_INIT_$RETROMALINA_$$_TRETRO
	.balign 4
.globl	INIT_$RETROMALINA_$$_TRETRO
INIT_$RETROMALINA_$$_TRETRO:
	.byte	15,6
	.ascii	"TRetro"
	.long	4,0
.Le80:
	.size	INIT_$RETROMALINA_$$_TRETRO, .Le80 - INIT_$RETROMALINA_$$_TRETRO

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
.Le81:
	.size	RTTI_$RETROMALINA_$$_TRETRO, .Le81 - RTTI_$RETROMALINA_$$_TRETRO

.section .rodata.n_INIT_$RETROMALINA_$$_TKBD
	.balign 4
.globl	INIT_$RETROMALINA_$$_TKBD
INIT_$RETROMALINA_$$_TKBD:
	.byte	15,4
	.ascii	"Tkbd"
	.byte	0,0
	.long	4,0
.Le82:
	.size	INIT_$RETROMALINA_$$_TKBD, .Le82 - INIT_$RETROMALINA_$$_TKBD

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
.Le83:
	.size	RTTI_$RETROMALINA_$$_TKBD, .Le83 - RTTI_$RETROMALINA_$$_TKBD

.section .rodata.n_INIT_$RETROMALINA_$$_TAUDIO
	.balign 4
.globl	INIT_$RETROMALINA_$$_TAUDIO
INIT_$RETROMALINA_$$_TAUDIO:
	.byte	15,6
	.ascii	"TAudio"
	.long	4,0
.Le84:
	.size	INIT_$RETROMALINA_$$_TAUDIO, .Le84 - INIT_$RETROMALINA_$$_TAUDIO

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
.Le85:
	.size	RTTI_$RETROMALINA_$$_TAUDIO, .Le85 - RTTI_$RETROMALINA_$$_TAUDIO

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
.Le86:
	.size	RTTI_$RETROMALINA_$$_TSAMPLE, .Le86 - RTTI_$RETROMALINA_$$_TSAMPLE

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
.Le87:
	.size	RTTI_$RETROMALINA_$$_TFILTERTABLE, .Le87 - RTTI_$RETROMALINA_$$_TFILTERTABLE
# End asmlist al_rtti

