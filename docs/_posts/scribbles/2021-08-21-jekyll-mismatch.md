---
layout: post
title:  "Mismatch of Jekyll versions and the trouble caused"
date:   2021-08-21 18:44:00 +0530
blurb: ""
og_image: /assets/img/content/jekyll-mismatch/Banner.png
category: ""
---

<img src="{{ "/assets/img/content/jekyll-mismatch/Banner.png" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

The banner image gives a glimpse of my scuffles with Jekyll (commit messages are from *Week Zero*). More precisely, with Jekyll's dissimilar behavior on my local machine and on GitHub pages. Till now, I got around these issues with a few hacky tricks and a not-so-smooth blogging experience.


After 12 weeks of GSoC, [Jekyll Liquid Links](https://jekyllrb.com/docs/liquid/tags/#links) is where I finally realized that there might be a version mismatch.

[GitHub uses Jekyll 3.9.0](https://pages.github.com/versions/) (as of now). On the other hand, the Gemfile on my local machine contained: `gem "jekyll", "~> 4.0.0"`

It's the end of GSoC, but I feel satisfied with zeroing in on the problem