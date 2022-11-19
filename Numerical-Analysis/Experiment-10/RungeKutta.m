% Runge-Kutta Fourth Order Method

h = 0.2;
x = 0 : h : 1;
y = zeros(1,length(x));
y(1) = 1;
f = @(x,y) (-y + 2 * cos(x));
for i = 1 : (length(t) - 1)
    k1 = f(x(i),y(i));
    k2 = f(x(i) + 0.5 * h,y(i) + 0.5 * h * k1);
    k3 = f(x(i) + 0.5 * h,y(i) + 0.5 * h * k2);
    k4 = f(x(i) + h,y(i) + k3 * h);
    y(i+1) = y(i) + (h/6) * (k1 + (2 * k2) + (2 * k3) + k4);
end
y = y(:)