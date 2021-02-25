f=@(x)x.^2+3*x-6;

x0=1;

df=0;

tol=1e-10;

maxIter=100;


[x1,res,numIter]=newton(f,df,x0,tol,maxIter)