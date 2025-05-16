#import "template-lec.typ": conf, num_eq
#show: doc => conf([ТВиМС. Лекция (16.05.2025)], doc)

= Вероятностные модели роста. Распределение Бирнбаума-Сондерса
$
  Delta_t = Delta x_t = x_t - x_(t-1)\
  {X_t} quad xi_t " - импульс"\
  Delta_t = g(X_(t-1)) dot xi_t
$
$
  x_t = sum_(t=1)^t Delta x_t = sum (X_t - X_(t-1)) = g(X_(t-1)) xi_t\
  xi_t = (X_t - X_(t-1)) / g(X_(t-1))\
  sum_(k=1)^t xi_k = sum (X_t - X_(t-1)) / g(X_(t-1))
$

${X_k - X_(k-1)}$ - независимые о.р. случайные величины $(xi_k)$ 
$
  E(xi_k) = a\
  D(xi_k) = b^2
$
$
  X_t tilde cal(N)(n a, n b^2)
$

Функция распределения
$
  Phi((x - n a) / (sqrt(n) b))
$

$n$ - велико. $n <-> t$ 
$
  sum_k (X_t - X_(t-1)) / (g(X_t)) approx integral_(x_0)^x (d y) / (g(y))
  = integral_(x_0)^x (d y) / y = ln x - ln x_0
$

== Логарифмически нормальное распределение
$
  P(X < x) = P(h(X) < h(x)) = Phi((x - n a) / (sqrt(n) b))\
  h(x) = integral_(x_0)^x (d y) / (g(y))
$

Вместо $X --> ln X = U$ - имеет нормальное распределение
$
  f(x) = 1 / (sqrt(2 n) b x) e^(-(ln x - a) / (2 b^2)), quad x > 0
$

1. Развитие трещин
2. Рост деревьев
3. Доходы в семье

= Распределение BS (Бирнбаума-Сондерса)
$tau$ - случайная величина 

$lambda, thick theta$ - новые параметры
$
  cases(
    lambda sqrt(theta) = h(x) / b\
    lambda / sqrt(theta) = a / b
  )
$

#num_eq(
$
  P(tau <= x) = 1 - Phi(lambda(sqrt(theta/t) - sqrt(t/theta))) = 1 - 
  Phi(lambda(xi(t/theta)))
$
) <eq1>

Пусть случайная величина $T$ 
$
  sqrt(theta/T) - sqrt(T/theta) in cal(N)(a_1, sigma_1^2)
$

тогда ф.р. $T$ #ref(<eq1>) будет иметь ...
#num_eq(
  $
    U = lambda(sqrt(theta/T) - sqrt(T/theta))
  $
) <eq2>
$
  T = lambda( (U theta) / 2 + sqrt(((V theta)/2)^2 + 1))
$

Имеет распределение BS

Случаи применения - циклические нагрузки

Найдем моменты с.в. $T$ 
$
  E(T) = lambda integral_(-infinity)^infinity ( (U theta) / 2 + sqrt(((V theta)/2)^2 + 1))
  1 / sqrt(2 pi) e^(-x^2/2) d x\
  E(T^2) = lambda^2 integral_(-infinity)^infinity ( (U theta) / 2 + 
  sqrt(((V theta)/2)^2 + 1)) phi(x) d x\
$

#box(stroke: black, inset: 1em, width: 100%)[
  $
    &mu_1 = E(T) = lambda (theta^2/2 + 1)\
    &D(T) = lambda^2 theta^2 (5/4 theta^2 + 1)\
    &mu^3 = E((T - mu_1)^3) = (theta^4 + lambda^3) / 2 (11 theta^2 + 6)
  $
]

== Асимметрия

$
  mu_3/D(t)^(3/2) = (6 theta^2 (11 theta^2 + 6)) / (5 theta^2 + 4)^(3/2)
$

== Эксцес
$
  gamma_2 = 3 + (6 theta^2 (93 theta^2 + 4))  / (5 theta^2 + 4)^2
$

= Разборчивая невеста (опять)
