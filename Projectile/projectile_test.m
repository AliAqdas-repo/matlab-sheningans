clc;clear all;close all
t = 0:5; %Time Steps to Calculate x,y Coordinates
h = 15; %Initial Height
v = 10; %Initial Velocity
a = 30; %Projectile Angle
data = projectile(t,h,v,a);
plot(data.x,data.y);
