#import "template-lec.typ": conf, definition, theorem
#show: doc => conf([Методы оптимизации. Семинар (10.09.2025)], doc)

= Граничные точки выпуклых множеств

$
  X subset RR^n quad x_0 in RR^n " называется граничной точкой " X ", если "\
  forall epsilon > 0 quad U_(epsilon) (x_0) inter X != 0, thick
  U_(epsilon) (x_0) inter (RR^n backslash X) != 0
$

$
  delta macron(X) subset delta X\
  forall macron(x) in delta macron(X) ==> forall epsilon: U_epsilon inter
  macron(X) != 0, thick U_epsilon inter (RR^n backslash macron(X)) != 0\
  exists {x_k} subset macron(X), thick {y_k} subset RR^n backslash macron(X):
  thick x_k --> macron(x)
$

т.к. $X subset macron(X) ==> RR^n backslash macron(X) subset RR^n backslash X quad y_k --> x$\
т.к. ${x_k} subset macron(X) ==> {x_k} subset X ==> {y_k} subset RR^n backslash X
quad forall epsilon > 0 exists k_epsilon in NN : |x_k - macron(x)| < epsilon/2$ \

= Проекция точки на множество

#definition[
  Пусть $X subset RR^n, thick X != 0, quad z in RR^n$

  $macron(z) in X$ называется проекцией точки $z$ на $X$, если
  $
    rho(z, macron(z)) = min_(x in X) rho(x, z)\
    |z - macron(z)| = min_(x in X) |x - z|
  $

  $
    macron(z) = P_X (z)
  $
]

#theorem(1, [
  Пусть $X subset RR^n$ - замкнутое, непустое множество.

  Тогда $forall z in RR^n quad exists P_X (z)$
])

#theorem(2, [
  (О единственности проекции)

  Пусть $X in RR^n$ - выпуклое. Тогда $forall z in RR^n$
  Пусть $X subset RR^n$ - замкнутое, непустое множество.

  Тогда $forall z in RR^n$ может существовать
  не более одной проекции точки $z$
])

#theorem(3, [
  (о существовании и единственности проекции)

  Пусть $X subset RR^n$ - замкнутое непустое множество.

  Тогда $forall z in RR^n quad exists ! P_X (z)$
])

#theorem(4, [
  Пусть $X subset RR^n$ - выпуклое и непустое, $z in RR^n, thick macron(z) in X$

  Тогда $macron(z) = P_X (z) <==> (z - macron(z), x - macron(z)) <= 0 quad forall
  x in X$
])

*Упражнение 8*

$0 != X subset RR^n$ - выпуклое, замкнутое множество

1) $forall x in X, thick z in RR^n: rho(x, P_X (z)) <= rho(x, z)$ \
2) $forall y, z in RR^n: rho(P_X (y), P_X (z)) <= rho(y, z)$

Из (2) следует (1), достаточно доказать (2)

Свойство нерастяжения проекции

Рассмотрим
$ |z - y|^2 = |macron(y) - y + macron(z) - macron(y) + z - macron(z)|^2 = |a + b|^2\
macron(z) - macron(y) = a quad (macron(y) - y) + (z - macron(z)) = b $....

Пусть $X = overline(U_r (O_n)), quad z in.not X$

$
  macron(z) = r / (|z|) dot z ?
$

$
  (z - macron(z), x - macron(z)) = (z - r / (|z|) dot z, x - r / (|z|) dot z)
$

$
  X = overline(U_r (x_0)), quad z in.not X\
  |z - x_0| > r quad z - x_0 = xi
$

#for i in range(100) [хуй]

$
  X = Gamma_(c, alpha), quad z in.not X
$

$
  z - macron(z) = t c\
  t = ((c, z) - x) / (|c|^2) quad macron(z) = z - t c in Gamma_(c, alpha) tilde (c, macron(z)) = alpha\
  (c, z) - t |c|^2 = alpha
$

$
  macron(z) = (z - (c, z) - alpha) / (|c|^2) dot c
$

Проверить по критерию

= Комбинация точек и оболочка множеств
#definition[
  Пусть $x_1, dots, x_m in RR^n, quad alpha_1, dots, alpha_m in RR$ \
  $sum_(i = 1)^(m) alpha_i x_i$ - линейная комбинация\

  Линейная комбинация называется неотрицательной, если $alpha_i >= 0$

  Линейная комбинация называется выпуклой, если она не отрицательная и
  $sum_(i=1)^(m) alpha_i = 1$
]

$
  forall x in [x_0, x_1] => x = lambda x_1 + (1-lambda) x_0
$

#theorem(1, [
  1. Выпуклое $X subset in RR^n$ содержит все возможные выпуклые комбинации своих точек
  2. Выпуклый конус $K subset RR^n$ содержит все возможные неотрицательные комбинации своих точек
])

#definition[
  $X subset RR^n$ 

  Пересечение всех выпуклых множеств из $RR^n$, содержащих $X$  называется выпуклой оболочкой.

  Пересечение всех выпуклых конусов из $RR^n$, содержащих $X$  называется конической оболочкой.
]

*Упражнение 10.*

$"cone" X$ - наименьший по вложению выпуклый конус, содержащий $X$ 

Достаточно доказать, что пересечение любого набора конусов является конусом

Пусть $K = inter.big_(alpha in J) K_alpha$ 
$
  forall x in K ==> x in K_(alpha) quad forall alpha in J ==>
  forall lambda >= 0 : lambda x in K_(alpha), thick forall alpha in J\
  lambda x in inter.big_(alpha in J) K_alpha = K
$

Выпуклая оболочка $X$ совпадает со множество всевозможных выпуклых комбинаций $X$ 
