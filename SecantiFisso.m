function [sol,numiter,p] = SecantiFisso(c,x0,f,tol,maxiter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
err=1;
numiter=0;
x2=0;
errass=zeros(1);
while numiter < maxiter && err>tol
   x2=x0-((f(x0)*(x0-c))/(f(x0)-f(c)));
   numiter=numiter+1;
   errass(numiter)=abs(x2-x0);
   err=errass(numiter)/min(abs(x2),abs(x0));
   x0=x2;
end
sol=x2;
p=log(errass(2:numiter))./log(errass(1:numiter-1));
figure(1)
plot(2:numiter, p,'b+-')
end
