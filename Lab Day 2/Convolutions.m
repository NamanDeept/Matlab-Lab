clc;
close all;
%implementing convolution for various signals
%1. Convolution of X(t)=u(t-3)-u(t-5) with Y(t)=u(t)exp(-t)
%2. Convolution of h(t)=u(t-1) with g(t)=u(t-3)
%3. Convolution of x(t)=u(t-1)-u(t+1) with itself

figure('Name','Enrollment Number : IIT2017507','NumberTitle','Off')
t = -6:0.01:6;
%defining functions
unit = @(x) max(0,sign(x));
expo = @(x) exp(x);

X = @(x) unit(x-3)-unit(x-5);
Y = @(x) unit(x).*expo(-x);
conv1 = @(x) conv(X(x),Y(x));

h = @(x) unit(x-1);
g = @(x) unit(x-3);
conv2 = @(x) conv(h(x),g(x));

s = @(x) unit(x-1)-unit(x+1);
conv3 = @(x) conv(s(x),s(x),'same');

subplot(3,3,1);
plot(t,X(t),'Color','[0,0.6,0.6]');
xlabel('t');
ylabel('X(t)');
title('X(t) vs t');

subplot(3,3,2);
plot(t,Y(t),'Color','[0.6,0.6,0]');
xlabel('t');
ylabel('Y(t)');
title('Y(t) vs t');

subplot(3,3,3);
plot(conv1(t),'Color','[0.6,0,0.6]');
xlabel('t');
ylabel('Conv(X,Y)');
title('conv1(t) vs t');

subplot(3,3,4);
plot(t,h(t),'Color','[0,0.6,0.6]');
xlabel('t');
ylabel('h(t)');
title('h(t) vs t');

subplot(3,3,5);
plot(t,g(t),'Color','[0.6,0.6,0]');
xlabel('t');
ylabel('g(t)');
title('g(t) vs t');

subplot(3,3,6);
plot(conv2(t),'Color','[0.6,0,0.6]');
xlabel('t');
ylabel('conv(h,g)');
title('conv2(t) vs t');

subplot(3,3,7);
plot(t,s(t),'Color','[0,0.6,0.6]');
xlabel('t');
ylabel('s(t)');
title('s(t) vs t');

subplot(3,3,8);
plot(conv3(t),'Color','[0.6,0,0.6]');
xlabel('t');
ylabel('conv(s,s)');
title('conv3(t) vs t');
