---
# class: pl-15%
# layout: center
# layout: full
# layout: cover
# layout: intro
layout: two-cols
# layout: quote
title: rel=me links
---

<h1><span class="color:accent">website</span> → provider</h1>

<Transform scale="0.9">

Option A: `<a rel="me">` in the `<body>`

```html
<a href="https://github.com/jackdbd" rel="me">@jackdbd on Github</a>

<a href="https://fosstodon.org/jackdbd" rel="me">@jackdbd on Mastodon</a>

<a href="mailto:me@example.com" rel="me">me@example.com</a>

<a href="sms:+15035551212" rel="me">(503) 555-1212</a>

<a href="/assets/openpgp-pubkey.txt" rel="pgpkey">My OpenPGP public key</a>
```

Option B: `<link rel="me">` in the `<head>`

```html
<link rel="me" href="https://github.com/jackdbd" />
<link rel="me" href="https://fosstodon.org/@jackdbd" />
<link rel="me" href="mailto:me@example.com" />
<link rel="me" href="sms:+15035551212" />
<link rel="pgpkey" href="/assets/openpgp-pubkey.txt" />
```

</Transform>

::right::

<h1><span class="color:accent">provider</span> → website</h1>

<Transform scale="0.9">

- Add your website in your [Github profile](https://github.com/settings/profile)
- [Verify your identity on Mastodon](https://fosstodon.org/settings/verification)
- Receive a verification code via email
- Receive a verification code via SMS
- Sign a challenge with your OpenPGP private key (e.g. `echo <challenge> | gpg --clearsign --armor`)

Use [indiewebify.me/validate-rel-me](https://indiewebify.me/validate-rel-me/) to validate that your domain name and profiles are linked together.

<img src="/web-sign-in.png" class="w-100% m-auto" />

</Transform>

<!--
https://indieweb.org/rel-me

The HTML (`a` tags in `body` or `link` tags in `head`) must be accessible without executing JavaScript.

Try adding an email address or PGP key to your website to avoid using a third-party OAuth provider when signing in.

Instructions to login in with your OpenPGP key:
https://indieauth.com/pgp
-->
