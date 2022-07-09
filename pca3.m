clc;
clear;
close all;

data = csvread('digits.csv');
X = data(:, 1:end-1);
y = data(:, end);

m = 5;
[U, Z] = pca(X, 'NumComponents', 5);

figure;
scatter(Z(:,1), Z(:,2), 25, y, 'filled');
colormap(jet);
colorbar;
