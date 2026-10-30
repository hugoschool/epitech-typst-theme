// /!\ PLEASE READ README.md AT THE ROOT BEFORE TESTING
//

#import "../src/entry.typ": *
#show: subject-default

#set document(title: "DEMO", description: "FULL DEMO OF THE SYNTAX")

// #subject-title-page()
#subject-title-page()

#subject-page([
  = DEMO

  == Common text formatting

  This is standard Markdown, with *bold*, #text("italic", style: "italic") and #backtick(`backticks`). You can refer to #link( "https://www.markdownguide.org/basic-syntax/", "this page") for more.

  #linebreak()

  Paragraphs are blocks of text separated by line breaks. It means that linebreaks in the markdown will be
  reproduced in the PDF file. \
  For instance, this is written on a new line in the resulting PDF.

  #linebreak()

  You can still use the ”double whitespace trick” at the end of each line \
  in order to break some line \
  in the GitHub rendered markdown files.

  #linebreak()

  If you need more blank lines, you can use #backtick(`&nsbp`).. Let's jump 4 lines ...

  #linebreak()
  #linebreak()
  #linebreak()
  #linebreak()

  ... just for fun

  #linebreak()

  You can add page breaks in the resulting PDF, using an horizontal rule #backtick(`---`).

  #linebreak()

  #h3("Backslashes")

  Because backslashes are used to escape characters, if you want to display one *outside a fenced code
  block or a terminal box*, use the specific LaTeX commands #backtick(`\textbackslash`) or #backtick(`\symbol{92}`) like in:\
  /!\Backslashes are special/!\
])

#subject-page([
  This is a new page

  #linebreak()

  == Sections: this is a h2 header

  #linebreak()

  According to #link( "https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md", "some good practices used by markdown linters"), you should avoid using any h1 top-level
  header in your markdown files because :

  #list(
    marker: "✓",
    indent: 1cm,
    spacing: 1cm,
    [the YAML header #backtick(`title`) is already a top-level header;],
    [according to the #link("https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md025---multiple-top-level-headings-in-the-same-document", "MD025 rule"), there should be only one unique top-level header per document, for various reasons including accessibility.],
  ) \

  #h3("This is a h3 header")
  
  This is some text.

  #linebreak()

  ==== This a h4 header

  #linebreak()

  There is an #link("https://github.com/Epitech/md-converter/issues/42", "open issue") about this. Feel free to contribute if you have the time and resources to fix it.
])

#subject-page([
  This is another page, using the command #backtick(`\newpage`) which will not be properly rendered in the GitHub interface, that's why you should use #backtick(`---`) instead.

  #linebreak()

  == Lists

  #linebreak()

  #h3("Unordered")

  #list(
    marker: "✓",
    indent: 1cm,
    [first],
    [second],
  ) \

  #h3("Ordered")

  #enum(indent: 1cm)[first][second][third] \

 #h3("Definition List")
  
  / Term 1: Definition 1

  *Term 2 with #text("inline markup", style: "italic")* Definition 2

  #list(
    marker: "✓",
    indent: 1cm,
    [bullet 1
    - bullet 1.1],
    [bullet 2],
  )
])

#subject-page([
  == Alerts

  #linebreak()

  *Alerts* also sometimes known as *callouts* or *admonitions*, are a Markdown extension based on the block-quote syntax that you can use to emphasize critical information. They are displayed with distinctive colors and icons to indicate teh significance of the content.

  #linebreak()

  Use alerts only when they are crucial for user success and limit them to one or two per article to pre-vent overloading the reader. Additionally, you should avoid placing alerts consecutively. Alerts cannot be nested within other elements.

  #linebreak()

  To add an alert, use a special blockquote line specifying the alert type, followed by the alert information in a standard blockquote. Five types of alerts are available:
  ```
  > [!NOTE]
  > Useful information that users should know, even when skimming content.

  > [!TIP]
  > Helpful advice for doing things better or more easily.

  > [!IMPORTANT]
  > Key information users need to know to achieve their goal.

  > [!WARNING]
  > Urgent info that needs immediate user attention to avoid problems.

  > [!CAUTION]
  > Advises about risks or negative outcomes of certain actions.
  ```

  #linebreak()

  #note("Useful information that users should know, even when skimming content.")
  #tip("Helpful advice for doing things better or more easily.")
  #important("Key information users need to know to achieve their goal.")
  #warning("Urgent info that needs immediate user attention to avoid problems.")
])

#subject-page([
  #warning("Advises about risks or negative outcomes of certain actions.")

  #h3("Special cases")

  #note("Line skips are not possible in a box in PDF but work in HTML. Here is\nwhat happens\nwith a line skip\n\nUnless you\n\nforce it.")
  #warning([For a list inside a box, you need to add a blank line before the bullet points:
     #list(
      marker: "✓",
      indent: 1cm,
      [first],
      [second],
    )
  ])
  #tip([It also works with an ordered list:
    #enum(indent: 1cm)[First][Second]
  ])
  #note([
    You can nest boxes:
    #warning("but it is weird")
  ])
  
  #quotes("[!WHICHEVER]
    Undefined boxes Undefined boxes are ignored by the filter.", none)
])

#subject-page([
  == Quotes

  #quotes("We're all mad here. I'm mad. You're mad.", [*The Cheshire Cat* --])
  #quotes("I never forget a face. But in your case, I'll be glad to make an exception.", [* Groucho Marx* --])

  == Terminal boxes and fenced code blocks

  #terminal("<?php require('task05.php'); var_dump(calc_average(array(1, 4, 28, 12, 3, 4, 4, 27))); ?>")

  #terminal("$> 101pong 1 2 3 4 5 6 42 The speed vector coordinates are : (3.00;3.00;3.00)
  At time t+42, ball coordinates will be : (130.00;131.00;132.00)")

  You can use the markdown ”indented code block style” to add some indented code, such as:

  ```
  if (a > 3) {
    moveShip(5 * gravity, DOWN);
  }
  ```

  But you can also use the markdown ”fenced code block style”, which have additional features such as syntax highlighting:

  ```c
  {
    "info": {"id": str, "authors": str, "bookshelves": str},
    "lexdiv": {"tok": int, "typ": int, "hap": int,
    "ttr": float, "mwl": float, "mwf": float},
    "topics": {1: list[str], ..., 4: list[str]},
    "entities": {"characters": list[str], "locations": list[str]},
    "summary": str,
    "similar": ["title1", ..., "title5"],
  }
  ```
])

#subject-page([
  == Images

  #{
    let a = [Images must have a name and an alternative text for accessibility purpose:]
    let b = [#backtick("![name_of_the_illustration](img/cat.jpeg ''Picture of a lovely cat''){width=100%}")]
    block_text(a + b)
  }

  #{
    let a = [For the export made by the automated GitHub action, all images must be placed in a]
    let b = [#backtick("img/")]
    let c = [folder located at the root of the folder containing the markdown files to convert. \
    It is recommended NOT to use some relative paths (with]
    let d = [#backtick(".")]
    let e = [or]
    let f = [#backtick("..")]
    let g = [in order to avoid the creation of
    strange additional SHA1-based filenames by the GitHub action that use pandoc with the]
    let h = [#backtick("--extract-media")]
    let i = [option.]
    important(a + b + c + d + e + f + g + h + i)
  }

  #block_text("By default, images are centered with slightly rounded corners when a relative size is used")

  #image("../assets/cat.png")
])

#subject-page([
  If no size is specified, width defaults to 80%:

  #align(center)[
    #image(width: 80%,  "../assets/cat.png")
  ]

  If size is given in pixels, the image is considered inline (not centered, no rounded corners), such as:

  #block_text("Here is an inline illustration of a cat")
  #h3([You can add an image #align()[#image(width: 1cm, fit: "stretch", "../assets/cat.png")] inside a header if you want to])
])

#subject-page([
  == Colors

  #block_text("You can use a cutom syntax to color your texts, which will be converted by pandoc:")
  #list(
    marker: "✓",
    indent: 0.5cm,
    [roses are #text(fill: red)[red]],
    [violets are #text(fill: blue)[blue]],
    [leaves are #text(fill: green)[green]]
  )
  \
  #text[*
    #text[#text(fill: red)[Rende]#text(fill: blue)[ring]]\
    #text[#text(fill: orange)[is] #text(fill: purple)[much]]\
    #text[#text(fill: lime)[bet]#text(fill: green)[ter]]\
    #text[#text(fill: fuchsia)[if] #text(fill: teal)[you]]\
    #text[#text(fill: rgb("#964a06"))[bold] #text(fill: rgb("#ff42b0"))[it!]]
  *] 
  
  \

  You can also use your #text(fill: rgb("#33882d"))[*own colors!*]
  \

  #text(fill: rgb("#ffea00"))[*Do not NOT use yellow!*]
])

#subject-page([
  == Centering(custom)
  \

  A blank line is required before a center block. \
  #text[
    #align(center,
      "This is a centered text."
    )
  ]
  You can nest it in a box: 
  
  \

  #warning([Inside a box you can use:\ #align(center)[nested *centered*]]) 
])

#subject-page([
  == Subscript and superscript

  \

  $H^2 0$ is a liquid and $C O^2$ is a gas.

  $F e^(2+)$ can be oxidied into $F e^(3+)$.

  2¹⁰ is equal to 1024.

  With LaTeX formulas:

  $"one"^("can")_("do") "some"^"crazy"^("amazing"_"weird"_"stuff") $

  $"This is the trick to"^("get some spaces")_("inside sub script")$

])

#subject-page([
  == Tables
  \
  Here is an example of table:
  \
  #table(
    columns: (auto, auto, auto),
    inset: 5pt,
    fill: (_, y) => if calc.odd(y) {rgb("#65656525")},
    stroke: (_, y) => if y == 0 { (bottom: 1pt) },
      row-gutter: (5pt, auto),
    align: horizon,
    table.header(
      [Left-aligned column], align(center)[Centered column], align(right)[Right-aligned column],
    ),
    [Here is a table],
    align(center)[Lorem Ipsum],
    align(right)[Lorem Ipsum],
    [Lorem Ipsum is simply\ dummy text of the],
    align(center)[Lorem Ipsum is simply dummy text of the printing and typesetting industry.],
    align(right)[Lorem Ipsum],
    [Lorem Ipsum is simply\ dummy text of the],
    align(center)[Lorem Ipsum is simply dummy text of the printing and typesetting industry.],
    align(right)[Lorem Ipsum],
    [Here is a table],
    align(center)[Lorem Ipsum],
    align(right)[Lorem Ipsum]
  )

  and another example, with no header:

  #align(center)[
    #table(
      columns: (auto, auto),
      inset: 5pt,
      fill: (_, y) => if calc.odd(y + 1) {rgb("#65656525")},
      stroke: (none),
      align: horizon,
      align(left)[line 1, column 1],
      align(right)[line 1, column 2],
      align(left)[line 2, column 1],
      align(right)[line 2, column 2],
      align(left)[line 3, column 1],
      align(right)[line 3, column 2],
    )
  ]

  #warning([In PDF format, headers are misplaced when the header is shorter than a row content. \
  See below:])
])

#subject-page([
  == Unicode & accents
  \
  #list(
    marker: "✓",
    indent: 0.5cm,
    [é],
    [à],
    [ç],
    [ê],
    [î],
    [ô],
    [ù]
  )
  Emojis are properly rendered in the PDF and HTML ❤️:
  \

  #list(
    marker: "✓",
    indent: 0.5cm,
    [😉],
    [🤔],
  )
])

#subject-final-page(version_text: "v4.1")
