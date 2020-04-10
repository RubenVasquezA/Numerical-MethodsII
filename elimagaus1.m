function sol=elimagaus1(A,b)
N=length(A);
C=[A b];
for i=1:N-1
for k=i+1:N
        z=C(k,i)./C(i,i)
C(k,:)=C(k,:)-z.*C(i,:)
end
end

A=C(:,1:N)
b=C(:,N+1)
sol=back(A,b)
