#import "@preview/polylux:0.4.0": *
#import "../common/lib.typ"

#let landing-slide(
  content: context [
    #pad(
      top: 150pt,
      [
        #lib.epitech-title(document.title, underscore_color: lib.colors.orange)

        #if document.description != none {
          lib.epitech-subtitle(document.description)
        }
      ],
    )
  ],
  show-logo: true,
) = [
  #slide[
    #set page(fill: lib.colors.blue, numbering: none)
    #set text(fill: white)

    #if show-logo [
      #lib.utils.colorized-image("/assets/epitech.svg", width: 150pt, original_color: "#013afb", color: white)
    ]

    #let margin = 35pt;

    #lib.decoration.block(
      250pt,
      125pt,
      dx: margin,
      dy: -margin,
    )
    #lib.decoration.block(
      125pt,
      125pt,
      dx: margin - 250pt,
      dy: -margin + 125pt,
    )

    #set align(horizon)

    #content

    #context {
      // Ignore all "titled" pages for counting
      counter(page).update(n => n - 1)
    }
  ]
]

#let title-slide(title, underscore_color) = [
  #landing-slide(
    content: [
      #pad(
        top: 250pt,
        [
          #lib.epitech-title(title, underscore_color: underscore_color)
        ],
      )
    ],
    show-logo: false,
  )
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

#let default(doc) = [
  #set page(paper: "presentation-16-9", margin: 35pt, numbering: none)
  #set text(size: 24pt, font: "IBM Plex Sans")

  #show title: set text(size: 86pt)
  #show link: set text(fill: lib.colors.blue)


  #show heading: set text(weight: "regular")
  #show heading.where(level: 1): set text(size: 52pt, font: "Anton")
  #show heading.where(level: 2): set text(size: 32pt)

  #show: lib.default(doc)

  #doc
]
