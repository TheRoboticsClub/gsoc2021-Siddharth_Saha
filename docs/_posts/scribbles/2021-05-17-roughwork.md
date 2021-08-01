---
layout: post
title:  "(Running) Rough work"
date:   2021-05-17 16:18:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: scribbles
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />


#### Tasks
- [x] Once [this PR](https://github.com/shreyasgokhale/aws-robomaker-small-warehouse-world/pull/1) is closed, update the CustomRobots repo
- [x] We have a problem. Duplicate issues in my gsoc repo. Fixed using [this](https://docs.github.com/en/issues/tracking-your-work-with-issues/marking-issues-or-pull-requests-as-a-duplicate)
- [ ] Change back to `foxy-radi` in README and Dockerfiles
- [ ] Add `-p 6081:6081` to instructions wherever applicable
- [x] Update Meet 2 minutes
- [x] Update Meet 3 minutes
- [x] Convert tasks to issues
- [ ] Complete #11, #12, Final Report
- [ ] Complete Nav2 Concepts
- [x] Initiate RADI GUI in ROS2
- [x] File the virtualgl issue on upstream repo
- [x] Check if Gazebo works after removing RUN layer installing Gazebo11 from Dockerfile (already installed via `ros-foxy-gazebo-*`)
- [x] Check if console ros2 cmds work after replacing bashrc with radi-entrypoint
- [x] Add final Foxy RADI demo video to week 4
- [x] Split Foxy Dockerfile into base Dockerfile and wrapper Dockerfile
- [x] Add the ROS2 equivalent of this line `RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; cd /catkin_ws; catkin build'` to Foxy Dockerfile for Amazon warehouse
- [ ] Cleaning the `static/` directory files of tb3_teleop (minimal file desired)
- [x] Cleaning some unnecessary functions in `manager-4.0.py`
- [x] Debug amazon_robot_controller
- [x] Initiate web template for amazon warehouse. Would require design decisions (like an Rviz iframe and button)
- [x] Create RViz template exercise
- [x] Merge PR of [RADI-4.0.0](https://github.com/JdeRobot/RoboticsAcademy/pull/1074)
- [x] Clean amazon_warehouse template into a PR
- [x] Take apart amazon_robot_controller to understand where the error arises
- [ ] Catch up on the Slack discussions and solved issues on GitHub
- [ ] Imbibe the new manager changes into Foxy
- [ ] Add video to week 7-8 blog (goal navigation)
- [ ] Add video to week 9 blog (waypoint navigation)
- [ ] Add my name to amazon single warehouse exercise
- [ ] Expand on week 2 blog from the PR's
- [ ] Incorporate Table of contents
- [ ] Move around fix for amazon_robot_controller after pulling the latest changes (Err on the side of caution)


#### Notes
- Learnt
    + "{goal}" is a blackboard variable
    + HAL: Hardware Abstraction Layer
    + `DISPLAY=:0 ros2 launch turtlebot3_bringup rviz2.launch.py`: [Reference](https://askubuntu.com/questions/203173/run-application-on-local-machine-and-show-gui-on-remote-display)
    + Hopefully won't require to refer this- `roslaunch_cmd = '/bin/sh -c "export PWD="/";chmod +rwx /;export DISPLAY=:0;'`
    + Service calls to pause/unpause/reset: [ROS2 Migration](https://github.com/ros-simulation/gazebo_ros_pkgs/wiki/ROS-2-Migration:-ROS-Clocks-and-sim-time#time-commands)
    + `<ClearEntireCostmap name="ClearGlobalCostmap-Context" service_name="global_costmap/clear_entirely_global_costmap"/>` only removes the additional observed obstacles. It is unable to remove/modify anything corresponding to input map.
    + Can add *inflation_radius* below `plugin: "nav2_costmap_2d::InflationLayer"`
    + [Update git submodules to latest commit ID](git submodule update --recursive --remote)
- Tips
    + Remember to `git submodule update --init --recursive`!!
    + Re-sourcing not needed after `colcon build`
    + `colcon build`!! after modifying world file
- Design decisions  
    + Foxy RADI uses several files from the noetic branch of RoboticsAcademy. I will commit my modifications on my fork of the RoboticsAcademy repo, instead of to the collab repo.  
      This will enable future developers to trace back the history of unchanged files.
    + Deleted Noetic Dockerfile and pushed it too, but realized useful for version control. Retrieved using [this](https://stackoverflow.com/a/57486483/7589046)
    + Using logical paths instead of absolute in shebangs as mentioned in this [StackOverflow post](https://unix.stackexchange.com/q/29608)
    + Clean up `aws-robomaker-small-warehouse` world if time permits. Extremely haphazard at the moment. Currently uses the ros1 branch with pallets replaced in the world. Either don't keep it as a git sub-module or use a specific commit from the ros2 branch. The latter isn't possible as the pallets need to be replaced. Best to imbibe the world completely as a package under CustomRobots.
- Consider
    + Avoid the rsync mess in my Dockerfile
    + Rviz config based window sizing can break when the browser size is small
    + I could add timer in the utilities bar at the top


#### TODO's commented inside code
- [x] `build.sh`
- [x] `Dockerfile-foxy`
- [x] `Dockerfile-foxy.base`


#### Questions
- [x] Why was the older JdeRobot GUI controller dropped?
- [x] What does an architecture look like?
- [ ] Inside nav2_params_with_control.yaml, how does ROS2 know the paths of the file names?


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


#### Resources to read
- [x] https://github.com/mlherd/navigation2/tree/new-tutorials/doc/tb3_tutorial
- [ ] https://github.com/osrf/subt_hello_world/blob/master/posts/04_navigation.md

#### Possible things to play with
- [x] https://github.com/SteveMacenski/nav2_rosdevday_2021
- [x] https://github.com/aws-robotics/aws-robomaker-hospital-world
- [x] https://github.com/aws-robotics/aws-robomaker-small-warehouse-world
- [ ] https://github.com/sea-bass/turtlebot3_behavior_demos
- [ ] https://mushr.io/tutorials/mushr_navigation_system/
- [ ] https://github.com/BehaviorTree/Groot
- [ ] https://github.com/osrf/subt_hello_world/

Others
- [ ] https://github.com/AndrejOrsula/drl_grasping
- [ ] http://moveit2_tutorials.picknik.ai/doc/getting_started/getting_started.html


#### RADI 2.4.0-beta
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 jderobot/robotics-academy:2.4.0-beta bash`


#### RADI 2.4.2
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 jderobot/robotics-academy:2.4.2 ./start.sh`

(Locally built docker container)  
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 jderobot/robotics-academy:melodic-radi ./start.sh`

**Note**: Argument `--device /dev/dri` is for Intel and AMD hardwares

#### RADI 3.1.0
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 jderobot/robotics-academy:3.1.0 ./start-3.1.sh`

#### RADI 3.1.0 (Locally built)
`docker run -it --rm -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 noetic-radi ./start-3.1.sh`



### Melodic manager.py
```sh
docker run -it \
      --rm \
      --name=jde_container \
      -p 8080:8080 -p 7681:7681 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/RoboticsAcademy:/RoboticsAcademy \
      jde_image python3.8 manager.py
```

### Noetic manager-noetic.py
```sh
docker run -it \
      --rm \
      --name=noetic_jde_container \
      -p 8080:8080 -p 7681:7681 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/RoboticsAcademy:/RoboticsAcademy \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/RoboticsAcademy/scripts/manager-noetic.py:/manager-noetic.py \
      noetic_jde_image python3.8 manager-noetic.py
```

### Noetic bash
```sh
docker run -it \
      --rm \
      --name=noetic_jde_container \
      -p 8080:8080 -p 7681:7681 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/RoboticsAcademy:/RoboticsAcademy \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/RoboticsAcademy/scripts/manager-noetic.py:/manager-noetic.py \
      noetic_jde_image bash
```

### Noetic no mounting
```sh
docker run -it \
      --rm \
      --name=noetic_jde_container \
      -p 8080:8080 -p 7681:7681 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      noetic_jde_image python3.8 manager-noetic.py
```

### Noetic RADI 3.1.0 (with mounting)
```sh
docker run -it \
      --rm \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/myRoboticsAcademy/exercises/static/exercises/follow_line:/RoboticsAcademy/exercises/follow_line \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/myRoboticsAcademy/exercises/templates:/RoboticsAcademy/exercises/templates \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/myRoboticsAcademy/scripts/manager-3.1.py:/manager-3.1.py \
      noetic-radi ./start-3.1.sh
```

### Noetic RADI 3.1.0 (no mounting)
```sh
docker run -it \
      --rm \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      noetic-radi ./start-3.1.sh

```

### Foxy (with mounting)
```sh
docker run -it \
      --rm \
      --name foxy_radi_container \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/myRoboticsAcademy:/RoboticsAcademy \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      foxy-radi bash
```

### Foxy (with privileged)
```sh
docker run -it \
      --rm \
      --net=host \
      --privileged \
      --name foxy_radi_container \
      --gpus all \
      -e DISPLAY \
      -e XAUTHORITY=/tmp/.Xauthority \
      -v ${XAUTHORITY}:/tmp/.Xauthority \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/myRoboticsAcademy:/RoboticsAcademy \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/.gazebo:/root/.gazebo \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      foxy-radi bash


cd /RoboticsAcademy/scripts && ./start.sh


```

### Developer's commands (Some are antiquated)
```sh
docker run -it \
      --rm \
      --name=noetic_jde_container \
      -p 8080:8080 -p 7681:7681 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/RoboticsAcademy:/RoboticsAcademy \
      -v /home/trunc8/villa/Basement/Playground/JDE_playground/RoboticsAcademy/scripts/manager-noetic.py:/manager-noetic.py \
      noetic_jde_image bash
docker exec -it noetic_jde_container bash

```

#### xserver_cmd
```sh
/usr/bin/Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile ./xdummy.log -config ./xorg.conf :0
```

#### console_xserver_cmd
```sh
/usr/bin/Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile ./console_xdummy.log -config ./xorg.conf :1
```

#### host_cmd
```sh
python3 /RoboticsAcademy/exercises/follow_line/web-template/exercise-noetic.py 0.0.0.0
```

#### roslaunch_cmd
```sh
/opt/ros/noetic/bin/roslaunch ./RoboticsAcademy/exercises/follow_line/web-template/launch/simple_line_follower_ros_headless.launch
```

#### start_vnc (for gzclient)
```sh
x11vnc -display :0 -nopw -forever -xkb -bg -rfbport 5900
/noVNC/utils/launch.sh --listen 6080 --vnc localhost:5900
```

#### start_vnc (for console)
```sh
x11vnc -display :1 -nopw -forever -xkb -bg -rfbport 5901
/noVNC/utils/launch.sh --listen 1108 --vnc localhost:5901
```

#### start_gzclient
```sh
export DISPLAY=:0; gzclient --verbose
```

#### start_console
```sh
export DISPLAY=:1; xterm -geometry 400x400 -fa 'Monospace' -fs 10 -bg black -fg white
```
