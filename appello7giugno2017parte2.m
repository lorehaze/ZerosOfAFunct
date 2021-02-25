function [sol, numiter,p] = appello7giugno2017parte2 (f,x0,tol,maxiter)

err_rel=1;
niter=0;

while err_rel>tol && niter<maxiter
    
    niter=niter+1;
   
    xk = x0*(1-log(x0))/(x0+1);
    
    err_abs(niter)=(abs(xk-x0));
    
    err_rel(niter)=err_abs(niter)/abs(xk);
    
%     if niter > 1
%        p(niter)=log(err_abs(niter))/log(err_abs(niter-1)); 
%     end
end

p=0;
numiter=niter;
sol=xk;

end
