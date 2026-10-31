function b=newfunc(a)
%return median of a

% a: sequence
% b: median of a
% (assumed: for even length, b is the mean of the two middle values)

N=length(a);
% bubble sort a in ascending order
for k=1:N-1
    for i=1:N-k
        if a(i)>a(i+1)
            temp=a(i+1);
            a(i+1)=a(i);
            a(i)=temp;
        end
    end
end
if mod(N,2)==1
    b=a((N+1)/2);
else
    b=(a(N/2)+a(N/2+1))/2;
end
end

%[appendix]{"version":"1.0"}
%---
