---
# class: pl-10% pr-10%
layout: center
title: IndieAuth and Micropub discovery
---

<h1>🔎 Endpoints discovery</h1>

<Transform scale="0.9">

The <span class="color:accent">micropub endpoint</span> is discovered using either a HTTP Link header...

```txt
Link: <https://micropub.fly.dev/micropub>; rel="micropub"
```

...or a `<link rel="me">` tag in the `<head>`.

```html
<link rel="micropub" href="https://micropub.fly.dev/micropub">
```

The <span class="color:accent">media endpoint</span> is discovered with a `GET` to the micropub endpoint.

```txt
GET /micropub?q=config
Authorization: Bearer xxxxxxxxx

{
  "media-endpoint": "https://media.example.com/micropub"
}
```

</Transform>
