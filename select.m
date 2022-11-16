function r=select(mat)
global max1;
global max2;
tab= [];
t=[];
vect=[];
tab=mat;
text='';
table=[];
table2=[];
table4=[];
table5=[];
table6=[];
s=0;
sr=0;
table3=[];
c2=0;
c1=0;
for i=1:4
    t=tab(i,:);
    text=num2str(t);
    dec=bin2dec(text);
    vect(i,1)=i;
    vect(i,2)=dec*dec;

end
for i=1:4
    s=s+vect(i,2);
end
disp('s=');
disp(s);
for i=1:4
    prm=vect(i,2)/s;
disp(['probabilite de:',i]);
disp(prm);
table3(i,1)=prm;
end
l=length(table3);
disp(l);
disp('table3:');
disp(table3);
for i=1:4
    big=max(table3);
    table4(1,i)=big;
    for j=1:4
    if table3(j,1)==big
        table3(j,1)=0;
    end
    end
end
disp('table4:');
disp(table4);
for i=1:4
    for j=1:4
        sr=sr+table4(1,j);
    end
    table6(1,i)=table4(1,i);
    table4(1,i)=0;
    table5(1,i)=sr;
    sr=0;
end
disp('table5:');
disp(table5);
rnd1=rand();
disp('random1');
disp(rnd1);
if (rnd1>0)&&rnd1<=table5(1,4)
    c1=table6(1,4);
end
if (rnd1>table5(1,4))&&rnd1<=table5(1,3)
    c1=table6(1,3);
end
if (rnd1>table5(1,3))&&rnd1<=table5(1,2)
    c1=table6(1,2);
end
if (rnd1>table5(1,2))&&rnd1<=table5(1,1)
    c1=table6(1,1);
end
c1=round(c1*s);
c1=sqrt(c1);
disp('c1=');
disp(c1);
rnd2=rand();
disp('random2:');
disp(rnd2);
if (rnd2>0)&&rnd2<=table5(1,4)
    c2=table6(1,4);
end
if (rnd2>table5(1,4))&&rnd2<=table5(1,3)
    c2=table6(1,3);
end
if (rnd2>table5(1,3))&&rnd2<=table5(1,2)
    c2=table6(1,2);
end
if (rnd2>table5(1,2))&&rnd2<=table5(1,1)
    c2=table6(1,1);
end
c2=round(c2*s);
c2=sqrt(c2);
disp('c2=');
disp(c2);

%m=max(max(vect));
%disp(vect);
%for i=1:4
 %   if vect(i,2)==m
  %      ind1=vect(i,1);
   % end
%end
%vect(ind1,:)=[];
%m2=max(max(vect));
%disp(m);
%disp(m2);
%max1=m;
%max2=m2;
%for i=1:3
 %   if vect(i,2)==m2
  %      ind2=vect(i,1);
   % end
%end
%a=sqrt(m);
%b=sqrt(m2);
%disp(a);
%disp(b);
max1=c1*c1;
max2=c2*c2;
c=dec2bin(c1,5);
d=dec2bin(c2,5);
table=[c;d];
for i=1:2
    for j=1:5
        k=char(table(i,j));
     table2(i,j)=k-48;
     
    end
end
disp(table2);

r=table2;

end