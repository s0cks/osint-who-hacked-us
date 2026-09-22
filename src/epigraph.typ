
#set quote(block: true)
#show quote: it => {
  set text(
    font: "Cormorant Garamond",
    size: 11.5pt,
    weight: 400,
  )

  set line(
    stroke: 0.5pt,
  )

  align(center + horizon)[
    #line(length: 100%)
    #block(inset: (x: 1.5cm), it)
    #line(length: 100%)
  ]
}

#quote(
  attribution: [
    The President and The Press

    President John F. Kennedy

    April 27th 1961
    @jfk-president-and-press
  ],
)[
  Today no war has been declared--and however fierce the struggle may be, it may never be declared in the traditional fashion.
  Our way of life is under attack.
  Those who make themselves our enemy are advancing around the globe.
  The survival of our friends is in danger.
  And yet no war has been declared, no borders have been crossed by marching troops, no missiles have been fired.

  If the press is awaiting a declaration of war before it imposes the self-discipline of combat conditions, then I can only say that no war ever posed a greater threat to our security.
  If you are awaiting a finding of "clear and present danger," then I can only say that the danger has never been more clear and its presence has never been more imminent.

  It requires a change in outlook, a change in tactics, a change in missions--by the government, by the people, by every businessman or labor leader, and by every newspaper.
  For we are opposed around the world by a monolithic and ruthless conspiracy that relies primarily on covert means for expanding its sphere of influence--on infiltration instead of invasion, on subversion instead of elections, on intimidation instead of free choice, on guerrillas by night instead of armies by day.
  It is a system which has conscripted vast human and material resources into the building of a tightly knit, highly efficient machine that combines military, diplomatic, intelligence, economic, scientific and political operations.

  Its preparations are concealed, not published.
  Its mistakes are buried, not headlined.
  Its dissenters are silenced, not praised.
  No expenditure is questioned, no rumor is printed, no secret is revealed.
  It conducts the Cold War, in short, with a war-time discipline no democracy would ever hope or wish to match.
] <wc-exclude>
