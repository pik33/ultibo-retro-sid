	.file "Project1.pas"
# Begin asmlist al_procedures

.section .text.n_p$project1_$$_initsprites
	.balign 4
.globl	P$PROJECT1_$$_INITSPRITES
P$PROJECT1_$$_INITSPRITES:
# [Project1.pas]
# [45] begin
	stmfd	r13!,{r4,r5,r6,r14}
# Var i located in register r6
# Var j located in register r5
# Var k located in register r4
# [46] lpoke($2060040,$00080080); // position
	mov	r1,#128
# Rescheduled
	ldr	r0,.Lj5
	orr	r1,r1,#524288
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [47] lpoke($2060044,$00040004); // zoom
	mov	r1,#4
# Rescheduled
	ldr	r0,.Lj6
	orr	r1,r1,#262144
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [48] lpoke($2060048,$00100100);
	mov	r1,#1048576
# Rescheduled
	ldr	r0,.Lj7
	orr	r1,r1,#256
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [49] lpoke($206004c,$00040004);
	mov	r1,#4
# Rescheduled
	ldr	r0,.Lj8
	orr	r1,r1,#262144
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [50] lpoke($2060050,$00180180);
	mov	r1,#1572864
# Rescheduled
	ldr	r0,.Lj9
	orr	r1,r1,#384
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [51] lpoke($2060054,$00040004);
	mov	r1,#4
# Rescheduled
	ldr	r0,.Lj10
	orr	r1,r1,#262144
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [52] lpoke($2060058,$00200200);
	mov	r1,#2097152
# Rescheduled
	ldr	r0,.Lj11
	orr	r1,r1,#512
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [53] lpoke($206005c,$00040004);
	mov	r1,#4
# Rescheduled
	ldr	r0,.Lj12
	orr	r1,r1,#262144
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [54] lpoke($2060060,$00280280);
	mov	r1,#2621440
# Rescheduled
	ldr	r0,.Lj13
	orr	r1,r1,#640
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [55] lpoke($2060064,$00040004);
	mov	r1,#4
# Rescheduled
	ldr	r0,.Lj14
	orr	r1,r1,#262144
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [56] lpoke($2060068,$00300300);
	mov	r1,#3145728
# Rescheduled
	ldr	r0,.Lj15
	orr	r1,r1,#768
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [57] lpoke($206006c,$00040004);
	mov	r1,#4
# Rescheduled
	ldr	r0,.Lj16
	orr	r1,r1,#262144
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [58] lpoke($2060070,$00380380);
	mov	r1,#3670016
# Rescheduled
	ldr	r0,.Lj17
	orr	r1,r1,#896
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [59] lpoke($2060074,$00040004);
	mov	r1,#4
# Rescheduled
	ldr	r0,.Lj18
	orr	r1,r1,#262144
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [60] lpoke($2060078,$00400400);
	mov	r1,#4194304
# Rescheduled
	ldr	r0,.Lj19
	orr	r1,r1,#1024
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [61] lpoke($206007c,$00020002);
	mov	r1,#2
# Rescheduled
	ldr	r0,.Lj20
	orr	r1,r1,#131072
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# Var i located in register r6
# [65] for i:=0 to 31 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj23:
	add	r6,r6,#1
# [66] for j:=0 to 31 do  begin
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj26:
	add	r5,r5,#1
# [67] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmp	r5,#16
	movlt	r4,r5,lsl #4
# Peephole MovMov2Mov removed superfluous mov
	movge	r0,#31
	subge	r0,r0,r5
	movge	r4,r0,lsl #4
# Peephole MovMov2Mov removed superfluous mov
# [68] if k=0 then k:=8;
	cmp	r4,#0
	moveq	r4,#8
# [69] if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2052000+4*i+128*j,k)  else  lpoke($2052000+4*i+128*j,0);
	cmp	r6,#11
	blt	.Lj32
	cmp	r6,#21
	bgt	.Lj32
	cmp	r5,#11
	blt	.Lj32
	cmp	r5,#21
	ble	.Lj36
.Lj32:
	mov	r0,r6,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#335872
# Peephole FoldShiftProcess done
# [125] end;
	add	r0,r1,r5,lsl #7
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj37
.Lj36:
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#335872
# Peephole FoldShiftProcess done
	add	r0,r0,r5,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj37:
	cmp	r5,#31
	blt	.Lj26
	cmp	r6,#31
	blt	.Lj23
# Var i located in register r6
# [72] for i:=0 to 31 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj40:
	add	r6,r6,#1
# [73] for j:=0 to 31 do  begin
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj43:
	add	r5,r5,#1
# [74] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmp	r5,#16
	movlt	r4,r5,lsl #4
# Peephole MovMov2Mov removed superfluous mov
	movge	r0,#31
	subge	r0,r0,r5
	movge	r4,r0,lsl #4
# Peephole MovMov2Mov removed superfluous mov
# [75] if k=0 then k:=8;
	cmp	r4,#0
	moveq	r4,#8
# [76] k:=k shl 8;
	mov	r4,r4,lsl #8
# Peephole MovMov2Mov removed superfluous mov
# [77] if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2053000+4*i+128*j,k)  else  lpoke($2053000+4*i+128*j,0);
	cmp	r6,#11
	blt	.Lj49
	cmp	r6,#21
	bgt	.Lj49
	cmp	r5,#11
	blt	.Lj49
	cmp	r5,#21
	ble	.Lj53
.Lj49:
	mov	r0,r6,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#339968
# Peephole FoldShiftProcess done
	add	r0,r1,r5,lsl #7
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj54
.Lj53:
	mov	r0,r6,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#339968
# Peephole FoldShiftProcess done
	add	r0,r1,r5,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj54:
	cmp	r5,#31
	blt	.Lj43
	cmp	r6,#31
	blt	.Lj40
# Var i located in register r6
# [80] for i:=0 to 31 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj57:
	add	r6,r6,#1
# [81] for j:=0 to 31 do  begin
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj60:
	add	r5,r5,#1
# [82] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmp	r5,#16
	movlt	r4,r5,lsl #4
# Peephole MovMov2Mov removed superfluous mov
	movge	r0,#31
	subge	r0,r0,r5
	movge	r4,r0,lsl #4
# Peephole MovMov2Mov removed superfluous mov
# [83] if k=0 then k:=8;
	cmp	r4,#0
	moveq	r4,#8
# [84] k:=k shl 16;
	mov	r4,r4,lsl #16
# Peephole MovMov2Mov removed superfluous mov
# [85] if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2054000+4*i+128*j,k)  else  lpoke($2054000+4*i+128*j,0);
	cmp	r6,#11
	blt	.Lj66
	cmp	r6,#21
	bgt	.Lj66
	cmp	r5,#11
	blt	.Lj66
	cmp	r5,#21
	ble	.Lj70
.Lj66:
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#344064
# Peephole FoldShiftProcess done
	add	r0,r0,r5,lsl #7
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj71
.Lj70:
	mov	r0,r6,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#344064
# Peephole FoldShiftProcess done
	add	r0,r1,r5,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj71:
	cmp	r5,#31
	blt	.Lj60
	cmp	r6,#31
	blt	.Lj57
# Var i located in register r6
# [88] for i:=0 to 31 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj74:
	add	r6,r6,#1
# [89] for j:=0 to 31 do  begin
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj77:
	add	r5,r5,#1
# [90] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmp	r5,#16
	movlt	r4,r5,lsl #4
# Peephole MovMov2Mov removed superfluous mov
	movge	r0,#31
	subge	r0,r0,r5
	movge	r4,r0,lsl #4
# Peephole MovMov2Mov removed superfluous mov
# [91] if k=0 then k:=8;
	cmp	r4,#0
	moveq	r4,#8
# Peephole FoldShiftProcess done
	add	r4,r4,r4,lsl #8
# Peephole DataMov2Data removed superfluous mov
# [93] if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2055000+4*i+128*j,k)  else  lpoke($2055000+4*i+128*j,0);
	cmp	r6,#11
	blt	.Lj83
	cmp	r6,#21
	bgt	.Lj83
	cmp	r5,#11
	blt	.Lj83
	cmp	r5,#21
	ble	.Lj87
.Lj83:
	mov	r0,r6,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#348160
# Peephole FoldShiftProcess done
	add	r0,r1,r5,lsl #7
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj88
.Lj87:
	mov	r0,r6,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#348160
# Peephole FoldShiftProcess done
	add	r0,r1,r5,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj88:
	cmp	r5,#31
	blt	.Lj77
	cmp	r6,#31
	blt	.Lj74
# Var i located in register r6
# [96] for i:=0 to 31 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj91:
	add	r6,r6,#1
# [97] for j:=0 to 31 do  begin
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj94:
	add	r5,r5,#1
# [98] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmp	r5,#16
	movlt	r4,r5,lsl #4
# Peephole MovMov2Mov removed superfluous mov
	movge	r0,#31
	subge	r0,r0,r5
	movge	r4,r0,lsl #4
# Peephole MovMov2Mov removed superfluous mov
# [99] if k=0 then k:=8;
	cmp	r4,#0
	moveq	r4,#8
# Peephole FoldShiftProcess done
	add	r4,r4,r4,lsl #16
# Peephole DataMov2Data removed superfluous mov
# [101] if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2056000+4*i+128*j,k)  else  lpoke($2056000+4*i+128*j,0);
	cmp	r6,#11
	blt	.Lj100
	cmp	r6,#21
	bgt	.Lj100
	cmp	r5,#11
	blt	.Lj100
	cmp	r5,#21
	ble	.Lj104
.Lj100:
	mov	r0,r6,lsl #2
	add	r1,r0,#33554432
	add	r1,r1,#352256
# Peephole FoldShiftProcess done
	add	r0,r1,r5,lsl #7
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj105
.Lj104:
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#352256
# Peephole FoldShiftProcess done
	add	r0,r0,r5,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj105:
	cmp	r5,#31
	blt	.Lj94
	cmp	r6,#31
	blt	.Lj91
# Var i located in register r6
# [104] for i:=0 to 31 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj108:
	add	r6,r6,#1
# [105] for j:=0 to 31 do  begin
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj111:
	add	r5,r5,#1
# [106] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmp	r5,#16
	movlt	r4,r5,lsl #4
# Peephole MovMov2Mov removed superfluous mov
	movge	r0,#31
	subge	r0,r0,r5
	movge	r4,r0,lsl #4
# Peephole MovMov2Mov removed superfluous mov
# [107] if k=0 then k:=8;
	cmp	r4,#0
	moveq	r4,#8
# Peephole FoldShiftProcess done
# [108] k:=k shl 8 + k shl 16;
	mov	r1,r4,lsl #16
	add	r4,r1,r4,lsl #8
# Peephole DataMov2Data removed superfluous mov
# [109] if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2057000+4*i+128*j,k)  else  lpoke($2057000+4*i+128*j,0);
	cmp	r6,#11
	blt	.Lj117
	cmp	r6,#21
	bgt	.Lj117
	cmp	r5,#11
	blt	.Lj117
	cmp	r5,#21
	ble	.Lj121
.Lj117:
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#356352
# Peephole FoldShiftProcess done
	add	r0,r0,r5,lsl #7
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj122
.Lj121:
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#356352
# Peephole FoldShiftProcess done
	add	r0,r0,r5,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj122:
	cmp	r5,#31
	blt	.Lj111
	cmp	r6,#31
	blt	.Lj108
# Var i located in register r6
# [112] for i:=0 to 31 do
	mov	r6,#0
	sub	r6,r6,#1
	.balign 4
.Lj125:
	add	r6,r6,#1
# [113] for j:=0 to 31 do  begin
	mov	r5,#0
	sub	r5,r5,#1
	.balign 4
.Lj128:
	add	r5,r5,#1
# [114] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmp	r5,#16
	movlt	r4,r5,lsl #4
# Peephole MovMov2Mov removed superfluous mov
	movge	r0,#31
	subge	r0,r0,r5
	movge	r4,r0,lsl #4
# Peephole MovMov2Mov removed superfluous mov
# [115] if k=0 then k:=8;
	cmp	r4,#0
	moveq	r4,#8
# Peephole FoldShiftProcess done
	add	r0,r4,r4,lsl #8
# Peephole FoldShiftProcess done
	add	r4,r0,r4,lsl #16
# Peephole DataMov2Data removed superfluous mov
# [117] if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2058000+4*i+128*j,k)  else  lpoke($2058000+4*i+128*j,0);
	cmp	r6,#11
	blt	.Lj134
	cmp	r6,#21
	bgt	.Lj134
	cmp	r5,#11
	blt	.Lj134
	cmp	r5,#21
	ble	.Lj138
.Lj134:
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#360448
# Peephole FoldShiftProcess done
	add	r0,r0,r5,lsl #7
	mov	r1,r4
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	b	.Lj139
.Lj138:
	mov	r0,r6,lsl #2
	add	r0,r0,#33554432
	add	r0,r0,#360448
# Peephole FoldShiftProcess done
	add	r0,r0,r5,lsl #7
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj139:
	cmp	r5,#31
	blt	.Lj128
	cmp	r6,#31
	blt	.Lj125
# Rescheduled
# [120] s1x:=64;s2x:=64;s3x:=64;s4x:=64;s5x:=64;s6x:=64;s7x:=64;s8x:=64;
	ldr	r0,.Lj140
	mov	r1,#64
	str	r1,[r0]
# Rescheduled
	ldr	r1,.Lj141
	mov	r0,#64
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj142
	mov	r0,#64
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj143
	mov	r0,#64
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj144
	mov	r0,#64
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj145
	mov	r0,#64
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj146
	mov	r0,#64
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj147
	mov	r0,#64
	str	r0,[r1]
# Rescheduled
# [121] s1y:=40;s2y:=40;s3y:=40;s4y:=40;s5y:=40;s6y:=40;s7y:=40;s8y:=40;
	ldr	r1,.Lj148
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj149
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj150
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj151
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj152
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj153
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj154
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj155
	mov	r0,#40
	str	r0,[r1]
# Rescheduled
# [122] s1dx:=1 ;s2dx:=2 ;s3dx:=3 ;s4dx:=4 ;s5dx:=5 ;s6dx:=6 ;s7dx:=7 ;s8dx:=8 ;
	ldr	r1,.Lj156
	mov	r0,#1
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj157
	mov	r0,#2
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj158
	mov	r0,#3
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj159
	mov	r0,#4
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj160
	mov	r0,#5
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj161
	mov	r0,#6
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj162
	mov	r0,#7
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj163
	mov	r0,#8
	str	r0,[r1]
# Rescheduled
# [123] s1dy:=1 ;s2dy:=2 ;s3dy:=3 ;s4dy:=4 ;s5dy:=5 ;s6dy:=6 ;s7dy:=7 ;s8dy:=8 ;
	ldr	r1,.Lj164
	mov	r0,#1
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj165
	mov	r0,#2
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj166
	mov	r0,#3
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj167
	mov	r0,#4
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj168
	mov	r0,#5
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj169
	mov	r0,#6
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj170
	mov	r0,#7
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj171
	mov	r0,#8
	str	r0,[r1]
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj5:
	.long	33947712
.Lj6:
	.long	33947716
.Lj7:
	.long	33947720
.Lj8:
	.long	33947724
.Lj9:
	.long	33947728
.Lj10:
	.long	33947732
.Lj11:
	.long	33947736
.Lj12:
	.long	33947740
.Lj13:
	.long	33947744
.Lj14:
	.long	33947748
.Lj15:
	.long	33947752
.Lj16:
	.long	33947756
.Lj17:
	.long	33947760
.Lj18:
	.long	33947764
.Lj19:
	.long	33947768
.Lj20:
	.long	33947772
.Lj140:
	.long	U_$P$PROJECT1_$$_S1X
.Lj141:
	.long	U_$P$PROJECT1_$$_S2X
.Lj142:
	.long	U_$P$PROJECT1_$$_S3X
.Lj143:
	.long	U_$P$PROJECT1_$$_S4X
.Lj144:
	.long	U_$P$PROJECT1_$$_S5X
.Lj145:
	.long	U_$P$PROJECT1_$$_S6X
.Lj146:
	.long	U_$P$PROJECT1_$$_S7X
.Lj147:
	.long	U_$P$PROJECT1_$$_S8X
.Lj148:
	.long	U_$P$PROJECT1_$$_S1Y
.Lj149:
	.long	U_$P$PROJECT1_$$_S2Y
.Lj150:
	.long	U_$P$PROJECT1_$$_S3Y
.Lj151:
	.long	U_$P$PROJECT1_$$_S4Y
.Lj152:
	.long	U_$P$PROJECT1_$$_S5Y
.Lj153:
	.long	U_$P$PROJECT1_$$_S6Y
.Lj154:
	.long	U_$P$PROJECT1_$$_S7Y
.Lj155:
	.long	U_$P$PROJECT1_$$_S8Y
.Lj156:
	.long	U_$P$PROJECT1_$$_S1DX
.Lj157:
	.long	U_$P$PROJECT1_$$_S2DX
.Lj158:
	.long	U_$P$PROJECT1_$$_S3DX
.Lj159:
	.long	U_$P$PROJECT1_$$_S4DX
.Lj160:
	.long	U_$P$PROJECT1_$$_S5DX
.Lj161:
	.long	U_$P$PROJECT1_$$_S6DX
.Lj162:
	.long	U_$P$PROJECT1_$$_S7DX
.Lj163:
	.long	U_$P$PROJECT1_$$_S8DX
.Lj164:
	.long	U_$P$PROJECT1_$$_S1DY
.Lj165:
	.long	U_$P$PROJECT1_$$_S2DY
.Lj166:
	.long	U_$P$PROJECT1_$$_S3DY
.Lj167:
	.long	U_$P$PROJECT1_$$_S4DY
.Lj168:
	.long	U_$P$PROJECT1_$$_S5DY
.Lj169:
	.long	U_$P$PROJECT1_$$_S6DY
.Lj170:
	.long	U_$P$PROJECT1_$$_S7DY
.Lj171:
	.long	U_$P$PROJECT1_$$_S8DY
.Le0:
	.size	P$PROJECT1_$$_INITSPRITES, .Le0 - P$PROJECT1_$$_INITSPRITES

.section .text.n_main
	.balign 4
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
# Temps allocated between r11-236 and r11-44
# [128] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#244
# Var il located in register r0
# Var a located in register r8
# Var c located in register r0
# Var i located in register r0
# Var j located in register r4
# Var aa located in register r0:r0
# Var tt located in register r0:r0
# Var fps located in register r9:r10
# Var a64 located in register r4:r7
# Var b64 located in register r0:r0
# Var fh located in register r0
	bl	fpc_initializeunits
	mov	r0,#0
	str	r0,[r11, #-236]
# Peephole MovStrMov done
	str	r0,[r11, #-196]
# Peephole MovStrMov done
	str	r0,[r11, #-192]
# Peephole MovStrMov done
	str	r0,[r11, #-188]
# Peephole MovStrMov done
	str	r0,[r11, #-168]
	sub	r2,r11,#56
	sub	r1,r11,#160
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-164]
	cmp	r0,#0
	bne	.Lj172
# [130] while not DirectoryExists('C:\') do
	b	.Lj175
	.balign 4
.Lj174:
# [132] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
.Lj175:
	ldr	r0,.Lj177
	bl	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
	cmp	r0,#0
	beq	.Lj174
# [135] DeleteFile('C:\kernel7.img');
	ldr	r0,.Lj178
	bl	ULTIBO_$$_DELETEFILE$PCHAR$$LONGBOOL
# [136] RenameFile('C:\kernel7_l.img','C:\kernel7.img');
	ldr	r1,.Lj179
# Rescheduled
	ldr	r0,.Lj180
	bl	SYSUTILS_$$_RENAMEFILE$RAWBYTESTRING$RAWBYTESTRING$$BOOLEAN
# [138] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [140] initmachine;
	bl	RETROMALINA_$$_INITMACHINE
# [142] lpoke ($2060008,0);
	ldr	r0,.Lj181
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [143] lpoke ($2060020,1792);
	ldr	r0,.Lj182
	mov	r1,#1792
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [144] lpoke ($2060024,1120);
	ldr	r0,.Lj183
	mov	r1,#1120
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [146] setataripallette(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [147] setataripallette(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [148] setataripallette(2);
	mov	r0,#2
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [149] setataripallette(3);
	mov	r0,#3
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [150] cls(147);
	mov	r0,#147
	bl	RETROMALINA_$$_CLS$LONGINT
# [152] initsprites;
	bl	P$PROJECT1_$$_INITSPRITES
# [154] outtextxyz(128,16,'The Ultibo Retromachine v. 0.03 --- 2016.11.19',156,4,2);
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r0,#4
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj184
	mov	r3,#156
	mov	r1,#16
	mov	r0,#128
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [155] outtextxyz(64,128,'We have Atari ST - like font', 156,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj185
	mov	r3,#156
	mov	r1,#128
	mov	r0,#64
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [156] outtextxyz(64,192,'The font can be scaled',232,8,4);
	mov	r0,#4
	str	r0,[r13, #4]
	mov	r0,#8
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj186
	mov	r3,#232
	mov	r1,#192
	mov	r0,#64
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [158] for i:=0 to 15 do
	mov	r0,#0
	str	r0,[r11, #-232]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-232]
	.balign 4
.Lj189:
	ldr	r0,[r11, #-232]
	add	r0,r0,#1
	str	r0,[r11, #-232]
# [159] for j:=0 to 15 do
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj192:
# Peephole FoldShiftProcess done
# Rescheduled
# [160] box(64+32*j,320+32*i,32,32,16*i+j);
	ldr	r1,[r11, #-232]
	add	r4,r4,#1
# [319] end.
	add	r0,r4,r1,lsl #4
	str	r0,[r13]
	ldr	r1,[r11, #-232]
	mov	r0,r1,lsl #5
	add	r1,r0,#320
	mov	r0,r4,lsl #5
	add	r0,r0,#64
	mov	r3,#32
	mov	r2,#32
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	cmp	r4,#15
	blt	.Lj192
	ldr	r0,[r11, #-232]
	cmp	r0,#15
	blt	.Lj189
# [163] outtextxyz(64,860,'We have Atari 8-bit - like pallette...', 168,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj193
	mov	r3,#168
	mov	r1,#860
	mov	r0,#64
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [164] outtextxyz(64,900,'... and 8 scalable 32x32 pixel sprites.', 184,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj194
	mov	r3,#184
	mov	r1,#900
	mov	r0,#64
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [166] lpoke($206000c,$002040);   // border
	ldr	r0,.Lj195
	mov	r1,#8256
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [167] sethidecolor(250,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#250
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [168] sethidecolor(44,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#44
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [169] sethidecolor(190,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#190
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [170] sethidecolor(188,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#188
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [173] i:=0;
	mov	r0,#0
	str	r0,[r11, #-232]
# [174] lpoke($2060000,0);
	mov	r0,#33554432
	orr	r0,r0,#393216
	mov	r1,#0
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [175] b64:=clockgettotal;
	ldr	r0,.Lj196
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj198
	ldr	r0,.Lj196
	ldr	r0,[r0]
	blx	r0
	b	.Lj200
.Lj198:
	mov	r0,#0
	mov	r1,#0
.Lj200:
	str	r0,[r11, #-228]
	str	r1,[r11, #-224]
# [179] pwmbeep;
	bl	RETROMALINA_$$_PWMBEEP
# [181] sleep(1);
	mov	r0,#1
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [182] aa:=0;
	mov	r0,#0
	str	r0,[r11, #-220]
# Peephole MovStrMov done
	str	r0,[r11, #-216]
# Rescheduled
# [183] fh:=fileopen('c:\1.wav',$40);
	ldr	r0,.Lj201
	mov	r1,#64
	bl	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$LONGINT
	str	r0,[r11, #-208]
	.balign 4
.Lj202:
# [186] a:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r8,r0
	.balign 4
.Lj205:
# [187] repeat until lpeek($2060000)>a;
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r3,#0
	mov	r2,r8
# Peephole MovMov2Mov removed superfluous mov
# Peephole MovMov2Mov removed superfluous mov
# Peephole FoldShiftProcess done
	cmp	r3,r2,asr #31
	bgt	.Lj207
	blt	.Lj205
	cmp	r0,r2
	bls	.Lj205
.Lj207:
# [189] s1x:=s1x+s1dx;
	ldr	r0,.Lj210
# Rescheduled
	ldr	r1,.Lj211
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj210
	add	r0,r0,r2
# Rescheduled
# [190] if s1x>1920-192 then s1dx:=-1;
	ldr	r1,.Lj210
	str	r0,[r3]
	ldr	r0,[r1]
	cmp	r0,#1728
# Rescheduled
	ldrgt	r1,.Lj211
	mvngt	r0,#0
	strgt	r0,[r1]
# [191] if s1x<64 then s1dx:=1;
	ldr	r0,.Lj210
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r1,.Lj211
	movlt	r0,#1
	strlt	r0,[r1]
# [192] s1y:=s1y+s1dy;
	ldr	r0,.Lj221
# Rescheduled
	ldr	r1,.Lj222
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj221
	add	r0,r0,r2
# Rescheduled
# [193] if s1y>1200-168 then s1dy:=-1;
	ldr	r1,.Lj221
	str	r0,[r3]
	ldr	r0,[r1]
	mov	r1,#8
	orr	r1,r1,#1024
	cmp	r0,r1
# Rescheduled
	ldrgt	r1,.Lj222
	mvngt	r0,#0
	strgt	r0,[r1]
# [194] if s1y<40 then s1dy:=1;
	ldr	r0,.Lj221
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r1,.Lj222
	movlt	r0,#1
	strlt	r0,[r1]
# [195] lpoke($2060040,s1x+65536*s1y);
	ldr	r0,.Lj221
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj210
	mov	r1,r0,lsl #16
	ldr	r0,[r2]
	add	r1,r0,r1
# Rescheduled
	ldr	r0,.Lj234
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [197] s2x:=s2x+s2dx;
	ldr	r0,.Lj235
# Rescheduled
	ldr	r1,.Lj236
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj235
	add	r0,r0,r2
# Rescheduled
# [198] if s2x>1920-192 then s2dx:=-2;
	ldr	r1,.Lj235
	str	r0,[r3]
	ldr	r0,[r1]
	cmp	r0,#1728
# Rescheduled
	ldrgt	r1,.Lj236
	mvngt	r0,#1
	strgt	r0,[r1]
# [199] if s2x<64 then s2dx:=2;
	ldr	r0,.Lj235
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r1,.Lj236
	movlt	r0,#2
	strlt	r0,[r1]
# [200] s2y:=s2y+s2dy;
	ldr	r0,.Lj246
# Rescheduled
	ldr	r1,.Lj247
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj246
	add	r0,r0,r2
# Rescheduled
# [201] if s2y>1200-168 then s2dy:=-2;
	ldr	r1,.Lj246
	str	r0,[r3]
	ldr	r0,[r1]
	mov	r1,#8
	orr	r1,r1,#1024
	cmp	r0,r1
# Rescheduled
	ldrgt	r1,.Lj247
	mvngt	r0,#1
	strgt	r0,[r1]
# [202] if s2y<40 then s2dy:=2;
	ldr	r0,.Lj246
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r0,.Lj247
	movlt	r1,#2
	strlt	r1,[r0]
# [203] lpoke($2060048,s2x+65536*s2y);
	ldr	r0,.Lj246
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj235
	mov	r2,r0,lsl #16
	ldr	r0,[r1]
	add	r1,r0,r2
# Rescheduled
	ldr	r0,.Lj259
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [205] s3x:=s3x+s3dx;
	ldr	r0,.Lj260
# Rescheduled
	ldr	r1,.Lj261
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj260
	add	r0,r0,r2
# Rescheduled
# [206] if s3x>1920-192 then s3dx:=-3;
	ldr	r1,.Lj260
	str	r0,[r3]
	ldr	r0,[r1]
	cmp	r0,#1728
# Rescheduled
	ldrgt	r0,.Lj261
	mvngt	r1,#2
	strgt	r1,[r0]
# [207] if s3x<64 then s3dx:=3;
	ldr	r0,.Lj260
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r1,.Lj261
	movlt	r0,#3
	strlt	r0,[r1]
# [208] s3y:=s3y+s3dy;
	ldr	r0,.Lj271
# Rescheduled
	ldr	r1,.Lj272
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj271
	add	r0,r0,r2
# Rescheduled
# [209] if s3y>1200-168 then s3dy:=-3;
	ldr	r1,.Lj271
	str	r0,[r3]
	ldr	r1,[r1]
	mov	r0,#8
	orr	r0,r0,#1024
	cmp	r1,r0
# Rescheduled
	ldrgt	r1,.Lj272
	mvngt	r0,#2
	strgt	r0,[r1]
# [210] if s3y<40 then s3dy:=3;
	ldr	r0,.Lj271
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r0,.Lj272
	movlt	r1,#3
	strlt	r1,[r0]
# [211] lpoke($2060050,s3x+65536*s3y);
	ldr	r0,.Lj271
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj260
	mov	r1,r0,lsl #16
	ldr	r0,[r2]
	add	r1,r0,r1
# Rescheduled
	ldr	r0,.Lj284
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [213] s4x:=s4x+s4dx;
	ldr	r0,.Lj285
# Rescheduled
	ldr	r1,.Lj286
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj285
	add	r0,r0,r2
# Rescheduled
# [214] if s4x>1920-192 then s4dx:=-4;
	ldr	r1,.Lj285
	str	r0,[r3]
	ldr	r0,[r1]
	cmp	r0,#1728
# Rescheduled
	ldrgt	r1,.Lj286
	mvngt	r0,#3
	strgt	r0,[r1]
# [215] if s4x<64 then s4dx:=4;
	ldr	r0,.Lj285
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r1,.Lj286
	movlt	r0,#4
	strlt	r0,[r1]
# [216] s4y:=s4y+s4dy;
	ldr	r0,.Lj296
# Rescheduled
	ldr	r1,.Lj297
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj296
	add	r1,r0,r2
# Rescheduled
# [217] if s4y>1200-168 then s4dy:=-4;
	ldr	r0,.Lj296
	str	r1,[r3]
	ldr	r0,[r0]
	mov	r1,#8
	orr	r1,r1,#1024
	cmp	r0,r1
# Rescheduled
	ldrgt	r1,.Lj297
	mvngt	r0,#3
	strgt	r0,[r1]
# [218] if s4y<40 then s4dy:=4;
	ldr	r0,.Lj296
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r1,.Lj297
	movlt	r0,#4
	strlt	r0,[r1]
# [219] lpoke($2060058,s4x+65536*s4y);
	ldr	r0,.Lj296
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj285
	mov	r2,r0,lsl #16
	ldr	r0,[r1]
	add	r1,r0,r2
# Rescheduled
	ldr	r0,.Lj309
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [221] s5x:=s5x+s5dx;
	ldr	r0,.Lj310
# Rescheduled
	ldr	r1,.Lj311
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj310
	add	r1,r0,r2
# Rescheduled
# [222] if s5x>1920-192 then s5dx:=-5;
	ldr	r0,.Lj310
	str	r1,[r3]
	ldr	r0,[r0]
	cmp	r0,#1728
# Rescheduled
	ldrgt	r0,.Lj311
	mvngt	r1,#4
	strgt	r1,[r0]
# [223] if s5x<64 then s5dx:=5;
	ldr	r0,.Lj310
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r1,.Lj311
	movlt	r0,#5
	strlt	r0,[r1]
# [224] s5y:=s5y+s5dy;
	ldr	r0,.Lj321
# Rescheduled
	ldr	r1,.Lj322
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj321
	add	r0,r0,r2
# Rescheduled
# [225] if s5y>1200-168 then s5dy:=-5;
	ldr	r1,.Lj321
	str	r0,[r3]
	ldr	r1,[r1]
	mov	r0,#8
	orr	r0,r0,#1024
	cmp	r1,r0
# Rescheduled
	ldrgt	r0,.Lj322
	mvngt	r1,#4
	strgt	r1,[r0]
# [226] if s5y<40 then s5dy:=5;
	ldr	r0,.Lj321
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r1,.Lj322
	movlt	r0,#5
	strlt	r0,[r1]
# [227] lpoke($2060060,s5x+65536*s5y);
	ldr	r0,.Lj321
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj310
	mov	r1,r0,lsl #16
	ldr	r0,[r2]
	add	r1,r0,r1
# Rescheduled
	ldr	r0,.Lj334
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [229] s6x:=s6x+s6dx;
	ldr	r0,.Lj335
# Rescheduled
	ldr	r1,.Lj336
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj335
	add	r1,r0,r2
# Rescheduled
# [230] if s6x>1920-192 then s6dx:=-6;
	ldr	r0,.Lj335
	str	r1,[r3]
	ldr	r0,[r0]
	cmp	r0,#1728
# Rescheduled
	ldrgt	r0,.Lj336
	mvngt	r1,#5
	strgt	r1,[r0]
# [231] if s6x<64 then s6dx:=6;
	ldr	r0,.Lj335
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r1,.Lj336
	movlt	r0,#6
	strlt	r0,[r1]
# [232] s6y:=s6y+s6dy;
	ldr	r0,.Lj346
# Rescheduled
	ldr	r1,.Lj347
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj346
	add	r1,r0,r2
# Rescheduled
# [233] if s6y>1200-168 then s6dy:=-6;
	ldr	r0,.Lj346
	str	r1,[r3]
	ldr	r0,[r0]
	mov	r1,#8
	orr	r1,r1,#1024
	cmp	r0,r1
# Rescheduled
	ldrgt	r1,.Lj347
	mvngt	r0,#5
	strgt	r0,[r1]
# [234] if s6y<40 then s6dy:=6;
	ldr	r0,.Lj346
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r1,.Lj347
	movlt	r0,#6
	strlt	r0,[r1]
# [235] lpoke($2060068,s6x+65536*s6y);
	ldr	r0,.Lj346
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj335
	mov	r1,r0,lsl #16
	ldr	r0,[r2]
	add	r1,r0,r1
# Rescheduled
	ldr	r0,.Lj359
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [237] s7x:=s7x+s7dx;
	ldr	r0,.Lj360
# Rescheduled
	ldr	r1,.Lj361
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj360
	add	r0,r0,r2
# Rescheduled
# [238] if s7x>1920-192 then s7dx:=-7;
	ldr	r1,.Lj360
	str	r0,[r3]
	ldr	r0,[r1]
	cmp	r0,#1728
# Rescheduled
	ldrgt	r0,.Lj361
	mvngt	r1,#6
	strgt	r1,[r0]
# [239] if s7x<64 then s7dx:=7;
	ldr	r0,.Lj360
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r1,.Lj361
	movlt	r0,#7
	strlt	r0,[r1]
# [240] s7y:=s7y+s7dy;
	ldr	r0,.Lj371
# Rescheduled
	ldr	r1,.Lj372
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj371
	add	r0,r0,r2
# Rescheduled
# [241] if s7y>1200-168 then s7dy:=-7;
	ldr	r1,.Lj371
	str	r0,[r3]
	ldr	r1,[r1]
	mov	r0,#8
	orr	r0,r0,#1024
	cmp	r1,r0
# Rescheduled
	ldrgt	r1,.Lj372
	mvngt	r0,#6
	strgt	r0,[r1]
# [242] if s7y<40 then s7dy:=7;
	ldr	r0,.Lj371
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r1,.Lj372
	movlt	r0,#7
	strlt	r0,[r1]
# [243] lpoke($2060070,s7x+65536*s7y);
	ldr	r0,.Lj371
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj360
	mov	r2,r0,lsl #16
	ldr	r0,[r1]
	add	r1,r0,r2
# Rescheduled
	ldr	r0,.Lj384
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [245] s8x:=s8x+s8dx;
	ldr	r0,.Lj385
# Rescheduled
	ldr	r1,.Lj386
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj385
	add	r1,r0,r2
# Rescheduled
# [246] if s8x>1920-64 then s8dx:=-8;
	ldr	r0,.Lj385
	str	r1,[r3]
	ldr	r0,[r0]
	cmp	r0,#1856
# Rescheduled
	ldrgt	r1,.Lj386
	mvngt	r0,#7
	strgt	r0,[r1]
# [247] if s8x<64 then s8dx:=8;
	ldr	r0,.Lj385
	ldr	r0,[r0]
	cmp	r0,#64
# Rescheduled
	ldrlt	r0,.Lj386
	movlt	r1,#8
	strlt	r1,[r0]
# [248] s8y:=s8y+s8dy;
	ldr	r0,.Lj396
# Rescheduled
	ldr	r1,.Lj397
	ldr	r2,[r0]
	ldr	r0,[r1]
# Rescheduled
	ldr	r3,.Lj396
	add	r1,r0,r2
# Rescheduled
# [249] if s8y>1200-40 then s8dy:=-8;
	ldr	r0,.Lj396
	str	r1,[r3]
	ldr	r0,[r0]
	mov	r1,#136
	orr	r1,r1,#1024
	cmp	r0,r1
# Rescheduled
	ldrgt	r0,.Lj397
	mvngt	r1,#7
	strgt	r1,[r0]
# [250] if s8y<40 then s8dy:=8;
	ldr	r0,.Lj396
	ldr	r0,[r0]
	cmp	r0,#40
# Rescheduled
	ldrlt	r1,.Lj397
	movlt	r0,#8
	strlt	r0,[r1]
# [251] lpoke($2060078,s8x+65536*s8y);
	ldr	r0,.Lj396
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj385
	mov	r1,r0,lsl #16
	ldr	r0,[r2]
	add	r1,r0,r1
# Rescheduled
	ldr	r0,.Lj409
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
# [253] if (peek($206002b) and 1)>0 then
	ldr	r0,.Lj410
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#1
	cmp	r0,#0
	ble	.Lj412
# [255] box(64,960,1000,32,147);
	mov	r0,#147
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#1000
	mov	r1,#960
	mov	r0,#64
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [256] if (peek($206002b) and 2)=0 then outtextxyz(64,960,'Pressed key '+char(peek($2060028))+', key code '+inttohex(lpeek($2060028),8),152,2,2)
	ldr	r0,.Lj410
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
# Peephole OpCmp2OpS done
	ands	r0,r0,#2
	bne	.Lj415
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	ldr	r2,.Lj416
# Peephole LdrMov2Ldr removed superfluous mov
# Rescheduled
	ldr	r0,.Lj417
	str	r2,[r11, #-184]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0
	mov	r2,#0
	sub	r0,r11,#188
	bl	fpc_char_to_ansistr
	ldr	r1,[r11, #-188]
# Rescheduled
	ldr	r0,.Lj418
	str	r1,[r11, #-180]
	mov	r1,r0
# Rescheduled
	ldr	r0,.Lj417
	str	r1,[r11, #-176]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r2,#0
# Peephole MovMov2Mov removed superfluous mov
	mov	r1,r0
	mov	r3,#8
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOHEX$QWORD$LONGINT$$ANSISTRING
	ldr	r0,[r11, #-192]
	str	r0,[r11, #-172]
	sub	r1,r11,#184
	mov	r3,#0
	mov	r2,#3
	sub	r0,r11,#168
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-168]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#152
	mov	r1,#960
	mov	r0,#64
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	b	.Lj420
.Lj415:
# [257] else outtextxyz(64,960,'Pressed special key '+inttostr(peek($2060028))+', key code '+inttohex(lpeek($2060028),8),152,2,2);
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	ldr	r2,.Lj421
# Peephole LdrMov2Ldr removed superfluous mov
# Rescheduled
	ldr	r0,.Lj417
	str	r2,[r11, #-184]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0
	sub	r0,r11,#192
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r1,[r11, #-192]
# Rescheduled
	ldr	r2,.Lj418
	str	r1,[r11, #-180]
# Peephole LdrMov2Ldr removed superfluous mov
# Rescheduled
	ldr	r0,.Lj417
	str	r2,[r11, #-176]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r2,#0
# Peephole MovMov2Mov removed superfluous mov
	mov	r1,r0
	mov	r3,#8
	sub	r0,r11,#188
	bl	SYSUTILS_$$_INTTOHEX$QWORD$LONGINT$$ANSISTRING
	ldr	r0,[r11, #-188]
	str	r0,[r11, #-172]
	sub	r1,r11,#184
	mov	r3,#0
	mov	r2,#3
	sub	r0,r11,#168
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-168]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r3,#152
	mov	r1,#960
	mov	r0,#64
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj420:
# [258] poke($206002b,0);
	ldr	r0,.Lj410
	mov	r1,#0
	bl	RETROMALINA_$$_POKE$LONGINT$BYTE
.Lj412:
# [260] fps:=(100000000*aa) div (clockgettotal-b64);
	ldr	r0,.Lj196
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj428
	ldr	r0,.Lj196
	ldr	r0,[r0]
	blx	r0
	b	.Lj430
.Lj428:
	mov	r0,#0
	mov	r1,#0
.Lj430:
	ldr	r2,[r11, #-228]
	subs	r0,r0,r2
	ldr	r2,[r11, #-224]
	sbc	r1,r1,r2
# Peephole DataMov2Data removed superfluous mov
# Peephole DataMov2Data removed superfluous mov
	ldr	r2,[r11, #-220]
	ldr	r6,[r11, #-216]
	ldr	r12,.Lj431
	mov	r3,#0
	mul	r5,r2,r3
	umull	r2,r3,r12,r2
	mla	r5,r12,r6,r5
	add	r3,r5,r3
	bl	fpc_div_int64
	mov	r10,r0
	mov	r9,r1
# [262] box(600,600,950,32,147) ;
	mov	r0,#147
	str	r0,[r13]
	mov	r2,#182
	orr	r2,r2,#768
	mov	r3,#32
	mov	r1,#600
	mov	r0,#600
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [263] a:= lpeek($3F007800) ;
	mov	r0,#1056964608
	orr	r0,r0,#30720
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r8,r0
# Peephole OpCmp2OpS done
# [264] if (a and 2)<>0
	ands	r0,r8,#2
	beq	.Lj433
# [266] il:=fileread(fh,buf[0],3840);
	ldr	r1,.Lj434
# Peephole LdrMov2Ldr removed superfluous mov
	ldr	r0,[r11, #-208]
	mov	r2,#3840
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
	str	r0,[r11, #-236]
# Peephole StrLdr2StrMov 1 done
# [267] if il<>3840 then begin fileseek(fh,44,0);  fileread(fh,buf[0],3840); end;
	cmp	r0,#3840
	beq	.Lj436
	ldr	r0,[r11, #-208]
	mov	r2,#0
	mov	r1,#44
	bl	SYSUTILS_$$_FILESEEK$LONGINT$LONGINT$LONGINT$$LONGINT
	ldr	r1,.Lj434
# Peephole LdrMov2Ldr removed superfluous mov
	ldr	r0,[r11, #-208]
	mov	r2,#3840
	bl	SYSUTILS_$$_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
.Lj436:
# [268] if lpeek($3f00781c)=$c4000000 then for i:=0 to 1919 do lpoke($0205a000+4*i, (32768+buf[i]) div 12)
	ldr	r0,.Lj438
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	cmp	r0,#-1006632960
	bne	.Lj440
	mov	r0,#0
	str	r0,[r11, #-232]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-232]
	.balign 4
.Lj443:
	ldr	r0,[r11, #-232]
	add	r0,r0,#1
	str	r0,[r11, #-232]
# Rescheduled
	ldr	r1,.Lj434
# Peephole StrLdr2StrMov 2 done
	mov	r2,r0
	mov	r0,r2,lsl #1
	ldrsh	r0,[r0, r1]
# tcgarm.a_mul_reg_reg_pair called
# Rescheduled
# Rescheduled
	ldr	r3,.Lj445
	add	r0,r0,#32768
	smull	r2,r1,r0,r3
# Peephole FoldShiftProcess done
	mov	r3,r0,lsr #31
# Rescheduled
	ldr	r0,[r11, #-232]
	add	r1,r3,r1,asr #1
	mov	r2,r0,lsl #2
	add	r0,r2,#33554432
	add	r0,r0,#368640
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r0,#127
# Rescheduled
	ldr	r1,[r11, #-232]
	orr	r0,r0,#1792
	cmp	r1,r0
	blt	.Lj443
	b	.Lj446
.Lj440:
# [269] else for i:=0 to 1919 do lpoke($0205c000+4*i,(32768+buf[i]) div 12) ;
	mov	r0,#0
	str	r0,[r11, #-232]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-232]
	.balign 4
.Lj449:
	ldr	r0,[r11, #-232]
	add	r0,r0,#1
	str	r0,[r11, #-232]
# Rescheduled
	ldr	r2,.Lj434
# Peephole StrLdr2StrMov 2 done
	mov	r1,r0
	mov	r0,r1,lsl #1
	ldrsh	r0,[r0, r2]
# tcgarm.a_mul_reg_reg_pair called
# Rescheduled
# Rescheduled
	ldr	r3,.Lj445
	add	r0,r0,#32768
	smull	r2,r1,r0,r3
# Peephole FoldShiftProcess done
	mov	r3,r0,lsr #31
# Rescheduled
	ldr	r0,[r11, #-232]
	add	r1,r3,r1,asr #1
	mov	r2,r0,lsl #2
	add	r0,r2,#33554432
	add	r0,r0,#376832
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	mov	r1,#127
# Rescheduled
	ldr	r0,[r11, #-232]
	orr	r1,r1,#1792
	cmp	r0,r1
	blt	.Lj449
.Lj446:
# [270] lpoke($3F007800,3);    inc(aa);   CleanDataCacheRange($0205a000,$8000);  end;
	mov	r0,#1056964608
	orr	r0,r0,#30720
	mov	r1,#3
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	ldr	r0,[r11, #-220]
	adds	r0,r0,#1
	str	r0,[r11, #-220]
	ldr	r0,[r11, #-216]
	adc	r0,r0,#0
	str	r0,[r11, #-216]
	mov	r3,#33554432
# Rescheduled
	ldr	r0,.Lj452
# Rescheduled
	ldr	r0,[r0]
	orr	r3,r3,#368640
	cmp	r0,#0
	beq	.Lj454
	mov	r1,#32768
# Rescheduled
	ldr	r2,.Lj452
# Rescheduled
	ldr	r2,[r2]
	mov	r0,r3
	blx	r2
.Lj454:
.Lj433:
# [273] for i:=59 downto 1 do times[i]:=times[i-1];
	mov	r0,#59
	str	r0,[r11, #-232]
# Peephole StrLdr2StrMov 1 done
	add	r0,r0,#1
	str	r0,[r11, #-232]
	.balign 4
.Lj458:
# Rescheduled
# Rescheduled
	ldr	r1,[r11, #-232]
	ldr	r12,.Lj459
	sub	r1,r1,#1
	str	r1,[r11, #-232]
# Peephole LdrMov2Ldr removed superfluous mov
# Peephole StrLdr2StrMov 2 done
	mov	r0,r1
	mov	r1,r0,lsl #3
	ldr	r0,[r11, #-232]
	mov	r3,r0,lsl #3
	add	r0,r1,r12
# Peephole Add/SubLdr2Ldr done
	ldr	r2,[r0, #-8]
	ldr	r1,[r0, #-4]
	add	r0,r3,r12
	str	r2,[r0]
	str	r1,[r0, #4]
	ldr	r0,[r11, #-232]
	cmp	r0,#1
	bgt	.Lj458
# [274] times[0]:=ts;
	ldr	r0,.Lj460
	ldr	r2,[r0]
# Rescheduled
	ldr	r1,.Lj459
	ldr	r0,[r0, #4]
	str	r2,[r1]
	str	r0,[r1, #4]
# [275] a64:=0;
	mov	r7,#0
	mov	r4,#0
# [276] for i:=0 to 59 do a64+=times[i];
	mov	r0,#0
	str	r0,[r11, #-232]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-232]
	.balign 4
.Lj464:
	ldr	r0,[r11, #-232]
	add	r0,r0,#1
	str	r0,[r11, #-232]
# Rescheduled
	ldr	r1,.Lj459
# Peephole StrLdr2StrMov 1 done
	mov	r2,r0,lsl #3
# Rescheduled
	ldr	r0,.Lj466
	ldr	r1,[r2, r1]
	ldr	r0,[r2, r0]
	adds	r7,r7,r1
	adc	r4,r4,r0
# Peephole DataMov2Data removed superfluous mov
# Peephole DataMov2Data removed superfluous mov
	ldr	r0,[r11, #-232]
	cmp	r0,#59
	blt	.Lj464
# [277] a64:=a64 div 60;
	mov	r3,r4
	mov	r2,r7
	mov	r1,#0
	mov	r0,#60
	bl	fpc_div_int64
	mov	r7,r0
	mov	r4,r1
# [278] fps:=lpeek($2060000);
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r9,#0
	mov	r10,r0
# Peephole MovMov2Mov removed superfluous mov
# [279] fps:=100000000*fps;
	mov	r1,r10
	mov	r3,r9
	ldr	r12,.Lj431
	mov	r0,#0
	mul	r2,r1,r0
	umull	r0,r1,r12,r1
	mla	r2,r12,r3,r2
	add	r9,r2,r1
	mov	r10,r0
# Rescheduled
# [280] fps:=fps div (clockgettotal-b64);
	ldr	r0,.Lj196
# Peephole DataMov2Data removed superfluous mov
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj470
	ldr	r0,.Lj196
	ldr	r0,[r0]
	blx	r0
	b	.Lj472
.Lj470:
	mov	r0,#0
	mov	r1,#0
.Lj472:
	ldr	r2,[r11, #-228]
	subs	r0,r0,r2
	ldr	r2,[r11, #-224]
	sbc	r1,r1,r2
# Peephole DataMov2Data removed superfluous mov
# Peephole DataMov2Data removed superfluous mov
	mov	r3,r9
	mov	r2,r10
	bl	fpc_div_int64
	mov	r10,r0
# Rescheduled
# [281] tt:=clockgettotal;
	ldr	r0,.Lj196
# Rescheduled
	ldr	r0,[r0]
	mov	r9,r1
	cmp	r0,#0
	beq	.Lj475
	ldr	r0,.Lj196
	ldr	r0,[r0]
	blx	r0
	mov	r2,r0
	mov	r0,r1
	b	.Lj477
.Lj475:
	mov	r2,#0
	mov	r0,#0
.Lj477:
	str	r2,[r11, #-204]
	str	r0,[r11, #-200]
# [282] box(600,320,1000,512,147);
	mov	r0,#147
	str	r0,[r13]
	mov	r3,#512
	mov	r2,#1000
	mov	r1,#320
	mov	r0,#600
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [283] tt:=clockgettotal-tt;
	ldr	r0,.Lj196
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj480
	ldr	r0,.Lj196
	ldr	r0,[r0]
	blx	r0
	mov	r2,r0
	mov	r3,r1
	b	.Lj482
.Lj480:
	mov	r2,#0
	mov	r3,#0
.Lj482:
	ldr	r0,[r11, #-204]
# Rescheduled
	ldr	r1,[r11, #-200]
	subs	r2,r2,r0
	sbc	r0,r3,r1
	str	r2,[r11, #-204]
	str	r0,[r11, #-200]
# [284] outtextxyz(1028,320,inttostr(lpeek($2060000)),26,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r0,#33554432
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r2,#0
# Peephole MovMov2Mov removed superfluous mov
	mov	r1,r0
	sub	r0,r11,#168
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r2,[r11, #-168]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r3,#26
	mov	r1,#320
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [285] outtextxyz(600,320,'Frames generated: ', 26,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj483
	mov	r3,#26
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#320
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [286] outtextxyz(1028,360,inttostr(a64),42,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r2,r4
	mov	r1,r7
	sub	r0,r11,#168
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r2,[r11, #-168]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r3,#42
	mov	r1,#360
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [287] outtextxyz(600,360,'us per frame: ',42,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj484
	mov	r3,#42
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#360
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [288] outtextxyz(600,400,'fps: ',58,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj485
	mov	r3,#58
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#400
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [289] outtextxyz(1028,400,floattostr(fps/100)+' fps ',58,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	mov	r1,r9
	mov	r0,r10
	bl	fpc_int64_to_double
	vmov	d1,r0,r1
	b	.Lj521
.Lj177:
	.long	.Ld1
.Lj178:
	.long	_$PROJECT1$_Ld2
.Lj179:
	.long	.Ld3
.Lj180:
	.long	.Ld4
.Lj181:
	.long	33947656
.Lj182:
	.long	33947680
.Lj183:
	.long	33947684
.Lj184:
	.long	.Ld5
.Lj185:
	.long	.Ld6
.Lj186:
	.long	.Ld7
.Lj193:
	.long	.Ld8
.Lj194:
	.long	.Ld9
.Lj195:
	.long	33947660
.Lj196:
	.long	U_$PLATFORM_$$_CLOCKGETTOTALHANDLER
.Lj201:
	.long	.Ld10
.Lj210:
	.long	U_$P$PROJECT1_$$_S1X
.Lj211:
	.long	U_$P$PROJECT1_$$_S1DX
.Lj221:
	.long	U_$P$PROJECT1_$$_S1Y
.Lj222:
	.long	U_$P$PROJECT1_$$_S1DY
.Lj234:
	.long	33947712
.Lj235:
	.long	U_$P$PROJECT1_$$_S2X
.Lj236:
	.long	U_$P$PROJECT1_$$_S2DX
.Lj246:
	.long	U_$P$PROJECT1_$$_S2Y
.Lj247:
	.long	U_$P$PROJECT1_$$_S2DY
.Lj259:
	.long	33947720
.Lj260:
	.long	U_$P$PROJECT1_$$_S3X
.Lj261:
	.long	U_$P$PROJECT1_$$_S3DX
.Lj271:
	.long	U_$P$PROJECT1_$$_S3Y
.Lj272:
	.long	U_$P$PROJECT1_$$_S3DY
.Lj284:
	.long	33947728
.Lj285:
	.long	U_$P$PROJECT1_$$_S4X
.Lj286:
	.long	U_$P$PROJECT1_$$_S4DX
.Lj296:
	.long	U_$P$PROJECT1_$$_S4Y
.Lj297:
	.long	U_$P$PROJECT1_$$_S4DY
.Lj309:
	.long	33947736
.Lj310:
	.long	U_$P$PROJECT1_$$_S5X
.Lj311:
	.long	U_$P$PROJECT1_$$_S5DX
.Lj321:
	.long	U_$P$PROJECT1_$$_S5Y
.Lj322:
	.long	U_$P$PROJECT1_$$_S5DY
.Lj334:
	.long	33947744
.Lj335:
	.long	U_$P$PROJECT1_$$_S6X
.Lj336:
	.long	U_$P$PROJECT1_$$_S6DX
.Lj346:
	.long	U_$P$PROJECT1_$$_S6Y
.Lj347:
	.long	U_$P$PROJECT1_$$_S6DY
.Lj359:
	.long	33947752
.Lj360:
	.long	U_$P$PROJECT1_$$_S7X
.Lj361:
	.long	U_$P$PROJECT1_$$_S7DX
.Lj371:
	.long	U_$P$PROJECT1_$$_S7Y
.Lj372:
	.long	U_$P$PROJECT1_$$_S7DY
.Lj384:
	.long	33947760
.Lj385:
	.long	U_$P$PROJECT1_$$_S8X
.Lj386:
	.long	U_$P$PROJECT1_$$_S8DX
.Lj396:
	.long	U_$P$PROJECT1_$$_S8Y
.Lj397:
	.long	U_$P$PROJECT1_$$_S8DY
.Lj409:
	.long	33947768
.Lj410:
	.long	33947691
.Lj416:
	.long	.Ld11
.Lj417:
	.long	33947688
.Lj418:
	.long	.Ld12
.Lj421:
	.long	.Ld13
.Lj431:
	.long	100000000
.Lj434:
	.long	U_$P$PROJECT1_$$_BUF
.Lj438:
	.long	1056995356
.Lj445:
	.long	715827883
.Lj452:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj459:
	.long	U_$P$PROJECT1_$$_TIMES
.Lj460:
	.long	U_$RETROMALINA_$$_TS
.Lj466:
	.long	U_$P$PROJECT1_$$_TIMES+4
.Lj483:
	.long	.Ld14
.Lj484:
	.long	.Ld15
.Lj485:
	.long	.Ld16
.Lj521:
	vldr	d0,.Lj486
	vmul.f64	d0,d1,d0
	vmov	r1,r2,d0
	sub	r0,r11,#196
	bl	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
	ldr	r1,[r11, #-196]
# Rescheduled
	ldr	r2,.Lj487
	mov	r3,#0
# Peephole LdrMov2Ldr removed superfluous mov
	sub	r0,r11,#168
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-168]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r3,#58
	mov	r1,#400
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [290] outtextxyz(600,440,'us for 1000x512 pixel box:',74,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj488
	mov	r3,#74
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#440
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [291] outtextxyz(1028,440,inttostr(tt),74,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r2,[r11, #-200]
	ldr	r1,[r11, #-204]
	sub	r0,r11,#196
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r2,[r11, #-196]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r3,#74
	mov	r1,#440
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [292] outtextxyz(600,480,'CPU temperature: ',90,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj489
	mov	r3,#90
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#480
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [293] outtextxyz(600,520, 'Audio file handle: ',108,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj490
	mov	r3,#108
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#520
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [294] outtextxyz(1028,520,inttostr(fh),108,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r1,[r11, #-208]
	sub	r0,r11,#196
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-196]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r3,#108
	mov	r1,#520
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [295] outtextxyz(600,560, 'DMA control block: ',122,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj491
	mov	r3,#122
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#560
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [296] outtextxyz(1028,560, inttohex(lpeek($3f00781c),8),122,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r2,#2
# Rescheduled
	ldr	r0,.Lj492
	str	r2,[r13]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r2,#0
# Peephole MovMov2Mov removed superfluous mov
	mov	r1,r0
	mov	r3,#8
	sub	r0,r11,#196
	bl	SYSUTILS_$$_INTTOHEX$QWORD$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-196]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r3,#122
	mov	r1,#560
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [297] outtextxyz(600,600, 'Bytes loaded from file:',138,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj493
	mov	r3,#138
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#600
	mov	r0,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [298] outtextxyz(1028,600, inttostr(il),138,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r1,[r11, #-236]
	sub	r0,r11,#196
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-196]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r3,#138
	mov	r1,#600
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [302] a:= TemperatureGetCurrent(0) div 1000;
	ldr	r0,.Lj494
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj496
# Rescheduled
	ldr	r1,.Lj494
# Rescheduled
	ldr	r1,[r1]
	mov	r0,#0
	blx	r1
	b	.Lj498
.Lj496:
	mov	r0,#0
.Lj498:
# tcgarm.a_mul_reg_reg_pair called
# Rescheduled
	ldr	r1,.Lj499
	umull	r0,r1,r0,r1
	mov	r8,r1,lsr #6
# Peephole MovMov2Mov removed superfluous mov
# [303] if a<75 then c:=184
	cmp	r8,#75
	movlt	r0,#184
	strlt	r0,[r11, #-212]
	blt	.Lj502
# [304] else if a<80 then c:=232
	cmp	r8,#80
	movlt	r0,#232
	strlt	r0,[r11, #-212]
	blt	.Lj505
# [305] else if a<85 then c:=24
	cmp	r8,#85
	movlt	r0,#24
	strlt	r0,[r11, #-212]
# [306] else c:=40;
	movge	r0,#40
	strge	r0,[r11, #-212]
.Lj505:
.Lj502:
# [307] outtextxyz(1028,480,inttostr(a)+'C',c,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	sub	r0,r11,#196
	bl	fpc_ansistr_decr_ref
	mov	r1,r8
	sub	r0,r11,#168
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r1,[r11, #-168]
# Rescheduled
	ldr	r2,.Lj509
	mov	r3,#0
# Peephole LdrMov2Ldr removed superfluous mov
	sub	r0,r11,#196
	bl	fpc_ansistr_concat
	ldr	r2,[r11, #-196]
	ldr	r3,[r11, #-212]
	mov	r0,#4
	orr	r0,r0,#1024
	mov	r1,#480
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [308] CleanDataCacheRange($3000000,2000000);
	mov	r1,#1998848
# Rescheduled
	ldr	r0,.Lj510
# Rescheduled
	ldr	r0,[r0]
	orr	r1,r1,#1152
	cmp	r0,#0
# Rescheduled
	ldrne	r2,.Lj510
# Rescheduled
	ldrne	r2,[r2]
	movne	r0,#50331648
	blxne	r2
# [310] outtextxyz(64,1040,'Press esc to reboot.',15,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj514
	mov	r3,#15
# Peephole LdrMov2Ldr removed superfluous mov
	mov	r1,#1040
	mov	r0,#64
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [311] until (peek($2060028)=27); //or (lpeek($60000)>1200);
	ldr	r0,.Lj515
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#27
	bne	.Lj202
# [314] sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [315] stopmachine;
	bl	RETROMALINA_$$_STOPMACHINE
# [316] Sleep(100);
	mov	r0,#100
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [318] systemrestart(0);
	ldr	r0,.Lj516
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj518
# Rescheduled
	ldr	r1,.Lj516
# Rescheduled
	ldr	r1,[r1]
	mov	r0,#0
	blx	r1
	b	.Lj520
.Lj518:
	mov	r0,#120
.Lj520:
.Lj172:
	bl	fpc_popaddrstack
	sub	r0,r11,#196
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#192
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#188
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#168
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-164]
	cmp	r0,#0
	blne	fpc_reraise
	bl	fpc_do_exit
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj486:
# value: 0d+1.0000000000000000E-002
	.byte	123,20,174,71,225,122,132,63
.Lj487:
	.long	.Ld17
.Lj488:
	.long	.Ld18
.Lj489:
	.long	.Ld19
.Lj490:
	.long	.Ld20
.Lj491:
	.long	.Ld21
.Lj492:
	.long	1056995356
.Lj493:
	.long	.Ld22
.Lj494:
	.long	U_$PLATFORM_$$_TEMPERATUREGETCURRENTHANDLER
.Lj499:
	.long	274877907
.Lj509:
	.long	.Ld23
.Lj510:
	.long	U_$PLATFORM_$$_CLEANDATACACHERANGEHANDLER
.Lj514:
	.long	.Ld24
.Lj515:
	.long	33947688
.Lj516:
	.long	U_$PLATFORM_$$_SYSTEMRESTARTHANDLER
.Le1:
	.size	main, .Le1 - main
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$p$project1_$$_il
	.balign 4
# [28] il,a,c,i,j:integer;
	.size U_$P$PROJECT1_$$_IL,4
U_$P$PROJECT1_$$_IL:
	.zero 4

.section .bss.n_u_$p$project1_$$_a
	.balign 4
	.size U_$P$PROJECT1_$$_A,4
U_$P$PROJECT1_$$_A:
	.zero 4

.section .bss.n_u_$p$project1_$$_c
	.balign 4
	.size U_$P$PROJECT1_$$_C,4
U_$P$PROJECT1_$$_C:
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

.section .bss.n_u_$p$project1_$$_s1x
	.balign 4
# [31] s1x,s1y,s2x,s2y,s3x,s3y,s4x,s4y,s5x,s5y,s6x,s6y,s7x,s7y,s8x,s8y:integer;
	.size U_$P$PROJECT1_$$_S1X,4
U_$P$PROJECT1_$$_S1X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s1y
	.balign 4
	.size U_$P$PROJECT1_$$_S1Y,4
U_$P$PROJECT1_$$_S1Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s2x
	.balign 4
	.size U_$P$PROJECT1_$$_S2X,4
U_$P$PROJECT1_$$_S2X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s2y
	.balign 4
	.size U_$P$PROJECT1_$$_S2Y,4
U_$P$PROJECT1_$$_S2Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s3x
	.balign 4
	.size U_$P$PROJECT1_$$_S3X,4
U_$P$PROJECT1_$$_S3X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s3y
	.balign 4
	.size U_$P$PROJECT1_$$_S3Y,4
U_$P$PROJECT1_$$_S3Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s4x
	.balign 4
	.size U_$P$PROJECT1_$$_S4X,4
U_$P$PROJECT1_$$_S4X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s4y
	.balign 4
	.size U_$P$PROJECT1_$$_S4Y,4
U_$P$PROJECT1_$$_S4Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s5x
	.balign 4
	.size U_$P$PROJECT1_$$_S5X,4
U_$P$PROJECT1_$$_S5X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s5y
	.balign 4
	.size U_$P$PROJECT1_$$_S5Y,4
U_$P$PROJECT1_$$_S5Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s6x
	.balign 4
	.size U_$P$PROJECT1_$$_S6X,4
U_$P$PROJECT1_$$_S6X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s6y
	.balign 4
	.size U_$P$PROJECT1_$$_S6Y,4
U_$P$PROJECT1_$$_S6Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s7x
	.balign 4
	.size U_$P$PROJECT1_$$_S7X,4
U_$P$PROJECT1_$$_S7X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s7y
	.balign 4
	.size U_$P$PROJECT1_$$_S7Y,4
U_$P$PROJECT1_$$_S7Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s8x
	.balign 4
	.size U_$P$PROJECT1_$$_S8X,4
U_$P$PROJECT1_$$_S8X:
	.zero 4

.section .bss.n_u_$p$project1_$$_s8y
	.balign 4
	.size U_$P$PROJECT1_$$_S8Y,4
U_$P$PROJECT1_$$_S8Y:
	.zero 4

.section .bss.n_u_$p$project1_$$_s1dx
	.balign 4
# [32] s1dx,s1dy,s2dx,s2dy,s3dx,s3dy,s4dx,s4dy,s5dx,s5dy,s6dx,s6dy,s7dx,s7dy,s8dx,s8dy:integer;
	.size U_$P$PROJECT1_$$_S1DX,4
U_$P$PROJECT1_$$_S1DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s1dy
	.balign 4
	.size U_$P$PROJECT1_$$_S1DY,4
U_$P$PROJECT1_$$_S1DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_s2dx
	.balign 4
	.size U_$P$PROJECT1_$$_S2DX,4
U_$P$PROJECT1_$$_S2DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s2dy
	.balign 4
	.size U_$P$PROJECT1_$$_S2DY,4
U_$P$PROJECT1_$$_S2DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_s3dx
	.balign 4
	.size U_$P$PROJECT1_$$_S3DX,4
U_$P$PROJECT1_$$_S3DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s3dy
	.balign 4
	.size U_$P$PROJECT1_$$_S3DY,4
U_$P$PROJECT1_$$_S3DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_s4dx
	.balign 4
	.size U_$P$PROJECT1_$$_S4DX,4
U_$P$PROJECT1_$$_S4DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s4dy
	.balign 4
	.size U_$P$PROJECT1_$$_S4DY,4
U_$P$PROJECT1_$$_S4DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_s5dx
	.balign 4
	.size U_$P$PROJECT1_$$_S5DX,4
U_$P$PROJECT1_$$_S5DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s5dy
	.balign 4
	.size U_$P$PROJECT1_$$_S5DY,4
U_$P$PROJECT1_$$_S5DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_s6dx
	.balign 4
	.size U_$P$PROJECT1_$$_S6DX,4
U_$P$PROJECT1_$$_S6DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s6dy
	.balign 4
	.size U_$P$PROJECT1_$$_S6DY,4
U_$P$PROJECT1_$$_S6DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_s7dx
	.balign 4
	.size U_$P$PROJECT1_$$_S7DX,4
U_$P$PROJECT1_$$_S7DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s7dy
	.balign 4
	.size U_$P$PROJECT1_$$_S7DY,4
U_$P$PROJECT1_$$_S7DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_s8dx
	.balign 4
	.size U_$P$PROJECT1_$$_S8DX,4
U_$P$PROJECT1_$$_S8DX:
	.zero 4

.section .bss.n_u_$p$project1_$$_s8dy
	.balign 4
	.size U_$P$PROJECT1_$$_S8DY,4
U_$P$PROJECT1_$$_S8DY:
	.zero 4

.section .bss.n_u_$p$project1_$$_times
	.balign 4
# [34] times:array[0..59] of int64;
	.size U_$P$PROJECT1_$$_TIMES,480
U_$P$PROJECT1_$$_TIMES:
	.zero 480

.section .bss.n_u_$p$project1_$$_aa
	.balign 4
# [35] aa,tt,fps,a64, b64:int64;
	.size U_$P$PROJECT1_$$_AA,8
U_$P$PROJECT1_$$_AA:
	.zero 8

.section .bss.n_u_$p$project1_$$_tt
	.balign 4
	.size U_$P$PROJECT1_$$_TT,8
U_$P$PROJECT1_$$_TT:
	.zero 8

.section .bss.n_u_$p$project1_$$_fps
	.balign 4
	.size U_$P$PROJECT1_$$_FPS,8
U_$P$PROJECT1_$$_FPS:
	.zero 8

.section .bss.n_u_$p$project1_$$_a64
	.balign 4
	.size U_$P$PROJECT1_$$_A64,8
U_$P$PROJECT1_$$_A64:
	.zero 8

.section .bss.n_u_$p$project1_$$_b64
	.balign 4
	.size U_$P$PROJECT1_$$_B64,8
U_$P$PROJECT1_$$_B64:
	.zero 8

.section .bss.n_u_$p$project1_$$_fh
	.balign 4
# [36] fh:integer;
	.size U_$P$PROJECT1_$$_FH,4
U_$P$PROJECT1_$$_FH:
	.zero 4

.section .bss.n_u_$p$project1_$$_buf
	.balign 2
# [37] buf:array[0..4095] of smallint;
	.size U_$P$PROJECT1_$$_BUF,8192
U_$P$PROJECT1_$$_BUF:
	.zero 8192

.section .data.n_INITFINAL
	.balign 4
.globl	INITFINAL
INITFINAL:
	.long	40,0
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
# [322] 
.Le2:
	.size	INITFINAL, .Le2 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 4
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	3
	.long	THREADVARLIST_$SYSTEM
	.long	THREADVARLIST_$DOS
	.long	THREADVARLIST_$CLASSES
.Le3:
	.size	FPC_THREADVARTABLES, .Le3 - FPC_THREADVARTABLES

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
.Le4:
	.size	FPC_RESOURCESTRINGTABLES, .Le4 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 4
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.long	0
.Le5:
	.size	FPC_WIDEINITTABLES, .Le5 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 4
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.long	0
.Le6:
	.size	FPC_RESSTRINITTABLES, .Le6 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 4
__fpc_ident:
	.ascii	"FPC 3.1.1 [2016/11/14] for arm - ultibo"
.Le7:
	.size	__fpc_ident, .Le7 - __fpc_ident

.section .data.n___stklen
	.balign 4
.globl	__stklen
__stklen:
	.long	262144
.Le8:
	.size	__stklen, .Le8 - __stklen

.section .data.n___heapsize
	.balign 4
.globl	__heapsize
__heapsize:
	.long	256
.Le9:
	.size	__heapsize, .Le9 - __heapsize

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
.Le10:
	.size	__fpc_valgrind, .Le10 - __fpc_valgrind
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,3
.Ld1:
	.ascii	"C:\\\000"
.Le11:
	.size	.Ld1$strlab, .Le11 - .Ld1$strlab

.section .rodata.n__$PROJECT1$_Ld2
	.balign 4
.globl	_$PROJECT1$_Ld2
_$PROJECT1$_Ld2:
	.ascii	"C:\\kernel7.img\000"
.Le12:
	.size	_$PROJECT1$_Ld2, .Le12 - _$PROJECT1$_Ld2

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,14
.Ld3:
	.ascii	"C:\\kernel7.img\000"
.Le13:
	.size	.Ld3$strlab, .Le13 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,16
.Ld4:
	.ascii	"C:\\kernel7_l.img\000"
.Le14:
	.size	.Ld4$strlab, .Le14 - .Ld4$strlab

.section .rodata.n_.Ld5
	.balign 4
.Ld5$strlab:
	.short	0,1
	.long	-1,46
.Ld5:
	.ascii	"The Ultibo Retromachine v. 0.03 --- 2016.11.19\000"
.Le15:
	.size	.Ld5$strlab, .Le15 - .Ld5$strlab

.section .rodata.n_.Ld6
	.balign 4
.Ld6$strlab:
	.short	0,1
	.long	-1,28
.Ld6:
	.ascii	"We have Atari ST - like font\000"
.Le16:
	.size	.Ld6$strlab, .Le16 - .Ld6$strlab

.section .rodata.n_.Ld7
	.balign 4
.Ld7$strlab:
	.short	0,1
	.long	-1,22
.Ld7:
	.ascii	"The font can be scaled\000"
.Le17:
	.size	.Ld7$strlab, .Le17 - .Ld7$strlab

.section .rodata.n_.Ld8
	.balign 4
.Ld8$strlab:
	.short	0,1
	.long	-1,38
.Ld8:
	.ascii	"We have Atari 8-bit - like pallette...\000"
.Le18:
	.size	.Ld8$strlab, .Le18 - .Ld8$strlab

.section .rodata.n_.Ld9
	.balign 4
.Ld9$strlab:
	.short	0,1
	.long	-1,39
.Ld9:
	.ascii	"... and 8 scalable 32x32 pixel sprites.\000"
.Le19:
	.size	.Ld9$strlab, .Le19 - .Ld9$strlab

.section .rodata.n_.Ld10
	.balign 4
.Ld10$strlab:
	.short	0,1
	.long	-1,8
.Ld10:
	.ascii	"c:\\1.wav\000"
.Le20:
	.size	.Ld10$strlab, .Le20 - .Ld10$strlab

.section .rodata.n_.Ld11
	.balign 4
.Ld11$strlab:
	.short	0,1
	.long	-1,12
.Ld11:
	.ascii	"Pressed key \000"
.Le21:
	.size	.Ld11$strlab, .Le21 - .Ld11$strlab

.section .rodata.n_.Ld12
	.balign 4
.Ld12$strlab:
	.short	0,1
	.long	-1,11
.Ld12:
	.ascii	", key code \000"
.Le22:
	.size	.Ld12$strlab, .Le22 - .Ld12$strlab

.section .rodata.n_.Ld13
	.balign 4
.Ld13$strlab:
	.short	0,1
	.long	-1,20
.Ld13:
	.ascii	"Pressed special key \000"
.Le23:
	.size	.Ld13$strlab, .Le23 - .Ld13$strlab

.section .rodata.n_.Ld14
	.balign 4
.Ld14$strlab:
	.short	0,1
	.long	-1,18
.Ld14:
	.ascii	"Frames generated: \000"
.Le24:
	.size	.Ld14$strlab, .Le24 - .Ld14$strlab

.section .rodata.n_.Ld15
	.balign 4
.Ld15$strlab:
	.short	0,1
	.long	-1,14
.Ld15:
	.ascii	"us per frame: \000"
.Le25:
	.size	.Ld15$strlab, .Le25 - .Ld15$strlab

.section .rodata.n_.Ld16
	.balign 4
.Ld16$strlab:
	.short	0,1
	.long	-1,5
.Ld16:
	.ascii	"fps: \000"
.Le26:
	.size	.Ld16$strlab, .Le26 - .Ld16$strlab

.section .rodata.n_.Ld17
	.balign 4
.Ld17$strlab:
	.short	0,1
	.long	-1,5
.Ld17:
	.ascii	" fps \000"
.Le27:
	.size	.Ld17$strlab, .Le27 - .Ld17$strlab

.section .rodata.n_.Ld18
	.balign 4
.Ld18$strlab:
	.short	0,1
	.long	-1,26
.Ld18:
	.ascii	"us for 1000x512 pixel box:\000"
.Le28:
	.size	.Ld18$strlab, .Le28 - .Ld18$strlab

.section .rodata.n_.Ld19
	.balign 4
.Ld19$strlab:
	.short	0,1
	.long	-1,17
.Ld19:
	.ascii	"CPU temperature: \000"
.Le29:
	.size	.Ld19$strlab, .Le29 - .Ld19$strlab

.section .rodata.n_.Ld20
	.balign 4
.Ld20$strlab:
	.short	0,1
	.long	-1,19
.Ld20:
	.ascii	"Audio file handle: \000"
.Le30:
	.size	.Ld20$strlab, .Le30 - .Ld20$strlab

.section .rodata.n_.Ld21
	.balign 4
.Ld21$strlab:
	.short	0,1
	.long	-1,19
.Ld21:
	.ascii	"DMA control block: \000"
.Le31:
	.size	.Ld21$strlab, .Le31 - .Ld21$strlab

.section .rodata.n_.Ld22
	.balign 4
.Ld22$strlab:
	.short	0,1
	.long	-1,23
.Ld22:
	.ascii	"Bytes loaded from file:\000"
.Le32:
	.size	.Ld22$strlab, .Le32 - .Ld22$strlab

.section .rodata.n_.Ld23
	.balign 4
.Ld23$strlab:
	.short	0,1
	.long	-1,1
.Ld23:
	.ascii	"C\000"
.Le33:
	.size	.Ld23$strlab, .Le33 - .Ld23$strlab

.section .rodata.n_.Ld24
	.balign 4
.Ld24$strlab:
	.short	0,1
	.long	-1,20
.Ld24:
	.ascii	"Press esc to reboot.\000"
.Le34:
	.size	.Ld24$strlab, .Le34 - .Ld24$strlab
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000001
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000001
RTTI_$P$PROJECT1_$$_def00000001:
	.byte	12,0,0,0
	.long	16,4
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le35:
	.size	RTTI_$P$PROJECT1_$$_def00000001, .Le35 - RTTI_$P$PROJECT1_$$_def00000001

.section .rodata.n_RTTI_$P$PROJECT1_$$_def00000002
	.balign 4
.globl	RTTI_$P$PROJECT1_$$_def00000002
RTTI_$P$PROJECT1_$$_def00000002:
	.byte	12,0,0,0
	.long	16,4
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le36:
	.size	RTTI_$P$PROJECT1_$$_def00000002, .Le36 - RTTI_$P$PROJECT1_$$_def00000002
# End asmlist al_rtti

