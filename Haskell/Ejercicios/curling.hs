-- Hacer una función que reciba dos listas y un predicado 
operacion _ [] _ = []
operacion _ _ [] = []
operacion (hx:tx) (hy:ty) = [f hx hy] ++ operacion f tx ty

-- Hacer una funcion que reciba un predicado y encuentre el valor que se busca (>) 3 [1,2,5,6]
comparamela f i lista = [x | x<-lista, x `f` i]

-- Otra forma de hacer el anterior
coparamesta f (h:t) 
          | f h = h:comparamesta f t 
          | otherwise = comparamesta f t

-- Funcion que encuentra el numero mas grande divisible entre 4929 en una lista de [1,2..100000]
encuentramela n [] = -1
encuentramela n lista 
            | (last  lista) `mod` n == 0 = last lista
            | otherwise = encuentramela n (init lista)
