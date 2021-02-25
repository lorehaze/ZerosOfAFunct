function [x] = soluzionesistemaconforwardebackward(L,U,b)

S=size(L);
m=S(1);
if S(1)~=S(2)
    error('matrix mast be square')
end

x=zeros(1,m);
x(1,1)=b(1)./L(1,1);


%bacward substitution
for k=2:m
   
  
        x1=1/L(k,k).*(b(k)-sum(L(k,k-1:-1:1).*x(k-1:-1:1)));
        x(1,k)=x1;
end
y=x';

%%%%%%%%%%

S=size(U);
m=S(1);
if S(1)~=S(2)
    error('matrix mast be square')
end

x=zeros(1,m);
x(1,m)=y(end)./U(m,m);


%bacward substitution
for k=m-1:-1:1
   
  
        x1=1/U(k,k).*(y(k)-sum(U(k,k+1:end).*x(k+1:end)));
        x(k)=x1;
end
x=x';


end
