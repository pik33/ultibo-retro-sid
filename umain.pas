unit umain;

{$mode objfpc}{$H+}

interface

uses sysutils,classes,retromalina,platform;

const ver='The retromachine player v. 0.12u --- 2016.11.24';
var test:integer ;
    licznik:integer=0;
    songname:string;
    q1,q2,q3:extended;
    thread:TRetro;
    sprx,sprxd,spryd,spry:integer;
    spr2x,spr2xd,spr2yd,spr2y:integer;
    spr3x,spr3xd,spr3yd,spr3y:integer;
    c:int64=0;
    c6:int64=1;
    avsct:int64=0;
    avspt:int64=0;
    avall:int64=0;
    avsid:int64=0;
    av6502:int64=0;
    qq:integer;
    avsct1,avspt1,sidtime1,av65021:array[0..59] of integer;


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
var  t:int64;
     i:integer;

begin

// hide all sprites

lpoke($2060040,$01001100); // position
lpoke($2060044,$00040004); // zoom
lpoke($2060048,$00101100);
lpoke($206004c,$00040004);
lpoke($2060050,$00181180);
lpoke($2060054,$00040004);
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

for i:=0 to 31 do
  for j:=0 to 31 do  begin
    if j<16 then k:=j*16 else k:=(31-j)*16 ;
    if k=0 then k:=8;
    if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2052000+4*i+128*j,k)  else  lpoke($2052000+4*i+128*j,0);
    end;

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
outtextxyz(18,864,songname,250,2,2);
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
if sidcount<>0 then outtextxyz(656,1070,'SID '+inttostr(avall)+' us',233,2,2);
outtextxyz(880,1070,'6502 '+floattostrf((av6502/16),fffixed,4,1)+' us',124,2,2);
outtextxyz(1280,1070,clock,220,2,2);
if peek($2070003)=1 then outtextxyz(1540,1070,inttostr(peek($200d404)shr 4),108,2,2);
if peek($2070004)=1 then outtextxyz(1580,1070,inttostr(peek($200d40b)shr 4),200,2,2);
if peek($2070005)=1 then outtextxyz(1620,1070,inttostr(peek($200d412)shr 4),40,2,2);
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
for j:=20 to 840 do if abs(scope[j])<46000 then box(20+j,700-scope[j] div 64,2,2,190);
sprx:=round(dpeek($200d400)/40+74);
spry:=920-3*(peek($200d406) and $F0);
lpoke($2060040,(spry shl 16)+sprx+2048*(1-peek($2070003)));
spr2x:=round(dpeek($200d407)/40+74);
spr2y:=920-3*(peek($200d40d) and $F0);
lpoke($2060048,(spr2y shl 16)+spr2x+2048*(1-peek($2070004)));
spr3x:=round(dpeek($200d40e)/40+74);
spr3y:=920-3*(peek($200d414) and $F0);
lpoke($2060050,(spr3y shl 16)+spr3x+2048*(1-peek($2070005)));
//lpoke($2060078,lpeek($206002c) shl 1);

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

