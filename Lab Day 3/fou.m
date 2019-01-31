clc;
clear;
close all;
syms t n;
n = 1:18;
%given t0 = 2 and computed value of a0 =1;
a0 = 1;
an =2* int(1*cos(pi*n*t),t,0,1);
bn =2* int(1*sin(pi*n*t),t,0,1);
t1 = 0:0.01:10;
y = (square(pi*t1)+1);
tmp=1;
for i = [1 3 7 17]
    sum=0;
    for j =1:i
        sum = sum + (an(j))*cos(pi*n(j)*t1) + (bn(j))*sin(pi*n(j)*t1);
    end
    subplot(4,1,tmp);
    plot(t1,1+sum);
    hold on
    plot(t1,y);
    tmp=tmp+1;
end


   

