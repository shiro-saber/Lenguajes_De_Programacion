-- Función que reciba una lista y devuelva una tupla (min max)

maximo [] = -1
maximo (a:[]) = a
maximo(a:b:c)=let bigger(a,b) = if a > b
                                then a
                                else b
              in
                if c == []
                then bigger(a,b)
                else maximo([bigger(a,b)]++c)

minimo [] = -1
minimo (a:[]) = a
minimo(a:b:c)=let smaller(a,b)= if a < b
                                then a
                                else b
              in
                if c == []
                then smaller(a,b)
                else minimo([bigger(a,b)]++c)

tupla [] = -1
tupla (a:[]) = (a,a)
let tupla lista = (mayor, minimo)
