#import "template-lec.typ": conf, statement
#show: doc => conf([Теория чисел. Лекция (07.10.2025)], doc)

$
  n! = 1 dot 2 dot dots dot n\
  p " - простое"\
  1 < s <= n\
  s = m dot p\
  1 <= m <= [n/p]\
  [n/p] = k_1\
  p dot 2p dot dots dot k_1 p = k_1! p^(k_1)\
  p dot 2p dot dots dot k_2 p = k_2! p^(k_2) "входит в" n! "и дают произведение "
  k_2! p^(k_1 + k_2) \
  k_2 = [k_1/p]\
$

$k_2!$ содержит числа, которые делятся на $p$ и дают произведение
$
  p dot 2p dot dots dot k_3 p, quad k_3 = [k_2/p] quad k_3! p^(k_1 + k_2 + k_3)
$

$
  k_1 = [n/p] \
  k_2 = [k_1/p] = [([n/p]) / p] = [n/p^2]\
  k_3 = [k_2/p] = [[n/p^2]/p] = [n/p^3]
$

Т.о. $n!$ содержит в разложение на простые простое число $p$ в степени:
$
  k_1 + k_2 + k_3 + dots = [n/p] + [n/p^2] + dots + [n/p^s] quad p^s <= n < p^(s+1)
$

$lambda$ - мультипликативная функция, $lambda(a) != 0 thick (exists a in NN)$

$
  lambda(a) = lambda(1 dot a) = lambda(1) dot lambda(a) quad (lambda(a) != 0)\
  ==> lambda(1) = 1
$

$
  n = p_1^(alpha_1) dots p_s^(alpha_s)
$

$lambda$ - мультипликативная функция

$
  lambda(p_1^(alpha_1) dots p_s^(alpha_s)) = lambda(p_1^(alpha_1)) dots lambda(p_s^(alpha_s))
$

$lambda_1, lambda_2$ - мультипликативные функции. $==> lambda_1 dot lambda_2(n) =
lambda_1(n) dot lambda_2(n)$ - мультипликативная функция

$
  (n, m) = 1 quad lambda_1 lambda_2 (n dot m) = lambda_1(n m) dot lambda_2(n m)
  = lambda_1 (n) lambda_1 (m) lambda_2 (n) lambda_2 (m) = lambda_1 lambda_2 (n)
  lambda_1 lambda_2 (m)
$

#statement([
  Пусть $lambda$ - мультипликативная функция\
  $n = p_1^(alpha_1) dots p_s^(alpha_s)$

  $
    sum_(d | n) lambda(d) = (1 + lambda(p_1) + dots + lambda(p_1^(alpha_1)))
    dot (1 + lambda(p_2) + dots + lambda(p_2^(alpha_2))) dot dots dot\
    (1 + lambda(p_s) + dots + lambda(p_s^(alpha_s)))
  $

  $
    product_(i = 1)^(s) (1 + lambda(p_i) + dots + lambda(p_i^(alpha_i)) =
    sum_(1 <= k_1 <= alpha_1\ .........\ 1 <= k_s <= alpha_s) lambda(
      p_1^(k_1)
      p_2^(k_2) dots p_s^(k_s)
    ) = sum_(d | n) lambda(d)
  $
])

$tau(n)$ - количество делителей числа $n$

$
  (n,m) = 1\
  n = p_1^(alpha_1) dots p_s^(alpha_s)\
  m = q_1^(beta_1) dots q_r^(beta_r)\
  n dot m = p_1^(alpha_1) dots p_s^(alpha_s) q_1^(beta_1) dots q_r^(beta_r)\
  d | (n dot m) quad d = p_1^(gamma_1) dots p_s^(gamma_s) q_1_(delta_1) dots q_r^(delta_r)\
  tau(n) = (1 + alpha_1) (1 + alpha_2) dots (1 + alpha_s)\
  d = p_1^(gamma_1) dots p_s(gamma_s) quad 0 <= gamma_i <= alpha_i
$

$s(n)$ - сумма делителей числа $n$

$
  s(n) = (1 + p_1 + dots p_1^(alpha_1)) dots (1 + p_s + dots p_s^(alpha_s)) =
  (p_1^(alpha_1) - 1) / (p_1 - 1) dot dots dot (p_s^(alpha_s) - 1) / (p_s - 1)
$

$
  (n, m) = 1\
  s(n dot m) = sum_(d_1 | n \ d_2 | m) d_1 dots d_2 = (sum_(d_1 | n) d_1) (sum_(d_2 | m) d_2)
  = s(n) dot s(m)
$

$mu(n)$ - функция Мёбиуса

$
  n = p_1^(alpha_1) dots p_s^(alpha_s)\
$

$
  mu(n) = cases(
    1, comma &quad n = 1,
    0 comma & quad alpha_i > 1 "for some" i,
    (-1)^k comma & quad n = p_1 dots p_k
  )
$

$
  sum_(d | n) mu(n) = product_i (1 + mu(p_i) + mu(p^2_i) + dots + mu(p_i^(alpha_i))
  = 0
$

= Цепные дроби и непрерывные дроби
