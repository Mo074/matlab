function b=newfunc(a)
%return mean of a without loop

% a: sequence
% b: mean of the elements of a
% rule: no loop (sum not taught, so recursion is used instead)

N=length(a);
if N==1
    b=a(1);
else
    b=(a(1)+(N-1)*newfunc(a(2:end)))/N;
end
end

%[appendix]{"version":"1.0"}
%---
