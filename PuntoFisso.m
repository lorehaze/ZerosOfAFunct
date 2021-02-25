function [zero,errore,niter,p]=PuntoFisso(g,x0,tol,nmax)
%________________________________________________________
% Metodo PUNTO FISSO per trovare lo zero di una funzione
% g funzione
% x0 punto iniziale 
% tol tolleranza
% nmax numero massimo di iterate
%________________________________________________________

niter = 0;
err_rel = 1;
err=[];
p=[];
while err_rel>= tol && niter < nmax
    niter = niter + 1;
    xn = g(x0);
    err = cat(1,err,abs(xn-x0));
    
%     % errore relativo utile se lo zero=0 caso f(x)=x-sin(x) e g(x)=sin(x) e
%     % chiedo una tolleranza di 1e-8
%     err_rel=err(niter)/max(1,min(abs(xn),abs(x0)));

    
    % errore relativo 
    err_rel=err(niter)/min(abs(xn),abs(x0));

    %%
    fprintf('%d  %6.8f     %4.2e \n',niter, xn, err_rel)
    x0=xn;
    if niter>1
        p=cat(1,p,log(err(niter))/log(err(niter-1)));
    end    
        
end

if (niter==nmax) && (err_rel > tol)
    fprintf('Il metodo del punto fisso non converge entro il numero massimo di iterate richieste\n');
elseif isnan(err_rel)
    error('Non converge verifica ipotesi di convergenza')
else
    fprintf('Il metodo del punto fisso converge in %d iterate allo zero %6.8f commettendo un errore di %4.2e \n',...
        niter, xn, err_rel);
end
zero = xn;
errore=err_rel;

figure
fplot(g,'LineWidth',2,'Linestyle','-')
hold on
plot(zero,0,'ro', 'MarkerSize',10)

figure
plot(2:niter,p,'LineWidth',2,'Linestyle','-','Marker','*','MarkerSize',10)
end