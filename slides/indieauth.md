---
# class: pl-15%
layout: center
# layout: default
title: IndieAuth
---

<h1>IndieAuth</h1>

<Citation
  author="Aaron Parecki"
  citeHref="https://aaronparecki.com/2018/07/07/7/oauth-for-the-open-web"
  citeText="OAuth for the Open Web">
  <template v-slot:quote>
    <p slot="quote">
      Every service that spins up an OAuth-enabled API ends up being its own <span class="color:accent">isolated system</span>.<br>
      For example, if I want to build an app that can read someone's step count from FitBit, I have to first go register as a developer on FitBit's website in order to get API keys to use with their OAuth API.
    </p>
  </template>
</Citation>

IndieAuth is:

- an OAuth 2.0 extension that defines an identity layer
- an authentication protocol alternative to OpenID Connect
- typically used to obtain an OAuth 2.0 Bearer tokens for Micropub clients
- used on sites like [indiebookclub.biz](https://indiebookClub.biz/)

<!--
In IndieAuth the identity is your domain itself.

- <Anchor href="https://github.com/simonw/datasette-indieauth" text="datasette-indieauth" />
- <Anchor href="IndieLogin.com" text="IndieLogin.com" />
- <Anchor href="https://github.com/reiterate-app/authorio" text="authorio" />

If you’re familiar with writing an OAuth client, then you're familiar with the problem of having to register your client manually with each OAuth provider. IndieAuth uses DNS as a replacement for client registration, thereby eliminating the need for any manual registration with providers.

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

Acquiescence is an IndieAuth authorization and token endpoint written in Ruby.
https://github.com/barryf/acquiescence

Selfauth is a self-hosted Authorization Endpoint used to login with a personal URL (as Web sign-in) via IndieAuth. It's written in PHP.
https://github.com/Inklings-io/selfauth

- https://indieweb.org/authorization-endpoint
- https://indieweb.org/token-endpoint

https://aaronparecki.com/2020/12/03/1/indieauth-2020

https://indieauth.spec.indieweb.org/#discovery

indiebookclub is an app for posting books you are reading to your website using Micropub.
-->
