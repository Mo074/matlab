function [b,n]=prob5(a)
%value a(n) is a local maxima of a if 1<n<length(a) and a(n) is larger than
%both a(n-1) and a(n+1) with no loop

% a: sequence
% b: values of the local maxima of a (chosen meaning)
% n: positions of the local maxima in a (chosen meaning)
% rule: no loop

N=length(a);
k=2:N-1;
c=a(2:N-1)>a(1:N-2) & a(2:N-1)>a(3:N);
n=k(c);
b=a(n);
end
