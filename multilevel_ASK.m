clc;
clear all;
t=0:.001:.799;
bit=[0 0 0 1 1 0 1 1];
f=40;

for i =1:2:length(bit)-1
    if bit(i)==0 && bit(i+1)==0
        y((i-1)*100+1:i*100)=2*sin(2*pi*f*t((i-1)*100+1:i*100));
    elseif bit(i)==0 && bit(i+1)==1
        y((i-1)*100+1:i*100)=4*sin(2*pi*f*t((i-1)*100+1:i*100));
    elseif bit(i)==1 && bit(i+1)==0
        y((i-1)*100+1:i*100)=6*sin(2*pi*f*t((i-1)*100+1:i*100));
    elseif bit(i)==1 && bit(i+1)==1
        y((i-1)*100+1:i*100)=8*sin(2*pi*f*t((i-1)*100+1:i*100));
    end
end
plot(y,'m');