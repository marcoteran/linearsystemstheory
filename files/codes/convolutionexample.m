clc; close all; clear all;

ts=1e-3;
t=-15:ts:15;

h=ventana(0,10,t);
x=exp(-abs(t)).*(ventana(-3,3,t));

figure()
subplot(3,1,1)
plot(t,h,'linewidth',2);
hold on
plot(t,x,'linewidth',2);
hold off
legend('h(t)','x(t)');
xlabel('t');
ylim([-0.3,1.3]); xlim([-8,15]);
grid(gca,'minor');

y=zeros(1,length(t))+...
    +(exp(t)-exp(-3)).*(ventanacerradader(-3,0,t))+...
    +(2-exp(-3)-exp(-t)).*(ventanacerradader(0,3,t))+...
    +(2-2*exp(-3)).*(ventanacerradader(3,7,t))+...
    +(2-exp(-3)-exp(t-10)).*(ventanacerradader(7,10,t))+...
    +(exp(10-t)-exp(-3)).*(ventana(10,13,t));

subplot(3,1,2)
plot(t,y,'linewidth',2);
legend('y(t)');
xlabel('t');
ylim([min(y)-0.3,max(y)+0.3]); xlim([-8,15]);
grid(gca,'minor');

y_conv=conv(h,x);
%t_conv=

subplot(3,1,3)
%plot(t_conv, y_conv,'linewidth',2);
plot(y_conv,'linewidth',2);
legend('y(t)');
xlabel('t');
ylim([min(y_conv)-0.3,max(y_conv)+0.3]); xlim([2e4,4.5e4]);
grid(gca,'minor');
