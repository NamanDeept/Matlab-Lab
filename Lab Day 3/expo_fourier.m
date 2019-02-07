clc
clear 
close all
%Question. Implement Exponential Fourier transform for the given signal a square wave signal
% with amplitude given as 1 and the interval or the total time taken for
% one complete cycle t0 is given as 2.
% To compute the fourier transform of the given function for the values of
% n as 1,3,5,7,13 and 17.

figure('Name','Enrollment Number : IIT2017507','NumberTitle','Off')
%interval is given  2
time = 0:0.01:10;
syms n t
c= 1:1:17;
d=1:1:17;
y = square(pi*time)+1;
for j=1:1:17
    c(j)=(1/(1i*pi*j))*(1-exp(-1i*j*pi));
end
for j = 1:1:17
      d(j)=(-1/(1i*pi*j))*(1-exp(1i*j*pi));
end
%c is the vector for the positive values while d is the vector for the negative values..
temp=1;
for i=[1,3,5,7,13,17]
    sum = 0;
    for j=1:1:i
       sum = sum + c(j)*exp(1i*j*pi*time);
    end
    for j =1:1:i
        sum = sum + d(j)*exp(-1i*j*pi*time);
    end
    subplot(3,2,temp);
    plot(time,1+sum);
    hold on;
    plot(time,y);
    temp = temp+1;
    legend('Fourier','Square');
end
    