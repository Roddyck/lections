#import "template-lec.typ": conf, conseq, num_eq, qedsymbol, theorem
#show: doc => conf([Теория чисел. Лекция (23.09.2025)], doc)

#theorem([Эйлера], [
  Если $a in NN$, $(a, m) = 1 ==> a^(phi(m)) equiv 1 (m)$

  _Доказательство_
  $
    overline(a) in U(ZZ_m) ==> overline(a)^(phi(m)) = overline(1)\
    a^(phi(m)) equiv 1 (m)
  $
  #qedsymbol
])

Если $p$ - простое, то $phi(p) = p - 1$

#theorem([Ферма], [
  $
    forall a in ZZ, thick p divides.not a ==> a^(p-1) equiv 1 (p)
  $

  _Доказательство_
  $
    p divides.not a <==> (p,a) = 1, thick m = p\
    a^(phi(p)) equiv 1 (p)
  $
  #qedsymbol
])

#conseq([
  $p$ - простое
  $
    forall a in NN thick (forall a in ZZ)\
    a^(p) equiv a (p)
  $

  _Доказательство_

  Если $p divides.not a$, то $a^(p-1) equiv 1 (p) quad | dot a$, $a^(p) equiv a (p)$

  Если $p divides a$
  $
    a equiv 0 (p)\
    a^p equiv 0 (p)\
    ==> a^p - a equiv 0 (p)\
    a^p equiv a (p)
  $
  #qedsymbol
])

$p$ - простое
$
  (p-1)!
$

$ZZ_p$ - поле\
$U(ZZ_p) = {overline(1), overline(2), ..., overline(p-1)}$

Если $p != 2$
$
  exists S quad |S| = (p-1)/2 quad U(ZZ_p) = S union S^(-1)
$

$
  overline(1) dot underbrace(
    (overline(2) dot overline(3) dot ... dot
      overline(p-2)), overline(1)
  ) dot (overline(p-1))\
  (p-1)! equiv (-1) thin (p)
$

$
  U(ZZ_p) backslash {plus.minus overline(1)} = union.big_i T_i, quad T_i = (overline(a_i),
    overline(b_i)) quad overline(a_i) dot overline(b_i) = overline(1)
$

Обратный факт тоже верен

Пусть $p$ - составное
$
  p = a b, quad 1 < a < p, thick 1 < b < p
$

$
  underbrace(1 dot 2 dot ... dot (p-1), a) + 1 equiv 0 thin (p)\
  underbrace(1 dot 2 dot ... dot (p-1), "делится на" a) + 1 = k dot p ==>
  a divides 1
$

Получаем противоречие

#theorem([Вильсона], [
  Число $p in NN$ - простое $<==> (p-1)! equiv -1 thin (p)$
])

= Решение сравнений первой степени
#num_eq(
  $
    m in NN\
    a x equiv b thin (m)\
  $,
)

#num_eq(
  $
    overline(a) dot overline(x) = overline(b) " в " ZZ_m
  $,
)

$
  d = (a, m)\
  d divides a, thick d divides m\
$
#num_eq(
  $
    a x = b + m dot k
  $,
)

$x_0$ - решение

$
  exists k in ZZ | a x_0 = b + m k,\
  d divides a, thick d divides m ==> d divides b ==> b = a x_0 - m k ==>\
  "Если " d divides.not b, " то (1) решений не имеет"
$

$
  overline(a) overline(x) = overline(b)
$

Т.к. $(a, m) = 1$, то $exists overline(c) in ZZ_m | overline(a) overline(c) = overline(1)$
$overline(c) overline(a) dot overline(x) = overline(c) overline(b)$

$overline(x_0) = overline(c) overline(b)$ подставим в (2)
$
  underparen(overline(a) overline(c), overline(1)) dot overline(b) = overline(b)
  quad overline(b) = overline(b)
$

$
  overline(x) = overline(c) overline(b)
$

В этом случае решение существует и единственно
$
  overline(x) = overline(c) overline(b), quad overline(c) overline(a) = overline(1)
$

По теореме Эйлера, т.к. $(a, m) = 1$
$
  overline(a)^(phi(m)) = overline(1) quad overline(a)^(phi(m) - 1) dot overline(a)
  = overline(1) ==> overline(c) = overline(a)^(phi(m) - 1)\
  overline(x) = overline(c) overline(b) = overline(a)^(phi(m) - 1) overline(b)\
  x equiv a^(phi(m) - 1) dot b thin (m)
$

3. $d = (a, m), thick d > 1, thick d divides b$
$
  a = d a_1, quad b = d b_1, quad m = d m_1\
  a_1 x = b_1 + m_1 dot k
$

Любое решение $a x equiv b thin (m)$ является решением $a_1 x equiv b_1 thin (m)$

Обратно, если $x_0$, такое, что $a_1 x_0 = b_1 + m_1 dot k ==> d a_1 x_0 = d b_1
+ d m_1 dot k$
$
  a x_0 = b + m k\
  a x_0 equiv b thin (m)
$

Сравнения $a x equiv b thin (m)$ и $a_1 x equiv b_1 thin (m_1)$ имеют одинаковые
решения в целых числах

Решения сравнения $a_1 x equiv b_1 thin (m)$ образуют один класс вычетов по модулю
$m_1$ (т.к. $(a_1, m_1) = 1$)

Найдем классы вычетов по модулю $m$, на которые разбивается класс вычетов по модулю
$m_1$

$
  a_1 x_0 equiv b_1 thin (m_1)\
$

Рассмотрим:
$
  x_0, x_0 + m_1, x_0 + 2 m_1, ..., x_0 + (d-1) m_1
$

Допустим
$
  x_0 + s m_1 equiv x_0 + t m_1 thin (m), quad 0 <= s != t <= d - 1\
  (s-t) m_1 equiv 0 thin (m)\
  (s-t) m_1 = k dot m, " for some " k in ZZ\
  (s-t) m_1 = k dot d m_1\
  (s-t) = k dot d\
  0 < s-t <= d - 1
$

Противоречие

Тогда
$
  x_0, x_0 + m_1, x_0 + 2 m_1, ..., x_0 + (d-1) m_1
$

не сравнимы по модулю $m$ и являются решением сравнения

$
  y in overline(x_0)\
  y = x_0 + n m_1\
  n = k dot d + r, quad 0 <= r <= d - 1\
  y = x_0 + k dot d m_1 + r m_1\
  y equiv x_0 + r m_1 thin (m)
$

Т.е. $y$ сравнимо с одним из чисел $x_0, x_0 + m_1, ..., x_0 + (d-1) m_1$ по
модулю $m$

Таком образом, если $d = (a, m) > 1, thick d divides b$, то сравнение (1)
имеет $d$ решений $x_0, x_0 + m_1, ..., x_0 + (d-1) m_1$, где $m_1 = m/d$,
а $x_0$ - решение сравнения $a/d x equiv b/d thin (m/d)$

= Системы сравнений первой степени

#theorem([(Китайская теорема об остатках)], [
  Пусть дана система сравнений
  #num_eq(
    $
      cases(
        x equiv b_1 thin (m_1),
        x equiv b_2 thin (m_2),
        ......................,
        x equiv b_n thin (m_n),
      ),
    $,
  ) <sys-comp>
  где $(m_i, m_j) = 1, thick (i != j)$

  Система @sys-comp имеет единственное решение по $mod M$, где $M = m_1 m_2 ... m_n$ 

  Если $x_1, x_2$ - решения @sys-comp, то $x_1 equiv x_2 thin (M)$ 

  Действительно из @sys-comp получаем
  $
    x_1 - x_2 equiv 0 thin (m_1)\
    ........................\
    x_1 - x_2 equiv 0 thin (m_n)\
    ==> x_1 - x_2 " делится на " m_i, thick i = 1, ..., n
  $
  тк $(m_i, m_j) = 1$, то $M = m_1 ... m_n | x_1 - x_2$, т.е. $x_1 - x_2 equiv x_2
  thin (M)$ 
])
