// NIH Research Strategy (R01-style). Limit: 12 pages, excluding references.
// NIH format: Arial 11 pt, 0.5 in margins, US letter. Keep headings as below.
#set page(paper: "us-letter", margin: 0.5in)
#set text(font: "Arial", size: 11pt)
#set par(justify: false, leading: 0.55em)
#set heading(numbering: none)
#show heading.where(level: 1): it => block(above: 1.2em, below: 0.6em, text(size: 11pt, weight: "bold", upper(it.body)))
#show heading.where(level: 2): it => block(above: 1em, below: 0.4em, text(size: 11pt, weight: "bold", it.body))

= Specific Aims (reference only; submitted as a separate 1-page attachment)

= Significance

Importance of the problem. Rigor of prior research. How the proposed work will change concepts, methods, technologies, treatments or services.

= Innovation

How the application challenges current paradigms or practice; novel concepts, approaches, methodologies, instrumentation or interventions.

= Approach

== Overview and preliminary data

== Aim 1.

*Rationale.* \
*Experimental design.* \
*Expected outcomes, potential problems and alternative strategies.*

== Aim 2.

== Aim 3.

== Rigor and reproducibility, timeline and milestones

// Cite with @key; entries come from refs.bib (Library module).
// Nature style: numbered, superscript. Uses the CSL file shipped with this template.
#bibliography("refs.bib", style: "nature.csl", title: "References Cited")
