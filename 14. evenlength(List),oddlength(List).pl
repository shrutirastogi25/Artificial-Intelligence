evenlength:-write('The list is of even length').
oddlength:-write('The list is of odd length').

listlength([_|T]):-length(T,L),
    L>=0->(L1 is L+1,
           L2 is mod(L1,2),
           L2=:=0 ->
          evenlength
          ;
          oddlength
          ).
