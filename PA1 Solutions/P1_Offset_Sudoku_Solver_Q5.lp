% First create a grid space which allows numbers from 1 to 9
% in a offset grid of size 9
1{ offset(X, Y, N): X=1..9, Y=1..9, X>=X1, X<=X1+2, Y>=Y1, Y<=Y1+2 }1 :- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.
% Secondly, no 2 numbers are different in the same row and column
:- offset(X, Y, N), offset(X, Y, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- offset(X, Y, N), offset(X, Y1, N), Y!=Y1.

% Fourthly no 2 rows are different given a column and number
:- offset(X, Y, N), offset(X1, Y, N), X!=X1.

% Fifthly check the same colored offsets do not have same number
:- offset(X, Y, N), offset(X1, Y1, N), X \ 3 == X1 \ 3, Y \ 3 == Y1 \ 3, 1{X != X1; Y != Y1}.

% Box 1
offset(1, 1, 4).
offset(2, 1, 6).
offset(2, 2, 1).
offset(2, 3, 9).
offset(3, 1, 5).

% Box 2
offset(4, 3, 4).
offset(5, 3, 5).
offset(6, 2, 6).
offset(6, 3, 3).

%Box 3
offset(7, 1, 7).
offset(7, 2, 8).
offset(7, 3, 1).
offset(8, 1, 9).
offset(9, 2, 5).
offset(9, 3, 2).

%Box 4
offset(1, 6, 6).
offset(2, 4, 3).
offset(2, 5, 2).
offset(2, 6, 7).
offset(3, 5, 4).
offset(3, 6, 1).

%Box 5
offset(4, 4, 6).
offset(4, 5, 9).
offset(4, 6, 2).
offset(5, 5, 3).
offset(5, 6, 4).
offset(6, 4, 1).
offset(6, 6, 5).

%Box 6
offset(7, 4, 2).
offset(7, 5, 6).
offset(8, 4, 5).
offset(8, 6, 3).
offset(9, 5, 1).

%Box 7
offset(1, 7, 1).
offset(1, 8, 3).
offset(2, 8, 5).
offset(3, 7, 9).
offset(3, 9, 6).

%Box 8
offset(4, 7, 3).
offset(4, 9, 5).
offset(5, 8, 6).
offset(6, 7, 7).
offset(6, 9, 4).

%Box 9
offset(7, 8, 4).
offset(7, 9, 3).
offset(8, 7, 2).
offset(8, 9, 1).
offset(9, 7, 6).
offset(9, 8, 7).
offset(9, 9, 9).
