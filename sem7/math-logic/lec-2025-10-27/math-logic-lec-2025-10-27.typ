#import "template-lec.typ": conf
#show: doc => conf([Мат. логика. Лекция (27.10.2025)], doc)

$
  <ZZ; +, -, <, D_2, D_3, D_4, dots >
$

$
  #hyi
$

$
  exists x [(p < k x) and D_m (x - r)] equiv 1
$

Аналогично, если нет верхнего/нижнего ограничения

$
  exists x [(p < k x) and (l x < q) and D_m (x - r)] equiv exists x [(l p < k l x)
    and (k l x < k q) and D_(k l m) (k l x - k l r)] equiv \
  equiv exists x' [(l p < x') and (x' < k q) and D_(k l m) (x' - k l r)] equiv\
  equiv or.big_(i = 1)^(k l m) (l p + i < k q) and D_(k l m) (l p + i - k l r)
$

Если нет $D$-ограничения

$
  exists x [(p < k x) and (l x < q) and D_1 (x)] equiv exists x [(l p < k l x)
    and (k l x < k q) and D_(k l) (k l x)] equiv \
  equiv exists x' [(l p < x') and (x' < k q) and D_(k l) (x')] equiv\
  equiv or.big_(i = 1)^(k l m) (l p + i < k q) and D_(k l) (l p + i)
$

$
  exists x exists y [(3x + 4y = 12) and (6x + 2y = z)] equiv\
  exists x exists y [(3x + 4y < 13) and (11 < 3x + 4y) and (6x + 2y < z + 1)
    and (z - 1 < 6x + 2y)] equiv\
  exists x exists y [(4y < 13 - 3x) and (11 - 3x < 4y) and (2y < z - 6x + 1)
    and (z - 1 - 6x < 2y)] equiv dots
$
