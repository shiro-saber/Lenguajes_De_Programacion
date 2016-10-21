% Torres de Hanoi
hanoi(N,[H|T],[],[],D1,D2,D3) :- N > 1, M is N-1, hanoi(N, [H|T],[H|_],[],D1,D2,D3),
                                                  hanoi(M,[_|M],[H|_],[H,_],D1,D2,D3),
                                                  hanoi(M,[_|M],[],[H|T],D1,D2,D3),
                                                  hanoi(M,[],[_|T],[],[H|T],D1,D2,D3),
                                                  hanoi(M,[H|_],[_|T],[H|T],D1,D2,D3),
                                                  hanoi(M,[H|_],[_|T],[],D1,D2,D3),
                                                  hanoi(M,[],[H|T]m[],D1,D2,D3),
                                                  hanoi(N,[H|T],[],[]).

hanoi(N,[H|T],[],[]) :- write(D1), nl, write(D2), nl, write(D3), nl. 
