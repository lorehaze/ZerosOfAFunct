function [sol,numiter] = appello5settembre2018(f,x0,m,tol,maxiter)

err_rel=1;  %err relativo per entrare nel while
niter=0;     %inizializzazione del numero iterate per il while
err_abs=zeros(1);       %standard per farti il grafico


while (err_rel>tol) & (niter<maxiter)   %sempre uguali le condizioni

    niter=niter+1;          
    
    xk=x0-(f(x0)/m);        %successione
    
    err_abs(niter)=abs(xk-x0);
    
    err_rel(niter)=err_abs(niter) / abs(xk);
    
    %err_rel(niter)=err_abs(niter)/max(1,abs(xk),abs(x0));
    
    x0=xk;
    
end

sol=xk;

numiter=niter;

end

