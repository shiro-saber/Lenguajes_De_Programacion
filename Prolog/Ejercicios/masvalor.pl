%Imprimir la posición en la lista en la que se encuentra la coincidencia
inList(X, [X|_], Cont).
inList(X, [_|T], Cont):-inList(X, T, Cont+1).

% Buscar en una lista el valor mayor
max([X],X).
max([X|Xs],X):- max(Xs,Y), X >=Y.
max([X|Xs],N):- max(Xs,N), N > X.
