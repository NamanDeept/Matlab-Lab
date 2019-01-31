clc;
clear;
close all;
syms t n;
cn = int(1*exp(-pi*n*t*i),t,0,1);
tmp = 1;
t1 = 0:0.01:10;
for i = [1 3 7 17]
    sum=0;
    for k =1:i
        sum = sum + ((cn(k))*cos(pi*n(k)*t1) + (cn(k))*sin(pi*n(k)*t1)*i);
    end
    subplot(4,1,tmp);
    stem(t1,abs(1+sum));
    hold on;
    stem(t1,angle(1+sum));
    tmp=tmp+1;
end
