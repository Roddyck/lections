#import "template-lec.typ": conf
#show: doc => conf([Математическая логика. Лекция (29.09.2025)], doc)

= Логический вывод

$
  Gamma ==> A\
  forall I, thick forall B in Gamma, thick B^I equiv 1 --> A^I equiv 1
$

$
  A, thick [A --> B]
$

$
  [A and B] / A \ B\
  (not [A and B]) / (not A | not B)\
  [A or B] / (A | B)\
  (not [A or B]) / (not A) \ not B\
  (A --> B) / (not A | B)\
  (not [A --> B]) / A \ not B\
  (not not A) / A\
  ((not exists x | alpha)A) / ((forall x | alpha) not A)\
  (not (forall x | alpha) A) / ((exists x | alpha) not A)\
$

$
  ((forall x | alpha) A(x)) / A(c) quad c - "const" thick c in.not alpha\
  (forall x | alpha, c) A(x)\
  ((exists x | alpha) A(x)) / A(c) quad c - "const" thick c in.not alpha\
$

$
  Gamma ==> A thick ?
$

$A$ - предложение
$
  Gamma arrow.double.not A <==> exists I thick forall B in Gamma thick B^I
  equiv 1 thick A^i equiv 0
$

$I$ - контрмодель

$
  cases(
    forall x thin [P(x) --> not M(x)]\
    exists y thin [S(y) and M(y)],
    reverse: #true
  ) thick Gamma\
  exists z thin [S(z) and not P(z)] = A\
  forall z thin not [S(z) and not P(z)]\
  S(a) and M(a)\
  S(a)\
  M(a)
$

$
  not[S(a) and not P(a)]\
  not S(a) " или " P(a)
$

$
  P(a) --> not M(a)\
  not P(a) " или " not M(a)
$

$
  A in "Sent"(sigma), thick Gamma subset.eq "Sent"(sigma), thick Gamma ==> A thick ?
$

$
  D = {a_1, a_2, ...} " множество констант", sigma inter D != emptyset
$

Ветвь - путь от корня до листа\
Блокированная ветвь - содержит $B, not B$

*Построение поискового дерева* $T_1, T_2, T_3, ...$ 

- $T_1$ состоит из корня $not A$, неиспользованный узел

- $T_i$, пусть существует неиспользованный узел $v in T_i$ с формулой,
соответствующей одной из посылок правил вывода

$T_(i+1)$: Если правило неразветвлено, то к каждому листу последовательно
достроить узлы с формулами-заключениями.\
Если разветвляющая, то к каждому листу достроить узлы с формулами-заключениями
(разветвленная картинка)\
Если правило $(exists)$ $c = a_i, thick i $ - min номер, такой, что $a_i$ не используется
в данной ветви\
Если правило $(forall)$ $c = a_i, thick i$ - min номер такой, что $a_i in.not alpha$ 

- Если $exists B in Gamma$, не приписанная ни к одному узлу ветви $T_i$, то можно
достроить к листу узел с $B$ 

$T_1, T_2, ..., T_n$ - поисковая последовательность\
$forall T_i$ - поисковое дерево, $union.big_(i=1)^(oo) T_i$ - тоже поисковое дерево
