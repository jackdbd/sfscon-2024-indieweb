---
# class: pl-15%
layout: default
title: Backfeed
---

<h1>🔁 Backfeed (reverse syndication)</h1>

<Transform scale="0.9">

A POSSE copy of your original content is published on a silo (e.g. a social network). People interact with that content. You want to capture these <span class="color:accent">interactions</span> so you can have <span class="color:accent">cross-site conversations</span>. How to do it?

1. Poll the silo API
1. Link each interaction to the original content using <Anchor href="https://indieweb.org/original-post-discovery" text="original post discovery" />
1. Aggregate the interactions into replies, likes, reposts, bookmarks
1. Submit all interactions to an endpoint that will turn them into <Anchor href="https://www.w3.org/TR/webmention/" text="webmentions" />

and show them on your site?
How do you capture interactions on the POSSE copy and show them on your site?

Interactions on the content

People might interact not with your original content publish on your site, but with the POSSE copy that you published on a silo (e.g. a social network). How do you capture these interactions and show them on your site?

POSSE copy on your site → capture social media reactions → aggregate them → send them to your site → display them there
(social media) reaction

In teoria potresti decidere di ripubblicare il tuo contenuto (e.g. un blog post) su un qualsiasi altro sito. In pratica, i siti dove ripubblichi il tuo contenuto sono dei social networks. Quindi un like/retweet a una tua POSSE copy e’ una social media reaction. Quindi una definizione che copre il 90% degli use cases di backfeed e’ questa:
cattura le social media reactions della gente a un tuo Twitter tweet / Facebook post / Instagram story, aggregale, inviale al tuo sito e mostrale li’.

bridgy

https://brid.gy/

https://fed.brid.gy/

</Transform>

<!--
People might interact not with your original content publish on your site, but with the POSSE copy that you published on a silo (e.g. a social network). How do you capture these interactions and show them on your site?

Per vedere se la gente ha reagito a un tuo social media post, devi fondamentalmente fare un polling delle API dei vari social media networks (se hanno una API) o fare scraping (se non hanno una API). Puoi fare te personalmente questa cosa, o farla fare a un servizio come @Bridgy (webmentions).
-->
