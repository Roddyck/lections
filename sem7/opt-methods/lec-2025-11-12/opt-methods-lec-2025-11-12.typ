#import "template-lec.typ": *
#show: doc => conf([Методы оптимизации. Лекция (12.11.2025)], doc)

= Условия оптимальности второго порядка в задаче математического программирования

#num_eq(
  $
    f(x) --> min_(x in X)\
    X = {x in P | g_i (x) <= 0, thick i = 1, dots, k, thick g_i (x) = 0,
      thick i = k+1, dots, m}\
    P subset RR^n, thick f, g_i : RR^n --> R, thick i = 1, dots, m
  $,
) <mp>

$f, g_i$ дважды диф-му в точке $x_* in X$. Тогда:
$
  exists nabla_(x x)^2 cal(L) (x_*; lambda_0^*, lambda^*) = lambda_0^* nabla^2
  f(x_*) + sum_(i = 1)^(m) lambda_i nabla^2 g_i (x_*)\
  lambda^* in Lambda = {lambda in RR^m | lambda_i >= 0, thick i = 1, dots, k}
$

$
  I(x_*) = {i in overline(1 comma k) | g_i (x_*) = 0}\
  S(x_*) = I(x_*) union {k+1, dots, m}\
  H(x_*) = {h in RR^n | (nabla f(x_*), h) <= 0, thick (nabla g_i (x_*), h) <=0,
    thick i in I(x_*), thick (nabla g_i (x_*), h) = 0, thick i = k+1 dots m}
$


#theorem([1 (НУО 2-го порядка], [
  Пусть в задача @mp $x_* in X inter circle(P)$ - точка локального минимума\
  $f(x) , g_i (x)$ дважды диф-мы в точке $x_*$ и более того, $g_i (x), i in S(x_*)$
  непр. диф-ма в окр-ти $x_*$ причем $nabla g_i (x_*), i in S(x_*)$ лнз

  Тогда
  #num_eq(
    $
      (nabla^2_(x x) cal(L) (x_*; lambda_0^*, lambda^*) h, h) >= 0 quad forall h in H(x_*)
    $,
  ) <eq-2>
  $
    forall lambda_0^* >= 0, lambda^* in Lambda : "выполнены условия Лагранжа"
  $

  _Доказательство_

  $forall h in H(x_*)$
  $
    I(x_*, h) = {i in I(x_*) | (nabla g_i (x_*), h) =0} = {i in {1, dots, k} |
      g_i (x_*) = 0, thick (nabla g_i (x_*), h) = 0}\
    S(x_*, h) = I(x_*, h) union {k+1, dots, m}
  $

  Для $g_i (x), i in S(x_*, h)$ выполнены условия теоремы Люстерника. Тогда
  $exists$ n-векторная ф-я $r(alpha):$
  $
    g_i (x_* + alpha h + r(alpha)) = 0, forall i in S(x_*, h), r(alpha) = o(alpha)\
    forall "д.м." alpha in RR
  $

  Положим $x_alpha = x_* + alpha h + r(alpha) ==>$
  #num_eq(
    $
      g_i (x_alpha) = 0, forall i in
      S(x_*, h), forall "д.м." alpha in RR
    $,
  ) <eq-3>

  Докажем, что
  #num_eq(
    $
      lambda_i^* = 0, forall i in {1, dots, m} backslash S(x_*, h) =
      {1, dots, k} backslash I(x_*, h)
    $,
  ) <eq-4>

  Предположим, что $j in {1, dots, k} backslash I(x_*, h), thick lambda_j^* > 0$

  1. $g_i (x_*) < 0 ==>$ по условию $cal(L)_2) : lambda_i^* g_i (x_*) = 0
    forall i = 1, dots, k, thick lambda_j = 0$. Противоречие
  2. $(nabla g_j (x_*), h) < 0$
  Рассмотрим
  $
    0 = (nabla_x cal(L) (x_*; lambda_0^*, lambda^*), h) = lambda_0^* (nabla f(x_*),
      h) + lambda_j^* (nabla g_j (x_*), h) + sum_(i in {1, dots, k}) lambda_i^*
    (nabla g_i (x_*), h) + \
    sum_(i in {1, dots, k}) lambda_i^*
    (nabla g_i (x_*), h) + \
  $
  Там противоречие в общем...

  Рассмотрим
  $
    cal(L) (x_alpha; lambda_0^*, lambda^*) = lambda_0^* f(x_alpha) + sum_(i in S(x_*, h))
    lambda_i^* g_i (x_alpha) = lambda_0^* f(x_(alpha))
  $

  Т.о.
  #num_eq(
    $
      cal(L)(x_alpha; lambda_0^*, lambda^*) = lambda_0^* f(x_alpha)
    $,
  ) <eq-5>

  Док-м, что
  #num_eq(
    $
      x_alpha in X quad forall "д.м." alpha > 0
    $,
  ) <eq-6>

  Предположим, что $j in {1, dots, m} backslash S(x_*, h) = {1, dots, k} backslash
  I(x_*, h)$

  1. $g_i (x_*) < 0 ==>$ по теореме об уст-ти знака непр-ной ф-ии. Тогда
  #num_eq(
    $
      g_j (x_alpha) < 0 quad forall "д.м." alpha in RR
    $,
  ) <eq-7>

  2. $g_j (x_*) = 0, thick (nabla g_j (x_*), h) < 0$
  Рассмотрим
  $
    g_j (x_alpha) = g_j (x_* + alpha h + r(alpha)) - g_j (x_*) = (nabla g_j (x_*),
      alpha h + r(alpha)) + o(|alpha h + r(alpha)|) = \
    = alpha (nabla g_j (x_*), h) + (nabla g_j (x_*), r(alpha)) + o(alpha) =
    alpha [(nabla g_j (x_*), h) + (o(alpha)) / alpha] < 0 quad forall "д.м." alpha > 0
  $
  #num_eq(
    $
      g_j (x_(alpha)) < 0 quad forall "д.м." alpha > 0
    $,
  ) <eq-8>

  Из @eq-7, @eq-8 $==>$
  #num_eq(
    $
      g_j (x_alpha) < 0 quad forall j in {1, dots, m} backslash S(x_*, h)
    $,
  ) <eq-9>

  Т.к.
  #num_eq(
    $
      x_* in circle(P) ==> x_alpha in P quad forall "д.м." alpha > 0
    $,
  ) <eq-10>

  Из @eq-3, @eq-9, @eq-10 $==>$ @eq-6 $==>$
  $
    f(x_alpha) >= f(x_*) "д.м." alpha > 0 ==> cal(L) (x_alpha; lambda_0^*,
      lambda^*) = lambda_0^* f(x_alpha) >= lambda_0^* f(x_*) = lambda_0^* f(x_*)
    + sum_(i = 1)^(k) lambda_i^* g_i (x_*)\
    + sum_(i = k+1)^(m) lambda_i^* g_i (x_*) = cal(L) (x_*; lambda_0^*, lambda^*)
  $

  $
    ==> 0 <= cal(L)(x_alpha; lambda_0^*, lambda^*) - cal(L)(x_*; lambda_0^*, lambda^*)
    = (nabla_x cal(L)(x_alpha; lambda_0^*, lambda^*), x_alpha - x_*) \
    + 1/2 (nabla_(x x)^2 cal(L)(x_alpha; lambda_0^*, lambda^*) [x_(alpha) - x_*],
      x_(alpha) - x_*) + o(|x_alpha - x_*|^2) = \
    1/2 (nabla_(x x)^2 cal(L)(x_alpha; lambda_0^*, lambda^*) [alpha h + r(alpha)],
      alpha h + r(alpha)) + o(|alpha h + r(alpha)|^2) = alpha^2 / 2 \
    [nabla_(x x)^2 cal(L)(x_alpha; lambda_0^*, lambda^*) [h +
  $
])

#note[
  Для задачи выпуклого прог-я условия теоремы 1 не интересны, ибо
  вылоняются автоматические
]

#note[
  Из условий теоремы 1 следует, что выполнено простейшее условие регулярности
  в точке $x_*$
]

= Достаточное условие оптимальности 2-го порядка в задаче МП

$
  V(x_*) = {h in RR^n | exists lambda > 0, x in P : h = lambda(x-x_*)}
$

$
  cal(L)_1) : (nabla_x cal(L)(x_*; lambda_0^*, lambda^*), x - x_*) >= 0
  quad forall x in P ~\
  (nabla_x cal(L)(x_*; lambda_0^*, lambda^*), h) >= 0
  quad forall h in V(x_*)
$

Если $x_* in circle(P)$, то $V(x_*) = RR^n$

#theorem[2][
  Пусть в задаче @mp $f(x), g_i (x)$ дважды диф-мы в точке $x_* in X$,
  причем $exists lambda_0^* >= 0, thick lambda^* in Lambda$ одновременно
  не равные 0 и такие, что вып-ся условия Лагранжа, т.е. $x_*$ -- стационарная
  точка. Предположим, кроме того, что вып-но условие
  #num_eq(
    $
      (nabla_(x x)^2 cal(L) (x_*, lambda_0^*, lambda^*)h, h) > 0\
      forall h in overline(V(x_*)) inter H(x_*), thick h != 0
    $,
  ) <eq-11>

  Тогда $x_*$ -- точка строгого локального минимума

  _Доказательство_

  Будем считать, что $x_*$ -- предельная точка множества $X$

  Предположим, что $x_*$ не является точкой строгого локального минимума
  #num_eq(
    $
      ==> exists {x_k} subset X, thick x_k != x_* : x_k --> x_*, thick
      f(x_k) <= f(x_*)
    $,
  ) <eq-12>

  Положим $alpha_k = |x_k - x_*| > 0$
  $
    h_k = (x_k - x_*)/ alpha_k = (x_k - x_*) / (|x_k - x_*|) ==>
    x_k = x_* + alpha_k h_k, thick |h_k| = 1
  $

  $
    h_k in S_1(0)
  $

  По теореме Больцано-Вейерштрасса, без ограничения общности,
  можем считать, что $h_k ==> overline(h) in S_1(0)$

  #num_eq(
    $
      {h_k} subset V(x_*) ==> overline(h) in overline(V(x_*))
    $,
  ) <eq-13>

  Док-м, что
  #num_eq(
    $
      overline(h) in H(x_*)
    $,
  ) <eq-14>

  Из @eq-12 $==> 0 >= f(x_k) - f(x_*) = f(x_* + alpha_k h_k) - f(x_*)$
  $
    = (nabla f(x_*), alpha_k h_h) + o(|alpha_k h_k|) = alpha_k [(nabla f(x_*), h_k)
      + o(alpha_k) / alpha_k]
  $
  $
    ==> (nabla f(x_*), h_k) + o(alpha_k)/alpha_k <= 0
  $

  #num_eq(
    $
      ==> (nabla f(x_*), overline(h)) <= 0
    $,
  ) <eq-15>

  $
    forall i in I(x_*) : 0 >= g_i (x_k) = g_i (x_k) - g_i (x_*) =
    g_i (x_*) + alpha_k h_k) - g_i (x_*)\
    = alpha_k [(nabla g_i (x_*), h_k) + o(alpha_k)/alpha_k]
  $

  $
    ==> (nabla g_i (x_*), h_k) + o(alpha_k)/alpha_k <= 0
  $

  #num_eq(
    $
      (nabla g_i (x_*), overline(h)) <= 0 quad forall i in I(x_*)
    $,
  ) <eq-16>

  #for _ in range(180) [.]
]

#conseq[
  Пусть $f(x), g_i (x)$ диф-мы в точке $x_* in X$ 

  Предположим, что $overline(V(x_*)) inter H(x_*) = {0_n}$. Тогда $x_*$ --
  точка строгого локального min в задаче @mp

  _Доказательство_

  Дословно воспроизводит доказательство теоремы 2 вплоть до (18).
]
