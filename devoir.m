tab=randi([1,5000],1,20);
spmd
    switch labindex;
        case 1
          a=tab(1:5);
          a=max(a);
        case 2
          b=tab(6:10);
          b=max(b);
        case 3
          c=tab(11:15);
          c=max(c);
        case 4
          d=tab(16:20);
          d=max(d);
    end
    
end
vec=[a{1},b{2},c{3},d{4}];
 s=max(vec);
 disp(tab);
 disp('max=');
 disp(s);
 