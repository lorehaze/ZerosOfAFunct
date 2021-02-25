f=@(x)(cos(x)-x.^3);

h=1e-6;

tol=1e-10;

x0=0;

maxiter=100;

[sol,numiter] = zeri4PDF(f,h,tol,x0,maxiter)

fprintf('il metodo converge allo zero %.10f in %d iterate',sol,numiter)