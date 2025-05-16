#import "template-lec.typ": conf, num_eq
#show: doc => conf([Группы и Алгебры Ли. Лекция (16.05.2025)], doc)

$underbrace(theta(t), in "мн-во однопар. подгр") |-> v = (d theta) / (d t)|_(t=0)
in T_e (G)$ - взаимно однозначное соответствие

$theta_v(t)$ - однопараметрическая подгруппа соответствующая вектору $v in T_e (G)$ 
$
  exp: T_e(G) --> G, quad exp(v) = theta_v (1)\
$
$
  A in g l(n, RR) = T_e (G L(n, RR))\
  exp A = e^(A t)|_(t=1) = e^(A) = E + A + A^2/2! + dots + A^m/m! + dots\
  e^(A t) = theta_A (t)
$
$
  (d L_g)_e (A) = g dot A\
  (d theta(t)) / (d t) = d L_theta(t) A stretch(=)^(G = G L(n, RR)) theta(t) dot A\
  theta(0) = e\
  e^(A t) = 1 + A t + A^2/2! t^2 + dots + A^m/m! t^m + dots\
  (d (e^(A t))) / (d t) = A + A^2 dot t + dots + A^m / (m-1)! t^(m-1) + dots
  = (e^(A t)) A
$

== Свойства $exp$:
1. $exp: T_e (G) -> G$ - гладкое отображение
2. $(d exp)_0 = id: underbrace(T_0(T_e (G)), = T_e (G)) -> T_e (G)$ 
3. $exp$ - диффеоморфизм в окрестности $0 in T_e (G)$ и окрестности $e in G$ 

$
  theta_v (t) = d L_theta(t) dot v\
  theta_v (0) = e
$

$
  lr((d theta_v (t)) / (d t)|)_(t=0) = v\
  Gamma(t) = v dot t in T_e (G)\
  exp v = exp(lr((d theta_v (t)) / (d t)|)_(t=0)) quad exp(Gamma(t)) = exp(t dot v)
  = theta_(t v) (1)\
  theta_v (s t) = tilde(theta)(t)\
  s " - фиксированный"
$
$
  lr((d tilde(theta))/(d t)|)_(t=0) = lr((d theta_v (s t)) / (d t)|)_(t=0) =
  s dot lr((d theta_v (s t)) / (d (s t))|)_(t=0) = s dot lr((d theta_v (u))
  / (d u)|)_(u = 0) = s dot v
$
$
  tilde(theta)(t) = theta_(s v) (t) = theta_v (s t)\
  exp(t dot v) = theta_(t v) (1) = theta_v (t)
$
$
  phi: M --> N\
  gamma(t_0) = m_0\
  d phi_(m_0) lr((d gamma(t)) / (d t)|)_(t = t_0) = lr((d phi(gamma(t))) /
  (d t)|)_(t=t_0)\
  (d exp)_0 v = lr((d theta_v (t))/(d t)|)_(t = 0) = v
$
