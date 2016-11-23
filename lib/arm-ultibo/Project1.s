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
# [212] while not DirectoryExists('C:\') do
	b	.Lj316
	.balign 4
.Lj315:
# [214] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
.Lj316:
	ldr	r0,.Lj318
	bl	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
	cmp	r0,#0
	beq	.Lj315
# [220] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [223] workdir:='C:\';
	ldr	r0,.Lj319
# [222] fs:=1;
	mov	r1,#1
# Rescheduled
	ldr	r1,.Lj318
	bl	fpc_ansistr_assign
# Rescheduled
# [224] songtime:=0;
	ldr	r0,.Lj321
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj322
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [225] pause1:=true;
	ldr	r1,.Lj323
	mov	r0,#1
	strb	r0,[r1]
# [226] siddelay:=20000;
	mov	r0,#32
# Rescheduled
	ldr	r1,.Lj324
	orr	r0,r0,#19968
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj325
	mov	r0,#0
# Rescheduled
# [227] setcurrentdir(workdir);
	ldr	r2,.Lj319
	str	r0,[r1]
	ldr	r0,[r2]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [228] initmachine;
	bl	RETROMALINA_$$_INITMACHINE
# [229] poke($2070002,0);
	ldr	r1,.Lj327
	mov	r0,#0
	strb	r0,[r1]
# [230] poke($2070006,0);
	ldr	r0,.Lj328
	mov	r1,#0
	strb	r1,[r0]
# [231] poke($2070007,0);
	ldr	r0,.Lj329
	mov	r1,#0
	strb	r1,[r0]
# [232] poke($2070008,1);
	ldr	r1,.Lj330
	mov	r0,#1
# Rescheduled
# [233] lpoke($206000c,$002040);
	ldr	r2,.Lj331
	strb	r0,[r1]
	bic	r0,r2,#3
	mov	r1,#8256
	str	r1,[r0]
# [234] main1;
	bl	UMAIN_$$_MAIN1
# [235] dirlist('C:\');
	ldr	r0,.Lj318
	bl	P$PROJECT1_$$_DIRLIST$ANSISTRING
# [236] poke($2070003,1);
	ldr	r0,.Lj333
	mov	r1,#1
	strb	r1,[r0]
# [237] poke($2070004,1);
	ldr	r0,.Lj334
	mov	r1,#1
	strb	r1,[r0]
# [238] poke($2070005,1);
	ldr	r0,.Lj335
	mov	r1,#1
	strb	r1,[r0]
# [239] pwmbeep;
	bl	RETROMALINA_$$_PWMBEEP
# [241] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [242] ThreadSetCPU(ThreadGetCurrent,CPU_ID_0);
	ldr	r0,.Lj336
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj338
	ldr	r0,.Lj336
	ldr	r0,[r0]
	blx	r0
	b	.Lj340
.Lj338:
	mvn	r0,#0
.Lj340:
	mov	r1,#0
	bl	THREADS_$$_THREADSETCPU$LONGINT$LONGWORD$$LONGWORD
# [243] threadsleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# Rescheduled
# [244] for i:=0 to 255 do keyboardstatus[i]:=0;
	ldr	r0,.Lj344
	mov	r1,#0
# Rescheduled
	ldr	r2,.Lj344
	str	r1,[r0]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj343:
	ldr	r2,.Lj344
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj344
	str	r0,[r2]
	ldr	r1,[r1]
# Rescheduled
	ldr	r0,.Lj348
	mov	r3,#0
# Rescheduled
	ldr	r2,.Lj344
	strb	r3,[r1, r0]
	ldr	r0,[r2]
	cmp	r0,#255
	blt	.Lj343
# [245] startreportbuffer;
	bl	KEYBOARD_$$_STARTREPORTBUFFER
	.balign 4
.Lj350:
# [247] main2;
	bl	UMAIN_$$_MAIN2
# [251] ch:=getkeyboardreport;
	sub	r0,r11,#172
	bl	KEYBOARD_$$_GETKEYBOARDREPORT$$TKEYBOARDREPORT
	ldr	r0,.Lj353
	sub	r3,r11,#172
	mov	r2,#8
.Lj354:
	ldrb	r1,[r3], #1
	subs	r2,r2,#1
	strb	r1,[r0], #1
	bne	.Lj354
# Rescheduled
	ldr	r1,.Lj355
	ldrb	r0,[r1]
# [252] if (ch[2]<>0) and (ch[2]<>255) then activekey:=ch[2];
	cmp	r0,#0
	beq	.Lj357
	cmp	r0,#255
	ldrne	r0,.Lj355
# Rescheduled
# Rescheduled
	ldrneb	r0,[r0]
	ldrne	r1,.Lj360
	strneb	r0,[r1]
.Lj357:
# [253] if (ch[2]<>0) and (activekey>0) then inc(rptcnt);
	ldr	r0,.Lj355
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj363
	ldr	r0,.Lj360
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrhi	r1,.Lj366
	ldrhib	r0,[r1]
	addhi	r0,r0,#1
# Peephole AndStrb2Strb done
	strhib	r0,[r1]
.Lj363:
# [254] if ch[2]=0 then begin rptcnt:=0; activekey:=0; end;
	ldr	r0,.Lj355
	ldrb	r0,[r0]
	cmp	r0,#0
	bne	.Lj369
# Rescheduled
	ldr	r1,.Lj366
	mov	r0,#0
	strb	r0,[r1]
# Rescheduled
	ldr	r0,.Lj360
	mov	r1,#0
	strb	r1,[r0]
.Lj369:
# [255] if rptcnt>26 then rptcnt:=24 ;
	ldr	r0,.Lj366
	ldrb	r0,[r0]
	cmp	r0,#26
# Rescheduled
	ldrhi	r1,.Lj366
	movhi	r0,#24
	strhib	r0,[r1]
	ldr	r0,.Lj366
	ldrb	r0,[r0]
# [256] if (rptcnt=1) or (rptcnt=24) then poke($2060028,byte(translatescantochar(activekey,0)));
	cmp	r0,#1
	beq	.Lj377
	cmp	r0,#24
	bne	.Lj379
.Lj377:
	ldr	r0,.Lj360
	ldrb	r0,[r0]
	mov	r1,#0
	bl	KEYBOARD_$$_TRANSLATESCANTOCHAR$BYTE$BYTE$$CHAR
# Rescheduled
	ldr	r1,.Lj381
	strb	r0,[r1]
.Lj379:
# [261] if pause1 then begin for i:=$200d400 to $200d400+25 do poke(i,0); end;
	ldr	r0,.Lj323
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj383
	mov	r1,#33554432
# Rescheduled
	ldr	r0,.Lj344
	orr	r1,r1,#54272
# Rescheduled
	ldr	r2,.Lj344
	str	r1,[r0]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj387:
	ldr	r2,.Lj344
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj344
	str	r1,[r2]
	ldr	r0,[r0]
	mov	r1,#0
# Rescheduled
	ldr	r2,.Lj344
	strb	r1,[r0]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj393
	cmp	r0,r1
	blt	.Lj387
.Lj383:
# [263] if peek($2060028)=ord('5') then begin dpoke ($2060028,0); siddelay:=20000; songfreq:=50; skip:=0; end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#53
	bne	.Lj396
	ldr	r0,.Lj381
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
	ldr	r1,.Lj400
	mov	r0,#50
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj401
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj402
	mov	r0,#0
	str	r0,[r1]
.Lj396:
# [264] if peek($2060028)=ord('1') then begin dpoke ($2060028,0); siddelay:=10000; songfreq:=100; skip:=0; end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#49
	bne	.Lj405
	ldr	r0,.Lj381
	bic	r1,r0,#1
	mov	r0,#0
	strh	r0,[r1]
	mov	r1,#16
# Rescheduled
	ldr	r0,.Lj324
	orr	r1,r1,#9984
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj325
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj400
	mov	r1,#100
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj401
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj402
	mov	r1,#0
	str	r1,[r0]
.Lj405:
# [265] if peek($2060028)=ord('2') then begin dpoke ($2060028,0); siddelay:=5000; songfreq:=200; skip:=0;end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#50
	bne	.Lj414
	ldr	r0,.Lj381
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
	ldr	r0,.Lj400
	mov	r1,#200
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj401
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj402
	mov	r1,#0
	str	r1,[r0]
.Lj414:
# [266] if peek($2060028)=ord('3') then begin dpoke ($2060028,0); siddelay:=6666; songfreq:=150; skip:=0; end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#51
	bne	.Lj423
	ldr	r0,.Lj381
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
	ldr	r0,.Lj400
	mov	r1,#150
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj401
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj402
	mov	r0,#0
	str	r0,[r1]
.Lj423:
# [267] if peek($2060028)=ord('4') then begin dpoke ($2060028,0); siddelay:=2500; songfreq:=400; skip:=0; end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#52
	bne	.Lj432
	ldr	r0,.Lj381
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
	ldr	r1,.Lj400
	mov	r0,#400
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj401
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj402
	mov	r0,#0
	str	r0,[r1]
.Lj432:
# [268] if peek($2060028)=ord('p') then begin dpoke ($2060028,0); pause1:=not pause1; if pause1 then sdl_pauseaudio(1) else sdl_pauseaudio(0); end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#112
	bne	.Lj441
	ldr	r0,.Lj381
	bic	r1,r0,#1
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj323
	strh	r0,[r1]
	ldrb	r0,[r2]
	cmp	r0,#0
	moveq	r0,#1
	movne	r0,#0
	ldr	r1,.Lj323
# Rescheduled
	ldr	r2,.Lj323
	strb	r0,[r1]
	ldrb	r0,[r2]
	cmp	r0,#0
	beq	.Lj446
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
	b	.Lj448
.Lj446:
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj448:
.Lj441:
# [269] if peek($2060028)=1 then begin dpoke($2060028,0); if peek($2070003)=0 then poke ($2070003,1) else poke ($2070003,0); end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#1
	bne	.Lj451
	ldr	r0,.Lj381
	bic	r0,r0,#1
	mov	r1,#0
# Rescheduled
	ldr	r2,.Lj333
	strh	r1,[r0]
	ldrb	r0,[r2]
	cmp	r0,#0
	ldreq	r1,.Lj333
	moveq	r0,#1
	streqb	r0,[r1]
	ldrne	r1,.Lj333
	movne	r0,#0
	strneb	r0,[r1]
.Lj451:
# [270] if peek($2060028)=2 then begin dpoke($2060028,0); if peek($2070004)=0 then poke ($2070004,1) else poke ($2070004,0); end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#2
	bne	.Lj461
	ldr	r0,.Lj381
	bic	r1,r0,#1
	mov	r2,#0
# Rescheduled
	ldr	r0,.Lj334
	strh	r2,[r1]
	ldrb	r0,[r0]
	cmp	r0,#0
	ldreq	r0,.Lj334
	moveq	r1,#1
	streqb	r1,[r0]
	ldrne	r1,.Lj334
	movne	r0,#0
	strneb	r0,[r1]
.Lj461:
# [271] if peek($2060028)=3 then begin dpoke($2060028,0); if peek($2070005)=0 then poke ($2070005,1) else poke ($2070005,0); end;
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#3
	bne	.Lj471
	ldr	r0,.Lj381
	bic	r1,r0,#1
	mov	r2,#0
# Rescheduled
	ldr	r0,.Lj335
	strh	r2,[r1]
	ldrb	r0,[r0]
	cmp	r0,#0
	ldreq	r1,.Lj335
	moveq	r0,#1
	streqb	r0,[r1]
	ldrne	r0,.Lj335
	movne	r1,#0
	strneb	r1,[r0]
.Lj471:
# [275] if peek($2060028)=23 then
	ldr	r0,.Lj381
	ldrb	r0,[r0]
	cmp	r0,#23
	bne	.Lj481
# [277] dpoke($2060028,0);
	ldr	r0,.Lj381
	bic	r1,r0,#1
	mov	r0,#0
# Rescheduled
# [278] if sel<ild then
	ldr	r2,.Lj483
	strh	r0,[r1]
# Rescheduled
	ldr	r0,.Lj484
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r2]
	cmp	r1,r0
	bge	.Lj486
# [280] box(920,132+32*sel,840,32,34);
	mov	r1,#34
# Rescheduled
	ldr	r0,.Lj483
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [281] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj490
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj492
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj495
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj497
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj498
.Lj492:
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj495
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj497
	str	r0,[r1]
.Lj498:
# [282] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj490
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj508
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj495
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj495
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj517
.Lj508:
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj495
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj517:
# [283] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj516
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj525
	ldr	r0,.Lj516
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj497
	mov	r0,#40
	str	r0,[r1]
.Lj525:
# [284] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj516
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r2,.Lj534
	mov	r1,#1
# Rescheduled
	ldr	r0,.Lj534
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj532
	ldr	r1,.Lj534
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj533:
	ldr	r2,.Lj534
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj516
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj534
	ldr	r1,[r1]
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj541
	ldr	r0,.Lj516
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj534
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj541:
	ldr	r0,.Lj534
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj533
.Lj532:
# [285] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj490
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj549
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj483
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj497
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj516
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj549:
# [286] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj490
# Rescheduled
	ldr	r1,.Lj556
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj558
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj483
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj497
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
# [479] end.
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj516
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj483
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj556
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj558:
# [287] sel+=1;
	ldr	r0,.Lj483
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj483
	add	r0,r0,#1
	str	r0,[r1]
# [288] box(920,132+32*sel,840,32,36);
	mov	r0,#36
# Rescheduled
	ldr	r1,.Lj483
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [289] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj490
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj571
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj495
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj497
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj577
.Lj571:
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj495
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj497
	str	r0,[r1]
.Lj577:
# [290] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj490
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj587
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj495
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj483
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj495
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj596
.Lj587:
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj495
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj596:
# [291] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj516
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj604
	ldr	r0,.Lj516
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj497
	mov	r0,#40
	str	r0,[r1]
.Lj604:
# [292] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj516
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r1,.Lj534
	mov	r0,#1
# Rescheduled
	ldr	r2,.Lj534
	str	r0,[r1]
	ldr	r0,[r2]
	cmp	r4,r0
	blt	.Lj611
	ldr	r1,.Lj534
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj612:
	ldr	r1,.Lj534
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj516
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj534
	ldr	r0,[r2]
	ldr	r1,[r1]
	sub	r0,r0,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj620
	ldr	r0,.Lj516
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj534
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj620:
	ldr	r0,.Lj534
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj612
.Lj611:
# [293] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj490
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj628
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj483
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj497
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj516
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj628:
# [294] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj490
# Rescheduled
	ldr	r1,.Lj556
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj643
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj483
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj497
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj516
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj483
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj556
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj643
.Lj486:
# [296] else if sel+selstart<ilf-1 then
	ldr	r0,.Lj483
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r1,.Lj646
	add	r2,r0,r2
	ldr	r0,[r1]
	sub	r0,r0,#1
	cmp	r2,r0
	bge	.Lj648
# [298] selstart+=1;
	ldr	r0,.Lj489
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj489
	add	r0,r0,#1
	str	r0,[r1]
# [299] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [300] box(920,132+32*sel,840,32,36);
	mov	r0,#36
# Rescheduled
	ldr	r1,.Lj483
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [301] for i:=0 to ild do
	ldr	r0,.Lj484
	ldr	r4,[r0]
# Rescheduled
	ldr	r0,.Lj344
	mov	r1,#0
# Rescheduled
	ldr	r2,.Lj344
	str	r1,[r0]
	ldr	r0,[r2]
	cmp	r4,r0
	blt	.Lj654
	ldr	r1,.Lj344
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj655:
	ldr	r2,.Lj344
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
# [303] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	ldr	r1,.Lj344
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj489
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj490
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj664
	ldr	r0,.Lj344
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj495
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj497
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj670
.Lj664:
	ldr	r0,.Lj344
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj495
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r0, lsl #3]
	cmp	r1,#0
	ldrne	r1,[r1, #-4]
	ldr	r0,.Lj497
	str	r1,[r0]
.Lj670:
# [304] if filenames[i+selstart,1]='' then  s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	ldr	r0,.Lj344
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj490
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj680
	ldr	r0,.Lj344
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj495
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj344
# Rescheduled
	ldr	r1,.Lj489
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj495
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj689
.Lj680:
	ldr	r0,.Lj344
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj495
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj689:
# [305] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj516
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj697
	ldr	r0,.Lj516
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj516
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r0,.Lj497
	mov	r1,#40
	str	r1,[r0]
.Lj697:
# [306] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj516
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
# Rescheduled
	ldr	r0,.Lj534
	mov	r1,#1
# Rescheduled
	ldr	r2,.Lj534
	str	r1,[r0]
	ldr	r0,[r2]
	cmp	r5,r0
	blt	.Lj704
	ldr	r1,.Lj534
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj705:
	ldr	r1,.Lj534
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj516
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj534
	ldr	r0,[r2]
	ldr	r1,[r1]
	sub	r0,r0,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj713
	ldr	r0,.Lj516
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj534
	ldr	r2,[r1]
	mov	r1,#32
	sub	r0,r0,#1
	strb	r1,[r0, r2]
.Lj713:
	ldr	r0,.Lj534
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj705
.Lj704:
# [307] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj344
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj490
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj721
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj344
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj497
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj516
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj721:
# [308] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj344
# Rescheduled
	ldr	r2,.Lj489
	ldr	r1,[r0]
	b	.Lj1232
.Lj318:
	.long	.Ld21
.Lj319:
	.long	U_$P$PROJECT1_$$_WORKDIR
.Lj321:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj322:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj323:
	.long	TC_$P$PROJECT1_$$_PAUSE1
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
.Lj333:
	.long	34013187
.Lj334:
	.long	34013188
.Lj335:
	.long	34013189
.Lj336:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj344:
	.long	U_$P$PROJECT1_$$_I
.Lj348:
	.long	U_$P$PROJECT1_$$_KEYBOARDSTATUS
.Lj353:
	.long	U_$P$PROJECT1_$$_CH
.Lj355:
	.long	U_$P$PROJECT1_$$_CH+2
.Lj360:
	.long	TC_$P$PROJECT1_$$_ACTIVEKEY
.Lj366:
	.long	TC_$P$PROJECT1_$$_RPTCNT
.Lj381:
	.long	33947688
.Lj393:
	.long	33608729
.Lj400:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj401:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj402:
	.long	U_$RETROMALINA_$$_SKIP
.Lj483:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj484:
	.long	U_$P$PROJECT1_$$_ILD
.Lj489:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Lj490:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj495:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj497:
	.long	U_$P$PROJECT1_$$_L
.Lj516:
	.long	U_$P$PROJECT1_$$_S
.Lj534:
	.long	U_$P$PROJECT1_$$_J
.Lj556:
	.long	.Ld18
.Lj646:
	.long	U_$P$PROJECT1_$$_ILF
.Lj1232:
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj727
# Rescheduled
	ldr	r1,.Lj728
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj730
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj731
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj732
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj733
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj731
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj728
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj730:
	ldr	r0,.Lj731
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj655
.Lj654:
.Lj648:
.Lj643:
.Lj481:
# [313] if peek($2060028)=24 then
	ldr	r0,.Lj737
	ldrb	r0,[r0]
	cmp	r0,#24
	bne	.Lj739
# [315] dpoke($2060028,0);
	ldr	r0,.Lj737
	bic	r1,r0,#1
	mov	r0,#0
# Rescheduled
# [316] if sel>0 then
	ldr	r2,.Lj741
	strh	r0,[r1]
	ldr	r0,[r2]
	cmp	r0,#0
	ble	.Lj743
# [318] box(920,132+32*sel,840,32,34);
	mov	r1,#34
# Rescheduled
	ldr	r0,.Lj741
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [319] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj727
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj749
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj732
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj755
.Lj749:
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj732
	str	r0,[r1]
.Lj755:
# [320] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj727
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj765
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj752
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj774
.Lj765:
	ldr	r0,.Lj741
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj752
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj774:
# [321] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj733
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj782
	ldr	r0,.Lj733
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r0,.Lj732
	mov	r1,#40
	str	r1,[r0]
.Lj782:
# [322] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj733
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r0,.Lj791
	mov	r2,#1
# Rescheduled
	ldr	r1,.Lj791
	str	r2,[r0]
	ldr	r0,[r1]
	cmp	r4,r0
	blt	.Lj789
	ldr	r1,.Lj791
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj790:
	ldr	r2,.Lj791
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj733
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj791
	ldr	r2,[r1]
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj798
	ldr	r0,.Lj733
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj791
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj798:
	ldr	r0,.Lj791
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj790
.Lj789:
# [323] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj741
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj727
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj806
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj741
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj732
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj733
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj806:
# [324] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj741
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj727
# Rescheduled
	ldr	r1,.Lj728
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj815
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj741
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj732
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj733
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj741
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj728
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj815:
# [325] sel-=1;
	ldr	r0,.Lj741
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj741
	sub	r0,r0,#1
	str	r0,[r1]
# [326] box(920,132+32*sel,840,32,36);
	mov	r1,#36
# Rescheduled
	ldr	r0,.Lj741
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [327] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	ldr	r0,.Lj741
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj727
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj828
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj732
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj834
.Lj828:
	ldr	r0,.Lj741
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj752
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj732
	str	r0,[r1]
.Lj834:
# [328] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj727
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj844
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj752
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj853
.Lj844:
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj752
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj853:
# [329] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj733
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj861
	ldr	r0,.Lj733
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r0,.Lj732
	mov	r1,#40
	str	r1,[r0]
.Lj861:
# [330] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj733
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r1,.Lj791
	mov	r2,#1
# Rescheduled
	ldr	r0,.Lj791
	str	r2,[r1]
	ldr	r0,[r0]
	cmp	r4,r0
	blt	.Lj868
	ldr	r1,.Lj791
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj869:
	ldr	r2,.Lj791
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj733
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj791
	ldr	r1,[r1]
	ldr	r2,[r0]
	sub	r0,r1,#1
	ldrb	r0,[r0, r2]
	cmp	r0,#95
	bne	.Lj877
	ldr	r0,.Lj733
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj791
	ldr	r1,[r1]
	mov	r2,#32
	sub	r0,r0,#1
	strb	r2,[r0, r1]
.Lj877:
	ldr	r0,.Lj791
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj869
.Lj868:
# [331] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj727
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj885
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj741
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj732
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj733
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj885:
# [332] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	ldr	r0,.Lj741
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj727
# Rescheduled
	ldr	r1,.Lj728
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj900
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj741
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj732
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj733
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj741
	str	r1,[r13]
	ldr	r0,[r0]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj728
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj900
.Lj743:
# [334] else if sel+selstart>0 then
	ldr	r0,.Lj741
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
	cmp	r0,#0
	ble	.Lj904
# [336] selstart-=1;
	ldr	r0,.Lj746
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj746
	sub	r0,r0,#1
	str	r0,[r1]
# [337] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [338] box(920,132+32*sel,840,32,36);
	mov	r0,#36
# Rescheduled
	ldr	r1,.Lj741
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r3,#32
	mov	r2,#840
	mov	r0,#920
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [339] for i:=0 to ild do
	ldr	r0,.Lj908
	ldr	r4,[r0]
# Rescheduled
	ldr	r2,.Lj731
	mov	r0,#0
# Rescheduled
	ldr	r1,.Lj731
	str	r0,[r2]
	ldr	r0,[r1]
	cmp	r4,r0
	blt	.Lj910
	ldr	r1,.Lj731
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj911:
	ldr	r2,.Lj731
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
# [341] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	ldr	r1,.Lj731
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj746
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj727
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj920
	ldr	r0,.Lj731
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj752
	add	r0,r0,r2
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
# Rescheduled
	ldr	r1,.Lj732
	sub	r0,r0,#4
	str	r0,[r1]
	b	.Lj926
.Lj920:
	ldr	r0,.Lj731
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	ldr	r1,.Lj732
	str	r0,[r1]
.Lj926:
# [342] if filenames[i+selstart,1]='' then s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	ldr	r0,.Lj731
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj727
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj936
	ldr	r0,.Lj731
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj731
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj752
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
	b	.Lj945
.Lj936:
	ldr	r0,.Lj731
# Rescheduled
	ldr	r1,.Lj746
	ldr	r2,[r0]
	ldr	r0,[r1]
	add	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj752
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r1, r2]
	bl	fpc_ansistr_assign
.Lj945:
# [343] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	ldr	r0,.Lj733
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	cmp	r0,#40
	ble	.Lj953
	ldr	r0,.Lj733
	ldr	r1,[r0]
	mov	r3,#40
	mov	r2,#1
	sub	r0,r11,#176
	bl	fpc_ansistr_copy
# Rescheduled
	ldr	r0,.Lj733
	ldr	r1,[r11, #-176]
	bl	fpc_ansistr_assign
# Rescheduled
	ldr	r1,.Lj732
	mov	r0,#40
	str	r0,[r1]
.Lj953:
# [344] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj733
	ldr	r5,[r0]
	cmp	r5,#0
	ldrne	r5,[r5, #-4]
# Rescheduled
	ldr	r2,.Lj791
	mov	r0,#1
# Rescheduled
	ldr	r1,.Lj791
	str	r0,[r2]
	ldr	r0,[r1]
	cmp	r5,r0
	blt	.Lj960
	ldr	r1,.Lj791
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj961:
	ldr	r1,.Lj791
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj733
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj791
	ldr	r2,[r2]
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj969
	ldr	r0,.Lj733
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj791
	ldr	r2,[r1]
	mov	r1,#32
	sub	r0,r0,#1
	strb	r1,[r0, r2]
.Lj969:
	ldr	r0,.Lj791
	ldr	r0,[r0]
	cmp	r5,r0
	bgt	.Lj961
.Lj960:
# [345] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	ldr	r0,.Lj731
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj727
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	cmp	r0,#0
	bne	.Lj977
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj731
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj732
	ldr	r0,[r0]
	mov	r2,r0,lsl #3
	mov	r0,#1344
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj733
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj977:
# [346] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	ldr	r0,.Lj731
# Rescheduled
	ldr	r2,.Lj746
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj727
# Rescheduled
	ldr	r1,.Lj728
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj986
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj731
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
# Rescheduled
	ldr	r0,.Lj732
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	mov	r2,#1344
	sub	r0,r2,r0,lsl #3
# Rescheduled
	ldr	r2,.Lj733
	ldr	r2,[r2]
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj731
	str	r0,[r13]
	ldr	r0,[r1]
	mov	r0,r0,lsl #5
	add	r1,r0,#132
	mov	r0,#136
	orr	r0,r0,#1536
# Rescheduled
	ldr	r2,.Lj728
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj986:
	ldr	r0,.Lj731
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj911
.Lj910:
.Lj904:
.Lj900:
.Lj739:
# [351] if peek($2060028)=43 then
	ldr	r0,.Lj737
	ldrb	r0,[r0]
	cmp	r0,#43
	bne	.Lj995
# [353] dpoke($2060028,0);
	ldr	r0,.Lj737
	bic	r1,r0,#1
	mov	r2,#0
# Rescheduled
# [354] if songs>0 then
	ldr	r0,.Lj997
	strh	r2,[r1]
	ldrh	r0,[r0]
	cmp	r0,#0
	bls	.Lj999
# [356] if song<songs then
	ldr	r0,.Lj1000
# Rescheduled
	ldr	r1,.Lj997
	ldrh	r2,[r0]
	ldrh	r0,[r1]
	cmp	r2,r0
	bcs	.Lj1003
# [358] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# Rescheduled
# [359] for i:=1 to 200000 do;
	ldr	r0,.Lj731
	mov	r1,#1
# Rescheduled
	ldr	r2,.Lj731
	str	r1,[r0]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1006:
	ldr	r2,.Lj731
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj731
	str	r0,[r2]
	ldr	r0,[r1]
	mov	r1,#196608
	orr	r1,r1,#3392
	cmp	r0,r1
	blt	.Lj1006
# [360] song+=1;
	ldr	r0,.Lj1000
	ldrh	r0,[r0]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj1000
	uxth	r1,r0
# Rescheduled
# [361] jsr6502(song,init);
	ldr	r0,.Lj1013
	strh	r1,[r2]
	ldrh	r1,[r0]
# Rescheduled
	ldr	r0,.Lj1000
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [362] sdl_pauseaudio(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj1003:
.Lj999:
.Lj995:
# [367] if peek($2060028)=45 then
	ldr	r0,.Lj737
	ldrb	r0,[r0]
	cmp	r0,#45
	bne	.Lj1017
# [369] dpoke($2060028,0);
	ldr	r0,.Lj737
	bic	r0,r0,#1
	mov	r1,#0
# Rescheduled
# [370] if songs>0 then
	ldr	r2,.Lj997
	strh	r1,[r0]
	ldrh	r0,[r2]
	cmp	r0,#0
	bls	.Lj1021
# [372] if song>0 then
	ldr	r0,.Lj1000
	ldrh	r0,[r0]
	cmp	r0,#0
	bls	.Lj1024
# [374] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# Rescheduled
# [375] for i:=1 to 200000 do;
	ldr	r1,.Lj731
	mov	r0,#1
# Rescheduled
	ldr	r2,.Lj731
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1027:
	ldr	r2,.Lj731
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj731
	str	r1,[r2]
	ldr	r0,[r0]
	mov	r1,#196608
	orr	r1,r1,#3392
	cmp	r0,r1
	blt	.Lj1027
# [376] song-=1;
	ldr	r0,.Lj1000
	ldrh	r0,[r0]
	sub	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj1000
# Peephole UXTHStrh2Strh done
# Rescheduled
# [377] jsr6502(song,init);
	ldr	r1,.Lj1013
	strh	r0,[r2]
# Rescheduled
# Rescheduled
	ldr	r0,.Lj1000
	ldrh	r1,[r1]
	ldrh	r0,[r0]
	bl	UNIT6502_$$_JSR6502$WORD$LONGINT
# [378] sdl_pauseaudio(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj1024:
.Lj1021:
.Lj1017:
# [383] if peek($2060028)=13 then
	ldr	r0,.Lj737
	ldrb	r0,[r0]
	cmp	r0,#13
	bne	.Lj1038
# [385] dpoke($2060028,0);
	ldr	r0,.Lj737
	bic	r0,r0,#1
	mov	r1,#0
# Rescheduled
# [386] if filenames[sel+selstart,1]='[DIR]' then
	ldr	r2,.Lj741
	strh	r1,[r0]
# Rescheduled
	ldr	r0,.Lj746
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj727
# Rescheduled
	ldr	r1,.Lj728
# Peephole FoldShiftLdrStr done
	ldr	r0,[r2, r0, lsl #3]
	bl	fpc_ansistr_compare_equal
	cmp	r0,#0
	bne	.Lj1045
# [388] dirlist(currentdir2+filenames[sel+selstart,0]+'\');
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1046
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj741
	str	r0,[r11, #-188]
# Rescheduled
	ldr	r0,.Lj746
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r1,[r1, r0, lsl #3]
# Rescheduled
	ldr	r0,.Lj1050
	str	r1,[r11, #-184]
	str	r0,[r11, #-180]
	sub	r1,r11,#188
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#176
	bl	fpc_ansistr_concat_multi
	ldr	r0,[r11, #-176]
	bl	P$PROJECT1_$$_DIRLIST$ANSISTRING
	b	.Lj1051
.Lj1045:
# [395] for i:=$200d400 to $200d420 do poke(i,0);
	mov	r0,#33554432
# Rescheduled
	ldr	r1,.Lj731
	orr	r0,r0,#54272
# Rescheduled
	ldr	r2,.Lj731
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1054:
	ldr	r2,.Lj731
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj731
	str	r1,[r2]
	ldr	r1,[r0]
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj731
	strb	r0,[r1]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj1060
	cmp	r0,r1
	blt	.Lj1054
# [396] i:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj731
	str	r0,[r1]
	.balign 4
.Lj1062:
# [397] repeat until lpeek($2060000)>(i+4);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj731
# Rescheduled
	ldr	r2,[r2]
	mov	r1,#0
	add	r2,r2,#4
# Peephole FoldShiftProcess done
	cmp	r1,r2,asr #31
	bgt	.Lj1064
	blt	.Lj1062
	cmp	r0,r2
	bls	.Lj1062
.Lj1064:
# [398] if sfh>=0 then fileclose(sfh);
	ldr	r0,.Lj1068
	ldr	r0,[r0]
	cmp	r0,#0
	ldrge	r0,.Lj1068
	ldrge	r0,[r0]
	blge	SYSUTILS_$$_FILECLOSE$LONGINT
# Rescheduled
# [399] sfh:=-1;
	ldr	r0,.Lj1068
	mvn	r1,#0
	str	r1,[r0]
# Rescheduled
# [402] pause1:=true;
	ldr	r1,.Lj1073
	mov	r0,#1
	strb	r0,[r1]
# Peephole MovStrMov done
# [403] sdl_pauseaudio(1);
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [405] i:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj731
	str	r0,[r1]
	.balign 4
.Lj1075:
# [406] repeat until lpeek($2060000)>i+4;
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj731
# Rescheduled
	ldr	r2,[r2]
	mov	r1,#0
	add	r2,r2,#4
# Peephole FoldShiftProcess done
	cmp	r1,r2,asr #31
	bgt	.Lj1077
	blt	.Lj1075
	cmp	r0,r2
	bls	.Lj1075
.Lj1077:
# Rescheduled
# [408] for i:=0 to $2F do siddata[i]:=0;
	ldr	r1,.Lj731
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj731
	str	r0,[r1]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1083:
	ldr	r2,.Lj731
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj731
	str	r1,[r2]
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1088
	mov	r3,#0
# Rescheduled
	ldr	r2,.Lj731
# Peephole FoldShiftLdrStr done
	str	r3,[r1, r0, lsl #2]
	ldr	r0,[r2]
	cmp	r0,#47
	blt	.Lj1083
# Rescheduled
# [409] for i:=$50 to $7F do siddata[i]:=0;
	ldr	r0,.Lj731
	mov	r1,#80
# Rescheduled
	ldr	r2,.Lj731
	str	r1,[r0]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj1092:
	ldr	r2,.Lj731
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj731
	str	r0,[r2]
	ldr	r0,[r1]
	mov	r1,r0,lsl #2
# Rescheduled
	ldr	r3,.Lj1088
	mov	r0,#0
# Rescheduled
	ldr	r2,.Lj731
	str	r0,[r1, r3]
	ldr	r0,[r2]
	cmp	r0,#127
	blt	.Lj1092
# [410] siddata[$0e]:=$7FFFF8;
	mvn	r0,#-1073741817
# Rescheduled
	ldr	r1,.Lj1099
	bic	r0,r0,#1065353216
	str	r0,[r1]
# [411] siddata[$1e]:=$7FFFF8;
	mvn	r0,#-1073741817
# Rescheduled
	ldr	r1,.Lj1100
	bic	r0,r0,#1065353216
	str	r0,[r1]
# [412] siddata[$2e]:=$7FFFF8;
	mvn	r0,#-1073741817
# Rescheduled
	ldr	r1,.Lj1101
	bic	r0,r0,#1065353216
	str	r0,[r1]
# Rescheduled
# [414] songtime:=0;
	ldr	r0,.Lj1102
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj1103
	mov	r1,#0
# Rescheduled
# [417] fn:= currentdir2+filenames[sel+selstart,0];
	ldr	r2,.Lj741
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj746
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Rescheduled
	ldr	r3,.Lj1046
# Peephole FoldShiftLdrStr done
	ldr	r2,[r1, r0, lsl #3]
# Rescheduled
	ldr	r0,.Lj1108
	ldr	r1,[r3]
	mov	r3,#0
	bl	fpc_ansistr_concat
# [418] sfh:=fileopen(fn,$40);
	ldr	r0,.Lj1108
	ldr	r0,[r0]
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
# Rescheduled
	ldr	r2,.Lj1068
# Rescheduled
# [419] s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4);
	ldr	r1,.Lj741
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj746
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r1,.Lj752
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #3]
	b	.Lj1233
.Lj727:
	.long	U_$P$PROJECT1_$$_FILENAMES+4
.Lj728:
	.long	.Ld18
.Lj731:
	.long	U_$P$PROJECT1_$$_I
.Lj732:
	.long	U_$P$PROJECT1_$$_L
.Lj733:
	.long	U_$P$PROJECT1_$$_S
.Lj737:
	.long	33947688
.Lj741:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj746:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Lj752:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj791:
	.long	U_$P$PROJECT1_$$_J
.Lj908:
	.long	U_$P$PROJECT1_$$_ILD
.Lj997:
	.long	TC_$P$PROJECT1_$$_SONGS
.Lj1000:
	.long	TC_$P$PROJECT1_$$_SONG
.Lj1013:
	.long	U_$P$PROJECT1_$$_INIT
.Lj1046:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj1050:
	.long	.Ld16
.Lj1060:
	.long	33608736
.Lj1068:
	.long	U_$RETROMALINA_$$_SFH
.Lj1073:
	.long	TC_$P$PROJECT1_$$_PAUSE1
.Lj1088:
	.long	U_$RETROMALINA_$$_SIDDATA
.Lj1099:
	.long	U_$RETROMALINA_$$_SIDDATA+56
.Lj1100:
	.long	U_$RETROMALINA_$$_SIDDATA+120
.Lj1101:
	.long	U_$RETROMALINA_$$_SIDDATA+184
.Lj1102:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj1103:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj1108:
	.long	U_$P$PROJECT1_$$_FN
.Lj1233:
	cmp	r0,#0
	ldrne	r0,[r0, #-4]
	sub	r3,r0,#4
# Rescheduled
	ldr	r0,.Lj1115
# Rescheduled
	ldr	r2,.Lj1116
	ldr	r1,[r0]
	ldr	r0,[r2]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj1117
	mov	r1,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj1118
	ldr	r1,[r1, r2]
	mov	r2,#1
	bl	fpc_ansistr_copy
# [420] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	ldr	r0,.Lj1118
	ldr	r4,[r0]
	cmp	r4,#0
	ldrne	r4,[r4, #-4]
# Rescheduled
	ldr	r1,.Lj1124
	mov	r0,#1
# Rescheduled
	ldr	r2,.Lj1124
	str	r0,[r1]
	ldr	r0,[r2]
	cmp	r4,r0
	blt	.Lj1122
	ldr	r1,.Lj1124
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj1123:
	ldr	r1,.Lj1124
	ldr	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj1118
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj1124
	ldr	r2,[r2]
	ldr	r1,[r0]
	sub	r0,r2,#1
	ldrb	r0,[r0, r1]
	cmp	r0,#95
	bne	.Lj1131
	ldr	r0,.Lj1118
	bl	fpc_ansistr_unique
# Rescheduled
	ldr	r1,.Lj1124
	ldr	r2,[r1]
	mov	r1,#32
	sub	r0,r0,#1
	strb	r1,[r0, r2]
.Lj1131:
	ldr	r0,.Lj1124
	ldr	r0,[r0]
	cmp	r4,r0
	bgt	.Lj1123
.Lj1122:
# [421] siddelay:=20000;
	mov	r0,#32
# Rescheduled
	ldr	r1,.Lj1135
	orr	r0,r0,#19968
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj1136
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [422] filetype:=0;
	ldr	r2,.Lj1137
	mov	r0,#0
# Rescheduled
# [423] fileread(sfh,buf,4);
	ldr	r1,.Lj1138
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj1139
	ldr	r0,[r0]
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	ldr	r0,.Lj1138
# [424] if (buf[0]=ord('S')) and (buf[1]=ord('D')) and (buf[2]=ord('M')) and (buf[3]=ord('P')) then
	ldrb	r1,[r0]
	cmp	r1,#83
	bne	.Lj1142
	ldrb	r1,[r0, #1]
	cmp	r1,#68
	bne	.Lj1142
	ldrb	r1,[r0, #2]
	cmp	r1,#77
	bne	.Lj1142
	ldrb	r0,[r0, #3]
	cmp	r0,#80
	bne	.Lj1142
# [426] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [427] outtextxyz(18,132,'type: SDMP',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1146
	mov	r3,#188
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# Rescheduled
# [428] songs:=0;
	ldr	r0,.Lj1147
	mov	r2,#0
# Rescheduled
# [429] fileread(sfh,buf,4);
	ldr	r1,.Lj1138
	strh	r2,[r0]
# Rescheduled
	ldr	r0,.Lj1139
	ldr	r0,[r0]
	mov	r2,#4
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [430] siddelay:=1000000 div buf[0];
	ldr	r0,.Lj1138
	ldrb	r0,[r0]
	mov	r1,#999424
	orr	r1,r1,#576
	bl	fpc_div_longint
# Rescheduled
	ldr	r1,.Lj1135
	mov	r3,r0,asr #31
# Rescheduled
	ldr	r2,.Lj1136
	str	r0,[r1]
	str	r3,[r2]
# [431] outtextxyz(18,196,'speed: '+inttostr(buf[0])+' Hz',188,2,2);
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1153
# Rescheduled
	ldr	r1,.Lj1138
	str	r0,[r11, #-188]
	ldrb	r1,[r1]
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r1,[r11, #-192]
# Rescheduled
	ldr	r0,.Lj1155
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
# [432] atitle:='                                ';
	ldr	r0,.Lj1156
# Rescheduled
	ldr	r2,.Lj1157
	mov	r1,#32
	bl	fpc_shortstr_to_shortstr
# Rescheduled
# Rescheduled
# [433] fileread(sfh,atitle[1],16);
	ldr	r0,.Lj1139
	ldr	r1,.Lj1158
	ldr	r0,[r0]
	mov	r2,#16
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# Rescheduled
# Rescheduled
# [434] fileread(sfh,buf,1);
	ldr	r0,.Lj1139
	ldr	r1,.Lj1138
	ldr	r0,[r0]
	mov	r2,#1
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [435] outtextxyz(18,164,'atitle: '+atitle,188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj1156
	mov	r2,#0
	sub	r0,r11,#196
	bl	fpc_shortstr_to_ansistr
	ldr	r2,[r11, #-196]
# Rescheduled
	ldr	r1,.Lj1163
	mov	r3,#0
	sub	r0,r11,#176
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-176]
	mov	r3,#188
	mov	r1,#164
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [436] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [437] outtextxyz(18,912,'SIDCog DMP file, '+inttostr(songfreq)+' Hz',250,2,2);
	sub	r0,r11,#196
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1164
# Rescheduled
	ldr	r1,.Lj1165
	str	r0,[r11, #-188]
# Rescheduled
	ldr	r0,.Lj1166
	ldr	r2,[r1]
	ldr	r1,[r0]
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r1,[r11, #-192]
# Rescheduled
	ldr	r0,.Lj1155
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
	b	.Lj1168
.Lj1142:
	ldr	r0,.Lj1138
# [439] else if (buf[0]=ord('P')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	ldrb	r1,[r0]
	cmp	r1,#80
	bne	.Lj1171
	ldrb	r1,[r0, #1]
	cmp	r1,#83
	bne	.Lj1171
	ldrb	r1,[r0, #2]
	cmp	r1,#73
	bne	.Lj1171
	ldrb	r0,[r0, #3]
	cmp	r0,#68
	bne	.Lj1171
# [441] reset6502;
	bl	UNIT6502_$$_RESET6502
# [442] sidopen(sfh);
	ldr	r0,.Lj1139
	bl	P$PROJECT1_$$_SIDOPEN$LONGINT
# [443] i:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj1176
	str	r0,[r1]
	.balign 4
.Lj1177:
# [444] repeat until lpeek($2060000)>(i+4);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bic	r0,r0,#3
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1176
# Rescheduled
	ldr	r2,[r2]
	mov	r1,#0
	add	r2,r2,#4
# Peephole FoldShiftProcess done
	cmp	r1,r2,asr #31
	bgt	.Lj1179
	blt	.Lj1177
	cmp	r0,r2
	bls	.Lj1177
.Lj1179:
# [445] if cia>0 then siddelay:={985248}1000000 div (50*round(19652/cia));
	ldr	r0,.Lj1183
	ldr	r0,[r0]
	cmp	r0,#0
	ble	.Lj1185
	ldr	r0,.Lj1183
	vldr	s0,[r0]
	vcvt.f64.s32	d1,s0
	vldr	d0,.Lj1186
	vdiv.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	mov	r2,r1
	mov	r12,#50
	mov	r1,#0
	b	.Lj1234
.Lj1115:
	.long	TC_$P$PROJECT1_$$_SEL
.Lj1116:
	.long	TC_$P$PROJECT1_$$_SELSTART
.Lj1117:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj1118:
	.long	U_$P$PROJECT1_$$_S
.Lj1124:
	.long	U_$P$PROJECT1_$$_J
.Lj1135:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj1136:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj1137:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj1138:
	.long	U_$P$PROJECT1_$$_BUF
.Lj1139:
	.long	U_$RETROMALINA_$$_SFH
.Lj1146:
	.long	.Ld22
.Lj1147:
	.long	TC_$P$PROJECT1_$$_SONGS
.Lj1153:
	.long	.Ld10
.Lj1155:
	.long	.Ld23
.Lj1156:
	.long	U_$P$PROJECT1_$$_ATITLE
.Lj1157:
	.long	_$PROJECT1$_Ld1
.Lj1158:
	.long	U_$P$PROJECT1_$$_ATITLE+1
.Lj1163:
	.long	.Ld24
.Lj1164:
	.long	.Ld25
.Lj1165:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj1166:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj1176:
	.long	U_$P$PROJECT1_$$_I
.Lj1183:
	.long	U_$P$PROJECT1_$$_CIA
.Lj1186:
# value: 0d+1.9652000000000000E+004
	.byte	0,0,0,0,0,49,211,64
.Lj1234:
	mul	r3,r0,r1
	umull	r0,r1,r12,r0
	mla	r3,r12,r2,r3
	add	r1,r3,r1
	mov	r3,#0
	mov	r2,#999424
	orr	r2,r2,#576
	bl	fpc_div_int64
# Rescheduled
	ldr	r3,.Lj1188
# Rescheduled
	ldr	r2,.Lj1189
	str	r0,[r3]
	str	r1,[r2]
.Lj1185:
# Rescheduled
# [446] filetype:=1;
	ldr	r1,.Lj1190
	mov	r0,#1
	str	r0,[r1]
# [447] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [448] outtextxyz(18,912,'PSID file, '+inttostr(1000000 div siddelay)+' Hz',250,2,2);
	sub	r0,r11,#196
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1191
	str	r0,[r11, #-188]
	mov	r3,#0
	mov	r2,#999424
# Rescheduled
	ldr	r0,.Lj1189
	orr	r2,r2,#576
# Rescheduled
	ldr	r12,.Lj1188
	ldr	r1,[r0]
	ldr	r0,[r12]
	bl	fpc_div_int64
	mov	r2,r1
	mov	r1,r0
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r1,[r11, #-192]
# Rescheduled
	ldr	r0,.Lj1194
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
# [449] fileclose(sfh);
	ldr	r0,.Lj1195
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	b	.Lj1196
.Lj1171:
	ldr	r0,.Lj1197
# [451] else if (buf[0]=ord('R')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	ldrb	r1,[r0]
	cmp	r1,#82
	bne	.Lj1199
	ldrb	r1,[r0, #1]
	cmp	r1,#83
	bne	.Lj1199
	ldrb	r1,[r0, #2]
	cmp	r1,#73
	bne	.Lj1199
	ldrb	r0,[r0, #3]
	cmp	r0,#68
	bne	.Lj1199
# Rescheduled
# [453] filetype:=2;
	ldr	r1,.Lj1190
	mov	r0,#2
	str	r0,[r1]
# [454] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [455] outtextxyz(18,132,'type: RSID, not yet supported',44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1204
	mov	r3,#44
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [456] fileclose(sfh);
	ldr	r0,.Lj1195
	ldr	r0,[r0]
	bl	SYSUTILS_$$_FILECLOSE$LONGINT
	b	.Lj1206
.Lj1199:
# Rescheduled
# Rescheduled
# [460] fileread(sfh,buf,21);
	ldr	r0,.Lj1195
	ldr	r1,.Lj1197
	ldr	r0,[r0]
	mov	r2,#21
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
# [461] box(18,132,800,600,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#600
	mov	r2,#800
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [462] outtextxyz(18,132,'type: unknown, 50 Hz SDMP assumed',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1209
	mov	r3,#188
	mov	r1,#132
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [463] box(18,912,800,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#800
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [464] outtextxyz(18,912,'SIDCog DMP file, 50 Hz',250,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj1210
	mov	r3,#250
	mov	r1,#912
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1206:
.Lj1196:
.Lj1168:
# [466] songname:=s;
	ldr	r1,.Lj1211
# Rescheduled
	ldr	r0,.Lj1212
	ldr	r1,[r1]
	bl	fpc_ansistr_assign
# Rescheduled
# [467] songtime:=0;
	ldr	r0,.Lj1213
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj1214
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [468] timer1:=-1;
	ldr	r1,.Lj1215
	mvn	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r2,.Lj1216
	mvn	r1,#0
# Rescheduled
# [469] if filetype<>2 then begin pause1:=false; sdl_pauseaudio(0); end;
	ldr	r0,.Lj1190
	str	r1,[r2]
	ldr	r0,[r0]
	cmp	r0,#2
	beq	.Lj1219
# Rescheduled
	ldr	r0,.Lj1220
	mov	r1,#0
	strb	r1,[r0]
	mov	r0,#0
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
.Lj1219:
.Lj1051:
.Lj1038:
# [472] until (peek($2060028)=27) ;
	ldr	r0,.Lj1221
	ldrb	r0,[r0]
	cmp	r0,#27
	bne	.Lj350
# [473] sdl_pauseaudio(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SDL_PAUSEAUDIO$LONGINT
# [475] if sfh>0 then fileclose(sfh);
	ldr	r0,.Lj1195
	ldr	r0,[r0]
	cmp	r0,#0
	ldrgt	r0,.Lj1195
	ldrgt	r0,[r0]
	blgt	SYSUTILS_$$_FILECLOSE$LONGINT
# [476] setcurrentdir(workdir);
	ldr	r0,.Lj1226
	ldr	r0,[r0]
	bl	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
# [477] stopmachine;
	bl	RETROMALINA_$$_STOPMACHINE
# [478] systemrestart(0);
	ldr	r0,.Lj1227
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj1229
# Rescheduled
	ldr	r1,.Lj1227
# Rescheduled
	ldr	r1,[r1]
	mov	r0,#0
	blx	r1
	b	.Lj1231
.Lj1229:
	mov	r0,#120
.Lj1231:
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
.Lj1188:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj1189:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj1190:
	.long	U_$RETROMALINA_$$_FILETYPE
.Lj1191:
	.long	.Ld26
.Lj1194:
	.long	.Ld23
.Lj1195:
	.long	U_$RETROMALINA_$$_SFH
.Lj1197:
	.long	U_$P$PROJECT1_$$_BUF
.Lj1204:
	.long	.Ld27
.Lj1209:
	.long	.Ld28
.Lj1210:
	.long	.Ld29
.Lj1211:
	.long	U_$P$PROJECT1_$$_S
.Lj1212:
	.long	U_$UMAIN_$$_SONGNAME
.Lj1213:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj1214:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj1215:
	.long	TC_$RETROMALINA_$$_TIMER1
.Lj1216:
	.long	TC_$RETROMALINA_$$_TIMER1+4
.Lj1220:
	.long	TC_$P$PROJECT1_$$_PAUSE1
.Lj1221:
	.long	33947688
.Lj1226:
	.long	U_$P$PROJECT1_$$_WORKDIR
.Lj1227:
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
	ldr	r0,.Lj1235
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1236
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1237
	bl	fpc_ansistr_decr_ref
	ldr	r1,.Lj1238
# Rescheduled
	ldr	r0,.Lj1239
	bl	fpc_finalize
	ldr	r1,.Lj1240
# Rescheduled
	ldr	r0,.Lj1241
	bl	fpc_finalize
	ldr	r0,.Lj1242
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1243
	bl	fpc_ansistr_decr_ref
	ldmfd	r13!,{r15}
.Lj1235:
	.long	U_$P$PROJECT1_$$_S
.Lj1236:
	.long	U_$P$PROJECT1_$$_CURRENTDIR
.Lj1237:
	.long	U_$P$PROJECT1_$$_CURRENTDIR2
.Lj1238:
	.long	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
.Lj1239:
	.long	U_$P$PROJECT1_$$_SR
.Lj1240:
	.long	RTTI_$P$PROJECT1_$$_def00000003
.Lj1241:
	.long	U_$P$PROJECT1_$$_FILENAMES
.Lj1242:
	.long	U_$P$PROJECT1_$$_FN
.Lj1243:
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
# [481] 
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

.section .data.n_TC_$P$PROJECT1_$$_PAUSE1
TC_$P$PROJECT1_$$_PAUSE1:
	.byte	1
.Le19:
	.size	TC_$P$PROJECT1_$$_PAUSE1, .Le19 - TC_$P$PROJECT1_$$_PAUSE1

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

