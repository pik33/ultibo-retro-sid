	.file "unit6502.pas"
# Begin asmlist al_procedures

.section .text.n_unit6502_$$_read6502$longint$$byte
	.balign 4
.globl	UNIT6502_$$_READ6502$LONGINT$$BYTE
UNIT6502_$$_READ6502$LONGINT$$BYTE:
# Var address located in register r0
# Var $result located in register r0
# [unit6502.pas]
# [249] begin
# [250] result:=ram[address and $FFFF];
	uxth	r0,r0
# Var $result located in register r0
	ldr	r1,.Lj5
	ldrb	r0,[r0, r1]
# [251] end;
	bx	r14
.Lj5:
	.long	U_$UNIT6502_$$_RAM+2
.Le0:
	.size	UNIT6502_$$_READ6502$LONGINT$$BYTE, .Le0 - UNIT6502_$$_READ6502$LONGINT$$BYTE

.section .text.n_unit6502_$$_write6502$longint$byte
	.balign 4
.globl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
UNIT6502_$$_WRITE6502$LONGINT$BYTE:
# Var address located in register r0
# Var value located in register r1
# [255] begin
# [256] ram[address and $FFFF]:=value;
	uxth	r0,r0
# Var value located in register r1
	ldr	r2,.Lj8
	strb	r1,[r0, r2]
# [257] end;
	bx	r14
.Lj8:
	.long	U_$UNIT6502_$$_RAM+2
.Le1:
	.size	UNIT6502_$$_WRITE6502$LONGINT$BYTE, .Le1 - UNIT6502_$$_WRITE6502$LONGINT$BYTE

.section .text.n_unit6502_$$_push32$longword
	.balign 4
UNIT6502_$$_PUSH32$LONGWORD:
# [263] begin
	stmfd	r13!,{r4,r14}
# Var pushval located in register r4
	mov	r4,r0
# [264] write6502(BASE_STACK+sp,(pushval shr 24) and $FF);
	mov	r1,r4,lsr #24
# Peephole LsrAnd2Lsr done
# Peephole LsrAnd2Lsr done
	ldr	r0,.Lj11
	ldrb	r0,[r0]
	add	r0,r0,#256
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [265] write6502(BASE_STACK+((sp-1) and $FF),(pushval shr 16) and $FF);
	ldr	r0,.Lj11
	ldrb	r0,[r0]
	sub	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
	mov	r1,r4,lsr #16
# Peephole AndAnd2And done
	and	r1,r1,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [266] write6502(BASE_STACK+((sp-2) and $FF),(pushval shr 8) and $FF);
	ldr	r0,.Lj11
	ldrb	r0,[r0]
	sub	r0,r0,#2
	and	r0,r0,#255
	add	r0,r0,#256
	mov	r1,r4,lsr #8
# Peephole AndAnd2And done
	and	r1,r1,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [267] write6502(BASE_STACK+((sp-3) and $FF),pushval and $FF);
	ldr	r0,.Lj11
	ldrb	r0,[r0]
	sub	r0,r0,#3
	and	r0,r0,#255
	add	r0,r0,#256
# Peephole AndAnd2And done
	and	r1,r4,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [268] sp-=4;
	ldr	r0,.Lj11
	ldrb	r0,[r0]
	sub	r0,r0,#4
	and	r0,r0,#255
	ldr	r1,.Lj11
	strb	r0,[r1]
# [269] end;
	ldmfd	r13!,{r4,r15}
.Lj11:
	.long	U_$UNIT6502_$$_SP
.Le2:
	.size	UNIT6502_$$_PUSH32$LONGWORD, .Le2 - UNIT6502_$$_PUSH32$LONGWORD

.section .text.n_unit6502_$$_push16$word
	.balign 4
UNIT6502_$$_PUSH16$WORD:
# [273] begin
	stmfd	r13!,{r4,r14}
# Var pushval located in register r4
	mov	r4,r0
# [274] write6502(BASE_STACK+sp,(pushval shr 8) and $FF);
	mov	r0,r4,lsr #8
# Peephole AndAnd2And done
	and	r1,r0,#255
	ldr	r0,.Lj19
	ldrb	r0,[r0]
	add	r0,r0,#256
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [275] write6502(BASE_STACK+((sp-1) and $FF),pushval and $FF);
	ldr	r0,.Lj19
	ldrb	r0,[r0]
	sub	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
# Peephole AndAnd2And done
	and	r1,r4,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [276] sp-=2;
	ldr	r0,.Lj19
	ldrb	r0,[r0]
	sub	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj19
	strb	r0,[r1]
# [277] end;
	ldmfd	r13!,{r4,r15}
.Lj19:
	.long	U_$UNIT6502_$$_SP
.Le3:
	.size	UNIT6502_$$_PUSH16$WORD, .Le3 - UNIT6502_$$_PUSH16$WORD

.section .text.n_unit6502_$$_push8$word
	.balign 4
UNIT6502_$$_PUSH8$WORD:
# [281] begin
	stmfd	r13!,{r14}
# Var pushval located in register r1
	mov	r1,r0
# [282] write6502(BASE_STACK+sp,pushval);
	ldr	r0,.Lj25
	ldrb	r0,[r0]
	add	r0,r0,#256
	and	r1,r1,#255
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [283] dec(sp);
	ldr	r1,.Lj25
	ldrb	r0,[r1]
	sub	r0,r0,#1
# Peephole AndStrb2Strb done
	strb	r0,[r1]
# [284] end;
	ldmfd	r13!,{r15}
.Lj25:
	.long	U_$UNIT6502_$$_SP
.Le4:
	.size	UNIT6502_$$_PUSH8$WORD, .Le4 - UNIT6502_$$_PUSH8$WORD

.section .text.n_unit6502_$$_pull32$$longword
	.balign 4
UNIT6502_$$_PULL32$$LONGWORD:
# [290] begin
	stmfd	r13!,{r4,r14}
# Var $result located in register r0
# Var temp32 located in register r0
# [291] temp32:=read6502(BASE_STACK + ((sp + 4) and $FF));
	ldr	r0,.Lj29
	ldrb	r0,[r0]
	add	r0,r0,#4
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var temp32 located in register r0
# [292] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 3) and $FF));
	mov	r4,r0,lsl #8
	ldr	r0,.Lj29
	ldrb	r0,[r0]
	add	r0,r0,#3
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r0,r0,r4
# Var temp32 located in register r0
# [293] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 2) and $FF));
	mov	r4,r0,lsl #8
	ldr	r0,.Lj29
	ldrb	r0,[r0]
	add	r0,r0,#2
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r0,r0,r4
# Var temp32 located in register r0
# [294] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 1) and $FF));
	mov	r4,r0,lsl #8
	ldr	r0,.Lj29
	ldrb	r0,[r0]
	add	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r0,r0,r4
# Var temp32 located in register r0
# Var $result located in register r0
# Var temp32 located in register r0
# [296] sp+=4;
	ldr	r1,.Lj29
	ldrb	r1,[r1]
	add	r1,r1,#4
	and	r1,r1,#255
	ldr	r2,.Lj29
	strb	r1,[r2]
# [297] end;
	ldmfd	r13!,{r4,r15}
.Lj29:
	.long	U_$UNIT6502_$$_SP
.Le5:
	.size	UNIT6502_$$_PULL32$$LONGWORD, .Le5 - UNIT6502_$$_PULL32$$LONGWORD

.section .text.n_unit6502_$$_pull16$$word
	.balign 4
UNIT6502_$$_PULL16$$WORD:
# [303] begin
	stmfd	r13!,{r4,r14}
# Var $result located in register r0
# Var temp16 located in register r0
# [304] temp16:=read6502(BASE_STACK + ((sp + 2) and $FF));
	ldr	r0,.Lj37
	ldrb	r0,[r0]
	add	r0,r0,#2
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var temp16 located in register r0
# [305] temp16:=(temp16 shl 8) + read6502(BASE_STACK + ((sp + 1) and $FF));
	mov	r4,r0,lsl #8
	ldr	r0,.Lj37
	ldrb	r0,[r0]
	add	r0,r0,#1
	and	r0,r0,#255
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	add	r0,r0,r4
	uxth	r0,r0
# Var temp16 located in register r0
# Var $result located in register r0
# Var temp16 located in register r0
# [307] sp+=2;
	ldr	r1,.Lj37
	ldrb	r1,[r1]
	add	r1,r1,#2
	and	r1,r1,#255
	ldr	r2,.Lj37
	strb	r1,[r2]
# [308] end;
	ldmfd	r13!,{r4,r15}
.Lj37:
	.long	U_$UNIT6502_$$_SP
.Le6:
	.size	UNIT6502_$$_PULL16$$WORD, .Le6 - UNIT6502_$$_PULL16$$WORD

.section .text.n_unit6502_$$_pull8$$byte
	.balign 4
UNIT6502_$$_PULL8$$BYTE:
# [312] begin
	stmfd	r13!,{r14}
# Var $result located in register r0
# [313] inc(sp);
	ldr	r1,.Lj43
	ldrb	r0,[r1]
	add	r0,r0,#1
# Peephole AndStrb2Strb done
	strb	r0,[r1]
# [314] result:=(read6502(BASE_STACK + sp));
	ldr	r0,.Lj43
	ldrb	r0,[r0]
	add	r0,r0,#256
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var $result located in register r0
# [315] end;
	ldmfd	r13!,{r15}
.Lj43:
	.long	U_$UNIT6502_$$_SP
.Le7:
	.size	UNIT6502_$$_PULL8$$BYTE, .Le7 - UNIT6502_$$_PULL8$$BYTE

.section .text.n_unit6502_$$_getvalue$$word
	.balign 4
UNIT6502_$$_GETVALUE$$WORD:
# [321] begin
	stmfd	r13!,{r4,r14}
# Var $result located in register r4
# Var ea2 located in register r0
# [322] ea2:=ea+ds^;
	ldr	r0,.Lj47
	ldrh	r1,[r0]
	ldr	r0,.Lj48
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r0,r0,r1
# Var ea2 located in register r0
# [323] if (addrtable[opcode] = @acc) then
	ldr	r1,.Lj49
	ldrb	r1,[r1]
	mov	r3,r1,lsl #2
	ldr	r1,.Lj50
	ldr	r2,.Lj51
	ldr	r2,[r3, r2]
	cmp	r2,r1
# [324] result:=a
	ldreq	r1,.Lj54
	ldreqb	r4,[r1]
# Peephole LdrMov2Ldr removed superfluous mov
	beq	.Lj55
# [326] result:=read6502(ea2);
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
.Lj55:
# [327] end;
	mov	r0,r4
	ldmfd	r13!,{r4,r15}
.Lj47:
	.long	U_$UNIT6502_$$_EA
.Lj48:
	.long	U_$UNIT6502_$$_DS
.Lj49:
	.long	U_$UNIT6502_$$_OPCODE
.Lj50:
	.long	UNIT6502_$$_ACC
.Lj51:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj54:
	.long	U_$UNIT6502_$$_A
.Le8:
	.size	UNIT6502_$$_GETVALUE$$WORD, .Le8 - UNIT6502_$$_GETVALUE$$WORD

.section .text.n_unit6502_$$_getvalue16$$word
	.balign 4
UNIT6502_$$_GETVALUE16$$WORD:
# [333] begin
	stmfd	r13!,{r4,r5,r14}
# Var $result located in register r0
# Var ea2 located in register r4
# [334] ea2:=ea+ds^;
	ldr	r0,.Lj58
	ldrh	r1,[r0]
	ldr	r0,.Lj59
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r4,r0,r1
# Var ea2 located in register r4
# Var ea2 located in register r4
# [335] result:=word(read6502(ea2)) or (word(read6502(ea2+1)) shl 8);
	mov	r0,r4
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	add	r0,r4,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [336] end;
	orr	r0,r5,r0,lsl #8
	uxth	r0,r0
# Var $result located in register r0
	ldmfd	r13!,{r4,r5,r15}
.Lj58:
	.long	U_$UNIT6502_$$_EA
.Lj59:
	.long	U_$UNIT6502_$$_DS
.Le9:
	.size	UNIT6502_$$_GETVALUE16$$WORD, .Le9 - UNIT6502_$$_GETVALUE16$$WORD

.section .text.n_unit6502_$$_getvalue32$$longword
	.balign 4
UNIT6502_$$_GETVALUE32$$LONGWORD:
# [342] begin
	stmfd	r13!,{r4,r5,r14}
# Var $result located in register r0
# Var ea2 located in register r4
# [344] ea2:=ea+ds^;
	ldr	r0,.Lj62
	ldrh	r1,[r0]
	ldr	r0,.Lj63
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r4,r0,r1
# Var ea2 located in register r4
# Var ea2 located in register r4
# [346] result:=cardinal(read6502(ea2))
	mov	r0,r4
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
# [347] or (cardinal(read6502(ea2+1)) shl 8)
	add	r0,r4,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [350] end;
	orr	r5,r5,r0,lsl #8
# [348] or (cardinal(read6502(ea2+2)) shl 16)
	add	r0,r4,#2
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	orr	r5,r5,r0,lsl #16
# [349] or (cardinal(read6502(ea2+3)) shl 24);
	add	r0,r4,#3
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	orr	r0,r5,r0,lsl #24
# Var $result located in register r0
	ldmfd	r13!,{r4,r5,r15}
.Lj62:
	.long	U_$UNIT6502_$$_EA
.Lj63:
	.long	U_$UNIT6502_$$_DS
.Le10:
	.size	UNIT6502_$$_GETVALUE32$$LONGWORD, .Le10 - UNIT6502_$$_GETVALUE32$$LONGWORD

.section .text.n_unit6502_$$_putvalue$word
	.balign 4
UNIT6502_$$_PUTVALUE$WORD:
# [356] begin
	stmfd	r13!,{r14}
# Var saveval located in register r1
# Var ea2 located in register r0
	mov	r1,r0
# [357] ea2:=ea+ds^;
	ldr	r0,.Lj66
	ldrh	r2,[r0]
	ldr	r0,.Lj67
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r0,r0,r2
# Var ea2 located in register r0
# [358] if (addrtable[opcode] = @acc) then a := byte(saveval and $00FF) else write6502(ea2, (saveval and $00FF));
	ldr	r2,.Lj68
	ldrb	r2,[r2]
	mov	r12,r2,lsl #2
	ldr	r2,.Lj69
	ldr	r3,.Lj70
	ldr	r3,[r12, r3]
	cmp	r3,r2
# Peephole AndAnd2And done
	andeq	r2,r1,#255
	ldreq	r3,.Lj73
	streqb	r2,[r3]
# Peephole AndAnd2And done
	andne	r1,r1,#255
	blne	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [359] end;
	ldmfd	r13!,{r15}
.Lj66:
	.long	U_$UNIT6502_$$_EA
.Lj67:
	.long	U_$UNIT6502_$$_DS
.Lj68:
	.long	U_$UNIT6502_$$_OPCODE
.Lj69:
	.long	UNIT6502_$$_ACC
.Lj70:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj73:
	.long	U_$UNIT6502_$$_A
.Le11:
	.size	UNIT6502_$$_PUTVALUE$WORD, .Le11 - UNIT6502_$$_PUTVALUE$WORD

.section .text.n_unit6502_$$_putvalue32$longword
	.balign 4
UNIT6502_$$_PUTVALUE32$LONGWORD:
# [365] begin
	stmfd	r13!,{r4,r5,r14}
# Var saveval located in register r4
# Var ea2 located in register r5
	mov	r4,r0
# [367] ea2:=ea+ds^;
	ldr	r0,.Lj77
	ldrh	r1,[r0]
	ldr	r0,.Lj78
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r5,r0,r1
# Var ea2 located in register r5
# Peephole AndAnd2And done
# [369] write6502(ea2, (saveval and $000000FF));
	and	r1,r4,#255
# Var ea2 located in register r5
	mov	r0,r5
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [370] write6502(ea2+1, ((saveval shl 8) and $000000FF));
	mov	r0,r4,lsl #8
# Peephole AndAnd2And done
	and	r1,r0,#255
	add	r0,r5,#1
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [371] write6502(ea2+2, ((saveval shl 16) and $000000FF));
	mov	r0,r4,lsl #16
# Peephole AndAnd2And done
	and	r1,r0,#255
	add	r0,r5,#2
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [372] write6502(ea2+3, ((saveval shl 24) and $000000FF));
	mov	r0,r4,lsl #24
# Peephole AndAnd2And done
	and	r1,r0,#255
	add	r0,r5,#3
	bl	UNIT6502_$$_WRITE6502$LONGINT$BYTE
# [373] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj77:
	.long	U_$UNIT6502_$$_EA
.Lj78:
	.long	U_$UNIT6502_$$_DS
.Le12:
	.size	UNIT6502_$$_PUTVALUE32$LONGWORD, .Le12 - UNIT6502_$$_PUTVALUE32$LONGWORD

.section .text.n_unit6502_$$_reset6502
	.balign 4
.globl	UNIT6502_$$_RESET6502
UNIT6502_$$_RESET6502:
# [377] begin
	stmfd	r13!,{r4,r14}
# [378] pc := word(read6502($FFFC)) or (word(read6502($FFFD) shl 8));
	mov	r0,#252
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#253
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r0,r0,lsl #8
	uxth	r0,r0
	orr	r1,r0,r4
	ldr	r0,.Lj81
	strh	r1,[r0]
# [379] a := 0;
	mov	r1,#0
	ldr	r0,.Lj82
	strb	r1,[r0]
# [380] x := 0;
	mov	r0,#0
	ldr	r1,.Lj83
	strb	r0,[r1]
# [381] y := 0;
	mov	r0,#0
	ldr	r1,.Lj84
	strb	r0,[r1]
# [382] sp := $FD;
	mov	r1,#253
	ldr	r0,.Lj85
	strb	r1,[r0]
# [383] ds:=@dsa;
	ldr	r0,.Lj86
	ldr	r1,.Lj87
	str	r0,[r1]
# [384] cs:=@csa;
	ldr	r0,.Lj88
	ldr	r1,.Lj89
	str	r0,[r1]
# [385] cs^:=0; ds^:=0; csi:=0; dsi:=0;
	ldr	r0,.Lj89
	ldr	r0,[r0]
	mov	r1,#0
	str	r1,[r0]
	ldr	r0,.Lj87
	ldr	r0,[r0]
	mov	r1,#0
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj92
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj93
	str	r0,[r1]
# [386] status:=status or FLAG_CONSTANT;
	ldr	r0,.Lj94
	ldrb	r0,[r0]
	orr	r0,r0,#32
	and	r0,r0,#255
	ldr	r1,.Lj94
	strb	r0,[r1]
# [387] clockgoal6502:=0;
	mov	r0,#0
	ldr	r1,.Lj96
	str	r0,[r1]
# [388] instructions:=0;
	mov	r0,#0
	ldr	r1,.Lj97
	str	r0,[r1]
# [389] clockticks6502:=0;
	mov	r0,#0
	ldr	r1,.Lj98
	str	r0,[r1]
# [391] end;
	ldmfd	r13!,{r4,r15}
.Lj81:
	.long	U_$UNIT6502_$$_PC
.Lj82:
	.long	U_$UNIT6502_$$_A
.Lj83:
	.long	U_$UNIT6502_$$_X
.Lj84:
	.long	U_$UNIT6502_$$_Y
.Lj85:
	.long	U_$UNIT6502_$$_SP
.Lj86:
	.long	U_$UNIT6502_$$_DSA
.Lj87:
	.long	U_$UNIT6502_$$_DS
.Lj88:
	.long	U_$UNIT6502_$$_CSA
.Lj89:
	.long	U_$UNIT6502_$$_CS
.Lj92:
	.long	U_$UNIT6502_$$_CSI
.Lj93:
	.long	U_$UNIT6502_$$_DSI
.Lj94:
	.long	U_$UNIT6502_$$_STATUS
.Lj96:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj97:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Lj98:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le13:
	.size	UNIT6502_$$_RESET6502, .Le13 - UNIT6502_$$_RESET6502

.section .text.n_unit6502_$$_nmi6502
	.balign 4
.globl	UNIT6502_$$_NMI6502
UNIT6502_$$_NMI6502:
# [395] begin
	stmfd	r13!,{r4,r14}
# [396] push16(pc);
	ldr	r0,.Lj101
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUSH16$WORD
# [397] push8(status);
	ldr	r0,.Lj102
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [398] status :=status or FLAG_INTERRUPT;
	ldr	r0,.Lj102
	ldrb	r0,[r0]
	orr	r0,r0,#4
	and	r0,r0,#255
	ldr	r1,.Lj102
	strb	r0,[r1]
# [399] pc := word(read6502($FFFA)) or (word(read6502($FFFB)) << 8);
	mov	r0,#250
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#251
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [402] end;
	orr	r0,r4,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj101
	strh	r0,[r1]
# [400] cs:=@csi;
	ldr	r0,.Lj106
	ldr	r1,.Lj107
	str	r0,[r1]
# [401] ds:=@dsi;
	ldr	r0,.Lj108
	ldr	r1,.Lj109
	str	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj101:
	.long	U_$UNIT6502_$$_PC
.Lj102:
	.long	U_$UNIT6502_$$_STATUS
.Lj106:
	.long	U_$UNIT6502_$$_CSI
.Lj107:
	.long	U_$UNIT6502_$$_CS
.Lj108:
	.long	U_$UNIT6502_$$_DSI
.Lj109:
	.long	U_$UNIT6502_$$_DS
.Le14:
	.size	UNIT6502_$$_NMI6502, .Le14 - UNIT6502_$$_NMI6502

.section .text.n_unit6502_$$_irq6502
	.balign 4
.globl	UNIT6502_$$_IRQ6502
UNIT6502_$$_IRQ6502:
# [406] begin
	stmfd	r13!,{r4,r14}
# [407] push16(pc);
	ldr	r0,.Lj112
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUSH16$WORD
# [408] push8(status);
	ldr	r0,.Lj113
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [409] status :=status or FLAG_INTERRUPT;
	ldr	r0,.Lj113
	ldrb	r0,[r0]
	orr	r0,r0,#4
	and	r0,r0,#255
	ldr	r1,.Lj113
	strb	r0,[r1]
# [410] pc := word(read6502($FFFE)) or (word(read6502($FFFF)) << 8);
	mov	r0,#254
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#255
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [413] end;
	orr	r0,r4,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj112
	strh	r0,[r1]
# [411] cs:=@csi;
	ldr	r0,.Lj117
	ldr	r1,.Lj118
	str	r0,[r1]
# [412] ds:=@dsi;
	ldr	r0,.Lj119
	ldr	r1,.Lj120
	str	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj112:
	.long	U_$UNIT6502_$$_PC
.Lj113:
	.long	U_$UNIT6502_$$_STATUS
.Lj117:
	.long	U_$UNIT6502_$$_CSI
.Lj118:
	.long	U_$UNIT6502_$$_CS
.Lj119:
	.long	U_$UNIT6502_$$_DSI
.Lj120:
	.long	U_$UNIT6502_$$_DS
.Le15:
	.size	UNIT6502_$$_IRQ6502, .Le15 - UNIT6502_$$_IRQ6502

.section .text.n_unit6502_$$_exec6502$longint
	.balign 4
.globl	UNIT6502_$$_EXEC6502$LONGINT
UNIT6502_$$_EXEC6502$LONGINT:
# [417] begin
	stmfd	r13!,{r14}
# Var tickcount located in register r0
# [418] clockgoal6502 += tickcount;
	ldr	r1,.Lj123
	ldr	r1,[r1]
	add	r1,r0,r1
	ldr	r0,.Lj123
	str	r1,[r0]
# [419] while (clockticks6502 < clockgoal6502) do
	b	.Lj126
	.balign 4
.Lj125:
# [421] opcode := read6502(pc+cs^);
	ldr	r0,.Lj128
	ldrh	r1,[r0]
	ldr	r0,.Lj129
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r0,r0,r1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj130
	strb	r0,[r1]
# [422] pc+=1;
	ldr	r0,.Lj128
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj128
	strh	r0,[r1]
# [424] penaltyop := 0;
	mov	r0,#0
	ldr	r1,.Lj133
	strb	r0,[r1]
# [425] penaltyaddr := 0;
	mov	r0,#0
	ldr	r1,.Lj134
	strb	r0,[r1]
# [426] addrtable[opcode];
	ldr	r0,.Lj130
	ldrb	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj136
	ldr	r0,[r1, r0]
	blx	r0
# [427] optable[opcode];
	ldr	r0,.Lj130
	ldrb	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj138
	ldr	r0,[r1, r0]
	blx	r0
# [428] clockticks6502 += ticktable[opcode];
	ldr	r0,.Lj130
	ldrb	r0,[r0]
	ldr	r1,.Lj140
	ldrb	r1,[r0, r1]
	ldr	r0,.Lj141
	ldr	r0,[r0]
	add	r1,r0,r1
	ldr	r0,.Lj141
	str	r1,[r0]
# [429] if (penaltyop<>0) and (penaltyaddr<>0) then  clockticks6502+=1;
	ldr	r0,.Lj133
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj145
	ldr	r0,.Lj134
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj145
	ldr	r0,.Lj141
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj141
	str	r0,[r1]
.Lj145:
# [430] instructions+=1;
	ldr	r0,.Lj150
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj150
	str	r0,[r1]
.Lj126:
	ldr	r0,.Lj141
	ldr	r1,[r0]
	ldr	r0,.Lj123
	ldr	r0,[r0]
	cmp	r1,r0
	blt	.Lj125
# [432] end;
	ldmfd	r13!,{r15}
.Lj123:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj128:
	.long	U_$UNIT6502_$$_PC
.Lj129:
	.long	U_$UNIT6502_$$_CS
.Lj130:
	.long	U_$UNIT6502_$$_OPCODE
.Lj133:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj134:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj136:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj138:
	.long	TC_$UNIT6502_$$_OPTABLE
.Lj140:
	.long	TC_$UNIT6502_$$_TICKTABLE
.Lj141:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Lj150:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Le16:
	.size	UNIT6502_$$_EXEC6502$LONGINT, .Le16 - UNIT6502_$$_EXEC6502$LONGINT

.section .text.n_unit6502_$$_fast6502$longint
	.balign 4
.globl	UNIT6502_$$_FAST6502$LONGINT
UNIT6502_$$_FAST6502$LONGINT:
# [436] begin
	stmfd	r13!,{r14}
# Var tickcount located in register r0
# [437] clockgoal6502 += tickcount;
	ldr	r1,.Lj156
	ldr	r1,[r1]
	add	r1,r0,r1
	ldr	r0,.Lj156
	str	r1,[r0]
# [438] while (clockticks6502 < clockgoal6502) do
	b	.Lj159
	.balign 4
.Lj158:
# [440] opcode := read6502(pc+cs^);
	ldr	r0,.Lj161
	ldrh	r1,[r0]
	ldr	r0,.Lj162
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r0,r0,r1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj163
	strb	r0,[r1]
# [441] pc+=1;
	ldr	r0,.Lj161
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj161
	strh	r0,[r1]
# [442] addrtable[opcode];
	ldr	r0,.Lj163
	ldrb	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj167
	ldr	r0,[r1, r0]
	blx	r0
# [443] optable[opcode];
	ldr	r0,.Lj163
	ldrb	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj169
	ldr	r0,[r1, r0]
	blx	r0
# [444] clockticks6502 += 1;
	ldr	r0,.Lj170
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj170
	str	r0,[r1]
# [445] instructions+=1;
	ldr	r0,.Lj172
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj172
	str	r0,[r1]
.Lj159:
	ldr	r0,.Lj170
	ldr	r1,[r0]
	ldr	r0,.Lj156
	ldr	r0,[r0]
	cmp	r1,r0
	blt	.Lj158
# [447] end;
	ldmfd	r13!,{r15}
.Lj156:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj161:
	.long	U_$UNIT6502_$$_PC
.Lj162:
	.long	U_$UNIT6502_$$_CS
.Lj163:
	.long	U_$UNIT6502_$$_OPCODE
.Lj167:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj169:
	.long	TC_$UNIT6502_$$_OPTABLE
.Lj170:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Lj172:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Le17:
	.size	UNIT6502_$$_FAST6502$LONGINT, .Le17 - UNIT6502_$$_FAST6502$LONGINT

.section .text.n_unit6502_$$_step6502
	.balign 4
.globl	UNIT6502_$$_STEP6502
UNIT6502_$$_STEP6502:
# [451] begin
	stmfd	r13!,{r14}
# [452] opcode := read6502(pc+cs^);
	ldr	r0,.Lj178
	ldrh	r1,[r0]
	ldr	r0,.Lj179
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r0,r0,r1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj180
	strb	r0,[r1]
# [453] pc+=1;
	ldr	r0,.Lj178
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj178
	strh	r0,[r1]
# [454] status :=status or FLAG_CONSTANT;
	ldr	r0,.Lj183
	ldrb	r0,[r0]
	orr	r0,r0,#32
	and	r0,r0,#255
	ldr	r1,.Lj183
	strb	r0,[r1]
# [455] penaltyop := 0;
	mov	r0,#0
	ldr	r1,.Lj185
	strb	r0,[r1]
# [456] penaltyaddr := 0;
	mov	r1,#0
	ldr	r0,.Lj186
	strb	r1,[r0]
# [457] addrtable[opcode];
	ldr	r0,.Lj180
	ldrb	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj188
	ldr	r0,[r1, r0]
	blx	r0
# [458] optable[opcode];
	ldr	r0,.Lj180
	ldrb	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj190
	ldr	r0,[r1, r0]
	blx	r0
# [459] clockticks6502 += ticktable[opcode];
	ldr	r0,.Lj180
	ldrb	r0,[r0]
	ldr	r1,.Lj192
	ldrb	r1,[r0, r1]
	ldr	r0,.Lj193
	ldr	r0,[r0]
	add	r0,r0,r1
	ldr	r1,.Lj193
	str	r0,[r1]
# [460] if (penaltyop<>0) and (penaltyaddr<>0) then clockticks6502+=1;
	ldr	r0,.Lj185
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj197
	ldr	r0,.Lj186
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj197
	ldr	r0,.Lj193
	ldr	r0,[r0]
	add	r0,r0,#1
	ldr	r1,.Lj193
	str	r0,[r1]
.Lj197:
# [461] clockgoal6502 := clockticks6502;
	ldr	r0,.Lj193
	ldr	r1,[r0]
	ldr	r0,.Lj203
	str	r1,[r0]
# [462] instructions+=1;
	ldr	r0,.Lj204
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj204
	str	r1,[r0]
# [463] end;
	ldmfd	r13!,{r15}
.Lj178:
	.long	U_$UNIT6502_$$_PC
.Lj179:
	.long	U_$UNIT6502_$$_CS
.Lj180:
	.long	U_$UNIT6502_$$_OPCODE
.Lj183:
	.long	U_$UNIT6502_$$_STATUS
.Lj185:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj186:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj188:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj190:
	.long	TC_$UNIT6502_$$_OPTABLE
.Lj192:
	.long	TC_$UNIT6502_$$_TICKTABLE
.Lj193:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Lj203:
	.long	TC_$UNIT6502_$$_CLOCKGOAL6502
.Lj204:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Le18:
	.size	UNIT6502_$$_STEP6502, .Le18 - UNIT6502_$$_STEP6502

.section .text.n_unit6502_$$_jsr6502$word$longint
	.balign 4
.globl	UNIT6502_$$_JSR6502$WORD$LONGINT
UNIT6502_$$_JSR6502$WORD$LONGINT:
# [470] begin
	stmfd	r13!,{r4,r14}
# Var aa located in register r0
# Var addr located in register r1
# Var depth located in register r4
# [471] pc:=addr;
	uxth	r2,r1
	ldr	r1,.Lj208
	strh	r2,[r1]
# [472] sp := $FD;
	mov	r1,#253
	ldr	r2,.Lj209
	strb	r1,[r2]
# Var depth located in register r4
# [473] depth:=0;
	mov	r4,#0
# [474] if aa<256 then begin a:=aa; x:=0; y:=0; status:=0; end;
	cmp	r0,#256
	bcs	.Lj211
	and	r0,r0,#255
	ldr	r1,.Lj212
	strb	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj213
	strb	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj214
	strb	r1,[r0]
	mov	r1,#0
	ldr	r0,.Lj215
	strb	r1,[r0]
.Lj211:
# [475] instructions:=0;
	mov	r1,#0
	ldr	r0,.Lj216
	str	r1,[r0]
	.balign 4
.Lj217:
# [477] opcode := read6502(pc+cs^);
	ldr	r0,.Lj208
	ldrh	r1,[r0]
	ldr	r0,.Lj221
	ldr	r0,[r0]
	ldr	r0,[r0]
	add	r0,r0,r1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj222
	strb	r0,[r1]
# [478] if opcode=$20 then inc(depth);
	ldr	r0,.Lj222
	ldrb	r0,[r0]
	cmp	r0,#32
	addeq	r4,r4,#1
# [479] if opcode=$60 then dec(depth);
	ldr	r0,.Lj222
	ldrb	r0,[r0]
	cmp	r0,#96
	subeq	r4,r4,#1
# [481] pc+=1;
	ldr	r0,.Lj208
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj208
	strh	r0,[r1]
# [482] addrtable[opcode];
	ldr	r0,.Lj222
	ldrb	r0,[r0]
	mov	r0,r0,lsl #2
	ldr	r1,.Lj232
	ldr	r0,[r0, r1]
	blx	r0
# [483] optable[opcode];
	ldr	r0,.Lj222
	ldrb	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj234
	ldr	r0,[r1, r0]
	blx	r0
# [484] instructions+=1;
	ldr	r0,.Lj216
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj216
	str	r1,[r0]
# [486] until (depth<0) or (instructions>3000);
	cmp	r4,#0
	blt	.Lj219
	ldr	r0,.Lj216
	ldr	r0,[r0]
	mov	r1,#184
	orr	r1,r1,#2816
	cmp	r0,r1
	ble	.Lj217
.Lj219:
# [487] end;
	ldmfd	r13!,{r4,r15}
.Lj208:
	.long	U_$UNIT6502_$$_PC
.Lj209:
	.long	U_$UNIT6502_$$_SP
.Lj212:
	.long	U_$UNIT6502_$$_A
.Lj213:
	.long	U_$UNIT6502_$$_X
.Lj214:
	.long	U_$UNIT6502_$$_Y
.Lj215:
	.long	U_$UNIT6502_$$_STATUS
.Lj216:
	.long	TC_$UNIT6502_$$_INSTRUCTIONS
.Lj221:
	.long	U_$UNIT6502_$$_CS
.Lj222:
	.long	U_$UNIT6502_$$_OPCODE
.Lj232:
	.long	TC_$UNIT6502_$$_ADDRTABLE
.Lj234:
	.long	TC_$UNIT6502_$$_OPTABLE
.Le19:
	.size	UNIT6502_$$_JSR6502$WORD$LONGINT, .Le19 - UNIT6502_$$_JSR6502$WORD$LONGINT

.section .text.n_unit6502_$$_imp
	.balign 4
UNIT6502_$$_IMP:
# [493] begin
# [494] end;
	bx	r14
.Le20:
	.size	UNIT6502_$$_IMP, .Le20 - UNIT6502_$$_IMP

.section .text.n_unit6502_$$_acc
	.balign 4
UNIT6502_$$_ACC:
# [498] begin
# [499] end;
	bx	r14
.Le21:
	.size	UNIT6502_$$_ACC, .Le21 - UNIT6502_$$_ACC

.section .text.n_unit6502_$$_imm
	.balign 4
UNIT6502_$$_IMM:
# [503] begin
# [504] ea := pc;
	ldr	r0,.Lj247
	ldrh	r0,[r0]
	ldr	r1,.Lj248
	strh	r0,[r1]
# [505] inc(pc);
	ldr	r1,.Lj247
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [506] end;
	bx	r14
.Lj247:
	.long	U_$UNIT6502_$$_PC
.Lj248:
	.long	U_$UNIT6502_$$_EA
.Le22:
	.size	UNIT6502_$$_IMM, .Le22 - UNIT6502_$$_IMM

.section .text.n_unit6502_$$_zp
	.balign 4
UNIT6502_$$_ZP:
# [510] begin
	stmfd	r13!,{r14}
# [511] ea := word(read6502(pc));
	ldr	r0,.Lj252
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj253
	strh	r0,[r1]
# [512] inc(pc);
	ldr	r1,.Lj252
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [513] end;
	ldmfd	r13!,{r15}
.Lj252:
	.long	U_$UNIT6502_$$_PC
.Lj253:
	.long	U_$UNIT6502_$$_EA
.Le23:
	.size	UNIT6502_$$_ZP, .Le23 - UNIT6502_$$_ZP

.section .text.n_unit6502_$$_zpx
	.balign 4
UNIT6502_$$_ZPX:
# [517] begin
	stmfd	r13!,{r14}
# [518] ea := ((read6502(pc)+x) and $FF); //zero-page wraparound
	ldr	r0,.Lj257
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj258
	ldrb	r1,[r1]
	add	r0,r1,r0
# Peephole AndUxt2And done
	and	r0,r0,#255
	ldr	r1,.Lj259
	strh	r0,[r1]
# [519] inc(pc)
	ldr	r1,.Lj257
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [520] end;
	ldmfd	r13!,{r15}
.Lj257:
	.long	U_$UNIT6502_$$_PC
.Lj258:
	.long	U_$UNIT6502_$$_X
.Lj259:
	.long	U_$UNIT6502_$$_EA
.Le24:
	.size	UNIT6502_$$_ZPX, .Le24 - UNIT6502_$$_ZPX

.section .text.n_unit6502_$$_zpy
	.balign 4
UNIT6502_$$_ZPY:
# [524] begin
	stmfd	r13!,{r14}
# [525] ea := ((read6502(pc)+y) and $FF); //zero-page wraparound
	ldr	r0,.Lj263
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj264
	ldrb	r1,[r1]
	add	r0,r1,r0
# Peephole AndUxt2And done
	and	r0,r0,#255
	ldr	r1,.Lj265
	strh	r0,[r1]
# [526] inc(pc)
	ldr	r1,.Lj263
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [527] end;
	ldmfd	r13!,{r15}
.Lj263:
	.long	U_$UNIT6502_$$_PC
.Lj264:
	.long	U_$UNIT6502_$$_Y
.Lj265:
	.long	U_$UNIT6502_$$_EA
.Le25:
	.size	UNIT6502_$$_ZPY, .Le25 - UNIT6502_$$_ZPY

.section .text.n_unit6502_$$_rel
	.balign 4
UNIT6502_$$_REL:
# [531] begin
	stmfd	r13!,{r14}
# [532] reladdr := word(read6502(pc));
	ldr	r0,.Lj269
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj270
	strh	r0,[r1]
# [533] inc(pc);
	ldr	r1,.Lj269
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [534] if (reladdr and $80)<>0 then reladdr:=reladdr or $FF00;
	ldr	r0,.Lj270
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj274
	ldr	r0,.Lj270
	ldrh	r0,[r0]
	orr	r0,r0,#65280
	ldr	r1,.Lj270
	strh	r0,[r1]
.Lj274:
# [535] end;
	ldmfd	r13!,{r15}
.Lj269:
	.long	U_$UNIT6502_$$_PC
.Lj270:
	.long	U_$UNIT6502_$$_RELADDR
.Le26:
	.size	UNIT6502_$$_REL, .Le26 - UNIT6502_$$_REL

.section .text.n_unit6502_$$_abso
	.balign 4
UNIT6502_$$_ABSO:
# [539] begin
	stmfd	r13!,{r4,r14}
# [540] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj279
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj279
	ldrh	r0,[r0]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [542] end;
	orr	r0,r4,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj281
	strh	r0,[r1]
# [541] pc += 2;
	ldr	r0,.Lj279
	ldrh	r0,[r0]
	add	r0,r0,#2
	uxth	r0,r0
	ldr	r1,.Lj279
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj279:
	.long	U_$UNIT6502_$$_PC
.Lj281:
	.long	U_$UNIT6502_$$_EA
.Le27:
	.size	UNIT6502_$$_ABSO, .Le27 - UNIT6502_$$_ABSO

.section .text.n_unit6502_$$_absx
	.balign 4
UNIT6502_$$_ABSX:
# [548] begin
	stmfd	r13!,{r4,r14}
# Var startpage located in register r0
# [549] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj286
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj286
	ldrh	r0,[r0]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [554] end;
	orr	r0,r4,r0,lsl #8
	uxth	r1,r0
	ldr	r0,.Lj288
	strh	r1,[r0]
# [550] startpage := ea and $FF00;
	ldr	r0,.Lj288
	ldrh	r0,[r0]
	and	r0,r0,#65280
# Var startpage located in register r0
# [551] ea += x;
	ldr	r1,.Lj288
	ldrh	r2,[r1]
	ldr	r1,.Lj291
	ldrb	r1,[r1]
	add	r1,r1,r2
	uxth	r1,r1
	ldr	r2,.Lj288
	strh	r1,[r2]
# [552] if (startpage <> (ea and $FF00)) then penaltyaddr := 1;   //one cycle penalty for page-crossing on some opcodes
	ldr	r1,.Lj288
	ldrh	r1,[r1]
	and	r1,r1,#65280
	cmp	r1,r0
	movne	r1,#1
	ldrne	r0,.Lj296
	strneb	r1,[r0]
# [553] pc += 2;
	ldr	r0,.Lj286
	ldrh	r0,[r0]
	add	r0,r0,#2
	uxth	r1,r0
	ldr	r0,.Lj286
	strh	r1,[r0]
	ldmfd	r13!,{r4,r15}
.Lj286:
	.long	U_$UNIT6502_$$_PC
.Lj288:
	.long	U_$UNIT6502_$$_EA
.Lj291:
	.long	U_$UNIT6502_$$_X
.Lj296:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Le28:
	.size	UNIT6502_$$_ABSX, .Le28 - UNIT6502_$$_ABSX

.section .text.n_unit6502_$$_absy
	.balign 4
UNIT6502_$$_ABSY:
# [560] begin
	stmfd	r13!,{r4,r14}
# Var startpage located in register r0
# [561] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj301
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj301
	ldrh	r0,[r0]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [566] end;
	orr	r0,r4,r0,lsl #8
	uxth	r1,r0
	ldr	r0,.Lj303
	strh	r1,[r0]
# [562] startpage := ea and $FF00;
	ldr	r0,.Lj303
	ldrh	r0,[r0]
	and	r0,r0,#65280
# Var startpage located in register r0
# [563] ea += y;
	ldr	r1,.Lj303
	ldrh	r2,[r1]
	ldr	r1,.Lj306
	ldrb	r1,[r1]
	add	r1,r1,r2
	uxth	r1,r1
	ldr	r2,.Lj303
	strh	r1,[r2]
# [564] if (startpage <> (ea and $FF00)) then penaltyaddr := 1; //one cycle penalty for page-crossing on some opcodes
	ldr	r1,.Lj303
	ldrh	r1,[r1]
	and	r1,r1,#65280
	cmp	r1,r0
	movne	r1,#1
	ldrne	r0,.Lj311
	strneb	r1,[r0]
# [565] pc += 2;
	ldr	r0,.Lj301
	ldrh	r0,[r0]
	add	r0,r0,#2
	uxth	r1,r0
	ldr	r0,.Lj301
	strh	r1,[r0]
	ldmfd	r13!,{r4,r15}
.Lj301:
	.long	U_$UNIT6502_$$_PC
.Lj303:
	.long	U_$UNIT6502_$$_EA
.Lj306:
	.long	U_$UNIT6502_$$_Y
.Lj311:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Le29:
	.size	UNIT6502_$$_ABSY, .Le29 - UNIT6502_$$_ABSY

.section .text.n_unit6502_$$_ind
	.balign 4
UNIT6502_$$_IND:
# [572] begin
	stmfd	r13!,{r4,r5,r14}
# Var eahelp located in register r0
# Var eahelp2 located in register r0
# [573] eahelp := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	ldr	r0,.Lj316
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj316
	ldrh	r0,[r0]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [577] end;
	orr	r0,r4,r0,lsl #8
	uxth	r0,r0
# Var eahelp located in register r0
# [574] eahelp2 := (eahelp and $FF00) or ((eahelp + 1) and $00FF); //replicate 6502 page-boundary wraparound bug
	add	r1,r0,#1
	and	r1,r1,#255
	and	r2,r0,#65280
	orr	r1,r2,r1
	uxth	r4,r1
# Var eahelp2 located in register r4
# Var eahelp located in register r0
# [575] ea := word(read6502(eahelp)) or (word(read6502(eahelp2)) shl 8);
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	mov	r0,r4
# Var eahelp2 located in register r0
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
	orr	r0,r5,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj318
	strh	r0,[r1]
# [576] pc += 2;
	ldr	r0,.Lj316
	ldrh	r0,[r0]
	add	r0,r0,#2
	uxth	r0,r0
	ldr	r1,.Lj316
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj316:
	.long	U_$UNIT6502_$$_PC
.Lj318:
	.long	U_$UNIT6502_$$_EA
.Le30:
	.size	UNIT6502_$$_IND, .Le30 - UNIT6502_$$_IND

.section .text.n_unit6502_$$_izp
	.balign 4
UNIT6502_$$_IZP:
# [583] begin
	stmfd	r13!,{r4,r5,r14}
# Var eahelp located in register r4
# [584] eahelp := word(read6502(pc)) and $FF; //zero-page wraparound for table pointer
	ldr	r0,.Lj323
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	and	r4,r0,#255
# Var eahelp located in register r4
# [585] inc(pc);
	ldr	r1,.Lj323
	ldrh	r0,[r1]
	add	r0,r0,#1
# Peephole UXTHStrh2Strh done
	strh	r0,[r1]
# [586] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	and	r0,r4,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	add	r0,r4,#1
	and	r0,r0,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [587] end;
	orr	r0,r5,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj325
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj323:
	.long	U_$UNIT6502_$$_PC
.Lj325:
	.long	U_$UNIT6502_$$_EA
.Le31:
	.size	UNIT6502_$$_IZP, .Le31 - UNIT6502_$$_IZP

.section .text.n_unit6502_$$_indx
	.balign 4
UNIT6502_$$_INDX:
# [594] begin
	stmfd	r13!,{r4,r5,r14}
# Var eahelp located in register r4
# [595] eahelp := (word(read6502(pc) + x) and $FF); //zero-page wraparound for table pointer
	ldr	r0,.Lj328
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	ldr	r1,.Lj329
	ldrb	r1,[r1]
	add	r0,r1,r0
	uxth	r0,r0
	and	r4,r0,#255
# Var eahelp located in register r4
# [596] inc(pc);
	ldr	r1,.Lj328
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
# [598] end;
	orr	r0,r5,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj331
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj328:
	.long	U_$UNIT6502_$$_PC
.Lj329:
	.long	U_$UNIT6502_$$_X
.Lj331:
	.long	U_$UNIT6502_$$_EA
.Le32:
	.size	UNIT6502_$$_INDX, .Le32 - UNIT6502_$$_INDX

.section .text.n_unit6502_$$_iax
	.balign 4
UNIT6502_$$_IAX:
# [604] begin
	stmfd	r13!,{r4,r5,r14}
# Var eahelp located in register r4
# [605] eahelp := word(read6502(pc))+(word(read6502(pc+1) shl 8)+ y); //zero-page wraparound for table pointer
	ldr	r0,.Lj334
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	ldr	r0,.Lj334
	ldrh	r0,[r0]
	add	r0,r0,#1
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r0,r0,lsl #8
	uxth	r1,r0
	ldr	r0,.Lj336
	ldrb	r0,[r0]
	add	r0,r0,r1
	add	r0,r0,r4
	uxth	r4,r0
# Var eahelp located in register r4
# [606] pc+=2;
	ldr	r0,.Lj334
	ldrh	r0,[r0]
	add	r0,r0,#2
	uxth	r0,r0
	ldr	r1,.Lj334
	strh	r0,[r1]
# [607] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	and	r0,r4,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	add	r0,r4,#1
	and	r0,r0,#255
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [608] end;
	orr	r0,r5,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj339
	strh	r0,[r1]
	ldmfd	r13!,{r4,r5,r15}
.Lj334:
	.long	U_$UNIT6502_$$_PC
.Lj336:
	.long	U_$UNIT6502_$$_Y
.Lj339:
	.long	U_$UNIT6502_$$_EA
.Le33:
	.size	UNIT6502_$$_IAX, .Le33 - UNIT6502_$$_IAX

.section .text.n_unit6502_$$_indy
	.balign 4
UNIT6502_$$_INDY:
# [614] begin
	stmfd	r13!,{r4,r5,r14}
# Var eahelp located in register r0
# Var eahelp2 located in register r0
# Var startpage located in register r0
# [615] eahelp := word(read6502(pc));
	ldr	r0,.Lj342
	ldrh	r0,[r0]
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Var eahelp located in register r0
# [616] inc(pc);
	ldr	r2,.Lj342
	ldrh	r1,[r2]
	add	r1,r1,#1
# Peephole UXTHStrh2Strh done
	strh	r1,[r2]
# [617] eahelp2 := (eahelp and $FF00) or ((eahelp + 1) and $00FF); //zero-page wraparound
	add	r1,r0,#1
	and	r2,r1,#255
	and	r1,r0,#65280
	orr	r1,r1,r2
	uxth	r4,r1
# Var eahelp2 located in register r4
# Var eahelp located in register r0
# [618] ea := word(read6502(eahelp)) or (word(read6502(eahelp2)) shl 8);
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r5,r0
	mov	r0,r4
# Var eahelp2 located in register r0
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [622] end;
	orr	r0,r5,r0,lsl #8
	uxth	r1,r0
	ldr	r0,.Lj344
	strh	r1,[r0]
# [619] startpage := ea and $FF00;
	ldr	r0,.Lj344
	ldrh	r0,[r0]
	and	r0,r0,#65280
# Var startpage located in register r0
# [620] ea += y;
	ldr	r1,.Lj344
	ldrh	r2,[r1]
	ldr	r1,.Lj347
	ldrb	r1,[r1]
	add	r1,r1,r2
	uxth	r1,r1
	ldr	r2,.Lj344
	strh	r1,[r2]
# [621] if (startpage <> (ea and $FF00)) then penaltyaddr := 1; //one cycle penalty for page-crossing on some opcodes
	ldr	r1,.Lj344
	ldrh	r1,[r1]
	and	r1,r1,#65280
	cmp	r1,r0
	movne	r1,#1
	ldrne	r0,.Lj352
	strneb	r1,[r0]
	ldmfd	r13!,{r4,r5,r15}
.Lj342:
	.long	U_$UNIT6502_$$_PC
.Lj344:
	.long	U_$UNIT6502_$$_EA
.Lj347:
	.long	U_$UNIT6502_$$_Y
.Lj352:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Le34:
	.size	UNIT6502_$$_INDY, .Le34 - UNIT6502_$$_INDY

.section .text.n_unit6502_$$_adc
	.balign 4
UNIT6502_$$_ADC:
# [630] begin
	stmfd	r13!,{r14}
# [631] penaltyop := 1;
	mov	r1,#1
	ldr	r0,.Lj355
	strb	r1,[r0]
# [632] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj356
	strh	r0,[r1]
# [633] aresult := word(value)+a+(status and FLAG_CARRY);
	ldr	r0,.Lj356
	ldrh	r1,[r0]
	ldr	r0,.Lj358
	ldrb	r0,[r0]
	add	r1,r0,r1
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	and	r0,r0,#1
	add	r0,r0,r1
	uxth	r1,r0
	ldr	r0,.Lj360
	strh	r1,[r0]
# [634] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj360
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj363
# [218] {$define setcarry:= status :=status or FLAG_CARRY}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
	b	.Lj366
.Lj363:
# [219] {$define clearcarry:= status := status and not(FLAG_CARRY)}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
.Lj366:
# [635] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj360
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj371
# [221] {$define clearzero:= status:= status and not(FLAG_ZERO)}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
	b	.Lj374
.Lj371:
# [220] {$define setzero:= status :=status or FLAG_ZERO}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj359
	strb	r1,[r0]
.Lj374:
# [636] if ((aresult xor a) and (aresult xor value) and $0080)<>0 then
	ldr	r0,.Lj358
	ldrb	r1,[r0]
	ldr	r0,.Lj360
	ldrh	r0,[r0]
	eor	r2,r0,r1
	ldr	r0,.Lj360
	ldrh	r1,[r0]
	ldr	r0,.Lj356
	ldrh	r0,[r0]
	eor	r0,r0,r1
	and	r0,r0,r2
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj382
# [226] {$define setoverflow:= status :=status or FLAG_OVERFLOW}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	orr	r0,r0,#64
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
	b	.Lj385
.Lj382:
# [227] {$define clearoverflow:= status := status and not(FLAG_OVERFLOW)}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	bic	r0,r0,#64
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
.Lj385:
# [640] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj360
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj390
# [228] {$define setsign:= status :=status or FLAG_SIGN}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj359
	strb	r0,[r1]
	b	.Lj393
.Lj390:
# [229] {$define clearsign:= status := status and not(FLAG_SIGN)}
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
.Lj393:
# [641] if (status and FLAG_DECIMAL)<>0 then
	ldr	r0,.Lj359
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#8
	beq	.Lj398
# [643] inc(clockticks6502);
	ldr	r1,.Lj399
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
# [645] if ((a and $0F) > $09) then a += $06;
	ldr	r0,.Lj358
	ldrb	r0,[r0]
	and	r0,r0,#15
	cmp	r0,#9
	ble	.Lj404
	ldr	r0,.Lj358
	ldrb	r0,[r0]
	add	r0,r0,#6
	and	r0,r0,#255
	ldr	r1,.Lj358
	strb	r0,[r1]
.Lj404:
# [646] if ((a and $F0) > $90) then
	ldr	r0,.Lj358
	ldrb	r0,[r0]
	and	r0,r0,#240
	cmp	r0,#144
	bls	.Lj409
# [648] a += $60;
	ldr	r0,.Lj358
	ldrb	r0,[r0]
	add	r0,r0,#96
	and	r0,r0,#255
	ldr	r1,.Lj358
	strb	r0,[r1]
	ldr	r0,.Lj359
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj359
	strb	r0,[r1]
.Lj409:
.Lj398:
# [652] a:=byte(aresult and $00FF);
	ldr	r0,.Lj360
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj358
	strb	r0,[r1]
# [653] end;
	ldmfd	r13!,{r15}
.Lj355:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj356:
	.long	U_$UNIT6502_$$_VALUE
.Lj358:
	.long	U_$UNIT6502_$$_A
.Lj359:
	.long	U_$UNIT6502_$$_STATUS
.Lj360:
	.long	U_$UNIT6502_$$_ARESULT
.Lj399:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le35:
	.size	UNIT6502_$$_ADC, .Le35 - UNIT6502_$$_ADC

.section .text.n_unit6502_$$_ana
	.balign 4
UNIT6502_$$_ANA:
# [657] begin
	stmfd	r13!,{r14}
# [658] penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj418
	strb	r0,[r1]
# [659] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj419
	strh	r0,[r1]
# [660] aresult := a and value;
	ldr	r0,.Lj420
	ldrb	r1,[r0]
	ldr	r0,.Lj419
	ldrh	r0,[r0]
	and	r0,r0,r1
	ldr	r1,.Lj422
	strh	r0,[r1]
# [661] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj422
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj425
	ldr	r0,.Lj426
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj426
	strb	r1,[r0]
	b	.Lj428
.Lj425:
	ldr	r0,.Lj426
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj426
	strb	r1,[r0]
.Lj428:
# [662] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj422
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj433
	ldr	r0,.Lj426
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj426
	strb	r0,[r1]
	b	.Lj436
.Lj433:
	ldr	r0,.Lj426
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj426
	strb	r0,[r1]
.Lj436:
# [663] a:=byte(aresult and $00FF);
	ldr	r0,.Lj422
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj420
	strb	r0,[r1]
# [664] end;
	ldmfd	r13!,{r15}
.Lj418:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj419:
	.long	U_$UNIT6502_$$_VALUE
.Lj420:
	.long	U_$UNIT6502_$$_A
.Lj422:
	.long	U_$UNIT6502_$$_ARESULT
.Lj426:
	.long	U_$UNIT6502_$$_STATUS
.Le36:
	.size	UNIT6502_$$_ANA, .Le36 - UNIT6502_$$_ANA

.section .text.n_unit6502_$$_asl
	.balign 4
UNIT6502_$$_ASL:
# [668] begin
	stmfd	r13!,{r14}
# [669] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj443
	strh	r0,[r1]
# [670] aresult := value shl 1;
	ldr	r0,.Lj443
	ldrh	r0,[r0]
	mov	r0,r0,lsl #1
	uxth	r1,r0
	ldr	r0,.Lj445
	strh	r1,[r0]
# [671] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj445
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj448
	ldr	r0,.Lj449
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj449
	strb	r1,[r0]
	b	.Lj451
.Lj448:
	ldr	r0,.Lj449
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj449
	strb	r1,[r0]
.Lj451:
# [672] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj445
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj456
	ldr	r0,.Lj449
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj449
	strb	r1,[r0]
	b	.Lj459
.Lj456:
	ldr	r0,.Lj449
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj449
	strb	r0,[r1]
.Lj459:
# [673] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj445
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj464
	ldr	r0,.Lj449
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj449
	strb	r0,[r1]
	b	.Lj467
.Lj464:
	ldr	r0,.Lj449
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj449
	strb	r0,[r1]
.Lj467:
# [674] putvalue(aresult);
	ldr	r0,.Lj445
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [675] end;
	ldmfd	r13!,{r15}
.Lj443:
	.long	U_$UNIT6502_$$_VALUE
.Lj445:
	.long	U_$UNIT6502_$$_ARESULT
.Lj449:
	.long	U_$UNIT6502_$$_STATUS
.Le37:
	.size	UNIT6502_$$_ASL, .Le37 - UNIT6502_$$_ASL

.section .text.n_unit6502_$$_bcc
	.balign 4
UNIT6502_$$_BCC:
# [679] begin
# [680] if ((status and FLAG_CARRY) = 0) then
	ldr	r0,.Lj473
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#1
	bne	.Lj475
# [682] oldpc := pc;
	ldr	r0,.Lj476
	ldrh	r1,[r0]
	ldr	r0,.Lj477
	strh	r1,[r0]
# [683] pc += reladdr;
	ldr	r0,.Lj476
	ldrh	r1,[r0]
	ldr	r0,.Lj479
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj476
	strh	r0,[r1]
# [684] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj477
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj476
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj484
# [685] else clockticks6502+=1;
	ldr	r0,.Lj485
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj485
	str	r1,[r0]
	b	.Lj487
.Lj484:
	ldr	r0,.Lj485
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj485
	str	r1,[r0]
.Lj487:
.Lj475:
# [687] end;
	bx	r14
.Lj473:
	.long	U_$UNIT6502_$$_STATUS
.Lj476:
	.long	U_$UNIT6502_$$_PC
.Lj477:
	.long	U_$UNIT6502_$$_OLDPC
.Lj479:
	.long	U_$UNIT6502_$$_RELADDR
.Lj485:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le38:
	.size	UNIT6502_$$_BCC, .Le38 - UNIT6502_$$_BCC

.section .text.n_unit6502_$$_bcs
	.balign 4
UNIT6502_$$_BCS:
# [691] begin
# [692] if ((status and FLAG_CARRY) = FLAG_CARRY) then
	ldr	r0,.Lj492
	ldrb	r0,[r0]
	and	r0,r0,#1
	cmp	r0,#1
	bne	.Lj494
# [694] oldpc := pc;
	ldr	r0,.Lj495
	ldrh	r1,[r0]
	ldr	r0,.Lj496
	strh	r1,[r0]
# [695] pc += reladdr;
	ldr	r0,.Lj495
	ldrh	r1,[r0]
	ldr	r0,.Lj498
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj495
	strh	r0,[r1]
# [696] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj496
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj495
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj503
# [697] else clockticks6502+=1;
	ldr	r0,.Lj504
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj504
	str	r1,[r0]
	b	.Lj506
.Lj503:
	ldr	r0,.Lj504
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj504
	str	r1,[r0]
.Lj506:
.Lj494:
# [699] end;
	bx	r14
.Lj492:
	.long	U_$UNIT6502_$$_STATUS
.Lj495:
	.long	U_$UNIT6502_$$_PC
.Lj496:
	.long	U_$UNIT6502_$$_OLDPC
.Lj498:
	.long	U_$UNIT6502_$$_RELADDR
.Lj504:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le39:
	.size	UNIT6502_$$_BCS, .Le39 - UNIT6502_$$_BCS

.section .text.n_unit6502_$$_beq
	.balign 4
UNIT6502_$$_BEQ:
# [703] begin
# [704] if ((status and FLAG_ZERO) = FLAG_ZERO) then
	ldr	r0,.Lj511
	ldrb	r0,[r0]
	and	r0,r0,#2
	cmp	r0,#2
	bne	.Lj513
# [706] oldpc := pc;
	ldr	r0,.Lj514
	ldrh	r1,[r0]
	ldr	r0,.Lj515
	strh	r1,[r0]
# [707] pc += reladdr;
	ldr	r0,.Lj514
	ldrh	r1,[r0]
	ldr	r0,.Lj517
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj514
	strh	r0,[r1]
# [708] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj515
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj514
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj522
# [709] else clockticks6502+=1;
	ldr	r0,.Lj523
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj523
	str	r1,[r0]
	b	.Lj525
.Lj522:
	ldr	r0,.Lj523
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj523
	str	r1,[r0]
.Lj525:
.Lj513:
# [711] end;
	bx	r14
.Lj511:
	.long	U_$UNIT6502_$$_STATUS
.Lj514:
	.long	U_$UNIT6502_$$_PC
.Lj515:
	.long	U_$UNIT6502_$$_OLDPC
.Lj517:
	.long	U_$UNIT6502_$$_RELADDR
.Lj523:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le40:
	.size	UNIT6502_$$_BEQ, .Le40 - UNIT6502_$$_BEQ

.section .text.n_unit6502_$$_bit
	.balign 4
UNIT6502_$$_BIT:
# [715] begin
	stmfd	r13!,{r14}
# [716] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj530
	strh	r0,[r1]
# [717] aresult := a and value;
	ldr	r0,.Lj531
	ldrb	r1,[r0]
	ldr	r0,.Lj530
	ldrh	r0,[r0]
	and	r1,r0,r1
	ldr	r0,.Lj533
	strh	r1,[r0]
# [718] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj533
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj536
	ldr	r0,.Lj537
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj537
	strb	r0,[r1]
	b	.Lj539
.Lj536:
	ldr	r0,.Lj537
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj537
	strb	r1,[r0]
.Lj539:
# [719] status := (status and $3F) or (value and $C0);
	ldr	r0,.Lj537
	ldrb	r0,[r0]
	and	r1,r0,#63
	ldr	r0,.Lj530
	ldrh	r0,[r0]
	and	r0,r0,#192
	orr	r0,r0,r1
	and	r0,r0,#255
	ldr	r1,.Lj537
	strb	r0,[r1]
# [720] end;
	ldmfd	r13!,{r15}
.Lj530:
	.long	U_$UNIT6502_$$_VALUE
.Lj531:
	.long	U_$UNIT6502_$$_A
.Lj533:
	.long	U_$UNIT6502_$$_ARESULT
.Lj537:
	.long	U_$UNIT6502_$$_STATUS
.Le41:
	.size	UNIT6502_$$_BIT, .Le41 - UNIT6502_$$_BIT

.section .text.n_unit6502_$$_bmi
	.balign 4
UNIT6502_$$_BMI:
# [724] begin
# [725] if ((status and FLAG_SIGN) = FLAG_SIGN) then
	ldr	r0,.Lj547
	ldrb	r0,[r0]
	and	r0,r0,#128
	cmp	r0,#128
	bne	.Lj549
# [727] oldpc := pc;
	ldr	r0,.Lj550
	ldrh	r1,[r0]
	ldr	r0,.Lj551
	strh	r1,[r0]
# [728] pc += reladdr;
	ldr	r0,.Lj550
	ldrh	r1,[r0]
	ldr	r0,.Lj553
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj550
	strh	r0,[r1]
# [729] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj551
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj550
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj558
# [730] else clockticks6502+=1;
	ldr	r0,.Lj559
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj559
	str	r1,[r0]
	b	.Lj561
.Lj558:
	ldr	r0,.Lj559
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj559
	str	r1,[r0]
.Lj561:
.Lj549:
# [732] end;
	bx	r14
.Lj547:
	.long	U_$UNIT6502_$$_STATUS
.Lj550:
	.long	U_$UNIT6502_$$_PC
.Lj551:
	.long	U_$UNIT6502_$$_OLDPC
.Lj553:
	.long	U_$UNIT6502_$$_RELADDR
.Lj559:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le42:
	.size	UNIT6502_$$_BMI, .Le42 - UNIT6502_$$_BMI

.section .text.n_unit6502_$$_bne
	.balign 4
UNIT6502_$$_BNE:
# [736] begin
# [737] if ((status and FLAG_ZERO) = 0) then
	ldr	r0,.Lj566
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#2
	bne	.Lj568
# [739] oldpc := pc;
	ldr	r0,.Lj569
	ldrh	r1,[r0]
	ldr	r0,.Lj570
	strh	r1,[r0]
# [740] pc += reladdr;
	ldr	r0,.Lj569
	ldrh	r1,[r0]
	ldr	r0,.Lj572
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj569
	strh	r0,[r1]
# [741] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj570
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj569
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj577
# [742] else clockticks6502+=1;
	ldr	r0,.Lj578
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj578
	str	r1,[r0]
	b	.Lj580
.Lj577:
	ldr	r0,.Lj578
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj578
	str	r1,[r0]
.Lj580:
.Lj568:
# [744] end;
	bx	r14
.Lj566:
	.long	U_$UNIT6502_$$_STATUS
.Lj569:
	.long	U_$UNIT6502_$$_PC
.Lj570:
	.long	U_$UNIT6502_$$_OLDPC
.Lj572:
	.long	U_$UNIT6502_$$_RELADDR
.Lj578:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le43:
	.size	UNIT6502_$$_BNE, .Le43 - UNIT6502_$$_BNE

.section .text.n_unit6502_$$_bpl
	.balign 4
UNIT6502_$$_BPL:
# [748] begin
# [749] if ((status and FLAG_SIGN) = 0) then
	ldr	r0,.Lj585
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	bne	.Lj587
# [751] oldpc := pc;
	ldr	r0,.Lj588
	ldrh	r1,[r0]
	ldr	r0,.Lj589
	strh	r1,[r0]
# [752] pc += reladdr;
	ldr	r0,.Lj588
	ldrh	r1,[r0]
	ldr	r0,.Lj591
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj588
	strh	r0,[r1]
# [753] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj589
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj588
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj596
# [754] else clockticks6502+=1;
	ldr	r0,.Lj597
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj597
	str	r1,[r0]
	b	.Lj599
.Lj596:
	ldr	r0,.Lj597
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj597
	str	r1,[r0]
.Lj599:
.Lj587:
# [756] end;
	bx	r14
.Lj585:
	.long	U_$UNIT6502_$$_STATUS
.Lj588:
	.long	U_$UNIT6502_$$_PC
.Lj589:
	.long	U_$UNIT6502_$$_OLDPC
.Lj591:
	.long	U_$UNIT6502_$$_RELADDR
.Lj597:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le44:
	.size	UNIT6502_$$_BPL, .Le44 - UNIT6502_$$_BPL

.section .text.n_unit6502_$$_bra
	.balign 4
UNIT6502_$$_BRA:
# [760] begin
# [761] oldpc := pc;
	ldr	r0,.Lj604
	ldrh	r1,[r0]
	ldr	r0,.Lj605
	strh	r1,[r0]
# [762] pc += reladdr;
	ldr	r0,.Lj604
	ldrh	r1,[r0]
	ldr	r0,.Lj607
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj604
	strh	r0,[r1]
# [763] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj605
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj604
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj612
# [764] else clockticks6502+=1;
	ldr	r0,.Lj613
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj613
	str	r1,[r0]
	b	.Lj615
.Lj612:
	ldr	r0,.Lj613
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj613
	str	r1,[r0]
.Lj615:
# [765] end;
	bx	r14
.Lj604:
	.long	U_$UNIT6502_$$_PC
.Lj605:
	.long	U_$UNIT6502_$$_OLDPC
.Lj607:
	.long	U_$UNIT6502_$$_RELADDR
.Lj613:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le45:
	.size	UNIT6502_$$_BRA, .Le45 - UNIT6502_$$_BRA

.section .text.n_unit6502_$$_brk
	.balign 4
UNIT6502_$$_BRK:
# [769] begin
	stmfd	r13!,{r4,r14}
# [770] pc+=1;
	ldr	r0,.Lj620
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r1,r0
	ldr	r0,.Lj620
	strh	r1,[r0]
# [771] push16(pc); //push next instruction address onto stack
	ldr	r0,.Lj620
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUSH16$WORD
# [772] push8(status or FLAG_BREAK); //push CPU status to stack
	ldr	r0,.Lj623
	ldrb	r0,[r0]
	orr	r0,r0,#16
	uxth	r0,r0
	bl	UNIT6502_$$_PUSH8$WORD
# [222] {$define setinterrupt:= status :=status or FLAG_INTERRUPT}
	ldr	r0,.Lj623
	ldrb	r0,[r0]
	orr	r0,r0,#4
	and	r0,r0,#255
	ldr	r1,.Lj623
	strb	r0,[r1]
# [774] pc := word(read6502($FFFE)) or (word(read6502($FFFF)) shl 8);
	mov	r0,#254
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
	mov	r4,r0
	mov	r0,#255
	orr	r0,r0,#65280
	bl	UNIT6502_$$_READ6502$LONGINT$$BYTE
# Peephole FoldShiftProcess done
# [775] end;
	orr	r0,r4,r0,lsl #8
	uxth	r0,r0
	ldr	r1,.Lj620
	strh	r0,[r1]
	ldmfd	r13!,{r4,r15}
.Lj620:
	.long	U_$UNIT6502_$$_PC
.Lj623:
	.long	U_$UNIT6502_$$_STATUS
.Le46:
	.size	UNIT6502_$$_BRK, .Le46 - UNIT6502_$$_BRK

.section .text.n_unit6502_$$_bvc
	.balign 4
UNIT6502_$$_BVC:
# [779] begin
# [780] if ((status and FLAG_OVERFLOW) = 0) then
	ldr	r0,.Lj629
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#64
	bne	.Lj631
# [782] oldpc := pc;
	ldr	r0,.Lj632
	ldrh	r1,[r0]
	ldr	r0,.Lj633
	strh	r1,[r0]
# [783] pc += reladdr;
	ldr	r0,.Lj632
	ldrh	r1,[r0]
	ldr	r0,.Lj635
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj632
	strh	r0,[r1]
# [784] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj633
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj632
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj640
# [785] else clockticks6502+=1;
	ldr	r0,.Lj641
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj641
	str	r1,[r0]
	b	.Lj643
.Lj640:
	ldr	r0,.Lj641
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj641
	str	r1,[r0]
.Lj643:
.Lj631:
# [787] end;
	bx	r14
.Lj629:
	.long	U_$UNIT6502_$$_STATUS
.Lj632:
	.long	U_$UNIT6502_$$_PC
.Lj633:
	.long	U_$UNIT6502_$$_OLDPC
.Lj635:
	.long	U_$UNIT6502_$$_RELADDR
.Lj641:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le47:
	.size	UNIT6502_$$_BVC, .Le47 - UNIT6502_$$_BVC

.section .text.n_unit6502_$$_bvs
	.balign 4
UNIT6502_$$_BVS:
# [791] begin
# [792] if ((status and FLAG_OVERFLOW) = FLAG_OVERFLOW) then
	ldr	r0,.Lj648
	ldrb	r0,[r0]
	and	r0,r0,#64
	cmp	r0,#64
	bne	.Lj650
# [794] oldpc := pc;
	ldr	r0,.Lj651
	ldrh	r1,[r0]
	ldr	r0,.Lj652
	strh	r1,[r0]
# [795] pc += reladdr;
	ldr	r0,.Lj651
	ldrh	r1,[r0]
	ldr	r0,.Lj654
	ldrh	r0,[r0]
	add	r0,r0,r1
	uxth	r0,r0
	ldr	r1,.Lj651
	strh	r0,[r1]
# [796] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	ldr	r0,.Lj652
	ldrh	r0,[r0]
	and	r1,r0,#65280
	ldr	r0,.Lj651
	ldrh	r0,[r0]
	and	r0,r0,#65280
	cmp	r1,r0
	beq	.Lj659
# [797] else clockticks6502+=1;
	ldr	r0,.Lj660
	ldr	r0,[r0]
	add	r1,r0,#2
	ldr	r0,.Lj660
	str	r1,[r0]
	b	.Lj662
.Lj659:
	ldr	r0,.Lj660
	ldr	r0,[r0]
	add	r1,r0,#1
	ldr	r0,.Lj660
	str	r1,[r0]
.Lj662:
.Lj650:
# [799] end;
	bx	r14
.Lj648:
	.long	U_$UNIT6502_$$_STATUS
.Lj651:
	.long	U_$UNIT6502_$$_PC
.Lj652:
	.long	U_$UNIT6502_$$_OLDPC
.Lj654:
	.long	U_$UNIT6502_$$_RELADDR
.Lj660:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le48:
	.size	UNIT6502_$$_BVS, .Le48 - UNIT6502_$$_BVS

.section .text.n_unit6502_$$_clc
	.balign 4
UNIT6502_$$_CLC:
# [803] begin
	ldr	r0,.Lj667
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj667
	strb	r0,[r1]
# [805] end;
	bx	r14
.Lj667:
	.long	U_$UNIT6502_$$_STATUS
.Le49:
	.size	UNIT6502_$$_CLC, .Le49 - UNIT6502_$$_CLC

.section .text.n_unit6502_$$_cld
	.balign 4
UNIT6502_$$_CLD:
# [809] begin
# [225] {$define cleardecimal:= status := status and not(FLAG_DECIMAL)}
	ldr	r0,.Lj671
	ldrb	r0,[r0]
	bic	r0,r0,#8
	and	r0,r0,#255
	ldr	r1,.Lj671
	strb	r0,[r1]
# [811] end;
	bx	r14
.Lj671:
	.long	U_$UNIT6502_$$_STATUS
.Le50:
	.size	UNIT6502_$$_CLD, .Le50 - UNIT6502_$$_CLD

.section .text.n_unit6502_$$_cli
	.balign 4
UNIT6502_$$_CLI:
# [815] begin
# [223] {$define clearinterrupt:= status:= status and not(FLAG_INTERRUPT)}
	ldr	r0,.Lj675
	ldrb	r0,[r0]
	bic	r0,r0,#4
	and	r0,r0,#255
	ldr	r1,.Lj675
	strb	r0,[r1]
# [817] end;
	bx	r14
.Lj675:
	.long	U_$UNIT6502_$$_STATUS
.Le51:
	.size	UNIT6502_$$_CLI, .Le51 - UNIT6502_$$_CLI

.section .text.n_unit6502_$$_clv
	.balign 4
UNIT6502_$$_CLV:
# [821] begin
	ldr	r0,.Lj679
	ldrb	r0,[r0]
	bic	r0,r0,#64
	and	r0,r0,#255
	ldr	r1,.Lj679
	strb	r0,[r1]
# [823] end;
	bx	r14
.Lj679:
	.long	U_$UNIT6502_$$_STATUS
.Le52:
	.size	UNIT6502_$$_CLV, .Le52 - UNIT6502_$$_CLV

.section .text.n_unit6502_$$_cmp
	.balign 4
UNIT6502_$$_CMP:
# [827] begin
	stmfd	r13!,{r14}
# [828] penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj683
	strb	r0,[r1]
# [829] value := byte(getvalue);
	bl	UNIT6502_$$_GETVALUE$$WORD
	and	r1,r0,#255
	ldr	r0,.Lj684
	strh	r1,[r0]
# [830] aresult := word(a) - value;
	ldr	r0,.Lj685
	ldrb	r1,[r0]
	ldr	r0,.Lj684
	ldrh	r0,[r0]
	sub	r0,r1,r0
	uxth	r0,r0
	ldr	r1,.Lj687
	strh	r0,[r1]
# [831] if (a >= (value and $00FF)) then setcarry else clearcarry;
	ldr	r0,.Lj684
	ldrh	r0,[r0]
	and	r1,r0,#255
	ldr	r0,.Lj685
	ldrb	r0,[r0]
	cmp	r1,r0
	bhi	.Lj691
	ldr	r0,.Lj692
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj692
	strb	r1,[r0]
	b	.Lj694
.Lj691:
	ldr	r0,.Lj692
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj692
	strb	r0,[r1]
.Lj694:
# [832] if (a = (byte(value and $00FF))) then setzero else clearzero;
	ldr	r0,.Lj684
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
	ldr	r0,.Lj685
	ldrb	r0,[r0]
	cmp	r1,r0
	bne	.Lj700
	ldr	r0,.Lj692
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj692
	strb	r1,[r0]
	b	.Lj703
.Lj700:
	ldr	r0,.Lj692
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj692
	strb	r0,[r1]
.Lj703:
# [833] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj687
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj708
	ldr	r0,.Lj692
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj692
	strb	r0,[r1]
	b	.Lj711
.Lj708:
	ldr	r0,.Lj692
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r1,r0,#255
	ldr	r0,.Lj692
	strb	r1,[r0]
.Lj711:
# [834] end;
	ldmfd	r13!,{r15}
.Lj683:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj684:
	.long	U_$UNIT6502_$$_VALUE
.Lj685:
	.long	U_$UNIT6502_$$_A
.Lj687:
	.long	U_$UNIT6502_$$_ARESULT
.Lj692:
	.long	U_$UNIT6502_$$_STATUS
.Le53:
	.size	UNIT6502_$$_CMP, .Le53 - UNIT6502_$$_CMP

.section .text.n_unit6502_$$_cpx
	.balign 4
UNIT6502_$$_CPX:
# [838] begin
	stmfd	r13!,{r14}
# [839] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj716
	strh	r0,[r1]
# [840] aresult := word(x) - value;
	ldr	r0,.Lj717
	ldrb	r1,[r0]
	ldr	r0,.Lj716
	ldrh	r0,[r0]
	sub	r0,r1,r0
	uxth	r0,r0
	ldr	r1,.Lj719
	strh	r0,[r1]
# [841] if (x >= (value and $00FF)) then setcarry else clearcarry;
	ldr	r0,.Lj716
	ldrh	r0,[r0]
	and	r1,r0,#255
	ldr	r0,.Lj717
	ldrb	r0,[r0]
	cmp	r1,r0
	bhi	.Lj723
	ldr	r0,.Lj724
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj724
	strb	r1,[r0]
	b	.Lj726
.Lj723:
	ldr	r0,.Lj724
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj724
	strb	r0,[r1]
.Lj726:
# [842] if (x = (byte(value and $00FF))) then setzero else clearzero;
	ldr	r0,.Lj716
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r1,r0,#255
	ldr	r0,.Lj717
	ldrb	r0,[r0]
	cmp	r1,r0
	bne	.Lj732
	ldr	r0,.Lj724
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj724
	strb	r1,[r0]
	b	.Lj735
.Lj732:
	ldr	r0,.Lj724
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj724
	strb	r0,[r1]
.Lj735:
# [843] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj719
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj740
	ldr	r0,.Lj724
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj724
	strb	r0,[r1]
	b	.Lj743
.Lj740:
	ldr	r0,.Lj724
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r1,r0,#255
	ldr	r0,.Lj724
	strb	r1,[r0]
.Lj743:
# [844] end;
	ldmfd	r13!,{r15}
.Lj716:
	.long	U_$UNIT6502_$$_VALUE
.Lj717:
	.long	U_$UNIT6502_$$_X
.Lj719:
	.long	U_$UNIT6502_$$_ARESULT
.Lj724:
	.long	U_$UNIT6502_$$_STATUS
.Le54:
	.size	UNIT6502_$$_CPX, .Le54 - UNIT6502_$$_CPX

.section .text.n_unit6502_$$_cpy
	.balign 4
UNIT6502_$$_CPY:
# [848] begin
	stmfd	r13!,{r14}
# [849] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj748
	strh	r0,[r1]
# [850] aresult := word(y) - value;
	ldr	r0,.Lj749
	ldrb	r1,[r0]
	ldr	r0,.Lj748
	ldrh	r0,[r0]
	sub	r0,r1,r0
	uxth	r1,r0
	ldr	r0,.Lj751
	strh	r1,[r0]
# [851] if (y >= (value and $00FF)) then setcarry else clearcarry;
	ldr	r0,.Lj748
	ldrh	r0,[r0]
	and	r1,r0,#255
	ldr	r0,.Lj749
	ldrb	r0,[r0]
	cmp	r1,r0
	bhi	.Lj755
	ldr	r0,.Lj756
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj756
	strb	r1,[r0]
	b	.Lj758
.Lj755:
	ldr	r0,.Lj756
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj756
	strb	r0,[r1]
.Lj758:
# [852] if (y = (value and $00FF)) then setzero else clearzero;
	ldr	r0,.Lj748
	ldrh	r0,[r0]
	and	r1,r0,#255
	ldr	r0,.Lj749
	ldrb	r0,[r0]
	cmp	r1,r0
	bne	.Lj764
	ldr	r0,.Lj756
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj756
	strb	r1,[r0]
	b	.Lj767
.Lj764:
	ldr	r0,.Lj756
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj756
	strb	r0,[r1]
.Lj767:
# [853] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj751
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj772
	ldr	r0,.Lj756
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj756
	strb	r0,[r1]
	b	.Lj775
.Lj772:
	ldr	r0,.Lj756
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r1,r0,#255
	ldr	r0,.Lj756
	strb	r1,[r0]
.Lj775:
# [854] end;
	ldmfd	r13!,{r15}
.Lj748:
	.long	U_$UNIT6502_$$_VALUE
.Lj749:
	.long	U_$UNIT6502_$$_Y
.Lj751:
	.long	U_$UNIT6502_$$_ARESULT
.Lj756:
	.long	U_$UNIT6502_$$_STATUS
.Le55:
	.size	UNIT6502_$$_CPY, .Le55 - UNIT6502_$$_CPY

.section .text.n_unit6502_$$_dea
	.balign 4
UNIT6502_$$_DEA:
# [858] begin
	stmfd	r13!,{r14}
# [859] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj780
	strh	r0,[r1]
# [860] aresult := value - 1;
	ldr	r0,.Lj780
	ldrh	r0,[r0]
	sub	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj782
	strh	r0,[r1]
# [861] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj782
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj785
	ldr	r0,.Lj786
	ldrb	r0,[r0]
	orr	r1,r0,#128
	ldr	r0,.Lj786
	strb	r1,[r0]
	b	.Lj788
.Lj785:
	ldr	r0,.Lj786
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj786
	strb	r0,[r1]
.Lj788:
# [862] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj782
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj793
	ldr	r0,.Lj786
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj786
	strb	r0,[r1]
	b	.Lj796
.Lj793:
	ldr	r0,.Lj786
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj786
	strb	r0,[r1]
.Lj796:
# [863] putvalue(aresult);
	ldr	r0,.Lj782
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [864] end;
	ldmfd	r13!,{r15}
.Lj780:
	.long	U_$UNIT6502_$$_VALUE
.Lj782:
	.long	U_$UNIT6502_$$_ARESULT
.Lj786:
	.long	U_$UNIT6502_$$_STATUS
.Le56:
	.size	UNIT6502_$$_DEA, .Le56 - UNIT6502_$$_DEA

.section .text.n_unit6502_$$_dex
	.balign 4
UNIT6502_$$_DEX:
# [868] begin
# [869] x-=1;
	ldr	r0,.Lj802
	ldrb	r0,[r0]
	sub	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj802
	strb	r1,[r0]
# [870] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj802
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj806
	ldr	r0,.Lj807
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj807
	strb	r0,[r1]
	b	.Lj809
.Lj806:
	ldr	r0,.Lj807
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj807
	strb	r0,[r1]
.Lj809:
# [871] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj802
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj814
	ldr	r0,.Lj807
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj807
	strb	r1,[r0]
	b	.Lj817
.Lj814:
	ldr	r0,.Lj807
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj807
	strb	r0,[r1]
.Lj817:
# [872] end;
	bx	r14
.Lj802:
	.long	U_$UNIT6502_$$_X
.Lj807:
	.long	U_$UNIT6502_$$_STATUS
.Le57:
	.size	UNIT6502_$$_DEX, .Le57 - UNIT6502_$$_DEX

.section .text.n_unit6502_$$_dey
	.balign 4
UNIT6502_$$_DEY:
# [876] begin
# [877] y-=1;
	ldr	r0,.Lj822
	ldrb	r0,[r0]
	sub	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj822
	strb	r1,[r0]
# [878] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj822
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj826
	ldr	r0,.Lj827
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj827
	strb	r0,[r1]
	b	.Lj829
.Lj826:
	ldr	r0,.Lj827
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj827
	strb	r0,[r1]
.Lj829:
# [879] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj822
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj834
	ldr	r0,.Lj827
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj827
	strb	r1,[r0]
	b	.Lj837
.Lj834:
	ldr	r0,.Lj827
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj827
	strb	r0,[r1]
.Lj837:
# [880] end;
	bx	r14
.Lj822:
	.long	U_$UNIT6502_$$_Y
.Lj827:
	.long	U_$UNIT6502_$$_STATUS
.Le58:
	.size	UNIT6502_$$_DEY, .Le58 - UNIT6502_$$_DEY

.section .text.n_unit6502_$$_eor
	.balign 4
UNIT6502_$$_EOR:
# [884] begin
	stmfd	r13!,{r14}
# [885] penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj842
	strb	r0,[r1]
# [886] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj843
	strh	r0,[r1]
# [887] aresult := a xor value;
	ldr	r0,.Lj844
	ldrb	r1,[r0]
	ldr	r0,.Lj843
	ldrh	r0,[r0]
	eor	r0,r0,r1
	ldr	r1,.Lj846
	strh	r0,[r1]
# [888] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj846
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj849
	ldr	r0,.Lj850
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj850
	strb	r0,[r1]
	b	.Lj852
.Lj849:
	ldr	r0,.Lj850
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj850
	strb	r0,[r1]
.Lj852:
# [889] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj846
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj857
	ldr	r0,.Lj850
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj850
	strb	r0,[r1]
	b	.Lj860
.Lj857:
	ldr	r0,.Lj850
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj850
	strb	r0,[r1]
.Lj860:
# [890] a:=byte(aresult and $00FF);
	ldr	r0,.Lj846
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj844
	strb	r0,[r1]
# [891] end;
	ldmfd	r13!,{r15}
.Lj842:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj843:
	.long	U_$UNIT6502_$$_VALUE
.Lj844:
	.long	U_$UNIT6502_$$_A
.Lj846:
	.long	U_$UNIT6502_$$_ARESULT
.Lj850:
	.long	U_$UNIT6502_$$_STATUS
.Le59:
	.size	UNIT6502_$$_EOR, .Le59 - UNIT6502_$$_EOR

.section .text.n_unit6502_$$_ina
	.balign 4
UNIT6502_$$_INA:
# [895] begin
	stmfd	r13!,{r14}
# [896] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj867
	strh	r0,[r1]
# [897] aresult := value + 1;
	ldr	r0,.Lj867
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj869
	strh	r0,[r1]
# [898] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj869
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj872
	ldr	r0,.Lj873
	ldrb	r0,[r0]
	orr	r1,r0,#128
	ldr	r0,.Lj873
	strb	r1,[r0]
	b	.Lj875
.Lj872:
	ldr	r0,.Lj873
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj873
	strb	r0,[r1]
.Lj875:
# [899] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj869
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj880
	ldr	r0,.Lj873
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj873
	strb	r0,[r1]
	b	.Lj883
.Lj880:
	ldr	r0,.Lj873
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj873
	strb	r0,[r1]
.Lj883:
# [900] putvalue(aresult);
	ldr	r0,.Lj869
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [901] end;
	ldmfd	r13!,{r15}
.Lj867:
	.long	U_$UNIT6502_$$_VALUE
.Lj869:
	.long	U_$UNIT6502_$$_ARESULT
.Lj873:
	.long	U_$UNIT6502_$$_STATUS
.Le60:
	.size	UNIT6502_$$_INA, .Le60 - UNIT6502_$$_INA

.section .text.n_unit6502_$$_inx
	.balign 4
UNIT6502_$$_INX:
# [905] begin
# [906] x+=1;
	ldr	r0,.Lj889
	ldrb	r0,[r0]
	add	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj889
	strb	r1,[r0]
# [907] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj889
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj893
	ldr	r0,.Lj894
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj894
	strb	r0,[r1]
	b	.Lj896
.Lj893:
	ldr	r0,.Lj894
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj894
	strb	r0,[r1]
.Lj896:
# [908] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj889
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj901
	ldr	r0,.Lj894
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj894
	strb	r1,[r0]
	b	.Lj904
.Lj901:
	ldr	r0,.Lj894
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj894
	strb	r0,[r1]
.Lj904:
# [909] end;
	bx	r14
.Lj889:
	.long	U_$UNIT6502_$$_X
.Lj894:
	.long	U_$UNIT6502_$$_STATUS
.Le61:
	.size	UNIT6502_$$_INX, .Le61 - UNIT6502_$$_INX

.section .text.n_unit6502_$$_iny
	.balign 4
UNIT6502_$$_INY:
# [913] begin
# [914] y+=1;
	ldr	r0,.Lj909
	ldrb	r0,[r0]
	add	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj909
	strb	r1,[r0]
# [915] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj909
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj913
	ldr	r0,.Lj914
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj914
	strb	r0,[r1]
	b	.Lj916
.Lj913:
	ldr	r0,.Lj914
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj914
	strb	r0,[r1]
.Lj916:
# [916] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj909
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj921
	ldr	r0,.Lj914
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj914
	strb	r1,[r0]
	b	.Lj924
.Lj921:
	ldr	r0,.Lj914
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj914
	strb	r0,[r1]
.Lj924:
# [917] end;
	bx	r14
.Lj909:
	.long	U_$UNIT6502_$$_Y
.Lj914:
	.long	U_$UNIT6502_$$_STATUS
.Le62:
	.size	UNIT6502_$$_INY, .Le62 - UNIT6502_$$_INY

.section .text.n_unit6502_$$_jmp
	.balign 4
UNIT6502_$$_JMP:
# [921] begin
# [922] pc := ea;
	ldr	r0,.Lj929
	ldrh	r0,[r0]
	ldr	r1,.Lj930
	strh	r0,[r1]
# [923] end;
	bx	r14
.Lj929:
	.long	U_$UNIT6502_$$_EA
.Lj930:
	.long	U_$UNIT6502_$$_PC
.Le63:
	.size	UNIT6502_$$_JMP, .Le63 - UNIT6502_$$_JMP

.section .text.n_unit6502_$$_jsr
	.balign 4
UNIT6502_$$_JSR:
# [927] begin
	stmfd	r13!,{r14}
# [928] push16(pc - 1);
	ldr	r0,.Lj933
	ldrh	r0,[r0]
	sub	r0,r0,#1
	uxth	r0,r0
	bl	UNIT6502_$$_PUSH16$WORD
# [929] pc := ea;
	ldr	r0,.Lj934
	ldrh	r0,[r0]
	ldr	r1,.Lj933
	strh	r0,[r1]
# [930] end;
	ldmfd	r13!,{r15}
.Lj933:
	.long	U_$UNIT6502_$$_PC
.Lj934:
	.long	U_$UNIT6502_$$_EA
.Le64:
	.size	UNIT6502_$$_JSR, .Le64 - UNIT6502_$$_JSR

.section .text.n_unit6502_$$_lda
	.balign 4
UNIT6502_$$_LDA:
# [934] begin
	stmfd	r13!,{r14}
# [935] penaltyop := 1;
	mov	r1,#1
	ldr	r0,.Lj938
	strb	r1,[r0]
# [936] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj939
	strh	r0,[r1]
# [937] a := (value and $00FF);
	ldr	r0,.Lj939
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj941
	strb	r0,[r1]
# [938] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj941
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj944
	ldr	r0,.Lj945
	ldrb	r0,[r0]
	orr	r1,r0,#128
	ldr	r0,.Lj945
	strb	r1,[r0]
	b	.Lj947
.Lj944:
	ldr	r0,.Lj945
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj945
	strb	r0,[r1]
.Lj947:
# [939] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj941
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj952
	ldr	r0,.Lj945
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj945
	strb	r1,[r0]
	b	.Lj955
.Lj952:
	ldr	r0,.Lj945
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj945
	strb	r0,[r1]
.Lj955:
# [940] end;
	ldmfd	r13!,{r15}
.Lj938:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj939:
	.long	U_$UNIT6502_$$_VALUE
.Lj941:
	.long	U_$UNIT6502_$$_A
.Lj945:
	.long	U_$UNIT6502_$$_STATUS
.Le65:
	.size	UNIT6502_$$_LDA, .Le65 - UNIT6502_$$_LDA

.section .text.n_unit6502_$$_ldc
	.balign 4
UNIT6502_$$_LDC:
# [945] begin
	stmfd	r13!,{r14}
# [946] cs^:=getvalue32 shl 8;
	bl	UNIT6502_$$_GETVALUE32$$LONGWORD
	mov	r1,r0,lsl #8
	ldr	r0,.Lj960
	ldr	r0,[r0]
	str	r1,[r0]
# [947] end;
	ldmfd	r13!,{r15}
.Lj960:
	.long	U_$UNIT6502_$$_CS
.Le66:
	.size	UNIT6502_$$_LDC, .Le66 - UNIT6502_$$_LDC

.section .text.n_unit6502_$$_ldd
	.balign 4
UNIT6502_$$_LDD:
# [951] begin
	stmfd	r13!,{r14}
# [952] ds^:=getvalue32 shl 8;
	bl	UNIT6502_$$_GETVALUE32$$LONGWORD
	mov	r1,r0,lsl #8
	ldr	r0,.Lj963
	ldr	r0,[r0]
	str	r1,[r0]
# [953] end;
	ldmfd	r13!,{r15}
.Lj963:
	.long	U_$UNIT6502_$$_DS
.Le67:
	.size	UNIT6502_$$_LDD, .Le67 - UNIT6502_$$_LDD

.section .text.n_unit6502_$$_ldx
	.balign 4
UNIT6502_$$_LDX:
# [958] begin
	stmfd	r13!,{r14}
# [959] penaltyop := 1;
	mov	r1,#1
	ldr	r0,.Lj966
	strb	r1,[r0]
# [960] value := getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj967
	strh	r0,[r1]
# [961] x := (value and $00FF);
	ldr	r0,.Lj967
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj969
	strb	r0,[r1]
# [962] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj969
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj972
	ldr	r0,.Lj973
	ldrb	r0,[r0]
	orr	r1,r0,#128
	ldr	r0,.Lj973
	strb	r1,[r0]
	b	.Lj975
.Lj972:
	ldr	r0,.Lj973
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj973
	strb	r0,[r1]
.Lj975:
# [963] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj969
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj980
	ldr	r0,.Lj973
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj973
	strb	r1,[r0]
	b	.Lj983
.Lj980:
	ldr	r0,.Lj973
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj973
	strb	r0,[r1]
.Lj983:
# [964] end;
	ldmfd	r13!,{r15}
.Lj966:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj967:
	.long	U_$UNIT6502_$$_VALUE
.Lj969:
	.long	U_$UNIT6502_$$_X
.Lj973:
	.long	U_$UNIT6502_$$_STATUS
.Le68:
	.size	UNIT6502_$$_LDX, .Le68 - UNIT6502_$$_LDX

.section .text.n_unit6502_$$_ldy
	.balign 4
UNIT6502_$$_LDY:
# [968] begin
	stmfd	r13!,{r14}
# [969] penaltyop := 1;
	mov	r1,#1
	ldr	r0,.Lj988
	strb	r1,[r0]
# [970] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj989
	strh	r0,[r1]
# [971] y := (value and $00FF);
	ldr	r0,.Lj989
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj991
	strb	r0,[r1]
# [972] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj991
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj994
	ldr	r0,.Lj995
	ldrb	r0,[r0]
	orr	r1,r0,#128
	ldr	r0,.Lj995
	strb	r1,[r0]
	b	.Lj997
.Lj994:
	ldr	r0,.Lj995
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj995
	strb	r0,[r1]
.Lj997:
# [973] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj991
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1002
	ldr	r0,.Lj995
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj995
	strb	r1,[r0]
	b	.Lj1005
.Lj1002:
	ldr	r0,.Lj995
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj995
	strb	r0,[r1]
.Lj1005:
# [974] end;
	ldmfd	r13!,{r15}
.Lj988:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj989:
	.long	U_$UNIT6502_$$_VALUE
.Lj991:
	.long	U_$UNIT6502_$$_Y
.Lj995:
	.long	U_$UNIT6502_$$_STATUS
.Le69:
	.size	UNIT6502_$$_LDY, .Le69 - UNIT6502_$$_LDY

.section .text.n_unit6502_$$_lsr
	.balign 4
UNIT6502_$$_LSR:
# [978] begin
	stmfd	r13!,{r14}
# [979] value := getvalue and $FF;
	bl	UNIT6502_$$_GETVALUE$$WORD
	and	r1,r0,#255
	ldr	r0,.Lj1010
	strh	r1,[r0]
# [980] aresult := value shr 1;
	ldr	r0,.Lj1010
	ldrh	r0,[r0]
	mov	r0,r0,lsr #1
	uxth	r1,r0
	ldr	r0,.Lj1012
	strh	r1,[r0]
# [981] if (value and 1)=1 then setcarry else clearcarry;
	ldr	r0,.Lj1010
	ldrh	r0,[r0]
	and	r0,r0,#1
	cmp	r0,#1
	bne	.Lj1015
	ldr	r0,.Lj1016
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj1016
	strb	r1,[r0]
	b	.Lj1018
.Lj1015:
	ldr	r0,.Lj1016
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj1016
	strb	r1,[r0]
.Lj1018:
# [982] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1012
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1023
	ldr	r0,.Lj1016
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1016
	strb	r0,[r1]
	b	.Lj1026
.Lj1023:
	ldr	r0,.Lj1016
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r1,r0,#255
	ldr	r0,.Lj1016
	strb	r1,[r0]
.Lj1026:
# [983] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1012
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1031
	ldr	r0,.Lj1016
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1016
	strb	r0,[r1]
	b	.Lj1034
.Lj1031:
	ldr	r0,.Lj1016
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1016
	strb	r0,[r1]
.Lj1034:
# [984] putvalue(aresult);
	ldr	r0,.Lj1012
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [985] end;
	ldmfd	r13!,{r15}
.Lj1010:
	.long	U_$UNIT6502_$$_VALUE
.Lj1012:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1016:
	.long	U_$UNIT6502_$$_STATUS
.Le70:
	.size	UNIT6502_$$_LSR, .Le70 - UNIT6502_$$_LSR

.section .text.n_unit6502_$$_nop
	.balign 4
UNIT6502_$$_NOP:
# [989] begin
# [990] case opcode of
	ldr	r0,.Lj1048
	ldrb	r0,[r0]
	cmp	r0,#28
	bcc	.Lj1041
	subs	r0,r0,#28
	beq	.Lj1042
	subs	r0,r0,#32
	beq	.Lj1043
	subs	r0,r0,#32
	beq	.Lj1044
	subs	r0,r0,#32
	beq	.Lj1045
	subs	r0,r0,#96
	beq	.Lj1046
	subs	r0,r0,#32
	beq	.Lj1047
	b	.Lj1041
.Lj1042:
# [991] $1C:  penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1049
	strb	r0,[r1]
	b	.Lj1040
.Lj1043:
# [992] $3C:  penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1049
	strb	r0,[r1]
	b	.Lj1040
.Lj1044:
# [993] $5C:  penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1049
	strb	r0,[r1]
	b	.Lj1040
.Lj1045:
# [994] $7C:  penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1049
	strb	r0,[r1]
	b	.Lj1040
.Lj1046:
# [995] $DC:  penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1049
	strb	r0,[r1]
	b	.Lj1040
.Lj1047:
# [996] $FC:  penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1049
	strb	r0,[r1]
.Lj1041:
.Lj1040:
# [998] end;
	bx	r14
.Lj1048:
	.long	U_$UNIT6502_$$_OPCODE
.Lj1049:
	.long	U_$UNIT6502_$$_PENALTYOP
.Le71:
	.size	UNIT6502_$$_NOP, .Le71 - UNIT6502_$$_NOP

.section .text.n_unit6502_$$_ora
	.balign 4
UNIT6502_$$_ORA:
# [1002] begin
	stmfd	r13!,{r14}
# [1003] penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1057
	strb	r0,[r1]
# [1004] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj1058
	strh	r0,[r1]
# [1005] aresult := a or value;
	ldr	r0,.Lj1059
	ldrb	r1,[r0]
	ldr	r0,.Lj1058
	ldrh	r0,[r0]
	orr	r0,r0,r1
	ldr	r1,.Lj1061
	strh	r0,[r1]
# [1006] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1061
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1064
	ldr	r0,.Lj1065
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1065
	strb	r0,[r1]
	b	.Lj1067
.Lj1064:
	ldr	r0,.Lj1065
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1065
	strb	r0,[r1]
.Lj1067:
# [1007] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1061
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1072
	ldr	r0,.Lj1065
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1065
	strb	r0,[r1]
	b	.Lj1075
.Lj1072:
	ldr	r0,.Lj1065
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1065
	strb	r0,[r1]
.Lj1075:
# [1008] a:=byte(aresult and $00FF);
	ldr	r0,.Lj1061
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj1059
	strb	r0,[r1]
# [1009] end;
	ldmfd	r13!,{r15}
.Lj1057:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1058:
	.long	U_$UNIT6502_$$_VALUE
.Lj1059:
	.long	U_$UNIT6502_$$_A
.Lj1061:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1065:
	.long	U_$UNIT6502_$$_STATUS
.Le72:
	.size	UNIT6502_$$_ORA, .Le72 - UNIT6502_$$_ORA

.section .text.n_unit6502_$$_pha
	.balign 4
UNIT6502_$$_PHA:
# [1013] begin
	stmfd	r13!,{r14}
# [1014] push8(a);
	ldr	r0,.Lj1082
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [1015] end;
	ldmfd	r13!,{r15}
.Lj1082:
	.long	U_$UNIT6502_$$_A
.Le73:
	.size	UNIT6502_$$_PHA, .Le73 - UNIT6502_$$_PHA

.section .text.n_unit6502_$$_phc
	.balign 4
UNIT6502_$$_PHC:
# [1019] begin
	stmfd	r13!,{r14}
# [1020] push32(cs^ shr 8);
	ldr	r0,.Lj1085
	ldr	r0,[r0]
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
	bl	UNIT6502_$$_PUSH32$LONGWORD
# [1021] end;
	ldmfd	r13!,{r15}
.Lj1085:
	.long	U_$UNIT6502_$$_CS
.Le74:
	.size	UNIT6502_$$_PHC, .Le74 - UNIT6502_$$_PHC

.section .text.n_unit6502_$$_phd
	.balign 4
UNIT6502_$$_PHD:
# [1025] begin
	stmfd	r13!,{r14}
# [1026] push32(ds^ shr 8);
	ldr	r0,.Lj1088
	ldr	r0,[r0]
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
	bl	UNIT6502_$$_PUSH32$LONGWORD
# [1027] end;
	ldmfd	r13!,{r15}
.Lj1088:
	.long	U_$UNIT6502_$$_DS
.Le75:
	.size	UNIT6502_$$_PHD, .Le75 - UNIT6502_$$_PHD

.section .text.n_unit6502_$$_phx
	.balign 4
UNIT6502_$$_PHX:
# [1031] begin
	stmfd	r13!,{r14}
# [1032] push8(x);
	ldr	r0,.Lj1091
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [1033] end;
	ldmfd	r13!,{r15}
.Lj1091:
	.long	U_$UNIT6502_$$_X
.Le76:
	.size	UNIT6502_$$_PHX, .Le76 - UNIT6502_$$_PHX

.section .text.n_unit6502_$$_phy
	.balign 4
UNIT6502_$$_PHY:
# [1037] begin
	stmfd	r13!,{r14}
# [1038] push8(y);
	ldr	r0,.Lj1094
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUSH8$WORD
# [1039] end;
	ldmfd	r13!,{r15}
.Lj1094:
	.long	U_$UNIT6502_$$_Y
.Le77:
	.size	UNIT6502_$$_PHY, .Le77 - UNIT6502_$$_PHY

.section .text.n_unit6502_$$_php
	.balign 4
UNIT6502_$$_PHP:
# [1043] begin
	stmfd	r13!,{r14}
# [1044] push8(status or FLAG_BREAK);
	ldr	r0,.Lj1097
	ldrb	r0,[r0]
	orr	r0,r0,#16
	uxth	r0,r0
	bl	UNIT6502_$$_PUSH8$WORD
# [1045] end;
	ldmfd	r13!,{r15}
.Lj1097:
	.long	U_$UNIT6502_$$_STATUS
.Le78:
	.size	UNIT6502_$$_PHP, .Le78 - UNIT6502_$$_PHP

.section .text.n_unit6502_$$_pla
	.balign 4
UNIT6502_$$_PLA:
# [1049] begin
	stmfd	r13!,{r14}
# [1050] a := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
	ldr	r1,.Lj1100
	strb	r0,[r1]
# [1051] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1100
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1103
	ldr	r0,.Lj1104
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1104
	strb	r0,[r1]
	b	.Lj1106
.Lj1103:
	ldr	r0,.Lj1104
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1104
	strb	r0,[r1]
.Lj1106:
# [1052] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1100
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1111
	ldr	r0,.Lj1104
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1104
	strb	r1,[r0]
	b	.Lj1114
.Lj1111:
	ldr	r0,.Lj1104
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1104
	strb	r0,[r1]
.Lj1114:
# [1053] end;
	ldmfd	r13!,{r15}
.Lj1100:
	.long	U_$UNIT6502_$$_A
.Lj1104:
	.long	U_$UNIT6502_$$_STATUS
.Le79:
	.size	UNIT6502_$$_PLA, .Le79 - UNIT6502_$$_PLA

.section .text.n_unit6502_$$_plc
	.balign 4
UNIT6502_$$_PLC:
# [1057] begin
	stmfd	r13!,{r14}
# [1058] cs^:=pull32 shl 8;
	bl	UNIT6502_$$_PULL32$$LONGWORD
	mov	r1,r0,lsl #8
	ldr	r0,.Lj1119
	ldr	r0,[r0]
	str	r1,[r0]
# [1059] end;
	ldmfd	r13!,{r15}
.Lj1119:
	.long	U_$UNIT6502_$$_CS
.Le80:
	.size	UNIT6502_$$_PLC, .Le80 - UNIT6502_$$_PLC

.section .text.n_unit6502_$$_pld
	.balign 4
UNIT6502_$$_PLD:
# [1063] begin
	stmfd	r13!,{r14}
# [1064] ds^:=pull32 shl 8;
	bl	UNIT6502_$$_PULL32$$LONGWORD
	mov	r1,r0,lsl #8
	ldr	r0,.Lj1122
	ldr	r0,[r0]
	str	r1,[r0]
# [1065] end;
	ldmfd	r13!,{r15}
.Lj1122:
	.long	U_$UNIT6502_$$_DS
.Le81:
	.size	UNIT6502_$$_PLD, .Le81 - UNIT6502_$$_PLD

.section .text.n_unit6502_$$_plx
	.balign 4
UNIT6502_$$_PLX:
# [1069] begin
	stmfd	r13!,{r14}
# [1070] x := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
	ldr	r1,.Lj1125
	strb	r0,[r1]
# [1071] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1125
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1128
	ldr	r0,.Lj1129
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1129
	strb	r0,[r1]
	b	.Lj1131
.Lj1128:
	ldr	r0,.Lj1129
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1129
	strb	r0,[r1]
.Lj1131:
# [1072] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1125
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1136
	ldr	r0,.Lj1129
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1129
	strb	r1,[r0]
	b	.Lj1139
.Lj1136:
	ldr	r0,.Lj1129
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1129
	strb	r0,[r1]
.Lj1139:
# [1073] end;
	ldmfd	r13!,{r15}
.Lj1125:
	.long	U_$UNIT6502_$$_X
.Lj1129:
	.long	U_$UNIT6502_$$_STATUS
.Le82:
	.size	UNIT6502_$$_PLX, .Le82 - UNIT6502_$$_PLX

.section .text.n_unit6502_$$_ply
	.balign 4
UNIT6502_$$_PLY:
# [1077] begin
	stmfd	r13!,{r14}
# [1078] y := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
	ldr	r1,.Lj1144
	strb	r0,[r1]
# [1079] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1144
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1147
	ldr	r0,.Lj1148
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1148
	strb	r0,[r1]
	b	.Lj1150
.Lj1147:
	ldr	r0,.Lj1148
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1148
	strb	r0,[r1]
.Lj1150:
# [1080] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1144
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1155
	ldr	r0,.Lj1148
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1148
	strb	r1,[r0]
	b	.Lj1158
.Lj1155:
	ldr	r0,.Lj1148
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1148
	strb	r0,[r1]
.Lj1158:
# [1081] end;
	ldmfd	r13!,{r15}
.Lj1144:
	.long	U_$UNIT6502_$$_Y
.Lj1148:
	.long	U_$UNIT6502_$$_STATUS
.Le83:
	.size	UNIT6502_$$_PLY, .Le83 - UNIT6502_$$_PLY

.section .text.n_unit6502_$$_plp
	.balign 4
UNIT6502_$$_PLP:
# [1085] begin
	stmfd	r13!,{r14}
# [1086] status := pull8 or FLAG_CONSTANT;
	bl	UNIT6502_$$_PULL8$$BYTE
	orr	r0,r0,#32
	and	r0,r0,#255
	ldr	r1,.Lj1163
	strb	r0,[r1]
# [1087] end;
	ldmfd	r13!,{r15}
.Lj1163:
	.long	U_$UNIT6502_$$_STATUS
.Le84:
	.size	UNIT6502_$$_PLP, .Le84 - UNIT6502_$$_PLP

.section .text.n_unit6502_$$_rol
	.balign 4
UNIT6502_$$_ROL:
# [1091] begin
	stmfd	r13!,{r14}
# [1092] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj1166
	strh	r0,[r1]
# [1093] aresult := (value shl 1) or (status and FLAG_CARRY);
	ldr	r0,.Lj1167
	ldrb	r0,[r0]
	and	r1,r0,#1
	ldr	r0,.Lj1166
	ldrh	r0,[r0]
# Peephole FoldShiftProcess done
# [1098] end;
	orr	r0,r1,r0,lsl #1
	uxth	r1,r0
	ldr	r0,.Lj1169
	strh	r1,[r0]
# [1094] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj1169
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj1172
	ldr	r0,.Lj1167
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj1167
	strb	r1,[r0]
	b	.Lj1175
.Lj1172:
	ldr	r0,.Lj1167
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj1167
	strb	r1,[r0]
.Lj1175:
# [1095] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1169
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1180
	ldr	r0,.Lj1167
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1167
	strb	r1,[r0]
	b	.Lj1183
.Lj1180:
	ldr	r0,.Lj1167
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1167
	strb	r0,[r1]
.Lj1183:
# [1096] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1169
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1188
	ldr	r0,.Lj1167
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1167
	strb	r0,[r1]
	b	.Lj1191
.Lj1188:
	ldr	r0,.Lj1167
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r1,r0,#255
	ldr	r0,.Lj1167
	strb	r1,[r0]
.Lj1191:
# [1097] putvalue(aresult);
	ldr	r0,.Lj1169
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
	ldmfd	r13!,{r15}
.Lj1166:
	.long	U_$UNIT6502_$$_VALUE
.Lj1167:
	.long	U_$UNIT6502_$$_STATUS
.Lj1169:
	.long	U_$UNIT6502_$$_ARESULT
.Le85:
	.size	UNIT6502_$$_ROL, .Le85 - UNIT6502_$$_ROL

.section .text.n_unit6502_$$_ror
	.balign 4
UNIT6502_$$_ROR:
# [1102] begin
	stmfd	r13!,{r14}
# [1103] value := getvalue;;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj1197
	strh	r0,[r1]
# [1104] aresult := (value shr 1) or ((status and FLAG_CARRY) shl 7);
	ldr	r0,.Lj1198
	ldrb	r0,[r0]
	and	r0,r0,#1
	mov	r1,r0,lsl #7
	ldr	r0,.Lj1197
	ldrh	r0,[r0]
# Peephole FoldShiftProcess done
# [1109] end;
	orr	r0,r1,r0,lsr #1
	uxth	r1,r0
	ldr	r0,.Lj1200
	strh	r1,[r0]
# [1105] if (value and 1)=1 then setcarry else clearcarry;
	ldr	r0,.Lj1197
	ldrh	r0,[r0]
	and	r0,r0,#1
	cmp	r0,#1
	bne	.Lj1203
	ldr	r0,.Lj1198
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r1,r0,#255
	ldr	r0,.Lj1198
	strb	r1,[r0]
	b	.Lj1206
.Lj1203:
	ldr	r0,.Lj1198
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj1198
	strb	r0,[r1]
.Lj1206:
# [1106] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1200
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1211
	ldr	r0,.Lj1198
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1198
	strb	r1,[r0]
	b	.Lj1214
.Lj1211:
	ldr	r0,.Lj1198
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1198
	strb	r1,[r0]
.Lj1214:
# [1107] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1200
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1219
	ldr	r0,.Lj1198
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1198
	strb	r0,[r1]
	b	.Lj1222
.Lj1219:
	ldr	r0,.Lj1198
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r1,r0,#255
	ldr	r0,.Lj1198
	strb	r1,[r0]
.Lj1222:
# [1108] putvalue(aresult);
	ldr	r0,.Lj1200
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
	ldmfd	r13!,{r15}
.Lj1197:
	.long	U_$UNIT6502_$$_VALUE
.Lj1198:
	.long	U_$UNIT6502_$$_STATUS
.Lj1200:
	.long	U_$UNIT6502_$$_ARESULT
.Le86:
	.size	UNIT6502_$$_ROR, .Le86 - UNIT6502_$$_ROR

.section .text.n_unit6502_$$_rti
	.balign 4
UNIT6502_$$_RTI:
# [1113] begin
	stmfd	r13!,{r14}
# [1114] status := pull8;
	bl	UNIT6502_$$_PULL8$$BYTE
	ldr	r1,.Lj1228
	strb	r0,[r1]
# [1115] value := pull16;
	bl	UNIT6502_$$_PULL16$$WORD
	ldr	r1,.Lj1229
	strh	r0,[r1]
# [1116] pc := value;
	ldr	r0,.Lj1229
	ldrh	r0,[r0]
	ldr	r1,.Lj1231
	strh	r0,[r1]
# [1117] cs:=@csa;
	ldr	r0,.Lj1232
	ldr	r1,.Lj1233
	str	r0,[r1]
# [1118] ds:=@dsa;
	ldr	r0,.Lj1234
	ldr	r1,.Lj1235
	str	r0,[r1]
# [1119] end;
	ldmfd	r13!,{r15}
.Lj1228:
	.long	U_$UNIT6502_$$_STATUS
.Lj1229:
	.long	U_$UNIT6502_$$_VALUE
.Lj1231:
	.long	U_$UNIT6502_$$_PC
.Lj1232:
	.long	U_$UNIT6502_$$_CSA
.Lj1233:
	.long	U_$UNIT6502_$$_CS
.Lj1234:
	.long	U_$UNIT6502_$$_DSA
.Lj1235:
	.long	U_$UNIT6502_$$_DS
.Le87:
	.size	UNIT6502_$$_RTI, .Le87 - UNIT6502_$$_RTI

.section .text.n_unit6502_$$_rts
	.balign 4
UNIT6502_$$_RTS:
# [1123] begin
	stmfd	r13!,{r14}
# [1124] value := pull16;
	bl	UNIT6502_$$_PULL16$$WORD
	ldr	r1,.Lj1238
	strh	r0,[r1]
# [1125] pc := value + 1;
	ldr	r0,.Lj1238
	ldrh	r0,[r0]
	add	r0,r0,#1
	uxth	r0,r0
	ldr	r1,.Lj1240
	strh	r0,[r1]
# [1126] end;
	ldmfd	r13!,{r15}
.Lj1238:
	.long	U_$UNIT6502_$$_VALUE
.Lj1240:
	.long	U_$UNIT6502_$$_PC
.Le88:
	.size	UNIT6502_$$_RTS, .Le88 - UNIT6502_$$_RTS

.section .text.n_unit6502_$$_sbc
	.balign 4
UNIT6502_$$_SBC:
# [1130] begin
	stmfd	r13!,{r14}
# [1131] penaltyop := 1;
	mov	r0,#1
	ldr	r1,.Lj1243
	strb	r0,[r1]
# [1132] value := getvalue xor $00FF;
	bl	UNIT6502_$$_GETVALUE$$WORD
	eor	r0,r0,#255
	ldr	r1,.Lj1244
	strh	r0,[r1]
# [1133] aresult := word(a) + value + (status and FLAG_CARRY);
	ldr	r0,.Lj1245
	ldrb	r1,[r0]
	ldr	r0,.Lj1244
	ldrh	r0,[r0]
	add	r1,r0,r1
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	and	r0,r0,#1
	add	r0,r0,r1
	uxth	r1,r0
	ldr	r0,.Lj1248
	strh	r1,[r0]
# [1134] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	ldr	r0,.Lj1248
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#65280
	beq	.Lj1251
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
	b	.Lj1254
.Lj1251:
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
.Lj1254:
# [1135] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1248
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1259
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
	b	.Lj1262
.Lj1259:
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1247
	strb	r1,[r0]
.Lj1262:
# [1136] if ((aresult xor a) and (aresult xor value) and $0080)<>0 then setoverflow else clearoverflow;
	ldr	r0,.Lj1245
	ldrb	r1,[r0]
	ldr	r0,.Lj1248
	ldrh	r0,[r0]
	eor	r2,r0,r1
	ldr	r0,.Lj1248
	ldrh	r1,[r0]
	ldr	r0,.Lj1244
	ldrh	r0,[r0]
	eor	r0,r0,r1
	and	r0,r0,r2
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1270
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	orr	r0,r0,#64
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
	b	.Lj1273
.Lj1270:
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	bic	r0,r0,#64
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
.Lj1273:
# [1137] if (aresult and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1248
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1278
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1247
	strb	r0,[r1]
	b	.Lj1281
.Lj1278:
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
.Lj1281:
# [1139] if (status and FLAG_DECIMAL)<>0 then
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#8
	beq	.Lj1286
# [1141] inc(clockticks6502);
	ldr	r1,.Lj1287
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	bic	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
# [1143] if ((a and $0F) > $09) then a += $06;
	ldr	r0,.Lj1245
	ldrb	r0,[r0]
	and	r0,r0,#15
	cmp	r0,#9
	ble	.Lj1292
	ldr	r0,.Lj1245
	ldrb	r0,[r0]
	add	r0,r0,#6
	and	r0,r0,#255
	ldr	r1,.Lj1245
	strb	r0,[r1]
.Lj1292:
# [1144] if ((a and $F0) > $90) then
	ldr	r0,.Lj1245
	ldrb	r0,[r0]
	and	r0,r0,#240
	cmp	r0,#144
	bls	.Lj1297
# [1146] a += $60;
	ldr	r0,.Lj1245
	ldrb	r0,[r0]
	add	r0,r0,#96
	and	r0,r0,#255
	ldr	r1,.Lj1245
	strb	r0,[r1]
	ldr	r0,.Lj1247
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj1247
	strb	r0,[r1]
.Lj1297:
.Lj1286:
# [1151] a:=byte(aresult and $00FF);
	ldr	r0,.Lj1248
	ldrh	r0,[r0]
# Peephole AndAnd2And done
	and	r0,r0,#255
	ldr	r1,.Lj1245
	strb	r0,[r1]
# [1152] end;
	ldmfd	r13!,{r15}
.Lj1243:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1244:
	.long	U_$UNIT6502_$$_VALUE
.Lj1245:
	.long	U_$UNIT6502_$$_A
.Lj1247:
	.long	U_$UNIT6502_$$_STATUS
.Lj1248:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1287:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le89:
	.size	UNIT6502_$$_SBC, .Le89 - UNIT6502_$$_SBC

.section .text.n_unit6502_$$_sec
	.balign 4
UNIT6502_$$_SEC:
# [1156] begin
	ldr	r0,.Lj1306
	ldrb	r0,[r0]
	orr	r0,r0,#1
	and	r0,r0,#255
	ldr	r1,.Lj1306
	strb	r0,[r1]
# [1158] end;
	bx	r14
.Lj1306:
	.long	U_$UNIT6502_$$_STATUS
.Le90:
	.size	UNIT6502_$$_SEC, .Le90 - UNIT6502_$$_SEC

.section .text.n_unit6502_$$_sed
	.balign 4
UNIT6502_$$_SED:
# [1162] begin
# [224] {$define setdecimal:= status :=status or FLAG_DECIMAL}
	ldr	r0,.Lj1310
	ldrb	r0,[r0]
	orr	r0,r0,#8
	and	r0,r0,#255
	ldr	r1,.Lj1310
	strb	r0,[r1]
# [1164] end;
	bx	r14
.Lj1310:
	.long	U_$UNIT6502_$$_STATUS
.Le91:
	.size	UNIT6502_$$_SED, .Le91 - UNIT6502_$$_SED

.section .text.n_unit6502_$$_sei
	.balign 4
UNIT6502_$$_SEI:
# [1168] begin
	ldr	r0,.Lj1314
	ldrb	r0,[r0]
	orr	r0,r0,#4
	and	r0,r0,#255
	ldr	r1,.Lj1314
	strb	r0,[r1]
# [1170] end;
	bx	r14
.Lj1314:
	.long	U_$UNIT6502_$$_STATUS
.Le92:
	.size	UNIT6502_$$_SEI, .Le92 - UNIT6502_$$_SEI

.section .text.n_unit6502_$$_sta
	.balign 4
UNIT6502_$$_STA:
# [1174] begin
	stmfd	r13!,{r14}
# [1175] putvalue(a);
	ldr	r0,.Lj1318
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1176] end;
	ldmfd	r13!,{r15}
.Lj1318:
	.long	U_$UNIT6502_$$_A
.Le93:
	.size	UNIT6502_$$_STA, .Le93 - UNIT6502_$$_STA

.section .text.n_unit6502_$$_stc
	.balign 4
UNIT6502_$$_STC:
# [1180] begin
	stmfd	r13!,{r14}
# [1181] putvalue32(cs^shr 8);
	ldr	r0,.Lj1321
	ldr	r0,[r0]
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
	bl	UNIT6502_$$_PUTVALUE32$LONGWORD
# [1182] end;
	ldmfd	r13!,{r15}
.Lj1321:
	.long	U_$UNIT6502_$$_CS
.Le94:
	.size	UNIT6502_$$_STC, .Le94 - UNIT6502_$$_STC

.section .text.n_unit6502_$$_std
	.balign 4
UNIT6502_$$_STD:
# [1186] begin
	stmfd	r13!,{r14}
# [1187] putvalue32(ds^ shr 8);
	ldr	r0,.Lj1324
	ldr	r0,[r0]
	ldr	r0,[r0]
	mov	r0,r0,lsr #8
	bl	UNIT6502_$$_PUTVALUE32$LONGWORD
# [1188] end;
	ldmfd	r13!,{r15}
.Lj1324:
	.long	U_$UNIT6502_$$_DS
.Le95:
	.size	UNIT6502_$$_STD, .Le95 - UNIT6502_$$_STD

.section .text.n_unit6502_$$_stx
	.balign 4
UNIT6502_$$_STX:
# [1192] begin
	stmfd	r13!,{r14}
# [1193] putvalue(x);
	ldr	r0,.Lj1327
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1194] end;
	ldmfd	r13!,{r15}
.Lj1327:
	.long	U_$UNIT6502_$$_X
.Le96:
	.size	UNIT6502_$$_STX, .Le96 - UNIT6502_$$_STX

.section .text.n_unit6502_$$_sty
	.balign 4
UNIT6502_$$_STY:
# [1198] begin
	stmfd	r13!,{r14}
# [1199] putvalue(y);
	ldr	r0,.Lj1330
	ldrb	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1200] end;
	ldmfd	r13!,{r15}
.Lj1330:
	.long	U_$UNIT6502_$$_Y
.Le97:
	.size	UNIT6502_$$_STY, .Le97 - UNIT6502_$$_STY

.section .text.n_unit6502_$$_stz
	.balign 4
UNIT6502_$$_STZ:
# [1204] begin
	stmfd	r13!,{r14}
# [1205] putvalue(0);
	mov	r0,#0
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1206] end;
	ldmfd	r13!,{r15}
.Le98:
	.size	UNIT6502_$$_STZ, .Le98 - UNIT6502_$$_STZ

.section .text.n_unit6502_$$_tax
	.balign 4
UNIT6502_$$_TAX:
# [1210] begin
# [1211] x := a;
	ldr	r0,.Lj1335
	ldrb	r0,[r0]
	ldr	r1,.Lj1336
	strb	r0,[r1]
# [1212] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1336
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1339
	ldr	r0,.Lj1340
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1340
	strb	r0,[r1]
	b	.Lj1342
.Lj1339:
	ldr	r0,.Lj1340
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1340
	strb	r0,[r1]
.Lj1342:
# [1213] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1336
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1347
	ldr	r0,.Lj1340
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1340
	strb	r1,[r0]
	b	.Lj1350
.Lj1347:
	ldr	r0,.Lj1340
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1340
	strb	r0,[r1]
.Lj1350:
# [1214] end;
	bx	r14
.Lj1335:
	.long	U_$UNIT6502_$$_A
.Lj1336:
	.long	U_$UNIT6502_$$_X
.Lj1340:
	.long	U_$UNIT6502_$$_STATUS
.Le99:
	.size	UNIT6502_$$_TAX, .Le99 - UNIT6502_$$_TAX

.section .text.n_unit6502_$$_tay
	.balign 4
UNIT6502_$$_TAY:
# [1218] begin
# [1219] y := a;
	ldr	r0,.Lj1355
	ldrb	r0,[r0]
	ldr	r1,.Lj1356
	strb	r0,[r1]
# [1220] if (y and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1356
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1359
	ldr	r0,.Lj1360
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1360
	strb	r0,[r1]
	b	.Lj1362
.Lj1359:
	ldr	r0,.Lj1360
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1360
	strb	r0,[r1]
.Lj1362:
# [1221] if (y and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1356
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1367
	ldr	r0,.Lj1360
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1360
	strb	r1,[r0]
	b	.Lj1370
.Lj1367:
	ldr	r0,.Lj1360
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1360
	strb	r0,[r1]
.Lj1370:
# [1222] end;
	bx	r14
.Lj1355:
	.long	U_$UNIT6502_$$_A
.Lj1356:
	.long	U_$UNIT6502_$$_Y
.Lj1360:
	.long	U_$UNIT6502_$$_STATUS
.Le100:
	.size	UNIT6502_$$_TAY, .Le100 - UNIT6502_$$_TAY

.section .text.n_unit6502_$$_trb
	.balign 4
UNIT6502_$$_TRB:
# [1226] begin
	stmfd	r13!,{r14}
# [1227] value:=getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj1375
	strh	r0,[r1]
# [1228] aresult:=value and (not a);
	ldr	r0,.Lj1376
	ldrb	r0,[r0]
	mvn	r1,r0,lsl #24
	mov	r1,r1,lsr #24
	ldr	r0,.Lj1375
	ldrh	r0,[r0]
	and	r1,r0,r1
	ldr	r0,.Lj1378
	strh	r1,[r0]
# [1229] putvalue(aresult);
	ldr	r0,.Lj1378
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1230] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1378
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1382
	ldr	r0,.Lj1383
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1383
	strb	r0,[r1]
	b	.Lj1385
.Lj1382:
	ldr	r0,.Lj1383
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1383
	strb	r1,[r0]
.Lj1385:
# [1231] end;
	ldmfd	r13!,{r15}
.Lj1375:
	.long	U_$UNIT6502_$$_VALUE
.Lj1376:
	.long	U_$UNIT6502_$$_A
.Lj1378:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1383:
	.long	U_$UNIT6502_$$_STATUS
.Le101:
	.size	UNIT6502_$$_TRB, .Le101 - UNIT6502_$$_TRB

.section .text.n_unit6502_$$_tsb
	.balign 4
UNIT6502_$$_TSB:
# [1235] begin
	stmfd	r13!,{r14}
# [1236] value:=getvalue;
	bl	UNIT6502_$$_GETVALUE$$WORD
	ldr	r1,.Lj1390
	strh	r0,[r1]
# [1237] aresult:=value or a;
	ldr	r0,.Lj1391
	ldrb	r1,[r0]
	ldr	r0,.Lj1390
	ldrh	r0,[r0]
	orr	r0,r0,r1
	ldr	r1,.Lj1393
	strh	r0,[r1]
# [1238] putvalue(aresult);
	ldr	r0,.Lj1393
	ldrh	r0,[r0]
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1239] if (aresult and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1393
	ldrh	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#255
	beq	.Lj1397
	ldr	r0,.Lj1398
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1398
	strb	r1,[r0]
	b	.Lj1400
.Lj1397:
	ldr	r0,.Lj1398
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1398
	strb	r0,[r1]
.Lj1400:
# [1240] end;
	ldmfd	r13!,{r15}
.Lj1390:
	.long	U_$UNIT6502_$$_VALUE
.Lj1391:
	.long	U_$UNIT6502_$$_A
.Lj1393:
	.long	U_$UNIT6502_$$_ARESULT
.Lj1398:
	.long	U_$UNIT6502_$$_STATUS
.Le102:
	.size	UNIT6502_$$_TSB, .Le102 - UNIT6502_$$_TSB

.section .text.n_unit6502_$$_tsx
	.balign 4
UNIT6502_$$_TSX:
# [1244] begin
# [1245] x := sp;
	ldr	r0,.Lj1405
	ldrb	r0,[r0]
	ldr	r1,.Lj1406
	strb	r0,[r1]
# [1246] if (x and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1406
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1409
	ldr	r0,.Lj1410
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1410
	strb	r0,[r1]
	b	.Lj1412
.Lj1409:
	ldr	r0,.Lj1410
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1410
	strb	r0,[r1]
.Lj1412:
# [1247] if (x and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1406
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1417
	ldr	r0,.Lj1410
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1410
	strb	r1,[r0]
	b	.Lj1420
.Lj1417:
	ldr	r0,.Lj1410
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1410
	strb	r0,[r1]
.Lj1420:
# [1248] end;
	bx	r14
.Lj1405:
	.long	U_$UNIT6502_$$_SP
.Lj1406:
	.long	U_$UNIT6502_$$_X
.Lj1410:
	.long	U_$UNIT6502_$$_STATUS
.Le103:
	.size	UNIT6502_$$_TSX, .Le103 - UNIT6502_$$_TSX

.section .text.n_unit6502_$$_txa
	.balign 4
UNIT6502_$$_TXA:
# [1252] begin
# [1253] a := x;
	ldr	r0,.Lj1425
	ldrb	r0,[r0]
	ldr	r1,.Lj1426
	strb	r0,[r1]
# [1254] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1426
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1429
	ldr	r0,.Lj1430
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1430
	strb	r0,[r1]
	b	.Lj1432
.Lj1429:
	ldr	r0,.Lj1430
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1430
	strb	r0,[r1]
.Lj1432:
# [1255] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1426
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1437
	ldr	r0,.Lj1430
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1430
	strb	r1,[r0]
	b	.Lj1440
.Lj1437:
	ldr	r0,.Lj1430
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1430
	strb	r0,[r1]
.Lj1440:
# [1256] end;
	bx	r14
.Lj1425:
	.long	U_$UNIT6502_$$_X
.Lj1426:
	.long	U_$UNIT6502_$$_A
.Lj1430:
	.long	U_$UNIT6502_$$_STATUS
.Le104:
	.size	UNIT6502_$$_TXA, .Le104 - UNIT6502_$$_TXA

.section .text.n_unit6502_$$_txs
	.balign 4
UNIT6502_$$_TXS:
# [1260] begin
# [1261] sp := x;
	ldr	r0,.Lj1445
	ldrb	r0,[r0]
	ldr	r1,.Lj1446
	strb	r0,[r1]
# [1262] end;
	bx	r14
.Lj1445:
	.long	U_$UNIT6502_$$_X
.Lj1446:
	.long	U_$UNIT6502_$$_SP
.Le105:
	.size	UNIT6502_$$_TXS, .Le105 - UNIT6502_$$_TXS

.section .text.n_unit6502_$$_tya
	.balign 4
UNIT6502_$$_TYA:
# [1266] begin
# [1267] a := y;
	ldr	r0,.Lj1449
	ldrb	r0,[r0]
	ldr	r1,.Lj1450
	strb	r0,[r1]
# [1268] if (a and $0080)<>0 then setsign else clearsign;
	ldr	r0,.Lj1450
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	beq	.Lj1453
	ldr	r0,.Lj1454
	ldrb	r0,[r0]
	orr	r0,r0,#128
	ldr	r1,.Lj1454
	strb	r0,[r1]
	b	.Lj1456
.Lj1453:
	ldr	r0,.Lj1454
	ldrb	r0,[r0]
	bic	r0,r0,#128
	and	r0,r0,#255
	ldr	r1,.Lj1454
	strb	r0,[r1]
.Lj1456:
# [1269] if (a and $00FF)<>0 then clearzero else setzero;
	ldr	r0,.Lj1450
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1461
	ldr	r0,.Lj1454
	ldrb	r0,[r0]
	bic	r0,r0,#2
	and	r1,r0,#255
	ldr	r0,.Lj1454
	strb	r1,[r0]
	b	.Lj1464
.Lj1461:
	ldr	r0,.Lj1454
	ldrb	r0,[r0]
	orr	r0,r0,#2
	and	r0,r0,#255
	ldr	r1,.Lj1454
	strb	r0,[r1]
.Lj1464:
# [1270] end;
	bx	r14
.Lj1449:
	.long	U_$UNIT6502_$$_Y
.Lj1450:
	.long	U_$UNIT6502_$$_A
.Lj1454:
	.long	U_$UNIT6502_$$_STATUS
.Le106:
	.size	UNIT6502_$$_TYA, .Le106 - UNIT6502_$$_TYA

.section .text.n_unit6502_$$_lax
	.balign 4
UNIT6502_$$_LAX:
# [1276] begin
	stmfd	r13!,{r14}
# [1277] lda;
	bl	UNIT6502_$$_LDA
# [1278] ldx;
	bl	UNIT6502_$$_LDX
# [1279] end;
	ldmfd	r13!,{r15}
.Le107:
	.size	UNIT6502_$$_LAX, .Le107 - UNIT6502_$$_LAX

.section .text.n_unit6502_$$_sax
	.balign 4
UNIT6502_$$_SAX:
# [1283] begin
	stmfd	r13!,{r14}
# [1284] sta;
	bl	UNIT6502_$$_STA
# [1285] stx;
	bl	UNIT6502_$$_STX
# [1286] putvalue(a and x);
	ldr	r0,.Lj1471
	ldrb	r1,[r0]
	ldr	r0,.Lj1472
	ldrb	r0,[r0]
	and	r0,r0,r1
	bl	UNIT6502_$$_PUTVALUE$WORD
# [1287] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1473
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1475
	ldr	r0,.Lj1477
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1478
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1475:
# [1288] end;
	ldmfd	r13!,{r15}
.Lj1471:
	.long	U_$UNIT6502_$$_A
.Lj1472:
	.long	U_$UNIT6502_$$_X
.Lj1473:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1477:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1478:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le108:
	.size	UNIT6502_$$_SAX, .Le108 - UNIT6502_$$_SAX

.section .text.n_unit6502_$$_dcp
	.balign 4
UNIT6502_$$_DCP:
# [1292] begin
	stmfd	r13!,{r14}
# [1293] dea;
	bl	UNIT6502_$$_DEA
# [1294] cmp;
	bl	UNIT6502_$$_CMP
# [1295] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1481
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1483
	ldr	r0,.Lj1485
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1486
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1483:
# [1296] end;
	ldmfd	r13!,{r15}
.Lj1481:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1485:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1486:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le109:
	.size	UNIT6502_$$_DCP, .Le109 - UNIT6502_$$_DCP

.section .text.n_unit6502_$$_isb
	.balign 4
UNIT6502_$$_ISB:
# [1300] begin
	stmfd	r13!,{r14}
# [1301] ina;
	bl	UNIT6502_$$_INA
# [1302] sbc;
	bl	UNIT6502_$$_SBC
# [1303] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1489
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1491
	ldr	r0,.Lj1493
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1494
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1491:
# [1304] end;
	ldmfd	r13!,{r15}
.Lj1489:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1493:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1494:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le110:
	.size	UNIT6502_$$_ISB, .Le110 - UNIT6502_$$_ISB

.section .text.n_unit6502_$$_slo
	.balign 4
UNIT6502_$$_SLO:
# [1308] begin
	stmfd	r13!,{r14}
# [1309] asl;
	bl	UNIT6502_$$_ASL
# [1310] ora;
	bl	UNIT6502_$$_ORA
# [1311] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1497
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1499
	ldr	r0,.Lj1501
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1502
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1499:
# [1312] end;
	ldmfd	r13!,{r15}
.Lj1497:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1501:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1502:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le111:
	.size	UNIT6502_$$_SLO, .Le111 - UNIT6502_$$_SLO

.section .text.n_unit6502_$$_rla
	.balign 4
UNIT6502_$$_RLA:
# [1317] begin
	stmfd	r13!,{r14}
# [1318] rol;
	bl	UNIT6502_$$_ROL
# [1319] ana;
	bl	UNIT6502_$$_ANA
# [1320] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1505
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1507
	ldr	r0,.Lj1509
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1510
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1507:
# [1321] end;
	ldmfd	r13!,{r15}
.Lj1505:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1509:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1510:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le112:
	.size	UNIT6502_$$_RLA, .Le112 - UNIT6502_$$_RLA

.section .text.n_unit6502_$$_sre
	.balign 4
UNIT6502_$$_SRE:
# [1325] begin
	stmfd	r13!,{r14}
# [1326] lsr;
	bl	UNIT6502_$$_LSR
# [1327] eor;
	bl	UNIT6502_$$_EOR
# [1328] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1513
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1515
	ldr	r0,.Lj1517
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1518
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1515:
# [1329] end;
	ldmfd	r13!,{r15}
.Lj1513:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1517:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1518:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le113:
	.size	UNIT6502_$$_SRE, .Le113 - UNIT6502_$$_SRE

.section .text.n_unit6502_$$_rra
	.balign 4
UNIT6502_$$_RRA:
# [1333] begin
	stmfd	r13!,{r14}
# [1334] ror;
	bl	UNIT6502_$$_ROR
# [1335] adc;
	bl	UNIT6502_$$_ADC
# [1336] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	ldr	r0,.Lj1521
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1523
	ldr	r0,.Lj1525
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj1526
	ldrne	r0,[r1]
	subne	r0,r0,#1
	strne	r0,[r1]
.Lj1523:
# [1337] end;
	ldmfd	r13!,{r15}
.Lj1521:
	.long	U_$UNIT6502_$$_PENALTYOP
.Lj1525:
	.long	U_$UNIT6502_$$_PENALTYADDR
.Lj1526:
	.long	TC_$UNIT6502_$$_CLOCKTICKS6502
.Le114:
	.size	UNIT6502_$$_RRA, .Le114 - UNIT6502_$$_RRA
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$unit6502_$$_ram
# [10] var ram:array[-2..65537] of byte;
	.globl U_$UNIT6502_$$_RAM
	.size U_$UNIT6502_$$_RAM,65540
U_$UNIT6502_$$_RAM:
	.zero 65540

.section .bss.n_u_$unit6502_$$_pc
	.balign 2
# [233] var pc:word;
	.size U_$UNIT6502_$$_PC,2
U_$UNIT6502_$$_PC:
	.zero 2

.section .bss.n_u_$unit6502_$$_sp
# [234] var sp,a,x,y,status:byte;
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
# [240] oldpc,ea,reladdr,value,aresult:word;
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
# [241] opcode:byte;
	.size U_$UNIT6502_$$_OPCODE,1
U_$UNIT6502_$$_OPCODE:
	.zero 1

.section .bss.n_u_$unit6502_$$_penaltyop
# [242] penaltyop,penaltyaddr:byte;
	.size U_$UNIT6502_$$_PENALTYOP,1
U_$UNIT6502_$$_PENALTYOP:
	.zero 1

.section .bss.n_u_$unit6502_$$_penaltyaddr
	.size U_$UNIT6502_$$_PENALTYADDR,1
U_$UNIT6502_$$_PENALTYADDR:
	.zero 1

.section .bss.n_u_$unit6502_$$_csa
	.balign 4
# [243] csa,dsa,csi,dsi:integer;
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

.section .bss.n_u_$unit6502_$$_cs
	.balign 4
# [244] cs,ds:^integer;
	.size U_$UNIT6502_$$_CS,4
U_$UNIT6502_$$_CS:
	.zero 4

.section .bss.n_u_$unit6502_$$_ds
	.balign 4
	.size U_$UNIT6502_$$_DS,4
U_$UNIT6502_$$_DS:
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
# [16] function read6502(address:integer):byte;
.Le117:
	.size	TC_$UNIT6502_$$_CLOCKGOAL6502, .Le117 - TC_$UNIT6502_$$_CLOCKGOAL6502

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
# [166] var optable:array[0..255] of TOpcode=(
.Le118:
	.size	TC_$UNIT6502_$$_ADDRTABLE, .Le118 - TC_$UNIT6502_$$_ADDRTABLE

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
# [186] var ticktable:array[0..255] of byte = (
.Le119:
	.size	TC_$UNIT6502_$$_OPTABLE, .Le119 - TC_$UNIT6502_$$_OPTABLE

.section .data.n_TC_$UNIT6502_$$_TICKTABLE
TC_$UNIT6502_$$_TICKTABLE:
	.byte	7,6,7,8,5,3,5,5,3,2,2,2,6,4,6,6,2,5,5,8,5,4,6,6,2,4,2,7,6,4,7,7,6,6,7,8,3,3,5,5,4,2,2,2,4,4,6,6,2,5,5,8,4,4,6,6,2,4,2,7,4,4,7,7,6,6,7,8,7,3,5
	.byte	5,3,2,2,2,3,4,6,6,2,5,5,8,4,4,6,6,2,4,3,7,4,4,7,7,6,6,7,8,3,3,5,5,4,2,2,2,5,4,6,6,2,5,5,8,4,4,6,6,2,4,4,7,6,4,7,7,3,6,7,6,3,3,3,3,2,2,2,2,4,4
	.byte	4,4,2,6,5,6,4,4,4,4,2,5,2,5,4,5,5,5,2,6,2,6,3,3,3,3,2,2,2,2,4,4,4,4,2,5,5,5,4,4,4,4,2,4,2,4,4,4,4,4,2,6,6,8,3,3,5,5,2,2,2,2,4,4,6,6,2,5,5,8,4
	.byte	4,6,6,2,4,3,7,4,4,7,7,2,6,6,8,3,3,5,5,2,2,2,2,4,4,6,6,2,5,5,8,4,4,6,6,2,4,4,7,4,4,7,7
.Le120:
	.size	TC_$UNIT6502_$$_TICKTABLE, .Le120 - TC_$UNIT6502_$$_TICKTABLE
# End asmlist al_typedconsts

