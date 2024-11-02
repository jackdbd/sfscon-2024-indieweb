---
class: pl-15% pr-5%
layout: center
title: Syndication
---

<h1>📢 Syndication (cross-posting)</h1>

<Transform scale="0.9">

1. Publish (on your) Own Site → Your site has the original post (i.e. the canonical URL)
1. Syndicate Elsewhere → [syndication targets](https://www.w3.org/TR/micropub/#syndication-targets) (e.g. social networks) get a copy of your post

<br>

<Citation
  citeHref="https://indieweb.org/POSSE"
  citeText="POSSE, on indieweb.org">
  <template v-slot:quote>
    <p slot="quote">
    By posting first on your own site, you create a direct ownership chain that can be traced back to you without any intervening 3rd party services (silos) TOS's getting in the way.
    </p>
  </template>
</Citation>

<br>

- Your <span class="color:accent">micropub endpoint</span> should list all the syndication targets you want to send your post to.
- Your <span class="color:accent">micropub client</span> should have a way to publish to the syndication targets. For example, for posting on LinkedIn you will need to create a [LinkedIn OAuth app](https://www.linkedin.com/developers/apps/new).

As you can read in <Anchor href="https://github.com/getindiekit/indiekit/issues/581" text="Rethinking syndication #581" />, implementing syndication is not trivial.

</Transform>

<!--
According to Google, the canonical link element is not considered to be a directive, but rather a hint that the ranking algorithm will "honor strongly".

Canonicalization is the process of selecting the representative –canonical– URL of a piece of content. Consequently, a canonical URL is the URL of a page that Google chose as the most representative from a set of duplicate pages. Often called deduplication, this process helps Google show only one version of the otherwise duplicate content in its search results.

- https://developers.google.com/search/docs/crawling-indexing/canonicalization
- https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls
-->