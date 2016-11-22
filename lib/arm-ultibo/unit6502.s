	.file "unit6502.pas"
# Begin asmlist al_procedures

.section .text.n_unit6502_$$_read6502$longint$$byte
	.balign 4
.globl	UNIT6502_$$_READ6502$LONGINT$$BYTE
UNIT6502_$$_READ6502$LONGINT$$BYTE:
# Var address located in register r0
# Var $result located in register r0
# [unit6502.pas]
# [252] begin
# [253] address:=address and $FFFF;
	uxth	r0,r0
# Var address located in register r0
# [254] result:=peek($2000000+address); //ram[address and $FFFF];
	sub	r0,r0,#-33554432
	ldrb	r0,[r0]
# Var $result located in register r0
# [255] end;
	bx	r14
.Le0:
	.size	UNIT6502_$$_READ6502$LONGINT$$BYTE, .Le0 - UNIT6502_$$_READ6502$LONGINT$$BYTE

.section .text.n_unit6502_$$_write6502$longint$byte
	.balign 4
.globl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
UNIT6502_$$_WRITE6502$LONGINT$BYTE:
# Var address located in register r0
# Var value located in register r1
# [259] begin
# [260] address:=address and $FFFF;
	uxth	r0,r0
# Var address located in register r0
# [261] poke($2000000+address,value); //ram[address and $FFFF]:=value;
	sub	r0,r0,#-33554432
# Var value located in register r1
	strb	r1,[r0]
# [262] end;
	bx	r14
.Le1:
	.size	UNIT6502_$$_WRITE6502$LONGINT$BYTE, .Le1 - UNIT6502_$$_WRITE6502$LONGINT$BYTE

.section .text.n_unit6502_$$_push32$longword
	.balign 4
UNIT6502_$$_PUSH32$LONGWORD:
# [268] begin
	stmfd	r13!,{r4,r14}
# Var pushval located in register r4
	mov	r4,r0
# Peephole LsrAnd2Lsr done
# Peephole LsrAnd2Lsr done
# Rescheduled
# Rescheduled
# [269] write6502(BASE_STACK+sp,(pushval shr 24) and $FF);
	ldr	r0,.Lj9
	mov	r1,r4,lsr #24
	ldrb	r0,[r0]
	add	r0,r0,#256
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [270] write6502(BASE_STACK+((sp-1) and $FF),(pushval shr 16) and $FF);
	ldr	r0,.Lj9
	ldrb	r0,[r0]
	sub	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
	mov	r1,r4,lsr #16
# Peephole AndAnd2And done
	and	r1,r1,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [271] write6502(BASE_STACK+((sp-2) and $FF),(pushval shr 8) and $FF);
	ldr	r0,.Lj9
	ldrb	r0,[r0]
	sub	r0,r0,#2
	and	r0,r0,#255
	add	r0,r0,#256
	mov	r1,r4,lsr #8
# Peephole AndAnd2And done
	and	r1,r1,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [272] write6502(BASE_STACK+((sp-3) and $FF),pushval and $FF);
	ldr	r0,.Lj9
	ldrb	r0,[r0]
	sub	r0,r0,#3
	and	r0,r0,#255
	add	r0,r0,#256
# Peephole AndAnd2And done
	and	r1,r4,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [273] sp-=4;
	ldr	r0,.Lj9
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj9
	sub	r0,r0,#4
	strb	r0,[r1]
# [274] end;
	ldmfd	r13!,{r4,r15}
.Lj9:
	.long	U_$UNIT6502_$$_SP
.Le2:
	.size	UNIT6502_$$_PUSH32$LONGWORD, .Le2 - UNIT6502_$$_PUSH32$LONGWORD

.section .text.n_unit6502_$$_push16$word
	.balign 4
UNIT6502_$$_PUSH16$WORD:
# [278] begin
	stmfd	r13!,{r4,r14}
# Var pushval located in register r4
	mov	r4,r0
# [279] write6502(BASE_STACK+sp,(pushval shr 8) and $FF);
	mov	r0,r4,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
# Rescheduled
	ldr	r0,.Lj17
	ldrb	r0,[r0]
	add	r0,r0,#256
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [280] write6502(BASE_STACK+((sp-1) and $FF),pushval and $FF);
	ldr	r0,.Lj17
	ldrb	r0,[r0]
	sub	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
# Peephole AndAnd2And done
	and	r1,r4,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [281] sp-=2;
	ldr	r0,.Lj17
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj17
	sub	r0,r0,#2
	strb	r0,[r1]
# [282] end;
	ldmfd	r13!,{r4,r15}
.Lj17:
	.long	U_$UNIT6502_$$_SP
.Le3:
	.size	UNIT6502_$$_PUSH16$WORD, .Le3 - UNIT6502_$$_PUSH16$WORD

.section .text.n_unit6502_$$_push8$word
	.balign 4
UNIT6502_$$_PUSH8$WORD:
# [286] begin
	stmfd	r13!,{r14}
# Var pushval located in register r1
	mov	r1,r0
# [287] write6502(BASE_STACK+sp,pushval);
	ldr	r0,.Lj23
	ldrb	r0,[r0]
	add	r0,r0,#256
	and	r1,r1,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [288] dec(sp);
	ldr	r1,.Lj23
	ldrb	r0,[r1]
	sub	r0,r0,#1
# Peephole AndStrb2Strb done
	strb	r0,[r1]
# [289] end;
	ldmfd	r13!,{r15}
.Lj23:
	.long	U_$UNIT6502_$$_SP
.Le4:
	.size	UNIT6502_$$_PUSH8$WORD, .Le4 - UNIT6502_$$_PUSH8$WORD

.section .text.n_unit6502_$$_pull32$$longword
	.balign 4
UNIT6502_$$_PULL32$$LONGWORD:
# Var $result located in register r0
# Var temp32 located in register r0
# [295] begin
# Rescheduled
# [296] temp32:=read6502(BASE_STACK + ((sp + 4) and $FF));
	ldr	r0,.Lj27
	stmfd	r13!,{r4,r14}
	ldrb	r0,[r0]
	add	r0,r0,#4
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var temp32 located in register r0
# Rescheduled
# [297] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 3) and $FF));
	ldr	r1,.Lj27
	mov	r4,r0,lsl #8
	ldrb	r0,[r1]
	add	r0,r0,#3
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r0,r0,r4
# Var temp32 located in register r0
# Rescheduled
# [298] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 2) and $FF));
	ldr	r1,.Lj27
	mov	r4,r0,lsl #8
	ldrb	r0,[r1]
	add	r0,r0,#2
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r0,r0,r4
# Var temp32 located in register r0
# Rescheduled
# [299] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 1) and $FF));
	ldr	r1,.Lj27
	mov	r4,r0,lsl #8
	ldrb	r0,[r1]
	add	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var temp32 located in register r0
# Var $result located in register r0
# Var temp32 located in register r0
# Rescheduled
# Rescheduled
# [301] sp+=4;
	ldr	r1,.Lj27
	add	r0,r0,r4
	ldrb	r1,[r1]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r2,.Lj27
	add	r1,r1,#4
	strb	r1,[r2]
# [302] end;
	ldmfd	r13!,{r4,r15}
.Lj27:
	.long	U_$UNIT6502_$$_SP
.Le5:
	.size	UNIT6502_$$_PULL32$$LONGWORD, .Le5 - UNIT6502_$$_PULL32$$LONGWORD

.section .text.n_unit6502_$$_pull16$$word
	.balign 4
UNIT6502_$$_PULL16$$WORD:
# Var $result located in register r0
# Var temp16 located in register r0
# [308] begin
# Rescheduled
# [309] temp16:=read6502(BASE_STACK + ((sp + 2) and $FF));
	ldr	r0,.Lj35
	stmfd	r13!,{r4,r14}
	ldrb	r0,[r0]
	add	r0,r0,#2
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var temp16 located in register r0
# Rescheduled
# [310] temp16:=(temp16 shl 8) + read6502(BASE_STACK + ((sp + 1) and $FF));
	ldr	r1,.Lj35
	mov	r4,r0,lsl #8
	ldrb	r0,[r1]
	add	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r0,r0,r4
# Var temp16 located in register r0
# Var $result located in register r0
# Var temp16 located in register r0
# Rescheduled
# Rescheduled
# [312] sp+=2;
	ldr	r1,.Lj35
	uxth	r0,r0
	ldrb	r1,[r1]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r2,.Lj35
	add	r1,r1,#2
	strb	r1,[r2]
# [313] end;
	ldmfd	r13!,{r4,r15}
.Lj35:
	.long	U_$UNIT6502_$$_SP
.Le6:
	.size	UNIT6502_$$_PULL16$$WORD, .Le6 - UNIT6502_$$_PULL16$$WORD

.section .text.n_unit6502_$$_pull8$$byte
	.balign 4
UNIT6502_$$_PULL8$$BYTE:
# Var $result located in register r0
# [317] begin
# Rescheduled
# [318] inc(sp);
	ldr	r2,.Lj41
	stmfd	r13!,{r14}
	ldrb	r0,[r2]
	add	r1,r0,#1
# Peephole AndStrb2Strb done
# Rescheduled
# [319] result:=(read6502(BASE_STACK + sp));
	ldr	r0,.Lj41
	strb	r1,[r2]
	ldrb	r0,[r0]
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var $result located in register r0
# [320] end;
	ldmfd	r13!,{r15}
.Lj41:
	.long	U_$UNIT6502_$$_SP
.Le7:
	.size	UNIT6502_$$_PULL8$$BYTE, .Le7 - UNIT6502_$$_PULL8$$BYTE

.section .text.n_unit6502_$$_getvalue$$word
	.balign 4
UNIT6502_$$_GETVALUE$$WORD:
# Var $result located in register r4
# Var ea2 located in register r0
# [326] begin
# Rescheduled
# [327] ea2:=ea;
	ldr	r0,.Lj45
	stmfd	r13!,{r4,r14}
# Var ea2 located in register r0
# Rescheduled
# Rescheduled
# [328] if (addrtable[opcode] = @acc) then
	ldr	r1,.Lj46
	ldrh	r0,[r0]
	ldrb	r2,[r1]
# Rescheduled
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r3,.Lj48
	ldr	r1,.Lj47
	ldr	r2,[r3, r2, lsl #2]
	cmp	r2,r1
# [329] result:=a
	ldreq	r1,.Lj51
	ldreqb	r4,[r1]
# Peephole LdrMov2Ldr removed superfluous mov
	beq	.Lj52
# [331] result:=read6502(ea2);
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
.Lj52:
# [332] end;
	mov	r0,r4
	ldmfd	r13!,{r4,r15}
.Lj45:
	.long	U_$UNIT6502_$$_EA
.Lj46:
	.long	U_$UNIT6502_$$_OPCODE
.Lj48:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj47:
	.long	UNIT6502_$$_ACC
.Lj51:
	.long	U_$UNIT6502_$$_A
.Le8:
	.size	UNIT6502_$$_GETVALUE$$WORD, .Le8 - UNIT6502_$$_GETVALUE$$WORD

.section .text.n_unit6502_$$_getvalue16$$word
	.balign 4
UNIT6502_$$_GETVALUE16$$WORD:
# Var $result located in register r0
# Var ea2 located in register r4
# [338] begin
# Rescheduled
# [339] ea2:=ea;
	ldr	r0,.Lj55
	stmfd	r13!,{r4,r5,r14}
	ldrh	r4,[r0]
# Var ea2 located in register r4
# Var ea2 located in register r4
# [340] result:=word(read6502(ea2)) or (word(read6502(ea2+1)) shl 8);
	mov	r0,r4
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	add	r0,r4,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [341] end;
	orr	r0,r5,r0,lsl #8
	uxth	r0,r0
# Var $result located in register r0
	ldmfd	r13!,{r4,r5,r15}
.Lj55:
	.long	U_$UNIT6502_$$_EA
.Le9:
	.size	UNIT6502_$$_GETVALUE16$$WORD, .Le9 - UNIT6502_$$_GETVALUE16$$WORD

.section .text.n_unit6502_$$_getvalue32$$longword
	.balign 4
UNIT6502_$$_GETVALUE32$$LONGWORD:
# Var $result located in register r0
# Var ea2 located in register r4
# [347] begin
# Rescheduled
# [349] ea2:=ea;
	ldr	r0,.Lj58
	stmfd	r13!,{r4,r5,r14}
	ldrh	r4,[r0]
# Var ea2 located in register r4
# Var ea2 located in register r4
# [351] result:=cardinal(read6502(ea2))
	mov	r0,r4
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
# [352] or (cardinal(read6502(ea2+1)) shl 8)
	add	r0,r4,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [355] end;
	orr	r5,r5,r0,lsl #8
# [353] or (cardinal(read6502(ea2+2)) shl 16)
	add	r0,r4,#2
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	orr	r5,r5,r0,lsl #16
# [354] or (cardinal(read6502(ea2+3)) shl 24);
	add	r0,r4,#3
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	orr	r0,r5,r0,lsl #24
# Var $result located in register r0
	ldmfd	r13!,{r4,r5,r15}
.Lj58:
	.long	U_$UNIT6502_$$_EA
.Le10:
	.size	UNIT6502_$$_GETVALUE32$$LONGWORD, .Le10 - UNIT6502_$$_GETVALUE32$$LONGWORD

.section .text.n_unit6502_$$_putvalue$word
	.balign 4
UNIT6502_$$_PUTVALUE$WORD:
# [361] begin
	stmfd	r13!,{r14}
# Var saveval located in register r1
# Var ea2 located in register r0
	mov	r1,r0
# [362] ea2:=ea;
	ldr	r0,.Lj61
# Var ea2 located in register r0
# Rescheduled
# Rescheduled
# [363] if (addrtable[opcode] = @acc) then a := byte(saveval and $00FF) else write6502(ea2, (saveval and $00FF));
	ldr	r2,.Lj62
	ldrh	r0,[r0]
	ldrb	r3,[r2]
# Rescheduled
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r12,.Lj64
	ldr	r2,.Lj63
	ldr	r3,[r12, r3, lsl #2]
	cmp	r3,r2
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
	ldreq	r3,.Lj67
	streqb	r1,[r3]
# Peephole AndAnd2And done
	andne	r1,r1,#255
	blne	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [364] end;
	ldmfd	r13!,{r15}
.Lj61:
	.long	U_$UNIT6502_$$_EA
.Lj62:
	.long	U_$UNIT6502_$$_OPCODE
.Lj64:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj63:
	.long	UNIT6502_$$_ACC
.Lj67:
	.long	U_$UNIT6502_$$_A
.Le11:
	.size	UNIT6502_$$_PUTVALUE$WORD, .Le11 - UNIT6502_$$_PUTVALUE$WORD

.section .text.n_unit6502_$$_putvalue32$longword
	.balign 4
UNIT6502_$$_PUTVALUE32$LONGWORD:
# [370] begin
	stmfd	r13!,{r4,r5,r14}
# Var saveval located in register r4
# Var ea2 located in register r5
	mov	r4,r0
# [372] ea2:=ea;
	ldr	r0,.Lj71
	ldrh	r5,[r0]
# Var ea2 located in register r5
# Peephole AndAnd2And done
# [374] write6502(ea2, (saveval and $000000FF));
	and	r1,r4,#255
# Var ea2 located in register r5
	mov	r0,r5
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [375] write6502(ea2+1, ((saveval shl 8) and $000000FF));
	mov	r0,r4,lsl #8
# Peephole AndAnd2And done
	and	r1,r0,#255
	add	r0,r5,#1
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [376] write6502(ea2+2, ((saveval shl 16) and $000000FF));
	mov	r0,r4,lsl #16
# Peephole AndAnd2And done
	and	r1,r0,#255
	add	r0,r5,#2
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [377] write6502(ea2+3, ((saveval shl 24) and $000000FF));
	mov	r0,r4,lsl #24
# Peephole AndAnd2And done
	and	r1,r0,#255
	add	r0,r5,#3
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [378] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj71:
	.long	U_$UNIT6502_$$_EA
.Le12:
	.size	UNIT6502_$$_PUTVALUE32$LONGWORD, .Le12 - UNIT6502_$$_PUTVALUE32$LONGWORD

.section .text.n_unit6502_$$_reset6502
	.balign 4
.globl	UNIT6502_$$_RESET6502
UNIT6502_$$_RESET6502:
# [382] begin
	stmfd	r13!,{r4,r14}
# [383] pc := word(read6502($FFFC)) or (word(read6502($FFFD) shl 8));
	mov	r0,#252
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#253
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r0,r0,lsl #8
	uxth	r0,r0
# Rescheduled
	ldr	r1,.Lj74
	orr	r0,r0,r4
	strh	r0,[r1]
# Rescheduled
# [384] a := 0;
	ldr	r0,.Lj75
	mov	r1,#0
	strb	r1,[r0]
# Rescheduled
# [385] x := 0;
	ldr	r1,.Lj76
	mov	r0,#0
	strb	r0,[r1]
# Rescheduled
# [386] y := 0;
	ldr	r1,.Lj77
	mov	r0,#0
	strb	r0,[r1]
# Rescheduled
# [387] sp := $FD;
	ldr	r0,.Lj78
	mov	r2,#253
# Rescheduled
# [391] status:=status or FLAG_CONSTANT;
	ldr	r1,.Lj79
	strb	r2,[r0]
	ldrb	r0,[r1]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj79
	orr	r0,r0,#32
	strb	r0,[r1]
# Rescheduled
# [392] clockgoal6502:=0;
	ldr	r1,.Lj81
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [393] instructions:=0;
	ldr	r1,.Lj82
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [394] clockticks6502:=0;
	ldr	r1,.Lj83
	mov	r0,#0
	str	r0,[r1]
# [396] end;
	ldmfd	r13!,{r4,r15}
.Lj74:
	.long	U_$UNIT6502_$$_PC
.Lj75:
	.long	U_$UNIT6502_$$_A
.Lj76:
	.long	U_$UNIT6502_$$_X
.Lj77:
	.long	U_$UNIT6502_$$_Y
.Lj78:
	.long	U_$UNIT6502_$$_SP
.Lj79:
	.long	U_$UNIT6502_$$_STATUS
.Lj81:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj82:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Lj83:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le13:
	.size	UNIT6502_$$_RESET6502, .Le13 - UNIT6502_$$_RESET6502

.section .text.n_unit6502_$$_nmi6502
	.balign 4
.globl	UNIT6502_$$_NMI6502
UNIT6502_$$_NMI6502:
# [400] begin
# Rescheduled
# [401] push16(pc);
	ldr	r0,.Lj86
	stmfd	r13!,{r4,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUSH16$WORD
# [402] push8(status);
	ldr	r0,.Lj87
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [403] status :=status or FLAG_INTERRUPT;
	ldr	r0,.Lj87
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj87
	orr	r0,r0,#4
	strb	r0,[r1]
# [404] pc := word(read6502($FFFA)) or (word(read6502($FFFB)) << 8);
	mov	r0,#250
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#251
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj86
# [407] end;
	orr	r0,r4,r0,lsl #8
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj86:
	.long	U_$UNIT6502_$$_PC
.Lj87:
	.long	U_$UNIT6502_$$_STATUS
.Le14:
	.size	UNIT6502_$$_NMI6502, .Le14 - UNIT6502_$$_NMI6502

.section .text.n_unit6502_$$_irq6502
	.balign 4
.globl	UNIT6502_$$_IRQ6502
UNIT6502_$$_IRQ6502:
# [411] begin
# Rescheduled
# [412] push16(pc);
	ldr	r0,.Lj93
	stmfd	r13!,{r4,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUSH16$WORD
# [413] push8(status);
	ldr	r0,.Lj94
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [414] status :=status or FLAG_INTERRUPT;
	ldr	r0,.Lj94
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj94
	orr	r0,r0,#4
	strb	r0,[r1]
# [415] pc := word(read6502($FFFE)) or (word(read6502($FFFF)) << 8);
	mov	r0,#254
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#255
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj93
# [418] end;
	orr	r0,r4,r0,lsl #8
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj93:
	.long	U_$UNIT6502_$$_PC
.Lj94:
	.long	U_$UNIT6502_$$_STATUS
.Le15:
	.size	UNIT6502_$$_IRQ6502, .Le15 - UNIT6502_$$_IRQ6502

.section .text.n_unit6502_$$_exec6502$longint
	.balign 4
.globl	UNIT6502_$$_EXEC6502$LONGINT
UNIT6502_$$_EXEC6502$LONGINT:
# Var tickcount located in register r0
# [422] begin
# Rescheduled
# [423] clockgoal6502 += tickcount;
	ldr	r1,.Lj100
	stmfd	r13!,{r14}
	ldr	r1,[r1]
# Rescheduled
	ldr	r2,.Lj100
	add	r0,r0,r1
	str	r0,[r2]
# [424] while (clockticks6502 < clockgoal6502) do
	b	.Lj103
	.balign 4
.Lj102:
# [426] opcode := read6502(pc);
	ldr	r0,.Lj105
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r2,.Lj106
# Rescheduled
# [427] pc+=1;
	ldr	r1,.Lj105
	strb	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj105
	add	r0,r0,#1
	strh	r0,[r1]
# Rescheduled
# [429] penaltyop := 0;
	ldr	r1,.Lj109
	mov	r0,#0
	strb	r0,[r1]
# Rescheduled
# [430] penaltyaddr := 0;
	ldr	r2,.Lj110
	mov	r1,#0
# Rescheduled
# [431] addrtable[opcode];
	ldr	r0,.Lj106
	strb	r1,[r2]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj112
	ldrb	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [432] optable[opcode];
	ldr	r0,.Lj106
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj114
	ldrb	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [433] clockticks6502 += ticktable[opcode];
	ldr	r0,.Lj106
# Rescheduled
	ldr	r1,.Lj116
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj117
	ldrb	r1,[r0, r1]
	ldr	r0,[r2]
# Rescheduled
	ldr	r2,.Lj117
	add	r1,r0,r1
# Rescheduled
# [434] if (penaltyop<>0) and (penaltyaddr<>0) then  clockticks6502+=1;
	ldr	r0,.Lj109
	str	r1,[r2]
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj121
	ldr	r0,.Lj110
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj121
	ldr	r0,.Lj117
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj117
	add	r0,r0,#1
	str	r0,[r1]
.Lj121:
# [435] instructions+=1;
	ldr	r0,.Lj126
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj126
	add	r0,r0,#1
	str	r0,[r1]
.Lj103:
	ldr	r0,.Lj117
# Rescheduled
	ldr	r1,.Lj100
	ldr	r2,[r0]
	ldr	r0,[r1]
	cmp	r2,r0
	blt	.Lj102
# [437] end;
	ldmfd	r13!,{r15}
.Lj100:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj105:
	.long	U_$UNIT6502_$$_PC
.Lj106:
	.long	U_$UNIT6502_$$_OPCODE
.Lj109:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj110:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj112:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj114:
	.long	TC_$UNIT6502_$$_OPTABLE
.Lj116:
	.long	TC_$UNIT6502_$$_TICKTABLE
.Lj117:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Lj126:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Le16:
	.size	UNIT6502_$$_EXEC6502$LONGINT, .Le16 - UNIT6502_$$_EXEC6502$LONGINT

.section .text.n_unit6502_$$_fast6502$longint
	.balign 4
.globl	UNIT6502_$$_FAST6502$LONGINT
UNIT6502_$$_FAST6502$LONGINT:
# Var tickcount located in register r0
# [441] begin
# Rescheduled
# [442] clockgoal6502 += tickcount;
	ldr	r1,.Lj132
	stmfd	r13!,{r14}
	ldr	r1,[r1]
# Rescheduled
	ldr	r2,.Lj132
	add	r0,r0,r1
	str	r0,[r2]
# [443] while (clockticks6502 < clockgoal6502) do
	b	.Lj135
	.balign 4
.Lj134:
# [445] opcode := read6502(pc);
	ldr	r0,.Lj137
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r2,.Lj138
# Rescheduled
# [446] pc+=1;
	ldr	r1,.Lj137
	strb	r0,[r2]
	ldrh	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj137
	uxth	r1,r0
# Rescheduled
# [447] addrtable[opcode];
	ldr	r0,.Lj138
	strh	r1,[r2]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj142
	ldrb	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [448] optable[opcode];
	ldr	r0,.Lj138
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj144
	ldrb	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [449] clockticks6502 += 1;
	ldr	r0,.Lj145
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj145
	add	r0,r0,#1
# Rescheduled
# [450] instructions+=1;
	ldr	r1,.Lj147
	str	r0,[r2]
	ldr	r0,[r1]
# Rescheduled
	ldr	r1,.Lj147
	add	r0,r0,#1
	str	r0,[r1]
.Lj135:
	ldr	r0,.Lj145
# Rescheduled
	ldr	r2,.Lj132
	ldr	r1,[r0]
	ldr	r0,[r2]
	cmp	r1,r0
	blt	.Lj134
# [452] end;
	ldmfd	r13!,{r15}
.Lj132:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj137:
	.long	U_$UNIT6502_$$_PC
.Lj138:
	.long	U_$UNIT6502_$$_OPCODE
.Lj142:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj144:
	.long	TC_$UNIT6502_$$_OPTABLE
.Lj145:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Lj147:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Le17:
	.size	UNIT6502_$$_FAST6502$LONGINT, .Le17 - UNIT6502_$$_FAST6502$LONGINT

.section .text.n_unit6502_$$_step6502
	.balign 4
.globl	UNIT6502_$$_STEP6502
UNIT6502_$$_STEP6502:
# [456] begin
# Rescheduled
# [457] opcode := read6502(pc);
	ldr	r0,.Lj153
	stmfd	r13!,{r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r2,.Lj154
# Rescheduled
# [458] pc+=1;
	ldr	r1,.Lj153
	strb	r0,[r2]
	ldrh	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj153
# Peephole UXTHStrh2Strh done
# Rescheduled
# [459] status :=status or FLAG_CONSTANT;
	ldr	r1,.Lj157
	strh	r0,[r2]
	ldrb	r0,[r1]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj157
	orr	r0,r0,#32
	strb	r0,[r1]
# Rescheduled
# [460] penaltyop := 0;
	ldr	r0,.Lj159
	mov	r1,#0
	strb	r1,[r0]
# Rescheduled
# [461] penaltyaddr := 0;
	ldr	r2,.Lj160
	mov	r1,#0
# Rescheduled
# [462] addrtable[opcode];
	ldr	r0,.Lj154
	strb	r1,[r2]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj162
	ldrb	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [463] optable[opcode];
	ldr	r0,.Lj154
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj164
	ldrb	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [464] clockticks6502 += ticktable[opcode];
	ldr	r0,.Lj154
# Rescheduled
	ldr	r1,.Lj166
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj167
	ldrb	r1,[r0, r1]
	ldr	r0,[r2]
# Rescheduled
	ldr	r2,.Lj167
	add	r0,r0,r1
# Rescheduled
# [465] if (penaltyop<>0) and (penaltyaddr<>0) then clockticks6502+=1;
	ldr	r1,.Lj159
	str	r0,[r2]
	ldrb	r0,[r1]
	cmp	r0,#0
	beq	.Lj171
	ldr	r0,.Lj160
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj171
	ldr	r0,.Lj167
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj167
	add	r0,r0,#1
	str	r0,[r1]
.Lj171:
# [466] clockgoal6502 := clockticks6502;
	ldr	r0,.Lj167
# Rescheduled
	ldr	r2,.Lj177
	ldr	r1,[r0]
# Rescheduled
# [467] instructions+=1;
	ldr	r0,.Lj178
	str	r1,[r2]
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj178
	add	r0,r0,#1
	str	r0,[r1]
# [468] end;
	ldmfd	r13!,{r15}
.Lj153:
	.long	U_$UNIT6502_$$_PC
.Lj154:
	.long	U_$UNIT6502_$$_OPCODE
.Lj157:
	.long	U_$UNIT6502_$$_STATUS
.Lj159:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj160:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj162:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj164:
	.long	TC_$UNIT6502_$$_OPTABLE
.Lj166:
	.long	TC_$UNIT6502_$$_TICKTABLE
.Lj167:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Lj177:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj178:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Le18:
	.size	UNIT6502_$$_STEP6502, .Le18 - UNIT6502_$$_STEP6502

.section .text.n_unit6502_$$_jsr6502$word$longint
	.balign 4
.globl	UNIT6502_$$_JSR6502$WORD$LONGINT
UNIT6502_$$_JSR6502$WORD$LONGINT:
# Var aa located in register r0
# Var addr located in register r1
# Var depth located in register r4
# [475] begin
# Rescheduled
# [476] inc(jsrcnt) ;
	ldr	r3,.Lj182
	stmfd	r13!,{r4,r14}
	ldr	r2,[r3]
	add	r2,r2,#1
	str	r2,[r3]
# Rescheduled
# [479] pc:=addr;
	ldr	r2,.Lj183
# Peephole UXTHStrh2Strh done
	strh	r1,[r2]
# Rescheduled
# [480] sp := $FD;
	ldr	r2,.Lj184
	mov	r1,#253
	strb	r1,[r2]
# Var depth located in register r4
# [481] depth:=0;
	mov	r4,#0
# [482] if aa<256 then begin a:=aa; x:=0; y:=0; status:=0; end;
	cmp	r0,#256
	bcs	.Lj186
# Rescheduled
	ldr	r1,.Lj187
# Peephole AndStrb2Strb done
	strb	r0,[r1]
# Rescheduled
	ldr	r0,.Lj188
	mov	r1,#0
	strb	r1,[r0]
# Rescheduled
	ldr	r0,.Lj189
	mov	r1,#0
	strb	r1,[r0]
# Rescheduled
	ldr	r0,.Lj190
	mov	r1,#0
	strb	r1,[r0]
.Lj186:
# Rescheduled
# [483] instructions:=0;
	ldr	r0,.Lj191
	mov	r1,#0
	str	r1,[r0]
	.balign 4
.Lj192:
# [485] opcode := read6502(pc);
	ldr	r0,.Lj183
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r2,.Lj196
# Rescheduled
# [486] if opcode=$20 then inc(depth);
	ldr	r1,.Lj196
	strb	r0,[r2]
	ldrb	r0,[r1]
	cmp	r0,#32
	addeq	r4,r4,#1
# [487] if opcode=$60 then dec(depth);
	ldr	r0,.Lj196
	ldrb	r0,[r0]
	cmp	r0,#96
	subeq	r4,r4,#1
# [489] pc+=1;
	ldr	r0,.Lj183
	ldrh	r0,[r0]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj183
# Peephole UXTHStrh2Strh done
# Rescheduled
# [490] addrtable[opcode];
	ldr	r1,.Lj196
	strh	r0,[r2]
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj206
# Peephole FoldShiftLdrStr done
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [491] optable[opcode];
	ldr	r0,.Lj196
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj208
	ldrb	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	blx	r0
# [492] instructions+=1;
	ldr	r0,.Lj191
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj191
	add	r0,r0,#1
	str	r0,[r1]
# [494] until (depth<0) or (instructions>3000);
	cmp	r4,#0
	blt	.Lj194
	ldr	r0,.Lj191
	ldr	r0,[r0]
	mov	r1,#184
	orr	r1,r1,#2816
	cmp	r0,r1
	ble	.Lj192
.Lj194:
# [498] end;
	ldmfd	r13!,{r4,r15}
.Lj182:
	.long	TC_$UNIT6502_$$_JSRCNT
.Lj183:
	.long	U_$UNIT6502_$$_PC
.Lj184:
	.long	U_$UNIT6502_$$_SP
.Lj187:
	.long	U_$UNIT6502_$$_A
.Lj188:
	.long	U_$UNIT6502_$$_X
.Lj189:
	.long	U_$UNIT6502_$$_Y
.Lj190:
	.long	U_$UNIT6502_$$_STATUS
.Lj191:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Lj196:
	.long	U_$UNIT6502_$$_OPCODE
.Lj206:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj208:
	.long	TC_$UNIT6502_$$_OPTABLE
.Le19:
	.size	UNIT6502_$$_JSR6502$WORD$LONGINT, .Le19 - UNIT6502_$$_JSR6502$WORD$LONGINT

.section .text.n_unit6502_$$_imp
	.balign 4
UNIT6502_$$_IMP:
# [504] begin
# [505] end;
	bx	r14
.Le20:
	.size	UNIT6502_$$_IMP, .Le20 - UNIT6502_$$_IMP

.section .text.n_unit6502_$$_acc
	.balign 4
UNIT6502_$$_ACC:
# [509] begin
# [510] end;
	bx	r14
.Le21:
	.size	UNIT6502_$$_ACC, .Le21 - UNIT6502_$$_ACC

.section .text.n_unit6502_$$_imm
	.balign 4
UNIT6502_$$_IMM:
# [514] begin
# [515] ea := pc;
	ldr	r0,.Lj221
# Rescheduled
	ldr	r1,.Lj222
	ldrh	r0,[r0]
# Rescheduled
# [516] inc(pc);
	ldr	r2,.Lj221
	strh	r0,[r1]
	ldrh	r0,[r2]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r2]
# [517] end;
	bx	r14
.Lj221:
	.long	U_$UNIT6502_$$_PC
.Lj222:
	.long	U_$UNIT6502_$$_EA
.Le22:
	.size	UNIT6502_$$_IMM, .Le22 - UNIT6502_$$_IMM

.section .text.n_unit6502_$$_zp
	.balign 4
UNIT6502_$$_ZP:
# [521] begin
# Rescheduled
# [522] ea := word(read6502(pc));
	ldr	r0,.Lj226
	stmfd	r13!,{r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj227
# Rescheduled
# [523] inc(pc);
	ldr	r2,.Lj226
	strh	r0,[r1]
	ldrh	r0,[r2]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r2]
# [524] end;
	ldmfd	r13!,{r15}
.Lj226:
	.long	U_$UNIT6502_$$_PC
.Lj227:
	.long	U_$UNIT6502_$$_EA
.Le23:
	.size	UNIT6502_$$_ZP, .Le23 - UNIT6502_$$_ZP

.section .text.n_unit6502_$$_zpx
	.balign 4
UNIT6502_$$_ZPX:
# [528] begin
# Rescheduled
# [529] ea := ((read6502(pc)+x) and $FF); //zero-page wraparound
	ldr	r0,.Lj231
	stmfd	r13!,{r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj232
	ldrb	r1,[r1]
	add	r0,r1,r0
# Peephole AndUxt2And done
# Rescheduled
	ldr	r1,.Lj233
	and	r0,r0,#255
# Rescheduled
# [530] inc(pc)
	ldr	r2,.Lj231
	strh	r0,[r1]
	ldrh	r0,[r2]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r2]
# [531] end;
	ldmfd	r13!,{r15}
.Lj231:
	.long	U_$UNIT6502_$$_PC
.Lj232:
	.long	U_$UNIT6502_$$_X
.Lj233:
	.long	U_$UNIT6502_$$_EA
.Le24:
	.size	UNIT6502_$$_ZPX, .Le24 - UNIT6502_$$_ZPX

.section .text.n_unit6502_$$_zpy
	.balign 4
UNIT6502_$$_ZPY:
# [535] begin
# Rescheduled
# [536] ea := ((read6502(pc)+y) and $FF); //zero-page wraparound
	ldr	r0,.Lj237
	stmfd	r13!,{r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj238
	ldrb	r1,[r1]
	add	r0,r1,r0
# Peephole AndUxt2And done
# Rescheduled
	ldr	r1,.Lj239
	and	r0,r0,#255
# Rescheduled
# [537] inc(pc)
	ldr	r2,.Lj237
	strh	r0,[r1]
	ldrh	r0,[r2]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r2]
# [538] end;
	ldmfd	r13!,{r15}
.Lj237:
	.long	U_$UNIT6502_$$_PC
.Lj238:
	.long	U_$UNIT6502_$$_Y
.Lj239:
	.long	U_$UNIT6502_$$_EA
.Le25:
	.size	UNIT6502_$$_ZPY, .Le25 - UNIT6502_$$_ZPY

.section .text.n_unit6502_$$_rel
	.balign 4
UNIT6502_$$_REL:
# [542] begin
# Rescheduled
# [543] reladdr := word(read6502(pc));
	ldr	r0,.Lj243
	stmfd	r13!,{r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj244
# Rescheduled
# [544] inc(pc);
	ldr	r2,.Lj243
	strh	r0,[r1]
	ldrh	r0,[r2]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
# Rescheduled
# [545] if (reladdr and $80)<>0 then reladdr:=reladdr or $FF00;
	ldr	r1,.Lj244
	strh	r0,[r2]
	ldrh	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj248
	ldr	r0,.Lj244
	ldrh	r0,[r0]
# Rescheduled
	ldr	r1,.Lj244
	orr	r0,r0,#65280
	strh	r0,[r1]
.Lj248:
# [546] end;
	ldmfd	r13!,{r15}
.Lj243:
	.long	U_$UNIT6502_$$_PC
.Lj244:
	.long	U_$UNIT6502_$$_RELADDR
.Le26:
	.size	UNIT6502_$$_REL, .Le26 - UNIT6502_$$_REL

.section .text.n_unit6502_$$_abso
	.balign 4
UNIT6502_$$_ABSO:
# [550] begin
# Rescheduled
# [551] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj253
	stmfd	r13!,{r4,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj253
	mov	r4,r0
	ldrh	r0,[r1]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [553] end;
	orr	r0,r4,r0,lsl #8
# Rescheduled
	ldr	r2,.Lj255
	uxth	r1,r0
# Rescheduled
# [552] pc += 2;
	ldr	r0,.Lj253
	strh	r1,[r2]
	ldrh	r0,[r0]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj253
	add	r0,r0,#2
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj253:
	.long	U_$UNIT6502_$$_PC
.Lj255:
	.long	U_$UNIT6502_$$_EA
.Le27:
	.size	UNIT6502_$$_ABSO, .Le27 - UNIT6502_$$_ABSO

.section .text.n_unit6502_$$_absx
	.balign 4
UNIT6502_$$_ABSX:
# Var startpage located in register r0
# [559] begin
# Rescheduled
# [560] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj260
	stmfd	r13!,{r4,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj260
	mov	r4,r0
	ldrh	r0,[r1]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [565] end;
	orr	r0,r4,r0,lsl #8
# Rescheduled
	ldr	r2,.Lj262
	uxth	r1,r0
# Rescheduled
# [561] startpage := ea and $FF00;
	ldr	r0,.Lj262
	strh	r1,[r2]
	ldrh	r0,[r0]
	and	r0,r0,#65280
# Var startpage located in register r0
# Rescheduled
# [562] ea += x;
	ldr	r1,.Lj262
# Rescheduled
	ldr	r3,.Lj265
	ldrh	r2,[r1]
	ldrb	r1,[r3]
	add	r1,r1,r2
# Rescheduled
	ldr	r3,.Lj262
# Peephole UXTHStrh2Strh done
# Rescheduled
# [563] if (startpage <> (ea and $FF00)) then penaltyaddr := 1;   //one cycle penalty for page-crossing on some opcodes
	ldr	r2,.Lj262
	strh	r1,[r3]
	ldrh	r1,[r2]
	and	r1,r1,#65280
	cmp	r1,r0
# Rescheduled
	ldrne	r1,.Lj270
	movne	r0,#1
	strneb	r0,[r1]
# [564] pc += 2;
	ldr	r0,.Lj260
	ldrh	r0,[r0]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj260
	add	r0,r0,#2
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj260:
	.long	U_$UNIT6502_$$_PC
.Lj262:
	.long	U_$UNIT6502_$$_EA
.Lj265:
	.long	U_$UNIT6502_$$_X
.Lj270:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Le28:
	.size	UNIT6502_$$_ABSX, .Le28 - UNIT6502_$$_ABSX

.section .text.n_unit6502_$$_absy
	.balign 4
UNIT6502_$$_ABSY:
# Var startpage located in register r0
# [571] begin
# Rescheduled
# [572] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj275
	stmfd	r13!,{r4,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj275
	mov	r4,r0
	ldrh	r0,[r1]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [577] end;
	orr	r0,r4,r0,lsl #8
# Rescheduled
	ldr	r2,.Lj277
	uxth	r1,r0
# Rescheduled
# [573] startpage := ea and $FF00;
	ldr	r0,.Lj277
	strh	r1,[r2]
	ldrh	r0,[r0]
	and	r0,r0,#65280
# Var startpage located in register r0
# Rescheduled
# [574] ea += y;
	ldr	r1,.Lj277
# Rescheduled
	ldr	r3,.Lj280
	ldrh	r2,[r1]
	ldrb	r1,[r3]
	add	r1,r1,r2
# Rescheduled
	ldr	r3,.Lj277
# Peephole UXTHStrh2Strh done
# Rescheduled
# [575] if (startpage <> (ea and $FF00)) then penaltyaddr := 1; //one cycle penalty for page-crossing on some opcodes
	ldr	r2,.Lj277
	strh	r1,[r3]
	ldrh	r1,[r2]
	and	r1,r1,#65280
	cmp	r1,r0
# Rescheduled
	ldrne	r1,.Lj285
	movne	r0,#1
	strneb	r0,[r1]
# [576] pc += 2;
	ldr	r0,.Lj275
	ldrh	r0,[r0]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj275
	add	r0,r0,#2
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj275:
	.long	U_$UNIT6502_$$_PC
.Lj277:
	.long	U_$UNIT6502_$$_EA
.Lj280:
	.long	U_$UNIT6502_$$_Y
.Lj285:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Le29:
	.size	UNIT6502_$$_ABSY, .Le29 - UNIT6502_$$_ABSY

.section .text.n_unit6502_$$_ind
	.balign 4
UNIT6502_$$_IND:
# Var eahelp located in register r0
# Var eahelp2 located in register r0
# [583] begin
# Rescheduled
# [584] eahelp := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj290
	stmfd	r13!,{r4,r5,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj290
	mov	r4,r0
	ldrh	r0,[r1]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [588] end;
	orr	r0,r4,r0,lsl #8
	uxth	r0,r0
# Var eahelp located in register r0
# [585] eahelp2 := (eahelp and $FF00) or ((eahelp + 1) and $00FF); //replicate 6502 page-boundary wraparound bug
	add	r1,r0,#1
	and	r1,r1,#255
	and	r2,r0,#65280
	orr	r1,r2,r1
	uxth	r4,r1
# Var eahelp2 located in register r4
# Var eahelp located in register r0
# [586] ea := word(read6502(eahelp)) or (word(read6502(eahelp2)) shl 8);
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	mov	r0,r4
# Var eahelp2 located in register r0
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	orr	r0,r5,r0,lsl #8
# Rescheduled
	ldr	r2,.Lj292
# Peephole UXTHStrh2Strh done
# Rescheduled
# [587] pc += 2;
	ldr	r1,.Lj290
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj290
	add	r0,r0,#2
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj290:
	.long	U_$UNIT6502_$$_PC
.Lj292:
	.long	U_$UNIT6502_$$_EA
.Le30:
	.size	UNIT6502_$$_IND, .Le30 - UNIT6502_$$_IND

.section .text.n_unit6502_$$_izp
	.balign 4
UNIT6502_$$_IZP:
# Var eahelp located in register r4
# [594] begin
# Rescheduled
# [595] eahelp := word(read6502(pc)) and $FF; //zero-page wraparound for table pointer
	ldr	r0,.Lj297
	stmfd	r13!,{r4,r5,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var eahelp located in register r4
# Rescheduled
# Rescheduled
# [596] inc(pc);
	ldr	r1,.Lj297
	and	r4,r0,#255
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [597] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	and	r0,r4,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	add	r0,r4,#1
	and	r0,r0,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj299
# [598] end;
	orr	r0,r5,r0,lsl #8
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj297:
	.long	U_$UNIT6502_$$_PC
.Lj299:
	.long	U_$UNIT6502_$$_EA
.Le31:
	.size	UNIT6502_$$_IZP, .Le31 - UNIT6502_$$_IZP

.section .text.n_unit6502_$$_indx
	.balign 4
UNIT6502_$$_INDX:
# Var eahelp located in register r4
# [605] begin
# Rescheduled
# [606] eahelp := (word(read6502(pc) + x) and $FF); //zero-page wraparound for table pointer
	ldr	r0,.Lj302
	stmfd	r13!,{r4,r5,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj303
	ldrb	r1,[r1]
	add	r0,r1,r0
	uxth	r0,r0
# Var eahelp located in register r4
# Rescheduled
# Rescheduled
# [607] inc(pc);
	ldr	r1,.Lj302
	and	r4,r0,#255
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [608] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	and	r0,r4,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	add	r0,r4,#1
	and	r0,r0,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj305
# [609] end;
	orr	r0,r5,r0,lsl #8
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj302:
	.long	U_$UNIT6502_$$_PC
.Lj303:
	.long	U_$UNIT6502_$$_X
.Lj305:
	.long	U_$UNIT6502_$$_EA
.Le32:
	.size	UNIT6502_$$_INDX, .Le32 - UNIT6502_$$_INDX

.section .text.n_unit6502_$$_iax
	.balign 4
UNIT6502_$$_IAX:
# Var eahelp located in register r4
# [615] begin
# Rescheduled
# [616] eahelp := word(read6502(pc))+(word(read6502(pc+1) shl 8)+ y); //zero-page wraparound for table pointer
	ldr	r0,.Lj308
	stmfd	r13!,{r4,r5,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Rescheduled
	ldr	r1,.Lj308
	mov	r4,r0
	ldrh	r0,[r1]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r0,r0,lsl #8
# Rescheduled
	ldr	r2,.Lj310
	uxth	r1,r0
	ldrb	r0,[r2]
	add	r0,r0,r1
	add	r0,r0,r4
	uxth	r4,r0
# Var eahelp located in register r4
# Rescheduled
# [617] pc+=2;
	ldr	r0,.Lj308
	ldrh	r0,[r0]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj308
	add	r0,r0,#2
	strh	r0,[r1]
# [618] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	and	r0,r4,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	add	r0,r4,#1
	and	r0,r0,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj313
# [619] end;
	orr	r0,r5,r0,lsl #8
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj308:
	.long	U_$UNIT6502_$$_PC
.Lj310:
	.long	U_$UNIT6502_$$_Y
.Lj313:
	.long	U_$UNIT6502_$$_EA
.Le33:
	.size	UNIT6502_$$_IAX, .Le33 - UNIT6502_$$_IAX

.section .text.n_unit6502_$$_indy
	.balign 4
UNIT6502_$$_INDY:
# Var eahelp located in register r0
# Var eahelp2 located in register r0
# Var startpage located in register r0
# [625] begin
# Rescheduled
# [626] eahelp := word(read6502(pc));
	ldr	r0,.Lj316
	stmfd	r13!,{r4,r5,r14}
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var eahelp located in register r0
# Rescheduled
# [627] inc(pc);
	ldr	r2,.Lj316
	ldrh	r1,[r2]
	add	r1,r1,#1
# Peephole UXTHStrh2Strh done
	strh	r1,[r2]
# [628] eahelp2 := (eahelp and $FF00) or ((eahelp + 1) and $00FF); //zero-page wraparound
	add	r1,r0,#1
	and	r2,r1,#255
	and	r1,r0,#65280
	orr	r1,r1,r2
	uxth	r4,r1
# Var eahelp2 located in register r4
# Var eahelp located in register r0
# [629] ea := word(read6502(eahelp)) or (word(read6502(eahelp2)) shl 8);
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	mov	r0,r4
# Var eahelp2 located in register r0
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [633] end;
	orr	r0,r5,r0,lsl #8
# Rescheduled
	ldr	r2,.Lj318
	uxth	r1,r0
# Rescheduled
# [630] startpage := ea and $FF00;
	ldr	r0,.Lj318
	strh	r1,[r2]
	ldrh	r0,[r0]
	and	r0,r0,#65280
# Var startpage located in register r0
# Rescheduled
# [631] ea += y;
	ldr	r1,.Lj318
# Rescheduled
	ldr	r3,.Lj321
	ldrh	r2,[r1]
	ldrb	r1,[r3]
	add	r1,r1,r2
# Rescheduled
	ldr	r3,.Lj318
# Peephole UXTHStrh2Strh done
# Rescheduled
# [632] if (startpage <> (ea and $FF00)) then penaltyaddr := 1; //one cycle penalty for page-crossing on some opcodes
	ldr	r2,.Lj318
	strh	r1,[r3]
	ldrh	r1,[r2]
	and	r1,r1,#65280
	cmp	r1,r0
# Rescheduled
	ldrne	r1,.Lj326
	movne	r0,#1
	strneb	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj316:
	.long	U_$UNIT6502_$$_PC
.Lj318:
	.long	U_$UNIT6502_$$_EA
.Lj321:
	.long	U_$UNIT6502_$$_Y
.Lj326:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Le34:
	.size	UNIT6502_$$_INDY, .Le34 - UNIT6502_$$_INDY

.section .text.n_unit6502_$$_adc
	.balign 4
UNIT6502_$$_ADC:
# [641] begin
	stmfd	r13!,{r14}
# Rescheduled
# [642] penaltyop := 1;
	ldr	r0,.Lj329
	mov	r1,#1
	strb	r1,[r0]
# [643] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj330
# Rescheduled
# [644] aresult := word(value)+a+(status and FLAG_CARRY);
	ldr	r1,.Lj330
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj332
	ldrh	r1,[r1]
	ldrb	r0,[r0]
# Rescheduled
	ldr	r2,.Lj333
	add	r1,r0,r1
	ldrb	r0,[r2]
	and	r0,r0,#1
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj334
	uxth	r1,r0
# Rescheduled
# [645] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj334
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj337
# [221] {$define setcarry:= status :=status or FLAG_CARRY}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj340
.Lj337:
# [222] {$define clearcarry:= status := status and not(FLAG_CARRY)}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj340:
# [646] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj334
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj345
# [224] {$define clearzero:= status:= status and not(FLAG_ZERO)}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj348
.Lj345:
# [223] {$define setzero:= status :=status or FLAG_ZERO}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj348:
# [647] if ((aresult xor a) and (aresult xor value) and $0080)<>0 then
	ldr	r0,.Lj332
# Rescheduled
	ldr	r1,.Lj334
	ldrb	r2,[r0]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj334
	eor	r2,r0,r2
# Rescheduled
	ldr	r0,.Lj330
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	eor	r0,r0,r1
	and	r0,r0,r2
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj356
# [229] {$define setoverflow:= status :=status or FLAG_OVERFLOW}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	orr	r0,r0,#64
	strb	r0,[r1]
	b	.Lj359
.Lj356:
# [230] {$define clearoverflow:= status := status and not(FLAG_OVERFLOW)}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	bic	r0,r0,#64
	strb	r0,[r1]
.Lj359:
# [651] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj334
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj364
# [231] {$define setsign:= status :=status or FLAG_SIGN}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj333
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj367
.Lj364:
# [232] {$define clearsign:= status := status and not(FLAG_SIGN)}
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj367:
# [652] if (status and FLAG_DECIMAL)<>0 then
	ldr	r0,.Lj333
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#8
	beq	.Lj372
# [654] inc(clockticks6502);
	ldr	r2,.Lj373
	ldr	r0,[r2]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj333
	str	r0,[r2]
	ldrb	r0,[r1]
	bic	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj333
	and	r1,r0,#255
# Rescheduled
# [656] if ((a and $0F) > $09) then a += $06;
	ldr	r0,.Lj332
	strb	r1,[r2]
	ldrb	r0,[r0]
	and	r0,r0,#15
	cmp	r0,#9
	ble	.Lj378
	ldr	r0,.Lj332
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj332
	add	r0,r0,#6
	strb	r0,[r1]
.Lj378:
# [657] if ((a and $F0) > $90) then
	ldr	r0,.Lj332
	ldrb	r0,[r0]
	and	r0,r0,#240
	cmp	r0,#144
	bls	.Lj383
# [659] a += $60;
	ldr	r0,.Lj332
	ldrb	r0,[r0]
	add	r0,r0,#96
# Rescheduled
	ldr	r2,.Lj332
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	strb	r0,[r2]
	ldrb	r0,[r1]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj333
	orr	r0,r0,#1
	strb	r0,[r1]
.Lj383:
.Lj372:
# [663] a:=byte(aresult and $00FF);
	ldr	r0,.Lj334
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
# Rescheduled
	ldr	r1,.Lj332
	ldrh	r0,[r0]
	strb	r0,[r1]
# [664] end;
	ldmfd	r13!,{r15}
.Lj329:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj330:
	.long	U_$UNIT6502_$$_VALUE
.Lj332:
	.long	U_$UNIT6502_$$_A
.Lj333:
	.long	U_$UNIT6502_$$_STATUS
.Lj334:
	.long	U_$UNIT6502_$$_ARESULT
.Lj373:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le35:
	.size	UNIT6502_$$_ADC, .Le35 - UNIT6502_$$_ADC

.section .text.n_unit6502_$$_ana
	.balign 4
UNIT6502_$$_ANA:
# [668] begin
	stmfd	r13!,{r14}
# Rescheduled
# [669] penaltyop := 1;
	ldr	r1,.Lj392
	mov	r0,#1
	strb	r0,[r1]
# [670] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj393
# Rescheduled
# [671] aresult := a and value;
	ldr	r1,.Lj394
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj393
	ldrb	r1,[r1]
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj396
	and	r1,r0,r1
# Rescheduled
# [672] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj396
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj399
	ldr	r0,.Lj400
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj400
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj402
.Lj399:
	ldr	r0,.Lj400
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj400
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj402:
# [673] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj396
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj407
	ldr	r0,.Lj400
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj400
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj410
.Lj407:
	ldr	r0,.Lj400
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj400
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj410:
# [674] a:=byte(aresult and $00FF);
	ldr	r0,.Lj396
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
# Rescheduled
	ldr	r1,.Lj394
	ldrh	r0,[r0]
	strb	r0,[r1]
# [675] end;
	ldmfd	r13!,{r15}
.Lj392:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj393:
	.long	U_$UNIT6502_$$_VALUE
.Lj394:
	.long	U_$UNIT6502_$$_A
.Lj396:
	.long	U_$UNIT6502_$$_ARESULT
.Lj400:
	.long	U_$UNIT6502_$$_STATUS
.Le36:
	.size	UNIT6502_$$_ANA, .Le36 - UNIT6502_$$_ANA

.section .text.n_unit6502_$$_asl
	.balign 4
UNIT6502_$$_ASL:
# [679] begin
	stmfd	r13!,{r14}
# [680] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj417
# Rescheduled
# [681] aresult := value shl 1;
	ldr	r1,.Lj417
	strh	r0,[r2]
	ldrh	r0,[r1]
	mov	r0,r0,lsl #1
# Rescheduled
	ldr	r2,.Lj419
	uxth	r1,r0
# Rescheduled
# [682] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj419
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj422
	ldr	r0,.Lj423
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj423
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj425
.Lj422:
	ldr	r0,.Lj423
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj423
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj425:
# [683] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj419
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj430
	ldr	r0,.Lj423
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj423
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj433
.Lj430:
	ldr	r0,.Lj423
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj423
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj433:
# [684] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj419
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj438
	ldr	r0,.Lj423
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj423
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj441
.Lj438:
	ldr	r0,.Lj423
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj423
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj441:
# [685] putvalue(aresult);
	ldr	r0,.Lj419
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [686] end;
	ldmfd	r13!,{r15}
.Lj417:
	.long	U_$UNIT6502_$$_VALUE
.Lj419:
	.long	U_$UNIT6502_$$_ARESULT
.Lj423:
	.long	U_$UNIT6502_$$_STATUS
.Le37:
	.size	UNIT6502_$$_ASL, .Le37 - UNIT6502_$$_ASL

.section .text.n_unit6502_$$_bcc
	.balign 4
UNIT6502_$$_BCC:
# [690] begin
# [691] if ((status and FLAG_CARRY) = 0) then
	ldr	r0,.Lj447
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#1
	bne	.Lj449
# [693] oldpc := pc;
	ldr	r0,.Lj450
# Rescheduled
	ldr	r2,.Lj451
	ldrh	r0,[r0]
# Rescheduled
# [694] pc += reladdr;
	ldr	r1,.Lj450
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj453
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj450
# Peephole UXTHStrh2Strh done
# Rescheduled
# [695] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj451
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj450
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj458
# [696] else clockticks6502+=1;
	ldr	r0,.Lj459
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj459
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj461
.Lj458:
	ldr	r0,.Lj459
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj459
	add	r0,r0,#1
	str	r0,[r1]
.Lj461:
.Lj449:
# [698] end;
	bx	r14
.Lj447:
	.long	U_$UNIT6502_$$_STATUS
.Lj450:
	.long	U_$UNIT6502_$$_PC
.Lj451:
	.long	U_$UNIT6502_$$_OLDPC
.Lj453:
	.long	U_$UNIT6502_$$_RELADDR
.Lj459:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le38:
	.size	UNIT6502_$$_BCC, .Le38 - UNIT6502_$$_BCC

.section .text.n_unit6502_$$_bcs
	.balign 4
UNIT6502_$$_BCS:
# [702] begin
# [703] if ((status and FLAG_CARRY) = FLAG_CARRY) then
	ldr	r0,.Lj466
	ldrb	r0,[r0]
	and	r0,r0,#1
	cmp	r0,#1
	bne	.Lj468
# [705] oldpc := pc;
	ldr	r0,.Lj469
# Rescheduled
	ldr	r2,.Lj470
	ldrh	r0,[r0]
# Rescheduled
# [706] pc += reladdr;
	ldr	r1,.Lj469
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj472
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj469
# Peephole UXTHStrh2Strh done
# Rescheduled
# [707] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj470
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj469
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj477
# [708] else clockticks6502+=1;
	ldr	r0,.Lj478
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj478
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj480
.Lj477:
	ldr	r0,.Lj478
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj478
	add	r0,r0,#1
	str	r0,[r1]
.Lj480:
.Lj468:
# [710] end;
	bx	r14
.Lj466:
	.long	U_$UNIT6502_$$_STATUS
.Lj469:
	.long	U_$UNIT6502_$$_PC
.Lj470:
	.long	U_$UNIT6502_$$_OLDPC
.Lj472:
	.long	U_$UNIT6502_$$_RELADDR
.Lj478:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le39:
	.size	UNIT6502_$$_BCS, .Le39 - UNIT6502_$$_BCS

.section .text.n_unit6502_$$_beq
	.balign 4
UNIT6502_$$_BEQ:
# [714] begin
# [715] if ((status and FLAG_ZERO) = FLAG_ZERO) then
	ldr	r0,.Lj485
	ldrb	r0,[r0]
	and	r0,r0,#2
	cmp	r0,#2
	bne	.Lj487
# [717] oldpc := pc;
	ldr	r0,.Lj488
# Rescheduled
	ldr	r2,.Lj489
	ldrh	r0,[r0]
# Rescheduled
# [718] pc += reladdr;
	ldr	r1,.Lj488
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj491
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj488
# Peephole UXTHStrh2Strh done
# Rescheduled
# [719] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj489
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj488
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj496
# [720] else clockticks6502+=1;
	ldr	r0,.Lj497
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj497
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj499
.Lj496:
	ldr	r0,.Lj497
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj497
	add	r0,r0,#1
	str	r0,[r1]
.Lj499:
.Lj487:
# [722] end;
	bx	r14
.Lj485:
	.long	U_$UNIT6502_$$_STATUS
.Lj488:
	.long	U_$UNIT6502_$$_PC
.Lj489:
	.long	U_$UNIT6502_$$_OLDPC
.Lj491:
	.long	U_$UNIT6502_$$_RELADDR
.Lj497:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le40:
	.size	UNIT6502_$$_BEQ, .Le40 - UNIT6502_$$_BEQ

.section .text.n_unit6502_$$_bit
	.balign 4
UNIT6502_$$_BIT:
# [726] begin
	stmfd	r13!,{r14}
# [727] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj504
# Rescheduled
# [728] aresult := a and value;
	ldr	r1,.Lj505
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj504
	ldrb	r1,[r1]
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj507
	and	r1,r0,r1
# Rescheduled
# [729] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj507
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj510
	ldr	r0,.Lj511
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj511
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj513
.Lj510:
	ldr	r0,.Lj511
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj511
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj513:
# [730] status := (status and $3F) or (value and $C0);
	ldr	r0,.Lj511
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj504
	and	r2,r0,#63
	ldrh	r0,[r1]
	and	r0,r0,#192
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj511
	orr	r0,r0,r2
	strb	r0,[r1]
# [731] end;
	ldmfd	r13!,{r15}
.Lj504:
	.long	U_$UNIT6502_$$_VALUE
.Lj505:
	.long	U_$UNIT6502_$$_A
.Lj507:
	.long	U_$UNIT6502_$$_ARESULT
.Lj511:
	.long	U_$UNIT6502_$$_STATUS
.Le41:
	.size	UNIT6502_$$_BIT, .Le41 - UNIT6502_$$_BIT

.section .text.n_unit6502_$$_bmi
	.balign 4
UNIT6502_$$_BMI:
# [735] begin
# [736] if ((status and FLAG_SIGN) = FLAG_SIGN) then
	ldr	r0,.Lj521
	ldrb	r0,[r0]
	and	r0,r0,#128
	cmp	r0,#128
	bne	.Lj523
# [738] oldpc := pc;
	ldr	r0,.Lj524
# Rescheduled
	ldr	r2,.Lj525
	ldrh	r0,[r0]
# Rescheduled
# [739] pc += reladdr;
	ldr	r1,.Lj524
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj527
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj524
# Peephole UXTHStrh2Strh done
# Rescheduled
# [740] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj525
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj524
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj532
# [741] else clockticks6502+=1;
	ldr	r0,.Lj533
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj533
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj535
.Lj532:
	ldr	r0,.Lj533
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj533
	add	r0,r0,#1
	str	r0,[r1]
.Lj535:
.Lj523:
# [743] end;
	bx	r14
.Lj521:
	.long	U_$UNIT6502_$$_STATUS
.Lj524:
	.long	U_$UNIT6502_$$_PC
.Lj525:
	.long	U_$UNIT6502_$$_OLDPC
.Lj527:
	.long	U_$UNIT6502_$$_RELADDR
.Lj533:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le42:
	.size	UNIT6502_$$_BMI, .Le42 - UNIT6502_$$_BMI

.section .text.n_unit6502_$$_bne
	.balign 4
UNIT6502_$$_BNE:
# [747] begin
# [748] if ((status and FLAG_ZERO) = 0) then
	ldr	r0,.Lj540
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#2
	bne	.Lj542
# [750] oldpc := pc;
	ldr	r0,.Lj543
# Rescheduled
	ldr	r2,.Lj544
	ldrh	r0,[r0]
# Rescheduled
# [751] pc += reladdr;
	ldr	r1,.Lj543
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj546
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj543
# Peephole UXTHStrh2Strh done
# Rescheduled
# [752] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj544
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj543
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj551
# [753] else clockticks6502+=1;
	ldr	r0,.Lj552
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj552
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj554
.Lj551:
	ldr	r0,.Lj552
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj552
	add	r0,r0,#1
	str	r0,[r1]
.Lj554:
.Lj542:
# [755] end;
	bx	r14
.Lj540:
	.long	U_$UNIT6502_$$_STATUS
.Lj543:
	.long	U_$UNIT6502_$$_PC
.Lj544:
	.long	U_$UNIT6502_$$_OLDPC
.Lj546:
	.long	U_$UNIT6502_$$_RELADDR
.Lj552:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le43:
	.size	UNIT6502_$$_BNE, .Le43 - UNIT6502_$$_BNE

.section .text.n_unit6502_$$_bpl
	.balign 4
UNIT6502_$$_BPL:
# [759] begin
# [760] if ((status and FLAG_SIGN) = 0) then
	ldr	r0,.Lj559
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	bne	.Lj561
# [762] oldpc := pc;
	ldr	r0,.Lj562
# Rescheduled
	ldr	r2,.Lj563
	ldrh	r0,[r0]
# Rescheduled
# [763] pc += reladdr;
	ldr	r1,.Lj562
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj565
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj562
# Peephole UXTHStrh2Strh done
# Rescheduled
# [764] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj563
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj562
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj570
# [765] else clockticks6502+=1;
	ldr	r0,.Lj571
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj571
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj573
.Lj570:
	ldr	r0,.Lj571
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj571
	add	r0,r0,#1
	str	r0,[r1]
.Lj573:
.Lj561:
# [767] end;
	bx	r14
.Lj559:
	.long	U_$UNIT6502_$$_STATUS
.Lj562:
	.long	U_$UNIT6502_$$_PC
.Lj563:
	.long	U_$UNIT6502_$$_OLDPC
.Lj565:
	.long	U_$UNIT6502_$$_RELADDR
.Lj571:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le44:
	.size	UNIT6502_$$_BPL, .Le44 - UNIT6502_$$_BPL

.section .text.n_unit6502_$$_bra
	.balign 4
UNIT6502_$$_BRA:
# [771] begin
# [772] oldpc := pc;
	ldr	r0,.Lj578
# Rescheduled
	ldr	r2,.Lj579
	ldrh	r0,[r0]
# Rescheduled
# [773] pc += reladdr;
	ldr	r1,.Lj578
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj581
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj578
# Peephole UXTHStrh2Strh done
# Rescheduled
# [774] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj579
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj578
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj586
# [775] else clockticks6502+=1;
	ldr	r0,.Lj587
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj587
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj589
.Lj586:
	ldr	r0,.Lj587
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj587
	add	r0,r0,#1
	str	r0,[r1]
.Lj589:
# [776] end;
	bx	r14
.Lj578:
	.long	U_$UNIT6502_$$_PC
.Lj579:
	.long	U_$UNIT6502_$$_OLDPC
.Lj581:
	.long	U_$UNIT6502_$$_RELADDR
.Lj587:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le45:
	.size	UNIT6502_$$_BRA, .Le45 - UNIT6502_$$_BRA

.section .text.n_unit6502_$$_brk
	.balign 4
UNIT6502_$$_BRK:
# [780] begin
# Rescheduled
# [781] pc+=1;
	ldr	r0,.Lj594
	stmfd	r13!,{r4,r14}
	ldrh	r0,[r0]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj594
	uxth	r1,r0
# Rescheduled
# [782] push16(pc); //push next instruction address onto stack
	ldr	r0,.Lj594
	strh	r1,[r2]
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUSH16$WORD
# [783] push8(status or FLAG_BREAK); //push CPU status to stack
	ldr	r0,.Lj597
	ldrb	r0,[r0]
	orr	r0,r0,#16
	uxth	r0,r0
	bl	UNIT6502_$$_PUSH8$WORD
# [225] {$define setinterrupt:= status :=status or FLAG_INTERRUPT}
	ldr	r0,.Lj597
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj597
	orr	r0,r0,#4
	strb	r0,[r1]
# [785] pc := word(read6502($FFFE)) or (word(read6502($FFFF)) shl 8);
	mov	r0,#254
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#255
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj594
# [786] end;
	orr	r0,r4,r0,lsl #8
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj594:
	.long	U_$UNIT6502_$$_PC
.Lj597:
	.long	U_$UNIT6502_$$_STATUS
.Le46:
	.size	UNIT6502_$$_BRK, .Le46 - UNIT6502_$$_BRK

.section .text.n_unit6502_$$_bvc
	.balign 4
UNIT6502_$$_BVC:
# [790] begin
# [791] if ((status and FLAG_OVERFLOW) = 0) then
	ldr	r0,.Lj603
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#64
	bne	.Lj605
# [793] oldpc := pc;
	ldr	r0,.Lj606
# Rescheduled
	ldr	r2,.Lj607
	ldrh	r0,[r0]
# Rescheduled
# [794] pc += reladdr;
	ldr	r1,.Lj606
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj609
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj606
# Peephole UXTHStrh2Strh done
# Rescheduled
# [795] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj607
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj606
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj614
# [796] else clockticks6502+=1;
	ldr	r0,.Lj615
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj615
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj617
.Lj614:
	ldr	r0,.Lj615
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj615
	add	r0,r0,#1
	str	r0,[r1]
.Lj617:
.Lj605:
# [798] end;
	bx	r14
.Lj603:
	.long	U_$UNIT6502_$$_STATUS
.Lj606:
	.long	U_$UNIT6502_$$_PC
.Lj607:
	.long	U_$UNIT6502_$$_OLDPC
.Lj609:
	.long	U_$UNIT6502_$$_RELADDR
.Lj615:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le47:
	.size	UNIT6502_$$_BVC, .Le47 - UNIT6502_$$_BVC

.section .text.n_unit6502_$$_bvs
	.balign 4
UNIT6502_$$_BVS:
# [802] begin
# [803] if ((status and FLAG_OVERFLOW) = FLAG_OVERFLOW) then
	ldr	r0,.Lj622
	ldrb	r0,[r0]
	and	r0,r0,#64
	cmp	r0,#64
	bne	.Lj624
# [805] oldpc := pc;
	ldr	r0,.Lj625
# Rescheduled
	ldr	r2,.Lj626
	ldrh	r0,[r0]
# Rescheduled
# [806] pc += reladdr;
	ldr	r1,.Lj625
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj628
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj625
# Peephole UXTHStrh2Strh done
# Rescheduled
# [807] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r1,.Lj626
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj625
	and	r2,r0,#65280
	ldrh	r0,[r1]
	and	r0,r0,#65280
	cmp	r2,r0
	beq	.Lj633
# [808] else clockticks6502+=1;
	ldr	r0,.Lj634
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj634
	add	r0,r0,#2
	str	r0,[r1]
	b	.Lj636
.Lj633:
	ldr	r0,.Lj634
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj634
	add	r0,r0,#1
	str	r0,[r1]
.Lj636:
.Lj624:
# [810] end;
	bx	r14
.Lj622:
	.long	U_$UNIT6502_$$_STATUS
.Lj625:
	.long	U_$UNIT6502_$$_PC
.Lj626:
	.long	U_$UNIT6502_$$_OLDPC
.Lj628:
	.long	U_$UNIT6502_$$_RELADDR
.Lj634:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le48:
	.size	UNIT6502_$$_BVS, .Le48 - UNIT6502_$$_BVS

.section .text.n_unit6502_$$_clc
	.balign 4
UNIT6502_$$_CLC:
# [814] begin
	ldr	r0,.Lj641
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj641
	bic	r0,r0,#1
	strb	r0,[r1]
# [816] end;
	bx	r14
.Lj641:
	.long	U_$UNIT6502_$$_STATUS
.Le49:
	.size	UNIT6502_$$_CLC, .Le49 - UNIT6502_$$_CLC

.section .text.n_unit6502_$$_cld
	.balign 4
UNIT6502_$$_CLD:
# [820] begin
# [228] {$define cleardecimal:= status := status and not(FLAG_DECIMAL)}
	ldr	r0,.Lj645
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj645
	bic	r0,r0,#8
	strb	r0,[r1]
# [822] end;
	bx	r14
.Lj645:
	.long	U_$UNIT6502_$$_STATUS
.Le50:
	.size	UNIT6502_$$_CLD, .Le50 - UNIT6502_$$_CLD

.section .text.n_unit6502_$$_cli
	.balign 4
UNIT6502_$$_CLI:
# [826] begin
# [226] {$define clearinterrupt:= status:= status and not(FLAG_INTERRUPT)}
	ldr	r0,.Lj649
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj649
	bic	r0,r0,#4
	strb	r0,[r1]
# [828] end;
	bx	r14
.Lj649:
	.long	U_$UNIT6502_$$_STATUS
.Le51:
	.size	UNIT6502_$$_CLI, .Le51 - UNIT6502_$$_CLI

.section .text.n_unit6502_$$_clv
	.balign 4
UNIT6502_$$_CLV:
# [832] begin
	ldr	r0,.Lj653
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj653
	bic	r0,r0,#64
	strb	r0,[r1]
# [834] end;
	bx	r14
.Lj653:
	.long	U_$UNIT6502_$$_STATUS
.Le52:
	.size	UNIT6502_$$_CLV, .Le52 - UNIT6502_$$_CLV

.section .text.n_unit6502_$$_cmp
	.balign 4
UNIT6502_$$_CMP:
# [838] begin
	stmfd	r13!,{r14}
# Rescheduled
# [839] penaltyop := 1;
	ldr	r0,.Lj657
	mov	r1,#1
	strb	r1,[r0]
# [840] value := byte(getvalue);
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r1,.Lj658
	and	r0,r0,#255
# Rescheduled
# [841] aresult := word(a) - value;
	ldr	r2,.Lj659
	strh	r0,[r1]
# Rescheduled
	ldr	r0,.Lj658
# Rescheduled
	ldrh	r0,[r0]
	ldrb	r1,[r2]
	sub	r0,r1,r0
# Rescheduled
	ldr	r2,.Lj661
# Peephole UXTHStrh2Strh done
# Rescheduled
# [842] if (a >= (value and $00FF)) then setcarry else clearcarry;
	ldr	r1,.Lj658
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r2,.Lj659
	and	r1,r0,#255
	ldrb	r0,[r2]
	cmp	r1,r0
	bhi	.Lj665
	ldr	r0,.Lj666
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj666
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj668
.Lj665:
	ldr	r0,.Lj666
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj666
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj668:
# [843] if (a = (byte(value and $00FF))) then setzero else clearzero;
	ldr	r0,.Lj658
	ldrh	r0,[r0]
# Peephole AndAnd2And done
# Rescheduled
# Rescheduled
	ldr	r2,.Lj659
	and	r1,r0,#255
	ldrb	r0,[r2]
	cmp	r1,r0
	bne	.Lj674
	ldr	r0,.Lj666
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj666
	orr	r0,r0,#2
	strb	r0,[r1]
	b	.Lj677
.Lj674:
	ldr	r0,.Lj666
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj666
	bic	r0,r0,#2
	strb	r0,[r1]
.Lj677:
# [844] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj661
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj682
	ldr	r0,.Lj666
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj666
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj685
.Lj682:
	ldr	r0,.Lj666
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj666
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj685:
# [845] end;
	ldmfd	r13!,{r15}
.Lj657:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj658:
	.long	U_$UNIT6502_$$_VALUE
.Lj659:
	.long	U_$UNIT6502_$$_A
.Lj661:
	.long	U_$UNIT6502_$$_ARESULT
.Lj666:
	.long	U_$UNIT6502_$$_STATUS
.Le53:
	.size	UNIT6502_$$_CMP, .Le53 - UNIT6502_$$_CMP

.section .text.n_unit6502_$$_cpx
	.balign 4
UNIT6502_$$_CPX:
# [849] begin
	stmfd	r13!,{r14}
# [850] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r1,.Lj690
# Rescheduled
# [851] aresult := word(x) - value;
	ldr	r2,.Lj691
	strh	r0,[r1]
# Rescheduled
	ldr	r0,.Lj690
# Rescheduled
	ldrh	r0,[r0]
	ldrb	r1,[r2]
	sub	r0,r1,r0
# Rescheduled
	ldr	r2,.Lj693
# Peephole UXTHStrh2Strh done
# Rescheduled
# [852] if (x >= (value and $00FF)) then setcarry else clearcarry;
	ldr	r1,.Lj690
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r2,.Lj691
	and	r1,r0,#255
	ldrb	r0,[r2]
	cmp	r1,r0
	bhi	.Lj697
	ldr	r0,.Lj698
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj698
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj700
.Lj697:
	ldr	r0,.Lj698
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj698
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj700:
# [853] if (x = (byte(value and $00FF))) then setzero else clearzero;
	ldr	r0,.Lj690
	ldrh	r0,[r0]
# Peephole AndAnd2And done
# Rescheduled
# Rescheduled
	ldr	r2,.Lj691
	and	r1,r0,#255
	ldrb	r0,[r2]
	cmp	r1,r0
	bne	.Lj706
	ldr	r0,.Lj698
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj698
	orr	r0,r0,#2
	strb	r0,[r1]
	b	.Lj709
.Lj706:
	ldr	r0,.Lj698
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj698
	bic	r0,r0,#2
	strb	r0,[r1]
.Lj709:
# [854] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj693
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj714
	ldr	r0,.Lj698
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj698
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj717
.Lj714:
	ldr	r0,.Lj698
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj698
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj717:
# [855] end;
	ldmfd	r13!,{r15}
.Lj690:
	.long	U_$UNIT6502_$$_VALUE
.Lj691:
	.long	U_$UNIT6502_$$_X
.Lj693:
	.long	U_$UNIT6502_$$_ARESULT
.Lj698:
	.long	U_$UNIT6502_$$_STATUS
.Le54:
	.size	UNIT6502_$$_CPX, .Le54 - UNIT6502_$$_CPX

.section .text.n_unit6502_$$_cpy
	.balign 4
UNIT6502_$$_CPY:
# [859] begin
	stmfd	r13!,{r14}
# [860] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj722
# Rescheduled
# [861] aresult := word(y) - value;
	ldr	r1,.Lj723
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj722
# Rescheduled
	ldrh	r0,[r0]
	ldrb	r1,[r1]
	sub	r0,r1,r0
# Rescheduled
	ldr	r2,.Lj725
	uxth	r1,r0
# Rescheduled
# [862] if (y >= (value and $00FF)) then setcarry else clearcarry;
	ldr	r0,.Lj722
	strh	r1,[r2]
	ldrh	r0,[r0]
# Rescheduled
	ldr	r1,.Lj723
	and	r2,r0,#255
	ldrb	r0,[r1]
	cmp	r2,r0
	bhi	.Lj729
	ldr	r0,.Lj730
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj730
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj732
.Lj729:
	ldr	r0,.Lj730
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj730
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj732:
# [863] if (y = (value and $00FF)) then setzero else clearzero;
	ldr	r0,.Lj722
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj723
	and	r1,r0,#255
	ldrb	r0,[r2]
	cmp	r1,r0
	bne	.Lj738
	ldr	r0,.Lj730
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj730
	orr	r0,r0,#2
	strb	r0,[r1]
	b	.Lj741
.Lj738:
	ldr	r0,.Lj730
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj730
	bic	r0,r0,#2
	strb	r0,[r1]
.Lj741:
# [864] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj725
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj746
	ldr	r0,.Lj730
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj730
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj749
.Lj746:
	ldr	r0,.Lj730
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj730
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj749:
# [865] end;
	ldmfd	r13!,{r15}
.Lj722:
	.long	U_$UNIT6502_$$_VALUE
.Lj723:
	.long	U_$UNIT6502_$$_Y
.Lj725:
	.long	U_$UNIT6502_$$_ARESULT
.Lj730:
	.long	U_$UNIT6502_$$_STATUS
.Le55:
	.size	UNIT6502_$$_CPY, .Le55 - UNIT6502_$$_CPY

.section .text.n_unit6502_$$_dea
	.balign 4
UNIT6502_$$_DEA:
# [869] begin
	stmfd	r13!,{r14}
# [870] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj754
# Rescheduled
# [871] aresult := value - 1;
	ldr	r1,.Lj754
	strh	r0,[r2]
	ldrh	r0,[r1]
	sub	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj756
# Peephole UXTHStrh2Strh done
# Rescheduled
# [872] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj756
	strh	r0,[r2]
	ldrh	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj759
	ldr	r0,.Lj760
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj760
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj762
.Lj759:
	ldr	r0,.Lj760
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj760
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj762:
# [873] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj756
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj767
	ldr	r0,.Lj760
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj760
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj770
.Lj767:
	ldr	r0,.Lj760
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj760
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj770:
# [874] putvalue(aresult);
	ldr	r0,.Lj756
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [875] end;
	ldmfd	r13!,{r15}
.Lj754:
	.long	U_$UNIT6502_$$_VALUE
.Lj756:
	.long	U_$UNIT6502_$$_ARESULT
.Lj760:
	.long	U_$UNIT6502_$$_STATUS
.Le56:
	.size	UNIT6502_$$_DEA, .Le56 - UNIT6502_$$_DEA

.section .text.n_unit6502_$$_dex
	.balign 4
UNIT6502_$$_DEX:
# [879] begin
# [880] x-=1;
	ldr	r0,.Lj776
	ldrb	r0,[r0]
	sub	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj776
	and	r1,r0,#255
# Rescheduled
# [881] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj776
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj780
	ldr	r0,.Lj781
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj781
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj783
.Lj780:
	ldr	r0,.Lj781
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj781
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj783:
# [882] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj776
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj788
	ldr	r0,.Lj781
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj781
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj791
.Lj788:
	ldr	r0,.Lj781
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj781
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj791:
# [883] end;
	bx	r14
.Lj776:
	.long	U_$UNIT6502_$$_X
.Lj781:
	.long	U_$UNIT6502_$$_STATUS
.Le57:
	.size	UNIT6502_$$_DEX, .Le57 - UNIT6502_$$_DEX

.section .text.n_unit6502_$$_dey
	.balign 4
UNIT6502_$$_DEY:
# [887] begin
# [888] y-=1;
	ldr	r0,.Lj796
	ldrb	r0,[r0]
	sub	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj796
	and	r1,r0,#255
# Rescheduled
# [889] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj796
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj800
	ldr	r0,.Lj801
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj801
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj803
.Lj800:
	ldr	r0,.Lj801
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj801
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj803:
# [890] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj796
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj808
	ldr	r0,.Lj801
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj801
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj811
.Lj808:
	ldr	r0,.Lj801
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj801
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj811:
# [891] end;
	bx	r14
.Lj796:
	.long	U_$UNIT6502_$$_Y
.Lj801:
	.long	U_$UNIT6502_$$_STATUS
.Le58:
	.size	UNIT6502_$$_DEY, .Le58 - UNIT6502_$$_DEY

.section .text.n_unit6502_$$_eor
	.balign 4
UNIT6502_$$_EOR:
# [895] begin
	stmfd	r13!,{r14}
# Rescheduled
# [896] penaltyop := 1;
	ldr	r1,.Lj816
	mov	r0,#1
	strb	r0,[r1]
# [897] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj817
# Rescheduled
# [898] aresult := a xor value;
	ldr	r1,.Lj818
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj817
	ldrb	r1,[r1]
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj820
	eor	r1,r0,r1
# Rescheduled
# [899] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj820
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj823
	ldr	r0,.Lj824
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj824
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj826
.Lj823:
	ldr	r0,.Lj824
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj824
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj826:
# [900] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj820
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj831
	ldr	r0,.Lj824
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj824
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj834
.Lj831:
	ldr	r0,.Lj824
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj824
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj834:
# [901] a:=byte(aresult and $00FF);
	ldr	r0,.Lj820
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
# Rescheduled
	ldr	r1,.Lj818
	ldrh	r0,[r0]
	strb	r0,[r1]
# [902] end;
	ldmfd	r13!,{r15}
.Lj816:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj817:
	.long	U_$UNIT6502_$$_VALUE
.Lj818:
	.long	U_$UNIT6502_$$_A
.Lj820:
	.long	U_$UNIT6502_$$_ARESULT
.Lj824:
	.long	U_$UNIT6502_$$_STATUS
.Le59:
	.size	UNIT6502_$$_EOR, .Le59 - UNIT6502_$$_EOR

.section .text.n_unit6502_$$_ina
	.balign 4
UNIT6502_$$_INA:
# [906] begin
	stmfd	r13!,{r14}
# [907] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj841
# Rescheduled
# [908] aresult := value + 1;
	ldr	r1,.Lj841
	strh	r0,[r2]
	ldrh	r0,[r1]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj843
# Peephole UXTHStrh2Strh done
# Rescheduled
# [909] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj843
	strh	r0,[r2]
	ldrh	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj846
	ldr	r0,.Lj847
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj847
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj849
.Lj846:
	ldr	r0,.Lj847
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj847
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj849:
# [910] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj843
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj854
	ldr	r0,.Lj847
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj847
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj857
.Lj854:
	ldr	r0,.Lj847
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj847
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj857:
# [911] putvalue(aresult);
	ldr	r0,.Lj843
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [912] end;
	ldmfd	r13!,{r15}
.Lj841:
	.long	U_$UNIT6502_$$_VALUE
.Lj843:
	.long	U_$UNIT6502_$$_ARESULT
.Lj847:
	.long	U_$UNIT6502_$$_STATUS
.Le60:
	.size	UNIT6502_$$_INA, .Le60 - UNIT6502_$$_INA

.section .text.n_unit6502_$$_inx
	.balign 4
UNIT6502_$$_INX:
# [916] begin
# [917] x+=1;
	ldr	r0,.Lj863
	ldrb	r0,[r0]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj863
	and	r1,r0,#255
# Rescheduled
# [918] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj863
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj867
	ldr	r0,.Lj868
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj868
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj870
.Lj867:
	ldr	r0,.Lj868
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj868
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj870:
# [919] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj863
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj875
	ldr	r0,.Lj868
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj868
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj878
.Lj875:
	ldr	r0,.Lj868
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj868
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj878:
# [920] end;
	bx	r14
.Lj863:
	.long	U_$UNIT6502_$$_X
.Lj868:
	.long	U_$UNIT6502_$$_STATUS
.Le61:
	.size	UNIT6502_$$_INX, .Le61 - UNIT6502_$$_INX

.section .text.n_unit6502_$$_iny
	.balign 4
UNIT6502_$$_INY:
# [924] begin
# [925] y+=1;
	ldr	r0,.Lj883
	ldrb	r0,[r0]
	add	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj883
	and	r1,r0,#255
# Rescheduled
# [926] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj883
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj887
	ldr	r0,.Lj888
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj888
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj890
.Lj887:
	ldr	r0,.Lj888
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj888
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj890:
# [927] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj883
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj895
	ldr	r0,.Lj888
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj888
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj898
.Lj895:
	ldr	r0,.Lj888
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj888
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj898:
# [928] end;
	bx	r14
.Lj883:
	.long	U_$UNIT6502_$$_Y
.Lj888:
	.long	U_$UNIT6502_$$_STATUS
.Le62:
	.size	UNIT6502_$$_INY, .Le62 - UNIT6502_$$_INY

.section .text.n_unit6502_$$_jmp
	.balign 4
UNIT6502_$$_JMP:
# [932] begin
# [933] pc := ea;
	ldr	r0,.Lj903
# Rescheduled
# Rescheduled
	ldrh	r0,[r0]
	ldr	r1,.Lj904
	strh	r0,[r1]
# [934] end;
	bx	r14
.Lj903:
	.long	U_$UNIT6502_$$_EA
.Lj904:
	.long	U_$UNIT6502_$$_PC
.Le63:
	.size	UNIT6502_$$_JMP, .Le63 - UNIT6502_$$_JMP

.section .text.n_unit6502_$$_jsr
	.balign 4
UNIT6502_$$_JSR:
# [938] begin
# Rescheduled
# [939] push16(pc - 1);
	ldr	r0,.Lj907
	stmfd	r13!,{r14}
	ldrh	r0,[r0]
	sub	r0,r0,#1
	uxth	r0,r0
	bl	UNIT6502_$$_PUSH16$WORD
# [940] pc := ea;
	ldr	r0,.Lj908
# Rescheduled
# Rescheduled
	ldrh	r0,[r0]
	ldr	r1,.Lj907
	strh	r0,[r1]
# [941] end;
	ldmfd	r13!,{r15}
.Lj907:
	.long	U_$UNIT6502_$$_PC
.Lj908:
	.long	U_$UNIT6502_$$_EA
.Le64:
	.size	UNIT6502_$$_JSR, .Le64 - UNIT6502_$$_JSR

.section .text.n_unit6502_$$_lda
	.balign 4
UNIT6502_$$_LDA:
# [945] begin
	stmfd	r13!,{r14}
# Rescheduled
# [946] penaltyop := 1;
	ldr	r0,.Lj912
	mov	r1,#1
	strb	r1,[r0]
# [947] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj913
# Rescheduled
# [948] a := (value and $00FF);
	ldr	r1,.Lj913
	strh	r0,[r2]
	ldrh	r0,[r1]
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r2,.Lj915
# Rescheduled
# [949] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj915
	strb	r0,[r2]
	ldrb	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj918
	ldr	r0,.Lj919
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj919
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj921
.Lj918:
	ldr	r0,.Lj919
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj919
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj921:
# [950] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj915
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj926
	ldr	r0,.Lj919
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj919
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj929
.Lj926:
	ldr	r0,.Lj919
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj919
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj929:
# [951] end;
	ldmfd	r13!,{r15}
.Lj912:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj913:
	.long	U_$UNIT6502_$$_VALUE
.Lj915:
	.long	U_$UNIT6502_$$_A
.Lj919:
	.long	U_$UNIT6502_$$_STATUS
.Le65:
	.size	UNIT6502_$$_LDA, .Le65 - UNIT6502_$$_LDA

.section .text.n_unit6502_$$_ldc
	.balign 4
UNIT6502_$$_LDC:
# [956] begin
# [958] end;
	bx	r14
.Le66:
	.size	UNIT6502_$$_LDC, .Le66 - UNIT6502_$$_LDC

.section .text.n_unit6502_$$_ldd
	.balign 4
UNIT6502_$$_LDD:
# [962] begin
# [964] end;
	bx	r14
.Le67:
	.size	UNIT6502_$$_LDD, .Le67 - UNIT6502_$$_LDD

.section .text.n_unit6502_$$_ldx
	.balign 4
UNIT6502_$$_LDX:
# [969] begin
	stmfd	r13!,{r14}
# Rescheduled
# [970] penaltyop := 1;
	ldr	r0,.Lj938
	mov	r1,#1
	strb	r1,[r0]
# [971] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj939
# Rescheduled
# [972] x := (value and $00FF);
	ldr	r1,.Lj939
	strh	r0,[r2]
	ldrh	r0,[r1]
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r2,.Lj941
# Rescheduled
# [973] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj941
	strb	r0,[r2]
	ldrb	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj944
	ldr	r0,.Lj945
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj945
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj947
.Lj944:
	ldr	r0,.Lj945
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj945
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj947:
# [974] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj941
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj952
	ldr	r0,.Lj945
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj945
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj955
.Lj952:
	ldr	r0,.Lj945
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj945
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj955:
# [975] end;
	ldmfd	r13!,{r15}
.Lj938:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj939:
	.long	U_$UNIT6502_$$_VALUE
.Lj941:
	.long	U_$UNIT6502_$$_X
.Lj945:
	.long	U_$UNIT6502_$$_STATUS
.Le68:
	.size	UNIT6502_$$_LDX, .Le68 - UNIT6502_$$_LDX

.section .text.n_unit6502_$$_ldy
	.balign 4
UNIT6502_$$_LDY:
# [979] begin
	stmfd	r13!,{r14}
# Rescheduled
# [980] penaltyop := 1;
	ldr	r0,.Lj960
	mov	r1,#1
	strb	r1,[r0]
# [981] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj961
# Rescheduled
# [982] y := (value and $00FF);
	ldr	r1,.Lj961
	strh	r0,[r2]
	ldrh	r0,[r1]
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r2,.Lj963
# Rescheduled
# [983] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj963
	strb	r0,[r2]
	ldrb	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj966
	ldr	r0,.Lj967
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj967
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj969
.Lj966:
	ldr	r0,.Lj967
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj967
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj969:
# [984] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj963
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj974
	ldr	r0,.Lj967
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj967
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj977
.Lj974:
	ldr	r0,.Lj967
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj967
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj977:
# [985] end;
	ldmfd	r13!,{r15}
.Lj960:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj961:
	.long	U_$UNIT6502_$$_VALUE
.Lj963:
	.long	U_$UNIT6502_$$_Y
.Lj967:
	.long	U_$UNIT6502_$$_STATUS
.Le69:
	.size	UNIT6502_$$_LDY, .Le69 - UNIT6502_$$_LDY

.section .text.n_unit6502_$$_lsr
	.balign 4
UNIT6502_$$_LSR:
# [989] begin
	stmfd	r13!,{r14}
# [990] value := getvalue and $FF;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj982
	and	r0,r0,#255
# Rescheduled
# [991] aresult := value shr 1;
	ldr	r1,.Lj982
	strh	r0,[r2]
	ldrh	r0,[r1]
	mov	r0,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj984
	uxth	r1,r0
# Rescheduled
# [992] if (value and 1)=1 then setcarry else clearcarry;
	ldr	r0,.Lj982
	strh	r1,[r2]
	ldrh	r0,[r0]
	and	r0,r0,#1
	cmp	r0,#1
	bne	.Lj987
	ldr	r0,.Lj988
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj988
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj990
.Lj987:
	ldr	r0,.Lj988
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj988
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj990:
# [993] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj984
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj995
	ldr	r0,.Lj988
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj988
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj998
.Lj995:
	ldr	r0,.Lj988
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj988
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj998:
# [994] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj984
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1003
	ldr	r0,.Lj988
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj988
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1006
.Lj1003:
	ldr	r0,.Lj988
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj988
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1006:
# [995] putvalue(aresult);
	ldr	r0,.Lj984
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [996] end;
	ldmfd	r13!,{r15}
.Lj982:
	.long	U_$UNIT6502_$$_VALUE
.Lj984:
	.long	U_$UNIT6502_$$_ARESULT
.Lj988:
	.long	U_$UNIT6502_$$_STATUS
.Le70:
	.size	UNIT6502_$$_LSR, .Le70 - UNIT6502_$$_LSR

.section .text.n_unit6502_$$_nop
	.balign 4
UNIT6502_$$_NOP:
# [1000] begin
# [1001] case opcode of
	ldr	r0,.Lj1020
	ldrb	r0,[r0]
	cmp	r0,#28
	bcc	.Lj1013
	subs	r0,r0,#28
	beq	.Lj1014
	subs	r0,r0,#32
	beq	.Lj1015
	subs	r0,r0,#32
	beq	.Lj1016
	subs	r0,r0,#32
	beq	.Lj1017
	subs	r0,r0,#96
	beq	.Lj1018
	subs	r0,r0,#32
	beq	.Lj1019
	b	.Lj1013
.Lj1014:
# Rescheduled
# [1002] $1C:  penaltyop := 1;
	ldr	r1,.Lj1021
	mov	r0,#1
	strb	r0,[r1]
	b	.Lj1012
.Lj1015:
# Rescheduled
# [1003] $3C:  penaltyop := 1;
	ldr	r1,.Lj1021
	mov	r0,#1
	strb	r0,[r1]
	b	.Lj1012
.Lj1016:
# Rescheduled
# [1004] $5C:  penaltyop := 1;
	ldr	r1,.Lj1021
	mov	r0,#1
	strb	r0,[r1]
	b	.Lj1012
.Lj1017:
# Rescheduled
# [1005] $7C:  penaltyop := 1;
	ldr	r1,.Lj1021
	mov	r0,#1
	strb	r0,[r1]
	b	.Lj1012
.Lj1018:
# Rescheduled
# [1006] $DC:  penaltyop := 1;
	ldr	r1,.Lj1021
	mov	r0,#1
	strb	r0,[r1]
	b	.Lj1012
.Lj1019:
# Rescheduled
# [1007] $FC:  penaltyop := 1;
	ldr	r1,.Lj1021
	mov	r0,#1
	strb	r0,[r1]
.Lj1013:
.Lj1012:
# [1009] end;
	bx	r14
.Lj1020:
	.long	U_$UNIT6502_$$_OPCODE
.Lj1021:
	.long	U_$UNIT6502_$$_PENALTYOP
.Le71:
	.size	UNIT6502_$$_NOP, .Le71 - UNIT6502_$$_NOP

.section .text.n_unit6502_$$_ora
	.balign 4
UNIT6502_$$_ORA:
# [1013] begin
	stmfd	r13!,{r14}
# Rescheduled
# [1014] penaltyop := 1;
	ldr	r1,.Lj1029
	mov	r0,#1
	strb	r0,[r1]
# [1015] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj1030
# Rescheduled
# [1016] aresult := a or value;
	ldr	r1,.Lj1031
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj1030
	ldrb	r1,[r1]
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1033
	orr	r1,r0,r1
# Rescheduled
# [1017] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1033
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1036
	ldr	r0,.Lj1037
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1037
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1039
.Lj1036:
	ldr	r0,.Lj1037
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1037
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1039:
# [1018] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1033
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1044
	ldr	r0,.Lj1037
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1037
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1047
.Lj1044:
	ldr	r0,.Lj1037
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1037
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1047:
# [1019] a:=byte(aresult and $00FF);
	ldr	r0,.Lj1033
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
# Rescheduled
	ldr	r1,.Lj1031
	ldrh	r0,[r0]
	strb	r0,[r1]
# [1020] end;
	ldmfd	r13!,{r15}
.Lj1029:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1030:
	.long	U_$UNIT6502_$$_VALUE
.Lj1031:
	.long	U_$UNIT6502_$$_A
.Lj1033:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1037:
	.long	U_$UNIT6502_$$_STATUS
.Le72:
	.size	UNIT6502_$$_ORA, .Le72 - UNIT6502_$$_ORA

.section .text.n_unit6502_$$_pha
	.balign 4
UNIT6502_$$_PHA:
# [1024] begin
# Rescheduled
# [1025] push8(a);
	ldr	r0,.Lj1054
	stmfd	r13!,{r14}
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [1026] end;
	ldmfd	r13!,{r15}
.Lj1054:
	.long	U_$UNIT6502_$$_A
.Le73:
	.size	UNIT6502_$$_PHA, .Le73 - UNIT6502_$$_PHA

.section .text.n_unit6502_$$_phc
	.balign 4
UNIT6502_$$_PHC:
# [1030] begin
# [1032] end;
	bx	r14
.Le74:
	.size	UNIT6502_$$_PHC, .Le74 - UNIT6502_$$_PHC

.section .text.n_unit6502_$$_phd
	.balign 4
UNIT6502_$$_PHD:
# [1036] begin
# [1038] end;
	bx	r14
.Le75:
	.size	UNIT6502_$$_PHD, .Le75 - UNIT6502_$$_PHD

.section .text.n_unit6502_$$_phx
	.balign 4
UNIT6502_$$_PHX:
# [1042] begin
# Rescheduled
# [1043] push8(x);
	ldr	r0,.Lj1061
	stmfd	r13!,{r14}
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [1044] end;
	ldmfd	r13!,{r15}
.Lj1061:
	.long	U_$UNIT6502_$$_X
.Le76:
	.size	UNIT6502_$$_PHX, .Le76 - UNIT6502_$$_PHX

.section .text.n_unit6502_$$_phy
	.balign 4
UNIT6502_$$_PHY:
# [1048] begin
# Rescheduled
# [1049] push8(y);
	ldr	r0,.Lj1064
	stmfd	r13!,{r14}
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [1050] end;
	ldmfd	r13!,{r15}
.Lj1064:
	.long	U_$UNIT6502_$$_Y
.Le77:
	.size	UNIT6502_$$_PHY, .Le77 - UNIT6502_$$_PHY

.section .text.n_unit6502_$$_php
	.balign 4
UNIT6502_$$_PHP:
# [1054] begin
# Rescheduled
# [1055] push8(status or FLAG_BREAK);
	ldr	r0,.Lj1067
	stmfd	r13!,{r14}
	ldrb	r0,[r0]
	orr	r0,r0,#16
	uxth	r0,r0
	bl	UNIT6502_$$_PUSH8$WORD
# [1056] end;
	ldmfd	r13!,{r15}
.Lj1067:
	.long	U_$UNIT6502_$$_STATUS
.Le78:
	.size	UNIT6502_$$_PHP, .Le78 - UNIT6502_$$_PHP

.section .text.n_unit6502_$$_pla
	.balign 4
UNIT6502_$$_PLA:
# [1060] begin
	stmfd	r13!,{r14}
# [1061] a := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
# Rescheduled
	ldr	r2,.Lj1070
# Rescheduled
# [1062] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj1070
	strb	r0,[r2]
	ldrb	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1073
	ldr	r0,.Lj1074
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1074
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1076
.Lj1073:
	ldr	r0,.Lj1074
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1074
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1076:
# [1063] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1070
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1081
	ldr	r0,.Lj1074
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1074
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1084
.Lj1081:
	ldr	r0,.Lj1074
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1074
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1084:
# [1064] end;
	ldmfd	r13!,{r15}
.Lj1070:
	.long	U_$UNIT6502_$$_A
.Lj1074:
	.long	U_$UNIT6502_$$_STATUS
.Le79:
	.size	UNIT6502_$$_PLA, .Le79 - UNIT6502_$$_PLA

.section .text.n_unit6502_$$_plc
	.balign 4
UNIT6502_$$_PLC:
# [1068] begin
# [1070] end;
	bx	r14
.Le80:
	.size	UNIT6502_$$_PLC, .Le80 - UNIT6502_$$_PLC

.section .text.n_unit6502_$$_pld
	.balign 4
UNIT6502_$$_PLD:
# [1074] begin
# [1076] end;
	bx	r14
.Le81:
	.size	UNIT6502_$$_PLD, .Le81 - UNIT6502_$$_PLD

.section .text.n_unit6502_$$_plx
	.balign 4
UNIT6502_$$_PLX:
# [1080] begin
	stmfd	r13!,{r14}
# [1081] x := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
# Rescheduled
	ldr	r2,.Lj1093
# Rescheduled
# [1082] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj1093
	strb	r0,[r2]
	ldrb	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1096
	ldr	r0,.Lj1097
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1097
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1099
.Lj1096:
	ldr	r0,.Lj1097
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1097
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1099:
# [1083] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1093
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1104
	ldr	r0,.Lj1097
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1097
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1107
.Lj1104:
	ldr	r0,.Lj1097
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1097
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1107:
# [1084] end;
	ldmfd	r13!,{r15}
.Lj1093:
	.long	U_$UNIT6502_$$_X
.Lj1097:
	.long	U_$UNIT6502_$$_STATUS
.Le82:
	.size	UNIT6502_$$_PLX, .Le82 - UNIT6502_$$_PLX

.section .text.n_unit6502_$$_ply
	.balign 4
UNIT6502_$$_PLY:
# [1088] begin
	stmfd	r13!,{r14}
# [1089] y := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
# Rescheduled
	ldr	r2,.Lj1112
# Rescheduled
# [1090] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r1,.Lj1112
	strb	r0,[r2]
	ldrb	r0,[r1]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1115
	ldr	r0,.Lj1116
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1116
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1118
.Lj1115:
	ldr	r0,.Lj1116
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1116
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1118:
# [1091] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1112
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1123
	ldr	r0,.Lj1116
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1116
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1126
.Lj1123:
	ldr	r0,.Lj1116
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1116
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1126:
# [1092] end;
	ldmfd	r13!,{r15}
.Lj1112:
	.long	U_$UNIT6502_$$_Y
.Lj1116:
	.long	U_$UNIT6502_$$_STATUS
.Le83:
	.size	UNIT6502_$$_PLY, .Le83 - UNIT6502_$$_PLY

.section .text.n_unit6502_$$_plp
	.balign 4
UNIT6502_$$_PLP:
# [1096] begin
	stmfd	r13!,{r14}
# [1097] status := pull8 or FLAG_CONSTANT;
	bl	UNIT6502_$$_PULL8$$BYTE
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1131
	orr	r0,r0,#32
	strb	r0,[r1]
# [1098] end;
	ldmfd	r13!,{r15}
.Lj1131:
	.long	U_$UNIT6502_$$_STATUS
.Le84:
	.size	UNIT6502_$$_PLP, .Le84 - UNIT6502_$$_PLP

.section .text.n_unit6502_$$_rol
	.balign 4
UNIT6502_$$_ROL:
# [1102] begin
	stmfd	r13!,{r14}
# [1103] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj1134
# Rescheduled
# [1104] aresult := (value shl 1) or (status and FLAG_CARRY);
	ldr	r1,.Lj1135
	strh	r0,[r2]
	ldrb	r0,[r1]
# Rescheduled
	ldr	r1,.Lj1134
	and	r2,r0,#1
	ldrh	r0,[r1]
# Peephole FoldShiftProcess done
# [1109] end;
	orr	r0,r2,r0,lsl #1
# Rescheduled
	ldr	r2,.Lj1137
	uxth	r1,r0
# Rescheduled
# [1105] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj1137
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj1140
	ldr	r0,.Lj1135
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1135
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj1143
.Lj1140:
	ldr	r0,.Lj1135
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1135
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj1143:
# [1106] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1137
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1148
	ldr	r0,.Lj1135
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1135
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1151
.Lj1148:
	ldr	r0,.Lj1135
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1135
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1151:
# [1107] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1137
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1156
	ldr	r0,.Lj1135
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1135
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1159
.Lj1156:
	ldr	r0,.Lj1135
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1135
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1159:
# [1108] putvalue(aresult);
	ldr	r0,.Lj1137
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
	ldmfd	r13!,{r15}
.Lj1134:
	.long	U_$UNIT6502_$$_VALUE
.Lj1135:
	.long	U_$UNIT6502_$$_STATUS
.Lj1137:
	.long	U_$UNIT6502_$$_ARESULT
.Le85:
	.size	UNIT6502_$$_ROL, .Le85 - UNIT6502_$$_ROL

.section .text.n_unit6502_$$_ror
	.balign 4
UNIT6502_$$_ROR:
# [1113] begin
	stmfd	r13!,{r14}
# [1114] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj1165
# Rescheduled
# [1115] aresult := (value shr 1) or ((status and FLAG_CARRY) shl 7);
	ldr	r1,.Lj1166
	strh	r0,[r2]
	ldrb	r0,[r1]
	and	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj1165
	mov	r2,r0,lsl #7
	ldrh	r0,[r1]
# Peephole FoldShiftProcess done
# [1120] end;
	orr	r0,r2,r0,lsr #1
# Rescheduled
	ldr	r2,.Lj1168
	uxth	r1,r0
# Rescheduled
# [1116] if (value and 1)=1 then setcarry else clearcarry;
	ldr	r0,.Lj1165
	strh	r1,[r2]
	ldrh	r0,[r0]
	and	r0,r0,#1
	cmp	r0,#1
	bne	.Lj1171
	ldr	r0,.Lj1166
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1166
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj1174
.Lj1171:
	ldr	r0,.Lj1166
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1166
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj1174:
# [1117] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1168
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1179
	ldr	r0,.Lj1166
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1166
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1182
.Lj1179:
	ldr	r0,.Lj1166
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1166
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1182:
# [1118] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1168
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1187
	ldr	r0,.Lj1166
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1166
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1190
.Lj1187:
	ldr	r0,.Lj1166
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1166
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1190:
# [1119] putvalue(aresult);
	ldr	r0,.Lj1168
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
	ldmfd	r13!,{r15}
.Lj1165:
	.long	U_$UNIT6502_$$_VALUE
.Lj1166:
	.long	U_$UNIT6502_$$_STATUS
.Lj1168:
	.long	U_$UNIT6502_$$_ARESULT
.Le86:
	.size	UNIT6502_$$_ROR, .Le86 - UNIT6502_$$_ROR

.section .text.n_unit6502_$$_rti
	.balign 4
UNIT6502_$$_RTI:
# [1124] begin
	stmfd	r13!,{r14}
# [1125] status := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
# Rescheduled
	ldr	r1,.Lj1196
	strb	r0,[r1]
# [1126] value := pull16;
	bl	UNIT6502_$$_PULL16$$WORD
# Rescheduled
	ldr	r1,.Lj1197
# Rescheduled
# [1127] pc := value;
	ldr	r2,.Lj1197
	strh	r0,[r1]
# Rescheduled
# Rescheduled
	ldrh	r1,[r2]
	ldr	r0,.Lj1199
	strh	r1,[r0]
# [1130] end;
	ldmfd	r13!,{r15}
.Lj1196:
	.long	U_$UNIT6502_$$_STATUS
.Lj1197:
	.long	U_$UNIT6502_$$_VALUE
.Lj1199:
	.long	U_$UNIT6502_$$_PC
.Le87:
	.size	UNIT6502_$$_RTI, .Le87 - UNIT6502_$$_RTI

.section .text.n_unit6502_$$_rts
	.balign 4
UNIT6502_$$_RTS:
# [1134] begin
	stmfd	r13!,{r14}
# [1135] value := pull16;
	bl	UNIT6502_$$_PULL16$$WORD
# Rescheduled
	ldr	r2,.Lj1202
# Rescheduled
# [1136] pc := value + 1;
	ldr	r1,.Lj1202
	strh	r0,[r2]
	ldrh	r0,[r1]
# Rescheduled
# Peephole UXTHStrh2Strh done
# Rescheduled
	ldr	r1,.Lj1204
	add	r0,r0,#1
	strh	r0,[r1]
# [1137] end;
	ldmfd	r13!,{r15}
.Lj1202:
	.long	U_$UNIT6502_$$_VALUE
.Lj1204:
	.long	U_$UNIT6502_$$_PC
.Le88:
	.size	UNIT6502_$$_RTS, .Le88 - UNIT6502_$$_RTS

.section .text.n_unit6502_$$_sbc
	.balign 4
UNIT6502_$$_SBC:
# [1141] begin
	stmfd	r13!,{r14}
# Rescheduled
# [1142] penaltyop := 1;
	ldr	r1,.Lj1207
	mov	r0,#1
	strb	r0,[r1]
# [1143] value := getvalue xor $00FF;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj1208
	eor	r0,r0,#255
# Rescheduled
# [1144] aresult := word(a) + value + (status and FLAG_CARRY);
	ldr	r1,.Lj1209
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj1208
	ldrb	r1,[r1]
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1211
	add	r1,r0,r1
	ldrb	r0,[r2]
	and	r0,r0,#1
	add	r0,r0,r1
# Rescheduled
	ldr	r2,.Lj1212
	uxth	r1,r0
# Rescheduled
# [1145] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj1212
	strh	r1,[r2]
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj1215
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	orr	r0,r0,#1
	strb	r0,[r1]
	b	.Lj1218
.Lj1215:
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	bic	r0,r0,#1
	strb	r0,[r1]
.Lj1218:
# [1146] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1212
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1223
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1226
.Lj1223:
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1226:
# [1147] if ((aresult xor a) and (aresult xor value) and $0080)<>0 then setoverflow else clearoverflow;
	ldr	r0,.Lj1209
# Rescheduled
	ldr	r1,.Lj1212
	ldrb	r2,[r0]
	ldrh	r0,[r1]
# Rescheduled
	ldr	r1,.Lj1212
	eor	r2,r0,r2
# Rescheduled
	ldr	r0,.Lj1208
# Rescheduled
	ldrh	r0,[r0]
	ldrh	r1,[r1]
	eor	r0,r0,r1
	and	r0,r0,r2
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1234
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	orr	r0,r0,#64
	strb	r0,[r1]
	b	.Lj1237
.Lj1234:
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	bic	r0,r0,#64
	strb	r0,[r1]
.Lj1237:
# [1148] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1212
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1242
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1211
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1245
.Lj1242:
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1245:
# [1150] if (status and FLAG_DECIMAL)<>0 then
	ldr	r0,.Lj1211
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#8
	beq	.Lj1250
# [1152] inc(clockticks6502);
	ldr	r2,.Lj1251
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj1211
	str	r1,[r2]
	ldrb	r0,[r0]
	bic	r0,r0,#1
# Rescheduled
	ldr	r2,.Lj1211
	and	r1,r0,#255
# Rescheduled
# [1154] if ((a and $0F) > $09) then a += $06;
	ldr	r0,.Lj1209
	strb	r1,[r2]
	ldrb	r0,[r0]
	and	r0,r0,#15
	cmp	r0,#9
	ble	.Lj1256
	ldr	r0,.Lj1209
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1209
	add	r0,r0,#6
	strb	r0,[r1]
.Lj1256:
# [1155] if ((a and $F0) > $90) then
	ldr	r0,.Lj1209
	ldrb	r0,[r0]
	and	r0,r0,#240
	cmp	r0,#144
	bls	.Lj1261
# [1157] a += $60;
	ldr	r0,.Lj1209
	ldrb	r0,[r0]
	add	r0,r0,#96
# Rescheduled
	ldr	r2,.Lj1209
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	strb	r0,[r2]
	ldrb	r0,[r1]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1211
	orr	r0,r0,#1
	strb	r0,[r1]
.Lj1261:
.Lj1250:
# [1162] a:=byte(aresult and $00FF);
	ldr	r0,.Lj1212
# Peephole AndAnd2And done
# Peephole AndStrb2Strb done
# Rescheduled
# Rescheduled
	ldr	r1,.Lj1209
	ldrh	r0,[r0]
	strb	r0,[r1]
# [1163] end;
	ldmfd	r13!,{r15}
.Lj1207:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1208:
	.long	U_$UNIT6502_$$_VALUE
.Lj1209:
	.long	U_$UNIT6502_$$_A
.Lj1211:
	.long	U_$UNIT6502_$$_STATUS
.Lj1212:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1251:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le89:
	.size	UNIT6502_$$_SBC, .Le89 - UNIT6502_$$_SBC

.section .text.n_unit6502_$$_sec
	.balign 4
UNIT6502_$$_SEC:
# [1167] begin
	ldr	r0,.Lj1270
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1270
	orr	r0,r0,#1
	strb	r0,[r1]
# [1169] end;
	bx	r14
.Lj1270:
	.long	U_$UNIT6502_$$_STATUS
.Le90:
	.size	UNIT6502_$$_SEC, .Le90 - UNIT6502_$$_SEC

.section .text.n_unit6502_$$_sed
	.balign 4
UNIT6502_$$_SED:
# [1173] begin
# [227] {$define setdecimal:= status :=status or FLAG_DECIMAL}
	ldr	r0,.Lj1274
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1274
	orr	r0,r0,#8
	strb	r0,[r1]
# [1175] end;
	bx	r14
.Lj1274:
	.long	U_$UNIT6502_$$_STATUS
.Le91:
	.size	UNIT6502_$$_SED, .Le91 - UNIT6502_$$_SED

.section .text.n_unit6502_$$_sei
	.balign 4
UNIT6502_$$_SEI:
# [1179] begin
	ldr	r0,.Lj1278
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1278
	orr	r0,r0,#4
	strb	r0,[r1]
# [1181] end;
	bx	r14
.Lj1278:
	.long	U_$UNIT6502_$$_STATUS
.Le92:
	.size	UNIT6502_$$_SEI, .Le92 - UNIT6502_$$_SEI

.section .text.n_unit6502_$$_sta
	.balign 4
UNIT6502_$$_STA:
# [1185] begin
# Rescheduled
# [1186] putvalue(a);
	ldr	r0,.Lj1282
	stmfd	r13!,{r14}
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1187] end;
	ldmfd	r13!,{r15}
.Lj1282:
	.long	U_$UNIT6502_$$_A
.Le93:
	.size	UNIT6502_$$_STA, .Le93 - UNIT6502_$$_STA

.section .text.n_unit6502_$$_stc
	.balign 4
UNIT6502_$$_STC:
# [1191] begin
# [1193] end;
	bx	r14
.Le94:
	.size	UNIT6502_$$_STC, .Le94 - UNIT6502_$$_STC

.section .text.n_unit6502_$$_std
	.balign 4
UNIT6502_$$_STD:
# [1197] begin
# [1199] end;
	bx	r14
.Le95:
	.size	UNIT6502_$$_STD, .Le95 - UNIT6502_$$_STD

.section .text.n_unit6502_$$_stx
	.balign 4
UNIT6502_$$_STX:
# [1203] begin
# Rescheduled
# [1204] putvalue(x);
	ldr	r0,.Lj1289
	stmfd	r13!,{r14}
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1205] end;
	ldmfd	r13!,{r15}
.Lj1289:
	.long	U_$UNIT6502_$$_X
.Le96:
	.size	UNIT6502_$$_STX, .Le96 - UNIT6502_$$_STX

.section .text.n_unit6502_$$_sty
	.balign 4
UNIT6502_$$_STY:
# [1209] begin
# Rescheduled
# [1210] putvalue(y);
	ldr	r0,.Lj1292
	stmfd	r13!,{r14}
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1211] end;
	ldmfd	r13!,{r15}
.Lj1292:
	.long	U_$UNIT6502_$$_Y
.Le97:
	.size	UNIT6502_$$_STY, .Le97 - UNIT6502_$$_STY

.section .text.n_unit6502_$$_stz
	.balign 4
UNIT6502_$$_STZ:
# [1215] begin
	stmfd	r13!,{r14}
# [1216] putvalue(0);
	mov	r0,#0
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1217] end;
	ldmfd	r13!,{r15}
.Le98:
	.size	UNIT6502_$$_STZ, .Le98 - UNIT6502_$$_STZ

.section .text.n_unit6502_$$_tax
	.balign 4
UNIT6502_$$_TAX:
# [1221] begin
# [1222] x := a;
	ldr	r0,.Lj1297
# Rescheduled
	ldr	r2,.Lj1298
	ldrb	r1,[r0]
# Rescheduled
# [1223] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1298
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1301
	ldr	r0,.Lj1302
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1302
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1304
.Lj1301:
	ldr	r0,.Lj1302
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1302
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1304:
# [1224] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1298
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1309
	ldr	r0,.Lj1302
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1302
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1312
.Lj1309:
	ldr	r0,.Lj1302
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1302
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1312:
# [1225] end;
	bx	r14
.Lj1297:
	.long	U_$UNIT6502_$$_A
.Lj1298:
	.long	U_$UNIT6502_$$_X
.Lj1302:
	.long	U_$UNIT6502_$$_STATUS
.Le99:
	.size	UNIT6502_$$_TAX, .Le99 - UNIT6502_$$_TAX

.section .text.n_unit6502_$$_tay
	.balign 4
UNIT6502_$$_TAY:
# [1229] begin
# [1230] y := a;
	ldr	r0,.Lj1317
# Rescheduled
	ldr	r2,.Lj1318
	ldrb	r1,[r0]
# Rescheduled
# [1231] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1318
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1321
	ldr	r0,.Lj1322
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1322
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1324
.Lj1321:
	ldr	r0,.Lj1322
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1322
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1324:
# [1232] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1318
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1329
	ldr	r0,.Lj1322
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1322
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1332
.Lj1329:
	ldr	r0,.Lj1322
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1322
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1332:
# [1233] end;
	bx	r14
.Lj1317:
	.long	U_$UNIT6502_$$_A
.Lj1318:
	.long	U_$UNIT6502_$$_Y
.Lj1322:
	.long	U_$UNIT6502_$$_STATUS
.Le100:
	.size	UNIT6502_$$_TAY, .Le100 - UNIT6502_$$_TAY

.section .text.n_unit6502_$$_trb
	.balign 4
UNIT6502_$$_TRB:
# [1237] begin
	stmfd	r13!,{r14}
# [1238] value:=getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj1337
# Rescheduled
# [1239] aresult:=value and (not a);
	ldr	r1,.Lj1338
	strh	r0,[r2]
	ldrb	r0,[r1]
	mvn	r1,r0,lsl #24
# Rescheduled
	ldr	r0,.Lj1337
# Peephole FoldShiftProcess done
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1340
# [1242] end;
	and	r1,r0,r1,lsr #24
# Rescheduled
# [1240] putvalue(aresult);
	ldr	r0,.Lj1340
	strh	r1,[r2]
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1241] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1340
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1344
	ldr	r0,.Lj1345
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1345
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1347
.Lj1344:
	ldr	r0,.Lj1345
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1345
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1347:
	ldmfd	r13!,{r15}
.Lj1337:
	.long	U_$UNIT6502_$$_VALUE
.Lj1338:
	.long	U_$UNIT6502_$$_A
.Lj1340:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1345:
	.long	U_$UNIT6502_$$_STATUS
.Le101:
	.size	UNIT6502_$$_TRB, .Le101 - UNIT6502_$$_TRB

.section .text.n_unit6502_$$_tsb
	.balign 4
UNIT6502_$$_TSB:
# [1246] begin
	stmfd	r13!,{r14}
# [1247] value:=getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
# Rescheduled
	ldr	r2,.Lj1352
# Rescheduled
# [1248] aresult:=value or a;
	ldr	r1,.Lj1353
	strh	r0,[r2]
# Rescheduled
	ldr	r0,.Lj1352
	ldrb	r1,[r1]
	ldrh	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1355
	orr	r1,r0,r1
# Rescheduled
# [1249] putvalue(aresult);
	ldr	r0,.Lj1355
	strh	r1,[r2]
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1250] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1355
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1359
	ldr	r0,.Lj1360
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1360
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1362
.Lj1359:
	ldr	r0,.Lj1360
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1360
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1362:
# [1251] end;
	ldmfd	r13!,{r15}
.Lj1352:
	.long	U_$UNIT6502_$$_VALUE
.Lj1353:
	.long	U_$UNIT6502_$$_A
.Lj1355:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1360:
	.long	U_$UNIT6502_$$_STATUS
.Le102:
	.size	UNIT6502_$$_TSB, .Le102 - UNIT6502_$$_TSB

.section .text.n_unit6502_$$_tsx
	.balign 4
UNIT6502_$$_TSX:
# [1255] begin
# [1256] x := sp;
	ldr	r0,.Lj1367
# Rescheduled
	ldr	r2,.Lj1368
	ldrb	r1,[r0]
# Rescheduled
# [1257] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1368
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1371
	ldr	r0,.Lj1372
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1372
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1374
.Lj1371:
	ldr	r0,.Lj1372
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1372
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1374:
# [1258] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1368
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1379
	ldr	r0,.Lj1372
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1372
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1382
.Lj1379:
	ldr	r0,.Lj1372
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1372
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1382:
# [1259] end;
	bx	r14
.Lj1367:
	.long	U_$UNIT6502_$$_SP
.Lj1368:
	.long	U_$UNIT6502_$$_X
.Lj1372:
	.long	U_$UNIT6502_$$_STATUS
.Le103:
	.size	UNIT6502_$$_TSX, .Le103 - UNIT6502_$$_TSX

.section .text.n_unit6502_$$_txa
	.balign 4
UNIT6502_$$_TXA:
# [1263] begin
# [1264] a := x;
	ldr	r0,.Lj1387
# Rescheduled
	ldr	r2,.Lj1388
	ldrb	r1,[r0]
# Rescheduled
# [1265] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1388
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1391
	ldr	r0,.Lj1392
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1392
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1394
.Lj1391:
	ldr	r0,.Lj1392
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1392
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1394:
# [1266] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1388
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1399
	ldr	r0,.Lj1392
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1392
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1402
.Lj1399:
	ldr	r0,.Lj1392
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1392
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1402:
# [1267] end;
	bx	r14
.Lj1387:
	.long	U_$UNIT6502_$$_X
.Lj1388:
	.long	U_$UNIT6502_$$_A
.Lj1392:
	.long	U_$UNIT6502_$$_STATUS
.Le104:
	.size	UNIT6502_$$_TXA, .Le104 - UNIT6502_$$_TXA

.section .text.n_unit6502_$$_txs
	.balign 4
UNIT6502_$$_TXS:
# [1271] begin
# [1272] sp := x;
	ldr	r0,.Lj1407
# Rescheduled
# Rescheduled
	ldrb	r0,[r0]
	ldr	r1,.Lj1408
	strb	r0,[r1]
# [1273] end;
	bx	r14
.Lj1407:
	.long	U_$UNIT6502_$$_X
.Lj1408:
	.long	U_$UNIT6502_$$_SP
.Le105:
	.size	UNIT6502_$$_TXS, .Le105 - UNIT6502_$$_TXS

.section .text.n_unit6502_$$_tya
	.balign 4
UNIT6502_$$_TYA:
# [1277] begin
# [1278] a := y;
	ldr	r0,.Lj1411
# Rescheduled
	ldr	r2,.Lj1412
	ldrb	r1,[r0]
# Rescheduled
# [1279] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1412
	strb	r1,[r2]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1415
	ldr	r0,.Lj1416
	ldrb	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1416
	orr	r0,r0,#128
	strb	r0,[r1]
	b	.Lj1418
.Lj1415:
	ldr	r0,.Lj1416
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1416
	bic	r0,r0,#128
	strb	r0,[r1]
.Lj1418:
# [1280] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1412
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1423
	ldr	r0,.Lj1416
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1416
	bic	r0,r0,#2
	strb	r0,[r1]
	b	.Lj1426
.Lj1423:
	ldr	r0,.Lj1416
	ldrb	r0,[r0]
# Rescheduled
# Peephole AndStrb2Strb done
# Rescheduled
	ldr	r1,.Lj1416
	orr	r0,r0,#2
	strb	r0,[r1]
.Lj1426:
# [1281] end;
	bx	r14
.Lj1411:
	.long	U_$UNIT6502_$$_Y
.Lj1412:
	.long	U_$UNIT6502_$$_A
.Lj1416:
	.long	U_$UNIT6502_$$_STATUS
.Le106:
	.size	UNIT6502_$$_TYA, .Le106 - UNIT6502_$$_TYA

.section .text.n_unit6502_$$_lax
	.balign 4
UNIT6502_$$_LAX:
# [1287] begin
	stmfd	r13!,{r14}
# [1288] lda;
	bl	UNIT6502_$$_LDA
# [1289] ldx;
	bl	UNIT6502_$$_LDX
# [1290] end;
	ldmfd	r13!,{r15}
.Le107:
	.size	UNIT6502_$$_LAX, .Le107 - UNIT6502_$$_LAX

.section .text.n_unit6502_$$_sax
	.balign 4
UNIT6502_$$_SAX:
# [1294] begin
	stmfd	r13!,{r14}
# [1295] sta;
	bl	UNIT6502_$$_STA
# [1296] stx;
	bl	UNIT6502_$$_STX
# [1297] putvalue(a and x);
	ldr	r0,.Lj1433
# Rescheduled
	ldr	r2,.Lj1434
	ldrb	r1,[r0]
	ldrb	r0,[r2]
	and	r0,r0,r1
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1298] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1435
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1437
	ldr	r0,.Lj1439
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1440
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1437:
# [1299] end;
	ldmfd	r13!,{r15}
.Lj1433:
	.long	U_$UNIT6502_$$_A
.Lj1434:
	.long	U_$UNIT6502_$$_X
.Lj1435:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1439:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1440:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le108:
	.size	UNIT6502_$$_SAX, .Le108 - UNIT6502_$$_SAX

.section .text.n_unit6502_$$_dcp
	.balign 4
UNIT6502_$$_DCP:
# [1303] begin
	stmfd	r13!,{r14}
# [1304] dea;
	bl	UNIT6502_$$_DEA
# [1305] cmp;
	bl	UNIT6502_$$_CMP
# [1306] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1443
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1445
	ldr	r0,.Lj1447
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1448
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1445:
# [1307] end;
	ldmfd	r13!,{r15}
.Lj1443:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1447:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1448:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le109:
	.size	UNIT6502_$$_DCP, .Le109 - UNIT6502_$$_DCP

.section .text.n_unit6502_$$_isb
	.balign 4
UNIT6502_$$_ISB:
# [1311] begin
	stmfd	r13!,{r14}
# [1312] ina;
	bl	UNIT6502_$$_INA
# [1313] sbc;
	bl	UNIT6502_$$_SBC
# [1314] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1451
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1453
	ldr	r0,.Lj1455
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1456
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1453:
# [1315] end;
	ldmfd	r13!,{r15}
.Lj1451:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1455:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1456:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le110:
	.size	UNIT6502_$$_ISB, .Le110 - UNIT6502_$$_ISB

.section .text.n_unit6502_$$_slo
	.balign 4
UNIT6502_$$_SLO:
# [1319] begin
	stmfd	r13!,{r14}
# [1320] asl;
	bl	UNIT6502_$$_ASL
# [1321] ora;
	bl	UNIT6502_$$_ORA
# [1322] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1459
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1461
	ldr	r0,.Lj1463
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1464
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1461:
# [1323] end;
	ldmfd	r13!,{r15}
.Lj1459:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1463:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1464:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le111:
	.size	UNIT6502_$$_SLO, .Le111 - UNIT6502_$$_SLO

.section .text.n_unit6502_$$_rla
	.balign 4
UNIT6502_$$_RLA:
# [1328] begin
	stmfd	r13!,{r14}
# [1329] rol;
	bl	UNIT6502_$$_ROL
# [1330] ana;
	bl	UNIT6502_$$_ANA
# [1331] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1467
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1469
	ldr	r0,.Lj1471
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1472
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1469:
# [1332] end;
	ldmfd	r13!,{r15}
.Lj1467:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1471:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1472:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le112:
	.size	UNIT6502_$$_RLA, .Le112 - UNIT6502_$$_RLA

.section .text.n_unit6502_$$_sre
	.balign 4
UNIT6502_$$_SRE:
# [1336] begin
	stmfd	r13!,{r14}
# [1337] lsr;
	bl	UNIT6502_$$_LSR
# [1338] eor;
	bl	UNIT6502_$$_EOR
# [1339] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1475
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1477
	ldr	r0,.Lj1479
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1480
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1477:
# [1340] end;
	ldmfd	r13!,{r15}
.Lj1475:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1479:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1480:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le113:
	.size	UNIT6502_$$_SRE, .Le113 - UNIT6502_$$_SRE

.section .text.n_unit6502_$$_rra
	.balign 4
UNIT6502_$$_RRA:
# [1344] begin
	stmfd	r13!,{r14}
# [1345] ror;
	bl	UNIT6502_$$_ROR
# [1346] adc;
	bl	UNIT6502_$$_ADC
# [1347] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1483
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1485
	ldr	r0,.Lj1487
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1488
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1485:
# [1348] end;
	ldmfd	r13!,{r15}
.Lj1483:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1487:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1488:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le114:
	.size	UNIT6502_$$_RRA, .Le114 - UNIT6502_$$_RRA
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$unit6502_$$_pc
	.balign 2
# [236] var pc:word;
	.size U_$UNIT6502_$$_PC,2
U_$UNIT6502_$$_PC:
	.zero 2

.section .bss.n_u_$unit6502_$$_sp
# [237] var sp,a,x,y,status:byte;
	.size U_$UNIT6502_$$_SP,1
U_$UNIT6502_$$_SP:
	.zero 1

.section .bss.n_u_$unit6502_$$_a
	.size U_$UNIT6502_$$_A,1
U_$UNIT6502_$$_A:
	.zero 1

.section .bss.n_u_$unit6502_$$_x
	.size U_$UNIT6502_$$_X,1
U_$UNIT6502_$$_X:
	.zero 1

.section .bss.n_u_$unit6502_$$_y
	.size U_$UNIT6502_$$_Y,1
U_$UNIT6502_$$_Y:
	.zero 1

.section .bss.n_u_$unit6502_$$_status
	.size U_$UNIT6502_$$_STATUS,1
U_$UNIT6502_$$_STATUS:
	.zero 1

.section .bss.n_u_$unit6502_$$_oldpc
	.balign 2
# [243] oldpc,ea,reladdr,value,aresult:word;
	.size U_$UNIT6502_$$_OLDPC,2
U_$UNIT6502_$$_OLDPC:
	.zero 2

.section .bss.n_u_$unit6502_$$_ea
	.balign 2
	.size U_$UNIT6502_$$_EA,2
U_$UNIT6502_$$_EA:
	.zero 2

.section .bss.n_u_$unit6502_$$_reladdr
	.balign 2
	.size U_$UNIT6502_$$_RELADDR,2
U_$UNIT6502_$$_RELADDR:
	.zero 2

.section .bss.n_u_$unit6502_$$_value
	.balign 2
	.size U_$UNIT6502_$$_VALUE,2
U_$UNIT6502_$$_VALUE:
	.zero 2

.section .bss.n_u_$unit6502_$$_aresult
	.balign 2
	.size U_$UNIT6502_$$_ARESULT,2
U_$UNIT6502_$$_ARESULT:
	.zero 2

.section .bss.n_u_$unit6502_$$_opcode
# [244] opcode:byte;
	.size U_$UNIT6502_$$_OPCODE,1
U_$UNIT6502_$$_OPCODE:
	.zero 1

.section .bss.n_u_$unit6502_$$_penaltyop
# [245] penaltyop,penaltyaddr:byte;
	.size U_$UNIT6502_$$_PENALTYOP,1
U_$UNIT6502_$$_PENALTYOP:
	.zero 1

.section .bss.n_u_$unit6502_$$_penaltyaddr
	.size U_$UNIT6502_$$_PENALTYADDR,1
U_$UNIT6502_$$_PENALTYADDR:
	.zero 1

.section .bss.n_u_$unit6502_$$_csa
	.balign 4
# [246] csa,dsa,csi,dsi:integer;
	.size U_$UNIT6502_$$_CSA,4
U_$UNIT6502_$$_CSA:
	.zero 4

.section .bss.n_u_$unit6502_$$_dsa
	.balign 4
	.size U_$UNIT6502_$$_DSA,4
U_$UNIT6502_$$_DSA:
	.zero 4

.section .bss.n_u_$unit6502_$$_csi
	.balign 4
	.size U_$UNIT6502_$$_CSI,4
U_$UNIT6502_$$_CSI:
	.zero 4

.section .bss.n_u_$unit6502_$$_dsi
	.balign 4
	.size U_$UNIT6502_$$_DSI,4
U_$UNIT6502_$$_DSI:
	.zero 4
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_TC_$UNIT6502_$$_INSTRUCTIONS
	.balign 4
.globl	TC_$UNIT6502_$$_INSTRUCTIONS
TC_$UNIT6502_$$_INSTRUCTIONS:
	.long	0
# [13] clockticks6502:integer=0;
.Le115:
	.size	TC_$UNIT6502_$$_INSTRUCTIONS, .Le115 - TC_$UNIT6502_$$_INSTRUCTIONS

.section .data.n_TC_$UNIT6502_$$_CLOCKTICKS6502
	.balign 4
.globl	TC_$UNIT6502_$$_CLOCKTICKS6502
TC_$UNIT6502_$$_CLOCKTICKS6502:
	.long	0
# [14] clockgoal6502:integer=0;
.Le116:
	.size	TC_$UNIT6502_$$_CLOCKTICKS6502, .Le116 - TC_$UNIT6502_$$_CLOCKTICKS6502

.section .data.n_TC_$UNIT6502_$$_CLOCKGOAL6502
	.balign 4
.globl	TC_$UNIT6502_$$_CLOCKGOAL6502
TC_$UNIT6502_$$_CLOCKGOAL6502:
	.long	0
# [15] jsrcnt:integer=0;
.Le117:
	.size	TC_$UNIT6502_$$_CLOCKGOAL6502, .Le117 - TC_$UNIT6502_$$_CLOCKGOAL6502

.section .data.n_TC_$UNIT6502_$$_JSRCNT
	.balign 4
.globl	TC_$UNIT6502_$$_JSRCNT
TC_$UNIT6502_$$_JSRCNT:
	.long	0
# [17] function read6502(address:integer):byte;
.Le118:
	.size	TC_$UNIT6502_$$_JSRCNT, .Le118 - TC_$UNIT6502_$$_JSRCNT

.section .data.n_TC_$UNIT6502_$$_ADDRTABLE
	.balign 4
TC_$UNIT6502_$$_ADDRTABLE:
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ACC
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ACC
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ACC
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ACC
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ACC
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ACC
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_IND
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IAX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPY
	.long	UNIT6502_$$_ZPY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPY
	.long	UNIT6502_$$_ZPY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_INDX
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_ZP
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_IMM
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_ABSO
	.long	UNIT6502_$$_REL
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_IZP
	.long	UNIT6502_$$_INDY
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_ZPX
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_IMP
	.long	UNIT6502_$$_ABSY
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
	.long	UNIT6502_$$_ABSX
# [169] var optable:array[0..255] of TOpcode=(
.Le119:
	.size	TC_$UNIT6502_$$_ADDRTABLE, .Le119 - TC_$UNIT6502_$$_ADDRTABLE

.section .data.n_TC_$UNIT6502_$$_OPTABLE
	.balign 4
TC_$UNIT6502_$$_OPTABLE:
	.long	UNIT6502_$$_BRK
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_LDC
	.long	UNIT6502_$$_SLO
	.long	UNIT6502_$$_TSB
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_ASL
	.long	UNIT6502_$$_SLO
	.long	UNIT6502_$$_PHP
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_ASL
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_TSB
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_ASL
	.long	UNIT6502_$$_SLO
	.long	UNIT6502_$$_BPL
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_SLO
	.long	UNIT6502_$$_TRB
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_ASL
	.long	UNIT6502_$$_SLO
	.long	UNIT6502_$$_CLC
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_INA
	.long	UNIT6502_$$_SLO
	.long	UNIT6502_$$_TRB
	.long	UNIT6502_$$_ORA
	.long	UNIT6502_$$_ASL
	.long	UNIT6502_$$_SLO
	.long	UNIT6502_$$_JSR
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_LDD
	.long	UNIT6502_$$_RLA
	.long	UNIT6502_$$_BIT
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_ROL
	.long	UNIT6502_$$_RLA
	.long	UNIT6502_$$_PLP
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_ROL
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_BIT
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_ROL
	.long	UNIT6502_$$_RLA
	.long	UNIT6502_$$_BMI
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_RLA
	.long	UNIT6502_$$_BIT
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_ROL
	.long	UNIT6502_$$_RLA
	.long	UNIT6502_$$_SEC
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_DEA
	.long	UNIT6502_$$_RLA
	.long	UNIT6502_$$_BIT
	.long	UNIT6502_$$_ANA
	.long	UNIT6502_$$_ROL
	.long	UNIT6502_$$_RLA
	.long	UNIT6502_$$_RTI
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_STC
	.long	UNIT6502_$$_SRE
	.long	UNIT6502_$$_PLD
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_LSR
	.long	UNIT6502_$$_SRE
	.long	UNIT6502_$$_PHA
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_LSR
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_JMP
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_LSR
	.long	UNIT6502_$$_SRE
	.long	UNIT6502_$$_BVC
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_SRE
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_LSR
	.long	UNIT6502_$$_SRE
	.long	UNIT6502_$$_CLI
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_PHY
	.long	UNIT6502_$$_SRE
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_EOR
	.long	UNIT6502_$$_LSR
	.long	UNIT6502_$$_SRE
	.long	UNIT6502_$$_RTS
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_STD
	.long	UNIT6502_$$_RRA
	.long	UNIT6502_$$_STZ
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_ROR
	.long	UNIT6502_$$_RRA
	.long	UNIT6502_$$_PLA
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_ROR
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_JMP
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_ROR
	.long	UNIT6502_$$_RRA
	.long	UNIT6502_$$_BVS
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_RRA
	.long	UNIT6502_$$_STZ
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_ROR
	.long	UNIT6502_$$_RRA
	.long	UNIT6502_$$_SEI
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_PLY
	.long	UNIT6502_$$_RRA
	.long	UNIT6502_$$_JMP
	.long	UNIT6502_$$_ADC
	.long	UNIT6502_$$_ROR
	.long	UNIT6502_$$_RRA
	.long	UNIT6502_$$_BRA
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_PLC
	.long	UNIT6502_$$_SAX
	.long	UNIT6502_$$_STY
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_STX
	.long	UNIT6502_$$_SAX
	.long	UNIT6502_$$_DEY
	.long	UNIT6502_$$_BIT
	.long	UNIT6502_$$_TXA
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_STY
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_STX
	.long	UNIT6502_$$_SAX
	.long	UNIT6502_$$_BCC
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_STY
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_STX
	.long	UNIT6502_$$_SAX
	.long	UNIT6502_$$_TYA
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_TXS
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_STZ
	.long	UNIT6502_$$_STA
	.long	UNIT6502_$$_STZ
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_LDY
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_LDX
	.long	UNIT6502_$$_LAX
	.long	UNIT6502_$$_LDY
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_LDX
	.long	UNIT6502_$$_LAX
	.long	UNIT6502_$$_TAY
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_TAX
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_LDY
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_LDX
	.long	UNIT6502_$$_LAX
	.long	UNIT6502_$$_BCS
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_LAX
	.long	UNIT6502_$$_LDY
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_LDX
	.long	UNIT6502_$$_LAX
	.long	UNIT6502_$$_CLV
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_TSX
	.long	UNIT6502_$$_LAX
	.long	UNIT6502_$$_LDY
	.long	UNIT6502_$$_LDA
	.long	UNIT6502_$$_LDX
	.long	UNIT6502_$$_LAX
	.long	UNIT6502_$$_CPY
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_PHC
	.long	UNIT6502_$$_DCP
	.long	UNIT6502_$$_CPY
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_DEA
	.long	UNIT6502_$$_DCP
	.long	UNIT6502_$$_INY
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_DEX
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_CPY
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_DEA
	.long	UNIT6502_$$_DCP
	.long	UNIT6502_$$_BNE
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_DCP
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_DEA
	.long	UNIT6502_$$_DCP
	.long	UNIT6502_$$_CLD
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_PHX
	.long	UNIT6502_$$_DCP
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_CMP
	.long	UNIT6502_$$_DEA
	.long	UNIT6502_$$_DCP
	.long	UNIT6502_$$_CPX
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_PHD
	.long	UNIT6502_$$_ISB
	.long	UNIT6502_$$_CPX
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_INA
	.long	UNIT6502_$$_ISB
	.long	UNIT6502_$$_INX
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_CPX
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_INA
	.long	UNIT6502_$$_ISB
	.long	UNIT6502_$$_BEQ
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_ISB
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_INA
	.long	UNIT6502_$$_ISB
	.long	UNIT6502_$$_SED
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_PLX
	.long	UNIT6502_$$_ISB
	.long	UNIT6502_$$_NOP
	.long	UNIT6502_$$_SBC
	.long	UNIT6502_$$_INA
	.long	UNIT6502_$$_ISB
# [189] var ticktable:array[0..255] of byte = (
.Le120:
	.size	TC_$UNIT6502_$$_OPTABLE, .Le120 - TC_$UNIT6502_$$_OPTABLE

.section .data.n_TC_$UNIT6502_$$_TICKTABLE
TC_$UNIT6502_$$_TICKTABLE:
	.byte	7,6,7,8,5,3,5,5,3,2,2,2,6,4,6,6,2,5,5,8,5,4,6,6,2,4,2,7,6,4,7,7,6,6,7,8,3,3,5,5,4,2,2,2,4,4,6,6,2,5,5,8,4,4,6,6,2,4,2,7,4,4,7,7,6,6,7,8,7,3,5
	.byte	5,3,2,2,2,3,4,6,6,2,5,5,8,4,4,6,6,2,4,3,7,4,4,7,7,6,6,7,8,3,3,5,5,4,2,2,2,5,4,6,6,2,5,5,8,4,4,6,6,2,4,4,7,6,4,7,7,3,6,7,6,3,3,3,3,2,2,2,2,4,4
	.byte	4,4,2,6,5,6,4,4,4,4,2,5,2,5,4,5,5,5,2,6,2,6,3,3,3,3,2,2,2,2,4,4,4,4,2,5,5,5,4,4,4,4,2,4,2,4,4,4,4,4,2,6,6,8,3,3,5,5,2,2,2,2,4,4,6,6,2,5,5,8,4
	.byte	4,6,6,2,4,3,7,4,4,7,7,2,6,6,8,3,3,5,5,2,2,2,2,4,4,6,6,2,5,5,8,4,4,6,6,2,4,4,7,4,4,7,7
.Le121:
	.size	TC_$UNIT6502_$$_TICKTABLE, .Le121 - TC_$UNIT6502_$$_TICKTABLE
# End asmlist al_typedconsts

