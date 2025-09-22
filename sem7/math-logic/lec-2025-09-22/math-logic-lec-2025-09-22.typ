#import "template-lec.typ": conf
#show: doc => conf([Мат. Логика. Лекция (22.09.2025)], doc)

$
  U = {1, 2, 3, ..., n}\
  forall x thick R(x,x)\
  S_n = 2^(n^2)\
  M_n = 2^(n^2 - n)\
  gamma_n = M_n / S_n = 2^(-n)\
  gamma = lim_(n --> infinity) gamma_n = 0
$

$
  forall x thin forall y thick [R(x,y) --> R(y,x)]\
  S_n = 2^(n^2)\
  M_n = 2^((n(n+1))/2)\
$

$
  forall x thin forall y thick [R(x,y) and R(y,x) --> (x = y)]\
  S_n = 2^(n^2)\
  M_n = 2^n dot 3^((n(n-1))/2)\
$

$
  forall x thin exists y thick R(x,y)\
  S_n = 2^(n^2)\
  M_n = (2^n - 1)^n
$

$
  forall x not not thin exists y thick R(x,y) equiv forall x not forall y not R(x,y)\
  S_n = 2^(n^2)\
$

$
  not not exists x forall y forall z thick T(x,y,z) equiv not forall x not forall y
  forall z thick T(x,y,z)\
  S_n = 2^(n^3)\
  M_n = 2^(n^3) - (2^(n^2) - 1)^n\
  gamma_n = (2^(n^3) - (2^(n^2) - 1)^n) / (2^(n^3)) = 1 - (1 - 1 / 2^(n^2))^n
  --> 0
$

$
  forall x exists y forall z thick T(x,y,z) equiv forall x not forall y not forall z
  thick T(x,y,z)\
  S_n = 2^(n^3)\
  M_n = (2^(n^2) - (2^n - 1)^n)^n
$

$
  exists x forall y exists z exists u forall w thick Q(x,y,z,u,w) equiv
  not forall x not forall y not forall z forall u not forall w thick Q(x,y,z,u,w)\
  S_n = 2^(n^5)\
  // 1, 1, 2^n - 1, (2^n - 1)^n, ((2^n - 1)^n)^n, 2^(n^3) - ((2^n - 1)^n)^n,
  // (2^(n^3) - ((2^n - 1)^n)^n)^n, 2^(n^4) - ((2^n - 1)^n)^n)^n
  // (2^(n^4) - ((2^n - 1)^n)^n)^n)^n
  M_n = 2^(n^5) - (2^(n^4) - ((2^n - 1)^(n^2))^n)^n
$

$
  forall x thick [P(x) or Q(x)]\
  S_n = 2^n dot 2^n = 2^(2n) = 4^n\
  M_n = 3^n
$

$
  exists x thick [P(x) and Q(x)] equiv not forall x thick [not P(x) or not Q(x)]\
  S_n = 2^n dot 2^n = 2^(2n) = 4^n\
$

$
  forall x thick [P(x) --> exists y thick R(x,y)]\
  S_(n) = 2^(n^2 + n)\
  M_n = (2^(n+1) - 1)^n\
$

$
  forall x thick [P(x) --> forall y thick R(x,y)]\
  S_(n) = 2^(n^2 + n)\
  M_n = (2^n + 1)^n
$

$
  forall x exists y thick R(x,y) and exists x forall y R(x,y)\
  S_n = 2^(n^2)\
  M_n = (2^n - 1)^n - (2^n - 2)^n
$

$
  forall x thick (f(x) != x)\
  S_n = n^n\
  M_n = (n-1)^n\
  gamma_n = ((n-1)/n)^n\
  gamma = lim_(n --> oo) gamma_n = e^(-1)
$

$
  forall (f(f(x)) = x)\
  S_n = n^n\
$

Пусть $k$ - число пар $f(x) = y quad f(y) = x$

$
  M_n = sum_(k=0)^(floor(n/2)) (C_n^2 dot C_(n-2)^2 dot C_(n-4)^2 dot dots
  C_(n-2k+2)^2)/k! = sum_(k=0)^(floor(n/2)) n! / (2^k k! (n-2k)!)
$

$
  forall x thick P(f(x))\
  S_n = n^n dot 2^n\
  k = |P| quad P : C_n^k quad f : k^n\
  M_n = sum_(k=0)^(n) (k^n dot n!) / (k! (n-k)!)
$

= Исключающие кванторы

$
  (forall x | y_1, ..., y_n) A equiv forall x [(x!=y_1) and (x!=y_2) and ... and
    (x!=y_n) --> A]\
$

$
  (exists x | y_1, ..., y_n) A equiv exists x [(x=y_1) and (x=y_2) and ... and
    (x=y_n) and A]
$

*Внесение переменной/константы в список исключения*

Внесём переменную $tau$ в
$
  (forall x | y_1, ..., y_n) A(x) equiv A(tau) and (forall x | y_1, ..., y_n, tau) A\
  (exists x | y_1, ..., y_n) A(x) equiv A(tau) or (forall x | y_1, ..., y_n, tau) A\
$

*$Gamma$-формула*

В список исключений любого квантора входят все переменные подформулы начинающейся
с этого квантора

$
  forall x thin (exists y | x) R(x,y)\
  M_n = (2^n - 2)^n
$
