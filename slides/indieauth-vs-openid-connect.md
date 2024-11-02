---
layout: two-cols
---

# IndieAuth

- <span class="color:accent">Unique user identifier</span>: a URL
- Identity is <span class="color:accent">portable</span>
- Identity is tied to DNS
- OAuth 2.0 clients (aka OAuth apps) require no registration, since client IDs are resolvable URLs
- Defines 2 [scopes](https://indieweb.org/scope#IndieAuth_Scopes) for the access token
- Your app can define additional scopes/claims
- access token, no ID token
- User's info available at the `/userinfo` endpoint
- Does not deal with session management, focuses on just returning the user's identifier

::right::

# OpenID Connect

- <span class="color:accent">No</span> consistent <span class="color:accent">unique user identifier</span> across providers
- Identity is <span class="color:accent">not portable</span> → many identities
- Each identity is tied to an OpenID Connect provider
- OAuth 2.0 clients require registration (e.g. you need to create a [GitHub OAuth App](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/creating-an-oauth-app), a [LinkedIn app](https://www.linkedin.com/developers/apps/new), etc.)
- Defines 20 [standard claims](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
- OIDC provider can define additional scopes/claims
- Your app can define additional scopes/claims
- access token and [ID token](https://openid.net/specs/openid-connect-core-1_0.html#IDToken)
- Claims returned in an ID Token and are also available through the `/userinfo` endpoint
- Deals with session management, ID tokens can be used as a session

<!--
## OpenID Connect identities are not portable

OIDC provider can define additional scopes/claims

E.g. [OAuth 2.0 Scopes for Google APIs](https://developers.google.com/identity/protocols/oauth2/scopes)

OpenID Connect is an authentication protocol built on OAuth 2.0, that in practice is not implemented to provide open (portable) identifiers across systems, nor does it have anything to do with OpenID (1 or 2) except in name, but instead, identities are tied to a specific identity provider.

https://indieweb.org/OpenID_Connect

Google is an OpenID Connect provider, so every Google account is an OpenID Connect identity. However, that identity is tied to Google, and there is no way to move it to a new provider to reuse it later.

https://indieweb.org/How_is_IndieAuth_different_from_OpenID_Connect

## Scope vs Claim

Scope: high-level permission or access group that a client can request. Each scope typically allows access to a set of claims.

Claim: specific piece of information about the user. Claims are grouped under scopes, but they are more granular.

For instance, the profile scope might include claims such as name, family_name, given_name, and profile.
-->
