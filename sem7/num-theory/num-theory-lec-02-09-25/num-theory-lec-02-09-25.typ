#import "template-lec.typ": conf
#show: doc => conf([Теория чисел. Лекция (02.09.2025)], doc)

#let theorem(num, contents) = [
  #block(
    stroke: black,
    inset: 1em,
    width: 100%,
  )[
      *Теорема #num.* #contents
  ]
]
= Натуральные числа

(Аксиомы Пеано)

$
  x' = x + 1\
  x + y' = (x + y)'\
  x < y, " если" y = x + u, thick u in NN
$

*Аксиома индукции*:
$
  A = { n in NN | P(n)}\
  1 in A " и" thick n in A => n' = n+1 in A
$
Тогда $A = NN$ 

Пусть $R$ - область целостности и на $R backslash {0}$ задана функция
$delta : R backslash {0} -> {0, 1, 2, dots} = Z^(+)$ 

1. если $a = b c$, то $delta(a) >= delta(b)$ 
2. для $a, b in R, thick b != 0 quad exists ! q, r in R$, такие что
$a = b dot q + r, quad r = 0 " или " delta(r) < delta(b)$ 

В этом случае $R$ называтся евклидовым кольцом

#theorem(
  1,
  [
  *Теорема о делении с остатком в $ZZ$*

  для любых $a, b in ZZ, b != 0 quad exists ! q, r in ZZ | a = b q + r$, где
  $a < r < |b|$

  *Доказательство*

  1) $a > b > 0$
  $
    b dot k, thick k in NN
  $

  Пусть $A = { b dot k | b k > a} != 0$ (аксиома архимеда)

  Пусть $macron(k)$ - наименьший элемент множества $A$ 
  $
    (macron(k) - 1) dot b <= a\
    macron(k) - 1 = q quad a = q b + r ==>\
    a - q b <= b\
    a = q b + r quad 0 <= a - q b <= b
  $

  $
    b -r = b - (a - q b) = -a + (q + 1) b = macron(k) b - a => b > r
  $

  2) $a = b > 0$ 
  $
    a = 1 dot b + 0
  $

  3) $a = 0 quad 0 = 0 dot b + 0$ 

  4) $0 < a < b$ 
  $
    a = 0 dot b + a\
  $

  $a< 0, b > 0$ 
  $
    |a| = q dot b + r\
    |a| = -a quad 0 <= r < b\
    a = -q b - r
  $

  если $r > 0, r < b$ 
  $
    a = (-q - 1) b + b - r
  $

  *Единственность*

  $
    a = b q_1 + r_1 = b q_2 + r_2, quad 0 <= r_1, r_2, < |b|
  $

  Предположим, что $r_1 != r_2$, можно считать, что $r_2 > r_1$ 
  $
    r_2 - r_1 = b(q_1 - q_2)\
    r_2 - r_1 < |b| quad b(q_1 - q_2) > |b|
  $

  Получаем противоречие $==> r_1 = r_2 ==> q_1 = q_2$ 
  ]
)

$(ZZ, delta = | |)$ - евклидово кольцо

#block(
  stroke: black,
  inset: 1em,
  width: 100%,
)[
  *Определение*

  Кольцо называется факториальным, если каждый элемент можно разложить на простые
  с точностью до ассоциированности
]

*Алгоритм Евклида*
$
  a = b q_1 + r_1 quad 0 <= r_1 < |b|\
  dots dots dots dots
  b = r_1 q_2 + r_2\
  r_1 = r_2 q_3 + r_3\
  dots dots dots dots dots dots dots dots\
  r_(k-2) = r_(k-1) q_k + r_k \
  r_(k-1) = r_k q_(k+1)
$

Тогда $r_k = gcd(a, b)$ 

$
  (a, b) = r_k = d = a dot u + b dot v, quad u, v in ZZ
$

#block(
  stroke: black,
  inset: 1em,
  width: 100%,
)[
  *Предположение 1*

  $
    (a, b) = 1 <==> exists u, v in ZZ | a dot u + b dot v = 1
  $
]

*Свойства взаимно простых элементов в евклидовом кольце*

1. $(a, b) = 1, thick (a,c) = 1 => (a, b c) = 1$ 
2. $a | b c " и " (a, b) = 1 => a | c$ 
3. $b|a, thick c|a, thick (b,c) = 1 => b c|a$ 

$p$ - простое, $p|a b => p|a or p|b$
