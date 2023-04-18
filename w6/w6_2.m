%dùng syms/fourier để xác định phổ của tín hiệu
clc; clear; close all;

%% a)

%x(t) = exp(-t^2)
syms t;
x = exp(-t^2);
X = fourier(x);
pretty(X);

%vẽ đồ thị x và phổ của x, dùng subplot
figure(1);
subplot(2,1,1);
T = -5:0.01:5;
plot(T,exp(-T.^2));
title('x(t) = e^{-t^2}');
xlabel('t');
ylabel('x(t)');

subplot(2,1,2);
f = -10:0.01:10;
plot(f,abs(subs(X,2*pi*f)));
title('Phổ của x(t)');
xlabel('f');
ylabel('|X(f)|');


%% b) x(t) = exp(-t) * u(t) <- heaviside(t)
syms t;

x = exp(-t) * heaviside(t);
X = fourier(x);
pretty(X);

%vẽ đồ thị x và phổ của x, dùng subplot
figure(2);
subplot(2,1,1);
T = -5:0.01:5;
plot(T,exp(-T) .* heaviside(T));
title('x(t) = e^{-t} * u(t)');
xlabel('t');
ylabel('x(t)');
axis([-5 5 0 1.2]);

subplot(2,1,2);
f = -10:0.01:10;
plot(f,abs(subs(X,2*pi*f)));
title('Phổ của x(t)');
xlabel('f');
ylabel('|X(f)|');
axis([-10 10 0 1.2]);

%% c) f(x) = x * exp(-abs(x))
syms x;
f = x * exp(-abs(x));
F = fourier(f);
pretty(F);

%vẽ đồ thị f và phổ của f, dùng subplot
figure(3);
subplot(2,1,1);
X = -5:0.01:5;
plot(X,X .* exp(-abs(X)));
title('f(x) = x * e^{-|x|}');
xlabel('x');
ylabel('f(x)');
axis([-5 5 0 1.2]);

subplot(2,1,2);
f = -10:0.01:10;
plot(f,abs(subs(F,2*pi*f)));
title('Phổ của f(x)');
xlabel('f');
ylabel('|F(f)|');
axis([-10 10 0 1.2]);


