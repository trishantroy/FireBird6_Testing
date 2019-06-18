cmd2=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 01,-130];
cmd1=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 02,-131];
cmd3=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 03,-132];
cmd4=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 04,-133];
cmd6=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 06,-135];

cmdm=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 144, 1,-126];
cmdlv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 154, 00,-135];
cmdrv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 155, 00,-136];
cmdsafe=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 137, 0,-118];
cmden=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 140, 0,-121];
t1=1.57;
t2=1.59;
fwrite(s,cmdsafe)
fwrite(s,cmdm)

cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 80,-210];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 80,-211];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd2)
pause(11.047)
fwrite(s,cmd6)
pause(1)

for j=1:3
cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 90,-220];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 90,-221];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd3)
pause(t2)
fwrite(s,cmd6)
pause(1)

cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 80,-210];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 80,-211];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd2)
pause(10.62)
fwrite(s,cmd6)
pause(1)

cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 90,-220];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 90,-221];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd3)
pause(t2)
fwrite(s,cmd6)
pause(1)

cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 80,-210];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 80,-211];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd2)
pause(10.52)
fwrite(s,cmd6)
pause(1)

cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 90,-220];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 90,-221];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd3)
pause(t1)
fwrite(s,cmd6)
pause(1)


cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 80,-210];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 80,-211];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd2)
pause(10.62)
fwrite(s,cmd6)
pause(1)

cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 90,-220];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 90,-221];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd3)
pause(t2)
fwrite(s,cmd6)
pause(1)

cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 80,-210];
cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 80,-211];
fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmdl)
fwrite(s,cmdr)
fwrite(s,cmden)
fwrite(s,cmd2)
pause(10.52)
fwrite(s,cmd6)
pause(1)
end