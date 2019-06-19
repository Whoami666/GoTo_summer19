--otherwise по дефолту TRUE, Bool, поэтому в гардах используется только оно, не  else
--f s(s(n)) = f n

--data - ключевое слово, с которого начинается определение новых типов
--swap(a, b) = swap(b, a) -- Функция, меняющая местами аргументы

ТИП СУММЫ: (ПЕРЕЧИСЛЕНИЕ - ХРАНИТ ТОЛЬКО 1 ЗНАЧЕНИЕ)
data Color = Red | Green | Blue deriving (Show, Eq) -- позволяет(последние 2 слова) выводить то, чему равен Х
x = Red
--:t x -- выведет Color

isRGB :: Color -> Bool
(==) :: Eq a => a -> a -> Bool  -------?????
isRGB x | x == Red = True| x == Green = True| x == Blue = True| otherwise = False
isRGB Red = True
isRGB Green = True
isRGB Blue = True
isRGB _ = False
(==) :: Eq a => a -> a -> Bool

isRGB 0 --выведет False

ТИП ПРОИЗВЕДЕНИЕ: (ХРАНИТ НЕСКОЛЬКО ЭЛЕМЕНТОВ ОДНОВРЕМЕННО, КОРТЕЖ)
data PointDouble = PtD Double Double deriving Show
PtD:: Double -> Double -> PointDouble

distance :: PointDouble -> PointDouble -> PointDouble
distance x y = sqrt((fst(x) - fst(y))^2 + (snd(x) - snd(y))^2) -- пара
middle x y = (fst(x) + fst(y))/2  (snd(x) + snd(y))/2  -- опять через пару
p1 = PtD x1 y1
p2 = PtD x2 y2
midpoint (PtD x1 y1) (PtD x2 y2)
midpoint p1 p2
fst' (PtD x _) = x
snd' (PtD _ y) = y
midpoint x y = PtD (fst' x + fst' y)/2  (snd' x  + snd' y)/2

----------------------код, который работает
data PointDouble = PtD Double Double deriving (Show, Eq)
getfst (PtD x _) = x
getsnd (PtD _ y) = y
midPoint p1 p2 = PtD ((getfst p1 + getfst p2) / 2) ((getsnd p1 + getsnd p2) / 2)


СПИСОК:
data List a = Nil| Cons a(List a) deriving Show -- 
data N = O | S N
Cons :: a -> List a -> List a --кладет значение в начало списка
let myList = Cons 'a' (Cons 'b'(Cons 'c' Nil))


data List a = Nil| Cons a (List a) deriving Show
len(Cons x xs) = len(xs)