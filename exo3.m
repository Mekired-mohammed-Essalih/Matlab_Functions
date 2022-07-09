clc 
close all;
f=fopen('Myciel3.txt','r');
N=fscanf(f,'%5d',[1,1]);
M=fscanf(f,'%5d',[1,1]);
MatAdj=zeros(N,M);
R=fscanf(f,'%5d',[2,M]);
for i=1:M
    MatAdj[R(1,i),R(2,i)]
end