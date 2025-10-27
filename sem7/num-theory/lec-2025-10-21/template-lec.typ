#let conf(title, doc) = {
  import "@preview/fletcher:0.5.7" as fletcher: diagram, edge, node
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
      link(el.location(), numbering(
        el.numbering,
        ..counter(eq).at(el.location()),
      ))
    } else {
      // Other references as usual.
      it
    }
  }


  place(
    top + center,
    float: true,
    scope: "parent",
    clearance: 2em,
  )[
    #align(center, text(17pt)[= #title])
  ]

  doc
}

#let num_eq(content) = math.equation(
  block: true,
  numbering: "(1)",
  content,
)
#let theorem(name, contents) = [
  #block(
    stroke: black,
    inset: 1em,
    width: 100%,
  )[
    *Теорема #name.* #contents
  ]
]

#let lemma(name, contents) = [
  #block(
    stroke: black,
    inset: 1em,
    width: 100%,
  )[
    *Лемма #name.* #contents
  ]
]

#let definition(contents) = [
  #block(
    stroke: black,
    inset: 1em,
    width: 100%,
  )[
    *Определение.* #contents
  ]
]

#let conseq(contents) = [
  #block(
    stroke: black,
    inset: 1em,
    width: 100%,
  )[
    *Следствие.* #contents
  ]
]

#let statement(contents) = [
  #block(
    stroke: black,
    inset: 1em,
    width: 100%,
  )[
    *Утверждение.* #contents
  ]
]

#let note(contents) = [
  #block(
    stroke: black,
    inset: 1em,
    width: 100%,
  )[
    *Замечание.* #contents
  ]
]

#let qedsymbol = [
  #align(right)[
    #square(size: 0.6em, stroke: 0.5pt + black, fill: white)
  ]
]
