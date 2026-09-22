#let usd(value) = {
  let postfix = ""
  let num = float(value)
  if num >= 1e9 {
    num = calc.round(num / 1e9, digits: 1)
    postfix = "B"
  } else if num >= 1e6 {
    num = calc.round(num / 1e6, digits: 1)
    postfix = "M"
  } else if num >= 1e3 {
    num = calc.round(num / 1e3, digits: 1)
    postfix = "k"
  }

  text(
    weight: "bold",
    "$" + str(num) + postfix + " USD",
  )
}

#let aside(body) = {
  set text(
    font: "Lora",
    style: "italic",
  )

  block(
    above: 2em,
    below: 2em,
    emph(body),
  )
}

#let pill(
  color: white,
  border-color: black,
  inset: (x: 0.5em, y: 0.5em),
  body,
) = box(
  fill: color,
  inset: inset,
  stroke: 0.5pt + border-color,
  radius: 75%,
  body,
)

#let pill-box(body) = align(center, body)

#let personal() = pill(color: rgb("e3f2fd"), border-color: rgb("1e88e5"))[Personal]
#let ehud-barak() = pill(color: rgb("e8f5e9"), border-color: rgb("43a047"))[Ehud Barak]
#let yoni-koren() = pill(color: rgb("ffebee"), border-color: rgb("e53935"))[Yoni Koren]
#let epstein() = pill(color: rgb("f3e5f5"), border-color: rgb("8e24aa"))[Epstein]
#let sultan() = pill(color: rgb("fdfaf2"), border-color: rgb("b8860b"))[Sultan Bin Sulyamen]
#let jim-miller() = pill(color: rgb("fff3e0"), border-color: rgb("fb8c00"))[Jim Miller]
#let target-hack-2013() = pill(color: rgb("fbe9e7"), border-color: rgb("d84315"))[2013 Target Hack]
#let btk-railway() = pill(color: rgb("e0f2f1"), border-color: rgb("00695c"))[Baku-Tbilisi-Kars]
#let blackpos() = pill(color: rgb("fafafa"), border-color: rgb("616161"))[BlackPOS]
#let hyatt-hotels() = pill(color: rgb("eae6ff"), border-color: rgb("5e35b1"))[Hyatt Hotels]
#let baku() = pill(color: rgb("e0f7fa"), border-color: rgb("00acc1"))[Baku]
#let tinfoil() = pill(color: rgb("eceff1"), border-color: rgb("78909c"))[Tinfoil]
#let dnc() = pill(color: rgb("fffde7"), border-color: rgb("fdd835"))[DNC]

#let efta-link(
  efta,
  body,
) = [
  #link("https://jmail.world/thread/" + efta + "?view=inbox", body) (#efta)
]

#let efta-quote(
  efta,
  body,
) = [
  "#link("https://jmail.world/thread/" + efta + "?view=inbox", body)" (#efta)
]


#let timeline(
  source,
  description,
) = block(
  breakable: false,
)[
  #line(length: 100%)

  #align(center)[
    #emph(description)
    #image(source)
  ]
]
