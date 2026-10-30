function b=newprob1(a)
%%function B=prob4(A)
%where
%A: any rectangular matrix
%B: contains the columns of A whose last value is positive
%Rule: no loop allowed
b = a(:, a(end,:) > 0); % "last value" = last row entry of each column
end

%[appendix]{"version":"1.0"}
%---
