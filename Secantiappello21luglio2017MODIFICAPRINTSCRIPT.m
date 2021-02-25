close all;

x0=0;

c=0;

f=@(x)x.^3+4*x*cos(x)-2;

tol=1e-10;

maxiter=20;


[sol,numiter,p] = Secantiappello21luglio2017MODIFICAPRINT(f,x0,c,tol,maxiter)