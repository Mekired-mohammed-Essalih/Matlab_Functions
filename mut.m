function r=mut(table)
a=[];
a=table;
for i=1:2
    random=rand();
    if random<0.02
        random2=randi([1 5]);
        disp('ramdom2');
        disp(random2);
        if a(i,random2)==0
            a(i,random2)=1;
        else
            a(i,random2)=0;
        end
        
    end
end
for i=1:2
    for j=1:5
     r=a;   
    end
end
disp('r=');
disp(r);

end