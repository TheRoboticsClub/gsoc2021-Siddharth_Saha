---
layout: post
title:  "(Running) Rough work"
date:   2021-05-17 16:18:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: ""
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

#### Tasks
- [x] Update Meet 2 minutes
- [x] Update Meet 3 minutes
- [x] Convert tasks to issues
- [ ] Complete #11, #12, Final Report
- [ ] Complete Nav2 Concepts
- [x] Initiate RADI GUI in ROS2
- [ ] File the virtualgl issue on upstream repo

#### Questions
- [x] Why was the older JdeRobot GUI controller dropped?
- [x] What does an architecture look like?

#### General questions
- [x] what is bringup?
    + *Reference*: The Turtlebot Bringup package contains all the neccesary configuration and launch files for loading the Turtlebot drivers.
    + Must be on similar lines

#### ROS2 Doubts
- [x] Build farm
    + `Bloom`: Used both in ROS1 and ROS2
    + a bunch of build servers (CI server that runs the builds and automated tests)
- [x] plugins vs nodes in ROS2
    + Nodes: Vertices in the behavior tree
    + Plugins: Functionalities that can be linked to the node
- [x] node plugins
    + We create node plugins which can be constructed into a tree, inside the BT Navigator. The node plugins are loaded into the BT and when the XML file of the tree is parsed, the registered names are associated.
- [x] *interfaces*
    + Refers to message, service, action files
- [x] *mixins* in colcon
    + Mixins can be used by several verbs to contribute command line arguments defined in external files. 

#### Notes
- "{goal}" is a blackboard variable
- Remember to `git submodule update --init --recursive`!!
- Avoid the rsync mess in my Dockerfile
- HAL: Hardware Abstraction Layer
- Design decision-  
    Foxy RADI uses several files from the noetic branch of RoboticsAcademy. I will commit my modifications on my fork of the RoboticsAcademy repo, instead of to the collab repo.  
    This will enable future developers to trace back the history of unchanged files.

#### Possible things to play with
- [x] https://github.com/SteveMacenski/nav2_rosdevday_2021
- [ ] https://github.com/aws-robotics/aws-robomaker-hospital-world
- [ ] https://github.com/sea-bass/turtlebot3_behavior_demos
- [ ] https://mushr.io/tutorials/mushr_navigation_system/
- [ ] https://github.com/BehaviorTree/Groot

Others
- [ ] https://github.com/AndrejOrsula/drl_grasping


#### RADI 2.4.0-beta
`docker run -it --rm --device /dev/dri -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 jderobot/robotics-academy:2.4.0-beta bash`


#### RADI 2.4.2
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 jderobot/robotics-academy:2.4.2 ./start.sh`

Argument `--device /dev/dri` is for Intel and AMD hardwares

#### RADI 3.1.0
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 jderobot/robotics-academy:3.1.0 ./start-3.1.sh`

#### RADI 3.1.0 (Locally built)
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 noetic-radi ./start-3.1.sh`


#### VirtualGL error
```sh
Step 13/74 : RUN curl -fsSL -O https://s3.amazonaws.com/virtualgl-pr/dev/linux/virtualgl_${VIRTUALGL_VERSION}_amd64.deb &&     curl -fsSL -O https://s3.amazonaws.com/virtualgl-pr/dev/linux/virtualgl32_${VIRTUALGL_VERSION}_amd64.deb &&     apt-get update && apt-get install -y --no-install-recommends ./virtualgl_${VIRTUALGL_VERSION}_amd64.deb ./virtualgl32_${VIRTUALGL_VERSION}_amd64.deb &&     rm virtualgl_${VIRTUALGL_VERSION}_amd64.deb virtualgl32_${VIRTUALGL_VERSION}_amd64.deb &&     chmod u+s /usr/lib/libvglfaker.so &&     chmod u+s /usr/lib/libdlfaker.so &&     chmod u+s /usr/lib32/libvglfaker.so &&     chmod u+s /usr/lib32/libdlfaker.so &&     chmod u+s /usr/lib/i386-linux-gnu/libvglfaker.so &&     chmod u+s /usr/lib/i386-linux-gnu/libdlfaker.so &&     curl -fsSL -O https://s3.amazonaws.com/turbovnc-pr/dev/linux/turbovnc_${TURBOVNC_VERSION}_amd64.deb &&     apt-get update && apt-get install -y --no-install-recommends ./turbovnc_${TURBOVNC_VERSION}_amd64.deb &&     rm turbovnc_${TURBOVNC_VERSION}_amd64.deb &&     rm -rf /var/lib/apt/lists/* &&     echo -e "no-remote-connections\nno-httpd\nno-x11-tcp-connections\nno-pam-sessions\npermitted-security-types = None, VNC, otp" > /etc/turbovncserver-security.conf
 ---> Running in e6ad25df396a
curl: (22) The requested URL returned error: 404 Not Found
The command '/bin/sh -c curl -fsSL -O https://s3.amazonaws.com/virtualgl-pr/dev/linux/virtualgl_${VIRTUALGL_VERSION}_amd64.deb &&     curl -fsSL -O https://s3.amazonaws.com/virtualgl-pr/dev/linux/virtualgl32_${VIRTUALGL_VERSION}_amd64.deb &&     apt-get update && apt-get install -y --no-install-recommends ./virtualgl_${VIRTUALGL_VERSION}_amd64.deb ./virtualgl32_${VIRTUALGL_VERSION}_amd64.deb &&     rm virtualgl_${VIRTUALGL_VERSION}_amd64.deb virtualgl32_${VIRTUALGL_VERSION}_amd64.deb &&     chmod u+s /usr/lib/libvglfaker.so &&     chmod u+s /usr/lib/libdlfaker.so &&     chmod u+s /usr/lib32/libvglfaker.so &&     chmod u+s /usr/lib32/libdlfaker.so &&     chmod u+s /usr/lib/i386-linux-gnu/libvglfaker.so &&     chmod u+s /usr/lib/i386-linux-gnu/libdlfaker.so &&     curl -fsSL -O https://s3.amazonaws.com/turbovnc-pr/dev/linux/turbovnc_${TURBOVNC_VERSION}_amd64.deb &&     apt-get update && apt-get install -y --no-install-recommends ./turbovnc_${TURBOVNC_VERSION}_amd64.deb &&     rm turbovnc_${TURBOVNC_VERSION}_amd64.deb &&     rm -rf /var/lib/apt/lists/* &&     echo -e "no-remote-connections\nno-httpd\nno-x11-tcp-connections\nno-pam-sessions\npermitted-security-types = None, VNC, otp" > /etc/turbovncserver-security.conf' returned a non-zero code: 22
```
