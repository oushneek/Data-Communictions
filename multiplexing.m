
%% class

clear all;
clc;
Fs = 400;
dt = 1/Fs;
t=0:dt:2-dt;
size(t)
N = size(t,2);
N

f = [15 20 25];
u1=  2*sin(2*pi*f(1)*t);
u2 = 2*sin(2*pi*f(2)*t);
u3 = 2*sin(2*pi*f(3)*t);

fc = [50 100 150];
v1 = (u1+10).*sin(2*pi*fc(1)*t);
v2 = (u2+10).*sin(2*pi*fc(2)*t);
v3 = (u3+10).*sin(2*pi*fc(3)*t);
 
v = v1+v2+v3;

%plot(t,v);
dF = Fs/N;
f = - Fs/2:dF:Fs/2-dF;
x = fft(v);
plot(f,abs(fftshift(2*x/N)))