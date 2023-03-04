% First create a grid space which allows numbers from 1 to 9
% in a sudoku grid of size 9
1{ sudoku(X, Y, N): X=1..9, Y=1..9, X>=X1, X<=X1+2, Y>=Y1, Y<=Y1+2 }1 :- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.
% Secondly, no 2 numbers are different in the same row and column
:- sudoku(X, Y, N), sudoku(X, Y, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- sudoku(X, Y, N), sudoku(X, Y1, N), Y!=Y1.

% fourthly no 2 rows are different given a column and number
:- sudoku(X, Y, N), sudoku(X1, Y, N), X!=X1.