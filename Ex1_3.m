

T = -5 : 0.12 : 5
T1 = -15: 0.12: 15
T2 = -30: 0.12: 30
s_t = sin(pi .* T) ./ (pi .* T);

s_t1 = sin(pi .* T1) ./ (pi .* T1);

s_t2 = sin(pi .* T2) ./ (pi .* T2);

subplot(2,2,1);
plot(T,s_t);
subplot(2,2,2);
plot(T1,s_t1);
subplot(2,2,3);
plot(T2,s_t2);
