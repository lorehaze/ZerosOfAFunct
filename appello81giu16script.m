close all;

%problema 1

f = @(x) x - exp(-x);
tol = 1e-10;
maxiter = 100;
x0 = 0;

[sol,numiter,p]=appello8giu16MODIFICAPLOT(f,x0,tol,maxiter);

fprintf('lo zero della funzione "x-exp(-x)"  è  %.10f ed è stato raggiunto in %d iterate.', sol, numiter);

% % Problema 2.2
% n = 1000;
% x0 = zeros(1,n+1);
% for i = 1:n+1
%     x0(i) = (i - 1)/ n;
%     [~, numiter(i), ~] = appello8giu16(f, x0(i), tol, maxiter);
% end
% 
% figure;
% plot(x0,numiter);