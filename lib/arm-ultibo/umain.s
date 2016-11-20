	.file "umain.pas"
# Begin asmlist al_procedures

.section .text.n_umain_$$_rainbow
	.balign 4
UMAIN_$$_RAINBOW:
# [umain.pas]
# [38] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#48
# [39] box2(10,1011,1782,1012,48+16);
	mov	r0,#64
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#243
	orr	r1,r1,#768
	mov	r3,#1012
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [40] box2(10,1013,1782,1014,48+17);
	mov	r0,#65
	str	r0,[r13]
	mov	r3,#246
	orr	r3,r3,#768
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#245
	orr	r1,r1,#768
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [41] box2(10,1015,1782,1016,48+18);
	mov	r0,#66
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#247
	orr	r1,r1,#768
	mov	r3,#1016
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [42] box2(10,1017,1782,1018,48+19);
	mov	r0,#67
	str	r0,[r13]
	mov	r3,#250
	orr	r3,r3,#768
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#249
	orr	r1,r1,#768
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [43] box2(10,1019,1782,1020,48+20);
	mov	r0,#68
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#251
	orr	r1,r1,#768
	mov	r3,#1020
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [44] box2(10,1021,1782,1022,48+21);
	mov	r0,#69
	str	r0,[r13]
	mov	r3,#254
	orr	r3,r3,#768
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#253
	orr	r1,r1,#768
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [45] box2(10,1023,1782,1024,48+22);
	mov	r0,#70
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#255
	orr	r1,r1,#768
	mov	r3,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [46] box2(10,1025,1782,1026,48+23);
	mov	r0,#71
	str	r0,[r13]
	mov	r3,#2
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#1
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [47] box2(10,1027,1782,1028,48+24);
	mov	r0,#72
	str	r0,[r13]
	mov	r3,#4
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#3
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [48] box2(10,1029,1782,1030,48+25);
	mov	r0,#73
	str	r0,[r13]
	mov	r3,#6
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#5
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [49] box2(10,1031,1782,1032,48+26);
	mov	r0,#74
	str	r0,[r13]
	mov	r3,#8
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#7
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [50] box2(10,1033,1782,1034,48+27);
	mov	r0,#75
	str	r0,[r13]
	mov	r3,#10
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#9
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [51] box2(10,1035,1782,1036,48+28);
	mov	r0,#76
	str	r0,[r13]
	mov	r3,#12
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#11
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [52] box2(10,1037,1782,1038,48+29);
	mov	r0,#77
	str	r0,[r13]
	mov	r3,#14
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#13
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [53] box2(10,1039,1782,1040,48+30);
	mov	r0,#78
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#15
	orr	r1,r1,#1024
	mov	r3,#1040
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [54] box2(10,1041,1782,1042,48+31);
	mov	r0,#79
	str	r0,[r13]
	mov	r3,#18
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#17
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [55] box2(10,1043,1782,1044,48+32);
	mov	r0,#80
	str	r0,[r13]
	mov	r3,#20
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#19
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [56] box2(10,1045,1782,1046,48+33);
	mov	r0,#81
	str	r0,[r13]
	mov	r3,#22
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#21
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [57] box2(10,1047,1782,1048,48+34);
	mov	r0,#82
	str	r0,[r13]
	mov	r3,#24
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#23
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [58] box2(10,1049,1782,1050,48+35);
	mov	r0,#83
	str	r0,[r13]
	mov	r3,#26
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#25
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [59] box2(10,1051,1782,1052,48+36);
	mov	r0,#84
	str	r0,[r13]
	mov	r3,#28
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#27
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [60] box2(10,1053,1782,1054,48+37);
	mov	r0,#85
	str	r0,[r13]
	mov	r3,#30
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#29
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [61] box2(10,1055,1782,1056,48+38);
	mov	r0,#86
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#31
	orr	r1,r1,#1024
	mov	r3,#1056
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [62] box2(10,1057,1782,1058,48+39);
	mov	r0,#87
	str	r0,[r13]
	mov	r3,#34
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#33
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [63] end;
	ldmea	r11,{r11,r13,r15}
.Le0:
	.size	UMAIN_$$_RAINBOW, .Le0 - UMAIN_$$_RAINBOW

.section .text.n_umain_$$_main1
	.balign 4
.globl	UMAIN_$$_MAIN1
UMAIN_$$_MAIN1:
# [69] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#68
# Var t located in register r0:r0
# Var i located in register r4
# [73] lpoke($2060040,$01001100); // position
	mov	r1,#16777216
	orr	r1,r1,#4352
	ldr	r0,.Lj7
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [74] lpoke($2060044,$00040004); // zoom
	mov	r1,#4
	orr	r1,r1,#262144
	ldr	r0,.Lj8
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [75] lpoke($2060048,$00101100);
	mov	r1,#1048576
	orr	r1,r1,#4352
	ldr	r0,.Lj9
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [76] lpoke($206004c,$00040004);
	mov	r1,#4
	orr	r1,r1,#262144
	ldr	r0,.Lj10
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [77] lpoke($2060050,$00181180);
	mov	r1,#1572864
	orr	r1,r1,#4480
	ldr	r0,.Lj11
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [78] lpoke($2060054,$00040004);
	mov	r1,#4
	orr	r1,r1,#262144
	ldr	r0,.Lj12
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [79] lpoke($2060058,$00201200);
	mov	r1,#2097152
	orr	r1,r1,#4608
	ldr	r0,.Lj13
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [80] lpoke($206005c,$00040004);
	mov	r1,#4
	orr	r1,r1,#262144
	ldr	r0,.Lj14
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [81] lpoke($2060060,$00281280);
	mov	r1,#2621440
	orr	r1,r1,#4736
	ldr	r0,.Lj15
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [82] lpoke($2060064,$00040004);
	mov	r1,#4
	orr	r1,r1,#262144
	ldr	r0,.Lj16
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [83] lpoke($2060068,$00301300);
	mov	r1,#3145728
	orr	r1,r1,#4864
	ldr	r0,.Lj17
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [84] lpoke($206006c,$00040004);
	mov	r1,#4
	orr	r1,r1,#262144
	ldr	r0,.Lj18
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [85] lpoke($2060070,$00381380);
	mov	r1,#3670016
	orr	r1,r1,#4992
	ldr	r0,.Lj19
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [86] lpoke($2060074,$00040004);
	mov	r1,#4
	orr	r1,r1,#262144
	ldr	r0,.Lj20
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [87] lpoke($2060078,$00401400);
	mov	r1,#4194304
	orr	r1,r1,#5120
	ldr	r0,.Lj21
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [88] lpoke($206007c,$00020002);
	mov	r1,#2
	orr	r1,r1,#131072
	ldr	r0,.Lj22
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# Var i located in register r4
# [91] for i:=0 to 31 do
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj25:
	add	r4,r4,#1
# [92] for j:=0 to 31 do  begin
	mov	r1,#0
	ldr	r0,.Lj29
	str	r1,[r0]
	ldr	r1,.Lj29
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj28:
	ldr	r1,.Lj29
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [93] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#16
	bge	.Lj34
	ldr	r0,.Lj29
	ldr	r0,[r0]
	mov	r0,r0,lsl #4
	ldr	r1,.Lj36
	str	r0,[r1]
	b	.Lj37
.Lj34:
	ldr	r0,.Lj29
	ldr	r0,[r0]
	mov	r1,#31
	sub	r0,r1,r0
	mov	r0,r0,lsl #4
	ldr	r1,.Lj36
	str	r0,[r1]
.Lj37:
# [94] if k=0 then k:=8;
	ldr	r0,.Lj36
	ldr	r0,[r0]
	cmp	r0,#0
	moveq	r0,#8
	ldreq	r1,.Lj36
	streq	r0,[r1]
# [95] if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2052000+4*i+128*j,k)  else  lpoke($2052000+4*i+128*j,0);
	cmp	r4,#11
	blt	.Lj44
	cmp	r4,#21
	bgt	.Lj44
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#11
	blt	.Lj44
	cmp	r0,#21
	ble	.Lj49
.Lj44:
	mov	r0,r4,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#335872
	ldr	r0,.Lj29
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
# [154] end;
	add	r0,r1,r0,lsl #7
	ldr	r1,.Lj36
	ldr	r1,[r1]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj52
.Lj49:
	mov	r0,r4,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#335872
	ldr	r0,.Lj29
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj52:
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#31
	blt	.Lj28
	cmp	r4,#31
	blt	.Lj25
# Var i located in register r4
# [98] for i:=0 to 31 do
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj57:
	add	r4,r4,#1
# [99] for j:=0 to 31 do  begin
	mov	r0,#0
	ldr	r1,.Lj29
	str	r0,[r1]
	ldr	r1,.Lj29
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj60:
	ldr	r1,.Lj29
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [100] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#16
	bge	.Lj66
	ldr	r0,.Lj29
	ldr	r0,[r0]
	mov	r1,r0,lsl #4
	ldr	r0,.Lj36
	str	r1,[r0]
	b	.Lj69
.Lj66:
	ldr	r0,.Lj29
	ldr	r0,[r0]
	mov	r1,#31
	sub	r0,r1,r0
	mov	r0,r0,lsl #4
	ldr	r1,.Lj36
	str	r0,[r1]
.Lj69:
# [101] if k=0 then k:=8;
	ldr	r0,.Lj36
	ldr	r0,[r0]
	cmp	r0,#0
	moveq	r0,#8
	ldreq	r1,.Lj36
	streq	r0,[r1]
# [102] k:=k shl 8;
	ldr	r0,.Lj36
	ldr	r0,[r0]
	mov	r1,r0,lsl #8
	ldr	r0,.Lj36
	str	r1,[r0]
# [103] if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2053000+4*i+128*j,k)  else  lpoke($2053000+4*i+128*j,0);
	cmp	r4,#11
	blt	.Lj78
	cmp	r4,#21
	bgt	.Lj78
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#11
	blt	.Lj78
	cmp	r0,#21
	ble	.Lj83
.Lj78:
	mov	r0,r4,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#339968
	ldr	r0,.Lj29
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #7
	ldr	r1,.Lj36
	ldr	r1,[r1]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj86
.Lj83:
	mov	r0,r4,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#339968
	ldr	r0,.Lj29
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj86:
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#31
	blt	.Lj60
	cmp	r4,#31
	blt	.Lj57
# Var i located in register r4
# [106] for i:=0 to 31 do
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj91:
	add	r4,r4,#1
# [107] for j:=0 to 31 do  begin
	mov	r0,#0
	ldr	r1,.Lj29
	str	r0,[r1]
	ldr	r1,.Lj29
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj94:
	ldr	r1,.Lj29
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [108] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#16
	bge	.Lj100
	ldr	r0,.Lj29
	ldr	r0,[r0]
	mov	r0,r0,lsl #4
	ldr	r1,.Lj36
	str	r0,[r1]
	b	.Lj103
.Lj100:
	ldr	r0,.Lj29
	ldr	r1,[r0]
	mov	r0,#31
	sub	r0,r0,r1
	mov	r0,r0,lsl #4
	ldr	r1,.Lj36
	str	r0,[r1]
.Lj103:
# [109] if k=0 then k:=8;
	ldr	r0,.Lj36
	ldr	r0,[r0]
	cmp	r0,#0
	moveq	r1,#8
	ldreq	r0,.Lj36
	streq	r1,[r0]
# [110] k:=k shl 16;
	ldr	r0,.Lj36
	ldr	r0,[r0]
	mov	r1,r0,lsl #16
	ldr	r0,.Lj36
	str	r1,[r0]
# [111] if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2054000+4*i+128*j,k)  else  lpoke($2054000+4*i+128*j,0);
	cmp	r4,#11
	blt	.Lj112
	cmp	r4,#21
	bgt	.Lj112
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#11
	blt	.Lj112
	cmp	r0,#21
	ble	.Lj117
.Lj112:
	mov	r0,r4,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#344064
	ldr	r0,.Lj29
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #7
	ldr	r1,.Lj36
	ldr	r1,[r1]
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj120
.Lj117:
	mov	r0,r4,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#344064
	ldr	r0,.Lj29
	ldr	r0,[r0]
# Peephole FoldShiftProcess done
	add	r0,r1,r0,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj120:
	ldr	r0,.Lj29
	ldr	r0,[r0]
	cmp	r0,#31
	blt	.Lj94
	cmp	r4,#31
	blt	.Lj91
# [116] lpoke ($2060008,0);
	ldr	r0,.Lj123
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [117] lpoke ($2060020,1792);
	ldr	r0,.Lj124
	mov	r1,#1792
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [118] lpoke ($2060024,1120);
	ldr	r0,.Lj125
	mov	r1,#1120
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [119] setataripallette(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [120] setataripallette(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [121] setataripallette(2);
	mov	r0,#2
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [122] setataripallette(3);
	mov	r0,#3
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [123] cls(146);
	mov	r0,#146
	bl	RETROMALINA_$$_CLS$LONGINT
# [124] outtextxyz(128,16,ver,154,4,2);
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r0,#4
	str	r0,[r13]
	mov	r3,#154
	ldr	r2,.Lj126
	mov	r1,#16
	mov	r0,#128
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [125] box2(8,64,1784,1112,0);
	mov	r0,#0
	str	r0,[r13]
	mov	r3,#88
	orr	r3,r3,#1024
	mov	r2,#248
	orr	r2,r2,#1536
	mov	r1,#64
	mov	r0,#8
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [126] box2(10,1062,1782,1110,120);
	mov	r0,#120
	str	r0,[r13]
	mov	r3,#86
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#38
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [127] outtextxyz(32,1070,'Screen time:',124,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#124
	ldr	r2,.Lj127
	mov	r0,#32
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [128] k:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	ldr	r1,.Lj36
	str	r0,[r1]
# [129] lpoke($206000c,$002040);
	ldr	r0,.Lj129
	mov	r1,#8256
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [130] sethidecolor(250,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#250
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [131] sethidecolor(44,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#44
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [132] sethidecolor(190,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#190
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [133] sethidecolor(188,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#188
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [134] c:=0;
	mov	r0,#0
	ldr	r1,.Lj130
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj131
	str	r0,[r1]
# [135] avsct:=0;
	mov	r0,#0
	ldr	r1,.Lj132
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj133
	str	r0,[r1]
# [136] avspt:=0;
	mov	r0,#0
	ldr	r1,.Lj134
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj135
	str	r0,[r1]
# [137] avall:=0;
	mov	r1,#0
	ldr	r0,.Lj136
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj137
	str	r0,[r1]
# [138] avsid:=0;
	mov	r0,#0
	ldr	r1,.Lj138
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj139
	str	r0,[r1]
# [139] rainbow;
	bl	UMAIN_$$_RAINBOW
# [140] outtextxyz(24,1019,'A retromachine SID player by pik33 --- inspired by Johannes Ahlebrand''s Parallax Propeller SIDCog --- F1,F2,F3',89,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#251
	orr	r1,r1,#768
	mov	r3,#89
	ldr	r2,.Lj140
	mov	r0,#24
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [141] blit($3000000,10,1011,$3800000,10,1011,1771,48,1792,1792);
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#10
	str	r0,[r13]
	mov	r0,#235
	orr	r0,r0,#1536
	str	r0,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#58720256
	mov	r1,#10
	mov	r0,#50331648
	bl	RETROMALINA_$$_BLIT$crc5A667533
# [142] rainbow;
	bl	UMAIN_$$_RAINBOW
# [143] outtextxyz(24,1019,'- channels 1..3 on/off; 1-100 Hz, 2-200 Hz, 3-150 Hz, 4-400 Hz, 5-50 Hz; F - toggle fullscreen, P - pause',89,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#251
	orr	r1,r1,#768
	mov	r3,#89
	ldr	r2,.Lj141
	mov	r0,#24
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [144] blit($3000000,10,1011,$3800000,10,1059,1771,48,1792,1792);
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#10
	str	r0,[r13]
	mov	r0,#235
	orr	r0,r0,#1536
	str	r0,[r13, #8]
	mov	r0,#35
	orr	r0,r0,#1024
	str	r0,[r13, #4]
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#58720256
	mov	r1,#10
	mov	r0,#50331648
	bl	RETROMALINA_$$_BLIT$crc5A667533
# [145] box2(10,800,894,848,246);
	mov	r0,#246
	str	r0,[r13]
	mov	r2,#126
	orr	r2,r2,#768
	mov	r3,#848
	mov	r1,#800
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [146] box2(10,851,894,1008,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#83
	orr	r1,r1,#768
	mov	r3,#1008
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [147] outtextxyz(320,808,'Now playing',250,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#250
	ldr	r2,.Lj142
	mov	r1,#808
	mov	r0,#320
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [148] box2(10,118,894,797,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#29
	orr	r3,r3,#768
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#118
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [149] box2(10,67,894,115,180);
	mov	r0,#180
	str	r0,[r13]
	mov	r2,#126
	orr	r2,r2,#768
	mov	r3,#115
	mov	r1,#67
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [150] outtextxyz(320,75,'File info',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#188
	ldr	r2,.Lj143
	mov	r1,#75
	mov	r0,#320
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [151] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [152] box2(897,67,1782,115,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#115
	mov	r1,#67
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [153] outtextxyz(1296,75,'Files',44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#44
	ldr	r2,.Lj144
	mov	r1,#75
	mov	r0,#1296
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	ldmea	r11,{r4,r11,r13,r15}
.Lj7:
	.long	33947712
.Lj8:
	.long	33947716
.Lj9:
	.long	33947720
.Lj10:
	.long	33947724
.Lj11:
	.long	33947728
.Lj12:
	.long	33947732
.Lj13:
	.long	33947736
.Lj14:
	.long	33947740
.Lj15:
	.long	33947744
.Lj16:
	.long	33947748
.Lj17:
	.long	33947752
.Lj18:
	.long	33947756
.Lj19:
	.long	33947760
.Lj20:
	.long	33947764
.Lj21:
	.long	33947768
.Lj22:
	.long	33947772
.Lj29:
	.long	U_$RETROMALINA_$$_J
.Lj36:
	.long	U_$RETROMALINA_$$_K
.Lj123:
	.long	33947656
.Lj124:
	.long	33947680
.Lj125:
	.long	33947684
.Lj126:
	.long	.Ld1
.Lj127:
	.long	.Ld2
.Lj129:
	.long	33947660
.Lj130:
	.long	TC_$UMAIN_$$_C
.Lj131:
	.long	TC_$UMAIN_$$_C+4
.Lj132:
	.long	TC_$UMAIN_$$_AVSCT
.Lj133:
	.long	TC_$UMAIN_$$_AVSCT+4
.Lj134:
	.long	TC_$UMAIN_$$_AVSPT
.Lj135:
	.long	TC_$UMAIN_$$_AVSPT+4
.Lj136:
	.long	TC_$UMAIN_$$_AVALL
.Lj137:
	.long	TC_$UMAIN_$$_AVALL+4
.Lj138:
	.long	TC_$UMAIN_$$_AVSID
.Lj139:
	.long	TC_$UMAIN_$$_AVSID+4
.Lj140:
	.long	.Ld3
.Lj141:
	.long	.Ld4
.Lj142:
	.long	.Ld5
.Lj143:
	.long	.Ld6
.Lj144:
	.long	.Ld7
.Le1:
	.size	UMAIN_$$_MAIN1, .Le1 - UMAIN_$$_MAIN1

.section .text.n_umain_$$_main2
	.balign 4
.globl	UMAIN_$$_MAIN2
UMAIN_$$_MAIN2:
# Temps allocated between r11-248 and r11-92
# [166] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#272
# Var a located in register r0
# Var c1 located in register r10
# Var ii located in register r0
# Var iii located in register r0
# Var il located in register r0
# Var i located in register r4
# Var cc located in register r4
# Var qqq located in register r0:r0
# Var mm located in register r6:r5
# Var hh located in register r8:r7
# Var ss located in register r4:r9
# Var buf located at r11-72, size=OS_NO
# Var mms located at r11-76, size=OS_32
# Var hhs located at r11-80, size=OS_32
# Var sss located at r11-84, size=OS_32
# Var kwas located at r11-88, size=OS_32
# Var clock located at r11-92, size=OS_32
	mov	r0,#0
	str	r0,[r11, #-76]
# Peephole MovStrMov done
	str	r0,[r11, #-80]
# Peephole MovStrMov done
	str	r0,[r11, #-84]
# Peephole MovStrMov done
	str	r0,[r11, #-92]
# Peephole MovStrMov done
	str	r0,[r11, #-248]
# Peephole MovStrMov done
	str	r0,[r11, #-224]
	sub	r2,r11,#104
	sub	r1,r11,#208
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-212]
	cmp	r0,#0
	bne	.Lj147
# [168] clock:=timetostr(now);
	bl	SYSUTILS_$$_NOW$$TDATETIME
	str	r0,[r11, #-220]
	str	r1,[r11, #-216]
	ldr	r1,[r11, #-220]
	ldr	r2,[r11, #-216]
	sub	r0,r11,#92
	bl	SYSUTILS_$$_TIMETOSTR$TDATETIME$$ANSISTRING
# [169] k:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	ldr	r1,.Lj149
	str	r0,[r1]
	.balign 4
.Lj150:
# [170] repeat until lpeek($2060000)<>k;
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r1,#0
	ldr	r2,.Lj149
	ldr	r2,[r2]
# Peephole FoldShiftProcess done
# [235] end;
	cmp	r1,r2,asr #31
	cmpeq	r0,r2
	beq	.Lj150
# [172] c:=c+1; c1:=c mod 60;
	ldr	r0,.Lj154
	ldr	r1,[r0]
	ldr	r0,.Lj155
	ldr	r0,[r0]
	adds	r2,r1,#1
	adc	r1,r0,#0
	ldr	r0,.Lj154
	str	r2,[r0]
	ldr	r0,.Lj155
	str	r1,[r0]
	ldr	r0,.Lj155
	ldr	r3,[r0]
	ldr	r0,.Lj154
	ldr	r2,[r0]
	mov	r1,#0
	mov	r0,#60
	bl	fpc_mod_int64
	mov	r10,r0
# [173] if time6502>0 then c6+=1;
	ldr	r0,.Lj160
	ldr	r3,[r0]
	ldr	r0,.Lj161
	ldr	r0,[r0]
	mov	r2,#0
	mov	r1,#0
	cmp	r0,r1
	bgt	.Lj162
	blt	.Lj163
	cmp	r3,r2
	bls	.Lj163
.Lj162:
	ldr	r0,.Lj164
	ldr	r1,[r0]
	ldr	r0,.Lj165
	ldr	r0,[r0]
	adds	r2,r1,#1
	adc	r1,r0,#0
	ldr	r0,.Lj164
	str	r2,[r0]
	ldr	r0,.Lj165
	str	r1,[r0]
.Lj163:
# [174] ss:=(songtime div 1000000) mod 60;
	ldr	r0,.Lj168
	ldr	r3,[r0]
	ldr	r0,.Lj169
	ldr	r2,[r0]
	mov	r1,#0
	mov	r0,#999424
	orr	r0,r0,#576
	bl	fpc_div_int64
	mov	r2,r0
	mov	r3,r1
	mov	r1,#0
	mov	r0,#60
	bl	fpc_mod_int64
	mov	r9,r0
	mov	r4,r1
# [175] mm:=(songtime div 60000000) mod 60;
	ldr	r0,.Lj168
	ldr	r3,[r0]
	ldr	r0,.Lj169
	ldr	r2,[r0]
	mov	r1,#0
	ldr	r0,.Lj172
	bl	fpc_div_int64
	mov	r2,r0
	mov	r3,r1
	mov	r1,#0
	mov	r0,#60
	bl	fpc_mod_int64
	mov	r5,r0
	mov	r6,r1
# [176] hh:=(songtime div 3600000000);
	ldr	r0,.Lj168
	ldr	r3,[r0]
	ldr	r0,.Lj169
	ldr	r2,[r0]
	mov	r1,#0
	ldr	r0,.Lj175
	bl	fpc_div_int64
	mov	r7,r0
	mov	r8,r1
# [177] sss:=inttostr(ss); if ss<10 then sss:='0'+sss;
	mov	r2,r4
	mov	r1,r9
	sub	r0,r11,#84
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	mov	r0,#10
	mov	r1,#0
	cmp	r4,r1
	blt	.Lj176
	bgt	.Lj177
	cmp	r9,r0
	bcs	.Lj177
.Lj176:
	ldr	r2,[r11, #-84]
	sub	r0,r11,#84
	mov	r3,#0
	ldr	r1,.Lj178
	bl	fpc_ansistr_concat
.Lj177:
# [178] mms:=inttostr(mm); if mm<10 then mms:='0'+mms;
	mov	r2,r6
	mov	r1,r5
	sub	r0,r11,#76
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	mov	r1,#10
	mov	r0,#0
	cmp	r6,r0
	blt	.Lj179
	bgt	.Lj180
	cmp	r5,r1
	bcs	.Lj180
.Lj179:
	ldr	r2,[r11, #-76]
	sub	r0,r11,#76
	mov	r3,#0
	ldr	r1,.Lj178
	bl	fpc_ansistr_concat
.Lj180:
# [179] hhs:=inttostr(hh); if hh<10 then hhs:='0'+hhs;
	mov	r2,r8
	mov	r1,r7
	sub	r0,r11,#80
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	mov	r1,#10
	mov	r0,#0
	cmp	r8,r0
	blt	.Lj182
	bgt	.Lj183
	cmp	r7,r1
	bcs	.Lj183
.Lj182:
	ldr	r2,[r11, #-80]
	sub	r0,r11,#80
	mov	r3,#0
	ldr	r1,.Lj178
	bl	fpc_ansistr_concat
.Lj183:
# [180] songfreq:=1000000 div siddelay;
	mov	r3,#0
	mov	r2,#999424
	orr	r2,r2,#576
	ldr	r0,.Lj185
	ldr	r1,[r0]
	ldr	r0,.Lj186
	ldr	r0,[r0]
	bl	fpc_div_int64
	ldr	r2,.Lj187
	str	r0,[r2]
	ldr	r0,.Lj188
	str	r1,[r0]
# [181] box(18,864,640,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#640
	mov	r1,#864
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [182] box(18,960,640,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#640
	mov	r1,#960
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [183] outtextxyz(18,864,songname,250,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj189
	ldr	r2,[r0]
	mov	r3,#250
	mov	r1,#864
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [184] outtextxyz(18,960,hhs+':'+mms+':'+sss,190,4,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-80]
	str	r0,[r11, #-244]
	ldr	r0,.Lj190
	str	r0,[r11, #-240]
	ldr	r0,[r11, #-76]
	str	r0,[r11, #-236]
	ldr	r0,.Lj190
	str	r0,[r11, #-232]
	ldr	r0,[r11, #-84]
	str	r0,[r11, #-228]
	sub	r1,r11,#244
	mov	r3,#0
	mov	r2,#4
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r0,#4
	str	r0,[r13]
	mov	r3,#190
	mov	r1,#960
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [185] avsct1[c1]:=tim;
	mov	r2,r10,lsl #2
	ldr	r0,.Lj192
	ldr	r0,[r0]
	ldr	r1,.Lj193
	str	r0,[r2, r1]
# [186] avspt1[c1]:=ts;
	mov	r2,r10,lsl #2
	ldr	r0,.Lj194
	ldr	r0,[r0]
	ldr	r1,.Lj195
	str	r0,[r2, r1]
# [187] sidtime1[c1]:=sidtime;
	mov	r2,r10,lsl #2
	ldr	r0,.Lj196
	ldr	r0,[r0]
	ldr	r1,.Lj197
	str	r0,[r2, r1]
# [188] av65021[c1]:=time6502;
	mov	r2,r10,lsl #2
	ldr	r0,.Lj160
	ldr	r1,[r0]
	ldr	r0,.Lj199
	str	r1,[r2, r0]
# [189] avsct:=0; for i:=0 to 59 do avsct+=avsct1[i]; avsct:=round(avsct/60);
	mov	r0,#0
	ldr	r1,.Lj200
	str	r0,[r1]
	mov	r0,#0
	ldr	r1,.Lj201
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj204:
	add	r4,r4,#1
	mov	r1,r4,lsl #2
	ldr	r0,.Lj193
	ldr	r2,[r1, r0]
	mov	r3,r2,asr #31
	ldr	r0,.Lj200
	ldr	r1,[r0]
	ldr	r0,.Lj201
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj200
	str	r2,[r0]
	ldr	r0,.Lj201
	str	r1,[r0]
	cmp	r4,#59
	blt	.Lj204
	ldr	r0,.Lj201
	ldr	r1,[r0]
	ldr	r0,.Lj200
	ldr	r0,[r0]
	bl	fpc_int64_to_double
	vmov	d1,r0,r1
	vldr	d0,.Lj212
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
	b	.Lj367
.Lj149:
	.long	U_$RETROMALINA_$$_K
.Lj154:
	.long	TC_$UMAIN_$$_C
.Lj155:
	.long	TC_$UMAIN_$$_C+4
.Lj160:
	.long	U_$RETROMALINA_$$_TIME6502
.Lj161:
	.long	U_$RETROMALINA_$$_TIME6502+4
.Lj164:
	.long	TC_$UMAIN_$$_C6
.Lj165:
	.long	TC_$UMAIN_$$_C6+4
.Lj168:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj169:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj172:
	.long	60000000
.Lj175:
	.long	-694967296
.Lj178:
	.long	.Ld8
.Lj185:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj186:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj187:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj188:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj189:
	.long	U_$UMAIN_$$_SONGNAME
.Lj190:
	.long	.Ld9
.Lj192:
	.long	U_$RETROMALINA_$$_TIM
.Lj193:
	.long	U_$UMAIN_$$_AVSCT1
.Lj194:
	.long	U_$RETROMALINA_$$_TS
.Lj195:
	.long	U_$UMAIN_$$_AVSPT1
.Lj196:
	.long	TC_$RETROMALINA_$$_SIDTIME
.Lj197:
	.long	U_$UMAIN_$$_SIDTIME1
.Lj199:
	.long	U_$UMAIN_$$_AV65021
.Lj200:
	.long	TC_$UMAIN_$$_AVSCT
.Lj201:
	.long	TC_$UMAIN_$$_AVSCT+4
.Lj212:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj367:
	ldr	r2,.Lj213
	str	r0,[r2]
	ldr	r0,.Lj214
	str	r1,[r0]
# [190] avspt:=0; for i:=0 to 59 do avspt+=avspt1[i]; avspt:=round(avspt/60);
	mov	r0,#0
	ldr	r1,.Lj215
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj216
	str	r1,[r0]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj219:
	add	r4,r4,#1
	mov	r1,r4,lsl #2
	ldr	r0,.Lj220
	ldr	r2,[r1, r0]
	mov	r3,r2,asr #31
	ldr	r0,.Lj215
	ldr	r1,[r0]
	ldr	r0,.Lj216
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj215
	str	r2,[r0]
	ldr	r0,.Lj216
	str	r1,[r0]
	cmp	r4,#59
	blt	.Lj219
	ldr	r0,.Lj216
	ldr	r1,[r0]
	ldr	r0,.Lj215
	ldr	r0,[r0]
	bl	fpc_int64_to_double
	vmov	d0,r0,r1
	vldr	d1,.Lj227
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r2,.Lj215
	str	r0,[r2]
	ldr	r0,.Lj216
	str	r1,[r0]
# [191] avall:=0; for i:=0 to 59 do avall+=sidtime1[i]; avall:=round(avall/60);
	mov	r1,#0
	ldr	r0,.Lj230
	str	r1,[r0]
	mov	r0,#0
	ldr	r1,.Lj231
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj234:
	add	r4,r4,#1
	mov	r1,r4,lsl #2
	ldr	r0,.Lj235
	ldr	r2,[r1, r0]
	mov	r3,r2,asr #31
	ldr	r0,.Lj230
	ldr	r1,[r0]
	ldr	r0,.Lj231
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj230
	str	r2,[r0]
	ldr	r0,.Lj231
	str	r1,[r0]
	cmp	r4,#59
	blt	.Lj234
	ldr	r0,.Lj231
	ldr	r1,[r0]
	ldr	r0,.Lj230
	ldr	r0,[r0]
	bl	fpc_int64_to_double
	vmov	d1,r0,r1
	vldr	d0,.Lj242
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r2,.Lj230
	str	r0,[r2]
	ldr	r0,.Lj231
	str	r1,[r0]
# [192] av6502:=0; for i:=0 to 59 do av6502+=av65021[i]; av6502:=round(av6502/60);
	mov	r0,#0
	ldr	r1,.Lj245
	str	r0,[r1]
	mov	r1,#0
	ldr	r0,.Lj246
	str	r1,[r0]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj249:
	add	r4,r4,#1
	mov	r1,r4,lsl #2
	ldr	r0,.Lj250
	ldr	r2,[r1, r0]
	mov	r3,r2,asr #31
	ldr	r0,.Lj245
	ldr	r1,[r0]
	ldr	r0,.Lj246
	ldr	r0,[r0]
	adds	r2,r1,r2
	adc	r1,r0,r3
	ldr	r0,.Lj245
	str	r2,[r0]
	ldr	r0,.Lj246
	str	r1,[r0]
	cmp	r4,#59
	blt	.Lj249
	ldr	r0,.Lj246
	ldr	r1,[r0]
	ldr	r0,.Lj245
	ldr	r0,[r0]
	bl	fpc_int64_to_double
	vmov	d0,r0,r1
	vldr	d1,.Lj257
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r2,.Lj245
	str	r0,[r2]
	ldr	r0,.Lj246
	str	r1,[r0]
# [194] box2(10,1062,1782,1110,118);
	mov	r0,#118
	str	r0,[r13]
	mov	r3,#86
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#38
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [195] outtextxyz(32,1070,'Times: ',44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#44
	ldr	r2,.Lj260
	mov	r0,#32
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [196] outtextxyz(144,1070,'screen '+inttostr(avsct)+' us',44,2,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj261
	str	r0,[r11, #-236]
	ldr	r0,.Lj214
	ldr	r2,[r0]
	ldr	r0,.Lj213
	ldr	r1,[r0]
	sub	r0,r11,#248
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r0,[r11, #-248]
	str	r0,[r11, #-232]
	ldr	r0,.Lj264
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#44
	mov	r0,#144
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [197] outtextxyz(400,1070,'sprites '+inttostr(avspt)+' us',186,2,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj265
	str	r0,[r11, #-236]
	ldr	r0,.Lj216
	ldr	r2,[r0]
	ldr	r0,.Lj215
	ldr	r1,[r0]
	sub	r0,r11,#248
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r0,[r11, #-248]
	str	r0,[r11, #-232]
	ldr	r0,.Lj264
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#186
	mov	r0,#400
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [198] if sidcount<>0 then outtextxyz(656,1070,'SID '+inttostr(avall)+' us',233,2,2);
	ldr	r0,.Lj269
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj271
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj272
	str	r0,[r11, #-236]
	ldr	r0,.Lj231
	ldr	r2,[r0]
	ldr	r0,.Lj230
	ldr	r1,[r0]
	sub	r0,r11,#248
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r0,[r11, #-248]
	str	r0,[r11, #-232]
	ldr	r0,.Lj264
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#233
	mov	r0,#656
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj271:
# [199] outtextxyz(880,1070,'6502 '+floattostrf((av6502/16),fffixed,4,1)+' us',124,2,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj276
	str	r0,[r11, #-236]
	mov	r0,#1
	str	r0,[r13, #4]
	mov	r0,#4
	str	r0,[r13]
	ldr	r0,.Lj246
	ldr	r1,[r0]
	ldr	r0,.Lj245
	ldr	r0,[r0]
	bl	fpc_int64_to_double
	vmov	d0,r0,r1
	vldr	d1,.Lj279
	vmul.f64	d0,d0,d1
	vmov	r1,r2,d0
	mov	r3,#2
	sub	r0,r11,#248
	bl	SYSUTILS_$$_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
	b	.Lj368
.Lj213:
	.long	TC_$UMAIN_$$_AVSCT
.Lj214:
	.long	TC_$UMAIN_$$_AVSCT+4
.Lj215:
	.long	TC_$UMAIN_$$_AVSPT
.Lj216:
	.long	TC_$UMAIN_$$_AVSPT+4
.Lj220:
	.long	U_$UMAIN_$$_AVSPT1
.Lj227:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj230:
	.long	TC_$UMAIN_$$_AVALL
.Lj231:
	.long	TC_$UMAIN_$$_AVALL+4
.Lj235:
	.long	U_$UMAIN_$$_SIDTIME1
.Lj242:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj245:
	.long	TC_$UMAIN_$$_AV6502
.Lj246:
	.long	TC_$UMAIN_$$_AV6502+4
.Lj250:
	.long	U_$UMAIN_$$_AV65021
.Lj257:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj260:
	.long	.Ld10
.Lj261:
	.long	.Ld11
.Lj264:
	.long	.Ld12
.Lj265:
	.long	.Ld13
.Lj269:
	.long	TC_$RETROMALINA_$$_SIDCOUNT
.Lj272:
	.long	.Ld14
.Lj276:
	.long	.Ld15
.Lj279:
# value: 0d+6.2500000000000000E-002
	.byte	0,0,0,0,0,0,176,63
.Lj368:
	ldr	r0,[r11, #-248]
	str	r0,[r11, #-232]
	ldr	r0,.Lj280
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#124
	mov	r0,#880
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [200] outtextxyz(1280,1070,clock,220,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r2,[r11, #-92]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#220
	mov	r0,#1280
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [201] if peek($2070003)=1 then outtextxyz(1540,1070,inttostr(peek($200d404)shr 4),108,2,2);
	ldr	r0,.Lj281
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#1
	bne	.Lj283
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj284
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0,lsr #4
	mov	r2,#0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r0,#4
	orr	r0,r0,#1536
	mov	r3,#108
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj283:
# [202] if peek($2070004)=1 then outtextxyz(1580,1070,inttostr(peek($200d40b)shr 4),200,2,2);
	ldr	r0,.Lj285
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#1
	bne	.Lj287
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj288
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0,lsr #4
	mov	r2,#0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r0,#44
	orr	r0,r0,#1536
	mov	r3,#200
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj287:
# [203] if peek($2070005)=1 then outtextxyz(1620,1070,inttostr(peek($200d412)shr 4),40,2,2);
	ldr	r0,.Lj289
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#1
	bne	.Lj291
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj292
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0,lsr #4
	mov	r2,#0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r0,#84
	orr	r0,r0,#1536
	mov	r3,#40
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj291:
# [204] outtextxyz(1680,1070,inttostr(peek($2060028)),44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r0,.Lj293
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#44
	mov	r0,#1680
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [206] a:= TemperatureGetCurrent(0) div 1000;
	ldr	r0,.Lj294
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj296
	mov	r0,#0
	ldr	r1,.Lj294
	ldr	r1,[r1]
	blx	r1
	b	.Lj298
.Lj296:
	mov	r0,#0
.Lj298:
	ldr	r1,.Lj299
# tcgarm.a_mul_reg_reg_pair called
	umull	r1,r0,r0,r1
	mov	r0,r0,lsr #6
# [207] outtextxyz(1482,1070,inttostr(a),44,2,2);
	mov	r1,#2
	str	r1,[r13, #4]
# Peephole MovStrMov done
	str	r1,[r13]
	mov	r1,r0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r0,#202
	orr	r0,r0,#1280
	mov	r3,#44
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [209] for i:=64 to 88 do lpoke($2010000+4*i,lpeek($2010000+2048+4*((c div 2) mod 256)+4*i));
	mov	r4,#64
	sub	r4,r4,#1
	.balign 4
.Lj302:
	add	r4,r4,#1
	ldr	r0,.Lj303
	ldr	r6,[r0]
	ldr	r0,.Lj304
	ldr	r5,[r0]
	mov	r2,#63
	mov	r1,r5
	mov	r0,r6
	bl	fpc_sarint64
	and	r0,r0,#1
	mov	r1,#0
	adds	r0,r0,r6
	adc	r1,r1,r5
	mov	r2,#1
	bl	fpc_sarint64
	mov	r5,r0
	mov	r6,r1
	mov	r2,#63
	mov	r1,r6
	mov	r0,r5
	bl	fpc_sarint64
	eor	r2,r0,r5
	eor	r12,r1,r6
	subs	r3,r2,r0
	sbc	r2,r12,r1
	and	r2,r3,#255
	mov	r3,#0
	eor	r2,r2,r0
	eor	r3,r3,r1
	subs	r2,r2,r0
	sbc	r3,r3,r1
	mov	r0,r2
	mov	r1,r3
	mov	r2,r1,lsl #2
	mov	r1,r0,lsl #2
	orr	r2,r2,r0,lsr #30
	mov	r0,#33554432
	orr	r0,r0,#67584
	adds	r1,r1,r0
	adc	r3,r2,#0
	mov	r0,r4,lsl #2
	mov	r2,r0,asr #31
	adds	r0,r0,r1
	adc	r1,r2,r3
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r1,r0
	mov	r0,r4,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#65536
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r4,#88
	blt	.Lj302
# [210] if (c mod 32)=0 then lpoke($2010000+4*89,lpeek($2010000+2048+(4*(c div 32) mod 256)))   ;
	ldr	r0,.Lj303
	ldr	r5,[r0]
	ldr	r0,.Lj304
	ldr	r4,[r0]
	mov	r2,#63
	mov	r1,r4
	mov	r0,r5
	bl	fpc_sarint64
	eor	r2,r0,r5
	eor	r3,r1,r4
	subs	r12,r2,r0
	sbc	r2,r3,r1
	and	r2,r12,#31
	mov	r3,#0
	eor	r2,r2,r0
	eor	r3,r3,r1
	subs	r2,r2,r0
	sbc	r3,r3,r1
	mov	r0,r2
	mov	r1,r3
	orrs	r0,r0,r1
	bne	.Lj308
	ldr	r0,.Lj303
	ldr	r5,[r0]
	ldr	r0,.Lj304
	ldr	r4,[r0]
	mov	r2,#63
	mov	r1,r4
	mov	r0,r5
	bl	fpc_sarint64
	and	r0,r0,#31
	mov	r1,#0
	adds	r0,r0,r5
	adc	r1,r1,r4
	mov	r2,#5
	bl	fpc_sarint64
	mov	r5,r1,lsl #2
	mov	r4,r0,lsl #2
	orr	r5,r5,r0,lsr #30
	mov	r2,#63
	mov	r1,r5
	mov	r0,r4
	bl	fpc_sarint64
	eor	r2,r0,r4
	eor	r12,r1,r5
	subs	r3,r2,r0
	sbc	r2,r12,r1
	and	r2,r3,#255
	mov	r3,#0
	eor	r2,r2,r0
	eor	r3,r3,r1
	subs	r2,r2,r0
	sbc	r3,r3,r1
	mov	r0,r2
	mov	r1,r3
	mov	r2,#33554432
	orr	r2,r2,#67584
	adds	r0,r0,r2
	adc	r1,r1,#0
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r1,r0
	ldr	r0,.Lj311
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj308:
# [211] cc:=(2*c) mod 3544 ;
	ldr	r0,.Lj303
	ldr	r1,[r0]
	ldr	r0,.Lj304
	ldr	r0,[r0]
	adds	r2,r1,r1
	adc	r3,r0,r0
	mov	r1,#0
	mov	r0,#216
	orr	r0,r0,#3328
	bl	fpc_mod_int64
	mov	r4,r0
# [212] if cc<1772 then blit($3800000,10+(cc),1011,$3000000,12,1011,1771-(cc),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	bge	.Lj315
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#12
	str	r0,[r13]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r0,#235
	orr	r0,r0,#1536
	sub	r0,r0,r4
	str	r0,[r13, #8]
	add	r1,r4,#10
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#50331648
	mov	r0,#58720256
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj315:
# [213] if cc<1772 then blit($3800000,10,1059,$3000000,11+1771-(cc),1011,(cc),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	bge	.Lj317
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	str	r4,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r0,#246
	orr	r0,r0,#1536
	sub	r0,r0,r4
	str	r0,[r13]
	mov	r2,#35
	orr	r2,r2,#1024
	mov	r3,#50331648
	mov	r1,#10
	mov	r0,#58720256
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj317:
# [214] if cc>=1772 then blit ($3800000,10,1011,$3000000,11+3543-(cc),1011,(cc-1772),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	blt	.Lj319
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	sub	r0,r4,#236
	sub	r0,r0,#1536
	str	r0,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r0,#226
	orr	r0,r0,#3328
	sub	r0,r0,r4
	str	r0,[r13]
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#50331648
	mov	r1,#10
	mov	r0,#58720256
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj319:
# [215] if cc>=1772 then blit($3800000,10+(cc-1772),1059,$3000000,12,1011,1771-(cc-1772),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	blt	.Lj321
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#12
	str	r0,[r13]
	sub	r1,r4,#236
	sub	r1,r1,#1536
	mov	r0,#235
	orr	r0,r0,#1536
	sub	r0,r0,r1
	str	r0,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r2,#35
	orr	r2,r2,#1024
	sub	r0,r4,#236
	sub	r0,r0,#1536
	add	r1,r0,#10
	mov	r3,#50331648
	mov	r0,#58720256
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj321:
# [216] box2(10,610,894,797,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#29
	orr	r3,r3,#768
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#98
	orr	r1,r1,#512
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [217] box2(10,700,894,701,140);
	mov	r0,#140
	str	r0,[r13]
	mov	r3,#189
	orr	r3,r3,#512
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#700
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [218] box2(10,636,894,637,140);
	mov	r0,#140
	str	r0,[r13]
	mov	r3,#125
	orr	r3,r3,#512
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#636
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [219] box2(10,764,894,765,140);
	mov	r0,#140
	str	r0,[r13]
	mov	r3,#253
	orr	r3,r3,#512
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#764
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [220] for j:=20 to 840 do if abs(scope[j])<46000 then box(20+j,700-scope[j] div 512,2,2,190);
	mov	r0,#20
	ldr	r1,.Lj325
	str	r0,[r1]
	ldr	r1,.Lj325
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
	.balign 4
.Lj324:
	ldr	r1,.Lj325
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
	ldr	r0,.Lj325
	ldr	r0,[r0]
	mov	r0,r0,lsl #2
	ldr	r1,.Lj329
	ldr	r0,[r0, r1]
	movs	r0,r0
	rsbmi	r0,r0,#0
	mov	r1,#176
	orr	r1,r1,#45824
	cmp	r0,r1
	bge	.Lj331
	mov	r0,#190
	str	r0,[r13]
	ldr	r0,.Lj325
	ldr	r0,[r0]
	mov	r1,r0,lsl #2
	ldr	r0,.Lj329
	ldr	r0,[r1, r0]
	mov	r1,r0,asr #31
	add	r0,r0,r1,lsr #23
	mov	r0,r0,asr #9
	mov	r1,#700
	sub	r1,r1,r0
	ldr	r0,.Lj325
	ldr	r0,[r0]
	add	r0,r0,#20
	mov	r3,#2
	mov	r2,#2
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj331:
	ldr	r0,.Lj325
	ldr	r0,[r0]
	cmp	r0,#840
	blt	.Lj324
# [221] sprx:=round(dpeek($200d400)/40+74);
	mov	r0,#33554432
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
	vmov	s0,r0
	vcvt.f64.u32	d0,s0
	b	.Lj369
.Lj280:
	.long	.Ld12
.Lj281:
	.long	34013187
.Lj284:
	.long	33608708
.Lj285:
	.long	34013188
.Lj288:
	.long	33608715
.Lj289:
	.long	34013189
.Lj292:
	.long	33608722
.Lj293:
	.long	33947688
.Lj294:
	.long	U_$PLATFORM_$$_TEMPERATUREGETCURRENTHANDLER
.Lj299:
	.long	274877907
.Lj303:
	.long	TC_$UMAIN_$$_C
.Lj304:
	.long	TC_$UMAIN_$$_C+4
.Lj311:
	.long	33620324
.Lj325:
	.long	U_$RETROMALINA_$$_J
.Lj329:
	.long	U_$RETROMALINA_$$_SCOPE
.Lj369:
	vldr	d1,.Lj336
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj337
	vadd.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r1,.Lj338
	str	r0,[r1]
# [222] spry:=920-3*(peek($200d406) and $F0);
	ldr	r0,.Lj339
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	add	r0,r0,r0,lsl #1
	mov	r1,#920
	sub	r0,r1,r0
	ldr	r1,.Lj340
	str	r0,[r1]
# [223] lpoke($2060040,(spry shl 16)+sprx+2048*(1-peek($2070003)));
	ldr	r0,.Lj340
	ldr	r0,[r0]
	mov	r1,r0,lsl #16
	ldr	r0,.Lj338
	ldr	r0,[r0]
	add	r4,r0,r1
	ldr	r0,.Lj343
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,#1
	sub	r0,r1,r0
# Peephole FoldShiftProcess done
	add	r1,r4,r0,lsl #11
	ldr	r0,.Lj344
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [224] spr2x:=round(dpeek($200d407)/40+74);
	ldr	r0,.Lj345
	bl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
	vmov	s0,r0
	vcvt.f64.u32	d0,s0
	vldr	d1,.Lj346
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj347
	vadd.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r1,.Lj348
	str	r0,[r1]
# [225] spr2y:=920-3*(peek($200d40d) and $F0);
	ldr	r0,.Lj349
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	add	r1,r0,r0,lsl #1
	mov	r0,#920
	sub	r1,r0,r1
	ldr	r0,.Lj350
	str	r1,[r0]
# [226] lpoke($2060048,(spr2y shl 16)+spr2x+2048*(1-peek($2070004)));
	ldr	r0,.Lj350
	ldr	r0,[r0]
	mov	r1,r0,lsl #16
	ldr	r0,.Lj348
	ldr	r0,[r0]
	add	r4,r0,r1
	ldr	r0,.Lj353
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,#1
	sub	r0,r1,r0
# Peephole FoldShiftProcess done
	add	r1,r4,r0,lsl #11
	ldr	r0,.Lj354
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [227] spr3x:=round(dpeek($200d40e)/40+74);
	ldr	r0,.Lj355
	bl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
	vmov	s0,r0
	vcvt.f64.u32	d1,s0
	vldr	d0,.Lj356
	vmul.f64	d1,d1,d0
	vldr	d0,.Lj357
	vadd.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
	ldr	r1,.Lj358
	str	r0,[r1]
# [228] spr3y:=920-3*(peek($200d414) and $F0);
	ldr	r0,.Lj359
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	add	r0,r0,r0,lsl #1
	mov	r1,#920
	sub	r1,r1,r0
	ldr	r0,.Lj360
	str	r1,[r0]
# [229] lpoke($2060050,(spr3y shl 16)+spr3x+2048*(1-peek($2070005)));
	ldr	r0,.Lj360
	ldr	r0,[r0]
	mov	r1,r0,lsl #16
	ldr	r0,.Lj358
	ldr	r0,[r0]
	add	r4,r0,r1
	ldr	r0,.Lj363
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,#1
	sub	r0,r1,r0
# Peephole FoldShiftProcess done
	add	r1,r4,r0,lsl #11
	ldr	r0,.Lj364
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [230] lpoke($2060078,lpeek($206002c) shl 1);
	ldr	r0,.Lj365
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r1,r0,lsl #1
	ldr	r0,.Lj366
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj147:
	bl	fpc_popaddrstack
	sub	r0,r11,#248
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#76
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#80
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#84
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#92
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-212]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj336:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63
.Lj337:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64
.Lj338:
	.long	U_$UMAIN_$$_SPRX
.Lj339:
	.long	33608710
.Lj340:
	.long	U_$UMAIN_$$_SPRY
.Lj343:
	.long	34013187
.Lj344:
	.long	33947712
.Lj345:
	.long	33608711
.Lj346:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63
.Lj347:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64
.Lj348:
	.long	U_$UMAIN_$$_SPR2X
.Lj349:
	.long	33608717
.Lj350:
	.long	U_$UMAIN_$$_SPR2Y
.Lj353:
	.long	34013188
.Lj354:
	.long	33947720
.Lj355:
	.long	33608718
.Lj356:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63
.Lj357:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64
.Lj358:
	.long	U_$UMAIN_$$_SPR3X
.Lj359:
	.long	33608724
.Lj360:
	.long	U_$UMAIN_$$_SPR3Y
.Lj363:
	.long	34013189
.Lj364:
	.long	33947728
.Lj365:
	.long	33947692
.Lj366:
	.long	33947768
.Le2:
	.size	UMAIN_$$_MAIN2, .Le2 - UMAIN_$$_MAIN2

.section .text.n_umain_$$_init_implicit
	.balign 4
.globl	INIT$_$UMAIN
INIT$_$UMAIN:
.globl	UMAIN_$$_init_implicit
UMAIN_$$_init_implicit:
	stmfd	r13!,{r14}
	ldmfd	r13!,{r15}
.Le3:
	.size	UMAIN_$$_init_implicit, .Le3 - UMAIN_$$_init_implicit

.section .text.n_umain_$$_finalize_implicit
	.balign 4
.globl	FINALIZE$_$UMAIN
FINALIZE$_$UMAIN:
.globl	UMAIN_$$_finalize_implicit
UMAIN_$$_finalize_implicit:
	stmfd	r13!,{r14}
	ldr	r0,.Lj374
	bl	fpc_ansistr_decr_ref
	ldmfd	r13!,{r15}
.Lj374:
	.long	U_$UMAIN_$$_SONGNAME
.Le4:
	.size	UMAIN_$$_finalize_implicit, .Le4 - UMAIN_$$_finalize_implicit
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$umain_$$_test
	.balign 4
# [umain.pas]
# [10] var test:integer ;
	.globl U_$UMAIN_$$_TEST
	.size U_$UMAIN_$$_TEST,4
U_$UMAIN_$$_TEST:
	.zero 4

.section .bss.n_u_$umain_$$_songname
	.balign 4
# [13] songname:string;
	.globl U_$UMAIN_$$_SONGNAME
	.size U_$UMAIN_$$_SONGNAME,4
U_$UMAIN_$$_SONGNAME:
	.zero 4

.section .bss.n_u_$umain_$$_q1
	.balign 4
# [14] q1,q2,q3:extended;
	.globl U_$UMAIN_$$_Q1
	.size U_$UMAIN_$$_Q1,8
U_$UMAIN_$$_Q1:
	.zero 8

.section .bss.n_u_$umain_$$_q2
	.balign 4
	.globl U_$UMAIN_$$_Q2
	.size U_$UMAIN_$$_Q2,8
U_$UMAIN_$$_Q2:
	.zero 8

.section .bss.n_u_$umain_$$_q3
	.balign 4
	.globl U_$UMAIN_$$_Q3
	.size U_$UMAIN_$$_Q3,8
U_$UMAIN_$$_Q3:
	.zero 8

.section .bss.n_u_$umain_$$_thread
	.balign 4
# [15] thread:TRetro;
	.globl U_$UMAIN_$$_THREAD
	.size U_$UMAIN_$$_THREAD,4
U_$UMAIN_$$_THREAD:
	.zero 4

.section .bss.n_u_$umain_$$_sprx
	.balign 4
# [16] sprx,sprxd,spryd,spry:integer;
	.globl U_$UMAIN_$$_SPRX
	.size U_$UMAIN_$$_SPRX,4
U_$UMAIN_$$_SPRX:
	.zero 4

.section .bss.n_u_$umain_$$_sprxd
	.balign 4
	.globl U_$UMAIN_$$_SPRXD
	.size U_$UMAIN_$$_SPRXD,4
U_$UMAIN_$$_SPRXD:
	.zero 4

.section .bss.n_u_$umain_$$_spryd
	.balign 4
	.globl U_$UMAIN_$$_SPRYD
	.size U_$UMAIN_$$_SPRYD,4
U_$UMAIN_$$_SPRYD:
	.zero 4

.section .bss.n_u_$umain_$$_spry
	.balign 4
	.globl U_$UMAIN_$$_SPRY
	.size U_$UMAIN_$$_SPRY,4
U_$UMAIN_$$_SPRY:
	.zero 4

.section .bss.n_u_$umain_$$_spr2x
	.balign 4
# [17] spr2x,spr2xd,spr2yd,spr2y:integer;
	.globl U_$UMAIN_$$_SPR2X
	.size U_$UMAIN_$$_SPR2X,4
U_$UMAIN_$$_SPR2X:
	.zero 4

.section .bss.n_u_$umain_$$_spr2xd
	.balign 4
	.globl U_$UMAIN_$$_SPR2XD
	.size U_$UMAIN_$$_SPR2XD,4
U_$UMAIN_$$_SPR2XD:
	.zero 4

.section .bss.n_u_$umain_$$_spr2yd
	.balign 4
	.globl U_$UMAIN_$$_SPR2YD
	.size U_$UMAIN_$$_SPR2YD,4
U_$UMAIN_$$_SPR2YD:
	.zero 4

.section .bss.n_u_$umain_$$_spr2y
	.balign 4
	.globl U_$UMAIN_$$_SPR2Y
	.size U_$UMAIN_$$_SPR2Y,4
U_$UMAIN_$$_SPR2Y:
	.zero 4

.section .bss.n_u_$umain_$$_spr3x
	.balign 4
# [18] spr3x,spr3xd,spr3yd,spr3y:integer;
	.globl U_$UMAIN_$$_SPR3X
	.size U_$UMAIN_$$_SPR3X,4
U_$UMAIN_$$_SPR3X:
	.zero 4

.section .bss.n_u_$umain_$$_spr3xd
	.balign 4
	.globl U_$UMAIN_$$_SPR3XD
	.size U_$UMAIN_$$_SPR3XD,4
U_$UMAIN_$$_SPR3XD:
	.zero 4

.section .bss.n_u_$umain_$$_spr3yd
	.balign 4
	.globl U_$UMAIN_$$_SPR3YD
	.size U_$UMAIN_$$_SPR3YD,4
U_$UMAIN_$$_SPR3YD:
	.zero 4

.section .bss.n_u_$umain_$$_spr3y
	.balign 4
	.globl U_$UMAIN_$$_SPR3Y
	.size U_$UMAIN_$$_SPR3Y,4
U_$UMAIN_$$_SPR3Y:
	.zero 4

.section .bss.n_u_$umain_$$_qq
	.balign 4
# [26] qq:integer;
	.globl U_$UMAIN_$$_QQ
	.size U_$UMAIN_$$_QQ,4
U_$UMAIN_$$_QQ:
	.zero 4

.section .bss.n_u_$umain_$$_avsct1
	.balign 4
# [27] avsct1,avspt1,sidtime1,av65021:array[0..59] of integer;
	.globl U_$UMAIN_$$_AVSCT1
	.size U_$UMAIN_$$_AVSCT1,240
U_$UMAIN_$$_AVSCT1:
	.zero 240

.section .bss.n_u_$umain_$$_avspt1
	.balign 4
	.globl U_$UMAIN_$$_AVSPT1
	.size U_$UMAIN_$$_AVSPT1,240
U_$UMAIN_$$_AVSPT1:
	.zero 240

.section .bss.n_u_$umain_$$_sidtime1
	.balign 4
	.globl U_$UMAIN_$$_SIDTIME1
	.size U_$UMAIN_$$_SIDTIME1,240
U_$UMAIN_$$_SIDTIME1:
	.zero 240

.section .bss.n_u_$umain_$$_av65021
	.balign 4
	.globl U_$UMAIN_$$_AV65021
	.size U_$UMAIN_$$_AV65021,240
U_$UMAIN_$$_AV65021:
	.zero 240
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_TC_$UMAIN_$$_LICZNIK
	.balign 4
.globl	TC_$UMAIN_$$_LICZNIK
TC_$UMAIN_$$_LICZNIK:
	.long	0
.Le5:
	.size	TC_$UMAIN_$$_LICZNIK, .Le5 - TC_$UMAIN_$$_LICZNIK

.section .data.n_TC_$UMAIN_$$_C
	.balign 4
.globl	TC_$UMAIN_$$_C
TC_$UMAIN_$$_C:
	.long	0,0
# [20] c6:int64=1;
.Le6:
	.size	TC_$UMAIN_$$_C, .Le6 - TC_$UMAIN_$$_C

.section .data.n_TC_$UMAIN_$$_C6
	.balign 4
.globl	TC_$UMAIN_$$_C6
TC_$UMAIN_$$_C6:
	.long	1,0
# [21] avsct:int64=0;
.Le7:
	.size	TC_$UMAIN_$$_C6, .Le7 - TC_$UMAIN_$$_C6

.section .data.n_TC_$UMAIN_$$_AVSCT
	.balign 4
.globl	TC_$UMAIN_$$_AVSCT
TC_$UMAIN_$$_AVSCT:
	.long	0,0
# [22] avspt:int64=0;
.Le8:
	.size	TC_$UMAIN_$$_AVSCT, .Le8 - TC_$UMAIN_$$_AVSCT

.section .data.n_TC_$UMAIN_$$_AVSPT
	.balign 4
.globl	TC_$UMAIN_$$_AVSPT
TC_$UMAIN_$$_AVSPT:
	.long	0,0
# [23] avall:int64=0;
.Le9:
	.size	TC_$UMAIN_$$_AVSPT, .Le9 - TC_$UMAIN_$$_AVSPT

.section .data.n_TC_$UMAIN_$$_AVALL
	.balign 4
.globl	TC_$UMAIN_$$_AVALL
TC_$UMAIN_$$_AVALL:
	.long	0,0
# [24] avsid:int64=0;
.Le10:
	.size	TC_$UMAIN_$$_AVALL, .Le10 - TC_$UMAIN_$$_AVALL

.section .data.n_TC_$UMAIN_$$_AVSID
	.balign 4
.globl	TC_$UMAIN_$$_AVSID
TC_$UMAIN_$$_AVSID:
	.long	0,0
# [25] av6502:int64=0;
.Le11:
	.size	TC_$UMAIN_$$_AVSID, .Le11 - TC_$UMAIN_$$_AVSID

.section .data.n_TC_$UMAIN_$$_AV6502
	.balign 4
.globl	TC_$UMAIN_$$_AV6502
TC_$UMAIN_$$_AV6502:
	.long	0,0
.Le12:
	.size	TC_$UMAIN_$$_AV6502, .Le12 - TC_$UMAIN_$$_AV6502

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,47
.Ld1:
	.ascii	"The retromachine player v. 0.10u --- 2016.11.20\000"
.Le13:
	.size	.Ld1$strlab, .Le13 - .Ld1$strlab

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,12
.Ld2:
	.ascii	"Screen time:\000"
.Le14:
	.size	.Ld2$strlab, .Le14 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,110
.Ld3:
	.ascii	"A retromachine SID player by pik33 --- inspired by "
	.ascii	"Johannes Ahlebrand's Parallax Propeller SIDCog --- "
	.ascii	"F1,F2,F3\000"
.Le15:
	.size	.Ld3$strlab, .Le15 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,105
.Ld4:
	.ascii	"- channels 1..3 on/off; 1-100 Hz, 2-200 Hz, 3-150 H"
	.ascii	"z, 4-400 Hz, 5-50 Hz; F - toggle fullscreen, P - pa"
	.ascii	"use\000"
.Le16:
	.size	.Ld4$strlab, .Le16 - .Ld4$strlab

.section .rodata.n_.Ld5
	.balign 4
.Ld5$strlab:
	.short	0,1
	.long	-1,11
.Ld5:
	.ascii	"Now playing\000"
.Le17:
	.size	.Ld5$strlab, .Le17 - .Ld5$strlab

.section .rodata.n_.Ld6
	.balign 4
.Ld6$strlab:
	.short	0,1
	.long	-1,9
.Ld6:
	.ascii	"File info\000"
.Le18:
	.size	.Ld6$strlab, .Le18 - .Ld6$strlab

.section .rodata.n_.Ld7
	.balign 4
.Ld7$strlab:
	.short	0,1
	.long	-1,5
.Ld7:
	.ascii	"Files\000"
.Le19:
	.size	.Ld7$strlab, .Le19 - .Ld7$strlab

.section .rodata.n_.Ld8
	.balign 4
.Ld8$strlab:
	.short	0,1
	.long	-1,1
.Ld8:
	.ascii	"0\000"
.Le20:
	.size	.Ld8$strlab, .Le20 - .Ld8$strlab

.section .rodata.n_.Ld9
	.balign 4
.Ld9$strlab:
	.short	0,1
	.long	-1,1
.Ld9:
	.ascii	":\000"
.Le21:
	.size	.Ld9$strlab, .Le21 - .Ld9$strlab

.section .rodata.n_.Ld10
	.balign 4
.Ld10$strlab:
	.short	0,1
	.long	-1,7
.Ld10:
	.ascii	"Times: \000"
.Le22:
	.size	.Ld10$strlab, .Le22 - .Ld10$strlab

.section .rodata.n_.Ld11
	.balign 4
.Ld11$strlab:
	.short	0,1
	.long	-1,7
.Ld11:
	.ascii	"screen \000"
.Le23:
	.size	.Ld11$strlab, .Le23 - .Ld11$strlab

.section .rodata.n_.Ld12
	.balign 4
.Ld12$strlab:
	.short	0,1
	.long	-1,3
.Ld12:
	.ascii	" us\000"
.Le24:
	.size	.Ld12$strlab, .Le24 - .Ld12$strlab

.section .rodata.n_.Ld13
	.balign 4
.Ld13$strlab:
	.short	0,1
	.long	-1,8
.Ld13:
	.ascii	"sprites \000"
.Le25:
	.size	.Ld13$strlab, .Le25 - .Ld13$strlab

.section .rodata.n_.Ld14
	.balign 4
.Ld14$strlab:
	.short	0,1
	.long	-1,4
.Ld14:
	.ascii	"SID \000"
.Le26:
	.size	.Ld14$strlab, .Le26 - .Ld14$strlab

.section .rodata.n_.Ld15
	.balign 4
.Ld15$strlab:
	.short	0,1
	.long	-1,5
.Ld15:
	.ascii	"6502 \000"
.Le27:
	.size	.Ld15$strlab, .Le27 - .Ld15$strlab
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$UMAIN_$$_def00000006
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000006
RTTI_$UMAIN_$$_def00000006:
	.byte	12,0,0,0
	.long	20,5
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
# [240] 
.Le28:
	.size	RTTI_$UMAIN_$$_def00000006, .Le28 - RTTI_$UMAIN_$$_def00000006

.section .rodata.n_RTTI_$UMAIN_$$_def00000007
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000007
RTTI_$UMAIN_$$_def00000007:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le29:
	.size	RTTI_$UMAIN_$$_def00000007, .Le29 - RTTI_$UMAIN_$$_def00000007

.section .rodata.n_RTTI_$UMAIN_$$_def00000008
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000008
RTTI_$UMAIN_$$_def00000008:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le30:
	.size	RTTI_$UMAIN_$$_def00000008, .Le30 - RTTI_$UMAIN_$$_def00000008

.section .rodata.n_RTTI_$UMAIN_$$_def00000009
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000009
RTTI_$UMAIN_$$_def00000009:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le31:
	.size	RTTI_$UMAIN_$$_def00000009, .Le31 - RTTI_$UMAIN_$$_def00000009

.section .rodata.n_RTTI_$UMAIN_$$_def0000000A
	.balign 4
.globl	RTTI_$UMAIN_$$_def0000000A
RTTI_$UMAIN_$$_def0000000A:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le32:
	.size	RTTI_$UMAIN_$$_def0000000A, .Le32 - RTTI_$UMAIN_$$_def0000000A
# End asmlist al_rtti

