# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

Teaching material for a 14-week undergraduate course "Bioinformatik og programmering" at Aarhus University (BiRC). The repo holds (a) the Quarto book that is published as the course website, (b) Python projects students work through, (c) exam materials per year, and (d) tooling for generating, encrypting, and grading exams.

This is **not** an application or library — it is course content + light Python tooling. Most edits are to `.qmd` chapters or `.py` project files; the scripts in `scripts/` are course-administration utilities run a few times a year.

## Environment & common commands

The project uses **pixi** (osx-arm64 only — see `pixi.toml`). Run everything through `pixi run …` so the locked environment is used.

- `pixi install` — set up environment from `pixi.toml` / `pixi.lock`
- `pixi run quarto render content` — render the course website (default profile, output → `content/_book/`)
- `pixi run quarto preview content` — live preview while editing chapters

Quarto profiles (set via `QUARTO_PROFILE` env var or `--profile`):
- `default` — the public student-facing site, `content/_quarto.yml`, output `content/_book/`
- `ta` — TA edition, `content/_quarto-ta.yml`, output `content/_book/ta/`. Pre-render decrypts project solutions; post-render runs `pagecrypt.py` to passphrase-protect TA-only HTML pages.
- `draft` — work-in-progress structure with PDF output, `content/_quarto-draft.yml`, output `content/_book/draft/`

CI (`.github/workflows/quarto-publish.yml`) renders `default` then `ta` on push to `main` and publishes to `gh-pages`.

### Exam

For information about exams read the content of the ./exam folder. Information from that folder should NEVER appear in this file.

## Architecture / layout

### `content/` — the Quarto book

This is the main authoring surface. Three `_quarto-*.yml` files define different chapter orderings and post-render steps for the three profiles; `_quarto.yml` selects which one is active via `profile.default`. `_variables.yml` holds the current course year.

- `chapters/python/` — "Learning Python" chapters (`.qmd`), the first half of the course.
- `chapters/project/<name>_project/index.qmd` — the project description shown on the site. The **actual code skeleton and tests** the student downloads live in `content/project_files/<name>project/` (note: no underscore). When changing a project, update both.
- `chapters/web/<name>/index.qmd` — web exercises. TA-only reveals in these pages are protected after rendering by `scripts/pagecrypt.py` (a client-side passphrase wrapper — content is still in the HTML, just AES-wrapped).
- `chapters/bioinformatics/` — the bioinformatics chapters (most are commented out of the default profile right now; see `_quarto-default.yml`).
- `project_solutions/` — `*.py.encrypted` reference solutions. Decrypted into plain `*.py` only during the `ta` pre-render; plaintext solutions are gitignored.
- `web_files/`, `notebooks/`, `images/`, `_extensions/` — supporting assets.

### `exam/`

One directory per exam year (`2016` … `2025`, plus `*re` for reexams). Each year contains a programming part (`progexam.py` skeleton + `test_progexam.py` + `progexam_solutions.py`) and a multiple-choice part (`bioinfexam.py` form generated from `exam/bioinf_questions.yaml` + `bioinformatics_facit.py`). The compiled `exam_assignment.pdf` and the student bundle (`exam/<year>/exam_files/`) are produced by `generate_exam.py`.

Almost every file in `exam/` has both a plaintext and `.encrypted` form committed. **Treat the `.encrypted` versions as the source of truth** — the plaintext copies are decryption artifacts and should not be edited directly without re-encrypting afterward, or they will drift.

### `scripts/`

Course-administration Python. They are CLI tools, not a package — invoked via `python scripts/<name>.py …` or via pixi tasks. `generate_exam.py` emits LaTeX and shells out to `pdflatex`, so a working TeX installation is required to regenerate exam PDFs.

### `TA/`

Materials for teaching assistants: handin scripts, instructions, the (encrypted) class participants roster.

### `binder/`, `technical/`, `annoucements/`

`binder/` defines a legacy conda env for mybinder (superseded by `pixi.toml`). `technical/` and `annoucements/` are documentation/notes, mostly Danish, for course logistics — not code.

## Conventions worth knowing

- Most student-facing text is **Danish**; framework text (Quarto, code identifiers, project descriptions on the site) is English. Keep this convention when editing.
- Project naming has a subtle inconsistency: chapters use `translation_project` (with underscore) but the code-skeleton directory under `content/project_files/` is `translationproject` (no underscore). Both names appear in scripts — don't "normalize" one without checking the other.
- The shared encryption salt is hardcoded in `scripts/encrypt.py`; the password ("token") is passed on the command line. The TA-profile pre/post-render uses the literal passphrase `banana` for `project_solutions/` and `chapters/project/` decryption and for `pagecrypt.py` HTML wrapping — this is intentional and matches what TAs are told.
- The Quarto book's chapter list is not the same across profiles; if a chapter "disappears" from the site, check whether it's commented out in `_quarto-default.yml` rather than missing from disk.
