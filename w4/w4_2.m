
clc; clear; close all;
% y(n) = 2y(n-1) + x(n) – 0.6x(n-1)


den = [1 -2];
num = [1 -0.6];

[h,t] = impz(num,den,20);
subplot(1,3,1)
stem(t,h)


%find if the system is stable or not

sum = 0;
for i = 1:length(h)
    sum = sum + abs(h(i));
    if abs(h(i)) < 10^-6
        break
    end
end

if sum < 1
    disp('The system is stable')
else
    disp('The system is unstable')
end


%draw u(t)

u = ones(1,20);
u(1) = 0;
subplot(1,3,2)
stem(t,u)
grid on





[h1, t1] = stepz(num,den,20);
subplot(1,3,3)
stem(t1,h1)

%find if the system is stable or not
