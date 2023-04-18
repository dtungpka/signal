clear;clc;close all;

% delta fuction
n = -10:10;
delta = [zeros(1,10) 1 zeros(1,10)];
subplot(2,4,1);
stem(n,delta);

% dirac function
n = 0:50;
y = dirac(n)
plot(y,n)

% unit function u(t)
t= -20:0.0001:20;
y=heaviside(t);
t1 = t-5;
subplot(2,4,2)
plot(t,y,'Linewidth',3);
axis([-20 20 -2 2]);

% time shifting t
subplot(2,4,3)
plot(t1,y);
axis([-30 20 -2 2]);

% time shifting n
n=0:4;
x=[0 1 2 3 3];
subplot(2,4,4);
stem(n,x);
xlabel('Time Sample');
ylabel('Amplitude');
title('Original sequence');
axis([-2 8 0 4]);
m=n-2;

subplot(2,4,5);
stem(m,x);
xlabel('Time Sample');
ylabel('Amplitude');
title('Time shifted');
axis([-2 8 0 4]);

%expotential signal
n1=-50:0.5:50;
n= n1*-1
alpha=0.9;
xn=alpha.^n;
subplot(2,4,6);
stem(n,xn)
xlabel('Time Sample');
ylabel('Amplitude');
title('Exp signal');

% ramp unit signal
seq = 8;
slope = 1;
time = 0:seq-1;
subplot(2,4,7);
plot(time, time*slope)
xlabel('Time Sample');
ylabel('Amplitude');
title('ramp signal');
grid on

% discrete ramp
n = -20:20;
ramp_n = (n>=0).*n;
subplot(2,4,8);
stem(n,ramp_n)
axis([-20 20 -5 25])
xlabel('Time Sample');
ylabel('Amplitude');
title('ramp discrete');
grid on
