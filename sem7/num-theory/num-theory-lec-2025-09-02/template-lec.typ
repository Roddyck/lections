#let conf(title, doc) = {
  import "@preview/rose-pine:0.2.0": apply, rose-pine
  import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
  show heading: it => align(center, it)

  set page(
    paper: "a4",
    numbering: "1",
  )

  set par(justify: true)

  show ref: it => {
    let eq = math.equation
    let el = it.element
    if el != none and el.func() == eq {
      // Override equation references.
      link(el.location(),numbering(
        el.numbering,
        ..counter(eq).at(el.location())
      ))
    } else {
      // Other references as usual.
      it
    }
  }


  let theorem(num, contents) = [
    #block(
      stroke: rose-pine.rose,
      inset: 1em,
      width: 100%,
      fill: gradient.linear(rose-pine.pine, rose-pine.love, angle: 30deg)
    )[
        *Теорема #num.* #contents
    ]
  ]

  let definition(contents) = [
    #block(
      stroke: rose-pine.rose,
      inset: 1em,
      width: 100%,
      fill: gradient.linear(rose-pine.pine, rose-pine.love, angle: 30deg)
    )[
        *Определение.* #contents
    ]
  ]

  let qedsymbol = [
    #align(right)[
      #square(size: 0.6em, stroke: 0.5pt + rose-pine.base, fill: rose-pine.text)
    ]
  ]

  place(
    top + center,
    float: true,
    scope: "parent",
    clearance: 2em,
  )[
    #align(center)[= #title]
  ]

  doc
}

#let num_eq(content) = math.equation(
  block: true,
  numbering: "(1)",
  content,
)
