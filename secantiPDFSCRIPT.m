f=@(x)cos(x)-x;

tol=1e-10;

x0=0;
x1=0.1;
maxiter=100;


[sol,numiter,errel]=secantipdf(f,x0,x1,tol,maxiter)