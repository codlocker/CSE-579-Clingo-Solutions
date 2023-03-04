% First create a grid space which allows numbers from 1 to 9
% in a sudoku grid of size 9
1{ sudoku(X, Y, N): X=1..9, Y=1..9, X>=X1, X<=X1+2, Y>=Y1, Y<=Y1+2 }1 :- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.
% Secondly, no 2 numbers are different in the same row and column
:- sudoku(X, Y, N), sudoku(X, Y, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- sudoku(X, Y, N), sudoku(X, Y1, N), Y!=Y1.

% fourthly no 2 rows are different given a column and number
:- sudoku(X, Y, N), sudoku(X1, Y, N), X!=X1.

% box 1
sudoku(1, 1, 1).
sudoku(2, 2, 3).
sudoku(3, 3, 9).

% box 2
sudoku(4, 3, 5).
sudoku(5, 2, 1).
sudoku(6, 1, 6).

% box 3
sudoku(7, 1, 3).
sudoku(8, 2, 4).
sudoku(9, 3, 7).

% box 4
sudoku(1, 6, 7).
sudoku(2, 5, 2).
sudoku(3, 4, 6).

% box 5
sudoku(4, 4, 3).
sudoku(5, 5, 8).
sudoku(6, 6, 4).

% box 6

% box 7
sudoku(1, 8, 9).
sudoku(2, 9, 8).
sudoku(3, 7, 5).

% box 8
sudoku(4, 7, 9).
sudoku(5, 9, 2).

% box 9
sudoku(7, 8, 1).
sudoku(8, 9, 7).
sudoku(9, 7, 3).

