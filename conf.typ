#let people_involved = json("people-involved.json")
#let conf(doc) = {
set text(
  lang: "es",
  size: 12pt,
  font: "Liberation Sans"
)
set page(
  paper: "us-letter",
  margin: 2.5cm
)
set par(
  justify: true,
  leading: 2.0em,
  first-line-indent: (
    amount: 5em,
    all: true
  ),
  spacing: 2em
)
let appendix(body) = {
  set heading(numbering: "A", supplement: [Appendix])
  counter(heading).update(0)
  body
}
let members = people_involved.team_members
let professor = people_involved.professor
let deadline = datetime(
  year: 2025,
  month: 10,
  day: 14
)
set document(
  title: [Proyecto Final Diseño y Soporte de Redes: Diseño de la Red del Edificio de Aulas de la Facultad de Informática de la Universidad Autónoma de Querétaro],
  author: members.join(";", last: " & "),
  keywords: ("2069", "25-2", "Redes", "FIF", "UAQ"),
  date: deadline
)

outline()
outline(
  title: [Lista de Figuras],
  target: figure.where(kind: image)
)
outline(
  title: [Lista de Tablas],
  target: figure.where(kind: table)
)
pagebreak()
doc
}
