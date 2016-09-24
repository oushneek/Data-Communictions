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
figure;
stairs(outX,out,'r');
axis([0,9,-10,10]);