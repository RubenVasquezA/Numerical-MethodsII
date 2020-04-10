function [h,y,m]=potenciainversa(A,error)
N=length(A);
y=ones(N,1);
er=1; h1=1; m=[];
while er>error
    x=elimagauspivo1(A,y);
    [h,k]=max(x);
    y=x/h;
    er=abs(h-h1)/abs(h);
    h1=h;
   m=[m;h,y',er];
end
q=1/h;
m
