function b=prob3(a)
%b returns sequence a after inserting between every 2 consecutive entries
%there average

% a: sequence
% b: a with the average of every 2 consecutive entries inserted between them

N=length(a);
b=[];
if N==0
    return;
end
b(1:2:2*N-1)=a;
b(2:2:2*N-2)=(a(1:N-1)+a(2:N))/2;
end
