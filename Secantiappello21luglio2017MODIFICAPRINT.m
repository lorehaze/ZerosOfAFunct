function [sol,numiter,p] = Secantiappello21luglio2017MODIFICAPRINT(f,x0,c,tol,maxiter)

err_rel=1;
niter=0;
err_abs=zeros(1);

while err_rel>tol & niter<maxiter
   
    niter=niter+1;
    
    xk=x0-((f(x0)*(x0-c))/f(x0)-f(c));
    
    err_abs(niter)= abs(xk-x0);
    
    err_rel(niter)=err_abs(niter)/abs(xk);
    
%     if niter>1
%        
%         p(niter)=log(err_abs(niter)) / log(err_abs(niter-1));
%         
%     end
    
    x0=xk;
    
end

numiter=niter;
sol=xk;

disp(err_abs(1:numiter))
p=log(err_abs(2:numiter))./log(err_abs(1:numiter-1));
figure(1);
plot(2:numiter,p,'b+-');

end