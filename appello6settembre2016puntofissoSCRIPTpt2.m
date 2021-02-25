%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%               Seconda parte                  %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;

x0=[-2.2:0.2:0]

%prendo la lunghezza del vettore delle x0
i=length(x0);

tol=1e-8;
maxiter=100;

for j=1:i
     [sol(i),numiter,error,p] = appello6settembre2016puntofisso(f,x0(j),tol,maxiter);
end

figure(2);
hold on;
title('primo grafico');
for j=1:i
    plot(x0(j),sol(j),'b+-');
end