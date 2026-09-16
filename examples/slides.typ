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

  + I think this can be considered way too long of a title
  + One more thing
  + Conclusion
]

#slide-title("I think this can be considered way too long of a title", colors.orange)

#slide[
  = #epitech-underscore("Look at this image")

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

#slide-title("One more thing", colors.green)

#slide[
  #image("./image.png", width: 900pt)
]

#slide-title("Conclusion", colors.pink)

#slide[
  = #epitech-underscore("This is uninteresting")

  yeah there's nothing here.
]
