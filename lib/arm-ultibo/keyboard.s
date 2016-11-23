	.file "keyboard.pas"
# Begin asmlist al_procedures

.section .text.n_keyboard_$$_stopreportbuffer
	.balign 4
.globl	KEYBOARD_$$_STOPREPORTBUFFER
KEYBOARD_$$_STOPREPORTBUFFER:
# [keyboard.pas]
# [707] begin
# Rescheduled
# [708] report_buffer_active:=false;
	ldr	r0,.Lj5
	mov	r1,#0
	strb	r1,[r0]
# [709] end;
	bx	r14
.Lj5:
	.long	TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE
.Le0:
	.size	KEYBOARD_$$_STOPREPORTBUFFER, .Le0 - KEYBOARD_$$_STOPREPORTBUFFER

.section .text.n_keyboard_$$_startreportbuffer
	.balign 4
.globl	KEYBOARD_$$_STARTREPORTBUFFER
KEYBOARD_$$_STARTREPORTBUFFER:
# [713] begin
# Rescheduled
# [714] report_buffer_active:=true;
	ldr	r0,.Lj8
	mov	r1,#1
	strb	r1,[r0]
# [715] end;
	bx	r14
.Lj8:
	.long	TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE
.Le1:
	.size	KEYBOARD_$$_STARTREPORTBUFFER, .Le1 - KEYBOARD_$$_STARTREPORTBUFFER

.section .text.n_keyboard_$$_getkeyboardreport$$tkeyboardreport
	.balign 4
.globl	KEYBOARD_$$_GETKEYBOARDREPORT$$TKEYBOARDREPORT
KEYBOARD_$$_GETKEYBOARDREPORT$$TKEYBOARDREPORT:
# Var $result located in register r0
# Var i located in register r2
# [721] begin
# [722] if rb_end <>rb_start then begin
	ldr	r1,.Lj11
# Rescheduled
	ldr	r2,.Lj12
	ldr	r3,[r1]
	ldr	r1,[r2]
	cmp	r3,r1
	beq	.Lj14
# [723] for i:=0 to 7 do result[i]:=report_buffer[8*rb_start+i];
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj17:
# Rescheduled
	ldr	r1,.Lj12
	add	r2,r2,#1
	ldr	r1,[r1]
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r3,.Lj19
# [729] end;
	add	r1,r2,r1,lsl #3
	ldrb	r1,[r1, r3]
	strb	r1,[r0, r2]
	cmp	r2,#7
	blt	.Lj17
# [724] rb_start+=1;
	ldr	r1,.Lj12
	ldr	r1,[r1]
# Rescheduled
	ldr	r12,.Lj12
	add	r3,r1,#1
# Rescheduled
# [725] if rb_start>=63 then rb_start-=63;
	ldr	r1,.Lj12
	str	r3,[r12]
	ldr	r1,[r1]
	cmp	r1,#63
	blt	.Lj27
	ldr	r1,.Lj12
	ldr	r1,[r1]
# Rescheduled
	ldr	r3,.Lj12
	sub	r1,r1,#63
	str	r1,[r3]
	b	.Lj27
.Lj14:
# [728] for i:=0 to 7 do result[i]:=255;
	mov	r2,#0
	sub	r2,r2,#1
	.balign 4
.Lj30:
	add	r2,r2,#1
	mov	r1,#255
	strb	r1,[r0, r2]
	cmp	r2,#7
	blt	.Lj30
.Lj27:
	bx	r14
.Lj11:
	.long	TC_$KEYBOARD_$$_RB_END
.Lj12:
	.long	TC_$KEYBOARD_$$_RB_START
.Lj19:
	.long	U_$KEYBOARD_$$_REPORT_BUFFER
.Le2:
	.size	KEYBOARD_$$_GETKEYBOARDREPORT$$TKEYBOARDREPORT, .Le2 - KEYBOARD_$$_GETKEYBOARDREPORT$$TKEYBOARDREPORT

.section .text.n_keyboard_$$_translatescantochar$byte$byte$$char
	.balign 4
.globl	KEYBOARD_$$_TRANSLATESCANTOCHAR$BYTE$BYTE$$CHAR
KEYBOARD_$$_TRANSLATESCANTOCHAR$BYTE$BYTE$$CHAR:
# Var scan located in register r0
# Var shift located in register r1
# Var $result located in register r1
# [733] begin
# [734] if shift=0 then result:=USB_HID_BOOT_USAGE_ID[scan,0]
	cmp	r1,#0
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldreq	r2,.Lj35
	andeq	r1,r0,#255
	ldreqb	r1,[r2, r1, lsl #1]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
# [735] else result:=USB_HID_BOOT_USAGE_ID[scan,1];
	ldrne	r2,.Lj37
	andne	r0,r0,#255
	ldrneb	r1,[r2, r0, lsl #1]
# [736] end;
	mov	r0,r1
	bx	r14
.Lj35:
	.long	TC_$KEYBOARD_$$_USB_HID_BOOT_USAGE_ID
.Lj37:
	.long	TC_$KEYBOARD_$$_USB_HID_BOOT_USAGE_ID+1
.Le3:
	.size	KEYBOARD_$$_TRANSLATESCANTOCHAR$BYTE$BYTE$$CHAR, .Le3 - KEYBOARD_$$_TRANSLATESCANTOCHAR$BYTE$BYTE$$CHAR

.section .text.n_keyboard_$$_keyboardinit
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDINIT
KEYBOARD_$$_KEYBOARDINIT:
# Temps allocated between r13+0 and r13+128
# [775] begin
	stmfd	r13!,{r4,r14}
	sub	r13,r13,#128
# Var Status located in register r4
	mov	r0,#0
	str	r0,[r13, #124]
# Peephole MovStrMov done
	str	r0,[r13, #120]
	mov	r2,r13
	add	r1,r13,#12
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #116]
	cmp	r0,#0
	bne	.Lj40
# [778] if KeyboardInitialized then Exit;
	ldr	r0,.Lj44
	ldrb	r0,[r0]
	cmp	r0,#0
	bne	.Lj40
# [781] KEYBOARD_LOG_ENABLED:=(KEYBOARD_DEFAULT_LOG_LEVEL <> KEYBOARD_LOG_LEVEL_NONE);
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#4
	movne	r0,#1
	moveq	r0,#0
	ldr	r1,.Lj46
	strb	r0,[r1]
# Rescheduled
# [784] KeyboardTable:=nil;
	ldr	r1,.Lj47
	mov	r0,#0
	str	r0,[r1]
# [785] KeyboardTableLock:=CriticalSectionCreate;
	bl	THREADS_$$_CRITICALSECTIONCREATE$$LONGINT
# Rescheduled
	ldr	r1,.Lj48
	str	r0,[r1]
# Rescheduled
# [786] KeyboardTableCount:=0;
	ldr	r0,.Lj49
	mov	r1,#0
# Rescheduled
# [787] if KeyboardTableLock = INVALID_HANDLE_VALUE then
	ldr	r2,.Lj48
	str	r1,[r0]
	ldr	r1,[r2]
	mvn	r0,#0
	cmp	r1,r0
	bne	.Lj52
# [789] if KEYBOARD_LOG_ENABLED then KeyboardLogError(nil,'Failed to create keyboard table lock');
	ldr	r0,.Lj46
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj56
	movne	r0,#0
	blne	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
.Lj52:
# [793] KeyboardBuffer:=AllocMem(SizeOf(TKeyboardBuffer));
	mov	r0,#12
	orr	r0,r0,#6144
	bl	SYSTEM_$$_ALLOCMEM$LONGWORD$$POINTER
# Rescheduled
	ldr	r1,.Lj57
	str	r0,[r1]
# Rescheduled
# [794] KeyboardBufferLock:=INVALID_HANDLE_VALUE;
	ldr	r0,.Lj58
	mvn	r2,#0
# Rescheduled
# [795] if KeyboardBuffer = nil then
	ldr	r1,.Lj57
	str	r2,[r0]
	ldr	r0,[r1]
	cmp	r0,#0
	bne	.Lj61
# [797] if KEYBOARD_LOG_ENABLED then KeyboardLogError(nil,'Failed to allocate keyboard buffer');
	ldr	r0,.Lj46
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj66
	ldr	r1,.Lj65
	mov	r0,#0
	bl	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
	b	.Lj66
.Lj61:
# [802] KeyboardBuffer.Wait:=SemaphoreCreate(0);
	mov	r0,#0
	bl	THREADS_$$_SEMAPHORECREATE$LONGWORD$$LONGINT
# Rescheduled
	ldr	r1,.Lj57
	ldr	r2,[r1]
# Rescheduled
# [803] if KeyboardBuffer.Wait = INVALID_HANDLE_VALUE then
	ldr	r1,.Lj57
	str	r0,[r2]
	ldr	r0,[r1]
	ldr	r1,[r0]
	mvn	r0,#0
	cmp	r1,r0
	bne	.Lj70
# [805] if KEYBOARD_LOG_ENABLED then KeyboardLogError(nil,'Failed to create keyboard buffer semaphore');
	ldr	r0,.Lj46
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj74
	movne	r0,#0
	blne	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
.Lj70:
# [809] KeyboardBufferLock:=MutexCreate;
	ldr	r0,.Lj75
	ldr	r1,[r0]
	mov	r2,#0
	mov	r0,#0
	bl	THREADS_$$_MUTEXCREATEEX$BOOLEAN$LONGWORD$LONGWORD$$LONGINT
# Rescheduled
	ldr	r2,.Lj58
# Rescheduled
# [810] if KeyboardBufferLock = INVALID_HANDLE_VALUE then
	ldr	r1,.Lj58
	str	r0,[r2]
	ldr	r0,[r1]
	mvn	r1,#0
	cmp	r0,r1
	bne	.Lj79
# [812] if KEYBOARD_LOG_ENABLED then KeyboardLogError(nil,'Failed to create keyboard buffer lock');
	ldr	r0,.Lj46
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj83
	movne	r0,#0
	blne	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
.Lj79:
.Lj66:
# [817] USBKeyboardDriver:=USBDriverCreate;
	bl	USB_$$_USBDRIVERCREATE$$PUSBDRIVER
# Rescheduled
	ldr	r2,.Lj84
# Rescheduled
# [818] if USBKeyboardDriver <> nil then
	ldr	r1,.Lj84
	str	r0,[r2]
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj87
# [822] USBKeyboardDriver.Driver.DriverName:=USBKEYBOARD_DRIVER_NAME;
	ldr	r0,.Lj84
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj89
	add	r0,r0,#12
	bl	fpc_ansistr_assign
# [824] USBKeyboardDriver.DriverBind:=USBKeyboardDriverBind;
	ldr	r1,.Lj84
# Rescheduled
	ldr	r0,.Lj91
	ldr	r2,[r1]
# Rescheduled
# [825] USBKeyboardDriver.DriverUnbind:=USBKeyboardDriverUnbind;
	ldr	r1,.Lj84
	str	r0,[r2, #28]
# Rescheduled
	ldr	r0,.Lj93
	ldr	r2,[r1]
# Rescheduled
# [828] Status:=USBDriverRegister(USBKeyboardDriver);
	ldr	r1,.Lj84
	str	r0,[r2, #32]
	ldr	r0,[r1]
	bl	USB_$$_USBDRIVERREGISTER$PUSBDRIVER$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r4,r0
# [829] if Status <> USB_STATUS_SUCCESS then
	beq	.Lj101
# [831] if USB_LOG_ENABLED then USBLogError(nil,'Keyboard: Failed to register USB keyboard driver: ' + USBStatusToString(Status));
	ldr	r0,.Lj99
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj101
	add	r0,r13,#120
	bl	fpc_ansistr_decr_ref
	mov	r1,r4
	add	r0,r13,#124
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r2,[r13, #124]
# Rescheduled
	ldr	r1,.Lj100
	mov	r3,#0
	add	r0,r13,#120
	bl	fpc_ansistr_concat
	ldr	r1,[r13, #120]
	mov	r0,#0
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
	b	.Lj101
.Lj87:
# [836] if KEYBOARD_LOG_ENABLED then KeyboardLogError(nil,'Failed to create USB keyboard driver');
	ldr	r0,.Lj46
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj105
	movne	r0,#0
	blne	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
.Lj101:
# [840] ConsoleGetKeyHandler:=SysConsoleGetKey;
	ldr	r0,.Lj106
# Rescheduled
	ldr	r2,.Lj107
# Rescheduled
# [841] ConsolePeekKeyHandler:=SysConsolePeekKey;
	ldr	r1,.Lj108
	str	r0,[r2]
# Rescheduled
	ldr	r2,.Lj109
# Rescheduled
# [842] ConsoleReadCharHandler:=SysConsoleReadChar;
	ldr	r0,.Lj110
	str	r1,[r2]
# Rescheduled
	ldr	r2,.Lj111
# Rescheduled
# [843] ConsoleReadWideCharHandler:=SysConsoleReadWideChar;
	ldr	r1,.Lj112
	str	r0,[r2]
# Rescheduled
	ldr	r0,.Lj113
	str	r1,[r0]
# Rescheduled
# [845] KeyboardInitialized:=True;
	ldr	r1,.Lj44
	mov	r0,#1
	strb	r0,[r1]
.Lj40:
	bl	fpc_popaddrstack
# [846] end;
	add	r0,r13,#124
	bl	fpc_ansistr_decr_ref
	add	r0,r13,#120
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r13, #116]
	cmp	r0,#0
	blne	fpc_reraise
	add	r13,r13,#128
	ldmfd	r13!,{r4,r15}
.Lj44:
	.long	U_$KEYBOARD_$$_KEYBOARDINITIALIZED
.Lj45:
	.long	TC_$KEYBOARD_$$_KEYBOARD_DEFAULT_LOG_LEVEL
.Lj46:
	.long	U_$KEYBOARD_$$_KEYBOARD_LOG_ENABLED
.Lj47:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLE
.Lj48:
	.long	TC_$KEYBOARD_$$_KEYBOARDTABLELOCK
.Lj49:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLECOUNT
.Lj56:
	.long	.Ld9
.Lj57:
	.long	U_$KEYBOARD_$$_KEYBOARDBUFFER
.Lj58:
	.long	TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK
.Lj65:
	.long	.Ld10
.Lj74:
	.long	.Ld11
.Lj75:
	.long	TC_$GLOBALCONFIG_$$_MUTEX_DEFAULT_SPINCOUNT
.Lj83:
	.long	.Ld12
.Lj84:
	.long	U_$KEYBOARD_$$_USBKEYBOARDDRIVER
.Lj89:
	.long	.Ld13
.Lj91:
	.long	KEYBOARD_$$_USBKEYBOARDDRIVERBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD
.Lj93:
	.long	KEYBOARD_$$_USBKEYBOARDDRIVERUNBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD
.Lj99:
	.long	U_$USB_$$_USB_LOG_ENABLED
.Lj100:
	.long	.Ld14
.Lj105:
	.long	.Ld15
.Lj106:
	.long	KEYBOARD_$$_SYSCONSOLEGETKEY$CHAR$POINTER$$BOOLEAN
.Lj107:
	.long	U_$PLATFORM_$$_CONSOLEGETKEYHANDLER
.Lj108:
	.long	KEYBOARD_$$_SYSCONSOLEPEEKKEY$CHAR$POINTER$$BOOLEAN
.Lj109:
	.long	U_$PLATFORM_$$_CONSOLEPEEKKEYHANDLER
.Lj110:
	.long	KEYBOARD_$$_SYSCONSOLEREADCHAR$CHAR$POINTER$$BOOLEAN
.Lj111:
	.long	U_$PLATFORM_$$_CONSOLEREADCHARHANDLER
.Lj112:
	.long	KEYBOARD_$$_SYSCONSOLEREADWIDECHAR$WIDECHAR$POINTER$$BOOLEAN
.Lj113:
	.long	U_$PLATFORM_$$_CONSOLEREADWIDECHARHANDLER
.Le4:
	.size	KEYBOARD_$$_KEYBOARDINIT, .Le4 - KEYBOARD_$$_KEYBOARDINIT

.section .text.n_keyboard_$$_keyboardget$word$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDGET$WORD$$LONGWORD
KEYBOARD_$$_KEYBOARDGET$WORD$$LONGWORD:
# [863] begin
	stmfd	r13!,{r4,r5,r14}
	sub	r13,r13,#16
# Var KeyCode located in register r4
# Var $result located in register r5
# Var Count located at r13+0, size=OS_32
# Var Data located at r13+4, size=OS_NO
	mov	r4,r0
# [865] Result:=KeyboardReadEx(@Data,SizeOf(TKeyboardData),KEYBOARD_FLAG_NONE,Count);
	add	r0,r13,#4
	mov	r3,r13
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r5,r0
# Var $result located in register r5
# [866] while Result = ERROR_SUCCESS do
	b	.Lj118
	.balign 4
.Lj117:
# [869] if (Data.Modifiers and (KEYBOARD_KEYUP or KEYBOARD_DEADKEY)) = 0 then
	ldr	r0,[r13, #4]
# Peephole OpCmp2OpS done
	ands	r0,r0,#73728
# [871] KeyCode:=Data.KeyCode;
	ldreqh	r0,[r13, #10]
	streqh	r0,[r4]
# [872] Break;
	beq	.Lj119
# [876] Result:=KeyboardReadEx(@Data,SizeOf(TKeyboardData),KEYBOARD_FLAG_NONE,Count);
	add	r0,r13,#4
	mov	r3,r13
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r5,r0
.Lj118:
	cmp	r5,#0
	beq	.Lj117
.Lj119:
# [878] end;
	mov	r0,r5
	add	r13,r13,#16
	ldmfd	r13!,{r4,r5,r15}
.Le5:
	.size	KEYBOARD_$$_KEYBOARDGET$WORD$$LONGWORD, .Le5 - KEYBOARD_$$_KEYBOARDGET$WORD$$LONGWORD

.section .text.n_keyboard_$$_keyboardpeek$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDPEEK$$LONGWORD
KEYBOARD_$$_KEYBOARDPEEK$$LONGWORD:
# [888] begin
	stmfd	r13!,{r14}
	sub	r13,r13,#16
# Var $result located in register r0
# Var Count located at r13+0, size=OS_32
# Var Data located at r13+4, size=OS_NO
# [890] Result:=KeyboardReadEx(@Data,SizeOf(TKeyboardData),KEYBOARD_FLAG_NON_BLOCK or KEYBOARD_FLAG_PEEK_BUFFER,Count);
	add	r0,r13,#4
	mov	r3,r13
	mov	r2,#5
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Var $result located in register r0
# [891] end;
	add	r13,r13,#16
	ldmfd	r13!,{r15}
.Le6:
	.size	KEYBOARD_$$_KEYBOARDPEEK$$LONGWORD, .Le6 - KEYBOARD_$$_KEYBOARDPEEK$$LONGWORD

.section .text.n_keyboard_$$_keyboardread$pointer$longword$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDREAD$POINTER$LONGWORD$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDREAD$POINTER$LONGWORD$LONGWORD$$LONGWORD:
# [901] begin
	stmfd	r13!,{r14}
# Var Buffer located in register r0
# Var Size located in register r1
# Var Count located in register r3
# Var $result located in register r0
	mov	r3,r2
# Var Size located in register r1
# Var Buffer located in register r0
# [903] Result:=KeyboardReadEx(Buffer,Size,KEYBOARD_FLAG_NONE,Count);
	mov	r2,#0
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
# Var $result located in register r0
# [904] end;
	ldmfd	r13!,{r15}
.Le7:
	.size	KEYBOARD_$$_KEYBOARDREAD$POINTER$LONGWORD$LONGWORD$$LONGWORD, .Le7 - KEYBOARD_$$_KEYBOARDREAD$POINTER$LONGWORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboardreadex$pointer$longword$longword$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD:
# Temps allocated between r13+24 and r13+152
# [917] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Buffer located at r13+0, size=OS_32
# Var Size located at r13+4, size=OS_32
# Var Flags located at r13+8, size=OS_32
# Var Count located at r13+12, size=OS_32
# Var $result located at r13+16, size=OS_32
# Var Offset located at r13+20, size=OS_32
	str	r0,[r13, #-152]!
	str	r1,[r13, #4]
	str	r2,[r13, #8]
	str	r3,[r13, #12]
# [919] Result:=ERROR_INVALID_PARAMETER;
	mov	r1,#87
# Rescheduled
# [922] if Buffer = nil then Exit;
	ldr	r0,[r13]
	str	r1,[r13, #16]
	cmp	r0,#0
	beq	.Lj126
# [925] if Size < SizeOf(TKeyboardData) then Exit;
	ldr	r0,[r13, #4]
	cmp	r0,#12
	bcc	.Lj126
# [932] Count:=0;
	ldr	r0,[r13, #12]
	mov	r1,#0
	str	r1,[r0]
# [933] Offset:=0;
	mov	r0,#0
	str	r0,[r13, #20]
# [934] while Size >= SizeOf(TKeyboardData) do
	b	.Lj133
	.balign 4
.Lj132:
# [937] if ((Flags and KEYBOARD_FLAG_NON_BLOCK) <> 0) and (KeyboardBuffer.Count = 0) then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	ands	r0,r0,#1
	beq	.Lj136
	ldr	r0,.Lj138
	ldr	r0,[r0]
	ldr	r0,[r0, #8]
	cmp	r0,#0
	bne	.Lj136
# [939] if Count = 0 then Result:=ERROR_NO_MORE_ITEMS;
	ldr	r0,[r13, #12]
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj134
	mov	r0,#3
	orr	r0,r0,#256
	str	r0,[r13, #16]
# [940] Break;
	b	.Lj134
.Lj136:
# [944] if (Flags and KEYBOARD_FLAG_PEEK_BUFFER) <> 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	ands	r0,r0,#4
	beq	.Lj142
# [947] if MutexLock(KeyboardBufferLock) = ERROR_SUCCESS then
	ldr	r0,.Lj143
	ldr	r0,[r0]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj144
	cmp	r0,#0
	beq	.Lj144
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj149
	cmp	r2,r1
	bne	.Lj144
	ldr	r1,.Lj152
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj154
# Rescheduled
	ldr	r1,.Lj152
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj154:
.Lj144:
	cmp	r4,#0
	bne	.Lj157
# [949] try
	add	r2,r13,#24
	add	r1,r13,#36
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #140]
	cmp	r0,#0
	bne	.Lj158
# [950] if KeyboardBuffer.Count > 0 then
	ldr	r0,.Lj138
	ldr	r0,[r0]
	ldr	r0,[r0, #8]
	cmp	r0,#0
	bls	.Lj165
# Rescheduled
# [953] PKeyboardData(PtrUInt(Buffer) + Offset)^:=KeyboardBuffer.Buffer[KeyboardBuffer.Start];
	ldr	r1,[r13, #20]
	ldr	r0,[r13]
# Rescheduled
	ldr	r2,.Lj138
	add	r0,r1,r0
# Rescheduled
	ldr	r1,.Lj138
# Rescheduled
	ldr	r1,[r1]
	ldr	r3,[r2]
	ldr	r1,[r1, #4]
	mov	r2,#12
	mla	r2,r1,r2,r3
	add	r1,r2,#12
	ldr	r3,[r1]
	ldr	r2,[r1, #4]
	ldr	r1,[r1, #8]
	str	r3,[r0]
	str	r2,[r0, #4]
	str	r1,[r0, #8]
# [956] Inc(Count);
	ldr	r1,[r13, #12]
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [958] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
# [959] Break;
	b	.Lj161
.Lj165:
# [963] Result:=ERROR_NO_MORE_ITEMS;
	mov	r0,#3
	orr	r0,r0,#256
	str	r0,[r13, #16]
# [964] Break;
	b	.Lj161
.Lj158:
	bl	fpc_popaddrstack
# [968] MutexUnlock(KeyboardBufferLock);
	ldr	r0,.Lj143
	ldr	r0,[r0]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj170
	cmp	r0,#0
	beq	.Lj170
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj149
	cmp	r2,r1
	bne	.Lj170
	ldr	r1,.Lj178
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj180
# Rescheduled
	ldr	r1,.Lj178
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj180:
.Lj170:
	ldr	r0,[r13, #140]
	cmp	r0,#0
	beq	.Lj159
	cmp	r0,#3
	beq	.Lj134
	bl	fpc_reraise
.Lj161:
	mov	r0,#3
	str	r0,[r13, #140]
	b	.Lj158
.Lj159:
	b	.Lj183
.Lj157:
# [973] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [974] Exit;
	b	.Lj126
.Lj142:
# [980] if SemaphoreWait(KeyboardBuffer.Wait) = ERROR_SUCCESS then
	ldr	r0,.Lj138
	ldr	r0,[r0]
	ldr	r0,[r0]
	bl	THREADS_$$_SEMAPHOREWAIT$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj186
# [983] if MutexLock(KeyboardBufferLock) = ERROR_SUCCESS then
	ldr	r0,.Lj143
	ldr	r0,[r0]
	str	r0,[r13, #24]
	mov	r4,#87
# Peephole StrLdr2StrMov 1 done
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj188
	ldr	r0,[r13, #24]
	str	r0,[r13, #28]
# Peephole StrLdr2StrMov 1 done
	cmp	r0,#0
	beq	.Lj188
	ldr	r0,[r13, #28]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj149
	cmp	r0,r1
	bne	.Lj188
	ldr	r0,.Lj152
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj198
# Rescheduled
	ldr	r1,.Lj152
# Rescheduled
	ldr	r1,[r1]
	ldr	r0,[r13, #28]
	blx	r1
	mov	r4,r0
.Lj198:
.Lj188:
	cmp	r4,#0
	bne	.Lj201
# [985] try
	add	r2,r13,#24
	add	r1,r13,#36
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #140]
	cmp	r0,#0
	bne	.Lj202
# Rescheduled
# [987] PKeyboardData(PtrUInt(Buffer) + Offset)^:=KeyboardBuffer.Buffer[KeyboardBuffer.Start];
	ldr	r1,[r13, #20]
	ldr	r0,[r13]
# Rescheduled
	ldr	r2,.Lj138
	add	r0,r1,r0
# Rescheduled
	ldr	r1,.Lj138
# Rescheduled
	ldr	r1,[r1]
	ldr	r3,[r2]
	ldr	r1,[r1, #4]
	mov	r2,#12
	mla	r2,r1,r2,r3
	add	r1,r2,#12
	ldr	r12,[r1]
	ldr	r2,[r1, #4]
	ldr	r3,[r1, #8]
	str	r12,[r0]
	str	r2,[r0, #4]
# Rescheduled
# [990] KeyboardBuffer.Start:=(KeyboardBuffer.Start + 1) mod KEYBOARD_BUFFER_SIZE;
	ldr	r1,.Lj138
	str	r3,[r0, #8]
# Rescheduled
	ldr	r0,.Lj138
# Rescheduled
	ldr	r0,[r0]
	ldr	r2,[r1]
	ldr	r0,[r0, #4]
	add	r0,r0,#1
	mov	r1,r0,lsl #23
	mov	r1,r1,lsr #23
# Rescheduled
# [993] Dec(KeyboardBuffer.Count);
	ldr	r0,.Lj138
	str	r1,[r2, #4]
	ldr	r1,[r0]
	ldr	r0,[r1, #8]
	sub	r0,r0,#1
	str	r0,[r1, #8]
# [996] Inc(Count);
	ldr	r1,[r13, #12]
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [999] Dec(Size,SizeOf(TKeyboardData));
	ldr	r0,[r13, #4]
	sub	r0,r0,#12
# Rescheduled
# [1000] Inc(Offset,SizeOf(TKeyboardData));
	ldr	r1,[r13, #20]
	str	r0,[r13, #4]
	add	r0,r1,#12
	str	r0,[r13, #20]
.Lj202:
	bl	fpc_popaddrstack
# [1003] MutexUnlock(KeyboardBufferLock);
	ldr	r0,.Lj143
	ldr	r0,[r0]
	str	r0,[r13, #144]
	mov	r4,#87
# Peephole StrLdr2StrMov 1 done
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj213
	ldr	r0,[r13, #144]
	str	r0,[r13, #148]
# Peephole StrLdr2StrMov 1 done
	cmp	r0,#0
	beq	.Lj213
	ldr	r0,[r13, #148]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj149
	cmp	r0,r1
	bne	.Lj213
	ldr	r0,.Lj178
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj223
# Rescheduled
	ldr	r1,.Lj178
# Rescheduled
	ldr	r1,[r1]
	ldr	r0,[r13, #148]
	blx	r1
	mov	r4,r0
.Lj223:
.Lj213:
	ldr	r0,[r13, #140]
	cmp	r0,#0
	blne	fpc_reraise
	b	.Lj226
.Lj201:
# [1008] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [1009] Exit;
	b	.Lj126
.Lj186:
# [1014] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [1015] Exit;
	b	.Lj126
.Lj226:
.Lj183:
# [1020] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
.Lj133:
	ldr	r0,[r13, #4]
	cmp	r0,#12
	bcs	.Lj132
.Lj134:
.Lj126:
# [1026] end;
	ldr	r0,[r13, #16]
	add	r13,r13,#152
	ldmfd	r13!,{r4,r15}
.Lj138:
	.long	U_$KEYBOARD_$$_KEYBOARDBUFFER
.Lj143:
	.long	TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK
.Lj149:
	.long	475889572
.Lj152:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj178:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le8:
	.size	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD, .Le8 - KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboardput$word$word$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDPUT$WORD$WORD$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDPUT$WORD$WORD$LONGWORD$$LONGWORD:
# [1039] begin
	stmfd	r13!,{r4,r5,r6,r7,r8,r14}
	sub	r13,r13,#12
# Var ScanCode located in register r4
# Var KeyCode located in register r5
# Var Modifiers located in register r6
# Var $result located in register r8
# Var Keymap located in register r0
# Var Data located at r13+0, size=OS_NO
	mov	r4,r0
	mov	r5,r1
	mov	r6,r2
# Var $result located in register r8
# [1041] Result:=ERROR_INVALID_PARAMETER;
	mov	r8,#87
# [1044] Keymap:=KeymapGetDefault;
	bl	KEYMAP_$$_KEYMAPGETDEFAULT$$LONGINT
	mov	r7,r0
# Var Keymap located in register r7
# [1045] if Keymap = INVALID_HANDLE_VALUE then Exit;
	mvn	r0,#0
	cmp	r7,r0
	beq	.Lj227
# [1048] FillChar(Data,SizeOf(TKeyboardData),0);
	mov	r0,r13
	mov	r2,#0
	mov	r1,#12
	bl	SYSTEM_$$_FILLCHAR$formal$LONGINT$BYTE
# Var Modifiers located in register r6
# [1049] Data.Modifiers:=Modifiers;
	str	r6,[r13]
# Var ScanCode located in register r4
# [1050] Data.ScanCode:=ScanCode;
	strh	r4,[r13, #4]
# Var KeyCode located in register r5
# [1051] Data.KeyCode:=KeyCode;
	strh	r5,[r13, #6]
# [1052] Data.CharCode:=KeymapGetCharCode(Keymap,Data.KeyCode);
	ldrh	r1,[r13, #6]
# Var Keymap located in register r7
	mov	r0,r7
	bl	KEYMAP_$$_KEYMAPGETCHARCODE$LONGINT$WORD$$CHAR
	strb	r0,[r13, #8]
# [1053] Data.CharUnicode:=KeymapGetCharUnicode(Keymap,Data.KeyCode);
	ldrh	r1,[r13, #6]
	mov	r0,r7
# Var Keymap located in register r0
	bl	KEYMAP_$$_KEYMAPGETCHARUNICODE$LONGINT$WORD$$WIDECHAR
	strh	r0,[r13, #10]
# [1056] Result:=KeyboardWrite(@Data,SizeOf(TKeyboardData),1);
	mov	r0,r13
	mov	r2,#1
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDWRITE$POINTER$LONGWORD$LONGWORD$$LONGWORD
	mov	r8,r0
.Lj227:
# [1057] end;
	mov	r0,r8
	add	r13,r13,#12
	ldmfd	r13!,{r4,r5,r6,r7,r8,r15}
.Le9:
	.size	KEYBOARD_$$_KEYBOARDPUT$WORD$WORD$LONGWORD$$LONGWORD, .Le9 - KEYBOARD_$$_KEYBOARDPUT$WORD$WORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboardwrite$pointer$longword$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDWRITE$POINTER$LONGWORD$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDWRITE$POINTER$LONGWORD$LONGWORD$$LONGWORD:
# Temps allocated between r13+20 and r13+140
# [1069] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Buffer located at r13+0, size=OS_32
# Var Size located at r13+4, size=OS_32
# Var Count located at r13+8, size=OS_32
# Var $result located at r13+12, size=OS_32
# Var Offset located at r13+16, size=OS_32
	str	r0,[r13, #-140]!
	str	r1,[r13, #4]
	str	r2,[r13, #8]
# [1071] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [1074] if Buffer = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #12]
	cmp	r1,#0
	beq	.Lj231
# [1077] if Size < SizeOf(TKeyboardData) then Exit;
	ldr	r0,[r13, #4]
	cmp	r0,#12
	bcc	.Lj231
# [1080] if Count < 1 then Exit;
	ldr	r0,[r13, #8]
	cmp	r0,#1
	bcc	.Lj231
# [1087] Offset:=0;
	mov	r0,#0
	str	r0,[r13, #16]
# [1088] while (Size >= SizeOf(TKeyboardData)) and (Count > 0) do
	b	.Lj240
	.balign 4
.Lj239:
# [1091] if MutexLock(KeyboardBufferLock) = ERROR_SUCCESS then
	ldr	r0,.Lj242
	ldr	r0,[r0]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj243
	cmp	r0,#0
	beq	.Lj243
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj248
	cmp	r1,r2
	bne	.Lj243
	ldr	r1,.Lj251
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj253
# Rescheduled
	ldr	r1,.Lj251
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj253:
.Lj243:
	cmp	r4,#0
	bne	.Lj256
# [1093] try
	add	r2,r13,#20
	add	r1,r13,#32
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #136]
	cmp	r0,#0
	bne	.Lj257
# [1095] if (KeyboardBuffer.Count < KEYBOARD_BUFFER_SIZE) then
	ldr	r0,.Lj262
	ldr	r0,[r0]
	ldr	r0,[r0, #8]
	cmp	r0,#512
	bcs	.Lj264
# Rescheduled
# [1098] KeyboardBuffer.Buffer[(KeyboardBuffer.Start + KeyboardBuffer.Count) mod KEYBOARD_BUFFER_SIZE]:=PKeyboardData(PtrUInt(Buffer) + Offset)^;
	ldr	r1,[r13, #16]
	ldr	r0,[r13]
# Rescheduled
	ldr	r3,.Lj262
	add	r0,r1,r0
# Rescheduled
	ldr	r2,.Lj262
	ldr	r12,[r3]
# Rescheduled
	ldr	r1,.Lj262
# Rescheduled
# Rescheduled
	ldr	r1,[r1]
	ldr	r3,[r2]
	ldr	r2,[r1, #8]
	ldr	r1,[r3, #4]
	add	r1,r2,r1
	mov	r1,r1,lsl #23
	mov	r1,r1,lsr #23
	mov	r4,#12
	mla	r4,r1,r4,r12
	ldr	r3,[r0]
	ldr	r2,[r0, #4]
	ldr	r12,[r0, #8]
# Peephole Add/SubLdr2Ldr done
	str	r3,[r4, #12]
	str	r2,[r4, #16]
# Rescheduled
# [1101] Inc(KeyboardBuffer.Count);
	ldr	r0,.Lj262
	str	r12,[r4, #20]
	ldr	r1,[r0]
	ldr	r0,[r1, #8]
	add	r0,r0,#1
	str	r0,[r1, #8]
# [1104] Dec(Count);
	ldr	r0,[r13, #8]
	sub	r0,r0,#1
# Rescheduled
# [1107] Dec(Size,SizeOf(TKeyboardData));
	ldr	r1,[r13, #4]
	str	r0,[r13, #8]
	sub	r0,r1,#12
# Rescheduled
# [1108] Inc(Offset,SizeOf(TKeyboardData));
	ldr	r1,[r13, #16]
	str	r0,[r13, #4]
	add	r0,r1,#12
# Rescheduled
# [1111] SemaphoreSignal(KeyboardBuffer.Wait);
	ldr	r1,.Lj262
	str	r0,[r13, #16]
	ldr	r0,[r1]
	ldr	r0,[r0]
	bl	THREADS_$$_SEMAPHORESIGNAL$LONGINT$$LONGWORD
	b	.Lj270
.Lj264:
# [1115] Result:=ERROR_INSUFFICIENT_BUFFER;
	mov	r0,#122
	str	r0,[r13, #12]
# [1116] Exit;
	b	.Lj259
.Lj270:
.Lj257:
	bl	fpc_popaddrstack
# [1120] MutexUnlock(KeyboardBufferLock);
	ldr	r0,.Lj242
	ldr	r0,[r0]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj272
	cmp	r0,#0
	beq	.Lj272
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj248
	cmp	r1,r2
	bne	.Lj272
	ldr	r1,.Lj280
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj282
# Rescheduled
	ldr	r1,.Lj280
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj282:
.Lj272:
	ldr	r0,[r13, #136]
	cmp	r0,#0
	beq	.Lj258
	cmp	r0,#2
	beq	.Lj231
	bl	fpc_reraise
.Lj259:
	mov	r0,#2
	str	r0,[r13, #136]
	b	.Lj257
.Lj258:
	b	.Lj284
.Lj256:
# [1125] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #12]
# [1126] Exit;
	b	.Lj231
.Lj284:
# [1130] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #12]
.Lj240:
	ldr	r0,[r13, #4]
	cmp	r0,#12
	bcc	.Lj241
	ldr	r0,[r13, #8]
	cmp	r0,#0
	bhi	.Lj239
.Lj241:
.Lj231:
# [1132] end;
	ldr	r0,[r13, #12]
	add	r13,r13,#140
	ldmfd	r13!,{r4,r15}
.Lj242:
	.long	TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK
.Lj248:
	.long	475889572
.Lj251:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj262:
	.long	U_$KEYBOARD_$$_KEYBOARDBUFFER
.Lj280:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le10:
	.size	KEYBOARD_$$_KEYBOARDWRITE$POINTER$LONGWORD$LONGWORD$$LONGWORD, .Le10 - KEYBOARD_$$_KEYBOARDWRITE$POINTER$LONGWORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboardflush$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDFLUSH$$LONGWORD
KEYBOARD_$$_KEYBOARDFLUSH$$LONGWORD:
# Temps allocated between r13+4 and r13+124
# [1139] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var $result located at r13+0, size=OS_32
# [1141] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [1144] if MutexLock(KeyboardBufferLock) = ERROR_SUCCESS then
	ldr	r1,.Lj290
	str	r0,[r13, #-124]!
	ldr	r0,[r1]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj291
	cmp	r0,#0
	beq	.Lj291
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj296
	cmp	r1,r2
	bne	.Lj291
	ldr	r1,.Lj299
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj301
# Rescheduled
	ldr	r1,.Lj299
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj301:
.Lj291:
	cmp	r4,#0
	bne	.Lj304
# [1146] try
	add	r2,r13,#4
	add	r1,r13,#16
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #120]
	cmp	r0,#0
	bne	.Lj305
# [1147] while KeyboardBuffer.Count > 0 do
	b	.Lj309
	.balign 4
.Lj308:
# [1150] if SemaphoreWait(KeyboardBuffer.Wait) = ERROR_SUCCESS then
	ldr	r0,.Lj311
	ldr	r0,[r0]
	ldr	r0,[r0]
	bl	THREADS_$$_SEMAPHOREWAIT$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj313
# [1153] KeyboardBuffer.Start:=(KeyboardBuffer.Start + 1) mod KEYBOARD_BUFFER_SIZE;
	ldr	r0,.Lj311
# Rescheduled
	ldr	r1,.Lj311
	ldr	r2,[r0]
	ldr	r0,[r1]
	ldr	r0,[r0, #4]
	add	r0,r0,#1
	mov	r1,r0,lsl #23
	mov	r1,r1,lsr #23
# Rescheduled
# [1156] Dec(KeyboardBuffer.Count);
	ldr	r0,.Lj311
	str	r1,[r2, #4]
	ldr	r1,[r0]
	ldr	r0,[r1, #8]
	sub	r0,r0,#1
	str	r0,[r1, #8]
	b	.Lj317
.Lj313:
# [1160] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13]
# [1161] Exit;
	b	.Lj307
.Lj317:
.Lj309:
	ldr	r0,.Lj311
	ldr	r0,[r0]
	ldr	r0,[r0, #8]
	cmp	r0,#0
	bhi	.Lj308
# [1166] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13]
.Lj305:
	bl	fpc_popaddrstack
# [1169] MutexUnlock(KeyboardBufferLock);
	ldr	r0,.Lj290
	ldr	r0,[r0]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj320
	cmp	r0,#0
	beq	.Lj320
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj296
	cmp	r2,r1
	bne	.Lj320
	ldr	r1,.Lj328
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj330
# Rescheduled
	ldr	r1,.Lj328
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj330:
.Lj320:
	ldr	r0,[r13, #120]
	cmp	r0,#0
	beq	.Lj306
	cmp	r0,#2
	beq	.Lj288
	bl	fpc_reraise
.Lj307:
	mov	r0,#2
	str	r0,[r13, #120]
	b	.Lj305
.Lj306:
	b	.Lj332
.Lj304:
# [1174] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13]
.Lj332:
.Lj288:
# Peephole Str/LdrAdd/Sub2Str/Ldr Postindex done
# [1177] end;
	ldr	r0,[r13], #124
	ldmfd	r13!,{r4,r15}
.Lj290:
	.long	TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK
.Lj296:
	.long	475889572
.Lj299:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj311:
	.long	U_$KEYBOARD_$$_KEYBOARDBUFFER
.Lj328:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le11:
	.size	KEYBOARD_$$_KEYBOARDFLUSH$$LONGWORD, .Le11 - KEYBOARD_$$_KEYBOARDFLUSH$$LONGWORD

.section .text.n_keyboard_$$_keyboarddeviceget$pkeyboarddevice$word$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEGET$PKEYBOARDDEVICE$WORD$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICEGET$PKEYBOARDDEVICE$WORD$$LONGWORD:
# [1194] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#16
# Var Keyboard located in register r4
# Var KeyCode located in register r5
# Var $result located in register r6
# Var Count located at r13+0, size=OS_32
# Var Data located at r13+4, size=OS_NO
	mov	r4,r0
	mov	r5,r1
# Var $result located in register r6
# [1196] Result:=ERROR_INVALID_PARAMETER;
	mov	r6,#87
# [1199] if Keyboard = nil then Exit;
	cmp	r4,#0
	beq	.Lj333
# Rescheduled
# Rescheduled
# [1200] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r1,[r4]
	ldr	r0,.Lj337
	cmp	r1,r0
	bne	.Lj333
# [1203] if Assigned(Keyboard.DeviceGet) then
	ldr	r0,[r4, #68]
	cmp	r0,#0
	beq	.Lj341
# [1206] Result:=Keyboard.DeviceGet(Keyboard,KeyCode);
	mov	r1,r5
# Rescheduled
	ldr	r2,[r4, #68]
	mov	r0,r4
	blx	r2
	mov	r6,r0
	b	.Lj342
.Lj341:
# [1211] Result:=KeyboardDeviceRead(Keyboard,@Data,SizeOf(TKeyboardData),Count);
	add	r1,r13,#4
	mov	r3,r13
	mov	r0,r4
	mov	r2,#12
	bl	KEYBOARD_$$_KEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
# [1212] while Result = ERROR_SUCCESS do
	b	.Lj344
	.balign 4
.Lj343:
# [1215] if (Data.Modifiers and (KEYBOARD_KEYUP or KEYBOARD_DEADKEY)) = 0 then
	ldr	r0,[r13, #4]
# Peephole OpCmp2OpS done
	ands	r0,r0,#73728
# [1217] KeyCode:=Data.KeyCode;
	ldreqh	r0,[r13, #10]
	streqh	r0,[r5]
# [1218] Break;
	beq	.Lj345
# [1222] Result:=KeyboardDeviceRead(Keyboard,@Data,SizeOf(TKeyboardData),Count);
	add	r1,r13,#4
	mov	r3,r13
	mov	r0,r4
	mov	r2,#12
	bl	KEYBOARD_$$_KEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
.Lj344:
	cmp	r6,#0
	beq	.Lj343
.Lj345:
.Lj342:
.Lj333:
# [1225] end;
	mov	r0,r6
	add	r13,r13,#16
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj337:
	.long	-1392247236
.Le12:
	.size	KEYBOARD_$$_KEYBOARDDEVICEGET$PKEYBOARDDEVICE$WORD$$LONGWORD, .Le12 - KEYBOARD_$$_KEYBOARDDEVICEGET$PKEYBOARDDEVICE$WORD$$LONGWORD

.section .text.n_keyboard_$$_keyboarddeviceread$pkeyboarddevice$pointer$longword$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD:
# Temps allocated between r13+24 and r13+144
# [1238] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var Buffer located at r13+4, size=OS_32
# Var Size located at r13+8, size=OS_32
# Var Count located at r13+12, size=OS_32
# Var $result located at r13+16, size=OS_32
# Var Offset located at r13+20, size=OS_32
	str	r0,[r13, #-144]!
	str	r1,[r13, #4]
	str	r2,[r13, #8]
	str	r3,[r13, #12]
# [1240] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [1243] if Keyboard = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #16]
	cmp	r1,#0
	beq	.Lj348
# [1244] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj352
	cmp	r0,r1
	bne	.Lj348
# [1247] if Buffer = nil then Exit;
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj348
# [1250] if Size < SizeOf(TKeyboardData) then Exit;
	ldr	r0,[r13, #8]
	cmp	r0,#12
	bcc	.Lj348
# [1253] if Assigned(Keyboard.DeviceRead) then
	ldr	r0,[r13]
	ldr	r0,[r0, #72]
	cmp	r0,#0
	beq	.Lj360
# [1256] Result:=Keyboard.DeviceRead(Keyboard,Buffer,Size,Count);
	ldr	r3,[r13, #12]
	ldr	r2,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Rescheduled
	ldr	r12,[r13]
	ldr	r1,[r13, #4]
	mov	r0,r12
	ldr	r12,[r12, #72]
	blx	r12
	str	r0,[r13, #16]
	b	.Lj361
.Lj360:
# [1262] if Keyboard.KeyboardState <> KEYBOARD_STATE_ATTACHED then Exit;
	ldr	r0,[r13]
	ldr	r0,[r0, #52]
	cmp	r0,#3
	bne	.Lj348
# [1269] Count:=0;
	ldr	r0,[r13, #12]
	mov	r1,#0
	str	r1,[r0]
# [1270] Offset:=0;
	mov	r0,#0
	str	r0,[r13, #20]
# [1271] while Size >= SizeOf(TKeyboardData) do
	b	.Lj365
	.balign 4
.Lj364:
	ldr	r1,[r13]
# [1274] if ((Keyboard.Device.DeviceFlags and KEYBOARD_FLAG_NON_BLOCK) <> 0) and (Keyboard.Buffer.Count = 0) then
	ldr	r0,[r1, #28]
# Peephole OpCmp2OpS done
	ands	r0,r0,#1
	beq	.Lj368
	ldr	r0,[r1, #100]
	cmp	r0,#0
	bne	.Lj368
# [1276] if Count = 0 then Result:=ERROR_NO_MORE_ITEMS;
	ldr	r0,[r13, #12]
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj366
	mov	r0,#3
	orr	r0,r0,#256
	str	r0,[r13, #16]
# [1277] Break;
	b	.Lj366
.Lj368:
# [1281] if SemaphoreWait(Keyboard.Buffer.Wait) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #92]
	bl	THREADS_$$_SEMAPHOREWAIT$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj373
# [1284] if MutexLock(Keyboard.Lock) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj374
	cmp	r0,#0
	beq	.Lj374
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj379
	cmp	r1,r2
	bne	.Lj374
	ldr	r1,.Lj382
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj384
# Rescheduled
	ldr	r1,.Lj382
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj384:
.Lj374:
	cmp	r4,#0
	bne	.Lj387
# [1286] try
	add	r2,r13,#24
	add	r1,r13,#36
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #140]
	cmp	r0,#0
	bne	.Lj388
# Rescheduled
# [1288] PKeyboardData(PtrUInt(Buffer) + Offset)^:=Keyboard.Buffer.Buffer[Keyboard.Buffer.Start];
	ldr	r0,[r13, #20]
	ldr	r1,[r13, #4]
# Rescheduled
	ldr	r3,[r13]
	add	r0,r0,r1
	ldr	r2,[r3, #96]
	mov	r1,#12
	mla	r1,r2,r1,r3
# Peephole Add/Sub to Preindexed done
	ldr	r2,[r1, #104]!
	ldr	r3,[r1, #4]
	ldr	r1,[r1, #8]
	str	r2,[r0]
	str	r3,[r0, #4]
	str	r1,[r0, #8]
	ldr	r1,[r13]
# [1291] Keyboard.Buffer.Start:=(Keyboard.Buffer.Start + 1) mod KEYBOARD_BUFFER_SIZE;
	ldr	r0,[r1, #96]
	add	r0,r0,#1
	mov	r0,r0,lsl #23
	mov	r0,r0,lsr #23
	str	r0,[r1, #96]
# [1294] Dec(Keyboard.Buffer.Count);
	ldr	r1,[r13]
	ldr	r0,[r1, #100]
	sub	r0,r0,#1
	str	r0,[r1, #100]
# [1297] Inc(Count);
	ldr	r1,[r13, #12]
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [1300] Dec(Size,SizeOf(TKeyboardData));
	ldr	r0,[r13, #8]
	sub	r0,r0,#12
# Rescheduled
# [1301] Inc(Offset,SizeOf(TKeyboardData));
	ldr	r1,[r13, #20]
	str	r0,[r13, #8]
	add	r0,r1,#12
	str	r0,[r13, #20]
.Lj388:
	bl	fpc_popaddrstack
# [1304] MutexUnlock(Keyboard.Lock);
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj393
	cmp	r0,#0
	beq	.Lj393
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj379
	cmp	r2,r1
	bne	.Lj393
	ldr	r1,.Lj401
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj403
# Rescheduled
	ldr	r1,.Lj401
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj403:
.Lj393:
	ldr	r0,[r13, #140]
	cmp	r0,#0
	blne	fpc_reraise
	b	.Lj406
.Lj387:
# [1309] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [1310] Exit;
	b	.Lj348
.Lj373:
# [1315] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [1316] Exit;
	b	.Lj348
.Lj406:
# [1320] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
.Lj365:
	ldr	r0,[r13, #8]
	cmp	r0,#12
	bcs	.Lj364
.Lj366:
.Lj361:
.Lj348:
# [1327] end;
	ldr	r0,[r13, #16]
	add	r13,r13,#144
	ldmfd	r13!,{r4,r15}
.Lj352:
	.long	-1392247236
.Lj379:
	.long	475889572
.Lj382:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj401:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le13:
	.size	KEYBOARD_$$_KEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD, .Le13 - KEYBOARD_$$_KEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboarddevicecontrol$pkeyboarddevice$longint$longword$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
# Temps allocated between r13+20 and r13+140
# [1338] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var Request located at r13+4, size=OS_S32
# Var Argument1 located at r13+8, size=OS_32
# Var Argument2 located at r13+12, size=OS_32
# Var $result located at r13+16, size=OS_32
	str	r0,[r13, #-140]!
	str	r1,[r13, #4]
	str	r2,[r13, #8]
	str	r3,[r13, #12]
# [1340] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [1343] if Keyboard = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #16]
	cmp	r1,#0
	beq	.Lj407
# [1344] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj411
	cmp	r0,r1
	bne	.Lj407
# [1347] if Assigned(Keyboard.DeviceControl) then
	ldr	r0,[r13]
	ldr	r0,[r0, #76]
	cmp	r0,#0
	beq	.Lj415
# [1350] Result:=Keyboard.DeviceControl(Keyboard,Request,Argument1,Argument2);
	ldr	r3,[r13, #12]
	ldr	r2,[r13, #8]
# Rescheduled
# Peephole LdrLdr2LdrMov done
# Rescheduled
	ldr	r12,[r13]
	ldr	r1,[r13, #4]
	mov	r0,r12
	ldr	r12,[r12, #76]
	blx	r12
	str	r0,[r13, #16]
	b	.Lj416
.Lj415:
# [1356] if Keyboard.KeyboardState <> KEYBOARD_STATE_ATTACHED then Exit;
	ldr	r0,[r13]
	ldr	r0,[r0, #52]
	cmp	r0,#3
	bne	.Lj407
# [1359] if MutexLock(Keyboard.Lock) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj419
	cmp	r0,#0
	beq	.Lj419
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj424
	cmp	r1,r2
	bne	.Lj419
	ldr	r1,.Lj427
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj429
# Rescheduled
	ldr	r1,.Lj427
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj429:
.Lj419:
	cmp	r4,#0
	bne	.Lj432
# [1361] try
	add	r2,r13,#20
	add	r1,r13,#32
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #136]
	cmp	r0,#0
	bne	.Lj433
# [1362] case Request of
	ldr	r0,[r13, #4]
	cmp	r0,#1
	blt	.Lj437
	cmp	r0,#11
	bgt	.Lj437
	sub	r0,r0,#2
	ldr	r15,[r15, r0, lsl #2]
	.long	.Lj438
	.long	.Lj439
	.long	.Lj440
	.long	.Lj441
	.long	.Lj442
	.long	.Lj443
	.long	.Lj444
	.long	.Lj445
	.long	.Lj446
	.long	.Lj447
	.long	.Lj448
.Lj438:
# [1365] LongBool(Argument2):=False;
	ldr	r0,[r13, #12]
	mov	r1,#0
	str	r1,[r0]
# [1366] if (Keyboard.Device.DeviceFlags and Argument1) <> 0 then
	ldr	r0,[r13]
# Rescheduled
# Peephole OpCmp2OpS done
# Rescheduled
	ldr	r0,[r0, #28]
	ldr	r1,[r13, #8]
	ands	r0,r1,r0
	beq	.Lj436
# [1368] LongBool(Argument2):=True;
	ldr	r1,[r13, #12]
	mvn	r0,#0
	str	r0,[r1]
# [1371] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj439:
# [1376] if (Argument1 and not(KEYBOARD_FLAG_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#7
	bne	.Lj436
	ldr	r2,[r13]
# Rescheduled
# Rescheduled
# [1378] Keyboard.Device.DeviceFlags:=(Keyboard.Device.DeviceFlags or Argument1);
	ldr	r0,[r2, #28]
	ldr	r1,[r13, #8]
	orr	r0,r1,r0
	str	r0,[r2, #28]
# [1381] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj440:
# [1386] if (Argument1 and not(KEYBOARD_FLAG_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#7
	bne	.Lj436
# [1388] Keyboard.Device.DeviceFlags:=(Keyboard.Device.DeviceFlags and not(Argument1));
	ldr	r0,[r13, #8]
# Rescheduled
	ldr	r2,[r13]
# Rescheduled
	ldr	r1,[r2, #28]
	mvn	r0,r0
	and	r0,r1,r0
	str	r0,[r2, #28]
# [1391] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj441:
# [1396] while Keyboard.Buffer.Count > 0 do
	b	.Lj456
	.balign 4
.Lj455:
# [1399] if SemaphoreWait(Keyboard.Buffer.Wait) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #92]
	bl	THREADS_$$_SEMAPHOREWAIT$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj459
	ldr	r1,[r13]
# [1402] Keyboard.Buffer.Start:=(Keyboard.Buffer.Start + 1) mod KEYBOARD_BUFFER_SIZE;
	ldr	r0,[r1, #96]
	add	r0,r0,#1
	mov	r0,r0,lsl #23
	mov	r0,r0,lsr #23
	str	r0,[r1, #96]
# [1405] Dec(Keyboard.Buffer.Count);
	ldr	r1,[r13]
	ldr	r0,[r1, #100]
	sub	r0,r0,#1
	str	r0,[r1, #100]
	b	.Lj460
.Lj459:
# [1409] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [1410] Exit;
	b	.Lj435
.Lj460:
.Lj456:
	ldr	r0,[r13]
	ldr	r0,[r0, #100]
	cmp	r0,#0
	bhi	.Lj455
# [1415] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj442:
# [1419] LongBool(Argument2):=False;
	ldr	r1,[r13, #12]
	mov	r0,#0
	str	r0,[r1]
# [1420] if (Keyboard.KeyboardLEDs and Argument1) <> 0 then
	ldr	r0,[r13]
# Rescheduled
# Peephole OpCmp2OpS done
# Rescheduled
	ldr	r0,[r0, #56]
	ldr	r1,[r13, #8]
	ands	r0,r1,r0
	beq	.Lj436
# [1422] LongBool(Argument2):=True;
	ldr	r1,[r13, #12]
	mvn	r0,#0
	str	r0,[r1]
# [1425] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj443:
# [1430] if (Argument1 and not(KEYBOARD_LED_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#31
	bne	.Lj436
	ldr	r2,[r13]
# Rescheduled
# Rescheduled
# [1432] Keyboard.KeyboardLEDs:=(Keyboard.KeyboardLEDs or Argument1);
	ldr	r1,[r2, #56]
	ldr	r0,[r13, #8]
	orr	r0,r0,r1
	str	r0,[r2, #56]
# [1435] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj444:
# [1440] if (Argument1 and not(KEYBOARD_LED_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#31
	bne	.Lj436
# [1442] Keyboard.KeyboardLEDs:=(Keyboard.KeyboardLEDs and not(Argument1));
	ldr	r0,[r13, #8]
# Rescheduled
	ldr	r2,[r13]
	mvn	r1,r0
	ldr	r0,[r2, #56]
	and	r0,r0,r1
	str	r0,[r2, #56]
# [1445] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj445:
# [1450] Argument2:=Keyboard.KeyboardRate;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r1,[r13, #12]
	ldr	r0,[r0, #60]
	str	r0,[r1]
# [1453] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj446:
# Rescheduled
# Rescheduled
# [1457] Keyboard.KeyboardRate:=Argument1;
	ldr	r0,[r13]
	ldr	r1,[r13, #8]
	str	r1,[r0, #60]
# [1460] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj447:
# [1464] Argument2:=Keyboard.KeyboardDelay;
	ldr	r0,[r13]
# Rescheduled
	ldr	r1,[r0, #64]
	ldr	r0,[r13, #12]
	str	r1,[r0]
# [1467] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj436
.Lj448:
# Rescheduled
# Rescheduled
# [1471] Keyboard.KeyboardDelay:=Argument1;
	ldr	r1,[r13]
	ldr	r0,[r13, #8]
	str	r0,[r1, #64]
# [1474] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
.Lj437:
.Lj436:
.Lj433:
	bl	fpc_popaddrstack
# [1479] MutexUnlock(Keyboard.Lock);
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj467
	cmp	r0,#0
	beq	.Lj467
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj424
	cmp	r1,r2
	bne	.Lj467
	ldr	r1,.Lj475
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj477
# Rescheduled
	ldr	r1,.Lj475
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj477:
.Lj467:
	ldr	r0,[r13, #136]
	cmp	r0,#0
	beq	.Lj434
	cmp	r0,#2
	beq	.Lj407
	bl	fpc_reraise
.Lj435:
	mov	r0,#2
	str	r0,[r13, #136]
	b	.Lj433
.Lj434:
	b	.Lj479
.Lj432:
# [1484] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
.Lj479:
.Lj416:
.Lj407:
# [1488] end;
	ldr	r0,[r13, #16]
	add	r13,r13,#140
	ldmfd	r13!,{r4,r15}
.Lj411:
	.long	-1392247236
.Lj424:
	.long	475889572
.Lj427:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj475:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le14:
	.size	KEYBOARD_$$_KEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD, .Le14 - KEYBOARD_$$_KEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboarddevicesetstate$pkeyboarddevice$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICESETSTATE$PKEYBOARDDEVICE$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICESETSTATE$PKEYBOARDDEVICE$LONGWORD$$LONGWORD:
# Temps allocated between r13+12 and r13+132
# [1497] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var State located at r13+4, size=OS_32
# Var $result located at r13+8, size=OS_32
	str	r0,[r13, #-132]!
	str	r1,[r13, #4]
# [1499] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [1502] if Keyboard = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #8]
	cmp	r1,#0
	beq	.Lj480
# [1503] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj484
	cmp	r0,r1
	bne	.Lj480
# [1506] if State > KEYBOARD_STATE_ATTACHED then Exit;
	ldr	r0,[r13, #4]
	cmp	r0,#3
	bhi	.Lj480
# [1509] if Keyboard.KeyboardState = State then
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0, #52]
	ldr	r1,[r13, #4]
	cmp	r0,r1
# [1512] Result:=ERROR_SUCCESS;
	moveq	r0,#0
	streq	r0,[r13, #8]
	beq	.Lj491
# [1517] if MutexLock(Keyboard.Lock) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj492
	cmp	r0,#0
	beq	.Lj492
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj497
	cmp	r1,r2
	bne	.Lj492
	ldr	r1,.Lj500
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj502
# Rescheduled
	ldr	r1,.Lj500
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj502:
.Lj492:
	cmp	r4,#0
	bne	.Lj505
# [1519] try
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj506
# Rescheduled
# Rescheduled
# [1521] Keyboard.KeyboardState:=State;
	ldr	r1,[r13]
	ldr	r0,[r13, #4]
	str	r0,[r1, #52]
# [1524] NotifierNotify(@Keyboard.Device,KeyboardDeviceStateToNotification(State));
	ldr	r0,[r13, #4]
	bl	KEYBOARD_$$_KEYBOARDDEVICESTATETONOTIFICATION$LONGWORD$$LONGWORD
	mov	r1,r0
# Rescheduled
	ldr	r0,[r13]
	bl	DEVICES_$$_NOTIFIERNOTIFY$PDEVICE$LONGWORD$$LONGWORD
# [1527] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #8]
.Lj506:
	bl	fpc_popaddrstack
# [1530] MutexUnlock(Keyboard.Lock);
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj509
	cmp	r0,#0
	beq	.Lj509
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj497
	cmp	r1,r2
	bne	.Lj509
	ldr	r1,.Lj517
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj519
# Rescheduled
	ldr	r1,.Lj517
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj519:
.Lj509:
	ldr	r0,[r13, #128]
	cmp	r0,#0
	blne	fpc_reraise
	b	.Lj521
.Lj505:
# [1535] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #8]
.Lj521:
.Lj491:
.Lj480:
# [1538] end;
	ldr	r0,[r13, #8]
	add	r13,r13,#132
	ldmfd	r13!,{r4,r15}
.Lj484:
	.long	-1392247236
.Lj497:
	.long	475889572
.Lj500:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj517:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le15:
	.size	KEYBOARD_$$_KEYBOARDDEVICESETSTATE$PKEYBOARDDEVICE$LONGWORD$$LONGWORD, .Le15 - KEYBOARD_$$_KEYBOARDDEVICESETSTATE$PKEYBOARDDEVICE$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboarddevicecreate$$pkeyboarddevice
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICECREATE$$PKEYBOARDDEVICE
KEYBOARD_$$_KEYBOARDDEVICECREATE$$PKEYBOARDDEVICE:
# [1545] begin
	stmfd	r13!,{r14}
# Var $result located in register r0
# [1547] Result:=KeyboardDeviceCreateEx(SizeOf(TKeyboardDevice));
	mov	r0,#124
	orr	r0,r0,#6144
	bl	KEYBOARD_$$_KEYBOARDDEVICECREATEEX$LONGWORD$$PKEYBOARDDEVICE
# Var $result located in register r0
# [1548] end;
	ldmfd	r13!,{r15}
.Le16:
	.size	KEYBOARD_$$_KEYBOARDDEVICECREATE$$PKEYBOARDDEVICE, .Le16 - KEYBOARD_$$_KEYBOARDDEVICECREATE$$PKEYBOARDDEVICE

.section .text.n_keyboard_$$_keyboarddevicecreateex$longword$$pkeyboarddevice
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICECREATEEX$LONGWORD$$PKEYBOARDDEVICE
KEYBOARD_$$_KEYBOARDDEVICECREATEEX$LONGWORD$$PKEYBOARDDEVICE:
# [1556] begin
	stmfd	r13!,{r4,r14}
# Var Size located in register r0
# Var $result located in register r4
# Var $result located in register r4
# [1558] Result:=nil;
	mov	r4,#0
# [1561] if Size < SizeOf(TKeyboardDevice) then Exit;
	mov	r1,#124
	orr	r1,r1,#6144
	cmp	r0,r1
	bcc	.Lj524
# Var Size located in register r0
# [1564] Result:=PKeyboardDevice(DeviceCreateEx(Size));
	bl	DEVICES_$$_DEVICECREATEEX$LONGWORD$$PDEVICE
# Peephole OpCmp2OpS done
	movs	r4,r0
# [1565] if Result = nil then Exit;
	beq	.Lj524
# [1568] Result.Device.DeviceBus:=DEVICE_BUS_NONE;
	mov	r0,#0
	str	r0,[r4, #20]
# Peephole MovStrMov done
# [1569] Result.Device.DeviceType:=KEYBOARD_TYPE_NONE;
	str	r0,[r4, #24]
# Peephole MovStrMov done
# [1570] Result.Device.DeviceFlags:=KEYBOARD_FLAG_NONE;
	str	r0,[r4, #28]
# Peephole MovStrMov done
# [1571] Result.Device.DeviceData:=nil;
	str	r0,[r4, #32]
# [1574] Result.KeyboardId:=DEVICE_ID_ANY;
	mvn	r0,#0
	str	r0,[r4, #48]
# [1575] Result.KeyboardState:=KEYBOARD_STATE_DETACHED;
	mov	r0,#0
	str	r0,[r4, #52]
# Peephole MovStrMov done
# [1576] Result.KeyboardLEDs:=KEYBOARD_LED_NONE;
	str	r0,[r4, #56]
# [1577] Result.KeyboardRate:=KEYBOARD_REPEAT_RATE;
	mov	r0,#50
	str	r0,[r4, #60]
# [1578] Result.KeyboardDelay:=KEYBOARD_REPEAT_DELAY;
	mov	r0,#10
	str	r0,[r4, #64]
# [1579] Result.DeviceGet:=nil;
	mov	r0,#0
	str	r0,[r4, #68]
# Peephole MovStrMov done
# [1580] Result.DeviceRead:=nil;
	str	r0,[r4, #72]
# Peephole MovStrMov done
# [1581] Result.DeviceControl:=nil;
	str	r0,[r4, #76]
# [1582] Result.Lock:=INVALID_HANDLE_VALUE;
	mvn	r0,#0
	str	r0,[r4, #80]
# [1583] Result.Buffer.Wait:=INVALID_HANDLE_VALUE;
	mvn	r0,#0
# Rescheduled
# [1586] if KEYBOARD_NUM_LOCK_DEFAULT then Result.KeyboardLEDs:=Result.KeyboardLEDs or KEYBOARD_LED_NUMLOCK;
	ldr	r1,.Lj532
	str	r0,[r4, #92]
	ldr	r0,[r1]
	cmp	r0,#0
	ldrne	r0,[r4, #56]
	orrne	r0,r0,#1
	strne	r0,[r4, #56]
# [1587] if KEYBOARD_CAPS_LOCK_DEFAULT then Result.KeyboardLEDs:=Result.KeyboardLEDs or KEYBOARD_LED_CAPSLOCK;
	ldr	r0,.Lj535
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r4, #56]
	orrne	r0,r0,#2
	strne	r0,[r4, #56]
# [1588] if KEYBOARD_SCROLL_LOCK_DEFAULT then Result.KeyboardLEDs:=Result.KeyboardLEDs or KEYBOARD_LED_SCROLLLOCK;
	ldr	r0,.Lj538
	ldr	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r4, #56]
	orrne	r0,r0,#4
	strne	r0,[r4, #56]
# [1591] Result.Lock:=MutexCreate;
	ldr	r0,.Lj539
	ldr	r1,[r0]
	mov	r2,#0
	mov	r0,#0
	bl	THREADS_$$_MUTEXCREATEEX$BOOLEAN$LONGWORD$LONGWORD$$LONGINT
	str	r0,[r4, #80]
# Peephole StrLdr2StrMov 1 done
# [1592] if Result.Lock = INVALID_HANDLE_VALUE then
	mvn	r1,#0
	cmp	r0,r1
	bne	.Lj541
# [1594] if KEYBOARD_LOG_ENABLED then KeyboardLogError(nil,'Failed to create lock for keyboard');
	ldr	r0,.Lj544
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj545
	movne	r0,#0
	blne	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
# [1595] KeyboardDeviceDestroy(Result);
	mov	r0,r4
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [1596] Result:=nil;
	mov	r4,#0
# [1597] Exit;
	b	.Lj524
.Lj541:
# [1601] Result.Buffer.Wait:=SemaphoreCreate(0);
	mov	r0,#0
	bl	THREADS_$$_SEMAPHORECREATE$LONGWORD$$LONGINT
	str	r0,[r4, #92]
# Peephole StrLdr2StrMov 1 done
# [1602] if Result.Buffer.Wait = INVALID_HANDLE_VALUE then
	mvn	r1,#0
	cmp	r0,r1
	bne	.Lj547
# [1604] if KEYBOARD_LOG_ENABLED then KeyboardLogError(nil,'Failed to create buffer semaphore for keyboard');
	ldr	r0,.Lj544
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r1,.Lj551
	movne	r0,#0
	blne	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
# [1605] KeyboardDeviceDestroy(Result);
	mov	r0,r4
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [1606] Result:=nil;
	mov	r4,#0
.Lj547:
.Lj524:
# [1609] end;
	mov	r0,r4
	ldmfd	r13!,{r4,r15}
.Lj532:
	.long	TC_$GLOBALCONFIG_$$_KEYBOARD_NUM_LOCK_DEFAULT
.Lj535:
	.long	TC_$GLOBALCONFIG_$$_KEYBOARD_CAPS_LOCK_DEFAULT
.Lj538:
	.long	TC_$GLOBALCONFIG_$$_KEYBOARD_SCROLL_LOCK_DEFAULT
.Lj539:
	.long	TC_$GLOBALCONFIG_$$_MUTEX_DEFAULT_SPINCOUNT
.Lj544:
	.long	U_$KEYBOARD_$$_KEYBOARD_LOG_ENABLED
.Lj545:
	.long	.Ld16
.Lj551:
	.long	.Ld17
.Le17:
	.size	KEYBOARD_$$_KEYBOARDDEVICECREATEEX$LONGWORD$$PKEYBOARDDEVICE, .Le17 - KEYBOARD_$$_KEYBOARDDEVICECREATEEX$LONGWORD$$PKEYBOARDDEVICE

.section .text.n_keyboard_$$_keyboarddevicedestroy$pkeyboarddevice$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD:
# [1617] begin
	stmfd	r13!,{r4,r5,r14}
# Var Keyboard located in register r0
# Var $result located in register r5
	mov	r4,r0
# Var $result located in register r5
# [1619] Result:=ERROR_INVALID_PARAMETER;
	mov	r5,#87
# [1622] if Keyboard = nil then Exit;
	cmp	r4,#0
	beq	.Lj552
# Rescheduled
# Rescheduled
# [1623] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r4]
	ldr	r1,.Lj556
	cmp	r0,r1
	bne	.Lj552
# [1626] Result:=ERROR_IN_USE;
	ldr	r5,.Lj559
# [1627] if KeyboardDeviceCheck(Keyboard) = Keyboard then Exit;
	mov	r0,r4
	bl	KEYBOARD_$$_KEYBOARDDEVICECHECK$PKEYBOARDDEVICE$$PKEYBOARDDEVICE
	cmp	r0,r4
	beq	.Lj552
# [1630] if Keyboard.Device.DeviceState <> DEVICE_STATE_UNREGISTERED then Exit;
	ldr	r0,[r4, #8]
	cmp	r0,#0
	bne	.Lj552
# [1633] if Keyboard.Buffer.Wait <> INVALID_HANDLE_VALUE then
	ldr	r1,[r4, #92]
	mvn	r0,#0
	cmp	r1,r0
# [1635] SemaphoreDestroy(Keyboard.Buffer.Wait);
	ldrne	r0,[r4, #92]
	blne	THREADS_$$_SEMAPHOREDESTROY$LONGINT$$LONGWORD
# [1639] if Keyboard.Lock <> INVALID_HANDLE_VALUE then
	ldr	r0,[r4, #80]
	mvn	r1,#0
	cmp	r0,r1
# [1641] MutexDestroy(Keyboard.Lock);
	ldrne	r0,[r4, #80]
	blne	THREADS_$$_MUTEXDESTROY$LONGINT$$LONGWORD
# [1645] Result:=DeviceDestroy(@Keyboard.Device);
	mov	r0,r4
# Var Keyboard located in register r0
	bl	DEVICES_$$_DEVICEDESTROY$PDEVICE$$LONGWORD
	mov	r5,r0
.Lj552:
# [1646] end;
	mov	r0,r5
	ldmfd	r13!,{r4,r5,r15}
.Lj556:
	.long	-1392247236
.Lj559:
	.long	1000003
.Le18:
	.size	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD, .Le18 - KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD

.section .text.n_keyboard_$$_keyboarddeviceregister$pkeyboarddevice$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEREGISTER$PKEYBOARDDEVICE$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICEREGISTER$PKEYBOARDDEVICE$$LONGWORD:
# Temps allocated between r13+12 and r13+256
# [1656] begin
	stmfd	r13!,{r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var $result located at r13+4, size=OS_32
# Var KeyboardId located at r13+8, size=OS_32
	str	r0,[r13, #-256]!
	mov	r0,#0
	str	r0,[r13, #252]
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj570
# [1658] Result:=ERROR_INVALID_PARAMETER;
	mov	r1,#87
# Rescheduled
# [1661] if Keyboard = nil then Exit;
	ldr	r0,[r13]
	str	r1,[r13, #4]
	cmp	r0,#0
	beq	.Lj570
# [1662] if Keyboard.KeyboardId <> DEVICE_ID_ANY then Exit;
	ldr	r0,[r13]
	ldr	r0,[r0, #48]
	mvn	r1,#0
	cmp	r0,r1
	bne	.Lj570
# [1663] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj576
	cmp	r0,r1
	bne	.Lj570
# [1666] Result:=ERROR_ALREADY_EXISTS;
	mov	r2,#183
# Rescheduled
# [1667] if KeyboardDeviceCheck(Keyboard) = Keyboard then Exit;
	ldr	r0,[r13]
	str	r2,[r13, #4]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_KEYBOARDDEVICECHECK$PKEYBOARDDEVICE$$PKEYBOARDDEVICE
# Rescheduled
	ldr	r1,[r13]
	cmp	r0,r1
	beq	.Lj570
# [1670] if Keyboard.Device.DeviceState <> DEVICE_STATE_UNREGISTERED then Exit;
	ldr	r0,[r13]
	ldr	r0,[r0, #8]
	cmp	r0,#0
	bne	.Lj570
# [1673] if CriticalSectionLock(KeyboardTableLock) = ERROR_SUCCESS then
	ldr	r0,.Lj583
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONLOCK$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj585
# [1675] try
	add	r2,r13,#132
	add	r1,r13,#144
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #248]
	cmp	r0,#0
	bne	.Lj586
# [1677] KeyboardId:=0;
	mov	r0,#0
	str	r0,[r13, #8]
# [1678] while KeyboardDeviceFind(KeyboardId) <> nil do
	b	.Lj590
	.balign 4
.Lj589:
# [1680] Inc(KeyboardId);
	ldr	r0,[r13, #8]
	add	r0,r0,#1
	str	r0,[r13, #8]
.Lj590:
	ldr	r0,[r13, #8]
	bl	KEYBOARD_$$_KEYBOARDDEVICEFIND$LONGWORD$$PKEYBOARDDEVICE
	cmp	r0,#0
	bne	.Lj589
# Rescheduled
# Rescheduled
# [1682] Keyboard.KeyboardId:=KeyboardId;
	ldr	r1,[r13]
	ldr	r0,[r13, #8]
	str	r0,[r1, #48]
# [1685] Keyboard.Device.DeviceName:=KEYBOARD_NAME_PREFIX + IntToStr(Keyboard.KeyboardId);
	ldr	r0,[r13]
	ldr	r1,[r0, #48]
	mov	r2,#0
	add	r0,r13,#252
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
# Rescheduled
	ldr	r0,[r13]
	ldr	r2,[r13, #252]
	add	r0,r0,#12
# Rescheduled
	ldr	r1,.Lj592
	mov	r3,#0
	bl	fpc_ansistr_concat
# [1686] Keyboard.Device.DeviceClass:=DEVICE_CLASS_KEYBOARD;
	ldr	r1,[r13]
	mov	r0,#9
	str	r0,[r1, #16]
# [1689] Result:=DeviceRegister(@Keyboard.Device);
	ldr	r0,[r13]
	bl	DEVICES_$$_DEVICEREGISTER$PDEVICE$$LONGWORD
	str	r0,[r13, #4]
# Peephole StrLdr2StrMov 1 done
# [1690] if Result <> ERROR_SUCCESS then
	cmp	r0,#0
# [1692] Keyboard.KeyboardId:=DEVICE_ID_ANY;
	ldrne	r1,[r13]
	mvnne	r0,#0
	strne	r0,[r1, #48]
# [1693] Exit;
	bne	.Lj588
# [1697] if KeyboardTable = nil then
	ldr	r0,.Lj595
	ldr	r0,[r0]
	cmp	r0,#0
# Rescheduled
# Rescheduled
# [1699] KeyboardTable:=Keyboard;
	ldreq	r0,[r13]
	ldreq	r1,.Lj595
	streq	r0,[r1]
	beq	.Lj599
# Rescheduled
# [1703] Keyboard.Next:=KeyboardTable;
	ldr	r0,.Lj595
	ldr	r3,[r13]
# Rescheduled
	ldr	r2,.Lj601
	ldr	r1,[r0]
# Rescheduled
# [1704] KeyboardTable.Prev:=Keyboard;
	ldr	r0,.Lj595
	str	r1,[r3, r2]
	ldr	r2,[r0]
# Rescheduled
# Rescheduled
	ldr	r1,[r13]
	ldr	r0,.Lj603
	str	r1,[r2, r0]
# Rescheduled
# Rescheduled
# [1705] KeyboardTable:=Keyboard;
	ldr	r0,[r13]
	ldr	r1,.Lj595
	str	r0,[r1]
.Lj599:
# [1709] Inc(KeyboardTableCount);
	ldr	r1,.Lj605
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [1712] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #4]
.Lj586:
	bl	fpc_popaddrstack
# [1714] CriticalSectionUnlock(KeyboardTableLock);
	ldr	r0,.Lj583
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONUNLOCK$LONGINT$$LONGWORD
	ldr	r0,[r13, #248]
	cmp	r0,#0
	beq	.Lj587
	cmp	r0,#2
	beq	.Lj570
	bl	fpc_reraise
.Lj588:
	mov	r0,#2
	str	r0,[r13, #248]
	b	.Lj586
.Lj587:
	b	.Lj607
.Lj585:
# [1719] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #4]
.Lj607:
.Lj570:
	bl	fpc_popaddrstack
# [1721] end;
	add	r0,r13,#252
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r13, #128]
	cmp	r0,#0
	blne	fpc_reraise
	ldr	r0,[r13, #4]
	add	r13,r13,#256
	ldmfd	r13!,{r15}
.Lj576:
	.long	-1392247236
.Lj583:
	.long	TC_$KEYBOARD_$$_KEYBOARDTABLELOCK
.Lj592:
	.long	.Ld18
.Lj595:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLE
.Lj601:
	.long	6264
.Lj603:
	.long	6260
.Lj605:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLECOUNT
.Le19:
	.size	KEYBOARD_$$_KEYBOARDDEVICEREGISTER$PKEYBOARDDEVICE$$LONGWORD, .Le19 - KEYBOARD_$$_KEYBOARDDEVICEREGISTER$PKEYBOARDDEVICE$$LONGWORD

.section .text.n_keyboard_$$_keyboarddevicederegister$pkeyboarddevice$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD:
# Temps allocated between r13+16 and r13+136
# [1732] begin
	stmfd	r13!,{r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var $result located at r13+4, size=OS_32
# Var Prev located at r13+8, size=OS_32
# Var Next located at r13+12, size=OS_32
	str	r0,[r13, #-136]!
# [1734] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [1737] if Keyboard = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #4]
	cmp	r1,#0
	beq	.Lj608
# [1738] if Keyboard.KeyboardId = DEVICE_ID_ANY then Exit;
	ldr	r0,[r13]
	ldr	r1,[r0, #48]
	mvn	r0,#0
	cmp	r1,r0
	beq	.Lj608
# [1739] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj614
	cmp	r0,r1
	bne	.Lj608
# [1742] Result:=ERROR_NOT_FOUND;
	mov	r2,#1168
# Rescheduled
# [1743] if KeyboardDeviceCheck(Keyboard) <> Keyboard then Exit;
	ldr	r0,[r13]
	str	r2,[r13, #4]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_KEYBOARDDEVICECHECK$PKEYBOARDDEVICE$$PKEYBOARDDEVICE
# Rescheduled
	ldr	r1,[r13]
	cmp	r0,r1
	bne	.Lj608
# [1746] if Keyboard.Device.DeviceState <> DEVICE_STATE_REGISTERED then Exit;
	ldr	r0,[r13]
	ldr	r0,[r0, #8]
	cmp	r0,#1
	bne	.Lj608
# [1749] if CriticalSectionLock(KeyboardTableLock) = ERROR_SUCCESS then
	ldr	r0,.Lj621
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONLOCK$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj623
# [1751] try
	add	r2,r13,#16
	add	r1,r13,#28
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #132]
	cmp	r0,#0
	bne	.Lj624
# [1753] Result:=DeviceDeregister(@Keyboard.Device);
	ldr	r0,[r13]
	bl	DEVICES_$$_DEVICEDEREGISTER$PDEVICE$$LONGWORD
	str	r0,[r13, #4]
# Peephole StrLdr2StrMov 1 done
# [1754] if Result <> ERROR_SUCCESS then Exit;
	cmp	r0,#0
	bne	.Lj626
# Rescheduled
# Rescheduled
# [1757] Prev:=Keyboard.Prev;
	ldr	r1,[r13]
	ldr	r0,.Lj629
	ldr	r0,[r1, r0]
	str	r0,[r13, #8]
# Rescheduled
# Rescheduled
# [1758] Next:=Keyboard.Next;
	ldr	r0,[r13]
	ldr	r1,.Lj630
	ldr	r1,[r0, r1]
# Rescheduled
# [1759] if Prev = nil then
	ldr	r0,[r13, #8]
	str	r1,[r13, #12]
	cmp	r0,#0
	bne	.Lj632
# Rescheduled
# Rescheduled
# [1761] KeyboardTable:=Next;
	ldr	r0,[r13, #12]
	ldr	r1,.Lj633
	str	r0,[r1]
# [1762] if Next <> nil then
	ldr	r0,[r13, #12]
	cmp	r0,#0
	beq	.Lj637
# [1764] Next.Prev:=nil;
	ldr	r1,[r13, #12]
# Rescheduled
	ldr	r2,.Lj629
	mov	r0,#0
	str	r0,[r1, r2]
	b	.Lj637
.Lj632:
# [1769] Prev.Next:=Next;
	ldr	r1,[r13, #8]
# Rescheduled
# Rescheduled
	ldr	r2,[r13, #12]
	ldr	r0,.Lj630
	str	r2,[r1, r0]
# [1770] if Next <> nil then
	ldr	r0,[r13, #12]
	cmp	r0,#0
# [1772] Next.Prev:=Prev;
	ldrne	r1,[r13, #12]
# Rescheduled
# Rescheduled
	ldrne	r2,[r13, #8]
	ldrne	r0,.Lj629
	strne	r2,[r1, r0]
.Lj637:
# [1777] Dec(KeyboardTableCount);
	ldr	r1,.Lj642
	ldr	r0,[r1]
	sub	r0,r0,#1
	str	r0,[r1]
# [1780] Keyboard.KeyboardId:=DEVICE_ID_ANY;
	ldr	r0,[r13]
	mvn	r1,#0
	str	r1,[r0, #48]
# [1783] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #4]
.Lj624:
	bl	fpc_popaddrstack
# [1785] CriticalSectionUnlock(KeyboardTableLock);
	ldr	r0,.Lj621
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONUNLOCK$LONGINT$$LONGWORD
	ldr	r0,[r13, #132]
	cmp	r0,#0
	beq	.Lj625
	cmp	r0,#2
	beq	.Lj608
	bl	fpc_reraise
.Lj626:
	mov	r0,#2
	str	r0,[r13, #132]
	b	.Lj624
.Lj625:
	b	.Lj644
.Lj623:
# [1790] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #4]
.Lj644:
.Lj608:
# [1792] end;
	ldr	r0,[r13, #4]
	add	r13,r13,#136
	ldmfd	r13!,{r15}
.Lj614:
	.long	-1392247236
.Lj621:
	.long	TC_$KEYBOARD_$$_KEYBOARDTABLELOCK
.Lj629:
	.long	6260
.Lj630:
	.long	6264
.Lj633:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLE
.Lj642:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLECOUNT
.Le20:
	.size	KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD, .Le20 - KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD

.section .text.n_keyboard_$$_keyboarddevicefind$longword$$pkeyboarddevice
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEFIND$LONGWORD$$PKEYBOARDDEVICE
KEYBOARD_$$_KEYBOARDDEVICEFIND$LONGWORD$$PKEYBOARDDEVICE:
# Temps allocated between r13+12 and r13+132
# [1802] begin
	stmfd	r13!,{r14}
# Peephole Add/Sub to Preindexed done
# Var KeyboardId located at r13+0, size=OS_32
# Var $result located at r13+4, size=OS_32
# Var Keyboard located at r13+8, size=OS_32
	str	r0,[r13, #-132]!
# [1804] Result:=nil;
	mov	r0,#0
	str	r0,[r13, #4]
# [1807] if KeyboardId = DEVICE_ID_ANY then Exit;
	ldr	r1,[r13]
	mvn	r0,#0
	cmp	r1,r0
	beq	.Lj645
# [1810] if CriticalSectionLock(KeyboardTableLock) = ERROR_SUCCESS then
	ldr	r0,.Lj649
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONLOCK$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj651
# [1812] try
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj652
# [1814] Keyboard:=KeyboardTable;
	ldr	r0,.Lj655
	ldr	r0,[r0]
	str	r0,[r13, #8]
# [1815] while Keyboard <> nil do
	b	.Lj657
	.balign 4
.Lj656:
# [1818] if Keyboard.Device.DeviceState = DEVICE_STATE_REGISTERED then
	ldr	r0,[r13, #8]
	ldr	r0,[r0, #8]
	cmp	r0,#1
	bne	.Lj660
# [1821] if Keyboard.KeyboardId = KeyboardId then
	ldr	r0,[r13, #8]
# Rescheduled
# Rescheduled
	ldr	r0,[r0, #48]
	ldr	r1,[r13]
	cmp	r0,r1
# [1823] Result:=Keyboard;
	ldreq	r0,[r13, #8]
	streq	r0,[r13, #4]
# [1824] Exit;
	beq	.Lj654
.Lj660:
# Rescheduled
# Rescheduled
# [1829] Keyboard:=Keyboard.Next;
	ldr	r0,[r13, #8]
	ldr	r1,.Lj663
	ldr	r0,[r0, r1]
	str	r0,[r13, #8]
.Lj657:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	bne	.Lj656
.Lj652:
	bl	fpc_popaddrstack
# [1833] CriticalSectionUnlock(KeyboardTableLock);
	ldr	r0,.Lj649
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONUNLOCK$LONGINT$$LONGWORD
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj653
	cmp	r0,#2
	beq	.Lj645
	bl	fpc_reraise
.Lj654:
	mov	r0,#2
	str	r0,[r13, #128]
	b	.Lj652
.Lj653:
.Lj651:
.Lj645:
# [1836] end;
	ldr	r0,[r13, #4]
	add	r13,r13,#132
	ldmfd	r13!,{r15}
.Lj649:
	.long	TC_$KEYBOARD_$$_KEYBOARDTABLELOCK
.Lj655:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLE
.Lj663:
	.long	6264
.Le21:
	.size	KEYBOARD_$$_KEYBOARDDEVICEFIND$LONGWORD$$PKEYBOARDDEVICE, .Le21 - KEYBOARD_$$_KEYBOARDDEVICEFIND$LONGWORD$$PKEYBOARDDEVICE

.section .text.n_keyboard_$$_keyboarddevicefindbyname$ansistring$$pkeyboarddevice
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEFINDBYNAME$ANSISTRING$$PKEYBOARDDEVICE
KEYBOARD_$$_KEYBOARDDEVICEFINDBYNAME$ANSISTRING$$PKEYBOARDDEVICE:
# [1844] begin
	stmfd	r13!,{r14}
# Var Name located in register r0
# Var $result located in register r0
# Var Name located in register r0
# [1846] Result:=PKeyboardDevice(DeviceFindByName(Name));
	bl	DEVICES_$$_DEVICEFINDBYNAME$ANSISTRING$$PDEVICE
# Var $result located in register r0
# [1847] end;
	ldmfd	r13!,{r15}
.Le22:
	.size	KEYBOARD_$$_KEYBOARDDEVICEFINDBYNAME$ANSISTRING$$PKEYBOARDDEVICE, .Le22 - KEYBOARD_$$_KEYBOARDDEVICEFINDBYNAME$ANSISTRING$$PKEYBOARDDEVICE

.section .text.n_keyboard_$$_keyboarddevicefindbydescription$ansistring$$pkeyboarddevice
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEFINDBYDESCRIPTION$ANSISTRING$$PKEYBOARDDEVICE
KEYBOARD_$$_KEYBOARDDEVICEFINDBYDESCRIPTION$ANSISTRING$$PKEYBOARDDEVICE:
# [1855] begin
	stmfd	r13!,{r14}
# Var Description located in register r0
# Var $result located in register r0
# Var Description located in register r0
# [1857] Result:=PKeyboardDevice(DeviceFindByDescription(Description));
	bl	DEVICES_$$_DEVICEFINDBYDESCRIPTION$ANSISTRING$$PDEVICE
# Var $result located in register r0
# [1858] end;
	ldmfd	r13!,{r15}
.Le23:
	.size	KEYBOARD_$$_KEYBOARDDEVICEFINDBYDESCRIPTION$ANSISTRING$$PKEYBOARDDEVICE, .Le23 - KEYBOARD_$$_KEYBOARDDEVICEFINDBYDESCRIPTION$ANSISTRING$$PKEYBOARDDEVICE

.section .text.n_keyboard_$$_keyboarddeviceenumerate$tkeyboardenumerate$pointer$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICEENUMERATE$TKEYBOARDENUMERATE$POINTER$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICEENUMERATE$TKEYBOARDENUMERATE$POINTER$$LONGWORD:
# Temps allocated between r13+16 and r13+136
# [1869] begin
	stmfd	r13!,{r14}
# Peephole Add/Sub to Preindexed done
# Var Callback located at r13+0, size=OS_32
# Var Data located at r13+4, size=OS_32
# Var $result located at r13+8, size=OS_32
# Var Keyboard located at r13+12, size=OS_32
	str	r0,[r13, #-136]!
	str	r1,[r13, #4]
# [1871] Result:=ERROR_INVALID_PARAMETER;
	mov	r1,#87
# Rescheduled
# [1874] if not Assigned(Callback) then Exit;
	ldr	r0,[r13]
	str	r1,[r13, #8]
	cmp	r0,#0
	beq	.Lj669
# [1877] if CriticalSectionLock(KeyboardTableLock) = ERROR_SUCCESS then
	ldr	r0,.Lj673
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONLOCK$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj675
# [1879] try
	add	r2,r13,#16
	add	r1,r13,#28
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #132]
	cmp	r0,#0
	bne	.Lj676
# [1881] Keyboard:=KeyboardTable;
	ldr	r0,.Lj679
	ldr	r0,[r0]
	str	r0,[r13, #12]
# [1882] while Keyboard <> nil do
	b	.Lj681
	.balign 4
.Lj680:
# [1885] if Keyboard.Device.DeviceState = DEVICE_STATE_REGISTERED then
	ldr	r0,[r13, #12]
	ldr	r0,[r0, #8]
	cmp	r0,#1
	bne	.Lj684
# [1887] if Callback(Keyboard,Data) <> ERROR_SUCCESS then Exit;
	ldr	r1,[r13, #4]
# Rescheduled
	ldr	r2,[r13]
	ldr	r0,[r13, #12]
	blx	r2
	cmp	r0,#0
	bne	.Lj678
.Lj684:
# Rescheduled
# Rescheduled
# [1891] Keyboard:=Keyboard.Next;
	ldr	r0,[r13, #12]
	ldr	r1,.Lj687
	ldr	r0,[r0, r1]
	str	r0,[r13, #12]
.Lj681:
	ldr	r0,[r13, #12]
	cmp	r0,#0
	bne	.Lj680
# [1895] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #8]
.Lj676:
	bl	fpc_popaddrstack
# [1898] CriticalSectionUnlock(KeyboardTableLock);
	ldr	r0,.Lj673
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONUNLOCK$LONGINT$$LONGWORD
	ldr	r0,[r13, #132]
	cmp	r0,#0
	beq	.Lj677
	cmp	r0,#2
	beq	.Lj669
	bl	fpc_reraise
.Lj678:
	mov	r0,#2
	str	r0,[r13, #132]
	b	.Lj676
.Lj677:
	b	.Lj689
.Lj675:
# [1903] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #8]
.Lj689:
.Lj669:
# [1905] end;
	ldr	r0,[r13, #8]
	add	r13,r13,#136
	ldmfd	r13!,{r15}
.Lj673:
	.long	TC_$KEYBOARD_$$_KEYBOARDTABLELOCK
.Lj679:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLE
.Lj687:
	.long	6264
.Le24:
	.size	KEYBOARD_$$_KEYBOARDDEVICEENUMERATE$TKEYBOARDENUMERATE$POINTER$$LONGWORD, .Le24 - KEYBOARD_$$_KEYBOARDDEVICEENUMERATE$TKEYBOARDENUMERATE$POINTER$$LONGWORD

.section .text.n_keyboard_$$_keyboarddevicenotification$crc4a633341
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICENOTIFICATION$crc4A633341
KEYBOARD_$$_KEYBOARDDEVICENOTIFICATION$crc4A633341:
# [1916] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#52
# Var Keyboard located in register r4
# Var Callback located in register r5
# Var Data located in register r6
# Var Notification located in register r7
# Var Flags located in register r9
# Var $result located in register r8
	mov	r4,r0
	mov	r5,r1
	mov	r6,r2
	mov	r7,r3
	ldr	r9,[r11, #4]
# Var $result located in register r8
# [1918] Result:=ERROR_INVALID_PARAMETER;
	mov	r8,#87
# [1921] if Keyboard = nil then
	cmp	r4,#0
	bne	.Lj693
# [1923] Result:=DeviceNotification(nil,DEVICE_CLASS_KEYBOARD,Callback,Data,Notification,Flags);
	str	r9,[r13, #4]
	str	r7,[r13]
	mov	r3,r6
	mov	r2,r5
	mov	r1,#9
	mov	r0,#0
	bl	DEVICES_$$_DEVICENOTIFICATION$crc39CF6B57
	mov	r8,r0
	b	.Lj694
.Lj693:
# Rescheduled
# Rescheduled
# [1928] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r4]
	ldr	r1,.Lj695
	cmp	r0,r1
	bne	.Lj690
# [1930] Result:=DeviceNotification(@Keyboard.Device,DEVICE_CLASS_KEYBOARD,Callback,Data,Notification,Flags);
	str	r9,[r13, #4]
	str	r7,[r13]
	mov	r0,r4
	mov	r3,r6
	mov	r2,r5
	mov	r1,#9
	bl	DEVICES_$$_DEVICENOTIFICATION$crc39CF6B57
	mov	r8,r0
.Lj694:
.Lj690:
# [1932] end;
	mov	r0,r8
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r11,r13,r15}
.Lj695:
	.long	-1392247236
.Le25:
	.size	KEYBOARD_$$_KEYBOARDDEVICENOTIFICATION$crc4A633341, .Le25 - KEYBOARD_$$_KEYBOARDDEVICENOTIFICATION$crc4A633341

.section .text.n_keyboard_$$_sysconsolegetkey$char$pointer$$boolean
	.balign 4
.globl	KEYBOARD_$$_SYSCONSOLEGETKEY$CHAR$POINTER$$BOOLEAN
KEYBOARD_$$_SYSCONSOLEGETKEY$CHAR$POINTER$$BOOLEAN:
# [1944] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#20
# Var ACh located in register r4
# Var AUserData located in register r1
# Var $result located in register r5
# Var Status located in register r6
# Var CharCode located at r13+0, size=OS_8
# Var Count located at r13+4, size=OS_32
# Var Data located at r13+8, size=OS_NO
	mov	r4,r0
# Var $result located in register r5
# Rescheduled
# [1949] if SysConsoleLastCode <> 0 then
	ldr	r0,.Lj700
# Rescheduled
	ldrb	r0,[r0]
# [1946] Result:=True;
	mov	r5,#1
	cmp	r0,#0
	beq	.Lj702
# [1952] ACh:=Char(SysConsoleLastCode);
	ldr	r0,.Lj700
	ldrb	r1,[r0]
# Rescheduled
# [1953] if SysConsoleLastCode = $FF then ACh:=#0;
	ldr	r0,.Lj700
	strb	r1,[r4]
	ldrb	r0,[r0]
	cmp	r0,#255
	moveq	r0,#0
	streqb	r0,[r4]
# Rescheduled
# [1956] SysConsoleLastCode:=0;
	ldr	r1,.Lj700
	mov	r0,#0
	strb	r0,[r1]
	b	.Lj708
.Lj702:
# [1961] Status:=KeyboardRead(@Data,SizeOf(TKeyboardData),Count);
	add	r0,r13,#8
	add	r3,r13,#4
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
# [1962] while Status = ERROR_SUCCESS do
	b	.Lj710
	.balign 4
.Lj709:
# [1965] if (Data.Modifiers and (KEYBOARD_KEYUP or KEYBOARD_DEADKEY)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	ands	r0,r0,#73728
	bne	.Lj713
# Peephole Add/SubLdr2Ldr done
# Rescheduled
# [1968] CharCode:=Data.CharCode;
	ldrb	r1,[r13, #16]
# Peephole MovLdr2Ldr done
	strb	r1,[r13]
# [1971] if KeyboardRemapKeyCode(Data.ScanCode,Data.KeyCode,Byte(CharCode),Data.Modifiers) then
	ldr	r3,[r13, #8]
	ldrh	r1,[r13, #14]
	ldrh	r0,[r13, #12]
	mov	r2,r13
	bl	KEYBOARD_$$_KEYBOARDREMAPKEYCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN
	cmp	r0,#0
	beq	.Lj715
# Rescheduled
# Rescheduled
# [1974] SysConsoleLastCode:=Byte(CharCode);
	ldrb	r1,[r13]
	ldr	r0,.Lj700
	strb	r1,[r0]
# [1977] ACh:=#0;
	mov	r0,#0
	strb	r0,[r4]
	b	.Lj711
.Lj715:
# [1982] if CharCode = #0 then
	ldrb	r0,[r13]
	cmp	r0,#0
	bne	.Lj719
# Rescheduled
# [1985] SysConsoleLastCode:=$FF;
	ldr	r0,.Lj700
	mov	r1,#255
	strb	r1,[r0]
# [1988] ACh:=#0;
	mov	r0,#0
	strb	r0,[r4]
	b	.Lj711
.Lj719:
# [1993] if (Data.Modifiers and (KEYBOARD_LEFT_CTRL or KEYBOARD_RIGHT_CTRL)) <> 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	ands	r0,r0,#17
	beq	.Lj723
# [1996] CharCode:=Char(KeyboardRemapCtrlCode(Data.KeyCode,Byte(CharCode)));
	ldrb	r1,[r13]
# Rescheduled
	ldrh	r0,[r13, #14]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD
# Peephole AndStrb2Strb done
	strb	r0,[r13]
.Lj723:
# [2000] ACh:=CharCode;
	ldrb	r0,[r13]
	strb	r0,[r4]
# [2004] Break;
	b	.Lj711
.Lj713:
# [2008] Status:=KeyboardRead(@Data,SizeOf(TKeyboardData),Count);
	add	r0,r13,#8
	add	r3,r13,#4
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
.Lj710:
	cmp	r6,#0
	beq	.Lj709
.Lj711:
# [2010] if Status <> ERROR_SUCCESS then
	cmp	r6,#0
# [2012] ACh:=#0;
	movne	r0,#0
	strneb	r0,[r4]
# [2014] Result:=False;
	movne	r5,#0
.Lj708:
# [2017] end;
	mov	r0,r5
	add	r13,r13,#20
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj700:
	.long	U_$KEYBOARD_$$_SYSCONSOLELASTCODE
.Le26:
	.size	KEYBOARD_$$_SYSCONSOLEGETKEY$CHAR$POINTER$$BOOLEAN, .Le26 - KEYBOARD_$$_SYSCONSOLEGETKEY$CHAR$POINTER$$BOOLEAN

.section .text.n_keyboard_$$_sysconsolepeekkey$char$pointer$$boolean
	.balign 4
.globl	KEYBOARD_$$_SYSCONSOLEPEEKKEY$CHAR$POINTER$$BOOLEAN
KEYBOARD_$$_SYSCONSOLEPEEKKEY$CHAR$POINTER$$BOOLEAN:
# [2028] begin
	stmfd	r13!,{r4,r5,r6,r14}
	sub	r13,r13,#20
# Var ACh located in register r4
# Var AUserData located in register r1
# Var $result located in register r5
# Var Status located in register r6
# Var CharCode located at r13+0, size=OS_8
# Var Count located at r13+4, size=OS_32
# Var Data located at r13+8, size=OS_NO
	mov	r4,r0
# Var $result located in register r5
# Rescheduled
# [2033] if SysConsoleLastCode <> 0 then
	ldr	r0,.Lj728
# Rescheduled
	ldrb	r0,[r0]
# [2030] Result:=False;
	mov	r5,#0
	cmp	r0,#0
	beq	.Lj730
# [2036] ACh:=Char(SysConsoleLastCode);
	ldr	r0,.Lj728
	ldrb	r0,[r0]
	strb	r0,[r4]
# [2038] Result:=True;
	mov	r5,#1
	b	.Lj732
.Lj730:
# [2043] Status:=KeyboardReadEx(@Data,SizeOf(TKeyboardData),KEYBOARD_FLAG_NON_BLOCK or KEYBOARD_FLAG_PEEK_BUFFER,Count);
	add	r0,r13,#8
	add	r3,r13,#4
	mov	r2,#5
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
# [2044] while Status = ERROR_SUCCESS do
	b	.Lj734
	.balign 4
.Lj733:
# [2047] if (Data.Modifiers and (KEYBOARD_KEYUP or KEYBOARD_DEADKEY)) <> 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	ands	r0,r0,#73728
	beq	.Lj737
# [2050] KeyboardReadEx(@Data,SizeOf(TKeyboardData),KEYBOARD_FLAG_NON_BLOCK,Count);
	add	r0,r13,#8
	add	r3,r13,#4
	mov	r2,#1
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	b	.Lj738
.Lj737:
# Peephole Add/SubLdr2Ldr done
# Rescheduled
# [2055] CharCode:=Data.CharCode;
	ldrb	r1,[r13, #16]
# Peephole MovLdr2Ldr done
	strb	r1,[r13]
# [2058] if KeyboardRemapKeyCode(Data.ScanCode,Data.KeyCode,Byte(CharCode),Data.Modifiers) then
	ldr	r3,[r13, #8]
	ldrh	r1,[r13, #14]
	ldrh	r0,[r13, #12]
	mov	r2,r13
	bl	KEYBOARD_$$_KEYBOARDREMAPKEYCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN
	cmp	r0,#0
# [2061] ACh:=#0;
	movne	r0,#0
	strneb	r0,[r4]
	bne	.Lj741
# [2066] if CharCode = #0 then
	ldrb	r0,[r13]
	cmp	r0,#0
# [2069] ACh:=#0;
	moveq	r0,#0
	streqb	r0,[r4]
	beq	.Lj744
# [2074] if (Data.Modifiers and (KEYBOARD_LEFT_CTRL or KEYBOARD_RIGHT_CTRL)) <> 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	ands	r0,r0,#17
	beq	.Lj746
# [2077] CharCode:=Char(KeyboardRemapCtrlCode(Data.KeyCode,Byte(CharCode)));
	ldrb	r1,[r13]
# Rescheduled
	ldrh	r0,[r13, #14]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD
# Peephole AndStrb2Strb done
	strb	r0,[r13]
.Lj746:
# [2081] ACh:=CharCode;
	ldrb	r0,[r13]
	strb	r0,[r4]
.Lj744:
.Lj741:
# [2085] Result:=True;
	mov	r5,#1
# [2086] Break;
	b	.Lj735
.Lj738:
# [2090] Status:=KeyboardReadEx(@Data,SizeOf(TKeyboardData),KEYBOARD_FLAG_NON_BLOCK or KEYBOARD_FLAG_PEEK_BUFFER,Count);
	add	r0,r13,#8
	add	r3,r13,#4
	mov	r2,#5
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
.Lj734:
	cmp	r6,#0
	beq	.Lj733
.Lj735:
# [2092] if Status <> ERROR_SUCCESS then
	cmp	r6,#0
# [2094] ACh:=#0;
	movne	r0,#0
	strneb	r0,[r4]
.Lj732:
# [2097] end;
	mov	r0,r5
	add	r13,r13,#20
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj728:
	.long	U_$KEYBOARD_$$_SYSCONSOLELASTCODE
.Le27:
	.size	KEYBOARD_$$_SYSCONSOLEPEEKKEY$CHAR$POINTER$$BOOLEAN, .Le27 - KEYBOARD_$$_SYSCONSOLEPEEKKEY$CHAR$POINTER$$BOOLEAN

.section .text.n_keyboard_$$_sysconsolereadchar$char$pointer$$boolean
	.balign 4
.globl	KEYBOARD_$$_SYSCONSOLEREADCHAR$CHAR$POINTER$$BOOLEAN
KEYBOARD_$$_SYSCONSOLEREADCHAR$CHAR$POINTER$$BOOLEAN:
# [2108] begin
	stmfd	r13!,{r4,r5,r6,r7,r14}
	sub	r13,r13,#16
# Var ACh located in register r4
# Var AUserData located in register r1
# Var $result located in register r5
# Var CharCode located in register r7
# Var Status located in register r6
# Var Count located at r13+0, size=OS_32
# Var Data located at r13+4, size=OS_NO
	mov	r4,r0
# Var $result located in register r5
# [2110] Result:=True;
	mov	r5,#1
# [2113] Status:=KeyboardRead(@Data,SizeOf(TKeyboardData),Count);
	add	r0,r13,#4
	mov	r3,r13
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
# Var Status located in register r6
# [2114] while Status = ERROR_SUCCESS do
	b	.Lj752
	.balign 4
.Lj751:
# [2117] if (Data.Modifiers and (KEYBOARD_KEYUP or KEYBOARD_DEADKEY)) = 0 then
	ldr	r0,[r13, #4]
# Peephole OpCmp2OpS done
	ands	r0,r0,#73728
	bne	.Lj755
# [2119] if Data.CharCode <> #0 then
	ldrb	r0,[r13, #12]
	cmp	r0,#0
	beq	.Lj757
# Rescheduled
# [2125] if (Data.Modifiers and (KEYBOARD_LEFT_CTRL or KEYBOARD_RIGHT_CTRL)) <> 0 then
	ldr	r0,[r13, #4]
# [2122] CharCode:=Data.CharCode;
	ldrb	r7,[r13, #12]
# Peephole OpCmp2OpS done
	ands	r0,r0,#17
	beq	.Lj759
# Rescheduled
# [2128] CharCode:=Char(KeyboardRemapCtrlCode(Data.KeyCode,Byte(CharCode)));
	ldrh	r0,[r13, #10]
	mov	r1,r7
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD
	and	r7,r0,#255
# Peephole DataMov2Data removed superfluous mov
.Lj759:
# [2131] ACh:=CharCode;
	strb	r7,[r4]
# [2132] Break;
	b	.Lj753
.Lj757:
.Lj755:
# [2137] Status:=KeyboardRead(@Data,SizeOf(TKeyboardData),Count);
	add	r0,r13,#4
	mov	r3,r13
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
.Lj752:
	cmp	r6,#0
	beq	.Lj751
.Lj753:
# [2139] if Status <> ERROR_SUCCESS then
	cmp	r6,#0
# [2141] ACh:=#0;
	movne	r0,#0
	strneb	r0,[r4]
# [2143] end;
	mov	r0,r5
	add	r13,r13,#16
	ldmfd	r13!,{r4,r5,r6,r7,r15}
.Le28:
	.size	KEYBOARD_$$_SYSCONSOLEREADCHAR$CHAR$POINTER$$BOOLEAN, .Le28 - KEYBOARD_$$_SYSCONSOLEREADCHAR$CHAR$POINTER$$BOOLEAN

.section .text.n_keyboard_$$_sysconsolereadwidechar$widechar$pointer$$boolean
	.balign 4
.globl	KEYBOARD_$$_SYSCONSOLEREADWIDECHAR$WIDECHAR$POINTER$$BOOLEAN
KEYBOARD_$$_SYSCONSOLEREADWIDECHAR$WIDECHAR$POINTER$$BOOLEAN:
# [2154] begin
	stmfd	r13!,{r4,r5,r6,r7,r14}
	sub	r13,r13,#16
# Var ACh located in register r4
# Var AUserData located in register r1
# Var $result located in register r5
# Var Status located in register r6
# Var CharUnicode located in register r7
# Var Count located at r13+0, size=OS_32
# Var Data located at r13+4, size=OS_NO
	mov	r4,r0
# Var $result located in register r5
# [2156] Result:=True;
	mov	r5,#1
# [2159] Status:=KeyboardRead(@Data,SizeOf(TKeyboardData),Count);
	add	r0,r13,#4
	mov	r3,r13
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
# Var Status located in register r6
# [2160] while Status = ERROR_SUCCESS do
	b	.Lj765
	.balign 4
.Lj764:
# [2163] if (Data.Modifiers and (KEYBOARD_KEYUP or KEYBOARD_DEADKEY)) = 0 then
	ldr	r0,[r13, #4]
# Peephole OpCmp2OpS done
	ands	r0,r0,#73728
	bne	.Lj768
# [2165] if Data.CharUnicode <> #0 then
	ldrh	r0,[r13, #14]
	cmp	r0,#0
	beq	.Lj770
# Rescheduled
# [2171] if (Data.Modifiers and (KEYBOARD_LEFT_CTRL or KEYBOARD_RIGHT_CTRL)) <> 0 then
	ldr	r0,[r13, #4]
# [2168] CharUnicode:=Data.CharUnicode;
	ldrh	r7,[r13, #14]
# Peephole OpCmp2OpS done
	ands	r0,r0,#17
	beq	.Lj772
# [2174] CharUnicode:=WideChar(KeyboardRemapCtrlCode(Data.KeyCode,Word(CharUnicode)));
	ldrh	r0,[r13, #10]
	mov	r1,r7
	bl	KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD
	mov	r7,r0
.Lj772:
# [2177] ACh:=CharUnicode;
	strh	r7,[r4]
# [2178] Break;
	b	.Lj766
.Lj770:
.Lj768:
# [2183] Status:=KeyboardRead(@Data,SizeOf(TKeyboardData),Count);
	add	r0,r13,#4
	mov	r3,r13
	mov	r2,#0
	mov	r1,#12
	bl	KEYBOARD_$$_KEYBOARDREADEX$POINTER$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	mov	r6,r0
.Lj765:
	cmp	r6,#0
	beq	.Lj764
.Lj766:
# [2185] if Status <> ERROR_SUCCESS then
	cmp	r6,#0
# [2187] ACh:=#0;
	movne	r0,#0
	strneh	r0,[r4]
# [2189] end;
	mov	r0,r5
	add	r13,r13,#16
	ldmfd	r13!,{r4,r5,r6,r7,r15}
.Le29:
	.size	KEYBOARD_$$_SYSCONSOLEREADWIDECHAR$WIDECHAR$POINTER$$BOOLEAN, .Le29 - KEYBOARD_$$_SYSCONSOLEREADWIDECHAR$WIDECHAR$POINTER$$BOOLEAN

.section .text.n_keyboard_$$_usbkeyboarddeviceread$pkeyboarddevice$pointer$longword$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD
KEYBOARD_$$_USBKEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD:
# Temps allocated between r13+24 and r13+144
# [2198] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var Buffer located at r13+4, size=OS_32
# Var Size located at r13+8, size=OS_32
# Var Count located at r13+12, size=OS_32
# Var $result located at r13+16, size=OS_32
# Var Offset located at r13+20, size=OS_32
	str	r0,[r13, #-144]!
	str	r1,[r13, #4]
	str	r2,[r13, #8]
	str	r3,[r13, #12]
# [2200] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [2203] if Keyboard = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #16]
	cmp	r1,#0
	beq	.Lj775
# [2204] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj779
	cmp	r0,r1
	bne	.Lj775
# [2207] if Buffer = nil then Exit;
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj775
# [2210] if Size < SizeOf(TKeyboardData) then Exit;
	ldr	r0,[r13, #8]
	cmp	r0,#12
	bcc	.Lj775
# [2213] if Keyboard.KeyboardState <> KEYBOARD_STATE_ATTACHED then Exit;
	ldr	r0,[r13]
	ldr	r0,[r0, #52]
	cmp	r0,#3
	bne	.Lj775
# [2220] Count:=0;
	ldr	r1,[r13, #12]
	mov	r0,#0
	str	r0,[r1]
# Peephole MovStrMov done
# [2221] Offset:=0;
	str	r0,[r13, #20]
# [2222] while Size >= SizeOf(TKeyboardData) do
	b	.Lj789
	.balign 4
.Lj788:
	ldr	r1,[r13]
# [2225] if ((Keyboard.Device.DeviceFlags and KEYBOARD_FLAG_NON_BLOCK) <> 0) and (Keyboard.Buffer.Count = 0) then
	ldr	r0,[r1, #28]
# Peephole OpCmp2OpS done
	ands	r0,r0,#1
	beq	.Lj792
	ldr	r0,[r1, #100]
	cmp	r0,#0
	bne	.Lj792
# [2227] if Count = 0 then Result:=ERROR_NO_MORE_ITEMS;
	ldr	r0,[r13, #12]
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj790
	mov	r0,#3
	orr	r0,r0,#256
	str	r0,[r13, #16]
# [2228] Break;
	b	.Lj790
.Lj792:
# [2232] if SemaphoreWait(Keyboard.Buffer.Wait) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #92]
	bl	THREADS_$$_SEMAPHOREWAIT$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj797
# [2235] if MutexLock(Keyboard.Lock) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj798
	cmp	r0,#0
	beq	.Lj798
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj803
	cmp	r1,r2
	bne	.Lj798
	ldr	r1,.Lj806
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj808
# Rescheduled
	ldr	r1,.Lj806
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj808:
.Lj798:
	cmp	r4,#0
	bne	.Lj811
# [2237] try
	add	r2,r13,#24
	add	r1,r13,#36
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #140]
	cmp	r0,#0
	bne	.Lj812
# Rescheduled
# [2239] PKeyboardData(PtrUInt(Buffer) + Offset)^:=Keyboard.Buffer.Buffer[Keyboard.Buffer.Start];
	ldr	r0,[r13, #20]
	ldr	r1,[r13, #4]
# Rescheduled
	ldr	r3,[r13]
	add	r0,r0,r1
	ldr	r2,[r3, #96]
	mov	r1,#12
	mla	r1,r2,r1,r3
# Peephole Add/Sub to Preindexed done
	ldr	r2,[r1, #104]!
	ldr	r3,[r1, #4]
	ldr	r1,[r1, #8]
	str	r2,[r0]
	str	r3,[r0, #4]
	str	r1,[r0, #8]
	ldr	r1,[r13]
# [2242] Keyboard.Buffer.Start:=(Keyboard.Buffer.Start + 1) mod KEYBOARD_BUFFER_SIZE;
	ldr	r0,[r1, #96]
	add	r0,r0,#1
	mov	r0,r0,lsl #23
	mov	r0,r0,lsr #23
	str	r0,[r1, #96]
# [2245] Dec(Keyboard.Buffer.Count);
	ldr	r1,[r13]
	ldr	r0,[r1, #100]
	sub	r0,r0,#1
	str	r0,[r1, #100]
# [2248] Inc(Count);
	ldr	r1,[r13, #12]
	ldr	r0,[r1]
	add	r0,r0,#1
	str	r0,[r1]
# [2251] Dec(Size,SizeOf(TKeyboardData));
	ldr	r0,[r13, #8]
	sub	r0,r0,#12
# Rescheduled
# [2252] Inc(Offset,SizeOf(TKeyboardData));
	ldr	r1,[r13, #20]
	str	r0,[r13, #8]
	add	r0,r1,#12
	str	r0,[r13, #20]
.Lj812:
	bl	fpc_popaddrstack
# [2255] MutexUnlock(Keyboard.Lock);
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj817
	cmp	r0,#0
	beq	.Lj817
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj803
	cmp	r2,r1
	bne	.Lj817
	ldr	r1,.Lj825
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj827
# Rescheduled
	ldr	r1,.Lj825
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj827:
.Lj817:
	ldr	r0,[r13, #140]
	cmp	r0,#0
	blne	fpc_reraise
	b	.Lj830
.Lj811:
# [2260] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [2261] Exit;
	b	.Lj775
.Lj797:
# [2266] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [2267] Exit;
	b	.Lj775
.Lj830:
# [2271] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
.Lj789:
	ldr	r0,[r13, #8]
	cmp	r0,#12
	bcs	.Lj788
.Lj790:
.Lj775:
# [2277] end;
	ldr	r0,[r13, #16]
	add	r13,r13,#144
	ldmfd	r13!,{r4,r15}
.Lj779:
	.long	-1392247236
.Lj803:
	.long	475889572
.Lj806:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj825:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le30:
	.size	KEYBOARD_$$_USBKEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD, .Le30 - KEYBOARD_$$_USBKEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_usbkeyboarddevicecontrol$pkeyboarddevice$longint$longword$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD
KEYBOARD_$$_USBKEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
# Temps allocated between r13+24 and r13+144
# [2285] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var Request located at r13+4, size=OS_S32
# Var Argument1 located at r13+8, size=OS_32
# Var Argument2 located at r13+12, size=OS_32
# Var $result located at r13+16, size=OS_32
# Var Status located at r13+20, size=OS_32
	str	r0,[r13, #-144]!
	str	r1,[r13, #4]
	str	r2,[r13, #8]
	str	r3,[r13, #12]
# [2287] Result:=ERROR_INVALID_PARAMETER;
	mov	r1,#87
# Rescheduled
# [2290] if Keyboard = nil then Exit;
	ldr	r0,[r13]
	str	r1,[r13, #16]
	cmp	r0,#0
	beq	.Lj831
# [2291] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj835
	cmp	r0,r1
	bne	.Lj831
# [2294] if Keyboard.KeyboardState <> KEYBOARD_STATE_ATTACHED then Exit;
	ldr	r0,[r13]
	ldr	r0,[r0, #52]
	cmp	r0,#3
	bne	.Lj831
# [2297] if MutexLock(Keyboard.Lock) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj840
	cmp	r0,#0
	beq	.Lj840
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj845
	cmp	r1,r2
	bne	.Lj840
	ldr	r1,.Lj848
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj850
# Rescheduled
	ldr	r1,.Lj848
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj850:
.Lj840:
	cmp	r4,#0
	bne	.Lj853
# [2299] try
	add	r2,r13,#24
	add	r1,r13,#36
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #140]
	cmp	r0,#0
	bne	.Lj854
# [2300] case Request of
	ldr	r0,[r13, #4]
	cmp	r0,#1
	blt	.Lj858
	cmp	r0,#11
	bgt	.Lj858
	sub	r0,r0,#2
	ldr	r15,[r15, r0, lsl #2]
	.long	.Lj859
	.long	.Lj860
	.long	.Lj861
	.long	.Lj862
	.long	.Lj863
	.long	.Lj864
	.long	.Lj865
	.long	.Lj866
	.long	.Lj867
	.long	.Lj868
	.long	.Lj869
.Lj859:
# [2303] LongBool(Argument2):=False;
	ldr	r0,[r13, #12]
	mov	r1,#0
	str	r1,[r0]
# [2304] if (Keyboard.Device.DeviceFlags and Argument1) <> 0 then
	ldr	r0,[r13]
# Rescheduled
# Peephole OpCmp2OpS done
# Rescheduled
	ldr	r0,[r0, #28]
	ldr	r1,[r13, #8]
	ands	r0,r1,r0
	beq	.Lj857
# [2306] LongBool(Argument2):=True;
	ldr	r0,[r13, #12]
	mvn	r1,#0
	str	r1,[r0]
# [2309] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj860:
# [2314] if (Argument1 and not(KEYBOARD_FLAG_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#7
	bne	.Lj857
	ldr	r2,[r13]
# Rescheduled
# Rescheduled
# [2316] Keyboard.Device.DeviceFlags:=(Keyboard.Device.DeviceFlags or Argument1);
	ldr	r1,[r2, #28]
	ldr	r0,[r13, #8]
	orr	r0,r0,r1
	str	r0,[r2, #28]
# [2319] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj861:
# [2324] if (Argument1 and not(KEYBOARD_FLAG_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#7
	bne	.Lj857
# [2326] Keyboard.Device.DeviceFlags:=(Keyboard.Device.DeviceFlags and not(Argument1));
	ldr	r0,[r13, #8]
# Rescheduled
	ldr	r2,[r13]
# Rescheduled
	ldr	r1,[r2, #28]
	mvn	r0,r0
	and	r0,r1,r0
	str	r0,[r2, #28]
# [2329] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj862:
# [2334] while Keyboard.Buffer.Count > 0 do
	b	.Lj877
	.balign 4
.Lj876:
# [2337] if SemaphoreWait(Keyboard.Buffer.Wait) = ERROR_SUCCESS then
	ldr	r0,[r13]
	ldr	r0,[r0, #92]
	bl	THREADS_$$_SEMAPHOREWAIT$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj880
	ldr	r1,[r13]
# [2340] Keyboard.Buffer.Start:=(Keyboard.Buffer.Start + 1) mod KEYBOARD_BUFFER_SIZE;
	ldr	r0,[r1, #96]
	add	r0,r0,#1
	mov	r0,r0,lsl #23
	mov	r0,r0,lsr #23
	str	r0,[r1, #96]
# [2343] Dec(Keyboard.Buffer.Count);
	ldr	r1,[r13]
	ldr	r0,[r1, #100]
	sub	r0,r0,#1
	str	r0,[r1, #100]
	b	.Lj881
.Lj880:
# [2347] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
# [2348] Exit;
	b	.Lj856
.Lj881:
.Lj877:
	ldr	r0,[r13]
	ldr	r0,[r0, #100]
	cmp	r0,#0
	bhi	.Lj876
# [2353] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj863:
# [2357] LongBool(Argument2):=False;
	ldr	r0,[r13, #12]
	mov	r1,#0
	str	r1,[r0]
# [2358] if (Keyboard.KeyboardLEDs and Argument1) <> 0 then
	ldr	r0,[r13]
# Rescheduled
# Peephole OpCmp2OpS done
# Rescheduled
	ldr	r0,[r0, #56]
	ldr	r1,[r13, #8]
	ands	r0,r1,r0
	beq	.Lj857
# [2360] LongBool(Argument2):=True;
	ldr	r1,[r13, #12]
	mvn	r0,#0
	str	r0,[r1]
# [2363] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj864:
# [2368] if (Argument1 and not(KEYBOARD_LED_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#31
	bne	.Lj857
	ldr	r2,[r13]
# Rescheduled
# Rescheduled
# [2370] Keyboard.KeyboardLEDs:=(Keyboard.KeyboardLEDs or Argument1);
	ldr	r1,[r2, #56]
	ldr	r0,[r13, #8]
	orr	r0,r0,r1
	str	r0,[r2, #56]
# [2373] Status:=USBKeyboardDeviceSetLEDs(PUSBKeyboardDevice(Keyboard),Keyboard.KeyboardLEDs);
	ldr	r1,[r13]
# Rescheduled
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldrb	r1,[r1, #56]
# Peephole MovMov2Mov removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD
	str	r0,[r13, #20]
# Peephole StrLdr2StrMov 1 done
# [2374] if Status <> USB_STATUS_SUCCESS then
	cmp	r0,#0
# [2376] Result:=ERROR_OPERATION_FAILED;
	movne	r0,#999424
	orrne	r0,r0,#580
	strne	r0,[r13, #16]
# [2377] Exit;
	bne	.Lj856
# [2381] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj865:
# [2386] if (Argument1 and not(KEYBOARD_LED_MASK)) = 0 then
	ldr	r0,[r13, #8]
# Peephole OpCmp2OpS done
	bics	r0,r0,#31
	bne	.Lj857
# [2388] Keyboard.KeyboardLEDs:=(Keyboard.KeyboardLEDs and not(Argument1));
	ldr	r0,[r13, #8]
# Rescheduled
	ldr	r2,[r13]
# Rescheduled
	ldr	r1,[r2, #56]
	mvn	r0,r0
	and	r0,r1,r0
	str	r0,[r2, #56]
# [2391] Status:=USBKeyboardDeviceSetLEDs(PUSBKeyboardDevice(Keyboard),Keyboard.KeyboardLEDs);
	ldr	r1,[r13]
# Rescheduled
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldrb	r1,[r1, #56]
# Peephole MovMov2Mov removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD
	str	r0,[r13, #20]
# Peephole StrLdr2StrMov 1 done
# [2392] if Status <> USB_STATUS_SUCCESS then
	cmp	r0,#0
# [2394] Result:=ERROR_OPERATION_FAILED;
	movne	r0,#999424
	orrne	r0,r0,#580
	strne	r0,[r13, #16]
# [2395] Exit;
	bne	.Lj856
# [2399] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj866:
# [2404] Argument2:=Keyboard.KeyboardRate;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r1,[r13, #12]
	ldr	r0,[r0, #60]
	str	r0,[r1]
# [2407] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj867:
# Rescheduled
# Rescheduled
# [2411] Keyboard.KeyboardRate:=Argument1;
	ldr	r0,[r13]
	ldr	r1,[r13, #8]
	str	r1,[r0, #60]
# [2414] Status:=USBKeyboardDeviceSetIdle(PUSBKeyboardDevice(Keyboard),Keyboard.KeyboardRate,USB_HID_REPORTID_NONE);
	ldr	r0,[r13]
	ldrb	r1,[r0, #60]
	ldr	r0,[r13]
	mov	r2,#0
	bl	KEYBOARD_$$_USBKEYBOARDDEVICESETIDLE$PUSBKEYBOARDDEVICE$BYTE$BYTE$$LONGWORD
	str	r0,[r13, #20]
# Peephole StrLdr2StrMov 1 done
# [2415] if Status <> USB_STATUS_SUCCESS then
	cmp	r0,#0
# [2417] Result:=ERROR_OPERATION_FAILED;
	movne	r0,#999424
	orrne	r0,r0,#580
	strne	r0,[r13, #16]
# [2418] Exit;
	bne	.Lj856
# [2422] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj868:
# [2426] Argument2:=Keyboard.KeyboardDelay;
	ldr	r0,[r13]
# Rescheduled
	ldr	r1,[r0, #64]
	ldr	r0,[r13, #12]
	str	r1,[r0]
# [2429] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
	b	.Lj857
.Lj869:
# Rescheduled
# Rescheduled
# [2433] Keyboard.KeyboardDelay:=Argument1;
	ldr	r1,[r13]
	ldr	r0,[r13, #8]
	str	r0,[r1, #64]
# [2436] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #16]
.Lj858:
.Lj857:
.Lj854:
	bl	fpc_popaddrstack
# [2441] MutexUnlock(Keyboard.Lock);
	ldr	r0,[r13]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj894
	cmp	r0,#0
	beq	.Lj894
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj845
	cmp	r1,r2
	bne	.Lj894
	ldr	r1,.Lj902
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj904
# Rescheduled
	ldr	r1,.Lj902
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj904:
.Lj894:
	ldr	r0,[r13, #140]
	cmp	r0,#0
	beq	.Lj855
	cmp	r0,#2
	beq	.Lj831
	bl	fpc_reraise
.Lj856:
	mov	r0,#2
	str	r0,[r13, #140]
	b	.Lj854
.Lj855:
	b	.Lj906
.Lj853:
# [2446] Result:=ERROR_CAN_NOT_COMPLETE;
	mov	r0,#235
	orr	r0,r0,#768
	str	r0,[r13, #16]
.Lj906:
.Lj831:
# [2449] end;
	ldr	r0,[r13, #16]
	add	r13,r13,#144
	ldmfd	r13!,{r4,r15}
.Lj835:
	.long	-1392247236
.Lj845:
	.long	475889572
.Lj848:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj902:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le31:
	.size	KEYBOARD_$$_USBKEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD, .Le31 - KEYBOARD_$$_USBKEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_usbkeyboarddriverbind$pusbdevice$pusbinterface$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDDRIVERBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD
KEYBOARD_$$_USBKEYBOARDDRIVERBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD:
# Temps allocated between r11-180 and r11-44
# [2463] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#188
# Var Device located in register r10
# Var Interrface located in register r8
# Var $result located in register r0
# Var Status located in register r4
# Var Interval located in register r0
# Var Keyboard located in register r9
# Var ReportEndpoint located in register r5
	mov	r10,r0
	mov	r8,r1
	mov	r0,#0
	str	r0,[r11, #-176]
# Peephole MovStrMov done
	str	r0,[r11, #-172]
	sub	r2,r11,#56
	sub	r1,r11,#160
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-164]
	cmp	r0,#0
	bne	.Lj909
# [2465] Result:=USB_STATUS_INVALID_PARAMETER;
	mov	r0,#5
	str	r0,[r11, #-180]
# [2468] if Device = nil then Exit;
	cmp	r10,#0
	beq	.Lj909
# [2475] if Interrface = nil then
	cmp	r8,#0
# [2478] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	moveq	r0,#2
	streq	r0,[r11, #-180]
# [2479] Exit;
	beq	.Lj909
# [2483] if Device.Descriptor.bDeviceClass <> USB_CLASS_CODE_INTERFACE_SPECIFIC then
	ldr	r0,[r10, #96]
	ldrb	r0,[r0, #4]
	cmp	r0,#0
# [2486] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	movne	r0,#2
	strne	r0,[r11, #-180]
# [2487] Exit;
	bne	.Lj909
	ldr	r1,[r8, #12]
# [2491] if (Interrface.Descriptor.bInterfaceClass <> USB_CLASS_CODE_HID) or (Interrface.Descriptor.bInterfaceSubClass <> USB_HID_SUBCLASS_BOOT) or (Interrface.Descriptor.bInterfaceProtocol <> USB_HID_BOOT_PROTOCOL_KEYBOARD) then
	ldrb	r0,[r1, #5]
	cmp	r0,#3
	bne	.Lj917
	ldrb	r0,[r1, #6]
	cmp	r0,#1
	bne	.Lj917
	ldrb	r0,[r1, #7]
	cmp	r0,#1
	beq	.Lj920
.Lj917:
# [2494] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	mov	r0,#2
	str	r0,[r11, #-180]
# [2495] Exit;
	b	.Lj909
.Lj920:
# [2499] ReportEndpoint:=USBDeviceFindEndpointByType(Device,Interrface,USB_DIRECTION_IN,USB_TRANSFER_TYPE_INTERRUPT);
	mov	r1,r8
	mov	r0,r10
	mov	r3,#3
	mov	r2,#1
	bl	USB_$$_USBDEVICEFINDENDPOINTBYTYPE$PUSBDEVICE$PUSBINTERFACE$BYTE$BYTE$$PUSBENDPOINTDESCRIPTOR
# Peephole OpCmp2OpS done
	movs	r5,r0
# [2503] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	moveq	r0,#2
	streq	r0,[r11, #-180]
# [2504] Exit;
	beq	.Lj909
# [2508] Keyboard:=PUSBKeyboardDevice(KeyboardDeviceCreateEx(SizeOf(TUSBKeyboardDevice)));
	mov	r0,#160
	orr	r0,r0,#6144
	bl	KEYBOARD_$$_KEYBOARDDEVICECREATEEX$LONGWORD$$PKEYBOARDDEVICE
# Peephole OpCmp2OpS done
	movs	r9,r0
# [2509] if Keyboard = nil then
	bne	.Lj924
# [2511] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to create new keyboard device');
	ldr	r0,.Lj927
	ldrb	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrne	r1,.Lj928
	movne	r0,r10
	blne	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
# [2514] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	mov	r0,#2
	str	r0,[r11, #-180]
# [2515] Exit;
	b	.Lj909
.Lj924:
# [2520] Keyboard.Keyboard.Device.DeviceBus:=DEVICE_BUS_USB;
	mov	r0,#2
	str	r0,[r9, #20]
# [2521] Keyboard.Keyboard.Device.DeviceType:=KEYBOARD_TYPE_USB;
	mov	r1,#1
# Rescheduled
# [2522] Keyboard.Keyboard.Device.DeviceFlags:=Keyboard.Keyboard.Device.DeviceFlags; {Don't override defaults (was KEYBOARD_FLAG_NONE)}
	ldr	r0,[r9, #28]
	str	r1,[r9, #24]
	str	r0,[r9, #28]
# [2523] Keyboard.Keyboard.Device.DeviceData:=Device;
	str	r10,[r9, #32]
# Rescheduled
# [2524] Keyboard.Keyboard.Device.DeviceDescription:=USBKEYBOARD_KEYBOARD_DESCRIPTION;
	ldr	r1,.Lj929
	add	r0,r9,#36
	bl	fpc_ansistr_assign
# [2526] Keyboard.Keyboard.KeyboardState:=KEYBOARD_STATE_ATTACHING;
	mov	r0,#2
# Rescheduled
# [2527] Keyboard.Keyboard.DeviceRead:=USBKeyboardDeviceRead;
	ldr	r1,.Lj930
	str	r0,[r9, #52]
# Rescheduled
# [2528] Keyboard.Keyboard.DeviceControl:=USBKeyboardDeviceControl;
	ldr	r0,.Lj931
	str	r1,[r9, #72]
# Rescheduled
# [2531] Keyboard.HIDInterface:=Interrface;
	ldr	r1,.Lj932
	str	r0,[r9, #76]
# Rescheduled
# [2532] Keyboard.ReportEndpoint:=ReportEndpoint;
	ldr	r0,.Lj933
	str	r8,[r9, r1]
	str	r5,[r9, r0]
# Rescheduled
# [2533] Keyboard.WaiterThread:=INVALID_HANDLE_VALUE;
	ldr	r1,.Lj934
	mvn	r0,#0
# Rescheduled
# [2536] Keyboard.ReportRequest:=USBRequestAllocate(Device,ReportEndpoint,USBKeyboardReportComplete,USB_HID_BOOT_REPORT_SIZE,Keyboard);
	ldr	r2,.Lj935
	str	r0,[r9, r1]
	mov	r0,#0
	str	r0,[r11, #-168]
	mov	r0,#8
	str	r0,[r13]
	str	r9,[r13, #4]
	mov	r1,r5
	mov	r0,r10
	sub	r3,r11,#168
	bl	USB_$$_USBREQUESTALLOCATEEX$crc8FD3C29B
# Rescheduled
	ldr	r2,.Lj937
# Rescheduled
# [2537] if Keyboard.ReportRequest = nil then
	ldr	r1,.Lj937
	str	r0,[r9, r2]
	ldr	r0,[r9, r1]
	cmp	r0,#0
	bne	.Lj940
# [2539] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to allocate USB report request for keyboard');
	ldr	r0,.Lj927
	ldrb	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrne	r1,.Lj944
	movne	r0,r10
	blne	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
# [2542] KeyboardDeviceDestroy(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [2545] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	mov	r0,#2
	str	r0,[r11, #-180]
# [2546] Exit;
	b	.Lj909
.Lj940:
# [2550] if KeyboardDeviceRegister(@Keyboard.Keyboard) <> ERROR_SUCCESS then
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEREGISTER$PKEYBOARDDEVICE$$LONGWORD
	cmp	r0,#0
	beq	.Lj946
# [2552] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to register new keyboard device');
	ldr	r0,.Lj927
	ldrb	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrne	r1,.Lj950
	movne	r0,r10
	blne	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
# [2555] USBRequestRelease(Keyboard.ReportRequest);
	ldr	r0,.Lj937
	ldr	r0,[r9, r0]
	bl	USB_$$_USBREQUESTRELEASE$PUSBREQUEST$$LONGWORD
# [2558] KeyboardDeviceDestroy(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [2561] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	mov	r0,#2
	str	r0,[r11, #-180]
# [2562] Exit;
	b	.Lj909
.Lj946:
# [2570] Status:=USBKeyboardDeviceSetProtocol(Keyboard,USB_HID_PROTOCOL_BOOT);
	mov	r0,r9
	mov	r1,#0
	bl	KEYBOARD_$$_USBKEYBOARDDEVICESETPROTOCOL$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r4,r0
# [2571] if Status <> USB_STATUS_SUCCESS then
	beq	.Lj953
# [2573] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to enable HID boot protocol: ' + USBStatusToString(Status));
	ldr	r0,.Lj927
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj955
	sub	r0,r11,#172
	bl	fpc_ansistr_decr_ref
	mov	r1,r4
	sub	r0,r11,#176
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r2,[r11, #-176]
# Rescheduled
	ldr	r1,.Lj957
	mov	r3,#0
	sub	r0,r11,#172
	bl	fpc_ansistr_concat
	ldr	r1,[r11, #-172]
	mov	r0,r10
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
.Lj955:
# [2576] USBRequestRelease(Keyboard.ReportRequest);
	ldr	r0,.Lj937
	ldr	r0,[r9, r0]
	bl	USB_$$_USBREQUESTRELEASE$PUSBREQUEST$$LONGWORD
# [2579] KeyboardDeviceDeregister(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD
# [2582] KeyboardDeviceDestroy(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [2585] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	mov	r0,#2
	str	r0,[r11, #-180]
# [2586] Exit;
	b	.Lj909
.Lj953:
# [2594] Status:=USBKeyboardDeviceSetIdle(Keyboard,Keyboard.Keyboard.KeyboardRate,USB_HID_REPORTID_NONE);
	ldrb	r1,[r9, #60]
	mov	r0,r9
	mov	r2,#0
	bl	KEYBOARD_$$_USBKEYBOARDDEVICESETIDLE$PUSBKEYBOARDDEVICE$BYTE$BYTE$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r4,r0
# [2595] if Status <> USB_STATUS_SUCCESS then
	beq	.Lj960
# [2597] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to set idle rate: ' + USBStatusToString(Status));
	ldr	r0,.Lj927
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj962
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	mov	r1,r4
	sub	r0,r11,#172
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r2,[r11, #-172]
# Rescheduled
	ldr	r1,.Lj964
	mov	r3,#0
	sub	r0,r11,#176
	bl	fpc_ansistr_concat
	ldr	r1,[r11, #-176]
	mov	r0,r10
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
.Lj962:
# [2600] USBRequestRelease(Keyboard.ReportRequest);
	ldr	r0,.Lj937
	ldr	r0,[r9, r0]
	bl	USB_$$_USBREQUESTRELEASE$PUSBREQUEST$$LONGWORD
# [2603] KeyboardDeviceDeregister(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD
# [2606] KeyboardDeviceDestroy(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [2609] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	mov	r0,#2
	str	r0,[r11, #-180]
# [2610] Exit;
	b	.Lj909
.Lj960:
# [2614] Status:=USBKeyboardDeviceSetLEDs(Keyboard,Keyboard.Keyboard.KeyboardLEDs);
	ldrb	r1,[r9, #56]
	mov	r0,r9
	bl	KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r4,r0
# [2615] if Status <> USB_STATUS_SUCCESS then
	beq	.Lj967
# [2617] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to set LEDs: ' + USBStatusToString(Status));
	ldr	r0,.Lj927
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj969
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	mov	r1,r4
	sub	r0,r11,#172
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r2,[r11, #-172]
# Rescheduled
	ldr	r1,.Lj971
	mov	r3,#0
	sub	r0,r11,#176
	bl	fpc_ansistr_concat
	ldr	r1,[r11, #-176]
	mov	r0,r10
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
.Lj969:
# [2620] USBRequestRelease(Keyboard.ReportRequest);
	ldr	r0,.Lj937
	ldr	r0,[r9, r0]
	bl	USB_$$_USBREQUESTRELEASE$PUSBREQUEST$$LONGWORD
# [2623] KeyboardDeviceDeregister(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD
# [2626] KeyboardDeviceDestroy(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [2629] Result:=USB_STATUS_DEVICE_UNSUPPORTED;
	mov	r0,#2
	str	r0,[r11, #-180]
# [2630] Exit;
	b	.Lj909
.Lj967:
# [2634] if USB_KEYBOARD_POLLING_INTERVAL > 0 then
	ldr	r0,.Lj973
	ldr	r0,[r0]
	cmp	r0,#0
	bls	.Lj975
# [2637] if Device.Speed = USB_SPEED_HIGH then
	ldr	r0,[r10, #80]
	cmp	r0,#0
	bne	.Lj977
# [2640] Interval:=FirstBitSet(USB_KEYBOARD_POLLING_INTERVAL * USB_UFRAMES_PER_MS) + 1;
	ldr	r0,.Lj973
	ldr	r0,[r0]
# Rescheduled
# Peephole MovMov2Mov removed superfluous mov
# Rescheduled
	ldr	r1,.Lj979
	mov	r7,r0,lsl #3
	ldr	r0,[r1]
	cmp	r0,#0
	beq	.Lj981
# Rescheduled
	ldr	r1,.Lj979
# Rescheduled
	ldr	r1,[r1]
	mov	r0,r7
	blx	r1
	mov	r6,r0
	b	.Lj983
.Lj981:
	ldr	r0,.Lj984
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj986
# Rescheduled
	ldr	r1,.Lj984
# Rescheduled
	ldr	r1,[r1]
	mov	r0,r7
	blx	r1
	b	.Lj988
.Lj986:
	mov	r0,#32
.Lj988:
	mov	r1,#31
	sub	r6,r1,r0
# Peephole DataMov2Data removed superfluous mov
.Lj983:
# Rescheduled
# Rescheduled
# [2643] if ReportEndpoint.bInterval < Interval then ReportEndpoint.bInterval:=Interval;
	ldrb	r1,[r5, #6]
	add	r0,r6,#1
	cmp	r1,r0
	bcs	.Lj991
# Peephole AndStrb2Strb done
	strb	r0,[r5, #6]
	b	.Lj991
.Lj977:
# Rescheduled
# [2648] if ReportEndpoint.bInterval < USB_KEYBOARD_POLLING_INTERVAL then ReportEndpoint.bInterval:=USB_KEYBOARD_POLLING_INTERVAL;
	ldr	r0,.Lj973
# Rescheduled
	ldr	r0,[r0]
	ldrb	r1,[r5, #6]
	cmp	r1,r0
	ldrcc	r0,.Lj973
	ldrccb	r0,[r0]
	strccb	r0,[r5, #6]
.Lj991:
.Lj975:
# Rescheduled
# [2656] Inc(Keyboard.PendingCount);
	ldr	r2,.Lj996
# [2653] Interrface.DriverData:=Keyboard;
	str	r9,[r8, #160]
	ldr	r0,[r9, r2]
	add	r1,r0,#1
# Rescheduled
# [2663] Status:=USBRequestSubmit(Keyboard.ReportRequest);
	ldr	r0,.Lj937
	str	r1,[r9, r2]
	ldr	r0,[r9, r0]
	bl	USB_$$_USBREQUESTSUBMIT$PUSBREQUEST$$LONGWORD
# Peephole OpCmp2OpS done
	movs	r4,r0
# [2664] if Status <> USB_STATUS_SUCCESS then
	beq	.Lj999
# [2666] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to submit report request: ' + USBStatusToString(Status));
	ldr	r0,.Lj927
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1001
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	mov	r1,r4
	sub	r0,r11,#172
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r2,[r11, #-172]
# Rescheduled
	ldr	r1,.Lj1003
	mov	r3,#0
	sub	r0,r11,#176
	bl	fpc_ansistr_concat
	ldr	r1,[r11, #-176]
	mov	r0,r10
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
.Lj1001:
# [2669] Dec(Keyboard.PendingCount);
	ldr	r2,.Lj996
	ldr	r0,[r9, r2]
	sub	r1,r0,#1
# Rescheduled
# [2672] USBRequestRelease(Keyboard.ReportRequest);
	ldr	r0,.Lj937
	str	r1,[r9, r2]
	ldr	r0,[r9, r0]
	bl	USB_$$_USBREQUESTRELEASE$PUSBREQUEST$$LONGWORD
# [2675] KeyboardDeviceDeregister(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD
# [2678] KeyboardDeviceDestroy(@Keyboard.Keyboard);
	mov	r0,r9
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [2681] Result:=Status;
	str	r4,[r11, #-180]
# [2682] Exit;
	b	.Lj909
.Lj999:
# [2686] if KeyboardDeviceSetState(@Keyboard.Keyboard,KEYBOARD_STATE_ATTACHED) <> ERROR_SUCCESS then Exit;
	mov	r0,r9
	mov	r1,#3
	bl	KEYBOARD_$$_KEYBOARDDEVICESETSTATE$PKEYBOARDDEVICE$LONGWORD$$LONGWORD
	cmp	r0,#0
	bne	.Lj909
# [2689] Result:=USB_STATUS_SUCCESS;
	mov	r0,#0
	str	r0,[r11, #-180]
.Lj909:
	bl	fpc_popaddrstack
# [2690] end;
	sub	r0,r11,#176
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#172
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-164]
	cmp	r0,#0
	blne	fpc_reraise
	ldr	r0,[r11, #-180]
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj927:
	.long	U_$USB_$$_USB_LOG_ENABLED
.Lj928:
	.long	.Ld19
.Lj929:
	.long	.Ld20
.Lj930:
	.long	KEYBOARD_$$_USBKEYBOARDDEVICEREAD$PKEYBOARDDEVICE$POINTER$LONGWORD$LONGWORD$$LONGWORD
.Lj931:
	.long	KEYBOARD_$$_USBKEYBOARDDEVICECONTROL$PKEYBOARDDEVICE$LONGINT$LONGWORD$LONGWORD$$LONGWORD
.Lj932:
	.long	6268
.Lj933:
	.long	6276
.Lj934:
	.long	6300
.Lj935:
	.long	KEYBOARD_$$_USBKEYBOARDREPORTCOMPLETE$PUSBREQUEST
.Lj937:
	.long	6272
.Lj944:
	.long	.Ld21
.Lj950:
	.long	.Ld22
.Lj957:
	.long	.Ld23
.Lj964:
	.long	.Ld24
.Lj971:
	.long	.Ld25
.Lj973:
	.long	TC_$GLOBALCONFIG_$$_USB_KEYBOARD_POLLING_INTERVAL
.Lj979:
	.long	U_$PLATFORM_$$_FIRSTBITSETHANDLER
.Lj984:
	.long	U_$PLATFORM_$$_COUNTLEADINGZEROSHANDLER
.Lj996:
	.long	6296
.Lj1003:
	.long	.Ld26
.Le32:
	.size	KEYBOARD_$$_USBKEYBOARDDRIVERBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD, .Le32 - KEYBOARD_$$_USBKEYBOARDDRIVERBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD

.section .text.n_keyboard_$$_usbkeyboarddriverunbind$pusbdevice$pusbinterface$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDDRIVERUNBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD
KEYBOARD_$$_USBKEYBOARDDRIVERUNBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD:
# [2702] begin
	stmfd	r13!,{r4,r5,r6,r7,r14}
	sub	r13,r13,#16
# Var Device located in register r0
# Var Interrface located in register r4
# Var $result located in register r6
# Var Keyboard located in register r0
# Var Message located at r13+0, size=OS_NO
	mov	r4,r1
# Var $result located in register r6
# [2704] Result:=USB_STATUS_INVALID_PARAMETER;
	mov	r6,#5
# [2707] if Device = nil then Exit;
	cmp	r0,#0
	beq	.Lj1008
# [2710] if Interrface = nil then Exit;
	cmp	r4,#0
	beq	.Lj1008
# Rescheduled
# [2713] if Interrface.Driver <> USBKeyboardDriver then Exit;
	ldr	r0,.Lj1014
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,[r4]
	cmp	r1,r0
	bne	.Lj1008
# Var Interrface located in register r4
# Var Keyboard located in register r5
# [2720] Keyboard:=PUSBKeyboardDevice(Interrface.DriverData);
	ldr	r5,[r4, #160]
# [2721] if Keyboard = nil then Exit;
	cmp	r5,#0
	beq	.Lj1008
# Rescheduled
# Rescheduled
# [2722] if Keyboard.Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r1,[r5]
	ldr	r0,.Lj1019
	cmp	r1,r0
	bne	.Lj1008
# [2725] Result:=USB_STATUS_OPERATION_FAILED;
	mov	r6,#11
# [2726] if KeyboardDeviceSetState(@Keyboard.Keyboard,KEYBOARD_STATE_DETACHING) <> ERROR_SUCCESS then Exit;
	mov	r0,r5
	mov	r1,#1
	bl	KEYBOARD_$$_KEYBOARDDEVICESETSTATE$PKEYBOARDDEVICE$LONGWORD$$LONGWORD
	cmp	r0,#0
	bne	.Lj1008
# [2729] if MutexLock(Keyboard.Keyboard.Lock) <> ERROR_SUCCESS then Exit;
	ldr	r0,[r5, #80]
	mov	r7,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1024
	cmp	r0,#0
	beq	.Lj1024
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj1029
	cmp	r2,r1
	bne	.Lj1024
	ldr	r1,.Lj1032
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj1034
# Rescheduled
	ldr	r1,.Lj1032
	ldr	r1,[r1]
	blx	r1
	mov	r7,r0
.Lj1034:
.Lj1024:
	cmp	r7,#0
	bne	.Lj1008
# Var Keyboard located in register r5
# Rescheduled
# [2732] USBRequestCancel(Keyboard.ReportRequest);
	ldr	r0,.Lj1038
	ldr	r0,[r5, r0]
	bl	USB_$$_USBREQUESTCANCEL$PUSBREQUEST$$LONGWORD
# [2735] if Keyboard.PendingCount <> 0 then
	ldr	r0,.Lj1039
	ldr	r0,[r5, r0]
	cmp	r0,#0
	beq	.Lj1041
# [2744] Keyboard.WaiterThread:=GetCurrentThreadId;
	bl	SYSTEM_$$_GETCURRENTTHREADID$$LONGINT
# Rescheduled
	ldr	r1,.Lj1042
	str	r0,[r5, r1]
# [2747] MutexUnlock(Keyboard.Keyboard.Lock);
	ldr	r0,[r5, #80]
	mov	r7,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1043
	cmp	r0,#0
	beq	.Lj1043
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj1029
	cmp	r2,r1
	bne	.Lj1043
	ldr	r1,.Lj1051
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj1053
# Rescheduled
	ldr	r1,.Lj1051
	ldr	r1,[r1]
	blx	r1
	mov	r7,r0
.Lj1053:
.Lj1043:
# [2750] ThreadReceiveMessage(Message);
	mov	r0,r13
	bl	THREADS_$$_THREADRECEIVEMESSAGE$TMESSAGE$$LONGWORD
	b	.Lj1055
.Lj1041:
# [2755] MutexUnlock(Keyboard.Keyboard.Lock);
	ldr	r0,[r5, #80]
	mov	r7,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1056
	cmp	r0,#0
	beq	.Lj1056
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj1029
	cmp	r2,r1
	bne	.Lj1056
	ldr	r1,.Lj1051
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj1066
# Rescheduled
	ldr	r1,.Lj1051
	ldr	r1,[r1]
	blx	r1
	mov	r7,r0
.Lj1066:
.Lj1056:
.Lj1055:
# [2759] if KeyboardDeviceSetState(@Keyboard.Keyboard,KEYBOARD_STATE_DETACHED) <> ERROR_SUCCESS then Exit;
	mov	r0,r5
	mov	r1,#0
	bl	KEYBOARD_$$_KEYBOARDDEVICESETSTATE$PKEYBOARDDEVICE$LONGWORD$$LONGWORD
	cmp	r0,#0
	bne	.Lj1008
# Var Interrface located in register r4
# [2762] Interrface.DriverData:=nil;
	mov	r0,#0
	str	r0,[r4, #160]
# Var Keyboard located in register r5
# Rescheduled
# [2765] USBRequestRelease(Keyboard.ReportRequest);
	ldr	r0,.Lj1038
	ldr	r0,[r5, r0]
	bl	USB_$$_USBREQUESTRELEASE$PUSBREQUEST$$LONGWORD
# [2768] if KeyboardDeviceDeregister(@Keyboard.Keyboard) <> ERROR_SUCCESS then Exit;
	mov	r0,r5
	bl	KEYBOARD_$$_KEYBOARDDEVICEDEREGISTER$PKEYBOARDDEVICE$$LONGWORD
	cmp	r0,#0
	bne	.Lj1008
# [2771] KeyboardDeviceDestroy(@Keyboard.Keyboard);
	mov	r0,r5
# Var Keyboard located in register r0
	bl	KEYBOARD_$$_KEYBOARDDEVICEDESTROY$PKEYBOARDDEVICE$$LONGWORD
# [2774] Result:=USB_STATUS_SUCCESS;
	mov	r6,#0
.Lj1008:
# [2775] end;
	mov	r0,r6
	add	r13,r13,#16
	ldmfd	r13!,{r4,r5,r6,r7,r15}
.Lj1014:
	.long	U_$KEYBOARD_$$_USBKEYBOARDDRIVER
.Lj1019:
	.long	-1392247236
.Lj1029:
	.long	475889572
.Lj1032:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj1038:
	.long	6272
.Lj1039:
	.long	6296
.Lj1042:
	.long	6300
.Lj1051:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Le33:
	.size	KEYBOARD_$$_USBKEYBOARDDRIVERUNBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD, .Le33 - KEYBOARD_$$_USBKEYBOARDDRIVERUNBIND$PUSBDEVICE$PUSBINTERFACE$$LONGWORD

.section .text.n_keyboard_$$_usbkeyboardreportworker$pusbrequest
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDREPORTWORKER$PUSBREQUEST
KEYBOARD_$$_USBKEYBOARDREPORTWORKER$PUSBREQUEST:
# Temps allocated between r11-404 and r11-128
# [2798] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#412
# Var Request located at r11-48, size=OS_32
# Var i located at r11-52, size=OS_S32
# Var Index located at r11-56, size=OS_8
# Var Saved located at r11-60, size=OS_8
# Var Count located at r11-64, size=OS_S32
# Var LEDs located at r11-68, size=OS_32
# Var KeyCode located at r11-72, size=OS_16
# Var ScanCode located at r11-76, size=OS_8
# Var Status located at r11-80, size=OS_32
# Var Counter located at r11-84, size=OS_S32
# Var Message located at r11-100, size=OS_NO
# Var Modifiers located at r11-104, size=OS_32
# Var Data located at r11-116, size=OS_NO
# Var Keymap located at r11-120, size=OS_S32
# Var Report located at r11-124, size=OS_32
# Var Keyboard located at r11-128, size=OS_32
	str	r0,[r11, #-48]
	mov	r0,#0
	str	r0,[r11, #-404]
# Peephole MovStrMov done
	str	r0,[r11, #-400]
# Peephole MovStrMov done
	str	r0,[r11, #-376]
# Peephole MovStrMov done
	str	r0,[r11, #-372]
	sub	r2,r11,#140
	sub	r1,r11,#244
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-248]
	cmp	r0,#0
	bne	.Lj1075
# [2799] ThreadSetPriority(ThreadGetCurrent,7);
	ldr	r0,.Lj1077
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj1079
	ldr	r0,.Lj1077
	ldr	r0,[r0]
	blx	r0
	b	.Lj1081
.Lj1079:
	mvn	r0,#0
.Lj1081:
	mov	r1,#7
	bl	THREADS_$$_THREADSETPRIORITY$LONGINT$LONGWORD$$LONGWORD
# [2800] threadsleep(0);
	mov	r0,#0
	bl	THREADS_$$_THREADSLEEP$LONGWORD$$LONGWORD
# [2803] if Request = nil then Exit;
	ldr	r0,[r11, #-48]
	cmp	r0,#0
	beq	.Lj1075
# [2806] Keyboard:=PUSBKeyboardDevice(Request.DriverData);
	ldr	r0,[r11, #-48]
	ldr	r0,[r0, #24]
	str	r0,[r11, #-128]
# Peephole StrLdr2StrMov 1 done
# [2807] if Keyboard <> nil then
	cmp	r0,#0
	beq	.Lj1085
# [2810] if MutexLock(Keyboard.Keyboard.Lock) = ERROR_SUCCESS then
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1086
	cmp	r0,#0
	beq	.Lj1086
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj1091
	cmp	r2,r1
	bne	.Lj1086
	ldr	r1,.Lj1094
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj1096
# Rescheduled
	ldr	r1,.Lj1094
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj1096:
.Lj1086:
	cmp	r4,#0
	bne	.Lj1099
# [2812] try
	sub	r2,r11,#260
	sub	r1,r11,#364
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-368]
	cmp	r0,#0
	bne	.Lj1100
# Rescheduled
# Rescheduled
# [2814] Inc(Keyboard.Keyboard.ReceiveCount);
	ldr	r2,[r11, #-128]
	ldr	r1,.Lj1103
	ldr	r0,[r2, r1]
	add	r0,r0,#1
	str	r0,[r2, r1]
# [2817] if Keyboard.Keyboard.KeyboardState = KEYBOARD_STATE_DETACHING then
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #52]
	cmp	r0,#1
# [2824] Request.Status:=USB_STATUS_DEVICE_DETACHED;
	ldreq	r0,[r11, #-48]
	moveq	r1,#1
	streq	r1,[r0, #36]
	ldr	r1,[r11, #-48]
# [2828] if (Request.Status = USB_STATUS_SUCCESS) and (Request.ActualSize = USB_HID_BOOT_REPORT_SIZE) then
	ldr	r0,[r1, #36]
	cmp	r0,#0
	bne	.Lj1107
	ldr	r0,[r1, #40]
	cmp	r0,#8
	bne	.Lj1107
# [2835] Report:=Request.Data;
	ldr	r0,[r11, #-48]
	ldr	r0,[r0, #8]
	str	r0,[r11, #-124]
# [2836] Counter:=0;
	mov	r0,#0
	str	r0,[r11, #-84]
# [2837] Keymap:=KeymapGetDefault;
	bl	KEYMAP_$$_KEYMAPGETDEFAULT$$LONGINT
# Rescheduled
# [2838] LEDs:=Keyboard.Keyboard.KeyboardLEDs;
	ldr	r1,[r11, #-128]
	str	r0,[r11, #-120]
	ldr	r0,[r1, #56]
	str	r0,[r11, #-68]
# [2842] Modifiers:=0;
	mov	r1,#0
# Rescheduled
# [2845] if Keyboard.Keyboard.KeyboardLEDs <> KEYBOARD_LED_NONE then
	ldr	r0,[r11, #-128]
	str	r1,[r11, #-104]
	ldr	r0,[r0, #56]
	cmp	r0,#0
	beq	.Lj1110
# [2847] if (Keyboard.Keyboard.KeyboardLEDs and KEYBOARD_LED_NUMLOCK) <> 0 then Modifiers:=Modifiers or KEYBOARD_NUM_LOCK;
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #56]
# Peephole OpCmp2OpS done
	ands	r0,r0,#1
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#256
	strne	r0,[r11, #-104]
# [2848] if (Keyboard.Keyboard.KeyboardLEDs and KEYBOARD_LED_CAPSLOCK) <> 0 then Modifiers:=Modifiers or KEYBOARD_CAPS_LOCK;
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #56]
# Peephole OpCmp2OpS done
	ands	r0,r0,#2
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#512
	strne	r0,[r11, #-104]
# [2849] if (Keyboard.Keyboard.KeyboardLEDs and KEYBOARD_LED_SCROLLLOCK) <> 0 then Modifiers:=Modifiers or KEYBOARD_SCROLL_LOCK;
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #56]
# Peephole OpCmp2OpS done
	ands	r0,r0,#4
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#1024
	strne	r0,[r11, #-104]
# [2850] if (Keyboard.Keyboard.KeyboardLEDs and KEYBOARD_LED_COMPOSE) <> 0 then Modifiers:=Modifiers or KEYBOARD_COMPOSE;
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #56]
# Peephole OpCmp2OpS done
	ands	r0,r0,#8
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#2048
	strne	r0,[r11, #-104]
# [2851] if (Keyboard.Keyboard.KeyboardLEDs and KEYBOARD_LED_KANA) <> 0 then Modifiers:=Modifiers or KEYBOARD_KANA;
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #56]
# Peephole OpCmp2OpS done
	ands	r0,r0,#16
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#4096
	strne	r0,[r11, #-104]
.Lj1110:
# [2855] if report_buffer_active then
	ldr	r0,.Lj1123
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1122
	ldr	r0,.Lj1124
	ldr	r1,[r0]
# Rescheduled
	ldr	r0,.Lj1125
# Rescheduled
	ldr	r0,[r0]
# [2857] if not ((rb_end=(rb_start-1)) or ((rb_end=63) and (rb_start=0))) then
	sub	r2,r1,#1
	cmp	r2,r0
	beq	.Lj1126
	cmp	r0,#63
	bne	.Lj1128
	cmp	r1,#0
	beq	.Lj1126
.Lj1128:
# [2859] for i:=0 to 7 do report_buffer[8*rb_end+i]:=report[i];
	mov	r0,#0
	str	r0,[r11, #-52]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-52]
	.balign 4
.Lj1134:
	ldr	r0,[r11, #-52]
	add	r0,r0,#1
# Rescheduled
	ldr	r1,.Lj1125
	str	r0,[r11, #-52]
	ldr	r0,[r1]
# Rescheduled
	ldr	r12,[r11, #-52]
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r3,[r11, #-124]
# [3312] end;
	add	r2,r12,r0,lsl #3
# Rescheduled
# Rescheduled
	ldrb	r0,[r3, r12]
	ldr	r1,.Lj1136
	strb	r0,[r2, r1]
	ldr	r0,[r11, #-52]
	cmp	r0,#7
	blt	.Lj1134
# [2860] rb_end+=1;
	ldr	r0,.Lj1125
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj1125
	add	r0,r0,#1
# Rescheduled
# [2861] if rb_end>=63 then rb_end-=63;
	ldr	r1,.Lj1125
	str	r0,[r2]
	ldr	r0,[r1]
	cmp	r0,#63
	blt	.Lj1141
	ldr	r0,.Lj1125
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj1125
	sub	r0,r0,#63
	str	r0,[r1]
.Lj1141:
.Lj1126:
.Lj1122:
# [2866] if Report[0] <> 0 then
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1145
# [2868] if (Report[0] and USB_HID_BOOT_LEFT_CTRL) <> 0 then Modifiers:=Modifiers or KEYBOARD_LEFT_CTRL;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#1
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#1
	strne	r0,[r11, #-104]
# [2869] if (Report[0] and USB_HID_BOOT_LEFT_SHIFT) <> 0 then Modifiers:=Modifiers or KEYBOARD_LEFT_SHIFT;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#2
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#2
	strne	r0,[r11, #-104]
# [2870] if (Report[0] and USB_HID_BOOT_LEFT_ALT) <> 0 then Modifiers:=Modifiers or KEYBOARD_LEFT_ALT;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#4
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#4
	strne	r0,[r11, #-104]
# [2871] if (Report[0] and USB_HID_BOOT_LEFT_GUI) <> 0 then Modifiers:=Modifiers or KEYBOARD_LEFT_GUI;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#8
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#8
	strne	r0,[r11, #-104]
# [2872] if (Report[0] and USB_HID_BOOT_RIGHT_CTRL) <> 0 then Modifiers:=Modifiers or KEYBOARD_RIGHT_CTRL;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#16
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#16
	strne	r0,[r11, #-104]
# [2873] if (Report[0] and USB_HID_BOOT_RIGHT_SHIFT) <> 0 then Modifiers:=Modifiers or KEYBOARD_RIGHT_SHIFT;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#32
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#32
	strne	r0,[r11, #-104]
# [2874] if (Report[0] and USB_HID_BOOT_RIGHT_ALT) <> 0 then Modifiers:=Modifiers or KEYBOARD_RIGHT_ALT;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#64
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#64
	strne	r0,[r11, #-104]
# [2875] if (Report[0] and USB_HID_BOOT_RIGHT_GUI) <> 0 then Modifiers:=Modifiers or KEYBOARD_RIGHT_GUI;
	ldr	r0,[r11, #-124]
	ldrb	r0,[r0]
# Peephole OpCmp2OpS done
	ands	r0,r0,#128
	ldrne	r0,[r11, #-104]
	orrne	r0,r0,#128
	strne	r0,[r11, #-104]
.Lj1145:
# [2879] Index:=KEYMAP_INDEX_NORMAL;
	mov	r0,#0
	strb	r0,[r11, #-56]
# [2882] if (Modifiers and (KEYBOARD_LEFT_SHIFT or KEYBOARD_RIGHT_SHIFT)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#34
	beq	.Lj1163
# [2884] Index:=KEYMAP_INDEX_SHIFT;
	mov	r1,#1
# Rescheduled
# [2887] if KEYBOARD_SHIFT_IS_CAPS_LOCK_OFF then
	ldr	r0,.Lj1166
	strb	r1,[r11, #-56]
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj1165
# [2890] if (Modifiers and (KEYBOARD_CAPS_LOCK)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#512
	ldrne	r1,[r11, #-128]
# [2893] Keyboard.Keyboard.KeyboardLEDs:=Keyboard.Keyboard.KeyboardLEDs and not(KEYBOARD_LED_CAPSLOCK);
	ldrne	r0,[r1, #56]
	bicne	r0,r0,#2
	strne	r0,[r1, #56]
.Lj1165:
.Lj1163:
# [2899] if KeymapCheckFlag(Keymap,KEYMAP_FLAG_ALTGR) then
	ldr	r0,[r11, #-120]
	mov	r1,#1
	bl	KEYMAP_$$_KEYMAPCHECKFLAG$LONGINT$LONGWORD$$BOOLEAN
	cmp	r0,#0
	beq	.Lj1170
# [2901] if not(KEYBOARD_CTRL_ALT_IS_ALTGR) then
	ldr	r0,.Lj1171
	ldr	r0,[r0]
	cmp	r0,#0
	bne	.Lj1173
# [2904] if (Modifiers and (KEYBOARD_RIGHT_ALT)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#64
	beq	.Lj1179
# [2906] if Index <> KEYMAP_INDEX_SHIFT then Index:=KEYMAP_INDEX_ALTGR else Index:=KEYMAP_INDEX_SHIFT_ALTGR;
	ldrb	r0,[r11, #-56]
	cmp	r0,#1
	movne	r0,#2
	strneb	r0,[r11, #-56]
	bne	.Lj1179
	mov	r0,#3
	strb	r0,[r11, #-56]
	b	.Lj1179
.Lj1173:
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
# [2912] if ((Modifiers and (KEYBOARD_LEFT_CTRL or KEYBOARD_RIGHT_CTRL)) <> 0) and ((Modifiers and (KEYBOARD_LEFT_ALT or KEYBOARD_RIGHT_ALT)) <> 0) then
	ands	r1,r0,#17
	beq	.Lj1181
# Peephole OpCmp2OpS done
	ands	r0,r0,#68
	beq	.Lj1181
# [2914] if Index <> KEYMAP_INDEX_SHIFT then Index:=KEYMAP_INDEX_ALTGR else Index:=KEYMAP_INDEX_SHIFT_ALTGR;
	ldrb	r0,[r11, #-56]
	cmp	r0,#1
	movne	r0,#2
	strneb	r0,[r11, #-56]
	moveq	r0,#3
	streqb	r0,[r11, #-56]
.Lj1181:
.Lj1179:
	ldrb	r0,[r11, #-56]
# [2919] if (Index = KEYMAP_INDEX_ALTGR) or (Index = KEYMAP_INDEX_SHIFT_ALTGR) then
	cmp	r0,#2
	beq	.Lj1186
	cmp	r0,#3
	bne	.Lj1188
.Lj1186:
# [2921] Modifiers:=Modifiers or KEYBOARD_ALTGR;
	ldr	r0,[r11, #-104]
	orr	r0,r0,#131072
	str	r0,[r11, #-104]
.Lj1188:
.Lj1170:
# Peephole Add/SubLdr2Ldr done
# Rescheduled
# [2926] Saved:=Index;
	ldrb	r0,[r11, #-56]
# Peephole Add/SubLdr2Ldr done
	strb	r0,[r11, #-60]
# [2935] for Count:=2 to USB_HID_BOOT_REPORT_SIZE - 1 do
	mov	r0,#2
	str	r0,[r11, #-64]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-64]
	.balign 4
.Lj1191:
	ldr	r0,[r11, #-64]
	add	r0,r0,#1
	str	r0,[r11, #-64]
# Peephole Add/SubLdr2Ldr done
# Rescheduled
# [2939] Index:=Saved;
	ldrb	r0,[r11, #-60]
# Peephole Add/SubLdr2Ldr done
	strb	r0,[r11, #-56]
# Rescheduled
# Rescheduled
# [2942] ScanCode:=Report[Count];
	ldr	r1,[r11, #-124]
	ldr	r0,[r11, #-64]
	ldrb	r0,[r1, r0]
	strb	r0,[r11, #-76]
# [2945] if ScanCode > SCAN_CODE_ERROR then
	ldrb	r0,[r11, #-76]
	cmp	r0,#3
	bls	.Lj1193
# [2948] if KeymapCheckCapskey(Keymap,ScanCode) then
	ldrb	r1,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-120]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPCHECKCAPSKEY$LONGINT$WORD$$BOOLEAN
	cmp	r0,#0
	beq	.Lj1195
# [2951] if (Modifiers and (KEYBOARD_CAPS_LOCK)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#512
	beq	.Lj1197
# [2954] if Index = KEYMAP_INDEX_NORMAL then
	ldrb	r0,[r11, #-56]
	cmp	r0,#0
# [2956] Index:=KEYMAP_INDEX_SHIFT;
	moveq	r0,#1
	streqb	r0,[r11, #-56]
	beq	.Lj1200
# [2958] else if Index = KEYMAP_INDEX_SHIFT then
	ldrb	r0,[r11, #-56]
	cmp	r0,#1
# [2960] Index:=KEYMAP_INDEX_NORMAL;
	moveq	r0,#0
	streqb	r0,[r11, #-56]
	beq	.Lj1203
# [2963] else if Index = KEYMAP_INDEX_ALTGR then
	ldrb	r0,[r11, #-56]
	cmp	r0,#2
# [2965] Index:=KEYMAP_INDEX_SHIFT_ALTGR;
	moveq	r0,#3
	streqb	r0,[r11, #-56]
	beq	.Lj1206
# [2967] else if Index = KEYMAP_INDEX_SHIFT_ALTGR then
	ldrb	r0,[r11, #-56]
	cmp	r0,#3
# [2969] Index:=KEYMAP_INDEX_ALTGR;
	moveq	r0,#2
	streqb	r0,[r11, #-56]
.Lj1206:
.Lj1203:
.Lj1200:
.Lj1197:
.Lj1195:
	ldrb	r0,[r11, #-76]
# [2975] if (ScanCode >= SCAN_CODE_KEYPAD_FIRST) and (ScanCode <= SCAN_CODE_KEYPAD_LAST) then
	cmp	r0,#83
	bcc	.Lj1210
	cmp	r0,#99
	bhi	.Lj1210
# [2978] if (Modifiers and (KEYBOARD_NUM_LOCK)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#256
	beq	.Lj1213
# [2981] if (Modifiers and (KEYBOARD_LEFT_SHIFT or KEYBOARD_RIGHT_SHIFT)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#34
# [2983] Index:=KEYMAP_INDEX_NORMAL;
	movne	r0,#0
	strneb	r0,[r11, #-56]
	bne	.Lj1217
# [2987] Index:=KEYMAP_INDEX_SHIFT;
	mov	r0,#1
	strb	r0,[r11, #-56]
	b	.Lj1217
.Lj1213:
# [2992] Index:=KEYMAP_INDEX_NORMAL;
	mov	r0,#0
	strb	r0,[r11, #-56]
.Lj1217:
.Lj1210:
# Rescheduled
# [2997] if USBKeyboardCheckPressed(Keyboard,ScanCode) then
	ldr	r0,[r11, #-128]
	ldrb	r1,[r11, #-76]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDCHECKPRESSED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN
	cmp	r0,#0
	beq	.Lj1219
# [3004] if ScanCode = USB_HID_BOOT_USAGE_NUMLOCK then
	ldrb	r0,[r11, #-76]
	cmp	r0,#83
	bne	.Lj1221
	ldr	r1,[r11, #-128]
# [3007] Keyboard.Keyboard.KeyboardLEDs:=Keyboard.Keyboard.KeyboardLEDs xor KEYBOARD_LED_NUMLOCK;
	ldr	r0,[r1, #56]
	eor	r0,r0,#1
	str	r0,[r1, #56]
	b	.Lj1247
.Lj1221:
# [3009] else if ScanCode = USB_HID_BOOT_USAGE_CAPSLOCK then
	ldrb	r0,[r11, #-76]
	cmp	r0,#57
	bne	.Lj1224
	ldr	r1,[r11, #-128]
# [3012] Keyboard.Keyboard.KeyboardLEDs:=Keyboard.Keyboard.KeyboardLEDs xor KEYBOARD_LED_CAPSLOCK;
	ldr	r0,[r1, #56]
	eor	r0,r0,#2
	str	r0,[r1, #56]
	b	.Lj1247
.Lj1224:
# [3014] else if ScanCode = USB_HID_BOOT_USAGE_SCROLLLOCK then
	ldrb	r0,[r11, #-76]
	cmp	r0,#71
	bne	.Lj1227
	ldr	r1,[r11, #-128]
# [3017] Keyboard.Keyboard.KeyboardLEDs:=Keyboard.Keyboard.KeyboardLEDs xor KEYBOARD_LED_SCROLLLOCK;
	ldr	r0,[r1, #56]
	eor	r0,r0,#4
	str	r0,[r1, #56]
	b	.Lj1247
.Lj1227:
# [3022] Keyboard.LastCode:=ScanCode;
	ldr	r1,[r11, #-128]
# Rescheduled
# Rescheduled
	ldrb	r0,[r11, #-76]
	ldr	r2,.Lj1229
	strh	r0,[r1, r2]
# [3023] Keyboard.LastCount:=0;
	ldr	r0,[r11, #-128]
# Rescheduled
	ldr	r2,.Lj1230
	mov	r1,#0
	str	r1,[r0, r2]
# [3026] if (Keyboard.Keyboard.Code = SCAN_CODE_NONE) and KeymapCheckDeadkey(Keymap,ScanCode,Index) then
	ldr	r0,[r11, #-128]
	ldrh	r0,[r0, #84]
	cmp	r0,#0
	bne	.Lj1232
	ldrb	r1,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-120]
	ldrb	r2,[r11, #-56]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPCHECKDEADKEY$LONGINT$WORD$BYTE$$BOOLEAN
	cmp	r0,#0
	beq	.Lj1232
# Rescheduled
# Rescheduled
# [3033] Keyboard.Keyboard.Code:=ScanCode;
	ldr	r1,[r11, #-128]
	ldrb	r0,[r11, #-76]
	strh	r0,[r1, #84]
# Rescheduled
# Rescheduled
# [3034] Keyboard.Keyboard.Index:=Index;
	ldr	r0,[r11, #-128]
	ldrb	r1,[r11, #-56]
	strh	r1,[r0, #86]
# Rescheduled
# Rescheduled
# [3035] Keyboard.Keyboard.Modifiers:=Modifiers;
	ldr	r1,[r11, #-128]
	ldr	r0,[r11, #-104]
	str	r0,[r1, #88]
# [3038] Data.Modifiers:=Modifiers or KEYBOARD_KEYDOWN or KEYBOARD_DEADKEY;
	ldr	r0,[r11, #-104]
	orr	r0,r0,#16384
	orr	r0,r0,#65536
	str	r0,[r11, #-116]
# [3039] Data.ScanCode:=ScanCode;
	ldrb	r0,[r11, #-76]
	strh	r0,[r11, #-112]
# [3040] Data.KeyCode:=KeymapGetKeyCode(Keymap,ScanCode,Index);
	ldrb	r1,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-120]
	ldrb	r2,[r11, #-56]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETKEYCODE$LONGINT$WORD$BYTE$$WORD
	strh	r0,[r11, #-110]
# Rescheduled
# [3041] Data.CharCode:=KeymapGetCharCode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARCODE$LONGINT$WORD$$CHAR
	strb	r0,[r11, #-108]
# Rescheduled
# [3042] Data.CharUnicode:=KeymapGetCharUnicode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARUNICODE$LONGINT$WORD$$WIDECHAR
	strh	r0,[r11, #-106]
# [3045] if USBKeyboardInsertData(Keyboard,@Data) = ERROR_SUCCESS then
	sub	r1,r11,#116
# Rescheduled
	ldr	r0,[r11, #-128]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD
	cmp	r0,#0
	bne	.Lj1247
# [3048] Inc(Counter);
	ldr	r0,[r11, #-84]
	add	r0,r0,#1
	str	r0,[r11, #-84]
	b	.Lj1247
.Lj1232:
# [3054] KeyCode:=KEY_CODE_NONE;
	mov	r0,#0
	strh	r0,[r11, #-72]
# [3055] if Keyboard.Keyboard.Code <> SCAN_CODE_NONE then
	ldr	r0,[r11, #-128]
	ldrh	r0,[r0, #84]
	cmp	r0,#0
	beq	.Lj1238
# [3058] if not KeymapResolveDeadkey(Keymap,Keyboard.Keyboard.Code,ScanCode,Keyboard.Keyboard.Index,Index,KeyCode) then
	sub	r0,r11,#72
	str	r0,[r13, #4]
# Peephole Add/SubLdr2Ldr done
# Rescheduled
	ldrb	r1,[r11, #-56]
# Peephole MovLdr2Ldr done
	strb	r1,[r13]
	ldr	r0,[r11, #-128]
# Rescheduled
# Peephole LdrLdr2LdrMov done
	ldrb	r3,[r0, #86]
# Rescheduled
	ldrb	r2,[r11, #-76]
# Peephole MovLdr2Ldr done
	ldrh	r1,[r0, #84]
# Rescheduled
	ldr	r0,[r11, #-120]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPRESOLVEDEADKEY$LONGINT$WORD$WORD$BYTE$BYTE$WORD$$BOOLEAN
	cmp	r0,#0
	bne	.Lj1240
# [3061] Data.Modifiers:=Keyboard.Keyboard.Modifiers or KEYBOARD_KEYDOWN;
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #88]
	orr	r1,r0,#16384
# Rescheduled
# [3062] Data.ScanCode:=Keyboard.Keyboard.Code;
	ldr	r0,[r11, #-128]
	str	r1,[r11, #-116]
	ldrh	r0,[r0, #84]
	strh	r0,[r11, #-112]
# [3063] Data.KeyCode:=KeymapGetKeyCode(Keymap,Keyboard.Keyboard.Code,Keyboard.Keyboard.Index);
	ldr	r0,[r11, #-128]
# Rescheduled
# Peephole LdrLdr2LdrMov done
	ldrb	r2,[r0, #86]
# Rescheduled
	ldr	r3,[r11, #-120]
# Peephole MovLdr2Ldr done
	ldrh	r1,[r0, #84]
	mov	r0,r3
	bl	KEYMAP_$$_KEYMAPGETKEYCODE$LONGINT$WORD$BYTE$$WORD
	strh	r0,[r11, #-110]
# Rescheduled
# [3064] Data.CharCode:=KeymapGetCharCode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARCODE$LONGINT$WORD$$CHAR
	strb	r0,[r11, #-108]
# Rescheduled
# [3065] Data.CharUnicode:=KeymapGetCharUnicode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARUNICODE$LONGINT$WORD$$WIDECHAR
	strh	r0,[r11, #-106]
# [3068] if USBKeyboardInsertData(Keyboard,@Data) = ERROR_SUCCESS then
	sub	r1,r11,#116
# Rescheduled
	ldr	r0,[r11, #-128]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD
	cmp	r0,#0
# [3071] Inc(Counter);
	ldreq	r0,[r11, #-84]
	addeq	r0,r0,#1
	streq	r0,[r11, #-84]
.Lj1240:
.Lj1238:
# [3077] Keyboard.Keyboard.Code:=SCAN_CODE_NONE;
	ldr	r1,[r11, #-128]
	mov	r0,#0
	strh	r0,[r1, #84]
# [3080] Data.Modifiers:=Modifiers or KEYBOARD_KEYDOWN;
	ldr	r0,[r11, #-104]
	orr	r0,r0,#16384
	str	r0,[r11, #-116]
# [3081] Data.ScanCode:=ScanCode;
	ldrb	r0,[r11, #-76]
	strh	r0,[r11, #-112]
# [3082] Data.KeyCode:=KeymapGetKeyCode(Keymap,ScanCode,Index);
	ldrb	r1,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-120]
	ldrb	r2,[r11, #-56]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETKEYCODE$LONGINT$WORD$BYTE$$WORD
	strh	r0,[r11, #-110]
# [3083] if KeyCode <> KEY_CODE_NONE then Data.KeyCode:=KeyCode;
	ldrh	r0,[r11, #-72]
	cmp	r0,#0
	ldrneh	r0,[r11, #-72]
	strneh	r0,[r11, #-110]
# Rescheduled
# [3084] Data.CharCode:=KeymapGetCharCode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARCODE$LONGINT$WORD$$CHAR
	strb	r0,[r11, #-108]
# Rescheduled
# [3085] Data.CharUnicode:=KeymapGetCharUnicode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARUNICODE$LONGINT$WORD$$WIDECHAR
	strh	r0,[r11, #-106]
# [3092] if USBKeyboardInsertData(Keyboard,@Data) = ERROR_SUCCESS then
	sub	r1,r11,#116
# Rescheduled
	ldr	r0,[r11, #-128]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD
	cmp	r0,#0
	bne	.Lj1247
# [3095] Inc(Counter);
	ldr	r0,[r11, #-84]
	add	r0,r0,#1
	str	r0,[r11, #-84]
	b	.Lj1247
.Lj1219:
# Rescheduled
# [3103] if USBKeyboardCheckRepeated(Keyboard,ScanCode) then
	ldr	r0,[r11, #-128]
	ldrb	r1,[r11, #-76]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDCHECKREPEATED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN
	cmp	r0,#0
	beq	.Lj1249
# [3110] Data.Modifiers:=Modifiers or KEYBOARD_KEYREPEAT;
	ldr	r0,[r11, #-104]
	orr	r0,r0,#32768
	str	r0,[r11, #-116]
# [3111] Data.ScanCode:=ScanCode;
	ldrb	r0,[r11, #-76]
	strh	r0,[r11, #-112]
# [3112] Data.KeyCode:=KeymapGetKeyCode(Keymap,ScanCode,Index);
	ldrb	r1,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-120]
	ldrb	r2,[r11, #-56]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETKEYCODE$LONGINT$WORD$BYTE$$WORD
	strh	r0,[r11, #-110]
# Rescheduled
# [3113] Data.CharCode:=KeymapGetCharCode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARCODE$LONGINT$WORD$$CHAR
	strb	r0,[r11, #-108]
# Rescheduled
# [3114] Data.CharUnicode:=KeymapGetCharUnicode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARUNICODE$LONGINT$WORD$$WIDECHAR
	strh	r0,[r11, #-106]
# [3117] if USBKeyboardInsertData(Keyboard,@Data) = ERROR_SUCCESS then
	sub	r1,r11,#116
# Rescheduled
	ldr	r0,[r11, #-128]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD
	cmp	r0,#0
# [3120] Inc(Counter);
	ldreq	r0,[r11, #-84]
	addeq	r0,r0,#1
	streq	r0,[r11, #-84]
.Lj1249:
.Lj1247:
.Lj1193:
	ldr	r0,[r11, #-64]
	cmp	r0,#7
	blt	.Lj1191
# [3128] for Count:=2 to USB_HID_BOOT_REPORT_SIZE - 1 do
	mov	r0,#2
	str	r0,[r11, #-64]
# Peephole StrLdr2StrMov 1 done
	sub	r0,r0,#1
	str	r0,[r11, #-64]
	.balign 4
.Lj1254:
	ldr	r0,[r11, #-64]
	add	r0,r0,#1
	str	r0,[r11, #-64]
# Peephole Add/SubLdr2Ldr done
# Rescheduled
# [3131] Index:=Saved;
	ldrb	r1,[r11, #-60]
# Peephole Add/SubLdr2Ldr done
	strb	r1,[r11, #-56]
# [3134] ScanCode:=Keyboard.LastReport[Count];
	ldr	r1,[r11, #-128]
# Rescheduled
	ldr	r2,.Lj1255
	ldr	r0,[r11, #-64]
	add	r2,r1,r2
	ldrb	r0,[r2, r0]
	strb	r0,[r11, #-76]
# [3137] if ScanCode > SCAN_CODE_ERROR then
	ldrb	r0,[r11, #-76]
	cmp	r0,#3
	bls	.Lj1257
# [3140] if KeymapCheckCapskey(Keymap,ScanCode) then
	ldrb	r1,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-120]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPCHECKCAPSKEY$LONGINT$WORD$$BOOLEAN
	cmp	r0,#0
	beq	.Lj1259
# [3143] if (Modifiers and (KEYBOARD_CAPS_LOCK)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#512
	beq	.Lj1261
# [3146] if Index = KEYMAP_INDEX_NORMAL then
	ldrb	r0,[r11, #-56]
	cmp	r0,#0
# [3148] Index:=KEYMAP_INDEX_SHIFT;
	moveq	r0,#1
	streqb	r0,[r11, #-56]
	beq	.Lj1264
# [3150] else if Index = KEYMAP_INDEX_SHIFT then
	ldrb	r0,[r11, #-56]
	cmp	r0,#1
# [3152] Index:=KEYMAP_INDEX_NORMAL;
	moveq	r0,#0
	streqb	r0,[r11, #-56]
	beq	.Lj1267
# [3155] else if Index = KEYMAP_INDEX_ALTGR then
	ldrb	r0,[r11, #-56]
	cmp	r0,#2
# [3157] Index:=KEYMAP_INDEX_SHIFT_ALTGR;
	moveq	r0,#3
	streqb	r0,[r11, #-56]
	beq	.Lj1270
# [3159] else if Index = KEYMAP_INDEX_SHIFT_ALTGR then
	ldrb	r0,[r11, #-56]
	cmp	r0,#3
# [3161] Index:=KEYMAP_INDEX_ALTGR;
	moveq	r0,#2
	streqb	r0,[r11, #-56]
.Lj1270:
.Lj1267:
.Lj1264:
.Lj1261:
.Lj1259:
	ldrb	r0,[r11, #-76]
# [3167] if (ScanCode >= SCAN_CODE_KEYPAD_FIRST) and (ScanCode <= SCAN_CODE_KEYPAD_LAST) then
	cmp	r0,#83
	bcc	.Lj1274
	cmp	r0,#99
	bhi	.Lj1274
# [3170] if (Modifiers and (KEYBOARD_NUM_LOCK)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#256
	beq	.Lj1277
# [3173] if (Modifiers and (KEYBOARD_LEFT_SHIFT or KEYBOARD_RIGHT_SHIFT)) <> 0 then
	ldr	r0,[r11, #-104]
# Peephole OpCmp2OpS done
	ands	r0,r0,#34
# [3175] Index:=KEYMAP_INDEX_NORMAL;
	movne	r0,#0
	strneb	r0,[r11, #-56]
	bne	.Lj1281
# [3179] Index:=KEYMAP_INDEX_SHIFT;
	mov	r0,#1
	strb	r0,[r11, #-56]
	b	.Lj1281
.Lj1277:
# [3184] Index:=KEYMAP_INDEX_NORMAL;
	mov	r0,#0
	strb	r0,[r11, #-56]
.Lj1281:
.Lj1274:
# [3189] if USBKeyboardCheckReleased(Keyboard,Report,ScanCode) then
	ldrb	r2,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-128]
	ldr	r1,[r11, #-124]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDCHECKRELEASED$PUSBKEYBOARDDEVICE$PUSBKEYBOARDREPORT$BYTE$$BOOLEAN
	cmp	r0,#0
	beq	.Lj1283
# [3196] Keyboard.LastCode:=SCAN_CODE_NONE;
	ldr	r1,[r11, #-128]
# Rescheduled
	ldr	r2,.Lj1229
	mov	r0,#0
	strh	r0,[r1, r2]
# [3197] Keyboard.LastCount:=0;
	ldr	r1,[r11, #-128]
# Rescheduled
	ldr	r2,.Lj1230
	mov	r0,#0
	str	r0,[r1, r2]
# [3200] Data.Modifiers:=Modifiers or KEYBOARD_KEYUP;
	ldr	r0,[r11, #-104]
	orr	r0,r0,#8192
	str	r0,[r11, #-116]
# [3201] Data.ScanCode:=ScanCode;
	ldrb	r0,[r11, #-76]
	strh	r0,[r11, #-112]
# [3202] Data.KeyCode:=KeymapGetKeyCode(Keymap,ScanCode,Index);
	ldrb	r1,[r11, #-76]
# Rescheduled
	ldr	r0,[r11, #-120]
	ldrb	r2,[r11, #-56]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETKEYCODE$LONGINT$WORD$BYTE$$WORD
	strh	r0,[r11, #-110]
# Rescheduled
# [3203] Data.CharCode:=KeymapGetCharCode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARCODE$LONGINT$WORD$$CHAR
	strb	r0,[r11, #-108]
# Rescheduled
# [3204] Data.CharUnicode:=KeymapGetCharUnicode(Keymap,Data.KeyCode);
	ldr	r0,[r11, #-120]
	ldrh	r1,[r11, #-110]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYMAP_$$_KEYMAPGETCHARUNICODE$LONGINT$WORD$$WIDECHAR
	strh	r0,[r11, #-106]
# [3207] if USBKeyboardInsertData(Keyboard,@Data) = ERROR_SUCCESS then
	sub	r1,r11,#116
# Rescheduled
	ldr	r0,[r11, #-128]
# Peephole LdrMov2Ldr removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD
	cmp	r0,#0
# [3210] Inc(Counter);
	ldreq	r0,[r11, #-84]
	addeq	r0,r0,#1
	streq	r0,[r11, #-84]
.Lj1283:
.Lj1257:
	ldr	r0,[r11, #-64]
	cmp	r0,#7
	blt	.Lj1254
# Rescheduled
# [3217] System.Move(Report[0],Keyboard.LastReport[0],SizeOf(TUSBKeyboardReport));
	ldr	r2,.Lj1255
	ldr	r1,[r11, #-128]
# Rescheduled
	ldr	r0,[r11, #-124]
	add	r1,r2,r1
	mov	r2,#8
	bl	SYSTEM_$$_MOVE$formal$formal$LONGINT
# [3224] if (Keyboard.Keyboard.Device.DeviceFlags and KEYBOARD_FLAG_DIRECT_READ) = 0 then
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #28]
# Peephole OpCmp2OpS done
	ands	r0,r0,#2
	bne	.Lj1290
# [3228] SemaphoreSignalEx(KeyboardBuffer.Wait,Counter,nil);
	ldr	r0,.Lj1291
	ldr	r0,[r0]
	ldr	r0,[r0]
	ldr	r1,[r11, #-84]
	mov	r2,#0
	bl	THREADS_$$_SEMAPHORESIGNALEX$LONGINT$LONGWORD$PLONGWORD$$LONGWORD
	b	.Lj1292
.Lj1290:
# [3234] SemaphoreSignalEx(Keyboard.Keyboard.Buffer.Wait,Counter,nil);
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #92]
	ldr	r1,[r11, #-84]
	mov	r2,#0
	bl	THREADS_$$_SEMAPHORESIGNALEX$LONGINT$LONGWORD$PLONGWORD$$LONGWORD
.Lj1292:
# [3238] if LEDs <> Keyboard.Keyboard.KeyboardLEDs then
	ldr	r0,[r11, #-128]
# Rescheduled
# Rescheduled
	ldr	r0,[r0, #56]
	ldr	r1,[r11, #-68]
	cmp	r0,r1
	beq	.Lj1301
# [3241] Status:=USBKeyboardDeviceSetLEDs(Keyboard,Keyboard.Keyboard.KeyboardLEDs);
	ldr	r1,[r11, #-128]
# Rescheduled
# Peephole LdrLdr2LdrMov done
	mov	r0,r1
	ldrb	r1,[r1, #56]
# Peephole MovMov2Mov removed superfluous mov
	bl	KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD
	str	r0,[r11, #-80]
# Peephole StrLdr2StrMov 1 done
# [3242] if Status <> USB_STATUS_SUCCESS then
	cmp	r0,#0
	beq	.Lj1301
# [3244] if USB_LOG_ENABLED then USBLogError(Request.Device,'Keyboard: Failed to set LEDs: ' + USBStatusToString(Status));
	ldr	r0,.Lj1299
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1301
	sub	r0,r11,#372
	bl	fpc_ansistr_decr_ref
	ldr	r1,[r11, #-80]
	sub	r0,r11,#376
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r2,[r11, #-376]
# Rescheduled
	ldr	r1,.Lj1300
	mov	r3,#0
	sub	r0,r11,#372
	bl	fpc_ansistr_concat
# Rescheduled
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-372]
	ldr	r0,[r0]
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
	b	.Lj1301
.Lj1107:
# [3250] if USB_LOG_ENABLED then USBLogError(Request.Device,'Keyboard: Failed report request (Status=' + USBStatusToString(Request.Status) + ', ActualSize=' + IntToStr(Request.ActualSize) + ')');
	ldr	r0,.Lj1299
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1303
	sub	r0,r11,#376
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj1305
# Rescheduled
	ldr	r1,[r11, #-48]
	str	r0,[r11, #-396]
	ldr	r1,[r1, #36]
	sub	r0,r11,#400
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r1,[r11, #-400]
# Rescheduled
	ldr	r0,.Lj1306
	str	r1,[r11, #-392]
# Rescheduled
	ldr	r1,[r11, #-48]
	str	r0,[r11, #-388]
	ldr	r1,[r1, #40]
	mov	r2,#0
	sub	r0,r11,#404
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r1,[r11, #-404]
# Rescheduled
	ldr	r0,.Lj1307
	str	r1,[r11, #-384]
	str	r0,[r11, #-380]
	sub	r1,r11,#396
	mov	r3,#0
	mov	r2,#4
	sub	r0,r11,#376
	bl	fpc_ansistr_concat_multi
# Rescheduled
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-376]
	ldr	r0,[r0]
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
.Lj1303:
# Rescheduled
# Rescheduled
# [3253] Inc(Keyboard.Keyboard.ReceiveErrors);
	ldr	r2,[r11, #-128]
	ldr	r1,.Lj1308
	ldr	r0,[r2, r1]
	add	r0,r0,#1
	str	r0,[r2, r1]
.Lj1301:
# Rescheduled
# Rescheduled
# [3257] Dec(Keyboard.PendingCount);
	ldr	r2,[r11, #-128]
	ldr	r1,.Lj1309
	ldr	r0,[r2, r1]
	sub	r0,r0,#1
	str	r0,[r2, r1]
# [3260] if Keyboard.Keyboard.KeyboardState = KEYBOARD_STATE_DETACHING then
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #52]
	cmp	r0,#1
	bne	.Lj1311
# Rescheduled
# Rescheduled
# [3263] if Keyboard.PendingCount = 0 then
	ldr	r0,[r11, #-128]
	ldr	r1,.Lj1309
	ldr	r0,[r0, r1]
	cmp	r0,#0
	bne	.Lj1320
# Rescheduled
# Rescheduled
# [3266] if Keyboard.WaiterThread <> INVALID_HANDLE_VALUE then
	ldr	r0,[r11, #-128]
	ldr	r1,.Lj1315
	ldr	r0,[r0, r1]
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1320
# [3273] FillChar(Message,SizeOf(TMessage),0);
	sub	r0,r11,#100
	mov	r2,#0
	mov	r1,#16
	bl	SYSTEM_$$_FILLCHAR$formal$LONGINT$BYTE
# Rescheduled
# Rescheduled
# [3274] ThreadSendMessage(Keyboard.WaiterThread,Message);
	ldr	r0,[r11, #-128]
	ldr	r1,.Lj1315
	ldr	r0,[r0, r1]
	sub	r1,r11,#100
	bl	THREADS_$$_THREADSENDMESSAGE$LONGINT$TMESSAGE$$LONGWORD
# [3275] Keyboard.WaiterThread:=INVALID_HANDLE_VALUE;
	ldr	r1,[r11, #-128]
# Rescheduled
	ldr	r0,.Lj1315
	mvn	r2,#0
	str	r2,[r1, r0]
	b	.Lj1320
.Lj1311:
# Rescheduled
# Rescheduled
# [3282] Inc(Keyboard.PendingCount);
	ldr	r1,[r11, #-128]
	ldr	r2,.Lj1309
	ldr	r0,[r1, r2]
	add	r0,r0,#1
	str	r0,[r1, r2]
# [3289] Status:=USBRequestSubmit(Request);
	ldr	r0,[r11, #-48]
	bl	USB_$$_USBREQUESTSUBMIT$PUSBREQUEST$$LONGWORD
	str	r0,[r11, #-80]
# Peephole StrLdr2StrMov 1 done
# [3290] if Status <> USB_STATUS_SUCCESS then
	cmp	r0,#0
	beq	.Lj1323
# [3292] if USB_LOG_ENABLED then USBLogError(Request.Device,'Keyboard: Failed to resubmit report request: ' + USBStatusToString(Status));
	ldr	r0,.Lj1299
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1325
	sub	r0,r11,#376
	bl	fpc_ansistr_decr_ref
	ldr	r1,[r11, #-80]
	sub	r0,r11,#372
	bl	USB_$$_USBSTATUSTOSTRING$LONGWORD$$ANSISTRING
	ldr	r2,[r11, #-372]
# Rescheduled
	ldr	r1,.Lj1327
	mov	r3,#0
	sub	r0,r11,#376
	bl	fpc_ansistr_concat
# Rescheduled
	ldr	r0,[r11, #-48]
	ldr	r1,[r11, #-376]
	ldr	r0,[r0]
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
.Lj1325:
# Rescheduled
# Rescheduled
# [3295] Dec(Keyboard.PendingCount);
	ldr	r1,[r11, #-128]
	ldr	r2,.Lj1309
	ldr	r0,[r1, r2]
	sub	r0,r0,#1
	str	r0,[r1, r2]
.Lj1323:
.Lj1320:
.Lj1100:
	bl	fpc_popaddrstack
# [3300] MutexUnlock(Keyboard.Keyboard.Lock);
	ldr	r0,[r11, #-128]
	ldr	r0,[r0, #80]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1329
	cmp	r0,#0
	beq	.Lj1329
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj1091
	cmp	r2,r1
	bne	.Lj1329
	ldr	r1,.Lj1337
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj1339
# Rescheduled
	ldr	r1,.Lj1337
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj1339:
.Lj1329:
	ldr	r0,[r11, #-368]
	cmp	r0,#0
	blne	fpc_reraise
	b	.Lj1346
.Lj1099:
# [3305] if USB_LOG_ENABLED then USBLogError(Request.Device,'Keyboard: Failed to acquire lock');
	ldr	r0,.Lj1299
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1346
	ldr	r0,[r11, #-48]
# Rescheduled
	ldr	r1,.Lj1345
	ldr	r0,[r0]
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
	b	.Lj1346
.Lj1085:
# [3310] if USB_LOG_ENABLED then USBLogError(Request.Device,'Keyboard: Report request invalid');
	ldr	r0,.Lj1299
	ldrb	r0,[r0]
	cmp	r0,#0
	ldrne	r0,[r11, #-48]
# Rescheduled
	ldrne	r1,.Lj1350
	ldrne	r0,[r0]
	blne	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
.Lj1346:
.Lj1075:
	bl	fpc_popaddrstack
	sub	r0,r11,#404
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#400
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#376
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#372
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-248]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r11,r13,r15}
.Lj1077:
	.long	U_$THREADS_$$_THREADGETCURRENTHANDLER
.Lj1091:
	.long	475889572
.Lj1094:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj1103:
	.long	6248
.Lj1123:
	.long	TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE
.Lj1124:
	.long	TC_$KEYBOARD_$$_RB_START
.Lj1125:
	.long	TC_$KEYBOARD_$$_RB_END
.Lj1136:
	.long	U_$KEYBOARD_$$_REPORT_BUFFER
.Lj1166:
	.long	TC_$GLOBALCONFIG_$$_KEYBOARD_SHIFT_IS_CAPS_LOCK_OFF
.Lj1171:
	.long	TC_$GLOBALCONFIG_$$_KEYBOARD_CTRL_ALT_IS_ALTGR
.Lj1229:
	.long	6280
.Lj1230:
	.long	6284
.Lj1255:
	.long	6288
.Lj1291:
	.long	U_$KEYBOARD_$$_KEYBOARDBUFFER
.Lj1299:
	.long	U_$USB_$$_USB_LOG_ENABLED
.Lj1300:
	.long	.Ld25
.Lj1305:
	.long	.Ld27
.Lj1306:
	.long	.Ld28
.Lj1307:
	.long	.Ld29
.Lj1308:
	.long	6252
.Lj1309:
	.long	6296
.Lj1315:
	.long	6300
.Lj1327:
	.long	.Ld30
.Lj1337:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Lj1345:
	.long	.Ld31
.Lj1350:
	.long	.Ld32
.Le34:
	.size	KEYBOARD_$$_USBKEYBOARDREPORTWORKER$PUSBREQUEST, .Le34 - KEYBOARD_$$_USBKEYBOARDREPORTWORKER$PUSBREQUEST

.section .text.n_keyboard_$$_usbkeyboardreportcomplete$pusbrequest
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDREPORTCOMPLETE$PUSBREQUEST
KEYBOARD_$$_USBKEYBOARDREPORTCOMPLETE$PUSBREQUEST:
# [3320] begin
	stmfd	r13!,{r14}
# Var Request located in register r2
# [3323] if Request = nil then Exit;
	cmp	r0,#0
	beq	.Lj1351
# [3325] WorkerSchedule(0,TWorkerTask(USBKeyboardReportWorker),Request,nil)
	ldr	r1,.Lj1355
	mov	r2,r0
# Var Request located in register r2
	mov	r3,#0
	mov	r0,#0
	bl	THREADS_$$_WORKERSCHEDULE$LONGWORD$TWORKERTASK$POINTER$TWORKERCALLBACK$$LONGWORD
.Lj1351:
# [3326] end;
	ldmfd	r13!,{r15}
.Lj1355:
	.long	KEYBOARD_$$_USBKEYBOARDREPORTWORKER$PUSBREQUEST
.Le35:
	.size	KEYBOARD_$$_USBKEYBOARDREPORTCOMPLETE$PUSBREQUEST, .Le35 - KEYBOARD_$$_USBKEYBOARDREPORTCOMPLETE$PUSBREQUEST

.section .text.n_keyboard_$$_keyboardgetcount$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDGETCOUNT$$LONGWORD
KEYBOARD_$$_KEYBOARDGETCOUNT$$LONGWORD:
# Var $result located in register r0
# [3333] begin
# Var $result located in register r0
# [3335] Result:=KeyboardTableCount;
	ldr	r0,.Lj1358
	ldr	r0,[r0]
# [3336] end;
	bx	r14
.Lj1358:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLECOUNT
.Le36:
	.size	KEYBOARD_$$_KEYBOARDGETCOUNT$$LONGWORD, .Le36 - KEYBOARD_$$_KEYBOARDGETCOUNT$$LONGWORD

.section .text.n_keyboard_$$_keyboarddevicecheck$pkeyboarddevice$$pkeyboarddevice
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICECHECK$PKEYBOARDDEVICE$$PKEYBOARDDEVICE
KEYBOARD_$$_KEYBOARDDEVICECHECK$PKEYBOARDDEVICE$$PKEYBOARDDEVICE:
# Temps allocated between r13+12 and r13+132
# [3344] begin
	stmfd	r13!,{r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var $result located at r13+4, size=OS_32
# Var Current located at r13+8, size=OS_32
	str	r0,[r13, #-132]!
# [3346] Result:=nil;
	mov	r0,#0
# Rescheduled
# [3349] if Keyboard = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #4]
	cmp	r1,#0
	beq	.Lj1359
# [3350] if Keyboard.Device.Signature <> DEVICE_SIGNATURE then Exit;
	ldr	r0,[r13]
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj1363
	cmp	r0,r1
	bne	.Lj1359
# [3353] if CriticalSectionLock(KeyboardTableLock) = ERROR_SUCCESS then
	ldr	r0,.Lj1366
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONLOCK$LONGINT$$LONGWORD
	cmp	r0,#0
	bne	.Lj1368
# [3355] try
	add	r2,r13,#12
	add	r1,r13,#24
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #128]
	cmp	r0,#0
	bne	.Lj1369
# [3357] Current:=KeyboardTable;
	ldr	r0,.Lj1372
	ldr	r0,[r0]
	str	r0,[r13, #8]
# [3358] while Current <> nil do
	b	.Lj1374
	.balign 4
.Lj1373:
# Rescheduled
# Rescheduled
# [3361] if Current = Keyboard then
	ldr	r1,[r13, #8]
	ldr	r0,[r13]
	cmp	r1,r0
# [3363] Result:=Keyboard;
	ldreq	r0,[r13]
	streq	r0,[r13, #4]
# [3364] Exit;
	beq	.Lj1371
# Rescheduled
# Rescheduled
# [3368] Current:=Current.Next;
	ldr	r1,[r13, #8]
	ldr	r0,.Lj1378
	ldr	r0,[r1, r0]
	str	r0,[r13, #8]
.Lj1374:
	ldr	r0,[r13, #8]
	cmp	r0,#0
	bne	.Lj1373
.Lj1369:
	bl	fpc_popaddrstack
# [3372] CriticalSectionUnlock(KeyboardTableLock);
	ldr	r0,.Lj1366
	ldr	r0,[r0]
	bl	THREADS_$$_CRITICALSECTIONUNLOCK$LONGINT$$LONGWORD
	ldr	r0,[r13, #128]
	cmp	r0,#0
	beq	.Lj1370
	cmp	r0,#2
	beq	.Lj1359
	bl	fpc_reraise
.Lj1371:
	mov	r0,#2
	str	r0,[r13, #128]
	b	.Lj1369
.Lj1370:
.Lj1368:
.Lj1359:
# [3375] end;
	ldr	r0,[r13, #4]
	add	r13,r13,#132
	ldmfd	r13!,{r15}
.Lj1363:
	.long	-1392247236
.Lj1366:
	.long	TC_$KEYBOARD_$$_KEYBOARDTABLELOCK
.Lj1372:
	.long	U_$KEYBOARD_$$_KEYBOARDTABLE
.Lj1378:
	.long	6264
.Le37:
	.size	KEYBOARD_$$_KEYBOARDDEVICECHECK$PKEYBOARDDEVICE$$PKEYBOARDDEVICE, .Le37 - KEYBOARD_$$_KEYBOARDDEVICECHECK$PKEYBOARDDEVICE$$PKEYBOARDDEVICE

.section .text.n_keyboard_$$_keyboarddevicetypetostring$longword$$ansistring
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICETYPETOSTRING$LONGWORD$$ANSISTRING
KEYBOARD_$$_KEYBOARDDEVICETYPETOSTRING$LONGWORD$$ANSISTRING:
# [3380] begin
	stmfd	r13!,{r4,r5,r14}
# Var KeyboardType located in register r5
# Var $result located in register r4
	mov	r4,r0
	mov	r5,r1
# Rescheduled
# [3382] Result:='KEYBOARD_TYPE_UNKNOWN';
	ldr	r1,.Lj1382
	mov	r0,r4
	bl	fpc_ansistr_assign
# [3384] if KeyboardType <= KEYBOARD_TYPE_MAX then
	cmp	r5,#3
# Rescheduled
# [3386] Result:=KEYBOARD_TYPE_NAMES[KeyboardType];
	ldrls	r0,.Lj1385
# Peephole FoldShiftLdrStr done
	ldrls	r1,[r0, r5, lsl #2]
	movls	r0,r4
	blls	fpc_ansistr_assign
# [3388] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj1382:
	.long	.Ld33
.Lj1385:
	.long	TC_$KEYBOARD_$$_KEYBOARD_TYPE_NAMES
.Le38:
	.size	KEYBOARD_$$_KEYBOARDDEVICETYPETOSTRING$LONGWORD$$ANSISTRING, .Le38 - KEYBOARD_$$_KEYBOARDDEVICETYPETOSTRING$LONGWORD$$ANSISTRING

.section .text.n_keyboard_$$_keyboarddevicestatetostring$longword$$ansistring
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICESTATETOSTRING$LONGWORD$$ANSISTRING
KEYBOARD_$$_KEYBOARDDEVICESTATETOSTRING$LONGWORD$$ANSISTRING:
# [3393] begin
	stmfd	r13!,{r4,r5,r14}
# Var KeyboardState located in register r5
# Var $result located in register r4
	mov	r4,r0
	mov	r5,r1
# Rescheduled
# [3395] Result:='KEYBOARD_STATE_UNKNOWN';
	ldr	r1,.Lj1388
	mov	r0,r4
	bl	fpc_ansistr_assign
# [3397] if KeyboardState <= KEYBOARD_STATE_MAX then
	cmp	r5,#3
# Rescheduled
# [3399] Result:=KEYBOARD_STATE_NAMES[KeyboardState];
	ldrls	r0,.Lj1391
# Peephole FoldShiftLdrStr done
	ldrls	r1,[r0, r5, lsl #2]
	movls	r0,r4
	blls	fpc_ansistr_assign
# [3401] end;
	ldmfd	r13!,{r4,r5,r15}
.Lj1388:
	.long	.Ld34
.Lj1391:
	.long	TC_$KEYBOARD_$$_KEYBOARD_STATE_NAMES
.Le39:
	.size	KEYBOARD_$$_KEYBOARDDEVICESTATETOSTRING$LONGWORD$$ANSISTRING, .Le39 - KEYBOARD_$$_KEYBOARDDEVICESTATETOSTRING$LONGWORD$$ANSISTRING

.section .text.n_keyboard_$$_keyboarddevicestatetonotification$longword$$longword
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDDEVICESTATETONOTIFICATION$LONGWORD$$LONGWORD
KEYBOARD_$$_KEYBOARDDEVICESTATETONOTIFICATION$LONGWORD$$LONGWORD:
# Var State located in register r1
# Var $result located in register r0
# [3407] begin
	mov	r1,r0
# Var $result located in register r0
# [3409] Result:=DEVICE_NOTIFICATION_NONE;
	mov	r0,#0
# [3412] case State of
	cmp	r1,#0
	beq	.Lj1396
	subs	r1,r1,#1
	beq	.Lj1397
	subs	r1,r1,#1
	beq	.Lj1398
	subs	r1,r1,#1
	beq	.Lj1399
	b	.Lj1395
.Lj1396:
# [3413] KEYBOARD_STATE_DETACHED:Result:=DEVICE_NOTIFICATION_DETACH;
	mov	r0,#512
	b	.Lj1394
.Lj1397:
# [3414] KEYBOARD_STATE_DETACHING:Result:=DEVICE_NOTIFICATION_DETACHING;
	mov	r0,#32768
	b	.Lj1394
.Lj1398:
# [3415] KEYBOARD_STATE_ATTACHING:Result:=DEVICE_NOTIFICATION_ATTACHING;
	mov	r0,#16384
	b	.Lj1394
.Lj1399:
# [3416] KEYBOARD_STATE_ATTACHED:Result:=DEVICE_NOTIFICATION_ATTACH;
	mov	r0,#256
.Lj1395:
.Lj1394:
# [3418] end;
	bx	r14
.Le40:
	.size	KEYBOARD_$$_KEYBOARDDEVICESTATETONOTIFICATION$LONGWORD$$LONGWORD, .Le40 - KEYBOARD_$$_KEYBOARDDEVICESTATETONOTIFICATION$LONGWORD$$LONGWORD

.section .text.n_keyboard_$$_keyboardremapctrlcode$word$word$$word
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD
KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD:
# Var KeyCode located in register r2
# Var CharCode located in register r0
# Var $result located in register r0
# [3426] begin
	mov	r2,r0
	mov	r0,r1
# Var $result located in register r0
# Var CharCode located in register r0
# [3430] if (KeyCode >= KEY_CODE_A) and (KeyCode <= KEY_CODE_Z) then
	cmp	r2,#97
	bcc	.Lj1403
	cmp	r2,#122
# [3433] Result:=KeyCode - (KEY_CODE_A - 1); {Minus 0x60}
	subls	r1,r2,#96
	uxthls	r0,r1
# Peephole UxthMov2Data removed superfluous mov
	bls	.Lj1405
.Lj1403:
# [3435] else if (KeyCode >= KEY_CODE_CAPITAL_A) and (KeyCode <= KEY_CODE_CAPITAL_A) then
	cmp	r2,#65
	bcc	.Lj1407
	cmp	r2,#65
# [3438] Result:=KeyCode - (KEY_CODE_CAPITAL_A - 1);  {Minus 0x40}
	subls	r1,r2,#64
	uxthls	r0,r1
# Peephole UxthMov2Data removed superfluous mov
	bls	.Lj1409
.Lj1407:
# [3440] else if (KeyCode = KEY_CODE_LEFT_SQUARE) then
	cmp	r2,#91
# [3443] Result:=27;
	moveq	r0,#27
	beq	.Lj1412
# [3445] else if (KeyCode = KEY_CODE_BACKSLASH) then
	cmp	r2,#92
# [3448] Result:=28;
	moveq	r0,#28
	beq	.Lj1415
# [3450] else if (KeyCode = KEY_CODE_RIGHT_SQUARE) then
	cmp	r2,#93
# [3453] Result:=29;
	moveq	r0,#29
	beq	.Lj1418
# [3455] else if (KeyCode = KEY_CODE_6) or (KeyCode = KEY_CODE_CARET) then
	cmp	r2,#54
	beq	.Lj1419
	cmp	r2,#94
	bne	.Lj1421
.Lj1419:
# [3458] Result:=30;
	mov	r0,#30
	b	.Lj1422
.Lj1421:
# [3460] else if (KeyCode = KEY_CODE_MINUS) or (KeyCode = KEY_CODE_UNDERSCORE) then
	cmp	r2,#45
	beq	.Lj1423
	cmp	r2,#95
	bne	.Lj1425
.Lj1423:
# [3463] Result:=31;
	mov	r0,#31
.Lj1425:
.Lj1422:
.Lj1418:
.Lj1415:
.Lj1412:
.Lj1409:
.Lj1405:
# [3465] end;
	bx	r14
.Le41:
	.size	KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD, .Le41 - KEYBOARD_$$_KEYBOARDREMAPCTRLCODE$WORD$WORD$$WORD

.section .text.n_keyboard_$$_keyboardremapkeycode$word$word$byte$longword$$boolean
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDREMAPKEYCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN
KEYBOARD_$$_KEYBOARDREMAPKEYCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN:
# [3477] begin
	stmfd	r13!,{r4,r5,r14}
# Var ScanCode located in register r12
# Var KeyCode located in register r1
# Var CharCode located in register r2
# Var Modifiers located in register r3
# Var $result located in register r0
	mov	r12,r0
# Var $result located in register r0
# [3479] Result:=False;
	mov	r0,#0
# Peephole OpCmp2OpS done
# [3482] if (Modifiers and (KEYBOARD_LEFT_ALT or KEYBOARD_RIGHT_ALT)) <> 0 then
	ands	r4,r3,#68
	beq	.Lj1429
# [3485] case KeyCode of
	mov	r4,r1
	cmp	r4,#8
	bcc	.Lj1431
	subs	r4,r4,#8
	beq	.Lj1436
	subs	r4,r4,#1
	beq	.Lj1447
	subs	r4,r4,#18
	beq	.Lj1434
	subs	r4,r4,#5
	beq	.Lj1435
	subs	r4,r4,#95
	beq	.Lj1446
	mov	r5,#130
	orr	r5,r5,#57088
	subs	r4,r4,r5
	bcc	.Lj1431
	subs	r4,r4,#9
	bls	.Lj1432
	subs	r4,r4,#1
	subs	r4,r4,#1
	bls	.Lj1433
	subs	r4,r4,#4
	beq	.Lj1445
	subs	r4,r4,#1
	beq	.Lj1437
	subs	r4,r4,#1
	beq	.Lj1439
	subs	r4,r4,#1
	beq	.Lj1442
	subs	r4,r4,#1
	beq	.Lj1444
	subs	r4,r4,#1
	beq	.Lj1441
	subs	r4,r4,#1
	beq	.Lj1440
	subs	r4,r4,#1
	beq	.Lj1443
	subs	r4,r4,#1
	beq	.Lj1438
	b	.Lj1431
.Lj1432:
# [3488] CharCode:=KeyCode - (KEY_CODE_F1 - $68);
	sub	r4,r1,#153
	sub	r4,r4,#57088
# Peephole AndStrb2Strb done
	strb	r4,[r2]
# [3489] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1433:
# [3493] CharCode:=KeyCode - (KEY_CODE_F11 - $8B);
	sub	r4,r1,#128
	sub	r4,r4,#57088
# Peephole AndStrb2Strb done
	strb	r4,[r2]
# [3494] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1434:
# [3498] CharCode:=$01;
	mov	r4,#1
	strb	r4,[r2]
# [3499] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1435:
# [3502] CharCode:=$02;
	mov	r4,#2
	strb	r4,[r2]
# [3503] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1436:
# Peephole OpCmp2OpS done
# [3507] if (Modifiers and (KEYBOARD_LEFT_SHIFT or KEYBOARD_RIGHT_SHIFT)) <> 0 then
	ands	r4,r3,#34
# [3509] CharCode:=$09;
	movne	r4,#9
	strneb	r4,[r2]
# [3513] CharCode:=$08;
	moveq	r4,#8
	streqb	r4,[r2]
# [3515] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1437:
# [3519] CharCode:=$97;
	mov	r4,#151
	strb	r4,[r2]
# [3520] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1438:
# [3523] CharCode:=$98;
	mov	r4,#152
	strb	r4,[r2]
# [3524] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1439:
# [3527] CharCode:=$99;
	mov	r4,#153
	strb	r4,[r2]
# [3528] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1440:
# [3531] CharCode:=$9B;
	mov	r4,#155
	strb	r4,[r2]
# [3532] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1441:
# [3535] CharCode:=$9D;
	mov	r4,#157
	strb	r4,[r2]
# [3536] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1442:
# [3539] CharCode:=$9F;
	mov	r4,#159
	strb	r4,[r2]
# [3540] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1443:
# [3543] CharCode:=$A0;
	mov	r4,#160
	strb	r4,[r2]
# [3544] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1444:
# [3547] CharCode:=$A1;
	mov	r4,#161
	strb	r4,[r2]
# [3548] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1445:
# [3551] CharCode:=$A2;
	mov	r4,#162
	strb	r4,[r2]
# [3552] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1446:
# [3555] CharCode:=$A3;
	mov	r4,#163
	strb	r4,[r2]
# [3556] Result:=True;
	mov	r0,#1
	b	.Lj1430
.Lj1447:
# [3559] CharCode:=$A5;
	mov	r4,#165
	strb	r4,[r2]
# [3560] Result:=True;
	mov	r0,#1
.Lj1431:
.Lj1430:
# Peephole OpCmp2OpS done
# [3565] if (Modifiers and KEYBOARD_ALTGR) = 0 then
	ands	r4,r3,#131072
	bne	.Lj1452
# [3568] case KeyCode of
	mov	r4,r1
	cmp	r4,#34
	bcc	.Lj1454
	cmp	r4,#125
	bhi	.Lj1454
	uxth	r4,r4
	sub	r4,r4,#35
	ldr	r15,[r15, r4, lsl #2]
	.long	.Lj1477
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1477
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1486
	.long	.Lj1499
	.long	.Lj1487
	.long	.Lj1488
	.long	.Lj1498
	.long	.Lj1489
	.long	.Lj1490
	.long	.Lj1491
	.long	.Lj1492
	.long	.Lj1493
	.long	.Lj1494
	.long	.Lj1495
	.long	.Lj1496
	.long	.Lj1497
	.long	.Lj1476
	.long	.Lj1476
	.long	.Lj1486
	.long	.Lj1500
	.long	.Lj1487
	.long	.Lj1488
	.long	.Lj1454
	.long	.Lj1467
	.long	.Lj1483
	.long	.Lj1481
	.long	.Lj1469
	.long	.Lj1457
	.long	.Lj1470
	.long	.Lj1471
	.long	.Lj1472
	.long	.Lj1462
	.long	.Lj1473
	.long	.Lj1474
	.long	.Lj1475
	.long	.Lj1485
	.long	.Lj1484
	.long	.Lj1463
	.long	.Lj1464
	.long	.Lj1455
	.long	.Lj1458
	.long	.Lj1468
	.long	.Lj1459
	.long	.Lj1461
	.long	.Lj1482
	.long	.Lj1456
	.long	.Lj1480
	.long	.Lj1460
	.long	.Lj1479
	.long	.Lj1465
	.long	.Lj1478
	.long	.Lj1466
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1454
	.long	.Lj1467
	.long	.Lj1483
	.long	.Lj1481
	.long	.Lj1469
	.long	.Lj1457
	.long	.Lj1470
	.long	.Lj1471
	.long	.Lj1472
	.long	.Lj1462
	.long	.Lj1473
	.long	.Lj1474
	.long	.Lj1475
	.long	.Lj1485
	.long	.Lj1484
	.long	.Lj1463
	.long	.Lj1464
	.long	.Lj1455
	.long	.Lj1458
	.long	.Lj1468
	.long	.Lj1459
	.long	.Lj1461
	.long	.Lj1482
	.long	.Lj1456
	.long	.Lj1480
	.long	.Lj1460
	.long	.Lj1479
	.long	.Lj1465
	.long	.Lj1478
	.long	.Lj1466
.Lj1455:
# [3571] CharCode:=$10;
	mov	r4,#16
	strb	r4,[r2]
# [3572] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1456:
# [3575] CharCode:=$11;
	mov	r4,#17
	strb	r4,[r2]
# [3576] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1457:
# [3579] CharCode:=$12;
	mov	r4,#18
	strb	r4,[r2]
# [3580] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1458:
# [3583] CharCode:=$13;
	mov	r4,#19
	strb	r4,[r2]
# [3584] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1459:
# [3587] CharCode:=$14;
	mov	r4,#20
	strb	r4,[r2]
# [3588] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1460:
# [3591] CharCode:=$15;
	mov	r4,#21
	strb	r4,[r2]
# [3592] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1461:
# [3595] CharCode:=$16;
	mov	r4,#22
	strb	r4,[r2]
# [3596] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1462:
# [3599] CharCode:=$17;
	mov	r4,#23
	strb	r4,[r2]
# [3600] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1463:
# [3603] CharCode:=$18;
	mov	r4,#24
	strb	r4,[r2]
# [3604] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1464:
# [3607] CharCode:=$19;
	mov	r4,#25
	strb	r4,[r2]
# [3608] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1465:
# [3611] CharCode:=$1A;
	mov	r4,#26
	strb	r4,[r2]
# [3612] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1466:
# [3615] CharCode:=$1B;
	mov	r4,#27
	strb	r4,[r2]
# [3616] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1467:
# [3620] CharCode:=$1E;
	mov	r4,#30
	strb	r4,[r2]
# [3621] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1468:
# [3624] CharCode:=$1F;
	mov	r4,#31
	strb	r4,[r2]
# [3625] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1469:
# [3628] CharCode:=$20;
	mov	r4,#32
	strb	r4,[r2]
# [3629] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1470:
# [3632] CharCode:=$21;
	mov	r4,#33
	strb	r4,[r2]
# [3633] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1471:
# [3636] CharCode:=$22;
	mov	r4,#34
	strb	r4,[r2]
# [3637] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1472:
# [3640] CharCode:=$23;
	mov	r4,#35
	strb	r4,[r2]
# [3641] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1473:
# [3644] CharCode:=$24;
	mov	r4,#36
	strb	r4,[r2]
# [3645] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1474:
# [3648] CharCode:=$25;
	mov	r4,#37
	strb	r4,[r2]
# [3649] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1475:
# [3652] CharCode:=$26;
	mov	r4,#38
	strb	r4,[r2]
# [3653] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1476:
# [3656] CharCode:=$27;
	mov	r4,#39
	strb	r4,[r2]
# [3657] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1477:
# [3660] CharCode:=$28;
	mov	r4,#40
	strb	r4,[r2]
# [3661] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1478:
# [3664] CharCode:=$2B;
	mov	r4,#43
	strb	r4,[r2]
# [3665] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1479:
# [3669] CharCode:=$2C;
	mov	r4,#44
	strb	r4,[r2]
# [3670] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1480:
# [3673] CharCode:=$2D;
	mov	r4,#45
	strb	r4,[r2]
# [3674] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1481:
# [3677] CharCode:=$2E;
	mov	r4,#46
	strb	r4,[r2]
# [3678] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1482:
# [3681] CharCode:=$2F;
	mov	r4,#47
	strb	r4,[r2]
# [3682] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1483:
# [3685] CharCode:=$30;
	mov	r4,#48
	strb	r4,[r2]
# [3686] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1484:
# [3689] CharCode:=$31;
	mov	r4,#49
	strb	r4,[r2]
# [3690] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1485:
# [3693] CharCode:=$32;
	mov	r4,#50
	strb	r4,[r2]
# [3694] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1486:
# [3697] CharCode:=$33;
	mov	r4,#51
	strb	r4,[r2]
# [3698] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1487:
# [3701] CharCode:=$34;
	mov	r4,#52
	strb	r4,[r2]
# [3702] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1488:
# [3705] CharCode:=$35;
	mov	r4,#53
	strb	r4,[r2]
# [3706] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1489:
# [3710] CharCode:=$78;
	mov	r4,#120
	strb	r4,[r2]
# [3711] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1490:
# [3714] CharCode:=$79;
	mov	r4,#121
	strb	r4,[r2]
# [3715] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1491:
# [3718] CharCode:=$7A;
	mov	r4,#122
	strb	r4,[r2]
# [3719] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1492:
# [3722] CharCode:=$7B;
	mov	r4,#123
	strb	r4,[r2]
# [3723] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1493:
# [3726] CharCode:=$7C;
	mov	r4,#124
	strb	r4,[r2]
# [3727] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1494:
# [3730] CharCode:=$7D;
	mov	r4,#125
	strb	r4,[r2]
# [3731] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1495:
# [3734] CharCode:=$7E;
	mov	r4,#126
	strb	r4,[r2]
# [3735] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1496:
# [3738] CharCode:=$7F;
	mov	r4,#127
	strb	r4,[r2]
# [3739] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1497:
# [3742] CharCode:=$80;
	mov	r4,#128
	strb	r4,[r2]
# [3743] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1498:
# [3746] CharCode:=$81;
	mov	r4,#129
	strb	r4,[r2]
# [3747] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1499:
# [3750] CharCode:=$82;
	mov	r4,#130
	strb	r4,[r2]
# [3751] Result:=True;
	mov	r0,#1
	b	.Lj1453
.Lj1500:
# [3754] CharCode:=$83;
	mov	r4,#131
	strb	r4,[r2]
# [3755] Result:=True;
	mov	r0,#1
.Lj1454:
.Lj1453:
.Lj1452:
# [3761] case ScanCode of
	mov	r4,r12
	cmp	r4,#85
	bcc	.Lj1505
	subs	r4,r4,#85
	beq	.Lj1503
	subs	r4,r4,#2
	beq	.Lj1504
	b	.Lj1505
.Lj1503:
# [3764] CharCode:=$37;
	mov	r4,#55
	strb	r4,[r2]
# [3765] Result:=True;
	mov	r0,#1
	b	.Lj1505
.Lj1504:
# [3768] CharCode:=$4E;
	mov	r4,#78
	strb	r4,[r2]
# [3769] Result:=True;
	mov	r0,#1
	b	.Lj1505
.Lj1429:
# Peephole OpCmp2OpS done
# [3775] else if (Modifiers and (KEYBOARD_LEFT_CTRL or KEYBOARD_RIGHT_CTRL)) <> 0 then
	ands	r4,r3,#17
	beq	.Lj1507
# [3778] case KeyCode of
	mov	r4,r1
	cmp	r4,#9
	bcc	.Lj1509
	subs	r4,r4,#9
	beq	.Lj1525
	subs	r4,r4,#36
	beq	.Lj1522
	subs	r4,r4,#5
	beq	.Lj1526
	subs	r4,r4,#77
	beq	.Lj1513
	mov	r5,#130
	orr	r5,r5,#57088
	subs	r4,r4,r5
	bcc	.Lj1509
	subs	r4,r4,#9
	bls	.Lj1510
	subs	r4,r4,#1
	subs	r4,r4,#1
	bls	.Lj1511
	subs	r4,r4,#1
	beq	.Lj1514
	subs	r4,r4,#3
	beq	.Lj1512
	subs	r4,r4,#1
	beq	.Lj1519
	subs	r4,r4,#1
	beq	.Lj1520
	subs	r4,r4,#1
	beq	.Lj1517
	subs	r4,r4,#1
	beq	.Lj1518
	subs	r4,r4,#1
	beq	.Lj1516
	subs	r4,r4,#1
	beq	.Lj1515
	subs	r4,r4,#1
	beq	.Lj1524
	subs	r4,r4,#1
	beq	.Lj1521
	subs	r4,r4,#88
	beq	.Lj1523
	b	.Lj1509
.Lj1510:
# [3781] CharCode:=KeyCode - (KEY_CODE_F1 - $5E);
	sub	r4,r1,#163
	sub	r4,r4,#57088
# Peephole AndStrb2Strb done
	strb	r4,[r2]
# [3782] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1511:
# [3786] CharCode:=KeyCode - (KEY_CODE_F11 - $89);
	sub	r4,r1,#130
	sub	r4,r4,#57088
# Peephole AndStrb2Strb done
	strb	r4,[r2]
# [3787] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1512:
# [3791] CharCode:=$04;
	mov	r4,#4
	strb	r4,[r2]
# [3792] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1513:
# [3795] CharCode:=$06;
	mov	r4,#6
	strb	r4,[r2]
# [3796] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1514:
# [3800] CharCode:=$72;
	mov	r4,#114
	strb	r4,[r2]
# [3801] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1515:
# [3804] CharCode:=$73;
	mov	r4,#115
	strb	r4,[r2]
# [3805] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1516:
# [3808] CharCode:=$74;
	mov	r4,#116
	strb	r4,[r2]
# [3809] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1517:
# [3812] CharCode:=$75;
	mov	r4,#117
	strb	r4,[r2]
# [3813] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1518:
# [3816] CharCode:=$76;
	mov	r4,#118
	strb	r4,[r2]
# [3817] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1519:
# [3820] CharCode:=$77;
	mov	r4,#119
	strb	r4,[r2]
# [3821] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1520:
# [3824] CharCode:=$84;
	mov	r4,#132
	strb	r4,[r2]
# [3825] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1521:
# [3828] CharCode:=$8D;
	mov	r4,#141
	strb	r4,[r2]
# [3829] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1522:
# [3832] CharCode:=$8E;
	mov	r4,#142
	strb	r4,[r2]
# [3833] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1523:
# [3836] CharCode:=$8F;
	mov	r4,#143
	strb	r4,[r2]
# [3837] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1524:
# [3840] CharCode:=$91;
	mov	r4,#145
	strb	r4,[r2]
# [3841] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1525:
# [3844] CharCode:=$94;
	mov	r4,#148
	strb	r4,[r2]
# [3845] Result:=True;
	mov	r0,#1
	b	.Lj1508
.Lj1526:
# [3849] CharCode:=$03;
	mov	r4,#3
	strb	r4,[r2]
# [3850] Result:=True;
	mov	r0,#1
.Lj1509:
.Lj1508:
# [3855] case ScanCode of
	cmp	r12,#87
	bcc	.Lj1530
	subs	r12,r12,#87
	bne	.Lj1530
# [3858] CharCode:=$90;
	mov	r12,#144
	strb	r12,[r2]
# [3859] Result:=True;
	mov	r0,#1
	b	.Lj1530
.Lj1507:
# Peephole OpCmp2OpS done
# [3865] else if (Modifiers and (KEYBOARD_LEFT_SHIFT or KEYBOARD_RIGHT_SHIFT)) <> 0 then
	ands	r3,r3,#34
	beq	.Lj1532
# [3868] case KeyCode of
	mov	r3,r1
	cmp	r3,#9
	bcc	.Lj1540
	subs	r3,r3,#9
	beq	.Lj1539
	subs	r3,r3,#118
	beq	.Lj1538
	mov	r12,#130
	orr	r12,r12,#57088
	subs	r3,r3,r12
	bcc	.Lj1540
	subs	r3,r3,#9
	bls	.Lj1535
	subs	r3,r3,#1
	subs	r3,r3,#1
	bls	.Lj1536
	subs	r3,r3,#4
	beq	.Lj1537
	b	.Lj1540
.Lj1535:
# [3871] CharCode:=KeyCode - (KEY_CODE_F1 - $54);
	sub	r3,r1,#173
	sub	r3,r3,#57088
# Peephole AndStrb2Strb done
	strb	r3,[r2]
# [3872] Result:=True;
	mov	r0,#1
	b	.Lj1540
.Lj1536:
# [3876] CharCode:=KeyCode - (KEY_CODE_F11 - $87);
	sub	r3,r1,#132
	sub	r3,r3,#57088
# Peephole AndStrb2Strb done
	strb	r3,[r2]
# [3877] Result:=True;
	mov	r0,#1
	b	.Lj1540
.Lj1537:
# [3881] CharCode:=$05;
	mov	r3,#5
	strb	r3,[r2]
# [3882] Result:=True;
	mov	r0,#1
	b	.Lj1540
.Lj1538:
# [3885] CharCode:=$07;
	mov	r3,#7
	strb	r3,[r2]
# [3886] Result:=True;
	mov	r0,#1
	b	.Lj1540
.Lj1539:
# [3889] CharCode:=$0F;
	mov	r3,#15
	strb	r3,[r2]
# [3890] Result:=True;
	mov	r0,#1
	b	.Lj1540
.Lj1532:
# [3899] case KeyCode of
	mov	r3,r1
	cmp	r3,#127
	bcc	.Lj1542
	subs	r3,r3,#127
	beq	.Lj1555
	mov	r12,#130
	orr	r12,r12,#57088
	subs	r3,r3,r12
	bcc	.Lj1542
	subs	r3,r3,#9
	bls	.Lj1543
	subs	r3,r3,#1
	subs	r3,r3,#1
	bls	.Lj1544
	subs	r3,r3,#4
	beq	.Lj1554
	subs	r3,r3,#1
	beq	.Lj1545
	subs	r3,r3,#1
	beq	.Lj1547
	subs	r3,r3,#1
	beq	.Lj1551
	subs	r3,r3,#1
	beq	.Lj1553
	subs	r3,r3,#1
	beq	.Lj1550
	subs	r3,r3,#1
	beq	.Lj1548
	subs	r3,r3,#1
	beq	.Lj1552
	subs	r3,r3,#1
	beq	.Lj1546
	subs	r3,r3,#88
	beq	.Lj1549
	b	.Lj1542
.Lj1543:
# [3902] CharCode:=KeyCode - (KEY_CODE_F1 - $3B);
	sub	r3,r1,#198
	sub	r3,r3,#57088
# Peephole AndStrb2Strb done
	strb	r3,[r2]
# [3903] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1544:
# [3907] CharCode:=KeyCode - (KEY_CODE_F11 - $85);
	sub	r1,r1,#134
	sub	r1,r1,#57088
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [3908] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1545:
# [3912] CharCode:=$47;
	mov	r1,#71
	strb	r1,[r2]
# [3913] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1546:
# [3916] CharCode:=$48;
	mov	r1,#72
	strb	r1,[r2]
# [3917] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1547:
# [3920] CharCode:=$49;
	mov	r1,#73
	strb	r1,[r2]
# [3921] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1548:
# [3924] CharCode:=$4B;
	mov	r1,#75
	strb	r1,[r2]
# [3925] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1549:
# [3928] CharCode:=$4C;
	mov	r1,#76
	strb	r1,[r2]
# [3929] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1550:
# [3932] CharCode:=$4D;
	mov	r1,#77
	strb	r1,[r2]
# [3933] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1551:
# [3936] CharCode:=$4F;
	mov	r1,#79
	strb	r1,[r2]
# [3937] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1552:
# [3940] CharCode:=$50;
	mov	r1,#80
	strb	r1,[r2]
# [3941] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1553:
# [3944] CharCode:=$51;
	mov	r1,#81
	strb	r1,[r2]
# [3945] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1554:
# [3948] CharCode:=$52;
	mov	r1,#82
	strb	r1,[r2]
# [3949] Result:=True;
	mov	r0,#1
	b	.Lj1541
.Lj1555:
# [3952] CharCode:=$53;
	mov	r1,#83
	strb	r1,[r2]
# [3953] Result:=True;
	mov	r0,#1
.Lj1542:
.Lj1541:
.Lj1540:
.Lj1530:
.Lj1505:
# [3957] end;
	ldmfd	r13!,{r4,r5,r15}
.Le42:
	.size	KEYBOARD_$$_KEYBOARDREMAPKEYCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN, .Le42 - KEYBOARD_$$_KEYBOARDREMAPKEYCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN

.section .text.n_keyboard_$$_keyboardremapscancode$word$word$byte$longword$$boolean
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDREMAPSCANCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN
KEYBOARD_$$_KEYBOARDREMAPSCANCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN:
# Var ScanCode located in register r12
# Var KeyCode located in register r1
# Var CharCode located in register r2
# Var Modifiers located in register r3
# Var $result located in register r0
# [3969] begin
	mov	r12,r0
# Var $result located in register r0
# [3971] Result:=False;
	mov	r0,#0
# Peephole OpCmp2OpS done
# [3974] if (Modifiers and (KEYBOARD_LEFT_ALT or KEYBOARD_RIGHT_ALT)) <> 0 then
	ands	r1,r3,#68
	beq	.Lj1559
# [3977] case ScanCode of
	mov	r1,r12
	cmp	r1,#41
	bcc	.Lj1561
	cmp	r1,#82
	bhi	.Lj1561
	uxth	r1,r1
	sub	r1,r1,#42
	ldr	r15,[r15, r1, lsl #2]
	.long	.Lj1564
	.long	.Lj1566
	.long	.Lj1577
	.long	.Lj1565
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1562
	.long	.Lj1563
	.long	.Lj1563
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1561
	.long	.Lj1575
	.long	.Lj1567
	.long	.Lj1569
	.long	.Lj1576
	.long	.Lj1572
	.long	.Lj1574
	.long	.Lj1571
	.long	.Lj1570
	.long	.Lj1573
	.long	.Lj1568
.Lj1562:
# [3980] CharCode:=ScanCode + 46; { $68 }
	add	r1,r12,#46
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [3981] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1563:
# [3985] CharCode:=ScanCode + 71; { $8B }
	add	r1,r12,#71
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [3986] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1564:
# [3990] CharCode:=$01;
	mov	r1,#1
	strb	r1,[r2]
# [3991] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1565:
# [3994] CharCode:=$02;
	mov	r1,#2
	strb	r1,[r2]
# [3995] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1566:
# Peephole OpCmp2OpS done
# [3999] if (Modifiers and (KEYBOARD_LEFT_SHIFT or KEYBOARD_RIGHT_SHIFT)) <> 0 then
	ands	r1,r3,#34
# [4001] CharCode:=$09;
	movne	r1,#9
	strneb	r1,[r2]
# [4005] CharCode:=$08;
	moveq	r1,#8
	streqb	r1,[r2]
# [4007] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1567:
# [4011] CharCode:=$97;
	mov	r1,#151
	strb	r1,[r2]
# [4012] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1568:
# [4015] CharCode:=$98;
	mov	r1,#152
	strb	r1,[r2]
# [4016] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1569:
# [4019] CharCode:=$99;
	mov	r1,#153
	strb	r1,[r2]
# [4020] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1570:
# [4023] CharCode:=$9B;
	mov	r1,#155
	strb	r1,[r2]
# [4024] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1571:
# [4027] CharCode:=$9D;
	mov	r1,#157
	strb	r1,[r2]
# [4028] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1572:
# [4031] CharCode:=$9F;
	mov	r1,#159
	strb	r1,[r2]
# [4032] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1573:
# [4035] CharCode:=$A0;
	mov	r1,#160
	strb	r1,[r2]
# [4036] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1574:
# [4039] CharCode:=$A1;
	mov	r1,#161
	strb	r1,[r2]
# [4040] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1575:
# [4043] CharCode:=$A2;
	mov	r1,#162
	strb	r1,[r2]
# [4044] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1576:
# [4047] CharCode:=$A3;
	mov	r1,#163
	strb	r1,[r2]
# [4048] Result:=True;
	mov	r0,#1
	b	.Lj1560
.Lj1577:
# [4051] CharCode:=$A5;
	mov	r1,#165
	strb	r1,[r2]
# [4052] Result:=True;
	mov	r0,#1
.Lj1561:
.Lj1560:
# Peephole OpCmp2OpS done
# [4057] if (Modifiers and KEYBOARD_ALTGR) = 0 then
	ands	r1,r3,#131072
	bne	.Lj1582
# [4060] case ScanCode of
	mov	r1,r12
	cmp	r1,#4
	bcc	.Lj1584
	cmp	r1,#100
	bhi	.Lj1584
	uxth	r1,r1
	sub	r1,r1,#5
	ldr	r15,[r15, r1, lsl #2]
	.long	.Lj1597
	.long	.Lj1613
	.long	.Lj1611
	.long	.Lj1599
	.long	.Lj1587
	.long	.Lj1600
	.long	.Lj1601
	.long	.Lj1602
	.long	.Lj1592
	.long	.Lj1603
	.long	.Lj1604
	.long	.Lj1605
	.long	.Lj1615
	.long	.Lj1614
	.long	.Lj1593
	.long	.Lj1594
	.long	.Lj1585
	.long	.Lj1588
	.long	.Lj1598
	.long	.Lj1589
	.long	.Lj1591
	.long	.Lj1612
	.long	.Lj1586
	.long	.Lj1610
	.long	.Lj1590
	.long	.Lj1609
	.long	.Lj1619
	.long	.Lj1620
	.long	.Lj1621
	.long	.Lj1622
	.long	.Lj1623
	.long	.Lj1624
	.long	.Lj1625
	.long	.Lj1626
	.long	.Lj1627
	.long	.Lj1628
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1629
	.long	.Lj1630
	.long	.Lj1595
	.long	.Lj1596
	.long	.Lj1608
	.long	.Lj1584
	.long	.Lj1606
	.long	.Lj1607
	.long	.Lj1584
	.long	.Lj1616
	.long	.Lj1617
	.long	.Lj1618
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1584
	.long	.Lj1608
.Lj1585:
# [4063] CharCode:=$10;
	mov	r1,#16
	strb	r1,[r2]
# [4064] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1586:
# [4067] CharCode:=$11;
	mov	r1,#17
	strb	r1,[r2]
# [4068] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1587:
# [4071] CharCode:=$12;
	mov	r1,#18
	strb	r1,[r2]
# [4072] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1588:
# [4075] CharCode:=$13;
	mov	r1,#19
	strb	r1,[r2]
# [4076] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1589:
# [4079] CharCode:=$14;
	mov	r1,#20
	strb	r1,[r2]
# [4080] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1590:
# [4083] CharCode:=$15;
	mov	r1,#21
	strb	r1,[r2]
# [4084] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1591:
# [4087] CharCode:=$16;
	mov	r1,#22
	strb	r1,[r2]
# [4088] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1592:
# [4091] CharCode:=$17;
	mov	r1,#23
	strb	r1,[r2]
# [4092] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1593:
# [4095] CharCode:=$18;
	mov	r1,#24
	strb	r1,[r2]
# [4096] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1594:
# [4099] CharCode:=$19;
	mov	r1,#25
	strb	r1,[r2]
# [4100] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1595:
# [4103] CharCode:=$1A;
	mov	r1,#26
	strb	r1,[r2]
# [4104] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1596:
# [4107] CharCode:=$1B;
	mov	r1,#27
	strb	r1,[r2]
# [4108] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1597:
# [4112] CharCode:=$1E;
	mov	r1,#30
	strb	r1,[r2]
# [4113] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1598:
# [4116] CharCode:=$1F;
	mov	r1,#31
	strb	r1,[r2]
# [4117] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1599:
# [4120] CharCode:=$20;
	mov	r1,#32
	strb	r1,[r2]
# [4121] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1600:
# [4124] CharCode:=$21;
	mov	r1,#33
	strb	r1,[r2]
# [4125] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1601:
# [4128] CharCode:=$22;
	mov	r1,#34
	strb	r1,[r2]
# [4129] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1602:
# [4132] CharCode:=$23;
	mov	r1,#35
	strb	r1,[r2]
# [4133] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1603:
# [4136] CharCode:=$24;
	mov	r1,#36
	strb	r1,[r2]
# [4137] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1604:
# [4140] CharCode:=$25;
	mov	r1,#37
	strb	r1,[r2]
# [4141] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1605:
# [4144] CharCode:=$26;
	mov	r1,#38
	strb	r1,[r2]
# [4145] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1606:
# [4148] CharCode:=$27;
	mov	r1,#39
	strb	r1,[r2]
# [4149] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1607:
# [4152] CharCode:=$28;
	mov	r1,#40
	strb	r1,[r2]
# [4153] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1608:
# [4156] CharCode:=$2B;
	mov	r1,#43
	strb	r1,[r2]
# [4157] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1609:
# [4161] CharCode:=$2C;
	mov	r1,#44
	strb	r1,[r2]
# [4162] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1610:
# [4165] CharCode:=$2D;
	mov	r1,#45
	strb	r1,[r2]
# [4166] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1611:
# [4169] CharCode:=$2E;
	mov	r1,#46
	strb	r1,[r2]
# [4170] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1612:
# [4173] CharCode:=$2F;
	mov	r1,#47
	strb	r1,[r2]
# [4174] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1613:
# [4177] CharCode:=$30;
	mov	r1,#48
	strb	r1,[r2]
# [4178] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1614:
# [4181] CharCode:=$31;
	mov	r1,#49
	strb	r1,[r2]
# [4182] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1615:
# [4185] CharCode:=$32;
	mov	r1,#50
	strb	r1,[r2]
# [4186] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1616:
# [4189] CharCode:=$33;
	mov	r1,#51
	strb	r1,[r2]
# [4190] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1617:
# [4193] CharCode:=$34;
	mov	r1,#52
	strb	r1,[r2]
# [4194] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1618:
# [4197] CharCode:=$35;
	mov	r1,#53
	strb	r1,[r2]
# [4198] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1619:
# [4202] CharCode:=$78;
	mov	r1,#120
	strb	r1,[r2]
# [4203] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1620:
# [4206] CharCode:=$79;
	mov	r1,#121
	strb	r1,[r2]
# [4207] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1621:
# [4210] CharCode:=$7A;
	mov	r1,#122
	strb	r1,[r2]
# [4211] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1622:
# [4214] CharCode:=$7B;
	mov	r1,#123
	strb	r1,[r2]
# [4215] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1623:
# [4218] CharCode:=$7C;
	mov	r1,#124
	strb	r1,[r2]
# [4219] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1624:
# [4222] CharCode:=$7D;
	mov	r1,#125
	strb	r1,[r2]
# [4223] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1625:
# [4226] CharCode:=$7E;
	mov	r1,#126
	strb	r1,[r2]
# [4227] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1626:
# [4230] CharCode:=$7F;
	mov	r1,#127
	strb	r1,[r2]
# [4231] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1627:
# [4234] CharCode:=$80;
	mov	r1,#128
	strb	r1,[r2]
# [4235] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1628:
# [4238] CharCode:=$81;
	mov	r1,#129
	strb	r1,[r2]
# [4239] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1629:
# [4242] CharCode:=$82;
	mov	r1,#130
	strb	r1,[r2]
# [4243] Result:=True;
	mov	r0,#1
	b	.Lj1583
.Lj1630:
# [4246] CharCode:=$83;
	mov	r1,#131
	strb	r1,[r2]
# [4247] Result:=True;
	mov	r0,#1
.Lj1584:
.Lj1583:
.Lj1582:
# [4253] case ScanCode of
	mov	r1,r12
	cmp	r1,#85
	bcc	.Lj1635
	subs	r1,r1,#85
	beq	.Lj1633
	subs	r1,r1,#2
	beq	.Lj1634
	b	.Lj1635
.Lj1633:
# [4256] CharCode:=$37;
	mov	r1,#55
	strb	r1,[r2]
# [4257] Result:=True;
	mov	r0,#1
	b	.Lj1635
.Lj1634:
# [4260] CharCode:=$4E;
	mov	r1,#78
	strb	r1,[r2]
# [4261] Result:=True;
	mov	r0,#1
	b	.Lj1635
.Lj1559:
# Peephole OpCmp2OpS done
# [4267] else if (Modifiers and (KEYBOARD_LEFT_CTRL or KEYBOARD_RIGHT_CTRL)) <> 0 then
	ands	r1,r3,#17
	beq	.Lj1637
# [4270] case ScanCode of
	mov	r1,r12
	cmp	r1,#31
	bcc	.Lj1639
	cmp	r1,#82
	bhi	.Lj1639
	uxth	r1,r1
	sub	r1,r1,#32
	ldr	r15,[r15, r1, lsl #2]
	.long	.Lj1655
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1654
	.long	.Lj1639
	.long	.Lj1652
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1640
	.long	.Lj1641
	.long	.Lj1641
	.long	.Lj1644
	.long	.Lj1639
	.long	.Lj1639
	.long	.Lj1642
	.long	.Lj1649
	.long	.Lj1650
	.long	.Lj1643
	.long	.Lj1647
	.long	.Lj1648
	.long	.Lj1646
	.long	.Lj1645
	.long	.Lj1653
	.long	.Lj1651
.Lj1640:
# [4273] CharCode:=ScanCode + 36; { $5E }
	add	r1,r12,#36
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [4274] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1641:
# [4278] CharCode:=ScanCode + 69; { $89 }
	add	r1,r12,#69
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [4279] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1642:
# [4283] CharCode:=$04;
	mov	r1,#4
	strb	r1,[r2]
# [4284] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1643:
# [4287] CharCode:=$06;
	mov	r1,#6
	strb	r1,[r2]
# [4288] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1644:
# [4292] CharCode:=$72;
	mov	r1,#114
	strb	r1,[r2]
# [4293] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1645:
# [4296] CharCode:=$73;
	mov	r1,#115
	strb	r1,[r2]
# [4297] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1646:
# [4300] CharCode:=$74;
	mov	r1,#116
	strb	r1,[r2]
# [4301] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1647:
# [4304] CharCode:=$75;
	mov	r1,#117
	strb	r1,[r2]
# [4305] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1648:
# [4308] CharCode:=$76;
	mov	r1,#118
	strb	r1,[r2]
# [4309] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1649:
# [4312] CharCode:=$77;
	mov	r1,#119
	strb	r1,[r2]
# [4313] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1650:
# [4316] CharCode:=$84;
	mov	r1,#132
	strb	r1,[r2]
# [4317] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1651:
# [4320] CharCode:=$8D;
	mov	r1,#141
	strb	r1,[r2]
# [4321] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1652:
# [4324] CharCode:=$8E;
	mov	r1,#142
	strb	r1,[r2]
# [4325] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1653:
# [4332] CharCode:=$91;
	mov	r1,#145
	strb	r1,[r2]
# [4333] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1654:
# [4336] CharCode:=$94;
	mov	r1,#148
	strb	r1,[r2]
# [4337] Result:=True;
	mov	r0,#1
	b	.Lj1638
.Lj1655:
# [4341] CharCode:=$03;
	mov	r1,#3
	strb	r1,[r2]
# [4342] Result:=True;
	mov	r0,#1
.Lj1639:
.Lj1638:
# [4347] case ScanCode of
	mov	r1,r12
	cmp	r1,#87
	bcc	.Lj1659
	subs	r1,r1,#87
	bne	.Lj1659
# [4350] CharCode:=$90;
	mov	r1,#144
	strb	r1,[r2]
# [4351] Result:=True;
	mov	r0,#1
	b	.Lj1659
.Lj1637:
# Peephole OpCmp2OpS done
# [4357] else if (Modifiers and (KEYBOARD_LEFT_SHIFT or KEYBOARD_RIGHT_SHIFT)) <> 0 then
	ands	r1,r3,#34
	beq	.Lj1661
# [4360] case ScanCode of
	mov	r1,r12
	cmp	r1,#43
	bcc	.Lj1669
	subs	r1,r1,#43
	beq	.Lj1668
	subs	r1,r1,#15
	bcc	.Lj1669
	subs	r1,r1,#9
	bls	.Lj1664
	subs	r1,r1,#1
	subs	r1,r1,#1
	bls	.Lj1665
	subs	r1,r1,#4
	beq	.Lj1666
	subs	r1,r1,#3
	beq	.Lj1667
	b	.Lj1669
.Lj1664:
# [4363] CharCode:=ScanCode + 26; { $54 }
	add	r1,r12,#26
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [4364] Result:=True;
	mov	r0,#1
	b	.Lj1669
.Lj1665:
# [4368] CharCode:=ScanCode + 67; { $87 }
	add	r1,r12,#67
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [4369] Result:=True;
	mov	r0,#1
	b	.Lj1669
.Lj1666:
# [4373] CharCode:=$05;
	mov	r1,#5
	strb	r1,[r2]
# [4374] Result:=True;
	mov	r0,#1
	b	.Lj1669
.Lj1667:
# [4377] CharCode:=$07;
	mov	r1,#7
	strb	r1,[r2]
# [4378] Result:=True;
	mov	r0,#1
	b	.Lj1669
.Lj1668:
# [4381] CharCode:=$0F;
	mov	r1,#15
	strb	r1,[r2]
# [4382] Result:=True;
	mov	r0,#1
	b	.Lj1669
.Lj1661:
# [4391] case ScanCode of
	mov	r1,r12
	cmp	r1,#58
	bcc	.Lj1671
	cmp	r1,#82
	bhi	.Lj1671
	uxth	r1,r1
	sub	r1,r1,#59
	ldr	r15,[r15, r1, lsl #2]
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1672
	.long	.Lj1673
	.long	.Lj1673
	.long	.Lj1671
	.long	.Lj1671
	.long	.Lj1671
	.long	.Lj1682
	.long	.Lj1674
	.long	.Lj1676
	.long	.Lj1683
	.long	.Lj1679
	.long	.Lj1681
	.long	.Lj1678
	.long	.Lj1677
	.long	.Lj1680
	.long	.Lj1675
.Lj1672:
# [4394] CharCode:=ScanCode + 1; { $3B }
	add	r1,r12,#1
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [4395] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1673:
# [4399] CharCode:=ScanCode + 65; { $85 }
	add	r1,r12,#65
# Peephole AndStrb2Strb done
	strb	r1,[r2]
# [4400] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1674:
# [4404] CharCode:=$47;
	mov	r1,#71
	strb	r1,[r2]
# [4405] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1675:
# [4408] CharCode:=$48;
	mov	r1,#72
	strb	r1,[r2]
# [4409] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1676:
# [4412] CharCode:=$49;
	mov	r1,#73
	strb	r1,[r2]
# [4413] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1677:
# [4416] CharCode:=$4B;
	mov	r1,#75
	strb	r1,[r2]
# [4417] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1678:
# [4424] CharCode:=$4D;
	mov	r1,#77
	strb	r1,[r2]
# [4425] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1679:
# [4428] CharCode:=$4F;
	mov	r1,#79
	strb	r1,[r2]
# [4429] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1680:
# [4432] CharCode:=$50;
	mov	r1,#80
	strb	r1,[r2]
# [4433] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1681:
# [4436] CharCode:=$51;
	mov	r1,#81
	strb	r1,[r2]
# [4437] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1682:
# [4440] CharCode:=$52;
	mov	r1,#82
	strb	r1,[r2]
# [4441] Result:=True;
	mov	r0,#1
	b	.Lj1670
.Lj1683:
# [4444] CharCode:=$53;
	mov	r1,#83
	strb	r1,[r2]
# [4445] Result:=True;
	mov	r0,#1
.Lj1671:
.Lj1670:
.Lj1669:
.Lj1659:
.Lj1635:
# [4449] end;
	bx	r14
.Le43:
	.size	KEYBOARD_$$_KEYBOARDREMAPSCANCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN, .Le43 - KEYBOARD_$$_KEYBOARDREMAPSCANCODE$WORD$WORD$BYTE$LONGWORD$$BOOLEAN

.section .text.n_keyboard_$$_keyboardlog$longword$pkeyboarddevice$ansistring
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDLOG$LONGWORD$PKEYBOARDDEVICE$ANSISTRING
KEYBOARD_$$_KEYBOARDLOG$LONGWORD$PKEYBOARDDEVICE$ANSISTRING:
# Temps allocated between r13+4 and r13+148
# [4456] begin
	stmfd	r13!,{r4,r5,r6,r14}
# Peephole Add/Sub to Preindexed done
# Var Level located in register r4
# Var Keyboard located in register r5
# Var AText located in register r6
# Var WorkBuffer located at r13+0, size=OS_32
	mov	r4,r0
	mov	r5,r1
	mov	r6,r2
	mov	r0,#0
	str	r0,[r13, #-148]!
# Peephole MovStrMov done
	str	r0,[r13, #144]
# Peephole MovStrMov done
	str	r0,[r13, #140]
	add	r2,r13,#4
	add	r1,r13,#16
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #120]
	cmp	r0,#0
	bne	.Lj1686
# [4459] if Level < KEYBOARD_DEFAULT_LOG_LEVEL then Exit;
	ldr	r0,.Lj1688
	ldr	r0,[r0]
	cmp	r4,r0
	bcc	.Lj1686
# [4461] WorkBuffer:='';
	mov	r0,r13
	mov	r1,#0
	bl	fpc_ansistr_assign
# [4463] if Level = KEYBOARD_LOG_LEVEL_DEBUG then
	cmp	r4,#1
	bne	.Lj1692
# [4465] WorkBuffer:=WorkBuffer + '[DEBUG] ';
	ldr	r1,[r13]
	mov	r0,r13
# Rescheduled
	ldr	r2,.Lj1693
	mov	r3,#0
	bl	fpc_ansistr_concat
	b	.Lj1694
.Lj1692:
# [4467] else if Level = KEYBOARD_LOG_LEVEL_ERROR then
	cmp	r4,#3
	bne	.Lj1696
# [4469] WorkBuffer:=WorkBuffer + '[ERROR] ';
	ldr	r1,[r13]
	mov	r0,r13
# Rescheduled
	ldr	r2,.Lj1697
	mov	r3,#0
	bl	fpc_ansistr_concat
.Lj1696:
.Lj1694:
# [4473] WorkBuffer:=WorkBuffer + 'Keyboard: ';
	ldr	r1,[r13]
	mov	r0,r13
# Rescheduled
	ldr	r2,.Lj1698
	mov	r3,#0
	bl	fpc_ansistr_concat
# [4476] if Keyboard <> nil then
	cmp	r5,#0
	beq	.Lj1700
# [4478] WorkBuffer:=WorkBuffer + KEYBOARD_NAME_PREFIX + IntToStr(Keyboard.KeyboardId) + ': ';
	ldr	r1,[r13]
# Rescheduled
	ldr	r0,.Lj1701
	str	r1,[r13, #124]
	str	r0,[r13, #128]
	ldr	r1,[r5, #48]
	mov	r2,#0
	add	r0,r13,#140
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r1,[r13, #140]
# Rescheduled
	ldr	r0,.Lj1702
	str	r1,[r13, #132]
	str	r0,[r13, #136]
	add	r1,r13,#124
	mov	r0,r13
	mov	r3,#0
	mov	r2,#3
	bl	fpc_ansistr_concat_multi
.Lj1700:
# [4482] LoggingOutputEx(LOGGING_FACILITY_KEYBOARD,LogLevelToLoggingSeverity(Level),'Keyboard',WorkBuffer + AText);
	add	r0,r13,#144
	bl	fpc_ansistr_decr_ref
	mov	r2,r6
	ldr	r1,[r13]
	mov	r3,#0
	add	r0,r13,#144
	bl	fpc_ansistr_concat
	add	r5,r13,#144
	mov	r0,r4
	bl	GLOBALCONFIG_$$_LOGLEVELTOLOGGINGSEVERITY$LONGWORD$$LONGWORD
	mov	r1,r0
# Rescheduled
	ldr	r0,.Lj1703
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj1705
# Rescheduled
	ldr	r2,.Lj1701
	ldr	r3,[r5]
# Rescheduled
	ldr	r12,.Lj1703
# Rescheduled
	ldr	r12,[r12]
	mov	r0,#7
	blx	r12
.Lj1705:
.Lj1686:
	bl	fpc_popaddrstack
# [4483] end;
	add	r0,r13,#144
	bl	fpc_ansistr_decr_ref
	add	r0,r13,#140
	bl	fpc_ansistr_decr_ref
	mov	r0,r13
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r13, #120]
	cmp	r0,#0
	blne	fpc_reraise
	add	r13,r13,#148
	ldmfd	r13!,{r4,r5,r6,r15}
.Lj1688:
	.long	TC_$KEYBOARD_$$_KEYBOARD_DEFAULT_LOG_LEVEL
.Lj1693:
	.long	.Ld35
.Lj1697:
	.long	.Ld36
.Lj1698:
	.long	.Ld37
.Lj1701:
	.long	.Ld18
.Lj1702:
	.long	.Ld38
.Lj1703:
	.long	U_$PLATFORM_$$_LOGGINGOUTPUTEXHANDLER
.Le44:
	.size	KEYBOARD_$$_KEYBOARDLOG$LONGWORD$PKEYBOARDDEVICE$ANSISTRING, .Le44 - KEYBOARD_$$_KEYBOARDLOG$LONGWORD$PKEYBOARDDEVICE$ANSISTRING

.section .text.n_keyboard_$$_keyboardloginfo$pkeyboarddevice$ansistring
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDLOGINFO$PKEYBOARDDEVICE$ANSISTRING
KEYBOARD_$$_KEYBOARDLOGINFO$PKEYBOARDDEVICE$ANSISTRING:
# [4488] begin
	stmfd	r13!,{r14}
# Var Keyboard located in register r1
# Var AText located in register r2
	mov	r2,r1
# Var AText located in register r2
# [4490] KeyboardLog(KEYBOARD_LOG_LEVEL_INFO,Keyboard,AText);
	mov	r1,r0
# Var Keyboard located in register r1
	mov	r0,#2
	bl	KEYBOARD_$$_KEYBOARDLOG$LONGWORD$PKEYBOARDDEVICE$ANSISTRING
# [4491] end;
	ldmfd	r13!,{r15}
.Le45:
	.size	KEYBOARD_$$_KEYBOARDLOGINFO$PKEYBOARDDEVICE$ANSISTRING, .Le45 - KEYBOARD_$$_KEYBOARDLOGINFO$PKEYBOARDDEVICE$ANSISTRING

.section .text.n_keyboard_$$_keyboardlogerror$pkeyboarddevice$ansistring
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING
KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING:
# [4496] begin
	stmfd	r13!,{r14}
# Var Keyboard located in register r1
# Var AText located in register r2
	mov	r2,r1
# Var AText located in register r2
# [4498] KeyboardLog(KEYBOARD_LOG_LEVEL_ERROR,Keyboard,AText);
	mov	r1,r0
# Var Keyboard located in register r1
	mov	r0,#3
	bl	KEYBOARD_$$_KEYBOARDLOG$LONGWORD$PKEYBOARDDEVICE$ANSISTRING
# [4499] end;
	ldmfd	r13!,{r15}
.Le46:
	.size	KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING, .Le46 - KEYBOARD_$$_KEYBOARDLOGERROR$PKEYBOARDDEVICE$ANSISTRING

.section .text.n_keyboard_$$_keyboardlogdebug$pkeyboarddevice$ansistring
	.balign 4
.globl	KEYBOARD_$$_KEYBOARDLOGDEBUG$PKEYBOARDDEVICE$ANSISTRING
KEYBOARD_$$_KEYBOARDLOGDEBUG$PKEYBOARDDEVICE$ANSISTRING:
# [4504] begin
	stmfd	r13!,{r14}
# Var Keyboard located in register r1
# Var AText located in register r2
	mov	r2,r1
# Var AText located in register r2
# [4506] KeyboardLog(KEYBOARD_LOG_LEVEL_DEBUG,Keyboard,AText);
	mov	r1,r0
# Var Keyboard located in register r1
	mov	r0,#1
	bl	KEYBOARD_$$_KEYBOARDLOG$LONGWORD$PKEYBOARDDEVICE$ANSISTRING
# [4507] end;
	ldmfd	r13!,{r15}
.Le47:
	.size	KEYBOARD_$$_KEYBOARDLOGDEBUG$PKEYBOARDDEVICE$ANSISTRING, .Le47 - KEYBOARD_$$_KEYBOARDLOGDEBUG$PKEYBOARDDEVICE$ANSISTRING

.section .text.n_keyboard_$$_usbkeyboardinsertdata$pusbkeyboarddevice$pkeyboarddata$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD
KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD:
# Temps allocated between r13+20 and r13+140
# [4522] begin
	stmfd	r13!,{r4,r14}
# Peephole Add/Sub to Preindexed done
# Var Keyboard located at r13+0, size=OS_32
# Var Data located at r13+4, size=OS_32
# Var $result located at r13+8, size=OS_32
# Var Next located at r13+12, size=OS_32
# Var Device located at r13+16, size=OS_32
	str	r0,[r13, #-140]!
	str	r1,[r13, #4]
# [4524] Result:=ERROR_INVALID_PARAMETER;
	mov	r0,#87
# Rescheduled
# [4527] if Keyboard = nil then Exit;
	ldr	r1,[r13]
	str	r0,[r13, #8]
	cmp	r1,#0
	beq	.Lj1714
# [4530] if Data = nil then Exit;
	ldr	r0,[r13, #4]
	cmp	r0,#0
	beq	.Lj1714
# [4533] Device:=PUSBDevice(Keyboard.Keyboard.Device.DeviceData);
	ldr	r0,[r13]
	ldr	r0,[r0, #32]
	str	r0,[r13, #16]
# Peephole StrLdr2StrMov 1 done
# [4534] if Device = nil then Exit;
	cmp	r0,#0
	beq	.Lj1714
# [4537] if (Keyboard.Keyboard.Device.DeviceFlags and KEYBOARD_FLAG_DIRECT_READ) = 0 then
	ldr	r0,[r13]
	ldr	r0,[r0, #28]
# Peephole OpCmp2OpS done
	ands	r0,r0,#2
	bne	.Lj1723
# [4541] if MutexLock(KeyboardBufferLock) = ERROR_SUCCESS then
	ldr	r0,.Lj1724
	ldr	r0,[r0]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1725
	cmp	r0,#0
	beq	.Lj1725
# Rescheduled
# Rescheduled
	ldr	r2,[r0]
	ldr	r1,.Lj1730
	cmp	r2,r1
	bne	.Lj1725
	ldr	r1,.Lj1733
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj1735
# Rescheduled
	ldr	r1,.Lj1733
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj1735:
.Lj1725:
	cmp	r4,#0
	bne	.Lj1738
# [4543] try
	add	r2,r13,#20
	add	r1,r13,#32
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r13, #136]
	cmp	r0,#0
	bne	.Lj1739
# [4545] if (KeyboardBuffer.Count < KEYBOARD_BUFFER_SIZE) then
	ldr	r0,.Lj1742
	ldr	r0,[r0]
	ldr	r0,[r0, #8]
	cmp	r0,#512
	bcs	.Lj1744
# [4548] Next:=@KeyboardBuffer.Buffer[(KeyboardBuffer.Start + KeyboardBuffer.Count) mod KEYBOARD_BUFFER_SIZE];
	ldr	r0,.Lj1742
# Rescheduled
	ldr	r1,.Lj1742
	ldr	r3,[r0]
# Rescheduled
	ldr	r0,.Lj1742
# Rescheduled
# Rescheduled
	ldr	r0,[r0]
	ldr	r2,[r1]
	ldr	r1,[r0, #8]
	ldr	r0,[r2, #4]
	add	r0,r1,r0
	mov	r1,r0,lsl #23
	mov	r1,r1,lsr #23
	mov	r0,#12
	mla	r0,r1,r0,r3
	add	r0,r0,#12
	str	r0,[r13, #12]
# Peephole StrLdr2StrMov 1 done
# [4549] if Next <> nil then
	cmp	r0,#0
	beq	.Lj1751
# Rescheduled
# [4552] Next^:=Data^;
	ldr	r0,[r13, #4]
	ldr	r1,[r13, #12]
	ldr	r2,[r0]
	ldr	r3,[r0, #4]
	ldr	r12,[r0, #8]
	str	r2,[r1]
	str	r3,[r1, #4]
# Rescheduled
# [4555] Inc(KeyboardBuffer.Count);
	ldr	r0,.Lj1742
	str	r12,[r1, #8]
	ldr	r1,[r0]
	ldr	r0,[r1, #8]
	add	r0,r0,#1
	str	r0,[r1, #8]
# [4558] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #8]
	b	.Lj1751
.Lj1744:
# [4563] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Buffer overflow, key discarded');
	ldr	r0,.Lj1754
	ldrb	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrne	r1,.Lj1755
	ldrne	r0,[r13, #16]
	blne	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
# Rescheduled
# Rescheduled
# [4566] Inc(Keyboard.Keyboard.BufferOverruns);
	ldr	r1,[r13]
	ldr	r2,.Lj1756
	ldr	r0,[r1, r2]
	add	r0,r0,#1
	str	r0,[r1, r2]
.Lj1751:
.Lj1739:
	bl	fpc_popaddrstack
# [4570] MutexUnlock(KeyboardBufferLock);
	ldr	r0,.Lj1724
	ldr	r0,[r0]
	mov	r4,#87
	mvn	r1,#0
	cmp	r0,r1
	beq	.Lj1758
	cmp	r0,#0
	beq	.Lj1758
# Rescheduled
# Rescheduled
	ldr	r1,[r0]
	ldr	r2,.Lj1730
	cmp	r1,r2
	bne	.Lj1758
	ldr	r1,.Lj1766
	ldr	r1,[r1]
	cmp	r1,#0
	beq	.Lj1768
# Rescheduled
	ldr	r1,.Lj1766
	ldr	r1,[r1]
	blx	r1
	mov	r4,r0
.Lj1768:
.Lj1758:
	ldr	r0,[r13, #136]
	cmp	r0,#0
	blne	fpc_reraise
	b	.Lj1775
.Lj1738:
# [4575] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Failed to acquire lock on buffer');
	ldr	r0,.Lj1754
	ldrb	r0,[r0]
	cmp	r0,#0
	beq	.Lj1775
# Rescheduled
	ldr	r1,.Lj1774
	ldr	r0,[r13, #16]
	bl	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
	b	.Lj1775
.Lj1723:
# [4582] if (Keyboard.Keyboard.Buffer.Count < KEYBOARD_BUFFER_SIZE) then
	ldr	r0,[r13]
	ldr	r0,[r0, #100]
	cmp	r0,#512
	bcs	.Lj1777
	ldr	r2,[r13]
# Rescheduled
# Rescheduled
# [4585] Next:=@Keyboard.Keyboard.Buffer.Buffer[(Keyboard.Keyboard.Buffer.Start + Keyboard.Keyboard.Buffer.Count) mod KEYBOARD_BUFFER_SIZE];
	ldr	r1,[r2, #96]
	ldr	r0,[r2, #100]
	add	r0,r0,r1
	mov	r1,r0,lsl #23
	mov	r1,r1,lsr #23
	mov	r0,#12
	mla	r0,r1,r0,r2
	add	r0,r0,#104
	str	r0,[r13, #12]
# Peephole StrLdr2StrMov 1 done
# [4586] if Next <> nil then
	cmp	r0,#0
	beq	.Lj1780
# Rescheduled
# [4589] Next^:=Data^;
	ldr	r0,[r13, #4]
	ldr	r1,[r13, #12]
	ldr	r2,[r0]
	ldr	r3,[r0, #4]
	ldr	r0,[r0, #8]
	str	r2,[r1]
	str	r3,[r1, #4]
	str	r0,[r1, #8]
# [4592] Inc(Keyboard.Keyboard.Buffer.Count);
	ldr	r1,[r13]
	ldr	r0,[r1, #100]
	add	r0,r0,#1
	str	r0,[r1, #100]
# [4595] Result:=ERROR_SUCCESS;
	mov	r0,#0
	str	r0,[r13, #8]
	b	.Lj1780
.Lj1777:
# [4600] if USB_LOG_ENABLED then USBLogError(Device,'Keyboard: Buffer overflow, key discarded');
	ldr	r0,.Lj1754
	ldrb	r0,[r0]
	cmp	r0,#0
# Rescheduled
	ldrne	r1,.Lj1755
	ldrne	r0,[r13, #16]
	blne	USB_$$_USBLOGERROR$PUSBDEVICE$ANSISTRING
# Rescheduled
# Rescheduled
# [4603] Inc(Keyboard.Keyboard.BufferOverruns);
	ldr	r1,[r13]
	ldr	r2,.Lj1756
	ldr	r0,[r1, r2]
	add	r0,r0,#1
	str	r0,[r1, r2]
.Lj1780:
.Lj1775:
.Lj1714:
# [4606] end;
	ldr	r0,[r13, #8]
	add	r13,r13,#140
	ldmfd	r13!,{r4,r15}
.Lj1724:
	.long	TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK
.Lj1730:
	.long	475889572
.Lj1733:
	.long	U_$THREADS_$$_MUTEXLOCKHANDLER
.Lj1742:
	.long	U_$KEYBOARD_$$_KEYBOARDBUFFER
.Lj1754:
	.long	U_$USB_$$_USB_LOG_ENABLED
.Lj1755:
	.long	.Ld39
.Lj1756:
	.long	6256
.Lj1766:
	.long	U_$THREADS_$$_MUTEXUNLOCKHANDLER
.Lj1774:
	.long	.Ld40
.Le48:
	.size	KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD, .Le48 - KEYBOARD_$$_USBKEYBOARDINSERTDATA$PUSBKEYBOARDDEVICE$PKEYBOARDDATA$$LONGWORD

.section .text.n_keyboard_$$_usbkeyboardcheckpressed$pusbkeyboarddevice$byte$$boolean
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDCHECKPRESSED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN
KEYBOARD_$$_USBKEYBOARDCHECKPRESSED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN:
# Var Keyboard located in register r2
# Var ScanCode located in register r1
# Var $result located in register r0
# Var i located in register r0
# Var Count located in register r12
# [4618] begin
	mov	r2,r0
# Var $result located in register r0
# [4620] Result:=True;
	mov	r0,#1
# [4623] if Keyboard = nil then Exit;
	cmp	r2,#0
	beq	.Lj1786
# Var Count located in register r12
# [4625] for Count:=2 to USB_HID_BOOT_REPORT_SIZE - 1 do {6 bytes of Keyboard data}
	mov	r12,#2
	sub	r12,r12,#1
	.balign 4
.Lj1792:
# Rescheduled
# [4629] if Keyboard.LastReport[Count] = ScanCode then
	ldr	r3,.Lj1793
	add	r12,r12,#1
	add	r3,r2,r3
	ldrb	r3,[r3, r12]
	cmp	r3,r1
# [4631] Result:=False;
	moveq	r0,#0
# [4632] Exit;
	beq	.Lj1786
	cmp	r12,#7
	blt	.Lj1792
.Lj1786:
# [4635] end;
	bx	r14
.Lj1793:
	.long	6288
.Le49:
	.size	KEYBOARD_$$_USBKEYBOARDCHECKPRESSED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN, .Le49 - KEYBOARD_$$_USBKEYBOARDCHECKPRESSED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN

.section .text.n_keyboard_$$_usbkeyboardcheckrepeated$pusbkeyboarddevice$byte$$boolean
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDCHECKREPEATED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN
KEYBOARD_$$_USBKEYBOARDCHECKREPEATED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN:
# Var Keyboard located in register r2
# Var ScanCode located in register r1
# Var $result located in register r0
# [4645] begin
	mov	r2,r0
# Var $result located in register r0
# [4647] Result:=False;
	mov	r0,#0
# [4650] if Keyboard = nil then Exit;
	cmp	r2,#0
	beq	.Lj1796
# [4652] if ScanCode = Keyboard.LastCode then
	ldr	r3,.Lj1800
	ldrh	r3,[r2, r3]
	cmp	r3,r1
	bne	.Lj1802
# [4654] if Keyboard.LastCount < Keyboard.Keyboard.KeyboardDelay then
	ldr	r1,.Lj1803
# Rescheduled
# Rescheduled
	ldr	r1,[r2, r1]
	ldr	r3,[r2, #64]
	cmp	r1,r3
	bcs	.Lj1805
# [4656] Inc(Keyboard.LastCount);
	ldr	r3,.Lj1803
	ldr	r1,[r2, r3]
	add	r1,r1,#1
	str	r1,[r2, r3]
	b	.Lj1807
.Lj1805:
# [4660] Result:=True;
	mov	r0,#1
.Lj1807:
.Lj1802:
.Lj1796:
# [4663] end;
	bx	r14
.Lj1800:
	.long	6280
.Lj1803:
	.long	6284
.Le50:
	.size	KEYBOARD_$$_USBKEYBOARDCHECKREPEATED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN, .Le50 - KEYBOARD_$$_USBKEYBOARDCHECKREPEATED$PUSBKEYBOARDDEVICE$BYTE$$BOOLEAN

.section .text.n_keyboard_$$_usbkeyboardcheckreleased$pusbkeyboarddevice$pusbkeyboardreport$byte$$boolean
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDCHECKRELEASED$PUSBKEYBOARDDEVICE$PUSBKEYBOARDREPORT$BYTE$$BOOLEAN
KEYBOARD_$$_USBKEYBOARDCHECKRELEASED$PUSBKEYBOARDDEVICE$PUSBKEYBOARDREPORT$BYTE$$BOOLEAN:
# Var Keyboard located in register r3
# Var Report located in register r1
# Var ScanCode located in register r2
# Var $result located in register r0
# Var Count located in register r3
# [4676] begin
	mov	r3,r0
# Var $result located in register r0
# [4678] Result:=True;
	mov	r0,#1
# [4681] if Keyboard = nil then Exit;
	cmp	r3,#0
	beq	.Lj1808
# [4684] if Report = nil then Exit;
	cmp	r1,#0
	beq	.Lj1808
# Var Count located in register r3
# [4686] for Count:=2 to USB_HID_BOOT_REPORT_SIZE - 1 do {6 bytes of Keyboard data}
	mov	r3,#2
	sub	r3,r3,#1
	.balign 4
.Lj1816:
	add	r3,r3,#1
# [4688] if Report[Count] = ScanCode then
	ldrb	r12,[r1, r3]
	cmp	r12,r2
# [4690] Result:=False;
	moveq	r0,#0
# [4691] Exit;
	beq	.Lj1808
	cmp	r3,#7
	blt	.Lj1816
.Lj1808:
# [4694] end;
	bx	r14
.Le51:
	.size	KEYBOARD_$$_USBKEYBOARDCHECKRELEASED$PUSBKEYBOARDDEVICE$PUSBKEYBOARDREPORT$BYTE$$BOOLEAN, .Le51 - KEYBOARD_$$_USBKEYBOARDCHECKRELEASED$PUSBKEYBOARDDEVICE$PUSBKEYBOARDREPORT$BYTE$$BOOLEAN

.section .text.n_keyboard_$$_usbkeyboarddevicesetleds$pusbkeyboarddevice$byte$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD
KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD:
# [4706] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#72
# Var Keyboard located in register r2
# Var LEDs located in register r1
# Var $result located in register r4
# Var Device located in register r0
# Var Data located at r11-48, size=OS_8
	mov	r2,r0
# Var $result located in register r4
# [4708] Result:=USB_STATUS_INVALID_PARAMETER;
	mov	r4,#5
# [4711] if Keyboard = nil then Exit;
	cmp	r2,#0
	beq	.Lj1819
# [4714] if Keyboard.HIDInterface = nil then Exit;
	ldr	r0,.Lj1823
	ldr	r0,[r2, r0]
	cmp	r0,#0
	beq	.Lj1819
# Var Keyboard located in register r2
# Var Device located in register r0
# [4717] Device:=PUSBDevice(Keyboard.Keyboard.Device.DeviceData);
	ldr	r0,[r2, #32]
# [4718] if Device = nil then Exit;
	cmp	r0,#0
	beq	.Lj1819
# [4721] Data:=0;
	mov	r3,#0
	strb	r3,[r11, #-48]
# Peephole OpCmp2OpS done
# [4722] if (LEDs and KEYBOARD_LED_NUMLOCK) <> 0 then Data:=Data or USB_HID_BOOT_NUMLOCK_LED;
	ands	r3,r1,#1
	ldrneb	r3,[r11, #-48]
	orrne	r3,r3,#1
# Peephole AndStrb2Strb done
	strneb	r3,[r11, #-48]
# Peephole OpCmp2OpS done
# [4723] if (LEDs and KEYBOARD_LED_CAPSLOCK) <> 0 then Data:=Data or USB_HID_BOOT_CAPSLOCK_LED;
	ands	r3,r1,#2
	ldrneb	r3,[r11, #-48]
	orrne	r3,r3,#2
# Peephole AndStrb2Strb done
	strneb	r3,[r11, #-48]
# Peephole OpCmp2OpS done
# [4724] if (LEDs and KEYBOARD_LED_SCROLLLOCK) <> 0 then Data:=Data or USB_HID_BOOT_SCROLLLOCK_LED;
	ands	r3,r1,#4
	ldrneb	r3,[r11, #-48]
	orrne	r3,r3,#4
# Peephole AndStrb2Strb done
	strneb	r3,[r11, #-48]
# Peephole OpCmp2OpS done
# [4725] if (LEDs and KEYBOARD_LED_COMPOSE) <> 0 then Data:=Data or USB_HID_BOOT_COMPOSE_LED;
	ands	r3,r1,#8
	ldrneb	r3,[r11, #-48]
	orrne	r3,r3,#8
# Peephole AndStrb2Strb done
	strneb	r3,[r11, #-48]
# Peephole OpCmp2OpS done
# [4726] if (LEDs and KEYBOARD_LED_KANA) <> 0 then Data:=Data or USB_HID_BOOT_KANA_LED;
	ands	r1,r1,#16
	ldrneb	r1,[r11, #-48]
	orrne	r1,r1,#16
# Peephole AndStrb2Strb done
	strneb	r1,[r11, #-48]
# Var Keyboard located in register r2
# Rescheduled
# Rescheduled
# [4729] Result:=USBControlRequest(Device,nil,USB_HID_REQUEST_SET_REPORT,USB_BMREQUESTTYPE_TYPE_CLASS or USB_BMREQUESTTYPE_DIR_OUT or USB_BMREQUESTTYPE_RECIPIENT_INTERFACE,(USB_HID_REPORT_OUTPUT shl 8) or USB_HID_REPORTID_NONE,Keyboard.HIDInterface.Descri
	ldr	r3,.Lj1823
	sub	r1,r11,#48
	ldr	r2,[r2, r3]
	ldr	r2,[r2, #12]
	ldrb	r2,[r2, #2]
	mov	r3,#0
	strb	r3,[r13, #20]
	mov	r3,#1
	strh	r3,[r13, #12]
	str	r1,[r13, #8]
	strh	r2,[r13, #4]
	mov	r1,#512
	strh	r1,[r13]
	mvn	r1,#0
	str	r1,[r13, #16]
# Var Device located in register r0
	mov	r3,#33
	mov	r2,#9
	mov	r1,#0
	bl	USB_$$_USBCONTROLREQUESTEX$crcBD3F87E7
	mov	r4,r0
.Lj1819:
# [4730] end;
	mov	r0,r4
	ldmea	r11,{r4,r11,r13,r15}
.Lj1823:
	.long	6268
.Le52:
	.size	KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD, .Le52 - KEYBOARD_$$_USBKEYBOARDDEVICESETLEDS$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD

.section .text.n_keyboard_$$_usbkeyboarddevicesetidle$pusbkeyboarddevice$byte$byte$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDDEVICESETIDLE$PUSBKEYBOARDDEVICE$BYTE$BYTE$$LONGWORD
KEYBOARD_$$_USBKEYBOARDDEVICESETIDLE$PUSBKEYBOARDDEVICE$BYTE$BYTE$$LONGWORD:
# [4742] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#68
# Var Keyboard located in register r3
# Var Duration located in register r1
# Var ReportId located in register r2
# Var $result located in register r4
# Var Device located in register r0
	mov	r3,r0
# Var $result located in register r4
# [4745] Result:=USB_STATUS_INVALID_PARAMETER;
	mov	r4,#5
# [4748] if Keyboard = nil then Exit;
	cmp	r3,#0
	beq	.Lj1839
# [4751] if Keyboard.HIDInterface = nil then Exit;
	ldr	r0,.Lj1843
	ldr	r0,[r3, r0]
	cmp	r0,#0
	beq	.Lj1839
# Var Keyboard located in register r3
# Var Device located in register r0
# [4754] Device:=PUSBDevice(Keyboard.Keyboard.Device.DeviceData);
	ldr	r0,[r3, #32]
# [4755] if Device = nil then Exit;
	cmp	r0,#0
	beq	.Lj1839
# Var Keyboard located in register r3
# Rescheduled
# [4758] Result:=USBControlRequest(Device,nil,USB_HID_REQUEST_SET_IDLE,USB_BMREQUESTTYPE_TYPE_CLASS or USB_BMREQUESTTYPE_DIR_OUT or USB_BMREQUESTTYPE_RECIPIENT_INTERFACE,(Duration shl 8) or ReportId,Keyboard.HIDInterface.Descriptor.bInterfaceNumber,nil,0)
	ldr	r12,.Lj1843
	ldr	r3,[r3, r12]
	ldr	r3,[r3, #12]
	ldrb	r3,[r3, #2]
# Peephole FoldShiftProcess done
# [4759] end;
	orr	r1,r2,r1,lsl #8
# Peephole UXTHStrh2Strh done
	mov	r2,#0
	strb	r2,[r13, #20]
# Peephole MovStrMov done
	strh	r2,[r13, #12]
# Peephole MovStrMov done
	str	r2,[r13, #8]
	strh	r3,[r13, #4]
	strh	r1,[r13]
	mvn	r1,#0
	str	r1,[r13, #16]
# Var Device located in register r0
	mov	r3,#33
	mov	r2,#10
	mov	r1,#0
	bl	USB_$$_USBCONTROLREQUESTEX$crcBD3F87E7
	mov	r4,r0
.Lj1839:
	mov	r0,r4
	ldmea	r11,{r4,r11,r13,r15}
.Lj1843:
	.long	6268
.Le53:
	.size	KEYBOARD_$$_USBKEYBOARDDEVICESETIDLE$PUSBKEYBOARDDEVICE$BYTE$BYTE$$LONGWORD, .Le53 - KEYBOARD_$$_USBKEYBOARDDEVICESETIDLE$PUSBKEYBOARDDEVICE$BYTE$BYTE$$LONGWORD

.section .text.n_keyboard_$$_usbkeyboarddevicesetprotocol$pusbkeyboarddevice$byte$$longword
	.balign 4
.globl	KEYBOARD_$$_USBKEYBOARDDEVICESETPROTOCOL$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD
KEYBOARD_$$_USBKEYBOARDDEVICESETPROTOCOL$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD:
# [4770] begin
	mov	r12,r13
	stmfd	r13!,{r4,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#68
# Var Keyboard located in register r2
# Var Protocol located in register r1
# Var $result located in register r4
# Var Device located in register r0
	mov	r2,r0
# Var $result located in register r4
# [4772] Result:=USB_STATUS_INVALID_PARAMETER;
	mov	r4,#5
# [4775] if Keyboard = nil then Exit;
	cmp	r2,#0
	beq	.Lj1849
# [4778] if Keyboard.HIDInterface = nil then Exit;
	ldr	r0,.Lj1853
	ldr	r0,[r2, r0]
	cmp	r0,#0
	beq	.Lj1849
# Var Keyboard located in register r2
# Var Device located in register r0
# [4781] Device:=PUSBDevice(Keyboard.Keyboard.Device.DeviceData);
	ldr	r0,[r2, #32]
# [4782] if Device = nil then Exit;
	cmp	r0,#0
	beq	.Lj1849
# Var Keyboard located in register r2
# Rescheduled
# [4785] Result:=USBControlRequest(Device,nil,USB_HID_REQUEST_SET_PROTOCOL,USB_BMREQUESTTYPE_TYPE_CLASS or USB_BMREQUESTTYPE_DIR_OUT or USB_BMREQUESTTYPE_RECIPIENT_INTERFACE,Protocol,Keyboard.HIDInterface.Descriptor.bInterfaceNumber,nil,0);
	ldr	r3,.Lj1853
	ldr	r2,[r2, r3]
	ldr	r2,[r2, #12]
	ldrb	r2,[r2, #2]
# Var Protocol located in register r1
	mov	r3,#0
	strb	r3,[r13, #20]
# Peephole MovStrMov done
	strh	r3,[r13, #12]
# Peephole MovStrMov done
	str	r3,[r13, #8]
	strh	r2,[r13, #4]
	strh	r1,[r13]
	mvn	r1,#0
	str	r1,[r13, #16]
# Var Device located in register r0
	mov	r3,#33
	mov	r2,#11
	mov	r1,#0
	bl	USB_$$_USBCONTROLREQUESTEX$crcBD3F87E7
	mov	r4,r0
.Lj1849:
# [4786] end;
	mov	r0,r4
	ldmea	r11,{r4,r11,r13,r15}
.Lj1853:
	.long	6268
.Le54:
	.size	KEYBOARD_$$_USBKEYBOARDDEVICESETPROTOCOL$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD, .Le54 - KEYBOARD_$$_USBKEYBOARDDEVICESETPROTOCOL$PUSBKEYBOARDDEVICE$BYTE$$LONGWORD

.section .text.n_keyboard_$$_init
	.balign 4
.globl	INIT$_$KEYBOARD
INIT$_$KEYBOARD:
.globl	KEYBOARD_$$_init
KEYBOARD_$$_init:
# [4791] initialization
	stmfd	r13!,{r14}
# [4792] KeyboardInit;
	bl	KEYBOARD_$$_KEYBOARDINIT
	ldmfd	r13!,{r15}
.Le55:
	.size	KEYBOARD_$$_init, .Le55 - KEYBOARD_$$_init

.section .text.n_keyboard_$$_finalize
	.balign 4
.globl	FINALIZE$_$KEYBOARD
FINALIZE$_$KEYBOARD:
.globl	KEYBOARD_$$_finalize
KEYBOARD_$$_finalize:
# [4796] finalization
	stmfd	r13!,{r14}
# [4802] end.
	ldr	r1,.Lj1861
# Peephole LdrMov2Ldr removed superfluous mov
# Rescheduled
	ldr	r0,.Lj1862
	bl	fpc_finalize
	ldr	r1,.Lj1863
# Rescheduled
	ldr	r0,.Lj1864
	bl	fpc_finalize
	ldmfd	r13!,{r15}
.Lj1861:
	.long	RTTI_$KEYBOARD_$$_def00000002
.Lj1862:
	.long	TC_$KEYBOARD_$$_KEYBOARD_TYPE_NAMES
.Lj1863:
	.long	RTTI_$KEYBOARD_$$_def0000000D
.Lj1864:
	.long	TC_$KEYBOARD_$$_KEYBOARD_STATE_NAMES
.Le56:
	.size	KEYBOARD_$$_finalize, .Le56 - KEYBOARD_$$_finalize
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$keyboard_$$_keyboard_log_enabled
# [180] KEYBOARD_LOG_ENABLED:Boolean;
	.globl U_$KEYBOARD_$$_KEYBOARD_LOG_ENABLED
	.size U_$KEYBOARD_$$_KEYBOARD_LOG_ENABLED,1
U_$KEYBOARD_$$_KEYBOARD_LOG_ENABLED:
	.zero 1

.section .bss.n_u_$keyboard_$$_report_buffer
# [693] var report_buffer: array[0..512] of byte;
	.globl U_$KEYBOARD_$$_REPORT_BUFFER
	.size U_$KEYBOARD_$$_REPORT_BUFFER,513
U_$KEYBOARD_$$_REPORT_BUFFER:
	.zero 513

.section .bss.n_u_$keyboard_$$_keyboardinitialized
# [745] KeyboardInitialized:Boolean;
	.size U_$KEYBOARD_$$_KEYBOARDINITIALIZED,1
U_$KEYBOARD_$$_KEYBOARDINITIALIZED:
	.zero 1

.section .bss.n_u_$keyboard_$$_keyboardtable
	.balign 4
# [747] KeyboardTable:PKeyboardDevice;
	.size U_$KEYBOARD_$$_KEYBOARDTABLE,4
U_$KEYBOARD_$$_KEYBOARDTABLE:
	.zero 4

.section .bss.n_u_$keyboard_$$_keyboardtablecount
	.balign 4
# [749] KeyboardTableCount:LongWord;
	.size U_$KEYBOARD_$$_KEYBOARDTABLECOUNT,4
U_$KEYBOARD_$$_KEYBOARDTABLECOUNT:
	.zero 4

.section .bss.n_u_$keyboard_$$_keyboardbuffer
	.balign 4
# [751] KeyboardBuffer:PKeyboardBuffer;                          {Global keyboard input buffer}
	.size U_$KEYBOARD_$$_KEYBOARDBUFFER,4
U_$KEYBOARD_$$_KEYBOARDBUFFER:
	.zero 4

.section .bss.n_u_$keyboard_$$_sysconsolelastcode
# [758] SysConsoleLastCode:Byte;
	.size U_$KEYBOARD_$$_SYSCONSOLELASTCODE,1
U_$KEYBOARD_$$_SYSCONSOLELASTCODE:
	.zero 1

.section .bss.n_u_$keyboard_$$_usbkeyboarddriver
	.balign 4
# [764] USBKeyboardDriver:PUSBDriver;  {USB Keyboard Driver interface (Set by KeyboardInit)}
	.size U_$KEYBOARD_$$_USBKEYBOARDDRIVER,4
U_$KEYBOARD_$$_USBKEYBOARDDRIVER:
	.zero 4
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,18
.Ld1:
# [91] 'KEYBOARD_TYPE_NONE',
	.ascii	"KEYBOARD_TYPE_NONE\000"
.Le57:
	.size	.Ld1$strlab, .Le57 - .Ld1$strlab
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,17
.Ld2:
# [92] 'KEYBOARD_TYPE_USB',
	.ascii	"KEYBOARD_TYPE_USB\000"
.Le58:
	.size	.Ld2$strlab, .Le58 - .Ld2$strlab
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,17
.Ld3:
# [93] 'KEYBOARD_TYPE_PS2',
	.ascii	"KEYBOARD_TYPE_PS2\000"
.Le59:
	.size	.Ld3$strlab, .Le59 - .Ld3$strlab
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,20
.Ld4:
# [94] 'KEYBOARD_TYPE_SERIAL');
	.ascii	"KEYBOARD_TYPE_SERIAL\000"
.Le60:
	.size	.Ld4$strlab, .Le60 - .Ld4$strlab

.section .rodata.n_.Ld5
	.balign 4
.Ld5$strlab:
	.short	0,1
	.long	-1,23
.Ld5:
# [106] 'KEYBOARD_STATE_DETACHED',
	.ascii	"KEYBOARD_STATE_DETACHED\000"
.Le61:
	.size	.Ld5$strlab, .Le61 - .Ld5$strlab
	.balign 4
.Ld6$strlab:
	.short	0,1
	.long	-1,24
.Ld6:
# [107] 'KEYBOARD_STATE_DETACHING',
	.ascii	"KEYBOARD_STATE_DETACHING\000"
.Le62:
	.size	.Ld6$strlab, .Le62 - .Ld6$strlab
	.balign 4
.Ld7$strlab:
	.short	0,1
	.long	-1,24
.Ld7:
# [108] 'KEYBOARD_STATE_ATTACHING',
	.ascii	"KEYBOARD_STATE_ATTACHING\000"
.Le63:
	.size	.Ld7$strlab, .Le63 - .Ld7$strlab
	.balign 4
.Ld8$strlab:
	.short	0,1
	.long	-1,23
.Ld8:
# [109] 'KEYBOARD_STATE_ATTACHED');
	.ascii	"KEYBOARD_STATE_ATTACHED\000"
.Le64:
	.size	.Ld8$strlab, .Le64 - .Ld8$strlab
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$KEYBOARD_$$_KEYBOARD_TYPE_NAMES
	.balign 4
.globl	TC_$KEYBOARD_$$_KEYBOARD_TYPE_NAMES
TC_$KEYBOARD_$$_KEYBOARD_TYPE_NAMES:
	.long	.Ld1
	.long	.Ld2
	.long	.Ld3
	.long	.Ld4
# [97] KEYBOARD_STATE_DETACHED  = 0;
.Le65:
	.size	TC_$KEYBOARD_$$_KEYBOARD_TYPE_NAMES, .Le65 - TC_$KEYBOARD_$$_KEYBOARD_TYPE_NAMES

.section .data.n_TC_$KEYBOARD_$$_KEYBOARD_STATE_NAMES
	.balign 4
.globl	TC_$KEYBOARD_$$_KEYBOARD_STATE_NAMES
TC_$KEYBOARD_$$_KEYBOARD_STATE_NAMES:
	.long	.Ld5
	.long	.Ld6
	.long	.Ld7
	.long	.Ld8
# [112] KEYBOARD_FLAG_NONE        = $00000000;
.Le66:
	.size	TC_$KEYBOARD_$$_KEYBOARD_STATE_NAMES, .Le66 - TC_$KEYBOARD_$$_KEYBOARD_STATE_NAMES

.section .data.n_TC_$KEYBOARD_$$_KEYBOARD_DEFAULT_LOG_LEVEL
	.balign 4
.globl	TC_$KEYBOARD_$$_KEYBOARD_DEFAULT_LOG_LEVEL
TC_$KEYBOARD_$$_KEYBOARD_DEFAULT_LOG_LEVEL:
	.long	1
# [178] var
.Le67:
	.size	TC_$KEYBOARD_$$_KEYBOARD_DEFAULT_LOG_LEVEL, .Le67 - TC_$KEYBOARD_$$_KEYBOARD_DEFAULT_LOG_LEVEL

.section .data.n_TC_$KEYBOARD_$$_USB_HID_BOOT_USAGE_ID
.globl	TC_$KEYBOARD_$$_USB_HID_BOOT_USAGE_ID
TC_$KEYBOARD_$$_USB_HID_BOOT_USAGE_ID:
	.byte	0,0,0,0,0,0,0,0,97,65,98,66,99,67,100,68,101,69,102,70,103,71,104,72,105,73,106,74,107,75,108,76,109,77,110
	.byte	78,111,79,112,80,113,81,114,82,115,83,116,84,117,85,118,86,119,87,120,88,121,89,122,90,49,33,50,64,51
	.byte	35,52,36,53,37,54,94,55,38,56,42,57,40,48,41,13,13,27,27,8,8,9,9,32,32,45,95,61,43,91,123,93,125,92,124,35
	.byte	126,59,58,39,34,96,126,44,60,46,62,47,63,0,0,1,0,2,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,127,127
	.byte	0,0,0,0,0,0,0,0,23,0,24,0,0,0,47,47,42,42,45,45,43,43,13,13,49,49,50,50,51,51,52,52,53,53,54,54,55,55,56,56,57,57
	.byte	48,48,46,127,92,124,0,0,0,0,61,61,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,44,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
# [504] USB_HID_BOOT_USAGE_NUMLOCK    = 83;
.Le68:
	.size	TC_$KEYBOARD_$$_USB_HID_BOOT_USAGE_ID, .Le68 - TC_$KEYBOARD_$$_USB_HID_BOOT_USAGE_ID

.section .data.n_TC_$KEYBOARD_$$_RB_START
	.balign 4
.globl	TC_$KEYBOARD_$$_RB_START
TC_$KEYBOARD_$$_RB_START:
	.long	0
# [695] rb_end:integer=0;
.Le69:
	.size	TC_$KEYBOARD_$$_RB_START, .Le69 - TC_$KEYBOARD_$$_RB_START

.section .data.n_TC_$KEYBOARD_$$_RB_END
	.balign 4
.globl	TC_$KEYBOARD_$$_RB_END
TC_$KEYBOARD_$$_RB_END:
	.long	0
# [696] report_buffer_active:boolean=false;
.Le70:
	.size	TC_$KEYBOARD_$$_RB_END, .Le70 - TC_$KEYBOARD_$$_RB_END

.section .data.n_TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE
.globl	TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE
TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE:
	.byte	0
# [698] function getkeyboardreport:TKeyboardreport;
.Le71:
	.size	TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE, .Le71 - TC_$KEYBOARD_$$_REPORT_BUFFER_ACTIVE

.section .data.n_TC_$KEYBOARD_$$_KEYBOARDTABLELOCK
	.balign 4
TC_$KEYBOARD_$$_KEYBOARDTABLELOCK:
	.long	-1
.Le72:
	.size	TC_$KEYBOARD_$$_KEYBOARDTABLELOCK, .Le72 - TC_$KEYBOARD_$$_KEYBOARDTABLELOCK

.section .data.n_TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK
	.balign 4
TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK:
	.long	-1
# [756] var
.Le73:
	.size	TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK, .Le73 - TC_$KEYBOARD_$$_KEYBOARDBUFFERLOCK

.section .rodata.n_.Ld9
	.balign 4
.Ld9$strlab:
	.short	0,1
	.long	-1,36
.Ld9:
	.ascii	"Failed to create keyboard table lock\000"
.Le74:
	.size	.Ld9$strlab, .Le74 - .Ld9$strlab

.section .rodata.n_.Ld10
	.balign 4
.Ld10$strlab:
	.short	0,1
	.long	-1,34
.Ld10:
	.ascii	"Failed to allocate keyboard buffer\000"
.Le75:
	.size	.Ld10$strlab, .Le75 - .Ld10$strlab

.section .rodata.n_.Ld11
	.balign 4
.Ld11$strlab:
	.short	0,1
	.long	-1,42
.Ld11:
	.ascii	"Failed to create keyboard buffer semaphore\000"
.Le76:
	.size	.Ld11$strlab, .Le76 - .Ld11$strlab

.section .rodata.n_.Ld12
	.balign 4
.Ld12$strlab:
	.short	0,1
	.long	-1,37
.Ld12:
	.ascii	"Failed to create keyboard buffer lock\000"
.Le77:
	.size	.Ld12$strlab, .Le77 - .Ld12$strlab

.section .rodata.n_.Ld13
	.balign 4
.Ld13$strlab:
	.short	0,1
	.long	-1,39
.Ld13:
	.ascii	"USB Keyboard Driver (HID boot protocol)\000"
.Le78:
	.size	.Ld13$strlab, .Le78 - .Ld13$strlab

.section .rodata.n_.Ld14
	.balign 4
.Ld14$strlab:
	.short	0,1
	.long	-1,50
.Ld14:
	.ascii	"Keyboard: Failed to register USB keyboard driver: \000"
.Le79:
	.size	.Ld14$strlab, .Le79 - .Ld14$strlab

.section .rodata.n_.Ld15
	.balign 4
.Ld15$strlab:
	.short	0,1
	.long	-1,36
.Ld15:
	.ascii	"Failed to create USB keyboard driver\000"
.Le80:
	.size	.Ld15$strlab, .Le80 - .Ld15$strlab

.section .rodata.n_.Ld16
	.balign 4
.Ld16$strlab:
	.short	0,1
	.long	-1,34
.Ld16:
	.ascii	"Failed to create lock for keyboard\000"
.Le81:
	.size	.Ld16$strlab, .Le81 - .Ld16$strlab

.section .rodata.n_.Ld17
	.balign 4
.Ld17$strlab:
	.short	0,1
	.long	-1,46
.Ld17:
	.ascii	"Failed to create buffer semaphore for keyboard\000"
.Le82:
	.size	.Ld17$strlab, .Le82 - .Ld17$strlab

.section .rodata.n_.Ld18
	.balign 4
.Ld18$strlab:
	.short	0,1
	.long	-1,8
.Ld18:
	.ascii	"Keyboard\000"
.Le83:
	.size	.Ld18$strlab, .Le83 - .Ld18$strlab

.section .rodata.n_.Ld19
	.balign 4
.Ld19$strlab:
	.short	0,1
	.long	-1,46
.Ld19:
	.ascii	"Keyboard: Failed to create new keyboard device\000"
.Le84:
	.size	.Ld19$strlab, .Le84 - .Ld19$strlab

.section .rodata.n_.Ld20
	.balign 4
.Ld20$strlab:
	.short	0,1
	.long	-1,16
.Ld20:
	.ascii	"USB HID Keyboard\000"
.Le85:
	.size	.Ld20$strlab, .Le85 - .Ld20$strlab

.section .rodata.n_.Ld21
	.balign 4
.Ld21$strlab:
	.short	0,1
	.long	-1,60
.Ld21:
	.ascii	"Keyboard: Failed to allocate USB report request for"
	.ascii	" keyboard\000"
.Le86:
	.size	.Ld21$strlab, .Le86 - .Ld21$strlab

.section .rodata.n_.Ld22
	.balign 4
.Ld22$strlab:
	.short	0,1
	.long	-1,48
.Ld22:
	.ascii	"Keyboard: Failed to register new keyboard device\000"
.Le87:
	.size	.Ld22$strlab, .Le87 - .Ld22$strlab

.section .rodata.n_.Ld23
	.balign 4
.Ld23$strlab:
	.short	0,1
	.long	-1,46
.Ld23:
	.ascii	"Keyboard: Failed to enable HID boot protocol: \000"
.Le88:
	.size	.Ld23$strlab, .Le88 - .Ld23$strlab

.section .rodata.n_.Ld24
	.balign 4
.Ld24$strlab:
	.short	0,1
	.long	-1,35
.Ld24:
	.ascii	"Keyboard: Failed to set idle rate: \000"
.Le89:
	.size	.Ld24$strlab, .Le89 - .Ld24$strlab

.section .rodata.n_.Ld25
	.balign 4
.Ld25$strlab:
	.short	0,1
	.long	-1,30
.Ld25:
	.ascii	"Keyboard: Failed to set LEDs: \000"
.Le90:
	.size	.Ld25$strlab, .Le90 - .Ld25$strlab

.section .rodata.n_.Ld26
	.balign 4
.Ld26$strlab:
	.short	0,1
	.long	-1,43
.Ld26:
	.ascii	"Keyboard: Failed to submit report request: \000"
.Le91:
	.size	.Ld26$strlab, .Le91 - .Ld26$strlab

.section .rodata.n_.Ld27
	.balign 4
.Ld27$strlab:
	.short	0,1
	.long	-1,40
.Ld27:
	.ascii	"Keyboard: Failed report request (Status=\000"
.Le92:
	.size	.Ld27$strlab, .Le92 - .Ld27$strlab

.section .rodata.n_.Ld28
	.balign 4
.Ld28$strlab:
	.short	0,1
	.long	-1,13
.Ld28:
	.ascii	", ActualSize=\000"
.Le93:
	.size	.Ld28$strlab, .Le93 - .Ld28$strlab

.section .rodata.n_.Ld29
	.balign 4
.Ld29$strlab:
	.short	0,1
	.long	-1,1
.Ld29:
	.ascii	")\000"
.Le94:
	.size	.Ld29$strlab, .Le94 - .Ld29$strlab

.section .rodata.n_.Ld30
	.balign 4
.Ld30$strlab:
	.short	0,1
	.long	-1,45
.Ld30:
	.ascii	"Keyboard: Failed to resubmit report request: \000"
.Le95:
	.size	.Ld30$strlab, .Le95 - .Ld30$strlab

.section .rodata.n_.Ld31
	.balign 4
.Ld31$strlab:
	.short	0,1
	.long	-1,32
.Ld31:
	.ascii	"Keyboard: Failed to acquire lock\000"
.Le96:
	.size	.Ld31$strlab, .Le96 - .Ld31$strlab

.section .rodata.n_.Ld32
	.balign 4
.Ld32$strlab:
	.short	0,1
	.long	-1,32
.Ld32:
	.ascii	"Keyboard: Report request invalid\000"
.Le97:
	.size	.Ld32$strlab, .Le97 - .Ld32$strlab

.section .rodata.n_.Ld33
	.balign 4
.Ld33$strlab:
	.short	0,1
	.long	-1,21
.Ld33:
	.ascii	"KEYBOARD_TYPE_UNKNOWN\000"
.Le98:
	.size	.Ld33$strlab, .Le98 - .Ld33$strlab

.section .rodata.n_.Ld34
	.balign 4
.Ld34$strlab:
	.short	0,1
	.long	-1,22
.Ld34:
	.ascii	"KEYBOARD_STATE_UNKNOWN\000"
.Le99:
	.size	.Ld34$strlab, .Le99 - .Ld34$strlab

.section .rodata.n_.Ld35
	.balign 4
.Ld35$strlab:
	.short	0,1
	.long	-1,8
.Ld35:
	.ascii	"[DEBUG] \000"
.Le100:
	.size	.Ld35$strlab, .Le100 - .Ld35$strlab

.section .rodata.n_.Ld36
	.balign 4
.Ld36$strlab:
	.short	0,1
	.long	-1,8
.Ld36:
	.ascii	"[ERROR] \000"
.Le101:
	.size	.Ld36$strlab, .Le101 - .Ld36$strlab

.section .rodata.n_.Ld37
	.balign 4
.Ld37$strlab:
	.short	0,1
	.long	-1,10
.Ld37:
	.ascii	"Keyboard: \000"
.Le102:
	.size	.Ld37$strlab, .Le102 - .Ld37$strlab

.section .rodata.n_.Ld38
	.balign 4
.Ld38$strlab:
	.short	0,1
	.long	-1,2
.Ld38:
	.ascii	": \000"
.Le103:
	.size	.Ld38$strlab, .Le103 - .Ld38$strlab

.section .rodata.n_.Ld39
	.balign 4
.Ld39$strlab:
	.short	0,1
	.long	-1,40
.Ld39:
	.ascii	"Keyboard: Buffer overflow, key discarded\000"
.Le104:
	.size	.Ld39$strlab, .Le104 - .Ld39$strlab

.section .rodata.n_.Ld40
	.balign 4
.Ld40$strlab:
	.short	0,1
	.long	-1,42
.Ld40:
	.ascii	"Keyboard: Failed to acquire lock on buffer\000"
.Le105:
	.size	.Ld40$strlab, .Le105 - .Ld40$strlab
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$KEYBOARD_$$_def00000002
	.balign 4
.globl	RTTI_$KEYBOARD_$$_def00000002
RTTI_$KEYBOARD_$$_def00000002:
	.byte	12,0,0,0
	.long	16,4
	.long	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
# [4803] 
.Le106:
	.size	RTTI_$KEYBOARD_$$_def00000002, .Le106 - RTTI_$KEYBOARD_$$_def00000002

.section .rodata.n_RTTI_$KEYBOARD_$$_def0000000D
	.balign 4
.globl	RTTI_$KEYBOARD_$$_def0000000D
RTTI_$KEYBOARD_$$_def0000000D:
	.byte	12,0,0,0
	.long	16,4
	.long	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le107:
	.size	RTTI_$KEYBOARD_$$_def0000000D, .Le107 - RTTI_$KEYBOARD_$$_def0000000D

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDDATA
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDDATA
RTTI_$KEYBOARD_$$_TKEYBOARDDATA:
	.byte	13,13
	.ascii	"TKeyboardData"
	.byte	0
	.long	12,5
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	0
	.long	RTTI_$SYSTEM_$$_WORD
	.long	4
	.long	RTTI_$SYSTEM_$$_WORD
	.long	6
	.long	RTTI_$SYSTEM_$$_CHAR
	.long	8
	.long	RTTI_$SYSTEM_$$_WIDECHAR
	.long	10
.Le108:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDDATA, .Le108 - RTTI_$KEYBOARD_$$_TKEYBOARDDATA

.section .rodata.n_RTTI_$KEYBOARD_$$_PKEYBOARDDATA
	.balign 4
.globl	RTTI_$KEYBOARD_$$_PKEYBOARDDATA
RTTI_$KEYBOARD_$$_PKEYBOARDDATA:
	.byte	29,13
	.ascii	"PKeyboardData"
	.byte	0
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDDATA
.Le109:
	.size	RTTI_$KEYBOARD_$$_PKEYBOARDDATA, .Le109 - RTTI_$KEYBOARD_$$_PKEYBOARDDATA

.section .rodata.n_INIT_$KEYBOARD_$$_TKEYBOARDDATA
	.balign 4
.globl	INIT_$KEYBOARD_$$_TKEYBOARDDATA
INIT_$KEYBOARD_$$_TKEYBOARDDATA:
	.byte	13,13
	.ascii	"TKeyboardData"
	.byte	0
	.long	12,0
.Le110:
	.size	INIT_$KEYBOARD_$$_TKEYBOARDDATA, .Le110 - INIT_$KEYBOARD_$$_TKEYBOARDDATA

.section .rodata.n_RTTI_$KEYBOARD_$$_def00000020
	.balign 4
.globl	RTTI_$KEYBOARD_$$_def00000020
RTTI_$KEYBOARD_$$_def00000020:
	.byte	12,0,0,0
	.long	6144,512
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDDATA
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SMALLINT
.Le111:
	.size	RTTI_$KEYBOARD_$$_def00000020, .Le111 - RTTI_$KEYBOARD_$$_def00000020

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDBUFFER
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDBUFFER
RTTI_$KEYBOARD_$$_TKEYBOARDBUFFER:
	.byte	13,15
	.ascii	"TKeyboardBuffer"
	.byte	0,0,0
	.long	6156,4
	.long	RTTI_$SYSTEM_$$_LONGINT
	.long	0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	4
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	8
	.long	RTTI_$KEYBOARD_$$_def00000020
	.long	12
.Le112:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDBUFFER, .Le112 - RTTI_$KEYBOARD_$$_TKEYBOARDBUFFER

.section .rodata.n_RTTI_$KEYBOARD_$$_PKEYBOARDBUFFER
	.balign 4
.globl	RTTI_$KEYBOARD_$$_PKEYBOARDBUFFER
RTTI_$KEYBOARD_$$_PKEYBOARDBUFFER:
	.byte	29,15
	.ascii	"PKeyboardBuffer"
	.byte	0,0,0
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDBUFFER
.Le113:
	.size	RTTI_$KEYBOARD_$$_PKEYBOARDBUFFER, .Le113 - RTTI_$KEYBOARD_$$_PKEYBOARDBUFFER

.section .rodata.n_INIT_$KEYBOARD_$$_TKEYBOARDBUFFER
	.balign 4
.globl	INIT_$KEYBOARD_$$_TKEYBOARDBUFFER
INIT_$KEYBOARD_$$_TKEYBOARDBUFFER:
	.byte	13,15
	.ascii	"TKeyboardBuffer"
	.byte	0,0,0
	.long	6156,0
.Le114:
	.size	INIT_$KEYBOARD_$$_TKEYBOARDBUFFER, .Le114 - INIT_$KEYBOARD_$$_TKEYBOARDBUFFER

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEGET
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEGET
RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEGET:
	.byte	23,18
	.ascii	"TKeyboardDeviceGet"
	.byte	0,3,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	2,0,0,0,0,0,0,0
	.long	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
	.byte	8
	.ascii	"Keyboard"
	.byte	0,0,0,1,0,0,0
	.long	RTTI_$SYSTEM_$$_WORD
	.byte	7
	.ascii	"KeyCode"
.Le115:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEGET, .Le115 - RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEGET

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEREAD
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEREAD
RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEREAD:
	.byte	23,19
	.ascii	"TKeyboardDeviceRead"
	.byte	0,0,0,0,3,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	4,0,0,0,0,0,0,0
	.long	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
	.byte	8
	.ascii	"Keyboard"
	.byte	0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_POINTER
	.byte	6
	.ascii	"Buffer"
	.byte	0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	4
	.ascii	"Size"
	.byte	0,0,0,1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	5
	.ascii	"Count"
	.byte	0,0
.Le116:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEREAD, .Le116 - RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEREAD

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDDEVICECONTROL
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICECONTROL
RTTI_$KEYBOARD_$$_TKEYBOARDDEVICECONTROL:
	.byte	23,22
	.ascii	"TKeyboardDeviceControl"
	.byte	0,3,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	4,0,0,0,0,0,0,0
	.long	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
	.byte	8
	.ascii	"Keyboard"
	.byte	0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
	.byte	7
	.ascii	"Request"
	.byte	0,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	9
	.ascii	"Argument1"
	.byte	0,0,1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	9
	.ascii	"Argument2"
	.byte	0,0
.Le117:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICECONTROL, .Le117 - RTTI_$KEYBOARD_$$_TKEYBOARDDEVICECONTROL

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDDEVICE
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICE
RTTI_$KEYBOARD_$$_TKEYBOARDDEVICE:
	.byte	13,15
	.ascii	"TKeyboardDevice"
	.byte	0,0,0
	.long	6268,19
	.long	RTTI_$DEVICES_$$_TDEVICE
	.long	0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	48
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	52
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	56
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	60
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	64
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEGET
	.long	68
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICEREAD
	.long	72
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICECONTROL
	.long	76
	.long	RTTI_$SYSTEM_$$_LONGINT
	.long	80
	.long	RTTI_$SYSTEM_$$_WORD
	.long	84
	.long	RTTI_$SYSTEM_$$_WORD
	.long	86
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	88
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDBUFFER
	.long	92
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	6248
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	6252
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	6256
	.long	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
	.long	6260
	.long	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
	.long	6264
.Le118:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICE, .Le118 - RTTI_$KEYBOARD_$$_TKEYBOARDDEVICE

.section .rodata.n_RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
	.balign 4
.globl	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE:
	.byte	29,15
	.ascii	"PKeyboardDevice"
	.byte	0,0,0
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICE
.Le119:
	.size	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE, .Le119 - RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDENUMERATE
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDENUMERATE
RTTI_$KEYBOARD_$$_TKEYBOARDENUMERATE:
	.byte	23,18
	.ascii	"TKeyboardEnumerate"
	.byte	0,3,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	2,0,0,0,0,0,0,0
	.long	RTTI_$KEYBOARD_$$_PKEYBOARDDEVICE
	.byte	8
	.ascii	"Keyboard"
	.byte	0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_POINTER
	.byte	4
	.ascii	"Data"
	.byte	0,0,0
.Le120:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDENUMERATE, .Le120 - RTTI_$KEYBOARD_$$_TKEYBOARDENUMERATE

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDNOTIFICATION
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDNOTIFICATION
RTTI_$KEYBOARD_$$_TKEYBOARDNOTIFICATION:
	.byte	23,21
	.ascii	"TKeyboardNotification"
	.byte	0,0,3,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	3,0,0,0,0,0,0,0
	.long	RTTI_$DEVICES_$$_PDEVICE
	.byte	6
	.ascii	"Device"
	.byte	0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_POINTER
	.byte	4
	.ascii	"Data"
	.byte	0,0,0,0,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.byte	12
	.ascii	"Notification"
	.byte	0,0,0
.Le121:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDNOTIFICATION, .Le121 - RTTI_$KEYBOARD_$$_TKEYBOARDNOTIFICATION

.section .rodata.n_INIT_$KEYBOARD_$$_TKEYBOARDDEVICE
	.balign 4
.globl	INIT_$KEYBOARD_$$_TKEYBOARDDEVICE
INIT_$KEYBOARD_$$_TKEYBOARDDEVICE:
	.byte	13,15
	.ascii	"TKeyboardDevice"
	.byte	0,0,0
	.long	6268,1
	.long	INIT_$DEVICES_$$_TDEVICE
	.long	0
.Le122:
	.size	INIT_$KEYBOARD_$$_TKEYBOARDDEVICE, .Le122 - INIT_$KEYBOARD_$$_TKEYBOARDDEVICE

.section .rodata.n_RTTI_$KEYBOARD_$$_TUSBKEYBOARDREPORT
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TUSBKEYBOARDREPORT
RTTI_$KEYBOARD_$$_TUSBKEYBOARDREPORT:
	.byte	12,18
	.ascii	"TUSBKeyboardReport"
	.long	8,8
	.long	RTTI_$SYSTEM_$$_BYTE
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le123:
	.size	RTTI_$KEYBOARD_$$_TUSBKEYBOARDREPORT, .Le123 - RTTI_$KEYBOARD_$$_TUSBKEYBOARDREPORT

.section .rodata.n_RTTI_$KEYBOARD_$$_PUSBKEYBOARDREPORT
	.balign 4
.globl	RTTI_$KEYBOARD_$$_PUSBKEYBOARDREPORT
RTTI_$KEYBOARD_$$_PUSBKEYBOARDREPORT:
	.byte	29,18
	.ascii	"PUSBKeyboardReport"
	.long	RTTI_$KEYBOARD_$$_TUSBKEYBOARDREPORT
.Le124:
	.size	RTTI_$KEYBOARD_$$_PUSBKEYBOARDREPORT, .Le124 - RTTI_$KEYBOARD_$$_PUSBKEYBOARDREPORT

.section .rodata.n_RTTI_$KEYBOARD_$$_TUSBKEYBOARDDEVICE
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TUSBKEYBOARDDEVICE
RTTI_$KEYBOARD_$$_TUSBKEYBOARDDEVICE:
	.byte	13,18
	.ascii	"TUSBKeyboardDevice"
	.long	6304,9
	.long	RTTI_$KEYBOARD_$$_TKEYBOARDDEVICE
	.long	0
	.long	RTTI_$USB_$$_PUSBINTERFACE
	.long	6268
	.long	RTTI_$USB_$$_PUSBREQUEST
	.long	6272
	.long	RTTI_$USB_$$_PUSBENDPOINTDESCRIPTOR
	.long	6276
	.long	RTTI_$SYSTEM_$$_WORD
	.long	6280
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	6284
	.long	RTTI_$KEYBOARD_$$_TUSBKEYBOARDREPORT
	.long	6288
	.long	RTTI_$SYSTEM_$$_LONGWORD
	.long	6296
	.long	RTTI_$SYSTEM_$$_LONGINT
	.long	6300
.Le125:
	.size	RTTI_$KEYBOARD_$$_TUSBKEYBOARDDEVICE, .Le125 - RTTI_$KEYBOARD_$$_TUSBKEYBOARDDEVICE

.section .rodata.n_RTTI_$KEYBOARD_$$_PUSBKEYBOARDDEVICE
	.balign 4
.globl	RTTI_$KEYBOARD_$$_PUSBKEYBOARDDEVICE
RTTI_$KEYBOARD_$$_PUSBKEYBOARDDEVICE:
	.byte	29,18
	.ascii	"PUSBKeyboardDevice"
	.long	RTTI_$KEYBOARD_$$_TUSBKEYBOARDDEVICE
.Le126:
	.size	RTTI_$KEYBOARD_$$_PUSBKEYBOARDDEVICE, .Le126 - RTTI_$KEYBOARD_$$_PUSBKEYBOARDDEVICE

.section .rodata.n_INIT_$KEYBOARD_$$_TUSBKEYBOARDDEVICE
	.balign 4
.globl	INIT_$KEYBOARD_$$_TUSBKEYBOARDDEVICE
INIT_$KEYBOARD_$$_TUSBKEYBOARDDEVICE:
	.byte	13,18
	.ascii	"TUSBKeyboardDevice"
	.long	6304,1
	.long	INIT_$KEYBOARD_$$_TKEYBOARDDEVICE
	.long	0
.Le127:
	.size	INIT_$KEYBOARD_$$_TUSBKEYBOARDDEVICE, .Le127 - INIT_$KEYBOARD_$$_TUSBKEYBOARDDEVICE

.section .rodata.n_RTTI_$KEYBOARD_$$_def00000065
	.balign 4
.globl	RTTI_$KEYBOARD_$$_def00000065
RTTI_$KEYBOARD_$$_def00000065:
	.byte	12,0,0,0
	.long	20,5
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le128:
	.size	RTTI_$KEYBOARD_$$_def00000065, .Le128 - RTTI_$KEYBOARD_$$_def00000065

.section .rodata.n_RTTI_$KEYBOARD_$$_def00000066
	.balign 4
.globl	RTTI_$KEYBOARD_$$_def00000066
RTTI_$KEYBOARD_$$_def00000066:
	.byte	12,0,0,0
	.long	16,4
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le129:
	.size	RTTI_$KEYBOARD_$$_def00000066, .Le129 - RTTI_$KEYBOARD_$$_def00000066

.section .rodata.n_RTTI_$KEYBOARD_$$_TKEYBOARDREPORT
	.balign 4
.globl	RTTI_$KEYBOARD_$$_TKEYBOARDREPORT
RTTI_$KEYBOARD_$$_TKEYBOARDREPORT:
	.byte	12,15
	.ascii	"TKeyboardreport"
	.byte	0,0,0
	.long	8,8
	.long	RTTI_$SYSTEM_$$_BYTE
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_SHORTINT
.Le130:
	.size	RTTI_$KEYBOARD_$$_TKEYBOARDREPORT, .Le130 - RTTI_$KEYBOARD_$$_TKEYBOARDREPORT
# End asmlist al_rtti

