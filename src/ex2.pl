%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ID:
%%% CS3050
%%% CS@St-Andrews
%%% Exercise 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% Facts
operator(and).
operator(or).
operator(imp).
operator(not).

proposition(a).
proposition(b).
proposition(c).
proposition(d).
proposition(e).

dynamic -truth/2.

hasTruth(a, true).
hasTruth(b, true).
hasTruth(c, false).
hasTruth(d, true).
hasTruth(e, false).

and_operation(and, true, true, true).
and_operation(and, true, false, false).
and_operation(and, false, true, false).
and_operation(and, false, false, false).

or_operation(or, true, true, true).
or_operation(or, true, false, true).
or_operation(or, false, true, true).
or_operation(or, false, false, false).

imp_operation(imp, true, true, true).
imp_operation(imp, true, false, false).
imp_operation(imp, false, true, true).
imp_operation(imp, false, false, true).

not_operation(not, true, false).
not_operation(not, false, true).

node(1, and, or, not).
node(2, or, a, b).
node(5, not, void, c).
node(3, a, void, void).
node(4, b, void, void).
node(6, c, void, void).
node(7, or, imp, not).
node(8, imp, d, e).
node(11, not, not, c).
node(9, d, void, void).
node(10, e, void, void).
node(12, x, void, void).

leftChild(2, or).
leftChild(3, a).
leftChild(8, imp).
leftChild(9, d).

rightChild(1, not).
rightChild(5, not).
rightChild(4, b).
rightChild(6, c).
rightChild(7, or).
rightChild(11, not).
rightChild(10, e).


%%%% Rules

%%% Clause 1
validFormula(ID):- 
    node(ID, R, LT, RT),
    binaryTree(ID, R, LT, RT).

%%% Clause 2
printFormula(ID):-
    node(ID, R, LT, RT),
    printBinaryTree(ID, R, LT, RT),
    write(')').

%%% Clause 3
calculateValues(ID):-
    node(ID, R, LT, RT),
    calculateBinaryTree(ID, R, LT, RT).

%%% Clause 4
isValue(ID,V):-
    truth(ID, V1),
    V == V1.

%%% Subclauses

binaryTree(ID, R, void, void):-
    proposition(R),
    !.

binaryTree(ID, R, void, RT):-
    (operator(RT) -> printBinaryTree(ID1, RT, C1, C2);
    R == not,
    proposition(RT), !).

binaryTree(ID, R, LT, RT):-
    operator(R),
    node(ID1, LT, C1, C2),
    binaryTree(ID1, LT, C1, C2),
    node(ID2, RT, C3, C4),
    binaryTree(ID2, RT, C3, C4).

printBinaryTree(ID, R, void, void):-
    (leftChild(ID, R) -> write(R);
    write(R), write(')')),
    proposition(R).

printBinaryTree(ID, R, void, RT):-
    (operator(RT) -> write(R),
    write('('),
    node(ID1, RT, C1, C2),
    printBinaryTree(ID1, RT, C1, C2),
    write(')');
    write(R),
    write('('),
    write(RT),
    write(')'),
    R == not,
    proposition(RT)).

printBinaryTree(ID, R, LT, RT):-
    write(R),
    operator(R),
    write('('),
    node(ID1, LT, C1, C2),
    printBinaryTree(ID1, LT, C1, C2),
    write(','),
    node(ID2, RT, C3, C4),
    printBinaryTree(ID2, RT, C3, C4).

calculateBinaryTree(ID, not, void, RT):-
    hasTruth(RT, V1),
    not_operation(not, V1, V),
    asserta(truth(ID, V)).

calculateBinaryTree(ID, R, LT, RT):-
    node(ID, R, LT, RT),
    ((proposition(LT), proposition(RT)) ->
    hasTruth(LT, V1),
    hasTruth(RT, V2),
    (and_operation(and, V1, V2, V); or_operation(or, V1, V2, V); imp_operation(imp, V1, V2, V)),
    asserta(truth(R, V));
    node(ID1, LT, C1, C2),
    calculateBinaryTree(ID1, LT, C1, C2),
    node(ID2, RT, C3, C4),
    calculateBinaryTree(ID2, RT, C3, C4)),
    truth(ID1, V1),
    truth(ID2, V2),
    (and_operation(and, V1, V2, V); or_operation(or, V1, V2, V); imp_operation(imp, V1, V2, V)),
    asserta(truth(ID, V)),
    (V == false -> !, false;
    true).