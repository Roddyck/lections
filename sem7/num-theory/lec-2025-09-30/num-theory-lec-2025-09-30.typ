#import "template-lec.typ": conf, conseq, definition, num_eq, statement, theorem
#show: doc => conf([Теория чисел. Лекция (30.09.2025)], doc)


#theorem([(Китайская теорема об остатках)], [
  Пусть дана система сравнений
  #num_eq(
    $
      cases(
        x equiv b_1 thin (m_1),
        x equiv b_2 thin (m_2),
        ......................,
        x equiv b_n thin (m_n),
      ),
    $,
  ) <sys-comp>
  где $(m_i, m_j) = 1, thick (i != j)$

  Система @sys-comp имеет единственное решение по $mod M$, где $M = m_1 m_2 ... m_n$

  Если $x_1, x_2$ - решения @sys-comp, то $x_1 equiv x_2 thin (M)$

  Действительно из @sys-comp получаем
  $
    x_1 - x_2 equiv 0 thin (m_1)\
    ........................\
    x_1 - x_2 equiv 0 thin (m_n)\
    ==> x_1 - x_2 " делится на " m_i, thick i = 1, ..., n
  $
  тк $(m_i, m_j) = 1$, то $M = m_1 ... m_n | x_1 - x_2$, т.е. $x_1 - x_2 equiv x_2
  thin (M)$

  $
    M_1 = m_2 dots m_n = M/m_1\
    ..............................\
    M_n = m_1 dots m_(n-1) = M/m_n\
  $
  #num_eq(
    $
      M_1 y_1 equiv 1 (m_1), dots, M_n y_n equiv 1 (m_n)\
    $,
  ) <new-eq>

  $
    (M_i, m_i) = 1
  $

  $
    x = M_1 y_1 b_1 + dots + M_n y_n b_n in ZZ
  $

  $y_1, dots, y_n$ - решения уравнений @new-eq

  $x$ - решение @sys-comp (?)

  $
    x thin (mod m_1) = b_1 + 0 + dots + 0 = b_1 thin (mod m_1)
  $

  $
    x equiv 0 + dots 0 + b_n (m_n) = b_n (m_n)
  $

  Таким образом $x$ - решение @sys-comp
])

#conseq([
  Чтобы найти решение $x$ системы @sys-comp составим сравнения @new-eq.
  Пусть $y_i$ - решение сравнения $M_i y_i equiv 1 (m_i)$, тогда
  $x = M_1 y_1 b_1 + ... + M_n y_n b_n$ - решение @sys-comp
])


#block(
  stroke: black,
  inset: 1em,
  width: 100%,
)[
  *Второе доказательство китайской теоремы об остатках.*

  Рассмотрим $ZZ, thick M = m_1 ... m_n, quad (m_i, m_j) = 1, thick i != j$

  Кольцо
  $
    ZZ_M tilde.equiv ZZ_(m_1) times ... times ZZ_(m_n)
  $

  $
    a in ZZ quad overline(a)_M " - класс вычетов" a "по" mod M
  $

  $
    overline(a)_M in ZZ_M
  $

  $
    overline(a)_M |-> (overline(a)_(m_1, ..., overline(a)_(m_n)))
  $

  $
    b equiv a (M) <==> M | b - a ==> (b-a) thin dots.v m_i ==> overline(b)_(m_i)
    = overline(a)_(m_i)
  $

  $
    phi : ZZ_m --> ZZ_(m_1) times dots times ZZ_(m_n)\
    phi(overline(a)_M) = (overline(a)_(m_1), ..., overline(a)_(m_n))
  $

  $
    overline(a)_M + overline(b)_M = overline(a+b)_m -->^phi
    (overline(a+b)_(m_1), ..., overline(a+b)_(m_n)) = (overline(a)_(m_1) +
      overline(b)_(m_1) + ... + overline(a)_(m_n) + overline(b)_(m_n)) =\
    = (overline(a)_(m_1), ... overline(a)_(m_n)) + (overline(b)_(m_1), ...,
      overline(b)_(m_n))
  $

  $
    |ZZ_M| = M = |ZZ_(m_1)| ... |ZZ_(m_n)| = |ZZ_(m_1) times ... times ZZ_(m_n)|
  $

  Достаточно доказать иньективность или сюрьективность

  $
    phi(overline(a)_M) = 0 = (0, ..., 0)\
    overline(a)_(m_1) = 0, dots, overline(a)_(m_n) = 0\
    m_1 divides a, dots, m_n divides a ==> M divides a ==> overline(a)_M = 0
  $

  $
    ker phi = 0 ==> phi " - иньективно" ==> phi " - взаимно однозначно"
  $

  Из сюрьективности получаем, что
  $forall overline(b)1 in ZZ_(m_1), dots, overline(b)_n in ZZ_(m_n)$
  $exists !$ (из иньективности) $phi(overline(a)_M) = (overline(a)_(m_1), ...,
    overline(a)_(m_n)) = (overline(b)_1, ..., overline(b)_n)$
]

$
  phi : U(ZZ_M) tilde.equiv U(ZZ_(m_1) times dots times ZZ_(m_n))\
  (overline(a)_1, dots, overline(a)_n) in U(ZZ_(m_1) times dots times ZZ_(m_n))
  <==> exists (overline(b)_1, dots, overline(b)_n)\
  (overline(a)_1, dots, overline(a)_n) (overline(b)_1, dots, overline(b)_n)
  = 1 <==> (overline(a)_1 overline(b)_1, dots, overline(a)_n overline(b)_n) =
  (1, dots, 1)
$

$
  ZZ_m = {overline(0), dots, overline(m-1)}\
  overline(a) in ZZ_m - "обратим" <==> (a, m) = 1\
  |U(ZZ_m)| = phi(m) " - Функция Эйлера"\
  phi(m_1 dots m_n) = phi(m_1) dots phi(m_n), quad (m_i, m_j) = 1 thick (i != j)
$

#definition([
  $psi : NN --> A$ называется мультипликативной, если для взаимно простых $m_1, m_2$
  $
    psi(m_1 m_2) = psi(m_1) psi(m_2)
  $
])

Пусть $n = p$ - простое
$
  phi(p) = p - 1\
  phi(p^m) = p^m - p^(m-1)
$

Пусть $n = p_1^(k_1) dots p_s^(k_s), quad p_i != p_j$, $(p_i^(k_i), p_j^(k_j)) = 1$

$
  phi(n) = phi(p_1^(k_1)) dots phi(p_s^(k_s)) = (p_1^(k_1) - p_1^(k_1 - 1)) dots
  (p_s^(k_s) - p_s^(k_s - 1)) = n dot (1 - 1/p_1) (1 - 1/p_2) dots (1-1/p_s)\
  = n product_(p | n) (1 - 1/p)
$

Показатель, с которым простое число входит в разложение на простые $n!$ равно
$
  [n/p] + [n/p^2] + dots + [n/p^k] + dots
$

$[x]$ - наибольшее целое число не превосходящие $x$ \
$x - [x] = {x}$ - дробная часть\
$0 <= {x} < 1 quad x = [x] + {x}$

#statement([
  $
    [m/(a b)] = [([m/a]) / b]
  $

  _Доказательство_
  $
    m = a dot q + r, quad 0 <= r <= a - 1, quad q = [m/a]\
    q = b dot q_1 + r_1 quad 0 <= r_1 <= b - 1, quad q_1 = [([m/a]) / b]
  $

  $
    m = a (b q_1 + r_1) + r = a b q_1 + a dot r_1 + r <= a b q_1 + a (b-1) +
    (a - 1)\
    = a b q_1 + a b - a + a - 1 = a b q_1 + (a b - 1) ==> \
    0 <= a r_1 + r <= a b - 1
  $

  $
    m = a b q_1 + (a r_1 + r) ==> q_1 = [m / (a b)]
  $
])
