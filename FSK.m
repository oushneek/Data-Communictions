clc;
t=0:.001:.799;
bit=[0 1 0 1 1 0 1];
f_low=10;
f_high=40;
for i =1:length(bit)
    if bit(i)==0
        y((i-1)*100+1:i*100)=3*sin(2*pi*f_low*t((i-1)*100+1:i*100));
    else
        y((i-1)*100+1:i*100)=3*sin(2*pi*f_high*t((i-1)*100+1:i*100));
    end
end
plot(y);