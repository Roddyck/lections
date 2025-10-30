#import "template-lec.typ": conf, definition, num_eq, theorem
#show: doc => conf([Теория чисел. Лекция (28.10.2025)], doc)
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
$
  a x + b y = c\
  (a, b) = 1
$


#num_eq(
  $
    a x equiv c (b)
  $,
) <eq-1>

$x_0$ - решение @eq-1

$
  y_0 = (c - a x_0) / b
$

$(x_0, y_0)$ - решение исходного уравнения

= Квадратичные вычеты

$p$ - простое число\
$ZZ_p$ - поле
#num_eq(
  $
    x^2 equiv a (p)
  $,
) <eq-2>

#definition[
  Если @eq-2 имеет решение, то $a$ называется квадратичным вычетом по $mod p$.
  Если @eq-2 не имеет решение, то $a$ называется квадратичным невычетом
]

В $ZZ_p$ имеем уравнение:
#num_eq(
  $
    overline(x)^2 = overline(a)
  $,
) <eq-3>
которое эквивалентно сравнению @eq-2

Рассмотрим гомоморфизм
$
  mu: ZZ_p^* --> ZZ_p^*, quad p != 2\
  mu(x) = x^2
$

#align(center)[#diagram(
    cell-size: 15mm,
    $
      G edge(phi, ->) edge("d", p, ->) & H \
       G slash K edge("ur", phi^*, ->)
    $,
  )
]
$K = ker phi$\
$phi$ - сюрь. $==> phi^*$ - изо
#align(center)[#diagram(
    cell-size: 15mm,
    $
      G edge(phi, ->) edge("d", p, ->) & im(phi) \
       G slash K edge("ur", phi^*, ->)
    $,
  )
]

$
  G slash K tilde.equiv^(-->^(phi^*)) im(phi)
$

$
  ker mu = {x in ZZ_p^* | x^2 = 1} = {plus.minus 1}
$

$
  mu : ZZ_p^* --> "Im" mu
$

Число квадратов в $ZZ_p^* =$ число квадратичных вычетов $= (p-1) / 2$

Пусть $x$ - квадратичный вычет т.ч. $x = y^2, y in ZZ_p^*$

$
  nu (x) = x^((p-1) / 2) = (y^2)^((p-1) / 2) = y^(p-1) = 1
$

$
  f(t) = t^((p-1) / 2) - 1 in ZZ_p [t]
$

Число корней $f(t)$ в $ZZ_p <= (p-1) / 2$ \
квадратичный вычет является корнем, кол-во кв. вычетов равно $(p-1) / 2$

Вывод: корнями $f(t)$ являются квадратичные вычеты и только они

Если $x$ - квадратичный невычет, то
$
  1 != x^((p-1) / 2),
$
но
$
  x^((p-1) / 2) = x^(p-1) = 1 ==> x^((p-1) / 2) = -1
$

#theorem(1, [
  Пусть $p$ - простое, $p != 2$

  1. Число квадратичных вычетов в $ZZ_p^*$ равно числу квадратичных невычетов
    и равно $(p-1) / 2$
  2. $a in ZZ_p^*$ - квадратичный вычет $<==> a^((p-1) / 2) = 1$ в $ZZ_p$\
    $a in ZZ_p^*$ - квадратичный невычет $<==> a^((p-1) / 2) = -1$ в $ZZ_p$
])

== Символ Лежандра

$p != 2$ - простое\
$a in ZZ, quad (p, a) = 1$

#definition[
  *Символ Лежандра*
  $
    (a/p) =
    cases(
      1 comma & quad "если" a "квадратичный вычет",
      -1 comma & quad "если" a "квадратичный невычет",
    )
  $
]

Иногда определяют $(a/p)$ и для чисел $a$, которые делятся на $p$, положив $(a/p) = 0$

Мы это доопределение использовать не будем

Очевидно, что:
$
  (a/p) = overline(a)^((p-1) / 2), quad a in ZZ_p^*
$

Будем обозначать символ Лежандра
$
  (a/p) = (overline(a) / p)
$

== Свойства символа Лежандра
0.
$
  (a/p) = overline(a)^((p-1)/2)
$

1.
$
  ((a b) / p) = (a/p) (b/p)
$

$
  ((a b) / p) = (overline(a b) / p) = ((overline(a) overline(b)) / p) =
  (overline(a) overline(b))^((p-1)/2) = overline(a)^((p-1)/2) overline(b)^((p-1)/2)
  = (overline(a) / p) (overline(b) / p) = (a/p) (b/p)
$

2.
$
  (-1 / p) = (-1)^((p-1)/2) =
  cases(
    1 comma & quad p equiv 1 (4),
    -1 comma & quad p equiv 3 (4),
  )
$

3.
$
  (2/p) thick ?
$

== Лемма Гаусса

$p != 2$ - простое

Пусть
$
  ZZ_p^* = S union (-S), quad S inter (-S) = nothing
$

Например, $S = {1, 2, dots, (p-1)/2}$

Пусть $a in ZZ_p^*, thick s in S$

$
  s dot a = epsilon_s (a) dot a_s, quad epsilon_s (a) = plus.minus 1, thick a_s in S
$

$
  a, b in ZZ_p^*, quad a_s = b_s, thick s a = plus.minus s b ==>
  a = plus.minus b ==> "если" a, b in S, "то" a = b
$

Если рассматривать отображение $S --> S, thick a |-> a_s, thick s$ - фиксированный
элемент из $S$, то такое отображение взаимно однозначно

Рассмотрим:
$
  product_(s in S) a s = a^((p-1) / 2) product_(s in S) s =
  product_(s in S) epsilon_s (a) a_s = product_(s in S) epsilon_s (a)
  product_(s in S) a_s
$

$
  a^((p-1) / 2) product_(s in S) s = product_(s in S) epsilon_s (a) product_(s in S) s
  ==>
$

#block(
  stroke: black,
  inset: 1em,
  width: 100%,
)[
  $
    a^((p-1)/2) = product_(s in S) epsilon_s (a) "- лемма Гаусса"
  $
]
