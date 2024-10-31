---
# class: pl-15%
layout: center
# layout: default
title: IndieAuth
---

<h1>No OAuth 2.0 client registration</h1>

<Transform scale="0.9">

In IndieAuth the client ID is a resolvable URL

```txt
GET https://indiebookclub.biz/id
```

```json
{
  "client_id": "https://indiebookclub.biz/id",
  "client_name": "indiebookclub",
  "client_uri": "https://indiebookclub.biz/",
  "logo_uri": "https://indiebookclub.biz/images/book.svg",
  "redirect_uris": ["https://indiebookclub.biz/auth/callback"]
}
```

</Transform>

<!--
OAuth 2.0 clients do not need to be registered at the authorization endpoint in advance because the client identifier is simply a URL. This URL serves as the client ID, which is directly resolvable, allowing the authorization server to retrieve information about the client dynamically. The client's URL can contain metadata (such as the redirect URL) that would normally be specified during a typical OAuth client registration process.
-->
