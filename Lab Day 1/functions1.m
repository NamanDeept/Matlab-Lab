clc
clear all
close all
x=-2:0.01:2;
figure('Name','Enrollment Number : IIT2017507','NumberTitle','Off')
subplot(3,1,1)
set(0,'defaultfigurecolor',[.4 .1 .5])
whitebg([1,.99,1])
%unit function u(t)
v=zeros(size(x));
for i=1:1:length(x)
    if x(i)>=0
        v(i)=1;
    else
        if x(i)<0
            v(i)=0;
        end
    end
end
plot(x,v,'Color','[.6,.3,.9]')
xlabel('t')
ylabel('u(t)')
title('Plot for u(t) vs t')
subplot(3,1,2)
%ramp function r(t)
r=zeros(size(x));
for j=1:1:length(x)
    if x(j)>=0
        r(j)=(x(j));
    else
        if x(j)<0
            r(j)= 0;
        end
    end
end
plot(x,r,'Color','[.8,.4,.1]')
xlabel('t')
ylabel('r(t)')
title('Plot for r(t) vs. t')
subplot(3,1,3)
plot(x,sin(2*pi*x),'Color','[0,.9,.6]')
title('Plot for sin(kt) vs t.')
xlabel('t')
ylabel('sin(2pi*t)')



    