close all;

%funzione test di Lagrange
fun=@(x)1./(1+(x.^2));
a=-5;
b=5;
n=b-a+1;
%x=linspace(a,b,50);
x=[-5:1:5];
y=fun(x);
xbar=linspace(a,b,100)';
ybar=fun(xbar);
%%%%%%%%%%%%%%%%%%%%%%%%%
pn=Lagrange(xbar,x,y);
err = abs(pn-ybar);
figure(1)
subplot(2,2,1)
plot(xbar,pn,'.-', xbar, ybar,'r')
subplot(2,2,2)
plot(xbar,err,'.-')
%xcheb = (a+b)/2-(b-a)/2*cos((2*(1:n)*pi)/(2*n+2));
xcheb=(-5)*cos(((2*i+1)*pi)/2);
ycheb=fun(xcheb);
pncheb=Lagrange(xbar,xcheb,ycheb);
errcheb = abs(pncheb-ybar);
subplot(2,2,3)
plot(xbar,pncheb,'g--',xbar, ybar,'r' )
subplot(2,2,4)
plot(xbar,errcheb,'.-')
