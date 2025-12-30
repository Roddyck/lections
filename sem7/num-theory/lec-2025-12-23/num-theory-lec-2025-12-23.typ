#import "template-lec.typ": *
#show: doc => conf([Теория чисел. Лекция (23.12.2025)], doc)

= Функция Мебиуса
$
  mu(1) = 1 \
  mu(n) = 0 ", если n делится на квадрат"\
  mu(n) = (-1)^k ", если" n = p_1 dots p_k, thick p_i "различные простые числа"
$

== Свойства
1. $mu$ - мульитпликативкная
2. $
    sum_(d | n) mu(d) = cases(
      1 comma quad n = 1,
      0 comma quad n > 1
    )
  $

  $
    n = p_1^(alpha_1) dots p_k^(alpha_k), thick d = p_1^(beta_1) dots p_k^(beta_k)
    quad 0 <= beta_i <= alpha_i \
    mu(d) != 0 <=> d = p_(i_1) dots p_(i_s)
  $

3. $
    sum_(d | n | m) mu (m / n) = cases(
      1 comma quad d = m,
      0 comma quad d != m
    )
  $

  $d$ - делитель $m$, $d$ - фиксированный. Сумма берется по $n$, таким что $n | m$ и
  $d | n$.

  $
    m = d dot u, quad n = d dot v\
    n | m => v | u
  $

  $
    sum_(d | n | m) mu (m / n) = sum_(v | u) mu(v) = cases(
      1 comma quad u = 1,
      0 comma quad u != 1
    ) = cases(
      1 comma quad m = d,
      0 comma quad d < m
    )\
    u = m / d quad m / n = u / v
  $
  Когда $n$ пробегает делители $m$ и $d | n$, то $m / n$ пробегает делители
  $u$ вида $u / v$, где $v$ произвольный делитель $u$. Тогда $u / v$ пробегает
  все делители $u$

== Формула обращения

$g : NN -> A$ (абелева группа)

Положим
$
  f(n) = sum_(d | n) g(d)
$

$
  g(n) = sum_(d | n) mu(n / d) f(d)
$

_Доказательство_
$
  sum_(n | m) mu(m / n) f(n) = sum_(n | m) mu(m / n) sum_(d | n) g(d) =
  sum_(d | m) thick sum_(d | n | m) mu(m / n) g(d) = \
  = sum_(d | m) g(d) sum_(d | n | m) mu(m / n) = g(m)
$

$m --> n$, $n --> d$

$
  sum_(d | n) mu (n / d) f(d) = g(n)
$

= Символ Якоби
$P$ - нечетное число. $a$ - целое число. $(a, P) = 1$,  $P = p p' p'' dots$ (простые могут повторятся)
$
  (a/P) = (a / p) (a / p') dots
$

Если $(a/ P) = -1$, то $a$ не является квадратичным вычетом по $mod P$

$
  a = q_1 q_2 dots q_s
$

$q_i$ - простые, не обязательно различные

$
  P = p_1 dots p_r
$

$p_i$ - простые, не обязательно различные

$
  (a / P) = product_(i, j) (q_i / p_j)
$

$
  a equiv b (P)\
  (a / P) = (b / B)
$

$
  ((a b) / P) = (a / P) (b / P)
$

1.
$
  ((-1) / P) = (-1)^((P - 1) / 2)
$

2. 
$
  (2 / P) = (-1)^((P^2 - 1) / 8)
$

1) $P P' - 1 equiv (P - 1) + (P' - 1) (4)$

2) $P P'^2 - 1 equiv (P^2 - 1) + (P'^2 - 1) (64)$ 

$
  (P - 1) (P' - 1) = P P' - (P - 1) - P = (P P' - 1) - (P' - 1) - (P - 1) equiv
  0 (4)
$

$
  (P^2 - 1) (P'^2 - 1) = P P'^2 - P^2 - P'^2 + 1 = (P P')^2 - (P^2 - 1) - (P'^2 - 1)
  equiv 0 (64)
$
