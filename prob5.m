function b=prob5(a)
%calculating the mean of a without a loop

% a: sequence
% b: mean of a
% rule: no loop (recursion used instead, since sum is not allowed)

N=length(a);
if N==1
    b=a(1);
else
    b=(a(1)+(N-1)*prob5(a(2:N)))/N;
end
end

%[appendix]{"version":"1.0"}
%---
