function r=initialisation()
n=5;
mat=[];
tab=[];
p=4;
s=0;
k=1;
ind=0;
x=[0 5 10 20 30];
y=[0 17 15 10 5];
hold on;
plot(x,y,'o');
for i=1:5
    for j=1:5
        mat(i,j)=sqrt((x(i)-x(j)).^2+(y(i)-y(j)).^2);
    end
end
disp(mat);
race=zeros(p,n+1);
for i=1:p
    temp=randperm(n);
    route=[temp,temp(1)];
    race(i,:)=route;
end
disp(race);
for j=1:4
for i=1:5
    a=race(j,i);
    b=race(j,i+1);
    s=s+mat(a,b);
    
end
tab(j,1)=j;
tab(j,2)=s;
s=0;
end
disp(tab);
mini=min(tab(:,2));
disp(mini);
for i=1:4
    if tab(i,2)==mini
        ind=tab(i,1);
    end
end
tab(ind,:)=[];
disp(tab);
mini2=min(tab(:,2));
disp(mini2);
end