% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here

solve_maze :- path([start],Solution), write(Solution).

path([finish|RestOfPath],[finish|RestOfPath]).

path([CurrentLocation|RestOfPath],Solution):-
	connected_to(CurrentLocation,NextLocation),
	\+ member(NextLocation,RestOfPath),
	path([NextLocation,CurrentLocation|RestOfPath],Solution).

connected_to(Location1,Location2):- drzwi(Location1,Location2) ; 		
									drzwi(Location2,Location1).



drzwi(a, b).
drzwi(b, c).
drzwi(c, d).
drzwi(d, e).

drzwi(e, g).
drzwi(g, h).
drzwi(h, i).
drzwi(i, j).
drzwi(j, k).
drzwi(k, l).
drzwi(l, m).
drzwi(m, n).
drzwi(n, o).
drzwi(n, p).
drzwi(o, q).
drzwi(p, q).

drzwi(start, a).
drzwi(finish, q).

/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
