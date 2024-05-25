/*
MIT License

Copyright (c) 2024 Park, Jonghyeon

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#let conf(doc) = {
  set page("presentation-16-9")
  doc
}

#let cover_conf(doc) = {
  set page(margin: 0%)
  doc
}

#let content_conf(content, doc) = {
  set page(
    margin: (
      top: 2em, 
      bottom: 3em,
      left: 2.5em,
      right: 2.5em
    ),
    footer: text(size: 10pt)[
      #columns(2)[
        #align(left)[#content]
        #colbreak()
        #align(right)[#counter(page).display("1")]
      ]
    ])
  doc
}

#let difficulties = (
  easy: text(fill: rgb("#bd7733"), weight: "bold")[Easy],
  normal: text(fill: rgb("#687f94"), weight: "bold")[Normal],
  hard: text(fill: rgb("#efae33"), weight: "bold")[Hard],
  challenging: text(fill: rgb("#00d497"), weight: "bold")[Challenging],
  bronze: text(fill: rgb("#bd7733"), weight: "bold")[Bronze],
  silver: text(fill: rgb("#687f94"), weight: "bold")[Silver],
  gold: text(fill: rgb("#efae33"), weight: "bold")[Gold],
  platinum: text(fill: rgb("#52e7b6"), weight: "bold")[Platinum],
  diamond: text(fill: rgb("#33c3fc"), weight: "bold")[Diamond],
  ruby: text(fill: rgb("#f7337b"), weight: "bold")[Ruby]
)

#let problem(id, title, tags, difficulty, statistics, config, body) = {
  /*
    config: dict = (
      theme_color: color
    )
    statistics: dict = (
      submit_count: int,
      ac_count: int,
      first_solver: str,
      first_solve_time: int,
      author: str
    )
  */
  [
    #set page(margin: (top: 3em))
    #set text(size: 20pt)
    = #text(fill: config.theme_color, size: 1.35em)[#id. #title]
    \
    #text(size: .8em)[#tags.map(each => "#" + each).join(", ") \ ]
    출제진 의도 --- #difficulty

    #align(horizon)[
      - 제출 #statistics.submit_count\회, 정답 #statistics.ac_count\건
      
      - 최초 해결: #statistics.first_solver\, #statistics.first_solve_time\분
      
      - 출제자: #statistics.author
    ]
    #pagebreak()

    #set page(header: text(size: .8em)[
      #text(fill: config.theme_color)[
        #text(weight: "bold")[#id\.] #title
      ]
    ])
    #set align(horizon)
    #set list(marker: [»])
    #body
  ]
}
