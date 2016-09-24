


% very very important for lab final



clear all;
clc;
a = [1 0 1 1];
r0=mod(a(3)+a(2)+a(1),2);
r1=mod(a(4)+a(3)+a(2),2);
r2=mod(a(2)+a(1)+a(4),2);

a = [1 0 1 1];
b=[a r2 r1 r0];
s0=mod(b(3)+b(2)+b(1)+b(5),2)
s1=mod(b(4)+b(3)+b(2)+b(6),2)
s2=mod(b(2)+b(1)+b(4)+b(7),2)

syndrome=s2*4+s1*2+s0;

switch syndrome
    case 0
        disp('No error !!');
        data=b(1:4)
    case 1
        disp('Error q0!!');
        data=b(1:4)
    case 2
        disp('Error q1!!');
        data=b(1:4)
    case 3
        disp('Error b2!!');
        data=b(1:4);
        data(3)=mod(b(3)+1,2);
        data
    case 4
        disp('Error q2!!');
        data=b(1:4)
    case 5
        disp('Error b0!!');
        data=b(1:4);
        data(1)=mod(b(1)+1,2);
        data
    case 6
        disp('Error b3!!');
        data=b(1:4);
        data(4)=mod(b(4)+1,2);
        data
    case 7
        disp('Error b1!!');
        data=b(1:4);
        data(2)=mod(b(2)+1,2);
        data
end