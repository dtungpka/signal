
clear;clc;close all;
E = 1;
T = 1;
w0 = 2*pi/T;

t_ = -1:0.1:1;

% Tính các hệ số Fourier
syms s t;
H = 1 / (s^2 + 2*s + 3);
X = 1/s * (1 - exp(-t));
Y = H * X;
y = ilaplace(Y);
a0 = (1/T) * int(y, t, 0, T);

n = 1:2:10;
an = (2/T) * int(y * cos(2*pi*n'*t/T), t, 0, T);
% Vẽ đồ thị Fourier
x0 = a0/2;
x1 = x0 + sum(an .* cos(n.*w0.*t), 'all');
x2 = 0;
x3 = x1 + x2;


N = [5 10 20 30 40 50 100 200 500 5000];

figure(1);

for i = 1:length(N)
    x=a0/2;
    n = 1:2:i;
    an = (2/T) * int(y * cos(2*pi*n'*t/T), t, 0, T);
    % Vẽ đồ thị Fourier
    for j=1:N(i)
        at = double(subs(an, i, j));
        x=x+ sum(at .* cos(n.*w0.*t_), 'all');
    end
    subplot(5,2,i);
    %plot(t_,x);
    title(['N = ' num2str(N(i))]);
    axis([-2 2 -.2 1.2]);
    grid on;
end