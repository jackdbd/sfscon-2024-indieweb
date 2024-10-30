const fosdem = /^https:\/\/.*fosdem\.org\/[0-9].+\/.*$/;
const github = /^https:\/\/github\.com\/.*\/.*$/;
const nodejs = /^https:\/\/nodejs\.org\/.*\/.*$/;
const reddit = /^https:\/\/www\.reddit\.com\/r\/.*$/;
const twitter = /^https:\/\/twitter\.com\/.*$/;
const youtube = /^https:\/\/youtu\.be\/.*$/;
const youtube_com = /^https:\/\/www\.youtube\.com.*$/;

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
