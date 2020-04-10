function sol=elimagauspivo1(A,b)
N=length(A);
C=[A b]
for i=1:N-1
    [y,x]=max(abs(A(i:N,i)))
    x
    H=C(i,:)
    C(i,:)=C(i+x-1,:)
    C(i+x-1,:)=H
    C
    for k=i+1:N
        z=C(k,i)./C(i,i);
        C(k,:)=C(k,:)-z.*C(i,:);
    end
    C;
end
 A=C(:,1:N);
 b=C(:,N+1);

 sol=back1(A,b)