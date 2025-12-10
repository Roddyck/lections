#import "template-lec.typ": *
#show: doc => conf([], doc)

= Условия оптимальности в недиф. форме в задаче МП

$
  f(x) --> min_(x in X)\
  X = {x in P | g_i (x) <= 0
$

#definition[
  Пусть $X, Y$ -- произвольные множества, $F : X times Y --> RR$

  Тогда $(x_*, y_*) in X times Y$ называется седловой точкой функции $F$, если
  $
    F(x_*, y) <= F(x_*, y_*) <= F(x, y_*) quad forall x in X, y in Y
  $
]

#note[
  Понятие седловой точки заимствовано из (...) геометрии
]

$
  z = x^2 - y^2 quad (x, y) in RR times RR\
  (x_*, y_*) = (0, 0)\
  cases(
    z(x_*, y_*) = z(0,0) <= z(x, y_*) = x^2\
    z(x_*, y_*) = z(0,0) >= z(x_*, y) = -y^2
  ) ==> (x_*, y_*) = (0, 0) " - седловая точка"
$

Составим регулярную функцию Лагранжа

$
  L(x, lambda) = f(x) + sum_(i = 1)^(m) lambda_i g_i (x), quad x in P, thick
  lambda in Lambda = {lambda in RR^m | lambda_i >= 0, thick i = 1, dots, k}\
  (x_0, lambda^*) in P times Lambda "- седловая точка"
$

$
  L(x_*, lambda) <= L(x_*, lambda^*) <= L(x, lambda^*) quad forall x in P, lambda in Lambda
$

#lemma[(Критерий седловой точки $L(x, lambda)$)][
  $(x_*, lambda^*) in P times Lambda$ является седловой точкой функции
  $L(x, lambda)$ на $P times Lambda <==>$ выполняется условия
  $
    L(x_*, lambda^*) = min_(x in P) L(x, lambda^*) quad lambda_i^* g_i (x_*) = 0\
    x_* in X
  $

  _Доказательство_

  1. *Необходимость*

  Пусть $(x_*, lambda^*) in P times Lambda$ - седловая точка
  $
    f(x_*) + sum_(i = 1)^(m) lambda_i g_i (x_*) <= f(x_*) + sum_(i = 1)^(m) lambda_i^*
    g_i (x_*) ~\
    sum_(i=1)^(m) (lambda_i - lambda_i^*) g_i (x_*) >= 0 quad forall lambda in Lambda
  $

  Пусть $j in {1, dots, k}$. Возьмем $lambda_i = lambda_i^* thick forall i != j$
  $
    lambda_j = lambda_j^* + 1 >= 0
  $
  т.е. $lambda in Lambda ==> -g_j (x_*) >= 0$, т.е. $g_j (x_*) <= 0 quad forall
  j = 1, dots, k$

  Пусть $j in {k+1, dots, m}$. Возьмем $lambda_i = lambda_i^* thick forall i != j$
  $
    lambda_j = lambda_j^* + g_j (x_*) ==> -g^2_j (x_*) >= 0 ==>
    g_j^2 (x_*) = 0 ==> g_j (x_*) = 0 quad forall j = k+1, dots, m
  $

  Пусть $j in {1, dots, k}$. Возьмем $lambda_i = lambda_i^* thick forall i != j$
  $
    lambda_j = 0 ==> 0 >= lambda_j^* g_j (x_*) >= 0 ==> lambda_j^* g_j (x_*) = 0
    quad forall j = 1, dots, k
  $

  2. *Достаточность*

  Пусть $(x_*, lambda^*) in P times Lambda$ и выполнены условия леммы.
  Докажем что $(x_*, lambda^*)$ - седловая точка.

  В соотвествии с условием 3. Определим
  $
    I(x_*) = {i in {1, dots, k} | g_i (x_*) = 0}\
    S(x_*) = I(x_*) union {k+1, dots, m} ==> g_i (x_*) = 0 quad forall i in S(x_*)\
    ==> (lambda_i^* - lambda_i) g_i (x_*) = 0 quad forall i in S(x_*)
  $

  Пусть $j in {1, dots, m} backslash S(x_*) = {1, dots, k} backslash I(x_*)$
  $
    ==> g_j (x_*) < 0 ==> lambda_j^* = 0 ==>
    (lambda_j^* - lambda_j) g_j (x_*) = - lambda_j g_j (x_*) >= 0 quad forall
    j in {1, dots, m} backslash S(x_*)
  $
]

#theorem[(Достаточное условие глобального минимума в задаче МП)][
  Пусть $x_* in P$ такова, что $exists lambda^* in Lambda : (x_*, lambda^*)$ - с.т.\
  $L(x, lambda)$ не $P times Lambda$

  Тогда $x_* in X$ и является точкой глобального минимума в задаче МП.
  Более того
  $
    f_* = inf_(x in X) f(x) = f(x_*) = L(x_*, lambda^*)
  $

  В соотвествии с леммой 1 выполняются условия a), b), c). Из c) $=> x_* in X$.

  b) $=>$
  $
    f(x_*) = f(x_*) + sum_(i = 1)^(k) lambda_i^* g_i (x_*) +
    sum_(i = k+1)^(m) lambda_i^* g_i (x_*) = L(x_*, lambda^*) <= L(x, lambda^*)\
    <= f(x) + sum_(i=1)^(m) lambda_i^* g_i (x) quad forall x in P
  $

  В частности, $forall x in X$ получаем
  $
    f(x_*) <= f(x) + sum_(i=1)^(k) lambda_i^* g_i (x) + sum_(i=k+1)^(m) lambda_i^*
    g_i (x) <= f(x)
  $
  т.е. $f(x_*) <= f(x) quad forall x in X ==> x_*$ -- точка глобального минимума.
  #qedsymbol
]

= Задача ВП в основной форме

#num_eq(
  $
    f(x) --> min_(x in X)\
    X = {x in P | g_i (x) <= 0, thick i = 1, dots, k}
  $,
)

где $P subset RR^n$ - выпукло, $f(x), g_i (x), thick i = 1, dots, k$ - выпуклые на $P$

Будем говорить, что в задаче (1) выполено условия Слейтара, если
$
  exists overline(x) in P : g_i (overline(x)) < 0 quad forall i = 1, dots, k
$

Всякую задачу ВП можно представить в основной форме, если каждое ограничения
равенства представить в виде двух неравенств

Задача (1) с условием Слейтера называется регулярной

#theorem[2][
  Пусть в задаче (1) выполено условие Слейтера.

  Тогда $x_* in P$ - решение задачи (1). Тогда и только тогда, когда
  $
    exists lambda^* in Lambda : (x_*, lambda^*) "- седловая точка" L(x, lambda)
    "на" P times Lambda
  $

  _Доказательство_

  1. Достаточность следует из теоремы 1.

  2. *Необходимость*

  Пусть $x_* in P$ - решение. Тогда $x_* in X ~ c)$

  Положим $f_* = f(x_*)$ и рассмотрим систему
  $
    cases(
      f(x) - f_* < 0,
      g_i (x) < 0 comma quad i = overline(1 comma k)
    )
  $

  Докажем, что она неразрешима на множестве $P$

  $exists tilde(x) in P$ - решение системы
  $
    ==> f(tilde(x)) < f_* = f(x_*)\
    g_i (tilde(x)) < 0, quad forall i = overline(1 comma k) ==> tilde(x) in X
  $

  Противоречие с оптимальностью точки $x_*$, тогда система неразрешима

  Можем воспользоваться следствием леммы Фанна
  $
    exists lambda_i^* >= 0, thick i = 1, dots, k : f(x) - f_* + sum_(i=1)^k
    lambda_i^* g_i (x) >= 0 quad forall x in P
  $
  т.е.

  #num_eq(
    $
      f(x) + sum_(i=1)^k lambda_i^* g_i (x) >= f_* quad forall x in P
    $,
  )

  При $x = x_*$ получаем
  $
    f(x_*) + sum_(i=1)^k lambda_i^* g_i (x_*) >= f_* quad forall x in P
  $
  $
    0 >= sum_(i=1)^k lambda_i^* g_i (x_*) >= 0 ==>
    sum_(i=1)^k lambda_i^* g_i (x_*) = 0 ==> lambda_i^* g_i (x_*) = 0 quad
    forall i = 1, dots, k ~ b)
  $

  Из b) получаем
  $
    f_* = f(x_*) = f(x_*) + sum_(i=1)^k lambda_i^* g_i (x_*) = L(x_*, lambda^*)
  $

  $
    ==> L(x, lambda^*) >= L(x_*, lambda^*) quad forall x in P ~ a)
  $
  #qedsymbol
]

#note[
  Ошибочно думать, что если внутренность множества $X$ то условие Слейтера выполнено
]

*Пример*

$
  f(x) = x --> min_(x in X)\
  X = {x in RR | g(x) <= 0}\
  g(x) = cases(
    x^2 comma & quad x <= 0,
    0 comma & quad x > 0
  )
$

$
  X = {x in RR | x >= 0} = RR_+\
  x_* = 0, thick f_* = f(x_*) = 0
$

$circle(X) != emptyset quad g(x) < 0$ не может быть

$
  L(x, lambda) = f(x) + lambda g(x)
$

Предположим, что существует седловая точка $(x_*, lambda^*) in P times Lambda =
RR times RR_+ ==> x_* = 0$

a)
$
  L(x, lambda^*) >= L(x_*, lambda^*) quad forall x in P ~\
  x + lambda g(x) >= 0 quad forall x in RR
$

1. $lambda^* = 0 : x >= 0 quad forall in RR$ - не может быть

2. $lambda^* > 0 :$ для $x < 0 : x + lambda^* x^2 = x(1 + lambda^* x) >= 0
  quad forall x in X$ нарушается для $x in (-1/lambda^*, 0)$

Тогда седловых точек не существует

#num_eq(
  $
    f(x) --> min_(x in X)\
    X = {x in P | g_i (x) <= 0, thick i = 1, dots, k, thick g_i (x) = 0, thick
      i = k+1, dots, m}
  $,
)
где $P subset RR^n$ - замкнутый полиэдр или $P = RR^n$, $g_i (x), thick i = 1, dots, m$
- аффинные, $f(x)$ - выпукла на $P$

Регулярна если выполняется одно из двух, либо $f(x)$ диф-ма в окрестности,
либо $f(x)$ выпукло на некотором открытом выпуклом множестве содержащие $P$

#theorem[3][
  Пусть задача (3) регулярна

  Тогда $x_* in P$ - решение $<==>$
  $
    exists lambda^* in Lambda : (x_*, lambda^*) - "с.т." L(x, lambda) "не" P times Lambda
  $

  _Доказательство_
  ....

  Если $x_* in P$ - решение, то $x_* in X$ и кроме того
  $
    exists lambda^* in Lambda : L_1) thick (nabla_x L(x_*, lambda^*), x - x_*) >= 0
    quad forall x in P\
    L_2) thick lambda_i^* g_i (x_*) = 0 quad forall i = overline(1 comma k)
  $

  .... Необходимость доказана.

  Достаточность следует из Теоремы 2
]

#num_eq(
  $
    f(x) --> min_(x in X)\
    X = {x in P | g_i (x) <= 0, thick i = overline(1 comma k), thick g_i (x) = 0,
      thick i = overline(k+1 comma m)}
  $,
)

$P subset RR^n$ - вып., $f, g_i : P --> RR, quad i = overline(1 comma k)$ - вып.
$g_i (x), thick i = overline(k+1 comma m)$ - афф.

#theorem[4][
  Пусть (4) - регулярная задача ВП

  Тогда $x_* in P$ - решение задачи (4), $<==> exists lambda^* in Lambda : 
  (x_*, lambda^*$ - с.т. $L(x, lambda)$ не $P times Lambda$ 
]

*Алгоритм решения*

1. Проверям, что задача ВП
2. Проверяем регулярность
3. Выписываем условий a), b), c) и находим соответствующие точки $x_*$ и 
  $lambda^*$ 

#note[
  При анализе условия a), во-первых, полезно критерий оптимальности в классе
  выпуклых функций
  $
    a') thick (diff L(x_*, lambda^*)) / (diff h) >= 0 quad forall h in V(x_*, P)
  $

  Кроме того в случаем дифференцируемых функций 
  $
    a'') thick (nabla_x L(x_*, lambda^*), x - x_*) >= 0 quad forall x in P
  $
]

= Достаточное условие существования решения задачи ЛП
$
  f(x) = (0, x) --> min_(x in X)\
  X subset RR^n "- замкнутый полиэдр"
$

$
  X = M + K
$
$M$ - выпуклый огр. замк. многогранник, $K$ - замк. вып. многогранный конус

#theorem[5][
  Пусть $X != emptyset, thick f_* = inf_(x in X) f(x) > - oo$ 

  Тогда задача ЛП имеет решение 

  _Доказательство_

  $
    forall x in X quad exists y in M, z in K : x = y + z\
    ==> f(x) = f(y) + f(z) ==> f_* = inf_(y in M) f(y) + inf_(z in K) f(z) ==>\
    ? thick exists y_* in M, thick z_* in K : inf_(y in M) f(y) = f(y_*), thick
    inf_(z in K) f(z) = f(z_*) ==> x_* = y_* + z_* "- решение"
  $
  
  Докажем, что $z_* = 0_n in K$ 
  $
    f(z) >= f(z_*) = 0 quad forall z in K
  $

  Предположим, что 
  $
    exists tilde(x) in K : f(tilde(z)) < 0
  $

  $
    z_lambda = lambda tilde(z) in K\
    f(z_(lambda)) = lambda f(tilde(z)) --> - oo ==> f_* = -oo
  $

  противоречие
  #qedsymbol
]
