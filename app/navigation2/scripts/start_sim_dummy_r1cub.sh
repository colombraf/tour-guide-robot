yarpserver &
sleep 1;
ros2 launch gazebo_ros gazebo.launch.py extra_gazebo_args:=-slibgazebo_yarp_clock.so world:=/home/user1/tour-guide-robot/app/maps/SIM_GAM/dummy_r1cub.world &
sleep 1;
yarpmotorgui --robot r1cubSim &