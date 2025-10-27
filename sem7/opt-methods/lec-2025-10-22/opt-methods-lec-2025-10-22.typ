#import "template-lec.typ": conf
#show: doc => conf([Методы оптимизации. Лекция (22.10.2025)], doc)

$
  x -> max\
  (x - 1/2)^2 + y^2 = 1/4, quad x^2 + y^2 + x^2 = 1
$

$
  f(x) = -x^1 --> min\
  g_1 (x) = (x^1 - 1/2)^2 + (x^2)^2 - 1/4\
  g_2 (x) = (x^1)^2 + (x^2)^2 + (x^3)^2 - 1
$

1. $X$ - непустой компакт, $f(x)$ - непрерывная. Значит выполнены условия теоремы
  Вейерштрасса, тогда существует глобальный минимум и максимум\
  По принципу Лагранжа они содержатся среди стационарных точек.

2. Условие линейности невыполнено т.к. $g_i$ квадратичны

Простейшие условие регулярности:

Предположим, что простейшие условие регулярности нарушено
$
  nabla g_1(x), nabla g_2(x) "- лз" ==> nabla g_1(x) parallel nabla g_2(x)
$

$
  nabla g_1(x) = (2 x^1 - 1, 2x^2, 0)^T\
  nabla g_2(x) = (2x^1, 2x^2, 2x^3)^T = 2x
$

Если $nabla g_2(x) = 0 ==> x = 0 ==> x = 0 in.not X$

$
  nabla g_1(x) = t dot nabla g_2(x), quad t in RR\
  cases(
    2x^1 - 1 = 2t x^1,
    2x^2 = 2 t x^2,
    0 = 2 t x^3
  )\
  t = 0:\
  x^1 = 1/2, thick x^2 = 0 ==> 0 = 1/4\
  t != 0:\
  x^3 = 0\
  cases(
    (x^1 - 1/2)^2 + (x^2)^2 = 1/4,
    (x^1)^2 + (x^2)^2 = 1
  )\
  x^1 - 1/4 = 3/4\
  x^1 = 1\
  x^2 = 0\
  x^3 = 0
$

Единственная точка в которой может нарушаться условие регулярности - это точка
$(1, 0, 0) = overline(x)$. Принцип Лагранжа в этой точке выполнен
$
  t = 1/2\
  lambda_0 = 1, thick lambda_2 = 1/2 ==> nabla_x cal(L)(overline(x), lambda_0, lambda) = 0
$

ii. Регулярный случай

$
  L(x, lambda) = f(x) + lambda_1 g_1(x) + lambda_2 g_2(x) =
  -x^1 + lambda_1 ((x^1 - 1/2)^2 + (x^2)^2 - 1/4) +\
  lambda_2 ((x^1)^2 + (x^2)^2 + (x^3)^2 - 1)
$

$
  cases(
    L'_(x_1) = -1 + lambda_1 (2x^1 - 1) + 2 lambda_2 x^1 = 0\
    L'_(x_2) = 2 lambda_1 x^2 + 2 lambda_2 x^2 = 0\
    L'_(x_3) = 2 lambda_2 x^3 = 0\
    (x^1 - 1/2)^2 + (x^2)^2 = 1/4\
    (x^1)^2 + (x^2)^2 + (x^3)^2 = 1
  )
$

1. $lambda_1 = lambda_2 = 0 ==> -1 = 0$

2. $lambda_1 = 0, lambda_2 != 0$
$
  x^3 = 0, thick x^2 = 0, thick x^1 = 1, thick lambda_2 = 1/2 quad overline(x)
  = (1, 0, 0)
$

3. $lambda_1 != 0, lambda_2 = 0$

$x^2 = 0$ \
a) $x^1 = 1 ==> x^3 = 0, lambda_1 = 1, thick overline(x) = (1, 0, 0)$ \
b) $x^1 = 0 ==> x^3 = plus.minus 1, thick lambda_1 = -1, thick tilde(x) =
(0, 0, plus.minus 1)$

4. $lambda_1 != 0, thick lambda_2 != 0$
$
  x^3 = 0 quad overline(x) = (1, 0, 0)\
  -1 + lambda_1 + 2 lambda_2 = 0
$

Таких $lambda$ бесконечно много

$
  f(overline(x)) = -1, quad t(tilde(x)) = 0\
  f(overline(x)) < f(tilde(x))
$

Тогда $overline(x)$ - точка глобального min, $tilde(x)$ - точка глобального max

*Задача 5*

$
  x --> min, quad x + y + z = 0, thick x^2 + y^2 + z^2 = 1
$

$
  f(x) = x^1 --> min\
  X = {x in RR^3 | g_i (x) = 0, thick i = 1,2}\
  g_1(x) = x^1 + x^2 + x^3
  g_2(x) = (x^1)^2 + (x^2)^2 + (x^3)^2 - 1
$

1) $X$ - непустой компакт, $f(x)$ - непрерывна

2) Простейшее условие регулярности

$
  nabla g_1(x) = (1, 1, 1)\
  nabla g_2(x) = 2x
$

Предположим, что простейшее условие регулярности нарушается, т.е.
$g_1(x), g_2(x)$ - линейно зависимы. Тогда
$
  exists t in R, quad nabla g_2 = 2t dot nabla g_1\
  cases(
    2x^1 = 2t,
    2x^2 = 2t,
    2x^3 = 2t,
  ), quad x^1 = x^2 = x^3 = t\
  3t = 0 --> t = 0\
  x = (0,0,0) in.not X
$

Во всех допустимых точках простейшее условие регулярности выполнено

3)
$
  L(x, lambda) = x^1 + lambda_1 (x^1 + x^2 + x^3) +
  lambda_2 ((x^1)^2 + (x^2)^2 + (x^3)^2 - 1)
$

4)
$
  cases(
    L_(x_1) = 1 + lambda_1 + 2 lambda_2 x^1 = 0,
    L_(x_2) = lambda_1 + 2 lambda_2 x^2 = 0,
    L_(x_3) = lambda_1 + 2 lambda_2 x^3 = 0,
    x^1 + x^2 + x^3 = 0,
    (x^1)^2 + (x^2)^2 + (x^3)^2 = 1
  )\
  overline(x) = (minus 2/sqrt(6), plus 1/sqrt(6), plus 1/sqrt(6))\
  tilde(x) = - overline(x)\
  f(overline(x)) = -2 / sqrt(6) quad f(tilde(x)) = 2 / sqrt(6)
$

*Задача 6*

$
  f(x) = (x^1)^2 + (x^2)^2 --> min_(x in X)\
  X = {x in RR^2 | g(x) = 0}\
  g(x) = (x^1)^4 + (x^2)^4 - 1
$

1) $X$ - непустой компакт, $f(x)$ - непрерывна

2) Простейшее условие регулярности

$
  nabla g(x) = (4(x^1)^3, 4(x^2)^3)
$

Пусть $nabla g(x) = 0 ==> x = 0 in.not X$

3)
$
  L(x, lambda) = (x^1)^2 + (x^2)^2 + lambda ((x^1)^4 + (x^2)^4 - 1)
$

4)
$
  cases(
    L_(x^1) = 2 x^1 + 4 lambda (x^1)^3 = 0,
    L_(x^2) = 2 x^2 + 4 lambda (x^2)^3 = 0,
    (x^1)^4 + (x^2)^4 = 1
  )
$

$
  lambda != 0
$

1. $x^1 = 0$ 
$
  x^2 = plus.minus 1\
  lambda = -1/2\
  overline(x) = (0, plus.minus 1)
$

2. $x^2 = 0$ 
$
  x^1 = plus.minus 1\
  lambda = -1/2\
  tilde(x) = (plus.minus 1, 0)
$

3. $x^1 != 0, thick x^2 != 0$ 

$
  1 + 2 lambda dot 2 (x^1)^2 = 0\
  1 + 2 lambda dot 2 (x^2)^2 = 0\
  (x^1)^2 = (x^2)^2 = t\
  2 t^2 = 1\
  t = 1/sqrt(2)
$

$
  hat(x) = (plus.minus 1 / root(4, 2), plus.minus 1 / root(4, 2)),
  x = (plus.minus 1 / root(4, 2), minus.plus 1 / root(4, 2))
$

*Задача 8*

$
  f(x) = x^1 x^2 + x^2 x^3 --> min_(x in X)\
  g_1 (x) = x^1 + x^2 - 4\
  g_2 (x) = x^2 + x^3 - 4
$

$X$ - пересечение не параллельных плоскостей, т.е. прямая.\
$X$ - замкнутое неограниченное

$
  x^2 = t --> x^1 = 4 - t, thick x^3 = 4 - t\
  f(x) = 2(4 - t) = 8 t - 2 t^2 -->_(t -> +oo) -oo
$

2) Условие регулярности выполняется как условие линейности

3)
$
  L(x, lambda) = x^1 x^2 + x^2 x^3 + lambda_1 (x^1 + x^2 - 4) + lambda_2
  (x^2 + x^3 - 4)
$

4) $overline(x) = (2, 2, 2)$ - единственная стационарная точка, $lambda_1, lambda_2 = -2$ 
