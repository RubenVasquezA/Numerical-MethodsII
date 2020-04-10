function UUT(A)
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
    
  U(N,N)=A(N,N)^(1/2)

for k=N-1:-1:1
    if U(N,N)~=0
    U(k,N)=A(N,k)/U(N,N)
    else 
        disp('La matriz no posee factorizacion')
        return
    end
end

for k=N-1:-1:2
    for j=k-1:-1:1
       suma1=0;
       suma2=0;
       for i=k+1:N
           suma1=suma1+(U(k,i))^2;
           suma2=suma2+U(k,i)*U(j,i);
       end
       U(k,k)=(A(k,k)-suma1)^(1/2)
       U(j,k)=(A(k,j)-suma2)/U(k,k)
    end
end


U(1,N)=A(N,1)/U(N,N);
suma3=0;
for i=2:N
    suma3=suma3+(U(1,i))^2;
    
end
U(1,1)=(A(1,1)-suma3)^(1/2)  
display(U)
UT=U';
display(UT)
disp('La comprobacion es')
B=U*UT


