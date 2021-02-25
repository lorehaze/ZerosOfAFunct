f=@(x)x.^2-x-6;

x0=-2.5;

tol=1e-8;

maxiter=20;

[sol,numiter,p] = appello19Settembre2018p2 (f,x0,tol,maxiter);

fprintf('Soluzione: %.8f \n Numero iterate: %d \n Ordine di convergenza: %.8f',sol,numiter,p(end))