function sol=back(A,b)
N=length(A);
sol(N)=b(N)/A(N,N)
for k= N-1:-1:1
    suma=0;
    for i=k+1:N
        suma=suma+A(k,i)*sol(i)
    end
    sol(k)=(b(k)-suma)/A(k,k)
end 
sol=sol';

        