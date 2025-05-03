#import "@preview/rose-pine:0.2.0": apply, rose-pine
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#show: apply()

#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

#let num_eq(content) = math.equation(
  block: true,
  numbering: "(1)",
  content,
)

#let theorem(num, contents) = [
  #block(
    stroke: rose-pine.rose,
    inset: 1em,
    width: 100%,
    fill: gradient.linear(rose-pine.pine, rose-pine.love, angle: 30deg)
  )[
      *Теорема #num.* #contents
  ]
]

#let definition(contents) = [
  #block(
    stroke: rose-pine.rose,
    inset: 1em,
    width: 100%,
    fill: gradient.linear(rose-pine.pine, rose-pine.love, angle: 30deg)
  )[
      *Определение.* #contents
  ]
]

#let qedsymbol = [
  #align(right)[
    #square(size: 0.6em, stroke: 0.5pt + rose-pine.base, fill: rose-pine.text)
  ]
]

#align(center)[= Страхование. Неправенство Крамера-Лундберта. Процессы восстановления.]
#for i in range(10) {
  align(center)[= $frak(H U I)$]
}
$
  X_0 = u > 0
$

Поступают взносы $Delta t ~~> C dot Delta t$ 
$
  0 < T_1 < T_2 < ... < T_n < ...
$
страховые случаи
$
  T_i -> xi_i
$
$
  X_t = u + c t - sum_(i=1)^(N_t) xi_i = u + c t - sum_(i=1)^(infinity) xi_i dot I
  (T_i < t)\
  N_t = sum_(i=1)^(infinity) I(T_i < t)
$
$
  X_t - X_0 = c t - sum_(k=1)^N xi_k\
  T = inf { t > 0 : X_t <= 0 }  " - момент разорения фирмы"
$
$P(T < t) = q(t,u)$ и $P(T < infinity) = q$ 

Предположение
$
  K L_1 : tau = T_i - T_(i-1), quad { tau_i} " - н. о. р. случайные величины"\
  P(tau_i > t) = e^(-lambda t), quad t > 0
$
$
  K L_2: { xi_i } " - н. о. р. случайные величины"
$
$
  P(xi_i < x) = F(x)\
  mu = integral_(-infinity)^(infinity) x d F(x) < infinity
$
$
  K L_3: {tau_i}, thick { xi_i } " - независимые"\
  T_k = tau_1 + ... + tau_k " - имеет гамма распределение"\
  f_k (x) = lambda^k (x^(k-1)) / (Gamma(k)) e^(-lambda x)\
  P(T_k >= t) = P(N_t <= k) = P(tau_1 + ... + tau_k >= t) = 
  integral_t^infinity f_k (x) d x = sum_(i=0)^k (lambda t)^i / (i!) e^(-lambda t)\
  P(N_t = k) = (lambda t)^k / (k!) e^(-lambda t) quad {N_t}_(t >= 0) 
  " - пуассоновские"
$

Условие: существует $R>0$ 
$
  lambda / c integral_0^infinity e^(R x) (1 - F(x)) d x = 1
$
$
  E(X_t - X_0) = c t - E(sum_(k=1)^(N_t) xi_k) = c t - E(sum_(k=1)^infinity
  xi_k dot I(T_k < t)) = c t - sum_(k=1)^infinity E(xi_k dot I(T_k <= t)) =\
  c t - sum_(k=1)^infinity E(xi_k) E(I(T_k <= t)) = c t - mu sum_(k=1)^infinity
  P(T_k <= t) = c t - mu sum_(k=1)^infinity P(N_t >= k) = c t - mu E(N_t) = \
  c t - lambda mu t = t(c - lambda mu) > 0
$
$
  #block(stroke: white, inset: 1em)[$c > lambda mu$]
$
$
  h(z) = integral_0^infinity (1 - e^(z x)) d F(x) = 1 - integral_0^infinity
  e^(z x) d F(x) = 1 - phi(x)\
  phi(z) = 1 - h(z), quad h(0) = 0\
  g(z) = c z + lambda h(z) = c z + lambda - lambda phi(z)\
  #block(stroke: white, inset: 1em)[$g(0) = 0$]
$
$
  E(e^(-r(X_t - X_0))) = E(e^(-r(c t - sum_(k=0)^(N_t) xi_k))) = e^(-r c t)
  E(e^(r sum_(k=0)^N_t xi_k)) = e^(-r c t) sum_(n=0)^infinity E(e^(r sum_(k=1)^n
  xi_k)) P(N_t = n)\
  = e^(-r c t) sum_(n=0)^infinity (lambda t phi(r))^n / n! e^(-lambda t) = 
  e^(-r c t - lambda t + lambda t phi(r)) = e^(-t g(r))
$
$
  cal(F)_t = sigma(X_u, med u <= t)\
  E(e^(-r(X_t - X_0))) = e^(-t g(r))\
  e^(-t g(r)) = E(e^(-r(X_t - u))) = E(e^(-r(X_t - X_s) - r(X_s - u))) = 
  E(e^(-r(X_t - X_s))) E(e^(-r(X_s - u))) = E(e^(-r(X_t - X_s)) dot e^(-s g(r))\
  E(e^(-r(X_t - X_s)) = e^(-(t-s)g(r))
$
$
  E(e^(-r(X_t - X_s)) | cal(F)_s) = E(e^(-r(X_t - X_s))) = e^(-(t-s)g(r))
$
$
  z_t = e^(-X_t + t g(r))\
  E(e^(-r X_t + t g(r)) | cal(F)_s) = E(e^(-r(X_t - X_s)) dot e^(-r X_s + t g(r))
  | cal(F)_s = e^(-r X_s + t g(r))\
  E(e^(-r (X_t - X_s)) | cal(F)_s) = e...
$
$
  E(z_t | cal(F)_s) = z_s => {z_t} " - мартингал"\
  E(z_t | cal(F)_0) = E(z_t) = e^(-r u)
$

#theorem(1)[
  ${z_t, cal(F)_t}$ - мартингал\
  $tau$ - момент остановки случайной величины, то ${z_(tau and t)$ 
]
$
  g(r) = c r + lambda h(r)\
  g(0) = 0\
  g'(0) = c r - lambda phi'(0) = c - lambda mu > 0\
  g''(r) = -lambda phi''(r) = -lambda integral_0^infinity x^2 e^(r x) d F(x)
$

Условия Крамера
$
  g''(r) <= 0
$

== Теория восстановления
Прибор $[0, tau_1], quad tau_1$ - момент отказа\
Второй $(tau_1, T_2]$, $tau_2 = T_2 - T_1, quad T_1 = tau_1$ 
$
  T_n = tau_1 + tau_2 + ... + tau_n quad P(T_n = tau_1 + ... + tau_n >= t) = G_k (t)\
  P(T_n >= t) = P(N_t <= k) quad P(N_t = k) =-(G_k (t) - G_(k-1)(t)) = p_k (t)
$
$
  X_t = max (k: sum_(i=1)^k tau_i < t)\
  E(X(t)) = sum_(k=1)^infinity k p_k (t) = G_1(t) - G_2(t) + 2G_2(t) - 3G_3(t) + ...
  = sum_(k=1)^infinity G_k (t)
$

#theorem(2)[
  $
    X(t) / t stretch(->)_(t -> 0) 1 / a
  $
  
]

