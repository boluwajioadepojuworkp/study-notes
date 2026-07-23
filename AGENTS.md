# AGENTS.md — Study Notes Knowledge Graph

## Project Overview
Quartz v5 static site generating a networked knowledge graph for STEM study notes. Markdown content in `content/`, built with Quartz plugins, deployed to GitHub Pages via Actions.

## Setup Commands
```bash
npm install                    # Install dependencies
npx quartz plugin install      # Install Quartz community plugins
npx quartz build -d content --serve  # Dev server at localhost:8080
```

## Build & Deploy
- Build: `npx quartz build -d content -v`
- Output goes to `public/`
- Push to `main` → GitHub Actions auto-deploys to `boluwajioadepojuworkp.github.io/study-notes`
- Never edit files in `public/` — they are generated

## Content Structure
- `content/index.md` — Main hub, always update when adding sections
- `content/courses/` — Course notes organized by year/course
- `content/math/` — Mathematics reference (Paul's Notes structure)
- `content/come-studiare/` — Study methodology documentation
- `content/notes/` — Reference materials on learning science
- `content/templates/` — Note templates (excluded from publishing)

## Note Conventions
- Every file needs YAML frontmatter: `title`, `course`, `date`
- Use `[[wikilinks]]` for internal links — never absolute paths
- One concept per file (atomic notes)
- Every note links to at least 2 other notes
- Write notes from memory, not by copying source material
- Math: use `$...$` for inline, `$$...$$` for blocks (KaTeX)

## Testing
- After adding notes: `npx quartz build -d content -v` to verify no broken links
- Check graph view loads in browser at localhost:8080
- Verify backlinks appear at bottom of each note

## Deployment
- Commit format: `feat:` / `docs:` / `fix:` prefix
- Push to `main` triggers deploy
- Check deploy status at: repo Actions tab
- Site URL: https://boluwajioadepojuworkp.github.io/study-notes/
