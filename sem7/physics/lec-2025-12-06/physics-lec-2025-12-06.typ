#import "template-lec.typ": *
#show: doc => conf([Физика. Лекция (06.12.2025)], doc)

#hyi

$
  arrow(E)_q ==> integral.cont arrow(E) d arrow(r) = 0\
  arrow(E)_B ==> integral.cont arrow(E) d arrow(r) = - d / (d t) integral
  arrow(B) arrow(d s)\
  arrow(E) = arrow(E)_q + arrow(E)_B\
$

$
  cases(
    integral.cont arrow(E) d arrow(r) = - d / (d t) integral arrow(B) arrow(d s),
    integral.cont arrow(B) arrow(d s) = 0
  )
$

$
  integral.cont arrow(H) d arrow(r) = integral arrow(j)_H d arrow(s) =
$

$
  cases(
    integral (arrow(j)_(H) + (diff arrow(D)) / (diff t)) d arrow(s),
    integral.cont arrow(D) d arrow(s) = integral rho d V
  )
$

$
  arrow(j) = arrow(j)_H + underbrace((diff arrow(D)) / (diff t), j_("см"))
$

$
  cases(
    "rot" arrow(E) = - (diff arrow(B)) / (diff t),
    "div" arrow(B) = 0
  )
$

$
  cases(
    "rot" arrow(H) = arrow(j)_H - (diff arrow(D)) / (diff t),
    "div" arrow(D) = rho
  )
$


$
  arrow(D) = epsilon_0 epsilon arrow(E)\
  arrow(B) = mu_0 mu arrow(H)
$

$
  arrow(j)_mu = 1 / rho (arrow(E)_q + arrow(E)_B)
$

== Задачи

$
  L_(12) = L_(21)
$

$
  L_1 (N_1, S, l, mu)
$

$
  Phi_1 = integral overline(B) overline(d s)
$

$
  epsilon = - (d Phi_1) / (d t) quad Phi_s = L J_s\
  epsilon = - L (d J) / (d t)
$

$
  epsilon_(21) = - (d Phi_(21)) / (d t) = - L_(21) (d J_1)/ (d t)\
  epsilon_(12) = - (d Phi_(12)) / (d t) = - L_(12) (d J_2)/ (d t)\
$

$
  overline(B) = mu_0 mu_1 overline(H) = mu_0 mu_1 J(N_1/l)
$

$
  Phi_0 = ((mu_0 mu_1 N_1^2 S) / l) J
$

$
  L_1 = (mu_0 mu_1 N_1^2 S) / l
$

$
  Phi_(21) = (mu_0 mu N_1 N_2 S) / l J\
  L_(21) = (mu_0 mu N_1 N_2 S) / l = N_2 / N_1 L_1
$

$
  L_1 dot L_2 = L_(12) dot L_(21) ==> L_(12) = sqrt(L_1 dot L_2)
$

*Задача 7.45*

На катушку намотано две проволоки.

$
  I_1 = 0.5 A\
  L_1 = 0.12 Gamma H\
  L_2 = 3 Gamma H\
  R_2 = 300 "Om"\
  laplace t = 0.01 "c"\
  I_2 - ?
$

$
  I_2 = - (d Phi) / (d t) dot 1 / R\
  (d Phi) / (d t) = - L_(21) (d I) / (d t), quad (d I) / (d t) approx 50
$

$
  L_(12) = sqrt(L_1 dot L_2) = 0.6
$

$
  (d Phi) / (d t) = -30\
  I_2 = 30 / 300 = 0.1
$
