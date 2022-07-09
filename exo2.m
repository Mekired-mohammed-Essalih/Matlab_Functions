function r=exo2(n)
co=0;
for i=2:n
    p= 1;
     for lo=2:n
            if mod(i,lo) == 0 && lo~=i
               p = 0;
               
            end        
     end
     
     
   if p ~=0
        co=co+1;          
   end 
   
end
r=co;
end