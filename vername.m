function r=vername()

t=[1 0 0 0 1 0 1 0 1];
t1=[1 0 0 1 0 1 0 0 1];

t2=[];
l=length(t);
for i=1:l
if t(i)==t1(i)
    t2(i)=0;
else
    t2(i)=1;
end

end
r='';
disp(t2);
end