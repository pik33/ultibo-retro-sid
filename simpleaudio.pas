unit simpleaudio;

{$mode objfpc}{$H+}

interface

uses  Classes, SysUtils, platform, heapmanager;

const nocache=$C0000000;
      base=$2F000000;

var dmactrl:cardinal;
    dmabuf1: PInteger=nil;
    dmabuf2: PInteger=nil;

procedure initaudio;

implementation

uses retromalina; //TODO: remove this dependency!!!

//------------------------------------------------------------------------------
//  Init the audio subsystem.
//  Input: freq: sampling frequency
//         channels: number of channels
//         bits: sample bit depth; 8,16,24 bits integer, 32 bits float
//         ms: length of the buffer in miliseconds
//  Output: buf1, buf2: allocated buffers for audio
//          result: buffer length or negative if error
//  The length should not exceed ~9 miliseconds or the dma buffer will be too long for simplified dma channel

//------------------------------------------------------------------------------

procedure initaudio;
//function initaudio(freq,channels,bits:integer;ms:double;var buf1,buf2:PInteger):integer;


var i:integer;
    ctrlblock:array[0..7] of cardinal;

begin
// compute buffer length

//if bits<>8 and bits<>16 and bits<>24 and bits <>32 then
//  begin
//  result:=-1;
//  goto p999;
//  end;


//l:=(bits*ms*freq) div 8000



dmactrl:=nocache+cardinal(GetAlignedMem(64,32));
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
lpoke($3F007ff0,pinteger($3F007FF0)^ or %100000000000000); // dma 06 enable
lpoke($3F007e04,dmactrl); //base+$c2000000);
lpoke($3F007e00,3);



end;

end.

