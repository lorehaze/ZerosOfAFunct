close all; 

f=@(x)sqrt(x)+(1/(x-3));

x0=0.1;
m=[0.8,0.9,1,1.1,1.2,1.3,1.3191,1.4,1.5];
k=length(m); %lunghezza del vettore m
tol=1e-8;
maxiter=50;

for j=1:k
[zero,numiter,ordine] = baldari(x0,m(k),f,tol,maxiter);
fprintf('La funzione sqrt(x)+(1/(x-3)) converge allo \n zero %.8f in %d iterate.\n Il metodo ha ordine di convergenza %.8f.',zero,numiter,ordine(end));
end

figure;
hold on;
title('Grafico funzione F - Primo punto - Zero evidenziato');
fplot(f, 'LineWidth',2,'LineStyle','-');
plot(zero,0,'ro', 'MarkerSize',10);
hold off;

figure;
hold on;
title('Numero di iterate al variare di m');
set(gca,'XAxisLocation','top','YAxisLocation','left');
for j=1:k
    [zero(j),numiter(j),ordine] = baldari(x0,m(j),f,tol,maxiter);
    plot(2:numiter(j),m(j),'b+-');    
end
hold off;

figure;
hold on;
title('Rappresentazione di M al variare di ordine - PRIMO PUNTO');
for j=1:k
    [zero,numiter,ordine(j)] = baldari(x0,m(j),f,tol,maxiter);
     plot(2:numiter,m(k),'b+-');    
end
 hold off;


%%%%%%%%%%%%%%%% SECONDO PUNTO %%%%%%%%%%%%%%

x0=2.5;
tol=1e-8;
maxiter=20;
m =[-4,-3,-2.0209,-2];
h=length(m);

 for j=1:h
 [zero,numiter,ordine] = baldari(x0,m(h),f,tol,maxiter);
 fprintf('La funzione sqrt(x)+(1/(x-3)) converge allo \n zero %.8f in %d iterate.\n Il metodo ha ordine di convergenza %.8f.',zero,numiter,ordine(end));
 end


figure;
hold on;
title('Grafico funzione F - Secondo punto - Zero evidenziato');
fplot(f, 'LineWidth',2,'LineStyle','-');
plot(zero,0,'ro', 'MarkerSize',10)
hold off;

figure;
hold on;
title('Numero di iterate al variare di m - Secondo punto');
set(gca,'XAxisLocation','top','YAxisLocation','left');
for j=1:h
    [zero(h),numiter,ordine] = baldari(x0,m(h),f,tol,maxiter);
    plot(2:numiter,m(h),'b+-');    
end
hold off;
