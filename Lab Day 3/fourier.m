clc;
clear;
close all;
%Question. Implement Fourier transform for the given signal a square wave signal
% with amplitude given as 1 and the interval or the total time taken for
% one complete cycle t0 is given as 2.
% To compute the fourier transform of the given function for the values of
% n as 1,3,5,7,13 and 17.

figure('Name','Enrollment Number : IIT2017507','NumberTitle','Off')
%interval is given  2
t0 = 2;
syms t;
a0 = (1/t0)*int(1,t,0,2);
t1 = 0:0.01:10;
%Computing all a_i and b_i coefficients of fourier
a = zeros(17);
b = zeros(17);
%since the limit of the fourier n is 17.
for i=1:1:17
    syms t;
    a(i) = 2*(2/t0)*int(cos(pi*i*t),t,0,1);
end

for j=1:1:17
    syms t;
    b(j) =2*(2/t0)*int(sin(pi*j*t),t,0,1);
end
%Construct square wave for the given function
y = square(pi*t1)+1;
var = 1;
%Fourier transform for the given functions for the specific values of n
for n = [1 3 5 7 13 17]
  sum = a0;
  for i=1:1:n
    sum = sum + (a(i)*cos(pi*i*t1))+ (b(i)*sin(pi*i*t1));
  end
 subplot(3,2,var);
 plot(t1,sum);
 hold on;
 plot(t1,y);
 legend('Fourier','Square wave');
 xlabel('t');
 ylabel('F(t)');
 var= var+1;
end

