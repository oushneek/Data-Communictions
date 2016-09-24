
%% class

clc;
v1=[0 1 0 0 1 0 1 1];
v2=[1 0 1 1 0 1 0 0];
v3=[0 1 1 0 1 0 0 1];

v=zeros;
index=1;
for i=1:1:8
    v(index)=v1(i);
    index=index+1;
    v(index)=v2(i);
    index=index+1;
    v(index)=v3(i);
    index=index+1;
end
subplot(4,1,1);stairs(v1)
subplot(4,1,2);stairs(v2)
subplot(4,1,3);stairs(v3)
subplot(4,1,4);stairs(v)