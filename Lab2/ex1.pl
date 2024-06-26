% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here




lubi(jan, pawel). lubi(pawel, krzysztof).
lubi(pawel, jan). lubi(jan, bartek). lubi(bartek, jan).

lubi(marek, darek). lubi(darek, marek).
lubi(marek, arek). lubi(arek, marek).

male(marek).
female(darek).


przyjazn(X, Y) :-
lubi(X,Y),
lubi(Y,X).

niby_przyjazn(X,Y) :-
	((lubi(X, Y), \+ lubi(Y, X))
    ;   
    (lubi(Y, X), \+ lubi(X, Y))).

nieprzyjazn(X,Y) :-
    \+przyjazn(X, Y).
	
loves(X,Y) :-
    przyjazn(X, Y),
       \+(lubi((X, Z), Z \= Y),
       \+(lubi((W, Y), W \= X).

true_love(X,Y) :-klmty
    loves(X,Y),
   	(   (   male(X), female(Y)) ; (   female(X), male(Y))).


/**Zapisz reguły dla:
 * lubi(jan,X) :- alkohol(X).
nieprzyjazn(X,Y),
niby_przyjazn(X,Y)
loves(X,Y)	 1) może być na zasadzie wzajemności i wyłączności 
			2) dodaj fakt płeć
true_love(X,Y)

jeśli	:-
and	,
or	;
not	 \+
!=	*/


