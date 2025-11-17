#import "template-lec.typ": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

#show: doc => conf([Мат. логика. Лекция (17.11.2025)], doc)

$
  "In": hash underbrace(1 dots 1, m) hash underbrace(1 dots 1, n) hash\
  "Out": hash underbrace(1 dots 1, m) hash underbrace(1 dots 1, n) hash
  underbrace(1 dots 1, m + n) hash
$

#diagram(
  node-stroke: .1em,
  spacing: 4em,
  edge((-1, 0), "r", "->"),
  node((0, 0), $K_2$, radius: 1em),
  edge((0, 0), "r", "->"),
  node((1, 0), $L$, radius: 1em),
  node((2, 0), $K_1$, radius: 1em),
  edge((1, 0), "r", "->"),
  edge((2, 0), "r", "->"),
  edge((-1, 1), "r", "->"),
  node((0, 1), $L^2$, radius: 1em),
  edge((0, 1), "r", "->"),
  node((1, 1), $r$, radius: 1em),
  edge((1, 1), "r", "->", $hash$),
  edge((1, 1), "d", "->"),
  node((1, 1), $r$, radius: 1em),
  node((1, 2), $hash$, radius: 1em),
  edge((1, 2), "d", "->"),
  node((1, 3), $R^3$, radius: 1em),
  node((0, 3), $R^3$, radius: 1em),
  edge((1, 3), "l", "->"),
  node((-1, 3), $L^3$, radius: 1em),
  edge((0, 3), "l", "->"),
  node((-1, 3), $L^3$, radius: 1em),
  node((0, 2), $1$, radius: 1em),
  edge((-1, 3), (0,2),  "->"),
  edge((0,2), (1,1),  "->"),
  node((2, 1), $r$, radius: 1em),
  node((3, 1), $R$, radius: 1em),
  edge((2, 1), "r", "->"),
  edge((3, 1), "r", "->"),
)
