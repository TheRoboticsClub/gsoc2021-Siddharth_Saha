---
layout: post
title:  "Exploring SLAM Toolbox"
date:   2021-07-25 12:00:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: ""
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

### Installations
- Install [Turtlebot3](https://emanual.robotis.com/docs/en/platform/turtlebot3/quick-start/) --- Switch to **Foxy** at the top bar
- Clone and build [Turtlebot3 Simulation](https://emanual.robotis.com/docs/en/platform/turtlebot3/simulation/) --- Switch to **Foxy** at the top bar
- Clone and build [SLAM Toolbox](https://github.com/SteveMacenski/slam_toolbox/tree/foxy-devel) --- foxy-devel branch


### Commands
```sh
# Each command inside a new terminal
# Source relevant workspaces before each command
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
ros2 launch nav2_bringup navigation_launch.py
ros2 launch nav2_bringup rviz_launch.py
ros2 launch slam_toolbox online_async_launch.py
ros2 run nav2_map_server map_saver_cli -f ~/map
```

