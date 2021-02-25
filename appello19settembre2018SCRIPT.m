f=@(x)x.^2-x-6;
x0=-2.5;
tol=1e-8;
maxiter=20;

[sol,numiter,p] = appello19settembre2018(f,x0,tol,maxiter);

fprintf('\nSoluzione: %.8f \nNumero di iterazioni: %d  \n Ordine di convergenza del metodo: %.8f',sol(end),numiter,p(end))