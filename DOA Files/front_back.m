clear all
s = serial('/dev/ttyUSB2','BaudRate',57600,'DataBits',8);
fopen(s);

cmd2=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 01,-130];
cmd1=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 02,-131];
cmd3=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 03,-132];
cmd4=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 04,-133];
cmd6=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 06,-135];

cmdm=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 144, 1, -126];
cmdlv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 154, 00,-135];
cmdrv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 155, 00,-136];
cmdsafe=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 137, 0,-118];
cmdenl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 146, 90,-217];
cmdenr=[hex2dec('7E'), 00, 10, 01, 00, 00, 00 , 00, 78, 69, 88, 147, 90,-218];
cmden=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 140, 0,-121];

t_straight=8.0;
t_back=8.0;

fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmden)

for i=1:6
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 70,-200];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 70,-201];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd2)  
    pause(t_straight)
    
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 109,-239];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 109,-240];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd2)
    pause(2)
    fwrite(s,cmd6)
    pause(1)
    
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 70,-200];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 71,-202];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd1)
    pause(t_back)
   
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 109,-239];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 109,-240];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd1)
    pause(2)
    fwrite(s,cmd6)
    pause(1)
end
fwrite(s,cmd6)
pause(1)

fclose(s);
% two_raised_to_eight = power(2,8);
% 
% fwrite(s,cmdenl);
% A = fread(s);
% 
% countl = A(9) + two_raised_to_eight * A(8);
% if countl > 30000
%     disp(countl-65536)
% else
%     disp(countl)
% end
% 
% fwrite(s,cmdenr);
% B = fread(s);
% 
% countr = B(9) + two_raised_to_eight * B(8);
% if countr > 30000
%     disp(countr-65536)
% else
%     disp(countr)
% end
% 
% fclose(s);