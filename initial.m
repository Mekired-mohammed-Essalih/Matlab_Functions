function r= initial()
qs=[];
qc=[];
f=[];
for i=1:6
r=randi([2 10]);
r2=randi([6 8]);
v1=randi([6 8]);
v2=randi([6 8]);
qs(i,1)=r;
qs(i,2)=r2;
qs(i,3)=v1;
qs(i,4)=v2;
end
disp(qs);

end