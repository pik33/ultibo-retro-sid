	.file "retromalina.pas"
# Begin asmlist al_procedures

.section .text.n_retromalina$_$taudio_$__$$_create$boolean$$taudio
	.balign 4
.globl	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO
RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO:
# Temps allocated between r13+12 and r13+252
# [retromalina.pas]
# [184] begin
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
# [187] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj11
# [185] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [186] inherited Create(CreateSuspended);
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
	.size	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO, .Le0 - RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO

.section .text.n_retromalina$_$taudio_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TAUDIO_$__$$_EXECUTE
RETROMALINA$_$TAUDIO_$__$$_EXECUTE:
# [195] begin
	stmfd	r13!,{r4,r5,r14}
# Var $self located in register r4
# Var a located in register r5
# Var key located in register r0
# Var q located in register r0
	mov	r4,r0
# [196] ThreadSetCPU(ThreadGetCurrent,CPU_ID_1);
	ldr	r0,.Lj25
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj27
	ldr	r0,.Lj25
	ldr	r0,[r0]
	blx	r0
	b	.Lj29
.Lj27:
	mvn	r0,#0
.Lj29:
	mov	r1,#1
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [197] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	.balign 4
.Lj30:
	.balign 4
.Lj33:
# [199] repeat threadsleep(2); a:= lpeek($3F007e00) until (a and 2) <>0 ;
	mov	r0,#2
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	mov	r0,#1056964608
	orr	r0,r0,#32256
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r5,r0
# Peephole OpCmp2OpS done
	ands	r0,r5,#2
	beq	.Lj33
# Peephole OpCmp2OpS done
# [200] if (a and 2)<>0 then
	ands	r0,r5,#2
	beq	.Lj37
# [202] if lpeek($3f007e1c)=$c4000000 then audiocallback($0205a000)
	ldr	r0,.Lj38
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	cmp	r0,#-1006632960
	bne	.Lj40
	mov	r0,#33554432
	orr	r0,r0,#368640
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
	b	.Lj41
.Lj40:
# [203] else audiocallback($0205c000);
	mov	r0,#33554432
	orr	r0,r0,#376832
	bl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
.Lj41:
# [204] lpoke($3F007e00,3);
	mov	r0,#1056964608
	orr	r0,r0,#32256
	mov	r1,#3
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [205] CleanDataCacheRange($0205a000,$8000);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj42
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#368640
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj42
	movne	r1,#32768
	ldrne	r2,[r2]
	blxne	r2
.Lj37:
# [207] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj30
# [208] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj25:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj38:
	.long	1056996892
.Lj42:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le1:
	.size	RETROMALINA$_$TAUDIO_$__$$_EXECUTE, .Le1 - RETROMALINA$_$TAUDIO_$__$$_EXECUTE

.section .text.n_retromalina$_$tretro_$__$$_create$boolean$$tretro
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO:
# Temps allocated between r13+12 and r13+252
# [219] begin
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
	bne	.Lj49
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj49:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj46
# [222] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj54
# [220] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [221] inherited Create(CreateSuspended);
	ldrb	r2,[r13]
	ldr	r0,[r13, #8]
	mov	r3,#4194304
	mov	r1,#0
	bl	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$LONGWORD$$TTHREAD
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj60
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj60
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1]
	ldr	r1,[r1, #68]
	blx	r1
.Lj60:
.Lj54:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj56
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj62
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj64
	ldr	r0,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
# Rescheduled
	ldr	r2,[r0]
	mvn	r1,#0
	ldr	r2,[r2, #48]
	blx	r2
.Lj64:
	bl	fpc_popaddrstack
	bl	fpc_reraise
.Lj62:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #248]
	cmp	r0,#0
	blne	fpc_raise_nested
	bl	fpc_doneexception
.Lj56:
.Lj46:
	ldr	r0,[r13, #8]
	add	r13,r13,#252
	ldmfd	r13!,{r15}
.Le2:
	.size	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO, .Le2 - RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO

.section .text.n_retromalina$_$tretro_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_EXECUTE
RETROMALINA$_$TRETRO_$__$$_EXECUTE:
# [234] begin
	stmfd	r13!,{r4,r14}
# Var $self located in register r4
# Var id located in register r0
	mov	r4,r0
# Rescheduled
# [236] running:=1;
	ldr	r0,.Lj68
	mov	r1,#1
	str	r1,[r0]
# [237] id:=getcurrentthreadid  ;
	bl	ULTIBO_$$_GETCURRENTTHREADID$$LONGWORD
# Var id located in register r0
# Rescheduled
# [238] ThreadSetCPU(ThreadGetCurrent,CPU_ID_3);
	ldr	r1,.Lj69
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj71
	ldr	r0,.Lj69
	ldr	r0,[r0]
	blx	r0
	b	.Lj73
.Lj71:
	mvn	r0,#0
.Lj73:
	mov	r1,#3
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [239] sleep(1);
	mov	r0,#1
	bl	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
	.balign 4
.Lj74:
# Rescheduled
# [243] vblank1:=0;
	ldr	r0,.Lj77
	mov	r1,#0
# Rescheduled
# [244] t:=clockgettotal;
	ldr	r2,.Lj78
	strb	r1,[r0]
	ldr	r0,[r2]
	cmp	r0,#0
	beq	.Lj80
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj82
# Rescheduled
	ldr	r2,.Lj83
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj84
.Lj80:
# Rescheduled
	ldr	r0,.Lj82
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj83
	mov	r0,#0
	str	r0,[r1]
.Lj84:
# [245] scrconvert16f(p2);
	ldr	r0,.Lj87
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [246] tim:=clockgettotal-t;
	ldr	r0,.Lj78
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj90
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
	b	.Lj92
.Lj90:
	mov	r0,#0
	mov	r1,#0
.Lj92:
	ldr	r2,.Lj82
# Rescheduled
	ldr	r3,.Lj83
	ldr	r2,[r2]
	ldr	r12,[r3]
	subs	r0,r0,r2
# Rescheduled
	ldr	r3,.Lj95
	sbc	r1,r1,r12
# Rescheduled
	ldr	r2,.Lj96
	str	r0,[r3]
# Rescheduled
# [247] t:=clockgettotal;
	ldr	r0,.Lj78
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj99
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj82
# Rescheduled
	ldr	r2,.Lj83
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj103
.Lj99:
# Rescheduled
	ldr	r0,.Lj82
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj83
	mov	r1,#0
	str	r1,[r0]
.Lj103:
# [248] spritef(p2);
	ldr	r0,.Lj87
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [249] ts:=clockgettotal-t;
	ldr	r0,.Lj78
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj109
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
	b	.Lj111
.Lj109:
	mov	r0,#0
	mov	r1,#0
.Lj111:
	ldr	r2,.Lj82
# Rescheduled
	ldr	r3,.Lj83
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r12,r0,r2
# Rescheduled
	ldr	r2,.Lj114
	sbc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj115
	str	r12,[r2]
	str	r0,[r1]
# Rescheduled
# [250] vblank1:=1;
	ldr	r0,.Lj77
	mov	r1,#1
	strb	r1,[r0]
# [251] CleanDataCacheRange(integer(p2),9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj87
	orr	r1,r1,#827392
# Rescheduled
	ldr	r2,.Lj118
# Rescheduled
	ldr	r2,[r2]
	ldr	r0,[r0]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj118
	ldrne	r2,[r2]
	blxne	r2
# [252] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [254] FramebufferDeviceSetOffset(fb,0,0,True);
	ldr	r0,.Lj122
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#0
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [255] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj122
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# Rescheduled
# [257] vblank1:=0;
	ldr	r1,.Lj77
	mov	r2,#0
# Rescheduled
# [258] t:=clockgettotal;
	ldr	r0,.Lj78
	strb	r2,[r1]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj127
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj82
# Rescheduled
	ldr	r2,.Lj83
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj131
.Lj127:
# Rescheduled
	ldr	r0,.Lj82
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj83
	mov	r1,#0
	str	r1,[r0]
.Lj131:
# [259] scrconvert16f(p2+2304000);
	ldr	r0,.Lj87
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [260] tim:=clockgettotal-t;
	ldr	r0,.Lj78
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj137
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
	b	.Lj139
.Lj137:
	mov	r0,#0
	mov	r1,#0
.Lj139:
	ldr	r2,.Lj82
# Rescheduled
	ldr	r3,.Lj83
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r0,r0,r2
# Rescheduled
	ldr	r12,.Lj95
	sbc	r1,r1,r3
# Rescheduled
	ldr	r2,.Lj96
	str	r0,[r12]
# Rescheduled
# [261] t:=clockgettotal;
	ldr	r0,.Lj78
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj146
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj82
# Rescheduled
	ldr	r2,.Lj83
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj150
.Lj146:
# Rescheduled
	ldr	r0,.Lj82
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj83
	mov	r1,#0
	str	r1,[r0]
.Lj150:
# [262] spritef(p2+2304000);
	ldr	r0,.Lj87
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [263] ts:=clockgettotal-t;
	ldr	r0,.Lj78
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj156
	ldr	r0,.Lj78
	ldr	r0,[r0]
	blx	r0
	b	.Lj158
.Lj156:
	mov	r0,#0
	mov	r1,#0
.Lj158:
	ldr	r2,.Lj82
# Rescheduled
	ldr	r3,.Lj83
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj114
	sbc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj115
	str	r2,[r12]
	str	r0,[r1]
# Rescheduled
# [264] vblank1:=1;
	ldr	r0,.Lj77
	mov	r1,#1
	strb	r1,[r0]
# [265] CleanDataCacheRange(integer(p2)+9216000,9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj87
# Rescheduled
	ldr	r0,[r0]
	orr	r1,r1,#827392
	add	r0,r0,#8388608
# Rescheduled
# Rescheduled
	ldr	r2,.Lj118
	add	r0,r0,#827392
	ldr	r2,[r2]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj118
	ldrne	r2,[r2]
	blxne	r2
# [266] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [268] FramebufferDeviceSetOffset(fb,0,1200,True);
	ldr	r0,.Lj122
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#1200
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [269] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj122
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [273] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj74
# Rescheduled
# [274] running:=0;
	ldr	r1,.Lj68
	mov	r0,#0
	str	r0,[r1]
# [275] end;
	ldmfd	r13!,{r4,r15}
.Lj68:
	.long	TC_$RETROMALINA_$$_RUNNING
.Lj69:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj77:
	.long	U_$RETROMALINA_$$_VBLANK1
.Lj78:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj82:
	.long	U_$RETROMALINA_$$_T
.Lj83:
	.long	U_$RETROMALINA_$$_T+4
.Lj87:
	.long	U_$RETROMALINA_$$_P2
.Lj95:
	.long	U_$RETROMALINA_$$_TIM
.Lj96:
	.long	U_$RETROMALINA_$$_TIM+4
.Lj114:
	.long	U_$RETROMALINA_$$_TS
.Lj115:
	.long	U_$RETROMALINA_$$_TS+4
.Lj118:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj122:
	.long	U_$RETROMALINA_$$_FB
.Le3:
	.size	RETROMALINA$_$TRETRO_$__$$_EXECUTE, .Le3 - RETROMALINA$_$TRETRO_$__$$_EXECUTE

.section .text.n_retromalina_$$_initmachine
	.balign 4
.globl	RETROMALINA_$$_INITMACHINE
RETROMALINA_$$_INITMACHINE:
# Temps allocated between r13+20 and r13+36
# [293] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#36
# Var a located in register r5
# Var i located in register r6
# Var fh2 located in register r0
# Var bb located at r13+0, size=OS_8
# Var Entry located at r13+4, size=OS_NO
# Var i located in register r4
# [295] for i:=16 to 8191 do  // make the memory executable, shareable, rw, cacheable, writeback
	mov	r4,#16
	sub	r4,r4,#1
	.balign 4
.Lj176:
	add	r4,r4,#1
# Rescheduled
# Rescheduled
# [297] Entry:=PageTableGetEntry(i*4096);
	ldr	r0,.Lj177
	mov	r1,r4,lsl #12
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj179
# Rescheduled
# Rescheduled
	ldr	r2,.Lj177
	add	r0,r13,#4
	ldr	r2,[r2]
	blx	r2
	b	.Lj181
.Lj179:
	add	r0,r13,#4
	mov	r2,#0
	mov	r1,#16
	bl	SYSTEM_$$_FILLCHAR$formal$LONGINT$BYTE
.Lj181:
# [298] Entry.Flags:=$3b2;
	mov	r0,#178
	orr	r0,r0,#768
# Rescheduled
# [299] PageTableSetEntry(Entry);
	ldr	r1,.Lj182
	str	r0,[r13, #16]
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj184
# Rescheduled
	ldr	r1,.Lj182
# Rescheduled
	ldr	r1,[r1]
	add	r0,r13,#4
	blx	r1
	b	.Lj186
.Lj184:
	mov	r0,#120
.Lj186:
	mov	r0,#255
	orr	r0,r0,#7936
	cmp	r4,r0
	blt	.Lj176
# Var i located in register r4
# [301] for i:=$30000 to $30FFF do  // make the memory executable, shareable, rw, cacheable, writeback
	mov	r4,#196608
	sub	r4,r4,#1
	.balign 4
.Lj189:
	add	r4,r4,#1
# Rescheduled
# Rescheduled
# [303] Entry:=PageTableGetEntry(i*4096);
	ldr	r0,.Lj177
	mov	r1,r4,lsl #12
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj192
# Rescheduled
	ldr	r2,.Lj177
# Rescheduled
	ldr	r2,[r2]
	add	r0,r13,#20
	blx	r2
	b	.Lj194
.Lj192:
	mov	r2,#0
	mov	r1,#16
	add	r0,r13,#20
	bl	SYSTEM_$$_FILLCHAR$formal$LONGINT$BYTE
.Lj194:
# Peephole Add/SubLdr2Ldr done
	ldr	r2,[r13, #20]
	ldr	r3,[r13, #24]
	ldr	r12,[r13, #28]
	ldr	r0,[r13, #32]
# Peephole Add/SubLdr2Ldr done
	str	r2,[r13, #4]
	str	r3,[r13, #8]
	str	r12,[r13, #12]
	str	r0,[r13, #16]
# [304] Entry.Flags:=$3b2;
	mov	r0,#178
	orr	r0,r0,#768
# Rescheduled
# [305] PageTableSetEntry(Entry);
	ldr	r1,.Lj182
	str	r0,[r13, #16]
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj197
# Rescheduled
	ldr	r1,.Lj182
# Rescheduled
	ldr	r1,[r1]
	add	r0,r13,#4
	blx	r1
	b	.Lj199
.Lj197:
	mov	r0,#120
.Lj199:
	ldr	r0,.Lj200
	cmp	r4,r0
	blt	.Lj189
# Var i located in register r4
# [307] for i:=$2000000 to $206FFFF do poke(i,0);
	mov	r4,#33554432
	sub	r4,r4,#1
	.balign 4
.Lj203:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	mvn	r0,#-50331648
	bic	r0,r0,#16318464
	cmp	r4,r0
	blt	.Lj203
# [308] lpoke($2060004,$30000000);
	ldr	r0,.Lj204
	mov	r1,#805306368
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [309] lpoke($2060000,$00000000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# Rescheduled
# [311] fh2:=fileopen('C:\retro\combinedwaveforms.bin',$40);   // load combined waveforms for SID
	ldr	r0,.Lj205
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [312] fileread(fh2,combined,1024);
	ldr	r1,.Lj206
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [313] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Var i located in register r2
# [317] for i:=0 to 127 do siddata[i]:=0;
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj209:
	add	r2,r2,#1
# Rescheduled
	ldr	r0,.Lj210
	mov	r1,#0
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r2, lsl #2]
	cmp	r2,#127
	blt	.Lj209
# Var i located in register r4
# [318] for i:=0 to 15 do siddata[$30+i]:=round(1073741824*(1-20*attacktable[i]));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj213:
	add	r4,r4,#1
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj217
	vldr	d0,.Lj216
# [360] end;
	add	r0,r1,r4,lsl #3
	vldr	d1,[r0]
	vmul.f64	d1,d0,d1
	vldr	d0,.Lj215
	vsub.f64	d0,d0,d1
	vldr	d1,.Lj214
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj218
# Peephole FoldShiftLdrStr done
	str	r0,[r2, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj213
# Var i located in register r4
# [319] for i:=0 to 15 do siddata[$40+i]:=20*round(1073741824*attacktable[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj221:
	add	r4,r4,#1
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r0,.Lj217
	vldr	d0,.Lj222
	add	r0,r0,r4,lsl #3
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
	ldr	r2,.Lj224
# Peephole FoldShiftLdrStr done
	str	r0,[r2, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj221
# Var i located in register r3
# [320] for i:=0 to 1023 do siddata[128+i]:=combined[i];
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj227:
	add	r3,r3,#1
# Rescheduled
	ldr	r0,.Lj206
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldrb	r0,[r3, r0]
	ldr	r1,.Lj229
	str	r0,[r1, r3, lsl #2]
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r3,r0
	blt	.Lj227
# Var i located in register r3
# [321] for i:=0 to 1023 do siddata[128+i]:=(siddata[128+i]-128) shl 16;
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj232:
# Rescheduled
	ldr	r0,.Lj210
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
	blt	.Lj232
# [322] siddata[$0e]:=$7FFFF8;
	mvn	r1,#-1073741817
# Rescheduled
	ldr	r0,.Lj234
	bic	r1,r1,#1065353216
	str	r1,[r0]
# [323] siddata[$1e]:=$7FFFF8;
	mvn	r1,#-1073741817
# Rescheduled
	ldr	r0,.Lj235
	bic	r1,r1,#1065353216
	str	r1,[r0]
# [324] siddata[$2e]:=$7FFFF8;
	mvn	r1,#-1073741817
# Rescheduled
	ldr	r0,.Lj236
	bic	r1,r1,#1065353216
	str	r1,[r0]
# [326] reset6502;
	bl	UNIT6502_$$_RESET6502
# [331] fb:=FramebufferDevicegetdefault;
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETDEFAULT$$PFRAMEBUFFERDEVICE
# Rescheduled
	ldr	r2,.Lj237
# Rescheduled
# [332] FramebufferDeviceRelease(fb);
	ldr	r1,.Lj237
	str	r0,[r2]
	ldr	r0,[r1]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICERELEASE$PFRAMEBUFFERDEVICE$$LONGWORD
# [333] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [334] FramebufferProperties.Depth:=32;
	ldr	r0,.Lj239
	mov	r1,#32
	str	r1,[r0]
# Rescheduled
# [335] FramebufferProperties.PhysicalWidth:=1920;
	ldr	r1,.Lj240
	mov	r0,#1920
	str	r0,[r1]
# Rescheduled
# [336] FramebufferProperties.PhysicalHeight:=1200;
	ldr	r2,.Lj241
	mov	r1,#1200
# Rescheduled
	ldr	r0,.Lj242
	str	r1,[r2]
# [337] FramebufferProperties.VirtualWidth:=FramebufferProperties.PhysicalWidth;
	ldr	r1,[r0, #32]
# Rescheduled
	ldr	r2,.Lj242
	str	r1,[r0, #40]
# [338] FramebufferProperties.VirtualHeight:=FramebufferProperties.PhysicalHeight * 2;
	ldr	r0,[r2, #36]
	mov	r0,r0,lsl #1
# Rescheduled
# [339] FramebufferDeviceAllocate(fb,@FramebufferProperties);
	ldr	r1,.Lj242
	str	r0,[r2, #44]
# Rescheduled
	ldr	r0,.Lj237
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEALLOCATE$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [340] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# Rescheduled
# [341] FramebufferDeviceGetProperties(fb,@FramebufferProperties);
	ldr	r0,.Lj237
	ldr	r1,.Lj242
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETPROPERTIES$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [342] p2:=Pointer(FramebufferProperties.Address);
	ldr	r0,.Lj248
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj249
	str	r0,[r1]
# Rescheduled
# [343] fh2:=fileopen('C:\retro\st4font.def',$40);     // 8x16 font
	ldr	r0,.Lj250
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [344] fileread(fh2,PInteger($2050000)^,2048);
	ldr	r1,.Lj251
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#2048
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [345] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [346] fh2:=fileopen('C:\retro\mysz.def',$40);        // load mouse cursor definition at sprite 8
	ldr	r0,.Lj252
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Var i located in register r6
# [347] for i:=0 to 1023 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj255:
	add	r6,r6,#1
# [349] fileread(fh2,bb,1);
	mov	r1,r13
	mov	r0,r4
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [350] a:=bb;
	ldrb	r5,[r13]
# Peephole LdrMov2Ldr removed superfluous mov
# Peephole FoldShiftProcess done
	add	r1,r5,r5,lsl #8
	b	.Lj262
.Lj177:
	.long	U_$PLATFORM_$$_PAGETABLEGETENTRYHANDLER
.Lj182:
	.long	U_$PLATFORM_$$_PAGETABLESETENTRYHANDLER
.Lj200:
	.long	200703
.Lj204:
	.long	33947652
.Lj205:
	.long	.Ld1
.Lj206:
	.long	U_$RETROMALINA_$$_COMBINED
.Lj210:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj217:
	.long	TC_$RETROMALINA_$$_ATTACKTABLE
.Lj216:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj215:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63
.Lj214:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj218:
	.long	U_$RETROMALINA_$$_SIDDATA+192
.Lj222:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65
.Lj224:
	.long	U_$RETROMALINA_$$_SIDDATA+256
.Lj229:
	.long	U_$RETROMALINA_$$_SIDDATA+512
.Lj234:
	.long	U_$RETROMALINA_$$_SIDDATA+56
.Lj235:
	.long	U_$RETROMALINA_$$_SIDDATA+120
.Lj236:
	.long	U_$RETROMALINA_$$_SIDDATA+184
.Lj237:
	.long	U_$RETROMALINA_$$_FB
.Lj239:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+16
.Lj240:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+32
.Lj241:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+36
.Lj242:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
.Lj248:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+4
.Lj249:
	.long	U_$RETROMALINA_$$_P2
.Lj250:
	.long	.Ld2
.Lj251:
	.long	33882112
.Lj252:
	.long	.Ld3
.Lj262:
# Peephole FoldShiftProcess done
	add	r5,r1,r5,lsl #16
# Peephole DataMov2Data removed superfluous mov
# [352] lpoke($2059000+4*i,a);
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#364544
	mov	r1,r5
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r6,r0
	blt	.Lj255
# [354] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [355] thread:=tretro.create(true);                    // start frame refreshing thread
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj256
	mov	r1,#1
	bl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
# Rescheduled
	ldr	r2,.Lj257
# Rescheduled
# [356] thread.start;
	ldr	r1,.Lj257
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
# [357] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [358] thread3:=taudio.Create(true);                   // start audio thread
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj259
	mov	r1,#1
	bl	RETROMALINA$_$TAUDIO_$__$$_CREATE$BOOLEAN$$TAUDIO
# Rescheduled
	ldr	r2,.Lj260
# Rescheduled
# [359] thread3.start;
	ldr	r1,.Lj260
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
	add	r13,r13,#36
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj256:
	.long	VMT_$RETROMALINA_$$_TRETRO
.Lj257:
	.long	U_$RETROMALINA_$$_THREAD
.Lj259:
	.long	VMT_$RETROMALINA_$$_TAUDIO
.Lj260:
	.long	U_$RETROMALINA_$$_THREAD3
.Le4:
	.size	RETROMALINA_$$_INITMACHINE, .Le4 - RETROMALINA_$$_INITMACHINE

.section .text.n_retromalina_$$_stopmachine
	.balign 4
.globl	RETROMALINA_$$_STOPMACHINE
RETROMALINA_$$_STOPMACHINE:
# [371] begin
# Rescheduled
# [372] thread.terminate;
	ldr	r0,.Lj265
	stmfd	r13!,{r14}
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 4
.Lj266:
# [373] repeat until running=0;
	ldr	r0,.Lj269
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj266
# [374] thread3.terminate;
	ldr	r0,.Lj270
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_TERMINATE
# [375] end;
	ldmfd	r13!,{r15}
.Lj265:
	.long	U_$RETROMALINA_$$_THREAD
.Lj269:
	.long	TC_$RETROMALINA_$$_RUNNING
.Lj270:
	.long	U_$RETROMALINA_$$_THREAD3
.Le5:
	.size	RETROMALINA_$$_STOPMACHINE, .Le5 - RETROMALINA_$$_STOPMACHINE

.section .text.n_retromalina_$$_gettime$$int64
	.balign 4
.globl	RETROMALINA_$$_GETTIME$$INT64
RETROMALINA_$$_GETTIME$$INT64:
# Var $result located in register r1:r0
# [379] begin
# Rescheduled
# [380] result:=clockgettotal;
	ldr	r0,.Lj273
	stmfd	r13!,{r14}
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj275
	ldr	r0,.Lj273
	ldr	r0,[r0]
	blx	r0
	b	.Lj277
.Lj275:
	mov	r0,#0
	mov	r1,#0
.Lj277:
# Var $result located in register r1:r0
# [381] end;
	ldmfd	r13!,{r15}
.Lj273:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Le6:
	.size	RETROMALINA_$$_GETTIME$$INT64, .Le6 - RETROMALINA_$$_GETTIME$$INT64

.section .text.n_retromalina_$$_poke$longint$byte
	.balign 4
.globl	RETROMALINA_$$_POKE$LONGINT$BYTE
RETROMALINA_$$_POKE$LONGINT$BYTE:
# Var addr located in register r0
# Var b located in register r1
# [391] begin
# Var addr located in register r0
# Var b located in register r1
# [392] PByte(addr)^:=b;
	strb	r1,[r0]
# [393] end;
	bx	r14
.Le7:
	.size	RETROMALINA_$$_POKE$LONGINT$BYTE, .Le7 - RETROMALINA_$$_POKE$LONGINT$BYTE

.section .text.n_retromalina_$$_dpoke$longint$word
	.balign 4
.globl	RETROMALINA_$$_DPOKE$LONGINT$WORD
RETROMALINA_$$_DPOKE$LONGINT$WORD:
# Var addr located in register r0
# Var w located in register r1
# [397] begin
# [398] PWord(addr and $FFFFFFFE)^:=w;
	bic	r0,r0,#1
# Var w located in register r1
	strh	r1,[r0]
# [399] end;
	bx	r14
.Le8:
	.size	RETROMALINA_$$_DPOKE$LONGINT$WORD, .Le8 - RETROMALINA_$$_DPOKE$LONGINT$WORD

.section .text.n_retromalina_$$_lpoke$longint$longword
	.balign 4
.globl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
RETROMALINA_$$_LPOKE$LONGINT$LONGWORD:
# Var addr located in register r0
# Var c located in register r1
# [403] begin
# [404] PCardinal(addr and $FFFFFFFC)^:=c;
	bic	r0,r0,#3
# Var c located in register r1
	str	r1,[r0]
# [405] end;
	bx	r14
.Le9:
	.size	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD, .Le9 - RETROMALINA_$$_LPOKE$LONGINT$LONGWORD

.section .text.n_retromalina_$$_slpoke$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT
RETROMALINA_$$_SLPOKE$LONGINT$LONGINT:
# Var addr located in register r0
# Var i located in register r1
# [409] begin
# [410] PInteger(addr and $FFFFFFFC)^:=i;
	bic	r0,r0,#3
# Var i located in register r1
	str	r1,[r0]
# [411] end;
	bx	r14
.Le10:
	.size	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT, .Le10 - RETROMALINA_$$_SLPOKE$LONGINT$LONGINT

.section .text.n_retromalina_$$_peek$longint$$byte
	.balign 4
.globl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
RETROMALINA_$$_PEEK$LONGINT$$BYTE:
# Var addr located in register r0
# Var $result located in register r0
# [415] begin
# Var addr located in register r0
# Var $result located in register r0
# [416] peek:=Pbyte(addr)^;
	ldrb	r0,[r0]
# [417] end;
	bx	r14
.Le11:
	.size	RETROMALINA_$$_PEEK$LONGINT$$BYTE, .Le11 - RETROMALINA_$$_PEEK$LONGINT$$BYTE

.section .text.n_retromalina_$$_dpeek$longint$$word
	.balign 4
.globl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
RETROMALINA_$$_DPEEK$LONGINT$$WORD:
# Var addr located in register r0
# Var $result located in register r0
# [421] begin
# [422] dpeek:=PWord(addr and $FFFFFFFE)^;
	bic	r0,r0,#1
# Var $result located in register r0
	ldrh	r0,[r0]
# [423] end;
	bx	r14
.Le12:
	.size	RETROMALINA_$$_DPEEK$LONGINT$$WORD, .Le12 - RETROMALINA_$$_DPEEK$LONGINT$$WORD

.section .text.n_retromalina_$$_lpeek$longint$$longword
	.balign 4
.globl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD:
# Var addr located in register r0
# Var $result located in register r0
# [427] begin
# [428] lpeek:=PCardinal(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [429] end;
	bx	r14
.Le13:
	.size	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD, .Le13 - RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD

.section .text.n_retromalina_$$_slpeek$longint$$longint
	.balign 4
.globl	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT
RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT:
# Var addr located in register r0
# Var $result located in register r0
# [433] begin
# [434] slpeek:=PInteger(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [435] end;
	bx	r14
.Le14:
	.size	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT, .Le14 - RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT

.section .text.n_retromalina_$$_blit$crc5a667533
	.balign 4
.globl	RETROMALINA_$$_BLIT$crc5A667533
RETROMALINA_$$_BLIT$crc5A667533:
# Temps allocated between r11-52 and r11-44
# [445] begin
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
# [446] if lpeek($2060008)<16 then
	ldr	r0,.Lj296
	ldr	r4,[r11, #24]
	bic	r0,r0,#3
	ldr	r0,[r0]
	cmp	r0,#16
	bcs	.Lj298
# [448] from:=from+x;
	ldr	r2,[r11, #-52]
	add	r0,r1,r2
	str	r0,[r11, #-52]
# [449] too:=too+x2;
	add	r3,r7,r3
# Peephole DataMov2Data removed superfluous mov
# [450] for i:=0 to lines-1 do
	sub	r8,r6,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r0,#0
	cmp	r8,r0
	blt	.Lj300
	sub	r0,r0,#1
	.balign 4
.Lj301:
	add	r0,r0,#1
# [452] b2:=too+bpl2*(i+y2);
	add	r7,r12,r0
# MulAdd2MLA done
# Peephole DataMov2Data removed superfluous mov
# Rescheduled
# [453] b1:=from+bpl1*(i+y);
	ldr	r9,[r11, #-48]
	mla	r1,r4,r7,r3
	add	r7,r9,r0
# Rescheduled
	ldr	r9,[r11, #-52]
	mul	r7,r14,r7
	add	r2,r9,r7
# Peephole DataMov2Data removed superfluous mov
# [454] for j:=0 to length-1 do
	sub	r7,r5,#1
	mov	r6,#0
	cmp	r7,r6
	blt	.Lj303
	sub	r6,r6,#1
	.balign 4
.Lj304:
	add	r6,r6,#1
# [455] poke(b2+j,peek(b1+j));
	add	r9,r6,r2
	ldrb	r9,[r9]
	add	r10,r6,r1
	strb	r9,[r10]
	cmp	r7,r6
	bgt	.Lj304
.Lj303:
	cmp	r8,r0
	bgt	.Lj301
.Lj300:
.Lj298:
# [459] end;
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj296:
	.long	33947656
.Le15:
	.size	RETROMALINA_$$_BLIT$crc5A667533, .Le15 - RETROMALINA_$$_BLIT$crc5A667533

.section .text.n_retromalina_$$_scrconvert16f$pointer
	.balign 4
.globl	RETROMALINA_$$_SCRCONVERT16F$POINTER
RETROMALINA_$$_SCRCONVERT16F$POINTER:
# Temps allocated between r11-64 and r11-60
# [468] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#64
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var b located at r11-56, size=OS_S32
# Var e located at r11-60, size=OS_S32
	str	r0,[r11, #-48]
# [469] a:=lpeek($2060004); // TODO! a:=0! Get a screen pointer from sys var !
	ldr	r0,.Lj314
	str	r0,[r11, #-64]
# Peephole StrLdr2StrMov 1 done
	bic	r0,r0,#3
	ldr	r0,[r0]
# Rescheduled
# [470] e:=lpeek($206000c);
	ldr	r1,.Lj315
	str	r0,[r11, #-52]
	str	r1,[r11, #-64]
# Peephole StrLdr2StrMov 2 done
# Peephole RedundantMovProcess done
	bic	r0,r1,#3
	ldr	r0,[r0]
	str	r0,[r11, #-60]
# [471] b:=$2010000;
	mov	r0,#33554432
	orr	r0,r0,#65536
	str	r0,[r11, #-56]
# [473] stmfd r13!,{r0-r12}   //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [474] ldr r1,a
	ldr	r1,[r11, #-52]
# [476] mov r6,r1
	mov	r6,r1
# Rescheduled
# [478] ldr r2,screen
	ldr	r2,[r11, #-48]
# [477] add r6,#1
	add	r6,#1
# [479] mov r12,r2
	mov	r12,r2
# [480] add r12,#4
	add	r12,#4
# [481] ldr r3,b
	ldr	r3,[r11, #-56]
# [483] mov r5,r2
	mov	r5,r2
# Rescheduled
# [486] ldr r9,e
	ldr	r9,[r11, #-60]
# [485] add r5,#307200
	add	r5,#307200
# [487] mov r10,r9
	mov	r10,r9
.Lj307:
# [488] p10:            str r9,[r2],#8
	str	r9,[r2], #8
# [489] str r10,[r12],#8
	str	r10,[r12], #8
# [490] str r9,[r2],#8
	str	r9,[r2], #8
# [491] str r10,[r12],#8
	str	r10,[r12], #8
# [492] cmp r2,r5
	cmp	r2,r5
# [493] blt p10
	blt	.Lj307
# [494] mov r0,#1120
	mov	r0,#1120
.Lj308:
# Rescheduled
# [497] ldr r9,e
	ldr	r9,[r11, #-60]
# [496] p11:            add r5,#256
	add	r5,#256
# [498] mov r10,r9
	mov	r10,r9
.Lj309:
# [499] p0:             str r9,[r2],#8
	str	r9,[r2], #8
# [500] str r10,[r12],#8
	str	r10,[r12], #8
# [501] str r9,[r2],#8
	str	r9,[r2], #8
# [502] str r10,[r12],#8
	str	r10,[r12], #8
# [503] cmp r2,r5
	cmp	r2,r5
# [504] blt p0
	blt	.Lj309
# [506] add r5,#7168
	add	r5,#7168
.Lj310:
# [507] p1:             ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [508] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [509] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [510] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [511] str r9,[r2],#8
	str	r9,[r2], #8
# [512] str r10,[r12],#8
	str	r10,[r12], #8
# [513] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [514] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [515] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [516] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [517] str r9,[r2],#8
	str	r9,[r2], #8
# [518] str r10,[r12],#8
	str	r10,[r12], #8
# [519] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [520] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [521] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [522] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [523] str r9,[r2],#8
	str	r9,[r2], #8
# [524] str r10,[r12],#8
	str	r10,[r12], #8
# [525] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [526] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [527] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [528] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [529] str r9,[r2],#8
	str	r9,[r2], #8
# [530] str r10,[r12],#8
	str	r10,[r12], #8
# [531] cmp r2,r5
	cmp	r2,r5
# [532] blt p1
	blt	.Lj310
# Rescheduled
# [535] ldr r9,e
	ldr	r9,[r11, #-60]
# [534] add r5,#256
	add	r5,#256
# [536] mov r10,r9
	mov	r10,r9
.Lj311:
# [537] p002:           str r9,[r2],#8
	str	r9,[r2], #8
# [538] str r10,[r12],#8
	str	r10,[r12], #8
# [539] str r9,[r2],#8
	str	r9,[r2], #8
# [540] str r10,[r12],#8
	str	r10,[r12], #8
# [541] cmp r2,r5
	cmp	r2,r5
# [542] blt p002
	blt	.Lj311
# [543] subs r0,#1
	subs	r0,#1
# [544] bne p11
	bne	.Lj308
# Rescheduled
# [547] ldr r9,e
	ldr	r9,[r11, #-60]
# [546] add r5,#307200
	add	r5,#307200
# [548] mov r10,r9
	mov	r10,r9
.Lj312:
# [549] p12:            str r9,[r2],#8
	str	r9,[r2], #8
# [550] str r10,[r12],#8
	str	r10,[r12], #8
# [551] str r9,[r2],#8
	str	r9,[r2], #8
# [552] str r10,[r12],#8
	str	r10,[r12], #8
# [553] cmp r2,r5
	cmp	r2,r5
# [554] blt p12
	blt	.Lj312
# [555] p999:           ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [559] end;
	ldmea	r11,{r11,r13,r15}
.Lj314:
	.long	33947652
.Lj315:
	.long	33947660
.Le16:
	.size	RETROMALINA_$$_SCRCONVERT16F$POINTER, .Le16 - RETROMALINA_$$_SCRCONVERT16F$POINTER

.section .text.n_retromalina_$$_spritef$pointer
	.balign 4
RETROMALINA_$$_SPRITEF$POINTER:
# [572] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var spritebase located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [574] spritebase:=$2060040;
	ldr	r0,.Lj324
	str	r0,[r11, #-56]
# [577] stmfd r13!,{r0-r12}     //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [578] mov r12,#0
	mov	r12,#0
# [580] ldr r0,spritebase
	ldr	r0,[r11, #-56]
.Lj318:
# [583] p103:          ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [584] mov r2,r1               // sprite 0 position
	mov	r2,r1
# Rescheduled
# [586] ldr r5,p100
	ldr	r5,.Lj319
# [585] mov r3,r1
	mov	r3,r1
# [587] and r2,r5               // x pos
	and	r2,r5
# Rescheduled
# [589] ldr r4,p100+4
	ldr	r4,.Lj319+4
# [588] lsl r2,#2
	lsl	r2,#2
# [590] and r3,r4
	and	r3,r4
# [591] lsr r3,#16              // y pos
	lsr	r3,#16
# [592] cmp r2,#8192
	cmp	r2,#8192
# [593] ble p104
	ble	.Lj320
# [594] add r12,#1
	add	r12,#1
# [595] add r0,#4
	add	r0,#4
# [596] cmp r12,#8
	cmp	r12,#8
# [597] bge p999
	bge	.Lj321
# [598] b p103
	b	.Lj318
.Lj320:
# [600] p104:          ldr r4,p100+8
	ldr	r4,.Lj319+8
# [601] mul r3,r3,r4
	mul	r3,r3,r4
# Rescheduled
# [603] ldr r4,screen
	ldr	r4,[r11, #-48]
# [602] add r3,r2      // sprite pos
	add	r3,r2
# [604] add r3,r4      // pointer to upper left sprite pixel in r3
	add	r3,r4
# [605] ldr r4,p100+12
	ldr	r4,.Lj319+12
# Rescheduled
# [610] ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [606] add r4,r4,r12,lsl #12
	add	r4,r4,r12,lsl #12
# Rescheduled
# [612] ldr r5,p100
	ldr	r5,.Lj319
# [611] mov r2,r1
	mov	r2,r1
# [613] and r2,r5
	and	r2,r5
# [614] lsr r1,#16
	lsr	r1,#16
# [615] cmp r1,#8
	cmp	r1,#8
# [616] movgt r1,#8
	movgt	r1,#8
# [617] cmp r2,#8
	cmp	r2,#8
# [618] movgt r2,#8
	movgt	r2,#8
# [619] cmp r1,#1
	cmp	r1,#1
# [620] movle r1,#1
	movle	r1,#1
# [621] cmp r2,#1
	cmp	r2,#1
# [622] movle r2,#1
	movle	r2,#1
# [623] mov r7,r2
	mov	r7,r2
# [624] mov r8,#128
	mov	r8,#128
# [625] mul r8,r8,r2
	mul	r8,r8,r2
# [626] mov r9,#32
	mov	r9,#32
# [627] mul r9,r9,r1 //y zoom
	mul	r9,r9,r1
# [628] mov r10,r1
	mov	r10,r1
# [629] mov r6,#32
	mov	r6,#32
.Lj322:
# [630] p101:          ldr r5,[r4],#4
	ldr	r5,[r4], #4
.Lj323:
# [631] p102:          cmp r5,#0
	cmp	r5,#0
# [632] strne r5,[r3],#4
	strne	r5,[r3], #4
# [633] addeq r3,#4
	addeq	r3,#4
# [634] subs r7,#1
	subs	r7,#1
# [635] bne p102
	bne	.Lj323
# [636] mov r7,r2
	mov	r7,r2
# [637] subs r6,#1
	subs	r6,#1
# [638] bne p101
	bne	.Lj322
# [639] add r3,#7680
	add	r3,#7680
# [640] sub r3,r8
	sub	r3,r8
# [641] subs r10,#1
	subs	r10,#1
# [642] subne r4,#128
	subne	r4,#128
# [643] addeq r10,r1
	addeq	r10,r1
# [644] mov r6,#32
	mov	r6,#32
# [645] subs r9,#1
	subs	r9,#1
# [646] bne p101
	bne	.Lj322
# [647] add r12,#1
	add	r12,#1
# [648] cmp r12,#8
	cmp	r12,#8
# [649] bne p103
	bne	.Lj318
# [650] b p999
	b	.Lj321
.Lj319:
	.long	65535
	.long	-65536
	.long	7680
	.long	33890304
.Lj321:
# [657] p999:          ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [659] end;
	ldmea	r11,{r11,r13,r15}
.Lj324:
	.long	33947712
.Le17:
	.size	RETROMALINA_$$_SPRITEF$POINTER, .Le17 - RETROMALINA_$$_SPRITEF$POINTER

.section .text.n_retromalina_$$_setataripallette$longint
	.balign 4
.globl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
RETROMALINA_$$_SETATARIPALLETTE$LONGINT:
# [666] begin
	stmfd	r13!,{r4,r5,r14}
# Var bank located in register r4
# Var fh located in register r0
	mov	r4,r0
# Rescheduled
# [667] fh:=fileopen('C:\retro\ataripalette.def',$40);
	ldr	r0,.Lj327
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
# Var fh located in register r5
# Rescheduled
# Peephole FoldShiftProcess done
# Rescheduled
# [668] fileread(fh,Pinteger($2010000+1024*bank)^,1024);
	ldr	r1,.Lj328
	mov	r5,r0
# [670] end;
	add	r1,r1,r4,lsl #10
# Var fh located in register r5
	mov	r0,r5
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [669] fileclose(fh);
	mov	r0,r5
# Var fh located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	ldmfd	r13!,{r4,r5,r15}
.Lj327:
	.long	.Ld4
.Lj328:
	.long	33619968
.Le18:
	.size	RETROMALINA_$$_SETATARIPALLETTE$LONGINT, .Le18 - RETROMALINA_$$_SETATARIPALLETTE$LONGINT

.section .text.n_retromalina_$$_sethidecolor$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT:
# Var c located in register r0
# Var bank located in register r1
# Var mask located in register r2
# [674] begin
# [675] lpoke(($2010000+1024*bank+4*c),lpeek($2010000+1024*bank+4*c)+(mask shl 24));
	mov	r3,r1,lsl #10
	add	r3,r3,#33554432
	add	r3,r3,#65536
# Peephole FoldShiftProcess done
# [676] end;
	add	r3,r3,r0,lsl #2
	bic	r3,r3,#3
	ldr	r3,[r3]
# Peephole FoldShiftProcess done
	add	r2,r3,r2,lsl #24
	mov	r1,r1,lsl #10
	add	r1,r1,#33554432
	add	r1,r1,#65536
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #2
	bic	r0,r0,#3
	str	r2,[r0]
	bx	r14
.Le19:
	.size	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT, .Le19 - RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_cls$longint
	.balign 4
.globl	RETROMALINA_$$_CLS$LONGINT
RETROMALINA_$$_CLS$LONGINT:
# Var c located in register r0
# Var c2 located in register r0
# Var i located in register r12
# Var l located in register r2
# Var c3 located in register r0
# Var screenstart located in register r1
# [684] begin
# [685] screenstart:=lpeek($2060004);
	ldr	r1,.Lj333
	bic	r1,r1,#3
	ldr	r1,[r1]
# Var screenstart located in register r1
# Var c located in register r0
# [686] c:=c mod 256;
	mov	r2,r0,asr #31
	eor	r0,r0,r2
	sub	r0,r0,r2
	and	r0,r0,#255
	eor	r0,r2,r0
	sub	r0,r0,r2
# Var c located in register r0
# Rescheduled
# [687] l:=(lpeek($2060020)*lpeek($2060024)) div 4 ;
	ldr	r2,.Lj334
	bic	r2,r2,#3
# Rescheduled
	ldr	r3,.Lj335
	ldr	r12,[r2]
	bic	r2,r3,#3
	ldr	r2,[r2]
	mul	r2,r2,r12
	mov	r2,r2,lsr #2
# Var l located in register r2
# Peephole FoldShiftProcess done
# [691] end;
	add	r3,r0,r0,lsl #8
# Peephole FoldShiftProcess done
	add	r3,r3,r0,lsl #16
# Peephole FoldShiftProcess done
	add	r0,r3,r0,lsl #24
# Var c3 located in register r0
# Var l located in register r2
# Var i located in register r12
# [689] for i:=0 to l do lpoke(screenstart+4*i,c3);
	mov	r12,#0
	cmp	r2,r12
	blt	.Lj337
	sub	r12,r12,#1
	.balign 4
.Lj338:
	add	r12,r12,#1
# Peephole FoldShiftProcess done
	add	r3,r1,r12,lsl #2
	bic	r3,r3,#3
	str	r0,[r3]
	cmp	r2,r12
	bgt	.Lj338
.Lj337:
	bx	r14
.Lj333:
	.long	33947652
.Lj334:
	.long	33947680
.Lj335:
	.long	33947684
.Le20:
	.size	RETROMALINA_$$_CLS$LONGINT, .Le20 - RETROMALINA_$$_CLS$LONGINT

.section .text.n_retromalina_$$_putpixel$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT:
# [703] begin
	stmfd	r13!,{r4,r14}
# Var x located in register r0
# Var y located in register r1
# Var color located in register r2
# Var adr located in register r0
# [704] adr:=lpeek($2060004)+x+1792*y; if adr<lpeek($2060004)+$FFFFFF then poke(adr,color);
	mov	r3,#1792
	mul	r1,r1,r3
# Rescheduled
	ldr	r3,.Lj341
	add	r1,r0,r1
	bic	r0,r3,#3
	ldr	r0,[r0]
	add	r0,r0,r1
# Var adr located in register r0
	mov	r1,r0
# Rescheduled
	ldr	r12,.Lj341
	mov	r3,r1,asr #31
	bic	r12,r12,#3
	ldr	r12,[r12]
	mvn	r4,#-16777216
	add	r12,r12,r4
	mov	r4,#0
	cmp	r3,r4
	blt	.Lj343
	bgt	.Lj344
	cmp	r1,r12
	bcs	.Lj344
.Lj343:
# Peephole AndStrb2Strb done
	strb	r2,[r0]
.Lj344:
# [705] end;
	ldmfd	r13!,{r4,r15}
.Lj341:
	.long	33947652
.Le21:
	.size	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT, .Le21 - RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-84 and r11-80
# [721] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#84
# Var x located at r11-48, size=OS_S32
# Var y located at r11-52, size=OS_S32
# Var l located at r11-56, size=OS_S32
# Var h located at r11-60, size=OS_S32
# Var c located at r11-64, size=OS_S32
# Var adr located at r11-68, size=OS_S32
# Var i located at r11-72, size=OS_S32
# Var j located at r11-76, size=OS_S32
# Var screenptr located at r11-80, size=OS_S32
	str	r0,[r11, #-48]
	str	r1,[r11, #-52]
	str	r2,[r11, #-56]
# Rescheduled
	ldr	r0,[r11, #4]
	str	r3,[r11, #-60]
	str	r0,[r11, #-64]
# [723] screenptr:=lpeek($2060004);
	ldr	r0,.Lj348
	str	r0,[r11, #-84]
# Peephole StrLdr2StrMov 1 done
	bic	r0,r0,#3
	ldr	r1,[r0]
# Rescheduled
# [724] if x<0 then x:=0;
	ldr	r0,[r11, #-48]
	str	r1,[r11, #-80]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-48]
# [725] if x>1792 then x:=1792;
	ldr	r0,[r11, #-48]
	cmp	r0,#1792
	movgt	r0,#1792
	strgt	r0,[r11, #-48]
# [726] if y<0 then y:=0;
	ldr	r0,[r11, #-52]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-52]
# [727] if y>1120 then y:=1120;
	ldr	r0,[r11, #-52]
	cmp	r0,#1120
	movgt	r0,#1120
	strgt	r0,[r11, #-52]
# Rescheduled
# Rescheduled
# [728] if x+l>1792 then l:=1792-x-1;
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-56]
	add	r0,r1,r0
	cmp	r0,#1792
	ble	.Lj358
	ldr	r0,[r11, #-48]
	mov	r1,#1792
	sub	r0,r1,r0
	sub	r0,r0,#1
	str	r0,[r11, #-56]
.Lj358:
# Rescheduled
# Rescheduled
# [729] if y+h>1120 then h:=1120-y-1 ;
	ldr	r1,[r11, #-52]
	ldr	r0,[r11, #-60]
	add	r0,r0,r1
	cmp	r0,#1120
	ble	.Lj360
	ldr	r1,[r11, #-52]
	mov	r0,#1120
	sub	r0,r0,r1
	sub	r0,r0,#1
	str	r0,[r11, #-60]
.Lj360:
# Rescheduled
# Rescheduled
# [730] for j:=y to y+h-1 do begin
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	sub	r4,r0,#1
# Rescheduled
	ldr	r0,[r11, #-52]
	str	r0,[r11, #-76]
# Peephole StrLdr2StrMov 1 done
	cmp	r4,r0
	blt	.Lj362
	ldr	r0,[r11, #-76]
	sub	r0,r0,#1
	str	r0,[r11, #-76]
	.balign 4
.Lj363:
	ldr	r0,[r11, #-76]
	add	r0,r0,#1
	str	r0,[r11, #-76]
# [737] stmfd r13!,{r0-r2}     //Push registers
	stmfd	r13!,{r0,r1,r2}
# Rescheduled
# [739] ldr r1,j
	ldr	r1,[r11, #-76]
# [738] mov r0,#1792
	mov	r0,#1792
# [740] mul r0,r0,r1
	mul	r0,r0,r1
# [741] ldr r1,screenptr
	ldr	r1,[r11, #-80]
# [742] add r0,r1       //Todo - screen pointer!
	add	r0,r1
# Rescheduled
# [744] ldr r2,x
	ldr	r2,[r11, #-48]
# [743] ldr r1,c
	ldr	r1,[r11, #-64]
# [745] add r0,r2
	add	r0,r2
# [746] ldr r2,l
	ldr	r2,[r11, #-56]
.Lj347:
# [747] p1: strb r1,[r0]
	strb	r1,[r0]
# [748] add r0,#1
	add	r0,#1
# [749] subs r2,#1
	subs	r2,#1
# [750] bne p1
	bne	.Lj347
# [751] ldmfd r13!,{r0-r2}
	ldmfd	r13!,{r0,r1,r2}
	ldr	r0,[r11, #-76]
	cmp	r4,r0
	bgt	.Lj363
.Lj362:
# [756] end;
	ldmea	r11,{r4,r11,r13,r15}
.Lj348:
	.long	33947652
.Le22:
	.size	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le22 - RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box2$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [768] begin
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
# [769] if (x1<x2) and (y1<y2) then
	cmp	r0,r2
	bge	.Lj367
	cmp	r1,r3
	bge	.Lj367
# [770] box(x1,y1,x2-x1+1, y2-y1+1,color);
	str	r12,[r13]
	sub	r3,r3,r1
	add	r3,r3,#1
	sub	r2,r2,r0
	add	r2,r2,#1
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj367:
# [771] end;
	ldmea	r11,{r11,r13,r15}
.Le23:
	.size	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le23 - RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_putchar$longint$longint$char$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
# [788] begin
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
# [789] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r7,r0,#33554432
	add	r7,r7,#327680
# Var start located in register r7
# Var i located in register r10
# [790] for i:=0 to 15 do
	mov	r10,#0
	sub	r10,r10,#1
	.balign 4
.Lj373:
	add	r10,r10,#1
# [792] b:=peek(start+i);
	add	r0,r10,r7
	ldrb	r8,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [793] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj376:
	add	r9,r9,#1
# [795] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [799] end;
	ands	r0,r8,r0,lsl r9
# [796] putpixel(x+j,y+i,col);
	addne	r1,r10,r5
	addne	r0,r9,r4
	movne	r2,r6
	blne	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	cmp	r9,#7
	blt	.Lj376
	cmp	r10,#15
	blt	.Lj373
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r15}
.Le24:
	.size	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT, .Le24 - RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT

.section .text.n_retromalina_$$_putcharz$longint$longint$char$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-68 and r11-44
# [808] begin
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
# [809] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r0,r0,#33554432
	add	r10,r0,#327680
# Var start located in register r10
# Peephole DataMov2Data removed superfluous mov
# Var i located in register r0
# [810] for i:=0 to 15 do
	mov	r0,#0
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-48]
	.balign 4
.Lj383:
	ldr	r0,[r11, #-48]
	add	r0,r0,#1
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 2 done
# [812] b:=peek(start+i);
	mov	r1,r0
	add	r0,r1,r10
	ldrb	r8,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [813] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj386:
	add	r9,r9,#1
# [815] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [821] end;
	ands	r0,r8,r0,lsl r9
	beq	.Lj388
# [816] for k:=0 to yz-1 do
	ldr	r0,[r11, #-68]
	sub	r6,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r6,r7
	blt	.Lj390
	sub	r7,r7,#1
	.balign 4
.Lj391:
# Rescheduled
# [817] for l:=0 to xz-1 do
	ldr	r0,[r11, #-64]
	add	r7,r7,#1
	sub	r5,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r4,#0
	cmp	r5,r4
	blt	.Lj393
	sub	r4,r4,#1
	.balign 4
.Lj394:
	add	r4,r4,#1
# Rescheduled
# [818] putpixel(x+j*xz+l,y+i*yz+k,col);
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
	bgt	.Lj394
.Lj393:
	cmp	r6,r7
	bgt	.Lj391
.Lj390:
.Lj388:
	cmp	r9,#7
	blt	.Lj386
	ldr	r0,[r11, #-48]
	cmp	r0,#15
	blt	.Lj383
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le25:
	.size	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT, .Le25 - RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_outtextxy$longint$longint$ansistring$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
# Temps allocated between r13+4 and r13+124
# [827] begin
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
# [828] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	add	r2,r13,#4
	add	r1,r13,#16
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #120]
	cmp	r0,#0
	bne	.Lj397
	ldr	r7,[r13]
	cmp	r7,#0
	ldrne	r7,[r7, #-4]
	mov	r8,#1
	cmp	r7,r8
	blt	.Lj401
	sub	r8,r8,#1
	.balign 4
.Lj402:
	add	r8,r8,#1
# Peephole FoldShiftProcess done
# [829] end;
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
	bgt	.Lj402
.Lj401:
.Lj397:
	bl	fpc_popaddrstack
	mov	r0,r13
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r13, #120]
	cmp	r0,#0
	blne	fpc_reraise
	add	r13,r13,#124
	ldmfd	r13!,{r4,r5,r6,r7,r8,r15}
.Le26:
	.size	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT, .Le26 - RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT

.section .text.n_retromalina_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-168 and r11-48
# [835] begin
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
# [836] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	sub	r2,r11,#60
	sub	r1,r11,#164
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-168]
	cmp	r0,#0
	bne	.Lj405
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r8,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r8,r7
	blt	.Lj409
	sub	r7,r7,#1
	.balign 4
.Lj410:
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
	bgt	.Lj410
.Lj409:
.Lj405:
	bl	fpc_popaddrstack
# [837] end;
	sub	r0,r11,#48
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-168]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le27:
	.size	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT, .Le27 - RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_scrollup
	.balign 4
.globl	RETROMALINA_$$_SCROLLUP
RETROMALINA_$$_SCROLLUP:
# Var i located in register r0
# [843] begin
# [845] end;
	bx	r14
.Le28:
	.size	RETROMALINA_$$_SCROLLUP, .Le28 - RETROMALINA_$$_SCROLLUP

.section .text.n_retromalina_$$_sid$longint$$tsample
	.balign 4
.globl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
RETROMALINA_$$_SID$LONGINT$$TSAMPLE:
# Temps allocated between r11-172 and r11-168
# [923] begin
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
# [924] sidptr:=@siddata;
	ldr	r0,.Lj463
	str	r1,[r11, #-48]
	str	r0,[r11, #-168]
# [925] if mode=1 then  // get regs
	cmp	r1,#1
	bne	.Lj465
# [928] siddata[$56]:=peek($2070003);
	ldr	r0,.Lj466
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
	ldr	r2,.Lj467
	ldrb	r1,[r0]
# Rescheduled
# [929] siddata[$57]:=peek($2070004);
	ldr	r0,.Lj468
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
	ldr	r2,.Lj469
	ldrb	r1,[r0]
# Rescheduled
# [930] siddata[$58]:=peek($2070005);
	ldr	r0,.Lj470
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
# Rescheduled
# Rescheduled
	ldrb	r0,[r0]
	ldr	r1,.Lj471
	str	r0,[r1]
# [931] siddata[0]:=round(1.0263*(16*peek($200D400)+4096*peek($200d401))); //freq1
	mov	r0,#33554432
	orr	r0,r0,#54272
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj472
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
# [1894] end;
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj473
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj463
# Rescheduled
# [932] siddata[$10]:=round(1.0263*(16*peek($200d407)+4096*peek($200d408)));
	ldr	r1,.Lj475
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj476
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj477
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj478
# Rescheduled
# [933] siddata[$20]:=round(1.0263*(16*peek($200d40e)+4096*peek($200d40f)));
	ldr	r1,.Lj479
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj480
	mov	r2,r0,lsl #4
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Peephole FoldShiftProcess done
	add	r0,r2,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj481
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj482
# Rescheduled
# [934] siddata[1]:=peek($200d404) and 1;  // gate1
	ldr	r1,.Lj483
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj484
	and	r0,r0,#1
# Rescheduled
# [935] siddata[2]:=peek($200d404) and 4;  // ring1
	ldr	r1,.Lj483
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj486
	and	r0,r0,#4
# Rescheduled
# [936] siddata[3]:=peek($200d404) and 8;  // test1
	ldr	r1,.Lj483
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj488
	and	r0,r0,#8
# Rescheduled
# [937] siddata[4]:=((peek($200d404) and 2) shr 1)-1; //sync1
	ldr	r1,.Lj483
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj490
	sub	r0,r0,#1
# Rescheduled
# [939] siddata[5]:=peek($200d405) and $F;   //sd1,
	ldr	r1,.Lj491
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj492
	and	r0,r0,#15
# Rescheduled
# [940] siddata[6]:=peek($200d405) shr 4;    //sa1,
	ldr	r1,.Lj491
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj494
	mov	r0,r0,lsr #4
# Rescheduled
# [941] siddata[7]:=peek($200d406) and $F;    //sr1
	ldr	r1,.Lj495
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj496
	and	r1,r0,#15
# Rescheduled
# [942] siddata[$0d]:=(peek($200d406) and $F0) shl 22;      //0d,sussvol1
	ldr	r0,.Lj495
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj498
	mov	r0,r0,lsl #22
# Rescheduled
# [943] siddata[$53]:=((peek($200d402)+256*peek($200d403)) and $FFF);
	ldr	r1,.Lj499
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj500
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r0,r0,lsl #20
# Rescheduled
	ldr	r2,.Lj501
	mov	r0,r0,lsr #20
# Rescheduled
# [945] siddata[$11]:=peek($200d40b) and 1;
	ldr	r1,.Lj502
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj503
	and	r0,r0,#1
# Rescheduled
# [946] siddata[$12]:=peek($200d40b) and 4;
	ldr	r1,.Lj502
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj505
	and	r0,r0,#4
# Rescheduled
# [947] siddata[$13]:=peek($200d40b) and 8;
	ldr	r1,.Lj502
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj507
	and	r0,r0,#8
# Rescheduled
# [948] siddata[$14]:=((peek($200d40b) and 2) shr 1)-1;
	ldr	r1,.Lj502
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj509
	sub	r0,r0,#1
# Rescheduled
# [949] siddata[$15]:=peek($200d40c) and  $F;
	ldr	r1,.Lj510
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj511
	and	r0,r0,#15
# Rescheduled
# [950] siddata[$16]:=peek($200d40c) shr 4;
	ldr	r1,.Lj510
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj513
	mov	r0,r0,lsr #4
# Rescheduled
# [951] siddata[$17]:=peek($200d40d)and $F;
	ldr	r1,.Lj514
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj515
	and	r0,r0,#15
# Rescheduled
# [952] siddata[$1d]:=(peek($200d40d) and $F0) shl 22;
	ldr	r1,.Lj514
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj517
	mov	r0,r0,lsl #22
# Rescheduled
# [953] siddata[$54]:=((peek($200d409)+256*peek($200d40a)) and $FFF);
	ldr	r1,.Lj518
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj519
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r2,r0,lsl #20
# Rescheduled
	ldr	r1,.Lj520
	mov	r2,r2,lsr #20
# Rescheduled
# [955] siddata[$21]:=peek($200d412) and 1;
	ldr	r0,.Lj521
	str	r2,[r1]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj522
	and	r1,r0,#1
# Rescheduled
# [956] siddata[$22]:=peek($200d412) and 4;
	ldr	r0,.Lj521
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj524
	and	r1,r0,#4
# Rescheduled
# [957] siddata[$23]:=peek($200d412) and 8;
	ldr	r0,.Lj521
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj526
	and	r0,r0,#8
# Rescheduled
# [958] siddata[$24]:=((peek($200d412) and 2) shr 1)-1;
	ldr	r1,.Lj521
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj528
	sub	r0,r0,#1
# Rescheduled
# [959] siddata[$25]:=peek($200d413) and  $F;
	ldr	r1,.Lj529
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj530
	and	r0,r0,#15
# Rescheduled
# [960] siddata[$26]:=peek($200d413) shr 4;
	ldr	r1,.Lj529
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj532
	mov	r1,r0,lsr #4
# Rescheduled
# [961] siddata[$27]:=peek($200d414)and $F;
	ldr	r0,.Lj533
	str	r1,[r2]
	str	r0,[r11, #-172]
# Peephole StrLdr2StrMov 1 done
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj534
	and	r0,r0,#15
# Rescheduled
# [962] siddata[$2d]:=(peek($200d414) and $F0) shl 22;
	ldr	r1,.Lj533
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r2,.Lj536
	mov	r0,r0,lsl #22
# Rescheduled
# [963] siddata[$55]:=((peek($200d410)+256*peek($200d411)) and $FFF);
	ldr	r1,.Lj537
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj538
	mov	r2,r0,lsl #8
	str	r1,[r11, #-172]
	b	.Lj587
.Lj463:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj466:
	.long	34013187
.Lj467:
	.long	U_$RETROMALINA_$$_SIDDATA+344
.Lj468:
	.long	34013188
.Lj469:
	.long	U_$RETROMALINA_$$_SIDDATA+348
.Lj470:
	.long	34013189
.Lj471:
	.long	U_$RETROMALINA_$$_SIDDATA+352
.Lj472:
	.long	33608705
.Lj473:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj475:
	.long	33608711
.Lj476:
	.long	33608712
.Lj477:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj478:
	.long	U_$RETROMALINA_$$_SIDDATA+64
.Lj479:
	.long	33608718
.Lj480:
	.long	33608719
.Lj481:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj482:
	.long	U_$RETROMALINA_$$_SIDDATA+128
.Lj483:
	.long	33608708
.Lj484:
	.long	U_$RETROMALINA_$$_SIDDATA+4
.Lj486:
	.long	U_$RETROMALINA_$$_SIDDATA+8
.Lj488:
	.long	U_$RETROMALINA_$$_SIDDATA+12
.Lj490:
	.long	U_$RETROMALINA_$$_SIDDATA+16
.Lj491:
	.long	33608709
.Lj492:
	.long	U_$RETROMALINA_$$_SIDDATA+20
.Lj494:
	.long	U_$RETROMALINA_$$_SIDDATA+24
.Lj495:
	.long	33608710
.Lj496:
	.long	U_$RETROMALINA_$$_SIDDATA+28
.Lj498:
	.long	U_$RETROMALINA_$$_SIDDATA+52
.Lj499:
	.long	33608707
.Lj500:
	.long	33608706
.Lj501:
	.long	U_$RETROMALINA_$$_SIDDATA+332
.Lj502:
	.long	33608715
.Lj503:
	.long	U_$RETROMALINA_$$_SIDDATA+68
.Lj505:
	.long	U_$RETROMALINA_$$_SIDDATA+72
.Lj507:
	.long	U_$RETROMALINA_$$_SIDDATA+76
.Lj509:
	.long	U_$RETROMALINA_$$_SIDDATA+80
.Lj510:
	.long	33608716
.Lj511:
	.long	U_$RETROMALINA_$$_SIDDATA+84
.Lj513:
	.long	U_$RETROMALINA_$$_SIDDATA+88
.Lj514:
	.long	33608717
.Lj515:
	.long	U_$RETROMALINA_$$_SIDDATA+92
.Lj517:
	.long	U_$RETROMALINA_$$_SIDDATA+116
.Lj518:
	.long	33608714
.Lj519:
	.long	33608713
.Lj520:
	.long	U_$RETROMALINA_$$_SIDDATA+336
.Lj521:
	.long	33608722
.Lj522:
	.long	U_$RETROMALINA_$$_SIDDATA+132
.Lj524:
	.long	U_$RETROMALINA_$$_SIDDATA+136
.Lj526:
	.long	U_$RETROMALINA_$$_SIDDATA+140
.Lj528:
	.long	U_$RETROMALINA_$$_SIDDATA+144
.Lj529:
	.long	33608723
.Lj530:
	.long	U_$RETROMALINA_$$_SIDDATA+148
.Lj532:
	.long	U_$RETROMALINA_$$_SIDDATA+152
.Lj533:
	.long	33608724
.Lj534:
	.long	U_$RETROMALINA_$$_SIDDATA+156
.Lj536:
	.long	U_$RETROMALINA_$$_SIDDATA+180
.Lj537:
	.long	33608721
.Lj538:
	.long	33608720
.Lj587:
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	add	r0,r0,r2
	mov	r1,r0,lsl #20
# Rescheduled
	ldr	r0,.Lj539
	mov	r1,r1,lsr #20
# Rescheduled
# [968] ff:=(peek($200d416) shl 3)+(peek($200d415) and 7);
	ldr	r2,.Lj540
	str	r1,[r0]
	str	r2,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r2]
# Rescheduled
	ldr	r1,.Lj541
	and	r3,r0,#7
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r2,.Lj542
	add	r1,r3,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj542
	str	r1,[r2]
	ldr	r0,[r0]
# [969] siddata[$6E]:=(ff shl 1)+(ff shl 2)+32;
	mov	r1,r0,lsl #1
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #2
# Rescheduled
	ldr	r2,.Lj544
	add	r0,r0,#32
# Rescheduled
# [971] siddata[$59]:=(peek($200d417) and 1); //filter 1
	ldr	r1,.Lj545
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj546
	and	r0,r0,#1
# Rescheduled
# [972] siddata[$5a]:=(peek($200d417) and 2);
	ldr	r1,.Lj545
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj548
	and	r0,r0,#2
# Rescheduled
# [973] siddata[$5B]:=(peek($200d417) and 4);
	ldr	r1,.Lj545
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj550
	and	r0,r0,#4
# Rescheduled
# [974] siddata[$6D]:=(peek($200d418) and $70) shr 4;   // filter output switch
	ldr	r1,.Lj551
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	and	r0,r0,#112
# Rescheduled
	ldr	r2,.Lj552
	mov	r0,r0,lsr #4
# Rescheduled
# [978] siddata[$6F]:=round(65536.0*(0.5+(0.5/(1+(peek($200d416) shr 4)))));
	ldr	r1,.Lj541
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
	mov	r0,r0,lsr #4
	add	r0,r0,#1
	vmov	s0,r0
	vcvt.f32.u32	s0,s0
	vldr	s2,.Lj556
	vdiv.f32	s0,s2,s0
	vldr	s2,.Lj554
	vadd.f32	s0,s2,s0
	vldr	s2,.Lj553
	vmul.f32	s0,s2,s0
	vcvt.f64.f32	d0,s0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r2,.Lj557
# Rescheduled
# [980] siddata[$70]:=(peek($200d418) and 15); //volume
	ldr	r1,.Lj551
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj559
	and	r0,r0,#15
# Rescheduled
# [982] siddata[$50]:=peek($200d404) shr 4;
	ldr	r1,.Lj560
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj561
	mov	r0,r0,lsr #4
# Rescheduled
# [983] siddata[$51]:=peek($200d40b) shr 4;
	ldr	r1,.Lj562
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r2,.Lj563
	mov	r0,r0,lsr #4
# Rescheduled
# [984] siddata[$52]:=peek($200d412) shr 4;     //waveforms
	ldr	r1,.Lj564
	str	r0,[r2]
	str	r1,[r11, #-172]
# Peephole StrLdr2StrMov 2 done
# Peephole MovLdr2Ldr done
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj565
	mov	r0,r0,lsr #4
	str	r0,[r1]
.Lj465:
# [991] stmfd r13!,{r0-r12}
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [993] ldr   r7, sidptr
	ldr	r7,[r11, #-168]
# [994] mov   r0,#0
	mov	r0,#0
# [995] str   r0,[r7,#0x1a8] //inner loop counter
	str	r0,[r7, #424]
# [996] str   r0,[r7,#0x1ac] //output
	str	r0,[r7, #428]
# Rescheduled
# [999] ldr   r6,[r7,#4]
	ldr	r6,[r7, #4]
# [997] str   r0,[r7,#0x1b0] //output
	str	r0,[r7, #432]
# [1000] cmp   r6,#0
	cmp	r6,#0
# [1001] beq   p101
	beq	.Lj415
# [1002] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1003] mov   r1,r0
	mov	r1,r0
# [1004] cmp   r1,#0
	cmp	r1,#0
# [1005] moveq r0,#1
	moveq	r0,#1
# [1006] cmp   r1,#4
	cmp	r1,#4
# [1007] moveq r0,#1
	moveq	r0,#1
# [1008] b     p102
	b	.Lj416
.Lj415:
# [1010] p101:          mov   r0,#4
	mov	r0,#4
.Lj416:
# [1011] p102:          str   r0,[r7,#0x2C]
	str	r0,[r7, #44]
# [1013] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1014] cmp   r0,#3
	cmp	r0,#3
# [1015] ldreq   r1,[r7,#0x34]
	ldreq	r1,[r7, #52]
# [1016] streq   r1,[r7,#0x30]
	streq	r1,[r7, #48]
# [1017] beq     p103
	beq	.Lj417
# [1019] p107:          cmp   r0,#1
	cmp	r0,#1
# [1020] bne   p104
	bne	.Lj419
# Rescheduled
# [1022] ldr   r2,[r7,#0x18] //sa1
	ldr	r2,[r7, #24]
# [1021] ldr   r1,[r7,#0x30] //adsrvol1
	ldr	r1,[r7, #48]
# [1023] add   r2,#0x40
	add	r2,#64
# [1024] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1025] add   r1,r6
	add	r1,r6
# [1026] str   r1,[r7,#0x30]
	str	r1,[r7, #48]
# [1027] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1028] blt   p103
	blt	.Lj417
# [1029] mov   r0,#2
	mov	r0,#2
# [1030] str   r0,[r7,#0x2c]
	str	r0,[r7, #44]
# [1031] b     p103
	b	.Lj417
.Lj419:
# [1033] p104:          cmp   r0,#2
	cmp	r0,#2
# [1034] bne   p105
	bne	.Lj420
# Rescheduled
# [1036] ldr   r2,[r7,#0x14] //sd1
	ldr	r2,[r7, #20]
# [1035] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1037] add   r2,#0x30
	add	r2,#48
# [1038] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1039] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1040] lsr   r4,#30
	lsr	r4,#30
# [1041] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1043] ldr   r1,[r7,#0x34]
	ldr	r1,[r7, #52]
# [1042] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1044] cmp   r4,r1
	cmp	r4,r1
# [1045] movlt r0,#3
	movlt	r0,#3
# [1046] strlt r0,[r7,#0x2c]
	strlt	r0,[r7, #44]
# [1047] b     p103
	b	.Lj417
.Lj420:
# [1049] p105:          cmp   r0,#4
	cmp	r0,#4
# [1050] bne   p106
	bne	.Lj421
# Rescheduled
# [1052] ldr   r2,[r7,#0x1c] //sr1
	ldr	r2,[r7, #28]
# [1051] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1053] add   r2,#0x30
	add	r2,#48
# [1054] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1055] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1056] lsr   r4,#30
	lsr	r4,#30
# [1057] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1058] cmp   r4,#0x10000
	cmp	r4,#65536
# [1059] movlt r4,#0
	movlt	r4,#0
# [1060] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1061] strlt r4,[r7,#0x2c]
	strlt	r4,[r7, #44]
# [1062] b     p103
	b	.Lj417
.Lj421:
# [1064] p106:          mov   r0,#0
	mov	r0,#0
# [1065] str   r0,[r7,#0x30]
	str	r0,[r7, #48]
.Lj417:
# [1069] p103:          ldr   r6,[r7,#0x44]
	ldr	r6,[r7, #68]
# [1070] cmp   r6,#0
	cmp	r6,#0
# [1071] beq   p111
	beq	.Lj422
# [1072] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1073] mov   r1,r0
	mov	r1,r0
# [1074] cmp   r1,#0
	cmp	r1,#0
# [1075] moveq r0,#1
	moveq	r0,#1
# [1076] cmp   r1,#4
	cmp	r1,#4
# [1077] moveq r0,#1
	moveq	r0,#1
# [1078] b     p112
	b	.Lj423
.Lj422:
# [1080] p111:          mov   r0,#4
	mov	r0,#4
.Lj423:
# [1081] p112:          str   r0,[r7,#0x6C]
	str	r0,[r7, #108]
# [1083] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1084] cmp   r0,#3
	cmp	r0,#3
# [1085] ldreq   r1,[r7,#0x74]
	ldreq	r1,[r7, #116]
# [1086] streq   r1,[r7,#0x70]
	streq	r1,[r7, #112]
# [1087] beq     p113
	beq	.Lj424
# [1089] p117:          cmp   r0,#1
	cmp	r0,#1
# [1090] bne   p114
	bne	.Lj426
# Rescheduled
# [1092] ldr   r2,[r7,#0x58] //sa1
	ldr	r2,[r7, #88]
# [1091] ldr   r1,[r7,#0x70] //adsrvol1
	ldr	r1,[r7, #112]
# [1093] add   r2,#0x40
	add	r2,#64
# [1094] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1095] add   r1,r6
	add	r1,r6
# [1096] str   r1,[r7,#0x70]
	str	r1,[r7, #112]
# [1097] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1098] blt   p113
	blt	.Lj424
# [1099] mov   r0,#2
	mov	r0,#2
# [1100] str   r0,[r7,#0x6c]
	str	r0,[r7, #108]
# [1101] b     p113
	b	.Lj424
.Lj426:
# [1103] p114:          cmp   r0,#2
	cmp	r0,#2
# [1104] bne   p115
	bne	.Lj427
# Rescheduled
# [1106] ldr   r2,[r7,#0x54] //sd1
	ldr	r2,[r7, #84]
# [1105] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1107] add   r2,#0x30
	add	r2,#48
# [1108] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1109] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1110] lsr   r4,#30
	lsr	r4,#30
# [1111] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1113] ldr   r1,[r7,#0x74]
	ldr	r1,[r7, #116]
# [1112] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1114] cmp   r4,r1
	cmp	r4,r1
# [1115] movlt r0,#3
	movlt	r0,#3
# [1116] strlt r0,[r7,#0x6c]
	strlt	r0,[r7, #108]
# [1117] b     p113
	b	.Lj424
.Lj427:
# [1119] p115:          cmp   r0,#4
	cmp	r0,#4
# [1120] bne   p116
	bne	.Lj428
# Rescheduled
# [1122] ldr   r2,[r7,#0x5c] //sr1
	ldr	r2,[r7, #92]
# [1121] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1123] add   r2,#0x30
	add	r2,#48
# [1124] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1125] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1126] lsr   r4,#30
	lsr	r4,#30
# [1127] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1128] cmp   r4,#0x10000
	cmp	r4,#65536
# [1129] movlt r4,#0
	movlt	r4,#0
# [1130] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1131] strlt r4,[r7,#0x6c]
	strlt	r4,[r7, #108]
# [1132] b     p113
	b	.Lj424
.Lj428:
# [1134] p116:          mov   r0,#0
	mov	r0,#0
# [1135] str   r0,[r7,#0x70]
	str	r0,[r7, #112]
.Lj424:
# [1139] p113:          ldr   r6,[r7,#0x84]
	ldr	r6,[r7, #132]
# [1140] cmp   r6,#0
	cmp	r6,#0
# [1141] beq   p121
	beq	.Lj429
# [1142] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1143] mov   r1,r0
	mov	r1,r0
# [1144] cmp   r1,#0
	cmp	r1,#0
# [1145] moveq r0,#1
	moveq	r0,#1
# [1146] cmp   r1,#4
	cmp	r1,#4
# [1147] moveq r0,#1
	moveq	r0,#1
# [1148] b     p122
	b	.Lj430
.Lj429:
# [1150] p121:          mov   r0,#4
	mov	r0,#4
.Lj430:
# [1151] p122:          str   r0,[r7,#0xaC]
	str	r0,[r7, #172]
# [1153] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1154] cmp   r0,#3
	cmp	r0,#3
# [1155] ldreq   r1,[r7,#0xb4]
	ldreq	r1,[r7, #180]
# [1156] streq   r1,[r7,#0xb0]
	streq	r1,[r7, #176]
# [1157] beq     p123
	beq	.Lj431
# [1159] p127:          cmp   r0,#1
	cmp	r0,#1
# [1160] bne   p124
	bne	.Lj433
# Rescheduled
# [1162] ldr   r2,[r7,#0x98] //sa1
	ldr	r2,[r7, #152]
# [1161] ldr   r1,[r7,#0xb0] //adsrvol1
	ldr	r1,[r7, #176]
# [1163] add   r2,#0x40
	add	r2,#64
# [1164] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1165] add   r1,r6
	add	r1,r6
# [1166] str   r1,[r7,#0xb0]
	str	r1,[r7, #176]
# [1167] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1168] blt   p123
	blt	.Lj431
# [1169] mov   r0,#2
	mov	r0,#2
# [1170] str   r0,[r7,#0xac]
	str	r0,[r7, #172]
# [1171] b     p123
	b	.Lj431
.Lj433:
# [1173] p124:          cmp   r0,#2
	cmp	r0,#2
# [1174] bne   p125
	bne	.Lj434
# Rescheduled
# [1176] ldr   r2,[r7,#0x94] //sd1
	ldr	r2,[r7, #148]
# [1175] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1177] add   r2,#0x30
	add	r2,#48
# [1178] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1179] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1180] lsr   r4,#30
	lsr	r4,#30
# [1181] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1183] ldr   r1,[r7,#0xb4]
	ldr	r1,[r7, #180]
	b	.Lj588
.Lj539:
	.long	U_$RETROMALINA_$$_SIDDATA+340
.Lj540:
	.long	33608725
.Lj541:
	.long	33608726
.Lj542:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
.Lj544:
	.long	U_$RETROMALINA_$$_SIDDATA+440
.Lj545:
	.long	33608727
.Lj546:
	.long	U_$RETROMALINA_$$_SIDDATA+356
.Lj548:
	.long	U_$RETROMALINA_$$_SIDDATA+360
.Lj550:
	.long	U_$RETROMALINA_$$_SIDDATA+364
.Lj551:
	.long	33608728
.Lj552:
	.long	U_$RETROMALINA_$$_SIDDATA+436
.Lj556:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj554:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj553:
# value: 0d+6.553600000E+04
	.byte	0,0,128,71
.Lj557:
	.long	U_$RETROMALINA_$$_SIDDATA+444
.Lj559:
	.long	U_$RETROMALINA_$$_SIDDATA+448
.Lj560:
	.long	33608708
.Lj561:
	.long	U_$RETROMALINA_$$_SIDDATA+320
.Lj562:
	.long	33608715
.Lj563:
	.long	U_$RETROMALINA_$$_SIDDATA+324
.Lj564:
	.long	33608722
.Lj565:
	.long	U_$RETROMALINA_$$_SIDDATA+328
.Lj588:
# [1182] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1184] cmp   r4,r1
	cmp	r4,r1
# [1185] movlt r0,#3
	movlt	r0,#3
# [1186] strlt r0,[r7,#0xac]
	strlt	r0,[r7, #172]
# [1187] b     p123
	b	.Lj431
.Lj434:
# [1189] p125:          cmp   r0,#4
	cmp	r0,#4
# [1190] bne   p126
	bne	.Lj435
# Rescheduled
# [1192] ldr   r2,[r7,#0x9c] //sr1
	ldr	r2,[r7, #156]
# [1191] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1193] add   r2,#0x30
	add	r2,#48
# [1194] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1195] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1196] lsr   r4,#30
	lsr	r4,#30
# [1197] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1198] cmp   r4,#0x10000
	cmp	r4,#65536
# [1199] movlt r4,#0
	movlt	r4,#0
# [1200] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1201] strlt r4,[r7,#0xbc]
	strlt	r4,[r7, #188]
# [1202] b     p123
	b	.Lj431
.Lj435:
# [1204] p126:          mov   r0,#0
	mov	r0,#0
# [1205] str   r0,[r7,#0xb0]
	str	r0,[r7, #176]
.Lj431:
# [1207] p123:          mov   r0,#10
	mov	r0,#10
# [1208] str   r0,[r7,#0x1fc]
	str	r0,[r7, #508]
.Lj436:
# [1213] p297:        ldr   r4,sidptr
	ldr	r4,[r11, #-168]
# Rescheduled
# Rescheduled
# [1217] ldr   r0,[r4,#0x20]
	ldr	r0,[r4, #32]
# [1218] ldr   r3,[r4,#0x00]
	ldr	r3,[r4]
# [1219] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1220] ldrcs r1,[r4,#0x60]
	ldrcs	r1,[r4, #96]
# [1221] ldrcs r2,[r4,#0x50]
	ldrcs	r2,[r4, #80]
# [1222] andcs r1,r2
	andcs	r1,r2
# [1223] strcs r1,[r4,#0x60]
	strcs	r1,[r4, #96]
# [1224] ldr   r1,[r4,#0x0c]
	ldr	r1,[r4, #12]
# [1225] cmp   r1,#0
	cmp	r1,#0
# [1226] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1229] ldr r2,[r4,#0x24]
	ldr	r2,[r4, #36]
# [1227] str r0,[r4,#0x20]
	str	r0,[r4, #32]
# [1230] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1231] movcs r1,#1
	movcs	r1,#1
# [1232] movcc r1,#0
	movcc	r1,#0
# [1233] str   r2,[r4,#0x24]
	str	r2,[r4, #36]
# [1234] str   r1,[r4,#0x3c]
	str	r1,[r4, #60]
# [1238] ldr r1,[r4,#0x140]
	ldr	r1,[r4, #320]
# [1239] cmp r1,#2
	cmp	r1,#2
# [1240] bne p205
	bne	.Lj437
# [1241] lsr r0,#8
	lsr	r0,#8
# [1242] sub r0,#8388608
	sub	r0,#8388608
# [1243] str r0,[r4,#0x28]
	str	r0,[r4, #40]
# [1244] b p204
	b	.Lj438
.Lj437:
# [1246] p205:          cmp r1,#1
	cmp	r1,#1
# [1247] bne p201
	bne	.Lj439
# [1248] mov r5,r0                // triangle
	mov	r5,r0
# [1249] lsls r5,#1
	lsls	r5,#1
# [1250] mvncs r5,r5
	mvncs	r5,r5
# [1251] ldr r6,[r4,#0x08]
	ldr	r6,[r4, #8]
# [1252] cmp r6,#0
	cmp	r6,#0
# [1253] ldrne r6,[r4,#0xa0]
	ldrne	r6,[r4, #160]
# [1254] lsls r6,#1
	lsls	r6,#1
# [1255] negcs r5,r5
	negcs	r5,r5
# [1256] lsr r5,#8
	lsr	r5,#8
# [1257] sub r5,#8388608
	sub	r5,#8388608
# [1258] str r5,[r4,#0x28]
	str	r5,[r4, #40]
# [1259] b p204
	b	.Lj438
.Lj439:
# [1261] p201:          cmp r1,#4
	cmp	r1,#4
# [1262] bne p203
	bne	.Lj440
# Rescheduled
# [1264] ldr r7,[r4,#0x14c]
	ldr	r7,[r4, #332]
# [1263] mov r6,r0,lsr #20        //square r6
	mov	r6,r0,lsr #20
# [1265] cmp r6,r7
	cmp	r6,r7
# [1266] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1267] movlt r6,#0
	movlt	r6,#0
# [1268] sub r6,#8388608
	sub	r6,#8388608
# [1269] str r6,[r4,#0x28]
	str	r6,[r4, #40]
# [1270] b p204
	b	.Lj438
.Lj440:
# [1272] p203:          cmp r1,#3
	cmp	r1,#3
# [1273] bne p206
	bne	.Lj441
# [1274] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1275] and r6,#0x000003FC
	and	r6,#1020
# [1276] add r6,#0x200
	add	r6,#512
# [1277] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1278] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1279] b p204
	b	.Lj438
.Lj441:
# [1281] p206:          cmp r1,#5
	cmp	r1,#5
# [1282] bne p207
	bne	.Lj442
# [1283] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1284] and r6,#0x000003FC
	and	r6,#1020
# [1285] add r6,#0x600
	add	r6,#1536
# [1286] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1287] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1288] b p204
	b	.Lj438
.Lj442:
# [1290] p207:          cmp r1,#6
	cmp	r1,#6
# [1291] bne p208
	bne	.Lj443
# [1292] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1293] and r6,#0x000003FC
	and	r6,#1020
# [1294] add r6,#0xa00
	add	r6,#2560
# [1295] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1296] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1297] b p204
	b	.Lj438
.Lj443:
# [1299] p208:          cmp r1,#7
	cmp	r1,#7
# [1300] bne p209
	bne	.Lj444
# [1301] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1302] and r6,#0x000003FC
	and	r6,#1020
# [1303] add r6,#0xe00
	add	r6,#3584
# [1304] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1305] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1306] b p204
	b	.Lj438
.Lj444:
# [1308] p209:          cmp r1,#8                // noise
	cmp	r1,#8
# [1309] bne p204
	bne	.Lj438
# [1310] ldr r7,[r4,#0x3C]
	ldr	r7,[r4, #60]
# [1311] cmp r7,#1
	cmp	r7,#1
# [1312] bne p204
	bne	.Lj438
# [1314] mov   r7,#0
	mov	r7,#0
# [1315] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1317] ldr   r0,[r4,#0x38]
	ldr	r0,[r4, #56]
# [1316] mov   r3,#0
	mov	r3,#0
# [1318] tst   r0,#4194304
	tst	r0,#4194304
# [1319] orrne r7,#128
	orrne	r7,#128
# [1320] orrne r2,#1
	orrne	r2,#1
# [1321] tst   r0,#1048576
	tst	r0,#1048576
# [1322] orrne r7,#64
	orrne	r7,#64
# [1323] tst   r0,#65536
	tst	r0,#65536
# [1324] orrne r7,#32
	orrne	r7,#32
# [1325] tst   r0,#8192
	tst	r0,#8192
# [1326] orrne r7,#16
	orrne	r7,#16
# [1327] tst   r0,#2048
	tst	r0,#2048
# [1328] orrne r7,#8
	orrne	r7,#8
# [1329] tst   r0,#128
	tst	r0,#128
# [1330] orrne r7,#4
	orrne	r7,#4
# [1331] tst   r0,#16
	tst	r0,#16
# [1332] orrne r7,#2
	orrne	r7,#2
# [1333] tst   r0,#4
	tst	r0,#4
# [1334] orrne r7,#1
	orrne	r7,#1
# [1335] tst   r0,#131072
	tst	r0,#131072
# [1336] orrne r3,#1
	orrne	r3,#1
# [1337] eor   r2,r3
	eor	r2,r3
# [1338] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1339] str   r2,[r4,#0x38]
	str	r2,[r4, #56]
# [1340] sub   r7,#128
	sub	r7,#128
# [1341] lsl   r7,#16
	lsl	r7,#16
# [1342] str   r7,[r4,#0x28]
	str	r7,[r4, #40]
.Lj438:
# Rescheduled
# Rescheduled
# [1346] p204:          ldr   r0,[r4,#0x60]
	ldr	r0,[r4, #96]
# [1347] ldr   r3,[r4,#0x40]
	ldr	r3,[r4, #64]
# [1348] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1349] ldrcs r1,[r4,#0xa0]
	ldrcs	r1,[r4, #160]
# [1350] ldrcs r2,[r4,#0x90]
	ldrcs	r2,[r4, #144]
# [1351] andcs r1,r2
	andcs	r1,r2
# [1352] strcs r1,[r4,#0xa0]
	strcs	r1,[r4, #160]
# [1353] ldr   r1,[r4,#0x4c]
	ldr	r1,[r4, #76]
# [1354] cmp   r1,#0
	cmp	r1,#0
# [1355] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1358] ldr r2, [r4,#0x64]
	ldr	r2,[r4, #100]
# [1356] str r0,[r4,#0x60]
	str	r0,[r4, #96]
# [1359] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1360] movcs r1,#1
	movcs	r1,#1
# [1361] movcc r1,#0
	movcc	r1,#0
# [1362] str  r2,[r4,#0x64]
	str	r2,[r4, #100]
# [1363] str  r1,[r4,#0x7c]
	str	r1,[r4, #124]
# [1368] ldr r1,[r4,#0x144]
	ldr	r1,[r4, #324]
# [1369] cmp r1,#2
	cmp	r1,#2
# [1370] bne p215
	bne	.Lj445
# [1371] lsr r0,#8
	lsr	r0,#8
# [1372] sub r0,#8388608
	sub	r0,#8388608
# [1373] str r0,[r4,#0x68]
	str	r0,[r4, #104]
# [1374] b p214
	b	.Lj446
.Lj445:
# [1376] p215:          cmp r1,#1
	cmp	r1,#1
# [1377] bne p211
	bne	.Lj447
# [1378] mov r5,r0             // triangle
	mov	r5,r0
# [1379] lsls r5,#1
	lsls	r5,#1
# [1380] mvncs r5,r5
	mvncs	r5,r5
# [1381] lsr r5,#8
	lsr	r5,#8
# Rescheduled
# [1383] ldr r6,[r4,#0x48]
	ldr	r6,[r4, #72]
# [1382] sub r5,#8388608
	sub	r5,#8388608
# [1384] cmp r6,#0
	cmp	r6,#0
# [1385] ldrne r6,[r4,#0x20]
	ldrne	r6,[r4, #32]
# [1386] lsls r6,#1
	lsls	r6,#1
# [1387] negcs r5,r5
	negcs	r5,r5
# [1388] str r5,[r4,#0x68]
	str	r5,[r4, #104]
# [1389] b p214
	b	.Lj446
.Lj447:
# [1391] p211:          cmp r1,#4
	cmp	r1,#4
# [1392] bne p213
	bne	.Lj448
# Rescheduled
# [1394] ldr r7,[r4,#0x150]
	ldr	r7,[r4, #336]
# [1393] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1395] cmp r6,r7
	cmp	r6,r7
# [1396] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1397] movlt r6,#0
	movlt	r6,#0
# [1398] sub r6,#8388608
	sub	r6,#8388608
# [1399] str r6,[r4,#0x68]
	str	r6,[r4, #104]
# [1400] b p214
	b	.Lj446
.Lj448:
# [1402] p213:          cmp r1,#3
	cmp	r1,#3
# [1403] bne p216
	bne	.Lj449
# [1404] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1405] and r6,#0x000003FC
	and	r6,#1020
# [1406] add r6,#0x200
	add	r6,#512
# [1407] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1408] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1409] b p214
	b	.Lj446
.Lj449:
# [1411] p216:          cmp r1,#5
	cmp	r1,#5
# [1412] bne p217
	bne	.Lj450
# [1413] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1414] and r6,#0x000003FC
	and	r6,#1020
# [1415] add r6,#0x600
	add	r6,#1536
# [1416] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1417] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1418] b p214
	b	.Lj446
.Lj450:
# [1420] p217:          cmp r1,#6
	cmp	r1,#6
# [1421] bne p218
	bne	.Lj451
# [1422] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1423] and r6,#0x000003FC
	and	r6,#1020
# [1424] add r6,#0xa00
	add	r6,#2560
# [1425] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1426] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1427] b p214
	b	.Lj446
.Lj451:
# [1429] p218:          cmp r1,#7
	cmp	r1,#7
# [1430] bne p219
	bne	.Lj452
# [1431] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1432] and r6,#0x000003FC
	and	r6,#1020
# [1433] add r6,#0xe00
	add	r6,#3584
# [1434] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1435] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1436] b p214
	b	.Lj446
.Lj452:
# [1438] p219:          cmp r1,#8    // noise
	cmp	r1,#8
# [1439] bne p214
	bne	.Lj446
# [1440] p212:          ldr r7,[r4,#0x7C]
	ldr	r7,[r4, #124]
# [1441] cmp r7,#1
	cmp	r7,#1
# [1442] bne p214
	bne	.Lj446
# [1444] mov   r7,#0
	mov	r7,#0
# [1445] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1447] ldr   r0,[r4,#0x78]
	ldr	r0,[r4, #120]
# [1446] mov   r3,#0
	mov	r3,#0
# [1448] tst   r0,#4194304
	tst	r0,#4194304
# [1449] orrne r7,#128
	orrne	r7,#128
# [1450] orrne r2,#1
	orrne	r2,#1
# [1451] tst   r0,#1048576
	tst	r0,#1048576
# [1452] orrne r7,#64
	orrne	r7,#64
# [1453] tst   r0,#65536
	tst	r0,#65536
# [1454] orrne r7,#32
	orrne	r7,#32
# [1455] tst   r0,#8192
	tst	r0,#8192
# [1456] orrne r7,#16
	orrne	r7,#16
# [1457] tst   r0,#2048
	tst	r0,#2048
# [1458] orrne r7,#8
	orrne	r7,#8
# [1459] tst   r0,#128
	tst	r0,#128
# [1460] orrne r7,#4
	orrne	r7,#4
# [1461] tst   r0,#16
	tst	r0,#16
# [1462] orrne r7,#2
	orrne	r7,#2
# [1463] tst   r0,#4
	tst	r0,#4
# [1464] orrne r7,#1
	orrne	r7,#1
# [1465] tst   r0,#131072
	tst	r0,#131072
# [1466] orrne r3,#1
	orrne	r3,#1
# [1467] eor   r2,r3
	eor	r2,r3
# [1468] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1469] str   r2,[r4,#0x78]
	str	r2,[r4, #120]
# [1470] lsl   r7,#16
	lsl	r7,#16
# [1471] sub   r7,#8388608
	sub	r7,#8388608
# [1472] str   r7,[r4,#0x68]
	str	r7,[r4, #104]
.Lj446:
# Rescheduled
# Rescheduled
# [1477] p214:          ldr   r0,[r4,#0xa0]
	ldr	r0,[r4, #160]
# [1478] ldr   r3,[r4,#0x80]
	ldr	r3,[r4, #128]
# [1479] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1480] ldrcs r1,[r4,#0x20]
	ldrcs	r1,[r4, #32]
# [1481] ldrcs r2,[r4,#0x10]
	ldrcs	r2,[r4, #16]
# [1482] andcs r1,r2
	andcs	r1,r2
# [1483] strcs r1,[r4,#0x20]
	strcs	r1,[r4, #32]
# [1484] ldr   r1,[r4,#0x8c]
	ldr	r1,[r4, #140]
# [1485] cmp   r1,#0
	cmp	r1,#0
# [1486] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1489] ldr r2,[r4,#0xa4]
	ldr	r2,[r4, #164]
# [1487] str r0,[r4,#0xa0]
	str	r0,[r4, #160]
# [1490] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1491] movcs r1,#1
	movcs	r1,#1
# [1492] movcc r1,#0
	movcc	r1,#0
# [1493] str   r2,[r4,#0xa4]
	str	r2,[r4, #164]
# [1494] str   r1,[r4,#0xbc]
	str	r1,[r4, #188]
# [1499] ldr r1,[r4,#0x148]
	ldr	r1,[r4, #328]
# [1500] cmp r1,#2
	cmp	r1,#2
# [1501] bne p225
	bne	.Lj454
# [1502] lsr r0,#8
	lsr	r0,#8
# [1503] sub r0,#8388608
	sub	r0,#8388608
# [1504] str r0,[r4,#0xa8]
	str	r0,[r4, #168]
# [1505] b p224
	b	.Lj455
.Lj454:
# [1507] p225:          cmp r1,#1
	cmp	r1,#1
# [1508] bne p221
	bne	.Lj456
# [1509] mov r5,r0             // triangle
	mov	r5,r0
# [1510] lsls r5,#1
	lsls	r5,#1
# [1511] mvncs r5,r5
	mvncs	r5,r5
# [1512] ldr r6,[r4,#0x88]
	ldr	r6,[r4, #136]
# [1513] cmp r6,#0
	cmp	r6,#0
# [1514] ldrne r6,[r4,#0x60]
	ldrne	r6,[r4, #96]
# [1515] lsls r6,#1
	lsls	r6,#1
# [1516] negcs r5,r5
	negcs	r5,r5
# [1517] lsr r5,#8
	lsr	r5,#8
# [1518] sub r5,#8388608
	sub	r5,#8388608
# [1519] str r5,[r4,#0xa8]
	str	r5,[r4, #168]
# [1520] b p224
	b	.Lj455
.Lj456:
# [1522] p221:          cmp r1,#4
	cmp	r1,#4
# [1523] bne p223
	bne	.Lj457
# Rescheduled
# [1525] ldr r7,[r4,#0x154]
	ldr	r7,[r4, #340]
# [1524] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1526] cmp r6,r7
	cmp	r6,r7
# [1527] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1528] movlt r6,#0
	movlt	r6,#0
# [1529] sub r6,#8388608
	sub	r6,#8388608
# [1530] str r6,[r4,#0xa8]
	str	r6,[r4, #168]
# [1531] b p224
	b	.Lj455
.Lj457:
# [1533] p223:          cmp r1,#3
	cmp	r1,#3
# [1534] bne p226
	bne	.Lj458
# [1535] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1536] and r6,#0x000003FC
	and	r6,#1020
# [1537] add r6,#0x200
	add	r6,#512
# [1538] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1539] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1540] b p224
	b	.Lj455
.Lj458:
# [1542] p226:          cmp r1,#5
	cmp	r1,#5
# [1543] bne p227
	bne	.Lj459
# [1544] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1545] and r6,#0x000003FC
	and	r6,#1020
# [1546] add r6,#0x600
	add	r6,#1536
# [1547] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1548] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1549] b p224
	b	.Lj455
.Lj459:
# [1551] p227:          cmp r1,#6
	cmp	r1,#6
# [1552] bne p228
	bne	.Lj460
# [1553] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1554] and r6,#0x000003FC
	and	r6,#1020
# [1555] add r6,#0xa00
	add	r6,#2560
# [1556] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1557] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1558] b p224
	b	.Lj455
.Lj460:
# [1560] p228:          cmp r1,#7
	cmp	r1,#7
# [1561] bne p229
	bne	.Lj461
# [1562] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1563] and r6,#0x000003FC
	and	r6,#1020
# [1564] add r6,#0xe00
	add	r6,#3584
# [1565] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1566] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1567] b p224
	b	.Lj455
.Lj461:
# [1569] p229:          cmp r1,#8    // noise
	cmp	r1,#8
# [1570] bne p224
	bne	.Lj455
# [1571] ldr r7,[r4,#0xbC]
	ldr	r7,[r4, #188]
# [1572] cmp r7,#1
	cmp	r7,#1
# [1573] bne p224
	bne	.Lj455
# [1575] mov   r7,#0
	mov	r7,#0
# [1576] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1578] ldr   r0,[r4,#0xb8]
	ldr	r0,[r4, #184]
# [1577] mov   r3,#0
	mov	r3,#0
# [1579] tst   r0,#4194304
	tst	r0,#4194304
# [1580] orrne r7,#128
	orrne	r7,#128
# [1581] orrne r2,#1
	orrne	r2,#1
# [1582] tst   r0,#1048576
	tst	r0,#1048576
# [1583] orrne r7,#64
	orrne	r7,#64
# [1584] tst   r0,#65536
	tst	r0,#65536
# [1585] orrne r7,#32
	orrne	r7,#32
# [1586] tst   r0,#8192
	tst	r0,#8192
# [1587] orrne r7,#16
	orrne	r7,#16
# [1588] tst   r0,#2048
	tst	r0,#2048
# [1589] orrne r7,#8
	orrne	r7,#8
# [1590] tst   r0,#128
	tst	r0,#128
# [1591] orrne r7,#4
	orrne	r7,#4
# [1592] tst   r0,#16
	tst	r0,#16
# [1593] orrne r7,#2
	orrne	r7,#2
# [1594] tst   r0,#4
	tst	r0,#4
# [1595] orrne r7,#1
	orrne	r7,#1
# [1596] tst   r0,#131072
	tst	r0,#131072
# [1597] orrne r3,#1
	orrne	r3,#1
# [1598] eor   r2,r3
	eor	r2,r3
# [1599] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1600] str   r2,[r4,#0xb8]
	str	r2,[r4, #184]
# [1601] sub   r7,#128
	sub	r7,#128
# [1602] lsl   r7,#16
	lsl	r7,#16
# [1603] p222:          str   r7,[r4,#0xa8]
	str	r7,[r4, #168]
.Lj455:
# Rescheduled
# Rescheduled
# [1607] p224:          ldr r0,[r4,#0x30]
	ldr	r0,[r4, #48]
# [1608] ldr r1,[r4,#0x28]
	ldr	r1,[r4, #40]
# [1609] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1610] ldr r0,[r4,#0x158]
	ldr	r0,[r4, #344]
# [1611] cmp r0,#0
	cmp	r0,#0
# [1612] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1614] ldr r0,[r4,#0x164]
	ldr	r0,[r4, #356]
# [1613] asr r3,#1
	asr	r3,#1
# [1615] cmp r0,#0
	cmp	r0,#0
# [1616] moveq r2,#0
	moveq	r2,#0
# [1617] movne r2,r3
	movne	r2,r3
# [1618] movne r3,#0
	movne	r3,#0
# [1619] str r3,[r4,#0x1c4]
	str	r3,[r4, #452]
# [1620] str r2,[r4,#0x170]
	str	r2,[r4, #368]
# Rescheduled
# Rescheduled
# [1623] ldr r0,[r4,#0x70]
	ldr	r0,[r4, #112]
# [1624] ldr r1,[r4,#0x68]
	ldr	r1,[r4, #104]
# [1625] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1626] ldr r0,[r4,#0x15c]
	ldr	r0,[r4, #348]
# [1627] cmp r0,#0
	cmp	r0,#0
# [1628] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1630] ldr r0,[r4,#0x168]
	ldr	r0,[r4, #360]
# [1629] asr r3,#1
	asr	r3,#1
# [1631] cmp r0,#0
	cmp	r0,#0
# [1632] moveq r2,#0
	moveq	r2,#0
# [1633] movne r2,r3
	movne	r2,r3
# [1634] movne r3,#0
	movne	r3,#0
# [1635] str r3,[r4,#0x1c8]
	str	r3,[r4, #456]
# [1636] str r2,[r4,#0x174]
	str	r2,[r4, #372]
# Rescheduled
# Rescheduled
# [1638] ldr r0,[r4,#0xb0]
	ldr	r0,[r4, #176]
# [1639] ldr r1,[r4,#0xa8]
	ldr	r1,[r4, #168]
# [1640] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1641] ldr r0,[r4,#0x160]
	ldr	r0,[r4, #352]
# [1642] cmp r0,#0
	cmp	r0,#0
# [1643] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1645] ldr r0,[r4,#0x16c]
	ldr	r0,[r4, #364]
# [1644] asr r3,#1
	asr	r3,#1
# [1646] cmp r0,#0
	cmp	r0,#0
# [1647] moveq r2,#0
	moveq	r2,#0
# [1648] movne r2,r3
	movne	r2,r3
# [1649] movne r3,#0
	movne	r3,#0
# [1650] str r3,[r4,#0x1cc]
	str	r3,[r4, #460]
# [1651] str r2,[r4,#0x178]
	str	r2,[r4, #376]
# [1655] mov r7,r4
	mov	r7,r4
# Rescheduled
# [1657] ldr r1,[r7,#0x1b8] //ffi
	ldr	r1,[r7, #440]
# [1656] ldr r3,[r7,#0x1bc] //fri
	ldr	r3,[r7, #444]
# [1658] lsl r1,#1
	lsl	r1,#1
# [1659] ldr r6,[r7,#0x1b4]  // bandpass switch
	ldr	r6,[r7, #436]
# [1660] mov r9, #0  // init output L
	mov	r9,#0
# Rescheduled
# [1665] ldr r2,[r7,#0x180]
	ldr	r2,[r7, #384]
# [1661] mov r10,#0  // init output R
	mov	r10,#0
# [1666] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1667] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1669] ldr r0,[r7,#0x170]
	ldr	r0,[r7, #368]
# [1668] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1671] ldr r4,[r7,#0x184]
	ldr	r4,[r7, #388]
# [1670] sub r0,r5
	sub	r0,r5
# [1672] sub r0,r4
	sub	r0,r4
# [1673] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1674] lsr r5,#18
	lsr	r5,#18
# [1675] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1676] add r2,r5
	add	r2,r5
# [1677] str r2,[r7,#0x180]
	str	r2,[r7, #384]
# [1678] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1679] lsr r5,#18
	lsr	r5,#18
# [1680] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1681] add r4,r5
	add	r4,r5
# [1682] str r4,[r7,#0x184]
	str	r4,[r7, #388]
# [1686] ldr r5,[r7,#0x1c4]
	ldr	r5,[r7, #452]
# [1687] tst r6,#0x2
	tst	r6,#2
# [1688] addne r5,r2
	addne	r5,r2
# [1689] tst r6,#0x1
	tst	r6,#1
# [1690] addne r5,r4
	addne	r5,r4
# [1691] tst r6,#0x4
	tst	r6,#4
# [1692] addne r5,r0
	addne	r5,r0
# [1696] mov r9,r5
	mov	r9,r5
# [1697] asr r5,#1
	asr	r5,#1
# Rescheduled
# [1702] ldr r2,[r7,#0x188]
	ldr	r2,[r7, #392]
# [1698] mov r10,r5
	mov	r10,r5
# [1703] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1704] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1706] ldr r0,[r7,#0x174]
	ldr	r0,[r7, #372]
# [1705] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1708] ldr r4,[r7,#0x18c]
	ldr	r4,[r7, #396]
# [1707] sub r0,r5
	sub	r0,r5
# [1709] sub r0,r4
	sub	r0,r4
# [1710] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1711] lsr r5,#18
	lsr	r5,#18
# [1712] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1713] add r2,r5
	add	r2,r5
# [1714] str r2,[r7,#0x188]
	str	r2,[r7, #392]
# [1715] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1716] lsr r5,#18
	lsr	r5,#18
# [1717] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1718] add r4,r5
	add	r4,r5
# [1719] str r4,[r7,#0x18c]
	str	r4,[r7, #396]
# [1723] ldr r5,[r7,#0x1c8]
	ldr	r5,[r7, #456]
# [1724] tst r6,#0x2
	tst	r6,#2
# [1725] addne r5,r2
	addne	r5,r2
# [1726] tst r6,#0x1
	tst	r6,#1
# [1727] addne r5,r4
	addne	r5,r4
# [1728] tst r6,#0x4
	tst	r6,#4
# [1729] addne r5,r0
	addne	r5,r0
# [1733] asr r5,#1
	asr	r5,#1
# [1734] add r9,r5
	add	r9,r5
# [1735] add r10,r5
	add	r10,r5
# [1736] asr r5,#1
	asr	r5,#1
# [1737] add r9,r5
	add	r9,r5
# Rescheduled
# [1742] ldr r2,[r7,#0x190]
	ldr	r2,[r7, #400]
# [1738] add r10,r5
	add	r10,r5
# [1743] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1744] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1746] ldr r0,[r7,#0x178]
	ldr	r0,[r7, #376]
# [1745] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1748] ldr r4,[r7,#0x194]
	ldr	r4,[r7, #404]
# [1747] sub r0,r5
	sub	r0,r5
# [1749] sub r0,r4
	sub	r0,r4
# [1750] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1751] lsr r5,#18
	lsr	r5,#18
# [1752] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1753] add r2,r5
	add	r2,r5
# [1754] str r2,[r7,#0x190]
	str	r2,[r7, #400]
# [1755] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1756] lsr r5,#18
	lsr	r5,#18
# [1757] orr r5,r5, r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1758] add r4,r5
	add	r4,r5
# [1759] str r4,[r7,#0x194]
	str	r4,[r7, #404]
# [1763] ldr r5,[r7,#0x1cc]
	ldr	r5,[r7, #460]
# [1764] tst r6,#0x2
	tst	r6,#2
# [1765] addne r5,r2
	addne	r5,r2
# [1766] tst r6,#0x1
	tst	r6,#1
# [1767] addne r5,r4
	addne	r5,r4
# [1768] tst r6,#0x4
	tst	r6,#4
# [1769] addne r5,r0
	addne	r5,r0
# [1773] add r10,r5
	add	r10,r5
# [1774] asr r5,#1
	asr	r5,#1
# [1775] add r9,r5
	add	r9,r5
# [1779] ldr r5,[r7,#0x1c0]
	ldr	r5,[r7, #448]
# [1780] mul r4,r5,r9
	mul	r4,r5,r9
# [1781] mov r0,r4
	mov	r0,r4
# [1782] mul r4,r5,r10
	mul	r4,r5,r10
# [1783] mov r6,r4
	mov	r6,r4
# Rescheduled
# [1788] ldr r2,[r7,#0x198]
	ldr	r2,[r7, #408]
# [1787] mov r1,#0x6000
	mov	r1,#24576
# Rescheduled
# [1790] ldr r4,[r7,#0x19c]
	ldr	r4,[r7, #412]
# [1789] sub r0,r2
	sub	r0,r2
# [1791] sub r0,r4
	sub	r0,r4
# [1792] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1793] lsr r5,#18
	lsr	r5,#18
# [1794] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1795] add r2,r5
	add	r2,r5
# [1796] str r2,[r7,#0x198]
	str	r2,[r7, #408]
# [1797] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1798] lsr r5,#18
	lsr	r5,#18
# [1799] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1800] add r4,r5
	add	r4,r5
# [1801] str r4,[r7,#0x19c]
	str	r4,[r7, #412]
# Rescheduled
# [1804] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [1803] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [1806] add r8,r4
	add	r8,r4
# [1807] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# Rescheduled
# [1812] ldr r2,[r7,#0x1a0]
	ldr	r2,[r7, #416]
# [1811] mov r0,r6
	mov	r0,r6
# Rescheduled
# [1814] ldr r4,[r7,#0x1a4]
	ldr	r4,[r7, #420]
# [1813] sub r0,r2
	sub	r0,r2
# [1815] sub r0,r4
	sub	r0,r4
# [1816] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1817] lsr r5,#18
	lsr	r5,#18
# [1818] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1819] add r2,r5
	add	r2,r5
# [1820] str r2,[r7,#0x1a0]
	str	r2,[r7, #416]
# [1821] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1822] lsr r5,#18
	lsr	r5,#18
# [1823] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1824] add r4,r5
	add	r4,r5
# [1825] str r4,[r7,#0x1a4]
	str	r4,[r7, #420]
# Rescheduled
# [1828] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [1827] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [1830] add r8,r4       //lt
	add	r8,r4
# [1831] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [1832] add r0,#1
	add	r0,#1
# [1833] str r0,[r7,#0x1a8]
	str	r0,[r7, #424]
# [1836] ldr r0,[r7,#0x1fc]
	ldr	r0,[r7, #508]
# [1837] sub r0,#1
	sub	r0,#1
# [1838] str r0,[r7,#0x1fc]
	str	r0,[r7, #508]
# [1840] cmp r0,#0
	cmp	r0,#0
# [1841] bne p297
	bne	.Lj436
# [1844] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [1845] asr r8,#18
	asr	r8,#18
# [1846] mov r9,r8
	mov	r9,r8
# [1847] asr r9,#2
	asr	r9,#2
# [1848] add r8,r9
	add	r8,r9
# [1849] add r8,#2592
	add	r8,#2592
# [1850] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# [1851] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [1852] asr r8,#18
	asr	r8,#18
# [1853] mov r9,r8
	mov	r9,r8
# [1854] asr r9,#2
	asr	r9,#2
# [1855] add r8,r9
	add	r8,r9
# [1856] add r8,#2592
	add	r8,#2592
# [1857] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [1860] ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# Rescheduled
# [1883] sid[0]:= siddata[$6c]; //  2048+ (siddata[$6c] div (16*16384));//16384;//32768;
	ldr	r0,.Lj566
# Rescheduled
	ldrh	r0,[r0]
	ldr	r1,[r11, #-52]
	strh	r0,[r1]
# Rescheduled
# [1884] sid[1]:= siddata[$6b];//2048+ (siddata[$6b] div (16*16384));//16384;//32768;
	ldr	r0,.Lj567
	ldr	r1,[r11, #-52]
	ldrh	r0,[r0]
# Rescheduled
# [1886] oldsc:=sc;
	ldr	r2,.Lj568
	strh	r0,[r1, #2]
# Rescheduled
	ldr	r3,.Lj569
	ldr	r1,[r2]
# Rescheduled
	ldr	r0,.Lj570
	str	r1,[r3]
# Rescheduled
# Peephole MovLdr2Ldr done
# [1887] sc:=(siddata[$6c]+siddata[$6B]) -5184 ;//div 16384;
	ldr	r1,[r0, #428]
	ldr	r0,[r0, #432]
	add	r0,r1,r0
# Rescheduled
	ldr	r2,.Lj568
	sub	r1,r0,#5184
# Rescheduled
# [1888] scope[scj]:=sc;
	ldr	r0,.Lj572
	str	r1,[r2]
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj568
	mov	r3,r0,lsl #2
# Rescheduled
	ldr	r2,.Lj574
	ldr	r0,[r1]
# Rescheduled
# [1889] inc(scj);
	ldr	r12,.Lj572
	str	r0,[r3, r2]
	ldr	r0,[r12]
	add	r1,r0,#1
# Rescheduled
# [1890] if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
	ldr	r0,.Lj572
	str	r1,[r12]
	ldr	r1,[r0]
	mov	r0,#191
	orr	r0,r0,#768
	cmp	r1,r0
	ble	.Lj578
	ldr	r0,.Lj569
	ldr	r0,[r0]
	cmp	r0,#0
	bge	.Lj581
	ldr	r0,.Lj568
	ldr	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrgt	r1,.Lj572
	movgt	r0,#0
	strgt	r0,[r1]
	bgt	.Lj585
.Lj581:
	mov	r1,#191
# Rescheduled
	ldr	r0,.Lj572
	orr	r1,r1,#768
	str	r1,[r0]
.Lj585:
.Lj578:
	ldmea	r11,{r11,r13,r15}
.Lj566:
	.long	U_$RETROMALINA_$$_SIDDATA+432
.Lj567:
	.long	U_$RETROMALINA_$$_SIDDATA+428
.Lj568:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
.Lj569:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
.Lj570:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj572:
	.long	TC_$RETROMALINA_$$_SCJ
.Lj574:
	.long	U_$RETROMALINA_$$_SCOPE
.Le29:
	.size	RETROMALINA_$$_SID$LONGINT$$TSAMPLE, .Le29 - RETROMALINA_$$_SID$LONGINT$$TSAMPLE

.section .text.n_retromalina_$$_audiocallback$longint
	.balign 4
.globl	RETROMALINA_$$_AUDIOCALLBACK$LONGINT
RETROMALINA_$$_AUDIOCALLBACK$LONGINT:
# [1913] begin
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
# [1914] audio2:=pcardinal(b);
	mov	r6,r0
# Var b located in register r6
# Rescheduled
# [1915] ttt:=clockgettotal;
	ldr	r0,.Lj591
# Rescheduled
	ldr	r0,[r0]
	mov	r7,r6
	cmp	r0,#0
	beq	.Lj593
	ldr	r0,.Lj591
	ldr	r0,[r0]
	blx	r0
	b	.Lj595
.Lj593:
	mov	r0,#0
	mov	r1,#0
.Lj595:
# Var ttt located in register r8:r9
	mov	r9,r0
# Rescheduled
# [1916] if pause1=true then goto p999;
	ldr	r0,.Lj598
# Rescheduled
	ldrb	r0,[r0]
	mov	r8,r1
	cmp	r0,#0
	bne	.Lj599
# [1917] for k:=0 to 7 do
	mov	r11,#0
	sub	r11,r11,#1
	.balign 4
.Lj602:
# Rescheduled
# [1919] aa+=2500;
	ldr	r0,.Lj603
# Rescheduled
	ldr	r0,[r0]
	add	r11,r11,#1
	add	r1,r0,#196
# Rescheduled
	ldr	r0,.Lj603
	add	r1,r1,#2304
# Rescheduled
# [1920] if (aa>=siddelay) then
	ldr	r2,.Lj603
	str	r1,[r0]
	ldr	r0,[r2]
	mov	r1,r0,asr #31
# Rescheduled
	ldr	r3,.Lj606
# Rescheduled
	ldr	r2,.Lj607
# Rescheduled
	ldr	r2,[r2]
	ldr	r3,[r3]
	cmp	r1,r2
	bgt	.Lj608
	blt	.Lj609
	cmp	r0,r3
	bcc	.Lj609
.Lj608:
# [1922] aa-=siddelay;
	ldr	r0,.Lj603
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj606
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj607
	ldr	r0,[r0]
	ldr	r1,[r1]
	subs	r0,r2,r0
# [1985] end;
	rsc	r1,r1,r2,asr #31
# Rescheduled
	ldr	r2,.Lj603
# Rescheduled
# [1923] if sfh>-1 then
	ldr	r1,.Lj614
	str	r0,[r2]
	ldr	r0,[r1]
	mvn	r1,#0
	cmp	r0,r1
	ble	.Lj616
# [1925] if filetype=0 then
	ldr	r0,.Lj617
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj619
# Rescheduled
# [1927] il:=fileread(sfh,buf,25);
	ldr	r0,.Lj614
	add	r1,r13,#4
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# Rescheduled
# [1928] if skip=1 then  il:=fileread(sfh,buf,25);
	ldr	r1,.Lj621
	mov	r5,r0
	ldr	r0,[r1]
	cmp	r0,#1
	bne	.Lj623
# Rescheduled
	ldr	r0,.Lj614
	add	r1,r13,#4
	ldr	r0,[r0]
	mov	r2,#25
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	mov	r5,r0
.Lj623:
# [1929] if il=25 then
	cmp	r5,#25
	bne	.Lj626
# [1931] for i:=0 to 24 do poke($200d400+i,buf[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj629:
	add	r4,r4,#1
	add	r0,r13,#4
	ldrb	r1,[r0, r4]
	add	r0,r4,#33554432
	add	r0,r0,#54272
	strb	r1,[r0]
	cmp	r4,#24
	blt	.Lj629
# [1932] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj632:
# Rescheduled
	ldr	r0,.Lj633
	add	r4,r4,#1
	add	r2,r0,#4
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r4, lsl #2]
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj632
# [1933] t6:=clockgettotal;
	ldr	r0,.Lj591
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj636
	ldr	r0,.Lj591
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj638
# Rescheduled
	ldr	r2,.Lj639
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj640
.Lj636:
# Rescheduled
	ldr	r1,.Lj638
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj639
	mov	r0,#0
	str	r0,[r1]
.Lj640:
# Rescheduled
# [1934] times6502[15]:=0;
	ldr	r1,.Lj643
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [1935] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	ldr	r1,.Lj638
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj639
	mov	r0,#0
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj648:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj633
	add	r4,r4,#1
	ldr	r2,[r1, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj638
	mov	r3,r2,asr #31
# Rescheduled
	ldr	r1,.Lj639
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r12,r0,r2
# Rescheduled
	ldr	r2,.Lj638
	adc	r1,r1,r3
# Rescheduled
	ldr	r0,.Lj639
	str	r12,[r2]
	str	r1,[r0]
	cmp	r4,#15
	blt	.Lj648
# [1936] time6502:=t6;
	ldr	r0,.Lj638
	ldr	r2,[r0]
# Rescheduled
	ldr	r1,.Lj655
	ldr	r0,[r0, #4]
	str	r2,[r1]
# Rescheduled
# [1937] timer1+=siddelay;
	ldr	r2,.Lj656
	str	r0,[r1, #4]
# Rescheduled
	ldr	r0,.Lj657
	ldr	r3,[r2]
# Rescheduled
	ldr	r1,.Lj606
	ldr	r10,[r0]
# Rescheduled
	ldr	r2,.Lj607
	ldr	r0,[r1]
	ldr	r1,[r2]
	adds	r3,r0,r3
# Rescheduled
	ldr	r12,.Lj656
	adc	r2,r1,r10
# Rescheduled
	ldr	r0,.Lj657
	str	r3,[r12]
# Rescheduled
# [1938] songtime+=siddelay;
	ldr	r1,.Lj662
	str	r2,[r0]
# Rescheduled
	ldr	r0,.Lj663
	ldr	r3,[r1]
# Rescheduled
	ldr	r1,.Lj606
	ldr	r12,[r0]
# Rescheduled
	ldr	r2,.Lj607
	ldr	r0,[r1]
	ldr	r1,[r2]
	adds	r3,r0,r3
# Rescheduled
	ldr	r2,.Lj662
	adc	r0,r1,r12
# Rescheduled
	ldr	r1,.Lj663
	str	r3,[r2]
	str	r0,[r1]
	b	.Lj678
.Lj626:
# [1942] fileclose(sfh);
	ldr	r0,.Lj614
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [1943] fh:=-1;
	ldr	r1,.Lj670
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
# [1944] songtime:=0;
	ldr	r1,.Lj662
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj663
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [1945] timer1:=-1;
	ldr	r1,.Lj656
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj657
	mvn	r0,#0
	str	r0,[r1]
# [1946] for i:=0 to 6 do lpoke($200d400+4*i,0);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj677:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#54272
	bic	r1,r0,#3
	mov	r2,#0
	str	r2,[r1]
	cmp	r4,#6
	blt	.Lj677
	b	.Lj678
.Lj619:
# [1952] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj681:
# Rescheduled
	ldr	r0,.Lj633
	add	r4,r4,#1
	add	r1,r0,#4
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r4, lsl #2]
# Peephole FoldShiftLdrStr done
	str	r1,[r0, r4, lsl #2]
	cmp	r4,#15
	blt	.Lj681
# [1953] t6:=clockgettotal;
	ldr	r0,.Lj591
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj685
	ldr	r0,.Lj591
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj638
# Rescheduled
	ldr	r2,.Lj639
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj689
.Lj685:
# Rescheduled
	ldr	r0,.Lj638
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj639
	mov	r0,#0
	str	r0,[r1]
.Lj689:
# [1954] jsr6502(256,play);
	ldr	r0,.Lj692
	ldrh	r1,[r0]
	mov	r0,#256
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [1955] times6502[15]:=clockgettotal-t6;
	ldr	r0,.Lj591
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj695
	ldr	r0,.Lj591
	ldr	r0,[r0]
	blx	r0
	b	.Lj697
.Lj695:
	mov	r0,#0
	mov	r1,#0
.Lj697:
	ldr	r2,.Lj638
# Rescheduled
	ldr	r3,.Lj639
	ldr	r12,[r2]
	ldr	r2,[r3]
	subs	r0,r0,r12
	sbc	r1,r1,r2
# Rescheduled
	ldr	r1,.Lj643
	str	r0,[r1]
# Rescheduled
# [1956] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	ldr	r1,.Lj638
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj639
	mov	r0,#0
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj705:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj633
	add	r4,r4,#1
	ldr	r2,[r1, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj638
	mov	r3,r2,asr #31
# Rescheduled
	ldr	r1,.Lj639
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r12,.Lj638
	adc	r0,r1,r3
# Rescheduled
	ldr	r1,.Lj639
	str	r2,[r12]
	str	r0,[r1]
	cmp	r4,#15
	blt	.Lj705
# [1957] time6502:=t6-15;
	ldr	r0,.Lj638
# Rescheduled
	ldr	r1,.Lj639
	ldr	r0,[r0]
	ldr	r1,[r1]
	subs	r3,r0,#15
# Rescheduled
	ldr	r2,.Lj655
	sbc	r0,r1,#0
# Rescheduled
	ldr	r1,.Lj714
	str	r3,[r2]
	str	r0,[r1]
# [1960] CleanDataCacheRange($200d400,32);
	mov	r10,#33554432
# Rescheduled
	ldr	r0,.Lj715
# Rescheduled
	ldr	r0,[r0]
	orr	r10,r10,#54272
	cmp	r0,#0
	beq	.Lj717
	mov	r1,#32
# Rescheduled
	ldr	r2,.Lj715
# Rescheduled
	ldr	r2,[r2]
	mov	r0,r10
	blx	r2
.Lj717:
# [1961] timer1+=siddelay;
	ldr	r0,.Lj656
# Rescheduled
	ldr	r1,.Lj657
	ldr	r3,[r0]
# Rescheduled
	ldr	r2,.Lj606
	ldr	r10,[r1]
# Rescheduled
	ldr	r0,.Lj607
	ldr	r1,[r2]
	ldr	r0,[r0]
	adds	r3,r1,r3
# Rescheduled
	ldr	r12,.Lj656
	adc	r1,r0,r10
# Rescheduled
	ldr	r2,.Lj657
	str	r3,[r12]
# Rescheduled
# [1962] songtime+=siddelay;
	ldr	r0,.Lj662
	str	r1,[r2]
# Rescheduled
	ldr	r1,.Lj663
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj606
	ldr	r12,[r1]
# Rescheduled
	ldr	r1,.Lj607
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r3,.Lj662
	adc	r0,r1,r12
# Rescheduled
	ldr	r1,.Lj663
	str	r2,[r3]
	str	r0,[r1]
.Lj678:
.Lj616:
.Lj609:
# [1968] s:=sid(1);
	mov	r0,r13
	mov	r1,#1
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# [1969] audio2[240*k]:=s[0];
	mov	r0,#240
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldrsh	r1,[r13]
	mul	r0,r11,r0
	str	r1,[r7, r0, lsl #2]
# [1970] audio2[240*k+1]:=s[1];
	mov	r0,#240
	mul	r0,r11,r0
	ldrsh	r1,[r13, #2]
	add	r2,r7,#4
# Peephole FoldShiftLdrStr done
	str	r1,[r2, r0, lsl #2]
# [1972] for i:=120*k+1 to 120*k+119 do
	mov	r0,#120
	mul	r0,r11,r0
	add	r10,r0,#119
# Peephole DataMov2Data removed superfluous mov
	mov	r0,#120
	mul	r0,r11,r0
	add	r4,r0,#1
# Peephole DataMov2Data removed superfluous mov
	cmp	r10,r4
	blt	.Lj732
	sub	r4,r4,#1
	.balign 4
.Lj733:
	add	r4,r4,#1
# [1974] s:=sid(0);
	mov	r0,r13
	mov	r1,#0
	bl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
# [1975] audio2[2*i]:=s[0];
	ldrsh	r1,[r13]
	mov	r0,r4,lsl #1
	str	r1,[r7, r0, lsl #2]
# [1976] audio2[2*i+1]:=s[1];
	mov	r0,r4,lsl #1
	mov	r1,r0,lsl #2
	ldrsh	r0,[r13, #2]
	add	r2,r7,#4
	str	r0,[r2, r1]
	cmp	r10,r4
	bgt	.Lj733
.Lj732:
	cmp	r11,#7
	blt	.Lj602
# [1980] inc(sidcount);
	ldr	r1,.Lj734
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
.Lj599:
# [1983] sidtime:=clockgettotal-ttt;
	ldr	r0,.Lj591
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj737
	ldr	r0,.Lj591
	ldr	r0,[r0]
	blx	r0
	b	.Lj739
.Lj737:
	mov	r0,#0
	mov	r1,#0
.Lj739:
	subs	r2,r0,r9
# Rescheduled
	ldr	r3,.Lj740
	sbc	r0,r1,r8
# Rescheduled
	ldr	r1,.Lj741
	str	r2,[r3]
	str	r0,[r1]
	add	r13,r13,#32
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r15}
.Lj591:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj598:
	.long	TC_$RETROMALINA_$$_PAUSE1
.Lj603:
	.long	TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
.Lj606:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj607:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj614:
	.long	U_$RETROMALINA_$$_SFH
.Lj617:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj621:
	.long	U_$RETROMALINA_$$_SKIP
.Lj633:
	.long	U_$RETROMALINA_$$_TIMES6502
.Lj638:
	.long	U_$RETROMALINA_$$_T6
.Lj639:
	.long	U_$RETROMALINA_$$_T6+4
.Lj643:
	.long	U_$RETROMALINA_$$_TIMES6502+60
.Lj655:
	.long	U_$RETROMALINA_$$_TIME6502
.Lj656:
	.long	TC_$RETROMALINA_$$_TIMER1
.Lj657:
	.long	TC_$RETROMALINA_$$_TIMER1+4
.Lj662:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj663:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj670:
	.long	U_$RETROMALINA_$$_FH
.Lj692:
	.long	U_$RETROMALINA_$$_PLAY
.Lj714:
	.long	U_$RETROMALINA_$$_TIME6502+4
.Lj715:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj734:
	.long	TC_$RETROMALINA_$$_SIDCOUNT
.Lj740:
	.long	TC_$RETROMALINA_$$_SIDTIME
.Lj741:
	.long	TC_$RETROMALINA_$$_SIDTIME+4
.Le30:
	.size	RETROMALINA_$$_AUDIOCALLBACK$LONGINT, .Le30 - RETROMALINA_$$_AUDIOCALLBACK$LONGINT

.section .text.n_retromalina_$$_pwmbeep
	.balign 4
.globl	RETROMALINA_$$_PWMBEEP
RETROMALINA_$$_PWMBEEP:
# [1996] begin
	stmfd	r13!,{r4,r14}
	sub	r13,r13,#32
	sub	r13,r13,#16384
# Var i located in register r0
# Var sinus located at r13+0, size=OS_NO
# Var ctrlblock located at r13+16384, size=OS_NO
# Var i located in register r4
# [1997] for i:=0 to 4095 do sinus[i]:=round(1040+1024*(sin(2*pi*i/512)));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj746:
	add	r4,r4,#1
	vmov	s0,r4
	vcvt.f64.s32	d0,s0
	vldr	d1,.Lj749
	vmul.f64	d0,d1,d0
	vldr	d1,.Lj750
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_sin_real
	vldr	d0,.Lj748
	vmov	d1,r0,r1
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj747
	vadd.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Peephole FoldShiftLdrStr done
	str	r0,[r13, r4, lsl #2]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj746
# Rescheduled
# Rescheduled
# [1999] ctrlblock[0]:=$07050140; //transfer info
	ldr	r1,.Lj751
	ldr	r0,.Lj752
	str	r1,[r13, r0]
# [2000] ctrlblock[1]:=$c205a000;
	mov	r0,#-1040187392
# Rescheduled
	ldr	r1,.Lj753
	orr	r0,r0,#368640
	str	r0,[r13, r1]
# Rescheduled
# Rescheduled
# [2001] ctrlblock[2]:=$7E20C018;
	ldr	r1,.Lj754
	ldr	r0,.Lj755
	str	r1,[r13, r0]
# Rescheduled
# [2002] ctrlblock[3]:=7680;
	ldr	r1,.Lj756
	mov	r0,#7680
	str	r0,[r13, r1]
# Rescheduled
# [2003] ctrlblock[4]:=$0;
	ldr	r0,.Lj757
	mov	r1,#0
	str	r1,[r13, r0]
# [2004] ctrlblock[5]:=$c4000020;
	mov	r0,#32
# Rescheduled
	ldr	r1,.Lj758
	orr	r0,r0,#-1006632960
	str	r0,[r13, r1]
# Rescheduled
# [2005] ctrlblock[6]:=$0;
	ldr	r0,.Lj759
	mov	r1,#0
	str	r1,[r13, r0]
# Rescheduled
# [2006] ctrlblock[7]:=$0;
	ldr	r0,.Lj760
	mov	r1,#0
	str	r1,[r13, r0]
# Var i located in register r3
# [2007] for i:=0 to 7 do lpoke($4000000+4*i,ctrlblock[i]);
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj763:
	add	r3,r3,#1
# Peephole FoldShiftProcess done
# [2035] end;
	add	r0,r13,r3,lsl #2
	add	r0,r0,#16384
	mov	r1,r3,lsl #2
	sub	r1,r1,#-67108864
# Rescheduled
	ldr	r2,[r0]
	bic	r0,r1,#3
	str	r2,[r0]
	cmp	r3,#7
	blt	.Lj763
# Rescheduled
# [2008] ctrlblock[5]:=$c4000000;
	ldr	r1,.Lj758
	mov	r0,#-1006632960
	str	r0,[r13, r1]
# [2009] ctrlblock[1]:=$c205c000;
	mov	r0,#-1040187392
# Rescheduled
	ldr	r1,.Lj753
	orr	r0,r0,#376832
	str	r0,[r13, r1]
# Var i located in register r2
# [2010] for i:=0 to 7 do lpoke($4000020+4*i,ctrlblock[i]);
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj768:
# Rescheduled
# Rescheduled
	ldr	r0,.Lj752
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
	blt	.Lj768
# Var i located in register r3
# [2011] for i:=0 to 4095 do lpoke ($8000000+4*i,sinus[i]);
	mov	r3,#0
	sub	r3,r3,#1
	.balign 4
.Lj772:
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
	blt	.Lj772
# Var i located in register r2
# [2012] for i:=0 to 4095 do lpoke ($8004000+4*i,sinus[i]);
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj775:
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
	blt	.Lj775
# Var i located in register r1
# [2013] for i:=0 to 4095 do lpoke ($8008000+4*i,sinus[2*(i mod 2048)]);
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj778:
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
	blt	.Lj778
# Var i located in register r1
# [2014] for i:=0 to 4095 do lpoke ($800C000+4*i,sinus[2*(i mod 2048)]);
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj781:
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
	blt	.Lj781
# [2015] CleanDataCacheRange($8000000,$10000);
	ldr	r0,.Lj782
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj784
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj782
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#134217728
	blx	r2
.Lj784:
# [2016] CleanDataCacheRange($4000000,$10000);
	ldr	r0,.Lj782
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj788
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj782
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#67108864
	blx	r2
.Lj788:
# [2017] sleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [2021] i:=pinteger($3F200010)^ and  %11111111111111000111111111111000;
	ldr	r0,.Lj790
	ldr	r0,[r0]
	bic	r0,r0,#7
	bic	r0,r0,#229376
# Var i located in register r0
# [2022] lpoke($3F200010, i or       %00000000000000100000000000000100); // gpio 40/45 as alt0
	orr	r0,r0,#4
# Rescheduled
# Rescheduled
	ldr	r1,.Lj790
	orr	r0,r0,#131072
	bic	r1,r1,#3
	str	r0,[r1]
# [2023] lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
	mov	r1,#22
# Rescheduled
	ldr	r0,.Lj792
	orr	r1,r1,#1509949440
	bic	r0,r0,#3
	mov	r1,#22
	orr	r1,r1,#1509949440
	str	r1,[r0]
# [2024] lpoke($3F1010a4,$5a002000); // div 5
	mov	r1,#1509949440
# Rescheduled
	ldr	r0,.Lj793
	orr	r1,r1,#8192
	bic	r1,r0,#3
	mov	r0,#1509949440
	orr	r0,r0,#8192
	str	r0,[r1]
# [2025] lpoke($3F20C010,5208);      // pwm 1 range  12bit 48 khz 2083
	mov	r0,#88
# Rescheduled
	ldr	r1,.Lj794
	orr	r0,r0,#5120
	bic	r1,r1,#3
	mov	r0,#88
	orr	r0,r0,#5120
	str	r0,[r1]
# [2026] lpoke($3F20C020,5208);      // pwm 2 range
	mov	r0,#88
# Rescheduled
	ldr	r1,.Lj795
	orr	r0,r0,#5120
	bic	r1,r1,#3
	mov	r0,#88
	orr	r0,r0,#5120
	str	r0,[r1]
# [2027] lpoke($3F20C000,$00002161); // pwm contr0l - enable, clear fifo, use fifo
	mov	r0,#97
	orr	r0,r0,#8448
	mov	r0,#1056964608
	orr	r0,r0,#2146304
	bic	r1,r0,#3
	mov	r0,#97
	orr	r0,r0,#8448
	str	r0,[r1]
# [2028] lpoke($3F20C008,$80000307); // pwm dma enable
	mov	r0,#-2147483641
# Rescheduled
	ldr	r1,.Lj796
	orr	r0,r0,#768
	bic	r0,r1,#3
	mov	r1,#-2147483641
	orr	r1,r1,#768
# Rescheduled
# [2029] lpoke($3F007ff0,pinteger($3F007FF0)^ or %100000000000000); // dma 0e enable
	ldr	r2,.Lj797
	str	r1,[r0]
	ldr	r0,[r2]
# Rescheduled
# Rescheduled
	ldr	r1,.Lj797
	orr	r0,r0,#16384
	bic	r2,r1,#3
# Rescheduled
# [2030] lpoke($3F007e04,$c4000000);
	ldr	r1,.Lj799
	str	r0,[r2]
	bic	r0,r1,#3
	mov	r1,#-1006632960
	str	r1,[r0]
# [2031] lpoke($3F007e00,3);
	mov	r0,#1056964608
	orr	r0,r0,#32256
	bic	r0,r0,#3
	mov	r1,#3
	str	r1,[r0]
	add	r13,r13,#32
	add	r13,r13,#16384
	ldmfd	r13!,{r4,r15}
.Lj749:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64
.Lj750:
# value: 0d+1.9531250000000000E-003
	.byte	0,0,0,0,0,0,96,63
.Lj748:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64
.Lj747:
# value: 0d+1.0400000000000000E+003
	.byte	0,0,0,0,0,64,144,64
.Lj751:
	.long	117768512
.Lj752:
	.long	16384
.Lj753:
	.long	16388
.Lj754:
	.long	2116075544
.Lj755:
	.long	16392
.Lj756:
	.long	16396
.Lj757:
	.long	16400
.Lj758:
	.long	16404
.Lj759:
	.long	16408
.Lj760:
	.long	16412
.Lj782:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj790:
	.long	1059061776
.Lj792:
	.long	1058017440
.Lj793:
	.long	1058017444
.Lj794:
	.long	1059110928
.Lj795:
	.long	1059110944
.Lj796:
	.long	1059110920
.Lj797:
	.long	1056997360
.Lj799:
	.long	1056996868
.Le31:
	.size	RETROMALINA_$$_PWMBEEP, .Le31 - RETROMALINA_$$_PWMBEEP

.section .text.n_retromalina_$$_sdl_pauseaudio$longint
	.balign 4
.globl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT:
# [2040] begin
	stmfd	r13!,{r14}
# Var mode located in register r0
# [2041] if mode=1 then
	cmp	r0,#1
	bne	.Lj803
# Rescheduled
# [2043] pause1:=true;
	ldr	r0,.Lj804
	mov	r1,#1
	strb	r1,[r0]
# [2046] sleep(5);
	mov	r0,#5
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [2047] for i:=$205a000 to $205dfff do lpoke(i,2604);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj808
	orr	r0,r0,#368640
# Rescheduled
	ldr	r2,.Lj808
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj807:
	ldr	r1,.Lj808
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	mov	r0,#44
# Rescheduled
	ldr	r1,.Lj808
	orr	r0,r0,#2560
	ldr	r0,[r1]
	bic	r1,r0,#3
	mov	r0,#44
	orr	r0,r0,#2560
# Rescheduled
	ldr	r2,.Lj808
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj813
	cmp	r0,r1
	blt	.Lj807
# [2048] CleanDataCacheRange($205a000,16384);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj814
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#368640
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj814
	movne	r1,#16384
	ldrne	r2,[r2]
	blxne	r2
# [2049] sleep(5);
	mov	r0,#5
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
	b	.Lj818
.Lj803:
# Rescheduled
# [2053] pause1:=false;
	ldr	r1,.Lj804
	mov	r0,#0
	strb	r0,[r1]
.Lj818:
# [2055] end;
	ldmfd	r13!,{r15}
.Lj804:
	.long	TC_$RETROMALINA_$$_PAUSE1
.Lj808:
	.long	U_$RETROMALINA_$$_I
.Lj813:
	.long	33939455
.Lj814:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le32:
	.size	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT, .Le32 - RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$retromalina_$$_fh
	.balign 4
# [103] var fh,filetype:integer;                // this needs cleaning...
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
# [104] sfh:integer;                        // SID file handler
	.globl U_$RETROMALINA_$$_SFH
	.size U_$RETROMALINA_$$_SFH,4
U_$RETROMALINA_$$_SFH:
	.zero 4

.section .bss.n_u_$retromalina_$$_play
	.balign 2
# [105] play:word;
	.globl U_$RETROMALINA_$$_PLAY
	.size U_$RETROMALINA_$$_PLAY,2
U_$RETROMALINA_$$_PLAY:
	.zero 2

.section .bss.n_u_$retromalina_$$_p2
	.balign 4
# [106] p2:^integer;
	.globl U_$RETROMALINA_$$_P2
	.size U_$RETROMALINA_$$_P2,4
U_$RETROMALINA_$$_P2:
	.zero 4

.section .bss.n_u_$retromalina_$$_tim
	.balign 4
# [107] tim,t,t2,t3,ts,t6,time6502:int64;
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
# [108] vblank1:byte;
	.globl U_$RETROMALINA_$$_VBLANK1
	.size U_$RETROMALINA_$$_VBLANK1,1
U_$RETROMALINA_$$_VBLANK1:
	.zero 1

.section .bss.n_u_$retromalina_$$_combined
# [109] combined:array[0..1023] of byte;
	.globl U_$RETROMALINA_$$_COMBINED
	.size U_$RETROMALINA_$$_COMBINED,1024
U_$RETROMALINA_$$_COMBINED:
	.zero 1024

.section .bss.n_u_$retromalina_$$_scope
	.balign 4
# [110] scope:array[0..959] of integer;
	.globl U_$RETROMALINA_$$_SCOPE
	.size U_$RETROMALINA_$$_SCOPE,3840
U_$RETROMALINA_$$_SCOPE:
	.zero 3840

.section .bss.n_u_$retromalina_$$_debug
	.balign 4
# [112] debug:integer;
	.globl U_$RETROMALINA_$$_DEBUG
	.size U_$RETROMALINA_$$_DEBUG,4
U_$RETROMALINA_$$_DEBUG:
	.zero 4

.section .bss.n_u_$retromalina_$$_songtime
	.balign 4
# [116] songtime,songfreq:int64;
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
# [117] skip:integer;
	.globl U_$RETROMALINA_$$_SKIP
	.size U_$RETROMALINA_$$_SKIP,4
U_$RETROMALINA_$$_SKIP:
	.zero 4

.section .bss.n_u_$retromalina_$$_thread
	.balign 4
# [119] thread:TRetro;
	.globl U_$RETROMALINA_$$_THREAD
	.size U_$RETROMALINA_$$_THREAD,4
U_$RETROMALINA_$$_THREAD:
	.zero 4

.section .bss.n_u_$retromalina_$$_thread3
	.balign 4
# [120] thread3:TAudio;
	.globl U_$RETROMALINA_$$_THREAD3
	.size U_$RETROMALINA_$$_THREAD3,4
U_$RETROMALINA_$$_THREAD3:
	.zero 4

.section .bss.n_u_$retromalina_$$_times6502
	.balign 4
# [121] times6502:array[0..15] of integer;
	.globl U_$RETROMALINA_$$_TIMES6502
	.size U_$RETROMALINA_$$_TIMES6502,64
U_$RETROMALINA_$$_TIMES6502:
	.zero 64

.section .bss.n_u_$retromalina_$$_attacktablei
	.balign 4
# [123] attacktablei:array[0..15] of int64;
	.globl U_$RETROMALINA_$$_ATTACKTABLEI
	.size U_$RETROMALINA_$$_ATTACKTABLEI,128
U_$RETROMALINA_$$_ATTACKTABLEI:
	.zero 128

.section .bss.n_u_$retromalina_$$_srtablei
	.balign 4
# [124] srtablei:array[0..15] of int64;
	.globl U_$RETROMALINA_$$_SRTABLEI
	.size U_$RETROMALINA_$$_SRTABLEI,128
U_$RETROMALINA_$$_SRTABLEI:
	.zero 128

.section .bss.n_u_$retromalina_$$_siddata
	.balign 4
# [128] siddata:array[0..1151] of integer;
	.globl U_$RETROMALINA_$$_SIDDATA
	.size U_$RETROMALINA_$$_SIDDATA,4608
U_$RETROMALINA_$$_SIDDATA:
	.zero 4608

.section .bss.n_u_$retromalina_$$_i
	.balign 4
# [129] i,j,k,l,fh2,lines:integer;
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
# [130] p,p3:pointer;
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
# [131] b:byte;
	.globl U_$RETROMALINA_$$_B
	.size U_$RETROMALINA_$$_B,1
U_$RETROMALINA_$$_B:
	.zero 1

.section .bss.n_u_$retromalina_$$_scrfh
	.balign 4
# [132] scrfh:integer;
	.globl U_$RETROMALINA_$$_SCRFH
	.size U_$RETROMALINA_$$_SCRFH,4
U_$RETROMALINA_$$_SCRFH:
	.zero 4

.section .bss.n_u_$retromalina_$$_p4
	.balign 4
# [134] p4:^integer;
	.globl U_$RETROMALINA_$$_P4
	.size U_$RETROMALINA_$$_P4,4
U_$RETROMALINA_$$_P4:
	.zero 4

.section .bss.n_u_$retromalina_$$_scrconvert
	.balign 4
# [135] scrconvert:Tsrcconvert;
	.globl U_$RETROMALINA_$$_SCRCONVERT
	.size U_$RETROMALINA_$$_SCRCONVERT,4
U_$RETROMALINA_$$_SCRCONVERT:
	.zero 4

.section .bss.n_u_$retromalina_$$_fb
	.balign 4
# [136] fb:pframebufferdevice;
	.globl U_$RETROMALINA_$$_FB
	.size U_$RETROMALINA_$$_FB,4
U_$RETROMALINA_$$_FB:
	.zero 4

.section .bss.n_u_$retromalina_$$_framebufferproperties
	.balign 4
# [137] FramebufferProperties:TFramebufferProperties;
	.globl U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
	.size U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES,76
U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES:
	.zero 76

.section .bss.n_u_$retromalina_$$_kbd
	.balign 4
# [138] kbd:array[0..15] of TKeyboarddata;
	.globl U_$RETROMALINA_$$_KBD
	.size U_$RETROMALINA_$$_KBD,192
U_$RETROMALINA_$$_KBD:
	.zero 192

.section .bss.n_u_$retromalina_$$_m
	.balign 2
# [139] m:array[0..128] of Tmousedata;
	.globl U_$RETROMALINA_$$_M
	.size U_$RETROMALINA_$$_M,1032
U_$RETROMALINA_$$_M:
	.zero 1032

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
# [2061] end.
.Le33:
	.size	VMT_$RETROMALINA_$$_TRETRO, .Le33 - VMT_$RETROMALINA_$$_TRETRO

.section .rodata.n_VMT_$RETROMALINA_$$_TAUDIO
	.balign 4
.globl	VMT_$RETROMALINA_$$_TAUDIO
VMT_$RETROMALINA_$$_TAUDIO:
	.long	48,-48
	.long	VMT_$CLASSES_$$_TTHREAD
	.long	.Ld6
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
.Le34:
	.size	VMT_$RETROMALINA_$$_TAUDIO, .Le34 - VMT_$RETROMALINA_$$_TAUDIO
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_.Ld5
	.balign 4
.Ld5:
	.byte	6
	.ascii	"TRetro"
.Le35:
	.size	.Ld5, .Le35 - .Ld5

.section .rodata.n_.Ld6
	.balign 4
.Ld6:
	.byte	6
	.ascii	"TAudio"
.Le36:
	.size	.Ld6, .Le36 - .Ld6
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$RETROMALINA_$$_DB
.globl	TC_$RETROMALINA_$$_DB
TC_$RETROMALINA_$$_DB:
	.byte	0
.Le37:
	.size	TC_$RETROMALINA_$$_DB, .Le37 - TC_$RETROMALINA_$$_DB

.section .data.n_TC_$RETROMALINA_$$_SIDTIME
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDTIME
TC_$RETROMALINA_$$_SIDTIME:
	.long	0,0
# [114] timer1:int64=-1;
.Le38:
	.size	TC_$RETROMALINA_$$_SIDTIME, .Le38 - TC_$RETROMALINA_$$_SIDTIME

.section .data.n_TC_$RETROMALINA_$$_TIMER1
	.balign 4
.globl	TC_$RETROMALINA_$$_TIMER1
TC_$RETROMALINA_$$_TIMER1:
	.long	-1,-1
# [115] siddelay:int64=20000;
.Le39:
	.size	TC_$RETROMALINA_$$_TIMER1, .Le39 - TC_$RETROMALINA_$$_TIMER1

.section .data.n_TC_$RETROMALINA_$$_SIDDELAY
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDDELAY
TC_$RETROMALINA_$$_SIDDELAY:
	.long	20000,0
.Le40:
	.size	TC_$RETROMALINA_$$_SIDDELAY, .Le40 - TC_$RETROMALINA_$$_SIDDELAY

.section .data.n_TC_$RETROMALINA_$$_SCJ
	.balign 4
.globl	TC_$RETROMALINA_$$_SCJ
TC_$RETROMALINA_$$_SCJ:
	.long	0
.Le41:
	.size	TC_$RETROMALINA_$$_SCJ, .Le41 - TC_$RETROMALINA_$$_SCJ

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
.Le42:
	.size	TC_$RETROMALINA_$$_ATTACKTABLE, .Le42 - TC_$RETROMALINA_$$_ATTACKTABLE

.section .data.n_TC_$RETROMALINA_$$_SIDCOUNT
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCOUNT
TC_$RETROMALINA_$$_SIDCOUNT:
	.long	1
# [126] sampleclock:integer=0;
.Le43:
	.size	TC_$RETROMALINA_$$_SIDCOUNT, .Le43 - TC_$RETROMALINA_$$_SIDCOUNT

.section .data.n_TC_$RETROMALINA_$$_SAMPLECLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SAMPLECLOCK
TC_$RETROMALINA_$$_SAMPLECLOCK:
	.long	0
# [127] sidclock:integer=0;
.Le44:
	.size	TC_$RETROMALINA_$$_SAMPLECLOCK, .Le44 - TC_$RETROMALINA_$$_SAMPLECLOCK

.section .data.n_TC_$RETROMALINA_$$_SIDCLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCLOCK
TC_$RETROMALINA_$$_SIDCLOCK:
	.long	0
.Le45:
	.size	TC_$RETROMALINA_$$_SIDCLOCK, .Le45 - TC_$RETROMALINA_$$_SIDCLOCK

.section .data.n_TC_$RETROMALINA_$$_RUNNING
	.balign 4
.globl	TC_$RETROMALINA_$$_RUNNING
TC_$RETROMALINA_$$_RUNNING:
	.long	0
.Le46:
	.size	TC_$RETROMALINA_$$_RUNNING, .Le46 - TC_$RETROMALINA_$$_RUNNING

.section .data.n_TC_$RETROMALINA_$$_PAUSE1
.globl	TC_$RETROMALINA_$$_PAUSE1
TC_$RETROMALINA_$$_PAUSE1:
	.byte	0
# [144] procedure initmachine;
.Le47:
	.size	TC_$RETROMALINA_$$_PAUSE1, .Le47 - TC_$RETROMALINA_$$_PAUSE1

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,30
.Ld1:
	.ascii	"C:\\retro\\combinedwaveforms.bin\000"
.Le48:
	.size	.Ld1$strlab, .Le48 - .Ld1$strlab

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,20
.Ld2:
	.ascii	"C:\\retro\\st4font.def\000"
.Le49:
	.size	.Ld2$strlab, .Le49 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,17
.Ld3:
	.ascii	"C:\\retro\\mysz.def\000"
.Le50:
	.size	.Ld3$strlab, .Le50 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,25
.Ld4:
	.ascii	"C:\\retro\\ataripalette.def\000"
.Le51:
	.size	.Ld4$strlab, .Le51 - .Ld4$strlab

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC:
	.long	0
# [859] sc:integer=0;
.Le52:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC, .Le52 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [860] waveform1:word=0;
.Le53:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC, .Le53 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [861] f1:boolean=false;
.Le54:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1, .Le54 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [862] waveform2:word=0;
.Le55:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1, .Le55 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [863] f2:boolean=false;
.Le56:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2, .Le56 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [864] waveform3:word=0;
.Le57:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2, .Le57 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [865] f3:boolean=false;
.Le58:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3, .Le58 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [866] ff:integer=0;
.Le59:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3, .Le59 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.long	0
# [867] filter_resonance2i:integer=0;
.Le60:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF, .Le60 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [868] filter_freqi:integer=0;
.Le61:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I, .Le61 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [869] volume:integer=0;
.Le62:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI, .Le62 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [870] c3off:integer=0;
.Le63:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME, .Le63 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
	.long	0
# [871] fl:integer=0;
.Le64:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF, .Le64 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [909] var i,sid1,sid1l,ind:integer;
.Le65:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL, .Le65 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL

.section .data.n_TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
	.balign 4
TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA:
	.long	0
.Le66:
	.size	TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA, .Le66 - TC_$RETROMALINA$_$AUDIOCALLBACK$LONGINT_$$_AA
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$RETROMALINA_$$_TSRCCONVERT
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TSRCCONVERT
RTTI_$RETROMALINA_$$_TSRCCONVERT:
	.byte	23,11
# [2063] 
	.ascii	"Tsrcconvert"
	.byte	0,0,0,0,3,0,0
	.long	0
	.byte	1,0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_POINTER
	.byte	6
	.ascii	"screen"
	.byte	0
.Le67:
	.size	RTTI_$RETROMALINA_$$_TSRCCONVERT, .Le67 - RTTI_$RETROMALINA_$$_TSRCCONVERT

.section .rodata.n_INIT_$RETROMALINA_$$_TRETRO
	.balign 4
.globl	INIT_$RETROMALINA_$$_TRETRO
INIT_$RETROMALINA_$$_TRETRO:
	.byte	15,6
	.ascii	"TRetro"
	.long	4,0
.Le68:
	.size	INIT_$RETROMALINA_$$_TRETRO, .Le68 - INIT_$RETROMALINA_$$_TRETRO

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
.Le69:
	.size	RTTI_$RETROMALINA_$$_TRETRO, .Le69 - RTTI_$RETROMALINA_$$_TRETRO

.section .rodata.n_INIT_$RETROMALINA_$$_TAUDIO
	.balign 4
.globl	INIT_$RETROMALINA_$$_TAUDIO
INIT_$RETROMALINA_$$_TAUDIO:
	.byte	15,6
	.ascii	"TAudio"
	.long	4,0
.Le70:
	.size	INIT_$RETROMALINA_$$_TAUDIO, .Le70 - INIT_$RETROMALINA_$$_TAUDIO

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
.Le71:
	.size	RTTI_$RETROMALINA_$$_TAUDIO, .Le71 - RTTI_$RETROMALINA_$$_TAUDIO

.section .rodata.n_RTTI_$RETROMALINA_$$_TSAMPLE
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TSAMPLE
RTTI_$RETROMALINA_$$_TSAMPLE:
	.byte	12,7
	.ascii	"TSample"
	.byte	0,0,0
	.long	4,2
	.long	RTTI_$SYSTEM_$$_SMALLINT
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le72:
	.size	RTTI_$RETROMALINA_$$_TSAMPLE, .Le72 - RTTI_$RETROMALINA_$$_TSAMPLE
# End asmlist al_rtti

