function [zero,numiter,ordine] = BaldariAppello9Giugno2020(f,x0,m,tol,maxiter)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%%%%%%%%%%%%%%%DATI IN INPUT%%%%%%%%%%%%%%%%%%
%   f = funzione
%   x0 = valore iniziale
%   m = costante
%   tol = tolleranza
%   maxiter = numero massimo di iterazioni
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%DATI IN OUTPUT%%%%%%%%%%%%%%%%%
%   zero = soluzione
%   numiter = numero di iterazioni effettuate
%   ordine = ordine di convergenza del metodo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%preparazione all'ingresso nel ciclo while
err=1
niter=0;
err_abs=zeros(1);  

while (err>tol) && (niter<maxiter)
   
    niter=niter+1;  %incremento il numero di iterazioni effettuate
    
    xk=x0-(f(x0)./m);  %definisco la successione
    
    err_abs(niter)=abs(xk-x0);
    
    err=err_abs(niter)/min(abs(xk),abs(x0));

    x0=xk;  %assegno x0=xk per continuare l'iterazione
    
end

numiter=niter;

zero=xk;

%%%calcolo e rappresentazione grafica ordine di convergenza

disp(err_abs(1:numiter))
ordine=log(err_abs(2:numiter))./log(err_abs(1:numiter-1));
figure(1);
hold on;
title('Ordine di convergenza');
plot(2:numiter,ordine,'b+-');
hold off;

end

