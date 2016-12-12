% arboles
%:- use_module(list_util, [split_at/4]).
:-  use_module(library(list_util)). %usamos el modulo para el split_at
:- dynamic
	lista/1,
	tree/4,
	nod/1,
  lista2/1.
	%definir que son operaciones atomicas no definidas
tree([],[],[],[]).
lista([]).
lista2([]).
%X represente THIS
getDad(X,R):- (tree(_,Z,_,X)),((Z == [], R = [],!) ;R is Z).
getLeft(X,R):- (tree(Z,_,_,X)),((Z == [], R = [],!); R is Z).
getRight(X,R):- (tree(_,_,Z,X)), ((Z == [], R = [],!); R is Z).
isSon(X,Y,R):- (getRight(X,Y);getLeft(X,Y)),R is Y.%X  es this, Y es le hijo que buscamos, R el resultado
getSons(X,R):- (tree(S,_,T,X)),R = [S|T].
getBrother(X,R):- (tree(X,_,Z,_);tree(Z,_,X,_)), R is Z.
getHeight(Nod,Init,Res):- getLeft(Nod,L),getHeight(L,Init+1,Res);Res is Init.
getSubTree(Nod):- recorre(Nod).
recorre(Nod):- (Nod \= [],write(Nod),nl),getRight(Nod,R),getLeft(Nod,L),(recorre(L);recorre(R)). % recorrido por preorden

jardinero(Momok):- last(Momok,Fin), listear(Fin, Besya), lista(Y), last(Y, Hijo1), listear(Hijo1,Besya), lista(Z), last(Z, Hijo2), listear(Hijo2, Besya), assert(tree(Hijo1,[],Hijo2,Fin)),((getRight(Fin,R), lista(Next),jardinero(Hijo1,Next));(lista(Next2), jardinero(Hijo2, Next2))).
jardinero(Elem, Lis):- (Lis == [], 0 == 1,!);lista(X), last(X,Fin), listear(Fin,Besya),lista(Y),length(Y,Cubells),((Cubells \= 0, last(Y,Hijo1), listear(Hijo1, Besya),!);Hijo1=[]), lista(Z), length(Z,Ariel),((Ariel \= 0, last(Z,Hijo2), listear(Hijo2, Besya),!);Hijo2=[]), assert(tree(Hijo1,Elem,Hijo2,Fin)),(getSons(Fin,X),((getRight(Fin,R), lista(Next),jardinero(Hijo1,Next));(lista(Next2), jardinero(Hijo2, Next2)))lista(Next),jardinero(Hijo1,Next);).

listear(Nod):- lista2(X),append(X,[Nod],Lres),retract(lista(_)),retract(lista2(_)),sort(Lres,Lres2),assert(lista(Lres2)), assert(lista2(Lres2)).
listear(Lavire,Besya):- lista(X),delete(X,Lavire,Lres),retract(lista(_)),sort(Lres,Lres2),assert(lista(Lres2)).

plantar(Qin):- not(podar(Obo)),lista2(Momok),jardinero(Momok). %borra el arbol, para reconstruirlo balanceado

inserta(Nod):- not(nod(Nod)),assert(nod(Nod)), listear(Nod), plantar(Qin).%inserta un nodo a la base de conocimiento y reconstruye el arbol

podar(Obo):- retract(tree(_,_,_,_)),podar(Obo),!. %esta funcion siempre devuelve false. llamar con not(podar(Obo)).
