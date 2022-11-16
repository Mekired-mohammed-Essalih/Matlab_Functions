clc;
clear all;
close all;
a1=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
b1=[0:25];
word='famt';
code='ratn';
display(word);
display(code);
for ii=1:length(word)
    for jj=1:length(a1)
        if word(ii)==a1(jj);
            w1(ii)=b1(jj);
        end
        if code(ii)==a1(jj)
           c1(ii)=b1(jj);
        end
    end
end
newcode=w1+c1;
for ii=1:length(newcode)
    if(newcode(ii)>25);
        newcode(ii)=newcode(ii)-26;
    else
        continue
    end
end
display(newcode);
for ii=1:length(newcode)
    for jj=1:length(b1)
        if newcode(ii)==b1(jj)
           finalcode(ii)=a1(jj);
        else
            continue
        end
    end
end
display(finalcode);