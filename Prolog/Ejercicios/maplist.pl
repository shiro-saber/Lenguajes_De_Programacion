myMapList(_,[],[]).
myMapList(Func,[H|T],[R|T2]):- Func=..[Func|Params],append(Params,[H,R],NewParams),Pred=..[Func|NewParams],call(Pred),myMapList(Func,T,T2).
succ(In,Out):- Out is In +1.
