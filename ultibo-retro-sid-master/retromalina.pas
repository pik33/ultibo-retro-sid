// *****************************************************************************
// The retromachine unit for Raspberry Pi/Ultibo
// Ultibo v. 0.18 - 2017.01.22
// Piotr Kardasz
// pik33@o2.pl
// www.eksperymenty.edu.pl
// GPL 2.0 or higher
// uses combinedwaveforms.bin by Johannes Ahlebrand - MIT licensed
//******************************************************************************
//
// --- ALPHA, don't complain !!!
//
// Retromachine memory map @bytes FOR ULTIBO
//
// 0000_0000  -  heap_start (about 0190_0000) - Ultibo area
// Heap start -  2EFF_FFFF retromachine program area, about 720 MB
//
// BASE=$2F00_0000 - this can change or become dynamic
//
// 2F00_0000  -  2F00_FFFF - 6502 area
//    2F00_D400  -  2F00_D418 SID
//
// 2F01_0000  -  2F05_FFFF - system data area
//    2F01_0000  -  2F04_FFFF pallette banks; 65536 entries
//    2F05_0000  -  2F05_1FFF font definition; 256 char @8x16 px
//    2F05_2000  -  2F05_9FFF static sprite defs 8x4k
//    2F05_A000  -  2F05_BFFF 8kB area for 16-bit audio buffer
//    2F05_C000  -  2F05_C03F audio DMA ctrl block
//    2F05_C040  -  2F05_FFFF reserved
//
// 2F06_0000  -  2F06_FFFF virtual hardware regs area
//    2F06_0000 - frame counter
//    2F06_0004 - display start
//    2F06_0008 - current graphics mode   ----TODO
//      2F06_0009 - bytes per pixel
//    2F06_000C - border color
//    2F06_0010 - pallette bank           ----TODO
//    2F06_0014 - horizontal pallette selector: bit 31 on, 30..20 add to $60010, 11:0 pixel num. ----TODO
//    2F06_0018 - display list start addr  ----TODO
//                DL entry: 00xx_YYLLL_MM - display LLL lines in mode MM
//                            xx: 00 - do nothing
//                                01 - raster interrupt
//                                10 - set pallette bank YY
//                                11 - set horizontal scroll at YY
//                          10xx_AAAAAAA - set display address to xxAAAAAAA
//                          11xx_AAAAAAA - goto address xxAAAAAAA
//    2F06_001C - horizontal scroll right register ----TODO
//    2F06_0020 - x res
//    2F06_0024 - y res
//    2F06_0028 - KBD. 28 - ASCII 29 modifiers, 2A raw code 2B reserved
//    2F06_002C - mouse. 6002c,d x 6002e,f y
//    2F06_0030 - mouse keys, 2F06_0032 - mouse wheel; 127 up 129 down
//    2F06_0034 - current dl position ----TODO
//    2F06_0040 - 2F06_007C sprite control long 0 31..16 y pos  15..0 x pos
//                                         long 1 30..16 y zoom 15..0 x zoom
//    2F06_0080 - 206009C dynamic sprite data pointer
//    2F06_00A0 - text cursor position
//    2F06_00A4 - text color
//    2F06_00A8 - background color
//    2F06_00AC - text size and pitch
//    2F06_00B0 - 2F06_00C0 - reserved
//    2F06_00C0 - 2F06_00FF - audio DMA ctrl blocks, 2x32 bytes
//
//    2F06_0100 - 2F06_01?? - blitter
//    2F06_0100 - 2F06_011F - blitter DMA ctrl block
//    2F06_0120 - 2F06_0127 - blitter fill color area
//    2F06_0100 - 2F06_FFFF - reserved
//
//    2F07_0000 - 2F08_FFFF - 2x64k long audio buffer for noise shaper
//    2F0D_0000  -  2FFF_FFFF - retromachine system area
//    3000_0000  -  30FF_FFFF - virtual framebuffer area
//    3100_0000  -  3AFF_FFFF - Ultibo system memory area
//    3B00_0000  -  3EFF_FFFF - GPU memory
//    3F00_0000  -  3FFF_FFFF - RPi real hardware registers


// TODO planned retromachine graphic modes:
// 00..15 Propeller retromachine compatible
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

uses sysutils,classes,unit6502,Platform,Framebuffer,retrokeyboard,retromouse,
     threads,GlobalConst,ultibo,retro, simpleaudio, mp3, HeapManager;

const base=          $2F000000;     // retromachine system area base
      nocache=       $C0000000;     // cache off address addition

const _pallette=        $10000;
      _systemfont=      $50000;
      _sprite0def=      $52000;
      _sprite1def=      $53000;
      _sprite2def=      $54000;
      _sprite3def=      $55000;
      _sprite4def=      $56000;
      _sprite5def=      $57000;
      _sprite6def=      $58000;
      _sprite7def=      $59000;
      _framecnt=        $60000;
      _displaystart=    $60004;
      _graphicmode=     $60008;
      _bpp=             $60009;
      _bordercolor=     $6000C;
      _pallettebank=    $60010;
      _palletteselector=$60014;
      _dlstart=         $60018;
      _hscroll=         $6001C;
      _xres=            $60020;
      _yres=            $60024;
      _keybd=           $60028;
      _mousexy=         $6002C;
      _mousekey=        $60030;
      _dlpos=           $60034;
      _reserved01=      $60038;
      _reserved02=      $6003C;
      _spritebase=      $60040;
      _sprite0xy=       $60040;
      _sprite0zoom=     $60044;
      _sprite1xy=       $60048;
      _sprite1zoom=     $6004C;
      _sprite2xy=       $60050;
      _sprite2zoom=     $60054;
      _sprite3xy=       $60058;
      _sprite3zoom=     $6005C;
      _sprite4xy=       $60060;
      _sprite4zoom=     $60064;
      _sprite5xy=       $60068;
      _sprite5zoom=     $6006C;
      _sprite6xy=       $60070;
      _sprite6zoom=     $60074;
      _sprite7xy=       $60078;
      _sprite7zoom=     $6007C;
      _sprite0ptr=      $60080;
      _sprite1ptr=      $60084;
      _sprite2ptr=      $60088;
      _sprite3ptr=      $6008C;
      _sprite4ptr=      $60090;
      _sprite5ptr=      $60094;
      _sprite6ptr=      $60098;
      _sprite7ptr=      $6009C;
      _textcursor=      $600A0;
      _textcolor=       $600A4;
      _bkcolor=         $600A8;
      _textsize=        $600AC;
      _audiodma=        $600C0;





type

     // Retromachine main thread

     TRetro = class(TThread)
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
     outbuf: array[0..8191] of byte;
     //outbuf: array[0..4095] of smallint;// absolute outbuf;
     pocz:integer;
     koniec:integer;
     il,fh,newfh:integer;
     newfilename:string;
     needclear:boolean;
     seekamount:int64;
     eof:boolean;
     mp3:integer;
     qq:integer;
     maintenance:boolean;
     reading:boolean;
     protected
       procedure Execute; override;
     public
      m:integer;
      empty,full:boolean;
      Constructor Create(CreateSuspended : boolean);
      function getdata(b,ii:integer):integer;
      procedure setfile(nfh:integer);
      procedure clear;
      procedure seek(amount:int64);
             procedure setmp3(mp3b:integer);
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


type wavehead=packed record
    riff:integer;
    size:cardinal;
    wave:integer;
    fmt:integer;
    fmtl:integer;
    pcm:smallint;
    channels:smallint;
    srate:integer;
    brate:integer;
    bytesps:smallint;
    bps:smallint;
    data:integer;
    datasize:cardinal;
  end;

     TSample=array[0..1] of smallint;
     TSample32=array[0..1] of integer;


var fh,filetype:integer;                // this needs cleaning...
    sfh:integer;                        // SID file handler
    play:word;
    p2:^integer;
    tim,t,t2,t3,ts,t6,time6502:int64;
    vblank1:byte;
    scope:array[0..1023] of integer;
    db:boolean=false;
    debug:integer;
    sidtime:int64=0;
    timer1:int64=-1;
    siddelay:int64=20000;
    songtime,songfreq:int64;
    skip:integer;
    scj:integer=0;
    thread:TRetro;

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
    fb:pframebufferdevice;
    FramebufferProperties:TFramebufferProperties;
    kbd:array[0..15] of TKeyboarddata;
    m:array[0..128] of Tmousedata;
    pause1:boolean=false;
    i1l,i2l,fbl,topl:integer;
    i1r,i2r,fbr,topr:integer;

    buf2:array[0..1919] of smallint;
    buf2f:array[0..959] of single absolute buf2;
    filebuffer:TFileBuffer;
    amouse:tmouse ;
    akeyboard:tkeyboard ;
    psystem,psystem2:pointer;

    vol123:integer=0;
    textcursoron:boolean=false;
    head:wavehead;
    nextsong:integer=0;

    oldsc:integer=0;
    sc:integer=0;

    channel1on:byte=1;
    channel2on:byte=1;
    channel3on:byte=1;

    mp3time:int64;


// system variables

    systempallette:array[0..255] of TPallette absolute base+_pallette;
    systemfont:TFont   absolute base+_systemfont;
    sprite0def:TSprite absolute base+_sprite0def;
    sprite1def:TSprite absolute base+_sprite1def;
    sprite2def:TSprite absolute base+_sprite2def;
    sprite3def:TSprite absolute base+_sprite3def;
    sprite4def:TSprite absolute base+_sprite4def;
    sprite5def:TSprite absolute base+_sprite5def;
    sprite6def:TSprite absolute base+_sprite6def;
    sprite7def:TSprite absolute base+_sprite7def;

    framecnt:        cardinal absolute base+_framecnt;
    displaystart:    cardinal absolute base+_displaystart;
    graphicmode:     cardinal absolute base+_graphicmode;
    bpp:             byte     absolute base+_bpp;
    bordercolor:     cardinal absolute base+_bordercolor;
    pallettebank:    cardinal absolute base+_pallettebank;
    palletteselector:cardinal absolute base+_palletteselector;
    dlstart:         cardinal absolute base+_dlstart;
    hscroll:         cardinal absolute base+_hscroll;
    xres:            cardinal absolute base+_xres;
    yres:            cardinal absolute base+_yres;
    key_charcode:    byte     absolute base+_keybd;
    key_modifiers:   byte     absolute base+_keybd+1;
    key_scancode:    byte     absolute base+_keybd+2;
    mousexy:         cardinal absolute base+_mousexy;
    mousex:          word     absolute base+_mousexy;
    mousey:          word     absolute base+_mousexy+2;
    mousek:          byte     absolute base+_mousekey;
    mouseclick:      byte     absolute base+_mousekey+1;
    mousewheel:      byte     absolute base+_mousekey+2;
    mousedblclick:   byte     absolute base+_mousekey+3;
    dlpos:           cardinal absolute base+_dlpos;
    sprite0xy:       cardinal absolute base+_sprite0xy;
    sprite0x:        word     absolute base+_sprite0xy;
    sprite0y:        word     absolute base+_sprite0xy+2;
    sprite0zoom:     cardinal absolute base+_sprite0zoom;
    sprite0zoomx:    word     absolute base+_sprite0zoom;
    sprite0zoomy:    word     absolute base+_sprite0zoom+2;
    sprite1xy:       cardinal absolute base+_sprite0xy;
    sprite1x:        word     absolute base+_sprite1xy;
    sprite1y:        word     absolute base+_sprite1xy+2;
    sprite1zoom:     cardinal absolute base+_sprite1zoom;
    sprite1zoomx:    word     absolute base+_sprite1zoom;
    sprite1zoomy:    word     absolute base+_sprite1zoom+2;
    sprite2xy:       cardinal absolute base+_sprite2xy;
    sprite2x:        word     absolute base+_sprite2xy;
    sprite2y:        word     absolute base+_sprite2xy+2;
    sprite2zoom:     cardinal absolute base+_sprite2zoom;
    sprite2zoomx:    word     absolute base+_sprite2zoom;
    sprite2zoomy:    word     absolute base+_sprite2zoom+2;
    sprite3xy:       cardinal absolute base+_sprite3xy;
    sprite3x:        word     absolute base+_sprite3xy;
    sprite3y:        word     absolute base+_sprite3xy+2;
    sprite3zoom:     cardinal absolute base+_sprite3zoom;
    sprite3zoomx:    word     absolute base+_sprite3zoom;
    sprite3zoomy:    word     absolute base+_sprite3zoom+2;
    sprite4xy:       cardinal absolute base+_sprite4xy;
    sprite4x:        word     absolute base+_sprite4xy;
    sprite4y:        word     absolute base+_sprite4xy+2;
    sprite4zoom:     cardinal absolute base+_sprite4zoom;
    sprite4zoomx:    word     absolute base+_sprite4zoom;
    sprite4zoomy:    word     absolute base+_sprite4zoom+2;
    sprite5xy:       cardinal absolute base+_sprite5xy;
    sprite5x:        word     absolute base+_sprite5xy;
    sprite5y:        word     absolute base+_sprite5xy+2;
    sprite5zoom:     cardinal absolute base+_sprite5zoom;
    sprite5zoomx:    word     absolute base+_sprite5zoom;
    sprite5zoomy:    word     absolute base+_sprite5zoom+2;
    sprite6xy:       cardinal absolute base+_sprite6xy;
    sprite6x:        word     absolute base+_sprite6xy;
    sprite6y:        word     absolute base+_sprite6xy+2;
    sprite6zoom:     cardinal absolute base+_sprite6zoom;
    sprite6zoomx:    word     absolute base+_sprite6zoom;
    sprite6zoomy:    word     absolute base+_sprite6zoom+2;
    sprite7xy:       cardinal absolute base+_sprite7xy;
    sprite7x:        word     absolute base+_sprite7xy;
    sprite7y:        word     absolute base+_sprite7xy+2;
    sprite7zoom:     cardinal absolute base+_sprite7zoom;
    sprite7zoomx:    word     absolute base+_sprite7zoom;
    sprite7zoomy:    word     absolute base+_sprite7zoom+2;

    sprite0ptr:      cardinal absolute base+_sprite0ptr;
    sprite1ptr:      cardinal absolute base+_sprite1ptr;
    sprite2ptr:      cardinal absolute base+_sprite2ptr;
    sprite3ptr:      cardinal absolute base+_sprite3ptr;
    sprite4ptr:      cardinal absolute base+_sprite4ptr;
    sprite5ptr:      cardinal absolute base+_sprite5ptr;
    sprite6ptr:      cardinal absolute base+_sprite6ptr;
    sprite7ptr:      cardinal absolute base+_sprite7ptr;

    spritepointers:  array[0..7] of cardinal absolute base+_sprite0ptr;

    textcursorx:     word     absolute _textcursor;
    textcursory:     word     absolute _textcursor+2;
    textcolor:       cardinal absolute _textcolor;
    bkcolor:         cardinal absolute _bkcolor;
    textsizex:       byte     absolute _textsize;
    textsizey:       byte     absolute _textsize+1;
    textpitch:       byte     absolute _textsize+2;
    audiodma1:       array[0..7] of cardinal absolute _audiodma;
    audiodma2:       array[0..7] of cardinal absolute _audiodma+32;

    desired, obtained:TAudioSpec;
    error:integer;
    mousereports:array[0..7] of TMouseReport;

   mp3bufidx:integer=0;
   outbufidx:integer=0;
   framesize:integer;


// prototypes

procedure initmachine;
procedure stopmachine;

procedure setpallette(pallette:TPallette;bank:integer);
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
procedure sethidecolor(c,bank,mask:cardinal);
procedure fcircle(x0,y0,r,c:integer);
procedure circle(x0,y0,r,c:integer);
procedure line(x,y,dx,dy,c:integer);
procedure line2(x1,y1,x2,y2,c:integer);
procedure putcharz(x,y:integer;ch:char;col,xz,yz:integer);
procedure outtextxyz(x,y:integer; t:string;c,xz,yz:integer);
procedure outtextxys(x,y:integer; t:string;c,s:integer);
procedure outtextxyzs(x,y:integer; t:string;c,xz,yz,s:integer);
procedure scrollup;
function sid(mode:integer):tsample;
procedure AudioCallback(userdata: Pointer; stream: PUInt8; len:Integer );
function getpixel(x,y:integer):integer; inline;
function getkey:integer; inline;
function readkey:integer; inline;
function click:boolean;
function dblclick:boolean;
procedure waitvbl;
procedure removeramlimits(addr:integer);
function readwheel: shortint; inline;
procedure unhidecolor(c,bank:cardinal);
//procedure dma_box(x,y,l,h,c:cardinal);
//procedure box3(x,y,l,h,c:integer);


implementation

procedure scrconvert(screen:pointer); forward;
procedure sprite(screen:pointer); forward;

// ---- TMouse thread methods --------------------------------------------------

constructor TMouse.Create(CreateSuspended : boolean);

begin
FreeOnTerminate := True;
inherited Create(CreateSuspended);
end;

procedure TMouse.Execute;

label p101;

var mb:tmousedata;
    i,j:integer;
    mi:cardinal;
    x,y,w:integer;
    m:TMouseReport;
    mousexy,buttons,offsetx,offsety,wheel:integer;
    const mousecount:integer=0;

begin
  repeat
    repeat m:=getmousereport; threadsleep(1); until m[0]<>255;
    mousecount+=1;
    j:=0; for i:=0 to 7 do if m[i]<>0 then j+=1;
    if (j>1) or (mousecount<16) then
      begin
      for i:=0 to 7 do mouserecord[i]:=(m[i]);
      for i:=0 to 6 do mousereports[i]:=mousereports[i+1];
      mousereports[7]:=m;
      end;
    mousetype:=0;
    j:=0;
    for i:=0 to 6 do if mousereports[i,7]<>m[7]  then j+=1;
    for i:=0 to 6 do if mousereports[i,6]<>m[6]  then j+=1;
    for i:=0 to 6 do if mousereports[i,5]<>m[5]  then j+=1;
    for i:=0 to 6 do if mousereports[i,4]<>m[4]  then j+=1;
    if j=0 then begin mousetype:=0; goto p101; end;

    j:=0;
    for i:=0 to 7 do begin j+=mousereports[i,1]; j+=mousereports[i,7]; end;
    for i:=0 to 7 do if (mousereports[i,3]<>$FF) and (mousereports[i,3]<>0) then j+=1;
    if j=0 then begin mousetype:=3; goto p101; end;

    for i:=0 to 6 do if mousereports[i,7]<>m[7] then mousetype:=m[0]; // 1 or 2

p101:

    if mousetype=0 then  // most standard mouse type
       begin
       buttons:=m[0];
       offsetx:=shortint(m[1]);
       offsety:=shortint(m[2]);
       wheel:=shortint(m[3]);
       end
    else if mousetype=2 then  // the strange Logitech wireless 12-bit mouse
       begin
       buttons:=m[1];
       mousexy:=m[2]+256*(m[3] and 15);
       if mousexy>=2048 then mousexy:=mousexy-4096;
       if m[6]=0 then offsetx:=mousexy else offsetx:=0;
       mousexy:=m[4]*16 + m[3] div 16;
       if mousexy>=2048 then mousexy:=mousexy-4096;
       if m[6]=0 then offsety:=mousexy else offsety:=0;
       if ((m[7]=134) or (m[7]=198)) and (m[6]=0) and (m[1]=0) and (m[2]=0) and (m[3]=0) and (m[4]=0) then wheel:=shortint(m[5]) else wheel:=0;
       end
     else if mousetype=1 then
       begin
       buttons:=m[1];
       mousexy:=m[2]+256*(m[3] and 15);
       if mousexy>=2048 then mousexy:=mousexy-4096;
       offsetx:=mousexy;
       mousexy:=m[4]*16 + m[3] div 16;
       if mousexy>=2048 then mousexy:=mousexy-4096;
       offsety:=mousexy;
       wheel:=shortint(m[5]);
       end
    else if mousetype=3 then  // 16-bit mouse
       begin
       buttons:=shortint(m[0]);
       offsetx:=shortint(m[2]);
       offsety:=shortint(m[4]);
       wheel:=shortint(m[6]);
       end;
    x:=mousex+offsetx;
    if x<0 then x:=0;
    if x>1791 then x:=1791;
    mousex:=x;
    y:=mousey+offsety;
    if y<0 then y:=0;
    if y>1119 then y:=1119;
    mousey:=y;
    mousek:=Buttons and 255;
    if wheel<-1 then wheel:=-1;
    if wheel>1 then wheel:=1;
    w:=mousewheel+Wheel;
    if w<127 then w:=127;
    if w>129 then w:=129;
    mousewheel:=w;//poke(base+$60032,w);
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
    i:integer;

begin
repeat
  waitvbl;
  if textcursoron then
    begin
    i:=(framecnt div 15) mod 2 ; // todo - replace constant with sys var
    sprite6y:=68+32*textcursory;
    sprite6x:=64+16*textcursorx;
    // cursor blink
    if i=0 then sprite6x+=$1000 else sprite6x:=sprite6x and $0FFF;
    end;

  if mousedblclick=2 then begin dblclick:=0; dblcnt:=0; mousedblclick:=0; end;
  if (dblclick=0) and (mousek=1) then begin dblclick:=1; dblcnt:=0; end;
  if (dblclick=1) and (mousek=0) then begin dblclick:=2; dblcnt:=0; end;
  if (dblclick=2) and (mousek=1) then begin dblclick:=3; dblcnt:=0; end;
  if (dblclick=3) and (mousek=0) then begin dblclick:=4; dblcnt:=0; end;

  inc(dblcnt); if dblcnt>10 then begin dblcnt:=10; dblclick:=0; end;
  if dblclick=4 then mousedblclick:=1 else mousedblclick:=0;

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
    key_charcode:=c;
    key_modifiers:=m;
    key_scancode:=activekey mod 256;
    end;
  until terminated;
end;


// ---- TFileBuffer thread methods --------------------------------------------------

constructor TFileBuffer.Create(CreateSuspended : boolean);

begin
FreeOnTerminate := True;
inherited Create(CreateSuspended);
m:=131072;
pocz:=0;
koniec:=0;
fh:=-1;
newfh:=-1;
il:=0;
newfilename:='';
empty:=true; full:=false;
needclear:=false;
seekamount:=0;
eof:=true;
mp3:=0;
qq:=32768;
end;

procedure TFileBuffer.Execute;

var i,il2,k:integer;
    ml:int64;
    const cnt:integer=0;
 var   outbuf2: PSmallint;

//    info:mp3_info_t;
//    framesize:integer;

begin
outbuf2:=@outbuf;
ThreadSetCPU(ThreadGetCurrent,CPU_ID_2);
sleep(1);
repeat
  if needclear or (seekamount<>0) or (newfh>0) then
  // now do not do maintenence tasks while other thread is reading the buffer or the conflit may happen
    begin
    repeat until not reading;
    maintenance:=true;
    if eof and (newfh>0) then
      begin
      fh:=newfh;
      newfh:=-1;
      eof:=false;
      qq:=32768;
      end;
    if seekamount<>0 then needclear:=true;
    if needclear then
      begin
      koniec:=0;
      pocz:=0;
      needclear:=false;
      empty:=true;
      m:=131071;
      for i:=0 to 131071 do buf[i]:=0;
      qq:=32768;
      for i:=0 to 32767 do tempbuf[i]:=0;
      end;
    if (seekamount<>0) and (fh>0) then
      begin
      fileseek(fh,seekamount,fsFromCurrent);
      seekamount:=0;
      end;
    maintenance:=false;
    end;
    // end of maintenance processes

  if (fh>0) and not eof then
    begin
    if koniec>=pocz then m:=131072-koniec+pocz-1 else m:=pocz-koniec-1;
    if m>=32768 then // more than 32k free place, do a read
      begin
      if mp3=0 then  // no decoding needed, simply read 32k from file
        begin
        il:=fileread(fh,tempbuf[0],qq);
        for i:=0 to il-1 do buf[(i+koniec) and $1FFFF]:=tempbuf[i] ;
        koniec:=(koniec+il) and $1FFFF;
        m:=m-il;
        if m<3*32678 then empty:=false;
        if (il<qq) and empty then eof:=true;
        end
      else // compressed file: read and decompress
        begin
        cnt+=1;
        il:=fileread(fh,tempbuf[32768-qq],qq);
        if (il<qq) and empty then eof:=true;
        if il=qq then
          begin

          ml:=gettime;


           mad_stream_buffer(@test_mad_stream,@tempbuf, 32768);
           mad_frame_decode(@test_mad_frame, @test_mad_stream);
           mad_synth_frame(@test_mad_synth,@test_mad_frame);

          if test_mad_synth.pcm.channels=2 then for i:=0 to 1151 do begin outbuf2[2*i]:= test_mad_synth.pcm.samples[0,i] div 8704;   outbuf2[2*i+1]:= test_mad_synth.pcm.samples[1,i] div 8704;  end;
          if test_mad_synth.pcm.channels=1 then for i:=0 to 1151 do begin outbuf2[2*i]:= test_mad_synth.pcm.samples[0,i] div 8704;   outbuf2[2*i+1]:= test_mad_synth.pcm.samples[0,i] div 8704;  end;
           il2:= (PtrUInt(test_mad_stream.next_frame)-ptruint(@tempbuf));

      // box(100,100,100,100,0); outtextxyz(100,100,inttostr(PtrUInt(test_mad_stream.next_frame)-ptruint(@tempbuf)),15,2,2);     outtextxyz(100,132,inttostr(tempbuf[il2]),15,2,2);

          if head.srate=44100 then head.brate:=8*((130+il2*10) div 261)
          else head.brate:=8*((120+il2*10) div 240);
          head.srate:=44100;//info.sample_rate;
          head.channels:=2;//info.channels;
          for i:=il2 to 32767 do tempbuf[i-il2]:=tempbuf[i];
          for i:=0 to 4*1152-1 do buf[(i+koniec) and $1FFFF]:=outbuf[i]; // audio bytes
          qq:=il2;
          koniec:=(koniec+4*1152) and $1FFFF;
          mp3time:=gettime-ml;
          if koniec>=pocz then m:=131072-koniec+pocz-1 else m:=pocz-koniec-1;
          if m<131072-32768 then empty:=false;
          end;
        end;
      end
    else
      begin
      full:=true;
      end;
    end
  else
    begin
//    if newfh>0 then
//      begin
//      fh:=newfh;
//      newfh:=-1;
//      eof:=false;
//      end;
    end;
  sleep(1);
until terminated;

end;

procedure TFileBuffer.setmp3(mp3b:integer);

begin
mp3:=mp3b;
qq:=32768;
needclear:=true;
end;

procedure TFileBuffer.seek(amount:int64);

begin
seekamount:=amount;
end;

function TFileBuffer.getdata(b,ii:integer):integer;

var i,d:integer;

begin
repeat until not maintenance;
reading:=true;
result:=0;
if not empty then
  begin
  if koniec>=pocz then d:=koniec-pocz
  else d:=131072-pocz+koniec;
  if d>=ii then
    begin
    full:=false;
    result:=ii;
    for i:=0 to ii-1 do poke(b+i,buf[(pocz+i) and $1FFFF]);
    pocz:=(pocz+ii) and $1FFFF;
    if pocz=koniec then empty:=true;
    end
  else
    begin
    for i:=0 to ii-1 do poke(b+i,0);
    result:=0;
    empty:=true;
    end;
  end;
reading:=false;
end;


procedure TFileBuffer.setfile(nfh:integer);

begin
self.newfh:=nfh;
//eof:=false;
end;
procedure TFileBuffer.clear;

begin
self.needclear:=true;
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
ThreadSetCPU(ThreadGetCurrent,CPU_ID_3);
sleep(1);

running:=1;
repeat
  begin

  vblank1:=0;
  t:=gettime;
//  InvalidateDataCacheRange(displaystart,$200000);
  scrconvert(p2);
  tim:=gettime-t;
  t:=gettime;
  sprite(p2);
  ts:=gettime-t;
  vblank1:=1;
  CleanDataCacheRange(integer(p2),9216000);
  framecnt+=1;

  FramebufferDeviceSetOffset(fb,0,0,True);
  FramebufferDeviceWaitSync(fb);

  vblank1:=0;
  t:=gettime;
 // InvalidateDataCacheRange(displaystart,$200000);
  scrconvert(p2+2304000);
  tim:=gettime-t;
  t:=gettime;
  sprite(p2+2304000);
  ts:=gettime-t;
  vblank1:=1;
  CleanDataCacheRange(integer(p2)+9216000,9216000);
  framecnt+=1;

  FramebufferDeviceSetOffset(fb,0,1200,True);
  FramebufferDeviceWaitSync(fb);


  end;
until terminated;
running:=0;
end;


// ---- Retromachine procedures ------------------------------------------------

// ----------------------------------------------------------------------
// initmachine: start the machine
// ----------------------------------------------------------------------

procedure initmachine;

// -- rev 20170111

var a,i,j,k:integer;
    l,bb:byte;
    fh2:integer;
    Entry:TPageTableEntry ;
    f: textfile;

begin

//init the framebuffer
//TODO: if the screen is 1920x1080 init it to this resolution

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
for i:=0 to (1920*2400)-1 do lpoke(PtrUint(p2)+4*i,ataripallette[146]);

for i:=base to base+$FFFFF do poke(i,0); // clean all system area
displaystart:=$30000000;                 // vitual framebuffer address
framecnt:=0;                             // frame counter

// init pallette, font and mouse cursor

systemfont:=st4font;
sprite7def:=mysz;
setpallette(ataripallette,0);
cls(146);

// init sprite data pointers
for i:=0 to 7 do spritepointers[i]:=base+_sprite0def+4096*i;

// start frame refreshing thread

thread:=tretro.create(true);
thread.start;

// init sid variables

for i:=0 to 127 do siddata[i]:=0;
for i:=0 to 15 do siddata[$30+i]:=round(1073741824*(1-2*attacktable[i]));       //20*
for i:=0 to 15 do siddata[$40+i]:=2*round(1073741824*attacktable[i]);
for i:=0 to 1023 do siddata[128+i]:=combined[i];
for i:=0 to 1023 do siddata[128+i]:=(siddata[128+i]-128) shl 16;
siddata[$0e]:=$7FFFF8;
siddata[$1e]:=$7FFFF8;
siddata[$2e]:=$7FFFF8;

reset6502;

mad_stream_init(@test_mad_stream);
mad_synth_init(@test_mad_synth);
mad_frame_init(@test_mad_frame);

// start audio, mouse, kbd and file buffer threads

desired.callback:=@AudioCallback;
desired.channels:=2;
desired.format:=AUDIO_S16;
desired.freq:=44100;
desired.samples:=384;
error:=openaudio(@desired,@obtained);

filebuffer:=Tfilebuffer.create(true);
filebuffer.start;

amouse:=tmouse.create(true);
amouse.start;
mousex:=960;
mousey:=600;
mousewheel:=128;

akeyboard:=tkeyboard.create(true);
akeyboard.start;
end;


//  ---------------------------------------------------------------------
//   stopmachine: stop the retromachine
//   rev. 20170111
//  ---------------------------------------------------------------------

procedure stopmachine;

begin
thread.terminate;
repeat until running=0;
//thread3.terminate;
filebuffer.terminate;
amouse.terminate;
akeyboard.terminate;
end;

// -----  Screen convert procedures

procedure scrconvert(screen:pointer);

// --- rev 21070111

var a,b:integer;
    e:integer;
label p1,p0,p002,p10,p11,p12,p999;

begin
a:=displaystart;
e:=bordercolor;
b:=base+_pallette;

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
spritebase:=base+_spritebase;

               asm
               stmfd r13!,{r0-r12}     //Push registers
               mov r12,#0
                                       //sprite
               ldr r0,spritebase
 p103:         ldr r1,[r0],#4
               mov r2,r1, lsl #16      // sprite 0 position
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

// ------  Helper procedures

procedure removeramlimits(addr:integer);

var Entry:TPageTableEntry;

begin
Entry:=PageTableGetEntry(addr);
Entry.Flags:=$3b2;            //executable, shareable, rw, cacheable, writeback
PageTableSetEntry(Entry);
end;


function gettime:int64; inline;

begin
//result:=clockgettotal;
result:=PLongWord($3F003004)^;
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

// ------- Keyboard and mouse procedures

function readkey:integer; inline;

begin
result:=lpeek(base+$60028);
lpoke(base+$60028,0);
end;

function getkey:integer; inline;

begin
result:=lpeek(base+$60028);
end;

function click:boolean; inline;

begin
if mouseclick=1 then  result:=true else result:=false;
if mouseclick=1 then  mouseclick:=2;
end;


function dblclick:boolean; inline;

begin
if mousedblclick=1 then result:=true else result:=false;
if mousedblclick=1 then mousedblclick:=2;
end;

function readwheel: shortint; inline;

begin
result:=mousewheel-128;
mousewheel:=128
end;


// ----- Graphics ------------

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


procedure setpallette(pallette:TPallette; bank:integer);

var fh:integer;

begin
systempallette[bank]:=pallette;
end;

procedure SetColorEx(c,bank,color:cardinal);

begin
systempallette[bank,c]:=color;
end;

procedure SetColor(c,color:cardinal);

var bank:integer;

begin
bank:=c div 256; c:= c mod 256;
systempallette[bank,c]:=color;
end;

procedure sethidecolor(c,bank,mask:cardinal);

begin
systempallette[bank,c]+=(mask shl 24);
end;

procedure unhidecolor(c,bank:cardinal);

begin
systempallette[bank,c]:=systempallette[bank,c] and $FFFFFF;
end;

procedure cls(c:integer);

// --- rev 20170111

var c2, i,l:integer;
    c3: cardinal;
    screenstart:integer;

begin
c:=c mod 256;
l:=(xres*yres) div 4 ;
c3:=c+(c shl 8) + (c shl 16) + (c shl 24);
for i:=0 to l do lpoke(displaystart+4*i,c3);
end;

//  ---------------------------------------------------------------------
//   putpixel (x,y,color)
//   put color pixel on screen at position (x,y)
//   rev. 20170111
//  ---------------------------------------------------------------------

procedure putpixel(x,y,color:integer); inline;

label p999;

var adr:integer;

begin
if (x<0) or (x>=xres) or (y<0) or (y>yres) then goto p999;
adr:=displaystart+x+xres*y;
poke(adr,color);
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
  if (x<0) or (x>=xres) or (y<0) or (y>yres) then result:=0
else
  begin
  adr:=displaystart+x+xres*y;
  result:=peek(adr);
  end;
end;


//  ---------------------------------------------------------------------
//   box(x,y,l,h,color)
//   asm procedure - draw a filled rectangle, upper left at position (x,y)
//   length l, height h
//   rev. 20170111
//  ---------------------------------------------------------------------
         (*
procedure box(x,y,l,h,c:integer);

label p1,p999;

var adr,i,j,screenptr,xr:integer;

begin

screenptr:=displaystart;
xr:=xres;
if x<0 then begin l:=l+x; x:=0; if l<1 then goto p999; end;
if x>=xres then goto p999;
if y<0 then begin h:=h+y; y:=0; if h<1 then goto p999; end;
if y>=yres then goto p999;
if x+l>=xres then l:=xres-x;
if y+h>=yres then h:=yres-y;
for j:=y to y+h-1 do begin

    asm
    stmfd r13!,{r0-r2}
    ldr r0,xr
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
end;       *)

procedure box(x,y,l,h,c:integer);

label p101,p102,p999;

var screenptr:cardinal;

begin

screenptr:=displaystart;
if x<0 then begin l:=l+x; x:=0; if l<1 then goto p999; end;
if x>=xres then goto p999;
if y<0 then begin h:=h+y; y:=0; if h<1 then goto p999; end;
if y>=yres then goto p999;
if x+l>=xres then l:=xres-x;
if y+h>=yres then h:=yres-y;


             asm
             push {r0-r6}
             ldr r2,y
             mov r3,#1792
             ldr r1,x
             mul r3,r3,r2
             ldr r4,l
             add r3,r1
             ldr r0,screenptr
             add r0,r3
             ldrb r3,c
             ldr r6,h

p102:        mov r5,r4
p101:        strb r3,[r0],#1  // inner loop
             subs r5,#1
             bne p101
             add r0,#1792
             sub r0,r4
             subs r6,#1
             bne p102

             pop {r0-r6}
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
if x1>x2 then begin i:=x2; x2:=x1; x1:=i; end;
if y1>y2 then begin i:=y2; y2:=y1; y1:=i; end;
if (x1<>x2) and (y1<>y2) then  box(x1,y1,x2-x1+1, y2-y1+1,color);
end;


procedure line2(x1,y1,x2,y2,c:integer);

var d,dx,dy,ai,bi,xi,yi,x,y:integer;

begin
x:=x1;
y:=y1;
if (x1<x2) then
  begin
  xi:=1;
  dx:=x2-x1;
  end
else
  begin
   xi:=-1;
   dx:=x1-x2;
  end;
if (y1<y2) then
  begin
  yi:=1;
  dy:=y2-y1;
  end
else
  begin
  yi:=-1;
  dy:=y1-y2;
  end;

putpixel(x,y,c);
if (dx>dy) then
  begin
  ai:=(dy-dx)*2;
  bi:=dy*2;
  d:= bi-dx;
  while (x<>x2) do
    begin
    if (d>=0) then
      begin
      x+=xi;
      y+=yi;
      d+=ai;
      end
    else
      begin
      d+=bi;
      x+=xi;
      end;
    putpixel(x,y,c);
    end;
  end
else
  begin
  ai:=(dx-dy)*2;
  bi:=dx*2;
  d:=bi-dy;
  while (y<>y2) do
    begin
    if (d>=0) then
      begin
      x+=xi;
      y+=yi;
      d+=ai;
      end
    else
      begin
      d+=bi;
      y+=yi;
      end;
    putpixel(x, y,c);
    end;
  end;
end;

procedure line(x,y,dx,dy,c:integer);

begin
line2(x,y,x+dx,y+dy,c);
end;

procedure circle(x0,y0,r,c:integer);

var d,x,y,da,db:integer;

begin
d:=5-4*r;
x:=0;
y:=r;
da:=(-2*r+5)*4;
db:=3*4;
while (x<=y) do
  begin
  putpixel(x0-x,y0-y,c);
  putpixel(x0-x,y0+y,c);
  putpixel(x0+x,y0-y,c);
  putpixel(x0+x,y0+y,c);
  putpixel(x0-y,y0-x,c);
  putpixel(x0-y,y0+x,c);
  putpixel(x0+y,y0-x,c);
  putpixel(x0+y,y0+x,c);
  if d>0 then
    begin
    d+=da;
    y-=1;
    x+=1;
    da+=4*4;
    db+=2*4;
    end
  else
    begin
    d+=db;
    x+=1;
    da+=2*4;
    db+=2*4;
    end;
  end;
end;


procedure fcircle(x0,y0,r,c:integer);

var d,x,y,da,db:integer;

begin
d:=5-4*r;
x:=0;
y:=r;
da:=(-2*r+5)*4;
db:=3*4;
while (x<=y) do
  begin
  line2(x0-x,y0-y,x0+x,y0-y,c);
  line2(x0-x,y0+y,x0+x,y0+y,c);
  line2(x0-y,y0-x,x0+y,y0-x,c);
  line2(x0-y,y0+x,x0+y,y0+x,c);
  if d>0 then
    begin
    d+=da;
    y-=1;
    x+=1;
    da+=4*4;
    db+=2*4;
    end
  else
    begin
    d+=db;
    x+=1;
    da+=2*4;
    db+=2*4;
    end;
  end;
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
for i:=0 to 15 do
  begin
  b:=systemfont[ord(ch),i];
  for j:=0 to 7 do
    begin
    if (b and (1 shl j))<>0 then
      putpixel(x+j,y+i,col);
    end;
  end;
end;

procedure putcharz(x,y:integer;ch:char;col,xz,yz:integer);

// --- TODO: translate to asm, use system variables

var i,j,k,l:integer;
  b:byte;

begin
for i:=0 to 15 do
  begin
  b:=systemfont[ord(ch),i];
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

procedure outtextxys(x,y:integer; t:string;c,s:integer);

var i:integer;

begin
for i:=1 to length(t) do putchar(x+s*i-s,y,t[i],c);
end;

procedure outtextxyzs(x,y:integer; t:string;c,xz,yz,s:integer);

var i:integer;

begin
for i:=0 to length(t)-1 do putcharz(x+s*xz*i,y,t[i+1],c,xz,yz);
end;

procedure scrollup;

var i:integer;

begin
  blit(displaystart,0,32,displaystart,0,0,xres,yres-32,xres,xres);
  //else  blit(lpeek($2060004),0,960,lpeek($2060004),0,928,1792,160,1792,1792);
  box(0,yres-32,xres,32,147);
end;

procedure print(line:string);

var i:integer;

begin
for i:=1 to length(line) do
  begin
  box(16*dpeek($20600a0),32*dpeek($20600a2),16,32,147);
  putcharz(16*dpeek($20600a0),32*dpeek($20600a2),line[i],156,2,2);
  dpoke($20600a0,dpeek($20600a0)+1);
  if dpeek($20600a0)>111 then
    begin
    dpoke($20600a0,0);
    dpoke($20600a2,dpeek($20600a2)+1);
    if dpeek($20600a2)>34 then
      begin
      scrollup;
      dpoke($20600a2,34);
      end;
    end;
  end;
end;

//-----------------------------------------------------------------------------
//
//  SID chip emulator
//
//-----------------------------------------------------------------------------

function sid(mode:integer):tsample;

//  SID frequency 985248 Hz

label p101,p102,p103,p104,p105,p106,p107;
label p111,p112,p113,p114,p115,p116,p117;
label p121,p122,p123,p124,p125,p126,p127;
label p201,p202,p203,p204,p205,p206,p207,p208,p209;
label p211,p212,p213,p214,p215,p216,p217,p218,p219;
label p221,p222,p223,p224,p225,p226,p227,p228,p229,p297,p298,p299;
const
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
  siddata[$56]:=channel1on;
  siddata[$57]:=channel2on;
  siddata[$58]:=channel3on;
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

p123:          mov   r0,#1 // 10
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

//               mov r1,#0x6000
//               ldr r2,[r7,#0x198]
//               sub r0,r2
//               ldr r4,[r7,#0x19c]
//               sub r0,r4
//               smull r5,r12,r0,r1
//               lsr r5,#18
//               orr r5,r5,r12,lsl #14
//               add r2,r5
//               str r2,[r7,#0x198]
//               smull r5,r12,r1,r2
//               lsr r5,#18
//               orr r5,r5,r12,lsl #14
//               add r4,r5
//               str r4,[r7,#0x19c]

//               ldr r0,[r7,#0x1a8]
               ldr r8,[r7,#0x1b0]
      //         cmp r0,#5//20
               add r8,r0  // r4
               str r8,[r7,#0x1b0]

               //  antialias l

 //              mov r0,r6
 //              ldr r2,[r7,#0x1a0]
 //              sub r0,r2
 //              ldr r4,[r7,#0x1a4]
 //              sub r0,r4
 //              smull r5,r12,r0,r1
 //              lsr r5,#18
 //              orr r5,r5,r12,lsl #14
 //              add r2,r5
 //              str r2,[r7,#0x1a0]
 //              smull r5,r12,r1,r2
 //              lsr r5,#18
 //              orr r5,r5,r12,lsl #14
 //              add r4,r5
 //              str r4,[r7,#0x1a4]

//               ldr r0,[r7,#0x1a8]
               ldr r8,[r7,#0x1ac]
        //       cmps r0,#10//20
               add r8,r6 //r4       //lt
               str r8,[r7,#0x1ac]
//               add r0,#1
 //              str r0,[r7,#0x1a8]

              // mov r1,#0x7000000
               ldr r0,[r7,#0x1fc]
               sub r0,#1
               str r0,[r7,#0x1fc]
             //  ldr r0,[r1]
               cmp r0,#0
               bne p297

                     // for 12 bit pwm shift and unsign
ldr r8,[r7,#0x1b0]
//mov r9,r8
//asr r9,#4
//add r8,r9
asr r8,#11

//add r8,#2592
str r8,[r7,#0x1b0]

ldr r8,[r7,#0x1ac]

//mov r9,r8
//asr r9,#4
//add r8,r9

asr r8,#11  //#18

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
sid[0]:= siddata[$6b]; //  2048+ (siddata[$6c] div (16*16384));//16384;//32768;
sid[1]:= siddata[$6c];//2048+ (siddata[$6b] div (16*16384));//16384;//32768;



//sid[0]:=sid1;
//sid[1]:=sid1l;
end;



procedure oscilloscope(sample:integer);

begin
oldsc:=sc;
sc:=sample+(sample div 2);
scope[scj]:=sc;
inc(scj);
if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
end;


procedure AudioCallback(userdata: Pointer; stream: PUInt8; len:Integer );

label p999;

var audio2:psmallint;
    audio3:psingle;
    s:tsample;
    ttt:int64;
    i,il:integer;
    buf:array[0..25] of byte;

const aa:integer=0;


begin

audio2:=psmallint(stream);
audio3:=psingle(stream);

ttt:=clockgettotal;


if (filetype=3) or (filetype=4) or (filetype=5) then
  begin
  if sfh>0 then
    begin
    if filebuffer.eof then // il<>1536 then
      begin
      fileclose(sfh);
      sfh:=-1;
      songtime:=0;
      pauseaudio(1);
      nextsong:=1;
      timer1:=-1;
      end
    else
      begin
      il:=filebuffer.getdata(integer(stream),len);
      timer1+=siddelay;
      songtime+=siddelay;
      if ((head.pcm=1) or (filetype>=4)) and (len=1536) then for i:=0 to 383 do oscilloscope(audio2[2*i]+audio2[2*i+1])
                         else if ((head.pcm=1) or (filetype>=4)) and (len=768) then for i:=0 to 383 do oscilloscope(audio2[i])
                         else for i:=0 to 95 do oscilloscope(round(16384*(audio3[4*i]+audio3[4*i+1]+audio3[4*i+2]+audio3[4*i+3])));
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
        if il=25 then
          begin
          for i:=0 to 24 do poke(base+$d400+i,buf[i]);
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
        //CleanDataCacheRange($d400,32);
        timer1+=siddelay;
        songtime+=siddelay;
        end;


      end;
    end;
    s:=sid(1);
    audio2[0]:=(s[0]);
    audio2[1]:=(s[1]);
    oscilloscope(s[0]+s[1]);
    for i:=1 to 1199 do
      begin
      s:=sid(0);
      audio2[2*i]:=(s[0]);
      audio2[2*i+1]:=(s[1]);
      if (i mod 10) = 0 then oscilloscope(s[0]+s[1]);
      end;
  end;
inc(sidcount);
//sidtime+=gettime-t;
p999:
sidtime:=clockgettotal-ttt;
end;









end.

