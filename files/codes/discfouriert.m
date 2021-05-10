clc; close all; clear all;

n=-20:1:20;
M=5;
A=3;
x=A*ventana(-M,M+1,n);

figure()
subplot(311)
stem(n,x,'linewidth',2);
xlabel('n'), legend('x[n]');
grid minor
xlim([-11 11]); ylim([min(x)-0.3 max(x)+0.3]);

fs=1e-3;
Om=-2*pi*3:pi*fs:2*pi*3;
X=A*(cos(M*Om)-cos((M+1)*Om))./(1-cos(Om));

subplot(312)
plot(Om,X,'linewidth',2);
xlabel('\Omega'), legend('X(\Omega)');
grid minor
xlim([-2*pi 2*pi]); ylim([min(X)-0.3 max(X)+0.3]);

L=length(x);
n = 2^nextpow2(L);
X_m=fft(x,n);

subplot(313)
plot(abs(X_m),'linewidth',2);
xlabel('\Omega'), legend('X(\Omega)');
grid minor
ylim([min(abs(X_m))-0.3 max(abs(X_m))+0.3]);
