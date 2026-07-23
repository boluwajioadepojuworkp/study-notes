---
title: "AI Agents: Capabilities and Usage"
draft: true
---

# AI Agents: What They Do & How to Use Them

> These agents work from **any VS Code window, any folder**. Just type the invocation phrase and Copilot will switch to that role.

---

## How to Invoke An Agent

Type any of these phrases in Copilot Chat: from ANY window:

| Say This | Agent Activates | What Happens |
|----------|----------------|--------------|
| "Act as my study coach" or "Help me study X" | **Study Coach** | Guides through 5-Step Method, recall schedule, never suggests passive reading |
| "Create a note for..." or "Write a study note about..." | **Note Architect** | Creates atomic Markdown notes with YAML frontmatter, wikilinks, and proper structure |
| "Explain this math concept..." or "Help me with calculus" | **Math Tutor** | Explains with concrete examples. Formulas in words first. Paul's Notes structure. |
| "Review this code" or "Why isn't this working?" | **Code Reviewer** | Debugs, explains, guides: never gives complete answers. Uses "execute by hand" method. |
| "Deploy the site" or "Fix the graph view" | **Graph Maintainer** | Manages Quartz builds, GitHub Pages deployment, link checking |
| "Prepare me for an oral exam" or "I have a test on..." | **Exam Strategist** | Oral/written/practical exam prep. 3-sentence rule, mirror technique, trigger-action pairs. |
| "Check for learning science updates" or "What's new in learning science?" | **Resource Watcher** | Checks all monitored sources for updates |

---

## What Each Agent Actually Does

### Study Coach
**Best for:** When you're stuck on a concept, don't know how to study, or need study structure.

**Capabilities:**
- Guides you through the 5-Step Method step by step
- Applies the "I Don't Understand Anything" Protocol (5-gradient ladder)
- Reminds you of the recall schedule (1h → 3h → bedtime → next day)
- Detects bad brain days and recommends Green/Yellow/Red protocol
- Converts any topic into concrete examples and "explain like to a 10-year-old" format
- Never suggests rereading, highlighting, or passive methods

**Real examples of what you can ask:**
- "I don't understand eigenvalues: help me study them"
- "I have brain fog today, what should I do?"
- "Quiz me on cybersecurity concepts"
- "How do I remember this formula?"

### Note Architect
**Best for:** After a lecture or study session, when you need to create a permanent note.

**Capabilities:**
- Creates one atomic note per concept (never multiple ideas in one file)
- Adds proper YAML frontmatter (title, course, date)
- Links to at least 2 related notes via [[wikilinks]]
- Follows the template: What it is → How it works → Why it connects → My example
- Places notes in the correct folder: courses, math, or notes
- Ensures the note is written FROM MEMORY, not copied

**Real examples:**
- "Create a note for today's ML lecture on gradient descent"
- "I just learned about SQL joins: make a note"
- "Link my gradient descent note to the calculus chain rule note"

### Math Tutor
**Best for:** Understanding math concepts, formulas, and problem-solving.

**Capabilities:**
- Explains every formula in WORDS first, symbols second
- Creates concrete numerical examples for every concept
- Guides through "write 5 times → throw away → rewrite from memory"
- Uses Paul's Notes structure (Algebra, Calc I-III, Differential Equations)
- Draws functions and relationships
- For problem-solving: guides retrieval, doesn't give answers

**Real examples:**
- "Explain the chain rule with a concrete example"
- "I don't understand what a gradient actually means"
- "Walk me through solving this differential equation"

### Code Reviewer
**Best for:** Programming assignments, debugging, understanding code concepts.

**Capabilities:**
- Reads your code and identifies issues without giving complete solutions
- Guides "execute by hand": trace variable values line by line
- Uses "Break it and fix it": change one line, predict, test
- Explains WHY something works, not just WHAT it does
- Never copy-pastes solutions: always makes you type

**Real examples:**
- "Why is my Python function returning None?"
- "Review this C++ code for memory leaks"
- "Help me understand recursion"

### Graph Maintainer
**Best for:** Managing your knowledge graph site, deployment, broken links.

**Capabilities:**
- Builds and serves the Quartz site locally
- Checks for broken wikilinks and orphan notes
- Deploys to GitHub Pages
- Adds new sections or reorganizes content structure
- Updates site configuration

**Real examples:**
- "The graph view isn't showing: fix it"
- "Deploy my latest notes"
- "I have 15 orphan notes: help me link them"

### Exam Strategist
**Best for:** Preparing for oral exams, written tests, practical labs.

**Capabilities:**
- For oral exams: practices 3-Sentence Rule, mirror technique, trigger-action pairs
- For written exams: predicts questions, uses blank page method, checks backwards
- For practical labs: 4-step method (Read → Write steps → Simulate → Predict)
- Simulates exam conditions (timed, no notes, standing)
- Teaches pause strategy and "what to say when you don't know"

**Real examples:**
- "I have an oral exam on cybersecurity next week: prepare me"
- "Simulate a written exam on machine learning"
- "I have a lab practical tomorrow on IoT systems"

### Resource Watcher
**Best for:** Staying updated on learning science, tools, and methods.

**Capabilities:**
- Checks learning science blogs and repositories for new content
- Monitors Learning Scientists for new research posts
- Checks Paul's Math Notes for updates
- Watches SuperMemo blog for new articles
- Reports changes with summaries

**Real examples:**
- "Any notable updates from learning science sources?"
- "Any new study techniques from the Learning Scientists?"
- "Check all monitored sources for updates"

---

## Using Agents Outside the ME Workspace

### Option 1: Open the ME workspace (recommended)
```bash
studiow        # Opens all 7 projects
code ~/ME      # Opens workspace root
```
Copilot reads `AGENTS.md` and all agents are available.

### Option 2: From any folder
Just type the invocation phrase. Copilot has context from this guide. The agents work because they're documented in your user memory: Copilot knows about them.

### Option 3: Reference the guide
"Check /home/boadepoju/ME/AGENTS.md for agent instructions"

---

## Quick Reference Card

```
Study Coach    →  "Help me study X"
Note Architect →  "Create a note for X"
Math Tutor     →  "Explain X in math"
Code Reviewer  →  "Review this code"
Graph Maint.   →  "Deploy the site"
Exam Strategist→  "Prepare me for X exam"
Resource Watch →  "Check for updates"
```
