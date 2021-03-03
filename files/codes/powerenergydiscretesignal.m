clear all; clc; close all;

% declarar la variable independiente
n_i=-30;
n_f=30;
n=n_i:n_f;
u_n=zeros(1,length(n));
n_0=find(n==0);
u_n(n_0:end)=ones(1,length(n)-n_0+1);
x_n=((-0.5).^n).*u_n;


figure()
subplot(221)
stem(n,x_n,'linewidth',1)
xlabel('n'); grid on
ylim([-0.6 1.2]);
xlim([-5 30]);

subplot(222)
stem(n,x_n.^2,'linewidth',1)
xlabel('n'); grid on
ylim([-0.6 1.2]);
xlim([-5 30]);

% Energía de la señal
sum(x_n.^2)