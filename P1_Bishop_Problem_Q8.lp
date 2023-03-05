% 1. create a chess grid
{bishop_solns(Row, 1..n)} :- Row=1..n.

% 2. Find bishop_solns in the same diagonal and remove them.
:- bishop_solns(Row1, Col1), bishop_solns(Row2, Col2), |Row1 - Row2| == |Col1 - Col2|, Row1 != Row2.

% 3. Maximize the value of bishop_solns in the solution
#maximize{ 1, Row, Col : bishop_solns(Row, Col) }.