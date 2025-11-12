#import "template-lec.typ": *
#show: doc => conf([Теория чисел. Лекция (11.11.2025)], doc)

$
  (a/p) = product_(s in S) epsilon_s (a)
$

$
  (2/p) = thick ?, quad S = {1, dots, (p-1)/2}
$

$
  2s = epsilon_s (2) s_2\
  1 <= 2s <= (p-1)/2 ==> epsilon_s (2) = 1\
  -S = {(p+1)/2, dots, p-1}\
  (p+1)/2 <= 2s <= p-1 ==> epsilon_s (2) = -1
$

$
  p = 1 + 4k, quad p = 3 + 4k
$

1. $p = 1 + 4k$

$
  (p+1)/2 <= 2s <= p-1 <==> (p+1)/4 <= s <= (p-1)/2\
  k + 1/2 <= s <= 2k\
  k < s <= 2k
$

Количество $hash {s | epsilon_s (2) = -1} = k$
$
  (2/p) = (-1)^k =
  cases(
    1 comma & quad k = 2t & ==> p = 1 + 8t,
    -1 comma & quad k = 2t + 1 & ==> p = 5 + 8t
  )
$

2. $p = 3 + 4k$
$
  (p+1)/4 <= s <= (p-1)/2\
  k + 1 <= s <= 1 + 2k
$

$
  hash {s | epsilon_s (2) = -1] = k + 1
$

$
  (2/p) = (-1)^(k+1) =
  cases(
    1 comma & quad k = 2t + 1 & ==> p = 7 + 8t,
    -1 comma & quad k = 2t & ==> p = 3 + 8t
  )
$

$
  (2/p) =
  cases(
    1 comma & quad p equiv plus.minus 1 (8),
    -1 comma & quad p equiv plus.minus 3 (8)
  )
$

$
  (2/p) = (-1)^((p^2 - 1) / 8)
$

*Проверка равентсва*\
$p = plus.minus 1 + 8t ==> p^2 = 1 plus.minus 16t + 64t^2, thick p^2 - 1 =
plus.minus 16t + 64t^2$
$
  (p^2 - 1) / 8 = plus.minus 2t + 8t^2
$

$p = plus.minus 3 + 8t ==> p^2 = 9 plus.minus 48t + 64t^2, thick p^2 - 1 =
8 + plus.minus 48t + 64t^2$

$
  (p^2 - 1) / 8 = 1 + plus.minus 6t + 8t^2
$

== Квадратичный закон взаимности Гаусса

#lemma[(Тригонометрическая)][
  Пусть $m = 2k + 1$. Тогда:
  $
    (sin m x) / (sin x) = (-4)^((m-1)/2) product_(j = 1)^((m-1)/2) (sin^2 x
      - sin^2 (2 pi j) / m)
  $

  _Доказательство_

  $
    z^m = (cos x + i sin x)^m = cos m x + i sin m x\
    "Im" z^m = sin m x
  $
  $
    z^m = (cos x + i sin x)^m = "Re" (z^m) + sum_(r = 1)^(k) i^(2(k - r) + 1)
    vec(2(k-r)+1, m) cos^(2r) x sin^(2(k-r) + 1) x = \
    = "Re" (z^m) + i (sum_(r=1)^(k) (-1)^(k-r) vec(2(k-r)+1, m) cos^(2r) x
      sin^(2(k-r) + 1) x)
  $

  $
    2 <= 2r <= 2k + 1 = m\
    2 <= 2r <= 2k\
    1 <= r <= k
  $

  $
    sin m x = sum_(r=1)^(k) (-1)^(k-r) vec(2(k-r)+1, m) cos^(2r) x
    sin^(2(k-r) + 1) x\
    (sin m x) / (sin x) = sum_(r=1)^(k) (-1)^(k-r) vec(2(k-r)+1, m) cos^(2r) x
    sin^(2(k-r)) x\
    sin^2 x = y\
    cos^2 x = 1 - y\
    (sin m x) / (sin x) = sum_(r=1)^(k) (-1)^(k-r) vec(2(k-r)+1, m) (1-y)^r y^(k-r)
    = f(y)
  $

  Коэффициент в $f(y)$ при $y^k$:
  $
    sum_(r=1)^k (-1)^(k-r) vec(2(k-r)+1, m) (-1)^r = (-1)^k underparen(
      sum_(r=1)^(k)
      vec(2(k-r)+1, m), = 2^(m-1)
    ) = (-1)^k 2^(m-1) =\
    = (-1)^((m-1)/2) dot 4^((m-1)/2)
  $

  $
    (sin m x) / (sin x) = f(y) = (-4)^((m-1)/2)y^k + dots
  $

  $
    sin m x = 0\
    x = (2 pi j) / m, quad y_j = sin^2 (2 pi j) / m
  $

  Пусть $x = (2 pi j)/m, quad 1 <= j <= (m-1)/2 = k$ \
  Все $sin^2 x$ различны

  $
    f(y) = (-4)^((m-1)/2) (y - y_1) dots (y - y_((m-1)/2)) ==>\
    ==> (sin m x) / (sin x) = (-4)^((m-1)/2) product_(j=1)^((m-1)/2)
    (sin^2 x - sin^2 (2 pi j) /m)
  $
  #qedsymbol
]

#theorem[(Квадратичный закон взаимности Гаусса)][
  Пусть $p, q$ -- нечетные простые числа. Тогда:
  $
    (q/p) = (p/q) (-1)^((p-1)/2 dot (q-1)/2)
  $

  _Доказательство_
  $
    S = {1, 2, dots, (p-1)/2}, quad T = {1, 2, dots, (q-1)/2}
  $

  $
    t dot s = epsilon_s (t) s_t, quad s_t in S
  $

  $
    sin ((2 pi) / p t dot s) = sin (2 pi) / p epsilon_s (t) s_t = epsilon_s (t)
    sin (2 pi) / p s_t\
    epsilon_s (t) = (sin (2 pi) / p t s) / (sin (2 pi) / p s_t) ==>\
    epsilon_s (q) = (sin (2 pi) / p q s) / (sin (2 pi) / p s_q)
  $

  По лемме Гаусса
  $
    (q/p) = product_(s in S) epsilon_s (q) = product_(s in S)
    (sin (2 pi) / p q s) / (sin (2 pi) / p s_q) = product_(s in S)
    (sin (2 pi) / p q s) / (sin (2 pi) / p s)\
    x = (2 pi) / p s, thick m = q
  $
]

