function esfera1(r,C)
r=input('ingresa la constante r=')
E=input('ingrsa el centro de la esfera E=')
for x=E(1)-r:0.1:E(1)+r
for y=E(2)-(r^2-(x-E(1))^2)^(1/2):0.1:E(2)+(r^2-(x-E(1))^2)^(1/2)
for z1=E(3)+r*((1-((x-E(1))/r)^2-((y-E(2))/r)^2))^(1/2);
plot3(x,y,z1)
hold on
z2=E(3)-r*((1-((x-E(1))/r)^2-((y-E(2))/r)^2))^(1/2);
            plot3(x,y,z2)
end
grid on
end
end
