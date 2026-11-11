#import "annotations.typ": *
#import "colors.typ"
#import "decoration.typ"
#import "utils.typ"

// Used to set either subject or slides mode
#let THEME_MODE = state("theme_mode", none)

#let epitech-underscore(content, underscore_color: colors.orange) = {
  [
    #content
    #h(0fr, weak: true)
    #text("_", fill: underscore_color)
  ]
}

#let epitech-title(content, underscore_color: colors.orange) = {
  show title: set block(below: 0pt)
  title(epitech-underscore(content, underscore_color: underscore_color))
}

#let epitech-subtitle(content, underscore_color: colors.green) = {
  heading(
    [
      #text("<", fill: underscore_color)
      #content
      #text("/>", fill: underscore_color)
    ],
    level: 2,
  )
}

#let version-block(version_text: none) = [
  #if version_text != none {
    place(
      center + top,
      [
        #version_text
      ],
      dy: 10pt,
    )
  }
]

#let terminal(content) = [
  #grid(
    rows: 2,
    rect(width: 100%, fill: rgb(229, 229, 229))[
      #grid(
        rows: 1,
        columns: 3,
        gutter: 1fr,
        [#text([∇], fill: gray)],
        // Add padding to remedy the page margin
        [#pad("Terminal", left: 30pt)],
        [#text([`—  +  x`], fill: gray)]
      )
    ],
    rect(width: 100%, fill: rgb(7, 54, 66))[
      #set text(fill: white)

      // "Resets" the raw text to a non padded version
      #show raw.where(block: true): it => it.text
      #show raw.where(block: true): set block(fill: rgb(7, 54, 66))

      #raw(content, block: true)
    ]
  )
]

#let default(doc) = [
  #show title: set text(font: "Anton")
  #show link: set text(fill: colors.blue)

  #set text(font: "IBM Plex Sans")

  // Codeblocks
  #show raw.where(block: true): it => pad(
    it,
    10pt
  )
  #show raw.where(block: true): set block(
    fill: rgb(248, 250, 252),
  )

  #doc
]
