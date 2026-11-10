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
