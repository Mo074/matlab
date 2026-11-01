function b=test1(a)
%writing a function that takes a and inverses it and multiplies each value
%by 3

% a: sequence
% b: a in reverse order, each value multiplied by 3
% "inverses" taken to mean reverse the order (not 1./a)

b=3*a(end:-1:1);
end

%[appendix]{"version":"1.0"}
%---
