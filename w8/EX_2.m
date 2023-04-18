clear; clc; close all;

b = [1 -.6];
a = [1 -2];
w = linspace(-pi,pi,256);

[H,w] = freqz(b,a,w);

subplot(2,1,1);
plot(w/pi,abs(H));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');
title('Magnitude Response');
axis([-1 1 0 1.2]);

subplot(2,1,2);
plot(w/pi,angle(H)/pi);
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (\times\pi rad)');
title('Phase Response');
axis([-1 1 -1 1]);

%plot the impulse response and step response
figure;
subplot(2,1,1);
impz(b,a);
title('Impulse Response');

subplot(2,1,2);
stepz(b,a);
title('Step Response');

%plot the pole-zero plot
figure;
zplane(b,a);


