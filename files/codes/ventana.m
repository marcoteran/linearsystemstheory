function window = ventana(t_i,t_f,time)

index_t_i=find(time==t_i);
index_t_f=find(time==t_f);

window=zeros(1,length(time));%ventana 0 a 10;
window(index_t_i:index_t_f)=1;


end

