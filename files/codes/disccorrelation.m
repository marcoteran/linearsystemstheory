clear all; close all; clc;

% vector tiempo
n_i=-12; n_f=12;
n=n_i:n_f;

% señal arbitraria
x_n=zeros(1,length(n))+exp(3*n).*ventana(0,5,n);

figure()
subplot(311)
stem(n,x_n,'linewidth',3);
set(gca,'yscal','log')
grid on; xlabel('n'); ylabel('x[n]');
%ylim([min(x_n)-0.05, max(x_n)+0.05]);
xlim([-3 8]);

% vector de diferencia de tiempo
l_i=-12; l_f=12;
l=l_i:l_f;

r_xx=zeros(1,length(l))+...
    ((exp(-3*l)-exp(3*l+36))/(1-exp(6))).*ventana(-5,0,l)+...
    ((exp(3*l)-exp(-3*l+36))/(1-exp(6))).*ventana(1,5,l);

subplot(312)
stem(l,r_xx,'linewidth',3);
set(gca,'yscal','log')
grid on; xlabel('l'); ylabel('r_{xx}[l]');
ylim([1e0, 1e15]);
xlim([-8 8]);


[rho_xx,l_m]=xcorr(x_n);

subplot(313)
stem(l_m,rho_xx,'linewidth',3);
set(gca,'yscal','log')
grid on; xlabel('l'); ylabel('r_{xx}[l]');
ylim([1e0, 1e15]);
xlim([-8 8]);
