% First create a grid space which allows numbers from 1 to 16
% in a simple_sudoku4_solver grid of size 16
{ simple_sudoku4_solver(Row, Col, N): Row=1..16, Col=1..16, Row>=Row1, Row<=Row1+3, Col>=Col1, Col<=Col1+3 }=1 :- N=1..16, Row1=4*(0..3)+1, Col1=4*(0..3)+1.

% Secondly, no 2 numbers are different in the same row and column
:- simple_sudoku4_solver(Row, Col, N), simple_sudoku4_solver(Row, Col, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- simple_sudoku4_solver(Row, Col, N), simple_sudoku4_solver(Row, Col1, N), Col!=Col1.

% fourthly no 2 rows are different given a column and number
:- simple_sudoku4_solver(Row, Col, N), simple_sudoku4_solver(Row1, Col, N), Row!=Row1.

% Box 1
simple_sudoku4_solver(1, 2, 6).
simple_sudoku4_solver(2, 1, 15).
simple_sudoku4_solver(2, 2, 11).
simple_sudoku4_solver(3, 1, 13).
simple_sudoku4_solver(3, 3, 9).
simple_sudoku4_solver(3, 4, 12).
simple_sudoku4_solver(4, 1, 2).
simple_sudoku4_solver(4, 3, 16).

% Box 2
simple_sudoku4_solver(5, 2, 15).
simple_sudoku4_solver(5, 3, 11).
simple_sudoku4_solver(5, 4, 10).
simple_sudoku4_solver(6, 1, 12).
simple_sudoku4_solver(6, 2, 13).
simple_sudoku4_solver(7, 1, 5).
simple_sudoku4_solver(7, 3, 6).
simple_sudoku4_solver(7, 4, 1).
simple_sudoku4_solver(8, 2, 2).

% Box 3
simple_sudoku4_solver(9, 1, 10).
simple_sudoku4_solver(9, 2, 7).
simple_sudoku4_solver(9, 3, 15).
simple_sudoku4_solver(9, 4, 11).
simple_sudoku4_solver(10, 1, 9).
simple_sudoku4_solver(11, 1, 1).
simple_sudoku4_solver(11, 3, 4).
simple_sudoku4_solver(11, 4, 6).
simple_sudoku4_solver(12, 1, 16).
simple_sudoku4_solver(12, 2, 14).

%Box 4
simple_sudoku4_solver(13, 1, 11).
simple_sudoku4_solver(13, 2, 10).
simple_sudoku4_solver(13, 4, 15).
simple_sudoku4_solver(14, 3, 12).
simple_sudoku4_solver(15, 3, 5).
simple_sudoku4_solver(16, 1, 3).
simple_sudoku4_solver(16, 2, 16).

%Box 5
simple_sudoku4_solver(1, 8, 8).
simple_sudoku4_solver(2, 6, 16).
simple_sudoku4_solver(2, 7, 14).
simple_sudoku4_solver(4, 5, 11).
simple_sudoku4_solver(4, 7, 15).
simple_sudoku4_solver(4, 8, 10).

%Box 6
simple_sudoku4_solver(5, 7, 16).
simple_sudoku4_solver(5, 8, 2).
simple_sudoku4_solver(6, 5, 4).
simple_sudoku4_solver(6, 6, 1).
simple_sudoku4_solver(6, 7, 5).
simple_sudoku4_solver(6, 8, 6).
simple_sudoku4_solver(7, 5, 12).
simple_sudoku4_solver(7, 7, 9).
simple_sudoku4_solver(8, 6, 10).
simple_sudoku4_solver(8, 8, 11).

%Box 7
simple_sudoku4_solver(9, 5, 16).
simple_sudoku4_solver(10, 7, 1).
simple_sudoku4_solver(11, 5, 9).
simple_sudoku4_solver(11, 6, 13).
simple_sudoku4_solver(12, 5, 7).
simple_sudoku4_solver(12, 7, 10).
simple_sudoku4_solver(12, 8, 15).

%Box 8
simple_sudoku4_solver(13, 8, 16).
simple_sudoku4_solver(14, 5, 1).
simple_sudoku4_solver(14, 6, 4).
simple_sudoku4_solver(14, 7, 6).
simple_sudoku4_solver(15, 5, 8).
simple_sudoku4_solver(15, 6, 12).
simple_sudoku4_solver(15, 7, 13).
simple_sudoku4_solver(16, 5, 10).
simple_sudoku4_solver(16, 8, 7).

%Box 9
simple_sudoku4_solver(1, 9, 11).
simple_sudoku4_solver(1, 12, 15).
simple_sudoku4_solver(2, 11, 12).
simple_sudoku4_solver(3, 9, 3).
simple_sudoku4_solver(3, 10, 16).
simple_sudoku4_solver(3, 11, 14).
simple_sudoku4_solver(4, 9, 1).

%Box 10
simple_sudoku4_solver(5, 9, 13).
simple_sudoku4_solver(5, 10, 8).
simple_sudoku4_solver(5, 11, 9).
simple_sudoku4_solver(5, 12, 12).
simple_sudoku4_solver(6, 9, 2).
simple_sudoku4_solver(6, 10, 3).
simple_sudoku4_solver(7, 9, 15).
simple_sudoku4_solver(7, 10, 11).
simple_sudoku4_solver(7, 11, 10).
simple_sudoku4_solver(7, 12, 7).
simple_sudoku4_solver(8, 9, 6).
simple_sudoku4_solver(8, 11, 5).


%Box 11
simple_sudoku4_solver(9, 9, 12).
simple_sudoku4_solver(9, 10, 13).
simple_sudoku4_solver(10, 10, 2).
simple_sudoku4_solver(10, 12, 16).
simple_sudoku4_solver(11, 9, 7).
simple_sudoku4_solver(11, 11, 11).
simple_sudoku4_solver(12, 9, 4).
simple_sudoku4_solver(12, 10, 6).
simple_sudoku4_solver(12, 11, 1).

%Box 12
simple_sudoku4_solver(13, 9, 9).
simple_sudoku4_solver(13, 10, 12).
simple_sudoku4_solver(13, 11, 13).
simple_sudoku4_solver(14, 9, 16).
simple_sudoku4_solver(15, 9, 10).
simple_sudoku4_solver(15, 12, 11).
simple_sudoku4_solver(16, 11, 6).

%Box 13
simple_sudoku4_solver(1, 13, 14).
simple_sudoku4_solver(1, 16, 16).
simple_sudoku4_solver(2, 14, 6).
simple_sudoku4_solver(3, 13, 15).
simple_sudoku4_solver(3, 14, 11).
simple_sudoku4_solver(3, 15, 10).

%Box 14
simple_sudoku4_solver(6, 15, 11).
simple_sudoku4_solver(6, 16, 10).
simple_sudoku4_solver(7, 13, 16).
simple_sudoku4_solver(7, 16, 3).
simple_sudoku4_solver(8, 14, 13).
simple_sudoku4_solver(8, 16, 9).

%Box 15
simple_sudoku4_solver(9, 16, 6).
simple_sudoku4_solver(10, 13, 10).
simple_sudoku4_solver(10, 16, 11).
simple_sudoku4_solver(11, 13, 3).
simple_sudoku4_solver(11, 14, 16).
simple_sudoku4_solver(12, 15, 13).
simple_sudoku4_solver(12, 16, 8).

%Box 16
simple_sudoku4_solver(13, 14, 1).
simple_sudoku4_solver(13, 15, 5).
simple_sudoku4_solver(13, 16, 4).
simple_sudoku4_solver(14, 13, 11).
simple_sudoku4_solver(14, 14, 10).
simple_sudoku4_solver(15, 13, 2).
simple_sudoku4_solver(15, 16, 14).
simple_sudoku4_solver(16, 15, 12).
