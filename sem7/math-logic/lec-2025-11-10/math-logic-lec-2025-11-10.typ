#import "template-lec.typ": conf, definition, hyi
#show: doc => conf([Мат. логика. Лекция (10.11.2025)], doc)

#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

= Тьюрингова вычислительная модель

1. *Память*\
  Магнитная лента:\
  Информация -- слово в алфавите $A union {hash} = tilde(A)$ \
  $A = {a_1, a_2, dots, a_n}$ - алфавит. $hash$ -- пустая ячейка\
  $underparen(hash x_(11) x_(22) dots x_(1 k_1), "s слово") hash underparen(
    x_(21)
    dots x_(2 k_2), "s-1-е слово"
  ) hash dots hash
  underparen(x_(s 1) dots x_(s k_s), "1-е слово")$

2. *Обработчик/преобразователь*\
  Универсальное устройство (УУ) (головка, курсор)\
  Указывает на одну ячейку ленты и может совершить действия:
  1. Записать символ $a_i in A$
  2. Стереть символ $hash$
  3. Сдвинуть вправо/влево на 1 ячейку $r slash l$
  4. Ничего не делать $s$

3. *Программа*\
  - $<Q, A, q_0, phi, psi, (F)>$ \
  - $Q$ -- множество состояний\
  - $q_0 in Q$ -- старт\
  - $F subset.eq Q$ -- конец\
  - $phi : Q times tilde(A) --> Q$ -- функция перехода\
  - $psi : Q --> tilde(A) union {r, l, s}$ -- функция действия

*Шаг работы программы*\
1. $psi(q_(i-1))$
2. считать символ $q_i$
3. $phi(q_(i-1), q_i) = q_i$

$
  & A = {0, 1} \
  & "In" : hash x_1 x_2 dots x_m hash \
  & "Out" : hash y_1 dots y_m hash \
  & [y]_2 = [x]_2 + 1
$

#align(center, {
  diagram(
    node-stroke: .1em,
    spacing: 4em,
    edge((-1, 0), "r", "->"),
    node((0, 0), `l`, radius: 1em),
    node((0, 1), `0`, radius: 1em),
    edge((0, 1), (0, 0), "->", bend: -40deg),
    edge((0, 0), (0, 1), "->", `1`, bend: -40deg),
    node((1, 0), `1`, radius: 1em),
    edge((0, 0), (1, 0), "->", `0, #`),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), `r`, radius: 1em),
    edge((2, 0), (2, 0), "->", bend: 130deg),
    edge("d", `#`, "->", label-side: left),
  )
})

$
  R : 
  #align(center, {diagram(
    node-stroke: .1em,
    spacing: 4em,
    edge((1, 0), (2, 0), "->"),
    node((2, 0), `r`, radius: 1em),
    edge((2, 0), (2, 0), "->", bend: 130deg),
    edge("r", `#`, "->", label-side: left),
  )})
$

$
  L : 
  #align(center, {diagram(
    node-stroke: .1em,
    spacing: 4em,
    edge((1, 0), (2, 0), "->"),
    node((2, 0), `l`, radius: 1em),
    edge((2, 0), (2, 0), "->", bend: 130deg),
    edge("r", `#`, "->", label-side: left),
  )})
$

$
  X^k : 
  #align(center, {diagram(
    node-stroke: .1em,
    spacing: 4em,
    edge((0, 0), (2, 0), "->"),
    node((1, 0), `X`, radius: 1em),
    edge("r", "->", label-side: left),
    node((2, 0), `...`, stroke: 0em),
    edge("r", "->", label-side: left),
    node((3, 0), `X`, radius: 1em),
    edge("r", "->", label-side: left),
  )})
$

$
  K_n :\
  "In" : hash X hash w_n hash w_(n-1) hash dots hash w_1 hash\
  "Out" : hash X hash w_n hash dots hash w_1 hash w_n hash\
  w_i in A^*
$
