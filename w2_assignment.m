t = 2
T = linspace(-10,10,1000);
u_t = (T >= 0) .* 1;
r_t = (T >= 0) .* T;

s1_t = u_t + r_t;


%Convolution of p2(t) with itself
T = linspace(-10,10,1000);
T2 = linspace(-10,10,size(T,2)*2-1);
p2_t = (abs(T2) > 1) .* 0 + (abs(T2) <= 1) .* 1;
p3_t = (abs(T) > 1.5 ) .* 0 + (abs(T) <= 1.5) .* 1;
tri3_t = conv(p3_t,p3_t,'full');
tri3_t = tri3_t ./ max(tri3_t);

s2_t = p2_t + tri3_t;



subplot(2,1,1);
plot(T,s1_t);
title('s1(t) = u(t) + r(t)');
xlabel('t');
ylabel('s1(t)');
subplot(2,1,2);
plot(T2,s2_t);
title('s2(t) = p2(t) + tri3(t)');
xlabel('t');
ylabel('s2(t)');
