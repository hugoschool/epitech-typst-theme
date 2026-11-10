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
    top: 10pt,
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
