function sol=elimagauspivoescalar(A,b)

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
    for l=1:N
        s(l)=max(abs(C(l,1:N)));
    end
    a=s(i:N)';
    [y,x]=max(abs(C(i:N,i)./a));
    x;
    H=C(i,:);
    C(i,:)=C(i+x-1,:);
    C(i+x-1,:)=H;
    C
    for k=i+1:N
        if C(i,i)~=0
        z=C(k,i)./C(i,i);
        C(k,:)=C(k,:)-z.*C(i,:);
        else
            disp('proceso errado')
            return
        end
    end
    C
end

A=C(:,1:N);
b=C(:,N+1);
disp('la solucion es')
sol=back(A,b)