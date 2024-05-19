%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ID:
%%% CS3050
%%% CS@St-Andrews
%%% Exercise 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% Facts

block(a).
block(b).
block(c).
block(d).

on(a, table, 1).
on(none, a, 1).
on(b, table, 1).
on(c, b, 1).
on(d, c, 1).
on(x, d, 1).


%%%% Rules 

%%% Clause 1
valid(A):- 
    on(A, B, 1),
    (block(B); B == table),
    on(C, A, 1),
    (block(C); C == none).

%%% Clause 2
isOnPossible(A,B,SX):-
    
%%% Clause 3
printAllPossible(SX):-
