---
layout: post
title:  "Existing Websocket Architecture Design"
date:   2021-06-21 14:34:00 +0530
blurb: ""
og_image: /assets/img/content/existing-architecture/Banner.jpg
category: ""
---

<img src="{{ "/assets/img/content/existing-architecture/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

- Django webserver is served at port **8000**

Inside _scripts/_ directory:
- `manager.py` creates websocket server at port **8765**


The remaining files are all inside the _static/exercises/_ directory of the respective exercise:
- `launcher.js` connects to websocket at port **8765**
- `exercise.py` creates websocket server at port **1905**
- `ws_code.js` connects to websocket at port **1905**
- `gui.py` creates websocket server at port **2303**
- `ws_gui.js` connects to websocket at port **2303**