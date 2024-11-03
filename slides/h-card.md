---
class: pl-10% pt-5% mt-0%
layout: center
title: h-card
---

<Transform scale="0.9">

<img src="/barry-frost-logo.png" class="w-15% m-auto" />

```html
<div class="h-card">
  <img class="u-photo" src="/barryfrost.jpg" alt="Photo of Barry" width="28" height="28">
  <h1 class="p-name">Barry Frost</h1>
  <a class="u-url hidden" href="/" rel="me"></a>
  <a class="u-url" href="acct:barry@barryfrost.com"></a>
</div>
```

<img src="/barry-frost-h-card.png" class="w-50% m-auto" />

Validate your `h-card` on [indiewebify.me/validate-h-card](https://indiewebify.me/validate-h-card/).

</Transform>

<!--
Check the u-url class used here.
https://gitlab.com/nolith/indieweb-template/-/blob/master/source/index.html?ref_type=heads

Update your index.html home page to include your basic information in an h-card. This h-card can be as simple as your name.

Why? When you publish content, you can link back to your home page using rel-author and your authorship information can be retrieved from the h-card.

Advantages: While you are not yet publishing content on your own site, at this point you have:

Staked your claim on the indieweb
Set up an identity that you own and control
Why add my basic contact information in an h-card?

This helps with providing authorship information for anything you publish and link back to your home page with rel-author.
-->
