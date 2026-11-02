function B=prob4(A)
% B returns matrix A with an entry reversal order within each row whose
% first entry is greater than its last. Leave all the other rows unchanged

% A: matrix
% B: A with rows whose first entry > last entry reversed

B=A;
r=A(:,1)>A(:,end);
B(r,:)=A(r,end:-1:1);
end