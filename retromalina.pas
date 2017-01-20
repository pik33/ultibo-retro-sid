// *****************************************************************************
// The retromachine unit for Raspberry Pi/Ultibo
// Ultibo v. 0.03 - 2016.11.19
// Piotr Kardasz
// pik33@o2.pl
// www.eksperymenty.edu.pl
// GPL 2.0 or higher
// uses combinedwaveforms.bin by Johannes Ahlebrand - MIT licensed
//******************************************************************************

// --- ALPHA, don't complain !!!

// Retromachine memory map @bytes FOR ULTIBO

//    0000_0000  -  01FF_FFFF - reserved for Ultibo core
//    0200_0000  -  0200_FFFF - 6502 area
//                                          0200_D400  -  0200_D418 SID

// ------ Retromachine virtual data and hardware registers

//    0201_0000  -  0204_FFFF pallette banks; 65536 entries
//    0205_0000  -  0205_0FFF 8x16 font;        128 chars
//    0205_1000  -  0205_1FFF 8x8 font x2;      128 chars
//    0205_2000  -  0205_9FFF static sprite defs 8x4k
//    0205_A000  -  0205_DFFF 16kB area for audio buffer
//    0205_E000  -  0205_FFFF reserved
//    0206_0000  -  0206_FFFF virtual hardware regs area
//    0207_0000  -  020C_FFFF long audio buffer for noise shaper
//    020D_0000  -  02FF_FFFF low memory area / system procedures and variables

//    0300_0000  -  2FFF_FFFF program area - 754974719 bytes free
//    3000_0000  -  30FF_FFFF virtual framebuffer area

//    3100_0000  -  3AFF_FFFF - Ultibo system memory area
//    3B00_0000  -  3EFF_FFFF - GPU memory
//    3F00_0000  -  3FFF_FFFF - RPi real hardware registers

// ----- Virtual hardware registers

// 2060000 - frame counter
// 2060004 - display start
// TODO 2060008 - current graphics mode
// TODO 2060009 - bytes per pixel
// 206000C - border color
// TODO 2060010 - pallette bank
// TODO 2060014 - horizontal pallette selector  bit 31 on, 30..20 add to $18004, 11:0 pixel num.
// TODO 2060018 - display list start addr
//                 DL entry: 0_LLLLL_MM - display LLLLL lines in mode MM
//                           1_AAAAAAA - set display address to AAAAAAA
//                           F_AAAAAAA - goto address AAAAAAA
// TODO 206001C - horizontal scroll right register
// 2060020 - x res
// 2060024 - y res
// TODO 2060028 - KBD. 28 - ASCII/scan. 29,2A modifiers, 2B 1 if key pressed 2 if special
// 206002C - mouse. 6002c,d x 6002e,f y
// 2060030 - mouse keys, 2060032 - mouse wheel
// TODO 2060034 - current dl position
// 2060040 - 206007C sprite control long 0 31..16 y pos  15..0 x pos
//                               long 1 30..16 y zoom 15..0 x zoom 31 mode
// TODO 2060080 - 206009C dynamic sprite data pointer
// 20600A0 - text cursor position

// TODO planned retromachine graphic modes: 00..15 Propeller retromachine compatible
// 16 - 1792x1120 @ 8bpp
// 17 - 896x560 @ 8 bpp
// 18 - 448x280 @ 8 bpp
// 19 - 224x140 @ 8 bpp
// 20..23 - 16 bpp modes
// 24..27 - 32 bpp modes
// 28 ..31 text modes - ?

// ----------------------------   This is still alpha quality code

unit retromalina;

{$mode objfpc}{$H+}

interface

uses sysutils,classes,unit6502,Platform,Framebuffer,keyboard,mouse,threads,GlobalConst,ultibo, retro, heapmanager;

const base=$2000000; // retromachine system area base

type Tsrcconvert=procedure(screen:pointer);

     // Retromachine main thread

     TRetro = class(TThread)
     private
     protected
       procedure Execute; override;
     public
       Constructor Create(CreateSuspended : boolean);
     end;

     // Audio thread

     TAudio= class(TThread)
     private
     protected
       procedure Execute; override;
     public
      Constructor Create(CreateSuspended : boolean);
     end;


     // File buffer thread

     TFileBuffer= class(TThread)
     private
     buf:array[0..131071] of byte;
     tempbuf:array[0..32767] of byte;
     pocz:integer;
     koniec:integer;
     il,fh,newfh:integer;
     newfilename:string;
     needclear:boolean;
     protected
       procedure Execute; override;
     public
      m:integer;
      empty,full:boolean;
      Constructor Create(CreateSuspended : boolean);
      function getdata(b,ii:integer):integer;
      procedure setfile(nfh:integer);
      procedure clear;
     end;

     // mouse thread

     Tmouse= class(TThread)
     private
     protected
       procedure Execute; override;
     public
      Constructor Create(CreateSuspended : boolean);
     end;

     TKeyboard= class(TThread)
     private
     protected
       procedure Execute; override;
     public
      Constructor Create(CreateSuspended : boolean);
     end;


     TSample=array[0..1] of smallint;
     TSample32=array[0..1] of integer;

var fh,filetype:integer;                // this needs cleaning...
    sfh:integer;                        // SID file handler
    play:word;
    p2:^integer;
    tim,t,t2,t3,ts,t6,time6502:int64;
    vblank1:byte;
    combined:array[0..1023] of byte;
    scope:array[0..959] of integer;
    db:boolean=false;
    debug:integer;
    sidtime:int64=0;
    timer1:int64=-1;
    siddelay:int64=20000;
    songtime,songfreq:int64;
    skip:integer;
    scj:integer=0;
    thread:TRetro;
    thread3:TAudio;
    times6502:array[0..15] of integer;
    attacktable:array[0..15] of double=(5.208e-4,1.302e-4,6.51e-5,4.34e-5,2.74e-5,1.86e-5,1.53e-5,1.3e-5,1.04e-5,4.17e-6,2.08e-6,1.302e-6,1.04e-6,3.47e-7,2.08e-7,1.3e-7);
    attacktablei:array[0..15] of int64;
    srtablei:array[0..15] of int64;
    sidcount:integer=1;
    sampleclock:integer=0;
    sidclock:integer=0;
    siddata:array[0..1151] of integer;
    i,j,k,l,fh2,lines:integer;
    p,p3:pointer;
    b:byte;
    scrfh:integer;
    running:integer=0;
    p4:^integer;
    scrconvert:Tsrcconvert;
    fb:pframebufferdevice;
    FramebufferProperties:TFramebufferProperties;
    kbd:array[0..15] of TKeyboarddata;
    m:array[0..128] of Tmousedata;
    pause1:boolean=false;
    i1l,i2l,fbl,topl:integer;
    i1r,i2r,fbr,topr:integer;

    buf2:array[0..1919] of smallint;
    filebuffer:TFileBuffer;
    amouse:tmouse ;
    akeyboard:tkeyboard ;
    psystem:pointer;
    dmactrl:cardinal;

// prototypes

procedure initmachine;
procedure stopmachine;
procedure scrconvert16f(screen:pointer);
procedure setataripallette(bank:integer);
procedure cls(c:integer);
procedure putpixel(x,y,color:integer);
procedure putchar(x,y:integer;ch:char;col:integer);
procedure outtextxy(x,y:integer; t:string;c:integer);
procedure blit(from,x,y,too,x2,y2,length,lines,bpl1,bpl2:integer);
procedure box(x,y,l,h,c:integer);
procedure box2(x1,y1,x2,y2,color:integer);
function gettime:int64;
procedure poke(addr:integer;b:byte);
procedure dpoke(addr:integer;w:word);
procedure lpoke(addr:integer;c:cardinal);
procedure slpoke(addr,i:integer);
function peek(addr:integer):byte;
function dpeek(addr:integer):word;
function lpeek(addr:integer):cardinal;
function slpeek(addr:integer):integer;
procedure sethidecolor(c,bank,mask:integer);
procedure putcharz(x,y:integer;ch:char;col,xz,yz:integer);
procedure outtextxyz(x,y:integer; t:string;c,xz,yz:integer);
procedure scrollup;
function sid(mode:integer):tsample32;
procedure pwmbeep;
procedure pauseaudio(mode:integer);   // instead of the real one
procedure AudioCallback(b:integer);
function getpixel(x,y:integer):integer; inline;
function getkey:integer; inline;
function readkey:integer; inline;
function mousex:integer; inline;
function mousey:integer; inline;
function mousek:integer; inline;
function mousewheel:integer; inline;
function click:boolean;
function dblclick:boolean;
procedure waitvbl;

implementation

// ---- prototypes

procedure sprite(screen:pointer); forward;

// ---- TMouse thread methods --------------------------------------------------

constructor TMouse.Create(CreateSuspended : boolean);

begin
FreeOnTerminate := True;
inherited Create(CreateSuspended);
end;

procedure TMouse.Execute;

var mb:tmousedata;
    mi:cardinal;
    x,y,w:integer;

begin
  repeat
  if mouseread(@mb,sizeof(tMousedata),mi)=0 then
    begin
    x:=dpeek(base+$6002c)+mb.offsetx;
    if x<64 then x:=64;
    if x>1855 then x:=1855;
    dpoke(base+$6002c,x);
    y:=dpeek(base+$6002e)+mb.offsety;
    if y<40 then y:=40;
    if y>1159 then y:=1159;
    dpoke(base+$6002e,y);
    poke(base+$60030,mb.Buttons);
    w:=peek(base+$60032)+mb.OffsetWheel;
    if w<127 then w:=127;
    if w>129 then w:=129;
    poke(base+$60032,w);
    end;
//  sleep(0);
  until terminated;
end;

// ---- TKeyboard thread methods --------------------------------------------------

constructor TKeyboard.Create(CreateSuspended : boolean);

begin
FreeOnTerminate := True;
inherited Create(CreateSuspended);
end;


procedure TKeyboard.Execute;

// At every vblank the thread tests if there is a report from the keyboard
// If yes, the kbd codes are poked to the system variables
// $60028 - translated code
// $60029 - modifiers
// $6002A - raw code

const rptcnt:integer=0;
      activekey:integer=0;
      m:integer=0;
      c:integer=0;
      dblclick:integer=0;
      dblcnt:integer=0;
      clickcnt:integer=0;
      click:integer=0;

var ch:TKeyboardReport;

begin
repeat
  waitvbl;
  if peek(base+$60033)=2 then begin dblclick:=0; dblcnt:=0; poke(base+$60033,0); end;
  if (dblclick=0) and (mousek=1) then begin dblclick:=1; dblcnt:=0; end;
  if (dblclick=1) and (mousek=0) then begin dblclick:=2; dblcnt:=0; end;
  if (dblclick=2) and (mousek=1) then begin dblclick:=3; dblcnt:=0; end;
  if (dblclick=3) and (mousek=0) then begin dblclick:=4; dblcnt:=0; end;

  inc(dblcnt); if dblcnt>10 then begin dblcnt:=10; dblclick:=0; end;
  if dblclick=4 then poke(base+$60033,1) else poke(base+$60033,0);

  if peek(base+$60031)=2 then begin click:=2; clickcnt:=10; end;
  if (mousek=1) and (click=0) then begin click:=1; clickcnt:=0; end;
  inc(clickcnt); if clickcnt>10 then  begin clickcnt:=10; click:=2; end;
  if (mousek=0) then click:=0;
  if click=1 then poke (base+$60031,1) else poke (base+$60031,0);

  ch:=getkeyboardreport;
  if ch[0]<>255 then m:=ch[0];
  if (ch[2]<>0) and (ch[2]<>255) then activekey:=ch[2]
  else if (ch[0]<>0) and (ch[0]<>255) then activekey:=256+ch[0];
  if (ch[2]<>0) and (activekey>0) then inc(rptcnt)
  else if (ch[0]<>0) and (activekey>0) then inc(rptcnt);
  if (ch[2]=0) and (ch[0]=0) then begin rptcnt:=0; activekey:=0; end;
  if rptcnt>26 then rptcnt:=24 ;
  if (rptcnt=1) or (rptcnt=24) then
    begin
    if (activekey<256) and ((m and $22)<>0) then c:=byte(translatescantochar(activekey,1))
    else if (activekey<256) and ((m and $42)=$40) then c:=byte(translatescantochar(activekey,2))
    else if (activekey<256) and ((m and $42)=$42) then c:=byte(translatescantochar(activekey,3))
    else if (activekey<256) and (m=0) then c:=byte(translatescantochar(activekey,0));
    poke(base+$60028,c);
    poke(base+$60029,m);
    poke(base+$6002a,activekey);
    end;
  until terminated;
end;


// ---- TFileBuffer thread methods --------------------------------------------------

constructor TFileBuffer.Create(CreateSuspended : boolean);

begin
FreeOnTerminate := True;
inherited Create(CreateSuspended);
self.m:=131072;
self.pocz:=0;
self.koniec:=0;
self.fh:=-1;
self.newfh:=-1;
self.il:=0;
self.newfilename:='';
self.empty:=true; self.full:=false;
self.needclear:=false;
end;

procedure TFileBuffer.Execute;

var i:integer;

begin

repeat
if self.needclear then begin self.koniec:=0; self.pocz:=0; self.needclear:=false; self.empty:=true; self.m:=131072; for i:=0 to 131071 do buf[i]:=0; end;
if self.fh>0 then
  begin
  if self.koniec>=self.pocz then self.m:=131072-self.koniec+self.pocz-1 else self.m:=self.pocz-self.koniec-1;
  if  (self.m>=32768) then
    begin
    self.il:=fileread(self.fh,self.tempbuf[0],32768);

    for i:=0 to il-1 do self.buf[(i+self.koniec) and $1FFFF]:=self.tempbuf[i] ;
    self.koniec:=(self.koniec+self.il) and $1FFFF;

    if self.il<>32768 then
      begin

      if self.newfh>0 then
        begin
        self.fh:=self.newfh; self.newfh:=-1;
        end;
      end;
    if self.m<3*32768 then self.empty:=false;
    end;
  end
else
  begin
  self.full:=true;
  if self.newfh>0 then begin fh:=self.newfh; self.newfh:=-1; end;
  end;
sleep(1);
until terminated;

end;

function TFileBuffer.getdata(b,ii:integer):integer;

var i,d:integer;

begin
result:=0;
if not self.empty then
  begin
  if self.koniec>=self.pocz then d:=self.koniec-self.pocz
  else d:=131072-self.pocz+self.koniec;
  if d>=ii then
    begin
    self.full:=false;
    result:=ii;
    for i:=0 to ii-1 do poke(b+i,buf[(self.pocz+i) and $1FFFF]);
    self.pocz:=(self.pocz+ii) and $1FFFF;
    if self.pocz=self.koniec then self.empty:=true;
    end
  else
    begin
    for i:=0 to ii-1 do poke(b+i,0);
    result:=0;
    end;
  end;
end;


procedure TFileBuffer.setfile(nfh:integer);

begin
self.newfh:=nfh;
end;
procedure TFileBuffer.clear;

begin
self.needclear:=true;
end;


// ---- TAudio thread methods --------------------------------------------------

constructor TAudio.Create(CreateSuspended : boolean);

begin
FreeOnTerminate := True;
inherited Create(CreateSuspended);
end;


procedure TAudio.Execute;

var a:integer;


begin
ThreadSetCPU(ThreadGetCurrent,CPU_ID_1);
//ThreadSetPriority(ThreadGetCurrent,5);
threadsleep(1);
  repeat
  repeat sleep(0); a:= lpeek($3F007600) until (a and 2) <>0 ;
  if (a and 2)<>0 then
    begin
    if lpeek($3f00761c)=dmactrl {base+$c2000000} then audiocallback(base+$5a000)
                                  else audiocallback(base+$5c000);
    lpoke($3F007600,$00000003);

    end;
  until terminated;
end;


// ---- TRetro thread methods --------------------------------------------------

// ----------------------------------------------------------------------
// constructor: create the thread for the retromachine
// ----------------------------------------------------------------------

constructor TRetro.Create(CreateSuspended : boolean);

begin
  FreeOnTerminate := True;
  inherited Create(CreateSuspended);
end;

// ----------------------------------------------------------------------
// THIS IS THE MAIN RETROMACHINE THREAD
// - convert retromachine screen to raspberry screen
// - display sprites
// ----------------------------------------------------------------------

procedure TRetro.Execute;

// --- rev 21070111

var id:integer;

begin

running:=1;
id:=getcurrentthreadid  ;
ThreadSetCPU(ThreadGetCurrent,CPU_ID_3);
 sleep(1);
//ThreadSetPriority(ThreadGetCurrent,5);
sleep(1);
repeat
  begin

  vblank1:=0;
  t:=clockgettotal;
  scrconvert16f(p2);
  tim:=clockgettotal-t;
  t:=clockgettotal;
  sprite(p2);
  ts:=clockgettotal-t;
  vblank1:=1;
  CleanDataCacheRange(integer(p2),9216000);
  lpoke(base+$60000,lpeek(base+$60000)+1);

  FramebufferDeviceSetOffset(fb,0,0,True);
  FramebufferDeviceWaitSync(fb);

  vblank1:=0;
  t:=clockgettotal;
  scrconvert16f(p2+2304000);
  tim:=clockgettotal-t;
  t:=clockgettotal;
  sprite(p2+2304000);
  ts:=clockgettotal-t;
  vblank1:=1;
  CleanDataCacheRange(integer(p2)+9216000,9216000);
  lpoke(base+$60000,lpeek(base+$60000)+1);

  FramebufferDeviceSetOffset(fb,0,1200,True);
  FramebufferDeviceWaitSync(fb);


  end;
until terminated;
running:=0;
end;

// ---- Retromachine procedures ------------------------------------------------

// ----------------------------------------------------------------------
// initmachine: start the machine
// constructor procedure: allocate ram, load data from files
// prepare all hardware things
// ----------------------------------------------------------------------

procedure initmachine;

// -- rev 20170111

var a,i:integer;
    bb:byte;
    fh2:integer;
    Entry:TPageTableEntry ;
    f: textfile;

begin

 // dmactrl:=$C4000000;
  dmactrl:=$c0000000+cardinal(GetAlignedMem(64,32));
  psystem:=getmem($1000000);
{ The ugly hack not needed now

for i:=16 to 8191 do  // make the memory executable, shareable, rw, cacheable, writeback
  begin
  Entry:=PageTableGetEntry(i*4096);
  Entry.Flags:=$3b2;
  PageTableSetEntry(Entry);
  end;
}

for i:=base to base+$FFFFF do poke(i,0);
lpoke(base+$60004,$30000000);  // vitual framebuffer address
lpoke(base+$60000,$00000000);  // frame counter

combined:=combinedwaveforms;

// init sid variables

for i:=0 to 127 do siddata[i]:=0;
for i:=0 to 15 do siddata[$30+i]:=round(1073741824*(1-20*attacktable[i]));
for i:=0 to 15 do siddata[$40+i]:=20*round(1073741824*attacktable[i]);
for i:=0 to 1023 do siddata[128+i]:=combined[i];
for i:=0 to 1023 do siddata[128+i]:=(siddata[128+i]-128) shl 16;
siddata[$0e]:=$7FFFF8;
siddata[$1e]:=$7FFFF8;
siddata[$2e]:=$7FFFF8;

reset6502;

//init the framebuffer
// TODO: if the screen is 1920x1080 init it to this resolution

fb:=FramebufferDevicegetdefault;
FramebufferDeviceRelease(fb);
Sleep(100);
FramebufferProperties.Depth:=32;
FramebufferProperties.PhysicalWidth:=1920;
FramebufferProperties.PhysicalHeight:=1200;
FramebufferProperties.VirtualWidth:=FramebufferProperties.PhysicalWidth;
FramebufferProperties.VirtualHeight:=FramebufferProperties.PhysicalHeight * 2;
FramebufferDeviceAllocate(fb,@FramebufferProperties);
sleep(100);
FramebufferDeviceGetProperties(fb,@FramebufferProperties);
p2:=Pointer(FramebufferProperties.Address);

// init Atari ST type font
for i:=0 to 2047 do poke(base+$50000+i,st4font[i]);
// init mouse cursor definition at sprite 8
for i:=0 to 1023 do lpoke(base+$59000+4*i,mysz[i]);
// sprite data pointers
for i:=0 to 7 do lpoke(base+$60080+4*i,base+$52000+4096*i);

// start frame refreshing thread
thread:=tretro.create(true);
thread.start;

// start audio, mouse and file buffer threads
pauseaudio(1);
thread3:=taudio.Create(true);
thread3.start;
filebuffer:=Tfilebuffer.create(true);
filebuffer.start;
amouse:=tmouse.create(true);
amouse.start;
akeyboard:=tkeyboard.create(true);
akeyboard.start;
end;


//  ---------------------------------------------------------------------
//   procedure stopmachine
//   destructor for the retromachine
//   stop the process, free the RAM
//   rev. 20170111
//  ---------------------------------------------------------------------

procedure stopmachine;
begin
thread.terminate;
repeat until running=0;
thread3.terminate;
end;

function gettime:int64;

begin
result:=clockgettotal;
end;


procedure waitvbl;

begin
repeat sleep(1) until vblank1=0;
repeat sleep(1) until vblank1=1;
end;

//  ---------------------------------------------------------------------
//   BASIC type poke/peek procedures
//   works @ byte addresses
//   rev. 20161124
// ----------------------------------------------------------------------

procedure poke(addr:integer;b:byte); inline;

begin
PByte(addr)^:=b;
end;

procedure dpoke(addr:integer;w:word); inline;

begin
PWord(addr and $FFFFFFFE)^:=w;
end;

procedure lpoke(addr:integer;c:cardinal); inline;

begin
PCardinal(addr and $FFFFFFFC)^:=c;
end;

procedure slpoke(addr,i:integer); inline;

begin
PInteger(addr and $FFFFFFFC)^:=i;
end;

function peek(addr:integer):byte; inline;

begin
peek:=Pbyte(addr)^;
end;

function dpeek(addr:integer):word; inline;

begin
dpeek:=PWord(addr and $FFFFFFFE)^;
end;

function lpeek(addr:integer):cardinal; inline;

begin
lpeek:=PCardinal(addr and $FFFFFFFC)^;
end;

function slpeek(addr:integer):integer;  inline;

begin
slpeek:=PInteger(addr and $FFFFFFFC)^;
end;


procedure blit(from,x,y,too,x2,y2,length,lines,bpl1,bpl2:integer);

// --- TODO - write in asm, add advanced blitting modes
// --- rev 21070111

var i,j:integer;
    b1,b2:integer;

begin
if lpeek(base+$60008)<16 then
  begin
  from:=from+x;
  too:=too+x2;
  for i:=0 to lines-1 do
    begin
    b2:=too+bpl2*(i+y2);
    b1:=from+bpl1*(i+y);
    for j:=0 to length-1 do
      poke(b2+j,peek(b1+j));
    end;
  end;
// TODO: use DMA; write for other color depths
end;


procedure scrconvert16f(screen:pointer);

// --- rev 21070111

var a,b:integer;
    e:integer;
label p1,p0,p002,p10,p11,p12,p999;

begin
a:=lpeek(base+$60004);
e:=lpeek(base+$6000c);
b:=base+$10000;

                asm
                stmfd r13!,{r0-r12}   //Push registers
                ldr r1,a
                mov r6,r1
                add r6,#1
                ldr r2,screen
                mov r12,r2
                add r12,#4
                ldr r3,b
                mov r5,r2
                                    //upper border
                add r5,#307200
                ldr r9,e
                mov r10,r9
p10:            str r9,[r2],#8
                str r10,[r12],#8
                str r9,[r2],#8
                str r10,[r12],#8
                cmp r2,r5
                blt p10
                mov r0,#1120
                                    //left border
p11:            add r5,#256
                ldr r9,e
                mov r10,r9
p0:             str r9,[r2],#8
                str r10,[r12],#8
                str r9,[r2],#8
                str r10,[r12],#8
                cmp r2,r5
                blt p0
                                    //active screen
                add r5,#7168
p1:             ldrb r7,[r1],#2
                ldrb r8,[r6],#2
                ldr r9,[r3,r7,lsl #2]
                ldr r10,[r3,r8,lsl #2]
                str r9,[r2],#8
                str r10,[r12],#8
                ldrb r7,[r1],#2
                ldrb r8,[r6],#2
                ldr r9,[r3,r7,lsl #2]
                ldr r10,[r3,r8,lsl #2]
                str r9,[r2],#8
                str r10,[r12],#8
                ldrb r7,[r1],#2
                ldrb r8,[r6],#2
                ldr r9,[r3,r7,lsl #2]
                ldr r10,[r3,r8,lsl #2]
                str r9,[r2],#8
                str r10,[r12],#8
                ldrb r7,[r1],#2
                ldrb r8,[r6],#2
                ldr r9,[r3,r7,lsl #2]
                ldr r10,[r3,r8,lsl #2]
                str r9,[r2],#8
                str r10,[r12],#8
                cmp r2,r5
                blt p1
                                  //right border
                add r5,#256
                ldr r9,e
                mov r10,r9
p002:           str r9,[r2],#8
                str r10,[r12],#8
                str r9,[r2],#8
                str r10,[r12],#8
                cmp r2,r5
                blt p002
                subs r0,#1
                bne p11
                                  //lower border
                add r5,#307200
                ldr r9,e
                mov r10,r9
p12:            str r9,[r2],#8
                str r10,[r12],#8
                str r9,[r2],#8
                str r10,[r12],#8
                cmp r2,r5
                blt p12
p999:           ldmfd r13!,{r0-r12}
                end;


end;




procedure sprite(screen:pointer);

// A sprite procedure
// --- rev 21070111

label p101,p102,p103,p104,p105,p106,p999,a7680,affff,affff0000,spritedata;
var spritebase:integer;

begin
spritebase:=base+$60040;

               asm
               stmfd r13!,{r0-r12}     //Push registers
               mov r12,#0
                                       //sprite
               ldr r0,spritebase
 p103:         ldr r1,[r0],#4
               mov r2,r1, lsl #16               // sprite 0 position
               mov r3,r1, lsr #16
               lsr r2,#14              // x pos*4
               cmp r2,#8192            // switch off the sprite if y>8192
               blt p104
               add r12,#1
               add r0,#4
               cmp r12,#8
               bge p999
               b   p103

p104:          ldr r4,a7680
               mul r3,r3,r4
               add r3,r2              // sprite pos
               ldr r4,screen
               add r3,r4              // pointer to upper left sprite pixel in r3
               ldr r4,spritedata
               add r4,r4,r12,lsl #2
               ldr r4,[r4]

               ldr r1,[r0],#4
               mov r2,r1,lsl #16
               lsr r2,#16             // xzoom
               lsr r1,#16             // yzoom
               cmp r1,#8
               movgt r1,#8            // zoom control, maybe switch it off?
               cmp r2,#8
               movgt r2,#8
               cmp r1,#1
               movle r1,#1
               cmp r2,#1
               movle r2,#1
               mov r7,r2
               mov r8,r2,lsl #7        // xzoom * 128 (128=4*32)
               mov r9,r1,lsl #5        //y zoom * 32
               mov r10,r1              //y zoom counter
               mov r6,#32

               push {r0}

p101:          ldr r5,[r4],#4
               cmp r5,#0
               bne p102
               add r3,r3,r8,lsr #5
               mov r7,r2
               subs r6,#1
               bne p101
               b p106

p102:          ldr r0,[r3]
               cmp r12,r0,lsr #28
               strge r5,[r3],#4
               addlt r3,#4
               subs r7,#1
               bne p102

p105:          mov r7,r2
               subs r6,#1
               bne p101

p106:          add r3,#7680
               sub r3,r8
               subs r10,#1
               subne r4,#128
               addeq r10,r1
               mov r6,#32
               subs r9,#1
               bne p101

               pop {r0}


               add r12,#1
               cmp r12,#8
               bne p103
               b p999

affff:         .long 0xFFFF
affff0000:     .long 0xFFFF0000
a7680:         .long 7680
spritedata:    .long base+0x60080

p999:          ldmfd r13!,{r0-r12}
               end;
end;


procedure setataripallette(bank:integer);

var fh:integer;

begin
for i:=0 to 255 do lpoke(base+$10000+4*i+1024*bank,ataripallette[i]);
end;

procedure sethidecolor(c,bank,mask:integer);

begin
lpoke((base+$10000+1024*bank+4*c),lpeek(base+$10000+1024*bank+4*c)+(mask shl 24));
end;

procedure cls(c:integer);

// --- rev 20170111

var c2, i,l:integer;
    c3: cardinal;
    screenstart:integer;

begin
screenstart:=lpeek(base+$60004);
c:=c mod 256;
l:=(lpeek(base+$60020)*lpeek(base+$60024)) div 4 ;
c3:=c+(c shl 8) + (c shl 16) + (c shl 24);
for i:=0 to l do lpoke(screenstart+4*i,c3);
end;

//  ---------------------------------------------------------------------
//   putpixel (x,y,color)
//   asm procedure - put color pixel on screen at position (x,y)
//   rev. 20170111
//  ---------------------------------------------------------------------



function readkey:integer; inline;

begin
result:=lpeek(base+$60028);
lpoke(base+$60028,0);
end;

function getkey:integer; inline;

begin
result:=lpeek(base+$60028);
end;

function mousex:integer; inline;

begin
result:=dpeek(base+$6002c)-64;
end;


function mousey:integer; inline;

begin
result:=dpeek(base+$6002e)-40;
end;


function mousek:integer; inline;

begin
result:=peek(base+$60030);
end;

function mousewheel:integer; inline;

begin
result:=peek(base+$60032);
poke(base+$60032,128);
end;

function click:boolean; inline;

begin
if peek(base+$60031)=1 then  result:=true else result:=false;
if peek(base+$60031)=1 then  poke(base+$60031,2)

end;


function dblclick:boolean; inline;

begin
if peek(base+$60033)=1 then result:=true else result:=false;
if peek(base+$60033)=1 then poke(base+$60033,2)
end;


procedure putpixel(x,y,color:integer); inline;

label p999;

var adr:integer;

begin
if (x<0) or (x>=1792) or (y<0) or (y>1120) then goto p999;
adr:=lpeek(base+$60004)+x+1792*y; poke(adr,color);
p999:
end;


//  ---------------------------------------------------------------------
//   getpixel (x,y)
//   asm procedure - get color pixel on screen at position (x,y)
//   rev. 20170111
//  ---------------------------------------------------------------------

function getpixel(x,y:integer):integer; inline;

var adr:integer;

begin
  if (x<0) or (x>=1792) or (y<0) or (y>1120) then result:=0
else
  begin
  adr:=lpeek(base+$60004)+x+1792*y; result:=peek(adr);
  end;
end;


//  ---------------------------------------------------------------------
//   box(x,y,l,h,color)
//   asm procedure - draw a filled rectangle, upper left at position (x,y)
//   length l, height h
//   rev. 20170111
//  ---------------------------------------------------------------------

procedure box(x,y,l,h,c:integer);

label p1,p999;

var adr,i,j,screenptr:integer;

begin

screenptr:=lpeek(base+$60004);

if x<0 then begin l:=l+x; x:=0; if l<1 then goto p999; end;
if x>1791 then goto p999;
if y<0 then begin h:=h+y; y:=0; if h<1 then goto p999; end;
if y>1119 then goto p999;
if x+l>1791 then l:=1792-x;
if y+h>1119 then h:=1120-y;
for j:=y to y+h-1 do begin

    asm
    stmfd r13!,{r0-r2}
    mov r0,#1792
    ldr r1,j
    mul r0,r0,r1
    ldr r1,screenptr
    add r0,r1
    ldr r1,c
    ldr r2,x
    add r0,r2
    ldr r2,l
p1: strb r1,[r0]
    add r0,#1
    subs r2,#1
    bne p1
    ldmfd r13!,{r0-r2}
    end;

  end;
p999:
end;

//  ---------------------------------------------------------------------
//   box2(x1,y1,x2,y2,color)
//   Draw a filled rectangle, upper left at position (x1,y1)
//   lower right at position (x2,y2)
//   wrapper for box procedure
//   rev. 2015.10.17
//  ---------------------------------------------------------------------

procedure box2(x1,y1,x2,y2,color:integer);

begin
if (x1<x2) and (y1<y2) then
   box(x1,y1,x2-x1+1, y2-y1+1,color);
end;


//  ---------------------------------------------------------------------
//   putchar(x,y,ch,color)
//   Draw a 8x16 character at position (x1,y1)
//   STUB, will be replaced by asm procedure
//   rev. 2015.10.14
//  ---------------------------------------------------------------------

procedure putchar(x,y:integer;ch:char;col:integer);

// --- TODO: translate to asm, use system variables
// --- rev 20170111
var i,j,start:integer;
  b:byte;

begin
start:=base+$50000+16*ord(ch);
for i:=0 to 15 do
  begin
  b:=peek(start+i);
  for j:=0 to 7 do
    begin
    if (b and (1 shl j))<>0 then
      putpixel(x+j,y+i,col);
    end;
  end;
end;

procedure putcharz(x,y:integer;ch:char;col,xz,yz:integer);

// --- TODO: translate to asm, use system variables

var i,j,k,l,start:integer;
  b:byte;

begin
start:=base+$50000+16*ord(ch);
for i:=0 to 15 do
  begin
  b:=peek(start+i);
  for j:=0 to 7 do
    begin
    if (b and (1 shl j))<>0 then
      for k:=0 to yz-1 do
        for l:=0 to xz-1 do
           putpixel(x+j*xz+l,y+i*yz+k,col);
    end;
  end;
end;

procedure outtextxy(x,y:integer; t:string;c:integer);

var i:integer;

begin
for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
end;

procedure outtextxyz(x,y:integer; t:string;c,xz,yz:integer);

var i:integer;

begin
for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
end;

procedure scrollup;

var i:integer;

begin

end;


function sid(mode:integer):tsample32;

//  SID frequency 985248 Hz

label p101,p102,p103,p104,p105,p106,p107;
label p111,p112,p113,p114,p115,p116,p117;
label p121,p122,p123,p124,p125,p126,p127;
label p201,p202,p203,p204,p205,p206,p207,p208,p209;
label p211,p212,p213,p214,p215,p216,p217,p218,p219;
label p221,p222,p223,p224,p225,p226,p227,p228,p229,p297,p298,p299;
const oldsc:integer=0;
      sc:integer=0;
      waveform1:word=0;
      f1:boolean=false;
      waveform2:word=0;
      f2:boolean=false;
      waveform3:word=0;
      f3:boolean=false;
      ff:integer=0;
      filter_resonance2i:integer=0;
      filter_freqi:integer=0;
      volume:integer=0;
      c3off:integer=0;
      fl:integer=0;

// siddata table:

// 00..0f chn 1
// 10..1f chn 2
// 20..2f chn3
// 0 - freq; 1 - gate; 2 - ring; 3 - test;
// 4 - sync; 5 - decay 6 - attack; 7 - release
// 8 - PA; 9 - noise PA; a - output value; b - ADSR state
// c - ADSR volume; d - susstain value; e - noise generator f - noise trigger

// 30..3f release table
// 40..4f attack table

// 60..70 filters and mixer:

// 60 filter1 BP, 61 filter1 LP
// 62 filter2 BP  63 filter2 LP
// 64 filter3 BP  65 filter3 LP
// 66..67 antialias left BP, LP
// 68..69 antialias right BP, LP
// 6A - inner loop counter
// 6B..6C - SID outputs
// 6D - filter outputs selector
// 6E - filter frequency
// 6F - filter resonance
// 70 - volume
// 50,51,52: waveforms
// 53,54,55: pulse width
// 56,57,58: channel on/off
// 59,5a,5b: filter select
// 5c,5d,5e: channel value for filter
// 71,72,73 orig channel value for filter
// 53..5F free
// 74..7F free


var i,sid1,sid1l,ind:integer;
    ttt:int64;
    pp1,pp2,pp3:byte;
    wv1ii,wv2ii,wv3ii:int64;
    wv1iii,wv2iii,wv3iii:integer;
    fii,fi2i,fi3i:integer;
    fri,ffi:integer;
    pa1i:integer;
    pa2i:integer;
    pa3i:integer;
    vol, fll:integer;
    sidptr:pointer;


begin
sidptr:=@siddata;
if mode=1 then  // get regs

  begin
  siddata[$56]:=peek(base+$100003);
  siddata[$57]:=peek(base+$100004);
  siddata[$58]:=peek(base+$100005);
  siddata[0]:=round(1.0263*(16*peek(base+$D400)+4096*peek(base+$d401))); //freq1
  siddata[$10]:=round(1.0263*(16*peek(base+$d407)+4096*peek(base+$d408)));
  siddata[$20]:=round(1.0263*(16*peek(base+$d40e)+4096*peek(base+$d40f)));
  siddata[1]:=peek(base+$d404) and 1;  // gate1
  siddata[2]:=peek(base+$d404) and 4;  // ring1
  siddata[3]:=peek(base+$d404) and 8;  // test1
  siddata[4]:=((peek(base+$d404) and 2) shr 1)-1; //sync1

  siddata[5]:=peek(base+$d405) and $F;   //sd1,
  siddata[6]:=peek(base+$d405) shr 4;    //sa1,
  siddata[7]:=peek(base+$d406) and $F;    //sr1
  siddata[$0d]:=(peek(base+$d406) and $F0) shl 22;      //0d,sussvol1
  siddata[$53]:=((peek(base+$d402)+256*peek(base+$d403)) and $FFF);

  siddata[$11]:=peek(base+$d40b) and 1;
  siddata[$12]:=peek(base+$d40b) and 4;
  siddata[$13]:=peek(base+$d40b) and 8;
  siddata[$14]:=((peek(base+$d40b) and 2) shr 1)-1;
  siddata[$15]:=peek(base+$d40c) and  $F;
  siddata[$16]:=peek(base+$d40c) shr 4;
  siddata[$17]:=peek(base+$d40d)and $F;
  siddata[$1d]:=(peek(base+$d40d) and $F0) shl 22;
  siddata[$54]:=((peek(base+$d409)+256*peek(base+$d40a)) and $FFF);

  siddata[$21]:=peek(base+$d412) and 1;
  siddata[$22]:=peek(base+$d412) and 4;
  siddata[$23]:=peek(base+$d412) and 8;
  siddata[$24]:=((peek(base+$d412) and 2) shr 1)-1;
  siddata[$25]:=peek(base+$d413) and  $F;
  siddata[$26]:=peek(base+$d413) shr 4;
  siddata[$27]:=peek(base+$d414)and $F;
  siddata[$2d]:=(peek(base+$d414) and $F0) shl 22;
  siddata[$55]:=((peek(base+$d410)+256*peek(base+$d411)) and $FFF);

// original filter_freq:=((ff * 5.8) + 30)/240000;
// instead: ff*6 div 262144

  ff:=(peek(base+$d416) shl 3)+(peek(base+$d415) and 7);
  siddata[$6E]:=(ff shl 1)+(ff shl 2)+32;

  siddata[$59]:=(peek(base+$d417) and 1); //filter 1
  siddata[$5a]:=(peek(base+$d417) and 2);
  siddata[$5B]:=(peek(base+$d417) and 4);
  siddata[$6D]:=(peek(base+$d418) and $70) shr 4;   // filter output switch

// original filter_resonance2:=0.5+(0.5/(1+(peek($d416) shr 4)));

  siddata[$6F]:=round(65536.0*(0.5+(0.5/(1+(peek(base+$d416) shr 4)))));

  siddata[$70]:=(peek(base+$d418) and 15); //volume

  siddata[$50]:=peek(base+$d404) shr 4;
  siddata[$51]:=peek(base+$d40b) shr 4;
  siddata[$52]:=peek(base+$d412) shr 4;     //waveforms
  end;

               asm

// adsr module

               stmfd r13!,{r0-r12}

               ldr   r7, sidptr
               mov   r0,#0
               str   r0,[r7,#0x1a8] //inner loop counter
               str   r0,[r7,#0x1ac] //output
               str   r0,[r7,#0x1b0] //output

               ldr   r6,[r7,#4]
               cmp   r6,#0
               beq   p101
               ldr   r0,[r7,#0x2C]
               mov   r1,r0
               cmp   r1,#0
               moveq r0,#1
               cmp   r1,#4
               moveq r0,#1
               b     p102

p101:          mov   r0,#4
p102:          str   r0,[r7,#0x2C]

               ldr   r0,[r7,#0x2C]
               cmp   r0,#3
               ldreq   r1,[r7,#0x34]
               streq   r1,[r7,#0x30]
               beq     p103

p107:          cmp   r0,#1
               bne   p104
               ldr   r1,[r7,#0x30] //adsrvol1
               ldr   r2,[r7,#0x18] //sa1
               add   r2,#0x40
               ldr   r6,[r7,r2,lsl #2]
               add   r1,r6
               str   r1,[r7,#0x30]
               cmp   r1,#1073741824
               blt   p103
               mov   r0,#2
               str   r0,[r7,#0x2c]
               b     p103

p104:          cmp   r0,#2
               bne   p105
               ldr   r1,[r7,#0x30]
               ldr   r2,[r7,#0x14] //sd1
               add   r2,#0x30
               ldr   r3,[r7,r2,lsl #2]
               umull r4,r5,r1,r3
               lsr   r4,#30
               orr   r4,r4,r5,lsl #2
               str   r4,[r7,#0x30]
               ldr   r1,[r7,#0x34]
               cmp   r4,r1
               movlt r0,#3
               strlt r0,[r7,#0x2c]
               b     p103

p105:          cmp   r0,#4
               bne   p106
               ldr   r1,[r7,#0x30]
               ldr   r2,[r7,#0x1c] //sr1
               add   r2,#0x30
               ldr   r3,[r7,r2,lsl #2]
               umull r4,r5,r1,r3
               lsr   r4,#30
               orr   r4,r4,r5,lsl #2
               cmp   r4,#0x10000
               movlt r4,#0
               str   r4,[r7,#0x30]
               strlt r4,[r7,#0x2c]
               b     p103

p106:          mov   r0,#0
               str   r0,[r7,#0x30]

               //chn2

p103:          ldr   r6,[r7,#0x44]
               cmp   r6,#0
               beq   p111
               ldr   r0,[r7,#0x6C]
               mov   r1,r0
               cmp   r1,#0
               moveq r0,#1
               cmp   r1,#4
               moveq r0,#1
               b     p112

p111:          mov   r0,#4
p112:          str   r0,[r7,#0x6C]

               ldr   r0,[r7,#0x6C]
               cmp   r0,#3
               ldreq   r1,[r7,#0x74]
               streq   r1,[r7,#0x70]
               beq     p113

p117:          cmp   r0,#1
               bne   p114
               ldr   r1,[r7,#0x70] //adsrvol1
               ldr   r2,[r7,#0x58] //sa1
               add   r2,#0x40
               ldr   r6,[r7,r2,lsl #2]
               add   r1,r6
               str   r1,[r7,#0x70]
               cmp   r1,#1073741824
               blt   p113
               mov   r0,#2
               str   r0,[r7,#0x6c]
               b     p113

p114:          cmp   r0,#2
               bne   p115
               ldr   r1,[r7,#0x70]
               ldr   r2,[r7,#0x54] //sd1
               add   r2,#0x30
               ldr   r3,[r7,r2,lsl #2]
               umull r4,r5,r1,r3
               lsr   r4,#30
               orr   r4,r4,r5,lsl #2
               str   r4,[r7,#0x70]
               ldr   r1,[r7,#0x74]
               cmp   r4,r1
               movlt r0,#3
               strlt r0,[r7,#0x6c]
               b     p113

p115:          cmp   r0,#4
               bne   p116
               ldr   r1,[r7,#0x70]
               ldr   r2,[r7,#0x5c] //sr1
               add   r2,#0x30
               ldr   r3,[r7,r2,lsl #2]
               umull r4,r5,r1,r3
               lsr   r4,#30
               orr   r4,r4,r5,lsl #2
               cmp   r4,#0x10000
               movlt r4,#0
               str   r4,[r7,#0x70]
               strlt r4,[r7,#0x6c]
               b     p113

p116:          mov   r0,#0
               str   r0,[r7,#0x70]

               //chn 3

p113:          ldr   r6,[r7,#0x84]
               cmp   r6,#0
               beq   p121
               ldr   r0,[r7,#0xaC]
               mov   r1,r0
               cmp   r1,#0
               moveq r0,#1
               cmp   r1,#4
               moveq r0,#1
               b     p122

p121:          mov   r0,#4
p122:          str   r0,[r7,#0xaC]

               ldr   r0,[r7,#0xaC]
               cmp   r0,#3
               ldreq   r1,[r7,#0xb4]
               streq   r1,[r7,#0xb0]
               beq     p123

p127:          cmp   r0,#1
               bne   p124
               ldr   r1,[r7,#0xb0] //adsrvol1
               ldr   r2,[r7,#0x98] //sa1
               add   r2,#0x40
               ldr   r6,[r7,r2,lsl #2]
               add   r1,r6
               str   r1,[r7,#0xb0]
               cmp   r1,#1073741824
               blt   p123
               mov   r0,#2
               str   r0,[r7,#0xac]
               b     p123

p124:          cmp   r0,#2
               bne   p125
               ldr   r1,[r7,#0xb0]
               ldr   r2,[r7,#0x94] //sd1
               add   r2,#0x30
               ldr   r3,[r7,r2,lsl #2]
               umull r4,r5,r1,r3
               lsr   r4,#30
               orr   r4,r4,r5,lsl #2
               str   r4,[r7,#0xb0]
               ldr   r1,[r7,#0xb4]
               cmp   r4,r1
               movlt r0,#3
               strlt r0,[r7,#0xac]
               b     p123

p125:          cmp   r0,#4
               bne   p126
               ldr   r1,[r7,#0xb0]
               ldr   r2,[r7,#0x9c] //sr1
               add   r2,#0x30
               ldr   r3,[r7,r2,lsl #2]
               umull r4,r5,r1,r3
               lsr   r4,#30
               orr   r4,r4,r5,lsl #2
               cmp   r4,#0x10000
               movlt r4,#0
               str   r4,[r7,#0xb0]
               strlt r4,[r7,#0xbc]
               b     p123

p126:          mov   r0,#0
               str   r0,[r7,#0xb0]

p123:          mov   r0,#10
               str   r0,[r7,#0x1fc]




 p297:        ldr   r4,sidptr

               // phase accum 1

             ldr   r0,[r4,#0x20]
               ldr   r3,[r4,#0x00]
               adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
               ldrcs r1,[r4,#0x60]
               ldrcs r2,[r4,#0x50]
               andcs r1,r2
               strcs r1,[r4,#0x60]
               ldr   r1,[r4,#0x0c]
               cmp   r1,#0
               movne r0,#0
               str r0,[r4,#0x20]

               ldr r2,[r4,#0x24]
               adds r2,r2,r3,lsl #9//12
               movcs r1,#1
               movcc r1,#0
               str   r2,[r4,#0x24]
               str   r1,[r4,#0x3c]

                                        // waveform 1

               ldr r1,[r4,#0x140]
               cmp r1,#2
               bne p205
               lsr r0,#8
               sub r0,#8388608
               str r0,[r4,#0x28]
               b p204

p205:          cmp r1,#1
               bne p201
               mov r5,r0                // triangle
               lsls r5,#1
               mvncs r5,r5
               ldr r6,[r4,#0x08]
               cmp r6,#0
               ldrne r6,[r4,#0xa0]
               lsls r6,#1
               negcs r5,r5
               lsr r5,#8
               sub r5,#8388608
               str r5,[r4,#0x28]
               b p204

p201:          cmp r1,#4
               bne p203
               mov r6,r0,lsr #20        //square r6
               ldr r7,[r4,#0x14c]
               cmp r6,r7
               movge r6,#0xFFFFFF
               movlt r6,#0
               sub r6,#8388608
               str r6,[r4,#0x28]
               b p204

p203:          cmp r1,#3
               bne p206
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0x200
               ldr r8,[r4,r6]
               str r8,[r4,#0x28]
               b p204

p206:          cmp r1,#5
               bne p207
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0x600
               ldr r8,[r4,r6]
               str r8,[r4,#0x28]
               b p204

p207:          cmp r1,#6
               bne p208
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0xa00
               ldr r8,[r4,r6]
               str r8,[r4,#0x28]
               b p204

p208:          cmp r1,#7
               bne p209
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0xe00
               ldr r8,[r4,r6]
               str r8,[r4,#0x28]
               b p204

p209:          cmp r1,#8                // noise
               bne p204
               ldr r7,[r4,#0x3C]
               cmp r7,#1
               bne p204

               mov   r7,#0
               mov   r2,#0
               mov   r3,#0
               ldr   r0,[r4,#0x38]
               tst   r0,#4194304
               orrne r7,#128
               orrne r2,#1
               tst   r0,#1048576
               orrne r7,#64
               tst   r0,#65536
               orrne r7,#32
               tst   r0,#8192
               orrne r7,#16
               tst   r0,#2048
               orrne r7,#8
               tst   r0,#128
               orrne r7,#4
               tst   r0,#16
               orrne r7,#2
               tst   r0,#4
               orrne r7,#1
               tst   r0,#131072
               orrne r3,#1
               eor   r2,r3
               orr   r2,r2,r0,lsl #1
               str   r2,[r4,#0x38]
               sub   r7,#128
               lsl   r7,#16
               str   r7,[r4,#0x28]

                  // phase accum 2

p204:          ldr   r0,[r4,#0x60]
               ldr   r3,[r4,#0x40]
               adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
               ldrcs r1,[r4,#0xa0]
               ldrcs r2,[r4,#0x90]
               andcs r1,r2
               strcs r1,[r4,#0xa0]
               ldr   r1,[r4,#0x4c]
               cmp   r1,#0
               movne r0,#0
               str r0,[r4,#0x60]

               ldr r2, [r4,#0x64]
               adds r2,r2,r3,lsl #9//12
               movcs r1,#1
               movcc r1,#0
               str  r2,[r4,#0x64]
               str  r1,[r4,#0x7c]


// waveform 2

               ldr r1,[r4,#0x144]
               cmp r1,#2
               bne p215
               lsr r0,#8
               sub r0,#8388608
               str r0,[r4,#0x68]
               b p214

p215:          cmp r1,#1
               bne p211
               mov r5,r0             // triangle
               lsls r5,#1
               mvncs r5,r5
               lsr r5,#8
               sub r5,#8388608
               ldr r6,[r4,#0x48]
               cmp r6,#0
               ldrne r6,[r4,#0x20]
               lsls r6,#1
               negcs r5,r5
               str r5,[r4,#0x68]
               b p214

p211:          cmp r1,#4
               bne p213
               mov r6,r0,lsr #20     //square r6
               ldr r7,[r4,#0x150]
               cmp r6,r7
               movge r6,#0xFFFFFF
               movlt r6,#0
               sub r6,#8388608
               str r6,[r4,#0x68]
               b p214

p213:          cmp r1,#3
               bne p216
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0x200
               ldr r8,[r4,r6]
               str r8,[r4,#0x68]
               b p214

p216:          cmp r1,#5
               bne p217
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0x600
               ldr r8,[r4,r6]
               str r8,[r4,#0x68]
               b p214

p217:          cmp r1,#6
               bne p218
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0xa00
               ldr r8,[r4,r6]
               str r8,[r4,#0x68]
               b p214

p218:          cmp r1,#7
               bne p219
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0xe00
               ldr r8,[r4,r6]
               str r8,[r4,#0x68]
               b p214

p219:          cmp r1,#8    // noise
               bne p214
p212:          ldr r7,[r4,#0x7C]
               cmp r7,#1
               bne p214

               mov   r7,#0
               mov   r2,#0
               mov   r3,#0
               ldr   r0,[r4,#0x78]
               tst   r0,#4194304
               orrne r7,#128
               orrne r2,#1
               tst   r0,#1048576
               orrne r7,#64
               tst   r0,#65536
               orrne r7,#32
               tst   r0,#8192
               orrne r7,#16
               tst   r0,#2048
               orrne r7,#8
               tst   r0,#128
               orrne r7,#4
               tst   r0,#16
               orrne r7,#2
               tst   r0,#4
               orrne r7,#1
               tst   r0,#131072
               orrne r3,#1
               eor   r2,r3
               orr   r2,r2,r0,lsl #1
               str   r2,[r4,#0x78]
               lsl   r7,#16
               sub   r7,#8388608
               str   r7,[r4,#0x68]


             // phase accum 3

p214:          ldr   r0,[r4,#0xa0]
               ldr   r3,[r4,#0x80]
               adds  r0,r0,r3,lsl #5//8    // PA @ 24 higher bits
               ldrcs r1,[r4,#0x20]
               ldrcs r2,[r4,#0x10]
               andcs r1,r2
               strcs r1,[r4,#0x20]
               ldr   r1,[r4,#0x8c]
               cmp   r1,#0
               movne r0,#0
               str r0,[r4,#0xa0]

               ldr r2,[r4,#0xa4]
               adds r2,r2,r3,lsl #9//12
               movcs r1,#1
               movcc r1,#0
               str   r2,[r4,#0xa4]
               str   r1,[r4,#0xbc]


// waveform 3

               ldr r1,[r4,#0x148]
               cmp r1,#2
               bne p225
               lsr r0,#8
               sub r0,#8388608
               str r0,[r4,#0xa8]
               b p224

p225:          cmp r1,#1
               bne p221
               mov r5,r0             // triangle
               lsls r5,#1
               mvncs r5,r5
               ldr r6,[r4,#0x88]
               cmp r6,#0
               ldrne r6,[r4,#0x60]
               lsls r6,#1
               negcs r5,r5
               lsr r5,#8
               sub r5,#8388608
               str r5,[r4,#0xa8]
               b p224

p221:          cmp r1,#4
               bne p223
               mov r6,r0,lsr #20     //square r6
               ldr r7,[r4,#0x154]
               cmp r6,r7
               movge r6,#0xFFFFFF
               movlt r6,#0
               sub r6,#8388608
               str r6,[r4,#0xa8]
               b p224

p223:          cmp r1,#3
               bne p226
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0x200
               ldr r8,[r4,r6]
               str r8,[r4,#0xa8]
               b p224

p226:          cmp r1,#5
               bne p227
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0x600
               ldr r8,[r4,r6]
               str r8,[r4,#0xa8]
               b p224

p227:          cmp r1,#6
               bne p228
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0xa00
               ldr r8,[r4,r6]
               str r8,[r4,#0xa8]
               b p224

p228:          cmp r1,#7
               bne p229
               mov r6,r0,lsr #22
               and r6,#0x000003FC
               add r6,#0xe00
               ldr r8,[r4,r6]
               str r8,[r4,#0xa8]
               b p224

p229:          cmp r1,#8    // noise
               bne p224
               ldr r7,[r4,#0xbC]
               cmp r7,#1
               bne p224

               mov   r7,#0
               mov   r2,#0
               mov   r3,#0
               ldr   r0,[r4,#0xb8]
               tst   r0,#4194304
               orrne r7,#128
               orrne r2,#1
               tst   r0,#1048576
               orrne r7,#64
               tst   r0,#65536
               orrne r7,#32
               tst   r0,#8192
               orrne r7,#16
               tst   r0,#2048
               orrne r7,#8
               tst   r0,#128
               orrne r7,#4
               tst   r0,#16
               orrne r7,#2
               tst   r0,#4
               orrne r7,#1
               tst   r0,#131072
               orrne r3,#1
               eor   r2,r3
               orr   r2,r2,r0,lsl #1
               str   r2,[r4,#0xb8]
               sub   r7,#128
               lsl   r7,#16
p222:          str   r7,[r4,#0xa8]

               // ADSR multiplier and channel switches

p224:          ldr r0,[r4,#0x30]
               ldr r1,[r4,#0x28]
               smull r2,r3,r0,r1
               ldr r0,[r4,#0x158]
               cmp r0,#0
               moveq r3,#0
               asr r3,#1
               ldr r0,[r4,#0x164]
               cmp r0,#0
               moveq r2,#0
               movne r2,r3
               movne r3,#0
               str r3,[r4,#0x1c4]
               str r2,[r4,#0x170]


               ldr r0,[r4,#0x70]
               ldr r1,[r4,#0x68]
               smull r2,r3,r0,r1
               ldr r0,[r4,#0x15c]
               cmp r0,#0
               moveq r3,#0
               asr r3,#1
               ldr r0,[r4,#0x168]
               cmp r0,#0
               moveq r2,#0
               movne r2,r3
               movne r3,#0
               str r3,[r4,#0x1c8]
               str r2,[r4,#0x174]

               ldr r0,[r4,#0xb0]
               ldr r1,[r4,#0xa8]
               smull r2,r3,r0,r1
               ldr r0,[r4,#0x160]
               cmp r0,#0
               moveq r3,#0
               asr r3,#1
               ldr r0,[r4,#0x16c]
               cmp r0,#0
               moveq r2,#0
               movne r2,r3
               movne r3,#0
               str r3,[r4,#0x1cc]
               str r2,[r4,#0x178]

// filters

               mov r7,r4
               ldr r3,[r7,#0x1bc] //fri
               ldr r1,[r7,#0x1b8] //ffi
 lsl r1,#1
               ldr r6,[r7,#0x1b4]  // bandpass switch
               mov r9, #0  // init output L
               mov r10,#0  // init output R

               // filter chn 0

               ldr r2,[r7,#0x180]
               smull r5,r12,r2,r3
               lsr r5,#16
               orr r5,r5,r12,lsl #16
               ldr r0,[r7,#0x170]
               sub r0,r5
               ldr r4,[r7,#0x184]
               sub r0,r4
               smull r5,r12,r0,r1
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r2,r5
               str r2,[r7,#0x180]
               smull r5,r12,r1,r2
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r4,r5
               str r4,[r7,#0x184]

               // select filter output

               ldr r5,[r7,#0x1c4]
               tst r6,#0x2
               addne r5,r2
               tst r6,#0x1
               addne r5,r4
               tst r6,#0x4
               addne r5,r0

               // mix channel 0

               mov r9,r5
               asr r5,#1
               mov r10,r5

               //filter chn 1

               ldr r2,[r7,#0x188]
               smull r5,r12,r2,r3
               lsr r5,#16
               orr r5,r5,r12,lsl #16
               ldr r0,[r7,#0x174]
               sub r0,r5
               ldr r4,[r7,#0x18c]
               sub r0,r4
               smull r5,r12,r0,r1
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r2,r5
               str r2,[r7,#0x188]
               smull r5,r12,r1,r2
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r4,r5
               str r4,[r7,#0x18c]

               // select filter output chn 1

               ldr r5,[r7,#0x1c8]
               tst r6,#0x2
               addne r5,r2
               tst r6,#0x1
               addne r5,r4
               tst r6,#0x4
               addne r5,r0

               // mix channel 1

               asr r5,#1
               add r9,r5
               add r10,r5
               asr r5,#1
               add r9,r5
               add r10,r5

               //filter chn2

               ldr r2,[r7,#0x190]
               smull r5,r12,r2,r3
               lsr r5,#16
               orr r5,r5,r12,lsl #16
               ldr r0,[r7,#0x178]
               sub r0,r5
               ldr r4,[r7,#0x194]
               sub r0,r4
               smull r5,r12,r0,r1
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r2,r5
               str r2,[r7,#0x190]
               smull r5,r12,r1,r2
               lsr r5,#18
               orr r5,r5, r12,lsl #14
               add r4,r5
               str r4,[r7,#0x194]

               // select filter output chn 2

               ldr r5,[r7,#0x1cc]
               tst r6,#0x2
               addne r5,r2
               tst r6,#0x1
               addne r5,r4
               tst r6,#0x4
               addne r5,r0

               // mix channel 2

               add r10,r5
               asr r5,#1
               add r9,r5

               // volume

               ldr r5,[r7,#0x1c0]
               mul r4,r5,r9
               mov r0,r4
               mul r4,r5,r10
               mov r6,r4

               //  antialias r

               mov r1,#0x6000
               ldr r2,[r7,#0x198]
               sub r0,r2
               ldr r4,[r7,#0x19c]
               sub r0,r4
               smull r5,r12,r0,r1
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r2,r5
               str r2,[r7,#0x198]
               smull r5,r12,r1,r2
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r4,r5
               str r4,[r7,#0x19c]

               ldr r0,[r7,#0x1a8]
               ldr r8,[r7,#0x1b0]
      //         cmp r0,#5//20
               add r8,r4
               str r8,[r7,#0x1b0]

               //  antialias l

               mov r0,r6
               ldr r2,[r7,#0x1a0]
               sub r0,r2
               ldr r4,[r7,#0x1a4]
               sub r0,r4
               smull r5,r12,r0,r1
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r2,r5
               str r2,[r7,#0x1a0]
               smull r5,r12,r1,r2
               lsr r5,#18
               orr r5,r5,r12,lsl #14
               add r4,r5
               str r4,[r7,#0x1a4]

               ldr r0,[r7,#0x1a8]
               ldr r8,[r7,#0x1ac]
        //       cmps r0,#10//20
               add r8,r4       //lt
               str r8,[r7,#0x1ac]
               add r0,#1
               str r0,[r7,#0x1a8]

              // mov r1,#0x7000000
               ldr r0,[r7,#0x1fc]
               sub r0,#1
               str r0,[r7,#0x1fc]
             //  ldr r0,[r1]
               cmp r0,#0
               bne p297

                     // for 12 bit pwm shift and unsign
ldr r8,[r7,#0x1b0]
mov r9,r8
asr r9,#4
add r8,r9
asr r8,#14

//add r8,#2592
str r8,[r7,#0x1b0]

ldr r8,[r7,#0x1ac]

mov r9,r8
asr r9,#4
add r8,r9

asr r8,#14  //#18

//add r8,#2592
str r8,[r7,#0x1ac]


               ldmfd r13!,{r0-r12}

               end;



// i:=i-1;
// if i<>0 then goto p297;
//      asm
//      mov r1,#0x60000000
//      ldr r0,[r1]
//      sub r0,#1
//      str r0,[r1]
//      cmp r0,#0
//      bne p297

//p299:
//       end;

//sidclock+=2000;//1000;
//until sidclock>=20000;//20526;
//sidtime:=clockgettotal-ttt;
//sidclock-=20000;//20526;
sid[0]:= (siddata[$6b]*3) div 4; //  2048+ (siddata[$6c] div (16*16384));//16384;//32768;
sid[1]:= (siddata[$6c]*3) div 4;//2048+ (siddata[$6b] div (16*16384));//16384;//32768;

oldsc:=sc;
sc:=(siddata[$6c]+siddata[$6B]);
scope[scj]:=sc;
inc(scj);
if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;

//sid[0]:=sid1;
//sid[1]:=sid1l;
end;

procedure noiseshaper2(bufaddr:integer);

var i,j:integer;

// -- rev 20170111

begin
if bufaddr=base+$5a000 then
  begin
  for i:=0 to 767 do
    begin
    for j:=0 to 20 do
      begin

      i1l+=slpeek(base+$5a000+8*i);
      i2l+=i1l;
      topl:=i2l div 256;
      fbl:=topl * 256;
      i1l-=fbl;
      i2l-=fbl;
      slpoke (base+$70000+168*i+8*j, 130+topl);

      i1r+=slpeek(base+$5a000+8*i+4);
      i2r+=i1r;
      topr:=i2r div 256;
      fbr:=topr * 256;
      i1r-=fbr;
      i2r-=fbr;
      slpoke (base+$70000+168*i+8*j+4, 130+topr);

      end;
    end;
    CleanDataCacheRange(base+$70000,$10000);
  end
else
  begin
  for i:=0 to 767 do
    begin
    for j:=0 to 20 do
      begin
      i1l+=slpeek(base+$5c000+8*i);
       i2l+=i1l;
       topl:=i2l div 256;
       fbl:=topl * 256;
       i1l-=fbl;
       i2l-=fbl;
       slpoke (base+$a0000+168*i+8*j, 130+topl);

       i1r+=slpeek(base+$5c000+8*i+4);
       i2r+=i1r;
       topr:=i2r div 256;
       fbr:=topr * 256;
       i1r-=fbr;
       i2r-=fbr;
       slpoke (base+$a0000+168*i+8*j+4, 130+topr);
      end;
    end;
    CleanDataCacheRange(base+$a0000,$10000);
  end;
end;


procedure noiseshaper(bufaddr:integer);

var i,j:integer;

// -- rev 20170111

begin
if bufaddr=base+$5a000 then
  begin
  for i:=0 to 119 do
    begin
    for j:=0 to 19 do
      begin
      i1l+=slpeek(base+$5a000+8*i);
      i2l+=i1l;
      topl:=i2l div 256;
      fbl:=topl * 256;
      i1l-=fbl;
      i2l-=fbl;
      slpoke (base+$70000+160*i+8*j, 130+topl);

      i1r+=slpeek(base+$5a000+8*i+4);
      i2r+=i1r;
      topr:=i2r div 256;
      fbr:=topr * 256;
      i1r-=fbr;
      i2r-=fbr;
      slpoke (base+$70000+160*i+8*j+4, 130+topr);
      end;
    end;
  CleanDataCacheRange(base+$70000,$10000);
  end
else
  begin
  for i:=0 to 119 do
    begin
    for j:=0 to 19 do
      begin
      i1l+=slpeek(base+$5c000+8*i);
       i2l+=i1l;
       topl:=i2l div 256;
       fbl:=topl * 256;
       i1l-=fbl;
       i2l-=fbl;
       slpoke (base+$a0000+160*i+8*j, 130+topl);

       i1r+=slpeek(base+$5c000+8*i+4);
       i2r+=i1r;
       topr:=i2r div 256;
       fbr:=topr * 256;
       i1r-=fbr;
       i2r-=fbr;
       slpoke (base+$a0000+160*i+8*j+4, 130+topr);
      end;
    end;
    CleanDataCacheRange(base+$a0000,$10000);
  end;
end;



procedure AudioCallback(b:integer);

label p999;

var audio2:pcardinal;
    s:tsample32;
    ttt:int64;
    k,i,il:integer;
    buf:array[0..25] of byte;

const aa:integer=0;
const bb:integer=0;


begin
audio2:=pcardinal(b);
ttt:=clockgettotal;
if pause1=true then goto p999;
k:=0;

if filetype=3 then
  begin
  if sfh>-1 then
    begin
    for i:=0 to 767 do audio2[i]:=buf2[i] ;
    for i:=0 to 767 do scope[i]:=buf2[i]+buf2[i+1];
    timer1+=siddelay;
    songtime+=siddelay;
    noiseshaper2(b);
    //    il:=fileread(sfh,buf2[0],1536);
    il:=filebuffer.getdata(integer(@buf2[0]),1536);
    if il<>1536 then
      begin
      fileclose(sfh);
      sfh:=-1;
      songtime:=0;
      pause1:=true;
      timer1:=-1;
      for i:=0 to 1535 do buf2[i]:=0;
      pauseaudio(1);
      noiseshaper2(b);
      repeat until peek(base+$60028)=0;
      poke(base+$60028,208);
      repeat until peek(base+$60028)=0;
      poke(base+$60028,141);
      end;
    end;
  end
else

  begin
  aa+=2500;
  if (aa>=siddelay) then
    begin
    aa-=siddelay;
    if sfh>-1 then
      begin
      if filetype=0 then
        begin
        il:=fileread(sfh,buf,25);
        if skip=1 then  il:=fileread(sfh,buf,25);
        if il=25 then
          begin
          for i:=0 to 24 do poke(base+$d400+i,buf[i]);
          for i:=0 to 15 do times6502[i]:=times6502[i+1];
          t6:=clockgettotal;
          times6502[15]:=0;
          t6:=0; for i:=0 to 15 do t6+=times6502[i];
          time6502:=t6;
          timer1+=siddelay;
          songtime+=siddelay;
          end
        else
          begin
          fileclose(sfh);
          sfh:=-1;
          pause1:=true;
          songtime:=0;
          timer1:=-1;
          for i:=0 to 6 do lpoke(base+$d400+4*i,0);
          end;
        end
      else if filetype=1 then
        begin
        for i:=0 to 15 do times6502[i]:=times6502[i+1];
        t6:=clockgettotal;
        jsr6502(256,play);
        times6502[15]:=clockgettotal-t6;
        t6:=0; for i:=0 to 15 do t6+=times6502[i];
        time6502:=t6-15;
      //  CleanDataCacheRange($d400,32);
        timer1+=siddelay;
        songtime+=siddelay;
        end

      end;
    end;

//  ttt:=clockgettotal;
  if filetype<>3 then
    begin
    s:=sid(1);
    audio2[0]:=s[0];
    audio2[1]:=s[1];
    for i:=1 to 119 do
      begin
      s:=sid(0);
      audio2[2*i]:=s[0];
      audio2[2*i+1]:=s[1];
      end;
    noiseshaper(b);
    end
  else
    begin

    end;
  end;
//noiseshaper(b);
inc(sidcount);
//sidtime+=gettime-t;
p999:
sidtime:=clockgettotal-ttt;

end;




procedure pwmbeep;

var i:integer;
    ctrlblock:array[0..7] of cardinal;

begin

ctrlblock[0]:=$00050140; //transfer info
ctrlblock[1]:=base+$c0070000;
ctrlblock[2]:=$7E20C018;
ctrlblock[3]:=21*960; //7680;
ctrlblock[4]:=$0;
ctrlblock[5]:=dmactrl+$20; // base+$c2000020;
ctrlblock[6]:=$0;
ctrlblock[7]:=$0;
for i:=0 to 7 do lpoke(dmactrl-$C0000000+4*i,ctrlblock[i]);
ctrlblock[5]:=dmactrl; //base+$c2000000;
ctrlblock[1]:=base+$c00a0000;
for i:=0 to 7 do lpoke(dmactrl-$C0000000+$20+4*i,ctrlblock[i]);
CleanDataCacheRange(dmactrl-$C0000000,256); //(base+$2000000,$10000);
sleep(1);


//set gpio
i:=pinteger($3F200010)^ and  %11111111111111000111111111111000;
lpoke($3F200010, i or       %00000000000000100000000000000100); // gpio 40/45 as alt0
lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
lpoke($3F1010a4,$5a002000); // div 2
lpoke($3F20C010,260);      // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
lpoke($3F20C020,260);      // pwm 2 range
lpoke($3F20C000,$0000a1e1); // pwm contr0l - enable, clear fifo, use fifo
lpoke($3F20C008,$80000307); // pwm dma enable
lpoke($3F007ff0,pinteger($3F007FF0)^ or %1000000); // dma 06 enable
lpoke($3F007604,dmactrl); //base+$c2000000);
lpoke($3F007600,3);



end;

procedure pauseaudio(mode:integer);

begin
if mode=1 then
  begin
  pause1:=true;
  sleep(5);
  for i:=0 to 767 do buf2[i]:=0;
  for i:=base+$5a000 to base+$5dfff do if (i mod 4) = 0 then lpoke(i,0);
  CleanDataCacheRange(base+$5a000,16384);
  for i:=base+$70000 to base+$cffff do if (i mod 4) = 0 then lpoke(i,128);
  CleanDataCacheRange(base+$70000,$60000);
  sleep(5);
  end
else
  begin
  pause1:=false;
  end;
end;





end.

