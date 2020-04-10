function tridiagonal(A,b)
A=input('ingresa tu matriz A=')

[N,M]=size(A);
if M~=N
        disp('La matriz no es cuadrada')
    return
else 
    disp('La matriz es cuadrada')
end;
b=input('dame tus cordenadas b=')
N=length(A);
U(1,1)=A(1,1);
L(2,1)=A(2,1)/U(1,1);
U(2,2)=A(2,2)-A(2,1)*A(1,2)/A(1,1);
L(3,2)=A(3,2)/U(2,2);
for i=3:N
    U(i,i)=A(i,i)-A(i-1,i)*A(i,i-1)/U(i-1,i-1);
    L(i,i-1)=A(i,i-1)/U(i-1,i-1);
end
for j=1:N-1
    U(j,j+1)=A(j,j+1);
end
for k=1:N
    L(k,k)=1;
end
disp('La factorizacion es')
display(L)
display(U)
y=elimagauspivo1(L,b);
B=L*U;
disp('la comprobacion es')
display(B)
disp('la solucion del sistema es')
x=elimagauspivo1(U,y)
    



        
   
    