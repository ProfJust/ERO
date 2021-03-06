#!/bin/bash
# script to setup Summit_XL-Workspace

echo -e "\033[34m ---------- ERO SS20 - Workspace einrichten  ------------ \033[0m "

echo "Shellskript zur Installation der SummitXL-Pakete" 

sudo apt-get dist-upgrade
pwd
cd ~/catkin_ws/src/

mkdir -p ero_src

git clone https://github.com/RobotnikAutomation/summit_xl_sim
git clone https://github.com/RobotnikAutomation/summit_xl_common
git clone https://github.com/RobotnikAutomation/robotnik_msgs
git clone https://github.com/RobotnikAutomation/robotnik_sensors
git clone https://github.com/rst-tu-dortmund/costmap_prohibition_layer.git
git clone https://github.com/ros-planning/navigation.git
git clone https://github.com/cra-ros-pkg/robot_localization.git
git clone https://github.com/ros-geographic-info/geographic_info.git
git clone https://github.com/ros-geographic-info/unique_identifier.git

sudo apt-get dist-upgrade -y   #-y ist ohne Ja Abfrage
sudo apt-get update -y
sudo apt-get install ros-melodic-navigation -y
sudo apt-get install ros-melodic-robot-localization -y
sudo apt-get install ros-melodic-mavros-* -y
sudo apt-get install ros-melodic-gmapping -y
sudo apt-get install ros-melodic-teb-local-planner -y
sudo apt-get install ros-melodic-costmap-prohibition-layer -y
sudo apt-get install ros-melodic-summit-xl-robot-control -y
sudo apt-get install ros-melodic-nmea-navsat-driver -y
sudo apt-get install ros-melodic-twist-mux -y
sudo apt-get install ros-melodic-gazebo-ros-control -y
sudo apt-get install ros-melodic-twist-mux -y
sudo apt-get install ros-melodic-teleop-twist-keyboard -y
sudo apt-get install ros-melodic-tf2-sensor-msgs -y
sudo apt-get install ros-melodic-velocity-controllers -Y

sudo apt-get install libsdl-image1.2-dev and
sudo apt-get install libsdl-dev

echo -e "\033[31m Aktualisiere alle Abhaengigkeiten der ROS-Pakete \033[0m"
rosdep update
rosdep install --from-paths src --ignore-src -r -y

echo -e "\033[31m to do:   $ cd ~/catkin_ws/  ...   catkin_make \033[0m"
