 
tab=randi(20,1,1000000);
tic
s=0;
parfor i=1:1000000
s=s+tab(i);
end
toc
s