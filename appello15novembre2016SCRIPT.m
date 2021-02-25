a=[0:2:20];

i=length(a);

x0=1;

tol=1e-10;

maxiter=20;

for j=0:i
    [sol,numiter,rerr] = appello15novembre2016(a(j),x0,tol,maxiter);
end


