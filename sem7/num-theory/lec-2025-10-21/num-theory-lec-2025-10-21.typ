#import "template-lec.typ": conf, conseq, num_eq, theorem
#show: doc => conf([Теория чисел. Лекция (21.10.2025)], doc)

#num_eq(
  $
    P_(k-1) / Q_(k-1) - P_k / Q_k = (-1)^k / (Q_k Q_(k-1))
  $,
) <eq-1>

#conseq[
  *2.*

  $
    Q_k P_(k-2) - P_k Q_(k-2) = a_k (-1)^(k-1)
  $

  _Доказательство_
  $
    Q_k P_(k-2) - P_k Q_(k-2) = (a_k Q_(k-1) + Q_(k-2)) P_(k-2) -
    (a_k P_(k-1) + P_(k-2)) Q_(k-2) =\
    = a_k (Q_(k-1) P_(k-2) - P_(k-1) Q_(k-2)) = a_k dot (-1)^(k-1)
  $
]

#num_eq(
  $
    P_(k-2) / Q_(k-2) - P_k / Q_(k) = (a_k (-1)^(k-1)) / (Q_k Q_(k-2))
  $,
) <eq-2>

$
  k >= 2\
  <a_0; a_1, dots, a_n> = alpha\
  a_0 in ZZ\
  a_1, dots, a_n in NN
$

$k$ - четное

$
  P_k / Q_k > P_(k-2) / Q_(k-2),
  quad {P_k / Q_k}_(k "- четное") "- возрастающая последовательность"
$

$k$ - нечетное

$
  P_(k-2) / Q_(k-2) > P_k / Q_k,
  quad {P_k / Q_k}_(k "- нечетное") "- убывающая последовательность"
$

нечетная подходящая дробь больше чем следующая четная подходящая дробь

из свойств монотонности последовательностей подходящих дробей получаем, что
любая четная подходящая дробь меньше любой нечетной

Из @eq-1:
$
  P_k / Q_k - Q_(k+1) / P_(k+1) = (-1)^(k+1) / (Q_k Q_(k+1))\
  Q_(k+1) > Q_k\
  lr(|P_k / Q_k - Q_(k+1) / P_(k+1)|) = 1 / (Q_k Q_(k+1)) < 1 / Q_k^2\
  lr(|alpha - P_k / Q_k|) < 1 / Q_k^2
$

#theorem[(Лагранжа)][
  Всякая периодическая цепная дробь является квадратичной иррациональностью.

  Обратно, любая квадратичнная иррациональность представляется периодической
  цепной дробью.

  _Доказательство_

  Смешанная периодическая дробь:
  $
    <a_0; a_1, dots, a_s, a_(s+1), dots, a_(s+t), a_(s+1), dots, a_(s+t), dots> =
    <a_0; a_1, dots, a_s, (a_(s+1), dots, a_(s+t))>
  $

  Чисто периодическая дробь:
  $
    <(a_0; a_1, dots, a_n)>
  $

  Пусть $beta = <(a_0; a_1, dots, a_n)>$
  $
    beta = <a_0, dots, a_n, beta>\
    beta = P_(n+1) / Q_(n+1) = (beta P_n + P_(n-1)) / (beta Q_n + Q_(n-1))
  $

  $
    beta^2 Q_n + beta (Q_(n-1) - P_n) - P_(n-1) = 0
  $

  Пусть $alpha = <a_0; a_1, dots, a_s, (a_(s+1), dots, a_(s+t))>$
  $
    beta = <(a_(s+1), dots, a_(s+t))>\
    alpha = <a_0; a_1, dots, a_s, beta> = (beta P_s + P_(s-1)) / (beta Q_s + Q_(s-1))
  $
]

== Применение цепных дробей к решению сравнений первой степени

$
  a x equiv b med (m), quad (a, m) = 1
$

$
  x equiv a^(phi(m) - 1) b med (m)
$

$
  Q_n P_(n-1) - P_n Q_(n-1) = (-1)^n
$

$
  m / a = <a_0; a_1, dots, a_n> = P_n / Q_n\
  a P_(n-1) - m Q_(n-1) = (-1)^n\
  a P_(n-1) equiv (-1)^n med (m)\
  a b P_(n-1) equiv (-1)^n b med (m)\
  a underbracket((-1)^n b P_(n-1), x) = b med (m)\
  x equiv (-1)^n b P_(n-1) med (m)
$

== Применение цепных дробей к решению неопределенных уравнений

#num_eq(
  $
    a x + b y = c, quad a, b, c in ZZ
  $,
) <eq-3>

$
  m = (a, b)
$

если $m divides.not c$, то уравнение @eq-3 решений не имеет

$
  a = a_1 m\
  b = b_1 m\
  c = c_1 m\
  a_1 x + b_1 y = c_1\
  (a_1, b_1) = 1
$

#num_eq(
  $
    a x + b y = c\
    (a, b) = 1
  $,
) <eq-4>

Если $x_0, y_0$ - решение @eq-4
$
  a x_0 + b y_0 = c, quad (x_1, y_1) "- решение"
$

$
  a (x_1 - x_0) + b (y_1 - y_0) = 0\
  a(x_1 - x_0) = -b(y_1 - y_0)\
  x_1 - x_0 = b t\
  y_1 - y_0 = a u\
  a dot b t = - b dot a u ==> u = -t\
  x_1 - x_0 = b t\
  y_1 - y_0 = - a t
$

$
  cases(
    x_1 = x_0 + b t,
    y_1 = y_0 - a t
  ), quad t in ZZ
$
