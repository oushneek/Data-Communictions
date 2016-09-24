
%% class

clc;
clear all;

t=0:.001:.999;
f1=15;
f2=20;
f3=25;

u1=2*sin(2*pi*f1*t);
u2=2*sin(2*pi*f2*t);
u3=2*sin(2*pi*f3*t);

fc1=50;
fc2=100;
fc3=150;

v1=(u1+10).*sin(2*pi*fc1*t);
v2=(u2+10).*sin(2*pi*fc2*t);
v3=(u3+10).*sin(2*pi*fc3*t);

v=v1+v2+v3;

%plot(t(1:50),v(1:50));

Fs=400;
dF=1/Fs;
f=-Fs/2:dF:Fs/2-dF;

plot(f,abs(fftshift(2.*fft(v)/length(t))));