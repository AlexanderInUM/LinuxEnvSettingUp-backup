# Install Carla-ROS-Bridge From Source
mkdir -p ~/carla-ros-bridge/catkin_ws/src

cd ~/carla-ros-bridge
git clone --recurse-submodules https://github.com/carla-simulator/ros-bridge.git catkin_ws/src/ros-bridge
source /opt/ros/noetic/setup.bash

cd catkin_ws
rosdep update
rosdep install --from-paths src --ignore-src -r

pip install rospkg
pip3 install rospkg
pip2 install opencv-contrib-python 
pip3 install opencv-contrib-python 
pip install --user transforms3d
pip3 install --user transforms3d
sudo apt install python3-pygame
sudo apt install python-pygame
sudo apt-get install -y python3-catkin-tools
sudo apt install -y python3-colcon-common-extensions

#catkin build #this will cause failure build cauz pyEnv is not oriented, orient it with cmd below
catkin build -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.7m

#make sure the simulator CarlaUE4 is running with IP:XXX
find carla_ros_bridge_with_example_ego_vehicle.launch
cat RESULT_DIR_OF_ABOVE 
#eg.:cd /home/alexander/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/launch
#eg.:cat carla_ros_bridge_with_example_ego_vehicle.launch
#You will see the inner side of the launch file, and view the parameters you want to change while launching
#Refer:https://blog.csdn.net/wohu1104/article/details/125407026

#If you are running the CarlaUE4 locahost, directly run the command below
#roslaunch carla_ros_bridge carla_ros_bridge_with_example_ego_vehicle.launch
#If error exists on excuting this command syaing missing some modules, try install the modules through pip(3)
#Otherwise, set the parameter like the example shown below:
roslaunch carla_ros_bridge carla_ros_bridge.launch host:=172.19.240.1
#Try H to see more while driving the car


# Other
#rosrun rviz rviz #visualize
