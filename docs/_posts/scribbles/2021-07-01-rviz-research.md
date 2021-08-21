---
layout: post
title:  "Research on serving RViz2 on web template"
date:   2021-07-02 12:00:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: ""
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

- [omni-rviz2](https://github.com/emersonknapp/omni-rviz2): Last updated in 2019. Stale repository.
- [GitHub issue on official ROS2 RViz repo](https://github.com/ros2/rviz/issues/720): Opened 3 days back. No responses till now.  
  *Update: Additional response which mentions Zethus (added below)*
- [Incorporating RViz2 into custom GUI (Qt app)](https://github.com/ros2/rviz/issues/645) led to [this PR](https://github.com/ros2/rviz/pull/649)
- [ROS visualization_tutorials issue](https://github.com/ros-visualization/visualization_tutorials/issues/66): Not useful
- (*Update*) [Zethus](https://github.com/robostack/zethus): Implements RViz in JS + ThreeJS
- (*Update*) [Rosboard](https://github.com/dheera/rosboard): Introduced in [this ROS Discourse post](https://discourse.ros.org/t/introducing-rosboard-web-based-visualizations-for-ros1-and-ros2/21311)


Serving RViz via VNC appears to be the most promising method
