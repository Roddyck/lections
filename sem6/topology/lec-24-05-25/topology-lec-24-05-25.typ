#import "template-lec.typ": conf, note, qedsymbol, theorem, conseq
#show: doc => conf([Топология. Лекция (24.05.25)], doc)
#show math.integral: math.limits.with(inline: false)

#let atl = $op("Atl")$
#let supp = $op("supp")$

2. $d(f^* omega) = d(f^*(a(x) d x_(alpha_1) and dots and d x_(alpha_k))) =
  d(a(F(x)) d F_(alpha_1) and dots and d F_(alpha_k)) = d(a(F(x))) and d F_(alpha_1)
  and dots and d F_(alpha_k) = f^*(d a(x) and d x_(alpha_1) and dots and d x_(alpha_k))=
  f^* d omega$

= Интегрирование дифференциальных форм

1. *Координатное представление дифференциальной формы*

$M$ - гладкое n - мерное многообразие
// Тут рисунок 1
$
  omega in Lambda^k (T^* M) " - k - форма"
$

Координатным представлением формы $omega$ в карте $phi$ называется форма
$
  r^* omega = sum omega_A (x) d x_A,
$
где $r = phi^(-1)$ - параметризация

Пусть $s = psi^(-1) => r^* omega = (psi compose phi^(-1))^* s^* omega$,
т.к. $(psi compose phi^(-1)) s^* omega = r^* phi^* s^* omega = r^* omega$

2. *Интеграл от дифференциальной формы по многообразию*

$M$ - ориентированное гладкое n-мерное многообразие, $atl M$ - ориентированный атлас.
$omega$ - n-форма на $M$

Носителем формы $omega$ называют
$
  supp := { x in M | omega(x) != 0}
$

a) $exists phi in atl M: phi^(-1)(RR^n) supset supp omega$
Тогда
$
  integral_M omega := integral_(phi(supp omega)) r^* omega =
  integral_(phi(supp omega)) a(x_1, dots, x_n) d x_1 d x_2 dots d x_n
  " - кратный интеграл"
$

#note[
  // Тут рисунок 2
  $
    integral_(phi(supp omega)) r^* omega =^? integral_(psi(supp omega)) s^* omega
  $

  _Доказательство:_
  $
    integral r^* omega = integral a(x) d x_1 dots d x_n = integral a(F(t))
    J_F (t) d t_1 dots d t_n =
  $
  где $J_F = det ((diff F_i) / (diff t_j))$
  $
    = integral a(F(t)) d F_1 and dots and d F_n = integral F^* r^* omega =
    integral s^* omega
  $
  #qedsymbol
]

b) Общий случай\
$supp omega$ - компактное множество, тогда существует конечное открытое
покрытие ${U_i}$ и $phi_i in atl M, phi_i : U_i --> RR^n$, $supp omega subset
U_1 union dots union U_n$

Тогда $M$ можно разрезать на части $(n-1)$ - мерными многообразиями на части
${M_i} : supp omega inter M_i subset U_i$
// Тут рисунок 3
$
  integral_M omega := sum_i integral_(M_i) omega
$

== Свойства интеграла от формы

1. Линейность:
$
  integral_M (omega_1 + omega_2) = integral_m omega_1 + integral_m omega_2\
  integral_M lambda omega = lambda integral_M omega quad forall lambda in RR
$

2. Аддитивность
$
  M_1, M_2 subset M quad M_1 union M_2 = M quad dim (M_1 inter M_2) = n - 1\
  ==> integral_M omega = integral_(M_1) omega + integral_(M_2) omega
$

3. $f: M --> N$ - диффеоморфизм ориентированных гладких n-мерных многообразий\
$omega$ - n-форма на $N$
$
  ==> integral_N omega = plus.minus integral_M f^* omega,
$
знак $+ slash -$ стоит для случая, когда $f$ сохраняет/обращается ориентацию
этих многообразий

= Теорема Стокса

#theorem("Стокса")[
  _Пусть $M$ - ориентированное гладкое n-мерное многообразие с краем_ $diff M$.

  $omega$ - $(n-1)$ _- форма на $M$ с компактным носитилем. Тогда_
  $
    integral_(diff M) omega = integral_M d omega
  $

  _Доказательство:_

  Достаточно это равенство доказать для координатного представления формы $omega$:
  $
    r^* omega = sum_(i=1)^n underbrace(a_i (x) d x_1 and dots and d x_n, omega_i)
  $
  где пропущен $d x_i$
  $
    ==> r^* d omega_i = d r^* omega_i = (diff a_i) / (diff x_i) d x_i and ...^((i))
    and d x_n = (-1)^(i-1) (diff a_i) / (diff x_i) d x_1 and dots and d x_n
  $

  1. $r$ определено на $RR^n$
  $
    integral_(RR^n) d r^* omega_i = plus.minus integral_(-infinity)^(infinity) d x_1 dots
    integral d x_n
    underbrace(
      integral_(-infinity)^(infinity) (-1)^(i - 1) (diff a_i) / (diff x_i) d x_i,
      plus.minus (a_i (infinity) - a_i (-infinity)) = 0
    )
  $

  2. $r$ определено на $RR^n_(-) = {(x_1, dots, x_n) | x_1 <= 0}$
  $
    i != 1 => integral_(RR^n_(-)) d r^* omega_i = 0
  $
  $
    integral_(RR^n_(-)) d r^* omega_1 = integral_(-infinity)^(infinity) d x_n
    integral_(-infinity)^(infinity) d x_(n-1) dots integral_(-infinity)^(0)
    (diff a_1) / (diff x_1) d x = integral_(diff RR^n_(-) = RR^(n-1))
    a_1(0, x_2, dots, x_n) d x_2 and dots and d x_n = \
    integral_(diff RR^n_(-)) r^* omega ==> integral_(diff M) = integral_M d omega
  $
]

#conseq[
  1. Формула Ньютона-Лейбница\
  $omega = f(x)$ - $0$-форма, $n = 1$, $M = [a,b]$
  $
    integral_M d f = integral_a^b f'(x) d x = f(b) - f(a) = integral_(diff M = {a,b})
    f
  $
]
