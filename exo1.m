clear all;
clc;
n=input('donner la valeur de N:');
   for i=1:100
       tic
       fibeta(n)
       res(i)=toc
   end
   plot(res)
tic
toc