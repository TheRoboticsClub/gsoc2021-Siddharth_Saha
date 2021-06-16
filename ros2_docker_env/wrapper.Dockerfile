# Image to contain quick requirements
# or requirements that should be easily editable
FROM rd2-tools

RUN echo "toor\n" | sudo -S apt-get install -y \
    ros-foxy-bondcpp

# Config files
COPY .aliases /home/$USER_NAME/.aliases

COPY agnoster.zsh-theme /home/$USER_NAME/.oh-my-zsh/themes/agnoster.zsh-theme

COPY .tmux.conf /home/$USER_NAME/.tmux.conf

COPY .zshrc /home/$USER_NAME/.zshrc

WORKDIR /home/$USER_NAME/

CMD ["zsh"]



# # these commands bring up turtlebot3_world
# ENV TURTLEBOT3_MODEL="waffle"
# CMD ros2 launch turtlebot3_gazebo turtlebot3_world.launch