	.file "Project1.pas"
# Begin asmlist al_procedures

.section .text.n_p$project1_$$_sidopen$longint
	.balign 4
.globl	P$PROJECT1_$$_SIDOPEN$LONGINT
P$PROJECT1_$$_SIDOPEN$LONGINT:
# Temps allocated between r11-204 and r11-76
# [Project1.pas]
# [59] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#212
# Var fh located in register r4
# Var i located in register r5
# Var il located in register r6
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
# [60] reset6502;
	bl	UNIT6502_$$_RESET6502
# [61] atitle:='                                ';
	ldr	r0,.Lj7
# Rescheduled
	ldr	r2,.Lj8
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# [62] author:='                                ';
	ldr	r0,.Lj9
# Rescheduled
	ldr	r2,.Lj8
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# [63] copyright:='                                ';
	ldr	r0,.Lj11
# Rescheduled
	ldr	r2,.Lj8
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# [64] fileread(fh,version,2); version:=(version shl 8) or (version shr 8);
	ldr	r0,[r4]
	sub	r1,r11,#52
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldrh	r0,[r11, #-52]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
# [114] end;
	orr	r0,r1,r0,lsr #8
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-52]
# [65] fileread(fh,offset,2); offset:=(offset shl 8) or (offset shr 8);
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
# [66] fileread(fh,load,2); load:=(load shl 8) or (load shr 8);
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
# Rescheduled
# [67] fileread(fh,init,2); init:=(init shl 8) or (init shr 8);
	ldr	r1,.Lj13
	ldr	r0,[r4]
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj13
	ldrh	r0,[r0]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
# Rescheduled
	ldr	r1,.Lj13
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# Rescheduled
# [68] fileread(fh,play,2);  play:=(play shl 8) or (play shr 8);
	ldr	r1,.Lj16
	ldr	r0,[r4]
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj16
	ldrh	r0,[r0]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
# Rescheduled
	ldr	r1,.Lj16
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# Rescheduled
# [69] fileread(fh,songs,2); songs:=(songs shl 8) or (songs shr 8);
	ldr	r1,.Lj19
	ldr	r0,[r4]
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj19
	ldrh	r0,[r0]
	mov	r1,r0,lsl #8
# Peephole FoldShiftProcess done
	orr	r0,r1,r0,lsr #8
# Rescheduled
	ldr	r1,.Lj19
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [70] fileread(fh,startsong,2); startsong:=(startsong shl 8) or (startsong shr 8);
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
# [71] fileread(fh,speed,4);
	ldr	r0,[r4]
	sub	r1,r11,#48
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r2,[r11, #-48]
# [72] speed:=speed shr 24+((speed shr 8) and $0000FF00) + ((speed shl 8) and $00FF0000) + (speed shl 24);
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
# Rescheduled
# [73] fileread(fh,atitle[1],32);
	ldr	r1,.Lj22
	ldr	r0,[r4]
	mov	r2,#32
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# Rescheduled
# [74] fileread(fh,author[1],32);
	ldr	r1,.Lj23
	ldr	r0,[r4]
	mov	r2,#32
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# Rescheduled
# [75] fileread(fh,copyright[1],32);
	ldr	r1,.Lj24
	ldr	r0,[r4]
	mov	r2,#32
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [76] if version>1 then begin
	ldrh	r0,[r11, #-52]
	cmp	r0,#1
	bls	.Lj26
# [77] fileread(fh,flags,2); flags:=(flags shl 8) or (flags shr 8);
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
# [78] fileread(fh,dump,2);
	ldr	r0,[r4]
	sub	r1,r11,#72
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [79] fileread(fh,dump,2);
	ldr	r0,[r4]
	sub	r1,r11,#72
	mov	r2,#2
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [80] b:=0; if load=0 then begin b:=1; fileread(fh,load,2); end;
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
# [82] for i:=1 to 32 do if byte(atitle[i])=$F1 then atitle[i]:=char(26);
	mov	r5,#1
	sub	r5,r5,#1
	.balign 4
.Lj31:
	add	r5,r5,#1
# Peephole AndAnd2And done
# Rescheduled
# Rescheduled
	ldr	r1,.Lj7
	and	r0,r5,#255
	ldrb	r0,[r0, r1]
	cmp	r0,#241
# Peephole AndAnd2And done
	andeq	r1,r5,#255
# Rescheduled
	ldreq	r0,.Lj7
	moveq	r2,#26
	streqb	r2,[r1, r0]
	cmp	r5,#32
	blt	.Lj31
# [83] for i:=1 to 32 do if byte(author[i])=$F1 then author[i]:=char(26);
	mov	r5,#1
	sub	r5,r5,#1
	.balign 4
.Lj38:
	add	r5,r5,#1
# Peephole AndAnd2And done
# Rescheduled
# Rescheduled
	ldr	r1,.Lj9
	and	r0,r5,#255
	ldrb	r0,[r0, r1]
	cmp	r0,#241
# Peephole AndAnd2And done
	andeq	r1,r5,#255
# Rescheduled
	ldreq	r0,.Lj9
	moveq	r2,#26
	streqb	r2,[r1, r0]
	cmp	r5,#32
	blt	.Lj38
# [84] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [85] outtextxyz(18,132,'type: PSID',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj43
	mov	r3,#188
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [86] outtextxyz(18,164,'version: '+inttostr(version),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj44
	mov	r3,#0
	sub	r0,r11,#200
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-200]
	mov	r3,#188
	mov	r1,#164
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [87] outtextxyz(18,196,'offset: ' +inttohex(offset,4),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj45
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#196
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [88] outtextxyz(18,228,'load: '+inttohex(load,4),188-144*b,2,2);
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
# Rescheduled
	ldr	r1,.Lj46
	mov	r3,#0
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
# [89] outtextxyz(18,260,'init: '+inttohex(init,4),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj48
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#260
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [90] outtextxyz(18,292,'play: '+inttohex(play,4),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj50
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#292
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [91] outtextxyz(18,324,'songs: '+inttostr(songs),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj52
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#324
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [92] outtextxyz(18,356,'startsong: '+inttostr(startsong),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj53
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#356
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [93] outtextxyz(18,388,'speed: '+inttohex(speed,8),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj54
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#388
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [94] outtextxyz(18,420,'title: '+atitle,188,2,2);
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
# Rescheduled
	ldr	r1,.Lj56
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#420
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [95] outtextxyz(18,452,'author: '+author,188,2,2);
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
# Rescheduled
	ldr	r1,.Lj58
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#452
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [96] outtextxyz(18,484,'copyright: '+copyright,188,2,2);
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
# Rescheduled
	ldr	r1,.Lj60
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#484
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [97] outtextxyz(18,516,'flags: '+inttohex(flags,4),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj61
	mov	r3,#0
	sub	r0,r11,#204
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-204]
	mov	r3,#188
	mov	r1,#516
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [98] song:=startsong-1;
	ldrh	r0,[r11, #-64]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj62
	sub	r0,r0,#1
	strh	r0,[r1]
# [101] for i:=0 to 65535 do write6502(i,0);
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
# [103] il:=fileread(fh,b,1);
	ldr	r0,[r4]
	sub	r1,r11,#76
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	and	r6,r0,#255
# Rescheduled
# [104] write6502(load,b);
	ldrh	r0,[r11, #-60]
# Peephole DataMov2Data removed superfluous mov
# Rescheduled
	ldrb	r1,[r11, #-76]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [105] load+=1;
	ldrh	r0,[r11, #-60]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r11, #-60]
# [106] until il<>1;
	cmp	r6,#1
	beq	.Lj66
# [107] fileseek(fh,0,fsfrombeginning);
	ldr	r0,[r4]
	mov	r2,#0
	mov	r1,#0
	bl	SYSUTILS_$$_FILESEEK$LONGINT$LONGINT$LONGINT$$LONGINT
# [108] CleanDataCacheRange($2000000,65536);
	ldr	r0,.Lj69
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj71
	mov	r1,#65536
# Rescheduled
	ldr	r2,.Lj69
# Rescheduled
	ldr	r2,[r2]
	mov	r0,#33554432
	blx	r2
.Lj71:
# [109] i:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r5,[r0]
# Peephole LdrMov2Ldr removed superfluous mov
	.balign 4
.Lj73:
# [110] repeat until lpeek($2060000)>(i+4);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r0,[r0]
	mov	r1,#0
	add	r2,r5,#4
# Peephole FoldShiftProcess done
	cmp	r1,r2,asr #31
	bgt	.Lj75
	blt	.Lj73
	cmp	r0,r2
	bls	.Lj73
.Lj75:
# [111] jsr6502(song,init);
	ldr	r0,.Lj13
	ldrh	r1,[r0]
# Rescheduled
	ldr	r0,.Lj62
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [112] cia:=read6502($dc04)+256*read6502($dc05);
	mov	r0,#4
	orr	r0,r0,#56320
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#5
	orr	r0,r0,#56320
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj80
	add	r0,r4,r0,lsl #8
	str	r0,[r1]
# [113] outtextxyz(18,578,'cia: '+inttohex(read6502($dc04)+256*read6502($dc05),4),188,2,2);
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
# Rescheduled
	ldr	r1,.Lj81
	mov	r3,#0
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
	ldmea	r11,{r4,r5,r6,r11,r13,r15}
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
.Lj69:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj80:
	.long	U_$P$PROJECT1_$$_CIA
.Lj81:
	.long	.Ld15
.Le0:
	.size	P$PROJECT1_$$_SIDOPEN$LONGINT, .Le0 - P$PROJECT1_$$_SIDOPEN$LONGINT

.section .text.n_p$project1_$$_sort
	.balign 4
.globl	P$PROJECT1_$$_SORT
P$PROJECT1_$$_SORT:
# Temps allocated between r13+8 and r13+136
# [124] begin
	stmfd	r13!,{r4,r5,r6,r7,r14}
# Peephole Add/Sub to Preindexed done
# Var i located in register r5
# Var j located in register r6
# Var s located at r13+0, size=OS_32
# Var s2 located at r13+4, size=OS_32
	mov	r0,#0
	str	r0,[r13, #-136]!
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
	bne	.Lj84
	.balign 4
.Lj86:
# Rescheduled
# [127] for i:=0 to ilf-2 do
	ldr	r0,.Lj89
# Rescheduled
	ldr	r0,[r0]
# [126] j:=0;
	mov	r6,#0
	sub	r4,r0,#2
	mov	r5,#0
	cmp	r4,r5
	blt	.Lj91
	sub	r5,r5,#1
	.balign 4
.Lj92:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
# [129] if lowercase(filenames[i,0])>lowercase(filenames[i+1,0]) then
	ldr	r0,.Lj93
	add	r5,r5,#1
	ldr	r1,[r0, r5, lsl #3]
	add	r0,r13,#128
	bl	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,.Lj94
	ldr	r7,[r13, #128]
	ldr	r1,[r0, r5, lsl #3]
	add	r0,r13,#132
	bl	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
	ldr	r0,[r13, #132]
	mov	r1,r7
	bl	fpc_ansistr_compare
	cmp	r0,#0
	ble	.Lj96
# Rescheduled
# [131] s:=filenames[i,0]; s2:=filenames[i,1];
	ldr	r0,.Lj94
# Peephole FoldShiftLdrStr done
	ldr	r1,[r0, r5, lsl #3]
	mov	r0,r13
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj98
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r5, lsl #3]
	add	r0,r13,#4
	bl	fpc_ansistr_assign
# Rescheduled
# [132] filenames[i,0]:=filenames[i+1,0];
	ldr	r0,.Lj93
# Peephole FoldShiftLdrStr done
	ldr	r1,[r0, r5, lsl #3]
# Rescheduled
	ldr	r0,.Lj94
# Peephole FoldShiftProcess done
# [139] end;
	add	r0,r0,r5,lsl #3
	bl	fpc_ansistr_assign
# Rescheduled
# [133] filenames[i,1]:=filenames[i+1,1];
	ldr	r1,.Lj101
# Peephole FoldShiftLdrStr done
# Rescheduled
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r0,.Lj98
	ldr	r1,[r1, r5, lsl #3]
	add	r0,r0,r5,lsl #3
	bl	fpc_ansistr_assign
# Rescheduled
# [134] filenames[i+1,0]:=s; filenames[i+1,1]:=s2;
	ldr	r0,.Lj93
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,[r13]
	add	r0,r0,r5,lsl #3
# Peephole LdrMov2Ldr removed superfluous mov
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r3,.Lj101
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,[r13, #4]
	add	r0,r3,r5,lsl #3
# Peephole LdrMov2Ldr removed superfluous mov
	bl	fpc_ansistr_assign
# [135] j:=1;
	mov	r6,#1
.Lj96:
	cmp	r4,r5
	bgt	.Lj92
.Lj91:
# [138] until j=0;
	cmp	r6,#0
	bne	.Lj86
.Lj84:
	bl	fpc_popaddrstack
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
.Lj89:
	.long	U_$P$PROJECT1_$$_ILF
.Lj93:
	.long	U_$P$PROJECT1_$$_FILENAMES+8
.Lj94:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj98:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj101:
	.long	U_$P$PROJECT1_$$_FILENAMES+12
.Le1:
	.size	P$PROJECT1_$$_SORT, .Le1 - P$PROJECT1_$$_SORT

.section .text.n_p$project1_$$_dirlist$ansistring
	.balign 4
.globl	P$PROJECT1_$$_DIRLIST$ANSISTRING
P$PROJECT1_$$_DIRLIST$ANSISTRING:
# Temps allocated between r11-172 and r11-48
# [144] begin
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
	bne	.Lj107
# Rescheduled
# [145] currentdir2:=dir;
	ldr	r0,.Lj109
	ldr	r1,[r11, #-48]
	bl	fpc_ansistr_assign
# [146] setcurrentdir(currentdir2);
	ldr	r0,.Lj109
	ldr	r0,[r0]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [147] currentdir2:=getcurrentdir;
	sub	r0,r11,#172
	bl	SYSUTILS_$$_GETCURRENTDIR$$ANSISTRING
# Rescheduled
	ldr	r0,.Lj109
	ldr	r1,[r11, #-172]
	bl	fpc_ansistr_assign
# [148] if copy(currentdir2,length(currentdir2),1)<>'\' then currentdir2:=currentdir2+'\';
	ldr	r0,.Lj109
	ldr	r2,[r0]
	cmp	r2,#0
	ldrne	r2,[r2, #-4]
# Rescheduled
	ldr	r0,.Lj109
	ldr	r1,[r0]
	mov	r3,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r1,.Lj115
	ldr	r0,[r11, #-172]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	beq	.Lj117
	ldr	r1,.Lj109
# Rescheduled
	ldr	r0,.Lj109
	ldr	r1,[r1]
# Rescheduled
	ldr	r2,.Lj115
	mov	r3,#0
	bl	fpc_ansistr_concat
.Lj117:
# [149] box2(897,67,1782,115,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#115
	mov	r1,#67
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [150] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [151] s:=currentdir2;
	ldr	r1,.Lj109
# Rescheduled
	ldr	r0,.Lj122
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# [152] if length(s)>55 then s:=copy(s,1,55);
	ldr	r0,.Lj122
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#55
	ble	.Lj126
	ldr	r0,.Lj122
	ldr	r1,[r0]
	mov	r3,#55
	mov	r2,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj122
	ldr	r1,[r11, #-172]
	bl	fpc_ansistr_assign
.Lj126:
# [153] l:=length(s);
	ldr	r0,.Lj122
	ldr	r1,[r0]
	cmp	r1,#0
	ldrne	r1,[r1, #-4]
	ldr	r0,.Lj131
	str	r1,[r0]
# [154] outtextxyz(1344-8*l,75,s,44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj131
	str	r0,[r13]
	ldr	r0,[r1]
# Peephole FoldShiftProcess done
	mov	r1,#1344
# [204] end;
	sub	r0,r1,r0,lsl #3
# Rescheduled
	ldr	r1,.Lj122
	ldr	r2,[r1]
	mov	r3,#44
	mov	r1,#75
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# Rescheduled
# [155] ilf:=0;
	ldr	r1,.Lj134
	mov	r0,#0
# Rescheduled
# [156] currentdir:=currentdir2+'*';
	ldr	r2,.Lj109
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj136
	ldr	r1,[r2]
# Rescheduled
	ldr	r2,.Lj137
	mov	r3,#0
	bl	fpc_ansistr_concat
# [157] if findfirst(currentdir,fadirectory,sr)=0 then
	ldr	r4,.Lj138
# Rescheduled
	ldr	r1,.Lj139
	mov	r0,r4
	bl	fpc_finalize
# Rescheduled
	ldr	r0,.Lj136
	mov	r2,r4
	ldr	r0,[r0]
	mov	r1,#16
	bl	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj142
	.balign 4
.Lj143:
# [159] if (sr.attr and faDirectory) = faDirectory then
	ldr	r0,.Lj146
	ldr	r0,[r0]
	and	r0,r0,#16
	cmp	r0,#16
	bne	.Lj148
# [161] filenames[ilf,0]:=sr.name;
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj150
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r2,.Lj151
	add	r0,r1,r0,lsl #3
	ldr	r1,[r2]
	bl	fpc_ansistr_assign
# [162] filenames[ilf,1]:='[DIR]';
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj153
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj154
	add	r0,r2,r0,lsl #3
	bl	fpc_ansistr_assign
# [163] ilf+=1;
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj134
	add	r0,r0,#1
	str	r0,[r1]
.Lj148:
# [165] until (findnext(sr)<>0) or (ilf=1000);
	ldr	r0,.Lj138
	bl	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj145
	ldr	r0,.Lj134
	ldr	r0,[r0]
	cmp	r0,#1000
	bne	.Lj143
.Lj145:
.Lj142:
# [166] sysutils.findclose(sr);
	ldr	r0,.Lj138
	bl	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
# [168] currentdir:=currentdir2+'*.sid';
	ldr	r1,.Lj109
# Rescheduled
	ldr	r0,.Lj136
	ldr	r1,[r1]
# Rescheduled
	ldr	r2,.Lj165
	mov	r3,#0
	bl	fpc_ansistr_concat
# [169] if findfirst(currentdir,faAnyFile,sr)=0 then
	ldr	r4,.Lj138
# Rescheduled
	ldr	r1,.Lj139
	mov	r0,r4
	bl	fpc_finalize
# Rescheduled
	ldr	r0,.Lj136
	mov	r2,r4
	ldr	r0,[r0]
	mov	r1,#63
	bl	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj170
	.balign 4
.Lj171:
# [171] filenames[ilf,0]:=sr.name;
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj150
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r2,.Lj151
	add	r0,r1,r0,lsl #3
	ldr	r1,[r2]
	bl	fpc_ansistr_assign
# [172] filenames[ilf,1]:='';
	ldr	r0,.Lj134
# Rescheduled
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r1,.Lj153
	ldr	r0,[r0]
	add	r0,r1,r0,lsl #3
	mov	r1,#0
	bl	fpc_ansistr_assign
# [173] ilf+=1;
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj134
	add	r1,r0,#1
# Rescheduled
# [174] until (findnext(sr)<>0) or (ilf=1000);
	ldr	r0,.Lj138
	str	r1,[r2]
	bl	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj173
	ldr	r0,.Lj134
	ldr	r0,[r0]
	cmp	r0,#1000
	bne	.Lj171
.Lj173:
.Lj170:
# [175] sysutils.findclose(sr);
	ldr	r0,.Lj138
	bl	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
# [177] currentdir:=currentdir2+'*.dmp';
	ldr	r1,.Lj109
# Rescheduled
	ldr	r0,.Lj136
	ldr	r1,[r1]
# Rescheduled
	ldr	r2,.Lj189
	mov	r3,#0
	bl	fpc_ansistr_concat
# [178] if findfirst(currentdir,faAnyFile,sr)=0 then
	ldr	r4,.Lj138
# Rescheduled
	ldr	r1,.Lj139
	mov	r0,r4
	bl	fpc_finalize
# Rescheduled
	ldr	r0,.Lj136
	mov	r2,r4
	ldr	r0,[r0]
	mov	r1,#63
	bl	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj194
	.balign 4
.Lj195:
# [180] filenames[ilf,0]:=sr.name;
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj150
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r1,.Lj151
	add	r0,r2,r0,lsl #3
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# [181] filenames[ilf,1]:='';
	ldr	r0,.Lj134
# Rescheduled
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r1,.Lj153
	ldr	r0,[r0]
	add	r0,r1,r0,lsl #3
	mov	r1,#0
	bl	fpc_ansistr_assign
# [182] ilf+=1;
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj134
	add	r1,r0,#1
# Rescheduled
# [183] until (findnext(sr)<>0) or (ilf=1000);
	ldr	r0,.Lj138
	str	r1,[r2]
	bl	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	cmp	r0,#0
	bne	.Lj197
	ldr	r0,.Lj134
	ldr	r0,[r0]
	cmp	r0,#1000
	bne	.Lj195
.Lj197:
.Lj194:
# [184] sysutils.findclose(sr);
	ldr	r0,.Lj138
	bl	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
# [185] sort;
	bl	P$PROJECT1_$$_SORT
# [187] box(920,132,840,32,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#840
	mov	r1,#132
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [188] if ilf<26 then ild:=ilf-1 else ild:=26;
	ldr	r0,.Lj134
	ldr	r0,[r0]
	cmp	r0,#26
	bge	.Lj213
	ldr	r0,.Lj134
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj215
	sub	r0,r0,#1
	str	r0,[r1]
	b	.Lj216
.Lj213:
# Rescheduled
	ldr	r1,.Lj215
	mov	r0,#26
	str	r0,[r1]
.Lj216:
# [189] for i:=0 to ild do
	ldr	r0,.Lj215
	ldr	r4,[r0]
# Rescheduled
	ldr	r2,.Lj222
	mov	r1,#0
# Rescheduled
	ldr	r0,.Lj222
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj220
	ldr	r1,.Lj222
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj221:
	ldr	r2,.Lj222
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
# [191] if filenames[i,1]='' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
	ldr	r1,.Lj222
	str	r0,[r2]
	ldr	r0,[r1]
# Rescheduled
	ldr	r1,.Lj153
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj229
	ldr	r0,.Lj222
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj150
	ldr	r0,[r0]
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj131
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj234
.Lj229:
	ldr	r0,.Lj222
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj150
	ldr	r0,[r0]
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj131
	str	r0,[r1]
.Lj234:
# [192] if filenames[i,1]='' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
	ldr	r0,.Lj222
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj153
	ldr	r0,[r0]
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj242
	ldr	r0,.Lj222
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj150
	ldr	r0,[r0]
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj222
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj150
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj122
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj249
.Lj242:
	ldr	r0,.Lj222
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj150
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj122
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj249:
# [193] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj122
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj256
	ldr	r0,.Lj122
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj122
	ldr	r1,[r11, #-172]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r0,.Lj131
	mov	r1,#40
	str	r1,[r0]
.Lj256:
# [194] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj122
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
# Rescheduled
	ldr	r1,.Lj265
	mov	r0,#1
# Rescheduled
	ldr	r2,.Lj265
	str	r0,[r1]
	ldr	r0,[r2]
	cmp	r5,r0
	blt	.Lj263
	ldr	r1,.Lj265
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj264:
	ldr	r1,.Lj265
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj122
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj265
	ldr	r1,[r2]
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj272
	ldr	r0,.Lj122
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj265
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj272:
	ldr	r0,.Lj265
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj264
.Lj263:
# [195] if filenames[i,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj222
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj153
	ldr	r0,[r0]
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj279
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj222
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj131
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj122
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj279:
# [196] if filenames[i,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj222
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj153
# Rescheduled
	ldr	r1,.Lj154
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj287
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj222
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj131
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj122
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj222
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj154
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj287:
	ldr	r0,.Lj222
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj221
.Lj220:
# Rescheduled
# [198] sel:=0; selstart:=0;
	ldr	r0,.Lj294
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj295
	mov	r1,#0
	str	r1,[r0]
# [199] box2(897,67,1782,115,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#115
	mov	r1,#67
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [200] s:=currentdir2;
	ldr	r1,.Lj109
# Rescheduled
	ldr	r0,.Lj122
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# [201] if length(s)>55 then s:=copy(s,1,55);
	ldr	r0,.Lj122
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#55
	ble	.Lj301
	ldr	r0,.Lj122
	ldr	r1,[r0]
	mov	r3,#55
	mov	r2,#1
	sub	r0,r11,#172
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj122
	ldr	r1,[r11, #-172]
	bl	fpc_ansistr_assign
.Lj301:
# [202] l:=length(s);
	ldr	r0,.Lj122
	ldr	r1,[r0]
	cmp	r1,#0
	ldrne	r1,[r1, #-4]
	ldr	r0,.Lj131
	str	r1,[r0]
# [203] outtextxyz(1344-8*l,75,s,44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj131
	str	r1,[r13]
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r1,#1344
	sub	r0,r1,r0,lsl #3
# Rescheduled
	ldr	r1,.Lj122
	ldr	r2,[r1]
	mov	r3,#44
	mov	r1,#75
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj107:
	bl	fpc_popaddrstack
	sub	r0,r11,#172
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#48
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-168]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r11,r13,r15}
.Lj109:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj115:
	.long	.Ld16
.Lj122:
	.long	U_$P$PROJECT1_$$_S
.Lj131:
	.long	U_$P$PROJECT1_$$_L
.Lj134:
	.long	U_$P$PROJECT1_$$_ILF
.Lj136:
	.long	U_$P$PROJECT1_$$_CURRENTDIR
.Lj137:
	.long	.Ld17
.Lj138:
	.long	U_$P$PROJECT1_$$_SR
.Lj139:
	.long	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
.Lj146:
	.long	U_$P$PROJECT1_$$_SR+16
.Lj150:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj151:
	.long	U_$P$PROJECT1_$$_SR+20
.Lj153:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj154:
	.long	.Ld18
.Lj165:
	.long	.Ld19
.Lj189:
	.long	.Ld20
.Lj215:
	.long	U_$P$PROJECT1_$$_ILD
.Lj222:
	.long	U_$P$PROJECT1_$$_I
.Lj265:
	.long	U_$P$PROJECT1_$$_J
.Lj294:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj295:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Le2:
	.size	P$PROJECT1_$$_DIRLIST$ANSISTRING, .Le2 - P$PROJECT1_$$_DIRLIST$ANSISTRING

.section .text.n_main
	.balign 4
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
# Temps allocated between r11-196 and r11-44
# [210] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#204
# Var fs located in register r1
	bl	fpc_initializeunits
	mov	r0,#0
	str	r0,[r11, #-196]
# Peephole MovStrMov done
	str	r0,[r11, #-192]
# Peephole MovStrMov done
	str	r0,[r11, #-176]
	sub	r2,r11,#56
	sub	r1,r11,#160
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-164]
	cmp	r0,#0
	bne	.Lj313
# [213] while not DirectoryExists('C:\') do
	b	.Lj316
	.balign 4
.Lj315:
# [215] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
.Lj316:
	ldr	r0,.Lj318
	bl	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
	cmp	r0,#0
	beq	.Lj315
# [221] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [224] workdir:='C:\';
	ldr	r0,.Lj319
# [223] fs:=1;
	mov	r1,#1
# Rescheduled
	ldr	r1,.Lj318
	bl	fpc_ansistr_assign
# Rescheduled
# [225] songtime:=0;
	ldr	r1,.Lj321
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj322
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [226] pause1a:=true;
	ldr	r1,.Lj323
	mov	r0,#1
	strb	r0,[r1]
# [227] siddelay:=20000;
	mov	r1,#32
# Rescheduled
	ldr	r0,.Lj324
	orr	r1,r1,#19968
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj325
	mov	r1,#0
# Rescheduled
# [228] setcurrentdir(workdir);
	ldr	r2,.Lj319
	str	r1,[r0]
	ldr	r0,[r2]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [229] initmachine;
	bl	RETROMALINA_$$_INITMACHINE
# [230] poke($2070002,0);
	ldr	r1,.Lj327
	mov	r0,#0
	strb	r0,[r1]
# [231] poke($2070006,0);
	ldr	r0,.Lj328
	mov	r1,#0
	strb	r1,[r0]
# [232] poke($2070007,0);
	ldr	r0,.Lj329
	mov	r1,#0
	strb	r1,[r0]
# [233] poke($2070008,1);
	ldr	r1,.Lj330
	mov	r0,#1
# Rescheduled
# [234] lpoke($206000c,$002040);
	ldr	r2,.Lj331
	strb	r0,[r1]
	bic	r1,r2,#3
	mov	r0,#8256
# Rescheduled
# [235] lpoke ($2060008,0);
	ldr	r2,.Lj332
	str	r0,[r1]
	bic	r0,r2,#3
	mov	r2,#0
# Rescheduled
# [236] lpoke ($2060020,1792);
	ldr	r1,.Lj333
	str	r2,[r0]
	bic	r1,r1,#3
	mov	r0,#1792
# Rescheduled
# [237] lpoke ($2060024,1120);
	ldr	r2,.Lj334
	str	r0,[r1]
	bic	r0,r2,#3
	mov	r1,#1120
	str	r1,[r0]
# [238] setataripallette(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [254] main1;
	bl	UMAIN_$$_MAIN1
# [255] dirlist('C:\');
	ldr	r0,.Lj318
	bl	P$PROJECT1_$$_DIRLIST$ANSISTRING
# [256] poke($2070003,1);
	ldr	r1,.Lj336
	mov	r0,#1
	strb	r0,[r1]
# [257] poke($2070004,1);
	ldr	r0,.Lj337
	mov	r1,#1
	strb	r1,[r0]
# [258] poke($2070005,1);
	ldr	r0,.Lj338
	mov	r1,#1
	strb	r1,[r0]
# [259] pwmbeep;
	bl	RETROMALINA_$$_PWMBEEP
# [261] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [262] ThreadSetCPU(ThreadGetCurrent,CPU_ID_0);
	ldr	r0,.Lj339
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj341
	ldr	r0,.Lj339
	ldr	r0,[r0]
	blx	r0
	b	.Lj343
.Lj341:
	mvn	r0,#0
.Lj343:
	mov	r1,#0
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [263] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [264] for i:=0 to 255 do keyboardstatus[i]:=0;
	ldr	r1,.Lj347
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj347
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj346:
	ldr	r2,.Lj347
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj347
	str	r0,[r2]
	ldr	r2,[r1]
# Rescheduled
	ldr	r0,.Lj351
	mov	r3,#0
# Rescheduled
	ldr	r1,.Lj347
	strb	r3,[r2, r0]
	ldr	r0,[r1]
	cmp	r0,#255
	blt	.Lj346
# [265] startreportbuffer;
	bl	KEYBOARD_$$_STARTREPORTBUFFER
	.balign 4
.Lj353:
# [267] main2;
	bl	UMAIN_$$_MAIN2
# [269] ch:=getkeyboardreport;
	sub	r0,r11,#172
	bl	KEYBOARD_$$_GETKEYBOARDREPORT$$TKEYBOARDREPORT
	ldr	r0,.Lj356
	sub	r3,r11,#172
	mov	r1,#8
.Lj357:
	ldrb	r2,[r3], #1
	subs	r1,r1,#1
	strb	r2,[r0], #1
	bne	.Lj357
# Rescheduled
	ldr	r1,.Lj358
	ldrb	r0,[r1]
# [270] if (ch[2]<>0) and (ch[2]<>255) then activekey:=ch[2];
	cmp	r0,#0
	beq	.Lj360
	cmp	r0,#255
	ldrne	r0,.Lj358
# Rescheduled
# Rescheduled
	ldrneb	r0,[r0]
	ldrne	r1,.Lj363
	strneb	r0,[r1]
.Lj360:
# [271] if (ch[2]<>0) and (activekey>0) then inc(rptcnt);
	ldr	r0,.Lj358
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj366
	ldr	r0,.Lj363
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrhi	r1,.Lj369
	ldrhib	r0,[r1]
	addhi	r0,r0,#1
# Peephole AndStrb2Strb done
	strhib	r0,[r1]
.Lj366:
# [272] if ch[2]=0 then begin rptcnt:=0; activekey:=0; end;
	ldr	r0,.Lj358
	ldrb	r0,[r0]
	cmp	r0,#0
	bne	.Lj372
# Rescheduled
	ldr	r0,.Lj369
	mov	r1,#0
	strb	r1,[r0]
# Rescheduled
	ldr	r1,.Lj363
	mov	r0,#0
	strb	r0,[r1]
.Lj372:
# [273] if rptcnt>26 then rptcnt:=24 ;
	ldr	r0,.Lj369
	ldrb	r0,[r0]
	cmp	r0,#26
# Rescheduled
	ldrhi	r1,.Lj369
	movhi	r0,#24
	strhib	r0,[r1]
	ldr	r0,.Lj369
	ldrb	r0,[r0]
# [274] if (rptcnt=1) or (rptcnt=24) then poke($2060028,byte(translatescantochar(activekey,0)));
	cmp	r0,#1
	beq	.Lj380
	cmp	r0,#24
	bne	.Lj382
.Lj380:
	ldr	r0,.Lj363
	ldrb	r0,[r0]
	mov	r1,#0
	bl	KEYBOARD_$$_TRANSLATESCANTOCHAR$BYTE$BYTE$$CHAR
# Rescheduled
	ldr	r1,.Lj384
	strb	r0,[r1]
.Lj382:
# [278] if peek($2060028)=ord('5') then begin dpoke ($2060028,0); siddelay:=20000; songfreq:=50; skip:=0; end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#53
	bne	.Lj387
	ldr	r0,.Lj384
	bic	r1,r0,#1
	mov	r0,#0
	strh	r0,[r1]
	mov	r0,#32
# Rescheduled
	ldr	r1,.Lj324
	orr	r0,r0,#19968
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj325
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj391
	mov	r0,#50
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj392
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj393
	mov	r0,#0
	str	r0,[r1]
.Lj387:
# [279] if peek($2060028)=ord('1') then begin dpoke ($2060028,0); siddelay:=10000; songfreq:=100; skip:=0; end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#49
	bne	.Lj396
	ldr	r0,.Lj384
	bic	r1,r0,#1
	mov	r0,#0
	strh	r0,[r1]
	mov	r1,#16
# Rescheduled
	ldr	r0,.Lj324
	orr	r1,r1,#9984
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj325
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj391
	mov	r1,#100
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj392
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj393
	mov	r1,#0
	str	r1,[r0]
.Lj396:
# [280] if peek($2060028)=ord('2') then begin dpoke ($2060028,0); siddelay:=5000; songfreq:=200; skip:=0;end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#50
	bne	.Lj405
	ldr	r0,.Lj384
	bic	r0,r0,#1
	mov	r1,#0
	strh	r1,[r0]
	mov	r1,#136
# Rescheduled
	ldr	r0,.Lj324
	orr	r1,r1,#4864
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj325
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj391
	mov	r1,#200
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj392
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj393
	mov	r1,#0
	str	r1,[r0]
.Lj405:
# [281] if peek($2060028)=ord('3') then begin dpoke ($2060028,0); siddelay:=6666; songfreq:=150; skip:=0; end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#51
	bne	.Lj414
	ldr	r0,.Lj384
	bic	r0,r0,#1
	mov	r1,#0
	strh	r1,[r0]
	mov	r1,#10
# Rescheduled
	ldr	r0,.Lj324
	orr	r1,r1,#6656
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj325
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj391
	mov	r1,#150
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj392
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj393
	mov	r0,#0
	str	r0,[r1]
.Lj414:
# [282] if peek($2060028)=ord('4') then begin dpoke ($2060028,0); siddelay:=2500; songfreq:=400; skip:=0; end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#52
	bne	.Lj423
	ldr	r0,.Lj384
	bic	r0,r0,#1
	mov	r1,#0
	strh	r1,[r0]
	mov	r1,#196
# Rescheduled
	ldr	r0,.Lj324
	orr	r1,r1,#2304
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj325
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj391
	mov	r0,#400
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj392
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj393
	mov	r0,#0
	str	r0,[r1]
.Lj423:
# [283] if peek($2060028)=ord('p') then begin dpoke ($2060028,0); pause1a:=not pause1a; if pause1a then sdl_pauseaudio(1) else sdl_pauseaudio(0); end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#112
	bne	.Lj432
	ldr	r0,.Lj384
	bic	r1,r0,#1
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj323
	strh	r0,[r1]
	ldrb	r0,[r2]
	cmp	r0,#0
	moveq	r1,#1
	movne	r1,#0
	ldr	r0,.Lj323
# Rescheduled
	ldr	r2,.Lj323
	strb	r1,[r0]
	ldrb	r0,[r2]
	cmp	r0,#0
	beq	.Lj437
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
	b	.Lj439
.Lj437:
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj439:
.Lj432:
# [284] if peek($2060028)=1 then begin dpoke($2060028,0); if peek($2070003)=0 then poke ($2070003,1) else poke ($2070003,0); end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#1
	bne	.Lj442
	ldr	r0,.Lj384
	bic	r0,r0,#1
	mov	r2,#0
# Rescheduled
	ldr	r1,.Lj336
	strh	r2,[r0]
	ldrb	r0,[r1]
	cmp	r0,#0
	ldreq	r0,.Lj336
	moveq	r1,#1
	streqb	r1,[r0]
	ldrne	r1,.Lj336
	movne	r0,#0
	strneb	r0,[r1]
.Lj442:
# [285] if peek($2060028)=2 then begin dpoke($2060028,0); if peek($2070004)=0 then poke ($2070004,1) else poke ($2070004,0); end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#2
	bne	.Lj452
	ldr	r0,.Lj384
	bic	r1,r0,#1
	mov	r2,#0
# Rescheduled
	ldr	r0,.Lj337
	strh	r2,[r1]
	ldrb	r0,[r0]
	cmp	r0,#0
	ldreq	r0,.Lj337
	moveq	r1,#1
	streqb	r1,[r0]
	ldrne	r1,.Lj337
	movne	r0,#0
	strneb	r0,[r1]
.Lj452:
# [286] if peek($2060028)=3 then begin dpoke($2060028,0); if peek($2070005)=0 then poke ($2070005,1) else poke ($2070005,0); end;
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#3
	bne	.Lj462
	ldr	r0,.Lj384
	bic	r1,r0,#1
	mov	r2,#0
# Rescheduled
	ldr	r0,.Lj338
	strh	r2,[r1]
	ldrb	r0,[r0]
	cmp	r0,#0
	ldreq	r0,.Lj338
	moveq	r1,#1
	streqb	r1,[r0]
	ldrne	r0,.Lj338
	movne	r1,#0
	strneb	r1,[r0]
.Lj462:
# [288] if peek($2060028)=23 then
	ldr	r0,.Lj384
	ldrb	r0,[r0]
	cmp	r0,#23
	bne	.Lj472
# [290] dpoke($2060028,0);
	ldr	r0,.Lj384
	bic	r1,r0,#1
	mov	r0,#0
# Rescheduled
# [291] if sel<ild then
	ldr	r2,.Lj474
	strh	r0,[r1]
# Rescheduled
	ldr	r0,.Lj475
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r2]
	cmp	r1,r0
	bge	.Lj477
# [293] box(920,132+32*sel,840,32,34);
	mov	r1,#34
# Rescheduled
	ldr	r0,.Lj474
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [294] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj481
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj483
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj486
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj488
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj489
.Lj483:
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj486
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj488
	str	r0,[r1]
.Lj489:
# [295] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj481
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj499
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj486
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj486
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj508
.Lj499:
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj486
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj508:
# [296] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj507
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj516
	ldr	r0,.Lj507
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj488
	mov	r0,#40
	str	r0,[r1]
.Lj516:
# [297] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj507
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r2,.Lj525
	mov	r1,#1
# Rescheduled
	ldr	r0,.Lj525
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj523
	ldr	r1,.Lj525
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj524:
	ldr	r2,.Lj525
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj507
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj525
	ldr	r2,[r1]
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj532
	ldr	r0,.Lj507
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj525
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj532:
	ldr	r0,.Lj525
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj524
.Lj523:
# [298] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj481
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj540
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj474
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj488
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj507
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj540:
# [299] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj481
# Rescheduled
	ldr	r1,.Lj547
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj549
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj474
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj488
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
# [490] end.
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj507
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj474
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj547
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj549:
# [300] sel+=1;
	ldr	r0,.Lj474
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj474
	add	r0,r0,#1
	str	r0,[r1]
# [301] box(920,132+32*sel,840,32,36);
	mov	r0,#36
# Rescheduled
	ldr	r1,.Lj474
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [302] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj481
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj562
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj486
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj488
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj568
.Lj562:
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj486
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj488
	str	r0,[r1]
.Lj568:
# [303] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj481
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj578
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj486
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj486
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj587
.Lj578:
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj486
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj587:
# [304] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj507
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj595
	ldr	r0,.Lj507
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj488
	mov	r0,#40
	str	r0,[r1]
.Lj595:
# [305] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj507
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r1,.Lj525
	mov	r0,#1
# Rescheduled
	ldr	r2,.Lj525
	str	r0,[r1]
	ldr	r0,[r2]
	cmp	r4,r0
	blt	.Lj602
	ldr	r1,.Lj525
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj603:
	ldr	r1,.Lj525
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj507
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj525
	ldr	r0,[r2]
	ldr	r1,[r1]
	sub	r0,r0,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj611
	ldr	r0,.Lj507
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj525
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj611:
	ldr	r0,.Lj525
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj603
.Lj602:
# [306] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj474
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj481
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj619
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj474
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj488
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj507
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj619:
# [307] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj481
# Rescheduled
	ldr	r1,.Lj547
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj634
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj474
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj488
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj507
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj474
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj547
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj634
.Lj477:
# [309] else if sel+selstart<ilf-1 then
	ldr	r0,.Lj474
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r1,.Lj637
	add	r2,r0,r2
	ldr	r0,[r1]
	sub	r0,r0,#1
	cmp	r2,r0
	bge	.Lj639
# [311] selstart+=1;
	ldr	r0,.Lj480
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj480
	add	r0,r0,#1
	str	r0,[r1]
# [312] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [313] box(920,132+32*sel,840,32,36);
	mov	r0,#36
# Rescheduled
	ldr	r1,.Lj474
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [314] for i:=0 to ild do
	ldr	r0,.Lj475
	ldr	r4,[r0]
# Rescheduled
	ldr	r0,.Lj347
	mov	r1,#0
# Rescheduled
	ldr	r2,.Lj347
	str	r1,[r0]
	ldr	r0,[r2]
	cmp	r4,r0
	blt	.Lj645
	ldr	r1,.Lj347
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj646:
	ldr	r2,.Lj347
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
# [316] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	ldr	r1,.Lj347
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj480
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj481
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj655
	ldr	r0,.Lj347
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj486
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj488
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj661
.Lj655:
	ldr	r0,.Lj347
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj486
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r0, lsl #3]
	cmp	r1,#0
	ldrne	r1,[r1, #-4]
	ldr	r0,.Lj488
	str	r1,[r0]
.Lj661:
# [317] if filenames[i+selstart,1]='' then  s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	ldr	r0,.Lj347
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj481
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj671
	ldr	r0,.Lj347
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj486
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj347
# Rescheduled
	ldr	r1,.Lj480
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj486
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj680
.Lj671:
	ldr	r0,.Lj347
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj486
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj680:
# [318] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj507
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj688
	ldr	r0,.Lj507
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj507
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj488
	mov	r0,#40
	str	r0,[r1]
.Lj688:
# [319] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj507
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
# Rescheduled
	ldr	r0,.Lj525
	mov	r1,#1
# Rescheduled
	ldr	r2,.Lj525
	str	r1,[r0]
	ldr	r0,[r2]
	cmp	r5,r0
	blt	.Lj695
	ldr	r1,.Lj525
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj696:
	ldr	r1,.Lj525
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj507
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj525
	ldr	r0,[r2]
	ldr	r1,[r1]
	sub	r0,r0,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj704
	ldr	r0,.Lj507
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj525
	ldr	r2,[r1]
	mov	r1,#32
	sub	r0,r0,#1
	strb	r1,[r0, r2]
.Lj704:
	ldr	r0,.Lj525
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj696
.Lj695:
# [320] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj347
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj481
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj712
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj347
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj488
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj507
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj712:
# [321] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj347
# Rescheduled
	ldr	r2,.Lj480
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj481
# Rescheduled
	ldr	r1,.Lj547
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj721
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
	b	.Lj1223
.Lj318:
	.long	.Ld21
.Lj319:
	.long	U_$P$PROJECT1_$$_WORKDIR
.Lj321:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj322:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj323:
	.long	TC_$P$PROJECT1_$$_PAUSE1A
.Lj324:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj325:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj327:
	.long	34013186
.Lj328:
	.long	34013190
.Lj329:
	.long	34013191
.Lj330:
	.long	34013192
.Lj331:
	.long	33947660
.Lj332:
	.long	33947656
.Lj333:
	.long	33947680
.Lj334:
	.long	33947684
.Lj336:
	.long	34013187
.Lj337:
	.long	34013188
.Lj338:
	.long	34013189
.Lj339:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj347:
	.long	U_$P$PROJECT1_$$_I
.Lj351:
	.long	U_$P$PROJECT1_$$_KEYBOARDSTATUS
.Lj356:
	.long	U_$P$PROJECT1_$$_CH
.Lj358:
	.long	U_$P$PROJECT1_$$_CH+2
.Lj363:
	.long	TC_$P$PROJECT1_$$_ACTIVEKEY
.Lj369:
	.long	TC_$P$PROJECT1_$$_RPTCNT
.Lj384:
	.long	33947688
.Lj391:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj392:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj393:
	.long	U_$RETROMALINA_$$_SKIP
.Lj474:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj475:
	.long	U_$P$PROJECT1_$$_ILD
.Lj480:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Lj481:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj486:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj488:
	.long	U_$P$PROJECT1_$$_L
.Lj507:
	.long	U_$P$PROJECT1_$$_S
.Lj525:
	.long	U_$P$PROJECT1_$$_J
.Lj547:
	.long	.Ld18
.Lj637:
	.long	U_$P$PROJECT1_$$_ILF
.Lj1223:
# Rescheduled
	ldr	r0,.Lj722
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj723
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj724
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj722
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj726
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj721:
	ldr	r0,.Lj722
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj646
.Lj645:
.Lj639:
.Lj634:
.Lj472:
# [326] if peek($2060028)=24 then
	ldr	r0,.Lj728
	ldrb	r0,[r0]
	cmp	r0,#24
	bne	.Lj730
# [328] dpoke($2060028,0);
	ldr	r0,.Lj728
	bic	r1,r0,#1
	mov	r0,#0
# Rescheduled
# [329] if sel>0 then
	ldr	r2,.Lj732
	strh	r0,[r1]
	ldr	r0,[r2]
	cmp	r0,#0
	ble	.Lj734
# [331] box(920,132+32*sel,840,32,34);
	mov	r0,#34
# Rescheduled
	ldr	r1,.Lj732
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [332] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj738
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj740
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj723
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj746
.Lj740:
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj723
	str	r0,[r1]
.Lj746:
# [333] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj738
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj756
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj743
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj765
.Lj756:
	ldr	r0,.Lj732
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj743
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj765:
# [334] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj724
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj773
	ldr	r0,.Lj724
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r0,.Lj723
	mov	r1,#40
	str	r1,[r0]
.Lj773:
# [335] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj724
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r0,.Lj782
	mov	r2,#1
# Rescheduled
	ldr	r1,.Lj782
	str	r2,[r0]
	ldr	r0,[r1]
	cmp	r4,r0
	blt	.Lj780
	ldr	r1,.Lj782
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj781:
	ldr	r1,.Lj782
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj724
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj782
	ldr	r2,[r2]
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj789
	ldr	r0,.Lj724
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj782
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj789:
	ldr	r0,.Lj782
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj781
.Lj780:
# [336] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj732
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj738
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj797
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj732
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj723
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj724
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj797:
# [337] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj732
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj738
# Rescheduled
	ldr	r1,.Lj726
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj806
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj732
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj723
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj724
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj732
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj726
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj806:
# [338] sel-=1;
	ldr	r0,.Lj732
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj732
	sub	r0,r0,#1
	str	r0,[r1]
# [339] box(920,132+32*sel,840,32,36);
	mov	r1,#36
# Rescheduled
	ldr	r0,.Lj732
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [340] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj732
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj738
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj819
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj723
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj825
.Lj819:
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj723
	str	r0,[r1]
.Lj825:
# [341] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj732
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj738
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj835
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj743
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj844
.Lj835:
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj743
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj844:
# [342] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj724
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj852
	ldr	r0,.Lj724
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r0,.Lj723
	mov	r1,#40
	str	r1,[r0]
.Lj852:
# [343] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj724
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r1,.Lj782
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj782
	str	r2,[r1]
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj859
	ldr	r1,.Lj782
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj860:
	ldr	r2,.Lj782
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj724
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj782
	ldr	r1,[r1]
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj868
	ldr	r0,.Lj724
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj782
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj868:
	ldr	r0,.Lj782
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj860
.Lj859:
# [344] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj738
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj876
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj732
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj723
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj724
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj876:
# [345] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj738
# Rescheduled
	ldr	r1,.Lj726
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj891
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj732
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj723
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj724
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj732
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj726
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj891
.Lj734:
# [347] else if sel+selstart>0 then
	ldr	r0,.Lj732
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
	cmp	r0,#0
	ble	.Lj895
# [349] selstart-=1;
	ldr	r0,.Lj737
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj737
	sub	r0,r0,#1
	str	r0,[r1]
# [350] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [351] box(920,132+32*sel,840,32,36);
	mov	r1,#36
# Rescheduled
	ldr	r0,.Lj732
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [352] for i:=0 to ild do
	ldr	r0,.Lj899
	ldr	r4,[r0]
# Rescheduled
	ldr	r2,.Lj722
	mov	r0,#0
# Rescheduled
	ldr	r1,.Lj722
	str	r0,[r2]
	ldr	r0,[r1]
	cmp	r4,r0
	blt	.Lj901
	ldr	r1,.Lj722
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj902:
	ldr	r2,.Lj722
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
# [354] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	ldr	r1,.Lj722
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj737
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj738
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj911
	ldr	r0,.Lj722
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj743
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj723
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj917
.Lj911:
	ldr	r0,.Lj722
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj743
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj723
	str	r0,[r1]
.Lj917:
# [355] if filenames[i+selstart,1]='' then s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	ldr	r0,.Lj722
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj738
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj927
	ldr	r0,.Lj722
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj722
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj743
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj936
.Lj927:
	ldr	r0,.Lj722
# Rescheduled
	ldr	r1,.Lj737
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj743
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj936:
# [356] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj724
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj944
	ldr	r0,.Lj724
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj724
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj723
	mov	r0,#40
	str	r0,[r1]
.Lj944:
# [357] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj724
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
# Rescheduled
	ldr	r2,.Lj782
	mov	r1,#1
# Rescheduled
	ldr	r0,.Lj782
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r5,r0
	blt	.Lj951
	ldr	r1,.Lj782
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj952:
	ldr	r1,.Lj782
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj724
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj782
	ldr	r2,[r2]
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj960
	ldr	r0,.Lj724
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj782
	ldr	r2,[r1]
	mov	r1,#32
	sub	r0,r0,#1
	strb	r1,[r0, r2]
.Lj960:
	ldr	r0,.Lj782
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj952
.Lj951:
# [358] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj722
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj738
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj968
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj722
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj723
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj724
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj968:
# [359] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj722
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj738
# Rescheduled
	ldr	r1,.Lj726
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj977
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj722
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj723
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj724
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj722
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj726
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj977:
	ldr	r0,.Lj722
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj902
.Lj901:
.Lj895:
.Lj891:
.Lj730:
# [364] if peek($2060028)=43 then
	ldr	r0,.Lj728
	ldrb	r0,[r0]
	cmp	r0,#43
	bne	.Lj986
# [366] dpoke($2060028,0);
	ldr	r0,.Lj728
	bic	r1,r0,#1
	mov	r2,#0
# Rescheduled
# [367] if songs>0 then
	ldr	r0,.Lj988
	strh	r2,[r1]
	ldrh	r0,[r0]
	cmp	r0,#0
	bls	.Lj990
# [369] if song<songs then
	ldr	r0,.Lj991
# Rescheduled
	ldr	r1,.Lj988
	ldrh	r2,[r0]
	ldrh	r0,[r1]
	cmp	r2,r0
	bcs	.Lj994
# [371] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# Rescheduled
# [372] for i:=1 to 200000 do;
	ldr	r0,.Lj722
	mov	r1,#1
# Rescheduled
	ldr	r2,.Lj722
	str	r1,[r0]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj997:
	ldr	r2,.Lj722
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj722
	str	r0,[r2]
	ldr	r0,[r1]
	mov	r1,#196608
	orr	r1,r1,#3392
	cmp	r0,r1
	blt	.Lj997
# [373] song+=1;
	ldr	r0,.Lj991
	ldrh	r0,[r0]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj991
# Peephole UXTHStrh2Strh done
# Rescheduled
# [374] jsr6502(song,init);
	ldr	r1,.Lj1004
	strh	r0,[r2]
# Rescheduled
# Rescheduled
	ldr	r0,.Lj991
	ldrh	r1,[r1]
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [375] sdl_pauseaudio(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj994:
.Lj990:
.Lj986:
# [380] if peek($2060028)=45 then
	ldr	r0,.Lj728
	ldrb	r0,[r0]
	cmp	r0,#45
	bne	.Lj1008
# [382] dpoke($2060028,0);
	ldr	r0,.Lj728
	bic	r0,r0,#1
	mov	r1,#0
# Rescheduled
# [383] if songs>0 then
	ldr	r2,.Lj988
	strh	r1,[r0]
	ldrh	r0,[r2]
	cmp	r0,#0
	bls	.Lj1012
# [385] if song>0 then
	ldr	r0,.Lj991
	ldrh	r0,[r0]
	cmp	r0,#0
	bls	.Lj1015
# [387] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# Rescheduled
# [388] for i:=1 to 200000 do;
	ldr	r1,.Lj722
	mov	r0,#1
# Rescheduled
	ldr	r2,.Lj722
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1018:
	ldr	r2,.Lj722
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj722
	str	r1,[r2]
	ldr	r0,[r0]
	mov	r1,#196608
	orr	r1,r1,#3392
	cmp	r0,r1
	blt	.Lj1018
# [389] song-=1;
	ldr	r0,.Lj991
	ldrh	r0,[r0]
	sub	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj991
# Peephole UXTHStrh2Strh done
# Rescheduled
# [390] jsr6502(song,init);
	ldr	r1,.Lj1004
	strh	r0,[r2]
# Rescheduled
# Rescheduled
	ldr	r0,.Lj991
	ldrh	r1,[r1]
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [391] sdl_pauseaudio(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj1015:
.Lj1012:
.Lj1008:
# [396] if peek($2060028)=13 then
	ldr	r0,.Lj728
	ldrb	r0,[r0]
	cmp	r0,#13
	bne	.Lj1029
# [398] dpoke($2060028,0);
	ldr	r0,.Lj728
	bic	r1,r0,#1
	mov	r0,#0
# Rescheduled
# [399] if filenames[sel+selstart,1]='[DIR]' then
	ldr	r2,.Lj732
	strh	r0,[r1]
# Rescheduled
	ldr	r0,.Lj737
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj738
# Rescheduled
	ldr	r1,.Lj726
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj1036
# [401] dirlist(currentdir2+filenames[sel+selstart,0]+'\');
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1037
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj732
	str	r0,[r11, #-188]
# Rescheduled
	ldr	r0,.Lj737
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r0, lsl #3]
# Rescheduled
	ldr	r0,.Lj1041
	str	r1,[r11, #-184]
	str	r0,[r11, #-180]
	sub	r1,r11,#188
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#176
	bl	fpc_ansistr_concat_multi
	ldr	r0,[r11, #-176]
	bl	P$PROJECT1_$$_DIRLIST$ANSISTRING
	b	.Lj1042
.Lj1036:
# [408] for i:=$200d400 to $200d420 do poke(i,0);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj722
	orr	r0,r0,#54272
# Rescheduled
	ldr	r2,.Lj722
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1045:
	ldr	r2,.Lj722
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj722
	str	r1,[r2]
	ldr	r1,[r0]
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj722
	strb	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj1051
	cmp	r0,r1
	blt	.Lj1045
# [409] i:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj722
	str	r0,[r1]
	.balign 4
.Lj1053:
# [410] repeat until lpeek($2060000)>(i+4);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj722
# Rescheduled
	ldr	r2,[r2]
	mov	r1,#0
	add	r2,r2,#4
# Peephole FoldShiftProcess done
	cmp	r1,r2,asr #31
	bgt	.Lj1055
	blt	.Lj1053
	cmp	r0,r2
	bls	.Lj1053
.Lj1055:
# [411] if sfh>=0 then fileclose(sfh);
	ldr	r0,.Lj1059
	ldr	r0,[r0]
	cmp	r0,#0
	ldrge	r0,.Lj1059
	ldrge	r0,[r0]
	blge	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [412] sfh:=-1;
	ldr	r0,.Lj1059
	mvn	r1,#0
	str	r1,[r0]
# Rescheduled
# [415] pause1a:=true;
	ldr	r1,.Lj1064
	mov	r0,#1
	strb	r0,[r1]
# Peephole MovStrMov done
# [416] sdl_pauseaudio(1);
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [418] i:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj722
	str	r0,[r1]
	.balign 4
.Lj1066:
# [419] repeat until lpeek($2060000)>i+4;
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj722
# Rescheduled
	ldr	r2,[r2]
	mov	r1,#0
	add	r2,r2,#4
# Peephole FoldShiftProcess done
	cmp	r1,r2,asr #31
	bgt	.Lj1068
	blt	.Lj1066
	cmp	r0,r2
	bls	.Lj1066
.Lj1068:
# Rescheduled
# [421] for i:=0 to $2F do siddata[i]:=0;
	ldr	r1,.Lj722
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj722
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1074:
	ldr	r2,.Lj722
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj722
	str	r1,[r2]
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1079
	mov	r1,#0
# Rescheduled
	ldr	r3,.Lj722
# Peephole FoldShiftLdrStr done
	str	r1,[r2, r0, lsl #2]
	ldr	r0,[r3]
	cmp	r0,#47
	blt	.Lj1074
# Rescheduled
# [422] for i:=$50 to $7F do siddata[i]:=0;
	ldr	r1,.Lj722
	mov	r0,#80
# Rescheduled
	ldr	r2,.Lj722
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1083:
	ldr	r2,.Lj722
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj722
	str	r0,[r2]
	ldr	r0,[r1]
	mov	r1,r0,lsl #2
# Rescheduled
	ldr	r3,.Lj1079
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj722
	str	r0,[r1, r3]
	ldr	r0,[r2]
	cmp	r0,#127
	blt	.Lj1083
# [423] siddata[$0e]:=$7FFFF8;
	mvn	r0,#-1073741817
# Rescheduled
	ldr	r1,.Lj1090
	bic	r0,r0,#1065353216
	str	r0,[r1]
# [424] siddata[$1e]:=$7FFFF8;
	mvn	r0,#-1073741817
# Rescheduled
	ldr	r1,.Lj1091
	bic	r0,r0,#1065353216
	str	r0,[r1]
# [425] siddata[$2e]:=$7FFFF8;
	mvn	r1,#-1073741817
# Rescheduled
	ldr	r0,.Lj1092
	bic	r1,r1,#1065353216
	str	r1,[r0]
# Rescheduled
# [427] songtime:=0;
	ldr	r0,.Lj1093
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj1094
	mov	r1,#0
# Rescheduled
# [429] fn:= currentdir2+filenames[sel+selstart,0];
	ldr	r2,.Lj732
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj737
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Rescheduled
	ldr	r3,.Lj1037
# Peephole FoldShiftLdrStr done
	ldr	r2,[r1, r0, lsl #3]
# Rescheduled
	ldr	r0,.Lj1099
	ldr	r1,[r3]
	mov	r3,#0
	bl	fpc_ansistr_concat
# [430] sfh:=fileopen(fn,$40);
	ldr	r0,.Lj1099
	ldr	r0,[r0]
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
# Rescheduled
	ldr	r2,.Lj1059
# Rescheduled
# [431] s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4);
	ldr	r1,.Lj732
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj737
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj743
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj732
# Rescheduled
	ldr	r2,.Lj737
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
	b	.Lj1224
.Lj722:
	.long	U_$P$PROJECT1_$$_I
.Lj723:
	.long	U_$P$PROJECT1_$$_L
.Lj724:
	.long	U_$P$PROJECT1_$$_S
.Lj726:
	.long	.Ld18
.Lj728:
	.long	33947688
.Lj732:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj737:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Lj738:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj743:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj782:
	.long	U_$P$PROJECT1_$$_J
.Lj899:
	.long	U_$P$PROJECT1_$$_ILD
.Lj988:
	.long	TC_$P$PROJECT1_$$_SONGS
.Lj991:
	.long	TC_$P$PROJECT1_$$_SONG
.Lj1004:
	.long	U_$P$PROJECT1_$$_INIT
.Lj1037:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj1041:
	.long	.Ld16
.Lj1051:
	.long	33608736
.Lj1059:
	.long	U_$RETROMALINA_$$_SFH
.Lj1064:
	.long	TC_$P$PROJECT1_$$_PAUSE1A
.Lj1079:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj1090:
	.long	U_$RETROMALINA_$$_SIDDATA+56
.Lj1091:
	.long	U_$RETROMALINA_$$_SIDDATA+120
.Lj1092:
	.long	U_$RETROMALINA_$$_SIDDATA+184
.Lj1093:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj1094:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj1099:
	.long	U_$P$PROJECT1_$$_FN
.Lj1224:
# Rescheduled
	ldr	r2,.Lj1108
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj1109
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
# [432] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj1109
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r1,.Lj1115
	mov	r0,#1
# Rescheduled
	ldr	r2,.Lj1115
	str	r0,[r1]
	ldr	r0,[r2]
	cmp	r4,r0
	blt	.Lj1113
	ldr	r1,.Lj1115
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj1114:
	ldr	r1,.Lj1115
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj1109
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj1115
	ldr	r2,[r2]
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj1122
	ldr	r0,.Lj1109
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj1115
	ldr	r2,[r1]
	mov	r1,#32
	sub	r0,r0,#1
	strb	r1,[r0, r2]
.Lj1122:
	ldr	r0,.Lj1115
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj1114
.Lj1113:
# [433] siddelay:=20000;
	mov	r0,#32
# Rescheduled
	ldr	r1,.Lj1126
	orr	r0,r0,#19968
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj1127
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [434] filetype:=0;
	ldr	r2,.Lj1128
	mov	r0,#0
# Rescheduled
# [435] fileread(sfh,buf,4);
	ldr	r1,.Lj1129
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj1130
	ldr	r0,[r0]
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj1129
# [436] if (buf[0]=ord('S')) and (buf[1]=ord('D')) and (buf[2]=ord('M')) and (buf[3]=ord('P')) then
	ldrb	r1,[r0]
	cmp	r1,#83
	bne	.Lj1133
	ldrb	r1,[r0, #1]
	cmp	r1,#68
	bne	.Lj1133
	ldrb	r1,[r0, #2]
	cmp	r1,#77
	bne	.Lj1133
	ldrb	r0,[r0, #3]
	cmp	r0,#80
	bne	.Lj1133
# [438] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [439] outtextxyz(18,132,'type: SDMP',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1137
	mov	r3,#188
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# Rescheduled
# [440] songs:=0;
	ldr	r2,.Lj1138
	mov	r0,#0
# Rescheduled
# [441] fileread(sfh,buf,4);
	ldr	r1,.Lj1129
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj1130
	ldr	r0,[r0]
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [442] siddelay:=1000000 div buf[0];
	ldr	r0,.Lj1129
	ldrb	r0,[r0]
	mov	r1,#999424
	orr	r1,r1,#576
	bl	fpc_div_longint
# Rescheduled
	ldr	r1,.Lj1126
	mov	r3,r0,asr #31
# Rescheduled
	ldr	r2,.Lj1127
	str	r0,[r1]
	str	r3,[r2]
# [443] outtextxyz(18,196,'speed: '+inttostr(buf[0])+' Hz',188,2,2);
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1144
# Rescheduled
	ldr	r1,.Lj1129
	str	r0,[r11, #-188]
	ldrb	r1,[r1]
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r1,[r11, #-192]
# Rescheduled
	ldr	r0,.Lj1146
	str	r1,[r11, #-184]
	str	r0,[r11, #-180]
	sub	r1,r11,#188
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#176
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-176]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#188
	mov	r1,#196
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [444] atitle:='                                ';
	ldr	r0,.Lj1147
# Rescheduled
	ldr	r2,.Lj1148
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# Rescheduled
# Rescheduled
# [445] fileread(sfh,atitle[1],16);
	ldr	r0,.Lj1130
	ldr	r1,.Lj1149
	ldr	r0,[r0]
	mov	r2,#16
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# Rescheduled
# Rescheduled
# [446] fileread(sfh,buf,1);
	ldr	r0,.Lj1130
	ldr	r1,.Lj1129
	ldr	r0,[r0]
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [447] outtextxyz(18,164,'atitle: '+atitle,188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj1147
	mov	r2,#0
	sub	r0,r11,#196
	bl	fpc_shortstr_to_ansistr
	ldr	r2,[r11, #-196]
# Rescheduled
	ldr	r1,.Lj1154
	mov	r3,#0
	sub	r0,r11,#176
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-176]
	mov	r3,#188
	mov	r1,#164
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [448] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [449] outtextxyz(18,912,'SIDCog DMP file, '+inttostr(songfreq)+' Hz',250,2,2);
	sub	r0,r11,#196
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1155
# Rescheduled
	ldr	r1,.Lj1156
	str	r0,[r11, #-188]
# Rescheduled
	ldr	r0,.Lj1157
	ldr	r2,[r1]
	ldr	r1,[r0]
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r1,[r11, #-192]
# Rescheduled
	ldr	r0,.Lj1146
	str	r1,[r11, #-184]
	str	r0,[r11, #-180]
	sub	r1,r11,#188
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#196
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-196]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#250
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj1159
.Lj1133:
	ldr	r0,.Lj1129
# [451] else if (buf[0]=ord('P')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	ldrb	r1,[r0]
	cmp	r1,#80
	bne	.Lj1162
	ldrb	r1,[r0, #1]
	cmp	r1,#83
	bne	.Lj1162
	ldrb	r1,[r0, #2]
	cmp	r1,#73
	bne	.Lj1162
	ldrb	r0,[r0, #3]
	cmp	r0,#68
	bne	.Lj1162
# [453] reset6502;
	bl	UNIT6502_$$_RESET6502
# [454] sidopen(sfh);
	ldr	r0,.Lj1130
	bl	P$PROJECT1_$$_SIDOPEN$LONGINT
# [455] i:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj1167
	str	r0,[r1]
	.balign 4
.Lj1168:
# [456] repeat until lpeek($2060000)>(i+4);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1167
# Rescheduled
	ldr	r2,[r2]
	mov	r1,#0
	add	r2,r2,#4
# Peephole FoldShiftProcess done
	cmp	r1,r2,asr #31
	bgt	.Lj1170
	blt	.Lj1168
	cmp	r0,r2
	bls	.Lj1168
.Lj1170:
# [457] if cia>0 then siddelay:={985248}1000000 div (50*round(19652/cia));
	ldr	r0,.Lj1174
	ldr	r0,[r0]
	cmp	r0,#0
	ble	.Lj1176
	ldr	r0,.Lj1174
	vldr	s0,[r0]
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj1177
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
	b	.Lj1225
.Lj1108:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj1109:
	.long	U_$P$PROJECT1_$$_S
.Lj1115:
	.long	U_$P$PROJECT1_$$_J
.Lj1126:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj1127:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj1128:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj1129:
	.long	U_$P$PROJECT1_$$_BUF
.Lj1130:
	.long	U_$RETROMALINA_$$_SFH
.Lj1137:
	.long	.Ld22
.Lj1138:
	.long	TC_$P$PROJECT1_$$_SONGS
.Lj1144:
	.long	.Ld10
.Lj1146:
	.long	.Ld23
.Lj1147:
	.long	U_$P$PROJECT1_$$_ATITLE
.Lj1148:
	.long	_$PROJECT1$_Ld1
.Lj1149:
	.long	U_$P$PROJECT1_$$_ATITLE+1
.Lj1154:
	.long	.Ld24
.Lj1155:
	.long	.Ld25
.Lj1156:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj1157:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj1167:
	.long	U_$P$PROJECT1_$$_I
.Lj1174:
	.long	U_$P$PROJECT1_$$_CIA
.Lj1177:
# value: 0d+1.9652000000000000E+004
	.byte	0,0,0,0,0,49,211,64
.Lj1225:
	mov	r2,#999424
	orr	r2,r2,#576
	bl	fpc_div_int64
# Rescheduled
	ldr	r3,.Lj1179
# Rescheduled
	ldr	r2,.Lj1180
	str	r0,[r3]
	str	r1,[r2]
.Lj1176:
# Rescheduled
# [458] filetype:=1;
	ldr	r1,.Lj1181
	mov	r0,#1
	str	r0,[r1]
# [459] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [460] outtextxyz(18,912,'PSID file, '+inttostr(1000000 div siddelay)+' Hz',250,2,2);
	sub	r0,r11,#196
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1182
	str	r0,[r11, #-188]
	mov	r3,#0
	mov	r2,#999424
# Rescheduled
	ldr	r0,.Lj1180
	orr	r2,r2,#576
# Rescheduled
	ldr	r12,.Lj1179
	ldr	r1,[r0]
	ldr	r0,[r12]
	bl	fpc_div_int64
	mov	r2,r1
	mov	r1,r0
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r1,[r11, #-192]
# Rescheduled
	ldr	r0,.Lj1185
	str	r1,[r11, #-184]
	str	r0,[r11, #-180]
	sub	r1,r11,#188
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#196
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-196]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#250
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [461] fileclose(sfh);
	ldr	r0,.Lj1186
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	b	.Lj1187
.Lj1162:
	ldr	r0,.Lj1188
# [463] else if (buf[0]=ord('R')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	ldrb	r1,[r0]
	cmp	r1,#82
	bne	.Lj1190
	ldrb	r1,[r0, #1]
	cmp	r1,#83
	bne	.Lj1190
	ldrb	r1,[r0, #2]
	cmp	r1,#73
	bne	.Lj1190
	ldrb	r0,[r0, #3]
	cmp	r0,#68
	bne	.Lj1190
# Rescheduled
# [465] filetype:=2;
	ldr	r1,.Lj1181
	mov	r0,#2
	str	r0,[r1]
# [466] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [467] outtextxyz(18,132,'type: RSID, not yet supported',44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1195
	mov	r3,#44
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [468] fileclose(sfh);
	ldr	r0,.Lj1186
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	b	.Lj1197
.Lj1190:
# Rescheduled
# Rescheduled
# [472] fileread(sfh,buf,21);
	ldr	r0,.Lj1186
	ldr	r1,.Lj1188
	ldr	r0,[r0]
	mov	r2,#21
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [473] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [474] outtextxyz(18,132,'type: unknown, 50 Hz SDMP assumed',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1200
	mov	r3,#188
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [475] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [476] outtextxyz(18,912,'SIDCog DMP file, 50 Hz',250,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1201
	mov	r3,#250
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1197:
.Lj1187:
.Lj1159:
# [478] songname:=s;
	ldr	r1,.Lj1202
# Rescheduled
	ldr	r0,.Lj1203
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# Rescheduled
# [479] songtime:=0;
	ldr	r1,.Lj1204
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj1205
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [480] timer1:=-1;
	ldr	r1,.Lj1206
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r2,.Lj1207
	mvn	r1,#0
# Rescheduled
# [481] if filetype<>2 then begin pause1a:=false; sdl_pauseaudio(0); end;
	ldr	r0,.Lj1181
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#2
	beq	.Lj1210
# Rescheduled
	ldr	r0,.Lj1211
	mov	r1,#0
	strb	r1,[r0]
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj1210:
.Lj1042:
.Lj1029:
# [484] until (peek($2060028)=27) ;
	ldr	r0,.Lj1212
	ldrb	r0,[r0]
	cmp	r0,#27
	bne	.Lj353
# [485] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [486] if sfh>0 then fileclose(sfh);
	ldr	r0,.Lj1186
	ldr	r0,[r0]
	cmp	r0,#0
	ldrgt	r0,.Lj1186
	ldrgt	r0,[r0]
	blgt	SYSUTILS_$$_FILECLOSE$LONGINT
# [487] setcurrentdir(workdir);
	ldr	r0,.Lj1217
	ldr	r0,[r0]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [488] stopmachine;
	bl	RETROMALINA_$$_STOPMACHINE
# [489] systemrestart(0);
	ldr	r0,.Lj1218
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj1220
# Rescheduled
	ldr	r1,.Lj1218
# Rescheduled
	ldr	r1,[r1]
	mov	r0,#0
	blx	r1
	b	.Lj1222
.Lj1220:
	mov	r0,#120
.Lj1222:
.Lj313:
	bl	fpc_popaddrstack
	sub	r0,r11,#196
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#192
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-164]
	cmp	r0,#0
	blne	fpc_reraise
	bl	fpc_do_exit
	ldmea	r11,{r4,r5,r11,r13,r15}
.Lj1179:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj1180:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj1181:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj1182:
	.long	.Ld26
.Lj1185:
	.long	.Ld23
.Lj1186:
	.long	U_$RETROMALINA_$$_SFH
.Lj1188:
	.long	U_$P$PROJECT1_$$_BUF
.Lj1195:
	.long	.Ld27
.Lj1200:
	.long	.Ld28
.Lj1201:
	.long	.Ld29
.Lj1202:
	.long	U_$P$PROJECT1_$$_S
.Lj1203:
	.long	U_$UMAIN_$$_SONGNAME
.Lj1204:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj1205:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj1206:
	.long	TC_$RETROMALINA_$$_TIMER1
.Lj1207:
	.long	TC_$RETROMALINA_$$_TIMER1+4
.Lj1211:
	.long	TC_$P$PROJECT1_$$_PAUSE1A
.Lj1212:
	.long	33947688
.Lj1217:
	.long	U_$P$PROJECT1_$$_WORKDIR
.Lj1218:
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
	ldr	r0,.Lj1226
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1227
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1228
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj1229
# Rescheduled
	ldr	r0,.Lj1230
	bl	fpc_finalize
	ldr	r1,.Lj1231
# Rescheduled
	ldr	r0,.Lj1232
	bl	fpc_finalize
	ldr	r0,.Lj1233
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1234
	bl	fpc_ansistr_decr_ref
	ldmfd	r13!,{r15}
.Lj1226:
	.long	U_$P$PROJECT1_$$_S
.Lj1227:
	.long	U_$P$PROJECT1_$$_CURRENTDIR
.Lj1228:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj1229:
	.long	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
.Lj1230:
	.long	U_$P$PROJECT1_$$_SR
.Lj1231:
	.long	RTTI_$P$PROJECT1_$$_def00000003
.Lj1232:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj1233:
	.long	U_$P$PROJECT1_$$_FN
.Lj1234:
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

.section .bss.n_u_$p$project1_$$_ch
# [44] ch:tkeyboardreport;
	.size U_$P$PROJECT1_$$_CH,8
U_$P$PROJECT1_$$_CH:
	.zero 8

.section .bss.n_u_$p$project1_$$_keyboardstatus
# [45] keyboardstatus:array[0..255]of byte;
	.size U_$P$PROJECT1_$$_KEYBOARDSTATUS,256
U_$P$PROJECT1_$$_KEYBOARDSTATUS:
	.zero 256

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
# [492] 
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

.section .data.n_TC_$P$PROJECT1_$$_PAUSE1A
TC_$P$PROJECT1_$$_PAUSE1A:
	.byte	1
.Le19:
	.size	TC_$P$PROJECT1_$$_PAUSE1A, .Le19 - TC_$P$PROJECT1_$$_PAUSE1A

.section .data.n_TC_$P$PROJECT1_$$_ACTIVEKEY
TC_$P$PROJECT1_$$_ACTIVEKEY:
	.byte	0
# [47] rptcnt:byte=0;
.Le20:
	.size	TC_$P$PROJECT1_$$_ACTIVEKEY, .Le20 - TC_$P$PROJECT1_$$_ACTIVEKEY

.section .data.n_TC_$P$PROJECT1_$$_RPTCNT
TC_$P$PROJECT1_$$_RPTCNT:
	.byte	0
# [51] procedure sidopen (var fh:integer);
.Le21:
	.size	TC_$P$PROJECT1_$$_RPTCNT, .Le21 - TC_$P$PROJECT1_$$_RPTCNT

.section .rodata.n__$PROJECT1$_Ld1
	.balign 4
.globl	_$PROJECT1$_Ld1
_$PROJECT1$_Ld1:
	.ascii	"                                 \000"
.Le22:
	.size	_$PROJECT1$_Ld1, .Le22 - _$PROJECT1$_Ld1

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,10
.Ld2:
	.ascii	"type: PSID\000"
.Le23:
	.size	.Ld2$strlab, .Le23 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,9
.Ld3:
	.ascii	"version: \000"
.Le24:
	.size	.Ld3$strlab, .Le24 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,8
.Ld4:
	.ascii	"offset: \000"
.Le25:
	.size	.Ld4$strlab, .Le25 - .Ld4$strlab

.section .rodata.n_.Ld5
	.balign 4
.Ld5$strlab:
	.short	0,1
	.long	-1,6
.Ld5:
	.ascii	"load: \000"
.Le26:
	.size	.Ld5$strlab, .Le26 - .Ld5$strlab

.section .rodata.n_.Ld6
	.balign 4
.Ld6$strlab:
	.short	0,1
	.long	-1,6
.Ld6:
	.ascii	"init: \000"
.Le27:
	.size	.Ld6$strlab, .Le27 - .Ld6$strlab

.section .rodata.n_.Ld7
	.balign 4
.Ld7$strlab:
	.short	0,1
	.long	-1,6
.Ld7:
	.ascii	"play: \000"
.Le28:
	.size	.Ld7$strlab, .Le28 - .Ld7$strlab

.section .rodata.n_.Ld8
	.balign 4
.Ld8$strlab:
	.short	0,1
	.long	-1,7
.Ld8:
	.ascii	"songs: \000"
.Le29:
	.size	.Ld8$strlab, .Le29 - .Ld8$strlab

.section .rodata.n_.Ld9
	.balign 4
.Ld9$strlab:
	.short	0,1
	.long	-1,11
.Ld9:
	.ascii	"startsong: \000"
.Le30:
	.size	.Ld9$strlab, .Le30 - .Ld9$strlab

.section .rodata.n_.Ld10
	.balign 4
.Ld10$strlab:
	.short	0,1
	.long	-1,7
.Ld10:
	.ascii	"speed: \000"
.Le31:
	.size	.Ld10$strlab, .Le31 - .Ld10$strlab

.section .rodata.n_.Ld11
	.balign 4
.Ld11$strlab:
	.short	0,1
	.long	-1,7
.Ld11:
	.ascii	"title: \000"
.Le32:
	.size	.Ld11$strlab, .Le32 - .Ld11$strlab

.section .rodata.n_.Ld12
	.balign 4
.Ld12$strlab:
	.short	0,1
	.long	-1,8
.Ld12:
	.ascii	"author: \000"
.Le33:
	.size	.Ld12$strlab, .Le33 - .Ld12$strlab

.section .rodata.n_.Ld13
	.balign 4
.Ld13$strlab:
	.short	0,1
	.long	-1,11
.Ld13:
	.ascii	"copyright: \000"
.Le34:
	.size	.Ld13$strlab, .Le34 - .Ld13$strlab

.section .rodata.n_.Ld14
	.balign 4
.Ld14$strlab:
	.short	0,1
	.long	-1,7
.Ld14:
	.ascii	"flags: \000"
.Le35:
	.size	.Ld14$strlab, .Le35 - .Ld14$strlab

.section .rodata.n_.Ld15
	.balign 4
.Ld15$strlab:
	.short	0,1
	.long	-1,5
.Ld15:
	.ascii	"cia: \000"
.Le36:
	.size	.Ld15$strlab, .Le36 - .Ld15$strlab

.section .rodata.n_.Ld16
	.balign 4
.Ld16$strlab:
	.short	0,1
	.long	-1,1
.Ld16:
	.ascii	"\\\000"
.Le37:
	.size	.Ld16$strlab, .Le37 - .Ld16$strlab

.section .rodata.n_.Ld17
	.balign 4
.Ld17$strlab:
	.short	0,1
	.long	-1,1
.Ld17:
	.ascii	"*\000"
.Le38:
	.size	.Ld17$strlab, .Le38 - .Ld17$strlab

.section .rodata.n_.Ld18
	.balign 4
.Ld18$strlab:
	.short	0,1
	.long	-1,5
.Ld18:
	.ascii	"[DIR]\000"
.Le39:
	.size	.Ld18$strlab, .Le39 - .Ld18$strlab

.section .rodata.n_.Ld19
	.balign 4
.Ld19$strlab:
	.short	0,1
	.long	-1,5
.Ld19:
	.ascii	"*.sid\000"
.Le40:
	.size	.Ld19$strlab, .Le40 - .Ld19$strlab

.section .rodata.n_.Ld20
	.balign 4
.Ld20$strlab:
	.short	0,1
	.long	-1,5
.Ld20:
	.ascii	"*.dmp\000"
.Le41:
	.size	.Ld20$strlab, .Le41 - .Ld20$strlab

.section .rodata.n_.Ld21
	.balign 4
.Ld21$strlab:
	.short	0,1
	.long	-1,3
.Ld21:
	.ascii	"C:\\\000"
.Le42:
	.size	.Ld21$strlab, .Le42 - .Ld21$strlab

.section .rodata.n_.Ld22
	.balign 4
.Ld22$strlab:
	.short	0,1
	.long	-1,10
.Ld22:
	.ascii	"type: SDMP\000"
.Le43:
	.size	.Ld22$strlab, .Le43 - .Ld22$strlab

.section .rodata.n_.Ld23
	.balign 4
.Ld23$strlab:
	.short	0,1
	.long	-1,3
.Ld23:
	.ascii	" Hz\000"
.Le44:
	.size	.Ld23$strlab, .Le44 - .Ld23$strlab

.section .rodata.n_.Ld24
	.balign 4
.Ld24$strlab:
	.short	0,1
	.long	-1,8
.Ld24:
	.ascii	"atitle: \000"
.Le45:
	.size	.Ld24$strlab, .Le45 - .Ld24$strlab

.section .rodata.n_.Ld25
	.balign 4
.Ld25$strlab:
	.short	0,1
	.long	-1,17
.Ld25:
	.ascii	"SIDCog DMP file, \000"
.Le46:
	.size	.Ld25$strlab, .Le46 - .Ld25$strlab

.section .rodata.n_.Ld26
	.balign 4
.Ld26$strlab:
	.short	0,1
	.long	-1,11
.Ld26:
	.ascii	"PSID file, \000"
.Le47:
	.size	.Ld26$strlab, .Le47 - .Ld26$strlab

.section .rodata.n_.Ld27
	.balign 4
.Ld27$strlab:
	.short	0,1
	.long	-1,29
.Ld27:
	.ascii	"type: RSID, not yet supported\000"
.Le48:
	.size	.Ld27$strlab, .Le48 - .Ld27$strlab

.section .rodata.n_.Ld28
	.balign 4
.Ld28$strlab:
	.short	0,1
	.long	-1,33
.Ld28:
	.ascii	"type: unknown, 50 Hz SDMP assumed\000"
.Le49:
	.size	.Ld28$strlab, .Le49 - .Ld28$strlab

.section .rodata.n_.Ld29
	.balign 4
.Ld29$strlab:
	.short	0,1
	.long	-1,22
.Ld29:
	.ascii	"SIDCog DMP file, 50 Hz\000"
.Le50:
	.size	.Ld29$strlab, .Le50 - .Ld29$strlab
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
.Le51:
	.size	RTTI_$P$PROJECT1_$$_def00000004, .Le51 - RTTI_$P$PROJECT1_$$_def00000004

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
.Le52:
	.size	RTTI_$P$PROJECT1_$$_def00000003, .Le52 - RTTI_$P$PROJECT1_$$_def00000003

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000005
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000005
RTTI_$P$PROJECT1_$$_def00000005:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le53:
	.size	RTTI_$P$PROJECT1_$$_def00000005, .Le53 - RTTI_$P$PROJECT1_$$_def00000005

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000006
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000006
RTTI_$P$PROJECT1_$$_def00000006:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le54:
	.size	RTTI_$P$PROJECT1_$$_def00000006, .Le54 - RTTI_$P$PROJECT1_$$_def00000006

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000007
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000007
RTTI_$P$PROJECT1_$$_def00000007:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le55:
	.size	RTTI_$P$PROJECT1_$$_def00000007, .Le55 - RTTI_$P$PROJECT1_$$_def00000007

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000008
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000008
RTTI_$P$PROJECT1_$$_def00000008:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le56:
	.size	RTTI_$P$PROJECT1_$$_def00000008, .Le56 - RTTI_$P$PROJECT1_$$_def00000008
# End asmlist al_rtti

