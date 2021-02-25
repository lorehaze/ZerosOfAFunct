% tol=1e-8;
% x0=0;
% x1=0.1;
% maxiter=20;
% f=@(x)cos(x)-x;


tol=1e-6;
x0=-4;
x1=-2;
maxiter=20;
f=@(x)x.^2+x-6;

[sol,numiter,p] = Iterativo3Sec(f,tol,x0,x1,maxiter)