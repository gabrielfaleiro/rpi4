# REF: https://index.ros.org/doc/ros2/

########################### Debian Packages
# REF: https://index.ros.org/doc/ros2/Installation/Foxy/Linux-Install-Debians/

sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

sudo apt update && sudo apt install curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'

sudo apt update
sudo apt install ros-foxy-desktop
sudo apt install ros-foxy-ros-base

source /opt/ros/foxy/setup.bash
sudo apt install python3-argcomplete




########################### Binaries
# REF: https://index.ros.org/doc/ros2/Installation/Foxy/Linux-Install-Binary/

## Add the ROS 2 apt repository
sudo apt update
sudo apt install curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'

## Downloading ROS 2
# Update the following link with the latest release
# REF: https://github.com/ros2/ros2/releases
wget https://github.com/ros2/ros2/releases/download/release-foxy-20200710/ros2-foxy-20200710-linux-focal-arm64.tar.bz2

mkdir -p ~/ros2_foxy
cd ~/ros2_foxy
tar xf ~/ros2-foxy-20200710-linux-focal-arm64.tar.bz2

## Installing and initializing rosdep¶
sudo apt update
sudo apt install -y python3-rosdep
sudo rosdep init
rosdep update

## Installing the missing dependencies
rosdep install --from-paths ros2-linux/share --ignore-src --rosdistro foxy -y --skip-keys "console_bridge fastcdr fastrtps osrf_testing_tools_cpp poco_vendor rmw_connext_cpp rosidl_typesupport_connext_c rosidl_typesupport_connext_cpp rti-connext-dds-5.3.1 tinyxml_vendor tinyxml2_vendor urdfdom urdfdom_headers"

## Installing the python3 libraries
sudo apt install -y libpython3-dev

