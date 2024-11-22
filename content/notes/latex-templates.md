---
title: LaTeX Templates
---

# LaTeX Templates for Academic Writing

**Source:** Michael Neuper's [LaTeX-templates](https://github.com/michaelneuper/LaTeX-templates) repo.

**What it is:** Ready-to-use LaTeX templates for essays, projects, homework, and articles. Adapted from Michael Neuper's actual university templates.

**Templates available in `resources/latex/`:**

| Template | File | Use For |
|----------|------|---------|
| Essay | `Essay/main.tex` | Academic essays with bibliography |
| Project | `Project/main.tex` | Course projects with title page |
| Homework | `homework.tex` | Problem sets and assignments |
| Article | `article.tex` | Generic academic article |

**How to use:**
1. Copy the template folder to your working directory
2. Edit `main.tex` — fill in your content
3. Compile: `pdflatex main.tex && bibtex main && pdflatex main.tex`

**Why it connects:**
- LaTeX = professional math/CS formatting (needed for [[courses/index|all STEM courses]])
- These templates are tested in real university courses (Stellenbosch University)
- Paired with Neuper's [Efficient LaTeX Editing With Emacs](https://michaelneuper.com/posts/efficient-latex-editing-with-emacs/) guide

---

*Templates located in `resources/latex/`. Original by Michael Neuper, MIT-licensed.*
