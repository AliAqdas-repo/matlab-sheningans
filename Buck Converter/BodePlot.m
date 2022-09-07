clc;clear all;close all;
L = 3e-3;
C = 30e-6;
R = 0.5:0.5:5;
zeta = L./R;
for i = 1:length(R)
    Gs(i) = tf([28/L/C],[1 zeta(i)/L/C 1/L/C]);
    bode(Gs(i))
    hold on
end
%%
clc;clear all;close all;
L = 3e-3;
C = 22e-6;
R = 0.5:0.5:5;
zeta = L./R;
for i = 1:length(R)
    Gs(i) = tf([28/L/C],[1 zeta(i)/L/C 1/L/C]);
    bode(Gs(i))
    hold on
end
hold off
figure(2);
zero_loc = -100; % CHOOSE THIS VALUE YOURSELF
compensator = zpk(zero_loc,0,1);
rlocus(series(compensator,Gs(end)));
%hold on
%Overshoot Line
%t = 0:10000:20000;
%plot(t,t.*exp((pi-acos(0.6))*1j));

%%
clc;clear all;close all;
L = 3e-3;
C = 22e-6;
R = 0.5:0.5:5;
%zeta = L./R;
Rin = 0.1;
for i = 1:length(R)
    Gs(i) = tf([28/L/C],[1 (1/(R(i)*C)+Rin/L) (1/L/C+Rin/R(i)/L/C)]);
    bode(Gs(i))
    hold on
end
hold off
figure(2);
zero_loc = -100; % CHOOSE THIS VALUE YOURSELF
compensator = zpk(zero_loc,0,1);
rlocus(series(compensator,Gs(end)));

% Switching Freq at -20dB aprrox 10KHz
% Gain is 0.143 for approx 15% Overshoot < 20 % Overshoot