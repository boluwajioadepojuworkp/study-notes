# AGENTS.md — Study Notes Knowledge Graph

## Repository Structure
```
notes-site/
├── content/                  # All notes in Markdown with YAML frontmatter
│   ├── index.md              # Entry point — always update when adding sections
│   ├── agent-hub.md          # Command center dashboard
│   ├── courses/              # Course notes organized by year/semester/course
│   ├── math/                 # Mathematics reference (Paul's Notes structure)
│   ├── come-studiare/        # Study methodology documentation
│   ├── notes/                # Reference materials on learning science
│   └── templates/            # Note templates (excluded from publishing)
├── quartz/                   # Quartz v5 engine — do not edit unless necessary
├── quartz.config.yaml        # Site configuration (baseUrl, plugins, theme)
├── .github/workflows/
│   ├── deploy.yml            # Builds Quartz → deploys to gh-pages branch
│   └── watch-neuper.yml      # Daily check for upstream updates (6 AM/PM UTC)
└── public/                   # Generated output — never edit directly
```

## Build Commands
```bash
npm install                         # Install dependencies after clone
npx quartz plugin install           # Install community plugins
npx quartz build -d content -v      # Production build → public/
npx quartz build -d content --serve # Dev server at localhost:8080
```

## Content Conventions
- **YAML frontmatter required:** `title` at minimum. Recommended: `course`, `date`, `source`.
- **Wikilinks:** Always use `[[path/to/note|Display Text]]` for internal links. Never use absolute URLs for same-site links.
- **Atomicity:** One concept per file. If a note covers two ideas, split it.
- **Linking rule:** Every note must link to at least 2 other notes. Orphan notes defeat the purpose of the graph.
- **Writing rule:** Notes are written from memory after study sessions. Never copy-paste from source material.
- **Math notation:** Inline `$formula$`, block `$$formula$$`. Rendered by KaTeX via Quartz plugin.
- **Mermaid diagrams:** Use fenced code blocks with `mermaid` language tag. Supported types: flowchart, sequence, class, state, er, gantt, pie, quadrant, requirement, git, mindmap, timeline, sankey, xy, block, packet, journey, architecture, c4.

## Testing
```bash
# Verify build succeeds with no broken links or missing references
npx quartz build -d content -v

# Check graph view loads at localhost:8080
# Verify backlinks appear at bottom of each note
# Confirm all wikilinks resolve (Quartz logs warnings for broken links)
```

## Anti-Patterns
- Do not edit files in `public/` — they are generated and will be overwritten.
- Do not use emojis in content files. The specification prohibits them.
- Do not write notes by copying from source material. Always retrieve from memory first.
- Do not create notes without frontmatter. Missing frontmatter breaks metadata display.
- Do not leave orphan notes. Every new note must link to at least 2 existing notes.
- Do not use absolute URLs for internal links. Wikilinks are resolved by Quartz's crawl-links plugin.

## Commit Conventions
- `feat:` — New features (content sections, tools, workflows)
- `docs:` — Documentation and reference notes
- `fix:` — Corrections to existing notes or broken links
- Commit messages describe what changed, not why. Keep under 72 characters for the subject line.

## Deployment
- Push to `main` triggers the `deploy.yml` workflow.
- Workflow builds Quartz and pushes output to `gh-pages` branch.
- GitHub Pages serves from `gh-pages` branch root.
- Site URL: https://boluwajioadepojuworkp.github.io/study-notes/
- Check deployment status in the Actions tab.

## Note Template
```markdown
---
title: Concept Name
course: Course Name
date: YYYY-MM-DD
---

# Concept Name

**What it is:** (One sentence)

**How it works:** (Explain like to a 10-year-old)

**Why it connects:** (Link to related concepts with [[wikilinks]])

**My example:** (A concrete example from your own life or imagination)
```

## Boundaries
- **Never commit:** Secrets, tokens, passwords, or API keys.
- **Ask before:** Adding new npm dependencies, restructuring content directories, modifying Quartz engine files.
- **Do not:** Modify `quartz.config.yaml` plugin order without understanding the processing pipeline.
