#import "template-lec.typ": *
#show: doc => conf([Метода оптимизации. Семинар (03.12.2025)], doc)

= Решение задачи МП в случае $P != RR^n$ с помощью принципа Лагранжа

*Схема решения* примерно та жа самая, при следующих отличиях

- Простейшие условие регулярности можно использовать лишь для внутренних точек $P$
- Первое условие Лагранжа
$
  cal(L)_1) (nabla_x cal(L) (x_*; lambda_0^*, lambda^*), x - x_*) >= 0 quad
  forall x in P tilde.not nabla_x cal(L) = 0_n
$

$
  P = {x in RR^n | a^j <= x^j <= b^j, thick j = 1, dots, n}
$

Если множество $P$ имеет указанную структуры, то условие $cal(L)_1)$ равносильно:
$
  (diff cal(L) (x_*; lambda_0^*, lambda^*)) / (diff x^j)
  cases(
    >= 0 comma & quad x_*^j = a^j,
    <= 0 comma & quad x_*^j = b^j,
    = 0 comma & quad x_*^j = a^j < x_*^j <= b^j,
  )
$

*Задача 1.*
$
  x^2 + 2 y^2 --> min\
  x^2 + y^2 <= 5\
  2x + y = 1\
  x >= 0
$

$
  & f(x) = (x_1)^2 + 2 (x^2)^2 --> min_(x in X) \
  & X = {x in P | g_1 (x) <= 0, thick g_2(x) = 0} \
  & P = {x in RR^2 | x^1 >= 0} \
  & g_1 = (x^1)^2 + (x^2)^2 - 5 \
  & g_2 = 2 x^1 + x^2 - 1
$

$X$ -- пересечение прямой и круга. Непустой компакт. $f(x)$ - непрерывна. Тогда
выполнены условия теоремы Вейерштрасса. Т.е. существует глобальный минимум и максимум

$
  cal(L) (x; lambda_0, lambda) = lambda_0 f(x) + sum_(i = 1)^(2) lambda_i g_i (x) =
  lambda_0 ((x_1)^2 + 2 (x^2)^2) + lambda_1 ((x^1)^2 + (x^2)^2 - 5) +\
  + lambda_2 (2 x^1 + x^2 - 1), quad lambda_0, lambda_1 >= 0, lambda_2 in RR
$

$
  (diff cal(L)) / (diff x^1) = 2 lambda_0 x^1 + 2 lambda_1 x^1 + 2 lambda_2 x^1\
  (diff cal(L)) / (diff x^2) = 4 lambda_0 x^2 + 2 lambda_1 x^2 + lambda_2 x^2\
$

В соотв. со структурой множества $P$ рассмотрим два случая

I) $x^1 = 0$
#num_eq(
  $
    2 lambda_2 >= 0
  $,
)

#num_eq(
  $
    2 x^2 (2 lambda_0 + lambda_1) + lambda_2 = 0
  $,
)


#num_eq(
  $
    lambda_1 ((x^2)^2 - 5) = 0
  $,
)

1) $lambda_1 = 0$

1a)
$
  2 (2 lambda_0 + lambda_1) + lambda_2 = 0 "- невозможно т.к. хотя бы одно не равно нулю"
$

II) $x^1 > 0$

#num_eq(
  $
    cases(
      x^1 (lambda_0 + lambda_1) + lambda_2 = 0,
      2 x^2 (2 lambda_0 + lambda_1) + lambda_2 = 0
    )
  $,
)

#num_eq(
  $$,
)

#num_eq(
  $
    lambda_1 ((x^1) + (x^2)^2 - 5) = 0
  $,
)

#num_eq(
  $
    2 x^1 + x^2 = 1
  $,
)

#num_eq(
  $
    lambda_0, lambda_1 >= 0
  $,
)


*Задача 3.*

$
  f(x) = (x^1)^2 + 6 x^1 x^2 - 4 x^1 - 2 x^2 --> min_(x in X)\
  X = {x in P | g(x) <= 0}\
  P = {x in RR^2 | x^2 >= 0}\
  g(x) = (x^1)^2 - x^2 - 1
$

$X$ - непустой компакт. $f(x)$ - непрерывна. Тогда выполнены условия теоремы
Вейерштрасса. Т.е. существует глобальный минимум и максимум

$g(x)$ -- выпукла как сумма выпуклой и аффинной функций. И $exists overline(x)
= (0, 0) in P | g(overline(x)) = -1 < 0$. Выполнено условие Слейтера. Значит
задача регулярна

$
  L(x, lambda) = f(x) + lambda g(x) = (x^1)^2 + 6 x^1 x^2 - 4 x^1 - 2 x^2 +
  lambda ((x^1)^2 - x^2 - 1), quad lambda >= 0
$

$
  (diff L) / (diff x^1) = 2 x^1 + 6 x^2 - 4 + 2 lambda x^1
  (diff L) / (diff x^2) = 6 x^1 - 2 - lambda
$

В соотв. со структурой множества $P$ рассмотрим два случая

I) $x^2 = 0$
$
  cases(
    (diff L) / (diff x^1) = 0 ~ x^1 (1 + lambda) - 4 = 0\
    (diff L) / (diff x^2) <= 0 ~ 6 x^1 - 2 - lambda <= 0\
    lambda ((x^1)^2 - 1) = 0 comma thick (dots) <= 0\
    lambda >= 0
  )
$

1. $lambda = 0$
$
  x^1 = 4\
  x^1 <= 2/3
$

2. $lambda > 0$
$
  (x^1)^2 = 1\
  x^1 = 4 / (1 + lambda) > 0 ==> x^1 = 1\
  lambda = 3\
  1 <= 0
$

II) $x^2 < 0$
$
  cases(
    (diff L) / (diff x^1) = 0 ~ x^1 (1 + lambda) + 3x^2 - 2 = 0,
    (diff L) / (diff x^2) = 0 ~ 6 x^1 - 2 - lambda = 0,
    lambda ((x^1)^2 - x^2 - 1) = 0 comma thick (dots) <= 0,
    lambda >= 0
  )
$

1. $lambda = 0$
$
  x^1 = 1/3\
  1/3 + 3 x^2 - 2 = 0 ==> x^2 > 0
$

2. $lambda > 0$
$
  (x^1)^2 - x^2 = 1\
  lambda = 6x^1 - 2\
  x^1 (6 x^1 - 1) + 3 x^2 = 2
$

$
  9(x^1)^2 - x^1 - 5 = 0\
  x^1 = (1 + sqrt(181)) / 18 approx 0.8\
  x^2 approx 0.64 - 1 = -0.36\
  lambda approx 4.8 - 2 = 2.8
$

Т.о. нашлась единственная стационарная точка $x_* approx (0.8, -0.36)$ --
точка глобального минимума
