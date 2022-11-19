% Gauss Elimination

A = [10,8,-3,1;2,10,1,-4;3,-4,10,1;2,2,-3,10];
B = [16;9;10;11];

n = max(size(A));
m = eye(n);
for j = 1 : n-1
    for i = j + 1 : n
        m(i,j) = A(i,j)/A(j,j);
        A(i,:) = (A(i,i) - (m(i,j) * A(j,:)));
        B(i,:) = (B(i,:) - (m(i,j) * B(j,:)));
    end
end    
X = zeros(n,1);
X(n,:) = B(n,:)/A(n,n);
disp(m);