#import "template-lec.typ": conf, definition, theorem, lemma
#show: doc => conf([Функан. Лекция (03.06.2025)], doc)
#show math.integral: math.limits.with(inline: false)

$L_2[a,b]. thick e_1, e_2, dots, e_n, dots, quad e_i(s)$ - базис

$L_2(#square(size: 0.5em))$\
$
  &a <= s <= b quad e_i (s) dot e_k (t)\
  &a <= t <= b
$
$
  K(s,t) in L_2(#square(size: 0.5em))\
  K(s,t) = sum_(i=0)^(infinity) sum_(k=0)^(infinity) a_(i,k) e_i (s) e_k (t)\
  a_(i,k) = integral.double_(#square(size: 0.5em)) K(sigma, tau) e_i (sigma)
  e_k (tau) d sigma d tau
$

$X, Y$ - H-пространства (сепарабельные)\
${e_k}, {epsilon_i}$ - базисы\
$A in (X --> Y)$
$
  y = A x \
  y = A sum_(k) x_k e_k = sum_k x_k A e_k\
  y_i = (y, epsilon_i) = (sum_k x_k A e_k, epsilon_i) = sum_k x_k (A e_k, epsilon_i)
  = sum_k a_(i,k) x_k\
  (A e_k, epsilon_i) := a_(i,k)\
$
$
  y_i = sum_k a_(i,k) x_k\
  A ~ (a_(i,k))
$

= Ортогональное дополнение
#definition[
  $X$ - H-пространство. $R$ - подмножество
  $
    R^tack.t = {z : z tack.t x, thick x in R},
  $
  называется ортогональным дополнением
]
Ортогональное дополнение являтся подмножеством $X$ и Гильбертовым\
Если $X$ - сепарабельное, то $R^tack.t$ - сепарабельное

#theorem(1)[
  Пусть $X$ - сепарабельное гильбертово пространство, $R$ - подпр-во

  Тогда
  $
    forall x in X quad x = x_1 + x_2,
  $
  где $x_1 in R_1, thick x_2 in R^tack.t$
]

#definition[
  $X, Y$ - ЛНП. $A: X -> Y$ - линейный

  $A$ будем называть компактным (вполне непрерывный), если он ограниченное
  множество отображает в предкомпактное
]

$A$ - компактный $=> A$ - ограниченный\
$S = {x : ||x|| = 1}$

#definition[
  Если линейный ограниченный оператор отображает ЛНП в конечномерное,
  то его называют конечномерным
]

$A " - конечномерный" ==> A " - компактный"$

#theorem(2)[
  $X$ - ЛНП, $Y$ - банахово \
  $A$ - линейный ограниченный, компактные $A_n : X --> Y$, $A_n --> A$

  Тогда $A$ - компактный
]

= Собственные значения и собственные векторы для самосопряженного оператора

$
  A : X --> X,
$
$X$ - гильбертово

#definition[
  $x != 0$, собственный вектор, соответствующий собственному значению $lambda$
  $
    A x = lambda x
  $
]

#lemma[
  *1*\
  $A$ - самоспоряженный
  $
    lambda != mu\
    A x = lambda x\
    A y = mu y
  $
  $
    lambda(x, y) = (lambda x, y) = (A x, y) = (x, A y) = (x, mu y) = mu (x, y)\
    (x,y) = 0
  $
]

#definition[
  Множество всех собственных векторов, которые соответствуют одному собственному
  значению, называют собственным подпространством
]
Если $A$ - ограниченный, то оно замкнуто относительно предела, а значит будет
является сепарабельным гильбертовым пространством с конечным или счётным базисов

#lemma[
  *2*

  Пусть $delta > 0$. $A$ - компактный.
  $
    |lambda| > delta > 0
  $

  Им соответствую собственные вектора. Система этих векторов - конечная

  _Доказательство_

  $
    {e_n} quad A e_n = lambda_n e_n, n = 1, dots, infinity\
    ||A e_k - A e_n||^2 = ||lambda_k e_k - lambda_n e_n||^2 = lambda_k^2
    + lambda_n^2 > 2 delta^2 > 0
  $
  В ${A e_k}$ нет сходящейся подпоследовательности. Тогда $A$ - не компактный.
]

#lemma[
  *3*

  Если $A$ - компактный, то любое его собственное подпространство, соответствующие
  ненулевому собственному значению, является конечномерным
]

#definition[
  Элемент $x$ - максимальный, если $||x|| = 1, thick |(A x, x)| = ||A||$ 
]

Если оператор компактный самосопряженный, то максимальный элемент для него
существует

#lemma[
  *4*

  Если $A$ - самосопряженный компактный, то существует собственный вектор $x$,
  который соответствует собственному значению $lambda: |lambda| = ||A||$.
  При этом он является максимальным

  _Доказательство_
  $
    ||x|| = 1. quad |(A x, x)| = ||A|| = ||A|| dot ||x|| >= ||A x|| = ||A x|| dot
    ||x||
  $

  Неравенство К-Б
  $
    |(A x, x)| <= ||A x|| dot ||x||
  $

  Тогда
  $
    |(A x, x)| = ||A x|| dot ||x||\
    exists lambda : A x = lambda x\
    ||A|| = |(A x, x)| = |(lambda x, x)| = |lambda|
  $
]
