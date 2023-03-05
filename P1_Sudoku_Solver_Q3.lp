% First create a grid space which allows numbers from 1 to 9
% in a simple_sudoku_solver grid of size 9
1{ simple_sudoku_solver(X, Y, N): X=1..9, Y=1..9, X>=X1, X<=X1+2, Y>=Y1, Y<=Y1+2 }1 :- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.
% Secondly, no 2 numbers are different in the same row and column
:- simple_sudoku_solver(X, Y, N), simple_sudoku_solver(X, Y, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- simple_sudoku_solver(X, Y, N), simple_sudoku_solver(X, Y1, N), Y!=Y1.

% fourthly no 2 rows are different given a column and number
:- simple_sudoku_solver(X, Y, N), simple_sudoku_solver(X1, Y, N), X!=X1.

% box 1
simple_sudoku_solver(1, 1, 1).
simple_sudoku_solver(2, 2, 3).
simple_sudoku_solver(3, 3, 9).

% box 2
simple_sudoku_solver(4, 3, 5).
simple_sudoku_solver(5, 2, 1).
simple_sudoku_solver(6, 1, 6).

% box 3
simple_sudoku_solver(7, 1, 3).
simple_sudoku_solver(8, 2, 4).
simple_sudoku_solver(9, 3, 7).

% box 4
simple_sudoku_solver(1, 6, 7).
simple_sudoku_solver(2, 5, 2).
simple_sudoku_solver(3, 4, 6).

% box 5
simple_sudoku_solver(4, 4, 3).
simple_sudoku_solver(5, 5, 8).
simple_sudoku_solver(6, 6, 4).

% box 6

% box 7
simple_sudoku_solver(1, 8, 9).
simple_sudoku_solver(2, 9, 8).
simple_sudoku_solver(3, 7, 5).

% box 8
simple_sudoku_solver(4, 7, 9).
simple_sudoku_solver(5, 9, 2).

% box 9
simple_sudoku_solver(7, 8, 1).
simple_sudoku_solver(8, 9, 7).
simple_sudoku_solver(9, 7, 3).

