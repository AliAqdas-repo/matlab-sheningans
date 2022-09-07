clc;clear all;close all
t = 0:5;
h = 15;
v = 10;
a = 30;
data = projectile(t,h,v,a);
plot(data.x,data.y);