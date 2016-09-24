clc;
clear all;
bit=[0 1 0 1 1 0 1];
len=length(bit);
t=0:.001:0.799;
f=40;
for i=1:1:len
    if bit(i)==0
        y(((i-1)*100+1):i*100)=20*sin(2*pi*f*t(((i-1)*100+1):i*100));
    elseif bit(i)==1
        y(((i-1)*100+1):i*100)=60*sin(2*pi*f*t(((i-1)*100+1):i*100));
    end
end

plot(y);