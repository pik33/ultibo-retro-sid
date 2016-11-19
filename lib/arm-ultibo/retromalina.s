	.file "retromalina.pas"
# Begin asmlist al_procedures

.section .text.n_retromalina$_$tkbd_$__$$_create$boolean$$tkbd
	.balign 4
.globl	RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD
RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD:
# Temps allocated between r13+12 and r13+252
# [retromalina.pas]
# [207] begin
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
# [210] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj11
# [208] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [209] inherited Create(CreateSuspended);
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

.section .text.n_retromalina$_$tkbd_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TKBD_$__$$_EXECUTE
RETROMALINA$_$TKBD_$__$$_EXECUTE:
# [215] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#4
# Var $self located in register r4
# Var a located in register r6
# Var key located in register r5
# Var q located at r13+0, size=OS_32
	mov	r4,r0
	.balign 4
.Lj25:
# [217] a:=KeyboardReadex(@kbd[0], 8*sizeof(tkeyboarddata),1,q);
	ldr	r0,.Lj28
	mov	r3,r13
	mov	r2,#1
	mov	r1,#96
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r6,r0
# [218] if (a=0) and (q>0) then
	bne	.Lj30
	ldr	r0,[r13]
	cmp	r0,#0
	bls	.Lj30
# [220] key:=ord(kbd[0].charcode);
	ldr	r0,.Lj32
	ldrb	r5,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
# [221] if key<>0 then poke($2060028,key) else poke($2060028,kbd[0].KeyCode and 255);
	cmp	r5,#0
	beq	.Lj34
	and	r1,r5,#255
# Rescheduled
	ldr	r0,.Lj35
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj36
.Lj34:
	ldr	r0,.Lj37
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj35
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj36:
# [222] poke($2060029,kbd[0].modifiers and 255);
	ldr	r0,.Lj28
	ldr	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj40
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [223] poke($206002a,(kbd[0].modifiers shr 8) and 255);
	ldr	r0,.Lj28
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj42
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [224] if kbd[0].modifiers and 16384 <>0 then poke($206002b,1);
	ldr	r0,.Lj28
	ldr	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#16384
	ldrne	r0,.Lj46
	movne	r1,#1
	blne	RETROMALINA_$$_POKE$LONGINT$BYTE
# [225] if key=0 then poke($206002b,peek($206002b) or $2);
	cmp	r5,#0
	bne	.Lj48
	ldr	r0,.Lj46
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	orr	r0,r0,#2
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj46
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj48:
# [226] CleanDataCacheRange($2060000,4096);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj51
# Rescheduled
	ldr	r1,[r1]
	orr	r0,r0,#393216
	cmp	r1,#0
# Rescheduled
# Rescheduled
	ldrne	r2,.Lj51
	movne	r1,#4096
	ldrne	r2,[r2]
	blxne	r2
.Lj30:
# [242] threadsleep(10);
	mov	r0,#10
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [243] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj25
# [245] end;
	add	r13,r13,#4
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj28:
	.long	U_$RETROMALINA_$$_KBD
.Lj32:
	.long	U_$RETROMALINA_$$_KBD+8
.Lj35:
	.long	33947688
.Lj37:
	.long	U_$RETROMALINA_$$_KBD+6
.Lj40:
	.long	33947689
.Lj42:
	.long	33947690
.Lj46:
	.long	33947691
.Lj51:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Le1:
	.size	RETROMALINA$_$TKBD_$__$$_EXECUTE, .Le1 - RETROMALINA$_$TKBD_$__$$_EXECUTE

.section .text.n_retromalina$_$tretro_$__$$_create$boolean$$tretro
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO:
# Temps allocated between r13+12 and r13+252
# [255] begin
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
	bne	.Lj58
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1, #52]
	blx	r1
	str	r0,[r13, #8]
.Lj58:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj55
# [258] end;
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj63
# [256] FreeOnTerminate := True;
	ldr	r0,[r13, #8]
	mov	r1,#1
	strb	r1,[r0, #9]
# [257] inherited Create(CreateSuspended);
	ldrb	r2,[r13]
	ldr	r0,[r13, #8]
	mov	r3,#4194304
	mov	r1,#0
	bl	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$LONGWORD$$TTHREAD
	ldr	r0,[r13, #8]
	cmp	r0,#0
	beq	.Lj69
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj69
# Rescheduled
	ldr	r1,[r13, #8]
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldr	r1,[r1]
	ldr	r1,[r1, #68]
	blx	r1
.Lj69:
.Lj63:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj65
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj71
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj73
	ldr	r0,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Peephole MovLdr2Ldr done
# Rescheduled
	ldr	r2,[r0]
	mvn	r1,#0
	ldr	r2,[r2, #48]
	blx	r2
.Lj73:
	bl	fpc_popaddrstack
	bl	fpc_reraise
.Lj71:
	bl	fpc_popaddrstack
	ldr	r0,[r13, #248]
	cmp	r0,#0
	blne	fpc_raise_nested
	bl	fpc_doneexception
.Lj65:
.Lj55:
	ldr	r0,[r13, #8]
	add	r13,r13,#252
	ldmfd	r13!,{r15}
.Le2:
	.size	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO, .Le2 - RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO

.section .text.n_retromalina$_$tretro_$__$$_execute
	.balign 4
.globl	RETROMALINA$_$TRETRO_$__$$_EXECUTE
RETROMALINA$_$TRETRO_$__$$_EXECUTE:
# [270] begin
	stmfd	r13!,{r4,r14}
# Var $self located in register r4
# Var id located in register r0
	mov	r4,r0
# Rescheduled
# [272] running:=1;
	ldr	r0,.Lj77
	mov	r1,#1
	str	r1,[r0]
# [278] Sleep(1);
	mov	r0,#1
	bl	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
	.balign 4
.Lj78:
# [281] t:=clockgettotal;
	ldr	r0,.Lj81
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj83
	ldr	r0,.Lj81
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj85
# Rescheduled
	ldr	r2,.Lj86
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj87
.Lj83:
# Rescheduled
	ldr	r1,.Lj85
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj86
	mov	r0,#0
	str	r0,[r1]
.Lj87:
# [282] scrconvert16f(p2);
	ldr	r0,.Lj90
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [283] ts:=clockgettotal-t;
	ldr	r0,.Lj81
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj93
	ldr	r0,.Lj81
	ldr	r0,[r0]
	blx	r0
	b	.Lj95
.Lj93:
	mov	r0,#0
	mov	r1,#0
.Lj95:
	ldr	r2,.Lj85
# Rescheduled
	ldr	r3,.Lj86
	ldr	r2,[r2]
	ldr	r12,[r3]
	subs	r3,r0,r2
# Rescheduled
	ldr	r0,.Lj98
	sbc	r1,r1,r12
# Rescheduled
	ldr	r2,.Lj99
	str	r3,[r0]
# Rescheduled
# [284] spritef(p2);
	ldr	r0,.Lj90
	str	r1,[r2]
	ldr	r0,[r0]
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [285] CleanDataCacheRange(integer(p2),9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj90
	orr	r1,r1,#827392
# Rescheduled
	ldr	r2,.Lj102
# Rescheduled
	ldr	r2,[r2]
	ldr	r0,[r0]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj102
	ldrne	r2,[r2]
	blxne	r2
# [286] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [288] FramebufferDeviceSetOffset(fb,0,0,True);
	ldr	r0,.Lj106
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#0
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [289] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj106
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [291] t:=clockgettotal;
	ldr	r0,.Lj81
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj110
	ldr	r0,.Lj81
	ldr	r0,[r0]
	blx	r0
# Rescheduled
	ldr	r3,.Lj85
# Rescheduled
	ldr	r2,.Lj86
	str	r0,[r3]
	str	r1,[r2]
	b	.Lj114
.Lj110:
# Rescheduled
	ldr	r1,.Lj85
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj86
	mov	r1,#0
	str	r1,[r0]
.Lj114:
# [292] scrconvert16f(p2+2304000);
	ldr	r0,.Lj90
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SCRCONVERT16F$POINTER
# [293] ts:=clockgettotal-t;
	ldr	r0,.Lj81
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj120
	ldr	r0,.Lj81
	ldr	r0,[r0]
	blx	r0
	b	.Lj122
.Lj120:
	mov	r0,#0
	mov	r1,#0
.Lj122:
	ldr	r2,.Lj85
# Rescheduled
	ldr	r3,.Lj86
	ldr	r2,[r2]
	ldr	r3,[r3]
	subs	r0,r0,r2
# Rescheduled
	ldr	r12,.Lj98
	sbc	r2,r1,r3
# Rescheduled
	ldr	r1,.Lj99
	str	r0,[r12]
# Rescheduled
# [294] spritef(p2+2304000);
	ldr	r0,.Lj90
	str	r2,[r1]
	ldr	r0,[r0]
	add	r0,r0,#8388608
	add	r0,r0,#827392
	bl	RETROMALINA_$$_SPRITEF$POINTER
# [295] CleanDataCacheRange(integer(p2)+9216000,9216000);
	mov	r1,#8388608
# Rescheduled
	ldr	r0,.Lj90
# Rescheduled
	ldr	r0,[r0]
	orr	r1,r1,#827392
	add	r0,r0,#8388608
# Rescheduled
# Rescheduled
	ldr	r2,.Lj102
	add	r0,r0,#827392
	ldr	r2,[r2]
	cmp	r2,#0
# Rescheduled
	ldrne	r2,.Lj102
	ldrne	r2,[r2]
	blxne	r2
# [296] lpoke($2060000,lpeek($2060000)+1);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	add	r1,r0,#1
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [299] FramebufferDeviceSetOffset(fb,0,1200,True);
	ldr	r0,.Lj106
	ldr	r0,[r0]
	mov	r3,#1
	mov	r2,#1200
	mov	r1,#0
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICESETOFFSET$PFRAMEBUFFERDEVICE$LONGWORD$LONGWORD$BOOLEAN$$LONGWORD
# [300] FramebufferDeviceWaitSync(fb);
	ldr	r0,.Lj106
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEWAITSYNC$PFRAMEBUFFERDEVICE$$LONGWORD
# [303] until terminated;
	ldrb	r0,[r4, #8]
	cmp	r0,#0
	beq	.Lj78
# Rescheduled
# [304] running:=0;
	ldr	r1,.Lj77
	mov	r0,#0
	str	r0,[r1]
# [305] end;
	ldmfd	r13!,{r4,r15}
.Lj77:
	.long	TC_$RETROMALINA_$$_RUNNING
.Lj81:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj85:
	.long	U_$RETROMALINA_$$_T
.Lj86:
	.long	U_$RETROMALINA_$$_T+4
.Lj90:
	.long	U_$RETROMALINA_$$_P2
.Lj98:
	.long	U_$RETROMALINA_$$_TS
.Lj99:
	.long	U_$RETROMALINA_$$_TS+4
.Lj102:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj106:
	.long	U_$RETROMALINA_$$_FB
.Le3:
	.size	RETROMALINA$_$TRETRO_$__$$_EXECUTE, .Le3 - RETROMALINA$_$TRETRO_$__$$_EXECUTE

.section .text.n_retromalina_$$_initmachine
	.balign 4
.globl	RETROMALINA_$$_INITMACHINE
RETROMALINA_$$_INITMACHINE:
# [321] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#4
# Var a located in register r5
# Var i located in register r6
# Var fh2 located in register r0
# Var bb located at r13+0, size=OS_8
# Rescheduled
# [323] fh2:=fileopen('C:\retro\combinedwaveforms.bin',$40);   // load combined waveforms for SID
	ldr	r0,.Lj138
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [324] fileread(fh2,combined,1024);
	ldr	r1,.Lj139
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [325] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [354] fullscreen:=1;
	ldr	r1,.Lj140
	mov	r0,#1
	str	r0,[r1]
# [373] fb:=FramebufferDevicegetdefault;
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETDEFAULT$$PFRAMEBUFFERDEVICE
# Rescheduled
	ldr	r2,.Lj141
# Rescheduled
# [374] FramebufferDeviceRelease(fb);
	ldr	r1,.Lj141
	str	r0,[r2]
	ldr	r0,[r1]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICERELEASE$PFRAMEBUFFERDEVICE$$LONGWORD
# [375] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [376] FramebufferProperties.Depth:=32;
	ldr	r0,.Lj143
	mov	r1,#32
	str	r1,[r0]
# Rescheduled
# [377] FramebufferProperties.PhysicalWidth:=1920;
	ldr	r1,.Lj144
	mov	r0,#1920
	str	r0,[r1]
# Rescheduled
# [378] FramebufferProperties.PhysicalHeight:=1200;
	ldr	r2,.Lj145
	mov	r1,#1200
# Rescheduled
	ldr	r0,.Lj146
	str	r1,[r2]
# [379] FramebufferProperties.VirtualWidth:=FramebufferProperties.PhysicalWidth;
	ldr	r1,[r0, #32]
# Rescheduled
	ldr	r2,.Lj146
	str	r1,[r0, #40]
# [380] FramebufferProperties.VirtualHeight:=FramebufferProperties.PhysicalHeight * 2;
	ldr	r0,[r2, #36]
	mov	r0,r0,lsl #1
# Rescheduled
# [381] FramebufferDeviceAllocate(fb,@FramebufferProperties);
	ldr	r1,.Lj146
	str	r0,[r2, #44]
# Rescheduled
	ldr	r0,.Lj141
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEALLOCATE$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [382] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# Rescheduled
# [383] FramebufferDeviceGetProperties(fb,@FramebufferProperties);
	ldr	r0,.Lj141
	ldr	r1,.Lj146
	ldr	r0,[r0]
	bl	FRAMEBUFFER_$$_FRAMEBUFFERDEVICEGETPROPERTIES$PFRAMEBUFFERDEVICE$PFRAMEBUFFERPROPERTIES$$LONGWORD
# [384] p2:=Pointer(FramebufferProperties.Address);
	ldr	r0,.Lj152
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj153
	str	r0,[r1]
# Rescheduled
# [390] r1:=pointer($2000000);
	ldr	r0,.Lj154
	mov	r1,#33554432
	str	r1,[r0]
# Var i located in register r4
# [391] for i:=$2060000 to $2061000 do poke(i,0);
	mov	r4,#33554432
	orr	r4,r4,#393216
	sub	r4,r4,#1
	.balign 4
.Lj157:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	mov	r0,#33554432
	orr	r0,r0,#397312
	cmp	r4,r0
	blt	.Lj157
# [392] lpoke($2060004,$1000000);
	ldr	r0,.Lj158
	mov	r1,#16777216
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [393] lpoke($2060000,$0000000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# Rescheduled
# [394] fh2:=fileopen('C:\retro\st4font.def',$40);     // 8x16 font
	ldr	r0,.Lj159
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Rescheduled
# [395] fileread(fh2,PInteger($2050000)^,2048);
	ldr	r1,.Lj160
# Var fh2 located in register r4
	mov	r0,r4
	mov	r2,#2048
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [396] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [398] fh2:=fileopen('C:\retro\mysz.def',$40);        // load mouse cursor definition at sprite 8
	ldr	r0,.Lj161
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	mov	r4,r0
# Var fh2 located in register r4
# Var i located in register r6
# [399] for i:=0 to 1023 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj164:
	add	r6,r6,#1
# [401] fileread(fh2,bb,1);
	mov	r1,r13
	mov	r0,r4
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [402] a:=bb;
	ldrb	r5,[r13]
# Peephole LdrMov2Ldr removed superfluous mov
# Peephole FoldShiftProcess done
# [411] end;
	add	r0,r5,r5,lsl #8
# Peephole FoldShiftProcess done
	add	r5,r0,r5,lsl #16
# Peephole DataMov2Data removed superfluous mov
# [404] lpoke($2059000+4*i,a);
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#364544
	mov	r1,r5
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#768
	cmp	r6,r0
	blt	.Lj164
# [406] fileclose(fh2);
	mov	r0,r4
# Var fh2 located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
# [407] thread:=tretro.create(true);            // start frame refreshing thread
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj165
	mov	r1,#1
	bl	RETROMALINA$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
# Rescheduled
	ldr	r2,.Lj166
# Rescheduled
# [408] thread.start;
	ldr	r1,.Lj166
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
# [409] thread2:=tkbd.Create(true);
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj168
	mov	r1,#1
	bl	RETROMALINA$_$TKBD_$__$$_CREATE$BOOLEAN$$TKBD
# Rescheduled
	ldr	r2,.Lj169
# Rescheduled
# [410] thread2.start;
	ldr	r1,.Lj169
	str	r0,[r2]
	ldr	r0,[r1]
	bl	CLASSES$_$TTHREAD_$__$$_START
	add	r13,r13,#4
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj138:
	.long	.Ld1
.Lj139:
	.long	U_$RETROMALINA_$$_COMBINED
.Lj140:
	.long	TC_$RETROMALINA_$$_FULLSCREEN
.Lj141:
	.long	U_$RETROMALINA_$$_FB
.Lj143:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+16
.Lj144:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+32
.Lj145:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+36
.Lj146:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
.Lj152:
	.long	U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES+4
.Lj153:
	.long	U_$RETROMALINA_$$_P2
.Lj154:
	.long	U_$RETROMALINA_$$_R1
.Lj158:
	.long	33947652
.Lj159:
	.long	.Ld2
.Lj160:
	.long	33882112
.Lj161:
	.long	.Ld3
.Lj165:
	.long	VMT_$RETROMALINA_$$_TRETRO
.Lj166:
	.long	U_$RETROMALINA_$$_THREAD
.Lj168:
	.long	VMT_$RETROMALINA_$$_TKBD
.Lj169:
	.long	U_$RETROMALINA_$$_THREAD2
.Le4:
	.size	RETROMALINA_$$_INITMACHINE, .Le4 - RETROMALINA_$$_INITMACHINE

.section .text.n_retromalina_$$_stopmachine
	.balign 4
.globl	RETROMALINA_$$_STOPMACHINE
RETROMALINA_$$_STOPMACHINE:
# [422] begin
# Rescheduled
# [423] thread.terminate;
	ldr	r0,.Lj173
	stmfd	r13!,{r14}
	ldr	r0,[r0]
	bl	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 4
.Lj174:
# [424] repeat until running=0;
	ldr	r0,.Lj177
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj174
# [425] end;
	ldmfd	r13!,{r15}
.Lj173:
	.long	U_$RETROMALINA_$$_THREAD
.Lj177:
	.long	TC_$RETROMALINA_$$_RUNNING
.Le5:
	.size	RETROMALINA_$$_STOPMACHINE, .Le5 - RETROMALINA_$$_STOPMACHINE

.section .text.n_retromalina_$$_gettime$$int64
	.balign 4
.globl	RETROMALINA_$$_GETTIME$$INT64
RETROMALINA_$$_GETTIME$$INT64:
# Var $result located in register r0:r2
# [431] begin
# [434] end;
	mov	r1,r0
	mov	r0,r2
	bx	r14
.Le6:
	.size	RETROMALINA_$$_GETTIME$$INT64, .Le6 - RETROMALINA_$$_GETTIME$$INT64

.section .text.n_retromalina_$$_poke$longint$byte
	.balign 4
.globl	RETROMALINA_$$_POKE$LONGINT$BYTE
RETROMALINA_$$_POKE$LONGINT$BYTE:
# Var addr located in register r0
# Var b located in register r1
# [444] begin
# Var addr located in register r0
# Var b located in register r1
# [445] PByte(addr)^:=b;
	strb	r1,[r0]
# [446] end;
	bx	r14
.Le7:
	.size	RETROMALINA_$$_POKE$LONGINT$BYTE, .Le7 - RETROMALINA_$$_POKE$LONGINT$BYTE

.section .text.n_retromalina_$$_dpoke$longint$word
	.balign 4
.globl	RETROMALINA_$$_DPOKE$LONGINT$WORD
RETROMALINA_$$_DPOKE$LONGINT$WORD:
# Var addr located in register r0
# Var w located in register r1
# [450] begin
# [451] PWord(addr and $FFFFFFFE)^:=w;
	bic	r0,r0,#1
# Var w located in register r1
	strh	r1,[r0]
# [452] end;
	bx	r14
.Le8:
	.size	RETROMALINA_$$_DPOKE$LONGINT$WORD, .Le8 - RETROMALINA_$$_DPOKE$LONGINT$WORD

.section .text.n_retromalina_$$_lpoke$longint$longword
	.balign 4
.globl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
RETROMALINA_$$_LPOKE$LONGINT$LONGWORD:
# Var addr located in register r0
# Var c located in register r1
# [456] begin
# [457] PCardinal(addr and $FFFFFFFC)^:=c;
	bic	r0,r0,#3
# Var c located in register r1
	str	r1,[r0]
# [458] end;
	bx	r14
.Le9:
	.size	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD, .Le9 - RETROMALINA_$$_LPOKE$LONGINT$LONGWORD

.section .text.n_retromalina_$$_slpoke$longint$longint
	.balign 4
.globl	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT
RETROMALINA_$$_SLPOKE$LONGINT$LONGINT:
# Var addr located in register r0
# Var i located in register r1
# [462] begin
# [463] PInteger(addr and $FFFFFFFC)^:=i;
	bic	r0,r0,#3
# Var i located in register r1
	str	r1,[r0]
# [464] end;
	bx	r14
.Le10:
	.size	RETROMALINA_$$_SLPOKE$LONGINT$LONGINT, .Le10 - RETROMALINA_$$_SLPOKE$LONGINT$LONGINT

.section .text.n_retromalina_$$_peek$longint$$byte
	.balign 4
.globl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
RETROMALINA_$$_PEEK$LONGINT$$BYTE:
# Var addr located in register r0
# Var $result located in register r0
# [468] begin
# Var addr located in register r0
# Var $result located in register r0
# [469] peek:=Pbyte(addr)^;
	ldrb	r0,[r0]
# [470] end;
	bx	r14
.Le11:
	.size	RETROMALINA_$$_PEEK$LONGINT$$BYTE, .Le11 - RETROMALINA_$$_PEEK$LONGINT$$BYTE

.section .text.n_retromalina_$$_dpeek$longint$$word
	.balign 4
.globl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
RETROMALINA_$$_DPEEK$LONGINT$$WORD:
# Var addr located in register r0
# Var $result located in register r0
# [474] begin
# [475] dpeek:=PWord(addr and $FFFFFFFE)^;
	bic	r0,r0,#1
# Var $result located in register r0
	ldrh	r0,[r0]
# [476] end;
	bx	r14
.Le12:
	.size	RETROMALINA_$$_DPEEK$LONGINT$$WORD, .Le12 - RETROMALINA_$$_DPEEK$LONGINT$$WORD

.section .text.n_retromalina_$$_lpeek$longint$$longword
	.balign 4
.globl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD:
# Var addr located in register r0
# Var $result located in register r0
# [480] begin
# [481] lpeek:=PCardinal(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [482] end;
	bx	r14
.Le13:
	.size	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD, .Le13 - RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD

.section .text.n_retromalina_$$_slpeek$longint$$longint
	.balign 4
.globl	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT
RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT:
# Var addr located in register r0
# Var $result located in register r0
# [486] begin
# [487] slpeek:=PInteger(addr and $FFFFFFFC)^;
	bic	r0,r0,#3
# Var $result located in register r0
	ldr	r0,[r0]
# [488] end;
	bx	r14
.Le14:
	.size	RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT, .Le14 - RETROMALINA_$$_SLPEEK$LONGINT$$LONGINT

.section .text.n_retromalina_$$_blit$crc5a667533
	.balign 4
.globl	RETROMALINA_$$_BLIT$crc5A667533
RETROMALINA_$$_BLIT$crc5A667533:
# Temps allocated between r11-68 and r11-44
# [498] begin
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
# Rescheduled
	ldr	r0,[r11, #8]
	ldr	r6,[r11, #4]
	str	r0,[r11, #-56]
	ldr	r0,[r11, #12]
	str	r0,[r11, #-52]
# Rescheduled
	ldr	r0,[r11, #20]
	ldr	r5,[r11, #16]
	str	r0,[r11, #-68]
	ldr	r0,[r11, #24]
	str	r0,[r11, #-64]
# [499] if lpeek($2060008)<16 then
	ldr	r0,.Lj198
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	cmp	r0,#16
	bcs	.Lj200
# [501] from:=from+x;
	ldr	r1,[r11, #-48]
	add	r0,r4,r1
	str	r0,[r11, #-48]
# [502] too:=too+x2;
	add	r10,r6,r10
# Peephole DataMov2Data removed superfluous mov
# [503] for i:=0 to lines-1 do
	sub	r9,r5,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r8,#0
	cmp	r9,r8
	blt	.Lj202
	sub	r8,r8,#1
	.balign 4
.Lj203:
# Rescheduled
# [505] b2:=too+bpl2*(i+y2);
	ldr	r0,[r11, #-56]
	add	r8,r8,#1
# MulAdd2MLA done
# Rescheduled
	ldr	r2,[r11, #-64]
	add	r1,r0,r8
# Peephole DataMov2Data removed superfluous mov
# Rescheduled
# [506] b1:=from+bpl1*(i+y);
	ldr	r0,[r11, #-60]
	mla	r6,r2,r1,r10
# Rescheduled
	ldr	r2,[r11, #-68]
	add	r1,r0,r8
	mul	r0,r2,r1
	ldr	r1,[r11, #-48]
	add	r7,r1,r0
# Peephole DataMov2Data removed superfluous mov
# [507] for j:=0 to length-1 do
	ldr	r1,[r11, #-52]
	sub	r4,r1,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r5,#0
	cmp	r4,r5
	blt	.Lj205
	sub	r5,r5,#1
	.balign 4
.Lj206:
	add	r5,r5,#1
# [508] poke(b2+j,peek(b1+j));
	add	r0,r5,r7
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0
	add	r0,r5,r6
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	cmp	r4,r5
	bgt	.Lj206
.Lj205:
	cmp	r9,r8
	bgt	.Lj203
.Lj202:
.Lj200:
# [512] end;
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj198:
	.long	33947656
.Le15:
	.size	RETROMALINA_$$_BLIT$crc5A667533, .Le15 - RETROMALINA_$$_BLIT$crc5A667533

.section .text.n_retromalina_$$_scrconvert16f$pointer
	.balign 4
.globl	RETROMALINA_$$_SCRCONVERT16F$POINTER
RETROMALINA_$$_SCRCONVERT16F$POINTER:
# [525] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var e located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [526] a:=$2000000; // TODO! a:=0! Get a screen pointer from sys var !
	mov	r0,#33554432
# Rescheduled
# [527] e:=raml^[$18003];
	ldr	r1,.Lj216
	str	r0,[r11, #-52]
# Rescheduled
# Rescheduled
	ldr	r0,[r1]
	ldr	r2,.Lj217
	ldr	r0,[r0, r2]
	str	r0,[r11, #-56]
# [530] stmfd r13!,{r0-r12}   //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [531] ldr r1,a
	ldr	r1,[r11, #-52]
# [532] add r1,#0x1000000
	add	r1,#16777216
# [533] mov r6,r1
	mov	r6,r1
# Rescheduled
# [535] ldr r2,screen
	ldr	r2,[r11, #-48]
# [534] add r6,#1
	add	r6,#1
# [536] mov r12,r2
	mov	r12,r2
# Rescheduled
# [538] ldr r3,a
	ldr	r3,[r11, #-52]
# [537] add r12,#4
	add	r12,#4
# [539] add r3,#0x10000
	add	r3,#65536
# [540] mov r5,r2
	mov	r5,r2
# Rescheduled
# [543] ldr r9,e
	ldr	r9,[r11, #-56]
# [542] add r5,#307200
	add	r5,#307200
# [544] mov r10,r9
	mov	r10,r9
.Lj209:
# [545] p10:            str r9,[r2],#8
	str	r9,[r2], #8
# [546] str r10,[r12],#8
	str	r10,[r12], #8
# [547] str r9,[r2],#8
	str	r9,[r2], #8
# [548] str r10,[r12],#8
	str	r10,[r12], #8
# [549] cmp r2,r5
	cmp	r2,r5
# [550] blt p10
	blt	.Lj209
# [551] mov r0,#1120
	mov	r0,#1120
.Lj210:
# Rescheduled
# [554] ldr r9,e
	ldr	r9,[r11, #-56]
# [553] p11:            add r5,#256
	add	r5,#256
# [555] mov r10,r9
	mov	r10,r9
.Lj211:
# [556] p0:             str r9,[r2],#8
	str	r9,[r2], #8
# [557] str r10,[r12],#8
	str	r10,[r12], #8
# [558] str r9,[r2],#8
	str	r9,[r2], #8
# [559] str r10,[r12],#8
	str	r10,[r12], #8
# [560] cmp r2,r5
	cmp	r2,r5
# [561] blt p0
	blt	.Lj211
# [563] add r5,#7168
	add	r5,#7168
.Lj212:
# [564] p1:             ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [565] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [566] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [567] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [568] str r9,[r2],#8
	str	r9,[r2], #8
# [569] str r10,[r12],#8
	str	r10,[r12], #8
# [570] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [571] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [572] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [573] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [574] str r9,[r2],#8
	str	r9,[r2], #8
# [575] str r10,[r12],#8
	str	r10,[r12], #8
# [576] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [577] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [578] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [579] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [580] str r9,[r2],#8
	str	r9,[r2], #8
# [581] str r10,[r12],#8
	str	r10,[r12], #8
# [582] ldrb r7,[r1],#2
	ldrb	r7,[r1], #2
# [583] ldrb r8,[r6],#2
	ldrb	r8,[r6], #2
# [584] ldr r9,[r3,r7,lsl #2]
	ldr	r9,[r3, r7, lsl #2]
# [585] ldr r10,[r3,r8,lsl #2]
	ldr	r10,[r3, r8, lsl #2]
# [586] str r9,[r2],#8
	str	r9,[r2], #8
# [587] str r10,[r12],#8
	str	r10,[r12], #8
# [588] cmp r2,r5
	cmp	r2,r5
# [589] blt p1
	blt	.Lj212
# Rescheduled
# [592] ldr r9,e
	ldr	r9,[r11, #-56]
# [591] add r5,#256
	add	r5,#256
# [593] mov r10,r9
	mov	r10,r9
.Lj213:
# [594] p002:           str r9,[r2],#8
	str	r9,[r2], #8
# [595] str r10,[r12],#8
	str	r10,[r12], #8
# [596] str r9,[r2],#8
	str	r9,[r2], #8
# [597] str r10,[r12],#8
	str	r10,[r12], #8
# [598] cmp r2,r5
	cmp	r2,r5
# [599] blt p002
	blt	.Lj213
# [600] subs r0,#1
	subs	r0,#1
# [601] bne p11
	bne	.Lj210
# Rescheduled
# [604] ldr r9,e
	ldr	r9,[r11, #-56]
# [603] add r5,#307200
	add	r5,#307200
# [605] mov r10,r9
	mov	r10,r9
.Lj214:
# [606] p12:            str r9,[r2],#8
	str	r9,[r2], #8
# [607] str r10,[r12],#8
	str	r10,[r12], #8
# [608] str r9,[r2],#8
	str	r9,[r2], #8
# [609] str r10,[r12],#8
	str	r10,[r12], #8
# [610] cmp r2,r5
	cmp	r2,r5
# [611] blt p12
	blt	.Lj214
# [612] p999:           ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [616] end;
	ldmea	r11,{r11,r13,r15}
.Lj216:
	.long	U_$RETROMALINA_$$_R1
.Lj217:
	.long	393228
.Le16:
	.size	RETROMALINA_$$_SCRCONVERT16F$POINTER, .Le16 - RETROMALINA_$$_SCRCONVERT16F$POINTER

.section .text.n_retromalina_$$_spritef$pointer
	.balign 4
RETROMALINA_$$_SPRITEF$POINTER:
# [627] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#56
# Var screen located at r11-48, size=OS_32
# Var a located at r11-52, size=OS_S32
# Var spritebase located at r11-56, size=OS_S32
	str	r0,[r11, #-48]
# [628] a:=$2000000;
	mov	r0,#33554432
	str	r0,[r11, #-52]
# [629] spritebase:=$60040;
	mov	r0,#64
	orr	r0,r0,#393216
	str	r0,[r11, #-56]
# [632] stmfd r13!,{r0-r12}     //Push registers
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [633] mov r12,#0
	mov	r12,#0
# Rescheduled
# Rescheduled
# [635] ldr r0,spritebase
	ldr	r0,[r11, #-56]
# [636] ldr r1,a
	ldr	r1,[r11, #-52]
# [637] add r0,r1
	add	r0,r1
.Lj220:
# [638] p103:          ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [639] mov r2,r1               // sprite 0 position
	mov	r2,r1
# Rescheduled
# [641] ldr r5,p100
	ldr	r5,.Lj221
# [640] mov r3,r1
	mov	r3,r1
# [642] and r2,r5               // x pos
	and	r2,r5
# Rescheduled
# [644] ldr r4,p100+4
	ldr	r4,.Lj221+4
# [643] lsl r2,#2
	lsl	r2,#2
# [645] and r3,r4
	and	r3,r4
# [646] lsr r3,#16              // y pos
	lsr	r3,#16
# [647] cmp r2,#8192
	cmp	r2,#8192
# [648] ble p104
	ble	.Lj222
# [649] add r12,#1
	add	r12,#1
# [650] add r0,#4
	add	r0,#4
# [651] cmp r12,#8
	cmp	r12,#8
# [652] bge p999
	bge	.Lj223
# [653] b p103
	b	.Lj220
.Lj222:
# [655] p104:          ldr r4,p100+8
	ldr	r4,.Lj221+8
# [656] mul r3,r3,r4
	mul	r3,r3,r4
# Rescheduled
# [658] ldr r4,screen
	ldr	r4,[r11, #-48]
# [657] add r3,r2      // sprite pos
	add	r3,r2
# [659] add r3,r4      // pointer to upper left sprite pixel in r3
	add	r3,r4
# [660] ldr r4,p100+12
	ldr	r4,.Lj221+12
# Rescheduled
# [662] ldr r5,a
	ldr	r5,[r11, #-52]
# [661] add r4,r4,r12,lsl #12
	add	r4,r4,r12,lsl #12
# Rescheduled
# [665] ldr r1,[r0],#4
	ldr	r1,[r0], #4
# [663] add r4,r5      //pointer to sprite 0 data
	add	r4,r5
# Rescheduled
# [667] ldr r5,p100
	ldr	r5,.Lj221
# [666] mov r2,r1
	mov	r2,r1
# [668] and r2,r5
	and	r2,r5
# [669] lsr r1,#16
	lsr	r1,#16
# [670] cmp r1,#8
	cmp	r1,#8
# [671] movgt r1,#8
	movgt	r1,#8
# [672] cmp r2,#8
	cmp	r2,#8
# [673] movgt r2,#8
	movgt	r2,#8
# [674] cmp r1,#1
	cmp	r1,#1
# [675] movle r1,#1
	movle	r1,#1
# [676] cmp r2,#1
	cmp	r2,#1
# [677] movle r2,#1
	movle	r2,#1
# [678] mov r7,r2
	mov	r7,r2
# [679] mov r8,#128
	mov	r8,#128
# [680] mul r8,r8,r2
	mul	r8,r8,r2
# [681] mov r9,#32
	mov	r9,#32
# [682] mul r9,r9,r1 //y zoom
	mul	r9,r9,r1
# [683] mov r10,r1
	mov	r10,r1
# [684] mov r6,#32
	mov	r6,#32
.Lj224:
# [685] p101:          ldr r5,[r4],#4
	ldr	r5,[r4], #4
.Lj225:
# [686] p102:          cmp r5,#0
	cmp	r5,#0
# [687] strne r5,[r3],#4
	strne	r5,[r3], #4
# [688] addeq r3,#4
	addeq	r3,#4
# [689] subs r7,#1
	subs	r7,#1
# [690] bne p102
	bne	.Lj225
# [691] mov r7,r2
	mov	r7,r2
# [692] subs r6,#1
	subs	r6,#1
# [693] bne p101
	bne	.Lj224
# [694] add r3,#7680
	add	r3,#7680
# [695] sub r3,r8
	sub	r3,r8
# [696] subs r10,#1
	subs	r10,#1
# [697] subne r4,#128
	subne	r4,#128
# [698] addeq r10,r1
	addeq	r10,r1
# [699] mov r6,#32
	mov	r6,#32
# [700] subs r9,#1
	subs	r9,#1
# [701] bne p101
	bne	.Lj224
# [702] add r12,#1
	add	r12,#1
# [703] cmp r12,#8
	cmp	r12,#8
# [704] bne p103
	bne	.Lj220
# [705] b p999
	b	.Lj223
.Lj221:
	.long	65535
	.long	-65536
	.long	7680
	.long	335872
.Lj223:
# [712] p999:          ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [714] end;
	ldmea	r11,{r11,r13,r15}
.Le17:
	.size	RETROMALINA_$$_SPRITEF$POINTER, .Le17 - RETROMALINA_$$_SPRITEF$POINTER

.section .text.n_retromalina_$$_setataripallette$longint
	.balign 4
.globl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
RETROMALINA_$$_SETATARIPALLETTE$LONGINT:
# [720] begin
	stmfd	r13!,{r4,r5,r14}
# Var bank located in register r4
# Var fh located in register r0
	mov	r4,r0
# Rescheduled
# [721] fh:=fileopen('C:\retro\ataripalette.def',$40);
	ldr	r0,.Lj228
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
# Var fh located in register r5
# Rescheduled
# Peephole FoldShiftProcess done
# Rescheduled
# [722] fileread(fh,Pinteger($2010000+1024*bank)^,1024);
	ldr	r1,.Lj229
	mov	r5,r0
# [724] end;
	add	r1,r1,r4,lsl #10
# Var fh located in register r5
	mov	r0,r5
	mov	r2,#1024
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [723] fileclose(fh);
	mov	r0,r5
# Var fh located in register r0
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	ldmfd	r13!,{r4,r5,r15}
.Lj228:
	.long	.Ld4
.Lj229:
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
# [728] begin
# Rescheduled
# [729] raml^[$4000+256*bank+c]+=(mask shl 24);
	ldr	r3,.Lj232
	mov	r12,r2,lsl #24
	ldr	r2,[r3]
	mov	r1,r1,lsl #8
	add	r1,r1,#16384
	add	r0,r0,r1
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r0, lsl #2]
# Rescheduled
	ldr	r2,.Lj232
	add	r3,r1,r12
	ldr	r1,[r2]
# Peephole FoldShiftLdrStr done
	str	r3,[r1, r0, lsl #2]
# [730] end;
	bx	r14
.Lj232:
	.long	U_$RETROMALINA_$$_R1
.Le19:
	.size	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT, .Le19 - RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_cls$longint
	.balign 4
.globl	RETROMALINA_$$_CLS$LONGINT
RETROMALINA_$$_CLS$LONGINT:
# [737] begin
	stmfd	r13!,{r4,r5,r6,r14}
# Var c located in register r4
# Var c2 located in register r0
# Var i located in register r6
# Var l located in register r5
# Var c3 located in register r4
# Var c located in register r0
# [738] c:=c mod 256;
	mov	r1,r0,asr #31
	eor	r0,r0,r1
	sub	r0,r0,r1
	and	r0,r0,#255
	eor	r0,r1,r0
	sub	r4,r0,r1
# Var c located in register r4
# Rescheduled
# [739] l:=(lpeek($2060020)*lpeek($2060024)) div 4 ;
	ldr	r0,.Lj236
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
# Rescheduled
	ldr	r1,.Lj237
	mov	r5,r0
	mov	r0,r1
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mul	r0,r0,r5
	mov	r5,r0,lsr #2
# Var l located in register r5
# Peephole FoldShiftProcess done
# [743] end;
	add	r1,r4,r4,lsl #8
# Peephole FoldShiftProcess done
	add	r1,r1,r4,lsl #16
# Peephole FoldShiftProcess done
	add	r4,r1,r4,lsl #24
# Var c3 located in register r4
# Var l located in register r5
# Var i located in register r6
# [741] for i:=0 to l do lpoke($3000000+4*i,c3); // TODO Use screen pointer !!!!
	mov	r6,#0
	cmp	r5,r6
	blt	.Lj239
	sub	r6,r6,#1
	.balign 4
.Lj240:
	add	r6,r6,#1
	mov	r0,r6,lsl #2
	sub	r0,r0,#-50331648
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r5,r6
	bgt	.Lj240
.Lj239:
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj236:
	.long	33947680
.Lj237:
	.long	33947684
.Le20:
	.size	RETROMALINA_$$_CLS$LONGINT, .Le20 - RETROMALINA_$$_CLS$LONGINT

.section .text.n_retromalina_$$_putpixel$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT:
# [755] begin
	stmfd	r13!,{r14}
# Var x located in register r0
# Var y located in register r1
# Var color located in register r2
# Var adr located in register r0
# [756] adr:=$3000000+x+1792*y; if adr<$3FFFFFF then poke(adr,color);
	mov	r3,#1792
	mul	r1,r1,r3
	sub	r0,r0,#-50331648
	add	r0,r0,r1
# Var adr located in register r0
	mvn	r1,#-67108864
	cmp	r0,r1
	andlt	r1,r2,#255
	bllt	RETROMALINA_$$_POKE$LONGINT$BYTE
# [757] end;
	ldmfd	r13!,{r15}
.Le21:
	.size	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT, .Le21 - RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [773] begin
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
# [775] if x<0 then x:=0;
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-48]
# [776] if x>1792 then x:=1792;
	ldr	r0,[r11, #-48]
	cmp	r0,#1792
	movgt	r0,#1792
	strgt	r0,[r11, #-48]
# [777] if y<0 then y:=0;
	ldr	r0,[r11, #-52]
	cmp	r0,#0
	movlt	r0,#0
	strlt	r0,[r11, #-52]
# [778] if y>1120 then y:=1120;
	ldr	r0,[r11, #-52]
	cmp	r0,#1120
	movgt	r0,#1120
	strgt	r0,[r11, #-52]
# Rescheduled
# Rescheduled
# [779] if x+l>1792 then l:=1792-x-1;
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-56]
	add	r0,r1,r0
	cmp	r0,#1792
	ble	.Lj257
	ldr	r0,[r11, #-48]
	mov	r1,#1792
	sub	r0,r1,r0
	sub	r0,r0,#1
	str	r0,[r11, #-56]
.Lj257:
# Rescheduled
# Rescheduled
# [780] if y+h>1120 then h:=1120-y-1 ;
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	cmp	r0,#1120
	ble	.Lj259
	ldr	r1,[r11, #-52]
	mov	r0,#1120
	sub	r0,r0,r1
	sub	r0,r0,#1
	str	r0,[r11, #-60]
.Lj259:
# Rescheduled
# Rescheduled
# [781] for j:=y to y+h-1 do begin
	ldr	r0,[r11, #-52]
	ldr	r1,[r11, #-60]
	add	r0,r1,r0
	sub	r4,r0,#1
# Rescheduled
	ldr	r0,[r11, #-52]
	str	r0,[r11, #-76]
# Peephole StrLdr2StrMov 1 done
	cmp	r4,r0
	blt	.Lj261
	ldr	r0,[r11, #-76]
	sub	r0,r0,#1
	str	r0,[r11, #-76]
	.balign 4
.Lj262:
	ldr	r0,[r11, #-76]
	add	r0,r0,#1
	str	r0,[r11, #-76]
# [788] stmfd r13!,{r0-r2}     //Push registers
	stmfd	r13!,{r0,r1,r2}
# Rescheduled
# [790] ldr r1,j
	ldr	r1,[r11, #-76]
# [789] mov r0,#1792
	mov	r0,#1792
# [791] mul r0,r0,r1
	mul	r0,r0,r1
# [792] add r0,#0x3000000      //Todo - screen pointer!
	add	r0,#50331648
# Rescheduled
# [794] ldr r2,x
	ldr	r2,[r11, #-48]
# [793] ldr r1,c
	ldr	r1,[r11, #-64]
# [795] add r0,r2
	add	r0,r2
# [796] ldr r2,l
	ldr	r2,[r11, #-56]
.Lj247:
# [797] p1: strb r1,[r0]
	strb	r1,[r0]
# [798] add r0,#1
	add	r0,#1
# [799] subs r2,#1
	subs	r2,#1
# [800] bne p1
	bne	.Lj247
# [801] ldmfd r13!,{r0-r2}
	ldmfd	r13!,{r0,r1,r2}
	ldr	r0,[r11, #-76]
	cmp	r4,r0
	bgt	.Lj262
.Lj261:
# [806] end;
	ldmea	r11,{r4,r11,r13,r15}
.Le22:
	.size	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le22 - RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_box2$longint$longint$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
# [818] begin
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
# [819] if (x1<x2) and (y1<y2) then
	cmp	r0,r2
	bge	.Lj266
	cmp	r1,r3
	bge	.Lj266
# [820] box(x1,y1,x2-x1+1, y2-y1+1,color);
	str	r12,[r13]
	sub	r3,r3,r1
	add	r3,r3,#1
	sub	r2,r2,r0
	add	r2,r2,#1
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj266:
# [821] end;
	ldmea	r11,{r11,r13,r15}
.Le23:
	.size	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT, .Le23 - RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_putchar$longint$longint$char$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
# [838] begin
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
# [839] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r7,r0,#33554432
	add	r7,r7,#327680
# Var start located in register r7
# Var i located in register r10
# [840] for i:=0 to 15 do
	mov	r10,#0
	sub	r10,r10,#1
	.balign 4
.Lj272:
	add	r10,r10,#1
# [842] b:=peek(start+i);
	add	r0,r10,r7
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r8,r0
# [843] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj275:
	add	r9,r9,#1
# [845] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [849] end;
	ands	r0,r8,r0,lsl r9
# [846] putpixel(x+j,y+i,col);
	addne	r1,r10,r5
	addne	r0,r9,r4
	movne	r2,r6
	blne	RETROMALINA_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	cmp	r9,#7
	blt	.Lj275
	cmp	r10,#15
	blt	.Lj272
	ldmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r15}
.Le24:
	.size	RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT, .Le24 - RETROMALINA_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT

.section .text.n_retromalina_$$_putcharz$longint$longint$char$longint$longint$longint
	.balign 4
.globl	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
# Temps allocated between r11-68 and r11-44
# [858] begin
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
# [859] start:=$2050000+16*ord(ch);
	mov	r0,r2,lsl #4
	add	r0,r0,#33554432
	add	r10,r0,#327680
# Var start located in register r10
# Peephole DataMov2Data removed superfluous mov
# Var i located in register r0
# [860] for i:=0 to 15 do
	mov	r0,#0
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-48]
	.balign 4
.Lj282:
	ldr	r0,[r11, #-48]
	add	r0,r0,#1
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 2 done
# [862] b:=peek(start+i);
	mov	r1,r0
	add	r0,r1,r10
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r8,r0
# [863] for j:=0 to 7 do
	mov	r9,#0
	sub	r9,r9,#1
	.balign 4
.Lj285:
	add	r9,r9,#1
# [865] if (b and (1 shl j))<>0 then
	mov	r0,#1
# Peephole FoldShiftProcess done
# Peephole OpCmp2OpS done
# [871] end;
	ands	r0,r8,r0,lsl r9
	beq	.Lj287
# [866] for k:=0 to yz-1 do
	ldr	r0,[r11, #-68]
	sub	r6,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r6,r7
	blt	.Lj289
	sub	r7,r7,#1
	.balign 4
.Lj290:
# Rescheduled
# [867] for l:=0 to xz-1 do
	ldr	r0,[r11, #-64]
	add	r7,r7,#1
	sub	r5,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r4,#0
	cmp	r5,r4
	blt	.Lj292
	sub	r4,r4,#1
	.balign 4
.Lj293:
	add	r4,r4,#1
# Rescheduled
# [868] putpixel(x+j*xz+l,y+i*yz+k,col);
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
	bgt	.Lj293
.Lj292:
	cmp	r6,r7
	bgt	.Lj290
.Lj289:
.Lj287:
	cmp	r9,#7
	blt	.Lj285
	ldr	r0,[r11, #-48]
	cmp	r0,#15
	blt	.Lj282
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Le25:
	.size	RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT, .Le25 - RETROMALINA_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT

.section .text.n_retromalina_$$_outtextxy$longint$longint$ansistring$longint
	.balign 4
.globl	RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETROMALINA_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
# Temps allocated between r13+4 and r13+124
# [877] begin
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
# [878] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	add	r2,r13,#4
	add	r1,r13,#16
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #120]
	cmp	r0,#0
	bne	.Lj296
	ldr	r7,[r13]
	cmp	r7,#0
	ldrne	r7,[r7, #-4]
	mov	r8,#1
	cmp	r7,r8
	blt	.Lj300
	sub	r8,r8,#1
	.balign 4
.Lj301:
	add	r8,r8,#1
# Peephole FoldShiftProcess done
# [879] end;
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
	bgt	.Lj301
.Lj300:
.Lj296:
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
# [885] begin
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
# [886] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	sub	r2,r11,#60
	sub	r1,r11,#164
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-168]
	cmp	r0,#0
	bne	.Lj304
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r8,r0,#1
# Peephole DataMov2Data removed superfluous mov
	mov	r7,#0
	cmp	r8,r7
	blt	.Lj308
	sub	r7,r7,#1
	.balign 4
.Lj309:
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
	bgt	.Lj309
.Lj308:
.Lj304:
	bl	fpc_popaddrstack
# [887] end;
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
# [893] begin
# [896] end;
	bx	r14
.Le28:
	.size	RETROMALINA_$$_SCROLLUP, .Le28 - RETROMALINA_$$_SCROLLUP

.section .text.n_retromalina_$$_sid$longint$$tsample
	.balign 4
.globl	RETROMALINA_$$_SID$LONGINT$$TSAMPLE
RETROMALINA_$$_SID$LONGINT$$TSAMPLE:
# [975] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#160
# Var mode located at r11-48, size=OS_S32
# Var $result located at r11-52, size=OS_32
# Var i located at r11-56, size=OS_S32
# Var sid1 located at r11-60, size=OS_S32
# Var sid1l located at r11-64, size=OS_S32
# Var ind located at r11-68, size=OS_S32
# Var pp1 located at r11-72, size=OS_8
# Var pp2 located at r11-76, size=OS_8
# Var pp3 located at r11-80, size=OS_8
# Var wv1ii located at r11-88, size=OS_S64
# Var wv2ii located at r11-96, size=OS_S64
# Var wv3ii located at r11-104, size=OS_S64
# Var wv1iii located at r11-108, size=OS_S32
# Var wv2iii located at r11-112, size=OS_S32
# Var wv3iii located at r11-116, size=OS_S32
# Var fii located at r11-120, size=OS_S32
# Var fi2i located at r11-124, size=OS_S32
# Var fi3i located at r11-128, size=OS_S32
# Var fri located at r11-132, size=OS_S32
# Var ffi located at r11-136, size=OS_S32
# Var pa1i located at r11-140, size=OS_S32
# Var pa2i located at r11-144, size=OS_S32
# Var pa3i located at r11-148, size=OS_S32
# Var vol located at r11-152, size=OS_S32
# Var fll located at r11-156, size=OS_S32
# Var sidptr located at r11-160, size=OS_32
	str	r0,[r11, #-52]
# Rescheduled
# Peephole StrLdr2StrMov 1 done
# Rescheduled
# [976] sidptr:=@siddata;
	ldr	r0,.Lj361
	str	r1,[r11, #-48]
	str	r0,[r11, #-160]
# [977] if mode=1 then  // get regs
	cmp	r1,#1
	bne	.Lj363
# [980] siddata[$56]:=ramb^[$70003];
	ldr	r0,.Lj364
# Rescheduled
	ldr	r1,.Lj365
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj366
	ldrb	r0,[r0, r1]
# Rescheduled
# [981] siddata[$57]:=ramb^[$70004];
	ldr	r1,.Lj364
	str	r0,[r2]
# Rescheduled
	ldr	r2,.Lj368
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj369
	ldrb	r0,[r0, r2]
# Rescheduled
# [982] siddata[$58]:=ramb^[$70005];
	ldr	r1,.Lj364
	str	r0,[r3]
# Rescheduled
	ldr	r2,.Lj371
	ldr	r0,[r1]
# Rescheduled
	ldr	r1,.Lj372
	ldrb	r0,[r0, r2]
# Rescheduled
# [983] siddata[0]:=round(1.0263*(16*ramb^[$D400]+4096*ramb^[$d401])); //freq1
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj374
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj364
	mov	r3,r0,lsl #4
# Rescheduled
# Rescheduled
	ldr	r0,[r1]
	ldr	r2,.Lj376
	ldrb	r0,[r0, r2]
# Peephole FoldShiftProcess done
# [1903] end;
	add	r0,r3,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj377
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj361
# Rescheduled
# [984] siddata[$10]:=round(1.0263*(16*ramb^[$d407]+4096*ramb^[$d408]));
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj380
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r2,.Lj364
	mov	r3,r0,lsl #4
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj382
	ldrb	r0,[r0, r1]
# Peephole FoldShiftProcess done
	add	r0,r3,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj383
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj384
# Rescheduled
# [985] siddata[$20]:=round(1.0263*(16*ramb^[$d40e]+4096*ramb^[$d40f]));
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj386
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r2,.Lj364
	mov	r3,r0,lsl #4
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj388
	ldrb	r0,[r0, r1]
# Peephole FoldShiftProcess done
	add	r0,r3,r0,lsl #12
	vmov	s0,r0
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj389
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj390
# Rescheduled
# [987] siddata[1]:=ramb^[$d404] and 1;   // gate1
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj392
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj393
	and	r0,r0,#1
# Rescheduled
# [988] siddata[2]:=ramb^[$d404] and 4;  //ring1
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj392
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj396
	and	r0,r0,#4
# Rescheduled
# [989] siddata[3]:=ramb^[$d404] and 8;  // test1
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj392
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj399
	and	r0,r0,#8
# Rescheduled
# [990] siddata[4]:=((ramb^[$d404] and 2) shr 1)-1; //sync1
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj392
	ldrb	r0,[r0, r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r1,.Lj402
	sub	r0,r0,#1
# Rescheduled
# [992] siddata[5]:=ramb^[$d405] and  $F;   //sd1, 5
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj404
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj405
	and	r0,r0,#15
# Rescheduled
# [993] siddata[6]:=ramb^[$d405] shr 4;     ///sa1, 6
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj404
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj408
	mov	r0,r0,lsr #4
# Rescheduled
# [994] siddata[7]:=ramb^[$d406]and $F;     //sr1 //7
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj410
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj411
	and	r0,r0,#15
# Rescheduled
# [995] siddata[$0d]:=(ramb^[$d406] and $F0) shl 22;      //0d,sussvol1
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj410
	ldrb	r0,[r0, r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r1,.Lj414
	mov	r0,r0,lsl #22
# Rescheduled
# [996] siddata[$53]:=((ramb^[$d402]+256*ramb^[$d403]) and $FFF);//
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj416
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r2,.Lj364
	mov	r3,r0,lsl #8
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj418
	ldrb	r0,[r0, r1]
	add	r0,r0,r3
	mov	r0,r0,lsl #20
# Rescheduled
	ldr	r1,.Lj419
	mov	r0,r0,lsr #20
# Rescheduled
# [998] siddata[$11]:=ramb^[$d40b] and 1;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj421
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj422
	and	r0,r0,#1
# Rescheduled
# [999] siddata[$12]:=ramb^[$d40b] and 4;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj421
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj425
	and	r0,r0,#4
# Rescheduled
# [1000] siddata[$13]:=ramb^[$d40b] and 8;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj421
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj428
	and	r0,r0,#8
# Rescheduled
# [1001] siddata[$14]:=((ramb^[$d40b] and 2) shr 1)-1;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj421
	ldrb	r0,[r0, r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r1,.Lj431
	sub	r0,r0,#1
# Rescheduled
# [1002] siddata[$15]:=ramb^[$d40c] and  $F;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj433
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj434
	and	r0,r0,#15
# Rescheduled
# [1003] siddata[$16]:=ramb^[$d40c] shr 4;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj433
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj437
	mov	r0,r0,lsr #4
# Rescheduled
# [1004] siddata[$17]:=ramb^[$d40d]and $F;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj439
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj440
	and	r0,r0,#15
# Rescheduled
# [1005] siddata[$1d]:=(ramb^[$d40d] and $F0) shl 22;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj439
	ldrb	r0,[r0, r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r1,.Lj443
	mov	r0,r0,lsl #22
# Rescheduled
# [1006] siddata[$54]:=((ramb^[$d409]+256*ramb^[$d40a]) and $FFF);
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj445
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r2,.Lj364
	mov	r3,r0,lsl #8
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj447
	ldrb	r0,[r0, r1]
	add	r0,r0,r3
	mov	r1,r0,lsl #20
# Rescheduled
	ldr	r0,.Lj448
	mov	r1,r1,lsr #20
# Rescheduled
# [1008] siddata[$21]:=ramb^[$d412] and 1;
	ldr	r2,.Lj364
	str	r1,[r0]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj450
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj451
	and	r0,r0,#1
# Rescheduled
# [1009] siddata[$22]:=ramb^[$d412] and 4;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj450
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj454
	and	r0,r0,#4
# Rescheduled
# [1010] siddata[$23]:=ramb^[$d412] and 8;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj450
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj457
	and	r0,r0,#8
# Rescheduled
# [1011] siddata[$24]:=((ramb^[$d412] and 2) shr 1)-1;
	ldr	r2,.Lj364
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj450
	ldrb	r0,[r0, r1]
	and	r0,r0,#2
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r1,.Lj460
	sub	r0,r0,#1
	b	.Lj542
.Lj361:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj364:
	.long	U_$RETROMALINA_$$_R1
.Lj365:
	.long	458755
.Lj366:
	.long	U_$RETROMALINA_$$_SIDDATA+344
.Lj368:
	.long	458756
.Lj369:
	.long	U_$RETROMALINA_$$_SIDDATA+348
.Lj371:
	.long	458757
.Lj372:
	.long	U_$RETROMALINA_$$_SIDDATA+352
.Lj374:
	.long	54272
.Lj376:
	.long	54273
.Lj377:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj380:
	.long	54279
.Lj382:
	.long	54280
.Lj383:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj384:
	.long	U_$RETROMALINA_$$_SIDDATA+64
.Lj386:
	.long	54286
.Lj388:
	.long	54287
.Lj389:
# value: 0d+1.0263000000000000E+000
	.byte	36,40,126,140,185,107,240,63
.Lj390:
	.long	U_$RETROMALINA_$$_SIDDATA+128
.Lj392:
	.long	54276
.Lj393:
	.long	U_$RETROMALINA_$$_SIDDATA+4
.Lj396:
	.long	U_$RETROMALINA_$$_SIDDATA+8
.Lj399:
	.long	U_$RETROMALINA_$$_SIDDATA+12
.Lj402:
	.long	U_$RETROMALINA_$$_SIDDATA+16
.Lj404:
	.long	54277
.Lj405:
	.long	U_$RETROMALINA_$$_SIDDATA+20
.Lj408:
	.long	U_$RETROMALINA_$$_SIDDATA+24
.Lj410:
	.long	54278
.Lj411:
	.long	U_$RETROMALINA_$$_SIDDATA+28
.Lj414:
	.long	U_$RETROMALINA_$$_SIDDATA+52
.Lj416:
	.long	54275
.Lj418:
	.long	54274
.Lj419:
	.long	U_$RETROMALINA_$$_SIDDATA+332
.Lj421:
	.long	54283
.Lj422:
	.long	U_$RETROMALINA_$$_SIDDATA+68
.Lj425:
	.long	U_$RETROMALINA_$$_SIDDATA+72
.Lj428:
	.long	U_$RETROMALINA_$$_SIDDATA+76
.Lj431:
	.long	U_$RETROMALINA_$$_SIDDATA+80
.Lj433:
	.long	54284
.Lj434:
	.long	U_$RETROMALINA_$$_SIDDATA+84
.Lj437:
	.long	U_$RETROMALINA_$$_SIDDATA+88
.Lj439:
	.long	54285
.Lj440:
	.long	U_$RETROMALINA_$$_SIDDATA+92
.Lj443:
	.long	U_$RETROMALINA_$$_SIDDATA+116
.Lj445:
	.long	54282
.Lj447:
	.long	54281
.Lj448:
	.long	U_$RETROMALINA_$$_SIDDATA+336
.Lj450:
	.long	54290
.Lj451:
	.long	U_$RETROMALINA_$$_SIDDATA+132
.Lj454:
	.long	U_$RETROMALINA_$$_SIDDATA+136
.Lj457:
	.long	U_$RETROMALINA_$$_SIDDATA+140
.Lj460:
	.long	U_$RETROMALINA_$$_SIDDATA+144
.Lj542:
# Rescheduled
# [1012] siddata[$25]:=ramb^[$d413] and  $F;
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj462
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj463
	and	r0,r0,#15
# Rescheduled
# [1013] siddata[$26]:=ramb^[$d413] shr 4;
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj462
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj466
	mov	r0,r0,lsr #4
# Rescheduled
# [1014] siddata[$27]:=ramb^[$d414]and $F;
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj468
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj469
	and	r0,r0,#15
# Rescheduled
# [1015] siddata[$2d]:=(ramb^[$d414] and $F0) shl 22;
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj468
	ldrb	r0,[r0, r1]
	and	r0,r0,#240
# Rescheduled
	ldr	r1,.Lj472
	mov	r0,r0,lsl #22
# Rescheduled
# [1016] siddata[$55]:=((ramb^[$d410]+256*ramb^[$d411]) and $FFF);
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj474
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj461
	mov	r3,r0,lsl #8
# Rescheduled
# Rescheduled
	ldr	r0,[r1]
	ldr	r2,.Lj476
	ldrb	r0,[r0, r2]
	add	r0,r0,r3
	mov	r0,r0,lsl #20
# Rescheduled
	ldr	r1,.Lj477
	mov	r0,r0,lsr #20
# Rescheduled
# [1021] ff:=(ramb^[$d416] shl 3)+(ramb^[$d415] and 7);
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj479
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj461
	and	r3,r0,#7
# Rescheduled
# Rescheduled
	ldr	r0,[r1]
	ldr	r2,.Lj481
	ldrb	r0,[r0, r2]
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r2,.Lj482
	add	r1,r3,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj482
	str	r1,[r2]
	ldr	r0,[r0]
# [1022] siddata[$6E]:=(ff shl 1)+(ff shl 2)+32;
	mov	r1,r0,lsl #1
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #2
# Rescheduled
	ldr	r1,.Lj484
	add	r0,r0,#32
# Rescheduled
# [1024] siddata[$59]:=(ramb^[$d417] and 1); //filter 1
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj486
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj487
	and	r0,r0,#1
# Rescheduled
# [1025] siddata[$5a]:=(ramb^[$d417] and 2);
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj486
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj490
	and	r0,r0,#2
# Rescheduled
# [1026] siddata[$5B]:=(ramb^[$d417] and 4);
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj486
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj493
	and	r0,r0,#4
# Rescheduled
# [1027] siddata[$6D]:=(ramb^[$d418] and $70) shr 4;   // filter output switch
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj495
	ldrb	r0,[r0, r1]
	and	r0,r0,#112
# Rescheduled
	ldr	r1,.Lj496
	mov	r0,r0,lsr #4
	str	r0,[r1]
# Rescheduled
# [1031] siddata[$6F]:=round(65536.0*(0.5+(0.5/(1+(ramb^[$d416] shr 4)))));
	ldr	r0,.Lj461
	vldr	s2,.Lj498
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj481
	ldrb	r0,[r0, r1]
	mov	r0,r0,lsr #4
	add	r0,r0,#1
	vmov	s0,r0
	vcvt.f32.u32	s0,s0
	vdiv.f32	s0,s2,s0
	vadd.f32	s2,s2,s0
	vldr	s0,.Lj497
	vmul.f32	s0,s0,s2
	vcvt.f64.f32	d0,s0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj501
# Rescheduled
# [1033] siddata[$70]:=(ramb^[$d418] and 15); //volume
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj495
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj504
	and	r0,r0,#15
# Rescheduled
# [1035] siddata[$50]:=ramb^[$d404] shr 4;
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj506
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj507
	mov	r0,r0,lsr #4
# Rescheduled
# [1036] siddata[$51]:=ramb^[$d40b] shr 4;
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj509
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj510
	mov	r0,r0,lsr #4
# Rescheduled
# [1037] siddata[$52]:=ramb^[$d412] shr 4; //waveforms
	ldr	r2,.Lj461
	str	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj512
	ldrb	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj513
	mov	r0,r0,lsr #4
	str	r0,[r1]
.Lj363:
# [1044] stmfd r13!,{r0-r7}
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7}
# [1046] ldr   r7, sidptr
	ldr	r7,[r11, #-160]
# [1047] mov   r0,#0
	mov	r0,#0
# [1048] str   r0,[r7,#0x1a8] //inner loop counter
	str	r0,[r7, #424]
# [1049] str   r0,[r7,#0x1ac] //output
	str	r0,[r7, #428]
# Rescheduled
# [1052] ldr   r6,[r7,#4]
	ldr	r6,[r7, #4]
# [1050] str   r0,[r7,#0x1b0] //output
	str	r0,[r7, #432]
# [1053] cmp   r6,#0
	cmp	r6,#0
# [1054] beq   p101
	beq	.Lj314
# [1055] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1056] mov   r1,r0
	mov	r1,r0
# [1057] cmp   r1,#0
	cmp	r1,#0
# [1058] moveq r0,#1
	moveq	r0,#1
# [1059] cmp   r1,#4
	cmp	r1,#4
# [1060] moveq r0,#1
	moveq	r0,#1
# [1061] b     p102
	b	.Lj315
.Lj314:
# [1063] p101:          mov   r0,#4
	mov	r0,#4
.Lj315:
# [1064] p102:          str   r0,[r7,#0x2C]
	str	r0,[r7, #44]
# [1066] ldr   r0,[r7,#0x2C]
	ldr	r0,[r7, #44]
# [1067] cmp   r0,#3
	cmp	r0,#3
# [1068] ldreq   r1,[r7,#0x34]
	ldreq	r1,[r7, #52]
# [1069] streq   r1,[r7,#0x30]
	streq	r1,[r7, #48]
# [1070] beq     p103
	beq	.Lj316
# [1072] p107:          cmp   r0,#1
	cmp	r0,#1
# [1073] bne   p104
	bne	.Lj318
# Rescheduled
# [1075] ldr   r2,[r7,#0x18] //sa1
	ldr	r2,[r7, #24]
# [1074] ldr   r1,[r7,#0x30] //adsrvol1
	ldr	r1,[r7, #48]
# [1076] add   r2,#0x40
	add	r2,#64
# [1077] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1078] add   r1,r6
	add	r1,r6
# [1079] str   r1,[r7,#0x30]
	str	r1,[r7, #48]
# [1080] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1081] blt   p103
	blt	.Lj316
# [1082] mov   r0,#2
	mov	r0,#2
# [1083] str   r0,[r7,#0x2c]
	str	r0,[r7, #44]
# [1084] b     p103
	b	.Lj316
.Lj318:
# [1086] p104:          cmp   r0,#2
	cmp	r0,#2
# [1087] bne   p105
	bne	.Lj319
# Rescheduled
# [1089] ldr   r2,[r7,#0x14] //sd1
	ldr	r2,[r7, #20]
# [1088] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1090] add   r2,#0x30
	add	r2,#48
# [1091] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1092] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1093] lsr   r4,#30
	lsr	r4,#30
# [1094] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1096] ldr   r1,[r7,#0x34]
	ldr	r1,[r7, #52]
# [1095] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1097] cmp   r4,r1
	cmp	r4,r1
# [1098] movlt r0,#3
	movlt	r0,#3
# [1099] strlt r0,[r7,#0x2c]
	strlt	r0,[r7, #44]
# [1100] b     p103
	b	.Lj316
.Lj319:
# [1102] p105:          cmp   r0,#4
	cmp	r0,#4
# [1103] bne   p106
	bne	.Lj320
# Rescheduled
# [1105] ldr   r2,[r7,#0x1c] //sr1
	ldr	r2,[r7, #28]
# [1104] ldr   r1,[r7,#0x30]
	ldr	r1,[r7, #48]
# [1106] add   r2,#0x30
	add	r2,#48
# [1107] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1108] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1109] lsr   r4,#30
	lsr	r4,#30
# [1110] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1111] cmp   r4,#0x10000
	cmp	r4,#65536
# [1112] movlt r4,#0
	movlt	r4,#0
# [1113] str   r4,[r7,#0x30]
	str	r4,[r7, #48]
# [1114] strlt r4,[r7,#0x2c]
	strlt	r4,[r7, #44]
# [1115] b     p103
	b	.Lj316
.Lj320:
# [1117] p106:          mov   r0,#0
	mov	r0,#0
# [1118] str   r0,[r7,#0x30]
	str	r0,[r7, #48]
.Lj316:
# [1122] p103:          ldr   r6,[r7,#0x44]
	ldr	r6,[r7, #68]
# [1123] cmp   r6,#0
	cmp	r6,#0
# [1124] beq   p111
	beq	.Lj321
# [1125] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1126] mov   r1,r0
	mov	r1,r0
# [1127] cmp   r1,#0
	cmp	r1,#0
# [1128] moveq r0,#1
	moveq	r0,#1
# [1129] cmp   r1,#4
	cmp	r1,#4
# [1130] moveq r0,#1
	moveq	r0,#1
# [1131] b     p112
	b	.Lj322
.Lj321:
# [1133] p111:          mov   r0,#4
	mov	r0,#4
.Lj322:
# [1134] p112:          str   r0,[r7,#0x6C]
	str	r0,[r7, #108]
# [1136] ldr   r0,[r7,#0x6C]
	ldr	r0,[r7, #108]
# [1137] cmp   r0,#3
	cmp	r0,#3
# [1138] ldreq   r1,[r7,#0x74]
	ldreq	r1,[r7, #116]
# [1139] streq   r1,[r7,#0x70]
	streq	r1,[r7, #112]
# [1140] beq     p113
	beq	.Lj323
# [1142] p117:          cmp   r0,#1
	cmp	r0,#1
# [1143] bne   p114
	bne	.Lj325
# Rescheduled
# [1145] ldr   r2,[r7,#0x58] //sa1
	ldr	r2,[r7, #88]
# [1144] ldr   r1,[r7,#0x70] //adsrvol1
	ldr	r1,[r7, #112]
# [1146] add   r2,#0x40
	add	r2,#64
# [1147] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1148] add   r1,r6
	add	r1,r6
# [1149] str   r1,[r7,#0x70]
	str	r1,[r7, #112]
# [1150] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1151] blt   p113
	blt	.Lj323
# [1152] mov   r0,#2
	mov	r0,#2
# [1153] str   r0,[r7,#0x6c]
	str	r0,[r7, #108]
# [1154] b     p113
	b	.Lj323
.Lj325:
# [1156] p114:          cmp   r0,#2
	cmp	r0,#2
# [1157] bne   p115
	bne	.Lj326
# Rescheduled
# [1159] ldr   r2,[r7,#0x54] //sd1
	ldr	r2,[r7, #84]
# [1158] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1160] add   r2,#0x30
	add	r2,#48
# [1161] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1162] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1163] lsr   r4,#30
	lsr	r4,#30
# [1164] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1166] ldr   r1,[r7,#0x74]
	ldr	r1,[r7, #116]
# [1165] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1167] cmp   r4,r1
	cmp	r4,r1
# [1168] movlt r0,#3
	movlt	r0,#3
# [1169] strlt r0,[r7,#0x6c]
	strlt	r0,[r7, #108]
# [1170] b     p113
	b	.Lj323
.Lj326:
# [1172] p115:          cmp   r0,#4
	cmp	r0,#4
# [1173] bne   p116
	bne	.Lj327
# Rescheduled
# [1175] ldr   r2,[r7,#0x5c] //sr1
	ldr	r2,[r7, #92]
# [1174] ldr   r1,[r7,#0x70]
	ldr	r1,[r7, #112]
# [1176] add   r2,#0x30
	add	r2,#48
	b	.Lj543
.Lj461:
	.long	U_$RETROMALINA_$$_R1
.Lj462:
	.long	54291
.Lj463:
	.long	U_$RETROMALINA_$$_SIDDATA+148
.Lj466:
	.long	U_$RETROMALINA_$$_SIDDATA+152
.Lj468:
	.long	54292
.Lj469:
	.long	U_$RETROMALINA_$$_SIDDATA+156
.Lj472:
	.long	U_$RETROMALINA_$$_SIDDATA+180
.Lj474:
	.long	54289
.Lj476:
	.long	54288
.Lj477:
	.long	U_$RETROMALINA_$$_SIDDATA+340
.Lj479:
	.long	54293
.Lj481:
	.long	54294
.Lj482:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
.Lj484:
	.long	U_$RETROMALINA_$$_SIDDATA+440
.Lj486:
	.long	54295
.Lj487:
	.long	U_$RETROMALINA_$$_SIDDATA+356
.Lj490:
	.long	U_$RETROMALINA_$$_SIDDATA+360
.Lj493:
	.long	U_$RETROMALINA_$$_SIDDATA+364
.Lj495:
	.long	54296
.Lj496:
	.long	U_$RETROMALINA_$$_SIDDATA+436
.Lj498:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63
.Lj497:
# value: 0d+6.553600000E+04
	.byte	0,0,128,71
.Lj501:
	.long	U_$RETROMALINA_$$_SIDDATA+444
.Lj504:
	.long	U_$RETROMALINA_$$_SIDDATA+448
.Lj506:
	.long	54276
.Lj507:
	.long	U_$RETROMALINA_$$_SIDDATA+320
.Lj509:
	.long	54283
.Lj510:
	.long	U_$RETROMALINA_$$_SIDDATA+324
.Lj512:
	.long	54290
.Lj513:
	.long	U_$RETROMALINA_$$_SIDDATA+328
.Lj543:
# [1177] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1178] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1179] lsr   r4,#30
	lsr	r4,#30
# [1180] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1181] cmp   r4,#0x10000
	cmp	r4,#65536
# [1182] movlt r4,#0
	movlt	r4,#0
# [1183] str   r4,[r7,#0x70]
	str	r4,[r7, #112]
# [1184] strlt r4,[r7,#0x6c]
	strlt	r4,[r7, #108]
# [1185] b     p113
	b	.Lj323
.Lj327:
# [1187] p116:          mov   r0,#0
	mov	r0,#0
# [1188] str   r0,[r7,#0x70]
	str	r0,[r7, #112]
.Lj323:
# [1192] p113:          ldr   r6,[r7,#0x84]
	ldr	r6,[r7, #132]
# [1193] cmp   r6,#0
	cmp	r6,#0
# [1194] beq   p121
	beq	.Lj328
# [1195] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1196] mov   r1,r0
	mov	r1,r0
# [1197] cmp   r1,#0
	cmp	r1,#0
# [1198] moveq r0,#1
	moveq	r0,#1
# [1199] cmp   r1,#4
	cmp	r1,#4
# [1200] moveq r0,#1
	moveq	r0,#1
# [1201] b     p122
	b	.Lj329
.Lj328:
# [1203] p121:          mov   r0,#4
	mov	r0,#4
.Lj329:
# [1204] p122:          str   r0,[r7,#0xaC]
	str	r0,[r7, #172]
# [1206] ldr   r0,[r7,#0xaC]
	ldr	r0,[r7, #172]
# [1207] cmp   r0,#3
	cmp	r0,#3
# [1208] ldreq   r1,[r7,#0xb4]
	ldreq	r1,[r7, #180]
# [1209] streq   r1,[r7,#0xb0]
	streq	r1,[r7, #176]
# [1210] beq     p123
	beq	.Lj330
# [1212] p127:          cmp   r0,#1
	cmp	r0,#1
# [1213] bne   p124
	bne	.Lj332
# Rescheduled
# [1215] ldr   r2,[r7,#0x98] //sa1
	ldr	r2,[r7, #152]
# [1214] ldr   r1,[r7,#0xb0] //adsrvol1
	ldr	r1,[r7, #176]
# [1216] add   r2,#0x40
	add	r2,#64
# [1217] ldr   r6,[r7,r2,lsl #2]
	ldr	r6,[r7, r2, lsl #2]
# [1218] add   r1,r6
	add	r1,r6
# [1219] str   r1,[r7,#0xb0]
	str	r1,[r7, #176]
# [1220] cmp   r1,#1073741824
	cmp	r1,#1073741824
# [1221] blt   p123
	blt	.Lj330
# [1222] mov   r0,#2
	mov	r0,#2
# [1223] str   r0,[r7,#0xac]
	str	r0,[r7, #172]
# [1224] b     p123
	b	.Lj330
.Lj332:
# [1226] p124:          cmp   r0,#2
	cmp	r0,#2
# [1227] bne   p125
	bne	.Lj333
# Rescheduled
# [1229] ldr   r2,[r7,#0x94] //sd1
	ldr	r2,[r7, #148]
# [1228] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1230] add   r2,#0x30
	add	r2,#48
# [1231] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1232] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1233] lsr   r4,#30
	lsr	r4,#30
# [1234] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# Rescheduled
# [1236] ldr   r1,[r7,#0xb4]
	ldr	r1,[r7, #180]
# [1235] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1237] cmp   r4,r1
	cmp	r4,r1
# [1238] movlt r0,#3
	movlt	r0,#3
# [1239] strlt r0,[r7,#0xac]
	strlt	r0,[r7, #172]
# [1240] b     p123
	b	.Lj330
.Lj333:
# [1242] p125:          cmp   r0,#4
	cmp	r0,#4
# [1243] bne   p126
	bne	.Lj334
# Rescheduled
# [1245] ldr   r2,[r7,#0x9c] //sr1
	ldr	r2,[r7, #156]
# [1244] ldr   r1,[r7,#0xb0]
	ldr	r1,[r7, #176]
# [1246] add   r2,#0x30
	add	r2,#48
# [1247] ldr   r3,[r7,r2,lsl #2]
	ldr	r3,[r7, r2, lsl #2]
# [1248] umull r4,r5,r1,r3
	umull	r4,r5,r1,r3
# [1249] lsr   r4,#30
	lsr	r4,#30
# [1250] orr   r4,r4,r5,lsl #2
	orr	r4,r4,r5,lsl #2
# [1251] cmp   r4,#0x10000
	cmp	r4,#65536
# [1252] movlt r4,#0
	movlt	r4,#0
# [1253] str   r4,[r7,#0xb0]
	str	r4,[r7, #176]
# [1254] strlt r4,[r7,#0xbc]
	strlt	r4,[r7, #188]
# [1255] b     p123
	b	.Lj330
.Lj334:
# [1257] p126:          mov   r0,#0
	mov	r0,#0
# [1258] str   r0,[r7,#0xb0]
	str	r0,[r7, #176]
.Lj330:
# [1260] p123:          ldmfd r13!,{r0-r7}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7}
	.balign 4
.Lj514:
# [1267] stmfd r13!,{r0-r12}
	stmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [1268] ldr   r4,sidptr
	ldr	r4,[r11, #-160]
# Rescheduled
# Rescheduled
# [1272] ldr   r0,[r4,#0x20]
	ldr	r0,[r4, #32]
# [1273] ldr   r3,[r4,#0x00]
	ldr	r3,[r4]
# [1274] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1275] ldrcs r1,[r4,#0x60]
	ldrcs	r1,[r4, #96]
# [1276] ldrcs r2,[r4,#0x50]
	ldrcs	r2,[r4, #80]
# [1277] andcs r1,r2
	andcs	r1,r2
# [1278] strcs r1,[r4,#0x60]
	strcs	r1,[r4, #96]
# [1279] ldr   r1,[r4,#0x0c]
	ldr	r1,[r4, #12]
# [1280] cmp   r1,#0
	cmp	r1,#0
# [1281] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1284] ldr r2,[r4,#0x24]
	ldr	r2,[r4, #36]
# [1282] str r0,[r4,#0x20]
	str	r0,[r4, #32]
# [1285] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1286] movcs r1,#1
	movcs	r1,#1
# [1287] movcc r1,#0
	movcc	r1,#0
# [1288] str   r2,[r4,#0x24]
	str	r2,[r4, #36]
# [1289] str   r1,[r4,#0x3c]
	str	r1,[r4, #60]
# [1293] ldr r1,[r4,#0x140]
	ldr	r1,[r4, #320]
# [1294] cmp r1,#2
	cmp	r1,#2
# [1295] bne p205
	bne	.Lj335
# [1296] lsr r0,#8
	lsr	r0,#8
# [1297] sub r0,#8388608
	sub	r0,#8388608
# [1298] str r0,[r4,#0x28]
	str	r0,[r4, #40]
# [1299] b p204
	b	.Lj336
.Lj335:
# [1301] p205:          cmp r1,#1
	cmp	r1,#1
# [1302] bne p201
	bne	.Lj337
# [1303] mov r5,r0                // triangle
	mov	r5,r0
# [1304] lsls r5,#1
	lsls	r5,#1
# [1305] mvncs r5,r5
	mvncs	r5,r5
# [1306] ldr r6,[r4,#0x08]
	ldr	r6,[r4, #8]
# [1307] cmp r6,#0
	cmp	r6,#0
# [1308] ldrne r6,[r4,#0xa0]
	ldrne	r6,[r4, #160]
# [1309] lsls r6,#1
	lsls	r6,#1
# [1310] negcs r5,r5
	negcs	r5,r5
# [1311] lsr r5,#8
	lsr	r5,#8
# [1312] sub r5,#8388608
	sub	r5,#8388608
# [1313] str r5,[r4,#0x28]
	str	r5,[r4, #40]
# [1314] b p204
	b	.Lj336
.Lj337:
# [1316] p201:          cmp r1,#4
	cmp	r1,#4
# [1317] bne p203
	bne	.Lj338
# Rescheduled
# [1319] ldr r7,[r4,#0x14c]
	ldr	r7,[r4, #332]
# [1318] mov r6,r0,lsr #20        //square r6
	mov	r6,r0,lsr #20
# [1320] cmp r6,r7
	cmp	r6,r7
# [1321] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1322] movlt r6,#0
	movlt	r6,#0
# [1323] sub r6,#8388608
	sub	r6,#8388608
# [1324] str r6,[r4,#0x28]
	str	r6,[r4, #40]
# [1325] b p204
	b	.Lj336
.Lj338:
# [1327] p203:          cmp r1,#3
	cmp	r1,#3
# [1328] bne p206
	bne	.Lj339
# [1329] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1330] and r6,#0x000003FC
	and	r6,#1020
# [1331] add r6,#0x200
	add	r6,#512
# [1332] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1333] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1334] b p204
	b	.Lj336
.Lj339:
# [1336] p206:          cmp r1,#5
	cmp	r1,#5
# [1337] bne p207
	bne	.Lj340
# [1338] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1339] and r6,#0x000003FC
	and	r6,#1020
# [1340] add r6,#0x600
	add	r6,#1536
# [1341] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1342] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1343] b p204
	b	.Lj336
.Lj340:
# [1345] p207:          cmp r1,#6
	cmp	r1,#6
# [1346] bne p208
	bne	.Lj341
# [1347] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1348] and r6,#0x000003FC
	and	r6,#1020
# [1349] add r6,#0xa00
	add	r6,#2560
# [1350] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1351] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1352] b p204
	b	.Lj336
.Lj341:
# [1354] p208:          cmp r1,#7
	cmp	r1,#7
# [1355] bne p209
	bne	.Lj342
# [1356] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1357] and r6,#0x000003FC
	and	r6,#1020
# [1358] add r6,#0xe00
	add	r6,#3584
# [1359] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1360] str r8,[r4,#0x28]
	str	r8,[r4, #40]
# [1361] b p204
	b	.Lj336
.Lj342:
# [1363] p209:          cmp r1,#8                // noise
	cmp	r1,#8
# [1364] bne p204
	bne	.Lj336
# [1365] ldr r7,[r4,#0x3C]
	ldr	r7,[r4, #60]
# [1366] cmp r7,#1
	cmp	r7,#1
# [1367] bne p204
	bne	.Lj336
# [1369] mov   r7,#0
	mov	r7,#0
# [1370] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1372] ldr   r0,[r4,#0x38]
	ldr	r0,[r4, #56]
# [1371] mov   r3,#0
	mov	r3,#0
# [1373] tst   r0,#4194304
	tst	r0,#4194304
# [1374] orrne r7,#128
	orrne	r7,#128
# [1375] orrne r2,#1
	orrne	r2,#1
# [1376] tst   r0,#1048576
	tst	r0,#1048576
# [1377] orrne r7,#64
	orrne	r7,#64
# [1378] tst   r0,#65536
	tst	r0,#65536
# [1379] orrne r7,#32
	orrne	r7,#32
# [1380] tst   r0,#8192
	tst	r0,#8192
# [1381] orrne r7,#16
	orrne	r7,#16
# [1382] tst   r0,#2048
	tst	r0,#2048
# [1383] orrne r7,#8
	orrne	r7,#8
# [1384] tst   r0,#128
	tst	r0,#128
# [1385] orrne r7,#4
	orrne	r7,#4
# [1386] tst   r0,#16
	tst	r0,#16
# [1387] orrne r7,#2
	orrne	r7,#2
# [1388] tst   r0,#4
	tst	r0,#4
# [1389] orrne r7,#1
	orrne	r7,#1
# [1390] tst   r0,#131072
	tst	r0,#131072
# [1391] orrne r3,#1
	orrne	r3,#1
# [1392] eor   r2,r3
	eor	r2,r3
# [1393] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1394] str   r2,[r4,#0x38]
	str	r2,[r4, #56]
# [1395] sub   r7,#128
	sub	r7,#128
# [1396] lsl   r7,#16
	lsl	r7,#16
# [1397] str   r7,[r4,#0x28]
	str	r7,[r4, #40]
.Lj336:
# Rescheduled
# Rescheduled
# [1401] p204:          ldr   r0,[r4,#0x60]
	ldr	r0,[r4, #96]
# [1402] ldr   r3,[r4,#0x40]
	ldr	r3,[r4, #64]
# [1403] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1404] ldrcs r1,[r4,#0xa0]
	ldrcs	r1,[r4, #160]
# [1405] ldrcs r2,[r4,#0x90]
	ldrcs	r2,[r4, #144]
# [1406] andcs r1,r2
	andcs	r1,r2
# [1407] strcs r1,[r4,#0xa0]
	strcs	r1,[r4, #160]
# [1408] ldr   r1,[r4,#0x4c]
	ldr	r1,[r4, #76]
# [1409] cmp   r1,#0
	cmp	r1,#0
# [1410] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1413] ldr r2, [r4,#0x64]
	ldr	r2,[r4, #100]
# [1411] str r0,[r4,#0x60]
	str	r0,[r4, #96]
# [1414] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1415] movcs r1,#1
	movcs	r1,#1
# [1416] movcc r1,#0
	movcc	r1,#0
# [1417] str  r2,[r4,#0x64]
	str	r2,[r4, #100]
# [1418] str  r1,[r4,#0x7c]
	str	r1,[r4, #124]
# [1423] ldr r1,[r4,#0x144]
	ldr	r1,[r4, #324]
# [1424] cmp r1,#2
	cmp	r1,#2
# [1425] bne p215
	bne	.Lj343
# [1426] lsr r0,#8
	lsr	r0,#8
# [1427] sub r0,#8388608
	sub	r0,#8388608
# [1428] str r0,[r4,#0x68]
	str	r0,[r4, #104]
# [1429] b p214
	b	.Lj344
.Lj343:
# [1431] p215:          cmp r1,#1
	cmp	r1,#1
# [1432] bne p211
	bne	.Lj345
# [1433] mov r5,r0             // triangle
	mov	r5,r0
# [1434] lsls r5,#1
	lsls	r5,#1
# [1435] mvncs r5,r5
	mvncs	r5,r5
# [1436] lsr r5,#8
	lsr	r5,#8
# Rescheduled
# [1438] ldr r6,[r4,#0x48]
	ldr	r6,[r4, #72]
# [1437] sub r5,#8388608
	sub	r5,#8388608
# [1439] cmp r6,#0
	cmp	r6,#0
# [1440] ldrne r6,[r4,#0x20]
	ldrne	r6,[r4, #32]
# [1441] lsls r6,#1
	lsls	r6,#1
# [1442] negcs r5,r5
	negcs	r5,r5
# [1443] str r5,[r4,#0x68]
	str	r5,[r4, #104]
# [1444] b p214
	b	.Lj344
.Lj345:
# [1446] p211:          cmp r1,#4
	cmp	r1,#4
# [1447] bne p213
	bne	.Lj346
# Rescheduled
# [1449] ldr r7,[r4,#0x150]
	ldr	r7,[r4, #336]
# [1448] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1450] cmp r6,r7
	cmp	r6,r7
# [1451] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1452] movlt r6,#0
	movlt	r6,#0
# [1453] sub r6,#8388608
	sub	r6,#8388608
# [1454] str r6,[r4,#0x68]
	str	r6,[r4, #104]
# [1455] b p214
	b	.Lj344
.Lj346:
# [1457] p213:          cmp r1,#3
	cmp	r1,#3
# [1458] bne p216
	bne	.Lj347
# [1459] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1460] and r6,#0x000003FC
	and	r6,#1020
# [1461] add r6,#0x200
	add	r6,#512
# [1462] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1463] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1464] b p214
	b	.Lj344
.Lj347:
# [1466] p216:          cmp r1,#5
	cmp	r1,#5
# [1467] bne p217
	bne	.Lj348
# [1468] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1469] and r6,#0x000003FC
	and	r6,#1020
# [1470] add r6,#0x600
	add	r6,#1536
# [1471] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1472] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1473] b p214
	b	.Lj344
.Lj348:
# [1475] p217:          cmp r1,#6
	cmp	r1,#6
# [1476] bne p218
	bne	.Lj349
# [1477] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1478] and r6,#0x000003FC
	and	r6,#1020
# [1479] add r6,#0xa00
	add	r6,#2560
# [1480] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1481] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1482] b p214
	b	.Lj344
.Lj349:
# [1484] p218:          cmp r1,#7
	cmp	r1,#7
# [1485] bne p219
	bne	.Lj350
# [1486] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1487] and r6,#0x000003FC
	and	r6,#1020
# [1488] add r6,#0xe00
	add	r6,#3584
# [1489] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1490] str r8,[r4,#0x68]
	str	r8,[r4, #104]
# [1491] b p214
	b	.Lj344
.Lj350:
# [1493] p219:          cmp r1,#8    // noise
	cmp	r1,#8
# [1494] bne p214
	bne	.Lj344
# [1495] p212:          ldr r7,[r4,#0x7C]
	ldr	r7,[r4, #124]
# [1496] cmp r7,#1
	cmp	r7,#1
# [1497] bne p214
	bne	.Lj344
# [1499] mov   r7,#0
	mov	r7,#0
# [1500] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1502] ldr   r0,[r4,#0x78]
	ldr	r0,[r4, #120]
# [1501] mov   r3,#0
	mov	r3,#0
# [1503] tst   r0,#4194304
	tst	r0,#4194304
# [1504] orrne r7,#128
	orrne	r7,#128
# [1505] orrne r2,#1
	orrne	r2,#1
# [1506] tst   r0,#1048576
	tst	r0,#1048576
# [1507] orrne r7,#64
	orrne	r7,#64
# [1508] tst   r0,#65536
	tst	r0,#65536
# [1509] orrne r7,#32
	orrne	r7,#32
# [1510] tst   r0,#8192
	tst	r0,#8192
# [1511] orrne r7,#16
	orrne	r7,#16
# [1512] tst   r0,#2048
	tst	r0,#2048
# [1513] orrne r7,#8
	orrne	r7,#8
# [1514] tst   r0,#128
	tst	r0,#128
# [1515] orrne r7,#4
	orrne	r7,#4
# [1516] tst   r0,#16
	tst	r0,#16
# [1517] orrne r7,#2
	orrne	r7,#2
# [1518] tst   r0,#4
	tst	r0,#4
# [1519] orrne r7,#1
	orrne	r7,#1
# [1520] tst   r0,#131072
	tst	r0,#131072
# [1521] orrne r3,#1
	orrne	r3,#1
# [1522] eor   r2,r3
	eor	r2,r3
# [1523] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1524] str   r2,[r4,#0x78]
	str	r2,[r4, #120]
# [1525] lsl   r7,#16
	lsl	r7,#16
# [1526] sub   r7,#8388608
	sub	r7,#8388608
# [1527] str   r7,[r4,#0x68]
	str	r7,[r4, #104]
.Lj344:
# Rescheduled
# Rescheduled
# [1532] p214:          ldr   r0,[r4,#0xa0]
	ldr	r0,[r4, #160]
# [1533] ldr   r3,[r4,#0x80]
	ldr	r3,[r4, #128]
# [1534] adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
	adds	r0,r0,r3,lsl #5
# Rescheduled
# Rescheduled
# [1535] ldrcs r1,[r4,#0x20]
	ldrcs	r1,[r4, #32]
# [1536] ldrcs r2,[r4,#0x10]
	ldrcs	r2,[r4, #16]
# [1537] andcs r1,r2
	andcs	r1,r2
# [1538] strcs r1,[r4,#0x20]
	strcs	r1,[r4, #32]
# [1539] ldr   r1,[r4,#0x8c]
	ldr	r1,[r4, #140]
# [1540] cmp   r1,#0
	cmp	r1,#0
# [1541] movne r0,#0
	movne	r0,#0
# Rescheduled
# [1544] ldr r2,[r4,#0xa4]
	ldr	r2,[r4, #164]
# [1542] str r0,[r4,#0xa0]
	str	r0,[r4, #160]
# [1545] adds r2,r2,r3,lsl #9//12
	adds	r2,r2,r3,lsl #9
# [1546] movcs r1,#1
	movcs	r1,#1
# [1547] movcc r1,#0
	movcc	r1,#0
# [1548] str   r2,[r4,#0xa4]
	str	r2,[r4, #164]
# [1549] str   r1,[r4,#0xbc]
	str	r1,[r4, #188]
# [1554] ldr r1,[r4,#0x148]
	ldr	r1,[r4, #328]
# [1555] cmp r1,#2
	cmp	r1,#2
# [1556] bne p225
	bne	.Lj352
# [1557] lsr r0,#8
	lsr	r0,#8
# [1558] sub r0,#8388608
	sub	r0,#8388608
# [1559] str r0,[r4,#0xa8]
	str	r0,[r4, #168]
# [1560] b p224
	b	.Lj353
.Lj352:
# [1562] p225:          cmp r1,#1
	cmp	r1,#1
# [1563] bne p221
	bne	.Lj354
# [1564] mov r5,r0             // triangle
	mov	r5,r0
# [1565] lsls r5,#1
	lsls	r5,#1
# [1566] mvncs r5,r5
	mvncs	r5,r5
# [1567] ldr r6,[r4,#0x88]
	ldr	r6,[r4, #136]
# [1568] cmp r6,#0
	cmp	r6,#0
# [1569] ldrne r6,[r4,#0x60]
	ldrne	r6,[r4, #96]
# [1570] lsls r6,#1
	lsls	r6,#1
# [1571] negcs r5,r5
	negcs	r5,r5
# [1572] lsr r5,#8
	lsr	r5,#8
# [1573] sub r5,#8388608
	sub	r5,#8388608
# [1574] str r5,[r4,#0xa8]
	str	r5,[r4, #168]
# [1575] b p224
	b	.Lj353
.Lj354:
# [1577] p221:          cmp r1,#4
	cmp	r1,#4
# [1578] bne p223
	bne	.Lj355
# Rescheduled
# [1580] ldr r7,[r4,#0x154]
	ldr	r7,[r4, #340]
# [1579] mov r6,r0,lsr #20     //square r6
	mov	r6,r0,lsr #20
# [1581] cmp r6,r7
	cmp	r6,r7
# [1582] movge r6,#0xFFFFFF
	movge	r6,#16777215
# [1583] movlt r6,#0
	movlt	r6,#0
# [1584] sub r6,#8388608
	sub	r6,#8388608
# [1585] str r6,[r4,#0xa8]
	str	r6,[r4, #168]
# [1586] b p224
	b	.Lj353
.Lj355:
# [1588] p223:          cmp r1,#3
	cmp	r1,#3
# [1589] bne p226
	bne	.Lj356
# [1590] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1591] and r6,#0x000003FC
	and	r6,#1020
# [1592] add r6,#0x200
	add	r6,#512
# [1593] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1594] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1595] b p224
	b	.Lj353
.Lj356:
# [1597] p226:          cmp r1,#5
	cmp	r1,#5
# [1598] bne p227
	bne	.Lj357
# [1599] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1600] and r6,#0x000003FC
	and	r6,#1020
# [1601] add r6,#0x600
	add	r6,#1536
# [1602] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1603] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1604] b p224
	b	.Lj353
.Lj357:
# [1606] p227:          cmp r1,#6
	cmp	r1,#6
# [1607] bne p228
	bne	.Lj358
# [1608] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1609] and r6,#0x000003FC
	and	r6,#1020
# [1610] add r6,#0xa00
	add	r6,#2560
# [1611] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1612] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1613] b p224
	b	.Lj353
.Lj358:
# [1615] p228:          cmp r1,#7
	cmp	r1,#7
# [1616] bne p229
	bne	.Lj359
# [1617] mov r6,r0,lsr #22
	mov	r6,r0,lsr #22
# [1618] and r6,#0x000003FC
	and	r6,#1020
# [1619] add r6,#0xe00
	add	r6,#3584
# [1620] ldr r8,[r4,r6]
	ldr	r8,[r4, r6]
# [1621] str r8,[r4,#0xa8]
	str	r8,[r4, #168]
# [1622] b p224
	b	.Lj353
.Lj359:
# [1624] p229:          cmp r1,#8    // noise
	cmp	r1,#8
# [1625] bne p224
	bne	.Lj353
# [1626] ldr r7,[r4,#0xbC]
	ldr	r7,[r4, #188]
# [1627] cmp r7,#1
	cmp	r7,#1
# [1628] bne p224
	bne	.Lj353
# [1630] mov   r7,#0
	mov	r7,#0
# [1631] mov   r2,#0
	mov	r2,#0
# Rescheduled
# [1633] ldr   r0,[r4,#0xb8]
	ldr	r0,[r4, #184]
# [1632] mov   r3,#0
	mov	r3,#0
# [1634] tst   r0,#4194304
	tst	r0,#4194304
# [1635] orrne r7,#128
	orrne	r7,#128
# [1636] orrne r2,#1
	orrne	r2,#1
# [1637] tst   r0,#1048576
	tst	r0,#1048576
# [1638] orrne r7,#64
	orrne	r7,#64
# [1639] tst   r0,#65536
	tst	r0,#65536
# [1640] orrne r7,#32
	orrne	r7,#32
# [1641] tst   r0,#8192
	tst	r0,#8192
# [1642] orrne r7,#16
	orrne	r7,#16
# [1643] tst   r0,#2048
	tst	r0,#2048
# [1644] orrne r7,#8
	orrne	r7,#8
# [1645] tst   r0,#128
	tst	r0,#128
# [1646] orrne r7,#4
	orrne	r7,#4
# [1647] tst   r0,#16
	tst	r0,#16
# [1648] orrne r7,#2
	orrne	r7,#2
# [1649] tst   r0,#4
	tst	r0,#4
# [1650] orrne r7,#1
	orrne	r7,#1
# [1651] tst   r0,#131072
	tst	r0,#131072
# [1652] orrne r3,#1
	orrne	r3,#1
# [1653] eor   r2,r3
	eor	r2,r3
# [1654] orr   r2,r2,r0,lsl #1
	orr	r2,r2,r0,lsl #1
# [1655] str   r2,[r4,#0xb8]
	str	r2,[r4, #184]
# [1656] sub   r7,#128
	sub	r7,#128
# [1657] lsl   r7,#16
	lsl	r7,#16
# [1658] p222:          str   r7,[r4,#0xa8]
	str	r7,[r4, #168]
.Lj353:
# Rescheduled
# Rescheduled
# [1662] p224:          ldr r0,[r4,#0x30]
	ldr	r0,[r4, #48]
# [1663] ldr r1,[r4,#0x28]
	ldr	r1,[r4, #40]
# [1664] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1665] ldr r0,[r4,#0x158]
	ldr	r0,[r4, #344]
# [1666] cmp r0,#0
	cmp	r0,#0
# [1667] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1669] ldr r0,[r4,#0x164]
	ldr	r0,[r4, #356]
# [1668] asr r3,#1
	asr	r3,#1
# [1670] cmp r0,#0
	cmp	r0,#0
# [1671] moveq r2,#0
	moveq	r2,#0
# [1672] movne r2,r3
	movne	r2,r3
# [1673] movne r3,#0
	movne	r3,#0
# [1674] str r3,[r4,#0x1c4]
	str	r3,[r4, #452]
# [1675] str r2,[r4,#0x170]
	str	r2,[r4, #368]
# Rescheduled
# Rescheduled
# [1678] ldr r0,[r4,#0x70]
	ldr	r0,[r4, #112]
# [1679] ldr r1,[r4,#0x68]
	ldr	r1,[r4, #104]
# [1680] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1681] ldr r0,[r4,#0x15c]
	ldr	r0,[r4, #348]
# [1682] cmp r0,#0
	cmp	r0,#0
# [1683] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1685] ldr r0,[r4,#0x168]
	ldr	r0,[r4, #360]
# [1684] asr r3,#1
	asr	r3,#1
# [1686] cmp r0,#0
	cmp	r0,#0
# [1687] moveq r2,#0
	moveq	r2,#0
# [1688] movne r2,r3
	movne	r2,r3
# [1689] movne r3,#0
	movne	r3,#0
# [1690] str r3,[r4,#0x1c8]
	str	r3,[r4, #456]
# [1691] str r2,[r4,#0x174]
	str	r2,[r4, #372]
# Rescheduled
# Rescheduled
# [1693] ldr r0,[r4,#0xb0]
	ldr	r0,[r4, #176]
# [1694] ldr r1,[r4,#0xa8]
	ldr	r1,[r4, #168]
# [1695] smull r2,r3,r0,r1
	smull	r2,r3,r0,r1
# [1696] ldr r0,[r4,#0x160]
	ldr	r0,[r4, #352]
# [1697] cmp r0,#0
	cmp	r0,#0
# [1698] moveq r3,#0
	moveq	r3,#0
# Rescheduled
# [1700] ldr r0,[r4,#0x16c]
	ldr	r0,[r4, #364]
# [1699] asr r3,#1
	asr	r3,#1
# [1701] cmp r0,#0
	cmp	r0,#0
# [1702] moveq r2,#0
	moveq	r2,#0
# [1703] movne r2,r3
	movne	r2,r3
# [1704] movne r3,#0
	movne	r3,#0
# [1705] str r3,[r4,#0x1cc]
	str	r3,[r4, #460]
# [1706] str r2,[r4,#0x178]
	str	r2,[r4, #376]
# [1710] mov r7,r4
	mov	r7,r4
# Rescheduled
# [1712] ldr r1,[r7,#0x1b8] //ffi
	ldr	r1,[r7, #440]
# [1711] ldr r3,[r7,#0x1bc] //fri
	ldr	r3,[r7, #444]
# [1713] lsl r1,#1
	lsl	r1,#1
# [1714] ldr r6,[r7,#0x1b4]  // bandpass switch
	ldr	r6,[r7, #436]
# [1715] mov r9, #0  // init output L
	mov	r9,#0
# Rescheduled
# [1720] ldr r2,[r7,#0x180]
	ldr	r2,[r7, #384]
# [1716] mov r10,#0  // init output R
	mov	r10,#0
# [1721] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1722] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1724] ldr r0,[r7,#0x170]
	ldr	r0,[r7, #368]
# [1723] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1726] ldr r4,[r7,#0x184]
	ldr	r4,[r7, #388]
# [1725] sub r0,r5
	sub	r0,r5
# [1727] sub r0,r4
	sub	r0,r4
# [1728] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1729] lsr r5,#18
	lsr	r5,#18
# [1730] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1731] add r2,r5
	add	r2,r5
# [1732] str r2,[r7,#0x180]
	str	r2,[r7, #384]
# [1733] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1734] lsr r5,#18
	lsr	r5,#18
# [1735] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1736] add r4,r5
	add	r4,r5
# [1737] str r4,[r7,#0x184]
	str	r4,[r7, #388]
# [1741] ldr r5,[r7,#0x1c4]
	ldr	r5,[r7, #452]
# [1742] tst r6,#0x2
	tst	r6,#2
# [1743] addne r5,r2
	addne	r5,r2
# [1744] tst r6,#0x1
	tst	r6,#1
# [1745] addne r5,r4
	addne	r5,r4
# [1746] tst r6,#0x4
	tst	r6,#4
# [1747] addne r5,r0
	addne	r5,r0
# [1751] mov r9,r5
	mov	r9,r5
# [1752] asr r5,#1
	asr	r5,#1
# Rescheduled
# [1757] ldr r2,[r7,#0x188]
	ldr	r2,[r7, #392]
# [1753] mov r10,r5
	mov	r10,r5
# [1758] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1759] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1761] ldr r0,[r7,#0x174]
	ldr	r0,[r7, #372]
# [1760] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1763] ldr r4,[r7,#0x18c]
	ldr	r4,[r7, #396]
# [1762] sub r0,r5
	sub	r0,r5
# [1764] sub r0,r4
	sub	r0,r4
# [1765] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1766] lsr r5,#18
	lsr	r5,#18
# [1767] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1768] add r2,r5
	add	r2,r5
# [1769] str r2,[r7,#0x188]
	str	r2,[r7, #392]
# [1770] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1771] lsr r5,#18
	lsr	r5,#18
# [1772] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1773] add r4,r5
	add	r4,r5
# [1774] str r4,[r7,#0x18c]
	str	r4,[r7, #396]
# [1778] ldr r5,[r7,#0x1c8]
	ldr	r5,[r7, #456]
# [1779] tst r6,#0x2
	tst	r6,#2
# [1780] addne r5,r2
	addne	r5,r2
# [1781] tst r6,#0x1
	tst	r6,#1
# [1782] addne r5,r4
	addne	r5,r4
# [1783] tst r6,#0x4
	tst	r6,#4
# [1784] addne r5,r0
	addne	r5,r0
# [1788] asr r5,#1
	asr	r5,#1
# [1789] add r9,r5
	add	r9,r5
# [1790] add r10,r5
	add	r10,r5
# [1791] asr r5,#1
	asr	r5,#1
# [1792] add r9,r5
	add	r9,r5
# Rescheduled
# [1797] ldr r2,[r7,#0x190]
	ldr	r2,[r7, #400]
# [1793] add r10,r5
	add	r10,r5
# [1798] smull r5,r12,r2,r3
	smull	r5,r12,r2,r3
# [1799] lsr r5,#16
	lsr	r5,#16
# Rescheduled
# [1801] ldr r0,[r7,#0x178]
	ldr	r0,[r7, #376]
# [1800] orr r5,r5,r12,lsl #16
	orr	r5,r5,r12,lsl #16
# Rescheduled
# [1803] ldr r4,[r7,#0x194]
	ldr	r4,[r7, #404]
# [1802] sub r0,r5
	sub	r0,r5
# [1804] sub r0,r4
	sub	r0,r4
# [1805] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1806] lsr r5,#18
	lsr	r5,#18
# [1807] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1808] add r2,r5
	add	r2,r5
# [1809] str r2,[r7,#0x190]
	str	r2,[r7, #400]
# [1810] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1811] lsr r5,#18
	lsr	r5,#18
# [1812] orr r5,r5, r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1813] add r4,r5
	add	r4,r5
# [1814] str r4,[r7,#0x194]
	str	r4,[r7, #404]
# [1818] ldr r5,[r7,#0x1cc]
	ldr	r5,[r7, #460]
# [1819] tst r6,#0x2
	tst	r6,#2
# [1820] addne r5,r2
	addne	r5,r2
# [1821] tst r6,#0x1
	tst	r6,#1
# [1822] addne r5,r4
	addne	r5,r4
# [1823] tst r6,#0x4
	tst	r6,#4
# [1824] addne r5,r0
	addne	r5,r0
# [1828] add r10,r5
	add	r10,r5
# [1829] asr r5,#1
	asr	r5,#1
# [1830] add r9,r5
	add	r9,r5
# [1834] ldr r5,[r7,#0x1c0]
	ldr	r5,[r7, #448]
# [1835] mul r4,r5,r9
	mul	r4,r5,r9
# [1836] mov r0,r4
	mov	r0,r4
# [1837] mul r4,r5,r10
	mul	r4,r5,r10
# [1838] mov r6,r4
	mov	r6,r4
# Rescheduled
# [1843] ldr r2,[r7,#0x198]
	ldr	r2,[r7, #408]
# [1842] mov r1,#0x6000
	mov	r1,#24576
# Rescheduled
# [1845] ldr r4,[r7,#0x19c]
	ldr	r4,[r7, #412]
# [1844] sub r0,r2
	sub	r0,r2
# [1846] sub r0,r4
	sub	r0,r4
# [1847] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1848] lsr r5,#18
	lsr	r5,#18
# [1849] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1850] add r2,r5
	add	r2,r5
# [1851] str r2,[r7,#0x198]
	str	r2,[r7, #408]
# [1852] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1853] lsr r5,#18
	lsr	r5,#18
# [1854] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1855] add r4,r5
	add	r4,r5
# [1856] str r4,[r7,#0x19c]
	str	r4,[r7, #412]
# Rescheduled
# [1859] ldr r8,[r7,#0x1b0]
	ldr	r8,[r7, #432]
# [1858] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [1861] add r8,r4
	add	r8,r4
# [1862] str r8,[r7,#0x1b0]
	str	r8,[r7, #432]
# Rescheduled
# [1867] ldr r2,[r7,#0x1a0]
	ldr	r2,[r7, #416]
# [1866] mov r0,r6
	mov	r0,r6
# Rescheduled
# [1869] ldr r4,[r7,#0x1a4]
	ldr	r4,[r7, #420]
# [1868] sub r0,r2
	sub	r0,r2
# [1870] sub r0,r4
	sub	r0,r4
# [1871] smull r5,r12,r0,r1
	smull	r5,r12,r0,r1
# [1872] lsr r5,#18
	lsr	r5,#18
# [1873] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1874] add r2,r5
	add	r2,r5
# [1875] str r2,[r7,#0x1a0]
	str	r2,[r7, #416]
# [1876] smull r5,r12,r1,r2
	smull	r5,r12,r1,r2
# [1877] lsr r5,#18
	lsr	r5,#18
# [1878] orr r5,r5,r12,lsl #14
	orr	r5,r5,r12,lsl #14
# [1879] add r4,r5
	add	r4,r5
# [1880] str r4,[r7,#0x1a4]
	str	r4,[r7, #420]
# Rescheduled
# [1883] ldr r8,[r7,#0x1ac]
	ldr	r8,[r7, #428]
# [1882] ldr r0,[r7,#0x1a8]
	ldr	r0,[r7, #424]
# [1885] add r8,r4       //lt
	add	r8,r4
# [1886] str r8,[r7,#0x1ac]
	str	r8,[r7, #428]
# [1887] add r0,#1
	add	r0,#1
# [1888] str r0,[r7,#0x1a8]
	str	r0,[r7, #424]
# [1889] ldmfd r13!,{r0-r12}
	ldmfd	r13!,{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
# [1893] sidclock+=2000;//1000;
	ldr	r0,.Lj517
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj517
	add	r1,r0,#2000
# Rescheduled
# [1894] until sidclock>=20000;//20526;
	ldr	r0,.Lj517
	str	r1,[r2]
	ldr	r1,[r0]
	mov	r0,#32
	orr	r0,r0,#19968
	cmp	r1,r0
	blt	.Lj514
# [1895] sidclock-=20000;//20526;
	ldr	r0,.Lj517
	ldr	r0,[r0]
	sub	r0,r0,#32
# Rescheduled
	ldr	r1,.Lj517
	sub	r0,r0,#19968
# Rescheduled
# [1896] sid[0]:= siddata[$6c] div 16384;//32768;
	ldr	r2,.Lj522
	str	r0,[r1]
	ldr	r0,[r2]
	mov	r1,r0,asr #31
	add	r0,r0,r1,lsr #18
	mov	r0,r0,asr #14
# Rescheduled
	ldr	r2,[r11, #-52]
	sxth	r1,r0
# Rescheduled
# [1897] sid[1]:=siddata[$6b] div 16384;//32768;
	ldr	r0,.Lj523
	strh	r1,[r2]
	ldr	r1,[r0]
	mov	r0,r1,asr #31
	add	r0,r1,r0,lsr #18
	mov	r0,r0,asr #14
# Rescheduled
	ldr	r1,[r11, #-52]
	sxth	r0,r0
# Rescheduled
# [1898] oldsc:=sc;
	ldr	r2,.Lj524
	strh	r0,[r1, #2]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj525
	str	r0,[r1]
# [1899] sc:=sid[0]+sid[1];
	ldr	r0,[r11, #-52]
# Rescheduled
# Peephole LdrLdr2LdrMov done
	ldrsh	r2,[r0]
# Peephole MovLdr2Ldr done
	ldrsh	r0,[r0, #2]
# Rescheduled
	ldr	r3,.Lj524
	add	r1,r0,r2
# Rescheduled
# [1900] scope[scj div 1]:=sc; inc(scj); if scj>1*959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=1*959;
	ldr	r0,.Lj527
	str	r1,[r3]
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj524
	mov	r2,r0,lsl #2
# Rescheduled
	ldr	r3,.Lj529
	ldr	r0,[r1]
# Rescheduled
	ldr	r12,.Lj527
	str	r0,[r2, r3]
	ldr	r0,[r12]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj527
	str	r0,[r12]
	ldr	r0,[r1]
	mov	r1,#191
	orr	r1,r1,#768
	cmp	r0,r1
	ble	.Lj533
	ldr	r0,.Lj525
	ldr	r0,[r0]
	cmp	r0,#0
	bge	.Lj536
	ldr	r0,.Lj524
	ldr	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrgt	r0,.Lj527
	movgt	r1,#0
	strgt	r1,[r0]
	bgt	.Lj540
.Lj536:
	mov	r1,#191
# Rescheduled
	ldr	r0,.Lj527
	orr	r1,r1,#768
	str	r1,[r0]
.Lj540:
.Lj533:
	ldmea	r11,{r11,r13,r15}
.Lj517:
	.long	TC_$RETROMALINA_$$_SIDCLOCK
.Lj522:
	.long	U_$RETROMALINA_$$_SIDDATA+432
.Lj523:
	.long	U_$RETROMALINA_$$_SIDDATA+428
.Lj524:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
.Lj525:
	.long	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
.Lj527:
	.long	TC_$RETROMALINA_$$_SCJ
.Lj529:
	.long	U_$RETROMALINA_$$_SCOPE
.Le29:
	.size	RETROMALINA_$$_SID$LONGINT$$TSAMPLE, .Le29 - RETROMALINA_$$_SID$LONGINT$$TSAMPLE

.section .text.n_retromalina_$$_antialias6$double$tfiltertable$$double
	.balign 4
RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE:
# Var input located in register d0
# Var ft located in register r0
# Var $result located in register d0
# [1913] begin
	vmov	d0,r0,r1
	mov	r0,r2
# Peephole Add/SubLdr2Ldr done
# [1915] ft[0]:=ft[1];
	ldr	r3,[r0, #8]
	ldr	r2,[r0, #12]
	mov	r1,r0
	str	r3,[r1]
	str	r2,[r1, #4]
# Peephole Add/SubLdr2Ldr done
# [1916] ft[1]:=ft[2];
	ldr	r3,[r0, #16]
	ldr	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #8]
	str	r1,[r0, #12]
# Peephole Add/SubLdr2Ldr done
# [1917] ft[2]:=ft[3];
	ldr	r3,[r0, #24]
	ldr	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #16]
	str	r1,[r0, #20]
# Peephole Add/SubLdr2Ldr done
# [1918] ft[3]:=ft[4];
	ldr	r3,[r0, #32]
	ldr	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #24]
	str	r1,[r0, #28]
# Peephole Add/SubLdr2Ldr done
# [1919] ft[4]:=ft[5];
	ldr	r3,[r0, #40]
	ldr	r1,[r0, #44]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #32]
	str	r1,[r0, #36]
# Peephole Add/SubLdr2Ldr done
# [1920] ft[5]:=ft[6];
	ldr	r3,[r0, #48]
	ldr	r2,[r0, #52]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #40]
# Rescheduled
# [1922] ft[6]:=input/gain;
	ldr	r1,.Lj546
	str	r2,[r0, #44]
	vldr	d1,[r1]
	vdiv.f64	d0,d0,d1
	vstr	d0,[r0, #48]
# Peephole Add/SubLdr2Ldr done
# [1924] ft[7]:=ft[8];
	ldr	r3,[r0, #64]
	ldr	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #56]
	str	r2,[r0, #60]
# Peephole Add/SubLdr2Ldr done
# [1925] ft[8]:=ft[9];
	ldr	r3,[r0, #72]
	ldr	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #64]
	str	r2,[r0, #68]
# Peephole Add/SubLdr2Ldr done
# [1926] ft[9]:=ft[10];
	ldr	r3,[r0, #80]
	ldr	r2,[r0, #84]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #72]
	str	r2,[r0, #76]
# Peephole Add/SubLdr2Ldr done
# [1927] ft[10]:=ft[11];
	ldr	r3,[r0, #88]
	ldr	r1,[r0, #92]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #80]
	str	r1,[r0, #84]
# Peephole Add/SubLdr2Ldr done
# [1928] ft[11]:=ft[12];
	ldr	r3,[r0, #96]
	ldr	r2,[r0, #100]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #88]
	str	r2,[r0, #92]
# Peephole Add/SubLdr2Ldr done
# [1929] ft[12]:=ft[13];
	ldr	r3,[r0, #104]
	ldr	r2,[r0, #108]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r0, #96]
	str	r2,[r0, #100]
# [1931] ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
	vldr	d0,[r0, #8]
	vldr	d1,[r0, #40]
	vadd.f64	d1,d0,d1
	vldr	d0,.Lj547
	vmul.f64	d2,d0,d1
	vldr	d0,[r0]
	vldr	d1,[r0, #48]
	vadd.f64	d0,d0,d1
	vadd.f64	d2,d0,d2
	vldr	d3,[r0, #24]
	vldr	d0,[r0, #32]
	vadd.f64	d1,d3,d0
	vldr	d0,.Lj548
	vmul.f64	d0,d0,d1
	vadd.f64	d1,d2,d0
	vldr	d0,.Lj549
	vmul.f64	d0,d0,d3
	vadd.f64	d2,d1,d0
# [1932] + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
	vldr	d1,.Lj550
	vldr	d0,[r0, #56]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj551
	vldr	d0,[r0, #64]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
# [1933] + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
	vldr	d1,.Lj552
	vldr	d0,[r0, #72]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d0,.Lj553
	vldr	d1,[r0, #80]
	vmul.f64	d0,d0,d1
	vadd.f64	d2,d2,d0
# [1934] + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);
	vldr	d1,.Lj554
	vldr	d0,[r0, #88]
	vmul.f64	d0,d1,d0
	vadd.f64	d2,d2,d0
	vldr	d1,.Lj555
	vldr	d0,[r0, #96]
	vmul.f64	d0,d1,d0
	vadd.f64	d0,d2,d0
	vstr	d0,[r0, #104]
# Var $result located in register d0
# [1936] antialias6:=ft[13];
	vldr	d0,[r0, #104]
# [1937] end;
	vmov	r0,r1,d0
	bx	r14
.Lj546:
	.long	TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
.Lj547:
# value: 0d+6.0000000000000000E+000
	.byte	0,0,0,0,0,0,24,64
.Lj548:
# value: 0d+1.5000000000000000E+001
	.byte	0,0,0,0,0,0,46,64
.Lj549:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64
.Lj550:
# value: 0d-7.9924224560000001E-001
	.byte	13,224,77,121,100,147,233,191
.Lj551:
# value: 0d+4.9534616898000001E+000
	.byte	55,184,222,66,88,208,19,64
.Lj552:
# value: 0d-1.2816370553000000E+001
	.byte	217,26,53,82,251,161,41,192
.Lj553:
# value: 0d+1.7720271720000000E+001
	.byte	56,162,57,186,99,184,49,64
.Lj554:
# value: 0d-1.3809038175000000E+001
	.byte	89,174,109,64,58,158,43,192
.Lj555:
# value: 0d+5.7509166298999999E+000
	.byte	171,197,253,73,240,0,23,64
.Le30:
	.size	RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE, .Le30 - RETROMALINA_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE

.section .text.n_retromalina_$$_pwmbeep
	.balign 4
.globl	RETROMALINA_$$_PWMBEEP
RETROMALINA_$$_PWMBEEP:
# [2048] begin
	stmfd	r13!,{r4,r14}
	sub	r13,r13,#32
	sub	r13,r13,#16384
# Var i located in register r0
# Var sinus located at r13+0, size=OS_NO
# Var ctrlblock located at r13+16384, size=OS_NO
# Var i located in register r4
# [2049] for i:=0 to 4095 do sinus[i]:=round(1040+1024*(sin(2*pi*i/512)));
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj560:
	add	r4,r4,#1
	vmov	s0,r4
	vcvt.f64.s32	d0,s0
	vldr	d1,.Lj563
	vmul.f64	d0,d1,d0
	vldr	d1,.Lj564
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_sin_real
	vldr	d0,.Lj562
	vmov	d1,r0,r1
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj561
	vadd.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Peephole FoldShiftLdrStr done
	str	r0,[r13, r4, lsl #2]
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj560
# Rescheduled
# Rescheduled
# [2051] ctrlblock[0]:=$07050140; //transfer info
	ldr	r1,.Lj565
	ldr	r0,.Lj566
	str	r1,[r13, r0]
# [2052] ctrlblock[1]:=$c205a000;
	mov	r1,#-1040187392
# Rescheduled
	ldr	r0,.Lj567
	orr	r1,r1,#368640
	str	r1,[r13, r0]
# Rescheduled
# Rescheduled
# [2053] ctrlblock[2]:=$7E20C018;
	ldr	r0,.Lj568
	ldr	r1,.Lj569
	str	r0,[r13, r1]
# Rescheduled
# [2054] ctrlblock[3]:=7680;
	ldr	r0,.Lj570
	mov	r1,#7680
	str	r1,[r13, r0]
# Rescheduled
# [2055] ctrlblock[4]:=$0;
	ldr	r1,.Lj571
	mov	r0,#0
	str	r0,[r13, r1]
# [2056] ctrlblock[5]:=$c4000020;
	mov	r1,#32
# Rescheduled
	ldr	r0,.Lj572
	orr	r1,r1,#-1006632960
	str	r1,[r13, r0]
# Rescheduled
# [2057] ctrlblock[6]:=$0;
	ldr	r1,.Lj573
	mov	r0,#0
	str	r0,[r13, r1]
# Rescheduled
# [2058] ctrlblock[7]:=$0;
	ldr	r1,.Lj574
	mov	r0,#0
	str	r0,[r13, r1]
# Var i located in register r4
# [2059] for i:=0 to 7 do lpoke($4000000+4*i,ctrlblock[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj577:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
# Rescheduled
# Rescheduled
	ldr	r2,.Lj566
	sub	r0,r0,#-67108864
	add	r2,r13,r2
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r4, lsl #2]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r4,#7
	blt	.Lj577
# Rescheduled
# [2060] ctrlblock[5]:=$c4000000;
	ldr	r1,.Lj572
	mov	r0,#-1006632960
	str	r0,[r13, r1]
# [2061] ctrlblock[1]:=$c205c000;
	mov	r0,#-1040187392
# Rescheduled
	ldr	r1,.Lj567
	orr	r0,r0,#376832
	str	r0,[r13, r1]
# Var i located in register r4
# [2062] for i:=0 to 7 do lpoke($4000020+4*i,ctrlblock[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj583:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
	add	r0,r0,#32
# Rescheduled
# Rescheduled
	ldr	r2,.Lj566
	add	r0,r0,#67108864
	add	r2,r13,r2
# Peephole FoldShiftLdrStr done
	ldr	r1,[r2, r4, lsl #2]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r4,#7
	blt	.Lj583
# Var i located in register r4
# [2063] for i:=0 to 4095 do lpoke ($8000000+4*i,sinus[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj587:
	add	r4,r4,#1
	mov	r0,r4,lsl #2
	sub	r0,r0,#-134217728
# Peephole FoldShiftLdrStr done
	ldr	r1,[r13, r4, lsl #2]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#255
	orr	r0,r0,#3840
	cmp	r4,r0
	blt	.Lj587
# Var i located in register r4
# [2064] for i:=0 to 4095 do lpoke ($8004000+4*i,sinus[i]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj590:
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
	blt	.Lj590
# Var i located in register r4
# [2065] for i:=0 to 4095 do lpoke ($8008000+4*i,sinus[2*(i mod 2048)]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj593:
	add	r4,r4,#1
	mov	r0,r4
	mov	r1,r0,asr #31
	eor	r0,r0,r1
	sub	r0,r0,r1
	mov	r0,r0,lsl #21
# Peephole FoldShiftProcess done
# [2087] end;
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
	blt	.Lj593
# Var i located in register r4
# [2066] for i:=0 to 4095 do lpoke ($800C000+4*i,sinus[2*(i mod 2048)]);
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj596:
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
	blt	.Lj596
# [2067] CleanDataCacheRange($8000000,$10000);
	ldr	r0,.Lj597
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj599
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj597
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#134217728
	blx	r2
.Lj599:
# [2068] CleanDataCacheRange($4000000,$10000);
	ldr	r0,.Lj597
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj603
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj597
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#67108864
	blx	r2
.Lj603:
# [2069] sleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [2073] i:=pinteger($3F200010)^ and  %11111111111111000111111111111000;
	ldr	r0,.Lj605
	ldr	r0,[r0]
	bic	r0,r0,#7
	bic	r0,r0,#229376
# Var i located in register r0
# [2074] lpoke($3F200010, i or       %00000000000000100000000000000100); // gpio 40/45 as alt0
	orr	r1,r0,#4
	orr	r1,r1,#131072
# Rescheduled
	ldr	r0,.Lj605
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2075] lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
	mov	r1,#22
# Rescheduled
	ldr	r0,.Lj607
	orr	r1,r1,#1509949440
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2076] lpoke($3F1010a4,$5a002000); // div 5
	mov	r1,#1509949440
# Rescheduled
	ldr	r0,.Lj608
	orr	r1,r1,#8192
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2077] lpoke($3F20C010,5669); // pwm 1 range  11bit 48 khz 2083
	mov	r1,#37
# Rescheduled
	ldr	r0,.Lj609
	orr	r1,r1,#5632
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2078] lpoke($3F20C020,5669); // pwm 2 range
	mov	r1,#37
# Rescheduled
	ldr	r0,.Lj610
	orr	r1,r1,#5632
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2079] lpoke($3F20C000,$00002161); // pwm contr0l - enable, clear fifo, use fifo
	mov	r1,#97
	orr	r1,r1,#8448
	mov	r0,#1056964608
	orr	r0,r0,#2146304
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2080] lpoke($3F20C008,$80000307); // pwm dma enable
	mov	r1,#-2147483641
# Rescheduled
	ldr	r0,.Lj611
	orr	r1,r1,#768
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2081] lpoke($3F007ff0,pinteger($3F007FF0)^ or %100000000); // dma0 enable
	ldr	r0,.Lj612
	ldr	r0,[r0]
	orr	r1,r0,#256
# Rescheduled
	ldr	r0,.Lj612
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2082] lpoke($3F007804,$c4000000);
	ldr	r0,.Lj614
	mov	r1,#-1006632960
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [2083] lpoke($3F007800,3);
	mov	r0,#1056964608
	orr	r0,r0,#30720
	mov	r1,#3
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	add	r13,r13,#32
	add	r13,r13,#16384
	ldmfd	r13!,{r4,r15}
.Lj563:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64
.Lj564:
# value: 0d+1.9531250000000000E-003
	.byte	0,0,0,0,0,0,96,63
.Lj562:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64
.Lj561:
# value: 0d+1.0400000000000000E+003
	.byte	0,0,0,0,0,64,144,64
.Lj565:
	.long	117768512
.Lj566:
	.long	16384
.Lj567:
	.long	16388
.Lj568:
	.long	2116075544
.Lj569:
	.long	16392
.Lj570:
	.long	16396
.Lj571:
	.long	16400
.Lj572:
	.long	16404
.Lj573:
	.long	16408
.Lj574:
	.long	16412
.Lj597:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj605:
	.long	1059061776
.Lj607:
	.long	1058017440
.Lj608:
	.long	1058017444
.Lj609:
	.long	1059110928
.Lj610:
	.long	1059110944
.Lj611:
	.long	1059110920
.Lj612:
	.long	1056997360
.Lj614:
	.long	1056995332
.Le31:
	.size	RETROMALINA_$$_PWMBEEP, .Le31 - RETROMALINA_$$_PWMBEEP
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$retromalina_$$_fh
	.balign 4
# [110] var fh,filetype:integer;                // this needs cleaning...
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
# [111] sfh:integer;                        // SID file handler
	.globl U_$RETROMALINA_$$_SFH
	.size U_$RETROMALINA_$$_SFH,4
U_$RETROMALINA_$$_SFH:
	.zero 4

.section .bss.n_u_$retromalina_$$_play
	.balign 2
# [112] play:word;
	.globl U_$RETROMALINA_$$_PLAY
	.size U_$RETROMALINA_$$_PLAY,2
U_$RETROMALINA_$$_PLAY:
	.zero 2

.section .bss.n_u_$retromalina_$$_p2
	.balign 4
# [113] p2:^integer;
	.globl U_$RETROMALINA_$$_P2
	.size U_$RETROMALINA_$$_P2,4
U_$RETROMALINA_$$_P2:
	.zero 4

.section .bss.n_u_$retromalina_$$_tim
	.balign 4
# [114] tim,t,t2,t3,ts,t6,time6502:int64;
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
# [115] vblank1:byte;
	.globl U_$RETROMALINA_$$_VBLANK1
	.size U_$RETROMALINA_$$_VBLANK1,1
U_$RETROMALINA_$$_VBLANK1:
	.zero 1

.section .bss.n_u_$retromalina_$$_combined
# [116] combined:array[0..1023] of byte;
	.globl U_$RETROMALINA_$$_COMBINED
	.size U_$RETROMALINA_$$_COMBINED,1024
U_$RETROMALINA_$$_COMBINED:
	.zero 1024

.section .bss.n_u_$retromalina_$$_scope
	.balign 4
# [117] scope:array[0..959] of integer;
	.globl U_$RETROMALINA_$$_SCOPE
	.size U_$RETROMALINA_$$_SCOPE,3840
U_$RETROMALINA_$$_SCOPE:
	.zero 3840

.section .bss.n_u_$retromalina_$$_debug
	.balign 4
# [120] debug:integer;
	.globl U_$RETROMALINA_$$_DEBUG
	.size U_$RETROMALINA_$$_DEBUG,4
U_$RETROMALINA_$$_DEBUG:
	.zero 4

.section .bss.n_u_$retromalina_$$_songtime
	.balign 4
# [124] songtime,songfreq:int64;
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
# [125] skip:integer;
	.globl U_$RETROMALINA_$$_SKIP
	.size U_$RETROMALINA_$$_SKIP,4
U_$RETROMALINA_$$_SKIP:
	.zero 4

.section .bss.n_u_$retromalina_$$_thread
	.balign 4
# [127] thread:TRetro;
	.globl U_$RETROMALINA_$$_THREAD
	.size U_$RETROMALINA_$$_THREAD,4
U_$RETROMALINA_$$_THREAD:
	.zero 4

.section .bss.n_u_$retromalina_$$_thread2
	.balign 4
# [128] thread2:TKbd;
	.globl U_$RETROMALINA_$$_THREAD2
	.size U_$RETROMALINA_$$_THREAD2,4
U_$RETROMALINA_$$_THREAD2:
	.zero 4

.section .bss.n_u_$retromalina_$$_times6502
	.balign 4
# [129] times6502:array[0..15] of integer;
	.globl U_$RETROMALINA_$$_TIMES6502
	.size U_$RETROMALINA_$$_TIMES6502,64
U_$RETROMALINA_$$_TIMES6502:
	.zero 64

.section .bss.n_u_$retromalina_$$_r1
	.balign 4
# [130] r1:pointer;
	.globl U_$RETROMALINA_$$_R1
	.size U_$RETROMALINA_$$_R1,4
U_$RETROMALINA_$$_R1:
	.zero 4

.section .bss.n_u_$retromalina_$$_attacktablei
	.balign 4
# [135] attacktablei:array[0..15] of int64;
	.globl U_$RETROMALINA_$$_ATTACKTABLEI
	.size U_$RETROMALINA_$$_ATTACKTABLEI,128
U_$RETROMALINA_$$_ATTACKTABLEI:
	.zero 128

.section .bss.n_u_$retromalina_$$_srtablei
	.balign 4
# [136] srtablei:array[0..15] of int64;
	.globl U_$RETROMALINA_$$_SRTABLEI
	.size U_$RETROMALINA_$$_SRTABLEI,128
U_$RETROMALINA_$$_SRTABLEI:
	.zero 128

.section .bss.n_u_$retromalina_$$_siddata
	.balign 4
# [140] siddata:array[0..1151] of integer;
	.globl U_$RETROMALINA_$$_SIDDATA
	.size U_$RETROMALINA_$$_SIDDATA,4608
U_$RETROMALINA_$$_SIDDATA:
	.zero 4608

.section .bss.n_u_$retromalina_$$_i
	.balign 4
# [142] i,j,k,l,fh2,lines:integer;
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
# [143] p,p3:pointer;
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
# [144] b:byte;
	.globl U_$RETROMALINA_$$_B
	.size U_$RETROMALINA_$$_B,1
U_$RETROMALINA_$$_B:
	.zero 1

.section .bss.n_u_$retromalina_$$_scrfh
	.balign 4
# [145] scrfh:integer;
	.globl U_$RETROMALINA_$$_SCRFH
	.size U_$RETROMALINA_$$_SCRFH,4
U_$RETROMALINA_$$_SCRFH:
	.zero 4

.section .bss.n_u_$retromalina_$$_tabl
	.balign 4
# [147] tabl,tabl2:Ttfb;
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
# [149] p4:^integer;
	.globl U_$RETROMALINA_$$_P4
	.size U_$RETROMALINA_$$_P4,4
U_$RETROMALINA_$$_P4:
	.zero 4

.section .bss.n_u_$retromalina_$$_scrconvert
	.balign 4
# [150] scrconvert:Tsrcconvert;
	.globl U_$RETROMALINA_$$_SCRCONVERT
	.size U_$RETROMALINA_$$_SCRCONVERT,4
U_$RETROMALINA_$$_SCRCONVERT:
	.zero 4

.section .bss.n_u_$retromalina_$$_fb
	.balign 4
# [151] fb:pframebufferdevice;
	.globl U_$RETROMALINA_$$_FB
	.size U_$RETROMALINA_$$_FB,4
U_$RETROMALINA_$$_FB:
	.zero 4

.section .bss.n_u_$retromalina_$$_framebufferproperties
	.balign 4
# [152] FramebufferProperties:TFramebufferProperties;
	.globl U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES
	.size U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES,76
U_$RETROMALINA_$$_FRAMEBUFFERPROPERTIES:
	.zero 76

.section .bss.n_u_$retromalina_$$_kbd
	.balign 4
# [153] kbd:array[0..15] of TKeyboarddata;
	.globl U_$RETROMALINA_$$_KBD
	.size U_$RETROMALINA_$$_KBD,192
U_$RETROMALINA_$$_KBD:
	.zero 192

.section .bss.n_u_$retromalina_$$_m
	.balign 2
# [154] m:array[0..128] of Tmousedata;
	.globl U_$RETROMALINA_$$_M
	.size U_$RETROMALINA_$$_M,1032
U_$RETROMALINA_$$_M:
	.zero 1032

.section .bss.n_u_$retromalina_$$_dummy
	.balign 4
# [155] dummy:pointer;
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
# [2097] end.
.Le32:
	.size	VMT_$RETROMALINA_$$_TRETRO, .Le32 - VMT_$RETROMALINA_$$_TRETRO

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
.Le33:
	.size	VMT_$RETROMALINA_$$_TKBD, .Le33 - VMT_$RETROMALINA_$$_TKBD
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_.Ld5
	.balign 4
.Ld5:
	.byte	6
	.ascii	"TRetro"
.Le34:
	.size	.Ld5, .Le34 - .Ld5

.section .rodata.n_.Ld6
	.balign 4
.Ld6:
	.byte	4
	.ascii	"Tkbd"
.Le35:
	.size	.Ld6, .Le35 - .Ld6
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$RETROMALINA_$$_DB
.globl	TC_$RETROMALINA_$$_DB
TC_$RETROMALINA_$$_DB:
	.byte	0
.Le36:
	.size	TC_$RETROMALINA_$$_DB, .Le36 - TC_$RETROMALINA_$$_DB

.section .data.n_TC_$RETROMALINA_$$_SIDTIME
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDTIME
TC_$RETROMALINA_$$_SIDTIME:
	.long	0,0
# [122] timer1:int64=-1;
.Le37:
	.size	TC_$RETROMALINA_$$_SIDTIME, .Le37 - TC_$RETROMALINA_$$_SIDTIME

.section .data.n_TC_$RETROMALINA_$$_TIMER1
	.balign 4
.globl	TC_$RETROMALINA_$$_TIMER1
TC_$RETROMALINA_$$_TIMER1:
	.long	-1,-1
# [123] siddelay:int64=20000;
.Le38:
	.size	TC_$RETROMALINA_$$_TIMER1, .Le38 - TC_$RETROMALINA_$$_TIMER1

.section .data.n_TC_$RETROMALINA_$$_SIDDELAY
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDDELAY
TC_$RETROMALINA_$$_SIDDELAY:
	.long	20000,0
.Le39:
	.size	TC_$RETROMALINA_$$_SIDDELAY, .Le39 - TC_$RETROMALINA_$$_SIDDELAY

.section .data.n_TC_$RETROMALINA_$$_SCJ
	.balign 4
.globl	TC_$RETROMALINA_$$_SCJ
TC_$RETROMALINA_$$_SCJ:
	.long	0
.Le40:
	.size	TC_$RETROMALINA_$$_SCJ, .Le40 - TC_$RETROMALINA_$$_SCJ

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
.Le41:
	.size	TC_$RETROMALINA_$$_ATTACKTABLE, .Le41 - TC_$RETROMALINA_$$_ATTACKTABLE

.section .data.n_TC_$RETROMALINA_$$_SIDCOUNT
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCOUNT
TC_$RETROMALINA_$$_SIDCOUNT:
	.long	1
# [138] sampleclock:integer=0;
.Le42:
	.size	TC_$RETROMALINA_$$_SIDCOUNT, .Le42 - TC_$RETROMALINA_$$_SIDCOUNT

.section .data.n_TC_$RETROMALINA_$$_SAMPLECLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SAMPLECLOCK
TC_$RETROMALINA_$$_SAMPLECLOCK:
	.long	0
# [139] sidclock:integer=0;
.Le43:
	.size	TC_$RETROMALINA_$$_SAMPLECLOCK, .Le43 - TC_$RETROMALINA_$$_SAMPLECLOCK

.section .data.n_TC_$RETROMALINA_$$_SIDCLOCK
	.balign 4
.globl	TC_$RETROMALINA_$$_SIDCLOCK
TC_$RETROMALINA_$$_SIDCLOCK:
	.long	0
.Le44:
	.size	TC_$RETROMALINA_$$_SIDCLOCK, .Le44 - TC_$RETROMALINA_$$_SIDCLOCK

.section .data.n_TC_$RETROMALINA_$$_FULLSCREEN
	.balign 4
.globl	TC_$RETROMALINA_$$_FULLSCREEN
TC_$RETROMALINA_$$_FULLSCREEN:
	.long	0
.Le45:
	.size	TC_$RETROMALINA_$$_FULLSCREEN, .Le45 - TC_$RETROMALINA_$$_FULLSCREEN

.section .data.n_TC_$RETROMALINA_$$_RUNNING
	.balign 4
.globl	TC_$RETROMALINA_$$_RUNNING
TC_$RETROMALINA_$$_RUNNING:
	.long	0
.Le46:
	.size	TC_$RETROMALINA_$$_RUNNING, .Le46 - TC_$RETROMALINA_$$_RUNNING

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,30
.Ld1:
	.ascii	"C:\\retro\\combinedwaveforms.bin\000"
.Le47:
	.size	.Ld1$strlab, .Le47 - .Ld1$strlab

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,20
.Ld2:
	.ascii	"C:\\retro\\st4font.def\000"
.Le48:
	.size	.Ld2$strlab, .Le48 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,17
.Ld3:
	.ascii	"C:\\retro\\mysz.def\000"
.Le49:
	.size	.Ld3$strlab, .Le49 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,25
.Ld4:
	.ascii	"C:\\retro\\ataripalette.def\000"
.Le50:
	.size	.Ld4$strlab, .Le50 - .Ld4$strlab

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC:
	.long	0
# [910] sc:integer=0;
.Le51:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC, .Le51 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_OLDSC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [911] waveform1:word=0;
.Le52:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC, .Le52 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_SC

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [912] f1:boolean=false;
.Le53:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1, .Le53 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [913] waveform2:word=0;
.Le54:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1, .Le54 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F1

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [914] f2:boolean=false;
.Le55:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2, .Le55 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [915] waveform3:word=0;
.Le56:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2, .Le56 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F2

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3
	.balign 2
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [916] f3:boolean=false;
.Le57:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3, .Le57 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [917] ff:integer=0;
.Le58:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3, .Le58 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_F3

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.long	0
# [918] filter_resonance2i:integer=0;
.Le59:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF, .Le59 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [919] filter_freqi:integer=0;
.Le60:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I, .Le60 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [920] volume:integer=0;
.Le61:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI, .Le61 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [921] c3off:integer=0;
.Le62:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME, .Le62 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_VOLUME

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
	.long	0
# [922] fl:integer=0;
.Le63:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF, .Le63 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_C3OFF

.section .data.n_TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL
	.balign 4
TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [962] var i,sid1,sid1l,ind:integer;
.Le64:
	.size	TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL, .Le64 - TC_$RETROMALINA$_$SID$LONGINT$$TSAMPLE_$$_FL

.section .data.n_TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
	.balign 4
TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN:
# value: 0d+6.8555321079999998E+007
	.byte	133,235,81,228,72,88,144,65
.Le65:
	.size	TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN, .Le65 - TC_$RETROMALINA$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$RETROMALINA_$$_TSRCCONVERT
	.balign 4
.globl	RTTI_$RETROMALINA_$$_TSRCCONVERT
RTTI_$RETROMALINA_$$_TSRCCONVERT:
	.byte	23,11
# [2099] 
	.ascii	"Tsrcconvert"
	.byte	0,0,0,0,3,0,0
	.long	0
	.byte	1,0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_POINTER
	.byte	6
	.ascii	"screen"
	.byte	0
.Le66:
	.size	RTTI_$RETROMALINA_$$_TSRCCONVERT, .Le66 - RTTI_$RETROMALINA_$$_TSRCCONVERT

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
.Le67:
	.size	RTTI_$RETROMALINA_$$_TTFB, .Le67 - RTTI_$RETROMALINA_$$_TTFB

.section .rodata.n_RTTI_$RETROMALINA_$$_PTFB
	.balign 4
.globl	RTTI_$RETROMALINA_$$_PTFB
RTTI_$RETROMALINA_$$_PTFB:
	.byte	29,4
	.ascii	"Ptfb"
	.byte	0,0
	.long	RTTI_$RETROMALINA_$$_TTFB
.Le68:
	.size	RTTI_$RETROMALINA_$$_PTFB, .Le68 - RTTI_$RETROMALINA_$$_PTFB

.section .rodata.n_RTTI_$RETROMALINA_$$_PINT
	.balign 4
.globl	RTTI_$RETROMALINA_$$_PINT
RTTI_$RETROMALINA_$$_PINT:
	.byte	29,4
	.ascii	"Pint"
	.byte	0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le69:
	.size	RTTI_$RETROMALINA_$$_PINT, .Le69 - RTTI_$RETROMALINA_$$_PINT

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
.Le70:
	.size	RTTI_$RETROMALINA_$$_TRAM, .Le70 - RTTI_$RETROMALINA_$$_TRAM

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
.Le71:
	.size	RTTI_$RETROMALINA_$$_TRAMW, .Le71 - RTTI_$RETROMALINA_$$_TRAMW

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
.Le72:
	.size	RTTI_$RETROMALINA_$$_TRAMB, .Le72 - RTTI_$RETROMALINA_$$_TRAMB

.section .rodata.n_INIT_$RETROMALINA_$$_TRETRO
	.balign 4
.globl	INIT_$RETROMALINA_$$_TRETRO
INIT_$RETROMALINA_$$_TRETRO:
	.byte	15,6
	.ascii	"TRetro"
	.long	4,0
.Le73:
	.size	INIT_$RETROMALINA_$$_TRETRO, .Le73 - INIT_$RETROMALINA_$$_TRETRO

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
.Le74:
	.size	RTTI_$RETROMALINA_$$_TRETRO, .Le74 - RTTI_$RETROMALINA_$$_TRETRO

.section .rodata.n_INIT_$RETROMALINA_$$_TKBD
	.balign 4
.globl	INIT_$RETROMALINA_$$_TKBD
INIT_$RETROMALINA_$$_TKBD:
	.byte	15,4
	.ascii	"Tkbd"
	.byte	0,0
	.long	4,0
.Le75:
	.size	INIT_$RETROMALINA_$$_TKBD, .Le75 - INIT_$RETROMALINA_$$_TKBD

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
.Le76:
	.size	RTTI_$RETROMALINA_$$_TKBD, .Le76 - RTTI_$RETROMALINA_$$_TKBD

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
.Le77:
	.size	RTTI_$RETROMALINA_$$_TSAMPLE, .Le77 - RTTI_$RETROMALINA_$$_TSAMPLE

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
.Le78:
	.size	RTTI_$RETROMALINA_$$_TFILTERTABLE, .Le78 - RTTI_$RETROMALINA_$$_TFILTERTABLE
# End asmlist al_rtti

