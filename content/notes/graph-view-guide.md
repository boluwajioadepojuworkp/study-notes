---
title: How to Use the Knowledge Graph
---

# How to Use the Knowledge Graph

This site has a built-in **interactive knowledge graph** — the same kind of visualization that powers [publish-org-roam-ui](https://ikoamu.github.io/publish-org-roam-ui/) (the tool Michael Neuper uses for his notes).

## How to Access It

1. Open your site: [boluwajioadepojuworkp.github.io/study-notes](https://boluwajioadepojuworkp.github.io/study-notes)
2. Click the **graph icon** in the sidebar (looks like connected dots)
3. Or click **"Graph View"** in the navigation

## What You See

- **Each dot** = one of your notes. Bigger dots = more connections.
- **Each line** = a `[[wikilink]]` between two notes.
- **Hover** over a dot to see the note title.
- **Click** a dot to open that note.
- **Drag** to explore — the graph is fully interactive.

## Features (Same as ORUI)

| ORUI Feature | Quartz Equivalent |
|---|---|
| Interactive node graph |  Graph View (built-in) |
| Click node → see note |  Click node → opens note with content |
| Backlinks panel |  Backlinks section at bottom of every note |
| Local graph (neighbors only) |  Click a node to focus on its connections |
| Full-text search |  Search bar in header |
| Note previews |  Popover previews on hover |

## How the Graph Grows

Every time you:
1. Write a new note
2. Add `[[wikilinks]]` to other notes
3. Push to GitHub

→ The graph updates automatically. Each new note is a new dot. Each new link is a new line.

## Why the Graph Matters

The graph is NOT just pretty. It's a thinking tool:

- **Find orphans:** Notes with no links = concepts you haven't connected yet.
- **Find hubs:** Notes with many links = core concepts worth reviewing.
- **Spot patterns:** Clusters of connected notes = topics you understand deeply.
- **See progress:** A growing graph = your knowledge is accumulating.

> **This is the ORUI equivalent for our system.** Same concept, same power — no Emacs required.

---

*The graph is powered by Quartz's `crawl-links` plugin. Every `[[wikilink]]` becomes an edge in the graph.*
