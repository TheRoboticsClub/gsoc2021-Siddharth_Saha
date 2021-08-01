---
layout: post
title:  "Getting started with ROS2 Design"
date:   2021-05-21 23:30:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: scribbles
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

#### Resources studied:
- [ROS2 Design: Why ROS2](https://design.ros2.org/articles/why_ros2.html)
- [Intuition behind how DDS works](https://www.youtube.com/watch?v=Hyr8XkbQc7Q)
- [RPC vs Simple Procedural Call](https://www.youtube.com/watch?v=gr7oaiUsxSU)


#### Takeaways
New technologies in ROS2:

- Zeroconf (Zero-configuration Networking)
- Protocol Buffers (Serializing structured data)
- ZeroMQ (MQ = Message Queue)
- Redis (Database)
- Websockets
- DDS (Data Distribution Service)

Concepts from 1st generation APIs retained in ROS2:

- distributed processing
- anonymous publish/subscribe messaging
- RPC with feedback (actions)
- language neutrality
- system introspectibility
