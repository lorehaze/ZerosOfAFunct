close all;

%funzione test di Lagrange
fun = inline('1+sin(x);','x');
a=-pi/2;
b=pi/2;
n=b-a+1;
x=linspace(a,b,50);
y=fun(x);
xbar=linspace(a,b,100)';
ybar=fun(xbar);
pn=Lagrange(xbar,x,y);
err = abs(pn-ybar);
figure(1)
subplot(2,2,1)
plot(xbar,pn,'.-', xbar, ybar,'r')
subplot(2,2,2)
plot(xbar,err,'.-')
xcheb = (a+b)/2-(b-a)/2*cos((2*(1:n)*pi)/(2*n+2));
ycheb=fun(xcheb);
pncheb=Lagrange(xbar,xcheb,ycheb);
errcheb = abs(pncheb-ybar);
subplot(2,2,3)
plot(xbar,pncheb,'g--',xbar, ybar,'r' )
subplot(2,2,4)
plot(xbar,errcheb,'.-')
