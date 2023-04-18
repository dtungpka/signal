clc; clear; close all;

t = -5:0.001:5;

xt = exp(-abs(t));

figure(1)
subplot(2,1,1)
plot(t,xt)
title('x(t) = e^{-|t|}')
xlabel('t')
ylabel('x(t)')
grid on

%vẽ phổ X(f)
f = -5:0.001:5;

Xf = 2./ (1 + (2*pi*f) .^2);

subplot(2,1,2)
plot(f,20*log10(abs(Xf)))
title('Phổ X(f) của x(t) = e^{-|t|}')
xlabel('f')
ylabel('X(f)')
grid on

%Xw but syms
syms t w x;
X = exp(-abs(t));
Xw = fourier(x,w);
X(w) = fourier(x,t,w);



