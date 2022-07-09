clc;
clear;
close all;

[X, y] = iris_dataset();

X = X';
y = vec2ind(y)';

m = 2;

[U, Z]= pca(X, 'NumComponents', m);

figure;
scatter(Z(:,1), Z(:,2), 25, y, 'filled');
colormap(jet);
