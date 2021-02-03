ar([H|T],A,R):-ar(T,[H|A],R).
ar([],A,A).
reverse(L,R):-ar(L,[],R).
palindrome(L):-reverse(L,L).
