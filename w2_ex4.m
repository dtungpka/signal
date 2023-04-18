clc; clear; close all;
t = 0:0.1:6.28;

% Part 1
y1 = sin(t);
y2 = sin(2*t);
y3 = sin(5*t);
plot(t, y1, 'o', t, y2, '-', t, y3)
legend('y1', 'y2', 'y3')

% Part 2
figure
y4 = sin(4*(t-1));
y5 = sin(2*t-3);
plot(t, y4, t, y5)
legend('sin(4*(t-1))', 'sin(2*t-3)')

% Part 3
figure
alpha = [0.1 1 5];
for i = 1:length(alpha)
    y6 = exp(-alpha(i)*t).*sin(alpha(i)*t);
    subplot(length(alpha), 1, i)
    plot(t, y6)
    legend(['exp(-' num2str(alpha(i)) '*t).*sin(' num2str(alpha(i)) '*t)'])
end