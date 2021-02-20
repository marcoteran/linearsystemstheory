clear all; clc; close all;

% x(t)=e^jwt

% declarar la variable independiente
t_i=-6;
t_f=6;
ts=1e-3;
t=t_i:ts:t_f;

T=3;
w=2*pi/T;

figure()
subplot(221)
plot(t,real(exp(1i*w*t)),'linewidth',2)
xlabel('t'); title('\omega'); grid on

subplot(222)
plot(t,real(exp(1i*(w+4*2*pi)*t)),'linewidth',2)
xlabel('t'); title('\omega+4*2\pi'); grid on

subplot(223)
plot(t,real(exp(1i*(w+10*2*pi)*t)),'linewidth',2)
xlabel('t'); title('\omega+10*2\pi'); grid on

subplot(224)
plot(t,real(exp(1i*(w+60*2*pi)*t)),'linewidth',2)
xlabel('t'); title('\omega+60*2\pi'); grid on
%% -----------------------------------------
n_i=-64;
n_f=64;
n=n_i:n_f;

N=20;
W=2*pi/N;

figure()
subplot(221)
hold on
stem(n,real(exp(1i*W*n)),'linewidth',1.5)
hold off
xlabel('t'); title('\Omega'); grid on

subplot(222)
hold on
stem(n,real(exp(1i*(W+4*2*pi)*n)),'linewidth',1.5)
hold off
xlabel('t'); title('\Omega+4*2\pi'); grid on

subplot(223)
hold on
stem(n,real(exp(1i*(W+10*2*pi)*n)),'linewidth',1.5)
hold off
xlabel('t'); title('\Omega+10*2\pi'); grid on

subplot(224)
hold on
stem(n,real(exp(1i*(W+60*2*pi)*n)),'linewidth',1.5)
hold off
xlabel('t'); title('\Omega+60*2\pi'); grid on