# lab4_reUpload

Firstly run:
	roslaunch gazebo_robot custom_moveit_gazebo.launch 

After that run gazebo itself:
	rosrun gazebo_ros gazebo

In order to run Rviz:
	roslaunch custom_moveit moveit_planning_execution.launch 

There are two scripts 'test.cpp' and 'circle.cpp'
test.cpp - moves 1.4 back and then draws circle
circle.cpp - draws circle

The script which is going to be runned should be included in the 'CMakeList.txt'

to run the scripts:
rosrun commander2 commander

youtube links for the videos:
  Circle:
    https://youtu.be/jxYg8d8XF2c
  Line and Square:
    https://youtu.be/KyDEFmsqxK0
