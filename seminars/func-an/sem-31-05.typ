#import "template-lec.typ": conf, definition, note, statement, theorem
#show: doc => conf([], doc)

#definition[
  $X$ - ЛНП. Пространство $cal(L)(X, RR)$ (пространство линейных непрерывных
  функционалов) называется пространством сопряженным пр-ву $X$. обозначение ($X^*)$
]

#note[
  $X^*$ всегда банахово
]

#statement[
  $
    l_1; quad f in l_1^* quad exists g = (g_1, g_2, g_3, dots) in l_infinity:\
    forall x in l_1 quad f(x) = sum_(k=1)^(infinity) g_k dot x_k,
  $
  причем
  $
    ||f|| = ||g||_(l_infinity) = sup_k |g_k|
  $

  $
    l_1^* tilde.equiv l_infinity; quad l_1^* = l_infinity
  $
]

#theorem("Рисса")[
  _Пусть $H$ - ГП, $F: H --> RR$ - линейный непрерывный функционал. 
  Тогда $exists! u in H$ такой, что_
  $
    F x = (x,u) quad forall x in H,
  $
  _причем $||F|| = ||u||_H$_
  
  _Пишут $H^* = H$_
]

*Пример* $F: l_2 -> RR$ 
$
  F x = sum_(k=1)^(infinity) (x_(2k+1) + x_(2k-1)) / (2^k)
$
1. Найти $u: F x = (x,u)$ 
2. Найти $||F|| = ||u||_(l_2)$ 
$
  (x_3 + x_1) / 2 + (x_5 + x_3) / 2^2 + = x_1 / 2 + x_3 (1/2 + 1/2^2) +
  x_5 (1/2^2 + 1/2^3)\
  u = (1/2, 0, 3/4, 0, 3/8, 0, 3/16, dots)
$
$
  ||u|| = sqrt(sum_(k=1)^(infinity) u^2_k) = sqrt((1/2)^2 + sum_(k=2)^infinity
  (3/2^k)^2) = 1/4 + 9 * (1 slash 16) / (1 - 1 slash 4) = 1
$

#definition[
  $X$ - ЛНП. Говорят, что ${x_n} subset X$ сходится слабо к $x^* in X$, если
  $
    forall f in X^* quad f(x_n) --> f(x^*)
  $

  Пишут $x_n -->^w x^*$ или $x_n --> x^*$ слабо 
]

*Пример* $L_2[-1, 1], thick e_n = cos(pi n t)$ 
1. Доказать что $e_n arrow.not$, но $e_n -->^w 0$  
$
  ||e_n - e_m||^2 = (e_n - e_m, e_n - e_m) = ||e_n||^2 + ||e_m||^2 = 1 + 1 = 2,
$
тогда ${e_n}$ - не фундаментальная, следовательно расходится\
*_хуй_*\
Рассмотрим $f in L_2^*$ 
$
  f e_n = (e_n, u) = integral_(-1)^(1) cos pi n t dot u(t) d t --> 0
$
$u(t) --> 0$ т.к. это коэффициенты Фурье 

= Дифференцирование операторов
== Сильная производная оператора

#definition[
  $X, Y$ - банаховы. Оператор $A : X -> Y$ определён в окрестности $S$ точки
  $x_0 in X$. $A$ - называется диф. в точке $x_0$, если 
  $
    forall x in S quad A x - A x_0 = L(x-x_0) + alpha (x-x_0),
  $
  где $L$ - линейный ограниченный оператор
  $
    L : X --> Y; quad ||alpha (x-x_0)|| = o(||x-x_0||)
  $

  $A' = L$ - сильная производная (производная Фреше)
  $
    A(x_0 + Delta x) - A x_0 = L Delta x + alpha Delta x,
  $
  где $||alpha Delta x|| = o(||Delta x||)$ 
]

*Пример* $F : RR^n --> RR, quad F x = f(x_1, x_2, dots, x_n)$\
$f$ дифференцируема в точке $x$, если
$
  f(x + Delta x) - f(x) = (diff f) / (diff x_1) dot Delta x_1 + dots +
  (diff f) / (diff x_n) + o(rho)\
  rho = sqrt(Delta x_1^2 + dots + Delta x_n^2)
$
$
  F(x + Delta x) - F(x) = (gradient f, Delta x) + o(rho) 
$

=== Свойства сильной производной
1) $A in cal(L)(X, Y)$, то $A' = A$ \
2) $(F + G)' = F' + G', quad (lambda dot F)' = lambda dot F'$ \
3) $Q: X --> Y$ - дифференцируем в точке $x_0 in X$, $T : Y --> Z$ 
дифференцируем в точке $y_0 = Q x_0$, тогда $T Q$ - дифференцируем в точке
$x_0$ 
$
  (T Q)'(x_0) = T'(y_0) Q'(x_0)
$
