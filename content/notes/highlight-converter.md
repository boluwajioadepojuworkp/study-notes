---
title: Book Highlight Converter
---

# Book Highlight Converter

**Source:** Adapted from Michael Neuper's [koreader-org-converter](https://github.com/michaelneuper/koreader-org-converter).

**What it is:** A shell script that converts book/article highlights (from KOReader or any Markdown highlight export) into study notes ready for this knowledge graph.

**How it works:**
```bash
./tools/highlight-to-note.sh highlights.md "Course Name"
```

This creates a `_highlights-*.md` file in the course folder with:
- Blockquoted highlights organized by chapter
- Timestamps preserved
- Frontmatter with course link
- Reminder to write proper notes from memory

**Why it connects:**
- Highlights are NOT learning. They create an illusion of knowing — see [[come-studiare/index|WHY NORMAL STUDYING DOESN'T WORK]].
- The converter bridges reading → note-taking. You still must write notes FROM MEMORY after reading highlights.
- This mirrors Neuper's workflow: read → highlight → convert → write notes from memory.

**Example:**
```bash
./tools/highlight-to-note.sh tools/example-highlights.md "Machine Learning"
```

---

*See `tools/highlight-to-note.sh` and `tools/example-highlights.md` for the full implementation.*
