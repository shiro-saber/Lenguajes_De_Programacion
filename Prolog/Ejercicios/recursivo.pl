inList(X, [X|_]).
inList(X, [_|T]):-inList(X,T).
