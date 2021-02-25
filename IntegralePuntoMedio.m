function In = IntegralePuntoMedio(f,a,b,n)
%% Calcolo integrale formula composta valor medio

h=(b-a)/n;

% Alternativa 

%x=zeros(n+1,1);
% for i=0:n
%     x(i+1)=a+i*h;
% end

% Alternativa 

%x=zeros(n+1,1);
% for i=1:n+1
%     x(i)=a+i*h;
% end

% Alternativa

x=linspace(a,b,n+1);
x=x(:); %% vettore colonna 

%% Calcolo In

% Alternativa 1
s=0;
for i=1:n
    s=s+f((x(i)+x(i+1))/2);
end

%% Alternativa 2
% calcolo punto medio con vettore

% xm=(x(2:end)+x(1:end-1))/2;
% 
% fm=f(xm);
% 
% % utilizzo o il ciclo 
% s=0; 
% for i=1:n 
%     s=s+fm(i);
% end

% uso la function sum di matlab

%s=sum(fm);

In=h*s;


end
