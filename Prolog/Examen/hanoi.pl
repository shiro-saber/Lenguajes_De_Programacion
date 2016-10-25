% Torres de Hanoi
hanoi(N) :- muevemela(N,izquierda,centro,derecha).
 
muevemela(0,_,_,_) :- !.
muevemela(N,A,B,C) :- M is N-1, muevemela(M,A,C,B), inform(A,B,N), muevemela(M,C,B,A).
 
inform(X,Y,N) :- write([movi,el,disco,N,de,X,a,Y]), nl.
