# Study Notes — Personal Knowledge Graph

A structured digital knowledge management system designed for STEM students. Built on evidence-based learning principles from cognitive psychology and spaced repetition research.

## Methodology

This system implements retrieval practice, distributed practice, elaboration, interleaving, concrete examples, and dual coding — the six strategies identified by cognitive psychologists as having the strongest empirical support for improving long-term retention.

Notes are written from memory after each study session, not transcribed during lectures. Each concept receives its own atomic note, interconnected through wikilinks that form a navigable knowledge graph. The graph visualizes conceptual relationships and identifies knowledge gaps.

## Architecture

```mermaid
flowchart LR
    STUDY[Study Session] --> RECALL[Write from Memory]
    RECALL --> NOTE[Atomic Note]
    NOTE --> LINK[Wikilinks]
    LINK --> GRAPH[Knowledge Graph]
    GRAPH --> DEPLOY[Auto-Deploy]
```

## Structure

```
content/
  index.md              Entry point
  courses/              Course-specific notes
    anno-1/             Year 1 — Completed
    anno-2/             Year 2 — Current
  come-studiare/        Study methodology documentation
  notes/                Reference materials on learning science
  templates/            Note templates
```

## Local Development

```bash
npm install
npx quartz plugin install
npx quartz build --serve
```

## Deployment

Push to the `main` branch. GitHub Actions builds the Quartz site and deploys to GitHub Pages automatically. No manual intervention required.

## References

- Dunlosky, Rawson, Marsh, Nathan, & Willingham (2013). Improving Students' Learning With Effective Learning Techniques. *Psychological Science in the Public Interest*.
- Wozniak, P. (1999). Effective Learning: Twenty Rules of Formulating Knowledge. SuperMemo.
- Weinstein, Y., & Sumeracki, M. (2019). *Understanding How We Learn: A Visual Guide*. Routledge.
- Ahrens, S. (2017). *How to Take Smart Notes*. Sönke Ahrens.
