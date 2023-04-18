T = 0.5;
%3cos(2t+0.15)

t = 0:T:20;

x = 3*cos(2*t+0.15);

hold on
% plot the continuous-time signal x(t)
subplot(2,1,1)
plot(t,x)
title('x(t)')
xlabel('t')
ylabel('x(t)')

% plot the sampled signal x[n]
subplot(2,1,2)
stem(t,x)
title('x[n]')
xlabel('n')
ylabel('x[n]')

hold off