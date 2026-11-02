function tester1(a)
%return the greatest numbers in the array

% a: sequence
% b: all elements of a equal to the greatest value
% chosen meaning: "greatest numbers" = every occurrence of the maximum;
% the signature has no output, so b is printed instead of returned

m=max(a);
b=a(a==m)
end
