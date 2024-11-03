---
class: pl-15% pr-10%
layout: center
title: Sending webmentions
---

<h1>Sending webmentions</h1>

<Transform scale="0.9">

You want to send me a webmention? You can cite my article on your site and either:

- Go to [webmention.io/giacomodebidda.com/webmention](https://webmention.io/giacomodebidda.com/webmention) and fill in the form.
- Fill in the form I include on my site.
- Let a service like [webmention.app](https://webmention.app) send your outgoing webmentions automatically.

<br>

<img class="w-70% m-auto" src="/webmentions-form.png" />

</Transform>

<!--

La API di Wembention.io implementa i @webhook. Quando una webmention (credo anche un pingback) al tuo endpoint su Webmention.io, Webmention.io fa una POST verso una target URL che gli hai detto te. Configuri questa cosa qui.

https://webmention.io/settings/webhooks

https://git.brainbaking.com/wgroeneveld/go-jamming

A pingback is one of four types of @linkback  methods for Web authors to request notification when somebody links to one of their documents. This enables authors to keep track of who is linking to, or referring to their articles.
-->