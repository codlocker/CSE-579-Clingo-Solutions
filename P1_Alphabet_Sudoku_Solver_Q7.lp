% Define the possible values for each cell
% As per the alphabet_soln the following alphabets are present 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'Z'.
% 1 { alphabet_soln(X,Y,V) : V={1;2;3;4;5;6;7;8;26} } 1 :- X=1..9, Y=1..9.

{ alphabet_soln(X, Y, N): X=1..9, Y=1..9, X>=X1, X<=X1+2, Y>=Y1, Y<=Y1+2 }=1 :- N=(1;2;3;4;5;6;7;8;26), X1=3*(0..2)+1, Y1=3*(0..2)+1.

% Secondly, no 2 numbers are different in the same row and column
:- alphabet_soln(X, Y, N), alphabet_soln(X, Y, N1), N!=N1.

% Each row must contain unique values
:- alphabet_soln(X,Y,V), alphabet_soln(X,Y1,V), Y!=Y1.

% Each column must contain unique values
:- alphabet_soln(X,Y,V), alphabet_soln(X1,Y,V), X!=X1.

% Define the grid.

% Box 1
alphabet_soln(1, 1, 5).
alphabet_soln(1, 3, 6).
alphabet_soln(2, 1, 2).
alphabet_soln(2, 3, 26).
alphabet_soln(3, 2, 4).

% box 2
alphabet_soln(6, 1, 7).
alphabet_soln(6, 3, 5).

% Box 3
alphabet_soln(7, 2, 7).
alphabet_soln(8, 1, 26).
alphabet_soln(8, 2, 6).
alphabet_soln(9, 2, 5).
alphabet_soln(9, 3, 1).

% Box 4
alphabet_soln(1, 5, 2).
alphabet_soln(2, 4, 5).
alphabet_soln(2, 5, 6).
alphabet_soln(3, 4, 8).

% Box 5
alphabet_soln(4, 6, 5).
alphabet_soln(5, 5, 8).
alphabet_soln(5, 6, 26).
alphabet_soln(6, 5, 3).

% Box 6
alphabet_soln(7, 4, 2).
alphabet_soln(7, 6, 6).
alphabet_soln(9, 4, 26).
alphabet_soln(9, 6, 8).

% Box 7
alphabet_soln(1, 7, 4).
alphabet_soln(1, 8, 26).
alphabet_soln(3, 8, 2).
alphabet_soln(3, 9, 6).

% Box 8
alphabet_soln(4, 7, 26).
alphabet_soln(4, 9, 4).
alphabet_soln(5, 7, 2).
alphabet_soln(5, 8, 3).
alphabet_soln(6, 7, 6).

% Box 9
alphabet_soln(7, 9, 26).
alphabet_soln(8, 7, 8).
alphabet_soln(8, 9, 7).
alphabet_soln(9, 7, 3).


