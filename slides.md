---
# https://sli.dev/custom/#frontmatter-configures
# Try CSS classes here:
# https://unocss.dev/interactive/
css: unocss
defaults:
  layout: center
download: https://raw.githubusercontent.com/jackdbd/sfscon-2024-indieweb/main/assets/sfscon-2024-indieweb-presentation.pdf
# persist drawings in exports and build
drawings:
  persist: false
# Exporting to PDF or PNG relies on Playwright for rendering.
# https://sli.dev/guide/exporting.html
exportFilename: presentation
# https://sli.dev/custom/highlighters.html
highlighter: shiki
htmlAttrs:
  dir: "ltr"
  lang: "en"
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
lineNumbers: false
# https://sli.dev/guide/syntax#mdc-syntax
mdc: true
# https://sli.dev/guide/presenter-mode.html
presenter: true
src: ./slides/intro.md
theme: default
transition: slide-left
---

---
hide: true
src: ./slides/toc.md
---

---
src: ./slides/speaker.md
---

---
src: ./slides/posse.md
---

---
src: ./slides/indieauth.md
---

---
src: ./slides/micropub.md
---

---
src: ./slides/wip.md
---
