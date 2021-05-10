clc; close all; clear;

ws=1e-1;
w=-3*pi:0.25*pi*ws:3*pi;
X=cos(w).*ventana(-0.5*pi,0.5*pi,w);

figure()
subplot(3,1,1)
plot(w,abs(X),'linewidth',2);
ylabel('S(\omega)'); xlabel('\omega');
xlim([-2*pi,2*pi]); ylim([0,1.2]);
grid(gca,'minor');

ts=1e-4;
t=-20:ts:20;
x=cos(0.5*pi*t)./(pi*(1-t.^2));
x(find(t==1))=1/pi;
x(find(t==-1))=1/pi;

subplot(3,1,2)
plot(t,x,'linewidth',2);
ylabel('x(t)'); xlabel('t');
ylim([min(x)-0.2,max(x)+0.2]); xlim([min(t),max(t)]);
grid(gca,'minor');

