# Image with installation of packages
FROM rd2-base

RUN echo "toor\n" | sudo -S apt-get update -y \
  && echo "toor\n" | sudo -S apt-get install -y \
    ### ROS Packages
    ## Install Gazebo11
    "ros-foxy-gazebo-*" \
    ## Install Cartographer
    ros-foxy-cartographer \
    ros-foxy-cartographer-ros \
    ## Install Navigation2
    ros-foxy-navigation2 \
    ros-foxy-nav2-bringup \
    ## Install TurtleBot3 Packages
    # ros-foxy-dynamixel-sdk \
    ros-foxy-turtlebot3-msgs \
    ros-foxy-turtlebot3 \
  && rosdep update