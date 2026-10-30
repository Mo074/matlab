function b=prob2(a)
%for every third position in this array i want you to inverse the every
%third position and put it and output into B

% Interpretation: "inverse" means the reciprocal (1/x) of the elements at
% positions 3, 6, 9, ...; all other elements are copied to b unchanged.
b = a;
b(3:3:end) = 1 ./ a(3:3:end);
end
