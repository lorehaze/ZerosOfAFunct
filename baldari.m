function [zero,numiter,ordine] = baldari(x0,m,f,tol,maxiter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

err=1;
numiter=0;
x1=0;
errass=zeros(1);

while numiter < maxiter && err > tol
    x1=x0-(f(x0)/m);
    numiter=numiter+1;
    errass(numiter)=abs(x1-x0);
    err=errass(numiter)/min(abs(x1),abs(x0));
    err=errass(numiter);
    x0=x1;
end
zero=x1;
disp(errass(1:numiter))
ordine=log(errass(2:numiter))./log(errass(1:numiter-1));
figure;
hold on;
title('Ordine di convergenza');
plot(2:numiter,ordine,'b+-');
hold off;
end

