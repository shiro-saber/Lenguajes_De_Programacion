% quesque ariel dice que vienen en la biblia
% base de conocimientos
father(terach, nachor).
father(terach, haran).
father(terach, abraham).
father(haren, lot).
father(haren, mismcah).
father(haren, yiscah).
mother(sarah, isaac).
male(terach).
male(haran).
male(abraham).
male(nachor).
male(lot).
male(isaac).
female(sarah).
female(mismcah).
female(yiscah).
% porque católicos jajaja
% consultas simples
% male(abraham) - True
% male(X) - con barra espaciadora regresa todos los True
%           con enter regresa unicamente el primero

% consulta mamona
% mother(sarah, _),female(sarah).
% la coma es un hermoso &&
% father(X,Y),male(Y) - regresa los padres y los hijos de los hijos hombres

% esto es una regla
son(X,Y) :- father(Y,X),male(X).
% si corremos son(X, haren). regresa a lot 
