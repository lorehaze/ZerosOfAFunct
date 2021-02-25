close all;
f=@(x)x-exp(-x);
x0=0;
tol=1e-10;
maxiter=100;


[sol,numiter,p] = appello8giugno2016_edit(f,x0,tol,maxiter);

fprintf("\n zero: %.10f \n numero iterazioni: %d \n precisione: %.10f",sol(end),numiter(end),p(end))

% Problema 2.2
n = 1000;
x0 = zeros(1,n+1);
for i = 1:n+1
    x0(i) = (i - 1)/ n;
    [~, numiter(i), ~] = appello8giugno2016_edit(f, x0(i), tol, maxiter);
end

figure;
hold on;
title('Grafico p');
plot(x0,numiter);