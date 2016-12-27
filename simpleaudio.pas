unit simpleaudio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

// Audio thread

TAudio= class(TThread)
private
protected
  procedure Execute; override;
public
 Constructor Create(CreateSuspended : boolean);
end;

TSample=array[0..1] of smallint;

implementation

procedure noiseshaper(bufaddr:integer);

var i,j:integer;

begin
if bufaddr=$205a000 then
  begin
  for i:=0 to 959 do
    begin
    for j:=0 to 15 do
      begin
      i1l+=slpeek($205a000+8*i);
      i2l+=i1l;
      topl:=i2l div 203;
      fbl:=topl * 203;
      i1l-=fbl;
      i2l-=fbl;
      slpoke ($2070000+128*i+8*j, 172+topl);

      i1r+=slpeek($205a000+8*i+4);
      i2r+=i1r;
      topr:=i2r div 203;
      fbr:=topr * 203;
      i1r-=fbr;
      i2r-=fbr;
      slpoke ($2070000+128*i+8*j+4, 172+topr);

      end;
    end;
  end
else
  begin
  for i:=0 to 959 do
    begin
    for j:=0 to 15 do
      begin
      i1l+=slpeek($205c000+8*i);
       i2l+=i1l;
       topl:=i2l div 203;
       fbl:=topl * 203;
       i1l-=fbl;
       i2l-=fbl;
       slpoke ($20a0000+128*i+8*j, 172+topl);

       i1r+=slpeek($205c000+8*i+4);
       i2r+=i1r;
       topr:=i2r div 203;
       fbr:=topr * 203;
       i1r-=fbr;
       i2r-=fbr;
       slpoke ($20a0000+128*i+8*j+4, 172+topr);
      end;
    end;
  end;
end;

constructor TAudio.Create(CreateSuspended : boolean);

begin
FreeOnTerminate := True;
inherited Create(CreateSuspended);
end;

procedure TAudio.Execute;

var a,key:integer;
    q:cardinal;

begin
ThreadSetCPU(ThreadGetCurrent,CPU_ID_1);
threadsleep(1);
  repeat
  repeat threadsleep(2); a:= lpeek($3F007600) until (a and 2) <>0 ;
  if (a and 2)<>0 then
    begin
    if lpeek($3f00761c)=$c4000000 then audiocallback($0205a000)
                                  else audiocallback($0205c000);
    lpoke($3F007600,$00f70003);
    CleanDataCacheRange($0205a000,$8000);
    CleanDataCacheRange($02070000,$60000);
    end;
  until terminated;
end;

procedure initaudio;

var i:integer;
    ctrlblock:array[0..7] of cardinal;

begin

ctrlblock[0]:=$00050140; //transfer info
ctrlblock[1]:=$c2070000;
ctrlblock[2]:=$7E20C018;
ctrlblock[3]:=16*7680;
ctrlblock[4]:=$0;
ctrlblock[5]:=$c4000020;
ctrlblock[6]:=$0;
ctrlblock[7]:=$0;
for i:=0 to 7 do lpoke($4000000+4*i,ctrlblock[i]);
ctrlblock[5]:=$c4000000;
ctrlblock[1]:=$c20a0000;
for i:=0 to 7 do lpoke($4000020+4*i,ctrlblock[i]);
CleanDataCacheRange($4000000,$10000);
sleep(1);


//set gpio
i:=pinteger($3F200010)^ and  %11111111111111000111111111111000;
lpoke($3F200010, i or       %00000000000000100000000000000100); // gpio 40/45 as alt0
lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
lpoke($3F1010a4,$5a002000); // div 2
lpoke($3F20C010,325);      // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
lpoke($3F20C020,325);      // pwm 2 range
lpoke($3F20C000,$0000a1e1); // pwm contr0l - enable, clear fifo, use fifo
lpoke($3F20C008,$80000707); // pwm dma enable
lpoke($3F007ff0,pinteger($3F007FF0)^ or %1000000); // dma 06 enable
lpoke($3F007604,$c4000000);
lpoke($3F007600,$00f70003);
end;

procedure pauseaudio(mode:integer);

begin
if mode=1 then
  begin
  pause1:=true;
  sleep(5);
  for i:=$205a000 to $205dfff do if (i mod 4) = 0 then lpoke(i,0);
  CleanDataCacheRange($205a000,16384);
  for i:=$2070000 to $20cffff do if (i mod 4) = 0 then lpoke(i,128);
  CleanDataCacheRange($2070000,$60000);
  sleep(5);
  end
else
  begin
  pause1:=false;
  end;
end;

procedure AudioCallback(b:integer);


begin
// b is the address of the buffer uou have to fill here
end;



end.

