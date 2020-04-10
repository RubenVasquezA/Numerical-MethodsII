function [k,y,m]=potenciainversadespl(A,q,error)
N=length(A);
y=ones(N,1);
A=A-q*eye(N)
er=1; h1=1; m=[];
while er>error
    x=elimagauspivo1(A,y);
    [h,k]=max(x);
    y=x/h;
    er=abs(h-h1)/abs(h);
    h1=h;
   m=[m;h,y',er];
end
k=1/h+q;
m
