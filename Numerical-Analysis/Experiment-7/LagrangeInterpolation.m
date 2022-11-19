% Lagrange Interpolation

format long
x = [0,0.25,0.5,0.75];
f = [1,1.64872,2.71828,4.8169];
p = 0.43;
n = length(x);
for i = 1 : n
    l(i) = 1.0;
    for j = 1 : n
        if j ~= i
            l(i) = ((p - x(j)) * l(i))/(x(i) - x(j));
        end
    end
end
sum = 0.0;
for i = 1 : n
    sum = sum + (l(i) * f(i));
end
sum