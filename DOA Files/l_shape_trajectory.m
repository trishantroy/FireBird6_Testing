cmd2=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 01,-130];
cmd1=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 02,-131];
cmd3=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 03,-132];
cmd4=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 04,-133];
cmd6=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 06,-135];

cmdm=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 144, 2,44-126];
cmdlv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 154, 00,-135];
cmdrv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 155, 00,-136];
cmdsafe=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 137, 0,-118];
cmdenl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 146, 90,-217];
cmdenr=[hex2dec('7E'), 00, 10, 01, 00, 00, 00 , 00, 78, 69, 88, 147, 90,-218];
cmden=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 140, 0,-121];

t_straight1=15;
t_straight2=7;
t_turn1=4.67;
t_turn2=4.655;

fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmden)

for i=1:2
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 93,-220];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 99,-221];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd2)
    pause(t_straight1)
    fwrite(s,cmd6)
    pause(2)
    
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 128,-220];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 100,-221];

    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd3)
    pause(t_turn1)
    fwrite(s,cmd6)
    pause(2)
    
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 100,-220];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 105,-221];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd2)
    pause(t_straight2)
    fwrite(s,cmd6)
    pause(2)
    
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 128,-220];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 100,-221];

    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd3)
    pause(t_turn2)
    fwrite(s,cmd6)
    pause(2)
end

two_raised_to_eight = power(2,8);
% 
% fwrite(s,cmdenl);
% A = fread(s);
% 
% countl = A(9) + two_raised_to_eight * A(8);
% disp(countl);
% 
% fwrite(s,cmdenr);
% B = fread(s);
% 
% countr = B(9) + two_raised_to_eight * B(8);
% disp(countr);