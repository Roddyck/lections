#import "template-lec.typ": conf,definition, lemma
#show: doc => conf([Группы и Алгебры Ли. Лекция], doc)

$
  0 in U subset T_e (G)\
  e in W subset G\
  exp: U -> W " - диффеоморфизм"
$
${e_1, dots, e_n}$ - базис $T_e (G)$. $v = x_1, e_1 + dots + x_n e_n$\
$forall g in W thick exists ! v in U thick | thick g = exp v$.

Введём на $W$ координаты $y_1, dots, y_n$, получая $y_i (g) = y_i (exp (x_1 e_1
+ dots + x_n e_n)) = x_i$ 
$
  (W, y_1, dots, y_n) " - координатная карта"
$
#definition[
  ${y_1, dots, y_n}$ называется каноническими координатами в окрестности $W$ 
]

#lemma[
  _Пусть $V$ - координатная окрестность точки $e$, с координатами ${x_1, dots, x_n}$,
  с условием $x_i (e) = 0$. Тогда для достаточно близких к $e$ элементов
  $g_1, g_2 in V slash g_1 dot g_2 in V slash$_ 
  $
    x_i (g_1 g_2) = x_i (g_i) + x_i (g_2) + o(r(x(g_1), x(g_2)))
  $

  _Доказательство:_
  $
    F_i = x_i (mu(x_1, dots, x_n, y_1, dots, y_n)) = x_i (0) + sum
    (partial F_i) / (partial x_j) (0, 0) x_j + sum (partial F_i) / 

    (partial y_j) (0, 0) y_j + dots  \

    x_i (g_1 dot g_2) = sum_j c_j x_j (g_1) + sum_j b_j x_j (g_2) + dots\

    g_2 = e => c_j = 0, thick i != j, quad c_j = 1, thick i = j\
    g_1 = e => b_j = 0, thick i != j, quad b_j = 1, thick i = j\
    #line(length: 100%)\
    x(g_1 g_2) = x(g_1) + x(g_2) + o(r(x(g_1), x(g_2)))
  $
]
// TODO: ХУЙ

$G$ - абелева группа

$g_1 = exp v_1, thick g_2 = exp v_2$ 

Если $v_1, v_2 in V$ достаточно малы (близки к нулю)
$
  v_1, v_2 in V' subset U\
  exp v_i in W, thick i = 1, 2\
  exp v_1 dot exp v_2 in W\
  exp(v_1) exp(v_2) = exp(v_3)
$

По лемме
$
  v_3 = v_1 + v_2 + o(r(v_1, v_2))
$

Для достаточно малых $v_1, v_2$\
Для других $v_1, v_2$ 
$
  exists N in NN | v_1 / N, v_2 / N " - достаточно малые"
$
$
  exp(v_1/N) exp(v_2/n) = exp(v_1/N + v_2/N + o(1/N)) ==>
  (exp(v_1/N) dot exp(v_2/N))^N\
  = (exp(v_1/n))^N dot (exp(v_2/n))^N = exp(v_1/N + v_2/N + o(1/N))^N ==>\
  exp v_1 dot exp v_2 = exp(v_1 + v_2 + o(1)) ==>
  exp v_1 dot exp v_2 = exp(v_1 + v_2)
$

Допустим, что $G$ - связная. Тогда она порождается любой окрестностью еденицы

$e in U$ - откр. $U^2 = U dot U$ - открытое
$
  U = U^(-1)
$
$
  H = union.big_n U^n " - открытая подгруппа в" G
$
$
  G = union.big_alpha H dot g_alpha
$
$H dot g_alpha$ - открытое
$
  G = H union (union.big_(H g_alpha != H) H g_(alpha)) ==>
  H = G \\ (union.big_(H g_alpha != H) H g_(alpha)) " - замкнутое"
$
$
  G = H union (union.big_(H g_alpha != H) H g_(alpha))\
  G = H union M\
  H inter M = emptyset, thick H != emptyset => M = 0
$

$
  g = exp(v_1) dots exp(v_s) = exp(v_1 + dots + v_s) =>\
  exp: T_e (G) --> G " - сюр. гомоморфизм"
$

