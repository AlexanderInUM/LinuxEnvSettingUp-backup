### ROS Installation On Linux Ubuntu 20.04 Focal ###

#Step 1: Change update srouce
# (1) 点开Software & Updates->Other Software，将打钩的取消掉
# (2) sudo rm -rf /etc/apt/sources.list.d/ros-latest.list
# (3) sudo gedit /etc/apt/sources.list
# (4) Copy the following sources the paste them into the opened file based on cmd above
# deb http://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb http://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb http://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb http://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# deb http://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src http://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src http://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src http://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src http://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src http://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# sup apt update


#Step 2: Install ROS
echo "deb http://packages.ros.org/ros/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/ros-focal.list
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full
sudo apt install ros-noetic-desktop
sudo apt install ros-noetic-ros-base
sudo apt install ros-noetic-ros-core
sudo apt install ros-noetic-slam-gmapping
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo "Done!"

#Step 3: Test ROS
#roscd #The directory cursoring currently will be changed to the ROS's one
#roscore #You will see the roscore is logging in a log file in ~/.ros/log/. [Terminal 1]
#rosrun turtlesim turtlesim_node #Run in Terminal 2
#rosrun turtlesim turtle_teleop_key #Run in Terminal 3


#######################################################
# Reference
# https://varhowto.com/install-ros-noetic-ubuntu-20-04/        # Whole framework
# https://blog.csdn.net/JIEJINQUANIL/article/details/106446821 # Chagnge Source for apt
# https://blog.csdn.net/phenixzhong/article/details/92075369   # Chage the source for apt correctly
