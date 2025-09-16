#import "template-lec.typ": conf, definition, num_eq
#show: doc => conf([Мат. методы нелинейной динамики (12/09/2025)], doc)

*Пример 3*
$
  dot(x) = x - x^2 quad x(0) = x_0
$

$
  (d x) / (x - x^2) = d t\
  (1/x + 1/(1 - x)) d x = d t\
  ln |x - x^2| - t + C\
  ln |x - x^2| - t - ln |x_0 - x_0^| = 0\
  ln lr(|(x - x^2) / (x_0 - x_0^2)|) = t
$

*Пример 4*

$
  m macron(a) = macron(F)\
$

$
  x: m dot.double(x) = -F_("упр") + F_("тр") = -k x - mu dot(x)
$

Пусть $F_("упр") = k |x| = k x$, $F_("тр") = mu |dot(x)| = - mu dot(x)$

$
  m dot.double(x) + mu dot(x) + k x = 0
$

*Пример 4*

Грузик качается на ниточке. (рисунок представить в голове, мне пох)

$
  m macron(a) = macron(T) + m macron(g) + macron(F)_("тр")
$

$
  a_n = v^2 / R, quad a_(tau) = dot(omega) R = dot.double(phi) R
$

$
  F_("тр") = mu v = mu dot(phi) R
$

$
  x: m a_x = m g_x - F_("тр")\
  m dot.double(phi) R = - m g sin phi - mu dot(phi) R\
  m dot.double(phi) R + m g sin phi + mu dot(phi) R = 0\
  phi << 1 ==> sin phi approx phi\
  m R dot.double(phi) + mu R dot(phi) + m g phi = 0
$

*Пример 5*

Транзистор с сопротивлением $R$, конденсатор емкости $c$, катушка $L$.\
$q$ - заряд конденсатора

$
  I = dot(q)
$

*Закон Ома*

$
  U_R = I dot R\
  U_c = q / c\
  U_L = dot(I) dot L = dot.double(q) L
$

$
  U = 0,
$
так как контур замкнут

$
  U_R + U_c + U_L = U = 0\
  dot.double(q) L + dot(q) R + q / c = 0
$

$
  dot.double(x) + 2 h dot(x) + omega_0^2 x = 0
$

1. $h = 0$
$
  dot.double(x) + omega_0^2 x = 0\
  lambda^2 + omega_0^2 = 0\
  lambda = plus.minus omega_0\
  x = c_1 cos omega_0 t + c_2 sin omega_0 t = A cos(omega_0 t - phi)
$

$
  cases(
    dot(x) = y\
    dot(y) = -omega_0^2 x
  )\
  x^2 + y^2 / omega_(0)^2 = A^2 cos^2(...) + A^2 sin(...)\
  x^2 + y^2 / omega_(0)^2 = A
$

$(0, 0)$ - состояние равновесия - центр

2. $h in (0, omega_0^2)$
$
  lambda^2 + 2h lambda + omega_0^2 = 0\
  lambda^2 + 2h lambda + h^2 = - omega_0^2 + h^2\
  (lambda + h)^2 = h^2 - omega_0^2\
  lambda = -h plus.minus i sqrt(omega_0^2 - h^2)\
  x = C_1 e^(-h t) cos(sqrt(omega_0^2 - h^2) t) + C_2 e^(-h t) sin(sqrt(omega_0^2 - h^2) t)
  = B e^(-h t) sin (sqrt(omega_0^2 - h^2) t + psi)
$

$
  cases(
    dot(x) = y\
    dot(y) = - 2h y - omega_0^2 x
  )\
$

Пусть $x(t_1), thick x(t_2)$ - два соседних максимума функции $x(t)$

Тогда $x(t_1) = e^(-h t_1), thick x(t_2) = e^(-h t_2)$
$
  x(t_2) / x(t_1) = e^(-h(t_2 - t_1)) = e^(-h (2 pi) / (sqrt(omega_0^2-h^2)))
$

*Логарифмический декремент затухания:*
$
  d = -h (2 pi) / (sqrt(omega_0^2-h^2))
$

3. $h > omega_0$

$
  lambda_(1, 2) = - h plus.minus sqrt(h^2 - omega_0^2)\
  x = C_1 e^(lambda_1 t) + C_2 e^(lambda_2 t)
$

$
  cases(
    x = C_1 e^(lambda_1 t) + C_2 e^(lambda_2 t),
    y = dot(x) = lambda_1 C_1 e^(lambda_1 t) + lambda_2 C_2 e^(lambda_2 t)
  )
$

= Состояния равновесия и их устойчивость
#num_eq[
  $
    dot(x) = F(x),
  $
] <eq-1>
где $x = (x_1, ..., x_n)^T, thick F = (f_1, ..., f_n)^T$

Пусть в области $||x|| < H, thick H > 0$ выполнены условия теоремы о существовании
и единственности. $x in X$, где $X$ - фазовое пространство

#definition[
  Состоянием равновесия системы @eq-1 называются её постоянные решения $x(b) equiv x_0
  quad forall t$

  Состояние равновесия находится из системы $F(x) = 0$ 
]

Далее без ограниченая общности будет считать, что СР $x = 0$ 

#definition[
  СР $x = 0$ является устойчивым по Ляпунову, если 
  $
    forall epsilon thick exists delta(epsilon) > 0 : forall x(t) : 
    ||x(0)|| < delta ==> ||x(t)|| < epsilon
  $
]
