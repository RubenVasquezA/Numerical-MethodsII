function raipoli(a,b,c)

D=b^2-(4*a*c)
if D>0
    r1=(-a+(D^0.5))/2
    r2=(-a-(D^0.5))/2
else
  display('sus raices son imaginarias')
end
end

