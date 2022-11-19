% Fixed Point Iteration

y = input('Enter number: ');
g = @(x) (10/x - 4*x)^(1/2);
x = 10;
e = 10^(-3);
i = 1;
while(abs(x-y) > e && i <= 50)
    x = y;
    y = g(x);
    i = i+1;
end
disp(y);