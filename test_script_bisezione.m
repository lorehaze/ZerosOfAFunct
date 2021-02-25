f=@(x)x.^2+3*x-6;


fplot(f, 'LineWidth',2,'LineStyle','-')

a=0;

b=5;

%tol=1e-20;%tolleranza

%n_max=200;

%[zero, step, step_teor] = bisezione(f,a,b,tol,n_max)

epsilon=1e-4;

[x,it]=bisezioni(f,a,b,epsilon)