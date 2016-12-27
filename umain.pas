unit umain;

{$mode objfpc}{$H+}

interface

uses sysutils,classes,retromalina,platform;

const ver='The retromachine player v. 0.14u --- 2016.11.27';
var test:integer ;
    licznik:integer=0;
    songname:string;
    q1,q2,q3:extended;
    thread:TRetro;
    sprx,sprxd,spryd,spry,sprdx,sprdy:integer;
    spr2x,spr2xd,spr2yd,spr2y,spr2dx,spr2dy:integer;
    spr3x,spr3xd,spr3yd,spr3y,spr3dx,spr3dy:integer;
    c:int64=0;
    c6:int64=1;
    avsct:int64=0;
    avspt:int64=0;
    avall:int64=0;
    avsid:int64=0;
    av6502:int64=0;
    qq:integer;
    avsct1,avspt1,sidtime1,av65021:array[0..59] of integer;
    song:word=0;
      songs:word=0;

procedure main1;
procedure main2;
procedure mandelbrot;

implementation


procedure rainbow;

begin
box2(10,1011,1782,1012,48+16);
box2(10,1013,1782,1014,48+17);
box2(10,1015,1782,1016,48+18);
box2(10,1017,1782,1018,48+19);
box2(10,1019,1782,1020,48+20);
box2(10,1021,1782,1022,48+21);
box2(10,1023,1782,1024,48+22);
box2(10,1025,1782,1026,48+23);
box2(10,1027,1782,1028,48+24);
box2(10,1029,1782,1030,48+25);
box2(10,1031,1782,1032,48+26);
box2(10,1033,1782,1034,48+27);
box2(10,1035,1782,1036,48+28);
box2(10,1037,1782,1038,48+29);
box2(10,1039,1782,1040,48+30);
box2(10,1041,1782,1042,48+31);
box2(10,1043,1782,1044,48+32);
box2(10,1045,1782,1046,48+33);
box2(10,1047,1782,1048,48+34);
box2(10,1049,1782,1050,48+35);
box2(10,1051,1782,1052,48+36);
box2(10,1053,1782,1054,48+37);
box2(10,1055,1782,1056,48+38);
box2(10,1057,1782,1058,48+39);
end;

procedure main1 ;
var  fh2, t:int64;
     i,j,k:integer;
     bb:byte;

begin

// hide all sprites

lpoke($2060040,$01001100); // position
lpoke($2060044,$00020002); // zoom
lpoke($2060048,$00101100);
lpoke($206004c,$00020002);
lpoke($2060050,$00181180);
lpoke($2060054,$00020002);
lpoke($2060058,$00201200);
lpoke($206005c,$00040004);
lpoke($2060060,$00281280);
lpoke($2060064,$00040004);
lpoke($2060068,$00301300);
lpoke($206006c,$00040004);
lpoke($2060070,$00381380);
lpoke($2060074,$00040004);
lpoke($2060078,$00401400);
lpoke($206007c,$00020002);
// set sprite shapes

//for i:=0 to 31 do
//  for j:=0 to 31 do  begin
//    if j<16 then k:=j*16 else k:=(31-j)*16 ;
//    if k=0 then k:=8;
//    if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2052000+4*i+128*j,k)  else  lpoke($2052000+4*i+128*j,0);
//    end;

for i:=0 to 31 do
  for j:=0 to 31 do  begin
    if j<16 then k:=j*16 else k:=(31-j)*16 ;
    if k=0 then k:=8;
    k:=k shl 8;
    if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2053000+4*i+128*j,k)  else  lpoke($2053000+4*i+128*j,0);
    end;

for i:=0 to 31 do
  for j:=0 to 31 do  begin
    if j<16 then k:=j*16 else k:=(31-j)*16 ;
    if k=0 then k:=8;
    k:=k shl 16;
    if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2054000+4*i+128*j,k)  else  lpoke($2054000+4*i+128*j,0);
    end;




// --------- main program start

lpoke ($2060008,0);
lpoke ($2060020,1792);
lpoke ($2060024,1120);
setataripallette(0);
setataripallette(1);
setataripallette(2);
setataripallette(3);
cls(146);
outtextxyz(128,16,ver,154,4,2);
box2(8,64,1784,1112,0);
box2(10,1062,1782,1110,120);
outtextxyz(32,1070,'Screen time:',124,2,2);
k:=lpeek($2060000);
lpoke($206000c,$002040);
sethidecolor(250,0,$FF);
sethidecolor(44,0,$FF);
sethidecolor(190,0,$FF);
sethidecolor(188,0,$FF);
c:=0;
avsct:=0;
avspt:=0;
avall:=0;
avsid:=0;
rainbow;
i:=lpeek($2060004);
outtextxyz(24,1019,'A retromachine SID player by pik33 --- inspired by Johannes Ahlebrand''s Parallax Propeller SIDCog --- F1,F2,F3',89,2,2);
blit(i,10,1011,i+$800000,10,1011,1771,48,1792,1792);
rainbow;
outtextxyz(24,1019,'- channels 1..3 on/off; 1-100 Hz, 2-200 Hz, 3-150 Hz, 4-400 Hz, 5-50 Hz; P - pause; up/down/enter - select --- ',89,2,2);
blit(i,10,1011,i+$800000,10,1059,1771,48,1792,1792);
box2(10,800,894,848,246);
box2(10,851,894,1008,244);
outtextxyz(320,808,'Now playing',250,2,2);
box2(10,118,894,797,178);
box2(10,67,894,115,180);
outtextxyz(320,75,'File info',188,2,2);
box2(897,118,1782,1008,34);
box2(897,67,1782,115,36);
outtextxyz(1296,75,'Files',44,2,2);
fh2:=fileopen('C:\retro\kulka01.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12050000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12050000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12050000+4*i+0,bb);
  poke($12050000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka02.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12051000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12051000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12051000+4*i+0,bb);
  poke($12051000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka03.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12052000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12052000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12052000+4*i+0,bb);
  poke($12052000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka04.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12053000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12053000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12053000+4*i+0,bb);
  poke($12053000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka05.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12054000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12054000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12054000+4*i+0,bb);
  poke($12054000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka06.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12055000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12055000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12055000+4*i+0,bb);
  poke($12055000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka07.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12056000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12056000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12056000+4*i+0,bb);
  poke($12056000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka08.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12057000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12057000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12057000+4*i+0,bb);
  poke($12057000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka09.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12058000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12058000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12058000+4*i+0,bb);
  poke($12058000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka10.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($12059000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($12059000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($12059000+4*i+0,bb);
  poke($12059000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka11.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($1205a000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($1205a000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($1205a000+4*i+0,bb);
  poke($1205a000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka12.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($1205b000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($1205b000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($1205b000+4*i+0,bb);
  poke($1205b000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka13.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($1205c000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($1205c000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($1205c000+4*i+0,bb);
  poke($1205c000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka14.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($1205d000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($1205d000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($1205d000+4*i+0,bb);
  poke($1205d000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka15.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($1205e000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($1205e000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($1205e000+4*i+0,bb);
  poke($1205e000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

fh2:=fileopen('C:\retro\kulka16.ppm',$40);
fileseek(fh2,121,0);
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
 // bb:=255;
  poke($1205f000+4*i+2,bb);
  fileread(fh2,bb,1);
  poke($1205f000+4*i+1,bb);
  fileread(fh2,bb,1);
  poke($1205f000+4*i+0,bb);
  poke($1205f000+4*i+3,0);
  end;
//fileclose(fh);
fileclose(fh2);

for i:=0 to 16383 do
  begin
  poke($12060000+4*i,peek($12050000+4*i+1) );
  poke($12060000+4*i+1,peek($12050000+4*i) );
  poke($12060000+4*i+2,peek($12050000+4*i+2) );
  poke($12060000+4*i+3,0);
  end;
for i:=0 to 16383 do
  begin
  poke($12070000+4*i,peek($12050000+4*i+1) );
  poke($12070000+4*i+1,peek($12050000+4*i+2) );
  poke($12070000+4*i+2,peek($12050000+4*i) );
  poke($12070000+4*i+3,0);
  end;

lpoke($2060080,$12052000);
sprdx:=1;
sprdy:=1;
spr2dx:=2;
spr2dy:=2;
spr3dx:=3;
spr3dy:=3;

end;


procedure main2;

var a,c1,ii,iii,il,i,cc:integer;
    buf:array[0..24] of byte;
    qqq,mm,hh,ss:int64;
    mms,hhs,sss,kwas:string;
//    rect:tsdl_rect;
    clock:string;

begin

clock:=timetostr(now);
k:=lpeek($2060000);
repeat sleep(1) until lpeek($2060000)<>k;
lpoke($2060080,$12050000+4096*((k mod 32) div 2));
lpoke($2060084,$12060000+4096*((k mod 32) div 2));
lpoke($2060088,$12070000+4096*((k mod 32) div 2));
c:=c+1; c1:=c mod 60;
if time6502>0 then c6+=1;
ss:=(songtime div 1000000) mod 60;
mm:=(songtime div 60000000) mod 60;
hh:=(songtime div 3600000000);
sss:=inttostr(ss); if ss<10 then sss:='0'+sss;
mms:=inttostr(mm); if mm<10 then mms:='0'+mms;
hhs:=inttostr(hh); if hh<10 then hhs:='0'+hhs;
songfreq:=1000000 div siddelay;
box(18,864,640,32,244);
box(18,960,640,32,244);
if songs>1 then outtextxyz(18,864,songname+', song '+inttostr(song+1),250,2,2)
else outtextxyz(18,864,songname,250,2,2);
outtextxyz(18,960,hhs+':'+mms+':'+sss,190,4,2);
avsct1[c1]:=tim;
avspt1[c1]:=ts;
sidtime1[c1]:=sidtime;
av65021[c1]:=time6502;
avsct:=0; for i:=0 to 59 do avsct+=avsct1[i]; avsct:=round(avsct/60);
avspt:=0; for i:=0 to 59 do avspt+=avspt1[i]; avspt:=round(avspt/60);
avall:=0; for i:=0 to 59 do avall+=sidtime1[i]; avall:=round(avall/60);
av6502:=0; for i:=0 to 59 do av6502+=av65021[i]; av6502:=round(av6502/60);

box2(10,1062,1782,1110,118);
outtextxyz(32,1070,'Times: ',44,2,2);
outtextxyz(144,1070,'screen '+inttostr(avsct)+' us',44,2,2);
outtextxyz(400,1070,'sprites '+inttostr(avspt)+' us',186,2,2);
if sidcount<>0 then
  begin
  if filetype<>3 then outtextxyz(656,1070,'SID '+inttostr(avall)+' us',233,2,2)
  else begin if sidtime>1000 then outtextxyz(656,1070,'wav '+inttostr(avall)+' us',233,2,2); end;
  end;
outtextxyz(880,1070,'6502 '+floattostrf((av6502/16),fffixed,4,1)+' us',124,2,2);
outtextxyz(1140,1070,inttostr(lpeek($206fffc)),200,2,2);
outtextxyz(1280,1070,clock,220,2,2);
if peek($2100003)=1 then outtextxyz(1540,1070,inttostr(peek($200d404)shr 4),108,2,2);
if peek($2100004)=1 then outtextxyz(1580,1070,inttostr(peek($200d40b)shr 4),200,2,2);
if peek($2100005)=1 then outtextxyz(1620,1070,inttostr(peek($200d412)shr 4),40,2,2);
outtextxyz(1680,1070,inttostr(peek($2060028)),44,2,2);

a:= TemperatureGetCurrent(0) div 1000;
if a<75 then ii:=184
else if a<80 then ii:=232
else ii:=40;
outtextxyz(1434,1070,inttostr(a),ii,2,2);
outtextxyz(1474,1070,'C',ii,2,2);
outtextxyz(1462,1050,'.',ii,2,2);

for i:=64 to 88 do lpoke($2010000+4*i,lpeek($2010000+2048+4*((c div 2) mod 256)+4*i));
if (c mod 32)=0 then lpoke($2010000+4*89,lpeek($2010000+2048+(4*(c div 64) mod 256)))   ;
cc:=(2*c) mod 3544 ;
a:=lpeek($2060004);
if cc<1772 then blit(a+$800000,10+(cc),1011,a,12,1011,1771-(cc),48,1792,1792);
if cc<1772 then blit(a+$800000,10,1059,a,11+1771-(cc),1011,(cc),48,1792,1792);
if cc>=1772 then blit (a+$800000,10,1011,a,11+3543-(cc),1011,(cc-1772),48,1792,1792);
if cc>=1772 then blit(a+$800000,10+(cc-1772),1059,a,12,1011,1771-(cc-1772),48,1792,1792);
box2(10,610,894,797,178);
box2(10,700,894,701,140);
box2(10,636,894,637,140);
box2(10,764,894,765,140);
if filetype<>3 then begin for j:=20 to 840 do if abs(scope[j])<46000 then box(20+j,700-scope[j] div 768,2,2,190); end
else begin for j:=0 to 767 do if abs(scope[j])<46000 then box(60+j,700-scope[j] div 768,2,2,190); end;

if filetype<>3 then
  begin
  sprx:=round(dpeek($200d400)/40+74);
  spry:=920-3*(peek($200d406) and $F0);
  lpoke($2060040,(spry shl 16)+sprx+2048*(1-peek($2100003)));
  spr2x:=round(dpeek($200d407)/40+74);
  spr2y:=920-3*(peek($200d40d) and $F0);
  lpoke($2060048,(spr2y shl 16)+spr2x+2048*(1-peek($2100004)));
  spr3x:=round(dpeek($200d40e)/40+74);
  spr3y:=920-3*(peek($200d414) and $F0);
  lpoke($2060050,(spr3y shl 16)+spr3x+2048*(1-peek($2100005)));
  end
else
  begin
     sprx+=sprdx;
     spry+=sprdy;
     if sprx>1792 then sprdx:=-1;
     if spry>1096 then sprdy:=-1;
     if sprx<64 then sprdx:=1;
     if spry<40 then sprdy:=1;
     lpoke($2060040,(spry shl 16)+sprx);
     spr2x+=spr2dx;
     spr2y+=spr2dy;
     if spr2x>1792 then spr2dx:=-2;
     if spr2y>1096 then spr2dy:=-2;
     if spr2x<64 then spr2dx:=2;
     if spr2y<40 then spr2dy:=2;
     lpoke($2060048,(spr2y shl 16)+spr2x);
     spr3x+=spr3dx;
     spr3y+=spr3dy;
     if spr3x>1792 then spr3dx:=-3;
     if spr3y>1096 then spr3dy:=-3;
     if spr3x<64 then spr3dx:=3;
     if spr3y<40 then spr3dy:=3;
     lpoke($2060050,(spr3y shl 16)+spr3x);
     if sqrt(sqr(sprx-spr2x)+sqr(spry-spr2y))<64 then begin sprdx:=-sprdx; sprdy:=-sprdy; spr2dx:=-spr2dx; spr2dy:=-spr2dy; end;
     if sqrt(sqr(sprx-spr3x)+sqr(spry-spr3y))<64 then begin sprdx:=-sprdx; sprdy:=-sprdy; spr3dx:=-spr3dx; spr3dy:=-spr3dy; end;
     if sqrt(sqr(spr3x-spr2x)+sqr(spr3y-spr2y))<64 then begin sprdx:=-sprdx; spr2dy:=-spr2dy; spr3dx:=-spr3dx; spr3dy:=-spr3dy; end;
     end;
//lpoke($2060078,lpeek($206002c) shl 1);

//box(100,100,300,40,0);
//outtextxyz(100,100,inttostr(siddata[$7a])+' '+inttostr(siddata[$7B]),40,2,2);


end;


procedure mandelbrot;


const

   cxmin = -2.5;
   cxmax =  1.5;
   cymin = -1.0;
   cymax =  1.0;
   maxiteration = 255;
   escaperadius = 2;

var


   ixmax  :Word;
   iymax  :Word;

   ix, iy      :Word;
   cx, cy       :real;
   pixelwidth   :real;
   pixelheight  :real;

   colour    : Byte;

   zx, zy       :real;
   zx2, zy2     :real;
   iteration   : integer;
   er2         : real = (escaperadius * escaperadius);

begin

 ixmax:=1792;
 iymax:=1120;


 pixelheight:= (cymax - cymin) / iymax;
 pixelwidth:= pixelheight;

   for iy := 1 to iymax do
   begin
      cy := cymin + (iy - 1)*pixelheight;
      if abs(cy) < pixelheight / 2 then cy := 0.0;
      for ix := 1 to ixmax do
      begin
         cx := cxmin + (ix - 1)*pixelwidth;
         zx := 0.0;
         zy := 0.0;
         zx2 := zx*zx;
         zy2 := zy*zy;
         iteration := 0;
         while (iteration < maxiteration) and (zx2 + zy2 < er2) do
         begin
            zy := 2*zx*zy + cy;
            zx := zx2 - zy2 + cx;
            zx2 := zx*zx;
            zy2 := zy*zy;
            iteration := iteration + 1;
         end;
         if iteration = maxiteration then
         begin
           colour := 0;
          end
         else
         begin
            colour := iteration;
         end;
         putpixel(ix-1, iy-1, colour);

      end;
   end;


end;
end.

