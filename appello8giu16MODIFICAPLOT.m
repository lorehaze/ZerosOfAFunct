function[sol,numiter,p]=appello8giu16MODIFICAPLOT(f,x0,tol,maxiter)
err_rel=1;
niter=0;
err_abs=zeros(1);

while err_rel>tol & niter<maxiter
    niter=niter+1;
    gk=(f(x0+f(x0))-f(x0))/f(x0);
    xk=x0-(f(x0)/gk);
    err_abs(niter)=(abs(xk)-abs(x0));
    err_rel(niter)=err_abs(niter)/abs(xk);
    x0=xk;
%     if niter>1
%     p(niter)=log(err_abs(niter))/log(err_abs(niter-1));
%     
%     end
    
end

sol=xk;
numiter=niter;

figure(1);
% hold on;
% disp(err_abs(1:numiter))
% figure(1);
% plot(2:numiter,p,'b+-');


disp(err_abs(1:numiter))
p=log(err_abs(2:numiter))./log(err_abs(1:numiter-1));
figure(1);
plot(2:numiter,p,'b+-');


end
