FROM ros:noetic
RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y software-properties-common

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
RUN add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u

RUN apt-get install -y librealsense2-dkms librealsense2-utils librealsense2-dev librealsense2-dbg

RUN apt-get install -y ros-$ROS_DISTRO-realsense2-camera

RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
