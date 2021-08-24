# Google Summer of Code \'21 @JdeRobot

**Title**: Robotics Academy &mdash; ROS2-RADI and Amazon warehouse exercise in web-based template for ROS2

[Project Description](https://summerofcode.withgoogle.com/projects/#5887913654484992)  
[GSoC Blog](https://theroboticsclub.github.io/gsoc2021-Siddharth_Saha/)  
[RoboticsAcademy: ROS2 Foxy RADI](https://github.com/JdeRobot/RoboticsAcademy/tree/foxy)  
[CustomRobots: foxy-devel branch](https://github.com/JdeRobot/CustomRobots/tree/foxy-devel)  

Progress Tracking
- [Kanban board](https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha/projects/1)
- [Roughwork blogpost](https://theroboticsclub.github.io/gsoc2021-Siddharth_Saha/2021/05/17/roughwork#tasks)  

### Demo
![Amazon Warehouse Delivery](docs/assets/img/content/final-report/amazon-single-slam.gif)

### Steps to replicate
*(The shell scripts take care not to create files or clutter outside the `~/gsoc2021-Siddharth_Saha` directory)*

```sh
### Starting the docker enviroment
cd ~
git clone https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha.git
cd gsoc2021-Siddharth_Saha/ros2_docker_env/
chmod +x run
# Below command might take up to 30 min, only on the first run
./run

### Inside docker environment now
tmux new-session -s testing
ros2 run demo_nodes_cpp talker
# To get another terminal, run this tmux shortcut
# Press "Ctrl+B followed by -"
ros2 run demo_nodes_py listener
```


### Demo of the Amazon warehouse world
```sh
### Outside of Docker enviroment
cd ~/gsoc2021-Siddharth_Saha
git submodule update --init --recursive
git submodule update --recursive --remote
./run

### Inside Docker enviroment now
cd shared-directory/nav2_ws
colcon build
source install/local_setup.zsh
cd ../exercise_ws
colcon build
source install/local_setup.zsh
ros2 launch amazon_robot_bringup amazon_robot_in_aws_world.py
```


### Author(s)

* **Siddharth Saha** - [trunc8](https://github.com/trunc8)


### Mentors

* **Pankhuri Vanjani** - [pankhurivanjani](https://github.com/pankhurivanjani)
* **Shreyas Gokhale** - [shreyasgokhale](https://github.com/shreyasgokhale)

<p align='center'>Created with :heart: by <a href="https://www.linkedin.com/in/sahasiddharth611/">Siddharth</a></p>
