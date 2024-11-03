# How to build a website for the IndieWeb

Slides and code for the talk I gave at [SFSCON 2024](https://www.sfscon.it/).

- 🌐 [sfscon-2024-indieweb.vercel.app](https://sfscon-2024-indieweb.vercel.app/)
- 🗎 [sfscon-2024-indieweb-presentation.pdf](https://raw.githubusercontent.com/jackdbd/sfscon-2024-indieweb/main/assets/sfscon-2024-indieweb-presentation.pdf)

If you want to see my notes on a slide, click the [Presenter Mode](https://sli.dev/guide/presenter-mode) button or put `presenter/` just before the slide number (e.g. `<HOST>/presenter/5` instead of `<HOST>/5`).

## Installation

This presentation is a Vue.js application built with [Slidev](https://sli.dev/). You can install its dependencies with the following command:

```sh
npm install
```

## Development

Slidev can hot-code reload this presentation thanks to Vite.

Launch the Vite dev server with this command:

```sh
npm run dev
```

You can now view the presentation on localhost:

- Play mode: http://localhost:3030/1
- [Presenter mode](https://sli.dev/guide/ui#presenter-mode): http://localhost:3030/presenter/1

## PDF export

Slidev allows [exporting the slides to a PDF](https://sli.dev/guide/exporting.html#pdf). This feature relies on [Playwright](https://playwright.dev/) and requires [playwright-chromium](https://www.npmjs.com/package/playwright-chromium) to be available.

> :information_source: Since I don't want to install Playwright when building on Vercel (so deployments are faster), I declare `playwright-chromium` as a dev dependency and set `npm install --omit=dev` as the Vercel `installCommand` in `vercel.json`.

Run this command to export the slides to a PDF.

```sh
export-slides
```

## Deploy

The presentation will be automatically deployed to Vercel on each `git push`.
