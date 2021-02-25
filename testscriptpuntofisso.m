g = @(x)x^2+2*x-6;

x0=1;

tol=1e-5;

nmax=190;


[zero,errore,niter,p]=PuntoFisso(g,x0,tol,nmax)