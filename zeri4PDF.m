function [sol,numiter] = zeri4PDF(f,h,tol,x0,maxiter)

err_rel=1;
niter=0;

while err_rel>tol & niter<maxiter
   
    niter=niter+1;
    
    xk=(x0-2*h)*(f(x0)/f(x0+h)-f(x0-h));
    
    err_abs(niter)=abs(xk-x0);
    
    err_rel=err_abs(niter)/max(1,min(abs(xk),abs(x0)));
    
    x0=xk;
    
end

sol=xk;
numiter=niter;
end