#import "template-lec.typ": conf, conseq, definition, lemma, num_eq, theorem
#show: doc => conf([Методы оптимизации. Семинар (10.09.2025)], doc)

$A > 0$ - симметрическая матрица. $f(x) = 1/2 sum_(i,j = 1)^n a_(i j) x_i x_j$

$
  f(x) = 1/2 (A x, x)
$

$
  nabla f(x) = (f'_(x_1), dots, f'_(x_n))
$

$
  f(x) = 1/2 sum_(i)^n a_(i i) x_i^2 + sum_(i < j) a_(i j) x_i x_j\
  (diff f) / (diff x_s) = a_(s s) x_s + diff / (diff x_s) (sum_(i < s) a_(i s) x_i x_s +
    sum_(s < j) a_(s j) x_s x_j) = a_(s s) x_s + sum_(i < s) a_(i s) x_i +\
  sum_(s < j) a_(s j) x_j = sum_(i=1)^n a_(i s) x_i = sum_(i=1)^n a_(s i) x_i =
  (A x)_s ==> nabla f(x) = A x
$

$
  (diff^2 f) / (diff x_s diff x_t) = (diff) / (diff x_t) (sum_(i=1)^n a_(s i)
    x_i) = a_(s t)
$

$f$ - строго выпукла $<==> A > 0$

1)
$
  A > 0 ==> nabla^2 f(x) > 0 quad forall x in RR^n
$
Тогда по теорема 12 $f(x)$ строго выпукла

2) $f(x)$ строго выпукла, тогда она выпукла $==>^("Th 12") nabla^2 f(x) >= 0 ==> A >= 0$

Пусть $A gt.not 0 ==> exists y in RR^n != 0 : (A y, y) = 0$, т.е. $f(y) = 0$
$
  0 = f(y) - f(0) > (nabla f(0), y - 0)
$

= Точки минимума выпуклых функций

Если функция $f(x)$ - выпукла на $X subset RR^n$ то всякая точка минимума является
точкой глобального минимума

$X_(*)$ - множество всех точек минимума

#theorem(13, [
  $X_(*)$ - выпукло
])

#theorem(14, [
  Если $f(x)$ - строго выпукла, то у неё может существовать не более одной точки
  минимума
])

#theorem([], [
  Пусть $f(x)$ выпукла на $X in RR^n, thick x_* in X$

  Тогда $x_* in X_* <==> (diff f) / (diff h) >= 0 quad forall h in V(x_*, X)$
])

#theorem([], [
  Пусть $f(x)$ выпукла на $X in RR^n$ и диф. в окр-ти $X; x_* in X$

  Тогда
  #num_eq(
    $
      x_* in X_* <==> (nabla f(x_*), x - x_*) >= 0 quad forall x in X
    $,
  )
])

Если $x_* in circle(X)$, то (1) $<==>$
#num_eq(
  $
    nabla f(x_*) = 0
  $,
)

#lemma(1, [
  Если $x_* in RR^n$ - точка минимума $f(x)$

  $
    nabla f(x_*) = 0
  $

  #num_eq(
    $
      nabla^2 f(x_*) >= 0
    $,
  )
])

Для того, чтобы квадратичная функция имела точку минимума на $RR^n$ необходимо, чтобы
она была выпуклой

#lemma(1, [
  $x_* in RR^n$ - точка минимума квадратичной функции $f(x) <==>$
  $
    A x_* = b\
    A >= 0
  $

  Если $A > 0 ==> f(x)$ - строго выпукла. И тогда не имеет больше одной точки
  минимума
])

*Упражнение 35*
$
  f(x) = (x^1)^2 + 2a x^1 x^2 + b(x^2)^2 + c(x^3)^2
$

$
  nabla^2 f(x) =
  mat(
    1, a, 0;
    a, b, 0;
    0, 0, c
  ) = A
$

$A x_* = 0$ - решение существует всегда $(x_* = 0)$

$
  A >= 0\
  a, b, c >= 0\
  b - a^2, b c, c >= 0\
  c(b - a^2) >= 0
$

Достаточно
$
  b >= a^2\
  c >= 0\
  |x_*| > 0
$

2) единственно $det A = c(b-a^2) > 0$
$
  b >= a^2\
  c >= 0\
$

*Упражнение 36*
$
  X = RR_+^2
$
$f(x)$ - выпукла, дифференцируемая в некоторой окрестности $X$.

1. $x_0^1 = 0, thick x_0^2 > 0 ==> {x_0 in X_*} <==> {f'_(x^1) (x_0) >= 0, thick
  f'_(x^2) (x_0) = 0$
$
  x_0 in X_* <==> (nabla f(x_0), x - x_0) >= 0 quad forall x in X <==>
  sum_(i = 1)^2 f'_(x^i) (x_0) dot (x^i - x_0^i) >= 0 <==>\
$

#num_eq(
  $
    f'_(x^1) (x_0) dot x^1 + f'_(x^2) (x_0) dot (x^2 - x_0^2) >= 0
  $,
)

*Необходимость*
Пусть (4)
$
  x^2 = x_0^2 quad x^1 = 1 ==> f'_(x^1) (x_0) >= 0
$

$
  x^1 = 0 quad x^2 = 2 x_0^2 ==> f'_(x^2) (x_0) dot x_0^2 >= 0 ==> f'_(x^2) (x_0) >= 0
$

*Достаточность*

$
  f'_(x^1) (x_0) >= 0 quad f'(x^2) (x_0) = 0
$

$
  f'_(x^1) (x_0) dot x^1 + f'_(x^2) (x_0) (x^2 - x_0^2) = f'_(x^1) (x_0) dot x^1
  >= 0 ==> x_0 in x_*
$

= Сильно выпуклые функции

#definition([
  Пусть $X subset RR^n$ - выпукло, $f : X --> RR$

  Тогда $f(x)$ - называется сильно выпуклой на $X$ с постоянной выпуклости $kappa.alt > 0$,
  если
  #num_eq(
    $
      forall x_0, x_1 in X, thick forall lambda in [0, 1]\
      f(x_lambda) = f(lambda x_1 + (1 - lambda) x_0) <= lambda f(x_1) + (1 - lambda)
      f(x_0) - kappa.alt/2 lambda (1 - lambda) ||x_1 - x_0||^2
    $,
  )
])

#theorem([Критерий сильной выпуклости в классе дифференцируемых функций], [

  Пусть $f(x)$ дифф. в окр-ти $X$

  Тогда $f(x)$ сильно выпукла на $X$ с const $kappa.alt > 0 <==>$
  #num_eq(
    $
      forall x_0, x_1 in X : f(x_1) - f(x_0) >= (nabla f(x_0), x_1 - x_0) +
      kappa.alt/2 ||x_1 - x_0||^2
    $,
  )
])


#theorem([Критерий сильной выпуклости в классе дважды дифференцируемых функций], [

  Пусть $f(x)$ дважды дифф. в окр-ти $X$

  Тогда $f(x)$ сильно выпукла на $X$ с const $kappa.alt > 0 <==>$

  #num_eq(
    $
      nabla^2 f(x) - kappa.alt E >= 0 quad forall x in X
    $,
  )
])


#num_eq(
  $
    ((nabla^2 f(x) - kappa.alt E) h, h) >= 0 quad forall h in RR^n ~
    ~ (nabla^2 f(x) h, h) >= kappa.alt ||h||^2 quad forall h in RR^n
  $,
)

$
  (nabla^2 f(x) h, h) >= kappa.alt quad forall h in S_1 (0)
$

$
  kappa.alt = inf_(x in X\ h in S_1 (0)) (nabla^2 f(x) h, h) > 0
$

== Свойства сильно выпуклых функций

1. Всякая сильно выпукла функция $f(x)$ на непустом замкнутом множестве $X$ имеет в
  точности одну точку минимума

= Следствия из теоремы Вейерштрасса

$X subset RR^n$ - замкнутое непустое множество, $f : X --> RR$

#num_eq(
  $
    f(x) --> min_(x in X)
  $,
) <opt-problem>

#theorem([Вейерштрасса], [
  Пусть $X$ - непустой компакт в $RR^n$, $f$ - непрерывна на $X$

  Тогда $f$ достигает глобальный минимум и глобальный максимум на $X$
])

#conseq([
  $X subset RR^n$ - замкнуто и неограничено, $f$ - непрерывная

  Если $exists c in RR : M_f (c) = {x in X | f(x) <= c}$ непустое и ограниченное,
  то существует решение задачи @opt-problem
])

#conseq([
  $X subset RR^n$ - замкнуто и неограничено, $f$ - непрерывная, и такая, что
  $f(x) -->_(|x| --> +oo) +oo$ 

  Тогда в задаче @opt-problem существует решение 
])
