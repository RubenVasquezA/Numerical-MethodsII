function LLT(A)
A=input('ingresa tu matriz simetrica A=')
[N,M]=size(A);
for i=1:N
    deter=det(A(1:i,1:i));
    if deter<=0
        disp('la matriz A no esta definida positiva')
        disp('la matriz no factorizable A=U*UT')
        return
    end
end
disp('la matriz A es positiva')
L(1,1)=(A(1,1))^(1/2);
for j=2:N
    L(j,1)=A(j,1)/L(1,1);
end
for k=2:N-1
    suma1=0;
    for t=1:k-1
        suma1=suma1+L(k,t)^2;
    end
    L(k,k)=(A(k,k)-suma1)^(1/2);
    for i=2:k
        suma2=0;
        for t=1:i-1
            suma2=suma2+L(k+1,t)*L(i,t);
        end
        if L(i,i)~=0
        L(k+1,i)=(A(k+1,i)-suma2)/L(i,i);
        else 
            disp('La matriz no posee factorizacion')
            return
        end
    end
end
suma3=0;
for t=1:N-1
    suma3=suma3+L(N,t)^2;
end
L(N,N)=(A(N,N)-suma3)^(1/2);
display(L)
LT=L';
display(LT)
disp('su comprobacion es')
B=L*LT