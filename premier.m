function r=premier(n)

    p= 1;
     for lo=2:n
            if mod(n,lo) == 0 && lo~=n
               p = 0;
               
            end        
     end 
   
r=p;
end