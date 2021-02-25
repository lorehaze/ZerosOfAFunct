x0=2;

m=1;

f=@(x)x.^2+3*x-6;

tol=1e-4;

maxiter=100;

[sol,numiter,p] = corde(x0,m,f,tol,maxiter)