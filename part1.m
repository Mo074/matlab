function b=part1(a)
%number of accidents in nyc in 2026 in a variable

% a: sequence of accident counts in nyc during 2026 (e.g. one entry per month)
% b: total number of accidents in nyc in 2026
% (chosen meaning: the 2026 data is not in the file, so it is passed in
%  as a and the total is stored in the variable b)

N=length(a);
b=0;
for n=1:N
    b=b+a(n);
end
end
