function test(a)
%write a function that shifts the rows and columns down one down and one
%right

% a: matrix
% B: a with its rows shifted down by one and its columns shifted right by one
% chosen meaning: circular shift (last row wraps to the top, last column
% wraps to the left); the signature has no output, so B is printed

[N,M]=size(a);
B=a([N 1:N-1],[M 1:M-1])
end

%[appendix]{"version":"1.0"}
%---
