#import "template-lec.typ": conf, definition
#show: doc => conf([Физика. Семинар (11.10.2025)], doc)

$
  arrow(R)_c = (sum arrow(r)_i m_i) / (sum m_i)
$

#definition[
  *Поляризованность*
  $
    arrow(P) = lim_(laplace V -> 0)(sum_(laplace V) arrow(p)_i) / (laplace V)
  $

  $
    <arrow(p)> = (sum p_i) / (laplace N)\
    arrow(P) = <arrow(p)> underbrace((laplace N) / (laplace V), = n)
  $

  $
    arrow(P) = <arrow(p)> n
  $
]

$
  integral.cont arrow(E) d arrow(s) = 1 / epsilon_0 (q + q')
$

$
  sum q' = - arrow(P) dot d arrow(s)
$

$
  integral.cont arrow(P) dot d arrow(s) = - q'
$

$
  integral.cont (epsilon_0 arrow(E) + arrow(P)) d arrow(s) = q
$

*Электрическая индукция (смещение)*
$
  arrow(D) = epsilon_0 arrow(E) + arrow(P)
$

$
  integral.cont arrow(D) d arrow(s) = q
$

$
  "div" arrow(D) = rho
$

*Слабые поля*
$
  arrow(P) = epsilon_0 kappa.alt arrow(E) quad kappa.alt >= 0\
  arrow(D) = epsilon_0 (1 + kappa) arrow(E) quad epsilon = 1 + kappa.alt >= 1
$

*Задача*
(тут рисунок)

две концентрические сферы, радуисы $R_1, R_2$

$
  C = q / (phi_1 - phi_2) quad phi_1 - phi_2 = integral_(R_1)^(R_2) arrow(E) d arrow(r)
$

$
  integral.cont arrow(D) d arrow(s) = D(r) dot 4 pi r^2 =
  cases(
    0 comma &quad r < R_1,
    q comma &quad R_1 < r < R_2,
    0 comma &quad r > R_2
  )
$

$
  C = ?\
  q' = ?\
  rho', sigma' = ?
$
