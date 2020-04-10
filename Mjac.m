function [x,M]=Mjac(A,b,x0,er)
A=input('ingresa tu matriz cuadrada A=')
N=length(A)
b=input('ingresa tus coordenadas b=')
b=b'
x0=input('ingresa tu punto inicial x0=')
x0=x0'
er=input('ingresa error er=')

for i=1:N
    if A(i,i)~=0
    R(i,:)=A(i,:)./A(i,i); 
    P(i)=b(i)./A(i,i);
    else 
        disp('proceso fallado')
    end
end
R;
P;
B=eye(N)-R;
error=1;
M=[0 , error, x0'];
s=0;
while error>er
    x=B*x0+P';
    error=norm(x-x0)/norm(x);
    x0=x;
    s=s+1;
    
    M=[M ;[s,error,x0'] ];
end
M