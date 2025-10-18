#import "template-lec.typ": conf, lemma, num_eq, theorem
#show: doc => conf([Методы оптимизации. Лекция (15.10.2025)], doc)

= Условия регулярности (слейтера, линейности) в з. МП.

#num_eq(
  $
    f(x) --> min_(x in X)\
    X = {x in P | g_i (x) <= 0, thick i = overline(1 comma k), thick g_i (x) = 0,
      thick i = overline(k + 1 comma m)}
  $,
) <lin-prog>

#theorem(1, [
  Пусть в задаче @lin-prog множество $P$ выпукло, $f(x), thick g_i (x), thick i = overline(1 comma m)$
  диф-ма

  $g_i (x), thick i = overline(1 comma k)$, выпукла на $P$, $g_i (x), thick
  i = overline(k+1 comma m)$ аффинны

  Пусть, кроме того, выполнено, хотя бы одно из следующих условий
  #num_eq(
    $
      k = m comma thick exists overline(x) in P : g_i (overline(x)) < 0 comma thick
      i = overline(1 comma k)
    $,
  )

  #num_eq(
    $
      P "- замкн. ", thick g_i (x), thick i = overline(1 comma k) "аффинны"
    $,
  )

  Тогда, если $x_* in X$ - точка локального минимума в задача @lin-prog, тО
  $exists lambda^* in Lambda = {lambda in RR^m | lambda_i >= 0, thick
  i = overline(1 comma k)$

  $lambda_0^* = 1$ : вып. рег. усл. Лагранжа

  $
    (nabla_x L(x_*; lambda^*), x - x_*) >= 0 quad forall x in P
  $

  $
    lambda_i^* g_i (x_*) = 0, quad i = overline(1 comma k)
  $

  _Доказательство_

  1) пусть выполнено (2), $x_* in X$ - точка локального минимума

  Рассмотрим систему
  $
    cases(
      (nabla f(x_*), x - x_*) < 0,
      (nabla g_i (x_*), x - x_*) < 0
    )
  $

  Докажем, что система неразрешима на $P$. Предположим, что $x = tilde(x) in P$ -
  решение

  Полагая $h = tilde(x) - x_* ==> (nabla f(x_*), h) < 0 ==> h in V(x_*, f)$ \
  $==> h in V(x_*, f) inter V(x_*, X)$ \
  #for i in range(100) [
    .
  ]

  По следствию из леммы Фанна
  $
    exists lambda_i^* >= 0, thick i in I(x_*)\
    (nabla f(x_*), x - x_*) + sum_(i in I(x_*)) lambda_i^* (nabla g_i (x_*), x - x_*)
    >= 0 quad forall x in P
  $

  $
    (nabla f(x_*) + sum_(i in I(x_*)) lambda_i^* nabla g_i (x_*), x - x_*) >= 0
    forall x in P
  $

  Положим $lambda_i^* = 0 thick forall i in {overline(1 comma k)} backslash I(x_*)$

  2) Пусть выполнено условие линейности, $x_* in X$ - точка локального минимума

  Рассмотрим систему

  $
    (nabla f(x_*), x - x_*) < 0\
    (nabla g_i (x_*), x - x_*) <= 0, quad i in I(x_*)\
    (nabla g_i (x_*), x - x_*) = 0, quad i = overline(k+1 comma m)
  $

  Преположим, что $x = tilde(x) in P$ - решение

  Положим $h = tilde(x) - x_* ==> h in U(x_*, f)$

  $
    forall i in I(x_*)\
    g_i (x_* + alpha h) = g_i (x_*) + alpha (nabla g_i (x_*), h) <= 0
  $

  $
    forall i in {overline(1 comma k)} backslash I(x_*) quad g_i (x_*) < 0 ==>\
    g_i (x_* + alpha h) < 0 quad forall "д.м" alpha in RR
  $

  $forall i in {overline(1 comma k)}$ рассмотрим
  $
    g_i (x_* + alpha h) = g_i (x_*) + alpha (nabla g_i (x_*), h) = 0 forall alpha in RR
  $

  $
    x_* + alpha h = x_* + alpha (tilde(x) - x_*) = alpha tilde(x) + (1 - alpha) x_*
    in P quad forall alpha in [0, 1]
  $

  Получаем, что
  $
    x_* + alpha h in X quad forall "д.м." alpha > 0
  $
  $
    h in V(x_*, X) ==> h in U(x_*, f) inter V(x_*, X)
  $

  противоречие с локальной оптимальностью точки $x_*$

  Подсистемы имеют решение.

  По следствию 3 из леммы Фаркаша,
  $
    exists lambda_i^* >= 0, thick i in I(x_*), thick lambda_i^* in RR, thick\
    i = overline(k+1 comma m) : (nabla f(x_*), x - x_*) + sum_(i in I(x_*))
    lambda_i^* (nabla g_i (x_*), x - x_*) + sum_(i = k+1)^m lambda_i^*
    (nabla g_i (x_*), x - x_*) >= 0
  $

  $
    (nabla f(x_*) + sum_(i in S(x_*)) lambda_i^* nabla g_i (x_*), x - x_*) >= 0
  $
])

#theorem([2 (Куна-Таккера в диф. форме)], [

  Пусть в задаче @lin-prog множество $P$ - выпукло

  $f(x), thick g_i (x), thick i = overline(1 comma k)$ выпуклы и дифференцируемы,
  $g_i (x), thick i = overline(k+1 comma m)$ аффинны на $RR^n$

  Предположим, что выполнено хотя бы одно из двух условий слейтера или линейности

  Тогда $x_* in X$ - решение задачи @lin-prog $<==> exists lambda^* in Lambda :$
  выполнены условия регулярности Лагранжа

  Достаточность была доказана ранее, необходимость следует сразу же из теоремы 1
])

= Доказательство принципа Лагранжа для случая линейных ограничений типа равенства

Будем предпологать, что все функции диф-мы и кроме того $g_i (x), thick i =
overline(k+1 comma m)$ аффинны на $RR^n$

Пусть $x_* in X$ - точка локального минимума

Рассмотрим систему:
$
  & (nabla f(x_*), x - x_*) < 0 \
  & (nabla g_i (x_*), x - x_*) < 0 quad i in I(x_*) \
  & (nabla g_i (x_*), x - x_*) = 0 quad i = overline(k+1 comma m)
$

Докажем, что она неразрешима на множестве $P$

Преположим, что $exists x= tilde(x) in P$ - решение. Положим $h = tilde(x) - x_*$

$
  ==> (nabla f(x_*), h) < 0 ==> h in U(x_*, f)
$

$
  h in U(x_*, g_i) quad forall i in I(x_*)
$

$
  forall i in {overline(1 comma k}) backslash I(x_*) : g_i (x_*) < 0 ==>
  g_i (x_* + alpha h) < 0 quad forall "д.м." alpha in RR
$

$
  forall i = overline(k+1 comma m) quad g_i (x_* + alpha h) = g_i (x_*) + alpha
  (nabla g_i (x_*), h) = 0 quad forall alpha in RR
$

$
  x_* + alpha h = x_* + alpha (tilde(x) - x_*) = alpha tilde(x) + (1 - alpha) x_*
  in P quad forall alpha in [0, 1]
$

Тогда $x_* + alpha h in X quad forall "д.м." alpha > 0$, т.е. $h in V(x_*, X) ==>
h in U(x_*, f) inter V(x_*, X)$ - противоречие с локальной оптимальностьб точки
$x_*$

Т.о. система неразрешима на множесте $P$

По лемме Фана, $exists lambda_0^* >= 0, thick lambda_i^*, thick i in I(x_*),
lambda_i^* in RR, thick i in overline(k+1 comma m)$, не все равные 0 и такие, что
$
  lambda_0^* (nabla f(x_*), x - x_*) + sum_(i in S(x_*)) lambda_i^* (nabla g_i
    (x_*), x - x_*) >= 0 quad forall x in P
$

$
  (lambda_0^* (nabla f(x_*), x - x_*) + sum_(i in S(x_*)) lambda_i^* nabla g_i
    (x_*), x - x_*) >= 0 quad forall x in P
$

#align(center)[*help me pls*]

= Конкретизация условий Лагранжа для важных частных случаев

#lemma(1, [
  1. Если $x_* in circle(P)$ (в частности, $P = RR^m$), то $L_1) ~
    nabla_x L(x_*; lambda_0^*, lambda^*) = 0$

  2. $P = {x in RR^n | a^j <= x^j <= b^j, thick j = 1, dots m}$, то
    $
      L_1) ~ (diff L(x_*; lambda_0^*, lambda^*)) / (diff x^j) =
      cases(
        = 0 comma quad a^j < x_*^j < b^j,
        >= 0 comma quad x_*^j = a^j,
        <= 0 comma quad x_*^j = b^j
      )
    $ 

  3. $P = {x in RR^n | x^j >= 0, thick j = 1, dots, s}$ 
  $
    L_1) ~ (diff L) / (diff x^j) (x_*, lambda_0^*, lambda^*) >= 0, quad
    x_*^j (diff L) / (diff x^j) (...) = 0, quad j = 1, dots, s\
    
    (diff L) / (diff x^j) = 0, quad j = s+1, dots, n
  $

  2) $I_0 = {i in overline(1 comma n) | a^i < x_*^i < b^i}, thick I_+ = 
  {i in overline(1 comma n) | x_*^i = a^i}, thick I_- = 
  {i in overline(1 comma n) | x_*^i = b^i}$ 

  $
    L_1) : sum_(i in I_0) (diff L) / (diff x^i) (...) (x^i - x_*^i) + 
    sum_(i in I_+) (diff L) / (diff x^i) (...) (x^i - x_*^i) +
    sum_(i in I_-) (diff L) / (diff x^i) (...) (x^i - x_*^i) >= 0
  $

  Остается заметить, что утверждение 3 - частный случай утверждения 2
])
