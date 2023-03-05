% 1. Create a n * n board
{n_quins_sizeN(R, 1..n)}=1 :- R=1..n.

% 2. Queens not in the same row.
:- n_quins_sizeN (R1, C), n_quins_sizeN (R2, C), R1 != R2.

% 3. Queens not in the same column.
:- n_quins_sizeN (R, C1), n_quins_sizeN (R, C2), C1 != C2.

% 4. No 2 Queens in same diagonal
:- n_quins_sizeN (R1, C1), n_quins_sizeN (R2, C2), R1 != R2, |R1-R2|=|C1-C2|.