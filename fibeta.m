function r=fibeta( n)
a=1;
b=1;
if n < 2
r=1;
else
for i=2:n
r=a+b;
a=b;
b=r;
end
end
end 
    
    

     