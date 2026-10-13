// /!\ PLEASE READ README.md AT THE ROOT BEFORE TESTING
//
#import "@preview/polylux:0.4.0": *
#import "../src/entry.typ": *

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

#slide[
  #note(
    [
      Just because I don't care doesn't mean I don't understand - 103cipher \
      \
      \
      The quick brown fox jumps over the lazy dog - I  do not know the source...
    ]
  )

  #bottom-annotation(
    note(
      [
      Just because I don't care doesn't mean I don't understand - 103cipher \
      \
      \
      The quick brown fox jumps over the lazy dog - I  do not know the source...
      ]
    )
  )
]

#slide-title("Conclusion", colors.pink)

#slide[
  = #epitech-underscore("This is uninteresting")

  yeah there's nothing here.
  #note([
    very
    #linebreak()
    long
    #linebreak()
    note
    #linebreak()
    note
    #linebreak()
    note
    #linebreak()
    note
    #linebreak()
    note
    #linebreak()
    note
    #linebreak()
    note
  ])
]

#slide-final(version_text: "1.0.0")
