-- Realizar la funcion de fibonacci
kuz 0 = 1
kuz 1 = 1
kuz n = kuz (n-1) + kuz (n-2)

-- Un número palíndromo es aquel que se lee igual de izquierda a derecha que de derecha a izquierda.
-- El palíndromo más grande formado por el producto de dos enteros de dos dígitos es el número 9009 (formado a partir del producto de 91X99).
-- Cuál es el palíndromo más grande formado a partir del producto de dos números de 3 dígitos?

-- Con esto voy a dar la vuelta al int para comparar
reverseInt n = aux (n,0)
             where aux (0,y) = y
                   aux (x,y) = let (x',y') = x `quotRem` 10
                               in aux (x',10*y+y')
