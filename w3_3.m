
f0 = 1000
t = 0:1:50;

%f = cos(2*pi*f0*t);

f1 = 10000
f2 = 1500

%sample the f0 signal at f1
f = cos(2*pi*f0*t/ f1);

%sample the f0 signal at f2
f2 = cos(2*pi*f0*t/ f2);

%plot the sampled signals
hold on
subplot(2,1,1)
stem(t,f)
title('f1')
plot(t,f)
hold off


%plot the sampled signals
subplot(2,1,2)
stem(t,f)
hold on
stem(t,f2)
title('f1 and f2')
plot(t,f)
plot(t,f2)

hold off








