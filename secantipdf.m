function[sol,numiter,errel]=secantipdf(f,x0,x1,tol,maxiter)
err_rel=1;
err=[];
niter=0;




while err_rel>tol && niter<maxiter
    niter=niter+1;
    xn=x1-((x1-x0)/(f(x1)-f(x0))*f(x1));
    err(niter)=abs(xn)-abs(x1);
    err_rel=err(niter)/min(abs(xn),abs(x1));
    x0=x1;
    x1=xn;


end


numiter=niter;
sol=xn;
errel=err_rel;




end
