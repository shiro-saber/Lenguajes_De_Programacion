%ordenar una lista
%quick sort
quick_sort2(List,Sorted):-q_sort(List,[],Sorted).
q_sort([],Acc,Acc).
q_sort([H|T],Acc,Sorted):-
        pivoting(H,T,L1,L2),
        q_sort(L1,Acc,Sorted1),q_sort(L2,[H|Sorted1],Sorted).

pivoting(H,[],[],[]).
pivoting(H,[X|T],[X|L],G):-X>=H,pivoting(H,T,L,G).
pivoting(H,[X|T],L,[X|G]):-X<H,pivoting(H,T,L,G).

%bucket sort
merge_sort([],[]).     % empty list is already sorted
merge_sort([X],[X]).   % single element list is already sorted
merge_sort(List,Sorted):-
    List=[_,_|_],divide(List,L1,L2),     % list with at least two elements is divided into two parts
	merge_sort(L1,Sorted1),merge_sort(L2,Sorted2),  % then each part is sorted
	merge(Sorted1,Sorted2,Sorted).                  % and sorted parts are merged
merge([],L,L).
merge(L,[],L):-L\=[].
merge([X|T1],[Y|T2],[X|T]):-X=<Y,merge(T1,[Y|T2],T).
merge([X|T1],[Y|T2],[Y|T]):-X>Y,merge([X|T1],T2,T).
divide(L,L1,L2):-halve(L,L1,L2).
halve(L,A,B):-hv(L,[],A,B).

hv(L,L,[],L).      % for lists of even length
hv(L,[_|L],[],L).  % for lists of odd length
hv([H|T],Acc,[H|L],B):-hv(T,[_|Acc],L,B).

%otro merge sort
splitlist(L, [], L, 0).
splitlist([H|T], [H|A], B, N) :- Nminus1 is N-1, splitlist(T, A, B, Nminus1).

halfhalf(L, A, B) :- length(L, Len), Half is Len//2, splitlist(L, A, B, Half).

merge(A, [], A).
merge([], B, B).
merge([Ha|Ta], [Hb|Tb], R) :- Ha =< Hb, merge(Ta, [Hb|Tb], M), R = [Ha|M].
merge([Ha|Ta], [Hb|Tb], R) :- Ha > Hb, merge(Tb, [Ha|Ta], M), R = [Hb|M].

fuckingsort([], []).
fuckingsort([E], [E]).
fuckingsort([H1, H2], [H1, H2]) :- H1 =< H2.
fuckingsort([H1, H2], [H2, H1]) :- H1 > H2.
fuckingsort(L, R) :- halfhalf(L, A, B), fuckingsort(A, Asort), fuckingsort(B, Bsort), merge(Asort, Bsort, R).

%bucket sort
buck(List,Res) :- bucketsort(List,B1,B2,B3),quick_sort2(B1,B1S),quick_sort2(B2,B2S),quick_sort2(B3,B3S),concbuck(B1S,B2S,B3S,Res).
bucketsort([],[],[],[]).
bucketsort([H|T],[H|P],B2,B3):- H < 4,bucketsort(T,P,B2,B3).
bucketsort([H|T],B1,[H|P],B3):- H>= 4,H<7,bucketsort(T,B1,P,B3).
bucketsort([H|T],B1,B2,[H|P]):- H>=7,bucketsort(T,B1,B2,P).
%concbuck(B1,B2,B3,Res):-Res = [B1,B2,B3].
concbuck(B1,B2,B3,Res):- append(B1,B2,Temp),append(Temp,B3,Res).
