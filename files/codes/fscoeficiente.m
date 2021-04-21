function c_k=fscoeficiente(k)

if k==0
    c_k=0;
else
    c_k=((1j*2)/(pi*k))*(-1)^k;
end

end