#import "template-lec.typ": conf
#show: doc => conf([ТВиМС. Лекция (23.05.25)], doc)

= Полукруговой закон Вигнера

$
  (a_(i j))_(N times N) quad a_(i j) = X_(i j) / sqrt(N)
$

$X_(i j)$ - случайная величина
$
  E(X_(i j)) = 0, thick D(X_(i j)) = 1
$

$X_(i j)$ - норсв (абвгд). $lambda_1, dots, lambda_N$ - собственные числа

Эмпирическая функция распределения
$
  G_N (x) = 1/N sum_(j=1)^(N) I(lambda_j < x)
$
$
  G_n (x) -->_(N -> infinity)^(p) G(x)\
  G'(x) = g(x)
$
$
  g(x) = cases(
    1/(2 pi) sqrt(4 - x^2) comma &quad |x| <= 2,
    0 comma &quad |x| > 2
  )
$
$
  G(x) = integral_(-infinity)^(x) g(t) d t = integral_(-2)^x 1/(2 pi)
  sqrt(4 - t^2) d t = 1/2 + (x sqrt(4 - x^2))/(4 pi) + 1/pi arcsin(x/2)
$

$
  m_(2k + 1) = 0\
  m_(2k) = 1/(2 pi) integral_(-2)^(2) x^(2k) sqrt(4 - x^2) d x
$

Сделаем замену:
$
  &x = 2 sin phi\
  &d x = 2 cos phi d phi\
  &sqrt(4 - x^2) = sqrt(4 - 4 sin^2 phi) = 2 cos phi
$

$
  m_(2k) = 1/(2 pi) 2^(2k + 1) 
  underbracket(integral_(-pi/2)^(pi/2) sin^(2k) phi cos^2 phi d phi, I_(2 k))
$
$
  I_(2k) = integral_(-pi/2)^(pi/2) sin^(2k) phi d phi - integral_(-pi/2)^(pi/2)
  sin^(2k + 2) phi d phi
$

Воспользуемся:
$
  integral sin^p x cos^q x d x = (sin^(p-1) x cos^(q+1) x) / (p + q) +
  (p - 1) / (p + q) integral sin^(p-2) x cos^(q) x d x
$

Так как:
$
  cos (plus.minus pi/2) = 0
$
то:
$
  I_(2k) = = (2k - 1) / (2k) integral_(-pi/2)^(pi/2) sin^(2k - 2) phi d phi
  - (2k + 1) / (2k + 2) integral_(-pi/2)^(pi/2) sin^(2k) phi d phi =
  1 / (2k + 2) dot (2k - 1) / (2k) dot (2k -3) / (2k - 2) dot dots dot\ 1/4
  dot 1/2 dot pi ==>\
  m_(2k + 2) = (4k + 2) / (k+2) m_(2k)\
  m_(2k) = C_k\
  C_(k+1) = (4k + 2) / (k+2) C_k
$

Пусть $X_1, dots, X_n$ - iid rv
$
  P(X_k = lambda) = P(X_k = -lambda_k) = 1/2\
  E(X_j^(2k+1)) = (lambda_j)^(2k+1) 1/2 + (-lambda_j)^(2k+1) dot 1/2 = 0\
  E(X_j^(2k)) = (lambda_j)^(2k) 1/2 + (-lambda_j)^(2k) dot 1/2 = lambda_j^(2k)\
$

$
  1/N sum_(i=1)^(N) lambda_i^(2k) = (1 + O(N^(-1))) sum_(j=0)^(k-1) (1/N
  sum_(i=1)^(N) lambda_i^(2j)) (1/N sum_(i=1)^(N) lambda_i^(2(k - j - 1)))
$
