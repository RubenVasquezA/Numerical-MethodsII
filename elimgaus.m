function sol=elimgaus(A,b)
N=length(A);
C=[A b]
for i=N:-1:2
    for k=i-1:-1:1
        z=C(k,i)./C(i,i)
        C(k,:)=C(k,:)-z.*C(i,:)
    end
end

A=C(:,1:N);
b=C(:,N+1);
sol=next(A,b);
