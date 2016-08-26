-- Hacer con recursion de pila y de cola un algoritmo que resuelva una raíz cuadrada con el metodo de newton

newton x aprox 0 = aprox
newton x aprox i = (if i <= 1 then j else newton x j(n-1))where j = aprox - ((aprox*aprox - x)/(2*aprox))

newtoncola x = (1,(1+x)/2,x)
cola (i,j,k) = if i == j then i else cola((i+k/i)/2,(j+k/j)/2,k)

-- Hacer el algoritmo de quicksort
 quicksort [] = []
 quicksort (x:xs) = quicksort small ++ (x : quicksort large)
   where small = [y | y <- xs, y <= x]
         large = [y | y <- xs, y > x]
         
