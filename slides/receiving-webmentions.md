---
class: pl-15% pr-10%
layout: center
title: Receiving webmentions
---

<h1>Receiving webmentions</h1>

<Transform scale="0.9">

You advertise your webmention endpoint in the `<head>` of your HTML pages.

```html
<link rel="webmention" href="https://webmention.io/giacomodebidda.com/webmention">
<link rel="pingback" href="https://webmention.io/giacomodebidda.com/xmlrpc">
```

Bridgy sends webmentions to your webmention endpoint.

Webmentions appear on your [webmention.io dashboard](https://webmention.io/dashboard).

<img class="w-55% m-auto" src="/webmentions-io-dashboard.png" />

</Transform>

<!--
A pingback is one of four types of linkback methods for Web authors to request notification when somebody links to one of their documents. This enables authors to keep track of who is linking to, or referring to their articles.

webmention.io is an open-source project and hosted service for receiving webmentions on behalf of your indieweb site.

Webmention.io implements webhooks. When a webmention (or a pingback I guess) arrives at your webmentions endpoint on Webmention.io, Webmention.io make a POST to the target URL you specified. You can configure this here.
https://webmention.io/settings/webhooks

Self-host alternative to webmention.io: https://git.brainbaking.com/wgroeneveld/go-jamming
-->