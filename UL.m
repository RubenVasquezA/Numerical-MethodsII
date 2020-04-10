function UL(A)
A=input('ingresa tu matriz A=')
[N,M]=size(A);
if M~=N
        disp('La matriz no es cuadrada')
    return
else 
    disp('La matriz es cuadrada')
end
L=eye(N);
for k=N:-1:1
    U(k,N)=A(k,N);
    if U(N,N)~=0
    L(N,k)=A(N,k)/U(N,N);
    else 
        disp('factorizacion imposible')
        return
    end
end

for p=N-1:-1:1
    suma1=0;
    for t=p+1:N
        suma1=suma1+U(p,t)*L(t,p);
    end
    U(p,p)=A(p,p)-suma1;

for i=p-1:-1:1
   
        suma2=0;
        suma3=0;
        for t=p+1:N
            suma2=suma2+U(i,t)*L(t,p);
            suma3=suma3+U(p,t)*L(t,i);
        end
        if U(p,p)~=0
        U(i,p)=A(i,p)-suma2;
        L(p,i)=(A(p,i)-suma3)/U(p,p);
        else
            disp('Factorizacion imposible')
            return
        end
end
end

suma4=0;
for t=2:N
    suma4=suma4+U(1,t)*L(t,1);
end
U(1,1)=A(1,1)-suma4;

U
L
disp('la comprobacion es')
B=U*L
disp('la inversa de U es')
UI=inver1(U)
disp('la inversa de L es')
LI=inver1(L)
disp('La inversa de A es')
IA=LI*UI



        
            
    