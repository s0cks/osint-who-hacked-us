#import "@preview/in-dexter:0.7.2": make-index
#import "@preview/abbr:0.3.1"
#import "@preview/wordometer:0.1.5": total-words, word-count
#import "@preview/drafting:0.2.2"
#import "@preview/badgery:0.1.1"

#show: abbr.show-rule
#show: word-count.with(
  exclude: (
    heading,
    strike,
    quote,
    <wc-exclude>,
  ),
)
#abbr.load("abbrs.csv")

#show link: it => {
  set text(
    fill: purple,
  )

  it
}


#show heading.where(level: 2): it => {
  set text(
    font: "Bebas Neue",
    size: 14.5pt,
  )

  it
}

#set text(
  lang: "en",
  font: "Inter",
  size: 9.5pt,
  fill: black,
)

#set par(
  justify: true,
  leading: 0.65em,
)

#set cite(
  style: "ieee",
)

#let create-footer() = context {
  let title = query(heading.where(level: 1)).first().body
  let page-num = [
    Page #counter(page).get().first()
  ]

  set text(
    font: "Alegreya Sans",
    weight: 400,
    size: 8.5pt,
    fill: gray,
  )

  grid(
    columns: (1fr, 0.1fr),
    align(left, text(title)), align(right, text(page-num)),
  )
}

#set page(
  paper: "a4",
  fill: white,
  margin: (x: 2.5cm, top: 3cm, bottom: 3cm),
  footer: create-footer(),
)

#show quote.where(block: true): it => {
  set block(
    inset: (x: 0.5em, y: 0.5em),
    above: 0.5em,
    below: 0.5em,
  )
  set pad(
    top: 0em,
    left: 0em,
    right: 0em,
  )

  set text(
    font: "Alegreya Sans",
    size: 11.5pt,
    weight: 350,
  )

  it
}

#include "src/cover.typ"

#pagebreak()

#include "src/epigraph.typ"

#show line: it => {
  set line(
    stroke: 0.25pt,
  )

  align(center, block(inset: (x: 0.5cm), it))
}

#pagebreak()

#[
  #set heading(offset: 1)
  // #show heading.where(level: 2): it => {
  //   pagebreak()
  //   it
  // }

  #include "src/ch1.typ"
  #include "src/ch2.typ"
  #include "src/ch3.typ"
  #include "src/ch4.typ"
  #include "src/ch5.typ"
]

#pagebreak()

#show heading: it => {
  align(center, it)
}

#show heading.where(level: 1): it => {
  set text(
    font: "Bebas Neue",
    size: 18.5pt,
  )

  it
}

= Bibliography

#bibliography(
  "bibliography.yaml",
  title: none,
) <wc-exclude>

#pagebreak()

= Index

#[
  #show heading: it => {
    set text(
      size: 11.5pt,
    )

    it
  }

  #columns(2)[
    #make-index()
  ]

  #pagebreak()
] <wc-exclude>

#align(top + center)[
  = Credits

] <wc-exclude>


#align(bottom + center)[
  = Notes

  This document consists of #total-words words.
] <wc-exclude>
