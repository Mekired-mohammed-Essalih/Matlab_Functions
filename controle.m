
mat=[9,2,3,13,11,7;5,11,10,8,18,4;4,14,15,1,13,10];
ad=distributed(mat);
spmd
    a=getLocalPart(ad);
    b=a+labindex()*2;
    c=size(a);
end
disp(a{1});
disp(a{3});
disp(b{4});
disp(c{2});

