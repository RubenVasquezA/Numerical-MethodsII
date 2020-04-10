function elipse(a,b,C)
a=input('ingresa la constante a=')
b=input('ingresa la constante b=')
C=input('ingresa el centro de la elipse C=')
for x=C(1)-a:0.01:C(1)+a
for y1=C(2)+b*(1-((x-C(1))/a)^2)^(1/2)
plot(x,y1)
hold on
        y2=C(2)-b*(1-((x-C(1))/a)^2)^(1/2)
plot(x,y2)
end
end
