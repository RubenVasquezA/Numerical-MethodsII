function adjunta(A)
A=input('ingresa tu matriz A=')
J=[];
inver=inver1(A)
if deter1(A)~=0;
d=deter1(A)
c=inver/d
disp('La adjunta es')
J=[J,c']
else
    disp('no exite adjunta')
    return
end

