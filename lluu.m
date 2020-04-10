function[L,U]=lluu(A)
A=input('ingresa tu matriz A=')

[N,M]=size(A);
if M~=N
        disp('La matriz no es cuadrada')
    return
else 
    disp('La matriz es cuadrada')
end
M=eye(N);
for i=1:N-1
    for k=i+1:N
        if A(i,i)~=0
        M(k,i)=(A(k,i)./A(i,i));
        A(k,:)=A(k,:)-M(k,i).*A(i,:);
        else
            disp('La matriz no posee factorización')
        end
    end
end
disp('la factorizacion es')
L=M
U=A