%%%%%%%%%%%%%%%%%%%
% File: blocks-scenario.lp
%%%%%%%%%%%%%%%%%%%
block("a";"b";"c";"d";"e";"f";"g";"h";"i";"j";"k";"l";"m";"n";"o").
% initial state
:- not on("m",table,0; "l","m",0; "a","l",0; "b","a",0; "c","b",0; "o",table,0; "n","o",0; "d","n",0;
 "e","d",0; "j","e",0; "k","j",0; "f",table,0; "g","f",0; "h","g",0; "i","h",0;).
% goal
:- not on("e","j",m; "a","e",m; "n","a",m; "i","d",m; "h","i",m; "m","h",m; "o","m",m; "k","g",m;
 "c","k",m; "b","c",m; "l","b",m;).