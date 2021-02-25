function [sol,numiter,p] = Iterativo3Sec(f,tol,x0,x1,maxiter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
err=1;
numiter=0;
x2=0;
errass=zeros(1);
while numiter < maxiter && err > tol
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);
    numiter=numiter+1;    
    errass(numiter)=abs(x2-x1);
    err=errass(numiter)/min(abs(x2),abs(x1));
    x1=x2;
    if (numiter==maxiter) 
    fprintf('Il metodo non converge entro il numero massimo di iterate');
end
end
sol=x2;
p=log(errass(2:numiter))./log(errass(1:numiter-1));
figure(1);
plot(2:numiter,p,'b+-');


end

