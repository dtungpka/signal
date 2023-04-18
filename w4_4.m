% Clear the workspace, command window, and close all figures
clear; clc; close all;

% Define the system coefficients
b = [1 2 0 1];
a = [1 -0.5 0.25 0];

% Define the input signal
n = 0:50;
x = 3*cos(0.5*pi*n + pi/3) + 2*sin(0.2*pi*n);

% Simulate the system
y = filter(b, a, x);
y_delayed = filter(b, a, [zeros(1,5) x(1:end-5)]);

% Check if the system is time-invariant
if isequal(round(y(6:end),4), round(y_delayed(1:end-5),4))
    disp('The system is time-invariant.')
else
    disp('The system is not time-invariant.')
end

% Plot the results
subplot(2,1,1);
stem(n, y);
xlabel('n');
ylabel('y[n]');
title('System output');

subplot(2,1,2);
stem(n, y_delayed);
xlabel('n');
ylabel('y[n-5]');
title('System output delayed by 5 samples');
