#import "template-lec.typ": conf, num_eq, definition, statement, theorem, qedsymbol, conseq
#show: doc => conf([= Функан. Лекция (22.05.2025)], doc)

= Квадратный корень из оператора
$X$ - H - пр-во
$
  A: X -> X
$
самосопряженный положительный оператор
$
  B: X -> X
$
самосопряженный положительный оператор
$
  B^2 = A
$
$
  B := sqrt(A)
$

#box(stroke: black, width: 100%, inset: 1em)[
  $A$ - самосопряженный положительный оператор в H - пространстве, $m > 0$,
  тогда $A$ - положительно определен в B - пр-ве, $m > 0$, а $B = sqrt(A)$ -
  положительно определен с $sqrt(m)$ 
  $
    ||B x||^2 = (B x, B x) = (B^2 x, x) = (A x, x) >= m(x, x) = m dot ||x||^2\
    ||B x|| >= sqrt(m) dot ||x||
  $
  $
    ||A x|| = ||B^2 x|| = ||B(B x)|| >= sqrt(m) ||B x|| >= m dot ||x||
  $
]

= Ортогональные элементы

#box(stroke: black, width: 100%, inset: 1em)[
  #align(center)[$x bot y$, если $(x,y) = 0$]
]

$
  x bot y ==> ||x+y||^2 = (x+y, x+y) = (x,x) + 2(x,y) + (y,y) = ||x||^2 + ||y||^2
$

$e_1, e_2, dots, e_n, dots$ 
$
  r bot e_i thick forall i ==> r bot sum_(i=1)^(n) lambda_i e_i
$
$
  r bot s_n, thick s_n --> s ==> r bot s
$
$
  r bot e_n, thick forall n ==> r bot sum_(n=0)^(infinity) lambda_n e_n
$

#box(stroke: black, width: 100%, inset: 1em)[
  *Определение*:
  $g_1, g_2, dots, g_n, dots$ - замкнутая относительно ортогональности, если
  $
    x bot g_n thick forall n ==> x = 0
  $
]

Можно проверить, что если система элементов полна, то она замкнута

$
  l_n -> x quad (x,x) = (x, lim_n l_n) = lim_n (x, l_n) = 0
$


#box(stroke: black, width: 100%, inset: 1em)[
  *Определение*. Система элементов называется ортогональной, если все
  элементы попарно ортогональны.
]

#box(stroke: black, width: 100%, inset: 1em)[
  *Определение*. Ортогональная система ненулевых элементов является линейно независимой
]

#box(stroke: black, width: 100%, inset: 1em)[
  *Определение*.
  $
    e_1, e_2, dots, e_n, dots\
    e_i bot e_k quad forall i != k\
    ||e_j|| = 1 quad forall j
  $

  ортонормальная (ортонормированная) система
]

#definition[
  Базис H - пр-ва - это полная ортонормированная система
]

#statement[
  _В сепарабельном гильбертовом пространстве существует конечный или счетный базис_
]

$X$ - сепарабельное H - пр-во

#theorem(1)[
  $
    forall x in X quad x = sum_(n=0)^(+infinity)(x, e_n) e_n " - ряд Фурье"\
    lambda_n = (x, e_n) " - коэффициенты Фурье"\
    x = sum_(n = 0)^(infinity) lambda_n e_n <=> lambda_n = (x, e_n)
  $

  _Данный ряд сходится по норме элементов пространства_

  _Доказательство:_

  *Лемма 1.*
  $
    sum_(n=0)^(+infinity) lambda^2_n " - сх" ==> sum_(n=0)^(+infinity) lambda_n
    e_n " - сходится"
  $
  _Доказательство:_
  $
    ||sum_(i = n)^(m) lambda_i e_i||^2 = sum_(i=n)^m ||lambda_i e_i||^2
    = sum_(i=n)^m lambda_i^2 --> 0 thick (m > n -> +infinity)
  $
  #qedsymbol

  *Лемма 2.* $lambda_n = (x, e_n)$ 
  $
    sum_(n=0)^(+infinity) lambda_n e_n = s ==> s = x
  $
  _Доказательство:_
  $
    (s, e_k) = sum_(n=0)^(infinity) lambda_n (e_n, e_k) = lambda_k = (x, e_k)\
    (s, e_k) = (x, e_k)\
    (s - x, e_k) = 0 quad forall k\
    (s - x) bot e_k quad forall k ==> s - x = 0, thick s = x
  $
  #qedsymbol

  _Доказательство теоремы:_ $lambda_n = (x,e_n)$ 
  $
    s_n = sum_(i=0)^n lambda_i e_i quad r_n = x - s_n
  $
  $
    n >= k quad (r_n, e_k) = (x - s_n, e_k) = (x, e_k) - (s_n, e_k) = lambda_k
    - sum_(i=0)^n lambda_i (e_i, e_k) = lambda_k - lambda_k = 0\
    r_n bot e_k quad forall k = 0, dots, n
  $
  тогда $r_n bot$ линейной комбинации $(e_0, dots, e_n)$  
  $
    r_n bot s_n\
    x = s_n + r_n\
    ||x||^2 = ||s_n||^2 + ||r_n||^2 => ||s_n||^2 <= ||x||^2\
    ||s_n|| <= ||x||
  $
  $
    ||s_n||^2 = sum_(i=0)^(n) lambda_i^2 ||e_i||^2 = sum_(i = 1)^(n) lambda_i^2
    <= ||x|| ==> sum_(n=0)^(infinity) lambda_n^2 " - сходится"
  $

  Из лемм 1 и 2 следует утверждение теоремы
  #qedsymbol
]

Эта теорема справедлива для унитарного пространства с счетным базисом

#conseq[
  1. Минимальное свойство отрезка ряда Фурье:
  $
    s_n = sum_(i=0)^(n) lambda_i e_i\
    lambda_i = (x, e_i)
  $
  $
    l_n = sum_(i=0)^(n) mu_i e_i
  $
  $
    ||x - l_n||^2 = ||x - s_n + s_n - l_n||^2 = ||x - s_n||^2 + ||s_n - l_n||^2\
    ||x - l_n||^2 >= ||x - s_n||^2\
    ||x - l_n|| >= ||x - s_n||
  $
  $s_n - l_n$ - линейная комбинация $(e_0, dots e_n)$ 

  2. Пусть $x = sum x_n e_n, quad x_n = (x, e_n)$. $y = sum y_n e_n, quad y_n = (y,e_n)$  
  $
    (x,y) = (sum x_n e_n, y) = sum x_n (e_n, y) = sum_(n=0)^(infinity) x_n dot y_n
  $

  3. Равенство Персеваля - Стеклова
  $
    ||x||^2 = (x,x) = sum_(n=0)^(infinity) x_n^2
  $

  4. Абстрактное H - пр-во (сепарабельное),
  выбрав базис можем сопоставить конкретное пространство числовых
  последовательностей коэф-ов Фурье образующих сходящийся ряд - $l_2$ 
]
