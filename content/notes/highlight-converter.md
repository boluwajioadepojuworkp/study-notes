---
date: 2026-06-18
title: Book Highlight Converter
---

# Book Highlight Converter

A shell script that converts book and article highlights into study notes ready for the knowledge graph.

**How it works:**
```bash
./tools/highlight-to-note.sh highlights.md "Course Name"
```

This creates a markdown file in the course folder with:
- Blockquoted highlights organized by chapter
- Timestamps preserved
- Frontmatter with course link
- Reminder to write proper notes from memory

**Why it connects:**
- Highlights are NOT learning. They create an illusion of knowing.
- The converter bridges reading to note-taking. You still must write notes FROM MEMORY after reading highlights.
- The workflow: read → highlight → convert → write notes from memory.

**Example:**
```bash
./tools/highlight-to-note.sh tools/example-highlights.md "Machine Learning"
```

## Related

- [[latex-templates]]
- [[how-i-write-notes]]
- [[processing-reading]]
