function r=rsa(n,m)
p=n;
q=m;
n=p*q;
f=(p-1)*(q-1);
for i=1:f
    p=premier(i);
    if p==1
        e=i;
    end
end
disp(e);
for i=1:20
    prod=e*i;
    if (mod(prod,f))==(mod(1,f))
        d=i;
        break;
    end
end
pubcle=[n e];
privcle=[n d];
disp(pubcle);
disp(privcle);
end