	.file "Project1.pas"
# Begin asmlist al_procedures

.section .text.n_p$project1_$$_sidopen$longint
	.balign 4
.globl	P$PROJECT1_$$_SIDOPEN$LONGINT
P$PROJECT1_$$_SIDOPEN$LONGINT:
# Temps allocated between r11-204 and r11-76
# [Project1.pas]
# [55] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#212
# Var fh located in register r4
# Var i located in register r5
# Var il located in register r5
# Var speed located at r11-48, size=OS_32
# Var version located at r11-52, size=OS_16
# Var offset located at r11-56, size=OS_16
# Var load located at r11-60, size=OS_16
# Var startsong located at r11-64, size=OS_16
# Var flags located at r11-68, size=OS_16
# Var dump located at r11-72, size=OS_16
# Var b located at r11-76, size=OS_8
	mov	r4,r0
	mov	r0,#0
	str	r0,[r11, #-204]
# Peephole MovStrMov done
	str	r0,[r11, #-200]
	sub	r2,r11,#88
	sub	r1,r11,#192
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-196]
	cmp	r0,#0
	bne	.Lj5
# [56] reset6502;
	bl	UNIT6502_$$_RESET6502
# [57] atitle:='                                ';
	ldr	r0,.Lj7
	ldr	r2,.Lj8
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# [58] author:='                                ';
	ldr	r0,.Lj9
	ldr	r2,.Lj8
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# [59] copyright:='                                ';
	ldr	r0,.Lj11
	ldr	r2,.Lj8
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# [60] fileread(fh,version,2); version:=(version shl 8) or (version shr 8);
	ldr	r0,[r4]
	sub	r1,r11,#52
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldrh	r0,[r11, #-52]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
# [107] end;
	orr	r0,r1,r0,lsr #8
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-52]
# [61] fileread(fh,offset,2); offset:=(offset shl 8) or (offset shr 8);
	ldr	r0,[r4]
	sub	r1,r11,#56
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldrh	r0,[r11, #-56]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-56]
# [62] fileread(fh,load,2); load:=(load shl 8) or (load shr 8);
	ldr	r0,[r4]
	sub	r1,r11,#60
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldrh	r0,[r11, #-60]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-60]
# [63] fileread(fh,init,2); init:=(init shl 8) or (init shr 8);
	ldr	r0,[r4]
	ldr	r1,.Lj13
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj13
	ldrh	r0,[r0]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
	uxth	r1,r0
	ldr	r0,.Lj13
	strh	r1,[r0]
# [64] fileread(fh,play,2);  play:=(play shl 8) or (play shr 8);
	ldr	r0,[r4]
	ldr	r1,.Lj16
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj16
	ldrh	r0,[r0]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
	uxth	r0,r0
	ldr	r1,.Lj16
	strh	r0,[r1]
# [65] fileread(fh,songs,2); songs:=(songs shl 8) or (songs shr 8);
	ldr	r0,[r4]
	ldr	r1,.Lj19
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj19
	ldrh	r0,[r0]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
	uxth	r0,r0
	ldr	r1,.Lj19
	strh	r0,[r1]
# [66] fileread(fh,startsong,2); startsong:=(startsong shl 8) or (startsong shr 8);
	ldr	r0,[r4]
	sub	r1,r11,#64
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldrh	r0,[r11, #-64]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-64]
# [67] fileread(fh,speed,4);
	ldr	r0,[r4]
	sub	r1,r11,#48
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r2,[r11, #-48]
# [68] speed:=speed shr 24+((speed shr 8) and $0000FF00) + ((speed shl 8) and $00FF0000) + (speed shl 24);
	mov	r0,r2,lsr #8
	and	r0,r0,#65280
# Peephole FoldShiftProcess done
	add	r1,r0,r2,lsr #24
	mov	r0,r2,lsl #8
	and	r0,r0,#16711680
	add	r1,r0,r1
# Peephole FoldShiftProcess done
	add	r0,r1,r2,lsl #24
	str	r0,[r11, #-48]
# [69] fileread(fh,atitle[1],32);
	ldr	r0,[r4]
	ldr	r1,.Lj22
	mov	r2,#32
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [70] fileread(fh,author[1],32);
	ldr	r0,[r4]
	ldr	r1,.Lj23
	mov	r2,#32
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [71] fileread(fh,copyright[1],32);
	ldr	r0,[r4]
	ldr	r1,.Lj24
	mov	r2,#32
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [72] if version>1 then begin
	ldrh	r0,[r11, #-52]
	cmp	r0,#1
	bls	.Lj26
# [73] fileread(fh,flags,2); flags:=(flags shl 8) or (flags shr 8);
	ldr	r0,[r4]
	sub	r1,r11,#68
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldrh	r0,[r11, #-68]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-68]
# [74] fileread(fh,dump,2);
	ldr	r0,[r4]
	sub	r1,r11,#72
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [75] fileread(fh,dump,2);
	ldr	r0,[r4]
	sub	r1,r11,#72
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [76] b:=0; if load=0 then begin b:=1; fileread(fh,load,2); end;
	mov	r0,#0
	strb	r0,[r11, #-76]
	ldrh	r0,[r11, #-60]
	cmp	r0,#0
	bne	.Lj28
	mov	r0,#1
	strb	r0,[r11, #-76]
	ldr	r0,[r4]
	sub	r1,r11,#60
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
.Lj28:
.Lj26:
# [78] for i:=1 to 32 do if byte(atitle[i])=$F1 then atitle[i]:=char(26);
	mov	r5,#1
	sub	r5,r5,#1
	.balign 4
.Lj31:
	add	r5,r5,#1
# Peephole AndAnd2And done
	and	r1,r5,#255
	ldr	r0,.Lj7
	ldrb	r0,[r1, r0]
	cmp	r0,#241
# Peephole AndAnd2And done
	andeq	r2,r5,#255
	moveq	r1,#26
	ldreq	r0,.Lj7
	streqb	r1,[r2, r0]
	cmp	r5,#32
	blt	.Lj31
# [79] for i:=1 to 32 do if byte(author[i])=$F1 then author[i]:=char(26);
	mov	r5,#1
	sub	r5,r5,#1
	.balign 4
.Lj38:
	add	r5,r5,#1
# Peephole AndAnd2And done
	and	r1,r5,#255
	ldr	r0,.Lj9
	ldrb	r0,[r1, r0]
	cmp	r0,#241
# Peephole AndAnd2And done
	andeq	r1,r5,#255
	moveq	r2,#26
	ldreq	r0,.Lj9
	streqb	r2,[r1, r0]
	cmp	r5,#32
	blt	.Lj38
# [80] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [81] outtextxyz(18,132,'type: PSID',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#188
	ldr	r2,.Lj43
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [82] outtextxyz(18,164,'version: '+inttostr(version),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#200
	bl	fpc_ansistr_decr_ref
	ldrh	r1,[r11, #-52]
	sub	r0,r11,#204
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-204]
	mov	r3,#0
	ldr	r1,.Lj44
	sub	r0,r11,#200
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-200]
	mov	r3,#188
	mov	r1,#164
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [83] outtextxyz(18,196,'offset: ' +inttohex(offset,4),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldrh	r1,[r11, #-56]
	mov	r2,#4
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj45
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#196
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [84] outtextxyz(18,228,'load: '+inttohex(load,4),188-144*b,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldrh	r1,[r11, #-60]
	mov	r2,#4
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj46
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	ldrb	r1,[r11, #-76]
	mov	r0,#144
	mul	r1,r1,r0
	mov	r0,#188
	sub	r3,r0,r1
	mov	r1,#228
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [85] outtextxyz(18,260,'init: '+inttohex(init,4),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj13
	ldrh	r1,[r0]
	mov	r2,#4
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj48
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#260
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [86] outtextxyz(18,292,'play: '+inttohex(play,4),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj16
	ldrh	r1,[r0]
	mov	r2,#4
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj50
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#292
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [87] outtextxyz(18,324,'songs: '+inttostr(songs),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj19
	ldrh	r1,[r0]
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj52
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#324
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [88] outtextxyz(18,356,'startsong: '+inttostr(startsong),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldrh	r1,[r11, #-64]
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj53
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#356
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [89] outtextxyz(18,388,'speed: '+inttohex(speed,8),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldr	r1,[r11, #-48]
	mov	r2,#0
	mov	r3,#8
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOHEX$QWORD$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj54
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#388
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [90] outtextxyz(18,420,'title: '+atitle,188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj7
	mov	r2,#0
	sub	r0,r11,#200
	bl	fpc_shortstr_to_ansistr
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj56
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#420
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [91] outtextxyz(18,452,'author: '+author,188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj9
	mov	r2,#0
	sub	r0,r11,#200
	bl	fpc_shortstr_to_ansistr
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj58
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#452
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [92] outtextxyz(18,484,'copyright: '+copyright,188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj11
	mov	r2,#0
	sub	r0,r11,#200
	bl	fpc_shortstr_to_ansistr
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj60
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#484
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [93] outtextxyz(18,516,'flags: '+inttohex(flags,4),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	ldrh	r1,[r11, #-68]
	mov	r2,#4
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj61
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#516
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [94] song:=startsong-1;
	ldrh	r0,[r11, #-64]
	sub	r0,r0,#1
	uxth	r1,r0
	ldr	r0,.Lj62
	strh	r1,[r0]
# [96] reset6502;
	bl	UNIT6502_$$_RESET6502
# [97] for i:=0 to 65535 do write6502(i,0);
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj65:
	add	r5,r5,#1
	mov	r0,r5
	mov	r1,#0
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
	mov	r0,#255
	orr	r0,r0,#65280
	cmp	r5,r0
	blt	.Lj65
	.balign 4
.Lj66:
# [99] il:=fileread(fh,b,1);
	ldr	r0,[r4]
	sub	r1,r11,#76
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	and	r5,r0,#255
# Peephole DataMov2Data removed superfluous mov
# [100] write6502(load,b);
	ldrh	r0,[r11, #-60]
	ldrb	r1,[r11, #-76]
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [101] load+=1;
	ldrh	r0,[r11, #-60]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-60]
# [102] until il<>1;
	cmp	r5,#1
	beq	.Lj66
# [103] fileseek(fh,0,fsfrombeginning);
	ldr	r0,[r4]
	mov	r2,#0
	mov	r1,#0
	bl	SYSUTILS_$$_FILESEEK$LONGINT$LONGINT$LONGINT$$LONGINT
# [104] jsr6502(song,init);
	ldr	r0,.Lj13
	ldrh	r1,[r0]
	ldr	r0,.Lj62
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [105] cia:=read6502($dc04)+256*read6502($dc05);
	mov	r0,#4
	orr	r0,r0,#56320
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#5
	orr	r0,r0,#56320
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	add	r0,r4,r0,lsl #8
	ldr	r1,.Lj71
	str	r0,[r1]
# [106] outtextxyz(18,578,'cia: '+inttohex(read6502($dc04)+256*read6502($dc05),4),188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	mov	r0,#4
	orr	r0,r0,#56320
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#5
	orr	r0,r0,#56320
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	add	r1,r4,r0,lsl #8
	mov	r2,#4
	sub	r0,r11,#200
	bl	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-200]
	mov	r3,#0
	ldr	r1,.Lj72
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r1,#66
	orr	r1,r1,#512
	mov	r3,#188
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj5:
	bl	fpc_popaddrstack
	sub	r0,r11,#204
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#200
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-196]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r11,r13,r15}
.Lj7:
	.long	U_$P$PROJECT1_$$_ATITLE
.Lj8:
	.long	_$PROJECT1$_Ld1
.Lj9:
	.long	U_$P$PROJECT1_$$_AUTHOR
.Lj11:
	.long	U_$P$PROJECT1_$$_COPYRIGHT
.Lj13:
	.long	U_$P$PROJECT1_$$_INIT
.Lj16:
	.long	U_$RETROMALINA_$$_PLAY
.Lj19:
	.long	TC_$P$PROJECT1_$$_SONGS
.Lj22:
	.long	U_$P$PROJECT1_$$_ATITLE+1
.Lj23:
	.long	U_$P$PROJECT1_$$_AUTHOR+1
.Lj24:
	.long	U_$P$PROJECT1_$$_COPYRIGHT+1
.Lj43:
	.long	.Ld2
.Lj44:
	.long	.Ld3
.Lj45:
	.long	.Ld4
.Lj46:
	.long	.Ld5
.Lj48:
	.long	.Ld6
.Lj50:
	.long	.Ld7
.Lj52:
	.long	.Ld8
.Lj53:
	.long	.Ld9
.Lj54:
	.long	.Ld10
.Lj56:
	.long	.Ld11
.Lj58:
	.long	.Ld12
.Lj60:
	.long	.Ld13
.Lj61:
	.long	.Ld14
.Lj62:
	.long	TC_$P$PROJECT1_$$_SONG
.Lj71:
	.long	U_$P$PROJECT1_$$_CIA
.Lj72:
	.long	.Ld15
.Le0:
	.size	P$PROJECT1_$$_SIDOPEN$LONGINT, .Le0 - P$PROJECT1_$$_SIDOPEN$LONGINT

.section .text.n_p$project1_$$_sort
	.balign 4
.globl	P$PROJECT1_$$_SORT
P$PROJECT1_$$_SORT:
# Temps allocated between r13+8 and r13+136
# [117] begin
	stmfd	r13!,{r4,r5,r6,r7,r14}
	sub	r13,r13,#136
# Var i located in register r5
# Var j located in register r6
# Var s located at r13+0, size=OS_32
# Var s2 located at r13+4, size=OS_32
	mov	r0,#0
	str	r0,[r13]
# Peephole MovStrMov done
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13, #132]
# Peephole MovStrMov done
	str	r0,[r13, #128]
	add	r2,r13,#8
	add	r1,r13,#20
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #124]
	cmp	r0,#0
	bne	.Lj75
	.balign 4
.Lj77:
# [119] j:=0;
	mov	r6,#0
# [120] for i:=0 to ilf-2 do
	ldr	r0,.Lj80
	ldr	r0,[r0]
	sub	r4,r0,#2
	mov	r5,#0
	cmp	r4,r5
	blt	.Lj82
	sub	r5,r5,#1
	.balign 4
.Lj83:
	add	r5,r5,#1
# [122] if lowercase(filenames[i,0])>lowercase(filenames[i+1,0]) then
	mov	r1,r5,lsl #3
	ldr	r0,.Lj84
	ldr	r1,[r1, r0]
	add	r0,r13,#128
	bl	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
	ldr	r7,[r13, #128]
	mov	r1,r5,lsl #3
	ldr	r0,.Lj85
	ldr	r1,[r1, r0]
	add	r0,r13,#132
	bl	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
	ldr	r0,[r13, #132]
	mov	r1,r7
	bl	fpc_ansistr_compare
	cmp	r0,#0
	ble	.Lj87
# [124] s:=filenames[i,0]; s2:=filenames[i,1];
	mov	r0,r5,lsl #3
	ldr	r1,.Lj85
	ldr	r1,[r0, r1]
	mov	r0,r13
	bl	fpc_ansistr_assign
	mov	r0,r5,lsl #3
	ldr	r1,.Lj89
	ldr	r1,[r0, r1]
	add	r0,r13,#4
	bl	fpc_ansistr_assign
# [125] filenames[i,0]:=filenames[i+1,0];
	mov	r1,r5,lsl #3
	ldr	r0,.Lj84
	ldr	r1,[r1, r0]
	mov	r2,r5,lsl #3
	ldr	r0,.Lj85
	add	r0,r0,r2
	bl	fpc_ansistr_assign
# [126] filenames[i,1]:=filenames[i+1,1];
	mov	r0,r5,lsl #3
	ldr	r1,.Lj92
	ldr	r1,[r0, r1]
	mov	r2,r5,lsl #3
	ldr	r0,.Lj89
	add	r0,r0,r2
	bl	fpc_ansistr_assign
# [127] filenames[i+1,0]:=s; filenames[i+1,1]:=s2;
	mov	r0,r5,lsl #3
	ldr	r1,.Lj84
	add	r0,r1,r0
	ldr	r1,[r13]
	bl	fpc_ansistr_assign
	mov	r0,r5,lsl #3
	ldr	r1,.Lj92
	add	r0,r1,r0
	ldr	r1,[r13, #4]
	bl	fpc_ansistr_assign
# [128] j:=1;
	mov	r6,#1
.Lj87:
	cmp	r4,r5
	bgt	.Lj83
.Lj82:
# [131] until j=0;
	cmp	r6,#0
	bne	.Lj77
.Lj75:
	bl	fpc_popaddrstack
# [132] end;
	add	r0,r13,#132
	bl	fpc_ansistr_decr_ref
	add	r0,r13,#128
	bl	fpc_ansistr_decr_ref
	mov	r0,r13
	bl	fpc_ansistr_decr_ref
	add	r0,r13,#4
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r13, #124]
	cmp	r0,#0
	blne	fpc_reraise
	add	r13,r13,#136
	ldmfd	r13!,{r4,r5,r6,r7,r15}
.Lj80:
	.long	U_$P$PROJECT1_$$_ILF
.Lj84:
	.long	U_$P$PROJECT1_$$_FILENAMES+8
.Lj85:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj89:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj92:
	.long	U_$P$PROJECT1_$$_FILENAMES+12
.Le1:
	.size	P$PROJECT1_$$_SORT, .Le1 - P$PROJECT1_$$_SORT

.section .text.n_p$project1_$$_dirlist$ansistring
	.balign 4
.globl	P$PROJECT1_$$_DIRLIST$ANSISTRING
P$PROJECT1_$$_DIRLIST$ANSISTRING:
# Temps allocated between r11-172 and r11-48
# [137] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#180
# Var dir located at r11-48, size=OS_32
	str	r0,[r11, #-48]
# Peephole StrLdr2StrMov 1 done
	bl	fpc_ansistr_incr_ref
	mov	r0,#0
	str	r0,[r11, #-172]
	sub	r2,r11,#60
	sub	r1,r11,#164
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-168]
	cmp	r0,#0
	bne	.Lj98
# [138] currentdir2:=dir;
	ldr	r1,[r11, #-48]
	ldr	r0,.Lj100
	bl	fpc_ansistr_assign
# [139] setcurrentdir(currentdir2);
	ldr	r0,.Lj100
	ldr	r0,[r0]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [140] currentdir2:=getcurrentdir;
	sub	r0,r11,#172
	bl	SYSUTILS_$$_GETCURRENTDIR$$ANSISTRING
	ldr	r1,[r11, #-172]
	ldr	r0,.Lj100
	bl	fpc_ansistr_assign
# [141] if copy(currentdir2,length(currentdir2),1)<>'\' then currentdir2:=currentdir2+'\';
	ldr	r0,.Lj100
	ldr	r2,[r0]
	cmp	r2,#0
	ldrne	r2,[r2, #-4]
	ldr	r0,.Lj100
	ldr	r1,[r0]
	mov	r3,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
	ldr	r0,[r11, #-172]
	ldr	r1,.Lj106
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	beq	.Lj108
	ldr	r0,.Lj100
	ldr	r1,[r0]
	ldr	r0,.Lj100
	mov	r3,#0
	ldr	r2,.Lj106
	bl	fpc_ansistr_concat
.Lj108:
# [142] box2(897,67,1782,115,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#115
	mov	r1,#67
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [143] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [144] s:=currentdir2;
	ldr	r0,.Lj100
	ldr	r1,[r0]
	ldr	r0,.Lj113
	bl	fpc_ansistr_assign
# [145] if length(s)>55 then s:=copy(s,1,55);
	ldr	r0,.Lj113
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#55
	ble	.Lj117
	ldr	r0,.Lj113
	ldr	r1,[r0]
	mov	r3,#55
	mov	r2,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-172]
	ldr	r0,.Lj113
	bl	fpc_ansistr_assign
.Lj117:
# [146] l:=length(s);
	ldr	r0,.Lj113
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj122
	str	r0,[r1]
# [147] outtextxyz(1344-8*l,75,s,44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj122
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r1,#1344
	sub	r0,r1,r0
	ldr	r1,.Lj113
	ldr	r2,[r1]
	mov	r3,#44
	mov	r1,#75
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [148] ilf:=0;
	mov	r0,#0
	ldr	r1,.Lj125
	str	r0,[r1]
# [149] currentdir:=currentdir2+'*';
	ldr	r0,.Lj100
	ldr	r1,[r0]
	ldr	r0,.Lj127
	mov	r3,#0
	ldr	r2,.Lj128
	bl	fpc_ansistr_concat
# [150] if findfirst(currentdir,fadirectory,sr)=0 then
	ldr	r4,.Lj129
	ldr	r1,.Lj130
	mov	r0,r4
	bl	fpc_finalize
	mov	r2,r4
	ldr	r0,.Lj127
	ldr	r0,[r0]
	mov	r1,#16
	bl	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj133
	.balign 4
.Lj134:
# [152] if (sr.attr and faDirectory) = faDirectory then
	ldr	r0,.Lj137
	ldr	r0,[r0]
	and	r0,r0,#16
	cmp	r0,#16
	bne	.Lj139
# [154] filenames[ilf,0]:=sr.name;
	ldr	r0,.Lj125
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj141
	add	r0,r1,r0
	ldr	r1,.Lj142
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# [155] filenames[ilf,1]:='[DIR]';
	ldr	r0,.Lj125
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj144
	add	r0,r1,r0
	ldr	r1,.Lj145
	bl	fpc_ansistr_assign
# [156] ilf+=1;
	ldr	r0,.Lj125
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj125
	str	r0,[r1]
.Lj139:
# [158] until (findnext(sr)<>0) or (ilf=1000);
	ldr	r0,.Lj129
	bl	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj136
	ldr	r0,.Lj125
	ldr	r0,[r0]
	cmp	r0,#1000
	bne	.Lj134
.Lj136:
.Lj133:
# [159] sysutils.findclose(sr);
	ldr	r0,.Lj129
	bl	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
# [161] currentdir:=currentdir2+'*.sid';
	ldr	r0,.Lj100
	ldr	r1,[r0]
	ldr	r0,.Lj127
	mov	r3,#0
	ldr	r2,.Lj156
	bl	fpc_ansistr_concat
# [162] if findfirst(currentdir,faAnyFile,sr)=0 then
	ldr	r4,.Lj129
	ldr	r1,.Lj130
	mov	r0,r4
	bl	fpc_finalize
	mov	r2,r4
	ldr	r0,.Lj127
	ldr	r0,[r0]
	mov	r1,#63
	bl	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj161
	.balign 4
.Lj162:
# [164] filenames[ilf,0]:=sr.name;
	ldr	r0,.Lj125
	ldr	r0,[r0]
	mov	r1,r0,lsl #3
	ldr	r0,.Lj141
	add	r0,r0,r1
	ldr	r1,.Lj142
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# [165] filenames[ilf,1]:='';
	ldr	r0,.Lj125
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj144
	add	r0,r1,r0
	mov	r1,#0
	bl	fpc_ansistr_assign
# [166] ilf+=1;
	ldr	r0,.Lj125
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj125
	str	r0,[r1]
# [167] until (findnext(sr)<>0) or (ilf=1000);
	ldr	r0,.Lj129
	bl	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj164
	ldr	r0,.Lj125
	ldr	r0,[r0]
	cmp	r0,#1000
	bne	.Lj162
.Lj164:
.Lj161:
# [168] sysutils.findclose(sr);
	ldr	r0,.Lj129
	bl	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
# [170] currentdir:=currentdir2+'*.dmp';
	ldr	r0,.Lj100
	ldr	r1,[r0]
	ldr	r0,.Lj127
	mov	r3,#0
	ldr	r2,.Lj180
	bl	fpc_ansistr_concat
# [171] if findfirst(currentdir,faAnyFile,sr)=0 then
	ldr	r4,.Lj129
	ldr	r1,.Lj130
	mov	r0,r4
	bl	fpc_finalize
	mov	r2,r4
	ldr	r0,.Lj127
	ldr	r0,[r0]
	mov	r1,#63
	bl	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj185
	.balign 4
.Lj186:
# [173] filenames[ilf,0]:=sr.name;
	ldr	r0,.Lj125
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj141
	add	r0,r1,r0
	ldr	r1,.Lj142
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# [174] filenames[ilf,1]:='';
	ldr	r0,.Lj125
	ldr	r0,[r0]
	mov	r1,r0,lsl #3
	ldr	r0,.Lj144
	add	r0,r0,r1
	mov	r1,#0
	bl	fpc_ansistr_assign
# [175] ilf+=1;
	ldr	r0,.Lj125
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj125
	str	r0,[r1]
# [176] until (findnext(sr)<>0) or (ilf=1000);
	ldr	r0,.Lj129
	bl	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj188
	ldr	r0,.Lj125
	ldr	r0,[r0]
	cmp	r0,#1000
	bne	.Lj186
.Lj188:
.Lj185:
# [177] sysutils.findclose(sr);
	ldr	r0,.Lj129
	bl	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
# [178] sort;
	bl	P$PROJECT1_$$_SORT
# [180] box(920,132,840,32,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#840
	mov	r1,#132
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [181] if ilf<26 then ild:=ilf-1 else ild:=26;
	ldr	r0,.Lj125
	ldr	r0,[r0]
	cmp	r0,#26
	bge	.Lj204
	ldr	r0,.Lj125
	ldr	r0,[r0]
	sub	r0,r0,#1
	ldr	r1,.Lj206
	str	r0,[r1]
	b	.Lj207
.Lj204:
	mov	r1,#26
	ldr	r0,.Lj206
	str	r1,[r0]
.Lj207:
# [182] for i:=0 to ild do
	ldr	r0,.Lj206
	ldr	r4,[r0]
	mov	r0,#0
	ldr	r1,.Lj213
	str	r0,[r1]
	ldr	r0,.Lj213
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj211
	ldr	r1,.Lj213
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj212:
	ldr	r1,.Lj213
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [184] if filenames[i,1]='' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj144
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj220
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj141
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r0,r0,#4
	ldr	r1,.Lj122
	str	r0,[r1]
	b	.Lj225
.Lj220:
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj141
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj122
	str	r0,[r1]
.Lj225:
# [185] if filenames[i,1]='' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj144
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj233
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r1,r0,lsl #3
	ldr	r0,.Lj141
	ldr	r0,[r1, r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj141
	ldr	r1,[r0, r1]
	ldr	r0,.Lj113
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj240
.Lj233:
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj141
	ldr	r1,[r0, r1]
	ldr	r0,.Lj113
	bl	fpc_ansistr_assign
.Lj240:
# [186] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj113
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj247
	ldr	r0,.Lj113
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-172]
	ldr	r0,.Lj113
	bl	fpc_ansistr_assign
	mov	r0,#40
	ldr	r1,.Lj122
	str	r0,[r1]
.Lj247:
# [187] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj113
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
	mov	r0,#1
	ldr	r1,.Lj256
	str	r0,[r1]
	ldr	r0,.Lj256
	ldr	r0,[r0]
	cmp	r5,r0
	blt	.Lj254
	ldr	r1,.Lj256
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj255:
	ldr	r1,.Lj256
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj113
	ldr	r1,[r0]
	ldr	r0,.Lj256
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj263
	ldr	r0,.Lj113
	bl	fpc_ansistr_unique
	ldr	r1,.Lj256
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj263:
	ldr	r0,.Lj256
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj255
.Lj254:
# [188] if filenames[i,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	ldr	r1,.Lj144
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj270
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj122
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj113
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj270:
# [189] if filenames[i,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r1,r0,lsl #3
	ldr	r0,.Lj144
	ldr	r0,[r1, r0]
	ldr	r1,.Lj145
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj278
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj122
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj113
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj213
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
	mov	r3,#44
	ldr	r2,.Lj145
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj278:
	ldr	r0,.Lj213
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj212
.Lj211:
# [191] sel:=0; selstart:=0;
	mov	r0,#0
	ldr	r1,.Lj285
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj286
	str	r0,[r1]
# [192] box2(897,67,1782,115,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#115
	mov	r1,#67
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [193] s:=currentdir2;
	ldr	r0,.Lj100
	ldr	r1,[r0]
	ldr	r0,.Lj113
	bl	fpc_ansistr_assign
# [194] if length(s)>55 then s:=copy(s,1,55);
	ldr	r0,.Lj113
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#55
	ble	.Lj292
	ldr	r0,.Lj113
	ldr	r1,[r0]
	mov	r3,#55
	mov	r2,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-172]
	ldr	r0,.Lj113
	bl	fpc_ansistr_assign
.Lj292:
# [195] l:=length(s);
	ldr	r0,.Lj113
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj122
	str	r0,[r1]
# [196] outtextxyz(1344-8*l,75,s,44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj122
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r1,#1344
	sub	r0,r1,r0
	ldr	r1,.Lj113
	ldr	r2,[r1]
	mov	r3,#44
	mov	r1,#75
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj98:
	bl	fpc_popaddrstack
# [197] end;
	sub	r0,r11,#172
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#48
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-168]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r11,r13,r15}
.Lj100:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj106:
	.long	.Ld16
.Lj113:
	.long	U_$P$PROJECT1_$$_S
.Lj122:
	.long	U_$P$PROJECT1_$$_L
.Lj125:
	.long	U_$P$PROJECT1_$$_ILF
.Lj127:
	.long	U_$P$PROJECT1_$$_CURRENTDIR
.Lj128:
	.long	.Ld17
.Lj129:
	.long	U_$P$PROJECT1_$$_SR
.Lj130:
	.long	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
.Lj137:
	.long	U_$P$PROJECT1_$$_SR+16
.Lj141:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj142:
	.long	U_$P$PROJECT1_$$_SR+20
.Lj144:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj145:
	.long	.Ld18
.Lj156:
	.long	.Ld19
.Lj180:
	.long	.Ld20
.Lj206:
	.long	U_$P$PROJECT1_$$_ILD
.Lj213:
	.long	U_$P$PROJECT1_$$_I
.Lj256:
	.long	U_$P$PROJECT1_$$_J
.Lj285:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj286:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Le2:
	.size	P$PROJECT1_$$_DIRLIST$ANSISTRING, .Le2 - P$PROJECT1_$$_DIRLIST$ANSISTRING

.section .text.n_main
	.balign 4
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
# Temps allocated between r11-188 and r11-44
# [203] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#196
# Var fs located in register r4
	bl	fpc_initializeunits
	mov	r4,#0
	mov	r0,#0
	str	r0,[r11, #-188]
# Peephole MovStrMov done
	str	r0,[r11, #-184]
# Peephole MovStrMov done
	str	r0,[r11, #-168]
	sub	r2,r11,#56
	sub	r1,r11,#160
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-164]
	cmp	r0,#0
	bne	.Lj304
# [205] while not DirectoryExists('C:\') do
	b	.Lj307
	.balign 4
.Lj306:
# [207] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
.Lj307:
	ldr	r0,.Lj309
	bl	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
	cmp	r0,#0
	beq	.Lj306
# [213] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [215] fs:=1;
	mov	r4,#1
# [216] workdir:='C:\';
	ldr	r0,.Lj310
	ldr	r1,.Lj309
	bl	fpc_ansistr_assign
# [217] songtime:=0;
	mov	r1,#0
	ldr	r0,.Lj312
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj313
	str	r0,[r1]
# [218] pause:=true;
	mov	r1,#1
	ldr	r0,.Lj314
	strb	r1,[r0]
# [219] siddelay:=20000;
	mov	r1,#32
	orr	r1,r1,#19968
	ldr	r0,.Lj315
	str	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj316
	str	r1,[r0]
# [220] setcurrentdir(workdir);
	ldr	r0,.Lj310
	ldr	r0,[r0]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [221] initmachine;
	bl	RETROMALINA_$$_INITMACHINE
# [222] poke($2070002,0);
	ldr	r0,.Lj318
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [223] poke($2070006,0);
	ldr	r0,.Lj319
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [224] poke($2070007,0);
	ldr	r0,.Lj320
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [225] poke($2070008,1);
	ldr	r0,.Lj321
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [226] lpoke($206000c,$002040);
	ldr	r0,.Lj322
	mov	r1,#8256
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [227] main1;
	bl	UMAIN_$$_MAIN1
# [228] dirlist('C:\');
	ldr	r0,.Lj309
	bl	P$PROJECT1_$$_DIRLIST$ANSISTRING
# [229] poke($2070003,1);
	ldr	r0,.Lj324
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [230] poke($2070004,1);
	ldr	r0,.Lj325
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [231] poke($2070005,1);
	ldr	r0,.Lj326
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
# [232] pwmbeep;
	bl	RETROMALINA_$$_PWMBEEP
	.balign 4
.Lj327:
# [234] main2;
	bl	UMAIN_$$_MAIN2
# [238] if pause then begin for i:=$200d400 to $200d400+25 do poke(i,0); end;
	ldr	r0,.Lj314
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj331
	mov	r1,#33554432
	orr	r1,r1,#54272
	ldr	r0,.Lj336
	str	r1,[r0]
	ldr	r1,.Lj336
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj335:
	ldr	r1,.Lj336
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj336
	ldr	r0,[r0]
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	ldr	r0,.Lj336
	ldr	r0,[r0]
	ldr	r1,.Lj341
	cmp	r0,r1
	blt	.Lj335
.Lj331:
# [240] if peek($2060028)=ord('5') then begin dpoke ($2060028,0); siddelay:=20000; songfreq:=50; skip:=0; end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#53
	bne	.Lj344
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	mov	r0,#32
	orr	r0,r0,#19968
	ldr	r1,.Lj315
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj316
	str	r1,[r0]
	mov	r0,#50
	ldr	r1,.Lj348
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj349
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj350
	str	r1,[r0]
.Lj344:
# [241] if peek($2060028)=ord('1') then begin dpoke ($2060028,0); siddelay:=10000; songfreq:=100; skip:=0; end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#49
	bne	.Lj353
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	mov	r1,#16
	orr	r1,r1,#9984
	ldr	r0,.Lj315
	str	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj316
	str	r1,[r0]
	mov	r1,#100
	ldr	r0,.Lj348
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj349
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj350
	str	r0,[r1]
.Lj353:
# [242] if peek($2060028)=ord('2') then begin dpoke ($2060028,0); siddelay:=5000; songfreq:=200; skip:=0;end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#50
	bne	.Lj362
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	mov	r1,#136
	orr	r1,r1,#4864
	ldr	r0,.Lj315
	str	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj316
	str	r1,[r0]
	mov	r0,#200
	ldr	r1,.Lj348
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj349
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj350
	str	r0,[r1]
.Lj362:
# [243] if peek($2060028)=ord('3') then begin dpoke ($2060028,0); siddelay:=6666; songfreq:=150; skip:=0; end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#51
	bne	.Lj371
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	mov	r1,#10
	orr	r1,r1,#6656
	ldr	r0,.Lj315
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj316
	str	r0,[r1]
	mov	r1,#150
	ldr	r0,.Lj348
	str	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj349
	str	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj350
	str	r1,[r0]
.Lj371:
# [244] if peek($2060028)=ord('4') then begin dpoke ($2060028,0); siddelay:=2500; songfreq:=400; skip:=0; end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#52
	bne	.Lj380
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	mov	r0,#196
	orr	r0,r0,#2304
	ldr	r1,.Lj315
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj316
	str	r1,[r0]
	mov	r0,#400
	ldr	r1,.Lj348
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj349
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj350
	str	r0,[r1]
.Lj380:
# [245] if peek($2060028)=ord('p') then begin dpoke ($2060028,0); pause:=not pause; if pause then sdl_pauseaudio(1) else sdl_pauseaudio(0); end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#112
	bne	.Lj389
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	ldr	r0,.Lj314
	ldrb	r0,[r0]
	cmp	r0,#0
	moveq	r0,#1
	movne	r0,#0
	ldr	r1,.Lj314
	strb	r0,[r1]
	ldr	r0,.Lj314
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj394
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
	b	.Lj396
.Lj394:
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj396:
.Lj389:
# [246] if peek($2060028)=1 then begin dpoke($2060028,0); if peek($2070003)=0 then poke ($2070003,1) else poke ($2070003,0); end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#1
	bne	.Lj399
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	ldr	r0,.Lj324
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#0
	bne	.Lj403
	ldr	r0,.Lj324
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj405
.Lj403:
	ldr	r0,.Lj324
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj405:
.Lj399:
# [247] if peek($2060028)=2 then begin dpoke($2060028,0); if peek($2070004)=0 then poke ($2070004,1) else poke ($2070004,0); end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#2
	bne	.Lj409
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	ldr	r0,.Lj325
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#0
	bne	.Lj413
	ldr	r0,.Lj325
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj415
.Lj413:
	ldr	r0,.Lj325
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj415:
.Lj409:
# [248] if peek($2060028)=3 then begin dpoke($2060028,0); if peek($2070005)=0 then poke ($2070005,1) else poke ($2070005,0); end;
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#3
	bne	.Lj419
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
	ldr	r0,.Lj326
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#0
	bne	.Lj423
	ldr	r0,.Lj326
	mov	r1,#1
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
	b	.Lj425
.Lj423:
	ldr	r0,.Lj326
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj425:
.Lj419:
# [252] if peek($2060028)=23 then
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#23
	bne	.Lj429
# [254] dpoke($2060028,0);
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
# [255] if sel<ild then
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj432
	ldr	r0,[r0]
	cmp	r1,r0
	bge	.Lj434
# [257] box(920,132+32*sel,840,32,34);
	mov	r0,#34
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [258] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj438
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj440
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r0,r0,#4
	ldr	r1,.Lj445
	str	r0,[r1]
	b	.Lj446
.Lj440:
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj443
	ldr	r1,[r1, r0]
	cmp	r1,#0
	ldrne	r1,[r1, #-4]
	ldr	r0,.Lj445
	str	r1,[r0]
.Lj446:
# [259] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj456
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj443
	ldr	r0,[r1, r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r1,[r0, r1]
	ldr	r0,.Lj464
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj465
.Lj456:
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r1,[r0, r1]
	ldr	r0,.Lj464
	bl	fpc_ansistr_assign
.Lj465:
# [260] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj464
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj473
	ldr	r0,.Lj464
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#168
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-168]
	ldr	r0,.Lj464
	bl	fpc_ansistr_assign
	mov	r0,#40
	ldr	r1,.Lj445
	str	r0,[r1]
.Lj473:
# [261] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj464
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
	mov	r1,#1
	ldr	r0,.Lj482
	str	r1,[r0]
	ldr	r0,.Lj482
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj480
	ldr	r1,.Lj482
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj481:
	ldr	r1,.Lj482
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj464
	ldr	r1,[r0]
	ldr	r0,.Lj482
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj489
	ldr	r0,.Lj464
	bl	fpc_ansistr_unique
	ldr	r1,.Lj482
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj489:
	ldr	r0,.Lj482
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj481
.Lj480:
# [262] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj497
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj445
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
	ldr	r2,.Lj464
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj497:
# [263] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj438
	ldr	r0,[r1, r0]
	ldr	r1,.Lj504
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj506
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj445
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj464
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
	mov	r3,#44
	ldr	r2,.Lj504
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj506:
# [264] sel+=1;
	ldr	r0,.Lj431
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj431
	str	r0,[r1]
# [265] box(920,132+32*sel,840,32,36);
	mov	r0,#36
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [266] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj519
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r0,r0,#4
	ldr	r1,.Lj445
	str	r0,[r1]
	b	.Lj525
.Lj519:
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r1,[r0, r1]
	cmp	r1,#0
	ldrne	r1,[r1, #-4]
	ldr	r0,.Lj445
	str	r1,[r0]
.Lj525:
# [267] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj438
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj535
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r1,[r0, r1]
	ldr	r0,.Lj464
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj544
.Lj535:
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r1,[r0, r1]
	ldr	r0,.Lj464
	bl	fpc_ansistr_assign
.Lj544:
# [268] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj464
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj552
	ldr	r0,.Lj464
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#168
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-168]
	ldr	r0,.Lj464
	bl	fpc_ansistr_assign
	mov	r0,#40
	ldr	r1,.Lj445
	str	r0,[r1]
.Lj552:
# [269] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj464
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
	mov	r0,#1
	ldr	r1,.Lj482
	str	r0,[r1]
	ldr	r0,.Lj482
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj559
	ldr	r1,.Lj482
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj560:
	ldr	r1,.Lj482
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj464
	ldr	r1,[r0]
	ldr	r0,.Lj482
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj568
	ldr	r0,.Lj464
	bl	fpc_ansistr_unique
	ldr	r1,.Lj482
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj568:
	ldr	r0,.Lj482
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj560
.Lj559:
# [270] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj576
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj445
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj464
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj576:
# [271] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	ldr	r1,.Lj504
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj591
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj445
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj464
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
	mov	r3,#44
	ldr	r2,.Lj504
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj591
.Lj434:
# [273] else if sel+selstart<ilf-1 then
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r1,r0,r1
	ldr	r0,.Lj594
	ldr	r0,[r0]
	sub	r0,r0,#1
	cmp	r1,r0
	bge	.Lj596
# [275] selstart+=1;
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj437
	str	r1,[r0]
# [276] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [277] box(920,132+32*sel,840,32,36);
	mov	r0,#36
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [278] for i:=0 to ild do
	ldr	r0,.Lj432
	ldr	r4,[r0]
	mov	r1,#0
	ldr	r0,.Lj336
	str	r1,[r0]
	ldr	r0,.Lj336
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj602
	ldr	r1,.Lj336
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj603:
	ldr	r1,.Lj336
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [280] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj612
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r0,r0,#4
	ldr	r1,.Lj445
	str	r0,[r1]
	b	.Lj618
.Lj612:
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj445
	str	r0,[r1]
.Lj618:
# [281] if filenames[i+selstart,1]='' then  s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj438
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj628
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj443
	ldr	r1,[r1, r0]
	ldr	r0,.Lj464
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj637
.Lj628:
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
	ldr	r1,[r0, r1]
	ldr	r0,.Lj464
	bl	fpc_ansistr_assign
.Lj637:
# [282] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj464
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj645
	ldr	r0,.Lj464
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#168
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-168]
	ldr	r0,.Lj464
	bl	fpc_ansistr_assign
	mov	r0,#40
	ldr	r1,.Lj445
	str	r0,[r1]
.Lj645:
# [283] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj464
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
	mov	r1,#1
	ldr	r0,.Lj482
	str	r1,[r0]
	ldr	r0,.Lj482
	ldr	r0,[r0]
	cmp	r5,r0
	blt	.Lj652
	ldr	r1,.Lj482
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj653:
	ldr	r1,.Lj482
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj464
	ldr	r2,[r0]
	ldr	r0,.Lj482
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj661
	ldr	r0,.Lj464
	bl	fpc_ansistr_unique
	ldr	r1,.Lj482
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj661:
	ldr	r0,.Lj482
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj653
.Lj652:
# [284] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj438
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj669
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj336
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj445
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj464
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj669:
# [285] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj336
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	ldr	r1,.Lj504
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj678
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj336
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj445
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
	ldr	r2,.Lj464
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj336
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
	mov	r3,#44
	ldr	r2,.Lj504
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj678:
	ldr	r0,.Lj336
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj603
.Lj602:
.Lj596:
.Lj591:
.Lj429:
# [290] if peek($2060028)=24 then
	ldr	r0,.Lj342
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#24
	bne	.Lj687
# [292] dpoke($2060028,0);
	ldr	r0,.Lj342
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
# [293] if sel>0 then
	ldr	r0,.Lj431
	ldr	r0,[r0]
	cmp	r0,#0
	ble	.Lj691
# [295] box(920,132+32*sel,840,32,34);
	mov	r0,#34
	str	r0,[r13]
	ldr	r0,.Lj431
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [296] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj438
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj697
	ldr	r0,.Lj431
	ldr	r1,[r0]
	ldr	r0,.Lj437
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj443
# [444] end.
	b	.Lj1161
.Lj309:
	.long	.Ld21
.Lj310:
	.long	U_$P$PROJECT1_$$_WORKDIR
.Lj312:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj313:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj314:
	.long	TC_$P$PROJECT1_$$_PAUSE
.Lj315:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj316:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj318:
	.long	34013186
.Lj319:
	.long	34013190
.Lj320:
	.long	34013191
.Lj321:
	.long	34013192
.Lj322:
	.long	33947660
.Lj324:
	.long	34013187
.Lj325:
	.long	34013188
.Lj326:
	.long	34013189
.Lj336:
	.long	U_$P$PROJECT1_$$_I
.Lj341:
	.long	33608729
.Lj342:
	.long	33947688
.Lj348:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj349:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj350:
	.long	U_$RETROMALINA_$$_SKIP
.Lj431:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj432:
	.long	U_$P$PROJECT1_$$_ILD
.Lj437:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Lj438:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj443:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj445:
	.long	U_$P$PROJECT1_$$_L
.Lj464:
	.long	U_$P$PROJECT1_$$_S
.Lj482:
	.long	U_$P$PROJECT1_$$_J
.Lj504:
	.long	.Ld18
.Lj594:
	.long	U_$P$PROJECT1_$$_ILF
.Lj1161:
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r0,r0,#4
	ldr	r1,.Lj702
	str	r0,[r1]
	b	.Lj703
.Lj697:
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj702
	str	r0,[r1]
.Lj703:
# [297] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj713
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r0,[r1, r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r1,[r1, r0]
	ldr	r0,.Lj721
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj722
.Lj713:
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r1,[r0, r1]
	ldr	r0,.Lj721
	bl	fpc_ansistr_assign
.Lj722:
# [298] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj721
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj730
	ldr	r0,.Lj721
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#168
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-168]
	ldr	r0,.Lj721
	bl	fpc_ansistr_assign
	mov	r0,#40
	ldr	r1,.Lj702
	str	r0,[r1]
.Lj730:
# [299] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj721
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
	mov	r1,#1
	ldr	r0,.Lj739
	str	r1,[r0]
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj737
	ldr	r1,.Lj739
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj738:
	ldr	r1,.Lj739
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj721
	ldr	r2,[r0]
	ldr	r0,.Lj739
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj746
	ldr	r0,.Lj721
	bl	fpc_ansistr_unique
	ldr	r1,.Lj739
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj746:
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj738
.Lj737:
# [300] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj754
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj702
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
	ldr	r2,.Lj721
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj754:
# [301] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	ldr	r1,.Lj761
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj763
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj702
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj721
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
	mov	r3,#44
	ldr	r2,.Lj761
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj763:
# [302] sel-=1;
	ldr	r0,.Lj704
	ldr	r0,[r0]
	sub	r1,r0,#1
	ldr	r0,.Lj704
	str	r1,[r0]
# [303] box(920,132+32*sel,840,32,36);
	mov	r0,#36
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [304] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj711
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj776
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r0,r0,#4
	ldr	r1,.Lj702
	str	r0,[r1]
	b	.Lj782
.Lj776:
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj702
	str	r0,[r1]
.Lj782:
# [305] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj792
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r0,[r1, r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r1,[r0, r1]
	ldr	r0,.Lj721
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj801
.Lj792:
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r1,[r1, r0]
	ldr	r0,.Lj721
	bl	fpc_ansistr_assign
.Lj801:
# [306] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj721
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj809
	ldr	r0,.Lj721
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#168
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-168]
	ldr	r0,.Lj721
	bl	fpc_ansistr_assign
	mov	r1,#40
	ldr	r0,.Lj702
	str	r1,[r0]
.Lj809:
# [307] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj721
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
	mov	r1,#1
	ldr	r0,.Lj739
	str	r1,[r0]
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj816
	ldr	r1,.Lj739
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj817:
	ldr	r1,.Lj739
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj721
	ldr	r2,[r0]
	ldr	r0,.Lj739
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj825
	ldr	r0,.Lj721
	bl	fpc_ansistr_unique
	ldr	r1,.Lj739
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj825:
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj817
.Lj816:
# [308] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj833
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj702
	ldr	r0,[r0]
	mov	r0,r0,lsl #3
	mov	r2,#1344
	sub	r0,r2,r0
	ldr	r2,.Lj721
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj833:
# [309] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	ldr	r1,.Lj761
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj848
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj702
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
	ldr	r2,.Lj721
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
	mov	r3,#44
	ldr	r2,.Lj761
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj848
.Lj691:
# [311] else if sel+selstart>0 then
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	cmp	r0,#0
	ble	.Lj852
# [313] selstart-=1;
	ldr	r0,.Lj705
	ldr	r0,[r0]
	sub	r0,r0,#1
	ldr	r1,.Lj705
	str	r0,[r1]
# [314] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [315] box(920,132+32*sel,840,32,36);
	mov	r0,#36
	str	r0,[r13]
	ldr	r0,.Lj704
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [316] for i:=0 to ild do
	ldr	r0,.Lj856
	ldr	r4,[r0]
	mov	r1,#0
	ldr	r0,.Lj860
	str	r1,[r0]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj858
	ldr	r1,.Lj860
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj859:
	ldr	r1,.Lj860
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [318] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj711
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj868
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r0,[r0, r1]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r0,r0,#4
	ldr	r1,.Lj702
	str	r0,[r1]
	b	.Lj874
.Lj868:
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r1,[r0, r1]
	cmp	r1,#0
	ldrne	r1,[r1, #-4]
	ldr	r0,.Lj702
	str	r1,[r0]
.Lj874:
# [319] if filenames[i+selstart,1]='' then s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj884
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r0,[r1, r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r1,[r0, r1]
	ldr	r0,.Lj721
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj893
.Lj884:
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r1,[r0, r1]
	ldr	r0,.Lj721
	bl	fpc_ansistr_assign
.Lj893:
# [320] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj721
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj901
	ldr	r0,.Lj721
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#168
	bl	fpc_ansistr_copy
	ldr	r1,[r11, #-168]
	ldr	r0,.Lj721
	bl	fpc_ansistr_assign
	mov	r0,#40
	ldr	r1,.Lj702
	str	r0,[r1]
.Lj901:
# [321] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj721
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
	mov	r1,#1
	ldr	r0,.Lj739
	str	r1,[r0]
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r5,r0
	blt	.Lj908
	ldr	r1,.Lj739
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj909:
	ldr	r1,.Lj739
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj721
	ldr	r2,[r0]
	ldr	r0,.Lj739
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj917
	ldr	r0,.Lj721
	bl	fpc_ansistr_unique
	ldr	r1,.Lj739
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj917:
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj909
.Lj908:
# [322] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	cmp	r0,#0
	bne	.Lj925
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj702
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
	ldr	r2,.Lj721
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj925:
# [323] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj711
	ldr	r0,[r1, r0]
	ldr	r1,.Lj761
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj934
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	ldr	r0,.Lj702
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
	ldr	r2,.Lj721
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
	mov	r3,#44
	ldr	r2,.Lj761
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj934:
	ldr	r0,.Lj860
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj859
.Lj858:
.Lj852:
.Lj848:
.Lj687:
# [328] if peek($2060028)=43 then
	ldr	r0,.Lj941
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#43
	bne	.Lj943
# [330] dpoke($2060028,0);
	ldr	r0,.Lj941
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
# [331] if songs>0 then
	ldr	r0,.Lj945
	ldrh	r0,[r0]
	cmp	r0,#0
	bls	.Lj947
# [333] if song<songs then
	ldr	r0,.Lj948
	ldrh	r1,[r0]
	ldr	r0,.Lj945
	ldrh	r0,[r0]
	cmp	r1,r0
	bcs	.Lj951
# [335] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [336] for i:=1 to 20000000 do;
	mov	r0,#1
	ldr	r1,.Lj860
	str	r0,[r1]
	ldr	r1,.Lj860
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj954:
	ldr	r1,.Lj860
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj959
	cmp	r1,r0
	blt	.Lj954
# [337] song+=1;
	ldr	r0,.Lj948
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r1,r0
	ldr	r0,.Lj948
	strh	r1,[r0]
# [338] jsr6502(song,init);
	ldr	r0,.Lj962
	ldrh	r1,[r0]
	ldr	r0,.Lj948
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [339] sdl_pauseaudio(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj951:
.Lj947:
.Lj943:
# [344] if peek($2060028)=45 then
	ldr	r0,.Lj941
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#45
	bne	.Lj966
# [346] dpoke($2060028,0);
	ldr	r0,.Lj941
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
# [347] if songs>0 then
	ldr	r0,.Lj945
	ldrh	r0,[r0]
	cmp	r0,#0
	bls	.Lj970
# [349] if song>0 then
	ldr	r0,.Lj948
	ldrh	r0,[r0]
	cmp	r0,#0
	bls	.Lj973
# [351] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [352] for i:=1 to 20000000 do;
	mov	r1,#1
	ldr	r0,.Lj860
	str	r1,[r0]
	ldr	r1,.Lj860
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj976:
	ldr	r1,.Lj860
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj860
	ldr	r1,[r0]
	ldr	r0,.Lj959
	cmp	r1,r0
	blt	.Lj976
# [353] song-=1;
	ldr	r0,.Lj948
	ldrh	r0,[r0]
	sub	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj948
	strh	r0,[r1]
# [354] jsr6502(song,init);
	ldr	r0,.Lj962
	ldrh	r1,[r0]
	ldr	r0,.Lj948
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [355] sdl_pauseaudio(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj973:
.Lj970:
.Lj966:
# [360] if peek($2060028)=13 then
	ldr	r0,.Lj941
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#13
	bne	.Lj988
# [362] dpoke($2060028,0);
	ldr	r0,.Lj941
	mov	r1,#0
	bl	RETROMALINA_$$_DPOKE$LONGINT$WORD
# [363] if filenames[sel+selstart,1]='[DIR]' then
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj711
	ldr	r0,[r0, r1]
	ldr	r1,.Lj761
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj995
# [365] dirlist(currentdir2+filenames[sel+selstart,0]+'\');
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj996
	ldr	r0,[r0]
	str	r0,[r11, #-180]
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r0,[r1, r0]
	str	r0,[r11, #-176]
	ldr	r0,.Lj1000
	str	r0,[r11, #-172]
	sub	r1,r11,#180
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#168
	bl	fpc_ansistr_concat_multi
	ldr	r0,[r11, #-168]
	bl	P$PROJECT1_$$_DIRLIST$ANSISTRING
	b	.Lj1001
.Lj995:
# [370] begin if not pause then
	ldr	r0,.Lj1002
	ldrb	r0,[r0]
	cmp	r0,#0
	bne	.Lj1004
# [372] pause:=true;
	mov	r1,#1
	ldr	r0,.Lj1002
	strb	r1,[r0]
# [373] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj1004:
# [376] for i:=0 to $2F do siddata[i]:=0;
	mov	r0,#0
	ldr	r1,.Lj860
	str	r0,[r1]
	ldr	r1,.Lj860
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj1008:
	ldr	r1,.Lj860
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	mov	r0,r0,lsl #2
	mov	r1,#0
	ldr	r2,.Lj1013
	str	r1,[r0, r2]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	cmp	r0,#47
	blt	.Lj1008
# [377] for i:=$50 to $7F do siddata[i]:=0;
	mov	r1,#80
	ldr	r0,.Lj860
	str	r1,[r0]
	ldr	r1,.Lj860
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj1017:
	ldr	r1,.Lj860
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	mov	r1,r0,lsl #2
	mov	r0,#0
	ldr	r2,.Lj1013
	str	r0,[r1, r2]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	cmp	r0,#127
	blt	.Lj1017
# [378] siddata[$0e]:=$7FFFF8;
	mvn	r1,#-1073741817
	bic	r1,r1,#1065353216
	ldr	r0,.Lj1024
	str	r1,[r0]
# [379] siddata[$1e]:=$7FFFF8;
	mvn	r0,#-1073741817
	bic	r0,r0,#1065353216
	ldr	r1,.Lj1025
	str	r0,[r1]
# [380] siddata[$2e]:=$7FFFF8;
	mvn	r1,#-1073741817
	bic	r1,r1,#1065353216
	ldr	r0,.Lj1026
	str	r1,[r0]
# [381] if sfh>=0 then fileclose(sfh);
	ldr	r0,.Lj1027
	ldr	r0,[r0]
	cmp	r0,#0
	ldrge	r0,.Lj1027
	ldrge	r0,[r0]
	blge	SYSUTILS_$$_FILECLOSE$LONGINT
# [382] sfh:=-1;
	mvn	r1,#0
	ldr	r0,.Lj1027
	str	r1,[r0]
# [383] songtime:=0;
	mov	r1,#0
	ldr	r0,.Lj1032
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj1033
	str	r0,[r1]
# [385] for i:=0 to 6 do lpoke($200d400+4*i,0);
	mov	r1,#0
	ldr	r0,.Lj860
	str	r1,[r0]
	ldr	r1,.Lj860
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj1036:
	ldr	r1,.Lj860
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj860
	ldr	r0,[r0]
	mov	r0,r0,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#54272
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	ldr	r0,.Lj860
	ldr	r0,[r0]
	cmp	r0,#6
	blt	.Lj1036
# [386] fn:= currentdir2+filenames[sel+selstart,0];
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r2,[r1, r0]
	ldr	r0,.Lj996
	ldr	r1,[r0]
	ldr	r0,.Lj1046
	mov	r3,#0
	bl	fpc_ansistr_concat
# [387] sfh:=fileopen(fn,$40);
	ldr	r0,.Lj1046
	ldr	r0,[r0]
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	ldr	r1,.Lj1027
	str	r0,[r1]
# [388] s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4);
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,.Lj706
	ldr	r0,[r1, r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
	ldr	r0,.Lj704
	ldr	r1,[r0]
	ldr	r0,.Lj705
	ldr	r0,[r0]
	add	r0,r0,r1
	mov	r0,r0,lsl #3
	ldr	r1,.Lj706
	ldr	r1,[r0, r1]
	ldr	r0,.Lj721
	mov	r2,#1
	bl	fpc_ansistr_copy
# [389] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj721
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
	mov	r0,#1
	ldr	r1,.Lj739
	str	r0,[r1]
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj1060
	ldr	r1,.Lj739
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj1061:
	ldr	r1,.Lj739
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj721
	ldr	r1,[r0]
	ldr	r0,.Lj739
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj1069
	ldr	r0,.Lj721
	bl	fpc_ansistr_unique
	ldr	r1,.Lj739
	ldr	r2,[r1]
	mov	r1,#32
	sub	r0,r0,#1
	strb	r1,[r0, r2]
.Lj1069:
	ldr	r0,.Lj739
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj1061
.Lj1060:
# [390] siddelay:=20000;
	mov	r1,#32
	orr	r1,r1,#19968
	ldr	r0,.Lj1073
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj1074
	str	r0,[r1]
# [391] filetype:=0;
	mov	r0,#0
	ldr	r1,.Lj1075
	str	r0,[r1]
# [392] fileread(sfh,buf,4);
	ldr	r1,.Lj1076
	ldr	r0,.Lj1027
	ldr	r0,[r0]
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj1076
# [393] if (buf[0]=ord('S')) and (buf[1]=ord('D')) and (buf[2]=ord('M')) and (buf[3]=ord('P')) then
	ldrb	r1,[r0]
	cmp	r1,#83
	bne	.Lj1080
	ldrb	r1,[r0, #1]
	cmp	r1,#68
	bne	.Lj1080
	ldrb	r1,[r0, #2]
	cmp	r1,#77
	bne	.Lj1080
	ldrb	r0,[r0, #3]
	cmp	r0,#80
	bne	.Lj1080
# [395] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [396] outtextxyz(18,132,'type: SDMP',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#188
	ldr	r2,.Lj1084
	mov	r1,#132
	b	.Lj1162
.Lj702:
	.long	U_$P$PROJECT1_$$_L
.Lj704:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj705:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Lj706:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj711:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj721:
	.long	U_$P$PROJECT1_$$_S
.Lj739:
	.long	U_$P$PROJECT1_$$_J
.Lj761:
	.long	.Ld18
.Lj856:
	.long	U_$P$PROJECT1_$$_ILD
.Lj860:
	.long	U_$P$PROJECT1_$$_I
.Lj941:
	.long	33947688
.Lj945:
	.long	TC_$P$PROJECT1_$$_SONGS
.Lj948:
	.long	TC_$P$PROJECT1_$$_SONG
.Lj959:
	.long	20000000
.Lj962:
	.long	U_$P$PROJECT1_$$_INIT
.Lj996:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj1000:
	.long	.Ld16
.Lj1002:
	.long	TC_$P$PROJECT1_$$_PAUSE
.Lj1013:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj1024:
	.long	U_$RETROMALINA_$$_SIDDATA+56
.Lj1025:
	.long	U_$RETROMALINA_$$_SIDDATA+120
.Lj1026:
	.long	U_$RETROMALINA_$$_SIDDATA+184
.Lj1027:
	.long	U_$RETROMALINA_$$_SFH
.Lj1032:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj1033:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj1046:
	.long	U_$P$PROJECT1_$$_FN
.Lj1073:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj1074:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj1075:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj1076:
	.long	U_$P$PROJECT1_$$_BUF
.Lj1084:
	.long	.Ld22
.Lj1162:
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [397] songs:=0;
	mov	r1,#0
	ldr	r0,.Lj1085
	strh	r1,[r0]
# [398] fileread(sfh,buf,4);
	ldr	r1,.Lj1086
	ldr	r0,.Lj1087
	ldr	r0,[r0]
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [399] siddelay:=1000000 div buf[0];
	ldr	r0,.Lj1086
	ldrb	r0,[r0]
	mov	r1,#999424
	orr	r1,r1,#576
	bl	fpc_div_longint
	mov	r2,r0,asr #31
	ldr	r1,.Lj1089
	str	r0,[r1]
	ldr	r0,.Lj1090
	str	r2,[r0]
# [400] outtextxyz(18,196,'speed: '+inttostr(buf[0])+' Hz',188,2,2);
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1091
	str	r0,[r11, #-180]
	ldr	r0,.Lj1086
	ldrb	r1,[r0]
	sub	r0,r11,#184
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r0,[r11, #-184]
	str	r0,[r11, #-176]
	ldr	r0,.Lj1093
	str	r0,[r11, #-172]
	sub	r1,r11,#180
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#168
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-168]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#188
	mov	r1,#196
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [401] atitle:='                                ';
	ldr	r0,.Lj1094
	ldr	r2,.Lj1095
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# [402] fileread(sfh,atitle[1],16);
	ldr	r1,.Lj1096
	ldr	r0,.Lj1087
	ldr	r0,[r0]
	mov	r2,#16
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [403] fileread(sfh,buf,1);
	ldr	r1,.Lj1086
	ldr	r0,.Lj1087
	ldr	r0,[r0]
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [404] outtextxyz(18,164,'atitle: '+atitle,188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj1094
	mov	r2,#0
	sub	r0,r11,#188
	bl	fpc_shortstr_to_ansistr
	ldr	r2,[r11, #-188]
	mov	r3,#0
	ldr	r1,.Lj1101
	sub	r0,r11,#168
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-168]
	mov	r3,#188
	mov	r1,#164
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [405] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [406] outtextxyz(18,912,'SIDCog DMP file, '+inttostr(songfreq)+' Hz',250,2,2);
	sub	r0,r11,#188
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1102
	str	r0,[r11, #-180]
	ldr	r0,.Lj1103
	ldr	r2,[r0]
	ldr	r0,.Lj1104
	ldr	r1,[r0]
	sub	r0,r11,#184
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r0,[r11, #-184]
	str	r0,[r11, #-176]
	ldr	r0,.Lj1093
	str	r0,[r11, #-172]
	sub	r1,r11,#180
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#188
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-188]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#250
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj1106
.Lj1080:
	ldr	r0,.Lj1086
# [408] else if (buf[0]=ord('P')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	ldrb	r1,[r0]
	cmp	r1,#80
	bne	.Lj1109
	ldrb	r1,[r0, #1]
	cmp	r1,#83
	bne	.Lj1109
	ldrb	r1,[r0, #2]
	cmp	r1,#73
	bne	.Lj1109
	ldrb	r0,[r0, #3]
	cmp	r0,#68
	bne	.Lj1109
# [410] reset6502;
	bl	UNIT6502_$$_RESET6502
# [411] sidopen(sfh);
	ldr	r0,.Lj1087
	bl	P$PROJECT1_$$_SIDOPEN$LONGINT
# [412] if cia>0 then siddelay:={985248}1000000 div (50*round(19652/cia));
	ldr	r0,.Lj1114
	ldr	r0,[r0]
	cmp	r0,#0
	ble	.Lj1116
	ldr	r0,.Lj1114
	vldr	s0,[r0]
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj1117
	vdiv.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	mov	r2,r1
	mov	r12,#50
	mov	r1,#0
	mul	r3,r0,r1
	umull	r0,r1,r12,r0
	mla	r3,r12,r2,r3
	add	r1,r3,r1
	mov	r3,#0
	mov	r2,#999424
	orr	r2,r2,#576
	bl	fpc_div_int64
	ldr	r2,.Lj1089
	str	r0,[r2]
	ldr	r0,.Lj1090
	str	r1,[r0]
.Lj1116:
# [413] filetype:=1;
	mov	r0,#1
	ldr	r1,.Lj1121
	str	r0,[r1]
# [414] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [415] outtextxyz(18,912,'PSID file, '+inttostr(1000000 div siddelay)+' Hz',250,2,2);
	sub	r0,r11,#188
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1122
	str	r0,[r11, #-180]
	mov	r3,#0
	mov	r2,#999424
	orr	r2,r2,#576
	ldr	r0,.Lj1090
	ldr	r1,[r0]
	ldr	r0,.Lj1089
	ldr	r0,[r0]
	bl	fpc_div_int64
	mov	r2,r1
	mov	r1,r0
	sub	r0,r11,#184
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r0,[r11, #-184]
	str	r0,[r11, #-176]
	ldr	r0,.Lj1093
	str	r0,[r11, #-172]
	sub	r1,r11,#180
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#188
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-188]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#250
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj1126
.Lj1109:
	ldr	r0,.Lj1086
# [417] else if (buf[0]=ord('R')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	ldrb	r1,[r0]
	cmp	r1,#82
	bne	.Lj1129
	ldrb	r1,[r0, #1]
	cmp	r1,#83
	bne	.Lj1129
	ldrb	r1,[r0, #2]
	cmp	r1,#73
	bne	.Lj1129
	ldrb	r0,[r0, #3]
	cmp	r0,#68
	bne	.Lj1129
# [419] filetype:=2;
	mov	r1,#2
	ldr	r0,.Lj1121
	str	r1,[r0]
# [420] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [421] outtextxyz(18,132,'type: RSID, not yet supported',44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#44
	ldr	r2,.Lj1134
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj1135
.Lj1129:
# [425] fileread(sfh,buf,21);
	ldr	r1,.Lj1086
	ldr	r0,.Lj1087
	ldr	r0,[r0]
	mov	r2,#21
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [426] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [427] outtextxyz(18,132,'type: unknown, 50 Hz SDMP assumed',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#188
	ldr	r2,.Lj1138
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [428] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	b	.Lj1163
.Lj1085:
	.long	TC_$P$PROJECT1_$$_SONGS
.Lj1086:
	.long	U_$P$PROJECT1_$$_BUF
.Lj1087:
	.long	U_$RETROMALINA_$$_SFH
.Lj1089:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj1090:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj1091:
	.long	.Ld10
.Lj1093:
	.long	.Ld23
.Lj1094:
	.long	U_$P$PROJECT1_$$_ATITLE
.Lj1095:
	.long	_$PROJECT1$_Ld1
.Lj1096:
	.long	U_$P$PROJECT1_$$_ATITLE+1
.Lj1101:
	.long	.Ld24
.Lj1102:
	.long	.Ld25
.Lj1103:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj1104:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj1114:
	.long	U_$P$PROJECT1_$$_CIA
.Lj1117:
# value: 0d+1.9652000000000000E+004
	.byte	0,0,0,0,0,49,211,64
.Lj1121:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj1122:
	.long	.Ld26
.Lj1134:
	.long	.Ld27
.Lj1138:
	.long	.Ld28
.Lj1163:
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [429] outtextxyz(18,912,'SIDCog DMP file, 50 Hz',250,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#250
	ldr	r2,.Lj1139
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1135:
.Lj1126:
.Lj1106:
# [431] songname:=s;
	ldr	r0,.Lj1140
	ldr	r1,[r0]
	ldr	r0,.Lj1141
	bl	fpc_ansistr_assign
# [432] songtime:=0;
	mov	r1,#0
	ldr	r0,.Lj1142
	str	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj1143
	str	r1,[r0]
# [433] timer1:=-1;
	mvn	r0,#0
	ldr	r1,.Lj1144
	str	r0,[r1]
	mvn	r1,#0
	ldr	r0,.Lj1145
	str	r1,[r0]
# [434] if filetype<>2 then begin pause:=false; sdl_pauseaudio(0); end;
	ldr	r0,.Lj1146
	ldr	r0,[r0]
	cmp	r0,#2
	beq	.Lj1148
	mov	r1,#0
	ldr	r0,.Lj1149
	strb	r1,[r0]
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj1148:
.Lj1001:
.Lj988:
# [437] until (peek($2060028)=27) ;
	ldr	r0,.Lj1150
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#27
	bne	.Lj327
# [438] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [440] if sfh>0 then fileclose(sfh);
	ldr	r0,.Lj1151
	ldr	r0,[r0]
	cmp	r0,#0
	ldrgt	r0,.Lj1151
	ldrgt	r0,[r0]
	blgt	SYSUTILS_$$_FILECLOSE$LONGINT
# [441] setcurrentdir(workdir);
	ldr	r0,.Lj1155
	ldr	r0,[r0]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [442] stopmachine;
	bl	RETROMALINA_$$_STOPMACHINE
# [443] systemrestart(0);
	ldr	r0,.Lj1156
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj1158
	mov	r0,#0
	ldr	r1,.Lj1156
	ldr	r1,[r1]
	blx	r1
	b	.Lj1160
.Lj1158:
	mov	r0,#120
.Lj1160:
.Lj304:
	bl	fpc_popaddrstack
	sub	r0,r11,#188
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#184
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-164]
	cmp	r0,#0
	blne	fpc_reraise
	bl	fpc_do_exit
	ldmea	r11,{r4,r5,r11,r13,r15}
.Lj1139:
	.long	.Ld29
.Lj1140:
	.long	U_$P$PROJECT1_$$_S
.Lj1141:
	.long	U_$UMAIN_$$_SONGNAME
.Lj1142:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj1143:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj1144:
	.long	TC_$RETROMALINA_$$_TIMER1
.Lj1145:
	.long	TC_$RETROMALINA_$$_TIMER1+4
.Lj1146:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj1149:
	.long	TC_$P$PROJECT1_$$_PAUSE
.Lj1150:
	.long	33947688
.Lj1151:
	.long	U_$RETROMALINA_$$_SFH
.Lj1155:
	.long	U_$P$PROJECT1_$$_WORKDIR
.Lj1156:
	.long	U_$PLATFORM_$$_SYSTEMRESTARTHANDLER
.Le3:
	.size	main, .Le3 - main

.section .text.n_p$project1_$$_init_implicit
	.balign 4
.globl	INIT$_$P$PROJECT1
INIT$_$P$PROJECT1:
.globl	P$PROJECT1_$$_init_implicit
P$PROJECT1_$$_init_implicit:
	stmfd	r13!,{r14}
# Var fs located in register r0
	mov	r0,#0
	ldmfd	r13!,{r15}
.Le4:
	.size	P$PROJECT1_$$_init_implicit, .Le4 - P$PROJECT1_$$_init_implicit

.section .text.n_p$project1_$$_finalize_implicit
	.balign 4
.globl	PASCALFINALIZE
PASCALFINALIZE:
.globl	FINALIZE$_$P$PROJECT1
FINALIZE$_$P$PROJECT1:
.globl	P$PROJECT1_$$_finalize_implicit
P$PROJECT1_$$_finalize_implicit:
	stmfd	r13!,{r14}
# Var fs located in register r0
	ldr	r0,.Lj1164
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1165
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1166
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj1167
	ldr	r0,.Lj1168
	bl	fpc_finalize
	ldr	r1,.Lj1169
	ldr	r0,.Lj1170
	bl	fpc_finalize
	ldr	r0,.Lj1171
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1172
	bl	fpc_ansistr_decr_ref
	ldmfd	r13!,{r15}
.Lj1164:
	.long	U_$P$PROJECT1_$$_S
.Lj1165:
	.long	U_$P$PROJECT1_$$_CURRENTDIR
.Lj1166:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj1167:
	.long	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
.Lj1168:
	.long	U_$P$PROJECT1_$$_SR
.Lj1169:
	.long	RTTI_$P$PROJECT1_$$_def00000003
.Lj1170:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj1171:
	.long	U_$P$PROJECT1_$$_FN
.Lj1172:
	.long	U_$P$PROJECT1_$$_WORKDIR
.Le5:
	.size	P$PROJECT1_$$_finalize_implicit, .Le5 - P$PROJECT1_$$_finalize_implicit
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$p$project1_$$_s
	.balign 4
# [Project1.pas]
# [28] var s,currentdir,currentdir2:string;
	.size U_$P$PROJECT1_$$_S,4
U_$P$PROJECT1_$$_S:
	.zero 4

.section .bss.n_u_$p$project1_$$_currentdir
	.balign 4
	.size U_$P$PROJECT1_$$_CURRENTDIR,4
U_$P$PROJECT1_$$_CURRENTDIR:
	.zero 4

.section .bss.n_u_$p$project1_$$_currentdir2
	.balign 4
	.size U_$P$PROJECT1_$$_CURRENTDIR2,4
U_$P$PROJECT1_$$_CURRENTDIR2:
	.zero 4

.section .bss.n_u_$p$project1_$$_sr
	.balign 4
# [29] sr:tsearchrec;
	.size U_$P$PROJECT1_$$_SR,352
U_$P$PROJECT1_$$_SR:
	.zero 352

.section .bss.n_u_$p$project1_$$_filenames
	.balign 4
# [30] filenames:array[0..1000,0..1] of string;
	.size U_$P$PROJECT1_$$_FILENAMES,8008
U_$P$PROJECT1_$$_FILENAMES:
	.zero 8008

.section .bss.n_u_$p$project1_$$_l
	.balign 4
# [31] l,i,j,ilf,ild:integer;
	.size U_$P$PROJECT1_$$_L,4
U_$P$PROJECT1_$$_L:
	.zero 4

.section .bss.n_u_$p$project1_$$_i
	.balign 4
	.size U_$P$PROJECT1_$$_I,4
U_$P$PROJECT1_$$_I:
	.zero 4

.section .bss.n_u_$p$project1_$$_j
	.balign 4
	.size U_$P$PROJECT1_$$_J,4
U_$P$PROJECT1_$$_J:
	.zero 4

.section .bss.n_u_$p$project1_$$_ilf
	.balign 4
	.size U_$P$PROJECT1_$$_ILF,4
U_$P$PROJECT1_$$_ILF:
	.zero 4

.section .bss.n_u_$p$project1_$$_ild
	.balign 4
	.size U_$P$PROJECT1_$$_ILD,4
U_$P$PROJECT1_$$_ILD:
	.zero 4

.section .bss.n_u_$p$project1_$$_buf
# [34] buf:array[0..25] of  byte;
	.size U_$P$PROJECT1_$$_BUF,26
U_$P$PROJECT1_$$_BUF:
	.zero 26

.section .bss.n_u_$p$project1_$$_fn
	.balign 4
# [35] fn:string;
	.size U_$P$PROJECT1_$$_FN,4
U_$P$PROJECT1_$$_FN:
	.zero 4

.section .bss.n_u_$p$project1_$$_fs
	.balign 4
# [36] fs:integer;
	.size U_$P$PROJECT1_$$_FS,4
U_$P$PROJECT1_$$_FS:
	.zero 4

.section .bss.n_u_$p$project1_$$_cia
	.balign 4
# [37] cia:integer;
	.size U_$P$PROJECT1_$$_CIA,4
U_$P$PROJECT1_$$_CIA:
	.zero 4

.section .bss.n_u_$p$project1_$$_init
	.balign 2
# [40] init:word;
	.size U_$P$PROJECT1_$$_INIT,2
U_$P$PROJECT1_$$_INIT:
	.zero 2

.section .bss.n_u_$p$project1_$$_atitle
	.balign 2
# [41] atitle,author,copyright:string[32];
	.size U_$P$PROJECT1_$$_ATITLE,33
U_$P$PROJECT1_$$_ATITLE:
	.zero 33

.section .bss.n_u_$p$project1_$$_author
	.balign 2
	.size U_$P$PROJECT1_$$_AUTHOR,33
U_$P$PROJECT1_$$_AUTHOR:
	.zero 33

.section .bss.n_u_$p$project1_$$_copyright
	.balign 2
	.size U_$P$PROJECT1_$$_COPYRIGHT,33
U_$P$PROJECT1_$$_COPYRIGHT:
	.zero 33

.section .bss.n_u_$p$project1_$$_workdir
	.balign 4
# [42] workdir:string;
	.size U_$P$PROJECT1_$$_WORKDIR,4
U_$P$PROJECT1_$$_WORKDIR:
	.zero 4

.section .data.n_INITFINAL
	.balign 4
.globl	INITFINAL
INITFINAL:
	.long	42,0
	.long	INIT$_$SYSTEM
	.long	0,0
	.long	FINALIZE$_$OBJPAS
	.long	INIT$_$GLOBALCONFIG
	.long	FINALIZE$_$GLOBALCONFIG
	.long	INIT$_$HEAPMANAGER
	.long	0
	.long	INIT$_$DOS
	.long	0
	.long	SYSUTILS$_$TENCODING_$__$$_create
	.long	SYSUTILS$_$TENCODING_$__$$_destroy
	.long	INIT$_$SYSUTILS
	.long	FINALIZE$_$SYSUTILS
	.long	INIT$_$PLATFORM
	.long	FINALIZE$_$PLATFORM
	.long	INIT$_$LOCALE
	.long	0
	.long	INIT$_$UNICODE
	.long	0
	.long	INIT$_$THREADS
	.long	FINALIZE$_$THREADS
	.long	INIT$_$DEVICES
	.long	FINALIZE$_$DEVICES
	.long	INIT$_$FRAMEBUFFER
	.long	0
	.long	INIT$_$TYPINFO
	.long	FINALIZE$_$TYPINFO
	.long	INIT$_$CLASSES
	.long	FINALIZE$_$CLASSES
	.long	INIT$_$FONT
	.long	0
	.long	INIT$_$CONSOLE
	.long	0
	.long	INIT$_$LOGGING
	.long	0
	.long	INIT$_$USB
	.long	FINALIZE$_$USB
	.long	INIT$_$SCSI
	.long	0
	.long	INIT$_$STORAGE
	.long	FINALIZE$_$STORAGE
	.long	INIT$_$TIMEZONE
	.long	0
	.long	INIT$_$ULTIBO
	.long	FINALIZE$_$ULTIBO
	.long	INIT$_$FILESYSTEM
	.long	FINALIZE$_$FILESYSTEM
	.long	INIT$_$FATFS
	.long	FINALIZE$_$FATFS
	.long	INIT$_$DMA
	.long	0
	.long	INIT$_$MMC
	.long	FINALIZE$_$MMC
	.long	INIT$_$SPI
	.long	0
	.long	INIT$_$I2C
	.long	0
	.long	INIT$_$PWM
	.long	0
	.long	INIT$_$GPIO
	.long	0
	.long	INIT$_$SERIAL
	.long	0
	.long	INIT$_$UART
	.long	0
	.long	INIT$_$CODEC
	.long	0
	.long	INIT$_$AUDIO
	.long	0
	.long	INIT$_$BCM2710
	.long	0
	.long	INIT$_$KEYMAP
	.long	0
	.long	INIT$_$KEYBOARD
	.long	FINALIZE$_$KEYBOARD
	.long	INIT$_$MOUSE
	.long	FINALIZE$_$MOUSE
	.long	INIT$_$DWCOTG
	.long	0
	.long	INIT$_$UMAIN
	.long	FINALIZE$_$UMAIN
	.long	INIT$_$P$PROJECT1
	.long	FINALIZE$_$P$PROJECT1
# [446] 
.Le6:
	.size	INITFINAL, .Le6 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 4
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	3
	.long	THREADVARLIST_$SYSTEM
	.long	THREADVARLIST_$DOS
	.long	THREADVARLIST_$CLASSES
.Le7:
	.size	FPC_THREADVARTABLES, .Le7 - FPC_THREADVARTABLES

.section .rodata.n_FPC_RESOURCESTRINGTABLES
	.balign 4
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.long	3
	.long	RESSTR_$SYSCONST_$$_START
	.long	RESSTR_$SYSCONST_$$_END
	.long	RESSTR_$RTLCONSTS_$$_START
	.long	RESSTR_$RTLCONSTS_$$_END
	.long	RESSTR_$MATH_$$_START
	.long	RESSTR_$MATH_$$_END
.Le8:
	.size	FPC_RESOURCESTRINGTABLES, .Le8 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 4
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.long	0
.Le9:
	.size	FPC_WIDEINITTABLES, .Le9 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 4
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.long	0
.Le10:
	.size	FPC_RESSTRINITTABLES, .Le10 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 4
__fpc_ident:
	.ascii	"FPC 3.1.1 [2016/11/14] for arm - ultibo"
.Le11:
	.size	__fpc_ident, .Le11 - __fpc_ident

.section .data.n___stklen
	.balign 4
.globl	__stklen
__stklen:
	.long	262144
.Le12:
	.size	__stklen, .Le12 - __stklen

.section .data.n___heapsize
	.balign 4
.globl	__heapsize
__heapsize:
	.long	256
.Le13:
	.size	__heapsize, .Le13 - __heapsize

.section .bss.n___fpc_initialheap
	.balign 4
	.globl __fpc_initialheap
	.size __fpc_initialheap,256
__fpc_initialheap:
	.zero 256

.section .data.n___fpc_valgrind
	.balign 4
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
.Le14:
	.size	__fpc_valgrind, .Le14 - __fpc_valgrind
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_TC_$P$PROJECT1_$$_SEL
	.balign 4
TC_$P$PROJECT1_$$_SEL:
	.long	0
# [33] selstart:integer=0;
.Le15:
	.size	TC_$P$PROJECT1_$$_SEL, .Le15 - TC_$P$PROJECT1_$$_SEL

.section .data.n_TC_$P$PROJECT1_$$_SELSTART
	.balign 4
TC_$P$PROJECT1_$$_SELSTART:
	.long	0
.Le16:
	.size	TC_$P$PROJECT1_$$_SELSTART, .Le16 - TC_$P$PROJECT1_$$_SELSTART

.section .data.n_TC_$P$PROJECT1_$$_SONG
	.balign 2
TC_$P$PROJECT1_$$_SONG:
	.short	0
# [39] songs:word=0;
.Le17:
	.size	TC_$P$PROJECT1_$$_SONG, .Le17 - TC_$P$PROJECT1_$$_SONG

.section .data.n_TC_$P$PROJECT1_$$_SONGS
	.balign 2
TC_$P$PROJECT1_$$_SONGS:
	.short	0
.Le18:
	.size	TC_$P$PROJECT1_$$_SONGS, .Le18 - TC_$P$PROJECT1_$$_SONGS

.section .data.n_TC_$P$PROJECT1_$$_PAUSE
TC_$P$PROJECT1_$$_PAUSE:
	.byte	1
# [47] procedure sidopen (var fh:integer);
.Le19:
	.size	TC_$P$PROJECT1_$$_PAUSE, .Le19 - TC_$P$PROJECT1_$$_PAUSE

.section .rodata.n__$PROJECT1$_Ld1
	.balign 4
.globl	_$PROJECT1$_Ld1
_$PROJECT1$_Ld1:
	.ascii	"                                 \000"
.Le20:
	.size	_$PROJECT1$_Ld1, .Le20 - _$PROJECT1$_Ld1

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,10
.Ld2:
	.ascii	"type: PSID\000"
.Le21:
	.size	.Ld2$strlab, .Le21 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,9
.Ld3:
	.ascii	"version: \000"
.Le22:
	.size	.Ld3$strlab, .Le22 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,8
.Ld4:
	.ascii	"offset: \000"
.Le23:
	.size	.Ld4$strlab, .Le23 - .Ld4$strlab

.section .rodata.n_.Ld5
	.balign 4
.Ld5$strlab:
	.short	0,1
	.long	-1,6
.Ld5:
	.ascii	"load: \000"
.Le24:
	.size	.Ld5$strlab, .Le24 - .Ld5$strlab

.section .rodata.n_.Ld6
	.balign 4
.Ld6$strlab:
	.short	0,1
	.long	-1,6
.Ld6:
	.ascii	"init: \000"
.Le25:
	.size	.Ld6$strlab, .Le25 - .Ld6$strlab

.section .rodata.n_.Ld7
	.balign 4
.Ld7$strlab:
	.short	0,1
	.long	-1,6
.Ld7:
	.ascii	"play: \000"
.Le26:
	.size	.Ld7$strlab, .Le26 - .Ld7$strlab

.section .rodata.n_.Ld8
	.balign 4
.Ld8$strlab:
	.short	0,1
	.long	-1,7
.Ld8:
	.ascii	"songs: \000"
.Le27:
	.size	.Ld8$strlab, .Le27 - .Ld8$strlab

.section .rodata.n_.Ld9
	.balign 4
.Ld9$strlab:
	.short	0,1
	.long	-1,11
.Ld9:
	.ascii	"startsong: \000"
.Le28:
	.size	.Ld9$strlab, .Le28 - .Ld9$strlab

.section .rodata.n_.Ld10
	.balign 4
.Ld10$strlab:
	.short	0,1
	.long	-1,7
.Ld10:
	.ascii	"speed: \000"
.Le29:
	.size	.Ld10$strlab, .Le29 - .Ld10$strlab

.section .rodata.n_.Ld11
	.balign 4
.Ld11$strlab:
	.short	0,1
	.long	-1,7
.Ld11:
	.ascii	"title: \000"
.Le30:
	.size	.Ld11$strlab, .Le30 - .Ld11$strlab

.section .rodata.n_.Ld12
	.balign 4
.Ld12$strlab:
	.short	0,1
	.long	-1,8
.Ld12:
	.ascii	"author: \000"
.Le31:
	.size	.Ld12$strlab, .Le31 - .Ld12$strlab

.section .rodata.n_.Ld13
	.balign 4
.Ld13$strlab:
	.short	0,1
	.long	-1,11
.Ld13:
	.ascii	"copyright: \000"
.Le32:
	.size	.Ld13$strlab, .Le32 - .Ld13$strlab

.section .rodata.n_.Ld14
	.balign 4
.Ld14$strlab:
	.short	0,1
	.long	-1,7
.Ld14:
	.ascii	"flags: \000"
.Le33:
	.size	.Ld14$strlab, .Le33 - .Ld14$strlab

.section .rodata.n_.Ld15
	.balign 4
.Ld15$strlab:
	.short	0,1
	.long	-1,5
.Ld15:
	.ascii	"cia: \000"
.Le34:
	.size	.Ld15$strlab, .Le34 - .Ld15$strlab

.section .rodata.n_.Ld16
	.balign 4
.Ld16$strlab:
	.short	0,1
	.long	-1,1
.Ld16:
	.ascii	"\\\000"
.Le35:
	.size	.Ld16$strlab, .Le35 - .Ld16$strlab

.section .rodata.n_.Ld17
	.balign 4
.Ld17$strlab:
	.short	0,1
	.long	-1,1
.Ld17:
	.ascii	"*\000"
.Le36:
	.size	.Ld17$strlab, .Le36 - .Ld17$strlab

.section .rodata.n_.Ld18
	.balign 4
.Ld18$strlab:
	.short	0,1
	.long	-1,5
.Ld18:
	.ascii	"[DIR]\000"
.Le37:
	.size	.Ld18$strlab, .Le37 - .Ld18$strlab

.section .rodata.n_.Ld19
	.balign 4
.Ld19$strlab:
	.short	0,1
	.long	-1,5
.Ld19:
	.ascii	"*.sid\000"
.Le38:
	.size	.Ld19$strlab, .Le38 - .Ld19$strlab

.section .rodata.n_.Ld20
	.balign 4
.Ld20$strlab:
	.short	0,1
	.long	-1,5
.Ld20:
	.ascii	"*.dmp\000"
.Le39:
	.size	.Ld20$strlab, .Le39 - .Ld20$strlab

.section .rodata.n_.Ld21
	.balign 4
.Ld21$strlab:
	.short	0,1
	.long	-1,3
.Ld21:
	.ascii	"C:\\\000"
.Le40:
	.size	.Ld21$strlab, .Le40 - .Ld21$strlab

.section .rodata.n_.Ld22
	.balign 4
.Ld22$strlab:
	.short	0,1
	.long	-1,10
.Ld22:
	.ascii	"type: SDMP\000"
.Le41:
	.size	.Ld22$strlab, .Le41 - .Ld22$strlab

.section .rodata.n_.Ld23
	.balign 4
.Ld23$strlab:
	.short	0,1
	.long	-1,3
.Ld23:
	.ascii	" Hz\000"
.Le42:
	.size	.Ld23$strlab, .Le42 - .Ld23$strlab

.section .rodata.n_.Ld24
	.balign 4
.Ld24$strlab:
	.short	0,1
	.long	-1,8
.Ld24:
	.ascii	"atitle: \000"
.Le43:
	.size	.Ld24$strlab, .Le43 - .Ld24$strlab

.section .rodata.n_.Ld25
	.balign 4
.Ld25$strlab:
	.short	0,1
	.long	-1,17
.Ld25:
	.ascii	"SIDCog DMP file, \000"
.Le44:
	.size	.Ld25$strlab, .Le44 - .Ld25$strlab

.section .rodata.n_.Ld26
	.balign 4
.Ld26$strlab:
	.short	0,1
	.long	-1,11
.Ld26:
	.ascii	"PSID file, \000"
.Le45:
	.size	.Ld26$strlab, .Le45 - .Ld26$strlab

.section .rodata.n_.Ld27
	.balign 4
.Ld27$strlab:
	.short	0,1
	.long	-1,29
.Ld27:
	.ascii	"type: RSID, not yet supported\000"
.Le46:
	.size	.Ld27$strlab, .Le46 - .Ld27$strlab

.section .rodata.n_.Ld28
	.balign 4
.Ld28$strlab:
	.short	0,1
	.long	-1,33
.Ld28:
	.ascii	"type: unknown, 50 Hz SDMP assumed\000"
.Le47:
	.size	.Ld28$strlab, .Le47 - .Ld28$strlab

.section .rodata.n_.Ld29
	.balign 4
.Ld29$strlab:
	.short	0,1
	.long	-1,22
.Ld29:
	.ascii	"SIDCog DMP file, 50 Hz\000"
.Le48:
	.size	.Ld29$strlab, .Le48 - .Ld29$strlab
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000004
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000004
RTTI_$P$PROJECT1_$$_def00000004:
	.byte	12,0,0,0
	.long	8,2
	.long	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le49:
	.size	RTTI_$P$PROJECT1_$$_def00000004, .Le49 - RTTI_$P$PROJECT1_$$_def00000004

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000003
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000003
RTTI_$P$PROJECT1_$$_def00000003:
	.byte	12,0,0,0
	.long	8008,2002
	.long	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	2,0,0,0
	.long	RTTI_$SYSTEM_$$_SMALLINT
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le50:
	.size	RTTI_$P$PROJECT1_$$_def00000003, .Le50 - RTTI_$P$PROJECT1_$$_def00000003

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000005
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000005
RTTI_$P$PROJECT1_$$_def00000005:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le51:
	.size	RTTI_$P$PROJECT1_$$_def00000005, .Le51 - RTTI_$P$PROJECT1_$$_def00000005

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000006
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000006
RTTI_$P$PROJECT1_$$_def00000006:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le52:
	.size	RTTI_$P$PROJECT1_$$_def00000006, .Le52 - RTTI_$P$PROJECT1_$$_def00000006

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000007
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000007
RTTI_$P$PROJECT1_$$_def00000007:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le53:
	.size	RTTI_$P$PROJECT1_$$_def00000007, .Le53 - RTTI_$P$PROJECT1_$$_def00000007

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000008
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000008
RTTI_$P$PROJECT1_$$_def00000008:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le54:
	.size	RTTI_$P$PROJECT1_$$_def00000008, .Le54 - RTTI_$P$PROJECT1_$$_def00000008
# End asmlist al_rtti

