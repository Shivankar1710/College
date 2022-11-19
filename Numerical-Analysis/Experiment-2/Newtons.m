% Newton's Method

x0 = input('Enter initial approximation: ');
f = @(x) ((x^2) - 17);
g = @(x) (2*x);
tol = 10^(-5);
err = 100;
while(err > tol)
    x1 = x0 - (f(x0)/g(x0));
    err = abs(x1-x0);
    x0 = x1;
end
disp(x0);