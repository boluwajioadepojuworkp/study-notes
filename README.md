# My Study Notes — Digital Knowledge Graph

> Built with [Quartz](https://quartz.jzhao.xyz/) v5. Inspired by Michael Neuper's Org-Roam system and Andy Matuschak's Evergreen Notes. Adapted for the COME STUDIARE method.

## What This Is

This is my **external brain**. Every concept I learn becomes a note, written FROM MEMORY (not copied), linked to related concepts. Over time, these notes form a knowledge graph that shows how everything connects.

## How I Use It

1. **Study** using the 5-Step Method — read aloud, recall, write one sentence
2. **Write a note** here for each concept learned — use the note template
3. **Link concepts** using `[[wikilinks]]` — the graph grows automatically
4. **Push to GitHub** — the site auto-deploys
5. **Review** using the recall schedule (1h, 3h, bedtime, next day, 3 days, 1 week)

## Structure

```
content/
  index.md                  Main hub
  courses/                  All my courses
    index.md
    course-name/            One folder per course
      topic-01.md           One note per concept
      topic-02.md
  come-studiare/            My study method
    5-step-method.md
    3-pass-system.md
    recall-schedule.md
  templates/                Note templates (not published)
```

## Local Development

```bash
npm install
npx quartz plugin install
npx quartz build --serve
```

Open http://localhost:8080

## Auto-Deploy

Push to `main` → GitHub Actions builds → deploys to GitHub Pages. No manual steps needed.

## Credits

- Note-taking method adapted from [Michael Neuper's Org-Roam system](https://michaelneuper.com/posts/how-i-use-org-roam-to-takes-notes-for-cs/)
- Study techniques from COME STUDIARE — evidence-based method for brains that forget immediately
- Site generator: [Quartz v5](https://quartz.jzhao.xyz/) by Jacky Zhao
- Concept: [Evergreen Notes](https://notes.andymatuschak.org/) by Andy Matuschak
- Original method: Zettelkasten by Niklas Luhmann
