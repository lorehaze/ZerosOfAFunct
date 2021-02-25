close all;

f=@(x)1/x.^2-log(x);

m=[-3/2,-2,-5/2,-3];

i=length(m);

x0=1;

tol=1e-8;

maxiter=50;

%disp(err_abs(1:numiter))

figure(1);
hold on;
title('Numero di iterate');
% view([90 -90]);
% set (gca,'YDir','reverse');
set(gca,'XAxisLocation','top','YAxisLocation','left');

for j=1:i
    [sol(j),numiter] = appello5settembre2018(f,x0,m(j),tol,maxiter);
    fprintf('\nm: %d\n Soluzione: %.8f  \nNumero iterazioni: %d\n',m(j),sol(j),numiter)
    plot(2:numiter,m(j),'b+-');

    
end





