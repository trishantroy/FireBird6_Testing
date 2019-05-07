cmdenl=[hex2dec('7E'),00,10, 01, 00, 00, 00 , 00, 78, 69, 88, 146, 90,-217];
cmdenr=[hex2dec('7E'), 00, 10, 01, 00, 00, 00 , 00, 78, 69, 88, 147, 90,-218];

two_raised_to_eight = power(2,8);

for i=1:10
    fwrite(s,cmdenl);
    A = fread(s);

    count = A(9) + two_raised_to_eight * A(8);
    disp(count);

    fwrite(s,cmdenr);
    B = fread(s);

    count = B(9) + two_raised_to_eight * B(8);
    disp(count2);
    pause(1);
end