% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here

%base
parent(adam, jakub).
parent(adam, kamil).
parent(magda, jakub).%X
parent(magda, kamil).%Y

parent(edward, jacek).
parent(edward, szczepan).
parent(jacek, dawid). %Y
parent(szczepan, konrad). %X

parent(alicja, barbara). %Y
parent(barbara, dawid).

parent(krzychu, karina).
parent(krzychu, anastazja).
parent(ania, karina).
parent(kozidrak, anastazja).


parent(grzechu, augustyn).
parent(renia, augustyn).
parent(grzechu, zigu).
parent(zigu, pitu).
parent(renia, pitu).


%Ex1 //A
siblings(X,Y) :-
    parent(Z,X), parent(Z,Y), 
    X \= Y.

%Ex1 //B
cousins(X,Y) :-
    parent(Z1, X),
    parent(Z2, Y),
    siblings(Z1, Z2), 
    X \= Y.

%Ex1 //C 
in_laws(X, Y) :-
    parent(M, Z), parent(K, Z),
    parent(X, M), parent(Y, K),
    X \= Y.
   
%Ex1 //D
parent_in_law(X,Y) :-
    parent(Z,X),
    parent(Z,W),
    parent(Y,W).

%Ex1 //E
step_siblings(X,Y) :-
    parent(Z, X),
    parent(Z, Y),
    parent(W, X),
    \+parent(W, Y).

%Ex1 //F
bro_or_sis_in_law(X,Y) :-
    parent(X, Z),
    parent(M, Z),
    parent(A, M),
    parent(A, Y),
    X \= Y.

%Ex1 //G
weird_relation(X, Y) :-
    parent(M, X),
    parent(T, X),
    parent(T, W),
    \+parent(M, W),
    parent(W, Y),
    parent(M, Y).

/*
if	:-
and	,
or	;
not	 \+
test
*/