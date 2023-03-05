% First create a grid space which allows numbers from 1 to 9
% in a antiknight grid of size 9

1{ antiknight(X, Y, N): X=1..9, Y=1..9, X1<=X, X<=X1+2, Y1<=Y, Y<=Y1+2 }1 :- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.
% Secondly, no 2 numbers are different in the same row and column
:- antiknight(X, Y, N), antiknight(X, Y, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- antiknight(X, Y, N), antiknight(X, Y1, N), Y!=Y1.

% Fourthly no 2 rows are different given a column and number
:- antiknight(X, Y, N), antiknight(X1, Y, N), X!=X1.

% Fifthly look for knight movements having same number and add as constraint
:- antiknight(X, Y, N), antiknight(X1, Y1, N), |X - X1| + |Y - Y1| == 3.

% BOX 1
antiknight(1, 2, 8).
antiknight(2, 1, 2).

% bOX 2
antiknight(4, 1, 6).
antiknight(6, 3, 8).

% box 3
antiknight(7, 1, 5).

% Box 4
antiknight(2, 4, 7).
antiknight(3, 6, 6).

% Box 5
antiknight(4, 4, 4).
antiknight(6, 6, 9).

% box 6
antiknight(7, 4, 8).
antiknight(8, 6, 5).

% box 7
antiknight(3, 9, 9).

% box 8
antiknight(4, 7, 7).
antiknight(6, 9, 5).

% box 9
antiknight(8, 9, 6).
antiknight(9, 8, 1).
