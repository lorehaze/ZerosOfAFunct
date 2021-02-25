clear 
close all %% chiudere le figure


a=0;
b=1;
f=@(x)exp(-x.^2);

tol=1e-8;

n=1;

In = IntegralePuntoMedio(f,a,b,n);

errore=1;
fprintf('n=%d    In= %4.10f errore=%4.2e \n',n,In,errore);
while errore>tol
      n=2*n;
      I2n=int_puntomedio(f,a,b,n);
      errore=abs(I2n-In)/abs(I2n);
      In=I2n;    
      fprintf('n=%d    In= %4.10f errore=%4.2e \n',n,In,errore);
end

fprintf('\n \n Valore integrale = %4.10f ottenuto con un errore=%4.2e',In,errore);
