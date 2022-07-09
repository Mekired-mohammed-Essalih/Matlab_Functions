[attrib1, attrib2, attrib3, attrib4, class] = textread('iris_data.txt', '%f%f%f%f%s', 1);
attrib = [attrib1'; attrib2'; attrib3'; attrib4']';
label = zeros(150, 1);
label(strcmp(class, 'Iris-setosa')) = 1;
label(strcmp(class, 'Iris-versicolor')) = 2;
label(strcmp(class, 'Iris-virginica')) = 3;

% %%%%%%%%%--Frequency of species attribute---%%%%%%%%%%
tabulate(label)
% %%%%%%%%%--Frequency of species attribute---%%%%%%%%%%

% %%%%%%%%%%%%%%--one-dimensional histogram---%%%%%%%%%%%
% hist(attrib4,10);
% xlabel('Petal Width'); 
% ylabel('Count');
% %%%%%%%%%%%%%%--one-dimensional histogram--%%%%%%%%%%%

% %%%%%%%%%%%%%%--two-dimensional histogram--%%%%%%%%%%%
% Pt_length_width = [attrib3,attrib4];
% hist3(Pt_length_width);
% xlabel('Petal Length');
% ylabel('Petal Width');
% zlabel('Count');
% %%%%%%%%%%%%%%--two-dimensional histogram--%%%%%%%%%%%

%%%%%%%%%%%%%%--scatter plot--%%%%%%%%%%%
Pt_length_width = [attrib3,attrib4];
index1 = find(label == 1);
index2 = find(label == 2);
index3 = find(label == 3);
Pt_length_width1 = Pt_length_width(index1,:);
Pt_length_width2 = Pt_length_width(index2,:);
Pt_length_width3 = Pt_length_width(index3,:);

plot(Pt_length_width1(:,1), Pt_length_width1(:,2), 'bx');
hold on;
plot(Pt_length_width2(:,1), Pt_length_width2(:,2), 'g+');
hold on;
plot(Pt_length_width3(:,1), Pt_length_width3(:,2), 'ro');

hl = legend('setosa','versicolor','virginica');
set(hl,'Orientation','vertical');

xlabel('Petal Length');
ylabel('Petal Width');