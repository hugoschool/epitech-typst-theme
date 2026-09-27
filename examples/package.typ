// Example meant to be used once installed

#import "@preview/polylux:0.4.0": *
#import "@local/epitech-theme:1.3.0": *

#set page(paper: "presentation-16-9", numbering: "1")
#show: slides-default

#set document(
  title: "DEMO",
  description: "Sous-titre",
)

#slide-landing()

#slide-title("Hello world", colors.orange)

#slide-final()
