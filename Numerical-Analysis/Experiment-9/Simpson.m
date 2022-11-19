% Simpson Rule

f = @(x) (cos(x))^2;
a = input('Enter lower,a: ');
b = input('Enter upper,b: ');
n = input('Enter interval,n: ');
h = (b-a)/n;
sum = 0;
for i = 1 : n-1
    x = a + (i * h);
    if(rem(i,2) == 0)
        sum = sum + (2 * f(x));
    else
        sum = sum + (4 * f(x));
    end
end
sum = sum + f(a) + f(b);
func = sum * (h/3);
disp(func);