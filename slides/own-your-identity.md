---
# class: pl-15%
layout: center
title: Own your identity
---

<h1>Own your <strong class="color:accent">identity</strong></h1>

<Transform scale="0.9">

<Citation
  citeHref="https://indieauth.com/"
  citeText="IndieAuth.com: Sign in with your domain name">
<template v-slot:quote>

<p slot="quote">
Instead of logging in to websites as "you on Twitter" or "you on Facebook", you should be able to log in as just "you". We should not be relying on Twitter or Facebook to provide our authenticated identities, we should be able to <strong class="color:accent">use our own domain names to log in</strong> to sites everywhere.
</p>
</template>
</Citation>

This <strong class="color:accent">mechanism</strong> is called <Anchor href="https://indieweb.org/Web_sign-in" text="Web sign-in" />

Web sign-in can be implemented using these <strong class="color:accent">authentication protocols</strong>:

- RelMeAuth. Easier: rel-me links to your "other profiles" on the web (e.g. at silos) and have them link back.
- IndieAuth. Harder: Local [IndieAuth provider](https://indieweb.org/IndieAuth#IndieAuth_Providers) support in your own site.

</Transform>

<!--
A web sign-in UX MUST not require Javascript in order to function, though it may use progressive enhancement for a smoother UX.

Setup Web sign-in for login, sign-in to https://indieweb.org/, and create your user page, linking to your personal domain.

Easy: rel-me links to your "other profiles" on the web (e.g. at silos) and have them link back. How to setup rel-me links.

Harder: Local IndieAuth provider support in your own site.

https://indieweb.org/IndieMark

There are two complementary methods for adding support for web sign-in on your domain. RelMeAuth and IndieAuth.
https://indieweb.org/How_to_set_up_web_sign-in_on_your_own_domain
-->
