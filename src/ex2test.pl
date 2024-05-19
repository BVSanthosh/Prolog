%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ID:
%%% CS3050
%%% CS@St-Andrews
%%% Test script for Exercise 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ***************** PLEASE DO NOT DELETE ** STARTS ***********************

testex2:-
write('=======Start Tests for Exercise 2'),
nl,
test21,
nl,
test22,
nl,
test23,
nl,
test24,
nl,
write('======Stop Tests for Exercise 2').


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 1
test21:-
    nl,
    write('--- Test Query 1 for Clause 1 ---'),
    nl,
    test211,
    nl,
    write('--- Test Query 2 for Clause 1 ---'),
    nl,
    test212.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 2
test22:-
    nl,
    write('--- Test Query 1 for Clause 2 ---'),
    nl,
    test221,
    nl,
    write('--- Test Query 2 for Clause 2 ---'),
    nl,
    test222.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 3
test23:-
    nl,
    write('--- Test Query 1 for Clause 3 ---'),
    nl,
    test231,
    nl,
    write('--- Test Query 2 for Clause 3 ---'),
    nl,
    test232.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 4
test24:-
    nl,
    write('--- Test Query 1 for Clause 4 ---'),
    nl,
    test241,
    nl,
    write('--- Test Query 2 for Clause 4 ---'),
    nl,
    test242.
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Clauses to decide the expected answer


% If a clause is expected to return no, use predicate test_no<query,queryNumber>.
% else use predicate ans_yes<query,queryNumber>.

test_yes(S):-S, write('Pass (Yes)'),!.
test_yes(S):- write('**** Fail ').


test_no(S):- \+ S, write('Pass (No)'), !.
test_no(S):- write('**** Fail ').


% ************** PLEASE DO NOT DELETE ** ENDS ******************


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Complete the test cases below  by uncommenting, including  your query and place it within the appropriate test predicate (yes/no) depending on your expected output.



%test211:- test_yes(validFormula(1)).
%test212:- test_no(validFormula(7)).
 
%test221:- test_yes(printFormula(1)).
%test222:- test_no(printFormula(7)).

%test231:- test_yes(calculateValues(1)).
%test232:- test_yes(calculateValues(5)).

%test241:- test_yes(isValue(1, true)).
%test242:- test_no(isValue(5, false)).