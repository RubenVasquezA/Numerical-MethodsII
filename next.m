function sol=next(A,b)
N=length(A);
sol(1)=b(1)/A(1,1);
for k=2:N 
    suma=0; 
    for i=1:k-1
        suma=suma+A(k,i)*sol(i);
    end 
    sol(k)=(b(k)-suma)/A(k,k); 
end
