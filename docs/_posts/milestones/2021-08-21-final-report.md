---
layout: post
title:  "Final Report"
date:   2021-08-21 00:00:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: milestones
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

#### Table of Contents

- [Final deliverables]()
    * [Working Product](#working-product)
- [Videos]()
- [Timeline]()
- [Summary](#summary)
    * [On GitHub](#on-github)
    * [On DockerHub](#on-dockerhub)

- [Experience]()
- [Acknowledgement](#acknowledgement)


### Final deliverables
#### Working Product
Execute the following command to run RADI-4.2.0
```sh
docker run -it \
      --rm \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      --name foxy_radi_container \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 6081:6081 -p 1108:1108 \
      jderobot/robotics-academy:4.2.0 ./start.sh
```
Replace with :

- `jderobot/robotics-academy:4.1.0` to examine RADI-4.1.0
- `jderobot/robotics-academy:4.0.0` to examine RADI-4.0.0


### Videos
*Demo of RViz2 Template in RADI 4.0 with map building using cartographer*  
<iframe width="560" height="315"
src="https://www.youtube.com/embed/myTJV5xwdaA" 
frameborder="0" 
allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
allowfullscreen></iframe>
<br />

*Demo of ROS2 Foxy RADI with tb3_teleop exercise inside the Turtlebot3 World Environment*
<iframe width="560" height="315"
src="https://www.youtube.com/embed/L1PU13AawNE" 
frameborder="0" 
allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
allowfullscreen></iframe>  
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
[#1074][] | [#5][], [#7][], and [#796][] | New RADI-4.0.0 for ROS2; [Initial demo of ROS2 Foxy RADI](https://www.youtube.com/watch?v=61k0kLDCaqg) with tb3_teleop exercise; [Final demo of ROS2 RADI](https://www.youtube.com/watch?v=L1PU13AawNE) inside the Turtlebot3 World Environment | [Week 4 blog][], [Week 5 blog][]
[#1094][] | [#6][] and [#801][] | RViz2 web template for ROS2 RADI; [Demo of RViz2 Template](https://www.youtube.com/watch?v=myTJV5xwdaA) in RADI 4.0 with map building using cartographer | [Week 6 blog][]
[#1184][] | [#8][] and [#1126][] | RADI web template for Amazon warehouse Single Robot exercise | [Week 7-8 blog][]
[#1][] | [#10][] | Modified the `no_roof_small_warehouse.world` | [Week 10 blog][]
[#92][] | [#91][] and [#10][] | Updated git submodule *aws-robomaker-small-warehouse-world* | [Week 10 blog][]
[#94][] | [#93][], [#12][], and [#13][] | Fixed Behavior Tree in Amazon warehouse package | [Week 9 blog][], [Week 10 blog][]
{:.styled-table}  
<br/>


#### On DockerHub

Tag | Linked PR | Description | Introduces Exercises
--- | --- | --- | ---
[4.0.0][] | [#1074][] | First RADI image for ROS2 | TurtleBot3 Teleop
[4.1.0][] | [#1094][] | RViz2 web template for ROS2 RADI | Turtlebot3 Map Building
[4.2.0][] | [#1184][] | Introduces the first Amazon warehouse exercise | Amazon warehouse Single Robot
{:.styled-table}  
<br/>





[4.0.0]: https://hub.docker.com/layers/jderobot/robotics-academy/4.0.0/images/sha256-68ea418131b08727a340519ebb30e66da879be0e990d84be066d38370b52234d?context=explore
[4.1.0]: https://hub.docker.com/layers/jderobot/robotics-academy/4.1.0/images/sha256-6279140bb8103f8f0521c674bef51c8b602fd866fda7c877d189a6b21f17e5f3?context=explore
[4.2.0]: https://hub.docker.com/layers/jderobot/robotics-academy/4.2.0/images/sha256-5b5c561540e21a2210f95f6363133a097e6755654ae9c4dc9d07d1aa8104fdc2?context=explore


[gsoc blog site]: https://theroboticsclub.github.io/gsoc2021-Siddharth_Saha/
[README]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/blob/main/README.md#steps-to-replicate
[#1]: https://github.com/shreyasgokhale/aws-robomaker-small-warehouse-world/pull/1 "Pull request #1"

<!-- [#1]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/1 "Issue #1" -->

[#2]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/2 "Issue #2"
[#3]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/pull/3 "Pull request #3"
[#5]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/5 "Issue #5"
[#6]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/6 "Issue #6"
[#7]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/7 "Issue #7"
[#8]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/8 "Issue #8"
[#9]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/9 "Issue #9"
[#10]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/10 "Issue #10"
[#11]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/11 "Issue #11"
[#12]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/12 "Issue #12"
[#13]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/13 "Issue #13"
[#14]: https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/issues/14 "Issue #14"


[#79]: https://github.com/JdeRobot/CustomRobots/issues/79 "Issue #79"
[#81]: https://github.com/JdeRobot/CustomRobots/issues/81 "Issue #81"
[#80]: https://github.com/JdeRobot/CustomRobots/pull/80 "Pull request #80"
[#82]: https://github.com/JdeRobot/CustomRobots/pull/82 "Pull request #82"
[#91]: https://github.com/JdeRobot/CustomRobots/issues/91 "Issue #91"
[#92]: https://github.com/JdeRobot/CustomRobots/pull/92 "Pull request #92"
[#93]: https://github.com/JdeRobot/CustomRobots/issues/93 "Issue #93"
[#94]: https://github.com/JdeRobot/CustomRobots/pull/94 "Pull request #94"


[#796]: https://github.com/JdeRobot/RoboticsAcademy/issues/796 "Issue #796"
[#801]: https://github.com/JdeRobot/RoboticsAcademy/issues/801 "Issue #801"
[#1045]: https://github.com/JdeRobot/RoboticsAcademy/issues/1045 "Issue #1045"
[#1046]: https://github.com/JdeRobot/RoboticsAcademy/pull/1046 "Pull request #1046"
[#1047]: https://github.com/JdeRobot/RoboticsAcademy/pull/1047 "Pull request #1047"
[#1074]: https://github.com/JdeRobot/RoboticsAcademy/pull/1074 "Pull request #1074"
[#1094]: https://github.com/JdeRobot/RoboticsAcademy/pull/1094 "Pull request #1094"
[#1126]: https://github.com/JdeRobot/RoboticsAcademy/issues/1126 "Issue #1126"
[#1184]: https://github.com/JdeRobot/RoboticsAcademy/pull/1184 "Pull request #1184"


[Week 2 blog]: {{ site.baseurl }}{% post_url /milestones/2021-06-09-week-2 %}
[Week 4 blog]: {{ site.baseurl }}{% post_url /milestones/2021-06-23-week-4 %}#progress-on-the-issue
[Week 5 blog]: {{ site.baseurl }}{% post_url /milestones/2021-06-30-week-5 %}
[Week 6 blog]: {{ site.baseurl }}{% post_url /milestones/2021-07-07-week-6 %}
[Week 7-8 blog]: {{ site.baseurl }}{% post_url /milestones/2021-07-21-week-7-8 %}
[Week 9 blog]: {{ site.baseurl }}{% post_url /milestones/2021-07-28-week-9 %}
[Week 10 blog]: {{ site.baseurl }}{% post_url /milestones/2021-08-04-week-10 %}





### Learnings from the GSoC Experience
A significant amount of time is devoted in getting existing software packages to do what you want to achieve, as compared to writing beautiful code from scratch. I had earlier believed that GSoC would be more of writing code. I have also learnt that real-life programming jobs will be similar to my GSoC experience in this respect.

More specifically to my domain, I had the opportunity to deep dive into fantastic robotics navigation packages and understand how they work. I have also significantly improved my skills in Git and multi-threaded programming.

I feel GSoC gave me a taste of contributing code to a robotics org and affirm that this is what I want to pursue in the future. In addition, it has allowed me to interact with fabulous members of the open-souce community.


### Acknowledgement
Gratitude towards my mentors Pankhuri and Shreyas, who helped to delineate the direction of work during our meets and being available outside of meet hours as well. Their help was more than just the project, narrating their practical experiences at work and at grad school, from which I have learnt a lot.

Thanks to Pedro, Manuel and Chandan (co-GSoCer) for testing my work.

Ultimately, heartfelt gratitude towards Prof. José Marı́a. Sir's kind words, through the duration of GSoC, on my work have been very motivating. The discussions on the roboticsacademy developers' channel with Sir have been very helpful to me as well.
