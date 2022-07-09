mat=randi(1000,4,4);
spmd
    switch labindex;
        case 1
            m=max(max(mat));
            labSend(m,4);
            disp(labReceive(4));
        case 2
            co=0;
            for i=1:4
                for j=1:4
                 if premier(mat(i,j))==1; 
                     co=co+1;
                 end
                end
            end
            labSend(co,4);
            disp(labReceive(4));
        case 3
            s=sum(sum(mat));
            labSend(s,4);
            disp(labReceive(4));
        case 4
            disp(labReceive(1));
            disp(labReceive(2));
            disp(labReceive(3));
            labSend('bien recu',1);
            labSend('bien recu',2);
            labSend('bien recu',3);
    end
end