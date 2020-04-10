function pentadiagonal4(A)
N=length(A)
U(1,1)=A(1,1)
U(1,2)=A(1,2)
for i=1:N
    L(i,i)=1
end
for k=1:N-2
    U(k,k+2)=A(k,k+2)
end
L(2,1)=A(2,1)/U(1,1)
U(2,2)=A(2,2)-L(2,1)*U(1,2)
U(2,3)=A(2,3)-L(2,1)*U(1,3)
for i=3:N-1
    L(i,i-2)=A(i,i-2)/U(i-2,i-2)
    L(i,i-1)=(A(i,i-1)-L(i,i-2)*U(i-2,i-1))./U(i-1,i-1)
    U(i,i)=A(i,i)-(L(i,i-2)*U(i-2,i)+L(i,i-1)*U(i-1,i))
    U(i,i+1)=A(i,i+1)-L(i,i-1)*U(i-1,i+1)
end
L(N,N-2)=A(N,N-2)/U(N-2,N-2)
L(N,N-1)=(A(N,N-1)-L(N,N-2)*U(N-2,N-1))./U(N-1,N-1)
U(N,N)=A(N,N)-(L(N,N-2)*U(N-2,N)+L(N,N-1)*U(N-1,N))
B=L*U