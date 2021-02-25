function[sol,numiter,p]=appello8giu16(f,x0,tol,maxiter)
err_rel=1;
niter=0;

while err_rel>tol && niter<maxiter
    niter=niter+1;
    gk=(f(x0+f(x0))-f(x0))/f(x0);
    xk=x0-(f(x0)/gk);
    err_abs(niter)=(abs(xk)-abs(x0));
    err_rel(niter)=err_abs(niter)/abs(xk);
    x0=xk;
    if niter>1
    p(niter)=log(err_abs(niter))/log(err_abs(niter-1));
    
    end
    
end

sol=xk;
numiter=niter;


end
