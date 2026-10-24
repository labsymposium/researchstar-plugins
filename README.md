# ResearchStar plugin registry

A plugin is a folder with a `manifest.json` plus its files. `index.json` lists every plugin; the app fetches it over GitHub raw and downloads each listed file into `<userData>/plugins/<kind>/<id>/`.

Kinds:

- `agent`: a markdown prompt (`agent.md`) with sections per action: `## Proofread` and `## Finetune` for the prose actions, `## Extract`, `## Recommend` and `## Synthesize` for a citation agent (Nia; Synthesize writes Brainstorm's paragraph), `## Brainstorm` for a Brainstorm persona (Reviewer 2, Domain expert, Editor). Prose and citation agents are enabled per project; Settings › Citations names the citation agent; personas join Brainstorm sessions and are never enabled in a project.
- `template`: document scaffolds (`main.typ`, `main.tex`) plus requirements (page limit, font, margins) and an optional citation style file. Chosen when a project is created, or applied later.
- `citation-format`: a CSL file (used by Typst `#bibliography(style:)` and Pandoc exports) and the matching Typst built-in style name when one exists.

To publish: add the folder, add an entry to `index.json`, bump `version`. Users point the app at `https://raw.githubusercontent.com/<owner>/<repo>/<ref>/plugins/index.json`.
