#import "colors.typ"
#import "decoration.typ"
#import "utils.typ"

#let epitech-title(content, underscore_color: colors.orange) = {
  show title: set block(below: 0pt)
  title([
    #content
    #h(0fr, weak: true)
    #text("_", fill: underscore_color)
  ])
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

#let annotation(content, image_name, background_color: white) = [
  #let stroke-color = rgb(229, 229, 229);

  #pad(
    [
      #box(
        pad(
          content,
          10pt,
        ),
        fill: background_color,
        width: 100%,
        stroke: (bottom: 2pt + stroke-color, right: 2pt + stroke-color),
        radius: 5pt,
      )
      #place(
        image(image_name, width: 30pt),
        dx: -20pt,
        // TODO: doesn't work for very long notes
        dy: -50pt,
      )
    ],
    bottom: 10pt,
  )
]

#let note(content) = [
  #annotation(content, "../../assets/icon_info.png")
]

#let tip(content) = [
  #annotation(content, "../../assets/icon_tip.png", background_color: rgb(1, 58, 251, 20%))
]

#let important(content) = [
  #annotation(content, "../../assets/icon_important.png", background_color: rgb(255, 0, 0, 20%))
]

#let warning(content) = [
  #annotation(content, "../../assets/icon_warning.png", background_color: rgb(255, 239, 235))
]

// Caution is just an alias to warning
#let caution(content) = [
  #warning(content)
]

#let default(doc) = [
  #show title: set text(size: 3em, font: "Anton")
  #show link: set text(fill: colors.blue)

  // Codeblocks
  #show raw.where(block: true): it => pad(
    it,
    10pt
  )
  #show raw.where(block: true): set block(
    fill: rgb(248, 250, 252),
  )

  #set text(size: 12pt, font: "IBM Plex Sans")

  // By default heading is same size as text
  // Except for h1, h2, h3
  #show heading.where(level: 1): set text(size: 30pt)
  #show heading.where(level: 2): set text(size: 18pt)

  #show heading.where(level: 3): set text(size: 15pt)
  #show heading.where(level: 3): set block(
    stroke: (bottom: 1pt),
  )
  #show heading.where(level: 3): it => pad(it.body, left: 10pt, bottom: 10pt)

  #doc
]
