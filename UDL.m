function UDL(A)

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
D(N,N)=A(N,N)
for k=N-1:-1:1
    if D(N,N)~=0
    L(N,k)=A(N,k)/D(N,N)
    U(k,N)=A(k,N)/D(N,N)
    else
        disp('La matriz no se puede factorizar')
        return
    end
end
D(N-1,N-1)=A(N-1,N-1)-U(N-1,N)*D(N,N)*L(N,N-1);
for k=N-2:-1:1
    for j=k:-1:1 
        suma3=0
        for t=k+2:N
            suma3=suma3+U(k+1,t)*D(t,t)*L(t,j);
        end
       L(k+1,j)=(A(k+1,j)-suma3)/D(k+1,k+1);
    end
    for j=N-1:-1:k+1    
        suma1=0;
        for t=j+1:N
            suma1=suma1+U(k,t)*D(t,t)*L(t,j);
        end
        U(k,j)=(A(k,j)-suma1)/D(j,j);
    end
   
    suma2=0;
    for t=k+1:N
        suma2=suma2+U(k,t)*D(t,t)*L(t,k);
    end
    D(k,k)=A(k,k)-suma2;
end
display(U)
display(D)
display(L)

B=U*D*L


        
        
        