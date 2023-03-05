% 1. create a chess grid
{bishop(R, 1..n)} :- R=1..n.

% 2. Find bishops in the same diagonal and remove them.
:- bishop(R1, C1), bishop(R2, C2), |R1 - R2| == |C1 - C2|, R1 != R2.

% 3. Maximize the value of bishops in the solution
#maximize{ 1, X, Y : bishop(X, Y) }.