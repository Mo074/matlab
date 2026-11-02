function newtest(a)
%reverse matrix and remove negatives



b=a(end:-1:1,end:-1:1);
% chose: "remove negatives" keeps entries >=0; a matrix can't keep its
% shape with entries removed, so the result is printed as a row sequence
b=b(b>=0)'
end
