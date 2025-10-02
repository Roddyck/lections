#import "template-lec.typ": conf, conseq, definition, lemma, num_eq, theorem
#show: doc => conf([Методы оптимизации. Лекция (01.10.2025)], doc)

= Геометрический смысл принципа Лагранжа

$
  f(x) --> min_(x in X)\
  X = {x in P | g_i (x) <= 0, thick i = overline(1 comma k), thick g_i (x) = 0,
    thick i = overline(k+1 comma n)}
$

$x_(star) in circle(P)$

#num_eq(
  $L_1 : (nabla_x L(x_(star); lambda^(star)_x, lambda^(star)) >= 0 thick forall x in P$,
)

#num_eq(
  $~ nabla_x L(x_(star); lambda^(star)_x, lambda^(star)) = 0$,
)

#definition([
  $g_i (x) <= 0 quad (i in overline(1 comma k))$ активно в точке $x_(star)$,
  если $g_i (x_(star)) = 0$

  В противном случае $g_i (x_(star)) < 0$ ограничение пассивно в точке $x_(star)$
])

$
  I(x_(star)) = {i in overline(1 comma k) | g_i (x_(star)) = 0}\
  S(x_(star)) = I(x_(star)) union {overline(k+1 comma m)
$

#num_eq(
  $
    lambda_0^(star) nabla f(x_(star)) + sum_(i in S(x_(star))) lambda_i^star
    nabla g_i (x_(star)) = 0
  $,
)

$k = m ==> (3) ~$
#num_eq(
  $
    lambda_0^(star) nabla f(x_(star)) + sum_(i in I(x_(star))) lambda_i^star nabla
    g_i (x_(star)) = 0
  $,
)

$lambda_0^star = 1 ==>$
#num_eq(
  $
    -nabla f(x_(star)) = sum_(i in I(x_(star))) lambda_i^star nabla g_i (x_(star)) ~\
    -nabla f(x_(star)) in "cone" {nabla g_i (x_(star)), thick i in I(x_(star))
  $,
)


2)
#num_eq(
  $
    lambda_0^star = 0 ==> (4) ~ sum_(i in I(x_(star))) lambda_i^star nabla g_i
    (x_(star)) = 0
  $,
)

$
  ==> {nabla g_i (x_star), thick i in I(x_star)
$

$n = 2, thick k = m = 3$

$
  cases(
    f(x) = x^1 --> min,
    g_1 (x) = -(x^1)^3 + x^2 <= 0,
    g_2 (x) = -(x^1)^3 - x^2 <= 0,
    g_3 (x) = (x^1)^2 + (x^2)^2 - 1 <= 0,
  )
$

= Достаточные условия регулярности

#theorem([1 (простейшие условия регулярности)], [
  Пусть $x_star in X inter circle(P)$ такое, что
  $
    {nabla g_i (x_star), thick i in S(x_star)}
  $
  линейно независимы

  Тогда если $x_star$ - стационарная точка в задаче (МП), то она регулярна

  _Доказательство_

  Предположим, что $x_star$ - стационарная точка $==> (3)$, где не все коэффиенты
  равны нулю

  Предположим, что $lambda_0^star = 0 ==>$
  $
    sum_(i in S(x_star)) lambda_i^star nabla g_i (x_(star)) = 0,
  $
  т.е. ${nabla g_i (x_star), i in S(x_star)}$ линейно зависима
])

#lemma([Фане], [
  Пусть $X in RR^n$ - непустое выпуклое множество

  $f_i (x), thick i = overline(1 comma k)$ - выпуклые на $X$, $f_i (x),
  thick i = overline(k+1 comma m)$ - аффинны на $RR^n$. Предположим, что
  система
  #num_eq(
    $
      f_i (x) < 0 comma quad i = overline(1 comma k)\
    $,
  )

  #num_eq(
    $
      f_i (x) = 0 comma quad i = overline(k+1 comma m)\
    $,
  )

  неразрешима на $X$. Тогда существуют числа $lambda_I >= 0, thick i = overline(1 comma k),
  quad lambda_i in RR, thick i = overline(k+1 comma m)$, не все равные нулю
  и такие что
  #num_eq(
    $
      sum_(i=1)^(m) lambda_i f_i (x) >= 0 quad forall x in X
    $,
  )

  _Доказательство_

  $
    U = {u in RR^m | exists x in X : f_i (x) <= u_i, thick i = overline(1 comma k)
      , thick f_i (x) = u_i thick i = overline(k+1 comma m)}\
    V = {v in RR^m | v_i < 0, thick i = overline(1 comma k)
      , v_i = 0 thick i = overline(k+1 comma m)}
  $

  $
    U inter V = emptyset
  $

  $
    exists lambda in RR^m : lambda != 0 quad (lambda, u) >= (lambda, v) quad
    forall u in overline(U), thick v in overline(V)
  $
  т.е.

  #num_eq(
    $
      sum_(i=1)^m lambda_i u_i >= sum_(i=1)^k lambda_i v_i quad forall u in overline(U),
      thick forall v_i <= 0, thick i = overline(1 comma k)
    $,
  )

  полагая $v_i = 0, thick i = overline(1 comma k), quad u_i = f_i (x), i =
  overline(1 comma m), quad (10) => (9)$

  ...
])

#conseq([
  Пусть $X subset RR^n$ - непустое выпуклое множество\
  $f_i (x), quad i = overline(0 comma k)$ - выпуклые на $X$

  Предположим что система

  #num_eq(
    $
      f_0 (x) < 0
    $,
  )

  #num_eq(
    $
      f_i (x) < 0, thick i = overline(1 comma k)
    $,
  )

  неразрешима на $X$, а (12) разрешима на $X$

  Тогда существуют числа $lambda_i >= 0, thick i = overline(1 comma k)$
  #num_eq(
    $
      : f_0 (x) + sum_(i = 1)^(k) lambda_i f_i (x) >= 0 quad forall x in X
    $,
  )
])

#lemma([Фаркаша], [
  Пусть $A - m times n$ - матрица, $b in RR^m$ - столбец

  Тогда имеет решение 1 и только 1 из следующих двух систем:
  $
    & 1) thick A x = b, quad x in RR^n, thick x >= 0 \
    & 2) thick p A >= 0, quad (p^star, b) < 0, thick p^star in RR^m
  $
])

#conseq([1

  Пусть $f_i (x) = (a_i, x), thick i = overline(0 comma m)$, где $a_i in RR^n$

  Предположим, что система
  #num_eq(
    $
      f_0 (x) < 0
    $,
  )

  #num_eq(
    $
      f_i (x) <= 0
    $,
  )

  неразрешима на $RR^n$. Тогда $exists lambda_i >= 0 :$

  #num_eq(
    $
      a_0 + sum_(i=1)^m lambda_i a_i = 0
    $,
  )
  т.е.
  #num_eq(
    $
      f_0 (x) + sum_(i=1)^m lambda_i f_i (x) = 0 quad forall x in RR^m
    $,
  )
])

#conseq([2

  Пусть $f_i (x) = (a_i, x) + b_i, thick i = overline(0 comma m), quad a_i in RR^n
  , thick b_i in RR$

  Предположим, что система
  #num_eq(
    $
      f_0 (x) < 0
    $,
  )

  #num_eq(
    $
      f_i (x) <= 0
    $,
  )

  неразрешима на $RR^n$, а подсистема $(19)$ разрешима

  Тогда $exists lambda_i >= 0, quad i = overline(1 comma m)$

  #num_eq(
    $
      a_0 + sum_(i=1)^m lambda_i a_i = 0
    $,
  )

  #num_eq(
    $
      b_0 + sum_(i=1)^m lambda_i b_i = 0
    $,
  )

  _Доказательство_

  Сведем к следствию 1 за счёт повышения размерности на 1

  #num_eq(
    $
      (a_0, h) + b_0 gamma < 0
    $,
  )

  #num_eq(
    $
      (a_i, h) + b_i gamma <= 0
    $,
  )


  #num_eq(
    $
      (0, h) - gamma <= 0
    $,
  )

  Докажем, что система (22) - (24) не имеет решения $(h, gamma) in RR^n times RR$

  Предположим, что решение существует. Тогда $(24) ==> gamma >= 0$

  1. $gamma > 0 ==> x = h/gamma$ - решение (18) - (19) - не может быть

  2. $gamma = 0 ==>_((22), (23))$

  #num_eq(
    $
      (a_0, h) < 0
    $,
  )
  #num_eq(
    $
      (a_i, h) <= 0
    $,
  )

  Пусть $overline(x)$ - решение подсистемы (19), для $alpha > 0$
  $
    x_alpha = overline(x) - alpha h
  $

  $
    f_0 (x_alpha) = (a_0, overline(x) + alpha h) + b_0) = (a_0, overline(x)) + b_0
    + alpha (a_0, h) < 0
  $

  $
    f_i (x_alpha) = (a_i, overline(x)) + b_i + alpha (a_i, h) <= 0
  $

  Т.о. $x = x_alpha$ - решение (18), (19) - не может быть

  По следствию 1 $exists lambda_i >= 0, thick i = overline(1 comma m+1)$
  $
    (a_0, b_0) + sum_(i=1)^m lambda_i (a_i, b_i) + lambda_(m+1) (0_n, -1) = (0_n, 0)
  $
])


#conseq([3
  Пусть $X subset RR^n$ - замкнутое полиэдр на $X = RR^n$

  $f_i (x), thick i = overline(0 comma m)$ - аффинные

  Предположим, что система

  #num_eq(
    $
      f_0 (x) < 0
    $,
  )

  #num_eq(
    $
      f_i (x) <= 0 quad i = overline(1 comma k)
    $,
  )

  #num_eq(
    $
      f_i (x) = 0 quad i = overline(k+1 comma m)
    $,
  )

  неразрешима на $X$, а подсистема (28), (29) разрешима. Тогда
  $exists lambda_i >= 0 thick i = overline(1 comma k), lambda_i in RR thick
  i = overline(k+1 comma m)$

  #num_eq(
    $
      f_0 (x) + sum_(i=1)^m lambda_i f_i (x) >= 0 quad forall x in X
    $,
  )

  $
    X = {x in RR^n | g_t (x) <= 0, quad t = overline(1 comma kappa.alt)}
  $

  рассмотрим систему

  #num_eq(
    $
      f_0 (x) < 0
    $,
  )
  #num_eq(
    $
      f_i (x) <= 0 quad i = overline(1 comma k)
    $,
  )
  #num_eq(
    $
      f_i (x) < 0, thick -f_i (x) <= 0 quad i = overline(k+1 comma m)
    $,
  )
  #num_eq(
    $
      g_t (x) <= 0 quad t = overline(1 comma kappa.alt)
    $,
  )




])
