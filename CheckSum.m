% clear all;
% clc;

%sender
% a = [8 10 13 5];
% sum1=sum(a);
% a(length(a)+1)=sum1*-1;

%receiver
% if sum(a)==0
	% disp('No error');
	% a(1:length(a)-1)
	% else
	% disp('Error !! Please send again');
% end

%sir er code-->
clear all;
clc;

a=[8 10 13 5];

sum1=sum(a);
checksum=15-mod(sum1,15);
b=[a checksum];
syndrome=mod(sum(b),15);

if syndrome==0
	data=b[1:length(b)-1];
else
	disp('Error !!');
end