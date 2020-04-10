function d=deter1(A)
N=length(A);
if N==1 
    x=A(1,1);
else 
    suma=0;
    for i=1:N
        if i==1 
            M=A(2:N,2:N);
        else 
            M=[A(2:N,1:i-1) A(2:N,i+1:N)];
        end
        suma=suma+A(1,i)*(-1)^(i+1)*deter1(M);
    end 
    x=suma;
end
    d=x;
    
