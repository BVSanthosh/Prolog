%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ID:
%%% CS3050
%%% CS@St-Andrews
%%% Test script for Exercise 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ***************** PLEASE DO NOT DELETE ** STARTS ***********************

testex1:-
write('=======Start Tests for Exercise 1'),
nl,
test11,
nl,
test12,
nl,
test13,
nl,
test14,
nl,
test15,
nl,
test16,
nl,
test17,
nl,
test18,
nl,
write('======Stop Tests for Exercise 1').


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 1
test11:-
    nl,
    write('--- Test Query 1 for Clause 1 ---'),
    nl,
    test111,
    nl,
    write('--- Test Query 2 for Clause 1 ---'),
    nl,
    test112.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 2
test12:-
    nl,
    write('--- Test Query 1 for Clause 2 ---'),
    nl,
    test121,
    nl,
    write('--- Test Query 2 for Clause 2 ---'),
    nl,
    test122.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 3
test13:-
    nl,
    write('--- Test Query 1 for Clause 3 ---'),
    nl,
    test131,
    nl,
    write('--- Test Query 2 for Clause 3 ---'),
    nl,
    test132.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 4
test14:-
    nl,
    write('--- Test Query 1 for Clause 4 ---'),
    nl,
    test141,
    nl,
    write('--- Test Query 2 for Clause 4 ---'),
    nl,
    test142.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 5
test15:-
    nl,
    write('--- Test Query 1 for Clause 5 ---'),
    nl,
    test151,
    nl,
    write('--- Test Query 2 for Clause 5 ---'),
    nl,
    test152.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 6
test16:-
    nl,
    write('--- Test Query 1 for Clause 6 ---'),
    nl,
    test161,
    nl,
    write('--- Test Query 2 for Clause 6 ---'),
    nl,
    test162.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 7
test17:-
    nl,
    write('--- Test Query 1 for Clause 7 ---'),
    nl,
    test171,
    nl,
    write('--- Test Query 2 for Clause 7 ---'),
    nl,
    test172.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% test clause 8
test18:-
    nl,
    write('--- Test Query 1 for Clause 8 ---'),
    nl,
    test181,
    nl,
    write('--- Test Query 2 for Clause 8 ---'),
    nl,
    test182.


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

%test111:- test_yes(haveSameObj(req1, req2)).
%test112:- test_no(haveSameObj(req1, req4)).

%test121:- test_yes(belongsTo(obj1, req2)).
%test122:- test_no(belongsTo(req3, comp4)).

%test131:- test_yes(shareDevelop(func1, func2)).
%test132:- test_no(shareDevelop(func1, func5)).

%test141:- test_no(printAllCom(obj1)).
%test142:- test_no(printAllCom(obj2)).

%test151:- test_yes(isCompound(comp7)).
%test152:- test_no(isCompound(comp2)).

%test161:- test_no(printAllAtomic(req1)).
%test162:- test_no(printAllAtomic(req5)).

%test171:- test_yes(hasPriorityCom(comp3, comp4)).
%test172:- test_no(hasPriorityCom(comp5, comp8)).

%test181:- test_no(hasHigherPriority(func6, 10)).
%test182:- test_yes(hasHigherPriority(func8, 20)).