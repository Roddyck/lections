#import "template-lec.typ": conf, definition, lemma, num_eq, qedsymbol, statement, theorem
#show: doc => conf([Методы оптимизации. Лекция (29.10.2025)], doc)

= Проблема доказательства принципа Лагранжа для нелинейных ограничений типа неравенства

$
  n = 2, thick k = 0, thick m = 1, quad P = RR^2\
  X = {x in RR^2 | g(x) = 0}
$

Пусть $g(x)$ - аффинные

$
  (nabla g(x_*), h) = 0 ~ h tack.t nabla g(x_*)
$

$
  X = { x in RR^2 | g(x) = (a,x) + b = 0} "- прямая"
$

$
  g(x_* + alpha h) = (a, x_* + alpha h) + b = (a, x_*) + b + alpha(a, h) = 0\
  x_* + alpha h in X quad forall alpha in RR
$

Предположим, что $g(x)$ - кривая. Смешение на вектор выводит из множества $X$.

$x_* + alpha h$ сохраняет достаточную близость ко множеству $X$ при достаточно малых
$alpha in RR$

$
  exists x_(alpha) in X | r(alpha) = x_alpha - (x_* + alpha h) = o(alpha) =
  o(|alpha h|)
$

И даже более того, $x_alpha$ можно выбрать таким образом, что $r(alpha) tack.t a
quad forall a parallel.not nabla g(x_*)$

Сформулируем этот факт сразу для систем нескольких нелинейных уравнений

#lemma([1 (Теорема Люстерника)], [
  Пусть $g_i (x), quad i = 1, dots, m$ непрерывно дифф-ма в некоторой окрестности
  точки $x_* in RR^n$ и таковы, что $g_i (x_*) = 0, quad i = 1, dots, m$ и
  $nabla g_i (x_*), thick i = 1, dots, m$ вместе с векторами $a_i, thick i = m+1, dots, n$
  образуют базис в $RR^n$

  Предположим, что $h in RR^n$ таков, что $(nabla g_i (x_*), h) = 0, thick i = 1,
  dots, m$

  Тогда существует $n$-векторная функция
  $
    r(alpha) : g_i (x_* + alpha h + r(alpha)) = 0, thick i = 1, dots, m\
    (a_i, r(alpha)) = 0, thick i = m+1, dots, n quad forall "д.м." alpha in RR\
    r(alpha) = o(alpha)
  $
])

#lemma([2 (Теорема о неявной функции)], [
  Пусть $f_i (r, alpha), thick i = 1, dots, n$ непрерывно дифф-мы в некоторой
  окр-ти точки $(0_n, 0) in RR^n times R$, причем
  $
    f_i (0_n, 0) = 0, quad i = 1, dots, n\
    (diff f_i) / (diff r) (0_n, 0) "- линейно независимы"\
    (diff f_i) / (diff alpha) (0_n, 0) = 0
  $

  Тогда существует $n$-векторная функция
  $
    f_i (r(alpha), alpha) = 0, thick i = 1, dots, n forall "д.м." alpha in RR\
    r(alpha) = o(alpha)
  $
])

#block(
  stroke: black,
  inset: 1em,
  width: 100%,
)[
  *Док-во леммы 1 с помощью леммы 2*

  $
    f_i (r, alpha) = g_i (x_* + alpha h + r), thick i = 1, dots, m\
    f_i (r, alpha) = (a_i, r), thick i = m+1, dots, n
  $

  Для $i = 1, dots, m$
  $
    f_i (0_n, 0) = g_i (x_*) = 0\
    (diff f_i) / (diff r) (0_n, 0) = nabla g_i (x_*)\
    (diff f_i) / (diff alpha) (0_n, 0) = (nabla g_i (x_*), h) = 0
  $
  Для $i = m+1, dots, n$
  $
    f_i (0_n, 0) = 0\
    (diff f_i) / (diff r) (0_n, 0) = a_i\
    (diff f_i) / (diff alpha) (0_n, 0) = 0
  $

  Все условия леммы 2 выполнены, отсюда получаем утверждение леммы 1
  #qedsymbol
]

= Доказательство принципа Лагранжа для случая $P = RR^n$

#num_eq(
  $
    f(x) --> min_(x in X)\
    X = {x in RR^n | g_i (x) <= 0, thick i = overline(1 comma k), thick g_i (x) = 0,
      thick i = overline(k+1 comma m)}
  $,
) <mp-problem>

$f, g_i : RR^n --> RR, thick i = 1, dots, m$ - непр-но дифф-мы

Пусть $x_* in X$ - точка локального min в задаче @mp-problem

1. $nabla g_i (x_*), thick i = k+1, dots, m$ линейно зависимы, тогда
$
  exists lambda_i^* in RR, thick i = k+1, dots, m "не все" = 0 "такие, что"\
  sum_(i = k + 1)^(m) lambda_i^* nabla g_i (x_*) = 0_n
$

Полагая $lambda_i^* = 0, thick i = 0, dots, k ==>$
$
  lambda_0^* nabla f(x_*) + sum_(i = 1)^(m) lambda_i^* nabla g_i (x_*) = 0_n ~
  nabla_x cal(L) (x_*; lambda_0^*, lambda^*) ~ cal(L)_1)\
  lambda_i^* g_i (x_*) = 0, thick forall i = overline(1 comma k) ~ cal(L)_2)
$

2. $nabla g_i (x_*), thick i = k+1, dots, m$ линейно независимы, тогда
  выполняется простейшие свойство регулярности

Рассмотрим систему:
$
  cases(
    (nabla f(x_*), x - x_*) < 0,
    (nabla g_i (x_*), x - x_*) < 0 comma quad i in I(x_*) = {i in overline(1 comma k)
      | g_i (x_*) = 0},
    (nabla g_i (x_*), x - x_*) = 0 comma quad i = overline(k+1 comma m)
  )
$

Предположим, что существует решение $x = tilde(x) in P = RR^n$ \
Положим $h = tilde(x) - x_* ==>$
$
  (nabla g_i (x_*), h) = 0, forall i = k+1, dots, m
$

Т.к. градиенты лнз, выполнены условия леммы 1
$
  exists r(alpha) : g_i (x_* + alpha h + r(alpha)) = 0, thick i = k+1, dots, m, quad
  forall "д.м." alpha in RR\
  x_* + alpha h + r(alpha) = x_alpha
$

$
  f(x_alpha) - f(x_*) = f(x_* + alpha h + r(alpha)) - f(x_*) = (nabla f(x_*),
    alpha h + r(alpha)) + o(|alpha h + r(alpha)|)\
  = alpha (nabla f(x_*), h) + (nabla f(x_*), r(alpha)) + o(alpha) =\
  alpha [(nabla f(x_*), h) + (o(alpha)) / alpha] < 0 quad forall "д.м." alpha > 0
$

$
  f(x_alpha) < f(x_*) quad forall "д.м." alpha > 0
$

Аналогично, $forall i in I(x_*)$
$
  g_i (x_alpha) < g_i (x_*) = 0 quad forall "д.м." alpha > 0
$

$forall i in {overline(1 comma k)} backslash I (x_*)$ имеем: $g_i (x_*) < 0$

Тогда по теореме об устойчивости знака непрерывной функции $g_i (x_alpha) < 0 quad
forall g_i$

Тогда $x_alpha in X$...

Т.о. система неразрешима на $P = RR^n$

Выполнено условие леммы Фане

$
  exists lambda_0^* >= 0, thick lambda_i^* >= 0, thick i in I(x_*), thick
  lambda_i^* in RR^n, thick i = k+1, dots, m, "не все равные нулю и такие, что"\
  lambda_0^* (nabla f(x_*), x - x_*) + sum_(i in S(x_*)) lambda_i^* (nabla
    g_i (x_*), x - x_*) >= 0, quad forall x in P = RR^n,\
  S(x_*) = I(x_*) union {k+1, dots, m}
$

$
  (lambda_0^* (nabla f(x_*), x - x_*) + sum_(i in S(x_*)) lambda_i^* nabla
    g_i (x_*), x - x_*) >= 0, quad forall x in P = RR^n,\
$

Пологая $lambda_i^* = 0 quad forall i in {1, dots, m} backslash S(x_*) = {1, dots, k}
backslash I(x_*) ==> cal(L)_1), cal(L)_2)$

Для случае, когда $P != RR^n$ приведенное доказательство не работает, поскольку
нет гарантий, что $x_alpha in P$. Поэтому приходится вводить новые понятия:
аффинное множество, аффинная оболочка множества, носительная внутренность множетства...
И доказывается новое вспомогательное утверждение, но там сложно, в общем

= Практика

$
  f(x) = x^1 x^2 + x^2 x^3 --> min\
  g_1(x) = x^1 + x^2 - 4 = 0\
  g_2(x) = x^2 + x^3 - 4 = 0
$

$
  x_* = (2, 2, 2)\
  lambda^* = (-2, -2)
$

$
  L(x, lambda) = x^1 x^2 + x^2 x^3 + lambda_1 (x^1 + x^2 - 4) + lambda_2
  (x^2 + x^3 - 4)
$

$
  nabla_(x x)^2 L(x_*; lambda^*) =
  mat(
    0, 1, 0;
    1, 0, 1;
    0, 1, 0
  )\

  H(x_*) = {h in RR^3 | (nabla f(x_*), h) <= 0, thick (nabla g_i (x_*), h) = 0}
$

*Задача 9*

$
  f(x) = -x^1 - x^2 - dots - x^n --> min_(x in X)\
  X = {x in RR^n | g(x) = 0}\
  g(x) = (x^1)^2 + dots + (x^n)^2 - 1
$

$X = S_1(0_n)$ - непустой компакт

$
  nabla g(x) = (2x^1, dots, 2x^n) = 2x\
  nabla g(x) = 0 <==> x = 0 in.not X
$

$
  L(x, lambda) = f(x) + lambda g(x) = -x^1 - dots - x^n + 
  lambda((x^1)^2 + dots + (x^n)^2 - 1)
$

$
  (diff L) / (diff x^i) = -1 + 2 lambda x^i\
  x^i = 1 / (2 lambda) = t\
  n t^2 = 1 ==> t = plus.minus 1 / sqrt(n)\
  overline(x) = 1 / sqrt(n) (1, dots, 1)^t\
  tilde(x) = - overline(x)
$
