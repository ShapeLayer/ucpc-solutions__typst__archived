#import "theme.typ"
#import theme: difficulties as lv
#set text(font: ("Gothic A1", "Pretendard","Noto Sans CJK KR"), lang: "ko")

#show: doc => theme.conf(doc)

// Constants
#let primary_color = rgb("#F23D5E");
#let problem_page_config = (
  theme_color: primary_color
)

// Title Page
#show: doc => theme.cover_conf(doc)
#rect(
  fill: primary_color, 
  width: 100%,
  height: 60%, 
  inset: (left: 4em, bottom: 3.5em),
  outset: 0%
)[
  #text(fill: white, size: 32pt)[
    #align(bottom)[
      = Contest Name \ Description Editorial
    ]
  ]
]
#rect(
  width: 100%,
  height: 30%,
  stroke: none,
  inset: (left: 4em),
  outset: 0%
)[
  #align(center + horizon)[
    #text(size: 2.5em)[Contest Taskforce]
    /*
    #text(size: 1.7em)[2024-05-26]*/
  ]
  #text(size: 17pt)[
    
  ]
]
#pagebreak()

#show: doc => theme.content_conf("Contest Name", doc)
#align(center + horizon)[
  #text(size: 1.5em)[
    #table(
      columns: 4,
      inset: (x: .5em, y: .65em),
      align: horizon,
      stroke: (x: none),
      row-gutter: (5.2pt, auto),
      table.vline(x: 2, start: 0),
      table.vline(x: 3, start: 0),
      table.cell(colspan: 2)[문제], [의도한 난이도], [출제자],
      [A], [Problem A], lv.easy, [Author A],
      [B], [Problem B], lv.normal, [Author B],
      [C], [Problem C], lv.hard, [Author C],
      [D], [Problem D], lv.challenging, [Author D],
      [E], [Problem E], lv.bronze, [Author E],
      [F], [Problem F], lv.silver, [Author F],
      [G], [Problem G], lv.gold, [Author G],
      [H], [Problem H], lv.platinum, [Author H],
      [I], [Problem I], lv.diamond, [Author I],
      [J], [Problem J], lv.ruby, [Author J]
    )
  ]
]


#theme.problem("A", "Problem A", ("tag-1", ), lv.easy, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author A]
), problem_page_config)[
  - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  - Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Massa tincidunt nunc pulvinar sapien et. Hendrerit dolor magna eget est lorem. Lectus urna duis convallis convallis tellus id interdum velit laoreet.
  - Lacus laoreet non curabitur gravida arcu ac tortor.
]


#theme.problem("B", "Problem B", ("tag-1", "tag-2"), lv.normal, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author B]
), problem_page_config)[
  - Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Libero enim sed faucibus turpis in eu mi. Neque viverra justo nec ultrices dui sapien eget mi proin. Volutpat est velit egestas dui id ornare. Faucibus turpis in eu mi bibendum.
]

#theme.problem("C", "Problem C", ("tag-1", "tag-2", "tag-3"), lv.hard, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author C]
), problem_page_config)[
  - Dolor sit amet consectetur adipiscing elit. Egestas diam in arcu cursus euismod quis viverra. Iaculis urna id volutpat lacus laoreet non curabitur gravida. Sit amet nisl purus in mollis nunc sed id semper. Amet justo donec enim diam vulputate ut.
  - Lorem sed risus ultricies tristique nulla aliquet enim. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Nunc consequat interdum varius sit amet. Quis varius quam quisque id diam vel quam. Quis ipsum suspendisse ultrices gravida dictum fusce ut placerat. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Nibh ipsum consequat nisl vel pretium lectus.
]

#theme.problem("D", "Problem D", (), lv.challenging, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author D]
), problem_page_config)[]

#theme.problem("E", "Problem E", ("tag-1", ), lv.bronze, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author E]
), problem_page_config)[
  - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi blandit cursus risus at ultrices mi tempus imperdiet nulla. Tellus mauris a diam maecenas. Pretium quam vulputate dignissim suspendisse in est. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. 
  - Nunc congue nisi vitae suscipit tellus mauris. Tortor at auctor urna nunc. 

]

#theme.problem("F", "Problem F", ("tag-1", "tag-2", ), lv.silver, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author F]
), problem_page_config)[]

#theme.problem("G", "Problem G", (), lv.gold, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Problem G]
), problem_page_config)[]

#theme.problem("H", "Problem H", (), lv.platinum, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author H]
), problem_page_config)[]

#theme.problem("I", "Problem I", (), lv.diamond, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author I]
), problem_page_config)[]

#theme.problem("J", "Problem J", (), lv.ruby, (
  submit_count: -1,
  ac_count: -1,
  first_solver: "-",
  first_solve_time: -1,
  author: [Author J]
), problem_page_config)[]
