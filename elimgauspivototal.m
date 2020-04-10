function sol=elimgauspivototal(A,b)
A=input('ingresa tu matriz A=')

[N,M]=size(A);
if M~=N
        disp('La matriz no es cuadrada')
    return
else 
    disp('La matriz es cuadrada')
end
b=input('dame tus corrdenadas b=')
b=b';
C=[A b];
for i=1:N-1
    for l=i:N
        S(l)=max(abs(C(l,i:N)));
    end
    S(i:N)
    [y,x]=max(S(i:N));
    
    x;
    H=C(i,:);
    C(i,:)=C(i+x-1,:);
    C(i+x-1,:)=H;
    C;
    for m=i:N
        T(m)=max(abs(C(i:N,m)));
    end
    T(i:N)
    [p,q]=max(T(i:N));
    q;
    R=C(:,i);
    C(:,i)=C(:,i+q-1);
    C(:,i+q-1)=R;
    C;
    for k=i+1:N
        if C(i,i)~=0
        z=C(k,i)./C(i,i);
        C(k,:)=C(k,:)-z.*C(i,:);
        else 
            disp('proceso errado')
        end
    end
    C;
end
A=C(:,1:N);
b=C(:,N+1);
disp('la solucion es')
sol=back(A,b)