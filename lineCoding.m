%NRZ-I
clear all;
bitstream=[1 0 1 1 0 0 1 0 0];
out=zeros(1,10);
out(1)=5;
outX=0:9;
index=2;
for i=1:9
    if bitstream(i)==0
        out(index)=out(index-1);
    else
        out(index)=-out(index-1);
    end
    index=index+1;
end
%bar(out,1);
figure;
subplot(4,1,1)
stairs(outX,out);
axis([0,9,-10,10]);

%NRZ-L
clear all;
bitstream=[1 0 1 1 0 0 1 0 0];
out=zeros(1,10);
out(1)=5;
outX=0:9;
index=2;
for i=1:9
    if bitstream(i)==0
        out(index)=5;
    else
        out(index)=-5;
    end
    index=index+1;
end
%figure;
subplot(4,1,2);
stairs(outX,out,'r');
axis([0,9,-10,10]);


%NRZ-Unipolar
clear all;
bitstream=[1 0 1 1 0 0 1 0 0];
out=zeros(1,10);
out(1)=5;
outX=0:9;
index=1;
for i=1:9
    if bitstream(i)==0
        out(index)=-5;
    else
        out(index)=5;
    end
    index=index+1;
end
%figure;
subplot(4,1,3);
stairs(outX,out);
axis([0,9,-10,10]);

%AMI
clear all;
bitstream=[1 0 1 1 0 0 1 0 0];
out=zeros(1,10);
out(1)=5;
outX=0:9;
index=2;
for i=2:9
    if bitstream(i)==0
        out(index)=0;
    elseif bitstream(i)==1 && bitstream(i-1)==0
        out(index)=-5;
    elseif bitstream(i)==1 && bitstream(i-1)==1
        out(index)=5;
    end
    index=index+1;
end
%figure;
subplot(4,1,4);
stairs(outX,out);
axis([0,9,-10,10])

