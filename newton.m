function [x1,res,numIter]=newton(f,df,x0,tol,maxIter)
% Metodo di Newton
% (creato durante la lezione del 20 marzo 2014)
%
% sintassi:
%   [x,res,numIter]=newton(f,df,x0,tol,maxIter)
%
% output:
%   x: approssimazione dello zero
%   res: valore assoluto del residuo
%   numIter >  0: numero di iterate effettuate
%   numIter = -1: raggiunto maxIter con err > tol
%
err=tol+1;%e solo per entrare nel ciclo
numIter=0;
while err>tol && numIter<maxIter
    x1=x0-f(x0)/df(x0);
    err=abs(x1-x0);
    numIter=numIter+1;
    x0=x1;
    res=abs(f(x1));
    fprintf('%d \t %1.15e \t %1.3e \n',numIter,x1,err)
end
if err>tol
    disp('Attenzione: numero massimo di iterate raggiunto senza')
    disp('            aver ottenuto la precisione richiesta')
    numIter=-1;
end
