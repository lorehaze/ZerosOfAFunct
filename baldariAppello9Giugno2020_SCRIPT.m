%%%%%%%%%%%%%%%TEST SCRIPT BALDARI LORENZO APPELLO 9 GIUGNO 2020 %%%%%%%%%%%%%%%%%%%%%
close all; 

f=@(x)sqrt(x)-(1/(x-3));

x0=0.1;
%m=[0.8,0.9,1,1.1,1.2,1.3,1.3191,1.4,1.5];

m=0.8;

k=length(m);

tol=1e-8;
maxiter=50;

[zero,numiter,ordine] = BaldariAppello9Giugno2020(f,x0,m,tol,maxiter)