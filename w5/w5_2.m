
clear;clc;close all;
num=[2];
dens=[3 2 1];
w=0:0.01:100; % tan so goc rad/s
H=freqs(num,dens,w);
biendo_H=abs(H);
pha_H=angle(H);

figure;
subplot(211);
semilogx(w,biendo_H);
%plot(w,biendo_H);
xlabel('log(w)');ylabel('dac trung bien do');
grid on
subplot(212);
semilogx(w,pha_H);
xlabel('log(w)');ylabel('dac trung pha');
grid on;

figure;
t=linspace(0,50,256);
Omega=1;
x=sin(Omega*t);
%plot(t,x);
H=tf([3],[1 2 3])
lsim(H,x,t)

figure;
t=linspace(0,2,256);
Omega=20;
x=sin(Omega*t);
%plot(t,x);
H=tf([3],[1 2 3])
lsim(H,x,t)