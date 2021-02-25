function [sol, numiter,p] = secanti(x0,c0,tol,maxiter,f)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

err=1;
numiter=0;
errass=zeros(1);

while numiter<maxiter && err>tol
    x2=x0-(f(x0)*(x0-c0))/(f(x0)-f(c0));
    numiter=numiter+1;
    errass(numiter)=abs(x2-x0);
    err=errass(numiter)/min(abs(x2),abs(x0));
    if (f(x2)*f(c0)>0)
        c0=x0;
    else 
        c0=c0;  
    end 
    x0=x2;
end         
   sol=x2;
   p=log(errass(2:numiter))./log(errass(1:numiter-1));
   figure(1);
   plot(2:numiter,p,'b+-');
end

