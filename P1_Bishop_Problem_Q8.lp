% 1. create a chess grid
{bishop(Row, 1..n)} :- Row=1..n.

% 2. Find bishops in the same diagonal and remove them.
:- bishop(Row1, Col1), bishop(Row2, Col2), |Row1 - Row2| == |Col1 - Col2|, Row1 != Row2.

% 3. Maximize the value of bishops in the solution
#maximize{ 1, Row, Col : bishop(Row, Col) }.