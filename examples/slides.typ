#import "@preview/polylux:0.4.0": *
#import "../templates/common/lib.typ": *
#import "../templates/slides/lib.typ"

#set page(paper: "presentation-16-9", numbering: "1")
#show: lib.default

#set document(
  title: "DEMO",
  description: "Sous-titre",
)

#lib.landing-slide()


#slide[
  = Sommaire

  - Yes
]

#lib.title-slide("AAAAAAAAAAAAAAAAAA", colors.orange)

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
      image("../assets/image.png", width: 250pt),
    ),
  )

  some content below

  #lib.bottom-annotation(note("Very important note!!!!!! Beware"))
]
