---
class: pl-15% pr-10%
layout: center
title: Fetching webmentions
---

<h1>Fetching webmentions</h1>

<Transform scale="0.9">

You can fetch webmentions at runtime, with client-side JS, or at build time.

I fetch webmentions whenever I build my Eleventy site.

```js
import EleventyFetch from '@11ty/eleventy-fetch'

const format = 'jf2' // https://www.w3.org/wiki/JF2
const endpoint = `https://webmention.io/api/mentions.${format}`

const response = await EleventyFetch(
  `${endpoint}?page=1&per-page=25&token=${process.env.WEBMENTION_IO_TOKEN}`,
  {
    directory: '.cache-webmentions',
    duration: '30d',
    type: 'json',
    verbose: true
  }
)

const { likes, replies, reposts } = responseToWebmentions(response)
```

Don't forget to sanitize the webmentions before displaying them on your site.

</Transform>

<!--
jf2 is a working name for a simplified more minimal JSON representation of microformats2.
-->
