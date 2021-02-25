function [a0,a1,residuo] = minquad(x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=0;
b=0;
[b,a]=size(x);


z=zeros(2,2);


k=zeros(2,1);


v0=0;
v1=0;
i=1;
a0=0;
a1=0;
resto=zeros(b,1);
%Calcolo A^t*Ax=A^t*y




while i<=b %A^t*Ax
    z(1,1)=z(1,1)+1;
    z(1,2)=z(1,2)+x(i,1);
    z(2,1)=z(1,2);
    z(2,2)=z(2,2)+(x(i,1)^2);
    i=i+1;
end
i=1;

while i<=b %A^t*y
    v0=v0+y(i,1);
    v1=v1+(y(i,1)*x(i,1));
    i=i+1;
end

a0 = ((z(2,2)*v0)-(z(1,2)*v1))/((z(2,2)*z(1,1))-(z(1,2)^2));
a1 = ((z(1,1)*v1)-(z(1,2)*v0))/((z(2,2)*z(1,1))-(z(1,2)^2));


A=zeros(b,2);
i=1;
while i<=b % calcolo A
    A(i,1)=1;
    A(i,2)=x(i,1);
    i=i+1;
end

[a,b]=size(A);
i=1;
xx=zeros(2,1);
xx(1,1)=a0;
xx(2,1)=a1;
Ax=zeros(a,1);
while i<=b %Calcolo A*x
    Ax(i,1)=(z(i,1)*xx(1,1)+(z(i,2)*xx(2,1)));
    i=i+1;
end
i=1;

[a,b]=size(y);

while i<=a % Calcolo y - Ax
resto(i,1)=y(i,1)-Ax(i,1);    
i=i+1;    
end

i=1;
pp=0;
disp(A);
disp(Ax);
disp(resto);
while i<=a
    pp=pp+(resto(i,1)^2);
    i=i+1;
end
residuo=sqrt(pp);




end

