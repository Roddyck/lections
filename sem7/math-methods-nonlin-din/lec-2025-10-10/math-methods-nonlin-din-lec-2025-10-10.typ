#import "template-lec.typ": conf, definition, lemma, note, num_eq, theorem
#show: doc => conf([Мат. методы нелинейной динамики. Лекция 2025.10.10], doc)

#num_eq(
  $
    cases(
      dot(x) = P(x, y),
      dot(y) = Q(x, y)
    )
  $,
) <diff-system>

#definition([
  Периодическое решение $x = phi(t), y = psi(t)$ называется устойчивым по Ляпунову,
  если
  $
    forall epsilon > 0 thick exists delta(epsilon) > 0 : forall "решение" x(t), y(t) :
    |phi(t_0) - x(t_0)| < delta, med |psi(t_0) - y(t_0)| < delta ==>\
    |phi(t) - x(t)| < epsilon, med |psi(t) - y(t)| < epsilon quad forall t >= t_0
  $
])

#note([
  Из устойчивости по Ляпунову следует орбитальная устойчивость.
])

*Пример*
$
  cases(
    dot(x) = x,
    dot(y) = 0
  )\
  y = "const"
$

Все траектории, кроме состояния равновесия, являются орбитально устойчивыми.
$
  cases(
    x = x_0 e^(t - t_0),
    y = y_0
  ) quad
  cases(
    tilde(x) = x_1 e^(t - t_1),
    tilde(y) = y_1
  )\
  |x(t) - tilde(x)(t)| = |x_0 - x_1| e^(t - t_0) -->_(t --> oo) oo
$

При исследовании устойчивости периодических решений можно, как и в случае с.р., идти по пути
линеаризации:
$
  x = phi(t) + eta, thick y = psi(t) + xi
$

$
  cases(
    dot(phi) + dot(eta) = P(phi + eta, psi + xi) = P(phi, psi) + P'_x (phi, psi)
    eta + P'_y (phi, psi) xi + dots,
    dot(psi) + dot(xi) = Q(phi + eta, psi + xi) = Q(.) + Q'_x (.) eta + Q'_y (.) xi + dots
  )
$

$
  cases(
    dot(phi) = P(phi, psi),
    dot(psi) = Q(phi, psi)
  )
$

#num_eq(
  $
    cases(
      dot(eta) = P'_x (phi, psi) eta + P'_y (phi, psi) xi,
      dot(xi) = Q'_x (phi, psi) eta + Q'_y (phi, psi) xi
    )
  $,
) <linear-system>

Это линеаризованная система - линейная система с $T$-периодическими коэффициентами.
(теория Флоке-Ляпунова)

Общий вид решения @linear-system:
$
  cases(
    eta = c_(11) f_(11) (t) e^(h_1 t) + c_(12) f_(12) (t) e^(h_2 t),
    xi = c_(21) f_(21) (t) e^(h_1 t) + c_(22) f_(22) (t) e^(h_2 t)
  ), quad
  c_(i j) in RR, thick f_(i j) "- T-периодические функции"
$
$h_1, h_2$ - некоторые числа (характеристические показатели), которые определяют
характер поведения решения @diff-system

#lemma([1], [
  Для случая системы @linear-system $h_1 = 0, thick h_2 = 1/T integral_0^T
  (P'_x + Q'_y) d t =: h$, $P'_x = P'_x (phi, psi), thick Q'_y = Q'_y (phi, psi)$
])

#theorem([Андронова-Витта], [
  Пусть $h = h_2 != 0$. Тогда, при $h < 0 thick (h > 0)$ предельный цикл
  орбитально устойчив (неустойчив), а периодические решения на цикле - устойчивы
  (неустойчивы) по Ляпунову.
])

#note([
  При $h != 0$ орбитальная устойчивость предельного цикла и устойчивость по Ляпунову
  эквивалентны
])

*Пример*
$
  cases(
    dot(x) = -y + x(1 - x^2 - y^2),
    dot(y) = x + y(1 - x^2 - y^2)
  ) quad
  cases(
    x = cos(t),
    y = sin(t)
  )
$

$
  V = x^2 + y^2\
  dot(V) = 2x(-y + x(1 - x^2 - y^2)) + 2y(x + y(1 - x^2 - y^2)) = 2(1 - x^2 - y^2)
  (x^2 + y^2)
$

$
  h = 1/(2 pi) integral_0^(2 pi) (1 - x^2 - y^2 - 2 x^2 + 1 - x^2 - y^2 -2 y^2) d t
  = - 1 / pi integral_0^(2 pi) (x^2 + y^2) d t = - 2 < 0
$

== Точечные преобразования (отображения) и предельные циклы

На фазовой плоскости проведем "дугу (отрезок) без контакта", т.е. простую гладкую
дугу, которая пересекает фазовые траектории, не касаясь их.

Часто дугу без контакта называют секущей Пуанкаре (или глобальной секущей).

Выберем на $A B$ параметр $s$ так, чтобы $s arrow.t$ при движении точки от
A к B. Например, можно взять естественную параметризацию.

Возможны два варианта:

1. ФТ, проходящая при $t = t_0$ через точку $s$, снова пересечет AB в некоторой
  точке $overline(s)$ при $t > t_0$. $overline(s)$ - последующая для $s$

2. ФТ, проходящая через точку $s$, больше не пересечет AB. $s$ не имеет последующей
  на AB

#note([
  Если точка $s$ имеет последующую отличную от $A$ и $B$, то и близкие точки
  тоже будут иметь последующую
])

Обозначим:
$
  overline(s) = f(s)
$

$f$ - функция последования

#note([
  Замкнутые ФТ отвечают неподвижным точкам отображения последования: $s = f(s)$
])

#note([
  Если все траектории замкнуты, то $f(s) equiv s$
])

Т.о., нахождение ЗФТ сводится к нахождению неподвижных точек отображения последования.

*Свойства:*

1. Если $f$ определена в точке $s$, то $f$ - аналитическая в точке $s$

2. $f'(s) > 0$

Исследование $overline(f) = f(s)$ на неподвижных точках и их устойчивости, графически
удобно проводить с помощью диаграммы Ламерея:

$(overline(s), s)$ строится график $f(s)$ и проводится $overline(s) = s$.
Точки пересечения отвечают неподвижным точкам

#theorem([Кёнигса], [
  Неподвижная точка $s_*$ устойчива, если $0 < f'(s_*) < 1$\
  Неподвижная точка $s_*$ устойчива, если $f'(s_*) > 1$
])

#block(
  inset: 1em,
  width: 100%,
  stroke: black,
)[
  Покажем, что при $h < 0$ предельный цикл орбитально устойчив

  Введем в малой окр-ти координаты $(u,v)$ по формулам:
  $
    cases(
      x = phi(u) - v psi'(u),
      y = psi(u) + v phi'(u)
    )
  $

  $u = "const"$ - прямые с напр. вектором $(-psi'(u), phi'(u)) ==>$ нормали к циклу в точке
  $psi(u), phi(u)$

  $v = "const"$ - замкнутые кривые

  $
    J = mat(x'_u, x'_v; y'_u, y'_v) =
    mat(
      phi' - v psi'', -psi';
      psi' + v phi'', phi'
    )\
    det J = underbrace(phi'^2 + psi'^2, > 0) + v
    underbrace((psi' phi'' - phi' psi''), "огр. ф-я") > 0 "при д.м." v
  $

  $
    dot(x) = phi' dot(u) - dot(v) psi' - v psi'' dot(u)\
    dot(y) = psi' dot(u) + dot(v) phi' + v phi'' dot(u)
  $

  $
    dot(u) = 1 / (det J) mat(
      delim: "|",
      dot(x), - psi';
      dot(y), phi'
    ) = (dot(x) phi' + dot(y) psi') / (det J) \
    dot(u) = 1 / (det J) mat(
      delim: "|",
      phi' - v psi'', dot(x);
      psi' + v phi'', dot(y)
    ) = ((psi' - v psi'') dot(y) - (psi' + v phi'') dot(x)) / (det J)
  $

  #num_eq(
    $
      (d v) / (d u) = (-P(phi - v psi', psi + v phi') (psi' + v phi'') +
      Q(phi - v psi', psi + v phi') (phi' - v psi'')) / (P(phi - v psi', psi + v phi')
      phi' + Q(phi - v psi', psi + v phi') psi')
    $,
  ) <diff-eq>

  $v = 0$ - решение

  В качестве дуги без контакта выберем отрезок нормали $u = 0$

  Обозначим: $v = Phi(u, s)$ - решение уравнения @diff-eq, уд. н.у. $Phi(0, s) = s$

  $overline(s) = Phi(T, s) = f(s)$ - функция последования

  $f'(0) = ?$ \
  Правая часть уравнения @diff-eq - аналитическая функция по $v$ (по крайней мере
  для д.м. $v$)
  $
    (d v) / (d u) = A_1 (u) v + A_2 (u) v^2 + dots
  $

  #let nom = $-P(phi - v psi', psi + v phi') (psi' + v phi'') +
  Q(phi - v psi', psi + v phi') (phi' - v psi'')$
  #let den = $P(phi - v psi', psi + v phi') phi' + Q(phi - v psi', psi + v phi') psi'$
  $n = nom$\
  $d|_(v=0) = phi(phi, psi) phi' + Q(phi, psi) psi' = phi'^2 + psi'^2 >= a > 0$

  $
    n'_v = (-P'_x dot (-psi') - P'_y dot phi') dot psi' - (P dot phi'' + Q'_x
      dot (-psi') + Q'_y dot phi') phi' - Q psi''
  $

  $
    A_1 = (psi'^2 P'_x - P'_y phi' psi' - Q'_x psi' phi' + Q'_y phi'^2 - phi' phi''
    -psi' phi'') / (phi'^2 + psi'^2) =\
    1/(phi'^2 + psi'^2) (psi'^2 P'_x - P'_y - phi'(phi'' - P'_x phi') -
      psi'(psi'' - Q'_y psi') + Q'_y phi'^2 - phi' phi'' -psi' phi'') =\
    1/(phi'^2 + psi'^2) (psi'^2 + phi'^2) ((P'_x + Q'_y) - (2 phi' phi'' + 2 psi'
    psi'')) = P'_x + Q'_y - d / (d u) ln(phi'^2 + psi'^2)
  $

  $
    phi' = P(phi, psi) ==> phi'' = P'_x phi' + P'_y psi'\
    psi' = Q(phi, psi) ==> psi'' = Q'_x phi' + Q'_y psi'\
  $

  $
    v = Phi(u, s) = a_1 (u) s + a_2 (u) s^2 + dots
  $

  $
    a'_1 s + a'_2 s^2 + dots equiv A_1(a_1 + a_2 s^2 + dots) + A_2(a_1 s + dots)^2 dots\
    a'_1 = a_1 A_1 (u)
  $

  $
    ln a_1 = integral_0^u A_1 (t) d t = integral_0^u (P'_x + Q'_y) d t -
    ln (phi'^2 + psi'^2) / (phi'^2 (0) + psi'^2 (0))
  $

  $
    f'(0) = a_1 (T) = e^(integral_0^T (P'_x + Q'_y) d t) = e^(T h)
  $
]

$s = 0$ - устойчиво, $e^(T h) < 1 ==> h < 0$ 
$
  h = 1/T integral_0^T (P'_x + Q'_y) d t
$

