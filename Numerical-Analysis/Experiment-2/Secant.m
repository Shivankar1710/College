% Secant Method

x0 = input('Enter initial approximation for x0: ');
x1 = input('Enter initial approximation for x1: ');
f = @(x) ((x^2) - 17);
g = @(x) (2*x);
tol = 10^(-5);
err = 100;
while(err > tol)
    x2 = x1 - (f(x1) * (x1-x0))/(f(x1) - f(x0));
    err = abs(x1-x0);
    x0 = x1;
    x1 = x2;
end
disp(x2);