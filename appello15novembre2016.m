function [sol,numiter,rerr] = appello15novembre2016(a,x0,tol,maxiter)
%Appello 15 novembre 2016
%   Metodo del punto fisso


err_rel=1;
niter=0;
err_ass=zeros(1);

while (err_rel>tol) & (niter<maxiter)
    niter=niter+1;
    
    xk=(x0*(x0^2)+(3*a))/(3*(x0^2))+a;
    
    err_abs(niter)=abs(xk-x0);
    
    err_rel(niter)=err_abs(niter)/abs(xk);
    
    x0=xk;
end

sol=xk;

numiter=niter;

rerr=err_rel(end);

end
