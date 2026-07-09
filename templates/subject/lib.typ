#import "../common/lib.typ": *

#let subject-decorated-page(
  content,
  show-top-left-logo,
  ..args,
) = {
  set text(fill: white)
  show heading.where(level: 2): set text(size: 20pt, weight: "medium")

  page(
    [
      #if show-top-left-logo {
        utils.colorized-image("/assets/epitech.svg", width: 180pt, original_color: "#013afb", color: white)
      }

      #decoration.block(150pt, 80pt, dx: 40pt, dy: -40pt)
      #decoration.block(80pt, 80pt, dx: -110pt, dy: 40pt)

      #set align(center)

      #content
    ],
    fill: colors.blue,
    margin: 40pt,
    footer: context [
      // Ignore the title page for counting
      #counter(page).update(0)
    ],
    ..args,
  )
}

#let subject-title-page(
  content: context [
    // Correctly set the content to about the middle of the page
    #place(
      center,
      dy: 250pt,
      [
        #epitech-title(document.title)
        #epitech-subtitle(document.description)
      ],
    )
  ],
  ..args,
) = {
  subject-decorated-page(content, true, ..args)
}

#let subject-final-page(content: [
  #set align(horizon)
  #utils.colorized-image("/assets/epitech.svg", width: 300pt, original_color: "#013afb", color: white)
], ..args) = {
  subject-decorated-page(content, false, ..args)
}

#let subject-footer-decoration = {
  box("", width: 45%, height: 2pt, fill: colors.blue-opacity-50, baseline: 100%)
}

#let subject-page(content, ..args) = {
  show heading.where(level: 1): set text(fill: colors.blue)
  show heading.where(level: 2): set text(fill: colors.blue)

  page(
    [
      #content
    ],
    footer: context [
      #subject-footer-decoration
      #h(1fr)
      #counter(page).display()
      #h(1fr)
      #subject-footer-decoration

      #set align(center)
      #utils.colorized-image("/assets/epitech.svg", width: 200pt, original_color: "#013afb", color: colors.blue-opacity-50)
    ],
    margin: 40pt,
    footer-descent: -50pt,
    ..args,
  )
}
