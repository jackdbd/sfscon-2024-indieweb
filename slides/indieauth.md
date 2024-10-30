# IndieAuth

TODO

- Web Sign In
- IndieAuth
- [IndieAuth.com](https://indieauth.com/)
- [IndieLogin.com](https://indielogin.com/)
- RelMeAuth

<Citation
  author="Aaron Parecki"
  citeHref="https://aaronparecki.com/2018/07/07/7/oauth-for-the-open-web"
  citeText="OAuth for the Open Web">
<template v-slot:quote>

<p slot="quote">
Every service that spins up an OAuth-enabled API ends up being its own <strong class="color:accent">isolated system</strong>. For example, if I want to build an app that can read someone's step count from FitBit, I have to first go register as a developer on FitBit's website in order to get API keys to use with their OAuth API.
</p>
</template>
</Citation>

<!--

This post details a few specific challenges with OAuth preventing it from being used by independent websites, as well as the solutions to each.
https://aaronparecki.com/2018/07/07/7/oauth-for-the-open-web

In a world where everyone's own website is its own OAuth server, it's obviously not practical to have an app developer register API keys at each.

In OAuth, client registration gives us a few specific things:

- Provides a unique ID that is used to identify the app throughout the OAuth process, called the client ID
- Provides a place to enter the name and icon for the app which is displayed during login
- Registers one or more redirect URLs for security
- For "confidential clients" (web server apps), registration also provides the client with a client secret

In order to avoid registration, we need a solution for the first three bullet points above.

Client ID: Every application needs a unique identifier. If we're talking about turning every website into an OAuth provider, we need a way to have globally unique identifiers for every OAuth app. It turns out we already have a mechanism for this: URLs! In this Open Web version of OAuth, client IDs can be the application's URL. For web-based apps, this is straightforward, as it's simply the website the app is running on. For native apps, this can be the application's "about" page.

https://indieweb.org/How_to_set_up_web_sign-in_on_your_own_domain
-->
