clc
close all
x=-2:0.01:2;
figure('Name','Enrollment Number : IIT2017507','NumberTitle','Off')

subplot(3,1,1)
u=zeros(size(x));
for i=1:1:length(x)
    if x(i)>=-1
        u(i)=1;
    else
        if(x(i)<-1)
            u(i)=0;
        end
    end
end
plot(x,u,'blue')
xlabel('t')
ylabel('u(t+1)')
title('Plot for u(t+1) vs t')
subplot(3,1,2)
c=zeros(size(x));
for j=1:1:length(x)
    if(x(j)>=0)
        c(j)=sin(2*pi*x(j));
    else
        if(x(j)<0)
            c(j)=0;
        end
    end
end
plot(x,c,'Color','[0.7,0.1,0.1]')
xlabel('t')
ylabel('sin(2pi*t)*u(t)')
title('Graph for sin(kt)*u(t) vs t')
subplot(3,1,3)
for j=1:1:length(x)
    if(x(j)>=0)
        c(j)=cos(2*pi*x(j));
    else
        if(x(j)<0)
            c(j)=0;
        end
    end
end
plot(x,c,'Color','[0.2,0.9,0.9]')
xlabel('t')
ylabel('cos(2pi*t)*u(t)')
title('Graph for cos(kt)*u(t) vs t')


