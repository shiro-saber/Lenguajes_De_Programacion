-- 2520 es el entero positivo más pequeño que puede ser dividido por cualquier de los números entre 1 y 10 sin que exista un residuo.
-- Encuentra el entero positivo más pequeño que puede ser dividido por cualquiera de los números entre 1 y 20 sin que exista residuo (residuo cero)
dividemela = foldr1 lcm [1..10]

-- Dada una secuencia de números primos, siendo el primer primo el número 2, el segundo primo el 3 y así sucesivamente
-- ¿cuál es el número primo 10,001 de la secuencia?
primeNums :: Integer->[Integer]
primeNums z = [ x | x <- [2..z], isPrime x]

isPrime :: Integer -> Bool
isPrime x = divisors x == [1,x]

divisors :: Integer -> [Integer]
divisors 1 = [1]
divisors x = 1:[ y | y <- [2..(x `div` 2)], x `mod` y == 0] ++ [x]

-- Dada una secuencia de números primos, siendo el primer primo el número 2, el segundo primo el 3 y así sucesivamente
-- ¿cuál es el número primo 10,001 de la secuencia?
primes :: [Int]
primes = 2 : 3 : filter (isPrime primes) [5, 7..]

isPrime :: [Int]-> Int-> Bool
isPrime (p:ps) n
    | p*p > n = True
    | otherwise = n `rem` p /= 0 && isPrime ps n

lista = primes

-- Cuántos número primos circulares hay por debajo de 1,000,000


-- El número primo 41, puede re-escribirse como la suma de 6 número primos consecutivos
--                 2 + 3 + 5 + 7 + 11 + 13
-- el primo 41 representa la suma más grande de una serie de números primos consecutivos por debajo de 100.
-- La suma más grande de números primos que resulta en otro número primo por debajo de 1000 es el 953.
-- Esta suma consiste de 21 números consecutivos.
-- Qué número, por debajo de 1,000,000, representa la suma más grande de una secuencia de números primos y que también es un número primo
