function b=prob5(a)
%calculating the mean of a without a loop

N=length(a);
s=0;
for n=1:N
    s=s+a(n);
end
b=s/N;
end

%[appendix]{"version":"1.0"}
%---
