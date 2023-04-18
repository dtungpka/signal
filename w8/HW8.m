clear; clc; close all;
b = [1 2]; a = [1 3 2];
H = tf(b,a);
t = linspace(0,5,100)% 100 là số điểm giữa 0 tới 5
%b vẽ đáp ứng xung của hệ thống
h = impulse(b,a,t); % hệ số trên tử, hệ số dưới mẫu, trong khoảng tgian t
plot(t,h);
xlabel('time (s)');
ylabel('h(t)');

%c
%z là zero - p là pole - k là 
[z,p,k] = tf2zp(b,a);
figure(2);
pzmap(H)

figure(3);
freqs(b,a) 
% --> khảo sát được hàm truyền, đáp ứng xung đơn vị