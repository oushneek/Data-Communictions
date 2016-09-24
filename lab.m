Fs = 100;
dt = 1/Fs;
t = 0:dt:2-dt;
N = size(t, 2);


%f1 = 5;
%f2 = f1*3;
%f3 = f1*9;
%a1 = 3;
%a2 = a1/3;
%a3 = a1/9;

%v1 = a1 * 2*sin(2*pi*f1*t);
%v2 = a2 * 2*sin(2*pi*f2*t);
%v3 = a3 * 2*sin(2*pi*f3*t);

%v = v1+ v2+ v3;

v = 2*sin(2*pi*Fs*t);

v(1:50) = 1;
v(51:100) = 0;
v(101:150) = 1;
v(151:200) = 0;
plot(t, v);

dF =Fs/N;
f = -Fs/2:dF:Fs/2-dF;
x = fft(v);
plot(f, abs(fftshift(2*x/N)));


