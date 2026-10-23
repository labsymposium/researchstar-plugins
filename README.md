# ResearchStar plugins

Official plugin registry for [ResearchStar](https://github.com/labsymposium/researchstar): agents (editing prompts), document templates, and citation formats.

Registry URL (paste into ResearchStar → Settings → Plugins):

```
https://raw.githubusercontent.com/labsymposium/researchstar-plugins/main/index.json
```

## Layout

- `index.json`: the list of plugins (id, kind, version, path, files).
- `agents/<id>/`: `manifest.json` + `agent.md` (prompt with `## Proofread` and `## Finetune` sections).
- `templates/<id>/`: `manifest.json` + `main.typ` / `main.tex` + requirements (page limit, font, margins) + optional CSL.
- `citation-formats/<id>/`: `manifest.json` + CSL file.

## Contributing a plugin

Add a folder under the matching kind, add an entry to `index.json`, bump the plugin `version`. Keep licenses in each `manifest.json` (CSL files from the Citation Style Language project are CC BY-SA 3.0).
