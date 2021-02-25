function [pn]=Lagrange(xbar,x,y)
%__________________________________________________________________________
% Algoritmo con cui si determina il valore del polinomio interpolatore
% ottenuto con la formula di Lagrange in un insieme di punti
%__________________________________________________________________________
% Parametri di input:
% f:funzione da interpolare
% xbar:vettore dei punti in cui calcolare il polinomio
% x:vettore dei nodi
%__________________________________________________________________________
% Parametri di output:
% y:vettore contenente i valori assunti dal polinomio interpolatore
%__________________________________________________________________________

x=x(:);
y=y(:);
n=length(x);

% Calcolo il denominatore degli Zj
den = zeros(n,1);
den(1)=prod(x(1)-x(2:n));
for i=2:n-1
    den(i)=prod(x(i)-x(1:i-1))*prod(x(i)-x(i+1:n));
end
den(n)=prod(x(n)-x(1:n-1));

% Costruisco gli Zj
z= zeros(n,1);
for j=1:n
    z(j)=y(j)./den(j);
end

m=length(xbar);
pn=zeros(m,1);

% Calcolo w(x) o pi_n(x)

for k=1:m
    nodo=0;
    for h=1:n            % Controllo se un nodo coincide con x
        if (xbar(k)==x(h))
            nodo=h;
        end
    end
    if (nodo==0)    % Nessun nodo coincide con x
        w=1;
        for i=1:n
            w=w*(xbar(k)-x(i));
        end
        % Costruisco Lj(x)=w(x)*sommaj(zj/(x-xj))
        L=0;
        for j=1:n
            L=L+sum(z(j)./(xbar(k)-x(j)));
        end
        pn(k)=w*L;
    else
        pn(k)=y(nodo);       % x=x
    end
end






