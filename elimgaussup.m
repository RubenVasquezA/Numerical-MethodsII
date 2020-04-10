function sol=elimgaussup(A,b)
%A=input('ingresa tu matriz A=')
%b=input('ingresa tu vector b=')
N=length(A);
C=[A b];
for j=N:-1:2
for i=j-1:-1:1
        C(i,:)=C(i,:)-(C(i,j)/C(j,j))*C(j,:)
end
    C=C(:,1:N+1);
end
A=C(:,1:N);
b=C(:,N+1);
sol(1)=b(1)/A(1,1);
for k=2:N 
suma=0; 
for i=1:k-1
suma=suma+A(k,i)*sol(i);
end
sol(k)=(b(k)-suma)/A(k,k); 
end
