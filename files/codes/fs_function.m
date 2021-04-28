function x_fs=fs_function(Nk,T,t)

omega=2*pi/T;
x_fs=zeros(1,length(t));
a_0=1;
x_fs=x_fs+a_0/2;
for k=1:Nk
    a_k=akcoeftrig(k); %calcula el coefeciciente a_k
    b_k=0;
    x_fs=x_fs+a_k*cos(omega*k*t)+b_k*sin(omega*k*t);
end

end