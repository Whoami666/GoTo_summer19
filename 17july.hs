x = 42
foo = let z = x + y
add xy =x + y
add 2 3
add x = \y -> x + y

//
add2 x = \y -> x + y
t = add2 10
t 15
add = \xy -> x + y

//
:type add  (СКОЛЬКО аргументов у любого выражения + type)
:t add      (СКОЛЬКО аргументов у любого выражения + type)

//
let x = t in x
5        	(типа return x)

//
print (add 1 2) (складываем)
let k = \xy -> xy

undefined (will always cause a mistake)

5 :: Float (will define the function's type)

//
alpha reduction - ?
betta reduction - ?
alpha conversion - ?

//factorial function


fact n = if n > 1
	then n*fact(n-1)
	else 1

//helper acc n = if n > 1
then helper(acc*n)(n-1)
else acc 
fact2 = helper 1 

//local connection
fact = helper 1 n
where
helper a
cc n =

//let in
fact = let helper acc n
...
in helper 1 n

//guards-гуарды |
fact  = helper 1 n 
where helper acc n | helper(acc*n)(n-1)
 |otherwise = acc         --------otherwise вместо else
 
 
//:type (>) (a -> a -> bool)
:type (>)1    (a -> Bool)
f x = x > 1 эквивалентно  f = > 1 ---------- проверка, больше ли аргумент 1 
 
 
// x + y  =  (+) x y
(+) x y = x - эквивалентно x + y = x
(+) xy = x * y - переопределение плюса, чтобы он работал как умножение


// 
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-2) + fib(n-1)