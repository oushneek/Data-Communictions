input=[0 1 1 0 1 0 0 0 0 0 0 0 0 1 0 1];

out = zeros(1,17);
flag=5;
out(1)=5;
index=2;
count=0;
for i=1:16
    if input(i)==0
       count=count+1;
       if count==1 || count==2 || count==3
            out(index)=0;
            index=index+1;
       elseif count==4
            out(index)=flag;
            flag=-flag;
            index=index+1;
       elseif count==5
           out(index)=flag;
           flag=-flag;
           index=index+1;
       elseif count==6
           out(index)=0;
               index=index+1;
       elseif count==7
           out(index)=-flag;
               index=index+1;
       elseif count==8
           out(index)=flag;
           flag=-flag;
           index=index+1;
           count=0;
       end
    else
       out(index)=-flag;
       flag=-flag;
       count=0;
       index=index+1;
    end
end
length(out)
%%bar(out,1);
figure;
outx=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17];
out

stairs(outx,out);
axis([0,20,-10,10]);