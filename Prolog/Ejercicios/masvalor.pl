%Imprimir la posición en la lista en la que se encuentra la coincidencia
inList(X, [X|_], Cont, Z):- Cont2 is Cont, Z=Cont2.
inList(X, [_|T], Cont, Z):-inList(X, T, Cont+1, Z).

% Buscar en una lista el valor mayor
max([X],X).
max([X|Xs],X):- max(Xs,Y), X >=Y.
max([X|Xs],N):- max(Xs,N), N > X.

% Algo de naturales
% natural(X,Y).
% natural(suc(X),N):-natural(X,S),N is S+1.
natural(0).
natural(N):-natural(S), N is S+1.

%tamaño lista
dlength([],0).
dlength([_|T],Size) :- dlength(T,S), Size is S+1.

%ultimo elemento
isLast([],false).
isLast([H|[]],H).
isLast([_|T],S) :- isLast(T,S).

% append a lista
metela(X,Y,[Y|T2]) :-(T2 is X).

%eliminar elementro de una lista
sacala(_,[],[]).
sacala(X,[X|T],S):- sacala(X,T,S).
sacala(X,[H|T],[H|T2]) :- X\=H,sacala(X,T,T2).
