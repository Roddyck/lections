#import "template-lec.typ": conf
#show: doc => conf([Мат. логика. Лекция (20.10.2025)], doc)

#let th = math.op([Th])

= Метод элиминации кванторов

$th$ - теория

$A in th ?$

*Шаг элиминации*

$exists x A, quad A$ не содержит кванторов, атомарно замкнутая в сочетании с $exists x$

$[exists x A] <-> B in th ~ exists x A equiv^th B, quad B$ без кваноторов и без $x$

Заменить $exists x A$ на $B$

$
  not (t < p), thick t,p "- термы"\
  not (t < p) equiv^th (p < t) or (p = t)\
  not (t = p) equiv^th (p < t) or (t < p)
$

$
  cases(
    reverse: #true,
    p_1 dots p_k,
    p_1 dots p_k,
  ) "термы"
$

$
  exists x [(x < p_1) and (x < p_2) and dots and (x < p_k) and (q_1 < x) and
    dots and (q_m < x)] equiv^th \
  equiv^th (q_1 < p_1) and (q_1 < p_2) and dots and (q_1 < p_k) and (q_2 < p_1) and\
  dots and (q_2 < p_k) and dots and (q_m < p_1) and dots and (q_m < p_k)
$

$
  A equiv exists z forall y exists x [(5x + 3/4 < y + z + 1) and (z + 4/5 < 8x
      + 1/2) or (4y < 5z)]\
  A equiv exists z forall y [exists x[(5x < y + z + 1/4) and (z + 3/10 < 8x)]
    or (4y < 5z)]\
  A equiv exists z forall y [exists x[(40x < 8y + 8z + 1/4) and (5z + 3/2 < 40x)]
    or (4y < 5z)]\
  A equiv exists z forall y [(5z + 3/2 < 8y + 8z + 2) or (4y < 5z)]\
$

== Арифметика Пресбургера

$
  sigma_(Z) = (0, 1, +, -, =, <, D_2, D_3, dots)
$

$D_m$ - одноместный предикатный символ

$
  (p < q) quad (p = q) quad D_m (p)\
  not (p < q) equiv (q - 1 < p) equiv (q < p + 1)\
  not (p = q) equiv (p < q) or (q < p)
$

$
  cases(
    reverse: #true,
    (k x < p) "- ограничение сверху"\
    (p < k x) - "ограничение снизу"
  ), p "- терм без x", thick k in NN
$

$
  (k x = p) equiv (k x < p + 1) and (p - 1 < k x)
$

$
  (k x < p) and (l x < q) equiv (k l x < l p) and (k l x < k q) equiv
  [(l p < k p) and (k x < p)]\
  or [(k q < l p + 1) and (l x < p)]
$

/Там пример из файлика/

*Надо:*\
под $exists [...]$ не более одной формулы, вида $D_m (x - i), thick i in NN$ 

$
  not D_m (p) = or.big_(r = 1)^(m-1) D_m (p - r) quad p "- терм"
$

$
  k in ZZ, thick t "- терм с другими переменными"\
  D_m (k x - t) = or.big_(r = 0)^(m-1) [D_m (k x - r) and D_m (t - r)]
$

$
  D_m (k x - r) = or.big_(i = 0)^(m-1) [D_m (x - i) and D_m (k i - r)]
$

$
  m = p_1^(alpha_1) p_2^(alpha_2) dots p_s^(alpha_s)\
  D_m (x - i) = D_(p_1^(alpha_1)) (x - i) and dots and D_(p_s^(alpha_s)) (x - i)
$

$
  D_(p^(alpha_1)) (x - i) and D_(p^(alpha_2)) (x - i) equiv D_(p^(alpha_2)) (x - i) and
  D_(p^(alpha_1)) (i_2 - i_1)\
  alpha_1 <= alpha_2
$

$
  D_(m_1) (x - i_1) and D_(m_2) (x - i_2) and dots and D_(m_n) (x - i_2) equiv\
  D_M (x - K)
$

$m_1, m_2, dots, m_n$ - попарно взаимно простые

$
  exists K in {0, dots, M - 1}, quad M = m_1 m_2 dots m_n\
  K equiv i_j (mod m_j) thick forall j = 1, dots, n
$

= хуй сто раз 
#for _ in range(1024) [
  = хуйов тебе сарай - сиди и разбирай
]

