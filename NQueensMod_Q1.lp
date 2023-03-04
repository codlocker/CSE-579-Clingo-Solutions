#const n = 10.
{queen(R, 1..n)}=1:-R=1..n.
:- queen(R1, C), queen(R2, C), R1 != R2.
:- queen(R1, C1), queen(R2, C2), R1 != R2, abs(R1 - R2)=abs(C1 - C2).
:- queen(R, C), R >= 4, R <= 7, C >= 4, C <= 7.
