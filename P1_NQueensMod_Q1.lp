% 10*10 board size queens problem.
#const n = 10.

% 1. Create a n * n board
{queen(R, 1..n)}=1:-R=1..n.

% 2. Queens not in the same row.
:- queen(R1, C), queen(R2, C), R1 != R2.

% 3. Queens not in the same column.
:- queen(R, C1), queen(R, C2), C1 != C2.

% 4. No 2 queens in same diagonal
:- queen(R1, C1), queen(R2, C2), R1 != R2, |R1 - R2| == |C1 - C2|.

% 5. No queens in the 4 * 4 = 16 squares in the 4 to 7 rows and columns of the board
:- queen(R, C), R >= 4, R <= 7, C >= 4, C <= 7.
