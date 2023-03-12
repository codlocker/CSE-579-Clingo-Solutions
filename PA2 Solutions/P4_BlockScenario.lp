%%%%%%%%%%%%%%%%%%%
% File: blocks-scenario.lp
%%%%%%%%%%%%%%%%%%%

% Block contents
block(a;b;c;d;e;f;g;h;i;j;k;l;m;n;o).

% Initial State
:- not on(m,table,0;l,m,0;a,l,0;b,a,0;c,b,0;o,table,0;n,o,0;d,n,0;e,d,0;j,e,0;k,j,0;f,table,0;g,f,0;h,g,0;i,h,0).

:- not on(e,j,x; a,e,x; n,a,x; i,d,x; h,i,x; m,h,x; o,m,x; k,g,x;c,k,x; b,c,x; l,b,x).