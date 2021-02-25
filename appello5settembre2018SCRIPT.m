close all;

f=@(x)1/x.^2-log(x);

m=-3/2;

x0=1;

tol=1e-8;

maxiter=50;

[sol,numiter] = appello5settembre2018(f,x0,m,tol,maxiter);

fprintf('\nm: %d\n Soluzione: %.8f  \nNumero iterazioni: %d\n',m,sol,numiter)
