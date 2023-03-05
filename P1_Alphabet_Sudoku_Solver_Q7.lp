% Define the possible values for each cell
1 { sudoku(X,Y,V) : V=1..26 } 1 :- X=1..9, Y=1..9.

% Each row must contain unique values
:- sudoku(X,Y,V), sudoku(X,Y1,V), Y!=Y1.

% Each column must contain unique values
:- sudoku(X,Y,V), sudoku(X1,Y,V), X!=X1.

% Each 3x3 square must contain unique values
:- sudoku(X,Y,V), sudoku(X1,Y1,V), X/3 == X1/3, Y/3 == Y1/3, X!=X1, Y!=Y1.

% Define the 