function UDUT(A)
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
U=eye(N)
D(N,N)=A(N,N)
if D(N,N)~=0
U(1,N)=A(N,1)/D(N,N)
else 
    disp('La matriz no posee factorizacion')
    return
end
for i=N-1:-1:2
    U(i,N)=A(N,i)/D(N,N)
      for j=i-1:-1:1 
    suma1=0
    suma2=0
       for t=i+1:N
        suma1=suma1+D(t,t)*((U(i,t))^2)
        suma2=suma2+U(i,t)*D(t,t)*U(j,t)
        
       end
     
    D(i,i)=A(i,i)-suma1
    U(j,i)=(A(i,j)-suma2)/D(i,i)
      end
       

end
   suma3=0
  for t=2:N
    suma3=suma3+D(t,t)*((U(1,t))^2)
end 
D(1,1)=A(1,1)-suma3


display(U)
display(D)
UT=U';
display(UT)
disp('su comprabacion es')
B=U*D*UT



  
      
    