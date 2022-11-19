% Gauss Seidel

A = [4.63,-1.21,3.22;-3.07,5.48,2.11;1.26,3.11,4.57];
B = [2.22;-3.17;5.11];
D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;
disp(D);
disp(L);
disp(U);
x = [0;0;0];
err = 1;
tol = 0.001;
x(:,1) = x;
i = 1;
while(err > tol)
    x(:,i+1) = (inv(L+D) * B) - (inv(L+D) * U * x(:,i));
    err = abs(x(:,i+1) - x(:,i));
    i = i + 1;
end
disp(x(:,i));