close all;
f=@(x)(2*x.^2-3*x-2)/(x-1);

x0=1.6;

tol=1e-8;

maxiter=20;


[sol,numiter,error,p] = appello6settembre2016puntofisso(f,x0,tol,maxiter);


fprintf('Soluzione: %.8f    \n Numero iterazioni: %d   \n Errore commesso: %.8f   \n Convergenza del metodo: %.8f',sol,numiter,error,p(end))




