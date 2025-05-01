#import "@preview/rose-pine:0.2.0": apply, rose-pine
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#show: apply()

#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

#let num_eq(content) = math.equation(
  block: true,
  numbering: "(1)",
  content,
)

#let theorem(num, contents) = [
  #block(
    stroke: rose-pine.rose,
    inset: 1em,
    width: 100%,
    fill: gradient.linear(rose-pine.pine, rose-pine.love, angle: 30deg)
  )[
      *Теорема #num.* #contents
  ]
]

#let definition(contents) = [
  #block(
    stroke: rose-pine.rose,
    inset: 1em,
    width: 100%,
    fill: gradient.linear(rose-pine.pine, rose-pine.love, angle: 30deg)
  )[
      *Определение.* #contents
  ]
]

#let qedsymbol = [
  #align(right)[
    #square(size: 0.6em, stroke: 0.5pt + rose-pine.base, fill: rose-pine.text)
  ]
]


#align(center)[= Однопараметрические подгруппы]
#theorem(1)[ 
  #set math.equation(numbering: "(1)")
  $
    &x = (x_1, ..., x_n)\
    &(d x_i) / (d t) = F_i (x_1(t), ..., x_n(t))\
    &x_i (0) = 0\
    &F_i (x_1, ..., x_n) - "гладкие в области" V in.rev 0
  $
  <problem1>
  $exists!$ решение задачи @problem1 $x_i (t), t in (-epsilon, epsilon) $ гладкое
  решение
]

#theorem(2)[
  #set math.equation(numbering: "(1)")
  $F(X,Y)$ - векторное поле гладкое в области $U times V subset RR^n$, т.е.
  $F(X,Y)$ - гладкое отображение $RR^n times RR^m$
  $
    (d x) / (d t) = F(X,Y) wide x_i (0) = 0
  $
  <problem2>
  $y_0 in V quad exists V' quad y_0 in V' subset V : forall y in V'$ задача
  @problem2 имеет гладкое решение $x(t,y), med t in (-epsilon, epsilon) times V'$
]

#definition[
  Пусть $G$ - группа Ли, $theta : (RR, +) -> G$ - гладкий
  гомоморфизм. $theta$ называется однопараметрической подгруппой группы Ли.
]

$
theta (t + s) = theta (t) theta (s)
$
$
theta(0) = e
$

$dot(theta)$ - касательный вектор при $t=0$. Обозначение $theta_e$ 

$
lr((d theta) / (d t)|)_(t=0) 
$

Получаем соответствие однопараметрической подгруппы $theta(t) |-> theta_e in 
T_e(G)$ 

#theorem(4)[
  Указанное соответствие взаимно однозначно

  #diagram(cell-size: 15mm, $
  RR edge(theta, ->) edge("d", L_s, ->) & G edge("d", L_(theta(s)),  ->, label-side: #left) \
  RR edge(theta, ->) & G
  $)

  *Доказательство:*

  $L_(theta(s))$ $theta(t) = theta(s) dot theta(t)$  

  $
    t -> s + t ->^theta theta(s + t)
  $

  $
    d L_theta(s) (d theta) / (d t) = d(theta compose L_s) lr(d/(d t)|)_t = 
    d theta (lr(d / (d t)|)_(t+s)) = lr((d theta) / (d t)|)_(t+s)
  $

  $
    lr((d theta) / (d t)|)_(t+s) = (d L_theta(s))_theta(t) lr((d theta) / (d t)|)_t  
  $

  $
    lr((d theta) / (d t)|)_s = d L_theta(s) (theta_e)
  $
  
  #num_eq($
  (d theta(t)) / (d t) = d L_theta(t)(theta_e)\
  theta(0) = 0
  $) <equation3>
  @equation3 - дифференциальное уравнение однопараметрической группы

  Допустим $theta_1(t), thick theta_2(t)$ имеют одинаковые касательные вектора
  при $t=0$, т.е. $theta_(1e) = theta_(2e)$. Тогда они решение одного и того же
  уравнения.

  $v in T_e(G)$ $exists ? thick theta(t) thick | theta_e = v$ 

  #num_eq(
    $
      (d theta(t)) / (d t) = d L_theta(t) dot v\
      theta(0) = e
    $
  ) <equation4>
  $
    exists epsilon > 0 quad exists! thick theta(t), quad t in (-epsilon, epsilon)
  $
  
  Рассмотрим $phi(t) = theta(s) dot theta(t), quad psi(t) = theta(s+t) quad
  |s| < epsilon / 2, thick |t| < epsilon / 2$ 

  $
    d L_(theta(s)) dot (d theta) / (d t) = d L_theta(s) dot v = d L_(theta(s) theta(t))
    dot v
  $
  
  $
    (d phi(t)) / (d t) = L_phi(t) dot v
  $
  
  $
    (d psi(t)) / (d t) = (d theta(s+t)) / (d t) = (d theta(s+t)) / (d(s+t)) =
    (d theta(u)) / (d u) =^((4)) d L_theta(u) v = d L_psi(t) dot v
  $

  $
    (d psi) / (d t) = d L_psi(t) v
  $
  $phi(t) = psi(t)$ для $|t| < epsilon / 2$ 

  $theta(s) theta(t) = theta(s+t)$ для $|t| < epsilon / 2$ и $|s| < epsilon/2$\
  $t in RR quad N in NN $ \
  $|t/N| < epsilon/2$ 

  $
    lambda(t) = ( theta(t/N))^N
  $
  надо доказать, что если $|t/N| < epsilon/2$, то 
  $
    theta(t/N)^N = theta(t/M)^M
  $
  $
    underbrace(t/(N M) + ... + t/(N M), M) = t/N
  $
  $
    lr(|t/(N M)|) < epsilon / (2M) 
  $
  $
    theta(t/(N M))^M = theta(t/N) ==> theta(t/(M N))^(M N) = theta(t/N)^n ==>
    theta(t/(M N))^(M N) = theta(t/M)^M
  $
  #qedsymbol
]
