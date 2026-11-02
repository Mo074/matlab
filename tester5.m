function tester5(a)
%make this a spiral matrix

% a: size of the matrix (positive integer)
% chosen meaning: build the a-by-a matrix holding 1..a^2 in a clockwise
% spiral starting at the top-left corner, and print it (no output given)

A=[];
A(a,a)=0;
top=1;
bottom=a;
left=1;
right=a;
k=1;
while k<=a*a
    for j=left:right
        A(top,j)=k;
        k=k+1;
    end
    top=top+1;
    for i=top:bottom
        A(i,right)=k;
        k=k+1;
    end
    right=right-1;
    if top<=bottom
        for j=right:-1:left
            A(bottom,j)=k;
            k=k+1;
        end
        bottom=bottom-1;
    end
    if left<=right
        for i=bottom:-1:top
            A(i,left)=k;
            k=k+1;
        end
        left=left+1;
    end
end
A
end
