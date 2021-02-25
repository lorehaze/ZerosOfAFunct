function[sol,numiter,p]=appello7giu2017(f,x0,tol,maxiter)
err_rel=1;
numiter=0;


while err_rel>tol & numiter<maxiter
    numiter=numiter+1;
    xk=exp(-x0);
    err_abs(numiter)=abs(xk-x0);
    err_rel=err_abs(numiter)/abs(xk);
    if numiter>1
        p(numiter)=log(err_abs(numiter))/log(err_abs(numiter-1));
    end
    x0=xk;
    
end

sol=xk;



end
