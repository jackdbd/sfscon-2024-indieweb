---
class: pl-15% pr-5%
layout: center
title: Micropub
---

<h1>📰Micropub</h1>

<Transform scale="0.9">

A [protocol](https://micropub.spec.indieweb.org/) for creating, editing, deleting, undeleting a [post](https://indieweb.org/post) on a website hosted on your own domain using third-party clients. And for syndicating that post elsewhere.

A <span class="color:accent">website/app</span> advertises its micropub endpoint at the URL <code>rel=micropub</code>.

A <span class="color:accent">Micropub client</span>:

- Discovers your IndieAuth endpoints and your Micropub endpoints.
- Authenticates you (e.g. using RelMeAuth or IndieAuth).
- Submits your posts to the appropriate Micropub endpoint.

```txt
Link: <https://micropub.fly.dev/micropub>; rel="micropub"
```

```html
<link rel="micropub" href="https://micropub.fly.dev/micropub">
```

A <span class="color:accent">Micropub server</span> is a set of endpoints:

- A `/micropub` endpoint for create / update / delete / undelete <span class="color:accent">actions</span> on a post (e.g. a note).
- A `/media` endpoint for actions on some media (e.g. an image, some audio).


</Transform>

<!--
In IndieWeb lingo, a post is any content that will be published at a permalink.

Examples of websites that support Micropub:

- https://indiebookclub.biz/documentation
- <Anchor href="https://github.com/getindiekit/indiekit/" text="Indiekit" />

indiebookclub is an app for keeping track of the books you are reading or want to read. It is primarily intended to help you own your data by posting directly to your own site with Micropub. If your site does not support Micropub yet, you can still post to your indiebookclub profile.

Micropub clients can use IndieAuth for authentication.

The Micropub vocabulary is derived directly from the microformats2 vocabulary. Micropub is meant to be a serialization of Microformats that can be submitted as an HTTP POST. The method for developing new Micropub vocabularies is to look at the Microformats representation and work backwards.

OAuth 2.0 defines three roles: the authorization endpoint, the token endpoint, and the resource server. In the context of the IndieWeb, the "resource server" will most likely be your website and your micropub endpoint.
-->
