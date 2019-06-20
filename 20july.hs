
import Data.List

is_prime :: Int -> Bool
is_prime 1 = False
is_prime 2 = True
is_prime n 
  | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
  | otherwise = True

primes = [x | x <- [1..], isPrime x]

МОНОИД(MONOID): некоторый тип, для которого есть mappend и mempty, для которых выполняются эти 3 св-ва
mappend :: a -> a -> a
mempty :: a
1. mempty mappend x = x
2. x mappend mempty = x
3.(x mappend y) mappend z === x mappend (y mappend z) -- результат не зависит от раскрытия скобок

ПРИМЕРЫ:
-сложение(нейтральный элемент 0) и умножение(нейтральный элемент 1)
-списки

ЗАЧЕМ:
можно определить некоторые общие функции для всех моноидов

ЗАКОНЫ МОНОИДОВ:
для всех х     mempty mappend x === x
для всех x     x mappend mempty === x
для всех xyz   x mappend(y mappend z) === (x mappend y)mappend z
M = {Oк; Такое; Ниоч}
ок, но Ниоч = Такое  -- нейтральный элемент - "Такое"
Такое, но х = х
х, но такое = х
х, но у = if x == y then else Такое

Data.Monoid
Sum 42 <> Sum 34 -- значение типа sum, это моноид, Sum - конструктор, в конструктор передали 42
Product 42 <> Product 34 -- считает произведение(как ни странно =))
mconcat[Sum 1, Sum 2, Sum 3] = 6

ЭНДОМОРФИЗМ:
endo :: a -> a
mappend - (.)
mempty - id

conduit :: [a -> a] -> a -> a
conduit [(+1), (*2), (^3)] 4 
conduit fs x = appEndo $ mconcat $ map Endo fs $ x
--	Endo берет функцию, и если она является эндоморфизмом, она их "упаковывает" и говорит, что это эндоморфизм 
--	appEndo применяет Endo
	
СВЕРТКИ:
sum[] = 0 
sum(x : xs) = x + sum xs 

product[] = 1
product(x : xs) = x * product xs

foldr :: (a -> b -> b) -> b -> [a] -> b 
foldr _ z [] = z
foldr f z (x : xs) = f x $ foldr f z xs

ОПРЕДЕЛЯЕМ ВСЯКУЮ ПАРАШУ ЧЕРЕЗ СВЕРТКИ!!!
sum = foldr (+) 0
product = foldr (*) 1
map g l = foldr f [] l where f x acc = g x : acc -- изначально пустой список , функция принимает АККУМ, возвращает обновленный АККУМ,
filter p l = foldr f [] l where f x acc = if p x then x : acc else acc

foldr (+) 0 (1 : 2 : 3 : []) = 1 + foldr (+) 0 (2 : 3 : []) = 1 + (2 + (3 + foldr (+) 0 [])) = 1 + (2 + (3 + 0)) -- foldR, тк функция
--сворачивает все вправо, аналогично foldL сворачивает в левую сторону

FOLD:
fold f = foldr f mappend mempty -- она берет список моноидов и сворачивает их с нулевым элементом
fold :: Monoid m => t m -> m -- mconcat, но не совсем =)
--fold умеет работать со всеми контейнерами, которые FOLDABLE
пример:
fold [Sum 1, Sum 2, Sum 3]     -- Data.Foldable, Data.Monoid
data Tree a = Leaf a | Node (Tree a) a (Tree a)

OPTIONAL(MAYBE):
data Maybe = Nothing 
			| Just a -- что-то лежит
Maybe : b -> (a -> b) -> Maybe a -> b
например,
lookup :: a -> [(a, b)] -> Maybe b -- мэйби, тк в этой паре не может оказаться b
lookup _ [] = Nothing 

lookup k (p : ps) | fst p == k = Just $ snd p | otherwise = lookup k ps

lookup 1 [(1, "a"), (2, "b")] -- выдаст Just "a", тк единица есть.
lookup 3 [(1, "a"), (2, "b")] -- выдаст Nothing
























 


