#import "template-lec.typ": conf, conseq, definition, note, num_eq, qedsymbol, statement, theorem
#show: doc => conf([Теория чисел. Лекция (16.09.2025)], doc)

#note[
  $
    a = b dot c\
    b <= c\
    a >= b^2\
    b <= sqrt(a)
  $
]

== Решето Эратосфена
$
  2, 3, 4, 5, 6, 7, 8, 9, 10, ..., N
$

Выбрасываем каждое второе число после 2, выбрасываем каждое третье после 3,
каждое пятое после 5 ...

Так вычеркиваем до $sqrt(N)$. Все оставшиеся числа будут простыми

#statement[
  Простых чисел бесконечно много

  _Доказательство_\
  ${p_1, ..., p_n}$ - все простые числа
  $
    a = p_1 dots p_n + 1 quad a in.not P and p_i divides.not a, " т.к. " a in P
  $
  Получаем противоречие #qedsymbol
]

#definition[
  $a, b in ZZ$, $m in NN$
  $
    a equiv b thick (mod m)\
    a equiv b thick (m) <==> m divides a - b
  $
]

$
  b = m dot q + r, quad 0 <= r < m\
  a = b + m dot k\
  a = (m dot q + r) + m dot k = m (q + k) + r, quad 0 <= r < m
$
т.о $r$ - остаток при делении $a$ на $m$

$
  a = m q_1 + r\
  b = m q + r\
  a - b = m (q_1 - q)
$

отношения сравнимости по модулю является отношением эквивалентности

$macron(r)$ - класс вычетов, содержащий $r$
$
  ZZ_m = {macron(0), macron(1), dots, overline(m-1)}
$

$
  overline(a) + overline(b) = overline(a+b)\
  overline(a) dot overline(b) = overline(a b)
$

$
  m ZZ = {m dot k, thick k in ZZ} - " подгруппа в " ZZ
$

$
  ZZ slash m ZZ - " фактор группа"\
  a + m ZZ = overline(a)
$

$
  a_1 = a + m dot s quad b_1 = b + m dot t, quad s, t in ZZ\
  a_1 b_1 = (a + m s) (b + m t) = a b + m a t + m b s + m^2 s t ==>\
  overline(a_1 b_1) = overline(a dot b)
$

== Некоторые свойства сравнения

- $a equiv b (m), thick c in NN ==> c a equiv c b (c m)$
- $c a equiv c b (m) and (c, m) = 1 ==> a equiv b (m)$
$
  m divides c a - c b, quad m divides c(a - b)\
  m divides c (a-b), thick (m, c) = 1 ==> m divides a - b <==> a equiv b (m)
$

== Обратимые элементы кольца $ZZ_m$

через $U(ZZ_m)$ обозначается группа обратимых элементов кольца $ZZ_m$
#statement[
  $overline(a) in ZZ_m$ - обратимый элемент $<==> (a, m) = 1$

  _Доказательство_\
  1. $<==$
  $
    (a, m) = 1 ==> exists u, v in ZZ\
    a dot u + m dot v = 1\
    overline(1) = overline(a u + m v) = overline(a dot u) + overline(m dot v)
    = overline(a) dot overline(u) + overline(m) dot overline(v) = overline(a)
    dot overline(u)\
    overline(u) = overline(a)^(-1)
  $

  2. $==>$
  Пусть $overline(a)$ - обратим
  $
    exists overline(b) in ZZ_m | overline(a) dot overline(b) = overline(1) <==>
    overline(a b) - overline(1) = overline(0)\
    a dot b - 1 = m dot v\
    a dot b + m(-v) = 1 ==> (a, m) = 1
  $
]

#conseq[
  Пусть $overline(k) in ZZ_m = {overline(0), overline(1), ..., overline(m) - 1}, 1 <= k <= m-1$.

  $overline(k)$ - обратим в $ZZ_m <==> (k, m)$. Таким образом количество обратимых
  элементов в $ZZ$ равно $phi(m)$ (Функция Эйлера)
]

#conseq[
  $
    |U(ZZ_m)| = phi(m)
  $
]

#conseq[
  (Теорема Эйлера)

  Пусть $a in ZZ$, $(a, m) = 1$, тогда $a^(phi(m)) equiv 1 (m)$

  $
    overline(a) in U(ZZ_m), quad |U(ZZ_m)| = phi(m)\
    overline(a)^(phi(m)) = overline(1)\
    overline(a^(phi(m))) = overline(1) <==> a^(phi(m)) equiv 1 (m)
  $
]

#conseq[
  Пусть $p$ - простое число.

  $a in ZZ, thick p divides.not a ==> a^(p-1) equiv 1 (p)$ 
]
