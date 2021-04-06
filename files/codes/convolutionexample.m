clc; close all; clear all;

ts=1e-3;
t=-15:ts:15;

h=ventana(0,10,t);
x=exp(-abs(t)).*(ventana(-3,3,t));

figure()
subplot(2,1,1)
plot(t,h,'linewidth',2);
hold on
plot(t,x,'linewidth',2);
hold off
legend('h(t)','x(t)');
xlabel('t');
ylim([-0.3,1.3]); xlim([-8,15]);
grid(gca,'minor');