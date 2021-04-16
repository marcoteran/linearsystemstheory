clc; close all; clear all;

ts=1e-3;
t=-15:ts:15;

x=(1/2)*ventana(-4,4,t);
y=(t/4).*(ventana(0,4,t));

figure()
subplot(3,1,1)
plot(t,x,'linewidth',2);
hold on
plot(t,y,'linewidth',2);
hold off
legend('x(t)','y(t)');
xlabel('t');
ylim([-0.2,1.2]); xlim([-8,8]);
grid(gca,'minor');

taus=1e-3;
tau=-15:taus:15;

r_xy=zeros(1,length(tau))+...
    (-1/16)*(tau.^2+8*tau).*ventanacerradader(-8,-4,tau)+...
    ventanacerradader(-4,0,tau)+...
    ((1/8)*(((tau.^2)/2)-4*tau+8)).*ventanacerradader(0,4,tau);

subplot(3,1,2)
plot(tau,r_xy,'linewidth',2);
ylabel('r_{xy}(\tau)');
xlabel('\tau');
ylim([min(r_xy)-0.2,max(r_xy)+0.2]); xlim([-12,12]);
grid(gca,'minor');
    

[rho_xy,tau_m]=xcorr(x,y);
subplot(3,1,3)
plot(tau_m*taus,rho_xy*taus,'linewidth',2);
ylabel('r_{xy}(\tau)');
xlabel('\tau');
ylim([min(rho_xy*taus)-0.2,max(rho_xy*taus)+0.2]); xlim([-12,12]);
grid(gca,'minor');


