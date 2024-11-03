const fosdem = /^https:\/\/.*fosdem\.org\/[0-9].+\/.*$/;
const github = /^https:\/\/github\.com\/.*\/.*$/;
const indieweb = /^https:\/\/indieweb\.org\/.*$/;
const nodejs = /^https:\/\/nodejs\.org\/.*\/.*$/;
const reddit = /^https:\/\/www\.reddit\.com\/r\/.*$/;
const twitter = /^https:\/\/twitter\.com\/.*$/;
const youtube = /^https:\/\/youtu\.be\/.*$/;
const youtube_com = /^https:\/\/www\.youtube\.com.*$/;
const w3c_org = /^https:\/\/www\.w3\.org.*$/;
const wikipedia_org = /^https:\/\/en\.wikipedia\.org\/.*$/;

export const isFosdem = (s: string) => {
  if (s.match(fosdem)) {
    return true;
  } else {
    return false;
  }
};

export const isGitHub = (s: string) => {
  if (s.match(github)) {
    return true;
  } else {
    return false;
  }
};

export const isIndieweb = (s: string) => {
  if (s.match(indieweb)) {
    return true;
  } else {
    return false;
  }
};

export const isNodejs = (s: string) => {
  if (s.match(nodejs)) {
    return true;
  } else {
    return false;
  }
};

export const isReddit = (s: string) => {
  if (s.match(reddit)) {
    return true;
  } else {
    return false;
  }
};

export const isTwitter = (s: string) => {
  if (s.match(twitter)) {
    return true;
  } else {
    return false;
  }
};

export const isYouTube = (s: string) => {
  if (s.match(youtube) || s.match(youtube_com)) {
    return true;
  } else {
    return false;
  }
};

export const isW3C = (s: string) => {
  if (s.match(w3c_org)) {
    return true;
  } else {
    return false;
  }
};

export const isWikipedia = (s: string) => {
  if (s.match(wikipedia_org)) {
    return true;
  } else {
    return false;
  }
};
