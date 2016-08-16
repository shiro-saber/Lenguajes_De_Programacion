-- Programa que devuelva el número mayor de una lista

maximo [] = -1
maximo (a:[]) = a
maximo(a:b:c)=let bigger(a,b) = if a > b
                                then a
                                else b
              in
                if c == []
                then bigger(a,b)
                else maximo([bigger(a,b)]++c)

-- Otra solucion
--maximum [] = -1
--maximum list = max(tail list) (head list)
--               where max list current
--                     | (length list) == 0 = current
--                     | (head list) > current = max (tail list)
--                     | otherwise = max(tail list) current
