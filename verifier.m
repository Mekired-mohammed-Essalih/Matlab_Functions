
function v = verifier( MatAdj,X,N)
v=1;
for i=1:N
for j=1:N
if MatAdj(i,j)==1
if X(i)==X(j)
v=0;
end
end
end
end