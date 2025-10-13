#import "template-lec.typ": conf, definition, note
#show: doc => conf([Математическая логика. Лекция (13.10.2025)], doc)

#let th = math.op([Th])

#definition[
  Сингулярная формула - все нелогические символы имеют местность 1
]

#definition[
  Антипрефиксная форма сингулярных формул - булева комбинация примарных формул.

  Примарная формула:
  - $exists x thick [~P_1 (x) and ~P_2 (x) and dots and P_n (x)]$
  - $forall x thick [~P_1 (x) or ~P_2 (x) or dots or P_n (x)]$

  $~P(x)$ - это либо $P(x)$, либо $not P(x)$
]

$
  exists x forall y exists z thick [[P(x) -> Q(z)] and [R(z) -> P(y)]] equiv
  exists x forall y exists z thick [[not P(x) or Q(z)]] and [not R(z) or P(y)\
  exists x forall y exists z thick [[not P(x) and not R(z)] or [Q(z) and not R(z)]
    or [not P(x) and P(y)] or [Q(z) and P(y)]] equiv \
  exists x forall y thick [exists z [not P(x) and not R(z)] or exists z [Q(z) and not R(z)]
    or [not P(x) and P(y)] or exists z [Q(z) and P(y)]] equiv \
  exists x forall y thick [[not P(x) and exists z not R(z)] or exists z [Q(z) and not R(z)]
    or [not P(x) and P(y)] or [exists z Q(z) and P(y)]] equiv \
  exists x thick [forall y [[not P(x) and P(y)] or [exists z Q(z) and P(y)]] or
    [not P(x) and exists z not R(z)]] or exists z [Q(z) and not R(z)] equiv \
  exists x thick [[[not P(x) or exists z Q(z)] and forall y P(y)] or
    [not P(x) and exists z not R(z)]] or exists z [Q(z) and not R(z)] equiv \
  [[[exists x not P(x) or exists z Q(z)] and forall y P(y)] or
    [exists x not P(x) and exists z not R(z)]] or exists z [Q(z) and not R(z)] equiv \
  [[[not forall x P(x) or exists z Q(z)] and forall y P(y)] or
    [not forall x P(x) and exists z not R(z)]] or exists z [Q(z) and not R(z)]
$

Антипрефиксная форма:

#definition[
  Атомарно-замкнутая формула: каждая атомарная часть находится в области действия
  квантора по одной из своих переменных

  $
    (exists x | y_1, y_2, dots, y_k) [C and D]\
    (forall x | y_1, y_2, dots, y_k) [C or D]
  $

  $C$ - бескванторная формула, каждая атомарная часть которой содержит переменную
  $x$

  $D$ - атомарно-замкнутая формула

  $y_1, y_2, dots, y_k$ - все свободные переменные формул $C, D$, кроме $x$
]

$
  forall x forall y forall z [R(x,y) and R(y,z) -> R(x,z)] equiv
  forall x forall y forall z [not R(x,y) or not R(y,z) or R(x,z)] equiv\

  forall x forall y [not R(x,y) or [forall z not R(y,z) or R(x,z)]] equiv\

  forall x [(forall y|x) [not R(x,y) or [forall z not R(y,z) or R(x,z)]]
    and [not R(x,x) or forall z[not R(x,z) or R(x,z)]]] equiv\

  forall x (forall y|x) [not R(x,y) or forall z [not R(y,z) or R(x,z)]] equiv \

  forall x (forall y|x) [not R(x,y) or [(forall z|x,y) [not R(y,z) or R(x,z)]
      and [not R(y,x) or R(x,x)] and [not R(y,y) or R(x,y)]]] equiv \
$

= Формализация математических теорий
== Способы определения теории

*Аксиоматический*

$sigma$ - сигнатура\
$Gamma subset "Sent"(sigma)$ - аксиомы\
$th(Gamma, sigma)$ - аксиоматическая теория\
$
  th(Gamma, sigma) = {A in "Sent"(sigma) | Gamma => A} = [Gamma]
$

$A in th(Gamma, sigma)$ - теорема

*Структурный*

$S$ - структура

$th(S)$ - структурная теория - все предложения $A in "Sent"(sigma)$ истинные
в структуре $S$ 

== Примеры
*Теория групп*

$sigma = {compose, e}$ 

$
  forall x forall y forall z thick ((x compose y) compose z = x compose (y compose z))\
  forall x thick (x compose e = x)\
  forall x exists y thick (x compose y = e)
$

*Эквивалентность*
$
  sigma = {R}
$

1. $forall x R(x,x)$
2. $forall x forall y thick [R(x,y) -> R(y,x)]$
3. $forall x forall y forall z [R(x,y) and R(y,z) -> R(x,z)]$

*Теория упорядоченных множеств*

$
  sigma = {<}
$

1. $forall x not (x < x)$
2. $forall x forall y forall z [(x < y) and (y < z) --> (x < z)]$ 

*Теория линейно упорядоченных множеств*
3. $forall x forall y [(x < y) or (y < x) or (x = y)]$ 

*Теория полей*
$
  sigma = {+, *, 0, 1}
$

1. $forall x forall y forall z (x + (y+z)) = ((x+y) + z)$ 
2. $forall x forall y forall z (x * (y*z)) = ((x+y) * z)$ 
3. $forall x (x + 0 = x)$ 
4. $forall x (x * 1 = x)$ 
5. $forall x exists y (x + y = 0)$ 
6. $(forall x | 0) exists y thick (x y = 1)$ 
7. $forall x forall y (x + y = y + x)$ 
8. $forall x forall y (x y = y x)$ 
9. $forall x forall y forall z ((x + y) z = x z + y z)$ 
10. $0 != 1$ 

*Теория упорядоченных полей*

$
  sigma = {+, times, 0, 1, <}
$

$
  forall x forall y forall z thick [(x < y) -> (x + z) < (y + z)]\
  forall x forall y forall z thick [(0 < z) and (x < y) -> (x z) < (y z)]
$

== Расширение теорий

#definition[
  $th(Gamma', sigma')$ называется расширение $th(Gamma, sigma)$, если
  $
    sigma subset.eq sigma', thick Gamma subset.eq Gamma'
  $

  И называется консервативным расширением, если
  $
    [Gamma'] inter "Form"(sigma) = [Gamma]
  $
]

#definition[(Явное определение символа.)

  $f in.not sigma$ - $k$-местный функциональный символ
  $
    forall x_1 forall x_2 dots forall x_k forall y thick [(y = f(x_1, dots, x_k) <-> B]
  $

  $forall x_1 dots forall x_k exists ! y thick B$ - условие

  $P in.not sigma$ - $k$-местный предикатный символ
  $
    forall x_1 dots forall x_k thick [P(x_1, dots, x_k) <-> B]
  $
]

$
  sigma = {compose, e} quad "inv"\
  forall x forall y thick [y = "inv"(x) <-> (x compose y = e)]
$

#note[
  Расширение теории введением нового символа с его явным определением всегда
  консервативно
]

#definition[
  $th(Gamma, sigma)$ эквивалентна $th(Gamma', sigma') <==> [Gamma] = [Gamma']$ 

  слабо-эквивалентны $<==>$ расширения этих теорий с помощью явных определений
  эквивалентны
]

#definition[
  Теорема $th subset.eq "Sent"(sigma)$ полна $<==> forall A in "Sent"(sigma) thick
  A in th$ или $not A in th$ 
]

#note[
  Структурные теории всегда полны
]

#definition[
  $
    A in "Sent"(sigma) quad A in th thick ?
  $

  Если для любого $A$ можно ответить на вопрос поставленный выше (существует алгоритм),
  то теория называется алгоритмически разрешимой
]
