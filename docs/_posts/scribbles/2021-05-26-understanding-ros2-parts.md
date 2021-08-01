---
layout: post
title:  "Understanding ROS2 components"
date:   2021-05-26 16:18:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: scribbles
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />

### Understanding colcon
Colcon stands for **collective construction**. It automates the process of building, testing and using multiple software packages. [^1]

#### Use of `--symlink-install` in colcon build [^2]
- On enforcing `--symlink-install`, any changes in python source code will take effect without re-building (not applicable to C++)

#### Difference between local_setup.zsh and setup.zsh [^3]
- If you want to source the first workspace (e.g. `/opt/ros/foxy`) it doesn't make any difference because that workspace doesn't have any parent workspaces
- If you have built your own workspace `~/ws` after sourcing `/opt/ros/foxy` you can do either of the following:
    + Source `~/ws/install/setup.zsh` to setup the environment to include paths from `/opt/ros/foxy` as well as `~/ws/install`
    + That is the same as if you would source `/opt/ros/foxy/(local_)setup.zsh` first and then `~/ws/install/local_setup.zsh`
- In simpler words, if you source `local_setup.zsh` of the overlay, it will only consider the packages available in the overlay when adding to the environment. `setup.zsh` will source the underlay and then the overlay, giving you an environment with both workspaces in it.

### Learning about Docker
What does `xhost +"local:docker@"` do?  
This permits the *docker* user on the local machine to connect to X windows display.

This is usually required in intel machines. For nvidia systems, mounting `/tmp/.X11-unix` as a volume suffices.


<br/>
#### References

[^1]: https://colcon.readthedocs.io/en/released/index.html
[^2]: https://answers.ros.org/question/371822/what-is-the-use-of-symlink-install-in-ros2-colcon-build/
[^3]: https://answers.ros.org/question/292566/what-is-the-difference-between-local_setupbash-and-setupbash/