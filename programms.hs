 data Nat = O | S Nat deriving Show --если show определен для данного типа, значит, этот тип можно вводить в строкуяя. 
 -- все конструкторы и типы с заглавной буквы, а функции и значения - с маленькой
 pred (S(n)) = n 
 succ x = (S(x)) 
 sum x y = if x > 0
	then (succ y) (pred x)
	else S
 (>): ::Ord a => a -> a -> Bool
 
three x = S(S(S(x)))
