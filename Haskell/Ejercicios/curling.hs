-- Hacer una función que reciba dos listas y un predicado 
operacion _ [] _ = []
operacion _ _ [] = []
operacion (hx:tx) (hy:ty) = [f hx hy] ++ operacion f tx ty

-- Hacer una funcion que reciba un predicado y encuentre el valor que se busca (>) 3 [1,2,5,6]
