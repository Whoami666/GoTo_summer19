ОПЕРАТОРЫ:
infix l/r - в какую сторону ставить скобки оператора

f(g(h(x)))
f $ x = f x - доллар позволяет не ставить скобки
f$xyz => сначала ху, потом (ху)z, пототом уже ко всему применяется f
f$h$xi => f(h(x(i)))

тип доллара :type ($)
    
			
определить приоритет оператора:
:info 
				
как "складывать" фунцкии, оператор ТОЧКА. КОМПОЗИЯ ФУНКЦИЙ: ------прямо как композиция гомотетий
(.):: (b->c) -> (a->b)
    -> a -> c
	
f1:: G -> O
f2:: M -> G
(.)::(G->O) -> (M->G)
    -> M -> O
Например,
t = (+1).(+2)

КАК ДЕЛАТЬ СВОИ ТИПЫ ДАННЫХ:
Тип - множество
Тип перечисление/сигма тип:
not :: Bool->Bool
      (T/F)(T/F)
	
data Bool = False | True
::type False
	::Bool
	
Тип произвевдение, П-тип.
data Animal = Dog String
	Cat

Destructuring + patternmatching
name:: Animal -> String
name (Dog x) = x
name Cat = "кошара подзаборная"

НАТУРАЛЬНЫЕ ЧИСЛА(через аксиомы Пеано):
data Nat = O|SNat
0 = O
1 = SO
2 = SSO
3 = SSSO

O:: Nat
S::Nat -> Nat

successor = S
Pred O = O
Pred(Sn) = n

add O y = y
add (Sx)y = add x [Sy]
[SSO] + [SSO] ------> [SO] + [SSSO] 














