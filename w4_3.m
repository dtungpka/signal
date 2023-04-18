% Clear the workspace, command window, and close all figures
clear; clc; close all;

% Define the system transfer function
num = [1 2 0 1];
den = [1 -0.5 0.25];

% Define the range of values for n
n = 0:100;

% Define the input signals x1[n] and x2[n]
a = 2;
b = 3;
x1 = cos(0.5*pi*n + pi/3);
x2 = sin(0.2*pi*n);
x = a*x1 + b*x2;

% Calculate the output signals y1[n], y2[n], and y[n]
y1 = filter(num, den, x1);
y2 = filter(num, den, x2);
y = filter(num, den, x);

% Calculate the weighted sum of y1[n] and y2[n]
yt = a*y1 + b*y2;


y = round(y,4);
yt = round(yt,4);

%round the values of y and yt to 4 decimal places and compare them
if isequal(y,yt)
    disp('The system is linear.')
else
    disp('The system is not linear.')
end

% Calculate the difference between y[n] and yt[n]
d = y - yt;
% Plot the output signals y[n], yt[n], and the difference d[n]
figure;


subplot(3,2,1);
stem(n, y1);
title('Output signal y1[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3,2,2);
stem(n, y2);
title('Output signal y2[n]');
xlabel('n');
ylabel('Amplitude');


subplot(3,2,3);
stem(n, y);
title('Output signal y[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3,2,4);
stem(n, yt);
title('Weighted sum of y1[n] and y2[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3,2,5);
stem(n, d);
title('Difference between y[n] and the weighted sum of y1[n] and y2[n]');
xlabel('n');
ylabel('Amplitude');
