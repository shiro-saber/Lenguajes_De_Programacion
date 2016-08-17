-- Funcion que devuelva una lista de tuplas que contengan el
-- máximo y mínimo de una sublista dentro de una lista.

maximo [] = -1
maximo (a:[]) = a
maximo(a:b:c)=let bigger(a,b) = if a > b
                                then a
                                else b
              in
                if c == []
                then bigger(a,b)
                else maximo([bigger(a,b)] ++ c)

minimo [] = -1
minimo (a:[]) = a
minimo(a:b:c)=let smaller(a,b)= if a < b
                                then a
                                else b
              in
                if c == []
                then smaller(a,b)
                else minimo([smaller(a,b)]++c)

tupla [] = (-1, -1)
tupla (a:[]) = (a,a)
tupla lista = (maximo lista, minimo lista)

maximin listas = map tupla listas
