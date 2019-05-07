cmd2=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 01,-130];
cmd1=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 02,-131];
cmd3=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 03,-132];
cmd4=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 04,-133];
cmd6=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 06,-135];

cmdm=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 144, 1,-126];
cmdlv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 154, 00,-135];
cmdrv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 155, 00,-136];
cmdsafe=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 137, 0,-118];
cmdenl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 146, 90,-217];
cmdenr=[hex2dec('7E'), 00, 10, 01, 00, 00, 00 , 00, 78, 69, 88, 147, 90,-218];
cmden=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 140, 0,-121];

t2=4.61;

fwrite(s,cmdsafe)
fwrite(s,cmdm)
fwrite(s,cmden)

for i=1:4
%     cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 100,-220];
%     cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 105,-221];
%     fwrite(s,cmdsafe)
%     fwrite(s,cmdm)
%     fwrite(s,cmdl)
%     fwrite(s,cmdr)
%     fwrite(s,cmd2)
%     pause(5)
%     fwrite(s,cmd6)
%     pause(2)

    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, 128,-220];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, 100,-221];

    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmd3)
    pause(t2)
    fwrite(s,cmd6)
    pause(2)
end

fwrite(s,cmdenl);
A = fread(s);
count=0;
for c=6:9
    if A(c)~=0
        count = count + power(2,8*(9-c))*A(c);
    end
end
disp(count);

fwrite(s,cmdenr);
B = fread(s);

count2=0;
for c=6:9
    if B(c)~=0
        count2 = count2 + power(2,8*(9-c))*B(c);
    end
end
disp(count2);