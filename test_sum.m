function total = test_sum(values)
% TEST_SUM Add up the elements of a numeric vector.
total = 0
for k = 1:numel(values)
    total = total + values(k);
