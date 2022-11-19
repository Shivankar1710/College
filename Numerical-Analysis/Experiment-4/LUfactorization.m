% LU Factorisation

A = [10,8,-3,1;2,10,1,-4;3,-4,10,1;2,2,-3,10];
disp(A);

n = max(size(A));
m = eye(n);
for j = 1 : n-1
    for i = j + 1 : n
        m(i,j) = A(i,j)/A(j,j);
        A(i,:) = (A(i,:) - (m(i,j) * A(j,:)));
    end
end
L = m;
U = A;
disp(L);
disp(U);
disp(L*U);