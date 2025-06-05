#import "template-lec.typ": conf, theorem, lemma, qedsymbol, statement
#show: doc => conf([Функан. Лекция (05.06.2025)], doc)

= Теорема Гильберта-Шмидта

$
  {delta_n}, quad delta_n -> delta_(n+1) -> 0, quad delta_n > 0
$

По лемме 2 $forall delta_n$ сопоставляется конечная ортонормированная система
$|lambda| > delta_n$.

Упорядочим $|lambda|$ по убыванию. Если какому-то $lambda$ соотв. несколько
собств. векторов, будем повторять его в записи. Таким образом справедливо:
$
  A e_n = lambda_n e_n
$

Объединение ортов даёт о.н.с в $X$ - сепарабельное гильбертово пространство

Рассмотрим множество $R$ всех сумм и сходящихся рядов вида:
$
  sum_(n) c_n e_n
$
$R$ - замкнутое линейной подпространство в $X$. Тогда это подпространство.
${e_n}$ - базис $R$

$
  A (sum_(n) c_n e_n) = sum c_n A e_n = sum c_n lambda_n e_n in R\
  A : R -> R
$

Рассмотрим $Z = R^tack.t$
$
  z in Z quad (A z, x) = (z, A x) = 0\
  A z in R^tack.t\
  A : Z -> Z
$

Если оператор $A$ самосопряженный компактный, то по лемме 4 у него есть собственный
вектор, который соответствует собственному значению $lambda_0, thick |lambda_0|
= ||A||_((z -> z))$. Тогда $lambda_0 = 0$. Т.е. $||A|| = 0, thick A z = 0$

#theorem("Гильберта-Шмидта")[
  $X$ - гильбертово сепарабельное. $A : X -> X$ - ненулевой самосопряженный компактный
  оператор.

  Для этого оператора существует конечная или счетная система ортонормированная,
  состоящая из собственных векторов $e_n$, соответствующих ненулевым собственным
  значениям $lambda_n$, таким что
  $forall x in X, med A x$ однозначно раскладуются в ортогональную сумму
  или сходящийся ряд следующего вида:
  $
    &x = sum_n c_n e_n + z, quad A z = 0\
    &A x = sum_n lambda_n c_n e_n
  $
]

$
  A ~ mat(
    lambda_1, 0, dots, 0;
    0, lambda_2, dots, 0;
    dots, dots, dots.down, dots;
  )
$

#statement[
  *Альтернатива Фредгольма.*
  $
    x - A x = y,
  $
  где $x,y in X$ - сепарабельное гильбертово пространство, $A$ - компактный
  самосопряженный
  $
    &x = sum_n c_n e_n + z, quad A z = 0\
    &A x = sum_n c_n lambda_n e_n\
    &y = sum_n d_n e_n + u, quad A u = 0
  $
  $
    z, u tack.t e_n quad forall n
  $

  $
    sum c_n e_n - sum c_n lambda_n e_n + z = sum d_n e_n + u\
    sum_n ((1 - lambda_n)c_n - d_n)e_n + (z - u) = 0, quad (z - u) tack.t e_n\
    => z - u = 0, quad (1 - lambda_n)e_n - d_n = 0
  $

  Если $forall n quad lambda_n != 1$
  $
    c_n = d_n / (1 - lambda_n)
  $

  Если $exists k : lambda_k = 1 => 0 dot c_k = d_k = 0$
  $
    d_k = (y, e_k) = 0 => y tack.t e_k
  $
  $
    sum_k c_k e_k " - собственные векторы оператора" A
  $
]

Известно, что эта альтернатива справедлива и для не самосопряженных операторов.


//#for i in range(1000) [
//  = ХУЙ #i
//]
