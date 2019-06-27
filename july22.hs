Функций не существует: функции - просто переменные с параметрами.
Любопытное следствие:
~ Переменные-константы. ЛИТЕРАЛ может интерпретироваться как надо в зависимости от контекста
~ Константа - вроде переменная без параметров, а вроде переменная, которая не меняется

Выражение - то, что вчисляется
Команда - where, break etc.
Терм - кусочек выражения

Как красиво выводить тип
:set -XTypeApplications
:t @[]

Слева от => указаны объекты, которые можно передать данной функции, чтобы ghci не ругался
Класс типов - множество типов

Rhs - Right Hand Side - справа от равно
VarPat - Variable pattern

НЕМНОГО ПРО ТИПЫ:
Конструктор - функция из любых аргументов, определяющая данный тип
f x - конструктор интов =)
Дефолтный конструктор(сразу после определения типа), смарт конструктор

IO:
:t getLine  -- аналог input()
getLine :: IO String
IO - оборачивает все функции, которые имеют ввод/вывод

f = (++ "World")
f "a" = "a World"

Полугруппа - моноид без 0 элемента
f x y = y
getLine `f` getLine
getLine >> getLine
putStrLn "M y i n" >> getLine

(>>0):
getLine >>= putStrLn
aaaaaaaaaa
aaaaaaaaaa

x <- getLine
"bgabgabga"
=> x = bgabgabga

PURE:-----------------------------------------------------------------------------------------------------------???
pure @Maybe @Int 4
=> Just 4

pure @[] @Int 4 
[4]

pure @((,) String) @Int 4
=> ("", 4)

ОПЯТЬ СМОТРИМ НА КОМПИЛЯТОР. КАК СМОТРЕТЬ НА ВЫВОД КОМПИЛЯТОРА?
import Data.Text.Read 
read @int "111" => 111
read @int <$> getLine



