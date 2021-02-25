function [sol,numiter,p] = appello19Settembre2018p2 (f,x0,tol,maxiter)

err_rel=1;
niter=0;
err_abs=zeros(1);


while(err_rel>tol) & (niter<maxiter)
   
    niter=niter+1;
    
    gk=(x0.^2+6)/((2*x0)-1);
    
    xk=gk;
    
    err_abs(niter)=abs(xk-x0);
    
    err_rel(niter)=err_abs(niter)/abs(xk);
    
    x0=xk;
  
end

sol=xk;
numiter=niter;


if numiter>1
    disp(err_abs(1:numiter))
    p=log(err_abs(2:numiter))./log(err_abs(1:numiter-1));
    figure(1);
    hold on;
    title('Ordine di convergenza del metodo.');
    plot(2:numiter,p,'b+-');
end


end