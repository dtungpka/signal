clear;clc;close all;

E = 1; T = 1;
w0 = 2*pi/T;

t = -2*T:0.01:2*T;

x0 = 0.5*E;
x1 = x0 + (2*E / pi) * cos(w0*t);
x2 = x1 - (2*E / pi) * cos(3*w0*t)/3;
x3 = x2 + (2*E / pi) * cos(5*w0*t)/5;

figure(1);
plot(t,x0,'k',t,x1,'r',t,x2,'g',t,x3,'b');
legend('x0','x1','x2','x3');
title('Fourier Series of a Square Wave');
xlabel('t');
ylabel('x(t)');
grid on;


N = [5 10 20 30 40 50 100 200 500 5000];



% Do x(t) la ham chan --> he so bn = 0
figure(2);

for i = 1:length(N)
    x=0.5*E;
    for n=1:N(i)
        an=(E/(n*pi))*(sin(0.5*pi*n)-sin(1.5*pi*n));
        x=x+an*cos(w0*n*t);
    end
    subplot(5,2,i);
    plot(t,x);
    title(['N = ' num2str(N(i))]);
    axis([-2 2 -.2 1.2]);
    grid on;
end



%% Ex1.b)
X0=0.5*E;
for n=1:2:11
    X(n)=0.5*(E/(n*pi))*(sin(0.5*pi*n)-sin(1.5*pi*n));
end
for n=2:2:10
    X(n)=0;
end
figure;
subplot(211)
stem(0:11,abs([X0 X]));title('dac trung bien do')
subplot(212)
stem(0:11,angle([X0 X]));title('dac trung pha')
ylabel('radian')

