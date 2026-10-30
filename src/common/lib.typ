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

#let annotation(content, image_name, background_color: white) = context [
  #let stroke-color = rgb(229, 229, 229);

  #let boxed-content = [
    #box(
      pad(
        pad(
          content,
          left: 5pt
        ),
        10pt,
      ),
      fill: background_color,
      width: 100%,
      stroke: (bottom: 2pt + stroke-color, right: 2pt + stroke-color),
      radius: 5pt,
      outset: 0.15cm,
    )
  ];

  #pad(
    [
      #boxed-content
      #place(
        top + left,
        image(image_name, width: 30pt),
        dx: -20pt,
        dy: -20pt,
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

#let bottom-annotation(annotation) = [
  #place(
    bottom,
    dy: 25pt,
    [
      #set text(size: 18pt)
      #annotation
    ]
  )
]

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

#let tab = context {
  let tab_left = 1cm // leftmost tab stop (i.e. page margin)
  let tab_width = 2.0cm // width of a single tab stop

  let pos = here().position() // caller position
  let advance_to = tab_left + tab_width
  box(width: advance_to - pos.x)[#text(size: 4pt, fill: purple)[]]
}

#let quotes(content, attribution) = [
  #show quote.where(block: true): block.with(stroke: (left:3pt + gray, rest: none), fill: luma(240),inset: 1.2em, width: 100%)
    #quote(block:true, attribution: attribution)[
      #content
    ]
]

#let h3(content) = [
  #tab *#content* \
  #tab #line(
    length: 100%,
    start:(9%, -0.5%), end:(100%, -0.5%))
]

#let terminal(content) = [
  #rect(width: 100%, fill: luma(230))[
    #align(top + center)[Terminal]
    #rect(width: 100%, outset: 0.2cm, fill: rgb("#083642"))[#text(content, fill: white)]
  ]

  \
]

#let block_text(content) = [
  #text(content)

  \
]

#let backtick(content) = [
  #box(
    fill: luma(235),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )[#content]
]