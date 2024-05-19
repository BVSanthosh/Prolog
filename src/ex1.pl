%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ID:
%%% CS3050
%%% CS@St-Andrews
%%% Exercise 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%% Facts

objective(obj1).
objective(obj2).

requirement(req1).
requirement(req2).
requirement(req3).
requirement(req4).
requirement(req5).

component(comp1).
component(comp2).
component(comp3).
component(comp4).
component(comp5).
component(comp6).
component(comp7).
component(comp8).
component(comp9).
component(comp10).
component(comp11).

atomic_component(comp1).
atomic_component(comp2).
atomic_component(comp4).
atomic_component(comp5).
atomic_component(comp8).
atomic_component(comp9).
atomic_component(comp10).
atomic_component(comp11).

compound_component(comp3).
compound_component(comp6).
compound_component(comp7).

functionality(func1).
functionality(func2).
functionality(func3).
functionality(func4).
functionality(func5).
functionality(func6).
functionality(func7).
functionality(func8).
functionality(func9).

obj_depends_on_req(obj1, req1).
obj_depends_on_req(obj1, req2).
obj_depends_on_req(obj1, req3).
obj_depends_on_req(obj2, req4).
obj_depends_on_req(obj2, req5).

req_depends_on_comp(req1, comp1).
req_depends_on_comp(req2, comp2).
req_depends_on_comp(req3, comp3).
req_depends_on_comp(req4, comp6).
req_depends_on_comp(req5, comp7).

comp_depends_on_comp(comp3, comp4).
comp_depends_on_comp(comp3, comp5).
comp_depends_on_comp(comp6, comp8).
comp_depends_on_comp(comp6, comp9).
comp_depends_on_comp(comp7, comp10).
comp_depends_on_comp(comp7, comp11).

comp_depends_on_func(comp1, func1).
comp_depends_on_func(comp2, func2).
comp_depends_on_func(comp3, func3).
comp_depends_on_func(comp4, func4).
comp_depends_on_func(comp5, func5).
comp_depends_on_func(comp8, func6).
comp_depends_on_func(comp9, func7).
comp_depends_on_func(comp10, func8).
comp_depends_on_func(comp11, func9).

hasPriority(func1, 1).
hasPriority(func2, 6).
hasPriority(func3, 9).
hasPriority(func4, 15).
hasPriority(func5, 20).
hasPriority(func6, 11).
hasPriority(func7, 3).
hasPriority(func8, 15).
hasPriority(func9, 7).

%%%% Rules

%%% Clause 1
haveSameObj(R1,R2):-
    belongsTo(O1, R1),
    belongsTo(O2, R2),
    O1 == O2.

%%% Clause 2
belongsTo(A,B):-
    obj_depends_on_req(A, B);
    req_depends_on_comp(A, B);
    comp_depends_on_comp(A, B);
    comp_depends_on_func(A, B).

%%% Clause 3
shareDevelop(F1,F2):-
    shareElement(F1, F2, 0).

%%% Clause 4
printAllCom(O):-
    belongsTo(O, R),
    belongsTo(R, C),
    (component(C) -> write(C)),
    nl,
    (isCompound(C) -> printDependentComponents(C);
    fail).

%%% Clause 5
isCompound(C):- compound_component(C).

%%% Clause 6
printAllAtomic(R):-
    belongsTo(R, C),
    (atomic_component(C) -> write(C), 
    nl;
    printDependentAtomic(C)),
    fail.

%%% Clause 7
hasPriorityCom(C1,C2):-
    belongsTo(C1, F1),
    belongsTo(C2, F2),
    hasPriority(F1, P1),
    hasPriority(F2, P2),
    P1 < P2.

%%% Clause 8
hasHigherPriority(F,N):-
    hasPriority(F, P),
    P =< N.

%%%% Sub-clauses

printDependentComponents(DC):-
    belongsTo(DC, C),
    (component(C) -> write(C)),
    nl,
    (isCompound(C) -> printDependentComponents(C);
    false).

printDependentAtomic(DAC):-
    belongsTo(DAC, C),
    (atomic_component(C) -> write(C),
    nl;
    printDependentAtomic(C)),
    fail.

shareElement(E1, E2, 0):-
    belongsTo(A, E1),
    belongsTo(B, E2),
    (A == B -> R is 1;
    R is 0),
    shareElement(A, B, R).

shareElement(E1, E2, 1):-
    E1 == E2.