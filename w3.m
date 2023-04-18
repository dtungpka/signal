
T = linspace(-5,5,1000);
N = -5:5;
N(6) = -0.0001;

U_n = stepfun(N,0);
U_t = stepfun(T,0);

%create marker indices for the plot, each 100th element
MarkerIndices = 1:100:length(T);






%Plotting the unit step function, with U_n plot have dots.

subplot(2, 1,1)
plot(T,U_t,'o', 'MarkerIndices', MarkerIndices)
title('Unit Step Function')
xlabel('n')
ylabel('U(n)')
axis([-5 5 -0.5 1.5])
grid on

subplot(2,1,2)
plot(T,U_t)
title('Unit Step Function')
xlabel('t')
ylabel('U(t)')
axis([-5 5 -0.5 1.5])
grid on