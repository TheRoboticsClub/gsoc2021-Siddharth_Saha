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

#### Socket connections

- Django webserver is served at port **8000**

Inside _scripts/_ directory:
- `manager.py` creates websocket server at port **8765**


The remaining files are all inside the _static/exercises/_ directory of the respective exercise:
- `launcher.js` connects to websocket at port **8765**
- `exercise.py` creates websocket server at port **1905**
- `ws_code.js` connects to websocket at port **1905**
- `gui.py` creates websocket server at port **2303**
- `ws_gui.js` connects to websocket at port **2303**


#### Components

For each exercise there are two sides: the python part and the html part. They are connected in runtime through websockets (code_ws and gui_ws). For instance, in the Control Position drone exercise:

- the html part is here: [https://github.com/JdeRobot/RoboticsAcademy/tree/master/exercises/templates/exercises/position_control](https://github.com/JdeRobot/RoboticsAcademy/tree/master/exercises/templates/exercises/position_control)
- the python part is here: [https://github.com/JdeRobot/RoboticsAcademy/tree/master/exercises/static/exercises/position_control/web-template](https://github.com/JdeRobot/RoboticsAcademy/tree/master/exercises/static/exercises/position_control/web-template)

The `exercise.html` and `exercise.py` (in the above locations) are connected at runtime through websockets.
