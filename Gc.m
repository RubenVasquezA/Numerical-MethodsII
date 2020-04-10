function Gc(Q,b,x0,error)
m=[];
er=1; r0=b-Q*x0; d0=r0; k=0;
while er>error
    h=r0'*d0/(d0'*Q*d0);
    x=x0+h*d0;
    r=r0-h*Q*d0;
    B=(d0'*Q*r)/(d0'*Q*d0);
    d=r-B*d0;
    er=norm(x-x0)/norm(x);
    x0=x;
    r0=r;
    d0=d;
    k=k+1;
   m=[m;k,h,B,x',er];
   
end
m

