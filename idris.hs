Строгая и ленивая семантика. f(x), лень => сначала функция
Чистые функции - не затрагивают внешнюю среду, что-то изменяемое. На одном наборе аргументов всегда одинаковый результат.
Грязная функция - выведение всякой параши в процессе на экран.
Все есть тип - все есть значение - все есть функция =)
- присваивание мэйну типа IO()
--data Typename = Constructor
main : IO() 
main = print "1"
data X = A

Тотальный язык - язык, в котором все функции будут тотальными. Тотальная функция - чистая функция, которая определена 
для всех своих аргументов. Также обладает продуктивной рекурсией(рекурсия,которая завершается). Не может содержать в себе
вызова не тотальной функции.

data Y = A | B (У - тип данных), или тип А, или тип В
a : Y; a = A

data Worm = MkWorm Integer - теперь, если мы хотим сделать червяка, то
w : Worm
w = MkWorm 5

data W2 = MkW2 Integer String
w2 : W2
w2 = MkW2 4 "Josy"

СУММЫ И ПРОИЗВЕДЕНИЯ ТИПОВ:
data X = MkX
data Y = MkY
data Z = MkZ X Y
e : Z
e = MkZ MkX MkY

Создать тип данных замок. Семьи, домики
data Family = One | Two | Three | Four
data House = Housing Family
data Zamok = Castle House
--zamok : List House
--zamok = [Housing One, Housing Three, Housing Four]

СПИСОК:
x : List Integer 
x = [1, 2, 3]

data Family = One | Two | Three | Four
data House = Housing Family
data Lord = Lording
data Zamok = Zamking (List House) (Maybe Lord)
data Wall = Height Integer
data Cytadel = Cytadeling Zamok Wall
data Kartofan = Kartofaning
data Luk = Luking
data Morkovka = Morkovking
data Gryadka = Gryadkaring (Maybe Kartofan) Luk Morkovka

ЛИСТЫ:
import Data.Vect

data Nut = Zero | Succ Nut 
x : Nut -> Integer
x (Succ p) = 1 + x p

y : Integer -> Nut
y 0 = Zero
y n = Succ (y (n - 1))

show' : Nut -> String
show' Zero = "Z"
show' (Succ p) = "(S" ++ show' p ++ ")"

plus : Nut -> Nut -> Nut
plus a Zero = a
plus a (Succ b) = plus (Succ a) (b)  

minus : Nut -> Nut -> Nut
minus a Zero = a
minus (Succ a) (Succ b) = minus a b

mult : Nut -> Nut -> Nut
mult a Zero = Zero
mult a (Succ Zero) = a
mult a (Succ b) = mult (plus a a) b

divid : Nut -> Nut -> Nut
divid a (Succ Zero) = a
divid Zero a = Zero
divid a b = plus (Succ Zero) (divid (minus a b) b)

bolshe : Nut -> Nut -> Bool
bolshe Zero Zero = False
bolshe a Zero = True
bolshe Zero a = False
bolshe (Succ a)(Succ b) = bolshe a b
 
cooldivid : Nut -> Nut -> Nut
cooldivid a Zero = a
cooldivid a b = if (bolshe a b) == True then cooldivid (minus a b) b else a

data Order = L | E | G
compar : Nut -> Nut -> Order
comparcompar : Nut -> Nut -> Order
compar a b = if (bolshe a b) == True then G else comparcompar a b
comparcompar a b = if (bolshe b a) == True then L else E
show'' : Order -> String
show'' G = "Greater"
show''  L = "Less"
show''  E = "Equal"

maximum : Nut -> Nut -> Nut
maximum Zero Zero = Zero
maximum a Zero = a
maximum Zero a = a
maximum (Succ a) (Succ b) = Succ (maximum a b)

minimum : Nut -> Nut -> Nut
minimum Zero Zero = Zero
minimum a Zero = Zero
minimum Zero a = Zero
minimum (Succ a) (Succ b) = Succ (minimum a b)

main :IO()
main = print (show' (minimum (y 4) (y 3) ))


