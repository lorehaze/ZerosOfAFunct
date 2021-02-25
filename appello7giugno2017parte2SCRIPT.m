f=@(x)x+log(x);

x0=0;

tol=1e-6;

maxiter=100;

[sol, numiter,p] = appello7giugno2017parte2 (f,x0,tol,maxiter)


fprintf('sol: %.6f   \n numiter: %d     \n p:%.6f', sol,numiter,p)