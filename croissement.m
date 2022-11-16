function r=croissement(table)
random=rand();
disp('pc=');
disp(random);
if ((random>0)&&(random<=0.7))
r=randi([1 4]);
l=5-r;
disp('random number');
disp(r);
disp(l);
array=[];
array2=[];
array3=[];
for i=1:r
   array(1,i)=table(1,i); 
   array2(1,i)=table(2,i);
   
   table(1,i)=0;
   table(2,i)=0;
end
disp('la parie qui changer:');
disp(array(1,:));
disp(array2(1,:));
disp('table after cut part change:')
disp(table);

x=zeros(1,l);
y=zeros(1,l);
z=cat(2,array,x);
w=cat(2,array2,y);
disp('part chanfe with zeros:')
disp(z);
disp(w);
disp('apres croissement:');
row=table(2,:)+z;
row2=table(1,:)+w;
disp(row);
disp(row2);
array3=[row;row2];
disp('array3:');
disp(array3);
r=array3;
else
    r=table;
    disp('no croissement:');
    disp(table);
end
end