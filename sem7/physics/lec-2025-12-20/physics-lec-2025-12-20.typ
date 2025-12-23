#import "template-lec.typ": *
#show: doc => conf([Физика. Лекция (20.12.2025)], doc)

= Собственные Колебания

$
  I R = phi_b - phi_a + epsilon_s = phi_b - phi_a - L (d I) / (d t)
$

$
  C = q / (phi_b - phi_a) quad I = (d q_1) / (d t)
$

$
  R (d q) /  (d t) = q / C + L (d^2 q) / (d t^2)\
  (d^2 q) / (d t^2) + 2 R / (2 L) + 1 / (L C) q = 0
$

$
  delta = R / (2 L) quad omega^2_0 = 1 / (2 L)
$

$
  lambda^2 + 2 delta lambda + omega^2_0 = 0\
  lambda_(1, 2) = -delta plus.minus sqrt(delta^2 - omega_0^2)
$

$
  q = A e^(lambda_1 t) + B e^(lambda_2 t)\
  omega_0^2 > delta^2 quad omega_delta = sqrt(omega_0^2 - delta^2)\
  q(t) = q_0 e^(-delta t) cos(omega_delta + phi)
$

#hyi

$
  q -> e^(-delta tau) = e^(-1)\
  N_e = tau / T approx 1 / (delta 2 pi) omega_0 = (2 L) / (R 2 pi) 1 / sqrt(L C) 
  = 1 / (pi R) sqrt(L / C)
$

$
  Q = pi N_e = 1 / R sqrt(L / C)
$

$
  w(t) / (laplace w(t)) = w(t) / (w(t) - w(t + T)) = 1 / (1 - e^(-2 delta T)) 
  approx 1 / (2 delta T) = tau / (2 T) = N_e / 2
$
$
  w = q^2 / (2 C) = q_0^2 / (2 C) e^(-2 delta t)
$

$
  2 pi w(t) / (laplace w(t)) = pi N_e = Q
$
