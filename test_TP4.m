spmd
switch labindex;
    case 1
    a=randi(8,4,4);
    x=randi(8,4,4);
    labSend(a,2);
    labSend(x,3)
    
    case 2
   b= labReceive(1);
    s=sum(sum(b));
    m=max(max(b));
    labSend(s,4);
    labSend(m,4);
    
    case 3
    c=labReceive(1);
    d=mat(c);
    z=sum(sum(d));
    labSend(z,4);
    case 4
    disp(labReceive(2));
    disp(labReceive(2));
    disp(labReceive(3));
end
end

     