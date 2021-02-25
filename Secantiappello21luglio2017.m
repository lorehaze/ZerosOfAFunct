function [sol,numiter,p] = Secantiappello21luglio2017(f,x0,c,tol,maxiter)

err_rel=1;
niter=0;

while err_rel>tol & niter<maxiter
   
    niter=niter+1;
    
    xk=x0-((f(x0)*(x0-c))/f(x0)-f(c));
    
    err_abs(niter)= abs(xk-x0);
    
    err_rel(niter)=err_abs(niter)/abs(xk);
    
    if niter>1
       
        p(niter)=log(err_abs(niter)) / log(err_abs(niter-1));
        
    end
    
    x0=xk;
    
end

numiter=niter;
sol=xk;

%print p

figure(1);
hold on;
title('Ordine di convergenza del metodo');
for i=0:numiter
    plot(p,'b+-');
end


end