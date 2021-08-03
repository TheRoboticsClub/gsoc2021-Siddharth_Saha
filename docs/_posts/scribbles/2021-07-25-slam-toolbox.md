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


### Dissection of the Commands


> ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py

Launches:

- gzserver.launch.py
- gzclient.launch.py
- robot_state_publisher for turtlebot3

<br/>

> ros2 launch nav2_bringup navigation_launch.py

Following nodes are launched:

- nav2_controller controller_server (Further launches local_costmap node)
- nav2_planner planner_server (Further launches global_costmap node)
- nav2_recoveries recoveries_server
- nav2\_bt\_navigator bt_navigator
- nav2_waypoint_follower waypoint_follower
- nav2_lifecycle_manager lifecycle_manager

bt_navigator uses `navigate_w_replanning_and_recovery.xml` from *nav2\_bt\_navigator*  
All nodes use `nav2_params.yaml` from *nav2_bringup*  

<br/>

> ros2 launch nav2_bringup rviz_launch.py

Launches rviz2 from package *rviz2*  
Uses `nav2_default_view.rviz` from *nav2_bringup*

<br/>

> ros2 launch slam_toolbox online_async_launch.py

Launches async\_slam\_toolbox\_node from package *slam_toolbox*  
Uses `mapper_params_online_async.yaml` from *slam_toolbox*

