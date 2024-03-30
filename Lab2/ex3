% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here

%base
parent(wisnia, zibi).
parent(zibi, edward).
parent(edward, jacek).
parent(edward, krzysztof).
parent(edek, barbara).
parent(krzysztof, mikolaj).
parent(jacek, dawid).
parent(jacek, kasia).
parent(jacek, matuesz).
parent(barbara, dawid).
parent(barbara, kasia).
parent(barbara, mateusz).
parent(barbara, kasia).


male(jacek).
male(dawid).
male(edward).
male(edek).
male(matuesz).


%1
woman(X) :-
    \+male(X).

%2
father(X,Y) :-
    male(X),
    parent(X,Y),
	X \= Y.

%3
mother(X,Y) :-
    \+male(X),
    parent(X,Y),
	X \= Y.

%4
daughter(X,Y) :-
    \+male(X),
    parent(Y,X),
	X \= Y.

%5
natural_brother(X,Y) :-
    male(X),
    parent(M, X),
    parent(M, Y),
	parent(D, X),
    parent(D, Y),
	X \= Y.

%6
step_sibling(X,Y) :-
    parent(M, X),
    parent(M, Y),
	parent(D, X),
    \+parent(D, Y),
	X \= Y.

%7
cousins(X,Y) :-
    parent(Z1, X),
    parent(Z2, Y),
    parent(Z3, Z2),
    parent(Z3, Z1).

%8
grandpa_from_dad(X,Y) :-
    male(X),
    parent(X,Z),
    parent(Z,Y).

%9
grandpa_from_mom(X,Y) :-
    male(X),
    parent(X,Z),
    \+male(Z),
    parent(Z,Y).

%10
grandpa(X,Y) :-
    male(X),
    parent(X,Z),
    parent(Z,Y).

%11
granddaughter(X,Y) :-
    \+male(Y),
    parent(X,Z),
    parent(Z,Y).

%12
granddaughter(X,Y) :-
    \+male(Y),
    parent(X,Z),
    parent(Z,Y).

%13
ancestor2nd(X,Y) :-
    parent(X,Z),
    parent(Z,M),
    parent(M,Y).
    
%14
ancestor3rd(X,Y) :-
    parent(X,Z),
    parent(Z,M),
    parent(M,P),
    parent(P,Y).




/*
if	:-
and	,
or	;
neg	 \+
ne  \=
*/