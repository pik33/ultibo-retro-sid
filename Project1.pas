program Project1;


{$mode objfpc}{$H+}

uses
  GlobalConfig,
  GlobalConst,
  GlobalTypes,
  Platform,
  Threads,
  dos,
  Framebuffer,
  BCM2837,
  SysUtils,
  Classes,
  MMC,         {Include the MMC/SD core to access our SD card}
  FileSystem,  {Include the file system core and interfaces}
  FATFS,       {Include the FAT file system driver}
//  ntfs,

  BCM2710,
  Ultibo,
  Keyboard,    {Keyboard uses USB so that will be included automatically}
  Mouse,
  DWCOTG,

  retromalina,
  Unit6502,
  umain;


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

label p999;
var s,currentdir,currentdir2:string;
    sr:tsearchrec;
    filenames:array[0..1000,0..1] of string;
    hh,mm,ss,l,i,j,ilf,ild:integer;
    sel:integer=0;
    selstart:integer=0;
    buf:array[0..25] of  byte;
    fn:string;
    fs:integer;
    cia:integer;
//    song:word=0;
//    songs:word=0;
    init:word;
    atitle,author,copyright:string[32];
    workdir:string;
    pause1a:boolean=true;
    ch:tkeyboardreport;
    keyboardstatus:array[0..255]of byte;
    activekey:byte=0;
    rptcnt:byte=0;
    drivetable:array['A'..'Z'] of boolean;
    c:char;
    f:textfile;
     drive:string;
// ---- procedures

procedure waveopen (var fh:integer);

label p999;

var head:wavehead;
    i,k:integer;
    s:string;
    head_datasize:int64;
    samplenum:int64;
    currentdatasize:int64;

begin
fileseek(fh,0,0);
fileread(fh,head,44);
if head.data<>1635017060 then
  begin  //non-standard header
  i:=0;
  repeat fileseek(fh,i,fsfrombeginning); fileread(fh,k,4); i+=1 until (k=1635017060) or (i>512);
  if k=1635017060 then
    begin
    head.data:=k;
    fileread(fh,k,4);
    head.datasize:=k;
    end
  else
    begin
    goto p999;
    end;
  end;

// visualize wave data

box(18,132,800,600,178);
outtextxyz(42,156,'type: RIFF',177,2,2);
outtextxyz(18,132,'type: RIFF',188,2,2);

outtextxyz(42,164+24,'size:             '+inttostr(head.size),177,2,2);
outtextxyz(42,196+24,'pcm type:         ' +inttostr(head.pcm),177,2,2);
outtextxyz(42,228+24,'channels:         '+inttostr(head.channels),177,2,2);
outtextxyz(42,260+24,'sample rate:      '+inttostr(head.srate),177,2,2);
outtextxyz(42,292+24,'bitrate:          '+inttostr(head.brate),177,2,2);
outtextxyz(42,324+24,'bytes per sample: '+inttostr(head.bytesps),177,2,2);
outtextxyz(42,356+24,'bits per sample:  '+inttostr(head.bps),177,2,2);
outtextxyz(42,388+24,'data size:        '+inttostr(head.datasize),177,2,2);

outtextxyz(18,164,   'size:             '+inttostr(head.size),188,2,2);
outtextxyz(18,196,   'pcm type:         ' +inttostr(head.pcm),188,2,2);
outtextxyz(18,228,   'channels:         '+inttostr(head.channels),188,2,2);
outtextxyz(18,260,   'sample rate:      '+inttostr(head.srate),188,2,2);
outtextxyz(18,292,   'bitrate:          '+inttostr(head.brate),188,2,2);
outtextxyz(18,324,   'bytes per sample: '+inttostr(head.bytesps),188,2,2);
outtextxyz(18,356,   'bits per sample:  '+inttostr(head.bps),188,2,2);
outtextxyz(18,388,   'data size:        '+inttostr(head.datasize),188,2,2);

head_datasize:=head.datasize ;

currentdatasize:=head.datasize;

// determine the number of samples

samplenum:=currentdatasize div (head.channels*head.bps div 8);
outtextxyz(42,420+24,'samples:          '+inttostr(samplenum),177,2,2);
outtextxyz(18,420,   'samples:          '+inttostr(samplenum),188,2,2);
box(18,912,800,32,244);
outtextxyz(18,912,'Wave file, '+inttostr(head.srate)+' Hz',250,2,2);
p999:
end;


procedure sidopen (var fh:integer);

var i:integer;
    speed:cardinal;
    version,offset,load,startsong,flags:word;
    dump:word;
    il,b:byte;

begin
reset6502;
atitle:='                                ';
author:='                                ';
copyright:='                                ';
fileread(fh,version,2); version:=(version shl 8) or (version shr 8);
fileread(fh,offset,2); offset:=(offset shl 8) or (offset shr 8);
fileread(fh,load,2); load:=(load shl 8) or (load shr 8);
fileread(fh,init,2); init:=(init shl 8) or (init shr 8);
fileread(fh,play,2);  play:=(play shl 8) or (play shr 8);
fileread(fh,songs,2); songs:=(songs shl 8) or (songs shr 8);
fileread(fh,startsong,2); startsong:=(startsong shl 8) or (startsong shr 8);
fileread(fh,speed,4);
speed:=speed shr 24+((speed shr 8) and $0000FF00) + ((speed shl 8) and $00FF0000) + (speed shl 24);
fileread(fh,atitle[1],32);
fileread(fh,author[1],32);
fileread(fh,copyright[1],32);
if version>1 then begin
  fileread(fh,flags,2); flags:=(flags shl 8) or (flags shr 8);
  fileread(fh,dump,2);
  fileread(fh,dump,2);
  b:=0; if load=0 then begin b:=1; fileread(fh,load,2); end;
  end;
for i:=1 to 32 do if byte(atitle[i])=$F1 then atitle[i]:=char(26);
for i:=1 to 32 do if byte(author[i])=$F1 then author[i]:=char(26);
box(18,132,800,600,178);
outtextxyz(42,156,'type: PSID',177,2,2);
outtextxyz(18,132,'type: PSID',188,2,2);

outtextxyz(42,164+24,'version: '+inttostr(version),177,2,2);
outtextxyz(42,196+24,'offset: ' +inttohex(offset,4),177,2,2);
outtextxyz(42,228+24,'load: '+inttohex(load,4),177-144*b,2,2);
outtextxyz(42,260+24,'init: '+inttohex(init,4),177,2,2);
outtextxyz(42,292+24,'play: '+inttohex(play,4),177,2,2);
outtextxyz(42,324+24,'songs: '+inttostr(songs),177,2,2);
outtextxyz(42,356+24,'startsong: '+inttostr(startsong),177,2,2);
outtextxyz(42,388+24,'speed: '+inttohex(speed,8),177,2,2);
outtextxyz(42,420+24,'title: '+atitle,177,2,2);
outtextxyz(42,452+24,'author: '+author,177,2,2);
outtextxyz(42,484+24,'copyright: '+copyright,177,2,2);
outtextxyz(42,516+24,'flags: '+inttohex(flags,4),177,2,2);

outtextxyz(18,164,'version: '+inttostr(version),188,2,2);
outtextxyz(18,196,'offset: ' +inttohex(offset,4),188,2,2);
outtextxyz(18,228,'load: '+inttohex(load,4),188-144*b,2,2);
outtextxyz(18,260,'init: '+inttohex(init,4),188,2,2);
outtextxyz(18,292,'play: '+inttohex(play,4),188,2,2);
outtextxyz(18,324,'songs: '+inttostr(songs),188,2,2);
outtextxyz(18,356,'startsong: '+inttostr(startsong),188,2,2);
outtextxyz(18,388,'speed: '+inttohex(speed,8),188,2,2);
outtextxyz(18,420,'title: '+atitle,188,2,2);
outtextxyz(18,452,'author: '+author,188,2,2);
outtextxyz(18,484,'copyright: '+copyright,188,2,2);
outtextxyz(18,516,'flags: '+inttohex(flags,4),188,2,2);
song:=startsong-1;

//reset6502;
for i:=0 to 65535 do write6502(i,0);
repeat
  il:=fileread(fh,b,1);
  write6502(load,b);
  load+=1;
until il<>1;
fileseek(fh,0,fsfrombeginning);
CleanDataCacheRange($2000000,65536);
i:=lpeek($2060000);
repeat until lpeek($2060000)>(i+4);
jsr6502(song,init);
cia:=read6502($dc04)+256*read6502($dc05);
outtextxyz(42,548+24,'cia: '+inttohex(read6502($dc04)+256*read6502($dc05),4),177,2,2);
outtextxyz(18,548,'cia: '+inttohex(read6502($dc04)+256*read6502($dc05),4),188,2,2);
end;


procedure sort;

// A simple bubble sort for filenames

var i,j:integer;
    s,s2:string;

begin
repeat
  j:=0;
  for i:=0 to ilf-2 do
    begin
    if (copy(filenames[i,0],3,1)<>'\') and (lowercase(filenames[i,1]+filenames[i,0])>lowercase(filenames[i+1,1]+filenames[i+1,0])) then
      begin
      s:=filenames[i,0]; s2:=filenames[i,1];
      filenames[i,0]:=filenames[i+1,0];
      filenames[i,1]:=filenames[i+1,1];
      filenames[i+1,0]:=s; filenames[i+1,1]:=s2;
      j:=1;
      end;
    end;
until j=0;
end;


procedure dirlist(dir:string);

begin
currentdir2:=dir;
setcurrentdir(currentdir2);
currentdir2:=getcurrentdir;
if copy(currentdir2,length(currentdir2),1)<>'\' then currentdir2:=currentdir2+'\';
box2(897,67,1782,115,36);
box2(897,118,1782,1008,34);
s:=currentdir2;
if length(s)>55 then s:=copy(s,1,55);
l:=length(s);
outtextxyz(1344-8*l,75,s,44,2,2);
ilf:=0;
if length(dir)=3 then
for c:='A' to 'Z' do
  begin
  if drivetable[c] then
    begin
    filenames[ilf,0]:=c+':\';
    filenames[ilf,1]:='(DIR)';
    ilf+=1;
    end;
  end;

currentdir:=currentdir2+'*';
if findfirst(currentdir,fadirectory,sr)=0 then
  repeat
  if (sr.attr and faDirectory) = faDirectory then
    begin
    filenames[ilf,0]:=sr.name;
    filenames[ilf,1]:='(DIR)';
    ilf+=1;
    end;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

currentdir:=currentdir2+'*.sid';
if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
  filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

currentdir:=currentdir2+'*.dmp';
if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
  filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

currentdir:=currentdir2+'*.wav';
if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
  filenames[ilf,1]:='wav';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

sort;

box(920,132,840,32,36);
if ilf<26 then ild:=ilf-1 else ild:=26;
for i:=0 to ild do
  begin
  if filenames[i,1]<>'(DIR)' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
  if filenames[i,1]<>'(DIR)' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
  if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
  for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
  if filenames[i,1]<>'(DIR)' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
  if filenames[i,1]='(DIR)' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'(DIR)',44,2,2);   end;
  end;
sel:=0; selstart:=0;
box2(897,67,1782,115,36);
s:=currentdir2;
if length(s)>55 then s:=copy(s,1,55);
l:=length(s);
outtextxyz(1344-8*l,75,s,44,2,2);
end;



//------------------- The main loop

begin

//settime(12,34,56,0);
while not DirectoryExists('C:\') do
  begin
  Sleep(100);
  end;

  if fileexists('C:\kernel7.img') then begin workdir:='C:\ultibo\'; drive:='C:\'; end
  else if fileexists('D:\kernel7.img') then begin workdir:='D:\ultibo\' ; drive:='D:\'; end
  else if fileexists('E:\kernel7.img') then begin workdir:='E:\ultibo\' ; drive:='E:\'; end
  else if fileexists('F:\kernel7.img') then begin workdir:='F:\ultibo\' ; drive:='F:\'; end
  else
    begin
    outtextxyz(440,1060,'Error. No Ultibo folder found. Press Enter to reboot',157,2,2);
    repeat until peek($2060028)=$13;
    systemrestart(0);
    end;



if fileexists(drive+'now.txt') then
  begin
  assignfile(f,drive+'now.txt');
  reset(f);
  read(f,hh); read(f,mm); read(f,ss);
  closefile(f);
  settime(hh,mm,ss,0);
  end;

if fileexists(drive+'kernel7_l.img') then
  begin
  DeleteFile(pchar(drive+'kernel7.img'));
  RenameFile(drive+'kernel7_l.img',drive+'kernel7.img');
  end;


//sleep(3000);
for c:='C' to 'F' do drivetable[c]:=directoryexists(c+':\');

fs:=1;
workdir:=drive;
songtime:=0;
pause1a:=true;
siddelay:=20000;
setcurrentdir(workdir);
initmachine;
poke($2100002,0);
poke($2100006,0);
poke($2100007,0);
poke($2100008,1);
lpoke($206000c,$002040);
lpoke ($2060008,0);
lpoke ($2060020,1792);
lpoke ($2060024,1120);
setataripallette(0);
// A simple mandelbrot test
{
mandelbrot;
startreportbuffer;
repeat
  begin
  l:=lpeek($2060000);
  repeat sleep(1) until lpeek($2060000)>l+1;
  l:=lpeek($2010000+1020);
  for j:=255 downto 2 do lpoke($2010000+4*j,lpeek($2010000+4*j-4)) ;
  lpoke($2010000+4,l);
  ch:=getkeyboardreport;
  end;
until ch[0]=1;
}
main1;
dirlist(drive);
poke($2100003,1);
poke($2100004,1);
poke($2100005,1);
pwmbeep;
//ThreadSetPriority(ThreadGetCurrent,6);
threadsleep(1);
ThreadSetCPU(ThreadGetCurrent,CPU_ID_0);
threadsleep(1);
for i:=0 to 255 do keyboardstatus[i]:=0;
startreportbuffer;
//lpoke($3F1010a0,$5a000006);
//threadsleep(1);
//lpoke($3F1010a4,$5a003000); // div 2
//lpoke($3F1010a0,$5a000016); // set clock to pll D    16 plld
lpoke($206fffc,440);
repeat
  main2;

//  i:=(lpeek($2060000) div 120) mod 2 ;
//  if i=0 then lpoke($3F1010a4,$5a002000) // div 2
//    else




  ch:=getkeyboardreport;
  if (ch[2]<>0) and (ch[2]<>255) then activekey:=ch[2];
  if (ch[2]<>0) and (activekey>0) then inc(rptcnt);
  if ch[2]=0 then begin rptcnt:=0; activekey:=0; end;
  if rptcnt>26 then rptcnt:=24 ;
  if (rptcnt=1) or (rptcnt=24) then poke($2060028,byte(translatescantochar(activekey,0)));

//  if pause1a then begin for i:=$200d400 to $200d400+25 do poke(i,0); end;

  if peek($2060028)=ord('5') then begin dpoke ($2060028,0); siddelay:=20000; songfreq:=50; skip:=0; end;
  if peek($2060028)=ord('1') then begin dpoke ($2060028,0); siddelay:=10000; songfreq:=100; skip:=0; end;
  if peek($2060028)=ord('2') then begin dpoke ($2060028,0); siddelay:=5000; songfreq:=200; skip:=0;end;
  if peek($2060028)=ord('3') then begin dpoke ($2060028,0); siddelay:=6666; songfreq:=150; skip:=0; end;
  if peek($2060028)=ord('4') then begin dpoke ($2060028,0); siddelay:=2500; songfreq:=400; skip:=0; end;
  if peek($2060028)=ord('p') then begin dpoke ($2060028,0); pause1a:=not pause1a; if pause1a then pauseaudio(1) else pauseaudio(0); end;
  if peek($2060028)=1 then begin dpoke($2060028,0); if peek($2100003)=0 then poke ($2100003,1) else poke ($2100003,0); end;
  if peek($2060028)=2 then begin dpoke($2060028,0); if peek($2100004)=0 then poke ($2100004,1) else poke ($2100004,0); end;
  if peek($2060028)=3 then begin dpoke($2060028,0); if peek($2100005)=0 then poke ($2100005,1) else poke ($2100005,0); end;

  if peek($2060028)=23 then
    begin
    dpoke($2060028,0);
    if sel<ild then
      begin
      box(920,132+32*sel,840,32,34);
      if filenames[sel+selstart,1]<>'(DIR)' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
      if filenames[sel+selstart,1]<>'(DIR)' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
      if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
      for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
      if filenames[sel+selstart,1]<>'(DIR)'then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
      if filenames[sel+selstart,1]='(DIR)' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'(DIR)',44,2,2);   end;
      sel+=1;
      box(920,132+32*sel,840,32,36);
      if filenames[sel+selstart,1]<>'(DIR)' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
      if filenames[sel+selstart,1]<>'(DIR)' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
      if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
      for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
      if filenames[sel+selstart,1]<>'(DIR)' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
      if filenames[sel+selstart,1]='(DIR)' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'(DIR)',44,2,2);   end;
      end
    else if sel+selstart<ilf-1 then
      begin
      selstart+=1;
      box2(897,118,1782,1008,34);
      box(920,132+32*sel,840,32,36);
      for i:=0 to ild do
        begin
        if filenames[i+selstart,1]<>'(DIR)' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
        if filenames[i+selstart,1]<>'(DIR)'then  s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
        if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
        for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
        if filenames[i+selstart,1]<>'(DIR)'then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
        if filenames[i+selstart,1]='(DIR)' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'(DIR)',44,2,2);   end;
        end;
      end;
    end;

  if peek($2060028)=24 then
     begin
      dpoke($2060028,0);
      if sel>0 then
        begin
        box(920,132+32*sel,840,32,34);
        if filenames[sel+selstart,1]<>'(DIR)' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
        if filenames[sel+selstart,1]<>'(DIR)' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
        if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
        for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
        if filenames[sel+selstart,1]<>'(DIR)' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
        if filenames[sel+selstart,1]='(DIR)' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'(DIR)',44,2,2);   end;
        sel-=1;
        box(920,132+32*sel,840,32,36);
        if filenames[sel+selstart,1]<>'(DIR)'then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
        if filenames[sel+selstart,1]<>'(DIR)'then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
        if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
        for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
        if filenames[sel+selstart,1]<>'(DIR)' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
        if filenames[sel+selstart,1]='(DIR)' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'(DIR)',44,2,2);   end;
        end
      else if sel+selstart>0 then
        begin
        selstart-=1;
        box2(897,118,1782,1008,34);
        box(920,132+32*sel,840,32,36);
        for i:=0 to ild do
          begin
          if filenames[i+selstart,1]<>'(DIR)' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
          if filenames[i+selstart,1]<>'(DIR)' then s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
          if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
          for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
          if filenames[i+selstart,1]<>'(DIR)' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
          if filenames[i+selstart,1]='(DIR)' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'(DIR)',44,2,2);   end;
          end;
        end;
      end;

     if peek($2060028)=43 then
      begin
      dpoke($2060028,0);
      if songs>0 then
        begin
        if song<songs-1 then
          begin
          pauseaudio(1);
          for i:=1 to 200000 do;
          song+=1;
          jsr6502(song,init);
          pauseaudio(0);
          end;
        end;
      end;

     if peek($2060028)=45 then
      begin
      dpoke($2060028,0);
      if songs>0 then
        begin
        if song>0 then
          begin
          pauseaudio(1);
          for i:=1 to 200000 do;
          song-=1;
          jsr6502(song,init);
          pauseaudio(0);
          end;
        end;
      end;

     if peek($2060028)=ord('f') then
      begin
      dpoke($2060028,0);
      lpoke($3F20C000,$0); // pwm contr0l - enable, clear fifo, use fifo
      if filetype=3 then lpoke($3F20C010,275) else lpoke($3F20C010,265); // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
      if filetype=3 then lpoke($3F20C020,275) else lpoke($3F20C020,265);
      lpoke($206fffc,432);
      lpoke($3F20C000,$0000a1e1); // pwm contr0l - enable, clear fifo, use fifo

      end;
     if peek($2060028)=ord('g') then
      begin
      dpoke($2060028,0);
      lpoke($3F20C000,$0); // pwm contr0l - enable, clear fifo, use fifo
      if filetype=3 then lpoke($3F20C010,270) else lpoke($3F20C010,260); // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
      if filetype=3 then lpoke($3F20C020,270) else lpoke($3F20C020,260);
      lpoke($206fffc,440);
      lpoke($3F20C000,$0000a1e1); // pwm contr0l - enable, clear fifo, use fifo

      end;

    if peek($2060028)=13 then
      begin
      dpoke($2060028,0);
      if filenames[sel+selstart,1]='(DIR)' then
        begin
        if copy(filenames[sel+selstart,0],2,1)<>':' then dirlist(currentdir2+filenames[sel+selstart,0]+'\')
        else begin currentdir2:=filenames[sel+selstart,0] ; dirlist(currentdir2); end;
        end

      else

        begin
        pause1a:=true;
        pauseaudio(1);
        i:=lpeek($2060000);
        repeat until lpeek($2060000)>i+4;

        for i:=$200d400 to $200d420 do poke(i,0);
        i:=lpeek($2060000);
        repeat until lpeek($2060000)>(i+4);
        if sfh>=0 then fileclose(sfh);
        sfh:=-1;


        for i:=0 to $2F do siddata[i]:=0;
        for i:=$50 to $7F do siddata[i]:=0;
        siddata[$0e]:=$7FFFF8;
        siddata[$1e]:=$7FFFF8;
        siddata[$2e]:=$7FFFF8;
        lpoke($3F20C000,$0); // pwm contr0l - enable, clear fifo, use fifo
        if lpeek($206fffc)=440 then lpoke($3F20C010,260) else lpoke($3F20C010,265);      // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
        if lpeek($206fffc)=440 then lpoke($3F20C020,260) else lpoke($3F20C020,265);      // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
        lpoke($3F20C000,$0000a1e1); // pwm contr0l - enable, clear fifo, use fifo
        lpoke ($400000c,20*960);
        lpoke ($400002c,20*960);
        songtime:=0;

        fn:= currentdir2+filenames[sel+selstart,0];
        sfh:=fileopen(fn,$40);
        s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4);
        for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
        siddelay:=20000;
        filetype:=0;
        fileread(sfh,buf,4);
        if (buf[0]=ord('S')) and (buf[1]=ord('D')) and (buf[2]=ord('M')) and (buf[3]=ord('P')) then
          begin
          box(18,132,800,600,178);
          outtextxyz(18,132,'type: SDMP',188,2,2);
          songs:=0;
          fileread(sfh,buf,4);
          siddelay:=1000000 div buf[0];
          outtextxyz(18,196,'speed: '+inttostr(buf[0])+' Hz',188,2,2);
          atitle:='                                ';
          fileread(sfh,atitle[1],16);
          fileread(sfh,buf,1);
          outtextxyz(18,164,'title: '+atitle,188,2,2);
          box(18,912,800,32,244);
          outtextxyz(18,912,'SIDCog DMP file, '+inttostr(songfreq)+' Hz',250,2,2);
          songs:=0;
          end
        else if (buf[0]=ord('P')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
          begin
          reset6502;
          sidopen(sfh);
          i:=lpeek($2060000);
          repeat until lpeek($2060000)>(i+4);
          if cia>0 then siddelay:={985248}1000000 div (50*round(19652/cia));
          filetype:=1;
          box(18,912,800,32,244);
          outtextxyz(18,912,'PSID file, '+inttostr(1000000 div siddelay)+' Hz',250,2,2);
          fileclose(sfh);
          end
        else if (buf[0]=ord('R')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
          begin
          filetype:=2;
          box(18,132,800,600,178);
          outtextxyz(18,132,'type: RSID, not yet supported',44,2,2);
          fileclose(sfh);
          end
        else if (buf[0]=ord('R')) and (buf[1]=ord('I')) and (buf[2]=ord('F')) and (buf[3]=ord('F')) then
          begin
          filetype:=3;
          waveopen(sfh);

       //   box(18,132,800,600,178);
       //   outtextxyz(18,132,'type: wave file',44,2,2);
          songs:=0;
          siddelay:=8707;
          //fileread(sfh,atitle[1],32);    fileread(sfh,atitle[1],12);
          if lpeek($206fffc)<>440 then
            begin
            lpoke($3F20C000,$0); // pwm contr0l - enable, clear fifo, use fifo
            lpoke($3F20C010,275);      // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
            lpoke($3F20C020,275);
            lpoke($206fffc,432);
            lpoke($3F20C000,$0000a1e1); // pwm contr0l - enable, clear fifo, use fifo
            end
          else
            begin
            lpoke($3F20C000,$0); // pwm contr0l - enable, clear fifo, use fifo
            lpoke($3F20C010,270);      // 5208 for 48 kHz pwm 1 range  12bit 48 khz 2083
            lpoke($3F20C020,270);
            lpoke($206fffc,440);
            lpoke($3F20C000,$0000a1e1); // pwm contr0l - enable, clear fifo, use fifo
            end;
          lpoke ($400000c,42*1536);
          lpoke ($400002c,42*1536);
          if spr6x=spr7x then begin sprx:=100; spr2x:=200; spr3x:=300;spr4x:=400; spr5x:=500; spr6x:=600; spr7x:=700; end;
          end
        else
          begin
          fileread(sfh,buf,21);
          box(18,132,800,600,178);
          outtextxyz(18,132,'type: unknown, 50 Hz SDMP assumed',188,2,2);
          box(18,912,800,32,244);
          outtextxyz(18,912,'SIDCog DMP file, 50 Hz',250,2,2);
          songs:=0;
          end;
        songname:=s;
        songtime:=0;
        timer1:=-1;
        if filetype<>2 then begin pause1a:=false; pauseaudio(0); end;
        end;
    end;
  until (peek($2060028)=27) ;
  pauseaudio(1);
  if sfh>0 then fileclose(sfh);
  setcurrentdir(workdir);
  stopmachine;
  systemrestart(0);

end.

