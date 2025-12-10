#import "template-lec.typ": *
#show: doc => conf([Метода оптимизации. Лекция (10.12.2025)], doc)

= Теория двойственности в задаче МП

$
  f(x) --> min_(x in X)\
  X = {x in P | g_i (x) <= 0, thick i = overline(1 comma k), g_i (x) = 0,
    thick i = overline(k+1 comma m)}\
  P subset RR^n, f, g_i : P --> RR, thick i = 1, dots, m\
  Lambda = { lambda in RR^m | lambda_i >= 0, i = 1, dots, k}\
  L(x, lambda) = f(x) + sum_(i = 1)^(m) lambda_i g_i (x), quad x in P, lambda
  in Lambda
$

$
  f_* = cases(
    inf_(x in X) f(x) comma & quad X != emptyset,
    +oo comma & quad X = emptyset
  )\
  phi(x) = sup_(lambda in Lambda) L(x, lambda)
$


#lemma[1][
  $
    phi(x) = cases(
      f(x) comma & quad x in X,
      +oo comma & quad x in P backslash X
    )
  $

  Следовательно,
  $
    inf_(x in P) sup_(lambda in Lambda) L(x, lambda) = inf_(x in P) phi(x)
    = f_*
  $

  _Доказательство_

  1. Пусть $x in X ==>$
  $
    sum_(i = 1)^(m) lambda_i g_i (x) = sum_(i = 1)^k lambda_i g_i (x) +
    sum_(i = k+1)^m lambda_i g_i (x) <= 0
  $
  $
    ==> L(x, lambda) <= f(x) quad forall lambda in Lambda\
    L(x, lambda) = f(x) quad lambda = 0_n in Lambda
  $

  2. Пусть $x in P backslash X ==>$ имеет место один из 3-х случаев:
  1) $exists j in overline(1 comma k): g_j (x) > 0$ \
  Положим $lambda_i = 0 forall i != j, lambda_j -> +oo ==>$
  $
    lambda in Lambda "и при этом"\
    L(x, lambda) = f(x) + lambda_j g_j (x) --> +oo ==>\
    phi(x) = sup_(lambda in Lambda) L(x, lambda) = +oo
  $

  2) $exists j in overline(k+1 comma m) : g_j (x) > 0$. Аналогично 1),
  $phi(x) = +oo$

  3) $exists j in overline(k+1 comma m) : g_j (x) < 0$. Положим $lambda_i = 0$
  $forall i != j, lambda_j --> -oo ==>$
  $
    lambda in Lambda\
    L(x, lambda) = f(x) + lambda_j g_j (x) --> +oo ==> phi(x) = sup L(x, lambda)
    = +oo
  $
]

#note[
  В соответствии с леммой 1
  $
    "(МП)" ~ phi(x) --> min_(x in P)
  $
]

$
  psi(lambda) = inf_(x in P) L(x, lambda)\
  Lambda' = {lambda in Lambda | psi(lambda) > 0}
$

#definition[
  Двойственной задачей по отношению к задача МП называется
  $
    psi(lambda) --> min_(lambda in Lambda')
  $
  при этом задача (МП) называется прямой
]

#note[
  Очевидно, что задача (МП') $~ psi(lambda) --> max_(lambda in Lambda)$
]

$
  psi_* = cases(
    sup_(lambda in Lambda') comma & quad Lambda' != emptyset,
    -oo comma & quad Lambda' = emptyset,
  )
$

= Свойства двойственной задачи

#theorem[1][
  Множество $Lambda'$ выпукло, ф-я $psi(lambda)$ выпукла на $Lambda'$

  _Доказательство_
  $
    forall lambda, mu in Lambda'\
    forall alpha in [0; 1]\
    psi(alpha lambda + (1 - alpha) mu) = inf_(x in P) L(x, alpha lambda +
      (1 - alpha) mu) = inf_(x in P) {alpha L(x, lambda) + (1 - alpha) L(x, mu)} >=\
    inf_(x in P) alpha L(x, lambda) + inf_(x in P) (1-alpha) L(x, mu) =
    alpha inf_(x in P) L(x, lambda) + (1-alpha) inf_(x in P) L(x, mu) =\
    = alpha psi(lambda) + (1-alpha) psi(mu) > -oo ==> alpha lambda + (1-alpha)
    mu in Lambda' ==> Lambda' "- выпукло"
  $
  #qedsymbol
]

#note[
  Очевидно, что двойственную задачу можно переписать
  $
    -psi(lambda) --> min_(lambda in Lambda') quad ("МП"'_(min))
  $
]

#theorem[2][
  $forall x in P, lambda in Lambda$ имеем:
  #num_eq(
    $
      psi(lambda) <= psi_* <= f_* <= phi(x)
    $,
  ) <eq-1>

  _Доказательство_

  $
    psi(lambda) = inf_(xi in P) L(xi, lambda) <= L(x, lambda) ==>\
    psi_* = sup_(lambda in Lambda) psi(lambda) <= sup_(lambda in Lambda)
    L(x, lambda) = phi(x) quad forall x in P ==>\
    psi_* <= inf_(x in P) phi(x) = f_*
  $

  Т.о. $psi_* <= f_*$
  #qedsymbol
]

#note[
  В частности из неравенства @eq-1:
  $
    psi(lambda) <= f(x) quad forall x in X, lambda in Lambda'
  $
  по лемме 1
]

#theorem[3 (О структуре множества с.т.)][
  Ф-я $L(x, lambda)$ имеет седловую точку на $P times Lambda <==>$
  выполняются условия:
  #num_eq(
    $
      X_* != emptyset, Lambda'_* != emptyset, f_* = psi_*
    $,
  ) <eq-2>
  где $X_*$ - множество решений прямой задачи, $Lambda'_*$ - множество
  решений двойственной задачи

  Более того, множество с.т. совпадает с $X_* times Lambda'_*$

  _Доказательство_

  Если $X != emptyset$, то $X_* = {x in P | phi(x) = f_*} = {x in X | f(x) = f_*}$ \
  Если $Lambda' != emptyset$, то $Lambda'_* = {lambda in Lambda() | phi(x) = f_*}
  = {lambda in Lambda' | f(x) = f_*}$ \

  Если $X = emptyset$, то $X_* = emptyset$,\
  Если $Lambda' = emptyset$, то $Lambda'_* = emptyset$,\

  1. Необходимость

  Пусть $(x_*, lambda^*) in P times Lambda$ - с.т $L(x, lambda)$ на
  $P times Lambda$, т.е. $L(x_*, lambda) <= L(x_*, lambda^*) <= L(x, lambda^*)
  quad forall x in P, lambda in Lambda$, т.е.
  $
    cases(
      L(x_*, lambda^*) = inf_(x in P) L(x, lambda^*) = psi(lambda^*),
      L(x_*, lambda^*) = sup_(lambda in lambda) L(x_*, lambda) = phi(x_*),
    )
  $

  Т.о.
  $
    L(x_*, lambda_*) = psi(lambda^*) <= psi_* <= f_* <= phi(x_*) = L(x_*, lambda^*)\
    ==> psi(lambda^*) = psi_* ==> phi(x_*) = f_* ==> x_* in X_*\
    f_* = psi_*, X_* != emptyset, Lambda'_* != emptyset
  $

  Т.о. выполняется @eq-2, $x_*, lambda^*) in X_* times Lambda'_*$

  2. Достаточность

  Пусть выполняется @eq-2

  Возьмем $forall (x_*, lambda^*) in X_* times Lambda'_*$
  $
    psi(lambda_*) = psi_* = f_* = phi(x_*) ==>\
    psi_* = psi(lambda_*) = inf_(x in P) L(x, lambda^*) <= L(x_*, lambda^*)
  $
]

#note[
  В соответствии с теоремой 3 множество с.т представляет собой прямое
  произведение $X_*$ на $Lambda'_*$. В частности это означает, что если имеется
  две седловые точки $(x_*, lambda^*), (tilde(x), tilde(lambda)) ==>$
  $
    (x_*, tilde(lambda)), (tilde(x), lambda^*) in X_* times Lambda'_*
  $

  $
    L(x_*, lambda^*) = L(tilde(x), tilde(lambda)) = L(x_*, tilde(lambda)) =
    L(tilde(x), lambda^*) = psi(lambda^*) = psi(tilde(lambda)) =
    phi(x_*) = phi(tilde(x)) = f(x_*) =\
    = f(tilde(x)) = f_* = psi_*
  $
]

#conseq[
  $(x_*, lambda^*) in P times Lambda$ является с.т. $L(x, lambda) <==>$
  $
    psi(lambda^*) = phi(x_*) thick (= f(x_*))
  $
]

#theorem[4 (Теорема Куна-Таккера в форме двойственности)][
  Пусть (МП) - регулярная задача ВП

  Тогда $x_* in X$ - решение задачи (МП) (т. глоб мин.) $<==> exists lambda^*
  in Lambda :$ выполняется соотношение двойственности
  #num_eq(
    $
      psi(lambda^*) = f(x_*)
    $,
  ) <eq-3>
  равносильное совокупности условий:
  $
    a) thick L(x_*, lambda^*) = min_(x in P) L(x, lambda^*)\
    b) thick lambda_i^* g_i (x_*) = 0, quad i = 1, dots, k
  $

  _Доказательство_

  В соотв. с т. Куна-Таккера в форме с.т. $x_* in X$ - решение (МП)
  $<==> exists lambda^* in Lambda : (x_*, lambda^*)$ - седловая точка $~$ @eq-3  

  С другой стороны согласно критерию с.т. и ... тот факт, что $(x_*, lambda^*)$ - с.т. 
]

#note[
  Тот набор $lambda in Lambda^*$, который отвечает решению называется вектором
  Куна-Таккера отвечающим решению $x_*$ 

  Согласно замечанию после т.3 множество векторов Куна-Таккера остается одно
  и тоже независимо от выбора конкретного решения $x_*$.
]

Непосредствнно из следствия 1 и теоремы 4 вытекает
#theorem[5 (Теорема двойственности)][
  Пусть (МП) регулярная задача выпуклого программирования

  Тогда ${X_* != emptyset} ==> {Lambda'_* != emptyset "и совпадает со мн-ом в-в К.-Т."$ 
  и более того выполняется соотношение двойственности
  $
    psi(lambda^*) = f(x_*) quad forall x_* in X_*, lambda^* in Lambda'_*}
  $
]

= Решение регулярных задач ВП с помощью т. Куна-Таккера в дифф-ой форме

*Алгоритм решения*
1. Проверяем, что данная задача является задачей ВП.
т.е. надо убедиться, что целевая функция выпукла и ф-и $g_i$ отвечающие
неравенству выпуклы, а $g_i$ отв. равенству аффинны. Нужно, чтобы все
фун-и были гладкими

2. Проверяем условие регулярности (либо условие Слейтера, либо условие линейности)

_Если проверка удалась_

В соотв. с теоремой допустимая точка $x_* in X$ является решением т. и т. т.
  когда это есть регулярная стационарная точка

Поскольку любая стац. точка является решением, дост. усл. сущ. решения проверять
не надо.

Если сильно выпукла, то полезно отметить, поскольку в этом случае сразу
можно заключить, что сущ. един. точка глоб. минимума

_Если нет_

То теорема не приминима и решаем с помощью принципа Лагранжа

Далее будем считать, что т. К.-Т. применима тогда

3. Составляем рег. ф-ю Лагранжа, выписываем условия Лагранжа. По той же схеме,
  что и в прошлый раз находим стационарные точки

4. В соотв. с теоремой К-Т заключаем, что каждая стац. точка есть точка глоб.
  мин.
