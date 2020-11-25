**PEPPER_ROS**

Control of Pepper for performing the following actions:<br />
-) Move the Pepper's head in three different direction right, front and left;<br />
-) For each direction perform an object detection;<br />
-) Say all the object detected;<br />

In order to run the code run the following commands:

Launch the following commands in the pepper_ros workspace folder:
1. catkin build
2. ./commands.sh (eventually change the pepper address inside the script)

Open another terminal, and do the following:
1. Set the current directory to the pepper_ros workspace folder
2. devel/setup.bash
3. roslaunch controller controller.launch D:=$[PATH_TO_PEPPER_WS]/src/pynaoqi-python2.7-2.5.7.1-linux64 nao_ip:=[PEPPER_IP]