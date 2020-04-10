function LDU(A)
A=input('ingresa tu matriz A=')

[N,M]=size(A);
if M~=N
        disp('La matriz no es cuadrada')
    return
else 
    disp('La matriz es cuadrada')
end
L=eye(N)
U=eye(N)
D=zeros(N)


for i=1:N
suma1=0;
    for m=1:i-1
        suma1=suma1+L(i,m)*D(m,m)*U(m,i);
        
    end
    D(i,i)=A(i,i)-suma1
    
    for j=i+1:N
        suma2=0;
        suma3=0;
        for m=1:i-1
            suma2=suma2+L(i,m)*D(m,m)*U(m,j);
            suma3=suma3+L(j,m)*D(m,m)*U(m,i);
        end
        if D(i,i)~=0
        U(i,j)=(A(i,j)-suma2)/D(i,i)
        L(j,i)=(A(j,i)-suma3)/D(i,i)
        else 
            disp('La matriz no posee factorizacion')
            return
        end
    end
end

display(L)
display(U)
display(D)
B=L*D*U