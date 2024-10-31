---
class: pl-15%
layout: full
title: What is an IndieAuth server?
---

<h1>How does IndieAuth work?</h1>

<Transform scale="0.9">

An <span class="color:accent">IndieAuth server</span> is set of endpoints: [authorization endpoint](https://indieauth.spec.indieweb.org/#authorization-endpoint), [token endpoint](https://indieauth.spec.indieweb.org/#token-endpoint), [revocation endpoint](https://indieauth.spec.indieweb.org/#token-revocation), [introspection endpoint](https://indieauth.spec.indieweb.org/#access-token-verification-request), [userinfo endpoint](https://indieauth.spec.indieweb.org/#user-information).

A <span class="color:accent">website/app</span> that implements IndieAuth advertises these endpoints at the URL <code>rel=indieauth-metadata</code>, using [IndieAuth Server Metadata](https://indieauth.spec.indieweb.org/#indieauth-server-metadata) (an extension of OAuth 2.0 Authorization Server Metadata).

```html
<link rel="indieauth-metadata" href="https://giacomodebidda.com/.well-known/oauth-authorization-server">
```

<span class="color:accent">IndieAuth clients</span> fetch the URL at <code>rel=indieauth-metadata</code> and discover these endpoints.

```json
{
  "authorization_endpoint": "https://indieauth.com/auth",
  "introspection_endpoint": "https://micropub.fly.dev/introspect",
  "issuer": "https://giacomodebidda.com/",
  "revocation_endpoint": "https://micropub.fly.dev/revocation",
  "scopes_supported": ["email", "profile", "create", "draft", "update", "delete", "media"],
  "token_endpoint": "https://micropub.fly.dev/token",
  "userinfo_endpoint": "https://micropub.fly.dev/userinfo"
}
```

</Transform>

<!--
IndieAuth Server Metadata adopts OAuth 2.0 Authorization Server Metadata.
-->
