function [y,N]=sorjacobi(A,b,x0,error,w)
A=input('ingresa tu matriz cuadrada A=')
N=length(A)
b=input('ingresa tus coordenadas b=')
b=b'
x0=input('ingresa tu punto inicial x0=')
x0=x0'
w=input('ingresa tu peso w=')
er=input('ingresa er=')
G=[];
M=A
for i=1:N-1
    A(i,i+1:N)=0;
    
end
G=A;
H=inver1(G);

R=eye(N)-H*M;
P=H*b;
R;
P;

error=1;
M=[0 , error, x0'];
s=0;
while error>er
    x=R*x0+P;
    error=norm(x-x0)/norm(x);
    x0=x;
    s=s+1;
    
    M=[M ;[s,error,x0'] ];
end
M
    er=1;
    for i=1:N,
        p=A(i,i);
        b(i)=b(i)/p;
        for j=1:N
            A(i,j)=A(i,j)/p;
        end
    end
    A;
    d=eye(N)-A;
    j=0;
    N=[0,x0',er];
    while er>error,
        x=d*x0+b;
        y=w*x+(1-w)*x0;
        er=norm(y-x0)/norm(y);
        x0=y;
        j=j+1;
        N=[N;j,y',er];
    end
    N
    
    

