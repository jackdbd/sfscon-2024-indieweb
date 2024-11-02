---
class: pl-20% pr-15%
layout: center
title: Own your identity
---

<h1>🪪 Own your <span class="color:accent">identity</span></h1>

<Transform scale="0.9">

<Citation
  citeHref="https://indieauth.com/"
  citeText="IndieAuth.com: Sign in with your domain name">
  <template v-slot:quote>
    <p slot="quote">
    Instead of logging in to websites as "you on Twitter" or "you on Facebook", you should be able to log in as just "you". We should <span class="color:accent">not be relying on Twitter or Facebook to provide our authenticated identities</span>, we should be able to use our own domain names to log in to sites everywhere.
    </p>
  </template>
</Citation>

</Transform>

<!--
A web sign-in UX MUST not require Javascript in order to function, though it may use progressive enhancement for a smoother UX.

Setup Web sign-in for login, sign-in to https://indieweb.org/, and create your user page, linking to your personal domain.

1. A website presents a Web sign-in login form to the user
2. The user enters their personal domain name into the login form
3. The website verifies that the user has control of that domain (e.g. via RelMeAuth or IndieAuth)

RelMeAuth. Easier: rel-me links to your "other profiles" on the web (e.g. at silos) and have them link back.

IndieAuth. Harder: Local [IndieAuth provider](https://indieweb.org/IndieAuth#IndieAuth_Providers) support in your own site.

https://indieweb.org/IndieMark

There are two complementary methods for adding support for web sign-in on your domain. RelMeAuth and IndieAuth.
https://indieweb.org/How_to_set_up_web_sign-in_on_your_own_domain
-->
