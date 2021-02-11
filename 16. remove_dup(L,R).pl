member(X,[X|_]).
member(X,[_|Y]):-member(X,Y).
remove_dup(L,M):-dupacc(L,[],M).
dupacc([],A,A).
dupacc([H|T],A,L):-member(H,A),
    dupacc(T,A,L),
    !.
dupacc([H|T],A,L):-dupacc(T,[H|A],L).
