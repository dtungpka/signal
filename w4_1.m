clear;clc;close all;
t = -10:0.001:10;
x = sin(t);
% y is 0.5 .* ( exp(-t) + exp(-3 .* t) )
y = 0.5 .* ( exp(-t) + exp(-3 .* t) );


% convolution x,y but dont use conv function

% use for loop
z = zeros(1,length(x)+length(y)-1);
%using formula z(n) = sum(x(m)*y(n-m))
for n = 1:length(x)+length(y)-1
    for k = 1:length(x)
        if n-k > 0 && n-k <= length(y)
            z(n) = z(n) + x(k)*y(n-k);
        end
    end
end

% plot
figure(1)
subplot(2,1,1)
hold on
plot(x.*max(y))
title('x(t),y(t)')
plot(y)
hold off
subplot(2,1,2)
T = linspace(-20,20,length(z));
plot(T,z)
title('z(t)')

% use conv function
z2 = conv(x,y);

% plot
figure(2)
subplot(2,1,1); plot(T,z2); title('z(t) using conv function')
subplot(2,1,2); plot(T,z-z2); title('difference between z(t) and z(t) using conv function')



