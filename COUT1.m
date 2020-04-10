function [L,U]=COUT1(A)
A=input('ingresa tu matriz A=')

[N,M]=size(A);
if M~=N
        disp('La matriz no es cuadrada')
    return
else 
    disp('La matriz es cuadrada')
end
L=eye(N); U=[];
U(1,1)=A(1,1);
for p=2:N
    if U(1,1)~=0
    U(1,p)=A(1,p);
    L(p,1)=A(p,1)/U(1,1);
    else ('la matriz no posee factorizacion')
    end
end
for i=2:N
    SUMA1=0;
    for k=1:i-1
        SUMA1=SUMA1+L(i,k)*U(k,i);
    end
    U(i,i)=A(i,i)-SUMA1;
    
    for j=i+1:N
        SUMA1=0;
        SUMA2=0;
        
            for k=1:i-1
                SUMA1=SUMA1+L(i,k)*U(k,j);
                SUMA2=SUMA2+L(j,k)*U(k,i);
            end
            U(i,j)=A(i,j)-SUMA1;
            L(j,i)=(A(j,i)-SUMA2)/U(i,i);
            
     end
end 

display(U)
display(L)
B=L*U

        
        
    
   
