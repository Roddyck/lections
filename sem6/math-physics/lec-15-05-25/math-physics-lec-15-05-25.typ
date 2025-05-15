#import "template.typ": conf, num_eq
#show: doc => conf([УМФ. Лекция (15/05/2025)], doc)

$
  Omega_epsilon = Omega backslash (overline(B_epsilon (M_1)) union
  overline(B_epsilon (M_2)))\
  G(M_1, M)\
  G(M_2, M)
$
$
  0 = integral.double_(S_1) underbrace((G(M_1, M) (partial G(M_2, M)) / (partial nu)),--> 0) -
  underbrace((M_2, M) partial / (partial nu) G(M_1, M), --> G(M_2, M)" при " epsilon -> 0) 
  d Gamma +\ integral.double_(S_2) (G(M_1, M) (partial G(M_2, M)) / (partial nu) -
  G(M_2, M) partial / (partial nu) G(M_1, M) d Gamma
$

#align(center)[= Функция Грина задачи Дирихле для шара в трехмерном пространстве]

$
  G(M, M_0) = 1/(4 pi r) + g(M, M_0) quad r = r_(M M_0)
$
#num_eq($Delta g(M, M_0) = 0$)\
#num_eq($g(M, M_0) = - 1 / (4 pi r_(M M_0))$)
#num_eq($Delta u = 0$)
#num_eq($u|_(Gamma) = f$)
#num_eq($u(M_0) = -integral.double_Gamma f (partial G) / (partial nu) d Gamma$)
#num_eq($G(M, M_0) = 1/(4 pi r) + g(M, M_0) quad r = r_(M M_0)$)

Рассмотрим задачу:
$
  Omega = B_R (0), thick S_R (0) = Gamma\
  M in B_R (0), thick M = M(x,y,z)\
  p in overline(B_R (0)), thick p = p(xi, eta, zeta)\
  r = r_(p M) = sqrt((x - xi)^2 + (y - eta)^2 + (z - eta)^2)
$
Для точки $M$ построим инверсию $M_1$
$
  O M dot O M_1 = R^2
$

Рассмотрим частный случай, когда $P in S_R$ 
$
  O M = rho, thick O M_1 = rho_1
$
$
  M_1(x_1, y_1, z_1)\
  r_1 = sqrt((x_1 - xi)^2 + (y_1 - eta)^2 + (z_1 - eta)^2)
$
$
  triangle O P M tilde triangle O M_1 P\
$
#num_eq($(O P) / (O M_1) = (O M) / (O P) = (P M) / (P M_1)$)
#num_eq($R / rho_1 = rho / R = r / r_1$)
#num_eq($1 / (4 pi) 1 / R  - (1 R) / (4 pi rho) dot 1 / r_1 = 0, quad p in S$) 
#label("eq9")
#num_eq($g(P, M) = 1 / (4 pi) R / rho dot r / r_1$)
$
  Delta_p g(P, M) = 0
$
#num_eq($G(P,M) = 1 / (4 pi r) + g(P, M)$) #label("eq11")

Выражение #ref(<eq11>), где $g$ определятся #ref(<eq9>) даёт нам функцию Грина
задачи Дирихле

1.
$
  partial / (partial nu) (1/r) = partial / (partial xi) (1/r) cos hat(nu xi)
  + partial / (partial eta) (1/r) cos hat(nu eta) +
  partial / (partial zeta) (1/r) cos hat(nu zeta)\

  partial / (partial xi) 1/r = - 1/r^2 (partial r) / (partial xi) = 
  - 1/r^2 dot 1/2 dot (2 (xi - x)) / r = -1/r^2 dot (xi - x) / r
$
#num_eq(
$
  partial / (partial nu) (1 / r) = - 1/r^2 dot {(xi - x)/r dot cos hat(nu xi)
  + (eta - y)/r cos hat(nu eta) + (zeta - z)/r cos hat(nu zeta)}
  = - 1/r^2 dot (arrow(i)_r dot arrow(nu))\
  = - 1/r^2 dot cos(hat(r nu))
$
)

$macron(i)_r$ направляющий вектор $M P$ 

#num_eq(
$
  partial / (partial nu) (1/r_1) = - 1/r^2 cos(hat(r_1 nu))
$
)

$
  (partial G(P, M)) / (partial nu) = -1/(4 pi r^2) cos(hat(r nu)) + 1/(4 pi)
  R/rho dot 1/r_1^2 cos(hat(r_1 nu))
$

Применим теорему косинусов, для $triangle O P M$: 
$
  rho^2 = R^2 + r^2 - 2R r dot cos(hat(nu r)) =>\
  cos(hat(nu r)) = (R^2 + r^2 - rho^2)/(2 R r)
$

Для $triangle O P M_1$:
$
  rho_1^2 = R^2 + r_1^2 - 2R r_1 cos(hat(nu r_1))\
  cos(hat(nu r_1)) = (R^2 + r_1^2 - rho_1^2) / (2 R r_1)
$
$
  (partial G) / (partial nu) = - 1 / (4 pi r^2) dot (R^2 + r^2 - rho^2) / (2 R r)
  + 1 / (4 pi r_1^2) dot R/rho dot (R^2 + r_1^2 - rho_1^2) / (2 R r_1)
$
$
  r_1 = (R r) / rho; quad rho_1 = R^2 / rho
$
$
  rho^2 / (4 pi R^2 r^2) dot R/rho dot (R^2 + (R^2 r^2)/rho^2 - R^4/rho^2) / 
  (2R (R r)/rho)\
$
$
  (partial G) / (partial nu) = - 1 / (4 pi r^2) dot (R^2 + r^2 - rho^2) / (2 R r)
  + (rho^2 + r^2 - R^2) / (4 pi R r^2 dot 2r) = (rho^2 - R^2) / (4 pi R r^3)
$
$
  u(M) = (R^2 - rho^2) / (4 pi R) dot integral_S f(P) dot 1 / r_(M P)^2 d S
$

Получили формулу Пуассона
