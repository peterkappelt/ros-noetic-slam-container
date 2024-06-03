FROM ros:noetic-ros-base

RUN DEBIAN_FRONTEND=noninteractive apt update

# install and init rosdep
RUN DEBIAN_FRONTEND=noninteractive apt install -y python3-rosdep

RUN rosdep update

# install realsense2
RUN DEBIAN_FRONTEND=noninteractive apt install -y ros-noetic-realsense2-camera

# install imu_filter_madgwick
RUN DEBIAN_FRONTEND=noninteractive apt install -y ros-noetic-imu-filter-madgwick

# rtabmap_ros
RUN DEBIAN_FRONTEND=noninteractive apt install -y ros-noetic-rtabmap-ros

# robot localization
RUN DEBIAN_FRONTEND=noninteractive apt install -y ros-noetic-robot-localization

# for management: tmux
RUN DEBIAN_FRONTEND=noninteractive apt install -y tmux

# for vnc X11 
RUN DEBIAN_FRONTEND=noninteractive apt install -y xvfb x11vnc
