---
layout: post
title:  "Rough work"
date:   2021-05-17 16:18:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: ""
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
- [x] Complete #11, #12, Final Report
- [x] Complete Nav2 Concepts
- [x] Initiate RADI GUI in ROS2
- [x] File the virtualgl issue on upstream repo
- [x] Check if Gazebo works after removing RUN layer installing Gazebo11 from Dockerfile (already installed via `ros-foxy-gazebo-*`)
- [x] Check if console ros2 cmds work after replacing bashrc with radi-entrypoint
- [x] Add final Foxy RADI demo video to week 4
- [x] Split Foxy Dockerfile into base Dockerfile and wrapper Dockerfile
- [x] Add the ROS2 equivalent of this line `RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; cd /catkin_ws; catkin build'` to Foxy Dockerfile for Amazon warehouse
- [x] Cleaning some unnecessary functions in `manager-4.0.py`
- [x] Debug amazon_robot_controller
- [x] Initiate web template for amazon warehouse. Would require design decisions (like an Rviz iframe and button)
- [x] Create RViz template exercise
- [x] Merge PR of [RADI-4.0.0](https://github.com/JdeRobot/RoboticsAcademy/pull/1074)
- [x] Clean amazon_warehouse template into a PR
- [x] Take apart amazon_robot_controller to understand where the error arises
- [x] Catch up on the Slack discussions and solved issues on GitHub
- [ ] Imbibe the new manager changes into Foxy
- [x] Add video to week 7-8 blog (goal navigation)
- [ ] Add video to week 9 blog (waypoint navigation)
- [x] Add my name to amazon single warehouse exercise
- [x] Expand on week 2 blog from the PR's
- [x] Incorporate Table of contents
- [x] Fix amazon_robot_controller after pulling the latest changes (Err on the side of caution)
- [x] Add to blog the issues explained in CustomRobots [Issue 81](https://github.com/JdeRobot/CustomRobots/issues/81), [Issue 79](https://github.com/JdeRobot/CustomRobots/issues/79), and [Issue 93](https://github.com/JdeRobot/CustomRobots/issues/93)
- [x] Add blog links for each PR in first eval
- [x] Begin tabulating PRs for final eval
- [ ] Add timer to the RADI
- [x] DockerHub images- 4.1.0 (RViz2), 4.2.0 (Amazon warehouse)
- [ ] Update this [README](https://github.com/JdeRobot/RoboticsAcademy/tree/foxy/scripts)


#### Notes
- Design decisions  
    + Foxy RADI uses several files from the noetic branch of RoboticsAcademy. I will commit my modifications on my fork of the RoboticsAcademy repo, instead of to the collab repo.  
      This will enable future developers to trace back the history of unchanged files.
    + Deleted Noetic Dockerfile and pushed it too, but realized useful for version control. Retrieved using [this](https://stackoverflow.com/a/57486483/7589046)
    + Using logical paths instead of absolute in shebangs as mentioned in this [StackOverflow post](https://unix.stackexchange.com/q/29608)
    + Clean up `aws-robomaker-small-warehouse` world if time permits. Extremely haphazard at the moment. Currently uses the ros1 branch with pallets replaced in the world. Either don't keep it as a git sub-module or use a specific commit from the ros2 branch. The latter isn't possible as the pallets need to be replaced. Best to imbibe the world completely as a package under CustomRobots.
- Tips
    + Remember to `git submodule update --init --recursive`!!
    + Re-sourcing not needed after `colcon build`
    + `colcon build`!! after modifying world file
    + `export RCUTILS_COLORIZED_OUTPUT=1 # Forcing colorization`
    + `export RCUTILS_CONSOLE_OUTPUT_FORMAT="[{severity} {time}] [{name}]: {message} ({function_name}() at {file_name}:{line_number})"`
- Consider
    + Avoid the rsync mess in my Dockerfile
    + Rviz config based window sizing can break when the browser size is small
    + I could add timer in the utilities bar at the top
    + The modified urdf might cause problems during slam
    + Cloning --single-branch in Dockerfile might reduce size
- Learnt
    + "{goal}" is a blackboard variable
    + HAL: Hardware Abstraction Layer
    + `DISPLAY=:0 ros2 launch turtlebot3_bringup rviz2.launch.py`: [Reference](https://askubuntu.com/questions/203173/run-application-on-local-machine-and-show-gui-on-remote-display)
    + Hopefully won't require to refer this- `roslaunch_cmd = '/bin/sh -c "export PWD="/";chmod +rwx /;export DISPLAY=:0;'`
    + Service calls to pause/unpause/reset: [ROS2 Migration](https://github.com/ros-simulation/gazebo_ros_pkgs/wiki/ROS-2-Migration:-ROS-Clocks-and-sim-time#time-commands)
    + `<ClearEntireCostmap name="ClearGlobalCostmap-Context" service_name="global_costmap/clear_entirely_global_costmap"/>` only removes the additional observed obstacles. It is unable to remove/modify anything corresponding to input map.
    + Can add *inflation_radius* below `plugin: "nav2_costmap_2d::InflationLayer"`
    + Update git submodules to latest commit ID: `git submodule update --recursive --remote`
    + For each `DeclareLaunchArgument()` there exists a `LaunchConfiguration()`, which allows the launch variable's value to be used inside the python launch file
    + Learnt about lambda functions


#### TODO's commented inside code
- [x] `build.sh`
- [x] `Dockerfile-foxy`
- [x] `Dockerfile-foxy.base`


#### Questions
- [x] Why was the older JdeRobot GUI controller dropped?
- [x] What does an architecture look like?
- [x] Inside nav2_params_with_control.yaml, how does ROS2 know the paths of the file names? *Answer: It doesn't. E.g., remove the default_bt_xml_filename parameter from launch file, then bt_navigator will only work if full path of default_bt_xml_filename is entered in nav2_params_with_control.yaml* (Terminal output in GSoC logs)
- [ ] In colcon, what are `DCMAKE_BUILD_TYPE` and similar flags?
- [ ] `turtlebot3_world.launch.py` uses *gzserver.launch.py* and *gzserver.launch.py*. Is it any different from the *start_gazebo_server_cmd* and *start_gazebo_client_cmd* used in `amazon_robot_in_aws_world.py`?
- [ ] *declare_simulator_cmd* and *headless* argument unused in `amazon_robot_in_aws_world.py`. It seems to have been over-ridden?
- [x] Where did *slam_toolbox* in `/opt/ros/foxy/lib` come from? *Answer: Each of "ros-foxy-nav2-bringup ros-foxy-slam-toolbox ros-foxy-turtlebot3 ros-foxy-turtlebot3-navigation2" get installed together*


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
- [x] https://github.com/osrf/subt_hello_world/blob/master/posts/04_navigation.md

#### Possible things to play with
- [x] https://github.com/SteveMacenski/nav2_rosdevday_2021
- [x] https://github.com/aws-robotics/aws-robomaker-hospital-world
- [x] https://github.com/aws-robotics/aws-robomaker-small-warehouse-world
- [ ] https://github.com/sea-bass/turtlebot3_behavior_demos
- [ ] https://mushr.io/tutorials/mushr_navigation_system/
- [x] https://github.com/BehaviorTree/Groot
- [ ] https://github.com/osrf/subt_hello_world/
- [ ] https://github.com/vmayoral/basic_reinforcement_learning/blob/master/tutorial7/README.md

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

### Foxy (4.0.0)
```sh
docker run -it \
      --rm \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      --name foxy_radi_container \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 \
      jderobot/robotics-academy:4.0.0 ./start.sh
```

### Foxy (4.1.0)
```sh
docker run -it \
      --rm \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      --name foxy_radi_container \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 6081:6081 -p 1108:1108 \
      jderobot/robotics-academy:4.1.0 ./start.sh
```

### Foxy (4.2.0)
```sh
docker run -it \
      --rm \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      --name foxy_radi_container \
      -p 8000:8000 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 6081:6081 -p 1108:1108 \
      jderobot/robotics-academy:4.2.0 ./start.sh
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

##### xserver_cmd
```sh
/usr/bin/Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile ./xdummy.log -config ./xorg.conf :0
```

##### console_xserver_cmd
```sh
/usr/bin/Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile ./console_xdummy.log -config ./xorg.conf :1
```

##### host_cmd
```sh
python3 /RoboticsAcademy/exercises/follow_line/web-template/exercise-noetic.py 0.0.0.0
```

##### roslaunch_cmd
```sh
/opt/ros/noetic/bin/roslaunch ./RoboticsAcademy/exercises/follow_line/web-template/launch/simple_line_follower_ros_headless.launch
```

##### start_vnc (for gzclient)
```sh
x11vnc -display :0 -nopw -forever -xkb -bg -rfbport 5900
/noVNC/utils/launch.sh --listen 6080 --vnc localhost:5900
```

##### start_vnc (for console)
```sh
x11vnc -display :1 -nopw -forever -xkb -bg -rfbport 5901
/noVNC/utils/launch.sh --listen 1108 --vnc localhost:5901
```

##### start_gzclient
```sh
export DISPLAY=:0; gzclient --verbose
```

##### start_console
```sh
export DISPLAY=:1; xterm -geometry 400x400 -fa 'Monospace' -fs 10 -bg black -fg white
```




### Modifications

#### slam_toolbox
> config/mapper_params_online_sync.yaml

```yaml
    map_file_name: amazon_15m_map
    #map_start_pose: [0.0, 0.0, 0.0]
    map_start_at_dock: true
```
#### amazon_robot_bringup
> launch/slam_launch.py

```py
    start_map_saver_server_cmd = Node(
            package='nav2_map_server',
            executable='map_saver_server',
            output='screen',
            parameters=[configured_params])
```
```py
    start_lifecycle_manager_cmd = Node(
            package='nav2_lifecycle_manager',
            executable='lifecycle_manager',
            name='lifecycle_manager_slam',
            output='screen',
            parameters=[{'use_sim_time': use_sim_time},
                        {'autostart': autostart},
                        {'node_names': lifecycle_nodes}])
```

> launch/bringup_launch.py

Added `UnlessCondition`

> launch/amazon_robot_in_aws_world.py

Enable SLAM
```py
    declare_slam_cmd = DeclareLaunchArgument(
        'slam',
        default_value='True',
        description='Whether run a SLAM')
```

For robot description warning: [robot_description_ref](https://docs.ros.org/en/foxy/Tutorials/URDF/Using-URDF-with-Robot-State-Publisher.html)
```py
    with open(urdf, 'r') as infp:
        robot_desc = infp.read()

    start_robot_state_publisher_cmd = Node(
        condition=IfCondition(use_robot_state_pub),
        package='robot_state_publisher',
        executable='robot_state_publisher',
        name='robot_state_publisher',
        namespace=namespace,
        output='screen',
        parameters=[{'use_sim_time': use_sim_time, 'robot_description': robot_desc}],
        remappings=remappings,
        arguments=[urdf])
```


To fix oscillating robot problem
```py
                                    'z_pose': '0.5',
```