% Power Method

A = [4,1,0;1,20,1;0,1,4];
x = [1;1;1];
tol = 0.001;
err = 10;
k = 0;
while(tol < err)
    y = A*x;
    K = norm(y,inf);
    x = ((1/K) * y);
    err = abs(K-k);
    k = K;
end
disp(k);
disp(eig(A));
