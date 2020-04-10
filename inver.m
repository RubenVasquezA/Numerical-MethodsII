function inver=inver(A)
A=input('ingresa tu matriz A=')
[N,M]=size(A);
if M~=N
        disp('La matriz no es cuadrada')
    return
else 
    disp('La matriz es cuadrada');
end
if deter(A)~=0
 
D=eye(N);
Q=A;
inver=[];

for j=1:N
  C=[Q D(:,j)];
for i=1:N-1
    [y,x]=max(abs(A(i:N,i)));
    x;
    H=C(i,:);
    C(i,:)=C(i+x-1,:);
    C(i+x-1,:)=H;
    C;
    for k=i+1:N
        z=C(k,i)./C(i,i);
        C(k,:)=C(k,:)-z.*C(i,:);
    end
    C;

    
end
 A=C(:,1:N);
 b=C(:,N+1);
 
 sol=back(A,b);

inver=[inver , sol'];

end
disp('La Matriz Inversa es')
IA=inver
else 
    disp('La Matriz A no posee inversa')
    return
end





