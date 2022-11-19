% Modified Euler

x0 = 0;
y0 = 0;
f = @(t,y) (-y + 2 * cos(t));
h = 0.2;
t = 0 : h : 1;
for i = 1 : (length(t) - 1)
    y1 = x0 + (h * f(x0,y0));
    x1 = x0 + h
    y1 = x0 + (h/2) * (f(x0,y0) + f(x1,y1));
    x0 = x1;
    y0 = y1;
end
display(y1);