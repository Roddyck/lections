#import "template-lec.typ": conf, definition, num_eq, theorem
#show: doc => conf([Мат. методы нелинейной динамики], doc)

#num_eq(
  $
    cases(
      dot(x) = P(x,y),
      dot(y) = Q(x,y)
    ), quad (x,y) in D subset RR^2 ==> (d y) / (d x) = Q / P
  $,
) <diff-system>

$
  forall t_0 in RR quad forall (x_0, y_0) thick exists ! x(t), y(t)\
  x(t_0) = x_0, thick y(t_0) = y_0\
  x = x(t - t_0, x_0, y_0)\
  y = y(t - t_0, x_0, y_0)
$

Решения с разными $t_0$ и одинаковыми начальными точками образуют цилиндрическую
поверхность. Все эти решения проецируются в одну фазовую кривую.

$
  cases(
    P(x,y) = 0,
    Q(x,y) = 0
  )
$

Рассмотрим изолированное решение $(x_0, y_0)$

= Классификация состояний равновесий

В системе @diff-system замена $x - x_0 = xi, thick y - y_0 = eta$
$
  cases(
    dot(xi) = P'_x (x_0, y_0) xi + P'_y (x_0, y_0) eta + dots,
    dot(eta) = Q'_x (x_0, y_0) xi + Q'_y (x_0, y_0) eta + dots
  )
$

#definition([
  $
    mat(
      delim: "|",
      P_x - lambda, P_y;
      Q_x, Q_y - lambda
    ) = 0
  $

  $
    lambda^2 - sigma lambda + Delta = 0, quad sigma = P'_x + Q'_y, quad
    Delta = mat(delim: "|", P'_x, P'_y; Q_x, Q_y)
  $
])

#num_eq(
  $
    cases(
      dot(xi) = P'_x xi + P'_y eta,
      dot(eta) = Q'_x xi + Q'_y eta
    )
  $,
) <lin-sys>

#theorem(1, [
  1. $lambda_1 dot lambda_2 < 0 ==> (x_0, y_0)$ - седло и для @lin-sys, и для @diff-system
  2. $lambda_1, lambda_2 in RR, thick lambda_1 != lambda_2, thick lambda_1 - lambda_2 > 0
    ==> (x_0, y_0)$ - узел и для @lin-sys, и для @diff-system

  3. $lambda_1 = lambda_2$. $(x_0, y_0)$ для системы @lin-sys либо вырожденный узел
  (одно собственное направление), либо диакритический узел (два соб. направления).
  Для @diff-system вырожденный узелб диакритический узел, узел

  4. $lambda_(1, 2) = p plus.minus i q, thick q dot p != 0, quad (x_0, y_0)$ -
  фокус и для @diff-system, и для @lin-sys

  5. $lambda_(1, 2) = plus.minus i q, quad (x_0, y_0)$ - центр в @lin-sys,
  в @diff-system либо центр, либо фокус

  *Достаточные условия центра*
  1. Существования аналитического интеграла
])

#theorem([Гробмана-Хартмана], [

  *Определение*\
  Состояние равновесий называется гиперболическим, если оно не имеет собственных
  значений с нулевой вещественной частью

  В окрестности гипреболического состояние равновесия, система
  $
    dot(x) = F(x), thick x in RR^n
  $
  топологические эквивалентна своей линеаризации
])

#definition([
  Если состояние равновесия имеет нулевые собственные значения, то его называют
  сложным
])

$
  lambda^2 - sigma lambda + Delta = 0\
$

1. $Delta = 0, thick sigma != 0, thick (lambda_1 = 0, med lambda_2 = sigma)$
2. $Delta = 0, thick sigma = 0 thick (lambda_1 = lambda_2 = 0)$

В случае 1, с помощью невырожденной линейной замены, систему @diff-system можно
привести к виду
$
  cases(
    dot(x) = P_2 (x,y),
    dot(y) = sigma y + Q_2 (x,y)
  )
$

Из условия
$
  sigma y + Q_2 (x,y) = 0 ==> y = phi(x)
$

$
  dot(x) = P_2 (x, phi(x)) = Delta_m x^m + ...
$

Если $m$ четное - седло-узел

Если $m$ нечетное - седло ($sigma Delta_m < 0)$

Если $m$ нечетное ($sigma Delta_m > 0$) - узел

$
  cases(
    dot(x) = x^2 - y,
    dot(y) = ln(1 - x + x^2) - ln(3)
  )
$

$
  cases(
    x^2 - y = 0,
    ln(1 - x + x^2) - ln(3) = 0
  ) ==>
  cases(
    y = x^2,
    1 - x + x^2 = 3
  )
$

$
  x^2 - x - 2 = 0\
  x_1 = -1, thick x_2 = 2\
  y_1 = 1, thick y_2 = 4
$

$
  mat(2x, -1; (2x-1) / (1 - x + x^2), 0)\
  lambda^2 + 2 lambda - 1 = 0\
  lambda^2 + 2 lambda + 1 = 2\
  (lambda + 1)^2 = 2\
  lambda = -1 plus.minus sqrt(2)
$

$(x_1, y_1)$ - седло

$
  lambda^2 - 4 lambda + 4 = 3\
  lambda = 2 plus.minus sqrt(3)
$

$(x_2, y_2)$ - неустойчивый узел

$
  cases(
    dot(x) = -a x dot (1 + x) - b (x - y),
    dot(y) = x - y
  )
$

$
  cases(
    -a x dot (1 + x) - b (x - y) = 0,
    x - y = 0
  )
$

$
  O_1 = (0, 0)\
  O_2 = (-1, -1)
$

$
  J = mat(-a-b, b; 1, -1)
$

$
  lambda^2 + (1 + a + b) lambda + a = 0
$

$
  J = mat(a-b, b; 1, -1)
$

$
  lambda^2 - (-1 + a - b) lambda - a = 0
$

Пусть $a, b > 0$, оценим область притяжения $O_1$

Возьмем функцию Ляпунова:
$
  V(x,y) = x^2 / 2 + (b y^2) / 2 " - Положительно определена"
$


$
  dot(V)_((1)) = x dot(x) + b y dot(y) = x (-a x (1 + x) - b (x - y)) +
  b y (x - y) = -a x^2(1 + x) - b(x - y)^2
$
Знакоопределенная в области $1 + x > 0$

$
  dot.double(x) + (dot(x)^2 + x^2 - 4)x = 0
$

$
  cases(
    dot(x) = y,
    dot.double(y) = (4 - x^2 - y^2) x
  )
$

$
  O_1(0, 0), thick O_2(2, 0), thick O_3(-2, 0)
$

$
  1) quad mat(0, 1; 4, 0), thick lambda^2 - 4 = 0, thick lambda = plus.minus 2
  --> O_1 " - седло"
$

$
  2) quad mat(0, 1; -8, 0)\
  lambda^2 + 8 = 0\
  lambda = plus.minus i 2 sqrt(2)
$

В линейной - центр, в нелинейной - тоже центр

$
  y d y = (4 - x^2 - y^2) x d x
$

$
  cases(
    dot(x) = tan(z - y) - 2 x + sin^2 y,
    dot(y) = sqrt(9 + 12 x) - 3 e^y - y sin x,
    dot(z) = tan(-3 y) + y^3
  )
$

$
  cases(
    dot(x) = z - y - 2x,
    dot(y) = 3 + 2x - 3(1 + y),
    dot(z) = -3y
  )
$

$
  mat(
    -2, -1, 1;
    2, -3, 0;
    0, -3, 0
  )
$

$
  lambda^3 + 5 lambda^2 + 8 lambda + 6 = 0 
$

$
  mat(
    5, 1, 0;
    6, 8, 5;
    0, 0, 6
  )
$

угловые миноры > 0 $==>$ с.р. устойчивое
