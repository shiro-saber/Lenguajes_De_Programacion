% Torres de Hanoi
hanoi(N) :- muevemela(N,left,center,right).
 
muevemela(0,_,_,_) :- !.
muevemela(N,A,B,C) :- M is N-1, muevemela(M,A,C,B), inform(A,B), muevemela(M,C,B,A).
 
inform(X,Y) :- write([movi,el,disco,desde,X,hasta,Y]), nl.
