# REF: https://index.ros.org/doc/ros2/Tutorials/#tutorials
###### Configuring-ROS2-Environment
# REF: https://index.ros.org/doc/ros2/Tutorials/Configuring-ROS2-Environment/

# Automatic sourcing ROS2 setup files
echo "source /opt/ros/<distro>/setup.bash" >> ~/.bashrc

# If your lab or office has multiple different groups of computers running ROS 2, 
# and you want to avoid cross-talk between the groups, choose a single integer 
# and set it as the environment variable ROS_DOMAIN_ID on all the computers in a group.
echo "export ROS_DOMAIN_ID=<your_domain_id>" >> ~/.bashrc

###### Introducing turtlesim and rqt
# REF: https://index.ros.org/doc/ros2/Tutorials/Turtlesim/Introducing-Turtlesim/

# Turtlesim is a lightweight simulator for learning ROS 2. It illustrates what 
# ROS 2 does at the most basic level, to give you an idea of what you will do with 
# a real robot or robot simulation later on.

# rqt is a GUI tool for ROS 2. Everything done in rqt can be done on the command line, 
# but it provides an easier, more user-friendly way to manipulate ROS 2 elements.

# Install Turtlesim
sudo apt update
sudo apt install ros-foxy-turtlesim
# Start Turtlesim
ros2 run turtlesim turtlesim_node
# Use Turtlesim
ros2 run turtlesim turtle_teleop_key

# ROS2 commands
ros2 node list
ros2 topic list
ros2 service list
ros2 action list

# Install rqt
sudo apt update
sudo apt install ros-foxy-rqt
# Uses rqt
# REF: https://index.ros.org/doc/ros2/Tutorials/Turtlesim/Introducing-Turtlesim/#use-rqt

# Remmapping Turtlesim
ros2 run turtlesim turtle_teleop_key --ros-args --remap turtle1/cmd_vel:=turtle4/cmd_vel