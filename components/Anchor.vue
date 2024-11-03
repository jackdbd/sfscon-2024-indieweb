<script setup lang="ts">
import { ref, computed } from "vue";
import {
  isGitHub,
  isIndieweb,
  isReddit,
  isTwitter,
  isYouTube,
  isW3C,
  isWikipedia,
} from "./utils.js";

export interface Props {
  alt?: string;
  href: string;
  text: string;
}

const props = withDefaults(defineProps<Props>(), {
  alt: "Link alt text",
});

const alt = ref(props.alt);
const href = ref(props.href);

let icon_type = "";
if (isGitHub(href.value)) {
  icon_type = "github";
} else if (isIndieweb(href.value)) {
  icon_type = "indieweb";
} else if (isReddit(href.value)) {
  icon_type = "reddit";
} else if (isTwitter(href.value)) {
  icon_type = "twitter";
} else if (isYouTube(href.value)) {
  icon_type = "youtube";
} else if (isW3C(href.value)) {
  icon_type = "w3c";
} else if (isWikipedia(href.value)) {
  icon_type = "wikipedia";
} else {
  icon_type = "default";
}

const classObject = computed(() => ({
  github: isGitHub(href.value),
  link: true,
  reddit: isReddit(href.value),
  twitter: isTwitter(href.value),
  youtube: isYouTube(href.value),
}));
</script>

<style scoped>
.link {
  border-width: 0;
  text-decoration: underline;
  text-decoration-color: var(--primary-color);
  text-decoration-style: dashed;
  text-underline-offset: 0.35em;
}

.link:hover {
  color: var(--primary-color);
  text-decoration-style: solid;
}

.link svg {
  color: var(--primary-color);
  display: inline;
}
</style>

<template>
  <a
    :href="href"
    target="_blank"
    rel="noopener"
    :alt="alt"
    :class="classObject"
  >
    {{ text }}
    <carbon:logo-github v-if="icon_type === 'github'" />
    <IndieWebLogo v-else-if="icon_type === 'indieweb'" />
    <uim-reddit-alien-alt v-else-if="icon_type === 'reddit'" />
    <carbon:logo-twitter v-else-if="icon_type === 'twitter'" />
    <carbon:logo-youtube v-else-if="icon_type === 'youtube'" />
    <W3CLogo v-else-if="icon_type === 'w3c'" />
    <WikipediaLogo v-else-if="icon_type === 'wikipedia'" />
    <carbon:link v-else />
  </a>
</template>
