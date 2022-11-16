function r= mutation(array3)
t1='';
t2='';
a=array3(1,:);
b=array3(2,:);
c=num2str(a);
d=num2str(b);
c=bin2dec(c);
d=bin2dec(d);
fa=c*c;
fb=d*d;
disp(fa);
disp(fb);
global max1;
disp('max1=');
disp(max1);
global max2;
disp('max2=');
disp(max2);
global mat;
if fa>max1
    t1=dec2bin(sqrt(fa),5);
    for i=1:4
        val=mat(i,:);
        valstr=num2str(val);
        valdec=bin2dec(valstr);
        valdec=valdec*valdec;
        if valdec==max1
            for j=1:5
               mat(i,j)=t1(j)-48; 
            end
        end
    end
end
if fb>max2
    t2=dec2bin(sqrt(fb),5);
    for i=1:4
        val=mat(i,:);
        valstr=num2str(val);
        valdec=bin2dec(valstr);
        valdec=valdec*valdec;
        if valdec==max2
            for j=1:5
               mat(i,j)=t2(j)-48; 
            end
        end
    end
end

end 