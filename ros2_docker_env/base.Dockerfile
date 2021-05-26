# Image setting up zsh, sudo-enabled user and nvidia graphics
FROM osrf/ros:foxy-desktop


ARG USER_NAME="trunc8d"
ARG USER_PASSWORD="toor"

ENV USER_NAME $USER_NAME
ENV USER_PASSWORD $USER_PASSWORD
ENV CONTAINER_IMAGE_VER=v1.0.0


# tools required for setting up zsh and sudo-user
RUN apt-get update --fix-missing && apt-get install -y \
    fonts-powerline \
    locales \
    powerline \
    sudo \
    wget \
    zsh \
    vim \
    tmux \
    tree \
    xclip \
  # set up locale
  && locale-gen en_IN.UTF-8 \
  # add a user (--disabled-password: the user won't be able to use the account until the password is set)
  && adduser --quiet --disabled-password --shell /bin/zsh --home /home/$USER_NAME --gecos "User" $USER_NAME \
  # update the password
  && echo "${USER_NAME}:${USER_PASSWORD}" | chpasswd && usermod -aG sudo $USER_NAME


# the user we're applying this too (otherwise it most likely installs for root)
USER $USER_NAME


# run the installation script  
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true


# it continues to remain in zsh in future images
SHELL ["/bin/zsh", "-c"]


# zsh plugins
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \
  && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# enable ros GUI tools to use nvidia gpu
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES graphics,display
ADD "https://gitlab.com/nvidia/container-images/vulkan/raw/master/nvidia_icd.json" /etc/vulkan/icd.d/nvidia_icd.json