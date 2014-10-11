clear 
clc
format long e

a = @(x)x-2;
f1 = @(x)a(x)^4;

f2 = @(x)x*x*x*x-8*x*x*x+24*x*x-32*x+16;

d=10^-3;
gridSize = 1000;
grid = linspace(2-d,2+d, gridSize);

v1 = arrayfun(f1, grid);
v2 = arrayfun(f2, grid);

figure
plot(grid,v1,'r',grid,v2,'g')


h=d/500;
x=@(k)2-d+k*h;
maxk = @(k)abs(f1(k) - f2(k));
vk = arrayfun(maxk, grid);
figure
plot(grid,vk)
