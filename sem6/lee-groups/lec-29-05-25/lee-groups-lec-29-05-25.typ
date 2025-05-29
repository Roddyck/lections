#import "template-lec.typ": conf, theorem, qedsymbol, conseq, definition
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#show: doc => conf([Группы и Алгебры Ли (29.05.2025)], doc)

#theorem(1)[
  $
    phi : G --> H " - гомоморфизм групп Ли",
  $
  $
    d phi : frak(g) --> frak(h)
  $
  $frak(g)$ - алгебра Ли группы $G$, $frak(h)$ - алгебра Ли группы $H$

  #align(center)[#diagram(
      cell-size: 15mm,
      $
        frak(g) edge("r", d phi, "->") edge("d", exp, "->") & frak(h)
        edge("d", exp, "->")\
        G edge("r", phi, "->") & H
      $,
    )
  ]

  _Доказательство_

  $
    X(e) in T_e (G)\
    d phi_e (X(e)) in T_e (H)
  $

  $Y$ - левое инвариантное векторное поле на $H$
  $
    y = d phi(X) in frak(h)\
    y(h) = d L_h (d phi_e X(e))
  $

  $X, Y$ - $phi$ - связные векторные поля
  $
    d phi_g (X(g)) = Y(phi(g)) quad (forall g in G)\
    d phi_g (d L_g X(e)) = d (phi compose L_g)_e (X(e)) = d (L_phi(g))_e
    (d phi_e X(e))\
    d (phi compose L_g)_e = d(L_phi(g) compose phi)_e = (d L_phi(g))_(phi(e) = e)
    compose d phi_e\
    d (L_phi(g))_e (d phi_e X(e)) = Y(phi(g))
  $
  $
    d phi([X_1, X_2]) = [d phi(X_1, d phi(X_2))]
  $
  $X_1, X_2$ - левые инвариантные векторные поля

  $
    phi(exp t x) = tilde(theta)_Y (t) " - однопараметрическая подгруппа в " H y tilde(u)\
    d(phi exp t x)(x) = (d phi)_e (d exp t x)|_(t=0)(x) = d phi_e (x)
  $
  $
    gamma(t) = exp t x\
    lr((d gamma(t)) / (d t)|)_(t=0) = X\
    phi(gamma(t)) = tilde(gamma)(t) in H
  $
  $
    lr((d tilde(gamma)(t)) / (d t)|)_(t=0) = Y\
    d phi_e (overparen(((d gamma(t)) / (d t)|)_(t=0), X)) =
    lr((d tilde(gamma)) / (d t)|)_(t=0) = Y
  $
  $
    x in g\
    exp t x = theta_x (t), quad phi(exp t x) = tilde(theta)_y (t) =
    tilde(theta)_(d phi_e (x))(t)\
    t in RR -->_(x |-> exp t x) G -->^(phi) H\
    phi(exp t x) = theta_(d phi_e (x))(t) = exp(t dot d phi_e (x))\
  $

  при $t = 1$
  $
    phi(exp x) = exp(d phi_e (x))
  $
  #qedsymbol
]

#conseq[
  Пусть $phi_1, phi_2 : G --> H$ - гомоморфизмы групп Ли. $G$ - связна.

  Если $d phi_1 = d phi_2$, то $phi_1 = phi_2$

  _Доказательство_

  $G$ - связна
  $
    ==> forall g in G, thick g = g_1 dot dots dot g_s, quad g_1, dots, g_s in U,
  $
  $U$ - любая фиксированная окрестность $e$.

  Пусть теперь
  $
    U = exp V,
  $
  $V$ - окрестность 0 в $frak(g)$, тогда
  $
    g_1, dots, g_s in U\
    g_i = exp x_i, thick x_i in V
  $
  $
    phi_i (g) = phi_i (exp x_i) dot dots dot phi_i (exp x_s) = , quad i = 1,2\
    exp d phi_i (x_1) dots exp d phi_i (x_s) ==> phi_i (g) =
    exp d phi_i (x_1) dots exp d phi_i (x_s) = phi_s (g)
  $
  #qedsymbol
]

#definition[
  Пусть $M$ - гладкое многообразие. Распределением размерности $k$ на
  многообразии $M$ называется правило, которое каждой точке $x in M$ ставит
  в соответствие $k$-мерное подпространство в касательном пр-ве $T_x$ в этой точке
  $
    P : x in M --> P(x) subset T_x (M), quad dim P(x) = k
  $
]

#definition[
  Говорят, что векторное поле на $Y$ принадлежит распределению $P$, если
  $
    forall x in M quad Y(x) in P(x)
  $
]

$forall x in M quad exists U in.rev x$ и векторные поля $X_1, dots, X_k$
определённые в $U$, такие что ${X_1 (y), dots, X_k (y)}$ - базис
$
  union.big_(x in M) T_x (M) = T(M)\
  p : T(M) --> M\
  p(v_x) = x
$

Если $X_1, dots, X_k$ - гладкие, то распределение называется гладким

#definition[
  $N subset M$ называется интегральным многообразием, если\
  распределение $P$
  $
    forall y in N, thick T_y (N) = P(y)
  $

  Интегральное многообразие называется максимальным, если оно не содержится
  ни в каком большем связном интегральном многообразии.
]

#definition[
  Распределение называется интегрируемым, если каждая его точка лежит в некотором
  интегральном многообразии
]

#theorem("Фробениуса-Фроёбениуса")[
  Пусть $P$ распределение на многообразии $M$. Чтобы распределение было
  интеграруемым, необходимо и достаточно,
  $forall$ гладких полей $X, Y$ принадлежащих распределению
  $
    [X, Y] in P
  $
]

Пусть $X_1, dots, X_n$ - базис $frak(h)$
$
  P : y --> <X_1 (g), dots, X_n (g)>
$
$frak(h) subset frak(g)$ - подалгебра Ли,
${X_1 (g), dots, X_h (g)}$ - базис $T_g (G)$

$
  d L_g^(-1) (T_g (H)) = d L_g^(-1) (<X_1 (g), dots, X_h (g)>) = 
$
$
  e in L_(g^(-1))(H)\
  d L_(g^(-1)) (T_(g_1)(H)) = d L_(g^(-1)) T_(g^(-1) g)(H) = P(g^(-1) g_1)
$


DONT LOOK DOWN THERE
#let haha = "ХУЙ"
#for i in range(100) [
  = #haha #i
]
