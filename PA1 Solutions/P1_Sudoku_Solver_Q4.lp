% First create a grid space which allows numbers from 1 to 16
% in a sudoku grid of size 16
{ sudoku(Row, Col, N): Row=1..16, Col=1..16, Row>=Row1, Row<=Row1+3, Col>=Col1, Col<=Col1+3 }=1 :- N=1..16, Row1=4*(0..3)+1, Col1=4*(0..3)+1.

% Secondly, no 2 numbers are different in the same row and column
:- sudoku(Row, Col, N), sudoku(Row, Col, N1), N!=N1.

% Thirdly, no 2 columns are different given a row and number
:- sudoku(Row, Col, N), sudoku(Row, Col1, N), Col!=Col1.

% fourthly no 2 rows are different given a column and number
:- sudoku(Row, Col, N), sudoku(Row1, Col, N), Row!=Row1.

% Box 1
sudoku(1, 2, 6).
sudoku(2, 1, 15).
sudoku(2, 2, 11).
sudoku(3, 1, 13).
sudoku(3, 3, 9).
sudoku(3, 4, 12).
sudoku(4, 1, 2).
sudoku(4, 3, 16).

% Box 2
sudoku(5, 2, 15).
sudoku(5, 3, 11).
sudoku(5, 4, 10).
sudoku(6, 1, 12).
sudoku(6, 2, 13).
sudoku(7, 1, 5).
sudoku(7, 3, 6).
sudoku(7, 4, 1).
sudoku(8, 2, 2).

% Box 3
sudoku(9, 1, 10).
sudoku(9, 2, 7).
sudoku(9, 3, 15).
sudoku(9, 4, 11).
sudoku(10, 1, 9).
sudoku(11, 1, 1).
sudoku(11, 3, 4).
sudoku(11, 4, 6).
sudoku(12, 1, 16).
sudoku(12, 2, 14).

%Box 4
sudoku(13, 1, 11).
sudoku(13, 2, 10).
sudoku(13, 4, 15).
sudoku(14, 3, 12).
sudoku(15, 3, 5).
sudoku(16, 1, 3).
sudoku(16, 2, 16).

%Box 5
sudoku(1, 8, 8).
sudoku(2, 6, 16).
sudoku(2, 7, 14).
sudoku(4, 5, 11).
sudoku(4, 7, 15).
sudoku(4, 8, 10).

%Box 6
sudoku(5, 7, 16).
sudoku(5, 8, 2).
sudoku(6, 5, 4).
sudoku(6, 6, 1).
sudoku(6, 7, 5).
sudoku(6, 8, 6).
sudoku(7, 5, 12).
sudoku(7, 7, 9).
sudoku(8, 6, 10).
sudoku(8, 8, 11).

%Box 7
sudoku(9, 5, 16).
sudoku(10, 7, 1).
sudoku(11, 5, 9).
sudoku(11, 6, 13).
sudoku(12, 5, 7).
sudoku(12, 7, 10).
sudoku(12, 8, 15).

%Box 8
sudoku(13, 8, 16).
sudoku(14, 5, 1).
sudoku(14, 6, 4).
sudoku(14, 7, 6).
sudoku(15, 5, 8).
sudoku(15, 6, 12).
sudoku(15, 7, 13).
sudoku(16, 5, 10).
sudoku(16, 8, 7).

%Box 9
sudoku(1, 9, 11).
sudoku(1, 12, 15).
sudoku(2, 11, 12).
sudoku(3, 9, 3).
sudoku(3, 10, 16).
sudoku(3, 11, 14).
sudoku(4, 9, 1).

%Box 10
sudoku(5, 9, 13).
sudoku(5, 10, 8).
sudoku(5, 11, 9).
sudoku(5, 12, 12).
sudoku(6, 9, 2).
sudoku(6, 10, 3).
sudoku(7, 9, 15).
sudoku(7, 10, 11).
sudoku(7, 11, 10).
sudoku(7, 12, 7).
sudoku(8, 9, 6).
sudoku(8, 11, 5).


%Box 11
sudoku(9, 9, 12).
sudoku(9, 10, 13).
sudoku(10, 10, 2).
sudoku(10, 12, 16).
sudoku(11, 9, 7).
sudoku(11, 11, 11).
sudoku(12, 9, 4).
sudoku(12, 10, 6).
sudoku(12, 11, 1).

%Box 12
sudoku(13, 9, 9).
sudoku(13, 10, 12).
sudoku(13, 11, 13).
sudoku(14, 9, 16).
sudoku(15, 9, 10).
sudoku(15, 12, 11).
sudoku(16, 11, 6).

%Box 13
sudoku(1, 13, 14).
sudoku(1, 16, 16).
sudoku(2, 14, 6).
sudoku(3, 13, 15).
sudoku(3, 14, 11).
sudoku(3, 15, 10).

%Box 14
sudoku(6, 15, 11).
sudoku(6, 16, 10).
sudoku(7, 13, 16).
sudoku(7, 16, 3).
sudoku(8, 14, 13).
sudoku(8, 16, 9).

%Box 15
sudoku(9, 16, 6).
sudoku(10, 13, 10).
sudoku(10, 16, 11).
sudoku(11, 13, 3).
sudoku(11, 14, 16).
sudoku(12, 15, 13).
sudoku(12, 16, 8).

%Box 16
sudoku(13, 14, 1).
sudoku(13, 15, 5).
sudoku(13, 16, 4).
sudoku(14, 13, 11).
sudoku(14, 14, 10).
sudoku(15, 13, 2).
sudoku(15, 16, 14).
sudoku(16, 15, 12).
