% Define the possible values for each cell
1 { sudoku(X,Y,V) : V=1..26 } 1 :- X=1..9, Y=1..9.

% Secondly, no 2 numbers are different in the same row and column
:- sudoku(X, Y, N), sudoku(X, Y, N1), N!=N1.

% Each row must contain unique values
:- sudoku(X,Y,V), sudoku(X,Y1,V), Y!=Y1.

% Each column must contain unique values
:- sudoku(X,Y,V), sudoku(X1,Y,V), X!=X1.

% Define the alphabet
alphabet("ABCDEFGHIJKLMNOPQRSTUVWXYZ").

% Show the solutions as letters instead of numbers
#show sudoku/3.

% Define the grid.

% Box 1
sudoku(1, 1, 5).
sudoku(1, 3, 6).
sudoku(2, 1, 2).
sudoku(2, 3, 26).
sudoku(3, 2, 4).

% box 2
sudoku(6, 1, 7).
sudoku(6, 3, 5).

% Box 3
sudoku(7, 2, 7).
sudoku(8, 1, 26).
sudoku(8, 2, 6).
sudoku(9, 2, 5).
sudoku(9, 3, 1).

% Box 4
sudoku(1, 5, 2).
sudoku(2, 4, 5).
sudoku(2, 5, 6).
sudoku(3, 4, 8).

% Box 5
sudoku(4, 6, 5).
sudoku(5, 5, 8).
sudoku(5, 6, 26).
sudoku(6, 5, 3).

% Box 6
sudoku(7, 4, 2).
sudoku(7, 6, 6).
sudoku(9, 4, 26).
sudoku(9, 6, 8).

% Box 7
sudoku(1, 7, 4).
sudoku(1, 8, 26).
sudoku(3, 8, 2).
sudoku(3, 9, 6).

% Box 8
sudoku(4, 7, 26).
sudoku(4, 9, 4).
sudoku(5, 7, 2).
sudoku(5, 8, 3).
sudoku(6, 7, 6).

% Box 9
sudoku(7, 9, 26).
sudoku(8, 7, 8).
sudoku(8, 9, 7).
sudoku(9, 7, 3).


