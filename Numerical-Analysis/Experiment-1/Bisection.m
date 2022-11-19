% Bisection Method

a = input('Enter the first number: ');
b = input('Enter the second number: ');
f = @(x) ((x^2) - 29);
if(f(a) * f(b) > 0)
    disp('Wrong Choice')
else
    p = (a + b)/2;
    e = abs(f(p));
    while(e> 10^(-3))
        if(f(a) * f(p) < 0)
            b = p;
        else 
            a = p;
        end
        p = (a + b)/2;
        e = abs(f(p));
    end
end
disp(p);