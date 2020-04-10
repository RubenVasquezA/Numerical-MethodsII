function LDLT(A)
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
N=length(A);
L=eye(N)
D=zeros(N)

for i=1:N
suma1=0;
    for m=1:i-1
        suma1=suma1+D(m,m)*(L(i,m)^2);
        
    end
    D(i,i)=A(i,i)-suma1
    
    for j=i+1:N
        suma2=0;
        for m=1:i-1
            suma2=suma2+L(j,m)*D(m,m)*L(i,m)
        end
        if D(i,i)~=0
        L(j,i)=(A(i,j)-suma2)/D(i,i)
        else 
            disp('La matriz no posee factorizacion')
            return 
        end
    end
end


display(L)
LT=L';
display(LT)
display(D)
B=L*D*L'



 


           
       
    