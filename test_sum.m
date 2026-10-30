function total = test_sum(values)
% TEST_SUM Add up all elements of a numeric vector.
total = 0;
for k = 1:numel(values)
    total = total + values(k);
end
end
