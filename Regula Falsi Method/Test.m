clc
clear all

f = [-1/2304,0,1/64,0, -1/4, 0, 1];
a = 2; b = 3;
iter = 100;
polyval(f,b)
[x, n] = regula_falsi_method(f, a, b, iter);
disp(x);