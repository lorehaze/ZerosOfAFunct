function [sol,numiter,error,p] = appello6settembre2016puntofisso(f,x0,tol,maxiter)

err_rel=1;
niter=0;
err_ass=zeros(1);

while (err_rel>tol) & (niter<maxiter)
   
    niter=niter+1;
    
       gk=x0-2+(x0/(x0-1));

   xk=gk;
    
   
   err_abs(niter)= abs(xk-x0);
   
   err_rel(niter)=err_abs(niter)/abs(xk);
   
   x0=xk;

%    if niter>1
%       
%        p(niter)=log(err_abs(niter)) / log(err_abs(niter-1));
%        
%    end
    error=err_rel(niter);
end

sol=xk;
numiter=niter;

disp(err_abs(1:numiter))
p=log(err_abs(2:numiter))./log(err_abs(1:numiter-1));
figure(1);
hold on;
title('Ordine di convergenza del metodo');
plot(2:numiter,p,'b+-');
end