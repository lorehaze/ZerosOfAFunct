function [zero,err,res,niter]=newton(fun ,dfun,x0,tol,nmax,varargin)
%NEWTON Trova uno zero di una funzione .
% ZERO=NEWTON(FUN ,DFUN,X0,TOL ,NMAX) approssima lo
% zero ZERO della funzione definita nella function
% FUN , continua e derivabile , usando il metodo di
% Newton e partendo da X0. Se la ricerca
% dello zero fallisce , il programma restituisce un
% messaggio d?errore.
% FUN e DFUN possono essere
% inline function o function definite in M-file.
% ZERO=NEWTON(FUN ,DFUN,X0,TOL ,NMAX,P1,P2 ,...) passa
% i parametri opzionali P1,P2 ,... alle funzioni
% FUN(X,P1,P2 ,...) e DFUN(X,P1,P2 ,...).
% [ZERO,RES ,NITER]= NEWTON(FUN ,...) restituisce il
% valore del residuo RES in ZERO ed il numero di
% iterazioni NITER necessario per calcolare ZERO.
x = x0;
fx = fun(x,varargin{:});
dfx = dfun(x,varargin{:});
niter = 0;
err = 1;
while err >= tol && niter < nmax
    niter = niter + 1;
    diff = - fx/dfx;
    x = x + diff;
    err = abs(diff);
    fx = fun(x,varargin{:});
    dfx = dfun(x,varargin{:});
    fprintf('%d %6.4f %4.2e \n',niter, x, err)
end
if (niter==nmax && err > tol)
    fprintf('Newton non converge entro il numero massimi di iterate richieste\n');
end
zero = x;
res = fx;
return