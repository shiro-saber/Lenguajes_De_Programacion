%Imprimir la posición en la lista en la que se encuentra la coincidencia
inList(X, [X|_], Cont, Z):- Cont2 is Cont, Z=Cont2.
inList(X, [_|T], Cont, Z):-inList(X, T, Cont+1, Z).

% Buscar en una lista el valor mayor
max([X],X).
max([X|Xs],X):- max(Xs,Y), X >=Y.
max([X|Xs],N):- max(Xs,N), N > X.
