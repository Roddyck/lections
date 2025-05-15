#import "template.typ": conf
#show: doc => conf([Функан. Лекция (15/05/2025)], doc)

#align(center)[= Унитарное пространство. Гильбертово пространство]

#box(stroke: black, inset: 1em, width: 100%)[
  *Определение.*
  $X$ - ЛП, $forall x,z in X, quad (x;z)$\
  1) $(x,x) >= 0, thick (x,x) = 0 => x = 0$\
  2) $(x,y) = (y,x)$\
  3) $(x+y, z) = (x,z) + (y,z)$ \
  4) $(lambda x, z) = lambda (x,y)$ 

  Тогда $X$ - унитарное пространство (предгильбертово)
]

#box(stroke: black, inset: 1em, width: 100%)[
  *Определение.* $e_1, ..., e_n$. Определитель Грамма
  $
    mat(delim: "|",
      (e_1, e_1), (e_1, e_2), dots;
      (e_2, e_1), (e_2, e_2), dots;
      dots, dots, dots;
      dots, dots, (e_n, e_n)
    ) != 0 <==> "система элементов линейно независима"
  $
]

#box(stroke: black, inset: 1em, width: 100%)[
  *Определение.*
  $X$ - ЛП, $Y$ - унитарное
  $
    A: X -> Y
  $
  $A$ - линейный обратимый\
  $e_1, dots, e_n$ - лнз $<=> det((A e_i, A e_k)) != 0$ 
]

$
  (x,y)^2 <= (x,x) dot (y,y) " - неравенство Коши-Буняковского"
$

$
  ||x|| := sqrt((x,x))
$

Унитарное пространство $==>$ ЛНП

1) $||x|| >= 0, quad ||x|| = 0 <=> x = 0$\
2) $||lambda x|| = sqrt((lambda x, lambda x)) = |lambda| sqrt((x,x)) = |lambda|
dot ||x||$ \
3) $||x+y|| <= ||x|| + ||y||$ 
$
  ||x+y||^2 = (x+y, x+y) = (x,x) + 2(x,y) + (y,y) <= ||x||^2 + 2 |(x,y)|
  + ||y||^2 <= \
  <= ||x||^2 + 2 ||x|| ||y|| + ||y||^2 = (||x|| + ||y||)^2
$

#box(stroke: black, inset: 1em, width: 100%)[
  В унитарном пространстве:
  $
    ||x+y||^2 + ||x-y||^2 = 2(||x||^2 + ||y||^2)
  $
]

$ 
  x,y != 0 quad |(x,y)| = ||x|| dot ||y||  <==> exists k in RR : thick y = k dot x
$ 

$
  cases(
    x_n -> x\
    y_n -> y
  ) ==> 
  (x_n, y_n) -> (x,y)
$

#box(stroke: black, inset: 1em, width: 100%)[
  *Определение.* Полное унитарное пространство называется Гильбертовым пространством
  (H - пространство)
]

$
  RR^n, L_2 [a,b]\
  A " - лин. огранич" quad A: X -> Y, thick X " - H-пр-во"\
  forall x,y quad (A x, y) = (x, A y)\
  A = A^* " - самосопряженный"
$
$
  C = C^*, thick I\
  A = I - lambda dot C
$
$
  (A x)_((s)) = integral_a^b Q(s,t) x(t) d t quad s in [a,b]
$

Такой оператор самосопряженный, если:
$
  Q(s,t) = Q(t,s)
$

#align(center)[= Границы самосопряженного оператора]
$
  |(A x, x)| <= ||A x|| dot ||x|| <= ||A|| dot ||x|| dot ||x||\
  |(A x, x)| <= ||A|| dot (x,x)\
  -||A|| dot (x,x) <= (A x, x) <= ||A|| dot (x,x)
$
$
  exists m, M: thick forall x quad m(x,x) <= (A x, x) <= M(x,x) 
$
$m,M$ - границы самосопряженного оператора. Среди них имеются $max m, thick min M$,
эти числа называются точной нижней и верхней границами.

$
  ||A|| = max(|m|, |M|)
$
$
  x != 0\
  m = inf(A x, x)\
  M = sup(A x, x)\
  ||A|| = sup_(||x|| = 1) |(A x, x)|
$

#box(stroke: black, inset: 1em, width: 100%)[
  *Определение.* Если $m > 0$, то этот оператор называют положительно определенным
  в H - пространстве\
  $
    ||A|| = M
  $
]

$
  C = C^* quad ||C|| <= q quad |lambda| q < 1\
  A = I - lambda dot C
$
$A$ - положительно определенный
