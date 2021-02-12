clear all; clc; close all;

% x(t)=mt+x_0

% declarar la variable independiente
t_i=-5;
t_f=5;
ts=1e-3;
t=t_i:ts:t_f;

m=4;
x=m*t+2;
x_off=x+2;
x_offneg=x-2;

figure(1)
plot(t,x,'linewidth',2)
hold on
plot(t,x_off,'linewidth',2)
plot(t,x_offneg,'linewidth',2)
hold off
xlabel('t'); ylabel('x(t)');
legend('x','x+2','x-2');
grid on

figure(2)
plot(t,x,'linewidth',2)
hold on
plot(t,3*x,'linewidth',2)
plot(t,-1*x,'linewidth',2)
hold off
xlabel('t'); ylabel('x(t)');
legend('x','3*x','-x');
grid on

% Discrete time
n_i=-5;
n_f=5;
n=n_i:n_f;
s=n.^2;

figure(3)
stem(n,s,'linewidth',2)
grid on

