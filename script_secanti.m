% x0=0.05;
% c0=2;
% tol=1e-8;
% maxiter=30;
%f=@(x)log(5*x)+2*(x)^2;

[sol, numiter,p] = secanti(x0,c0,tol,maxiter,f)