
clear;clc;close all;
%% EX5 - 1
num = [1 2 0 1]; % System numerator coefficients
den = [1 -0.5 0.25 0]; % System denominator coefficients

% Check if system is LTI
if isequal(den, [1 zeros(1, length(den)-1)])
    disp('The system is LTI');
else
    disp('The system is not LTI');
end

N = 40;
h = impz(num, den, N+1); % Calculate the unit impulse response
sum = 0;
for k = 1:N+1
    sum = sum + abs(h(k));
    if abs(h(k)) < 10^(-6)
        break
    end
end

% Plot the unit impulse response
n = 0:N;
figure(1);
stem(n, h);
xlabel('Time index n');
ylabel('Amplitude');
title('Unit Impulse Response');


%% EX5 - 2

num = [1 -4 3];
den = [1 -1.7 -1];

% Check if system is LTI

if isequal(den, [1 zeros(1, length(den)-1)])
    disp('The system is LTI');
else
    disp('The system is not LTI');
end

N = 40;
h = impz(num, den, N+1); % Calculate the unit impulse response
sum = 0;
for k = 1:N+1
    sum = sum + abs(h(k));
    if abs(h(k)) < 10^(-6)
        break
    end
end

% Plot the unit impulse response
n = 0:N;
figure(2);
stem(n, h);
xlabel('Time index n');
ylabel('Amplitude');
title('Unit Impulse Response');
