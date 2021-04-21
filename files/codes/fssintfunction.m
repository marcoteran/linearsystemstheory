function x_fs=fssintfunction(T,k_i,k_f,t)

x_fs=zeros(1,length(t));

omega=(2*pi)/T;
for k=k_i:k_f
    c_k=fscoeficiente(k);
    x_fs=x_fs+c_k*exp(1j*omega*k*t);
end

end