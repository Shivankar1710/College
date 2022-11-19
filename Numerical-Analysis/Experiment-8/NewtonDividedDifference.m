% Newton Divided Difference Interpolation

x = [1;1.5;2;2.5];
y = [2.7183;4.4817;7.3891;12.1825];
p = input('Enter the number: ');
n = max(size(y));
for i = 1 : n
    d(i,1) = y(i);
end
for j =2 : n
    for i = j : n
        d(i,j) = (d(i,j-1) - d(i-1,j-1))/(x(i) - x(i-j+1));
    end
end
disp(d);
prod = 1;
sum = d(1,1);
for i = 1 : n-1
    prod = (prod * (p - x(i)));
    sum = (prod * d(i+1,i+1)) + sum;
end
disp(sum);