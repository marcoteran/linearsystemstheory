clc; close all; clear all;

T=4;
ts=1e-3;
t=-4*T:ts:4*T;

x=t.*ventana(-2,2,t);
%x_T=periodizador(patron,t_i,t_f,t);

figure()
subplot(3,2,1)
plot(t,x,'linewidth',2);
ylabel('x(t)'); xlabel('t');
ylim([min(x)-0.2,max(x)+0.2]); xlim([min(t),max(t)]);
grid(gca,'minor');

% Función de sintesis (sumatoria)
x_fs1=fssintfunction(T,-1,1,t);
x_fs5=fssintfunction(T,-5,5,t);
x_fs10=fssintfunction(T,-10,10,t);
x_fs100=fssintfunction(T,-100,100,t);
x_fs1000=fssintfunction(T,-1000,1000,t);




subplot(3,2,2)
plot(t,x_fs1,'linewidth',2);
ylabel('x(t)'); xlabel('t');
ylim([min(real(x_fs1))-0.2,max(real(x_fs1))+0.2]); xlim([min(t),max(t)]);
grid(gca,'minor');
title('k=-1 a 1');

subplot(3,2,3)
plot(t,x_fs5,'linewidth',2);
ylabel('x(t)'); xlabel('t');
ylim([min(real(x_fs5))-0.2,max(real(x_fs5))+0.2]); xlim([min(t),max(t)]);
grid(gca,'minor');
title('k=-5 a 5');

subplot(3,2,4)
plot(t,x_fs10,'linewidth',2);
ylabel('x(t)'); xlabel('t');
ylim([min(real(x_fs10))-0.2,max(real(x_fs10))+0.2]); xlim([min(t),max(t)]);
grid(gca,'minor');
title('k=-10 a 10');

subplot(3,2,5)
plot(t,x_fs100,'linewidth',2);
ylabel('x(t)'); xlabel('t');
ylim([min(real(x_fs100))-0.2,max(real(x_fs100))+0.2]); xlim([min(t),max(t)]);
grid(gca,'minor');
title('k=-100 a 100');

subplot(3,2,6)
plot(t,x_fs1000,'linewidth',2);
ylabel('x(t)'); xlabel('t');
ylim([min(real(x_fs1000))-0.2,max(real(x_fs1000))+0.2]); xlim([min(t),max(t)]);
grid(gca,'minor');
title('k=-1000 a 1000');



omega=(2*pi)/T;
s_minus1=fscoeficiente(-1)*exp(1j*omega*(-1)*t);
s_0=fscoeficiente(0)*exp(1j*omega*(0)*t);
s_1=fscoeficiente(1)*exp(1j*omega*(1)*t);

figure()
subplot(2,1,1)
plot(t,s_minus1,'linewidth',1);
hold on
plot(t,s_0,'linewidth',1);
plot(t,s_1,'r--','linewidth',1);
k=2;
plot(t,fscoeficiente(k)*exp(1j*omega*(k)*t),'linewidth',1);
plot(t,fscoeficiente(-k)*exp(1j*omega*(-k)*t),'linewidth',1);
k=3;
plot(t,fscoeficiente(k)*exp(1j*omega*(k)*t),'linewidth',1);
plot(t,fscoeficiente(-k)*exp(1j*omega*(-k)*t),'linewidth',1);
k=4;
plot(t,fscoeficiente(k)*exp(1j*omega*(k)*t),'linewidth',1);
plot(t,fscoeficiente(-k)*exp(1j*omega*(-k)*t),'linewidth',1);
k=100;
plot(t,fscoeficiente(k)*exp(1j*omega*(k)*t),'linewidth',1);
plot(t,fscoeficiente(-k)*exp(1j*omega*(-k)*t),'linewidth',1);

hold off
legend('s_{-1}','s_0','s_1');
ylabel('x(t)'); xlabel('t');
xlim([min(t),max(t)]);
grid(gca,'minor');