#import "template-lec.typ": conf
#show: doc => conf([Физика. Лекция (18.10.2025)], doc)

= Третим Будешь?
- Издевался над Ириной
- Он Жириновский
- Самые верные друзья и мужья - это научные сотрудники и пилоты (мёртвые)

= Энергия электрического поля

$
  arrow(E)(arrow(r)) = k q / r^2 arrow(r) / r\
  phi(arrow(r)) = k q / r\
  W = q phi
$

$
  W = phi_1 dot q_1 = q_2 / r q_1 = phi_2 q_2 = q_1 / r q_2\
  W = 1 / 2 (phi_1 q_1 + phi_2 q_2)
$

$
  W = 1/2 sum phi_i q_i
$

$(q_i)$ - точечные заряды, $rho, sigma, lambda$ 

$
  W = 1/2 (sum phi_i q_i + integral_V rho(arrow(r)) d v + integral_S sigma
  d arrow(s) + integral_l lambda d l)
$

== Энергия заряженного конденсатора

$
  C = q / (phi_1 - phi_2)
$
$
  W = 1/2 (q dot phi_1 - q dot phi_2) = 1/2 q (phi_1 - phi_2) = 1/2 q^2 / C
$
