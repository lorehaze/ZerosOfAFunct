function[zero, step, step_teor] = bisezione(fun, a, b, tol, n_max)

%fa contains function's value calulated on a
fa = fun(a);

%fb contains function's value calculated on b
fb = fun(b);

%estimating n. of theorycal passes
%floor let me approximate the number with the minimum value
step_teor = floor(log2((b-a) /2) +1);

%print number of needed theorical passes
fprintf('N. of theorycal passes: %d \n', step_teor);

%Let's check if fa or fb are zeros.
if ( (fa * fb) > 0 )
    %print error msg that stops the function
    error('Wrong range. Conditions f(a)*f(b)<0 not satisfied\n')
elseif (fa == 0)
    zero = a;
    step = 0;
    fprintf('This method converge to the zero %9.10f in %d passes.\n', zero, step)
    return %stop execution
elseif (fb == 0)
    zero = b;
    step = 0;
    frpintf('This method converge to the zero %9.10f in %d passes.\n', zero, step)
    return %stop execution
end  %end if

c = (a+b) / 2;

fc = fun(c);

%range widht
I = (b-a) / 2;

%n. of iterations
n_iter=0;

fprintf('N. of iterations: %d.\n C value: %6.10f. \n Range widht: %4.2e', n_iter, c,I)

figure(1) % generate fig. 1
clf  %clean fig. 1

%plot(linspace(a,b,10), zeros(1,10), 'k-') %k=black -=line plotting x axis
%--- discontinued 'cause I use fplot at the end

hold on;    %write over fig.1

plot(c,0,'*','MarkerSize',10) %plot c with marker *

while I >= tol && n_iter < n_max && fc~=0
    
    if fa*fc < 0
        b = c;
        fb = fc;
        I = (b-a) / 2;
        
    elseif fb*fc < 0
        a = c;
        fa = fc;
        I = (b-a) / 2;
    end
    
    n_iter = n_iter+1;
    
    c= (a+b) / 2;
    
    fc = fun(c);
    
    fprintf('N. of iterations: %d.\n C value: %6.10f. \n Range widht: %4.2e', n_iter, c,I)
    
    figure(1)
    
    hold on;
    
    plot(c,0,'*','MarkerSize',10)
end

zero = c;
step = n_iter;

if(n_iter == n_max && I > tol)
    fprintf("The bisection method doesn't converge within the max steps number.")
else
    fprintf('The method converge to the zero %6.10f in %d steps.', zero , step)
end

figure(1)

fplot(fun,'LineWidth',2,'LineStyle','-')

hold on;

plot(zero,0,'ro','MarkerSize',10)

title('Bisection method')

%
fplot(@(x)0,'k')

hold off;

end %function end