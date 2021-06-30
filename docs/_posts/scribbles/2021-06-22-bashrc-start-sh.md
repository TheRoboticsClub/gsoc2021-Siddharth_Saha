---
layout: post
title:  "Why ~/.bashrc is not sourced with ./start.sh"
date:   2021-06-22 23:14:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: ""
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

### Background of the Issue[^1]
When `start.sh` has the following script-
```sh
#!/usr/bin/env bash
python3 RoboticsAcademy/manage.py runserver 0.0.0.0:8000 &
python3.8 manager.py
```

Running the command `docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 foxy-radi ./start.sh` does not automatically source the `~/.bashrc`.

As a result, when the exercise is run, it throws the error that the ROS commands are not recognized. This was highlighted in RoboticsAcademy's [Issue #958](https://github.com/JdeRobot/RoboticsAcademy/issues/958).

### Reason of the Issue
`~/.bashrc` contains the lines at the start-
```sh
# If not running interactively, don't do anything
[ -z "$PS1" ] && return
```
Any non-interactive terminal exits early as a result without raising any error. Ultimately, many of the environment variables that we desire are not set.

Our `start.sh` is run non-interactively from a docker container. Therefore, it does not have _"$PS1"_ set.

### Solutions
The solution mentioned in [this AskUbuntu answer](https://askubuntu.com/a/77053/771449) would be deemed as bad practice. It asks you to modify permissions of the `~/.bashrc` file.  
In fact, [this StackOverflow comment](https://stackoverflow.com/questions/55990383/correct-way-to-source-bashrc-for-non-interactive-shell#comment98634311_55990383) describes what could go wrong.

#### Cleaner Solution
Currently, all the `source` commands for ROS and Gazebo setup files have been added in a separate script called `radi-entrypoint.sh`.

`start.sh` has been modified as follows-
```sh
#!/usr/bin/env bash
# This file is intended to be run from the root
# of the Docker container

# radi-entrypoint's primary purpose is to source the ROS setup files.
source radi-entrypoint.sh
# Start the Django server. Load the list of exercises from db.sqlite3
python3 RoboticsAcademy/manage.py runserver 0.0.0.0:8000 &
# Start RADI
python3.8 manager.py
```

We also need ROS environment sourced inside the bash terminal as the _console_ would be used by the student.  
The only mention of `~/.bashrc` inside the Dockerfile is in the following layer-
```docker
RUN echo 'source /radi-entrypoint.sh' >> ~/.bashrc
```

### Consequences
The proposed method allows us to reduce redundancy in the ROS commands inside `manager.py` by ensuring that the ROS environment is sourced at all places.

#### References
[^1]: [https://stackoverflow.com/questions/55206227/why-bashrc-is-not-executed-when-run-docker-container](https://stackoverflow.com/questions/55206227/why-bashrc-is-not-executed-when-run-docker-container)