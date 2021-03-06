---
layout: post
title:  "1st Phase Evaluation"
date:   2021-07-12 00:00:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: milestones
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

### Summary

#### On GitHub

Pull Request | Solves Issue | Description | More
--- | --- | --- | ---
[#3][] | [#2][] | ROS2 Foxy inside Docker container | [README]
[#80][] | [#79][] | Fix to enable amazon_robot_controller package to successfully build | [Week 2 blog][]
[#82][] | [#81][] | Fix to successfully build amazon_robot_rviz_plugins | [Week 2 blog][]
[#1046][] | [#1045][] | Updated url & version of VirtualGL in Dockerfile-2.4.base | -
[#1047][] | [#1045][] | Updated url and version of VirtualGL in Dockerfile-noetic-3.1 | -
[#1074][] | [#5][], [#7][] and [#796][] | New RADI-4.0.0 for ROS2; [Initial demo of ROS2 Foxy RADI](https://www.youtube.com/watch?v=61k0kLDCaqg) with tb3_teleop exercise; [Final demo of ROS2 RADI](https://www.youtube.com/watch?v=L1PU13AawNE) inside the Turtlebot3 World Environment | [Week 4 blog][], [Week 5 blog][]
[#1094][] | [#6][] and [#801][] | RViz2 web template for ROS2 RADI; [Demo of RViz2 Template](https://www.youtube.com/watch?v=myTJV5xwdaA) in RADI 4.0 with map building using cartographer | [Week 6 blog][]
{:.styled-table}  
<br/>

#### On DockerHub

Tag | Linked PR | Description | Introduces Exercises
--- | --- | --- | ---
[4.0.0][] | [#1074][] | First RADI image for ROS2 | TurtleBot3 Teleop
[4.1.0][] | [#1094][] | RViz2 web template for ROS2 RADI | Turtlebot3 Map Building
{:.styled-table}  
<br/>

#### Working Product
Execute the following command to run RADI-4.1.0
```sh
docker run -it \
      --rm \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      --name foxy_radi_container \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 6081:6081 -p 1108:1108 \
      jderobot/robotics-academy:4.1.0 ./start.sh
```
(Replace with `jderobot/robotics-academy:4.0.0` to examine RADI-4.0.0)



[4.0.0]: https://hub.docker.com/layers/jderobot/robotics-academy/4.0.0/images/sha256-68ea418131b08727a340519ebb30e66da879be0e990d84be066d38370b52234d?context=explore
[4.1.0]: https://hub.docker.com/layers/jderobot/robotics-academy/4.1.0/images/sha256-6279140bb8103f8f0521c674bef51c8b602fd866fda7c877d189a6b21f17e5f3?context=explore


[#1]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/1 "Issue #1"
[#2]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/2 "Issue #2"
[gsoc blog site]: https://theroboticsclub.github.io/gsoc2021-Siddharth_Saha/
[#3]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/pull/3 "Pull request #3"
[README]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/blob/main/README.md#steps-to-replicate

[#79]: https://github.com/JdeRobot/CustomRobots/issues/79 "Issue #79"
[#81]: https://github.com/JdeRobot/CustomRobots/issues/81 "Issue #81"
[#80]: https://github.com/JdeRobot/CustomRobots/pull/80 "Pull request #80"
[#82]: https://github.com/JdeRobot/CustomRobots/pull/82 "Pull request #82"



[#5]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/5 "Issue #5"
[#796]: https://github.com/JdeRobot/RoboticsAcademy/issues/796 "Issue #796"
[#1045]: https://github.com/JdeRobot/RoboticsAcademy/issues/1045 "Issue #1045"
[#1046]: https://github.com/JdeRobot/RoboticsAcademy/pull/1046 "Pull request #1046"
[#1047]: https://github.com/JdeRobot/RoboticsAcademy/pull/1047 "Pull request #1047"


[#6]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/6 "Issue #6"
[#7]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/7 "Issue #7"
[#801]: https://github.com/JdeRobot/RoboticsAcademy/issues/801 "Issue #801"
[#1074]: https://github.com/JdeRobot/RoboticsAcademy/pull/1074 "Pull request #1074"


[#1094]: https://github.com/JdeRobot/RoboticsAcademy/pull/1094 "Pull request #1094"


[#8]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/8 "Issue #8"
[#1126]: https://github.com/JdeRobot/RoboticsAcademy/issues/1126 "Issue #1126"


[Week 2 blog]: {{ site.baseurl }}{% post_url /milestones/2021-06-09-week-2 %}
[Week 4 blog]: {{ site.baseurl }}{% post_url /milestones/2021-06-23-week-4 %}#progress-on-the-issue
[Week 5 blog]: {{ site.baseurl }}{% post_url /milestones/2021-06-30-week-5 %}
[Week 6 blog]: {{ site.baseurl }}{% post_url /milestones/2021-07-07-week-6 %}
