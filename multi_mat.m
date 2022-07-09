mat1=randi(5,4,4);
mat2=randi(5,4,4);
mat3=randi(0,4,4);
for i=1:n
    for j=1:n
        
        s=0;
        s=s+(mat1(i,j)*mat2(j,i));
        mat3(i,j)=s;
    end
end
        
        