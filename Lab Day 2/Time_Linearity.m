%{
   Implementing time linearity of the system in matlab.
   The System is said to show time linearity if it follows the principle of
   superposition which is law of additivity and law of homogeneity.
   From the definition of time linearity : We can say that the system is
   time linear if :
   1) System is only time dependent or the linearity is independent of time scaling
   2) System shifts the amplitude of the input.
   3) Even if the amplitude shifted is dependent of time.
%}
%{
   Consider 2 signals x1 and x2 as sine and cosine wave signals.
   Consider our System allowing both amplitude shifting (which is time
   dependent) and also the time scaling on the input.
   Let system  = exp(t) input(t*t + cos(t)) where exp(t) shows the
   amplitude scaling and cos(t) + t*t shows the time scaling on the input.
%}
clc;
figure('Name','Enrollment Number : IIT2017507','NumberTitle','Off')
 sys1 = @(x) (x.*x + cos(x));
 %sys1 = time scaling system
 sys2 = @(x) exp(x);
 %sys2 = amplitude scaling system
 % Law of Additivity.
 t  = -6:0.01:6;
 x1 = @(x) cos(x);
 x2 = @(x) sin(x);
 subplot(4,1,1);
 y1 = @(x) sys2(x).*x1(sys1(x));
 y2 = @(x) sys2(x).*x2(sys1(x));
 plot(t,y1(t)+y2(t));
 xlabel('t');
 ylabel('y1(t)+y2(t)');
 subplot(4,1,2);
 y3 = @(x) sys2(x).*x1(sys1(x))+sys2(x).*x2(sys1(x));
 plot(t,y3(t));
 xlabel('t');
 ylabel('y3(t)');
 %In the above plot both the graphs are found to be same hence the system
 %obeys law of additivity.
 %The law of homogeneity
 subplot(4,1,3);
 z =@(x) tan(x);
 z1 =@(x) (5.*sys2(x).*z(sys1(x)));
 z2 =@(x) (5.*sys2(x).*z(sys1(x)));
 plot(t,z1(t));
  xlabel('t');
 ylabel('z1(t)');
 subplot(4,1,4);
 plot(t,z2(t));
  xlabel('t');
 ylabel('z2(t)');