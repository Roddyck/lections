#import "template-lec.typ": conf, definition, theorem, qedsymbol, conseq
#show: doc => conf([Теория чисел. Лекция (14.10.2025)], doc)

$
  a_0 + 1 / (a_1 + 1 / (a_2 + 1 / a_3 + dots.down + 1/(a_(n-1) + 1/a_n)))\
  a_0 in ZZ\
  a_1, a_2, dots in NN\
  [a_0; a_1, dots, a_n, dots]\
  [a_0; a_1, dots, a_n]\
  a_n != 1
$

$
  alpha = a / b in QQ quad 0 < {alpha} < 1\
  alpha in RR quad a_0 = [alpha]\
  {alpha} = 1 / Gamma_1 quad 1 / Gamma_2 = {Gamma_1}, thick { a_1 = [Gamma_1]\
  Gamma_1 = a_1 + 1 / Gamma_2\
  alpha = a_0 + {alpha} = a_0 + 1 / Gamma_1 = a_0 + 1 / (a_1 + 1 / Gamma_2)
$

$
  alpha = a/b\
  a = q_0 b + r_0 quad 0 <= r_0 < b\
  a/b = q_0 + r_0 / b\
  {a/b} = r_0/b\
  a/b = q_0 + 1 / (b/r_0), quad b = r_0 dot q_1 + r_1\
  b/r_0 = q_1 + r_1 / r_0\
  a/b = q_0 + 1 / (q_1 + r_1 / r_0) = q_0 + 1 / (q_1 + 1 / (q_2 + 1 / (r_1 / r_2)))
$

#definition[
  $
    [a_0, a_1, dots, a_n, dots]
  $

  $[a_0, a_1, dots, a_k]$ - $k$-я подходящая дробь\
  $r_k = [a_k, a_(k+1), dots, a_n, dots]$ - $k$-й остаток

  $
    [a_0, a_1, dots, a_k] = P_k / Q_k
  $

  $
    [a_0, a_1, dots] = [a_0, a_1, dots, a_(k-1), r_k]
  $
]

$
  alpha = a_0 = a_0 / 1 quad P_0 = a_0, thick Q_0 = 1
$

Пусть для дробей длины $n-1$ канонический вид определён

$
  [a_0, a_1, dots, a_n] = [a_0, r']\
  r' = [a_1, a_2, dots, a_n] = P' / Q' "- канонический вид дроби n-1-го порядка"\
  [a_0, a_1, dots, a_n] = [a_0, r'] = a_0 + 1 / r' = a_0 + Q' / P' = (a_0 P' + Q') / P'\
$

$
  P_n / Q_n = [a_0, a_1, dots, a_n] quad P_n = a_0 P' + Q', thick Q_n = P'
  "- канонический вид" [a_0, a_1, dots, a_n]
$

#theorem[(Правило нахождения подходящей дроби)][
  Пусть $[a_0, a_1, dots, a_n, dots]$ 

  $P_k / Q_k = [a_0, a_1, dots, a_k]$ - k-я подходящая дробь (в каноническом виде)

  для $k >= 2$ справедливо равенство
  $
    &P_k = a_k P_(k-1) + P_(k-2)\
    &Q_k = a_k Q_(k-1) + Q_(k-2)
  $

  _Доказательство_
  $
    [a_0, a_1, dots, a_k] = [a_0, r']\
    r' = [a_1, dots, a_k] = P'_(k-1) / Q'_(k-1)\
  $
  $
    &P'_(k-1) = a_k P'_(k-2) + P'_(k-3)\
    &Q'_(k-1) = a_k Q'_(k-2) + Q'_(k-3)
  $

  $
    P_k = a_0 P'_(k-1) + Q'_(k-1) = a_0 (a_k P'_(k-2) + P'_(k-3)) + Q'_(k-1) =\
    = a_0 (a_k P'_(k-2) + P'_(k-3)) + (a_k Q'_(k-2) + Q'_(k-3)) =
    a_k (a_0 P'_(k-2) + Q'_(k-2)) + a_0 P'_(k-3) + Q'_(k-3) =\
    = a_k P_(k-1) + P_(k-2)
  $

  $
    Q_k = P'_(k-1) = a_k P'_(k-2) + P'_(k-3) = a_k Q_(k-1) + Q_(k-2)
  $
  #qedsymbol
]

Полагая
$
  P_(-1) = 1\
  P_(-1) = 0
$

Формула будет верна и для $k = 1$ 

$
  P_0 = a_0 quad Q_0 = 1
$
$
  &P_1 = a_1 P_0 + P_(-1) = a_1 dot a_0 + 1\
  &Q_1 = a_1 Q_0 + Q_(-1) = a_1 dot 1
$

$
  [a_0, a_1] = a_0 + 1 / a_1 = (a_0 dot a_1 + 1) / a_1
$

#conseq[
  $
    A_k = Q_k P_(k-1) - P_k Q_(k-1) = (a_k Q_(k-1) + Q_(k-2)) P_(k-1) - 
    (a_k P_(k-1) + P_(k-2)) Q_(k-1) =\

    Q_(k-2) P_(k-1) - P_(k-2) Q_(k-1) = -A_(k-1)
  $

  $
    A_0 = Q_0 P_(-1) - P_0 Q_(-1) = 1
  $

  $
    A_k = (-1)^k
  $
]
