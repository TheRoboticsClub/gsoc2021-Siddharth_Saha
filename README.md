# Google Summer of Code \'21 @JdeRobot

**Title**: Robotics Academy &mdash; ROS2-RADI and Amazon warehouse exercise in web-based template for ROS2

[Project Description](https://summerofcode.withgoogle.com/projects/#5887913654484992)

### Steps to replicate
*(The shell scripts take care not to create files or clutter outside the `gsoc2021-Siddharth_Saha` directory)*

1. `cd ~`
1. `git clone https://github.com/TheRoboticsClub/gsoc2021-Siddharth_Saha.git`
1. `cd gsoc2021-Siddharth_Saha/ros2_docker_env/`
1. `./start_rd2.sh` (might take up to 30 minutes, only on the first run)
1. (inside docker env now)
1. `tmux new-session -s testing`
1. `ros2 run demo_nodes_cpp talker`
1. (tmux shortcut- Press `Ctrl+B followed by -`)
1. `ros2 run demo_nodes_py listener`

### Demo of the Amazon warehouse world
1. `cd ~/gsoc2021-Siddharth_Saha`
1. `git submodule update --init --recursive`
1. `./start_rd2.sh`
1. `cd shared-directory/nav2_ws`
1. `colcon build`
1. `source install/local_setup.zsh`
1. `cd ../exercise_ws`
1. `colcon build`
1. `source install/local_setup.zsh`
1. `ros2 launch amazon_robot_bringup amazon_robot_in_aws_world.py`

### Author(s)

* **Siddharth Saha** - [trunc8](https://github.com/trunc8)

### Mentors

* **Pankhuri Vanjani** - [pankhurivanjani](https://github.com/pankhurivanjani)
* **Shreyas Gokhale** - [shreyasgokhale](https://github.com/shreyasgokhale)

<p align='center'>Created with :heart: by <a href="https://www.linkedin.com/in/sahasiddharth611/">Siddharth</a></p>
