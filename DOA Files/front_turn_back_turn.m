cmd2=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 01,-130];
cmd1=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 02,-131];
cmd3=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 03,-132];
cmd4=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 04,-133];
cmd6=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 148, 06,-135];

cmdm=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 144, 1,-126];
cmdlv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 154, 0,-135];
cmdrv=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 155, 0,-136];
cmdsafe=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 137, 0,-118];
cmden=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 140, 0,-121];

t_turn1 = 6.7;
t_straight = 3.7;
pwm_wheels_straight = 70;
pwm_r_wheel_turn = 90;
pwm_l_wheel_turn = 60;

fwrite(s,cmdsafe)
fwrite(s,cmdm)

for j=1:10
    
    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, pwm_wheels_straight,(-130-pwm_wheels_straight)];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, pwm_wheels_straight,(-131-pwm_wheels_straight)];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmden)
    fwrite(s,cmd2)
    pause(t_straight)
    fwrite(s,cmd6)
    pause(1)

    cmdl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 149, pwm_l_wheel_turn,(-130-pwm_l_wheel_turn)];
    cmdr=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 150, pwm_r_wheel_turn,(-131-pwm_r_wheel_turn)];
    fwrite(s,cmdsafe)
    fwrite(s,cmdm)
    fwrite(s,cmdl)
    fwrite(s,cmdr)
    fwrite(s,cmden)
    fwrite(s,cmd2)
    pause(t_turn1)
    fwrite(s,cmd6)
    pause(2)
    
end