input=[0 -5 5 0 -5 0 0 0 -5 5 0 5 -5 -5 0 5];
out = zeros(1,16);
index=1;
flag=5;
count=0;
for i=1:16
    if input(i)==0
       count=count+1;
       out(index)=0;
       index=index+1;
    elseif input(i)==5 || input(i)==-5
        if count==3 && input(i)==flag
            for j=index:1:index+5
                out(j)=0;
            end
            count=0;
            index=index+5;
        else
            out(index)=1;
            index=index+1;
            flag=-flag;
            count=0;
        end
    end
    if index>16
        break;
    end
end
%%length(out)
%%bar(out,1);
figure;
outx=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16];
out
stairs(outx,out);
axis([0,20,-10,10]);