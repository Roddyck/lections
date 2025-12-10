#import "template-lec.typ": *
#show: doc => conf([Теория чисел. Лекция (18.11.2025)], doc)

#let ind = math.op("ind")

=== Продолжение доказательства теоремы из предыдущей лекции
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


  $
    (q/p) = product_(s in S) (-4)^((q-1)/2) product_(1 <= j <= (q-1)/2)
    (sin^2 (2 pi s) / p - sin^2 (2 pi j) / q) =\
    (-4)^((q-1)/2 (p-1)/2) product_(1 <= s <= (p-1)/2)
    product_(1 <= j <= (q-1)/2) (sin^2 (2 pi s) / p - sin^2 (2 pi j) / q) = \
    (-4)^((q-1)/2 (p-1)/2) product_(1 <= s <= (p-1)/2)
    product_(1 <= t <= (q-1)/2) (sin^2 (2 pi s) / p - sin^2 (2 pi t) / q) = \
  $


  $
    (p/q) = (-4)^((q-1)/2 (p-1)/2) product_(1 <= t <= (p-1)/2)
    product_(1 <= s <= (q-1)/2) (sin^2 (2 pi t) / p - sin^2 (2 pi s) / q) = \
    (-4)^((q-1)/2 (p-1)/2) (-1)^((q-1)/2 (p-1)/2) product_(1 <= t <= (p-1)/2)
    product_(1 <= s <= (q-1)/2) (sin^2 (2 pi s) / p - sin^2 (2 pi t) / q) = \
    = (-1)^((q-1)/2 (p-1)/2) (q/p)
  $

  #qedsymbol
]

= Первообразные корни и индексы

$
  ZZ_n quad t in U(ZZ_n)\
  |U(ZZ_n)| = phi(n)
$

Порядок элемента $t in U(ZZ_n)$ - это порядок элемента в группе $U(ZZ_n)$
(наименьшие $k in NN | t^k = 1 (n)$) \
$<t> = <1, t, dots, t^(k-1)> subset U(ZZ_n)$ \
Группа $U(ZZ_n)$ циклическая $<==> exists t in U(ZZ_n) : |<t>| = |U(ZZ_n)|
= phi(n)$

#definition[
  Такой элемент $t$ называется первообразным (или примитивным) корнем
  по $mod n$ 
]

#definition[
Пусть $t$ - перовобразный корень по $mod n$ 
$a in U(ZZ_n)$. Тогда $exists med 0 <= k < phi(n)$ такое, что
$
  t^k = a thick ("в" med ZZ_n)
$

$k$ называется индексом элемента $a$ по основанию $t$.

Обозначается $ind_t a$ 
]


$
  t^(k_1) = t^(k_2) (n) <==> k_1 - k_2 equiv 0 (phi(n))\
$

*Свойства*

$
  &ind_t (a b) = ind_t (a) + ind_t (b) med (mod phi(n))\
  &ind_t (a^m) = m ind_t a med (mod phi(n))\
$

#theorem[][
  Группа $U(ZZ_n)$ -- циклическая $<==> n = 2, 4, dots, p^m, 2 p^m$, где
  $p$ -- нечетное простое

  $U(ZZ_n), n = 2^m, m >= 3$ является произведением циклической
  группы порядка 2 и циклической группы порядка $2^(m-2)$ в $ZZ_n$ 
]

#theorem[о конечных подгруппах мильтипликативное группы поля][
  Пусть $K$ -- поле, $G subset K^*$ - конечная подгруппа. Тогда
  $G$ -- циклическая группа

  _Доказательство_

  Пусть $|G| = n, m$ -- наименьшие натуральное число такое, что $g^m = 1 quad
  forall g in G$. $m$ называется показателем группы

  $m = n <==> G$ -- циклическая

  $
    G tilde.equiv ZZ_(n_1) plus.circle ZZ_(n_2) plus.circle dots plus.circle
    ZZ_(n_k)\
    n_i | n_(i+1)\
    |G| = n_1 dots n_k\
    m = n_k
  $
  $
    ==> G = <t> <==> G = ZZ_(n_1)
  $

  т.к. $|G| = n.$ $g^n = 1 quad forall g in G$\
  $g^m = 1$ 

  Очевидно $m <= n$. Если $m < n$, то все элементы группы являются корнями
  многочлена $f(x) = x^m - 1 ==>$ количество элементов в $G <= m$ 

  $f'(x) = m x^(m-1)$ 
]
