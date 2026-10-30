# MATLAB course style

All MATLAB code in this repo is coursework. Write it the way the course
lectures (Lectures 4–10, HW5) do, using only what was taught there. When
answering programming questions, use the same style.

## Function layout

```matlab
function b=name(a)

% a: sequence
% b: what the output contains
% rule: no loop

N=length(a);
...
end
```

- Inputs are usually `a`, `b` (sequences) or `A` (matrix); outputs `b`, `c`, `B`.
  Multiple outputs: `function [a,N]=pi_approx(eps)`.
- Header comments describe each input/output as `% a: ...` and list any
  constraint as `% rule: ...`.
- Compact assignments with no spaces around `=`: `N=length(a);`, `i=i+1;`.
- End statements with `;` unless the value is meant to print.

## Rules in comments are requirements

Lines like `% rule: no loop`, `% no loop allowed`, `in 1 line`, `in 2 lines`,
`with a *single* command`, `not allowed to use function 'max'`,
`you are not allowed to use the function sqrt` must be obeyed exactly.

## What was taught (use these)

- Loops: `for n=2:N ... end`, `while cond ... end` with a manual counter
  (`n=0;` then `n=n+1;`). Stopping tests like `while abs(c-b)>=eps`.
- Conditionals: `if ... elseif ... else ... end`.
- Comparisons and logic: `== ~= < <= > >=`, `~`, `true`, `false`.
  `&&` / `||` for single values, `&` / `|` for logical sequences.
- Building a sequence: `b=[];` then `b=[b a(i)];` or `b=[b,a(i)];`.
- Swapping with a temporary: `temp=a(i+1); a(i+1)=a(i); a(i)=temp;`.
- Ranges and index vectors: `1:N`, `1:2:N`, `N:-1:1`, `end`, `end:-1:1`,
  `a([r+1:N, 1:r])`, `b([1:2:2*N 2:2:2*N])=[a b];`, `a(k+1:end)`.
- Logical indexing: `b=a(a>0);`, `c(c<a(1))`.
- Matrices: `[2 5 8; 9 4 7]`, `A(i,:)`, `A(:,j)`, `A(end:-1:1,:)`,
  transpose `A'` (a column `V` becomes a row with `V'`).
- Recursion (`mergeSort`, `quickSort`).
- Built-ins seen in lectures: `length`, `abs`, `sqrt`, `mod`, `floor`,
  `max`, `min`, `pi`. Empty test: `length(M)==0`.
- Plotting: `stem(a)`, `plot([x0 x1],[y0 y1],'b','LineWidth',2)`,
  `xlabel('n','fontsize',24)`, `ylabel(...)`, `hold on` / `hold off`,
  `figure(2)`.

## Avoid (not taught)

Don't use built-ins the course hasn't covered when indexing or a loop does
the job, for example `fliplr`, `flip`, `flipud`, `numel`, `width`, `height`,
`isempty`, `sum`, `cumsum`, `prod`, `sort`, `unique`, `diff`, `find`,
`any`, `all`, `circshift`, `repmat`, `reshape`, `arrayfun`, `cellfun`,
`a(:)`, `+=`, string/cell/table types. Use the taught equivalents instead,
e.g. `a(end:-1:1)` instead of `fliplr(a)`, `A(:,end)` instead of
`A(:,width(A))`, `length(M)==0` instead of `isempty(M)`, an explicit loop
instead of `sum`. Use `size` only when a matrix's row or column count is
genuinely needed.
