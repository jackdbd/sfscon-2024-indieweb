---
class: pl-15% pr-5%
layout: center
title: Backfeed
---

<h1>🔁 Backfeed (reverse syndication)</h1>

<Transform scale="0.9">

A POSSE copy of your original content is published on a silo (e.g. a social network). People interact with that content. You want to capture these <span class="color:accent">interactions</span> so you can have <span class="color:accent">cross-site conversations</span>.

How can you do it?

1. Poll the silo API (or scrape the silo) to retrieve interactions like replies, likes, reposts, bookmarks
1. Link each interaction to the original content using <Anchor href="https://indieweb.org/original-post-discovery" text="original post discovery" />
1. Convert interactions into <Anchor href="https://www.w3.org/TR/webmention/" text="webmentions" />
1. Submit all webmentions to your webmention endpoint
1. Fetch your webmention endpoint and display the webmentions on your site

This process is called backfeed.

You can implement it yourself or use a backfeed proxy like <Anchor href="https://brid.gy/" text="Bridgy" />

</Transform>

<!--
Most likely, people will interact not with your original content publish on your site, but with the POSSE copy that you published on a silo (e.g. a social network). How do you capture these interactions and show them on your site?

Per vedere se la gente ha reagito a un tuo social media post, devi fondamentalmente fare un polling delle API dei vari social media networks (se hanno una API) o fare scraping (se non hanno una API). Puoi fare te personalmente questa cosa, o farla fare a un servizio come @Bridgy (webmentions).

https://fed.brid.gy/ is a different service. I have never used it.
-->
