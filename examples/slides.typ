#import "@preview/polylux:0.4.0": *
#import "../src/entry.typ": *

#set page(paper: "presentation-16-9", numbering: "1")
#show: slides-default

#set document(
  title: "DEMO",
  description: "Sous-titre",
)

#slide-landing()


#slide[
  = Sommaire

  - Yes
]

#slide-title("AAAAAAAAAAAAAAAAAA", colors.orange)

#slide[
  = Look at this image

  some content above
  #grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    [
      & some content next to it \
      look at this?!!!!!
    ],
    figure(
      image("./image.png", width: 250pt),
    ),
  )

  some content below

  #bottom-annotation(note("Very important note!!!!!! Beware"))
]
