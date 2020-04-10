function resol=sistemasNXN(A,D)

A=input('ingresa tu matriz A=')
D=input('dame tu cordenadas D=')
[N,M]=size(A);
[N,M]=size(D);
if M~=N;
        disp('La matrices no son cuadradas')
    return
else 
    disp('Las matrices son cuadradas')
end;
resol=[];
Q=A;

for j=1:N
  C=[Q D(:,j)]
  
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
     
    C;
    end

 end
 A=C(:,1:N);
 b=C(:,N+1);
 sol=back(A,b)
 

 resol=[resol,sol'];
 
end
 disp('la soluciones de cada sistema son:')
 R=resol


