% First create a grid space which allows numbers from 1 to 9
% in a sudoku grid of size 9
1{ sudoku(X, Y, N): X=1..9, Y=1..9, X>=X1, X<=X1+2, Y>=Y1, Y<=Y1+2 }1 :- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.
% Secondly, no 2 numbers are different in the same row and column
:- sudoku(X, Y, N), sudoku(X, Y, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- sudoku(X, Y, N), sudoku(X, Y1, N), Y!=Y1.

% Fourthly no 2 rows are different given a column and number
:- sudoku(X, Y, N), sudoku(X1, Y, N), X!=X1.

% Fifthly check the same colored offsets do not have same number
:- sudoku(X, Y, N), sudoku(X1, Y1, N), X \ 3 == X1 \ 3, Y \ 3 == Y1 \ 3, 1{X != X1; Y != Y1}.

% Box 1
sudoku(1, 1, 4).
sudoku(2, 1, 6).
sudoku(2, 2, 1).
sudoku(2, 3, 9).
sudoku(3, 1, 5).

% Box 2
sudoku(4, 3, 4).
sudoku(5, 3, 5).
sudoku(6, 2, 6).
sudoku(6, 3, 3).

%Box 3
sudoku(7, 1, 7).
sudoku(7, 2, 8).
sudoku(7, 3, 1).
sudoku(8, 1, 9).
sudoku(9, 2, 5).
sudoku(9, 3, 2).

%Box 4
sudoku(1, 6, 6).
sudoku(2, 4, 3).
sudoku(2, 5, 2).
sudoku(2, 6, 7).
sudoku(3, 5, 4).
sudoku(3, 6, 1).

%Box 5
sudoku(4, 4, 6).
sudoku(4, 5, 9).
sudoku(4, 6, 2).
sudoku(5, 5, 3).
sudoku(5, 6, 4).
sudoku(6, 4, 1).
sudoku(6, 6, 5).

%Box 6
sudoku(7, 4, 2).
sudoku(7, 5, 6).
sudoku(8, 4, 5).
sudoku(8, 6, 3).
sudoku(9, 5, 1).

%Box 7
sudoku(1, 7, 1).
sudoku(1, 8, 3).
sudoku(2, 8, 5).
sudoku(3, 7, 9).
sudoku(3, 9, 6).

%Box 8
sudoku(4, 7, 3).
sudoku(4, 9, 5).
sudoku(5, 8, 6).
sudoku(6, 7, 7).
sudoku(6, 9, 4).

%Box 9
sudoku(7, 8, 4).
sudoku(7, 9, 3).
sudoku(8, 7, 2).
sudoku(8, 9, 1).
sudoku(9, 7, 6).
sudoku(9, 8, 7).
sudoku(9, 9, 9).
