function [b,n]=prob3(a)
%For a given sequence a, consider the following operation:
%(1) Eliminate from a all values that are strictly less than the average of a.
%Write a function
   % function [b,n]=prob3(a)
        %where
       % a: sequence of numbers with only one global maximum.
        %n: number of times operation (1) can be repeated on a
        %until a is reduced to a single value.
        %b: final value of a (supposed to be the maximum value
        %of a).
        %Matlab command for average of a: mean(a).
        %Rule: use a single loop.
n = 0;
while numel(a) > 1
    a = a(a >= mean(a));   % keep values not strictly less than the mean
    n = n + 1;
end
b = a;
end
