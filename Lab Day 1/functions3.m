clc
close all
figure('Name','Enrollment Number : IIT2017507','NumberTitle','Off')
subplot(3,1,1)
%Basics of plotting using matlab
%to plot for the functions :
% 1) X(t) = u(t) - r(t-3) + r(t-4)
% 2) Y(t) = r(t) - r(t-2) -2 u(t-4)
% 3) Z(t) = X(t) + 2Y(t)
t=-6:0.01:+6;
unit =@(x) max(0,sign(x));
ramp =@(x) max(0,x);
X=@(x) unit(x)-ramp(x-3)+ramp(x-4);
plot(t,X(t),'Color','[0,0.9,0.2]')
xlabel('t')
ylabel('X(t)')
title('plot for X(t) vs t')
subplot(3,1,2)
Y=@(x) ramp(x)-ramp(x-2)-2*unit(x-4);
plot(t,Y(t),'Color','[0.9,0,0.2]')
xlabel('t')
ylabel('y(t)')
title('Plot for y(t) vs. t.')
subplot(3,1,3)
Z= @(x) X(x)+2*Y(x);
plot(t,Z(t),'Color','[0.2,0,0.9]')
xlabel('t')
ylabel('Z(t)')
title('plot for Z(t) vs. t')


