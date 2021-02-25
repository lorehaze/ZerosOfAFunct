x0=1;
c=0;
tol=1e-8;
maxiter=20;
f=@(x)(x^3)+4*x*cos(x)-2;
[sol,numiter,p] = SecantiFisso(c,x0,f,tol,maxiter);