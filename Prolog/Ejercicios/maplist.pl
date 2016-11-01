replace(X,Y,Z,W) :- (X == Z, W is Y,!);W is Z.

myMapList(_,[],[]).
myMapList(Func,[H|T],[R|T2]):- Func=..[Functor|Params],append(Params,[H,R],NewParams),Pred=..[Functor|NewParams],call(Pred),myMapList(Func,T,T2), !.
succ(In,Out):- Out is In +1.
