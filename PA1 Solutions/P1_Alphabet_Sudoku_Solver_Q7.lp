% Define the possible values for each cell
% As per the alphabet_soln the following alphabets are present 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'Z'.
% 1 { alphabet_soln(X,Y,V) : V={1;2;3;4;5;6;7;8;26} } 1 :- X=1..9, Y=1..9.

{ alphabet_soln(X, Y, N): X=1..9, Y=1..9, X>=X1, X<=X1+2, Y>=Y1, Y<=Y1+2 }=1 :- N=("A";"B";"C";"D";"E";"F";"G";"H";"Z"), X1=3*(0..2)+1, Y1=3*(0..2)+1.

% Secondly, no 2 numbers are different in the same row and column
:- alphabet_soln(X, Y, N), alphabet_soln(X, Y, N1), N!=N1.

% Each row must contain unique values
:- alphabet_soln(X,Y,V), alphabet_soln(X,Y1,V), Y!=Y1.

% Each column must contain unique values
:- alphabet_soln(X,Y,V), alphabet_soln(X1,Y,V), X!=X1.

% Define the grid.

% Box 1
alphabet_soln(1, 1, "E").
alphabet_soln(1, 3, "F").
alphabet_soln(2, 1, "B").
alphabet_soln(2, 3, "Z").
alphabet_soln(3, 2, "D").

% box 2
alphabet_soln(6, 1, "G").
alphabet_soln(6, 3, "E").

% Box 3
alphabet_soln(7, 2, "G").
alphabet_soln(8, 1, "Z").
alphabet_soln(8, 2, "F").
alphabet_soln(9, 2, "E").
alphabet_soln(9, 3, "A").

% Box 4
alphabet_soln(1, 5, "B").
alphabet_soln(2, 4, "E").
alphabet_soln(2, 5, "F").
alphabet_soln(3, 4, "H").

% Box 5
alphabet_soln(4, 6, "E").
alphabet_soln(5, 5, "H").
alphabet_soln(5, 6, "Z").
alphabet_soln(6, 5, "C").

% Box 6
alphabet_soln(7, 4, "B").
alphabet_soln(7, 6, "F").
alphabet_soln(9, 4, "Z").
alphabet_soln(9, 6, "H").

% Box 7
alphabet_soln(1, 7, "D").
alphabet_soln(1, 8, "Z").
alphabet_soln(3, 8, "B").
alphabet_soln(3, 9, "F").

% Box 8
alphabet_soln(4, 7, "Z").
alphabet_soln(4, 9, "D").
alphabet_soln(5, 7, "B").
alphabet_soln(5, 8, "C").
alphabet_soln(6, 7, "F").

% Box 9
alphabet_soln(7, 9, "Z").
alphabet_soln(8, 7, "H").
alphabet_soln(8, 9, "G").
alphabet_soln(9, 7, "C").


