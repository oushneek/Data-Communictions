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
figure;
stairs(outX,out);
axis([0,9,-10,10]);