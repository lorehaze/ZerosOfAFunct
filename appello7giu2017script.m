f=@(x)x+log(x);
x0=0;
maxiter=100;
tol=1e-6;

[sol,numiter,p]=appello7giu2017(f,x0,tol,maxiter);

fprintf("Il metodo converge allo zero %.6f con precisione %.4f in %d iterate",sol(end), p(end), numiter(end))

