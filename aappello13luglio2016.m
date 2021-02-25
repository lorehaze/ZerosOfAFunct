function [sol,numiter,p] = 13luglio2016(f,x0,tol,maxiter)

err_rel=1;
niter=0;

while err_rel>tol && niter<maxiter

    niter=niter+1;
    
    xk=x0+exp(1-x0)-1;
    
    err_abs(niter)=abs(xk-x0);
    
    err_rel(niter)=err_abs(niter)/abs(xk);
    
    x0=xk;
    
    if niter > 1
       
        p(niter)=log(err_abs(niter)) / log(err_abs(niter-1);
        
    end
    
end

numiter=niter;
sol=xk;

%%%calcolo e rappresentazione grafica ordine di convergenza

disp(err_abs(1:numiter))
p=log(err_abs(2:numiter))./log(err_abs(1:numiter-1));
figure(1);
hold on;
title('Ordine di convergenza');
plot(2:numiter,p,'b+-');


end