# ResearchStar plugin registry

A plugin is a folder with a `manifest.json` plus its files. `index.json` lists every plugin; the app fetches it over GitHub raw and downloads each listed file into `<userData>/plugins/<kind>/<id>/`.

Kinds:

- `agent`: a markdown prompt (`agent.md`) with sections per action: `## Proofread` and `## Finetune` for the prose actions, `## Extract`, `## Recommend` and `## Synthesize` for a citation agent (Nia; Synthesize writes Brainstorm's paragraph), `## Brainstorm` for a Brainstorm persona (Reviewer 2, Domain expert, Editor). Prose and citation agents are enabled per project; Settings › Citations names the citation agent; personas join Brainstorm sessions and are never enabled in a project.
- `template`: document scaffolds (`main.typ`, `main.tex`) plus requirements (page limit, font, margins) and an optional citation style file. Chosen when a project is created, or applied later.
- `citation-style`: a CSL file used by Typst and Pandoc, with the matching Typst built-in style and journal ID when available.

Publish a package by updating its folder and index entry together with the new version. Point the app at `https://raw.githubusercontent.com/<owner>/<repo>/<ref>/index.json`.
