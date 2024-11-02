---
# class: pl-15%
layout: center
# layout: default
title: RelMeAuth
---

<h1>RelMeAuth</h1>

<Transform scale="0.9">

RelMeAuth uses <code class="color:accent">rel="me"</code> link(s) to match your <span class="color:accent">domain name</span> with existing <span class="color:accent">identity(ies)</span>.

In RelMeAuth an identity can be:

- The account you have with an <span class="color:accent">OAuth 2.0 provider</span> (e.g. your GitHub account)
- Your email
- Your OpenPGP key

</Transform>

<!--
Very few OAuth 2.0 providers support <code>rel="me"</code>. And not all websites that implement RelMeAuth support all OAuth providers (typically they support only GitHub).

If a website that implements RelMeAuth allows you to login using email, phone or OpenPGP key, you don't need an identity on a third-party OAuth 2.0 provider (e.g. you don't need a GitHub account).

If any of your rel="me" links also include `authn` in the list of rels, then IndieLogin.com will only use the links with authn, and will no longer consider your plain rel="me" links as authentication options.
https://indielogin.com/setup
-->
